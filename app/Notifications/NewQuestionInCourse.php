<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;
use App\Models\Forum;

class NewQuestionInCourse extends Notification implements ShouldQueue
{
    use Queueable;

    protected $forum;

    /**
     * Create a new notification instance.
     */
    public function __construct(Forum $forum)
    {
        $this->forum = $forum;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @return array<int, string>
     */
    public function via(object $notifiable): array
    {
        return ['mail', 'database'];
    }

    /**
     * Get the mail representation of the notification.
     */
    public function toMail(object $notifiable): MailMessage
    {
        $course = $this->forum->course;
        $student = $this->forum->user;
        $url = route('course.player', ['slug' => $course->slug, 'id' => $this->forum->lesson_id]) . '?tab=forum';

        return (new MailMessage)
                    ->subject(get_phrase('New question in your course') . ': ' . $course->title)
                    ->greeting(get_phrase('Hello') . ' ' . $notifiable->name . ',')
                    ->line(get_phrase('A new question has been posted in one of your courses.'))
                    ->line(get_phrase('Student') . ': ' . $student->name)
                    ->line(get_phrase('Course') . ': ' . $course->title)
                    ->line(get_phrase('Question') . ': ' . $this->forum->title)
                    ->action(get_phrase('View Question'), $url)
                    ->line(get_phrase('Please respond to the student as soon as possible.'));
    }

    /**
     * Get the array representation of the notification.
     *
     * @return array<string, mixed>
     */
    public function toArray(object $notifiable): array
    {
        $course = $this->forum->course;
        $student = $this->forum->user;
        $url = route('course.player', ['slug' => $course->slug, 'id' => $this->forum->lesson_id]) . '?tab=forum';

        return [
            'question_title' => $this->forum->title,
            'course_name' => $course->title,
            'student_name' => $student->name,
            'url' => $url,
            'message' => get_phrase('A new question has been posted in your course') . ': ' . $course->title,
        ];
    }
}
