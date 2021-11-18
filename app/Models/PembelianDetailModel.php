<?php

namespace App\Models;

use CodeIgniter\Model;

class PembelianDetailModel extends Model
{
    // ...
    protected $table = 'tr_pembelian_detail';
    protected $primaryKey = 'id_detail';
    protected $useTimestamps = true;
    // protected $allowedFields = ['no_faktur', 'kodeobat', 'harga', 'jumlah', 'total'];
    protected $protectFields = false;

    protected $useSoftDeletes = true;
    protected $deletedField  = 'deleted_at';


    public function getAlldata($nofaktur){
        return  $this->join('tm_obat', 'tr_pembelian_detail.kodeobat = tm_obat.kodeobat', 'inner')->where('no_faktur', $nofaktur)->findAll();
    }


}