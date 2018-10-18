<div class="content">
    <table class="table table-hover">
        <caption>Liste des éleves</caption>
        <thead>
            <th>nom</th>
            <th>prénom</th>
            <th>date inscription</th>
            <th>adresse</th>
            <th>crédit horaire</th>
        </thead>
        <tbody>
            <?php foreach ($lesEleves as $eleve) : ?>
                <tr>
                    <td>
                        <?= $eleve['nom']; ?>
                    </td>
                    <td>
                        <?= $eleve['prenom']; ?>
                    </td>
                    <td>
                        <?= $eleve['dateInscription']; ?>
                    </td>
                    <td>
                        <?= $eleve['adresse']; ?>
                    </td>
                    <td>
                        <?= $eleve['creditHoraire']; ?>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>