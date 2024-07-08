<?php include "koneksi_data.php"; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Grafik Total Harga Transaksi</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <div class="container">
        <h1>Grafik Total Harga Transaksi</h1>
        <div class="chart-container" style="position: relative; height:40vh; width:80vw">
            <canvas id="lineChartTransaksi"></canvas>
        </div>
    </div>

    <?php
    // Inisialisasi variabel untuk menyimpan data tanggal dan total_harga
    $tanggal = "";
    $total_harga = "";

    // Query SQL untuk mengambil data dari tabel transaksi
    $sql = "SELECT tanggal, total_harga FROM transaksi ORDER BY tanggal";
    $hasil = mysqli_query($conn, $sql);

    while ($data = mysqli_fetch_array($hasil)) {
        // Mengambil nilai tanggal dari database
        $tgl = $data['tanggal'];
        $tanggal .= "'$tgl'" . ", ";
        // Mengambil nilai total_harga dari database
        $harga = $data['total_harga'];
        $total_harga .= "$harga" . ", ";
    }
    ?>

    <script>
        var ctx = document.getElementById('lineChartTransaksi').getContext('2d');
        var chart = new Chart(ctx, {
            // The type of chart we want to create
            type: 'line',

            // The data for our dataset
            data: {
                labels: [<?php echo $tanggal; ?>],
                datasets: [{
                    label: 'Total Harga Transaksi',
                    backgroundColor: 'rgba(75, 192, 192, 0.2)',
                    borderColor: 'rgba(75, 192, 192, 1)',
                    data: [<?php echo $total_harga; ?>]
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

    
</body>
</html>
