<?php
		include "koneksi.php";
		$qry=mysqli_query($koneksi,"select b_tgl1, c_rupiah, d_array_hari from table_1");
		$data=mysqli_fetch_array($qry);
		$tanggal_default=$data['b_tgl1'];
		$tanggal_replace=str_replace("-","/",$data['b_tgl1']);
		$uang_default=$data['c_rupiah'];
		$uang_rupiah=number_format($uang_default,0,',','.');
		$kumpulan_hari=$data['d_array_hari'];
		$kumpulan_hari_explode=explode(" ",$kumpulan_hari);
		echo "Tanggal Default = ".$tanggal_default."<br>";
		echo "Tanggal Replace = ".$tanggal_replace."<br>";
		echo "Uang Default = " .$uang_default."<br>";
		echo "Uang Rupiah = Rp." .$uang_rupiah."<br><br>";
		echo "<hr><hr4>Hari2</4><table border='1' cellpading='3'>";
		foreach($kumpulan_hari_explode as $hari){
			echo "<tr><td>".$hari."</td></tr>";
		}

		echo "</table>";
	?>

	<?php echo "----------------------------JAWABAN----------------------------";echo "<br>";

			echo "<hr><hr4>HARI</4><table border='1' cellpading='3'>";
			foreach($kumpulan_hari_explode as $hari){
			echo "<tr><td>". ucwords ($hari)."</td></tr>";
			}

		echo "</table>";
		
    ?>