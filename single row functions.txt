-- Single row functions
-- A single row functions return 1 result
-- per row
-- Aggregate MIN(), MAX(), COUNT(), SUM(), AVG()
--SELECT MIN(salary) FROM employee;
-- Aggregate functions provide 1 result per
-- multiple rows
-- Numeric Functions
-- CEIL(), ABS(), FLOOR(), POW(), SQRT()
-- MOD() (Modulo Division)

-- Dual table --> Is used as a dummy table
-- if you want to fetch the data without actual
-- table
-- Single row table
SELECT * FROM dual;
SELECT 1 + 1 FROM dual;

SELECT 4 * 20 AS product FROM dual;
-- Character Functions
-- Date / Time Functions
SELECT
    1 + 1 AS sum, 
    10 * 20 AS product, 
    5 / 2 AS quotient
FROM dual;
-- 12c, 11g
SELECT
    1 + 1 AS sum, 
    10 * 20 AS product, 
    5 / 2 AS quotient;
    
-- ABS()
-- Used to given absolute value
-- abs()
SELECT ABS(-146) AS absolute_value
FROM dual;
SELECT ABS(146) AS absolute_value
FROM dual;
SELECT ABS(-146.45) AS absolute_value
FROM dual;

-- FLOOR(), CEIL()
-- FLOOR() --> rounds down the 
-- number to nearest integer possible
-- CEIL() --> rounds up the
-- number to nearest integer possible

SELECT FLOOR(15.9) FROM dual;
SELECT CEIL(15.9) FROM dual;
SELECT CEIL(15.1) FROM dual;
SELECT FLOOR(-15.9) FROM dual;
SELECT CEIL(-15.9) FROM dual;

-- POWER(), SQRT()
SELECT POWER(6, 3), SQRT(25), SQRT(30)
FROM dual;

-- MOD() 
-- Used to perform modulo division
-- gives remainder as result
SELECT MOD(10, 2) AS remainder FROM dual;
SELECT MOD(100, 41) AS remainder FROM dual;

-- ROUND()
-- Rounds the number based on number of digits
-- provided
SELECT ROUND(143.2579, 2) FROM dual;

-- TRUNC()
SELECT TRUNC(143.2579, 2) FROM dual;

-- Single Row functions
SELECT SQRT(salary) FROM employee;



-- Character Functions
-- Conversion
-- UPPER(), LOWER(), INITCAP()
-- Substring
-- SUBSTR(), INSTR(), REPLACE()
-- Concatentation
-- CONCAT(), || ->Concatenation

SELECT UPPER('aditya university') FROM dual;

SELECT UPPER(name) FROM employee;
SELECT LOWER(name) FROM employee;
-- INITCAP(), convert every words first letter into capital
-- Titlecase / PascalCase
SELECT INITCAP('aditya university') FROM dual;

-- || --> Concatentation operator
SELECT 'aditya' || 'university' FROM dual;
SELECT 'aditya' || ' ' || 'university' FROM dual;

-- LENGTH() -> Used to get the number
-- of charaters present in the string
SELECT LENGTH('technical hub') FROM dual;

-- SUBSTR(string, start_position, [no. of chars])
-- Used to get a part of the string from original
-- string
SELECT SUBSTR('technical hub', 4) FROm dual;
SELECT SUBSTR('technical hub', 4, 1) FROm dual;
SELECT SUBSTR('technical hub', 11) FROM dual;
SELECT SUBSTR('technical hub', 5, 4);


SELECT SUBSTR('technical hub', -1) FROm dual;
SELECT SUBSTR('technical hub', -3) FROm dual;
SELECT SUBSTR('technical hub', -3, 1) FROm dual;
-- To print the concatentation of first and last
-- characters in technical hub
SELECT
    SUBSTR('technical hub', 1, 1) || SUBSTR('technical hub', -1)
FROM dual;

SELECT
    name, SUBSTR(name, 1, 1) || SUBSTR(name, -1)
FROM employee;




