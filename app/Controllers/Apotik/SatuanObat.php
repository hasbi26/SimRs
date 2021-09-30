<?php

namespace App\Controllers\Apotik;

use App\Controllers\BaseController;
use App\Models\SatuanObatModel;


class SatuanObat extends BaseController
{
            // konstruktor
            private $db;

            protected $SatuanObat;

            public function __construct()
            {
                $this->db = db_connect();
                $this->SatuanObat = new SatuanObatModel();
            }

    public function index(){
        $data = [
            'title' => 'Data Satuan Obat'
        ];
        return view ('apotik/satuan/index', $data);
    }

    public function get_data()
    {
        if ($this->request->isAJAX()) {


            $builder = $this->db->table("tm_satuan_obat as satuanobat");
            $builder->select('satuanobat.*');
            $dataku = $builder->get()->getResult();

			$data = [
				'data_satuan_obat' => $dataku
			];

			$result = [
				'output' => view('apotik/satuan/view_data', $data)
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
				'output' => view('apotik/satuan/view_modal')
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
					'label' => 'Nama Satuan',
					'rules' => 'required|min_length[3]|is_unique[tm_satuan_obat.namasatuanobat]',
				]
			]);

			if (!$rules) {
				$result = [
					'error' => [
						'name' => $validation->getError('name'),
					]
				];
			} else {
				$this->SatuanObat->insert([
					'namasatuanobat' => strip_tags($this->request->getPost('name')),
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

    $row = $this->SatuanObat->find($id);

    $data = [
    'id' => $row['id'],
    'name' => $row['namasatuanobat'],
    ];

    $result = [
    'output' => view('apotik/satuan/view_modal_edit', $data)
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
        'rules' => 'required|min_length[3]|is_unique[tm_satuan_obat.namasatuanobat]',
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
        $this->SatuanObat->update($id, [
        'namasatuanobat' => strip_tags($this->request->getPost('name')),
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

            $this->SatuanObat->delete($id);

            $result = [
                'output' => "Data has been deleted from database"
            ];

            echo json_encode($result);
        } else {
            exit('404 Not Found');
        }
    }



}