-- A.- Crear la base de datos:
CREATE DATABASE desafio_valeria_farinia_002;

--B.- Conectarse a la base de datos creada:
\c desafio_valeria_farinia_002;

--Crear la tabla e insertar los registros:
--COPIAR LOS REGISTROS DESDE EL ARCHIVO DEL DESAFÍO

-- Consultas del desafío:
-- 1. ¿Cuántos registros hay? 
SELECT COUNT(*) AS total_registros FROM inscritos;

-- 2. ¿Cuántos inscritos hay en total? 
SELECT SUM(cantidad) AS total_inscritos FROM inscritos;

-- 3. ¿Cuál o cuáles son los registros de mayor antigüedad?
SELECT * FROM inscritos WHERE fecha = (SELECT MIN(fecha) FROM inscritos);

-- 4. ¿Cuántos inscritos hay por día? (entendiendo un día como una fecha distinta de ahora en adelante)
SELECT fecha, SUM(cantidad) AS inscritos_por_dia FROM inscritos GROUP BY fecha;

-- 5. ¿Qué día se inscribieron la mayor cantidad de personas y cuántas personas se inscribieron en ese día?
SELECT fecha, SUM(cantidad) AS total_inscritos FROM inscritos GROUP BY fecha ORDER BY total_inscritos DESC LIMIT 1;
