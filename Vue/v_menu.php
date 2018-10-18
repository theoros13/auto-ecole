<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="index.php">Auto Ecole 13</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor03">
    <ul class="navbar-nav mr-auto">


      <li class="nav-item">
      <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
        <p>Elèves</p>
            <div class="btn-group" role="group">
                <p id="btnGroupDrop2" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="cursor: pointer;"></p>
                <div class="dropdown-menu" aria-labelledby="btnGroupDrop2" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 48px, 0px);">
                    <a class="nav-link" href="index.php?do=eleve&action=liste">Liste des élèves</a>
                    <a class="nav-link" href="index.php?do=eleve&action=ajout_page">Ajouter élèves</a>
                    <a class="nav-link" href="index.php?do=eleve&action=modif_page">modifier élèves</a>
                </div>
            </div>
        </div>
      </li>

      <li class="nav-item active">
      <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
        <p>leçons</p>
            <div class="btn-group" role="group">
                <p id="btnGroupDrop2" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="cursor: pointer;"></p>
                <div class="dropdown-menu" aria-labelledby="btnGroupDrop2" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 48px, 0px);">
                    <a class="nav-link" href="index.php?do=lecon&action=liste_preve">Liste des leçon prévues</a>
                    <a class="nav-link" href="index.php?do=lecon&action=liste_affect">Liste leçon affecter non faites</a>
                    <a class="nav-link" href="index.php?do=lecon&action=affecter_page">Affecter leçcon</a>
                </div>
            </div>
        </div>
      </li>

    <li class="nav-item active">
      <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
        <p>véhicules</p>
            <div class="btn-group" role="group">
                <p id="btnGroupDrop2" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="cursor: pointer;"></p>
                <div class="dropdown-menu" aria-labelledby="btnGroupDrop2" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 48px, 0px);">
                    <a class="nav-link" href="index.php?do=vehicule&action=liste">Liste des véhicules</a>
                    <a class="nav-link" href="index.php?do=vehicule&action=ajout_page">Ajouter un véhicule</a>
                </div>
            </div>
        </div>
      </li>

    </ul>
  </div>
</nav>