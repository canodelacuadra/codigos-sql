DROP DATABASE if exists biblioteca;
CREATE DATABASE biblioteca;
USE biblioteca;
CREATE TABLE libros (
  id_libro INT unsigned zerofill NOT NULL AUTO_INCREMENT,
  nombre_libro VARCHAR(99) NOT NULL,
  nombre_autor varchar(99) null,
  apellidos_autor varchar(99) null,
  id_genero int(3) null ,
  id_editorial int(3) zerofill unsigned not null ,
  precio FLOAT(6, 2) unsigned zerofill,
  cantidad INT(3) unsigned zerofill not null default 0,
  PRIMARY KEY (id_libro)
);
CREATE TABLE editoriales (
  id_editorial INT(3) zerofill unsigned NOT NULL AUTO_INCREMENT,
  nombre_editorial VARCHAR(150) NOT NULL,
  domicilio_editorial VARCHAR(150) NOT NULL,
  PRIMARY KEY (id_editorial)
);
CREATE TABLE generos (
  id_genero INT(3) NOT NULL AUTO_INCREMENT,
  nombre_genero VARCHAR(99) NOT NULL,
  PRIMARY KEY (id_genero)

);
# insertamos registros de prueba en libros
INSERT INTO libros
VALUES 
(NULL,'Señor de los Anillos','JR','Tolkien',1,1,10.50,3),
(NULL, 'Dune','Frank','Herbert', 2, 2, 5.00,4),
(NULL,'Naranja Mecanica','Anthony','Burgess',2,1,6.50,1),
(NULL, 'Matilda','Roald','Dahl', 3, 4, 10.50,4),
(NULL,'Charlie y la Fabrica de Chocolates','Roald','Dahl',1,3,13.50,4),
(NULL, 'Pedro Paramo', 'Juan ','Rulfo', 4, 4, 50.2,1),
(NULL, 'Doña Barbara','Romulo','Gallegos', 4, 2, 140.00,1),
(NULL, 'Don Quijote','Miguel','de Cervantes', 1,5, 45.35,2),
(NULL,'Cien años de soledad','Gabriel', 'Garcia Marquez', 1,2,27.34,3),
(NULL, 'La Regenta','Leopoldo','Alas Clarín', 4, 5, 4.20,3);
# insertamos registros de prueba en editoriales
INSERT INTO editoriales
VALUES (NULL, 'alfa-omega', 'Madrid'),
  (NULL, 'ilumina', 'Barcelona'),
  (NULL, 'planeta', 'Barcelona'),
  (NULL, 'Seix Barral', 'Madrid'),
  (NULL, 'santillana', 'Madrid');
INSERT INTO generos
VALUES
(1,'Fantasía'),
(2,'Ciencia Ficción'),
(3,'Infantil'),
(4,'Social'),
(5,'Misterio'),
(6,'Historia')
;