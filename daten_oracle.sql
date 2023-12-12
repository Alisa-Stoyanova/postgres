--vorhandene Daten löschen
DELETE
FROM patienten;
DELETE
FROM hausaerzte;
DELETE
FROM fachaerzte;
DELETE
FROM labore;
DELETE
FROM apotheken;
DELETE
FROM akten;
DELETE
FROM termine;

--mit neuen Daten Tabelle hausaerzte befüllen
INSERT INTO hausaerzte (arzt_nr, name, strasse, haus_nr, plz, praxisname)
VALUES (32768, 'John H. Watson', 'Mönckebergstraße', 38, '22041', 'Praxis Baker Street');

INSERT INTO hausaerzte (arzt_nr, name, strasse, haus_nr, plz, praxisname)
VALUES (65536, 'Hippokrates von Kos', 'Saselbeker Stieg', 89, '22415', 'Hausärtzte am Berliner Tor');

INSERT INTO hausaerzte (arzt_nr, name, strasse, haus_nr, plz, praxisname)
VALUES (45634, 'Peter Fischer', 'Wandsbeker Chaussee', 70, '22179', 'Praxis Fischer');

INSERT INTO hausaerzte (arzt_nr, name, strasse, haus_nr, plz, praxisname)
VALUES (76446, 'Julia Weber', 'Langenhorner Chaussee', 30, '20095', 'Praxis Weber');

INSERT INTO hausaerzte (arzt_nr, name, strasse, haus_nr, plz, praxisname)
VALUES (54577, 'Max Meyer', 'Eppendorfer Landstraße', 25, '22179', 'Praxis Meyer');

INSERT INTO hausaerzte (arzt_nr, name, strasse, haus_nr, plz, praxisname)
VALUES (98346, 'Lisa Wagner', 'Steilshooper Allee', 93, '22111', 'Praxis Wagner');

INSERT INTO hausaerzte (arzt_nr, name, strasse, haus_nr, plz, praxisname)
VALUES (23564, 'David Becker', 'Billstedter Hauptstraße', 23, '22307', 'Praxis Becker');

INSERT INTO hausaerzte (arzt_nr, name, strasse, haus_nr, plz, praxisname)
VALUES (54567, 'Sarah Hoffmann', 'Osdorfer Landstraße', 77, '22415', 'Praxis Hoffmann');

INSERT INTO hausaerzte (arzt_nr, name, strasse, haus_nr, plz, praxisname)
VALUES (34546, 'Paul Schäfer', 'Fuhlsbüttler Straße', 1, '22549', 'Praxis Schäfer');

INSERT INTO hausaerzte (arzt_nr, name, strasse, haus_nr, plz, praxisname)
VALUES (56672, 'Laura Koch', 'Bramfelder Chaussee', 64, '22179', 'Praxis Koch');

--mit neuen Daten Tabelle patienten befüllen
INSERT INTO patienten (kv_nr, name, gb_datum, strasse, haus_nr, plz, betreut_von)
VALUES (100001, 'Frodo Baggins', '05-02-1997', 'Am Sandtorkai', 5, '22049', 32768);

INSERT INTO patienten (kv_nr, name, gb_datum, strasse, haus_nr, plz, betreut_von)
VALUES (100010, 'Bilbo Baggins', '23-09-1939', 'Am Sandtorkai', 5, '22049', 65536);

INSERT INTO patienten (kv_nr, name, gb_datum, strasse, haus_nr, plz, betreut_von)
VALUES (128128, 'Sherlock Holmes', '12-12-1927', 'Neuer Wall', 23, '22529', 45634);

INSERT INTO patienten (kv_nr, name, gb_datum, strasse, haus_nr, plz, betreut_von)
VALUES (256256, 'Hermione Granger', '17-02-1996', 'Burgstraße', 56, '22769', 76446);

INSERT INTO patienten (kv_nr, name, gb_datum, strasse, haus_nr, plz, betreut_von)
VALUES (512512, 'James Bond', '01-07-1964', 'Alter Teichweg', 176, '22587', 54577);

INSERT INTO patienten (kv_nr, name, gb_datum, strasse, haus_nr, plz, betreut_von)
VALUES (102400, 'Lisa Simpson', '04-03-2001', 'Rodigalee', 10, '22525', 98346);

INSERT INTO patienten (kv_nr, name, gb_datum, strasse, haus_nr, plz, betreut_von)
VALUES (204800, 'Willy Wonka', '08-11-1978', 'Auf den Blöcken', 98, '20249', 23564);

INSERT INTO patienten (kv_nr, name, gb_datum, strasse, haus_nr, plz, betreut_von)
VALUES (409600, 'Albus Dumbledore', '05-10-1967', 'Sievekingdamm', 248, '22111', 54567);

INSERT INTO patienten (kv_nr, name, gb_datum, strasse, haus_nr, plz, betreut_von)
VALUES (819200, 'Hermes Conrad', '06-02-2012', 'Hamburger Straße', 34, '21077', 34546);

INSERT INTO patienten (kv_nr, name, gb_datum, strasse, haus_nr, plz, betreut_von)
VALUES (163840, 'Ron Weasley', '11-09-2003', 'Horner Weg', 15, '21077', 56672);