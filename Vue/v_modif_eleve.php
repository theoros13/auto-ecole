<div class="form-group">
    <h1>Modifier l'adresse d'un élève</h1>

    <form action="index.php?do=eleve&action=modif" method="post">
        <select class="form-control" name="code" id="code" onchange="getAdresse()">
            <option value="-1">selection des eleves</option>
            <?php foreach ($lesEleves as $eleve) : ?>
                <option value="<?= $eleve['code']; ?>"><?= $eleve['nom']; ?> <?= $eleve['prenom']; ?></option>
            <?php endforeach; ?>
        </select>
        <input class="form-control" type="text" id="adresse" name="addr" value="adresse" required>
        <input class="btn btn-primary" type="submit" value="modifier">
    </form>

</div>
