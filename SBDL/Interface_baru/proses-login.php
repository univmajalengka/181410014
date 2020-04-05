<?php
session_start();
	require_once('koneksi.php');
	$username = $_POST['username'];
	$pass = md5($_POST['password']);
	$cekmaster_guru = mysqli_query($koneksi, "SELECT * FROM master_guru WHERE nama_guru='$username'");
	$jumlah = mysqli_num_rows($cekmaster_guru);
	$hasil = mysqli_fetch_array($cekmaster_guru);
	if($jumlah == 0){
		echo "Username Belum Terdaftar!";
		echo '<a href="login.php">Back</a>';
	}else{
		if($pass <> $hasil['password']){
			echo "Password Salah!";
			echo '<a href="login.php">Back</a>';
	}else{
		$_SESSION['username'] = $username;
		header('location:index.php');
	}
}
?>