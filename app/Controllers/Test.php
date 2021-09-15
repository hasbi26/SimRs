<?php

namespace App\Controllers;

class Test extends BaseController
{
    public function index()
    {

        $data = [
            'title' => 'test'
            
        ];

        return view('test', $data);
     
    }

}
