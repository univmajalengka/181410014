<?php
if(isset($_POST['tambah'])){
	include('koneksi.php');
	$kode_siswa		=$_POST['kode_siswa'];
	$nis_siswa		=$_POST['nis_siswa'];
	$nama_siswa		=$_POST['nama_siswa'];
	$jk				=$_POST['jk'];
	$kelas			=$_POST['kelas'];
	$jurusan		=$_POST['jurusan'];
	$nama_orangtua	=$_POST['nama_orangtua'];
	$no_hp			=$_POST['no_hp'];
	$input = mysqli_query($koneksi, "INSERT INTO master_siswa VALUES('$kode_siswa', '$nis_siswa', '$nama_siswa', '$jk','$kelas', '$jurusan', '$nama_orangtua', '$no_hp')");
		echo 'Data berhasil ditambahkan!';
		echo '<a href="index.php">Kembali</a>';
	}else{
	echo '<script>window.history.back()</script>';
}
?>