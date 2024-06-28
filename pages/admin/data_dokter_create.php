
    <?php include('../_partials/top.php') ?>

<!-- Side Navbar -->

<?php include('../_partials/side-navbar-admin.php') ?>

<div class="page">
  <!-- navbar-->
  
<?php include('../_partials/navbar-header.php') ?>

  <!-- Breadcrumb-->
<?php include('../_partials/top-breadcrumb.php') ?>

        <li class="breadcrumb-item active">Data Dokter</li>

<?php include('../_partials/bottom-breadcrumb.php') ?>

<?php include "koneksi_data.php";?>
<?php

	// mengambil data dengan kode paling besar
	$query = mysqli_query($conn, "select max(id) as kodeTerbesar from dokter");
	$data = mysqli_fetch_array($query);
	$kodeDokter = $data['kodeTerbesar'];

	// mengambil angka dari kode barang terbesar, menggunakan fungsi substr
	// dan diubah ke integer dengan (int)
	$urutan = (int) substr($kodeDokter, 3, 3);

	// bilangan yang diambil ini ditambah 1 untuk menentukan nomor urut berikutnya
	$urutan++;

	// membentuk kode barang baru
	// perintah sprintf("%03s", $urutan); berguna untuk membuat string menjadi 3 karakter
	// misalnya perintah sprintf("%03s", 15); maka akan menghasilkan '015'
	// angka yang diambil tadi digabungkan dengan kode huruf yang kita inginkan, misalnya BRG 
	$huruf = "DOK";
	$kodeDokter = $huruf . sprintf("%03s", $urutan);
?>


<?php
//mendefinisikan id dokter apakah dari tombol edit atau bukan
  //jika id diambil dari tombol edit maka
  if(isset($_GET['id'])){
    //$id=id dari tombol edit
    $id=$_GET['id'];
  }
  else{
      //jika tidak, maka $id=$kodeDokter;
      $id=$kodeDokter;
      
  }
?>

<?php
  $nama_lengkap="";
  $jenis_kelamin="Laki-laki";
  $umur="";
  $gaji_dokter="";
  $level="dokter";
  $avatar="avatar.jpg";
  $sql=$conn->query("select * from dokter where id='".$id."'");
  while($rs=$sql->fetch_object()){
    $nama_lengkap=$rs->nama_lengkap;
    $jenis_kelamin=$rs->jenis_kelamin;
    $umur=$rs->umur;
    $gaji_dokter=$rs->gaji_dokter;
    $email=$rs->email;
    $uname=$rs->uname;
    $password=$rs->password;
  }

?>


  <section class="forms">
    <div class="container-fluid">
      
          <!-- Page Header-->
          <header>
            <h1 class="h3 display"><a href="javascript:history.back()" class="btn-tambah">Back</a></h1>
            <h1 class="h3 display">Data Dokter</h1>
          </header>
      <div class="row">
        <div class="col-lg-12">
          <div class="card">
            <div class="card-body">

            <?php
//mendefinisikan id dokter apakah dari tombol edit atau bukan
  //jika id diambil dari tombol edit maka
  if(isset($_GET['id'])){
    //$id=id dari tombol edit
    $id=$_GET['id'];
    ?> <form class="form-horizontal" action="data_dokter_update.php" method="post">  <?php
  }
  else{
      //jika tidak, maka $id=$kodeDokter;
      $id=$kodeDokter;
    ?>  <form class="form-horizontal" action="data_dokter_simpan.php" method="post"> <?php
  }
?>
              
                <div class="form-group row">
                   <label class="col-sm-2 form-control-label">ID Dokter</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="id" required="required" value="<?php echo $id ?>" readonly>
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-sm-2 form-control-label">Nama Lengkap</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="nama_lengkap" required="required" value="<?php echo $nama_lengkap ?>">
                  </div>
                </div>
                <div class="line"></div>
                <div class="form-group row">
                  <label class="col-sm-2 form-control-label">Jenis Kelamin</label>
                  <div class="col-sm-10 mb-3">   
                        <select name="jenis_kelamin" class="form-control" type="text">
                          <option selected><?php echo $jenis_kelamin ?></option>
                          <option>Laki-laki</option>
                          <option>Perempuan</option>
                        </select>
                  </div>
                </div>
                <div class="line"></div>
                <div class="form-group row">
                  <label class="col-sm-2 form-control-label">Umur</label>
                  <div class="col-sm-10">
                    <input type="number" class="form-control" name="umur" value="<?php echo $umur ?>">
                  </div>
                </div>
                <div class="line"></div>
                <div class="form-group row">
                  <label class="col-sm-2 form-control-label">Gaji</label>
                  <div class="col-sm-10">
                    <input type="number" class="form-control" name="gaji_dokter" value="<?php echo $gaji_dokter ?>">
                  </div>
                </div>
                <div class="line"></div>
                <div class="form-group row">
                  <label class="col-sm-2 form-control-label">Email</label>
                  <div class="col-sm-10">
                    <input type="email" class="form-control" name="email" value="<?php echo $email ?>">
                  </div>
                </div>
                <div class="line"></div>
                <div class="form-group row">
                  <label class="col-sm-2 form-control-label">Username</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="uname" value="<?php echo $uname ?>">
                  </div>
                </div>
        
                <div class="form-group row">
    <label class="col-sm-2 form-control-label">Avatar</label>
    <div class="col-sm-10">
        <input type="file" class="form-control-file" name="avatar" accept="image/*">
        <!-- Menampilkan preview gambar -->
        <img id="preview" src="uploads/<?php echo $avatar ?>" alt="" style="max-width: 100px; margin-top: 10px;">
    </div>
</div>

               
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
  
  <!--?php include('../_partials/footer.php') ?-->

</div>

<?php include('../_partials/bottom-forms.php') ?>