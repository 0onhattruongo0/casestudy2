<?php
include './connect.php';
if (isset($_SESSION['current_user']) & $_SESSION['current_user']['username'] == "admin") {

    if (!empty($_GET['action']) && $_GET['action'] == 'sea') {
        if (isset($_REQUEST['sear'])) {
            $search = $_POST['tim'];
        }
    }

    $item_per_page = !empty($_GET['per_page']) ? $_GET['per_page'] : "10";
    $current_page = !empty($_GET['page']) ? $_GET['page'] : "1";
    $offset = ($current_page - 1) * $item_per_page;
    if (!empty($search)) {

        $user = mysqli_query($con, "SELECT * FROM casestudy.user where Name like '%$search%';");
    } else {

        $user = mysqli_query($con, "SELECT * FROM casestudy.user where id_user != '" . $_SESSION['current_user']['id_user'] . "'   order by id_user asc limit $item_per_page  offset $offset ;");
    }
    $totaluser = mysqli_query($con, "select * from casestudy.user");
    $totalRecords = $totaluser->num_rows;
    $totalPage = ceil($totalRecords / $item_per_page);

?>

    <div>
        <h2 class="header__menu text-center">Danh Sách Thành Viên</h2>
        <div class="d-flex justify-content-end mt-3 mb-3">
            <div class="btn btn-danger "><a class="text-light " href="add_member.php">Thêm thành viên</a></div>
        </div>

        <table class="table table-bordered table-dark">
            <tr>
                <th scope="col">Tên đăng nhập</th>
                <th scope="col">Họ và tên</th>
                <th scope="col">Email</th>
                <th scope="col">Delete</th>

            </tr>
            <?php

            while ($row = mysqli_fetch_array($user)) {
            ?>
                <tr>
                    <td scope="row"><strong><?= $row['username'] ?></strong></td>
                    <td><?= $row['Name'] ?></td>
                    <td>
                        <?= $row['email'] ?>
                    </td>

                    <td><a class="btn btn-danger " href="delete_member.php?id=<?= $row['id_user'] ?>"> Delete </a></td>
                </tr>

            <?php } ?>


        </table>
        <div class="pagi_position">
            <ul class="pagination">
                <?php
                include "panagation.php" ?>
            </ul>
        </div>
        <?php include "footer.php";
        ?>
    </div>

<?php
} else {
    header('location:./login.php');
} ?>