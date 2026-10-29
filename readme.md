# Proyecto Final: Sistema de Base de Datos para E-commerce (PostgreSQL)

## 📌 Descripción del Caso de Uso
Este proyecto implementa una base de datos relacional robusta diseñada para un sistema de E-commerce. El sistema modela la gestión completa de usuarios, catálogo de productos, procesamiento de pedidos y el detalle de los artículos adquiridos en cada transacción, garantizando la integridad referencial y aplicando restricciones estrictas de negocio (validación de correos, precios y stocks positivos).

---

## 🗂️ Estructura del Repositorio
El proyecto está dividido en tres etapas modulares ubicadas en la raíz del repositorio:
1. schema.sql: Contiene la definición de la estructura (DDL) de las tablas (usuarios, productos, pedidos, detalle_pedidos), claves primarias, claves foráneas y restricciones CHECK.
2. data.sql: Contiene la carga inicial de datos de prueba (DML) coherentes para poblar el sistema de manera ordenada.
3. queries.sql: Contiene las consultas avanzadas (DQL) que resuelven necesidades analíticas y operativas del negocio utilizando JOINs, funciones de agregación, GROUP BY, CTEs (WITH) y reportes de Top N.

---

## 🔍 Preguntas de Negocio que Resuelven las Consultas (DQL)
Las consultas incluidas en queries.sql permiten extraer los siguientes insights y reportes operativos:
1. Listado de Pedidos por Cliente (INNER JOIN): Relaciona cada pedido registrado con el nombre y correo del cliente que lo efectuó.
2. Control de Inventario y Ventas (LEFT JOIN): Permite listar todos los productos del catálogo y verificar si registran o no ventas en el sistema (útil para detectar productos sin salida).
3. Volumen por Pedido (GROUP BY y Agregaciones): Calcula la cantidad total de artículos y la variedad de productos distintos comprados en cada pedido.
4. Análisis de Gasto Total (CTE / WITH): Utiliza una expresión de tabla común para calcular el monto total monetario gastado por pedido y filtrar aquellos que superen un umbral determinado.
5. Reporte Top N (ORDER BY y LIMIT): Obtiene el listado de los productos más costosos del inventario ordenados de mayor a menor precio.

---

## ⚙️ Instrucciones de Ejecución
Para poner en marcha esta base de datos desde cero en una instancia limpia de PostgreSQL 17 (utilizando pgAdmin 4 o psql), ejecuta los scripts estrictamente en el siguiente orden:
1. Crear una nueva base de datos en PostgreSQL (por ejemplo, ecommerce_db).
2. Ejecutar el script schema.sql para crear las tablas.
3. Ejecutar el script data.sql para poblar los datos iniciales.
4. Ejecutar el script queries.sql para probar las consultas analíticas.

---

## 🛠️ Tecnologías Utilizadas
* PostgreSQL 17 (Motor de Base de Datos Relacional)
* pgAdmin 4 (Entorno de Gestión y Visualización ERD)
* Git & GitHub (Control de versiones y documentación)