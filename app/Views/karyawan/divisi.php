<?= $this->extend('layout/template'); ?>


<?= $this->section('content');?>

<a href="#TambahModal" data-toggle="modal"  data-bs-toggle="modal" > <span class="badge bg-success"> <p class="h6"> Tambah Data <span data-feather="plus-circle"></span> <p>     </span></a>

<div class="container-fluid">
      <div class="row">
            <div class="col">
            <table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Id Divisi</th>
      <th scope="col">Nama Divisi</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
        <?php foreach ($divisi as $d) :?>
    <tr>
      <th scope="row">1</th>
      <td><?=$d['iddivisi']?></td>
      <td><?=$d['namadivisi']?></td>
      <td>
      <a href="#detailModal<?= $d['iddivisi']; ?>" data-toggle="modal"  data-bs-toggle="modal"><span class="badge bg-info ">Detail</span></a>
      <a href="/"><span class="badge bg-warning ">Edit</span></a>
      <a href="/"><span class="badge bg-danger ">Delete</span></a>
      </td>
    </tr>
    <?php endforeach;?>
  </tbody>
</table>

            </div>
      </div>
</div>



<!-- awal Tambah -->


<div class="modal fade" id="TambahModal" tabindex="-1" aria-labelledby="TambahModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="TambahModalLabel">Detail</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <form action="/karyawan/divisi/save" method="POST">
      <?=csrf_field();?>
      <div class="modal-body">

      <div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default">Nama Divisi</span>
  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"  name="namaDivisi" >
      </div>
</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save changes</button>
      </div>
      </form>
    </div>
  </div>
</div>



<!-- akhir Tambah  -->




<!-- awal Detail -->
<?php $i = 1; ?>
<?php foreach ($divisi as $d ) : ?>
<div class="modal fade" id="detailModal<?= $d['iddivisi']; ?>" tabindex="-1" aria-labelledby="detailModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="detailModalLabel">Detail</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">


      <div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default">Id Divisi</span>
  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="<?= $d['iddivisi']; ?>" disabled >
      </div>

      <div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default">Nama Divisi</span>
  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="<?= $d['namadivisi']; ?>" disabled >
      </div>

      <div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default">Created At</span>
  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="<?= $d['created_at']; ?>"  disabled >
      </div>

      <div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default">Created By</span>
  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="<?= $d['created_by']; ?>"  disabled  >
      </div>

      <div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default">Update At</span>
  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="<?= $d['update_by']; ?>"  disabled  >
      </div>

      <div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default">Created By</span>
  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="<?= $d['created_by']; ?>"  disabled >
      </div>


</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

<?php endforeach; ?>

<!-- akhir Detail -->






<?= $this->endSection(); ?>
