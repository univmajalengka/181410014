<?php
if(isset($_GET['id'])){
	include('koneksi.php');
	$id = $_GET['id'];
	$delete = mysqli_query($koneksi, "DELETE FROM master_siswa WHERE kode_siswa='$id'");
	header("Location:index.php");
}
	
?>