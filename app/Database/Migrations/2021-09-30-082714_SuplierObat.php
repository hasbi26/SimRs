<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class SuplierObat extends Migration
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
			'namasuplierobat'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
			],
			'alamatsuplierobat'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '300',
			],
			'teleponsuplierobat'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
			],
			'emailsuplierobat'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
			],
			'keterangansuplierobat'       => [
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
		$this->forge->createTable('tm_suplier_obat');
    }

    public function down()
    {
        $this->forge->dropTable('tm_suplier_obat');
    }
}