<?php
	if(isset($_GET['_noti'])){
		$notificacion=$_GET['_noti'];
	} else{
		$notificacion="Ingrese un usuario y una Contraseña.";
	}

?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Iniciar sesión</title>
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

</head>
<body><style>
 img {
   max-width: 20%;
   max-height: 20%;
   height: auto;
   width: auto;
}
</style>
	<br><br>
	<center><h2>Inicio de sesión</h2></center>
		<center><h5><p class="text-primary"><?php echo "$notificacion";  ?></p></h5></center>
		<br><br>
		
		<div class="row">
		<div class="container bg-info col-sm-6 col-sm-offset-3 "><br>
			<center><img src="img/usuario.png"  >
			</center>
		<div class="form-group">
			<br>
	  <form method="POST" action="control_autenticacion.php">
	  	<div class="col-sm-12 ">
	  	<div class="row col-sm-6 col-sm-offset-3">
		<label>Usuario</label>
		<input type="mail" name="txtUser" class="form-control"  placeholder="example@mail.com" required=""><br>
	</div>
	</div>
	<div class="col-sm-12">
	  	<div class="row col-sm-6 col-sm-offset-3"><br>
		<label>Contraseña</label>
		<input type="password" name="txtPasswd" class="form-control"  required=""><br>
		</div>
	</div>
	<div class="col-sm-12">
	  	<div class="row col-sm-6 col-sm-offset-3"><br>
		<input type="submit" name="btnIngresar" class="btn btn-success btn-block" value="Ingresar"><br><br>
			</div><br>
	</div> 

	  </form>
	
	</div>
</div></div>
</body>
</html>

