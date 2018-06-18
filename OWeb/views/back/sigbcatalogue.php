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


	<div class="container" id="catalogue">

		<div id="catalogue_input">
			<form method="post" action="">
				<div id="catalogue_input_gauche">
					<p>
						<label for="titre">Titre</label><br>
						<input type="text" name="titre">
					</p>
					<p>
						<label for="auteur">Auteur</label><br>
						<input type="text" name="auteur">
					</p>
					<p>
						<label for="categorie">Catégorie</label><br>
						<!-- <input type="text" name="categorie"> -->
						<select name="categorie">
							<option></option>
							<option>Littérature</option>
							<option>Voyages</option>
							<option>Cuisine</option>
							<option>Animaux</option>
							<option>Enfance</option>
							<option>Sciences humaines et sociales</option>
							<option>Poésie</option>
							<option>Bande dessinée</option>
							<option>Pratique</option>
							<option>Professionnel</option>
							<option>Nature et environnement</option>
							<option>People</option>
						</select>
					</p>
				</div>	<!-- CATALOGUE_INPUT_GAUCHE -->

				<div id="catalogue_input_droite">
					<p>
						<label for="date_publication">Date de publication</label><br>
						<input type="date" name="date_publication">
					</p>
					<p>
						<input type="checkbox" name ="periodiques" id="periodiques">
						<label for="periodiques">Chercher dans les périodiques</label>
					</p>
					<p>
						<input class="btn btn-default" type="submit" name="rechercher" value="Rechercher">
					</p>
				</div>	<!-- CATALOGUE_INPUT_DROITE -->
			</form>
		</div> <!-- CATALOGUE_INPUT -->


		<div id="catalogue_tableau">
			<table class="table table-striped">
				<!-- <caption>Résultats de la recherche</caption> -->
				<thead>
					<tr class="info">
						<th >
							N°
						</th>
						<th >
							Titre
						</th>
						<th >
							Sous-titre
						</th>
						<th>
							Auteur
						</th>
						<th>
							Catégories
						</th>
						<th >
							N° copie
						</th>
						<th>
							Statut
						</th>
					
					</tr>
				</thead>
				<tbody>


				<?php
				foreach($book as $key => $livre)
				{
				echo
					'<tr>
						<td>';
							if(empty($_POST["periodiques"]))
							{
								echo $livre["book_id"];
							}
							else{
								echo $livre["periodical_id"];
							}
						echo
						'</td>
						<td >';
							if(empty($_POST["periodiques"]))
							{
								echo $livre["book_title"];
							}
							else{
								echo $livre["periodical_title"];
							}
							echo'
						</td>
						<td>';
							if(empty($_POST["periodiques"]))
							{
								echo $livre["book_subtitle"];
							}
							else{
								echo $livre["periodical_subtitle"];
							}
							echo'
						</td>
						<td>';
						if(empty($_POST["periodiques"]))
							{
								echo $livre["author_firstname"], ' ', $livre["author_lastname"];
							}
							echo'
						</td>
						<td>
							'.$livre["category_name"].'
						</td>
						<td>
							'.($key+1).'
						</td>
						<td>';
							if(empty($_POST["periodiques"]))
							{
								if((!empty($livre["rendering_date"]) || empty($livre["borrow_date"])) && empty($livre["reservation_start_date"]))
								{
									echo "<span class='vert'>Disponible</span>";
								}
								if(!empty($livre["borrow_date"]) && empty($livre["rendering_date"]))
								{
									echo "<span class='rouge'>Emprunté</span>";
								}
								if(!empty($livre["reservation_start_date"])) 
								{
									echo "<span class='orange'>Réservé</span>";
								}		
							}
							echo'
						</td>
						
					</tr>';
				}

				 ?>

				</tbody>
			</table>
		</div>

	</div> <!-- CONTAINER -->

	<<!-- td class="titres_etroits">
		<a href=""><img src="/OWeb/img/pencil.png" width="15px" height="15px" alt="modifier"></a>
	</td> -->

<script type="text/javascript" src="/OWeb/js/sigb.js"></script>
</body>

</html>