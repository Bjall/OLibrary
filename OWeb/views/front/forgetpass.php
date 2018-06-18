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

	if(!empty($_SESSION["info"])){
		echo '<div class="alert alert-info" role="alert">'.$_SESSION["info"].'</div>';
		unset($_SESSION["info"]);
	}

?>

<div class="fullsize">
	
	<fieldset id="forgetpass" class="container col-md-4 col-md-offset-4">
	
		<form method="post">

			<legend class="legend">Mot de passe oublié</legend>
			
			<div class="input-group col-md-12">
				<input type="email" name="email" placeholder="Adresse e-mail" class="form-control">
			</div>

			<div class="input-group col-md-12">
				<input type="submit" value="Valider" class="btn btn-success">
			</div>

		</form>

		<div class="forgetpass_info">
			<em>
				Après avoir indiqué votre adresse de messagerie, vous recevrez un email contenant un mot de passe provisoire. Merci de vous connecter avec ce dernier et de le changer avec un mot de passe personnalisé dans votre espace personnel.
			</em>
		</div>

	</fieldset>

</div>

<?php include "footer.php"; ?>