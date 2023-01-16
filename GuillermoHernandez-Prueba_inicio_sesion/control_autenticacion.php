<?php 
	
	include('conexion_bd.php');
	$user=$_POST['txtUser'];
	$passwd=$_POST['txtPasswd'];
	$error='';

	
	if (isset($user)&&isset($passwd)) {
		if (empty($user)||empty($passwd)) {
			$error="Usuario o constraseña invalida";
			header("Location:index.php?_noti=$error");
	} else{
			
		$sql="SELECT * FROM tbl_login WHERE email='$user' AND passwd='$passwd'";	 
		if($consulta=mysqli_query($con,$sql)) {
			$cont=mysqli_num_rows($consulta);
			$fila=mysqli_fetch_array($consulta);
		if ($cont!=0) {
			session_start(); 
			$_SESSION['autentificado']="SI"; 
			$_SESSION['foto']=$fila['foto'];
			$_SESSION['nombre']=$fila['nombre'];
			$_SESSION['apellido']=$fila['apellido'];

			header("Location:paginaSegura.php");
		} else {  

		 	$error="El correo o la contraseña es invalida";
		 	
		 	header("Location:index.php?_noti=$error");
		}
		
	}else{
		$error="El registros no existen en la base datos";
		header("Location:index.php?_noti=$error");
	}
}
} else{
	$error="Ingresa un Usuario o una contraseña";
	header("Location:index.php?_noti=$error");
}
	
?>