@extends('layouts.' . get_frontend_settings('theme'))
@push('title', get_phrase('Verify Your Email'))
@push('meta')@endpush
@push('css')
@endpush
@section('content')
    <section class="login-area">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6 col-md-8">
                    <div class="login-form mt-25">
                        <h4 class="g-title">{{ get_phrase('Email Verification Required') }}</h4>
                        
                        @if (session('status') == 'verification-link-sent')
                            <div class="alert alert-success mt-20">
                                {{ get_phrase('A new verification link has been sent to the email address you provided during registration.') }}
                            </div>
                        @else
                            <p class="description mt-20">
                                {{ get_phrase('Thanks for signing up! Before getting started, could you verify your email address by clicking on the link we just emailed to you? If you did not receive the email, we will gladly send you another.') }}
                            </p>
                        @endif

                        <div class="d-flex justify-content-between mt-20">
                            <form method="POST" action="{{ route('verification.send') }}">
                                @csrf
                                <button type="submit" class="eBtn gradient">
                                    {{ get_phrase('Resend Verification Email') }}
                                </button>
                            </form>

                            <form method="POST" action="{{ route('logout') }}">
                                @csrf
                                <button type="submit" class="eBtn gradient">
                                    {{ get_phrase('Log Out') }}
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection