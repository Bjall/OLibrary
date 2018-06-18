<?php

if(!empty($_POST["search"])){

	$search = htmlspecialchars($_POST["search"]);
	$disponibilite = 'all';

	$mots = explode(" ", $search);
	
	for($i=0;$i<count($mots);$i++) {

		$resultats = $bdd->prepare("SELECT * FROM books b
		INNER JOIN authors a 
		ON b.author_id = a.author_id
		WHERE (b.book_title LIKE '%".$mots[$i]."%'
		OR b.book_subtitle LIKE '%".$mots[$i]."%'
		OR a.author_firstname LIKE '%".$mots[$i]."%'
		OR a.author_lastname LIKE '%".$mots[$i]."%'
		) ");
	}
	
	$resultats->execute(array('search' => $search));

	require $_dir["front"]."resultats.php";

}
else{
	$_SESSION["info"] = "Veuillez spécifier une recherche";
	header('Location: http://localhost/OWeb/');
}



function disponible($id, $bdd)
{
    // Nombre de documents dans la bibliothèque

	$count_doc = $bdd->prepare("SELECT COUNT(book_id) FROM copies WHERE book_id = ? ");

	$count_doc->execute(array($id));

	$nbdoc = $count_doc->fetch();


	// Nombre de documents empruntés

	$count_indisponible = $bdd->prepare("SELECT COUNT(borrow_id) FROM borrow_copies bc
		INNER JOIN copies c 
		ON c.copy_id = bc.copy_id
		WHERE c.book_id = ?
		AND bc.rendering_date IS NULL"
		);

	$count_indisponible->execute(array($id));

	$nb_indisponible = $count_indisponible->fetch();


	// Nombre de documents reservés

	$count_reserves = $bdd->prepare("SELECT COUNT(reserve_id) FROM reserve_copies rc
		INNER JOIN copies c 
		ON c.copy_id = rc.copy_id
		WHERE c.book_id = ? "
		);

	$count_reserves->execute(array($id));

	$nb_reserves = $count_reserves->fetch();


	// Opérations

	$indisponible = $nb_indisponible[0] + $nb_reserves[0];

	return $disponible = $nbdoc[0] - $indisponible; 
}
