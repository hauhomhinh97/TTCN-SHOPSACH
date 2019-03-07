<?php 
	include('controllers/c_admin.php');
	$controller = new admin();

	session_start();
	if(isset($_GET['action'])){
		$action = $_GET['action'];
	}
	else{
		$action = '';
	}
	if(isset($_SESSION['quyen'])==1){
		switch ($action) {
			case 'adddh':
				$controller->adddh();
				break;
			case 'duyethd':
				$controller->duyethd();
				break;
			case 'duyethd2':
				$controller->duyethd2();
				break;
			case 'deletehd':
				$controller->deletehd();
				break;
			case 'listdh':
				$controller->listdh();
				break;
			case 'editbook':
				$controller->editbook();
				break;
			case 'editcd':
				$controller->editcd();
				break;
			case 'editnxb':
				$controller->editnxb();
				break;
			case 'edittg':
				$controller->edittg();
				break;
			case 'listbook':
				$controller->listbook();
				break;
			case 'listtg':
				$controller->listtg();
				break;
			case 'listnxb':
				$controller->listnxb();
				break;
			case 'listcd':
				$controller->listcd();
				break;
			case 'edituser':
				$controller->edituser();
				break;
			case 'logout':
				$controller->logout();
				break;
			case 'delete':
				$controller->delete_user();
				break;
			case 'deletebook':
				$controller->delete_book();
				break;
			case 'deletecd':
				$controller->deletecd();
				break;
			case 'deletenxb':
				$controller->deletenxb();
				break;
			case 'deletetg':
				$controller->deletetg();
				break;
			case 'listuser':
				$controller->showuser();
				break;
			case 'add_user':
				$controller->add_user();
				break;
			case 'add_book':
				$controller->add_book();
				break;
			case 'addtg':
				$controller->addtg();
				break;
			case 'addnxb':
				$controller->addnxb();
				break;
			case 'addcd':
				$controller->addcd();
				break;
			case 'login':
				$controller->infor();
				break;
			case 'resetpass':
				$controller->resetpass();
				break;
			default:
				$controller->home();
				break;
		}
	}
	else{
		switch ($action) {
			default:
				$controller->home();
				break;
		}
	}


 ?>