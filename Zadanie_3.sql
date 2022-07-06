-- Agregaty - Zadanie 3 - Funkcje związane z datą
-- Komentarz jednolinjkowy

-- Użycie bazy danych z zadania nr 1: aggregates
use aggregates;

-- a. Rozłóż datę pokazaną w kolumnie start_date na trzy kolumny: rok, miesiąc, dzień.
select year(start_date) as YR, month(start_date) as MO, day(start_date) as DAY
from aggregates.batman;

-- b. Wyświetl kolumnę start_date oraz kolumnę final_date, która wyświetli datę o 3 dni późniejszą, niż data w start_date.
select start_date, adddate(start_date, 3) as final_date from aggregates.batman;

-- c. Wyświetl dzisiejszą datę.
select current_date();

-- d. Wyświetl nazwę obecnego miesiąca.
select monthname(current_date());

-- e. Wyświetl start_date, a następnie kolumny określające: numer tygodnia, nazwę miesiąca, kwartał, numer dnia w roku.
select start_date, weekofyear(start_date) as number_of_week, monthname(start_date) as month_name, quarter(start_date) as kwartał, dayofyear(start_date) as day_of_year from aggregates.batman;
