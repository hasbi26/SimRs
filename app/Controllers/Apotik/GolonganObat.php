<?php

namespace App\Controllers\Apotik;

use App\Controllers\BaseController;
use App\Models\GolonganObatModel;


class GolonganObat extends BaseController
{
            // konstruktor
            private $db;

            protected $GolonganObat;

            public function __construct()
            {
                $this->db = db_connect();
                $this->GolonganObat = new GolonganObatModel();
            }

    public function index(){
        $data = [
            'title' => 'Data Golongan Obat'
        ];
        return view ('apotik/golongan/index', $data);
    }

    public function get_data()
    {
        if ($this->request->isAJAX()) {


            $builder = $this->db->table("tm_golongan_obat as Golonganobat");
            $builder->select('Golonganobat.*');
            $dataku = $builder->get()->getResult();

			$data = [
				'data_golongan_obat' => $dataku
			];

			$result = [
				'output' => view('apotik/golongan/view_data', $data)
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
				'output' => view('apotik/golongan/view_modal')
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
					'label' => 'Nama Golongan',
					'rules' => 'required|min_length[3]|is_unique[tm_golongan_obat.namagolonganobat]',
				]
			]);

			if (!$rules) {
				$result = [
					'error' => [
						'name' => $validation->getError('name'),
					]
				];
			} else {
				$this->GolonganObat->insert([
					'namagolonganobat' => strip_tags($this->request->getPost('name')),
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

    $row = $this->GolonganObat->find($id);

    $data = [
    'id' => $row['id'],
    'name' => $row['namagolonganobat'],
    ];

    $result = [
    'output' => view('apotik/golongan/view_modal_edit', $data)
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
        'rules' => 'required|min_length[3]|is_unique[tm_golongan_obat.namagolonganobat]',
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
        $this->GolonganObat->update($id, [
        'namagolonganobat' => strip_tags($this->request->getPost('name')),
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

            $this->GolonganObat->delete($id);

            $result = [
                'output' => "Data has been deleted from database"
            ];

            echo json_encode($result);
        } else {
            exit('404 Not Found');
        }
    }



}