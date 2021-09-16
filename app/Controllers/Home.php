<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index()
    {

        $faker = \Faker\Factory::create();
        dd($faker->name);
        $data = [
            'title' => 'home'
        ];
        return view('home/home',$data);
    }

    public function about()
    {
        $data = [
            'title' => 'about'
        ];
        return view('home/about', $data);
    }
}
