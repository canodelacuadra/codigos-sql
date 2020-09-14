SELECT nombre FROM producto;
--2
SELECT nombre, precio FROM producto;
--3
SELECT * FROM producto;
-- 4 
SELECT nombre, precio, precio*1.19 FROM producto;
--5
SELECT nombre, precio AS €,round(precio*1.19,2) as $ FROM producto;
--6
SELECT upper(nombre) as artículo, precio AS €,round(precio*1.19,2) as $ FROM producto;
--7
select codigo_fabricante from producto;
--8
select distinct codigo_fabricante from producto;
--9
select nombre from fabricante order by nombre;
--10
select nombre from fabricante order by nombre DESC;
--11
SELECT nombre, precio from producto order by nombre ASC ;
--12
select * from fabricante limit 5;
--13
select * from fabricante limit 3,5;
--14
select nombre,precio from producto order by precio limit 1;
--15
select nombre,precio
 from producto 
 order by precio DESC 
 limit 1;
 --16 
 select nombre , codigo
 from fabricante
 where codigo =2;
 --17
 select nombre,precio
 from producto 
 where precio <=120;
 --18
  select nombre,precio
 from producto 
 where precio >=400;
 --19
 
 --19bis
  select nombre,precio
 from producto 
 where not precio >= 400;
 --20
  select nombre,precio
 from producto 
 where  precio>= 80 and precio<=300;
  --21
  select nombre,precio
 from producto 
 where  precio between 80 and 300;
   --22
  select nombre,precio
 from producto 
 where  codigo_fabricante = 6 and precio >200;

 --23
 select  codigo_fabricante as cod ,nombre as articulo 
 from producto 
 where codigo_fabricante = 1 or codigo_fabricante =3 or codigo_fabricante =5;
 
select nombre, codigo_fabricante as cod
from producto 
having cod=1 or cod=3 or cod=5;
--24

select nombre, codigo_fabricante as cod
from producto 
having cod in(1,3,5);

 select  codigo_fabricante  ,nombre 
 from producto 
 where codigo_fabricante in (1,3,5);
--25
select nombre, precio*100 as centimos
 from producto;

---26
select nombre from fabricante
where nombre like 's%';
--27
select nombre from fabricante
where nombre like '%e';
--28
select nombre from fabricante
where nombre like '%w%';
--29
select nombre from producto
where nombre like '%Portatil%';
--30

