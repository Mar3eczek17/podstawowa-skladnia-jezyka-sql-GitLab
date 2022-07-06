-- Agregaty - Zadanie 4 - Funkcje matematyczne
-- Komentarz jednolinjkowy

-- Użycie bazy danych z zadania nr 1: aggregates
use aggregates;

-- a. Podaj średnią wieku. Podaj zaokrąglony wynik do dwóch miejsc po przecinku.
select round(avg(age), 2) from aggregates.batman;

-- b. Wyświetl wartość bezwzględną liczby -3.
select abs(-3);

-- c. Wyświetl wynik mnożenie 2 * 3
select 2*3;

-- d. Wyświetl wynik dzielenia 6 przez 2
select round(6/2, 2);
