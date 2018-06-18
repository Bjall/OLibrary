<!DOCTYPE html>
<html>
	<head>
		<title>Résultats de recherche</title>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="/OWeb/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="/OWeb/css/stylefront.css">
		<script type="text/javascript" src="/js/jquery-3.1.1.min.js"></script>
		<script type="text/javascript" src="/js/fonctions.js"></script>
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

	<div class="well resultats-title">
    	<h1>Résultats de recherche pour : <?=$search?></h1>
    </div>
        
	<div class="resultats-content">
	<!-- Sidebar -->
        <aside id="resultats-filtres" class="col-lg-3 well">
            <div class="sidebar-nav">
                <h3>Affiner les résultats</h3>

                <form method="post" action="/OWeb/filtres/">

	                <p>
	                  <strong>Catégories :</strong> <br>

				      <label><input type="radio" name="categorie" value="1">   Littérature</label> <br>

				      <label><input type="radio" name="categorie" value="2">   Voyages</label> <br>

				      <label><input type="radio" name="categorie" value="3">   Cuisine</label> <br>

				      <label><input type="radio" name="categorie" value="4">   Animaux</label> <br>

				      <label><input type="radio" name="categorie" value="5">   Enfance</label> <br>

				      <label><input type="radio" name="categorie" value="6">   Sciences humaines et sociales</label> <br>

				      <label><input type="radio" name="categorie" value="7">   Poésie <br>

				      <label><input type="radio" name="categorie" value="8">   Bande Dessinée</label> <br>

				      <label><input type="radio" name="categorie" value="9">   Pratique</label> <br>

				      <label><input type="radio" name="categorie" value="10">   Professionnel</label> <br>

				      <label><input type="radio" name="categorie" value="11">   Nature et Environnement</label> <br>

				      <label><input type="radio" name="categorie" value="12">   People</label> <br> 
				    </p>


		            <p>
		            	<strong>Disponibilité :</strong><br>

					    <label><input type="radio" name="disponibilite" value="disponible">   Disponible</label> <br>

					    <label><input type="radio" name="disponibilite" value="indisponible">   Non Disponible</label>
	  				</p>

	  				<p>
	  					<input type="hidden" name="search" value="<?=$search?>">

	  					<input type="submit" value="Filtrer les résultats" class="btn btn-success">
	  				</p>

  				</form>

			</div>         	
        </aside>


        <section id="resultats-affichage" class="container col-lg-9">

	        <nav class="navbar navbar-default">
			  <div class="container-fluid">

			    <!-- Collect the nav links, forms, and other content for toggling -->
			    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			      <!-- <ul class="nav navbar-nav">
			        <li class="limain"><p>Afficher par</p></li>
			        <li class="limain"><select>
					    <option>Pertinence</option>
					    <option>Date de publication</option>
					    <option>Nb pages</option>
			   		  </select>
			        </li>
			      </ul> -->

			      <form method="post" action="/OWeb/resultats/" class="navbar-form navbar-right">
			        <div class="form-group">
			          <input type="text" class="form-control" placeholder="Nouvelle recherche" name="search">
			        </div>
			        <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
			      </form>

			    </div><!-- /.navbar-collapse -->
			  </div><!-- /.container-fluid -->
			</nav>


			<?php 

			foreach($resultats as $res){

				if($disponibilite == 'all'){

					$disponible = disponible($res["book_id"], $bdd);

					echo '

					<article class="media border-resultat">
					  <div class="media-left media-top">
					    <a href="/OWeb/document/?id='.$res["book_id"].'">
					      <img class="media-object" src="/Oweb/'.$res["book_cover"].'" height="192px" width="">
					    </a>
					  </div>

					  <div class="media-body">
						<a href="/OWeb/document/?id='.$res["book_id"].'">
					    	<h3 class="media-heading">'.$res["book_title"].' - '.$res["book_subtitle"].'</h3>
					    </a>

					    <h4>'.$res["author_firstname"].' '.$res["author_lastname"].'</h4>

					    <p>
					    	'.substr($res["book_summary"], 0, 400).'...
					    </p>

					    <p>
						    <ul>';

						    if($disponible > 0){
						    	echo '
						    	<li class="vert"><h4>'.$disponible.' Disponible</h4></li>';
						    }
						    else{
						    	echo'
				    			<li class="rouge"><h4>Indisponible</h4></li>';
				    		}
				    		echo'
				    		</ul>
				    	</p>
					    
					  </div>
					</article>';
				}

				else if($disponibilite == 'disponible'){

					$disponible = disponible($res["book_id"], $bdd);

					if($disponible > 0){

						echo'

						<article class="media border-resultat">
						  <div class="media-left media-top">
						    <a href="/OWeb/document/?id='.$res["book_id"].'">
						      <img class="media-object" src="/Oweb/'.$res["book_cover"].'" height="192px" width="">
						    </a>
						  </div>

						  <div class="media-body">
							<a href="/OWeb/document/?id='.$res["book_id"].'">
						    	<h3 class="media-heading">'.$res["book_title"].' - '.$res["book_subtitle"].'</h3>
						    </a>

						    <h4>'.$res["author_firstname"].' '.$res["author_lastname"].'</h4>

						    <p>
						    	'.substr($res["book_summary"], 0, 400).'...
						    </p>

						    <p>
							    <ul>
							    	<li class="vert"><h4>'.$disponible.' Disponible</h4></li>
					    		</ul>
					    	</p>
						    
						  </div>
						</article>';
					}
				}

				else if($disponibilite == 'indisponible'){

					$disponible = disponible($res["book_id"], $bdd);

					if($disponible <= 0){
						echo'

						<article class="media border-resultat">
						  <div class="media-left media-top">
						    <a href="/OWeb/document/?id='.$res["book_id"].'">
						      <img class="media-object" src="/Oweb/'.$res["book_cover"].'" height="192px" width="">
						    </a>
						  </div>

						  <div class="media-body">
							<a href="/OWeb/document/?id='.$res["book_id"].'">
						    	<h3 class="media-heading">'.$res["book_title"].' - '.$res["book_subtitle"].'</h3>
						    </a>

						    <h4>'.$res["author_firstname"].' '.$res["author_lastname"].'</h4>

						    <p>
						    	'.substr($res["book_summary"], 0, 400).'...
						    </p>

						    <p>
							    <ul>
					    			<li class="rouge"><h4>Indisponible</h4></li>
					    		</ul>
					    	</p>
						    
						  </div>
						</article>';
					}
				}
			}

			?>

        </section>
    </div>

    <!-- Pagination -->
	<nav aria-label="Page navigation" class="col-md-4 col-md-offset-4">
	  <ul class="pagination">
	    <li>
	      <a href="#" aria-label="Previous">
	        <span aria-hidden="true">&laquo;</span>
	      </a>
	    </li>
	    <li><a href="#">1</a></li>
	    <li><a href="#">2</a></li>
	    <li><a href="#">3</a></li>
	    <li><a href="#">4</a></li>
	    <li><a href="#">5</a></li>
	    <li>
	      <a href="#" aria-label="Next">
	        <span aria-hidden="true">&raquo;</span>
	      </a>
	    </li>
	  </ul>
	</nav>


	<?php include "footer.php"; ?>


</body>
</html>