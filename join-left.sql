select *
from editoriales
    left join libros 
    on editoriales.id_editorial = libros.id_editorial;
select *
from libros
    left join editoriales
    on editoriales.id_editorial = libros.id_editorial;