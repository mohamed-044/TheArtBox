<?php
require_once(__DIR__ . '/header.php');
require_once(__DIR__ . '/bdd_connect.php');

?>

<article id="detail-oeuvre">
    <div id="img-oeuvre">
        <img src="<?= htmlspecialchars($oeuvre['image']) ?>" alt="<?= htmlspecialchars($oeuvre['titre']) ?>">
    </div>
    <div id="contenu-oeuvre">
        <h1><?= htmlspecialchars($oeuvre['titre']) ?></h1>
        <p class="description"><?= htmlspecialchars($oeuvre['artiste']) ?></p>
        <p class="description-complete">
            <?= htmlspecialchars($oeuvre['description']) ?>
        </p>
    </div>
</article>

<?php require_once(__DIR__ . 'footer.php'); ?>

