<!doctype html>
<html class="no-js" lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>Danh sách tài khoản</title>
  <LINK REL="SHORTCUT ICON"  HREF="img/logo.png">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" type="image/png" href="assets/images/icon/favicon.ico">
  <link rel="stylesheet" href="assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/css/font-awesome.min.css">
  <link rel="stylesheet" href="assets/css/themify-icons.css">
  <link rel="stylesheet" href="assets/css/metisMenu.css">
  <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
  <link rel="stylesheet" href="assets/css/slicknav.min.css">
  <link rel="stylesheet" href="assets/css/export.css" type="text/css" media="all" />
  <link rel="stylesheet" href="assets/css/typography.css">
  <link rel="stylesheet" href="assets/css/default-css.css">
  <link rel="stylesheet" href="assets/css/styles.css">
  <link rel="stylesheet" href="assets/css/responsive.css">
  <!-- Start datatable css -->
  <link rel="stylesheet" type="text/css" href="css/jquery.dataTables.css">
  <link rel="stylesheet" type="text/css" href="css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" type="text/css" href="css/responsive.bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/responsive.jqueryui.min.css">
  <!-- modernizr css -->
  <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
  <div id="preloader">
   <div class="loader"></div>
 </div>

 <div class="page-container">
   <!-- sidebar menu area start -->
   <?php include('include/menu.php') ?>
   <!-- sidebar menu area end -->
   <!-- main content area start -->
   <div class="main-content">
    <!-- header area start -->
    <div class="header-area">
     <div class="row align-items-center">
      <!-- nav and search button -->
      <div class="col-md-6 col-sm-8 clearfix">
       <div class="nav-btn pull-left">
        <span></span>
        <span></span>
        <span></span>
      </div>
      <!-- <div class="search-box pull-left">
        <form action="#">
         <input type="text" name="search" placeholder="Search..." required>
         <i class="ti-search"></i>
       </form>
     </div> -->
   </div>
   <!-- profile info & task notification -->
   <?php include('include/menu1.php') ?>
 </div>
</div>
<!-- header area end -->
<!-- page title area start -->
<?php include('include/header.php') ?>
<!-- page title area end -->
<div class="main-content-inner">

 <!-- sales report area end -->
 <!-- overview area start -->
 <div class="row">
  <div class="col-xl-9 col-lg-8">
   <div class="card">
    <div class="container">
     <h2>Danh sách tài khoản <span style="color: red"><?php if(isset($_SESSION['mesage'])){echo $_SESSION['mesage'];unset($_SESSION['mesage']);} ?></span></h2>
     <p></p>            
     <table id="dataTable" class="table table-hover">
      <thead>
       <tr>
        <th>#</th>
        <th>Tài khoản</th>
        <th>Email</th>
        <th>Tên</th>
        <th>Giới tính</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>SDT</th>
        <th>Quyền</th>
        <th>Thao tác</th>
      </tr>
    </thead>
    <tbody>
      <?php $stt=0; while($row = $showuser->fetch_assoc()){$stt++; ?>
        
       <tr>
        <td><?php echo $stt ?></td>
        <td><?php echo $row['taikhoan_kh'] ?></td>
        <td><?php echo $row['email_kh'] ?></td>
        <td><?php echo $row['ten_kh'] ?></td>
        <td><?php if($row['gioitinh_kh']==1){ echo "Nam";}else{ echo "Nữ";} ?></td>
        <td><?php echo date_format(date_create($row['ngaysinh_kh']),"d-m-Y") ?></td>
        <td><?php echo $row['diachi_kh'] ?></td>
        <td><?php echo $row['sdt_kh'] ?></td>
        <td><?php if($row['quyen_kh']==1){ echo "Admin";}else{ echo "Khách hàng";} ?></td>	
        <td style="font-size: 20px;"><a title="Sửa tài khoản" href="admin.php?id=<?php echo $row['ma_kh'] ?>&action=edituser"><i class="fa fa-edit"></i></a> | <a title="Xóa tài khoản" onclick="return confirm('Bạn có chắc muốn xóa toàn bộ dữ liệu liên quan tới người dùng này!')" href="admin.php?id=<?php echo $row['ma_kh'] ?>&action=delete"><i class="fa fa-trash-o"></i></a></td>	
      </tr>

      
    <?php } ?>
  </tbody>
</table>
</div>
</div>
</div>
<div class="col-lg-3 mt-5">
  <div class="card">
    <div class="card-body pb-0">
      <h4 class="header-title">Thông tin chi tiết:</h4><br>
      <h6>Số lượng tài khoản: <?php echo $showuser->num_rows; ?></h6><br>
      <h6>Số lượng admin: <?php echo $count_admin->num_rows; ?></h6><br>
      <h6>Số lượng khách hàng: <?php echo ($showuser->num_rows-$count_admin->num_rows) ?></h6><br>
      <div id="socialads" style="height: 245px;">

      </div>
    </div>
  </div>
</div>
</div>

</div>
</div>

</div>

<script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/metisMenu.min.js"></script>
<script src="assets/js/jquery.slimscroll.min.js"></script>
<script src="assets/js/jquery.slicknav.min.js"></script>

<!-- start chart js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
<!-- start highcharts js -->
<script src="https://code.highcharts.com/highcharts.js"></script>
<!-- start zingchart js -->
<script src="https://cdn.zingchart.com/zingchart.min.js"></script>
<script>
 zingchart.MODULESDIR = "https://cdn.zingchart.com/modules/";
 ZC.LICENSE = ["569d52cefae586f634c54f86dc99e6a9", "ee6b7db5b51705a13dc2339db3edaf6d"];
</script>
<!-- all line chart activation -->
<script src="assets/js/line-chart.js"></script>
<!-- all pie chart -->
<script src="assets/js/pie-chart.js"></script>
<!-- Start datatable js -->
<script src="js/jquery.dataTables.js"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/dataTables.bootstrap4.min.js"></script>
<script src="js/dataTables.responsive.min.js"></script>
<script src="js/responsive.bootstrap.min.js"></script>
<!-- others plugins -->
<script src="assets/js/plugins.js"></script>
<script src="assets/js/scripts.js"></script>
</body>
</html>