<div class="content">
    <h1>Ajout d'un éleve</h1>
    <form action="index.php?do=eleve&action=ajout" method="post">
        <label for="nom">nom : </label>
        <input type="text" id="nom" name="nom" required><br>
        <label for="prenom">prénom</label>
        <input type="text" id="prenom" name="prenom" required><br>
        <label for="addr">adresse</label>
        <input type="text" id="addr" name="addr" required><br>
        <input type="submit" value="ajouter">
    </form>
</div>