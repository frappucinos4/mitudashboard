<?php
include "koneksi_data.php";

// menangkap data dari form
$id = $_POST['id'];
$nama_lengkap = $_POST['nama_lengkap'];
$jenis_kelamin = $_POST['jenis_kelamin'];
$umur = $_POST['umur'];
$gaji_dokter = $_POST['gaji_dokter'];
$email = $_POST['email'];
$uname = $_POST['uname'];
$password = $_POST['password'];
$level = $_POST['level'];
$avatar = $_POST['avatar'];
$klinik = $_POST['klinik'];

// menginput data ke table dokter
$query_dokter = "INSERT INTO dokter (id, nama_lengkap, jenis_kelamin, umur, gaji_dokter, email, uname, password, level, avatar, klinik) 
                VALUES ('$id', '$nama_lengkap', '$jenis_kelamin', '$umur', '$gaji_dokter', '$email', '$uname', '$password', '$level', '$avatar', '$klinik')";

if (mysqli_query($conn, $query_dokter)) {
    // Jika insert ke tabel dokter berhasil
    // Redirect ke halaman data_dokter_read.php
    header("Location: data_dokter_read.php");
    exit(); // Pastikan untuk keluar dari script setelah redirect
} else {
    // Jika terjadi kesalahan saat insert
    echo "Error: " . $query_dokter . "<br>" . mysqli_error($conn);
    // Atau redirect kembali ke halaman sebelumnya dengan pesan error
    header("Location: halaman_sebelumnya.php?error=query_error");
    exit();
}
?>
