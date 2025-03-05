-- Crear la base de datos (solo si no existe)
CREATE DATABASE IF NOT EXISTS PERSONAL;
USE PERSONAL;

-- Crear la tabla Personas
CREATE TABLE IF NOT EXISTS Personas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    edad INT CHECK (edad >= 0),
    telefono VARCHAR(20),
    correo VARCHAR(100) UNIQUE
);

-- Insertar datos de ejemplo
INSERT INTO Personas (nombre, apellidos, edad, telefono, correo) VALUES
('Fernanda', 'Montenegro Carrascal', 22, '949218455', 'fernanda123@gmail.com')
