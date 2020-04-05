<?php
$koneksi = mysqli_connect('localhost','root','','absensi_irna');
if(!$koneksi){
	echo "GAGAL TERHUBUNG KE DATABASE" . mysqli_error();
}
?>