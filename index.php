<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
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
    <div id="container">
        <div id="logo"><img src="img/pion.png"></div>
        <div id="tytul">Szachy</div>
        <div id="content"><?php include("$file$roz"); ?></div>
        <div id="prawa">
            <ul>
                <a href="index.php?strona=mistrzowie"><li>MISTRZOWIE</li></a>
                <li>dsagdsad</li>
                <li>gdsagsdg</li>
                <li>sdagasdgds</li>
                <li>agsdagsda</li>
                <li>gsadgsadgsdag</li>
                <li>asdgsadgsaddg</li>
                <li>dupa dupa dupa</li>
                
                <li>asdgsadg</li>
                <li>asdgdsag</li>
                    
            </ul>
        </div>
        




    </div>
</body>
</html>
