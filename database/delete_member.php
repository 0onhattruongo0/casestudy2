<?php
include './connect.php';
$id = $_GET['id'];


$result = mysqli_query($con, "delete from user where id_user='$id'");
mysqli_close($con);
if ($result) {
    header("location:./member_listing.php");
}
