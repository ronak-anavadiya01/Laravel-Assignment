@extends('layouts.app')

@section('content')
<div class="d-flex justify-content-between align-items-center mb-4">
    <h2>Trashed Tasks</h2>
    <a href="{{ route('tasks.index') }}" class="btn btn-outline-secondary">Back to Active Tasks</a>
</div>

<div class="card">
    <div class="card-body">
        @if($tasks->isEmpty())
            <p class="text-center text-muted my-5">Trash is empty.</p>
        @else
            <div class="table-responsive">
                <table class="table table-hover align-middle">
                    <thead class="table-light">
                        <tr>
                            <th>#</th>
                            <th>Title</th>
                            <th>Deleted At</th>
                            <th class="text-end">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($tasks as $task)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>
                                <strong>{{ $task->title }}</strong><br>
                                <small class="text-muted">{{ Str::limit($task->description, 50) }}</small>
                            </td>
                            <td>{{ $task->deleted_at->format('d M Y, H:i') }}</td>
                            <td class="text-end">
                                <form action="{{ route('tasks.restore', $task->id) }}" method="POST" class="d-inline">
                                    @csrf
                                    <button type="submit" class="btn btn-sm btn-outline-success">Restore</button>
                                </form>
                                
                                <form action="{{ route('tasks.forceDelete', $task->id) }}" method="POST" class="d-inline" onsubmit="return confirm('Permanently delete this task? This cannot be undone.');">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-sm btn-outline-danger">Permanent Delete</button>
                                </form>
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
