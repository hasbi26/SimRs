<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class KategoriObat extends Migration
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
			'namakategoriobat'       => [
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
		$this->forge->createTable('tm_kategori_obat');
    }

    public function down()
    {
        $this->forge->dropTable('tm_kategori_obat');
    }
}