CREATE TABLE JOB (
  ID INT PRIMARY KEY,
  NAME VARCHAR(255),
  TITLE VARCHAR(255),
  SALARY DECIMAL(10,2),
  BONUS DECIMAL(10,2),
  INJECTED_DATE DATE
);
INSERT INTO JOB (ID, NAME, TITLE, SALARY, BONUS, INJECTED_DATE) 
VALUES 
(1, 'Job 1', 'Developer', 75000.00, 5000.00, '2022-01-01'),
(2, 'Job 2', 'Manager', 100000.00, 10000.00, '2022-01-02'),
(3, 'Job 3', 'Salesperson', 50000.00, NULL, '2022-01-03'),
(4, 'Job 4', 'Designer', 90000.00, 7500.00, '2022-01-04');
Select * from job;
Select sum(salary) from JOB;
SELECT AVG(SALARY) AS AVG_SALARY
FROM JOB
WHERE BONUS IS NOT NULL;
SELECT COUNT(*) AS NUM_JOBS
FROM JOB
WHERE BONUS IS NULL;
SELECT NAME, TITLE, 
       CASE 
         WHEN SALARY > 100000 THEN 'High'
         WHEN SALARY >= 50000 AND SALARY <= 100000 THEN 'Medium'
         ELSE 'Low'
       END AS SALARY_MESSAGE
FROM JOB;
SELECT NAME, TITLE, SALARY, CEIL(SALARY) AS CEIL_SALARY, FLOOR(SALARY) AS FLOOR_SALARY
FROM JOB;
SELECT AVG(BONUS) AS AVG_BONUS
FROM JOB;

SELECT COUNT(DISTINCT TITLE) AS NUM_DISTINCT_TITLES
FROM JOB;

