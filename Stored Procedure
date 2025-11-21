DELIMITER $$

CREATE PROCEDURE GetStudentDetails(IN id INT)
BEGIN
    SELECT * FROM Students WHERE RollNo = id;
END $$

DELIMITER ;

CALL GetStudentDetails(2);
