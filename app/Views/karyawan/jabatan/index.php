<?= $this->extend('layout/template'); ?>


<?= $this->section('content');?>


<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid">
            <h1 class="mt-4"><i class="fas fa-spinner"></i> CRUD Ajax jQuery</h1>
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item"><a href="<?= base_url('dashboard'); ?>">Dashboard</a></li>
                <li class="breadcrumb-item active"><?= $title; ?></li>
            </ol>
            <div class="card mb-4">
                <div class="card-header">
                    <i class="fas fa-table mr-1"></i>
                    Products Table
                </div>
                <div class="card-body">
                    <a href="" class="btn btn-primary btn-sm mb-2 add-modal"><i class="fas fa-plus-square"></i> Add data</a>

                    <!-- Get Data -->
                    <div class="table-responsive view-data">

                    </div>
                </div>
            </div>
        </div>
    </main>

    <!-- Get Modal -->
    <div class="view-modal" style="display: none;"></div>




<?= $this->endSection(); ?>