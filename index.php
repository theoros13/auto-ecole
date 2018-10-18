<?php
    session_start();
    if (!isset($_GET['code'])){
        include_once "Vue/v_entete.php";
        include_once "Vue/v_menu.php";
        echo "<div class=\"container\">";
    }

    include_once "Modele/bdd.php";

    $pdo = bdd::getPdo();
?>

<?php

    if (!isset($_REQUEST['do'])){
        $_REQUEST['do'] = "eleve";
        $_REQUEST['action'] = "liste";
    }

    $page = $_REQUEST['do'];

    switch ($page){

        case 'eleve':{
            include_once ('Ctrl/ctrl_eleve.php');break;
        }

        case 'lecon':{
            include_once ('Ctrl/ctrl_lecon.php');break;
        }

        case 'vehicule':{
            include_once ('Ctrl/ctrl_vehicule.php');break;
        }


    }

?>

<?php
if (!isset($_GET['code'])) {
    echo "</div>";  
    include_once "Vue/v_footer.php";
}
?>