--Vorhandene Rollen löschen
DROP ROLE myFachlabor;

--Rolle erstellen
CREATE ROLE myFachlabor;

--Zugriffsrechte für die Rolle definieren
--Fachlabor
--Fachlabore erhalten Proben, die anonymisiert sind: zu sehen sind nur Probenummer
CREATE VIEW laborViewProbe AS SELECT probeNummer, probeTyp, entnommenVon FROM probe;
CREATE VIEW laborViewBlutprobe AS SELECT probeNr, ap, aAmylase, bilirubin, cholesterin, crp, eisen, elektrolyte,
                                         ferritin, gammaGt, got, gesamteiweiss, harnsaeure, harnstoff, kreatinin, ck,
                                         ldh, lipase, neutralfette, schilddruesenwerte FROM blutProbe;
GRANT SELECT ON DB_WUY315.laborViewProbe TO myFachlabor;
GRANT SELECT, INSERT, UPDATE ON DB_WUY315.laborViewBlutProbe TO myFachlabor;
GRANT SELECT, INSERT, UPDATE ON DB_WUY315.messwert TO myFachlabor; --Fachlabore erzeugen die Untersuchungsergebnisse

