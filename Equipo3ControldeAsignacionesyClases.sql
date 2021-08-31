create database if not exists Equipo3_Control_de_Asignaciones_y_Clases;
use Equipo3_Control_de_Asignaciones_y_Clases;


-- ----------------------------------------------
-- Tabla instructor
-- ----------------------------------------------



-- ----------------------------------------------
-- Tabla alumnos
-- ----------------------------------------------
CREATE TABLE alumno (
  carne INT NOT NULL AUTO_INCREMENT,
  nombres VARCHAR(45),
  apellidos VARCHAR(45),
  email VARCHAR(45),
  PRIMARY KEY (carne)
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


INSERT INTO alumno  (nombres, apellidos, email) VALUES ('carlos', 'Pérez', 'Carlosgarc@kinal.edu.gt');

INSERT INTO alumno (nombres, apellidos, email, telefono, saldo) VALUES ('Karyn ', 'Gutierrez', 'karyg@kinal.edu.gt');

INSERT INTO alumno (nombres, apellidos, email, telefono, saldo) VALUES ('Xavier ', 'Garcia ', 'garciaxavier068@kinal.edu.gt');

INSERT INTO alumno  (nombres, apellidos, email, telefono, saldo) VALUES ('Jonathan ', 'Fernandez', 'Fernajona@kinal.edu.gt');

INSERT INTO alumno  (nombres, apellidos, email, telefono, saldo) VALUES ('David', 'Herrera', 'herredav@kinal.edu.gt');

INSERT INTO alumno  (nombres, apellidos, email, telefono, saldo) VALUES ('Andres', 'Palma', 'palmandr@kinal.edu.gt');

INSERT INTO alumno  (nombres, apellidos, email, telefono, saldo) VALUES ('karol ', 'ordoñez', 'kaarolordo@kinal.edu.gt');

INSERT INTO alumno  (nombres, apellidos, email, telefono, saldo) VALUES ('Carla', 'Rodrigez', 'rodriguescar@kinal.edu.gt');

INSERT INTO alumno  (nombres, apellidos, email, telefono, saldo) VALUES ('Alex', 'Diaz', 'aledia@kinal.edu.gt');

INSERT INTO alumno  (nombres, apellidos, email, telefono, saldo) VALUES ('nando', 'moran', 'morannd@kinal.edu.gt');


