-- SQL Introduction
   -- A query Language is kind of programming language & it is the standard language
   -- for interacting with relational Database.

-- Using SQL we can mange data in RDBMS
    -- 1.Create new Database & Tables
    -- 2.insert Records
    -- 3.Update Records
    -- 4.Delete Records
    -- 5.Retreive/Read Records
    
    
-- Realational DataBase
	  -- * A Relational Database organizes data into tables which can be linked--or related--
      -- based on data common to each
      -- * A table has records(rows) and fields(columns)
      
 -- A FOREIGN KEY:  is a field (or collection of fields) in one table, that refers to 
 -- the PRIMARY KEY in another table.
 
 -- RELATIONAL DATABASE MANAGEMENT SYSYEM(RDBMS)
   -- it is a program that allows yo to crate,update,and manipulate a relational database.
   -- Most relational datbase management system use Sql language to access the database.
   -- eg: MySQL , PostgreSQL , ORACLE DATABASE , Microsft SQL server , SQLite
   
-- Datatypes
  -- VARCHAR(size): variable length string(letter,number,special characters)
  -- INT :Integer
  -- FLOAT(size,d)
  -- DOUBLE(size,d) : Floating point number(large number)
  -- BOOLEAN : True(non-Zero) or False(Zero).
  -- DATE :date(yyyy-mm-dd)

CREATE DATABASE db1;
USE db1;
CREATE TABLE student(
student_id VARCHAR(10) NOT NULL,
student_name VARCHAR(100) NOT NULL,
Age INT NOT NULL,
place VARCHAR(100) NOT NULL,
PRIMARY KEY (student_id)
);

SELECT * FROM student;

-- INSERT a VALUES
INSERT INTO student(student_id,student_name,Age,place)
VALUES('S1','Rahul',23,'Kasaragod');

SELECT * FROM student;

INSERT INTO student(student_id,student_name,Age,place)
VALUES('S2','Nasim',22,'Vettichira'),
      ('S3','Sadin',22,'Kottakkal'),
      ('S4','Rohith',22,'Vettichira'),
      ('S5','Abhishek',22,'Chenguvetty'),
      ('S6','KP',22,'Valanchery'),
      ('S7','Nandu',22,'Kannur'),
      ('S8','Rahul',22,'Kasargod'),
      ('S9','Sourav',22,'Vattappara'),
      ('S10','Fajr',22,'Thalassery');

SELECT * FROM student;

-- UPDATE keyword

UPDATE student
SET place='Kanchippura'
WHERE student_id='S1';

UPDATE student
SET place='Kanchippura'
WHERE student_id='S6';

SELECT * FROM student;

UPDATE student
SET Age=24
WHERE student_id='S2';

UPDATE student
SET Age=19
WHERE student_id='S9';

UPDATE student
SET Age=18
WHERE student_id='S4';

SELECT * FROM student;

-- COPY Table -- (LIKE keyword)

CREATE TABLE student_1 LIKE student;
INSERT student_1 SELECT*FROM student;

SELECT * FROM student_1;

-- DELETE records

DELETE FROM student_1
WHERE student_id='S2';

SELECT * FROM student_1;

-- SELECT

SELECT * FROM student_1;
SELECT student_id FROM student_1;
SELECT student_id,place FROM student_1;

-- WHERE CLAUSE

SELECT * FROM student WHERE place='Kannur';
SELECT * FROM student WHERE Age<21;
SELECT * FROM student WHERE Age>21;

-- DISTINCT CLAUSE : remove Duplicate record and add unique VALUES

SELECT * FROM student;

SELECT DISTINCT place FROM student;
SELECT DISTINCT Age FROM student;

-- FROM clause

SELECT student_name FROM student;

-- ORDER BY clause

SELECT *FROM student ORDER BY student_name ASC;
SELECT *FROM student ORDER BY student_name DESC;
 SELECT *FROM student ORDER BY Age ASC;
SELECT * FROM student ORDER BY AGE DESC;
-- ADD or MODIFY (ALTER and MODIFY)

SELECT *FROM student_1;
ALTER TABLE student_1 ADD contact INT NOT NULL;
SELECT *FROM student_1;

ALTER TABLE student_1 MODIFY contact VARCHAR(10) NULL;
SELECT *FROM student_1;

-- Rename and DELETE Columns

ALTER TABLE student_1 RENAME COLUMN contact TO student_contact;
SELECT *FROM student_1;

ALTER TABLE student_1 DROP COLUMN student_contact;
SELECT *FROM student_1;

-- TRUNCATE vs DROP
   -- TRUNCATE for Deleing Records
   -- DROP for deleting entire table
   
TRUNCATE student_1;
SELECT *FROM student_1;

DROP table student_1;
SELECT *FROM student_1;

-- First and Last Records

SELECT *FROM student ORDER BY student_id ASC LIMIT 2;
SELECT *FROM student ORDER BY student_id DESC LIMIT 2;

-- Random Records

SELECT *FROM student ORDER BY rand() LIMIT 1;

-- Select AS Statement (changing fields temperory)

SELECT student_name AS 'first_name' ,
Age AS 'student_Age',
place AS 'student_Place'
 FROM student;
select * from student;

 








