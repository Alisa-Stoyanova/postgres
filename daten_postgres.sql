--vorhandene Daten löschen
DELETE FROM patienten;
DELETE FROM hausaerzte;
DELETE FROM fachaerzte;
DELETE FROM labore;
DELETE FROM apotheken;
DELETE FROM akten;
DELETE FROM termine;

--mit neuen Daten befüllen
INSERT INTO hausaerzte (arzt_nr, name, strasse, haus_nr, plz, praxisname)
VALUES (32768, 'John H. Watson', 'Mönckebergstraße', 38, '22041', 'Praxis Baker Street'),
       (65536, 'Hippokrates von Kos', 'Saselbeker Stieg', 89, '22415', 'Hausärtzte am Berliner Tor'),
       (45634, 'Peter Fischer', 'Wandsbeker Chaussee', 70, '22179', 'Praxis Fischer'),
       (76446, 'Julia Weber', 'Langenhorner Chaussee', 30, '20095', 'Praxis Weber'),
       (54577, 'Max Meyer', 'Eppendorfer Landstraße', 25, '22179', 'Praxis Meyer'),
       (98346, 'Lisa Wagner', 'Steilshooper Allee', 93, '22111', 'Praxis Wagner'),
       (23564, 'David Becker', 'Billstedter Hauptstraße', 23, '22307', 'Praxis Becker'),
       (54567, 'Sarah Hoffmann', 'Osdorfer Landstraße', 77, '22415', 'Praxis Hoffmann'),
       (34546, 'Paul Schäfer', 'Fuhlsbüttler Straße', 1, '22549', 'Praxis Schäfer'),
       (56672, 'Laura Koch', 'Bramfelder Chaussee', 64, '22179', 'Praxis Koch');

INSERT INTO patienten (kv_nr, name, gb_datum, strasse, haus_nr, plz, betreut_von)
VALUES (100001, 'Frodo Baggins', '1997-05-02', 'Am Sandtorkai', 5, '22049', 32768),
       (100010, 'Bilbo Baggins', '1939-09-23', 'Am Sandtorkai', 5, '22049', 65536),
       (128128, 'Sherlock Holmes', '1927-12-12', 'Neuer Wall', 23, '22529', 45634),
       (256256, 'Hermione Granger', '1996-02-17', 'Burgstraße', 56, '22769', 76446),
       (512512, 'James Bond', '1964-01-07', 'Alter Teichweg', 176, '22587', 54577),
       (102400, 'Lisa Simpson', '2001-04-03', 'Rodigalee', 10, '22525', 98346),
       (204800, 'Willy Wonka', '1978-08-13', 'Auf den Blöcken', 98, '20249', 23564),
       (409600, 'Albus Dumbledore', '1967-05-10', 'Sievekingdamm', 248, '22111', 54567),
       (819200, 'Hermes Conrad', '2012-06-02', 'Hamburger Straße', 34, '21077', 34546),
       (163840, 'Ron Weasley', '2003-11-09', 'Horner Weg', 15, '21077', 56672);