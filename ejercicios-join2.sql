select
 producto.nombre_producto,
 producto.precio,
 fabricante.nombre_fabricante
 from producto join fabricante
 on producto.codigo_fabricante = fabricante.codigo
 order by producto.precio
 limit 1
 ;
 --4
 select
 producto.nombre_producto,
 producto.precio,
 fabricante.nombre_fabricante
 from producto join fabricante
 on producto.codigo_fabricante = fabricante.codigo
 order by producto.precio DESC
 limit 1
 ;
 --6
 select
 producto.nombre_producto,
 producto.precio,
 fabricante.nombre_fabricante
 from producto join fabricante
 on producto.codigo_fabricante = fabricante.codigo
where fabricante.nombre_fabricante = 'Lenovo';

 ;
 --7
  select
 producto.nombre_producto,
 producto.precio,
 fabricante.nombre_fabricante
 from producto join fabricante
 on producto.codigo_fabricante = fabricante.codigo
where fabricante.nombre_fabricante = 'Crucial'
and producto.precio > 200
;
--8
--7
  select
 producto.nombre_producto,
 producto.precio,
 fabricante.nombre_fabricante
 from producto join fabricante
 on producto.codigo_fabricante = fabricante.codigo
where fabricante.nombre_fabricante = 'Asus'
or fabricante.nombre_fabricante ='Hewlett-Packard'
or fabricante.nombre_fabricante ='Seagate'
;
--9
  select
 producto.nombre_producto,
 producto.precio,
 fabricante.nombre_fabricante
 from producto join fabricante
 on producto.codigo_fabricante = fabricante.codigo
where fabricante.nombre_fabricante in('Asus','Hewlett-Packard','Seagate')
;
--10
  select
 producto.nombre_producto,
 producto.precio,
 fabricante.nombre_fabricante
 from producto join fabricante
 on producto.codigo_fabricante = fabricante.codigo
where fabricante.nombre_fabricante like '%e'
;
--11
 select
 producto.nombre_producto,
 producto.precio,
 fabricante.nombre_fabricante
 from producto join fabricante
 on producto.codigo_fabricante = fabricante.codigo
where fabricante.nombre_fabricante like '%w%'
;
--12
 select
 producto.nombre_producto,
 producto.precio,
 fabricante.nombre_fabricante
 from producto join fabricante
 on producto.codigo_fabricante = fabricante.codigo
where producto.precio >= 10
order by producto.precio DESC , producto.nombre_producto ASC
;
--12
 select distinct
fabricante.codigo,
 fabricante.nombre_fabricante
 from producto join fabricante
 on producto.codigo_fabricante = fabricante.codigo
;
 select 
 fabricante.nombre_fabricante,
 producto.nombre_producto
 from fabricante left join producto
 on producto.codigo_fabricante = fabricante.codigo
;
 select 
 fabricante.nombre_fabricante,
 producto.nombre_producto
 from fabricante left join producto
 on producto.codigo_fabricante = fabricante.codigo
where producto.codigo_fabricante is null
;




 

