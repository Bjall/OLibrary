<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">	
	<title>SIGB - Acquisitions</title>
	<link rel="stylesheet" type="text/css" href="/OWeb/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="/OWeb/css/styleback.css">
	<script type="text/javascript" src="/OWeb/js/jquery-3.1.1.min.js"></script>
</head>

<body>
<?php include ("navbar-admin.php"); include ("headerback.php"); ?>

		<div class="container">

			<form method="POST" action="" enctype="multipart/form-data" runat="server">

				<div class="row">
					<div class="col-md-6">
						<label for="bookTitleAcquisitions" style="margin-top: 10px;">Titre</label><br><input type="text" name="bookTitleAcquisitions" id="bookTitleAcquisitions" placeholder="Saisir le titre du livre" required="">
						<label for="bookSubtitleAcquisitions" style="margin-top: 20px;">Sous-titre</label><br><input type="text" name="bookSubtitleAcquisitions" placeholder="Saisir le sous-titre du livre" id="bookSubtitleAcquisitions">
						<label for="bookPublisherAcquisitions" style="margin-top: 20px;">Éditeur</label><br><input type="text" name="bookPublisherAcquisitions" placeholder="Saisir l'éditeur du livre" id="bookPublisherAcquisitions" required="">

						<label for="bookAuthorAcquisitions" style="margin-top: 20px;">Auteur</label><br>
						<div class="row">
							<div class="col-md-6">
								<label for="bookAuthorLNAcquisitions">Nom : </label><input type="text" name="bookAuthorLNAcquisitions" placeholder="Nom de l'auteur" id="bookAuthorLNAcquisitions" required="">
							</div>
							<div class="col-md-6">
								<label for="bookAuthorFNAcquisitions">Prénom : </label><input type="text" name="bookAuthorFNAcquisitions" placeholder="Prénom de l'auteur" id="bookAuthorFNAcquisitions" required="">
							</div>
						</div>

						<label for="bookCategorieAcquisitions" style="margin-top: 20px;">Catégorie </label><br>
						<SELECT name="bookCategorieAcquisitions" id="bookCategorieAcquisitions">
							<OPTION>Littérature</OPTION>
							<OPTION>Voyages</OPTION>
							<OPTION>Cuisine</OPTION>
							<OPTION>Animaux</OPTION>
							<OPTION>Enfance</OPTION>
							<OPTION>Sciences humaines et sociales</OPTION>
							<OPTION>Poésie</OPTION>
							<OPTION>Bande Dessinée</OPTION>
							<OPTION>Pratique</OPTION>
							<OPTION>Professionnel</OPTION>
							<OPTION>Nature et environnement</OPTION>
							<OPTION>People</OPTION>
						</SELECT>
					</div>

					<div class="col-md-6">
						<div class="row">
							<div class="col-md-5">
								<label for="bookPublishDateAcquisitions" style="margin-top: 10px;">Date de publication</label><br> <input type="date" name="bookPublishDateAcquisitions" id="bookPublishDateAcquisitions" placeholder="AAAA-MM-JJ" required="">
							</div>
							<div class="col-md-7">
								<img id="imgUploaded" src="#" alt="your image" />
								<input type="hidden" name="MAX_FILE_SIZE" value="1048576">
								<input type='file' id="imgInp" name="image" />
							</div>
						</div>
						<label for="resumeAcquisitions" style="margin-top: 20px;">Résumé : </label><br><textarea rows="5" cols="71" name="resumeAcquisitions" id="resumeAcquisitions"></textarea>
						<input style="margin-top: 20px;" class='btn btn-success pull-right' type="submit" name="submitAcquisitions" value="Enregistrer le livre" onclick="return(confirm('Êtes-vous sûr de vouloir ajouter ce livre?'));">
					</div>
				</div>

			</form>

		</div>

		<script type="text/javascript">
			
			$(document).ready(function() { 
				
				function readURL(input) {
					if (input.files && input.files[0]) {
        				var reader = new FileReader();
						reader.onload = function (e) {
            				$('#imgUploaded').attr('src', e.target.result);
        				}
						reader.readAsDataURL(input.files[0]);
    				}
				}
				
				$("#imgInp").change(function(){
        			readURL(this);
				});
			});

		</script>
<script type="text/javascript" src="/OWeb/js/sigb.js"></script>
	</body>
</html>