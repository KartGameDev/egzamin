SELECT id, tytul, tresc
FROM ogloszenia
WHERE kategoria = 1;

SELECT uz.telefon
FROM ogloszneie AS og
JOIN uzytkownik AS uz ON og.uzytkownik_id = uz.id
WHERE og.id = 1;

CREATE USER 'moderator'@'localhost' IDENTIFIED BY 'qwerty';

GRANT SELECT ON ksiazki.ogloszenie TO 'moderator'@'localhost';