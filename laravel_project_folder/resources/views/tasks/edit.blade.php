@extends('layouts.app')

@section('content')
<div class="row justify-content-center">
    <div class="col-md-8 col-lg-7">
        <div class="card border-0 shadow-sm rounded-3">
            <div class="card-header bg-white border-bottom py-3">
                <h4 class="mb-0 text-primary fw-bold">Edit Task</h4>
                <p class="text-muted small mb-0">Update the details of your existing task.</p>
            </div>
            <div class="card-body p-4">
                <form method="POST" action="{{ route('tasks.update', $task->id) }}" enctype="multipart/form-data">
                    @csrf
                    @method('PUT')
                    
                    <div class="mb-3">
                        <label class="form-label fw-bold">Task Title <span class="text-danger">*</span></label>
                        <input type="text" name="title" class="form-control py-2 @error('title') is-invalid @enderror" value="{{ old('title', $task->title) }}" required autofocus>
                        @error('title')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="mb-3">
                        <label class="form-label fw-bold">Description</label>
                        <textarea name="description" rows="4" class="form-control @error('description') is-invalid @enderror">{{ old('description', $task->description) }}</textarea>
                        @error('description')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="mb-3">
                        <label class="form-label fw-bold">Attachment <small class="text-muted text-normal">(Optional)</small></label>
                        @if($task->attachment)
                            <div class="mb-2">
                                <span class="badge bg-light text-dark border p-2">
                                    📎 Current: <a href="{{ asset('storage/' . $task->attachment) }}" target="_blank" class="text-primary text-decoration-none">View File</a>
                                </span>
                            </div>
                        @endif
                        <input type="file" name="attachment" class="form-control @error('attachment') is-invalid @enderror">
                        <small class="text-muted">Max: 5MB (JPG, PNG, PDF, GIF, WebP)</small>
                        @error('attachment')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="mb-4">
                        <label class="form-label fw-bold">Status <span class="text-danger">*</span></label>
                        <select name="status" class="form-select py-2 @error('status') is-invalid @enderror" required>
                            <option value="pending" {{ old('status', $task->status) == 'pending' ? 'selected' : '' }}>Pending</option>
                            <option value="completed" {{ old('status', $task->status) == 'completed' ? 'selected' : '' }}>Completed</option>
                        </select>
                        @error('status')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="d-flex gap-2">
                        <button type="submit" class="btn btn-primary px-4 py-2 fw-bold text-uppercase">Update Task</button>
                        <a href="{{ route('tasks.index') }}" class="btn btn-light border px-4 py-2 fw-bold text-muted text-uppercase">Cancel</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
