USE LIBRARY;

SELECT * FROM book;
SELECT * FROM employee;

USE LIBRARY;

INSERT INTO BOOK (book_id, book_name, author_name, edition)        
VALUES
(101, 'eco', 'rs', 2021),
(102, 'history', 'rds', 2021),
(103, 'geo', 'gaur', 2021),
(104, 'socio', 'n sangwan', 2021),
(105, 'polity', 'laxmikanth', 2021);

ALTER TABLE employee                                     /*modifications*/
MODIFY emp_email_id varchar(20);

INSERT INTO EMPLOYEE (Emp_id, emp_name, designation, emp_phone_no, emp_email_id)
VALUES
(2121, 'Harish', 'clerk', 7757212154, 'abc@gmail.com'),
(2122, 'Manish', 'dean', 1254545252, 'asd@gmail.com'),
(2123, 'Mehul', 'principal', 2022154851, 'qwe@gmail.com'),
(2124, 'Vishal', 'prof.', 2254536021, 'azc@gmail.com'),
(2125, 'Viraj', 'prof.', 2054821621, 'tyu@gmail.com');

 /*just below varchar size incresed to 30 from 20 as thrown error while updating designation*/
ALTER TABLE EMPLOYEE                                  
MODIFY designation VARCHAR(30);

UPDATE EMPLOYEE                                /*use of where command along with update*/
SET designation = 'vice principal'
WHERE Emp_id = 2123;



set sql_safe_updates=0;  /*safe mode off in sql*/

DELETE FROM EMPLOYEE                  /*use of delete command*/
WHERE emp_name = 'Viraj';

UPDATE EMPLOYEE                            /*null handling*/
SET emp_email_id = NULL
WHERE Emp_id = 2121;

/*DAY 3 TASKS */

/* 1.Use SELECT * and specific columns*/
USE LIBRARY;
SELECT * FROM EMPLOYEE;

/*Applying WHERE, AND, OR, LIKE, BETWEEN*/

SELECT * FROM EMPLOYEE
WHERE designation = 'prof.';

SELECT * FROM EMPLOYEE
WHERE designation = 'CLERK' AND emp_phone_no LIKE '77%';

/*emp_phone_no LIKE '22%' -->>  Meaning: This filters phone numbers that start with '22'.
LIKE '22%' means:
'22' is the starting pattern.
'%' is a wildcard character meaning “zero or more characters after this.”
Example: 2254536021 would match, but 2054821621 would not.
*/

SELECT * FROM EMPLOYEE
WHERE designation = 'clerk' OR designation = 'dean';  /*USE OF OR*/

SELECT * FROM BOOK
WHERE author_name LIKE 'r%';   /*BOOK NAME STARTING WITH r */

SELECT * FROM BOOK
WHERE edition BETWEEN 2020 AND 2022;  /*USE OF BETWEEN ,AND, WHERE ETC..*/


SELECT * FROM BOOK
ORDER BY edition ASC;   /*USE OF ORDER BY*/

SELECT * FROM EMPLOYEE
ORDER BY emp_name ASC;

SELECT * FROM EMPLOYEE
ORDER BY designation DESC;

SELECT * FROM BOOK
LIMIT 3;                  /*USE OF LIMIT */

SELECT * FROM EMPLOYEE
ORDER BY emp_name
LIMIT 2;             /*USE OF LIMIT WITH ORDER BY*/




