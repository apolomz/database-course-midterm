-- #######################################################
-- file:schema.sql
-- Database Course MIDTERM 2024
-- Univalle
-- @Apolomz
-- #######################################################

\c pos_midterm

-- Crear tabla Vehículo
CREATE TABLE Vehiculo (
    CodVehiculo INTEGER PRIMARY KEY,
    Modelo INTEGER NOT NULL,
    FechaCompra TIMESTAMP NOT NULL,
    CapPasajeros INTEGER NOT NULL,
    Estado BOOLEAN NOT NULL,
    Tipo VARCHAR(100) NOT NULL
);

-- Crear tabla Estación
CREATE TABLE Estacion (
    CodEstacion INTEGER PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Latitud DECIMAL(10, 7) NOT NULL,
    Longitud DECIMAL(10, 7) NOT NULL,
    CapMaxPasajeros INTEGER NOT NULL
);

-- Crear tabla TalentoHumano
CREATE TABLE TalentoHumano (
    CodEmpleado VARCHAR(100) PRIMARY KEY,
    Nombre VARCHAR(200) NOT NULL,
    Apellido VARCHAR(200) NOT NULL,
    Identificacion INTEGER NOT NULL,
    Licencia VARCHAR(100),
    AñosExperiencia INTEGER,
    TipoEmpleado VARCHAR(200) NOT NULL
);

-- Crear tabla Ruta
CREATE TABLE Ruta (
    CodRuta INTEGER PRIMARY KEY,
    Nombre VARCHAR(200) NOT NULL,
    TiempoRecorrido TIME NOT NULL
);

-- Crear tabla Viaje
CREATE TABLE Viaje (
    CodViaje INTEGER PRIMARY KEY,
    FechaHora TIMESTAMP NOT NULL,
    EstimPasajeros INTEGER NOT NULL,
    CodVehiculo INTEGER NOT NULL,
    CodRuta INTEGER NOT NULL,
    FOREIGN KEY (CodVehiculo) REFERENCES Vehiculo(CodVehiculo),
    FOREIGN KEY (CodRuta) REFERENCES Ruta(CodRuta)
);

-- Crear tabla Mantenimiento
CREATE TABLE Mantenimiento (
    CodMantenimiento INTEGER PRIMARY KEY,
    Fecha DATE NOT NULL,
    Descripcion VARCHAR(300),
    CodVehiculo INTEGER,
    CodEstacion INTEGER,
    CodEmpleado VARCHAR(200),
    FOREIGN KEY (CodVehiculo) REFERENCES Vehiculo(CodVehiculo),
    FOREIGN KEY (CodEstacion) REFERENCES Estacion(CodEstacion),
    FOREIGN KEY (CodEmpleado) REFERENCES TalentoHumano(CodEmpleado)
);

-- Crear tabla ConductorVehiculo (relación entre TalentoHumano y Vehículo)
CREATE TABLE ConductorVehiculo (
    CodEmpleado VARCHAR(200) NOT NULL,
    CodVehiculo INTEGER NOT NULL,
    PRIMARY KEY (CodEmpleado, CodVehiculo),
    FOREIGN KEY (CodEmpleado) REFERENCES TalentoHumano(CodEmpleado),
    FOREIGN KEY (CodVehiculo) REFERENCES Vehiculo(CodVehiculo)
);

-- Crear tabla RutaEstacion (relación entre Ruta y Estación)
CREATE TABLE RutaEstacion (
    CodRuta INTEGER NOT NULL,
    CodEstacion INTEGER NOT NULL,
    PRIMARY KEY (CodRuta, CodEstacion),
    FOREIGN KEY (CodRuta) REFERENCES Ruta(CodRuta),
    FOREIGN KEY (CodEstacion) REFERENCES Estacion(CodEstacion)
);
