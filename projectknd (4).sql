-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-08-2024 a las 21:55:59
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `projectknd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bodegas`
--

CREATE TABLE `bodegas` (
  `id` int(10) UNSIGNED NOT NULL,
  `prod_id` int(11) DEFAULT NULL,
  `prod_stock` int(11) DEFAULT NULL,
  `suc_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bodegas`
--

INSERT INTO `bodegas` (`id`, `prod_id`, `prod_stock`, `suc_id`, `created_at`, `updated_at`) VALUES
(1, 1, 500, 1, '2024-07-17 05:38:47', '2024-07-17 05:38:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_nombre` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `cat_nombre`, `cat_imagen`, `created_at`, `updated_at`) VALUES
(2, 'PARA COMPARTIR 2 Y 3 PERSONAS', 'categorias\\August2024\\rh6RvuhAofiLlPat06Ie.jpg', '2024-08-25 03:06:41', '2024-08-25 03:07:46'),
(3, 'KRUNCHY PROMOS', 'categorias\\August2024\\sAE6zxsfvP8zjx5Y0Xbc.jpg', '2024-08-25 03:07:28', '2024-08-25 03:07:28'),
(4, 'FESTINES', 'categorias\\August2024\\spd53TzLWv0im9L48NtO.jpg', '2024-08-25 03:08:02', '2024-08-25 03:08:02'),
(5, 'PRESAS SOLAS', 'categorias\\August2024\\jKThvOTtih5N8gLxTQX7.jpg', '2024-08-25 03:08:21', '2024-08-25 03:08:21'),
(6, 'BOXES', 'categorias\\August2024\\rchMoQkkviO2gWFetuPp.jpg', '2024-08-25 03:08:34', '2024-08-25 03:08:34'),
(7, 'COMBOS', 'categorias\\August2024\\8OijaXLQPDHgdZVXvydt.jpg', '2024-08-25 03:08:45', '2024-08-25 03:08:45'),
(8, 'POSTRES Y HELADOS', 'categorias\\August2024\\POwwuhfMoAtAJN5KAHkE.jpg', '2024-08-25 03:09:02', '2024-08-25 03:09:02'),
(9, 'COMPLEMENTOS Y BEBIDAS', 'categorias\\August2024\\ypsC3d7TLHRGe1H5iw8V.jpg', '2024-08-25 03:09:18', '2024-08-25 03:09:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(2, NULL, 1, 'Category 2', 'category-2', '2024-07-17 01:31:19', '2024-07-17 01:31:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(10) UNSIGNED NOT NULL,
  `cli_nombre` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cli_apellido` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cli_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `cli_nombre`, `cli_apellido`, `cli_email`, `created_at`, `updated_at`) VALUES
(1, 'Matias', 'Ruiz', 'matiaspau7@gmail.com', '2024-08-09 20:28:47', '2024-08-09 20:28:47'),
(2, 'Daniela', 'Gallardo', 'danigallardo@ymail.com', '2024-08-09 20:29:05', '2024-08-09 20:29:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `combos`
--

CREATE TABLE `combos` (
  `id` int(10) UNSIGNED NOT NULL,
  `com_nombre` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `com_descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `com_imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `com_precio` float DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `productos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `combos`
--

INSERT INTO `combos` (`id`, `com_nombre`, `com_descripcion`, `com_imagen`, `com_precio`, `cat_id`, `created_at`, `updated_at`, `productos`) VALUES
(6, 'PARTE Y COMPARTE VARIEDAD', '4 presas de pollo + 4 alitas picantes + 1 pop corn med + 2 papas fritas pequeñas + 1 gaseosa 1L', 'combos\\August2024\\WYROzhJxwt4bDBxMc3CH.jpg', 14.5, 2, '2024-08-25 06:50:58', '2024-08-25 06:50:58', NULL),
(7, 'PARTE Y COMPARTE AVALANCHA', '5 PRESAS DE POLLO+ 2 PAPAS FRITAS PEQUEÑAS + 1 GASEOSA 1L + 1 AVALANCHA OREO', 'combos\\August2024\\NCwkgrA7aBMJNx7BHFct.jpg', 14.5, 2, '2024-08-25 06:53:21', '2024-08-25 06:53:21', NULL),
(8, 'PARTE Y COMPARTE NUGGETS', '4 presas de pollo + 4 alitas picantes + 6 nuggets de pollo + 2 papas fritas pequeñas + 1 gaseosa 1 lt + 2 salsas', 'combos\\August2024\\D5cIfkf8R70oxo7xwMGK.jpg', 14.75, 2, '2024-08-25 06:54:01', '2024-08-25 06:54:46', NULL),
(9, 'MEGA BOX', '4 presas de pollo + 10 alitas picantes + 8 nuggets + 1 papa frita gde + 3 salsas + 1 gasesosa de 1 LT', 'combos\\August2024\\7p88pnNtd6mUQPO8CpP5.jpg', 17.5, 2, '2024-08-25 06:55:20', '2024-08-25 06:56:16', NULL),
(10, 'PARTE Y COMPARTE COMPLETO', '4 presas + 2 papas fritas peq + 1 gaseosa 1L + 2 sundaes regulares', 'combos\\August2024\\ueDKo03uclbWiohgUk8A.jpg', 13.5, 2, '2024-08-25 06:55:53', '2024-08-25 06:55:53', NULL),
(11, 'SNACK BOX NUGGETS', '5 Nuggets de pollo + 1 papa frita pequeña + 1 gaseosa 355ml', 'combos\\August2024\\lFifhdLLTlSlgPVQCt0i.jpg', 3.25, 3, '2024-08-25 06:58:00', '2024-08-25 06:58:00', NULL),
(12, 'COMBO SANDUCHE CHICKEN CRUNCH', '1 sánduche chicken crunch + 1 papa frita peq + 1 gaseosa 355ml', 'combos\\August2024\\Pud8AdwPnEILui2q4W54.jpg', 3.75, 3, '2024-08-25 07:00:17', '2024-08-25 07:00:17', NULL),
(13, 'WOW COMBO CHICKEN CRUNCH', 'Sánduche Chicken Crunch con queso + 1 presa + 1 papa frita peq + 1 gaseosa 355ml', 'combos\\August2024\\80f2iuZQCHSqLrCNGdxz.jpg', 5.6, 3, '2024-08-25 07:01:08', '2024-08-25 07:01:08', NULL),
(14, '$20.99 15 PRESAS KFC SOLAS PROMO', '15 presas de pollo.', 'combos\\August2024\\SlhMwGTgX7rAZz0T8OZC.jpg', 20.99, 3, '2024-08-25 07:01:43', '2024-08-25 07:01:43', NULL),
(15, 'FESTIN TITAN', '9 presas de pollo + 10 nuggets + 8 alitas picante s+ 1 papa frita gde + 1 gaseosa de 1 lt + 3 salsas', 'combos\\August2024\\IuQNUUv5QNhI1GHPFlkA.jpg', 25.99, 4, '2024-08-25 07:04:29', '2024-08-25 07:04:29', NULL),
(16, 'FESTIN TITAN XL', '11 presas de pollo + 10 nuggets de pollo + 8 alitas picantes+ 1 papa frita gde + 1 gaseosa de 1 lt + 3 salsas', 'combos\\August2024\\8NW0MMDCPBqZARqsX6NK.jpg', 27.5, 4, '2024-08-25 07:05:25', '2024-08-25 07:05:25', NULL),
(17, 'MEGA FESTIN 10 PRESAS', '10 presas de pollo + 10 alitas picantes + 1 papa frita grande', 'combos\\August2024\\ofLVhVL2dqwjYaXmaTJ8.jpg', 21.99, 4, '2024-08-25 07:06:01', '2024-08-25 07:06:01', NULL),
(18, 'FESTIN FAMILIAR 3', '12 presas + 1 papa frita grande + 1 ensalada de col grande + 1 gaseosa 1L', 'combos\\August2024\\9zsttUtJXlYRPVRE50MF.jpg', 25.5, 4, '2024-08-25 07:06:48', '2024-08-25 07:06:48', NULL),
(19, 'FESTIN RECETA SECRETA', '9 presas de pollo + 8 alitas picantes + 1 papa frita gde + 1 ensalada de col gde + 1 gaseosa 1 lt', 'combos\\August2024\\NxSB7i95Z5T1HxLfppn9.jpg', 23.99, 4, '2024-08-25 07:07:27', '2024-08-25 07:14:46', NULL),
(20, 'MEGA FESTIN 8 PRESAS', '8 presas de pollo + 8 alitas picantes + 1 papa frita grande + 1 gaseosa 1L', 'combos\\August2024\\rRhX7R6v2VWJOvGjr5gY.jpg', 19.99, 4, '2024-08-25 07:07:59', '2024-08-25 07:36:00', NULL),
(21, 'FESTIN FAMILIAR 2', '10 presas + 1 papa frita grande + 1 ensalada de col grande + 1 gaseosa de 1L', 'combos\\August2024\\rBwGoyGN9YlOXsO9J9Ts.jpg', 20.99, 4, '2024-08-25 07:08:32', '2024-08-25 07:08:32', NULL),
(22, 'FESTIN ALITAS', '7 presas de pollo + 7 alitas picantes + 1 papa frita grande + 1 gaseosa 1L', 'combos\\August2024\\onHc1k27P9lSpr4JsOCy.jpg', 18.99, 4, '2024-08-25 07:09:11', '2024-08-25 07:09:11', NULL),
(23, 'FESTIN FAMILIAR 1', '8 presas + 1 papa frita grande + 1 ensalada de col grande + 1 gaseosa de 1L', 'combos\\August2024\\cfLBsVDEbDM3vyhMtVAu.jpg', 18.99, 4, '2024-08-25 07:09:39', '2024-08-25 07:09:39', NULL),
(24, 'WOW BUCKET', '8 presas de pollo + 1 papa frita grande', 'combos\\August2024\\HXtKF30kvOXj85SwlQZB.jpg', 13.99, 4, '2024-08-25 07:10:06', '2024-08-25 07:10:06', NULL),
(25, '7 PRESAS', '7 presas de pollo.', 'combos\\August2024\\0qT03a8cXGz88CAWBymE.jpg', 12.99, 5, '2024-08-25 07:12:48', '2024-08-25 07:12:48', NULL),
(26, '10 PRESAS KFC', '10 presas de pollo', 'combos\\August2024\\BlKvG3Zp0Wnlxrv1fyx3.jpg', 16.5, 5, '2024-08-25 07:13:21', '2024-08-25 07:13:21', NULL),
(27, '12 PRESAS', '12 presas solas', 'combos\\August2024\\Nf1elxDotP3hfeqA8IU0.jpg', 19.75, 5, '2024-08-25 07:13:43', '2024-08-25 07:14:18', NULL),
(28, '14 PRESAS', '14 presas de pollo', 'combos\\August2024\\ddUs3VV4BQzpQPtSXwrS.jpg', 22.99, 5, '2024-08-25 07:14:09', '2024-08-25 07:14:09', NULL),
(29, 'BIG BOX ULTRA', 'Sánduche Chicken Crunch con queso + 3 alitas picantes + 1 papa frita peq + 1 gaseosa 355ml + 1 frutilla con crema peq ó helado jr (en base a disponibilidad)', 'combos\\August2024\\6eUBE8iE0gu9E9Er8cg2.jpg', 6.5, 6, '2024-08-25 07:37:03', '2024-08-25 07:37:03', NULL),
(30, 'BIG BOX NUGGETS', '5 nuggets + 1 presa de pollo + 2 alitas picantes + 1 papa frita peq + 1 gaseosa 355 ml + frutilla con crema peq ó helado jr (en base a disponibilidad) + 2 salsas', 'combos\\August2024\\lNQ2oEXA3Cq5nODDWWzd.jpg', 7.5, 6, '2024-08-25 07:37:30', '2024-08-25 07:37:30', NULL),
(31, 'BIG BOX RECARGADO', '2 presas + 2 alitas picantes + 1 papa frita pequeña + 1 ensalada de col pequeña + 1 gaseosa 355ml + 1 sundae mora jr', 'combos\\August2024\\M2a7KMOi5WbB91st33PD.jpg', 7.5, 6, '2024-08-25 07:38:02', '2024-08-25 07:38:02', NULL),
(32, 'BIG BOX KENTUCKY', '1 Kentucky Chizza + 4 nuggets de pollo + 1 papa frita regular + 1 gaseosa 355 ml', 'combos\\August2024\\MKXC4QXdT2WpB6WTH5V3.jpg', 7.5, 6, '2024-08-25 07:38:26', '2024-08-25 07:38:26', NULL),
(33, 'SUPER COMBO 3', '3 presas de pollo +arroz y menestra + ensalada mixta + 1 gaseosa 355ml', 'combos\\August2024\\B7ZYUJtabutxgUTiXVqy.jpg', 7.5, 7, '2024-08-25 07:42:49', '2024-08-25 07:42:49', NULL),
(34, 'COMBO IDEAL', '3 presas de pollo + 1 papa frita pequeña + 1 gaseosa 355ml + 1 sundae de mora reg', 'combos\\August2024\\jGtyzT9X7ubaFerajp3I.jpg', 7.25, 7, '2024-08-25 07:43:19', '2024-08-25 07:43:19', NULL),
(35, 'SUPER COMBO 2', '2 presas de pollo + arroz y menestra + ensalada mixta + 1 gaseosa 355ml', 'combos\\August2024\\sFNG8aLrkfhocQ7LYSmF.jpg', 6.25, 7, '2024-08-25 07:44:14', '2024-08-25 07:44:14', NULL),
(36, 'MEGA COMBO 1 ALITAS', '1 presa de pollo + 3 alitas picantes + arroz + menestra + ensalada + 1 gaseosa 355ml.', 'combos\\August2024\\8JDK6NDNSDiTMgmsCvPS.jpg', 5.99, 7, '2024-08-25 07:44:55', '2024-08-25 07:44:55', NULL),
(37, 'COMBO COMPLETO', '2 presas de pollo + 1 papa frita pequeña + 1 gaseosa 355ml', 'combos\\August2024\\MwgjmXCqTwD8tuYvbxRf.jpg', 5.75, 7, '2024-08-25 07:45:30', '2024-08-25 07:45:30', NULL),
(38, 'COMBO ALITAS PICANTES', '6 alitas picantes + 1 papa frita pequeña + 1 gaseosa 355ml', 'combos\\August2024\\ZZ2cTQPZFmZPXGYC02jw.jpg', 5.99, NULL, '2024-08-25 07:46:00', '2024-08-25 07:46:00', NULL),
(39, 'WOW COMBO CRUNCH POPCORN', '1 Sánduche Ruster + 1 Pop Corn Reg + 1 Papa Frita Reg + 1 Gaseosa 355ml', 'combos\\August2024\\6H5M4Www4Z9o1ezRjEPA.jpg', 4.99, 7, '2024-08-25 07:50:01', '2024-08-25 07:50:01', NULL),
(40, 'COMBO POP CORN MEDIANO', 'Pop corn mediano + 1 papa frita peq + 1 gaseosa 355m', 'combos\\August2024\\w4eT5IWgEzjWann3pGOJ.jpg', 4.25, 7, '2024-08-25 07:51:03', '2024-08-25 07:51:03', NULL),
(41, 'ENSALADA KFC', 'pop corn + lechuga + tomate + zanahoria + queso + col morada + maíz dulce + salsa francesa', 'combos\\August2024\\dCrVu0zgiGgikByRk2KM.jpg', 2.99, 7, '2024-08-25 07:52:18', '2024-08-25 07:52:18', NULL),
(42, 'PAPA FRITA MEDIANA', 'papa frita mediana', 'combos\\August2024\\rvOyRSSDeHlZFALKZFAW.jpg', 2.5, 9, '2024-08-25 08:02:31', '2024-08-25 08:02:31', NULL),
(43, 'PAPA FRITA GRANDE', 'Papa frita grande', 'combos\\August2024\\ZEn8jtY7mNWW1stI56NN.jpg', 3.5, 9, '2024-08-25 08:12:48', '2024-08-25 08:12:48', NULL),
(44, 'ENSALADA DE COL MEDIANA', 'Deliciosa ensalada a base de col y zanahoria con aderezo KND', 'combos\\August2024\\GzAXdzyCTkBhIsQcAUwR.jpg', 1.5, 9, '2024-08-25 08:13:33', '2024-08-25 08:13:33', NULL),
(45, 'ENSALADA DE COL GRANDE', 'Deliciosa ensalada a base de col y zanahoria con aderezo KFC', 'combos\\August2024\\JqrSzX794Z4fdMLE6MbO.jpg', 2.85, 9, '2024-08-25 08:14:04', '2024-08-25 08:14:04', NULL),
(46, 'PORCION DE ARROZ', 'Porción de arroz', 'combos\\August2024\\FTiBqVY9xgbkO4qji5Kf.jpg', 1.3, 9, '2024-08-25 08:14:54', '2024-08-25 08:14:54', NULL),
(47, 'GASEOSA 1L', 'gaseosa de 1 litro', 'combos\\August2024\\QdlCu9REfRPSMjuXQsUW.jpg', 1.5, NULL, '2024-08-25 08:15:18', '2024-08-25 08:15:18', NULL),
(48, 'GASEOSA 2 LITROS', 'Gaseosa Familar', 'combos\\August2024\\xhPpYyv0heXdcsNkHTfF.jpg', 1.99, 9, '2024-08-25 08:16:06', '2024-08-25 08:16:06', NULL),
(49, 'GASEOSA PERSONAL 400ml', 'Gaseosa personal 355 ml', 'combos\\August2024\\vT2H6frDc5GhfcgH9ahA.jpg', 1.25, 9, '2024-08-25 08:16:36', '2024-08-25 08:16:36', NULL),
(50, 'AGUA NATURAL', 'Agua natural', 'combos\\August2024\\4ZXwYilLqgozVavcfLGC.jpg', 0.7, 9, '2024-08-25 08:17:15', '2024-08-25 08:17:15', NULL),
(51, 'FRUTILLAS CON CREMA', 'Frutillas con crema', 'combos\\August2024\\Zx5TXxvTrEwpauWWQuqk.jpg', 1.8, 8, '2024-08-25 08:22:02', '2024-08-25 08:22:02', NULL),
(52, 'SUNDAE CHOCOLATE', '110 gr de helado soft de vainilla + topping de chocolate', 'combos\\August2024\\NCXGgreN2ggwOHoayf1Z.jpg', 1.99, 8, '2024-08-25 08:22:44', '2024-08-25 08:22:44', NULL),
(53, 'SUNDAE MORA', '110 gr de helado soft de vainilla + topping de mora', 'combos\\August2024\\caPZD8rvyffCxupgAqcn.jpg', 1.99, 8, '2024-08-25 08:23:06', '2024-08-25 08:23:06', NULL),
(54, 'AVALANCHA OREO', '1 avalancha oreo de 130gr de helado soft de vainilla + topping de manjar + galleta oreo troceada', 'combos\\August2024\\IUDfm30s1JnWwlwlXSUV.jpg', 2.99, 8, '2024-08-25 08:23:35', '2024-08-25 08:23:35', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `combo_producto`
--

CREATE TABLE `combo_producto` (
  `combo_id` bigint(20) UNSIGNED NOT NULL,
  `producto_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `combo_producto`
--

INSERT INTO `combo_producto` (`combo_id`, `producto_id`, `created_at`, `updated_at`, `cantidad`) VALUES
(4, 1, NULL, NULL, NULL),
(4, 3, NULL, NULL, NULL),
(5, 1, NULL, NULL, NULL),
(5, 2, NULL, NULL, NULL),
(5, 3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Correo', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Contraseña', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Fecha', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(17, 3, 'name', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, '{}', 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(20, 3, 'display_name', 'text', 'Tipo de rol', 1, 1, 1, 1, 1, 1, '{}', 5),
(21, 1, 'role_id', 'text', 'Rol', 0, 1, 1, 1, 1, 1, '{}', 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(159, 29, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 3),
(160, 29, 'prod_id', 'text', 'Prod Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(161, 29, 'prod_stock', 'number', 'Stock del Prodcuto', 0, 1, 1, 1, 1, 1, '{}', 5),
(162, 29, 'suc_id', 'text', 'Suc Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(163, 29, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 7),
(164, 29, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(165, 30, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(166, 30, 'prod_nombre', 'text', 'Prodcuto', 0, 1, 1, 1, 1, 1, '{}', 2),
(167, 30, 'prod_precio_un', 'number', 'Precio Unitario', 0, 1, 1, 1, 1, 1, '{}', 4),
(168, 30, 'prod_precio_co', 'number', 'Precio Compra', 0, 1, 1, 0, 0, 0, '{}', 5),
(169, 30, 'prod_agregado', 'text', 'Disponibilidad', 0, 1, 1, 1, 1, 1, '{}', 6),
(170, 30, 'prod_imagen', 'image', 'Imagen', 0, 1, 1, 1, 1, 1, '{}', 7),
(171, 30, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(172, 30, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(173, 31, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(174, 31, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, '{}', 2),
(175, 31, 'direccion', 'text', 'Direccion', 0, 1, 1, 1, 1, 1, '{}', 3),
(176, 31, 'suc_status', 'number', 'Activo/Inactivo', 0, 1, 1, 1, 1, 1, '{}', 4),
(177, 31, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(178, 31, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(179, 29, 'bodega_belongsto_producto_relationship', 'relationship', 'Producto', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Producto\",\"table\":\"productos\",\"type\":\"belongsTo\",\"column\":\"prod_id\",\"key\":\"id\",\"label\":\"prod_nombre\",\"pivot_table\":\"bodegas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(180, 29, 'bodega_belongsto_sucursale_relationship', 'relationship', 'Sucursal', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Sucursale\",\"table\":\"sucursales\",\"type\":\"belongsTo\",\"column\":\"suc_id\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"bodegas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 1),
(181, 32, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(182, 32, 'cat_nombre', 'text', 'Categoria', 0, 1, 1, 1, 1, 1, '{}', 2),
(183, 32, 'cat_imagen', 'image', 'Imagen', 0, 1, 1, 1, 1, 1, '{}', 3),
(184, 32, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(185, 32, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(186, 33, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(187, 33, 'cli_nombre', 'text', 'Nombre del cliente', 0, 1, 1, 1, 1, 1, '{}', 2),
(188, 33, 'cli_apellido', 'text', 'Apellido del cliente', 0, 1, 1, 1, 1, 1, '{}', 3),
(189, 33, 'cli_email', 'text', 'Correo', 0, 1, 1, 1, 1, 1, '{}', 4),
(190, 33, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(191, 33, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(192, 34, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(193, 34, 'com_nombre', 'text', 'Combo', 0, 1, 1, 1, 1, 1, '{}', 2),
(194, 34, 'com_descripcion', 'text', 'Descripcion', 0, 1, 1, 1, 1, 1, '{}', 3),
(195, 34, 'com_imagen', 'image', 'Imagen', 0, 1, 1, 1, 1, 1, '{}', 6),
(196, 34, 'com_precio', 'number', 'Precio', 0, 1, 1, 1, 1, 1, '{}', 7),
(197, 34, 'cat_id', 'text', 'Cat Id', 0, 1, 1, 1, 1, 1, '{}', 8),
(198, 34, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 9),
(199, 34, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(200, 35, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 3),
(201, 35, 'prod_id', 'text', 'Prod Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(202, 35, 'dc_stock', 'number', 'Stock DetalleCombo', 0, 1, 1, 1, 1, 1, '{}', 5),
(203, 35, 'com_id', 'text', 'Com Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(204, 35, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 7),
(205, 35, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(206, 36, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 2),
(207, 36, 'fac_id', 'text', 'Fac Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(208, 36, 'df_tipo', 'text', 'Tipo DetalleFactura', 0, 1, 1, 1, 1, 1, '{}', 4),
(209, 36, 'df_item_id', 'text', 'Item Id DetalleFactura', 0, 1, 1, 1, 1, 1, '{}', 5),
(210, 36, 'df_total', 'number', 'Total DetalleFactura', 0, 1, 1, 1, 1, 1, '{}', 6),
(211, 36, 'df_cantidad', 'text', 'Cantidad DetalleFactura', 0, 1, 1, 1, 1, 1, '{}', 7),
(212, 36, 'df_precio', 'number', 'Precio DetalleFactura', 0, 1, 1, 1, 1, 1, '{}', 8),
(213, 36, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 9),
(214, 36, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(215, 37, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 3),
(216, 37, 'fac_fecha', 'date', 'Fecha', 0, 1, 1, 1, 1, 1, '{}', 4),
(217, 37, 'cli_id', 'text', 'Cli Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(218, 37, 'fac_total', 'number', 'Total', 0, 1, 1, 1, 1, 1, '{}', 6),
(219, 37, 'fac_iva', 'number', 'Iva', 0, 1, 1, 1, 1, 1, '{}', 7),
(220, 37, 'mp_id', 'text', 'Mp Id', 0, 1, 1, 1, 1, 1, '{}', 8),
(221, 37, 'fac_status', 'text', 'Estado', 0, 1, 1, 1, 1, 1, '{}', 9),
(222, 37, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 10),
(223, 37, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(224, 34, 'combo_belongsto_categoria_relationship', 'relationship', 'Categoria', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Categoria\",\"table\":\"categorias\",\"type\":\"belongsTo\",\"column\":\"cat_id\",\"key\":\"id\",\"label\":\"cat_nombre\",\"pivot_table\":\"bodegas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(225, 35, 'detallecombo_belongsto_producto_relationship', 'relationship', 'Prodcuto', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Producto\",\"table\":\"productos\",\"type\":\"belongsTo\",\"column\":\"prod_id\",\"key\":\"id\",\"label\":\"prod_nombre\",\"pivot_table\":\"bodegas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(226, 35, 'detallecombo_belongsto_combo_relationship', 'relationship', 'Combo', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Combo\",\"table\":\"combos\",\"type\":\"belongsTo\",\"column\":\"com_id\",\"key\":\"id\",\"label\":\"com_nombre\",\"pivot_table\":\"bodegas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 1),
(227, 36, 'detallefactura_belongsto_factura_relationship', 'relationship', 'Factura', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Factura\",\"table\":\"facturas\",\"type\":\"belongsTo\",\"column\":\"fac_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"bodegas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 1),
(228, 37, 'factura_belongsto_cliente_relationship', 'relationship', 'Cliente', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Cliente\",\"table\":\"clientes\",\"type\":\"belongsTo\",\"column\":\"cli_id\",\"key\":\"id\",\"label\":\"cli_nombre\",\"pivot_table\":\"bodegas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 1),
(229, 37, 'factura_belongsto_metodopago_relationship', 'relationship', 'Metodo de pago', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Metodopago\",\"table\":\"metodopagos\",\"type\":\"belongsTo\",\"column\":\"mp_id\",\"key\":\"id\",\"label\":\"mp_nombre\",\"pivot_table\":\"bodegas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(230, 38, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(231, 38, 'mp_nombre', 'text', 'Metodo de pago', 0, 1, 1, 1, 1, 1, '{}', 2),
(232, 38, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(233, 38, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(234, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 0, 0, 0, 0, 0, '{}', 6),
(235, 1, 'two_factor_secret', 'text', 'Two Factor Secret', 0, 0, 0, 0, 0, 0, '{}', 8),
(236, 1, 'two_factor_recovery_codes', 'text', 'Two Factor Recovery Codes', 0, 0, 0, 0, 0, 0, '{}', 9),
(237, 1, 'two_factor_confirmed_at', 'timestamp', 'Two Factor Confirmed At', 0, 0, 0, 0, 0, 0, '{}', 10),
(238, 1, 'current_team_id', 'text', 'Current Team Id', 0, 0, 0, 0, 0, 0, '{}', 13),
(239, 1, 'profile_photo_path', 'text', 'Profile Photo Path', 0, 0, 0, 0, 0, 0, '{}', 14),
(240, 34, 'combo_belongsto_producto_relationship', 'relationship', 'Productos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Producto\",\"table\":\"productos\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"prod_nombre\",\"pivot_table\":\"combo_producto\",\"pivot\":\"1\",\"taggable\":\"0\"}', 5),
(241, 34, 'productos', 'select_multiple', 'Productos', 0, 0, 0, 0, 0, 0, '{}', 10),
(242, 30, 'prod_iva', 'text', 'Iva 15%', 0, 1, 1, 1, 1, 1, '{}', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2024-07-17 01:31:18', '2024-08-11 23:05:43'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2024-07-17 01:31:18', '2024-07-17 01:31:18'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2024-07-17 01:31:18', '2024-08-11 23:00:49'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(15, 'bodega', 'bodega', 'Bodega', 'Bodegas', NULL, 'App\\Models\\Bodega', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-07-17 02:51:51', '2024-07-17 02:51:51'),
(29, 'bodegas', 'bodegas', 'Bodega', 'Bodegas', NULL, 'App\\Models\\Bodega', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-07-17 05:21:32', '2024-08-11 23:09:26'),
(30, 'productos', 'productos', 'Producto', 'Productos', NULL, 'App\\Models\\Producto', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-07-17 05:23:57', '2024-08-25 23:42:42'),
(31, 'sucursales', 'sucursales', 'Sucursale', 'Sucursales', NULL, 'App\\Models\\Sucursale', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-07-17 05:29:50', '2024-08-11 23:07:56'),
(32, 'categorias', 'categorias', 'Categoria', 'Categorias', NULL, 'App\\Models\\Categoria', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-07-17 05:41:11', '2024-08-11 23:09:58'),
(33, 'clientes', 'clientes', 'Cliente', 'Clientes', NULL, 'App\\Models\\Cliente', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-07-17 05:47:09', '2024-08-11 23:07:13'),
(34, 'combos', 'combos', 'Combo', 'Combos', NULL, 'App\\Models\\Combo', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-07-17 05:48:48', '2024-08-24 21:23:38'),
(35, 'detallecombos', 'detallecombos', 'Detallecombo', 'Detallecombos', NULL, 'App\\Models\\Detallecombo', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-07-17 05:50:39', '2024-08-11 23:16:29'),
(36, 'detallefacturas', 'detallefacturas', 'Detallefactura', 'Detallefacturas', NULL, 'App\\Models\\Detallefactura', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-07-17 05:53:30', '2024-08-11 23:15:31'),
(37, 'facturas', 'facturas', 'Factura', 'Facturas', NULL, 'App\\Models\\Factura', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-07-17 05:56:20', '2024-08-11 23:13:31'),
(38, 'metodopagos', 'metodopagos', 'Metodopago', 'Metodopagos', NULL, 'App\\Models\\Metodopago', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-07-17 06:04:49', '2024-08-11 23:14:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallecombos`
--

CREATE TABLE `detallecombos` (
  `id` int(10) UNSIGNED NOT NULL,
  `prod_id` int(11) DEFAULT NULL,
  `dc_stock` int(11) DEFAULT NULL,
  `com_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallefacturas`
--

CREATE TABLE `detallefacturas` (
  `id` int(10) UNSIGNED NOT NULL,
  `fac_id` int(11) DEFAULT NULL,
  `df_tipo` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `df_item_id` int(11) DEFAULT NULL,
  `df_total` float DEFAULT NULL,
  `df_cantidad` int(11) DEFAULT NULL,
  `df_precio` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `id` int(10) UNSIGNED NOT NULL,
  `fac_fecha` date DEFAULT NULL,
  `cli_id` int(11) DEFAULT NULL,
  `fac_total` float DEFAULT NULL,
  `fac_iva` int(11) DEFAULT NULL,
  `mp_id` int(11) DEFAULT NULL,
  `fac_status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`id`, `fac_fecha`, `cli_id`, `fac_total`, `fac_iva`, `mp_id`, `fac_status`, `created_at`, `updated_at`) VALUES
(1, '2024-08-09', 1, 15.5, 2, 1, '1', '2024-08-09 20:29:54', '2024-08-09 20:29:54'),
(2, '2024-05-05', 2, 12.24, 2, 3, '1', '2024-08-09 20:32:42', '2024-08-09 20:32:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2024-07-17 01:31:19', '2024-07-17 01:31:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2024-07-17 01:31:19', '2024-07-17 01:31:19', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 14, '2024-07-17 01:31:19', '2024-07-17 06:28:37', 'voyager.media.index', NULL),
(3, 1, 'Usuarios', '', '_self', 'voyager-person', '#000000', NULL, 3, '2024-07-17 01:31:19', '2024-07-17 06:29:00', 'voyager.users.index', 'null'),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2024-07-17 01:31:19', '2024-07-17 01:31:19', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 15, '2024-07-17 01:31:19', '2024-07-17 06:28:37', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2024-07-17 01:31:19', '2024-07-17 06:27:54', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2024-07-17 01:31:19', '2024-07-17 06:27:54', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2024-07-17 01:31:19', '2024-07-17 06:27:54', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2024-07-17 01:31:19', '2024-07-17 06:27:54', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 16, '2024-07-17 01:31:19', '2024-07-17 06:28:37', 'voyager.settings.index', NULL),
(33, 1, 'Bodegas', '', '_self', 'voyager-truck', '#000000', NULL, 6, '2024-07-17 05:21:32', '2024-07-17 06:28:15', 'voyager.bodegas.index', 'null'),
(34, 1, 'Productos', '', '_self', 'voyager-hotdog', '#000000', NULL, 9, '2024-07-17 05:23:57', '2024-07-17 06:28:21', 'voyager.productos.index', 'null'),
(35, 1, 'Sucursales', '', '_self', 'voyager-company', '#000000', NULL, 5, '2024-07-17 05:29:50', '2024-07-17 06:28:15', 'voyager.sucursales.index', 'null'),
(36, 1, 'Categorias', '', '_self', 'voyager-bag', '#000000', NULL, 7, '2024-07-17 05:41:11', '2024-07-17 06:28:21', 'voyager.categorias.index', 'null'),
(37, 1, 'Clientes', '', '_self', 'voyager-people', '#000000', NULL, 4, '2024-07-17 05:47:09', '2024-07-17 06:28:06', 'voyager.clientes.index', 'null'),
(38, 1, 'Combos', '', '_self', 'voyager-cup', '#000000', NULL, 8, '2024-07-17 05:48:48', '2024-07-17 06:28:21', 'voyager.combos.index', 'null'),
(39, 1, 'Detallecombos', '', '_self', 'voyager-tag', '#000000', NULL, 13, '2024-07-17 05:50:40', '2024-07-17 06:28:37', 'voyager.detallecombos.index', 'null'),
(40, 1, 'Detallefacturas', '', '_self', 'voyager-folder', '#000000', NULL, 12, '2024-07-17 05:53:30', '2024-07-17 06:28:37', 'voyager.detallefacturas.index', 'null'),
(41, 1, 'Facturas', '', '_self', 'voyager-file-text', '#000000', NULL, 10, '2024-07-17 05:56:20', '2024-07-17 06:28:32', 'voyager.facturas.index', 'null'),
(42, 1, 'Metodopagos', '', '_self', 'voyager-dollar', '#000000', NULL, 11, '2024-07-17 06:04:49', '2024-07-17 06:28:37', 'voyager.metodopagos.index', 'null');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metodopagos`
--

CREATE TABLE `metodopagos` (
  `id` int(10) UNSIGNED NOT NULL,
  `mp_nombre` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `metodopagos`
--

INSERT INTO `metodopagos` (`id`, `mp_nombre`, `created_at`, `updated_at`) VALUES
(1, 'Transferencia', '2024-08-09 20:17:58', '2024-08-09 20:17:58'),
(2, 'Efectivo', '2024-08-09 20:18:09', '2024-08-09 20:18:09'),
(3, 'Tarjeta de credito', '2024-08-09 20:20:14', '2024-08-09 20:20:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2016_01_01_000000_add_voyager_user_fields', 1),
(5, '2016_01_01_000000_create_data_types_table', 1),
(6, '2016_05_19_173453_create_menu_table', 1),
(7, '2016_10_21_190000_create_roles_table', 1),
(8, '2016_10_21_190000_create_settings_table', 1),
(9, '2016_11_30_135954_create_permission_table', 1),
(10, '2016_11_30_141208_create_permission_role_table', 1),
(11, '2016_12_26_201236_data_types__add__server_side', 1),
(12, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(13, '2017_01_14_005015_create_translations_table', 1),
(14, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(15, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(16, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(17, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(18, '2017_08_05_000000_add_group_to_settings_table', 1),
(19, '2017_11_26_013050_add_user_role_relationship', 1),
(20, '2017_11_26_015000_create_user_roles_table', 1),
(21, '2018_03_11_000000_add_user_settings', 1),
(22, '2018_03_14_000000_add_details_to_data_types_table', 1),
(23, '2018_03_16_000000_make_settings_value_nullable', 1),
(24, '2019_08_19_000000_create_failed_jobs_table', 1),
(25, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(26, '2024_07_16_201132_create_sessions_table', 1),
(27, '2016_01_01_000000_create_pages_table', 2),
(28, '2016_01_01_000000_create_posts_table', 2),
(29, '2016_02_15_204651_create_categories_table', 2),
(30, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(31, '2014_10_12_100000_create_password_resets_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2024-07-17 01:31:19', '2024-07-17 01:31:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(2, 'browse_bread', NULL, '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(3, 'browse_database', NULL, '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(4, 'browse_media', NULL, '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(5, 'browse_compass', NULL, '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(6, 'browse_menus', 'menus', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(7, 'read_menus', 'menus', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(8, 'edit_menus', 'menus', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(9, 'add_menus', 'menus', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(10, 'delete_menus', 'menus', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(11, 'browse_roles', 'roles', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(12, 'read_roles', 'roles', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(13, 'edit_roles', 'roles', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(14, 'add_roles', 'roles', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(15, 'delete_roles', 'roles', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(16, 'browse_users', 'users', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(17, 'read_users', 'users', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(18, 'edit_users', 'users', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(19, 'add_users', 'users', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(20, 'delete_users', 'users', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(21, 'browse_settings', 'settings', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(22, 'read_settings', 'settings', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(23, 'edit_settings', 'settings', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(24, 'add_settings', 'settings', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(25, 'delete_settings', 'settings', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(26, 'browse_categories', 'categories', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(27, 'read_categories', 'categories', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(28, 'edit_categories', 'categories', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(29, 'add_categories', 'categories', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(30, 'delete_categories', 'categories', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(31, 'browse_posts', 'posts', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(32, 'read_posts', 'posts', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(33, 'edit_posts', 'posts', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(34, 'add_posts', 'posts', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(35, 'delete_posts', 'posts', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(36, 'browse_pages', 'pages', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(37, 'read_pages', 'pages', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(38, 'edit_pages', 'pages', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(39, 'add_pages', 'pages', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(40, 'delete_pages', 'pages', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(66, 'browse_bodega', 'bodega', '2024-07-17 02:51:51', '2024-07-17 02:51:51'),
(67, 'read_bodega', 'bodega', '2024-07-17 02:51:51', '2024-07-17 02:51:51'),
(68, 'edit_bodega', 'bodega', '2024-07-17 02:51:51', '2024-07-17 02:51:51'),
(69, 'add_bodega', 'bodega', '2024-07-17 02:51:51', '2024-07-17 02:51:51'),
(70, 'delete_bodega', 'bodega', '2024-07-17 02:51:51', '2024-07-17 02:51:51'),
(136, 'browse_bodegas', 'bodegas', '2024-07-17 05:21:32', '2024-07-17 05:21:32'),
(137, 'read_bodegas', 'bodegas', '2024-07-17 05:21:32', '2024-07-17 05:21:32'),
(138, 'edit_bodegas', 'bodegas', '2024-07-17 05:21:32', '2024-07-17 05:21:32'),
(139, 'add_bodegas', 'bodegas', '2024-07-17 05:21:32', '2024-07-17 05:21:32'),
(140, 'delete_bodegas', 'bodegas', '2024-07-17 05:21:32', '2024-07-17 05:21:32'),
(141, 'browse_productos', 'productos', '2024-07-17 05:23:57', '2024-07-17 05:23:57'),
(142, 'read_productos', 'productos', '2024-07-17 05:23:57', '2024-07-17 05:23:57'),
(143, 'edit_productos', 'productos', '2024-07-17 05:23:57', '2024-07-17 05:23:57'),
(144, 'add_productos', 'productos', '2024-07-17 05:23:57', '2024-07-17 05:23:57'),
(145, 'delete_productos', 'productos', '2024-07-17 05:23:57', '2024-07-17 05:23:57'),
(146, 'browse_sucursales', 'sucursales', '2024-07-17 05:29:50', '2024-07-17 05:29:50'),
(147, 'read_sucursales', 'sucursales', '2024-07-17 05:29:50', '2024-07-17 05:29:50'),
(148, 'edit_sucursales', 'sucursales', '2024-07-17 05:29:50', '2024-07-17 05:29:50'),
(149, 'add_sucursales', 'sucursales', '2024-07-17 05:29:50', '2024-07-17 05:29:50'),
(150, 'delete_sucursales', 'sucursales', '2024-07-17 05:29:50', '2024-07-17 05:29:50'),
(151, 'browse_categorias', 'categorias', '2024-07-17 05:41:11', '2024-07-17 05:41:11'),
(152, 'read_categorias', 'categorias', '2024-07-17 05:41:11', '2024-07-17 05:41:11'),
(153, 'edit_categorias', 'categorias', '2024-07-17 05:41:11', '2024-07-17 05:41:11'),
(154, 'add_categorias', 'categorias', '2024-07-17 05:41:11', '2024-07-17 05:41:11'),
(155, 'delete_categorias', 'categorias', '2024-07-17 05:41:11', '2024-07-17 05:41:11'),
(156, 'browse_clientes', 'clientes', '2024-07-17 05:47:09', '2024-07-17 05:47:09'),
(157, 'read_clientes', 'clientes', '2024-07-17 05:47:09', '2024-07-17 05:47:09'),
(158, 'edit_clientes', 'clientes', '2024-07-17 05:47:09', '2024-07-17 05:47:09'),
(159, 'add_clientes', 'clientes', '2024-07-17 05:47:09', '2024-07-17 05:47:09'),
(160, 'delete_clientes', 'clientes', '2024-07-17 05:47:09', '2024-07-17 05:47:09'),
(161, 'browse_combos', 'combos', '2024-07-17 05:48:48', '2024-07-17 05:48:48'),
(162, 'read_combos', 'combos', '2024-07-17 05:48:48', '2024-07-17 05:48:48'),
(163, 'edit_combos', 'combos', '2024-07-17 05:48:48', '2024-07-17 05:48:48'),
(164, 'add_combos', 'combos', '2024-07-17 05:48:48', '2024-07-17 05:48:48'),
(165, 'delete_combos', 'combos', '2024-07-17 05:48:48', '2024-07-17 05:48:48'),
(166, 'browse_detallecombos', 'detallecombos', '2024-07-17 05:50:40', '2024-07-17 05:50:40'),
(167, 'read_detallecombos', 'detallecombos', '2024-07-17 05:50:40', '2024-07-17 05:50:40'),
(168, 'edit_detallecombos', 'detallecombos', '2024-07-17 05:50:40', '2024-07-17 05:50:40'),
(169, 'add_detallecombos', 'detallecombos', '2024-07-17 05:50:40', '2024-07-17 05:50:40'),
(170, 'delete_detallecombos', 'detallecombos', '2024-07-17 05:50:40', '2024-07-17 05:50:40'),
(171, 'browse_detallefacturas', 'detallefacturas', '2024-07-17 05:53:30', '2024-07-17 05:53:30'),
(172, 'read_detallefacturas', 'detallefacturas', '2024-07-17 05:53:30', '2024-07-17 05:53:30'),
(173, 'edit_detallefacturas', 'detallefacturas', '2024-07-17 05:53:30', '2024-07-17 05:53:30'),
(174, 'add_detallefacturas', 'detallefacturas', '2024-07-17 05:53:30', '2024-07-17 05:53:30'),
(175, 'delete_detallefacturas', 'detallefacturas', '2024-07-17 05:53:30', '2024-07-17 05:53:30'),
(176, 'browse_facturas', 'facturas', '2024-07-17 05:56:20', '2024-07-17 05:56:20'),
(177, 'read_facturas', 'facturas', '2024-07-17 05:56:20', '2024-07-17 05:56:20'),
(178, 'edit_facturas', 'facturas', '2024-07-17 05:56:20', '2024-07-17 05:56:20'),
(179, 'add_facturas', 'facturas', '2024-07-17 05:56:20', '2024-07-17 05:56:20'),
(180, 'delete_facturas', 'facturas', '2024-07-17 05:56:20', '2024-07-17 05:56:20'),
(181, 'browse_metodopagos', 'metodopagos', '2024-07-17 06:04:49', '2024-07-17 06:04:49'),
(182, 'read_metodopagos', 'metodopagos', '2024-07-17 06:04:49', '2024-07-17 06:04:49'),
(183, 'edit_metodopagos', 'metodopagos', '2024-07-17 06:04:49', '2024-07-17 06:04:49'),
(184, 'add_metodopagos', 'metodopagos', '2024-07-17 06:04:49', '2024-07-17 06:04:49'),
(185, 'delete_metodopagos', 'metodopagos', '2024-07-17 06:04:49', '2024-07-17 06:04:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 4),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(2, 1),
(3, 1),
(4, 1),
(4, 4),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(136, 1),
(136, 4),
(136, 6),
(136, 7),
(136, 8),
(136, 9),
(137, 1),
(137, 4),
(137, 6),
(137, 7),
(137, 8),
(137, 9),
(138, 1),
(138, 4),
(138, 6),
(138, 7),
(138, 8),
(138, 9),
(139, 1),
(139, 4),
(139, 6),
(139, 7),
(139, 8),
(139, 9),
(140, 1),
(140, 4),
(140, 6),
(140, 7),
(140, 8),
(140, 9),
(141, 1),
(141, 4),
(141, 6),
(141, 7),
(141, 8),
(141, 9),
(142, 1),
(142, 4),
(142, 6),
(142, 7),
(142, 8),
(142, 9),
(143, 1),
(143, 4),
(143, 6),
(143, 7),
(143, 8),
(143, 9),
(144, 1),
(144, 4),
(144, 6),
(144, 7),
(144, 8),
(144, 9),
(145, 1),
(145, 4),
(145, 6),
(145, 7),
(145, 8),
(145, 9),
(146, 1),
(146, 6),
(146, 7),
(146, 8),
(146, 9),
(147, 1),
(147, 6),
(147, 7),
(147, 8),
(147, 9),
(148, 1),
(148, 6),
(148, 7),
(148, 8),
(148, 9),
(149, 1),
(149, 6),
(149, 7),
(149, 8),
(149, 9),
(150, 1),
(150, 6),
(150, 7),
(150, 8),
(150, 9),
(151, 1),
(151, 4),
(151, 6),
(151, 7),
(151, 8),
(151, 9),
(152, 1),
(152, 4),
(152, 6),
(152, 7),
(152, 8),
(152, 9),
(153, 1),
(153, 4),
(153, 6),
(153, 7),
(153, 8),
(153, 9),
(154, 1),
(154, 4),
(154, 6),
(154, 7),
(154, 8),
(154, 9),
(155, 1),
(155, 4),
(155, 6),
(155, 7),
(155, 8),
(155, 9),
(156, 1),
(156, 4),
(156, 6),
(156, 7),
(156, 8),
(156, 9),
(157, 1),
(157, 4),
(157, 6),
(157, 7),
(157, 8),
(157, 9),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(161, 4),
(161, 6),
(161, 7),
(161, 8),
(161, 9),
(162, 1),
(162, 4),
(162, 6),
(162, 7),
(162, 8),
(162, 9),
(163, 1),
(163, 4),
(163, 6),
(163, 7),
(163, 8),
(163, 9),
(164, 1),
(164, 4),
(164, 6),
(164, 7),
(164, 8),
(164, 9),
(165, 1),
(165, 4),
(165, 6),
(165, 7),
(165, 8),
(165, 9),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(171, 4),
(171, 6),
(171, 7),
(171, 8),
(171, 9),
(172, 1),
(172, 4),
(172, 6),
(172, 7),
(172, 8),
(172, 9),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(176, 4),
(176, 6),
(176, 7),
(176, 8),
(176, 9),
(177, 1),
(177, 4),
(177, 6),
(177, 7),
(177, 8),
(177, 9),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2024-07-17 01:31:19', '2024-07-17 01:31:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `prod_nombre` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prod_precio_un` float DEFAULT NULL,
  `prod_precio_co` float DEFAULT NULL,
  `prod_agregado` tinyint(4) DEFAULT NULL,
  `prod_imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `prod_iva` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `prod_nombre`, `prod_precio_un`, `prod_precio_co`, `prod_agregado`, `prod_imagen`, `created_at`, `updated_at`, `prod_iva`) VALUES
(7, 'ALITAS', NULL, NULL, 1, 'productos\\August2024\\AfOeptoQReLHRzSEwJkl.jpeg', '2024-08-25 23:35:00', '2024-08-25 23:35:00', NULL),
(8, 'PAPAS FRITAS', NULL, NULL, 1, 'productos\\August2024\\wxN7GM9NbEOCDQW6U1nx.jpeg', '2024-08-25 23:35:27', '2024-08-25 23:35:27', NULL),
(9, 'NUGGETS', NULL, NULL, 1, 'productos\\August2024\\5GScr57w8U0EpKt3KJuL.jpeg', '2024-08-25 23:35:40', '2024-08-25 23:35:40', NULL),
(10, 'PECHUGA DE POLLO', NULL, NULL, 1, 'productos\\August2024\\r7nGc65PXb8st3eLw3tS.jpeg', '2024-08-25 23:35:56', '2024-08-25 23:35:56', NULL),
(11, 'PAN DE HAMBURGESA', NULL, NULL, 1, 'productos\\August2024\\N92YPBiLhxsIArlbb8kW.jpeg', '2024-08-25 23:36:10', '2024-08-25 23:36:10', NULL),
(12, 'POPCORN', NULL, NULL, 1, 'productos\\August2024\\EuiyjfdS6t7M8y82DA0K.jpeg', '2024-08-25 23:36:33', '2024-08-25 23:36:33', NULL),
(13, 'MENESTRA DE LENTEJA', NULL, NULL, 1, 'productos\\August2024\\2dnJrdB28YoUYyS6GUUR.jpeg', '2024-08-25 23:36:56', '2024-08-25 23:36:56', NULL),
(14, 'MADUROS', NULL, NULL, 1, 'productos\\August2024\\bEJM49NM1XVO5b3cuXNh.jpeg', '2024-08-25 23:37:10', '2024-08-25 23:37:10', NULL),
(15, 'ARROZ', NULL, NULL, 1, 'productos\\August2024\\wPxOJSlzLGczVyQvcHqz.jpeg', '2024-08-25 23:37:22', '2024-08-25 23:37:22', NULL),
(16, 'LECHUGA', NULL, NULL, 1, 'productos\\August2024\\wwmw6Rb1ha4CqNS2IPs2.jpeg', '2024-08-25 23:37:45', '2024-08-25 23:37:45', NULL),
(17, 'TOMATE', NULL, NULL, 1, 'productos\\August2024\\4A5IaSWBZwlntaJ9WnFp.jpeg', '2024-08-25 23:38:14', '2024-08-25 23:38:14', NULL),
(18, 'ZANAHORIA', NULL, NULL, 1, 'productos\\August2024\\BfmOmU3DLkbumkvYAmG0.jpeg', '2024-08-25 23:38:26', '2024-08-25 23:38:26', NULL),
(19, 'QUESO', NULL, NULL, 1, 'productos\\August2024\\nV0MrtUQGHmB2lYHCgKI.jpeg', '2024-08-25 23:38:44', '2024-08-25 23:38:44', NULL),
(20, 'COL MORADA', NULL, NULL, 1, 'productos\\August2024\\dvjtbetwf4jQ819HLQrS.jpeg', '2024-08-25 23:39:00', '2024-08-25 23:39:00', NULL),
(21, 'MAIZ DULCE', NULL, NULL, 1, 'productos\\August2024\\YFTLS1yBODsMfGKemYS7.jpeg', '2024-08-25 23:39:12', '2024-08-25 23:39:12', NULL),
(22, 'COL', NULL, NULL, 1, 'productos\\August2024\\OvJ3V1ktbSwSJedzNLd7.jpeg', '2024-08-25 23:39:24', '2024-08-25 23:39:24', NULL),
(23, 'GASEOSAS', NULL, NULL, 1, 'productos\\August2024\\WrtdmOPV460ZhFhyzxRP.jpeg', '2024-08-25 23:39:38', '2024-08-25 23:39:38', NULL),
(24, 'AGUA NATURAL', NULL, NULL, 1, 'productos\\August2024\\GnX0jyJzAeIEapWPbRRc.jpeg', '2024-08-25 23:39:55', '2024-08-25 23:39:55', NULL);

--
-- Disparadores `productos`
--
DELIMITER $$
CREATE TRIGGER `before_product_insert` BEFORE INSERT ON `productos` FOR EACH ROW BEGIN
    -- Validación para evitar números negativos
    IF NEW.prod_iva < 0 THEN
        SET NEW.prod_iva = 0;
    END IF;

    -- Validación del rango del IVA
    IF NEW.prod_iva > 25 THEN
        -- Si el IVA es mayor a 25%, se guarda con un IVA del 15%
        SET NEW.prod_iva = 15;
        SET NEW.prod_precio_co = NEW.prod_precio_un * (1 + (NEW.prod_iva / 100));
    ELSE
        -- Cálculo del precio con IVA si el IVA está entre 0% y 25%
        SET NEW.prod_precio_co = NEW.prod_precio_un * (1 + (NEW.prod_iva / 100));
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_product_update` BEFORE UPDATE ON `productos` FOR EACH ROW BEGIN
    -- Validación para evitar números negativos
    IF NEW.prod_iva < 0 THEN
        SET NEW.prod_iva = 0;
    END IF;

    -- Validación del rango del IVA
    IF NEW.prod_iva > 25 THEN
        -- Si el IVA es mayor a 25%, se guarda con un IVA del 15%
        SET NEW.prod_iva = 15;
        SET NEW.prod_precio_co = NEW.prod_precio_un * (1 + (NEW.prod_iva / 100));
    ELSE
        -- Cálculo del precio con IVA si el IVA está entre 0% y 25%
        SET NEW.prod_precio_co = NEW.prod_precio_un * (1 + (NEW.prod_iva / 100));
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'SUPER ADMINISTRADOR', 'Administrator', '2024-07-17 01:31:19', '2024-08-25 23:57:14'),
(2, 'user', 'Normal User', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(4, 'EMPLEADO SHELL SUR', 'ADMINISTRADOR SHELL SUR', '2024-08-25 23:53:59', '2024-08-25 23:58:44'),
(6, 'EMPLEADO SOLANDA', 'ADMINISTRADOR SOLANDA', '2024-08-25 23:55:28', '2024-08-25 23:58:56'),
(7, 'EMPLEADO HOSPITAL DE IESS', 'ADMINISTRADOR HOSPITAL DE IESS', '2024-08-25 23:56:36', '2024-08-25 23:59:06'),
(8, 'EMPLEADO COLON', 'ADMINISTRADOR COLON', '2024-08-25 23:57:48', '2024-08-25 23:59:14'),
(9, 'EMPLEADO CCI', 'ADMINISTRADOR CCI', '2024-08-25 23:58:11', '2024-08-25 23:59:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('14Zi35Lkudbavlj0lO4IK1ejl9J3K3i1ajgU9fJO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYVFVVFA0VThseFpIaUxIUEpEdWNzaVp1S3pIOGlxSlZGU1dPTTRHbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi92b3lhZ2VyLWFzc2V0cz9wYXRoPWZvbnRzJTJGdm95YWdlci53b2ZmIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1724614560),
('8lK07jwu3GYe4HtYvfijnyWwJ5QBsoVCpSun6fl0', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVzF3TWFkaEJXRXcwTThiS21DMUVPYjBOVHVUYmtwdmtMTG9TdDBvQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi92b3lhZ2VyLWFzc2V0cz9wYXRoPWZvbnRzJTJGdm95YWdlci53b2ZmIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1724614715),
('htnFyAuFwgJ7jaUO0e89aRLPvoIAhgaWbGDvyg9a', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTGZTMW1KRnhlUzFlV3ZIcjZPSzYxcEpxNEhRNzVIbUpoVTVFYW95TCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7fQ==', 1724614612),
('KF1BajvgyWW4Vz6a8FEfAScaRGw2zamExmN1YGZN', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSElPc1VNemtWcjhUSWhuRmJxMjNZRlZCTGM1cnpOb2ZNN216THRsaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7fQ==', 1724614774),
('TcW2d51wbXYm9kCgfrGT7wQWVo6b4KKvxu8n8gyq', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibEVoYkN0R3RyYU9NblJaUnFZcHhBUlBxWklsSHcwR3Nhc3F5dlRMRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi92b3lhZ2VyLWFzc2V0cz9wYXRoPWltYWdlcyUyRmtuZE5VLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1724615336),
('vCCrGp4GpNdpJ9R42F1NfAXZo2MU50seNhn7trop', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaDZaMG16S091dE4ydlk1cTBLc2w0Wm4yQ2x4YWdLUGxtVnM2ZFh1YSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi92b3lhZ2VyLWFzc2V0cz9wYXRoPWZvbnRzJTJGdm95YWdlci53b2ZmIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1724614795),
('VHH56FQnCK5ghTR7kRpD35lVI1hW9Cp1dpTsz8Kc', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibTd4bWdnZHE1YUY4aDFsUHNXNE95U3pzRlpDNTd5ZGo1Q0lpOFZraSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi92b3lhZ2VyLWFzc2V0cz9wYXRoPWltYWdlcyUyRmtuZE5VLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1724615688);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'KND', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'KENTUCKY NOTHING DOUBLE', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\August2024\\QrdZO5keQSXqUiCsdBSE.jpg', '', 'image', 3, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suc_status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`id`, `nombre`, `direccion`, `suc_status`, `created_at`, `updated_at`) VALUES
(4, 'KND - SHELL SUR', 'Av. Mariscal Sucre, Quito 170607', '1', '2024-08-25 23:45:48', '2024-08-25 23:45:48'),
(5, 'KND - SOLANDA', 'Calle, Benancio Estandoque, Quito 170606', '1', '2024-08-25 23:46:12', '2024-08-25 23:46:12'),
(6, 'KND - HOSPITAL DE IESS', 'Av. América, Quito 170402', '1', '2024-08-25 23:47:02', '2024-08-25 23:47:02'),
(7, 'KND - COLON', 'Av. Cristóbal Colón, Quito 170522', '1', '2024-08-25 23:47:23', '2024-08-25 23:47:23'),
(8, 'KND - CCI', 'Av. Río Amazonas N36-152, Quito 170506', '1', '2024-08-25 23:47:56', '2024-08-25 23:47:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2024-07-17 01:31:19', '2024-07-17 01:31:19'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2024-07-17 01:31:20', '2024-07-17 01:31:20'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2024-07-17 01:31:20', '2024-07-17 01:31:20'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2024-07-17 01:31:20', '2024-07-17 01:31:20'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2024-07-17 01:31:20', '2024-07-17 01:31:20'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2024-07-17 01:31:20', '2024-07-17 01:31:20'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2024-07-17 01:31:20', '2024-07-17 01:31:20'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2024-07-17 01:31:20', '2024-07-17 01:31:20'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2024-07-17 01:31:20', '2024-07-17 01:31:20'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2024-07-17 01:31:20', '2024-07-17 01:31:20'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2024-07-17 01:31:20', '2024-07-17 01:31:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `settings`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 1, 'Administrador', 'admin@gmail.com', 'users/default.png', NULL, '$2y$12$INgi0gwxLiUfzcdG4a/it.H1uoUhMnlg.NFXrUe2OiIImvK9aBw32', NULL, NULL, NULL, 'RI5MdCcUEXLnEPrRBQXEnnF3bKax1opF2IOfGh4glyPFnzkL1onNYJgz1AYn', '{\"locale\":\"es\"}', NULL, NULL, '2024-07-17 01:31:19', '2024-07-17 01:55:36'),
(3, 4, 'ADMINISTRADOR SHELL SUR', 'shell_sur@gmail.com', 'users/default.png', NULL, '$2y$12$AX4uv1T2B09Mp/1wnf.f8egcNN0Y12VfDqJHnToT1Xosxir0R./c.', NULL, NULL, NULL, NULL, '{\"locale\":\"es\"}', NULL, NULL, '2024-08-25 23:49:36', '2024-08-25 23:59:43'),
(4, 6, 'ADMINISTRADOR SOLANDA', 'solanda@gmail.com', 'users/default.png', NULL, '$2y$12$y84tr0IDoj/SU4jxwAo31e7G.BNci8qAz4R/sZvLaWilwCcyIOg2K', NULL, NULL, NULL, NULL, '{\"locale\":\"es\"}', NULL, NULL, '2024-08-26 00:00:31', '2024-08-26 00:00:31'),
(5, 7, 'ADMINISTRADOR HOSPITAL DE IESS', 'hospital_iess@gmail.com', 'users/default.png', NULL, '$2y$12$9gMg05j6DRycBG0uMtExs.K4GbLXuTsASxrvJ4tqEB3HVCmJXHYoW', NULL, NULL, NULL, NULL, '{\"locale\":\"es\"}', NULL, NULL, '2024-08-26 00:01:56', '2024-08-26 00:01:56'),
(6, 8, 'ADMINISTRADOR COLON', 'colon@gmail.com', 'users/default.png', NULL, '$2y$12$IjX9A5DSwPULXAG5y3AjN.6bDftb/F1VUPw2K9PknMB.TSsO24bxe', NULL, NULL, NULL, NULL, '{\"locale\":\"es\"}', NULL, NULL, '2024-08-26 00:02:42', '2024-08-26 00:02:42'),
(7, 9, 'ADMINISTRADOR CCI', 'cci@gmail.com', 'users/default.png', NULL, '$2y$12$j7SfmSh8R/R7hufPwxboLOVXOAxfVzXm8t7txCz6iKumUda//h5eq', NULL, NULL, NULL, NULL, '{\"locale\":\"es\"}', NULL, NULL, '2024-08-26 00:03:17', '2024-08-26 00:03:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bodegas`
--
ALTER TABLE `bodegas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `combos`
--
ALTER TABLE `combos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `combo_producto`
--
ALTER TABLE `combo_producto`
  ADD PRIMARY KEY (`combo_id`,`producto_id`);

--
-- Indices de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indices de la tabla `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indices de la tabla `detallecombos`
--
ALTER TABLE `detallecombos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detallefacturas`
--
ALTER TABLE `detallefacturas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indices de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indices de la tabla `metodopagos`
--
ALTER TABLE `metodopagos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bodegas`
--
ALTER TABLE `bodegas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `combos`
--
ALTER TABLE `combos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT de la tabla `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `detallecombos`
--
ALTER TABLE `detallecombos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detallefacturas`
--
ALTER TABLE `detallefacturas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `metodopagos`
--
ALTER TABLE `metodopagos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
