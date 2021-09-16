<?= $this->extend('layout/template'); ?>

<?= $this->section('content');?>
<div class="container-fluid">
    <div class="row">
      <div class="col">
        <table class="table">
          <a href="Komik/create" class="btn btn-primary mb-3">tambah data</a>
<h3>Daftar Komik</h3>
<?php if (session()->getFlashdata('pesan')) : ?>
  <div class="alert alert-success" role="alert">
    <?= session()->getFlashdata('pesan'); ?>
</div>
  <?php endif;?>
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Sampul</th>
      <th scope="col">judul</th>
      <th scope="col">aksi</th>
    </tr>
  </thead>
  <tbody>
    <?php $i = 0?>
      <?php foreach ($komik as $k) :  $i++  ?>
    <tr>
      <th scope="row"><?= $i ?></th>
      <td><img src="/img/<?=$k['sampul']?>" alt="" class="sampul" ></td>
      <td><?=$k['judul']?></td>
      <td>
          <a href="/komik/<?=$k['slug']?>" class="btn btn-success">detail</a>
      </td>
    </tr>
    <?php endforeach;?>
  </tbody>
</table>

        </div>
    </div>
</div>




<?= $this->endSection(); ?>