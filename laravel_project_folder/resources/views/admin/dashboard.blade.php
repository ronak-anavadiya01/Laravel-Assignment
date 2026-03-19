@extends('layouts.app')

@section('content')
<div class="row align-items-center mb-5">
    <div class="col-md-8">
        <h1 class="fw-bold h2 mb-2">Admin Dashboard</h1>
        <p class="text-muted mb-0">Overview of system-wide users and task activities.</p>
    </div>
</div>

<!-- Stats Row -->
<div class="row g-4 mb-5">
    <div class="col-md-3">
        <div class="card border-0 shadow-sm p-4 text-center h-100">
            <div class="text-primary h1 mb-3">👥</div>
            <h6 class="text-muted text-uppercase fw-bold small">Total Users</h6>
            <h2 class="fw-bold mb-0 text-dark">{{ $stats['total_users'] }}</h2>
        </div>
    </div>
    <div class="col-md-3">
        <div class="card border-0 shadow-sm p-4 text-center h-100">
            <div class="text-dark h1 mb-3">📝</div>
            <h6 class="text-muted text-uppercase fw-bold small">Total Tasks</h6>
            <h2 class="fw-bold mb-0 text-dark">{{ $stats['total_tasks'] }}</h2>
        </div>
    </div>
    <div class="col-md-3">
        <div class="card border-0 shadow-sm p-4 text-center h-100">
            <div class="text-warning h1 mb-3">⏳</div>
            <h6 class="text-muted text-uppercase fw-bold small">Pending</h6>
            <h2 class="fw-bold mb-0 text-dark">{{ $stats['pending_tasks'] }}</h2>
        </div>
    </div>
    <div class="col-md-3">
        <div class="card border-0 shadow-sm p-4 text-center h-100">
            <div class="text-success h1 mb-3">✅</div>
            <h6 class="text-muted text-uppercase fw-bold small">Completed</h6>
            <h2 class="fw-bold mb-0 text-dark">{{ $stats['completed_tasks'] }}</h2>
        </div>
    </div>
</div>

<div class="card border-0 shadow-sm overflow-hidden">
    <div class="card-header bg-white py-3 border-0 d-flex justify-content-between align-items-center px-4">
        <h5 class="mb-0 fw-bold">All System Tasks</h5>
        <span class="badge bg-primary-subtle text-primary border-0 rounded-pill px-3">Total: {{ $tasks->total() }}</span>
    </div>
    <div class="card-body p-0">
        <div class="table-responsive">
            <table class="table table-hover align-middle mb-0">
                <thead class="bg-light text-muted small text-uppercase">
                    <tr>
                        <th class="ps-4 py-3 border-0">#</th>
                        <th class="py-3 border-0">User Account</th>
                        <th class="py-3 border-0">Task Title</th>
                        <th class="py-3 border-0 text-center">Status</th>
                        <th class="pe-4 py-3 border-0 text-end">Activity Log</th>
                    </tr>
                </thead>
                <tbody class="border-top-0">
                    @foreach($tasks as $task)
                    <tr class="border-bottom">
                        <td class="ps-4 text-muted small">{{ ($tasks->currentPage() - 1) * $tasks->perPage() + $loop->iteration }}</td>
                        <td>
                            <div class="fw-bold text-dark">{{ $task->user->name }}</div>
                            <div class="text-muted small">{{ $task->user->email }}</div>
                        </td>
                        <td class="text-dark">{{ $task->title }}</td>
                        <td class="text-center">
                            @if($task->status == 'completed')
                                <span class="badge bg-success-subtle text-success px-3">Completed</span>
                            @else
                                <span class="badge bg-warning-subtle text-warning-emphasis px-3">Pending</span>
                            @endif
                        </td>
                        <td class="pe-4 text-end">
                            <div class="text-muted small">Created: {{ $task->created_at->format('M d, H:i') }}</div>
                            @if($task->updated_at > $task->created_at)
                                <div class="text-primary small" style="font-size: 0.85em;">
                                    Updated: {{ $task->updated_at->diffInDays() > 7 ? $task->updated_at->format('M d, Y') : $task->updated_at->diffForHumans() }}
                                </div>
                            @endif
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
    <div class="card-footer bg-white border-0 py-3 px-4">
        {{ $tasks->links() }}
    </div>
</div>
@endsection

@endsection
