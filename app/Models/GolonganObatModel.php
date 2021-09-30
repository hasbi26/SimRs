<?php

namespace app\Models;

use CodeIgniter\Model;

class GolonganObatModel extends Model 
{

    protected $table = 'tm_golongan_obat';
    protected $primaryKey    = 'id';
	protected $returnType    = 'array';
    protected $useTimestamps = true;
    protected $allowedFields = ['namagolonganobat', 'created_by', 'updated_by'];
    protected $createdField  = 'created_at';
	protected $updatedField  = 'updated_at';
}