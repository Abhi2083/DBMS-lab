CREATE DATABASE continuousEvaluation;
DROP TABLE IF EXISTS employee1449;
CREATE TABLE employee1449(
EmployeeId INT PRIMARY KEY,
Lname VARCHAR(20) NOT NULL,
Fname VARCHAR(20) NOT NULL,
PositionId INT NOT NULL,
Supervisor VARCHAR(20) NOT NULL,
HireDate DATE NOT NULL,
Salary BIGINT NOT NULL, 
Commission INT ,
DeptId INT NOT NULL,
QualId VARCHAR(20) NOT NULL
);

INSERT INTO employee1449(EmployeeId, Lname, Fname, PositionId, Supervisor, HireDate, Salary, Commission, DeptId, QualId)
VALUES (01,'Raj','Aniket',18,'Harish','2017-07-12',500000,0,1002,'Developer');

INSERT INTO employee1449(EmployeeId, Lname, Fname, PositionId, Supervisor, HireDate, Salary, Commission, DeptId, QualId)
VALUES (02,'Sah','Rajiv',19,'Sohan','2019-09-02',7000000,500,1008,'Coder');

SELECT Lname || ', ' || Fname AS "Name", Salary AS "Salary" FROM employee1449;
SELECT * FROM employee1449 WHERE Commission = 0;
SELECT Lname||'xx'||Fname FROM employee1449;
