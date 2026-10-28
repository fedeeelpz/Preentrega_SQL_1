### Captura del Paso 2: pgAdmin 4
![Dashboard de pgAdmin y base de datos creada](./img/Pgadmin4.png)

### Captura del Paso 3: Interfaz de Línea de Comandos (psql)
![Conexión y comando conninfo en PowerShell](./img/psql.png)

# Práctica: Verificación del Ecosistema PostgreSQL y Modelo Cliente-Servidor

## 1. Verificación del Servidor
El servidor de PostgreSQL se verificó mediante los servicios de Windows, confirmando que se encuentra activo (*Running*) para permitir las conexiones de los clientes.

## 2. Conexión vía pgAdmin 4 (GUI)
Se estableció conexión con el motor a través de la interfaz gráfica y se creó con éxito la base de datos `laboratorio_inicial`.
![pgAdmin Dashboard](./img/pgadmin.png)

## 3. Conexión vía psql (CLI)
Mediante la terminal de PowerShell, se realizó la conexión directa utilizando la herramienta de línea de comandos `psql`, validando los parámetros de conexión con el comando `\conninfo`.
![Terminal psql conninfo](./img/psql.png)

## 4. Conclusiones y Diferencias Notadas
* **Interfaz Gráfica (pgAdmin 4):** Es más visual e intuitiva, ideal para explorar esquemas, visualizar estadísticas de rendimiento en tiempo real mediante su *Dashboard* y administrar bases de datos de forma cómoda con menús desplegables.
* **Interfaz de Línea de Comandos (psql):** Es mucho más ligera, directa y rápida. Permite ejecutar comandos de control (`\conninfo`, `\l`, etc.) de forma inmediata y es la herramienta estándar para automatización y scripts en entornos de producción.