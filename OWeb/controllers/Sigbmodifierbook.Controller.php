<?php 

if(!empty($_SESSION["employee"])){

	// GET les infos du livre

	$book_id = $_GET["book_id"];
	$per_id = $_GET["per_id"];


	if($book_id != null){
		$modifier_book = $bdd->prepare("SELECT * FROM books b
		INNER JOIN publishers p ON b.publisher_id = p.publisher_id
		INNER JOIN authors a ON b.author_id = a.author_id
		INNER JOIN categories c ON b.category_id = c.category_id
		WHERE b.book_id = ?");

		$modifier_book->execute(array($book_id));

		$book = $modifier_book->fetch();
	}
	else if($per_id != null){
		$modifier_per = $bdd->prepare("SELECT * FROM periodicals p
		INNER JOIN categories c ON p.category_id = c.category_id
		WHERE b.book_id = ?");

		$modifier_per->execute(array($per_id));

		$book = $modifier_per->fetch();
	}



	// UPDATE

	if(!empty($_POST)){

		if(!empty($_POST["categorie"])){

			$categorie = $_POST["categorie"];
			// $image
			$resume = $_POST["resume"];

			if(!empty($_POST["periodique"])){
				$update_book = $bdd->prepare("UPDATE periodicals SET category_id = :categorie WHERE customer_id = :user_id");
			}

		}

	}

	require $_dir["back"]."sigbmodifierbook.php";
}
else{

	$_SESSION["info"] = "Vous ne disposez pas des droits d'accès pour accéder à cette page !";
	header('Location: http://localhost/OWeb/');

}