--Rollen erstellen
CREATE ROLE patient;
CREATE ROLE hausarzt;
CREATE ROLE fachlabor;
CREATE ROLE facharzt;
CREATE ROLE apotheke;

--Zugriffsrechte für die Rollen definieren
--Patient
GRANT SELECT ON DB_WUY315.digitalepatientenakte TO patient; --Patienten können lesend auf ihre Patientenakte zugreifen, aber nicht schreiben.

--Hausarzt
GRANT SELECT, INSERT, UPDATE ON DB_WUY315.patient TO hausarzt; --Hausärzte können neue Patienten aufnehmen
GRANT SELECT, INSERT, UPDATE ON DB_WUY315.digitalepatientenakte TO hausarzt WITH GRANT OPTION; --Hausärzte können Patientenakte für Patienten anlegen und bearbeiten, aber nicht löschen.
-- Können den Fachärzten den Zugriff auf ausgewählte Patientenakten gewähren
GRANT SELECT, INSERT, UPDATE ON DB_WUY315.termin TO hausarzt; --Hausärzte können mit Patienten einen Termin vereinbaren
GRANT SELECT, INSERT, UPDATE ON DB_WUY315.probe TO hausarzt; --Hausärzte können Proben in ein Fachlabor schicken
GRANT SELECT ON DB_WUY315.messwert TO hausarzt; --Hausärzte können die Probenwerte zurückerhalten und in die Patientenakte eintragen
GRANT SELECT, INSERT, UPDATE ON DB_WUY315.erezept TO hausarzt WITH GRANT OPTION; --Hausärzte können eRezepte ausstellen und an die Patienten weitergeben
GRANT SELECT, INSERT, UPDATE ON DB_WUY315.ueberweisung TO hausarzt; --Hausärzte können an Fachärzte überweisen

--Fachlabor
GRANT SELECT ON DB_WUY315.probe TO fachlabor; --Fachlabore erhalten Proben
GRANT SELECT, INSERT, UPDATE ON DB_WUY315.messwert TO fachlabor; --Fachlabore erzeugen die Untersuchungsergebnisse

--TODO
--Facharzt: Zugriffsrechte definieren
--Apotheke: Zugriffsrechte definieren
-- ggf. Maßnahmen zur Erhaltung der Datenintegrität einzubauen
-- Einrichtung von Views, um einen gefilterten Zugriff zu erlauben


/* -----------Nützliches-----------

--Eigenen Username herausfinden
SELECT USER FROM DUAL;

--Rolle an User vergeben
GRANT patient TO DB_WDG651;

--Welche Zugriffsrechte hat die Tabelle
SELECT * FROM all_tab_privs
   WHERE table_name = 'DB_WUY315.table_name';

--Recht der Weitergabe von Privilegien gewähren
GRANT SELECT ON table_name
   TO user_name WITH GRANT OPTION;

--Benutzerrechte entziehen
REVOKE SELECT ON table_name
   FROM user_name CASCADE;

--Neue Daten hinzufügen
INSERT INTO DB_WUY315.table_name (col1, col2, colN)
   VALUES (val1, val2, valN);

--Daten aktualisieren
UPDATE DB_WUY315.table_name
   SET col1 = newValue
   WHERE condition;
*/