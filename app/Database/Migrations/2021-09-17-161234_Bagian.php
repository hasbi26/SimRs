<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Bagian extends Migration
{
    public function up()
    {
        $this->forge->addField([
			'idbagian'          => [
                'type'           => 'INT',
                'constraint'     => 11,
                'unsigned'       => true,
                'auto_increment' => true,
			],
			'namabagian'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
			],
			'updateby'       => [
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
		$this->forge->addPrimaryKey('idbagian', true);
		$this->forge->createTable('tmbagian');
        //
    }

    public function down()
    {
        //
    }
}
