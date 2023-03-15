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
	<title></title>
</head>
<body>
	<h1>Autenticación con PHP</h1>
		<h2><?php echo "$notificacion";  ?></h2>
	<form method="POST" action="control_autenticacion.php">
		<label>Usuario</label>
		<input type="mail" name="txtUser" placeholder="example@mail.com" required=""><br>
		<label>Contraseña</label>
		<input type="password" name="txtPasswd" required=""><br>
		<br>
			<div class="form-group">
					<label class="control-label col-sm-3">usuario</label>
					<div class="col-sm-6">
					<select id="lstLista" class="form-control" name="txtpriv">
						<option value="">Selecciona</option>
						<option value="1">Administrador</option>
						<option value="2">Usuario</option>
					
					</select>
					</div>
				</div>
		<input type="submit" name="btnIngresar" value="Login">
	</form>
</body>
</html>