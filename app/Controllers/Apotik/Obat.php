<?php

namespace App\Controllers\Apotik;

use App\Controllers\BaseController;
use App\Models\ObatModel;


use App\Models\GolonganObatModel;
use App\Models\KategoriObatModel;
use App\Models\JenisObatModel;
use App\Models\SatuanObatModel;


class Obat extends BaseController
{
            // konstruktor
            private $db;

            protected $Obat, $Golongan, $Kategori, $Jenis, $Satuan; 

            public function __construct()
            {
                $this->db = db_connect();
                $this->Obat = new ObatModel();
                $this->Golongan = new GolonganObatModel();
                $this->Kategori = new KategoriObatModel();
                $this->Jenis = new JenisObatModel();
                $this->Satuan = new SatuanObatModel();
            }

    public function index(){
        $data = [
            'title' => 'Data Obat'
        ];
        return view ('apotik/obat/index', $data);
    }

    public function get_data()
    {
        if ($this->request->isAJAX()) {


            $builder = $this->db->table("tm_obat as obat");
            $builder->select('obat.*');
            $dataku = $builder->get()->getResult();

			$data = [
				'data_obat' => $dataku
			];

			$result = [
				'output' => view('apotik/obat/view_data', $data)
			];
			echo json_encode($result);
		} else {
			exit('404 Not Found');
		}

    }

    public function get_modal()
	{
		if ($this->request->isAJAX()) {

            $data = [
                'datagolongan' => $this->Golongan->findAll(),
                'datakategori' => $this->Kategori->findAll(),
                'datajenis' => $this->Jenis->findAll(),
                'datasatuan' => $this->Satuan->findAll()
            ];


			$result = [
				'output' => view('apotik/obat/view_modal', $data)
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
				'kodeobat' => [
					'label' => 'Kode Obat',
					'rules' => 'required|is_unique[tm_obat.kodeobat]',
                ],
                'namaobat' => [
					'label' => 'Nama Obat',
					'rules' => 'required|is_unique[tm_obat.namaobat]',
				],
                'golongan' => [
					'label' => 'Golongan',
					'rules' => 'required',
				],
                'kategori' => [
					'label' => 'Kategori',
					'rules' => 'required',
				],
                'jenis' => [
					'label' => 'Jenis Obat',
					'rules' => 'required',
				],
                'satuan' => [
					'label' => 'Satuan',
					'rules' => 'required',
				],
                'tanggalexpire' => [
					'label' => 'Satuan',
					'rules' => 'required',
				],
                'minimalstok' => [
					'label' => 'Satuan',
					'rules' => 'required',
				],
                'poto' => [
                    'label' => 'Foto',
				    'rules' => 'max_size[poto,500]|is_image[poto]|mime_in[poto,image/jpg,image/jpeg,image/png]',
                    ]
			]);

			if (!$rules) {
				$result = [
					'error' => [
						'kodeobat' => $validation->getError('kodeobat'),
                        'namaobat' => $validation->getError('namaobat'),
                        'golongan' => $validation->getError('golongan'),
                        'kategori' => $validation->getError('kategori'),
                        'jenis' => $validation->getError('jenis'),
                        'satuan' => $validation->getError('satuan'),
                        'tanggalexpire' => $validation->getError('tanggalexpire'),
                        'minimalstok' => $validation->getError('minimalstok'),
                        'poto' => $validation->getError('poto'),
					]
				];
			} else {

                $file = $this->request->getFile('poto');

                //cek gambar ada di upload
                if ($file->getError() == 4)
                {
                    $namapoto = 'default.jpg';
                } else {
                    // pindahkan ke img
                    $file->move('img/fotoobat');
                    //ambilnamafile
                    $namapoto = $file->getName();
                }



				$this->Obat->insert([
					'kodeobat' => strip_tags($this->request->getPost('kodeobat')),
					'namaobat' => strip_tags($this->request->getPost('namaobat')),
					'golongan' => strip_tags($this->request->getPost('golongan')),
					'kategori' => strip_tags($this->request->getPost('kategori')),
					'jenis' => strip_tags($this->request->getPost('jenis')),
					'satuan' => strip_tags($this->request->getPost('satuan')),
					'tanggalexpire' => strip_tags($this->request->getPost('tanggalexpire')),
					'minimalstok' => strip_tags($this->request->getPost('namaobat')),
					'kandungan' => strip_tags($this->request->getPost('kandungan')),
					'dosis' => strip_tags($this->request->getPost('dosis')),
					'efeksamping' => strip_tags($this->request->getPost('efeksamping')),
					'deskripsi' => strip_tags($this->request->getPost('deskripsi')),
                    'potoobat' => $namapoto,
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

    $row = $this->Obat->find($id);

    $data = [
        'datagolongan' => $this->Golongan->findAll(),
        'datakategori' => $this->Kategori->findAll(),
        'datajenis' => $this->Jenis->findAll(),
        'datasatuan' => $this->Satuan->findAll(),
        'id' => $row['id'],
        'kodeobat' => $row['kodeobat'],
        'namaobat' => $row['namaobat'],
        'golongan' => $row['golongan'],
        'kategori' => $row['kategori'],
        'jenis' => $row['jenis'],
        'satuan' => $row['satuan'],
        'tanggalexpire' => $row['tanggalexpire'],
        'minimalstok' => $row['minimalstok'],
        'deskripsi' => $row['deskripsi'],
        'dosis' => $row['dosis'],
        'kandungan' => $row['kandungan'],
        'efeksamping' => $row['efeksamping'],
        'potoobat' => $row['potoobat'],
        ];

    $result = [
    'output' => view('apotik/obat/view_modal_edit', $data)
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
            'kodeobat' => [
                'label' => 'Kode Obat',
                'rules' => 'required|is_unique[tm_obat.kodeobat]',
            ],
            'namaobat' => [
                'label' => 'Nama Obat',
                'rules' => 'required|is_unique[tm_obat.namaobat]',
            ],
            'golongan' => [
                'label' => 'Golongan',
                'rules' => 'required',
            ],
            'kategori' => [
                'label' => 'Kategori',
                'rules' => 'required',
            ],
            'jenis' => [
                'label' => 'Jenis Obat',
                'rules' => 'required',
            ],
            'satuan' => [
                'label' => 'Satuan',
                'rules' => 'required',
            ],
            'tanggalexpire' => [
                'label' => 'Satuan',
                'rules' => 'required',
            ],
            'minimalstok' => [
                'label' => 'Satuan',
                'rules' => 'required',
            ],
            'poto' => [
                'label' => 'Foto',
                'rules' => 'max_size[poto,500]|is_image[poto]|mime_in[poto,image/jpg,image/jpeg,image/png]',
                ]
        ]);

        if (!$rules) {
        $result = [
        'error' => [
            'kodeobat' => $validation->getError('kodeobat'),
            'namaobat' => $validation->getError('namaobat'),
            'golongan' => $validation->getError('golongan'),
            'kategori' => $validation->getError('kategori'),
            'jenis' => $validation->getError('jenis'),
            'satuan' => $validation->getError('satuan'),
            'tanggalexpire' => $validation->getError('tanggalexpire'),
            'minimalstok' => $validation->getError('minimalstok'),
            'poto' => $validation->getError('poto'),
        ]
        ];
        } else {

            $file = $this->request->getFile('poto');
            //cek gambar ada di upload
            if ($file->getError() == 4) // cek jika gambar tidak di upload bakal error 4
            {
                $namapoto = $this->request->getVar("potolama");
            } else {


                $id = $this->request->getVar('id');

                //cari namagambar berdasarkan id
    
                $namapotolama = $this->Obat->find($id);
    
                //cek jika nama foto bukan default
    
                if ($namapotolama['potoobat'] != 'default.jpg'){
                    //hapusgambar
                    unlink('img/fotoobat/'.$namapotolama['potoobat']);
                }


                // pindahkan ke img
                $file->move('img/fotoobat');
                //ambilnamafile
                $namapoto = $file->getName();
            }
            
        $id = $this->request->getPost('id');
        $this->Obat->update($id, [
            'kodeobat' => strip_tags($this->request->getPost('kodeobat')),
            'namaobat' => strip_tags($this->request->getPost('namaobat')),
            'golongan' => strip_tags($this->request->getPost('golongan')),
            'kategori' => strip_tags($this->request->getPost('kategori')),
            'jenis' => strip_tags($this->request->getPost('jenis')),
            'satuan' => strip_tags($this->request->getPost('satuan')),
            'tanggalexpire' => strip_tags($this->request->getPost('tanggalexpire')),
            'minimalstok' => strip_tags($this->request->getPost('namaobat')),
            'kandungan' => strip_tags($this->request->getPost('kandungan')),
            'dosis' => strip_tags($this->request->getPost('dosis')),
            'efeksamping' => strip_tags($this->request->getPost('efeksamping')),
            'deskripsi' => strip_tags($this->request->getPost('deskripsi')),
            'potoobat' => $namapoto,
            'updated_by' => $_SESSION['name']
        ]);

        $result = [
        'success' => 'Data has been updated from database'
        ];
        }
        echo json_encode($result);
        } else 
        {
        exit('404 Not Found');
        }
    }

    public function delete_data()
    {
        if ($this->request->isAJAX()) {
            $id = $this->request->getVar('id');

            $this->Obat->delete($id);

            $result = [
                'output' => "Data has been deleted from database"
            ];

            echo json_encode($result);
        } else {
            exit('404 Not Found');
        }
    }



}