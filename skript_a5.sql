/* -----------Nützliches-----------

--Eigenen Username herausfinden
SELECT USER FROM DUAL;

--Rolle an User vergeben
GRANT patient TO DB_WDG651;

--Welche Zugriffsrechte hat die Tabelle
SELECT * FROM all_tab_privs
   WHERE table_name = 'DB_WUY315.table_name';

--Recht der Weitergabe von Privilegien gewähren
GRANT SELECT ON table_name
   TO user_name WITH GRANT OPTION;

--Benutzerrechte entziehen
REVOKE SELECT ON table_name
   FROM user_name CASCADE;

--Neue Daten hinzufügen
INSERT INTO DB_WUY315.table_name (col1, col2, colN)
   VALUES (val1, val2, valN);

--Daten aktualisieren
UPDATE DB_WUY315.table_name
   SET col1 = newValue
   WHERE condition;

--SQL Version herausfinden
SELECT * FROM V$VERSION;
*/