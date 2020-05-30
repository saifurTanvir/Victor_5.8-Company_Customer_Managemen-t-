@extends('layouts.app')

@section('title', "Details for ". $customer->name)




@section('content')
    <div class="row">
        <div class="col-12">
            <h1>Details for {{$customer->name}}</h1>
        </div>
    </div>

    <hr>

    <a class="btn btn-info" href="{{route('customers.edit', ['customer' => $customer->id])}}">Edit</a>

    <form action="/customers/{{$customer->id}}" method="POST">
    @method('DELETE')
        <button class="btn btn-danger btn-lg" type="submit">Delete</button>
        @csrf
    </form>

    <hr>
    <p> <strong>Name</strong> {{$customer->name}}</p>
    <p> <strong>Company</strong> {{$customer->company->name}}</p>
    <p> <strong>Status</strong> {{$customer->email}}</p>

    @if($customer->image)
        <div class="row">
            <div class="col-12"><img src="{{asset('storage/'.$customer->image)}}" alt="" class="img-thumbnail"></div>
        </div>
    @endif

@endsection



