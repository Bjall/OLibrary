<?php 

if(!empty($_SESSION["user"])){

	$id = $_SESSION["user_id"];

	$books = $bdd->prepare("SELECT * FROM reserve_copies rc
		INNER JOIN copies c
		ON rc.copy_id = c.copy_id
		INNER JOIN books b 
		ON c.book_id = b.book_id
		INNER JOIN authors a
		ON b.author_id = a.author_id
		WHERE rc.customer_id = ? 
		ORDER BY rc.reservation_start_date");

	$books->execute(array($id));


	$periodicals = $bdd->prepare("SELECT * FROM reserve_periodicals rp
		INNER JOIN periodicals p 
		ON rp.periodical_id = p.periodical_id
		WHERE rp.customer_id = ? ");

	$periodicals->execute(array($id));

	require $_dir["front"]."reservations.php";
}
else{
	$_SESSION["info"] = "Il faut vous connecter pour accéder à cette page !";
	header('Location: http://localhost/OWeb/');
}




