CREATE DATABASE baza;

USE baza;

CREATE TABLE lokale (
    id INTEGER PRIMARY KEY,
    nazwa TEXT,
    miasto TEXT,
    ulica TEXT,
    numer INTEGER
);

CREATE TABLE dania (
    id INTEGER PRIMARY KEY,
    typ INTEGER,
    nazwa TEXT,
    cena INTEGER
);

CREATE TABLE rezerwacje (
    id INTEGER PRIMARY KEY,
    nr_stolika INTEGER,
    data_rez DATE,
    liczba_osob INTEGER,
    telefon TEXT
);

CREATE TABLE pracownicy (
    id INTEGER PRIMARY KEY,
    imie TEXT,
    nazwisko TEXT,
    stanowisko INTEGER
);

INSERT INTO lokale (nazwa, miasto, ulica)
VALUES('Encepence', 'Lublin', 'Kaprysowa 1'), ('Red Rock City', 'Warszawa', 'M.C.Skłodowskiej 5');

INSERT INTO dania (typ, cena, nazwa)
VALUES (1, 12, 'Rosół z kury'), (1, 10, 'Pomidorowa'), (2, 25, 'Kotlet schabowy z ziemniakami gotowanymi i mizerią'), (2, 28, 'Kotlet mielony z buraczkami i kapustą'),
(2, 72, 'Stek z kością z frytkami i zestawem surówek'), (3, 14, 'Tatar wołowy'), (3, 22, 'Antipasti'), (3, 17, 'Tatar z łososia'), (4, 6, 'Herbata'), (4, 8, 'Cola'), 
(4, 5, 'Kawa');

INSERT INTO rezerwacje(nr_stolika, data_rez, liczba_osob, telefon)
VALUES (1, '2022-09-18', 3, '123456789'), (2, '2022-09-19', 1, '987564213'), (2, '2022-09-20', 1, '777755553');

INSERT INTO pracownicy (imie, nazwisko, stanowisko)
VALUES ('Roman', 'Wiecki', 1), ('Piotr', 'Skwarek', 1), ('Magdalena', 'Gessler', 2), ('Anita', 'Pietrzakowska', 2), ('Tomasz', 'Nowak', 3), ('Agata', 'Wolińska', 3), 
('Piotr', 'Jarosz', 4), ('Tomasz', 'Bronder', 4);