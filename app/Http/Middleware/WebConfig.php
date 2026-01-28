<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class WebConfig
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        // Dynamically set app name and timezone from DB settings
        config([
            'app.name' => get_settings('system_title'),
            'app.timezone' => get_settings('timezone'),
        ]);

        // IMPORTANT: Only override mail settings if NOT in the local environment.
        // This allows .env to control mail for local development (e.g., MailHog).
        if (! app()->isLocal()) {
            config([
                'mail.mailers.smtp.transport' => get_settings('protocol'),
                'mail.mailers.smtp.host' => get_settings('smtp_host'),
                'mail.mailers.smtp.port' => get_settings('smtp_port'),
                'mail.mailers.smtp.encryption' => get_settings('smtp_crypto'),
                'mail.mailers.smtp.username' => get_settings('smtp_user'),
                'mail.mailers.smtp.password' => get_settings('smtp_pass'),
                'mail.from.name' => get_settings('system_title'),
                'mail.from.address' => get_settings('smtp_from_email'),
            ]);
        }

        return $next($request);
    }
}
