<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class AlterDivisi extends Migration
{
    public function up()
    {
        $this->forge->addColumn('tm_divisi',[
            'update_at DATETIME ']);

    }

    public function down()
    {
        $this->forge->dropTable('tm_divisi','update_at');
    }
}


