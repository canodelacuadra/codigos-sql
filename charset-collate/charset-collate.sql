DROP DATABASE if exists colacion;
CREATE DATABASE colacion;
USE colacion;


-- Creamos la tabla con charset y colaciones distintas
CREATE TABLE IF NOT EXISTS testColaciones (
    -- latin
    nombre01 CHAR(5) CHARSET latin1 COLLATE latin1_swedish_ci, -- es el que viene por defecto con latin
    nombre02 CHAR(5) CHARSET latin1 COLLATE latin1_spanish_ci,
    nombre03 CHAR(5) CHARSET latin1 COLLATE latin1_general_cs, -- distingue entre mayúsculas y minúsculas
    nombre04 CHAR(5) CHARSET latin1 COLLATE latin1_bin,
    -- utf8
    nombre05 CHAR(5) CHARSET utf8 COLLATE utf8_general_ci, -- viene por defecto
    nombre06 CHAR(5) CHARSET utf8 COLLATE utf8_spanish_ci,
    nombre07 CHAR(5) CHARSET utf8 COLLATE utf8_spanish2_ci,
 -- AScii  
    nombre08 CHAR(5) CHARSET ASCII COLLATE ascii_general_ci,
    nombre09 CHAR(5) CHARSET ASCII COLLATE ascii_bin
) ENGINE = MyISAM;

-- insertamos algunso datos
INSERT INTO testColaciones
VALUES
 ('Ñandú','Nandú','Nandu','Ñandú', 'Ñandú', 'Nandu','ÑAÑDU','ÑANdÙ','ñanDü'),
('Nandú','Ñandú','Nandu','ñandú','ñandú','ñandu','ñAÑDÚ','ÑANdÙ','ñanDü'),
('nândú','nândú','nându','nândú','nândú','nându','nâÑDU','nâñdÙ','nâñDü')
;

-- Mostrar los CHARSETs instalados:
SHOW CHARACTER SET;
-- Mostrar COLLATIONS instalados:
SHOW COLLATION;
SHOW COLLATION LIKE 'latin1%';
SHOW COLLATION LIKE 'utf8%';
SHOW COLLATION LIKE 'ascii%';

-- saber el charset y la collation de nuestras bases de datos
SELECT schema_nombre AS 'database',
    default_character_set_nombre AS 'charset',
    default_collation_nombre 'collation'
FROM information_schema.SCHEMATA;

SELECT * FROM testColaciones; -- no coge los datos ascii

SELECT *
FROM testColaciones order by nombre01;-- no ordena por ñ

SELECT distinct nombre01  as latinswedish

FROM testColaciones; -- n y ñ son lo mismo

SELECT distinct nombre02 as lastinspanish
 FROM testColaciones; -- n y ñ son diferentes pero las mayúscualas y minúculas son lo mismo
SELECT distinct nombre03  as latinccs
FROM testColaciones; -- n mayúscula y n minúscula son diferentes

SELECT distinct nombre04 as latinbin
FROM testColaciones; -- diferentes n y ñ y mayusculas

SELECT distinct nombre05 as utf8general
FROM testColaciones; -- no distingue entre n y ñ

SELECT distinct nombre06 AS spanish_ci
FROM testColaciones;
order by nombre06;
-- si distingue entre n y ñ

SELECT distinct nombre07 AS spanish2_ci
FROM testColaciones
order by nombre07;
-- si distingue entre n y ñ



SELECT *
FROM testColaciones
order by nombre02;
-- no oredena por ñ
SELECT *
FROM testColaciones
order by nombre02;


TRUNCATE  table testColaciones;





