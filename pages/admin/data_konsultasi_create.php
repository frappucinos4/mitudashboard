<?php
session_start();
if (!isset($_SESSION['level'])) {
  // jika user belum login
  header('Location: ../login');
  exit();
}?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Aplikasi Sistem Informasi Klinik</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="../_partials/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../_partials/vendor/bootstrap/4.3.1/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="../_partials/vendor/font-awesome/css/font-awesome.min.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="../_partials/css/fontastic.css">
    <!-- Google fonts - Roboto -->
    <link rel="stylesheet" href="../_partials/https://fonts.googleapis.com/css?family=Roboto:300,400,500,700">
    <!-- jQuery Circle-->
    <link rel="stylesheet" href="../_partials/css/grasFp_mobile_progress_circle-1.0.0.min.css">
    <!-- Custom Scrollbar-->
    <link rel="stylesheet" href="../_partials/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="../_partials/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="../_partials/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="../_partials/img/favicon.png">

    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
        
    <!-- JavaScript files-->
    <script src="../_partials/vendor/jquery/jquery.min.js"></script>
    <script src="../_partials/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../_partials/js/grasp_mobile_progress_circle-1.0.0.min.js"></script>
    <script src="../_partials/vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="../_partials/vendor/chart.js/Chart.min.js"></script>
    <script src="../_partials/vendor/jquery-validation/jquery.validate.min.js"></script>
    <script src="../_partials/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="../_partials/js/charts-custom.js"></script>
    <script src="../_partials/js/diagram_data.js"></script>
    <script src="../_partials/js/Chart.js"></script>
    
    
  <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
  <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

  </head>
  <body>

<!-- Side Navbar -->

<?php include('../_partials/side-navbar-admin.php') ?>

<div class="page">
  <!-- navbar-->
  
<?php include('../_partials/navbar-header.php') ?>

  <!-- Breadcrumb-->
<?php include('../_partials/top-breadcrumb.php') ?>

        <li class="breadcrumb-item active">Data Transaksi</li>

<?php include('../_partials/bottom-breadcrumb.php') ?>

<?php include "koneksi_data.php";?>
<?php

	// mengambil data dengan kode paling besar
	$query = mysqli_query($conn, "select max(id) as kodeTerbesar from transaksi");
	$data = mysqli_fetch_array($query);
	$kodeKonsultasi = $data['kodeTerbesar'];

	// mengambil angka dari kode barang terbesar, menggunakan fungsi substr
	// dan diubah ke integer dengan (int)
	$urutan = (int) substr($kodeKonsultasi, 3, 3);

	// bilangan yang diambil ini ditambah 1 untuk menentukan nomor urut berikutnya
	$urutan++;

	// membentuk kode barang baru
	// perintah sprintf("%03s", $urutan); berguna untuk membuat string menjadi 3 karakter
	// misalnya perintah sprintf("%03s", 15); maka akan menghasilkan '015'
	// angka yang diambil tadi digabungkan dengan kode huruf yang kita inginkan, misalnya BRG 
	$huruf = "TRS";
	$kodeKonsultasi = $huruf . sprintf("%03s", $urutan);
?>
<script>
  $(function() {
    $( "#id_pasien" ).autocomplete({
      source: '../_partials/autocompletepasien.php'
    });
  });
  </script>
<script>
  $(function() {
    $( "#id_pegawai" ).autocomplete({
      source: '../_partials/autocompletepegawai.php'
    });
  });
  </script>
<script>
  $(function() {
    $( "#id_obat" ).autocomplete({
      source: '../_partials/autocompleteobat.php'
    });
  });
  </script>

<?php
//mendefinisikan id transaksi apakah dari tombol edit atau bukan
  //jika id diambil dari tombol edit maka
  if(isset($_GET['id'])){
    //$id=id dari tombol edit
    $id=$_GET['id'];
  }
  else{
      //jika tidak, maka $id=$kodeTransaksi;
      $id=$kodeKonsultasi;
      
  }
?>

<?php

  $sql=$conn->query("select * from transaksi where id='".$id."'");
  while($rs=$sql->fetch_object()){
    $id_konsultasi=$rs->id_konsultasi;
    $harga_konsultasi=$rs->harga_konsultasi;
    $jam_konsultasi=$rs->jam_konsultasi;
    $tanggal_konsultasi=$rs->tanggal_konsultasi;
    $id_pasien=$rs->id_pasien;
    $status=$rs->status;
    $tindakan=$rs->tindakan;
  }
?>



  <section class="forms">
    <div class="container-fluid">
      
          <!-- Page Header-->
          <header>
            <h1 class="h3 display"><a href="javascript:history.back()" class="btn-tambah">Back</a></h1>
            <h1 class="h3 display">Data Konsultasi</h1>
          </header>
      <div class="row">
        <div class="col-lg-12">
          <div class="card">
            <div class="card-body">

         
  <form class="form-horizontal" action="./data_konsultasi_simpan.php" method="post">
    <!-- <div class="form-group row">
        <label class="col-sm-2 form-control-label">ID KONSULTASI</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="id_konsultasi" required>
        </div>
    </div> -->
    <div class="line"></div>
    <div class="form-group row">
        <label class="col-sm-2 form-control-label">Harga Konsultasi</label>
        <div class="col-sm-10">
            <input type="number" class="form-control" name="harga_konsultasi" required>
        </div>
    </div>
    <div class="line"></div>
    <div class="form-group row">
        <label for="id_pasien" class="col-sm-2 form-control-label">Jam Konsultasi</label>
        <div class="col-sm-10">
            <input type="time" class="form-control" name="jam_konsultasi" required>
        </div>
    </div>
    <div class="line"></div>
    <div class="form-group row">
        <label class="col-sm-2 form-control-label">Tanggal Konsultasi</label>
        <div class="col-sm-10">
            <input type="date" class="form-control" name="tanggal_konsultasi" required>
        </div>
    </div>
    <div class="line"></div>
    <div class="form-group row">
        <label class="col-sm-2 form-control-label">ID PASIEN</label>
        <div class="col-sm-10">
            <input type="number" class="form-control" name="id_pasien" required>
        </div>
    </div>
    <div class="line"></div>
    <div class="form-group row">
        <label class="col-sm-2 form-control-label">Status</label>
        <div class="col-sm-10 mb-3">   
            <select name="status" class="form-control" required>
                <option value="sudah ditindak">sudah ditindak</option>
                <option value="belum ditindak">belum ditindak</option>
                <option value="pending">pending</option>
            </select>
        </div>
    </div>
    <div class="line"></div>
    <div class="form-group row">
        <label class="col-sm-2 form-control-label">Tindakan</label>
        <div class="col-sm-10">
            <select name="tindakan" class="form-control" required>
                <option value="facial">facial</option>
                <option value="laser">laser</option>
            </select>
        </div>
    </div>
    <div class="line"></div>
    <div class="form-group row">
        <div class="col-sm-4 offset-sm-2">
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </div>
</form>

            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  </body>
</html>