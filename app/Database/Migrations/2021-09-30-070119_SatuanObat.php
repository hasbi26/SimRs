<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class SatuanObat extends Migration
{
    public function up()
    {
        $this->forge->addField([
			'id'          => [
                'type'           => 'INT',
                'constraint'     => 11,
                'unsigned'       => true,
                'auto_increment' => true,
			],
			'namasatuanobat'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
			],
			'created_by'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
			],
			'updated_by'       => [
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

        $this->forge->addPrimaryKey('id', true);
		$this->forge->createTable('tm_satuan_obat');
    }

    public function down()
    {
        $this->forge->dropTable('tm_satuan_obat');
    }
}