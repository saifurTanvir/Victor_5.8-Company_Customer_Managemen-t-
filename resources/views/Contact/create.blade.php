@extends('layouts.app')

@section('title', "Contact Us")

@section('content')
    <h1>Contact Us</h1>

    @if(session()->has('message'))
        <div class="alert alert-primary" role="alert">
        <strong>Success!</strong> {{session()->get('message')}}
        </div>
    @endif

    <hr>

    @if( !session()->has('message'))
        <form action="/contact" method="POST">
            <label>Name</label>
            <div class="form-group" >
                <input type="text" name="name" value="{{old('name')}}" class="form-control">
                <div class="text-danger">{{$errors->first('name')}}</div>
            </div>

            <label>Email</label>
            <div class="form-group">
                <input type="email" name="email" value="{{old('email')}}" class="form-control">
                <div class="text-danger">{{$errors->first('email')}}</div>
            </div>

            <label>Message</label>
            <div class="form-group">
                <textarea name="message" id="message" value="{{old('message')}}" cols="30" rows="10" class="form-control"></textarea>
                <div class="text-danger">{{$errors->first('message')}}</div>
            </div>


            @csrf

            <button class="btn btn-primary" type="submit">Send</button>

        </form>
    @endif

@endsection


