-- #######################################################
-- file:data.sql
-- Database Course midterm 2024
-- Univalle
-- @Apolomz
-- #######################################################

\c pos_midterm

INSERT INTO Vehiculo (CodVehiculo, Modelo, FechaCompra, CapPasajeros, Estado, Tipo) VALUES
(1, 2019, '2020-01-15 10:30:00', 50, TRUE, 'Bus'),
(2, 2020, '2021-02-10 11:45:00', 30, TRUE, 'Bus'),
(3, 2018, '2019-03-05 09:00:00', 4, TRUE, 'Camioneta'),
(4, 2017, '2018-04-20 08:15:00', 4, FALSE, 'Automovil'),
(5, 2022, '2023-05-10 07:50:00', 60, TRUE, 'Bus');

-- Conductores
INSERT INTO TalentoHumano (CodEmpleado, Nombre, Apellido, Identificacion, Licencia, AñosExperiencia, TipoEmpleado) VALUES
('1001234567JUPE', 'Juan', 'Pérez', 1001234567, 'A1B2C3', 5, 'Conductor'),
('1007654321ANGO', 'Ana', 'Gómez', 1007654321, 'D4E5F6', 3, 'Conductor'),
('1009876543CARO', 'Carlos', 'Rodríguez', 1009876543, 'G7H8I9', 8, 'Conductor');

-- Operarios
INSERT INTO TalentoHumano (CodEmpleado, Nombre, Apellido, Identificacion, Licencia, AñosExperiencia, TipoEmpleado) VALUES
('1012345678MALO', 'María', 'López', 1012345678, NULL, 10, 'Operario'),
('1018765432PEMA', 'Pedro', 'Martínez', 1018765432, NULL, 7, 'Operario'),
('1019988776LACA', 'Laura', 'Castro', 1019988776, NULL, 4, 'Operario');

-- Estaciones
INSERT INTO Estacion (CodEstacion, Nombre, Latitud, Longitud, CapMaxPasajeros) VALUES
(1, 'Unidad Deportiva', 3.42158, -76.53198, 1000),
(2, 'Universidades', 3.33781, -76.53057, 900),
(3, 'Paso del Comercio', 3.45912, -76.47789, 600),
(4, 'Salomia', 3.48256, -76.50123, 600),
(5, 'Torre de Cali', 3.46123, -76.53012, 1100);


-- Mantenimientos
INSERT INTO Mantenimiento (CodMantenimiento, Fecha, Descripcion, CodVehiculo, CodEstacion, CodEmpleado) VALUES
(1, '2023-11-01', 'Cambio de aceite', 1, NULL, '1012345678MALO'),
(2, '2023-11-10', 'Revisión de frenos', 2, NULL, '1018765432PEMA'),
(3, '2023-11-15', 'Cambio de llantas', 3, NULL, '1012345678MALO'),
(4, '2023-11-20', 'Revisión general', NULL, 1, '1012345678MALO'),
(5, '2023-11-25', 'Limpieza interna', NULL, 2, '1019988776LACA'),
(6, '2023-12-01', 'Cambio de filtros', 1, NULL, '1019988776LACA');

--Rutas
INSERT INTO Ruta (CodRuta, Nombre, TiempoRecorrido) VALUES
(1, 'Ruta Centro-Sur', '00:45:00'),
(2, 'Ruta Norte-Oeste', '01:15:00'),
(3, 'Ruta Este-Oeste', '00:55:00');

INSERT INTO Viaje (CodViaje, FechaHora, EstimPasajeros, CodVehiculo, CodRuta) VALUES
(1, '2024-12-01 08:00:00', 50, 1, 1),
(2, '2024-12-01 10:30:00', 40, 2, 2),
(3, '2024-12-01 12:00:00', 60, 3, 3),
(4, '2024-12-02 09:00:00', 45, 4, 1),
(5, '2024-12-02 15:45:00', 55, 5, 2);

