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

    public function get_modal()
	{
		if ($this->request->isAJAX()) {
			$result = [
				'output' => view('karyawan/jabatan/view_modal')
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
				'name' => [
					'label' => 'Nama Jabatan',
					'rules' => 'required|min_length[3]|is_unique[tm_jabatan.namajabatan]',
				]
			]);

			if (!$rules) {
				$result = [
					'error' => [
						'name' => $validation->getError('name'),
					]
				];
			} else {
				$this->Jabatan->insert([
					'namajabatan' => strip_tags($this->request->getPost('name')),
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

    	public function get_modal_edit()
    	{
    	if ($this->request->isAJAX()) {
    	$id = $this->request->getVar('id');

    	$row = $this->Jabatan->find($id);

    	$data = [
    	'id' => $row['id'],
    	'name' => $row['namajabatan'],
    	];

    	$result = [
    	'output' => view('karyawan/jabatan/view_modal_edit', $data)
    	];

    	echo json_encode($result);
    	} else {
    	exit('404 Not Found');
    	}
    	}

        
        public function update_data()
        	{
        	if ($this->request->isAJAX()) {
        	$validation = \Config\Services::validation();

        	$rules = $this->validate([
        	'name' => [
        	'label' => 'nama jabatan',
        	'rules' => 'required|min_length[3]|is_unique[tm_jabatan.namajabatan]',
        	]
        	]);

        	if (!$rules) {
        	$result = [
        	'error' => [
        	'name' => $validation->getError('name'),
        	]
        	];
        	} else {
        	$id = $this->request->getPost('id');
        	$this->Jabatan->update($id, [
        	'namajabatan' => strip_tags($this->request->getPost('name')),
            'updated_by' => $_SESSION['name']
        	]);

        	$result = [
        	'success' => 'Data has been updated from database'
        	];
        	}
        	echo json_encode($result);
        	} else {
        	exit('404 Not Found');
        	}
        }

        public function delete_data()
        {
            if ($this->request->isAJAX()) {
                $id = $this->request->getVar('id');
    
                $this->Jabatan->delete($id);
    
                $result = [
                    'output' => "Data has been deleted from database"
                ];
    
                echo json_encode($result);
            } else {
                exit('404 Not Found');
            }
        }

}