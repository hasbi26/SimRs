<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (file_exists(SYSTEMPATH . 'Config/Routes.php')) {
    require SYSTEMPATH . 'Config/Routes.php';
}

/*
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Dashboard');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
$routes->setAutoRoute(true);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
$routes->get('/login', 'Login::index',['filter' => 'notLogout']);
$routes->post('/login/process', 'Login::process');
$routes->get('/dashboard', 'Dashboard::index',['filter' => 'auth']);
$routes->get('/', 'Dashboard::index',['filter' => 'auth']);

// divisi
$routes->get('/divisi', 'Karyawan/Divisi::Divisi',['filter' => 'auth']);
$routes->post('/karyawan/divisi/save', 'Karyawan/Divisi::save');

//jabatan
$routes->get('/jabatan', 'Karyawan/Jabatan::index',['filter' => 'auth']);
$routes->get('/jabatan/get_data', 'Karyawan/Jabatan::get_data');
$routes->get('/jabatan/get_modal', 'Karyawan/Jabatan::get_modal');
$routes->post('/jabatan/save_data', 'Karyawan/Jabatan::save_data');
$routes->post('/jabatan/get_modal_edit', 'Karyawan/Jabatan::get_modal_edit');
$routes->post('/jabatan/update_data', 'Karyawan/Jabatan::update_data');
$routes->post('/jabatan/delete_data', 'Karyawan/Jabatan::delete_data');

$routes->get('/karyawan', 'Karyawan/Karyawan::index',['filter' => 'auth']);
$routes->get('/karyawan/get_data', 'Karyawan/Karyawan::get_data');
$routes->get('/karyawan/get_modal', 'Karyawan/Karyawan::get_modal');
$routes->post('/karyawan/save_data', 'Karyawan/Karyawan::save_data');
$routes->post('/karyawan/get_modal_edit', 'Karyawan/Karyawan::get_modal_edit');
$routes->post('/karyawan/update_data', 'Karyawan/Karyawan::update_data');
$routes->post('/karyawan/delete_data', 'Karyawan/Karyawan::delete_data');



// apotek

//jenis
$routes->get('/apotik/jenis', 'Apotik/JenisObat::index',['filter' => 'auth']);
$routes->get('/apotik/jenis/get_data', 'Apotik/JenisObat::get_data');
$routes->get('/apotik/jenis/get_modal', 'Apotik/JenisObat::get_modal');
$routes->post('/apotik/jenis/save_data', 'Apotik/JenisObat::save_data');
$routes->post('/apotik/jenis/get_modal_edit', 'Apotik/JenisObat::get_modal_edit');
$routes->post('/apotik/jenis/update_data', 'Apotik/JenisObat::update_data');
$routes->post('/apotik/jenis/delete_data', 'Apotik/JenisObat::delete_data');

//satuan
$routes->get('/apotik/satuan', 'Apotik/SatuanObat::index',['filter' => 'auth']);
$routes->get('/apotik/satuan/get_data', 'Apotik/SatuanObat::get_data');
$routes->get('/apotik/satuan/get_modal', 'Apotik/SatuanObat::get_modal');
$routes->post('/apotik/satuan/save_data', 'Apotik/SatuanObat::save_data');
$routes->post('/apotik/satuan/get_modal_edit', 'Apotik/SatuanObat::get_modal_edit');
$routes->post('/apotik/satuan/update_data', 'Apotik/SatuanObat::update_data');
$routes->post('/apotik/satuan/delete_data', 'Apotik/SatuanObat::delete_data');

//kategori
$routes->get('/apotik/kategori', 'Apotik/KategoriObat::index',['filter' => 'auth']);
$routes->get('/apotik/kategori/get_data', 'Apotik/KategoriObat::get_data');
$routes->get('/apotik/kategori/get_modal', 'Apotik/KategoriObat::get_modal');
$routes->post('/apotik/kategori/save_data', 'Apotik/KategoriObat::save_data');
$routes->post('/apotik/kategori/get_modal_edit', 'Apotik/KategoriObat::get_modal_edit');
$routes->post('/apotik/kategori/update_data', 'Apotik/KategoriObat::update_data');
$routes->post('/apotik/kategori/delete_data', 'Apotik/KategoriObat::delete_data');

//golongan/
$routes->get('/apotik/golongan', 'Apotik/GolonganObat::index',['filter' => 'auth']);
$routes->get('/apotik/golongan/get_data', 'Apotik/GolonganObat::get_data');
$routes->get('/apotik/golongan/get_modal', 'Apotik/GolonganObat::get_modal');
$routes->post('/apotik/golongan/save_data', 'Apotik/GolonganObat::save_data');
$routes->post('/apotik/golongan/get_modal_edit', 'Apotik/GolonganObat::get_modal_edit');
$routes->post('/apotik/golongan/update_data', 'Apotik/GolonganObat::update_data');
$routes->post('/apotik/golongan/delete_data', 'Apotik/GolonganObat::delete_data');

//suplier/
$routes->get('/apotik/suplier', 'Apotik/SuplierObat::index',['filter' => 'auth']);
$routes->get('/apotik/suplier/get_data', 'Apotik/SuplierObat::get_data');
$routes->get('/apotik/suplier/get_modal', 'Apotik/SuplierObat::get_modal');
$routes->post('/apotik/suplier/save_data', 'Apotik/SuplierObat::save_data');
$routes->post('/apotik/suplier/get_modal_edit', 'Apotik/SuplierObat::get_modal_edit');
$routes->post('/apotik/suplier/update_data', 'Apotik/SuplierObat::update_data');
$routes->post('/apotik/suplier/delete_data', 'Apotik/SuplierObat::delete_data');


// master obat
$routes->get('/apotik/obat', 'Apotik/Obat::index',['filter' => 'auth']);
$routes->get('/apotik/obat/get_data', 'Apotik/Obat::get_data');
$routes->get('/apotik/obat/get_modal', 'Apotik/Obat::get_modal');
$routes->post('/apotik/obat/save_data', 'Apotik/Obat::save_data');
$routes->post('/apotik/obat/get_modal_edit', 'Apotik/Obat::get_modal_edit');
$routes->post('/apotik/obat/update_data', 'Apotik/Obat::update_data');
$routes->post('/apotik/obat/delete_data', 'Apotik/Obat::delete_data');
//transaksi obat
$routes->get('/apotik/obat/pembelian', 'Apotik/Obat::pembelian',['filter' => 'auth']);












$routes->get('/register', 'Register::index');
$routes->post('/register/process', 'Register::process');

$routes->get('/about', 'Home::about',['filter' => 'auth']);

$routes->delete('/komik/(:num)', 'Komik::delete/$1');

$routes->get('/komik/(:any)', 'Komik::detail/$1');

$routes->get('/komik/edit/(:any)', 'Komik::edit/'); 

/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (file_exists(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
    require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}