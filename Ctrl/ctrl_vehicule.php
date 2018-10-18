<?php

    $action = $_REQUEST['action'];

    switch ($action){

        case 'liste': {
            $vehicule = $pdo->getAllVehicule();
            include_once 'Vue/v_liste_vehicule.php';
            break;
        }

        case 'ajout_page': {
            include_once 'Vue/v_ajout_vehicule.php';
            break;
        }

        case 'ajout': {
            $pdo->addVehicule($_POST['imma'],$_POST['model'],$_POST['color']);
            if (!empty($_SESSION['error'])){
                echo "<h3 class=\"btn-danger\" >" . $_SESSION['error'] . "</h3>";
                $_SESSION['error'] = null;
                include_once "Vue/v_ajout_vehicule.php";
            }else
                header("location:index.php?do=vehicule&action=liste");
            break;
        }


    }