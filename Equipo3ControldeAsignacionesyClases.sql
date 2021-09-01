create database if not exists Equipo3_Control_de_Asignaciones_y_Clases;
use Equipo3_Control_de_Asignaciones_y_Clases;


-- ----------------------------------------------
-- Tabla instructor
-- ----------------------------------------------



-- ----------------------------------------------
-- Tabla alumnos
-- ----------------------------------------------



-- ----------------------------------------------
-- Tabla carrera_tecnica
-- ----------------------------------------------
CREATE TABLE IF NOT EXISTS carrera_tecnica (
	codigo_carrera VARCHAR(128),
	nombre VARCHAR(45),
	PRIMARY KEY (codigo_carrera)
);
INSERT INTO carrera_tecnica (codigo_carrera, nombre) VALUES ('CTIN', 'Informática');
INSERT INTO carrera_tecnica (codigo_carrera, nombre) VALUES ('CTMC', 'Mecánica');
INSERT INTO carrera_tecnica (codigo_carrera, nombre) VALUES ('CTEC', 'Electrónica en computación');
INSERT INTO carrera_tecnica (codigo_carrera, nombre) VALUES ('CTEI', 'Electrónica Industrial');
INSERT INTO carrera_tecnica (codigo_carrera, nombre) VALUES ('CTMT', 'Mecatrónica');
INSERT INTO carrera_tecnica (codigo_carrera, nombre) VALUES ('CTTG', 'Topografía');
INSERT INTO carrera_tecnica (codigo_carrera, nombre) VALUES ('CTTC', 'Telecomunicaciones');
INSERT INTO carrera_tecnica (codigo_carrera, nombre) VALUES ('CTDT', 'Dibujo técnico');
INSERT INTO carrera_tecnica (codigo_carrera, nombre) VALUES ('CTEL', 'Electricidad');
INSERT INTO carrera_tecnica (codigo_carrera, nombre) VALUES ('CTSN', 'Sonido y música');


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



