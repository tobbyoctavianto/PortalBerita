<?php 
	$server="localhost";
	$username="tobbyoctavianto";
	$password="tobby0310";
	$database="nuri";

	$koneksi = mysqli_connect("$server", "$username","$password","$database");
	if (!$koneksi){
		die("Gagal, Database tidak ditemukan" . mysqli_connect_error());
	}



?>