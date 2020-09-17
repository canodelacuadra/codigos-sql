select nombre_pizza as nombre,
precio_pizza as precio
 from pizzas
union
select 
nombre_entrante,
precio_entrante
 from entrantes

union
select 
nombre_postre,
precio_postre
 from postres
 ;

select 
pizzas.nombre_pizza, 
entrantes.nombre_entrante,
(entrantes.precio_entrante + pizzas.precio_pizza) as precio
 from pizzas cross join entrantes;