<?php
session_start();

if(isset($_POST["ok"]))
{
    $login = $_POST["login"];
    $mdp = $_POST["mdp"];
    $id = mysqli_connect("127.0.0.1","root","","video"); //CONEXION MYSQL
    $req = "select * from user where login='$login' and mdp='$mdp'"; //REQUETE

    $res = mysqli_query($id,$req);
    if(mysqli_num_rows($res)>0)
    {
        $_SESSION["login"] = $login;
        echo "<h3>Conexion effectuée, vous allez être redirigé vers la page privée...."; //CONFIRMATION CONNEXION
        header("Refresh:3; url=pageprivee.php");
    }else{
        $erreur = "Connexion refusée, erreur de login ou de mot de passe....";
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/main.css" />
    <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
    <title>Connexion</title>
</head>
<body>
    
<section id="four" class="wrapper">
				<div class="inner">

    <h2>Formulaire de connexion</h2><hr><br>
    <form action="" method="post">
        <input type="text" name="login" placeholder="Entrez votre login : " required><br><br><br>
        <input type="password" name="mdp" placeholder="Entrez votre password : " required><br><br><br>
        <?php if(isset($erreur)) echo "<h3>$erreur</h3>";?>
        <input type="submit" value="Connexion" name="ok"><br>
    </form><hr>

    <a href="Inscription.php">- Inscription- </a>
    </div>
</section>


</body>
</html>