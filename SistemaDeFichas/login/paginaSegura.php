<?php 
	include('seguridad.php');
 ?>
 <!DOCTYPE html>
 <html>
 <head>
 	<title>Pagina Segura</title>
 </head>
 <body>
 <h1> Bienvenido has iniciado sesion</h1>
 
 <hr>
	
 <?php 
 	#session_start()
     
 	echo "<h2>".$_SESSION['nombre']."</h2>";
    echo "<img class='imagen' width='32' height='32' src='/SistemaDeFichas/photos_users/".$_SESSION['foto']."'>"; 
     echo "<h2>".$_SESSION['Apaterno']."</h2>";
  ?>
 <p><a href="CerrarSesion.php">Cerrar sesion</a></p>
 </body>
 </html>