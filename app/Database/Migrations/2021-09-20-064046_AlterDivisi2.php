<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class AlterDivisi2 extends Migration
{
    public function up()
    {
        $this->forge->addColumn('tm_divisi',[
            'update_by varchar(250) ',
             'created_by varchar(250)']);
    }

    public function down()
    {
        $this->forge->dropTable('tm_divisi','updateby');
        $this->forge->dropTable('tm_divisi','update_by');
        $this->forge->dropTable('tm_divisi','created_by');
    }
}
