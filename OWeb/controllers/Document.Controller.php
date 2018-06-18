<?php 

$id = $_GET["id"];

// Infos du document

$sql = $bdd->prepare("SELECT * FROM books b
		INNER JOIN authors a 
		ON b.author_id = a.author_id
		INNER JOIN publishers p 
		ON b.publisher_id = p.publisher_id
		WHERE b.book_id = ? ");

$sql->execute(array($id));

$donnee = $sql->fetch();


// DISPONIBILITES


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

$disponible = $nbdoc[0] - $indisponible;




// RESERVATION

// Pour la RESERVATION : ID d'un numéro de copie qui n'est ni réservé ni emprunté...

// Toutes les copies
$copies = $bdd->prepare("SELECT copy_id FROM copies 
	WHERE book_id = ?");
$copies->execute(array($id));

// Les copies empruntées
$copies_indisponible = $bdd->prepare("SELECT bc.copy_id FROM borrow_copies bc
	INNER JOIN copies c 
	ON c.copy_id = bc.copy_id
	WHERE c.book_id = ?
	AND bc.rendering_date IS NULL");
$copies_indisponible->execute(array($id));

// Les copies réservées
$copies_reservees = $bdd->prepare("SELECT rc.copy_id FROM reserve_copies rc
	INNER JOIN copies c 
	ON c.copy_id = rc.copy_id
	WHERE c.book_id = ? ");
$copies_reservees->execute(array($id));

// Tableau des copies disponibles
$copiesArray = array();

//On le rempli 
foreach($copies as $cop){
	array_push($copiesArray, $cop['copy_id']); 
}
// On supprimes les copies empruntées
foreach($copies_indisponible as $ci){
	for($i = 0; $i<count($copiesArray); $i++){
		if($ci['copy_id'] == $copiesArray[$i]){
			unset($copiesArray[$i]);
		}
	}
}

// array_values réinitialise les numéros de case du tableau
$copiesArray = array_values($copiesArray);	

// On supprimes les copies réservées
foreach($copies_reservees as $cr){
	for($i = 0; $i<count($copiesArray); $i++){
		if($cr['copy_id'] == $copiesArray[$i]){
			unset($copiesArray[$i]);
		}
	}
}

$copiesArray = array_values($copiesArray);	

$reserve_copie = $copiesArray[0];

require $_dir["front"]."document.php";