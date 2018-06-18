<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="/OWeb/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="/OWeb/css/stylefront.css">
	<script type="text/javascript" src="/OWeb/js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="/OWeb/js/fonctions.js"></script>
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

	if(!empty($_SESSION["info"])){
		echo '<div class="alert alert-info" role="alert">'.$_SESSION["info"].'</div>';
		unset($_SESSION["info"]);
	}
	
?>

<div id="searchBar">

	<form method="post" action="/OWeb/resultats/">
		<!-- <input type="search" placeholder="Rechercher un livre" id="searchBarAccueil" name="searchBarAccueil"> -->

		<div class="row">
		  <div class="col-lg-6 col-lg-offset-3" id="searchBarAccueil">

		    <div class="input-group">

		      <input type="text" class="form-control" placeholder="Votre recherche..." name="search">

		      <span class="input-group-btn">
		        <button class="btn btn-default" type="submit">Rechercher</button>
		      </span>

		    </div><!-- /input-group -->

		  </div><!-- /.col-lg-6 -->
		</div><!-- /.row -->

	</form>

</div>

		<div id="containerAccueil">

			<fieldset id="fsNouveautesAccueil">
				
				<legend>Nouveautés</legend>

				<div id="nouveautesAccueil">

					<?php foreach ($news as $new) { 

						echo"

						<div>
							<a href='/OWeb/document/?id=".$new["book_id"]."'>
								<img src=" .$new["book_cover"]. ">
							</a><br>
							Titre : ".$new['book_title']." <br>
							Auteur : ".$new['author_firstname']." ".$new['author_lastname']."
							<br>
							Éditeur : ".$new['publisher_name']."

						</div>";

					}
					?>	

				</div>

			</fieldset>
		
		</div>


		<?php include "footer.php"; ?>

		<script type="text/javascript">
			
			$(document).ready(function() {

				$('#searchBarAccueil').on('click', function () {
					$('#searchBar').css({"position": "absolute", "top": "150px", "z-index": "9999"});
					$('#containerAccueil').css({"filter": "blur(5px)", "margin-top": "140px"});
					$('body').css({"background-color": "#666666"});
					
					$('#containerAccueil').click(function(){
    					$('#searchBar').css({"position": "initial", "margin": "auto"});
    					$('#searchBarAccueil').css({"margin-top": "100px"});
						$('#containerAccueil').css({"filter": "blur(0px)", "margin-top": "0px"});
						$('body').css({"background-color": "#FFF"});
					});
				});



			});

		</script>

</body>

</html>