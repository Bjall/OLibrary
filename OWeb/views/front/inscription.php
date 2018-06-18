<!DOCTYPE html>
<html>
	<head>
		<title>Inscription</title>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="/OWeb/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="/OWeb/css/stylefront.css">
		<script type="text/javascript" src="/js/jquery-3.1.1.min.js"></script>
		<script type="text/javascript" src="/js/fonctions.js"></script>
	</head>

	<body>

	<?php 
		if(!empty($_SESSION["user"])){
			include "navbar-co.php";
		}
		else if(!empty($_SESSION["employee"])){
			include "navbar-admin.php";
		}
		else{
			include "navbar.php";
		}
		

	?>

		<div class="fullsize">

		<?php 

			if(!empty($_SESSION["info"])){
				echo '<div class="alert alert-info" role="alert">'.$_SESSION["info"].'</div>';
				unset($_SESSION["info"]);
			}
			
		 ?>


		  <fieldset id="inscription" class="container col-md-4 col-md-offset-4">
			<form method="post" action="">
			  <legend class="legend">Inscrivez-vous</legend>

			    <div class="input-group col-md-12">
			      <input type="email" class="form-control" name="email" placeholder="Adresse e-mail" aria-describedby="basic-addon1" required>
			    </div>

			    <div class="input-group col-md-12">
			      <input type="text" class="form-control" name="nom" placeholder="Nom" aria-describedby="basic-addon1" required>
			    </div>

			    <div class="input-group col-md-12">
			      <input type="text" class="form-control" name="prenom" placeholder="Prénom" aria-describedby="basic-addon1" required>
			    </div>

			    <div class="input-group col-md-12">
			      <input type="date" class="form-control" name="birth" placeholder="Date de Naissance" aria-describedby="basic-addon1" required>
			    </div>

			    <div class="input-group col-md-12">
			      <input type="password" class="form-control" name="password" placeholder="Mot de passe" aria-describedby="basic-addon1" required>
			    </div>

			    <div class="input-group col-md-12">
			      <input type="password" class="form-control" name="confirmpassword" placeholder="Confirmation mot de passe" aria-describedby="basic-addon1" required>
			    </div>

			    <div class="input-group col-md-12">
			      <input type="tel" class="form-control" name="telephone" placeholder="Téléphone" aria-describedby="basic-addon1" required>
			    </div>

			    <div class="input-group col-md-12">
			      <input type="text" class="form-control" name="adresse" placeholder="Adresse" aria-describedby="basic-addon1" required>
			    </div>

			    <div class="input-group col-md-12">
			      <input type="text" class="form-control" name="codepostal" placeholder="Code Postal" aria-describedby="basic-addon1" required>
			    </div>
			    <div class="input-group col-md-12">
			      <input type="text" class="form-control" name="ville" placeholder="Ville" aria-describedby="basic-addon1" required>
			    </div>

			    <div id="checkbox" class="checkbox">
				    <label>
				      <input type="checkbox" name="conditions" required>J'accepte sans réserve les <a href="/OWeb/conditions/" target="_blank">conditions générales d'utilisation</a>
				    </label>
				</div>

			    <div class="input-group col-md-12">
			      <input id="submit" type="submit" class="btn btn-success" value="Confirmer votre inscription">
			    </div>

			    <div class="input-group col-md-12">
			      <a href="/OWeb/connexion/" class="btn btn-default">
			      Déjà inscrit ? CONNECTEZ-VOUS !</a>
			    </div>
			</form>
		  </fieldset>
		</div>
	</body>

	<?php include "footer.php"; ?>

</html>