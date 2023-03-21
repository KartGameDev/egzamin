DROP DATABASE IF EXISTS sklep;

CREATE DATABASE sklep;

USE sklep;

CREATE TABLE typy(
    id INT  AUTO_INCREMENT PRIMARY KEY,
    kategoria TEXT 
);

CREATE TABLE producenci(
    id INT  AUTO_INCREMENT PRIMARY KEY,
    nazwa TEXT ,
    opis TEXT 
);

CREATE TABLE podzespoly(
    id INT  AUTO_INCREMENT PRIMARY KEY,
    nazwa TEXT ,
    opis TEXT,
    dostepnosc BOOLEAN,
    cena FLOAT,
    typy_id INT,
    producenci_id INT,
    FOREIGN KEY (typy_id) REFERENCES typy(id),
    FOREIGN KEY (producenci_id) REFERENCES producenci(id)
);