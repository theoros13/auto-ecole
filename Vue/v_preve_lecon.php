<div class="content">
    <h1>liste des leçon prévue</h1>
    <table class="table table-hover">
        <thead>
            <th>numéro</th>
            <th>date</th>
            <th>heure</th>
            <th>durée</th>
            <th>voiture</th>
            <th>nom</th>
            <th>prenom</th>
            <th></th>
        </thead>
        <tbody>
        <?php foreach ($lecon as $thelecon): ?>
            <tr>
                <td><?= $thelecon['numero'] ; ?></td>
                <td><?= $thelecon['Date'] ; ?></td>
                <td><?= $thelecon['heure'] ; ?></td>
                <td><?= $thelecon['duree'] ; ?></td>
                <td><?= $thelecon['numImma'] ; ?></td>
                <td><?= $thelecon['nom'] ; ?></td>
                <td><?= $thelecon['prenom'] ; ?></td>
                <td><input type="checkbox" onclick="setLeconDo(<?= $thelecon['numero'] ; ?>)"></td>
            </tr>
        <?php endforeach; ?>
        </tbody>
    </table>

</div>