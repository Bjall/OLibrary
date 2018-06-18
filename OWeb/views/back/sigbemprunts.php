<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">	
	<title>SIGB - Catalogue</title>
	<link rel="stylesheet" type="text/css" href="/OWeb/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="/OWeb/css/styleback.css">
	<script type="text/javascript" src="/OWeb/js/jquery-3.1.1.min.js"></script>
</head>

<body>
<?php include ("navbar-admin.php"); include ("headerback.php"); ?>
	<div class="container" id="emprunts">

	<fieldset>
		<legend>Emprunt d'un livre</legend>

	<div class="flex_colonnes">

		<form method="post" action="">
			<div class="add_user" id="form_emprunt">
				<div class="add_user_colonne">
					<p>
						<input type="checkbox" name="periodique"> 
						<label for="periodique">Périodique</label>
					</p>
					<p>
						<label for="num_reserv">N° de réservation</label>
					</p>
					<p>
						<input type="number" name="num_reserv">
					</p>

					<p>
						<label for="num_copie">N° de la copie</label>
					</p>
					<p>
						<input type="number" name="num_copie">
					</p>
				</div>

				<div class="add_user_colonne">
					<p>
						<label for="num_user">N° Abonné</label>
					</p>
					<p>
						<input type="number" name="num_user">
					</p>

					<p>
						<label for="email">Email de l'abonné</label>
					</p>
					<p>
						<input type="Email" name="email">
					</p>
					<p>
						<input type="submit" value="Valider" class="btn btn-success">
					</p>
				</div>
			</div>
		</form>

		<div class="alert alert-warning date-retour">

			<p id="date">
				Emprunt le : <?=$date?>
			</p>
			<p id="retour">
				Retour attendu le : <?=$retour?>
			</p>

		</div>

	</div>

	<?php 

	if(!empty($_SESSION["emprunt"])){
		echo '<div class="alert alert-info">';
		echo $_SESSION["emprunt"];
		echo '</div>';
		unset($_SESSION["emprunt"]);
	}

	 ?>

	</fieldset>

	</div>
	<script type="text/javascript" src="/OWeb/js/sigb.js"></script>
</body>