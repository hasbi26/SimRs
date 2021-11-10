<?php

namespace App\Controllers\Apotik;

use App\Controllers\BaseController;
use App\Models\SuplierObatModel;


class SuplierObat extends BaseController
{
            // konstruktor
            private $db;

            protected $SuplierObat;

            public function __construct()
            {
                $this->db = db_connect();
                $this->SuplierObat = new SuplierObatModel();
            }

    public function index(){
        $data = [
            'title' => 'Data Suplier Obat'
        ];
        return view ('apotik/suplier/index', $data);
    }

    public function get_data()
    {
        if ($this->request->isAJAX()) {


            // $builder = $this->db->table("tm_suplier_obat as suplierobat");
            // $builder->select('suplierobat.*');
            
            
            // $dataku = $builder->get()->getResult();
            $dataku = $this->SuplierObat->findAll();

			$data = [
				'data_suplier_obat' => $dataku
			];

			$result = [
				'output' => view('apotik/suplier/view_data', $data)
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
				'output' => view('apotik/suplier/view_modal')
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
					'label' => 'Nama Suplier',
					'rules' => 'required|min_length[3]|is_unique[tm_suplier_obat.namasuplierobat]',
                ],
                'alamat' => [
					'label' => 'Alamat Suplier',
					'rules' => 'required',
				],
                'telepon' => [
					'label' => 'Telepon Suplier',
					'rules' => 'required',
				],
                'email' => [
					'label' => 'Email Suplier',
					'rules' => 'required|valid_email',
				]
			]);

			if (!$rules) {
				$result = [
					'error' => [
						'name' => $validation->getError('name'),
                        'alamat' => $validation->getError('alamat'),
						'telepon' => $validation->getError('telepon'),
						'email' => $validation->getError('email'),
					]
				];
			} else {
				$this->SuplierObat->insert([
					'namasuplierobat' => strip_tags($this->request->getPost('name')),
					'alamatsuplierobat' => strip_tags($this->request->getPost('alamat')),
					'teleponsuplierobat' => strip_tags($this->request->getPost('telepon')),
					'emailsuplierobat' => strip_tags($this->request->getPost('email')),
					'keterangansuplierobat' => strip_tags($this->request->getPost('keterangan')),
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

    $row = $this->SuplierObat->find($id);

    $data = [
    'id' => $row['id'],
    'name' => $row['namasuplierobat'],
    'alamat' => $row['alamatsuplierobat'],
    'telepon' => $row['teleponsuplierobat'],
    'email' => $row['emailsuplierobat'],
    'keterangan' => $row['keterangansuplierobat'],
    ];

    $result = [
    'output' => view('apotik/suplier/view_modal_edit', $data)
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
                'label' => 'Nama Suplier',
                'rules' => 'required|min_length[3]|is_unique[tm_suplier_obat.namasuplierobat,id,{id}]',
                //'rules' => 'required|min_length[3]|is_unique[tm_karyawan.nik,id,{id}]',

            ],
            'alamat' => [
                'label' => 'Alamat Suplier',
                'rules' => 'required',
            ],
            'telepon' => [
                'label' => 'Telepon Suplier',
                'rules' => 'required',
            ],
            'email' => [
                'label' => 'Email Suplier',
                'rules' => 'required|valid_email',
            ]
        ]);

        if (!$rules) {
            $result = [
                'error' => [
                    'name' => $validation->getError('name'),
                    'alamat' => $validation->getError('alamat'),
                    'telepon' => $validation->getError('telepon'),
                    'email' => $validation->getError('email'),
                ]
        ];
        } else {
        $id = $this->request->getPost('id');
        $this->SuplierObat->update($id, [
        'namasuplierobat' => strip_tags($this->request->getPost('name')),
        'alamatsuplierobat' => strip_tags($this->request->getPost('alamat')),
        'teleponsuplierobat' => strip_tags($this->request->getPost('telepon')),
        'emailsuplierobat' => strip_tags($this->request->getPost('email')),
        'keterangansuplierobat' => strip_tags($this->request->getPost('keterangan')),
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

            $this->SuplierObat->delete($id);

            $result = [
                'output' => "Data has been deleted from database"
            ];

            echo json_encode($result);
        } else {
            exit('404 Not Found');
        }
    }



}