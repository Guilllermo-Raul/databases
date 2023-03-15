<?php
	if(isset($_GET['_noti'])){
		$notificacion=$_GET['_noti'];
	} else{
		$notificacion="Ingrese un usuario y una Contraseña.";
	}

?>
<!DOCTYPE html>
<html >
<head>
	<title>Usuario</title>
	
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="x-UA-Compatible" content="ie-edge">
		
<!--===============================================================================================-->	
	<!--<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">

	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body style="background-color: #345532;">
	
	<div class="limiter">
		<div class="container-login100">
			<div class="login100-more" style="background-image: url('images/panoramica.jpg');"></div>

			<div class="wrap-login100 p-l-50 p-r-50 p-t-80 p-b-500">
				<form class="login100-form validate-form" method="post"  action="control_autenticacion.php">
				  <a title="regresar" href="../index.php"><img  width="32" height="32" src="../img/regresar.png" alt="regresar" /></a>
                           <br><br>
					<span class="login100-form-title p-b-60">
						Iniciar sesión
					</span>
						<span class="label-input100">Usuario</span>

						<input class="input100" type="text" name="txtUser" placeholder="ingrese su usuario" required autofocus >
						<span class="focus-input100">	</span>
				

					<br><br><br><br>
						<span class="label-input100">Contraseña</span>
						<input class="input100" type="password" name="txtPasswd" placeholder="ingrese su contraseña" required >
					<span class="focus-input100">	</span>
					<br><br><br><br>
					<!--////////////////-->
					
					<!--////////////////-->
					<br><br>
							<div class="col-xs-12 col-sm-12 col-lg-12">
								<input class="btn btn-lg btn-block btn-success" type="submit" value="Iniciar" >
							</div>
					
					<!--<div class="alert alert-danger alert-dismissible fade show col-sm-4" role="alert">
                  <!--<strong>Holy guacamole!</strong> You should check in on some of those fields below.--><?php echo "$notificacion";  ?>
                  <!--<button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>-->
                </div>
						<!--	<h2><?//php echo "$notificacion";  ?></h2>-->
				</div>
					
							
					
					
				</form>
				
			</div>
		</div>
	</div>

	<!--<script src="js/main.js"></script>-->

</body>
</html>