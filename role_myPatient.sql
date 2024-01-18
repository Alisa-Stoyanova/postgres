--Vorhandene Rolle löschen
DROP ROLE myPatient;

--Rolle erstellen
CREATE ROLE myPatient;

--Zugriffsrechte für die Rolle definieren
--Patient
GRANT SELECT ON DB_WUY315.akte TO myPatient; --Patienten können lesend auf ihre Patientenakte zugreifen, aber nicht schreiben
GRANT SELECT ON DB_WUY315.hausarzt TO myPatient; --Patient wählt einen Hausarzt