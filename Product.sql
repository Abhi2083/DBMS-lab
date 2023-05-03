CREATE TABLE PRODUCT (
  ID INT PRIMARY KEY,
  NAME VARCHAR(255),
  DESCRIPTION VARCHAR(1000),
  STATUS VARCHAR(50),
  CREATED_DATE DATE,
  CREATED_BY VARCHAR(255),
  LAST_MODIFIED_DATE DATE,
  LAST_MODIFIED_BY VARCHAR(255),
  COST DECIMAL(10,2),
  INJECTED_DATE DATE
);

INSERT INTO PRODUCT (ID, NAME, DESCRIPTION, STATUS, CREATED_DATE, CREATED_BY, LAST_MODIFIED_DATE, LAST_MODIFIED_BY, COST, INJECTED_DATE) 
VALUES 
(1, 'Kurkure', 'This is product 1 description', 'Active', '2022-01-01', 'Varsha fast food', '2022-02-01', 'Sohan', 100.00, '2022-01-01'),
(2, 'Chips', 'This is product 2 description', 'Inactive', '2022-01-02', 'Varsha fast food', '2022-02-02', 'Rajiv', 200.00, '2022-01-02'),
(3, 'Lays', 'This is product 3 description', 'Active', '2022-01-03', 'Rishi fast food', '2022-02-03', 'Sohan', 300.00, '2022-01-03'),
(4, 'Bingo', 'This is product 4 description', 'Active', '2022-01-04', 'Vishal fast food', '2022-02-04', 'Yami', 400.00, '2022-01-04');

select * from PRODUCT;
select max(cost) from product where CREATED_BY='Varsha fast food';
select min(cost) from product where CREATED_BY='Varsha fast food';
select sum(cost) from product where CREATED_BY='Varsha fast food';
select sum(cost) from product where LAST_MODIFIED_BY='Sohan';
select avg(cost) from product where LAST_MODIFIED_BY='Sohan';
select count(id) from product where CREATED_BY='Varsha fast food' or CREATED_BY='Rishi fast food' or CREATED_BY='Vishal fast food';
SELECT AVG(COST) AS AVG_COST, MAX(COST) AS MAX_COST, MIN(COST) AS MIN_COST
FROM PRODUCT;
SELECT NAME, MONTH(CREATED_DATE) AS CREATED_MONTH, YEAR(CREATED_DATE) AS CREATED_YEAR, MONTH(LAST_MODIFIED_DATE) AS MODIFIED_MONTH, YEAR(LAST_MODIFIED_DATE) AS MODIFIED_YEAR
FROM PRODUCT;
SELECT *
FROM PRODUCT
WHERE MONTH(CREATED_DATE) = 1;
SELECT *
FROM PRODUCT
WHERE YEAR(CREATED_DATE) = YEAR(CURRENT_DATE());

SELECT POWER(2, 10) AS POWER_RESULT;

SELECT name, description, DATE_FORMAT(created_date, '%d %M %Y') AS formatted_date
FROM product;
SELECT name, description
FROM product
ORDER BY LENGTH(description) ASC;
SELECT LOWER(name) AS name_lowercase, UPPER(description) AS description_uppercase
FROM product;

SELECT CONCAT(name, ' - ', description, ' - ', created_date, ' - ', last_modified_date) AS product_info
FROM product
WHERE status = 'active';


