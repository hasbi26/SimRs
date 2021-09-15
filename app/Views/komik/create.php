<?= $this->extend('layout/template'); ?>

<?= $this->section('content');?>

<div class="container-fluid">
    <div class="row">
        <div class="col-8">

        <h2><?=$title?></h2>

    <form action="/komik/save"  method="POST" >  
    <?=csrf_field();?>
  <div class="row mb-3">
    <label for="judul" class="col-sm-2 col-form-label">Judul</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="judul" name="judul" autofocus >
    </div>
  </div>
  <div class="row mb-3">
    <label for="penulis" class="col-sm-2 col-form-label">Penulis</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="penulis" name="Penulis" >
    </div>
  </div>
  <div class="row mb-3">
    <label for="penerbit" class="col-sm-2 col-form-label">Penerbit</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="penerbit" name="Penerbit" >
    </div>
  </div>
  <div class="row mb-3">
    <label for="Sampul" class="col-sm-2 col-form-label">Sampul</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="Sampul" name="Sampul" >
    </div>
  </div>
  

  <button type="submit" class="btn btn-primary">Tambah Data</button>
</form>









        </div>
    </div>
</div>





<?= $this->endSection(); ?>