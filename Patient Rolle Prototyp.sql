/*
Praktikum zur Lehrveranstaltung Datenbanken WS 23/24
Praktikum Nr.5
Gruppe 3
Patient Rolle
Alisa Stoyanova
Rahim Akkoyun
*/

--Rolle erstellen, die nur auf die Daten der eigenen Patienten zugreifen kann

CREATE ROLE Patient;

--Rechte vergeben

GRANT SELECT ON DB_WUY315.Digitale_Patientenakte TO Patient;
GRANT SELECT ON DB.WUY315.Hausarzt               TO Patient;

--Views erstellen (nur für die Tabellen, die von Patient bearbeitet werden)

CREATE VIEW Patientensicht AS
SELECT * FROM DB_WUY315.Digitale_Patientenakte
WHERE KVNummer = USER;