CREATE DATABASE Nbaza;


CREATE TABLE restaurants(
    Id INT IDENTITY PRIMARY KEY NOT NULL,
    name: VARCHAR(50) NOT NULL,
    city: VARCHAR(30) NOT NULL,
    address: VARHAR(100) NOT NULL,
    zip_code: VARCHAR(6) NOT NULL,
),

CREATE TABLE orders(
    name: VARCHAR(20) NOT NULL,
    surname: VARCHAR(50) NOT NULL,
    phone: VARCHAR(12),
    amt_people: INT VARCHAR(2) NOT NULL,
    date: DATETIME,
    restaurant_id FOREIGN KEY NOT NULL REFERENCES restaurants(id),
),


CREATE TABLE meal(
    Id INT IDENTITY PRIMARY KEY NOT NULL,
    name: VARCHAR(50) NOT NULL,
    mealtype_id FOREIGN KEY NOT NULL REFERENCES meal_type(Id),
),

CREATE TABLE meal_type(
    Id INT IDENTITY PRIMARY KEY NOT NULL,
    name: VARCHAR(50),
),
