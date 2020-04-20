
<?php
		include "koneksi.php";
		$qry=mysqli_query($koneksi,"select a_nama2 from table_1 where a_nama1='gani'");
		$data=mysqli_fetch_array($qry);
		$namalengkap=$data['a_nama2'];

		$explode=explode(" ",$namalengkap);
		$nama_awal=$explode[0];
		$nam_tenggah=$explode[1];
		$nama_akhir=$explode[2];
		$shuffled=str_shuffle($nama_awal);
		$random=rand(2,99);
		$nama_inisial=$shuffled.$random;
		echo "Nama lengkap = ".$namalengkap."<br>";
		echo "Nama awal = " .$nama_awal."<br>";
		echo "Nama akhir = " .$nama_akhir."<br>";
		echo "Nama inisial= " .$nama_inisial."<br>";

	?>


	<?php echo "----------------------------JAWABAN---------------------";echo "<br>";

		echo "No 1 = ". ucwords ($namalengkap)."<br>";
		echo "No 2 = ". ucwords($nama_akhir).",".ucwords($nama_awal). " ".ucwords($nam_tenggah)."<br>";

    ?>