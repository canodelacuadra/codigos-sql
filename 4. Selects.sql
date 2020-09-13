Select * from libros;

Select nombre_libro,
    precio,
    cantidad
from libros;

Select nombre_libro,
    precio,
    cantidad,
    precio * cantidad
from libros;

Select count(*)
from libros;