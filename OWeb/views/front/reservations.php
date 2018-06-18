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
		else{
			include "navbar.php";
		}

		include "headerespaceperso.php" 

	?>


	<div class="espace-container">

		<fieldset>
			<legend>Mes réservations</legend>
		
			<table  class="table table-striped">

				<thead>
					<tr class="info">
						<th>Titre</th>
						<th>Auteur</th>
						<th>Réservé le</th>
						<th>Retrait avant le</th>
					</tr>
				</thead>

				<tbody>

			<?php 

				foreach($books as $book){
					echo
						'<tr>
							<td>'.$book["book_title"].' '.$book["book_subtitle"].'</td>
							<td>'.$book["author_firstname"].' '.$book["author_lastname"].'</td>
							<td>'.date("d M Y", strtotime($book["reservation_start_date"])).'</td>
							<td>'.date("d M Y", strtotime($book["reservation_end_date"])).'</td>	
						</tr>';
				}


				foreach($periodicals as $periodical){
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

	</div>

	<?php include "footer.php"; ?>

</body>


</html>