
<?php include('../_partials/top.php') ?>

<!-- Side Navbar -->

<?php include('../_partials/side-navbar-admin.php') ?>

<div class="page">
  <!-- navbar-->
<?php include('../_partials/navbar-header.php') ?>

  <!-- Breadcrumb-->
<?php include('../_partials/top-breadcrumb.php') ?>
        <li class="breadcrumb-item active">Data Transaksi</li>
<?php include('../_partials/bottom-breadcrumb.php') ?>



  <section>
    <div class="container-fluid">
      <!-- Page Header-->
      <header>
        <h1 class="h3 display"><a href="data_konsultasi_create.php" class="btn-tambah">Tambah</a></h1>
        <h1 class="h3 display text-center">DATA KONSULTASI</h1>
      </header>
<?php include('../_partials/data_index.php') ?>
<table class="table table-striped table-condensed table-hover" id="ttransaksi">
<thead>
<tr><strong>
    <th>id_konsultasi</th>
    <th>jam_konsultasi</th>
    <th>tanggal_konsultasi</th>
    <th>id_pasien</th>
    <th>status</th>
    <th>tindakan</th>
  <th>Edit</th></strong>
</tr>
</thead>
<tbody>
<?php $nomor = 1; ?> <!-- No. Urut -->
<?php foreach ($data_konsultasi as $konsultasi) : ?> <!-- No. Urut -->
<tr>
  <td><?php echo $nomor++ ?>.</td> <!-- No. Urut -->
  <td><?php echo $konsultasi['id_konsultasi'] ?></td>
  <td><?php echo $konsultasi['jam_konsultasi'] ?></td>
  <td><?php echo $konsultasi['tanggal_konsultasi'] ?></td>
  <td><?php echo $konsultasi['id_pasien'] ?></td>
  <td><?php echo $konsultasi['status'] ?></td>
<td><?php echo $konsultasi['tindakan'] ?></td>

  
  <td>
      <p class="p">
        <a href="data_konsultasi_create.php?id=<?php echo $konsultasi['id'] ?>" class="btn-edit">Edit</a>
        <a href="data_konsultasi_delete.php?id=<?php echo $konsultasi['id'] ?>" class="btn-edit" onclick="return confirm('Yakin hapus data ini?')">Hapus</a>
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
      $('#ttransaksi').DataTable();
    });
  </script>

</div>


<?php include('../_partials/bottom-tables.php') ?>