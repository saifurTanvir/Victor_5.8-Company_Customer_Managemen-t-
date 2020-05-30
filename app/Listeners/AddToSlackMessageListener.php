<?php

namespace App\Listeners;

use App\Events\RegisterNewCustomerEvent;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class AddToSlackMessageListener
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  RegisterNewCustomerEvent  $event
     * @return void
     */
    public function handle(RegisterNewCustomerEvent $event)
    {
        dump('Added successfully in slack');
    }
}
