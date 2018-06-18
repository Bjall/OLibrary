<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">	
	<title>SIGB - Modifier utilisateur</title>
	<link rel="stylesheet" type="text/css" href="/OWeb/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="/OWeb/css/styleback.css">
</head>

<body>
<?php include ("navbar-admin.php"); include ("headerback.php"); ?>

	<div class="container" id="catalogue">

		<fieldset>
		<legend>Modifier un utilisateur</legend>

		<form method="post" action="" class="add_user" id="add_user_first_form">

			<div class="add_user_colonne add_user_colonne_gauche">
				<p>
				<label for="nom">Nom</label>
				</p>
				<p>
					<input type="text" name="nom" value="<?=$user['customer_lastname']?>" disabled="disabled">
				</p>
				<p>
					<label for="prenom">Prénom</label>
				</p>
				<p>
					<input type="text" name="prenom" value="<?=$user['customer_firstname']?>" disabled="disabled">
				</p>
				<p>
					<label>Coordonnées</label>
				</p>
				<p id="coordonnees">
					<input type="email" name="email" value="<?=$user['customer_email']?>">

					<input type="text" name="adresse" value="<?=$user['customer_address']?>">

					<input type="" name="cp" value="<?=$user['customer_cp']?>" id="cp">

					<input type="text" name="ville" value="<?=$user['customer_city']?>" id="ville">

					<input type="tel" name="telephone" value="<?=$user['customer_telephone']?>">
				</p>
			</div>
			<div class="add_user_colonne">
				<p>
					<label for="date_naissance">Date de naissance</label>
				</p>
				<p>
					<input type="date" name="date_naissance" value="<?=$user['customer_dateofbirth']?>" disabled="disabled">
				</p>
				<p>
					<label for="password">Mot de passe</label>
				</p>
				<p>
					<input type="password" name="password" value="<?=$user['customer_dateofbirth']?>" disabled="disabled">
				</p>
				<p>
					<label for="contact">Référant</label>
				</p>
				<p>
					Mr ou Mme 
					<input type="text" name="contact" value="<?=$ref_name['employee_lastname']?>" disabled="disabled">
				</p>
				<p>
					<input type="checkbox" name="abonnement">
					<label for="abonnement">Abonnement payé</label>
				</p>
				<p>
					<input type="submit" name="modifier" value="Modifier" class="btn btn-success">
					<a href="/OWeb/sigbviewuser/"><button class="btn btn-danger">Retour</button></a>
				</p>

			</div>
		</form>

	</fieldset>

	</div>
<script type="text/javascript" src="/OWeb/js/sigb.js"></script>
</body>

</html>