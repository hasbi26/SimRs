<?php

namespace App\Models;

use CodeIgniter\Model;

class DivisiModel extends Model
{
    // ...
    protected $table      = 'tm_divisi';
    protected $useTimestamps = true;
    protected $allowedFields = ['namadivisi', 'created_by', 'updated_by'];

}