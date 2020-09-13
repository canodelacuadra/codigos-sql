DROP DATABASE if exists biblioteca;
# crear biblioteca base de datos
CREATE DATABASE biblioteca CHARACTER SET utf8mb4;
# usar base de datos biblioteca para ingresar
USE biblioteca;
CREATE TABLE libros (
  id_libro INT(6) unsigned zerofill NOT NULL AUTO_INCREMENT,
  nombre_libro VARCHAR(150) NOT NULL,
  autor varchar(30) DEFAULT 'Desconocido' null,
  genero VARCHAR(150) NOT NULL,
  id_editorial TINYINT zerofill unsigned,
  precio FLOAT(6, 2) zerofill unsigned,
  cantidad smallint DEFAULT 0,
  PRIMARY KEY (id_libro)
);
CREATE TABLE editoriales (
  id_editorial TINYINT zerofill unsigned NOT NULL AUTO_INCREMENT,
  nombre_editorial VARCHAR(150) NOT NULL,
  domicilio_editorial VARCHAR(150) NOT NULL,
  PRIMARY KEY (id_editorial)
);
INSERT INTO libros
VALUES (
    NULL,
    'Señor de los Anillos',
    'Tolkien',
    'fantasía',
    1,
    6.00,
    1
  ),
  (
    NULL,
    'Dune',
    'Frank Herbert',
    'Ciencia Ficción',
    3,
    10.00,
    3
  ),
  (
    NULL,
    'Naranja Mecanica',
    'Anthony Burgess',
    'Ciencia Ficción',
    1,
    6.30,
    1
  ),
  (NULL, 'Matilda', NULL, 'Infantil', 2, 3.00, null),
  (
    NULL,
    'Charlie y la Fabrica de Chocolates',
    '',
    'fantasía',
    3,
    3.00,
    1
  ),
  (
    NULL,
    'Pedro Paramo',
    'Juan Rulfo',
    'social',
    1,
    7.00,
    3
  ),
  (NULL, 'Doña Barbara', null, 'social', 2, 3.60, 1),
  (
    NULL,
    'Don Quijote',
    'Miguel de Cervantes',
    'aventuras',
    2,
    3.00,
    1
  ),
  (
    NULL,
    'Cien años de soledad',
    'Gabriel García Márquez',
    'misterio',
    2,
    3.00,
    2
  ),
  (
    NULL,
    'La Regenta',
    'Leopoldo Arias',
    'social',
    3,
    3.00,
    1
  );
INSERT INTO editoriales
VALUES (NULL, 'alfa-omega', 'Madrid'),
  (NULL, 'ilumina', 'Barcelona'),
  (NULL, 'planeta', 'Barcelona'),
  (NULL, 'Seix Barral', 'Madrid'),
  (NULL, 'santillana', 'Madrid'),
  (NULL, 'Visor', 'Madrid');