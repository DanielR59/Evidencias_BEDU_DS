-- Sesion 2 --
USE classicmodels;
-- Ejercicio 1 --
DESCRIBE employees;
SELECT employeeNumber, lastName, firstName
FROM employees 
WHERE firstName LIKE "A%";

-- Ejercicio 2 --
SELECT employeeNumber, lastName, firstName 
FROM employees 
WHERE lastName LIKE "%on";

-- Ejercicio 3 --
SELECT employeeNumber, lastName, firstName 
FROM employees 
WHERE firstName LIKE "%on%";

-- Ejercicio 4 --
SELECT employeeNumber, lastName, firstName 
FROM employees 
WHERE firstName LIKE "G%" AND CHAR_LENGTH(firstName) = 6;

-- Ejercicio 5 --
SELECT employeeNumber, lastName, firstName 
FROM employees 
WHERE firstName NOT LIKE "B%";

-- Ejercicio 6 --
DESCRIBE products;
SELECT productCode,productName 
FROM products 
WHERE productCode LIKE "%\_20%";

-- Ejercicio 7 --
DESCRIBE orderdetails;
SELECT orderNumber, sum(priceEach) AS total 
FROM orderdetails 
GROUP BY orderNumber;

-- Ejercicio 8 --
DESCRIBE orders;
SELECT year(orderDate) as Anio,count(*)  
FROM orders 
GROUP BY Anio;

-- Ejercicio 9 --
DESCRIBE offices;
DESCRIBE employees;

SELECT lastName,firstName 
FROM employees 
WHERE officeCode IN (SELECT officeCode
					FROM offices
					WHERE country = "USA");

-- Ejercicio 10 --
DESCRIBE payments;

SELECT customerNumber,checkNumber, amount
FROM payments
WHERE amount = (SELECT MAX(amount)
				FROM payments);


-- Ejercicio 11 --
SELECT customerNumber,checkNumber, amount
FROM payments
WHERE amount > (SELECT AVG(amount) 
				FROM payments);

-- Ejercicio 12 --
DESCRIBE customers;
DESCRIBE orders;
SELECT  customerName
FROM customers
WHERE customerNumber NOT IN(
							SELECT customerNumber 
							FROM orders);

-- Ejercicio 13 --
DESCRIBE orderdetails;
SELECT MAX(quantityOrdered), MIN(quantityOrdered), AVG(quantityOrdered)
FROM orderdetails;

-- Ejercicio 14 --
DESCRIBE orders;

SELECT status,count(*)
FROM orders
GROUP BY status;


