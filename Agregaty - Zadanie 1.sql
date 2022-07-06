/*
Agregaty
przygotowanie do zadań:
*/

CREATE DATABASE aggregates;
CREATE TABLE aggregates.batman(
  id INTEGER PRIMARY KEY NOT NULL,
  first_name TEXT,
  last_name TEXT,
  sex CHAR(1),
  age INTEGER,
  price DOUBLE,
  start_date DATE,
  gift TEXT
);
INSERT INTO aggregates.batman VALUES (1, 'Alicja', 'Rogal', 'F', 16, 100.25,'2020-01-02', 'rower' );
INSERT INTO aggregates.batman VALUES (2, 'Iwona', 'Kowalska', 'F', 33, 56.58, '2020-01-03', 'komputer');
INSERT INTO aggregates.batman VALUES (3, 'Igor', 'Kowalski', 'M', 50, 68.00, '2020-01-04', 'karty');
INSERT INTO aggregates.batman VALUES (4, 'Kamil', 'Juszczak', 'M', 50, 40.87, '2020-01-05', 'piłka'); 
INSERT INTO aggregates.batman VALUES (5, 'Konrad', 'Kowal', 'M', 18, 32.63, '2020-01-06', 'herbata' );
INSERT INTO aggregates.batman VALUES (6, 'Iwona', 'Feniks', 'F', 35, 78.98, '2020-01-07', 'okno' );
INSERT INTO aggregates.batman VALUES (7, 'Robert', 'Lew', 'M', 40, 120.32, '2020-01-08', 'drzwi');
INSERT INTO aggregates.batman VALUES (8, 'Tomasz', 'Nowak', 'M', 60, 150.00, '2020-01-09', 'korona');
INSERT INTO aggregates.batman VALUES (9, 'Aldona', 'Buk', NULL, NULL, 121.25, '2020-01-10', 'wycieczka');

-- Agregaty - Zadanie 1
-- a. Policz, ile jest rekordów w tabeli (po id).
select * from aggregates.batman;
select count(id) from aggregates.batman;

-- b. Policz, ile jest rekordów z wiekiem.
select count(age) from aggregates.batman;

-- c. Ilu mężczyzn ma więcej niż 40 lat?
select count(id) from aggregates.batman where age > 40;

-- d. Oblicz sumę wszystkich cen.
select sum(price) from aggregates.batman;

-- e. Oblicz łączny wiek kobiet.
select sum(age) from aggregates.batman where sex = 'F';

-- f. Podaj łączną wartość komputera i okna.
select round(sum(price), 2) from aggregates.batman where gift = 'komputer' or gift = 'rower';

-- g. Podaj maksymalną cenę.
select max(price) from aggregates.batman;

-- h. Podaj najpóźniejszą datę
select max(start_date) from aggregates.batman;

-- i. Podaj nazwisko rozpoczynające się literą, która jest najbliżej końca alfabetu
select max(last_name) from aggregates.batman;

-- j. Podaj minimalną cenę.
select min(price) from aggregates.batman;

-- k. Podaj najwcześniejszą datę
select min(start_date) from aggregates.batman;

-- l. Podaj nazwisko rozpoczynające się literą, która jest najbliżej początku alfabetu
select min(last_name) from aggregates.batman;

-- m. Jednocześnie podaj cenę minimalną oraz maksymalną. Nadaj odpowiednie aliasy.
select min(price) as 'MIN_PRICE', max(price) as 'MAX_PRICE' from aggregates.batman;

-- n. Oblicz różnicę pomiędzy ceną maksymalną, a minimalną.
select max(price) - min(price) from aggregates.batman;

-- o. Oblicz średnią wieku.
select round(avg(age), 2) from aggregates.batman;

-- p. Oblicz średnią wieku za pomocą COUNT oraz SUM.
select round(sum(age)/count(age), 2) from aggregates.batman;

-- q. Oblicz średni wiek dla kobiet oraz średni wiek dla mężczyzn.
select round(avg(age), 2) as F from aggregates.batman where sex='F';
select round(avg(age), 2) as M from aggregates.batman where sex='M';
