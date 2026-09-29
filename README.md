# TechStore - Arquitectura de Base de Datos y Seguridad

**Módulo:** CIB302-ONL-TALLER DE PLATAFORMAS WEB  
**Semana:** Semana 7 (Actividad Práctica Formativa)  
**Estudiante:** Benjamín Ignacio Cisternas Huerta  

---

## 📌 Descripción del Proyecto
Este repositorio contiene el análisis técnico, diseño de arquitectura y modelo de seguridad transaccional para la plataforma e-commerce **TechStore**.

---

## 📂 Contenido del Repositorio
* `analisis.txt`: Justificación de la elección de PostgreSQL (SQL) vs NoSQL y análisis de riesgos transaccionales.
* `completa.png`: Diagrama de Arquitectura (Nivel C4 / Despliegue) en 3 capas con HTTPS y validaciones.
* `README.md`: Documentación principal del proyecto.

---

## 🛠️ Decisiones Clave de Arquitectura
1. **Base de Datos:** PostgreSQL (SQL Relacional) para garantizar consistencia transaccional (ACID) e integridad referencial.
2. **Seguridad:** Uso de cifrado HTTPS/TLS 1.3, validaciones en Backend y Consultas Parametrizadas (Prepared Statements) para prevenir inyecciones SQL (SQLi).
3. **Instrucciones:** Manejo de bloques DDL, DML, DCL y TCL para el control de inventario y compras.
