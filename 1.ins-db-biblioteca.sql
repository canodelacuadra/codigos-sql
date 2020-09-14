
######incializador de la base de datos con tablas no relacionadas
########
########
DROP DATABASE if exists biblioteca;
# crear biblioteca base de datos
CREATE DATABASE biblioteca;
# usar base de datos biblioteca para ingresar
USE biblioteca;
# creamos tabla libros
CREATE TABLE libros (
  id_libro INT unsigned zerofill NOT NULL AUTO_INCREMENT,
  nombre_libro VARCHAR(99) NOT NULL,
  genero VARCHAR(99) NOT NULL,
  editorial VARCHAR(99) ,
  precio FLOAT(4, 2) unsigned,
  PRIMARY KEY (id_libro)
);
# creamos tabla editoriales
CREATE TABLE editoriales (
  id_editorial TINYINT zerofill unsigned NOT NULL AUTO_INCREMENT,
  nombre_editorial VARCHAR(150) NOT NULL,
  domicilio_editorial VARCHAR(150) NOT NULL,
  PRIMARY KEY (id_editorial)
);
# insertamos registros de prueba en libros
INSERT INTO libros
VALUES (
    NULL,
    'Señor de los Anillos',
    'fantasía',
    'Alfa-Omega',
    10.50
  ),
  (NULL, 'Dune', 'Ciencia Ficción', 'Planeta', 0.00),
  (
    NULL,
    'Naranja Mecanica',
    'Ciencia Ficción',
    'Alfa-Omega',
    6.50
  ),
  (NULL, 'Matilda', 'Infantil', 'Ilumina', 10.50),
  (
    NULL,
    'Charlie y la Fabrica de Chocolates',
    'fantasía',
    null,
    13.50
  ),
  (NULL, 'Pedro Paramo', 'social', 'Alfa-Omega', 50.2),
  (NULL, 'Doña Barbara', 'social', 'Ilumina', 140.00),
  (NULL, 'Don Quijote', 'misterio', 'Planeta', 45.35),
  (
    NULL,
    'Cien años de soledad',
    'misterio',
    'Ilumina',
    27.34
  ),
  (NULL, 'La Regenta', 'social', null, 3.20);
# insertamos registros de prueba en editoriales
INSERT INTO editoriales
VALUES (NULL, 'alfa-omega', 'Madrid'),
  (NULL, 'ilumina', 'Barcelona'),
  (NULL, 'planeta', 'Barcelona'),
  (NULL, 'Seix Barral', 'Madrid'),
  (NULL, 'santillana', 'Madrid');