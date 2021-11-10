<?php

namespace App\Models;

use CodeIgniter\Model;

class PembelianDetailModel extends Model
{
    // ...
    protected $table = 'tr_pembelian_detail';
    protected $useTimestamps = true;
    // protected $allowedFields = ['no_faktur', 'kodeobat', 'harga', 'jumlah', 'total'];
    protected $protectFields = false;


}