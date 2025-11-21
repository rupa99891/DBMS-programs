CREATE OR REPLACE FUNCTION even_odd(n NUMBER)
RETURN VARCHAR2
IS
BEGIN
    IF MOD(n, 2) = 0 THEN
        RETURN 'Even';
    ELSE
        RETURN 'Odd';
    END IF;
END;
/

-- Run
SELECT even_odd(13) FROM dual;
