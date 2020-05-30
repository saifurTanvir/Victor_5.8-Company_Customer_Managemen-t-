<?php

namespace App\Listeners;

use App\Events\RegisterNewCustomerEvent;
use App\Mail\WelcomeNewUserMail;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Support\Facades\Mail;

class WelcomeNewUserListener implements ShouldQueue
{


    /**
     * Handle the event.
     *
     * @param  RegisterNewCustomerEvent  $event
     * @return void
     */
    public function handle(RegisterNewCustomerEvent $event)
    {
        sleep(10);
        Mail::to($event->customer->email)->send(new WelcomeNewUserMail());
    }
}
