select * from producto;
select * from fabricante;
update producto
set precio = 190
where codigo =6
;
-- Modificamos a todos los productos Samsung
update producto
set precio = precio*0.9
where codigo_fabricante = 4
;