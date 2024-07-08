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
                <?php
                // Include database connection or connection script
                include "koneksi_data.php";

                // Function to generate chart
                function generateChart($chartId, $chartType, $query, $labelField, $dataField, $label, $backgroundColor)
                {
                    global $conn;

                    $labels = "";
                    $jumlah = "";

                    $sql = $query;
                    $hasil = mysqli_query($conn, $sql);

                    while ($data = mysqli_fetch_array($hasil)) {
                        $labels .= "'" . $data[$labelField] . "', ";
                        $jumlah .= $data[$dataField] . ", ";
                    }

                    echo "<div class='col-lg-6'>
                            <div class='card bar-chart-example'>
                                <div class='card-header d-flex align-items-center'>
                                    <h4>$label</h4>
                                </div>
                                <div class='card-body'>
                                    <div class='chart-container'>
                                        <canvas id='$chartId'></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>";

                    echo "<script>
                            var ctx = document.getElementById('$chartId').getContext('2d');
                            var chart = new Chart(ctx, {
                                type: '$chartType',
                                data: {
                                    labels: [$labels],
                                    datasets: [{
                                        label: '$label',
                                        backgroundColor: [$backgroundColor],
                                        borderColor: [$backgroundColor],
                                        data: [$jumlah]
                                    }]
                                },
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
                        </script>";
                }

                // Call function for each chart
                generateChart('pasienChart', 'pie', 'select jenis_kelamin, COUNT(*) as total from pasien GROUP by jenis_kelamin', 'jenis_kelamin', 'total', 'Grafik Pasien Berdasarkan Jenis Kelamin', "'rgba(56, 86, 255, 0.87)', 'rgb(255, 99, 132)'");
                generateChart('barChartPasien', 'bar', 'select umur, COUNT(*) as total from pasien GROUP by umur', 'umur', 'total', 'Jumlah Pengguna Berdasarkan Umur', "'yellow', '#e47909', 'rgba(56, 86, 255, 0.87)', 'rgb(255, 99, 132)'");
                generateChart('lineChartPengguna', 'line', 'select level, COUNT(*) as total from pengguna GROUP by level', 'level', 'total', 'Jumlah Pengguna Berdasarkan Hak Akses', "'rgba(40, 86, 200, 0.47)', 'rgb(25, 99, 12)', 'rgba(56, 86, 255, 0.87)', 'rgb(255, 99, 132)'");
                generateChart('doughnutChartObat', 'doughnut', 'select jenis_obat, COUNT(*) as total from obat GROUP by jenis_obat', 'jenis_obat', 'total', 'Jumlah Produk Berdasarkan Jenis Obat', "'yellow', '#e47909', 'rgba(56, 86, 255, 0.87)', 'rgb(255, 99, 132)'");
                ?>
            </div>
        </div>
    </section>
</div>

<?php include('../_partials/bottom-charts.php') ?>
