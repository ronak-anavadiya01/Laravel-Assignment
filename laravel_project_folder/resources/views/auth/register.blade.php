@extends('layouts.app')

@section('content')
<div class="row justify-content-center min-vh-100 align-items-center">
    <div class="col-md-6 col-lg-5">
        <div class="text-center mb-4">
            <h1 class="h3 fw-bold text-primary">Create Account</h1>
            <p class="text-muted">Join us to start managing your productivity</p>
        </div>
        <div class="card border-0 shadow-lg p-3">
            <div class="card-body">
                <form method="POST" action="{{ route('register.post') }}">
                    @csrf
                    
                    <div class="row">
                        <div class="col-md-12 mb-3">
                            <label class="form-label small fw-bold text-muted">FULL NAME</label>
                            <input type="text" name="name" class="form-control py-2 @error('name') is-invalid @enderror" value="{{ old('name') }}" required autofocus placeholder="John Doe">
                            @error('name')
                                <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>

                    <div class="mb-3">
                        <label class="form-label small fw-bold text-muted">EMAIL ADDRESS</label>
                        <input type="email" name="email" class="form-control py-2 @error('email') is-invalid @enderror" value="{{ old('email') }}" required placeholder="name@example.com">
                        @error('email')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label class="form-label small fw-bold text-muted">PASSWORD</label>
                            <input type="password" name="password" class="form-control py-2 @error('password') is-invalid @enderror" required placeholder="••••••••">
                            @error('password')
                                <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>

                        <div class="col-md-6 mb-4">
                            <label class="form-label small fw-bold text-muted">CONFIRM</label>
                            <input type="password" name="password_confirmation" class="form-control py-2" required placeholder="••••••••">
                        </div>
                    </div>

                    <div class="d-grid mb-3">
                        <button type="submit" class="btn btn-primary py-2 fw-bold">CREATE ACCOUNT</button>
                    </div>
                    
                    <div class="text-center">
                        <span class="text-muted small">Already have an account?</span>
                        <a href="{{ route('login') }}" class="small fw-bold text-decoration-none">Sign in</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
