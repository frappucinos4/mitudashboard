
    <?php include('../_partials/top.php') ?>

    <!-- Side Navbar -->

    <?php include('../_partials/side-navbar-admin.php') ?>

    <div class="page">
      <!-- navbar-->
    <?php include('../_partials/navbar-header.php') ?>

      <!-- Breadcrumb-->
    <?php include('../_partials/top-breadcrumb.php') ?>
            <li class="breadcrumb-item active">Data Konsultasi</li>
    <?php include('../_partials/bottom-breadcrumb.php') ?>



      <section>
        <div class="container-fluid">
          <!-- Page Header-->
          <header>
            <h1 class="h3 display"><a href="data_dokter_create.php" class="btn-tambah">Tambah</a></h1>
            <h1 class="h3 display text-center">DATA KONSULTASI</h1>
          </header>
    <?php include('../_partials/data_index.php') ?>
    <table class="table table-striped table-condensed table-hover" id="tdokter">
  <thead>
    <tr><strong>
      <th>NO.</th>
      <th>KELUHAN</th>
      <th>Nama Lengkap</th>
      <th>Jenis Kelamin</th>
      <th>Umur</th>
      <th>Action</th></strong>
    </tr>
  </thead>
  <tbody>
    <?php $nomor = 1; ?> <!-- No. Urut -->
    <?php foreach ($data_konsultasi as $konsultasi) : ?> <!-- No. Urut -->
    <tr>
      <td><?php echo $nomor++ ?>.</td> <!-- No. Urut -->
      <td><?php echo $konsultasi['id'] ?></td>
      <td><?php echo $konsultasi['nama_lengkap'] ?></td>
      <td><?php echo $konsultasi['jenis_kelamin'] ?></td>
      <td><?php echo $konsultasi['umur']," Tahun" ?></td>
      <td><?php echo "Rp. ",number_format($konsultasi['data_konsultasi']),",-" ?></td>
      
      <td>
          <p class="p">
            <a href="data_dokter_create.php?id=<?php echo $konsultasi['id'] ?>" class="btn-edit">Edit</a>
            <a href="data_dokter_delete.php?id=<?php echo $konsultasi['id'] ?>" class="btn-edit" onclick="return confirm('Yakin hapus data ini?')">Hapus</a>
          </p>
      </td>
    </tr>
    <?php endforeach ?> <!-- No. Urut -->
  </tbody>
        </table>

        </div>
      </section>
      



      <script>
        $(document).ready(function(){
          $('#tdokter').DataTable();
        });
      </script>

    </div>
    
    
    <?php include('../_partials/bottom-tables.php') ?>