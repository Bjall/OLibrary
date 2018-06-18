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


	<div class="container">

		<fieldset>
			<legend>Messages</legend>

			<div class="content_messages">

				<?php 

				foreach($messages as $message){

					echo'
					<p>De : <strong>'.$message["customer_firstname"].' '.$message["customer_lastname"].'</strong></p>
					<p>Objet : <strong>'.$message["objet"].'</strong></p>
					<div class="well">'.$message["message"].'</div>
					<div class="between_message"></div>';
				}

				?>

			</div>


		</fieldset>

	</div> <!-- CONTAINER -->

</body>

</html>