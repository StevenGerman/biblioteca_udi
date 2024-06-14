INSERT INTO Ubicacion (ubiNombre, ubiObservacion) VALUES ("estante 1","con libros");
INSERT INTO Inventario (invNumero, libroID, ubicacionID, invIntegridad) VALUES (" 1",10,1,"con libros");
INSERT INTO Personas (perDNI, perNombre, perApellido, perTelefono, perDomicilio, perMail, localidadID, rolID) VALUES ('12345678', 'Juan', 'Perez', '1144445555', 'Calle 123, 456', 'correo@ejemplo.com', 1, 2);
INSERT INTO Personas (perDNI, perNombre, perApellido, perTelefono, perDomicilio, perMail, localidadID, rolID) VALUES ('87654321', 'Maria', 'Gomez', '1166667777', 'Avenida del Sol 123', 'correo@ejemplo.com', 2, 1);
INSERT INTO Personas (perDNI, perNombre, perApellido, perTelefono, perDomicilio, perMail, localidadID, rolID) VALUES ('34567890', 'Pedro', 'Lopez', '1122223333', 'Barrio Flores 456', 'correo@ejemplo.com', 3, 3);
INSERT INTO Paises (paisNombre) VALUES ('Argentina');
INSERT INTO Paises (paisNombre) VALUES ('Brasil');
INSERT INTO Provincias (provNombre, paisID) VALUES ('Buenos Aires', 1);
INSERT INTO Provincias (provNombre, paisID) VALUES ('Entre Rios', 2);
INSERT INTO Provincias (provNombre, paisID) VALUES ('Distrito Federal', 2);
INSERT INTO Localidad (locNombre, locCP, ProvinciaID) VALUES ('nogoya', 3150, 1), ('parana', 3150, 2), ('gualeguay', 3150, 3);
INSERT INTO Roles (rolNombre) VALUES ('Estudiante');
INSERT INTO Roles (rolNombre) VALUES ('Bibliotecario');
INSERT INTO Roles (rolNombre) VALUES ('Administrador');
INSERT INTO Autores (autNombre, autApellido, autFecNac, autFecDes, autBiografia) VALUES ('Jorge Luis', 'Borges', '1899-08-24', '1986-06-14', 'Escritor argentino, que abarca géneros como la poesía, el ensayo y la narrativa. Obras notables: El Aleph, El libro de arena.');
INSERT INTO Autores (autNombre, autApellido, autFecNac, autFecDes, autBiografia) VALUES ('Isabel', 'Allende', '1947-02-02', NULL, 'Escritora chilena, reconocida por sus novelas que abordan temas como el amor, la familia y la política. Sus obras han sido llevadas al cine y la televisión. Obras notables: La casa de los espíritus, Eva Luna.');
INSERT INTO Autores (autNombre, autApellido, autFecNac, autFecDes, autBiografia) VALUES ('Mario', 'Vargas Llosa', '1936-03-28', NULL, 'Escritor peruano, Premio Nobel de Literatura en 2010. A través de la novela, el ensayo, el teatro y la crítica, explora temas como el poder, la política, la identidad y el erotismo. Obras notables: La ciudad y los perros, Conversación en la catedral, La guerra del fin del mundo.');
INSERT INTO Autores (autNombre, autApellido, autFecNac, autFecDes, autBiografia) VALUES ('Julio', 'Cortázar', '1914-08-26', '1984-02-12', 'Escritor argentino, considerado uno de los mayores exponentes del boom latinoamericano. A través de su obra, que incluye narrativa, poesía y ensayo, explora temas como la realidad, el juego y la búsqueda de la libertad. Obras notables: Rayuela, Cronopios y famas, Hombres ajenos.');
INSERT INTO Materia (matNombre) VALUES ('Matemáticas'), ('Lengua'), ('Biología');
INSERT INTO SigTopografica (topNombre) VALUES ('Tapa dura'), ('Tapa blanda'), ('Rústico');
INSERT INTO Libros (libTitulo, libAnio, SigTopograficaID, AutorID, EditorialID, MateriaID, libNotaContenido) VALUES ('Cien años de soledad', '1967', 1, 1, 10, 1, 'Contenido 1'), ('La casa de los espíritus', '1982', 2, 2, 11, 2, 'Contenido 2'), ('Rayuela', '1963', 3, 3, 12, 3, 'Contenido 3');








select *from editorial;

insert into ubicacion (ubiNombre, ubiObservacion) values("estante 1","con libros");
insert into inventario (invNumero, libroID, ubicacionID, invIntegridad) values(" 1",10,1,"con libros");
##PERSONAS
INSERT INTO personas (perDNI, perNombre, perApellido, perTelefono, perDomicilio, perMail, localidadID, rolID) VALUES ('12345678', 'Juan', 'Perez', '1144445555', 'Calle 123, 456', 7, 2);
INSERT INTO personas (perDNI, perNombre, perApellido, perTelefono, perDomicilio,perMail, localidadID, rolID)
VALUES ('87654321', 'Maria', 'Gomez', '1166667777', 'Avenida del Sol 123', 8, 1);
INSERT INTO personas (perDNI, perNombre, perApellido, perTelefono, perDomicilio,perMail, localidadID, rolID)
VALUES ('34567890', 'Pedro', 'Lopez', '1122223333', 'Barrio Flores 456', 9, 3);

select *from pais;

##Pais
INSERT INTO paises (paisNombre) VALUES ('Argentina');
INSERT INTO paises (paisNombre) VALUES ('Brasil');
select * from paises;
##Provicia
INSERT INTO provincias (provNombre, paisID)
VALUES ('Buenos Aires', 1);
INSERT INTO provincias (provNombre, paisID)
VALUES ('Entre Rios', 2);
INSERT INTO provincias (provNombre, paisID)
values ('Distrito Federal', 2);

INSERT INTO localidad (locNombre,locCP, ProvinciaID)
values ('nogoya',3150,1),
('parana',3150, 2),
('gualeguay',3150, 3);
select * from provincias;
##Roles
INSERT INTO roles (rolNombre) VALUES ('Estudiante');
INSERT INTO roles (rolNombre) VALUES ('Bibliotecario');
INSERT INTO roles (rolNombre) VALUES ('Administrador');
select * from autor;

INSERT INTO autores (autNombre, autApellido, autFecNac, autFecDes, autBiografia)
VALUES
  ('Jorge Luis', 'Borges', '1899-08-24', '1986-06-14', 'Escritor argentino, , que abarca géneros cempo, la realidad y el laberinto. Obras notablesEl Aleph*, El libro de arena.'),
  ('Isabel', 'Allende', '1947-02-02', NULL, 'Escritora chilena, reconocida por sus noobras han sido llevadas al cine y la televisión. Obras or y de sombra*, Eva Luna.'),
  ('Mario', 'Vargas Llosa', '1936-03-28', NULL, 'Escritor peruano, Premio Nosayo y el teatro, explora temas como el poder, la política, laa catedral*, La guerra del fin del mundo.'),
  ('Julio', 'Cortázar', '1914-08-26', '1984-02-12', 'Escritor argen Obras notables: Rayuela, Cronopios y famas, Hombres ajenos.');
  select*from autores;

INSERT INTO editorial (ediNombre, ediDireccion, localidadID, ediTelefono, ediEmail)
VALUES
  ('Random House', 'Calle Falsa 123', 1, '+54 11 4567', 'info@randomhouse.com'),
  ('Penguin Random House', 'Calle Real 456', 2, '+54 11 5678', 'penguin@randomhouse.com'),
  ('Planeta', 'Avenida Principal 789', 3, '+54 11 9876', 'editorialplaneta@gmail.com');
  

  INSERT INTO materia (matNombre)
VALUES
  ('matematica'),  -- Genre: Ciencia Ficción (ID 1)
  ('lengua '),  -- Genre: Romance (ID 2)
  ('biologia');  -- Genre: Aventura (ID 3)
  
  INSERT INTO sigtopografica (topNombre) VALUES ('tapa dura'),('tapa blansa'),('rustico');
  
  select* from editorial;
  INSERT INTO libros (libTitulo, libAnio, SigTopograficaID,  autorID, editorialID, materiaID, libNotaContenido)
VALUES
  ('Cien años de soledad', '1967',1 ,  1, 10, 1,"contenido1"),  -- Author: Gabriel García Márquez, Editorial: Random House, Genre: Ciencia Ficción, Theme: Viaje espacial
  ('La casa de los espíritus', '1982',2 , 2, 11, 2,"contenido2"),  -- Author: Isabel Allende, Editorial: Penguin Random House, Genre: Romance, Theme: Amor prohibido
  ('Rayuela', '1963', 3, 3, 12, 3,"contenido3");  -- Author: Julio Cortázar, Editorial: Planeta, Genre: Aventura, Theme: Búsqueda del tesoro
