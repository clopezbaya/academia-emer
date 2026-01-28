<?php

namespace App\Providers;

use Illuminate\Pagination\Paginator;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Auth;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Paginator::useBootstrap();

        View::composer('components.home_made_by_builder.header', function ($view) {
            $unreadNotificationsCount = 0;
            if (Auth::check()) {
                $unreadNotificationsCount = Auth::user()->unreadNotifications()->count();
            }
            $view->with('unreadNotificationsCount', $unreadNotificationsCount);
        });
    }
}
