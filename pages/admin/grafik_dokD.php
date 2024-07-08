<?php include('../_partials/top.php') ?>

<!-- Side Navbar -->
<?php include('../_partials/side-navbar-admin.php') ?>

<div class="page">
  <!-- navbar-->
<?php include('../_partials/navbar-header.php') ?>

  <!-- Breadcrumb-->
<?php include('../_partials/top-breadcrumb.php') ?>
        <li class="breadcrumb-item active">Charts</li>
<?php include('../_partials/bottom-breadcrumb.php') ?>


  <section class="charts">
    <div class="container-fluid">
      <!-- Page Header-->
      <header> 
        <h1 class="h3 display">Daftar Grafik</h1>
      </header>
      <div class="row">
        <div class="col-lg-10">
          <div class="card bar-chart-example">
            <div class="card-header d-flex align-items-center">
              <h4>Jumlah Produk Terjual Berdasarkan Jenis</h4>
            </div>
            <div class="card-body">
              <div class="chart-container">
                <canvas id="doughnutChartProduk"></canvas>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

<?php
    // Include your PHP script to fetch data
    // Include your database connection file
    include "koneksi_data.php";
    
    // Initialize variables
    $nama_lengkap = "";
    $jumlah = "";

    // SQL query
    $sql = "SELECT jenis_produk, COUNT(*) AS total FROM produk GROUP BY jenis_produk";
    $hasil = mysqli_query($conn, $sql);
    
    while ($data = mysqli_fetch_array($hasil)) {
        // Fetch the product type and count from the database
        $nama_obat = $data['nama_obat'];
        $harga .= "'$harga'" . ", ";
        $atok = $data['stok'];
        $jenis_produk .= "$jenis_produk" . ", ";
    }
?>

<script>
    var ctx = document.getElementById('doughnutChartProduk').getContext('2d');
    var chart = new Chart(ctx, {
        // The type of chart we want to create
        type: 'doughnut',
        // The data for our dataset
        data: {
            labels: [<?php echo $nama_lengkap; ?>],
            datasets: [{
                label: 'Jumlah Produk Terjual',
                backgroundColor: ['yellow', '#e47909', 'rgba(56, 86, 255, 0.87)', 'rgb(255, 99, 132)'],
                borderColor: ['rgba(56, 86, 255, 0.87)'],
                data: [<?php echo $jumlah; ?>]
            }]
        },
        // Configuration options go here
        options: {
            responsive: true,
            legend: {
                position: 'top',
            },
            animation: {
                animateScale: true,
                animateRotate: true
            }
        }
    });
</script>

</div>

<?php include('../_partials/bottom-charts.php') ?>
