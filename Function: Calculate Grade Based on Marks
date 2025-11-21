CREATE OR REPLACE FUNCTION get_grade(marks NUMBER)
RETURN VARCHAR2
IS
BEGIN
    IF marks >= 90 THEN
        RETURN 'A';
    ELSIF marks >= 75 THEN
        RETURN 'B';
    ELSIF marks >= 60 THEN
        RETURN 'C';
    ELSE
        RETURN 'D';
    END IF;
END;
/

-- Run
SELECT get_grade(82) FROM dual;
