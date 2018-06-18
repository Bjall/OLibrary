<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
	<style>
		/*NAVBAR*/

		@font-face {
			font-family: "Potter";
			src: url('/OWeb/fonts/HARRYP__.TTF');
		}

		.navbar{
			margin-bottom: 0px;
			border-radius: 0px;
		}
		#navbar-logo{
			margin: 5px 20px 5px 5px;
		}
		.margin-navbar{
			margin-top: 17px;
		}
		.library_name{
			font-size: 30px;
			/*font-weight: bold;*/
			/*font-family: "Potter", Arial;*/
			font-family: 'Lora', serif;
		}
		.potter-font{
			font-size: 20px;
			/*font-family: "Potter", Arial;*/
			font-family: 'Lora', serif;
		}
		.img-navbar{
			margin: 5px;
		}
	</style>
	<link href="https://fonts.googleapis.com/css?family=Lora|Merriweather" rel="stylesheet">
	<script type="text/javascript" src="/OWeb/js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="/OWeb/js/fonctions.js"></script>
</head>

<header>
	<nav class="navbar navbar-inverse">
	  <div class="container-fluid">
	    <!-- Brand and toggle get grouped for better mobile display -->


	    <div class="navbar-header">
	      <a class="" href="/OWeb">
	        <img alt="OLibrary" src="/OWeb/img/potter-books.png" width="80px" height="80px" id="navbar-logo">
	      </a>
	    </div>

	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">
	        <li class="margin-navbar">
	        	<a href="/OWeb/sigbcatalogue/" class="library_name">
	        		<span >Au Libre Harry</span>
	        		<span class="sr-only">(current)</span>
	        		<!-- <img src="/OWeb/img/hedwige.png" alt="Potter" width="60px" height="60px"> -->
	        	</a>
	        </li>
	        
	      </ul>
	      
	      <ul class="nav navbar-nav navbar-right">
	        <li class="margin-navbar"><a href="/OWeb/deconnexion/" class="potter-font">
	        	<img src="/OWeb/img/hedwige.png" alt="Potter" width="25px" height="25px" class="img-navbar">
	        	<span>Se déconnecter</span>
	        </a></li>
	      </ul>	
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>

</header>

</html>