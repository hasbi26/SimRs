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

        // session();

        $data = [
            'title' => 'Form Tambah data',
            'validation' => \Config\Services::validation()
        ];

        return view('komik/create', $data);

    }

    public function save(){


        // validasi input

        if(!$this->validate([
            'judul' => [
                'rules' =>  'required|is_unique[komik.judul]',
                'errors' => [
                    'required' => '{field} komik Harus Di isi',
                    'is_unique' => '{field} komik sudah ada'
                ]
                ],
            'sampul' => [
                'rules' => 'uploaded[sampul]|max_size[sampul,500]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'uploaded' => '{field} gambar harus di upload',
                    'max_size' => '{field} ukuran terlalu besar',
                    'is_image' => 'bukan gambar bro is_image',
                    'mime_in' => 'bukan gambar bro mime_in'

                ]
            ]
        ])) {

            // $validaion = \Config\Services::validation();

            // return redirect()->to('/Komik/create')->withInput()->with('validation', $validaion);
             return redirect()->to('/Komik/create')->withInput();
        }

        // ambil gambar
        $fileSampul = $this->request->getFile('sampul');

        // pindahkan ke img
        $fileSampul->move('img');

        //ambilnamafile

        $namaSampul = $fileSampul->getName();


        $slug = url_title($this->request->getVar('judul'), '-', true);

        $this->komikModel->save([
            'judul' => $this->request->getVar('judul'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul' => $namaSampul
        ]);

        session()->setFlashdata('pesan', 'Data Berhasil Ditambahkan');

        return redirect()->to('/komik');

    }


    public function delete($id) {


        //cari gambar berdasarkan id
        $komik = $this->komikModel->find($id);


        //hapusgambar
        unlink('img/'.$komik['sampul']);

        $this->komikModel->delete($id);
        session()->setFlashdata('pesan', 'Data Berhasil didelete');
        return redirect()->to('/Komik');
    }

    public function edit ($slug) {

        // dd($slug);

        $data = [
            'title' => 'Form ubah data',
            'validation' => \Config\Services::validation(),
            'komik' => $this->komikModel->getKomik($slug)
        ];

        return view('komik/edit', $data);

    }


    public function update ($id){
    
        if(!$this->validate([
            'judul' => [
                'rules' =>  'required|is_unique[komik.judul,id,' . $id . ']',
                'errors' => [
                    'required' => '{field} komik Harus Di isi',
                    'is_unique' => '{field} komik sudah ada'
                ]
            ],
            'sampul' => [
                'rules' => 'max_size[sampul,500]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'uploaded' => ' gambar harus di upload',
                    'max_size' => 'ukuran terlalu besar',
                    'is_image' => 'bukan gambar bro is_image',
                    'mime_in' => 'bukan gambar bro mime_in'

                ]
            ]

            // 'rules' => 'required|is_unique[komik.judul,id,' . $id . ']'

        ])) {

            // $validaion = \Config\Services::validation();

            return redirect()->to('/Komik/edit/' . $this->request->getVar('slug'))->withInput();
        }

        $fileSampul = $this->request->getFile('sampul');


        //cek gambar
        if($fileSampul->getError() == 4){
            $namaSampul = $this->request->getVar('sampullama');
        } else {
            $namaSampul = $fileSampul->getName();
            // pindahkan ke img
            $fileSampul->move('img');
       
            //hapus file lama
            unlink('img/' . $this->request->getVar('sampullama'));
        }





        $slug = url_title($this->request->getVar('judul'), '-', true);

        $this->komikModel->save([
            'id' => $id,
            'judul' => $this->request->getVar('judul'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul' => $namaSampul
        ]);

        session()->setFlashdata('pesan', 'Data Berhasil diubah');

        return redirect()->to('/komik');

    }
}
