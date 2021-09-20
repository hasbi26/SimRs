<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class AlterDivisi3 extends Migration
{
    public function up()
    {
        //
    }

    public function down()
    {
        $this->forge->dropTable('tm_divisi','updateby');
    }
}
