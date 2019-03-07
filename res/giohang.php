<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Giỏ hàng</title>
	<LINK REL="SHORTCUT ICON"  HREF="img/logo.png">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/webstyle.css">
	<link rel="stylesheet" href="css/font-awesome.css">
</head>
<body>
	<div class="header">
		<?php include('includes/header.php') ?>
	</div><br><br><br><br><br>
	<h2 style="text-align: center; color: red">
		<?php if(isset($_SESSION['message'])){ echo $_SESSION['message']; unset($_SESSION['message']);} ?>
	</h2>
	<div class="container Product" id="Product">
		<div class="row">
			
			
			<div style="margin: auto;" class=""><h3>Có <?php echo $giohang->num_rows; ?> loại sách trong Giỏ hàng của bạn</h3>
				<?php $_SESSION['giohang']=$giohang->num_rows; ?>
				
					<table style="text-align: center;">
						<tr>
							<th colspan="2" style="text-align: center;">Sản phẩm</th>
							<th style="width: 21%; text-align: center;">Đơn giá</th>
							<th style="width: 16%; text-align: center;">Số lượng</th>
							<th style="width: 5%; text-align: center;">Đã giảm</th>
							
							<th style="width: 10%; text-align: center;">Thao tác</th>
							<th style="width: 10%; text-align: center;">Tổng</th>
						</tr>
						<?php $tong=0; while($row=$giohang->fetch_assoc()){ $tong=$tong+($row['gia_ban']*$row['soluong']); ?>
						<tr>
							<td><img style="width: 5em; height: 7em;" src="img/<?php echo $row['anh_bia'] ?>" alt=""></td>
							<td><a href="index.php?id_sach=<?php echo $row['ma_sach'] ?>&action=chitiet" style="font-size: 16px;"><?php echo $row['ten_sach'] ?></a></td>
							<td style="width: 21%; color: red;"><?php echo number_format($row['gia_ban']) ?> ₫</td>
							<td><a href="index.php?id=<?php echo $row['ma_hd'] ?>&action=hdgiam">
								<span class="glyphicon glyphicon-minus-sign"></span>
							</a>  <?php echo $row['soluong'] ?> <a href="index.php?id=<?php echo $row['ma_hd'] ?>&action=hdtang">
								<span class="glyphicon glyphicon-plus-sign"></span>
							</a>  </td>
							<td>0 ₫</td>
							<td><a href="index.php?id=<?php echo $row['ma_hd'] ?>&action=deletehd">
								<span class="glyphicon glyphicon-remove-sign"></span>
							</a></td>
						<?php } ?>
						<td style="color: red; font-size: 20px;"><?php echo number_format($tong) ?> ₫</td>
						<?php $_SESSION['tong']=$tong ?>

					</tr>
					<tr>
						<td></td><td></td><td></td><td></td><td></td>
						<td><a onclick="return confirm('Bạn có chắc muốn xóa toàn bộ giỏ hàng!')" href="index.php?id=<?php echo $_SESSION['ma_kh'] ?>&action=deleteallhd">Hủy toàn bộ giỏ hàng</a></td>
						<td><a href="index.php">Tiếp tục mua hàng.</a></td>
					</tr>
					<form action="" method="post">
					<tr>
						<td></td><td></td><td></td><td></td><td></td><td></td>

						<td><br><button class="btn btn-primary" name="dathang">ĐẶT HÀNG</button></td>
					</tr>
					</form>

						<!-- <tr>
							<th></th>
							<th></th>
							<th></th>
							<th>Áp dụng thẻ thành viên / mã giảm giá</th>
							<th colspan="2">
								<table>
									<tr>
										<th >Tạm tính</th>
										<th >65000đ</th>
									</tr>
								</table>
							</th>
						</tr> -->
					</table>

				
			</div>

		</div>
	</div>
	<?php 
	include "includes/footer.php"
	?>
	<script src="js/jquery.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>