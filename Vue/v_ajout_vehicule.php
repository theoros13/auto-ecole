<div class="form-group">
    <h1>ajouter un véhicule</h1>
    <form action="index.php?do=vehicule&action=ajout" method="post">
        <label for="imma">n° immatriculation</label>
        <input class="form-control" type="text" pattern="[A-Z]{2}-[0-9]{3}-[A-Z]{2}" name="imma"><br>

        <label for="model">modele</label>
        <input class="form-control" type="text" name="model"><br>

        <label for="couleur">couleur</label>
        <input class="form-control" type="color" name="color"><br>

        <input class="form-control btn" type="submit" value="envoyer">
    </form>
</div>