--Vorhandene Rolle löschen
DROP ROLE myHausarzt;

--Rolle erstellen
CREATE ROLE myHausarzt;

--Zugriffsrechte für die Rolle definieren
--Hausarzt
GRANT SELECT, INSERT, UPDATE ON DB_WUY315.patient TO myHausarzt; --Hausärzte können neue Patienten aufnehmen
GRANT SELECT, INSERT, UPDATE ON DB_WUY315.akte TO myHausarzt WITH GRANT OPTION; --Hausärzte können Patientenakte für Patienten anlegen und bearbeiten, aber nicht löschen
GRANT SELECT, INSERT, UPDATE ON DB_WUY315.termin TO myHausarzt; --Hausärzte können mit Patienten einen Termin vereinbaren
GRANT SELECT, INSERT, UPDATE ON DB_WUY315.probe TO myHausarzt; --Hausärzte können Proben in ein Fachlabor schicken
GRANT SELECT ON DB_WUY315.messwert TO myHausarzt; --Hausärzte können die Probenwerte zurückerhalten und in die Patientenakte eintragen
GRANT SELECT, INSERT, UPDATE ON DB_WUY315.erezept TO myHausarzt WITH GRANT OPTION; --Hausärzte können eRezepte ausstellen und an die Patienten weitergeben
GRANT SELECT, INSERT, UPDATE ON DB_WUY315.ueberweisung TO myHausarzt; --Hausärzte können an Fachärzte überweisen

