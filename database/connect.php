<?php

$host = "localhost";
$user = "root";
$password = "123456@Abc";
$database = "casestudy";
$con = mysqli_connect($host, $user, $password, $database);
if (mysqli_connect_errno()) {
    echo "Connection Fail: " . mysqli_connect_errno();
    exit;
}
