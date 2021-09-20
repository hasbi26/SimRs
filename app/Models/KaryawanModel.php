<?php

namespace App\Models;

use CodeIgniter\Model;

class KaryawanModel extends Model
{
    // ...
    protected $table      = 'tm_divisi';
    protected $useTimestamps = false;
    protected $allowedFields = ['namadivisi'];

}