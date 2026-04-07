-- Qué producto se vende mucho pero genera poco ingreso

SELECT
    nombre,
    SUM(subtotal) AS total_ingresos,
    SUM(detalle_ventas.cantidad) AS cantidad_total_vendida,
    SUM(subtotal) / SUM(detalle_ventas.cantidad) AS ingreso_promedio
FROM productos
JOIN detalle_ventas
ON detalle_ventas.id_producto = productos.id_producto
GROUP BY productos.id_producto, nombre
ORDER BY cantidad_total_vendida DESC, ingreso_promedio ASC;


-- Top 3 productos con mayor ingreso

SELECT 
    nombre,
    SUM(subtotal) AS total_ingresos
FROM productos
JOIN detalle_ventas
ON detalle_ventas.id_producto = productos.id_producto
GROUP BY nombre
ORDER BY total_ingresos DESC
LIMIT 3;

-- Qué cliente compra más

SELECT 
    clientes.nombre AS cliente,
    SUM(detalle_ventas.subtotal) AS total_comprado
FROM clientes
JOIN ventas ON ventas.id_cliente = clientes.id_cliente
JOIN detalles_ventas ON detalle_ventas.id_venta = ventas.id_venta
GROUP BY clientes.id_cliente, clientes.nombre
ORDER BY total_comprado DESC
LIMIT 1;

-- En qué ciudad se vende más

SELECT 
    clientes.ciudad
    SUM(detalle_ventas.subtotal) AS total_ventas
FROM clientes
JOIN ventas ON ventas.id_cliente = clientes.id_cliente
JOIN detalles_ventas ON detalle_ventas.id_venta = ventas.id_venta
GROUP BY clientes.ciudad
ORDER BY total_ventas DESC
LIMIT 1;