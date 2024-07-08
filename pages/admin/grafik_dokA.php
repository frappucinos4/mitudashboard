<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Chart</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
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
              <h4>Grafik Pasien Berdasarkan Jenis Kelamin</h4>
            </div>
            <div class="card-body">
              <div class="chart-container">
                <canvas id="pasienChart"></canvas>
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
    $jenis_kelamin = "";
    $jumlah = null;
    
    // SQL query
    $sql = "SELECT jenis_kelamin, COUNT(*) AS total FROM pasien GROUP BY jenis_kelamin";
    $hasil = mysqli_query($conn, $sql);
    
    while ($data = mysqli_fetch_array($hasil)) {
        // Fetch the gender and count from the database
        $jk_d = $data['jenis_kelamin'];
        $jenis_kelamin .= "'$jk_d'" . ", ";
        $jum = $data['total'];
        $jumlah .= "$jum" . ", ";
    }
    ?>
    
?>

<script>
    var ctx = document.getElementById('pasienChart').getContext('2d');
    var chart = new Chart(ctx, {
        // The type of chart we want to create
        type: 'pie',
        // The data for our dataset
        data: {
            labels: [<?php echo $jenis_kelamin; ?>],
            datasets: [{
                label: 'Jumlah Pasien',
                backgroundColor: ['rgba(56, 86, 255, 0.87)', 'rgb(255, 99, 132)'],
                borderColor: ['rgba(56, 86, 255, 0.87)'],
                data: [<?php echo $jumlah; ?>]
            }]
        },
        // Configuration options go here
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });
</script>

<?php include('../_partials/bottom-charts.php') ?>
</body>
</html>
