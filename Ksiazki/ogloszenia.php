<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Portal ogłoszeniowy</title>
    <link rel="stylesheet" href="styll.css?v=3">
</head>
<body>
    <div id="baner">
        <h1>Portal ogłoszeniowy</h1>
    </div>
    <div id="panele">
        <div id="panel-lewy">
            <h2>Kategorie ogłoszeń</h2>
            <ol type="I">
                <li>Książki</li>
                <li>Muzyka</li>
                <li>Filmy</li>
            </ol>
            <img src="ksiazki.jpg" alt="Kupię / sprzedam książkę">
            <table>
                <tr>
                    <th>Liczba ogłoszeń</th>
                    <th>Cena ogłoszenia</th>
                    <th>Bonus</th>
                </tr>
                <tr>
                    <td>1 - 10</td>
                    <td>1 PLN</td>
                    <td rowspan="3">Subskrybcja newslettera to upust 0,20 PLN na ogłoszenie</td>
                </tr>
                <tr>
                    <td>11 - 50</td>
                    <td>0,80 PLN</td>
                </tr>
                <tr>
                    <td>51 i więcej</td>
                    <td>0.60 PLN</td>
                </tr>
            </table>
        </div>
        <div id="panel-prawy">
            <h2>Ogłoszenia kategorii książki</h2>

            <?php
            $db = mysqli_connect("localhost", "root", "", "ogloszenia");
            if(!$db){
                die("Something went wrong. unexpected error: (");
            }

            $sql1 = "SELECT id, tytul, tresc FROM ogloszenie WHERE kategoria = 1";
            $result1 = mysqli_query($db, $sql1);

            while($row = mysqli_fetch_array($result1)){
                echo("<h3>" . $row["id"] . "-" . $row["tytul"] . "</h3>");
                echo ("<p>" . $row["tresc"] . "</p>");

                $sql2 = "SELECT uz.tekefon FROM ogloszenie as og JOIN uzytkownik as uz on og.uz";
                $result2 = mysqli_query($db, $sql2);
                $tel = mysqli_fetch_array(($result2));

                echo("<p>" . "telefon kontaktowy: " . $tel["telefon"] . "</p>");
            }

            mysqli_close($db);
            
            ?>
        </div>
    </div>
    <div id="stopka">
        Portal ogłoszeniowy opracował: 00000000000
    </div>
</body>
</html>