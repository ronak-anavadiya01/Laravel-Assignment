<?php

namespace App\Http\Controllers;

use App\Models\Task;
use App\Models\User;
use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function dashboard()
    {
        $stats = [
            'total_users' => User::count(),
            'total_tasks' => Task::count(),
            'pending_tasks' => Task::where('status', 'pending')->count(),
            'completed_tasks' => Task::where('status', 'completed')->count(),
        ];

        // Fetch all tasks with user information
        $tasks = Task::with('user')->latest()->paginate(10);

        return view('admin.dashboard', compact('stats', 'tasks'));
    }
}
