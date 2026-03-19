<?php

namespace App\Http\Controllers;

use App\Models\Task;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

use App\Http\Requests\StoreTaskRequest;
use Illuminate\Support\Facades\Cache;

class TaskController extends Controller
{
    public function index()
    {
        $userId = Auth::id();
        
        // Performance improvement: Cache tasks for 10 minutes
        // Cache Key is unique per user
        $tasks = Cache::remember("user_{$userId}_tasks", 600, function () use ($userId) {
            return Task::where('user_id', $userId)->latest()->get();
        });

        return view('tasks.index', compact('tasks'));
    }

    public function create()
    {
        return view('tasks.create');
    }

    public function store(StoreTaskRequest $request)
    {
        // Validation handled by StoreTaskRequest
        $validatedData = $request->validated();

        // Handle File Upload
        if ($request->hasFile('attachment')) {
            $path = $request->file('attachment')->store('attachments', 'public');
            $validatedData['attachment'] = $path;
        }

        // Mass assignment (security feature via $fillable)
        $validatedData['user_id'] = Auth::id();
        Task::create($validatedData);

        // Clear cache after change
        Cache::forget("user_".Auth::id()."_tasks");

        // Session management
        return redirect()->route('tasks.index')->with('success', 'Task created successfully.');
    }

    public function edit($id)
    {
        $task = Task::where('id', $id)->where('user_id', Auth::id())->first();

        // Error handling
        if (!$task) {
            abort(404, 'Task not found or you do not have permission to view this task.');
        }

        return view('tasks.edit', compact('task'));
    }

    public function update(StoreTaskRequest $request, $id)
    {
        $task = Task::where('id', $id)->where('user_id', Auth::id())->firstOrFail();

        // Validation handled by StoreTaskRequest
        $validatedData = $request->validated();

        // Handle File Update
        if ($request->hasFile('attachment')) {
            // Delete old file if exists
            if ($task->attachment) {
                \Illuminate\Support\Facades\Storage::disk('public')->delete($task->attachment);
            }
            $path = $request->file('attachment')->store('attachments', 'public');
            $validatedData['attachment'] = $path;
        }

        $task->update($validatedData);
        
        // Clear cache
        Cache::forget("user_".Auth::id()."_tasks");

        return redirect()->route('tasks.index')->with('success', 'Task updated successfully.');
    }

    public function destroy($id)
    {
        $task = Task::where('id', $id)->where('user_id', Auth::id())->firstOrFail();
        $task->delete(); // This will soft delete due to trait

        Cache::forget("user_".Auth::id()."_tasks");

        return redirect()->route('tasks.index')->with('success', 'Task moved to trash.');
    }

    // Soft Deletes Management
    public function trashed()
    {
        $tasks = Task::onlyTrashed()->where('user_id', Auth::id())->latest()->get();
        return view('tasks.trashed', compact('tasks'));
    }

    public function restore($id)
    {
        $task = Task::onlyTrashed()->where('id', $id)->where('user_id', Auth::id())->firstOrFail();
        $task->restore();

        Cache::forget("user_".Auth::id()."_tasks");

        return redirect()->route('tasks.trashed')->with('success', 'Task restored successfully.');
    }

    public function forceDelete($id)
    {
        $task = Task::onlyTrashed()->where('id', $id)->where('user_id', Auth::id())->firstOrFail();
        
        // Delete attachment if exists
        if ($task->attachment) {
            \Illuminate\Support\Facades\Storage::disk('public')->delete($task->attachment);
        }
        
        $task->forceDelete();

        Cache::forget("user_".Auth::id()."_tasks");

        return redirect()->route('tasks.trashed')->with('success', 'Task deleted permanently.');
    }
}
