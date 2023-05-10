DROP DATABASE if exists busybees;
CREATE DATABASE IF NOT EXISTS busybees;

USE busybees;

create TABLE PERFILES (
IDUSER INT PRIMARY KEY auto_increment not null,
USERNAME varchar (30),
NOMBRE varchar (30),
APELLIDO varchar (30),
NUMERO varchar (30),
EDAD INT,
SEXO varchar (30),
CORREO varchar (30),
CONTRASEÑA varchar (30));

CREATE TABLE NEGOCIOS (
  IDNEGOCIO INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  IDUSERN INT,
  NOMBRE_NEG VARCHAR(100),
  DESCRIPCION VARCHAR(255),
  CATEGORIA VARCHAR(50),
  HORARIO VARCHAR(100),
  TIPO VARCHAR(50),
  DELEGACION VARCHAR(50),
  COLONIA VARCHAR(50),
  ESTRELLAS INT,
  FOREIGN KEY (IDUSERN) REFERENCES PERFILES(IDUSER)
);

CREATE TABLE COMENTARIOS (
  ID_comentario INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  ID_negocio INT,
  comentario VARCHAR(255),
  FOREIGN KEY (ID_negocio) REFERENCES negocios(IDNEGOCIO)
);


INSERT INTO PERFILES (USERNAME, NOMBRE, APELLIDO, NUMERO, EDAD, SEXO, CORREO, CONTRASEÑA)
VALUES ('juanito123', 'Juan', 'Pérez', '5531083348', 25, 'Masculino', 'juanito123@email.com', 'password123'),
		('maria77', 'María', 'García', '5614806633', 30, 'Femenino', 'maria77@email.com', 'secretpassword');

INSERT INTO NEGOCIOS (IDUSERN, NOMBRE_NEG, DESCRIPCION, CATEGORIA, HORARIO, TIPO, DELEGACION, COLONIA, ESTRELLAS) 
VALUES (1, 'Mi negocio', 'Descripción de mi negocio', 'Categoría del negocio', 'Lunes a Viernes: 9am a 6pm, Sábados: 10am a 2pm', 'Tipo de negocio', 'Delegación/Municipio', 'Colonia/Barrio', 5);

INSERT INTO COMENTARIOS (ID_negocio, comentario) 
VALUES (1, 'Excelente servicio, altamente recomendado!');

SELECT * FROM PERFILES;
SELECT * FROM NEGOCIOS;
SELECT * FROM COMENTARIOS;
