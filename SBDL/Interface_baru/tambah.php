<html>
<head>
	<title>ABSENSI SISWA</title>
</head>
<body>
	<p><a href="index.php">Beranda</a> / <a href="tambah.php">Tambah Data</a></a>
		<h3>Tambah Data Siswa</h3>
		<form action="tambah-proses.php" method="post">
			<table cellpadding="8" cellspacing="0">
				<tr>
					<td>Kode Siswa</td>
					<td>:</td>
					<td><input type="text" name="kode_siswa" required></td>
				</tr>
				<tr>
					<td>NIS Siswa</td>
					<td>:</td>
					<td><input type="text" name="nis_siswa" required></td>
				</tr>
				<tr>
					<td>Nama Siswa</td>
					<td>:</td>
					<td><input type="text" name="nama_siswa" size="20" required></td>
				</tr>
				<tr>
					<td>JK</td>
					<td>:</td>
					<td><input type="text" name="jk" required></td>
				</tr>
				<tr>
					<td>Kelas</td>
					<td>:</td>
					<td>
					<select name="kelas" required>
						<option value="">Pilih Kelas</option>
						<option value="Farm">Farm</option>
						<option value="AK">AK</option>
						<option value="Kep">Kep</option>
						<option value="Multimedia">Multimedia</option>
						<option value="TKR">TKR</option>
					</select>
					</td>
				</tr>
				<tr>
					<td>Jurusan</td>
					<td>:</td>
					<td>
					<select name="jurusan" required>
						<option value="">Pilih Kelas</option>
						<option value="Farmasi">Farmasi</option>
						<option value="Akuntansi">Akuntansi</option>
						<option value="Perawat">Perawat</option>
						<option value="Multimedia">Multimedia</option>
						<option value="TKR">TKR</option>
					</select>
				</tr>
				<tr>
					<td>Nama Orang Tua</td>
					<td>:</td>
					<td><input type="text" name="nama_orangtua" size="10" required></td>
				</tr>
				<tr>
					<td>NO HP</td>
					<td>:</td>
					<td><input type="text" name="no_hp" size="10" required></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td><input type="submit" name="tambah" value="Tambah"></td>
				</tr>
			</table>
		</form>
	</body>
	</html>
