<?php 
include('../../assets/config/config.php');

// menangkap data dari form
$id = $_POST['id'];
$nama_obat = $_POST['nama_obat'];
$harga = $_POST['harga'];
$stok = $_POST['stok'];
$jenis_produk = $_POST['jenis_produk'];

$id_up==$_GET['id'];


mysqli_query($db,"update obat set nama_obat='$nama_obat', harga='$harga', stok='$stok', jenis_produk='$jenis_produk' where id='$id'") or die(mysqli_error($db));


// UPDATE mhs, dummy SET mhs.tgllhr = dummy.tgllhr WHERE mhs.nim = dummy.nim;



// mengalihkan halaman kembali ke index.php
header("Location: data_obat_read.php");
?>