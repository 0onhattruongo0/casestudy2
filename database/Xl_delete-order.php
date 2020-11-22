<?php
include './connect.php';
session_start();
if (isset($_SESSION['current_user'])) {
    $id = $_GET['id'];


    $result = mysqli_query($con, "delete from orders where id_order='$id'");
    mysqli_close($con);
    if ($result) {
        header("location:./order_listing.php");
    }
} else {
    header('location:./login.php');
}
