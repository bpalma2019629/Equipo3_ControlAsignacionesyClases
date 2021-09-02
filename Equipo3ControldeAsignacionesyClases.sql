drop database Equipo3_Control_de_Asignaciones_y_Clases;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
CREATE TABLE alumno (
  carne varchar(16) not null,
  apellidos VARCHAR(45),
  nombres VARCHAR(45),
  email VARCHAR(32),
  PRIMARY KEY (carne)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO alumno  (carne,apellidos,nombres, email) VALUES (2021001,'Pérez','carlos','Carlosgarc@kinal.edu.gt');
INSERT INTO alumno (carne,apellidos,nombres, email) VALUES (2021002,'Gutierrez','Karyn ', 'karyg@kinal.edu.gt');
INSERT INTO alumno (carne,apellidos,nombres, email) VALUES (2021003,'Garcia ','Xavier ', 'garciaxavier068@kinal.edu.gt');
INSERT INTO alumno  (carne,apellidos,nombres, email) VALUES (2021004, 'Fernandez','Jonathan ', 'Fernajona@kinal.edu.gt');
INSERT INTO alumno  (carne,apellidos,nombres, email) VALUES (2021005,'Herrera','David', 'herredav@kinal.edu.gt');
INSERT INTO alumno  (carne,apellidos,nombres, email) VALUES (2021006,'Palma','Andres', 'palmandr@kinal.edu.gt');
INSERT INTO alumno  (carne,apellidos,nombres, email) VALUES (2021007, 'ordoñez', 'karol ','kaarolordo@kinal.edu.gt');
INSERT INTO alumno  (carne,apellidos,nombres, email) VALUES (2021008,'Rodrigez','Carla', 'rodriguescar@kinal.edu.gt');
INSERT INTO alumno  (carne,apellidos,nombres, email) VALUES (2021009,'Diaz','Alex', 'aledia@kinal.edu.gt');
INSERT INTO alumno  (carne,apellidos,nombres, email) VALUES (2021010,'moran','nando', 'morannd@kinal.edu.gt');


-- ----------------------------------------------
-- Tabla carrera_tecnica
-- ----------------------------------------------
CREATE TABLE IF NOT EXISTS carrera_tecnica (
	codigo_carrera VARCHAR(128),
	nombre VARCHAR(45),
	PRIMARY KEY (codigo_carrera)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
create table if not exists salon(
  salon_id int not null auto_increment,
  capacidad int,	
  descripcion varchar(225),
  nombre_salon varchar(255),
  PRIMARY KEY (salon_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into salon (capacidad,descripcion,nombre_salon)
values(35,"Salon de Biologia","A-0001");
insert into salon (capacidad,descripcion,nombre_salon)
values(35,"Salon de Quimica","A-0002");
insert into salon (capacidad,descripcion,nombre_salon)
values(40,"Salon de Matematica","A-0003");
insert into salon (capacidad,descripcion,nombre_salon)
values(50,"Salon de Musica","A-0004");
insert into salon (capacidad,descripcion,nombre_salon)
values(40,"Salon de Fisica Fundamental","A-0005");
insert into salon (capacidad,descripcion,nombre_salon)
values(35,"Salon de Ingles","A-0006");
insert into salon (capacidad,descripcion,nombre_salon)
values(40,"Salon de Computacion","A-0007");
insert into salon (capacidad,descripcion,nombre_salon)
values(50,"Salon de Pintura","A-0008");
insert into salon (capacidad,descripcion,nombre_salon)
values(90,"Salon de Teatro","A-0009");
insert into salon (capacidad,descripcion,nombre_salon)
values(25,"Direccion","A-0010");


-- ----------------------------------------------
-- Tabla horario
-- ----------------------------------------------
CREATE TABLE IF NOT EXISTS horario (
	horario_id INT NOT NULL AUTO_INCREMENT,
	horario_final TIME,
    horario_inicio TIME,
    PRIMARY KEY(horario_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into horario (horario_final, horario_inicio) values ('7:30:00', '8:30:00');
insert into horario (horario_final, horario_inicio) values ('8:30:00', '9:30:00');
insert into horario (horario_final, horario_inicio) values ('9:30:00', '10:30:00');
insert into horario (horario_final, horario_inicio) values ('10:30:00', '11:30:00');
insert into horario (horario_final, horario_inicio) values ('11:30:00', '12:30:00');
insert into horario (horario_final, horario_inicio) values ('1:30:00', '2:30:00');
insert into horario (horario_final, horario_inicio) values ('2:30:00', '3:30:00');
insert into horario (horario_final, horario_inicio) values ('3:30:00', '4:30:00');
insert into horario (horario_final, horario_inicio) values ('4:30:00', '5:30:00');
insert into horario (horario_final, horario_inicio) values ('5:30:00', '6:30:00');


-- ----------------------------------------------
-- Tabla curso
-- ----------------------------------------------
CREATE TABLE IF NOT EXISTS curso (
	curso_id INT NOT NULL AUTO_INCREMENT,
    ciclo INT,
    cupo_maximo INT,
    cupo_minimo INT,
    descripcion VARCHAR(255),
    codigo_carrera VARCHAR(128) NOT NULL,
    horario_id INT NOT NULL,
    instructor_id INT NOT NULL,
    salon_id INT NOT NULL,
    PRIMARY KEY (curso_id),
    CONSTRAINT FK_curso_carrera_tecnica
		FOREIGN KEY (codigo_carrera)
        REFERENCES carrera_tecnica (codigo_carrera)
        on delete cascade on update cascade,
	CONSTRAINT FK_curso_horario
		FOREIGN KEY (horario_id)
        REFERENCES horario (horario_id)
        on delete cascade on update cascade,
	CONSTRAINT FK_curso_instructor
		FOREIGN KEY (instructor_id)
        REFERENCES instructor (instructor_id)
        on delete cascade on update cascade,
	CONSTRAINT FK_curso_salon
		FOREIGN KEY (salon_id)
        REFERENCES salon (salon_id)
		on delete cascade on update cascade) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO curso (ciclo, cupo_maximo, cupo_minimo, descripcion, codigo_carrera, horario_id, instructor_id, salon_id) VALUES ('2021', '20', '3', 'Programacion', 'CTIN', '1', '1', '1'); 
INSERT INTO curso (ciclo, cupo_maximo, cupo_minimo, descripcion, codigo_carrera, horario_id, instructor_id, salon_id) VALUES ('2021', '20', '4', 'Reparacion de morores ', 'CTMC', '2', '4', '7');
INSERT INTO curso (ciclo, cupo_maximo, cupo_minimo, descripcion, codigo_carrera, horario_id, instructor_id, salon_id) VALUES ('2020', '40', '10', 'Mantenimiento de computadoras', 'CTEC', '3', '7', '3');
INSERT INTO curso (ciclo, cupo_maximo, cupo_minimo, descripcion, codigo_carrera, horario_id, instructor_id, salon_id) VALUES ('2022', '25', '10', 'Circuitos', 'CTEI', '4', '3', '2');
INSERT INTO curso (ciclo, cupo_maximo, cupo_minimo, descripcion, codigo_carrera, horario_id, instructor_id, salon_id) VALUES ('2021', '35', '5', 'Mecatronica I', 'CTMT', '5', '5', '3');
INSERT INTO curso (ciclo, cupo_maximo, cupo_minimo, descripcion, codigo_carrera, horario_id, instructor_id, salon_id) VALUES ('2020', '20', '5', 'Topografia I', 'CTTG', '6', '6', '10');
INSERT INTO curso (ciclo, cupo_maximo, cupo_minimo, descripcion, codigo_carrera, horario_id, instructor_id, salon_id) VALUES ('2022', '22', '7', 'Telecomunicaciones I', 'CTTC', '7', '8', '5');
INSERT INTO curso (ciclo, cupo_maximo, cupo_minimo, descripcion, codigo_carrera, horario_id, instructor_id, salon_id) VALUES ('2021', '26', '10', 'Plantas y planos I', 'CTDT', '8', '6', '4');
INSERT INTO curso (ciclo, cupo_maximo, cupo_minimo, descripcion, codigo_carrera, horario_id, instructor_id, salon_id) VALUES ('2020', '30', '15', 'Instalaciones Electricas I', 'CTEL', '9', '9', '8');
INSERT INTO curso (ciclo, cupo_maximo, cupo_minimo, descripcion, codigo_carrera, horario_id, instructor_id, salon_id) VALUES ('2022', '20', '2', 'Solfeo y entonacion I', 'CTSN', '10', '10', '2');

-- ----------------------------------------------
-- Tabla asignacion_alumno
-- ----------------------------------------------
CREATE TABLE IF NOT EXISTS asignacion_alumno(
  asignacion_id varchar(45),
  fecha_asignacion datetime,
  carne VARCHAR(16) NOT NULL,
  curso_id int not null,
 PRIMARY KEY (asignacion_id),
  CONSTRAINT FK_asignacion_alumno_alumno
    FOREIGN KEY (carne)
    REFERENCES alumno (carne)
    on delete cascade
    on update cascade,
  CONSTRAINT FK_asignacion_alumno_curso
    FOREIGN KEY (curso_id)
    REFERENCES curso (curso_id)
    on delete cascade
    on update cascade) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into asignacion_alumno(asignacion_id, fecha_asignacion, carne, curso_id)
  value('A-12', '2021-01-1 12:00:00', '2021001', 1);
  insert into asignacion_alumno(asignacion_id, fecha_asignacion, carne, curso_id)
  value('A-13', '2021-02-2 1:00:00', '2021002', 2);
  insert into asignacion_alumno(asignacion_id, fecha_asignacion, carne, curso_id)
  value('A-14', '2021-03-3 2:00:00', '2021003', 3);
  insert into asignacion_alumno(asignacion_id, fecha_asignacion, carne, curso_id)
  value('A-15', '2021-04-4 3:00:00', '2021004', 4);
  insert into asignacion_alumno(asignacion_id, fecha_asignacion, carne, curso_id)
  value('A-16', '2021-05-5 4:00:00', '2021005', 5);
  insert into asignacion_alumno(asignacion_id, fecha_asignacion, carne, curso_id)
  value('A-17', '2021-06-6 5:00:00', '2021006', 6);
  insert into asignacion_alumno(asignacion_id, fecha_asignacion, carne, curso_id)
  value('A-18', '2021-07-7 6:00:00', '2021007', 7);
  insert into asignacion_alumno(asignacion_id, fecha_asignacion, carne, curso_id)
  value('A-19', '2021-08-8 7:00:00', '2021008', 8);
  insert into asignacion_alumno(asignacion_id, fecha_asignacion, carne, curso_id)
  value('A-20', '2021-09-9 8:00:00', '2021009', 9);
  insert into asignacion_alumno(asignacion_id, fecha_asignacion, carne, curso_id)
  value('A-21', '2021-10-10 9:00:00', '2021010', 10);
  

