<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Thêm tài khoản khách hàng</title>
    <LINK REL="SHORTCUT ICON"  HREF="img/logo.png">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="assets/images/icon/favicon.ico">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/metisMenu.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/slicknav.min.css">
    <!-- amchart css -->
    <link rel="stylesheet" href="assets/css/export.css" type="text/css" media="all" />
    <!-- others css -->
    <link rel="stylesheet" href="assets/css/typography.css">
    <link rel="stylesheet" href="assets/css/default-css.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
    <!-- modernizr css -->
    <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
          <![endif]-->
          <!-- preloader area start -->
          <div id="preloader">
           <div class="loader"></div>
         </div>
         <!-- preloader area end -->
         <!-- page container area start -->
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
          <div class="col-xl-8 col-lg-7">
           <div class="card">
            <div class="container">
             <form action="" method="POST" role="form">
                <?php while ($row=$edituser->fetch_assoc()){ {
                    # code...
                } ?>
              <legend>Thêm thành viên</legend>
              <div class="form-group">
                <label for="">Tài khoản:</label>
                <input disabled="" type="text" class="form-control" name="" placeholder="Tài khoản thành viên" value="<?php echo $row['taikhoan_kh'] ?>">
              </div>
              <div class="form-group">
                <label for="">Quyền hạn:</label> 
                <select name="quyen_kh" class="form-control">
                  <option value="0" >Khách hàng</option>
                  <option value="1" >Admin</option>
                </select>
                <div class="form-group">
                  <label for="">Họ và tên:</label>
                  <input type="text" class="form-control" name="ten_kh" placeholder="Họ và tên thành viên" required="" value="<?php echo $row['ten_kh'] ?>">
                </div>
                <div class="form-group">
                  <label for="">Giới tính:</label> 
                  <?php 
                $select1="";
                $select2="";
                if($row['gioitinh_kh']==1){
                  $select1='selected=""';
                }
                else{
                  $select2='selected=""';

                }
                ?>
                <select name="gioitinh_kh" class="form-control" id="sel1">
                  <option value="1" <?php echo $select1 ?> >Nam</option>
                  <option value="0" <?php echo $select2 ?> >Nữ</option>
                </select>
                  <div class="form-group">
                    <label for="">Ngày sinh:</label>
                    <input type="date" class="form-control" name="ngaysinh_kh" placeholder="Ngày sinh thành viên" required="" value="<?php echo $row['ngaysinh_kh'] ?>">
                  </div>
                  <div class="form-group">
                    <label for="">Thư điện tử:</label>
                    <input type="email" class="form-control" name="email_kh" placeholder="Email thành viến" required="" value="<?php echo $row['email_kh'] ?>">
                  </div>
                  <div class="form-group">
                    <label for="">Số điện thoại:</label>
                    <input type="number" class="form-control" name="sdt_kh" placeholder="Số điện thoại thành viên" required="" value="<?php echo $row['sdt_kh'] ?>">
                  </div>
                  <div class="form-group">
                    <label for="">Địa chỉ:</label>
                    <textarea name="diachi_kh" id="" class="form-control" rows="4" placeholder="Địa chỉ thành viên" required="" maxlength="100" ><?php echo $row['diachi_kh'] ?></textarea>
                  </div>

                  <button type="submit" class="btn btn-primary" name="btn-submit" >Lưu</button>
              <?php } ?>
                </form>
              </div>
            </div>
          </div>
          
        </div>
        <!-- overview area end -->
        <!-- market value area start -->

        <!-- market value area end -->
        <!-- row area start -->

        <!-- row area start-->
      </div>
    </div>
    <!-- main content area end -->
    <!-- footer area start-->

  </div>
  <!-- page container area end -->
  <!-- offset area start -->

  <!-- offset area end -->
  <!-- jquery latest version -->
  <script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
  <!-- bootstrap 4 js -->
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
 <!-- others plugins -->
 <script src="assets/js/plugins.js"></script>
 <script src="assets/js/scripts.js"></script>
</body>
</html>