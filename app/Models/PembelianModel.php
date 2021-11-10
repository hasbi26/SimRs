<?php

namespace App\Models;

use CodeIgniter\Model;

class PembelianModel extends Model
{
    // ...
    protected $table = 'tr_pembelian';
    protected $primaryKey = 'id';
    protected $useTimestamps = true;
    protected $returnType    = 'array';
    protected $useSoftDeletes = true;
    protected $deletedField  = 'deleted_at';


    // protected $allowedFields = ['no_faktur', 'id_suplier', 'tgl_beli', 'total_harga', 'type'];

    protected $createdField  = 'created_at';
	protected $updatedField  = 'updated_at';
    protected $protectFields = false;


}