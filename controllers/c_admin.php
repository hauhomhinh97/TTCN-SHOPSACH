<?php 
require('models/model.php');
require('views/admin.php');


class admin
{
	public $model,$view;
	function __construct()
	{
		$this->model = new model();
		$this->view = new view();
	}

	public function home(){
		if(isset($_SESSION['login'])){
			$quyen = $this->model->getquyen()['quyen_kh'];
			if($quyen ==1){
				$_SESSION['quyen'] = $quyen;
				$this->homeadmin();
			}
			else{
				echo "Xin lỗi! Bạn không phải Admin.";
			}
		}
		else
		{
			echo "Bạn cần đăng nhập trước khi vào trang này vào trang này.";
		}

	}
	public function logout(){
		session_destroy();
		header('location:index.php');
	}
	public function resetpass(){
		$this->view->resetpass();
		$getpass=$this->model->getpass()['matkhau_kh'];
		if(isset($_POST['btn_submit'])){
			$matkhau_kh=md5($_POST['matkhau_kh']);
			$matkhau_kh1=md5($_POST['matkhau_kh1']);
			$matkhau_kh2=md5($_POST['matkhau_kh2']);
			if($matkhau_kh1 != $matkhau_kh2){
				$_SESSION['error'] = "Mật khẩu mới bạn nhập không trùng nhau!";
				header('location:index.php?action=editpass');
			}
			elseif($matkhau_kh!=$getpass){
				$_SESSION['error'] = "Mật khẩu cũ bạn nhập chưa chính xác!";
				header('location:index.php?action=editpass');
			}
			elseif ($matkhau_kh1==$matkhau_kh) {
				$_SESSION['error'] = "Mật khẩu mới phải khác mật khẩu hiện tại!";
				header('location:index.php?action=editpass');
			}
			else{
				$this->model->updatepass($matkhau_kh1);
				$_SESSION['sucess'] = "Thay đổi mật khẩu thành công";
				header('location:admin.php');

			}
		}
	}
	public function homeadmin(){
		$count_user = $this->model->count_user();
		$count_book = $this->model->count_book();
		$count_hoadon = $this->model->count_hoadon();
		$count_cmt = $this->model->count_cmt();
		$admin = $this->model->admin();
		$this->view->homeadmin($admin,$count_user,$count_book,$count_hoadon,$count_cmt);
	}
	public function showuser(){
		$admin = $this->model->admin();
		$showuser = $this->model->showuser();
		$count_admin = $this->model->count_admin();
		$this->view->showuser($admin,$showuser,$count_admin);
	}
	public function listtg(){
		$admin = $this->model->admin();
		$listtg = $this->model->listtg();
		$this->view->listtg($admin,$listtg);
	}
	public function listcd(){
		$admin = $this->model->admin();
		$listcd = $this->model->listcd();
		$this->view->listcd($admin,$listcd);
	}
	public function listbook(){
		$admin = $this->model->admin();
		$listbook = $this->model->listbook();
		$this->view->listbook($listbook,$admin);
	}
	public function listnxb(){
		$admin = $this->model->admin();
		$listnxb = $this->model->listnxb();
		$this->view->listnxb($admin,$listnxb);
	}
	public function listdh(){
		$admin = $this->model->admin();
		$listdh = $this->model->listdh();
		$this->view->listdh($admin,$listdh);
	}
	public function duyethd(){
		$id=$_GET['id'];
		$this->model->duyethd($id);
		header('location:admin.php?action=listdh');
	}
	public function duyethd2(){
		$id=$_GET['id'];
		$this->model->duyethd2($id);
		header('location:admin.php?action=listdh');
	}
	public function deletehd(){
		$id=$_GET['id'];
		$this->model->deletehd2($id);
		header('location:admin.php?action=listdh');
	}
	public function editbook(){
		$id=$_GET['id'];
		$admin = $this->model->admin();
		$getnxb = $this->model->getnxb();
		$getcd = $this->model->getcd();
		$gettg = $this->model->gettg();
		$getbook = $this->model->getbook($id);
		$this->view->editbook($admin,$getnxb,$getcd,$gettg,$getbook);
		if(isset($_POST['updatebook'])){
			$ten_sach=$_POST['ten_sach'];
			$gia_ban=$_POST['gia_ban'];
			$so_luong_ton=$_POST['so_luong_ton'];
			$ma_nxb=$_POST['ma_nxb'];
			$ma_chu_de=$_POST['ma_chu_de'];
			$ma_tg=$_POST['ma_tg'];
			$mo_ta=$_POST['mo_ta'];
			$this->model->updatebook($id,$ten_sach,$gia_ban,$so_luong_ton,$ma_nxb,$ma_chu_de,$ma_tg,$mo_ta);
			echo("<script>location.href = 'admin.php?action=listbook';</script>");
		}
	}
	public function edituser(){
		$id=$_GET['id'];
		$admin = $this->model->admin();
		$edituser = $this->model->edituser($id);
		$this->view->edituser($admin,$edituser);
		if(isset($_POST['btn-submit'])){
			$quyen_kh=$_POST['quyen_kh'];
			$ten_kh=$_POST['ten_kh'];
			$gioitinh_kh=$_POST['gioitinh_kh'];
			$ngaysinh_kh=$_POST['ngaysinh_kh'];
			$email_kh=$_POST['email_kh'];
			$sdt_kh=$_POST['sdt_kh'];
			$diachi_kh=$_POST['diachi_kh'];
			$this->model->updateuser($id,$quyen_kh,$ten_kh,$gioitinh_kh,$ngaysinh_kh,$email_kh,$sdt_kh,$diachi_kh);
			echo("<script>location.href = 'admin.php?action=listuser';</script>");
		}
	}
	public function editcd(){
		$id=$_GET['id'];
		$admin = $this->model->admin();
		$editcd = $this->model->editcd($id);
		$this->view->editcd($admin,$editcd);
		if(isset($_POST['updatecd'])){
			$ten_chude=$_POST['ten_chude'];
			$this->model->updatecd($ten_chude,$id);
			echo("<script>location.href = 'admin.php?action=listcd';</script>");
		}
	}
	public function edittg(){
		$id=$_GET['id'];
		$admin = $this->model->admin();
		$edittg=$this->model->edittg($id);
		$this->view->edittg($admin,$edittg);
		if(isset($_POST['update'])){
			$ten_tg=$_POST['ten_tg'];
			$diachi_tg=$_POST['diachi_tg'];
			$sdt_tg=$_POST['sdt_tg'];
			$tieusu=$_POST['tieusu'];
			$this->model->updatetg($id,$ten_tg,$diachi_tg,$sdt_tg,$tieusu);
			echo("<script>location.href = 'admin.php?action=listtg';</script>");
		}
	}
	public function editnxb(){
		$id=$_GET['id'];
		$admin = $this->model->admin();
		$editnxb=$this->model->editnxb($id);
		
		if(isset($_POST['updatenxb'])){
			$ten_nxb=$_POST['ten_nxb'];
			$dia_chi=$_POST['dia_chi'];
			$sdt_nxb=$_POST['sdt_nxb'];
			$this->model->updatenxb($id,$ten_nxb,$dia_chi,$sdt_nxb);
			echo("<script>location.href = 'admin.php?action=listnxb';</script>");
		}
		else{
			$this->view->editnxb($admin,$editnxb);
		}
	}
	public function delete_user(){
		$id=$_GET['id'];
		$this->model->deleteuser($id);
		$this->model->delete_user($id);
		header('location:admin.php?action=listuser');

	}
	public function delete_book(){
		$id=$_GET['id'];
		$this->model->delete_book($id);
		header('location:admin.php?action=listbook');
	}
	public function deletecd(){
		$id=$_GET['id'];
		$this->model->deletecd($id);
		header('location:admin.php?action=listcd');
	}
	public function deletetg(){
		$id=$_GET['id'];
		$this->model->deletetg($id);
		header('location:admin.php?action=listtg');

	}
	public function deletenxb(){
		$id=$_GET['id'];
		$this->model->deletenxb($id);
		header('location:admin.php?action=listnxb');
	}
	public function add_user(){
		$admin = $this->model->admin();
		$this->view->add_user($admin);
		if(isset($_POST['btn-submit'])){
			$taikhoan_kh = $_POST["taikhoan_kh"];
			$this->model->gettaikhoan($taikhoan_kh);
			$matkhau_kh = $_POST["matkhau_kh"];
			$ten_kh = $_POST["ten_kh"];
			$email_kh = $_POST["email_kh"];
			$sdt_kh = $_POST["sdt_kh"];
			$diachi_kh = $_POST["diachi_kh"];
			$quyen_kh=$_POST["quyen_kh"];
			$ngaysinh_kh=$_POST["ngaysinh_kh"];
			$gioitinh_kh=$_POST["gioitinh_kh"];
			$md5_pass = md5($matkhau_kh);
			
			$this->addd_user($taikhoan_kh,$md5_pass,$ten_kh,$email_kh,$sdt_kh,$diachi_kh,$quyen_kh,$ngaysinh_kh,$gioitinh_kh);

		}
	}
	public function add_book(){
		$admin = $this->model->admin();
		$getnxb = $this->model->getnxb();
		$getcd = $this->model->getcd();
		$gettg = $this->model->gettg();
		$this->view->add_book($admin,$getnxb,$getcd,$gettg);
		if(isset($_POST['add_book'])){
			$ten_sach=$_POST['ten_sach'];
			$gia_ban=$_POST['gia_ban'];

			move_uploaded_file($_FILES['anh_sach']['tmp_name'], 'img/' . $_FILES['anh_sach']['name']);
			$anh_bia=$_FILES['anh_sach']['name'];

			$so_luong_ton=$_POST['so_luong_ton'];
			$ma_nxb=$_POST['ma_nxb'];
			$ma_chu_de=$_POST['ma_chu_de'];
			$ma_tg=$_POST['ma_tg'];
			$mo_ta=$_POST['mo_ta'];

			$this->model->add_book($ten_sach,$gia_ban,$anh_bia,$so_luong_ton,$ma_nxb,$ma_chu_de,$ma_tg,$mo_ta);
			echo("<script>location.href = 'admin.php?action=listbook';</script>");
		}
	}
	public function addtg(){
		$admin = $this->model->admin();
		$this->view->addtg($admin);
		if(isset($_POST['addtg'])){
			$ten_tg=$_POST['ten_tg'];
			$diachi_tg=$_POST['diachi_tg'];
			$sdt_tg=$_POST['sdt_tg'];
			$tieusu=$_POST['tieusu'];
			$this->model->addtg($ten_tg,$diachi_tg,$sdt_tg,$tieusu);
			echo("<script>location.href = 'admin.php?action=listtg';</script>");
		}
	}
	public function addnxb(){
		$admin = $this->model->admin();
		$this->view->addnxb($admin);
		if(isset($_POST['addnxb'])){
			$ten_nxb=$_POST['ten_nxb'];
			$dia_chi=$_POST['dia_chi'];
			$sdt_nxb=$_POST['sdt_nxb'];
			$this->model->addnxb($ten_nxb,$dia_chi,$sdt_nxb);
			echo("<script>location.href = 'admin.php?action=listnxb';</script>");
		}
	}
	public function addcd(){
		$admin = $this->model->admin();
		$this->view->addcd($admin);
		if(isset($_POST['addcd'])){
			$ten_chude=$_POST['ten_chude'];
			$this->model->addcd($ten_chude);
			echo("<script>location.href = 'admin.php?action=listcd';</script>");
		}
	}
	public function addd_user($taikhoan_kh,$md5_pass,$ten_kh,$email_kh,$sdt_kh,$diachi_kh,$quyen_kh,$ngaysinh_kh,$gioitinh_kh){
		$this->model->addd_user($taikhoan_kh,$md5_pass,$ten_kh,$email_kh,$sdt_kh,$diachi_kh,$quyen_kh,$ngaysinh_kh,$gioitinh_kh);
		echo("<script>location.href = 'admin.php?action=listuser';</script>");
	}
	public function adddh(){
		$showuser = $this->model->showuser();
		$showbook = $this->model->showbook();
		$admin = $this->model->admin();
		$this->view->adddh($admin,$showuser,$showbook);
		if(isset($_POST['adddh'])){
			$ma_kh=$_POST['ma_kh'];
			$ma_sach=$_POST['ma_sach'];
			$soluong=$_POST['soluong'];
			$this->model->adddh($ma_kh,$ma_sach,$soluong);
			echo("<script>location.href = 'admin.php?action=listdh';</script>");
		}
	}
	


}

?>