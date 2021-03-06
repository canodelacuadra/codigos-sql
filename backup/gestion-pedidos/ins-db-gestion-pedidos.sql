DROP DATABASE if exists gestion_pedidos;
CREATE DATABASE gestion_pedidos;
USE gestion_pedidos;
CREATE TABLE productos (
    id_producto INT unsigned zerofill NOT NULL AUTO_INCREMENT,
    nombre_producto VARCHAR(99) NOT NULL,
    precio_producto FLOAT(6, 2) unsigned zerofill,
    PRIMARY KEY (id_producto)
);
CREATE TABLE usuarios (
    id_usuario INT unsigned zerofill NOT NULL AUTO_INCREMENT,
    nombre_usuario VARCHAR(99) NOT NULL,
    PRIMARY KEY (id_usuario)
);
CREATE TABLE pedidos (
    id_pedido INT unsigned zerofill NOT NULL AUTO_INCREMENT,
    fecha_pedido TIMESTAMP,
    id_usuario INT unsigned zerofill NOT NULL,
    confirmar_pedido TINYINT NULL,
    PRIMARY KEY (id_pedido),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);
CREATE TABLE detalles (
    id_detalle INT unsigned zerofill NOT NULL AUTO_INCREMENT,
    id_pedido INT unsigned zerofill NOT NULL,
    id_producto INT unsigned zerofill NOT NULL,
    cantidad INT(2) DEFAULT 1,
    PRIMARY KEY (id_detalle),
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

-- 1
INSERT INTO productos
VALUES (NULL, 'Pizza Capriciosa', 14.00),
    (NULL, 'Pizza Puttanesca', 12.00),
    (NULL, 'Pizza quatro formagi', 16.00),
    (NULL, 'Pizza Procciutto', 12.50),
    (NULL, 'Pizza frutti di mare', 14.62);
-- 2
INSERT INTO usuarios
VALUES (NULL, 'raul');

-- 3 
INSERT INTO pedidos
VALUES (NULL, NULL, 1,NULL);

--4
INSERT INTO detalles
VALUES (NULL, 1, 1, 1);
INSERT INTO detalles
VALUES (NULL, 1, 2, 2);
--5 confirmar pedido
update pedidos
set confirmar_pedido =1
where id_pedido =1;






