<?php

if (isset($_POST['register'])) {

    $koneksi = new mysqli("localhost", "root", "", "projectkp");
    //sesuaikan dengan namenya
    $username = strtolower(stripslashes(($_POST['username'])));
    $password = mysqli_real_escape_string($koneksi, $_POST['password']);
    $password2 = mysqli_real_escape_string($koneksi, $_POST['password2']);

    // cek username sudah tersedia?
    $result = mysqli_query($koneksi, "SELECT username FROM tb_user WHERE username = '$username'");

    if (mysqli_fetch_assoc($result)) {
        echo "<script>
            alert('Username Sudah Tersedia!');
            window.location.href='../register.php';
        </script>";
        exit;
    }

    // cek konfirmasi password
    if ($password != $password2) {
        echo "<script>
            alert('Konfirmasi Paswword Tidak Cocok!');
            window.location.href='../register.php';
        </script>";
        exit;
    }

    // enkripsi password
    $password = password_hash($password, PASSWORD_DEFAULT);

    // tambahkan user
    mysqli_query($koneksi, "INSERT INTO tb_user VALUES('', '$username', '$password')");

    // $result = mysqli_affected_rows($koneksi);
    echo "<script>
        alert('User Berhasil Terdaftar!');
        window.location.href='../index.php';
    </script>";
    exit;
};
