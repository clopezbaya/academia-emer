@extends('layouts.' . get_frontend_settings('theme'))
@push('title', get_phrase('Sign Up'))
@push('meta')@endpush
@push('css')
@endpush
@section('content')
    @if (get_frontend_settings('theme') == 'default')
        <!------------------- Login Area Start  ------>
        <section class="login-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7 col-md-6">
                        <div class="login-img">
                            <img src="{{ asset('assets/frontend/default/image/login.png') }}" alt="Sign Up">
                        </div>
                    </div>
                    <div class="col-lg-5 col-md-6">
                        <form action="{{ route('register') }}" class="global-form login-form mt-25" id="register-form" method="POST">
                            @csrf
                            <h4 class="g-title">{{ get_phrase('Create An Account') }}</h4>
                            <p class="description">{{ get_phrase('Join our community to start learning.') }} </p>

                            
                            <div class="form-group">
                                <label for="name" class="form-label">{{ get_phrase('Full Name') }}</label>
                                <input type="text" id="name" name="name" class="form-control" placeholder="{{ get_phrase('Your Full Name') }}" value="{{ old('name') }}" required>
                            </div>

                            <div class="form-group">
                                <label for="email" class="form-label">{{ get_phrase('Email') }}</label>
                                <input type="email" id="email" name="email" class="form-control" placeholder="{{ get_phrase('Your Email') }}" value="{{ old('email') }}" required>
                            </div>

                            <div class="form-group">
                                <label for="password" class="form-label">{{ get_phrase('Password') }}</label>
                                <input type="password" id="password" name="password" class="form-control" placeholder="*********" required>
                            </div>

                            <div class="form-group mb-25">
                                <label for="password_confirmation" class="form-label">{{ get_phrase('Confirm Password') }}</label>
                                <input type="password" id="password_confirmation" name="password_confirmation" class="form-control" placeholder="*********" required>
                            </div>

                            @if(get_frontend_settings('recaptcha_status'))
                                <button class="eBtn gradient w-100 g-recaptcha" data-sitekey="{{ get_frontend_settings('recaptcha_sitekey') }}" data-callback='onRegisterSubmit' data-action='submit'>{{ get_phrase('Sign Up') }}</button>
                            @else
                                <button type="submit" class="eBtn gradient w-100">{{ get_phrase('Sign Up') }}</button>
                            @endif

                            <p class="mt-20">{{ get_phrase('Already have an account?') }}
                                <a href="{{ route('login') }}">{{ get_phrase('Login') }}</a>
                            </p>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!------------------- Login Area End  ------>
    @endif
@endsection
@push('js')
    <script>
        "use strict";

        function onRegisterSubmit(token) {
            document.getElementById("register-form").submit();
        }
    </script>
@endpush
