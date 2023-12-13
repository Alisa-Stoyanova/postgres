DROP TABLE Patient CASCADE CONSTRAINTS ;
DROP TABLE Hausarzt CASCADE CONSTRAINTS;
DROP TABLE Facharzt CASCADE CONSTRAINTS;
DROP TABLE Probe CASCADE CONSTRAINTS;
DROP TABLE DigitalePatientenakte CASCADE CONSTRAINTS;
DROP TABLE LaborMesswerte CASCADE CONSTRAINTS;
DROP TABLE eRezept CASCADE CONSTRAINTS;
DROP TABLE Termin CASCADE CONSTRAINTS;
DROP TABLE Ueberweisung CASCADE CONSTRAINTS;
DROP TABLE Apotheke CASCADE CONSTRAINTS;
DROP TABLE informierenFA CASCADE CONSTRAINTS;
DROP TABLE habenDPA CASCADE CONSTRAINTS;
DROP TABLE erzeugenLM CASCADE CONSTRAINTS;


CREATE TABLE Hausarzt
(
    Arztnummer      INTEGER PRIMARY KEY,
    Name            VARCHAR(255) NOT NULL,
    Strasse         VARCHAR(255) NOT NULL,
    Hausnummer      INTEGER,
    PLZ             INTEGER,
    Praxisname      VARCHAR(255) NOT NULL
);

CREATE TABLE Facharzt
(
    FArztnummer     INTEGER PRIMARY KEY,
    Name            VARCHAR(255) NOT NULL,
    Strasse         VARCHAR(255) NOT NULL,
    Hausnummer      INTEGER,
    PLZ             INTEGER,
    Praxisname      VARCHAR(255) NOT NULL,
    Fachrichtung    VARCHAR(255) NOT NULL
);

CREATE TABLE Patient
(
    KVNUMMER       INTEGER PRIMARY KEY,
    Name            VARCHAR(255) NOT NULL,
    Geburtsdatum    DATE,
    Strasse         VARCHAR(255) NOT NULL,
    Hausnummer      INTEGER,
    PLZ             INTEGER,
    betreutVon      INTEGER REFERENCES Hausarzt
);

CREATE TABLE Apotheke
(
    Apothekennummer INTEGER PRIMARY KEY,
    Name            VARCHAR(255) NOT NULL,
    Strasse         VARCHAR(255) NOT NULL,
    Hausnummer      INTEGER,
    PLZ             INTEGER,
    Medikament      VARCHAR(255) NOT NULL,
    Datum           DATE,
    ausgehaendigtAn INTEGER REFERENCES Patient
);

CREATE TABLE Probe
(
    Probenummer     INTEGER PRIMARY KEY,
    Probetyp        VARCHAR(255) NOT NULL,
    entnommenVon    INTEGER REFERENCES Hausarzt,
    gegebenVon      INTEGER REFERENCES Patient
);

CREATE TABLE DigitalePatientenakte
(
    Aktennummer     INTEGER PRIMARY KEY,
    Befund          VARCHAR(255) NOT NULL,
    Datum           DATE,
    eingetragenVon  INTEGER REFERENCES Hausarzt,
    gehoertZu       INTEGER REFERENCES Patient
);

CREATE TABLE LaborMesswerte
(
    Messwertnummer  INTEGER PRIMARY KEY,
    Probenummer     INTEGER,
    FOREIGN KEY     (Probenummer) REFERENCES Probe(Probenummer),
    Messwert        VARCHAR(255) NOT NULL,
    Laborname       VARCHAR(255) NOT NULL,
    Strasse         VARCHAR(255) NOT NULL,
    Hausnummer      INTEGER,
    PLZ             INTEGER,
    erhaltenVon     INTEGER REFERENCES Hausarzt,
    gehoertZu       INTEGER REFERENCES Patient
);

CREATE TABLE eRezept
(
    Rezeptnummer    INTEGER PRIMARY KEY,
    Datum           DATE,
    Medikament      VARCHAR(255) NOT NULL,
    Dosierung       INTEGER,
    verschriebenVon INTEGER REFERENCES Hausarzt,
    erhaltenVon     INTEGER REFERENCES Patient,
    zugeordnetAn    INTEGER REFERENCES Apotheke
);

CREATE TABLE Termin
(
    Terminnummer    INTEGER PRIMARY KEY,
    Datum           DATE,
    gegebenVon      INTEGER REFERENCES Hausarzt,
    erhaltenVon     INTEGER REFERENCES Patient
);

CREATE TABLE Ueberweisung
(
    Ueberweisungsnummer INTEGER PRIMARY KEY,
    Grund               VARCHAR(255) NOT NULL,
    Facharztname        VARCHAR(255) NOT NULL,
    Facharztstrasse     VARCHAR(255) NOT NULL,
    Facharzthausnummer  VARCHAR(255) NOT NULL,
    FacharztPLZ         VARCHAR(255) NOT NULL,
    ueberwiesenVon      INTEGER REFERENCES Hausarzt,
    erhaltenVon         INTEGER REFERENCES Patient
);

CREATE TABLE informierenFA
(
    Arztnummer  INTEGER REFERENCES Hausarzt,
    FArztnummer  INTEGER REFERENCES Facharzt,
    PRIMARY KEY(Arztnummer,FArztnummer)
);

CREATE TABLE habenDPA
(
    Aktennummer INTEGER REFERENCES DigitalePatientenakte,
    KVNummer    INTEGER REFERENCES Patient,
    PRIMARY KEY(Aktennummer,KVNUMMER)
);

CREATE TABLE erzeugenLM
(
    Probenummer     INTEGER REFERENCES Probe,
    Messwertnummer  INTEGER REFERENCES LaborMesswerte
);
