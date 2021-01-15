<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="style.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/main.css" />
    <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
    <title>Films</title>
</head>
<body>
<section style = "margin-top: 2em; margin-left:5em;">
				<div class="inner">

<div class="row">
<div class="col-7 col-12-medium">

    <h2>Liste des films</h2><hr><br>
    <table>
        <tr><th>ID</th><th>Titre</th><th>Genre</th><th>Sortie</th><th>Recette</th></tr>
        <?php
        $id = mysqli_connect("127.0.0.1","root","","video"); 

        $req = "select * from film";
       
       
        $res = mysqli_query($id, $req);
        
        if (isset($_POST["ok"])){
            $genre = $_POST["genre"];
            $res = mysqli_query($id, "select * from film where genre ='$genre' order by idfilm");  //on execute la requete
        } else if(isset($_POST["ok2"]))
        {
            $d1 = $_POST["d1"];
            $d2 = $_POST["d2"];
            $res = mysqli_query($id, "select * from film where sortie between '$d1' and '$d2' ");
        } else if (isset($_POST["ok3"])){
            $name = $_POST["name"];
            $res = mysqli_query($id, "select * from film where titre LIKE '%$name%' order by idfilm");
        }
       
        //echo $res;  impossible d'afficher cet objet
        //on doit récuperer ligne par ligne 
        $i = 0;
        while($ligne = mysqli_fetch_assoc($res)){
            
            //Impossible d'afficher $ligne directement, on doit choisir la variable à afficher
            if($i%2==0) echo "<tr class=\"lignecoloree\">";
            //if(isset($_POST['formdeleteuser'])) alert("Hello World");
            else echo "<tr> ";
                echo "<td>".$ligne["idfilm"]."</td>
                    <td>".$ligne["titre"]."</td>
                    <td>".$ligne["genre"]."</td>
                    <td>".$ligne["sortie"]."</td>
                    <td>".$ligne["recettes"]."</td>
                    ";
                
            $i++;
        }

      
        
    ?>
    
    

    </table><br>
    </select><br><br>
    </div>
    <div class="col-4 col-12-medium">
    <h2>Filtres</h2><hr><br>
    <form action="" method="post">
    Selectionnez un genre : 
        <select name="genre">
        <?php
        if (mysqli_connect_errno()) {
            // Erreur de connect.
            exit('Failed to connect to MySQL: ' . mysqli_connect_error());
        }
        $req = "select distinct genre from film order by genre";
        $res = mysqli_query($id,$req);
        while($ligne = mysqli_fetch_assoc($res)){
            echo "<option value='".$ligne["genre"]."'> ".$ligne["genre"]." </option> " ; 
        }
        ?>
        <input type="submit" value="Afficher" name="ok">
    <hr><br>
    
        
        Selectionnez une date : 
        Date (Année-Mois-Jour):  Entre <input type="date" name="d1"> et <input type="date" name="d2"><br><br>
        <input type="submit" value="Afficher" name="ok2">
    <hr><br>
    <form action="" method="post">
        Selectionnez un nom : 
        Nom :<input type="text" name="name"><br><br>
        <input type="submit" value="Afficher" name="ok3">
    </form><hr><br>
       <?php
        $nb = mysqli_num_rows($res);
        echo "Il y a $nb medecin(s)";

        ?>

        <br><br>
    </div>

    </div></div>
    </section>
</body>
</html>