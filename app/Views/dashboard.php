<?= $this->extend('layout/template'); ?>


<?= $this->section('content');?>

<div class="container-fluid">
      <div class="row">
            <div class="col">
                  ini adalah Dashborad sungguhan
                  <h1>Hai ! <?= session()->get('name'); ?></h1>

            </div>
      </div>
</div>



<?= $this->endSection(); ?>
