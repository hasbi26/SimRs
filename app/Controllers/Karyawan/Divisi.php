<?php

namespace App\Controllers\Karyawan;

use App\Controllers\BaseController;

use App\Models\DivisiModel;

class Divisi extends BaseController
{

        // konstruktor
        protected $Divisi;
        public function __construct()
        {
            $this->Divisi = new DivisiModel();
        }
    

    public function Divisi()
    {
        $data = [
            'title' => 'Master Divisi',
            'divisi' => $this->Divisi->findall(),
            'validation' => \Config\Services::validation()

            
        ];
        return view('/karyawan/divisi', $data);
    }

    public function save(){

        if(!$this->validate([

            'namaDivisi' => [
                'rules' =>  'required|is_unique[tm_divisi.namadivisi]',
                'errors' => [
                    'required' => '{field} komik Harus Di isi',
                    'is_unique' => '{field} komik sudah ada'
                ]
                ]
        ])) {

            // $validaion = \Config\Services::validation();

            // return redirect()->to('/Komik/create')->withInput()->with('validation', $validaion);
             return redirect()->to('/divisi')->withInput();
        }

       $this->Divisi->save([
           'namadivisi' => $this->request->getVar('namaDivisi'),
           'created_by' =>  $_SESSION['name']

       ]);
       session()->setFlashdata('pesan', 'Data Berhasil Ditambahkan');
       return redirect()->to('/divisi');


    }
    public function delete($id){
        $this->Divisi->delete($id);
        return redirect()->to('/divisi');

    }

    public function edit($id){
        $this->Divisi->save([
            'id' => $id,
            'namadivisi' => $this->request->getVar('namaDivisi'),
            'updated_by' =>  $_SESSION['name']
 
        ]);
        return redirect()->to('/divisi');
        
    }

}