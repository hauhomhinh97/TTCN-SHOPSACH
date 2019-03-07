<?php 
	class view
	{
		public function home($sanpham_moi,$sanpham_tiengviet,$sanpham_tienganh,$sanpham_noibat){
			include_once('res/trangchu.php');
		}
		public function signin(){
			include_once('res/dangky.php');
		}
		public function login(){
			include_once('res/dangnhap.php');
		}
		public function infor($infor){
			include_once('res/thongtinuser.php');
		}
		public function editpass(){
			include_once('res/admin/doimatkhau.php');
		}
		public function chitiet($chitiet,$sanpham_tiengviet,$cmt,$count,$getvote){
			include_once('res/thongtinchitiet.php');
		}
		public function cart($giohang){
			include_once('res/giohang.php');
		}
		public function dathang(){
			include_once('res/dathang.php');
		}
		public function search($key,$search,$home,$sotk1trang,$sotrang){
			include_once('res/timkiem.php');
		}
	}

 ?>