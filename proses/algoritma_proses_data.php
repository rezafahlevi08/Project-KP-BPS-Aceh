<?php ob_start();

function generateIdPenerima($berapa_besar){
	$id_calon = array(0);
 	for($start=1;$start<=$berapa_besar;$start++){
 		$nomorkode = rand(1, 25);
 		$cari = array_search($nomorkode, $id_calon);
 		if($cari == NULL){
 			array_push($id_calon, $nomorkode);
 		} else {
 			$start-=1;
 			continue;
 		}
 	}
 	unset($id_calon[0]);
 	return $id_calon;
 }

function generateKodeSumbangan($id_bantuan){
	$nomorkode = rand(1, 2000);
	$kodesumbangan = $id_bantuan.$nomorkode;
	return $kodesumbangan;
}

function tambahDonatur($conn, $donatur, $nominal_uang, $tanggal_donasi){
	$sql_donatur = "INSERT INTO tb_donatur (donatur, nominal_uang, tanggal_donasi) VALUES ('$donatur', '$nominal_uang', '$tanggal_donasi')";
	if (mysqli_query($conn, $sql_donatur)) {
		$val_donatur = true;
	} else {
		$val_donatur = mysqli_error($conn);
	}
	return $val_donatur;
}

function tambahBantuan($conn, $id_bantuan, $kabupaten, $desa, $berapa_besar, $donatur, $nominal_uang, $tanggal_disumbangkan){
	$sql_bantuan = "INSERT INTO tb_bantuan (id_bantuan, kabupaten, desa, berapa_besar, donatur, nominal_uang, tanggal_disumbangkan) VALUES ('$id_bantuan', '$kabupaten', '$desa', '$berapa_besar', '$donatur', '$nominal_uang', '$tanggal_disumbangkan')";
	if (mysqli_query($conn, $sql_bantuan)) {
		$val_bantuan = true;
	} else {
		$val_bantuan = mysqli_error($conn);
	}
	return $val_bantuan;
}

function generatePenerima($conn, $id_bantuan, $desa, $berapa_besar, $id_penerima){
	foreach ($id_penerima as $id) {
		$sql_donatur = "INSERT INTO tb_calon_penerima (kepala_keluarga, nik) SELECT kepala_keluarga, nik FROM master WHERE id = '$id'";	
		$sql_donatur_id = "UPDATE tb_calon_penerima SET id_bantuan = '$id_bantuan' WHERE id_bantuan = ''";
		if (mysqli_query($conn, $sql_donatur)) {
			if (mysqli_query($conn, $sql_donatur_id)) {
			$val_donatur = true;
			}
		} else {
			$val_donatur = mysqli_error($conn);
		}
	}
	return $val_donatur;
}

$conn = new mysqli("localhost", "root", "", "projectkp");
$id_bantuan = $_POST['id_bantuan'];
$kabupaten = $_POST['kabupaten'];
$desa = $_POST['desa'];
$berapa_besar = $_POST['berapa_besar'];
$donatur = $_POST['donatur'];
$nominal_uang = $_POST['nominal_uang'];
$tanggal_disumbangkan = $_POST['tanggal_disumbangkan'];
$kodesumbangan = generateKodeSumbangan($id_bantuan);
$id_penerima = generateIdPenerima($berapa_besar);

$tambah_donatur = tambahDonatur($conn, $donatur, $nominal_uang, $tanggal_disumbangkan);
$tambah_bantuan = tambahBantuan($conn, $kodesumbangan, $kabupaten, $desa, $berapa_besar, $donatur, $nominal_uang, $tanggal_disumbangkan);
$generate_penerima = generatePenerima($conn, $kodesumbangan, $desa, $berapa_besar, $id_penerima);

if ($tambah_donatur == true){
	if ($tambah_bantuan == true) {
		if ($generate_penerima == true){
			include("modal.php");
		}
	}
}

 ?>