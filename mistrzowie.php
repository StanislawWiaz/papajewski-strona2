<?php
    require("db.php");
    $wynik = mysqli_query($conn, "SELECT * FROM mistrzowie");
    while ($wiersz = mysqli_fetch_array($wynik)){
        $nr = $wiersz["id"];
    echo '<a href="index.php?strona=mistrz&nr=' . $wiersz["id"] . '">';
    echo '<div class="mistrz-con">';
    echo '<img src="' . $wiersz["id"] . '.jpg">';
    echo $wiersz["imie_nazwisko"];
    echo '</div ></a>';
    
        
    }
        
        
    

    ?>
    