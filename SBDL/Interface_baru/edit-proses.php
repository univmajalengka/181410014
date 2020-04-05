<?php
if(isset($_POST['simpan'])){
include('koneksi.php');
	$kode_siswa		=$_POST['kode_siswa'];
	$nis_siswa		=$_POST['nis_siswa'];
	$nama_siswa		=$_POST['nama_siswa'];
	$jk				=$_POST['jk'];
	$kelas			=$_POST['kelas'];
	$jurusan		=$_POST['jurusan'];
	$nama_orangtua	=$_POST['nama_orangtua']; 
	$no_hp			=$_POST['no_hp'];
	
	mysqli_query($koneksi,"UPDATE master_siswa set kode_siswa='$kode_siswa', nis_siswa='$nis_siswa', nama_siswa='$nama_siswa', jk='$jk', kelas='$kelas', jurusan='$jurusan', nama_orangtua='$nama_orangtua', nomor_hp='$no_hp' WHERE nis_siswa='$nis_siswa'");
		echo 'Data berhasil disimpan!';
		echo '<a href="index.php">Kembali</a>';
	}else{
	echo '<script>window.history.back()</script>';
}
?>
