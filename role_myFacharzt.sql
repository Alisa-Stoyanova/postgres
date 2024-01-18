--Vorhandene Rolle löschen
DROP ROLE myFacharzt;

--Rolle erstellen
CREATE ROLE myFacharzt;

--Zugriffsrechte für die Rolle definieren
--Facharzt
GRANT SELECT, UPDATE ON DB_WUY315.akte TO myFacharzt;