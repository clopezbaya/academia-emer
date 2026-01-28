@component('mail::message')
# {{ get_phrase('Verify Email Address') }}

{{ get_phrase('Thanks for signing up! Please click the button below to verify your email address and activate your account.') }}

@component('mail::button', ['url' => $url])
{{ get_phrase('Verify Email Address') }}
@endcomponent

{{ get_phrase('If you did not create an account, no further action is required.') }}

{{ get_phrase('Regards') }},<br>
{{ config('app.name') }}

<hr>

<small>{{ get_phrase('If you are having trouble clicking the "Verify Email Address" button, copy and paste the URL below into your web browser:') }} [{{ $url }}]({{ $url }})</small>
@endcomponent
