@extends('layouts.app')

@section('content')
<div class="row mb-5">
    <div class="col-md-7">
        <h1 class="fw-bold h2 mb-2">My Tasks</h1>
        <p class="text-muted mb-0">Manage and organize your day-to-day work tasks efficiently.</p>
    </div>
    <div class="col-md-5 d-flex gap-2 justify-content-md-end align-items-center mt-3 mt-md-0">
        <a href="{{ route('tasks.trashed') }}" class="btn btn-light border-0 shadow-sm px-4">Recycle Bin</a>
        <a href="{{ route('tasks.create') }}" class="btn btn-primary shadow px-4">+ New Task</a>
    </div>
</div>

<div class="card border-0 shadow-sm overflow-hidden">
    <div class="card-body p-0">
        @if($tasks->isEmpty())
            <div class="text-center py-5">
                <img src="https://illustrations.popsy.co/gray/check-mark.svg" alt="Empty" style="width: 150px;" class="mb-4">
                <h3 class="h5 fw-bold mt-4">All clear!</h3>
                <p class="text-muted">You haven't added any tasks yet. Start by creating one!</p>
                <a href="{{ route('tasks.create') }}" class="btn btn-primary px-4 mt-2 shadow">Create First Task</a>
            </div>
        @else
            <div class="table-responsive">
                <table class="table table-hover align-middle mb-0">
                    <thead class="bg-light text-muted small text-uppercase">
                        <tr>
                            <th class="ps-4 py-3 border-0">#</th>
                            <th class="py-3 border-0">Task Details</th>
                            <th class="py-3 border-0">Attachment</th>
                            <th class="py-3 border-0">Status</th>
                            <th class="py-3 border-0">Task Activity</th>
                            <th class="pe-4 py-3 border-0 text-end">Manage</th>
                        </tr>
                    </thead>
                    <tbody class="border-top-0">
                        @foreach($tasks as $task)
                        <tr class="border-bottom">
                            <td class="ps-4 text-muted small">{{ $loop->iteration }}</td>
                            <td>
                                <div class="fw-bold text-dark">{{ $task->title }}</div>
                                <div class="text-muted small">{{ Str::limit($task->description, 60) }}</div>
                            </td>
                            <td>
                                @if($task->attachment)
                                    <a href="{{ asset('storage/' . $task->attachment) }}" target="_blank" class="badge bg-primary-subtle text-primary text-decoration-none border-0">📎 View File</a>
                                @else
                                    <span class="text-muted small">—</span>
                                @endif
                            </td>
                            <td>
                                @if($task->status == 'completed')
                                    <span class="badge bg-success-subtle text-success px-3">Completed</span>
                                @else
                                    <span class="badge bg-warning-subtle text-warning-emphasis px-3">Pending</span>
                                @endif
                            </td>
                            <td>
                                <div class="text-muted small">Added: {{ $task->created_at->format('M d, Y') }}</div>
                                @if($task->updated_at > $task->created_at)
                                    <div class="text-primary small" style="font-size: 0.85em;">
                                        Updated: {{ $task->updated_at->diffInDays() > 7 ? $task->updated_at->format('M d, Y') : $task->updated_at->diffForHumans() }}
                                    </div>
                                @endif
                            </td>
                            <td class="pe-4 text-end">
                                <div class="btn-group shadow-sm rounded-2 overflow-hidden">
                                    <a href="{{ route('tasks.edit', $task->id) }}" class="btn btn-sm btn-white border px-3 bg-white">Edit</a>
                                    <form action="{{ route('tasks.destroy', $task->id) }}" method="POST" class="d-inline" onsubmit="return confirm('Move to trash?');">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-sm btn-white border-start-0 border px-3 text-danger bg-white">Delete</button>
                                    </form>
                                </div>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        @endif
    </div>
</div>
@endsection
