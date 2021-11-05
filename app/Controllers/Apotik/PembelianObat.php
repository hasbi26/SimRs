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

    public function save_data()
	{ 
        if ($this->request->isAJAX()){

            $data1 = service('request')->getPost('val');
            $dataHeader = $_POST['val'];
            $dataDetail = $_POST['val2'];
            // var_dump($dataDetail);
            // die;
            $data2 = service('request')->getPost('val2');



            foreach($dataHeader as $data){
                $nofaktur = $data['no_faktur'];
                $idsuplier = $data['id_suplier'];
                $tgl_beli = $data['tgl_beli'];
                $total_harga = $data['total_harga'];
                $type = $data['type'];
               }

            $pembelianHeader = [
                'no_faktur'  => $nofaktur,
                'id_suplier'   => $idsuplier,
                'tgl_beli'         => $tgl_beli,
                'total_harga'       => $total_harga,
                'type'       => $type,

            ];


            $pembelianDetail = array();
            foreach ($dataDetail as $data) :
                $detail = [
                    'id_pembelian' => $nofaktur,
                    'kodeobat'  => $data['id'],
                    'harga'       => $data['harga'],
                    'jumlah'         => $data['jumlah'],
                    'total'        => $data['total'],
                ];
                array_push($pembelianDetail, $detail);
            endforeach;
    

            // var_dump("Header", $pembelianHeader);
            // var_dump('Detail', $pembelianDetail);
            // die;
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
            var_dump("Sukses" );
            $result = [
                'success' => 'Data berhasil masuk ke database'
            ];
            // $cart->destroy();
            // session()->setflashdata('success', 'Data penjualan berhasil disimpan.');
            // return redirect()->to(base_url('sales/' . $idPenjualan));
        }

        echo json_encode($result);


        } else {
            exit('404 Not Found');
        }
    }



}