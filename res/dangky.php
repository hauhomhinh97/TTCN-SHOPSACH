<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>REGISTER</title>
	<LINK REL="SHORTCUT ICON"  HREF="img/logo.png">
	<link rel="stylesheet" href="css/bootstrap.min.css" >
	<link rel="stylesheet" href="css/webstyle.css">
</head>
<body>
	
	<div class="container">
		<div class="row" style="margin-top: 50px;">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<form action="" method="POST" role="form">
					<legend>Bạn chưa có tài khoản?<br>Đăng ký đi còn gì nữa!</legend>
					<h5 style="color: red"><?php 
						if(isset($_SESSION['error'])){
							echo $_SESSION['error'];
							unset($_SESSION['error']);
						}
					 ?></h5>
					 
					<div class="form-group">
						<div class="col-md-6">
							<label for="">* Username</label>
							<input type="text" class="form-control" name="taikhoan_kh" placeholder="Username" required="">
							<label for="">* Họ và Tên</label>
							<input type="text" class="form-control" name="ten_kh" placeholder="Fullname" required="">
						</div>
						<div class="col-md-6">
							<label for="">* Password</label>
							<input type="password" class="form-control" name="matkhau_kh" placeholder="Password" required="">
							<label for="">* Email</label>
							<input type="email" class="form-control" name="email_kh" placeholder="Email" required="" id="email" onchange="ktemail()">
						</div>
						<div class="abc">
							<label for="">* SĐT</label>
							<input type="text" class="form-control" name="sdt_kh" placeholder="Phone Number" required="" maxlength="11" onchange="ktsdt()" id="sdt">
							<label for="">* Địa chỉ (Tỉnh)</label>
							<input type="text" class="form-control" name="diachi_kh" placeholder="Address" required="">
						</div>
					</div>
					<center>
						<button type="submit" class="btn btn-success" name="btn_submit" style="width: 49%;" id="btn-dangky">Đăng ký</button>
						<a href="index.php?action=login"><button type="button" class="btn btn-primary" style="width: 49%;">Đăng nhập</button></a>
					</center>
				</form>
				<br><a href="index.php" class="btn btn-info" style="width: 100%">Trang Chủ</a>
			</div>
			<div class="col-md-3">
				
			</div>
		</div>
	</div>
	<script src="js/jquery.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>