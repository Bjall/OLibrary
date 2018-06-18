<?php 

if(!empty($_SESSION["user"])){
		require $_dir["front"]."espaceperso.php";
}
else{
	$_SESSION["info"] = "Il faut vous connecter pour accéder à cette page !";
	header('Location: http://localhost/OWeb/');
}
