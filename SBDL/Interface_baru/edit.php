<html>
<head>
	<title>ABSENSI SISWA</title>
</head>
<body>
	<h2>ABSENSI SISWA</h2>
	<p><a href="index.php">Beranda</a> / <a href="tambah.php">Tambah Data</a></a>
		<h3>Edit Data Siswa</h3>
		<?php 
		include('koneksi.php');
		$id = $_GET['id'];
		$show = mysqli_query($koneksi, "SELECT * FROM master_siswa WHERE nis_siswa='$id'");
		if(mysqli_num_rows($show) == 0){
			header("Location:index.php");
		}else{
			$data = mysqli_fetch_assoc($show);
		}
		?>
		<form action="edit-proses.php" method="post">
			<input type="hidden" name="id" value="<?php echo $id; ?>">
			<table cellpadding="8" cellspacing="0">
				<tr>
					<td>Kode Siswa</td>
					<td>:</td>
					<td><input type="text" name="kode_siswa" value="<?php echo $data['kode_siswa']; ?>" required></td>
				</tr>
				<tr>
					<td>NIS Siswa</td>
					<td>:</td>
					<td><input type="text" name="nis_siswa" value="<?php echo $data['nis_siswa']; ?>" required></td>
				</tr>
				<tr>
					<td>Nama Siswa</td>
					<td>:</td>
					<td><input type="text" name="nama_siswa" size="20" value="<?php echo $data['nama_siswa']; ?>" required></td>
				</tr>
				<tr>
					<td>JK</td>
					<td>:</td>
					<td><input type="text" name="jk" value="<?php echo $data['jk']; ?>" required></td>
				</tr>
				<tr>
					<td>Kelas</td>
					<td>:</td>
					<td>
					<select name="kelas" required>
						<option value="">Pilih Kelas</option>
						<option value="Farm" <?php if ($data['kelas'] == "Farm"){ echo 'selected'; } ?> >Farm</option>
						<option value="AK" <?php if ($data['kelas'] == "AK"){ echo 'selected'; } ?>>AK</option>
						<option value="Kep" <?php if ($data['kelas'] == "Kep"){ echo 'selected'; } ?>>Kep</option>
						<option value="Multimedia" <?php if ($data['kelas'] == "Multimedia"){ echo 'selected'; } ?>>Multimedia</option>
						<option value="TKR" <?php if ($data['kelas'] == "TKR"){ echo 'selected'; } ?>>TKR</option>
					</select>
					</td>
				</tr>
				<tr>
					<td>Jurusan</td>
					<td>:</td>
					<td>
					<select name="jurusan" required>
						<option value="">Pilih Kelas</option>
						<option value="Farmasi" <?php if ($data['jurusan'] == "Farmasi"){ echo 'selected'; } ?>>Farmasi</option>
						<option value="Akuntansi" <?php if ($data['jurusan'] == "Akuntansi"){ echo 'selected'; } ?>>Akuntansi</option>
						<option value="Perawat" <?php if ($data['jurusan'] == "Perawat"){ echo 'selected'; } ?>>Perawat</option>
						<option value="Multimedia" <?php if ($data['jurusan'] == "Multimedia"){ echo 'selected'; } ?>>Multimedia</option>
						<option value="TKR" <?php if ($data['jurusan'] == "TKR"){ echo 'selected'; } ?>>TKR</option>
					</select>
				</tr>
				<tr>
					<td>Nama Orang Tua</td>
					<td>:</td>
					<td><input type="text" name="nama_orangtua" size="10" value="<?php echo $data['nama_orangtua']; ?>"required></td>
				</tr>
				<tr>
					<td>NO HP</td>
					<td>:</td>
					<td><input type="text" name="no_hp" size="10" value="<?php echo $data['nomor_hp']; ?>"required></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td><input type="submit" name="simpan" value="Simpan"></td>
				</tr>
			</table>
		</form>
	</body>
	</html>
				

