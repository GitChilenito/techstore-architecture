# TechStore Architecture - Diseño y Normalización de BD (Semana 8)

Este repositorio contiene el diseño, la normalización en 3FN y el script DDL para el sistema de gestión de ventas de la empresa **TechStore**, correspondiente al módulo **CIB302 - Taller de Plataformas Web (AIEP)**.

---

## 📌 Contenido del Repositorio

- `schema.sql`: Script DDL en SQL con la definición de tablas, claves primarias (PK), claves foráneas (FK) y restricciones de integridad.
- `CIB302_BENJAMIN CISTERNAS_06-10-2026_semana8.pdf`: Informe técnico detallado.

---

## 🛠️ Esquema Relacional Normalizado (3FN)

El modelo fue estructurado en 5 entidades principales:

1. **`categorias`**: Almacena las categorías de productos (`id_categoria` [PK]).
2. **`clientes`**: Información de los clientes (`id_cliente` [PK], `email_cliente` [UNIQUE]).
3. **`productos`**: Catálogo de productos y su categoría (`id_producto` [PK], `id_categoria` [FK]).
4. **`ventas`**: Cabecera de las transacciones (`id_venta` [PK], `id_cliente` [FK]).
5. **`detalle_ventas`**: Detalle de productos por transacción (`id_venta` [PK, FK], `id_producto` [PK, FK]).

---

## 👤 Datos del Estudiante
- **Estudiante:** Benjamín Ignacio Cisternas Huerta
- **Docente:** Fernando Vera Araneda
- **Fecha:** 06/10/2026
