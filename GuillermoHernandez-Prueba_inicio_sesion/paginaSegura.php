<?php 
	include('seguridad.php');

	$alerta = "BIENVENIDO HAS INICIADO SESIÓN";
echo "<script> alert('".$alerta."'); </script>";

 ?>
 <!DOCTYPE html>
 <html>
 <head>
 	<meta charset="utf-8">
 	<title>Inicio</title>

	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">	
	<link rel="stylesheet" type="text/css" href="css/estilo.css">	
 </head>
 <body>

<img  src="img/panoramica.jpg"  id="video_background" >

<br>


<div class="container">
		<div class="row centered-form">
			<div class="col-sm-6 col-sm-offset-3">
				<div class="fondo_resolucion_alta panel-default">
				<center>	<h1 class="panel-title"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BIENVENIDO HAS INICIADO SESIÓN</h1></center>	

					<div class="panel-body" id="contenedor">
				<br><center>
<?php 

 	#session_start()
 	 echo "<img class='imagen' width='92' height='92' src='../GuillermoHernandez-Prueba_inicio_sesion/img/".$_SESSION['foto']."'>";
 	 echo "<br> <br>  <FONT COLOR='black'>";  
 	echo "<h2 <FONT COLOR='black'>".utf8_encode($_SESSION['nombre'])."  ".utf8_encode($_SESSION['apellido'])."</h2> ";
 	
  ?>
  <br>

 <p><a class=" btn btn-danger btn-block " href="CerrarSesion.php">Cerrar sesión</a></p><br>
			</div>
		</div>
	</div>
</div>
</div>
</center>


	<script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
 </body>
 </html>