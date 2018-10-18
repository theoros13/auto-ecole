<div class="container">
    <h1>liste des véhicules</h1>
    <table class="table table-hover">
        <thead>
            <th>immatriculation</th>
            <th>modele</th>
            <th>couleur</th>
        </thead>
        <tbody>
            <?php foreach ($vehicule as $v) : ?>
                <tr>
                    <td><?= $v['numImma'] ; ?></td>
                    <td><?= $v['modele'] ; ?></td>
                    <td style="background-color: <?= $v['couleur']; ?>"></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>