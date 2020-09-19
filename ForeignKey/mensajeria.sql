DROP DATABASE if exists mensajeria;
CREATE DATABASE mensajeria DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE mensajeria;
CREATE TABLE usuarios (
    id_usuario INT unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_usuario VARCHAR(99) UNIQUE NOT NULL
) ENGINE = InnoDB;
CREATE TABLE mensajes (
    id_mensaje INT unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT unsigned NOT NULL,
    contenido_mensaje TEXT NOT NULL,
    CONSTRAINT modificar_usuario FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB;
INSERT INTO USUARIOS
VALUES (NUll, 'pepe'),
    (NUll, 'Ramón'),
    (NUll, 'Tomás'),
    (NUll, 'Humberto'),
    (NUll, 'María del Monte');
INSERT INTO mensajes
VALUES 
    (NUll, 1, 'Hola Soy Pepe'),
    (NUll, 2, 'Hola Soy Ramón'),
    (NUll, 3, 'Hola Soy Tomás'),
    (NUll, 4, 'Hola Soy Humberto'),
    (NUll, 2, 'Soy Ramón Hurtado de Salamanca'),
    (NUll, 3, 'Hola Ramón'),
    (NUll, 4, 'Qué tal en Salamanca'),
    (NUll, 1, 'Soy Pepe, y también soy de Salamanca')
    
    ;
-- selects
show index  from mensajes;
show index from usuarios;
Select *
from usuarios;
Select distinct nombre_usuario
from usuarios;

SELECT 
usuarios.nombre_usuario as nickname,
mensajes.contenido_mensaje as mensaje
from mensajes
join usuarios
on mensajes.id_usuario = usuarios.id_usuario
;

-- Este no se borra
delete from usuarios
where id_usuario = 4;
-- Pero este sí
delete from usuarios
where id_usuario = 5;
--
UPDATE usuarios
SET id_usuario = 5
WHERE id_usuario = 4;
UPDATE usuarios
SET nombre_usuario = 'María del Monte'
WHERE id_usuario = 4;