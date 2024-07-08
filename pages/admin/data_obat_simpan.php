<?php 
include "koneksi_data.php";

// menangkap data dari form
$id = $_POST['id'];
$nama_obat = $_POST['nama_obat'];
$harga = $_POST['harga'];
$stok = $_POST['stok'];
$jenis_produk = $_POST['jenis_produk'];

// menginput data ke table obat dan pengguna

mysqli_query($conn,"insert into obat values ('$id', '$nama_obat', '$harga', '$stok', '$jenis_produk')") or die(mysqli_error($conn));

// mengalihkan halaman kembali ke index.php
header("Location: data_obat_read.php");
?>