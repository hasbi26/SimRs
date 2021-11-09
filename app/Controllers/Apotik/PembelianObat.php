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


            $builder = $this->db->table("tr_pembelian as pembelian");
            $builder->select('pembelian.*');
            // $builder->join('tm_golongan_obat as golongan', 'obat.golongan = golongan.id');
            // $builder->join('tm_jenis_obat as jenis', 'obat.jenis = jenis.id');
            // $builder->join('tm_kategori_obat as kategori', 'obat.kategori = kategori.id');
            // $builder->join('tm_satuan_obat as satuan', 'obat.satuan = satuan.id');
            $dataku = $builder->get()->getResult();

			$data = [
				'data_pembelian' => $dataku
			];

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
        var_dump($this->Pembelian->find($noFaktur));
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
                'type'       => $dataHeader['type']

            ];


            $pembelianDetail = array();
            foreach ($dataDetail as $data) :
                $detail = [
                    'no_faktur' => $dataHeader['no_faktur'],
                    'kodeobat'  => $data['id'],
                    'harga'       => $data['harga'],
                    'jumlah'         => $data['jumlah'],
                    'total'        => $data['total'],
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



}