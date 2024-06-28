<?php
include '../../config.php';

$nama = $_POST['nama'];
$spesialis = $_POST['spesialis'];
$image = $_FILES['image']['name'];
$target = "../../images/" . basename($image);

if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
    $sql = "INSERT INTO dokter (nama, spesialis, image) VALUES ('$nama', '$spesialis', '$image')";
    if ($conn->query($sql) === TRUE) {
        echo "Dokter berhasil ditambahkan";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
} else {
    echo "Gagal mengupload foto";
}

$conn->close();
?>