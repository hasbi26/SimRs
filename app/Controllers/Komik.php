<?php

namespace App\Controllers;
use App\Models\KomikModel;

class Komik extends BaseController
{

    // konstruktor
    protected $komikModel;
    public function __construct()
    {
        $this->komikModel = new KomikModel();
    }

    public function index()
    {

        // $komik = $this->komikModel->findAll();
        $data = [
            'title' => 'komik',
            'komik' => $this->komikModel->getKomik()
        ];

        // cara konek db tanpa model
        // $db = \Config\Database::connect();

        // $komik = $db->query("SELECT * FROM komik");
        // foreach($komik->getResultArray() as $row) {
        //     d($row);
        // }

            // $komikModel = new KomikModel();
            

        return view('komik/index',$data);

    }


    public function detail($slug)
    {
        //echo $slug;

        $data = [
            'title' => 'Detail Komik',
            'komik' => $this->komikModel->getKomik($slug)
        ];


        if (empty($data['komik'])){
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Judul Komik' .$slug. 'tidak ditemukan');
        }

        return view('komik/detail', $data);

    }

    public function create(){

        $data = [
            'title' => 'Form Tambah data'
        ];

        return view('komik/create', $data);

    }

    public function save(){

        $slug = url_title($this->request->getVar('judul'), '-', true);

        $this->komikModel->save([
            'judul' => $this->request->getVar('judul'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('Penulis'),
            'penerbit' => $this->request->getVar('Penerbit'),
            'sampul' => $this->request->getVar('Sampul')
        ]);

        return redirect()->to('/komik');

    }
}
