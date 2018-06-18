<?php
$new = $bdd->prepare("SELECT b.book_id, b.book_title, b.book_cover, a.author_lastname, a.author_firstname, p.publisher_name FROM books b NATURAL JOIN authors a NATURAL JOIN publishers p ORDER BY b.book_id DESC LIMIT 0,5");

	$new->execute();

	$news = $new -> fetchAll();


require $_dir["views"]."front/accueil.php";
// require $_dir["controllers"]."Search.Controller.php";