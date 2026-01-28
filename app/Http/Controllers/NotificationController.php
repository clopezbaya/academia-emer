<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class NotificationController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $user = Auth::user();
        $notifications = $user->notifications()->paginate(10);

        // Mark notifications as read
        $user->unreadNotifications->markAsRead();

        $page_data['notifications'] = $notifications;
        $view_path = 'frontend.' . get_frontend_settings('theme') . '.notifications.index';
        return view($view_path, $page_data);
    }
}
