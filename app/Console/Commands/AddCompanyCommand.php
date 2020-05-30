<?php

namespace App\Console\Commands;

use App\Company;
use Illuminate\Console\Command;

class AddCompanyCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'contact:company';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Create a company';

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $name =$this->ask('What is the company name?');
        $this->info($name);

        $phone =$this->ask('Enter phone number:');
        $this->info($phone);

        if($this->confirm('Enter Yes to add "'.$name.'"')){
            $company = Company::create([
                'name' => $name,
                'phone' => $phone
            ]);

            return $this->info($name. " Added successfully");
        }


        $this->alert('Company dont added');
    }
}
