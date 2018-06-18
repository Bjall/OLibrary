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

<form method="post" action="/OWeb/resultats/">

	<div class="row" id="document_searchbar">
	  <div class="col-lg-6 col-lg-offset-3">

	    <div class="input-group">

	      <input type="text" class="form-control" placeholder="Effectuez une nouvelle recherche..." name="search">

	      <span class="input-group-btn">
	        <button class="btn btn-default" type="submit">Rechercher</button>
	      </span>

	    </div><!-- /input-group -->

	  </div><!-- /.col-lg-6 -->
	</div><!-- /.row -->

</form>



<div class="media col-md-10 col-md-offset-1 document-content">

  <div class="media-left media-middle">

      <img class="media-object" src="/OWeb/<?= $donnee["book_cover"] ?>" alt="couverture" width="288px" height="384px">

  </div>

  <div class="media-body">

    <h2 class="media-heading"><?= $donnee["book_title"]." - ".$donnee["book_subtitle"] ?></h2>

    <h3><?= $donnee["author_firstname"]." ".$donnee["author_lastname"]." - <em>Editions ".$donnee["publisher_name"]."</em>" ?></h3>

    <p class="well">
    	<?= $donnee["book_summary"] ?>
    </p>

    <?php 

    if($disponible > 0){
    	echo '<ul>
    			<li class="vert"><h4>Disponible</h4></li>
    			<li>Nombre d\'exemplaires disponible : '.$disponible.'
    		</ul>';

    }
    else{
    	echo '<span class="rouge">Disponible</span>';
    }

    if(!empty($_SESSION["user"])){
		echo '
			<form method="post" action="/OWeb/reserver/?copy_id='.$reserve_copie.'">
				<input class="btn btn-success" type="submit" value="Réserver">
			</form>';
	}

     ?>
    
  </div>


</div>

  <?php include "footer.php"; ?>