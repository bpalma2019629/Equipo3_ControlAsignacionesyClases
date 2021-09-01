create database if not exists Equipo3_Control_de_Asignaciones_y_Clases;
use Equipo3_Control_de_Asignaciones_y_Clases;


-- ----------------------------------------------
-- Tabla instructor
-- ----------------------------------------------
create table if not exists instructor (
  instructor_id INT NOT NULL AUTO_INCREMENT,
  apellidos VARCHAR(45),
  nombres VARCHAR(45),
  direccion VARCHAR(45),
  telefono VARCHAR(8),
  PRIMARY KEY (instructor_id)
);

INSERT INTO instructor (apellidos, nombres, direccion, telefono) VALUES ('Hernandez', 'Pablo', '1ra ave. 1-50 zona 7', '12345678');
INSERT INTO instructor (apellidos, nombres, direccion, telefono) VALUES ('Morales', 'Andree', '2ra ave. 1-47 zona 3', '87654321');
INSERT INTO instructor (apellidos, nombres, direccion, telefono) VALUES ('Pérez','Geraldine', '6ta ave. 4-20 zona 12', '14725836');
INSERT INTO instructor (apellidos, nombres, direccion, telefono) VALUES ('Armstrong', 'Louis', '7ma calle 6-20 zona 4', '51475865');
INSERT INTO instructor (apellidos, nombres, direccion, telefono) VALUES ('Sacario', 'Norma', '28 calle 1-47 zona 3', '55369711');
INSERT INTO instructor (apellidos, nombres, direccion, telefono) VALUES ('Chocojay', 'José', '7ma ave. 1-14 zona 7', '41486532');
INSERT INTO instructor (apellidos, nombres, direccion, telefono) VALUES ('Humberto', 'Cristian', '4ta ave. 7-4 zona 14', '45253687');
INSERT INTO instructor (apellidos, nombres, direccion, telefono) VALUES ('Sona', 'Mayra', 'manzana 1 lote 5 B.lago', '58360025');
INSERT INTO instructor (apellidos, nombres, direccion, telefono) VALUES ('Solma', 'Maritza', '8va calle 1-45 zona 16', '88996622');
INSERT INTO instructor (apellidos, nombres, direccion, telefono) VALUES ('Orellana', 'Joel', '1ra avenida 1-48 zona 3', '51180625');


-- ----------------------------------------------
-- Tabla alumnos
-- ----------------------------------------------



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



