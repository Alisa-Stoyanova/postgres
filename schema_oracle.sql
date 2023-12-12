--vorhandene Relationen mit gleichen Namen löschen
DROP TABLE hausaerzte;
DROP TABLE patienten;
DROP TABLE fachaerzte;
DROP TABLE labore;
DROP TABLE apotheken;
DROP TABLE akten;
DROP TABLE termine;

--neues Schema anlegen
CREATE TABLE hausaerzte (
    arzt_nr         INTEGER PRIMARY KEY,
    name            VARCHAR(30) NOT NULL,
    strasse         VARCHAR(30),
    haus_nr         INTEGER,
    plz             VARCHAR(30),
    praxisname      VARCHAR(30)
);

CREATE TABLE patienten (
    kv_nr           INTEGER PRIMARY KEY,
    name            VARCHAR(30) NOT NULL,
    gb_datum        DATE,
    strasse         VARCHAR(30),
    haus_nr         INTEGER,
    plz             VARCHAR(30),
    betreut_von     INTEGER REFERENCES hausaerzte
);

CREATE TABLE fachaerzte (
    facharzt_nr     INTEGER PRIMARY KEY,
    name            VARCHAR(30) NOT NULL,
    strasse         VARCHAR(30),
    haus_nr         INTEGER,
    plz             VARCHAR(30),
    praxisname      VARCHAR(30),
    fach            VARCHAR(30)
);

CREATE TABLE labore (
    labor_nr        INTEGER PRIMARY KEY,
    name            VARCHAR(30) NOT NULL,
    strasse         VARCHAR(30),
    haus_nr         INTEGER,
    plz             VARCHAR(30)
);

CREATE TABLE apotheken (
    apotheke_nr     INTEGER PRIMARY KEY,
    name            VARCHAR(30) NOT NULL,
    strasse         VARCHAR(30),
    haus_nr         INTEGER,
    plz             VARCHAR(30)
);

CREATE TABLE akten (
    akte_nr         INTEGER PRIMARY KEY,
    befund          VARCHAR(30),
    messwert        VARCHAR(30),
    kv_nr           INTEGER REFERENCES patienten
);

CREATE TABLE termine (
    termin_nr       INTEGER PRIMARY KEY,
    datum           DATE,
    arzt_nr         INTEGER REFERENCES hausaerzte,
    kv_nr           INTEGER REFERENCES patienten
);