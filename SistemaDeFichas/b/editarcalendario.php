    <?php
$noficha = $_POST["txtid"];
$nombre = $_POST["txttitle"];


include("../php/conexion/conexion.php");

if ($conexion == false) {
			die("Error, no esta conectado ".mysqli_connect_error());
		} else { //id= '$id', 
	$sql = "UPDATE fichas SET  nombre='$nombre' WHERE no_ficha='$noficha'"; //$id
	
	if (mysqli_query($conexion, $sql)) {
				echo "El registro ha sido modificado satisfactoriamente";
				//Redireccionar a la pagina verinfoStudent.php
				header('Location: calendario.php');
			} else {
				echo "Error, no se puede ejecutar $sql. ".mysqli_error($conexion);
			}
				}
			mysqli_close($conexion);
?>