<!DOCTYPE HTML>

<?php
$connection=new 
PDO('mysql:host=localhost;port=3306;dbname=yael_tronedefer','yael_tronedefer','tronedefer');
$requete='SELECT continent, region FROM localisation';
$resultats=$connection->query($requete);
$tabProduits=$resultats->fetchAll();
$resultats->closeCursor();
$nbproduits=count($tabProduits);
?>

<html lang="fr">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device.width, initial-scale=1.0">
  <title>Le Trône de Fer</title>
  <link rel="stylesheet" href="style.css" type="text/css" media="screen">
  <script src="script.js"></script>

</head>

<body class="sombre" style="margin-top: 0px;margin-left: 0px;margin-bottom: 0px;margin-right: 0px;">

    <div id="haut"></div>

    <div class="grille">
        
        <div class="haut">

            Mode sombre-clair   <div class="boutonchgmttheme">

                                    <input type="checkbox" class="checkbox" id="clairsombre">

                                    <label for="clairsombre" class="label">

                                        <div class="boule"></div>

                                    </label>

                                </div>

        </div>

        <div class="gauche1">

            <p id="soustitre">
                Univers et lieux
            </p>

        </div>

        <div class="droite1">

            <img id="carte" src="Images/carte.png">

        </div>

        <div class="gauche2">

            <ul class="liste">

                <?php
                    for ($i=0;$i<$nbproduits;$i++){
                        echo "<li>".$tabProduits[$i]["continent"]." : ".$tabProduits[$i]["region"]."</li>";
                    }
                ?>

            </ul>

        </div>

        <div class="droite2">



        </div>

        <div class="gauche3">



        </div>

        <div class="droite3">



        </div>

        <div class="milieu5">

            <a id="remontee" href="#haut"><img id="flechebas" src="Images/flechebasblanche.png"></a>

        </div>

        <div class="bas1">

            <a class="liens" href="index.html">Accueil</a>

        </div>

        <div class="bas2">

            <a class="liens" href="personnage.php">Personnages</a>

        </div>

        <div class="bas3">

            <a class="liens" href="maison.php">Maisons</a>

        </div>

        <div class="bas4">

            <a class="liens" href="localisation.php">Localisations</a>

        </div>

        <div class="bas5">

            <a class="liens" href="questionnaire.php">Questionnaire</a>

        </div>

    </div>

</body>