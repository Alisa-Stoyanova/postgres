/*
Praktikum zur Lehrveranstaltung Datenbanken WS 23/24
Praktikum Nr.5
Gruppe 3
Schemaskript
Alisa Stoyanova
Rahim Akkoyun
*/

--Rolle erstellen, die nur auf die Daten der eigenen Patienten zugreifen kann

CREATE ROLE Facharzt;

--Rechte vergeben

GRANT SELECT, INSERT, UPDATE ON DB_WUY315.Termin                   TO Facharzt;
GRANT SELECT, INSERT, UPDATE ON DB_WUY315.Ueberweisung             TO Facharzt;
GRANT SELECT, INSERT, UPDATE ON DB_WUY315.Probe                    TO Facharzt;
GRANT SELECT, INSERT, UPDATE ON DB_WUY315.Untersuchung             TO Facharzt;
GRANT SELECT, INSERT, UPDATE ON DB_WUY315.Digitale_Patientenakte   TO Facharzt;

--Views erstellen

CREATE VIEW FacharztTermine AS
SELECT * FROM DB_WUY315.Termin
WHERE vergibtTerminFacharzt = USER;

CREATE VIEW FacharztUeberweisungen AS
SELECT * FROM DB_WUY315.Ueberweisung
WHERE ueberwiesenAn = USER;

CREATE VIEW FacharztProben AS
SELECT * FROM DB_WUY315.Probe
WHERE entnommenVonFacharzt = USER;

CREATE VIEW FacharztUntersuchungen AS
SELECT * FROM DB_WUY315.Untersuchung
WHERE untersuchtVonFacharzt = USER;

CREATE VIEW FacharztRezepte AS
SELECT * FROM DB_WUY315.eRezept
WHERE ausgestelltAn = USER;

CREATE VIEW FacharztPatientenAkte AS
SELECT * FROM DB_WUY315.Digitale_Patientenakte
WHERE eingetragenVonFacharzt = USER;

--Trigger erstellen (nur für die Tabellen, die von Facharzt bearbeitet werden)

CREATE TRIGGER InformierenHausarzt
AFTER INSERT ON DB_WUY315.Untersuchung
FOR EACH ROW
BEGIN
    INSERT INTO DB_WUY315 informierenFacharzt(Datum, Arztnummer, Facharztnummer)
    VALUES (CURRENT_DATE,NEW.untersuchtVonHausarzt, USER);
END;