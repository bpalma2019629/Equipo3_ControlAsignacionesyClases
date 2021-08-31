create database if not exists Equipo3_Control_de_Asignaciones_y_Clases;
use Equipo3_Control_de_Asignaciones_y_Clases;


-- ----------------------------------------------
-- Tabla instructor
-- ----------------------------------------------



-- ----------------------------------------------
-- Tabla alumnos
-- ----------------------------------------------
CREATE TABLE alumno (
  id_alumno INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(45),
  apellido VARCHAR(45),
  email VARCHAR(45),
  telefono VARCHAR(8),
  saldo DOUBLE,
  PRIMARY KEY (id_alumno)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



-- ----------------------------------------------
-- Tabla carrera_tecnica
-- ----------------------------------------------



-- ----------------------------------------------
-- Tabla salon
-- ----------------------------------------------



-- ----------------------------------------------
-- Tabla horario
-- ----------------------------------------------



-- ----------------------------------------------
-- Tabla curso
-- ----------------------------------------------



-- ----------------------------------------------
-- Tabla asignacion_alumno
-- ----------------------------------------------


INSERT INTO alumno  (nombre, apellido, email, telefono, saldo) VALUES ('carlos', 'Pérez', 'Carlosgarc@kinal.edu.gt', '42156987', '500');

INSERT INTO alumno (nombre, apellido, email, telefono, saldo) VALUES ('Karyn ', 'Gutierrez', 'karyg@kinal.edu.gt', '56879658', '400');

INSERT INTO alumno (nombre, apellido, email, telefono, saldo) VALUES ('Xavier ', 'Garcia ', 'garciaxavier068@kinal.edu.gt', '42146038', '650');

INSERT INTO alumno  (nombre, apellido, email, telefono, saldo) VALUES ('Jonathan ', 'Fernandez', 'Fernajona@kinal.edu.gt', '58962365', '200');

INSERT INTO alumno  (nombre, apellido, email, telefono, saldo) VALUES ('David', 'Herrera', 'herredav@kinal.edu.gt', '63258974', '605');

INSERT INTO alumno  (nombre, apellido, email, telefono, saldo) VALUES ('Andres', 'Palma', 'palmandr@kinal.edu.gt', '32569874', '365');

INSERT INTO alumno  (nombre, apellido, email, telefono, saldo) VALUES ('karol ', 'ordoñez', 'kaarolordo@kinal.edu.gt', '56987458', '356');

INSERT INTO alumno  (nombre, apellido, email, telefono, saldo) VALUES ('Carla', 'Rodrigez', 'rodriguescar@kinal.edu.gt', '69854784', '968');

INSERT INTO alumno  (nombre, apellido, email, telefono, saldo) VALUES ('Alex', 'Diaz', 'aledia@kinal.edu.gt', '96583254', '145');

INSERT INTO alumno  (nombre, apellido, email, telefono, saldo) VALUES ('nando', 'moran', 'morannd@kinal.edu.gt', '65987458', '325');


