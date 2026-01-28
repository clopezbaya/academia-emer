@extends('layouts.default')
@push('title', get_phrase('Notifications'))

@section('content')
<section class="my-course-content">
    <div class="profile-banner-area"></div>
    <div class="container profile-banner-area-container">
        <div class="row">
            <div class="col-lg-12">
                <div class="ol-card radius-8px">
                    <div class="ol-card-body my-3 py-12px px-20px">
                        <h4 class="g-title">{{ get_phrase('My Notifications') }}</h4>
                    </div>
                </div>

                <div class="ol-card radius-8px mt-4">
                    <div class="ol-card-body">
                        <ul class="list-group list-group-flush">
                            @forelse ($notifications as $notification)
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    <div>
                                        <p class="mb-0">
                                            @if(isset($notification->data['student_name']))
                                                <strong>{{ $notification->data['student_name'] }}</strong>
                                            @endif
                                            {{ $notification->data['message'] ?? get_phrase('You have a new notification.') }}
                                        </p>
                                        <small class="text-muted">{{ $notification->created_at->diffForHumans() }}</small>
                                    </div>
                                    @if(isset($notification->data['url']))
                                        <a href="{{ $notification->data['url'] }}" class="btn btn-sm ol-btn-outline-primary">{{ get_phrase('View') }}</a>
                                    @endif
                                </li>
                            @empty
                                <li class="list-group-item text-center">
                                    <p class="mb-0">{{ get_phrase('You have no notifications.') }}</p>
                                </li>
                            @endforelse
                        </ul>
                    </div>
                </div>

                <!-- Pagination -->
                @if ($notifications->hasPages())
                    <div class="entry-pagination mt-4">
                        <nav aria-label="Page navigation example">
                            {{ $notifications->links() }}
                        </nav>
                    </div>
                @endif
            </div>
        </div>
    </div>
</section>
@endsection
