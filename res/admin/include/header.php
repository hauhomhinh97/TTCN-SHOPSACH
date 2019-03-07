<?php while($row = $admin->fetch_assoc()){ ?>
<div class="page-title-area">
    <div class="row align-items-center">
        <div class="col-sm-6">
            <div class="breadcrumbs-area clearfix">
                <a href="admin.php"><h4 class="page-title pull-left">Dashboard</h4></a>
                
            </div>
        </div>
        <div class="col-sm-6 clearfix">
            <div style="border-radius: 50%" class="user-profile pull-right">
                <img class="avatar user-thumb" src="img/<?php echo $row['anh_kh'] ?>" alt="avatar">
                <h4 class="user-name dropdown-toggle" data-toggle="dropdown"><?php echo $row['taikhoan_kh'] ?><i class="fa fa-angle-down"></i></h4>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="index.php">Trang Chủ</a>
                    <a class="dropdown-item" href="admin.php?action=resetpass">Đổi Mật Khẩu</a>
                    <a class="dropdown-item" href="admin.php?action=logout">Đăng Xuất</a>
                </div>
            </div>
        </div>
    </div>
</div>
<?php } ?>