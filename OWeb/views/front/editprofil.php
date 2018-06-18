<?php 

	if(!empty($_SESSION["user"])){
		include "navbar-co.php";
	}
	else{
		include "navbar.php";
	}

	if(!empty($_SESSION["info"])){
		echo '<div class="alert alert-info" role="alert">'.$_SESSION["info"].'</div>';
		unset($_SESSION["info"]);
	}

	include "headerespaceperso.php" 

?>


<div class="espace-container">

	<fieldset>
		<legend>Modifier mon profil</legend>

		<form method="post" class="well">
			
			<div class="form-flex">
				<div>
					<p>
						<label for="adresse">Adresse</label>
					</p>
					<p>
						<input type="text" name="adresse" value="<?=$donnee["customer_address"]?>">
					</p>

					<p>
						<label for="cp">Code Postal</label>
					</p>
					<p>
						<input type="text" name="cp" value="<?=$donnee["customer_cp"]?>">
					</p>

					<p>
						<label for="ville">Ville</label>
					</p>
					<p>
						<input type="text" name="ville" value="<?=$donnee["customer_city"]?>">
					</p>

					<p>
						<label for="tel">Téléphone</label>
					</p>
					<p>
						<input type="tel" name="tel" value="0<?=$donnee["customer_telephone"]?>">
					</p>
				</div>

				<div>
					<p>
						<label for="password">Mot de passe</label>
					</p>
					<p>
						<input type="password" name="password">
					</p>

					<p>
						<label for="confirmpassword">Confirmer le mot de passe</label>
					</p>
					<p>
						<input type="password" name="confirmpassword">
					</p>

					<p>
						<label for="email">Email</label>
					</p>
					<p>
						<input type="email" name="email" value="<?=$donnee["customer_email"]?>">
					</p>
					
					<p>
						<input type="submit" value="Modifier" class="btn btn-success">
					</p>
				</div>
			</div>

		</form>


</div>