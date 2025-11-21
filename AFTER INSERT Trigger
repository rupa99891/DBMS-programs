CREATE TABLE Student_Log (
    rollno NUMBER,
    inserted_at DATE
);

CREATE OR REPLACE TRIGGER log_student_insert
AFTER INSERT ON Students
FOR EACH ROW
BEGIN
    INSERT INTO Student_Log VALUES (:NEW.rollno, SYSDATE);
END;
/
