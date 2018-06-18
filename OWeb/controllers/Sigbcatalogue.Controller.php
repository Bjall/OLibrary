<?php 

if(!empty($_SESSION["employee"])){

	$books = $bdd->query("SELECT * FROM books b 
			INNER JOIN authors a ON b.author_id = a.author_id 
			INNER JOIN categories c ON b.category_id = c.category_id
			LEFT JOIN copies cop ON b.book_id = cop.book_id
			LEFT JOIN borrow_copies bc ON cop.copy_id = bc.copy_id
			LEFT JOIN reserve_copies rc ON rc.copy_id = cop.copy_id
			ORDER BY b.book_id");

	if(!empty($_POST))
	{
		$titre = $_POST["titre"];
		$auteur = $_POST["auteur"];
		$categorie = $_POST["categorie"];
		$date_publication = $_POST["date_publication"];


		if(empty($_POST["periodiques"]))
		{
			$books = $bdd->prepare("SELECT * FROM books b 
			INNER JOIN authors a ON b.author_id = a.author_id 
			INNER JOIN categories c ON b.category_id = c.category_id
			INNER JOIN copies cop ON b.book_id = cop.book_id
			LEFT JOIN borrow_copies bc ON cop.copy_id = bc.copy_id
			LEFT JOIN reserve_copies rc ON rc.copy_id = cop.copy_id
			WHERE (b.book_title LIKE '%' :titre '%' 
			OR b.book_subtitle LIKE '%' :titre '%')
			AND (a.author_firstname LIKE '%' :auteur '%' 
			OR a.author_lastname LIKE '%' :auteur '%')
			AND c.category_name LIKE '%' :categorie '%'
			AND b.publish_book_date LIKE '%' :date_publication '%' 
			ORDER BY b.book_id");
		}

		if(!empty($_POST["periodiques"]))
		{
			$books = $bdd->prepare("SELECT * FROM periodicals p 
			INNER JOIN categories c ON p.category_id = c.category_id 
			WHERE (p.periodical_title LIKE '%' :titre '%' 
			OR p.periodical_subtitle LIKE '%' :titre '%')	
			AND c.category_name LIKE '%' :categorie '%'
			AND p.periodical_date LIKE '%' :date_publication '%' ");
		}


		$books->execute(array(
			'titre' => $titre,
			'auteur' => $auteur,
			'categorie' => $categorie,
			'date_publication' => $date_publication
			));	


		// $nb_emprunt = $bdd->prepare("SELECT COUNT(*)
		// 	FROM books b 
		// 	INNER JOIN copies cop ON b.book_id = cop.book_id
		// 	INNER JOIN borrow_copies bc ON cop.copy_id = bc.copy_id
		// 	WHERE borrow_date IS NOT NULL
		// 	AND book_id = ".$_GET['book_id']." ");

		// $nb_emp = $nb_emprunt->execute();
	}

	$book = $books -> fetchAll();


	require $_dir["back"]."sigbcatalogue.php";
}
else{

	$_SESSION["info"] = "Vous ne disposez pas des droits d'accès pour accéder à cette page !";
	header('Location: http://localhost/OWeb/');

}

