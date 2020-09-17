select * from producto;
select * from fabricante;
select * 
from producto join fabricante
on producto.codigo_fabricante = fabricante.codigo
;


--1
select producto.nombre_producto, producto.precio,fabricante.nombre_fabricante 
from producto  join fabricante 
on producto.codigo_fabricante = fabricante.codigo
;
--2
select producto.nombre_producto, producto.precio,fabricante.nombre_fabricante 
from producto  join fabricante 
on producto.codigo_fabricante = fabricante.codigo
order by fabricante.nombre_fabricante
;
--3
select producto.codigo, producto.nombre_producto,
fabricante.codigo, fabricante.nombre_fabricante 
from producto  join fabricante 
on producto.codigo_fabricante = fabricante.codigo
;
