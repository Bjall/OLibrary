<?php include ("navbar-admin.php"); include ("headerback.php"); ?>

<div class="container">

	<fieldset>
		<legend>Les emprunts de <?= $ident["customer_firstname"]." ".$ident["customer_lastname"]; ?></legend>

		<table  class="table table-striped">

			<thead>
				<tr class="danger">
					<th>Titre</th>
					<th>Auteur</th>
					<th>Date de prêt</th>
					<th>Date de retour</th>
					<th>Retard</th>
				</tr>
			</thead>

			<?php 

				foreach($books as $book){

					

					if($book["return_date"] < date("Y-m-d")){	

						$retour = new DateTime($book["return_date"]);
						$now = new DateTime();

						$retard = $retour->diff($now)->format("%a jours");	
					}
					else{
						$retard = "Non";
					}
					
					echo
						'<tr>
							<td>'.$book["book_title"].' '.$book["book_subtitle"].'</td>
							<td>'.$book["author_firstname"].' '.$book["author_lastname"].'</td>
							<td>'.date("d M Y", strtotime($book["borrow_date"])).'</td>
							<td>'.date("d M Y", strtotime($book["return_date"])).'</td>	
							<td>'.$retard.'</td>	
						</tr>';
				}

			 foreach($periodicals as $periodical){

					

					if($periodical["return_date"] < date("Y-m-d")){	

						$retour = new DateTime($periodical["return_date"]);
						$now = new DateTime();

						$retard = $retour->diff($now)->format("%a jours");	
					}
					else{
						$retard = "Non";
					}
					
					echo
						'<tr>
							<td>'.$periodical["periodical_subtitle"].'</td>
							<td>'.$periodical["periodical_title"].'</td>
							<td>'.date("d M Y", strtotime($periodical["borrow_date"])).'</td>
							<td>'.date("d M Y", strtotime($periodical["return_date"])).'</td>	
							<td>'.$retard.'</td>	
						</tr>';
				}

			 ?>

		</table>
	</fieldset>



	<fieldset>
		<legend>Les réservations de <?= $ident["customer_firstname"]." ".$ident["customer_lastname"]; ?></legend>
	
		<table  class="table table-striped">

			<thead>
				<tr class="success">
					<th>Titre</th>
					<th>Auteur</th>
					<th>Réservé le</th>
					<th>Retrait avant le</th>
				</tr>
			</thead>

			<tbody>

		<?php 

			foreach($rbooks as $book){
				echo
					'<tr>
						<td>'.$book["book_title"].' '.$book["book_subtitle"].'</td>
						<td>'.$book["author_firstname"].' '.$book["author_lastname"].'</td>
						<td>'.date("d M Y", strtotime($book["reservation_start_date"])).'</td>
						<td>'.date("d M Y", strtotime($book["reservation_end_date"])).'</td>	
					</tr>';
			}


			foreach($rperiodicals as $periodical){
				echo
					'<tr>
						<td>'.$periodical["periodical_subtitle"].'</td>
						<td>'.$periodical["periodical_title"].'</td>
						<td>'.date("d M Y", strtotime($periodical["reservation_start_date"])).'</td>
						<td>'.date("d M Y", strtotime($periodical["reservation_end_date"])).'</td>	
					</tr>';
			}
		 ?>
			
		</tbody>
			
		</table>
	</fieldset>



	<fieldset>
				<legend>L'historique de <?= $ident["customer_firstname"]." ".$ident["customer_lastname"]; ?></legend>

				<table  class="table table-striped">

					<thead>
						<tr class="info">
							<th>Titre</th>
							<th>Auteur</th>
							<th>Date de prêt</th>
							<th>Date de retour</th>
							<th>Retourné le</th>
							<th>Retard</th>
						</tr>
					</thead>

					<?php

					foreach($historique_books as $hbook){

							

							if($hbook["return_date"] < $hbook["rendering_date"]){	

								$retour = new DateTime($hbook["return_date"]);
								$rendu = new DateTime($hbook["rendering_date"]);

								$retard = $retour->diff($rendu)->format("%a jours");	
							}
							else{
								$retard = "Non";
							}
							
							echo
								'<tr>
									<td>'.$hbook["book_title"].' '.$hbook["book_subtitle"].'</td>
									<td>'.$hbook["author_firstname"].' '.$hbook["author_lastname"].'</td>
									<td>'.date("d M Y", strtotime($hbook["borrow_date"])).'</td>
									<td>'.date("d M Y", strtotime($hbook["return_date"])).'</td>	
									<td>'.date("d M Y", strtotime($hbook["rendering_date"])).'</td>	
									<td>'.$retard.'</td>	
								</tr>';
						}

					 foreach($historique_periodicals as $hperiodical){

							

							if($hperiodical["return_date"] < $hperiodical["rendering_date"]){	

								$retour = new DateTime($hperiodical["return_date"]);
								$rendu = new DateTime($hperiodical["rendering_date"]);

								$retard = $retour->diff($rendu)->format("%a jours");	
							}
							else{
								$retard = "Non";
							}
							
							echo
								'<tr>
									<td>'.$hperiodical["periodical_subtitle"].'</td>
									<td>'.$hperiodical["periodical_title"].'</td>
									<td>'.date("d M Y", strtotime($hperiodical["borrow_date"])).'</td>
									<td>'.date("d M Y", strtotime($hperiodical["return_date"])).'</td>	
									<td>'.date("d M Y", strtotime($hperiodical["rendering_date"])).'</td>	
									<td>'.$retard.'</td>	
								</tr>';
						}

					 ?>
				</table>
			</fieldset>

</div>

