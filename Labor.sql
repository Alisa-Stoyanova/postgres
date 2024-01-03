/*
Praktikum zur Lehrveranstaltung Datenbanken WS 23/24
Praktikum Nr.5
Gruppe 3
Labor Rolle
Alisa Stoyanova
Rahim Akkoyun
*/

--Rolle erstellen, die nur auf die Daten der eigenen Patienten zugreifen kann

CREATE ROLE Labor;

--View erstellen, die nur die eigenen Messwerte anzeigt

CREATE VIEW LaborSicht AS
SELECT Probennummer, Probetyp, gegebenVon FROM DB_WUY315.Probe
WHERE Labornummer = USER;

--Rechte vergeben und View freigeben

GRANT SELECT ON DB_WUY315.LaborSicht TO Labor;
GRANT SELECT ON DB_WUY315.Messwert TO Labor;