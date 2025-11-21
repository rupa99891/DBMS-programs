CREATE OR REPLACE FUNCTION factorial(n NUMBER)
RETURN NUMBER
IS
    f NUMBER := 1;
BEGIN
    FOR i IN 1..n LOOP
        f := f * i;
    END LOOP;

    RETURN f;
END;
/

-- Run
SELECT factorial(5) AS fact FROM dual;
