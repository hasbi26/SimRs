<?php

namespace app\Models;

use CodeIgniter\Model;

class SatuanObatModel extends Model 
{

    protected $table = 'tm_satuan_obat';
    protected $primaryKey    = 'id';
	protected $returnType    = 'array';
    protected $useTimestamps = true;
    protected $allowedFields = ['namasatuanobat', 'created_by', 'updated_by'];
    protected $createdField  = 'created_at';
	protected $updatedField  = 'updated_at';
}