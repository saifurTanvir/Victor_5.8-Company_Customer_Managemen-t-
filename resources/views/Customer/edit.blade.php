@extends('layouts.app')

@section('title', "Create Customer")




@section('content')
    <div class="row">
        <div class="col-12">
            <h1>Edit for {{$customer->name}}</h1>
        </div>
    </div>

    <div class="row">
        <div class="col-12">

            <form action="{{route('customers.update', ['customer' => $customer->id])}}" method="post" enctype="multipart/form-data">
                @method('PATCH')

                @include('Customer.form')

                <button type="submit" class="btn btn-primary"> Add Customer</button>

            </form>
        </div>
    </div>



@endsection



