<?php
require("db.php");
$wynik = mysqli_query($conn, "SELECT * FROM teksty");

        $nr = $wiersz["id_tekstu"];

while ($wiersz = mysqli_fetch_array($wynik)){
    echo '<a href="index.php?strona=ciekawostka&nr=' . $wiersz["id_tekstu"] . '">';
    echo '<div class="mistrz-con">';
    echo '<p style="font-size: 18px;">' . $wiersz["tekst"] . '</p>';
    echo '</div>';
    echo '</a>';

}
?>