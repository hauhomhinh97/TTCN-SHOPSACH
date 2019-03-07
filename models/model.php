<?php 
	
	class model
	{
		private $conn;
		function __construct()
		{
			$this->conn= new mysqli("localhost", "root", "", "shopsach") or die('Loi ket noi');
			$this->conn->set_charset("UTF8");
		}
		public function sanpham_moi(){
			$sql = "SELECT sach.*, nhaxuatban.*, chude.*,tacgia.* FROM sach,nhaxuatban,chude,tacgia WHERE sach.ma_chu_de = chude.ma_chu_de AND sach.ma_NXB = nhaxuatban.ma_NXB AND sach.ma_tg=tacgia.ma_tg ORDER BY ma_sach DESC LIMIT 6";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function sanpham_noibat(){
			$sql = "SELECT sach.*, nhaxuatban.*, chude.*,tacgia.* FROM sach,nhaxuatban,chude,tacgia WHERE sach.ma_chu_de = chude.ma_chu_de AND sach.ma_NXB = nhaxuatban.ma_NXB AND sach.ma_tg=tacgia.ma_tg ORDER BY chuot DESC LIMIT 6";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function sanpham_tiengviet(){
			$sql = "SELECT sach.*, nhaxuatban.*, chude.*,tacgia.* FROM sach,nhaxuatban,chude,tacgia WHERE sach.ma_chu_de = chude.ma_chu_de AND sach.ma_NXB = nhaxuatban.ma_NXB AND sach.ma_tg=tacgia.ma_tg AND sach.ma_chu_de=2 ORDER BY ma_sach DESC LIMIT 6";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function sanpham_tienganh(){
			$sql = "SELECT * FROM sach,nhaxuatban,chude,tacgia WHERE sach.ma_chu_de = chude.ma_chu_de AND sach.ma_NXB = nhaxuatban.ma_NXB AND sach.ma_tg=tacgia.ma_tg AND sach.ma_chu_de=3 ORDER BY ma_sach DESC LIMIT 6";
			$query = $this->conn->query($sql);
			return $query;
		}
		//Search
		public function search($key){
			$sql = "SELECT sach.*,tacgia.*, chude.*, nhaxuatban.* FROM sach, nhaxuatban, tacgia, chude WHERE sach.ma_chu_de = chude.ma_chu_de AND sach.ma_NXB = nhaxuatban.ma_NXB AND sach.ma_tg=tacgia.ma_tg AND (ten_sach LIKE '%$key%' OR ten_chude LIKE '%$key%' OR ten_NXB LIKE '%$key%' OR ten_tg LIKE '%$key%' OR gia_ban LIKE '$key') ORDER BY ten_sach";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function home($key,$form,$sotk1trang){
			$sql = "SELECT sach.*,tacgia.*, chude.*, nhaxuatban.* FROM sach, nhaxuatban, tacgia, chude WHERE sach.ma_chu_de = chude.ma_chu_de AND sach.ma_NXB = nhaxuatban.ma_NXB AND sach.ma_tg=tacgia.ma_tg AND (ten_sach LIKE '%$key%' OR ten_chude LIKE '%$key%' OR ten_NXB LIKE '%$key%' OR ten_tg LIKE '%$key%' OR gia_ban LIKE '$key') ORDER BY ten_sach LIMIT $form,$sotk1trang";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function coutbook(){
			$sql = "SELECT count(ma_sach) AS coutbook FROM sach";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function searchmoi(){
			$sql = "SELECT * FROM sach,nhaxuatban,chude,tacgia WHERE sach.ma_chu_de = chude.ma_chu_de AND sach.ma_NXB = nhaxuatban.ma_NXB AND sach.ma_tg=tacgia.ma_tg ORDER BY ma_sach DESC LIMIT 18";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function searchnoibat(){
			$sql = "SELECT * FROM sach,nhaxuatban,chude,tacgia WHERE sach.ma_chu_de = chude.ma_chu_de AND sach.ma_NXB = nhaxuatban.ma_NXB AND sach.ma_tg=tacgia.ma_tg ORDER BY chuot DESC LIMIT 18";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function searchviet(){
			$sql = "SELECT sach.*, nhaxuatban.*, chude.*,tacgia.* FROM sach,nhaxuatban,chude,tacgia WHERE sach.ma_chu_de = chude.ma_chu_de AND sach.ma_NXB = nhaxuatban.ma_NXB AND sach.ma_tg=tacgia.ma_tg AND sach.ma_chu_de=2 ORDER BY ma_sach DESC";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function searchanh(){
			$sql = "SELECT * FROM sach,nhaxuatban,chude,tacgia WHERE sach.ma_chu_de = chude.ma_chu_de AND sach.ma_NXB = nhaxuatban.ma_NXB AND sach.ma_tg=tacgia.ma_tg AND sach.ma_chu_de=3 ORDER BY ma_sach DESC";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function avata($avata){
			$ten_kh = $_SESSION['login'];
			$sql = "UPDATE taikhoan SET anh_kh='$avata' WHERE taikhoan_kh='$ten_kh'";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function chitiet($id){
			$sql = "SELECT sach.*, nhaxuatban.*, tacgia.* FROM sach,nhaxuatban,tacgia WHERE sach.ma_NXB=nhaxuatban.ma_NXB AND sach.ma_tg=tacgia.ma_tg AND ma_sach='$id'";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function star($id,$star){
			$ma_kh = $_SESSION['ma_kh'];
			$sql = "INSERT INTO `vote_sach` VALUES ('','$ma_kh','$id','$star')";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function count_sao($id, $sao){
			$sql = "SELECT COUNT(id_vote) AS dem FROM `vote_sach` WHERE ma_sach='$id' AND vote = '$sao'";
			$query = $this->conn->query($sql);
			return $query->fetch_assoc();
		}
		public function cmt($id){
			$sql = "SELECT * FROM cmt, taikhoan, vote_sach WHERE cmt.ma_sach='$id' AND cmt.ma_kh=taikhoan.ma_kh AND cmt.ma_sach=vote_sach.ma_sach AND cmt.ma_kh=vote_sach.ma_kh ORDER BY id_cmt DESC";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function createcmt($id,$noidung_cmt){
			$ma_kh=$_SESSION['ma_kh'];
			$sql = "INSERT INTO cmt VALUES('','$ma_kh','$id',NOW(),'$noidung_cmt')";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function view($id){
			$sql = "UPDATE `sach` SET `chuot`=`chuot`+1 WHERE `ma_sach`='$id'";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function login($username_user,$password_user){
			$sql = "SELECT * FROM taikhoan WHERE taikhoan_kh='$username_user' AND matkhau_kh='$password_user'";
			$query = $this->conn->query($sql);
			while ( $data = mysqli_fetch_array($query) ) {
					$_SESSION["ma_kh"] = $data["ma_kh"];
					$_SESSION["taikhoan_kh"] = $data["taikhoan_kh"];
					$_SESSION["email_kh"] = $data["email_kh"];
					$_SESSION["ten_kh"] = $data["ten_kh"];
					$_SESSION["diachi_kh"] = $data["diachi_kh"];
					$_SESSION["anh_kh"] = $data["anh_kh"];
					$_SESSION["diachi_kh"] = $data["diachi_kh"];
					$_SESSION["sdt_kh"] = $data["sdt_kh"];
					$_SESSION["sdt_kh"] = $data["sdt_kh"];
					$_SESSION["gioitinh_kh"] = $data["gioitinh_kh"];
					$_SESSION["ngaysinh_kh"] = $data["ngaysinh_kh"];
					$_SESSION["quyen_kh"] = $data["quyen_kh"];
			}
			if($query->num_rows>0){
				return true;
			}
			else{
				return false;
				
			}
		}
		public function add_cart($data)
		{
			$sql = "INSERT INTO `donhang` (`ma_hd`, `ma_sach`, `soluong`, `dathanhtoan`, `tinhtranggiaohang`, `ngaydathang`, `ma_kh`) VALUES (NULL, '".$data['ma_sach']."', '".$data['soluong']."', '0', '0', now(), '".$data['ma_kh']."')";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function dathang($ma_kh){
			$sql = "UPDATE donhang SET tinhtranggiaohang='1' WHERE ma_kh='$ma_kh'";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function deleteallhd($id){
			$sql = "DELETE FROM donhang WHERE ma_kh='$id'";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function deletehd($id){
			$sql = "DELETE FROM donhang WHERE ma_hd='$id'";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function hdtang($id){
			$sql = "UPDATE donhang SET soluong=soluong+1 WHERE ma_hd='$id'";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function hdgiam($id){
			$sql = "UPDATE donhang SET soluong=soluong-1 WHERE ma_hd='$id'";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function giohang($ma_kh)
		{
			$sql = "SELECT * FROM donhang,sach WHERE ma_kh = '$ma_kh' AND donhang.ma_sach = sach.ma_sach AND donhang.tinhtranggiaohang=0";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function gettaikhoan($taikhoan_kh){
			$sql = "SELECT taikhoan_kh FROM taikhoan WHERE taikhoan_kh='$taikhoan_kh'";
			$query = $this->conn->query($sql);
			if($query->num_rows>0){
				$_SESSION['error'] = "Tài khoản này đã được sử dụng. Vui lòng chọn tài khoản khác!";
			}
			else{
				return $query;
			}
		}
		public function signin($taikhoan_kh,$md5_pass,$ten_kh,$email_kh,$sdt_kh,$diachi_kh){
			$sql = "INSERT INTO taikhoan VALUES('','$taikhoan_kh','$md5_pass','$email_kh','$ten_kh','anhnguoidung.jpg','$diachi_kh','$sdt_kh','1',NOW(),'')";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function getid(){
			$taikhoan_kh=$_SESSION['login'];
			$sql = "SELECT ma_kh FROM taikhoan WHERE taikhoan_kh='$taikhoan_kh'";
			$query = $this->conn->query($sql);
			return $query->fetch_assoc();
		}
		public function getquyen(){
			$taikhoan_kh=$_SESSION['login'];
			$sql = "SELECT quyen_kh FROM taikhoan WHERE taikhoan_kh='$taikhoan_kh'";
			$query = $this->conn->query($sql);
			return $query->fetch_assoc();
		}
		public function infor(){
			$ma_kh = $this->getid()['ma_kh'];
			$sql = "SELECT * FROM taikhoan WHERE ma_kh='$ma_kh'";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function update($ten_kh,$gioitinh_kh,$ngaysinh_kh,$email_kh,$sdt_kh,$diachi_kh){
			$id = $this->getid()['ma_kh'];
			$sql = "UPDATE taikhoan SET ten_kh='$ten_kh', gioitinh_kh='$gioitinh_kh', ngaysinh_kh='$ngaysinh_kh', email_kh='$email_kh', sdt_kh='$sdt_kh',diachi_kh='$diachi_kh' WHERE ma_kh='$id'";
			$query = $this->conn->query($sql);
			return $query;
		}




		//Admin
		public function admin(){
			$ma_kh = $this->getid()['ma_kh'];
			$sql = "SELECT * FROM taikhoan WHERE ma_kh='$ma_kh'";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function count_user(){
			$sql = "SELECT ma_kh FROM taikhoan";
			$query = $this->conn->query($sql);
			return $query->num_rows;
		}
		public function count_admin(){
			$sql = "SELECT ma_kh FROM taikhoan WHERE quyen_kh='1'";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function count_book(){
			$sql = "SELECT ma_sach FROM sach";
			$query = $this->conn->query($sql);
			return $query->num_rows;
		}
		public function count_hoadon(){
			$sql = "SELECT ma_hd FROM donhang WHERE tinhtranggiaohang!='0'";
			$query = $this->conn->query($sql);
			return $query->num_rows;
		}
		//đếm bình luận ở dashboard
		public function count_cmt(){
			$sql = "SELECT id_cmt FROM cmt";
			$query = $this->conn->query($sql);
			return $query->num_rows;
		}
		public function getpass(){
			$taikhoan_kh=$_SESSION['login'];
			$sql="SELECT matkhau_kh FROM taikhoan WHERE taikhoan_kh='$taikhoan_kh'";
			$query = $this->conn->query($sql);
			return $query->fetch_assoc();
		}
		public function updatepass($matkhau_kh1){
			$taikhoan_kh=$_SESSION['login'];
			$sql ="UPDATE taikhoan SET matkhau_kh='$matkhau_kh1' WHERE taikhoan_kh='$taikhoan_kh'";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function showuser(){
			$sql ="SELECT * FROM taikhoan";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function showbook(){
			$sql ="SELECT * FROM sach";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function edituser($id){
			$sql = "SELECT * FROM taikhoan WHERE ma_kh='$id'";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function editcd($id){
			$sql ="SELECT * FROM chude WHERE ma_chu_de='$id'";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function edittg($id){
			$sql ="SELECT * FROM tacgia WHERE ma_tg='$id'";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function editnxb($id){
			$sql = "SELECT * FROM `nhaxuatban` WHERE `ma_nxb`='$id'";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function updateuser($id,$quyen_kh,$ten_kh,$gioitinh_kh,$ngaysinh_kh,$email_kh,$sdt_kh,$diachi_kh){
			$sql = "UPDATE taikhoan SET quyen_kh='$quyen_kh',ten_kh='$ten_kh',gioitinh_kh='$gioitinh_kh',ngaysinh_kh='$ngaysinh_kh',email_kh='$email_kh',sdt_kh='$sdt_kh',diachi_kh='$diachi_kh' WHERE ma_kh = '$id'";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function updatecd($ten_chude,$id){
			$sql = "UPDATE chude SET ten_chude='$ten_chude' WHERE ma_chu_de='$id'";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function updatetg($id,$ten_tg,$diachi_tg,$sdt_tg,$tieusu){
			$sql = "UPDATE tacgia SET ten_tg='$ten_tg', diachi_tg='$diachi_tg', sdt_tg='$sdt_tg', tieusu='$tieusu' WHERE ma_tg='$id'";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function updatenxb($id,$ten_nxb,$dia_chi,$sdt_nxb){
			$sql = "UPDATE nhaxuatban SET ten_nxb='$ten_nxb', dia_chi='$dia_chi',sdt_nxb='$sdt_nxb' WHERE ma_nxb='$id'";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function updatebook($id,$ten_sach,$gia_ban,$so_luong_ton,$ma_nxb,$ma_chu_de,$ma_tg,$mo_ta){
			$sql = "UPDATE `sach` SET `ten_sach`='$ten_sach',`gia_ban`='$gia_ban',`mo_ta`='$mo_ta',`ngay_cap_nhat`=NOW(),`so_luong_ton`='$so_luong_ton',`ma_nxb`='$ma_nxb',`ma_chu_de`='$ma_chu_de',`ma_tg`='$ma_tg' WHERE ma_sach='$id'";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function deleteuser($id){
			$sql = "DELETE FROM donhang WHERE ma_kh='$id'" ;
			$query = $this->conn->query($sql);
			return $query;
		}
		public function delete_user($id){
			$sql = "DELETE FROM taikhoan WHERE ma_kh='$id' AND taikhoan_kh != 'admin' AND quyen_kh != '1'";
			// DELETE FROM donhang WHERE ma_kh='$id' ;
			$query = $this->conn->query($sql);
			return $query;
		}
		public function delete_book($id){
			$sql = "DELETE FROM sach WHERE ma_sach='$id'";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function deletecd($id){
			$sql = "DELETE FROM chude WHERE ma_chu_de='$id'";
			$query = $this->conn->query($sql);
			return $query;
		}
		
		public function deletetg($id){
			$sql = "DELETE FROM tacgia WHERE ma_tg='$id'";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function deletenxb($id){
			$sql = "DELETE FROM nhaxuatban WHERE ma_nxb='$id'";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function addd_user($taikhoan_kh,$md5_pass,$ten_kh,$email_kh,$sdt_kh,$diachi_kh,$quyen_kh,$ngaysinh_kh,$gioitinh_kh){
			$sql = "INSERT INTO taikhoan VALUES('','$taikhoan_kh','$md5_pass','$email_kh','$ten_kh','anhnguoidung.jpg','$diachi_kh','$sdt_kh','$gioitinh_kh','$ngaysinh_kh',$quyen_kh)";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function add_book($ten_sach,$gia_ban,$anh_bia,$so_luong_ton,$ma_nxb,$ma_chu_de,$ma_tg,$mo_ta){
			$sql = "INSERT INTO sach VALUES('','$ten_sach','$gia_ban','$mo_ta','$anh_bia',NOW(),'$so_luong_ton','$ma_nxb','$ma_chu_de','0','$ma_tg')";
			var_dump($sql);die();
			$query = $this->conn->query($sql);
			return $query;
		}
		public function addtg($ten_tg,$diachi_tg,$sdt_tg,$tieusu){
			$sql = "INSERT INTO tacgia VALUES ('','$ten_tg','$diachi_tg','$tieusu','$sdt_tg')";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function addnxb($ten_nxb,$dia_chi,$sdt_nxb){
			$sql = "INSERT INTO nhaxuatban VALUES('','$ten_nxb','$dia_chi','$sdt_nxb')";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function addcd($ten_chude){
			$sql = "INSERT INTO chude VALUES('','$ten_chude')";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function adddh($ma_kh,$ma_sach,$soluong){
			$sql = "INSERT INTO donhang VALUES('','$ma_sach','$soluong','0','1',NOW(),'$ma_kh')";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function getnxb(){
			$sql = "SELECT * FROM nhaxuatban";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function getcd(){
			$sql = "SELECT * FROM chude";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function gettg(){
			$sql = "SELECT * FROM tacgia";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function getbook($id){
			$sql = "SELECT * FROM sach WHERE ma_sach='$id'";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function listbook(){
			$sql = "SELECT sach.*,tacgia.*, chude.*, nhaxuatban.* FROM sach, nhaxuatban, tacgia, chude WHERE sach.ma_chu_de = chude.ma_chu_de AND sach.ma_NXB = nhaxuatban.ma_NXB AND sach.ma_tg=tacgia.ma_tg";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function listtg(){
			$sql = "SELECT * FROM tacgia";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function listnxb(){
			$sql = "SELECT * FROM nhaxuatban";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function listcd(){
			$sql = "SELECT * FROM chude";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function listdh(){
			$sql = "SELECT * FROM donhang,taikhoan,sach WHERE donhang.ma_kh=taikhoan.ma_kh AND donhang.tinhtranggiaohang!=0 AND sach.ma_sach=donhang.ma_sach";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function duyethd($id){
			$sql = "UPDATE donhang SET tinhtranggiaohang='2' WHERE ma_hd='$id'";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function duyethd2($id){
			$sql = "UPDATE donhang SET tinhtranggiaohang='3' WHERE ma_hd='$id'";
			$query = $this->conn->query($sql);
			return $query;
		}
		public function deletehd2($id){
			$sql = "DELETE FROM donhang WHERE ma_hd='$id'";
			$query = $this->conn->query($sql);
			return $query;
		}
	}


 ?>