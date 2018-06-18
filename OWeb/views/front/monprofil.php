<!DOCTYPE html>
<html>
<head>
	<title>Mon profil</title>
	<link rel="stylesheet" type="text/css" href="/OWeb/css/stylefront.css">
	<link rel="stylesheet" type="text/css" href="/OWeb/css/bootstrap.min.css">
</head>
<body>

	<?php 

		if(!empty($_SESSION["user"])){
			include "navbar-co.php";
		}
		else{
			include "navbar.php";
		}

		include "headerespaceperso.php" 

	?>

	<div class="espace-container">

		<fieldset>
			<legend>Mon profil</legend>

			<div class="profil-container">
				
				<div class="profil-label">
					<p>Code d'adhérent :</p>
					<p>Nom :</p>
					<p>Prénom :</p>
					<p>Age :</p>
					<p>Date de naissance :</p>
					<p>Adresse :</p>
					<p>Téléphone :</p>
					<p>Email :</p>
					<p>Adhérent depuis le :</p>
					<p>Statut abonnement :</p>
				</div>

				<div class="profil-values">

					<?php	
					echo'
					<p>'.$donnee["customer_id"].'</p>
					<p>'.$donnee["customer_lastname"].'</p>
					<p>'.$donnee["customer_firstname"].'</p>
					<p>'.floor((time() - strtotime($donnee["customer_dateofbirth"])) / 3600 / 24 / 365).' ans</p>
					<p>'.date("d M Y", strtotime($donnee["customer_dateofbirth"])).'</p>
					<p>'.$donnee["customer_address"].' '.$donnee["customer_cp"].' '.$donnee["customer_city"].'</p>
					<p>0'.$donnee["customer_telephone"].'</p>
					<p>'.$donnee["customer_email"].'</p>
					<p>'.date("d M Y", strtotime($donnee["customer_subscriptiondate"])).'</p>
					<p>A définir</p>'

					?>
				</div>
			</div>
		</fieldset>
		
		

		<a href="/OWeb/editprofil/" class="btn btn-danger" id="btn-edit-profil">Modifier mon profil</a>

	</div>

	<?php include "footer.php"; ?>

</body>
</html>