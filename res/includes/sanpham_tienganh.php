<div class="container Product" id="Product">
	<div class="row">
		<div class="col-md-12"><h3><b>Tủ Sách Tiếng Anh</b><span class="view_all">Xem tất cả <a href="index.php?id=<?php echo "Tiếng Anh" ?>&action=search1"><i>Tiếng Anh</i></a></span></h3>
			<?php while($row = $sanpham_tienganh->fetch_assoc()){ ?>
				<div class="col-md-2">
					<div class="thumbnail">
						<a style="max-height: 181px;" href="index.php?id_sach=<?php echo $row['ma_sach'] ?>&action=chitiet"><img src="img/<?php echo $row['anh_bia'] ?>" alt="Sản phẩm 1"></a>
						<div class="">
							<center>
								<a href="index.php?id_sach=<?php echo $row['ma_sach'] ?>&action=chitiet" style="font-size: 16px;"><?php echo $row['ten_sach'] ?></a>
								<p><?php echo $row['ten_tg'] ?></p>
								<p><?php echo number_format($row['gia_ban']) ?> ₫</p>
							</center>
						</div>
					</div>
				</div>
			<?php } ?>
		</div>
	</div>
</div>