@extends('layouts.app')

@section('content')
<div class="row justify-content-center min-vh-100 align-items-center">
    <div class="col-md-5 col-lg-4">
        <div class="text-center mb-4">
            <h1 class="h3 fw-bold text-primary">Welcome Back</h1>
            <p class="text-muted">Sign in to manage your tasks</p>
        </div>
        <div class="card border-0 shadow-lg p-3">
            <div class="card-body">
                <form method="POST" action="{{ route('login.post') }}">
                    @csrf
                    
                    <div class="mb-3">
                        <label class="form-label small fw-bold text-muted">EMAIL ADDRESS</label>
                        <input type="email" name="email" class="form-control py-2 @error('email') is-invalid @enderror" value="{{ old('email') }}" required autofocus placeholder="name@company.com">
                        @error('email')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="mb-4">
                        <label class="form-label small fw-bold text-muted">PASSWORD</label>
                        <input type="password" name="password" class="form-control py-2 @error('password') is-invalid @enderror" required placeholder="••••••••">
                        @error('password')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="d-grid mb-3">
                        <button type="submit" class="btn btn-primary py-2 fw-bold">SIGN IN</button>
                    </div>
                    
                    <div class="text-center">
                        <span class="text-muted small">New here?</span>
                        <a href="{{ route('register') }}" class="small fw-bold text-decoration-none">Create an account</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
