USE tienda;
-- Reto 1 --
DESCRIBE empleado;
DESCRIBE venta;

SELECT nombre, id_venta 
FROM empleado
JOIN venta 
ON empleado.id_empleado = venta.id_empleado;

DESCRIBE venta;
DESCRIBE articulo;

SELECT nombre
FROM articulo
JOIN venta 
ON articulo.id_articulo = venta.id_articulo;


SELECT clave,id_venta, precio,iva,(precio+iva)
FROM articulo
JOIN venta 
ON articulo.id_articulo = venta.id_articulo;

-- Reto 2 --
DESCRIBE empleado;
DESCRIBE puesto;

CREATE VIEW empleados_364 AS (
SELECT puesto.nombre AS puesto, empleado.nombre
FROM empleado
JOIN puesto
ON empleado.id_puesto = puesto.id_puesto
);
SELECT * 
FROM empleados_364
WHERE nombre LIKE "man%"; 


DESCRIBE empleado;
DESCRIBE venta;
DESCRIBE articulo;
CREATE VIEW articulosPorEmpleado_364 AS
(SELECT empleado.nombre AS empleado,articulo.nombre as articulo, venta.clave AS venta
FROM venta
JOIN empleado
ON venta.id_empleado = empleado.id_empleado
JOIN articulo
ON venta.id_articulo = articulo.id_articulo
ORDER BY empleado);
SELECT * 
FROM articulosPorEmpleado_364;


DESCRIBE puesto;
DESCRIBE venta;
DESCRIBE empleado;

CREATE VIEW VentasPorPuesto_364 AS
( SELECT  puesto.nombre as Puesto,count(clave) as NumeroDeVentas
FROM venta
JOIN empleado
ON venta.id_empleado = empleado.id_empleado
JOIN puesto
ON empleado.id_puesto = puesto.id_puesto 
GROUP BY puesto.nombre
);

SELECT * 
FROM VentasPorPuesto_364
ORDER BY NumeroDeVentas DESC
LIMIT 1;







