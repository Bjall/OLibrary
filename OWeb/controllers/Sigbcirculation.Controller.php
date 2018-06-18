<?php 

if(!empty($_SESSION["employee"])){

	// Requête qui récupère les lignes nécessaires à la vue
	$borrowed = $bdd->query("SELECT * FROM borrow_copies bc
								JOIN copies c ON bc.copy_id=c.copy_id
								JOIN books b ON c.book_id=b.book_id
								JOIN authors a ON b.author_id=a.author_id
								JOIN customers cu ON bc.customer_id=cu.customer_id
								WHERE bc.rendering_date IS NULL
								ORDER BY return_date");

	// On renvoie les données dans $donnees
	$donnees = $borrowed->fetchAll();

	// On appelle la vue sigbcirculation
	require $_dir["back"]."sigbcirculation.php";
}
else{

	$_SESSION["info"] = "Vous ne disposez pas des droits d'accès pour accéder à cette page !";
	header('Location: http://localhost/OWeb/');

}

