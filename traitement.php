<?php
require_once(__DIR__ . '/bdd_connect.php');

$postData = $_POST;

if (
    !isset($postData['titre']) ||
    !isset($postData['artiste']) ||
    !isset($postData['image']) ||
    !isset($postData['description']) ||
    strlen($postData['description']) < 3 ||
    !preg_match('/^https:\/\/.+/', $postData['image'])
) {
    echo('Il faut un titre, un artiste, une image avec url valide et une description pour soumettre le formulaire.');
    return;
}
$titre = $_POST['titre'];
$artiste = $_POST['artiste'];
$image = $_POST['image'];
$description = $_POST['description'];
$insertOeuvre = $mysqlClient->prepare('INSERT INTO oeuvres(titre, artiste, image, description) VALUES (:titre, :artiste, :image, :description)');
$insertOeuvre-> execute(
    [
        'titre' => $titre,
        'artiste' => $artiste,
        'image' => $image,
        'description' => $description,
    ]
    )or die(print_r($mysqlClient->errorInfo()));
$_SESSION['SUCCESS_MESSAGE'] = "Oeuvre ajoutée avec succès !";
header('Location: index.php');
exit();
?>