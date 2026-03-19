@extends('layouts.app')

@section('content')
<div class="row justify-content-center">
    <div class="col-md-6">
        <div class="card">
            <div class="card-header bg-primary text-white">
                <h4 class="mb-0">Verify Your Email</h4>
            </div>
            <div class="card-body">
                <p>An OTP has been sent to your email address. Please enter it below to continue.</p>

                <form method="POST" action="{{ route('verify.otp.post') }}">
                    @csrf
                    <div class="mb-3">
                        <label for="otp" class="form-label">Enter OTP</label>
                        <input type="text" class="form-control @error('otp') is-invalid @enderror" id="otp" name="otp" required autofocus>
                        @error('otp')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="d-grid gap-2">
                        <button type="submit" class="btn btn-primary">Verify OTP</button>
                    </div>
                </form>

                <hr>

                <form method="POST" action="{{ route('resend.otp') }}" class="text-center">
                    @csrf
                    <p class="mb-2">Didn't receive the code?</p>
                    <button type="submit" class="btn btn-link">Resend OTP</button>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
