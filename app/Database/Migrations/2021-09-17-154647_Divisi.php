<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Divisi extends Migration
{
    public function up()
    {
        $this->forge->addField([
			'iddivisi'          => [
                'type'           => 'INT',
                'constraint'     => 11,
                'unsigned'       => true,
                'auto_increment' => true,
			],
			'namadivisi'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
			],
			'updateby'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
			]
 
		]);
		$this->forge->addPrimaryKey('iddivisi', true);
		$this->forge->createTable('divisi');

    }

    public function down()
    {
        $this->forge->dropTable('divisi');
    }
}
