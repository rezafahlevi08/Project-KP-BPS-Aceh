<?php

$server = "localhost:8080";
$user = "root";
$password = "";
$nama_database = "projectkp";

$db = mysqli_connect($server, $user, $password, $nama_database);

if (!$db) {
    die("Gagal terhubung dengan database: " . mysqli_connect_error());
}