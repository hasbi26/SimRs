<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Karyawan extends Migration
{
    public function up()
    { $this->forge->addField([
        'id'          => [
            'type'           => 'INT',
            'constraint'     => 11,
            'unsigned'       => true,
            'auto_increment' => true,
        ],
        'nik'       => [
            'type'           => 'VARCHAR',
            'constraint'     => '100',
        ],
        'namakaryawan'       => [
            'type'           => 'VARCHAR',
            'constraint'     => '100',
        ],
        'idjabatan'       => [
            'type'           => 'INT',
            'constraint'     => 11,
            'unsigned'       => true,
        ],
        'iddivisi'       => [
            'type'           => 'INT',
            'constraint'     => 11,
            'unsigned'       => true,
        ],
        'jeniskelamin'       => [
            'type'           => 'VARCHAR',
            'constraint'     => '100',
        ],
        'tempatlahir'       => [
            'type'           => 'VARCHAR',
            'constraint'     => '100',
        ],
        'tanggallahir'       => [
            'type'           => 'DATE',
        ],
        'tanggalmasuk'       => [
            'type'           => 'DATE',
        ],
        'tanggalkeluar'       => [
            'type'           => 'DATE',
            'null'       	 => true,
        ],
        'statusmenikah'       => [
            'type'           => 'VARCHAR',
            'constraint'     => '100',
        ],
        'telepon'       => [
            'type'           => 'VARCHAR',
            'constraint'     => '100',
        ],
        'alamat'       => [
            'type'           => 'VARCHAR',
            'constraint'     => '250',
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
    $this->forge->createTable('tm_karyawan');
    }

    public function down()
    {
        $this->forge->dropTable('tm_karyawan');
    }
}