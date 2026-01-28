-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 21-08-2025 a las 12:03:40
-- Versión del servidor: 10.11.13-MariaDB
-- Versión de PHP: 8.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `codeing_academy`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `addtocarts`
--

CREATE TABLE `addtocarts` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `applications`
--

CREATE TABLE `applications` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `is_popular` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `check` int(11) DEFAULT NULL,
  `comment` longtext DEFAULT NULL,
  `likes` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog_likes`
--

CREATE TABLE `blog_likes` (
  `id` int(255) NOT NULL,
  `blog_id` int(255) DEFAULT NULL,
  `user_id` int(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bootcamps`
--

CREATE TABLE `bootcamps` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `is_paid` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount_flag` int(11) DEFAULT NULL,
  `discounted_price` double DEFAULT NULL,
  `publish_date` int(11) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `faqs` longtext DEFAULT NULL,
  `requirements` longtext DEFAULT NULL,
  `outcomes` longtext DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bootcamp_categories`
--

CREATE TABLE `bootcamp_categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bootcamp_live_classes`
--

CREATE TABLE `bootcamp_live_classes` (
  `id` int(11) NOT NULL,
  `module_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `start_time` int(11) DEFAULT NULL,
  `end_time` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `joining_data` longtext DEFAULT NULL,
  `force_stop` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bootcamp_modules`
--

CREATE TABLE `bootcamp_modules` (
  `id` int(11) NOT NULL,
  `bootcamp_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `publish_date` int(11) DEFAULT NULL,
  `expiry_date` int(11) DEFAULT NULL,
  `restriction` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bootcamp_purchases`
--

CREATE TABLE `bootcamp_purchases` (
  `id` int(11) NOT NULL,
  `invoice` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `bootcamp_id` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_details` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `admin_revenue` double DEFAULT NULL,
  `instructor_revenue` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bootcamp_resources`
--

CREATE TABLE `bootcamp_resources` (
  `id` int(11) NOT NULL,
  `module_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `upload_type` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `builder_pages`
--

CREATE TABLE `builder_pages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `html` longtext DEFAULT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `is_permanent` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `edit_home_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `builder_pages`
--

INSERT INTO `builder_pages` (`id`, `name`, `html`, `identifier`, `is_permanent`, `status`, `edit_home_id`, `created_at`, `updated_at`) VALUES
(12, 'Elegant', '', 'elegant', 1, 0, NULL, '2024-08-27 04:25:11', '2024-10-31 01:03:56'),
(13, 'Kindergarden', NULL, 'kindergarden', 1, 0, 1, '2024-08-27 04:25:11', '2024-10-31 01:03:56'),
(14, 'Cooking', NULL, 'cooking', 1, 0, 1, '2024-08-27 04:25:11', '2024-10-31 01:03:56'),
(15, 'University', NULL, 'university', 1, 0, 1, '2024-08-27 04:25:11', '2024-10-31 01:03:56'),
(16, 'Language', NULL, 'language', 1, 0, NULL, '2024-08-27 04:25:11', '2024-10-31 01:03:56'),
(17, 'Development', NULL, 'development', 1, 0, 1, '2024-08-27 04:25:11', '2024-10-31 01:03:56'),
(18, 'Marketplace', NULL, 'marketplace', 1, 0, 1, '2024-08-27 04:25:11', '2024-10-31 01:03:56'),
(19, 'Meditation', NULL, 'meditation', 1, 0, 1, '2024-08-27 04:25:11', '2024-10-31 01:03:56'),
(23, 'Default', '[\"top_bar\",\"header\",\"hero_banner\",\"features\",\"category\",\"featured_courses\",\"about_us\",\"testimonial\",\"blog\",\"footer\"]', NULL, NULL, 1, NULL, '2024-08-27 04:25:11', '2025-08-21 10:51:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int(255) NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `course_id` int(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `status` int(11) DEFAULT NULL,
  `keywords` varchar(400) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `category_logo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `certificates`
--

CREATE TABLE `certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `identifier` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts`
--

CREATE TABLE `contacts` (
  `id` int(21) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `has_read` int(11) DEFAULT 0,
  `replied` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `dial_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `dial_code`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'AF', '+93', NULL, '2024-10-02 02:55:33'),
(2, 'Aland Islands', 'AX', '+358', NULL, '2024-10-02 03:00:27'),
(3, 'Albania', 'AL', '+355', NULL, NULL),
(4, 'Algeria', 'DZ', '+213', NULL, NULL),
(5, 'AmericanSamoa', 'AS', '+1684', NULL, NULL),
(6, 'Andorra', 'AD', '+376', NULL, NULL),
(7, 'Angola', 'AO', '+244', NULL, NULL),
(8, 'Anguilla', 'AI', '+1264', NULL, NULL),
(9, 'Antarctica', 'AQ', '+672', NULL, NULL),
(10, 'Antigua and Barbuda', 'AG', '+1268', NULL, NULL),
(11, 'Argentina', 'AR', '+54', NULL, NULL),
(12, 'Armenia', 'AM', '+374', NULL, NULL),
(13, 'Aruba', 'AW', '+297', NULL, NULL),
(14, 'Australia', 'AU', '+61', NULL, NULL),
(15, 'Austria', 'AT', '+43', NULL, NULL),
(16, 'Azerbaijan', 'AZ', '+994', NULL, NULL),
(17, 'Bahamas', 'BS', '+1242', NULL, NULL),
(18, 'Bahrain', 'BH', '+973', NULL, '2024-10-02 03:00:48'),
(19, 'Bangladesh', 'BD', '+880', NULL, NULL),
(20, 'Barbados', 'BB', '+1246', NULL, NULL),
(21, 'Belarus', 'BY', '+375', NULL, NULL),
(22, 'Belgium', 'BE', '+32', NULL, NULL),
(23, 'Belize', 'BZ', '+501', NULL, NULL),
(24, 'Benin', 'BJ', '+229', NULL, NULL),
(25, 'Bermuda', 'BM', '+1441', NULL, NULL),
(26, 'Bhutan', 'BT', '+975', NULL, NULL),
(27, 'Bolivia, Plurination', 'BO', '+591', NULL, NULL),
(28, 'Bosnia and Herzegovi', 'BA', '+387', NULL, NULL),
(29, 'Botswana', 'BW', '+267', NULL, NULL),
(30, 'Brazil', 'BR', '+55', NULL, NULL),
(31, 'British Indian Ocean', 'IO', '+246', NULL, NULL),
(32, 'Brunei Darussalam', 'BN', '+673', NULL, NULL),
(33, 'Bulgaria', 'BG', '+359', NULL, NULL),
(34, 'Burkina Faso', 'BF', '+226', NULL, NULL),
(35, 'Burundi', 'BI', '+257', NULL, NULL),
(36, 'Cambodia', 'KH', '+855', NULL, NULL),
(37, 'Cameroon', 'CM', '+237', NULL, NULL),
(38, 'Canada', 'CA', '+1', NULL, NULL),
(39, 'Cape Verde', 'CV', '+238', NULL, NULL),
(40, 'Cayman Islands', 'KY', '+ 345', NULL, NULL),
(41, 'Central African Repu', 'CF', '+236', NULL, NULL),
(42, 'Chad', 'TD', '+235', NULL, NULL),
(43, 'Chile', 'CL', '+56', NULL, NULL),
(44, 'China', 'CN', '+86', NULL, NULL),
(45, 'Christmas Island', 'CX', '+61', NULL, NULL),
(46, 'Cocos (Keeling) Isla', 'CC', '+61', NULL, NULL),
(47, 'Colombia', 'CO', '+57', NULL, NULL),
(48, 'Comoros', 'KM', '+269', NULL, NULL),
(49, 'Congo', 'CG', '+242', NULL, NULL),
(50, 'Congo, The Democrati', 'CD', '+243', NULL, NULL),
(51, 'Cook Islands', 'CK', '+682', NULL, NULL),
(52, 'Costa Rica', 'CR', '+506', NULL, NULL),
(53, 'Cote d\'Ivoire', 'CI', '+225', NULL, NULL),
(54, 'Croatia', 'HR', '+385', NULL, NULL),
(55, 'Cuba', 'CU', '+53', NULL, NULL),
(56, 'Cyprus', 'CY', '+357', NULL, NULL),
(57, 'Czech Republic', 'CZ', '+420', NULL, NULL),
(58, 'Denmark', 'DK', '+45', NULL, NULL),
(59, 'Djibouti', 'DJ', '+253', NULL, NULL),
(60, 'Dominica', 'DM', '+1767', NULL, NULL),
(61, 'Dominican Republic', 'DO', '+1849', NULL, NULL),
(62, 'Ecuador', 'EC', '+593', NULL, NULL),
(63, 'Egypt', 'EG', '+20', NULL, NULL),
(64, 'El Salvador', 'SV', '+503', NULL, NULL),
(65, 'Equatorial Guinea', 'GQ', '+240', NULL, NULL),
(66, 'Eritrea', 'ER', '+291', NULL, NULL),
(67, 'Estonia', 'EE', '+372', NULL, NULL),
(68, 'Ethiopia', 'ET', '+251', NULL, NULL),
(69, 'Falkland Islands (Ma', 'FK', '+500', NULL, NULL),
(70, 'Faroe Islands', 'FO', '+298', NULL, NULL),
(71, 'Fiji', 'FJ', '+679', NULL, NULL),
(72, 'Finland', 'FI', '+358', NULL, NULL),
(73, 'France', 'FR', '+33', NULL, NULL),
(74, 'French Guiana', 'GF', '+594', NULL, NULL),
(75, 'French Polynesia', 'PF', '+689', NULL, NULL),
(76, 'Gabon', 'GA', '+241', NULL, NULL),
(77, 'Gambia', 'GM', '+220', NULL, NULL),
(78, 'Georgia', 'GE', '+995', NULL, NULL),
(79, 'Germany', 'DE', '+49', NULL, NULL),
(80, 'Ghana', 'GH', '+233', NULL, NULL),
(81, 'Gibraltar', 'GI', '+350', NULL, NULL),
(82, 'Greece', 'GR', '+30', NULL, NULL),
(83, 'Greenland', 'GL', '+299', NULL, NULL),
(84, 'Grenada', 'GD', '+1473', NULL, NULL),
(85, 'Guadeloupe', 'GP', '+590', NULL, NULL),
(86, 'Guam', 'GU', '+1671', NULL, NULL),
(87, 'Guatemala', 'GT', '+502', NULL, NULL),
(88, 'Guernsey', 'GG', '+44', NULL, NULL),
(89, 'Guinea', 'GN', '+224', NULL, NULL),
(90, 'Guinea-Bissau', 'GW', '+245', NULL, NULL),
(91, 'Guyana', 'GY', '+595', NULL, NULL),
(92, 'Haiti', 'HT', '+509', NULL, NULL),
(93, 'Holy See (Vatican Ci', 'VA', '+379', NULL, NULL),
(94, 'Honduras', 'HN', '+504', NULL, NULL),
(95, 'Hong Kong', 'HK', '+852', NULL, NULL),
(96, 'Hungary', 'HU', '+36', NULL, NULL),
(97, 'Iceland', 'IS', '+354', NULL, NULL),
(98, 'India', 'IN', '+91', NULL, NULL),
(99, 'Indonesia', 'ID', '+62', NULL, NULL),
(100, 'Iran, Islamic Republ', 'IR', '+98', NULL, NULL),
(101, 'Iraq', 'IQ', '+964', NULL, NULL),
(102, 'Ireland', 'IE', '+353', NULL, NULL),
(103, 'Isle of Man', 'IM', '+44', NULL, NULL),
(104, 'Israel', 'IL', '+972', NULL, NULL),
(105, 'Italy', 'IT', '+39', NULL, NULL),
(106, 'Jamaica', 'JM', '+1876', NULL, NULL),
(107, 'Japan', 'JP', '+81', NULL, NULL),
(108, 'Jersey', 'JE', '+44', NULL, NULL),
(109, 'Jordan', 'JO', '+962', NULL, NULL),
(110, 'Kazakhstan', 'KZ', '+7 7', NULL, NULL),
(111, 'Kenya', 'KE', '+254', NULL, NULL),
(112, 'Kiribati', 'KI', '+686', NULL, NULL),
(113, 'Korea, Democratic Pe', 'KP', '+850', NULL, NULL),
(114, 'Korea, Republic of S', 'KR', '+82', NULL, NULL),
(115, 'Kuwait', 'KW', '+965', NULL, NULL),
(116, 'Kyrgyzstan', 'KG', '+996', NULL, NULL),
(117, 'Laos', 'LA', '+856', NULL, NULL),
(118, 'Latvia', 'LV', '+371', NULL, NULL),
(119, 'Lebanon', 'LB', '+961', NULL, NULL),
(120, 'Lesotho', 'LS', '+266', NULL, NULL),
(121, 'Liberia', 'LR', '+231', NULL, NULL),
(122, 'Libyan Arab Jamahiri', 'LY', '+218', NULL, NULL),
(123, 'Liechtenstein', 'LI', '+423', NULL, NULL),
(124, 'Lithuania', 'LT', '+370', NULL, NULL),
(125, 'Luxembourg', 'LU', '+352', NULL, NULL),
(126, 'Macao', 'MO', '+853', NULL, NULL),
(127, 'Macedonia', 'MK', '+389', NULL, NULL),
(128, 'Madagascar', 'MG', '+261', NULL, NULL),
(129, 'Malawi', 'MW', '+265', NULL, NULL),
(130, 'Malaysia', 'MY', '+60', NULL, NULL),
(131, 'Maldives', 'MV', '+960', NULL, NULL),
(132, 'Mali', 'ML', '+223', NULL, NULL),
(133, 'Malta', 'MT', '+356', NULL, NULL),
(134, 'Marshall Islands', 'MH', '+692', NULL, NULL),
(135, 'Martinique', 'MQ', '+596', NULL, NULL),
(136, 'Mauritania', 'MR', '+222', NULL, NULL),
(137, 'Mauritius', 'MU', '+230', NULL, NULL),
(138, 'Mayotte', 'YT', '+262', NULL, NULL),
(139, 'Mexico', 'MX', '+52', NULL, NULL),
(140, 'Micronesia, Federate', 'FM', '+691', NULL, NULL),
(141, 'Moldova', 'MD', '+373', NULL, NULL),
(142, 'Monaco', 'MC', '+377', NULL, NULL),
(143, 'Mongolia', 'MN', '+976', NULL, NULL),
(144, 'Montenegro', 'ME', '+382', NULL, NULL),
(145, 'Montserrat', 'MS', '+1664', NULL, NULL),
(146, 'Morocco', 'MA', '+212', NULL, NULL),
(147, 'Mozambique', 'MZ', '+258', NULL, NULL),
(148, 'Myanmar', 'MM', '+95', NULL, NULL),
(149, 'Namibia', 'NA', '+264', NULL, NULL),
(150, 'Nauru', 'NR', '+674', NULL, NULL),
(151, 'Nepal', 'NP', '+977', NULL, NULL),
(152, 'Netherlands', 'NL', '+31', NULL, NULL),
(153, 'Netherlands Antilles', 'AN', '+599', NULL, NULL),
(154, 'New Caledonia', 'NC', '+687', NULL, NULL),
(155, 'New Zealand', 'NZ', '+64', NULL, NULL),
(156, 'Nicaragua', 'NI', '+505', NULL, NULL),
(157, 'Niger', 'NE', '+227', NULL, NULL),
(158, 'Nigeria', 'NG', '+234', NULL, NULL),
(159, 'Niue', 'NU', '+683', NULL, NULL),
(160, 'Norfolk Island', 'NF', '+672', NULL, NULL),
(161, 'Northern Mariana Isl', 'MP', '+1670', NULL, NULL),
(162, 'Norway', 'NO', '+47', NULL, NULL),
(163, 'Oman', 'OM', '+968', NULL, NULL),
(164, 'Pakistan', 'PK', '+92', NULL, NULL),
(165, 'Palau', 'PW', '+680', NULL, NULL),
(166, 'Palestinian Territor', 'PS', '+970', NULL, NULL),
(167, 'Panama', 'PA', '+507', NULL, NULL),
(168, 'Papua New Guinea', 'PG', '+675', NULL, NULL),
(169, 'Paraguay', 'PY', '+595', NULL, NULL),
(170, 'Peru', 'PE', '+51', NULL, NULL),
(171, 'Philippines', 'PH', '+63', NULL, NULL),
(172, 'Pitcairn', 'PN', '+872', NULL, NULL),
(173, 'Poland', 'PL', '+48', NULL, NULL),
(174, 'Portugal', 'PT', '+351', NULL, NULL),
(175, 'Puerto Rico', 'PR', '+1939', NULL, NULL),
(176, 'Qatar', 'QA', '+974', NULL, NULL),
(177, 'Romania', 'RO', '+40', NULL, NULL),
(178, 'Russia', 'RU', '+7', NULL, NULL),
(179, 'Rwanda', 'RW', '+250', NULL, NULL),
(180, 'Reunion', 'RE', '+262', NULL, NULL),
(181, 'Saint Barthelemy', 'BL', '+590', NULL, NULL),
(182, 'Saint Helena, Ascens', 'SH', '+290', NULL, NULL),
(183, 'Saint Kitts and Nevi', 'KN', '+1869', NULL, NULL),
(184, 'Saint Lucia', 'LC', '+1758', NULL, NULL),
(185, 'Saint Martin', 'MF', '+590', NULL, NULL),
(186, 'Saint Pierre and Miq', 'PM', '+508', NULL, NULL),
(187, 'Saint Vincent and th', 'VC', '+1784', NULL, NULL),
(188, 'Samoa', 'WS', '+685', NULL, NULL),
(189, 'San Marino', 'SM', '+378', NULL, NULL),
(190, 'Sao Tome and Princip', 'ST', '+239', NULL, NULL),
(191, 'Saudi Arabia', 'SA', '+966', NULL, NULL),
(192, 'Senegal', 'SN', '+221', NULL, NULL),
(193, 'Serbia', 'RS', '+381', NULL, NULL),
(194, 'Seychelles', 'SC', '+248', NULL, NULL),
(195, 'Sierra Leone', 'SL', '+232', NULL, NULL),
(196, 'Singapore', 'SG', '+65', NULL, NULL),
(197, 'Slovakia', 'SK', '+421', NULL, NULL),
(198, 'Slovenia', 'SI', '+386', NULL, NULL),
(199, 'Solomon Islands', 'SB', '+677', NULL, NULL),
(200, 'Somalia', 'SO', '+252', NULL, NULL),
(201, 'South Africa', 'ZA', '+27', NULL, NULL),
(202, 'South Georgia and th', 'GS', '+500', NULL, NULL),
(203, 'Spain', 'ES', '+34', NULL, NULL),
(204, 'Sri Lanka', 'LK', '+94', NULL, NULL),
(205, 'Sudan', 'SD', '+249', NULL, NULL),
(206, 'Suriname', 'SR', '+597', NULL, NULL),
(207, 'Svalbard and Jan May', 'SJ', '+47', NULL, NULL),
(208, 'Swaziland', 'SZ', '+268', NULL, NULL),
(209, 'Sweden', 'SE', '+46', NULL, NULL),
(210, 'Switzerland', 'CH', '+41', NULL, NULL),
(211, 'Syrian Arab Republic', 'SY', '+963', NULL, NULL),
(212, 'Taiwan', 'TW', '+886', NULL, NULL),
(213, 'Tajikistan', 'TJ', '+992', NULL, NULL),
(214, 'Tanzania, United Rep', 'TZ', '+255', NULL, NULL),
(215, 'Thailand', 'TH', '+66', NULL, NULL),
(216, 'Timor-Leste', 'TL', '+670', NULL, NULL),
(217, 'Togo', 'TG', '+228', NULL, NULL),
(218, 'Tokelau', 'TK', '+690', NULL, NULL),
(219, 'Tonga', 'TO', '+676', NULL, NULL),
(220, 'Trinidad and Tobago', 'TT', '+1868', NULL, NULL),
(221, 'Tunisia', 'TN', '+216', NULL, NULL),
(222, 'Turkey', 'TR', '+90', NULL, NULL),
(223, 'Turkmenistan', 'TM', '+993', NULL, NULL),
(224, 'Turks and Caicos Isl', 'TC', '+1649', NULL, NULL),
(225, 'Tuvalu', 'TV', '+688', NULL, NULL),
(226, 'Uganda', 'UG', '+256', NULL, NULL),
(227, 'Ukraine', 'UA', '+380', NULL, NULL),
(228, 'United Arab Emirates', 'AE', '+971', NULL, NULL),
(229, 'United Kingdom', 'GB', '+44', NULL, NULL),
(230, 'United States', 'US', '+1', NULL, NULL),
(231, 'Uruguay', 'UY', '+598', NULL, NULL),
(232, 'Uzbekistan', 'UZ', '+998', NULL, NULL),
(233, 'Vanuatu', 'VU', '+678', NULL, NULL),
(234, 'Venezuela, Bolivaria', 'VE', '+58', NULL, NULL),
(235, 'Vietnam', 'VN', '+84', NULL, NULL),
(236, 'Virgin Islands, Brit', 'VG', '+1284', NULL, NULL),
(237, 'Virgin Islands, U.S.', 'VI', '+1340', NULL, NULL),
(238, 'Wallis and Futuna', 'WF', '+681', NULL, NULL),
(239, 'Yemen', 'YE', '+967', NULL, NULL),
(240, 'Zambia', 'ZM', '+260', NULL, NULL),
(241, 'Zimbabwe', 'ZW', '+263', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coupons`
--

CREATE TABLE `coupons` (
  `id` int(255) NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `expiry` varchar(255) DEFAULT NULL,
  `status` int(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `is_paid` int(11) DEFAULT NULL,
  `is_best` int(11) NOT NULL DEFAULT 0,
  `price` double DEFAULT NULL,
  `discounted_price` double DEFAULT NULL,
  `discount_flag` int(11) DEFAULT NULL,
  `enable_drip_content` int(11) DEFAULT NULL,
  `drip_content_settings` longtext DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `preview` varchar(255) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `requirements` mediumtext DEFAULT NULL,
  `outcomes` mediumtext DEFAULT NULL,
  `faqs` mediumtext DEFAULT NULL,
  `instructor_ids` text DEFAULT NULL,
  `average_rating` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `expiry_period` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `paypal_supported` int(11) DEFAULT NULL,
  `stripe_supported` int(11) DEFAULT NULL,
  `ccavenue_supported` int(11) DEFAULT 0,
  `iyzico_supported` int(11) DEFAULT 0,
  `paystack_supported` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES
(1, 'US Dollar', 'USD', '$', 1, 1, 0, 0, 0),
(2, 'Albanian Lek', 'ALL', 'Lek', 0, 1, 0, 0, 0),
(3, 'Algerian Dinar', 'DZD', 'دج', 1, 1, 0, 0, 0),
(4, 'Angolan Kwanza', 'AOA', 'Kz', 1, 1, 0, 0, 0),
(5, 'Argentine Peso', 'ARS', '$', 1, 1, 0, 0, 0),
(6, 'Armenian Dram', 'AMD', '֏', 1, 1, 0, 0, 0),
(7, 'Aruban Florin', 'AWG', 'ƒ', 1, 1, 0, 0, 0),
(8, 'Australian Dollar', 'AUD', '$', 1, 1, 0, 0, 0),
(9, 'Azerbaijani Manat', 'AZN', 'm', 1, 1, 0, 0, 0),
(10, 'Bahamian Dollar', 'BSD', 'B$', 1, 1, 0, 0, 0),
(11, 'Bahraini Dinar', 'BHD', '.د.ب', 1, 1, 0, 0, 0),
(12, 'Bangladeshi Taka', 'BDT', '৳', 1, 1, 0, 0, 0),
(13, 'Barbadian Dollar', 'BBD', 'Bds$', 1, 1, 0, 0, 0),
(14, 'Belarusian Ruble', 'BYR', 'Br', 0, 0, 0, 0, 0),
(15, 'Belgian Franc', 'BEF', 'fr', 1, 1, 0, 0, 0),
(16, 'Belize Dollar', 'BZD', '$', 1, 1, 0, 0, 0),
(17, 'Bermudan Dollar', 'BMD', '$', 1, 1, 0, 0, 0),
(18, 'Bhutanese Ngultrum', 'BTN', 'Nu.', 1, 1, 0, 0, 0),
(19, 'Bitcoin', 'BTC', '฿', 1, 1, 0, 0, 0),
(20, 'Bolivian Boliviano', 'BOB', 'Bs.', 1, 1, 0, 0, 0),
(21, 'Bosnia', 'BAM', 'KM', 1, 1, 0, 0, 0),
(22, 'Botswanan Pula', 'BWP', 'P', 1, 1, 0, 0, 0),
(23, 'Brazilian Real', 'BRL', 'R$', 1, 1, 0, 0, 0),
(24, 'British Pound Sterling', 'GBP', '£', 1, 1, 0, 0, 0),
(25, 'Brunei Dollar', 'BND', 'B$', 1, 1, 0, 0, 0),
(26, 'Bulgarian Lev', 'BGN', 'Лв.', 1, 1, 0, 0, 0),
(27, 'Burundian Franc', 'BIF', 'FBu', 1, 1, 0, 0, 0),
(28, 'Cambodian Riel', 'KHR', 'KHR', 1, 1, 0, 0, 0),
(29, 'Canadian Dollar', 'CAD', '$', 1, 1, 0, 0, 0),
(30, 'Cape Verdean Escudo', 'CVE', '$', 1, 1, 0, 0, 0),
(31, 'Cayman Islands Dollar', 'KYD', '$', 1, 1, 0, 0, 0),
(32, 'CFA Franc BCEAO', 'XOF', 'CFA', 1, 1, 0, 0, 0),
(33, 'CFA Franc BEAC', 'XAF', 'FCFA', 1, 1, 0, 0, 0),
(34, 'CFP Franc', 'XPF', '₣', 1, 1, 0, 0, 0),
(35, 'Chilean Peso', 'CLP', '$', 1, 1, 0, 0, 0),
(36, 'Chinese Yuan', 'CNY', '¥', 1, 1, 0, 0, 0),
(37, 'Colombian Peso', 'COP', '$', 1, 1, 0, 0, 0),
(38, 'Comorian Franc', 'KMF', 'CF', 1, 1, 0, 0, 0),
(39, 'Congolese Franc', 'CDF', 'FC', 1, 1, 0, 0, 0),
(40, 'Costa Rican ColÃ³n', 'CRC', '₡', 1, 1, 0, 0, 0),
(41, 'Croatian Kuna', 'HRK', 'kn', 1, 1, 0, 0, 0),
(42, 'Cuban Convertible Peso', 'CUC', '$, CUC', 1, 1, 0, 0, 0),
(43, 'Czech Republic Koruna', 'CZK', 'Kč', 1, 1, 0, 0, 0),
(44, 'Danish Krone', 'DKK', 'Kr.', 1, 1, 0, 0, 0),
(45, 'Djiboutian Franc', 'DJF', 'Fdj', 1, 1, 0, 0, 0),
(46, 'Dominican Peso', 'DOP', '$', 1, 1, 0, 0, 0),
(47, 'East Caribbean Dollar', 'XCD', '$', 1, 1, 0, 0, 0),
(48, 'Egyptian Pound', 'EGP', 'ج.م', 1, 1, 0, 0, 0),
(49, 'Eritrean Nakfa', 'ERN', 'Nfk', 1, 1, 0, 0, 0),
(50, 'Estonian Kroon', 'EEK', 'kr', 1, 1, 0, 0, 0),
(51, 'Ethiopian Birr', 'ETB', 'Nkf', 1, 1, 0, 0, 0),
(52, 'Euro', 'EUR', '€', 1, 1, 0, 0, 0),
(53, 'Falkland Islands Pound', 'FKP', '£', 1, 1, 0, 0, 0),
(54, 'Fijian Dollar', 'FJD', 'FJ$', 1, 1, 0, 0, 0),
(55, 'Gambian Dalasi', 'GMD', 'D', 1, 1, 0, 0, 0),
(56, 'Georgian Lari', 'GEL', 'ლ', 1, 1, 0, 0, 0),
(57, 'German Mark', 'DEM', 'DM', 1, 1, 0, 0, 0),
(58, 'Ghanaian Cedi', 'GHS', 'GH₵', 1, 1, 0, 0, 0),
(59, 'Gibraltar Pound', 'GIP', '£', 1, 1, 0, 0, 0),
(60, 'Greek Drachma', 'GRD', '₯, Δρχ, Δρ', 1, 1, 0, 0, 0),
(61, 'Guatemalan Quetzal', 'GTQ', 'Q', 1, 1, 0, 0, 0),
(62, 'Guinean Franc', 'GNF', 'FG', 1, 1, 0, 0, 0),
(63, 'Guyanaese Dollar', 'GYD', '$', 1, 1, 0, 0, 0),
(64, 'Haitian Gourde', 'HTG', 'G', 1, 1, 0, 0, 0),
(65, 'Honduran Lempira', 'HNL', 'L', 1, 1, 0, 0, 0),
(66, 'Hong Kong Dollar', 'HKD', '$', 1, 1, 0, 0, 0),
(67, 'Hungarian Forint', 'HUF', 'Ft', 1, 1, 0, 0, 0),
(68, 'Icelandic KrÃ³na', 'ISK', 'kr', 1, 1, 0, 0, 0),
(69, 'Indian Rupee', 'INR', '₹', 1, 1, 1, 0, 0),
(70, 'Indonesian Rupiah', 'IDR', 'Rp', 1, 1, 0, 0, 0),
(71, 'Iranian Rial', 'IRR', '﷼', 1, 1, 0, 0, 0),
(72, 'Iraqi Dinar', 'IQD', 'د.ع', 1, 1, 0, 0, 0),
(73, 'Israeli New Sheqel', 'ILS', '₪', 1, 1, 0, 0, 0),
(74, 'Italian Lira', 'ITL', 'L,£', 1, 1, 0, 0, 0),
(75, 'Jamaican Dollar', 'JMD', 'J$', 1, 1, 0, 0, 0),
(76, 'Japanese Yen', 'JPY', '¥', 1, 1, 0, 0, 0),
(77, 'Jordanian Dinar', 'JOD', 'ا.د', 1, 1, 0, 0, 0),
(78, 'Kazakhstani Tenge', 'KZT', 'лв', 1, 1, 0, 0, 0),
(79, 'Kenyan Shilling', 'KES', 'KSh', 1, 1, 0, 0, 0),
(80, 'Kuwaiti Dinar', 'KWD', 'ك.د', 1, 1, 0, 0, 0),
(81, 'Kyrgystani Som', 'KGS', 'лв', 1, 1, 0, 0, 0),
(82, 'Laotian Kip', 'LAK', '₭', 1, 1, 0, 0, 0),
(83, 'Latvian Lats', 'LVL', 'Ls', 0, 0, 0, 0, 0),
(84, 'Lebanese Pound', 'LBP', '£', 1, 1, 0, 0, 0),
(85, 'Lesotho Loti', 'LSL', 'L', 1, 1, 0, 0, 0),
(86, 'Liberian Dollar', 'LRD', '$', 1, 1, 0, 0, 0),
(87, 'Libyan Dinar', 'LYD', 'د.ل', 1, 1, 0, 0, 0),
(88, 'Lithuanian Litas', 'LTL', 'Lt', 0, 0, 0, 0, 0),
(89, 'Macanese Pataca', 'MOP', '$', 1, 1, 0, 0, 0),
(90, 'Macedonian Denar', 'MKD', 'ден', 1, 1, 0, 0, 0),
(91, 'Malagasy Ariary', 'MGA', 'Ar', 1, 1, 0, 0, 0),
(92, 'Malawian Kwacha', 'MWK', 'MK', 1, 1, 0, 0, 0),
(93, 'Malaysian Ringgit', 'MYR', 'RM', 1, 1, 0, 0, 0),
(94, 'Maldivian Rufiyaa', 'MVR', 'Rf', 1, 1, 0, 0, 0),
(95, 'Mauritanian Ouguiya', 'MRO', 'MRU', 1, 1, 0, 0, 0),
(96, 'Mauritian Rupee', 'MUR', '₨', 1, 1, 0, 0, 0),
(97, 'Mexican Peso', 'MXN', '$', 1, 1, 0, 0, 0),
(98, 'Moldovan Leu', 'MDL', 'L', 1, 1, 0, 0, 0),
(99, 'Mongolian Tugrik', 'MNT', '₮', 1, 1, 0, 0, 0),
(100, 'Moroccan Dirham', 'MAD', 'MAD', 1, 1, 0, 0, 0),
(101, 'Mozambican Metical', 'MZM', 'MT', 1, 1, 0, 0, 0),
(102, 'Myanmar Kyat', 'MMK', 'K', 1, 1, 0, 0, 0),
(103, 'Namibian Dollar', 'NAD', '$', 1, 1, 0, 0, 0),
(104, 'Nepalese Rupee', 'NPR', '₨', 1, 1, 0, 0, 0),
(105, 'Netherlands Antillean Guilder', 'ANG', 'ƒ', 1, 1, 0, 0, 0),
(106, 'New Taiwan Dollar', 'TWD', '$', 1, 1, 0, 0, 0),
(107, 'New Zealand Dollar', 'NZD', '$', 1, 1, 0, 0, 0),
(108, 'Nicaraguan CÃ³rdoba', 'NIO', 'C$', 1, 1, 0, 0, 0),
(109, 'Nigerian Naira', 'NGN', '₦', 1, 1, 0, 0, 1),
(110, 'North Korean Won', 'KPW', '₩', 0, 0, 0, 0, 0),
(111, 'Norwegian Krone', 'NOK', 'kr', 1, 1, 0, 0, 0),
(112, 'Omani Rial', 'OMR', '.ع.ر', 0, 0, 0, 0, 0),
(113, 'Pakistani Rupee', 'PKR', '₨', 1, 1, 0, 0, 0),
(114, 'Panamanian Balboa', 'PAB', 'B/.', 1, 1, 0, 0, 0),
(115, 'Papua New Guinean Kina', 'PGK', 'K', 1, 1, 0, 0, 0),
(116, 'Paraguayan Guarani', 'PYG', '₲', 1, 1, 0, 0, 0),
(117, 'Peruvian Nuevo Sol', 'PEN', 'S/.', 1, 1, 0, 0, 0),
(118, 'Philippine Peso', 'PHP', '₱', 1, 1, 0, 0, 0),
(119, 'Polish Zloty', 'PLN', 'zł', 1, 1, 0, 0, 0),
(120, 'Qatari Rial', 'QAR', 'ق.ر', 1, 1, 0, 0, 0),
(121, 'Romanian Leu', 'RON', 'lei', 1, 1, 0, 0, 0),
(122, 'Russian Ruble', 'RUB', '₽', 1, 1, 0, 0, 0),
(123, 'Rwandan Franc', 'RWF', 'FRw', 1, 1, 0, 0, 0),
(124, 'Salvadoran ColÃ³n', 'SVC', '₡', 0, 0, 0, 0, 0),
(125, 'Samoan Tala', 'WST', 'SAT', 1, 1, 0, 0, 0),
(126, 'Saudi Riyal', 'SAR', '﷼', 1, 1, 0, 0, 0),
(127, 'Serbian Dinar', 'RSD', 'din', 1, 1, 0, 0, 0),
(128, 'Seychellois Rupee', 'SCR', 'SRe', 1, 1, 0, 0, 0),
(129, 'Sierra Leonean Leone', 'SLL', 'Le', 1, 1, 0, 0, 0),
(130, 'Singapore Dollar', 'SGD', '$', 1, 1, 0, 0, 0),
(131, 'Slovak Koruna', 'SKK', 'Sk', 1, 1, 0, 0, 0),
(132, 'Solomon Islands Dollar', 'SBD', 'Si$', 1, 1, 0, 0, 0),
(133, 'Somali Shilling', 'SOS', 'Sh.so.', 1, 1, 0, 0, 0),
(134, 'South African Rand', 'ZAR', 'R', 1, 1, 0, 0, 0),
(135, 'South Korean Won', 'KRW', '₩', 1, 1, 0, 0, 0),
(136, 'Special Drawing Rights', 'XDR', 'SDR', 1, 1, 0, 0, 0),
(137, 'Sri Lankan Rupee', 'LKR', 'Rs', 1, 1, 0, 0, 0),
(138, 'St. Helena Pound', 'SHP', '£', 1, 1, 0, 0, 0),
(139, 'Sudanese Pound', 'SDG', '.س.ج', 1, 1, 0, 0, 0),
(140, 'Surinamese Dollar', 'SRD', '$', 1, 1, 0, 0, 0),
(141, 'Swazi Lilangeni', 'SZL', 'E', 1, 1, 0, 0, 0),
(142, 'Swedish Krona', 'SEK', 'kr', 1, 1, 0, 0, 0),
(143, 'Swiss Franc', 'CHF', 'CHf', 1, 1, 0, 0, 0),
(144, 'Syrian Pound', 'SYP', 'LS', 0, 0, 0, 0, 0),
(145, 'São Tomé and Príncipe Dobra', 'STD', 'Db', 1, 1, 0, 0, 0),
(146, 'Tajikistani Somoni', 'TJS', 'SM', 1, 1, 0, 0, 0),
(147, 'Tanzanian Shilling', 'TZS', 'TSh', 1, 1, 0, 0, 0),
(148, 'Thai Baht', 'THB', '฿', 1, 1, 0, 0, 0),
(149, 'Tongan pa\'anga', 'TOP', '$', 1, 1, 0, 0, 0),
(150, 'Trinidad & Tobago Dollar', 'TTD', '$', 1, 1, 0, 0, 0),
(151, 'Tunisian Dinar', 'TND', 'ت.د', 1, 1, 0, 0, 0),
(152, 'Turkish Lira', 'TRY', '₺', 1, 1, 0, 1, 0),
(153, 'Turkmenistani Manat', 'TMT', 'T', 1, 1, 0, 0, 0),
(154, 'Ugandan Shilling', 'UGX', 'USh', 1, 1, 0, 0, 0),
(155, 'Ukrainian Hryvnia', 'UAH', '₴', 1, 1, 0, 0, 0),
(156, 'United Arab Emirates Dirham', 'AED', 'إ.د', 1, 1, 0, 0, 0),
(157, 'Uruguayan Peso', 'UYU', '$', 1, 1, 0, 0, 0),
(158, 'Afghan Afghani', 'AFA', '؋', 1, 1, 0, 0, 0),
(159, 'Uzbekistan Som', 'UZS', 'лв', 1, 1, 0, 0, 0),
(160, 'Vanuatu Vatu', 'VUV', 'VT', 1, 1, 0, 0, 0),
(161, 'Venezuelan BolÃvar', 'VEF', 'Bs', 0, 0, 0, 0, 0),
(162, 'Vietnamese Dong', 'VND', '₫', 1, 1, 0, 0, 0),
(163, 'Yemeni Rial', 'YER', '﷼', 1, 1, 0, 0, 0),
(164, 'Zambian Kwacha', 'ZMK', 'ZK', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `device_ips`
--

CREATE TABLE `device_ips` (
  `id` int(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `session_id` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enrollments`
--

CREATE TABLE `enrollments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `enrollment_type` varchar(255) DEFAULT NULL,
  `entry_date` int(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `expiry_date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Estructura de tabla para la tabla `forums`
--

CREATE TABLE `forums` (
  `id` int(255) NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `course_id` int(255) DEFAULT NULL,
  `parent_id` int(255) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `likes` longtext DEFAULT NULL,
  `dislikes` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `frontend_settings`
--

CREATE TABLE `frontend_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `frontend_settings`
--

INSERT INTO `frontend_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'banner_title', 'Empieza a aprender de los instructores profesionales del mundo.', '2023-10-31 11:08:12', '2025-08-21 10:31:35'),
(2, 'banner_sub_title', 'Es un hecho comprobado que el lector se distrae con el contenido legible de una página al observar su diseño.', '2023-10-31 11:08:12', '2025-08-21 10:31:35'),
(4, 'about_us', '<div>Limitless learning at your fingertips</div><div><br></div><div>Limitless learning at your fingertipsAdvertising a busines online includes assembling the they awesome site. Having the most well-planned on to the our SEO services keep you on the top a business Having the moston to the online.</div><div><br></div><div><br></div><div><br></div><div>Advertising a busines online includes assembling the they awesome site.</div><div><br></div><div><br></div><div>Range including technical skills</div><div>Range including technical skills</div><div>Range including technical skills</div><div><br></div>', '2023-10-31 11:08:12', '2025-08-21 10:31:35'),
(10, 'terms_and_condition', '<h2>Terms and Condition</h2>', '2023-10-31 11:08:12', '2025-08-21 10:31:35'),
(11, 'privacy_policy', '<p></p><p></p><h2><span xss=\"removed\">Privacy Policy</span></h2>', '2023-10-31 11:08:12', '2025-08-21 10:31:35'),
(13, 'theme', 'default', '2023-10-31 11:08:12', '2023-10-31 11:08:12'),
(14, 'cookie_note', 'This website uses cookies to personalize content and analyse traffic in order to offer you a better experience.', '2023-10-31 11:08:12', '2025-08-21 10:31:35'),
(15, 'cookie_status', '0', '2023-10-31 11:08:12', '2025-08-21 10:31:35'),
(16, 'cookie_policy', '<h2 class=\"\">Cookie policy</h2><ol><li>Cookies are small text files that can be used by websites to make a user\'s experience more efficient.</li><li>The law states that we can store cookies on your device if they are strictly necessary for the operation of this site. For all other types of cookies we need your permission.</li><li>This site uses different types of cookies. Some cookies are placed by third party services that appear on our pages.</li></ol>', '2023-10-31 11:08:12', '2025-08-21 10:31:35'),
(17, 'banner_image', 'uploads/banner_image/banner-image.png', '2023-10-31 11:08:12', '2024-05-29 23:12:03'),
(18, 'light_logo', 'uploads/light_logo/light-logo-default.png', '2023-10-31 11:08:12', '2024-05-29 06:23:34'),
(19, 'dark_logo', 'uploads/dark_logo/dark-logo-default.png', '2023-10-31 11:08:12', '2024-05-29 06:23:58'),
(20, 'small_logo', 'uploads/small_logo/small-logo-1712661659.jpg', '2023-10-31 11:08:12', '2024-04-09 05:20:59'),
(21, 'favicon', 'uploads/favicon/favicon-default.png', '2023-10-31 11:08:12', '2024-05-29 06:24:18'),
(22, 'recaptcha_status', '0', '2023-10-31 11:08:12', '2023-11-01 23:27:24'),
(23, 'recaptcha_secretkey', 'Valid-secret-key', '2023-10-31 11:08:12', '2023-11-01 23:27:24'),
(24, 'recaptcha_sitekey', 'Valid-site-key', '2023-10-31 11:08:12', '2023-11-01 23:27:24'),
(25, 'refund_policy', '<h2><span xss=\"removed\">Refund Policy</span></h2>', '2023-10-31 11:08:12', '2025-08-21 10:31:35'),
(26, 'facebook', 'https://facebook.com', '2023-10-31 11:08:12', '2025-08-21 10:31:35'),
(27, 'twitter', 'https://twitter.com', '2023-10-31 11:08:12', '2025-08-21 10:31:35'),
(28, 'linkedin', 'https://linkedin.com', '2023-10-31 11:08:12', '2025-08-21 10:31:35'),
(31, 'blog_page_title', 'Where possibilities begin', '2023-10-31 11:08:12', '2023-10-31 11:08:12'),
(32, 'blog_page_subtitle', 'We’re a leading marketplace platform for learning and teaching online. Explore some of our most popular content and learn something new.', '2023-10-31 11:08:12', '2023-10-31 11:08:12'),
(33, 'blog_page_banner', 'blog-page.png', '2023-10-31 11:08:12', '2023-10-31 11:08:12'),
(34, 'instructors_blog_permission', '1', '2023-10-31 11:08:12', '2023-12-07 00:28:58'),
(35, 'blog_visibility_on_the_home_page', '1', '2023-10-31 11:08:12', '2023-12-07 00:28:58'),
(37, 'website_faqs', '[{\"question\":\"How to create an account?\",\"answer\":\"Interactively procrastinate high-payoff content without backward-compatible data. Quickly to cultivate optimal processes and tactical architectures. For The Completely iterate covalent strategic.\"},{\"question\":\"Do you provide any support for this kit?\",\"answer\":\"Interactively procrastinate high-payoff content without backward-compatible data. Quickly to cultivate optimal processes and tactical architectures. For The Completely iterate covalent strategic.\"},{\"question\":\"How to create an account?\",\"answer\":\"Interactively procrastinate high-payoff content without backward-compatible data. Quickly to cultivate optimal processes and tactical architectures. For The Completely iterate covalent strategic.\"},{\"question\":\"How long do you provide support?\",\"answer\":\"Interactively procrastinate high-payoff content without backward-compatible data. Quickly to cultivate optimal processes and tactical architectures. For The Completely iterate covalent strategic.\"}]', '2023-10-31 11:08:12', '2024-09-11 04:57:12'),
(38, 'motivational_speech', '[{\"title\":\"Jenny Murtagh\",\"designation\":\"Graphic Design\",\"description\":\"Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even for slightly believable randomised words.\",\"image\":\"I6zvV1Mr30YUhLfJgwje.png\"},{\"title\":\"Jenny Murtagh\",\"designation\":\"Graphic Design\",\"description\":\"Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even for slightly believable randomised words.\",\"image\":\"ZLfkhGame7sYQvqKxD0J.png\"},{\"title\":\"Jenny Murtagh\",\"designation\":\"Graphic Design\",\"description\":\"Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even for slightly believable randomised words.\",\"image\":\"xBYkXnfvmPiU3j0CzME1.png\"}]', '2023-10-31 11:08:12', '2024-09-11 04:57:18'),
(39, 'home_page', NULL, '2023-10-31 11:08:12', '2024-10-31 01:03:56'),
(40, 'contact_info', '{\"email\":\"codeingdigital@gmail.com\",\"phone\":\"989895105\",\"address\":\"Moquegua, Peru\",\"office_hours\":\"8\",\"location\":\"40.689880, -74.045203\"}', '2023-10-31 11:08:12', '2025-08-21 10:32:40'),
(41, 'promo_video_provider', 'youtube', '2023-10-31 11:08:12', '2025-08-21 10:31:35'),
(42, 'promo_video_link', 'https://youtu.be/4QCaXTOwigw?si=NsFeBQhWNZC859-l', '2023-10-31 11:08:12', '2025-08-21 10:31:35'),
(43, 'mobile_app_link', 'https://youtu.be/4QCaXTOwigw?si=NsFeBQhWNZC859-l', '2023-10-31 11:08:12', '2025-08-21 10:31:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_page_settings`
--

CREATE TABLE `home_page_settings` (
  `id` int(11) NOT NULL,
  `home_page_id` int(11) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `home_page_settings`
--

INSERT INTO `home_page_settings` (`id`, `home_page_id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 14, 'cooking', '{\"title\":\"Become An Instructor\",\"description\":\"Training programs can bring you a super exciting experience of learning through online! You never face any negative experience while enjoying your classes.\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate ad litora torquent Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate ad litora torquent per conubi himenaeos Awesome site Lorem Ipsum has been the industry\'s standard dummy text ever since the unknown printer took a galley of type and scrambled.\\r\\n\\r\\nConsectetur adipiscing elit. Nunc vulputate ad litora torquent per conubi himenaeos Awesome site Lorem Ipsum has been the industry\'s standard dummy text ever since.\",\"video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=iTlsP6RfCQ8\",\"image\":\"instructor_image.jpg\"}', '2024-05-15 09:43:54', '2024-10-28 05:14:50'),
(3, 15, 'university', '{\"image\":\"default-university.webp\",\"faq_image\":\"default-university2.webp\",\"slider_items\":\"[\\\"https:\\\\\\/\\\\\\/www.youtube.com\\\\\\/watch?v=iTlsP6RfCQ8\\\"]\"}', '2024-05-16 02:31:00', '2024-09-24 06:09:07'),
(4, 17, 'development', '{\"title\":\"Leading the Way in Software Development\",\"description\":\"Far far away, behind the word mountains, far from the away countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.\\r\\nTraining programs can bring you a super exciting experience of learning through online! You never face any negative experience while enjoying your classes. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate ad litora torquent\",\"video_url\":null,\"image\":\"default-dev-banner.webp\"}', '2024-05-18 05:40:13', '2024-05-18 08:08:06'),
(5, 13, 'kindergarden', '{\"title\":\"Creating A Community Of Life Long Learners\",\"description\":\"Training programs can bring you a super exciting experience of learning through online! You never face any negative experience while enjoying your classes.\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate ad litora torquent\\r\\nTraining programs can bring you a super exciting experience of learning through online! You never face any negative experience while enjoying your classes. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate ad litora torquent\",\"video_url\":null,\"image\":\"default-community-banner.webp\"}', '2024-05-18 08:02:45', '2024-05-18 08:07:59'),
(6, 18, 'marketplace', '{\"instructor\":{\"title\":\"Become an instructor\",\"description\":\"Training programs can bring you a super exciting experience of learning through online! You never face any negative experience while enjoying your classes.\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate ad litora torquent Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate ad litora torquent per conubi himenaeos Awesome site Lorem Ipsum has been the industry\'s standard dummy text ever since the unknown printer took a galley of type and scrambled.\\r\\n\\r\\nConsectetur adipiscing elit. Nunc vulputate ad litora torquent per conubi himenaeos Awesome site Lorem Ipsum has been the industry\'s standard dummy text ever sinces.\",\"video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=i-rv4VQiBko\",\"image\":\"default-video-area-banner.webp\"},\"slider\":[{\"banner_title\":\"LEARN FROM TODAY\",\"banner_description\":\"Academy Starter is a community for creative people\"},{\"banner_title\":\"LEARN FROM TODAY\",\"banner_description\":\"Academy Starter is a community for creative people\"},{\"banner_title\":\"LEARN FROM TODAY\",\"banner_description\":\"Academy Starter is a community for creative people\"},{\"banner_title\":\"LEARN FROM TODAY\",\"banner_description\":\"Academy Starter is a community for creative people\"}]}', '2024-05-18 22:55:44', '2024-05-20 01:22:25'),
(7, 19, 'meditation', '{\"big_image\":\"664b020ed2bbb.png\",\"meditation\":[{\"banner_title\":\"Balance Body & Mind\",\"image\":\"664b07fa650dd.yoga-benefit-1.svg\",\"banner_description\":\"It is a long established fact that a reader will be distracted by the readable content.\"},{\"banner_title\":\"Balance Body & Minds\",\"image\":\"664b08157c7ed.yoga-benefit-2.svg\",\"banner_description\":\"It is a long established fact that a reader will be distracted by the readable content.\"},{\"banner_title\":\"Balance Body & Mind\",\"image\":\"664b08157cab8.yoga-benefit-3.svg\",\"banner_description\":\"It is a long established fact that a reader will be distracted by the readable content.\"},{\"banner_title\":\"Balance Body & Mind\",\"image\":\"664b08157d2be.yoga-benefit-4.svg\",\"banner_description\":\"It is a long established fact that a reader will be distracted by the readable content.\"},{\"banner_title\":\"Balance Body & Mind\",\"image\":\"664b08263ba18.yoga-benefit-5.svg\",\"banner_description\":\"It is a long established fact that a reader will be distracted by the readable content.\"},{\"banner_title\":\"Balance Body & Minddf\",\"image\":\"664b08263bcca.yoga-benefit-6.svg\",\"banner_description\":\"It is a long established fact that a reader will be distracted by the readable content.\"}]}', '2024-05-19 23:54:56', '2024-05-20 02:21:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instructor_reviews`
--

CREATE TABLE `instructor_reviews` (
  `id` int(255) NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `instructor_id` int(255) DEFAULT NULL,
  `rating` varchar(244) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `knowledge_bases`
--

CREATE TABLE `knowledge_bases` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `knowledge_base_topicks`
--

CREATE TABLE `knowledge_base_topicks` (
  `id` int(11) NOT NULL,
  `knowledge_base_id` bigint(20) DEFAULT NULL,
  `topic_name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `direction` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `languages`
--

INSERT INTO `languages` (`id`, `name`, `direction`, `created_at`, `updated_at`) VALUES
(3, 'English', 'ltr', '2024-04-08 10:42:26', '2024-04-09 01:12:02'),
(4, 'Spanish', 'ltr', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `language_phrases`
--

CREATE TABLE `language_phrases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED DEFAULT NULL,
  `phrase` text DEFAULT NULL,
  `translated` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `language_phrases`
--

INSERT INTO `language_phrases` (`id`, `language_id`, `phrase`, `translated`, `created_at`, `updated_at`) VALUES
(1, 3, 'Log In', 'Log In', NULL, NULL),
(2, 3, 'Login', 'Login', NULL, NULL),
(3, 3, 'See your growth and get consulting support!', 'See your growth and get consulting support!', NULL, NULL),
(4, 3, 'Email', 'Email', NULL, NULL),
(5, 3, 'Your Email', 'Your Email', NULL, NULL),
(6, 3, 'Password', 'Password', NULL, NULL),
(7, 3, 'Remember Me', 'Remember Me', NULL, NULL),
(8, 3, 'Forget Password?', 'Forget Password?', NULL, NULL),
(9, 3, 'Not have an account yet?', 'Not have an account yet?', NULL, NULL),
(10, 3, 'Create Account', 'Create Account', NULL, NULL),
(11, 3, 'Home', 'Home', NULL, NULL),
(12, 3, 'Courses', 'Courses', NULL, NULL),
(13, 3, 'All Courses', 'All Courses', NULL, NULL),
(14, 3, 'Bootcamp', 'Bootcamp', NULL, NULL),
(15, 3, 'Search...', 'Search...', NULL, NULL),
(16, 3, 'Search courses', 'Search courses', NULL, NULL),
(17, 3, 'Cart', 'Cart', NULL, NULL),
(18, 3, 'Sign Up', 'Sign Up', NULL, NULL),
(19, 3, 'Contact with Us', 'Contact with Us', NULL, NULL),
(20, 3, 'Top Categories', 'Top Categories', NULL, NULL),
(21, 3, 'Useful links', 'Useful links', NULL, NULL),
(22, 3, 'Course', 'Course', NULL, NULL),
(23, 3, 'Blog', 'Blog', NULL, NULL),
(24, 3, 'Company', 'Company', NULL, NULL),
(25, 3, 'Phone : ', 'Phone : ', NULL, NULL),
(26, 3, 'Email : ', 'Email : ', NULL, NULL),
(27, 3, 'Email address', 'Email address', NULL, NULL),
(28, 3, 'Submit', 'Submit', NULL, NULL),
(29, 3, 'About Us', 'About Us', NULL, NULL),
(30, 3, 'Privacy Policy', 'Privacy Policy', NULL, NULL),
(31, 3, 'Terms And Use', 'Terms And Use', NULL, NULL),
(32, 3, 'Sales and Refunds', 'Sales and Refunds', NULL, NULL),
(33, 3, 'FAQ', 'FAQ', NULL, NULL),
(34, 3, 'Close', 'Close', NULL, NULL),
(35, 3, 'Are you sure?', 'Are you sure?', NULL, NULL),
(36, 3, 'You can\'t bring it back!', 'You can\'t bring it back!', NULL, NULL),
(37, 3, 'Cancel', 'Cancel', NULL, NULL),
(38, 3, 'Yes, I\'m sure', 'Yes, I\'m sure', NULL, NULL),
(39, 3, 'Just Now', 'Just Now', NULL, NULL),
(40, 3, 'Success !', 'Success !', NULL, NULL),
(41, 3, 'Attention !', 'Attention !', NULL, NULL),
(42, 3, 'An Error Occurred !', 'An Error Occurred !', NULL, NULL),
(43, 3, 'Remove from wishlist', 'Remove from wishlist', NULL, NULL),
(44, 3, 'This course added to your wishlist', 'This course added to your wishlist', NULL, NULL),
(45, 3, 'Add to wishlist', 'Add to wishlist', NULL, NULL),
(46, 3, 'This course removed from your wishlist', 'This course removed from your wishlist', NULL, NULL),
(47, 3, 'Enter your keywords', 'Enter your keywords', NULL, NULL),
(48, 3, 'Show less', 'Show less', NULL, NULL),
(49, 3, 'Show more', 'Show more', NULL, NULL),
(50, 3, 'Showing', 'Showing', NULL, NULL),
(51, 3, 'of', 'of', NULL, NULL),
(52, 3, 'data', 'data', NULL, NULL),
(53, 3, 'Grid', 'Grid', NULL, NULL),
(54, 3, 'List', 'List', NULL, NULL),
(55, 3, 'Filter', 'Filter', NULL, NULL),
(56, 3, 'Categories', 'Categories', NULL, NULL),
(57, 3, 'Price', 'Price', NULL, NULL),
(58, 3, 'Paid', 'Paid', NULL, NULL),
(59, 3, 'Discount', 'Discount', NULL, NULL),
(60, 3, 'Free', 'Free', NULL, NULL),
(61, 3, 'Level', 'Level', NULL, NULL),
(62, 3, 'Beginner', 'Beginner', NULL, NULL),
(63, 3, 'Intermediate', 'Intermediate', NULL, NULL),
(64, 3, 'Advanced', 'Advanced', NULL, NULL),
(65, 3, 'language', 'language', NULL, NULL),
(66, 3, 'English', 'English', NULL, NULL),
(67, 3, 'Spanish', 'Spanish', NULL, NULL),
(68, 3, 'Italic', 'Italic', NULL, NULL),
(69, 3, 'German', 'German', NULL, NULL),
(70, 3, 'Ratings', 'Ratings', NULL, NULL),
(71, 3, 'No data found !', 'No data found !', NULL, NULL),
(72, 3, 'Please attempt utilizing the suitable keywords in your search query to obtain more precise results.', 'Please attempt utilizing the suitable keywords in your search query to obtain more precise results.', NULL, NULL),
(73, 3, 'Back', 'Back', NULL, NULL),
(74, 3, 'Dashboard', 'Dashboard', NULL, NULL),
(75, 3, 'Number of Courses', 'Number of Courses', NULL, NULL),
(76, 3, 'Number of Lessons', 'Number of Lessons', NULL, NULL),
(77, 3, 'Number of Enrollment', 'Number of Enrollment', NULL, NULL),
(78, 3, 'Number of Students', 'Number of Students', NULL, NULL),
(79, 3, 'Number of Instructor', 'Number of Instructor', NULL, NULL),
(80, 3, 'Admin Revenue This Year', 'Admin Revenue This Year', NULL, NULL),
(81, 3, 'Admin Revenue', 'Admin Revenue', NULL, NULL),
(82, 3, 'Course Status', 'Course Status', NULL, NULL),
(83, 3, 'Explore Courses', 'Explore Courses', NULL, NULL),
(84, 3, 'Active', 'Active', NULL, NULL),
(85, 3, 'Upcoming', 'Upcoming', NULL, NULL),
(86, 3, 'Pending', 'Pending', NULL, NULL),
(87, 3, 'Private', 'Private', NULL, NULL),
(88, 3, 'Draft', 'Draft', NULL, NULL),
(89, 3, 'Inactive', 'Inactive', NULL, NULL),
(90, 3, 'Pending Requested withdrawal', 'Pending Requested withdrawal', NULL, NULL),
(91, 3, 'Instructor Payout', 'Instructor Payout', NULL, NULL),
(92, 3, 'Main Menu', 'Main Menu', NULL, NULL),
(93, 3, 'Category', 'Category', NULL, NULL),
(94, 3, 'Manage Courses', 'Manage Courses', NULL, NULL),
(95, 3, 'Add New Course', 'Add New Course', NULL, NULL),
(96, 3, 'Coupons', 'Coupons', NULL, NULL),
(97, 3, 'Manage Bootcamps', 'Manage Bootcamps', NULL, NULL),
(98, 3, 'Add New Bootcamp', 'Add New Bootcamp', NULL, NULL),
(99, 3, 'Purchase History', 'Purchase History', NULL, NULL),
(100, 3, 'Student enrollment', 'Student enrollment', NULL, NULL),
(101, 3, 'Course enrollment', 'Course enrollment', NULL, NULL),
(102, 3, 'Enrollment History', 'Enrollment History', NULL, NULL),
(103, 3, 'Enroll student', 'Enroll student', NULL, NULL),
(104, 3, 'Payment Report', 'Payment Report', NULL, NULL),
(105, 3, 'Offline payments', 'Offline payments', NULL, NULL),
(106, 3, 'Instructor Revenue', 'Instructor Revenue', NULL, NULL),
(107, 3, 'Payment History', 'Payment History', NULL, NULL),
(108, 3, 'Users', 'Users', NULL, NULL),
(109, 3, 'Admin', 'Admin', NULL, NULL),
(110, 3, 'Manage Admin', 'Manage Admin', NULL, NULL),
(111, 3, 'Add New Admin', 'Add New Admin', NULL, NULL),
(112, 3, 'Instructor', 'Instructor', NULL, NULL),
(113, 3, 'Manage Instructors', 'Manage Instructors', NULL, NULL),
(114, 3, 'Add new Instructor', 'Add new Instructor', NULL, NULL),
(115, 3, 'Instructor Setting', 'Instructor Setting', NULL, NULL),
(116, 3, 'Application', 'Application', NULL, NULL),
(117, 3, 'Student', 'Student', NULL, NULL),
(118, 3, 'Manage Students', 'Manage Students', NULL, NULL),
(119, 3, 'Add new Student', 'Add new Student', NULL, NULL),
(120, 3, 'Message', 'Message', NULL, NULL),
(121, 3, 'Newsletter', 'Newsletter', NULL, NULL),
(122, 3, 'Manage Newsletters', 'Manage Newsletters', NULL, NULL),
(123, 3, 'Subscribed User', 'Subscribed User', NULL, NULL),
(124, 3, 'Contacts', 'Contacts', NULL, NULL),
(125, 3, 'Blogs', 'Blogs', NULL, NULL),
(126, 3, 'Manage Blogs', 'Manage Blogs', NULL, NULL),
(127, 3, 'Pending Blogs', 'Pending Blogs', NULL, NULL),
(128, 3, 'Settings', 'Settings', NULL, NULL),
(129, 3, 'System Settings', 'System Settings', NULL, NULL),
(130, 3, 'Website Settings', 'Website Settings', NULL, NULL),
(131, 3, 'Payment Settings', 'Payment Settings', NULL, NULL),
(132, 3, 'Manage Language', 'Manage Language', NULL, NULL),
(133, 3, 'Live Class Settings', 'Live Class Settings', NULL, NULL),
(134, 3, 'SMTP Settings', 'SMTP Settings', NULL, NULL),
(135, 3, 'Certificate Settings', 'Certificate Settings', NULL, NULL),
(136, 3, 'Player Settings', 'Player Settings', NULL, NULL),
(137, 3, 'Open AI Settings', 'Open AI Settings', NULL, NULL),
(138, 3, 'Home Page Builder', 'Home Page Builder', NULL, NULL),
(139, 3, 'SEO Settings', 'SEO Settings', NULL, NULL),
(140, 3, 'About', 'About', NULL, NULL),
(141, 3, 'Manage Profile', 'Manage Profile', NULL, NULL),
(142, 3, 'Admin Panel', 'Admin Panel', NULL, NULL),
(143, 3, 'View site', 'View site', NULL, NULL),
(144, 3, 'AI Assistant', 'AI Assistant', NULL, NULL),
(145, 3, 'Help Center', 'Help Center', NULL, NULL),
(146, 3, 'Read documentation', 'Read documentation', NULL, NULL),
(147, 3, 'Watch video tutorial', 'Watch video tutorial', NULL, NULL),
(148, 3, 'Get customer support', 'Get customer support', NULL, NULL),
(149, 3, 'Order customization', 'Order customization', NULL, NULL),
(150, 3, 'Request a new feature', 'Request a new feature', NULL, NULL),
(151, 3, 'Get Services', 'Get Services', NULL, NULL),
(152, 3, 'My Profile', 'My Profile', NULL, NULL),
(153, 3, 'Sign Out', 'Sign Out', NULL, NULL),
(154, 3, 'Confirm', 'Confirm', NULL, NULL),
(155, 3, 'Loading', 'Loading', NULL, NULL),
(156, 3, 'Website name', 'Website name', NULL, NULL),
(157, 3, 'Website title', 'Website title', NULL, NULL),
(158, 3, 'Website keywords', 'Website keywords', NULL, NULL),
(159, 3, 'Website description', 'Website description', NULL, NULL),
(160, 3, 'Author', 'Author', NULL, NULL),
(161, 3, 'Slogan', 'Slogan', NULL, NULL),
(162, 3, 'System email', 'System email', NULL, NULL),
(163, 3, 'Address', 'Address', NULL, NULL),
(164, 3, 'Phone', 'Phone', NULL, NULL),
(165, 3, 'Youtube API key', 'Youtube API key', NULL, NULL),
(166, 3, 'Get YouTube API key', 'Get YouTube API key', NULL, NULL),
(167, 3, 'If you want to use Google Drive video, you need to enable the Google Drive service in this API', 'If you want to use Google Drive video, you need to enable the Google Drive service in this API', NULL, NULL),
(168, 3, 'Vimeo API key', 'Vimeo API key', NULL, NULL),
(169, 3, 'get Vimeo API key', 'get Vimeo API key', NULL, NULL),
(170, 3, 'Purchase code', 'Purchase code', NULL, NULL),
(171, 3, 'System language', 'System language', NULL, NULL),
(172, 3, 'Course selling tax', 'Course selling tax', NULL, NULL),
(173, 3, 'Enter 0 if you want to disable the tax option', 'Enter 0 if you want to disable the tax option', NULL, NULL),
(174, 3, 'Device limitation', 'Device limitation', NULL, NULL),
(175, 3, 'Footer text', 'Footer text', NULL, NULL),
(176, 3, 'Footer link', 'Footer link', NULL, NULL),
(177, 3, 'Save Changes', 'Save Changes', NULL, NULL),
(178, 3, 'Update Product', 'Update Product', NULL, NULL),
(179, 3, 'File', 'File', NULL, NULL),
(180, 3, 'Update', 'Update', NULL, NULL),
(181, 3, 'Version updated successfully', 'Version updated successfully', NULL, NULL),
(182, 3, 'Select your service', 'Select your service', NULL, NULL),
(183, 3, 'Course title', 'Course title', NULL, NULL),
(184, 3, 'Course short description', 'Course short description', NULL, NULL),
(185, 3, 'Course long description', 'Course long description', NULL, NULL),
(186, 3, 'Course requirements', 'Course requirements', NULL, NULL),
(187, 3, 'Course outcomes', 'Course outcomes', NULL, NULL),
(188, 3, 'Course faq', 'Course faq', NULL, NULL),
(189, 3, 'Course seo tags', 'Course seo tags', NULL, NULL),
(190, 3, 'Course lesson text', 'Course lesson text', NULL, NULL),
(191, 3, 'Course certificate text', 'Course certificate text', NULL, NULL),
(192, 3, 'Course quiz text', 'Course quiz text', NULL, NULL),
(193, 3, 'Course blog title', 'Course blog title', NULL, NULL),
(194, 3, 'Course blog post', 'Course blog post', NULL, NULL),
(195, 3, 'Course thumbnail', 'Course thumbnail', NULL, NULL),
(196, 3, 'Enter your keyword', 'Enter your keyword', NULL, NULL),
(197, 3, 'Generate', 'Generate', NULL, NULL),
(198, 3, 'Generating', 'Generating', NULL, NULL),
(199, 3, 'Your images', 'Your images', NULL, NULL),
(200, 3, 'Generated text', 'Generated text', NULL, NULL),
(201, 3, 'Copy', 'Copy', NULL, NULL),
(202, 3, 'Copied', 'Copied', NULL, NULL),
(203, 3, 'Not found', 'Not found', NULL, NULL),
(204, 3, 'About This Application', 'About This Application', NULL, NULL),
(205, 3, 'Software version', 'Software version', NULL, NULL),
(206, 3, 'Laravel version', 'Laravel version', NULL, NULL),
(207, 3, 'Check update', 'Check update', NULL, NULL),
(208, 3, 'Php version', 'Php version', NULL, NULL),
(209, 3, 'Curl enable', 'Curl enable', NULL, NULL),
(210, 3, 'enabled', 'enabled', NULL, NULL),
(211, 3, 'Product license', 'Product license', NULL, NULL),
(212, 3, 'Enter valid purchase code', 'Enter valid purchase code', NULL, NULL),
(213, 3, 'Customer support status', 'Customer support status', NULL, NULL),
(214, 3, 'Support expiry date', 'Support expiry date', NULL, NULL),
(215, 3, 'Customer name', 'Customer name', NULL, NULL),
(216, 3, 'Customer support', 'Customer support', NULL, NULL),
(217, 3, 'Payment setting', 'Payment setting', NULL, NULL),
(218, 3, 'Currency Settings', 'Currency Settings', NULL, NULL),
(219, 3, 'Heads up !!', 'Heads up !!', NULL, NULL),
(220, 3, 'Ensure that the system currency and all active payment gateway currencies are same', 'Ensure that the system currency and all active payment gateway currencies are same', NULL, NULL),
(221, 3, 'Select currency', 'Select currency', NULL, NULL),
(222, 3, 'Currency position', 'Currency position', NULL, NULL),
(223, 3, 'Left', 'Left', NULL, NULL),
(224, 3, 'Right', 'Right', NULL, NULL),
(225, 3, 'Left with a space', 'Left with a space', NULL, NULL),
(226, 3, 'Right with a space', 'Right with a space', NULL, NULL),
(227, 3, 'No', 'No', NULL, NULL),
(228, 3, 'Yes', 'Yes', NULL, NULL),
(229, 3, 'Want to keep test mode enabled', 'Want to keep test mode enabled', NULL, NULL),
(230, 3, 'sandbox client id', 'sandbox client id', NULL, NULL),
(231, 3, 'sandbox secret key', 'sandbox secret key', NULL, NULL),
(232, 3, 'production client id', 'production client id', NULL, NULL),
(233, 3, 'production secret key', 'production secret key', NULL, NULL),
(234, 3, 'setting', 'setting', NULL, NULL),
(235, 3, 'public key', 'public key', NULL, NULL),
(236, 3, 'secret key', 'secret key', NULL, NULL),
(237, 3, 'public live key', 'public live key', NULL, NULL),
(238, 3, 'secret live key', 'secret live key', NULL, NULL),
(239, 3, 'Choose an option', 'Choose an option', NULL, NULL),
(240, 3, 'bank information', 'bank information', NULL, NULL),
(241, 3, 'secret test key', 'secret test key', NULL, NULL),
(242, 3, 'public test key', 'public test key', NULL, NULL),
(243, 3, 'Cookie Policy', 'Cookie Policy', NULL, NULL),
(244, 3, 'Accept', 'Accept', NULL, NULL),
(245, 3, 'Learn More', 'Learn More', NULL, NULL),
(246, 3, 'Students has Enrolled', 'Students has Enrolled', NULL, NULL),
(247, 3, 'Page Builder', 'Page Builder', NULL, NULL),
(248, 3, 'Create Page', 'Create Page', NULL, NULL),
(249, 3, '#', '#', NULL, NULL),
(250, 3, 'Page Name', 'Page Name', NULL, NULL),
(251, 3, 'Status', 'Status', NULL, NULL),
(252, 3, 'Action', 'Action', NULL, NULL),
(253, 3, 'Edit Home Page', 'Edit Home Page', NULL, NULL),
(254, 3, 'Edit Home', 'Edit Home', NULL, NULL),
(255, 3, 'Preview', 'Preview', NULL, NULL),
(256, 3, 'Edit Layout', 'Edit Layout', NULL, NULL),
(257, 3, 'Edit Page', 'Edit Page', NULL, NULL),
(258, 3, 'Edit', 'Edit', NULL, NULL),
(259, 3, 'Delete', 'Delete', NULL, NULL),
(260, 3, 'Home page activated', 'Home page activated', NULL, NULL),
(261, 3, 'The Leader in online learning', 'The Leader in online learning', NULL, NULL),
(262, 3, 'Get Started', 'Get Started', NULL, NULL),
(263, 3, 'Special Featured Course', 'Special Featured Course', NULL, NULL),
(264, 3, 'Those course highlights a handpicked course with exceptional content or exclusive offerings.', 'Those course highlights a handpicked course with exceptional content or exclusive offerings.', NULL, NULL),
(265, 3, 'Why Choose Us', 'Why Choose Us', NULL, NULL),
(266, 3, 'Happy student', 'Happy student', NULL, NULL),
(267, 3, 'Quality educators', 'Quality educators', NULL, NULL),
(268, 3, 'Premium courses', 'Premium courses', NULL, NULL),
(269, 3, 'Cost-free course', 'Cost-free course', NULL, NULL),
(270, 3, 'Top Rated Course', 'Top Rated Course', NULL, NULL),
(271, 3, 'Top rated course showcases the highest-rated course based on student reviews and performance metrics.', 'Top rated course showcases the highest-rated course based on student reviews and performance metrics.', NULL, NULL),
(272, 3, 'What the people Thinks About Us', 'What the people Thinks About Us', NULL, NULL),
(273, 3, 'It highlights feedback and testimonials from users, reflecting their experiences and satisfaction.', 'It highlights feedback and testimonials from users, reflecting their experiences and satisfaction.', NULL, NULL),
(274, 3, 'Frequently Asked Questions', 'Frequently Asked Questions', NULL, NULL),
(275, 3, 'Our Latest Blog', 'Our Latest Blog', NULL, NULL),
(276, 3, 'The latest blog highlights the most recent articles, updates, and insights from our platform.', 'The latest blog highlights the most recent articles, updates, and insights from our platform.', NULL, NULL),
(277, 3, 'Wishlist', 'Wishlist', NULL, NULL),
(278, 3, 'Log Out', 'Log Out', NULL, NULL),
(279, 3, 'Logout', 'Logout', NULL, NULL),
(280, 3, 'Admin Dashboard', 'Admin Dashboard', NULL, NULL),
(281, 3, 'It is a long established fact that a reader will be the distract by the read content of a page layout', 'It is a long established fact that a reader will be the distract by the read content of a page layout', NULL, NULL),
(282, 3, 'Subscribe to stay tuned for new web design and latest updates. Let\'s do it!', 'Subscribe to stay tuned for new web design and latest updates. Let\'s do it!', NULL, NULL),
(283, 3, '© 2024 All Rights Reserved', '© 2024 All Rights Reserved', NULL, NULL),
(284, 3, '404 not found', '404 not found', NULL, NULL),
(285, 3, 'The page you requested could not be found', 'The page you requested could not be found', NULL, NULL),
(286, 3, 'Please try the following', 'Please try the following', NULL, NULL),
(287, 3, 'Check the spelling of the url', 'Check the spelling of the url', NULL, NULL),
(288, 3, 'If you are still puzzled, click on the home link below', 'If you are still puzzled, click on the home link below', NULL, NULL),
(289, 3, 'Back to home', 'Back to home', NULL, NULL),
(290, 3, 'Become An Instructor', 'Become An Instructor', NULL, NULL),
(291, 3, 'Title', 'Title', NULL, NULL),
(292, 3, 'Description', 'Description', NULL, NULL),
(293, 3, 'Video Url', 'Video Url', NULL, NULL),
(294, 3, 'Image', 'Image', NULL, NULL),
(295, 3, 'Banner Information', 'Banner Information', NULL, NULL),
(296, 3, 'Add new', 'Add new', NULL, NULL),
(297, 3, 'Remove', 'Remove', NULL, NULL),
(298, 3, 'Video Link', 'Video Link', NULL, NULL),
(299, 3, 'Youtube', 'Youtube', NULL, NULL),
(300, 3, 'HTML5', 'HTML5', NULL, NULL),
(301, 3, 'All Category', 'All Category', NULL, NULL),
(302, 3, 'Add new category', 'Add new category', NULL, NULL),
(303, 3, 'Category Name', 'Category Name', NULL, NULL),
(304, 3, 'Enter your category name', 'Enter your category name', NULL, NULL),
(305, 3, 'Enter your unique category name', 'Enter your unique category name', NULL, NULL),
(306, 3, 'Pick Your Icon', 'Pick Your Icon', NULL, NULL),
(307, 3, 'Pick your category icon', 'Pick your category icon', NULL, NULL),
(308, 3, 'Keywords', 'Keywords', NULL, NULL),
(309, 3, 'optional', 'optional', NULL, NULL),
(310, 3, 'Category Description', 'Category Description', NULL, NULL),
(311, 3, 'Enter your description', 'Enter your description', NULL, NULL),
(312, 3, 'Thumbnail', 'Thumbnail', NULL, NULL),
(313, 3, 'Category logo', 'Category logo', NULL, NULL),
(314, 3, 'Category added successfully', 'Category added successfully', NULL, NULL),
(315, 3, 'Add', 'Add', NULL, NULL),
(316, 3, 'Edit category', 'Edit category', NULL, NULL),
(317, 3, 'Create course', 'Create course', NULL, NULL),
(318, 3, 'Enter Course Title', 'Enter Course Title', NULL, NULL),
(319, 3, 'Short Description', 'Short Description', NULL, NULL),
(320, 3, 'Enter Short Description', 'Enter Short Description', NULL, NULL),
(321, 3, 'Enter Description', 'Enter Description', NULL, NULL),
(322, 3, 'Create as', 'Create as', NULL, NULL),
(323, 3, 'Select a category', 'Select a category', NULL, NULL),
(324, 3, 'Course level', 'Course level', NULL, NULL),
(325, 3, 'Select your course level', 'Select your course level', NULL, NULL),
(326, 3, 'Made in', 'Made in', NULL, NULL),
(327, 3, 'Select your course language', 'Select your course language', NULL, NULL),
(328, 3, 'Pricing type', 'Pricing type', NULL, NULL),
(329, 3, 'Enter your course price', 'Enter your course price', NULL, NULL),
(330, 3, 'Check if this course has discount', 'Check if this course has discount', NULL, NULL),
(331, 3, 'Discounted price', 'Discounted price', NULL, NULL),
(332, 3, 'Enter your discount price', 'Enter your discount price', NULL, NULL),
(333, 3, 'Finish!', 'Finish!', NULL, NULL),
(334, 3, 'Course added successfully', 'Course added successfully', NULL, NULL),
(335, 3, 'Edit course', 'Edit course', NULL, NULL),
(336, 3, 'Editing', 'Editing', NULL, NULL),
(337, 3, 'Help', 'Help', NULL, NULL),
(338, 3, 'Frontend View', 'Frontend View', NULL, NULL),
(339, 3, 'Course Player', 'Course Player', NULL, NULL),
(340, 3, 'Curriculum', 'Curriculum', NULL, NULL),
(341, 3, 'Basic', 'Basic', NULL, NULL),
(342, 3, 'Live Class', 'Live Class', NULL, NULL),
(343, 3, 'Pricing', 'Pricing', NULL, NULL),
(344, 3, 'Info', 'Info', NULL, NULL),
(345, 3, 'Media', 'Media', NULL, NULL),
(346, 3, 'SEO', 'SEO', NULL, NULL),
(347, 3, 'Add new section', 'Add new section', NULL, NULL),
(348, 3, 'Add section', 'Add section', NULL, NULL),
(349, 3, 'Add a new Section', 'Add a new Section', NULL, NULL),
(350, 3, 'Create bootcamp', 'Create bootcamp', NULL, NULL),
(351, 3, 'Check if this bootcamp has discount', 'Check if this bootcamp has discount', NULL, NULL),
(352, 3, 'Publish Date', 'Publish Date', NULL, NULL),
(353, 3, 'Bootcamp Category', 'Bootcamp Category', NULL, NULL),
(354, 3, 'No data found', 'No data found', NULL, NULL),
(355, 3, 'Add category', 'Add category', NULL, NULL),
(356, 3, 'Category has been created.', 'Category has been created.', NULL, NULL),
(357, 3, 'Total bootcamps', 'Total bootcamps', NULL, NULL),
(358, 3, 'Bootcamp has been created.', 'Bootcamp has been created.', NULL, NULL),
(359, 3, 'Edit bootcamp', 'Edit bootcamp', NULL, NULL),
(360, 3, 'Frontent View', 'Frontent View', NULL, NULL),
(361, 3, 'Create Student', 'Create Student', NULL, NULL),
(362, 3, 'Student Info', 'Student Info', NULL, NULL),
(363, 3, 'Login Credentials', 'Login Credentials', NULL, NULL),
(364, 3, 'Social Links', 'Social Links', NULL, NULL),
(365, 3, 'Name', 'Name', NULL, NULL),
(366, 3, 'Biography', 'Biography', NULL, NULL),
(367, 3, 'User image', 'User image', NULL, NULL),
(368, 3, 'Facebook', 'Facebook', NULL, NULL),
(369, 3, 'Twitter', 'Twitter', NULL, NULL),
(370, 3, 'Linkedin', 'Linkedin', NULL, NULL),
(371, 3, 'Student add successfully', 'Student add successfully', NULL, NULL),
(372, 3, 'Student List', 'Student List', NULL, NULL),
(373, 3, 'Export', 'Export', NULL, NULL),
(374, 3, 'PDF', 'PDF', NULL, NULL),
(375, 3, 'Print', 'Print', NULL, NULL),
(376, 3, 'Search user', 'Search user', NULL, NULL),
(377, 3, 'Search', 'Search', NULL, NULL),
(378, 3, 'Enrolled Course', 'Enrolled Course', NULL, NULL),
(379, 3, 'Options', 'Options', NULL, NULL),
(380, 3, 'Email Verification', 'Email Verification', NULL, NULL),
(381, 3, 'Thanks for signing up! Before getting started, could you verify your email address by clicking on the link we just emailed to you? If you didn\'t receive the email, we will gladly send you another.', 'Thanks for signing up! Before getting started, could you verify your email address by clicking on the link we just emailed to you? If you didn\'t receive the email, we will gladly send you another.', NULL, NULL),
(382, 3, 'Resend Verification Email', 'Resend Verification Email', NULL, NULL),
(383, 3, 'My Courses', 'My Courses', NULL, NULL),
(384, 3, 'My Bootcamps', 'My Bootcamps', NULL, NULL),
(385, 3, 'Upload picture', 'Upload picture', NULL, NULL),
(386, 3, 'Upload New', 'Upload New', NULL, NULL),
(387, 3, 'My Teams', 'My Teams', NULL, NULL),
(388, 3, 'Please try using the appropriate keywords.', 'Please try using the appropriate keywords.', NULL, NULL),
(389, 3, 'Bootcamps', 'Bootcamps', NULL, NULL),
(390, 3, 'All Bootcamps', 'All Bootcamps', NULL, NULL),
(391, 3, 'Class', 'Class', NULL, NULL),
(392, 3, 'View Details', 'View Details', NULL, NULL),
(393, 3, 'Buy Now', 'Buy Now', NULL, NULL),
(394, 3, 'Item is already purchased.', 'Item is already purchased.', NULL, NULL),
(395, 3, 'Bootcamp payment', 'Bootcamp payment', NULL, NULL),
(396, 3, 'Order summary', 'Order summary', NULL, NULL),
(397, 3, 'Cancel Payment', 'Cancel Payment', NULL, NULL),
(398, 3, 'Select payment gateway', 'Select payment gateway', NULL, NULL),
(399, 3, 'Item List', 'Item List', NULL, NULL),
(400, 3, 'Total', 'Total', NULL, NULL),
(401, 3, 'Grand Total', 'Grand Total', NULL, NULL),
(402, 3, 'Reviews', 'Reviews', NULL, NULL),
(403, 3, 'lesson', 'lesson', NULL, NULL),
(404, 3, 'Students', 'Students', NULL, NULL),
(405, 3, 'Terms and condition', 'Terms and condition', NULL, NULL),
(406, 3, 'Terms', 'Terms', NULL, NULL),
(407, 3, 'WELLCOME TO CHEF', 'WELLCOME TO CHEF', NULL, NULL),
(408, 3, 'Visit Courses', 'Visit Courses', NULL, NULL),
(409, 3, 'Enrolled Learners', 'Enrolled Learners', NULL, NULL),
(410, 3, 'Online Instructors', 'Online Instructors', NULL, NULL),
(411, 3, 'Latest Top Skills', 'Latest Top Skills', NULL, NULL),
(412, 3, 'Awesome  site the top advertising been business.', 'Awesome  site the top advertising been business.', NULL, NULL),
(413, 3, 'Industry Experts', 'Industry Experts', NULL, NULL),
(414, 3, 'Learning From Anywhere', 'Learning From Anywhere', NULL, NULL),
(415, 3, 'Top Rated Courses', 'Top Rated Courses', NULL, NULL),
(416, 3, 'Upcoming Courses', 'Upcoming Courses', NULL, NULL),
(417, 3, 'Highlights the latest courses set to launch, giving students a sneak peek at new opportunities for learning and skill development. Stay ahead with our curated selection of upcoming educational offerings!', 'Highlights the latest courses set to launch, giving students a sneak peek at new opportunities for learning and skill development. Stay ahead with our curated selection of upcoming educational offerings!', NULL, NULL),
(418, 3, 'Featured Courses', 'Featured Courses', NULL, NULL),
(419, 3, 'Think more clearly', 'Think more clearly', NULL, NULL),
(420, 3, 'Awesome  site. on the top advertising a business online includes assembling Having the most keep.', 'Awesome  site. on the top advertising a business online includes assembling Having the most keep.', NULL, NULL),
(421, 3, 'Video title', 'Video title', NULL, NULL),
(422, 3, 'Our Popular Instructor', 'Our Popular Instructor', NULL, NULL),
(423, 3, 'Highlights our most sought-after educator, recognized for their engaging teaching style and exceptional course content. Discover their expertise and join the many students who have benefited from their classes!', 'Highlights our most sought-after educator, recognized for their engaging teaching style and exceptional course content. Discover their expertise and join the many students who have benefited from their classes!', NULL, NULL),
(424, 3, 'Frequently Asked Questions?', 'Frequently Asked Questions?', NULL, NULL),
(425, 3, 'FAQ provides quick answers to common inquiries, helping users resolve doubts efficiently.', 'FAQ provides quick answers to common inquiries, helping users resolve doubts efficiently.', NULL, NULL),
(426, 3, 'Follow The Latest News', 'Follow The Latest News', NULL, NULL),
(427, 3, 'Top Courses', 'Top Courses', NULL, NULL),
(428, 3, 'lessons', 'lessons', NULL, NULL),
(429, 3, 'Subscribe to our newsletter to get latest updates', 'Subscribe to our newsletter to get latest updates', NULL, NULL),
(430, 3, 'Subscribe to stay tuned for new latest updates and offer. Let\'s do it! ', 'Subscribe to stay tuned for new latest updates and offer. Let\'s do it! ', NULL, NULL),
(431, 3, 'Subscribe', 'Subscribe', NULL, NULL),
(432, 3, 'Read our privacy policy', 'Read our privacy policy', NULL, NULL),
(433, 3, 'Here', 'Here', NULL, NULL),
(434, 3, 'Blog category', 'Blog category', NULL, NULL),
(435, 3, 'Subtitle', 'Subtitle', NULL, NULL),
(436, 3, '(80  Character)', '(80  Character)', NULL, NULL),
(437, 3, 'Category add successfully', 'Category add successfully', NULL, NULL),
(438, 3, 'Total number of blog', 'Total number of blog', NULL, NULL),
(439, 3, 'Add new blog', 'Add new blog', NULL, NULL),
(440, 3, 'Search Title', 'Search Title', NULL, NULL),
(441, 3, 'Add Blog', 'Add Blog', NULL, NULL),
(442, 3, 'Enter blog title', 'Enter blog title', NULL, NULL),
(443, 3, 'Writing your keyword and hit htw enter button', 'Writing your keyword and hit htw enter button', NULL, NULL),
(444, 3, 'Blog banner', 'Blog banner', NULL, NULL),
(445, 3, 'Blog thumbnail', 'Blog thumbnail', NULL, NULL),
(446, 3, 'Would you like to designate it as popular?', 'Would you like to designate it as popular?', NULL, NULL),
(447, 3, 'Blog add successfully', 'Blog add successfully', NULL, NULL),
(448, 3, 'Creator', 'Creator', NULL, NULL),
(449, 3, 'View on frontend', 'View on frontend', NULL, NULL),
(450, 3, 'Read More', 'Read More', NULL, NULL),
(451, 3, 'Get Started Now', 'Get Started Now', NULL, NULL),
(452, 3, 'Creating A Community Of Life Long Learners', 'Creating A Community Of Life Long Learners', NULL, NULL),
(453, 3, 'Our LMS goes beyond just providing courses. It\'s a platform designed to ignite curiosity and empower your lifelong learning journey.  This supportive community provides a space to ask questions, no matter how big or small, and receive insightful answers from experienced learners and subject-matter experts.', 'Our LMS goes beyond just providing courses. It\'s a platform designed to ignite curiosity and empower your lifelong learning journey.  This supportive community provides a space to ask questions, no matter how big or small, and receive insightful answers from experienced learners and subject-matter experts.', NULL, NULL),
(454, 3, 'Share your own experiences and challenges, and find encouragement and inspiration from others on a similar path. The diverse perspectives within our community will broaden your horizons and challenge your thinking, fostering a deeper understanding and a richer learning experience.  Together, we\'ll transform learning from a solitary pursuit into a collaborative adventure, where shared knowledge fuels individual growth and collective discovery.', 'Share your own experiences and challenges, and find encouragement and inspiration from others on a similar path. The diverse perspectives within our community will broaden your horizons and challenge your thinking, fostering a deeper understanding and a richer learning experience.  Together, we\'ll transform learning from a solitary pursuit into a collaborative adventure, where shared knowledge fuels individual growth and collective discovery.', NULL, NULL),
(455, 3, 'Learn more about us', 'Learn more about us', NULL, NULL),
(456, 3, 'Our Online Courses', 'Our Online Courses', NULL, NULL),
(457, 3, 'See More', 'See More', NULL, NULL),
(458, 3, 'Our Blog', 'Our Blog', NULL, NULL),
(459, 3, 'LEARN FROM TODAY', 'LEARN FROM TODAY', NULL, NULL),
(460, 3, 'Watch Video', 'Watch Video', NULL, NULL),
(461, 3, 'Expert Mentors', 'Expert Mentors', NULL, NULL),
(462, 3, 'Students Globally', 'Students Globally', NULL, NULL),
(463, 3, 'Cost Free Course', 'Cost Free Course', NULL, NULL),
(464, 3, 'What they’re saying about our courses', 'What they’re saying about our courses', NULL, NULL),
(465, 3, 'Having enjoyed a breathlessly successful 2015, there can be no DJ  dynamic set of teaching tools Billed to be deployed.', 'Having enjoyed a breathlessly successful 2015, there can be no DJ  dynamic set of teaching tools Billed to be deployed.', NULL, NULL),
(466, 3, 'Student email verification', 'Student email verification', NULL, NULL),
(467, 3, 'Disabled', 'Disabled', NULL, NULL),
(468, 3, 'Frontend Settings', 'Frontend Settings', NULL, NULL),
(469, 3, 'Motivational Speech', 'Motivational Speech', NULL, NULL),
(470, 3, 'Website FAQS', 'Website FAQS', NULL, NULL),
(471, 3, 'Contact Information', 'Contact Information', NULL, NULL),
(472, 3, 'User Reviews', 'User Reviews', NULL, NULL),
(473, 3, 'Logo & Images', 'Logo & Images', NULL, NULL),
(474, 3, 'Frontend website settings', 'Frontend website settings', NULL, NULL),
(475, 3, 'Banner title', 'Banner title', NULL, NULL),
(476, 3, 'Banner sub title', 'Banner sub title', NULL, NULL),
(477, 3, 'Promo Video Provider', 'Promo Video Provider', NULL, NULL),
(478, 3, 'Youtube Video Link', 'Youtube Video Link', NULL, NULL),
(479, 3, 'Vimeo Video Link', 'Vimeo Video Link', NULL, NULL),
(480, 3, 'HTML5 Video link', 'HTML5 Video link', NULL, NULL),
(481, 3, 'Promo video link', 'Promo video link', NULL, NULL),
(482, 3, 'Cookie status', 'Cookie status', NULL, NULL),
(483, 3, 'Cookie note', 'Cookie note', NULL, NULL),
(484, 3, 'Refund policy', 'Refund policy', NULL, NULL),
(485, 3, 'Mobile App download Link', 'Mobile App download Link', NULL, NULL),
(486, 3, 'Update Settings', 'Update Settings', NULL, NULL),
(487, 3, 'designation', 'designation', NULL, NULL),
(488, 3, 'Question', 'Question', NULL, NULL),
(489, 3, 'Write a question', 'Write a question', NULL, NULL),
(490, 3, 'Answer', 'Answer', NULL, NULL),
(491, 3, 'Write a question answer', 'Write a question answer', NULL, NULL),
(492, 3, 'Contact Email', 'Contact Email', NULL, NULL),
(493, 3, 'Phone Number', 'Phone Number', NULL, NULL),
(494, 3, 'Office Hours', 'Office Hours', NULL, NULL),
(495, 3, 'Location', 'Location', NULL, NULL),
(496, 3, 'Latitude', 'Latitude', NULL, NULL),
(497, 3, 'Longitude', 'Longitude', NULL, NULL),
(498, 3, 'Recaptcha settings', 'Recaptcha settings', NULL, NULL),
(499, 3, 'Recaptcha status', 'Recaptcha status', NULL, NULL),
(500, 3, 'Recaptcha sitekey', 'Recaptcha sitekey', NULL, NULL),
(501, 3, 'Recaptcha secretkey', 'Recaptcha secretkey', NULL, NULL),
(502, 3, 'Update recaptcha settings', 'Update recaptcha settings', NULL, NULL),
(503, 3, 'Review', 'Review', NULL, NULL),
(504, 3, 'Add new Review', 'Add new Review', NULL, NULL),
(505, 3, 'Click here to choose a banner image', 'Click here to choose a banner image', NULL, NULL),
(506, 3, 'Upload banner image', 'Upload banner image', NULL, NULL),
(507, 3, 'Click here to choose a light logo', 'Click here to choose a light logo', NULL, NULL),
(508, 3, 'Upload light logo', 'Upload light logo', NULL, NULL),
(509, 3, 'Click here to choose a dark logo', 'Click here to choose a dark logo', NULL, NULL),
(510, 3, 'Upload dark logo', 'Upload dark logo', NULL, NULL),
(511, 3, 'Click here to choose a favicon', 'Click here to choose a favicon', NULL, NULL),
(512, 3, 'Upload favicon', 'Upload favicon', NULL, NULL),
(513, 3, 'Frontend settings update successfully', 'Frontend settings update successfully', NULL, NULL),
(514, 3, 'User already register and signing up for using it', 'User already register and signing up for using it', NULL, NULL),
(515, 3, 'Get Courses', 'Get Courses', NULL, NULL),
(516, 3, 'Start Learning', 'Start Learning', NULL, NULL),
(517, 3, 'Coding', 'Coding', NULL, NULL),
(518, 3, 'Languages', 'Languages', NULL, NULL),
(519, 3, 'The industry\'s standard dummy text ever since the  unknown printer took a galley of type and scrambled', 'The industry\'s standard dummy text ever since the  unknown printer took a galley of type and scrambled', NULL, NULL),
(520, 3, 'Online Courses', 'Online Courses', NULL, NULL),
(521, 3, 'Top Instructors', 'Top Instructors', NULL, NULL),
(522, 3, 'Online Certificates', 'Online Certificates', NULL, NULL),
(523, 3, 'Pick A Course To', 'Pick A Course To', NULL, NULL),
(524, 3, 'Download our mobile app, start learning', 'Download our mobile app, start learning', NULL, NULL),
(525, 3, 'Academy', 'Academy', NULL, NULL),
(526, 3, 'Download Now', 'Download Now', NULL, NULL),
(527, 3, 'Frequently Asked', 'Frequently Asked', NULL, NULL),
(528, 3, 'Questions', 'Questions', NULL, NULL),
(529, 3, 'What Our', 'What Our', NULL, NULL),
(530, 3, 'Have To Say', 'Have To Say', NULL, NULL),
(531, 3, 'Get News with', 'Get News with', NULL, NULL),
(532, 3, 'comment', 'comment', NULL, NULL),
(533, 3, 'Course Manager', 'Course Manager', NULL, NULL),
(534, 3, 'Active courses', 'Active courses', NULL, NULL),
(535, 3, 'Pending courses', 'Pending courses', NULL, NULL),
(536, 3, 'Free courses', 'Free courses', NULL, NULL),
(537, 3, 'Paid courses', 'Paid courses', NULL, NULL),
(538, 3, 'All', 'All', NULL, NULL),
(539, 3, 'Apply', 'Apply', NULL, NULL),
(540, 3, 'Lesson & Section', 'Lesson & Section', NULL, NULL),
(541, 3, 'Enrolled Student', 'Enrolled Student', NULL, NULL),
(542, 3, 'Section', 'Section', NULL, NULL),
(543, 3, 'View Course On Frontend', 'View Course On Frontend', NULL, NULL),
(544, 3, 'Go To Course Playing Page', 'Go To Course Playing Page', NULL, NULL),
(545, 3, 'Duplicate Course', 'Duplicate Course', NULL, NULL),
(546, 3, 'Make As Active', 'Make As Active', NULL, NULL),
(547, 3, 'Delete Course', 'Delete Course', NULL, NULL),
(548, 3, 'Course updated successfully', 'Course updated successfully', NULL, NULL),
(549, 3, 'Multi language setting', 'Multi language setting', NULL, NULL),
(550, 3, 'Language list', 'Language list', NULL, NULL),
(551, 3, 'Add Language', 'Add Language', NULL, NULL),
(552, 3, 'Import Language', 'Import Language', NULL, NULL),
(553, 3, 'Direction', 'Direction', NULL, NULL),
(554, 3, 'Option', 'Option', NULL, NULL),
(555, 3, 'LTR', 'LTR', NULL, NULL),
(556, 3, 'RTL', 'RTL', NULL, NULL),
(557, 3, 'Edit phrase', 'Edit phrase', NULL, NULL),
(558, 3, 'Add new language', 'Add new language', NULL, NULL),
(559, 3, 'No special character or space is allowed. Valid examples: French, Spanish, Bengali etc', 'No special character or space is allowed. Valid examples: French, Spanish, Bengali etc', NULL, NULL),
(560, 3, 'Save', 'Save', NULL, NULL),
(561, 3, 'Import your language files from here. (Ex: english.json)', 'Import your language files from here. (Ex: english.json)', NULL, NULL),
(562, 3, 'Import', 'Import', NULL, NULL),
(563, 3, 'phrase_updated', 'phrase_updated', NULL, NULL),
(564, 3, 'Direction has been updated', 'Direction has been updated', NULL, NULL),
(565, 3, 'Education For Eeveryone', 'Education For Eeveryone', NULL, NULL),
(566, 3, 'Search here', 'Search here', NULL, NULL),
(567, 3, 'Online Instructor have a new ideas every week.', 'Online Instructor have a new ideas every week.', NULL, NULL),
(568, 3, 'Special Featured Course.', 'Special Featured Course.', NULL, NULL),
(569, 3, 'View More', 'View More', NULL, NULL),
(570, 3, 'Know About Academy LMS Learning Platform', 'Know About Academy LMS Learning Platform', NULL, NULL),
(571, 3, 'Far far away, behind the word mountains, far from the away countries Vokalia and Consonantia, there live the blind texts.', 'Far far away, behind the word mountains, far from the away countries Vokalia and Consonantia, there live the blind texts.', NULL, NULL),
(572, 3, 'Free Resources Learning English for Beginner', 'Free Resources Learning English for Beginner', NULL, NULL),
(573, 3, 'Far far away, behind the word mountains, far from the away countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.', 'Far far away, behind the word mountains, far from the away countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.', NULL, NULL),
(574, 3, 'Instructor have a new ideas every week.', 'Instructor have a new ideas every week.', NULL, NULL),
(575, 3, 'Meet Our Team', 'Meet Our Team', NULL, NULL),
(576, 3, 'Download our mobile app, start learning today', 'Download our mobile app, start learning today', NULL, NULL),
(577, 3, 'Includes all Course && Features', 'Includes all Course && Features', NULL, NULL),
(578, 3, 'Get Bundle', 'Get Bundle', NULL, NULL),
(579, 3, 'Create Instructor', 'Create Instructor', NULL, NULL),
(580, 3, 'Instructor Info', 'Instructor Info', NULL, NULL),
(581, 3, 'Payment Information', 'Payment Information', NULL, NULL),
(582, 3, 'Instructor add successfully', 'Instructor add successfully', NULL, NULL),
(583, 3, 'Instructor List', 'Instructor List', NULL, NULL),
(584, 3, 'Number Of Course', 'Number Of Course', NULL, NULL),
(585, 3, 'View courses', 'View courses', NULL, NULL),
(586, 3, 'Make As Inactive', 'Make As Inactive', NULL, NULL),
(587, 3, 'Enroll Students', 'Enroll Students', NULL, NULL),
(588, 3, 'Course to enrol', 'Course to enrol', NULL, NULL),
(589, 3, 'Select a course', 'Select a course', NULL, NULL),
(590, 3, 'Enroll History', 'Enroll History', NULL, NULL),
(591, 3, 'Add new enrollment', 'Add new enrollment', NULL, NULL),
(592, 3, 'Enrolled Date', 'Enrolled Date', NULL, NULL),
(593, 3, 'Expiry Date', 'Expiry Date', NULL, NULL),
(594, 3, 'Lifetime access', 'Lifetime access', NULL, NULL),
(595, 3, 'Add Review', 'Add Review', NULL, NULL),
(596, 3, 'Select User', 'Select User', NULL, NULL),
(597, 3, 'Select an user', 'Select an user', NULL, NULL),
(598, 3, 'Rating', 'Rating', NULL, NULL),
(599, 3, 'Select a Rating', 'Select a Rating', NULL, NULL),
(600, 3, 'Review added successfull', 'Review added successfull', NULL, NULL),
(601, 3, 'About Us Image', 'About Us Image', NULL, NULL),
(602, 3, 'Faq  Image', 'Faq  Image', NULL, NULL),
(603, 3, 'Faq Image', 'Faq Image', NULL, NULL),
(604, 3, 'Slider image & video link', 'Slider image & video link', NULL, NULL),
(605, 3, 'Add Image', 'Add Image', NULL, NULL),
(606, 3, 'Add Video Link', 'Add Video Link', NULL, NULL),
(607, 3, 'Homepage updated successfully', 'Homepage updated successfully', NULL, NULL),
(608, 3, 'Duration', 'Duration', NULL, NULL),
(609, 3, 'Course Details', 'Course Details', NULL, NULL),
(610, 3, 'Certificate Course', 'Certificate Course', NULL, NULL),
(611, 3, 'Overview', 'Overview', NULL, NULL),
(612, 3, 'Details', 'Details', NULL, NULL),
(613, 3, 'Course Overview', 'Course Overview', NULL, NULL),
(614, 3, 'No Course Description', 'No Course Description', NULL, NULL),
(615, 3, 'FAQ area empty', 'FAQ area empty', NULL, NULL),
(616, 3, 'Course curriculum', 'Course curriculum', NULL, NULL),
(617, 3, 'Course curriculum Empty', 'Course curriculum Empty', NULL, NULL),
(618, 3, 'Requirment', 'Requirment', NULL, NULL),
(619, 3, 'Outcomes', 'Outcomes', NULL, NULL),
(620, 3, 'Rate this course : ', 'Rate this course : ', NULL, NULL),
(621, 3, 'Remove all', 'Remove all', NULL, NULL),
(622, 3, 'Write a reveiw ...', 'Write a reveiw ...', NULL, NULL),
(623, 3, 'Add to cart', 'Add to cart', NULL, NULL),
(624, 3, 'Share', 'Share', NULL, NULL),
(625, 3, 'Share on Facebook', 'Share on Facebook', NULL, NULL),
(626, 3, 'Share on Twitter', 'Share on Twitter', NULL, NULL),
(627, 3, 'Share on Whatsapp', 'Share on Whatsapp', NULL, NULL),
(628, 3, 'Share on Linkedin', 'Share on Linkedin', NULL, NULL),
(629, 3, 'Certificate', 'Certificate', NULL, NULL),
(630, 3, 'Certificate template', 'Certificate template', NULL, NULL),
(631, 3, 'Build your certificate', 'Build your certificate', NULL, NULL),
(632, 3, 'Upload your certificate template', 'Upload your certificate template', NULL, NULL),
(633, 3, 'Upload', 'Upload', NULL, NULL),
(634, 3, 'Certificate elements', 'Certificate elements', NULL, NULL),
(635, 3, 'Available Variable Data', 'Available Variable Data', NULL, NULL),
(636, 3, 'Add a new element', 'Add a new element', NULL, NULL),
(637, 3, 'Enter Text with variable data', 'Enter Text with variable data', NULL, NULL),
(638, 3, 'Total Lesson', 'Total Lesson', NULL, NULL),
(639, 3, 'Choice a font-family', 'Choice a font-family', NULL, NULL),
(640, 3, 'Default', 'Default', NULL, NULL),
(641, 3, 'Pinyon Script', 'Pinyon Script', NULL, NULL),
(642, 3, 'Font Size', 'Font Size', NULL, NULL),
(643, 3, 'Save Template', 'Save Template', NULL, NULL),
(644, 3, 'Certificate builder template has been updated', 'Certificate builder template has been updated', NULL, NULL),
(645, 3, 'Progress', 'Progress', NULL, NULL),
(646, 3, 'Start Now', 'Start Now', NULL, NULL),
(647, 3, 'Course Playing Page', 'Course Playing Page', NULL, NULL),
(648, 3, 'Summary', 'Summary', NULL, NULL),
(649, 3, 'Forum', 'Forum', NULL, NULL),
(650, 3, 'Class Schedules', 'Class Schedules', NULL, NULL),
(651, 3, 'Topic', 'Topic', NULL, NULL),
(652, 3, 'Date & time', 'Date & time', NULL, NULL),
(653, 3, 'Keep up the great work!', 'Keep up the great work!', NULL, NULL),
(654, 3, 'Your dedication to ongoing progress is inspiring.', 'Your dedication to ongoing progress is inspiring.', NULL, NULL),
(655, 3, 'Every step forward is a testament to your commitment to growth and excellence.', 'Every step forward is a testament to your commitment to growth and excellence.', NULL, NULL),
(656, 3, 'Stay focused, stay determined, and continue to push yourself to new heights.', 'Stay focused, stay determined, and continue to push yourself to new heights.', NULL, NULL),
(657, 3, 'You have got this!', 'You have got this!', NULL, NULL),
(658, 3, 'Search answers here', 'Search answers here', NULL, NULL),
(659, 3, 'Questions in this course', 'Questions in this course', NULL, NULL),
(660, 3, 'Ask question', 'Ask question', NULL, NULL),
(661, 3, 'Completed', 'Completed', NULL, NULL),
(662, 3, 'Enter title', 'Enter title', NULL, NULL),
(663, 3, 'Section added successfully', 'Section added successfully', NULL, NULL),
(664, 3, 'Add new lesson', 'Add new lesson', NULL, NULL),
(665, 3, 'Add lesson', 'Add lesson', NULL, NULL),
(666, 3, 'Add new quiz', 'Add new quiz', NULL, NULL),
(667, 3, 'Add quiz', 'Add quiz', NULL, NULL),
(668, 3, 'Sort sections', 'Sort sections', NULL, NULL),
(669, 3, 'Sort Section', 'Sort Section', NULL, NULL),
(670, 3, 'Edit section', 'Edit section', NULL, NULL),
(671, 3, 'Delete section', 'Delete section', NULL, NULL),
(672, 3, 'No lessons are available.', 'No lessons are available.', NULL, NULL),
(673, 3, 'Select lesson type', 'Select lesson type', NULL, NULL),
(674, 3, 'YouTube Video', 'YouTube Video', NULL, NULL),
(675, 3, 'Vimeo Video', 'Vimeo Video', NULL, NULL),
(676, 3, 'Video file', 'Video file', NULL, NULL),
(677, 3, 'Video url [ .mp4 ]', 'Video url [ .mp4 ]', NULL, NULL),
(678, 3, 'Google drive video', 'Google drive video', NULL, NULL),
(679, 3, 'Document file', 'Document file', NULL, NULL),
(680, 3, 'Text', 'Text', NULL, NULL),
(681, 3, 'Iframe embed', 'Iframe embed', NULL, NULL),
(682, 3, 'Next', 'Next', NULL, NULL),
(683, 3, 'Lesson type', 'Lesson type', NULL, NULL),
(684, 3, 'Change', 'Change', NULL, NULL),
(685, 3, 'Enter your text', 'Enter your text', NULL, NULL),
(686, 3, 'Do you want to keep it free as a preview lesson', 'Do you want to keep it free as a preview lesson', NULL, NULL),
(687, 3, 'Mark as free lesson', 'Mark as free lesson', NULL, NULL),
(688, 3, 'lesson added successfully', 'lesson added successfully', NULL, NULL),
(689, 3, 'Sort lessons', 'Sort lessons', NULL, NULL),
(690, 3, 'Edit lesson', 'Edit lesson', NULL, NULL),
(691, 3, 'Delete lesson', 'Delete lesson', NULL, NULL),
(692, 3, 'Congratulations!', 'Congratulations!', NULL, NULL),
(693, 3, 'Your hard work has paid off. Here is to new beginnings and endless opportunities ahead!', 'Your hard work has paid off. Here is to new beginnings and endless opportunities ahead!', NULL, NULL),
(694, 3, 'Get Certificate', 'Get Certificate', NULL, NULL),
(695, 3, 'Download Certificate', 'Download Certificate', NULL, NULL),
(696, 3, 'Download', 'Download', NULL, NULL),
(697, 3, 'Auto', 'Auto', NULL, NULL),
(698, 3, 'Continue', 'Continue', NULL, NULL),
(699, 3, 'Shopping cart', 'Shopping cart', NULL, NULL),
(700, 3, 'Cart items', 'Cart items', NULL, NULL),
(701, 3, 'Payment summary', 'Payment summary', NULL, NULL),
(702, 3, 'Sub total', 'Sub total', NULL, NULL),
(703, 3, 'Tax', 'Tax', NULL, NULL),
(704, 3, '%', '%', NULL, NULL),
(705, 3, 'Apply coupon', 'Apply coupon', NULL, NULL),
(706, 3, 'Send as a gift', 'Send as a gift', NULL, NULL),
(707, 3, 'Enter user email', 'Enter user email', NULL, NULL),
(708, 3, 'Continue to payment', 'Continue to payment', NULL, NULL),
(709, 3, 'Payment failed! Please try again.', 'Payment failed! Please try again.', NULL, NULL),
(710, 3, 'Parent category', 'Parent category', NULL, NULL),
(711, 3, '- Mark it as parent -', '- Mark it as parent -', NULL, NULL),
(712, 3, 'Choose category thumbnail', 'Choose category thumbnail', NULL, NULL),
(713, 3, 'Choose category Logo', 'Choose category Logo', NULL, NULL),
(714, 3, 'Category updated successfully', 'Category updated successfully', NULL, NULL),
(715, 3, 'Enable the Fileinfo extension on your server to upload files.', 'Enable the Fileinfo extension on your server to upload files.', NULL, NULL),
(716, 3, 'Fileinfo extension', 'Fileinfo extension', NULL, NULL),
(717, 3, 'Enable this Fileinfo extension on your server to upload files', 'Enable this Fileinfo extension on your server to upload files', NULL, NULL),
(718, 3, 'paytm merchant key', 'paytm merchant key', NULL, NULL),
(719, 3, 'paytm merchant mid', 'paytm merchant mid', NULL, NULL),
(720, 3, 'paytm merchant website', 'paytm merchant website', NULL, NULL),
(721, 3, 'industry type id', 'industry type id', NULL, NULL),
(722, 3, 'channel id', 'channel id', NULL, NULL),
(723, 3, 'Payment settings update successfully', 'Payment settings update successfully', NULL, NULL),
(724, 3, 'Configure ZOOM server-to-server-oauth credentials', 'Configure ZOOM server-to-server-oauth credentials', NULL, NULL),
(725, 3, 'Account Email', 'Account Email', NULL, NULL),
(726, 3, 'Account ID', 'Account ID', NULL, NULL),
(727, 3, 'Client ID', 'Client ID', NULL, NULL),
(728, 3, 'Client Secret', 'Client Secret', NULL, NULL),
(729, 3, 'Do you want to use Web SDK for your live class?', 'Do you want to use Web SDK for your live class?', NULL, NULL),
(730, 3, 'Meeting SDK Client ID', 'Meeting SDK Client ID', NULL, NULL),
(731, 3, 'Meeting SDK Client Secret', 'Meeting SDK Client Secret', NULL, NULL),
(732, 3, 'Enroll delete successfully', 'Enroll delete successfully', NULL, NULL),
(733, 3, '500 error found', '500 error found', NULL, NULL),
(734, 3, 'A technical error has occurred', 'A technical error has occurred', NULL, NULL),
(735, 3, 'Please contact with site administrator', 'Please contact with site administrator', NULL, NULL),
(736, 3, 'please_do_not_refresh_this_page', 'please_do_not_refresh_this_page', NULL, NULL),
(737, 3, 'Please do not refresh this page', 'Please do not refresh this page', NULL, NULL),
(738, 3, 'User', 'User', NULL, NULL),
(739, 3, 'Item', 'Item', NULL, NULL),
(740, 3, 'Paid amount', 'Paid amount', NULL, NULL),
(741, 3, 'Payment method', 'Payment method', NULL, NULL),
(742, 3, 'Purchased date', 'Purchased date', NULL, NULL),
(743, 3, 'Invoice', 'Invoice', NULL, NULL),
(744, 3, 'Select an option', 'Select an option', NULL, NULL),
(745, 3, 'Total Mark', 'Total Mark', NULL, NULL),
(746, 3, 'Pass Mark', 'Pass Mark', NULL, NULL),
(747, 3, 'Retake', 'Retake', NULL, NULL),
(748, 3, 'Quiz has been created.', 'Quiz has been created.', NULL, NULL),
(749, 3, 'Result', 'Result', NULL, NULL),
(750, 3, 'Edit quiz', 'Edit quiz', NULL, NULL),
(751, 3, 'Update Quiz', 'Update Quiz', NULL, NULL),
(752, 3, 'Add Question', 'Add Question', NULL, NULL),
(753, 3, 'Question Type', 'Question Type', NULL, NULL),
(754, 3, 'Multiple Choice', 'Multiple Choice', NULL, NULL),
(755, 3, 'Fill in the blanks', 'Fill in the blanks', NULL, NULL),
(756, 3, 'True or False', 'True or False', NULL, NULL),
(757, 3, 'Write question', 'Write question', NULL, NULL),
(758, 3, 'Your questions here', 'Your questions here', NULL, NULL);
INSERT INTO `language_phrases` (`id`, `language_id`, `phrase`, `translated`, `created_at`, `updated_at`) VALUES
(759, 3, 'You can keep multiple options. Just put an option and hit enter.', 'You can keep multiple options. Just put an option and hit enter.', NULL, NULL),
(760, 3, 'You can select multiple answers.', 'You can select multiple answers.', NULL, NULL),
(761, 3, 'Manage Course', 'Manage Course', NULL, NULL),
(762, 3, 'Time left : ', 'Time left : ', NULL, NULL),
(763, 3, 'Hour', 'Hour', NULL, NULL),
(764, 3, 'Minute', 'Minute', NULL, NULL),
(765, 3, 'Second', 'Second', NULL, NULL),
(766, 3, 'Total Marks', 'Total Marks', NULL, NULL),
(767, 3, 'Pass Marks', 'Pass Marks', NULL, NULL),
(768, 3, 'Attempts', 'Attempts', NULL, NULL),
(769, 3, 'Total Question', 'Total Question', NULL, NULL),
(770, 3, 'Start Quiz', 'Start Quiz', NULL, NULL),
(771, 3, 'Quiz has been updated.', 'Quiz has been updated.', NULL, NULL),
(772, 3, 'Question has been added.', 'Question has been added.', NULL, NULL),
(773, 3, 'Sort Questions', 'Sort Questions', NULL, NULL),
(774, 3, 'Edit Question', 'Edit Question', NULL, NULL),
(775, 3, 'Update Question', 'Update Question', NULL, NULL),
(776, 3, 'Watermark Type', 'Watermark Type', NULL, NULL),
(777, 3, 'Js Watermark', 'Js Watermark', NULL, NULL),
(778, 3, 'FFMpeg', 'FFMpeg', NULL, NULL),
(779, 3, 'Watermark', 'Watermark', NULL, NULL),
(780, 3, 'Opacity', 'Opacity', NULL, NULL),
(781, 3, 'Opacity (0 - 100)', 'Opacity (0 - 100)', NULL, NULL),
(782, 3, 'Width', 'Width', NULL, NULL),
(783, 3, 'Width (px)', 'Width (px)', NULL, NULL),
(784, 3, 'Height', 'Height', NULL, NULL),
(785, 3, 'Height (px)', 'Height (px)', NULL, NULL),
(786, 3, 'Top', 'Top', NULL, NULL),
(787, 3, 'Top (px)', 'Top (px)', NULL, NULL),
(788, 3, 'Left (px)', 'Left (px)', NULL, NULL),
(789, 3, 'Enter your html5 video url', 'Enter your html5 video url', NULL, NULL),
(790, 3, 'The image size should be', 'The image size should be', NULL, NULL),
(791, 3, 'Caption', 'Caption', NULL, NULL),
(792, 3, '.vtt', '.vtt', NULL, NULL),
(793, 3, 'Animation speed', 'Animation speed', NULL, NULL),
(794, 3, 'Second (0 - 200)', 'Second (0 - 200)', NULL, NULL),
(795, 3, 'Your changes has been saved.', 'Your changes has been saved.', NULL, NULL),
(796, 3, 'Second (0 - 10000)', 'Second (0 - 10000)', NULL, NULL),
(797, 3, 'by', 'by', NULL, NULL),
(798, 3, 'Find A Tutor', 'Find A Tutor', NULL, NULL),
(799, 3, 'Tutor Booking', 'Tutor Booking', NULL, NULL),
(800, 3, 'Subjects', 'Subjects', NULL, NULL),
(801, 3, 'Subject Category', 'Subject Category', NULL, NULL),
(802, 3, 'It is a long established fact that a reader will be the distract by the read content of a page layout.', 'It is a long established fact that a reader will be the distract by the read content of a page layout.', NULL, NULL),
(803, 3, 'Knowledge Base', 'Knowledge Base', NULL, NULL),
(804, 3, 'Timezone', 'Timezone', NULL, NULL),
(805, 3, 'System settings update successfully', 'System settings update successfully', NULL, NULL),
(806, 3, 'Start learning from the world\'s pro', 'Start learning from the world\'s pro', NULL, NULL),
(807, 3, 'instructors', 'instructors', NULL, NULL),
(808, 3, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum.', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum.', NULL, NULL),
(809, 3, 'Fast Performance', 'Fast Performance', NULL, NULL),
(810, 3, 'It is a long established fact that a reader will be distracted.', 'It is a long established fact that a reader will be distracted.', NULL, NULL),
(811, 3, 'Perfect Responsive', 'Perfect Responsive', NULL, NULL),
(812, 3, 'Fast & Friendly Support', 'Fast & Friendly Support', NULL, NULL),
(813, 3, 'Easy to Use', 'Easy to Use', NULL, NULL),
(814, 3, 'Explore Top Courses Caterories', 'Explore Top Courses Caterories', NULL, NULL),
(815, 3, 'View All Courses', 'View All Courses', NULL, NULL),
(816, 3, '150k +', '150k +', NULL, NULL),
(817, 3, 'Know About Us', 'Know About Us', NULL, NULL),
(818, 3, 'Learn & Grow Your Skills From', 'Learn & Grow Your Skills From', NULL, NULL),
(819, 3, 'Educate', 'Educate', NULL, NULL),
(820, 3, 'Life time Access', 'Life time Access', NULL, NULL),
(821, 3, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', NULL, NULL),
(822, 3, 'Learn from Anywhere', 'Learn from Anywhere', NULL, NULL),
(823, 3, 'More about us', 'More about us', NULL, NULL),
(824, 3, 'Testimonial', 'Testimonial', NULL, NULL),
(825, 3, 'What our clients says about us', 'What our clients says about us', NULL, NULL),
(826, 3, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of use Lorem Ipsum.', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of use Lorem Ipsum.', NULL, NULL),
(827, 3, 'Linchon Philips', 'Linchon Philips', NULL, NULL),
(828, 3, 'CEO @ Yahoo', 'CEO @ Yahoo', NULL, NULL),
(829, 3, 'Have a look on our news', 'Have a look on our news', NULL, NULL),
(830, 3, 'View All Blogs', 'View All Blogs', NULL, NULL),
(831, 3, 'Recaptcha', 'Recaptcha', NULL, NULL),
(832, 3, 'store key', 'store key', NULL, NULL),
(833, 3, 'store password', 'store password', NULL, NULL),
(834, 3, 'store live key', 'store live key', NULL, NULL),
(835, 3, 'store live password', 'store live password', NULL, NULL),
(836, 3, 'sslcz testmode', 'sslcz testmode', NULL, NULL),
(837, 3, 'is localhost', 'is localhost', NULL, NULL),
(838, 3, 'sslcz live testmode', 'sslcz live testmode', NULL, NULL),
(839, 3, 'is live localhost', 'is live localhost', NULL, NULL),
(840, 3, 'store id', 'store id', NULL, NULL),
(841, 3, 'signature key', 'signature key', NULL, NULL),
(842, 3, 'store live id', 'store live id', NULL, NULL),
(843, 3, 'signature live key', 'signature live key', NULL, NULL),
(844, 3, 'merchant id', 'merchant id', NULL, NULL),
(845, 3, 'merchant password', 'merchant password', NULL, NULL),
(846, 3, 'merchant live id', 'merchant live id', NULL, NULL),
(847, 3, 'merchant live password', 'merchant live password', NULL, NULL),
(848, 3, 'Manage SEO Settings', 'Manage SEO Settings', NULL, NULL),
(849, 3, 'Meta Title', 'Meta Title', NULL, NULL),
(850, 3, 'Meta Keywords', 'Meta Keywords', NULL, NULL),
(851, 3, 'Writing your keyword and hit the enter', 'Writing your keyword and hit the enter', NULL, NULL),
(852, 3, 'Meta Description', 'Meta Description', NULL, NULL),
(853, 3, 'Meta Robot', 'Meta Robot', NULL, NULL),
(854, 3, ' Canonical Url', ' Canonical Url', NULL, NULL),
(855, 3, ' Custom Url', ' Custom Url', NULL, NULL),
(856, 3, 'Og Title', 'Og Title', NULL, NULL),
(857, 3, 'Og Description', 'Og Description', NULL, NULL),
(858, 3, 'Og Image', 'Og Image', NULL, NULL),
(859, 3, 'Json Id', 'Json Id', NULL, NULL),
(860, 3, 'Soporte', 'Soporte', NULL, NULL),
(861, 3, 'Documentation', 'Documentation', NULL, NULL),
(862, 3, 'video tutorial', 'video tutorial', NULL, NULL),
(863, 3, 'Contact information update successfully', 'Contact information update successfully', NULL, NULL),
(864, 3, 'Enter your page name', 'Enter your page name', NULL, NULL),
(865, 3, 'Notification settings', 'Notification settings', NULL, NULL),
(866, 3, 'Protocol', 'Protocol', NULL, NULL),
(867, 3, 'Smtp crypto', 'Smtp crypto', NULL, NULL),
(868, 3, 'Smtp host', 'Smtp host', NULL, NULL),
(869, 3, 'Smtp port', 'Smtp port', NULL, NULL),
(870, 3, 'Smtp from email', 'Smtp from email', NULL, NULL),
(871, 3, 'Smtp username', 'Smtp username', NULL, NULL),
(872, 3, 'Smtp password', 'Smtp password', NULL, NULL),
(873, 3, 'Select Language to Replace', 'Select Language to Replace', NULL, NULL),
(874, 3, 'Manage content', 'Manage content', NULL, NULL),
(875, 3, 'Text editor', 'Text editor', NULL, NULL),
(876, 3, 'Text color', 'Text color', NULL, NULL),
(877, 3, 'Padding', 'Padding', NULL, NULL),
(878, 3, 'Margin', 'Margin', NULL, NULL),
(879, 3, 'Border', 'Border', NULL, NULL),
(880, 3, 'none', 'none', NULL, NULL),
(881, 3, 'dashed', 'dashed', NULL, NULL),
(882, 3, 'dotted', 'dotted', NULL, NULL),
(883, 3, 'Border roundness', 'Border roundness', NULL, NULL),
(884, 3, 'Border color', 'Border color', NULL, NULL),
(885, 3, 'Background color', 'Background color', NULL, NULL),
(886, 3, 'Page layout has been updated', 'Page layout has been updated', NULL, NULL),
(887, 3, 'La plataforma líder en aprendizaje online', 'La plataforma líder en aprendizaje online', NULL, NULL),
(888, 3, 'Empieza a aprender con instructores expertos', 'Empieza a aprender con instructores expertos', NULL, NULL),
(889, 3, 'Docentes', 'Docentes', NULL, NULL),
(890, 3, 'Aprende de instructores expertos con experiencia real. Conviértete en la mejor versión de ti mismo, desde casa y a tu ritmo.', 'Aprende de instructores expertos con experiencia real. Conviértete en la mejor versión de ti mismo, desde casa y a tu ritmo.', NULL, NULL),
(891, 3, 'Comienza Ahora!', 'Comienza Ahora!', NULL, NULL),
(892, 3, 'Plataforma Rapida', 'Plataforma Rapida', NULL, NULL),
(893, 3, 'Nuestra plataforma es veloz y confiable.', 'Nuestra plataforma es veloz y confiable.', NULL, NULL),
(894, 3, 'Estudia donde quieras', 'Estudia donde quieras', NULL, NULL),
(895, 3, 'Desde tu celular, tablet o laptop, lleva tus cursos siempre contigo, sin complicaciones.', 'Desde tu celular, tablet o laptop, lleva tus cursos siempre contigo, sin complicaciones.', NULL, NULL),
(896, 3, 'Soporte rápido', 'Soporte rápido', NULL, NULL),
(897, 3, 'Nuestro equipo te responde rápido y con buena onda. No estás solo, estamos para ayudarte.', 'Nuestro equipo te responde rápido y con buena onda. No estás solo, estamos para ayudarte.', NULL, NULL),
(898, 3, 'Facil de Usar', 'Facil de Usar', NULL, NULL),
(899, 3, 'Diseñada para que aprendas sin complicaciones, incluso si es tu primera vez.', 'Diseñada para que aprendas sin complicaciones, incluso si es tu primera vez.', NULL, NULL),
(900, 3, 'Top de categoría de los cursos', 'Top de categoría de los cursos', NULL, NULL),
(901, 3, 'Cursos destacados', 'Cursos destacados', NULL, NULL),
(902, 3, 'Desarrolla tus habilidades con los mejores', 'Desarrolla tus habilidades con los mejores', NULL, NULL),
(903, 3, 'Lo que nuestros clientes dicen sobre nosotros', 'Lo que nuestros clientes dicen sobre nosotros', NULL, NULL),
(904, 3, 'Echa un vistazo a nuestras noticias', 'Echa un vistazo a nuestras noticias', NULL, NULL),
(905, 4, 'Log In', 'Log In', '2025-08-21 17:16:33', NULL),
(906, 4, 'Login', 'Login', '2025-08-21 17:16:33', NULL),
(907, 4, 'See your growth and get consulting support!', 'See your growth and get consulting support!', '2025-08-21 17:16:33', NULL),
(908, 4, 'Email', 'Email', '2025-08-21 17:16:33', NULL),
(909, 4, 'Your Email', 'Your Email', '2025-08-21 17:16:33', NULL),
(910, 4, 'Password', 'Password', '2025-08-21 17:16:33', NULL),
(911, 4, 'Remember Me', 'Remember Me', '2025-08-21 17:16:33', NULL),
(912, 4, 'Forget Password?', 'Forget Password?', '2025-08-21 17:16:33', NULL),
(913, 4, 'Not have an account yet?', 'Not have an account yet?', '2025-08-21 17:16:33', NULL),
(914, 4, 'Create Account', 'Create Account', '2025-08-21 17:16:33', NULL),
(915, 4, 'Home', 'Home', '2025-08-21 17:16:33', NULL),
(916, 4, 'Courses', 'Courses', '2025-08-21 17:16:33', NULL),
(917, 4, 'All Courses', 'All Courses', '2025-08-21 17:16:33', NULL),
(918, 4, 'Bootcamp', 'Bootcamp', '2025-08-21 17:16:33', NULL),
(919, 4, 'Search...', 'Search...', '2025-08-21 17:16:33', NULL),
(920, 4, 'Search courses', 'Search courses', '2025-08-21 17:16:33', NULL),
(921, 4, 'Cart', 'Cart', '2025-08-21 17:16:33', NULL),
(922, 4, 'Sign Up', 'Sign Up', '2025-08-21 17:16:33', NULL),
(923, 4, 'Contact with Us', 'Contact with Us', '2025-08-21 17:16:33', NULL),
(924, 4, 'Top Categories', 'Top Categories', '2025-08-21 17:16:33', NULL),
(925, 4, 'Useful links', 'Useful links', '2025-08-21 17:16:33', NULL),
(926, 4, 'Course', 'Course', '2025-08-21 17:16:33', NULL),
(927, 4, 'Blog', 'Blog', '2025-08-21 17:16:33', NULL),
(928, 4, 'Company', 'Company', '2025-08-21 17:16:33', NULL),
(929, 4, 'Phone : ', 'Phone : ', '2025-08-21 17:16:33', NULL),
(930, 4, 'Email : ', 'Email : ', '2025-08-21 17:16:33', NULL),
(931, 4, 'Email address', 'Email address', '2025-08-21 17:16:33', NULL),
(932, 4, 'Submit', 'Submit', '2025-08-21 17:16:33', NULL),
(933, 4, 'About Us', 'About Us', '2025-08-21 17:16:33', NULL),
(934, 4, 'Privacy Policy', 'Privacy Policy', '2025-08-21 17:16:33', NULL),
(935, 4, 'Terms And Use', 'Terms And Use', '2025-08-21 17:16:33', NULL),
(936, 4, 'Sales and Refunds', 'Sales and Refunds', '2025-08-21 17:16:33', NULL),
(937, 4, 'FAQ', 'FAQ', '2025-08-21 17:16:33', NULL),
(938, 4, 'Close', 'Close', '2025-08-21 17:16:33', NULL),
(939, 4, 'Are you sure?', 'Are you sure?', '2025-08-21 17:16:33', NULL),
(940, 4, 'You can\'t bring it back!', 'You can\'t bring it back!', '2025-08-21 17:16:33', NULL),
(941, 4, 'Cancel', 'Cancel', '2025-08-21 17:16:33', NULL),
(942, 4, 'Yes, I\'m sure', 'Yes, I\'m sure', '2025-08-21 17:16:33', NULL),
(943, 4, 'Just Now', 'Just Now', '2025-08-21 17:16:33', NULL),
(944, 4, 'Success !', 'Success !', '2025-08-21 17:16:34', NULL),
(945, 4, 'Attention !', 'Attention !', '2025-08-21 17:16:34', NULL),
(946, 4, 'An Error Occurred !', 'An Error Occurred !', '2025-08-21 17:16:34', NULL),
(947, 4, 'Remove from wishlist', 'Remove from wishlist', '2025-08-21 17:16:34', NULL),
(948, 4, 'This course added to your wishlist', 'This course added to your wishlist', '2025-08-21 17:16:34', NULL),
(949, 4, 'Add to wishlist', 'Add to wishlist', '2025-08-21 17:16:34', NULL),
(950, 4, 'This course removed from your wishlist', 'This course removed from your wishlist', '2025-08-21 17:16:34', NULL),
(951, 4, 'Enter your keywords', 'Enter your keywords', '2025-08-21 17:16:34', NULL),
(952, 4, 'Show less', 'Show less', '2025-08-21 17:16:34', NULL),
(953, 4, 'Show more', 'Show more', '2025-08-21 17:16:34', NULL),
(954, 4, 'Showing', 'Showing', '2025-08-21 17:16:34', NULL),
(955, 4, 'of', 'of', '2025-08-21 17:16:34', NULL),
(956, 4, 'data', 'data', '2025-08-21 17:16:34', NULL),
(957, 4, 'Grid', 'Grid', '2025-08-21 17:16:34', NULL),
(958, 4, 'List', 'List', '2025-08-21 17:16:34', NULL),
(959, 4, 'Filter', 'Filter', '2025-08-21 17:16:34', NULL),
(960, 4, 'Categories', 'Categories', '2025-08-21 17:16:34', NULL),
(961, 4, 'Price', 'Price', '2025-08-21 17:16:34', NULL),
(962, 4, 'Paid', 'Paid', '2025-08-21 17:16:34', NULL),
(963, 4, 'Discount', 'Discount', '2025-08-21 17:16:34', NULL),
(964, 4, 'Free', 'Free', '2025-08-21 17:16:34', NULL),
(965, 4, 'Level', 'Level', '2025-08-21 17:16:34', NULL),
(966, 4, 'Beginner', 'Beginner', '2025-08-21 17:16:34', NULL),
(967, 4, 'Intermediate', 'Intermediate', '2025-08-21 17:16:34', NULL),
(968, 4, 'Advanced', 'Advanced', '2025-08-21 17:16:34', NULL),
(969, 4, 'language', 'language', '2025-08-21 17:16:34', NULL),
(970, 4, 'English', 'English', '2025-08-21 17:16:34', NULL),
(971, 4, 'Spanish', 'Spanish', '2025-08-21 17:16:34', NULL),
(972, 4, 'Italic', 'Italic', '2025-08-21 17:16:34', NULL),
(973, 4, 'German', 'German', '2025-08-21 17:16:34', NULL),
(974, 4, 'Ratings', 'Ratings', '2025-08-21 17:16:34', NULL),
(975, 4, 'No data found !', 'No data found !', '2025-08-21 17:16:34', NULL),
(976, 4, 'Please attempt utilizing the suitable keywords in your search query to obtain more precise results.', 'Please attempt utilizing the suitable keywords in your search query to obtain more precise results.', '2025-08-21 17:16:34', NULL),
(977, 4, 'Back', 'Back', '2025-08-21 17:16:34', NULL),
(978, 4, 'Dashboard', 'Dashboard', '2025-08-21 17:16:34', NULL),
(979, 4, 'Number of Courses', 'Number of Courses', '2025-08-21 17:16:34', NULL),
(980, 4, 'Number of Lessons', 'Number of Lessons', '2025-08-21 17:16:34', NULL),
(981, 4, 'Number of Enrollment', 'Number of Enrollment', '2025-08-21 17:16:34', NULL),
(982, 4, 'Number of Students', 'Number of Students', '2025-08-21 17:16:34', NULL),
(983, 4, 'Number of Instructor', 'Number of Instructor', '2025-08-21 17:16:34', NULL),
(984, 4, 'Admin Revenue This Year', 'Admin Revenue This Year', '2025-08-21 17:16:34', NULL),
(985, 4, 'Admin Revenue', 'Admin Revenue', '2025-08-21 17:16:34', NULL),
(986, 4, 'Course Status', 'Course Status', '2025-08-21 17:16:34', NULL),
(987, 4, 'Explore Courses', 'Explore Courses', '2025-08-21 17:16:34', NULL),
(988, 4, 'Active', 'Active', '2025-08-21 17:16:34', NULL),
(989, 4, 'Upcoming', 'Upcoming', '2025-08-21 17:16:34', NULL),
(990, 4, 'Pending', 'Pending', '2025-08-21 17:16:34', NULL),
(991, 4, 'Private', 'Private', '2025-08-21 17:16:34', NULL),
(992, 4, 'Draft', 'Draft', '2025-08-21 17:16:34', NULL),
(993, 4, 'Inactive', 'Inactive', '2025-08-21 17:16:34', NULL),
(994, 4, 'Pending Requested withdrawal', 'Pending Requested withdrawal', '2025-08-21 17:16:34', NULL),
(995, 4, 'Instructor Payout', 'Instructor Payout', '2025-08-21 17:16:34', NULL),
(996, 4, 'Main Menu', 'Main Menu', '2025-08-21 17:16:34', NULL),
(997, 4, 'Category', 'Category', '2025-08-21 17:16:34', NULL),
(998, 4, 'Manage Courses', 'Manage Courses', '2025-08-21 17:16:34', NULL),
(999, 4, 'Add New Course', 'Add New Course', '2025-08-21 17:16:34', NULL),
(1000, 4, 'Coupons', 'Coupons', '2025-08-21 17:16:34', NULL),
(1001, 4, 'Manage Bootcamps', 'Manage Bootcamps', '2025-08-21 17:16:34', NULL),
(1002, 4, 'Add New Bootcamp', 'Add New Bootcamp', '2025-08-21 17:16:34', NULL),
(1003, 4, 'Purchase History', 'Purchase History', '2025-08-21 17:16:34', NULL),
(1004, 4, 'Student enrollment', 'Student enrollment', '2025-08-21 17:16:34', NULL),
(1005, 4, 'Course enrollment', 'Course enrollment', '2025-08-21 17:16:34', NULL),
(1006, 4, 'Enrollment History', 'Enrollment History', '2025-08-21 17:16:34', NULL),
(1007, 4, 'Enroll student', 'Enroll student', '2025-08-21 17:16:34', NULL),
(1008, 4, 'Payment Report', 'Payment Report', '2025-08-21 17:16:34', NULL),
(1009, 4, 'Offline payments', 'Offline payments', '2025-08-21 17:16:34', NULL),
(1010, 4, 'Instructor Revenue', 'Instructor Revenue', '2025-08-21 17:16:34', NULL),
(1011, 4, 'Payment History', 'Payment History', '2025-08-21 17:16:34', NULL),
(1012, 4, 'Users', 'Users', '2025-08-21 17:16:34', NULL),
(1013, 4, 'Admin', 'Admin', '2025-08-21 17:16:34', NULL),
(1014, 4, 'Manage Admin', 'Manage Admin', '2025-08-21 17:16:34', NULL),
(1015, 4, 'Add New Admin', 'Add New Admin', '2025-08-21 17:16:34', NULL),
(1016, 4, 'Instructor', 'Instructor', '2025-08-21 17:16:34', NULL),
(1017, 4, 'Manage Instructors', 'Manage Instructors', '2025-08-21 17:16:34', NULL),
(1018, 4, 'Add new Instructor', 'Add new Instructor', '2025-08-21 17:16:34', NULL),
(1019, 4, 'Instructor Setting', 'Instructor Setting', '2025-08-21 17:16:34', NULL),
(1020, 4, 'Application', 'Application', '2025-08-21 17:16:34', NULL),
(1021, 4, 'Student', 'Student', '2025-08-21 17:16:34', NULL),
(1022, 4, 'Manage Students', 'Manage Students', '2025-08-21 17:16:34', NULL),
(1023, 4, 'Add new Student', 'Add new Student', '2025-08-21 17:16:34', NULL),
(1024, 4, 'Message', 'Message', '2025-08-21 17:16:34', NULL),
(1025, 4, 'Newsletter', 'Newsletter', '2025-08-21 17:16:34', NULL),
(1026, 4, 'Manage Newsletters', 'Manage Newsletters', '2025-08-21 17:16:34', NULL),
(1027, 4, 'Subscribed User', 'Subscribed User', '2025-08-21 17:16:34', NULL),
(1028, 4, 'Contacts', 'Contacts', '2025-08-21 17:16:34', NULL),
(1029, 4, 'Blogs', 'Blogs', '2025-08-21 17:16:34', NULL),
(1030, 4, 'Manage Blogs', 'Manage Blogs', '2025-08-21 17:16:34', NULL),
(1031, 4, 'Pending Blogs', 'Pending Blogs', '2025-08-21 17:16:34', NULL),
(1032, 4, 'Settings', 'Settings', '2025-08-21 17:16:34', NULL),
(1033, 4, 'System Settings', 'System Settings', '2025-08-21 17:16:34', NULL),
(1034, 4, 'Website Settings', 'Website Settings', '2025-08-21 17:16:34', NULL),
(1035, 4, 'Payment Settings', 'Payment Settings', '2025-08-21 17:16:34', NULL),
(1036, 4, 'Manage Language', 'Manage Language', '2025-08-21 17:16:34', NULL),
(1037, 4, 'Live Class Settings', 'Live Class Settings', '2025-08-21 17:16:34', NULL),
(1038, 4, 'SMTP Settings', 'SMTP Settings', '2025-08-21 17:16:34', NULL),
(1039, 4, 'Certificate Settings', 'Certificate Settings', '2025-08-21 17:16:34', NULL),
(1040, 4, 'Player Settings', 'Player Settings', '2025-08-21 17:16:34', NULL),
(1041, 4, 'Open AI Settings', 'Open AI Settings', '2025-08-21 17:16:34', NULL),
(1042, 4, 'Home Page Builder', 'Home Page Builder', '2025-08-21 17:16:34', NULL),
(1043, 4, 'SEO Settings', 'SEO Settings', '2025-08-21 17:16:34', NULL),
(1044, 4, 'About', 'About', '2025-08-21 17:16:34', NULL),
(1045, 4, 'Manage Profile', 'Manage Profile', '2025-08-21 17:16:34', NULL),
(1046, 4, 'Admin Panel', 'Admin Panel', '2025-08-21 17:16:34', NULL),
(1047, 4, 'View site', 'View site', '2025-08-21 17:16:34', NULL),
(1048, 4, 'AI Assistant', 'AI Assistant', '2025-08-21 17:16:34', NULL),
(1049, 4, 'Help Center', 'Help Center', '2025-08-21 17:16:34', NULL),
(1050, 4, 'Read documentation', 'Read documentation', '2025-08-21 17:16:34', NULL),
(1051, 4, 'Watch video tutorial', 'Watch video tutorial', '2025-08-21 17:16:34', NULL),
(1052, 4, 'Get customer support', 'Get customer support', '2025-08-21 17:16:34', NULL),
(1053, 4, 'Order customization', 'Order customization', '2025-08-21 17:16:34', NULL),
(1054, 4, 'Request a new feature', 'Request a new feature', '2025-08-21 17:16:34', NULL),
(1055, 4, 'Get Services', 'Get Services', '2025-08-21 17:16:34', NULL),
(1056, 4, 'My Profile', 'My Profile', '2025-08-21 17:16:34', NULL),
(1057, 4, 'Sign Out', 'Sign Out', '2025-08-21 17:16:35', NULL),
(1058, 4, 'Confirm', 'Confirm', '2025-08-21 17:16:35', NULL),
(1059, 4, 'Loading', 'Loading', '2025-08-21 17:16:35', NULL),
(1060, 4, 'Website name', 'Website name', '2025-08-21 17:16:35', NULL),
(1061, 4, 'Website title', 'Website title', '2025-08-21 17:16:35', NULL),
(1062, 4, 'Website keywords', 'Website keywords', '2025-08-21 17:16:35', NULL),
(1063, 4, 'Website description', 'Website description', '2025-08-21 17:16:35', NULL),
(1064, 4, 'Author', 'Author', '2025-08-21 17:16:35', NULL),
(1065, 4, 'Slogan', 'Slogan', '2025-08-21 17:16:35', NULL),
(1066, 4, 'System email', 'System email', '2025-08-21 17:16:35', NULL),
(1067, 4, 'Address', 'Address', '2025-08-21 17:16:35', NULL),
(1068, 4, 'Phone', 'Phone', '2025-08-21 17:16:35', NULL),
(1069, 4, 'Youtube API key', 'Youtube API key', '2025-08-21 17:16:35', NULL),
(1070, 4, 'Get YouTube API key', 'Get YouTube API key', '2025-08-21 17:16:35', NULL),
(1071, 4, 'If you want to use Google Drive video, you need to enable the Google Drive service in this API', 'If you want to use Google Drive video, you need to enable the Google Drive service in this API', '2025-08-21 17:16:35', NULL),
(1072, 4, 'Vimeo API key', 'Vimeo API key', '2025-08-21 17:16:35', NULL),
(1073, 4, 'get Vimeo API key', 'get Vimeo API key', '2025-08-21 17:16:35', NULL),
(1074, 4, 'Purchase code', 'Purchase code', '2025-08-21 17:16:35', NULL),
(1075, 4, 'System language', 'System language', '2025-08-21 17:16:35', NULL),
(1076, 4, 'Course selling tax', 'Course selling tax', '2025-08-21 17:16:35', NULL),
(1077, 4, 'Enter 0 if you want to disable the tax option', 'Enter 0 if you want to disable the tax option', '2025-08-21 17:16:35', NULL),
(1078, 4, 'Device limitation', 'Device limitation', '2025-08-21 17:16:35', NULL),
(1079, 4, 'Footer text', 'Footer text', '2025-08-21 17:16:35', NULL),
(1080, 4, 'Footer link', 'Footer link', '2025-08-21 17:16:35', NULL),
(1081, 4, 'Save Changes', 'Save Changes', '2025-08-21 17:16:35', NULL),
(1082, 4, 'Update Product', 'Update Product', '2025-08-21 17:16:35', NULL),
(1083, 4, 'File', 'File', '2025-08-21 17:16:35', NULL),
(1084, 4, 'Update', 'Update', '2025-08-21 17:16:35', NULL),
(1085, 4, 'Version updated successfully', 'Version updated successfully', '2025-08-21 17:16:35', NULL),
(1086, 4, 'Select your service', 'Select your service', '2025-08-21 17:16:35', NULL),
(1087, 4, 'Course title', 'Course title', '2025-08-21 17:16:35', NULL),
(1088, 4, 'Course short description', 'Course short description', '2025-08-21 17:16:35', NULL),
(1089, 4, 'Course long description', 'Course long description', '2025-08-21 17:16:35', NULL),
(1090, 4, 'Course requirements', 'Course requirements', '2025-08-21 17:16:35', NULL),
(1091, 4, 'Course outcomes', 'Course outcomes', '2025-08-21 17:16:35', NULL),
(1092, 4, 'Course faq', 'Course faq', '2025-08-21 17:16:35', NULL),
(1093, 4, 'Course seo tags', 'Course seo tags', '2025-08-21 17:16:35', NULL),
(1094, 4, 'Course lesson text', 'Course lesson text', '2025-08-21 17:16:35', NULL),
(1095, 4, 'Course certificate text', 'Course certificate text', '2025-08-21 17:16:35', NULL),
(1096, 4, 'Course quiz text', 'Course quiz text', '2025-08-21 17:16:35', NULL),
(1097, 4, 'Course blog title', 'Course blog title', '2025-08-21 17:16:35', NULL),
(1098, 4, 'Course blog post', 'Course blog post', '2025-08-21 17:16:35', NULL),
(1099, 4, 'Course thumbnail', 'Course thumbnail', '2025-08-21 17:16:35', NULL),
(1100, 4, 'Enter your keyword', 'Enter your keyword', '2025-08-21 17:16:35', NULL),
(1101, 4, 'Generate', 'Generate', '2025-08-21 17:16:35', NULL),
(1102, 4, 'Generating', 'Generating', '2025-08-21 17:16:35', NULL),
(1103, 4, 'Your images', 'Your images', '2025-08-21 17:16:35', NULL),
(1104, 4, 'Generated text', 'Generated text', '2025-08-21 17:16:36', NULL),
(1105, 4, 'Copy', 'Copy', '2025-08-21 17:16:36', NULL),
(1106, 4, 'Copied', 'Copied', '2025-08-21 17:16:36', NULL),
(1107, 4, 'Not found', 'Not found', '2025-08-21 17:16:36', NULL),
(1108, 4, 'About This Application', 'About This Application', '2025-08-21 17:16:36', NULL),
(1109, 4, 'Software version', 'Software version', '2025-08-21 17:16:36', NULL),
(1110, 4, 'Laravel version', 'Laravel version', '2025-08-21 17:16:36', NULL),
(1111, 4, 'Check update', 'Check update', '2025-08-21 17:16:36', NULL),
(1112, 4, 'Php version', 'Php version', '2025-08-21 17:16:36', NULL),
(1113, 4, 'Curl enable', 'Curl enable', '2025-08-21 17:16:36', NULL),
(1114, 4, 'enabled', 'enabled', '2025-08-21 17:16:36', NULL),
(1115, 4, 'Product license', 'Product license', '2025-08-21 17:16:36', NULL),
(1116, 4, 'Enter valid purchase code', 'Enter valid purchase code', '2025-08-21 17:16:36', NULL),
(1117, 4, 'Customer support status', 'Customer support status', '2025-08-21 17:16:36', NULL),
(1118, 4, 'Support expiry date', 'Support expiry date', '2025-08-21 17:16:36', NULL),
(1119, 4, 'Customer name', 'Customer name', '2025-08-21 17:16:36', NULL),
(1120, 4, 'Customer support', 'Customer support', '2025-08-21 17:16:36', NULL),
(1121, 4, 'Payment setting', 'Payment setting', '2025-08-21 17:16:36', NULL),
(1122, 4, 'Currency Settings', 'Currency Settings', '2025-08-21 17:16:36', NULL),
(1123, 4, 'Heads up !!', 'Heads up !!', '2025-08-21 17:16:36', NULL),
(1124, 4, 'Ensure that the system currency and all active payment gateway currencies are same', 'Ensure that the system currency and all active payment gateway currencies are same', '2025-08-21 17:16:36', NULL),
(1125, 4, 'Select currency', 'Select currency', '2025-08-21 17:16:36', NULL),
(1126, 4, 'Currency position', 'Currency position', '2025-08-21 17:16:36', NULL),
(1127, 4, 'Left', 'Left', '2025-08-21 17:16:36', NULL),
(1128, 4, 'Right', 'Right', '2025-08-21 17:16:36', NULL),
(1129, 4, 'Left with a space', 'Left with a space', '2025-08-21 17:16:36', NULL),
(1130, 4, 'Right with a space', 'Right with a space', '2025-08-21 17:16:36', NULL),
(1131, 4, 'No', 'No', '2025-08-21 17:16:36', NULL),
(1132, 4, 'Yes', 'Yes', '2025-08-21 17:16:36', NULL),
(1133, 4, 'Want to keep test mode enabled', 'Want to keep test mode enabled', '2025-08-21 17:16:36', NULL),
(1134, 4, 'sandbox client id', 'sandbox client id', '2025-08-21 17:16:36', NULL),
(1135, 4, 'sandbox secret key', 'sandbox secret key', '2025-08-21 17:16:36', NULL),
(1136, 4, 'production client id', 'production client id', '2025-08-21 17:16:36', NULL),
(1137, 4, 'production secret key', 'production secret key', '2025-08-21 17:16:36', NULL),
(1138, 4, 'setting', 'setting', '2025-08-21 17:16:36', NULL),
(1139, 4, 'public key', 'public key', '2025-08-21 17:16:36', NULL),
(1140, 4, 'secret key', 'secret key', '2025-08-21 17:16:36', NULL),
(1141, 4, 'public live key', 'public live key', '2025-08-21 17:16:36', NULL),
(1142, 4, 'secret live key', 'secret live key', '2025-08-21 17:16:36', NULL),
(1143, 4, 'Choose an option', 'Choose an option', '2025-08-21 17:16:36', NULL),
(1144, 4, 'bank information', 'bank information', '2025-08-21 17:16:36', NULL),
(1145, 4, 'secret test key', 'secret test key', '2025-08-21 17:16:36', NULL),
(1146, 4, 'public test key', 'public test key', '2025-08-21 17:16:36', NULL),
(1147, 4, 'Cookie Policy', 'Cookie Policy', '2025-08-21 17:16:36', NULL),
(1148, 4, 'Accept', 'Accept', '2025-08-21 17:16:36', NULL),
(1149, 4, 'Learn More', 'Learn More', '2025-08-21 17:16:36', NULL),
(1150, 4, 'Students has Enrolled', 'Students has Enrolled', '2025-08-21 17:16:36', NULL),
(1151, 4, 'Page Builder', 'Page Builder', '2025-08-21 17:16:36', NULL),
(1152, 4, 'Create Page', 'Create Page', '2025-08-21 17:16:36', NULL),
(1153, 4, '#', '#', '2025-08-21 17:16:36', NULL),
(1154, 4, 'Page Name', 'Page Name', '2025-08-21 17:16:36', NULL),
(1155, 4, 'Status', 'Status', '2025-08-21 17:16:36', NULL),
(1156, 4, 'Action', 'Action', '2025-08-21 17:16:36', NULL),
(1157, 4, 'Edit Home Page', 'Edit Home Page', '2025-08-21 17:16:36', NULL),
(1158, 4, 'Edit Home', 'Edit Home', '2025-08-21 17:16:36', NULL),
(1159, 4, 'Preview', 'Preview', '2025-08-21 17:16:36', NULL),
(1160, 4, 'Edit Layout', 'Edit Layout', '2025-08-21 17:16:36', NULL),
(1161, 4, 'Edit Page', 'Edit Page', '2025-08-21 17:16:36', NULL),
(1162, 4, 'Edit', 'Edit', '2025-08-21 17:16:36', NULL),
(1163, 4, 'Delete', 'Delete', '2025-08-21 17:16:36', NULL),
(1164, 4, 'Home page activated', 'Home page activated', '2025-08-21 17:16:36', NULL),
(1165, 4, 'The Leader in online learning', 'The Leader in online learning', '2025-08-21 17:16:36', NULL),
(1166, 4, 'Get Started', 'Get Started', '2025-08-21 17:16:36', NULL),
(1167, 4, 'Special Featured Course', 'Special Featured Course', '2025-08-21 17:16:36', NULL),
(1168, 4, 'Those course highlights a handpicked course with exceptional content or exclusive offerings.', 'Those course highlights a handpicked course with exceptional content or exclusive offerings.', '2025-08-21 17:16:36', NULL),
(1169, 4, 'Why Choose Us', 'Why Choose Us', '2025-08-21 17:16:36', NULL),
(1170, 4, 'Happy student', 'Happy student', '2025-08-21 17:16:36', NULL),
(1171, 4, 'Quality educators', 'Quality educators', '2025-08-21 17:16:36', NULL),
(1172, 4, 'Premium courses', 'Premium courses', '2025-08-21 17:16:36', NULL),
(1173, 4, 'Cost-free course', 'Cost-free course', '2025-08-21 17:16:36', NULL),
(1174, 4, 'Top Rated Course', 'Top Rated Course', '2025-08-21 17:16:36', NULL),
(1175, 4, 'Top rated course showcases the highest-rated course based on student reviews and performance metrics.', 'Top rated course showcases the highest-rated course based on student reviews and performance metrics.', '2025-08-21 17:16:36', NULL),
(1176, 4, 'What the people Thinks About Us', 'What the people Thinks About Us', '2025-08-21 17:16:36', NULL),
(1177, 4, 'It highlights feedback and testimonials from users, reflecting their experiences and satisfaction.', 'It highlights feedback and testimonials from users, reflecting their experiences and satisfaction.', '2025-08-21 17:16:36', NULL),
(1178, 4, 'Frequently Asked Questions', 'Frequently Asked Questions', '2025-08-21 17:16:36', NULL),
(1179, 4, 'Our Latest Blog', 'Our Latest Blog', '2025-08-21 17:16:36', NULL),
(1180, 4, 'The latest blog highlights the most recent articles, updates, and insights from our platform.', 'The latest blog highlights the most recent articles, updates, and insights from our platform.', '2025-08-21 17:16:36', NULL),
(1181, 4, 'Wishlist', 'Wishlist', '2025-08-21 17:16:36', NULL),
(1182, 4, 'Log Out', 'Log Out', '2025-08-21 17:16:36', NULL),
(1183, 4, 'Logout', 'Logout', '2025-08-21 17:16:36', NULL),
(1184, 4, 'Admin Dashboard', 'Admin Dashboard', '2025-08-21 17:16:36', NULL),
(1185, 4, 'It is a long established fact that a reader will be the distract by the read content of a page layout', 'It is a long established fact that a reader will be the distract by the read content of a page layout', '2025-08-21 17:16:36', NULL),
(1186, 4, 'Subscribe to stay tuned for new web design and latest updates. Let\'s do it!', 'Subscribe to stay tuned for new web design and latest updates. Let\'s do it!', '2025-08-21 17:16:36', NULL),
(1187, 4, '© 2024 All Rights Reserved', '© 2024 All Rights Reserved', '2025-08-21 17:16:36', NULL),
(1188, 4, '404 not found', '404 not found', '2025-08-21 17:16:36', NULL),
(1189, 4, 'The page you requested could not be found', 'The page you requested could not be found', '2025-08-21 17:16:36', NULL),
(1190, 4, 'Please try the following', 'Please try the following', '2025-08-21 17:16:36', NULL),
(1191, 4, 'Check the spelling of the url', 'Check the spelling of the url', '2025-08-21 17:16:36', NULL),
(1192, 4, 'If you are still puzzled, click on the home link below', 'If you are still puzzled, click on the home link below', '2025-08-21 17:16:36', NULL),
(1193, 4, 'Back to home', 'Back to home', '2025-08-21 17:16:36', NULL),
(1194, 4, 'Become An Instructor', 'Become An Instructor', '2025-08-21 17:16:36', NULL),
(1195, 4, 'Title', 'Title', '2025-08-21 17:16:36', NULL),
(1196, 4, 'Description', 'Description', '2025-08-21 17:16:36', NULL),
(1197, 4, 'Video Url', 'Video Url', '2025-08-21 17:16:36', NULL),
(1198, 4, 'Image', 'Image', '2025-08-21 17:16:36', NULL),
(1199, 4, 'Banner Information', 'Banner Information', '2025-08-21 17:16:36', NULL),
(1200, 4, 'Add new', 'Add new', '2025-08-21 17:16:36', NULL),
(1201, 4, 'Remove', 'Remove', '2025-08-21 17:16:37', NULL),
(1202, 4, 'Video Link', 'Video Link', '2025-08-21 17:16:37', NULL),
(1203, 4, 'Youtube', 'Youtube', '2025-08-21 17:16:37', NULL),
(1204, 4, 'HTML5', 'HTML5', '2025-08-21 17:16:37', NULL),
(1205, 4, 'All Category', 'All Category', '2025-08-21 17:16:37', NULL),
(1206, 4, 'Add new category', 'Add new category', '2025-08-21 17:16:37', NULL),
(1207, 4, 'Category Name', 'Category Name', '2025-08-21 17:16:37', NULL),
(1208, 4, 'Enter your category name', 'Enter your category name', '2025-08-21 17:16:37', NULL),
(1209, 4, 'Enter your unique category name', 'Enter your unique category name', '2025-08-21 17:16:37', NULL),
(1210, 4, 'Pick Your Icon', 'Pick Your Icon', '2025-08-21 17:16:37', NULL),
(1211, 4, 'Pick your category icon', 'Pick your category icon', '2025-08-21 17:16:37', NULL),
(1212, 4, 'Keywords', 'Keywords', '2025-08-21 17:16:37', NULL),
(1213, 4, 'optional', 'optional', '2025-08-21 17:16:37', NULL),
(1214, 4, 'Category Description', 'Category Description', '2025-08-21 17:16:37', NULL),
(1215, 4, 'Enter your description', 'Enter your description', '2025-08-21 17:16:37', NULL),
(1216, 4, 'Thumbnail', 'Thumbnail', '2025-08-21 17:16:37', NULL),
(1217, 4, 'Category logo', 'Category logo', '2025-08-21 17:16:37', NULL),
(1218, 4, 'Category added successfully', 'Category added successfully', '2025-08-21 17:16:37', NULL),
(1219, 4, 'Add', 'Add', '2025-08-21 17:16:37', NULL),
(1220, 4, 'Edit category', 'Edit category', '2025-08-21 17:16:37', NULL),
(1221, 4, 'Create course', 'Create course', '2025-08-21 17:16:37', NULL),
(1222, 4, 'Enter Course Title', 'Enter Course Title', '2025-08-21 17:16:37', NULL),
(1223, 4, 'Short Description', 'Short Description', '2025-08-21 17:16:37', NULL),
(1224, 4, 'Enter Short Description', 'Enter Short Description', '2025-08-21 17:16:37', NULL),
(1225, 4, 'Enter Description', 'Enter Description', '2025-08-21 17:16:37', NULL),
(1226, 4, 'Create as', 'Create as', '2025-08-21 17:16:37', NULL),
(1227, 4, 'Select a category', 'Select a category', '2025-08-21 17:16:37', NULL),
(1228, 4, 'Course level', 'Course level', '2025-08-21 17:16:37', NULL),
(1229, 4, 'Select your course level', 'Select your course level', '2025-08-21 17:16:37', NULL),
(1230, 4, 'Made in', 'Made in', '2025-08-21 17:16:37', NULL),
(1231, 4, 'Select your course language', 'Select your course language', '2025-08-21 17:16:37', NULL),
(1232, 4, 'Pricing type', 'Pricing type', '2025-08-21 17:16:37', NULL),
(1233, 4, 'Enter your course price', 'Enter your course price', '2025-08-21 17:16:37', NULL),
(1234, 4, 'Check if this course has discount', 'Check if this course has discount', '2025-08-21 17:16:37', NULL),
(1235, 4, 'Discounted price', 'Discounted price', '2025-08-21 17:16:37', NULL),
(1236, 4, 'Enter your discount price', 'Enter your discount price', '2025-08-21 17:16:37', NULL),
(1237, 4, 'Finish!', 'Finish!', '2025-08-21 17:16:37', NULL),
(1238, 4, 'Course added successfully', 'Course added successfully', '2025-08-21 17:16:37', NULL),
(1239, 4, 'Edit course', 'Edit course', '2025-08-21 17:16:37', NULL),
(1240, 4, 'Editing', 'Editing', '2025-08-21 17:16:37', NULL),
(1241, 4, 'Help', 'Help', '2025-08-21 17:16:37', NULL),
(1242, 4, 'Frontend View', 'Frontend View', '2025-08-21 17:16:37', NULL),
(1243, 4, 'Course Player', 'Course Player', '2025-08-21 17:16:37', NULL),
(1244, 4, 'Curriculum', 'Curriculum', '2025-08-21 17:16:37', NULL),
(1245, 4, 'Basic', 'Basic', '2025-08-21 17:16:37', NULL),
(1246, 4, 'Live Class', 'Live Class', '2025-08-21 17:16:37', NULL),
(1247, 4, 'Pricing', 'Pricing', '2025-08-21 17:16:37', NULL),
(1248, 4, 'Info', 'Info', '2025-08-21 17:16:37', NULL),
(1249, 4, 'Media', 'Media', '2025-08-21 17:16:37', NULL),
(1250, 4, 'SEO', 'SEO', '2025-08-21 17:16:37', NULL),
(1251, 4, 'Add new section', 'Add new section', '2025-08-21 17:16:37', NULL),
(1252, 4, 'Add section', 'Add section', '2025-08-21 17:16:37', NULL),
(1253, 4, 'Add a new Section', 'Add a new Section', '2025-08-21 17:16:37', NULL),
(1254, 4, 'Create bootcamp', 'Create bootcamp', '2025-08-21 17:16:37', NULL),
(1255, 4, 'Check if this bootcamp has discount', 'Check if this bootcamp has discount', '2025-08-21 17:16:37', NULL),
(1256, 4, 'Publish Date', 'Publish Date', '2025-08-21 17:16:37', NULL),
(1257, 4, 'Bootcamp Category', 'Bootcamp Category', '2025-08-21 17:16:37', NULL),
(1258, 4, 'No data found', 'No data found', '2025-08-21 17:16:37', NULL),
(1259, 4, 'Add category', 'Add category', '2025-08-21 17:16:37', NULL),
(1260, 4, 'Category has been created.', 'Category has been created.', '2025-08-21 17:16:37', NULL),
(1261, 4, 'Total bootcamps', 'Total bootcamps', '2025-08-21 17:16:37', NULL),
(1262, 4, 'Bootcamp has been created.', 'Bootcamp has been created.', '2025-08-21 17:16:37', NULL),
(1263, 4, 'Edit bootcamp', 'Edit bootcamp', '2025-08-21 17:16:37', NULL),
(1264, 4, 'Frontent View', 'Frontent View', '2025-08-21 17:16:37', NULL),
(1265, 4, 'Create Student', 'Create Student', '2025-08-21 17:16:37', NULL),
(1266, 4, 'Student Info', 'Student Info', '2025-08-21 17:16:37', NULL),
(1267, 4, 'Login Credentials', 'Login Credentials', '2025-08-21 17:16:37', NULL),
(1268, 4, 'Social Links', 'Social Links', '2025-08-21 17:16:37', NULL),
(1269, 4, 'Name', 'Name', '2025-08-21 17:16:37', NULL),
(1270, 4, 'Biography', 'Biography', '2025-08-21 17:16:37', NULL),
(1271, 4, 'User image', 'User image', '2025-08-21 17:16:37', NULL),
(1272, 4, 'Facebook', 'Facebook', '2025-08-21 17:16:37', NULL),
(1273, 4, 'Twitter', 'Twitter', '2025-08-21 17:16:37', NULL),
(1274, 4, 'Linkedin', 'Linkedin', '2025-08-21 17:16:37', NULL),
(1275, 4, 'Student add successfully', 'Student add successfully', '2025-08-21 17:16:37', NULL),
(1276, 4, 'Student List', 'Student List', '2025-08-21 17:16:37', NULL),
(1277, 4, 'Export', 'Export', '2025-08-21 17:16:37', NULL),
(1278, 4, 'PDF', 'PDF', '2025-08-21 17:16:37', NULL),
(1279, 4, 'Print', 'Print', '2025-08-21 17:16:37', NULL),
(1280, 4, 'Search user', 'Search user', '2025-08-21 17:16:37', NULL),
(1281, 4, 'Search', 'Search', '2025-08-21 17:16:37', NULL),
(1282, 4, 'Enrolled Course', 'Enrolled Course', '2025-08-21 17:16:37', NULL),
(1283, 4, 'Options', 'Options', '2025-08-21 17:16:37', NULL),
(1284, 4, 'Email Verification', 'Email Verification', '2025-08-21 17:16:37', NULL),
(1285, 4, 'Thanks for signing up! Before getting started, could you verify your email address by clicking on the link we just emailed to you? If you didn\'t receive the email, we will gladly send you another.', 'Thanks for signing up! Before getting started, could you verify your email address by clicking on the link we just emailed to you? If you didn\'t receive the email, we will gladly send you another.', '2025-08-21 17:16:37', NULL),
(1286, 4, 'Resend Verification Email', 'Resend Verification Email', '2025-08-21 17:16:37', NULL),
(1287, 4, 'My Courses', 'My Courses', '2025-08-21 17:16:37', NULL),
(1288, 4, 'My Bootcamps', 'My Bootcamps', '2025-08-21 17:16:37', NULL),
(1289, 4, 'Upload picture', 'Upload picture', '2025-08-21 17:16:37', NULL),
(1290, 4, 'Upload New', 'Upload New', '2025-08-21 17:16:37', NULL),
(1291, 4, 'My Teams', 'My Teams', '2025-08-21 17:16:37', NULL),
(1292, 4, 'Please try using the appropriate keywords.', 'Please try using the appropriate keywords.', '2025-08-21 17:16:37', NULL),
(1293, 4, 'Bootcamps', 'Bootcamps', '2025-08-21 17:16:37', NULL),
(1294, 4, 'All Bootcamps', 'All Bootcamps', '2025-08-21 17:16:37', NULL),
(1295, 4, 'Class', 'Class', '2025-08-21 17:16:37', NULL),
(1296, 4, 'View Details', 'View Details', '2025-08-21 17:16:37', NULL),
(1297, 4, 'Buy Now', 'Buy Now', '2025-08-21 17:16:37', NULL),
(1298, 4, 'Item is already purchased.', 'Item is already purchased.', '2025-08-21 17:16:37', NULL),
(1299, 4, 'Bootcamp payment', 'Bootcamp payment', '2025-08-21 17:16:37', NULL),
(1300, 4, 'Order summary', 'Order summary', '2025-08-21 17:16:37', NULL),
(1301, 4, 'Cancel Payment', 'Cancel Payment', '2025-08-21 17:16:37', NULL),
(1302, 4, 'Select payment gateway', 'Select payment gateway', '2025-08-21 17:16:37', NULL),
(1303, 4, 'Item List', 'Item List', '2025-08-21 17:16:37', NULL),
(1304, 4, 'Total', 'Total', '2025-08-21 17:16:37', NULL),
(1305, 4, 'Grand Total', 'Grand Total', '2025-08-21 17:16:37', NULL),
(1306, 4, 'Reviews', 'Reviews', '2025-08-21 17:16:37', NULL),
(1307, 4, 'lesson', 'lesson', '2025-08-21 17:16:37', NULL),
(1308, 4, 'Students', 'Students', '2025-08-21 17:16:37', NULL),
(1309, 4, 'Terms and condition', 'Terms and condition', '2025-08-21 17:16:37', NULL),
(1310, 4, 'Terms', 'Terms', '2025-08-21 17:16:37', NULL),
(1311, 4, 'WELLCOME TO CHEF', 'WELLCOME TO CHEF', '2025-08-21 17:16:37', NULL),
(1312, 4, 'Visit Courses', 'Visit Courses', '2025-08-21 17:16:37', NULL),
(1313, 4, 'Enrolled Learners', 'Enrolled Learners', '2025-08-21 17:16:37', NULL),
(1314, 4, 'Online Instructors', 'Online Instructors', '2025-08-21 17:16:37', NULL),
(1315, 4, 'Latest Top Skills', 'Latest Top Skills', '2025-08-21 17:16:37', NULL),
(1316, 4, 'Awesome  site the top advertising been business.', 'Awesome  site the top advertising been business.', '2025-08-21 17:16:37', NULL),
(1317, 4, 'Industry Experts', 'Industry Experts', '2025-08-21 17:16:37', NULL),
(1318, 4, 'Learning From Anywhere', 'Learning From Anywhere', '2025-08-21 17:16:37', NULL),
(1319, 4, 'Top Rated Courses', 'Top Rated Courses', '2025-08-21 17:16:37', NULL),
(1320, 4, 'Upcoming Courses', 'Upcoming Courses', '2025-08-21 17:16:37', NULL),
(1321, 4, 'Highlights the latest courses set to launch, giving students a sneak peek at new opportunities for learning and skill development. Stay ahead with our curated selection of upcoming educational offerings!', 'Highlights the latest courses set to launch, giving students a sneak peek at new opportunities for learning and skill development. Stay ahead with our curated selection of upcoming educational offerings!', '2025-08-21 17:16:37', NULL),
(1322, 4, 'Featured Courses', 'Featured Courses', '2025-08-21 17:16:38', NULL),
(1323, 4, 'Think more clearly', 'Think more clearly', '2025-08-21 17:16:38', NULL),
(1324, 4, 'Awesome  site. on the top advertising a business online includes assembling Having the most keep.', 'Awesome  site. on the top advertising a business online includes assembling Having the most keep.', '2025-08-21 17:16:38', NULL),
(1325, 4, 'Video title', 'Video title', '2025-08-21 17:16:38', NULL),
(1326, 4, 'Our Popular Instructor', 'Our Popular Instructor', '2025-08-21 17:16:38', NULL),
(1327, 4, 'Highlights our most sought-after educator, recognized for their engaging teaching style and exceptional course content. Discover their expertise and join the many students who have benefited from their classes!', 'Highlights our most sought-after educator, recognized for their engaging teaching style and exceptional course content. Discover their expertise and join the many students who have benefited from their classes!', '2025-08-21 17:16:38', NULL),
(1328, 4, 'Frequently Asked Questions?', 'Frequently Asked Questions?', '2025-08-21 17:16:38', NULL),
(1329, 4, 'FAQ provides quick answers to common inquiries, helping users resolve doubts efficiently.', 'FAQ provides quick answers to common inquiries, helping users resolve doubts efficiently.', '2025-08-21 17:16:38', NULL),
(1330, 4, 'Follow The Latest News', 'Follow The Latest News', '2025-08-21 17:16:38', NULL),
(1331, 4, 'Top Courses', 'Top Courses', '2025-08-21 17:16:38', NULL),
(1332, 4, 'lessons', 'lessons', '2025-08-21 17:16:38', NULL),
(1333, 4, 'Subscribe to our newsletter to get latest updates', 'Subscribe to our newsletter to get latest updates', '2025-08-21 17:16:38', NULL),
(1334, 4, 'Subscribe to stay tuned for new latest updates and offer. Let\'s do it! ', 'Subscribe to stay tuned for new latest updates and offer. Let\'s do it! ', '2025-08-21 17:16:38', NULL),
(1335, 4, 'Subscribe', 'Subscribe', '2025-08-21 17:16:38', NULL),
(1336, 4, 'Read our privacy policy', 'Read our privacy policy', '2025-08-21 17:16:38', NULL),
(1337, 4, 'Here', 'Here', '2025-08-21 17:16:38', NULL),
(1338, 4, 'Blog category', 'Blog category', '2025-08-21 17:16:38', NULL),
(1339, 4, 'Subtitle', 'Subtitle', '2025-08-21 17:16:38', NULL),
(1340, 4, '(80  Character)', '(80  Character)', '2025-08-21 17:16:38', NULL),
(1341, 4, 'Category add successfully', 'Category add successfully', '2025-08-21 17:16:38', NULL),
(1342, 4, 'Total number of blog', 'Total number of blog', '2025-08-21 17:16:38', NULL),
(1343, 4, 'Add new blog', 'Add new blog', '2025-08-21 17:16:38', NULL),
(1344, 4, 'Search Title', 'Search Title', '2025-08-21 17:16:38', NULL),
(1345, 4, 'Add Blog', 'Add Blog', '2025-08-21 17:16:38', NULL),
(1346, 4, 'Enter blog title', 'Enter blog title', '2025-08-21 17:16:38', NULL),
(1347, 4, 'Writing your keyword and hit htw enter button', 'Writing your keyword and hit htw enter button', '2025-08-21 17:16:38', NULL),
(1348, 4, 'Blog banner', 'Blog banner', '2025-08-21 17:16:38', NULL),
(1349, 4, 'Blog thumbnail', 'Blog thumbnail', '2025-08-21 17:16:38', NULL),
(1350, 4, 'Would you like to designate it as popular?', 'Would you like to designate it as popular?', '2025-08-21 17:16:38', NULL),
(1351, 4, 'Blog add successfully', 'Blog add successfully', '2025-08-21 17:16:38', NULL),
(1352, 4, 'Creator', 'Creator', '2025-08-21 17:16:38', NULL),
(1353, 4, 'View on frontend', 'View on frontend', '2025-08-21 17:16:38', NULL),
(1354, 4, 'Read More', 'Read More', '2025-08-21 17:16:38', NULL),
(1355, 4, 'Get Started Now', 'Get Started Now', '2025-08-21 17:16:38', NULL),
(1356, 4, 'Creating A Community Of Life Long Learners', 'Creating A Community Of Life Long Learners', '2025-08-21 17:16:38', NULL),
(1357, 4, 'Our LMS goes beyond just providing courses. It\'s a platform designed to ignite curiosity and empower your lifelong learning journey.  This supportive community provides a space to ask questions, no matter how big or small, and receive insightful answers from experienced learners and subject-matter experts.', 'Our LMS goes beyond just providing courses. It\'s a platform designed to ignite curiosity and empower your lifelong learning journey.  This supportive community provides a space to ask questions, no matter how big or small, and receive insightful answers from experienced learners and subject-matter experts.', '2025-08-21 17:16:38', NULL),
(1358, 4, 'Share your own experiences and challenges, and find encouragement and inspiration from others on a similar path. The diverse perspectives within our community will broaden your horizons and challenge your thinking, fostering a deeper understanding and a richer learning experience.  Together, we\'ll transform learning from a solitary pursuit into a collaborative adventure, where shared knowledge fuels individual growth and collective discovery.', 'Share your own experiences and challenges, and find encouragement and inspiration from others on a similar path. The diverse perspectives within our community will broaden your horizons and challenge your thinking, fostering a deeper understanding and a richer learning experience.  Together, we\'ll transform learning from a solitary pursuit into a collaborative adventure, where shared knowledge fuels individual growth and collective discovery.', '2025-08-21 17:16:38', NULL),
(1359, 4, 'Learn more about us', 'Learn more about us', '2025-08-21 17:16:38', NULL),
(1360, 4, 'Our Online Courses', 'Our Online Courses', '2025-08-21 17:16:38', NULL),
(1361, 4, 'See More', 'See More', '2025-08-21 17:16:38', NULL),
(1362, 4, 'Our Blog', 'Our Blog', '2025-08-21 17:16:38', NULL),
(1363, 4, 'LEARN FROM TODAY', 'LEARN FROM TODAY', '2025-08-21 17:16:38', NULL),
(1364, 4, 'Watch Video', 'Watch Video', '2025-08-21 17:16:38', NULL),
(1365, 4, 'Expert Mentors', 'Expert Mentors', '2025-08-21 17:16:38', NULL),
(1366, 4, 'Students Globally', 'Students Globally', '2025-08-21 17:16:38', NULL),
(1367, 4, 'Cost Free Course', 'Cost Free Course', '2025-08-21 17:16:38', NULL),
(1368, 4, 'What they’re saying about our courses', 'What they’re saying about our courses', '2025-08-21 17:16:38', NULL),
(1369, 4, 'Having enjoyed a breathlessly successful 2015, there can be no DJ  dynamic set of teaching tools Billed to be deployed.', 'Having enjoyed a breathlessly successful 2015, there can be no DJ  dynamic set of teaching tools Billed to be deployed.', '2025-08-21 17:16:38', NULL),
(1370, 4, 'Student email verification', 'Student email verification', '2025-08-21 17:16:38', NULL),
(1371, 4, 'Disabled', 'Disabled', '2025-08-21 17:16:38', NULL),
(1372, 4, 'Frontend Settings', 'Frontend Settings', '2025-08-21 17:16:38', NULL),
(1373, 4, 'Motivational Speech', 'Motivational Speech', '2025-08-21 17:16:38', NULL),
(1374, 4, 'Website FAQS', 'Website FAQS', '2025-08-21 17:16:38', NULL),
(1375, 4, 'Contact Information', 'Contact Information', '2025-08-21 17:16:38', NULL),
(1376, 4, 'User Reviews', 'User Reviews', '2025-08-21 17:16:38', NULL),
(1377, 4, 'Logo & Images', 'Logo & Images', '2025-08-21 17:16:38', NULL);
INSERT INTO `language_phrases` (`id`, `language_id`, `phrase`, `translated`, `created_at`, `updated_at`) VALUES
(1378, 4, 'Frontend website settings', 'Frontend website settings', '2025-08-21 17:16:38', NULL),
(1379, 4, 'Banner title', 'Banner title', '2025-08-21 17:16:38', NULL),
(1380, 4, 'Banner sub title', 'Banner sub title', '2025-08-21 17:16:38', NULL),
(1381, 4, 'Promo Video Provider', 'Promo Video Provider', '2025-08-21 17:16:38', NULL),
(1382, 4, 'Youtube Video Link', 'Youtube Video Link', '2025-08-21 17:16:38', NULL),
(1383, 4, 'Vimeo Video Link', 'Vimeo Video Link', '2025-08-21 17:16:38', NULL),
(1384, 4, 'HTML5 Video link', 'HTML5 Video link', '2025-08-21 17:16:38', NULL),
(1385, 4, 'Promo video link', 'Promo video link', '2025-08-21 17:16:38', NULL),
(1386, 4, 'Cookie status', 'Cookie status', '2025-08-21 17:16:38', NULL),
(1387, 4, 'Cookie note', 'Cookie note', '2025-08-21 17:16:38', NULL),
(1388, 4, 'Refund policy', 'Refund policy', '2025-08-21 17:16:38', NULL),
(1389, 4, 'Mobile App download Link', 'Mobile App download Link', '2025-08-21 17:16:38', NULL),
(1390, 4, 'Update Settings', 'Update Settings', '2025-08-21 17:16:38', NULL),
(1391, 4, 'designation', 'designation', '2025-08-21 17:16:38', NULL),
(1392, 4, 'Question', 'Question', '2025-08-21 17:16:38', NULL),
(1393, 4, 'Write a question', 'Write a question', '2025-08-21 17:16:38', NULL),
(1394, 4, 'Answer', 'Answer', '2025-08-21 17:16:38', NULL),
(1395, 4, 'Write a question answer', 'Write a question answer', '2025-08-21 17:16:38', NULL),
(1396, 4, 'Contact Email', 'Contact Email', '2025-08-21 17:16:38', NULL),
(1397, 4, 'Phone Number', 'Phone Number', '2025-08-21 17:16:38', NULL),
(1398, 4, 'Office Hours', 'Office Hours', '2025-08-21 17:16:38', NULL),
(1399, 4, 'Location', 'Location', '2025-08-21 17:16:38', NULL),
(1400, 4, 'Latitude', 'Latitude', '2025-08-21 17:16:38', NULL),
(1401, 4, 'Longitude', 'Longitude', '2025-08-21 17:16:38', NULL),
(1402, 4, 'Recaptcha settings', 'Recaptcha settings', '2025-08-21 17:16:38', NULL),
(1403, 4, 'Recaptcha status', 'Recaptcha status', '2025-08-21 17:16:38', NULL),
(1404, 4, 'Recaptcha sitekey', 'Recaptcha sitekey', '2025-08-21 17:16:38', NULL),
(1405, 4, 'Recaptcha secretkey', 'Recaptcha secretkey', '2025-08-21 17:16:38', NULL),
(1406, 4, 'Update recaptcha settings', 'Update recaptcha settings', '2025-08-21 17:16:38', NULL),
(1407, 4, 'Review', 'Review', '2025-08-21 17:16:38', NULL),
(1408, 4, 'Add new Review', 'Add new Review', '2025-08-21 17:16:38', NULL),
(1409, 4, 'Click here to choose a banner image', 'Click here to choose a banner image', '2025-08-21 17:16:38', NULL),
(1410, 4, 'Upload banner image', 'Upload banner image', '2025-08-21 17:16:38', NULL),
(1411, 4, 'Click here to choose a light logo', 'Click here to choose a light logo', '2025-08-21 17:16:38', NULL),
(1412, 4, 'Upload light logo', 'Upload light logo', '2025-08-21 17:16:38', NULL),
(1413, 4, 'Click here to choose a dark logo', 'Click here to choose a dark logo', '2025-08-21 17:16:38', NULL),
(1414, 4, 'Upload dark logo', 'Upload dark logo', '2025-08-21 17:16:38', NULL),
(1415, 4, 'Click here to choose a favicon', 'Click here to choose a favicon', '2025-08-21 17:16:38', NULL),
(1416, 4, 'Upload favicon', 'Upload favicon', '2025-08-21 17:16:38', NULL),
(1417, 4, 'Frontend settings update successfully', 'Frontend settings update successfully', '2025-08-21 17:16:38', NULL),
(1418, 4, 'User already register and signing up for using it', 'User already register and signing up for using it', '2025-08-21 17:16:38', NULL),
(1419, 4, 'Get Courses', 'Get Courses', '2025-08-21 17:16:38', NULL),
(1420, 4, 'Start Learning', 'Start Learning', '2025-08-21 17:16:38', NULL),
(1421, 4, 'Coding', 'Coding', '2025-08-21 17:16:38', NULL),
(1422, 4, 'Languages', 'Languages', '2025-08-21 17:16:38', NULL),
(1423, 4, 'The industry\'s standard dummy text ever since the  unknown printer took a galley of type and scrambled', 'The industry\'s standard dummy text ever since the  unknown printer took a galley of type and scrambled', '2025-08-21 17:16:38', NULL),
(1424, 4, 'Online Courses', 'Online Courses', '2025-08-21 17:16:38', NULL),
(1425, 4, 'Top Instructors', 'Top Instructors', '2025-08-21 17:16:38', NULL),
(1426, 4, 'Online Certificates', 'Online Certificates', '2025-08-21 17:16:38', NULL),
(1427, 4, 'Pick A Course To', 'Pick A Course To', '2025-08-21 17:16:38', NULL),
(1428, 4, 'Download our mobile app, start learning', 'Download our mobile app, start learning', '2025-08-21 17:16:38', NULL),
(1429, 4, 'Academy', 'Academy', '2025-08-21 17:16:38', NULL),
(1430, 4, 'Download Now', 'Download Now', '2025-08-21 17:16:38', NULL),
(1431, 4, 'Frequently Asked', 'Frequently Asked', '2025-08-21 17:16:38', NULL),
(1432, 4, 'Questions', 'Questions', '2025-08-21 17:16:38', NULL),
(1433, 4, 'What Our', 'What Our', '2025-08-21 17:16:38', NULL),
(1434, 4, 'Have To Say', 'Have To Say', '2025-08-21 17:16:38', NULL),
(1435, 4, 'Get News with', 'Get News with', '2025-08-21 17:16:38', NULL),
(1436, 4, 'comment', 'comment', '2025-08-21 17:16:38', NULL),
(1437, 4, 'Course Manager', 'Course Manager', '2025-08-21 17:16:38', NULL),
(1438, 4, 'Active courses', 'Active courses', '2025-08-21 17:16:38', NULL),
(1439, 4, 'Pending courses', 'Pending courses', '2025-08-21 17:16:38', NULL),
(1440, 4, 'Free courses', 'Free courses', '2025-08-21 17:16:38', NULL),
(1441, 4, 'Paid courses', 'Paid courses', '2025-08-21 17:16:38', NULL),
(1442, 4, 'All', 'All', '2025-08-21 17:16:38', NULL),
(1443, 4, 'Apply', 'Apply', '2025-08-21 17:16:38', NULL),
(1444, 4, 'Lesson & Section', 'Lesson & Section', '2025-08-21 17:16:38', NULL),
(1445, 4, 'Enrolled Student', 'Enrolled Student', '2025-08-21 17:16:38', NULL),
(1446, 4, 'Section', 'Section', '2025-08-21 17:16:38', NULL),
(1447, 4, 'View Course On Frontend', 'View Course On Frontend', '2025-08-21 17:16:38', NULL),
(1448, 4, 'Go To Course Playing Page', 'Go To Course Playing Page', '2025-08-21 17:16:38', NULL),
(1449, 4, 'Duplicate Course', 'Duplicate Course', '2025-08-21 17:16:38', NULL),
(1450, 4, 'Make As Active', 'Make As Active', '2025-08-21 17:16:38', NULL),
(1451, 4, 'Delete Course', 'Delete Course', '2025-08-21 17:16:38', NULL),
(1452, 4, 'Course updated successfully', 'Course updated successfully', '2025-08-21 17:16:38', NULL),
(1453, 4, 'Multi language setting', 'Multi language setting', '2025-08-21 17:16:38', NULL),
(1454, 4, 'Language list', 'Language list', '2025-08-21 17:16:38', NULL),
(1455, 4, 'Add Language', 'Add Language', '2025-08-21 17:16:38', NULL),
(1456, 4, 'Import Language', 'Import Language', '2025-08-21 17:16:38', NULL),
(1457, 4, 'Direction', 'Direction', '2025-08-21 17:16:38', NULL),
(1458, 4, 'Option', 'Option', '2025-08-21 17:16:38', NULL),
(1459, 4, 'LTR', 'LTR', '2025-08-21 17:16:38', NULL),
(1460, 4, 'RTL', 'RTL', '2025-08-21 17:16:38', NULL),
(1461, 4, 'Edit phrase', 'Edit phrase', '2025-08-21 17:16:39', NULL),
(1462, 4, 'Add new language', 'Add new language', '2025-08-21 17:16:39', NULL),
(1463, 4, 'No special character or space is allowed. Valid examples: French, Spanish, Bengali etc', 'No special character or space is allowed. Valid examples: French, Spanish, Bengali etc', '2025-08-21 17:16:39', NULL),
(1464, 4, 'Save', 'Save', '2025-08-21 17:16:39', NULL),
(1465, 4, 'Import your language files from here. (Ex: english.json)', 'Import your language files from here. (Ex: english.json)', '2025-08-21 17:16:39', NULL),
(1466, 4, 'Import', 'Import', '2025-08-21 17:16:39', NULL),
(1467, 4, 'phrase_updated', 'phrase_updated', '2025-08-21 17:16:39', NULL),
(1468, 4, 'Direction has been updated', 'Direction has been updated', '2025-08-21 17:16:39', NULL),
(1469, 4, 'Education For Eeveryone', 'Education For Eeveryone', '2025-08-21 17:16:39', NULL),
(1470, 4, 'Search here', 'Search here', '2025-08-21 17:16:39', NULL),
(1471, 4, 'Online Instructor have a new ideas every week.', 'Online Instructor have a new ideas every week.', '2025-08-21 17:16:39', NULL),
(1472, 4, 'Special Featured Course.', 'Special Featured Course.', '2025-08-21 17:16:39', NULL),
(1473, 4, 'View More', 'View More', '2025-08-21 17:16:39', NULL),
(1474, 4, 'Know About Academy LMS Learning Platform', 'Know About Academy LMS Learning Platform', '2025-08-21 17:16:39', NULL),
(1475, 4, 'Far far away, behind the word mountains, far from the away countries Vokalia and Consonantia, there live the blind texts.', 'Far far away, behind the word mountains, far from the away countries Vokalia and Consonantia, there live the blind texts.', '2025-08-21 17:16:39', NULL),
(1476, 4, 'Free Resources Learning English for Beginner', 'Free Resources Learning English for Beginner', '2025-08-21 17:16:39', NULL),
(1477, 4, 'Far far away, behind the word mountains, far from the away countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.', 'Far far away, behind the word mountains, far from the away countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.', '2025-08-21 17:16:39', NULL),
(1478, 4, 'Instructor have a new ideas every week.', 'Instructor have a new ideas every week.', '2025-08-21 17:16:39', NULL),
(1479, 4, 'Meet Our Team', 'Meet Our Team', '2025-08-21 17:16:39', NULL),
(1480, 4, 'Download our mobile app, start learning today', 'Download our mobile app, start learning today', '2025-08-21 17:16:39', NULL),
(1481, 4, 'Includes all Course && Features', 'Includes all Course && Features', '2025-08-21 17:16:39', NULL),
(1482, 4, 'Get Bundle', 'Get Bundle', '2025-08-21 17:16:39', NULL),
(1483, 4, 'Create Instructor', 'Create Instructor', '2025-08-21 17:16:39', NULL),
(1484, 4, 'Instructor Info', 'Instructor Info', '2025-08-21 17:16:39', NULL),
(1485, 4, 'Payment Information', 'Payment Information', '2025-08-21 17:16:39', NULL),
(1486, 4, 'Instructor add successfully', 'Instructor add successfully', '2025-08-21 17:16:39', NULL),
(1487, 4, 'Instructor List', 'Instructor List', '2025-08-21 17:16:39', NULL),
(1488, 4, 'Number Of Course', 'Number Of Course', '2025-08-21 17:16:39', NULL),
(1489, 4, 'View courses', 'View courses', '2025-08-21 17:16:39', NULL),
(1490, 4, 'Make As Inactive', 'Make As Inactive', '2025-08-21 17:16:39', NULL),
(1491, 4, 'Enroll Students', 'Enroll Students', '2025-08-21 17:16:39', NULL),
(1492, 4, 'Course to enrol', 'Course to enrol', '2025-08-21 17:16:39', NULL),
(1493, 4, 'Select a course', 'Select a course', '2025-08-21 17:16:39', NULL),
(1494, 4, 'Enroll History', 'Enroll History', '2025-08-21 17:16:39', NULL),
(1495, 4, 'Add new enrollment', 'Add new enrollment', '2025-08-21 17:16:39', NULL),
(1496, 4, 'Enrolled Date', 'Enrolled Date', '2025-08-21 17:16:39', NULL),
(1497, 4, 'Expiry Date', 'Expiry Date', '2025-08-21 17:16:39', NULL),
(1498, 4, 'Lifetime access', 'Lifetime access', '2025-08-21 17:16:39', NULL),
(1499, 4, 'Add Review', 'Add Review', '2025-08-21 17:16:39', NULL),
(1500, 4, 'Select User', 'Select User', '2025-08-21 17:16:39', NULL),
(1501, 4, 'Select an user', 'Select an user', '2025-08-21 17:16:39', NULL),
(1502, 4, 'Rating', 'Rating', '2025-08-21 17:16:39', NULL),
(1503, 4, 'Select a Rating', 'Select a Rating', '2025-08-21 17:16:39', NULL),
(1504, 4, 'Review added successfull', 'Review added successfull', '2025-08-21 17:16:39', NULL),
(1505, 4, 'About Us Image', 'About Us Image', '2025-08-21 17:16:39', NULL),
(1506, 4, 'Faq  Image', 'Faq  Image', '2025-08-21 17:16:39', NULL),
(1507, 4, 'Faq Image', 'Faq Image', '2025-08-21 17:16:39', NULL),
(1508, 4, 'Slider image & video link', 'Slider image & video link', '2025-08-21 17:16:39', NULL),
(1509, 4, 'Add Image', 'Add Image', '2025-08-21 17:16:39', NULL),
(1510, 4, 'Add Video Link', 'Add Video Link', '2025-08-21 17:16:39', NULL),
(1511, 4, 'Homepage updated successfully', 'Homepage updated successfully', '2025-08-21 17:16:39', NULL),
(1512, 4, 'Duration', 'Duration', '2025-08-21 17:16:39', NULL),
(1513, 4, 'Course Details', 'Course Details', '2025-08-21 17:16:39', NULL),
(1514, 4, 'Certificate Course', 'Certificate Course', '2025-08-21 17:16:39', NULL),
(1515, 4, 'Overview', 'Overview', '2025-08-21 17:16:39', NULL),
(1516, 4, 'Details', 'Details', '2025-08-21 17:16:39', NULL),
(1517, 4, 'Course Overview', 'Course Overview', '2025-08-21 17:16:39', NULL),
(1518, 4, 'No Course Description', 'No Course Description', '2025-08-21 17:16:39', NULL),
(1519, 4, 'FAQ area empty', 'FAQ area empty', '2025-08-21 17:16:39', NULL),
(1520, 4, 'Course curriculum', 'Course curriculum', '2025-08-21 17:16:39', NULL),
(1521, 4, 'Course curriculum Empty', 'Course curriculum Empty', '2025-08-21 17:16:39', NULL),
(1522, 4, 'Requirment', 'Requirment', '2025-08-21 17:16:39', NULL),
(1523, 4, 'Outcomes', 'Outcomes', '2025-08-21 17:16:39', NULL),
(1524, 4, 'Rate this course : ', 'Rate this course : ', '2025-08-21 17:16:39', NULL),
(1525, 4, 'Remove all', 'Remove all', '2025-08-21 17:16:39', NULL),
(1526, 4, 'Write a reveiw ...', 'Write a reveiw ...', '2025-08-21 17:16:39', NULL),
(1527, 4, 'Add to cart', 'Add to cart', '2025-08-21 17:16:39', NULL),
(1528, 4, 'Share', 'Share', '2025-08-21 17:16:39', NULL),
(1529, 4, 'Share on Facebook', 'Share on Facebook', '2025-08-21 17:16:39', NULL),
(1530, 4, 'Share on Twitter', 'Share on Twitter', '2025-08-21 17:16:39', NULL),
(1531, 4, 'Share on Whatsapp', 'Share on Whatsapp', '2025-08-21 17:16:39', NULL),
(1532, 4, 'Share on Linkedin', 'Share on Linkedin', '2025-08-21 17:16:39', NULL),
(1533, 4, 'Certificate', 'Certificate', '2025-08-21 17:16:39', NULL),
(1534, 4, 'Certificate template', 'Certificate template', '2025-08-21 17:16:39', NULL),
(1535, 4, 'Build your certificate', 'Build your certificate', '2025-08-21 17:16:39', NULL),
(1536, 4, 'Upload your certificate template', 'Upload your certificate template', '2025-08-21 17:16:39', NULL),
(1537, 4, 'Upload', 'Upload', '2025-08-21 17:16:39', NULL),
(1538, 4, 'Certificate elements', 'Certificate elements', '2025-08-21 17:16:39', NULL),
(1539, 4, 'Available Variable Data', 'Available Variable Data', '2025-08-21 17:16:39', NULL),
(1540, 4, 'Add a new element', 'Add a new element', '2025-08-21 17:16:39', NULL),
(1541, 4, 'Enter Text with variable data', 'Enter Text with variable data', '2025-08-21 17:16:39', NULL),
(1542, 4, 'Total Lesson', 'Total Lesson', '2025-08-21 17:16:39', NULL),
(1543, 4, 'Choice a font-family', 'Choice a font-family', '2025-08-21 17:16:39', NULL),
(1544, 4, 'Default', 'Default', '2025-08-21 17:16:39', NULL),
(1545, 4, 'Pinyon Script', 'Pinyon Script', '2025-08-21 17:16:39', NULL),
(1546, 4, 'Font Size', 'Font Size', '2025-08-21 17:16:39', NULL),
(1547, 4, 'Save Template', 'Save Template', '2025-08-21 17:16:39', NULL),
(1548, 4, 'Certificate builder template has been updated', 'Certificate builder template has been updated', '2025-08-21 17:16:39', NULL),
(1549, 4, 'Progress', 'Progress', '2025-08-21 17:16:39', NULL),
(1550, 4, 'Start Now', 'Start Now', '2025-08-21 17:16:39', NULL),
(1551, 4, 'Course Playing Page', 'Course Playing Page', '2025-08-21 17:16:39', NULL),
(1552, 4, 'Summary', 'Summary', '2025-08-21 17:16:39', NULL),
(1553, 4, 'Forum', 'Forum', '2025-08-21 17:16:39', NULL),
(1554, 4, 'Class Schedules', 'Class Schedules', '2025-08-21 17:16:39', NULL),
(1555, 4, 'Topic', 'Topic', '2025-08-21 17:16:39', NULL),
(1556, 4, 'Date & time', 'Date & time', '2025-08-21 17:16:39', NULL),
(1557, 4, 'Keep up the great work!', 'Keep up the great work!', '2025-08-21 17:16:39', NULL),
(1558, 4, 'Your dedication to ongoing progress is inspiring.', 'Your dedication to ongoing progress is inspiring.', '2025-08-21 17:16:39', NULL),
(1559, 4, 'Every step forward is a testament to your commitment to growth and excellence.', 'Every step forward is a testament to your commitment to growth and excellence.', '2025-08-21 17:16:39', NULL),
(1560, 4, 'Stay focused, stay determined, and continue to push yourself to new heights.', 'Stay focused, stay determined, and continue to push yourself to new heights.', '2025-08-21 17:16:39', NULL),
(1561, 4, 'You have got this!', 'You have got this!', '2025-08-21 17:16:39', NULL),
(1562, 4, 'Search answers here', 'Search answers here', '2025-08-21 17:16:39', NULL),
(1563, 4, 'Questions in this course', 'Questions in this course', '2025-08-21 17:16:39', NULL),
(1564, 4, 'Ask question', 'Ask question', '2025-08-21 17:16:39', NULL),
(1565, 4, 'Completed', 'Completed', '2025-08-21 17:16:39', NULL),
(1566, 4, 'Enter title', 'Enter title', '2025-08-21 17:16:39', NULL),
(1567, 4, 'Section added successfully', 'Section added successfully', '2025-08-21 17:16:39', NULL),
(1568, 4, 'Add new lesson', 'Add new lesson', '2025-08-21 17:16:39', NULL),
(1569, 4, 'Add lesson', 'Add lesson', '2025-08-21 17:16:39', NULL),
(1570, 4, 'Add new quiz', 'Add new quiz', '2025-08-21 17:16:39', NULL),
(1571, 4, 'Add quiz', 'Add quiz', '2025-08-21 17:16:39', NULL),
(1572, 4, 'Sort sections', 'Sort sections', '2025-08-21 17:16:39', NULL),
(1573, 4, 'Sort Section', 'Sort Section', '2025-08-21 17:16:39', NULL),
(1574, 4, 'Edit section', 'Edit section', '2025-08-21 17:16:39', NULL),
(1575, 4, 'Delete section', 'Delete section', '2025-08-21 17:16:39', NULL),
(1576, 4, 'No lessons are available.', 'No lessons are available.', '2025-08-21 17:16:39', NULL),
(1577, 4, 'Select lesson type', 'Select lesson type', '2025-08-21 17:16:39', NULL),
(1578, 4, 'YouTube Video', 'YouTube Video', '2025-08-21 17:16:39', NULL),
(1579, 4, 'Vimeo Video', 'Vimeo Video', '2025-08-21 17:16:39', NULL),
(1580, 4, 'Video file', 'Video file', '2025-08-21 17:16:39', NULL),
(1581, 4, 'Video url [ .mp4 ]', 'Video url [ .mp4 ]', '2025-08-21 17:16:39', NULL),
(1582, 4, 'Google drive video', 'Google drive video', '2025-08-21 17:16:39', NULL),
(1583, 4, 'Document file', 'Document file', '2025-08-21 17:16:39', NULL),
(1584, 4, 'Text', 'Text', '2025-08-21 17:16:39', NULL),
(1585, 4, 'Iframe embed', 'Iframe embed', '2025-08-21 17:16:39', NULL),
(1586, 4, 'Next', 'Next', '2025-08-21 17:16:39', NULL),
(1587, 4, 'Lesson type', 'Lesson type', '2025-08-21 17:16:39', NULL),
(1588, 4, 'Change', 'Change', '2025-08-21 17:16:39', NULL),
(1589, 4, 'Enter your text', 'Enter your text', '2025-08-21 17:16:39', NULL),
(1590, 4, 'Do you want to keep it free as a preview lesson', 'Do you want to keep it free as a preview lesson', '2025-08-21 17:16:39', NULL),
(1591, 4, 'Mark as free lesson', 'Mark as free lesson', '2025-08-21 17:16:39', NULL),
(1592, 4, 'lesson added successfully', 'lesson added successfully', '2025-08-21 17:16:39', NULL),
(1593, 4, 'Sort lessons', 'Sort lessons', '2025-08-21 17:16:39', NULL),
(1594, 4, 'Edit lesson', 'Edit lesson', '2025-08-21 17:16:39', NULL),
(1595, 4, 'Delete lesson', 'Delete lesson', '2025-08-21 17:16:40', NULL),
(1596, 4, 'Congratulations!', 'Congratulations!', '2025-08-21 17:16:40', NULL),
(1597, 4, 'Your hard work has paid off. Here is to new beginnings and endless opportunities ahead!', 'Your hard work has paid off. Here is to new beginnings and endless opportunities ahead!', '2025-08-21 17:16:40', NULL),
(1598, 4, 'Get Certificate', 'Get Certificate', '2025-08-21 17:16:40', NULL),
(1599, 4, 'Download Certificate', 'Download Certificate', '2025-08-21 17:16:40', NULL),
(1600, 4, 'Download', 'Download', '2025-08-21 17:16:40', NULL),
(1601, 4, 'Auto', 'Auto', '2025-08-21 17:16:40', NULL),
(1602, 4, 'Continue', 'Continue', '2025-08-21 17:16:40', NULL),
(1603, 4, 'Shopping cart', 'Shopping cart', '2025-08-21 17:16:40', NULL),
(1604, 4, 'Cart items', 'Cart items', '2025-08-21 17:16:40', NULL),
(1605, 4, 'Payment summary', 'Payment summary', '2025-08-21 17:16:40', NULL),
(1606, 4, 'Sub total', 'Sub total', '2025-08-21 17:16:40', NULL),
(1607, 4, 'Tax', 'Tax', '2025-08-21 17:16:40', NULL),
(1608, 4, '%', '%', '2025-08-21 17:16:40', NULL),
(1609, 4, 'Apply coupon', 'Apply coupon', '2025-08-21 17:16:40', NULL),
(1610, 4, 'Send as a gift', 'Send as a gift', '2025-08-21 17:16:40', NULL),
(1611, 4, 'Enter user email', 'Enter user email', '2025-08-21 17:16:40', NULL),
(1612, 4, 'Continue to payment', 'Continue to payment', '2025-08-21 17:16:40', NULL),
(1613, 4, 'Payment failed! Please try again.', 'Payment failed! Please try again.', '2025-08-21 17:16:40', NULL),
(1614, 4, 'Parent category', 'Parent category', '2025-08-21 17:16:40', NULL),
(1615, 4, '- Mark it as parent -', '- Mark it as parent -', '2025-08-21 17:16:40', NULL),
(1616, 4, 'Choose category thumbnail', 'Choose category thumbnail', '2025-08-21 17:16:40', NULL),
(1617, 4, 'Choose category Logo', 'Choose category Logo', '2025-08-21 17:16:40', NULL),
(1618, 4, 'Category updated successfully', 'Category updated successfully', '2025-08-21 17:16:40', NULL),
(1619, 4, 'Enable the Fileinfo extension on your server to upload files.', 'Enable the Fileinfo extension on your server to upload files.', '2025-08-21 17:16:40', NULL),
(1620, 4, 'Fileinfo extension', 'Fileinfo extension', '2025-08-21 17:16:40', NULL),
(1621, 4, 'Enable this Fileinfo extension on your server to upload files', 'Enable this Fileinfo extension on your server to upload files', '2025-08-21 17:16:40', NULL),
(1622, 4, 'paytm merchant key', 'paytm merchant key', '2025-08-21 17:16:40', NULL),
(1623, 4, 'paytm merchant mid', 'paytm merchant mid', '2025-08-21 17:16:40', NULL),
(1624, 4, 'paytm merchant website', 'paytm merchant website', '2025-08-21 17:16:40', NULL),
(1625, 4, 'industry type id', 'industry type id', '2025-08-21 17:16:40', NULL),
(1626, 4, 'channel id', 'channel id', '2025-08-21 17:16:40', NULL),
(1627, 4, 'Payment settings update successfully', 'Payment settings update successfully', '2025-08-21 17:16:40', NULL),
(1628, 4, 'Configure ZOOM server-to-server-oauth credentials', 'Configure ZOOM server-to-server-oauth credentials', '2025-08-21 17:16:40', NULL),
(1629, 4, 'Account Email', 'Account Email', '2025-08-21 17:16:40', NULL),
(1630, 4, 'Account ID', 'Account ID', '2025-08-21 17:16:40', NULL),
(1631, 4, 'Client ID', 'Client ID', '2025-08-21 17:16:40', NULL),
(1632, 4, 'Client Secret', 'Client Secret', '2025-08-21 17:16:40', NULL),
(1633, 4, 'Do you want to use Web SDK for your live class?', 'Do you want to use Web SDK for your live class?', '2025-08-21 17:16:40', NULL),
(1634, 4, 'Meeting SDK Client ID', 'Meeting SDK Client ID', '2025-08-21 17:16:40', NULL),
(1635, 4, 'Meeting SDK Client Secret', 'Meeting SDK Client Secret', '2025-08-21 17:16:40', NULL),
(1636, 4, 'Enroll delete successfully', 'Enroll delete successfully', '2025-08-21 17:16:40', NULL),
(1637, 4, '500 error found', '500 error found', '2025-08-21 17:16:40', NULL),
(1638, 4, 'A technical error has occurred', 'A technical error has occurred', '2025-08-21 17:16:40', NULL),
(1639, 4, 'Please contact with site administrator', 'Please contact with site administrator', '2025-08-21 17:16:40', NULL),
(1640, 4, 'please_do_not_refresh_this_page', 'please_do_not_refresh_this_page', '2025-08-21 17:16:40', NULL),
(1641, 4, 'Please do not refresh this page', 'Please do not refresh this page', '2025-08-21 17:16:40', NULL),
(1642, 4, 'User', 'User', '2025-08-21 17:16:40', NULL),
(1643, 4, 'Item', 'Item', '2025-08-21 17:16:40', NULL),
(1644, 4, 'Paid amount', 'Paid amount', '2025-08-21 17:16:40', NULL),
(1645, 4, 'Payment method', 'Payment method', '2025-08-21 17:16:40', NULL),
(1646, 4, 'Purchased date', 'Purchased date', '2025-08-21 17:16:40', NULL),
(1647, 4, 'Invoice', 'Invoice', '2025-08-21 17:16:40', NULL),
(1648, 4, 'Select an option', 'Select an option', '2025-08-21 17:16:40', NULL),
(1649, 4, 'Total Mark', 'Total Mark', '2025-08-21 17:16:40', NULL),
(1650, 4, 'Pass Mark', 'Pass Mark', '2025-08-21 17:16:40', NULL),
(1651, 4, 'Retake', 'Retake', '2025-08-21 17:16:40', NULL),
(1652, 4, 'Quiz has been created.', 'Quiz has been created.', '2025-08-21 17:16:40', NULL),
(1653, 4, 'Result', 'Result', '2025-08-21 17:16:40', NULL),
(1654, 4, 'Edit quiz', 'Edit quiz', '2025-08-21 17:16:40', NULL),
(1655, 4, 'Update Quiz', 'Update Quiz', '2025-08-21 17:16:40', NULL),
(1656, 4, 'Add Question', 'Add Question', '2025-08-21 17:16:40', NULL),
(1657, 4, 'Question Type', 'Question Type', '2025-08-21 17:16:40', NULL),
(1658, 4, 'Multiple Choice', 'Multiple Choice', '2025-08-21 17:16:40', NULL),
(1659, 4, 'Fill in the blanks', 'Fill in the blanks', '2025-08-21 17:16:40', NULL),
(1660, 4, 'True or False', 'True or False', '2025-08-21 17:16:40', NULL),
(1661, 4, 'Write question', 'Write question', '2025-08-21 17:16:40', NULL),
(1662, 4, 'Your questions here', 'Your questions here', '2025-08-21 17:16:40', NULL),
(1663, 4, 'You can keep multiple options. Just put an option and hit enter.', 'You can keep multiple options. Just put an option and hit enter.', '2025-08-21 17:16:40', NULL),
(1664, 4, 'You can select multiple answers.', 'You can select multiple answers.', '2025-08-21 17:16:40', NULL),
(1665, 4, 'Manage Course', 'Manage Course', '2025-08-21 17:16:40', NULL),
(1666, 4, 'Time left : ', 'Time left : ', '2025-08-21 17:16:40', NULL),
(1667, 4, 'Hour', 'Hour', '2025-08-21 17:16:40', NULL),
(1668, 4, 'Minute', 'Minute', '2025-08-21 17:16:40', NULL),
(1669, 4, 'Second', 'Second', '2025-08-21 17:16:40', NULL),
(1670, 4, 'Total Marks', 'Total Marks', '2025-08-21 17:16:40', NULL),
(1671, 4, 'Pass Marks', 'Pass Marks', '2025-08-21 17:16:40', NULL),
(1672, 4, 'Attempts', 'Attempts', '2025-08-21 17:16:40', NULL),
(1673, 4, 'Total Question', 'Total Question', '2025-08-21 17:16:40', NULL),
(1674, 4, 'Start Quiz', 'Start Quiz', '2025-08-21 17:16:40', NULL),
(1675, 4, 'Quiz has been updated.', 'Quiz has been updated.', '2025-08-21 17:16:40', NULL),
(1676, 4, 'Question has been added.', 'Question has been added.', '2025-08-21 17:16:40', NULL),
(1677, 4, 'Sort Questions', 'Sort Questions', '2025-08-21 17:16:40', NULL),
(1678, 4, 'Edit Question', 'Edit Question', '2025-08-21 17:16:40', NULL),
(1679, 4, 'Update Question', 'Update Question', '2025-08-21 17:16:40', NULL),
(1680, 4, 'Watermark Type', 'Watermark Type', '2025-08-21 17:16:40', NULL),
(1681, 4, 'Js Watermark', 'Js Watermark', '2025-08-21 17:16:40', NULL),
(1682, 4, 'FFMpeg', 'FFMpeg', '2025-08-21 17:16:40', NULL),
(1683, 4, 'Watermark', 'Watermark', '2025-08-21 17:16:40', NULL),
(1684, 4, 'Opacity', 'Opacity', '2025-08-21 17:16:40', NULL),
(1685, 4, 'Opacity (0 - 100)', 'Opacity (0 - 100)', '2025-08-21 17:16:40', NULL),
(1686, 4, 'Width', 'Width', '2025-08-21 17:16:40', NULL),
(1687, 4, 'Width (px)', 'Width (px)', '2025-08-21 17:16:40', NULL),
(1688, 4, 'Height', 'Height', '2025-08-21 17:16:40', NULL),
(1689, 4, 'Height (px)', 'Height (px)', '2025-08-21 17:16:40', NULL),
(1690, 4, 'Top', 'Top', '2025-08-21 17:16:40', NULL),
(1691, 4, 'Top (px)', 'Top (px)', '2025-08-21 17:16:40', NULL),
(1692, 4, 'Left (px)', 'Left (px)', '2025-08-21 17:16:40', NULL),
(1693, 4, 'Enter your html5 video url', 'Enter your html5 video url', '2025-08-21 17:16:40', NULL),
(1694, 4, 'The image size should be', 'The image size should be', '2025-08-21 17:16:40', NULL),
(1695, 4, 'Caption', 'Caption', '2025-08-21 17:16:40', NULL),
(1696, 4, '.vtt', '.vtt', '2025-08-21 17:16:40', NULL),
(1697, 4, 'Animation speed', 'Animation speed', '2025-08-21 17:16:40', NULL),
(1698, 4, 'Second (0 - 200)', 'Second (0 - 200)', '2025-08-21 17:16:40', NULL),
(1699, 4, 'Your changes has been saved.', 'Your changes has been saved.', '2025-08-21 17:16:40', NULL),
(1700, 4, 'Second (0 - 10000)', 'Second (0 - 10000)', '2025-08-21 17:16:40', NULL),
(1701, 4, 'by', 'by', '2025-08-21 17:16:40', NULL),
(1702, 4, 'Find A Tutor', 'Find A Tutor', '2025-08-21 17:16:40', NULL),
(1703, 4, 'Tutor Booking', 'Tutor Booking', '2025-08-21 17:16:40', NULL),
(1704, 4, 'Subjects', 'Subjects', '2025-08-21 17:16:40', NULL),
(1705, 4, 'Subject Category', 'Subject Category', '2025-08-21 17:16:40', NULL),
(1706, 4, 'It is a long established fact that a reader will be the distract by the read content of a page layout.', 'It is a long established fact that a reader will be the distract by the read content of a page layout.', '2025-08-21 17:16:40', NULL),
(1707, 4, 'Knowledge Base', 'Knowledge Base', '2025-08-21 17:16:40', NULL),
(1708, 4, 'Timezone', 'Timezone', '2025-08-21 17:16:40', NULL),
(1709, 4, 'System settings update successfully', 'System settings update successfully', '2025-08-21 17:16:40', NULL),
(1710, 4, 'Start learning from the world\'s pro', 'Start learning from the world\'s pro', '2025-08-21 17:16:40', NULL),
(1711, 4, 'instructors', 'instructors', '2025-08-21 17:16:40', NULL),
(1712, 4, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum.', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum.', '2025-08-21 17:16:40', NULL),
(1713, 4, 'Fast Performance', 'Fast Performance', '2025-08-21 17:16:40', NULL),
(1714, 4, 'It is a long established fact that a reader will be distracted.', 'It is a long established fact that a reader will be distracted.', '2025-08-21 17:16:40', NULL),
(1715, 4, 'Perfect Responsive', 'Perfect Responsive', '2025-08-21 17:16:40', NULL),
(1716, 4, 'Fast & Friendly Support', 'Fast & Friendly Support', '2025-08-21 17:16:40', NULL),
(1717, 4, 'Easy to Use', 'Easy to Use', '2025-08-21 17:16:40', NULL),
(1718, 4, 'Explore Top Courses Caterories', 'Explore Top Courses Caterories', '2025-08-21 17:16:40', NULL),
(1719, 4, 'View All Courses', 'View All Courses', '2025-08-21 17:16:40', NULL),
(1720, 4, '150k +', '150k +', '2025-08-21 17:16:40', NULL),
(1721, 4, 'Know About Us', 'Know About Us', '2025-08-21 17:16:40', NULL),
(1722, 4, 'Learn & Grow Your Skills From', 'Learn & Grow Your Skills From', '2025-08-21 17:16:40', NULL),
(1723, 4, 'Educate', 'Educate', '2025-08-21 17:16:40', NULL),
(1724, 4, 'Life time Access', 'Life time Access', '2025-08-21 17:16:40', NULL),
(1725, 4, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '2025-08-21 17:16:40', NULL),
(1726, 4, 'Learn from Anywhere', 'Learn from Anywhere', '2025-08-21 17:16:40', NULL),
(1727, 4, 'More about us', 'More about us', '2025-08-21 17:16:40', NULL),
(1728, 4, 'Testimonial', 'Testimonial', '2025-08-21 17:16:40', NULL),
(1729, 4, 'What our clients says about us', 'What our clients says about us', '2025-08-21 17:16:41', NULL),
(1730, 4, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of use Lorem Ipsum.', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of use Lorem Ipsum.', '2025-08-21 17:16:41', NULL),
(1731, 4, 'Linchon Philips', 'Linchon Philips', '2025-08-21 17:16:41', NULL),
(1732, 4, 'CEO @ Yahoo', 'CEO @ Yahoo', '2025-08-21 17:16:41', NULL),
(1733, 4, 'Have a look on our news', 'Have a look on our news', '2025-08-21 17:16:41', NULL),
(1734, 4, 'View All Blogs', 'View All Blogs', '2025-08-21 17:16:41', NULL),
(1735, 4, 'Recaptcha', 'Recaptcha', '2025-08-21 17:16:41', NULL),
(1736, 4, 'store key', 'store key', '2025-08-21 17:16:41', NULL),
(1737, 4, 'store password', 'store password', '2025-08-21 17:16:41', NULL),
(1738, 4, 'store live key', 'store live key', '2025-08-21 17:16:41', NULL),
(1739, 4, 'store live password', 'store live password', '2025-08-21 17:16:41', NULL),
(1740, 4, 'sslcz testmode', 'sslcz testmode', '2025-08-21 17:16:41', NULL),
(1741, 4, 'is localhost', 'is localhost', '2025-08-21 17:16:41', NULL),
(1742, 4, 'sslcz live testmode', 'sslcz live testmode', '2025-08-21 17:16:41', NULL),
(1743, 4, 'is live localhost', 'is live localhost', '2025-08-21 17:16:41', NULL),
(1744, 4, 'store id', 'store id', '2025-08-21 17:16:41', NULL),
(1745, 4, 'signature key', 'signature key', '2025-08-21 17:16:41', NULL),
(1746, 4, 'store live id', 'store live id', '2025-08-21 17:16:41', NULL),
(1747, 4, 'signature live key', 'signature live key', '2025-08-21 17:16:41', NULL),
(1748, 4, 'merchant id', 'merchant id', '2025-08-21 17:16:41', NULL),
(1749, 4, 'merchant password', 'merchant password', '2025-08-21 17:16:41', NULL),
(1750, 4, 'merchant live id', 'merchant live id', '2025-08-21 17:16:41', NULL),
(1751, 4, 'merchant live password', 'merchant live password', '2025-08-21 17:16:41', NULL),
(1752, 4, 'Manage SEO Settings', 'Manage SEO Settings', '2025-08-21 17:16:41', NULL),
(1753, 4, 'Meta Title', 'Meta Title', '2025-08-21 17:16:41', NULL),
(1754, 4, 'Meta Keywords', 'Meta Keywords', '2025-08-21 17:16:41', NULL),
(1755, 4, 'Writing your keyword and hit the enter', 'Writing your keyword and hit the enter', '2025-08-21 17:16:41', NULL),
(1756, 4, 'Meta Description', 'Meta Description', '2025-08-21 17:16:41', NULL),
(1757, 4, 'Meta Robot', 'Meta Robot', '2025-08-21 17:16:41', NULL),
(1758, 4, ' Canonical Url', ' Canonical Url', '2025-08-21 17:16:41', NULL),
(1759, 4, ' Custom Url', ' Custom Url', '2025-08-21 17:16:41', NULL),
(1760, 4, 'Og Title', 'Og Title', '2025-08-21 17:16:41', NULL),
(1761, 4, 'Og Description', 'Og Description', '2025-08-21 17:16:41', NULL),
(1762, 4, 'Og Image', 'Og Image', '2025-08-21 17:16:41', NULL),
(1763, 4, 'Json Id', 'Json Id', '2025-08-21 17:16:41', NULL),
(1764, 4, 'Soporte', 'Soporte', '2025-08-21 17:16:41', NULL),
(1765, 4, 'Documentation', 'Documentation', '2025-08-21 17:16:41', NULL),
(1766, 4, 'video tutorial', 'video tutorial', '2025-08-21 17:16:41', NULL),
(1767, 4, 'Contact information update successfully', 'Contact information update successfully', '2025-08-21 17:16:41', NULL),
(1768, 4, 'Enter your page name', 'Enter your page name', '2025-08-21 17:16:41', NULL),
(1769, 4, 'Notification settings', 'Notification settings', '2025-08-21 17:16:41', NULL),
(1770, 4, 'Protocol', 'Protocol', '2025-08-21 17:16:41', NULL),
(1771, 4, 'Smtp crypto', 'Smtp crypto', '2025-08-21 17:16:41', NULL),
(1772, 4, 'Smtp host', 'Smtp host', '2025-08-21 17:16:41', NULL),
(1773, 4, 'Smtp port', 'Smtp port', '2025-08-21 17:16:41', NULL),
(1774, 4, 'Smtp from email', 'Smtp from email', '2025-08-21 17:16:41', NULL),
(1775, 4, 'Smtp username', 'Smtp username', '2025-08-21 17:16:41', NULL),
(1776, 4, 'Smtp password', 'Smtp password', '2025-08-21 17:16:41', NULL),
(1777, 4, 'Select Language to Replace', 'Select Language to Replace', '2025-08-21 17:16:41', NULL),
(1778, 4, 'Manage content', 'Manage content', '2025-08-21 17:16:41', NULL),
(1779, 4, 'Text editor', 'Text editor', '2025-08-21 17:16:41', NULL),
(1780, 4, 'Text color', 'Text color', '2025-08-21 17:16:41', NULL),
(1781, 4, 'Padding', 'Padding', '2025-08-21 17:16:41', NULL),
(1782, 4, 'Margin', 'Margin', '2025-08-21 17:16:41', NULL),
(1783, 4, 'Border', 'Border', '2025-08-21 17:16:41', NULL),
(1784, 4, 'none', 'none', '2025-08-21 17:16:41', NULL),
(1785, 4, 'dashed', 'dashed', '2025-08-21 17:16:41', NULL),
(1786, 4, 'dotted', 'dotted', '2025-08-21 17:16:41', NULL),
(1787, 4, 'Border roundness', 'Border roundness', '2025-08-21 17:16:41', NULL),
(1788, 4, 'Border color', 'Border color', '2025-08-21 17:16:41', NULL),
(1789, 4, 'Background color', 'Background color', '2025-08-21 17:16:41', NULL),
(1790, 4, 'Page layout has been updated', 'Page layout has been updated', '2025-08-21 17:16:41', NULL),
(1791, 4, 'La plataforma líder en aprendizaje online', 'La plataforma líder en aprendizaje online', '2025-08-21 17:16:41', NULL),
(1792, 4, 'Empieza a aprender con instructores expertos', 'Empieza a aprender con instructores expertos', '2025-08-21 17:16:41', NULL),
(1793, 4, 'Docentes', 'Docentes', '2025-08-21 17:16:41', NULL),
(1794, 4, 'Aprende de instructores expertos con experiencia real. Conviértete en la mejor versión de ti mismo, desde casa y a tu ritmo.', 'Aprende de instructores expertos con experiencia real. Conviértete en la mejor versión de ti mismo, desde casa y a tu ritmo.', '2025-08-21 17:16:41', NULL),
(1795, 4, 'Comienza Ahora!', 'Comienza Ahora!', '2025-08-21 17:16:41', NULL),
(1796, 4, 'Plataforma Rapida', 'Plataforma Rapida', '2025-08-21 17:16:41', NULL),
(1797, 4, 'Nuestra plataforma es veloz y confiable.', 'Nuestra plataforma es veloz y confiable.', '2025-08-21 17:16:41', NULL),
(1798, 4, 'Estudia donde quieras', 'Estudia donde quieras', '2025-08-21 17:16:41', NULL),
(1799, 4, 'Desde tu celular, tablet o laptop, lleva tus cursos siempre contigo, sin complicaciones.', 'Desde tu celular, tablet o laptop, lleva tus cursos siempre contigo, sin complicaciones.', '2025-08-21 17:16:41', NULL),
(1800, 4, 'Soporte rápido', 'Soporte rápido', '2025-08-21 17:16:41', NULL),
(1801, 4, 'Nuestro equipo te responde rápido y con buena onda. No estás solo, estamos para ayudarte.', 'Nuestro equipo te responde rápido y con buena onda. No estás solo, estamos para ayudarte.', '2025-08-21 17:16:41', NULL),
(1802, 4, 'Facil de Usar', 'Facil de Usar', '2025-08-21 17:16:41', NULL),
(1803, 4, 'Diseñada para que aprendas sin complicaciones, incluso si es tu primera vez.', 'Diseñada para que aprendas sin complicaciones, incluso si es tu primera vez.', '2025-08-21 17:16:41', NULL),
(1804, 4, 'Top de categoría de los cursos', 'Top de categoría de los cursos', '2025-08-21 17:16:41', NULL),
(1805, 4, 'Cursos destacados', 'Cursos destacados', '2025-08-21 17:16:41', NULL),
(1806, 4, 'Desarrolla tus habilidades con los mejores', 'Desarrolla tus habilidades con los mejores', '2025-08-21 17:16:41', NULL),
(1807, 4, 'Lo que nuestros clientes dicen sobre nosotros', 'Lo que nuestros clientes dicen sobre nosotros', '2025-08-21 17:16:41', NULL),
(1808, 4, 'Echa un vistazo a nuestras noticias', 'Echa un vistazo a nuestras noticias', '2025-08-21 17:16:41', NULL),
(1809, 3, 'Language added successfully', 'Language added successfully', NULL, NULL),
(1810, 3, 'Language already exists', 'Language already exists', NULL, NULL),
(1811, 3, 'Export language', 'Export language', NULL, NULL),
(1812, 3, 'Delete language', 'Delete language', NULL, NULL),
(1813, 3, 'Edit ____ phrases', 'Edit ____ phrases', NULL, NULL),
(1814, 3, 'Import all phrases from english', 'Import all phrases from english', NULL, NULL),
(1815, 3, 'Phrase updated', 'Phrase updated', NULL, NULL);

UPDATE `language_phrases` SET `translated` = 'Iniciar Sesión' WHERE `id` = 905;
UPDATE `language_phrases` SET `translated` = 'Iniciar Sesión' WHERE `id` = 906;
UPDATE `language_phrases` SET `translated` = '¡Vea su crecimiento y obtenga soporte de consultoría!' WHERE `id` = 907;
UPDATE `language_phrases` SET `translated` = 'Correo electrónico' WHERE `id` = 908;
UPDATE `language_phrases` SET `translated` = 'Tu correo electrónico' WHERE `id` = 909;
UPDATE `language_phrases` SET `translated` = 'Contraseña' WHERE `id` = 910;
UPDATE `language_phrases` SET `translated` = 'Recuérdame' WHERE `id` = 911;
UPDATE `language_phrases` SET `translated` = '¿Olvidaste tu contraseña?' WHERE `id` = 912;
UPDATE `language_phrases` SET `translated` = '¿Aún no tienes una cuenta?' WHERE `id` = 913;
UPDATE `language_phrases` SET `translated` = 'Crear cuenta' WHERE `id` = 914;
UPDATE `language_phrases` SET `translated` = 'Inicio' WHERE `id` = 915;
UPDATE `language_phrases` SET `translated` = 'Cursos' WHERE `id` = 916;
UPDATE `language_phrases` SET `translated` = 'Todos los cursos' WHERE `id` = 917;
UPDATE `language_phrases` SET `translated` = 'Campamento de entrenamiento' WHERE `id` = 918;
UPDATE `language_phrases` SET `translated` = 'Buscar...' WHERE `id` = 919;
UPDATE `language_phrases` SET `translated` = 'Buscar cursos' WHERE `id` = 920;
UPDATE `language_phrases` SET `translated` = 'Carrito' WHERE `id` = 921;
UPDATE `language_phrases` SET `translated` = 'Registrarse' WHERE `id` = 922;
UPDATE `language_phrases` SET `translated` = 'Contacta con nosotros' WHERE `id` = 923;
UPDATE `language_phrases` SET `translated` = 'Categorías principales' WHERE `id` = 924;
UPDATE `language_phrases` SET `translated` = 'Enlaces útiles' WHERE `id` = 925;
UPDATE `language_phrases` SET `translated` = 'Curso' WHERE `id` = 926;
UPDATE `language_phrases` SET `translated` = 'Blog' WHERE `id` = 927;
UPDATE `language_phrases` SET `translated` = 'Compañía' WHERE `id` = 928;
UPDATE `language_phrases` SET `translated` = 'Teléfono :' WHERE `id` = 929;
UPDATE `language_phrases` SET `translated` = 'Correo electrónico :' WHERE `id` = 930;
UPDATE `language_phrases` SET `translated` = 'Dirección de correo electrónico' WHERE `id` = 931;
UPDATE `language_phrases` SET `translated` = 'Enviar' WHERE `id` = 932;
UPDATE `language_phrases` SET `translated` = 'Sobre nosotros' WHERE `id` = 933;
UPDATE `language_phrases` SET `translated` = 'Política de privacidad' WHERE `id` = 934;
UPDATE `language_phrases` SET `translated` = 'Términos de uso' WHERE `id` = 935;
UPDATE `language_phrases` SET `translated` = 'Ventas y reembolsos' WHERE `id` = 936;
UPDATE `language_phrases` SET `translated` = 'Preguntas frecuentes' WHERE `id` = 937;
UPDATE `language_phrases` SET `translated` = 'Cerrar' WHERE `id` = 938;
UPDATE `language_phrases` SET `translated` = '¿Estás seguro?' WHERE `id` = 939;
UPDATE `language_phrases` SET `translated` = '¡No puedes revertirlo!' WHERE `id` = 940;
UPDATE `language_phrases` SET `translated` = 'Cancelar' WHERE `id` = 941;
UPDATE `language_phrases` SET `translated` = 'Sí, estoy seguro' WHERE `id` = 942;
UPDATE `language_phrases` SET `translated` = 'Justo ahora' WHERE `id` = 943;
UPDATE `language_phrases` SET `translated` = '¡Éxito!' WHERE `id` = 944;
UPDATE `language_phrases` SET `translated` = '¡Atención!' WHERE `id` = 945;
UPDATE `language_phrases` SET `translated` = '¡Ocurrió un error!' WHERE `id` = 946;
UPDATE `language_phrases` SET `translated` = 'Eliminar de la lista de deseos' WHERE `id` = 947;
UPDATE `language_phrases` SET `translated` = 'Este curso se agregó a tu lista de deseos' WHERE `id` = 948;
UPDATE `language_phrases` SET `translated` = 'Añadir a la lista de deseos' WHERE `id` = 949;
UPDATE `language_phrases` SET `translated` = 'Este curso se eliminó de tu lista de deseos' WHERE `id` = 950;
UPDATE `language_phrases` SET `translated` = 'Introduce tus palabras clave' WHERE `id` = 951;
UPDATE `language_phrases` SET `translated` = 'Mostrar menos' WHERE `id` = 952;
UPDATE `language_phrases` SET `translated` = 'Mostrar más' WHERE `id` = 953;
UPDATE `language_phrases` SET `translated` = 'Mostrando' WHERE `id` = 954;
UPDATE `language_phrases` SET `translated` = 'de' WHERE `id` = 955;
UPDATE `language_phrases` SET `translated` = 'datos' WHERE `id` = 956;
UPDATE `language_phrases` SET `translated` = 'Cuadrícula' WHERE `id` = 957;
UPDATE `language_phrases` SET `translated` = 'Lista' WHERE `id` = 958;
UPDATE `language_phrases` SET `translated` = 'Filtrar' WHERE `id` = 959;
UPDATE `language_phrases` SET `translated` = 'Categorías' WHERE `id` = 960;
UPDATE `language_phrases` SET `translated` = 'Precio' WHERE `id` = 961;
UPDATE `language_phrases` SET `translated` = 'Pagado' WHERE `id` = 962;
UPDATE `language_phrases` SET `translated` = 'Descuento' WHERE `id` = 963;
UPDATE `language_phrases` SET `translated` = 'Gratis' WHERE `id` = 964;
UPDATE `language_phrases` SET `translated` = 'Nivel' WHERE `id` = 965;
UPDATE `language_phrases` SET `translated` = 'Principiante' WHERE `id` = 966;
UPDATE `language_phrases` SET `translated` = 'Intermedio' WHERE `id` = 967;
UPDATE `language_phrases` SET `translated` = 'Avanzado' WHERE `id` = 968;
UPDATE `language_phrases` SET `translated` = 'idioma' WHERE `id` = 969;
UPDATE `language_phrases` SET `translated` = 'Inglés' WHERE `id` = 970;
UPDATE `language_phrases` SET `translated` = 'Español' WHERE `id` = 971;
UPDATE `language_phrases` SET `translated` = 'Itálico' WHERE `id` = 972;
UPDATE `language_phrases` SET `translated` = 'Alemán' WHERE `id` = 973;
UPDATE `language_phrases` SET `translated` = 'Calificaciones' WHERE `id` = 974;
UPDATE `language_phrases` SET `translated` = '¡No se encontraron datos!' WHERE `id` = 975;
UPDATE `language_phrases` SET `translated` = 'Intente utilizar las palabras clave adecuadas en su consulta de búsqueda para obtener resultados más precisos.' WHERE `id` = 976;
UPDATE `language_phrases` SET `translated` = 'Atrás' WHERE `id` = 977;
UPDATE `language_phrases` SET `translated` = 'Panel' WHERE `id` = 978;
UPDATE `language_phrases` SET `translated` = 'Número de cursos' WHERE `id` = 979;
UPDATE `language_phrases` SET `translated` = 'Número de lecciones' WHERE `id` = 980;
UPDATE `language_phrases` SET `translated` = 'Número de inscripciones' WHERE `id` = 981;
UPDATE `language_phrases` SET `translated` = 'Número de estudiantes' WHERE `id` = 982;
UPDATE `language_phrases` SET `translated` = 'Número de instructores' WHERE `id` = 983;
UPDATE `language_phrases` SET `translated` = 'Ingresos del administrador este año' WHERE `id` = 984;
UPDATE `language_phrases` SET `translated` = 'Ingresos del administrador' WHERE `id` = 985;
UPDATE `language_phrases` SET `translated` = 'Estado del curso' WHERE `id` = 986;
UPDATE `language_phrases` SET `translated` = 'Explorar cursos' WHERE `id` = 987;
UPDATE `language_phrases` SET `translated` = 'Activo' WHERE `id` = 988;
UPDATE `language_phrases` SET `translated` = 'Próximo' WHERE `id` = 989;
UPDATE `language_phrases` SET `translated` = 'Pendiente' WHERE `id` = 990;
UPDATE `language_phrases` SET `translated` = 'Privado' WHERE `id` = 991;
UPDATE `language_phrases` SET `translated` = 'Borrador' WHERE `id` = 992;
UPDATE `language_phrases` SET `translated` = 'Inactivo' WHERE `id` = 993;
UPDATE `language_phrases` SET `translated` = 'Retiro solicitado pendiente' WHERE `id` = 994;
UPDATE `language_phrases` SET `translated` = 'Pago al instructor' WHERE `id` = 995;
UPDATE `language_phrases` SET `translated` = 'Menú principal' WHERE `id` = 996;
UPDATE `language_phrases` SET `translated` = 'Categoría' WHERE `id` = 997;
UPDATE `language_phrases` SET `translated` = 'Gestionar cursos' WHERE `id` = 998;
UPDATE `language_phrases` SET `translated` = 'Añadir nuevo curso' WHERE `id` = 999;
UPDATE `language_phrases` SET `translated` = 'Cupones' WHERE `id` = 1000;
UPDATE `language_phrases` SET `translated` = 'Gestionar Bootcamps' WHERE `id` = 1001;
UPDATE `language_phrases` SET `translated` = 'Añadir nuevo Bootcamp' WHERE `id` = 1002;
UPDATE `language_phrases` SET `translated` = 'Historial de compras' WHERE `id` = 1003;
UPDATE `language_phrases` SET `translated` = 'Inscripción de estudiantes' WHERE `id` = 1004;
UPDATE `language_phrases` SET `translated` = 'Inscripción al curso' WHERE `id` = 1005;
UPDATE `language_phrases` SET `translated` = 'Historial de inscripciones' WHERE `id` = 1006;
UPDATE `language_phrases` SET `translated` = 'Inscribir estudiante' WHERE `id` = 1007;
UPDATE `language_phrases` SET `translated` = 'Informe de pagos' WHERE `id` = 1008;
UPDATE `language_phrases` SET `translated` = 'Pagos sin conexión' WHERE `id` = 1009;
UPDATE `language_phrases` SET `translated` = 'Ingresos del instructor' WHERE `id` = 1010;
UPDATE `language_phrases` SET `translated` = 'Historial de pagos' WHERE `id` = 1011;
UPDATE `language_phrases` SET `translated` = 'Usuarios' WHERE `id` = 1012;
UPDATE `language_phrases` SET `translated` = 'Administrador' WHERE `id` = 1013;
UPDATE `language_phrases` SET `translated` = 'Gestionar administrador' WHERE `id` = 1014;
UPDATE `language_phrases` SET `translated` = 'Añadir nuevo administrador' WHERE `id` = 1015;
UPDATE `language_phrases` SET `translated` = 'Instructor' WHERE `id` = 1016;
UPDATE `language_phrases` SET `translated` = 'Gestionar instructores' WHERE `id` = 1017;
UPDATE `language_phrases` SET `translated` = 'Añadir nuevo instructor' WHERE `id` = 1018;
UPDATE `language_phrases` SET `translated` = 'Configuración del instructor' WHERE `id` = 1019;
UPDATE `language_phrases` SET `translated` = 'Aplicación' WHERE `id` = 1020;
UPDATE `language_phrases` SET `translated` = 'Estudiante' WHERE `id` = 1021;
UPDATE `language_phrases` SET `translated` = 'Gestionar estudiantes' WHERE `id` = 1022;
UPDATE `language_phrases` SET `translated` = 'Añadir nuevo estudiante' WHERE `id` = 1023;
UPDATE `language_phrases` SET `translated` = 'Mensaje' WHERE `id` = 1024;
UPDATE `language_phrases` SET `translated` = 'Boletín informativo' WHERE `id` = 1025;
UPDATE `language_phrases` SET `translated` = 'Gestionar boletines' WHERE `id` = 1026;
UPDATE `language_phrases` SET `translated` = 'Usuario suscrito' WHERE `id` = 1027;
UPDATE `language_phrases` SET `translated` = 'Contactos' WHERE `id` = 1028;
UPDATE `language_phrases` SET `translated` = 'Blogs' WHERE `id` = 1029;
UPDATE `language_phrases` SET `translated` = 'Gestionar blogs' WHERE `id` = 1030;
UPDATE `language_phrases` SET `translated` = 'Blogs pendientes' WHERE `id` = 1031;
UPDATE `language_phrases` SET `translated` = 'Configuraciones' WHERE `id` = 1032;
UPDATE `language_phrases` SET `translated` = 'Configuraciones del sistema' WHERE `id` = 1033;
UPDATE `language_phrases` SET `translated` = 'Configuraciones del sitio web' WHERE `id` = 1034;
UPDATE `language_phrases` SET `translated` = 'Configuraciones de pago' WHERE `id` = 1035;
UPDATE `language_phrases` SET `translated` = 'Gestionar idioma' WHERE `id` = 1036;
UPDATE `language_phrases` SET `translated` = 'Configuraciones de clase en vivo' WHERE `id` = 1037;
UPDATE `language_phrases` SET `translated` = 'Configuraciones SMTP' WHERE `id` = 1038;
UPDATE `language_phrases` SET `translated` = 'Configuraciones de certificado' WHERE `id` = 1039;
UPDATE `language_phrases` SET `translated` = 'Configuraciones del reproductor' WHERE `id` = 1040;
UPDATE `language_phrases` SET `translated` = 'Configuraciones de Open AI' WHERE `id` = 1041;
UPDATE `language_phrases` SET `translated` = 'Constructor de la página de inicio' WHERE `id` = 1042;
UPDATE `language_phrases` SET `translated` = 'Configuraciones de SEO' WHERE `id` = 1043;
UPDATE `language_phrases` SET `translated` = 'Acerca de' WHERE `id` = 1044;
UPDATE `language_phrases` SET `translated` = 'Gestionar perfil' WHERE `id` = 1045;
UPDATE `language_phrases` SET `translated` = 'Panel de administrador' WHERE `id` = 1046;
UPDATE `language_phrases` SET `translated` = 'Ver sitio' WHERE `id` = 1047;
UPDATE `language_phrases` SET `translated` = 'Asistente de IA' WHERE `id` = 1048;
UPDATE `language_phrases` SET `translated` = 'Centro de ayuda' WHERE `id` = 1049;
UPDATE `language_phrases` SET `translated` = 'Leer documentación' WHERE `id` = 1050;
UPDATE `language_phrases` SET `translated` = 'Ver tutorial en vídeo' WHERE `id` = 1051;
UPDATE `language_phrases` SET `translated` = 'Obtener soporte al cliente' WHERE `id` = 1052;
UPDATE `language_phrases` SET `translated` = 'Pedir personalización' WHERE `id` = 1053;
UPDATE `language_phrases` SET `translated` = 'Solicitar una nueva función' WHERE `id` = 1054;
UPDATE `language_phrases` SET `translated` = 'Obtener servicios' WHERE `id` = 1055;
UPDATE `language_phrases` SET `translated` = 'Mi perfil' WHERE `id` = 1056;
UPDATE `language_phrases` SET `translated` = 'Cerrar sesión' WHERE `id` = 1057;
UPDATE `language_phrases` SET `translated` = 'Confirmar' WHERE `id` = 1058;
UPDATE `language_phrases` SET `translated` = 'Cargando' WHERE `id` = 1059;
UPDATE `language_phrases` SET `translated` = 'Nombre del sitio web' WHERE `id` = 1060;
UPDATE `language_phrases` SET `translated` = 'Título del sitio web' WHERE `id` = 1061;
UPDATE `language_phrases` SET `translated` = 'Palabras clave del sitio web' WHERE `id` = 1062;
UPDATE `language_phrases` SET `translated` = 'Descripción del sitio web' WHERE `id` = 1063;
UPDATE `language_phrases` SET `translated` = 'Autor' WHERE `id` = 1064;
UPDATE `language_phrases` SET `translated` = 'Eslogan' WHERE `id` = 1065;
UPDATE `language_phrases` SET `translated` = 'Correo electrónico del sistema' WHERE `id` = 1066;
UPDATE `language_phrases` SET `translated` = 'Dirección' WHERE `id` = 1067;
UPDATE `language_phrases` SET `translated` = 'Teléfono' WHERE `id` = 1068;
UPDATE `language_phrases` SET `translated` = 'Clave de API de Youtube' WHERE `id` = 1069;
UPDATE `language_phrases` SET `translated` = 'Obtener clave de API de YouTube' WHERE `id` = 1070;
UPDATE `language_phrases` SET `translated` = 'Si quieres usar video de Google Drive, debes habilitar el servicio de Google Drive en esta API' WHERE `id` = 1071;
UPDATE `language_phrases` SET `translated` = 'Clave de API de Vimeo' WHERE `id` = 1072;
UPDATE `language_phrases` SET `translated` = 'obtener clave de API de Vimeo' WHERE `id` = 1073;
UPDATE `language_phrases` SET `translated` = 'Código de compra' WHERE `id` = 1074;
UPDATE `language_phrases` SET `translated` = 'Idioma del sistema' WHERE `id` = 1075;
UPDATE `language_phrases` SET `translated` = 'Impuesto sobre la venta de cursos' WHERE `id` = 1076;
UPDATE `language_phrases` SET `translated` = 'Introduce 0 si quieres desactivar la opción de impuestos' WHERE `id` = 1077;
UPDATE `language_phrases` SET `translated` = 'Limitación de dispositivos' WHERE `id` = 1078;
UPDATE `language_phrases` SET `translated` = 'Texto del pie de página' WHERE `id` = 1079;
UPDATE `language_phrases` SET `translated` = 'Enlace del pie de página' WHERE `id` = 1080;
UPDATE `language_phrases` SET `translated` = 'Guardar cambios' WHERE `id` = 1081;
UPDATE `language_phrases` SET `translated` = 'Actualizar producto' WHERE `id` = 1082;
UPDATE `language_phrases` SET `translated` = 'Archivo' WHERE `id` = 1083;
UPDATE `language_phrases` SET `translated` = 'Actualizar' WHERE `id` = 1084;
UPDATE `language_phrases` SET `translated` = 'Versión actualizada correctamente' WHERE `id` = 1085;
UPDATE `language_phrases` SET `translated` = 'Selecciona tu servicio' WHERE `id` = 1086;
UPDATE `language_phrases` SET `translated` = 'Título del curso' WHERE `id` = 1087;
UPDATE `language_phrases` SET `translated` = 'Descripción corta del curso' WHERE `id` = 1088;
UPDATE `language_phrases` SET `translated` = 'Descripción larga del curso' WHERE `id` = 1089;
UPDATE `language_phrases` SET `translated` = 'Requisitos del curso' WHERE `id` = 1090;
UPDATE `language_phrases` SET `translated` = 'Resultados del curso' WHERE `id` = 1091;
UPDATE `language_phrases` SET `translated` = 'Preguntas frecuentes del curso' WHERE `id` = 1092;
UPDATE `language_phrases` SET `translated` = 'Etiquetas SEO del curso' WHERE `id` = 1093;
UPDATE `language_phrases` SET `translated` = 'Texto de la lección del curso' WHERE `id` = 1094;
UPDATE `language_phrases` SET `translated` = 'Texto del certificado del curso' WHERE `id` = 1095;
UPDATE `language_phrases` SET `translated` = 'Texto del cuestionario del curso' WHERE `id` = 1096;
UPDATE `language_phrases` SET `translated` = 'Título del blog del curso' WHERE `id` = 1097;
UPDATE `language_phrases` SET `translated` = 'Publicación del blog del curso' WHERE `id` = 1098;
UPDATE `language_phrases` SET `translated` = 'Miniatura del curso' WHERE `id` = 1099;
UPDATE `language_phrases` SET `translated` = 'Introduce tu palabra clave' WHERE `id` = 1100;
UPDATE `language_phrases` SET `translated` = 'Generar' WHERE `id` = 1101;
UPDATE `language_phrases` SET `translated` = 'Generando' WHERE `id` = 1102;
UPDATE `language_phrases` SET `translated` = 'Tus imágenes' WHERE `id` = 1103;
UPDATE `language_phrases` SET `translated` = 'Texto generado' WHERE `id` = 1104;
UPDATE `language_phrases` SET `translated` = 'Copiar' WHERE `id` = 1105;
UPDATE `language_phrases` SET `translated` = 'Copiado' WHERE `id` = 1106;
UPDATE `language_phrases` SET `translated` = 'No encontrado' WHERE `id` = 1107;
UPDATE `language_phrases` SET `translated` = 'Acerca de esta aplicación' WHERE `id` = 1108;
UPDATE `language_phrases` SET `translated` = 'Versión de software' WHERE `id` = 1109;
UPDATE `language_phrases` SET `translated` = 'Versión de Laravel' WHERE `id` = 1110;
UPDATE `language_phrases` SET `translated` = 'Comprobar actualizaciones' WHERE `id` = 1111;
UPDATE `language_phrases` SET `translated` = 'Versión de PHP' WHERE `id` = 1112;
UPDATE `language_phrases` SET `translated` = 'Habilitar Curl' WHERE `id` = 1113;
UPDATE `language_phrases` SET `translated` = 'habilitado' WHERE `id` = 1114;
UPDATE `language_phrases` SET `translated` = 'Licencia del producto' WHERE `id` = 1115;
UPDATE `language_phrases` SET `translated` = 'Introduzca un código de compra válido' WHERE `id` = 1116;
UPDATE `language_phrases` SET `translated` = 'Estado del soporte al cliente' WHERE `id` = 1117;
UPDATE `language_phrases` SET `translated` = 'Fecha de caducidad del soporte' WHERE `id` = 1118;
UPDATE `language_phrases` SET `translated` = 'Nombre del cliente' WHERE `id` = 1119;
UPDATE `language_phrases` SET `translated` = 'Soporte al cliente' WHERE `id` = 1120;
UPDATE `language_phrases` SET `translated` = 'Configuración de pago' WHERE `id` = 1121;
UPDATE `language_phrases` SET `translated` = 'Configuraciones de moneda' WHERE `id` = 1122;
UPDATE `language_phrases` SET `translated` = '¡Atención!' WHERE `id` = 1123;
UPDATE `language_phrases` SET `translated` = 'Asegúrate de que la moneda del sistema y todas las monedas de las pasarelas de pago activas sean las mismas' WHERE `id` = 1124;
UPDATE `language_phrases` SET `translated` = 'Seleccionar moneda' WHERE `id` = 1125;
UPDATE `language_phrases` SET `translated` = 'Posición de la moneda' WHERE `id` = 1126;
UPDATE `language_phrases` SET `translated` = 'Izquierda' WHERE `id` = 1127;
UPDATE `language_phrases` SET `translated` = 'Derecha' WHERE `id` = 1128;
UPDATE `language_phrases` SET `translated` = 'Izquierda con un espacio' WHERE `id` = 1129;
UPDATE `language_phrases` SET `translated` = 'Derecha con un espacio' WHERE `id` = 1130;
UPDATE `language_phrases` SET `translated` = 'No' WHERE `id` = 1131;
UPDATE `language_phrases` SET `translated` = 'Sí' WHERE `id` = 1132;
UPDATE `language_phrases` SET `translated` = '¿Quieres mantener activado el modo de prueba?' WHERE `id` = 1133;
UPDATE `language_phrases` SET `translated` = 'id de cliente de sandbox' WHERE `id` = 1134;
UPDATE `language_phrases` SET `translated` = 'clave secreta de sandbox' WHERE `id` = 1135;
UPDATE `language_phrases` SET `translated` = 'id de cliente de producción' WHERE `id` = 1136;
UPDATE `language_phrases` SET `translated` = 'clave secreta de producción' WHERE `id` = 1137;
UPDATE `language_phrases` SET `translated` = 'configuración' WHERE `id` = 1138;
UPDATE `language_phrases` SET `translated` = 'clave pública' WHERE `id` = 1139;
UPDATE `language_phrases` SET `translated` = 'clave secreta' WHERE `id` = 1140;
UPDATE `language_phrases` SET `translated` = 'clave pública en vivo' WHERE `id` = 1141;
UPDATE `language_phrases` SET `translated` = 'clave secreta en vivo' WHERE `id` = 1142;
UPDATE `language_phrases` SET `translated` = 'Elige una opción' WHERE `id` = 1143;
UPDATE `language_phrases` SET `translated` = 'información bancaria' WHERE `id` = 1144;
UPDATE `language_phrases` SET `translated` = 'clave secreta de prueba' WHERE `id` = 1145;
UPDATE `language_phrases` SET `translated` = 'clave pública de prueba' WHERE `id` = 1146;
UPDATE `language_phrases` SET `translated` = 'Política de cookies' WHERE `id` = 1147;
UPDATE `language_phrases` SET `translated` = 'Aceptar' WHERE `id` = 1148;
UPDATE `language_phrases` SET `translated` = 'Saber más' WHERE `id` = 1149;
UPDATE `language_phrases` SET `translated` = 'Estudiantes se han inscrito' WHERE `id` = 1150;
UPDATE `language_phrases` SET `translated` = 'Constructor de páginas' WHERE `id` = 1151;
UPDATE `language_phrases` SET `translated` = 'Crear página' WHERE `id` = 1152;
UPDATE `language_phrases` SET `translated` = '#' WHERE `id` = 1153;
UPDATE `language_phrases` SET `translated` = 'Nombre de la página' WHERE `id` = 1154;
UPDATE `language_phrases` SET `translated` = 'Estado' WHERE `id` = 1155;
UPDATE `language_phrases` SET `translated` = 'Acción' WHERE `id` = 1156;
UPDATE `language_phrases` SET `translated` = 'Editar página de inicio' WHERE `id` = 1157;
UPDATE `language_phrases` SET `translated` = 'Editar inicio' WHERE `id` = 1158;
UPDATE `language_phrases` SET `translated` = 'Vista previa' WHERE `id` = 1159;
UPDATE `language_phrases` SET `translated` = 'Editar diseño' WHERE `id` = 1160;
UPDATE `language_phrases` SET `translated` = 'Editar página' WHERE `id` = 1161;
UPDATE `language_phrases` SET `translated` = 'Editar' WHERE `id` = 1162;
UPDATE `language_phrases` SET `translated` = 'Eliminar' WHERE `id` = 1163;
UPDATE `language_phrases` SET `translated` = 'Página de inicio activada' WHERE `id` = 1164;
UPDATE `language_phrases` SET `translated` = 'El líder en aprendizaje en línea' WHERE `id` = 1165;
UPDATE `language_phrases` SET `translated` = 'Empezar' WHERE `id` = 1166;
UPDATE `language_phrases` SET `translated` = 'Curso destacado especial' WHERE `id` = 1167;
UPDATE `language_phrases` SET `translated` = 'Este curso destaca un curso cuidadosamente seleccionado con contenido excepcional u ofertas exclusivas.' WHERE `id` = 1168;
UPDATE `language_phrases` SET `translated` = 'Por qué elegirnos' WHERE `id` = 1169;
UPDATE `language_phrases` SET `translated` = 'Estudiante feliz' WHERE `id` = 1170;
UPDATE `language_phrases` SET `translated` = 'Educadores de calidad' WHERE `id` = 1171;
UPDATE `language_phrases` SET `translated` = 'Cursos premium' WHERE `id` = 1172;
UPDATE `language_phrases` SET `translated` = 'Curso gratuito' WHERE `id` = 1173;
UPDATE `language_phrases` SET `translated` = 'Curso mejor valorado' WHERE `id` = 1174;
UPDATE `language_phrases` SET `translated` = 'El curso mejor valorado muestra el curso con la calificación más alta según las reseñas de los estudiantes y las métricas de rendimiento.' WHERE `id` = 1175;
UPDATE `language_phrases` SET `translated` = 'Lo que la gente piensa de nosotros' WHERE `id` = 1176;
UPDATE `language_phrases` SET `translated` = 'Destaca los comentarios y testimonios de los usuarios, reflejando sus experiencias y satisfacción.' WHERE `id` = 1177;
UPDATE `language_phrases` SET `translated` = 'Preguntas frecuentes' WHERE `id` = 1178;
UPDATE `language_phrases` SET `translated` = 'Nuestro último blog' WHERE `id` = 1179;
UPDATE `language_phrases` SET `translated` = 'El último blog destaca los artículos, actualizaciones y conocimientos más recientes de nuestra plataforma.' WHERE `id` = 1180;
UPDATE `language_phrases` SET `translated` = 'Lista de deseos' WHERE `id` = 1181;
UPDATE `language_phrases` SET `translated` = 'Cerrar sesión' WHERE `id` = 1182;
UPDATE `language_phrases` SET `translated` = 'Cerrar sesión' WHERE `id` = 1183;
UPDATE `language_phrases` SET `translated` = 'Panel de administrador' WHERE `id` = 1184;
UPDATE `language_phrases` SET `translated` = 'Es un hecho establecido desde hace mucho tiempo que un lector se distraerá con el contenido legible de un diseño de página' WHERE `id` = 1185;
UPDATE `language_phrases` SET `translated` = 'Suscríbete para estar atento a los nuevos diseños web y las últimas actualizaciones. ¡Vamos a hacerlo!' WHERE `id` = 1186;
UPDATE `language_phrases` SET `translated` = '© 2024 Todos los derechos reservados' WHERE `id` = 1187;
UPDATE `language_phrases` SET `translated` = '404 no encontrado' WHERE `id` = 1188;
UPDATE `language_phrases` SET `translated` = 'No se pudo encontrar la página que solicitó' WHERE `id` = 1189;
UPDATE `language_phrases` SET `translated` = 'Por favor, intente lo siguiente' WHERE `id` = 1190;
UPDATE `language_phrases` SET `translated` = 'Revise la ortografía de la URL' WHERE `id` = 1191;
UPDATE `language_phrases` SET `translated` = 'Si todavía está desconcertado, haga clic en el enlace de inicio a continuación' WHERE `id` = 1192;
UPDATE `language_phrases` SET `translated` = 'Volver al inicio' WHERE `id` = 1193;
UPDATE `language_phrases` SET `translated` = 'Conviértete en un instructor' WHERE `id` = 1194;
UPDATE `language_phrases` SET `translated` = 'Título' WHERE `id` = 1195;
UPDATE `language_phrases` SET `translated` = 'Descripción' WHERE `id` = 1196;
UPDATE `language_phrases` SET `translated` = 'URL del vídeo' WHERE `id` = 1197;
UPDATE `language_phrases` SET `translated` = 'Imagen' WHERE `id` = 1198;
UPDATE `language_phrases` SET `translated` = 'Información del banner' WHERE `id` = 1199;
UPDATE `language_phrases` SET `translated` = 'Añadir nuevo' WHERE `id` = 1200;
UPDATE `language_phrases` SET `translated` = 'Eliminar' WHERE `id` = 1201;
UPDATE `language_phrases` SET `translated` = 'Enlace de vídeo' WHERE `id` = 1202;
UPDATE `language_phrases` SET `translated` = 'Youtube' WHERE `id` = 1203;
UPDATE `language_phrases` SET `translated` = 'HTML5' WHERE `id` = 1204;
UPDATE `language_phrases` SET `translated` = 'Toda la categoría' WHERE `id` = 1205;
UPDATE `language_phrases` SET `translated` = 'Añadir nueva categoría' WHERE `id` = 1206;
UPDATE `language_phrases` SET `translated` = 'Nombre de la categoría' WHERE `id` = 1207;
UPDATE `language_phrases` SET `translated` = 'Introduce el nombre de tu categoría' WHERE `id` = 1208;
UPDATE `language_phrases` SET `translated` = 'Introduce el nombre único de tu categoría' WHERE `id` = 1209;
UPDATE `language_phrases` SET `translated` = 'Elige tu icono' WHERE `id` = 1210;
UPDATE `language_phrases` SET `translated` = 'Elige el icono de tu categoría' WHERE `id` = 1211;
UPDATE `language_phrases` SET `translated` = 'Palabras clave' WHERE `id` = 1212;
UPDATE `language_phrases` SET `translated` = 'opcional' WHERE `id` = 1213;
UPDATE `language_phrases` SET `translated` = 'Descripción de la categoría' WHERE `id` = 1214;
UPDATE `language_phrases` SET `translated` = 'Introduce tu descripción' WHERE `id` = 1215;
UPDATE `language_phrases` SET `translated` = 'Miniatura' WHERE `id` = 1216;
UPDATE `language_phrases` SET `translated` = 'Logotipo de la categoría' WHERE `id` = 1217;
UPDATE `language_phrases` SET `translated` = 'Categoría añadida correctamente' WHERE `id` = 1218;
UPDATE `language_phrases` SET `translated` = 'Añadir' WHERE `id` = 1219;
UPDATE `language_phrases` SET `translated` = 'Editar categoría' WHERE `id` = 1220;
UPDATE `language_phrases` SET `translated` = 'Crear curso' WHERE `id` = 1221;
UPDATE `language_phrases` SET `translated` = 'Introducir título del curso' WHERE `id` = 1222;
UPDATE `language_phrases` SET `translated` = 'Descripción corta' WHERE `id` = 1223;
UPDATE `language_phrases` SET `translated` = 'Introducir descripción corta' WHERE `id` = 1224;
UPDATE `language_phrases` SET `translated` = 'Introducir descripción' WHERE `id` = 1225;
UPDATE `language_phrases` SET `translated` = 'Crear como' WHERE `id` = 1226;
UPDATE `language_phrases` SET `translated` = 'Seleccionar una categoría' WHERE `id` = 1227;
UPDATE `language_phrases` SET `translated` = 'Nivel del curso' WHERE `id` = 1228;
UPDATE `language_phrases` SET `translated` = 'Selecciona el nivel de tu curso' WHERE `id` = 1229;
UPDATE `language_phrases` SET `translated` = 'Hecho en' WHERE `id` = 1230;
UPDATE `language_phrases` SET `translated` = 'Selecciona el idioma de tu curso' WHERE `id` = 1231;
UPDATE `language_phrases` SET `translated` = 'Tipo de precio' WHERE `id` = 1232;
UPDATE `language_phrases` SET `translated` = 'Introduce el precio de tu curso' WHERE `id` = 1233;
UPDATE `language_phrases` SET `translated` = 'Marcar si este curso tiene descuento' WHERE `id` = 1234;
UPDATE `language_phrases` SET `translated` = 'Precio con descuento' WHERE `id` = 1235;
UPDATE `language_phrases` SET `translated` = 'Introduce el precio con descuento' WHERE `id` = 1236;
UPDATE `language_phrases` SET `translated` = '¡Terminar!' WHERE `id` = 1237;
UPDATE `language_phrases` SET `translated` = 'Curso añadido correctamente' WHERE `id` = 1238;
UPDATE `language_phrases` SET `translated` = 'Editar curso' WHERE `id` = 1239;
UPDATE `language_phrases` SET `translated` = 'Editando' WHERE `id` = 1240;
UPDATE `language_phrases` SET `translated` = 'Ayuda' WHERE `id` = 1241;
UPDATE `language_phrases` SET `translated` = 'Vista del frontend' WHERE `id` = 1242;
UPDATE `language_phrases` SET `translated` = 'Reproductor del curso' WHERE `id` = 1243;
UPDATE `language_phrases` SET `translated` = 'Plan de estudios' WHERE `id` = 1244;
UPDATE `language_phrases` SET `translated` = 'Básico' WHERE `id` = 1245;
UPDATE `language_phrases` SET `translated` = 'Clase en vivo' WHERE `id` = 1246;
UPDATE `language_phrases` SET `translated` = 'Precios' WHERE `id` = 1247;
UPDATE `language_phrases` SET `translated` = 'Información' WHERE `id` = 1248;
UPDATE `language_phrases` SET `translated` = 'Medios' WHERE `id` = 1249;
UPDATE `language_phrases` SET `translated` = 'SEO' WHERE `id` = 1250;
UPDATE `language_phrases` SET `translated` = 'Añadir nueva sección' WHERE `id` = 1251;
UPDATE `language_phrases` SET `translated` = 'Añadir sección' WHERE `id` = 1252;
UPDATE `language_phrases` SET `translated` = 'Añadir una nueva sección' WHERE `id` = 1253;
UPDATE `language_phrases` SET `translated` = 'Crear bootcamp' WHERE `id` = 1254;
UPDATE `language_phrases` SET `translated` = 'Marcar si este bootcamp tiene descuento' WHERE `id` = 1255;
UPDATE `language_phrases` SET `translated` = 'Fecha de publicación' WHERE `id` = 1256;
UPDATE `language_phrases` SET `translated` = 'Categoría de Bootcamp' WHERE `id` = 1257;
UPDATE `language_phrases` SET `translated` = 'No se encontraron datos' WHERE `id` = 1258;
UPDATE `language_phrases` SET `translated` = 'Añadir categoría' WHERE `id` = 1259;
UPDATE `language_phrases` SET `translated` = 'La categoría ha sido creada.' WHERE `id` = 1260;
UPDATE `language_phrases` SET `translated` = 'Total de bootcamps' WHERE `id` = 1261;
UPDATE `language_phrases` SET `translated` = 'El bootcamp ha sido creado.' WHERE `id` = 1262;
UPDATE `language_phrases` SET `translated` = 'Editar bootcamp' WHERE `id` = 1263;
UPDATE `language_phrases` SET `translated` = 'Vista del frontend' WHERE `id` = 1264;
UPDATE `language_phrases` SET `translated` = 'Crear estudiante' WHERE `id` = 1265;
UPDATE `language_phrases` SET `translated` = 'Información del estudiante' WHERE `id` = 1266;
UPDATE `language_phrases` SET `translated` = 'Credenciales de inicio de sesión' WHERE `id` = 1267;
UPDATE `language_phrases` SET `translated` = 'Enlaces sociales' WHERE `id` = 1268;
UPDATE `language_phrases` SET `translated` = 'Nombre' WHERE `id` = 1269;
UPDATE `language_phrases` SET `translated` = 'Biografía' WHERE `id` = 1270;
UPDATE `language_phrases` SET `translated` = 'Imagen de usuario' WHERE `id` = 1271;
UPDATE `language_phrases` SET `translated` = 'Facebook' WHERE `id` = 1272;
UPDATE `language_phrases` SET `translated` = 'Twitter' WHERE `id` = 1273;
UPDATE `language_phrases` SET `translated` = 'Linkedin' WHERE `id` = 1274;
UPDATE `language_phrases` SET `translated` = 'Estudiante añadido correctamente' WHERE `id` = 1275;
UPDATE `language_phrases` SET `translated` = 'Lista de estudiantes' WHERE `id` = 1276;
UPDATE `language_phrases` SET `translated` = 'Exportar' WHERE `id` = 1277;
UPDATE `language_phrases` SET `translated` = 'PDF' WHERE `id` = 1278;
UPDATE `language_phrases` SET `translated` = 'Imprimir' WHERE `id` = 1279;
UPDATE `language_phrases` SET `translated` = 'Buscar usuario' WHERE `id` = 1280;
UPDATE `language_phrases` SET `translated` = 'Buscar' WHERE `id` = 1281;
UPDATE `language_phrases` SET `translated` = 'Curso inscrito' WHERE `id` = 1282;
UPDATE `language_phrases` SET `translated` = 'Opciones' WHERE `id` = 1283;
UPDATE `language_phrases` SET `translated` = 'Verificación de correo electrónico' WHERE `id` = 1284;
UPDATE `language_phrases` SET `translated` = '¡Gracias por registrarte! Antes de comenzar, ¿podrías verificar tu dirección de correo electrónico haciendo clic en el enlace que te acabamos de enviar? Si no recibiste el correo electrónico, con gusto te enviaremos otro.' WHERE `id` = 1285;
UPDATE `language_phrases` SET `translated` = 'Reenviar correo de verificación' WHERE `id` = 1286;
UPDATE `language_phrases` SET `translated` = 'Mis cursos' WHERE `id` = 1287;
UPDATE `language_phrases` SET `translated` = 'Mis Bootcamps' WHERE `id` = 1288;
UPDATE `language_phrases` SET `translated` = 'Subir foto' WHERE `id` = 1289;
UPDATE `language_phrases` SET `translated` = 'Subir nuevo' WHERE `id` = 1290;
UPDATE `language_phrases` SET `translated` = 'Mis equipos' WHERE `id` = 1291;
UPDATE `language_phrases` SET `translated` = 'Intente utilizar las palabras clave adecuadas.' WHERE `id` = 1292;
UPDATE `language_phrases` SET `translated` = 'Bootcamps' WHERE `id` = 1293;
UPDATE `language_phrases` SET `translated` = 'Todos los Bootcamps' WHERE `id` = 1294;
UPDATE `language_phrases` SET `translated` = 'Clase' WHERE `id` = 1295;
UPDATE `language_phrases` SET `translated` = 'Ver detalles' WHERE `id` = 1296;
UPDATE `language_phrases` SET `translated` = 'Comprar ahora' WHERE `id` = 1297;
UPDATE `language_phrases` SET `translated` = 'El artículo ya está comprado.' WHERE `id` = 1298;
UPDATE `language_phrases` SET `translated` = 'Pago de Bootcamp' WHERE `id` = 1299;
UPDATE `language_phrases` SET `translated` = 'Resumen del pedido' WHERE `id` = 1300;
UPDATE `language_phrases` SET `translated` = 'Cancelar pago' WHERE `id` = 1301;
UPDATE `language_phrases` SET `translated` = 'Seleccionar pasarela de pago' WHERE `id` = 1302;
UPDATE `language_phrases` SET `translated` = 'Lista de artículos' WHERE `id` = 1303;
UPDATE `language_phrases` SET `translated` = 'Total' WHERE `id` = 1304;
UPDATE `language_phrases` SET `translated` = 'Total general' WHERE `id` = 1305;
UPDATE `language_phrases` SET `translated` = 'Reseñas' WHERE `id` = 1306;
UPDATE `language_phrases` SET `translated` = 'lección' WHERE `id` = 1307;
UPDATE `language_phrases` SET `translated` = 'Estudiantes' WHERE `id` = 1308;
UPDATE `language_phrases` SET `translated` = 'Términos y condiciones' WHERE `id` = 1309;
UPDATE `language_phrases` SET `translated` = 'Términos' WHERE `id` = 1310;
UPDATE `language_phrases` SET `translated` = 'BIENVENIDO A CHEF' WHERE `id` = 1311;
UPDATE `language_phrases` SET `translated` = 'Visitar cursos' WHERE `id` = 1312;
UPDATE `language_phrases` SET `translated` = 'Estudiantes inscritos' WHERE `id` = 1313;
UPDATE `language_phrases` SET `translated` = 'Instructores en línea' WHERE `id` = 1314;
UPDATE `language_phrases` SET `translated` = 'Últimas habilidades principales' WHERE `id` = 1315;
UPDATE `language_phrases` SET `translated` = 'Impresionante sitio, la mejor publicidad ha sido el negocio.' WHERE `id` = 1316;
UPDATE `language_phrases` SET `translated` = 'Expertos de la industria' WHERE `id` = 1317;
UPDATE `language_phrases` SET `translated` = 'Aprendizaje desde cualquier lugar' WHERE `id` = 1318;
UPDATE `language_phrases` SET `translated` = 'Cursos mejor valorados' WHERE `id` = 1319;
UPDATE `language_phrases` SET `translated` = 'Próximos cursos' WHERE `id` = 1320;
UPDATE `language_phrases` SET `translated` = 'Destaca los últimos cursos que se lanzarán, brindando a los estudiantes un adelanto de las nuevas oportunidades de aprendizaje y desarrollo de habilidades. ¡Manténgase a la vanguardia con nuestra selección curada de próximas ofertas educativas!' WHERE `id` = 1321;
UPDATE `language_phrases` SET `translated` = 'Cursos destacados' WHERE `id` = 1322;
UPDATE `language_phrases` SET `translated` = 'Piensa con más claridad' WHERE `id` = 1323;
UPDATE `language_phrases` SET `translated` = 'Impresionante sitio. En la parte superior, la publicidad de un negocio en línea incluye el montaje. Tener el mejor mantenimiento.' WHERE `id` = 1324;
UPDATE `language_phrases` SET `translated` = 'Título del vídeo' WHERE `id` = 1325;
UPDATE `language_phrases` SET `translated` = 'Nuestro instructor popular' WHERE `id` = 1326;
UPDATE `language_phrases` SET `translated` = 'Destaca a nuestro educador más solicitado, reconocido por su estilo de enseñanza atractivo y su excepcional contenido de cursos. ¡Descubra su experiencia y únase a los muchos estudiantes que se han beneficiado de sus clases!' WHERE `id` = 1327;
UPDATE `language_phrases` SET `translated` = '¿Preguntas frecuentes?' WHERE `id` = 1328;
UPDATE `language_phrases` SET `translated` = 'Las preguntas frecuentes brindan respuestas rápidas a las consultas comunes, lo que ayuda a los usuarios a resolver sus dudas de manera eficiente.' WHERE `id` = 1329;
UPDATE `language_phrases` SET `translated` = 'Siga las últimas noticias' WHERE `id` = 1330;
UPDATE `language_phrases` SET `translated` = 'Cursos principales' WHERE `id` = 1331;
UPDATE `language_phrases` SET `translated` = 'lecciones' WHERE `id` = 1332;
UPDATE `language_phrases` SET `translated` = 'Suscríbete a nuestro boletín para recibir las últimas actualizaciones' WHERE `id` = 1333;
UPDATE `language_phrases` SET `translated` = 'Suscríbete para estar atento a las últimas actualizaciones y ofertas. ¡Vamos a hacerlo!' WHERE `id` = 1334;
UPDATE `language_phrases` SET `translated` = 'Suscribirse' WHERE `id` = 1335;
UPDATE `language_phrases` SET `translated` = 'Lea nuestra política de privacidad' WHERE `id` = 1336;
UPDATE `language_phrases` SET `translated` = 'Aquí' WHERE `id` = 1337;
UPDATE `language_phrases` SET `translated` = 'Categoría del blog' WHERE `id` = 1338;
UPDATE `language_phrases` SET `translated` = 'Subtítulo' WHERE `id` = 1339;
UPDATE `language_phrases` SET `translated` = '(80 caracteres)' WHERE `id` = 1340;
UPDATE `language_phrases` SET `translated` = 'Categoría añadida correctamente' WHERE `id` = 1341;
UPDATE `language_phrases` SET `translated` = 'Número total de blogs' WHERE `id` = 1342;
UPDATE `language_phrases` SET `translated` = 'Añadir nuevo blog' WHERE `id` = 1343;
UPDATE `language_phrases` SET `translated` = 'Buscar título' WHERE `id` = 1344;
UPDATE `language_phrases` SET `translated` = 'Añadir blog' WHERE `id` = 1345;
UPDATE `language_phrases` SET `translated` = 'Introducir título del blog' WHERE `id` = 1346;
UPDATE `language_phrases` SET `translated` = 'Escriba su palabra clave y presione el botón htw enter' WHERE `id` = 1347;
UPDATE `language_phrases` SET `translated` = 'Banner del blog' WHERE `id` = 1348;
UPDATE `language_phrases` SET `translated` = 'Miniatura del blog' WHERE `id` = 1349;
UPDATE `language_phrases` SET `translated` = '¿Le gustaría designarlo como popular?' WHERE `id` = 1350;
UPDATE `language_phrases` SET `translated` = 'Blog añadido correctamente' WHERE `id` = 1351;
UPDATE `language_phrases` SET `translated` = 'Creador' WHERE `id` = 1352;
UPDATE `language_phrases` SET `translated` = 'Ver en el frontend' WHERE `id` = 1353;
UPDATE `language_phrases` SET `translated` = 'Leer más' WHERE `id` = 1354;
UPDATE `language_phrases` SET `translated` = 'Comenzar ahora' WHERE `id` = 1355;
UPDATE `language_phrases` SET `translated` = 'Creando una comunidad de aprendices de por vida' WHERE `id` = 1356;
UPDATE `language_phrases` SET `translated` = 'Nuestro LMS va más allá de solo proporcionar cursos. Es una plataforma diseñada para encender la curiosidad y potenciar su viaje de aprendizaje de por vida. Esta comunidad de apoyo brinda un espacio para hacer preguntas, sin importar cuán grandes o pequeñas sean, y recibir respuestas perspicaces de estudiantes experimentados y expertos en la materia.' WHERE `id` = 1357;
UPDATE `language_phrases` SET `translated` = 'Comparta sus propias experiencias y desafíos, y encuentre aliento e inspiración en otros en un camino similar. Las diversas perspectivas dentro de nuestra comunidad ampliarán sus horizontes y desafiarán su pensamiento, fomentando una comprensión más profunda y una experiencia de aprendizaje más rica. Juntos, transformaremos el aprendizaje de una búsqueda solitaria en una aventura colaborativa, donde el conocimiento compartido impulsa el crecimiento individual y el descubrimiento colectivo.' WHERE `id` = 1358;
UPDATE `language_phrases` SET `translated` = 'Más información sobre nosotros' WHERE `id` = 1359;
UPDATE `language_phrases` SET `translated` = 'Nuestros cursos en línea' WHERE `id` = 1360;
UPDATE `language_phrases` SET `translated` = 'Ver más' WHERE `id` = 1361;
UPDATE `language_phrases` SET `translated` = 'Nuestro blog' WHERE `id` = 1362;
UPDATE `language_phrases` SET `translated` = 'APRENDE DESDE HOY' WHERE `id` = 1363;
UPDATE `language_phrases` SET `translated` = 'Ver vídeo' WHERE `id` = 1364;
UPDATE `language_phrases` SET `translated` = 'Mentores expertos' WHERE `id` = 1365;
UPDATE `language_phrases` SET `translated` = 'Estudiantes a nivel mundial' WHERE `id` = 1366;
UPDATE `language_phrases` SET `translated` = 'Curso gratuito' WHERE `id` = 1367;
UPDATE `language_phrases` SET `translated` = 'Lo que dicen sobre nuestros cursos' WHERE `id` = 1368;
UPDATE `language_phrases` SET `translated` = 'Habiendo disfrutado de un 2015 increíblemente exitoso, no puede haber un conjunto dinámico de herramientas de enseñanza de DJ facturadas para ser implementadas.' WHERE `id` = 1369;
UPDATE `language_phrases` SET `translated` = 'Verificación del correo electrónico del estudiante' WHERE `id` = 1370;
UPDATE `language_phrases` SET `translated` = 'Desactivado' WHERE `id` = 1371;
UPDATE `language_phrases` SET `translated` = 'Configuraciones del frontend' WHERE `id` = 1372;
UPDATE `language_phrases` SET `translated` = 'Discurso motivacional' WHERE `id` = 1373;
UPDATE `language_phrases` SET `translated` = 'Preguntas frecuentes del sitio web' WHERE `id` = 1374;
UPDATE `language_phrases` SET `translated` = 'Información de contacto' WHERE `id` = 1375;
UPDATE `language_phrases` SET `translated` = 'Reseñas de usuarios' WHERE `id` = 1376;
UPDATE `language_phrases` SET `translated` = 'Logotipo e imágenes' WHERE `id` = 1377;
UPDATE `language_phrases` SET `translated` = 'Configuraciones del sitio web del frontend' WHERE `id` = 1378;
UPDATE `language_phrases` SET `translated` = 'Título del banner' WHERE `id` = 1379;
UPDATE `language_phrases` SET `translated` = 'Subtítulo del banner' WHERE `id` = 1380;
UPDATE `language_phrases` SET `translated` = 'Proveedor de vídeo promocional' WHERE `id` = 1381;
UPDATE `language_phrases` SET `translated` = 'Enlace de vídeo de Youtube' WHERE `id` = 1382;
UPDATE `language_phrases` SET `translated` = 'Enlace de vídeo de Vimeo' WHERE `id` = 1383;
UPDATE `language_phrases` SET `translated` = 'Enlace de vídeo HTML5' WHERE `id` = 1384;
UPDATE `language_phrases` SET `translated` = 'Enlace del vídeo promocional' WHERE `id` = 1385;
UPDATE `language_phrases` SET `translated` = 'Estado de las cookies' WHERE `id` = 1386;
UPDATE `language_phrases` SET `translated` = 'Nota sobre las cookies' WHERE `id` = 1387;
UPDATE `language_phrases` SET `translated` = 'Política de reembolso' WHERE `id` = 1388;
UPDATE `language_phrases` SET `translated` = 'Enlace de descarga de la aplicación móvil' WHERE `id` = 1389;
UPDATE `language_phrases` SET `translated` = 'Actualizar configuraciones' WHERE `id` = 1390;
UPDATE `language_phrases` SET `translated` = 'designación' WHERE `id` = 1391;
UPDATE `language_phrases` SET `translated` = 'Pregunta' WHERE `id` = 1392;
UPDATE `language_phrases` SET `translated` = 'Escribe una pregunta' WHERE `id` = 1393;
UPDATE `language_phrases` SET `translated` = 'Respuesta' WHERE `id` = 1394;
UPDATE `language_phrases` SET `translated` = 'Escribe una respuesta a la pregunta' WHERE `id` = 1395;
UPDATE `language_phrases` SET `translated` = 'Correo electrónico de contacto' WHERE `id` = 1396;
UPDATE `language_phrases` SET `translated` = 'Número de teléfono' WHERE `id` = 1397;
UPDATE `language_phrases` SET `translated` = 'Horario de oficina' WHERE `id` = 1398;
UPDATE `language_phrases` SET `translated` = 'Ubicación' WHERE `id` = 1399;
UPDATE `language_phrases` SET `translated` = 'Latitud' WHERE `id` = 1400;
UPDATE `language_phrases` SET `translated` = 'Longitud' WHERE `id` = 1401;
UPDATE `language_phrases` SET `translated` = 'Configuraciones de Recaptcha' WHERE `id` = 1402;
UPDATE `language_phrases` SET `translated` = 'Estado de Recaptcha' WHERE `id` = 1403;
UPDATE `language_phrases` SET `translated` = 'Clave del sitio de Recaptcha' WHERE `id` = 1404;
UPDATE `language_phrases` SET `translated` = 'Clave secreta de Recaptcha' WHERE `id` = 1405;
UPDATE `language_phrases` SET `translated` = 'Actualizar configuraciones de recaptcha' WHERE `id` = 1406;
UPDATE `language_phrases` SET `translated` = 'Reseña' WHERE `id` = 1407;
UPDATE `language_phrases` SET `translated` = 'Añadir nueva reseña' WHERE `id` = 1408;
UPDATE `language_phrases` SET `translated` = 'Haga clic aquí para elegir una imagen de banner' WHERE `id` = 1409;
UPDATE `language_phrases` SET `translated` = 'Subir imagen de banner' WHERE `id` = 1410;
UPDATE `language_phrases` SET `translated` = 'Haga clic aquí para elegir un logotipo claro' WHERE `id` = 1411;
UPDATE `language_phrases` SET `translated` = 'Subir logotipo claro' WHERE `id` = 1412;
UPDATE `language_phrases` SET `translated` = 'Haga clic aquí para elegir un logotipo oscuro' WHERE `id` = 1413;
UPDATE `language_phrases` SET `translated` = 'Subir logotipo oscuro' WHERE `id` = 1414;
UPDATE `language_phrases` SET `translated` = 'Haga clic aquí para elegir un favicon' WHERE `id` = 1415;
UPDATE `language_phrases` SET `translated` = 'Subir favicon' WHERE `id` = 1416;
UPDATE `language_phrases` SET `translated` = 'Las configuraciones del frontend se actualizaron correctamente' WHERE `id` = 1417;
UPDATE `language_phrases` SET `translated` = 'El usuario ya está registrado y se está registrando para usarlo' WHERE `id` = 1418;
UPDATE `language_phrases` SET `translated` = 'Obtener cursos' WHERE `id` = 1419;
UPDATE `language_phrases` SET `translated` = 'Empezar a aprender' WHERE `id` = 1420;
UPDATE `language_phrases` SET `translated` = 'Codificación' WHERE `id` = 1421;
UPDATE `language_phrases` SET `translated` = 'Idiomas' WHERE `id` = 1422;
UPDATE `language_phrases` SET `translated` = 'El texto de relleno estándar de la industria desde que un impresor desconocido tomó una galerada de tipos y la mezcló' WHERE `id` = 1423;
UPDATE `language_phrases` SET `translated` = 'Cursos en línea' WHERE `id` = 1424;
UPDATE `language_phrases` SET `translated` = 'Mejores instructores' WHERE `id` = 1425;
UPDATE `language_phrases` SET `translated` = 'Certificados en línea' WHERE `id` = 1426;
UPDATE `language_phrases` SET `translated` = 'Elija un curso para' WHERE `id` = 1427;
UPDATE `language_phrases` SET `translated` = 'Descargue nuestra aplicación móvil, comience a aprender' WHERE `id` = 1428;
UPDATE `language_phrases` SET `translated` = 'Academia' WHERE `id` = 1429;
UPDATE `language_phrases` SET `translated` = 'Descargar ahora' WHERE `id` = 1430;
UPDATE `language_phrases` SET `translated` = 'Preguntas frecuentes' WHERE `id` = 1431;
UPDATE `language_phrases` SET `translated` = 'Lo que nuestros' WHERE `id` = 1432;
UPDATE `language_phrases` SET `translated` = 'tienen que decir' WHERE `id` = 1433;
UPDATE `language_phrases` SET `translated` = 'Reciba noticias con' WHERE `id` = 1434;
UPDATE `language_phrases` SET `translated` = 'comentario' WHERE `id` = 1435;
UPDATE `language_phrases` SET `translated` = 'Gestor de cursos' WHERE `id` = 1436;
UPDATE `language_phrases` SET `translated` = 'Cursos activos' WHERE `id` = 1437;
UPDATE `language_phrases` SET `translated` = 'Cursos pendientes' WHERE `id` = 1438;
UPDATE `language_phrases` SET `translated` = 'Cursos gratuitos' WHERE `id` = 1439;
UPDATE `language_phrases` SET `translated` = 'Cursos pagados' WHERE `id` = 1440;
UPDATE `language_phrases` SET `translated` = 'Todos' WHERE `id` = 1441;
UPDATE `language_phrases` SET `translated` = 'Aplicar' WHERE `id` = 1442;
UPDATE `language_phrases` SET `translated` = 'Lección y sección' WHERE `id` = 1443;
UPDATE `language_phrases` SET `translated` = 'Estudiante inscrito' WHERE `id` = 1444;
UPDATE `language_phrases` SET `translated` = 'Sección' WHERE `id` = 1445;
UPDATE `language_phrases` SET `translated` = 'Ver curso en el frontend' WHERE `id` = 1446;
UPDATE `language_phrases` SET `translated` = 'Ir a la página de reproducción del curso' WHERE `id` = 1447;
UPDATE `language_phrases` SET `translated` = 'Duplicar curso' WHERE `id` = 1448;
UPDATE `language_phrases` SET `translated` = 'Marcar como activo' WHERE `id` = 1449;
UPDATE `language_phrases` SET `translated` = 'Eliminar curso' WHERE `id` = 1450;
UPDATE `language_phrases` SET `translated` = 'Curso actualizado correctamente' WHERE `id` = 1451;
UPDATE `language_phrases` SET `translated` = 'Configuración de varios idiomas' WHERE `id` = 1452;
UPDATE `language_phrases` SET `translated` = 'Lista de idiomas' WHERE `id` = 1453;
UPDATE `language_phrases` SET `translated` = 'Añadir idioma' WHERE `id` = 1454;
UPDATE `language_phrases` SET `translated` = 'Importar idioma' WHERE `id` = 1455;
UPDATE `language_phrases` SET `translated` = 'Dirección' WHERE `id` = 1456;
UPDATE `language_phrases` SET `translated` = 'Opción' WHERE `id` = 1457;
UPDATE `language_phrases` SET `translated` = 'LTR' WHERE `id` = 1458;
UPDATE `language_phrases` SET `translated` = 'RTL' WHERE `id` = 1459;
UPDATE `language_phrases` SET `translated` = 'Editar frase' WHERE `id` = 1460;
UPDATE `language_phrases` SET `translated` = 'Añadir nuevo idioma' WHERE `id` = 1461;
UPDATE `language_phrases` SET `translated` = 'No se permiten caracteres especiales ni espacios. Ejemplos válidos: francés, español, bengalí, etc.' WHERE `id` = 1462;
UPDATE `language_phrases` SET `translated` = 'Guardar' WHERE `id` = 1463;
UPDATE `language_phrases` SET `translated` = 'Importe sus archivos de idioma desde aquí. (Ej: english.json)' WHERE `id` = 1464;
UPDATE `language_phrases` SET `translated` = 'Importar' WHERE `id` = 1465;
UPDATE `language_phrases` SET `translated` = 'frase_actualizada' WHERE `id` = 1466;
UPDATE `language_phrases` SET `translated` = 'La dirección ha sido actualizada' WHERE `id` = 1467;
UPDATE `language_phrases` SET `translated` = 'Educación para todos' WHERE `id` = 1468;
UPDATE `language_phrases` SET `translated` = 'Buscar aquí' WHERE `id` = 1469;
UPDATE `language_phrases` SET `translated` = 'El instructor en línea tiene nuevas ideas cada semana.' WHERE `id` = 1470;
UPDATE `language_phrases` SET `translated` = 'Curso destacado especial.' WHERE `id` = 1471;
UPDATE `language_phrases` SET `translated` = 'Ver más' WHERE `id` = 1472;
UPDATE `language_phrases` SET `translated` = 'Conozca la plataforma de aprendizaje Academy LMS' WHERE `id` = 1473;
UPDATE `language_phrases` SET `translated` = 'Muy, muy lejos, detrás de las montañas de palabras, lejos de los países Vokalia y Consonantia, viven los textos ciegos.' WHERE `id` = 1474;
UPDATE `language_phrases` SET `translated` = 'Recursos gratuitos para aprender inglés para principiantes' WHERE `id` = 1475;
UPDATE `language_phrases` SET `translated` = 'Muy, muy lejos, detrás de las montañas de palabras, lejos de los países Vokalia y Consonantia, viven los textos ciegos. Separados viven en Bookmarksgrove, justo en la costa de la Semántica, un gran océano de idiomas.' WHERE `id` = 1476;
UPDATE `language_phrases` SET `translated` = 'El instructor tiene nuevas ideas cada semana.' WHERE `id` = 1477;
UPDATE `language_phrases` SET `translated` = 'Conozca a nuestro equipo' WHERE `id` = 1478;
UPDATE `language_phrases` SET `translated` = 'Descargue nuestra aplicación móvil, comience a aprender hoy' WHERE `id` = 1479;
UPDATE `language_phrases` SET `translated` = 'Incluye todos los cursos y funciones' WHERE `id` = 1480;
UPDATE `language_phrases` SET `translated` = 'Obtener paquete' WHERE `id` = 1481;
UPDATE `language_phrases` SET `translated` = 'Crear instructor' WHERE `id` = 1482;
UPDATE `language_phrases` SET `translated` = 'Información del instructor' WHERE `id` = 1483;
UPDATE `language_phrases` SET `translated` = 'Información de pago' WHERE `id` = 1484;
UPDATE `language_phrases` SET `translated` = 'Instructor añadido correctamente' WHERE `id` = 1485;
UPDATE `language_phrases` SET `translated` = 'Lista de instructores' WHERE `id` = 1486;
UPDATE `language_phrases` SET `translated` = 'Número de cursos' WHERE `id` = 1487;
UPDATE `language_phrases` SET `translated` = 'Ver cursos' WHERE `id` = 1488;
UPDATE `language_phrases` SET `translated` = 'Marcar como inactivo' WHERE `id` = 1489;
UPDATE `language_phrases` SET `translated` = 'Inscribir estudiantes' WHERE `id` = 1490;
UPDATE `language_phrases` SET `translated` = 'Curso para inscribir' WHERE `id` = 1491;
UPDATE `language_phrases` SET `translated` = 'Seleccionar un curso' WHERE `id` = 1492;
UPDATE `language_phrases` SET `translated` = 'Historial de inscripciones' WHERE `id` = 1493;
UPDATE `language_phrases` SET `translated` = 'Añadir nueva inscripción' WHERE `id` = 1494;
UPDATE `language_phrases` SET `translated` = 'Fecha de inscripción' WHERE `id` = 1495;
UPDATE `language_phrases` SET `translated` = 'Fecha de caducidad' WHERE `id` = 1496;
UPDATE `language_phrases` SET `translated` = 'Acceso vitalicio' WHERE `id` = 1497;
UPDATE `language_phrases` SET `translated` = 'Añadir reseña' WHERE `id` = 1498;
UPDATE `language_phrases` SET `translated` = 'Seleccionar usuario' WHERE `id` = 1499;
UPDATE `language_phrases` SET `translated` = 'Seleccionar un usuario' WHERE `id` = 1500;
UPDATE `language_phrases` SET `translated` = 'Calificación' WHERE `id` = 1501;
UPDATE `language_phrases` SET `translated` = 'Seleccionar una calificación' WHERE `id` = 1502;
UPDATE `language_phrases` SET `translated` = 'Reseña añadida correctamente' WHERE `id` = 1503;
UPDATE `language_phrases` SET `translated` = 'Imagen sobre nosotros' WHERE `id` = 1504;
UPDATE `language_phrases` SET `translated` = 'Imagen de preguntas frecuentes' WHERE `id` = 1505;
UPDATE `language_phrases` SET `translated` = 'Imagen de preguntas frecuentes' WHERE `id` = 1506;
UPDATE `language_phrases` SET `translated` = 'Imagen del control deslizante y enlace de vídeo' WHERE `id` = 1507;
UPDATE `language_phrases` SET `translated` = 'Añadir imagen' WHERE `id` = 1508;
UPDATE `language_phrases` SET `translated` = 'Añadir enlace de vídeo' WHERE `id` = 1509;
UPDATE `language_phrases` SET `translated` = 'Página de inicio actualizada correctamente' WHERE `id` = 1510;
UPDATE `language_phrases` SET `translated` = 'Duración' WHERE `id` = 1511;
UPDATE `language_phrases` SET `translated` = 'Detalles del curso' WHERE `id` = 1512;
UPDATE `language_phrases` SET `translated` = 'Curso de certificado' WHERE `id` = 1513;
UPDATE `language_phrases` SET `translated` = 'Descripción general' WHERE `id` = 1514;
UPDATE `language_phrases` SET `translated` = 'Detalles' WHERE `id` = 1515;
UPDATE `language_phrases` SET `translated` = 'Descripción general del curso' WHERE `id` = 1516;
UPDATE `language_phrases` SET `translated` = 'Sin descripción del curso' WHERE `id` = 1517;
UPDATE `language_phrases` SET `translated` = 'Área de preguntas frecuentes vacía' WHERE `id` = 1518;
UPDATE `language_phrases` SET `translated` = 'Plan de estudios del curso' WHERE `id` = 1519;
UPDATE `language_phrases` SET `translated` = 'Plan de estudios del curso vacío' WHERE `id` = 1520;
UPDATE `language_phrases` SET `translated` = 'Requisito' WHERE `id` = 1521;
UPDATE `language_phrases` SET `translated` = 'Resultados' WHERE `id` = 1522;
UPDATE `language_phrases` SET `translated` = 'Calificar este curso:' WHERE `id` = 1523;
UPDATE `language_phrases` SET `translated` = 'Eliminar todo' WHERE `id` = 1524;
UPDATE `language_phrases` SET `translated` = 'Escribe una reseña...' WHERE `id` = 1525;
UPDATE `language_phrases` SET `translated` = 'Añadir al carrito' WHERE `id` = 1526;
UPDATE `language_phrases` SET `translated` = 'Compartir' WHERE `id` = 1527;
UPDATE `language_phrases` SET `translated` = 'Compartir en Facebook' WHERE `id` = 1528;
UPDATE `language_phrases` SET `translated` = 'Compartir en Twitter' WHERE `id` = 1529;
UPDATE `language_phrases` SET `translated` = 'Compartir en Whatsapp' WHERE `id` = 1530;
UPDATE `language_phrases` SET `translated` = 'Compartir en Linkedin' WHERE `id` = 1531;
UPDATE `language_phrases` SET `translated` = 'Certificado' WHERE `id` = 1532;
UPDATE `language_phrases` SET `translated` = 'Plantilla de certificado' WHERE `id` = 1533;
UPDATE `language_phrases` SET `translated` = 'Construye tu certificado' WHERE `id` = 1534;
UPDATE `language_phrases` SET `translated` = 'Sube tu plantilla de certificado' WHERE `id` = 1535;
UPDATE `language_phrases` SET `translated` = 'Subir' WHERE `id` = 1536;
UPDATE `language_phrases` SET `translated` = 'Elementos del certificado' WHERE `id` = 1537;
UPDATE `language_phrases` SET `translated` = 'Datos variables disponibles' WHERE `id` = 1538;
UPDATE `language_phrases` SET `translated` = 'Añadir un nuevo elemento' WHERE `id` = 1539;
UPDATE `language_phrases` SET `translated` = 'Introducir texto con datos variables' WHERE `id` = 1540;
UPDATE `language_phrases` SET `translated` = 'Lección total' WHERE `id` = 1541;
UPDATE `language_phrases` SET `translated` = 'Elegir una familia de fuentes' WHERE `id` = 1542;
UPDATE `language_phrases` SET `translated` = 'Predeterminado' WHERE `id` = 1543;
UPDATE `language_phrases` SET `translated` = 'Pinyon Script' WHERE `id` = 1544;
UPDATE `language_phrases` SET `translated` = 'Tamaño de fuente' WHERE `id` = 1545;
UPDATE `language_phrases` SET `translated` = 'Guardar plantilla' WHERE `id` = 1546;
UPDATE `language_phrases` SET `translated` = 'La plantilla del generador de certificados se ha actualizado' WHERE `id` = 1547;
UPDATE `language_phrases` SET `translated` = 'Progreso' WHERE `id` = 1548;
UPDATE `language_phrases` SET `translated` = 'Comenzar ahora' WHERE `id` = 1549;
UPDATE `language_phrases` SET `translated` = 'Página de reproducción del curso' WHERE `id` = 1550;
UPDATE `language_phrases` SET `translated` = 'Resumen' WHERE `id` = 1551;
UPDATE `language_phrases` SET `translated` = 'Foro' WHERE `id` = 1552;
UPDATE `language_phrases` SET `translated` = 'Horarios de clase' WHERE `id` = 1553;
UPDATE `language_phrases` SET `translated` = 'Tema' WHERE `id` = 1554;
UPDATE `language_phrases` SET `translated` = 'Fecha y hora' WHERE `id` = 1555;
UPDATE `language_phrases` SET `translated` = '¡Sigue con el buen trabajo!' WHERE `id` = 1556;
UPDATE `language_phrases` SET `translated` = 'Tu dedicación al progreso continuo es inspiradora.' WHERE `id` = 1557;
UPDATE `language_phrases` SET `translated` = 'Cada paso adelante es un testimonio de tu compromiso con el crecimiento y la excelencia.' WHERE `id` = 1558;
UPDATE `language_phrases` SET `translated` = 'Mantente enfocado, decidido y continúa superándote a nuevas alturas.' WHERE `id` = 1559;
UPDATE `language_phrases` SET `translated` = '¡Tú puedes!' WHERE `id` = 1560;
UPDATE `language_phrases` SET `translated` = 'Buscar respuestas aquí' WHERE `id` = 1561;
UPDATE `language_phrases` SET `translated` = 'Preguntas en este curso' WHERE `id` = 1562;
UPDATE `language_phrases` SET `translated` = 'Hacer pregunta' WHERE `id` = 1563;
UPDATE `language_phrases` SET `translated` = 'Completado' WHERE `id` = 1564;
UPDATE `language_phrases` SET `translated` = 'Introducir título' WHERE `id` = 1565;
UPDATE `language_phrases` SET `translated` = 'Sección añadida correctamente' WHERE `id` = 1566;
UPDATE `language_phrases` SET `translated` = 'Añadir nueva lección' WHERE `id` = 1567;
UPDATE `language_phrases` SET `translated` = 'Añadir lección' WHERE `id` = 1568;
UPDATE `language_phrases` SET `translated` = 'Añadir nuevo cuestionario' WHERE `id` = 1569;
UPDATE `language_phrases` SET `translated` = 'Añadir cuestionario' WHERE `id` = 1570;
UPDATE `language_phrases` SET `translated` = 'Ordenar secciones' WHERE `id` = 1571;
UPDATE `language_phrases` SET `translated` = 'Ordenar sección' WHERE `id` = 1572;
UPDATE `language_phrases` SET `translated` = 'Editar sección' WHERE `id` = 1573;
UPDATE `language_phrases` SET `translated` = 'Eliminar sección' WHERE `id` = 1574;
UPDATE `language_phrases` SET `translated` = 'No hay lecciones disponibles.' WHERE `id` = 1575;
UPDATE `language_phrases` SET `translated` = 'Seleccionar tipo de lección' WHERE `id` = 1576;
UPDATE `language_phrases` SET `translated` = 'Vídeo de YouTube' WHERE `id` = 1577;
UPDATE `language_phrases` SET `translated` = 'Vídeo de Vimeo' WHERE `id` = 1578;
UPDATE `language_phrases` SET `translated` = 'Archivo de vídeo' WHERE `id` = 1579;
UPDATE `language_phrases` SET `translated` = 'URL del vídeo [ .mp4 ]' WHERE `id` = 1580;
UPDATE `language_phrases` SET `translated` = 'Vídeo de Google Drive' WHERE `id` = 1581;
UPDATE `language_phrases` SET `translated` = 'Archivo de documento' WHERE `id` = 1582;
UPDATE `language_phrases` SET `translated` = 'Texto' WHERE `id` = 1583;
UPDATE `language_phrases` SET `translated` = 'Incrustar Iframe' WHERE `id` = 1584;
UPDATE `language_phrases` SET `translated` = 'Siguiente' WHERE `id` = 1585;
UPDATE `language_phrases` SET `translated` = 'Tipo de lección' WHERE `id` = 1586;
UPDATE `language_phrases` SET `translated` = 'Cambiar' WHERE `id` = 1587;
UPDATE `language_phrases` SET `translated` = 'Introduce tu texto' WHERE `id` = 1588;
UPDATE `language_phrases` SET `translated` = '¿Quieres mantenerla gratis como lección de vista previa?' WHERE `id` = 1589;
UPDATE `language_phrases` SET `translated` = 'Marcar como lección gratuita' WHERE `id` = 1590;
UPDATE `language_phrases` SET `translated` = 'lección añadida correctamente' WHERE `id` = 1591;
UPDATE `language_phrases` SET `translated` = 'Ordenar lecciones' WHERE `id` = 1592;
UPDATE `language_phrases` SET `translated` = 'Editar lección' WHERE `id` = 1593;
UPDATE `language_phrases` SET `translated` = 'Eliminar lección' WHERE `id` = 1594;
UPDATE `language_phrases` SET `translated` = '¡Felicidades!' WHERE `id` = 1595;
UPDATE `language_phrases` SET `translated` = 'Tu arduo trabajo ha dado sus frutos. ¡Por nuevos comienzos y oportunidades infinitas que se avecinan!' WHERE `id` = 1596;
UPDATE `language_phrases` SET `translated` = 'Obtener certificado' WHERE `id` = 1597;
UPDATE `language_phrases` SET `translated` = 'Descargar certificado' WHERE `id` = 1598;
UPDATE `language_phrases` SET `translated` = 'Descargar' WHERE `id` = 1599;
UPDATE `language_phrases` SET `translated` = 'Automático' WHERE `id` = 1600;
UPDATE `language_phrases` SET `translated` = 'Continuar' WHERE `id` = 1601;
UPDATE `language_phrases` SET `translated` = 'Carrito de compras' WHERE `id` = 1602;
UPDATE `language_phrases` SET `translated` = 'Artículos del carrito' WHERE `id` = 1603;
UPDATE `language_phrases` SET `translated` = 'Resumen del pago' WHERE `id` = 1604;
UPDATE `language_phrases` SET `translated` = 'Subtotal' WHERE `id` = 1605;
UPDATE `language_phrases` SET `translated` = 'Impuesto' WHERE `id` = 1606;
UPDATE `language_phrases` SET `translated` = '%' WHERE `id` = 1607;
UPDATE `language_phrases` SET `translated` = 'Aplicar cupón' WHERE `id` = 1608;
UPDATE `language_phrases` SET `translated` = 'Enviar como regalo' WHERE `id` = 1609;
UPDATE `language_phrases` SET `translated` = 'Introducir correo electrónico del usuario' WHERE `id` = 1610;
UPDATE `language_phrases` SET `translated` = 'Continuar al pago' WHERE `id` = 1611;
UPDATE `language_phrases` SET `translated` = '¡Pago fallido! Por favor, inténtelo de nuevo.' WHERE `id` = 1612;
UPDATE `language_phrases` SET `translated` = 'Categoría principal' WHERE `id` = 1613;
UPDATE `language_phrases` SET `translated` = '- Marcar como principal -' WHERE `id` = 1614;
UPDATE `language_phrases` SET `translated` = 'Elegir miniatura de categoría' WHERE `id` = 1615;
UPDATE `language_phrases` SET `translated` = 'Elegir logotipo de categoría' WHERE `id` = 1616;
UPDATE `language_phrases` SET `translated` = 'Categoría actualizada correctamente' WHERE `id` = 1617;
UPDATE `language_phrases` SET `translated` = 'Habilite la extensión Fileinfo en su servidor para subir archivos.' WHERE `id` = 1618;
UPDATE `language_phrases` SET `translated` = 'Extensión Fileinfo' WHERE `id` = 1619;
UPDATE `language_phrases` SET `translated` = 'Habilite esta extensión Fileinfo en su servidor para subir archivos' WHERE `id` = 1620;
UPDATE `language_phrases` SET `translated` = 'clave de comerciante de paytm' WHERE `id` = 1621;
UPDATE `language_phrases` SET `translated` = 'mid de comerciante de paytm' WHERE `id` = 1622;
UPDATE `language_phrases` SET `translated` = 'sitio web del comerciante de paytm' WHERE `id` = 1623;
UPDATE `language_phrases` SET `translated` = 'id de tipo de industria' WHERE `id` = 1624;
UPDATE `language_phrases` SET `translated` = 'id de canal' WHERE `id` = 1625;
UPDATE `language_phrases` SET `translated` = 'Las configuraciones de pago se actualizaron correctamente' WHERE `id` = 1626;
UPDATE `language_phrases` SET `translated` = 'Configurar credenciales de ZOOM server-to-server-oauth' WHERE `id` = 1627;
UPDATE `language_phrases` SET `translated` = 'Correo electrónico de la cuenta' WHERE `id` = 1628;
UPDATE `language_phrases` SET `translated` = 'ID de la cuenta' WHERE `id` = 1629;
UPDATE `language_phrases` SET `translated` = 'ID de cliente' WHERE `id` = 1630;
UPDATE `language_phrases` SET `translated` = 'Secreto del cliente' WHERE `id` = 1631;
UPDATE `language_phrases` SET `translated` = '¿Quieres usar el SDK web para tu clase en vivo?' WHERE `id` = 1632;
UPDATE `language_phrases` SET `translated` = 'ID de cliente del SDK de reunión' WHERE `id` = 1633;
UPDATE `language_phrases` SET `translated` = 'Secreto del cliente del SDK de reunión' WHERE `id` = 1634;
UPDATE `language_phrases` SET `translated` = 'Inscripción eliminada correctamente' WHERE `id` = 1635;
UPDATE `language_phrases` SET `translated` = '500 error encontrado' WHERE `id` = 1636;
UPDATE `language_phrases` SET `translated` = 'Ha ocurrido un error técnico' WHERE `id` = 1637;
UPDATE `language_phrases` SET `translated` = 'Por favor, póngase en contacto con el administrador del sitio' WHERE `id` = 1638;
UPDATE `language_phrases` SET `translated` = 'por_favor_no_actualice_esta_página' WHERE `id` = 1639;
UPDATE `language_phrases` SET `translated` = 'Por favor, no actualice esta página' WHERE `id` = 1640;
UPDATE `language_phrases` SET `translated` = 'Usuario' WHERE `id` = 1641;
UPDATE `language_phrases` SET `translated` = 'Artículo' WHERE `id` = 1642;
UPDATE `language_phrases` SET `translated` = 'Importe pagado' WHERE `id` = 1643;
UPDATE `language_phrases` SET `translated` = 'Método de pago' WHERE `id` = 1644;
UPDATE `language_phrases` SET `translated` = 'Fecha de compra' WHERE `id` = 1645;
UPDATE `language_phrases` SET `translated` = 'Factura' WHERE `id` = 1646;
UPDATE `language_phrases` SET `translated` = 'Seleccionar una opción' WHERE `id` = 1647;
UPDATE `language_phrases` SET `translated` = 'Nota total' WHERE `id` = 1648;
UPDATE `language_phrases` SET `translated` = 'Nota de aprobación' WHERE `id` = 1649;
UPDATE `language_phrases` SET `translated` = 'Retomar' WHERE `id` = 1650;
UPDATE `language_phrases` SET `translated` = 'El cuestionario ha sido creado.' WHERE `id` = 1651;
UPDATE `language_phrases` SET `translated` = 'Resultado' WHERE `id` = 1652;
UPDATE `language_phrases` SET `translated` = 'Editar cuestionario' WHERE `id` = 1653;
UPDATE `language_phrases` SET `translated` = 'Actualizar cuestionario' WHERE `id` = 1654;
UPDATE `language_phrases` SET `translated` = 'Añadir pregunta' WHERE `id` = 1655;
UPDATE `language_phrases` SET `translated` = 'Tipo de pregunta' WHERE `id` = 1656;
UPDATE `language_phrases` SET `translated` = 'Opción múltiple' WHERE `id` = 1657;
UPDATE `language_phrases` SET `translated` = 'Rellena los espacios en blanco' WHERE `id` = 1658;
UPDATE `language_phrases` SET `translated` = 'Verdadero o falso' WHERE `id` = 1659;
UPDATE `language_phrases` SET `translated` = 'Escribir pregunta' WHERE `id` = 1660;
UPDATE `language_phrases` SET `translated` = 'Tus preguntas aquí' WHERE `id` = 1661;
UPDATE `language_phrases` SET `translated` = 'Puede mantener varias opciones. Simplemente ponga una opción y presione enter.' WHERE `id` = 1662;
UPDATE `language_phrases` SET `translated` = 'Puedes seleccionar varias respuestas.' WHERE `id` = 1663;
UPDATE `language_phrases` SET `translated` = 'Gestionar curso' WHERE `id` = 1664;
UPDATE `language_phrases` SET `translated` = 'Tiempo restante:' WHERE `id` = 1665;
UPDATE `language_phrases` SET `translated` = 'Hora' WHERE `id` = 1666;
UPDATE `language_phrases` SET `translated` = 'Minuto' WHERE `id` = 1667;
UPDATE `language_phrases` SET `translated` = 'Segundo' WHERE `id` = 1668;
UPDATE `language_phrases` SET `translated` = 'Notas totales' WHERE `id` = 1669;
UPDATE `language_phrases` SET `translated` = 'Notas de aprobación' WHERE `id` = 1670;
UPDATE `language_phrases` SET `translated` = 'Intentos' WHERE `id` = 1671;
UPDATE `language_phrases` SET `translated` = 'Pregunta total' WHERE `id` = 1672;
UPDATE `language_phrases` SET `translated` = 'Comenzar cuestionario' WHERE `id` = 1673;
UPDATE `language_phrases` SET `translated` = 'El cuestionario ha sido actualizado.' WHERE `id` = 1674;
UPDATE `language_phrases` SET `translated` = 'La pregunta ha sido añadida.' WHERE `id` = 1675;
UPDATE `language_phrases` SET `translated` = 'Ordenar preguntas' WHERE `id` = 1676;
UPDATE `language_phrases` SET `translated` = 'Editar pregunta' WHERE `id` = 1677;
UPDATE `language_phrases` SET `translated` = 'Actualizar pregunta' WHERE `id` = 1678;
UPDATE `language_phrases` SET `translated` = 'Tipo de marca de agua' WHERE `id` = 1679;
UPDATE `language_phrases` SET `translated` = 'Marca de agua Js' WHERE `id` = 1680;
UPDATE `language_phrases` SET `translated` = 'FFMpeg' WHERE `id` = 1681;
UPDATE `language_phrases` SET `translated` = 'Marca de agua' WHERE `id` = 1682;
UPDATE `language_phrases` SET `translated` = 'Opacidad' WHERE `id` = 1683;
UPDATE `language_phrases` SET `translated` = 'Opacidad (0 - 100)' WHERE `id` = 1684;
UPDATE `language_phrases` SET `translated` = 'Ancho' WHERE `id` = 1685;
UPDATE `language_phrases` SET `translated` = 'Ancho (px)' WHERE `id` = 1686;
UPDATE `language_phrases` SET `translated` = 'Alto' WHERE `id` = 1687;
UPDATE `language_phrases` SET `translated` = 'Alto (px)' WHERE `id` = 1688;
UPDATE `language_phrases` SET `translated` = 'Arriba' WHERE `id` = 1689;
UPDATE `language_phrases` SET `translated` = 'Arriba (px)' WHERE `id` = 1690;
UPDATE `language_phrases` SET `translated` = 'Izquierda (px)' WHERE `id` = 1691;
UPDATE `language_phrases` SET `translated` = 'Introduce la URL de tu vídeo HTML5' WHERE `id` = 1692;
UPDATE `language_phrases` SET `translated` = 'El tamaño de la imagen debe ser' WHERE `id` = 1693;
UPDATE `language_phrases` SET `translated` = 'Subtítulo' WHERE `id` = 1694;
UPDATE `language_phrases` SET `translated` = '.vtt' WHERE `id` = 1695;
UPDATE `language_phrases` SET `translated` = 'Velocidad de animación' WHERE `id` = 1696;
UPDATE `language_phrases` SET `translated` = 'Segundo (0 - 200)' WHERE `id` = 1697;
UPDATE `language_phrases` SET `translated` = 'Tus cambios han sido guardados.' WHERE `id` = 1698;
UPDATE `language_phrases` SET `translated` = 'Segundo (0 - 10000)' WHERE `id` = 1699;
UPDATE `language_phrases` SET `translated` = 'por' WHERE `id` = 1700;
UPDATE `language_phrases` SET `translated` = 'Encontrar un tutor' WHERE `id` = 1701;
UPDATE `language_phrases` SET `translated` = 'Reserva de tutor' WHERE `id` = 1702;
UPDATE `language_phrases` SET `translated` = 'Asignaturas' WHERE `id` = 1703;
UPDATE `language_phrases` SET `translated` = 'Categoría de la asignatura' WHERE `id` = 1704;
UPDATE `language_phrases` SET `translated` = 'Es un hecho establecido desde hace mucho tiempo que un lector se distraerá con el contenido legible de un diseño de página.' WHERE `id` = 1705;
UPDATE `language_phrases` SET `translated` = 'Base de conocimientos' WHERE `id` = 1706;
UPDATE `language_phrases` SET `translated` = 'Zona horaria' WHERE `id` = 1707;
UPDATE `language_phrases` SET `translated` = 'Las configuraciones del sistema se actualizaron correctamente' WHERE `id` = 1708;
UPDATE `language_phrases` SET `translated` = 'Empieza a aprender de los profesionales del mundo' WHERE `id` = 1709;
UPDATE `language_phrases` SET `translated` = 'instructores' WHERE `id` = 1710;
UPDATE `language_phrases` SET `translated` = 'Es un hecho establecido desde hace mucho tiempo que un lector se distraerá con el contenido legible de una página al mirar su diseño. El punto de usar Lorem Ipsum.' WHERE `id` = 1711;
UPDATE `language_phrases` SET `translated` = 'Rendimiento rápido' WHERE `id` = 1712;
UPDATE `language_phrases` SET `translated` = 'Es un hecho establecido desde hace mucho tiempo que un lector se distraerá.' WHERE `id` = 1713;
UPDATE `language_phrases` SET `translated` = 'Respuesta perfecta' WHERE `id` = 1714;
UPDATE `language_phrases` SET `translated` = 'Soporte rápido y amigable' WHERE `id` = 1715;
UPDATE `language_phrases` SET `translated` = 'Fácil de usar' WHERE `id` = 1716;
UPDATE `language_phrases` SET `translated` = 'Explorar las principales categorías de cursos' WHERE `id` = 1717;
UPDATE `language_phrases` SET `translated` = 'Ver todos los cursos' WHERE `id` = 1718;
UPDATE `language_phrases` SET `translated` = '150k +' WHERE `id` = 1719;
UPDATE `language_phrases` SET `translated` = 'Conócenos' WHERE `id` = 1720;
UPDATE `language_phrases` SET `translated` = 'Aprende y desarrolla tus habilidades de' WHERE `id` = 1721;
UPDATE `language_phrases` SET `translated` = 'Educar' WHERE `id` = 1722;
UPDATE `language_phrases` SET `translated` = 'Acceso vitalicio' WHERE `id` = 1723;
UPDATE `language_phrases` SET `translated` = 'Es un hecho establecido desde hace mucho tiempo que un lector se distraerá con el contenido legible de una página al mirar su diseño.' WHERE `id` = 1724;
UPDATE `language_phrases` SET `translated` = 'Aprende desde cualquier lugar' WHERE `id` = 1725;
UPDATE `language_phrases` SET `translated` = 'Más sobre nosotros' WHERE `id` = 1726;
UPDATE `language_phrases` SET `translated` = 'Testimonio' WHERE `id` = 1727;
UPDATE `language_phrases` SET `translated` = 'Lo que dicen nuestros clientes sobre nosotros' WHERE `id` = 1728;
UPDATE `language_phrases` SET `translated` = 'Es un hecho establecido desde hace mucho tiempo que un lector se distraerá con el contenido legible de una página al mirar su diseño. El punto de usar Lorem Ipsum.' WHERE `id` = 1729;
UPDATE `language_phrases` SET `translated` = 'Linchon Philips' WHERE `id` = 1730;
UPDATE `language_phrases` SET `translated` = 'CEO @ Yahoo' WHERE `id` = 1731;
UPDATE `language_phrases` SET `translated` = 'Echa un vistazo a nuestras noticias' WHERE `id` = 1732;
UPDATE `language_phrases` SET `translated` = 'Ver todos los blogs' WHERE `id` = 1733;
UPDATE `language_phrases` SET `translated` = 'Recaptcha' WHERE `id` = 1734;
UPDATE `language_phrases` SET `translated` = 'clave de la tienda' WHERE `id` = 1735;
UPDATE `language_phrases` SET `translated` = 'contraseña de la tienda' WHERE `id` = 1736;
UPDATE `language_phrases` SET `translated` = 'clave en vivo de la tienda' WHERE `id` = 1737;
UPDATE `language_phrases` SET `translated` = 'contraseña en vivo de la tienda' WHERE `id` = 1738;
UPDATE `language_phrases` SET `translated` = 'modo de prueba de sslcz' WHERE `id` = 1739;
UPDATE `language_phrases` SET `translated` = 'es localhost' WHERE `id` = 1740;
UPDATE `language_phrases` SET `translated` = 'modo de prueba en vivo de sslcz' WHERE `id` = 1741;
UPDATE `language_phrases` SET `translated` = 'es localhost en vivo' WHERE `id` = 1742;
UPDATE `language_phrases` SET `translated` = 'id de la tienda' WHERE `id` = 1743;
UPDATE `language_phrases` SET `translated` = 'clave de firma' WHERE `id` = 1744;
UPDATE `language_phrases` SET `translated` = 'id en vivo de la tienda' WHERE `id` = 1745;
UPDATE `language_phrases` SET `translated` = 'clave de firma en vivo' WHERE `id` = 1746;
UPDATE `language_phrases` SET `translated` = 'id del comerciante' WHERE `id` = 1747;
UPDATE `language_phrases` SET `translated` = 'contraseña del comerciante' WHERE `id` = 1748;
UPDATE `language_phrases` SET `translated` = 'id en vivo del comerciante' WHERE `id` = 1749;
UPDATE `language_phrases` SET `translated` = 'contraseña en vivo del comerciante' WHERE `id` = 1750;
UPDATE `language_phrases` SET `translated` = 'Gestionar configuraciones de SEO' WHERE `id` = 1751;
UPDATE `language_phrases` SET `translated` = 'Meta título' WHERE `id` = 1752;
UPDATE `language_phrases` SET `translated` = 'Meta palabras clave' WHERE `id` = 1753;
UPDATE `language_phrases` SET `translated` = 'Escriba su palabra clave y presione enter' WHERE `id` = 1754;
UPDATE `language_phrases` SET `translated` = 'Meta descripción' WHERE `id` = 1755;
UPDATE `language_phrases` SET `translated` = 'Meta Robot' WHERE `id` = 1756;
UPDATE `language_phrases` SET `translated` = 'URL canónica' WHERE `id` = 1757;
UPDATE `language_phrases` SET `translated` = 'URL personalizada' WHERE `id` = 1758;
UPDATE `language_phrases` SET `translated` = 'Título Og' WHERE `id` = 1759;
UPDATE `language_phrases` SET `translated` = 'Descripción Og' WHERE `id` = 1760;
UPDATE `language_phrases` SET `translated` = 'Imagen Og' WHERE `id` = 1761;
UPDATE `language_phrases` SET `translated` = 'ID de Json' WHERE `id` = 1762;
UPDATE `language_phrases` SET `translated` = 'Soporte' WHERE `id` = 1763;
UPDATE `language_phrases` SET `translated` = 'Documentación' WHERE `id` = 1764;
UPDATE `language_phrases` SET `translated` = 'tutorial en vídeo' WHERE `id` = 1765;
UPDATE `language_phrases` SET `translated` = 'La información de contacto se actualizó correctamente' WHERE `id` = 1766;
UPDATE `language_phrases` SET `translated` = 'Introduce el nombre de tu página' WHERE `id` = 1767;
UPDATE `language_phrases` SET `translated` = 'Configuraciones de notificación' WHERE `id` = 1768;
UPDATE `language_phrases` SET `translated` = 'Protocolo' WHERE `id` = 1769;
UPDATE `language_phrases` SET `translated` = 'Cifrado Smtp' WHERE `id` = 1770;
UPDATE `language_phrases` SET `translated` = 'Host Smtp' WHERE `id` = 1771;
UPDATE `language_phrases` SET `translated` = 'Puerto Smtp' WHERE `id` = 1772;
UPDATE `language_phrases` SET `translated` = 'Correo electrónico del remitente de Smtp' WHERE `id` = 1773;
UPDATE `language_phrases` SET `translated` = 'Nombre de usuario de Smtp' WHERE `id` = 1774;
UPDATE `language_phrases` SET `translated` = 'Contraseña de Smtp' WHERE `id` = 1775;
UPDATE `language_phrases` SET `translated` = 'Seleccionar idioma para reemplazar' WHERE `id` = 1776;
UPDATE `language_phrases` SET `translated` = 'Gestionar contenido' WHERE `id` = 1777;
UPDATE `language_phrases` SET `translated` = 'Editor de texto' WHERE `id` = 1778;
UPDATE `language_phrases` SET `translated` = 'Color del texto' WHERE `id` = 1779;
UPDATE `language_phrases` SET `translated` = 'Relleno' WHERE `id` = 1780;
UPDATE `language_phrases` SET `translated` = 'Margen' WHERE `id` = 1781;
UPDATE `language_phrases` SET `translated` = 'Borde' WHERE `id` = 1782;
UPDATE `language_phrases` SET `translated` = 'ninguno' WHERE `id` = 1783;
UPDATE `language_phrases` SET `translated` = 'discontinua' WHERE `id` = 1784;
UPDATE `language_phrases` SET `translated` = 'punteada' WHERE `id` = 1785;
UPDATE `language_phrases` SET `translated` = 'Redondez del borde' WHERE `id` = 1786;
UPDATE `language_phrases` SET `translated` = 'Color del borde' WHERE `id` = 1787;
UPDATE `language_phrases` SET `translated` = 'Color de fondo' WHERE `id` = 1788;
UPDATE `language_phrases` SET `translated` = 'El diseño de la página se ha actualizado' WHERE `id` = 1789;
UPDATE `language_phrases` SET `translated` = 'La plataforma líder en aprendizaje en línea' WHERE `id` = 1790;
UPDATE `language_phrases` SET `translated` = 'Empieza a aprender con instructores expertos' WHERE `id` = 1791;
UPDATE `language_phrases` SET `translated` = 'Docentes' WHERE `id` = 1792;
UPDATE `language_phrases` SET `translated` = 'Aprende de instructores expertos con experiencia real. Conviértete en la mejor versión de ti mismo, desde casa y a tu ritmo.' WHERE `id` = 1793;
UPDATE `language_phrases` SET `translated` = '¡Comienza ahora!' WHERE `id` = 1794;
UPDATE `language_phrases` SET `translated` = 'Plataforma rápida' WHERE `id` = 1795;
UPDATE `language_phrases` SET `translated` = 'Nuestra plataforma es veloz y confiable.' WHERE `id` = 1796;
UPDATE `language_phrases` SET `translated` = 'Estudia donde quieras' WHERE `id` = 1797;
UPDATE `language_phrases` SET `translated` = 'Desde tu celular, tablet o laptop, lleva tus cursos siempre contigo, sin complicaciones.' WHERE `id` = 1798;
UPDATE `language_phrases` SET `translated` = 'Soporte rápido' WHERE `id` = 1799;
UPDATE `language_phrases` SET `translated` = 'Nuestro equipo te responde rápido y con buena onda. No estás solo, estamos para ayudarte.' WHERE `id` = 1800;
UPDATE `language_phrases` SET `translated` = 'Fácil de usar' WHERE `id` = 1801;
UPDATE `language_phrases` SET `translated` = 'Diseñada para que aprendas sin complicaciones, incluso si es tu primera vez.' WHERE `id` = 1802;
UPDATE `language_phrases` SET `translated` = 'Top de categoría de los cursos' WHERE `id` = 1803;
UPDATE `language_phrases` SET `translated` = 'Cursos destacados' WHERE `id` = 1804;
UPDATE `language_phrases` SET `translated` = 'Desarrolla tus habilidades con los mejores' WHERE `id` = 1805;
UPDATE `language_phrases` SET `translated` = 'Lo que nuestros clientes dicen sobre nosotros' WHERE `id` = 1806;
UPDATE `language_phrases` SET `translated` = 'Echa un vistazo a nuestras noticias' WHERE `id` = 1807;
UPDATE `language_phrases` SET `translated` = 'Idioma añadido correctamente' WHERE `id` = 1808;
UPDATE `language_phrases` SET `translated` = 'El idioma ya existe' WHERE `id` = 1809;
UPDATE `language_phrases` SET `translated` = 'Exportar idioma' WHERE `id` = 1810;
UPDATE `language_phrases` SET `translated` = 'Eliminar idioma' WHERE `id` = 1811;
UPDATE `language_phrases` SET `translated` = 'Editar frases de ____' WHERE `id` = 1812;
UPDATE `language_phrases` SET `translated` = 'Importar todas las frases del inglés' WHERE `id` = 1813;
UPDATE `language_phrases` SET `translated` = 'Frase actualizada' WHERE `id` = 1814;
UPDATE `language_phrases` SET `translated` = 'Marcar correo electrónico como verificado' WHERE `id` = 1815;
UPDATE `language_phrases` SET `translated` = 'Eliminar cuenta' WHERE `id` = 1816;
UPDATE `language_phrases` SET `translated` = 'Mis reservas' WHERE `id` = 1817;
UPDATE `language_phrases` SET `translated` = 'Revocar acceso de instructor' WHERE `id` = 1818;
UPDATE `language_phrases` SET `translated` = 'Período de caducidad' WHERE `id` = 1819;
UPDATE `language_phrases` SET `translated` = 'Vitalicio' WHERE `id` = 1820;
UPDATE `language_phrases` SET `translated` = 'Tiempo limitado' WHERE `id` = 1821;
UPDATE `language_phrases` SET `translated` = 'Número de meses' WHERE `id` = 1822;
UPDATE `language_phrases` SET `translated` = 'Después de la compra, los estudiantes pueden acceder al curso hasta el mes seleccionado.' WHERE `id` = 1823;
UPDATE `language_phrases` SET `translated` = 'Habilitar contenido progresivo' WHERE `id` = 1824;
UPDATE `language_phrases` SET `translated` = 'Desactivado' WHERE `id` = 1825;
UPDATE `language_phrases` SET `translated` = 'Activado' WHERE `id` = 1826;
UPDATE `language_phrases` SET `translated` = 'Contenido progresivo' WHERE `id` = 1827;
UPDATE `language_phrases` SET `translated` = 'Datos no encontrados.' WHERE `id` = 1828;
UPDATE `language_phrases` SET `translated` = 'Inscribirse ahora' WHERE `id` = 1829;
UPDATE `language_phrases` SET `translated` = 'Rol de finalización de lección' WHERE `id` = 1830;
UPDATE `language_phrases` SET `translated` = 'Porcentaje de video' WHERE `id` = 1831;
UPDATE `language_phrases` SET `translated` = 'Duración del video' WHERE `id` = 1832;
UPDATE `language_phrases` SET `translated` = 'Porcentaje mínimo para ver' WHERE `id` = 1833;
UPDATE `language_phrases` SET `translated` = 'Duración mínima para ver' WHERE `id` = 1834;
UPDATE `language_phrases` SET `translated` = 'Mensaje para lección bloqueada' WHERE `id` = 1835;
UPDATE `language_phrases` SET `translated` = 'Banner' WHERE `id` = 1836;
UPDATE `language_phrases` SET `translated` = 'Vídeo de vista previa' WHERE `id` = 1837;
UPDATE `language_phrases` SET `translated` = 'URL compatible' WHERE `id` = 1838;
UPDATE `language_phrases` SET `translated` = 'o' WHERE `id` = 1839;
UPDATE `language_phrases` SET `translated` = 'Vimeo' WHERE `id` = 1840;
UPDATE `language_phrases` SET `translated` = 'Archivo de vídeo de vista previa' WHERE `id` = 1841;
UPDATE `language_phrases` SET `translated` = 'Archivo de vídeo compatible' WHERE `id` = 1842;
UPDATE `language_phrases` SET `translated` = 'mp4' WHERE `id` = 1843;
UPDATE `language_phrases` SET `translated` = 'webm' WHERE `id` = 1844;
UPDATE `language_phrases` SET `translated` = 'ogg' WHERE `id` = 1845;
UPDATE `language_phrases` SET `translated` = 'Pregunta frecuente' WHERE `id` = 1846;
UPDATE `language_phrases` SET `translated` = 'Requisitos' WHERE `id` = 1847;
UPDATE `language_phrases` SET `translated` = 'Proporcionar requisitos' WHERE `id` = 1848;
UPDATE `language_phrases` SET `translated` = 'Proporcionar resultados' WHERE `id` = 1849;
UPDATE `language_phrases` SET `translated` = 'Tipo de descuento' WHERE `id` = 1850;
UPDATE `language_phrases` SET `translated` = 'Añadir una nueva clase en vivo' WHERE `id` = 1851;
UPDATE `language_phrases` SET `translated` = 'Programar una nueva clase en vivo' WHERE `id` = 1852;
UPDATE `language_phrases` SET `translated` = 'Tema de la clase' WHERE `id` = 1853;
UPDATE `language_phrases` SET `translated` = 'Horario de clase' WHERE `id` = 1854;
UPDATE `language_phrases` SET `translated` = 'Contenido Scorm' WHERE `id` = 1855;
UPDATE `language_phrases` SET `translated` = 'URL no válida' WHERE `id` = 1856;
UPDATE `language_phrases` SET `translated` = 'La fuente de tu vídeo debe ser Google Drive' WHERE `id` = 1857;
UPDATE `language_phrases` SET `translated` = 'Vídeo' WHERE `id` = 1858;
UPDATE `language_phrases` SET `translated` = 'La fuente de tu vídeo debe ser YouTube' WHERE `id` = 1859;
UPDATE `language_phrases` SET `translated` = 'Analizando' WHERE `id` = 1860;
UPDATE `language_phrases` SET `translated` = 'Configuración pública del instructor' WHERE `id` = 1861;
UPDATE `language_phrases` SET `translated` = 'Configuraciones del instructor' WHERE `id` = 1862;
UPDATE `language_phrases` SET `translated` = 'Permitir instructor público' WHERE `id` = 1863;
UPDATE `language_phrases` SET `translated` = 'Nota de solicitud de instructor' WHERE `id` = 1864;
UPDATE `language_phrases` SET `translated` = 'Configuración de ingresos' WHERE `id` = 1865;
UPDATE `language_phrases` SET `translated` = 'Porcentaje de ingresos del instructor' WHERE `id` = 1866;
UPDATE `language_phrases` SET `translated` = 'Porcentaje de ingresos del administrador' WHERE `id` = 1867;
UPDATE `language_phrases` SET `translated` = 'Fecha y hora de la clase' WHERE `id` = 1868;
UPDATE `language_phrases` SET `translated` = 'Nota para tu estudiante' WHERE `id` = 1869;
UPDATE `language_phrases` SET `translated` = 'Crear' WHERE `id` = 1870;
UPDATE `language_phrases` SET `translated` = 'Tarifa' WHERE `id` = 1871;
UPDATE `language_phrases` SET `translated` = 'Mín.' WHERE `id` = 1872;
UPDATE `language_phrases` SET `translated` = 'Máx.' WHERE `id` = 1873;
UPDATE `language_phrases` SET `translated` = 'Resultados' WHERE `id` = 1874;
UPDATE `language_phrases` SET `translated` = 'Crear una cuenta' WHERE `id` = 1875;
UPDATE `language_phrases` SET `translated` = 'Únase a nuestra comunidad para empezar a aprender.' WHERE `id` = 1876;
UPDATE `language_phrases` SET `translated` = 'Nombre completo' WHERE `id` = 1877;
UPDATE `language_phrases` SET `translated` = 'Tu nombre completo' WHERE `id` = 1878;
UPDATE `language_phrases` SET `translated` = 'Confirmar contraseña' WHERE `id` = 1879;
UPDATE `language_phrases` SET `translated` = '¿Ya tienes una cuenta?' WHERE `id` = 1880;
UPDATE `language_phrases` SET `translated` = 'Notificación por correo electrónico' WHERE `id` = 1881;
UPDATE `language_phrases` SET `translated` = 'Si no solicitaste esto, puedes ignorar este correo electrónico.' WHERE `id` = 1882;
UPDATE `language_phrases` SET `translated` = '¡Gracias!' WHERE `id` = 1883;
UPDATE `language_phrases` SET `translated` = 'El idioma ya existe' WHERE `id` = 3335;
UPDATE `language_phrases` SET `translated` = 'Idioma añadido correctamente' WHERE `id` = 3336;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lessons`
--

CREATE TABLE `lessons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED DEFAULT NULL,
  `lesson_type` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `total_mark` int(11) DEFAULT NULL,
  `pass_mark` int(11) DEFAULT NULL,
  `retake` int(11) DEFAULT NULL,
  `lesson_src` varchar(255) DEFAULT NULL,
  `attachment` longtext DEFAULT NULL,
  `attachment_type` varchar(255) DEFAULT NULL,
  `video_type` text DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `is_free` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `summary` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `like_dislike_reviews`
--

CREATE TABLE `like_dislike_reviews` (
  `id` int(255) NOT NULL,
  `review_id` int(255) DEFAULT NULL,
  `user_id` int(255) DEFAULT NULL,
  `liked` int(255) DEFAULT 0,
  `disliked` int(255) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `live_classes`
--

CREATE TABLE `live_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `class_topic` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `class_date_and_time` timestamp NULL DEFAULT NULL,
  `additional_info` longtext DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media_files`
--

CREATE TABLE `media_files` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `story_id` int(11) DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `chat_id` int(11) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `privacy` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messages`
--

CREATE TABLE `messages` (
  `id` int(255) NOT NULL,
  `thread_id` int(255) DEFAULT NULL,
  `sender_id` int(255) DEFAULT NULL,
  `receiver_id` int(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `read` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `message_threads`
--

CREATE TABLE `message_threads` (
  `id` int(255) NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `contact_one` int(255) DEFAULT NULL,
  `contact_two` int(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `newsletter_subscribers`
--

CREATE TABLE `newsletter_subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notification_settings`
--

CREATE TABLE `notification_settings` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `is_editable` int(11) DEFAULT NULL,
  `addon_identifier` varchar(255) DEFAULT NULL,
  `user_types` varchar(400) DEFAULT NULL,
  `system_notification` varchar(400) DEFAULT NULL,
  `email_notification` varchar(400) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `template` longtext DEFAULT NULL,
  `setting_title` varchar(255) DEFAULT NULL,
  `setting_sub_title` varchar(255) DEFAULT NULL,
  `date_updated` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `notification_settings`
--

INSERT INTO `notification_settings` (`id`, `type`, `is_editable`, `addon_identifier`, `user_types`, `system_notification`, `email_notification`, `subject`, `template`, `setting_title`, `setting_sub_title`, `date_updated`, `created_at`, `updated_at`) VALUES
(1, 'edit_email_template', 1, NULL, '[\"admin\",\"user\"]', '{\"admin\":\"1\",\"user\":\"1\"}', '{\"admin\":\"1\",\"user\":\"0\"}', '{\"admin\":\"New user registered\",\"user\":\"Registered successfully\"}', '{\"admin\":\"New user registered [user_name] \\r\\n<br>User email: <b>[user_email]<\\/b>\",\"user\":\"You have successfully registered with us at [system_name].\"}', 'New user registration', 'Get notified when a new user signs up', '1693215071', '2023-11-02 11:13:07', '2023-12-05 01:23:15'),
(2, 'email_verification', 0, NULL, '[\"user\"]', '{\"user\":\"0\"}', '{\"user\":\"1\"}', '{\"user\":\"Email verification code\"}', '{\"user\":\"You have received a email verification code. Your verification code is [email_verification_code]\"}', 'Email verification', 'It is permanently enabled for student email verification.', '1684135777', '2023-11-02 11:13:07', '2023-11-02 11:13:07'),
(3, 'forget_password_mail', 0, NULL, '[\"user\"]', '{\"user\":\"0\"}', '{\"user\":\"1\"}', '{\"user\":\"Forgot password verification code\"}', '{\"user\":\"You have received a email verification code. Your verification code is [system_name][verification_link][minutes]\"}', 'Forgot password mail', 'It is permanently enabled for student email verification.', '1684145383', '2023-11-02 11:13:07', '2023-11-02 11:13:07'),
(4, 'new_device_login_confirmation', 0, NULL, '[\"user\"]', '{\"user\":\"0\"}', '{\"user\":\"1\"}', '{\"user\":\"Please confirm your login\"}', '{\"user\":\"Have you tried logging in with a different device? Confirm using the verification code. Your verification code is [verification_code]. Remember that you will lose access to your previous device after logging in to the new device <b>[user_agent]<\\/b>.<br> Use the verification code within [minutes] minutes\"}', 'Account security alert', 'Send verification code for login from a new device', '1684145383', '2023-11-02 11:13:07', '2023-11-02 11:13:07'),
(6, 'course_purchase', 1, NULL, '[\"admin\",\"student\",\"instructor\"]', '{\"admin\":\"1\",\"student\":\"1\",\"instructor\":\"1\"}', '{\"admin\":\"0\",\"student\":\"0\",\"instructor\":\"0\"}', '{\"admin\":\"A new course has been sold\",\"instructor\":\"A new course has been sold\",\"student\":\"You have purchased a new course\"}', '{\"admin\":\"<p>Course title: [course_title]<\\/p><p>Student: [student_name]\\r\\n<\\/p><p>Paid amount: [paid_amount]<\\/p><p>Instructor: [instructor_name]<\\/p>\",\"instructor\":\"Course title: [course_title]\\r\\nStudent: [student_name]\\r\\nPaid amount: [paid_amount]\",\"student\":\"Course title: [course_title]\\r\\nPaid amount: [paid_amount]\\r\\nInstructor: [instructor_name]\"}', 'Course purchase notification', 'Stay up-to-date on student course purchases.', '1684303456', '2023-11-02 11:13:07', '2023-11-02 11:13:07'),
(7, 'course_completion_mail', 1, NULL, '[\"student\",\"instructor\"]', '{\"student\":\"1\",\"instructor\":\"1\"}', '{\"student\":\"0\",\"instructor\":\"0\"}', '{\"instructor\":\"Course completion\",\"student\":\"You have completed a new course\"}', '{\"instructor\":\"Course completed [course_title]\\r\\nStudent: [student_name]\",\"student\":\"Course: [course_title]\\r\\nInstructor: [instructor_name]\"}', 'Course completion mail', 'Stay up to date on student course completion.', '1684303457', '2023-11-02 11:13:07', '2023-11-02 11:13:07'),
(8, 'certificate_eligibility', 1, 'certificate', '[\"student\",\"instructor\"]', '{\"student\":\"1\",\"instructor\":\"1\"}', '{\"student\":\"0\",\"instructor\":\"0\"}', '{\"instructor\":\"Certificate eligibility\",\"student\":\"certificate eligibility\"}', '{\"instructor\":\"Course: [course_title]\\r\\nStudent: [student_name]\\r\\nCertificate link: [certificate_link]\",\"student\":\"Course: [course_title]\\r\\nInstructor: [instructor_name]\\r\\nCertificate link: [certificate_link]\"}', 'Course eligibility notification', 'Stay up to date on course certificate eligibility.', '1684303460', '2023-11-02 11:13:07', '2023-11-02 11:13:07'),
(9, 'offline_payment_suspended_mail', 1, 'offline_payment', '[\"student\"]', '{\"student\":\"1\"}', '{\"student\":\"0\"}', '{\"student\":\"Your payment has been suspended\"}', '{\"student\":\"<p>Your offline payment has been <b style=\'color: red;\'>suspended</b> !</p><p>Please provide a valid document of your payment.</p>\"}', 'Offline payment suspended mail', 'If students provides fake information, notify them of the suspension', '1684303463', '2023-11-02 11:13:07', '2023-11-02 11:13:07'),
(10, 'bundle_purchase', 1, 'course_bundle', '[\"admin\",\"student\",\"instructor\"]', '{\"admin\":\"1\",\"student\":\"1\",\"instructor\":\"1\"}', '{\"admin\":\"0\",\"student\":\"0\",\"instructor\":\"0\"}', '{\"admin\":\"A new course bundle has been sold \",\"instructor\":\"A new course bundle has been sold \",\"student\":\"You have purchased a new course bundle test\"}', '{\"admin\":\"Course bundle: [bundle_title]\\r\\nStudent: [student_name]\\r\\nInstructor: [instructor_name] \",\"instructor\":\"Course bundle: [bundle_title]\\r\\nStudent: [student_name] \",\"student\":\"Course bundle: [bundle_title]\\r\\nInstructor: [instructor_name] \"}', 'Course bundle purchase notification', 'Stay up-to-date on student course bundle purchases.', '1684303467', '2023-11-02 11:13:07', '2023-11-02 11:13:07'),
(13, 'add_new_user_as_affiliator', 0, 'affiliate_course', '[\"affiliator\"]', '{\"affiliator\":\"0\"}', '{\"affiliator\":\"1\"}', '{\"affiliator\":\"Congratulation ! You are assigned as an affiliator\"}', '{\"affiliator\":\"You are assigned as a website Affiliator.\\r\\nWebsite: [website_link]\\r\\n<br>\\r\\nPassword: [password]\"}', 'New user added as affiliator', 'Send account information to the new user', '1684135777', '2023-11-02 11:13:07', '2023-11-02 11:13:07'),
(14, 'affiliator_approval_notification', 1, 'affiliate_course', '[\"affiliator\"]', '{\"affiliator\":\"1\"}', '{\"affiliator\":\"0\"}', '{\"affiliator\":\"Congratulations! Your affiliate request has been approved\"}', '{\"affiliator\":\"Congratulations! Your affiliate request has been approved\"}', 'Affiliate approval notification', 'Send affiliate approval mail to the user account', '1684303472', '2023-11-02 11:13:07', '2023-11-02 11:13:07'),
(15, 'affiliator_request_cancellation', 1, 'affiliate_course', '[\"affiliator\"]', '{\"affiliator\":\"1\"}', '{\"affiliator\":\"0\"}', '{\"affiliator\":\"Sorry ! Your request has been currently refused\"}', '{\"affiliator\":\"Sorry ! Your request has been currently refused.\"}', 'Affiliator request cancellation', 'Send mail, when you cancel the affiliation request', '1684303473', '2023-11-02 11:13:07', '2023-11-02 11:13:07'),
(16, 'affiliation_amount_withdrawal_request', 1, 'affiliate_course', '[\"admin\",\"affiliator\"]', '{\"admin\":\"1\",\"affiliator\":\"1\"}', '{\"admin\":\"0\",\"affiliator\":\"0\"}', '{\"admin\":\"New money withdrawal request\",\"affiliator\":\"New money withdrawal request\"}', '{\"admin\":\"New money withdrawal request by [\'user_name] [amount]\",\"affiliator\":\"Your Withdrawal request of [amount] has been sent to authority\"}', 'Affiliation money withdrawal request', 'Send mail, when the users request the withdrawal of money', '1684303476', '2023-11-02 11:13:07', '2023-11-02 11:13:07'),
(17, 'approval_affiliation_amount_withdrawal_request', 1, 'affiliate_course', '[\"affiliator\"]', '{\"affiliator\":\"1\"}', '{\"affiliator\":\"0\"}', '{\"affiliator\":\"Congartulation ! Your withdrawal request has been approved\"}', '{\"affiliator\":\"Congartulation ! Your payment request has been approved.\"}', 'Approval of withdrawal request of affiliation', 'Send mail, when you approved the affiliation withdrawal request', '1684303480', '2023-11-02 11:13:07', '2023-11-02 11:13:07'),
(18, 'course_gift', 1, NULL, '[\"payer\",\"receiver\"]', '{\"payer\":\"1\",\"receiver\":\"1\"}', '{\"payer\":\"1\",\"receiver\":\"1\"}', '{\"payer\":\"You have gift a course\",\"receiver\":\"You have received a course gift\"}', '{\"payer\":\"You have gift a course to [user_name] [course_title][instructor]\",\"receiver\":\"You have received a course gift by [payer][course_title][instructor]\"}', 'Course gift notification', 'Notify users after course gift', '1691818623', '2023-11-02 11:13:07', '2023-11-06 05:02:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `offline_payments`
--

CREATE TABLE `offline_payments` (
  `id` int(255) NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `item_type` varchar(255) DEFAULT NULL,
  `items` varchar(255) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `coupon` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `bank_no` varchar(255) DEFAULT NULL,
  `doc` varchar(255) DEFAULT NULL,
  `status` int(255) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Estructura de tabla para la tabla `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `keys` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `test_mode` int(11) DEFAULT NULL,
  `is_addon` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `identifier`, `currency`, `title`, `model_name`, `description`, `keys`, `status`, `test_mode`, `is_addon`, `created_at`, `updated_at`) VALUES
(1, 'paypal', 'USD', 'Paypal', 'Paypal', '', '{\"sandbox_client_id\":\"AfGaziKslex-scLAyYdDYXNFaz2aL5qGau-SbDgE_D2E80D3AFauLagP8e0kCq9au7W4IasmFbirUUYc\",\"sandbox_secret_key\":\"EMa5pCTuOpmHkhHaCGibGhVUcKg0yt5-C3CzJw-OWJCzaXXzTlyD17SICob_BkfM_0Nlk7TWnN42cbGz\",\"production_client_id\":\"1234\",\"production_secret_key\":\"12345\"}', 1, 1, 0, '2023-06-24 03:51:49', '2023-11-28 01:44:37'),
(2, 'stripe', 'USD', 'Stripe', 'StripePay', '', '{\"public_key\":\"pk_test_c6VvBEbwHFdulFZ62q1IQrar\",\"secret_key\":\"sk_test_9IMkiM6Ykxr1LCe2dJ3PgaxS\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}', 1, 1, 0, '2023-06-24 03:51:49', '2023-10-30 01:33:32'),
(3, 'razorpay', 'INR', 'Razorpay', 'Razorpay', '', '{\"public_key\":\"rzp_test_J60bqBOi1z1aF5\",\"secret_key\":\"uk935K7p4j96UCJgHK8kAU4q\"}', 1, 1, 0, '2023-06-24 03:51:49', '2024-09-10 22:41:31'),
(4, 'flutterwave', 'USD', 'Flutterwave', 'Flutterwave', '', '{\"public_key\":\"FLWPUBK_TEST-48dfbeb50344ecd8bc075b4ffe9ba266-X\",\"secret_key\":\"FLWSECK_TEST-1691582e23bd6ee4fb04213ec0b862dd-X\"}', 1, 1, 0, '2023-06-24 03:51:49', '2023-10-30 01:39:58'),
(5, 'paytm', 'INR', 'Paytm', 'Paytm', '', '{\"paytm_merchant_key\":\"NLcIjJn!!lkjDZQN\",\"paytm_merchant_mid\":\"YEPkQv98980476147162\",\"paytm_merchant_website\":\"WEBSTAGING\",\"industry_type_id\":\"Retail\",\"channel_id\":\"WEB\"}', 1, 1, 0, '2023-06-24 03:51:49', '2024-10-30 04:17:36'),
(6, 'offline', 'USD', 'Offline Payment', 'OfflinePayment', '', '{\"bank_information\":\"Escribe tu cuenta bancaria aqui\"}', 1, 0, 0, '2023-06-24 03:51:49', '2025-08-21 09:52:39'),
(7, 'paystack', 'NGN', 'Paystack', 'Paystack', NULL, '{\"secret_test_key\":\"sk_test_c746060e693dd50c6f397dffc6c3b2f655217c94\",\"public_test_key\":\"pk_test_0816abbed3c339b8473ff22f970c7da1c78cbe1b\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxxx\"}', 1, 1, 0, '2024-10-03 11:05:03', '2024-10-03 11:05:03'),
(8, 'sslcommerz', 'BDT', 'SSLCommerz', 'Sslcommerz', NULL, '{\"store_key\":\"creatxxxxxxxxxxx\",\"store_password\":\"creatxxxxxxxx@ssl\",\"store_live_key\":\"st_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"store_live_password\":\"sp_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"sslcz_testmode\":\"true\",\"is_localhost\":\"true\",\"sslcz_live_testmode\":\"false\",\"is_live_localhost\":\"false\"}', 1, 1, 0, '2025-03-23 11:50:40', '2025-03-23 11:50:40'),
(9, 'aamarpay', 'BDT', 'Aamarpay', 'Aamarpay', NULL, '{\"store_id\":\"xxxxxxxxxxxxx\",\"signature_key\":\"xxxxxxxxxxxxxxxxxxx\",\"store_live_id\":\"st_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"signature_live_key\":\"si_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}', 1, 1, 0, '2025-03-23 11:50:40', '2025-03-23 11:50:40'),
(10, 'doku', 'IDR', 'Doku', 'Doku', NULL, '{\"client_id\":\"BRN-xxxx-xxxxxxxxxxxxx\",\"secret_test_key\":\"SK-xxxxxxxxxxxxxxxxxxxx\",\"public_test_key\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxx\"}', 1, 1, 0, '2025-03-23 11:50:40', '2025-03-23 11:50:40'),
(11, 'maxicash', 'USD', 'Maxicash', 'Maxicash', NULL, '{\"merchant_id\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"merchant_password\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"merchant_live_id\":\"mr_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"merchant_live_password\":\"mp_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}', 1, 1, 0, '2025-03-23 11:50:40', '2025-03-23 11:50:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment_histories`
--

CREATE TABLE `payment_histories` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `invoice` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `admin_revenue` varchar(255) DEFAULT NULL,
  `instructor_revenue` varchar(255) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `instructor_payment_status` int(11) DEFAULT 0,
  `transaction_id` varchar(255) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `coupon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payouts`
--

CREATE TABLE `payouts` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `permissions` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

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
-- Estructura de tabla para la tabla `player_settings`
--

CREATE TABLE `player_settings` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `player_settings`
--

INSERT INTO `player_settings` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'watermark_width', '100', '2024-08-27 11:25:27', '2024-10-30 05:47:08'),
(2, 'watermark_height', '24', '2024-08-27 11:25:27', '2024-10-30 05:47:08'),
(3, 'watermark_top', '10', '2024-08-27 11:25:27', '2024-10-30 05:47:08'),
(4, 'watermark_left', '10', '2024-08-27 11:25:27', '2024-10-30 05:47:08'),
(5, 'watermark_opacity', '30', '2024-08-27 11:25:27', '2024-10-30 05:47:08'),
(6, 'watermark_type', 'js', '2024-08-27 11:25:27', '2024-10-30 05:47:08'),
(7, 'watermark_logo', 'uploads/watermark/watermark-default.png', '2024-08-27 11:25:27', '2024-08-27 11:25:27'),
(8, 'animation_speed', '1000', '2024-10-30 11:38:00', '2024-10-30 05:47:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `answer` mediumtext DEFAULT NULL,
  `options` longtext DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(255) NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `section_id` int(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `total_mark` int(255) DEFAULT NULL,
  `pass_mark` int(255) DEFAULT NULL,
  `drip_rule` int(255) DEFAULT NULL,
  `summary` longtext DEFAULT NULL,
  `attempts` longtext DEFAULT NULL,
  `sort` int(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quiz_submissions`
--

CREATE TABLE `quiz_submissions` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `correct_answer` longtext DEFAULT NULL,
  `wrong_answer` longtext DEFAULT NULL,
  `submits` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reviews`
--

CREATE TABLE `reviews` (
  `id` int(255) UNSIGNED NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `course_id` int(255) DEFAULT NULL,
  `rating` int(255) DEFAULT NULL,
  `review_type` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sort` int(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seo_fields`
--

CREATE TABLE `seo_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(20) DEFAULT NULL,
  `blog_id` int(20) DEFAULT NULL,
  `bootcamp_id` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `name_route` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_robot` text DEFAULT NULL,
  `canonical_url` varchar(255) DEFAULT NULL,
  `custom_url` varchar(255) DEFAULT NULL,
  `json_ld` longtext DEFAULT NULL,
  `og_title` varchar(255) DEFAULT NULL,
  `og_description` text DEFAULT NULL,
  `og_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `seo_fields`
--

INSERT INTO `seo_fields` (`id`, `course_id`, `blog_id`, `bootcamp_id`, `route`, `name_route`, `meta_title`, `meta_keywords`, `meta_description`, `meta_robot`, `canonical_url`, `custom_url`, `json_ld`, `og_title`, `og_description`, `og_image`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, 'Home', 'home', 'Home page', NULL, 'Home page for academy Seo', 'xxxxxx', 'https://academy.com', 'https://academy.com', '<script type=\"application/ld+json\"> {   \"@context\": \"http://schema.org\",   \"@type\": \"WebSite\",   \"name\": \"CodeCanyon\",   \"url\": \"https://codecanyon.net\" } </script>', 'ooooooooo', 'zzzzzzzzzz', 'OG-home.jpg', NULL, NULL),
(2, NULL, NULL, NULL, 'Compare', 'compare', 'Course compare', '[{\"value\":\"course\"},{\"value\":\"compare\"},{\"value\":\"difference\"}]', 'Course compare', 'xxxxxx', 'https:://academy.com/course-compare', 'https:://academy.com/course-compare', NULL, 'Course compare', 'Course compare', '2-customer-php-version.PNG', NULL, NULL),
(3, NULL, NULL, NULL, 'Privacy', 'privacy.policy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'OG-documantation.jpg', NULL, NULL),
(4, NULL, NULL, NULL, 'Refund', 'refund.policy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'OG-Blog.jpg', NULL, NULL),
(5, NULL, NULL, NULL, 'Terms- condition', 'terms.condition', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'OG-service.jpg', NULL, NULL),
(6, NULL, NULL, NULL, 'Faq', 'faq', 'Creative elements - ui subscription system', '[{\"value\":\"ui kits\"},{\"value\":\"website template\"},{\"value\":\"video template\"}]', 'Best and affordable ui kit subscription system', NULL, NULL, NULL, NULL, NULL, NULL, 'OG-elements home.jpg', NULL, NULL),
(7, NULL, NULL, NULL, 'Cookie policy', 'cookie.policy', 'Academy LMS - Cookie policy', '[{\"value\":\"ui kits\"},{\"value\":\"website template\"},{\"value\":\"video template\"}]', 'NULL', NULL, NULL, NULL, NULL, NULL, NULL, 'OG-elements home.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `type`, `description`, `created_at`, `updated_at`) VALUES
(1, 'language', 'english', '2023-10-29 05:36:40', '2025-08-21 10:30:01'),
(2, 'system_name', 'Academy', '2023-10-29 05:36:40', '2025-08-21 10:30:01'),
(3, 'system_title', 'Academy Club de Aprendizaje', '2023-10-29 05:36:40', '2025-08-21 10:30:01'),
(4, 'system_email', 'academy@example.com', '2023-10-29 05:36:40', '2025-08-21 10:30:01'),
(5, 'address', 'Moquegua Peru', '2023-10-29 05:36:40', '2025-08-21 10:30:01'),
(6, 'phone', '989895105', '2023-10-29 05:36:40', '2025-08-21 10:30:01'),
(7, 'purchase_code', 'your-purchase-code', '2023-10-29 05:36:40', '2025-08-21 10:30:01'),
(8, 'paypal', '[{\"active\":\"1\",\"mode\":\"sandbox\",\"sandbox_client_id\":\"AfGaziKslex-scLAyYdDYXNFaz2aL5qGau-SbDgE_D2E80D3AFauLagP8e0kCq9au7W4IasmFbirUUYc\",\"sandbox_secret_key\":\"EMa5pCTuOpmHkhHaCGibGhVUcKg0yt5-C3CzJw-OWJCzaXXzTlyD17SICob_BkfM_0Nlk7TWnN42cbGz\",\"production_client_id\":\"1234\",\"production_secret_key\":\"12345\"}]', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(9, 'stripe_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"public_key\":\"pk_test_CAC3cB1mhgkJqXtypYBTGb4f\",\"secret_key\":\"sk_test_iatnshcHhQVRXdygXw3L2Pp2\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}]', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(10, 'youtube_api_key', 'youtube-and-google-drive-api-key', '2023-10-29 05:36:40', '2025-08-21 10:30:01'),
(11, 'vimeo_api_key', 'vimeo-api-key', '2023-10-29 05:36:40', '2025-08-21 10:30:01'),
(12, 'slogan', 'CMS de vídeo basado en cursos', '2023-10-29 05:36:40', '2025-08-21 10:30:01'),
(13, 'text_align', NULL, '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(14, 'allow_instructor', '1', '2023-10-29 05:36:40', '2023-12-05 23:04:06'),
(15, 'instructor_revenue', '70', '2023-10-29 05:36:40', '2023-12-05 23:04:11'),
(16, 'system_currency', 'PEN', '2023-10-29 05:36:40', '2025-08-21 10:37:00'),
(17, 'paypal_currency', 'USD', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(18, 'stripe_currency', 'USD', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(19, 'author', 'codeingdigital', '2023-10-29 05:36:40', '2025-08-21 10:30:01'),
(20, 'currency_position', 'left', '2023-10-29 05:36:40', '2025-08-21 10:37:00'),
(21, 'website_description', 'ideal para compartir y vender tus conocimientos en línea.', '2023-10-29 05:36:40', '2025-08-21 10:30:01'),
(22, 'website_keywords', 'Academia en linea', '2023-10-29 05:36:40', '2025-08-21 10:30:01'),
(23, 'footer_text', 'Codeingdigital', '2023-10-29 05:36:40', '2025-08-21 10:30:01'),
(24, 'footer_link', 'https://codeingdigital.com/', '2023-10-29 05:36:40', '2025-08-21 10:30:01'),
(25, 'protocol', 'smtp', '2023-10-29 05:36:40', '2024-09-24 06:07:39'),
(26, 'smtp_host', 'smtp.gmail.com', '2023-10-29 05:36:40', '2024-09-24 06:07:39'),
(27, 'smtp_port', '465', '2023-10-29 05:36:40', '2024-09-24 06:07:39'),
(28, 'smtp_user', 'your-email-address', '2023-10-29 05:36:40', '2024-09-24 06:07:39'),
(29, 'smtp_pass', 'enter-your-smtp-password', '2023-10-29 05:36:40', '2024-09-24 06:07:39'),
(30, 'version', '1.6', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(31, 'student_email_verification', '0', '2023-10-29 05:36:40', '2025-08-21 10:30:01'),
(32, 'instructor_application_note', 'Fill all the fields carefully and share if you want to share any document with us it will help us to evaluate you as an instructor. dfdfs', '2023-10-29 05:36:40', '2023-12-05 23:04:06'),
(33, 'razorpay_keys', '[{\"active\":\"1\",\"key\":\"rzp_test_J60bqBOi1z1aF5\",\"secret_key\":\"uk935K7p4j96UCJgHK8kAU4q\",\"theme_color\":\"#c7a600\"}]', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(34, 'razorpay_currency', 'USD', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(35, 'fb_app_id', 'fb-app-id', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(36, 'fb_app_secret', 'fb-app-secret', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(37, 'fb_social_login', '0', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(38, 'drip_content_settings', '{\"lesson_completion_role\":\"duration\",\"minimum_duration\":\"15:30:00\",\"minimum_percentage\":\"60\",\"locked_lesson_message\":\"<h3 xss=\\\"removed\\\" style=\\\"text-align: center; \\\"><span xss=\\\"removed\\\" style=\\\"\\\">Permission denied!<\\/span><\\/h3><p xss=\\\"removed\\\" style=\\\"text-align: center; \\\"><span xss=\\\"removed\\\">This course supports drip content, so you must complete the previous lessons.<\\/span><\\/p>\",\"files\":null}', '2023-10-29 05:36:40', '2023-10-29 05:26:38'),
(41, 'course_accessibility', 'publicly', '2023-10-29 05:36:40', '2023-12-05 00:54:45'),
(42, 'smtp_crypto', 'ssl', '2023-10-29 05:36:40', '2024-09-24 06:07:39'),
(47, 'academy_cloud_access_token', 'jdfghasdfasdfasdfasdfasdf', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(48, 'course_selling_tax', '0', '2023-10-29 05:36:40', '2025-08-21 10:30:01'),
(49, 'ccavenue_keys', '[{\"active\":\"1\",\"ccavenue_merchant_id\":\"cmi_xxxxxx\",\"ccavenue_working_key\":\"cwk_xxxxxxxxxxxx\",\"ccavenue_access_code\":\"ccc_xxxxxxxxxxxxx\"}]', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(50, 'ccavenue_currency', 'INR', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(51, 'iyzico_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"iyzico_currency\":\"TRY\",\"api_test_key\":\"atk_xxxxxxxx\",\"secret_test_key\":\"stk_xxxxxxxx\",\"api_live_key\":\"alk_xxxxxxxx\",\"secret_live_key\":\"slk_xxxxxxxx\"}]', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(52, 'iyzico_currency', 'TRY', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(53, 'paystack_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"secret_test_key\":\"sk_test_c746060e693dd50c6f397dffc6c3b2f655217c94\",\"public_test_key\":\"pk_test_0816abbed3c339b8473ff22f970c7da1c78cbe1b\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxx\"}]', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(54, 'paystack_currency', 'NGN', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(55, 'paytm_keys', '[{\"PAYTM_MERCHANT_KEY\":\"PAYTM_MERCHANT_KEY\",\"PAYTM_MERCHANT_MID\":\"PAYTM_MERCHANT_MID\",\"PAYTM_MERCHANT_WEBSITE\":\"DEFAULT\",\"INDUSTRY_TYPE_ID\":\"Retail\",\"CHANNEL_ID\":\"WEB\"}]', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(57, 'google_analytics_id', NULL, '2023-10-29 05:36:40', '2023-12-05 00:54:45'),
(58, 'meta_pixel_id', NULL, '2023-10-29 05:36:40', '2023-12-05 00:54:45'),
(59, 'smtp_from_email', 'your-email-address', '2023-10-29 05:36:40', '2024-09-24 06:07:39'),
(61, 'language_dirs', '{\"english\":\"ltr\",\"hindi\":\"rtl\",\"arabic\":\"rtl\"}', '2023-10-29 05:36:40', '2023-10-29 05:36:40'),
(62, 'certificate_template', 'uploads/certificate-template/certificate-default.png', '2024-03-12 08:17:10', '2024-08-27 05:21:49'),
(63, 'certificate_builder_content', '<style>\n            @import url(\'https://fonts.googleapis.com/css2?family=Italianno&display=swap\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Pinyon+Script&display=swap%27\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Miss+Fajardose&display=swap%27\');\n        </style>\n        \n\n                                <style>\n            @import url(\'https://fonts.googleapis.com/css2?family=Italianno&display=swap\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Pinyon+Script&display=swap%27\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Miss+Fajardose&display=swap%27\');\n        </style>\n        \n\n                                <style>\n            @import url(\'https://fonts.googleapis.com/css2?family=Italianno&display=swap\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Pinyon+Script&display=swap%27\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Miss+Fajardose&display=swap%27\');\n        </style>\n        \n\n                                <style>\n            @import url(\'https://fonts.googleapis.com/css2?family=Italianno&display=swap\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Pinyon+Script&display=swap%27\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Miss+Fajardose&display=swap%27\');\n        </style>\n        \n\n                                <style>\n            @import url(\'https://fonts.googleapis.com/css2?family=Italianno&display=swap\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Pinyon+Script&display=swap%27\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Miss+Fajardose&display=swap%27\');\n        </style>\n        \n\n                                \n<style>\n            @import url(\'https://fonts.googleapis.com/css2?family=Italianno&display=swap\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Pinyon+Script&display=swap%27\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Miss+Fajardose&display=swap%27\');\n        </style><style>\n            @import url(\'https://fonts.googleapis.com/css2?family=Italianno&display=swap\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Pinyon+Script&display=swap%27\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Miss+Fajardose&display=swap%27\');\n        </style><style>\n            @import url(\'https://fonts.googleapis.com/css2?family=Italianno&display=swap\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Pinyon+Script&display=swap%27\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Miss+Fajardose&display=swap%27\');\n        </style><style>\n            @import url(\'https://fonts.googleapis.com/css2?family=Italianno&display=swap\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Pinyon+Script&display=swap%27\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Miss+Fajardose&display=swap%27\');\n        </style><style>\n            @import url(\'https://fonts.googleapis.com/css2?family=Italianno&display=swap\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Pinyon+Script&display=swap%27\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Miss+Fajardose&display=swap%27\');\n        </style><style>\n            @import url(\'https://fonts.googleapis.com/css2?family=Italianno&display=swap\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Pinyon+Script&display=swap%27\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Miss+Fajardose&display=swap%27\');\n        </style><style>\n            @import url(\'https://fonts.googleapis.com/css2?family=Italianno&display=swap\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Pinyon+Script&display=swap%27\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Miss+Fajardose&display=swap%27\');\n        </style><style>\n            @import url(\'https://fonts.googleapis.com/css2?family=Italianno&display=swap\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Pinyon+Script&display=swap%27\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Miss+Fajardose&display=swap%27\');\n        </style><style>\n            @import url(\'https://fonts.googleapis.com/css2?family=Italianno&display=swap\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Pinyon+Script&display=swap%27\');\n            @import url(\'https://fonts.googleapis.com/css2?family=Miss+Fajardose&display=swap%27\');\n        </style><div id=\"certificate-layout-module\" class=\"certificate-layout-module resizeable-canvas draggable ui-draggable ui-draggable-handle ui-resizable hidden-position\" style=\"position: relative; width: 1069.2px; height: 755.055px; left: 0px; top: -1px;\" bis_skin_checked=\"1\">\n                <img class=\"certificate-template\" style=\"width: 100%; height: 100%;\" src=\"http://localhost/academy-laravel/academy_1.4/public/uploads/certificate-template/certificate-default.png\"><div class=\"ui-resizable-handle ui-resizable-e\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-s\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"draggable resizeable-canvas ui-draggable ui-draggable-handle ui-resizable\" style=\"position: absolute; font-size: 16px; top: 114px; left: 93px; width: 84.8906px; font-family: &quot;auto&quot;; padding: 5px !important; height: 80px;\" bis_skin_checked=\"1\">\n                {qr_code}\n                <i class=\"remove-item fi-rr-cross-circle cursor-pointer\" onclick=\"$(this).parent().remove()\">\n            </i><div class=\"ui-resizable-handle ui-resizable-e\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-s\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div></div><div class=\"draggable resizeable-canvas ui-draggable ui-draggable-handle ui-resizable\" style=\"position: absolute; font-size: 18px; top: 546px; left: 125px; width: 210.031px; font-family: &quot;Pinyon Script&quot;; padding: 5px !important; height: 37px;\" bis_skin_checked=\"1\">\n                {instructor_name}\n                <i class=\"remove-item fi-rr-cross-circle cursor-pointer\" onclick=\"$(this).parent().remove()\">\n            </i><div class=\"ui-resizable-handle ui-resizable-e\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-s\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div></div><div class=\"draggable resizeable-canvas ui-draggable ui-draggable-handle ui-resizable\" style=\"position: absolute; font-size: 18px; top: 546px; left: 724px; width: 210.188px; font-family: &quot;Pinyon Script&quot;; padding: 5px !important; height: 39px;\" bis_skin_checked=\"1\">\n                {student_name}\n                <i class=\"remove-item fi-rr-cross-circle cursor-pointer\" onclick=\"$(this).parent().remove()\">\n            </i><div class=\"ui-resizable-handle ui-resizable-e\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-s\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div></div><div class=\"draggable resizeable-canvas ui-draggable ui-draggable-handle ui-resizable\" style=\"position: absolute; font-size: 16px; top: 545px; left: 442px; width: min-content; font-family: &quot;auto&quot;; padding: 5px !important;\" bis_skin_checked=\"1\">\n                {course_completion_date}\n                <i class=\"remove-item fi-rr-cross-circle cursor-pointer\" onclick=\"$(this).parent().remove()\">\n            </i><div class=\"ui-resizable-handle ui-resizable-e\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-s\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div></div><div class=\"draggable resizeable-canvas ui-draggable ui-draggable-handle ui-resizable\" style=\"position: absolute; font-size: 12px; top: 665px; left: 457px; width: min-content; font-family: &quot;auto&quot;; padding: 5px !important;\" bis_skin_checked=\"1\">\n                {certificate_download_date}\n                <i class=\"remove-item fi-rr-cross-circle cursor-pointer\" onclick=\"$(this).parent().remove()\">\n            </i><div class=\"ui-resizable-handle ui-resizable-e\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-s\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div></div><div class=\"draggable resizeable-canvas ui-draggable ui-draggable-handle ui-resizable\" style=\"position: absolute;font-size: 30px;top: 136px;left: 264px;width: 534.336px;padding: 5px !important;height: 62px;font-family: auto;\" bis_skin_checked=\"1\">\n                COURSE COMPLETION CERTIFICATE\n                <i class=\"remove-item fi-rr-cross-circle cursor-pointer\" onclick=\"$(this).parent().remove()\">\n            </i><div class=\"ui-resizable-handle ui-resizable-e\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-s\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div></div><div class=\"draggable resizeable-canvas ui-draggable ui-draggable-handle ui-resizable\" style=\"position: absolute; font-size: 18px; top: 211px; left: 205px; width: 664.5px; font-family: &quot;Pinyon Script&quot;; padding: 5px !important; height: 98px;\" bis_skin_checked=\"1\">\n                This certificate is awarded to {student_name} in recognition of their successful completion of Course on {course_completion_date}. Your hard work, dedication, and commitment to learning have enabled you to achieve this milestone, and we are proud to recognize your accomplishment.\n                <i class=\"remove-item fi-rr-cross-circle cursor-pointer\" onclick=\"$(this).parent().remove()\">\n            </i><div class=\"ui-resizable-handle ui-resizable-e\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-s\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div></div><div class=\"draggable resizeable-canvas ui-draggable ui-draggable-handle ui-resizable\" style=\"position: absolute; font-size: 18px; top: 316px; left: 315px; width: 428.25px; font-family: &quot;auto&quot;; padding: 5px !important; height: 48px;\" bis_skin_checked=\"1\">\n                {course_title}\n                <i class=\"remove-item fi-rr-cross-circle cursor-pointer\" onclick=\"$(this).parent().remove()\">\n            </i><div class=\"ui-resizable-handle ui-resizable-e\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-s\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div><div class=\"ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se\" style=\"z-index: 90;\" bis_skin_checked=\"1\"></div></div></div>', '2024-03-12 08:17:50', '2024-10-29 01:43:51'),
(64, '_token', 'tEYJPyWB4tjFp0tz78j0gDLj07tLXnw5hVpU5mX7', '2024-03-12 08:18:24', '2024-08-27 05:25:46'),
(65, 'zoom_account_email', 'example@gmail.com', '2024-03-12 08:18:24', '2024-08-27 05:19:46'),
(66, 'zoom_account_id', 'RG4XYxxxxxxxxxxxxxxx', '2024-03-12 08:18:24', '2024-08-27 05:19:46'),
(67, 'zoom_client_id', 'mFgJ4xxxxxxxxxxxxxxx', '2024-03-12 08:18:24', '2024-08-27 05:19:46'),
(68, 'zoom_client_secret', 'OZ6m9xxxxxxxxxxxxxxxx', '2024-03-12 08:18:24', '2024-08-27 05:19:46'),
(69, 'zoom_web_sdk', 'active', '2024-03-12 08:18:24', '2024-08-27 05:19:46'),
(70, 'zoom_sdk_client_id', '7M6Wxxxxxxxxxxxx', '2024-03-12 08:18:24', '2024-08-27 05:19:46'),
(71, 'zoom_sdk_client_secret', 'z1Nzxxxxxxxxxxxxxx', '2024-03-12 08:18:24', '2024-08-27 05:19:46'),
(72, 'open_ai_model', 'gpt-3.5-turbo-0125', '2024-03-12 09:11:12', '2024-08-27 05:25:46'),
(73, 'open_ai_max_token', '100', '2024-03-12 09:11:12', '2024-08-27 05:25:46'),
(74, 'open_ai_secret_key', 'sk-JPYxxxxxxxxxxxxxxxxxxx', '2024-03-12 09:11:12', '2024-08-27 05:25:46'),
(75, 'timezone', 'America/Lima', '2024-07-01 02:06:24', '2025-08-21 10:30:01'),
(76, 'device_limitation', '10', '2023-10-29 05:36:40', '2025-08-21 10:30:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `team_package_members`
--

CREATE TABLE `team_package_members` (
  `id` int(11) NOT NULL,
  `leader_id` int(11) DEFAULT NULL,
  `team_package_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `team_package_purchases`
--

CREATE TABLE `team_package_purchases` (
  `id` int(11) NOT NULL,
  `invoice` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `admin_revenue` double DEFAULT NULL,
  `instructor_revenue` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_details` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `team_training_packages`
--

CREATE TABLE `team_training_packages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `course_privacy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `allocation` int(11) DEFAULT NULL,
  `expiry_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` int(11) DEFAULT NULL,
  `expiry_date` int(11) DEFAULT NULL,
  `features` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pricing_type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutor_bookings`
--

CREATE TABLE `tutor_bookings` (
  `id` int(11) NOT NULL,
  `invoice` varchar(255) DEFAULT NULL,
  `schedule_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `tutor_id` int(11) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `joining_data` longtext DEFAULT NULL,
  `price` double DEFAULT NULL,
  `admin_revenue` double DEFAULT NULL,
  `instructor_revenue` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutor_can_teach`
--

CREATE TABLE `tutor_can_teach` (
  `id` int(11) NOT NULL,
  `instructor_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutor_categories`
--

CREATE TABLE `tutor_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutor_reviews`
--

CREATE TABLE `tutor_reviews` (
  `id` int(11) NOT NULL,
  `tutor_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `review` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutor_schedules`
--

CREATE TABLE `tutor_schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `tutor_id` int(11) DEFAULT 0,
  `category_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `tution_type` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `booking_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutor_subjects`
--

CREATE TABLE `tutor_subjects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `skills` text DEFAULT NULL,
  `facebook` text DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `biography` longtext DEFAULT NULL,
  `educations` longtext DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `paymentkeys` longtext DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role`, `email`, `status`, `name`, `phone`, `website`, `skills`, `facebook`, `twitter`, `linkedin`, `address`, `about`, `biography`, `educations`, `photo`, `email_verified_at`, `password`, `remember_token`, `paymentkeys`, `video_url`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'codeingdigital@gmail.com', 1, 'humberto', '989895105', NULL, '[]', NULL, NULL, NULL, 'Moquegua', NULL, NULL, NULL, NULL, '2025-08-21 09:44:02', '$2y$10$6z3KTuEHPPaIL2yMME2hE.P1K.V1qc0..ngdedsUk5kUKm9fgQnNe', NULL, NULL, NULL, '2025-08-21 09:44:02', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_reviews`
--

CREATE TABLE `user_reviews` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `watch_durations`
--

CREATE TABLE `watch_durations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `watched_student_id` int(11) DEFAULT NULL,
  `watched_course_id` int(11) DEFAULT NULL,
  `watched_lesson_id` int(11) DEFAULT NULL,
  `current_duration` int(11) DEFAULT NULL,
  `watched_counter` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `watch_histories`
--

CREATE TABLE `watch_histories` (
  `id` int(255) UNSIGNED NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `completed_lesson` longtext DEFAULT NULL,
  `watching_lesson_id` varchar(11) DEFAULT NULL,
  `course_progress` int(11) DEFAULT NULL,
  `completed_date` varchar(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `course_id` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `addtocarts`
--
ALTER TABLE `addtocarts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `blog_likes`
--
ALTER TABLE `blog_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bootcamps`
--
ALTER TABLE `bootcamps`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bootcamp_categories`
--
ALTER TABLE `bootcamp_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bootcamp_live_classes`
--
ALTER TABLE `bootcamp_live_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bootcamp_modules`
--
ALTER TABLE `bootcamp_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bootcamp_purchases`
--
ALTER TABLE `bootcamp_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bootcamp_resources`
--
ALTER TABLE `bootcamp_resources`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `builder_pages`
--
ALTER TABLE `builder_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_index` (`parent_id`);

--
-- Indices de la tabla `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `certificates_identifier_unique` (`identifier`),
  ADD KEY `certificates_user_id_index` (`user_id`),
  ADD KEY `certificates_course_id_index` (`course_id`);

--
-- Indices de la tabla `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_code_unique` (`code`);

--
-- Indices de la tabla `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_user_id_index` (`user_id`),
  ADD KEY `courses_category_id_index` (`category_id`);

--
-- Indices de la tabla `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `device_ips`
--
ALTER TABLE `device_ips`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enrollments_user_id_index` (`user_id`),
  ADD KEY `enrollments_course_id_index` (`course_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `forums`
--
ALTER TABLE `forums`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `frontend_settings`
--
ALTER TABLE `frontend_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `home_page_settings`
--
ALTER TABLE `home_page_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `instructor_reviews`
--
ALTER TABLE `instructor_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `knowledge_bases`
--
ALTER TABLE `knowledge_bases`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `knowledge_base_topicks`
--
ALTER TABLE `knowledge_base_topicks`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `language_phrases`
--
ALTER TABLE `language_phrases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_phrases_language_id_index` (`language_id`);

--
-- Indices de la tabla `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lessons_user_id_index` (`user_id`),
  ADD KEY `lessons_course_id_index` (`course_id`),
  ADD KEY `lessons_section_id_index` (`section_id`);

--
-- Indices de la tabla `like_dislike_reviews`
--
ALTER TABLE `like_dislike_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `live_classes`
--
ALTER TABLE `live_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `live_classes_user_id_index` (`user_id`),
  ADD KEY `live_classes_course_id_index` (`course_id`);

--
-- Indices de la tabla `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `message_threads`
--
ALTER TABLE `message_threads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_thread_sender_foreign` (`contact_one`),
  ADD KEY `message_thread_receiver_foreign` (`contact_two`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notification_settings`
--
ALTER TABLE `notification_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `offline_payments`
--
ALTER TABLE `offline_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `payment_histories`
--
ALTER TABLE `payment_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `payouts`
--
ALTER TABLE `payouts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `player_settings`
--
ALTER TABLE `player_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `quiz_submissions`
--
ALTER TABLE `quiz_submissions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sections_user_id_index` (`user_id`),
  ADD KEY `sections_course_id_index` (`course_id`);

--
-- Indices de la tabla `seo_fields`
--
ALTER TABLE `seo_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `team_package_members`
--
ALTER TABLE `team_package_members`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `team_package_purchases`
--
ALTER TABLE `team_package_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `team_training_packages`
--
ALTER TABLE `team_training_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tutor_bookings`
--
ALTER TABLE `tutor_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tutor_can_teach`
--
ALTER TABLE `tutor_can_teach`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tutor_categories`
--
ALTER TABLE `tutor_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tutor_reviews`
--
ALTER TABLE `tutor_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tutor_schedules`
--
ALTER TABLE `tutor_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tutor_subjects`
--
ALTER TABLE `tutor_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `user_reviews`
--
ALTER TABLE `user_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `watch_durations`
--
ALTER TABLE `watch_durations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `watch_histories`
--
ALTER TABLE `watch_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `addtocarts`
--
ALTER TABLE `addtocarts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `blog_likes`
--
ALTER TABLE `blog_likes`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bootcamps`
--
ALTER TABLE `bootcamps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bootcamp_categories`
--
ALTER TABLE `bootcamp_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bootcamp_live_classes`
--
ALTER TABLE `bootcamp_live_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bootcamp_modules`
--
ALTER TABLE `bootcamp_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bootcamp_purchases`
--
ALTER TABLE `bootcamp_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bootcamp_resources`
--
ALTER TABLE `bootcamp_resources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `builder_pages`
--
ALTER TABLE `builder_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT de la tabla `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT de la tabla `device_ips`
--
ALTER TABLE `device_ips`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `forums`
--
ALTER TABLE `forums`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `frontend_settings`
--
ALTER TABLE `frontend_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `home_page_settings`
--
ALTER TABLE `home_page_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `instructor_reviews`
--
ALTER TABLE `instructor_reviews`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `knowledge_bases`
--
ALTER TABLE `knowledge_bases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `knowledge_base_topicks`
--
ALTER TABLE `knowledge_base_topicks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `language_phrases`
--
ALTER TABLE `language_phrases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1816;

--
-- AUTO_INCREMENT de la tabla `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `like_dislike_reviews`
--
ALTER TABLE `like_dislike_reviews`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `live_classes`
--
ALTER TABLE `live_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `message_threads`
--
ALTER TABLE `message_threads`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notification_settings`
--
ALTER TABLE `notification_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `offline_payments`
--
ALTER TABLE `offline_payments`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `payment_histories`
--
ALTER TABLE `payment_histories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `payouts`
--
ALTER TABLE `payouts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `player_settings`
--
ALTER TABLE `player_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `quiz_submissions`
--
ALTER TABLE `quiz_submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `seo_fields`
--
ALTER TABLE `seo_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `team_package_members`
--
ALTER TABLE `team_package_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `team_package_purchases`
--
ALTER TABLE `team_package_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `team_training_packages`
--
ALTER TABLE `team_training_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tutor_bookings`
--
ALTER TABLE `tutor_bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tutor_can_teach`
--
ALTER TABLE `tutor_can_teach`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tutor_categories`
--
ALTER TABLE `tutor_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tutor_reviews`
--
ALTER TABLE `tutor_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tutor_schedules`
--
ALTER TABLE `tutor_schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tutor_subjects`
--
ALTER TABLE `tutor_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `user_reviews`
--
ALTER TABLE `user_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `watch_durations`
--
ALTER TABLE `watch_durations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `watch_histories`
--
ALTER TABLE `watch_histories`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
