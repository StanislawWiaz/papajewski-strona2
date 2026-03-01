<?php
$nr = $_GET['nr'];
$wynik = mysqli_query($conn, "SELECT * FROM teksty WHERE 
id_tekstu=$nr
");

    while ($wiersz = mysqli_fetch_array($wynik)){
    echo '<div class="mistrz-con1">';
    echo  $wiersz["tekst"];
    echo '</div>';

    
        
    }




?>