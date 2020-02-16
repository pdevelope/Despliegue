<!DOCTYPE html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UFT-8" />
<title>Practica Despliegue</title>
</head>  
<body>
<h2>Registro de usuarios</h2>
<form name="formulario" action="" method="post">
Nombre:<br>
<input id="1" type="text" name="nombre"><br>
Password:<br>
<input id="2" type="text" name="password"><br>
<input type="submit" name="envio" value="Enviar">
<input type="reset" value="Resetear">
</form>
<?php
if(isset($_POST['envio'])){
$nombre = $_POST['nombre'];
$password = $_POST['password']."-php";
$conn= include 'config.php';
$conexion = mysqli_connect($conn['host'],$conn['username'],$conn['pass'],$conn['database']); 
$sql="INSERT INTO pruebas(nombre,password) VALUES ('$nombre','$password')";
if(mysqli_query($conexion,$sql)==TRUE){
	echo"Usuario insertado";
}else{
	echo"Usuario no insertado";
}
mysqli_close($conexion);
}
?>
</body> 
</html>