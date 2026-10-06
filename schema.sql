-- 1. Tabla Categorías
CREATE TABLE categorias (
 id_categoria INT PRIMARY KEY,
 nombre_categoria VARCHAR(100) NOT NULL
);

-- 2. Tabla Clientes
CREATE TABLE clientes (
 id_cliente INT PRIMARY KEY,
 cliente VARCHAR(100) NOT NULL,
 email_cliente VARCHAR(150) UNIQUE NOT NULL
);

-- 3. Tabla Productos
CREATE TABLE productos (
 id_producto INT PRIMARY KEY,
 nombre_producto VARCHAR(150) NOT NULL,
 precio_unitario NUMERIC(10,2) NOT NULL CHECK (precio_unitario > 0),
 id_categoria INT NOT NULL,
 CONSTRAINT fk_productos_categorias 
 FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
 ON UPDATE CASCADE ON DELETE RESTRICT
);

-- 4. Tabla Ventas
CREATE TABLE ventas (
 id_venta INT PRIMARY KEY,
 fecha_venta DATE NOT NULL,
 id_cliente INT NOT NULL,
 CONSTRAINT fk_ventas_clientes 
 FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
 ON UPDATE CASCADE ON DELETE RESTRICT
);

-- 5. Tabla Detalle de Ventas
CREATE TABLE detalle_ventas (
 id_venta INT NOT NULL,
 id_producto INT NOT NULL,
 cantidad INT NOT NULL CHECK (cantidad > 0),
 precio_unitario NUMERIC(10,2) NOT NULL CHECK (precio_unitario > 0),
 PRIMARY KEY (id_venta, id_producto),
 CONSTRAINT fk_detalle_ventas 
 FOREIGN KEY (id_venta) REFERENCES ventas(id_venta)
 ON DELETE CASCADE,
 CONSTRAINT fk_detalle_productos 
 FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
 ON DELETE RESTRICT
);
