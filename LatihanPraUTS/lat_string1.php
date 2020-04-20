<?php  

	include "koneksi.php";
	$sql=mysqli_query($koneksi,"select a_nama1 from table_1 " );
	$data=mysqli_fetch_array($sql);
	$namapanggilan=$data['a_nama1'];
	echo "Nama di database(original) = ".$namapanggilan."<br>";
	echo "Nama dalam Huruf Besar = ".strtoupper($namapanggilan)."<br>";
	echo "Nama dalam Huruf Kecil = ".strtolower($namapanggilan)."<br>";
	echo "Nama Kecil di awal besar = ".ucwords($namapanggilan)."<br>";

	


	echo "<h2> Menggunakan array 2 dimensi (menampilkan urutan array)</h2>";
	$qry2=mysqli_query($koneksi,"select a_nama1 from table_1");
	$data2=array();
	while($data2[] = mysqli_fetch_array($qry2));

	$namapanggilan2=$data2[3]['a_nama1'];
	echo "Nama di database(original) = ".$namapanggilan2."<br>";
	echo "Nama dalam Huruf Besar = ".strtoupper($namapanggilan2)."<br>";
	echo "Nama dalam Huruf Kecil = ".strtolower($namapanggilan2)."<br>";
	echo "Nama Kecil di awal besar = ".ucwords($namapanggilan2)."<br>";


 ?>

 <?php  
echo "<br>";
echo "<h2> Menggunakan Query sql </h2>";

$sql=mysqli_query($koneksi,"select a_nama1 from table_1 limit 3,1" );
	$data=mysqli_fetch_array($sql);
	$namapanggilan=$data['a_nama1'];
	echo "Nama di database(original) = ".$namapanggilan."<br>";
	echo "Nama dalam Huruf Besar = ".strtoupper($namapanggilan)."<br>";
	echo "Nama dalam Huruf Kecil = ".strtolower($namapanggilan)."<br>";
	echo "Nama Kecil di awal besar = ".ucwords($namapanggilan)."<br>";

 ?>

 <?php  

echo "----------------------------JAWABAN----------------------------";echo "<br>";

$sql=mysqli_query($koneksi,"select a_nama1 from table_1 " );
	$data=mysqli_fetch_array($sql);
	$namapanggilan=$data['a_nama1'];

echo "No 1 = ". substr(ucwords($namapanggilan),0,3)."<br>"; 
echo "No 2 = ". substr(ucwords($namapanggilan),1,3)."<br>";
echo "No 3 = ". substr(ucwords($namapanggilan),0,3).substr(ucwords($namapanggilan),0,3)."<br>";
 ?>