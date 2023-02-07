DROP DATABASE IF EXISTS `ogloszenia`;
CREATE DATABASE IF NOT EXISTS `ogloszenia` DEFAULT CHARACTER SET utf8 COLLATE utf8_polish_ci;
USE `ogloszenia`;

CREATE TABLE `uzytkownik` (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    imie TEXT,
    nazwisko TEXT,
    telefon TEXT,
    email TEXT
);

CREATE TABLE `ogloszenie` (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    uzytkownik_id INT,
    kategoria INT,
    podkategoria INT,
    tytul TEXT,
    tresc TEXT,
    FOREIGN KEY (uzytkownik_id) REFERENCES uzytkownik (id)
);
