@component('mail::message')
#Your First Mail
    <strong>Name</strong>{{$data['name']}}
    <strong>Email</strong>{{$data['email']}}

    <stron>Message</stron>
    {{$data['message']}}


@endcomponent
