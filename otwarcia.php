<?php
require("db.php");

$wynik = mysqli_query($conn, "SELECT * FROM otwarcia");

echo '<h1 style="text-align: center;">Popularne Otwarcia Szachowe</h1>';

while ($wiersz = mysqli_fetch_array($wynik)){
    echo '<div class="mistrz-con" style="width: 80%; display: block; margin: 20px auto; padding: 20px; text-align: left;">';
    echo '<h2>' . $wiersz["nazwa"] . '</h2>';
    echo '<p style="font-size: 18px;">' . $wiersz["opis"] . '</p>';
    echo '</div>';
}
?>