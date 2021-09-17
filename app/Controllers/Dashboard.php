<?php

namespace App\Controllers;

class Dashboard extends BaseController
{
    public function index()
    {
        // $session = session();
        // echo "Welcome back, ".$session->get('user_name');
        $data = [
            'title' => 'Dashboard'
        ];
        return view('dashboard',$data);
    }
}