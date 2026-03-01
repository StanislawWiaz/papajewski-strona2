<?php
    require("db.php");
    $wynik = mysqli_query($conn, "SELECT * FROM mistrzowie, rankingi WHERE mistrzowie.ranking=rankingi.ID_Rankingu");
    while ($wiersz = mysqli_fetch_array($wynik)){
    echo '<div id="mistrz-con"> ';


    echo '<div id="lewa">', '<img src="img/' . $wiersz["id"] . '.jpg">', '</div>';
    
    
    echo '<div id="mistrz"> ';
    echo '<div id="imie">' . $wiersz["imie_nazwisko"] . '</div>';

    echo '<div class="ranking">ranking standard: <br>' . $wiersz["FIDE_standard"] . '</div>';
    echo '<div class="ranking">ranking rapid: <br>' . $wiersz["FIDE_standard"] . '</div>';
    echo '<div class="ranking">ranking blitz: <br>' . $wiersz["FIDE_standard"] . '</div>';

    echo '<div class="info">FIDE id: <br>' . $wiersz["FIDE_standard"] . '</div>';
    echo '<div class="info">Federacja: <br>' . $wiersz["FIDE_standard"] . '</div>';
    echo '<div class="info">rok urodzenia: <br>' . $wiersz["FIDE_standard"] . '</div>';
    echo '<div class="info">Płeć: <br>' . $wiersz["FIDE_standard"] . '</div>';
    echo '<div class="info">Tytuł FIDE: <br>' . $wiersz["FIDE_standard"] . '</div>';







    
    echo '</div>';
    echo '</div>';

        
    }
        
        
    

    ?>
    