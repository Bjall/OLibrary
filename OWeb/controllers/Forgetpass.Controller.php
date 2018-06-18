<?php 

if(!empty($_POST["email"])){

	$destinataire = $_POST["email"];

	// Pour les champs $expediteur / $copie / $destinataire, séparer par une virgule s'il y a plusieurs adresses

	$expediteur = 'remi.mafat@ynov.com';

	$objet = 'Mot de passe oublié'; // Objet du message

	$headers  = 'MIME-Version: 1.0' . "\n"; // Version MIME
	$headers .= 'Content-type: text/html; charset=ISO-8859-1'."\n"; // l'en-tete Content-type pour le format HTML
	$headers .= 'Reply-To: '.$expediteur."\n"; // Mail de reponse
	$headers .= 'From: "Nom_de_expediteur"<'.$expediteur.'>'."\n"; // Expediteur
	$headers .= 'Delivered-to: '.$destinataire."\n"; // Destinataire

	$password = generer_mot_de_passe();
 
	$message = '<div style="width: 100%; text-align: center;>';
	$message .= 'Bonjour,';
	$message .= '<p>Vous venez de demander un nouveau mot de passe sur le site d\'Au Libre Harry. Veuillez vous connecter avec ce mot de passe provisoire et le changer immédiatement dans votre espace personnel.</p>';
	$message .= '<p>Mot de passe provisoire : '.$password.'</p>';
	$message .= '<p>Si vous n\'avez pas demandé à changer votre mot de passe, veuillez contacter au plus vite les responsables de la bibliothèque. <br> Merci de ne pas répondre à ce mail.</p></div>';

	if (mail($destinataire, $objet, $message, $headers)) // Envoi du message
	{
	    $_SESSION["info"] = "Votre message a bien été envoyé, vous allez recevoir un mot de passe provisoire d'ici quelques instants.";

	    $update = $bdd->prepare("UPDATE customers SET customer_password = :password WHERE customer_email = :email");

	    $update->execute(array(
	    	'password' => $password,
	    	'email' => $destinataire));
	}
	else // Non envoyé
	{
	    $_SESSION["info"] = "Votre message n'a pas pu être envoyé, veuillez vérifiez avoir correctement tapé votre adresse mail.";
	}

}


function generer_mot_de_passe()
{
    $password = "";
   
    $chaine = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+@!$%?&";
    $longeur_chaine = strlen($chaine);
   
    for($i = 1; $i <= 12; $i++)
    {
        $place_aleatoire = mt_rand(0,($longeur_chaine-1));
        $password .= $chaine[$place_aleatoire];
    }

    return $password;   
}


require $_dir["front"]."forgetpass.php";