<!DOCTYPE html>
<html>
<head>
	<title>Mon espace personnel</title>
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
	?>

	<div class="espace-accueil">
		
		<a href="/OWeb/monprofil/">
			<div class="espace-btn-accueil" id="espace-btn-success">
				<p>Mon profil</p>
			</div>
		</a>

		<a href="/OWeb/monsuivi/">
			<div class="espace-btn-accueil" id="espace-btn-warning">
				<p>Mon suivi</p>
			</div>
		</a>

		<a href="/OWeb/reservations/">
			<div class="espace-btn-accueil" id="espace-btn-info">
				<p>Mes réservations</p>
			</div>
		</a>

		<a href="/OWeb/contact/">
			<div class="espace-btn-accueil" id="espace-btn-danger">
				<p>Contact</p>
			</div>
		</a>

	</div>

	<?php include "footer.php"; ?>

</body>
</html>