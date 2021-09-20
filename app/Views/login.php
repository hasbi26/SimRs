<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <title><?=$title;?></title>
    <link href="/assets/dist/css/login.css" rel="stylesheet">
    <!-- <link href="/assets/dist/css/bootstrap.min.css" rel="stylesheet"> -->

  </head>
  <body>

      <form class="box" action="/Login/process" method="post">
      <!-- <h1>Login Page</h1> -->
      <?= csrf_field(); ?>

      <?php if (!empty(session()->getFlashdata('error'))) : ?>
            <div class="alert alert-warning alert-dismissible fade show" role="alert">
               <script>alert('<?=session()->getFlashdata('error'); ?>')</script>
            </div>
        <?php endif; ?>

<div class="text-center">
  <img src="img/logo.png" class="rounded" alt="..." style="width: 200px;">
</div>
  <input type="text" name="username" placeholder="Username">
  <input type="password" name="password" placeholder="Password">
  <input type="submit" name="" value="Login">
</form>


  </body>
</html>
