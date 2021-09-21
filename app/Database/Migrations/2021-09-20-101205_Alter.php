<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Alter extends Migration
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
			'update_by'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
			],
            'created_by'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
			],
			'created_at' => [
				'type'           => 'DATETIME',
				'null'       	 => true,
			],
			'updated_at' => [
				'type'           => 'DATETIME',
				'null'       	 => true,
			]
 
		]);
		$this->forge->addPrimaryKey('iddivisi', true);
		$this->forge->createTable('tm_divisi');

    }

    public function down()
    {
        $this->forge->dropTable('tm_divisi');
    }
}
