select 
 libros.nombre_libro as nombre,
concat(libros.nombre_autor,' ', libros.apellidos_autor ) as autor,
generos.nombre_genero as genero,
editoriales.nombre_editorial as editorial
from libros join generos
on libros.id_genero = generos.id_genero
join editoriales
on libros.id_editorial = editoriales.id_editorial
;