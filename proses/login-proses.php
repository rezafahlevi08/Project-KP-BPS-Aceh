<?php
session_start();

if (isset($_POST['login'])) {
    $koneksi = new mysqli("localhost:8080", "root", "", "projectkp");
    //sesuaikan dengan namenya
    $username = $_POST['username'];
    $password = $_POST['password'];

    if (empty($username) || empty($password)) {
        echo '<script>
		  alert("Masukkan Data");
		  window.location.href="../index.php";
		  </script>';
        exit();
    } else {

        $result = mysqli_query($koneksi, "SELECT * FROM tb_user WHERE username = '$username'");

        // cek username
        if (mysqli_num_rows($result) === 1) {

            // cek password
            $row = mysqli_fetch_assoc($result);
            if (password_verify($password, $row["password"])) {
                // set session
                $_SESSION['login'] = true;

                $_SESSION['username']    = $row['username'];
                header("Location: ../layoutPedamping.php?page=pedamping/dashboard.php");
                exit;
            } else {
                echo "<script>
            alert('Password Salah!');
            window.location.href='../index.php';
            </script>";
                exit;
            }
        } else {
            echo "<script>
            alert('Username Tidak Tersedia!');
            window.location.href='../index.php';
            </script>";
            exit;
        }
    }
}
