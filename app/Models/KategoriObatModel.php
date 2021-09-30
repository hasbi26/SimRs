<?php

namespace app\Models;

use CodeIgniter\Model;

class KategoriObatModel extends Model 
{

    protected $table = 'tm_kategori_obat';
    protected $primaryKey    = 'id';
	protected $returnType    = 'array';
    protected $useTimestamps = true;
    protected $allowedFields = ['namakategoriobat', 'created_by', 'updated_by'];
    protected $createdField  = 'created_at';
	protected $updatedField  = 'updated_at';
}