<?php

namespace App\Controllers\Apotik;

use App\Controllers\BaseController;
use App\Models\ObatModel;


use App\Models\SuplierObatModel;
use App\Models\PembelianModel;
use App\Models\PembelianDetailModel;
use App\Models\KategoriObatModel;
use App\Models\JenisObatModel;
use App\Models\SatuanObatModel;


class PembelianObat extends BaseController
{

                // konstruktor
                private $db;

                protected $Obat, $Golongan, $Kategori, $Jenis, $Satuan; 
    
                public function __construct()
                {
                    $this->db = db_connect();
                    $this->Pembelian = new PembelianModel();
                    $this->PembelianDetail = new PembelianDetailModel();
                    // $this->Obat = new ObatModel();
                    $this->Suplier = new SuplierObatModel();
                    // $this->Kategori = new KategoriObatModel();
                    // $this->Jenis = new JenisObatModel();
                    // $this->Satuan = new SatuanObatModel();
                }


    public function index() {
        $data = [
            'title' => 'Data Pembelian'
        ];
        return view ('apotik/pembelian/index', $data);

    }


    public function get_data()
    {
        if ($this->request->isAJAX()) {

            $dataku = $this->Pembelian->pembelianJoinSuplier();

			$data = [
				'data_pembelian' => $dataku
			];

            // var_dump($data);

			$result = [
				'output' => view('apotik/pembelian/view_data', $data)
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
                'datasuplier' => $this->Suplier->findAll(),
            ];


			$result = [
				'output' => view('apotik/pembelian/view_modal', $data)
			];

			echo json_encode($result);
		} else {
			exit('404 Not Found');
		}
	}


    public function checkfaktur(){
        $noFakturRaw = $this->request->getRawInput();
        $noFaktur = dot_array_search('nofaktur', $noFakturRaw);
        echo json_encode($this->Pembelian->where('no_faktur', $noFaktur)->first());
    }

    public function save_data()
	{ 
        if ($this->request->isAJAX()){


            $request = \Config\Services::request();


            $data1 = $request->getRawInput();
       
            $dataHeader = dot_array_search('data1.0', $data1);
            $dataDetail = dot_array_search('datadetail', $data1);

            $pembelianHeader = [
                'no_faktur'  => $dataHeader['no_faktur'],
                'id_suplier'   =>  $dataHeader['id_suplier'],
                'tgl_beli'         => $dataHeader['tgl_beli'],
                'total_harga'       => $dataHeader['total_harga'],
                'type'       => $dataHeader['type'],
                'created_by' => $_SESSION['name']

            ];


            $pembelianDetail = array();
            foreach ($dataDetail as $data) :
                $detail = [
                    'no_faktur' => $dataHeader['no_faktur'],
                    'kodeobat'  => $data['id'],
                    'harga'       => $data['harga'],
                    'jumlah'         => $data['jumlah'],
                    'total'        => $data['total'],
                    'created_by' => $_SESSION['name']
                ];
                array_push($pembelianDetail, $detail);
            endforeach;

        $this->db->transStart();
        $this->Pembelian->insert($pembelianHeader);
        $this->PembelianDetail->insertBatch($pembelianDetail);
        $this->db->transComplete();

        if ($this->db->transStatus() == false) {
            var_dump("failed" );
            $result = [
                'error' => [
                    'name' => $this->db->transStatus(),
                ]
            ];

            // session()->setflashdata('failed', 'Data penjualan gagal disimpan.');
            // return redirect()->to(base_url('cart'));
        } elseif ($this->db->transStatus() == true) {
            $result = [
                'success' => 'Data berhasil masuk ke database'
            ];
            // return $this->response->setJSON($result);
            echo json_encode($result);
            // $cart->destroy();
            // session()->setflashdata('success', 'Data penjualan berhasil disimpan.');
            // return redirect()->to(base_url('sales/' . $idPenjualan));
        }


        } else {
            exit('404 Not Found');
        }
    }

    public function delete_data(){
        $id = $this->request->getVar('id');

        
        $noFaktur = $this->Pembelian->getFakturCode($id);
       
        $this->Pembelian->delete($id);
        $this->PembelianDetail->delete($noFaktur);

        $result = [
            'output' => "Data has been deleted from database"
        ];

        echo json_encode($result);
    }


    public function get_modal_edit()
    {
    if ($this->request->isAJAX()) {
    $id = $this->request->getVar('id');

    $row = $this->Pembelian->pembelianJoinSuplier($id);
    $detail = $this->PembelianDetail->getAlldata($row[0]->no_faktur);

    $type = ['cash', 'kredit', 'konsiyasi'];
    
    $data = [
        'id' => $row[0]->id,
        'nofaktur' => $row[0]->no_faktur,
        'id_suplier' => $row[0]->id_suplier,
        'tgl_beli' => $row[0]->tgl_beli,
        'total_harga' => $row[0]->total_harga,
        'type' => $row[0]->type,
        'suplier' => $this->Suplier->findAll(),
        'tipe' => $type,
        'detail' => $detail

    ];

    $result = [
    'output' => view('apotik/pembelian/view_modal_edit', $data)
    ];

    echo json_encode($result);
    } else {
    exit('404 Not Found');
    }
    }



}