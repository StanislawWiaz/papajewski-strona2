<?php
require("db.php");
$id = (int)$_GET['id'];
mysqli_query($conn, "DELETE FROM mistrzowie WHERE id = $id");

echo "<h3>Zawodnik został usunięty.</h3>";
echo "<a href='index.php?strona=mistrzowie'><button>Powrót do listy</button></a>";
?>