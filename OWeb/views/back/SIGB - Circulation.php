<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>SIGB</title>
		<link rel="stylesheet" type="text/css" href="/OWeb/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="/OWeb/css/styleback.css">
	</head>

	<body>
		<div class="container" id="circulation">
			<!--Tableau de circulation-->
			<table id="tableau_circulation">
				<!--En-tête du tableau-->
				<thead>
					<tr>
						<th class="titres_etroits">
							N°
						</th>
						<th class="titres_larges">
							Titre
						</th>
						<th class="titres_larges">
							Auteur
						</th>
						<th class="titres_etroits">
							Emprunteur
						</th>
						<th class="titres_etroits">
							Date de retour
						</th>
						<th>
							Etat
						</th>
						<th id="compense_scroll"  class="titres_etroits">
						</th>
					</tr>
				</thead>
				
				<!--Contenu du tableau-->
				<tbody>
					<?php
						// Pour chaque livre emprunté
						foreach($book as $livre)
						{
							echo 
						}
						?>




					<tr>
						<?php		
								// pour chaque colonne (de la ligne)
								for ($j=1; $j<=$NbrCol; $j++) 
								{ 
						?>		
						<td>
							<?php			
								// -------------------------
								// DONNEES A AFFICHER dans la cellule
									echo 'ligne '. $i .', colonne '. $j; // CONTENU de la CELLULE (exemple)
								// -------------------------
							?>		
						</td>
						<?php	} // end for
						?>
					</tr>
					<?php	} // end for
					?>
				</tbody>

			</table>
		</div>
	</body>
</html>