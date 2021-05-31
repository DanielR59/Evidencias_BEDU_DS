-- Reto 1 --
SHOW databases;
USE tienda;
SHOW tables;

DESCRIBE articulo
DESCRIBE venta
DESCRIBE puesto

-- Reto 2 -- 

SELECT nombre 
FROM empleado 
WHERE id_puesto =4;

DESCRIBE puesto;
SELECT id_puesto 
FROM puesto
WHERE salario > 10000;

DESCRIBE articulo;
SELECT id_articulo 
FROM articulo 
WHERE precio > 1000 
AND iva>100;

DESCRIBE venta;
SELECT id_venta 
FROM venta
WHERE id_articulo IN (135,963) 
AND id_empleado IN (835,369);


-- Reto 3--
SELECT * 
FROM puesto 
ORDER BY salario DESC 
LIMIT 5;
