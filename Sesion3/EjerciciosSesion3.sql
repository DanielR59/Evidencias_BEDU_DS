USE classicmodels;
-- Ejercicio 1 --
DESCRIBE orderdetails;
DESCRIBE orders;
SELECT orders.orderNumber, sum(quantityOrdered)
FROM orders
JOIN orderdetails
ON orders.orderNumber = orderdetails.orderNumber
GROUP BY orders.orderNumber;

-- Ejercicio 2 --
SELECT orders.orderNumber, status, priceEach
FROM orders
JOIN orderdetails
ON orders.orderNumber = orderdetails.orderNumber;
-- Ejercicio 3 --
SELECT orders.orderNumber, orderDate, orderLineNumber,productCode, quantityOrdered, priceEach
FROM orders
JOIN orderdetails
ON orders.orderNumber = orderdetails.orderNumber;

-- Ejercicio 4 --
DESCRIBE orderdetails;
DESCRIBE products;
SELECT orderdetails.orderNumber,orderdetails.productCode, MSRP, priceEach
FROM orderdetails
JOIN products
ON orderdetails.productCode = products.productCode;
----------------------------------------------------------------
-- Ejercicio 5 --
DESCRIBE customers;
DESCRIBE orders;
SELECT customers.customerNumber,customerName,orderNumber,status
FROM customers
JOIN orders
ON customers.customerNumber = orders.customerNumber;

SELECT customers.customerNumber,customerName,orderNumber,status
FROM customers
LEFT JOIN orders
ON customers.customerNumber = orders.customerNumber;

-- El left join, a diferencia del join el cual unicamente nos devuelve los clientes
-- que hayan realizado alguna compra, nos devuelve los datos solicitados de los clientes sin importar que hayan 
-- realizado alguna compra o no



-- Ejercicio 6 --
DESCRIBE customers;
DESCRIBE orders;

SELECT customerName
FROM customers
LEFT JOIN orders
ON customers.customerNumber = orders.customerNumber
WHERE  orders.customerNumber IS NULL;

-- Ejercicio 7 --
DESCRIBE employees;
DESCRIBE customers;
DESCRIBE orderdetails;
SELECT lastName,firstName,customerName
FROM employees
LEFT JOIN customers 
ON employees.employeeNumber = customers.salesRepEmployeeNumber;

------------------------------------------------------------------

-- Ejercicio 8 --
-- 5 --
SELECT customers.customerNumber,customerName,orderNumber,status
FROM customers
RIGHT JOIN orders
ON customers.customerNumber = orders.customerNumber;
-- La consulta original nos regresa los clientes que han y no han realizado alguna orden (LEFT)
-- En este caso nos da el mismo resultado de realizarlo con un JOIN dado que no hay ordenes que no tengan un cliente asociado (RIGHT)

-- 6 --
SELECT customerName
FROM customers
RIGHT JOIN orders
ON customers.customerNumber = orders.customerNumber
WHERE  orders.customerNumber IS NULL;
-- La consulta original regresa a los clientes que no han realizado alguna orden (LEFT)
-- Dado que todas las ordenes han sido realizadas por algun cliente, esta consulta no nos devuelve ningun registro (RIGHT)
-- 7 --
SELECT lastName,firstName,customerName
FROM employees
RIGHT JOIN customers 
ON employees.employeeNumber = customers.salesRepEmployeeNumber;
-- La consulta original regresa los empleados con algun cliente asociado y tambien a los que no (LEFT)
-- Esta consulta nos regresa tanto los clientes asociados a un empleado como los clientes que no tengan asociado uno (RIGHT)
----------------------------------------------------------------------------
-- Ejercicio 9 --


CREATE VIEW ejercicio2_364 AS (
    SELECT orders.orderNumber, status, priceEach
    FROM orders
    JOIN orderdetails
    ON orders.orderNumber = orderdetails.orderNumber
);

SELECT *
FROM ejercicio2_364;


CREATE VIEW ejercicio6_364 AS (
    SELECT customerName
    FROM customers
    LEFT JOIN orders
    ON customers.customerNumber = orders.customerNumber
    WHERE  orders.customerNumber IS NULL
);

SELECT count(*)
FROM ejercicio6_364;



CREATE VIEW ejercicio7_364 AS (
	SELECT lastName,firstName,customerName
	FROM employees
	LEFT JOIN customers 
	ON employees.employeeNumber = customers.salesRepEmployeeNumber
);

SELECT concat(lastName,firstName) as empleado,count(customerName) as numDeClientes
FROM ejercicio7_364
GROUP BY empleado;




