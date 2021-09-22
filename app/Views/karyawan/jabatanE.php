<?= $this->extend('layout/template'); ?>


<?= $this->section('content');?>

<div class="container-fluid">
    <div class="row">
        <div class="col">
        <div class="table-responsive">
     <table class="table table-bordered" id="getProducts" width="100%" cellspacing="0">
         <thead>
             <tr>
                 <th>No</th>
                 <th>id</th>
                 <th>Nama Jabatan</th>
             </tr>
         </thead>
         <tbody>

         <?=
         dd($data_jabatan);
         ?>

             <?php $no = 1;
                foreach ($data_jabatan as $datas) : ?>
                 <tr>
                     <td width="1%"><?= $no++; ?></td>
                     <td><?= esc($datas['id']); ?></td>
                     <td><?= esc($datas['namajabatan']); ?></td>
                     <td class="text-center" width="20%">
                         <button class="btn btn-success btn-sm mb-1" onclick="edit('<?= $datas['id']; ?>')">
                             Update
                         </button>

                         <button class="btn btn-danger btn-sm mb-1" onclick="deletes('<?= $datas['id']; ?>')">
                             Delete
                         </button>
                     </td>
                 </tr>
             <?php endforeach; ?>
         </tbody>
     </table>
 </div>    




        </div>
    </div>
</div>





<?= $this->endSection(); ?>
