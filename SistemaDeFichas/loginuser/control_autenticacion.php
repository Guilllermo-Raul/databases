
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">

</head>
<body>

</body>
</html>


<?php 
	
	include('conexion_bd.php');
	$user=$_POST['txtUser'];
	$passwd=$_POST['txtPasswd'];
	//$privilegio=$_POST['txtpriv'];
	$error='';

	//devuelve un valor logico, ese valor duvelve 
	if (isset($user)&&isset($passwd)) {
		if (empty($user)||empty($passwd)) {
			
			//$error="Usuario o constraseña invalida";
			header("Location: index.php?_noti=$error");
	} else{
			//crear la sentencia sql
		$sql="SELECT * FROM usuarios WHERE user='$user' AND passwd='$passwd' AND privilegio=2";	 
		if($consulta=mysqli_query($con,$sql)) {
			$cont=mysqli_num_rows($consulta);
			$fila=mysqli_fetch_array($consulta);
		if ($cont!=0) {
			session_start(); #FUNCION: iniciar una nueva secion o reanudar una sesion existente
			$_SESSION['autentificado']="SI"; #VARIABLE GLOBAL, VARAIBLE DE SESION
			$_SESSION['nombre']=$fila['nombre'];
            $_SESSION['foto']=$fila['foto'];
             $_SESSION['Apaterno']=$fila['Apaterno'];
            $_SESSION['idadmin']=$fila['idadmin'];
                $_SESSION['cargo']=$fila['cargo'];
             $_SESSION['correo']=$fila['correo'];
			header("Location: /SistemaDeFichas/menu_user.php");
				 
					
				
		} else {  
		 	$error="El correo o la contraseña es invalida";
		 	header("Location: index.php?_noti=$error");
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
	#echo "Error: $error";

?>