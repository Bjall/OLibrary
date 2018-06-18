<?php 

if(!empty($_SESSION["employee"])){

	if(!empty($_POST)){

		if(!empty($_POST["nom"]) && !empty($_POST["prenom"]) && !empty($_POST["email"]) && !empty($_POST["adresse"]) && !empty($_POST["cp"]) && !empty($_POST["ville"]) && !empty($_POST["telephone"]) && !empty($_POST["date_naissance"]) && !empty($_POST["password"]) && !empty($_POST["contact"]))
		{

			$nom = $_POST["nom"];
			$prenom = $_POST["prenom"];
			$email = $_POST["email"];
			$adresse = $_POST["adresse"];
			$cp = $_POST["cp"];
			$ville = $_POST["ville"];
			$telephone = $_POST["telephone"];
			$date_naissance = $_POST["date_naissance"];
			$password = hash("sha256", $_POST["password"]);

			// Si il est abonné, date d'aujourd'hui
			if(!empty($_POST["abonnement"])){
				$abonnement = date("Y-m-d");
			}
			else{
				$abonnement = null;
			}

			// On récupère l'ID de l'employé référant
			$sql = $bdd->prepare("SELECT * FROM employees WHERE employee_lastname = ?");

			$sql->execute(array($_POST["contact"]));

			$donnee = $sql->fetch();

			$contact = $donnee[0];



			$req = $bdd->prepare("INSERT INTO customers(customer_id, customer_lastname, customer_firstname, customer_address, customer_cp,customer_city, customer_telephone, customer_email, customer_dateofbirth, customer_password, customer_subscriptiondate, contact) VALUES (DEFAULT, :nom, :prenom, :adresse, :cp, :ville, :telephone, :email, :date_naissance, :password, :abonnement, :contact) ");

			$req->execute(array(
				'nom' => $nom,
				'prenom' => $prenom,
				'adresse' => $adresse,
				'cp' => $cp,
				'ville' => $ville,
				'telephone' => $telephone,
				'email' => $email,
				'date_naissance' => $date_naissance,
				'password' => $password,
				'abonnement' => $abonnement,
				'contact' => $contact
				));

			$_SESSION["alert"] = "Nouvel utilisateur enregistré";

		}
		else{
			$_SESSION["alert"] = "Veuillez remplir tous les champs";
		}

	}

	require $_dir["back"]."sigbnewuser.php";
}
else{

	$_SESSION["info"] = "Vous ne disposez pas des droits d'accès pour accéder à cette page !";
	header('Location: http://localhost/OWeb/');

}