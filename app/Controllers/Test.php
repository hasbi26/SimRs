<?php

namespace App\Controllers;

class Test extends BaseController
{
    public function index()
    {

        $data = [
            'title' => 'test'
        ];
        echo view('layout/header', $data);
        echo view('test', $data);
        echo view('layout/footer');
    }

}
