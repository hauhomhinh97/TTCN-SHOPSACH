<center>
	<h4>CÁC SẢN PHẨM KHÁC CÙNG LOẠI</h4>
</center>
<?php while ($row = $sanpham_tiengviet->fetch_assoc()){ ?>
<a href="index.php?id_sach=<?php echo $row['ma_sach'] ?>&action=chitiet">
	<h5"><?php echo $row['ten_sach'] ?></h5>
	<img src="img/<?php echo $row['anh_bia'] ?>" alt="" style="width: 90px; height: 55px; float: right;" class="img-thumbnail">
</a>
<h5>Giá: <?php echo number_format($row['gia_ban']) ?> ₫</h5><br>
<?php } ?>
