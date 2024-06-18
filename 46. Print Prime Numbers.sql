SET SERVEROUTPUT ON
DECLARE 
    counter NUMBER;
    output CLOB;
    k NUMBER;
    BEGIN
        FOR n IN 2..1000 LOOP
        counter := 0;
        k := FLOOR(n/2);
        FOR  I IN 2..k LOOP
        IF (MOD(n,I) = 0) THEN 
        counter := 1;
        END IF;
        END LOOP;

    IF (counter = 0) THEN 
     output := output || N || '&';
     END IF;

     END LOOP;

DBMS_OUTPUT.PUT_LINE(SUBSTR(output,1,LENGTH(output)-1));
END;
/