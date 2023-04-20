<?php
    $objetPDO = new PDO('mysql:host=localhost;dbname=yael_tronedefer', 'yael_tronedefer','tronedefer');

    if(isset($_POST['nom_questionnaire'])){$nomquestionnaire=$_POST['nom_questionnaire'];}else{$nomquestionnaire='';}
    if(isset($_POST['maison_questionnaire'])){$maisonquestionnaire=$_POST['maison_questionnaire'];}else{$maisonquestionnaire='';}
    if(isset($_POST['localisation_questionnaire'])){$locquestionnaire=$_POST['localisation_questionnaire'];}else{$locquestionnaire='';}

    $PDOresults = $objetPDO->prepare('INSERT INTO bdd_questionnaire() VALUES (NULL, :nom_questionnaire, :maison_questionnaire, :localisation_questionnaire)');
    $PDOresults->bindValue(':nom_questionnaire', $nomquestionnaire, PDO::PARAM_STR);
    $PDOresults->bindValue(':maison_questionnaire', $maisonquestionnaire, PDO::PARAM_STR);
    $PDOresults->bindValue(':localisation_questionnaire', $locquestionnaire, PDO::PARAM_STR);
    
    $PDOresults->execute();

?>

<!DOCTYPE HTML>

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
                Questionnaire
            </p>

        </div>

        <div class="droite1">

            <img src="Images/questionnaire.jpeg">

        </div>

        <div class="gauche2">

            <form method="post" action="">

            <p>Quel est votre personnage préféré ? <i>Liste non-exhaustive</i></p>

            <select name="nom_questionnaire" id="nom_questionnaire">
                <option value="Viserys Targaryen">Viserys Targaryen</option>
                <option value="Daenerys Targaryen">Daenerys Targaryen</option>
                <option value="Eddard Stark">Eddard Stark</option>
                <option value="Catelyn Stark">Catelyn Stark</option>
                <option value="Robb Stark">Robb Stark</option>
                <option value="Sansa Stark">Sansa Stark</option>
                <option value="Arya Stark">Arya Stark</option>
                <option value="Brandon Stark">Brandon Stark</option>
                <option value="Rickon Stark">Rickon Stark</option>
                <option value="Benjen Stark">Benjen Stark</option>
                <option value="Jon Snow">Jon Snow</option>
                <option value="Robert Baratheon">Robert Baratheon</option>
                <option value="Stannis Baratheon">Stannis Baratheon</option>
                <option value="Renly Baratheon">Renly Baratheon</option>
                <option value="Joffrey Baratheon">Joffrey Baratheon</option>
                <option value="Myrcella Baratheon">Myrcella Baratheon</option>
                <option value="Tommen Baratheon">Tommen Baratheon</option>
                <option value="Tywin Lannister">Tywin Lannister</option>
                <option value="Kevan Lannister">Kevan Lannister</option>
                <option value="Jaime Lannister">Jaime Lannister</option>
                <option value="Cerseil Lannister">Cerseil Lannister</option>
                <option value="Tyrion Lannister">Tyrion Lannister</option>
                <option value="Hoster Tully">Hoster Tully</option>
                <option value="Brynden Tully">Brynden Tully</option>
                <option value="Edmure Tully">Edmure Tully</option>
                <option value="Olenna Tyrell">Olenna Tyrell</option>
                <option value="Mace Tyrell">Mace Tyrell</option>
                <option value="Margaery Tyrell">Margaery Tyrell</option>
                <option value="Loras Tyrell">Loras Tyrell</option>
                <option value="Balon Greyjoy">Balon Greyjoy</option>
                <option value="Euron Greyjoy">Euron Greyjoy</option>
                <option value="Aeron Greyjoy">Aeron Greyjoy</option>
                <option value="Yara Greyjoy">Yara Greyjoy</option>
                <option value="Theon Greyjoy">Theon Greyjoy</option>
                <option value="Doran Martell">Doran Martell</option>
                <option value="Oberyn Martell">Oberyn Martell</option>
                <option value="Ellaria Sand">Ellaria Sand</option>
                <option value="Obara Sand">Obara Sand</option>
                <option value="Nymeria Sand">Nymeria Sand</option>
                <option value="Tyerne Sand">Tyerne Sand</option>
                <option value="Jon Arryn">Jon Arryn</option>
                <option value="Lysa Arryn">Lysa Arryn</option>
                <option value="Peter Baelish">Peter Baelish</option>
                <option value="Walder Frey">Walder Frey</option>
                <option value="Roose Bolton">Roose Bolton</option>
                <option value="Ramsey Bolton">Ramsey Bolton</option>
                <option value="Davos Mervault">Davos Mervault</option>
                <option value="Randyll Tarly">Randyll Tarly</option>
                <option value="Samwell Tarly">Samwell Tarly</option>
                <option value="Brienne de Torth">Brienne de Torth</option>
                <option value="Varys">Varys</option>
                <option value="Ygritte">Ygritte</option>
                <option value="Mance Rayder">Mance Rayder</option>
                <option value="Tormund">Tormund</option>
                <option value="Podrick Payne">Podrick Payne</option>
                <option value="Mestre Aemon">Mestre Aemon</option>
                <option value="Jorah Mormont">Jorah Mormont</option>
                <option value="Barristan Selmy">Barristan Selmy</option>
                <option value="Missandei">Missandei</option>
                <option value="Ver Gris">Ver Gris</option>
                <option value="Mélisandre">Mélisandre</option>
                <option value="Bronn">Bronn</option>
                <option value="Vère">Vère</option>
                <option value="Jaqen H'gar">Jaqen H'gar</option>
            </select>

            <p>Quelle est votre maison favorite ? <i>Liste non-exhaustive.</i></p>

            <select name="maison_questionnaire" id="maison_questionnaire">
                <option value="Maison Targaryen">Maison Targaryen</option>
                <option value="Maison Stark">Maison Stark</option>
                <option value="Maison Baratheon">Maison Baratheon</option>
                <option value="Maison Lannister">Maison Lannister</option>
                <option value="Maison Tully">Maison Tully</option>
                <option value="Maison Tyrell">Maison Tyrell</option>
                <option value="Maison Greyjoy">Maison Greyjoy</option>
                <option value="Maison Martell">Maison Martell</option>
                <option value="Maison Arryn">Maison Arryn</option>
                <option value="Maison Frey">Maison Frey</option>
                <option value="Maison Bolton">Maison Bolton</option>
                <option value="Maison Tarly">Maison Tarly</option>
                <option value="Maison Mormont">Maison Mormont</option>
                <option value="Maison Karstark">Maison Karstark</option>
            </select>

            <p>Quel région vous attire le plus ? <i>Liste non-exhaustive.</i></p>

            <select name="localisation_questionnaire" id="localisation_questionnaire">
                <option value="Terres de la Couronne">Terres de la Couronne</option>
                <option value="Le Nord">Le Nord</option>
                <option value="Terres de l'Orage">Terres de l'Orage</option>
                <option value="Terres de l'Ouest">Terres de l'Ouest</option>
                <option value="Le Conflans">Le Conflans</option>
                <option value="Le Bief">Le Bief</option>
                <option value="Les Îles de Fer">Les Îles de Fer</option>
                <option value="Dorne">Dorne</option>
                <option value="Le Val d'Arryn">Le Val d'Arryn</option>
            </select>

            <br>
            <br>

            <p>
                <input type="submit" id="submit">
            </p>

            </form>

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