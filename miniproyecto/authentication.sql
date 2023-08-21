-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 21-08-2023 a las 01:30:07
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `authentication`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `bio` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `phone` int DEFAULT NULL,
  `psswrd` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `photo` longblob,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `name`, `bio`, `email`, `phone`, `psswrd`, `photo`) VALUES
(1, 'Adan Sandler', 'Adam Richard Sandler, es un comediante, actor, escritor, y productor estadounidense. Después de conv', 'adansandler@gmail.com', 2147483647, '$2y$10$mTqmb9JQxURlSA9FGf6V3.HP/lEH/QZbYuiuk0gcErpEno5WepRU2', 0x2e2e2f61636374696f6e732f696d672f6164616e2e6a7067),
(3, 'Will smith', 'Will Smith, nacido en 1968, es un actor y rapero estadounidense. Saltó a la fama con la serie \"The F', 'willsmith@gmail.com', 2147483647, '$2y$10$xGnLVpsWND.0.VB8GP/VhuElJ7cjOHDHPLY.lmXZCpJna8UflLwCa', 0x2e2e2f61636374696f6e732f696d672f77696c6c2e6a7067),
(4, 'Lionel Messi', 'Lionel Messi, nacido en 1987 en Argentina, es un destacado futbolista conocido por su carrera en el ', 'lionelmessi@gmail.com', 2147483647, '$2y$10$tDJyHvLTlp3FFCxakrAmDew2kN89bsux0uPsXiyWij9Dt1qc.o0f6', 0x2e2e2f61636374696f6e732f696d672f6d657373692e6a7067);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
