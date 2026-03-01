<?php
    require("db.php");
    $wynik = mysqli_query($conn, "SELECT * FROM mistrzowie, rankingi WHERE mistrzowie.ranking=rankingi.ID_Rankingu");
    while ($wiersz = mysqli_fetch_array($wynik)){
    

        
    }
        
        
    

    ?>
    