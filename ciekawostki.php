<?php
require("db.php");
$wynik = mysqli_query($conn, "SELECT * FROM teksty");


while ($wiersz = mysqli_fetch_array($wynik)){
    echo '<div class="mistrz-con">';
    echo '<p style="font-size: 18px;">' . $wiersz["tekst"] . '</p>';
    echo '</div>';
}
?>