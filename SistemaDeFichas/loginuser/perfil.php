<?php   
	include('seguridad.php');
 ?>


<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width">
	<title>Mi Perfil</title>

<body>

<style>
            .perfil{
    width: 82px;
    height: 82px;
    border-radius: 20px;
}
    </style>
<br><br>

	<div class="container table table-success">
		<div class="row">
			<div class="col-sm-12">
		
				<div class="row col-sm-6">
					<div>
						<br><br>
						<?php 
							echo "<center>";
							echo "<img class='perfil'  src='../SistemaDeFichas/photos_users/".$_SESSION['foto']."'>";
							echo "</center>";
						 ?>
					</div>
					<div class="borde">
						<center>
						<p >
							<?php
								echo "<center>";
                            echo "<h5>".$_SESSION['idadmin']."</h5> ";  echo "</center>";
								echo "<h5> Nombre completo: ".$_SESSION['nombre']." ".$_SESSION['Apaterno']." "."</h5> ";
                            //.$_SESSION['Amaterno']
                                
                                echo "<h4>Cargo: ".$_SESSION['cargo']."</h4>";
                                echo "<h5> Correo: ".$_SESSION['correo']."</h5>";
							?>
						</p>
						</center>
					</div>
					<br><br>
					<!--<form method="POST" action="../SistemaDeFichas/loginuser/save_img.php" enctype="multipart/form-data">
								<div class="row col-sm-6">
								<input type="file" accept="image/*" name="txtEnvioImagen" class="btn">
								</div>
								
								<input type="submit" name="btnEnviar" class="btn btn-block btn-danger" value="Guardar foto">
								
								<br><br>
						</form>-->
						
				</div>
			</div>
		</div>
	</div>
	<br><br>
	

	<script type="text/javascript" src="../js/jquery-3.1.0.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
</body>
</html>