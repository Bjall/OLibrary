<?php 

// Dates

$date_actuelle = $bdd->prepare("SELECT UTC_DATE() FROM DUAL");

$date_actuelle->execute();

$date_actuelle = $date_actuelle->fetch();

$reservation_date = $date_actuelle[0];

$date_fin = $bdd->prepare("SELECT DATE_ADD(UTC_DATE(), INTERVAL 7 DAY) FROM DUAL");

$date_fin->execute();

$date_fin = $date_fin->fetch();

$reservation_end_date = $date_fin[0];

// ID user et book

$copy_id = $_GET["copy_id"];

$customer_id = $_SESSION["user_id"];

// Insert

$sql = $bdd->prepare("INSERT INTO reserve_copies(reserve_id, copy_id, customer_id, reservation_start_date, reservation_end_date) VALUES(DEFAULT, :copy_id, :customer_id, :reservation_date, :reservation_end_date) ");

$sql->execute(array(
	'copy_id' => $copy_id,
	'customer_id' => $customer_id,
	'reservation_date' => $reservation_date,
	'reservation_end_date' => $reservation_end_date
	));

$_SESSION["info"] = "Vous avez bien réservé ce document, pensez à le retirer en bibliothèque sous 7 jours. Vous retrouverez toutes les informations dans votre espace personnel, rubrique 'Réservations'.";

header ("Location: $_SERVER[HTTP_REFERER]" );