<?php
session_start();
require_once('koneksi.php');

if(!$_SESSION['username']){
	header("Location:login.php");
}
	
	?>



<html>
<head>
	<title>ABSENSI SISWA</title>
</head>
<body>
	<h2>ABSENSI SISWA</h2>
	<p><a href="index.php">Beranda</a> / <a href="tambah.php">Tambah Data</a></a>
		<h3>Data Siswa</h3>
		<table cellpadding="8" cellspacing="0" border="1">
			<tr bgcolor="#CCCCCC">
			<th>Kode Siswa</th>
			<th>NIS Siswa</th>
			<th>Nama Siswa</th>
			<th>JK</th>
			<th>Kelas</th>
			<th>Jurusan</th>
			<th>Nama Orang Tua</th>
			<th>NO HP</th>
			<th>Pilihan</th>
		</tr>

		<?php
		include('koneksi.php');
		$query = mysqli_query($koneksi, "SELECT * FROM master_siswa ORDER BY kode_siswa DESC") or die(mysqli_error());
		if(mysqli_num_rows($query) == 0){
			echo '<tr><td colspan="6">Tidak ada data!</td></tr>';

		}else{
			while($data = mysqli_fetch_assoc($query)){
				echo '<tr>';
				echo '<td>'.$data["kode_siswa"].'</td>';
				echo '<td>'.$data["nis_siswa"].'</td>';
				echo '<td>'.$data["nama_siswa"].'</td>';
				echo '<td>'.$data["jk"].'</td>';
				echo '<td>'.$data["kelas"].'</td>';
				echo '<td>'.$data["jurusan"].'</td>';
				echo '<td>'.$data["nama_orangtua"].'</td>';
				echo '<td>'.$data["nomor_hp"].'</td>';
				echo '<td><a href="edit.php?id='.$data['nis_siswa'].'">Edit</a> / <a href="hapus.php?id='.$data['kode_siswa'].'" 
				onclick="return confirm(\'Yakin?\')">Hapus</a></td>';
				echo '</tr>';
			}
		}
		?>
		</table>
		<a href="logout.php">Logout</a>
		</body>
		</html>