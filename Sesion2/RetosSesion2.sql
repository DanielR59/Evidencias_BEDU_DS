-- Reto 1 --
USE tienda;
DESCRIBE articulo;

SELECT * FROM articulo 
WHERE nombre LIKE "%pasta%";

SELECT * FROM articulo 
WHERE nombre LIKE "%Cannelloni%";

SELECT * FROM articulo 
WHERE nombre LIKE "%-%";

-- Reto 2 --

DESCRIBE puesto;

SELECT AVG(salario) 
FROM puesto;

SELECT COUNT(*) 
FROM puesto WHERE nombre LIKE "%pasta%";

SELECT MIN(salario), MAX(salario) 
FROM puesto;



SELECT * 
FROM puesto 
ORDER BY id_puesto DESC LIMIT 5;
SELECT SUM(salario) 
FROM puesto
WHERE id_puesto > 995;


-- Reto 3 --
DESCRIBE puesto;
SELECT nombre, COUNT(nombre)
FROM puesto
GROUP BY nombre;

SELECT nombre, SUM(salario)
FROM puesto
GROUP BY nombre;

DESCRIBE venta;

SELECT id_empleado, COUNT(clave) 
FROM venta
GROUP BY id_empleado;

SELECT id_articulo, COUNT(id_venta)
FROM venta
GROUP BY id_articulo;

-- Reto 4 --

DESCRIBE empleado;
DESCRIBE puesto;

SELECT nombre 
FROM empleado 
WHERE id_puesto IN 
    (SELECT id_puesto 
    FROM puesto 
    WHERE salario < 10000);

DESCRIBE empleado;
DESCRIBE venta;
DESCRIBE puesto;

SELECT id_empleado, max(cantidad), min(cantidad)
FROM (
    SELECT id_articulo, id_empleado,count(*) as cantidad
    FROM venta
    GROUP BY id_articulo, id_empleado
) as algo
GROUP BY id_empleado;




SELECT nombre,  (SELECT nombre FROM puesto WHERE puesto.id_puesto = empleado.id_puesto ) as puesto
FROM empleado; 


