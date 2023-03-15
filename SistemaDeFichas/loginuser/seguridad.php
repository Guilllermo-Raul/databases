<?php 
	session_start();
	if($_SESSION['autentificado']!="SI"){
		header("Location: ../SistemaDeFichas/loginuser/index.php");//PARA RECARGAR LA PAGINA EN LOGIN CUANDO SE DESTRUYE LA SESION
		exit();
	}
 ?>