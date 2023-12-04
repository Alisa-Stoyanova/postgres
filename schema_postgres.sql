--vorhandene Relationen mit gleichen Namen löschen
DROP TABLE IF EXISTS hausaerzte CASCADE;
DROP TABLE IF EXISTS patienten CASCADE;
DROP TABLE IF EXISTS fachaerzte;
DROP TABLE IF EXISTS labore;
DROP TABLE IF EXISTS apotheken;
DROP TABLE IF EXISTS akten;
DROP TABLE IF EXISTS termine;

--neues Schema anlegen
CREATE TABLE IF NOT EXISTS hausaerzte (
    arzt_nr         INTEGER PRIMARY KEY,
    name            VARCHAR(30) NOT NULL,
    strasse         VARCHAR(30),
    haus_nr         INTEGER,
    plz             VARCHAR(30),
    praxisname      VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS patienten (
    kv_nr           INTEGER PRIMARY KEY,
    name            VARCHAR(30) NOT NULL,
    gb_datum        DATE,
    strasse         VARCHAR(30),
    haus_nr         INTEGER,
    plz             VARCHAR(30),
    betreut_von     INTEGER REFERENCES hausaerzte
);

CREATE TABLE IF NOT EXISTS fachaerzte (
    facharzt_nr     INTEGER PRIMARY KEY,
    name            VARCHAR(30) NOT NULL,
    strasse         VARCHAR(30),
    haus_nr         INTEGER,
    plz             VARCHAR(30),
    praxisname      VARCHAR(30),
    fach            VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS labore (
    labor_nr        INTEGER PRIMARY KEY,
    name            VARCHAR(30) NOT NULL,
    strasse         VARCHAR(30),
    haus_nr         INTEGER,
    plz             VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS apotheken (
    apotheke_nr     INTEGER PRIMARY KEY,
    name            VARCHAR(30) NOT NULL,
    strasse         VARCHAR(30),
    haus_nr         INTEGER,
    plz             VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS akten (
    akte_nr         INTEGER PRIMARY KEY,
    befund          VARCHAR(30),
    messwert        VARCHAR(30),
    kv_nr           INTEGER REFERENCES patienten
);

CREATE TABLE IF NOT EXISTS termine (
    termin_nr       INTEGER PRIMARY KEY,
    datum           DATE,
    arzt_nr         INTEGER REFERENCES hausaerzte,
    kv_nr           INTEGER REFERENCES patienten
);