INSERT INTO sucursal (nombre, ubicacion)
VALUES
    ('AeroExpress New York', 'New York, NY'),
    ('AeroExpress Los Angeles', 'Los Angeles, CA'),
    ('AeroExpress Chicago', 'Chicago, IL'),
    ('AeroExpress Houston', 'Houston, TX'),
    ('AeroExpress Philadelphia', 'Philadelphia, PA'),
    ('AeroExpress Phoenix', 'Phoenix, AZ'),
    ('AeroExpress San Antonio', 'San Antonio, TX'),
    ('AeroExpress San Diego', 'San Diego, CA'),
    ('AeroExpress Dallas', 'Dallas, TX'),
    ('AeroExpress San Jose', 'San Jose, CA'),
    ('AeroExpress Buenos Aires', 'Buenos Aires, BA');

INSERT INTO cliente (documento, nombre, apellido, nacionalidad, fecha_nacimiento, lugar_nacimiento, telefono, mail, cuidados_especiales)
VALUES
    (42939934, 'Juan', 'Perez', 'Argentina', '1990-01-01', 'Buenos Aires, Argentina', 16045678, 'juan.perez@example.com', NULL),
    (78893363, 'Maria', 'Rodriguez', 'Brasilena', '1992-03-15', 'Sao Paulo, Brasil', 87104321, 'maria.rodriguez@example.com', NULL),
    (43299393, 'John', 'Doe', 'Estadounidense', '1985-06-30', 'Nueva York, Estados Unidos', 55555590, 'john.doe@example.com', 'Necesita alimentos libres de gluten'),
    (53535442, 'Samantha', 'Smith', 'Canadiense', '1988-09-15', 'Toronto, Canada', 08765432, 'samantha.smith@example.com', NULL),
    (45362728, 'Mohammed', 'Ahmed', 'Egipcio', '1980-12-31', 'Cairo, Egipto', 77747777, 'mohammed.ahmed@example.com', 'Usa silla de ruedas'),
    (34685324, 'Sakura', 'Kimura', 'Japonesa', '1995-08-11', 'Tokio, Japon', 22228222, 'sakura.kimura@example.com', NULL),
    (11111222, 'Ali', 'Mohammed', 'Arabe', '1996-04-20', 'Riad, Arabia Saudita', 21111111, 'ali.mohammed@example.com', NULL),
    (22222222, 'Jin', 'Lee', 'Coreana', '1993-07-27', 'Seul, Corea del Sur', 33336333, 'jin.lee@example.com', 'Vegetariana'),
	(33333339, 'Andres', 'Garcia', 'Colombiana', '1985-01-01', 'Bogota, Colombia', 13345678, 'andres.garcia@example.com', NULL),
    (44444441, 'Camila', 'Rodriguez', 'Venezolana', '1990-03-15', 'Caracas, Venezuela', 87654321, 'camila.rodriguez@example.com', 'Alergia al gluten'),
    (55555552, 'Juan', 'Doe', 'Peruano', '1995-06-30', 'Lima, Peru', 55555055, 'juan.doe@example.com', NULL),
    (66666660, 'Samantha', 'Smith', 'Chilena', '1988-09-15', 'Santiago, Chile', 98165442, 'samantha.smith@example.com', 'Silla de ruedas'),
    (99999993, 'Mohammed', 'Ahmed', 'Boliviano', '1980-12-31', 'La Paz, Bolivia', 77666777, 'mohammed.ahmed@example.com', NULL),
    (66464454, 'Sakura', 'Kimura', 'Ecuatoriana', '1995-08-11', 'Quito, Ecuador', 22232222, 'sakura.kimura@example.com', 'Asma'),
    (13142199, 'Ali', 'Mohammed', 'Uruguayo', '1996-04-20', 'Montevideo, Uruguay', 11411111, 'ali.mohammed@example.com', NULL),
    (90909090, 'Jin', 'Lee', 'Paraguaya', '1993-07-27', 'Asuncion, Paraguay', 33333339, 'jin.lee@example.com', NULL);


INSERT INTO empleado (nombre, apellido, ocupacion, fecha_nacimiento, lugar_nacimiento, lugar_trabajo, telefono, mail, id_sucursal)
VALUES
    ('Juan', 'Lopez', 'Gerente', '1985-01-01', 'Buenos Aires, Argentina', 'New York, NY', 12345679, 'juan.lopez@example.com', 1),
    ('Maria', 'Martinez', 'Gerente', '1990-03-15', 'Sao Paulo, Brazil', 'Los Angeles, CA', 87654322, 'maria.martinez@example.com', 2),
    ('John', 'Deere', 'Gerente', '1995-06-30', 'New York, NY, USA', 'New York, NY', 55555556, 'john.deere@example.com', 3),
    ('Samantha', 'Salomon', 'Gerente', '1988-09-15', 'Toronto, Canada', 'Chicago, IL', 98765433, 'samantha.salomon@example.com', 4),
    ('Mohammed', 'Muhammad', 'Gerente', '1980-12-31', 'Cairo, Egypt', 'Houston, TX', 77777778, 'mohammed.muhammad@example.com', 5),
    ('Sakura', 'Kamura', 'Gerente', '1995-08-11', 'Tokyo, Japan', 'Phoenix, AZ', 22222223, 'sakura.kamura@example.com', 5),
    ('Simbad', 'Mohammed', 'Gerente', '1996-04-20', 'Riyadh, Saudi Arabia', 'San Antonio, TX', 11111112, 'simbad.mohammed@example.com', 6),
    ('Hana', 'Lee', 'Gerente', '1993-07-27', 'Seoul, South Korea', 'San Diego, CA', 33333334, 'hana.lee@example.com', 7),
	('Sarah', 'Johnson', 'Gerente', '1995-02-01', 'Boston, MA, USA', 'Dallas, TX', 12345678, 'sarah.johnson@example.com', 8),
    ('Michael', 'Brown', 'Gerente', '1985-04-15', 'Miami, FL, USA', 'San Jose, CA', 87654321, 'michael.brown@example.com', 9),
    ('Jessica', 'Jones', 'Gerente', '1992-07-30', 'Orlando, FL, USA', 'Chicago, IL', 55555555, 'jessica.jones@example.com', 10),
    ('Emily', 'Smith', 'Gerente', '1996-09-15', 'Houston, TX, USA', 'Houston, TX', 98765432, 'emily.smith@example.com', 11),
	('Robert', 'Smith', 'Guardia de Seguridad', '1988-05-01', 'New York, NY, USA', 'New York, NY', 12345678, 'robert.smith@example.com', 1),
    ('Emma', 'Jones', 'Receptionista', '1990-08-15', 'Los Angeles, CA, USA', 'Los Angeles, CA', 87654321, 'emma.jones@example.com', 2),
    ('Emily', 'Brown', 'Cleaner', '1992-11-30', 'Chicago, IL, USA', 'Chicago, IL', 55555555, 'emily.brown@example.com', 3),
    ('Chloe', 'Harris', 'Tecnico de IT', '1996-02-15', 'Houston, TX, USA', 'Houston, TX', 98765432, 'chloe.harris@example.com', 4),
    ('William', 'Jackson', 'Contador', '1998-05-31', 'Phoenix, AZ, USA', 'Phoenix, AZ', 77777777, 'william.jackson@example.com', 5),
    ('Sofia', 'Garcia', 'Contadora', '1994-08-11', 'San Antonio, TX, USA', 'San Antonio, TX', 22222222, 'sofia.garcia@example.com', 6),
    ('Oliver', 'Rodriguez', 'Empleado de servicio al cliente', '1990-04-20', 'San Diego, CA, USA', 'San Diego, CA', 11111111, 'oliver.rodriguez@example.com', 7),
    ('Emily', 'Lee', 'Limpiadora', '1996-07-27', 'Dallas, TX, USA', 'Dallas, TX', 33333333, 'emily.lee@example.com', 8);

INSERT INTO aeronave (matricula, id_sucursal, modelo, tipo, origen, capacidad, condicion)
VALUES
    ('A-001', 1, 'Cessna 172', 'Avioneta', 'Estados Unidos', 4, 'operativa'),
    ('A-002', 2, 'Piper PA-28 Cherokee', 'Avioneta', 'Estados Unidos', 4, 'operativa'),
    ('A-003', 3, 'Beechcraft Musketeer', 'Avioneta', 'Estados Unidos', 4, 'en_mantenimiento'),
    ('A-004', 4, 'Cessna 152', 'Avioneta', 'Estados Unidos', 2, 'operativa'),
    ('A-005', 5, 'Piper PA-38 Tomahawk', 'Avioneta', 'Estados Unidos', 2, 'operativa'),
    ('A-006', 6, 'Beechcraft Sundowner', 'Avioneta', 'Estados Unidos', 2, 'operativa'),
    ('A-007', 7, 'Cessna 150', 'Avioneta', 'Estados Unidos', 2, 'operativa'),
    ('A-008', 8, 'Piper PA-28 Warrior', 'Avioneta', 'Estados Unidos', 4, 'en_deposito');
    

INSERT INTO vuelo (numero, origen, destino, distancia, aeronave_matricula, fecha, partida)
VALUES
	/*Puede haber vuelos vacíos*/
    ('V-001', 'Buenos Aires, Argentina', 'Nueva York, Estados Unidos', 800, 'A-001', '2021-12-11', '14:00'),
    ('V-002', 'Rio de Janeiro, Brasil', 'Lima, Peru', 1600, 'A-002', '2022-12-11', '16:00'),
    ('V-003', 'Bogota, Colombia', 'Caracas, Venezuela', 200, 'A-003', '2022-12-11', '18:00'),
    ('V-004', 'Lima, Peru', 'Buenos Aires, Argentina', 1600, 'A-004', '2022-12-12', '10:00'),
    ('V-005', 'Santiago, Chile', 'La Paz, Bolivia', 500, 'A-005', '2022-12-12', '12:00'),
    ('V-006', 'Quito, Ecuador', 'Guayaquil, Ecuador', 100, 'A-006', '2022-12-12', '14:00'),
    ('V-007', 'Montevideo, Uruguay', 'Asuncion, Paraguay', 200, 'A-007', '2022-12-12', '16:00'),
    ('V-008', 'Brasilia, Brasil', 'Rio de Janeiro, Brasil', 300, 'A-008', '2022-12-12', '18:00'),
    ('V-009', 'Buenos Aires, Argentina', 'Nueva York, Estados Unidos', 800, 'A-001', '2022-12-13', '14:00'),
    ('V-010', 'Buenos Aires, Argentina', 'Nueva York, Estados Unidos', 800, 'A-001', '2022-12-14', '14:00');
    

INSERT INTO pasaje (vuelo_numero, cliente_documento, aeronave_id, id_sucursal, valido_para, precio)
VALUES
    ('V-001', 42939934, 1, 1, 'ida', 100.00),
    ('V-002', 78893363, 2, 2, 'ida_y_vuelta', 200.00),
    ('V-003', 43299393, 3, 3, 'ida_y_vuelta', 150.00),
    ('V-004', 53535442, 4, 4, 'ida', 100.00),
    ('V-005', 45362728, 5, 5, 'ida_y_vuelta', 200.00),
    ('V-006', 34685324, 6, 6, 'ida_y_vuelta', 150.00),
    ('V-007', 11111222, 7, 7, 'ida', 100.00),
    ('V-008', 22222222, 8, 8, 'ida_y_vuelta', 200.00),
    ('V-009', 42939934, 1, 1, 'ida', 100.00),
    ('V-010', 42939934, 1, 1, 'ida', 100.00);

TRUNCATE TABLE pasaje;
TRUNCATE TABLE vuelo;
TRUNCATE TABLE aeronave;
TRUNCATE TABLE empleado;
TRUNCATE TABLE cliente;
TRUNCATE TABLE sucursal;

/*Insertarme en la tabla y adjudicarme la compra de un pasaje*/
INSERT INTO cliente (documento, nombre, apellido, nacionalidad, fecha_nacimiento, lugar_nacimiento, telefono, mail, cuidados_especiales)
VALUES
	(42955954, 'Juan', 'Lopez', 'Argentina', '2000-10-18', 'Tandil, Argentina', 20392833, 'juanmartin.lopez@example.com', 'Se olvida que rindió los finales');

INSERT INTO pasaje (vuelo_numero, cliente_documento, aeronave_id, id_sucursal, valido_para, precio)
VALUES
	('V-010', 42955954, 1, 1, 'ida', 100.00);

/*Modificar el valor de los vuelo de origen = 'Estados Unidos' de forma que se convierta a pesos,
 multiplicado por la cotización + los impuestos en Argentina.*/
UPDATE pasaje CROSS JOIN vuelo ON vuelo.numero = pasaje.vuelo_numero
SET pasaje.precio = pasaje.precio * 172.05 * 84.5 / 100
WHERE vuelo.origen LIKE '%Argentina' AND vuelo.destino LIKE '%Estados Unidos';

/**/

