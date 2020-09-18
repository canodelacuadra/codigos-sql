# Gestión Pedidos en MySQL
Tenemos una serie de productos y queremos gestionar los pedidos que hacen los clientes mediante una base de datos mysql.

Es una aplicación muy simple que luego se podría gestionar con php y html, css y javascript

El proceso sería el siguiente

1. Tenemos los productos
2. Registramos el usuario
3. El usuario registra pedido
4. El usuario detalla el pedido
5. El usuario confirma el pedido
6. El usuario ve el pedido con el precio total.
7. El usuario ve un listado de todos los pedidos agrupados por pedido

Lo gestionamos con las siguientes tablas: 

## Tablas
### tabla productos
Se encarga de registrar los productos a la venta
* nombre
* precio
### tabla clientes
Se encarga de registrar los usuarios independientemente de su rol, clientes o empleados
* nombre
* dni
### tabla pedidos
Se encarga de registrar los pedidos: activarlos y confirmarlos
* cliente
* fecha pedido
* confirmar pedido (se hace después de terminar detalles_pedido)

### tabla detalles_pedido
Se encarga de listar los productos adquiridos en función de un pedido concreto

* producto
* cantidad
* pedido al que va asociado

### vista pedido
Vista resumen de un pedido con 

* cliente
* detalles de pedido con cantidad y precio
* precio total

### vista pedidos
Vista de todos los pedidos agrupados por pedido

* pedido
* clente
* detalles de pedido