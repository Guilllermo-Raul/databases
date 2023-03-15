<?php
	include('conexion_bd.php');
	session_start();

	$HOST_NAME="localhost";
	$USER="root";
	$PASSWORD="";
	$DATABASE="sistemafichas";

	$id=$_SESSION['idadmin'];
	$imagen=$_FILES["txtEnvioImagen"]['name'];
	$img=$id;

	if ($_FILES["txtEnvioImagen"]["error"]>0) {
		echo "Hubo algún error al subir el archivo".$_FILES["txtEnvioImagen"]["error"];
	}else{
        //$valid_extensions = array('jpeg', 'jpg', 'png', 'gif');
		move_uploaded_file($_FILES['txtEnvioImagen']['tmp_name'], "../SistemaDeFichas/photos_users/".$img);
		$_SESSION['foto']=$img;
	}

	$con = mysqli_connect($HOST_NAME, $USER, $PASSWORD, $DATABASE);

	if ($con==false) {
		die("Error. Could not connect ".mysqli_connect_error());
	}else{
		$sql="UPDATE administrador SET foto='$img' WHERE idadmin='$id'";


		if (mysqli_query($con,$sql)){
    	header('Location: ../menu_user.php#loginuser/perfil.php');
    } else {
    	echo "Error. Could not able to executed $sql ".mysqli_error($con);
    }

	}

	mysqli_close($con);
 ?>