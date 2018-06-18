<?php 

if(!empty($_SESSION["employee"])){
	
	$viewusers = $bdd->query("SELECT * FROM customers c
		INNER JOIN employees e ON c.contact = e.employee_id
		ORDER BY customer_id");

	// $viewusers->execute();

	if(!empty($_POST)){

		$search = $_POST["search_user"];

		$viewusers = $bdd->prepare("SELECT * FROM customers c
			INNER JOIN employees e ON c.contact = e.employee_id
			WHERE (c.customer_lastname LIKE '%' :search '%'
			OR c.customer_firstname LIKE '%' :search '%'
			OR c.customer_email LIKE '%' :search '%'
			OR c.customer_telephone LIKE '%' :search '%'
			OR e.employee_lastname LIKE '%' :search '%'
			OR e.employee_firstname LIKE '%' :search '%')
			ORDER BY customer_id ");

		$viewusers->execute(array(
			'search' => $search));

	}

	require $_dir["back"]."sigbviewuser.php";
}
else{

	$_SESSION["info"] = "Vous ne disposez pas des droits d'accès pour accéder à cette page !";
	header('Location: http://localhost/OWeb/');

}