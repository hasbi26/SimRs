<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.84.0">


        <!-- cssku -->
        <link rel="stylesheet" href="/css/style.css">

    <title><?= $title ?></title>



    <!-- Bootstrap core CSS -->
<link href="/assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="/assets/sidebars/sidebars.css" rel="stylesheet">
  </head>
  <body>
<div class="container-fluid">
    <!-- ini logo -->
  <div class="row">
    <div class="col col-lg-2">
      <div class="flex-shrink-0 p-3 bg-white" style="width: 280px;">
        <a href="/" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
          <svg class="bi me-2" width="30" height="24"><use xlink:href="#bootstrap"/></svg>
          <span class="fs-5 fw-semibold">Sim Rs Berlian Kasih</span>
        </a>
        
      </div>
    </div>

    <!-- ini top bar -->
    <div class="col-10">
----

    </div>
 
    </div>


 <?=$this->include('layout/sidebar');?>

<?= $this->renderSection('content'); ?>



    </div>
  </div>
</div>
  <script src="/assets/dist/js/bootstrap.bundle.min.js"></script>
<script src="/assets/sidebars/sidebars.js"></script>
</body>
</html>