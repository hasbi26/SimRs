<?php

namespace app\Models;

use CodeIgniter\Model;

class ObatModel extends Model 
{
    protected $table = 'tm_obat';
    protected $primaryKey    = 'id';
	protected $returnType    = 'array';
    protected $useTimestamps = true;
    // protected $allowedFields = ['namagolonganobat', 'created_by', 'updated_by'];
    protected $createdField  = 'created_at';
	protected $updatedField  = 'updated_at';
    protected $protectFields = false;
}