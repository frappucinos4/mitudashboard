<?php
include "koneksi_data.php"; // Ensure this includes your database connection details

// Start session
session_start();

// Check if user is logged in
if (!isset($_SESSION['level'])) {
    header('Location: ../login');
    exit();
}

// Define the log file path
$log_file = 'konsultasi_log.txt';

// Function to write to the log file
function write_log($message) {
    global $log_file;
    $timestamp = date("Y-m-d H:i:s");
    $log_message = "[" . $timestamp . "] " . $message . "\n";
    file_put_contents($log_file, $log_message, FILE_APPEND);
}

// Capture data from the form
$harga_konsultasi = $_POST['harga_konsultasi'];
$jam_konsultasi = $_POST['jam_konsultasi'];
$tanggal_konsultasi = $_POST['tanggal_konsultasi'];
$id_pasien = $_POST['id_pasien'];
$status = $_POST['status'];
$tindakan = $_POST['tindakan'];

// Check if the connection was successful (assuming $conn is defined in koneksi_data.php)
if (!$conn) {
    $error_message = "Connection failed: " . mysqli_connect_error();
    write_log($error_message);
    die($error_message);
}

// Prepare the SQL statement to prevent SQL injection
$stmt = $conn->prepare("INSERT INTO konsultasi (harga_konsultasi, jam_konsultasi, tanggal_konsultasi, id_pasien, status, tindakan) VALUES (?, ?, ?, ?, ?, ?)");
if (!$stmt) {
    $error_message = "Prepare failed: " . $conn->error;
    write_log($error_message);
    die($error_message);
}

// Bind parameters to the prepared statement
$stmt->bind_param("isssss", $harga_konsultasi, $jam_konsultasi, $tanggal_konsultasi, $id_pasien, $status, $tindakan);

// Execute the statement and check for errors
if ($stmt->execute()) {
    write_log("Record inserted successfully");
    // Redirect to data_konsultasi_read.php if insertion is successful
    header("Location: data_konsultasi_read.php");
    exit();
} else {
    $error_message = "Execute failed: " . $stmt->error;
    write_log($error_message);
    echo "Error: " . $stmt->error;
}

// Close the statement and connection
$stmt->close();
$conn->close();
?>
