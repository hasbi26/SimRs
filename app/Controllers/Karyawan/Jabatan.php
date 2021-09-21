<?php

namespace App\Controllers\Karyawan;

use App\Controllers\BaseController;
use App\Models\JabatanModel;

class Jabatan extends BaseController
{
    protected $Jabatan;

    public function __construct()
    {
        $this->Jabatan = new JabatanModel();
    }

    public function index()
    {
        $data = [
            'title' => 'JABATAN'
        ];
        return view ('karyawan/jabatan/index', $data);

    }

    public function get_data()
    {

        
        dd($this->request->isAJAX());
    

        if ($this->request->isAJAX()) {
			$data = [
				'data_jabatan' => $this->Jabatan->findAll()
			];

			$result = [
				'output' => view('karyawan/jabatan/view_data', $data)
			];

			echo json_encode($result);
		} else {
			exit('404 Not Found');
		}

    }




}
