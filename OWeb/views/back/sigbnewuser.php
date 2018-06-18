<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">	
	<title>SIGB - Catalogue</title>
	<link rel="stylesheet" type="text/css" href="/OWeb/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="/OWeb/css/styleback.css">
</head>

<body>
<?php include ("navbar-admin.php"); include ("headerback.php"); ?>

	<div class="container" id="users">

	<fieldset>
		<legend>Enregistrer un nouvel abonné</legend>

		<div class="add_user">

		<form method="post" action="" class="add_user" id="add_user_first_form">

			<div class="add_user_colonne add_user_colonne_gauche">
				<p>
				<label for="nom">Nom</label>
				</p>
				<p>
					<input type="text" name="nom">
				</p>
				<p>
					<label for="prenom">Prénom</label>
				</p>
				<p>
					<input type="text" name="prenom">
				</p>
				<p>
					<label>Coordonnées</label>
				</p>
				<p id="coordonnees">
					<input type="email" name="email" placeholder="email">

					<input type="text" name="adresse" placeholder="adresse">

					<input type="" name="cp" placeholder="code postal" id="cp">

					<input type="text" name="ville" placeholder="ville" id="ville">

					<input type="tel" name="telephone" placeholder="telephone">
				</p>
			</div>
			
			<div class="add_user_colonne">
				<p>
					<label for="date_naissance">Date de naissance</label>
				</p>
				<p>
					<input type="date" name="date_naissance">
				</p>
				<p>
					<label for="password">Mot de passe</label>
				</p>
				<p>
					<input type="password" name="password">
				</p>
				<p>
					<label for="contact">Référant</label>
				</p>
				<p>
					Mr ou Mme 
					<select name="contact">
						<option>Richard</option>
						<option>De Briart</option>
						<option>Robert</option>
						<option>Leblanc</option>
						<option>Carpentier</option>
						<option>Joliveur</option>
					</select>
				</p>
				<p>
					<input type="checkbox" name="abonnement">
					<label for="abonnement">Abonnement payé</label>
				</p>
				<p>
					<input type="submit" name="enregistrer" value="Enregistrer" class="btn btn-success">
				</p>
			</div>

		</form>
		

		<div class="add_user_colonne">
			<!-- <form method="post" action="">
				<p>
					<label for="search_user">Rechercher un utilisateur</label>
				</p>
				<p>
					<input type="text" name="search_user">
				</p>
				<p>
					<input type="submit" name="Rechercher" value="Rechercher" class="btn btn-primary">
				</p>
			</form>
 -->
			<a href="/OWeb/sigbviewuser/">
				<button class="btn btn-primary" id="view_users">Voir tous les utilisateurs</button>
			</a>


			<?php 

			if(!empty($_SESSION["alert"])){
				echo '<div class="alert alert-danger" role="alert">'.$_SESSION["alert"].'</div>';
				unset($_SESSION["alert"]);
			}

			 ?>
		</div>

		</div>
			
	</fieldset>

	</div>
<script type="text/javascript" src="/OWeb/js/sigb.js"></script>
</body>

</html>