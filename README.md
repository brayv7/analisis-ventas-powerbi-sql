Análisis de Ventas y Rentabilidad por Producto



Descripción del Proyecto

Este proyecto consiste en el análisis de datos de ventas con el objetivo de evaluar el desempeño de los productos en términos de ingresos, volumen de ventas y rentabilidad. Se desarrolló un dashboard interactivo en Power BI para facilitar la toma de decisiones basada en datos.


 Objetivo

Analizar el comportamiento de los productos para identificar:

* Productos más rentables
* Productos con mayor volumen de ventas
* Productos con alta rotación pero baja rentabilidad
* Oportunidades de mejora en la estrategia comercial


 Herramientas Utilizadas

* SQL (MySQL)
* Power BI
* Excel / CSV

---

Proceso del Proyecto

Extracción de Datos (SQL):

Se realizaron consultas SQL para unir y agregar la información de diferentes tablas:

* JOIN entre tablas (productos y detalle_ventas)
* Uso de funciones agregadas como SUM()
* Agrupación de datos con GROUP BY

Ejemplo de consulta:

¿Qué producto se vende mucho pero genera poco ingreso?

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


2. Transformación de Datos

* Validación de datos
* Creación de métricas clave
* Preparación del modelo de datos en Power BI


3. Visualización (Power BI)

Se desarrolló un dashboard interactivo con:

* KPIs: Total de ingresos, cantidad total, ingreso promedio
* Gráficos de barras para análisis por producto
* Tabla resumen con métricas clave



Dashboard




Insights Clave

* Laptop es el producto con mayor ingreso total, indicando alto valor por unidad
* Café presenta alta cantidad de ventas pero menor ingreso promedio, lo que sugiere un producto de volumen
* Se identifican productos con alta rotación pero baja rentabilidad
* Existen oportunidades para optimizar precios o estrategias comerciales en ciertos productos



Conclusiones

El análisis permitió identificar patrones de comportamiento en los productos que pueden ser utilizados para mejorar la toma de decisiones comerciales, optimizar precios y enfocar estrategias de venta.



-Estructura del Proyecto

analisis-ventas-powerbi-sql/
│
├── README.md
├── consultas.sql
├── dataset.csv
├── dashboard.pbix
└── images/
    └── dashboard.png



Autor

Brayan Vargas
Profesional en Mercadeo y Negocios Internacionales
Enfocado en análisis de datos, SQL y Power BI
