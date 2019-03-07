<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>huyentrangbooks.com-hân hạnh phục vụ</title>
	<LINK REL="SHORTCUT ICON"  HREF="img/logo.png">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/webstyle.css">
	<link rel="stylesheet" href="css/font-awesome.css">
	<!-- 	<script src="ckeditor/ckeditor.js"></script> -->
</head>
<body>
	<div class="header">
		<?php include('includes/header.php') ?>
	</div>
	<main class="container">
		<div class="row">
			<br><br><br><br>
			<div class="col-md-10">
				<?php while($data = $infor->fetch_assoc()){ ?>
					<h2 style="color: red; font-weight: bold">Trang Chỉnh Sửa Thông Tin Thành Viên</h2>
					<h3 style="text-align: center; color: red"><?php 
						if(isset($_SESSION['sucess'])){
							echo $_SESSION['sucess'];
							unset($_SESSION['sucess']);
						}
					 ?></h3><br><br>

					<div class="col-md-6">
						<img  style="width: 350px; height: auto;" src="img/<?php echo $data['anh_kh'] ?>" alt="" class="img-thumbnail"><br><br>
						<h5 style="color: red"><?php if(isset($_SESSION['error'])){ echo $_SESSION['error']; unset($_SESSION['error']);} ?></h5>
						<form action="" method="post" enctype="multipart/form-data">
							<div class="col-md-6">
							<input type="file" name="file" value="">
							</div>
							<div class="col-md-6">
							<input style="float: right;" type="submit" class="btn btn-info" name="up" value="Cập Nhật">
							</div>
						</form>

					</div>
					<div class="col-md-6">

						<form action="" method="POST" role="form">

							<legend>Chỉnh sửa thông tin thành viên</legend>

							<div class="form-group">
								<label for="">Tài khoản:</label>
								<input type="text" class="form-control" name="ten_kh" placeholder="Username" required="" disabled="" value="<?php echo $data['taikhoan_kh']; ?>">
							</div>
							<div class="form-group">
								<label for="">Họ và tên:</label>
								<input type="text" class="form-control" name="ten_kh" placeholder="Fullname" required="" value="<?php echo $data['ten_kh']; ?>">
							</div>
							<div class="form-group">
								<label for="">Giới tính:</label>
								<?php 
								$select1="";
								$select2="";
								if($data['gioitinh_kh']==1){
									$select1='selected=""';
								}
								else{
									$select2='selected=""';

								}
								?>
								<select name="gioitinh_kh" class="form-control" id="sel1">
									<option value="1" <?php echo $select1 ?> >Nam</option>
									<option value="0" <?php echo $select2 ?> >Nữ</option>
								</select>
								<div class="form-group">
									<label for="">Ngày sinh:</label>
									<input type="date" class="form-control" name="ngaysinh_kh" placeholder="DD/MM/YYYY" required="" value="<?php echo $data['ngaysinh_kh']; ?>">
								</div>
								<div class="form-group">
									<label for="">Thư điện tử:</label>
									<input type="email" class="form-control" name="email_kh" placeholder="Email" required="" value="<?php echo $data['email_kh']; ?>">
								</div>
								<div class="form-group">
									<label for="">Số điện thoại:</label>
									<input type="text" class="form-control" name="sdt_kh" placeholder="Phone" required="" value="<?php echo $data['sdt_kh']; ?>">
								</div>
								<div class="form-group">
									<label for="">Địa chỉ:</label>
									<textarea name="diachi_kh" id="" class="form-control" rows="4" placeholder="Address" required="" maxlength="100"><?php echo $data['diachi_kh']; ?></textarea>
								</div>

								<button type="submit" class="btn btn-primary" name="btn-submit" onclick="btnsuauser()">Cập nhật thông tin</button>
							</form>
							

						</div>
					</div>
				</div>
					<div class="col-md-2">
						<br><br>
						<h2>More Tool</h2>
						<br><br>
						<a style="width: 100%" href="index.php?action=login"><button type="button" class="btn btn-default">Xem Thông Tin Cá Nhân<i class="glyphicon glyphicon-user"></i></button></a><br><br>
						<?php 
						if ($data['quyen_kh'] == 1) {
							echo "<a style='width: 100%' href='admin.php' class='btn btn-danger' role='button'>Admin Panel <i class='glyphicon glyphicon-lock'></i></a>";
						}
						else{
							echo "<a style='width: 100%' href='index.php?action=editpass' class='btn btn-success' role='button'>Đổi mật khẩu <i class='glyphicon glyphicon-lock'></i></a>";
						}
						?>
						<br><br>
						<form action="" method="POST">
							<a style="width: 100%" href="index.php?action=cart" class="btn btn-info" role="button">Xem đơn hàng<i class="glyphicon glyphicon-folder-open"></i></a>
							
						</form><br>

						<form action="" method="post">
							<button style="width: 100%" class="btn btn-danger" name="logout" onclick="return confirm('Bạn có chắc muốn đăng xuất!')" >Đăng Xuất<i class="glyphicon glyphicon-off"></i></button>
						</form>
					<?php } ?> 
				</div>
			</div>
		</main>
		<?php 
		include "includes/footer.php"
		?>
		<script src="js/jquery.js"></script>
		<script type="text/javascript" src="js/script.js"></script>
		<script src="js/bootstrap.min.js"></script>
	</body>
	</html>