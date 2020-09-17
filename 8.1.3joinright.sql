

insert into libros values
(
    null,
    'Harry Potter y la camara secreta',
    'J.K',
    'Rowling',
    null,
    3,
    25.90,
    2
    ),
    (
    null,
    'Harry Potter y el prisiones de AzKaban',
    'J.K',
    'Rowling',
    null,
    3,
    15.90,
    2
    );
select * from libros;
select 
libros.nombre_libro, 
generos.nombre_genero
from generos right join libros
on libros.id_genero = generos.id_genero
where libros.id_genero is null
;
