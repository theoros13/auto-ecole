<?php

    $action = $_REQUEST['action'];

    switch ($action){
        case 'liste_preve':{
            $lecon = $pdo->getLeconPrev();
            include_once 'Vue/v_preve_lecon.php';
            break;
        }

        case 'liste_affect': {
            $lecon = $pdo->getLeconNoDo();
            include_once 'Vue/v_affect_lecon.php';
            break;
        }

        case 'affecter_page': {
            $lecon = $pdo->getLeconNoAffect();
            $eleve = $pdo->getAllElevel();
            include_once 'Vue/v_affect_page_lecon.php';
            break;
        }

        case 'affecter': {
            $lecon = $pdo->affecterLecon($_POST['eleve'], $_POST['lecon']);
            header('location:index.php?do=lecon&action=liste_preve');
            break;
        }

        case 'fait': {
            $fait = $pdo->makeDoLecon($_GET['num']);
            break;
        }


    }