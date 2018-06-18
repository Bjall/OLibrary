<!DOCTYPE html>
<html>
<head>
	<title>Mes réservations</title>
	<link rel="stylesheet" type="text/css" href="/OWeb/css/stylefront.css">
	<link rel="stylesheet" type="text/css" href="/OWeb/css/bootstrap.min.css">
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

		include "headerespaceperso.php";

		if(!empty($_SESSION["info"])){
			echo 
			'<div class="alert alert-info" role="alert">'.$_SESSION["info"].'</div>';
			unset($_SESSION["info"]);
		}
	?>


	<div class="espace-container">

		<fieldset>
			<legend>Contact</legend>

			<p>
				Nom du référent : <strong><?= $contact ?></strong>
			</p>

			<form method="post" action="">

				<p>
					<input type="text" name="objet" placeholder="Objet du message" class="form-control">
				</p>
				<p>
					<textarea type="text" name="message" placeholder="Contenu du message..." rows="10" cols="140" class="form-control"></textarea>
				</p>
				<p>
					<input type="submit" value="Envoyer" class="btn btn-success">
				</p>
				
			</form>
		
			
		</fieldset>

	</div>

	<?php include "footer.php"; ?>

</body>
</html>