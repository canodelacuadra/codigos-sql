select * from libros;
select id_genero from generos
where nombre_genero ='fantasía';
select id_editorial from editoriales
where nombre_editorial ='Planeta';

insert into libros values
(
    null,
    'Harry Potter y la piedra filosofal',
    'J.K',
    'Rowling',
    1,
    3,
    45.90,
    2

    );
insert into libros values
(
    null,
    'Harry Potter y la piedra filosofal',
    'J.K',
    'Rowling',
    (select id_genero from generos
where nombre_genero ='fantasía'),
    (select id_editorial from editoriales
where nombre_editorial ='Planeta'),
    45.90,
    2

    );
    select * from vistabiblioteca; 
