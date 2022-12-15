CREATE DATABASE aerolinea;

DROP TABLE pasaje;
DROP TABLE vuelo;
DROP TABLE aeronave;
DROP TABLE empleado;
DROP TABLE cliente;
DROP TABLE sucursal;

/*sucursal*/
CREATE TABLE sucursal (
id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(100),
ubicacion VARCHAR(100)
);


/*cliente*/
CREATE TABLE cliente (
documento INT UNSIGNED PRIMARY KEY,
nombre VARCHAR(60) NOT NULL,
apellido VARCHAR(40) NOT NULL,
nacionalidad VARCHAR(25) NOT NULL,
fecha_nacimiento DATE NOT NULL,
lugar_nacimiento VARCHAR(100) NOT NULL,
telefono INT,
mail VARCHAR(254),
cuidados_especiales TEXT
);


/*empleado*/
CREATE TABLE empleado ( 
id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(60) NOT NULL,
apellido VARCHAR(40) NOT NULL,
ocupacion VARCHAR(100) NOT NULL,
fecha_nacimiento DATE NOT NULL,
lugar_nacimiento VARCHAR(100) NOT NULL,
lugar_trabajo VARCHAR(100) NOT NULL,
telefono INT,
mail VARCHAR(254),
id_sucursal INT NOT NULL,
FOREIGN KEY (id_sucursal) REFERENCES sucursal(id)
);


/*aeronave*/
CREATE TABLE aeronave (
id INT PRIMARY KEY AUTO_INCREMENT,
matricula VARCHAR(30) NOT NULL UNIQUE,
id_sucursal INT NOT NULL,
modelo VARCHAR(50) NOT NULL,
tipo VARCHAR(60) NOT NULL,
origen VARCHAR(40) NOT NULL,
capacidad INT UNSIGNED NOT NULL,
condicion SET('operativa', 'en_mantenimiento', 'en_deposito') NOT NULL,
FOREIGN KEY (id_sucursal) REFERENCES sucursal(id)
);


/*vuelo*/
CREATE TABLE vuelo (
numero CHAR(7) PRIMARY KEY,
origen VARCHAR(100) NOT NULL,
destino VARCHAR(100) NOT NULL,
distancia SMALLINT NOT NULL,
aeronave_matricula VARCHAR(30) NOT NULL,
fecha DATE NOT NULL,
partida TIME NOT NULL,
FOREIGN KEY (aeronave_matricula) REFERENCES aeronave(matricula)
);


/*pasaje*/
CREATE TABLE pasaje (
nro_pasaje INT PRIMARY KEY AUTO_INCREMENT,
vuelo_numero CHAR(7) NOT NULL,
cliente_documento INT UNSIGNED NOT NULL,
aeronave_id INT NOT NULL,
id_sucursal INT NOT NULL,
valido_para SET ('ida_y_vuelta', 'ida') NOT NULL,
precio NUMERIC(8,2) NOT NULL,



FOREIGN KEY (vuelo_numero) REFERENCES vuelo(numero),
FOREIGN KEY (cliente_documento) REFERENCES cliente(documento),
FOREIGN KEY (aeronave_id) REFERENCES aeronave(id),
FOREIGN KEY (id_sucursal) REFERENCES sucursal(id)
);


/*No alcancé a averiguar cómo hacer que los pasajes no excedieran la capacidad del avión. */
ALTER TABLE pasaje
ADD CONSTRAINT limite_capacidad CHECK (COUNT(SUM(vuelo_numero)) <= capacidad);

ALTER TABLE pasaje
DROP CONSTRAINT limite_capacidad;


