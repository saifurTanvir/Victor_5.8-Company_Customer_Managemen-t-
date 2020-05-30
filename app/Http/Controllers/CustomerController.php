<?php

namespace App\Http\Controllers;

use App\Company;
use App\Customer;
use App\Events\RegisterNewCustomerEvent;
use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;

class CustomerController extends Controller
{

    public function index(){
        $customers = Customer::with('company')->paginate(15);


        return view('Customer.index', compact('customers' ));
    }

    public function create(){

        $this->authorize('create', Customer::class);
        $companies = Company::all();
        $customer = new Customer();

        return view('Customer.create', compact('companies', 'customer'));
    }

    private function validateRequest()
    {
        return request()->validate([
            'name' => 'required|min:3',
            'email' => 'required|email',
            'active' => 'required',
            'company_id' => 'required',
            'image' =>'sometimes|file|image',
        ]);
    }

    public function store(){

        //dd(request()->image);

        $customer = Customer::create($this->validateRequest());

        $this->imageStore($customer);

        event(new RegisterNewCustomerEvent($customer));

        return redirect('/customers/'.$customer->id);
    }

    public function show(Customer $customer){

        $this->authorize('view', $customer);

        //dd($customer->image);

        return view('Customer.show', compact('customer'));

    }

    public function edit(Customer $customer){
        $companies = Company::all();
        return view('Customer.edit', compact('customer', 'companies'));
    }

    public function update(Customer $customer){


        $customer->update($this->validateRequest());

        $this->imageStore($customer);

        return redirect('/customers/'.$customer->id);
    }

    public function destroy(Customer $customer){


        $customer->delete();

        return redirect('/customers');
    }

    public function imageStore($customer)
    {
        if(request()->has('image')){
            $customer->update([
                'image' => request()->image->store('uploads', 'public'),
            ]);

            $image = Image::make(public_path('storage/'. $customer->image))->fit(300, 300);
            $image->save();
        }
    }


}
