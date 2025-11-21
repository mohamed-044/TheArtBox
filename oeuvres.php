<?php

require_once(__DIR__ . '/bdd_connect.php');

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
