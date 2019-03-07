
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
</head>
<body>
	<div class="header">
		<?php include('includes/header.php') ?>
	</div><br><br><br><br><br>
	<div class="container Product" id="Product">
		<div class="row">
			<div class="col-md-8">
				<h2 style="color: green;">Địa Chỉ Giao Hàng</h2>
				<form action="" method="post">
				<table class="table">
					<tbody>
						<tr>
							<th style="width: 30%">Email</th>
							<td>
								<input type="text" value="<?php echo $_SESSION['email_kh'] ?>" class="form-control" placeholder="Email">
							</td>
						</tr>
						<tr>
							<th style="width: 30%">Người nhận hàng</th>
							<td>
								<input type="text" class="form-control" value="<?php echo $_SESSION['ten_kh'] ?>" placeholder="Tên người nhận">
							</td>
						</tr>
						<tr>
							<th style="width: 30%">Số điện thoại</th>
							<td>
								<input type="text" class="form-control" value="<?php echo $_SESSION['sdt_kh'] ?>" placeholder="Số điện thoại">
							</td>
						</tr>
						<tr>
							<th style="width: 30%">Địa chỉ</th>
							<td>
								<textarea class="form-control" name="" id="" cols="10" rows=""><?php echo $_SESSION['diachi_kh'] ?></textarea>
								
							</td>
						</tr>
						<tr>
							<th style="width: 30%">Hình thức thanh toán</th>
							<td>
								<input name="hinhthuc" type="radio" class="" checked="">Trả tiền mặt khi giao hàng (khuyên dùng) <br>
								<input name="hinhthuc" type="radio" class="">Thanh toán qua chuyển khoản <br>
								<input name="hinhthuc" type="radio" class="">Thanh toán qua thẻ ngân hàng
							</td>
						</tr>
						<!-- <tr>
							<th style="width: 30%">Quận/Huyện</th>
							<td>
								<input type="text" class="form-control" placeholder="Quận/Huyện">
							</td>
						</tr> -->
					</tbody>
				</table>
			</div>
			<div class="col-md-4">
				<table class="table">
					<thead>
						<tr>
							<th><h2>GIỎ HÀNG <span style="font-style: italic; color: red; font-size: 14px;">(có <?php echo $_SESSION['giohang'] ?> sản phẩm)</span></h2></th>
							<th><a href="index.php?action=cart"><button class="btn">Sửa</button></a></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Tạm tính</td>
							<td><?php echo number_format($_SESSION['tong']) ?> ₫</td>
						</tr>
						<tr>
							<td>Phí vận chuyển</td>
							<td><?php echo "0" ?> ₫</td>
						</tr>
						<tr style="background-color: #ebebeb">
							<td><b style="font-size: 20px;">TỔNG CỘNG</b></td>
							<td><span style="color: red; font-size: 15px;"><?php echo number_format($_SESSION['tong']) ?> ₫</span></td>
						</tr>
						<tr>
							<td><button class="btn btn-primary" type="submit" name="chapnhan"  onclick="return confirm('Xác nhận đặt hàng')">CHẤP NHẬN</button></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		</form>
	</div>
	<?php 
	include "includes/footer.php"
	?>
	<script src="js/jquery.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>