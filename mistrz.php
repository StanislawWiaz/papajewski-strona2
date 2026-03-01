<?php
$nr = $_GET['nr'];
$wynik = mysqli_query($conn, "SELECT * FROM mistrzowie, rankingi WHERE 
id=$nr AND
mistrzowie.ranking=rankingi.ID_rankingu");

    while ($wiersz = mysqli_fetch_array($wynik)){
    echo '<div class="mistrzDane">';
    echo '<img src="' . $wiersz["id"] . '.jpg">';
        echo '<div class="rankingi">';

            echo '<div class ="rankingPoj">FIDE standard<br> '.$wiersz["FIDE_standard"].'</div>';
            echo '<div class ="rankingPoj">FIDE blitz <br>'.$wiersz["FIDE_blitz"].'</div><br>';
            echo '<div class ="rankingPoj">FIDE rapid <br>'.$wiersz["FIDE_rapid"].'</div>';
            echo '<div class ="rankingPoj">FIDE standard <br>'.$wiersz["FIDE_standard"].'</div>';

        echo '</div>';
        echo '<div class="rankingi">';
            echo '<div class ="rankingPoj">czas gry w latach:<br> '.$wiersz["czas_gry"].'</div>';
            echo '<div class ="rankingPoj">tytuł szachowy: <br>'.$wiersz["tytul"].'</div><br>';
            echo '<div class ="rankingPoj">Imię i nazwisko: <br>'.$wiersz["imie_nazwisko"].'</div>';
            echo '<div class ="rankingPoj">Kraj pochodzenia: <br>'.$wiersz["kraj_pochodzenia"].'</div>';
        echo '</div>';
echo '<br><a href="usun.php?id=' . $wiersz["id"] . '"><button style="background-color: red; color: white; padding: 10px; border: none; cursor: pointer;">Usuń zawodnika z bazy</button></a>';   
    echo '</div>';
    
        
    }




?>