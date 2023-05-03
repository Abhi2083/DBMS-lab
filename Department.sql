CREATE TABLE dept1449(
DeptId INT NOT NULL PRIMARY KEY,
DeptName VARCHAR(20) NOT NULL,
Location VARCHAR(20) NOT NULL,
EmployeeId INT NOT NULL
);
INSERT INTO dept1449 values(1002,'Networking','bbsr',01);
INSERT INTO dept1449 values(1008,'HR','ddu',02);
SELECT DeptName,Location FROM dept1449;

SELECT DISTINCT Location FROM dept1449;

SELECT * from employee1449,dept1449;