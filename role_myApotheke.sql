--Vorhandene Rolle löschen
DROP ROLE myApotheke;

CREATE ROLE myApotheke;

--Apotheke
GRANT SELECT ON DB_WUY315.erezept TO myApotheke;