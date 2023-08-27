<?php
include 'koneksi.php';

$email = $_POST['email'];
$username = $_POST['username'];
$name = $_POST['nama'];
$id_user = $_POST['id_user'];

$query = "UPDATE  user SET email='$email', username='$username', nama='$name' WHERE id_user='$id_user'";

$sql = mysqli_query($koneksi, $query);
// Cek Sukses
if ($sql) {
    header("location:HomeAdmin.php?alert=berhasil");
} else {
    header("location:HomeAdmin.php?alert=gagal");
}
