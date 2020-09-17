insert into editoriales values
('null', 'anaya', 'A2'),
('null', 'SM', 'Getafe'),
('null', 'Vocento', 'la Castellana')
;



select 
libros.nombre_libro, 
libros.id_editorial,
editoriales.nombre_editorial
from libros join editoriales
on libros.id_editorial = editoriales.id_editorial;
;
select 
editoriales.nombre_editorial,
libros.nombre_libro
from editoriales join libros
on editoriales.id_editorial = libros.id_editorial
;
select 
editoriales.nombre_editorial,
libros.nombre_libro
from editoriales left join libros
on editoriales.id_editorial = libros.id_editorial
;
select 
editoriales.nombre_editorial,
libros.nombre_libro
from editoriales left join libros
on editoriales.id_editorial = libros.id_editorial
where libros.nombre_libro is null;
;






