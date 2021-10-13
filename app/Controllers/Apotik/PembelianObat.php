<?php

namespace App\Controllers\Apotik;

use App\Controllers\BaseController;
use App\Models\ObatModel;


use App\Models\SuplierObatModel;
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
        dd("hiya hiya");
    }



}