<?php

namespace app\Models;

use CodeIgniter\Model;

class KaryawanModel extends Model 
{
    protected $table = 'tm_karyawan';
    protected $primaryKey    = 'id';
	protected $returnType    = 'array';
    protected $useTimestamps = true;
    // protected $allowedFields = ['nik','idjabatan','iddivisi','','namajabatan', 'created_by', 'updated_by'];
    protected $createdField  = 'created_at';
	protected $updatedField  = 'updated_at';
    protected $protectFields = false;

}