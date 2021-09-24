<?php

namespace App\Controllers\Karyawan;

use App\Controllers\BaseController;

use App\Models\KaryawanModel;

use App\Models\JabatanModel;
use App\Models\DivisiModel;

class Karyawan extends BaseController
{

        // konstruktor
        protected $Karyawan;
        protected $Jabatan;
        public function __construct()
        {
            $this->Karyawan = new KaryawanModel();
            $this->Jabatan = new JabatanModel();
            $this->Divisi = new DivisiModel();
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

                $data = [
                    'datajabatan' => $this->Jabatan->findAll(),
                    'datadivisi' => $this->Divisi->findAll()
                ];

                $result = [
                    'output' => view('karyawan/karyawan/view_modal', $data)
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
                ],
                'jabatan' => [
                    'label' => 'Jabatan',
					'rules' => 'required',
                ],
                'divisi' => [
                    'label' => 'Divisi',
					'rules' => 'required',
                ],
                'jeniskelamin' => [
                    'label' => 'Jenis Kelamin',
					'rules' => 'required',
                ],
                'tempatlahir' => [
                    'label' => 'Tempat Lahir',
					'rules' => 'required',
                ],
                'tanggallahir' => [
                    'label' => 'Tanggal Lahir',
					'rules' => 'required',
                ],
                'tanggalmasuk' => [
                    'label' => 'Tanggal Masuk',
					'rules' => 'required',
                ],
                'telepon' => [
                    'label' => 'Telepon',
					'rules' => 'required',
                ],
                'alamat' => [
                    'label' => 'Telepon',
					'rules' => 'required',
                ],
                'poto' => [
                    'label' => 'Foto',
					'rules' => 'uploaded[poto]',
                    ]
                ]);
                

                
                
                if (!$rules) {
                    $result = [
                        'error' => [
                            'nik' => $validation->getError('nik'),
                            'namakaryawan' => $validation->getError('namakaryawan'),
                            'jabatan' => $validation->getError('jabatan'),
                            'divisi' => $validation->getError('divisi'),
                            'jeniskelamin' => $validation->getError('jeniskelamin'),
                            'tempatlahir' => $validation->getError('tempatlahir'),
                            'tanggallahir' => $validation->getError('tanggallahir'),
                            'tanggalmasuk' => $validation->getError('tanggalmasuk'),
                            'telepon' => $validation->getError('telepon'),
                            'alamat' => $validation->getError('alamat'),
                            'poto' => $validation->getError('poto'),
                            
                            ]
                        ];
                    } else {
                        
                        // ambil file poto
                        $filepoto = $this->request->getFile('poto');
                
                        // 'console.log($filepoto)'
                
                        var_dump($filepoto);
                        // die();
                
                        // pindahkan ke img
                        $filepoto->move('img/potokaryawan');
                
                        //ambilnamafile
                        $namapoto = $filepoto->getClientName();

				$this->Karyawan->insert([    
					'nik' => strip_tags($this->request->getPost('nik')),
                    'namakaryawan' => strip_tags($this->request->getPost('namakaryawan')),
                    'idjabatan' => strip_tags($this->request->getPost('jabatan')),
                    'iddivisi' => strip_tags($this->request->getPost('divisi')),
                    'jeniskelamin' => strip_tags($this->request->getPost('jeniskelamin')),
                    'tempatlahir' => strip_tags($this->request->getPost('tempatlahir')),
                    'tanggallahir' => strip_tags($this->request->getPost('tanggallahir')),
                    'tanggalmasuk' => strip_tags($this->request->getPost('tanggalmasuk')),
                    'tanggalkeluar' => strip_tags(($this->request->getPost('tanggalkeluar') == 0000-00-00 ? null : ($this->request->getPost('tanggalkeluar')))),
                    'statusmenikah' => strip_tags($this->request->getPost('status')),
                    'telepon' => strip_tags($this->request->getPost('telepon')),
                    'alamat' => strip_tags($this->request->getPost('alamat')),
                    'poto' => $namapoto,
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