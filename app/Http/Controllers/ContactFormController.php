<?php

namespace App\Http\Controllers;

use App\Mail\ContactFormMail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class ContactFormController extends Controller
{
    public function create(){
        return view('.Contact.create');
    }

    public function store(){
        $data = request()->validate([
            'name' => 'required',
            'email' => 'required|email',
            'message' => 'required',
        ]);

        Mail::to('saifur@msil.com')->send(new ContactFormMail($data));

        return redirect('/contact')
            ->with('message', 'Message send success, we are in touch!');
    }
}
