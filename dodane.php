<?php
require("db.php");

$fide_standard = $_POST['fide_standard'];
$fide_rapid = $_POST['fide_rapid'];
$fide_blitz = $_POST['fide_blitz'];

$imie_nazwisko = $_POST['imie_nazwisko'];
$tytul = $_POST['tytul'];
$czas_gry = $_POST['czas_gry'];
$kraj_pochodzenia = $_POST['kraj_pochodzenia'];

mysqli_query($conn, "INSERT INTO rankingi (FIDE_standard, FIDE_rapid, FIDE_blitz) VALUES ('$fide_standard', '$fide_rapid', '$fide_blitz')");

$id_rankingu = mysqli_insert_id($conn);

mysqli_query($conn, "INSERT INTO mistrzowie (imie_nazwisko, Tytul, ranking, czas_gry, kraj_pochodzenia) VALUES ('$imie_nazwisko', '$tytul', '$id_rankingu', '$czas_gry', '$kraj_pochodzenia')");

header("Location: index.php");
?>