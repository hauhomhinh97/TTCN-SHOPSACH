<?php 
	class view
	{
		public function homeadmin($admin,$count_user,$count_book,$count_hoadon,$count_cmt){
			include_once('res/admin/index.php');
		}
		public function login(){
			include_once('res/dangnhap.php');
		}
		public function resetpass(){
			include_once('res/admin/doimatkhau.php');
		}
		public function showuser($admin,$showuser,$count_admin){
			include_once('res/admin/danhsachtaikhoan.php');
		}
		public function edituser($admin,$edituser){
			include_once('res/admin/suataikhoan.php');
		}
		public function editbook($admin,$getnxb,$getcd,$gettg,$getbook){
			include_once('res/admin/suasach.php');
		}
		public function edittg($admin,$edittg){
			include_once('res/admin/suatacgia.php');
		}
		public function editnxb($admin,$editnxb){
			include_once('res/admin/suanhaxuatban.php');
		}
		public function editcd($admin,$editcd){
			include_once('res/admin/suachude.php');
		}
		public function add_user($admin){
			include_once('res/admin/themtaikhoan.php');
		}
		public function addtg($admin){
			include_once('res/admin/themtacgia.php');
		}
		public function addnxb($admin){
			include_once('res/admin/themnhaxuatban.php');
		}
		public function addcd($admin){
			include_once('res/admin/themchude.php');
		}
		public function adddh($admin,$showuser,$showbook){
			include_once('res/admin/themdonhang.php');
		}
		public function listtg($admin,$listtg){
			include_once('res/admin/danhsachtacgia.php');
		}
		public function listnxb($admin,$listnxb){
			include_once('res/admin/danhsachnhaxuatban.php');
		}
		public function listbook($listbook,$admin){
			include_once('res/admin/danhsachsach.php');
		}
		public function listcd($admin,$listcd){
			include_once('res/admin/danhsachchude.php');
		}
		public function listdh($admin,$listdh){
			include_once('res/admin/danhsachdonhang.php');
		}
		public function add_book($admin,$getnxb,$getcd,$gettg){
			include_once('res/admin/themsach.php');
		}
	}

 ?>