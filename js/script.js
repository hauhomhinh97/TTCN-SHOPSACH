function btnsuasp() {
	alert("Sản phẩm của bạn đã được cập nhật");
}
function btnsuauser() {
	alert("Tài khoản của bạn đã được cập nhật");
}

function addcart() {
	alert("Sản phẩm đã được thêm vào giỏ hàng");
}
function ketthuc1() {
	alert("Đơn hàng của bạn đã được ghi nhận. Hàng sẽ chuyển ngay trong ngày mai.");
	alert("Cảm ơn bạn đã mua hàng của chúng tôi!\n#teamGạoSịn");
	// window.location="admin/ql-tv.php";
}
function ketthuc() {
	alert("Đơn hàng của bạn đã được huỷ!");
}
function thoat() {
	alert("Đăng xuất thành công!");
}
function ktsdt () {
	var sdt = document.getElementById('sdt').value;
	var button = document.getElementById('btn-dangky');
	var ktsdt = /^[0-9-+]+$/;
	if (ktsdt.test(sdt)) {
		button.classList.remove('disabled');
		// console.log("Dung");
	} else {
		// console.log("Sai");
		alert("Vui lòng nhập đúng định dạng Số Điện Thoại!");
		button.classList.add('disabled');
	}
}
function ktemail () {
	var email = document.getElementById('email').value;
	var button = document.getElementById('btn-dangky');
	var ktemail = /^[a-zA-Z0-9]+\@+[a-zA-Z0-9]+\.+[a-zA-Z0-9]+$/;
	if (ktemail.test(email)) {
		button.classList.remove('disabled');
	} else {
		alert("Vui lòng nhập đúng định dạng Email!");
		button.classList.add('disabled');
	}
}
function muahangam () {
	var solg = document.getElementById('solg').value;
	var btn = document.getElementById('button');
	if (solg <= 0) {
		alert('Vui lòng nhập số lượng dương!');
		btn.classList.add('disabled');
		document.getElementById('solg').value = 0;
	} else {
		btn.classList.remove('disabled');
	}
}