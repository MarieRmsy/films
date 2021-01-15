<?php
if(isset($_POST["ok"]))
{
    $login = $_POST["login"]; //DECLARATIONS
    $mdp = $_POST["mdp"];
    $nom = $_POST["nom"];
    $prenom = $_POST["prenom"];
    $rue = $_POST["rue"];
    $ville = $_POST["ville"];
    $cp = $_POST["cp"];
    $id = mysqli_connect("127.0.0.1","root","","video"); 
    $req = "insert into user (login,mdp,nom,prenom,rue,ville,cp)
                values ('$login','$mdp','$nom','$prenom','$rue','$ville','$cp')";
                                                                                   
    $res = mysqli_query($id,$req);
    header("Refresh:3; url=connexion.php");
    echo "<h3>Inscription réussie, vous allez être redirigé vers la page de connexion dans un instant..."; //CONFIRMATION INSCRIPTION

}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/main.css" />
    <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
    <title>Inscripiton</title>
    
</head>
<body class="is-preload">>
<section id="four" class="wrapper">
				<div class="inner">
    
    <h2>Page d'inscription</h2><hr>

    <form action="" method="post"> <!-- FORMULAIRE INSCRIPTION -->
    <input type="text" name="login" placeholder="Entrez un login :" required><br><br>
    <input type="password" name="mdp" placeholder="Entrez un mot de passe :" required><br><br>
    <input type="text" name="nom" placeholder="Entrez votre nom :" required><br><br>
    <input type="text" name="prenom" placeholder="Entrez votre prénom :" required><br><br>
    <input type="text" name="rue" placeholder="Entrez votre rue :" required><br><br>
    <input type="text" name="ville" placeholder="Entrez votre ville :" required><br><br>
    <input type="number" name="cp" placeholder="Entrez votre cp :" required><br><br>

    <input type="submit" value="Inscription" name="ok">

    </form><br><hr>
</div>
</section>
</body>
</html>