<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Đăng nhập</title>
	<LINK REL="SHORTCUT ICON"  HREF="img/logo.png">
	<link rel="stylesheet" href="css/bootstrap.min.css" >
	<link rel="stylesheet" href="css/webstyle.css">
</head>
<body>
	
	<div class="container">
		<div class="row" style="margin-top: 50px;">
			<div class="col-md-4 frmLogin col-md-offset-4">
				<form action="" method="POST" role="form">
					<legend>Đăng nhập</legend>
					<h5 style="color: red"><?php 
						if(isset($_SESSION['error'])){
							echo $_SESSION['error'];
							unset($_SESSION['error']);
						}
					 ?></h5>
					<div class="form-group">
						<label for="">Tài khoản</label>
						<input type="text" value="admin" class="form-control" name="username_user" placeholder="Username">
						<label for="">Mật khẩu</label>
						<input type="password" value="12345" class="form-control" name="password_user" placeholder="Password">
					</div>
					<label class="checkbox">
						<input type="checkbox" value="remember-me"> Remember me
					</label>
					<center>
						<button type="submit" class="btn btn-success" name="btn_submit">Đăng nhập</button>
						<a href="index.php?action=signin"><button type="button" class="btn btn-primary">Đăng ký</button></a>
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