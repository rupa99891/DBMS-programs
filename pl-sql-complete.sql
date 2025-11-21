-- PL/SQL
-- Procedural Language extesion for SQL
-- MySQL, PostgreSQL -> T-SQL
-- PL/SQL dedicated for Oracle
-- Functions, Procedures, Triggers
-- SQL - Declartive
-- SELECT salary FROM employee;
-- loops, conditionals, variable declarations
-- assigment
-- PL/SQL structure
-- DECLARE (Optional)
-- Declaring / Initializing variables
-- BEGIN (Mandatory)
-- Holding the executable code
-- EXCEPTION (Optional)
-- Used to throw exception, if there are any
-- DBMS_OUTPUT.PUT_LINE() -> printf, cout, print()
-- Hello World on to the screen using PLSQL
SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Hello World');
END;
/

BEGIN
    DBMS_OUTPUT.PUT_LINE('Hello');
    DBMS_OUTPUT.PUT_LINE('I am Pavan');
    DBMS_OUTPUT.PUT_LINE('From Technical Hub');
END;
/

-- DECLARE Block
-- Used to declare / initialize variables
DECLARE
    -- variable declaration -> variable_name datatype
    a NUMBER;
    b NUMBER;
    c NUMBER;
BEGIN
    -- Assignment operator :=
    a := 10;
    b := 20;
    c := a + b;
    DBMS_OUTPUT.PUT_LINE('Sum is: ' || c);
END;
/

DECLARE
    -- variable declaration -> variable_name datatype
    a NUMBER;
    b NUMBER;
    c NUMBER;
BEGIN
    -- Assignment operator :=
    a := &val1;
    b := &val2;
    c := a + b;
    DBMS_OUTPUT.PUT_LINE('Sum is: ' || c);
END;
/

-- Area and Perimeter of a square using pl/sql
DECLARE
    side NUMBER;
    area NUMBER;
    perimeter NUMBER;
BEGIN
    side := 10;
    area := side * side;
    perimeter := 4 * side;
    DBMS_OUTPUT.PUT_LINE('Area is: ' || area);
    DBMS_OUTPUT.PUT_LINE('Perimeter is: ' || perimeter);
END;
/
-- Why there is no scanf() or cin equivalent
-- PL/SQL allows you interact with SQL seamlessly
SELECT * FROM employee;

-- For fetching data from table
-- into pl/sql
DECLARE
    sal1 NUMBER;
    sal2 NUMBER;
    sal_sum NUMBER;
BEGIN
    SELECT salary INTO sal1 FROM employee WHERE id = 1;
    SELECT salary INTO sal2 FROM employee WHERE id = 2;
    sal_sum := sal1 + sal2;
    DBMS_OUTPUT.PUT_LINE('Sum of salaries is: ' || sal_sum);
END;
/

DECLARE
    num NUMBER;
    name VARCHAR2(50);
    join_date DATE;
BEGIN
    num := 4348;
    name := 'Pavan';
    join_date := CURRENT_DATE;
    DBMS_OUTPUT.PUT_LINE('Number: ' || num);
    DBMS_OUTPUT.PUT_LINE('Name: ' || name);
    DBMS_OUTPUT.PUT_LINE('Join Date: ' || join_date);
    DBMS_OUTPUT.PUT_LINE('Join Year: ' || TO_CHAR(join_date, 'YYYY'));
END;
/


-- Finding from how many days
-- an employee is working in your org
DECLARE
    doj DATE;
    today_date DATE;
    days NUMBER;
    name VARCHAR2(50);
BEGIN
    SELECT date_of_joining INTO doj FROM employee WHERE id = 1;
    SELECT name INTO name FROM employee WHERE id = 1;
    today_date := CURRENT_DATE; -- Date function
    days := today_date - doj;
    DBMS_OUTPUT.PUT_LINE(name || ' is working from: ' || days);
END;
/

-- Conditionals in PL/SQL
-- IF, ELSE, ELSIF
-- IF condition THEN
-- IF END IF;


DECLARE
    age NUMBER;
BEGIN
    age := 20;
    IF age > 18 THEN
        DBMS_OUTPUT.PUT_LINE('You can vote');
    END IF;
END;
/

DECLARE
    age NUMBER;
BEGIN
    age := &val;
    IF age > 18 THEN
        DBMS_OUTPUT.PUT_LINE('You can vote');
    ELSE
        DBMS_OUTPUT.PUT_LINE('You cannot vote');
    END IF;
END;
/
-- Smallest of two numbers using PL/SQL
DECLARE
    a NUMBER;
    b NUMBER;
    sot NUMBER;
BEGIN
    a := &val1;
    b := &val;
    IF a < b THEN
        sot := a;
    ELSE
        sot := b;
    END IF;
    DBMS_OUTPUT.PUT_LINE('Smallest of ' || a || ' and ' || b || ' is: ' || sot);
END;
/
-- Even / Odd
DECLARE
    n NUMBER;
    ans VARCHAR2(50);
BEGIN
    n := 15;
    -- Single row function
    IF MOD(n, 2) = 0 THEN
        ans := 'Even';
    ELSE
        ans := 'Odd';
    END IF;
    DBMS_OUTPUT.PUT_LINE(n || ' is ' || ans);
END;
/
-- Using ELSIF -> Max of three numbers
DECLARE
    a NUMBER;
    b NUMBER;
    c NUMBER;
    max_of_three NUMBER;
BEGIN
    a := 10;
    b := 20;
    c := 30;
    IF a >= b AND a >= c THEN
        max_of_three := a;
    ELSIF b >= c AND b >= a THEN
        max_of_three := b;
    ELSE
        max_of_three := c;
    END IF;
    DBMS_OUTPUT.PUT_LINE(max_of_three);
END;
/

-- 1 Type of loop
-- Looping statements
-- WHILE (condition)
-- FOR
-- SIMPLE LOOP
-- Priting 1 to 10 using while in PL/SQL
-- WHILE condition LOOP
-- Every loop must end with END LOOP;

-- A simple PL/SQL program to print the numbers from
-- 1 to 10
-- using while loop
DECLARE
    i NUMBER;
BEGIN
    i := 1;
    WHILE i <= 10 LOOP
        DBMS_OUTPUT.PUT_LINE('Number: ' || i);
        i := i + 1;
    END LOOP;
END;
/

-- Using while loop to calculate the 
-- factors of a number N
DECLARE
    N NUMBER;
    i NUMBER;
BEGIN
    N := 20;
    i := 1;
    -- Running loop from 1 to N using variable i
    WHILE i <= N LOOP
        -- Checking if the current value of i divides N or not
        IF MOD(N, i) = 0 THEN
            DBMS_OUTPUT.PUT_LINE(i || ' is a factor of ' || N);
        END IF;
        i := i + 1;
    END LOOP;
END;
/

SET SERVEROUTPUT ON;
-- PL/SQL - Continued -> 11-09-2025
DECLARE
    n NUMBER;
    i NUMBER;
    cnt NUMBER;
BEGIN
    n := 120; -- about to find the factors of 120
    i := 1;
    cnt := 0;
    WHILE i <= n LOOP
        IF MOD(n, i) = 0 THEN
            DBMS_OUTPUT.PUT_LINE(i || ' is a factor of ' || n);
            cnt := cnt + 1;
        END IF;
        i := i + 1;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Factor count is: ' || cnt);
END;
/

DECLARE
    n NUMBER;
    i NUMBER;
BEGIN
    n := 120; -- about to find the factors of 120
    i := 1;
    WHILE i <= n LOOP
        IF MOD(n, i) = 0 THEN
            DBMS_OUTPUT.PUT(i || ' ');
        END IF;
        i := i + 1;
    END LOOP;
    DBMS_OUTPUT.NEW_LINE();
END;
/

-- DBMS_OUTPUT.PUT_LINE()
-- DBMS_OUTPUT.PUT() --> Accumalates the result
-- 'I am PavanFrom TechnicalhubWhich is in Aditya University'
BEGIN
    DBMS_OUTPUT.PUT('I am Pavan');
    DBMS_OUTPUT.PUT('From TechnicalHub');
    DBMS_OUTPUT.PUT('Which is in Aditya Unversity');
    DBMS_OUTPUT.NEW_LINE(); -- Prints everything accumulated so far
END;
/

-- FOR loop
-- FOR loop_variable IN start_number..end_number LOOP
-- FOR BODY
-- END LOOP;
BEGIN
    FOR i IN 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE(i);
    END LOOP;
END;
/

BEGIN
    FOR i IN REVERSE 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE(i);
    END LOOP;
END;
/

BEGIN
    FOR i IN REVERSE 1..10 LOOP
        DBMS_OUTPUT.PUT(i || ' ');
    END LOOP;
    DBMS_OUTPUT.NEW_LINE();
END;
/
-- Nested For looping
BEGIN
    FOR i IN 1..5 LOOP
        FOR j IN 1..5 LOOP
            DBMS_OUTPUT.PUT(j || ' ');
        END LOOP;
        DBMS_OUTPUT.NEW_LINE();
    END LOOP;
END;
/

BEGIN
    FOR i IN 1..5 LOOP
        DBMS_OUTPUT.PUT_LINE(i);
        EXIT;
    END LOOP;
END;
/

SELECT object_name, object_type, status
FROM user_objects
WHERE object_type = 'FUNCTION';



-- Functions
-- Let us write reusable / callable code
-- A function must always return a value
-- The parameters for function are optional
-- CREATE [OR REPLACE] FUNCTION function_name[(OPT. PARAMETER])
-- RETURN datatype IS/AS
-- declation
-- BEGIN
-- END;
-- Function that adds two numbers and returns the result
CREATE OR REPLACE FUNCTION add_two(a NUMBER, b NUMBER) RETURN
NUMBER IS
    c NUMBER;
BEGIN
    c := a * a + b * b;
    RETURN c;
END;
/

-- Calling the function
-- Directly use in SQL staement
SELECT add_two(10, 20) FROM dual;
SELECT add_two(age, salary) FROM employee;
-- Call the function in another PL/BLOCK
DECLARE
    res NUMBER;
BEGIN
    res := add_two(100, 200);
    DBMS_OUTPUT.PUT_LINE(res);
END;
/

-- Name, Gender
CREATE OR REPLACE
FUNCTION wish(name VARCHAR2, gender VARCHAR2) 
RETURN VARCHAR2 IS
    res VARCHAR2(200);
BEGIN
    IF gender = 'Male' THEN
        res := 'Hi, Mr. ' || name;
    ELSE
        res := 'Hi, Ms. ' || name;
    END IF;
    RETURN res;
END;
/

SELECT wish('Pavan', 'Male') FROM dual;
SELECT wish(name, gender) FROM employee;

-- Years of Experience (MONTHS / 12)
SELECT 
    MONTHS_BETWEEN(CURRENT_DATE, DATE '2024-09-11') AS months
FROM dual; 

CREATE OR REPLACE FUNCTION
getYears(join_date DATE) RETURN NUMBER
IS
    months NUMBER;
    exp NUMBER;
BEGIN
    months := MONTHS_BETWEEN(CURRENT_DATE, join_date);
    exp := TRUNC(months/12);
    RETURN exp;
END;
/

SELECT id, name, date_of_joining,
getYears(date_of_joining) FROM employee;


-- Customers
CREATE TABLE customers(
    c_id NUMBER PRIMARY KEY,
    name VARCHAR2(50) NOT NULL
);
INSERT INTO customers VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie');
SELECT * FROm customers;
CREATE TABLE products(
    p_id NUMBER PRIMARY KEY,
    p_name VARCHAR2(50) NOT NULL,
    price NUMBER NOT NULL
);
INSERT INTO products VALUEs
(101, 'Laptop', 56000),
(102, 'Table', 8000),
(103, 'Mouse', 500);
SELECT * FROM products;

-- Junction Tables
CREATE TABLE orders(
    ord_id VARCHAR2(15) PRIMARY KEY,
    customer_id NUMBER REFERENCES customers(c_id),
    product_id NUMBER REFERENCES products(p_id),
    ord_date DATE DEFAULT CURRENT_DATE
);
-- Sequences
-- Sequences are SQL objects that helps us generate
-- numbers in Sequence
CREATE SEQUENCE my_first_seq START WITH 1 INCREMENT BY 1;
--ALTER SEQUENCE my_first_seq RESTART START WITH 1;
-- SEQ.NEXTVAL
--SELECT 'ORD-' || LPAD(my_first_seq.NEXTVAL, 5, 0) FROM dual;

CREATE OR REPLACE FUNCTION generateNewOrderId
RETURN VARCHAR2 IS
BEGIN
    RETURN 'ORD-' || LPAD(my_first_seq.NEXTVAL, 5, 0);
END;
/
-- Java / JavaScript / PHP
INSERT INTO orders(ord_id, customer_id, product_id)
VALUES
(generateNewOrderId(), 1, 102),
(generateNewOrderId(), 2, 103),
(generateNewOrderId(), 3, 101),
(generateNewOrderId(), 1, 101);
SELECT * from ORDERS;


-- Procedures in SQL
-- Procedures are intended to perform some
-- operations in the SQL, but they don't return a value
-- These are like void functions
-- Procedures can't be used in SQL queries directly
-- They must be called in Another PL/SQL block or
-- must be called with EXEC command
-- Procedures takes 2 types of parameters
-- IN parameters (inputs), OUT parameters (outputs)
-- You can use OUT parameters to store the results
CREATE OR REPLACE PROCEDURE first_procedure(a IN NUMBER)
IS
BEGIN
    FOR i IN 1..a LOOP
        DBMS_OUTPUT.PUT_LINE(i);
    END LOOP;
END;
/
SET SERVEROUTPUT ON;
-- First way, use EXEC
EXEC first_procedure(10);
-- Another PL/SQL
BEGIN
    first_procedure(100);
END;
/

CREATE OR REPLACE PROCEDURE xyz(a IN NUMBER, b OUT NUMBER)
IS
BEGIN
    b := a * a;
END;
/
DECLARE
    input NUMBER;
    output NUMBER;
BEGIN
    input := 10;
    xyz(input, output);
    DBMS_OUTPUT.PUT_LINE(output);
END;
/


-- In procedures you can execute DML statements
SELECT * FROM employee;

-- Store the queries in the form of procedures
-- Update the salary of employee
-- 
CREATE OR REPLACE PROCEDURE 
updSalary(emp_id IN NUMBER, new_salary IN NUMBER)
IS
BEGIN
    UPDATE employee SET salary = new_salary
    WHERE id = emp_id;
END;
/

SELECT * from EMPLOYEE;
EXEC updSalary(113, 65000);
EXEC updSalary(114, 50000);

-- Deleting an employee 
CREATE OR REPLACE PROCEDURE
deleteAnEmployee(emp_id IN NUMBER)
IS
BEGIN
    DELETE FROM employee WHERE id = emp_id;
END;
/
-- DROP PROCEDURE procedure_name;
EXEC deleteAnEmployee(101); -- 101 id deleted
SELECT * FROM employee WHERE id = 101;

-- Employee
-- HR higest: 80000
-- HR lowest: 35000

CREATE OR REPLACE PROCEDURE 
getMinMaxSalaries(dept_name IN VARCHAR2)
IS
    min_salary NUMBER;
    max_salary NUMBER;
BEGIN
    -- SELECT INTO
    SELECT MIN(salary), MAX(salary) INTO
    min_salary, max_salary
    FROM employee WHERE department = dept_name;
    DBMS_OUTPUT.PUT_LINE('Highest ' || dept_name || ': ' || max_salary);
    DBMS_OUTPUT.PUT_LINE('Lowest ' || dept_name || ': ' || min_salary);
END;
/

EXEC getMinMaxSalaries('HR');
EXEC getMinMaxSalaries('Testing');


CREATE OR REPLACE PROCEDURE 
getMinMaxSalaries2(dept_name IN VARCHAR2)
IS
    person_with_min_salary VARCHAR2(50);
    person_with_max_salary VARCHAR2(50);
    min_salary NUMBER;
    max_salary NUMBER;
BEGIN
    -- SELECT INTO
    SELECT MIN(salary), MAX(salary) INTO
    min_salary, max_salary
    FROM employee WHERE department = dept_name;
    DBMS_OUTPUT.PUT_LINE('Highest ' || dept_name || ': ' || max_salary);
    DBMS_OUTPUT.PUT_LINE('Lowest ' || dept_name || ': ' || min_salary);
    
    WITH cte AS (
        SELECT id, name, salary, department,
        ROW_NUMBER() OVER(ORDER BY salary DESC) AS rank
        FROM employee
        WHERE department = dept_name
    )
    SELECT name INTO person_with_max_salary
    FROM cte WHERE rank = 1;
    
    WITH cte AS (
        SELECT id, name, salary, department,
        ROW_NUMBER() OVER(ORDER BY salary) AS rank
        FROM employee
        WHERE department = dept_name
    )
    SELECT name INTO person_with_min_salary
    FROM cte WHERE rank = 1;
    
    DBMS_OUTPUT.PUT_LINE(person_with_min_salary || ' is earning minimum salary from dept: ' || dept_name || ' (' || min_salary || ')');
    DBMS_OUTPUT.PUT_LINE(person_with_max_salary || ' is earning maximum salary from dept: ' || dept_name || ' (' || max_salary || ')');
END;
/

EXEC getMinMaxSalaries2('HR');
EXEC getMinMaxSalaries2('Testing');


-- Triggers in SQL
-- Triggers are database objects that will
-- be automatically fired / triggered
-- upon different DML operations
-- Triggers can be written in such way that
-- they get fired upon INSERT / UPDATE / DELETE
-- operations
-- Triggers can be fired either BEFORE / AFTER
-- the DML operations takes place
-- BEFORE triggers for data validation
-- AFTER triggers --> Log table, Audit
-- Statement Level Trigger
-- Executes once per statment
-- ROW LEVEL Triggers
-- They execute once per each row

-- Statement Level Trigger
CREATE OR REPLACE TRIGGER
dummy_trigger
AFTER UPDATE ON employee
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('You just wrote your first trigger');
    DBMS_OUTPUT.PUT_LINE('You updated employee table');
END;
/

UPDATE employee SET salary = 100000 WHERE id = 1;
SELECT * FROM employee WHERE email IS NULL;

updatE EMPLOYEE set email = NULL
where email = 'DUMMY@EXAMPLE.COM';

-- Logging
-- Keeping track of changes
-- 1. We have an employee table
-- 2. When we UPDATE the employee
-- salary we need to keep track 
-- of the changes
-- 3. To keep salary changes
-- we create a new table
-- called as SALARY_CHANGE_LOG
CREATE TABLE salary_change_log
(
    log_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    emp_id NUMBER REFERENCES employee(id), -- FK
    old_salary NUMBER NOT NULL,
    new_salary NUMBER NOT NULL,
    updated_on DATE DEFAULT CURRENT_DATE
);

-- Trigger
-- It is going to insert a new
-- record in salary_change_log
-- table whenever the salary
-- of any employee gets update
-- in employee table
CREATE OR REPLACE TRIGGER
sal_change_trigger
AFTER UPDATE OF salary ON employee
FOR EACH ROW
BEGIN
    -- Insert a new record in 
    -- salary_change_log
    INSERT INTO salary_change_log
    (emp_id, old_salary, new_salary)
    VALUES(:NEW.id, :OLD.salary, :NEW.salary);
END;
/
SELECT * FRom employee;

UPDATE employee SET age = 37 WHERE id = 113;
SELECT * FROM salary_change_log;


UPDATE employee SET salary = 65000
WHERE id = 116;

SELECT * FROM salary_change_log;

SELECT * FROM employee
WHERE department = 'Testing';

UPDATE employee SET salary = salary + 2000
WHERE department = 'Testing'
AND salary IS NOT NULL;


-- Inserting a new invoice
-- after an order is placed by
-- a customer for a product
-- CUSTOMERS
CREATE TABLE customers(
    c_id NUMBER PRIMARY KEY,
    c_name VARCHAR2(50) NOT NULL,
    email VARCHAR2(100) NOT NULL UNIQUE
);
INSERT INTO customers
VALUES
(1, 'Alice', 'alice@gmail.com'),
(2, 'Bob', 'bob@gmail.com'),
(3, 'Charlie', 'charlie@gmail.com'),
(4, 'Diana', 'diana@gmail.com'),
(5, 'Frank', 'frank@gmail.com');

CREATE TABLE products
(
    p_id NUMBER PRIMARY KEY,
    p_name VARCHAR2(50) NOT NULL,
    price NUMBER NOT NULL
);
INSERT INTO products 
VALUES
(1, 'Laptop', 60000),
(2, 'Table', 8000),
(3, 'Mouse', 1000),
(4, 'Keyboard', 3000),
(5, 'Tablet', 36000);

SELECT * FROM products;

CREATE TABLE orders(
    ord_id NUMBER PRIMARY KEY,
    customer_id NUMBER REFERENCES customers(c_id),
    product_id NUMBER REFERENCES products(p_id),
    quantity NUMBER NOT NULL
);

CREATE TABLE invoices(
    inv_id VARCHAR2(12) PRIMARY KEY,
    -- To which order the invoice belongs
    order_id NUMBER REFERENCES orders(ord_id),
    invoice_date DATE DEFAULT CURRENT_DATE,
    total_amount NUMBER NOT NULL
);
-- Functions + Sequences
-- To generate pretty strings, we use a sequence
CREATE SEQUENCE inv_seq START WITH 1 INCREMENT BY 1;

-- Function
CREATE OR REPLACE FUNCTION
getInvoiceId RETURN VARCHAR2
IS
BEGIN
    RETURN 'INV-' || LPAD(inv_seq.NEXTVAL, 5, 0);
END;
/

-- Target:
-- Write a trigger on orders table
-- Trigger fire AFTER AN INSERT statement took place
-- on orders table
-- What is the job of trigger
-- INSERT a new record in invoices table
CREATE OR REPLACE TRIGGER
inv_generator
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    -- Body of trigger
    INSERT INTO invoices(inv_id, order_id, total_amount)
    VALUES(
        getInvoiceId(), -- getting ids from function
        :NEW.ord_id, -- fetching ord_id
        -- total_amount_calculation
        :NEW.quantity * (SELECT price FROM products
        WHERE p_id = :NEW.product_id)
    );
END;
/
INSERT INTO orders
VALUES(101, 1, 3, 10);
INSERT INTO orders
VALUES(102, 3, 4, 5);
INSERT INTO orders
VALUES(103, 5, 1, 2);
INSERT INTO orders
VALUES(104, 2, 5, 10);
SELECT * FROM orders;
SELECT * FROM invoices;




