<div class="container-fluid">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">

      <div class="text-center" style="padding-top:2rem;">
        <img src="/img/logo.png" class="img-thumbnail" alt="..." width="200">
      </div>

      <ul class="list-unstyled pt-3 ps-2">
        <a href="/" class="nav-link link-dark">
          <!-- <svg class="bi me-2" width="16" height="16"><use xlink:href="#speedometer2"/></svg> -->
          <!-- <span data-feather="airplay"></span> -->
          <!-- <h6> Dashboard<h6> -->
          <p class="h6"> <span data-feather="airplay"></span> Dashboard </p>
        </a>
        <li class="mb-1">
          <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"
            data-bs-target="#masterData" aria-expanded="false">
            Master Data
          </button>
          <div class="collapse" id="masterData">
            <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 ">

              <li><button class="btn btn-sm btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"
                  data-bs-target="#master-karyawan" aria-expanded="false">
                  Karyawan
                </button>
              <li>
                <div class="collapse show" id="master-karyawan">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="/karyawan" class="link-dark rounded">Master Karyawan</a></li>
                    <li><a href="/divisi" class="link-dark rounded">Master Divisi</a></li>
                    <li><a href="/jabatan" class="link-dark rounded">Master Jabatan</a></li>
                    <li><a href="#" class="link-dark rounded">Master User</a></li>
                  </ul>
                </div>
              </li>

              <!-- Aset -->
              <li><button class="btn btn-sm btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"
                  data-bs-target="#Aset" aria-expanded="false">
                  Aset
                </button>
                <div class="collapse" id="Aset">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="#" class="link-dark rounded">Master Aset</a></li>
                    <li><a href="#" class="link-dark rounded">Master Jenis Aset</a></li>
                  </ul>
                </div>
              </li>

              <!-- end of aset -->

              <!-- apotik  -->

              <li><button class="btn btn-sm btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"
                  data-bs-target="#Apotik" aria-expanded="false">
                  Apotik
                </button>
                <div class="collapse" id="Apotik">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="/apotik/obat" class="link-dark rounded">Master Obat</a></li>
                    <li><a href="/apotik/jenis" class="link-dark rounded">Master Jenis Obat</a></li>
                    <li><a href="/apotik/satuan" class="link-dark rounded">Master Satuan Obat</a></li>
                    <li><a href="/apotik/suplier" class="link-dark rounded">Master Suplier Obat</a></li>
                    <li><a href="/apotik/golongan" class="link-dark rounded">Master Golongan Obat</a></li>
                    <li><a href="/apotik/kategori" class="link-dark rounded">Master Kategori Obat</a></li>
                  </ul>
                </div>
              </li>


              <!-- end of apotik -->



              <li><a href="/test" class="link-dark rounded">Test</a></li>
              <li><a href="/komik" class="link-dark rounded">Reports</a></li>
            </ul>
          </div>
        </li>
        <li class="mb-1">
          <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"
            data-bs-target="#dashboard-collapse" aria-expanded="false">
            Transaksi Data
          </button>



        <li><button class="btn btn-sm btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"
            data-bs-target="#TrApotik" aria-expanded="false">
            Apotik
          </button>
          <div class="collapse" id="TrApotik">
            <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
              <li><a href="/apotik/pembelian/obat" class="link-dark rounded">Pembelian Obat</a></li>
              <li><a href="/apotik/jenis" class="link-dark rounded">Penjualan Obat</a></li>
              <li><a href="/apotik/satuan" class="link-dark rounded">Retur Obat</a></li>
            </ul>
          </div>
        </li>





        <div class="collapse" id="dashboard-collapse">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 ">
            <li><a href="#" class="link-dark rounded">Overview</a></li>
            <li><a href="#" class="link-dark rounded">Weekly</a></li>
            <li><a href="#" class="link-dark rounded">Monthly</a></li>
            <li><a href="#" class="link-dark rounded">Annually</a></li>
          </ul>
        </div>
        </li>
        <li class="mb-1">
          <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"
            data-bs-target="#orders-collapse" aria-expanded="false">
            Laporan
          </button>
          <div class="collapse" id="orders-collapse">
            <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
              <li><a href="#" class="link-dark rounded">New</a></li>
              <li><a href="#" class="link-dark rounded">Processed</a></li>
              <li><a href="#" class="link-dark rounded">Shipped</a></li>
              <li><a href="#" class="link-dark rounded">Returned</a></li>
              <li><button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"
                  data-bs-target="#account-collapse1" aria-expanded="false">
                  Account
                </button>

                <div class="collapse" id="account-collapse1">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="#" class="link-dark rounded">New...</a></li>
                    <li><a href="#" class="link-dark rounded">Profile</a></li>
                    <li><a href="#" class="link-dark rounded">Settings</a></li>
                    <li><a href="#" class="link-dark rounded">Sign out</a></li>
                  </ul>
                </div>



              </li>
            </ul>
          </div>
        </li>
        <li class="border-top my-3"></li>
        <li class="mb-1">
          <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"
            data-bs-target="#account-collapse" aria-expanded="false">
            Account
          </button>
          <div class="collapse" id="account-collapse">
            <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
              <li><a href="#" class="link-dark rounded">New...</a></li>
              <li><a href="#" class="link-dark rounded">Profile</a></li>
              <li><a href="#" class="link-dark rounded">Settings</a></li>
              <li><a href="#" class="link-dark rounded">Sign out</a></li>
            </ul>
          </div>
        </li>
      </ul>
    </nav>