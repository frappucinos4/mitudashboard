<!DOCTYPE html>
<html>
<head>
    <title>Data Konsultasi</title>
</head>
<body>
    <h1>Data Konsultasi</h1>
    <?php
    include '../../config.php';
    
    $sql = "SELECT * FROM konsultasi";
    $result = $conn->query($sql);
    
    if ($result->num_rows > 0) {
        echo "<table border='1'><tr><th>ID</th><th>Nama Pasien</th><th>Nama Dokter</th><th>Tanggal</th><th>Keluhan</th></tr>";
        while($row = $result->fetch_assoc()) {
            echo "<tr><td>" . $row["id"] . "</td><td>" . $row["nama_pasien"] . "</td><td>" . $row["nama_dokter"] . "</td><td>" . $row["tanggal"] . "</td><td>" . $row["keluhan"] . "</td></tr>";
        }
        echo "</table>";
    } else {
        echo "0 results";
    }
    
    $conn->close();
    ?>
</body>
</html>