<?php
require_once(__DIR__ . '/header.php');
require_once(__DIR__ . '/bdd_connect.php');

ini_set('display_errors', 1);
error_reporting(E_ALL);

if (!isset($_GET['id']) || empty($_GET['id'])) {
    header('Location: index.php');
    exit;
}

$id = intval($_GET['id']);

$oeuvresStatement = $mysqlClient->prepare('SELECT * FROM oeuvres WHERE id = ?');
$oeuvresStatement->execute([$id]);

$oeuvre = $oeuvresStatement->fetch(PDO::FETCH_ASSOC);

if (!$oeuvre) {
    header('Location: index.php');
    exit;
}
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

<?php require_once(__DIR__ . '/footer.php'); ?>
