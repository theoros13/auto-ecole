<?php

    $action = $_REQUEST['action'];

    switch ($action){

        case 'liste':{
            $lesEleves = $pdo->getAllElevel();
            include_once 'Vue/v_liste_eleve.php';
            break;
        }

        case 'ajout_page': {
            include_once 'Vue/v_ajout_eleve.php';
            break;
        }

        case 'ajout': {
            $pdo->AjoutEleve($_POST['nom'], $_POST['prenom'], $_POST['addr']);
            header('location:index.php?do=eleve&action=liste');
            break;
        }

        case 'modif_page': {
            $lesEleves = $pdo->getAllElevel();
            include_once 'Vue/v_modif_eleve.php';
            break;
        }

        case 'modif': {
            var_dump($_POST['code'], $_POST['addr']);
            $pdo->UpdateAddrByCode($_POST['code'], $_POST['addr']);
            header('location:index.php?do=eleve&action=liste');
            break;
        }

        case 'getAdresse': {
            $ladresse = $pdo->getAdresseByCode($_GET['code']);
            echo json_encode($ladresse);
            break;
        }

    }

    ?>