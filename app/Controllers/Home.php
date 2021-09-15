<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index()
    {

        $data = [
            'title' => 'home'
        ];

        echo view('layout/header', $data);
        echo view('home/home');
        echo view('layout/footer');


    }

    public function about()
    {
        $data = [
            'title' => 'about'
        ];
        echo view('layout/header', $data);
        echo view('home/about');
        echo view('layout/footer');
    }
}
