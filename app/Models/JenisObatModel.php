<?php

namespace app\Models;

use CodeIgniter\Model;

class JenisObatModel extends Model 
{

    protected $table = 'tm_jenis_obat';
    protected $primaryKey    = 'id';
	protected $returnType    = 'array';
    protected $useTimestamps = true;
    protected $allowedFields = ['namajenisobat', 'created_by', 'updated_by'];
    protected $createdField  = 'created_at';
	protected $updatedField  = 'updated_at';
}