-- =========================================================================
-- PROYECTO: Capa de Consultas (DQL) - E-commerce
-- =========================================================================

-- Consulta 1: INNER JOIN (Listar los pedidos junto con el nombre del cliente que los realizó)
select
	p.pedido_id,
	u.nombre as cliente,
	p.estado,
	p.fecha_pedido
from pedidos p
inner join usuarios u on p.usuario_id = u.usuario_id;

-- Consulta 2: LEFT JOIN (Listar todos los productos y ver si tienen registros en los detalles de pedidos, útil para detectar productos sin ventas)
select
	pr.producto_id,
	pr.nombre_producto,
	dp.cantidad
from productos pr
left join detalle_pedidos dp on pr.producto_id = dp.producto_id;

-- Consulta 3: Función de agregación + GROUP BY (Calcular la cantidad total de productos comprados por cada pedido)
select
	pedido_id,
	sum(cantidad) as total_items_comprados,
	count(producto_id) as variedades_distintas
from detalle_pedidos
group by pedido_id;

-- Consulta 4: CTE (WITH) (Calcular primero el gasto total por pedido usando una CTE y luego consultar sobre ella)
with GastoPorPedido as (
	select
		dp.pedido_id,
		sum(dp.cantidad * pr.precio) as monto_total
	from detalle_pedidos dp
	join productos pr on dp.producto_id = pr.producto_id
	group by dp.pedido_id
)
select
	pedido_id,
	monto_total
from GastoPorPedido
where monto_total > 50;

-- Consulta 5: ORDER BY + LIMIT (Reporte de "Top N" - Los 3 productos más caros del inventario)
select
	nombre_producto,
	precio,
	stock
from productos
order by precio desc
limit 3;