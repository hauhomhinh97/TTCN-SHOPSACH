<div class="container Product" id="Product">
	<div class="row">
		<div class="col-md-12"><h3><b>Tủ Sách Nổi Bật</b><span class="view_all">Xem tất cả <a href="index.php?id=<?php echo "Nổi bật" ?>&action=search3"><i>Nổi bật</i></a></span></h3>
			<form action="" method="post">
				<?php while($row = $sanpham_noibat->fetch_assoc()){ ?>
					<div class="col-md-2">
						<div class="thumbnail">
							<a style="max-height: 181px;" href="index.php?id_sach=<?php echo $row['ma_sach'] ?>&action=chitiet"><img style="max-height: 205px;" src="img/<?php echo $row['anh_bia'] ?>" alt="Sản phẩm 1"></a>
							
							<div class="">
								<center>
									<span><a href="index.php?id_sach=<?php echo $row['ma_sach'] ?>&action=chitiet" style="font-size: 16px;"><?php echo $row['ten_sach'] ?></a></span>
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