<?php

namespace App\Http\Controllers\student;

use App\Http\Controllers\Controller;
use App\Models\Enrollment;
use App\Models\Course;

class MyCoursesController extends Controller
{
    public function index()
    {
        if (auth()->user()->role == 'admin') {
            return redirect()->route('admin.dashboard');
        } elseif (auth()->user()->role == 'instructor' && !Enrollment::where('user_id', auth()->user()->id)->exists()) {
            return redirect()->route('instructor.dashboard');
        }

        $page_data['my_courses'] = Enrollment::join('courses', 'enrollments.course_id', '=', 'courses.id')
            ->join('users', 'courses.user_id', '=', 'users.id')
            ->where('enrollments.user_id', auth()->user()->id)
            ->whereRaw('enrollments.id = (SELECT MAX(e.id) FROM enrollments e WHERE e.user_id = enrollments.user_id AND e.course_id = enrollments.course_id)')
            ->select('enrollments.*', 'courses.slug', 'courses.title', 'courses.thumbnail', 'users.name as user_name', 'users.photo as user_photo')
            ->paginate(6);

        $enrolled_course_ids = Enrollment::where('user_id', auth()->user()->id)->pluck('course_id')->toArray();
        $page_data['recommended_courses'] = Course::where('status', 'active')
            ->whereNotIn('id', $enrolled_course_ids)
            ->orderByDesc('average_rating')
            ->limit(4)
            ->get();

        $view_path = 'frontend.' . get_frontend_settings('theme') . '.student.my_courses.index';
        return view($view_path, $page_data);
    }
}
