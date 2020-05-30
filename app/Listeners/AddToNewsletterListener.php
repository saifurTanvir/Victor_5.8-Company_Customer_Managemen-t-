<?php

namespace App\Listeners;

use App\Events\RegisterNewCustomerEvent;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class AddToNewsletterListener
{


    /**
     * Handle the event.
     *
     * @param  RegisterNewCustomerEvent  $event
     * @return void
     */
    public function handle(RegisterNewCustomerEvent $event)
    {
        dump('Added to the newsletter');
    }
}
