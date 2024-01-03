/*
Praktikum zur Lehrveranstaltung Datenbanken WS 23/24
Praktikum Nr.5
Gruppe 3
Apotheke Rolle
Alisa Stoyanova
Rahim Akkoyun
*/

--Rolle erstellen, die nur auf die Daten der eigenen Patienten zugreifen kann

CREATE ROLE Apotheke;

--Rechte vergeben

GRANT SELECT, INSERT, UPDATE ON DB_WUY315.eRezept TO Apotheke;
GRANT SELECT ON MDB_WUY315.Medikament TO Apotheke;

--Views erstellen (nur für die Tabellen, die von Apotheke bearbeitet werden)

CREATE VIEW ApothekeSicht AS
SELECT Rezeptnummer, ausgestelltAn, ausgestelltVon FROM DB_WUY315.eRezept
WHERE Apothekennummer = USER;

--View freigeben

GRANT SELECT ON DB_WUY315.ApothekeSicht TO Apotheke;