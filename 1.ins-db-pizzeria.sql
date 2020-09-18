DROP DATABASE if exists pizzeria;
CREATE DATABASE pizzeria;
USE pizzeria;
CREATE TABLE pizzas (
  id_pizza INT unsigned zerofill NOT NULL AUTO_INCREMENT,
  nombre_pizza VARCHAR(99) NOT NULL,
  precio_pizza FLOAT(6, 2) unsigned zerofill,
  PRIMARY KEY (id_pizza)
);
CREATE TABLE entrantes (
  id_entrante INT unsigned zerofill NOT NULL AUTO_INCREMENT,
  nombre_entrante VARCHAR(99) NOT NULL,
  precio_entrante FLOAT(6, 2) unsigned zerofill,
  PRIMARY KEY (id_entrante)
);
CREATE TABLE postres (
  id_postre INT unsigned zerofill NOT NULL AUTO_INCREMENT,
  nombre_postre VARCHAR(99) NOT NULL,
  precio_postre FLOAT(6, 2) unsigned zerofill,
  PRIMARY KEY (id_postre)
);

# insertamos 
INSERT INTO pizzas
VALUES (NULL, 'Pizza Capriciosa', 14),
  (NULL, 'Pizza Puttanesca', 12),
  (NULL, 'Pizza quatro formagi', 16),
  (NULL, 'Pizza Procciutto', 12),
  (NULL, 'Pizza frutti di mare', 14);
INSERT INTO entrantes
VALUES (NULL, 'Bruschetta di pommodoro all aglio', 3.50),
  (NULL, 'Mozzarela de buffala', 4),
  (NULL, 'carpacio di tonno', 8),
  (NULL, 'insalata de cippollini', 5),
  (NULL, 'melanzane alla parmigiana', 8);
INSERT INTO postres
VALUES (NULL, 'gielatto de pistaccio', 3.40),
  (NULL, 'tiramisú', 4),
  (NULL, 'cannoli', 2.50),
  (NULL, 'pannacota', 3.50),
  (NULL, 'torta di San Marco', 5.00);