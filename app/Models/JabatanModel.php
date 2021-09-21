<?php

namespace app\Models;

use CodeIgniter\Model;

class JabatanModel extends Model 
{

    protected $table = 'tm_jabatan';
    protected $primaryKey    = 'id';
	protected $returnType    = 'array';
    protected $useTimestamps = true;
    protected $allowedFields = ['namajabatan', 'created_by', 'updated_by'];
    protected $createdField  = 'created_at';
	protected $updatedField  = 'updated_at';
}