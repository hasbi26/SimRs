<?=$this->extend('layout/template');?>


<?=$this->section('content');?>

<div class="container-fluid">
  <div class="row">
    <div class="col">

      <table class="table" id="dataTable">
        <!-- <a href="Komik/create" class="btn btn-primary mb-3">tambah data</a> -->
        <h3>Daftar ORANG</h3>
        <!-- <?php if (session()->getFlashdata('pesan')) : ?>
  <div class="alert alert-success" role="alert">
    <?= session()->getFlashdata('pesan'); ?>
</div>
  <?php endif;?> -->
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">NAMA</th>
            <th scope="col">ALAMAT</th>
            <th scope="col">aksi</th>
          </tr>
        </thead>
        <tbody>
          <?php $i = 0?>
          <?php foreach ($orang as $k) :  $i++  ?>
          <tr>
            <th scope="row"><?= $i ?></th>
            <td><?=$k['nama']?></td>
            <td><?=$k['alamat']?></td>
            <td>
            </td>
          </tr>
          <?php endforeach;?>
        </tbody>
      </table>



    </div>
  </div>
</div>




<?=$this->endSection();?>