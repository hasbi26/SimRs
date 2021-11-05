<?php

namespace App\Models;

use CodeIgniter\Model;

class PembelianDetailModel extends Model
{
    // ...
    protected $table = 'tr_pembelian_detail';
    protected $primaryKey = 'id_pembelian';
    protected $useTimestamps = true;
    protected $allowedFields = ['id_pembelian', 'kodeobat', 'harga', 'jumlah', 'total'];

}