<?php 
	include('controllers/controller.php');
	$controller = new controller();

	session_start();
	if(isset($_GET['action'])){
		$action = $_GET['action'];
	}
	else{
		$action = '';
	}
	if(isset($_SESSION['login'])>0){
		switch ($action) {
			case 'searchtest':
				$controller->searchtest();
				break;
			case 'search':
				$controller->searchmoi();
			case 'search3':
				$controller->searchnoibat();
			case 'search1':
				$controller->searchanh();
				break;
			case 'search2':
				$controller->searchviet();
				break;
			case 'editpass':
				$controller->editpass();
				break;
			case 'deleteallhd':
				$controller->deleteallhd();
				break;
			case 'logout':
				$controller->logout();
				break;
			case 'chitiet':
				$controller->chitiet();
				break;
			case 'deletehd':
				$controller->deletehd();
				break;
			case 'hdtang':
				$controller->hdtang();
				break;
			case 'hdgiam':
				$controller->hdgiam();
				break;
			case 'cart':
				$controller->cart();
				break;
			case 'login':
				$controller->infor();
				break;
			default:
				$controller->home();
				break;
		}
	}
	else{
		switch ($action) {
			case 'searchtest':
				$controller->searchtest();
				break;
			case 'search':
				$controller->searchmoi();
				break;
			case 'search1':
				$controller->searchanh();
				break;
			case 'search2':
				$controller->searchviet();
				break;
			case 'cart':
				$controller->login();
				break;
			case 'signin':
				$controller->signin();
				break;
			case 'login':
				$controller->login();
				break;
			case 'chitiet':
				$controller->chitiet();
				break;
			case 'cart':
				$controller->cart();
			default:
				$controller->home();
				break;
		}
	}


 ?>