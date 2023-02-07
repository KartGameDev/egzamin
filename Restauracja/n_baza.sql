DROP DATABASE IF EXISTS baza;

CREATE DATABASE baza;

CREATE TABLE Restaurant(
    id int AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    adress VARCHAR(255) NOT NULL,
    postcode VARCHAR(10) NOT NULL
);

CREATE TABLE Restaurant_Table(
    id int AUTO_INCREMENT NOTNULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    number_of_guests INT,
    restaurant_id int,
    FOREIGN KEY (restaurant_id) REFERENCES Restaurant(id)
);

CREATE TABLE Reservation(
    id int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    phone_number VARCHAR(12),
    date DATETIME,
    number_of_guests INT,
    restaurant_table_id int,
    FOREIGN KEY (restaurant_table_id) REFERENCES Restaurant_Table(id)
);

CREATE TABLE MealType(
    id int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE Meal(
    id int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    price INT,
    meal_name VARCHAR(100),
    meal_type_id int,
    restaurant_id int,
    FOREIGN KEY (meal_type_id) REFERENCES MealType(id),
    FOREIGN KEY (restaurant_id) REFERENCES Restaurant(id)
);

CREATE TABLE Employee(
    id int AUTO_INCREMENT PRIMARY KEY NOT NULL,
    first_name VARCHAR(100),
    last_name VARCHAR(225),
    personal_id_number VARCHAR(11)
);

CREATE TABLE Employee_Position(
    id int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE Employment(
    employee_id int,
    employee_position_id int,
    restaurant_id int,
    FOREIGN KEY (employee_id) REFERENCES Employee(id),
    FOREIGN KEY (employee_position_id) REFERENCES Employee_Position(id),
    FOREIGN KEY (restaurant_id) REFERENCES Restaurant(id)
);