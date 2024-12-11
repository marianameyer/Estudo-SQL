SHOW databases;

CREATE DATABASE first_example;

USE first_example;
SHOW TABLES;

CREATE TABLE person (
    person_id SMALLINT UNSIGNED,
    fname VARCHAR(20),
    lname VARCHAR(20),
    gender ENUM('M','F'),
    birth_date DATE,
    street VARCHAR(30),
    city VARCHAR(20),
    state VARCHAR(20),
    country VARCHAR(20),
    postal_code VARCHAR(20),
    CONSTRAINT pk_person PRIMARY KEY (person_id)
);

DESC person;

CREATE TABLE favorite_food(
    person_id SMALLINT UNSIGNED,
    food VARCHAR(20),
    CONSTRAINT pk_favorite_food PRIMARY KEY (person_id, food),
    CONSTRAINT fk_favorite_food_person_id FOREIGN KEY (person_id) REFERENCES person(person_id)
);

DESC favorite_food;

SELECT * FROM information_schema.table_constraints;

SELECT * FROM information_schema.table_constraints WHERE constraint_schema = 'first_example';

DESC person;

INSERT INTO person VALUES ('1','Carolina','Silva','F','1979-08-21',
'Rua 1','Cidade J','RJ','Brasil','26054-89');

INSERT INTO person VALUES 
    ('2','José','Costa','M','1982-06-01',
'Rua 2','Cidade M','RJ','Brasil','23198-89'),
    ('3','Jana','Luz','F','1998-12-20',
'Rua 3','Cidade H','RJ','Brasil','29128-44'),
    ('4','Ana','Cruz','F','1999-06-22',
'Rua 4','Cidade N','RJ','Brasil','21938-22');

DESC favorite_food;

INSERT INTO favorite_food VALUES 
    (1,'Lasanha),
    (2,'Carne assada'),
    (3,'Macarrão'),
    (4,'Sorvete');

SHOW TABLES;
