<!DOCTYPE html>
<html>
	<head>
		<title>Connexion</title>
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


		  <fieldset id="connexion" class="container col-md-4 col-md-offset-4">
			<form method="post" action="">
			  <legend class="legend">Connectez-vous</legend>

			    <div class="input-group col-md-12">
			      <input type="text" class="form-control" name="email" placeholder="Adresse e-mail" aria-describedby="basic-addon1" required>
			    </div>

			   	<div class="input-group col-md-12">
			      <input type="password" class="form-control" name="password" placeholder="Mot de passe" aria-describedby="basic-addon1" required>
			    </div>

			    <div class="input-group col-md-12">
			      <a class="col-md-6" href="/OWeb/forgetpass/">Mot de passe oublié ?</a>
			      <input id="submit" type="submit" class="btn btn-success col-md-6" value="Se connecter">
			    </div>

			    <!-- <div>
			      <button id="btn_inscription" class="btn btn-primary col-md-5" href="">Avec Facebook</button>
			      <button id="btn_inscription" class="btn btn-danger col-md-offset-2 col-md-5" href="">Avec Google +</button>
			    </div> -->
			    
			    <div class="input-group col-md-12">
			      <a href="/OWeb/inscription/" class="btn btn-default">
			      Pas encore inscrit ? INSCRIVEZ-VOUS !</a>
			    </div>
			</form>
		  </fieldset>
		</div>

		<?php include "footer.php"; ?>
	</body>

</html>