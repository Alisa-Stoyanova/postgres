/*
Praktikum zur Lehrveranstaltung Datenbanken WS 23/24
Praktikum Nr.5
Gruppe 3
Datenskript
Alisa Stoyanova
Rahim Akkoyun
*/

-- Vorhandene Daten löschen

DELETE FROM Hausarzt;
DELETE FROM Facharzt;
DELETE FROM Patient;
DELETE FROM Apotheke;
DELETE FROM Probe;
DELETE FROM DigitalePatientenakte;
DELETE FROM messwert;
DELETE FROM eRezept;
DELETE FROM Termin;
DELETE FROM Ueberweisung;
DELETE FROM informierenFA;
--DELETE FROM erzeugenLM;
DELETE FROM labor;

-- Hausarzt mit neuen Daten befüllen

INSERT INTO Hausarzt (Arztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname)
VALUES (32768, 'John H. Watson', 'Mönckebergstraße', 38, 22041, 'Praxis Baker Street');

INSERT INTO Hausarzt (Arztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname)
VALUES (65536, 'Hippokrates von Kos', 'Saselbeker Stieg', 89, 22415, 'Hausärtzte am Berliner Tor');

INSERT INTO Hausarzt (Arztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname)
VALUES (45634, 'Peter Fischer', 'Wandsbeker Chaussee', 70, 22179, 'Praxis Fischer');

INSERT INTO Hausarzt (Arztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname)
VALUES (76446, 'Julia Weber', 'Langenhorner Chaussee', 30, 20095, 'Praxis Weber');

INSERT INTO Hausarzt (Arztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname)
VALUES (54577, 'Max Meyer', 'Eppendorfer Landstraße', 25, 22179, 'Praxis Meyer');

INSERT INTO Hausarzt (Arztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname)
VALUES (98346, 'Lisa Wagner', 'Steilshooper Allee', 93, 22111, 'Praxis Wagner');

INSERT INTO Hausarzt (Arztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname)
VALUES (23564, 'David Becker', 'Billstedter Hauptstraße', 23, 22307, 'Praxis Becker');

INSERT INTO Hausarzt (Arztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname)
VALUES (54567, 'Sarah Hoffmann', 'Osdorfer Landstraße', 77, 22415, 'Praxis Hoffmann');

INSERT INTO Hausarzt (Arztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname)
VALUES (34546, 'Paul Schäfer', 'Fuhlsbüttler Straße', 1, 22549, 'Praxis Schäfer');

INSERT INTO Hausarzt (Arztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname)
VALUES (56672, 'Laura Koch', 'Bramfelder Chaussee', 64, 22179, 'Praxis Koch');

-- Facharzt mit neuen Daten befüllen

INSERT INTO Facharzt (FArztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname, Fachrichtung)
VALUES (34524, 'Dr. Emily Braun', 'Fuhlsbüttler Straße', 43, 22041, 'Praxis Braun', 'Kardiologie');

INSERT INTO Facharzt (FArztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname, Fachrichtung)
VALUES (67865, 'Dr. Jonas Hartmann', 'Neuer Wall', 77, 20095, 'Praxis Hartmann', 'Dermatologie');

INSERT INTO Facharzt (FArztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname, Fachrichtung)
VALUES (45467, 'Dr. Marie Neumann', 'Neuer Wall', 95, 22111, 'Praxis Neumann', 'Pädiatrie');

INSERT INTO Facharzt (FArztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname, Fachrichtung)
VALUES (87543, 'Dr. Lukas Schmid', 'Neuer Wall', 20, 22083, 'Praxis Schmid', 'Orthopädie');

INSERT INTO Facharzt (FArztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname, Fachrichtung)
VALUES (46758, 'Dr. Sophia Lang', 'Fuhlsbüttler Straße', 1, 22415, 'Praxis Lang', 'Gastroenterologie');

INSERT INTO Facharzt (FArztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname, Fachrichtung)
VALUES (20674, 'Dr. Felix Zimmermann', 'Osdorfer Landstraße', 25, 22179, 'Praxis Zimmermann', 'Neurologie');

INSERT INTO Facharzt (FArztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname, Fachrichtung)
VALUES (34369, 'Dr. Emma Krüger', 'Billstedter Hauptstraße', 38, 22549, 'Praxis Krüger', 'Urologie');

INSERT INTO Facharzt (FArztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname, Fachrichtung)
VALUES (32496, 'Dr. Leon Schneider', 'Große Elbstraße', 89, 22309, 'Praxis Schneider', 'Endokrinologie');

INSERT INTO Facharzt (FArztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname, Fachrichtung)
VALUES (97825, 'Dr. Charlotte Fischer', 'Schwanenwik', 77, 22549, 'Praxis Fischer', 'Hämatologie');

INSERT INTO Facharzt (FArztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname, Fachrichtung)
VALUES (23423, 'Dr. Niklas Vogel', 'Reeperbahn', 8, 22393, 'Praxis Vogel', 'Ophthalmologie');

-- Patient mit neuen Daten befüllen

INSERT INTO Patient (KVNummer, Name, Geburtsdatum, Strasse, Hausnummer, PLZ, betreutVon)
VALUES (100001, 'Frodo Baggins', '05-02-1997', 'Am Sandtorkai', 5, 22049, 32768);

INSERT INTO Patient (KVNummer, Name, Geburtsdatum, Strasse, Hausnummer, PLZ, betreutVon)
VALUES (100010, 'Bilbo Baggins', '23-09-1939', 'Am Sandtorkai', 5, 22049, 65536);

INSERT INTO Patient (KVNummer, Name, Geburtsdatum, Strasse, Hausnummer, PLZ, betreutVon)
VALUES (128128, 'Sherlock Holmes', '12-12-1927', 'Neuer Wall', 23, 22529, 45634);

INSERT INTO Patient (KVNummer, Name, Geburtsdatum, Strasse, Hausnummer, PLZ, betreutVon)
VALUES (256256, 'Hermione Granger', '17-02-1996', 'Burgstraße', 56, 22769, 76446);

INSERT INTO Patient (KVNummer, Name, Geburtsdatum, Strasse, Hausnummer, PLZ, betreutVon)
VALUES (512512, 'James Bond', '01-07-1964', 'Alter Teichweg', 176, 22587, 54577);

INSERT INTO Patient (KVNummer, Name, Geburtsdatum, Strasse, Hausnummer, PLZ, betreutVon)
VALUES (102400, 'Lisa Simpson', '04-03-2001', 'Rodigalee', 10, 22525, 98346);

INSERT INTO Patient (KVNummer, Name, Geburtsdatum, Strasse, Hausnummer, PLZ, betreutVon)
VALUES (204800, 'Willy Wonka', '08-11-1978', 'Auf den Blöcken', 98, 20249, 23564);

INSERT INTO Patient (KVNummer, Name, Geburtsdatum, Strasse, Hausnummer, PLZ, betreutVon)
VALUES (409600, 'Albus Dumbledore', '05-10-1967', 'Sievekingdamm', 248, 22111, 54567);

INSERT INTO Patient (KVNummer, Name, Geburtsdatum, Strasse, Hausnummer, PLZ, betreutVon)
VALUES (819200, 'Hermes Conrad', '06-02-2002', 'Hamburger Straße', 34, 21077, 34546);

INSERT INTO Patient (KVNummer, Name, Geburtsdatum, Strasse, Hausnummer, PLZ, betreutVon)
VALUES (163840, 'Ron Weasley', '11-09-2003', 'Horner Weg', 15, 21077, 56672);

-- Apotheke mit neuen Daten befüllen

INSERT INTO Apotheke (Apothekennummer, Name, Strasse, Hausnummer, PLZ, Medikament, Datum, ausgehaendigtAn)
VALUES (34329, 'Vitalis Apotheke', 'Osdorfer Landstraße', 64, 22549, 'Ibuprofen', '18-09-2023', 100001);

INSERT INTO Apotheke (Apothekennummer, Name, Strasse, Hausnummer, PLZ, Medikament, Datum, ausgehaendigtAn)
VALUES (65464, 'MediCare Pharmacy', 'Fuhlsbüttler Straße', 76, 22041, 'Paracetamol', '10-07-2023', 100010);

INSERT INTO Apotheke (Apothekennummer, Name, Strasse, Hausnummer, PLZ, Medikament, Datum, ausgehaendigtAn)
VALUES (97897, 'GreenLeaf Apotheke', 'Saselbeker Stieg', 28, 20095, 'Metformin', '16-09-2023', 128128);

INSERT INTO Apotheke (Apothekennummer, Name, Strasse, Hausnummer, PLZ, Medikament, Datum, ausgehaendigtAn)
VALUES (78782, 'CityCare Apotheke', 'Wandsbeker Chaussee', 52, 22111, 'Lisinopril', '25-08-2023', 256256);

INSERT INTO Apotheke (Apothekennummer, Name, Strasse, Hausnummer, PLZ, Medikament, Datum, ausgehaendigtAn)
VALUES (24257, 'HealthPlus Apotheke', 'Bramfelder Chaussee', 34, 22307, 'Atorvastatin', '11-03-2023', 512512);

INSERT INTO Apotheke (Apothekennummer, Name, Strasse, Hausnummer, PLZ, Medikament, Datum, ausgehaendigtAn)
VALUES (43427, 'PharmaWorld', 'Steilshooper Allee', 88, 22111, 'Simvastatin', '05-10-2023', 102400);

INSERT INTO Apotheke (Apothekennummer, Name, Strasse, Hausnummer, PLZ, Medikament, Datum, ausgehaendigtAn)
VALUES (34327, 'Natures Cure Apotheke', 'Hafenstraße', 31, 22111, 'Omeprazol', '28-03-2023', 204800);

INSERT INTO Apotheke (Apothekennummer, Name, Strasse, Hausnummer, PLZ, Medikament, Datum, ausgehaendigtAn)
VALUES (77867, 'LifeLine Pharmacy', 'Bramfelder Chaussee', 33, 22083, 'Amlodipin', '08-09-2023', 409600);

INSERT INTO Apotheke (Apothekennummer, Name, Strasse, Hausnummer, PLZ, Medikament, Datum, ausgehaendigtAn)
VALUES (66432, 'Sunshine Apotheke', 'Billstedter Hauptstraße', 87, 22393, 'Amoxicillin', '05-01-2023', 819200);

INSERT INTO Apotheke (Apothekennummer, Name, Strasse, Hausnummer, PLZ, Medikament, Datum, ausgehaendigtAn)
VALUES (23478, 'Wellness Pharma', 'Große Elbstraße', 13, 22415, 'Cetirizin', '12-02-2023', 163840);

-- Probe mit neuen Daten befüllen

INSERT INTO Probe (Probenummer, Probetyp, entnommenVon, gegebenVon)
VALUES (5504, 'Stuhlprobe', 32768, 100001);

INSERT INTO Probe (Probenummer, Probetyp, entnommenVon, gegebenVon)
VALUES (5253, 'Abstrich', 65536, 100010);

INSERT INTO Probe (Probenummer, Probetyp, entnommenVon, gegebenVon)
VALUES (5389, 'Blutprobe', 45634, 128128);

INSERT INTO Probe (Probenummer, Probetyp, entnommenVon, gegebenVon)
VALUES (5112, 'Liquorprobe', 76446, 256256);

INSERT INTO Probe (Probenummer, Probetyp, entnommenVon, gegebenVon)
VALUES (5900, 'Liquorprobe', 54577, 512512);

INSERT INTO Probe (Probenummer, Probetyp, entnommenVon, gegebenVon)
VALUES (5331, 'Stuhlprobe', 98346, 102400);

INSERT INTO Probe (Probenummer, Probetyp, entnommenVon, gegebenVon)
VALUES (5707, 'Urinprobe', 23564, 204800);

INSERT INTO Probe (Probenummer, Probetyp, entnommenVon, gegebenVon)
VALUES (5978, 'Liquorprobe', 54567, 409600);

INSERT INTO Probe (Probenummer, Probetyp, entnommenVon, gegebenVon)
VALUES (5845, 'Gewebebiopsie', 34546, 819200);

INSERT INTO Probe (Probenummer, Probetyp, entnommenVon, gegebenVon)
VALUES (5829, 'Liquorprobe', 56672, 163840);

-- Digitale Patientenakte mit neuen Daten befüllen

INSERT INTO DigitalePatientenakte (Aktennummer, Befund, Datum, eingetragenVon, gehoertZu)
VALUES (4323465, 'Normale Herzfunktion', '17.09.2023', 32768, 100001);

INSERT INTO DigitalePatientenakte (Aktennummer, Befund, Datum, eingetragenVon, gehoertZu)
VALUES (3465735, 'Leichte Hypertonie', '09.07.2023', 65536, 100010);

INSERT INTO DigitalePatientenakte (Aktennummer, Befund, Datum, eingetragenVon, gehoertZu)
VALUES (9897854, 'Erhöhte Cholesterinwerte', '15.09.2023', 45634, 128128);

INSERT INTO DigitalePatientenakte (Aktennummer, Befund, Datum, eingetragenVon, gehoertZu)
VALUES (2354678, 'Normaler Blutzucker', '24.08.2023', 76446, 256256);

INSERT INTO DigitalePatientenakte (Aktennummer, Befund, Datum, eingetragenVon, gehoertZu)
VALUES (4365754, 'Mäßige Arthritis', '10.03.2023', 54577, 512512);

INSERT INTO DigitalePatientenakte (Aktennummer, Befund, Datum, eingetragenVon, gehoertZu)
VALUES (5675866, 'Stabile Asthma', '04.10.2023', 98346, 102400);

INSERT INTO DigitalePatientenakte (Aktennummer, Befund, Datum, eingetragenVon, gehoertZu)
VALUES (2347894, 'Leichte Anämie', '27.03.2023', 23564, 204800);

INSERT INTO DigitalePatientenakte (Aktennummer, Befund, Datum, eingetragenVon, gehoertZu)
VALUES (6576856, 'Gute Nierenfunktion', '07.09.2023', 54567, 409600);

INSERT INTO DigitalePatientenakte (Aktennummer, Befund, Datum, eingetragenVon, gehoertZu)
VALUES (5478967, 'Chronische Bronchitis', '04.01.2023', 34546, 819200);

INSERT INTO DigitalePatientenakte (Aktennummer, Befund, Datum, eingetragenVon, gehoertZu)
VALUES (4234378, 'Osteoporose im Anfangsstadium', '11.02.2023', 56672, 163840);

-- eRezept mit neuen Daten befüllen

INSERT INTO eRezept (Rezeptnummer, Datum, Medikament, Dosierung, verschriebenVon, erhaltenVon, zugeordnetAn)
VALUES (3909, '17.09.2023', 'Ibuprofen', 400, 32768, 100001, 34329);

INSERT INTO eRezept (Rezeptnummer, Datum, Medikament, Dosierung, verschriebenVon, erhaltenVon, zugeordnetAn)
VALUES (3145, '09.07.2023', 'Paracetamol', 500, 65536, 100010, 65464);

INSERT INTO eRezept (Rezeptnummer, Datum, Medikament, Dosierung, verschriebenVon, erhaltenVon, zugeordnetAn)
VALUES (3272, '15.09.2023', 'Metformin', 850, 45634, 128128, 97897);

INSERT INTO eRezept (Rezeptnummer, Datum, Medikament, Dosierung, verschriebenVon, erhaltenVon, zugeordnetAn)
VALUES (3364, '24.08.2023', 'Lisinopril', 10, 76446, 256256, 78782);

INSERT INTO eRezept (Rezeptnummer, Datum, Medikament, Dosierung, verschriebenVon, erhaltenVon, zugeordnetAn)
VALUES (3497, '10.03.2023', 'Atorvastatin', 20, 54577, 512512, 24257);

INSERT INTO eRezept (Rezeptnummer, Datum, Medikament, Dosierung, verschriebenVon, erhaltenVon, zugeordnetAn)
VALUES (3173, '04.10.2023', 'Simvastatin', 40, 98346, 102400, 43427);

INSERT INTO eRezept (Rezeptnummer, Datum, Medikament, Dosierung, verschriebenVon, erhaltenVon, zugeordnetAn)
VALUES (3920, '27.03.2023', 'Omeprazol', 20, 23564, 204800, 34327);

INSERT INTO eRezept (Rezeptnummer, Datum, Medikament, Dosierung, verschriebenVon, erhaltenVon, zugeordnetAn)
VALUES (3627, '07.09.2023', 'Amlodipin', 5, 54567, 409600, 77867);

INSERT INTO eRezept (Rezeptnummer, Datum, Medikament, Dosierung, verschriebenVon, erhaltenVon, zugeordnetAn)
VALUES (3783, '04.01.2023', 'Amoxicillin', 500, 34546, 819200, 66432);

INSERT INTO eRezept (Rezeptnummer, Datum, Medikament, Dosierung, verschriebenVon, erhaltenVon, zugeordnetAn)
VALUES (3481, '11.02.2023', 'Cetirizin', 10, 56672, 163840, 23478);

-- Termin mit neuen Daten befüllen

INSERT INTO Termin (Terminnummer, Datum, gegebenVon, erhaltenVon)
VALUES (4521, '17.09.2023', 32768, 100001);

INSERT INTO Termin (Terminnummer, Datum, gegebenVon, erhaltenVon)
VALUES (4870, '09.07.2023', 65536, 100010);

INSERT INTO Termin (Terminnummer, Datum, gegebenVon, erhaltenVon)
VALUES (4200, '15.09.2023', 45634, 128128);

INSERT INTO Termin (Terminnummer, Datum, gegebenVon, erhaltenVon)
VALUES (4133, '24.08.2023', 76446, 256256);

INSERT INTO Termin (Terminnummer, Datum, gegebenVon, erhaltenVon)
VALUES (4347, '10.03.2023', 54577, 512512);

INSERT INTO Termin (Terminnummer, Datum, gegebenVon, erhaltenVon)
VALUES (4036, '04.10.2023', 98346, 102400);

INSERT INTO Termin (Terminnummer, Datum, gegebenVon, erhaltenVon)
VALUES (4345, '27.03.2023', 23564, 204800);

INSERT INTO Termin (Terminnummer, Datum, gegebenVon, erhaltenVon)
VALUES (4591, '07.09.2023', 54567, 409600);

INSERT INTO Termin (Terminnummer, Datum, gegebenVon, erhaltenVon)
VALUES (4156, '04.01.2023', 34546, 819200);

INSERT INTO Termin (Terminnummer, Datum, gegebenVon, erhaltenVon)
VALUES (4791, '11.02.2023', 56672, 163840);

-- Überweisung mit neuen Daten befüllen

INSERT INTO Ueberweisung (Ueberweisungsnummer, Grund, Facharztname, Facharztstrasse, Facharzthausnummer, FacharztPLZ,
                          ueberwiesenVon, erhaltenVon)
VALUES (97882, 'Herzprobleme', 'Dr. Emily Braun', 'Fuhlsbüttler Straße', 43, 22041, 32768, 100001);

INSERT INTO Ueberweisung (Ueberweisungsnummer, Grund, Facharztname, Facharztstrasse, Facharzthausnummer, FacharztPLZ,
                          ueberwiesenVon, erhaltenVon)
VALUES (34235, 'Muttermalüberwachung', 'Dr. Jonas Hartmann', 'Neuer Wall', 77, 20095, 65536, 100010);

INSERT INTO Ueberweisung (Ueberweisungsnummer, Grund, Facharztname, Facharztstrasse, Facharzthausnummer, FacharztPLZ,
                          ueberwiesenVon, erhaltenVon)
VALUES (12457, 'Entwicklungsproblem', 'Dr. Marie Neumann', 'Neuer Wall', 95, 22111, 45634, 128128);

INSERT INTO Ueberweisung (Ueberweisungsnummer, Grund, Facharztname, Facharztstrasse, Facharzthausnummer, FacharztPLZ,
                          ueberwiesenVon, erhaltenVon)
VALUES (54342, 'Gelenkschmerzen', 'Dr. Lukas Schmid', 'Neuer Wall', 20, 22083, 76446, 256256);

INSERT INTO Ueberweisung (Ueberweisungsnummer, Grund, Facharztname, Facharztstrasse, Facharzthausnummer, FacharztPLZ,
                          ueberwiesenVon, erhaltenVon)
VALUES (32467, 'Verdauungsprobleme', 'Dr. Sophia Lang', 'Fuhlsbüttler Straße', 1, 22415, 54577, 512512);

INSERT INTO Ueberweisung (Ueberweisungsnummer, Grund, Facharztname, Facharztstrasse, Facharzthausnummer, FacharztPLZ,
                          ueberwiesenVon, erhaltenVon)
VALUES (34759, 'Kopfschmerzen', 'Dr. Felix Zimmermann', 'Osdorfer Landstraße', 25, 22179, 98346, 102400);

INSERT INTO Ueberweisung (Ueberweisungsnummer, Grund, Facharztname, Facharztstrasse, Facharzthausnummer, FacharztPLZ,
                          ueberwiesenVon, erhaltenVon)
VALUES (34237, 'Harnwegsinfektion', 'Dr. Emma Krüger', 'Billstedter Hauptstraße', 38, 22549, 23564, 204800);

INSERT INTO Ueberweisung (Ueberweisungsnummer, Grund, Facharztname, Facharztstrasse, Facharzthausnummer, FacharztPLZ,
                          ueberwiesenVon, erhaltenVon)
VALUES (78799, 'Hormonstörung', 'Dr. Leon Schneider', 'Große Elbstraße', 89, 22309, 54567, 409600);

INSERT INTO Ueberweisung (Ueberweisungsnummer, Grund, Facharztname, Facharztstrasse, Facharzthausnummer, FacharztPLZ,
                          ueberwiesenVon, erhaltenVon)
VALUES (65734, 'Anämie', 'Dr. Charlotte Fischer', 'Schwanenwik', 77, 22549, 34546, 819200);

INSERT INTO Ueberweisung (Ueberweisungsnummer, Grund, Facharztname, Facharztstrasse, Facharzthausnummer, FacharztPLZ,
                          ueberwiesenVon, erhaltenVon)
VALUES (23685, 'Sehstörung', 'Dr. Niklas Vogel', 'Reeperbahn', 8, 22393, 56672, 163840);

-- informierenFA (FA = Facharzt) mit neuen Daten befüllen

INSERT INTO informierenFA (Datum, Arztnummer, FArztnummer)
VALUES ('16.09.2023', 32768, 34524);

INSERT INTO informierenFA (Datum, Arztnummer, FArztnummer)
VALUES ('08.07.2023', 65536, 67865);

INSERT INTO informierenFA (Datum, Arztnummer, FArztnummer)
VALUES ('14.09.2023', 45634, 45467);

INSERT INTO informierenFA (Datum, Arztnummer, FArztnummer)
VALUES ('23.08.2023', 76446, 87543);

INSERT INTO informierenFA (Datum, Arztnummer, FArztnummer)
VALUES ('09.03.2023', 54577, 46758);

INSERT INTO informierenFA (Datum, Arztnummer, FArztnummer)
VALUES ('03.10.2023', 98346, 20674);

INSERT INTO informierenFA (Datum, Arztnummer, FArztnummer)
VALUES ('26.03.2023', 23564, 34369);

INSERT INTO informierenFA (Datum, Arztnummer, FArztnummer)
VALUES ('06.09.2023', 54567, 32496);

INSERT INTO informierenFA (Datum, Arztnummer, FArztnummer)
VALUES ('03.01.2023', 34546, 97825);

INSERT INTO informierenFA (Datum, Arztnummer, FArztnummer)
VALUES ('10.02.2023', 56672, 23423);


-- labor mit Daten befüllen
INSERT INTO labor (labor_nr, name, strasse, haus_nr, plz)
VALUES (64359, 'BioAnalytik Lab', 'Schwanenwik', 9, '22041');

INSERT INTO labor (labor_nr, name, strasse, haus_nr, plz)
VALUES (11249, 'Molecular Diagnostics', 'Neuer Wall', 14, '20095');

INSERT INTO labor (labor_nr, name, strasse, haus_nr, plz)
VALUES (97862, 'GenTech Research', 'Billstedter Hauptstraße', 53, '22309');

INSERT INTO labor (labor_nr, name, strasse, haus_nr, plz)
VALUES (87784, 'PathoSolutions', 'Eppendorfer Landstraße', 31, '22309');

INSERT INTO labor (labor_nr, name, strasse, haus_nr, plz)
VALUES (43765, 'Immunology Experts', 'Reeperbahn', 57, '22307');

INSERT INTO labor (labor_nr, name, strasse, haus_nr, plz)
VALUES (55797, 'Cell Dynamics', 'Langenhorner Chaussee', 37, '20095');

INSERT INTO labor (labor_nr, name, strasse, haus_nr, plz)
VALUES (22547, 'EcoHealth Labs', 'Wandsbeker Chaussee', 27, '22549');

INSERT INTO labor (labor_nr, name, strasse, haus_nr, plz)
VALUES (87653, 'Quantum Bio', 'Eppendorfer Landstraße', 91, '20095');

INSERT INTO labor (labor_nr, name, strasse, haus_nr, plz)
VALUES (34854, 'Vitalis Diagnostics', 'Steilshooper Allee', 100, '22393');

INSERT INTO labor (labor_nr, name, strasse, haus_nr, plz)
VALUES (34874, 'NeuroLab Inc.', 'Große Freiheit', 19, '22041');


-- messwerte mit Daten befüllen
INSERT INTO messwert (Messwertnummer, Probenummer, Messwert, erhaltenVon, gehoertZu, labor_nr)
VALUES (64395, 5504, 'Stuhlprobe', 32768, 100001, 64359);

INSERT INTO messwert (Messwertnummer, Probenummer, Messwert, erhaltenVon, gehoertZu, labor_nr)
VALUES (11294, 5253, 'Abstrich', 65536, 100010, 11249);

INSERT INTO messwert (Messwertnummer, Probenummer, Messwert, erhaltenVon, gehoertZu, labor_nr)
VALUES (97826, 5389, 'Blutprobe', 45634, 128128, 97862);

INSERT INTO messwert (Messwertnummer, Probenummer, Messwert, erhaltenVon, gehoertZu, labor_nr)
VALUES (87748, 5112, 'Liquorprobe', 76446, 256256, 87784);

INSERT INTO messwert (Messwertnummer, Probenummer, Messwert, erhaltenVon, gehoertZu, labor_nr)
VALUES (34847, 5900, 'Liquorprobe', 54577, 512512, 34874);

INSERT INTO messwert (Messwertnummer, Probenummer, Messwert, erhaltenVon, gehoertZu, labor_nr)
VALUES (43756, 5331, 'Stuhlprobe', 98346, 102400, 43765);

INSERT INTO messwert (Messwertnummer, Probenummer, Messwert, erhaltenVon, gehoertZu, labor_nr)
VALUES (55779, 5707, 'Urinprobe', 23564, 204800, 55797);

INSERT INTO messwert (Messwertnummer, Probenummer, Messwert, erhaltenVon, gehoertZu, labor_nr)
VALUES (22574, 5978, 'Liquorprobe', 54567, 409600, 22547);

INSERT INTO messwert (Messwertnummer, Probenummer, Messwert, erhaltenVon, gehoertZu, labor_nr)
VALUES (87635, 5845, 'Gewebebiopsie', 34546, 819200, 87653);

INSERT INTO messwert (Messwertnummer, Probenummer, Messwert, erhaltenVon, gehoertZu, labor_nr)
VALUES (34845, 5829, 'Liquorprobe', 56672, 163840, 55797);

/*
-- erzeugenLM (LM = Labor Messwerte) mit neuen Daten befüllen
INSERT INTO erzeugenLM (Probenummer, Messwertnummer)
VALUES (5504, 64395);

INSERT INTO erzeugenLM (Probenummer, Messwertnummer)
VALUES (5253, 11294);

INSERT INTO erzeugenLM (Probenummer, Messwertnummer)
VALUES (5389, 97826);

INSERT INTO erzeugenLM (Probenummer, Messwertnummer)
VALUES (5112, 87748);

INSERT INTO erzeugenLM (Probenummer, Messwertnummer)
VALUES (5900, 34847);

INSERT INTO erzeugenLM (Probenummer, Messwertnummer)
VALUES (5331, 43756);

INSERT INTO erzeugenLM (Probenummer, Messwertnummer)
VALUES (5707, 55779);

INSERT INTO erzeugenLM (Probenummer, Messwertnummer)
VALUES (5978, 22574);

INSERT INTO erzeugenLM (Probenummer, Messwertnummer)
VALUES (5845, 87635);

INSERT INTO erzeugenLM (Probenummer, Messwertnummer)
VALUES (5829, 34845);*/
