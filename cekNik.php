<?php

$nik = $_POST['nik'];

// Cek nik ada 16 angka
if (strlen($nik) != 16) {
    header("Location:UserNikInvalid");
}

include 'koneksi.php';
// Cek apaakah nik sudah terdaftar 
$cek = mysqli_query($koneksi, "SELECT * FROM petani WHERE nik='$nik'") or die(mysqli_error($koneksi));

if (mysqli_num_rows($cek) > 0) {
    header("Location:UserNikTerdaftar.php");
}


// Simpan nik ke session
session_start(); // Start session nya
$_SESSION['nik'] = $nik;

header("Location:EndUser1.php");
