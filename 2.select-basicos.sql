select * from libros;
select * from editoriales;
select 
nombre_libro,
editorial,
 precio
  from libros;
  # selecciona la cantidad de libros
select count(*) from libros;
--lista las novelas de misterio
select nombre_libro, genero from libros 
where genero = 'misterio';

-- lista las novelas que no sean de misterio
select nombre_libro, genero from libros 
where genero <> 'misterio';
-- libros con precio menor de 10 €
select nombre_libro, genero, precio from libros 
where precio < 10;
-- libros con precio menor de 10 €
select nombre_libro,  precio from libros 
where precio between 5 and 10;
-- libros con precio menor de 10 €
select nombre_libro,  precio from libros 
where precio > 5 and precio< 10;

select nombre_libro,editorial,  precio from libros 
where editorial like '%lf%';

select nombre_libro,editorial,  genero from libros 
where genero in ('social', 'misterio');

select * from libros
where precio is null;
--cojo los primeros 5
select * from libros limit 5;
--cojo del 6 al 10
select * from libros limit 5, 10;



