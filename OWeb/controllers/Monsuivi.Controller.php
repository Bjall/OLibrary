<?php 

if(!empty($_SESSION["user"])){

	$id = $_SESSION["user_id"];

	$books = $bdd->prepare("SELECT * FROM borrow_copies bc
		INNER JOIN copies c
		ON bc.copy_id = c.copy_id
		INNER JOIN books b 
		ON c.book_id = b.book_id
		INNER JOIN authors a
		ON b.author_id = a.author_id
		WHERE bc.customer_id = ? 
		AND bc.rendering_date IS NULL
		ORDER BY bc.borrow_date");

	$books->execute(array($id));


	$periodicals = $bdd->prepare("SELECT * FROM borrow_periodicals bp
		INNER JOIN periodicals p 
		ON bp.periodical_id = p.periodical_id
		WHERE bp.customer_id = ? 
		AND bp.rendering_date IS NULL
		ORDER BY bp.borrow_date");

	$periodicals->execute(array($id));


	// HISTORIQUES

	$historique_books = $bdd->prepare("SELECT * FROM borrow_copies bc
		INNER JOIN copies c
		ON bc.copy_id = c.copy_id
		INNER JOIN books b 
		ON c.book_id = b.book_id
		INNER JOIN authors a
		ON b.author_id = a.author_id
		WHERE bc.customer_id = ? 
		AND bc.rendering_date IS NOT NULL
		ORDER BY bc.borrow_date DESC");

	$historique_books->execute(array($id));


	$historique_periodicals = $bdd->prepare("SELECT * FROM borrow_periodicals bp
		INNER JOIN periodicals p 
		ON bp.periodical_id = p.periodical_id
		WHERE bp.customer_id = ? 
		AND bp.rendering_date IS NOT NULL
		ORDER BY bp.borrow_date DESC");

	$historique_periodicals->execute(array($id));



	require $_dir["front"]."monsuivi.php";
}
else{
	$_SESSION["info"] = "Il faut vous connecter pour accéder à cette page !";
	header('Location: http://localhost/OWeb/');
}
