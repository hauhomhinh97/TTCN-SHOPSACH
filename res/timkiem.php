<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bài Tập Lớn</title>
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

		<div class="row" style="min-height: 400px;">
			<div class="col-md-12"><h3>Có <?php echo $search->num_rows; ?> kết quả tìm cho từ khóa "<?php echo $key; ?>"<span class="view_all"><a href="index.php?id=<?php echo "" ?>&action=searchtest"><i>Xem tất cả</i></a></span></h3>
				<form action="" method="post">
					<?php while($row = $home->fetch_assoc()){ ?>
						<div class="col-md-2">
							<div class="thumbnail">
								<a style="width: 140px; height: 204px;" href="index.php?id_sach=<?php echo $row['ma_sach'] ?>&action=chitiet"><img src="img/<?php echo $row['anh_bia'] ?>" alt="Sản phẩm 1"></a>
								<div class="">
									<center>
										<a href="" style="font-size: 16px;"><?php echo $row['ten_sach'] ?></a>
										<p><?php echo $row['ten_tg'] ?></p>
										<p><?php echo number_format($row['gia_ban']) ?> ₫</p>
									</center>
								</div>
							</div>
						</div>
					<?php } ?>
				</form>
			</div>
		</div>
	</div>
	<div class="page" align="center">
		<ul class="pagination">
			<li>
				<a href="#" aria-label="Previous">
					<span aria-hidden="true">&laquo;</span>
				</a>
			</li>
			<?php for($t=1; $t<=$sotrang; $t++){
				echo "<li><a href='index.php?action=searchtest&key=$key&trang=$t'>$t</a></li>";
			} ?>
			<li>
				<a href="#" aria-label="Next">
					<span aria-hidden="true">&raquo;</span>
				</a>
			</li>
		</ul>
	</div>
	<?php 
	include "includes/footer.php"
	?>
	<script src="js/jquery.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>