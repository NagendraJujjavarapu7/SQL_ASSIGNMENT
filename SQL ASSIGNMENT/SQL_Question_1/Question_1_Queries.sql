-- Question 1 - 
-- Write the queries for the following tasks - 
-- ***Create a database name - “Employee”.
-- ***Create a table name - “Employee Details”.
-- ***Insert 10 details in the “Employee Details” table  - 
-- Emp_id
-- Emp_name
-- Job_name
-- Manager_id
-- Hire_date
-- Salary
-- Dep_id
-- Sample Output - 
-- emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | dep_id
-- --------+----------+-----------+------------+------------+---------+----------+---------+-----------
-- 68319 |   Mr. Singh  |   PRESIDENT |      68319      | 1991-11-18 | 6000 |  1001
-- ****Find the salaries of all the employees from the “Employee Details” table.
-- ****Find the unique designations of the employees from the table.

--querie1
CREATE DATABASE Employee   
--querie2
CREATE TABLE Employee_Details(
	Emp_id INT NOT NULL PRIMARY KEY,
    Emp_Name VARCHAR(50) NOT NULL,
    Job_Name VARCHAR(50) NOT NULL,     
    Manager_Id INT NOT NULL,
    Hire_Date DATE NOT NULL,
    Salary INT NOT NULL,
    Dept_id INT NOT NULL
);
--querie3
INSERT INTO Employee_Details(Emp_id,Emp_Name,JOB_Name,Manager_Id,Hire_Date,Salary,Dept_id) 
VALUES (68319,"Mr.Nagendra","President",68319,"2001-10-30",200000,1001),(68320,"Mr.Srivastava","Vice-President",68320,"2000-12-01",165000,1002),
(68321,"Mr.Pradeep Loukya","Associate Lead",68321,"2000-09-10",90000,1003),(68322,"Mr.Sai Sekhar","Manager",68322,"2001-01-25",86000,1004),
(68323,"Ms.Jaiti Sharma","Asst.Manager",68323,"2002-01-28",78500,1005),(68324,"Ms.Meena Kumari","Team Leader",68324,"2002-05-17",71256,1006),
(68325,"Mr.Raja Sekharan","Team Co-ordinator",68325,"2002-11-25",68000,1007),(68326,"Ms.Meenakshi Subramani","Team Member",68326,"2003-06-10",60000,1008),
(68327,"Mr.Lakshya Sharma","Team Member",59600,"2004-11-19",60000,1009),(68328,"Ms.Lakshmi Agarwal","Technical Support Head",68328,"2006-12-09",53602,1010);
--querie4
SELECT Emp_Name, SALARY FROM Employee_Details;
--querie5
SELECT DISTINCT Job_Name FROM Employee_Details;
