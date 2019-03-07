
<div class="header-top">
<div class="container-fluid" id="head">
	<header class="container">
		<nav class="navbar navbar-default" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a style="width: 140px; height: 55px; margin-top: -9%" class="navbar-brand" href="index.php">
						<img src="img/logo.png" alt="LOGO" style="width: 140px; height: 55px;">
					</a>
				</div>
				<ul class="nav navbar-nav navbar-right">
					<div class="collapse navbar-collapse navbar-ex1-collapse">
						<form style="margin-top: 0px;" action="index.php?action=searchtest" method="post" class="navbar-form navbar-left" role="form">
							<div class="form-group">
								<input type="text" class="form-control" name="search" placeholder="Nhập từ khóa muốn tìm . . ." required="">
							</div>
							<button type="submit" class="btn btn-success" name="btn-search"><i style="font-size: 15px;" class="glyphicon glyphicon-search"></i></button>
						</form>
						<ul class="nav navbar-nav text-header">
							<li><a href=""><i class="glyphicon glyphicon-earphone"></i>Hotline: 1900 2066</a></li>
							<li><a href="index.php?action=cart"><i class="glyphicon glyphicon-shopping-cart"></i>Giỏ hàng</a></li>
							<li>
								<a href="index.php?action=login"><i class="glyphicon glyphicon-user"></i><?php 
									if(isset($_SESSION['login'])){
										echo $_SESSION['login'];
									}
									else{
										echo "ACCOUNT";
									}
								 ?></a>
							</li>
							<!-- <li>
								<a href="index.php?action=logout"><i class="glyphicon glyphicon-log-out"></i></a>
							</li> -->
							

						</ul>
					</ul>
				</div>
			</div>
		</nav>
	</header> 
</div>
</div>