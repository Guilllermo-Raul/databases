<?php  
	include('variables_conexion.php');
	$con=mysqli_connect(HOST_BD,USER_BD,PASSWD_BD,NAME_BD);

	if ($con==false) {
		die("ERROR: Could not connect. ".mysqli_connect_error());
	}
?>