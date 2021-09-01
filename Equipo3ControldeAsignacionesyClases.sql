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



-- ----------------------------------------------
-- Tabla salon
-- ----------------------------------------------
create table if not exists salon(
  salon_id int not null auto_increment,
  capacidad int,	
  descripcion varchar(225),
  nombre_salon varchar(255),
  PRIMARY KEY (salon_id)
);

-- ----------------------------------------------
-- Tabla horario
-- ----------------------------------------------



-- ----------------------------------------------
-- Tabla curso
-- ----------------------------------------------



-- ----------------------------------------------
-- Registros
-- ----------------------------------------------

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
<<<<<<< HEAD
values(25,"Direccion","A-0010");



-- ----------------------------------------------
-- Tabla horario
-- ----------------------------------------------



-- ----------------------------------------------
-- Tabla curso
-- ----------------------------------------------



-- ----------------------------------------------
-- Tabla asignacion_alumno
-- ----------------------------------------------



=======
values(25,"Direccion","A-0010");
>>>>>>> kenneth
