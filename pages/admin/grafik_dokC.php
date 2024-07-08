
<?php include('../_partials/top.php') ?>

<!-- Side Navbar -->
<?php include('../_partials/side-navbar-admin.php') ?>

<div class="page">
  <!-- navbar-->
<?php include('../_partials/navbar-header.php') ?>

  <!-- Breadcrumb-->
<?php include('../_partials/top-breadcrumb.php') ?>
        <li class="breadcrumb-item active">Charts       </li>
        

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
              <h4>Jumlah Pengguna Berdasarkan Hak Akses</h4>
            </div>
            <div class="card-body">
              <div class="chart-container">
                <canvas id="barChartPasien"></canvas>
              </div>
            </div>
          </div>
        </div>
        </div>
      </div>
    </div>
  </section>





<!--Grafik pasien-->
<!--Grafik pasien-->
<!--Grafik pasien-->
<!--Grafik pasien-->
<?php
    // Include your PHP script to fetch data

    // Include your database connection file
    include "koneksi_data.php";
    
    // Initialize variables
    $nama_lengkap = "";
    $umur = null;
    
    // SQL query
    $sql = "SELECT nama_lengkap, COUNT(*) AS total FROM dokter GROUP BY nama_lengkap";
    $hasil = mysqli_query($conn, $sql);
    
    while ($data = mysqli_fetch_array($hasil)) {
        // Fetch the gender and count from the database
        $jk_d = $data['nama_kengkap'];
        $nama_lengkap .= "'$jk_d'" . ", ";
        $jum = $data['total'];
        $jumlah_dokter .= "$jum" . ", ";
    }
    ?>

<!--Grafik pasien-->
<!--Grafik pasien-->
<!--Grafik pasien-->
<!--Grafik pasien-->







        <script>
    var ctx = document.getElementById('barChartPasien').getContext('2d');
    var chart = new Chart(ctx, {
        // The type of chart we want to create
        type: 'bar',
        // The data for our dataset
        data: {
            labels: [<?php echo $data_dokter; ?>],
            datasets: [{
                label:'jumlah dokter ',
                backgroundColor: ['yellow', '#e47909', 'rgba(56, 86, 255, 0.87)', 'rgb(255, 99, 132)'],
                borderColor: ['rgba(56, 86, 255, 0.87)'],
                data: [<?php echo $jumlah_dokter; ?>]
            }]
        },

        // Configuration options go here
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero:true
                    }
                }]
            }
        }
    });
</script>


</div>

<?php include('../_partials/bottom-charts.php') ?>