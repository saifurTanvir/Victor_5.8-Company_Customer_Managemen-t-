@extends('layouts.app')

@section('title', "Customer List")




@section('content')
    <div class="row">
        <div class="col-12">
            <h1>Customer</h1>
        </div>
    </div>
    <hr>
    <p><a href="/customers/create" >Add New Customer</a></p>

    <hr>

    @foreach($customers as $customer)
        <div class="row">
            <div class="col-2">
                {{$customer->id}}
            </div>

            <div class="col-4">
                @can('view', $customer)
                    <a href="/customers/{{$customer->id}}">
                        {{$customer->name}}
                    </a>
                @endcan

                @cannot('view', $customer)
                        {{$customer->name}}
                    @endcannot

            </div>

            <div class="col-4">
                {{$customer->company->name}}
            </div>

            <div class="col-2">
                {{$customer->active }}
            </div>
        </div>
    @endforeach

    <div class="row">
        <div class="col-12 d-flex justify-content-center">
            {{ $customers->links()}}
        </div>
    </div>

@endsection



