<?php
    $data = $numer = $zgoda = "";

    function dod($server, $username, $password, $database, $array) {
        $db = new mysqli($server, $username, $password, $database);

        $sql = "INSERT INTO rezerwacje (data_rez, telefon) VALUES ('{$array[0]}', {$array[1]}, '{$array[2]}')";
        $db->query($sql);
        $db->close();
    }

    function spr($test){
        $test = trim($test);
        $test = stripslashes($test);
        $test = htmlspecialchars($test);
        return $test;
    }

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $data = spr($_POST["data"]);
        $numer = spr($_POST["numer"]);
        $zgoda = spr($_POST["zgoda"]);

        if (dod("localhost", "root", "", "baza", array($data, $numer)) == NULL) {
            echo "dodano rezerwację";
        } else {
            echo "nie dodano rezerwacji";
        }
    }



?>