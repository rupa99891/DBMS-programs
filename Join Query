CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(40)
);

CREATE TABLE Enrollments (
    RollNo INT,
    CourseID INT,
    FOREIGN KEY (RollNo) REFERENCES Students(RollNo),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

INSERT INTO Courses VALUES
(101, 'DBMS'),
(102, 'OS'),
(103, 'Networks');

INSERT INTO Enrollments VALUES
(1, 101),
(2, 103),
(3, 102);

SELECT Students.Name, Courses.CourseName
FROM Students
INNER JOIN Enrollments ON Students.RollNo = Enrollments.RollNo
INNER JOIN Courses ON Courses.CourseID = Enrollments.CourseID;
