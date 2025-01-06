--Alter Operation

--Part � A:
--Use Deposit table of lab-1.
--From the above given tables perform the following queries (ALTER Operation):
--1. Add two more columns City VARCHAR (20) and Pincode INT.
ALTER TABLE DEPOSIT ADD CITY VARCHAR(50), PINCODE INT
--2. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).
ALTER TABLE DEPOSIT ALTER COLUMN CNAME VARCHAR(35)
--3. Change the data type DECIMAL to INT in amount Column.
ALTER TABLE DEPOSIT ALTER COLUMN AMOUNT INT
--4. Rename Column ActNo to ANO.
EXEC SP_RENAME 'DEPOSIT.ACTNO', 'ANO'
--5. Delete Column City from the DEPOSIT table.
ALTER TABLE DEPOSIT DROP COLUMN CITY
--6. Change name of table DEPOSIT to DEPOSIT_DETAIL.
EXEC SP_RENAME 'DEPOSIT','DEPOSIT_DETAIL'
SELECT * FROM DEPOSIT_DETAIL

--Part � B:
--1. Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.
EXEC SP_RENAME 'DEPOSIT_DETAIL.ADATE','AOPENDATE'
--2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table.
ALTER TABLE DEPOSIT_DETAIL DROP COLUMN AOPENDATE
--3. Rename Column CNAME to CustomerName.
EXEC SP_RENAME 'DEPOSIT_DETAIL.CNAME','CustomerName'

--Part � C:
CREATE TABLE STUDENT_DETAILS(
	ENROLLMENT_NO VARCHAR(20),
	NAME VARCHAR(25),
	CPI DECIMAL(5,2),
	BIRTHDATE DATETIME
);
--1. Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null).
ALTER TABLE STUDENT_DETAILS ADD CITY VARCHAR(20) NOT NULL DEFAULT 'RAJKOT', BACKLOG INT
--2. Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35).
ALTER TABLE STUDENT_DETAILS ALTER COLUMN NAME VARCHAR(35)
--3. Change the data type DECIMAL to INT in CPI Column.
ALTER TABLE STUDENT_DETAILS ALTER COLUMN CPI INT
--4. Rename Column Enrollment_No to ENO.
EXEC SP_RENAME 'STUDENT_DETAILS.ENROLLMENT_NO','ENO'
--5. Delete Column City from the student_detail table.
ALTER TABLE STUDENT_DETAILS DROP COLUMN CITY
--6. Change name of table student_detail to STUDENT_MASTER.
EXEC SP_RENAME 'STUDENT_DETAILS','STUDENT_MASTER'



--DELETE, Truncate, Drop Operation

--Part � A:
--Use Deposit_Detail table (Altered table of DEPOSIT)
--1. Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000.
DELETE FROM DEPOSIT_DETAIL WHERE AMOUNT>=4000
--2. Delete all the accounts CHANDI BRANCH.
DELETE FROM DEPOSIT_DETAIL WHERE BNAME='CHANDI BRANCH'
--3. Delete all the accounts having account number (ANO) is greater than 105.
DELETE FROM DEPOSIT_DETAIL WHERE ANO>150
--4. Delete all the records of Deposit_Detail table. (Use Truncate)
TRUNCATE TABLE DEPOSIT_DETAIL
--5. Remove Deposit_Detail table. (Use Drop)
DROP TABLE DEPOSIT_DETAIL

--Part � B:
--Create following table using query according to the definition.
CREATE TABLE EMPLOYEE_MASTER(
	EMPNO INT,
	EMPNAME VARCHAR(25),
	JOININGDATE DATETIME,
	SALARY DECIMAL (8,2),
	CITY VARCHAR(20)
);
INSERT INTO EMPLOYEE_MASTER VALUES(101, 'KEYUR', '2002-1-5', 12000.00, 'RAJKOT')
INSERT INTO EMPLOYEE_MASTER VALUES(102, 'HARDIK', '2004-2-14', 14000.00, 'AHMEDABAD')
INSERT INTO EMPLOYEE_MASTER VALUES(103, 'KAJAL', '2006-3-14', 12000.00, 'BARODA')
INSERT INTO EMPLOYEE_MASTER VALUES(104, 'BHOOMI', '2005-6-23', 12500.00, 'AHMEDABAD')
INSERT INTO EMPLOYEE_MASTER VALUES(105, 'HARMIT', '2004-2-15', 14000.00, 'RAJKOT')
INSERT INTO EMPLOYEE_MASTER VALUES(106, 'MITESH', '2001-9-25', 5000.00, 'JAMNAGAR')
INSERT INTO EMPLOYEE_MASTER VALUES(107, 'MEERA', NULL, 7000.00, 'MORBI')
INSERT INTO EMPLOYEE_MASTER VALUES(108, 'KISHAN', '2003-2-6', 10000.00, NULL)

--From the above given tables perform the following queries (DELETE Operation):
--1. Delete all the records of Employee_MASTER table having salary greater than and equals to 14000.
DELETE FROM EMPLOYEE_MASTER WHERE SALARY>=14000
--2. Delete all the Employees who belongs to �RAJKOT� city.
DELETE FROM EMPLOYEE_MASTER WHERE CITY='RAJKOT'
--3. Delete all the Employees who joined after 1-1-2007.
DELETE FROM EMPLOYEE_MASTER WHERE JOININGDATE>'2007-1-1'
--4. Delete the records of Employees whose joining date is null and Name is not null.
DELETE FROM EMPLOYEE_MASTER WHERE JOININGDATE IS NULL AND EMPNAME<>NULL
--5. Delete the records of Employees whose salary is 50% of 20000.
DELETE FROM EMPLOYEE_MASTER WHERE SALARY=10000
--6. Delete the records of Employees whose City Name is not empty.
DELETE FROM EMPLOYEE_MASTER WHERE CITY<>NULL
--7. Delete all the records of Employee_MASTER table. (Use Truncate)
TRUNCATE TABLE EMPLOYEE_MASTER
--8. Remove Employee_MASTER table. (Use Drop)
DROP TABLE EMPLOYEE_MASTER

--Part � C:
--1. Summarize Delete, Truncate and Drop