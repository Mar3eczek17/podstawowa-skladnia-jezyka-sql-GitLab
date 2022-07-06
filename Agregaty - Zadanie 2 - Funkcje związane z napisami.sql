-- Agregaty - Zadanie 2 - Funkcje związane z napisami
-- Komentarz jednolinjkowy

-- Użycie bazy danych z zadania nr 1: aggregates
use aggregates;

-- a. Wyświetl imię i nazwisko w jednej kolumnie. Kolumnie nadaj alias „Pracownik”
select concat(first_name, ' ',last_name) as Pracownik from aggregates.batman;

-- b. Złącz kolumny gift i price tak, aby powstał napis: „rower – cena: ”. Kolumnie nadaj alias: cennik.
select concat("„", gift, " – ", price, ': ”') as cennik from aggregates.batman;

-- c. Ponownie wykonaj zadanie 2b – doklej imię i nazwisko pracownika
select concat(first_name, ' ', last_name, ' ', "„", gift, " – ", price, ': ”') as cennik from aggregates.batman;

-- d. Wyświetl prezenty. Ich nazwy mają być wyświetlane wielkimi literami.
select upper(gift) from aggregates.batman;

-- e. Wyświetl imiona. Mają być wyświetlane małymi literami.
select lower(first_name) from aggregates.batman;

-- f. Wyświetl nazwiska oraz dodatkową kolumnę „długość” zawierającą informację o liczbie liter w nazwisku.
select last_name, length(last_name) as długość from aggregates.batman;

-- g. Wyświetl pierwsze dwie litery imion.
select concat(substring(first_name, 1, 2)) from aggregates.batman;

-- h. Wyświetl imię, nazwisko i login użytkownika w formacie: mała litera imienia + 3 pierwsze, małe litery nazwiska.
select concat(substring(lower(first_name), 1, 1), substring(lower(last_name), 1, 3)) from aggregates.batman;
