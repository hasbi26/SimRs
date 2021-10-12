<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Obat extends Migration
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
			'kodeobat'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
			],
			'namaobat'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '300',
			],
			'golongan'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
			],
			'kategori'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
			],
			'jenis'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '200',
			],
            'satuan'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '200',
			],
            'tanggalexpire'       => [
				'type'           => 'DATE',
				'null'       	 => true,
			],
            'minimalstok'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '200',
			],
            'deskripsi'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '200',
			],
            'kandungan'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '200',
			],
            'dosis'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '200',
			],
            'efeksamping'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '200',
			],
            'potoobat'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '200',
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
		$this->forge->createTable('tm_obat');  
      }

    public function down()
    {
        $this->forge->dropTable('tm_obat');
    }
}