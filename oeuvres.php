<?php

$oeuvresStatement = $mysqlClient->prepare('SELECT * FROM oeuvres WHERE id = ?');
$oeuvresStatement->execute([$_GET['id']]);
$oeuvre = $oeuvresStatement->fetch();
echo '<pre>';
print_r($oeuvres);
echo '</pre>';
exit;