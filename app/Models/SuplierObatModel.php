<?php

namespace app\Models;

use CodeIgniter\Model;

class SuplierObatModel extends Model 
{

    protected $table = 'tm_suplier_obat';
    protected $primaryKey    = 'id';
	protected $returnType    = 'array';
    protected $useTimestamps = true;
    protected $protectFields = false;

    // protected $allowedFields = ['namasuplierobat','alamatsuplierobat','teleponsuplierobat','emailsuplierobat','keterangansuplierobat', 'created_by', 'updated_by'];
    protected $createdField  = 'created_at';
	protected $updatedField  = 'updated_at';

    protected $useSoftDeletes = true;
    protected $deletedField  = 'deleted_at';
}