<?php 

if(!empty($_SESSION["employee"])){

	if (isset($_POST['bookAuthorLNAcquisitions']) && isset($_POST['bookAuthorFNAcquisitions']) && isset($_POST['bookCategorieAcquisitions']) && isset($_POST['bookPublisherAcquisitions'])) {

		//RECUPERATION DE l'ID DE L'AUTEUR
		$authorLN = $_POST['bookAuthorLNAcquisitions'];
		$authorFN = $_POST['bookAuthorFNAcquisitions'];
		$auteur=$bdd->prepare("SELECT author_id FROM authors WHERE author_lastname = ? AND author_firstname = ?");
		$auteur->execute(array($authorLN, $authorFN));
		$donnee = $auteur->fetch();
		$author_id = $donnee[0];

		//RECUPERATION DE L'ID DE LA CATEGORIE
		$categoryName = $_POST['bookCategorieAcquisitions'];
		$category=$bdd->prepare("SELECT category_id FROM categories WHERE category_name = ?");
		$category->execute(array($categoryName));
		$donnee = $category->fetch();
		$category_id = $donnee[0];

		//RECUPERATION DE L'ID DU PUBLISHER
		$publisherName = $_POST['bookPublisherAcquisitions'];
		$publisher=$bdd->prepare("SELECT publisher_id FROM publishers WHERE publisher_name = ?");
		$publisher->execute(array($publisherName));
		$donnee = $publisher->fetch();
		$publisher_id = $donnee[0];

	}

	//UPLOAD DE L'IMAGE
	if(!empty($_FILES['image'])) {
		$dossier = 'images/';
		$fichier = basename($_FILES['image']['name']);
		$taille_maxi = 100000;
		$taille = filesize($_FILES['image']['tmp_name']);
		$extensions = array('.png', '.jpg', '.jpeg');
		$extension = strrchr($_FILES['image']['name'], '.'); 

		if(!in_array($extension, $extensions)) //Si l'extension n'est pas dans le tableau
		{
		     $erreur = 'Vous devez uploader un fichier de type png, jpg, ou jpeg.';
		}
		if($taille>$taille_maxi)
		{
		     $erreur = 'Le fichier est trop gros...';
		}
		if(!isset($erreur)) //S'il n'y a pas d'erreur, on upload
		{
		     //On formate le nom du fichier ici...
		     $fichier = strtr($fichier, 
		          'ÀÁÂÃÄÅÇÈÉÊËÌÍÎÏÒÓÔÕÖÙÚÛÜÝàáâãäåçèéêëìíîïðòóôõöùúûüýÿ', 
		          'AAAAAACEEEEIIIIOOOOOUUUUYaaaaaaceeeeiiiioooooouuuuyy');
		     $fichier = preg_replace('/([^.a-z0-9]+)/i', '-', $fichier);
		     if(move_uploaded_file($_FILES['image']['tmp_name'], $dossier . $fichier)) //Si la fonction renvoie TRUE, c'est que ça a fonctionné...
		     {
		     	$chemin_img = $dossier.$fichier;
		     }
		     else //Sinon (la fonction renvoie FALSE).
		     {
		          echo 'Echec de l\'upload !';
		     }
		}
		else
		{
		     echo 'Echec de l\'upload !';
		}
	}


	//VERIFIE QUE LES CHAMPS NE SONT PAS VIDES
	if (!empty($_POST["bookTitleAcquisitions"]) && !empty($_POST["bookPublisherAcquisitions"]) && !empty($_POST["bookAuthorLNAcquisitions"]) && !empty($_POST["bookAuthorFNAcquisitions"]) && !empty($_POST["bookCategorieAcquisitions"]) && !empty($_POST["bookPublishDateAcquisitions"])) {

	//REQUÊTE D'AJOUT DU LIVRE
		$sql = $bdd->prepare("INSERT INTO books (book_title, book_subtitle, publisher_id, author_id, publish_book_date, category_id, book_cover, book_summary) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");

		$sql->execute(array($_POST["bookTitleAcquisitions"], $_POST["bookSubtitleAcquisitions"], $publisher_id, $author_id, $_POST["bookPublishDateAcquisitions"], $category_id, $chemin_img, $_POST["resumeAcquisitions"]));

	}


	require $_dir["back"]."sigbacquisitions.php";
}
else{

	$_SESSION["info"] = "Vous ne disposez pas des droits d'accès pour accéder à cette page !";
	header('Location: http://localhost/OWeb/');

}