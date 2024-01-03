/*
Praktikum zur Lehrveranstaltung Datenbanken WS 23/24
Praktikum Nr.5
Gruppe 3
Schemaskript
Alisa Stoyanova
Rahim Akkoyun
*/

-- Vorhandene Daten löschen

DROP TABLE IF EXISTS Hausarzt               CASCADE CONSTRAINTS;
DROP TABLE IF EXISTS Facharzt               CASCADE CONSTRAINTS;
DROP TABLE IF EXISTS Patient                CASCADE CONSTRAINTS;
DROP TABLE IF EXISTS Apotheke               CASCADE CONSTRAINTS;
DROP TABLE IF EXISTS Probe                  CASCADE CONSTRAINTS;
DROP TABLE IF EXISTS Digitale_Patientenakte CASCADE CONSTRAINTS;
DROP TABLE IF EXISTS Labor                  CASCADE CONSTRAINTS;
DROP TABLE IF EXISTS Messwert               CASCADE CONSTRAINTS;
DROP TABLE IF EXISTS eRezept                CASCADE CONSTRAINTS;
DROP TABLE IF EXISTS Termin                 CASCADE CONSTRAINTS;
DROP TABLE IF EXISTS Ueberweisung           CASCADE CONSTRAINTS;
DROP TABLE IF EXISTS Untersuchung           CASCADE CONSTRAINTS;
DROP TABLE IF EXISTS Medikament             CASCADE CONSTRAINTS;
DROP TABLE IF EXISTS informierenFacharzt    CASCADE CONSTRAINTS;

-- Neues Schema für Hausarzt anlegen

CREATE TABLE IF NOT EXISTS Hausarzt
(
    Arztnummer                      INTEGER             NOT NULL    PRIMARY KEY,
    Name                            VARCHAR(255)        NOT NULL,
    Strasse                         VARCHAR(255)        NOT NULL,
    Hausnummer                      INTEGER             NOT NULL    CHECK       (Hausnummer BETWEEN 1 AND 999),
    PLZ                             INTEGER             NOT NULL
);

-- Neues Schema für Facharzt anlegen

CREATE TABLE IF NOT EXISTS Facharzt
(
    Facharztnummer                  INTEGER             NOT NULL    PRIMARY KEY,
    Name                            VARCHAR(255)        NOT NULL,
    Strasse                         VARCHAR(255)        NOT NULL,
    Hausnummer                      INTEGER             NOT NULL    CHECK       (Hausnummer BETWEEN 1 AND 999),
    PLZ                             INTEGER             NOT NULL,
    Fachrichtung                    VARCHAR(255)        NOT NULL
);

-- Neues Schema für Patient anlegen

CREATE TABLE IF NOT EXISTS Patient
(
    KVNummer                        INTEGER             NOT NULL    PRIMARY KEY,
    Name                            VARCHAR(255)        NOT NULL,
    Strasse                         VARCHAR(255)        NOT NULL,
    Hausnummer                      INTEGER             NOT NULL    CHECK       (Hausnummer BETWEEN 1 AND 999),
    PLZ                             INTEGER             NOT NULL,
    Geburtsdatum                    DATE                NOT NULL    CHECK       (Geburtsdatum < SYSDATE - 18*365),
    Geschlecht                      VARCHAR(255)        NOT NULL    CHECK       (Geschlecht IN ('m', 'w', 'd')),
    betreutVon                      INTEGER             NOT NULL,
    FOREIGN KEY     (betreutVon)    REFERENCES          Hausarzt(Arztnummer)    ON DELETE SET NULL
);

-- Neues Schema für Apotheke anlegen

CREATE TABLE IF NOT EXISTS Apotheke
(
    Apothekennummer                 INTEGER             NOT NULL    PRIMARY KEY,
    Name                            VARCHAR(255)        NOT NULL,
    Strasse                         VARCHAR(255)        NOT NULL,
    Hausnummer                      INTEGER             NOT NULL    CHECK       (Hausnummer BETWEEN 1 AND 999),
    PLZ                             INTEGER             NOT NULL,
    zugeordnetRezept                INTEGER REFERENCES  eRezept(Rezeptnummer)   ON DELETE SET NULL
);

-- Neues Schema für Probe anlegen

CREATE TABLE IF NOT EXISTS Probe
(
    Probennummer                    INTEGER             GENERATED BY DEFAULT AS IDENTITY NOT NULL    PRIMARY KEY,
    Probetyp                        VARCHAR(255)        NOT NULL,
    gegebenVon                      INTEGER REFERENCES  Patient(KVNummer)        ON DELETE SET NULL,
    entnommenVonHausarzt            INTEGER REFERENCES  Hausarzt(Arztnummer)     ON DELETE SET NULL,
    entnommenVonFacharzt            INTEGER REFERENCES  Facharzt(Facharztnummer) ON DELETE SET NULL
);

-- Neues Schema für Digitale Patientenakte anlegen

CREATE TABLE IF NOT EXISTS Digitale_Patientenakte
(
    Aktennummer                     INTEGER             GENERATED BY DEFAULT AS IDENTITY NOT NULL    PRIMARY KEY,
    Befund                          VARCHAR(255)        NOT NULL,
    Datum                           DATE                NOT NULL,
    gehoertZu                       INTEGER REFERENCES  Patient(KVNummer)        ON DELETE CASCADE,
    eingetragenVonHausarzt          INTEGER REFERENCES  Hausarzt(Arztnummer)     ON DELETE SET NULL,
    eingetragenVonFacharzt          INTEGER REFERENCES  Facharzt(Facharztnummer) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS Labor
(
    Labornummer                     INTEGER             NOT NULL    PRIMARY KEY,
    Name                            VARCHAR(255)        NOT NULL,
    Strasse                         VARCHAR(255)        NOT NULL,
    Hausnummer                      INTEGER             NOT NULL    CHECK       (Hausnummer BETWEEN 1 AND 999),
    PLZ                             INTEGER             NOT NULL
);

-- Neues Schema für Labor Messwerte anlegen

CREATE TABLE IF NOT EXISTS Messwert
(
    Messwertnummer                  INTEGER             GENERATED BY DEFAULT AS IDENTITY NOT NULL    PRIMARY KEY,
    Probenummer                     INTEGER,
    FOREIGN KEY     (Probenummer)   REFERENCES          Probe(Probennummer)     ON DELETE SET NULL,
    Messwert                        INTEGER             NOT NULL,
    generiertVon                    INTEGER REFERENCES  Labor(Labornummer)      ON DELETE SET NULL,
    erhaltenVon                     INTEGER REFERENCES  Hausarzt(Arztnummer)    ON DELETE SET NULL,
    gehoertZu                       INTEGER REFERENCES  Patient(KVNummer)       ON DELETE CASCADE
);

-- Neues Schema für eRezept anlegen

CREATE TABLE IF NOT EXISTS eRezept
(
    Rezeptnummer                    INTEGER             GENERATED BY DEFAULT AS IDENTITY NOT NULL    PRIMARY KEY,
    Datum                           DATE                NOT NULL,
    ausgestelltVon                  INTEGER REFERENCES  Hausarzt(Arztnummer)   ON DELETE SET NULL,
    ausgestelltAn                   INTEGER REFERENCES  Patient(KVNummer)      ON DELETE CASCADE
);

-- Neues Schema für Termin anlegen

CREATE TABLE IF NOT EXISTS Termin
(
    Terminnummer                    INTEGER             GENERATED BY DEFAULT AS IDENTITY NOT NULL    PRIMARY KEY,
    Datum                           DATE                NOT NULL    CHECK       (Datum >= SYSDATE AND Datum < SYSDATE + 365),
    bekommtTermin                   INTEGER REFERENCES  Patient(KVNummer)        ON DELETE CASCADE,
    vergibtTerminHausarzt           INTEGER REFERENCES  Hausarzt(Arztnummer)     ON DELETE CASCADE,
    vergibtTerminFacharzt           INTEGER REFERENCES  Facharzt(Facharztnummer) ON DELETE CASCADE
);

-- Neues Schema für Ueberweisung anlegen

CREATE TABLE IF NOT EXISTS Ueberweisung
(
    Ueberweisungsnummer             INTEGER             GENERATED BY DEFAULT AS IDENTITY NOT NULL    PRIMARY KEY,
    Grund                           VARCHAR(255)        NOT NULL,
    erhaltenVon                     INTEGER REFERENCES  Patient(KVNummer)        ON DELETE CASCADE,
    ueberwiesenVon                  INTEGER REFERENCES  Hausarzt(Arztnummer)     ON DELETE CASCADE,
    ueberwiesenAn                   INTEGER REFERENCES  Facharzt(Facharztnummer) ON DELETE CASCADE
);

-- Neues Schema für Untersuchung anlegen

CREATE TABLE IF NOT EXISTS Untersuchung
(
    Untersuchungsnummer             INTEGER             GENERATED BY DEFAULT AS IDENTITY NOT NULL    PRIMARY KEY,
    Datum                           DATE                NOT NULL,
    untersuchtPatient               INTEGER REFERENCES  Patient(KVNummer)        ON DELETE CASCADE,
    untersuchtVonHausarzt           INTEGER REFERENCES  Hausarzt(Arztnummer)     ON DELETE CASCADE,
    untersuchtVonFacharzt           INTEGER REFERENCES  Facharzt(Facharztnummer) ON DELETE CASCADE
);

-- Neues Schema für Medikament anlegen

CREATE TABLE IF NOT EXISTS Medikament
(
    Medikamentennummer              INTEGER             GENERATED BY DEFAULT AS IDENTITY NOT NULL    PRIMARY KEY,
    Name                            VARCHAR(255)        NOT NULL,
    Wirkstoff                       VARCHAR(255)        NOT NULL,
    Wirkstoffmenge                  INTEGER             NOT NULL,
    ausgehaendigtVon                INTEGER REFERENCES  Apotheke(Apothekennummer) ON DELETE SET NULL,
    ausgehaendigtAn                 INTEGER REFERENCES  Patient(KVNummer)         ON DELETE CASCADE
);

-- Neues Schema für InformierenFacharzt anlegen

CREATE TABLE IF NOT EXISTS informierenFacharzt
(
    Datum                           DATE                NOT NULL,
    Arztnummer                      INTEGER REFERENCES  Hausarzt(Arztnummer)      ON DELETE CASCADE,
    Facharztnummer                  INTEGER REFERENCES  Facharzt(Facharztnummer)  ON DELETE CASCADE,
    PRIMARY KEY                     (Datum, Arztnummer, Facharztnummer)
);