<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>SIGB</title>
		<link rel="stylesheet" type="text/css" href="/OWeb/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="/OWeb/css/styleback.css">
	</head>

	<body>
	<?php include ("navbar-admin.php"); 
	include ("headerback.php"); ?>
	
		<div class="container" id="circulation">
			<!--Tableau de circulation-->
			<table id="tableau_circulation" class="table table-striped"> 
				<!--En-tête du tableau-->
				<thead>
					<tr class="info">
						<th>
							N°
						</th>
						<th>
							Titre
						</th>
						<th>
							Auteur
						</th>
						<th>
							Emprunteur
						</th>
						<th>
							Date de retour
						</th>
						<th>
							Etat
						</th>

					</tr>
				</thead>
				
				<!--Contenu du tableau-->
				<tbody id="body_tab_circulation">
				
					<?php

						// Pour chaque livre emprunté
						foreach($donnees as $livre)
						{
							echo
								'<tr>
									<td>';
									echo $livre["copy_id"];
								echo '</td>

									<td>';
									echo $livre["book_title"];
								echo '</td>

									<td>';
									echo $livre["author_firstname"], ' ', $livre["author_lastname"];
								echo '</td>

									<td>';
									echo $livre["customer_firstname"], ' ', $livre["customer_lastname"];
								echo '</td>

									<td>';
									echo $livre["return_date"];
								echo '</td>
									<td>';
									if($livre["return_date"] >= date("Y-m-d")){
										echo 'OK';
									}
									else{
										echo 'Retard';
									}
								echo'</td>
								</tr>';
						}

						?>

				</tbody>
			</table>
		</div>
		<script type="text/javascript" src="/OWeb/js/sigb.js"></script>
	</body>
</html>