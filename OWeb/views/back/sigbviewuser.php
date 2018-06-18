<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">	
	<title>SIGB - Vue utilisateur</title>
	<link rel="stylesheet" type="text/css" href="/OWeb/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="/OWeb/css/styleback.css">
</head>

<body>
<?php include ("navbar-admin.php"); include ("headerback.php"); ?>

	<div class="container" id="catalogue">

			<form method="post" action="" class="inline">
				<label for="search_user">Rechercher un client : </label>
				<input type="text" name="search_user">
				<input type="submit" name="submit" class="btn btn-success">
			</form>
			<a href="/OWeb/sigbnewuser/">
				<button class="btn btn-danger">Retour</button>
			</a>
			

			<?php 

			if(!empty($_SESSION["supprimer"]))
			{
				echo 
				"<div class='alert alert-success inline' id='alert_view_user'>
				".$_SESSION["supprimer"]."
				</div>";
				unset($_SESSION["supprimer"]);
				
			}

			if(!empty($_SESSION["modifier"]))
			{
				echo 
				"<div class='alert alert-success inline' id='alert_view_user'>
				".$_SESSION["modifier"]."
				</div>";
				unset($_SESSION["modifier"]);
				
			}
			?>
		<br>
		<table id="table_vue_users" class="table table-striped">
			<!-- <caption>Rechercher un utilisateur</caption> -->
			<thead>
				<tr class="success">
					<th class="titres_etroits">
						N°
					</th>
					<th >
						Nom
					</th>
					<th >
						Prénom
					</th>
					<th class="titres_larges" >
						Email
					</th>
					<th >
						Téléphone
					</th>
					<th>
						Abonné
					</th>
					<th>
						Référant
					</th>
					<th >
						Détails
					</th>
					<th >
						
					</th>
					<th></th>

				</tr>
			</thead>

			<tbody id="tbody_vue_utilisateur">

			<?php 

			foreach($viewusers as $user){

			echo'
			<tr>
				<td class="titres_etroits">'.$user["customer_id"].'</td>
				<td>'.$user["customer_lastname"].'</td>
				<td>'.$user["customer_firstname"].'</td>
				<td>'.$user["customer_email"].'</td>
				<td>0'.$user["customer_telephone"].'</td>
				<td>';
					if(!empty($user["customer_subscriptiondate"])){
						echo "Ok";
					}
					else{
						echo "Null";
					}
					echo "</td>
				<td>".$user["employee_firstname"]." ".$user["employee_lastname"]."</td>
				<td><a href='/OWeb/sigbzoomuser/?id=".$user['customer_id']."'><img src='/OWeb/img/magnifier.png' alt='zoom'></a>
				</td>
				<td><a href='/OWeb/sigbmodifieruser/?id=".$user['customer_id']."'><img src='/OWeb/img/pencil.png' width='15px' height='15px' alt='modifier'></a>
				</td>
				<td><a href='/OWeb/sigbdeleteuser/?id=".$user['customer_id']."'><img src='/OWeb/img/trash.png' width='15px' height='15px' alt='delete'></a>
				</td>
			</tr>";

			}

			 ?>					

			</tbody>
		</table>


	</div> <!-- CONTAINER -->
<script type="text/javascript" src="/OWeb/js/sigb.js"></script>
</body>

</html>