/*
Praktikum zur Lehrveranstaltung Datenbanken WS 23/24
Praktikum Nr.5
Gruppe 3
Schemaskript
Alisa Stoyanova
Rahim Akkoyun
*/

-- Vorhandene Daten löschen

DROP TABLE Hausarzt CASCADE CONSTRAINTS;
DROP TABLE Facharzt CASCADE CONSTRAINTS;
DROP TABLE Patient CASCADE CONSTRAINTS;
DROP TABLE Apotheke CASCADE CONSTRAINTS;
DROP TABLE Probe CASCADE CONSTRAINTS;
DROP TABLE DigitalePatientenakte CASCADE CONSTRAINTS;
DROP TABLE LaborMesswerte CASCADE CONSTRAINTS; --DO NOT DELETE, SAFE TO IGNORE
DROP TABLE messwert CASCADE CONSTRAINTS;
DROP TABLE eRezept CASCADE CONSTRAINTS;
DROP TABLE Termin CASCADE CONSTRAINTS;
DROP TABLE Ueberweisung CASCADE CONSTRAINTS;
DROP TABLE informierenFA CASCADE CONSTRAINTS;
--DROP TABLE erzeugenLM CASCADE CONSTRAINTS;
DROP TABLE labor CASCADE CONSTRAINTS;

-- Neues Schema für Hausarzt anlegen

CREATE TABLE Hausarzt
(
    Arztnummer INTEGER PRIMARY KEY,
    Name       VARCHAR(255) NOT NULL,
    Strasse    VARCHAR(255) NOT NULL,
    Hausnummer INTEGER NOT NULL check (Hausnummer BETWEEN 1 and 999),
    PLZ        INTEGER NOT NULL,
    Praxisname VARCHAR(255) --überflüssig --> löschen?
);

-- Neues Schema für Facharzt anlegen

CREATE TABLE Facharzt
(
    FArztnummer  INTEGER PRIMARY KEY,
    Name         VARCHAR(255) NOT NULL,
    Strasse      VARCHAR(255) NOT NULL,
    Hausnummer INTEGER NOT NULL check (Hausnummer BETWEEN 1 and 999),
    PLZ          INTEGER NOT NULL,
    Praxisname   VARCHAR(255), --überflüssig --> löschen?
    Fachrichtung VARCHAR(255) NOT NULL
);

-- Neues Schema für Patient anlegen

CREATE TABLE Patient
(
    KVNUMMER     INTEGER PRIMARY KEY,
    Name         VARCHAR(255) NOT NULL,
    Geburtsdatum DATE,
    Strasse      VARCHAR(255) NOT NULL,
    Hausnummer   INTEGER      NOT NULL check (Hausnummer BETWEEN 1 and 999),
    PLZ          INTEGER      NOT NULL,
    betreutVon   INTEGER      REFERENCES Hausarzt ON DELETE SET NULL
--Patient hat keinen Hausarzt mehr, wird aber nicht aus der Welt gelöscht, wenn sein Hausarzt z.B. in Rente geht (wird gelöscht).
);

-- Neues Schema für Apotheke anlegen

CREATE TABLE Apotheke -- soll von Medikament getrennt werden
(
    Apothekennummer INTEGER PRIMARY KEY,
    Name            VARCHAR(255) NOT NULL,
    Strasse         VARCHAR(255) NOT NULL,
    Hausnummer      INTEGER      NOT NULL check (Hausnummer BETWEEN 1 and 999),
    PLZ             INTEGER      NOT NULL,
    Medikament      VARCHAR(255) NOT NULL,
    Datum           DATE,
    ausgehaendigtAn INTEGER REFERENCES Patient ON DELETE CASCADE --Wenn Apotheke gelöscht wird, wird auch Patient verschwinden!
);

-- Neues Schema für Probe anlegen

CREATE TABLE Probe
(
    Probenummer  INTEGER PRIMARY KEY,
    Probetyp     VARCHAR(255) NOT NULL,
    entnommenVon INTEGER REFERENCES Hausarzt ON DELETE CASCADE, --SET NULL
    gegebenVon   INTEGER REFERENCES Patient ON DELETE CASCADE
);

-- Neues Schema für Digitale Patientenakte anlegen

CREATE TABLE DigitalePatientenakte
(
    Aktennummer    INTEGER PRIMARY KEY,
    Befund         VARCHAR(255) NOT NULL,
    Datum          DATE,
    eingetragenVon INTEGER REFERENCES Hausarzt ON DELETE SET NULL,
    gehoertZu      INTEGER REFERENCES Patient ON DELETE CASCADE
);

-- Neues Schema für Labor Messwerte anlegen

CREATE TABLE LaborMesswerte
(
    Messwertnummer INTEGER PRIMARY KEY,
    Probenummer    INTEGER,
    FOREIGN KEY (Probenummer) REFERENCES Probe (Probenummer) ON DELETE CASCADE,
    Messwert       VARCHAR(255) NOT NULL,
    Laborname      VARCHAR(255) NOT NULL,
    Strasse        VARCHAR(255) NOT NULL,
    Hausnummer     INTEGER NOT NULL check (Hausnummer BETWEEN 1 and 999),
    PLZ            INTEGER NOT NULL,
    erhaltenVon    INTEGER REFERENCES Hausarzt ON DELETE CASCADE, --SET NULL
    gehoertZu      INTEGER REFERENCES Patient ON DELETE CASCADE
);

-- Neues Schema für eRezept anlegen

CREATE TABLE eRezept
(
    Rezeptnummer    INTEGER PRIMARY KEY,
    Datum           DATE,
    Medikament      VARCHAR(255) NOT NULL,
    Dosierung       INTEGER,
    verschriebenVon INTEGER REFERENCES Hausarzt ON DELETE CASCADE, --SET NULL
    erhaltenVon     INTEGER REFERENCES Patient ON DELETE CASCADE,
    zugeordnetAn    INTEGER REFERENCES Apotheke ON DELETE CASCADE --SET NULL
);

-- Neues Schema für Termin anlegen

CREATE TABLE Termin
(
    Terminnummer INTEGER PRIMARY KEY,
    Datum        DATE,
    gegebenVon   INTEGER REFERENCES Hausarzt ON DELETE CASCADE,
    erhaltenVon  INTEGER REFERENCES Patient ON DELETE CASCADE
);

-- Neues Schema für Ueberweisung anlegen

CREATE TABLE Ueberweisung
(
    Ueberweisungsnummer INTEGER PRIMARY KEY,
    Grund               VARCHAR(255) NOT NULL,
    --Das findet man alles heraus aus der Tabelle Facharzt
    /*Facharztname        VARCHAR(255) NOT NULL,
    Facharztstrasse     VARCHAR(255) NOT NULL,
    FacharztPLZ         VARCHAR(255) NOT NULL,*/
    --Facharzthausnummer  VARCHAR(255) NOT NULL, --Was ist das? In Daten sollte es korrigiert werden
    FArztnummer         INTEGER REFERENCES Facharzt ON DELETE CASCADE, --FArztnummer ist Primary Key von Facharzt
    ueberwiesenVon      INTEGER REFERENCES Hausarzt ON DELETE SET NULL,
    erhaltenVon         INTEGER REFERENCES Patient ON DELETE CASCADE
);

-- Neues Schema für informierenFA (FA = Facharzt) anlegen

CREATE TABLE informierenFA
(
    Datum       DATE,
    Arztnummer  INTEGER REFERENCES Hausarzt ON DELETE CASCADE,
    FArztnummer INTEGER REFERENCES Facharzt ON DELETE CASCADE,
    PRIMARY KEY (Arztnummer, FArztnummer)
);

-- Neues Schema für erzeugenLM (LM = Labor Messwerte) anlegen

--überflüssig, da wir bereits Messwert und Probe in Messwert verbinden: Spalten MesswertNummer und ProbeNummer
/*CREATE TABLE erzeugenLM
(
    Probenummer    INTEGER REFERENCES Probe ON DELETE CASCADE,
    Messwertnummer INTEGER REFERENCES LaborMesswerte ON DELETE CASCADE
);*/

--neues Schema für Labore anlegen
CREATE TABLE labor (
    labor_nr INTEGER PRIMARY KEY,
    name     VARCHAR(30) NOT NULL,
    strasse  VARCHAR(30) NOT NULL,
    haus_nr  INTEGER NOT NULL check (haus_nr BETWEEN 1 and 999),
    plz      VARCHAR(30) NOT NULL);

ALTER TABLE labormesswerte
    RENAME TO messwert;

ALTER TABLE messwert
    ADD (labor_nr INTEGER NOT NULL REFERENCES labor ON DELETE SET NULL);

ALTER TABLE messwert
    DROP (laborname, strasse, hausnummer, plz);

ALTER TABLE patient
    ADD (CONSTRAINT validBirthdate
        CHECK (geburtsdatum < SYSDATE - 18 * 365)); --die Ärzte behandeln nur volljährige Patienten

ALTER TABLE termin
    ADD (CONSTRAINT validDate
        CHECK (datum >= SYSDATE AND datum <= SYSDATE + 365));