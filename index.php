<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div id="container">
        <?php

        require("db.php");
        
        $roz = ".php";

        if (!isset($_GET["strona"])) {
            $file = 'main';
        }
        else {
            $file = $_GET["strona"];
        }

        
            ?>
        
        <div id="nav-con">
            <div id="naglowek"><h1>Szachy</h1></div>
            <div id="podstrony">
                <ul>
                    <?php
                    echo '<li><a href="index.php?strona=mistrzowie">MISTRZOWIE</a></li>';
                    echo '<li><a href="index.php?strona=dodaj">Dodaj szachistę</a></li>';
                    echo '<li>dupa</li>';
                    echo '<li>dupa</li>';

                    ?>
                </ul>
            </div>
        </div>
        <div id="content">
            <?php
                include($file.$roz);
            ?>


    </div>
</body>
</html>
