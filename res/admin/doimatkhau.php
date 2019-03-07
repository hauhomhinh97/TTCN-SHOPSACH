<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Đổi mật khẩu</title>
    <LINK REL="SHORTCUT ICON"  HREF="img/logo.png">
    <link rel="stylesheet" href="css/bootstrap.min.css" >
    <link rel="stylesheet" href="css/webstyle.css">
</head>
<body>
    
    <div class="container">
        <div class="row" style="margin-top: 50px;">
            <div class="col-md-4 frmLogin col-md-offset-4">
                <form action="" method="POST" role="form">
                    <legend>Đổi mật khẩu</legend>
                    <h5 style="color: red"><?php 
                        if(isset($_SESSION['error'])){
                            echo $_SESSION['error'];
                            unset($_SESSION['error']);
                        }
                     ?></h5>
                    <div class="form-group">
                        <label for="">Tài khoản</label>
                        <input disabled="" type="text" value="<?php echo $_SESSION['login'] ?>"  class="form-control" name="taikhoan_kh" placeholder="Username"><br>
                        <label for="">Mật khẩu cũ</label><br>
                        <input type="password" value="12345" class="form-control" name="matkhau_kh" placeholder=""><br>
                        <label for="">Mật khẩu mới</label>
                        <input type="password" value="12345" class="form-control" name="matkhau_kh1" placeholder=""><br>
                        <label for="">Nhập lại mật khẩu mới</label>
                        <input type="password" value="12345" class="form-control" name="matkhau_kh2" placeholder="">
                    </div>
                    <center>
                        <button type="submit" class="btn btn-success" name="btn_submit">Đổi mật khẩu</button>
                        
                    </center>
                </form>
            </div>
            <div class="row">
                <div class="col-md-4 frmLogin col-md-offset-4"  style="margin-top: 20px;">
                    <a href="index.php"><button type="button" class="btn btn-info" style="width: 100%">Trang Chủ</button></a>
                </div>
            </div>
        </div>
    </div>
    
    <script src="js/jquery.js"></script>
    <script src="script.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>