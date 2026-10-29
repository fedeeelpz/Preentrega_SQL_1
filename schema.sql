-- =========================================================================
-- PROYECTO: E-commerce (Pre-entrega Schema y DML)
-- =========================================================================

-- 1. CREACIÓN DE LA ESTRUCTURA (DDL)

-- Tabla de Usuarios
create table usuarios (
	usuario_id serial Primary Key,
	nombre varchar(100) not null,
	email varchar(150) unique not null,
	constraint chk_email check (email like '%@%') -- Esto valida que contenga un @
);

-- Tabla de productos
	create table productos (
	producto_id serial primary key,
	nombre_producto varchar(150) not null, 
	precio decimal(10,2) not null,
	stock int not null,
	constraint chk_precio_positivo check (precio > 0),
	constraint chk_stock_positivo check (stock >= 0)
);

-- Tabla de pedidos (Relacionada con tabla de usuarios) 
	create table pedidos(
	pedido_id serial primary key,
	usuario_id int not null,
	fecha_pedido timestamp default current_timestamp,
	estado varchar(50) default 'Pendiente',
	constraint fk_usuario foreign key (usuario_id) references usuarios(usuario_id) on delete cascade
);

-- Tabla de detalles de pedidos
create table detalle_pedidos(
	detalle_id serial primary key, 
	pedido_id int not null,
	producto_id int not null,
	cantidad int not null,
	constraint fk_pedido foreign key (pedido_id) references pedidos(pedido_id) on delete cascade,
	constraint fk_producto foreign key (producto_id) references productos(producto_id) on delete cascade,
	constraint chk_cantidad check (cantidad > 0)
);
