SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE `practicadespliegue`;

CREATE TABLE `pruebas` (
  `nombre` varchar(30) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `password` varchar(30) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

INSERT INTO `pruebas` (`nombre`, `password`) VALUES
('pablo', '123');

CREATE USER 'pablo'@'%' IDENTIFIED BY '1234';

GRANT ALL PRIVILEGES ON practicadespliegue.* TO 'pablo'@'%';

COMMIT;