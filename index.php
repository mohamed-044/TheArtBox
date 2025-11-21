<?php
require_once(__DIR__ . '/header.php');
require_once(__DIR__ . '/bdd_connect.php');

ini_set('display_errors', 1);
error_reporting(E_ALL);

$oeuvresStatement = $mysqlClient->prepare('SELECT * FROM oeuvres');
$oeuvresStatement->execute();
$oeuvres = $oeuvresStatement->fetchAll(PDO::FETCH_ASSOC);
?>

<section id="liste-oeuvres">
    <?php foreach ($oeuvres as $oeuvre): ?>
        <article class="oeuvre">
            <a href="oeuvre.php?id=<?= $oeuvre['id'] ?>">
                <img src="<?= htmlspecialchars($oeuvre['image']) ?>" alt="<?= htmlspecialchars($oeuvre['titre']) ?>">
                <h2><?= htmlspecialchars($oeuvre['titre']) ?></h2>
                <p><?= htmlspecialchars($oeuvre['artiste']) ?></p>
            </a>
        </article>
    <?php endforeach; ?>
</section>

<?php require_once('footer.php'); ?>
