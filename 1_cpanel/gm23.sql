-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-05-2023 a las 19:33:36
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gm23`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `commune_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `name2` varchar(45) DEFAULT NULL,
  `street_number` int(11) NOT NULL,
  `reference` varchar(45) DEFAULT NULL,
  `postal_code` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chapters`
--

CREATE TABLE `chapters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sector_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `chapters`
--

INSERT INTO `chapters` (`id`, `sector_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Álgebra de Números Reales', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(2, 1, 'Matemáticas Aplicadas', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(3, 1, 'Lógica y Conjuntos', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(4, 1, 'Números Naturales', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(5, 1, 'Relaciones y Geometría Analítica', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(6, 1, 'Funciones', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(7, 1, 'Polinomios', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(8, 1, 'Exponencial y Logaritmos', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(9, 1, 'Trigonometría', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(10, 1, 'Números Complejos', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(11, 1, 'Vectores', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(12, 1, 'Rectas y Planos en IR³', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(13, 2, 'Limites', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(14, 2, 'Continuidad', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(15, 2, 'Derivadas', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(16, 2, 'Aplicación Derivadas', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(17, 3, 'Integral Indefinida', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(18, 3, 'Integral de Riemann', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(19, 3, 'Integral Definida', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(20, 3, 'Aplicación 1', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(21, 3, 'Aplicación 2', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(22, 3, 'Otras Aplicaciones', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(23, 3, 'Integrales Impropias', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(24, 3, 'Sucesiones Numéricas', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(25, 3, 'Series Numéricas', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(26, 3, 'Suc. y Series de Funciones', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(27, 4, 'Matrices', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(28, 4, 'Operaciones Elementales', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(29, 4, 'Determinantes', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(30, 4, 'Sistemas de Ecs. Lineales (SEL)', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(31, 4, 'Espacios Vectoriales', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(32, 4, 'Matriz Cambio Base', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(33, 4, 'Transformaciones Lineales', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(34, 4, 'Diagonalización', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(35, 4, 'Espacios Euclidianos', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(36, 5, 'Funciones, Limites', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(37, 5, 'Derivadas Parciales', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(38, 5, 'Regla de la Cadena', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(39, 5, 'Gradiente y Aplicaciones', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(40, 5, 'Func. Implícitas e Inversas', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(41, 5, 'Series de Taylor y Max./Min.', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(42, 6, 'Integrales Dobles', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(43, 6, 'Integrales Triples', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(44, 6, 'Int. Múltiples Impropias', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(45, 6, 'Curvas, Rotor y Divergencia', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(46, 6, 'Integrales de Línea', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(47, 6, 'Integrales de Superficie', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(48, 7, 'EDO´s de Primer Orden', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(49, 7, 'Operadores Dif. Lineales', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(50, 7, 'Sol. Part. y Reduc. Orden', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(51, 7, 'Teoría Cualitativa', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(52, 7, 'Transformada de Laplace', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(53, 7, 'Sol por Series, Bessel, Storm', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(54, 8, 'Series de Fourier', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(55, 8, 'Transformada de Fourier', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(56, 8, 'Distribuciones - Función Generalizada', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(57, 9, 'Cuasilineales (Primer Orden)', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(58, 9, 'EDP 2º Orden (Forma Normal)', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(59, 9, 'Coef. Constantes y Reducibles', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(60, 9, 'EDP en Regiones Acotadas', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(61, 9, 'EDP en Regiones No-Acotadas', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(62, 9, 'EDP de Onda, Calor y Laplace', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(63, 10, 'Complejos y Topología', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(64, 10, 'Funciones y Límites', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(65, 10, 'Derivadas, Series e Integral', '2023-04-05 02:02:33', '2023-04-05 02:02:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `region_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `communes`
--

CREATE TABLE `communes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `country_code` int(11) NOT NULL,
  `flag_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `degrees`
--

CREATE TABLE `degrees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `university_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `development_exercises`
--

CREATE TABLE `development_exercises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exercise_id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `development_exercises`
--

INSERT INTO `development_exercises` (`id`, `exercise_id`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 1, '/exercises/developments/01-01-01-01-001.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(2, 2, '/exercises/developments/01-01-01-01-002-1.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(3, 2, '/exercises/developments/01-01-01-01-002-2.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(4, 3, '/exercises/developments/01-01-01-01-003.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(5, 4, '/exercises/developments/01-01-01-01-004-1.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(6, 4, '/exercises/developments/01-01-01-01-004-2.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(7, 5, '/exercises/developments/01-01-01-01-005.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(8, 6, '/exercises/developments/01-01-01-01-006.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(9, 7, '/exercises/developments/01-01-01-01-007-1.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(10, 7, '/exercises/developments/01-01-01-01-007-2.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(11, 7, '/exercises/developments/01-01-01-01-007-3.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(12, 7, '/exercises/developments/01-01-01-01-007-4.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(13, 8, '/exercises/developments/01-01-01-01-008-1.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(14, 8, '/exercises/developments/01-01-01-01-008-2.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(15, 8, '/exercises/developments/01-01-01-01-008-3.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(16, 9, '/exercises/developments/01-01-01-01-009-1.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(17, 9, '/exercises/developments/01-01-01-01-009-2.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(18, 9, '/exercises/developments/01-01-01-01-009-3.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(19, 9, '/exercises/developments/01-01-01-01-009-4.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(20, 9, '/exercises/developments/01-01-01-01-009-5.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(21, 10, '/exercises/developments/01-01-01-01-010.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(22, 11, '/exercises/developments/01-01-01-01-011-1.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(23, 11, '/exercises/developments/01-01-01-01-011-2.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(24, 11, '/exercises/developments/01-01-01-01-011-3.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(25, 11, '/exercises/developments/01-01-01-01-011-4.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(26, 12, '/exercises/developments/01-01-01-01-012.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(27, 13, '/exercises/developments/01-01-01-01-013.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(28, 14, '/exercises/developments/01-01-01-01-014-1.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(29, 14, '/exercises/developments/01-01-01-01-014-2.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(30, 14, '/exercises/developments/01-01-01-01-014-3.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exercises`
--

CREATE TABLE `exercises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `active` varchar(45) NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `view_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `likes` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `exercises`
--

INSERT INTO `exercises` (`id`, `item_id`, `slug`, `active`, `order`, `view_count`, `likes`, `created_at`, `updated_at`) VALUES
(1, 1, 'demostraciones-con-operación-aditiva-01', 'yes', 1, 1257, 4, '2023-04-05 02:02:39', '2023-04-27 23:15:07'),
(2, 1, 'demostraciones-con-operación-aditiva-02', 'yes', 2, 133, 0, '2023-04-05 02:02:39', '2023-04-25 18:14:56'),
(3, 1, 'demostraciones-con-operación-aditiva-03', 'yes', 3, 220, 0, '2023-04-05 02:02:39', '2023-04-25 18:15:01'),
(4, 1, 'demostraciones-con-operación-aditiva-04', 'yes', 4, 20, 0, '2023-04-05 02:02:39', '2023-04-25 18:17:03'),
(5, 1, 'demostraciones-con-operación-aditiva-05', 'yes', 5, 11, 0, '2023-04-05 02:02:39', '2023-04-21 21:30:10'),
(6, 1, 'demostraciones-con-operación-aditiva-06', 'yes', 6, 172, 1, '2023-04-05 02:02:39', '2023-04-21 21:30:15'),
(7, 1, 'demostraciones-con-operación-aditiva-07', 'yes', 7, 3, 0, '2023-04-05 02:02:39', '2023-04-21 21:30:25'),
(8, 1, 'demostraciones-con-operación-aditiva-08', 'yes', 8, 5, 0, '2023-04-05 02:02:39', '2023-04-21 21:30:30'),
(9, 1, 'demostraciones-con-operación-aditiva-09', 'yes', 9, 4, 0, '2023-04-05 02:02:39', '2023-04-21 22:45:04'),
(10, 1, 'demostraciones-con-operación-aditiva-10', 'yes', 10, 1, 0, '2023-04-05 02:02:39', '2023-04-11 01:00:03'),
(11, 1, 'demostraciones-con-operación-aditiva-11', 'yes', 11, 0, 0, '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(12, 1, 'demostraciones-con-operación-aditiva-12', 'yes', 12, 0, 0, '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(13, 1, 'demostraciones-con-operación-aditiva-13', 'yes', 13, 0, 0, '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(14, 1, 'demostraciones-con-operación-aditiva-14', 'yes', 14, 0, 0, '2023-04-05 02:02:39', '2023-04-05 02:02:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exercise_comments`
--

CREATE TABLE `exercise_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `exercise_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment_content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `exercise_comments`
--

INSERT INTO `exercise_comments` (`id`, `user_id`, `exercise_id`, `comment_content`, `created_at`, `updated_at`, `parent_id`) VALUES
(3, 3, 1, 'asdasd', '2023-04-13 21:03:22', '2023-04-13 21:03:22', NULL),
(4, 3, 2, 'asdasd', '2023-04-25 18:14:55', '2023-04-25 18:14:55', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exercise_likes`
--

CREATE TABLE `exercise_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `exercise_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `exercise_likes`
--

INSERT INTO `exercise_likes` (`id`, `user_id`, `exercise_id`, `created_at`, `updated_at`) VALUES
(21, NULL, 1, '2023-04-05 19:44:11', '2023-04-05 19:44:11'),
(29, NULL, 1, '2023-04-10 21:46:11', '2023-04-10 21:46:11'),
(30, 3, 6, '2023-04-12 20:12:58', '2023-04-12 20:12:58'),
(31, 3, 1, '2023-04-13 21:03:13', '2023-04-13 21:03:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exercise_reports`
--

CREATE TABLE `exercise_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `exercise_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `description_error` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `exercise_reports`
--

INSERT INTO `exercise_reports` (`id`, `user_id`, `exercise_id`, `status`, `description_error`, `created_at`, `updated_at`) VALUES
(30, 3, 1, 'Activo', 'asdasdasd', '2023-04-26 22:01:42', '2023-04-26 22:01:42'),
(31, 3, 1, 'Activo', 'asdasdasdasd11111', '2023-04-26 22:03:48', '2023-04-26 22:03:48'),
(32, 3, 1, 'Activo', 'asdasda1132323', '2023-04-26 22:04:41', '2023-04-26 22:04:41'),
(33, 3, 1, 'Activo', 'asdsd1111', '2023-04-26 23:49:05', '2023-04-26 23:49:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exercise_users`
--

CREATE TABLE `exercise_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `exercise_id` bigint(20) UNSIGNED NOT NULL,
  `directory` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `exercise_users`
--

INSERT INTO `exercise_users` (`id`, `user_id`, `exercise_id`, `directory`, `created_at`, `updated_at`) VALUES
(153, 4, 1, 'ejercicios 1', '2023-04-12 18:19:03', '2023-04-12 18:19:03'),
(154, 4, 2, 'ejercicios 2', '2023-04-12 19:56:43', '2023-04-12 19:56:43'),
(155, 4, 3, 'ejercicios 3', '2023-04-12 19:58:24', '2023-04-12 19:58:24'),
(172, 3, 3, 'Certamen 1', '2023-04-21 21:30:03', '2023-04-22 00:05:47'),
(173, 3, 4, 'Certamen 2', '2023-04-21 21:30:08', '2023-04-22 00:06:02'),
(174, 3, 4, 'Certamen 1', '2023-04-21 21:30:08', '2023-04-22 00:05:48'),
(175, 3, 5, 'Certamen 1', '2023-04-21 21:30:13', '2023-04-22 00:05:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exercise_user_durations`
--

CREATE TABLE `exercise_user_durations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `exercise_id` bigint(20) UNSIGNED NOT NULL,
  `duration` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `exercise_user_durations`
--

INSERT INTO `exercise_user_durations` (`id`, `user_id`, `exercise_id`, `duration`, `created_at`, `updated_at`) VALUES
(17, 4, 1, 2974, '2023-04-12 17:34:25', '2023-04-12 19:59:10'),
(18, 4, 2, 5947, '2023-04-12 18:19:35', '2023-04-12 19:59:18'),
(19, 4, 3, 21, '2023-04-12 19:57:01', '2023-04-12 19:59:33'),
(20, 3, 1, 47550, '2023-04-12 19:59:10', '2023-04-27 23:15:07'),
(21, 3, 2, 9080, '2023-04-12 19:59:18', '2023-04-25 18:15:01'),
(22, 3, 3, 297, '2023-04-12 19:59:33', '2023-04-25 18:17:03'),
(23, 3, 4, 3955, '2023-04-12 20:00:22', '2023-04-25 19:09:35'),
(24, 3, 5, 16, '2023-04-12 20:10:57', '2023-04-21 21:30:15'),
(25, 3, 6, 24774, '2023-04-12 20:13:38', '2023-04-21 21:30:25'),
(26, 3, 7, 10, '2023-04-19 19:30:09', '2023-04-21 21:30:30'),
(27, 3, 8, 4451, '2023-04-19 20:44:17', '2023-04-21 21:30:33'),
(28, 3, 9, 9075, '2023-04-21 22:45:04', '2023-04-22 00:01:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exercise_visualizations`
--

CREATE TABLE `exercise_visualizations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `exercise_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `exercise_visualizations`
--

INSERT INTO `exercise_visualizations` (`id`, `user_id`, `exercise_id`, `created_at`, `updated_at`) VALUES
(17, 4, 1, '2023-04-12 02:24:47', '2023-04-12 19:56:32'),
(18, 3, 1, '2023-04-12 02:25:56', '2023-04-27 23:15:07'),
(19, 4, 2, '2023-04-12 18:19:05', '2023-04-12 19:58:12'),
(20, 4, 3, '2023-04-12 19:56:55', '2023-04-12 19:58:18'),
(21, 3, 2, '2023-04-12 19:59:10', '2023-04-25 18:14:56'),
(22, 3, 3, '2023-04-12 19:59:18', '2023-04-25 18:15:01'),
(23, 3, 4, '2023-04-12 19:59:33', '2023-04-25 18:17:03'),
(24, 3, 5, '2023-04-12 20:10:56', '2023-04-21 21:30:10'),
(25, 3, 6, '2023-04-12 20:11:45', '2023-04-21 21:30:15'),
(26, 3, 7, '2023-04-19 19:30:04', '2023-04-21 21:30:25'),
(27, 3, 8, '2023-04-19 19:30:09', '2023-04-21 21:30:30'),
(28, 3, 9, '2023-04-21 21:30:33', '2023-04-21 22:45:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exercise_visualization_unregistered`
--

CREATE TABLE `exercise_visualization_unregistered` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exercise_id` bigint(20) UNSIGNED NOT NULL,
  `visitor_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `exercise_visualization_unregistered`
--

INSERT INTO `exercise_visualization_unregistered` (`id`, `exercise_id`, `visitor_id`, `created_at`, `updated_at`) VALUES
(1, 1, '44523d72-80e7-4901-8b98-bfb380f46cfc', '2023-04-05 02:10:17', '2023-04-05 02:12:08'),
(2, 2, '44523d72-80e7-4901-8b98-bfb380f46cfc', '2023-04-05 02:12:12', '2023-04-05 02:12:37'),
(3, 1, 'c2425176-88c5-405e-a498-4f133f4618cc', '2023-04-05 18:01:18', '2023-04-05 18:15:13'),
(4, 1, 'c7212406-e295-4f21-b287-f184e4ea5b95', '2023-04-05 19:53:32', '2023-04-05 21:03:57'),
(5, 1, '2389b72f-f03b-4006-adff-003236236605', '2023-04-05 23:09:18', '2023-04-05 23:09:18'),
(6, 1, '34d0bd61-94b4-460b-8ff9-d73ca173651c', '2023-04-06 16:30:00', '2023-04-06 16:34:38'),
(7, 1, '6bcf5698-133e-4240-8910-1f69f7394d46', '2023-04-06 19:22:40', '2023-04-06 19:22:40'),
(8, 1, '3938ae00-e111-42cf-80b3-02effaf0c767', '2023-04-06 19:22:43', '2023-04-06 19:22:43'),
(9, 1, 'c2c80bff-25b1-420a-95c1-454164f327a3', '2023-04-06 19:22:44', '2023-04-06 19:52:09'),
(10, 1, 'e4a5a9ba-f219-4df8-a81d-1c4172d1ff90', '2023-04-06 19:55:09', '2023-04-06 19:55:09'),
(11, 1, '44e859b4-8451-48ee-a645-bf7e65182f0f', '2023-04-06 19:59:30', '2023-04-06 20:08:08'),
(12, 1, 'bbf4f435-2cd4-4d30-80c1-0dc57838000d', '2023-04-06 20:02:14', '2023-04-06 20:02:14'),
(13, 1, '6e6e72c2-08a1-43b3-825b-c62a5761f29f', '2023-04-06 21:00:02', '2023-04-06 22:20:34'),
(14, 2, '6e6e72c2-08a1-43b3-825b-c62a5761f29f', '2023-04-06 21:00:04', '2023-04-06 21:13:16'),
(15, 1, '3b72a8ef-2402-4030-a293-9eddfdfa85aa', '2023-04-06 22:11:50', '2023-04-06 22:11:50'),
(16, 1, 'a5e04fb2-542c-42b9-8ecb-f35a92af7a46', '2023-04-06 22:21:11', '2023-04-06 22:23:59'),
(17, 3, '2652d6f4-8a6e-46e5-b2cd-5c416552013c', '2023-04-06 22:25:21', '2023-04-06 23:31:52'),
(18, 1, '47b6026a-923c-4dfa-80c1-d03112de3e71', '2023-04-06 23:36:01', '2023-04-06 23:36:57'),
(19, 1, '7177569a-4847-4d3a-80d0-86554c3c356d', '2023-04-10 17:31:35', '2023-04-10 17:31:35'),
(20, 1, '38d90288-431d-45b2-aaaa-1d7fbece08c7', '2023-04-10 21:02:24', '2023-04-10 21:02:24'),
(21, 1, 'e750fd19-47af-47c7-9894-eb0055529bb0', '2023-04-10 21:02:27', '2023-04-10 21:02:27'),
(22, 1, '97a0800e-f48e-4e65-8344-482a95866eb1', '2023-04-10 21:02:27', '2023-04-10 21:02:27'),
(23, 1, '63efa980-a3ba-4b0f-9ea9-3e6ad1cf5739', '2023-04-10 21:02:27', '2023-04-10 21:18:44'),
(24, 1, '8a1c8108-df8a-4871-8e9d-b0b84c56345d', '2023-04-11 00:20:49', '2023-04-11 00:20:49'),
(25, 1, '837eaec9-7952-43a5-94c8-3a884e0da9cd', '2023-04-11 00:22:24', '2023-04-11 00:22:24'),
(26, 2, 'c38a44ca-dfe2-4e1d-8b04-94fc7a1ef863', '2023-04-11 16:30:30', '2023-04-11 16:30:37'),
(27, 1, '57027dc3-3edf-48d0-99a4-599e98c40fba', '2023-04-12 01:30:35', '2023-04-12 01:30:35'),
(28, 1, '9cda3a87-068e-4eca-bbb8-0db017b8450a', '2023-04-12 02:20:37', '2023-04-12 02:20:48'),
(29, 1, '007e7070-d95e-4d81-a022-092a0f300a5f', '2023-04-12 16:29:29', '2023-04-12 16:29:29'),
(30, 6, '0a1edf4f-8023-4ad8-be09-9e5e923c427e', '2023-04-13 20:56:06', '2023-04-13 20:56:54'),
(31, 1, '9ed0a51d-6bbd-4a08-ad3f-272f2d8ea5b6', '2023-04-14 02:54:43', '2023-04-14 03:09:05'),
(32, 1, '2ee9b9b1-24f5-44f3-b5a7-8ae66ea97039', '2023-04-14 21:34:30', '2023-04-14 22:44:06'),
(33, 1, 'dc4cc146-66b8-4195-9b1f-8597ebd87fda', '2023-04-18 16:19:49', '2023-04-18 16:28:40'),
(34, 2, 'dc4cc146-66b8-4195-9b1f-8597ebd87fda', '2023-04-18 16:28:44', '2023-04-18 16:28:44'),
(35, 3, 'dc4cc146-66b8-4195-9b1f-8597ebd87fda', '2023-04-18 16:28:46', '2023-04-18 16:28:46'),
(36, 4, 'dc4cc146-66b8-4195-9b1f-8597ebd87fda', '2023-04-18 16:28:47', '2023-04-18 16:29:03'),
(37, 5, 'dc4cc146-66b8-4195-9b1f-8597ebd87fda', '2023-04-18 16:28:49', '2023-04-18 16:28:58'),
(38, 6, 'dc4cc146-66b8-4195-9b1f-8597ebd87fda', '2023-04-18 16:28:50', '2023-04-18 16:28:50'),
(39, 1, 'cf48172b-ffe9-4b94-9256-39845907ffa3', '2023-04-27 21:17:41', '2023-04-27 21:36:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `header_exercises`
--

CREATE TABLE `header_exercises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exercise_id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `header_exercises`
--

INSERT INTO `header_exercises` (`id`, `exercise_id`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 1, '/exercises/headers/01-01-01-01-001.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(2, 2, '/exercises/headers/01-01-01-01-002.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(3, 3, '/exercises/headers/01-01-01-01-003.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(4, 4, '/exercises/headers/01-01-01-01-004.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(5, 5, '/exercises/headers/01-01-01-01-005.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(6, 6, '/exercises/headers/01-01-01-01-006.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(7, 7, '/exercises/headers/01-01-01-01-007.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(8, 8, '/exercises/headers/01-01-01-01-008.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(9, 9, '/exercises/headers/01-01-01-01-009.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(10, 10, '/exercises/headers/01-01-01-01-010.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(11, 11, '/exercises/headers/01-01-01-01-011.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(12, 12, '/exercises/headers/01-01-01-01-012.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(13, 13, '/exercises/headers/01-01-01-01-013.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(14, 14, '/exercises/headers/01-01-01-01-014.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `images`
--

INSERT INTO `images` (`id`, `name`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 'fondo_cuaderno', '/images/fondo_cuaderno.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(2, 'fondo_cuadriculado', '/images/fondo_cuadr_chico.gif', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(3, 'sobre_nosotros', '/images/sobre_nosotros.png', NULL, NULL),
(4, 'sobre_nosotros_mujer', '/images/sobre_nosotros_mujer.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `items`
--

INSERT INTO `items` (`id`, `section_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'demostraciones con operación aditiva', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(2, 1, 'demostraciones con operación multiplicativa', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(3, 1, 'demostraciones con axioma distributividad', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(4, 1, 'demostraciones con implicancias, equivalencias', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(5, 2, 'factorización', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(6, 2, 'potenciación', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(7, 2, 'productos notables', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(8, 2, 'amplificación, sumas, restas, fracciones (mcd)', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(9, 2, 'simplificación, reducción', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(10, 2, 'valorar expresiones, evaluación', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(11, 2, 'ejercicios de verdadero y falso', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(12, 3, 'reducción en raíces numéricas', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(13, 3, 'reducción raíces literales con productos', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(14, 3, 'reducción raíces literales sumas', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(15, 3, 'racionalización raíces cuadradas', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(16, 3, 'racionalización raíces cúbicas y mayor', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(17, 3, 'racionalizaciones mezcladas', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(18, 3, 'valorar expresiones con raíces', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(19, 3, 'ejercicios de verdadero y falso', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(20, 4, 'ecuaciones de o reducible a primer grado, numéricas', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(21, 4, 'ecuaciones de o reducible a primer grado, literales', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(22, 4, 'ecuaciones de o reducible a segundo grado, numéricas', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(23, 4, 'ecuaciones de o reducible a segundo grado, literales', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(24, 4, 'ejercicios con propiedades de raíces en ec. 2do. grado', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(25, 4, 'ecuaciones irracionales, con raíces', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(26, 4, 'ecuaciones con variable auxiliar', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(27, 5, 'sistema de ecuaciones lineal 2 incógnitas numéricos', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(28, 5, 'sistema de ecuaciones lineal 2 incógnitas literal', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(29, 5, 'sistema de ecuaciones lineal 3 incógnitas', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(30, 5, 'sistema de ecuaciones, desarrollo con variable auxiliar', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(31, 5, 'sistema de ecuaciones no lineal', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(32, 6, 'Problemas Aplicación con Ecs. (ver en Mat. Aplic.)', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(33, 7, 'desigualdades en IR sin valor absoluto', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(34, 7, 'desigualdades con valor absoluto, módulo', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(35, 8, 'expresiones con valor absoluto, módulo', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(36, 8, 'ecuaciones con valor absoluto, módulo', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(37, 8, 'expresiones con parte entera, valor máx entero', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(38, 8, 'ecuaciones con parte entera, valor máx entero', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(39, 9, 'inecuaciones básicas', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(40, 9, 'inecuaciones simples', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(41, 9, 'inecuaciones nivel medio', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(42, 9, 'inecuaciones de mayor nivel', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(43, 10, 'inecuaciones con valor absoluto básicas', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(44, 10, 'inecuaciones con valor absoluto nivel medio', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(45, 10, 'inecuaciones con valor absoluto de mayor nivel', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(46, 11, 'inecuaciones irracionales (con raíces)', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(47, 11, 'inecuaciones mixtas, mezcladas', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(48, 12, 'inecuaciones literales', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(49, 12, 'inecuaciones con un parámetro por determinar', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(50, 12, 'inecuaciones con parte entera, valor máx entero', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(51, 12, 'sistemas de inecuaciones con 1 variable', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(52, 13, 'problemas de aplicación con inecuaciones', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(53, 14, 'cotas superiores e inferiores, conjuntos acotados', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(54, 14, 'maximo y minimo, supremo e ínfimo', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(55, 15, 'razones propias, impropias, mixtas e inversas', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(56, 16, 'constante de proporcionalidad', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(57, 16, 'proporciones continuas, proporción continua', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(58, 16, 'prop. de las proporciones, componer, descomponer.', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(59, 17, 'cambio de unidades, regla de tres', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(60, 18, 'porcentajes, tanto por uno, tanto por ciento', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(61, 19, 'variación relativa y porcentual', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(62, 20, 'proporcionalidad directa e inversa', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(63, 21, 'problemas de planteo numéricos', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(64, 21, 'problemas de planteo geométricos', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(65, 21, 'problemas de planteo económicos', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(66, 21, 'problemas de planteo de edades', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(67, 21, 'problemas de planteo de caudales', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(68, 21, 'problemas de planteo con velocidad', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(69, 21, 'problemas de planteo de trabajo', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(70, 21, 'otros problemas de planteo miscelaneos', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(71, 22, 'tablas de verdad', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(72, 22, 'lenguaje simbólico', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(73, 22, 'conocidas unas prop, det el valor de verdad de otras', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(74, 22, 'reducción usando propiedades de lógica', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(75, 22, 'conectivos no usuales', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(76, 22, 'argumento válido, falacias, usando tablas', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(77, 22, 'inferencia, demostraciones', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(78, 23, 'cuantificador universal, existencial', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(79, 23, 'cuantificadores, lenguaje simbólico', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(80, 23, 'propiedades de los cuantificadores', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(81, 24, 'extension, comprensión', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(82, 24, 'pertenencia e inclusión, subconjunto propio', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(83, 24, 'complemento, diferencia, union e interseccion', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(84, 24, 'diferencia simétrica de conjuntos', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(85, 24, 'demostración de propiedades', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(86, 24, 'demostración de subconjuntos, usando propiedades', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(87, 24, 'demostración de igualdad con álgebra de conjuntos', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(88, 24, 'diagramas de Venn, achurados', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(89, 25, 'cardinalidad y propiedades', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(90, 25, 'problemas de encuestas usando cardinalidad', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(91, 26, 'conjunto potencia', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(92, 27, 'inducción con sumas', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(93, 27, 'inducción con productos', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(94, 27, 'inducción con divisibilidad, múltiplos', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(95, 27, 'inducción con desigualdades', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(96, 27, 'inducción con sucesiones', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(97, 27, 'inducción con exponencial y logaritmos', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(98, 27, 'inducción con trigonometría', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(99, 27, 'inducción con números complejos', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(100, 28, 'sumatorias, conceptuales', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(101, 28, 'sumatorias con potencias', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(102, 28, 'sumatoria geométrica', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(103, 28, 'sumatoria Telescópica', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(104, 28, 'ejercicios de sumatoria mezcladas', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(105, 28, 'ejercicios con sumatorias dobles', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(106, 29, 'productorias', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(107, 30, 'progresiones aritméticas PA , normal', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(108, 30, 'progresiones aritméticas PA, mas nivel', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(109, 30, 'problemas de aplicación con progr. aritméticas PA', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(110, 30, 'progresiones geométricas PG , normal', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(111, 30, 'progresiones geométricas PG, mas nivel', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(112, 30, 'problemas de aplicación con progr. geométricas PG', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(113, 30, 'ejercicios con progresiones mezcladas, PA y PG', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(114, 30, 'ejercicios de demostraciones con progresiones', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(115, 30, 'suma geométrica infinita, serie geométrica', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(116, 30, 'progresiones Armónicas (PH)', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(117, 31, 'factorial, coeficiente binomial, propiedad de Stieffel', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(118, 31, 'ejercicios con teorema del binomio, normal', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(119, 31, 'ejercicios con teorema del binomio, más nivel', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(120, 31, 'sumatorias, usando teorema del binomio', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(121, 31, 'otros ejercicios con teorema del binomio, Trinomios', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(122, 32, 'permutaciones', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(123, 32, 'combinaciones', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(124, 32, 'mezcladas', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(125, 33, 'pares, tríos ordenados', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(126, 33, 'demostración de propiedades del producto cartesiano', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(127, 34, 'dominio, recorrido, gráficas de relaciones', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(128, 34, 'relaciones inversa, compuesta', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(129, 34, 'relaciones que son o no funciones', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(130, 34, 'relación de equivalencia, clases, espacio cuociente', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(131, 34, 'relación de orden, orden parcial, orden total', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(132, 34, 'demostración de propiedades en relaciones', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(133, 35, 'puntos, distancia, punto medio', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(134, 35, 'rectas', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(135, 35, 'circunferencia', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(136, 35, 'parabola', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(137, 35, 'elipse', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(138, 35, 'hipérbola', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(139, 35, 'mezclados', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(140, 35, 'lugares geométricos', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(141, 36, 'Aplicacion de rectas. Modelos lineales', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(142, 36, 'Aplicacion de cónicas', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(143, 37, 'relaciones en IRxIR, dominio, recorrido, funcion', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(144, 37, 'definicion de funcion desde una relación', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(145, 37, 'funciones, valoraciones', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(146, 37, 'dominio, codominio y recorrido (rango)', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(147, 37, 'álgebra de funciones, suma, resta, mult. y división', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(148, 37, 'funciones por tramos, partes o trozos', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(149, 37, 'inyectiva, epiyectiva, biyectiva e inversa', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(150, 37, 'compuesta (composición) de funciones', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(151, 37, 'funcion monotona creciente, decrec y acotada', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(152, 37, 'funciones pares e impares', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(153, 37, 'demostración en abstracto de propiedades', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(154, 38, 'funcion con exponencial y logaritmos', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(155, 38, 'función parte entera (maximo entero)', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(156, 38, 'funcion signo o de Dirichlet', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(157, 38, 'funcion escalon unitario (Heaviside)', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(158, 39, 'Aplicacion de Funciones. Modelos en general', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(159, 39, 'Funciones Cuadráticas. Máximos, Mínimos', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(160, 39, 'Aplicacion de Funciones. Economía', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(161, 40, 'suma, resta y multiplicación de polinomios', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(162, 40, 'división general de polinomios', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(163, 40, 'división sintética (Ruffini y Horner)', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(164, 40, 'divisibilidad de polinomios', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(165, 40, 'teorema del resto y teorema del factor', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(166, 40, 'cotas, supremo, ínfimo, Descartes, hallar raíces', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(167, 40, 'factorización racional, real, complejo de polinomios', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(168, 40, 'dadas algunas raíces, búsqueda de las otras', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(169, 40, 'ejercicios con propiedad especial en sus raíces', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(170, 40, 'polinomios, otros ejercicios sofisticados', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(171, 40, 'asíntotas, polos y ceros, gráfica aproximada', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(172, 41, 'fracciones parciales con factores lineales', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(173, 41, 'fracciones parciales con factores cuadráticos', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(174, 41, 'fracciones parciales con factores mixtos', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(175, 42, 'ecuaciones exponenciales', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(176, 42, 'inecuaciones exponenciales', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(177, 42, 'gráficas aproximadas de funciones exponenciales', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(178, 43, 'logaritmos numéricos, desarrollar, calcular', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(179, 43, 'logaritmos literales, desarrollar', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(180, 43, 'ecuaciones logarítmicas', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(181, 43, 'inecuaciones logaritmicas', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(182, 43, 'gráficas aproximadas de funciones logarítmicas', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(183, 44, 'ecuaciones con exponencial y logaritmo', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(184, 44, 'inecuaciones con exponencial y logaritmo', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(185, 44, 'sistemas de ecuaciones, exponencial, logaritmo', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(186, 44, 'ejcs de demostración con exponencial y logaritmo', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(187, 44, 'funciones con exponencial y logaritmo', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(188, 44, 'dem. por inducción con exponencial y logaritmo', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(189, 44, 'cálculo de sumatorias con exponencial y logaritmo', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(190, 45, 'problemas de vida media, material radioactivo', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(191, 45, 'problemas de población', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(192, 45, 'problemas económicos', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(193, 45, 'problemas de otros temas', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(194, 46, 'ángulos, radianes, grados sexagesimales', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(195, 46, 'funciones trigonometricas de angulos usuales', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(196, 46, 'formulas de reduccion (ley del burro, burrito)', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(197, 46, 'dada una función trigonométrica, calcular otras', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(198, 47, 'identidades trigonométricas, nivel bajo', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(199, 47, 'identidades trigonométricas, nivel medio', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(200, 47, 'identidades trigonométricas, nivel alto', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(201, 47, 'funcion trigonometrica con ángulo desde los típicos', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(202, 47, 'funciones trigonometricas con angulos no típicos', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(203, 48, 'ecuaciones trigonométricas, simples', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(204, 48, 'ecuaciones, que piden soluciones básicas en [0,2pi]', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(205, 48, 'ecuaciones trigonométricas, nivel medio', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(206, 48, 'otras típicas ecuaciones trigonométricas, usuales', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(207, 48, 'ecuaciones trigonométricas, nivel alto', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(208, 48, 'sistemas de ecuaciones trigonométricos', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(209, 48, 'inecuaciones trigonometricas', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(210, 49, 'ejercicios en triángulos rectángulos', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(211, 49, 'ejercicios con teoremas: seno, coseno, tangente', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(212, 49, 'demostraciones en triángulos cualesquiera', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(213, 50, 'problemas de aplicación en triángulos rectángulos', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(214, 50, 'problemas de aplicación con teoremas: seno, coseno, tang', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(215, 50, 'problemas de aplicación navieros, rumbo, nudos, millas', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(216, 50, 'otros problemas de aplicación', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(217, 51, 'funciones trigonométricas, dominio, recorrido, etc', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(218, 51, 'funciones periódicas, periodo', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(219, 51, 'amplitud, periodo, fase, gráfica aproximada', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(220, 52, 'demostraciones por inducción', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(221, 52, 'ejercicios de verdadero y falso', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(222, 53, 'ejercicios de calcular, reducir expresiones', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(223, 53, 'identidades de funciones trigonométricas inversas', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(224, 53, 'ecuaciones con funciones trigonométricas inversas', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(225, 54, 'inicial, forma cartesiana, polar, representaciones', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(226, 54, 'operatoria con forma: a+bi (binomial, cartesiana)', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(227, 54, 'operatoria con forma polar, cis', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(228, 54, 'operatoria con forma de Euler', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(229, 54, 'calculo de raices complejas', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(230, 55, 'ecuaciones complejas con variable real', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(231, 55, 'ecuaciones complejas con variable compleja', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(232, 55, 'gráficas de soluciones de ecuaciones, inecuaciones', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(233, 56, 'demostraciones de propiedades', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(234, 56, 'otros cálculos y demostraciones, nivel medio', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(235, 56, 'otros cálculos y demostraciones, más nivel', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(236, 56, 'dadas unas expresiones, calcular otras', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(237, 56, 'demostracion por induccion con números complejos', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(238, 57, 'vectores dirigidos, representación', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(239, 57, 'suma, resta, multiplicación por escalar', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(240, 57, 'norma, magnitud (módulo) y vectores unitarios', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(241, 57, 'linealmente independientes, dependientes', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(242, 58, 'producto punto (escalar), ángulos, ortogonalidad', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(243, 58, 'números, cosenos directores', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(244, 58, 'producto cruz (vectorial), regla de la mano derecha', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(245, 58, 'producto mixto (triple)', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(246, 58, 'colineales y coplanares', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(247, 58, 'proyección, componente', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(248, 59, 'ejercicios mezclados, cálculos, demostraciones, simples', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(249, 59, 'ejercicios mezclados, cálculos, demostraciones, más nivel', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(250, 59, 'ecuaciones vectoriales', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(251, 59, 'demostraciones de propiedades', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(252, 59, 'ejercicios de cálculo y demostraciones geometricas', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(253, 60, 'area de un triángulo y paralelogramo', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(254, 60, 'volumen de un paralelepipedo y piramide', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(255, 60, 'otras aplicaciones con vectores', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(256, 61, 'fuerzas, estatica, equilibrio', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(257, 61, 'torque, momento de rotación', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(258, 62, 'ejercicios con rectas', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(259, 62, 'ejercicios con planos', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(260, 63, 'ángulo entre, rectas, planos, recta-plano, otros', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(261, 63, 'intersección entre, rectas, planos, recta-plano, otros', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(262, 64, 'distancia de punto a recta, plano, entre rectas, otros', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(263, 64, 'ejercicios combinados, rectas y planos, nivel medio', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(264, 64, 'ejercicios combinados, rectas y planos, más nivel', '2023-04-05 02:02:35', '2023-04-05 02:02:35'),
(265, 65, 'ejercicios con parámetros por determinar', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(266, 65, 'ejercicios de planos proyectantes', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(267, 66, 'otros ejercicios, de aplicación, demostraciones', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(268, 67, 'dem. de límites según def. Cauchy', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(269, 67, 'dem. de límites según def. Heine', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(270, 67, 'dem. de no existencia de límites', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(271, 67, 'teorema de enlace', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(272, 67, 'teorema del acotamiento (sandwich)', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(273, 67, 'teorema del cero aniquila', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(274, 67, 'lím. de func. polinómicas racionales', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(275, 67, 'lím. de func. irracionales (raíces)', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(276, 67, 'lím. de func. trigonométricas 1', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(277, 67, 'lím. de func. trigonométricas 2', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(278, 67, 'lím. de func. exponenciales', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(279, 67, 'lím. de func. logarítmicas', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(280, 67, 'límites laterales', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(281, 67, 'lím. de funciones con valor absoluto', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(282, 67, 'lím. de funciones con parte entera', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(283, 67, 'lím. de funciones signo o de Dirichlet', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(284, 67, 'lím. de función escalón (Heaviside)', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(285, 67, 'límites cuando x-->oo (infinito)', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(286, 67, 'otros', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(287, 68, 'tipo de discontinuidad por salto', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(288, 68, 'tipo de discontinuidad infinita', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(289, 68, 'tipo de discontinuidad oscilación infinita', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(290, 68, 'discontinuidades reparables', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(291, 68, 'discontinuidades irremediables', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(292, 68, 'teorema del valor intermedio', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(293, 69, 'derivadas con uso de la definición', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(294, 69, 'álgebra de der. y derivadas simples', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(295, 70, 'func. potenciales con regla de la cadena', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(296, 70, 'func. con raíces con regla de la cadena', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(297, 70, 'func. trigonométricas con regla de cadena', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(298, 70, 'func. exponenciales con regla de cadena', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(299, 70, 'func. logarítmicas con regla de la cadena', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(300, 70, 'func. hiperbólicas con regla de la cadena', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(301, 70, 'miscelánea 1 der. con regla de la cadena', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(302, 70, 'miscelánea 2 der. con regla de la cadena', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(303, 70, 'der. de la función compuesta (literales)', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(304, 71, 'derivadas de la función inversa', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(305, 71, 'der. de las func. inversas trigonométricas', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(306, 71, 'der. de las func. inversas hiperbólicas', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(307, 72, 'miscelánea 3 de der. con regla de cadena', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(308, 72, 'derivadas de orden superior', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(309, 72, 'fórmula de Leibnitz', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(310, 72, 'derivadas laterales', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(311, 72, 'derivadas implícitas', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(312, 72, 'der. de func. dadas en forma paramétrica', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(313, 72, 'der. de func. dadas en coord. polares', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(314, 73, 'interpretación geométrica', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(315, 73, 'recta tangente', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(316, 73, 'teorema de Rolle', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(317, 73, 'teorema del Valor Medio', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(318, 73, 'interpretación física', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(319, 73, 'rapidez de un móvil', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(320, 73, 'otras interpretaciones físicas de la der.', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(321, 73, 'razón de cambio (en el tiempo)', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(322, 73, 'diferencial de una función', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(323, 73, 'aplicación al cálculo de errores', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(324, 73, 'regla de L\'Hôpital', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(325, 73, 'problemas de optimización', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(326, 73, 'máximos y mínimos absolutos', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(327, 73, 'creciente y decreciente', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(328, 73, 'máximos y mínimos locales o relativos', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(329, 73, 'cóncava hacia arriba y abajo (convexa)', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(330, 73, 'puntos de inflexión', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(331, 73, 'asíntotas horizontales, vert. y oblicuas', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(332, 73, 'anál. curvas dadas en forma explícita', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(333, 73, 'anál. curvas paramétricas', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(334, 74, 'Aplic. a la Economía (Marginales)', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(335, 75, 'antiderivadas (o primitivas)', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(336, 76, 'formulario e integrales directas', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(337, 76, 'con desarrollos algebraicos simples', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(338, 77, 'sustitución simple', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(339, 77, 'integrales trigonométricas', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(340, 77, 'integración por partes', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(341, 77, 'sustitución trigonométrica', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(342, 77, 'sustitución hiperbólica', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(343, 77, 'integrales polinómicas racionales', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(344, 77, 'método de fracciones parciales', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(345, 77, 'método del ángulo medio', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(346, 77, 'integrales irracionales (raíces)', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(347, 77, 'otros', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(348, 78, 'fórmulas de reducción (recurrencia)', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(349, 78, 'aplicación de la integral indefinida', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(350, 79, 'propiedades', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(351, 79, 'teorema fundamental del cálculo', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(352, 79, 'teorema de sustitución', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(353, 79, 'derivada de una integral', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(354, 79, 'integración por partes en integral definida', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(355, 79, 'integral de funciones pares e impares', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(356, 79, 'integral de funciones periódicas', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(357, 80, 'funciones Riemann-integrables', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(358, 80, 'lím. sucesión (ver otros tipos de suc.)', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(359, 81, 'propiedades', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(360, 81, 'teorema fundamental del cálculo', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(361, 81, 'teorema de sustitución', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(362, 81, 'derivada de una integral', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(363, 81, 'integración por partes en integral definida', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(364, 81, 'integral de funciones pares e impares', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(365, 81, 'integral de funciones periódicas', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(366, 82, 'funciones Riemann-integrables', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(367, 82, 'lím. sucesión (ver otros tipos de suc.)', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(368, 83, 'área entre curvas rectangulares', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(369, 83, 'área entre curvas paramétricas', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(370, 83, 'área entre curvas en coord. polares', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(371, 84, 'long. de curvas en coord. rectangulares', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(372, 84, 'long. de curvas en forma paramétrica', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(373, 84, 'long. de curvas en coord. polares', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(374, 85, 'vol. de rev. con curvas rectangulares', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(375, 85, 'vol. de rev. con curvas paramétricas', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(376, 85, 'vol. de rev. con curvas en polares', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(377, 85, 'superf. de rev. con curvas rectangulares', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(378, 85, 'superf. de rev. con curvas paramétricas', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(379, 85, 'superf. de rev. con curvas polares', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(380, 86, 'centro geométrico', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(381, 86, 'teorema de Pappus', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(382, 87, 'volumen de no-revolución', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(383, 87, 'función promedio', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(384, 87, 'centro de masa', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(385, 87, 'momento de inercia', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(386, 87, 'presión, temperatura, etc.', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(387, 88, 'excedente del consumidor', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(388, 88, 'excedente del productor', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(389, 89, 'int. impropia de primera especie', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(390, 89, 'int. impropia de segunda especie', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(391, 89, 'int. impropias mixtas', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(392, 90, 'directa o pura', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(393, 90, 'al límite o asintótico', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(394, 91, 'Áreas de regiones no acotadas', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(395, 92, 'definición de sucesión', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(396, 92, 'lím. de suc. con \"n elevado a número\"', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(397, 92, 'lím. de suc. con \"número elevado a n\"', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(398, 92, 'teo. acotamiento (sandwich)', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(399, 92, 'sub sucesiones', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(400, 92, 'lím. de suc. con forma. \"(1+1/n) elev. a n\"', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(401, 92, 'lím. de suc. con regla de L\'Hôpital', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(402, 92, 'sucesiones acotadas', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(403, 92, 'suc. crecientes y decrecientes', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(404, 92, 'sucesiones monótonas', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(405, 92, 'sucesiones recursivas (recurrencia)', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(406, 93, 'lím. de suc. que contienen sumatorias', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(407, 93, 'lím. de suc. con criterio de Stolz', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(408, 93, 'lím. de suc. con integral de Riemann', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(409, 93, 'sucesiones de Cauchy', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(410, 93, 'suc. recursivas oscilantes amortiguadas', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(411, 94, 'Aplicación de Sucesiones', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(412, 95, 'definición de una serie', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(413, 95, 'sucesión de sumas parciales', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(414, 95, 'sucesión interna', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(415, 95, 'resto de una serie', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(416, 95, 'serie geométrica', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(417, 95, 'cálculo de series con prop. telescópica', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(418, 95, 'criterio (o test) de la divergencia', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(419, 95, 'serie p-armónica', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(420, 95, 'criterio (o test) de comparación directa', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(421, 95, 'criterio de comp. al lím. (asintótico)', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(422, 95, 'criterio (o test) de la integral', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(423, 95, 'convergencia absoluta y condicional', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(424, 95, 'criterio (o test) de conv. absoluta', '2023-04-05 02:02:36', '2023-04-05 02:02:36'),
(425, 95, 'criterio (o test) de Leibniz', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(426, 95, 'truncar una serie alternada. Error', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(427, 95, 'criterio (o test) de la Razón (D\'Alembert)', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(428, 95, 'criterio (o test) de Raabe', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(429, 95, 'criterio (o test) de la Raíz', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(430, 95, 'criterio (o test) de Dirichlet', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(431, 95, 'criterio (o test) de Abel', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(432, 95, 'criterio (o test) de Kummers', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(433, 95, 'criterio (o test) de Gauss', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(434, 95, 'eliminación e inserción de paréntesis', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(435, 96, 'Aplicación de Series', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(436, 97, 'Sucesiones de Funciones', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(437, 98, 'convergencia puntual', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(438, 98, 'convergencia uniforme', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(439, 98, 'teorema de Weierstrass', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(440, 98, 'teo. para derivada e integral de series', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(441, 99, 'intervalo de convergencia', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(442, 99, 'radio de convergencia', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(443, 99, 'dominio de convergencia', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(444, 99, 'series geométricas disfrazadas', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(445, 100, 'desarrollo en serie de Taylor, con def.', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(446, 100, 'polinomio de Taylor', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(447, 100, 'series de McLaurin', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(448, 100, 'series de McLaurin típicas', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(449, 101, 'Resto de Taylor y Lagrange', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(450, 101, 'cálculo de sumas aproximadas', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(451, 101, 'approx. de func. con polinomios de Taylor', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(452, 102, 'Otras Aplicaciones', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(453, 103, 'suma, resta y multiplicación por escalar', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(454, 103, 'igualación de matrices', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(455, 103, 'multiplicación de matrices', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(456, 103, 'aplicación 1 de matrices', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(457, 103, 'matrices conmutables (anti conmutables)', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(458, 103, 'matrices: triangulares, diagonales', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(459, 103, 'matrices: tridiagonales, de Banda', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(460, 103, 'potencias de una matriz', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(461, 103, 'valoración en polinomios', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(462, 103, 'traspuesta de una matriz', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(463, 103, 'matrices simétricas (antisimétricas)', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(464, 103, 'inversa de una matriz de 2x2', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(465, 103, 'matrices complejas', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(466, 103, 'matrices hermíticas (anti hermitianas)', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(467, 104, 'operaciones elementales filas y columnas', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(468, 104, 'matrices elementales', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(469, 104, 'matriz escalonada', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(470, 104, 'matriz pivoteada', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(471, 104, 'matriz triangularizada', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(472, 104, 'matriz escalonada reducida por filas', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(473, 104, 'descomposición LU', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(474, 104, 'rango de una matriz', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(475, 104, 'inversas de matrices con orden > 2x2', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(476, 104, 'ejercicios de verdadero y falso', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(477, 105, 'cálculo de determinantes', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(478, 105, 'método de Sarrus - Ruffini', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(479, 105, 'desarrollo de Laplace', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(480, 105, 'menores y cofactores', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(481, 105, 'rango de una matriz', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(482, 105, 'matriz adjunta', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(483, 105, 'cálculo de inversas de matrices', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(484, 105, 'ejercicios de verdadero y falso', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(485, 105, 'otros', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(486, 105, 'producto cruz (véase vectores)', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(487, 106, 'clasificación de SEL', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(488, 106, 'SEL consistentes o compatibles', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(489, 106, 'SEL inconsistentes o incompatibles', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(490, 106, 'SEL indeterminados', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(491, 106, 'SEL rectangulares (Gauss-Jordan)', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(492, 106, 'SEL cuadrados y método de Cramer', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(493, 106, 'ejercicios de verdadero y falso', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(494, 106, 'otros', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(495, 107, 'estructuras algebraicas de grupo', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(496, 107, 'estructuras algebraicas de cuerpo', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(497, 107, 'espacios vectoriales', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(498, 107, 'subespacios vectoriales', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(499, 107, 'intersección, suma y unión', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(500, 107, 'combinación lineal', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(501, 107, 'linealmente dependiente e independiente', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(502, 107, 'sistema de generadores', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(503, 107, 'subespacio generado (engendrado)', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(504, 107, 'base de un subespacio', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(505, 107, 'dimensión de un subespacio', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(506, 107, 'suma directa', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(507, 107, 'teorema de la dimensión', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(508, 107, 'teorema de sustitución', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(509, 107, 'teorema de extensión', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(510, 108, 'coordenadas respecto a una base', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(511, 108, 'matriz de transición, cambio base o de pasaje', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(512, 108, 'propiedades', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(513, 108, 'aplicación a la rotación de ejes', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(514, 109, 'Kernel o Núcleo de una transf. lineal', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(515, 109, 'transformación lineal inyectiva', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(516, 109, 'imágen o recorrido de una transf. lineal', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(517, 109, 'transformación lineal epiyectiva', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(518, 109, 'monomorfismos', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(519, 109, 'epimorfismos', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(520, 109, 'endomorfismos', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(521, 109, 'isomorfismos', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(522, 109, 'operadores', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(523, 109, 'operadores diferenciales (véase EDOs)', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(524, 109, 'inversa de una transformación lineal', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(525, 109, 'suma y resta de transf. lineales', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(526, 109, 'compuesta de transf. lineales', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(527, 109, 'matriz asociada a una transf. lineal', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(528, 109, 'propiedades de la matriz de asociada', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(529, 110, 'valores propios o característicos, autovalores', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(530, 110, 'vectores propios o característicos, autovectores', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(531, 110, 'espacios propios o nulos (Autoespacios)', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(532, 110, 'matrices diagonalizables', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(533, 110, 'transformaciones diagonalizables', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(534, 110, 'teorema Cayley-Hamilton', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(535, 110, 'formas canónicas de Jordan', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(536, 110, 'aplicación a cadenas de Markov', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(537, 111, 'producto interno, punto, interior', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(538, 111, 'norma, ángulo y dist. entre vectores', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(539, 111, 'conjuntos ortogonales y ortonormales', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(540, 111, 'ortogonalización de Gram-Schmidt', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(541, 111, 'matrices ortogonales', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(542, 111, 'descomposición QR', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(543, 111, 'mínimos cuadrados', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(544, 112, 'Formas Bilineales y Cuadráticas', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(545, 113, 'Formas Hermíticas', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(546, 114, 'Funcionales Lineales y Espacio Dual', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(547, 115, 'Curvas y Superficies de Nivel', '2023-04-05 02:02:37', '2023-04-05 02:02:37');
INSERT INTO `items` (`id`, `section_id`, `name`, `created_at`, `updated_at`) VALUES
(548, 116, 'conjuntos abiertos, cerrados', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(549, 116, 'puntos fronteras e interiores', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(550, 116, 'puntos de acumulación', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(551, 116, 'conjuntos acotados y conexos', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(552, 116, 'conjuntos convexos y compactos', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(553, 117, 'funciones escalares', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(554, 117, 'funciones vectoriales', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(555, 117, 'dominio y recorrido', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(556, 117, 'curvas de nivel de una función dada', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(557, 118, 'dem. de límite usando la definición', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(558, 118, 'límites iterados', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(559, 118, 'teorema de acotamiento (Sandwich)', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(560, 118, 'trayectorias: rectas, parábolas, etc.', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(561, 119, 'continuidad reparable', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(562, 119, 'discontinuidad irreparable', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(563, 120, 'definición', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(564, 120, 'derivadas de funciones escalares', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(565, 120, 'orden superior', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(566, 120, 'derivada de una integral', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(567, 120, 'derivada de funciones vectoriales', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(568, 120, 'matriz Jacobiana', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(569, 121, 'funciones diferenciables', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(570, 121, 'definiciones y teoremas', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(571, 121, 'errores e incrementos', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(572, 121, 'cálculo aproximado usando la diferencial', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(573, 122, 'derivadas de primer orden', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(574, 122, 'arbolito', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(575, 122, 'derivadas de segundo orden', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(576, 123, 'Razón de Cambio (en el tiempo)', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(577, 124, 'plano tangente y recta normal', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(578, 124, 'recta tangente', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(579, 124, 'derivadas de segundo orden', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(580, 124, 'ángulo entre superficies', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(581, 125, 'Derivada Direccional (Razón de Cambio Direccional)', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(582, 126, 'variables dependientes', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(583, 126, 'variables independientes (libres)', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(584, 127, 'definición y propiedades de Jacobianos', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(585, 127, 'condición de existencia de derivadas', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(586, 128, 'dominio y recorrido', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(587, 128, 'condiciones de existencia', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(588, 128, 'Imagen de transformaciones', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(589, 128, 'inversa de una función', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(590, 129, 'Series de Taylor en Varias Variables', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(591, 130, 'criterio por vecindades', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(592, 130, 'forma cuadrática Hessiano', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(593, 130, 'matriz Hessiana', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(594, 131, 'función objetivo', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(595, 131, 'ecuaciones condiciones (restricciones)', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(596, 131, 'multiplicadores de Lagrange', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(597, 131, 'matriz Orlada', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(598, 132, 'cálculo de integrales dobles', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(599, 132, 'invertir el orden de integración', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(600, 132, 'uso de cambio de coord. arbitrario', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(601, 132, 'cambio de coordenadas a polares', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(602, 133, 'áreas en coord. rectangulares', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(603, 133, 'áreas en coord. polares', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(604, 133, 'volumen en coord. rectangulares', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(605, 133, 'función promedio', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(606, 133, 'centros geométricos (centroides)', '2023-04-05 02:02:37', '2023-04-05 02:02:37'),
(607, 133, 'masa de una lámina', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(608, 133, 'centro de masa de una lámina', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(609, 133, 'momento de inercia de una lámina', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(610, 134, 'cálculo de integrales triples', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(611, 134, 'cambiar el orden de integración', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(612, 134, 'uso de cambio de coord. arbitrario', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(613, 134, 'cambio de coordenadas a cilíndricas', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(614, 134, 'cambio de coordenadas a esféricas', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(615, 135, 'volumen en coord. rectangulares', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(616, 135, 'volumen en coord. cilíndricas', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(617, 135, 'volumen en coord. esféricas', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(618, 135, 'función promedio', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(619, 135, 'centros geométricos (centroides)', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(620, 135, 'masa de un sólido', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(621, 135, 'centro de masa de un sólido', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(622, 135, 'momento de inercia de un sólido', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(623, 136, 'definición', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(624, 136, 'integrales de primera especie', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(625, 136, 'integrales de segunda especie', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(626, 136, 'integrales mixtas', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(627, 136, 'criterios de convergencia', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(628, 137, 'Aplicación', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(629, 138, 'representación vectorial de una curva', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(630, 138, 'parametrización con parámetro \"t\"', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(631, 138, 'parametrización con parámetro \"s\"', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(632, 138, 'longitud de una curva', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(633, 139, 'vector tangente', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(634, 139, 'vector normal', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(635, 139, 'vector binormal', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(636, 139, 'fórmulas Serret-Frenet', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(637, 139, 'plano normal, rectificante y osculador', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(638, 139, 'curvatura y torsión', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(639, 139, 'radios de curvatura y torsión', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(640, 139, 'velocidad y aceleración', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(641, 140, 'coeficientes métricos', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(642, 140, 'superficies coordenadas', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(643, 140, 'coordenadas ortogonales', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(644, 140, 'gradiente y laplaciano', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(645, 140, 'divergencia y rotor', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(646, 141, 'integrales de línea con parámetro \"s\"', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(647, 141, 'cálculo de la masa de una curva (alambre)', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(648, 141, 'centro de masa de una curva (alambre)', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(649, 141, 'momento de inercia de una curva (alambre)', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(650, 141, 'integrales de línea con parámetro \"t\"', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(651, 141, 'campos conservativos (gradientes)', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(652, 141, 'trabajo efectuado por una fuerza f', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(653, 141, 'función potencial (potencial escalar)', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(654, 142, 'hipótesis del teorema de Green', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(655, 142, 'trabajo efectuado por una fuerza f', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(656, 142, 'integral en región múltiplemente conexa', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(657, 143, 'integrales de línea con parámetro \"s\"', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(658, 143, 'cálculo de la masa de una curva (alambre)', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(659, 143, 'centro de masa de una curva (alambre)', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(660, 143, 'momento de inercia de una curva (alambre)', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(661, 143, 'integrales de línea con parámetro \"t\"', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(662, 143, 'campos conservativos (gradientes)', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(663, 143, 'trabajo efectuado por una fuerza f', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(664, 143, 'función potencial (potencial escalar)', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(665, 144, 'hipótesis del teorema de Stokes', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(666, 144, 'trabajo efectuado por una fuerza f', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(667, 144, 'integral en región múltiplemente conexa', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(668, 145, 'superficie orientable', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(669, 145, 'cinta o banda de Mobius', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(670, 145, 'botella o garrafa de Klein', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(671, 146, 'cálculo de integrales de superficie', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(672, 146, 'cálculo de la masa de una lámina', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(673, 146, 'centro de masa de una lámina', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(674, 146, 'momento de inercia de una lámina', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(675, 147, 'cálculo de integrales de superficie', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(676, 147, 'aplicación', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(677, 148, 'hipótesis del teorema de Gauss', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(678, 148, 'flujo efectuado por un Campo f', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(679, 148, 'regiones volumétricas con hoyos', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(680, 149, 'variables separables (separadas)', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(681, 149, 'tipo homogéneas', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(682, 149, 'traslación', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(683, 149, 'ecuación diferencial exacta', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(684, 149, 'factor de integrante (o de exactitud)', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(685, 149, 'ec. dif. exacta (simple inspección)', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(686, 149, 'otros factores de integración', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(687, 149, 'ecuación diferencial lineal', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(688, 149, 'ecuación de Bernoulli', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(689, 149, 'ecuación de Riccati', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(690, 150, 'problemas con ec. de var. separables', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(691, 150, 'problemas con ec. tipo homogénea', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(692, 150, 'problemas con ec. exacta', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(693, 150, 'problemas con ec. dif. lineal', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(694, 151, 'problema de Cauchy', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(695, 151, 'funciones Lipschitzianas', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(696, 151, 'espacio solución', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(697, 151, 'Kernel o Núcleo del operador', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(698, 151, 'Wonskiano. Soluciones LI', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(699, 151, 'fórmulas de Abel', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(700, 152, 'sol. bajo raíces reales distintas', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(701, 152, 'sol. bajo raíces reales repetidas', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(702, 152, 'sol. bajo raíces reales complejas', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(703, 152, 'sol. general y cálculo de constantes', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(704, 153, 'anuladores (aniquiladores)', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(705, 153, 'cálculo de coeficientes', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(706, 154, 'normalización de la EDO', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(707, 154, 'forma de la solución particular', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(708, 154, 'cálculo de coeficientes', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(709, 154, 'función de Green', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(710, 155, 'Reducción de Orden', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(711, 156, 'Ecuación de Euler-Cauchy', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(712, 157, 'Problemas de Aplicación', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(713, 158, 'puntos de equilibrios', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(714, 158, 'atractor y repulsor', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(715, 158, 'forma de la solución', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(716, 158, 'uso de coord. polares (espirales, focos)', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(717, 158, 'problemas de aplicación', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(718, 159, 'puntos de equilibrios', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(719, 159, 'nodos atractores y repulsores', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(720, 159, 'sillas (fuentes)', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(721, 159, 'nodos de una tangente atractor y repulsor', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(722, 159, 'nodos estelares atractor y repulsor', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(723, 159, 'centros', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(724, 159, 'focos (espirales) atractor y repulsor', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(725, 159, 'uso de coord. polares', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(726, 159, 'ciclos límites', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(727, 159, 'problemas de aplicación', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(728, 160, 'definición de transformada de Laplace', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(729, 160, 'funciones de orden exponencial', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(730, 160, 'funciones continuas por tramos (seccional)', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(731, 160, 'propiedades de la transformada de Laplace', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(732, 160, 'transformada inversa', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(733, 160, 'transformadas de funciones simples', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(734, 161, 'primer teorema de traslación', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(735, 161, 'función escalón unitario (Heaviside)', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(736, 161, 'segundo teorema de traslación', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(737, 161, 'teorema de dilatación', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(738, 161, 'multiplicación por \"t\"', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(739, 161, 'división por \"t\"', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(740, 161, 'transformada de funciones periódicas', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(741, 161, 'transformada de la derivada', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(742, 161, 'transformada de la integral', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(743, 162, 'función Gamma', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(744, 162, 'función Escalón de Heaviside', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(745, 162, 'función Impulso o Delta de Dirac', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(746, 163, 'Producto de Convolución', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(747, 164, 'formación de cuadrados', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(748, 164, 'uso de fracciones simples o parciales', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(749, 164, 'uso del producto de convolución', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(750, 165, 'resolución de ecuaciones diferenciales', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(751, 165, 'resolución de ecs. integro-diferenciales', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(752, 165, 'resolución de sist. de ecs. diferenciales', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(753, 165, 'cálculo de integrales impropias', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(754, 165, 'problemas de aplicación', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(755, 166, 'funciones analíticas', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(756, 166, 'solución mediante una serie de Taylor', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(757, 167, 'puntos singulares', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(758, 167, 'punto singular-regular y singular-irregular', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(759, 167, 'ecuación indicial', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(760, 167, 'casos en el método de Frobenius', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(761, 168, 'solución de primera clase', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(762, 168, 'solución de segunda clase', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(763, 168, 'propiedades', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(764, 168, 'problemas varios', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(765, 169, 'def. del problema de Sturm-Liouville', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(766, 169, 'funciones peso o ponderación', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(767, 169, 'valores propios y funciones propias', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(768, 169, 'expansión de funciones en series', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(769, 169, 'prob. de Sturm-Liouville asociado', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(770, 169, 'resolución de Edo\'s homogéneas', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(771, 170, 'producto interno y ortogonalidad', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(772, 170, 'serie de Fourier arbitraria', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(773, 170, 'coeficientes de Fourier', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(774, 170, 'convergencia en promedio', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(775, 170, 'identidad de Parseval General', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(776, 170, 'producto interno definido en PC[-p,p]', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(777, 170, 'serie de Fourier trigonométrica', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(778, 170, 'serie de Fourier compleja', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(779, 170, 'extensión par (serie Cosenoidal)', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(780, 170, 'extensión impar (serie Senoidal)', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(781, 170, 'identidad de Parseval', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(782, 171, 'cálculo de Series con serie de Fourier', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(783, 171, 'cálculo de Series con identidad de Parseval', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(784, 172, 'transformada de Fourier Senoidal', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(785, 172, 'transformada de Fourier Cosenoidal', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(786, 172, 'transformada de Fourier Compleja', '2023-04-05 02:02:38', '2023-04-05 02:02:38'),
(787, 172, 'teoremas y fórmulas de transformadas', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(788, 172, 'convolución', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(789, 173, 'Sol. de EDP por Transf. Fourier (ver EDP)', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(790, 174, 'funciones de soporte compacto', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(791, 174, 'funciones que tienden rápidamente a cero', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(792, 174, 'distribuciones', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(793, 175, 'función Escalón Unitario (Heaviside)', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(794, 175, 'función Rampa', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(795, 175, 'función Impulso o delta de Dirac', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(796, 176, 'Derivada Distribucional', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(797, 177, 'características', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(798, 177, 'superficie integral', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(799, 177, 'curva condición', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(800, 178, 'discriminante', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(801, 178, 'tipo hiperbólica', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(802, 178, 'tipo parabólica', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(803, 178, 'tipo elíptica', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(804, 178, 'cambio de variables y regla de la cadena', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(805, 178, 'forma normal o canónica', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(806, 178, 'sol. de D\'Alembert (ver EDP de Onda)', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(807, 179, 'factorización', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(808, 179, 'factores con a distinto de cero', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(809, 179, 'factores con a = 0', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(810, 180, 'solución particular', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(811, 180, 'forma exponencial para la sol. particular', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(812, 180, 'desarrollo de Taylor para la sol. particular', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(813, 181, 'condiciones de borde homogéneas', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(814, 181, 'solución particular', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(815, 181, 'condiciones de borde no- homogéneas', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(816, 182, 'con transformada Senoidal', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(817, 182, 'con transformada Cosenoidal', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(818, 182, 'con transformada Compleja', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(819, 182, 'transformada inversa', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(820, 183, 'regiones rectangulares (unidimensional)', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(821, 183, 'regiones rectangulares (bidimensional)', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(822, 183, 'regiones circulares (bidimensional)', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(823, 183, 'solución de D\'Alembert', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(824, 184, 'estado estacionario y transiente', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(825, 184, 'regiones rectangulares (unidimensional)', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(826, 184, 'regiones rectangulares (bidimensional)', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(827, 184, 'regiones rectangulares (tridimensional)', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(828, 184, 'regiones circulares (bidimensional)', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(829, 184, 'regiones cilíndricas (tridimensional)', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(830, 184, 'regiones esféricas (tridimensional)', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(831, 185, 'EDP de Laplace', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(832, 186, 'suma y resta con la forma: a+bi', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(833, 186, 'producto y división con la forma: a+bi', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(834, 186, 'parte real y parte imaginaria', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(835, 186, 'módulo y conjugado', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(836, 186, 'forma polar, cis y de Euler', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(837, 186, 'potencias de números complejos', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(838, 186, 'raíces de números complejos', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(839, 186, 'ecuaciones con complejos', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(840, 186, 'inecuaciones con complejos', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(841, 186, 'otros', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(842, 187, 'ejerc. demostrativos de N°. Complejos', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(843, 188, 'vecindad', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(844, 188, 'conjuntos abiertos y cerrados', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(845, 188, 'puntos fronteras e interiores', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(846, 188, 'puntos de acumulación', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(847, 188, 'conjuntos conexos', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(848, 188, 'conjuntos acotados y compactos', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(849, 189, 'dominio y recorrido', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(850, 189, 'dominio anular', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(851, 189, 'transformaciones y mapeos', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(852, 189, 'traslación y rotación', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(853, 189, 'contracciones y dilatación', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(854, 189, 'transformación conforme', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(855, 190, 'función potencial', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(856, 190, 'funciones multivaluadas', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(857, 190, 'ramas y rama principal', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(858, 190, 'puntos de ramificación', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(859, 190, 'función raíz', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(860, 190, 'función exponencial', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(861, 190, 'funciones trigonométricas', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(862, 190, 'funciones hiperbólicas', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(863, 190, 'función logaritmo', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(864, 190, 'funciones inversas', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(865, 190, 'funciones inversas trigonométricas', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(866, 190, 'funciones inversas hiperbólicas', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(867, 191, 'definición de límite', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(868, 191, 'límites de funciones típicas', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(869, 192, 'tipos de discontinuidad', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(870, 192, 'discontinuidad reparable', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(871, 192, 'discontinuidad irremediable', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(872, 192, 'discontinuidad removible', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(873, 193, 'definición', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(874, 193, 'condiciones de Cauchy-Riemann', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(875, 193, 'Cauchy-Riemann en forma polar', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(876, 193, 'funciones analíticas, enteras', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(877, 193, 'funciones holomorfas, meromorfas', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(878, 193, 'teo. módulo mínimo', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(879, 193, 'teo. módulo máximo', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(880, 193, 'continuación analítica', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(881, 194, 'ceros de una función', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(882, 194, 'polos de una función', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(883, 194, 'residuos de una función', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(884, 194, 'singularidad reparable', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(885, 194, 'singularidad esencial', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(886, 195, 'parte principal', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(887, 195, 'parte analítica', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(888, 195, 'series de Taylor', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(889, 195, 'series de Laurant', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(890, 195, 'resto', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(891, 195, 'convergencia en discos y discos anulares', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(892, 195, 'singularidades en el infinito', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(893, 196, 'integrales por caminos o curvas', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(894, 196, 'teorema integral de Cauchy', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(895, 196, 'teorema de Morera y Goursat', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(896, 196, 'teorema de los residuos', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(897, 196, 'integrales usando series de Laurant', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(898, 197, 'integrales de -infinito a +infinito', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(899, 197, 'integrales de 0 a 2pi', '2023-04-05 02:02:39', '2023-04-05 02:02:39'),
(900, 197, 'otras', '2023-04-05 02:02:39', '2023-04-05 02:02:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_04_04_165658_create_sessions_table', 1),
(7, '2023_04_04_181722_create_sectors_table', 1),
(8, '2023_04_04_181906_create_chapters_table', 1),
(9, '2023_04_04_182041_create_sections_table', 1),
(10, '2023_04_04_182112_create_items_table', 1),
(11, '2023_04_04_182113_create_exercises_table', 1),
(12, '2023_04_04_182159_create_exercise_comments_table', 1),
(13, '2023_04_04_182503_create_development_exercises_table', 1),
(14, '2023_04_04_185639_create_header_exercises_table', 1),
(15, '2023_04_04_185834_create_video_exercises_table', 1),
(16, '2023_04_04_185906_create_exercise_users_table', 1),
(17, '2023_04_04_190335_create_exercise_likes_table', 1),
(18, '2023_04_04_194143_create_exercise_reports_table', 1),
(19, '2023_04_04_194208_create_exercise_visualizations_table', 1),
(20, '2023_04_04_194306_create_currencies_table', 1),
(21, '2023_04_04_194332_create_subscriptions_table', 1),
(22, '2023_04_04_194353_create_payments_table', 1),
(23, '2023_04_04_194415_create_countries_table', 1),
(24, '2023_04_04_194433_create_regions_table', 1),
(25, '2023_04_04_194454_create_cities_table', 1),
(26, '2023_04_04_194510_create_communes_table', 1),
(27, '2023_04_04_194529_create_addresses_table', 1),
(28, '2023_04_04_194607_create_universities_table', 1),
(29, '2023_04_04_194632_create_degrees_table', 1),
(30, '2023_04_04_194651_create_subjects_table', 1),
(31, '2023_04_04_194711_create_user_subjects_table', 1),
(32, '2023_04_04_194810_create_images_table', 1),
(33, '2023_04_04_195023_create_exercise_visualization_unregistered_table', 1),
(34, '2023_04_04_195145_create_exercise_user_durations_table', 1),
(35, '2023_04_27_172133_add_parent_id_to_exercise_comments_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED DEFAULT NULL,
  `currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_date` date NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `card_number` int(11) NOT NULL,
  `card_name` varchar(255) NOT NULL,
  `card_expiration` varchar(255) NOT NULL,
  `card_cvc` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regions`
--

CREATE TABLE `regions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chapter_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sections`
--

INSERT INTO `sections` (`id`, `chapter_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Axiomas de los Números Reales', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(2, 1, 'Operatoria en Álgebra', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(3, 1, 'Raíces', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(4, 1, 'Ecuaciones I', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(5, 1, 'Sistema de Ecuaciones', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(6, 1, 'Problemas Aplicación con Ecs. (ver en Mat. Aplic.)', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(7, 1, 'Desigualdades', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(8, 1, 'Expresiones y Ecuaciones II', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(9, 1, 'Inecuaciones sin raíces y sin valor absoluto', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(10, 1, 'Inecuaciones con valor absoluto', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(11, 1, 'Inecuaciones con raíces y mixtas', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(12, 1, 'Otras Inecuaciones y Sistemas de Inecuaciones', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(13, 1, 'Problemas de Aplicación con inecuaciones', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(14, 1, 'Axioma del Supremo', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(15, 2, 'Razones, Razón propia e impropia', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(16, 2, 'Proporciones', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(17, 2, 'Cambio de Unidades', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(18, 2, 'Porcentajes', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(19, 2, 'Variación Porcentual', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(20, 2, 'Proporcionalidad', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(21, 2, 'Problemas de Planteo', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(22, 3, 'Lógica', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(23, 3, 'Cuantificadores', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(24, 3, 'Conjuntos', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(25, 3, 'Cardinalidad y Problemas de Aplicación', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(26, 3, 'Conjunto Potencia', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(27, 4, 'Inducción Matemática', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(28, 4, 'Sumatorias', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(29, 4, 'Productorias', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(30, 4, 'Progresiones, PA, PG, PH', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(31, 4, 'Teorema del Binomio y Numero Factorial', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(32, 4, 'Técnicas de Conteo', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(33, 5, 'Producto Cartesiano', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(34, 5, 'Relaciones (en general)', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(35, 5, 'Geometría Analítica en IRxIR, Cónicas', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(36, 5, 'Problemas de Aplicación con Geometría Analítica', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(37, 6, 'Funciones en IRxIR', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(38, 6, 'Otros tipos de Funciones', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(39, 6, 'Aplicacion , Modelado de Funciones (Planteo)', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(40, 7, 'Polinomios', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(41, 7, 'Fracciones Parciales o Simples', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(42, 8, 'Exponencial', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(43, 8, 'Logaritmo', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(44, 8, 'Miscelánea, Otros', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(45, 8, 'Problemas de Aplicación: exponencial, logaritmo', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(46, 9, 'Trigonometría Inicial', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(47, 9, 'Identidades y Otras', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(48, 9, 'Ecuaciones e Inecuaciones Trigonométricas', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(49, 9, 'Ejercicios con Triángulos', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(50, 9, 'Problemas de Aplicación', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(51, 9, 'Funciones Trigonométricas', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(52, 9, 'Otros Tipos', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(53, 9, 'Funciones Trigonométricas Inversas', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(54, 10, 'Números Complejos, Inicial, Operatoria', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(55, 10, 'Ecuaciones, Inecuaciones Complejas, Gráficas', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(56, 10, 'Otros, Cálculos y Demostraciones', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(57, 11, 'Vectores, Inicial', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(58, 11, 'Producto Escalar, Vectorial, Mixto', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(59, 11, 'Otros Ejercicios Mezclados, Ecs. y Demostraciones', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(60, 11, 'Aplicaciones Geométricas. Otras', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(61, 11, 'Aplicaciones Físicas', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(62, 12, 'Rectas y Planos en IR³', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(63, 12, 'Ángulos, Intersecciones, Distancias', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(64, 12, 'Ejercicios Mezclados (combinados)', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(65, 12, 'Parámetros, Proyectantes', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(66, 12, 'Demostraciones, Aplicaciones con rectas y planos', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(67, 13, 'Límites', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(68, 14, 'Continuidad', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(69, 15, 'Derivadas', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(70, 15, 'Operatoria de Derivadas', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(71, 15, 'Inversas', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(72, 15, 'Otras', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(73, 16, 'Aplicación de la Derivada', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(74, 16, 'Aplic. a la Economía (Marginales)', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(75, 17, 'Antiderivada o Primitiva de una Función', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(76, 17, 'Integral Indefinida', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(77, 17, 'Métodos de Integración', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(78, 17, 'Otros temas de la Integral Indefinida', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(79, 18, 'Integral Definida', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(80, 18, 'Integral y Sumas de Riemann', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(81, 19, 'Integral Definida', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(82, 19, 'Integral y Sumas de Riemann', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(83, 20, 'Areas', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(84, 20, 'Longitud', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(85, 21, 'Volumen y Superficie de Revolución', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(86, 21, 'Centroides', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(87, 22, 'Otras Aplicaciones de la Integral Definida', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(88, 22, 'Aplicación a la Economía', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(89, 23, 'Integrales Impropias', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(90, 23, 'Criterios de Comparación', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(91, 23, 'Áreas de regiones no acotadas', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(92, 24, 'Sucesiones Numéricas', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(93, 24, 'Otros Tipos de Sucesiones', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(94, 24, 'Aplicación de Sucesiones', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(95, 25, 'Series Numéricas', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(96, 25, 'Aplicación de Series', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(97, 26, 'Sucesiones de Funciones', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(98, 26, 'Series de Funciones', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(99, 26, 'Series de Potencias', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(100, 26, 'Series de Taylor', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(101, 26, 'Series y Errores', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(102, 26, 'Otras Aplicaciones', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(103, 27, 'Matrices', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(104, 28, 'Operaciones Elementales', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(105, 29, 'Determinantes', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(106, 30, 'Sistemas de Ecuaciones Lineales (SEL)', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(107, 31, 'Espacios y Subespacios', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(108, 32, 'Matriz Cambio Base o de Coordenadas', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(109, 33, 'Transf. o Aplicaciones Lineales', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(110, 34, 'Diagonalización', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(111, 35, 'Espacios Euclidianos', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(112, 35, 'Formas Bilineales y Cuadráticas', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(113, 35, 'Formas Hermíticas', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(114, 35, 'Funcionales Lineales y Espacio Dual', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(115, 36, 'Curvas y Superficies de Nivel', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(116, 36, 'Topología (en IR elevado a n)', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(117, 36, 'Funciones de Varias Variables', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(118, 36, 'Límites de Varias Variables', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(119, 36, 'Continuidad', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(120, 37, 'Derivadas Parciales de Primer', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(121, 37, 'Diferenciabilidad', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(122, 38, 'Regla de la Cadena', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(123, 38, 'Razón de Cambio (en el tiempo)', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(124, 39, 'Gradiente de una función', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(125, 39, 'Derivada Direccional (Razón de Cambio Direccional)', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(126, 40, 'Funciones implícitas', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(127, 40, 'Jacobiano', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(128, 40, 'Función Inversa', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(129, 41, 'Series de Taylor en Varias Variables', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(130, 41, 'Máximos y Mínimos', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(131, 41, 'Optimización', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(132, 42, 'Integrales Dobles', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(133, 42, 'Aplicaciones de la Integral Doble', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(134, 43, 'Integrales Triples', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(135, 43, 'Aplicaciones de la Integral Triple', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(136, 44, 'Integrales Múltiples Impropias', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(137, 44, 'Aplicación', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(138, 45, 'Curvas en IR²y IR³', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(139, 45, 'Geometría Diferencial', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(140, 45, 'Coordenadas Curvilíneas', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(141, 46, 'Integrales de Línea en IR² (dos dimensiones)', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(142, 46, 'Teorema de Green', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(143, 46, 'Integrales de Línea en IR³ (tres dimensiones)', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(144, 46, 'Teorema de Stokes', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(145, 47, 'Superficies', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(146, 47, 'Int. de Superficie, con elemento Escalar', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(147, 47, 'Int. de Superficie, con elemento Vectorial', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(148, 47, 'Teorema de Gauss', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(149, 48, 'EDO´s de Primer Orden', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(150, 48, 'Aplicacion de la EDO de Primer Orden', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(151, 49, 'Definiciones y Teoremas', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(152, 49, 'Ec. Lineal, Coef. Const. y Homogénea', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(153, 50, 'Método Coeficientes Indeterminados', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(154, 50, 'Método de Variación de Parámetros', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(155, 50, 'Reducción de Orden', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(156, 50, 'Ecuación de Euler-Cauchy', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(157, 50, 'Problemas de Aplicación', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(158, 51, 'Análisis Cualitativo en Edo (orden 1)', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(159, 51, 'Análisis Cualitativo de Sist. de Edo´s', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(160, 52, 'Definiciones y Teoremas', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(161, 52, 'Teoremas y Fórmulas de Transformadas', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(162, 52, 'Funciones Especiales', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(163, 52, 'Producto de Convolución', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(164, 52, 'Métodos para Hallar Inversas', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(165, 52, 'Aplicaciones de la Transformada de Laplace', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(166, 53, 'Solución de EDO´s por Series de Taylor', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(167, 53, 'Método de Frobenius', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(168, 53, 'Ecuación Dif. de Bessel', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(169, 53, 'Problemas de Sturm-Liouville', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(170, 54, 'Definiciones y Teoremas', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(171, 54, 'Aplicación', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(172, 55, 'Definiciones y Teoremas', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(173, 55, 'Sol. de EDP por Transf. Fourier (ver EDP)', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(174, 56, 'Definiciones y Teoremas', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(175, 56, 'Funciones Especiales', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(176, 56, 'Derivada Distribucional', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(177, 57, 'Definiciones y Teoremas', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(178, 58, 'Definiciones y Teoremas', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(179, 59, 'Homogeneas', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(180, 59, 'No Homogeneas', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(181, 60, 'Método de Separación de Variables', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(182, 61, 'Aplicación de Transformada de Fourier', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(183, 62, 'EDP de Onda', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(184, 62, 'EDP de Calor', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(185, 62, 'EDP de Laplace', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(186, 63, 'Operatoria de Números Complejos', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(187, 63, 'Ejerc. demostrativos de Nos. Complejos', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(188, 63, 'Topología', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(189, 64, 'Funciones como Aplicación', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(190, 64, 'Funciones', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(191, 64, 'Límites', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(192, 64, 'Continuidad', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(193, 65, 'Derivada Compleja', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(194, 65, 'Singularidades', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(195, 65, 'Series', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(196, 65, 'Integración Compleja', '2023-04-05 02:02:34', '2023-04-05 02:02:34'),
(197, 65, 'Cálculo de Integrales Impropias', '2023-04-05 02:02:34', '2023-04-05 02:02:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sectors`
--

CREATE TABLE `sectors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sectors`
--

INSERT INTO `sectors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Álgebra I, Álgebra II', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(2, 'Cálculo I, Análisis Matemático I', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(3, 'Cálculo Integral, Cálculo II , Sucesiones y Series', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(4, 'Álgebra Lineal I, Álgebra Lineal II', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(5, 'Cálculo en Varias Variables, Cálculo III, Cálculo Multivariable', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(6, 'Integrales Múltiples, Integrales de Línea e Integrales de Superficie', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(7, 'Ecuaciones Diferenciales Ordinarias (EDO), Transf. de Laplace y Sol. por Series', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(8, 'Series de Fourier y Transformadas de Fourier', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(9, 'Ecuaciones Diferenciales Parciales (EDP), Cálculo IV', '2023-04-05 02:02:33', '2023-04-05 02:02:33'),
(10, 'Variable Compleja', '2023-04-05 02:02:33', '2023-04-05 02:02:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('BMRO2Rz5jsjOACU9CXJXsHjkJdeBxrxf6V1ZicpR', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiUkhCWjdrSXUxY2ZHTXozeWlFZlhycHV4SlBaUVE4ZGI3R05oYmU2diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9leGVyY2lzZXMvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MTA6InZpc2l0b3JfaWQiO086MzU6IlJhbXNleVxVdWlkXExhenlcTGF6eVV1aWRGcm9tU3RyaW5nIjoxOntzOjY6InN0cmluZyI7czozNjoiY2Y0ODE3MmItZmZlOS00Yjk0LTkyNTYtMzk4NDU5MDdmZmEzIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MztzOjEwOiJzdGFydF90aW1lIjtpOjE2ODI2MjI5MDc7czoyMDoicHJldmlvdXNfZXhlcmNpc2VfaWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRMOURKVEoubTZHWnVwOER1THNCV0xPTmlNei94WFIwc0cuenRVZHBSREloVWxwTkFzN0tKRyI7fQ==', 1682622907),
('lsfNrygaamNuwIEdooMSH7JzGIZ11oUWyl9dbIDC', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiRHRyWWxwbjNsVXZvU2pNYU5Dc1BBNWxhSTc0NUYyZHhic0xhd25BMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wbGFuZXMiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkTDlESlRKLm02R1p1cDhEdUxzQldMT05pTXoveFhSMHNHLnp0VWRwUkRJaFVscE5BczdLSkciO3M6MTA6InN0YXJ0X3RpbWUiO2k6MTY4MjQ0Mjc3NjtzOjIwOiJwcmV2aW91c19leGVyY2lzZV9pZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJEw5REpUSi5tNkdadXA4RHVMc0JXTE9OaU16L3hYUjBzRy56dFVkcFJESWhVbHBOQXM3S0pHIjt9', 1682456081),
('t8WwuKYOaV2EbK7MyIavtt4D0EO6MKUFL5h8GTJu', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiU2NxNk15UGtIVzVDS3huRmIwaWUyVFJ2cE5QNUNGSjhFZTZwRVRJeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9pdGVtcy8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MztzOjEwOiJzdGFydF90aW1lIjtpOjE2ODI1MzIyODg7czoyMDoicHJldmlvdXNfZXhlcmNpc2VfaWQiO2k6MTt9', 1682548108);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `degree_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `year` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `universities`
--

CREATE TABLE `universities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `campus` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(3, 'Cristobal Lobos', 'cristobal.lobos@gmail.com', NULL, '$2y$10$L9DJTJ.m6GZup8DuLsBWLONiMz/xXR0sG.ztUdpRDIhUlpNAs7KJG', NULL, NULL, NULL, NULL, NULL, 'profile-photos/mwyT7pnH8RAoXO1iyDkiJFvhJERJSO0IS8FHmtQN.jpg', '2023-04-12 02:21:28', '2023-04-12 02:25:50'),
(4, 'alberto lobos', 'alberto@gmail.com', NULL, '$2y$10$AsG188RDP3qny6aSJGxwieShJp3eJgegiGUBVU1jmxGGMO5lCpqsW', NULL, NULL, NULL, 'ZEV08moqfDFwRHUSuQwvYOJBaIXTbddfX3ei48DNCLWSRMKZUfx25zikuJNE', NULL, 'profile-photos/OVi094m2wYc6EjCje7ALOBaUgDNVARiIFCkxWinc.jpg', '2023-04-12 02:24:12', '2023-04-12 17:35:26'),
(5, 'admin', 'ad.guiamath@gmail.com', NULL, '$2y$10$6CA6SQf9JHSKaNgOzUOq..eVm2ylFWlaMmhoAMIndRQHfcgRgATki', NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-25 17:32:18', '2023-04-25 17:32:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_subjects`
--

CREATE TABLE `user_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `video_exercises`
--

CREATE TABLE `video_exercises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exercise_id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `addresses_user_id_unique` (`user_id`),
  ADD KEY `addresses_commune_id_foreign` (`commune_id`);

--
-- Indices de la tabla `chapters`
--
ALTER TABLE `chapters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chapters_sector_id_foreign` (`sector_id`);

--
-- Indices de la tabla `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_region_id_foreign` (`region_id`);

--
-- Indices de la tabla `communes`
--
ALTER TABLE `communes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `communes_city_id_foreign` (`city_id`);

--
-- Indices de la tabla `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_currency_id_foreign` (`currency_id`);

--
-- Indices de la tabla `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `degrees`
--
ALTER TABLE `degrees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `degrees_university_id_foreign` (`university_id`);

--
-- Indices de la tabla `development_exercises`
--
ALTER TABLE `development_exercises`
  ADD PRIMARY KEY (`id`),
  ADD KEY `development_exercises_exercise_id_foreign` (`exercise_id`);

--
-- Indices de la tabla `exercises`
--
ALTER TABLE `exercises`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exercises_slug_unique` (`slug`),
  ADD KEY `exercises_item_id_foreign` (`item_id`);

--
-- Indices de la tabla `exercise_comments`
--
ALTER TABLE `exercise_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exercise_comments_user_id_foreign` (`user_id`),
  ADD KEY `exercise_comments_exercise_id_foreign` (`exercise_id`),
  ADD KEY `exercise_comments_parent_id_foreign` (`parent_id`);

--
-- Indices de la tabla `exercise_likes`
--
ALTER TABLE `exercise_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exercise_likes_user_id_foreign` (`user_id`),
  ADD KEY `exercise_likes_exercise_id_foreign` (`exercise_id`);

--
-- Indices de la tabla `exercise_reports`
--
ALTER TABLE `exercise_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exercise_reports_user_id_foreign` (`user_id`),
  ADD KEY `exercise_reports_exercise_id_foreign` (`exercise_id`);

--
-- Indices de la tabla `exercise_users`
--
ALTER TABLE `exercise_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exercise_users_user_id_foreign` (`user_id`),
  ADD KEY `exercise_users_exercise_id_foreign` (`exercise_id`);

--
-- Indices de la tabla `exercise_user_durations`
--
ALTER TABLE `exercise_user_durations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exercise_user_durations_user_id_foreign` (`user_id`),
  ADD KEY `exercise_user_durations_exercise_id_foreign` (`exercise_id`);

--
-- Indices de la tabla `exercise_visualizations`
--
ALTER TABLE `exercise_visualizations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exercise_visualizations_user_id_foreign` (`user_id`),
  ADD KEY `exercise_visualizations_exercise_id_foreign` (`exercise_id`);

--
-- Indices de la tabla `exercise_visualization_unregistered`
--
ALTER TABLE `exercise_visualization_unregistered`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exercise_visualization_unregistered_exercise_id_foreign` (`exercise_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `header_exercises`
--
ALTER TABLE `header_exercises`
  ADD PRIMARY KEY (`id`),
  ADD KEY `header_exercises_exercise_id_foreign` (`exercise_id`);

--
-- Indices de la tabla `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_section_id_foreign` (`section_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`),
  ADD KEY `payments_subscription_id_foreign` (`subscription_id`),
  ADD KEY `payments_currency_id_foreign` (`currency_id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `regions_country_id_foreign` (`country_id`);

--
-- Indices de la tabla `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sections_chapter_id_foreign` (`chapter_id`);

--
-- Indices de la tabla `sectors`
--
ALTER TABLE `sectors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_degree_id_foreign` (`degree_id`);

--
-- Indices de la tabla `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `universities`
--
ALTER TABLE `universities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `universities_address_id_foreign` (`address_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `user_subjects`
--
ALTER TABLE `user_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_subjects_user_id_foreign` (`user_id`),
  ADD KEY `user_subjects_subject_id_foreign` (`subject_id`);

--
-- Indices de la tabla `video_exercises`
--
ALTER TABLE `video_exercises`
  ADD PRIMARY KEY (`id`),
  ADD KEY `video_exercises_exercise_id_foreign` (`exercise_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `chapters`
--
ALTER TABLE `chapters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `communes`
--
ALTER TABLE `communes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `degrees`
--
ALTER TABLE `degrees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `development_exercises`
--
ALTER TABLE `development_exercises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `exercises`
--
ALTER TABLE `exercises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `exercise_comments`
--
ALTER TABLE `exercise_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `exercise_likes`
--
ALTER TABLE `exercise_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `exercise_reports`
--
ALTER TABLE `exercise_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `exercise_users`
--
ALTER TABLE `exercise_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT de la tabla `exercise_user_durations`
--
ALTER TABLE `exercise_user_durations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `exercise_visualizations`
--
ALTER TABLE `exercise_visualizations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `exercise_visualization_unregistered`
--
ALTER TABLE `exercise_visualization_unregistered`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `header_exercises`
--
ALTER TABLE `header_exercises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=901;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `regions`
--
ALTER TABLE `regions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT de la tabla `sectors`
--
ALTER TABLE `sectors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `universities`
--
ALTER TABLE `universities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `user_subjects`
--
ALTER TABLE `user_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `video_exercises`
--
ALTER TABLE `video_exercises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_commune_id_foreign` FOREIGN KEY (`commune_id`) REFERENCES `communes` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `chapters`
--
ALTER TABLE `chapters`
  ADD CONSTRAINT `chapters_sector_id_foreign` FOREIGN KEY (`sector_id`) REFERENCES `sectors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `communes`
--
ALTER TABLE `communes`
  ADD CONSTRAINT `communes_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `countries`
--
ALTER TABLE `countries`
  ADD CONSTRAINT `countries_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `degrees`
--
ALTER TABLE `degrees`
  ADD CONSTRAINT `degrees_university_id_foreign` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Filtros para la tabla `development_exercises`
--
ALTER TABLE `development_exercises`
  ADD CONSTRAINT `development_exercises_exercise_id_foreign` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `exercises`
--
ALTER TABLE `exercises`
  ADD CONSTRAINT `exercises_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `exercise_comments`
--
ALTER TABLE `exercise_comments`
  ADD CONSTRAINT `exercise_comments_exercise_id_foreign` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `exercise_comments_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `exercise_comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exercise_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `exercise_likes`
--
ALTER TABLE `exercise_likes`
  ADD CONSTRAINT `exercise_likes_exercise_id_foreign` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `exercise_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `exercise_reports`
--
ALTER TABLE `exercise_reports`
  ADD CONSTRAINT `exercise_reports_exercise_id_foreign` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `exercise_reports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `exercise_users`
--
ALTER TABLE `exercise_users`
  ADD CONSTRAINT `exercise_users_exercise_id_foreign` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `exercise_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `exercise_user_durations`
--
ALTER TABLE `exercise_user_durations`
  ADD CONSTRAINT `exercise_user_durations_exercise_id_foreign` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `exercise_user_durations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `exercise_visualizations`
--
ALTER TABLE `exercise_visualizations`
  ADD CONSTRAINT `exercise_visualizations_exercise_id_foreign` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `exercise_visualizations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `exercise_visualization_unregistered`
--
ALTER TABLE `exercise_visualization_unregistered`
  ADD CONSTRAINT `exercise_visualization_unregistered_exercise_id_foreign` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`);

--
-- Filtros para la tabla `header_exercises`
--
ALTER TABLE `header_exercises`
  ADD CONSTRAINT `header_exercises_exercise_id_foreign` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_subscription_id_foreign` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `regions`
--
ALTER TABLE `regions`
  ADD CONSTRAINT `regions_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `chapters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_degree_id_foreign` FOREIGN KEY (`degree_id`) REFERENCES `degrees` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Filtros para la tabla `universities`
--
ALTER TABLE `universities`
  ADD CONSTRAINT `universities_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Filtros para la tabla `user_subjects`
--
ALTER TABLE `user_subjects`
  ADD CONSTRAINT `user_subjects_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_subjects_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `video_exercises`
--
ALTER TABLE `video_exercises`
  ADD CONSTRAINT `video_exercises_exercise_id_foreign` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
