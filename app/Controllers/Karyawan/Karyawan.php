<?php

namespace App\Controllers\Karyawan;

use App\Controllers\BaseController;

use App\Models\KaryawanModel;

class Karyawan extends BaseController
{

        // konstruktor
        protected $Karyawan;
        public function __construct()
        {
            $this->Karyawan = new KaryawanModel();
        }

        public function index(){
            $data = [
                'title' => 'Data Karyawan'
            ];
            return view ('karyawan/karyawan/index', $data);

        }

        public function get_data()
        {
            if ($this->request->isAJAX()) {
                $data = [
                    'data' => $this->Karyawan->findAll()
                ];
    
                $result = [
                    'output' => view('karyawan/karyawan/view_data', $data)
                ];
                echo json_encode($result);
            } else {
                exit('404 Not Found');
            }
    
        }

        public function get_modal()
        {
            if ($this->request->isAJAX()) {
                $result = [
                    'output' => view('karyawan/karyawan/view_modal')
                ];
    
                echo json_encode($result);
            } else {
                exit('404 Not Found');
            }
        }

        public function save_data()
	{
		if ($this->request->isAJAX()) {
			$validation = \Config\Services::validation();

			$rules = $this->validate([
				'nik' => [
					'label' => 'Nik',
					'rules' => 'required|min_length[3]|is_unique[tm_karyawan.nik]',
                ],
                'namakaryawan' => [
                    'label' => 'Nama Karyawan',
					'rules' => 'required',
                ]
			]);

			if (!$rules) {
				$result = [
					'error' => [
						'nik' => $validation->getError('nik'),
                        'namakaryawan' => $validation->getError('namakaryawan')
					]
				];
			} else {
				$this->Karyawan->insert([
					'nik' => strip_tags($this->request->getPost('nik')),
                    'namakaryawan' => strip_tags($this->request->getPost('namakaryawan')),
                    'created_by' => $_SESSION['name']
				]);

				$result = [
					'success' => 'Data berhasil masuk ke database'
				];
			}
			echo json_encode($result);
		} else {
			exit('404 Not Found');
		}
	}
    


}