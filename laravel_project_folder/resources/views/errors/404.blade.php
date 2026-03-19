@extends('layouts.app')

@section('content')
<div class="row justify-content-center mt-5">
    <div class="col-md-6 text-center">
        <h1 class="display-1 fw-bold text-danger">404</h1>
        <h3 class="mb-4">Oops! Page Not Found</h3>
        <p class="text-muted mb-4">
            The page you are looking for might have been removed, had its name changed, or is temporarily unavailable.
        </p>
        <a href="{{ route('tasks.index') }}" class="btn btn-primary px-4 py-2">Return to Dashboard</a>
    </div>
</div>
@endsection
