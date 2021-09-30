<?php

namespace App\Controllers\Apotik;

use App\Controllers\BaseController;
use App\Models\JenisObatModel;


class JenisObat extends BaseController
{
            // konstruktor
            private $db;

            protected $JenisObat;

            public function __construct()
            {
                $this->db = db_connect();
                $this->JenisObat = new JenisObatModel();
            }

    public function index(){
        $data = [
            'title' => 'Data Jenis Obat'
        ];
        return view ('apotik/jenis/index', $data);
    }

    public function get_data()
    {
        if ($this->request->isAJAX()) {


            $builder = $this->db->table("tm_jenis_obat as jenisobat");
            $builder->select('jenisobat.*');
            $dataku = $builder->get()->getResult();

			$data = [
				'data_jenis_obat' => $dataku
			];

			$result = [
				'output' => view('apotik/jenis/view_data', $data)
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
				'output' => view('apotik/jenis/view_modal')
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
					'label' => 'Nama Jenis',
					'rules' => 'required|min_length[3]|is_unique[tm_jenis_obat.namajenisobat]',
				]
			]);

			if (!$rules) {
				$result = [
					'error' => [
						'name' => $validation->getError('name'),
					]
				];
			} else {
				$this->JenisObat->insert([
					'namajenisobat' => strip_tags($this->request->getPost('name')),
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

    $row = $this->JenisObat->find($id);

    $data = [
    'id' => $row['id'],
    'name' => $row['namajenisobat'],
    ];

    $result = [
    'output' => view('apotik/jenis/view_modal_edit', $data)
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
        'rules' => 'required|min_length[3]|is_unique[tm_jenis_obat.namajenisobat]',
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
        $this->JenisObat->update($id, [
        'namajenisobat' => strip_tags($this->request->getPost('name')),
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

            $this->JenisObat->delete($id);

            $result = [
                'output' => "Data has been deleted from database"
            ];

            echo json_encode($result);
        } else {
            exit('404 Not Found');
        }
    }



}