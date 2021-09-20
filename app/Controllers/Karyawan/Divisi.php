<?php

namespace App\Controllers\Karyawan;

use App\Controllers\BaseController;

use App\Models\KaryawanModel;

class Divisi extends BaseController
{

        // konstruktor
        protected $Divisi;
        public function __construct()
        {
            $this->Divisi = new KaryawanModel();
        }
    

    public function Divisi()
    {
        $data = [
            'title' => 'Master Divisi',
            'divisi' => $this->Divisi->findall()
            
        ];
        return view('/karyawan/divisi', $data);
    }

    public function save(){

    //    $namaDivisi = $this->request->getVar('namaDivisi');
        
       $this->Divisi->save([
           'namadivisi' => $this->request->getVar('namaDivisi')
       ]);
       return redirect()->to('/divisi');


    }

}
