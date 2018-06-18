<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">	
	<title>SIGB - Modifier utilisateur</title>
	<link rel="stylesheet" type="text/css" href="/OWeb/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="/OWeb/css/styleback.css">
</head>

<body>
<?php include ("navbar-admin.php"); include ("headerback.php"); ?>

	<div class="container" id="catalogue">

		<fieldset>
			<legend>Modifier un livre</legend>

			<form method="post" action="">
				
			<div class="form_left">
				<p>
					<label for="periodique">Périodique</label>
					<input type="checkbox" name="periodique">
				</p>

				<p>
					<label for="title">Titre</label>
				</p>
				<p>
					<input type="text" name="title" class="input_fullsize" value="<?=$book['book_title']?>" disabled="disabled">
				</p>

				<p>
					<label for="subtitle">Sous-titre</label>
				</p>
				<p>
					<input type="text" name="subtitle" class="input_fullsize" value="<?=$book['book_subtitle']?>" disabled="disabled">
				</p>

				<p>
					<label for="publisher">Editeur</label>
				</p>
				<p>
					<input type="text" name="publisher" class="input_fullsize" value="<?=$book['publisher_name']?>" disabled="disabled">
				</p>

				<p>
					<label>Auteur</label>
				</p>
				<label for="author_name">Nom : </label>
				<input type="text" name="author_name" value="<?=$book['author_lastname']?>" disabled="disabled">
				<label for="author_lastname">Prénom : </label>
				<input type="text" name="author_firstname" value="<?=$book['author_firstname']?>" disabled="disabled">
			</div>

			<div class="form_right">
				<p>
					<label for="categorie">Catégorie</label>
				</p>
				<p>
					<select name="categorie" value="<?=$book['category_name']?>">
						<option>Littérature</option>
						<option>Voyages</option>
						<option>Cuisine</option>
						<option>Animaux</option>
						<option>Enfance</option>
						<option>Sciences humaines</option>
						<option>Poésie</option>
						<option>Bande Dessinée</option>
						<option>Pratique</option>
						<option>Professionnel</option>
						<option>Nature et environnement</option>
						<option>People</option>
					</select>
				</p>

				<p>
					<label for="date_publication">Date de publication</label>
				</p>
				<p>
					<input type="date" name="date_publication" value="<?=$book['publish_book_date']?>" disabled="disabled">
				</p>

				<p>
					<label for="image">Image</label>
				</p>
				<p>
					<input type="hidden" name="MAX_FILE_SIZE" value="1048576" />
					<input type="file" name="image" id="upload_image" value="<?=$book['book_cover']?>"/>
				</p>

				<p>
					<label for="resume">Résumé</label>
				</p>
				<p>
					<textarea type="text" name="resume" rows="3" cols="50"><?=$book['book_summary']?></textarea>
				</p>

			</div>

			<input type="submit" name="modifier" value="Modifier" class="btn btn-success">
			
			</form>

			<a href="/OWeb/sigbcatalogue/" id="btn_retour">
				<button class="btn btn-danger">Retour</button>
			</a>

		</fieldset>

	</div>
<script type="text/javascript" src="/OWeb/js/sigb.js"></script>
</body>

</html>