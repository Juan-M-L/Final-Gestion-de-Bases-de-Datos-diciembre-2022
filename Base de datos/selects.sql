SELECT * FROM sucursal;
SELECT * FROM cliente;
SELECT * FROM empleado;
SELECT * FROM aeronave;
SELECT * FROM vuelo;
SELECT * FROM pasaje;

SELECT * FROM pasaje
CROSS JOIN vuelo ON vuelo.numero = pasaje.vuelo_numero;

/*Mostrar los clientes nacidos en Argentina entre el año 1980 y el año 2001*/
SELECT * FROM cliente
WHERE nacionalidad = 'Argentina' AND fecha_nacimiento BETWEEN '1980-01-01' AND '2001-01-01';

/*Mostrar la recaudación total de cierta sucursal durante el último año*/ 

/*Intenté hacer un procedure, pero no tuve tiempo de hacerlo funcionar o de averiguar si era la mejor manera*/
DROP PROCEDURE precio_dolar;

DELIMITER $$

CREATE PROCEDURE precio_dolar(
	IN sucursal INT,
	IN pesos NUMERIC(8,2),
    OUT dolares NUMERIC(8,2))
BEGIN
	SELECT id_sucursal, precio
    INTO sucursal, pesos
    FROM pasaje
    CROSS JOIN vuelo ON vuelo.numero = pasaje.vuelo_numero
    WHERE vuelo.origen LIKE '%Argentina'
    AND sucursal = 1
    AND vuelo.fecha BETWEEN '2022-01-01' AND '2022-12-31';
	IF TRUE THEN
		SET pesos = pesos / 172.05;
	END IF;
END$$

DELIMITER ;

/*Problema; Si hago esto, suma todo porque no distingue entre pesos y dólares*/
SELECT pasaje.id_sucursal, SUM(precio) FROM pasaje
CROSS JOIN vuelo ON vuelo.numero = pasaje.vuelo_numero
WHERE pasaje.id_sucursal = 1 
AND vuelo.fecha BETWEEN '2022-01-01' AND '2022-12-31';


/*PROBLEMA: Las sucursales pueden marcar que se hicieron vuelos desde ubicaciones en las que la sucursal NO está ubicada*/