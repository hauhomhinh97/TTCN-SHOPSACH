<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<LINK REL="SHORTCUT ICON"  HREF="img/logo.png">
	<title>huyentrangbooks.com-hân hạnh phục vụ</title>
	<LINK REL="SHORTCUT ICON"  HREF="img/logo.png">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/webstyle.css">
	<link rel="stylesheet" href="css/font-awesome.css">
</head>
<body>
	<div class="header">
		<?php include('includes/header.php') ?>
	</div>
	<section class="banner">
		<?php 
			include "includes/banner_index.php" 
		?>
	</section>
	<h5 style="color: red; text-align: center;"><?php 
						if(isset($_SESSION['sucess'])){
							echo $_SESSION['sucess'];
							unset($_SESSION['sucess']);
						}
					 ?></h5>
	<section class="SanPham">
		<?php 
			include "includes/sanpham_moi.php" 
		?>
	</section>
	<section class="SanPham">
		<?php 
			include "includes/sanpham_noibat.php" 
		?>
	</section>
	<section class="SanPham">
		<?php 
			include "includes/sanpham_tiengviet.php" 
		?>
	</section>
	</section>
		<section class="SanPham">
		<?php 
			include "includes/sanpham_tienganh.php" 
		?>
	</section>
	<section class="">
		<?php 
			include "includes/quangcao.php"
		 ?>
	</section>
	<section class="CuocPhi">
		<?php 
			include "includes/cuocphi_index.php"
		 ?>
	</section>
	<?php 
		include "includes/footer.php"
	 ?>
	<script src="js/jquery.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>