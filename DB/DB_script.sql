CREATE TABLE fact_numbers
(
    number_id serial PRIMARY KEY,
    fact_number integer NOT NULL
);

CREATE TABLE fact_types
(
    fact_id serial PRIMARY KEY,
    fact_type varchar(64) NOT NULL
);

CREATE TABLE facts
(
    fact_id serial PRIMARY KEY,
    fk_fact_number integer REFERENCES fact_numbers(number_id) NOT NULL,
    fk_fact_type integer REFERENCES fact_types(fact_id) NOT NULL,
    fact text NOT NULL
);

INSERT INTO fact_types (fact_type)
VALUES
    ('t_trivia'),
    ('t_math'),
    ('t_date'),
    ('t_year');

INSERT INTO fact_numbers (fact_number)
VALUES
    (1),
    (2),
    (3),
    (4);

INSERT INTO facts (fk_fact_number, fk_fact_type, fact)
VALUES
    (1, 1, 'Fact 1, trivia'),
    (1, 2, 'Fact 1, math'),
    (1, 3, 'Fact 1, date'),
    (1, 4, 'Fact 1, year'),
    (2, 1, 'Fact 2, trivia'),
    (2, 2, 'Fact 2, math'),
    (2, 3, 'Fact 2, date'),
    (2, 4, 'Fact 2, year'),
    (3, 1, 'Fact 3, trivia'),
    (3, 2, 'Fact 3, math'),
    (3, 3, 'Fact 3, date'),
    (3, 4, 'Fact 3, year'),
    (4, 1, 'Fact 4, trivia'),
    (4, 2, 'Fact 4, math'),
    (4, 3, 'Fact 4, date'),
    (4, 4, 'Fact 4, year');

SELECT num.fact_number AS Число, typ.fact_type AS Тип, fac.fact AS Факт
FROM facts AS fac
         INNER JOIN fact_types AS typ ON fac.fk_fact_type = typ.fact_id
         INNER JOIN fact_numbers AS num ON fac.fk_fact_number = num.number_id
WHERE typ.fact_type = 't_trivia';


SELECT *
FROM facts;

SELECT *
FROM fact_types;

SELECT *
FROM fact_numbers;