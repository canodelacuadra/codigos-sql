select 
libros.nombre_libro, 
libros.id_editorial,
editoriales.nombre_editorial,
from libros join editoriales
on libros.id_editorial = editoriales.id_editorial;
;


select 
libros.nombre_libro, 
editoriales.nombre_editorial
from libros join editoriales
on libros.id_editorial = editoriales.id_editorial
where editoriales.nombre_editorial like '%lumina'
;
