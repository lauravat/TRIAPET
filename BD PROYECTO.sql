create database Proyecto;
use Proyecto;

-------------------------- # 	TABLA USUARIO   # ----------------------------------------------
create table Usuario(
Num_documento int unsigned primary key not null,
Tipo_documento enum ("Tarjeta de identidad","Cedula de Ciudadania","Cedula de extranjeria") not null,
Nombre_completo varchar (255) not null,
Clave varchar (255) not null,
Nickname varchar (255) not null,
Direccion varchar (255) not null,
Telefono int unsigned null,
Correo_electronico varchar (255) not null,
Fecha_nacimiento date not null,
Rol enum ("Administrador","Doctor","Asistente","Usuario") not null default "Usuario",
Estado enum ("si","no") not null default "si",
Numero_celular int unsigned not null,
Fecha_registro date not null,
Genero enum ("F","M") not null,
Titulo_profesional varchar (255) null ,
Experiencia enum ("si", "no")  null
);
-------------------------- # 	TABLA AGENDA   # ----------------------------------------------
create table Agenda(
Cod_agenda tinyint unsigned auto_increment primary key not null,
Num_documento int unsigned not null,
foreign key (Num_documento) references Usuario (Num_documento),
Inicio_dia date not null,
Fin_dia date not null,
Inicio_hora time not null,
Fin_hora time not null,
Dias_atencion date not null
);
-------------------------- # 	TABLA  CLIENTE  # ----------------------------------------------
create table Cliente(
Cod_cliente tinyint unsigned auto_increment primary key not null,
Telefono_cliente int unsigned not null,
Num_documento int unsigned not null,
Tipo_documento varchar(255) not null,
Nombre_cliente varchar (255) not null,
Direccion varchar (255) not null
);
-------------------------- # 	TABLA MASCOTA   # ----------------------------------------------
create table Mascota (
Cod_mascota tinyint unsigned auto_increment primary key not null,
Cod_cliente tinyint unsigned not null,
foreign key (Cod_cliente) references Cliente (Cod_cliente),
Seguimiento_clinico varchar (255) not null,
Frecuencia varchar (255) not null,
Observacion varchar (255) not null,
Evolucion_medica varchar (255) not null,
Edad_mascota tinyint unsigned not null,
Nombre_mascota varchar (255) not null,
Peso_mascota float (3,1) not null,
Raza_mascota varchar (255) not null,
Sexo enum ("Macho", "Hembra") not null,
Carnet_vacuna enum ("si", "no") not null,
Vacuna varchar (255) not null,
Diagnostico varchar (255) not null
);
-------------------------- # 	TABLA CITA   # ----------------------------------------------
create table Cita (
Cod_cita tinyint unsigned auto_increment primary key not null,
Cod_mascota tinyint unsigned not null,
foreign key (Cod_mascota) references Mascota (Cod_mascota),
Cod_agenda tinyint unsigned not null,
foreign key(Cod_agenda) references Agenda (Cod_agenda),
Num_documento_doctor int unsigned not null,
foreign key (Num_documento_doctor) references Usuario(Num_documento),
Fecha date not null,
Hora_cita time not null,
Tipo_servicio varchar(255) not null,
Observacion varchar (255) not null,
Precio mediumint unsigned not null,
Estado enum ("1","2") not null
);
-------------------------- # 	TABLA PATALOGIA   # ----------------------------------------------
create table Patologia (
id  int auto_increment primary key,
Cod_mascota tinyint unsigned not null,
foreign key (Cod_mascota) references Mascota (Cod_mascota),
Enfermedad varchar (255) not null 
);
-------------------------- # 	REGISTROS USUARIOS   # ----------------------------------------------
insert into Usuario (Tipo_documento,Num_documento,Nombre_completo,Clave,Nickname,Direccion,Telefono,Correo_electronico,Fecha_nacimiento,Rol,Estado,Numero_celular,Fecha_registro,Genero,Titulo_profesional,Experiencia)
values ('2',1059403765,'Luis Angel Gutierrez Pardo','Lugutierrez','Luis Gutierrez','cra 140A#132 A-33',967584,'Luis.gutierrez@gmail.com','2000-03-15','2','1',3214657893,'2020-05-02','M','medico veterinario de la universidad de los andes','si');
insert into Usuario (Tipo_documento,Num_documento,Nombre_completo,Clave,Nickname,Direccion,Telefono,Correo_electronico,Fecha_nacimiento,Rol,Estado,Numero_celular,Fecha_registro,Genero,Titulo_profesional,Experiencia)
 values ('2',1045637823,'Maria Angela Diaz Torres','MariDiaz','Maria Diaz','cra 144A#133 A-32',964684,'Maria.diaz@gmail.com','1998-04-25','2','1',3214658673,'2020-05-03','F','medico veterinario de la universidad de los andes','si');
insert into Usuario (Tipo_documento,Num_documento,Nombre_completo,Clave,Nickname,Direccion,Telefono,Correo_electronico,Fecha_nacimiento,Rol,Estado,Numero_celular,Fecha_registro,Genero,Titulo_profesional,Experiencia)
values ('2',1075845362,'Luis Andres Lozano Barrios','LuisB','Luis Barrios','cra 120A#122 A-23',968984,'Luis.barrios@gmail.com','2000-04-13','2','2',3456657893,'2020-05-04','M','medico veterinario de la universidad minuto de dios','si');
insert into Usuario (Tipo_documento,Num_documento,Nombre_completo,Clave,Nickname,Direccion,Telefono,Correo_electronico,Fecha_nacimiento,Rol,Estado,Numero_celular,Fecha_registro,Genero,Titulo_profesional,Experiencia)
values('2',1073859476,'Luisa Andrea Diaz Espitia','LuisaDE','Luisa Diaz','cra 132A#140 A-22',934584,'Luisa.diaz@gmail.com','1995-06-23','2','2',3214670893,'2020-05-05','F','medico veterinario de la universidad de los andes','si');
insert into Usuario (Tipo_documento,Num_documento,Nombre_completo,Clave,Nickname,Direccion,Telefono,Correo_electronico,Fecha_nacimiento,Rol,Estado,Numero_celular,Fecha_registro,Genero,Titulo_profesional,Experiencia)
values('2',1067483902,'Fernanda Martinez Talero','FerMartinez','Fernanda Martinez','cra 102A#145 B-22',930004,'Fernanda.martinez@gmail.com','1994-12-01','3','1',3214234893,'2019-04-03','F','no tiene','no');
insert into Usuario (Tipo_documento,Num_documento,Nombre_completo,Clave,Nickname,Direccion,Telefono,Correo_electronico,Fecha_nacimiento,Rol,Estado,Numero_celular,Fecha_registro,Genero,Titulo_profesional,Experiencia)
values ('2',1069504635,'Maria Andrea Diaz Guerrero','MariaD','Maria Diaz','cra 142A#130 C-22',654584,'Maria.diaz@gmail.com','1995-07-13','1','1',3124670893,'2018-04-03','F','bachiller en ciencias administrativas','si');
insert into Usuario (Tipo_documento,Num_documento,Nombre_completo,Clave,Nickname,Direccion,Telefono,Correo_electronico,Fecha_nacimiento,Rol,Estado,Numero_celular,Fecha_registro,Genero,Titulo_profesional,Experiencia)
values ('2',1049504635,'Maria Fernanda Diaz Espitia','MariaD','Maria Fernanda','cra 143A#130 C-22',644584,'Maria.espitia@gmail.com','1994-07-13','1','2',3124650893,'2018-04-02','F','bachiller en ciencias administrativas','si');
insert into Usuario (Tipo_documento,Num_documento,Nombre_completo,Clave,Nickname,Direccion,Telefono,Correo_electronico,Fecha_nacimiento,Rol,Estado,Numero_celular,Fecha_registro,Genero,Titulo_profesional,Experiencia)
values ('2',1049564635,'Bere Naranjo Gonzalez','BereG','Bere Gonzalez','cra 133A#130 C-22',644564,'Bere.naranjo@gmail.com','1994-06-13','1','2',3144650893,'2018-04-04','M','bachiller en ciencias administrativas','si');
insert into Usuario (Tipo_documento,Num_documento,Nombre_completo,Clave,Nickname,Direccion,Telefono,Correo_electronico,Fecha_nacimiento,Rol,Estado,Numero_celular,Fecha_registro,Genero,Titulo_profesional,Experiencia)
values ('2',1049504735,'Alexis Campos Naranjo','AlexisC','Alexis Campos','cra 142A#130 C-22',544584,'Alexis.campos@gmail.com','1994-05-13','1','2',3134650893,'2018-03-02','F','bachiller en ciencias administrativas','si');
insert into Usuario (Tipo_documento,Num_documento,Nombre_completo,Clave,Nickname,Direccion,Telefono,Correo_electronico,Fecha_nacimiento,Rol,Estado,Numero_celular,Fecha_registro,Genero,Titulo_profesional,Experiencia)
values ('2',1049304635,'Sergio Alejandro Campos Hernandez','SergioC','Sergio Campos','cra 143A#132 C-22',644554,'Sergio.campos@gmail.com','1994-07-12','1','1',3124650893,'2018-04-02','F','bachiller en ciencias fiancieras','si');

insert into Usuario (Tipo_documento,Num_documento,Nombre_completo,Clave,Nickname,Direccion,Telefono,Correo_electronico,Fecha_nacimiento,Rol,Estado,Numero_celular,Fecha_registro,Genero,Titulo_profesional,Experiencia)
values ('2',1029504635,'Diego Berumen Cerillo','DiegoC','Diego Cerillo','cra 143A#136 C-22',644587,'Diego.cerillo@gmail.com','1995-07-13','1','1',3127650893,'2018-04-02','M','bachiller en ciencias administrativas','si');
insert into Usuario (Tipo_documento,Num_documento,Nombre_completo,Clave,Nickname,Direccion,Telefono,Correo_electronico,Fecha_nacimiento,Rol,Estado,Numero_celular,Fecha_registro,Genero,Titulo_profesional,Experiencia)
values ('2',1049504638,'Fabiola Estrada Gonzalez','FabiolaG','Fabiola Gonzalez','cra 143A#135 C-24',694584,'Fabiola.gonzalez@gmail.com','1994-07-15','1','1',3124650803,'2018-04-02','F','bachiller en ciencias administrativas','si');
insert into Usuario (Tipo_documento,Num_documento,Nombre_completo,Clave,Nickname,Direccion,Telefono,Correo_electronico,Fecha_nacimiento,Rol,Estado,Numero_celular,Fecha_registro,Genero,Titulo_profesional,Experiencia)
values ('2',1049904635,'Leonardo Daniel Fajardo Rosas','LeonardoR','Leonardo Rosas','cra 143A#134 D-22',645584,'Leonardo.rosas@gmail.com','1994-07-16','1','1',3124656893,'2018-04-09','M','bachiller en ciencias administrativas','si');
insert into Usuario (Tipo_documento,Num_documento,Nombre_completo,Clave,Nickname,Direccion,Telefono,Correo_electronico,Fecha_nacimiento,Rol,Estado,Numero_celular,Fecha_registro,Genero,Titulo_profesional,Experiencia)
values ('2',1059504635,'Francisco Gomez Estrada','FranciscoG','Francisco Gomez','cra 143A#130 D-22',644586,'Francisco.estrada@gmail.com','1994-07-9','1','1',3124610893,'2018-04-06','F','bachiller en ciencias administrativas','si');
insert into Usuario (Tipo_documento,Num_documento,Nombre_completo,Clave,Nickname,Direccion,Telefono,Correo_electronico,Fecha_nacimiento,Rol,Estado,Numero_celular,Fecha_registro,Genero,Titulo_profesional,Experiencia)
values ('2',1049704635,'Ramon Fernando Diaz Espitia','RamonD','Ramon Diaz','cra 123A#130 C-22',649584,'Ramon.diaz@gmail.com','1984-07-13','1','1',3124550893,'2015-04-02','M','bachiller en ciencias administrativas','si');
insert into Usuario (Tipo_documento,Num_documento,Nombre_completo,Clave,Nickname,Direccion,Telefono,Correo_electronico,Fecha_nacimiento,Rol,Estado,Numero_celular,Fecha_registro,Genero,Titulo_profesional,Experiencia)
values ('2',1049500635,'Edgar Andres Flores Olivares','EdgarF','Edgar Flores','cra 143A#130 F-22',644584,'Edgar.flores@gmail.com','1994-07-13','1','1',3124150893,'2015-06-02','M','bachiller en ciencias administrativas','si');
insert into Usuario (Tipo_documento,Num_documento,Nombre_completo,Clave,Nickname,Direccion,Telefono,Correo_electronico,Fecha_nacimiento,Rol,Estado,Numero_celular,Fecha_registro,Genero,Titulo_profesional,Experiencia)
values ('2',1049604635,'Aurora Escalante Ramirez','AuroraE','Aurora Escalante','cra 143A#130 C-29',604584,'Aurora.escalante@gmail.com','1994-07-13','3','1',3124656793,'2022-04-02','F','bachiller en ciencias contables','si');
insert into Usuario (Tipo_documento,Num_documento,Nombre_completo,Clave,Nickname,Direccion,Telefono,Correo_electronico,Fecha_nacimiento,Rol,Estado,Numero_celular,Fecha_registro,Genero,Titulo_profesional,Experiencia)
values ('2',1039504635,'Laura Valentina Bejarano','LauraB','Laura Bejarano','cra 123A#130 C-22',544584,'Laura.bejarano@gmail.com','1995-07-16','2','1',3124654593,'2018-04-06','F','bachiller en ciencias veterinarias','si');
insert into Usuario (Tipo_documento,Num_documento,Nombre_completo,Clave,Nickname,Direccion,Telefono,Correo_electronico,Fecha_nacimiento,Rol,Estado,Numero_celular,Fecha_registro,Genero,Titulo_profesional,Experiencia)
values ('2',1049570635,'Cristian Camilo Torres Torres','CristianT','Crsitian Torres','cra 143B#130 C-22',644234,'Cristian.torres@gmail.com','1994-07-22','2','1',3124650893,'2022-04-02','M','bachiller en ciencias veterianrias','no');
insert into Usuario (Tipo_documento,Num_documento,Nombre_completo,Clave,Nickname,Direccion,Telefono,Correo_electronico,Fecha_nacimiento,Rol,Estado,Numero_celular,Fecha_registro,Genero,Titulo_profesional,Experiencia)
values ('2',1049504987,'Camilo Bejarano Martinez','CamiloB','Camilo Bejarano','cra 143C#130 C-22',644344,'Camilo.bejarano@gmail.com','1999-07-13','2','1',3124345893,'2021-04-02','M','bachiller en ciencias veterianrias','no');

insert into Usuario (Tipo_documento,Num_documento,Nombre_completo,Clave,Nickname,Direccion,Telefono,Correo_electronico,Fecha_nacimiento,Rol,Estado,Numero_celular,Fecha_registro,Genero,Titulo_profesional,Experiencia)
values ('2',1098504635,'Alejandro Caicedo Marinez','AlenjandroM','Alenajdro Martinez','cra 125D#130 C-22',678984,'Alejandro.martinez@gmail.com','1994-09-13','2','1',3178050893,'2021-06-02','M','bachiller en ciencias veterinarias','si');
insert into Usuario (Tipo_documento,Num_documento,Nombre_completo,Clave,Nickname,Direccion,Telefono,Correo_electronico,Fecha_nacimiento,Rol,Estado,Numero_celular,Fecha_registro,Genero,Titulo_profesional,Experiencia)
values ('2',104950789,'Kevin Fernando Gomez Gonzalez','KevinG','Kevin Gomez','cra 143A#130 C-34',675324,'Kevin.gomez@gmail.com','1994-07-30','2','1',3127890893,'2020-05-05','M','bachiller en ciencias veterinarias','si');
insert into Usuario (Tipo_documento,Num_documento,Nombre_completo,Clave,Nickname,Direccion,Telefono,Correo_electronico,Fecha_nacimiento,Rol,Estado,Numero_celular,Fecha_registro,Genero,Titulo_profesional,Experiencia)
values ('2',1049523435,'Maria Alejandra Gonzalez Cardoso','MariaG','Maria Gonzalez','cra 125D#130 C-22',689584,'Maria.alejandra@gmail.com','2000-07-13','2','2',3124234693,'2020-11-02','F','bachiller en ciencias medicas','si');
insert into Usuario (Tipo_documento,Num_documento,Nombre_completo,Clave,Nickname,Direccion,Telefono,Correo_electronico,Fecha_nacimiento,Rol,Estado,Numero_celular,Fecha_registro,Genero,Titulo_profesional,Experiencia)
values ('2',1049105635,'Nicol Daniela Espinos Contreras','NicolE','Nicol Espinosa','cra 143A#130 D-38',698745,'Nicol.espinosa@gmail.com','2002-07-13','2','2',3124650567,'2018-04-23','F','bachiller en ciencias veterinarias','si');
insert into Usuario (Tipo_documento,Num_documento,Nombre_completo,Clave,Nickname,Direccion,Telefono,Correo_electronico,Fecha_nacimiento,Rol,Estado,Numero_celular,Fecha_registro,Genero,Titulo_profesional,Experiencia)
values ('2',104952605,'Alejandra Acero Ayure','AlejandraA','Alejandra Acero','cra 143A#130 A-42',675234,'Alejandra.acero@gmail.com','2001-07-13','2','1',3124650234,'2018-04-29','F','bachiller en ciencias veterinarias','si');
-------------------------- # 	REGISTROS AGENDA   # ----------------------------------------------
insert into Agenda (Num_documento,Inicio_dia,Fin_dia,Inicio_hora,Fin_hora,Dias_atencion)
values (104950789,'2022-02-01','2022-02-05','06:00:00','18:00:00','2022-01-04');
insert into Agenda (Num_documento,Inicio_dia,Fin_dia,Inicio_hora,Fin_hora,Dias_atencion)
values (104950789,'2021-03-01','2021-02-05','06:00:00','18:00:00','2021-01-04');
insert into Agenda (Num_documento,Inicio_dia,Fin_dia,Inicio_hora,Fin_hora,Dias_atencion)
values (104950789,'2022-04-02','2022-02-13','06:00:00','18:00:00','2022-01-11');
insert into Agenda (Num_documento,Inicio_dia,Fin_dia,Inicio_hora,Fin_hora,Dias_atencion)
values (1039504635,'2022-02-01','2022-02-10','06:00:00','15:00:00','2022-01-09');#
insert into Agenda (Num_documento,Inicio_dia,Fin_dia,Inicio_hora,Fin_hora,Dias_atencion)
values (1039504635 ,'2022-03-01','2022-02-12','06:00:00','18:00:00','2022-01-12');
insert into Agenda (Num_documento,Inicio_dia,Fin_dia,Inicio_hora,Fin_hora,Dias_atencion)
values (1039504635,'2022-04-01','2022-03-05','06:00:00','18:00:00','2022-03-04');
insert into Agenda (Num_documento,Inicio_dia,Fin_dia,Inicio_hora,Fin_hora,Dias_atencion)
values (1049304635,'2022-03-03','2022-03-12','08:00:00','12:00:00','2022-03-09');
insert into Agenda (Num_documento,Inicio_dia,Fin_dia,Inicio_hora,Fin_hora,Dias_atencion)
values (1049304635,'2022-01-01','2022-02-05','08:00:00','12:00:00','2022-03-04');#
insert into Agenda (Num_documento,Inicio_dia,Fin_dia,Inicio_hora,Fin_hora,Dias_atencion)
values (1049504638,'2022-02-01','2022-02-05','06:00:00','18:00:00','2022-04-04');
insert into Agenda (Num_documento,Inicio_dia,Fin_dia,Inicio_hora,Fin_hora,Dias_atencion)
values (1049504638,'2022-03-02','2022-02-15','06:00:00','18:00:00','2022-04-15');

insert into Agenda (Num_documento,Inicio_dia,Fin_dia,Inicio_hora,Fin_hora,Dias_atencion)
values (1049504638,'2022-04-01','2022-06-05','06:00:00','18:00:00','2022-06-04');
insert into Agenda (Num_documento,Inicio_dia,Fin_dia,Inicio_hora,Fin_hora,Dias_atencion)
values (1049504987,'2022-06-15','2022-06-25','06:00:00','18:00:00','2022-06-20');
insert into Agenda (Num_documento,Inicio_dia,Fin_dia,Inicio_hora,Fin_hora,Dias_atencion)
values (1049523435,'2022-02-03','2022-02-18','06:00:00','20:00:00','2022-06-30');
insert into Agenda (Num_documento,Inicio_dia,Fin_dia,Inicio_hora,Fin_hora,Dias_atencion)
values (1049564635,'2022-02-01','2022-02-05','06:00:00','18:00:00','2022-07-04');
insert into Agenda (Num_documento,Inicio_dia,Fin_dia,Inicio_hora,Fin_hora,Dias_atencion)
values (1049570635,'2022-02-01','2022-02-15','06:00:00','18:00:00','2022-07-19');
insert into Agenda (Num_documento,Inicio_dia,Fin_dia,Inicio_hora,Fin_hora,Dias_atencion)
values (1049604635,'2022-07-26','2022-07-26','06:00:00','18:00:00','2022-07-26');
insert into Agenda (Num_documento,Inicio_dia,Fin_dia,Inicio_hora,Fin_hora,Dias_atencion)
values (1049704635,'2022-07-26','2022-07-27','06:00:00','18:00:00','2022-07-26');
insert into Agenda (Num_documento,Inicio_dia,Fin_dia,Inicio_hora,Fin_hora,Dias_atencion)
values (1049904635,'2022-02-01','2022-02-05','06:00:00','18:00:00','2022-08-04');
insert into Agenda (Num_documento,Inicio_dia,Fin_dia,Inicio_hora,Fin_hora,Dias_atencion)
values (1059403765,'2022-08-11','2022-08-15','06:00:00','18:00:00','2022-08-14');
insert into Agenda (Num_documento,Inicio_dia,Fin_dia,Inicio_hora,Fin_hora,Dias_atencion)
values (1059504635 ,'2022-08-11','2022-01-11','06:00:00','18:00:00','2022-08-11');

insert into Agenda (Num_documento,Inicio_dia,Fin_dia,Inicio_hora,Fin_hora,Dias_atencion)
values (1067483902,'2022-09-01','2022-09-05','06:00:00','18:00:00','2022-09-04');
insert into Agenda (Num_documento,Inicio_dia,Fin_dia,Inicio_hora,Fin_hora,Dias_atencion)
values (1067483902,'2022-02-03','2022-02-25','06:00:00','12:00:00','2022-09-18');
insert into Agenda (Num_documento,Inicio_dia,Fin_dia,Inicio_hora,Fin_hora,Dias_atencion)
values (1069504635,'2022-02-01','2022-02-05','06:00:00','18:00:00','2022-10-04');
insert into Agenda (Num_documento,Inicio_dia,Fin_dia,Inicio_hora,Fin_hora,Dias_atencion)
values (1069504635,'2022-10-11','2022-10-15','06:00:00','18:00:00','2022-10-14');
insert into Agenda (Num_documento,Inicio_dia,Fin_dia,Inicio_hora,Fin_hora,Dias_atencion)
values (1073859476,'2022-11-01','2022-11-05','06:00:00','18:00:00','2022-11-04');
insert into Agenda (Num_documento,Inicio_dia,Fin_dia,Inicio_hora,Fin_hora,Dias_atencion)
values (1073859476,'2022-11-11','2022-11-15','06:00:00','18:00:00','2022-11-14');
insert into Agenda (Num_documento,Inicio_dia,Fin_dia,Inicio_hora,Fin_hora,Dias_atencion)
values (1075845362,'2022-12-01','2022-12-05','06:00:00','18:00:00','2022-12-04');
insert into Agenda (Num_documento,Inicio_dia,Fin_dia,Inicio_hora,Fin_hora,Dias_atencion)
values (1075845362,'2022-12-19','2022-12-25','06:00:00','18:00:00','2022-12-24');
insert into Agenda (Num_documento,Inicio_dia,Fin_dia,Inicio_hora,Fin_hora,Dias_atencion)
values (1098504635,'2022-11-18','2022-11-18','06:00:00','18:00:00','2022-11-18');
insert into Agenda (Num_documento,Inicio_dia,Fin_dia,Inicio_hora,Fin_hora,Dias_atencion)
values (1098504635,'2022-10-12','2022-10-12','06:00:00','18:00:00','2022-10-12');
-------------------------- # 	REGISTROS CLIENTE   # ----------------------------------------------
insert into Cliente (Telefono_cliente,Tipo_documento,Num_documento,Nombre_cliente,Direccion)
values (3046758923,'T.I',1028896934,'Maria Lopez','cra 140A#130-33');
insert into Cliente (Telefono_cliente,Tipo_documento,Num_documento,Nombre_cliente,Direccion)
values (3046745623,'C.C',1028834534,'Juan Lopez','cra 140B#130-33');
insert into Cliente (Telefono_cliente,Tipo_documento,Num_documento,Nombre_cliente,Direccion)
values (3046758678,'T.I',1028234934,'Juan Oliveros','cra 132A#130-33');
insert into Cliente (Telefono_cliente,Tipo_documento,Num_documento,Nombre_cliente,Direccion)
values (3026758923,'C.C',1028891234,'Francisco Perez','cra 140A#123-33');
insert into Cliente (Telefono_cliente,Tipo_documento,Num_documento,Nombre_cliente,Direccion)
values (3046758679,'T.I',102006934,'Sergio Castro','cra 140A#120-33');
insert into Cliente (Telefono_cliente,Tipo_documento,Num_documento,Nombre_cliente,Direccion)
values (3046756783,'C.C',1034696934,'Kevin Gomez','cra 135A#130-33');
insert into Cliente (Telefono_cliente,Tipo_documento,Num_documento,Nombre_cliente,Direccion)
values (3046758567,'T.I',1022346934,'Juan Benavidez','cra 140A#130-40');
insert into Cliente (Telefono_cliente,Tipo_documento,Num_documento,Nombre_cliente,Direccion)
values (3046752103,'C.C',1020986934,'Fernando Villegas','cra 140C#130-33');
insert into Cliente (Telefono_cliente,Tipo_documento,Num_documento,Nombre_cliente,Direccion)
values (3046758325,'T.I',1028670934,'Andres Martinez','cra 134A#130-33');
insert into Cliente (Telefono_cliente,Tipo_documento,Num_documento,Nombre_cliente,Direccion)
values (3046758245,'C.C',1025796934,'Kevin Forero','cra 140A#120-33');

insert into Cliente (Telefono_cliente,Tipo_documento,Num_documento,Nombre_cliente,Direccion)
values (3046056923,'T.I',1028831134,'Johan Pardo','cra 140A#115-33');
insert into Cliente (Telefono_cliente,Tipo_documento,Num_documento,Nombre_cliente,Direccion)
values (3046758480,'C.C',1028834534,'Roberto Ramirez','cra 130C#130-33');
insert into Cliente (Telefono_cliente,Tipo_documento,Num_documento,Nombre_cliente,Direccion)
values (3046720923,'T.I',1038896934,'William Ramirez','cra 130D#130-33');
insert into Cliente (Telefono_cliente,Tipo_documento,Num_documento,Nombre_cliente,Direccion)
values (3046767923,'C.C',1023496934,'Harold Miranda','cra 130A#120-33');
insert into Cliente (Telefono_cliente,Tipo_documento,Num_documento,Nombre_cliente,Direccion)
values (3046756723,'T.I',1028236934,'Lorena Lopez','cra 130A#110-33');
insert into Cliente (Telefono_cliente,Tipo_documento,Num_documento,Nombre_cliente,Direccion)
values (3046758945,'C.C',1028766934,'Miranda Fernandez','cra 135D#130-33');
insert into Cliente (Telefono_cliente,Tipo_documento,Num_documento,Nombre_cliente,Direccion)
values (3046758453,'T.I',1026796934,'Mario Hernandez','cra 140A#140-23');
insert into Cliente (Telefono_cliente,Tipo_documento,Num_documento,Nombre_cliente,Direccion)
values (3046754623,'C.C',1023856934,'Maicol Rodriguez','cra 150A#120-43');
insert into Cliente (Telefono_cliente,Tipo_documento,Num_documento,Nombre_cliente,Direccion)
values (3046128923,'T.I',1028676934,'Josefina Rodriguez','cra 140A#125-33');
insert into Cliente (Telefono_cliente,Tipo_documento,Num_documento,Nombre_cliente,Direccion)
values (3046755623,'C.C',1028891834,'Juan Quintero','cra 120A#110-33');

insert into Cliente (Telefono_cliente,Tipo_documento,Num_documento,Nombre_cliente,Direccion)
values (3026758923,'T.I',1048896934,'Fernando Lopez','cra 140D#130-36');
insert into Cliente (Telefono_cliente,Tipo_documento,Num_documento,Nombre_cliente,Direccion)
values (3046735923,'C.C',1028456934,'David Quintero','cra 138A#120-33');
insert into Cliente (Telefono_cliente,Tipo_documento,Num_documento,Nombre_cliente,Direccion)
values (3042158923,'T.I',1024596934,'Harold Reyes','cra 130D#140-33');
insert into Cliente (Telefono_cliente,Tipo_documento,Num_documento,Nombre_cliente,Direccion)
values (3046908923,'C.C',1022096934,'Juan Lopez','cra 136A#140-33');
insert into Cliente (Telefono_cliente,Tipo_documento,Num_documento,Nombre_cliente,Direccion)
values (3024758923,'T.I',1026796934,'Samuel Hernandez','cra 146A#120-33');
-------------------------- # 	REGISTROS MASCOTAS   # ----------------------------------------------
insert into Mascota (Cod_cliente,Seguimiento_clinico,Frecuencia,Observacion,Evolucion_medica,Edad_mascota,Nombre_mascota,Peso_mascota,Raza_mascota,Sexo,Carnet_vacuna,Vacuna,Diagnostico) 
values ('3','Se le toman examenes de sangre y radiografias a la mascota para determinar enfermedades o cualquier anomalia','2 veces por semana', 'De acuerdo a los examenes tomados se evidencia que la mascota esta completamente sana','A comparación de la primera sesion en donde se le mando un desparacitante, el animal ya esta completamente sano', '2', 'Logan','30', 'Criollo', '1', '1', 'Vacunas de la rabia y el moquillo', 'No tiene sintomas de enfermedades');
insert into Mascota (Cod_cliente,Seguimiento_clinico,Frecuencia,Observacion,Evolucion_medica,Edad_mascota,Nombre_mascota,Peso_mascota,Raza_mascota,Sexo,Carnet_vacuna,Vacuna,Diagnostico) 
values ('5', 'Son tomadas radiografias en la pata izquierda', '3 veces por semana', 'Presenta una leve fractura en su pata izquierda', 'Y pasada una semana se presenta una leve mejoria, el animal ya puede apoyar la pata pero sigue con algunos huesos rotos', '2', 'Garfiel', '3', 'Gato persa', '2', '1', 'calicivirus', 'El gato debe permanecer con la misma medicacion dada en otras consultas y asistiendo puntualmente a controles semanales ya que de no ser asi puede presentar factura permanente');
insert into Mascota (Cod_cliente,Seguimiento_clinico,Frecuencia,Observacion,Evolucion_medica,Edad_mascota,Nombre_mascota,Peso_mascota,Raza_mascota,Sexo,Carnet_vacuna,Vacuna,Diagnostico) 
values ( '18', 'Se le realiza baño antipulgas y estripamiento de glandulas', '1 vez cada 15 dias', 'Presenta alto grado de suciedad y manifestacion de pulgas', 'Ya se le han quitado las garrpatas por completo pero sigue con pulgas el animal', '5', 'Campana', '25', 'Chihuahua', '2', '2','No presenta vacunas', 'Se realiza recomendacion para jornadas de vacunacion y se es necesario jabon especizlizado para el tiepo de piel del animal ya que es demasiado sensible');
insert into Mascota (Cod_cliente,Seguimiento_clinico,Frecuencia,Observacion,Evolucion_medica,Edad_mascota,Nombre_mascota,Peso_mascota,Raza_mascota,Sexo,Carnet_vacuna,Vacuna,Diagnostico) 
values ( '18', 'Se realiza un corte clasico junto con corte de uñas al perro', '1 vez cada 15 dias','El perro tiene piel sensible por lo que el corte de pelo se realizo con dificultad', 'En algunas zonas donde no se evidenciaba cabello, en esta sesion hay abundante', '2', 'Lion', '48', 'Pastor Aleman', '1', '2', 'No presenta vacunas', 'Se debe peinar el cabello del perro contantenmente para evitar tantos nudos, estar pendiente del crecimiento excesivo de la uñas y se recomienda jagon especial antialergico para el tipo de piel y pulgas');
insert into Mascota (Cod_cliente,Seguimiento_clinico,Frecuencia,Observacion,Evolucion_medica,Edad_mascota,Nombre_mascota,Peso_mascota,Raza_mascota,Sexo,Carnet_vacuna,Vacuna,Diagnostico) 
values ( '22', 'Es realizados examenes de sangre', '2 veces cada 10 dias', 'Se presentan anomalias en muestras de sangre del animal', 'Es primera sesion de consulta', '3', 'Canela', '16', 'Poodle', '2', '1', 'Rabia, hepatitis, parvovirus','Debido a las anomalias encontradas en los examenes se recomiendan antibioticos y citas con especialistas profesionales en esta area');
insert into Mascota (Cod_cliente,Seguimiento_clinico,Frecuencia,Observacion,Evolucion_medica,Edad_mascota,Nombre_mascota,Peso_mascota,Raza_mascota,Sexo,Carnet_vacuna,Vacuna,Diagnostico) 
values ( '13', 'Se le realiza una consulta minima fisica de caracter general', '3 veces cada mes', 'Todo en orden no se evidencian anomalias', 'Se presenta completa y total mejoria en la pada derecha trasera ya que antes se presentaba sin poder estirarla', '4', 'Luci', '46', 'Buldog frances', '2', '1', 'Parvovirus y moquillo', 'Todo se encuentra en orden y el animal goza de buna salud fisica' );
insert into Mascota (Cod_cliente,Seguimiento_clinico,Frecuencia,Observacion,Evolucion_medica,Edad_mascota,Nombre_mascota,Peso_mascota,Raza_mascota,Sexo,Carnet_vacuna,Vacuna,Diagnostico) 
values ('1', 'Se le realiza al animal una desparacitacion de emergencia', '2 veces cada 3 dias', 'Al llegar a las consultas habituales se evidencia vomito con sangre por lo que se da un desparacitante inmediato', 'Se presento un retroceso en el proceso ya que hay demasiados parasitos por no suministar el parasitante de manera correcta', '1', 'Motas', '29', 'Siames', '1', '2', 'No presenta vacunas', 'Se manda desparacitante especial con una suministracion de 2 tabletas cada 8 horas');
insert into Mascota (Cod_cliente,Seguimiento_clinico,Frecuencia,Observacion,Evolucion_medica,Edad_mascota,Nombre_mascota,Peso_mascota,Raza_mascota,Sexo,Carnet_vacuna,Vacuna,Diagnostico) 
values ( '10', 'Se es realizado algunos examenes fisicos, especificamente oculares', '4 veces cada 2 semanas', 'En el perro se evidencia de manera inmediata una tela blanca en su ojo derecho y se manifiesta que se choca constantemente con todo', 'Se presenta ligeras mejorias ya que no tiene la tela blanca en el iris como en un principio', '10', 'Bruno','38', 'Lobo Siberiano', '1', '1', 'Rabia, parvovirus, moquillo', 'Se le mandan gotas necesarias para que el animal pueda recuperar un poco mas de su vista total');
insert into Mascota (Cod_cliente,Seguimiento_clinico,Frecuencia,Observacion,Evolucion_medica,Edad_mascota,Nombre_mascota,Peso_mascota,Raza_mascota,Sexo,Carnet_vacuna,Vacuna,Diagnostico) 
values ( '24', 'A la mascota se le toma muestras de saliva y radiografias en la mandibula', '10 veces por mes', 'Se manifiesta que en la mandibula hay una ligera desviacion lo que no le permite al animal comer de manera adecuada por lo que se esta viendo afectada su salud alimenticia', 'Mejoramiento en el control de infecciones bucales', '3', 'Mathews','45', 'Maine Coon', '1', '1', 'Rinotraquitis, panleucopecia', 'Es necesario mansajes en la mandibula para volver a su posicion original, esto es realizado por especialistas');
insert into Mascota (Cod_cliente,Seguimiento_clinico,Frecuencia,Observacion,Evolucion_medica,Edad_mascota,Nombre_mascota,Peso_mascota,Raza_mascota,Sexo,Carnet_vacuna,Vacuna,Diagnostico) 
values ( '24', 'Se toman radiografias en la parte trasera de la columna del perro', '1 vez cada 3 dias', 'Se presenta displacia en la cadera al observar en la radiografica que la columna esta desviada lo cual hace que no se tenga una buena postura al momento de caminar o realizar algun movimiento', 'Primera consulta sin antencedentes', '2', 'Sombra','34', 'Pastor Aleman', '2', '1', 'Rabia, moquillo', 'Se debe realizar una cirugia con alta urgencia debido a las complicaciones graves que puede llegar a desarrollar el perro si no es tratado con el tiempo suficiente, al igual que adquirir un aparato para con este se el ayuda a mejorar la postura');

insert into Mascota (Cod_cliente,Seguimiento_clinico,Frecuencia,Observacion,Evolucion_medica,Edad_mascota,Nombre_mascota,Peso_mascota,Raza_mascota,Sexo,Carnet_vacuna,Vacuna,Diagnostico) 
values ('24', 'Se hace diagnostico general', '4 veces cada 2 meses', 'Se puede evidenciar una alta caida de cabello y dterioro en dientes por morder las rejas de la jaula', 'Se denota un meojramiento en la alimentacion', '1', 'Lulu', '5','Hamster albino', '2', '1', 'No se tiene registro de ninguna vacuna', 'El hamster sufre de estres debido al spacio tan reducido que tiene en su jaula,por lo q se recomienda camiar de jaula por una mas grande o dejarlo libre en casa en lugares que sean completamente seguros');
insert into Mascota (Cod_cliente,Seguimiento_clinico,Frecuencia,Observacion,Evolucion_medica,Edad_mascota,Nombre_mascota,Peso_mascota,Raza_mascota,Sexo,Carnet_vacuna,Vacuna,Diagnostico) 
values ('2', 'Se hacen examenes de sangre debido a presunta espuma de la boca','1 vez por semana', 'Se hace evidente espuma en la boca del perro y condusctas agresivas', 'Hay un avance con respecto a la alimentacion y peso del animal a comparacion de la primera consulta realizada anteriormente', '6', 'Luna', '26', 'Buldog Frances', '2', '2', 'No tiene vacunas', 'Se coloca la vacuna contra la reabia para eliminar la enfermedad');
insert into Mascota (Cod_cliente,Seguimiento_clinico,Frecuencia,Observacion,Evolucion_medica,Edad_mascota,Nombre_mascota,Peso_mascota,Raza_mascota,Sexo,Carnet_vacuna,Vacuna,Diagnostico) 
values ( '4', 'Se hace una radiografia en la pata izquierda trasera y delantera', '2 veces cada 3 dias', 'En la radiografia se puede ver una ligera fisura en ambas patas lo cual presenta arto dolor', 'Primera consulta medica', '6','Leon', '38', 'Golden Retriver','1', '1', 'Ravia, parvovirus, moquillo', 'Se colocan dos inyecciones en cada una de las patas para calmar el dolor y se deben aplicar cada 8 horas en casa');
insert into Mascota (Cod_cliente,Seguimiento_clinico,Frecuencia,Observacion,Evolucion_medica,Edad_mascota,Nombre_mascota,Peso_mascota,Raza_mascota,Sexo,Carnet_vacuna,Vacuna,Diagnostico) 
values ( '7', 'Chequeo general del animal', '1 vez por semana', 'En el chequeo general el animal se encuentra en optimas condiciones de salud','Se evidencia una gran mejoria en la alimentacion dada ya que el animal tiene las fuerzas que deberia tener', '1', 'Pollo', '15', 'Pollo criollo', '2', '2', 'No se presentan vacunas', 'Todo en orden de salud y alimentancion, no presente enfermedades');
insert into Mascota (Cod_cliente,Seguimiento_clinico,Frecuencia,Observacion,Evolucion_medica,Edad_mascota,Nombre_mascota,Peso_mascota,Raza_mascota,Sexo,Carnet_vacuna,Vacuna,Diagnostico) 
values ( '25', 'Prueba de comidas para establecer cual es optima para el gato', '2 veces por semana', 'El animal viene generando vomitos constantes despues de cada comida a pesar de que se le ha ido cambiando', 'Se ve una buena recuperacion despues de la operacion realizada en la pata derecha', '8', 'Sabina', '16', 'Albino', '2', '1', 'Vacuna de la rabia', 'Es recomendado revolver el concentrado normal con arroz sin sal para notar mejorias si no se le dara un desparacitante');

insert into Mascota (Cod_cliente,Seguimiento_clinico,Frecuencia,Observacion,Evolucion_medica,Edad_mascota,Nombre_mascota,Peso_mascota,Raza_mascota,Sexo,Carnet_vacuna,Vacuna,Diagnostico) 
values ('23', 'Se hacen chequeos de sangre por presunta leucemia', '4 veces por semana', 'Segun los resultados arrojados se evidencian varias anomalias en la sangre del animal', 'Se presenta desmejoria ya que no tiene fracturas presentadas anteriormente', '6','Mono','22', 'Criollo', '1', '1', 'Rabia', 'Se deja internado al animal en el centro medico de veterianria para ser atendido por profesionales');
insert into Mascota (Cod_cliente,Seguimiento_clinico,Frecuencia,Observacion,Evolucion_medica,Edad_mascota,Nombre_mascota,Peso_mascota,Raza_mascota,Sexo,Carnet_vacuna,Vacuna,Diagnostico) 
values ('6', 'Es realizado un procedimiento de peluqueria, especificamente corte de pelo','3 veces cada 5 meses', 'Se evidencia al perro con mal higiene en su pelaje', 'Ha tenido mejoramiento en su estado de salud', '5', 'Kira', '34', 'Lobo siberiano', '2', '1', 'Rabia', 'Se entrega al perro con un corte de pelo apto y optimo para su raza');
insert into Mascota (Cod_cliente,Seguimiento_clinico,Frecuencia,Observacion,Evolucion_medica,Edad_mascota,Nombre_mascota,Peso_mascota,Raza_mascota,Sexo,Carnet_vacuna,Vacuna,Diagnostico) 
values ('8', 'Se realiza radiografia en la oreja derecha', '2 veces cada 2 semanas', 'Se evidencia una ligera fractura por mordedura de perro', 'Se hace evidente una mejoria en su pelaje', '5', 'Shaira', '20', 'Buldoog', '2', '1', 'Moquillo', 'Se recomiendo realizar cirugia programada para dentro de dos meses, por el momento tratar con medicamentos' );
insert into Mascota (Cod_cliente,Seguimiento_clinico,Frecuencia,Observacion,Evolucion_medica,Edad_mascota,Nombre_mascota,Peso_mascota,Raza_mascota,Sexo,Carnet_vacuna,Vacuna,Diagnostico) 
values ('19', 'Se hace procedimiento quirurjico de esterilizacion', '4 veces por semana', 'El animal tiene la edad suficiente para tal procedimiento', 'Ha presentado mejorias en su alimentacion de pedigree', '1', 'Simba', '14', 'Gato Albino', '1', '2', 'No presenta vacunas', 'El proceso salio de manera exitosa, solo se recomienda tener higiene en la zona de la herida en cassa');
insert into Mascota (Cod_cliente,Seguimiento_clinico,Frecuencia,Observacion,Evolucion_medica,Edad_mascota,Nombre_mascota,Peso_mascota,Raza_mascota,Sexo,Carnet_vacuna,Vacuna,Diagnostico) 
values ('17', 'Se le hace revision en la oreja tanto izquierda como derecha', '1 vez por semana', 'Se evidencia mal higiene', 'Todo ha avanzado de manera correcta con respecto a su salud', '2', 'Negro', '15', 'Criollo', '1', '2', 'No presenta vacunas','Se debe mejorarr higiene ');

insert into Mascota (Cod_cliente,Seguimiento_clinico,Frecuencia,Observacion,Evolucion_medica,Edad_mascota,Nombre_mascota,Peso_mascota,Raza_mascota,Sexo,Carnet_vacuna,Vacuna,Diagnostico) 
values ( '17', 'Se realiza diagnostico general', '1 vez por mes', 'Todo se encuentra en orden', 'Mejorias en la salud e higiene','5', 'Miel', '38', 'Golden Retriver','1', '1', 'Ravia, parvovirus, moquillo', 'Se colocan dos inyecciones en cada una de las patas para calmar el dolor y se deben aplicar cada 8 horas en casa');
insert into Mascota (Cod_cliente,Seguimiento_clinico,Frecuencia,Observacion,Evolucion_medica,Edad_mascota,Nombre_mascota,Peso_mascota,Raza_mascota,Sexo,Carnet_vacuna,Vacuna,Diagnostico) 
values ( '20', 'Se toman radiografias en la parte trasera de la columna del perro', '1 vez cada 3 dias', 'Se presenta displacia en la cadera al observar en la radiografica que la columna esta desviada lo cual hace que no se tenga una buena postura al momento de caminar o realizar algun movimiento', 'Primera consulta sin antencedentes', '2', 'Perro','34', 'Pastor Aleman', '2', '1', 'Rabia, moquillo', 'Se debe realizar una cirugia con alta urgencia debido a las complicaciones graves que puede llegar a desarrollar el perro si no es tratado con el tiempo suficiente, al igual que adquirir un aparato para con este se el ayuda a mejorar la postura' );
insert into Mascota (Cod_cliente,Seguimiento_clinico,Frecuencia,Observacion,Evolucion_medica,Edad_mascota,Nombre_mascota,Peso_mascota,Raza_mascota,Sexo,Carnet_vacuna,Vacuna,Diagnostico) 
values ('15', 'Son tomadas radiografias en la pata izquierda', '3 veces por semana', 'Presenta una leve fractura en su pata izquierda', 'Y pasada una semana se presenta una leve mejoria, el animal ya puede apoyar la pata pero sigue con algunos huesos rotos', '2', 'Luci', '3', 'Gato persa', '2', '1', 'calicivirus', 'El gato debe permanecer con la misma medicacion dada en otras consultas y asistiendo puntualmente a controles semanales ya que de no ser asi puede presentar factura permanente');
insert into Mascota (Cod_cliente,Seguimiento_clinico,Frecuencia,Observacion,Evolucion_medica,Edad_mascota,Nombre_mascota,Peso_mascota,Raza_mascota,Sexo,Carnet_vacuna,Vacuna,Diagnostico) 
values ( '11', 'Se es realizado algunos examenes fisicos, especificamente oculares', '4 veces cada 2 semanas', 'En el perro se evidencia de manera inmediata una tela blanca en su ojo derecho y se manifiesta que se choca constantemente con todo', 'Se presenta ligeras mejorias ya que no tiene la tela blanca en el iris como en un principio', '10', 'Perrito','38', 'Lobo Siberiano', '1', '1', 'Rabia, parvovirus, moquillo', 'Se le mandan gotas necesarias para que el animal pueda recuperar un poco mas de su vista total');
insert into Mascota (Cod_cliente,Seguimiento_clinico,Frecuencia,Observacion,Evolucion_medica,Edad_mascota,Nombre_mascota,Peso_mascota,Raza_mascota,Sexo,Carnet_vacuna,Vacuna,Diagnostico) 
values ( '16', 'Se hacen chequeos de sangre por presunta leucemia', '4 veces por semana', 'Segun los resultados arrojados se evidencian varias anomalias en la sangre del animal', 'Se presenta desmejoria ya que no tiene fracturas presentadas anteriormente', '6','Monito','44', 'Criollo', '1', '1', 'Rabia', 'Se deja internado al animal en el centro medico de veterianria para ser atendido por profesionales');
insert into Mascota (Cod_cliente,Seguimiento_clinico,Frecuencia,Observacion,Evolucion_medica,Edad_mascota,Nombre_mascota,Peso_mascota,Raza_mascota,Sexo,Carnet_vacuna,Vacuna,Diagnostico) 
values ( '12','Se es realizado algunos examenes fisicos, especificamente oculares', '4 veces cada 2 semanas', 'En el perro se evidencia de manera inmediata una tela blanca en su ojo derecho y se manifiesta que se choca constantemente con todo', 'Se presenta ligeras mejorias ya que no tiene la tela blanca en el iris como en un principio', '10', 'Beish','38' ,'Lobo Siberiano', '1', '1', 'Rabia, parvovirus, moquillo', 'Se le mandan gotas necesarias para que el animal pueda recuperar un poco mas de su vista total' );
insert into Mascota (Cod_cliente,Seguimiento_clinico,Frecuencia,Observacion,Evolucion_medica,Edad_mascota,Nombre_mascota,Peso_mascota,Raza_mascota,Sexo,Carnet_vacuna,Vacuna,Diagnostico) 
values ( '21','Se hace una radiografia en la pata izquierda trasera y delantera', '2 veces cada 3 dias', 'En la radiografia se puede ver una ligera fisura en ambas patas lo cual presenta arto dolor', 'Primera consulta medica', '6','Mielsito', '38', 'Golden Retriver','1', '1', 'Ravia, parvovirus, moquillo', 'Se colocan dos inyecciones en cada una de las patas para calmar el dolor y se deben aplicar cada 8 horas en casa' );
insert into Mascota (Cod_cliente,Seguimiento_clinico,Frecuencia,Observacion,Evolucion_medica,Edad_mascota,Nombre_mascota,Peso_mascota,Raza_mascota,Sexo,Carnet_vacuna,Vacuna,Diagnostico) 
values ( '21', 'A la mascota se le toma muestras de saliva y radiografias en la mandibula', '10 veces por mes', 'Se manifiesta que en la mandibula hay una ligera desviacion lo que no le permite al animal comer de manera adecuada por lo que se esta viendo afectada su salud alimenticia', 'Mejoramiento en el control de infecciones bucales', '3', 'Perrote','45', 'Maine Coon', '1', '1', 'Rinotraquitis, panleucopecia', 'Es necesario mansajes en la mandibula para volver a su posicion original, esto es realizado por especialistas');
insert into Mascota (Cod_cliente,Seguimiento_clinico,Frecuencia,Observacion,Evolucion_medica,Edad_mascota,Nombre_mascota,Peso_mascota,Raza_mascota,Sexo,Carnet_vacuna,Vacuna,Diagnostico) 
values ('21', 'Es realizado un procedimiento de peluqueria, especificamente corte de pelo','3 veces cada 5 meses', 'Se evidencia al perro con mal higiene en su pelaje', 'Ha tenido mejoramiento en su estado de salud', '5', 'Lunita', '34', 'Lobo siberiano', '2', '1', 'Rabia', 'Se entrega al perro con un corte de pelo apto y optimo para su raza');
insert into Mascota (Cod_cliente,Seguimiento_clinico,Frecuencia,Observacion,Evolucion_medica,Edad_mascota,Nombre_mascota,Peso_mascota,Raza_mascota,Sexo,Carnet_vacuna,Vacuna,Diagnostico) 
values ('9', 'Se hacen examenes de sangre debido a presunta espuma de la boca','1 vez por semana', 'Se hace evidente espuma en la boca del perro y condusctas agresivas', 'Hay un avance con respecto a la alimentacion y peso del animal a comparacion de la primera consulta realizada anteriormente', '7', 'Lunita', '26', 'Buldog Frances', '2', '2', 'No tiene vacunas', 'Se coloca la vacuna contra la reabia para eliminar la enfermedad');



-------------------------- # 	REGISTROS CITA   # ----------------------------------------------
insert into Cita (Cod_mascota,Cod_agenda,Num_documento_doctor,Fecha,Hora_cita,Tipo_servicio,Observacion,Precio,Estado)
Values (1,1,104950789,'2022-02-03','13:00:00','peluqueria','se hixo un corte clasico a la mascota',10000,'1');
insert into Cita (Cod_mascota,Cod_agenda,Num_documento_doctor,Fecha,Hora_cita,Tipo_servicio,Observacion,Precio,Estado)
Values (1,3,104950789,'2022-02-03','13:30:00','peluqueria','se hixo un corte clasico a la mascota',10000,'2');
insert into Cita (Cod_mascota,Cod_agenda,Num_documento_doctor,Fecha,Hora_cita,Tipo_servicio,Observacion,Precio,Estado)
Values (3,5,104952605,'2022-02-03','14:00:00','peluqueria','se hizo un baño de espuma',10000,'1');
insert into Cita (Cod_mascota,Cod_agenda,Num_documento_doctor,Fecha,Hora_cita,Tipo_servicio,Observacion,Precio,Estado)
Values (4,10,104950789,'2022-02-03','14:30:00','vacunas','se administraron 2 vacunas',50000,'1');
insert into Cita (Cod_mascota,Cod_agenda,Num_documento_doctor,Fecha,Hora_cita,Tipo_servicio,Observacion,Precio,Estado)
Values (4,22,104952605,'2022-02-03','14:50:00','vacunas','se administro una vacuna',25000,'2');
insert into Cita (Cod_mascota,Cod_agenda,Num_documento_doctor,Fecha,Hora_cita,Tipo_servicio,Observacion,Precio,Estado)
Values (4,23,1073859476,'2022-02-04','10:00:00','peluqueria','se hixo un corte clasico a la mascota',10000,'2');
insert into Cita (Cod_mascota,Cod_agenda,Num_documento_doctor,Fecha,Hora_cita,Tipo_servicio,Observacion,Precio,Estado)
Values (7,8,1075845362,'2022-02-04','10:30:00','peluqueria','se hixo un corte clasico a la mascota',10000,'1');
insert into Cita (Cod_mascota,Cod_agenda,Num_documento_doctor,Fecha,Hora_cita,Tipo_servicio,Observacion,Precio,Estado)
Values (8,9,1098504635,'2022-02-04','11:00:00','peluqueria','se hixo un corte clasico a la mascota',10000,'2');
insert into Cita (Cod_mascota,Cod_agenda,Num_documento_doctor,Fecha,Hora_cita,Tipo_servicio,Observacion,Precio,Estado)
Values (10,15,1045637823,'2022-02-05','13:30:00','control','se realizo control',10000,'2');
insert into Cita (Cod_mascota,Cod_agenda,Num_documento_doctor,Fecha,Hora_cita,Tipo_servicio,Observacion,Precio,Estado)
Values (5,4,1039504635,'2022-02-03','14:30:00','peluqueria','se hixo un corte clasico a la mascota',10000,'2');

insert into Cita (Cod_mascota,Cod_agenda,Num_documento_doctor,Fecha,Hora_cita,Tipo_servicio,Observacion,Precio,Estado)
Values (5,3,1039504635,'2022-02-03','13:30:00','peluqueria','se hixo un corte clasico a la mascota',10000,'2');
insert into Cita (Cod_mascota,Cod_agenda,Num_documento_doctor,Fecha,Hora_cita,Tipo_servicio,Observacion,Precio,Estado)
Values (6,7,1045637823,'2022-03-03','13:30:00','peluqueria','se hixo un corte clasico a la mascota',10000,'1');
insert into Cita (Cod_mascota,Cod_agenda,Num_documento_doctor,Fecha,Hora_cita,Tipo_servicio,Observacion,Precio,Estado)
Values (8,13,1045637823,'2022-02-06','14:30:00','peluqueria','se hixo un corte clasico a la mascota',10000,'2');
insert into Cita (Cod_mascota,Cod_agenda,Num_documento_doctor,Fecha,Hora_cita,Tipo_servicio,Observacion,Precio,Estado)
Values (5,3,1039504635,'2022-02-07','16:30:00','peluqueria','se hixo un corte clasico a la mascota',10000,'1');
insert into Cita (Cod_mascota,Cod_agenda,Num_documento_doctor,Fecha,Hora_cita,Tipo_servicio,Observacion,Precio,Estado)
Values (8,15,1059403765,'2022-02-03','13:30:00','peluqueria','se hixo un corte clasico a la mascota',10000,'2');
insert into Cita (Cod_mascota,Cod_agenda,Num_documento_doctor,Fecha,Hora_cita,Tipo_servicio,Observacion,Precio,Estado)
Values (7,3,1045637823,'2022-02-03','13:30:00','peluqueria','se hixo un corte clasico a la mascota',10000,'1');
insert into Cita (Cod_mascota,Cod_agenda,Num_documento_doctor,Fecha,Hora_cita,Tipo_servicio,Observacion,Precio,Estado)
Values (6,5,1039504635,'2022-02-11','13:30:00','peluqueria','se hixo un corte clasico a la mascota',10000,'2');
insert into Cita (Cod_mascota,Cod_agenda,Num_documento_doctor,Fecha,Hora_cita,Tipo_servicio,Observacion,Precio,Estado)
Values (8,8,1039504635,'2022-02-03','13:30:00','peluqueria','se hixo un corte clasico a la mascota',10000,'1');
insert into Cita (Cod_mascota,Cod_agenda,Num_documento_doctor,Fecha,Hora_cita,Tipo_servicio,Observacion,Precio,Estado)
Values (4,7,1059403765,'2022-03-11','13:30:00','peluqueria','se hixo un corte clasico a la mascota',10000,'2');
insert into Cita (Cod_mascota,Cod_agenda,Num_documento_doctor,Fecha,Hora_cita,Tipo_servicio,Observacion,Precio,Estado)
Values (12,15,1059403765,'2022-02-03','13:30:00','peluqueria','se hixo un corte clasico a la mascota',10000,'1');

insert into Cita (Cod_mascota,Cod_agenda,Num_documento_doctor,Fecha,Hora_cita,Tipo_servicio,Observacion,Precio,Estado)
Values (7,3,1073859476 ,'2022-02-03','13:30:00','peluqueria','se hixo un corte clasico a la mascota',10000,'1');
insert into Cita (Cod_mascota,Cod_agenda,Num_documento_doctor,Fecha,Hora_cita,Tipo_servicio,Observacion,Precio,Estado)
Values (2,8,1045637823,'2022-02-03','13:30:00','peluqueria','se hixo un corte clasico a la mascota',10000,'2');
insert into Cita (Cod_mascota,Cod_agenda,Num_documento_doctor,Fecha,Hora_cita,Tipo_servicio,Observacion,Precio,Estado)
Values (5,3,1039504635 ,'2022-02-03','13:30:00','peluqueria','se hixo un corte clasico a la mascota',10000,'1');
insert into Cita (Cod_mascota,Cod_agenda,Num_documento_doctor,Fecha,Hora_cita,Tipo_servicio,Observacion,Precio,Estado)
Values (2,15,1098504635,'2022-02-03','13:30:00','peluqueria','se hixo un corte clasico a la mascota',10000,'2');
insert into Cita (Cod_mascota,Cod_agenda,Num_documento_doctor,Fecha,Hora_cita,Tipo_servicio,Observacion,Precio,Estado)
Values (4,3,1039504635 ,'2022-02-03','13:30:00','peluqueria','se hixo un corte clasico a la mascota',10000,'1');
insert into Cita (Cod_mascota,Cod_agenda,Num_documento_doctor,Fecha,Hora_cita,Tipo_servicio,Observacion,Precio,Estado)
Values (2,18,1045637823,'2022-02-03','13:30:00','peluqueria','se hixo un corte clasico a la mascota',10000,'2');
insert into Cita (Cod_mascota,Cod_agenda,Num_documento_doctor,Fecha,Hora_cita,Tipo_servicio,Observacion,Precio,Estado)
Values (12,3,1073859476 ,'2022-02-03','13:30:00','peluqueria','se hixo un corte clasico a la mascota',10000,'1');
insert into Cita (Cod_mascota,Cod_agenda,Num_documento_doctor,Fecha,Hora_cita,Tipo_servicio,Observacion,Precio,Estado)
Values (7,14,1045637823,'2022-02-03','13:30:00','peluqueria','se hixo un corte clasico a la mascota',10000,'2');
insert into Cita (Cod_mascota,Cod_agenda,Num_documento_doctor,Fecha,Hora_cita,Tipo_servicio,Observacion,Precio,Estado)
Values (8,3,1098504635 ,'2022-02-03','13:30:00','peluqueria','se hixo un corte clasico a la mascota',10000,'1');
insert into Cita (Cod_mascota,Cod_agenda,Num_documento_doctor,Fecha,Hora_cita,Tipo_servicio,Observacion,Precio,Estado)
Values (7,5,1039504635,'2022-02-03','13:30:00','peluqueria','se hixo un corte clasico a la mascota',10000,'2');
---------------------# REGISTROS PATOLOGIAS#--------------------
insert into Patologia (Enfermedad,Cod_mascota)
values ('Rabia',1);
insert into Patologia (Enfermedad,Cod_mascota)
values ('Moquillo',3);
insert into Patologia (Enfermedad,Cod_mascota)
values ('Parvovirus', 5);
insert into Patologia (Enfermedad,Cod_mascota)
values ('No tiene enfermedades',7);
insert into Patologia (Enfermedad,Cod_mascota)
values ('Sano',9);
insert into Patologia (Enfermedad,Cod_mascota)
values ('Rabia', 11);
insert into Patologia (Enfermedad,Cod_mascota)
values ('Rabia',13);
insert into Patologia (Enfermedad,Cod_mascota)
values ('Sano',15);
insert into Patologia (Enfermedad,Cod_mascota)
values ('Sano',17);
insert into Patologia (Enfermedad,Cod_mascota)
values ('Moquillo',19);


insert into Patologia (Enfermedad,Cod_mascota)
values ('Moquillo',2);
insert into Patologia (Enfermedad,Cod_mascota)
values ('no tiene enfermedades',4);
insert into Patologia (Enfermedad,Cod_mascota)
values ('Rabia',3);
insert into Patologia (Enfermedad,Cod_mascota)
values ('Rabia',8);
insert into Patologia (Enfermedad,Cod_mascota)
values ('Moquillo',10);
insert into Patologia (Enfermedad,Cod_mascota)
values ('Moquillo',12);
insert into Patologia (Enfermedad,Cod_mascota)
values ('Sano',14);
insert into Patologia (Enfermedad,Cod_mascota)
values ('Sin enfermedades',6);
insert into Patologia (Enfermedad,Cod_mascota)
values ('Moquillo',18);
insert into Patologia (Enfermedad,Cod_mascota)
values ('Sano', 20);

insert into Patologia (Enfermedad,Cod_mascota)
values ('Parvovirus', 1);
insert into Patologia (Enfermedad,Cod_mascota)
values ('Moquillo', 23);
insert into Patologia (Enfermedad,Cod_mascota)
values ('Rabia',25);
insert into Patologia (Enfermedad,Cod_mascota)
values ('Sano',27);
insert into Patologia (Enfermedad,Cod_mascota)
values ('Moquillo',29);
insert into Patologia (Enfermedad,Cod_mascota)
values ('Moquillo',30);
insert into Patologia (Enfermedad,Cod_mascota)
values ('Rabia',22);
insert into Patologia (Enfermedad,Cod_mascota)
values ('Sano',24);
insert into Patologia (Enfermedad,Cod_mascota)
values ('Sano',26);
insert into Patologia (Enfermedad,Cod_mascota)
values ('sano',28);

-------------------------- # 	CONSULTAS   # ----------------------------------------------
select * from usuario;
select * from agenda;
select * from cita;
select * from cliente;
select * from mascota;
select * from patologia;
select * from agenda where num_documento=104950789;
select * from agenda where num_documento=1039504635;
select * from cita where num_documento_doctor=104950789;
select * from cita where num_documento_doctor=104952605 ;
select * from cita where cod_mascota=1 ;
select * from cita where cod_mascota=4 ;
select * from mascota where cod_cliente=17;
select * from mascota where cod_cliente=24;
select * from mascota where cod_cliente=18;
select * from patologia where cod_mascota=3;
select * from patologia where cod_mascota=1;
select * from cita where cod_agenda=7;
-------  #CONSULTA MULTITABLA#----------------
select Usuario.Num_documento "Número documento ", Usuario.Nombre_completo "Nombre completo",Usuario.Rol " Rol",Usuario.Numero_celular "Número celular", Agenda.Cod_agenda "Código agenda",Inicio_dia "Inicio agenda",Fin_dia "Fin agenda",Inicio_hora "Inico hora agenda",Fin_hora "Fin hora agenda",Dias_atencion" Dias de atencion" from Usuario inner join Agenda on  Usuario.Num_documento=Agenda.Num_documento;
select Cliente.Cod_cliente "Código cliente",Cliente.Nombre_cliente "Nombre del cliente",Nombre_mascota "Nombre Mascota",Edad_mascota "Edad de la mascota",Peso_mascota "Peso de la mascota",Raza_mascota "Raza de la mascota",Sexo,Carnet_vacuna "Carent de vacunas" from Cliente inner join Mascota on Cliente.Cod_cliente=Mascota.Cod_mascota;
select Cod_cliente "Código cliente",Nombre_mascota "Nombre de la mascota",Frecuencia,Seguimiento_clinico "Seguimiento clínico",Observacion "Observación",Evolucion_medica "Evolución Médica",Diagnostico "Diagnóstico" from Mascota inner join Patologia on Mascota.Cod_mascota=Patologia.Cod_mascota;
select Cita.Cod_cita "Código cita",Mascota.Cod_mascota "Código mascota",Agenda.Cod_agenda "Código agenda",Nombre_mascota "Nombre de la mascota",Fecha "Fecha cita", Hora_cita "Hora de la cita",Tipo_servicio "Tipo de servicio",Precio from Cita inner join Agenda on Agenda.Cod_agenda=Cita.Cod_agenda inner join Mascota on Mascota.Cod_mascota=Cita.Cod_mascota;
----#PROCEDIMIENTOS ALMACENADOS#-----------------
#USUARIO# ---------------
---------- # login#----------------
create procedure login (
in usu varchar(255),
in contra varchar(255))
select Nickname,Clave from Usuario where Nickname = usu AND Clave = contra;
select * from usuario;
-- #registro-------------------
create procedure registrar(
in nd int,
in td enum("Tarjeta de identidad","Cedula de Ciudadania","Cedula de extranjeria"),
in nom varchar(255),
in contra varchar(255),
in usu varchar(255),
in dir varchar(255),
in tel int,
in ce varchar(255),
in fn date,
in rl enum ("Administrador","Doctor","Asistente","Usuario"),
in est enum ("si","no"),
in nc int,
in fr date,
in g enum("F","M"),
in tp varchar (255),
in exp enum ("si","no")
)
insert into Usuario (Num_documento,Tipo_documento,Nombre_completo,Clave,Nickname,Direccion,Telefono,Correo_electronico,Fecha_nacimiento,Rol,Estado,Numero_celular,Fecha_registro,Genero,Titulo_profesional,Experiencia)
values(nd,td,nom,contra,usu,dir,tel,ce,fn,rl,est,nc,fr,g,tp,exp) ;
call registrar ("1028860672","1","michel","150904","michi","cr 140 #125 d","2389486","michi@gmail.com","2005/09/15","","","3023365236",curdate(),"F","","");
delete from Usuario where Num_documento=1028860672;
select* from Usuario;
