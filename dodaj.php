Treść wiadomości Gemini

<form method="post" action="dodane.php">

<select name="ranking">
<?php
require("db.php");
$wynik = mysqli_query($conn, "SELECT * FROM rankingi");
while ($wiersz = mysqli_fetch_array($wynik)){
echo '<option value="' . $wiersz["ID_rankingu"] . '">' . $wiersz["FIDE_standard"] . '</option>';
}
?>
</select>

imię i nazwisko: <input type="text" name="imie_nazwisko">


tytuł: <input type="text" name="Tytul">


czas gry: <input type="text" name="czas_gry">


<input type="submit" value="Zatwierdź" id="przycisk">
<a href="index.php"><button type="button" >Anuluj</button></a>
</form>