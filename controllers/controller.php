<?php 
require('models/model.php');
require('views/view.php');

class controller
{
	private $view,$model;
	public function __construct()
	{
		$this->view = new view();
		$this->model = new model();
	}
	//Trang chủ chưa đăng nhập
	public function home(){
		$sanpham_moi = $this->model->sanpham_moi();
		$sanpham_tiengviet = $this->model->sanpham_tiengviet();
		$sanpham_tienganh = $this->model->sanpham_tienganh();
		$sanpham_noibat = $this->model->sanpham_noibat();
		$this->view->home($sanpham_moi,$sanpham_tiengviet,$sanpham_tienganh,$sanpham_noibat);
	}
	public function searchtest(){
		if(isset($_POST['search'])){
			$key = $_POST['search'];
		} else{
			$key=$_GET["key"];
		}
		$key = strip_tags($key);
		$key = addslashes($key);
		$this->search($key);
	}
	public function search($key){
		$search = $this->model->search($key);
		$tongso = $search->num_rows;
		$sotk1trang = 18;
		$sotrang = ceil($tongso/$sotk1trang);
		if(isset($_GET['trang'])){
			$trang = $_GET['trang'];
		}
		else{
			$trang = 1;
		}
		$form = ($trang-1)*$sotk1trang;
		$home = $this->model->home($key,$form,$sotk1trang);
		var_dump($search);die();

		$this->view->search($key,$search,$home,$sotk1trang,$sotrang);
	}

	public function searchmoi(){
		$home = $this->model->searchmoi();
		$search = $this->model->searchmoi();
		if(isset($_POST['btn-search'])){
			echo "string";die();
			$key=$_POST['search'];
			$key = strip_tags($key);
			$key = addslashes($key);
			$this->search($key);
		}
		else{
			$this->view->search(null,$search,$home,null,null);
		}
	}
	public function searchnoibat(){
		$home = $this->model->searchnoibat();
		$search = $this->model->searchnoibat();
		if(isset($_POST['btn-search'])){
			$key=$_POST['search'];
			$key = strip_tags($key);
			$key = addslashes($key);
			var_dump($key);die();
			$this->search($key);
		}
		else{
			$this->view->search(null,$search,$home,null,null);
		}
	}
	public function searchanh(){
		$home = $this->model->searchanh();
		$search = $this->model->searchanh();
		if(isset($_POST['btn-search'])){
			$key=$_POST['search'];
			$key = strip_tags($key);
			$key = addslashes($key);
			$this->search($key);
		}
		else{
			$this->view->search(null,$search,$home,null,null);
		}
	}
	public function searchviet(){
		$home = $this->model->searchviet();
		$search = $this->model->searchviet();
		if(isset($_POST['btn-search'])){
			$key=$_POST['search'];
			$key = strip_tags($key);
			$key = addslashes($key);
			$this->search($key);
		}
		else{
			$this->view->search(null,$search,$home,null,null);
		}
	}
	//Đăng ký
	public function signin(){
		$this->view->signin();
		if (isset($_POST["btn_submit"])) {

			$taikhoan_kh = $_POST["taikhoan_kh"];
			$this->model->gettaikhoan($taikhoan_kh);
			$matkhau_kh = $_POST["matkhau_kh"];
			$ten_kh = $_POST["ten_kh"];
			$email_kh = $_POST["email_kh"];
			$sdt_kh = $_POST["sdt_kh"];
			$diachi_kh = $_POST["diachi_kh"];
			if(!empty($md5_pass)){
				$md5_pass = md5($matkhau_kh);
			}


		//Kiểm tra điều kiện bắt buộc đối với các field không được bỏ trống
			if ($taikhoan_kh == "" || $matkhau_kh == "" || $ten_kh == "" || $email_kh == "" || $sdt_kh == "" || $diachi_kh == "") {
				$_SESSION['error'] = "Bạn vui lòng nhập đầy đủ thông tin!";
			}
			else{
				$this->model->signin($taikhoan_kh,$md5_pass,$ten_kh,$email_kh,$sdt_kh,$diachi_kh);
				$_SESSION['sucess']="Chúc mừng! Đăng ký thành công.";
				$_SESSION['login']="$taikhoan_kh";
			}
			header('location:index.php?action=signin');
		}
	}
	//Đăng nhập
	public function login(){
		$this->view->login();
		if(isset($_POST['btn_submit'])){
			$username_user=$_POST['username_user'];
			$password_user=$_POST['password_user'];
			//tránh tấn công injection
			$username_user = strip_tags($username_user);
			$username_user = addslashes($username_user);
			$password_user = strip_tags($password_user);
			$password_user = addslashes($password_user);
			$password_user=md5($password_user);
			if($this->model->login($username_user,$password_user)){
				$_SESSION['login'] = $username_user;
				$_SESSION['message'] = "Đăng nhập thành công!";
				header('location:index.php');

			}
			else{
				$_SESSION['error'] = "Tên đăng nhập hoặc mật khẩu không đúng!";
				header('location:index.php?action=login');
			}
		}
	}
	public function editpass(){
		$this->view->editpass();
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
				header('location:index.php?action=login');

			}
		}
	}

	//Thông tin người dùng
	public function infor(){
		$infor = $this->model->infor();
		
		if(isset($_POST['logout'])){
			$this->logout();
		}
		elseif(isset($_POST['btn-submit'])){
			$ten_kh=$_POST['ten_kh'];
			$gioitinh_kh=$_POST['gioitinh_kh'];
			$ngaysinh_kh=$_POST['ngaysinh_kh'];
			$email_kh=$_POST['email_kh'];
			$sdt_kh=$_POST['sdt_kh'];
			$diachi_kh=$_POST['diachi_kh'];
			$ten_kh=strip_tags($ten_kh);
			$ten_kh=addslashes($ten_kh);
			$gioitinh_kh=strip_tags($gioitinh_kh);
			$gioitinh_kh=addslashes($gioitinh_kh);
			$ngaysinh_kh=strip_tags($ngaysinh_kh);
			$ngaysinh_kh=addslashes($ngaysinh_kh);
			$email_kh=strip_tags($email_kh);
			$email_kh=addslashes($email_kh);
			$sdt_kh=strip_tags($sdt_kh);
			$sdt_kh=addslashes($sdt_kh);
			$diachi_kh=strip_tags($diachi_kh);
			$diachi_kh=addslashes($diachi_kh);

			$this->update($ten_kh,$gioitinh_kh,$ngaysinh_kh,$email_kh,$sdt_kh,$diachi_kh);
		}
		elseif(isset($_POST['btn-search'])){
			$key=$_POST['search'];
			$key = strip_tags($key);
			$key = addslashes($key);
			$this->search($key);
		}
		elseif(isset($_POST["up"])) //kiem tra xem nguoi xu dung da bam vao nut "tai len" hay chua
		{
			if($_FILES["file"]["name"]!=NULL)
			{

				if($_FILES["file"]["type"]=="image/jpeg"||$_FILES["file"]["type"]=="image/png"||$_FILES["file"]["type"]=="image/gif")
				{
					if($_FILES["file"]["size"]>5242880)
					{
						$_SESSION['error']="file quá nặng!";
						header('location:index.php?action=login');
					}

					// kiem tra su ton tai cua file
					elseif (file_exists("img/".$_FILES["file"]["name"])) 
					{
						$_SESSION['error']= "File đã tồn tại!";
						header('location:index.php?action=login');
					}
					//upload anh
					else{
						move_uploaded_file($_FILES['file']['tmp_name'], 'img/' . $_FILES['file']['name']);
						$avata = $_FILES['file']['name'];
						$this->model->avata($avata);
						header('location:index.php?action=login');
					}
				}
				else {
					$_SESSION['error'] = "File được chọn không hợp lệ!";
					header('location:index.php?action=login');
				}
			}
			else 
			{
				$_SESSION['error'] = "Bạn chưa chọn file!";
				header('location:index.php?action=login');
			}
		}
		else{
			$this->view->infor($infor);
		}
	}

	public function update($ten_kh,$gioitinh_kh,$ngaysinh_kh,$email_kh,$sdt_kh,$diachi_kh){
		$this->model->update($ten_kh,$gioitinh_kh,$ngaysinh_kh,$email_kh,$sdt_kh,$diachi_kh);
		echo("<script>location.href = 'index.php?action=login';</script>");
	}
	//Đăng xuất
	public function logout(){
		session_destroy();
		echo("<script>location.href = 'index.php';</script>");		
	}

	public function chitiet(){
		$id=$_GET['id_sach'];
		$chitiet = $this->model->chitiet($id);
		$getvote = $this->model->getvote($id);
		$count['1'] = $this->model->count_sao($id, $sao = 1)['dem'];
		$count['2'] = $this->model->count_sao($id, $sao = 2)['dem'];
		$count['3'] = $this->model->count_sao($id, $sao = 3)['dem'];
		$count['4'] = $this->model->count_sao($id, $sao = 4)['dem'];
		$count['5'] = $this->model->count_sao($id, $sao = 5)['dem'];
		$cmt = $this->model->cmt($id);
		$this->model->view($id);
		// var_dump($count); die();
		$sanpham_tiengviet = $this->model->sanpham_tiengviet();

		if (isset($_POST['btn-submit'])) {
			if(isset($_SESSION['login'])){
				$data['ma_kh'] = $_SESSION["ma_kh"];
				$data['ma_sach'] = $_POST['ma_sach'];
				$data['soluong'] = $_POST['solgmh'];
				$this->model->add_cart($data);
				header('location:index.php?action=cart');
			}
			else{
				header('location:index.php?action=login');
			}
		}
		if (isset($_POST['cmt'])) {
			$noidung_cmt = $_POST['noidung_cmt'];
			$this->model->createcmt($id,$noidung_cmt);
			header('location: index.php?id_sach='.$id.'&action=chitiet');
		}
		if(isset($_POST['btn-search'])){
			$key=$_POST['search'];
			$this->search($key);
		}
		if (isset($_POST['star'])) {
			$star = $_POST['star'];
			$this->model->star($id,$star);
			header('location: index.php?id_sach='.$id.'&action=chitiet');
		}
		$this->view->chitiet($chitiet,$sanpham_tiengviet,$cmt,$count,$getvote);

	}
	public function cart(){
		$ma_kh=$_SESSION['ma_kh'];
		$giohang = $this->model->giohang($ma_kh);

		if(isset($_POST['dathang'])){
			$this->view->dathang();
		}
		elseif(isset($_POST['btn-search'])){
			$key=$_POST['search'];
			$key = strip_tags($key);
			$key = addslashes($key);
			$this->search($key);
		}
		elseif (isset($_POST['chapnhan'])) {
			$this->model->dathang($ma_kh);
			$_SESSION['message'] = "Cảm ơn bạn đã mua hàng";
			header('location:index.php?action=cart');

		}
		else{
			$this->view->cart($giohang);
		}
	}
	public function deleteallhd(){
		$id=$_GET['id'];
		$this->model->deleteallhd($id);
		header('location:index.php?action=cart');
	}
	public function deletehd(){
		$id=$_GET['id'];
		$this->model->deletehd($id);
		header('location:index.php?action=cart');
	}
	public function hdtang(){
		$id=$_GET['id'];
		$this->model->hdtang($id);
		header('location:index.php?action=cart');
	}
	public function hdgiam(){
		$id=$_GET['id'];
		$this->model->hdgiam($id);
		header('location:index.php?action=cart');
	}

}

?>