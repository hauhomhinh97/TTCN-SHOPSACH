<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bài Tập Lớn</title>
	<LINK REL="SHORTCUT ICON"  HREF="img/logo.png">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/webstyle.css">
	<link rel="stylesheet" href="css/font-awesome.css">
	<link rel="stylesheet" href="css/display.css">
</head>
<body>
	<div class="header">
		<?php include('includes/header.php') ?>
	</div>
	<br>
	<br><br><br><br><br><br><br>
	<section class="container">
		<?php while($row = $chitiet->fetch_assoc()){ ?>
			<form action="" method="post">
				<div class="row ">

					<div class="col-md-4">
						<input type="hidden" name="ma_sach" value="<?php echo $row['ma_sach'] ?>">
						<img class="img-thumbnail sp" src="img/<?php echo $row['anh_bia'] ?>" alt="Anh San Pham <?php echo $id_sach; ?>" style="width: 350px; height: auto;">
					</div>
					<div class="col-md-4">
						<legend><h2><?php echo $row['ten_sach'] ?></h2></legend>
						<h6 style="float: right; margin-top: -15px;font-style: italic;color: red;">Lượt xem: <?php echo $row['chuot'] ?></h6>
						<h4>Tác giả: <?php echo $row['ten_tg'] ?></h4>
						<input type="hidden" name="tenmh" value="<?php echo $data['ten_sp']; ?>">
						<div class="form-group">
							<h4>Đánh Giá: <span style="color: #187ffe;"><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i></span></h4>
							<h4>Giá: <b style="color: #da2028; font-size: 20px;"><?php echo number_format($row['gia_ban']) ?> ₫</b> (đã có VAT)</h4>
							<hr>
							
							
							<div class="input-group SoLuong">
								<span class="input-group-addon">Chọn số lượng:</span>
								<input style="height: 36px;" type="number" name="solgmh" class="form-control" placeholder="VD: 1" id="solg" required="" value="1">
								<span class="input-group-addon">Cuốn</span>
							</div>
							<br>
							<?php if(isset($_SESSION['login'])){
								echo "<button type='submit' id='button' name='btn-submit' class='btn btn-success' onclick='addcart()'>
								<i class='glyphicon glyphicon-shopping-cart'></i> Thêm vào giỏ
								</button>";
							}
							else{
								echo "Bạn cần đăng nhập để đặt hàng<br>";
								echo "<a href='index.php?action=login' class='btn btn-primary'>Đăng Nhập <i class='glyphicon glyphicon-user'></i></a>";
							}
							?>
							
							<hr>
							<h5><b>Thông tin giao hàng và khuyến mãi:</b></h5>
							<h5>-Nhận hàng tại:
								<select style="font-size: 13px; margin-left: 5px;" name="" id="">
									<option value="">Tp.Thái Nguyên</option>
									<option value="">Tp.Hà Nội</option>
									<option value="">Tp.Hồ Chí Minh</option>
									<option value="">Tình thành khác</option>
								</select>
							</h5>
							<h5>-Miễn phí giao hàng toàn quốc cho đơn hàng từ 500.000đ</h5>
							<h5>-Miễn phí giao hàng tại Thái Nguyên cho đơn hàng từ 150.000đ</h5>
							<h5><b>Bạn ngại đặt hàng trên website. Gọi <span style="color: #da2028; font-size: 16px;">1900 2066</span>, chúng tôi đặt hàng giúp bạn.</b></h5>
							<div class="row">
								<div style="margin-left: -96%;" class="panel-group" id="accordion">
									<div class="panel panel-info">
										<div class="panel-heading">
											<h3 class="panel-title">
												<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Mô Tả Sản Phẩm</a>
											</h3>
										</div>

										<div id="collapseOne" class="panel-collapse collapse in">
											<div class="panel-body">
												<?php echo $row['mo_ta'] ?>
											</div>
										</div>

									</div>
								</div>
							</div>
							

						</div>
					<?php } ?>
					<br><br><br>
				</div>
				<div class="col-md-4">
					<?php 
					include "includes/menu-new.php"
					?>
				</div>

			</div>
		</form>
		<div class="comment col-md-9">
			<div class="panel panel-info">
				<div class="panel-heading">
					<h3 class="panel-title">Bình luận</h3>
				</div>
				<div class="panel-body">
					<div class="overflow col-md-12">
						<div class="hiencmt">
							<?php if(isset($_SESSION['login'])){
								echo "<form action='' method='post'>
								<input type='text' name='noidung_cmt' placeholder='Nhập nội dung ...' class='form-control'>
								<div class='right' align='right' style='margin-top: 5px;'>
								<button name='cmt' class='btn btn-primary'>Gửi</button>
								</div>
								</form>";
							}
							else{
								echo "Bạn cần <a href='index.php?action=login'>đăng nhập</a> để bình luận";
							}
							?>
						</div>
						<?php while ($row = $cmt->fetch_assoc()) { ?>
							<div class="hiencmt">
								<p class="tencmt">Tên: <span><?php echo $row['taikhoan_kh']; ?></span> | Thời gian: <span><?php echo date_format(date_create($row['time_cmt']),'d/m/Y'); ?></span> | Đánh giá: <span><?php if($row['vote']==5){echo '<i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>';} elseif($row['vote']==4){echo '<i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>';} elseif($row['vote']==3){echo '<i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>';} elseif($row['vote']==2){echo '<i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>';} elseif($row['vote']==1){echo '<i class="glyphicon glyphicon-star"></i>';} ?></span></p>
								<p class="ndcmt">Nội dung: <?php echo $row['noidung_cmt']; ?></p>
							</div>
						<?php } ?>
					</div>
				</div>
			</div>
		</div>
		<div class="comment col-md-3">
			<div class="panel panel-info">
				<div class="panel-heading">
					<h3 class="panel-title">Đánh giá</h3>
				</div>
				<div class="panel-body">
					<div class="overflow col-md-12">
						<?php if(isset($_SESSION['login'])&&$getvote<1){ ?>
						<div class="hiencmt">
							<p>
								<div class="stars">
									<form action="" method="post">
										<input type="submit" class="btn btn-success" style="float: right;" value="CHỌN">
										<input value="5" class="star star-5" id="star-5" type="radio" name="star"/>
										<label class="star star-5" for="star-5"></label>
										<input value="4" class="star star-4" id="star-4" type="radio" name="star"/>
										<label class="star star-4" for="star-4"></label>
										<input value="3" class="star star-3" id="star-3" type="radio" name="star"/>
										<label class="star star-3" for="star-3"></label>
										<input value="2" class="star star-2" id="star-2" type="radio" name="star"/>
										<label class="star star-2" for="star-2"></label>
										<input value="1" class="star star-1" id="star-1" type="radio" name="star"/>
										<label class="star star-1" for="star-1"></label>
									</form>
								</div>
							</p>
						</div>
					<?php } if (isset($_SESSION['login'])&&$getvote>0) { ?>
						<div class="hiencmt">
							<p>
								<span>Cảm ơn bạn đã đánh giá!</span>
							</p>
						</div>
					<?php } ?>
						<div class="hiencmt">
							<p><span style="color: #187ffe;"><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>(<?php echo $count['5']; ?>)</p>
							<p><span style="color: #187ffe;"><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>(<?php echo $count['4']; ?>)</p>
							<p><span style="color: #187ffe;"><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>(<?php echo $count['3']; ?>)</p>
							<p><span style="color: #187ffe;"><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>(<?php echo $count['2']; ?>)</p>
							<p><span style="color: #187ffe;"><i class="glyphicon glyphicon-star"></i>(<?php echo $count['1']; ?>)</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<?php 
		include "includes/footer.php"
	?>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>