<div class="form-group">
    <h1>affecter leçon</h1>
    <form action="index.php?do=lecon&action=affecter" method="post">
        <select class="form-control" name="eleve" id="eleve">
            <?php foreach ($eleve as $item): ?>
                <option value="<?= $item['code']; ?>"><?= $item['nom']; ?> <?= $item['prenom']; ?></option>
            <?php endforeach; ?>
        </select>
        <select class="form-control" name="lecon" id="lecon">
            <?php if (empty($lecon)) : ?>
                <option value="">Aucune leçcon a affecter</option>
            <?php else: ?>
                <?php foreach ($lecon as $items): ?>
                    <option value="<?= $items['numero']; ?>"><?= $items['Date']; ?> <?= $items['heure']; ?></option>
                <?php endforeach; ?>
            <?php  endif; ?>
        </select>
        <input class="btn btn-primary" type="submit" value="affecter">
    </form>
</div>