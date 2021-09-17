<?php

namespace App\Controllers;

use App\Models\Orang;

class Test extends BaseController
{

        // konstruktor
        protected $Orang;
        public function __construct()
        {
            $this->Orang = new Orang();
        }
    

    public function index()
    {

        $data = [
            'title' => 'test',
            'orang' => $this->Orang->findall()
            
        ];


        return view('test', $data);
     
    }

}
