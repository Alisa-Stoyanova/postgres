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
DELETE FROM Digitale_Patientenakte;
DELETE FROM Labor;
DELETE FROM Messwert;
DELETE FROM eRezept;
DELETE FROM Termin;
DELETE FROM Ueberweisung;
DELETE FROM Untersuchung;
DELETE FROM Medikament;
DELETE FROM informierenFacharzt;

-- Hausarzt mit neuen Daten befüllen

INSERT INTO Hausarzt (Arztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname)
VALUES (32768, 'John H. Watson', 'Mönckebergstraße', 38, 22041);

INSERT INTO Hausarzt (Arztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname)
VALUES (65536, 'Hippokrates von Kos', 'Saselbeker Stieg', 89, 22415);

INSERT INTO Hausarzt (Arztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname)
VALUES (45634, 'Peter Fischer', 'Wandsbeker Chaussee', 70, 22179);

INSERT INTO Hausarzt (Arztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname)
VALUES (76446, 'Julia Weber', 'Langenhorner Chaussee', 30, 20095);

INSERT INTO Hausarzt (Arztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname)
VALUES (54577, 'Max Meyer', 'Eppendorfer Landstraße', 25, 22179);

INSERT INTO Hausarzt (Arztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname)
VALUES (98346, 'Lisa Wagner', 'Steilshooper Allee', 93, 22111);

INSERT INTO Hausarzt (Arztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname)
VALUES (23564, 'David Becker', 'Billstedter Hauptstraße', 23, 22307);

INSERT INTO Hausarzt (Arztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname)
VALUES (54567, 'Sarah Hoffmann', 'Osdorfer Landstraße', 77, 22415);

INSERT INTO Hausarzt (Arztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname)
VALUES (34546, 'Paul Schäfer', 'Fuhlsbüttler Straße', 1, 22549);

INSERT INTO Hausarzt (Arztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname)
VALUES (56672, 'Laura Koch', 'Bramfelder Chaussee', 64, 22179);

-- Facharzt mit neuen Daten befüllen

INSERT INTO Facharzt (FArztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname, Fachrichtung)
VALUES (34524, 'Dr. Emily Braun', 'Fuhlsbüttler Straße', 43, 22041, 'Kardiologie');

INSERT INTO Facharzt (FArztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname, Fachrichtung)
VALUES (67865, 'Dr. Jonas Hartmann', 'Neuer Wall', 77, 20095,'Dermatologie');

INSERT INTO Facharzt (FArztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname, Fachrichtung)
VALUES (45467, 'Dr. Marie Neumann', 'Neuer Wall', 95, 22111,'Pädiatrie');

INSERT INTO Facharzt (FArztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname, Fachrichtung)
VALUES (87543, 'Dr. Lukas Schmid', 'Neuer Wall', 20, 22083,'Orthopädie');

INSERT INTO Facharzt (FArztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname, Fachrichtung)
VALUES (46758, 'Dr. Sophia Lang', 'Fuhlsbüttler Straße', 1, 22415,'Gastroenterologie');

INSERT INTO Facharzt (FArztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname, Fachrichtung)
VALUES (20674, 'Dr. Felix Zimmermann', 'Osdorfer Landstraße', 25, 22179,'Neurologie');

INSERT INTO Facharzt (FArztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname, Fachrichtung)
VALUES (34369, 'Dr. Emma Krüger', 'Billstedter Hauptstraße', 38, 22549,'Urologie');

INSERT INTO Facharzt (FArztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname, Fachrichtung)
VALUES (32496, 'Dr. Leon Schneider', 'Große Elbstraße', 89, 22309,'Endokrinologie');

INSERT INTO Facharzt (FArztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname, Fachrichtung)
VALUES (97825, 'Dr. Charlotte Fischer', 'Schwanenwik', 77, 22549,'Hämatologie');

INSERT INTO Facharzt (FArztnummer, Name, Strasse, Hausnummer, PLZ, Praxisname, Fachrichtung)
VALUES (23423, 'Dr. Niklas Vogel', 'Reeperbahn', 8, 22393,'Ophthalmologie');

-- Patient mit neuen Daten befüllen

INSERT INTO Patient (KVNummer, Name, Strasse, Hausnummer, PLZ, Geburtsdatum, Geschlecht, betreutVon)
VALUES (100001, 'Frodo Baggins', 'Am Sandtorkai', 5, 22049, '05-02-1997', 'm', 32768);

INSERT INTO Patient (KVNummer, Name, Strasse, Hausnummer, PLZ, Geburtsdatum, Geschlecht, betreutVon)
VALUES (100010, 'Bilbo Baggins', 'Am Sandtorkai', 5, 22049, '23-09-1939', 'm', 65536);

INSERT INTO Patient (KVNummer, Name, Strasse, Hausnummer, PLZ, Geburtsdatum, Geschlecht, betreutVon)
VALUES (128128, 'Sherlock Holmes', 'Neuer Wall', 23, 22529, '12-12-1927', 'm', 45634);

INSERT INTO Patient (KVNummer, Name, Strasse, Hausnummer, PLZ, Geburtsdatum, Geschlecht, betreutVon)
VALUES (256256, 'Hermione Granger', 'Burgstraße', 56, 22769, '17-02-1996', 'f', 76446);

INSERT INTO Patient (KVNummer, Name, Strasse, Hausnummer, PLZ, Geburtsdatum, Geschlecht, betreutVon)
VALUES (512512, 'James Bond', 'Alter Teichweg', 176, 22587, '01-07-1964', 'm', 54577);

INSERT INTO Patient (KVNummer, Name, Strasse, Hausnummer, PLZ, Geburtsdatum, Geschlecht, betreutVon)
VALUES (102400, 'Lisa Simpson', 'Rodigalee', 10, 22525, '04-03-2001', 'f', 98346);

INSERT INTO Patient (KVNummer, Name, Strasse, Hausnummer, PLZ, Geburtsdatum, Geschlecht, betreutVon)
VALUES (204800, 'Willy Wonka', 'Auf den Blöcken', 98, 20249, '08-11-1978', 'm', 23564);

INSERT INTO Patient (KVNummer, Name, Strasse, Hausnummer, PLZ, Geburtsdatum, Geschlecht, betreutVon)
VALUES (409600, 'Albus Dumbledore', 'Sievekingdamm', 248, 22111, '05-10-1967', 'm', 54567);

INSERT INTO Patient (KVNummer, Name, Strasse, Hausnummer, PLZ, Geburtsdatum, Geschlecht, betreutVon)
VALUES (819200, 'Hermes Conrad', 'Hamburger Straße', 34, 21077, '06-02-2002', 'm', 34546);

INSERT INTO Patient (KVNummer, Name, Strasse, Hausnummer, PLZ, Geburtsdatum, Geschlecht, betreutVon)
VALUES (163840, 'Ron Weasley', 'Horner Weg', 15, 21077, '11-09-2003', 'm', 56672);

-- Apotheke mit neuen Daten befüllen

INSERT INTO Apotheke (Apothekennummer, Name, Strasse, Hausnummer, PLZ, zugeordnetRezept)
VALUES (34329, 'Vitalis Apotheke', 'Osdorfer Landstraße', 64, 22549, 'Ibuprofen', '18-09-2023', 3909);

INSERT INTO Apotheke (Apothekennummer, Name, Strasse, Hausnummer, PLZ, zugeordnetRezept)
VALUES (65464, 'MediCare Pharmacy', 'Fuhlsbüttler Straße', 76, 22041, 'Paracetamol', '10-07-2023', 3145);

INSERT INTO Apotheke (Apothekennummer, Name, Strasse, Hausnummer, PLZ, zugeordnetRezept)
VALUES (97897, 'GreenLeaf Apotheke', 'Saselbeker Stieg', 28, 20095, 'Metformin', '16-09-2023', 3272);

INSERT INTO Apotheke (Apothekennummer, Name, Strasse, Hausnummer, PLZ, zugeordnetRezept)
VALUES (78782, 'CityCare Apotheke', 'Wandsbeker Chaussee', 52, 22111, 'Lisinopril', '25-08-2023', 3364);

INSERT INTO Apotheke (Apothekennummer, Name, Strasse, Hausnummer, PLZ, zugeordnetRezept)
VALUES (24257, 'HealthPlus Apotheke', 'Bramfelder Chaussee', 34, 22307, 'Atorvastatin', '11-03-2023', 3497);

INSERT INTO Apotheke (Apothekennummer, Name, Strasse, Hausnummer, PLZ, zugeordnetRezept)
VALUES (43427, 'PharmaWorld', 'Steilshooper Allee', 88, 22111, 'Simvastatin', '05-10-2023', 3173);

INSERT INTO Apotheke (Apothekennummer, Name, Strasse, Hausnummer, PLZ, zugeordnetRezept)
VALUES (34327, 'Natures Cure Apotheke', 'Hafenstraße', 31, 22111, 'Omeprazol', '28-03-2023', 3920);

INSERT INTO Apotheke (Apothekennummer, Name, Strasse, Hausnummer, PLZ, zugeordnetRezept)
VALUES (77867, 'LifeLine Pharmacy', 'Bramfelder Chaussee', 33, 22083, 'Amlodipin', '08-09-2023', 3627);

INSERT INTO Apotheke (Apothekennummer, Name, Strasse, Hausnummer, PLZ, zugeordnetRezept)
VALUES (66432, 'Sunshine Apotheke', 'Billstedter Hauptstraße', 87, 22393, 'Amoxicillin', '05-01-2023', 3783);

INSERT INTO Apotheke (Apothekennummer, Name, Strasse, Hausnummer, PLZ, zugeordnetRezept)
VALUES (23478, 'Wellness Pharma', 'Große Elbstraße', 13, 22415, 'Cetirizin', '12-02-2023', 3481);

-- Probe mit neuen Daten befüllen

INSERT INTO Probe (Probenummer, Probetyp, entnommenVonHausarzt, entnommenVonFacharzt, gegebenVon, gesendetAnLabor)
VALUES (5504, 'Stuhlprobe', 32768, NULL, 100001, 64359);

INSERT INTO Probe (Probenummer, Probetyp, entnommenVonHausarzt, entnommenVonFacharzt, gegebenVon, gesendetAnLabor)
VALUES (5253, 'Abstrich', 65536, NULL, 100010, 11249);

INSERT INTO Probe (Probenummer, Probetyp, entnommenVonHausarzt, entnommenVonFacharzt, gegebenVon, gesendetAnLabor)
VALUES (5389, 'Blutprobe', 45634, NULL, 128128, 97862);

INSERT INTO Probe (Probenummer, Probetyp, entnommenVonHausarzt, entnommenVonFacharzt, gegebenVon, gesendetAnLabor)
VALUES (5112, 'Liquorprobe', 76446, NULL, 256256, 87784);

INSERT INTO Probe (Probenummer, Probetyp, entnommenVonHausarzt, entnommenVonFacharzt, gegebenVon, gesendetAnLabor)
VALUES (5900, 'Liquorprobe', 54577, NULL, 512512, 43765);

INSERT INTO Probe (Probenummer, Probetyp, entnommenVonHausarzt, entnommenVonFacharzt, gegebenVon, gesendetAnLabor)
VALUES (5331, 'Stuhlprobe', 98346, NULL, 102400, 55797);

INSERT INTO Probe (Probenummer, Probetyp, entnommenVonHausarzt, entnommenVonFacharzt, gegebenVon, gesendetAnLabor)
VALUES (5707, 'Urinprobe', 23564, NULL, 204800, 22547);

INSERT INTO Probe (Probenummer, Probetyp, entnommenVonHausarzt, entnommenVonFacharzt, gegebenVon, gesendetAnLabor)
VALUES (5978, 'Liquorprobe', 54567, NULL, 409600, 87653);

INSERT INTO Probe (Probenummer, Probetyp, entnommenVonHausarzt, entnommenVonFacharzt, gegebenVon, gesendetAnLabor)
VALUES (5845, 'Gewebebiopsie', 34546, NULL, 819200, 34854);

INSERT INTO Probe (Probenummer, Probetyp, entnommenVonHausarzt, entnommenVonFacharzt, gegebenVon, gesendetAnLabor)
VALUES (5829, 'Liquorprobe', 56672, NULL, 163840, 34874);

-- Digitale Patientenakte mit neuen Daten befüllen

INSERT INTO Digitale_Patientenakte (Aktennummer, Befund, Datum, gehoertZu, eingetragenVonHausarzt, eingetragenVonFacharzt)
VALUES (4323465, 'Normale Herzfunktion', '17.09.2023', 100001, 32768, NULL);

INSERT INTO Digitale_Patientenakte (Aktennummer, Befund, Datum, gehoertZu, eingetragenVonHausarzt, eingetragenVonFacharzt)
VALUES (3465735, 'Leichte Hypertonie', '09.07.2023', 100010, 65536, NULL);

INSERT INTO Digitale_Patientenakte (Aktennummer, Befund, Datum, gehoertZu, eingetragenVonHausarzt, eingetragenVonFacharzt)
VALUES (9897854, 'Erhöhte Cholesterinwerte', '15.09.2023', 128128, 45634, NULL);

INSERT INTO Digitale_Patientenakte (Aktennummer, Befund, Datum, gehoertZu, eingetragenVonHausarzt, eingetragenVonFacharzt)
VALUES (2354678, 'Normaler Blutzucker', '24.08.2023', 256256, 76446, NULL);

INSERT INTO Digitale_Patientenakte (Aktennummer, Befund, Datum, gehoertZu, eingetragenVonHausarzt, eingetragenVonFacharzt)
VALUES (4365754, 'Mäßige Arthritis', '10.03.2023', 512512, 54577, NULL);

INSERT INTO Digitale_Patientenakte (Aktennummer, Befund, Datum, gehoertZu, eingetragenVonHausarzt, eingetragenVonFacharzt)
VALUES (5675866, 'Stabile Asthma', '04.10.2023', 102400, 98346, NULL);

INSERT INTO Digitale_Patientenakte (Aktennummer, Befund, Datum, gehoertZu, eingetragenVonHausarzt, eingetragenVonFacharzt)
VALUES (2347894, 'Leichte Anämie', '27.03.2023', 204800, 23564, NULL);

INSERT INTO Digitale_Patientenakte (Aktennummer, Befund, Datum, gehoertZu, eingetragenVonHausarzt, eingetragenVonFacharzt)
VALUES (6576856, 'Gute Nierenfunktion', '07.09.2023', 409600, 54567, NULL);

INSERT INTO Digitale_Patientenakte (Aktennummer, Befund, Datum, gehoertZu, eingetragenVonHausarzt, eingetragenVonFacharzt)
VALUES (5478967, 'Chronische Bronchitis', '04.01.2023', 819200, 34546, NULL);

INSERT INTO Digitale_Patientenakte (Aktennummer, Befund, Datum, gehoertZu, eingetragenVonHausarzt, eingetragenVonFacharzt)
VALUES (4234378, 'Osteoporose im Anfangsstadium', '11.02.2023', 163840, 56672, NULL);

-- eRezept mit neuen Daten befüllen

INSERT INTO eRezept (Rezeptnummer, Datum, ausgestelltVon, ausgestelltAn)
VALUES (3909, '17.09.2023', 32768, 100001);

INSERT INTO eRezept (Rezeptnummer, Datum, ausgestelltVon, ausgestelltAn)
VALUES (3145, '09.07.2023', 65536, 100010);

INSERT INTO eRezept (Rezeptnummer, Datum, ausgestelltVon, ausgestelltAn)
VALUES (3272, '15.09.2023', 45634, 128128);

INSERT INTO eRezept (Rezeptnummer, Datum, ausgestelltVon, ausgestelltAn)
VALUES (3364, '24.08.2023', 76446, 256256);

INSERT INTO eRezept (Rezeptnummer, Datum, ausgestelltVon, ausgestelltAn)
VALUES (3497, '10.03.2023', 54577, 512512);

INSERT INTO eRezept (Rezeptnummer, Datum, ausgestelltVon, ausgestelltAn)
VALUES (3173, '04.10.2023', 98346, 102400);

INSERT INTO eRezept (Rezeptnummer, Datum, ausgestelltVon, ausgestelltAn)
VALUES (3920, '27.03.2023', 23564, 204800);

INSERT INTO eRezept (Rezeptnummer, Datum, ausgestelltVon, ausgestelltAn)
VALUES (3627, '07.09.2023', 54567, 409600);

INSERT INTO eRezept (Rezeptnummer, Datum, ausgestelltVon, ausgestelltAn)
VALUES (3783, '04.01.2023', 34546, 819200);

INSERT INTO eRezept (Rezeptnummer, Datum, ausgestelltVon, ausgestelltAn)
VALUES (3481, '11.02.2023', 56672, 163840);

-- Termin mit neuen Daten befüllen

INSERT INTO Termin (Terminnummer, Datum, bekommtTermin, vergibtTerminHausarzt, vergibtTerminFacharzt)
VALUES (4521, '17.09.2023', 32768, 100001, NULL);

INSERT INTO Termin (Terminnummer, Datum, bekommtTermin, vergibtTerminHausarzt, vergibtTerminFacharzt)
VALUES (4870, '09.07.2023', 65536, 100010, NULL);

INSERT INTO Termin (Terminnummer, Datum, bekommtTermin, vergibtTerminHausarzt, vergibtTerminFacharzt)
VALUES (4200, '15.09.2023', 45634, 128128, NULL);

INSERT INTO Termin (Terminnummer, Datum, bekommtTermin, vergibtTerminHausarzt, vergibtTerminFacharzt)
VALUES (4133, '24.08.2023', 76446, 256256, NULL);

INSERT INTO Termin (Terminnummer, Datum, bekommtTermin, vergibtTerminHausarzt, vergibtTerminFacharzt)
VALUES (4347, '10.03.2023', 54577, 512512, NULL);

INSERT INTO Termin (Terminnummer, Datum, bekommtTermin, vergibtTerminHausarzt, vergibtTerminFacharzt)
VALUES (4036, '04.10.2023', 98346, 102400, NULL);

INSERT INTO Termin (Terminnummer, Datum, bekommtTermin, vergibtTerminHausarzt, vergibtTerminFacharzt)
VALUES (4345, '27.03.2023', 23564, 204800, NULL);

INSERT INTO Termin (Terminnummer, Datum, bekommtTermin, vergibtTerminHausarzt, vergibtTerminFacharzt)
VALUES (4591, '07.09.2023', 54567, 409600, NULL);

INSERT INTO Termin (Terminnummer, Datum, bekommtTermin, vergibtTerminHausarzt, vergibtTerminFacharzt)
VALUES (4156, '04.01.2023', 34546, 819200, NULL);

INSERT INTO Termin (Terminnummer, Datum, bekommtTermin, vergibtTerminHausarzt, vergibtTerminFacharzt)
VALUES (4791, '11.02.2023', 56672, 163840, NULL);

-- Überweisung mit neuen Daten befüllen

INSERT INTO Ueberweisung (Ueberweisungsnummer, Grund, erhaltenVon, ueberwiesenVon, ueberwiesenAn)
VALUES ('Herzprobleme', 100001, 32768, 34524);

INSERT INTO Ueberweisung (Ueberweisungsnummer, Grund, erhaltenVon, ueberwiesenVon, ueberwiesenAn)
VALUES (1000,'Muttermalüberwachung', 100010, 65536, 67865);

INSERT INTO Ueberweisung (Ueberweisungsnummer, Grund, erhaltenVon, ueberwiesenVon, ueberwiesenAn)
VALUES (1000, 'Entwicklungsproblem', 128128, 45634, 45467);

INSERT INTO Ueberweisung (Ueberweisungsnummer, Grund, erhaltenVon, ueberwiesenVon, ueberwiesenAn)
VALUES (1000,'Gelenkschmerzen', 256256, 76446, 87543);

INSERT INTO Ueberweisung (Ueberweisungsnummer, Grund, erhaltenVon, ueberwiesenVon, ueberwiesenAn)
VALUES (1000,'Verdauungsprobleme', 512512, 54577, 46758);

INSERT INTO Ueberweisung (Ueberweisungsnummer, Grund, erhaltenVon, ueberwiesenVon, ueberwiesenAn)
VALUES (1000,'Kopfschmerzen', 102400, 98346, 20674);

INSERT INTO Ueberweisung (Ueberweisungsnummer, Grund, erhaltenVon, ueberwiesenVon, ueberwiesenAn)
VALUES (1000,'Harnwegsinfektion', 204800, 23564, 34369);

INSERT INTO Ueberweisung (Ueberweisungsnummer, Grund, erhaltenVon, ueberwiesenVon, ueberwiesenAn)
VALUES (1000,'Hormonstörung', 409600, 54567, 32496);

INSERT INTO Ueberweisung (Ueberweisungsnummer, Grund, erhaltenVon, ueberwiesenVon, ueberwiesenAn)
VALUES (1000,'Anämie', 819200, 34546, 97825);

INSERT INTO Ueberweisung (Ueberweisungsnummer, Grund, erhaltenVon, ueberwiesenVon, ueberwiesenAn)
VALUES (1000,'Sehstörung', 819200, 34546, 23423);

-- informierenFacharzt mit neuen Daten befüllen

INSERT INTO informierenFacharzt (Datum, Arztnummer, Facharztnummer)
VALUES ('16.09.2023', 32768, 34524);

INSERT INTO informierenFacharzt (Datum, Arztnummer, Facharztnummer)
VALUES ('08.07.2023', 65536, 67865);

INSERT INTO informierenFacharzt (Datum, Arztnummer, Facharztnummer)
VALUES ('14.09.2023', 45634, 45467);

INSERT INTO informierenFacharzt (Datum, Arztnummer, Facharztnummer)
VALUES ('23.08.2023', 76446, 87543);

INSERT INTO informierenFacharzt (Datum, Arztnummer, Facharztnummer)
VALUES ('09.03.2023', 54577, 46758);

INSERT INTO informierenFacharzt (Datum, Arztnummer, Facharztnummer)
VALUES ('03.10.2023', 98346, 20674);

INSERT INTO informierenFacharzt (Datum, Arztnummer, Facharztnummer)
VALUES ('26.03.2023', 23564, 34369);

INSERT INTO informierenFacharzt (Datum, Arztnummer, Facharztnummer)
VALUES ('06.09.2023', 54567, 32496);

INSERT INTO informierenFacharzt (Datum, Arztnummer, Facharztnummer)
VALUES ('03.01.2023', 34546, 97825);

INSERT INTO informierenFacharzt (Datum, Arztnummer, Facharztnummer)
VALUES ('10.02.2023', 56672, 23423);

-- Labor mit Daten befüllen

INSERT INTO Labor (Labornummer, Name, Strasse, Hausnummer, PLZ)
VALUES (64359, 'BioAnalytik Lab', 'Schwanenwik', 9, '22041');

INSERT INTO Labor (Labornummer, Name, Strasse, Hausnummer, PLZ)
VALUES (11249, 'Molecular Diagnostics', 'Neuer Wall', 14, '20095');

INSERT INTO Labor (Labornummer, Name, Strasse, Hausnummer, PLZ)
VALUES (97862, 'GenTech Research', 'Billstedter Hauptstraße', 53, '22309');

INSERT INTO Labor (Labornummer, Name, Strasse, Hausnummer, PLZ)
VALUES (87784, 'PathoSolutions', 'Eppendorfer Landstraße', 31, '22309');

INSERT INTO Labor (Labornummer, Name, Strasse, Hausnummer, PLZ)
VALUES (43765, 'Immunology Experts', 'Reeperbahn', 57, '22307');

INSERT INTO Labor (Labornummer, Name, Strasse, Hausnummer, PLZ)
VALUES (55797, 'Cell Dynamics', 'Langenhorner Chaussee', 37, '20095');

INSERT INTO Labor (Labornummer, Name, Strasse, Hausnummer, PLZ)
VALUES (22547, 'EcoHealth Labs', 'Wandsbeker Chaussee', 27, '22549');

INSERT INTO Labor (Labornummer, Name, Strasse, Hausnummer, PLZ)
VALUES (87653, 'Quantum Bio', 'Eppendorfer Landstraße', 91, '20095');

INSERT INTO Labor (Labornummer, Name, Strasse, Hausnummer, PLZ)
VALUES (34854, 'Vitalis Diagnostics', 'Steilshooper Allee', 100, '22393');

INSERT INTO Labor (Labornummer, Name, Strasse, Hausnummer, PLZ)
VALUES (34874, 'NeuroLab Inc.', 'Große Freiheit', 19, '22041');

-- Messwerte mit Daten befüllen

INSERT INTO Messwert (Messwertnummer, Probenummer, Messwert, generiertVon, erhaltenVon, gehoertZu)
VALUES (64395, 5504, 'Stuhlprobe', 64359, 32768, 100001);

INSERT INTO Messwert (Messwertnummer, Probenummer, Messwert, generiertVon, erhaltenVon, gehoertZu)
VALUES (11294, 5253, 'Abstrich', 11249, 65536, 100010);

INSERT INTO Messwert (Messwertnummer, Probenummer, Messwert, generiertVon, erhaltenVon, gehoertZu)
VALUES (97826, 5389, 'Blutprobe', 97862, 45634, 128128);

INSERT INTO Messwert (Messwertnummer, Probenummer, Messwert, generiertVon, erhaltenVon, gehoertZu)
VALUES (87748, 5112, 'Liquorprobe', 87784, 76446, 256256);

INSERT INTO Messwert (Messwertnummer, Probenummer, Messwert, generiertVon, erhaltenVon, gehoertZu)
VALUES (34847, 5900, 'Liquorprobe', 34874, 54577, 512512);

INSERT INTO Messwert (Messwertnummer, Probenummer, Messwert, generiertVon, erhaltenVon, gehoertZu)
VALUES (43756, 5331, 'Stuhlprobe', 43765, 98346, 102400);

INSERT INTO Messwert (Messwertnummer, Probenummer, Messwert, generiertVon, erhaltenVon, gehoertZu)
VALUES (55779, 5707, 'Urinprobe', 55797, 23564, 204800);

INSERT INTO Messwert (Messwertnummer, Probenummer, Messwert, generiertVon, erhaltenVon, gehoertZu)
VALUES (22574, 5978, 'Liquorprobe', 22547, 54567, 409600);

INSERT INTO Messwert (Messwertnummer, Probenummer, Messwert, generiertVon, erhaltenVon, gehoertZu)
VALUES (87635, 5845, 'Gewebebiopsie', 87653, 34546, 819200);

INSERT INTO Messwert (Messwertnummer, Probenummer, Messwert, generiertVon, erhaltenVon, gehoertZu)
VALUES (34845, 5829, 'Liquorprobe', 55797, 56672, 163840);

-- Untersuchung mit Daten befüllen

INSERT INTO Untersuchung (Untersuchungsnummer, Datum, untersuchtPatient, untersuchtVonHausarzt, untersuchtVonFacharzt)
VALUES (845453, '16.09.2023', 100001, 32768, NULL);

INSERT INTO Untersuchung (Untersuchungsnummer, Datum, untersuchtPatient, untersuchtVonHausarzt, untersuchtVonFacharzt)
VALUES (343532, '08.07.2023', 100010, 65536, NULL);

INSERT INTO Untersuchung (Untersuchungsnummer, Datum, untersuchtPatient, untersuchtVonHausarzt, untersuchtVonFacharzt)
VALUES (886878, '14.09.2023', 128128, 45634, NULL);

INSERT INTO Untersuchung (Untersuchungsnummer, Datum, untersuchtPatient, untersuchtVonHausarzt, untersuchtVonFacharzt)
VALUES (454564, '23.08.2023', 256256, 76446, NULL);

INSERT INTO Untersuchung (Untersuchungsnummer, Datum, untersuchtPatient, untersuchtVonHausarzt, untersuchtVonFacharzt)
VALUES (222345, '09.03.2023', 512512, 54577, NULL);

INSERT INTO Untersuchung (Untersuchungsnummer, Datum, untersuchtPatient, untersuchtVonHausarzt, untersuchtVonFacharzt)
VALUES (978654, '03.10.2023', 98346, 98346, NULL);

INSERT INTO Untersuchung (Untersuchungsnummer, Datum, untersuchtPatient, untersuchtVonHausarzt, untersuchtVonFacharzt)
VALUES (210469, '26.03.2023', 204800, 23564, NULL);

INSERT INTO Untersuchung (Untersuchungsnummer, Datum, untersuchtPatient, untersuchtVonHausarzt, untersuchtVonFacharzt)
VALUES (396829, '06.09.2023', 409600, 54567, NULL);

INSERT INTO Untersuchung (Untersuchungsnummer, Datum, untersuchtPatient, untersuchtVonHausarzt, untersuchtVonFacharzt)
VALUES (356949, '03.01.2023', 819200, 34546, NULL);

INSERT INTO Untersuchung (Untersuchungsnummer, Datum, untersuchtPatient, untersuchtVonHausarzt, untersuchtVonFacharzt)
VALUES (993356, '10.02.2023', 163840, 56672, NULL);

-- Medikament mit Daten befüllen

INSERT INTO Medikament (Medikamentennummer, Name, Wirkstoff, Wirkstoffmenge, ausgehaendigtVon, ausgehaendigtAn)
VALUES (345, 'Ibuprofen', 'Ibuprofen', 400, 34329, 100001);

INSERT INTO Medikament (Medikamentennummer, Name, Wirkstoff, Wirkstoffmenge, ausgehaendigtVon, ausgehaendigtAn)
VALUES (346, 'Paracetamol', 'Paracetamol', 500, 65464, 100010);

INSERT INTO Medikament (Medikamentennummer, Name, Wirkstoff, Wirkstoffmenge, ausgehaendigtVon, ausgehaendigtAn)
VALUES (347, 'Metformin', 'Metformin', 850, 97897, 128128);

INSERT INTO Medikament (Medikamentennummer, Name, Wirkstoff, Wirkstoffmenge, ausgehaendigtVon, ausgehaendigtAn)
VALUES (348, 'Lisinopril', 'Lisinopril', 10, 78782, 256256);

INSERT INTO Medikament (Medikamentennummer, Name, Wirkstoff, Wirkstoffmenge, ausgehaendigtVon, ausgehaendigtAn)
VALUES (349, 'Atorvastatin', 'Atorvastatin', 40, 24257, 512512);

INSERT INTO Medikament (Medikamentennummer, Name, Wirkstoff, Wirkstoffmenge, ausgehaendigtVon, ausgehaendigtAn)
VALUES (350, 'Simvastatin', 'Simvastatin', 20, 43427, 102400);

INSERT INTO Medikament (Medikamentennummer, Name, Wirkstoff, Wirkstoffmenge, ausgehaendigtVon, ausgehaendigtAn)
VALUES (351, 'Omeprazol', 'Omeprazol', 20, 34327, 204800);

INSERT INTO Medikament (Medikamentennummer, Name, Wirkstoff, Wirkstoffmenge, ausgehaendigtVon, ausgehaendigtAn)
VALUES (352, 'Amlodipin', 'Amlodipin', 5, 77867, 409600);

INSERT INTO Medikament (Medikamentennummer, Name, Wirkstoff, Wirkstoffmenge, ausgehaendigtVon, ausgehaendigtAn)
VALUES (353, 'Amoxicillin', 'Amoxicillin', 1000, 66432, 819200);

INSERT INTO Medikament (Medikamentennummer, Name, Wirkstoff, Wirkstoffmenge, ausgehaendigtVon, ausgehaendigtAn)
VALUES (354, 'Cetirizin', 'Cetirizin', 10, 23478, 163840);

