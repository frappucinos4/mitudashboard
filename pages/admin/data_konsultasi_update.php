<?php 
include('../../assets/config/config.php');

// menangkap data dari form
$id_konsultasi = $_POST['id_konsultasi'];
$harga_konsultasi = $_POST['harga_konsultasi'];
$jam_konsultasi = $_POST['jam_konsultasi'];
$tanggal_konsultasi = $_POST['tanggal_konsultasi'];
$id_pasien = $_POST['id_pasien'];
$status = $_POST['status'];
$tindakan = $_POST['tindakan'];




$id_up==$_GET['id'];


mysqli_query($db,"update konsultasi set id_konsultasi='$id_konsultasi', harga_konsultasi='$harga_konsultasi', jam_konsultasi ='$jam_konsultasi', tanggal_konsultasi='$tanggal_konsultasi' , id_pasien='$id_pasien', status='$status', tindakan ='$tindakan' where id='$id'") or die(mysqli_error($db));


// UPDATE mhs, dummy SET mhs.tgllhr = dummy.tgllhr WHERE mhs.nim = dummy.nim;



// mengalihkan halaman kembali ke index.php
header("Location: data_konsultasi_read.php");
?>