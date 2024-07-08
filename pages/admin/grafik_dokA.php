<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Dashboard Grafik</title>
  <!-- Sertakan pustaka Chart.js -->
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
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
        <h1 class="h3 display">Grafik Klinik A</h1>
      </header>
      <div class="row">
        <div class="col-lg-6">
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
        <div class="col-lg-6">
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
        <div class="col-lg-6">
          <div class="card bar-chart-example">
            <div class="card-header d-flex align-items-center">
              <h4>Jumlah Produk Terjual Berdasarkan Jenis</h4>
            </div>
            <div class="card-body">
              <div class="chart-container">
                <canvas id="lineChart"></canvas>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="card bar-chart-example">
            <div class="card-header d-flex align-items-center">
              <h4>Grafik Pemasukan</h4>
            </div>
            <div class="card-body">
              <div class="chart-container">
                <canvas id="lineChartPemasukan"></canvas>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="card bar-chart-example">
            <div class="card-header d-flex align-items-center">
              <h4>Grafik Pengeluaran</h4>
            </div>
            <div class="card-body">
              <div class="chart-container">
                <canvas id="lineChartPengeluaran"></canvas>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="card bar-chart-example">
            <div class="card-header d-flex align-items-center">
              <h4>Bar Chart Penjualan Produk</h4>
            </div>
            <div class="card-body">
              <div class="chart-container">
                <canvas id="barChartPenjualanProduk"></canvas>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="card bar-chart-example">
            <div class="card-header d-flex align-items-center">
              <h4>Pie Chart Jumlah Dokter</h4>
            </div>
            <div class="card-body">
              <div class="chart-container">
                <canvas id="pieChartJumlahDokter"></canvas>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="card bar-chart-example">
            <div class="card-header d-flex align-items-center">
              <h4>Bar Chart Jumlah Pasien</h4>
            </div>
            <div class="card-body">
              <div class="chart-container">
                <canvas id="barChartJumlahPasien"></canvas>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

<?php include "koneksi_data.php"; ?>

<!-- Fetch data for Grafik Pasien Berdasarkan Jenis Kelamin -->
<?php
$jenis_kelamin = "";
$jumlah = "";
$sql = "SELECT jenis_kelamin, COUNT(*) as 'total' FROM pasien GROUP BY jenis_kelamin";
$hasil = mysqli_query($conn, $sql);
while ($data = mysqli_fetch_array($hasil)) {
  $jk_d = $data['jenis_kelamin'];
  $jenis_kelamin .= "'$jk_d', ";
  $jum = $data['total'];
  $jumlah .= "$jum, ";
}
?>

<!-- Fetch data for Jumlah Produk Terjual Berdasarkan Jenis -->
<?php
$jenis_obat = "";
$jumlah_produk = "";
$sql = "SELECT jenis_obat, COUNT(*) as total FROM obat GROUP BY jenis_obat";
$hasil = mysqli_query($conn, $sql);
while ($data = mysqli_fetch_array($hasil)) {
  $jenis_obat_d = $data['jenis_obat'];
  $jenis_obat .= "'$jenis_obat_d', ";
  $jumlah_produk .= $data['total'] . ", "; // Perbaikan di sini
}
?>


<!-- Fetch data for Grafik Pemasukan -->
<?php
$pemasukan_tanggal = "";
$pemasukan_jumlah = "";
$sql = "SELECT tanggal, jumlah FROM pemasukan ORDER BY tanggal ASC";
$hasil = mysqli_query($conn, $sql);
while ($data = mysqli_fetch_array($hasil)) {
  $tanggal_pemasukan = $data['tanggal'];
  $pemasukan_tanggal .= "'$tanggal_pemasukan', ";
  $jumlah_pemasukan = $data['jumlah'];
  $pemasukan_jumlah .= "$jumlah_pemasukan, ";
}
?>

<!-- Fetch data for Grafik Pengeluaran -->
<?php
$pengeluaran_tanggal = "";
$pengeluaran_jumlah = "";
$sql = "SELECT tanggal, jumlah FROM pengeluaran ORDER BY tanggal ASC";
$hasil = mysqli_query($conn, $sql);
while ($data = mysqli_fetch_array($hasil)) {
  $tanggal_pengeluaran = $data['tanggal'];
  $pengeluaran_tanggal .= "'$tanggal_pengeluaran', ";
  $jumlah_pengeluaran = $data['jumlah'];
  $pengeluaran_jumlah .= "$jumlah_pengeluaran, ";
}
?>

<!-- Fetch data for Pie Chart Jumlah Dokter -->
<?php
$dokter_spesialis = "";
$jumlah_dokter = "";
$sql = "SELECT spesialisasi, COUNT(*) as 'total' FROM dokter GROUP BY spesialisasi";
$hasil = mysqli_query($conn, $sql);
while ($data = mysqli_fetch_array($hasil)) {
  $spesialisasi_dokter = $data['spesialisasi'];
  $dokter_spesialis .= "'$spesialisasi_dokter', ";
  $jumlah_dokter .= $data['total'] . ", ";

}
?>

<!-- Fetch data for Bar Chart Jumlah Pasien -->
<?php
$bulan = "";
$jumlah_pasien = "";
$sql = "SELECT bulan, COUNT(*) as 'total' FROM pasien GROUP BY bulan";
$hasil = mysqli_query($conn, $sql);
while ($data = mysqli_fetch_array($hasil)) {
  $bulan_pasien = $data['bulan'];
  $bulan .= "'$bulan_pasien', ";
  $jumlah_dokter .= $data['total'] . ", ";
}
?>

<!-- Script untuk Grafik -->
<script>
document.addEventListener('DOMContentLoaded', function() {
  const ctxPasien = document.getElementById('pasienChart').getContext('2d');
  const ctxLineProduk = document.getElementById('lineChart').getContext('2d');
  const ctxLinePemasukan = document.getElementById('lineChartPemasukan').getContext('2d');
  const ctxLinePengeluaran = document.getElementById('lineChartPengeluaran').getContext('2d');
  const ctxBarPenjualanProduk = document.getElementById('barChartPenjualanProduk').getContext('2d');
  const ctxPieJumlahDokter = document.getElementById('pieChartJumlahDokter').getContext('2d');
  const ctxBarJumlahPasien = document.getElementById('barChartJumlahPasien').getContext('2d');

  // Grafik Pasien Berdasarkan Jenis Kelamin
  const pasienChart = new Chart(ctxPasien, {
    type: 'bar',
    data: {
      labels: [<?php echo $jenis_kelamin; ?>],
      datasets: [{
        label: 'Jumlah Pasien',
        data: [<?php echo $jumlah; ?>],
        backgroundColor: 'rgba(75, 192, 192, 0.2)',
        borderColor: 'rgba(75, 192, 192, 1)',
        borderWidth: 1
      }]
    },
    options: {
      responsive: true,
      scales: {
        y: {
          beginAtZero: true
        }
      }
    }
  });

  // Jumlah Produk Terjual Berdasarkan Jenis
  const lineChartProduk = new Chart(ctxLineProduk, {
    type: 'line',
    data: {
      labels: [<?php echo $jenis_obat; ?>],
      datasets: [{
        label: 'Jumlah Produk Terjual',
        data: [<?php echo $jumlah_produk; ?>],
        borderColor: 'rgba(54, 162, 235, 1)',
        fill: false,
        tension: 0.1
      }]
    },
    options: {
      responsive: true,
      scales: {
        y: {
          beginAtZero: true
        }
      }
    }
  });

  // Pemasukan Chart
  const lineChartPemasukan = new Chart(ctxLinePemasukan, {
    type: 'line',
    data: {
      labels: [<?php echo $total_harga; ?>],
      datasets: [{
        label: 'Pemasukan',
        data: [<?php echo $total_harga; ?>],
        borderColor: 'rgba(75, 192, 192, 1)',
        fill: false,
        tension: 0.1
      }]
    },
    options: {
      responsive: true,
      scales: {
        y: {
          beginAtZero: true
        }
      }
    }
  });

  // Pengeluaran Chart
  const lineChartPengeluaran = new Chart(ctxLinePengeluaran, {
    type: 'line',
    data: {
      labels: [<?php echo $pengeluaran_tanggal; ?>],
      datasets: [{
        label: 'Pengeluaran',
        data: [<?php echo $pengeluaran_jumlah; ?>],
        borderColor: 'rgba(255, 99, 132, 1)',
        fill: false,
        tension: 0.1
      }]
    },
    options: {
      responsive: true,
      scales: {
        y: {
          beginAtZero: true
        }
      }
    }
  });

  // Penjualan Produk Chart
  const barChartPenjualanProduk = new Chart(ctxBarPenjualanProduk, {
    type: 'bar',
    data: {
      labels: [<?php echo $jenis_obat; ?>],
      datasets: [{
        label: 'Jumlah Produk Terjual',
        data: [<?php echo $jumlah_produk; ?>],
        backgroundColor: 'rgba(255, 206, 86, 0.2)',
        borderColor: 'rgba(255, 206, 86, 1)',
        borderWidth: 1
      }]
    },
    options: {
      responsive: true,
      scales: {
        y: {
          beginAtZero: true
        }
      }
    }
  });

  // Jumlah Dokter Chart
  const pieChartJumlahDokter = new Chart(ctxPieJumlahDokter, {
    type: 'pie',
    data: {
      labels: [<?php echo $dokter_spesialis; ?>],
      datasets: [{
        label: 'Jumlah Dokter',
        data: [<?php echo $jumlah_dokter; ?>],
        backgroundColor: [
          'rgba(255, 99, 132, 0.2)',
          'rgba(54, 162, 235, 0.2)',
          'rgba(255, 206, 86, 0.2)',
          'rgba(75, 192, 192, 0.2)',
          'rgba(153, 102, 255, 0.2)',
          'rgba(255, 159, 64, 0.2)'
        ],
        borderColor: [
          'rgba(255, 99, 132, 1)',
          'rgba(54, 162, 235, 1)',
          'rgba(255, 206, 86, 1)',
          'rgba(75, 192, 192, 1)',
          'rgba(153, 102, 255, 1)',
          'rgba(255, 159, 64, 1)'
        ],
        borderWidth: 1
      }]
    },
    options: {
      responsive: true
    }
  });

  // Jumlah Pasien Chart
  const barChartJumlahPasien = new Chart(ctxBarJumlahPasien, {
    type: 'bar',
    data: {
      labels: [<?php echo $bulan; ?>],
      datasets: [{
        label: 'Jumlah Pasien',
        data: [<?php echo $jumlah_pasien; ?>],
        backgroundColor: 'rgba(255, 159, 64, 0.2)',
        borderColor: 'rgba(255, 159, 64, 1)',
        borderWidth: 1
      }]
    },
    options: {
      responsive: true,
      scales: {
        y: {
          beginAtZero: true
        }
      }
    }
  });
});
</script>

</body>
</html>
