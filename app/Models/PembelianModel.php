<?php

namespace App\Models;

use CodeIgniter\Model;

class PembelianModel extends Model
{
    // ...
    protected $table = 'tr_pembelian';
    protected $primaryKey = 'id';
    protected $useTimestamps = true;
    protected $returnType    = 'array';
    protected $useSoftDeletes = true;
    protected $deletedField  = 'deleted_at';


    // protected $allowedFields = ['no_faktur', 'id_suplier', 'tgl_beli', 'total_harga', 'type'];

    protected $createdField  = 'created_at';
	protected $updatedField  = 'updated_at';
    protected $protectFields = false;



    public function pembelianJoinSuplier($id= 0)
    {

            $builder = $this->db->table("tr_pembelian as pembelian");
            $builder->select('pembelian.*, suplier.namasuplierobat as namasuplier');
            $builder->join('tm_suplier_obat as suplier', 'suplier.id = pembelian.id_suplier');
            $builder->where('pembelian.deleted_at', '0000-00-00 00:00:00' );
            if ($id){
                $builder->where('pembelian.id', $id );
            }

            return  $builder->get()->getResult();
    }


    public function getFakturCode($id) {
        return $this->find($id)['no_faktur'];
    }


}