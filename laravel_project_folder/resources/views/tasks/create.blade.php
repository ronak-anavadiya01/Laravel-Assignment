@extends('layouts.app')

@section('content')
<div class="row justify-content-center">
    <div class="col-md-8 col-lg-7">
        <div class="card border-0 shadow-sm rounded-3">
            <div class="card-header bg-white border-bottom py-3">
                <h4 class="mb-0 text-primary fw-bold">Create New Task</h4>
                <p class="text-muted small mb-0">Fill in the details below to add a new task to your list.</p>
            </div>
            <div class="card-body p-4">
                <form method="POST" action="{{ route('tasks.store') }}" enctype="multipart/form-data">
                    @csrf
                    
                    <div class="mb-3">
                        <label class="form-label fw-bold">Task Title <span class="text-danger">*</span></label>
                        <input type="text" name="title" class="form-control py-2 @error('title') is-invalid @enderror" value="{{ old('title') }}" required autofocus placeholder="e.g. Finish Project Report">
                        @error('title')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="mb-3">
                        <label class="form-label fw-bold">Description</label>
                        <textarea name="description" rows="4" class="form-control @error('description') is-invalid @enderror" placeholder="Provide more details about the task...">{{ old('description') }}</textarea>
                        @error('description')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="mb-3">
                        <label class="form-label fw-bold">Attachment <small class="text-muted text-normal">(Optional)</small></label>
                        <div class="input-group">
                            <input type="file" name="attachment" class="form-control @error('attachment') is-invalid @enderror">
                        </div>
                        <small class="text-muted">Max: 5MB (JPG, PNG, PDF, GIF, WebP)</small>
                        @error('attachment')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="mb-4">
                        <label class="form-label fw-bold">Initial Status <span class="text-danger">*</span></label>
                        <select name="status" class="form-select py-2 @error('status') is-invalid @enderror" required>
                            <option value="pending" {{ old('status') == 'pending' ? 'selected' : '' }}>Pending</option>
                            <option value="completed" {{ old('status') == 'completed' ? 'selected' : '' }}>Completed</option>
                        </select>
                        @error('status')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="d-flex gap-2">
                        <button type="submit" class="btn btn-primary px-4 py-2 fw-bold">SAVE TASK</button>
                        <a href="{{ route('tasks.index') }}" class="btn btn-light border px-4 py-2 fw-bold text-muted">Cancel</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
