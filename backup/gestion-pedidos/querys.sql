select *
from productos;
select *
from usuarios;
select *
from pedidos;
select *
from detalles;

--6 Vista del pedido 1
select
usuarios.nombre_usuario as nombre, 
productos.nombre_producto,
productos.precio_producto,
detalles.cantidad,
pedidos.id_pedido,
pedidos.fecha_pedido

from pedidos
join usuarios
on pedidos.id_usuario = usuarios.id_usuario
join detalles
on detalles.id_pedido = pedidos.id_pedido
join productos
on detalles.id_producto = productos.id_producto
where pedidos.id_pedido= 1
;




