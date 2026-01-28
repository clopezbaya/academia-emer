@extends('layouts.default')
@push('title', get_phrase('Course Details'))
@push('meta')@endpush
@push('css')@endpush
@section('content')
    @php
        $instructor_review = App\Models\Instructor_review::where('instructor_id', get_course_creator_id($course_details->id)->id)
            ->orderBy('id', 'DESC')
            ->get();

        $review = App\Models\Review::where('course_id', $course_details->id)
            ->orderBy('id', 'DESC')
            ->get();

        $total = $review->count();
        $rating = array_sum(array_column($review->toArray(), 'rating'));

        $average_rating = 0;
        if ($total != 0) {
            $average_rating = $rating / $total;
        }
    @endphp
    <!------------------- Course Hero Section Start  ------>
    <section class="course-hero-section bg-light py-5 mb-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 px-4">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb d-flex flex-nowrap">
                            <li class="breadcrumb-item"><a href="{{ route('home') }}">{{ get_phrase('Home') }}</a></li>
                            <li class="breadcrumb-item ellipsis-line-1 active" aria-current="page">{{ $course_details->title }}</li>
                        </ol>
                    </nav>

                    <h1 class="g-title mt-3 mb-2">{{ $course_details->title }}</h1>
                    <p class="g-text text-dark mb-4">{{ ellipsis($course_details->short_description, 250) }}</p>

                    <div class="d-flex align-items-center mb-3">
                        <a class="d-flex align-items-center text-dark me-4" href="{{ route('instructor.details', ['name' => slugify($course_details->creator->name), 'id' => $course_details->creator->id]) }}">
                            <img class="pro-32 me-2" src="{{ get_image(course_by_instructor($course_details->id)->photo) }}" alt="instructor-image">
                            {{ course_by_instructor($course_details->id)->name }}
                        </a>
                        <div class="text-dark me-4">
                            @if ($total > 0)
                                <span class="d-inline-block mx-2">{{ number_format(round($average_rating), 1) }}</span>
                                @for ($i = 0; $i < $average_rating; $i++)
                                    <i class="fa fa-star"></i>
                                @endfor
                            @else
                                <i class="fi-rr-circle-star text-16px text-dark mt-2 ms-1"></i>
                                <span class="d-inline-block mx-2">0</span>
                                <i class="fa fa-star text-secondary"></i>
                            @endif
                        </div>
                        <div class="d-flex align-items-center text-dark">
                            <img class="pro-20 me-2" src="{{ asset('assets/frontend/default/image/g2.png') }}" alt="...">
                            {{ total_enroll($course_details->id) }} {{ get_phrase('Students') }}
                        </div>
                    </div>

                                        @if ($course_details->preview)
                                            <div class="course-video-area border-primary border"> {{-- Added border classes for consistency --}}
                                                <div class="course-video-wrap">
                                                    <div id="player">
                                                        @php
                                                            // This will now ALWAYS be the embed URL from the DB after CourseController fix
                                                            $video_src = $course_details->preview; 

                                                            $is_youtube = str_contains($video_src, 'youtu');
                                                            $is_vimeo = str_contains($video_src, 'vimeo');
                                                        @endphp

                                                        @if ($is_youtube || $is_vimeo)
                                                            {{-- For YouTube and Vimeo, Plyr needs an iframe --}}
                                                            <iframe src="{{ $video_src }}" allowfullscreen allowtransparency allow="autoplay"></iframe>
                                                        @else
                                                            {{-- For HTML5/System Video, Plyr uses a <video> tag --}}
                                                            <video playsinline controls>
                                                                <source src="{{ $video_src }}" type="video/mp4">
                                                            </video>
                                                        @endif
                                                    </div>
                                                </div>
                                            </div>
                                        @else {{-- Fallback if no preview video is set --}}
                                            <div class="course-preview-image mt-4">
                                                <img src="{{ get_image($course_details->thumbnail) }}" alt="Course Thumbnail" class="img-fluid w-100">
                                            </div>
                                        @endif
                </div>
                <div class="col-lg-4">
                    @include('frontend.default.course.pricing_card')
                </div>
            </div>
        </div>
    </section>
    <!------------------- Course Hero Section End  ------>

    <section class="course-details-main-content py-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                     <div class="details-page-content">
                        <div class="ps-box static-menu mt-5 w-100">
                            <ul class="nav nav-bordered" id="pills-tab" role="tablist">
                                <li class="nav-item active" role="presentation">
                                    <button class="nav-link active" id="pills-overview-tab" data-bs-toggle="pill" data-bs-target="#pills-overview" type="button" role="tab" aria-controls="pills-overview" aria-selected="true">{{ get_phrase('Overview') }}</button>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="pills-course-content-tab" data-bs-toggle="pill" data-bs-target="#pills-course-content" type="button" role="tab" aria-controls="pills-course-content" aria-selected="false">{{ get_phrase('Curriculum') }}</button>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="pills-details-tab" data-bs-toggle="pill" data-bs-target="#pills-details" type="button" role="tab" aria-controls="pills-details" aria-selected="false">{{ get_phrase('Details') }}</button>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="pills-instructor-tab" data-bs-toggle="pill" data-bs-target="#pills-instructor" type="button" role="tab" aria-controls="pills-instructor" aria-selected="false">{{ get_phrase('Instructor') }}</button>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="pills-reviews-tab" data-bs-toggle="pill" data-bs-target="#pills-reviews" type="button" role="tab" aria-controls="pills-reviews" aria-selected="false">{{ get_phrase('Reviews') }}</button>
                                </li>
                            </ul>

                            <div class="tab-content" id="pills-tabContent">
                                <div class="tab-pane fade show active" id="pills-overview" role="tabpanel" aria-labelledby="pills-overview-tab" tabindex="0">
                                    @include('frontend.default.course.overview_area')
                                </div>
                                <div class="tab-pane fade" id="pills-course-content" role="tabpanel" aria-labelledby="pills-course-content-tab" tabindex="0">
                                    @include('frontend.default.course.content_area')
                                </div>
                                <div class="tab-pane fade" id="pills-details" role="tabpanel" aria-labelledby="pills-details-tab" tabindex="0">
                                    @include('frontend.default.course.requirement_outcome_area')
                                </div>
                                <div class="tab-pane fade" id="pills-instructor" role="tabpanel" aria-labelledby="pills-instructor-tab" tabindex="0">
                                    @include('frontend.default.course.instructor_area')
                                </div>
                                <div class="tab-pane fade" id="pills-reviews" role="tabpanel" aria-labelledby="pills-reviews-tab" tabindex="0">
                                    @include('frontend.default.course.review_area')
                                </div>
                            </div>
                        </div>
                     </div>
                </div>
            </div>
        </div>
    </section>

    <!------------------- Breadcum Area End  --------->



@endsection
@push('js')
    <script src="{{ asset('assets/global/plyr/plyr.js') }}"></script>
    <script>
        "use strict";
        // Plyr.js initialization for the embedded preview video
        const promoPlayerEmbed = new Plyr('#player', { // <-- Changed selector
            youtube: {
                controls: 1, // Show Plyr's controls
                modestBranding: true, // Hide YouTube logo (or make it minimal)
                showinfo: 0, // Hide video title and uploader on play
                rel: 0, // Do not show related videos at the end
                iv_load_policy: 3, // Do not show video annotations
                cc_load_policy: 1, // Show captions by default
                autoplay: false, // Do not autoplay
                loop: false, // Do not loop the video
                mute: false, // Do not mute the video
                start: 0, // Start at this time (in seconds)
                end: null // End at this time (in seconds)
            }
        });

        $(document).ready(function() {
            $('#more_description').on('click', function(e) {
                e.preventDefault();

                let ellipsis = $('.description').attr('id');
                $('.description').toggleClass(ellipsis);

                $(this).toggleClass('active');
                if ($(this).hasClass('active')) {
                    $(this).text('See less');
                } else {
                    $(this).html('See more <i class="fa-solid fa-angle-right me-2"></i>');
                }
            });
        });
    </script>
@endpush
