<?php 

if(!empty($_SESSION["employee"])){

	$date_actuelle = $bdd->prepare("SELECT UTC_DATE() FROM DUAL");

	$date_actuelle->execute();

	$date_actuelle = $date_actuelle->fetch();

	$date = $date_actuelle[0];

	$date_retour = $bdd->prepare("SELECT DATE_ADD(UTC_DATE(), INTERVAL 15 DAY) FROM DUAL");

	$date_retour->execute();

	$date_retour = $date_retour->fetch();

	$retour = $date_retour[0];


	if(!empty($_POST)){
		if(!empty($_POST["num_reserv"]) || !empty($_POST["num_copie"]) && (!empty($_POST["num_user"]) || !empty($_POST["email"]))){

			// On définit les variables

			$num_reserv = $_POST["num_reserv"];
			$num_copie = $_POST["num_copie"];
			$num_user = $_POST["num_user"];
			$email = $_POST["email"];

			if(!empty($num_reserv)){
				if(!empty($_POST["periodique"])){
					$req = $bdd->prepare("SELECT * FROM reserve_periodicals WHERE reserve_p_id = ?");

					$del = $bdd->prepare("DELETE FROM reserve_periodicals WHERE reserve_p_id = ?");
				}
				else{
					$req = $bdd->prepare("SELECT * FROM reserve_copies WHERE reserve_id = ?");

					$del = $bdd->prepare("DELETE FROM reserve_copies WHERE reserve_id = ?");
				}

				$req->execute(array($num_reserv));
				$donnees = $req->fetch();

				$copy_id = $donnees[1];
				$customer_id = $donnees[2];
			}
			else if(empty($num_reserv)){
				$copy_id = $num_copie;

				if(!empty($num_user)){
					$customer_id = $num_user;
				}
				else if(empty($num_user) && !empty($email)){
					$sql = $bdd->prepare("SELECT * FROM customers WHERE customer_email = ?");
					$sql->execute(array($email));
					$res = $sql->fetch();
					$customer_id = $res[0];
				}
			}

			// On prépare les requêtes

			if(!empty($_POST["periodique"])){
				$insert = $bdd->prepare("INSERT INTO borrow_periodicals(borrow_p_id, periodical_id, customer_id, borrow_date, return_date) VALUES (DEFAULT, :copy_id, :customer_id, :borrow_date, :retour) " );
			}
			else if(empty($_POST["periodique"])){
				$insert = $bdd->prepare("INSERT INTO borrow_copies(borrow_id, copy_id, customer_id, borrow_date, return_date) VALUES (DEFAULT, :copy_id, :customer_id, :borrow_date, :retour) " );
			}

			$insert->execute(array(
				'copy_id' => $copy_id,
				'customer_id' => $customer_id,
				'borrow_date' => $date,
				'retour' => $retour
				));

			if(!empty($num_reserv)){
				$del->execute(array($num_reserv));
			}

			$_SESSION["emprunt"] = "Emprunt enregistré";
		}
		else{
			$_SESSION["emprunt"] = "Echec lors de l'emprunt";
		}
	}


	require $_dir["back"]."sigbemprunts.php";
}
else{

	$_SESSION["info"] = "Vous ne disposez pas des droits d'accès pour accéder à cette page !";
	header('Location: http://localhost/OWeb/');

}

