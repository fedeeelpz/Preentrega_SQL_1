-- =========================================================================
-- 2. INSERCIÓN DE DATOS DE PRUEBA (DML - Mínimo 5 registros por tabla)
-- =========================================================================

-- Insertar 5 Usuarios
INSERT INTO usuarios (nombre, email) VALUES
('Ana Pérez', 'ana.perez@example.com'),
('Carlos Gómez', 'carlos.gomez@example.com'),
('Lucía Fernández', 'lucia.f@example.com'),
('Mateo Silva', 'mateo.silva@example.com'),
('Sofía Rodríguez', 'sofia.rodriguez@example.com');

-- Insertar 5 Productos
insert into productos (nombre_producto, precio, stock) values
	('laptop gamer lenovo', 1250.50, 15),
	('auriculares inalambricos', 85.99, 50),
	('mouse ergonomico', 45.00, 30),
	('monitor 24 pulgadas', 210.00, 20),
	('teclade mecanico', 75.50, 25);

-- Insertar 5 Pedidos
INSERT INTO pedidos (usuario_id, estado) VALUES
(1, 'Completado'),
(2, 'Procesando'),
(3, 'Enviado'),
(1, 'Pendiente'),
(4, 'Completado');

-- Insertar 5 Detalles de Pedidos
INSERT INTO detalle_pedidos (pedido_id, producto_id, cantidad) VALUES
(1, 1, 1), -- Ana compró 1 Laptop
(1, 3, 2), -- Ana compró 2 Mouses
(2, 2, 1), -- Carlos compró 1 Auricular
(3, 4, 1), -- Lucía compró 1 Monitor
(5, 5, 2); -- Mateo compró 2 Teclados