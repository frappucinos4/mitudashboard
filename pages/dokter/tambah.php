<!DOCTYPE html>
<html>
<head>
    <title>Tambah Dokter</title>
</head>
<body>
    <h1>Tambah Dokter</h1>
    <form action="proses_tambah_dokter.php" method="POST" enctype="multipart/form-data">
        <label for="nama">Nama:</label>
        <input type="text" name="nama" id="nama" required><br>
        
        <label for="spesialis">Spesialis:</label>
        <input type="text" name="spesialis" id="spesialis" required><br>
        
        <label for="image">Foto:</label>
        <input type="file" name="image" id="image" required><br>
        
        <input type="submit" value="Tambah Dokter">
    </form>
</body>
</html>