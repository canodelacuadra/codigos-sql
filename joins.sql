 #join simple con todo

 select * from libros
  join editoriales
  on libros.id_editorial=editoriales.id_editorial;
#simplificando sentencia
select * from libros as l
  join editoriales as e
  on l.id_editorial=e.id_editorial;

select l.nombre_libro, e.nombre_editorial
from libros as l
  join editoriales as e
  on l.id_editorial=e.id_editorial;


  select l.nombre_libro, l.genero, e.nombre_editorial
from libros as l
  join editoriales as e
  on l.id_editorial=e.id_editorial;

  