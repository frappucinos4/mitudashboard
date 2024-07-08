<?php
include "./koneksi_data.php";

$error_message = '';

// Handle form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $id = $_POST['id'];
    $nama_lengkap = $_POST['nama_lengkap'];
    $jenis_kelamin = $_POST['jenis_kelamin'];
    $umur = $_POST['umur'];
    $gaji_dokter = $_POST['gaji_dokter'];
    $email = $_POST['email'];
    $uname = $_POST['uname'];
    $password = $_POST['password'];
    $level = $_POST['dokter']; // Assuming level is always 'dokter'
    $avatar = $_POST['avatar'];
    $klinik = $_POST['klinik'];

    if ($uploadOk == 1) {
        // Use prepared statements to prevent SQL injection
        $stmt = $conn->prepare("INSERT INTO dokter (id, nama_lengkap, jenis_kelamin, umur, gaji_dokter, email, uname, password, level, avatar, klinik)
                                VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

        if ($stmt) {
            $hashed_password = password_hash($password, PASSWORD_DEFAULT); // Hash the password
            $stmt->bind_param("sssissssss", $id, $nama_lengkap, $jenis_kelamin, $umur, $gaji_dokter, $email, $uname, $hashed_password, $level, $avatar, $klinik);
            
            if ($stmt->execute()) {
                echo 'success';
            } else {
                $error_message .= "Error executing query: " . $stmt->error . "<br>";
            }
        } else {
            $error_message .= "Error preparing statement: " . $conn->error . "<br>";
        }

        $stmt->close();
    }
}

// Close database connection
$conn->close();

// Output errors if there are any
if (!empty($error_message)) {
    echo $error_message;
}
?>
