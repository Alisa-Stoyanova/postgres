/*
Praktikum zur Lehrveranstaltung Datenbanken WS 23/24
Praktikum Nr.5
Gruppe 3
Schemaskript
Alisa Stoyanova
Rahim Akkoyun
*/

-- Rolle erstellen, die nur auf die Daten der eigenen Patienten zugreifen kann

CREATE ROLE Hausarzt;

-- Rechte vergeben

GRANT SELECT, INSERT, UPDATE ON DB_WUY315.Patient                   TO Hausarzt;
GRANT SELECT, INSERT, UPDATE ON DB_WUY315.Digitale_Patientenakte    TO Hausarzt;
GRANT SELECT, INSERT, UPDATE ON DB_WUY315.Termin                    TO Hausarzt;
GRANT SELECT, INSERT, UPDATE ON DB_WUY315.Ueberweisung              TO Hausarzt;
GRANT SELECT, INSERT, UPDATE ON DB_WUY315.Probe                     TO Hausarzt;
GRANT SELECT, INSERT, UPDATE ON DB_WUY315.Untersuchung              TO Hausarzt;
GRANT SELECT, INSERT, UPDATE ON DB_WUY315.eRezept                   TO Hausarzt;
GRANt SELECT, INSERT, UPDATE ON DB_WUY315.Messwert                  TO Hausarzt;

-- Views erstellen

CREATE VIEW HausarztPatientenAkte AS
SELECT * FROM DB_WUY315.Digitale_Patientenakte
WHERE eingetragenVonHausarzt = USER;

CREATE VIEW HausarztPatienten AS
SELECT * FROM DB_WUY315.Patient
WHERE betreutVon = USER;

CREATE VIEW HausarztTermine AS
SELECT * FROM DB_WUY315.Termin
WHERE vergibtTerminHausarzt = USER;

CREATE VIEW HausarztUeberweisungen AS
SELECT * FROM DB_WUY315.Ueberweisung
WHERE ueberwiesenVon = USER;

CREATE VIEW HausarztProben AS
SELECT * FROM DB_WUY315.Probe
WHERE entnommenVonHausarzt = USER;

CREATE VIEW HausarztUntersuchungen AS
SELECT * FROM DB_WUY315.Untersuchung
WHERE untersuchtVonHausarzt = USER;

CREATE VIEW HausarztRezepte AS
SELECT * FROM DB_WUY315.eRezept
WHERE ausgestelltVon = USER;

CREATE VIEW HausarztMesswerte AS
SELECT * FROM DB_WUY315.Messwert
WHERE erhaltenVon = USER;