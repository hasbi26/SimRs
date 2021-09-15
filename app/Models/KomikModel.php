<?php

namespace App\Models;

use CodeIgniter\Model;

class KomikModel extends Model
{
    // ...
    protected $table      = 'komik';
    protected $useTimestamps = true;
    protected $allowedFields = ['judul', 'slug', 'penulis', 'penerbit', 'sampul'];

    public function getKomik($slug = false)

    // kalo slug kosong cari semua data, kalo slug nya ada nampil 1

    {
        if ($slug == false){
            return $this->findAll();
        }

        return $this->where(['slug' => $slug])->first();
    }


}