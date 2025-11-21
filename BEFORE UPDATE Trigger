CREATE OR REPLACE TRIGGER prevent_salary_decrease
BEFORE UPDATE ON Employee
FOR EACH ROW
BEGIN
    IF :NEW.salary < :OLD.salary THEN
        RAISE_APPLICATION_ERROR(-20010, 'Salary cannot be decreased!');
    END IF;
END;
/
