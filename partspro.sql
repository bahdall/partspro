-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.5.37-log - MySQL Community Server (GPL)
-- ОС Сервера:                   Win32
-- HeidiSQL Версия:              8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица partspro.accounting1c
CREATE TABLE IF NOT EXISTS `accounting1c` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `object_type` int(11) DEFAULT NULL,
  `external_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_type` (`object_type`),
  KEY `external_id` (`external_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.accounting1c: 0 rows
DELETE FROM `accounting1c`;
/*!40000 ALTER TABLE `accounting1c` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounting1c` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.ActionLog
CREATE TABLE IF NOT EXISTS `ActionLog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `event` tinyint(255) DEFAULT NULL,
  `model_name` varchar(50) DEFAULT '',
  `model_title` text,
  `datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `event` (`event`),
  KEY `datetime` (`datetime`),
  KEY `model_name` (`model_name`)
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.ActionLog: 75 rows
DELETE FROM `ActionLog`;
/*!40000 ALTER TABLE `ActionLog` DISABLE KEYS */;
INSERT INTO `ActionLog` (`id`, `username`, `event`, `model_name`, `model_title`, `datetime`) VALUES
	(1, 'admin', 1, 'SSystemLanguage', 'Казахский', '2014-09-30 13:45:48'),
	(2, 'admin', 2, 'Page', 'О компании', '2014-10-02 11:58:43'),
	(3, 'admin', 1, 'Page', 'Все услуги', '2014-10-02 12:00:55'),
	(4, 'admin', 1, 'Page', 'Вакансии', '2014-10-02 12:02:30'),
	(5, 'admin', 2, 'SSystemLanguage', 'Рус', '2014-10-02 14:35:41'),
	(6, 'admin', 2, 'SSystemLanguage', 'Eng', '2014-10-02 14:35:51'),
	(7, 'admin', 2, 'SSystemLanguage', 'Kz', '2014-10-02 14:36:06'),
	(8, 'admin', 1, 'StoreCategory', 'Автозапчасти', '2014-10-03 13:50:48'),
	(9, 'admin', 1, 'StoreCategory', 'Грузовые авто', '2014-10-03 13:51:34'),
	(10, 'admin', 1, 'StoreCategory', 'Легковые авто', '2014-10-03 13:52:52'),
	(11, 'admin', 1, 'StoreCategory', 'Заказать деталь', '2014-10-03 14:00:15'),
	(12, 'admin', 1, 'StoreAttribute', 'mark', '2014-10-03 14:06:49'),
	(13, 'admin', 1, 'StoreAttribute', 'year_create', '2014-10-03 14:09:08'),
	(14, 'admin', 1, 'StoreAttribute', 'type_cuzov', '2014-10-03 14:11:40'),
	(15, 'admin', 1, 'StoreAttribute', 'kpp_type', '2014-10-03 14:12:42'),
	(16, 'admin', 1, 'StoreAttribute', 'state', '2014-10-03 14:14:46'),
	(17, 'admin', 1, 'StoreAttribute', 'odometer', '2014-10-03 14:15:33'),
	(18, 'admin', 1, 'StoreProductType', 'Автомобили', '2014-10-03 14:16:29'),
	(19, 'admin', 1, 'StoreProduct', 'test', '2014-10-03 16:43:03'),
	(20, 'admin', 2, 'StoreProduct', 'Samsung Galaxy Tab 10.1 P7500 16Gb', '2014-10-03 16:45:21'),
	(21, 'admin', 3, 'StoreProduct', 'test', '2014-10-03 16:49:37'),
	(22, 'admin', 1, 'StoreProduct', 'test', '2014-10-03 16:51:37'),
	(23, 'admin', 2, 'StoreAttribute', 'odometer', '2014-10-07 10:11:24'),
	(24, 'admin', 2, 'StoreAttribute', 'year_create', '2014-10-07 10:12:04'),
	(25, 'admin', 1, 'StoreProduct', 'Acura', '2014-10-08 10:14:57'),
	(26, 'admin', 2, 'StoreProduct', 'Acura', '2014-10-08 14:57:39'),
	(27, 'admin', 1, 'PageCategory', 'Машины в разборе', '2014-10-08 15:24:55'),
	(28, 'admin', 2, 'PageCategory', 'Новости', '2014-10-08 15:24:55'),
	(29, 'admin', 2, 'PageCategory', 'Тесстовя2', '2014-10-08 15:24:55'),
	(30, 'admin', 2, 'PageCategory', 'Машины в разборе', '2014-10-08 15:24:55'),
	(31, 'admin', 2, 'Page', 'Вакансии', '2014-10-09 10:16:33'),
	(32, 'admin', 2, 'Page', 'Google презентовал свои очки дополненной реальности‎', '2014-10-09 10:18:05'),
	(33, 'admin', 2, 'Page', 'За 8,5 месяцев Android 4.0 попал на 11% устройств', '2014-10-09 10:18:33'),
	(34, 'admin', 2, 'Page', 'Samsung пытается избежать запрета на Galaxy Nexus', '2014-10-09 10:18:48'),
	(35, 'admin', 2, 'StoreProduct', 'Acura', '2014-10-09 13:26:54'),
	(36, 'admin', 1, 'StoreAttribute', 'sostoyanie', '2014-10-10 14:32:48'),
	(37, 'admin', 2, 'StoreAttribute', 'uroven_sostoyaniya', '2014-10-10 14:35:44'),
	(38, 'admin', 2, 'StoreProductType', 'Автомобили', '2014-10-10 14:36:28'),
	(39, 'admin', 2, 'StoreProduct', 'Acura', '2014-10-10 14:37:17'),
	(40, 'admin', 2, 'StoreProduct', 'test', '2014-10-10 14:37:53'),
	(41, 'admin', 2, 'StoreAttribute', 'mark', '2014-10-10 14:43:28'),
	(42, 'admin', 1, 'StoreProduct', 'Skoda Octavia', '2014-10-10 14:49:32'),
	(43, 'admin', 2, 'StoreAttribute', 'mark', '2014-10-10 14:59:52'),
	(44, 'admin', 2, 'StoreAttribute', 'state', '2014-10-10 15:01:04'),
	(45, 'admin', 2, 'StoreAttribute', 'type_cuzov', '2014-10-10 15:04:04'),
	(46, 'admin', 1, 'StoreProduct', 'Toyota Highlander', '2014-10-10 15:33:26'),
	(47, 'admin', 2, 'StoreProduct', 'Toyota Highlander', '2014-10-10 15:53:07'),
	(48, 'admin', 1, 'StoreProduct', 'MAN (Грузовые) TGS 19.360', '2014-10-10 15:56:01'),
	(49, 'admin', 2, 'StoreProduct', 'MAN (Грузовые) TGS 19.360', '2014-10-10 15:57:19'),
	(50, 'admin', 1, 'StoreProduct', 'Scania (Грузовые) P340', '2014-10-10 15:58:56'),
	(51, 'admin', 1, 'StoreProduct', 'Mercedes Benz (Грузовые) Axor 1843LS', '2014-10-10 16:02:02'),
	(52, 'admin', 1, 'StoreCategory', 'Продажа авто', '2014-10-10 16:06:51'),
	(53, 'admin', 2, 'StoreCategory', 'Легковые авто', '2014-10-10 16:07:09'),
	(54, 'admin', 2, 'StoreCategory', 'Грузовые авто', '2014-10-10 16:07:14'),
	(55, 'admin', 2, 'StoreCategory', 'Грузовые авто', '2014-10-10 16:07:19'),
	(56, 'admin', 2, 'StoreCategory', 'Легковые авто', '2014-10-10 16:07:23'),
	(57, 'admin', 2, 'StoreCategory', 'Легковые авто', '2014-10-10 16:08:38'),
	(58, 'admin', 2, 'StoreCategory', 'Грузовые авто', '2014-10-10 16:08:46'),
	(59, 'admin', 2, 'Page', 'Все услуги', '2014-10-10 16:40:04'),
	(60, 'admin', 2, 'Page', 'Вакансии', '2014-10-10 16:40:47'),
	(61, 'admin', 1, 'Page', 'Аргон сварка', '2014-10-10 16:42:20'),
	(62, 'admin', 2, 'StoreProduct', 'Toyota Highlander', '2014-10-11 11:52:21'),
	(63, 'admin', 2, 'StoreAttribute', 'uroven_sostoyaniya', '2014-10-11 12:21:24'),
	(64, 'admin', 1, 'Page', 'Ауди', '2014-10-13 14:27:58'),
	(65, 'admin', 1, 'Page', 'Ниссан', '2014-10-13 14:28:57'),
	(66, 'admin', 1, 'Page', 'Volvo', '2014-10-13 14:29:59'),
	(67, 'admin', 2, 'Page', 'О компании', '2014-10-13 14:35:40'),
	(68, 'admin', 1, 'Page', 'Контакты', '2014-10-13 14:41:27'),
	(69, 'admin', 2, 'Page', 'Наши контакты', '2014-10-13 14:43:33'),
	(70, 'admin', 2, 'Page', 'Наши контакты', '2014-10-13 14:46:40'),
	(71, 'admin', 2, 'Page', 'Наши контакты', '2014-10-13 14:51:00'),
	(72, 'admin', 2, 'Page', 'Наши контакты', '2014-10-13 14:52:43'),
	(73, 'admin', 2, 'StoreProduct', 'Mercedes Benz (Грузовые) Axor 1843LS', '2014-10-15 14:02:08'),
	(74, 'admin', 2, 'StoreProduct', 'Mercedes Benz (Грузовые) Axor 1843LS', '2014-10-16 12:38:01'),
	(75, 'admin', 1, 'StoreProduct', 'Mitsubishi Pajero Sport', '2014-10-16 12:59:40'),
	(76, 'admin', 2, 'StoreProduct', 'test', '2014-10-20 12:43:55'),
	(77, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 13:02:09'),
	(78, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 13:02:09'),
	(79, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 13:02:09'),
	(80, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 13:02:09'),
	(81, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 13:02:09'),
	(82, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 13:02:09'),
	(83, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 13:02:09'),
	(84, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 13:02:09'),
	(85, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 13:02:09'),
	(86, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 13:02:09'),
	(87, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 15:09:32'),
	(88, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 15:09:32'),
	(89, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 15:09:32'),
	(90, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 15:09:32'),
	(91, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 15:09:32'),
	(92, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 15:09:32'),
	(93, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 15:09:32'),
	(94, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 15:09:32'),
	(95, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 15:09:32'),
	(96, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 15:09:32'),
	(97, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 15:09:32'),
	(98, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 15:09:32'),
	(99, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 15:09:32'),
	(100, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 15:09:32'),
	(101, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 15:09:32'),
	(102, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 15:09:32'),
	(103, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 15:09:33'),
	(104, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 15:09:33'),
	(105, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 15:09:33'),
	(106, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 15:09:33'),
	(107, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 15:09:33'),
	(108, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 15:09:33'),
	(109, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 15:09:33'),
	(110, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 15:09:33'),
	(111, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 15:09:33'),
	(112, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 15:09:33'),
	(113, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 15:09:33'),
	(114, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 15:09:33'),
	(115, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 15:09:33'),
	(116, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 15:09:33'),
	(117, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 15:09:44'),
	(118, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 15:09:44'),
	(119, 'admin', 3, 'StoreProduct', 'test', '2014-10-20 15:19:04');
/*!40000 ALTER TABLE `ActionLog` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.AuthAssignment
CREATE TABLE IF NOT EXISTS `AuthAssignment` (
  `itemname` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`itemname`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.AuthAssignment: 10 rows
DELETE FROM `AuthAssignment`;
/*!40000 ALTER TABLE `AuthAssignment` DISABLE KEYS */;
INSERT INTO `AuthAssignment` (`itemname`, `userid`, `bizrule`, `data`) VALUES
	('Admin', '1', NULL, NULL),
	('Authenticated', '57', NULL, 'N;'),
	('Authenticated', '58', NULL, 'N;'),
	('Orders.Orders.*', '56', NULL, 'N;'),
	('Orders.Statuses.*', '56', NULL, 'N;'),
	('Authenticated', '56', NULL, 'N;'),
	('Authenticated', '62', NULL, 'N;'),
	('Authenticated', '63', NULL, 'N;'),
	('Authenticated', '2', NULL, 'N;'),
	('Customers', '2', NULL, 'N;');
/*!40000 ALTER TABLE `AuthAssignment` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.AuthItem
CREATE TABLE IF NOT EXISTS `AuthItem` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.AuthItem: 19 rows
DELETE FROM `AuthItem`;
/*!40000 ALTER TABLE `AuthItem` DISABLE KEYS */;
INSERT INTO `AuthItem` (`name`, `type`, `description`, `bizrule`, `data`) VALUES
	('Admin', 2, NULL, NULL, 'N;'),
	('Authenticated', 2, NULL, NULL, 'N;'),
	('Guest', 2, NULL, NULL, 'N;'),
	('Orders.Orders.*', 1, NULL, NULL, 'N;'),
	('Orders.Statuses.*', 1, NULL, NULL, 'N;'),
	('Orders.Orders.Index', 0, NULL, NULL, 'N;'),
	('Orders.Orders.Create', 0, NULL, NULL, 'N;'),
	('Orders.Orders.Update', 0, NULL, NULL, 'N;'),
	('Orders.Orders.AddProductList', 0, NULL, NULL, 'N;'),
	('Orders.Orders.AddProduct', 0, NULL, NULL, 'N;'),
	('Orders.Orders.RenderOrderedProducts', 0, NULL, NULL, 'N;'),
	('Orders.Orders.JsonOrderedProducts', 0, NULL, NULL, 'N;'),
	('Orders.Orders.Delete', 0, NULL, NULL, 'N;'),
	('Orders.Orders.DeleteProduct', 0, NULL, NULL, 'N;'),
	('Orders.Statuses.Index', 0, NULL, NULL, 'N;'),
	('Orders.Statuses.Create', 0, NULL, NULL, 'N;'),
	('Orders.Statuses.Update', 0, NULL, NULL, 'N;'),
	('Orders.Statuses.Delete', 0, NULL, NULL, 'N;'),
	('Customers', 2, 'Продавцы сайта', NULL, 'N;');
/*!40000 ALTER TABLE `AuthItem` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.AuthItemChild
CREATE TABLE IF NOT EXISTS `AuthItemChild` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.AuthItemChild: 2 rows
DELETE FROM `AuthItemChild`;
/*!40000 ALTER TABLE `AuthItemChild` DISABLE KEYS */;
INSERT INTO `AuthItemChild` (`parent`, `child`) VALUES
	('Authenticated', 'Feedback.*'),
	('Guest', 'Feedback.*');
/*!40000 ALTER TABLE `AuthItemChild` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.Comments
CREATE TABLE IF NOT EXISTS `Comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `class_name` varchar(100) DEFAULT '',
  `object_pk` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `email` varchar(255) DEFAULT '',
  `name` varchar(50) DEFAULT '',
  `text` text,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `class_name_index` (`class_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.Comments: 0 rows
DELETE FROM `Comments`;
/*!40000 ALTER TABLE `Comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `Comments` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.Discount
CREATE TABLE IF NOT EXISTS `Discount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `active` tinyint(1) DEFAULT NULL,
  `sum` varchar(10) DEFAULT '',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `roles` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `active` (`active`),
  KEY `start_date` (`start_date`),
  KEY `end_date` (`end_date`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.Discount: 1 rows
DELETE FROM `Discount`;
/*!40000 ALTER TABLE `Discount` DISABLE KEYS */;
INSERT INTO `Discount` (`id`, `name`, `active`, `sum`, `start_date`, `end_date`, `roles`) VALUES
	(1, 'Скидка на всю технику Apple', 1, '5%', '2014-09-29 16:07:43', '2015-01-01 12:00:00', NULL);
/*!40000 ALTER TABLE `Discount` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.DiscountCategory
CREATE TABLE IF NOT EXISTS `DiscountCategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discount_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `discount_id` (`discount_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=317 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.DiscountCategory: 9 rows
DELETE FROM `DiscountCategory`;
/*!40000 ALTER TABLE `DiscountCategory` DISABLE KEYS */;
INSERT INTO `DiscountCategory` (`id`, `discount_id`, `category_id`) VALUES
	(308, 1, 1),
	(309, 1, 230),
	(310, 1, 231),
	(311, 1, 232),
	(312, 1, 233),
	(313, 1, 234),
	(314, 1, 235),
	(315, 1, 236),
	(316, 1, 237);
/*!40000 ALTER TABLE `DiscountCategory` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.DiscountManufacturer
CREATE TABLE IF NOT EXISTS `DiscountManufacturer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discount_id` int(11) DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `discount_id` (`discount_id`),
  KEY `manufacturer_id` (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.DiscountManufacturer: 1 rows
DELETE FROM `DiscountManufacturer`;
/*!40000 ALTER TABLE `DiscountManufacturer` DISABLE KEYS */;
INSERT INTO `DiscountManufacturer` (`id`, `discount_id`, `manufacturer_id`) VALUES
	(29, 1, 6);
/*!40000 ALTER TABLE `DiscountManufacturer` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.grid_view_filter
CREATE TABLE IF NOT EXISTS `grid_view_filter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `grid_id` varchar(100) DEFAULT '',
  `name` varchar(100) DEFAULT '',
  `data` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.grid_view_filter: 0 rows
DELETE FROM `grid_view_filter`;
/*!40000 ALTER TABLE `grid_view_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `grid_view_filter` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.notifications
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.notifications: ~0 rows (приблизительно)
DELETE FROM `notifications`;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.Order
CREATE TABLE IF NOT EXISTS `Order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `secret_key` varchar(10) DEFAULT '',
  `delivery_id` int(11) DEFAULT NULL,
  `delivery_price` float(10,2) DEFAULT NULL,
  `total_price` float(10,2) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `paid` tinyint(1) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL COMMENT 'delivery address',
  `user_phone` varchar(30) DEFAULT NULL,
  `user_comment` varchar(500) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `admin_comment` text,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `secret_key` (`secret_key`),
  KEY `delivery_id` (`delivery_id`),
  KEY `status_id` (`status_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.Order: 0 rows
DELETE FROM `Order`;
/*!40000 ALTER TABLE `Order` DISABLE KEYS */;
/*!40000 ALTER TABLE `Order` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.OrderHistory
CREATE TABLE IF NOT EXISTS `OrderHistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `handler` varchar(255) DEFAULT NULL,
  `data_before` text,
  `data_after` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_index` (`order_id`),
  KEY `created_index` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.OrderHistory: ~0 rows (приблизительно)
DELETE FROM `OrderHistory`;
/*!40000 ALTER TABLE `OrderHistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrderHistory` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.OrderProduct
CREATE TABLE IF NOT EXISTS `OrderProduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `configurable_id` int(11) DEFAULT NULL,
  `name` text,
  `configurable_name` text COMMENT 'Store name of configurable product',
  `configurable_data` text,
  `variants` text,
  `quantity` smallint(6) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `configurable_id` (`configurable_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.OrderProduct: 0 rows
DELETE FROM `OrderProduct`;
/*!40000 ALTER TABLE `OrderProduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrderProduct` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.OrderStatus
CREATE TABLE IF NOT EXISTS `OrderStatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.OrderStatus: 2 rows
DELETE FROM `OrderStatus`;
/*!40000 ALTER TABLE `OrderStatus` DISABLE KEYS */;
INSERT INTO `OrderStatus` (`id`, `name`, `position`) VALUES
	(1, 'Новый', 0),
	(5, 'Доставлен', 1);
/*!40000 ALTER TABLE `OrderStatus` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.Page
CREATE TABLE IF NOT EXISTS `Page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT '',
  `preview_img` varchar(100) DEFAULT NULL,
  `detail_img` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT '',
  `layout` varchar(2555) DEFAULT '',
  `view` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `category_id` (`category_id`),
  KEY `url` (`url`),
  KEY `created` (`created`),
  KEY `updated` (`updated`),
  KEY `publish_date` (`publish_date`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.Page: 14 rows
DELETE FROM `Page`;
/*!40000 ALTER TABLE `Page` DISABLE KEYS */;
INSERT INTO `Page` (`id`, `user_id`, `category_id`, `url`, `preview_img`, `detail_img`, `created`, `updated`, `publish_date`, `status`, `layout`, `view`) VALUES
	(8, 1, NULL, 'about', NULL, NULL, '2012-06-10 22:35:51', '2014-10-13 14:35:40', '2012-06-10 22:35:29', 'published', '', ''),
	(9, 1, NULL, 'how-to-create-order', NULL, NULL, '2012-06-10 22:36:50', '2012-07-07 11:45:53', '2012-06-10 22:36:27', 'published', '', ''),
	(10, 1, NULL, 'garantiya', NULL, NULL, '2012-06-10 22:37:06', '2012-07-07 11:45:38', '2012-06-10 22:36:50', 'published', '', ''),
	(11, 1, NULL, 'dostavka-i-oplata', NULL, NULL, '2012-06-10 22:37:18', '2012-07-07 11:41:49', '2012-06-10 22:37:07', 'published', '', ''),
	(12, 1, 7, 'samsung-pitaetsya-izbezhat-zapreta-na-galaxy-nexus-v-shtatah-pri-pomoshi-patcha', '12_583454058.png', NULL, '2012-07-07 12:08:50', '2014-10-09 10:18:48', '2012-07-07 12:06:19', 'published', '', ''),
	(13, 1, 7, 'za-85-mesyacev-android-40-popal-na-11-ustroistv', '13_-1018110082.png', NULL, '2012-07-07 12:19:44', '2014-10-09 10:18:33', '2012-07-07 12:14:48', 'published', '', ''),
	(14, 1, 7, 'google-prezentoval-svoi-ochki-dopolnennoi-realnosti', '14_11535227.png', NULL, '2012-07-07 12:26:11', '2014-10-09 10:18:05', '2012-07-07 12:25:48', 'published', '', ''),
	(15, 1, NULL, 'services', NULL, NULL, '2014-10-02 12:00:55', '2014-10-10 16:40:04', '2014-10-02 11:59:51', 'published', '', ''),
	(16, 1, NULL, 'vakansii', '16_874324842.png', 'fdsafsdafsda', '2014-10-02 12:02:30', '2014-10-10 16:40:47', '2014-10-02 12:02:13', 'published', '', ''),
	(17, 1, NULL, 'argon', NULL, NULL, '2014-10-10 16:42:20', '2014-10-10 16:42:20', '2014-10-10 16:41:25', 'published', '', ''),
	(18, 1, 13, 'audi', '_-349617104.jpg', NULL, '2014-10-13 14:27:58', '2014-10-13 14:27:58', '2014-10-13 14:21:43', 'published', '', ''),
	(19, 1, 13, 'nissan', '_2037053855.jpg', NULL, '2014-10-13 14:28:57', '2014-10-13 14:28:57', '2014-10-13 14:28:26', 'published', '', ''),
	(20, 1, 13, 'volvo', '_-1718893032.jpg', NULL, '2014-10-13 14:29:59', '2014-10-13 14:29:59', '2014-10-13 14:29:11', 'published', '', ''),
	(21, 1, NULL, 'contacts', NULL, NULL, '2014-10-13 14:41:27', '2014-10-13 14:52:43', '2014-10-13 14:40:57', 'published', '', '');
/*!40000 ALTER TABLE `Page` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.PageCategory
CREATE TABLE IF NOT EXISTS `PageCategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT '',
  `full_url` text,
  `layout` varchar(255) DEFAULT '',
  `view` varchar(255) DEFAULT '',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `page_size` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `url` (`url`),
  KEY `created` (`created`),
  KEY `updated` (`updated`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.PageCategory: 4 rows
DELETE FROM `PageCategory`;
/*!40000 ALTER TABLE `PageCategory` DISABLE KEYS */;
INSERT INTO `PageCategory` (`id`, `parent_id`, `url`, `full_url`, `layout`, `view`, `created`, `updated`, `page_size`) VALUES
	(7, NULL, 'news', 'news', '', '', '2012-07-07 12:06:03', '2013-04-29 23:24:05', NULL),
	(10, NULL, 'tesstovya2', 'tesstovya2', '', '', '2013-05-21 23:59:34', '2013-05-21 23:59:34', NULL),
	(12, 7, 'tesstovya2', 'news/tesstovya2', '', '', '2013-05-22 00:07:01', '2013-05-22 00:07:01', NULL),
	(13, NULL, 'machine-parsing', 'machine-parsing', '', '', '2014-10-08 15:24:55', '2014-10-08 15:24:55', NULL);
/*!40000 ALTER TABLE `PageCategory` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.PageCategoryTranslate
CREATE TABLE IF NOT EXISTS `PageCategoryTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.PageCategoryTranslate: 11 rows
DELETE FROM `PageCategoryTranslate`;
/*!40000 ALTER TABLE `PageCategoryTranslate` DISABLE KEYS */;
INSERT INTO `PageCategoryTranslate` (`id`, `object_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keywords`) VALUES
	(13, 7, 1, 'Новости', '', '', '', ''),
	(14, 7, 9, 'Новости', '', '', '', ''),
	(15, 11, 1, 'sdfsdf', '', '', '', ''),
	(16, 11, 9, 'sdfsdf', '', '', '', ''),
	(17, 12, 1, 'Тесстовя2', '', '', '', ''),
	(18, 12, 9, 'Тесстовя2', '', '', '', ''),
	(19, 7, 10, 'Новости', '', '', '', ''),
	(20, 12, 10, 'Тесстовя2', '', '', '', ''),
	(21, 13, 1, 'Машины в разборе', 'Машины в разборе', '', '', ''),
	(22, 13, 9, 'Машины в разборе', 'Машины в разборе', '', '', ''),
	(23, 13, 10, 'Машины в разборе', 'Машины в разборе', '', '', '');
/*!40000 ALTER TABLE `PageCategoryTranslate` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.PageTranslate
CREATE TABLE IF NOT EXISTS `PageTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT '',
  `short_description` text,
  `full_description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.PageTranslate: 42 rows
DELETE FROM `PageTranslate`;
/*!40000 ALTER TABLE `PageTranslate` DISABLE KEYS */;
INSERT INTO `PageTranslate` (`id`, `object_id`, `language_id`, `title`, `short_description`, `full_description`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
	(22, 11, 9, 'Доставка и оплата', '', '', '', '', ''),
	(15, 8, 1, 'О компании', 'Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации "Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст.." Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам "lorem ipsum" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).', 'Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации "Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст.." Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам "lorem ipsum" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).', '', '', ''),
	(16, 8, 9, 'Помощь', '', '', '', '', ''),
	(17, 9, 1, 'Как сделать заказ', '<p>Есть много вариантов Lorem Ipsum, но большинство из них имеет не всегда приемлемые модификации, например, юмористические вставки или слова, которые даже отдалённо не напоминают латынь. Если вам нужен Lorem Ipsum для серьёзного проекта, вы наверняка не хотите какой-нибудь шутки, скрытой в середине абзаца. Также все другие известные генераторы Lorem Ipsum используют один и тот же текст, который они просто повторяют, пока не достигнут нужный объём. Это делает предлагаемый здесь генератор единственным настоящим Lorem Ipsum генератором. Он использует словарь из более чем 200 латинских слов, а также набор моделей предложений. В результате сгенерированный Lorem Ipsum выглядит правдоподобно, не имеет повторяющихся абзацей или "невозможных" слов.</p>', '', '', '', ''),
	(18, 9, 9, 'Как сделать заказ', '', '', '', '', ''),
	(19, 10, 1, 'Гарантия', '<p>Многие думают, что Lorem Ipsum - взятый с потолка псевдо-латинский набор слов, но это не совсем так. Его корни уходят в один фрагмент классической латыни 45 года н.э., то есть более двух тысячелетий назад. Ричард МакКлинток, профессор латыни из колледжа Hampden-Sydney, штат Вирджиния, взял одно из самых странных слов в Lorem Ipsum, "consectetur", и занялся его поисками в классической латинской литературе.</p>\r\n<p>В результате он нашёл неоспоримый первоисточник Lorem Ipsum в разделах 1.10.32 и 1.10.33 книги "de Finibus Bonorum et Malorum" ("О пределах добра и зла"), написанной Цицероном в 45 году н.э. Этот трактат по теории этики был очень популярен в эпоху Возрождения. Первая строка Lorem Ipsum, "Lorem ipsum dolor sit amet..", происходит от одной из строк в разделе 1.10.32 Классический текст Lorem Ipsum, используемый с XVI века, приведён ниже. Также даны разделы 1.10.32 и 1.10.33 "de Finibus Bonorum et Malorum" Цицерона и их английский перевод, сделанный H. Rackham, 1914 год.</p>', '', '', '', ''),
	(20, 10, 9, 'Гарантия', '', '', '', '', ''),
	(21, 11, 1, 'Доставка и оплата', '<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации "Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст.." Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам "lorem ipsum" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).</p>', '', '', '', ''),
	(23, 12, 1, 'Samsung пытается избежать запрета на Galaxy Nexus', 'Текущую ситуацию с судебным противостоянием Apple и Samsung в Штатах (ссылка по теме) можно описать строчкой их двух слов: всё плохо. ', 'В смысле всё плохо для Samsung — южнокорейская корпорация так и не сумела отбиться от назначенного судом предварительного запрета на американские продажи планшетников Galaxy Tab 10.1 и, главное, новейших смартфонов Galaxy Nexus. Расклад намечается хуже некуда: по некоторым выкладкам, потенциальный ущерб от подобного запрета может достигнуть 180 млн. долларов, две трети из которых придутся на непроданные Galaxy Nexus.', '', '', ''),
	(25, 13, 1, 'За 8,5 месяцев Android 4.0 попал на 11% устройств', 'В свое время платформа Android 2.x распространялась активнее, чем Android 4.0 Ice Cream Sandwich, а ведь уже появилась новая мобильная ОС от Google — Android 4.1 Jelly Bean. За 8,5 месяцев своего существования Android ICS попал на 10,9% устройств, а лидировать на рынке продолжает Android 2,3 Gingerbread.', '', '', '', ''),
	(24, 12, 9, 'Samsung пытается избежать запрета на Galaxy Nexus в Штатах при помощи патча', 'Текущую ситуацию с судебным противостоянием Apple и Samsung в Штатах (ссылка по теме) можно описать строчкой их двух слов: всё плохо. В смысле всё плохо для Samsung — южнокорейская корпорация так и не сумела отбиться от назначенного судом предварительного запрета на американские продажи планшетников Galaxy Tab 10.1 и, главное, новейших смартфонов Galaxy Nexus. Расклад намечается хуже некуда: по некоторым выкладкам, потенциальный ущерб от подобного запрета может достигнуть 180 млн. долларов, две трети из которых придутся на непроданные Galaxy Nexus.', '', '', '', ''),
	(26, 13, 9, 'За 8,5 месяцев Android 4.0 попал на 11% устройств', 'В свое время платформа Android 2.x распространялась активнее, чем Android 4.0 Ice Cream Sandwich, а ведь уже появилась новая мобильная ОС от Google — Android 4.1 Jelly Bean. За 8,5 месяцев своего существования Android ICS попал на 10,9% устройств, а лидировать на рынке продолжает Android 2,3 Gingerbread.', '', '', '', ''),
	(27, 14, 1, 'Google презентовал свои очки дополненной реальности‎', 'Компания Google приступит к продаже очков дополненной реальности, который разрабатываются в рамках проекта Google Project Glass, пишет блог All Things Digital. ', 'Очки будут стоить 1,5 тысячи долларов, и поставки стартуют в начале 2013 года. Устройство, однако, будет предназначено только для разработчиков. Оформить предварительный заказ на него смогут исключительно посетители конференции I/O, открывшейся 27 июня в Сан-Франциско. ', '', '', ''),
	(28, 14, 9, 'Google презентовал свои очки дополненной реальности‎', 'Компания Google приступит к продаже очков дополненной реальности, который разрабатываются в рамках проекта Google Project Glass, пишет блог All Things Digital. ', 'Очки будут стоить 1,5 тысячи долларов, и поставки стартуют в начале 2013 года. Устройство, однако, будет предназначено только для разработчиков. Оформить предварительный заказ на него смогут исключительно посетители конференции I/O, открывшейся 27 июня в Сан-Франциско. ', '', '', ''),
	(29, 14, 10, 'Google презентовал свои очки дополненной реальности‎', 'Компания Google приступит к продаже очков дополненной реальности, который разрабатываются в рамках проекта Google Project Glass, пишет блог All Things Digital. ', 'Очки будут стоить 1,5 тысячи долларов, и поставки стартуют в начале 2013 года. Устройство, однако, будет предназначено только для разработчиков. Оформить предварительный заказ на него смогут исключительно посетители конференции I/O, открывшейся 27 июня в Сан-Франциско. ', '', '', ''),
	(30, 13, 10, 'За 8,5 месяцев Android 4.0 попал на 11% устройств', 'В свое время платформа Android 2.x распространялась активнее, чем Android 4.0 Ice Cream Sandwich, а ведь уже появилась новая мобильная ОС от Google — Android 4.1 Jelly Bean. За 8,5 месяцев своего существования Android ICS попал на 10,9% устройств, а лидировать на рынке продолжает Android 2,3 Gingerbread.', '', '', '', ''),
	(31, 12, 10, 'Samsung пытается избежать запрета на Galaxy Nexus', 'Текущую ситуацию с судебным противостоянием Apple и Samsung в Штатах (ссылка по теме) можно описать строчкой их двух слов: всё плохо. ', 'В смысле всё плохо для Samsung — южнокорейская корпорация так и не сумела отбиться от назначенного судом предварительного запрета на американские продажи планшетников Galaxy Tab 10.1 и, главное, новейших смартфонов Galaxy Nexus. Расклад намечается хуже некуда: по некоторым выкладкам, потенциальный ущерб от подобного запрета может достигнуть 180 млн. долларов, две трети из которых придутся на непроданные Galaxy Nexus.', '', '', ''),
	(32, 11, 10, 'Доставка и оплата', '<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации "Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст.." Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам "lorem ipsum" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).</p>', '', '', '', ''),
	(33, 10, 10, 'Гарантия', '<p>Многие думают, что Lorem Ipsum - взятый с потолка псевдо-латинский набор слов, но это не совсем так. Его корни уходят в один фрагмент классической латыни 45 года н.э., то есть более двух тысячелетий назад. Ричард МакКлинток, профессор латыни из колледжа Hampden-Sydney, штат Вирджиния, взял одно из самых странных слов в Lorem Ipsum, "consectetur", и занялся его поисками в классической латинской литературе.</p>\r\n<p>В результате он нашёл неоспоримый первоисточник Lorem Ipsum в разделах 1.10.32 и 1.10.33 книги "de Finibus Bonorum et Malorum" ("О пределах добра и зла"), написанной Цицероном в 45 году н.э. Этот трактат по теории этики был очень популярен в эпоху Возрождения. Первая строка Lorem Ipsum, "Lorem ipsum dolor sit amet..", происходит от одной из строк в разделе 1.10.32 Классический текст Lorem Ipsum, используемый с XVI века, приведён ниже. Также даны разделы 1.10.32 и 1.10.33 "de Finibus Bonorum et Malorum" Цицерона и их английский перевод, сделанный H. Rackham, 1914 год.</p>', '', '', '', ''),
	(34, 9, 10, 'Как сделать заказ', '<p>Есть много вариантов Lorem Ipsum, но большинство из них имеет не всегда приемлемые модификации, например, юмористические вставки или слова, которые даже отдалённо не напоминают латынь. Если вам нужен Lorem Ipsum для серьёзного проекта, вы наверняка не хотите какой-нибудь шутки, скрытой в середине абзаца. Также все другие известные генераторы Lorem Ipsum используют один и тот же текст, который они просто повторяют, пока не достигнут нужный объём. Это делает предлагаемый здесь генератор единственным настоящим Lorem Ipsum генератором. Он использует словарь из более чем 200 латинских слов, а также набор моделей предложений. В результате сгенерированный Lorem Ipsum выглядит правдоподобно, не имеет повторяющихся абзацей или "невозможных" слов.</p>', '', '', '', ''),
	(35, 8, 10, 'Помощь', 'Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации "Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст.." Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам "lorem ipsum" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).', '', '', '', ''),
	(36, 15, 1, 'Все услуги', 'Все услуги', 'Мы занимаемся автомобилями уже более 10 лет. За это время наша компания накопила огромный опыт в сфере авторазбора. В нашем каталоге вы найдете более чем 45 000 запчастей и большое количество битых автомобилей. Каждый день мы разбираем новые автомобили, чтобы вы могли найти практически любую деталь.  <div><br></div><div> <div><span style="color:#296894;font-family:Arial;font-size:18px;text-decoration:underline;background-color:#fafafa"> <div>Продажа автомобилей</div><div> <div>Продажа автозапчастей</div><div> <div>Срочный выкуп автомобилей</div> <div>Аргон-сварка</div><div> <div>Автоэвакуатор, манипулятор, автовоз</div><div> <div>Диагностика автомобиля</div></div><div> <div>Спецтехника</div><div> <div>Автоперевозки</div><br></div><br></div><br></div><br></div><br></div><br></span></div><div><span style="color:#296894;font-family:Arial;font-size:18px;text-decoration:underline;background-color:#fafafa"><br></span></div><br></div>', '', '', ''),
	(37, 15, 9, 'Все услуги', 'Все услуги', 'Все услуги', '', '', ''),
	(38, 15, 10, 'Все услуги', 'Все услуги', 'Все услуги', '', '', ''),
	(39, 16, 1, 'Вакансии', 'Вакансии', '<h2><strong>Здравствуйте! В нашей фирме появились новые вакансии:</strong></h2><h3><strong>1. Газоэлектросварщик + аргонщик ( с опытом работы )</strong></h3><h3><strong>2. Кладовщики&nbsp;</strong></h3><h3><strong>3</strong>.&nbsp;&nbsp;<strong>Офис менеджер ( Оператор 1С )</strong></h3><h3><strong>4.&nbsp; Менеджер по продаже запчастей</strong></h3><h3><strong>5. &nbsp;Электромонтажник&nbsp;</strong></h3><h3><strong>6. &nbsp;Тракторист-Машинист</strong></h3><address>телефон для связи&nbsp;<strong>8-922-136-06-11 Алексей, 8-9222-922-923 Сергей</strong></address>', '', '', ''),
	(40, 16, 9, 'Вакансии', 'Вакансии', 'Вакансии', '', '', ''),
	(41, 16, 10, 'Вакансии', 'Вакансии', 'Вакансии', '', '', ''),
	(42, 17, 1, 'Аргон сварка', '', '<p>Аргонная сварка используется при ремонте алюминиевых деталей и нержавеющих элементов. Для сварки наши специалисты используют оборудование марки ArgonMan. Это высокотехнологичное оборудование позволяет выполнить высокотехнологичную аргонную сварку любой сложности и масштабности. Сварка в аргоновой среде подходит для: чугуна, нержавеющей стали, алюминия, латуни и тп.</p><p>С помощью сварки аргоном устраняются дефекты:</p><ul><li>автокондиционеров</li><li>поддонов</li><li>элементов АКПП и МКПП</li><li>картеров</li><li>кронштейнов</li><li>радиаторов и трубок</li><li>крыльев</li><li>капотов и пр.</li></ul><h2>Стоимость сварки аргоном</h2><p>От 300 рублей в зависимости от сложности работ. Точную стоимость вы можете запросить по телефону&nbsp;<strong>201-201-9</strong>.</p><h2>Сварка дисков аргоном</h2><p>Мы осуществляем сварку кованных и литых дисков аргоном.</p>', '', '', ''),
	(43, 17, 9, 'Аргон сварка', '', '<p>Аргонная сварка используется при ремонте алюминиевых деталей и нержавеющих элементов. Для сварки наши специалисты используют оборудование марки ArgonMan. Это высокотехнологичное оборудование позволяет выполнить высокотехнологичную аргонную сварку любой сложности и масштабности. Сварка в аргоновой среде подходит для: чугуна, нержавеющей стали, алюминия, латуни и тп.</p><p>С помощью сварки аргоном устраняются дефекты:</p><ul><li>автокондиционеров</li><li>поддонов</li><li>элементов АКПП и МКПП</li><li>картеров</li><li>кронштейнов</li><li>радиаторов и трубок</li><li>крыльев</li><li>капотов и пр.</li></ul><h2>Стоимость сварки аргоном</h2><p>От 300 рублей в зависимости от сложности работ. Точную стоимость вы можете запросить по телефону&nbsp;<strong>201-201-9</strong>.</p><h2>Сварка дисков аргоном</h2><p>Мы осуществляем сварку кованных и литых дисков аргоном.</p>', '', '', ''),
	(44, 17, 10, 'Аргон сварка', '', '<p>Аргонная сварка используется при ремонте алюминиевых деталей и нержавеющих элементов. Для сварки наши специалисты используют оборудование марки ArgonMan. Это высокотехнологичное оборудование позволяет выполнить высокотехнологичную аргонную сварку любой сложности и масштабности. Сварка в аргоновой среде подходит для: чугуна, нержавеющей стали, алюминия, латуни и тп.</p><p>С помощью сварки аргоном устраняются дефекты:</p><ul><li>автокондиционеров</li><li>поддонов</li><li>элементов АКПП и МКПП</li><li>картеров</li><li>кронштейнов</li><li>радиаторов и трубок</li><li>крыльев</li><li>капотов и пр.</li></ul><h2>Стоимость сварки аргоном</h2><p>От 300 рублей в зависимости от сложности работ. Точную стоимость вы можете запросить по телефону&nbsp;<strong>201-201-9</strong>.</p><h2>Сварка дисков аргоном</h2><p>Мы осуществляем сварку кованных и литых дисков аргоном.</p>', '', '', ''),
	(45, 18, 1, 'Ауди', 'Компания Ниссан поделилась ценами на  комплектации седана С-класса Sentra (Сентра)2014. Новинка будет предлагаться в четырех  версиях: Welcome, Comfort, Elegance и Tekna. Базовая версия Welcome   оценивается  в 679000 рублей. В оснащение входит фронтальные подушки безопасности, EPS, кондиционер, бортовой компьютер,  4 электростеклоподъемника, зеркала с электроприводом и обогревом, , 16-дюймовые штампованные колеса с колпаками и многое чего другое.  ,', 'Компания Ниссан поделилась ценами на  комплектации седана С-класса Sentra (Сентра)2014. Новинка будет предлагаться в четырех  версиях: Welcome, Comfort, Elegance и Tekna. Базовая версия Welcome   оценивается  в 679000 рублей. В оснащение входит фронтальные подушки безопасности, EPS, кондиционер, бортовой компьютер,  4 электростеклоподъемника, зеркала с электроприводом и обогревом, , 16-дюймовые штампованные колеса с колпаками и многое чего другое.  ,', '', '', ''),
	(46, 18, 9, 'Ауди', 'Компания Ниссан поделилась ценами на  комплектации седана С-класса Sentra (Сентра)2014. Новинка будет предлагаться в четырех  версиях: Welcome, Comfort, Elegance и Tekna. Базовая версия Welcome   оценивается  в 679000 рублей. В оснащение входит фронтальные подушки безопасности, EPS, кондиционер, бортовой компьютер,  4 электростеклоподъемника, зеркала с электроприводом и обогревом, , 16-дюймовые штампованные колеса с колпаками и многое чего другое.  ,', 'Компания Ниссан поделилась ценами на  комплектации седана С-класса Sentra (Сентра)2014. Новинка будет предлагаться в четырех  версиях: Welcome, Comfort, Elegance и Tekna. Базовая версия Welcome   оценивается  в 679000 рублей. В оснащение входит фронтальные подушки безопасности, EPS, кондиционер, бортовой компьютер,  4 электростеклоподъемника, зеркала с электроприводом и обогревом, , 16-дюймовые штампованные колеса с колпаками и многое чего другое.  ,', '', '', ''),
	(47, 18, 10, 'Ауди', 'Компания Ниссан поделилась ценами на  комплектации седана С-класса Sentra (Сентра)2014. Новинка будет предлагаться в четырех  версиях: Welcome, Comfort, Elegance и Tekna. Базовая версия Welcome   оценивается  в 679000 рублей. В оснащение входит фронтальные подушки безопасности, EPS, кондиционер, бортовой компьютер,  4 электростеклоподъемника, зеркала с электроприводом и обогревом, , 16-дюймовые штампованные колеса с колпаками и многое чего другое.  ,', 'Компания Ниссан поделилась ценами на  комплектации седана С-класса Sentra (Сентра)2014. Новинка будет предлагаться в четырех  версиях: Welcome, Comfort, Elegance и Tekna. Базовая версия Welcome   оценивается  в 679000 рублей. В оснащение входит фронтальные подушки безопасности, EPS, кондиционер, бортовой компьютер,  4 электростеклоподъемника, зеркала с электроприводом и обогревом, , 16-дюймовые штампованные колеса с колпаками и многое чего другое.  ,', '', '', ''),
	(48, 19, 1, 'Ниссан', 'В вариации Comfort автомобиль будет стоить от 699 до 734 тысяч рублей и дополнительно получит аудиосистему CD/MP3 с 4 динамиками с цифровым входом AUX, USB и системой беспроводной связи Bluetooth.  Самая дорогая Tekna обойдется в 914 тыс.руб.\r\n\r\nПод капотом у Ниссан Сентра 2014   имеются на выбор  бензиновые двигатели объемом 1,6 литра и мощностью 117 лошадок, работающими с 5-ступенчатой механикой или вариатором X-tronic. Отметим,что производство  Сентры налажено на Ижевском автозаводе. Nissan Sentra разработана на платформе, которая является упрощенной версией шасси BO. На базе этой «тележки» создан целый ряд бюджетных моделей, предназначенных для продажи и выпуска в России. Речь идет о машинах Nissan Almera, Lada Largus, а также Renault Logan.', 'В вариации Comfort автомобиль будет стоить от 699 до 734 тысяч рублей и дополнительно получит аудиосистему CD/MP3 с 4 динамиками с цифровым входом AUX, USB и системой беспроводной связи Bluetooth.  Самая дорогая Tekna обойдется в 914 тыс.руб.\r\n\r\nПод капотом у Ниссан Сентра 2014   имеются на выбор  бензиновые двигатели объемом 1,6 литра и мощностью 117 лошадок, работающими с 5-ступенчатой механикой или вариатором X-tronic. Отметим,что производство  Сентры налажено на Ижевском автозаводе. Nissan Sentra разработана на платформе, которая является упрощенной версией шасси BO. На базе этой «тележки» создан целый ряд бюджетных моделей, предназначенных для продажи и выпуска в России. Речь идет о машинах Nissan Almera, Lada Largus, а также Renault Logan.', '', '', ''),
	(49, 19, 9, 'Ниссан', 'В вариации Comfort автомобиль будет стоить от 699 до 734 тысяч рублей и дополнительно получит аудиосистему CD/MP3 с 4 динамиками с цифровым входом AUX, USB и системой беспроводной связи Bluetooth.  Самая дорогая Tekna обойдется в 914 тыс.руб.\r\n\r\nПод капотом у Ниссан Сентра 2014   имеются на выбор  бензиновые двигатели объемом 1,6 литра и мощностью 117 лошадок, работающими с 5-ступенчатой механикой или вариатором X-tronic. Отметим,что производство  Сентры налажено на Ижевском автозаводе. Nissan Sentra разработана на платформе, которая является упрощенной версией шасси BO. На базе этой «тележки» создан целый ряд бюджетных моделей, предназначенных для продажи и выпуска в России. Речь идет о машинах Nissan Almera, Lada Largus, а также Renault Logan.', 'В вариации Comfort автомобиль будет стоить от 699 до 734 тысяч рублей и дополнительно получит аудиосистему CD/MP3 с 4 динамиками с цифровым входом AUX, USB и системой беспроводной связи Bluetooth.  Самая дорогая Tekna обойдется в 914 тыс.руб.\r\n\r\nПод капотом у Ниссан Сентра 2014   имеются на выбор  бензиновые двигатели объемом 1,6 литра и мощностью 117 лошадок, работающими с 5-ступенчатой механикой или вариатором X-tronic. Отметим,что производство  Сентры налажено на Ижевском автозаводе. Nissan Sentra разработана на платформе, которая является упрощенной версией шасси BO. На базе этой «тележки» создан целый ряд бюджетных моделей, предназначенных для продажи и выпуска в России. Речь идет о машинах Nissan Almera, Lada Largus, а также Renault Logan.', '', '', ''),
	(50, 19, 10, 'Ниссан', 'В вариации Comfort автомобиль будет стоить от 699 до 734 тысяч рублей и дополнительно получит аудиосистему CD/MP3 с 4 динамиками с цифровым входом AUX, USB и системой беспроводной связи Bluetooth.  Самая дорогая Tekna обойдется в 914 тыс.руб.\r\n\r\nПод капотом у Ниссан Сентра 2014   имеются на выбор  бензиновые двигатели объемом 1,6 литра и мощностью 117 лошадок, работающими с 5-ступенчатой механикой или вариатором X-tronic. Отметим,что производство  Сентры налажено на Ижевском автозаводе. Nissan Sentra разработана на платформе, которая является упрощенной версией шасси BO. На базе этой «тележки» создан целый ряд бюджетных моделей, предназначенных для продажи и выпуска в России. Речь идет о машинах Nissan Almera, Lada Largus, а также Renault Logan.', 'В вариации Comfort автомобиль будет стоить от 699 до 734 тысяч рублей и дополнительно получит аудиосистему CD/MP3 с 4 динамиками с цифровым входом AUX, USB и системой беспроводной связи Bluetooth.  Самая дорогая Tekna обойдется в 914 тыс.руб.\r\n\r\nПод капотом у Ниссан Сентра 2014   имеются на выбор  бензиновые двигатели объемом 1,6 литра и мощностью 117 лошадок, работающими с 5-ступенчатой механикой или вариатором X-tronic. Отметим,что производство  Сентры налажено на Ижевском автозаводе. Nissan Sentra разработана на платформе, которая является упрощенной версией шасси BO. На базе этой «тележки» создан целый ряд бюджетных моделей, предназначенных для продажи и выпуска в России. Речь идет о машинах Nissan Almera, Lada Largus, а также Renault Logan.', '', '', ''),
	(51, 20, 1, 'Volvo', 'Первой «ласточкой», возвестившей о ренессансе Volvo, стала прошлогодняя концептуальная «двухдверка» Concept Coupe (на фото) с новейшей модульной платформой SPA. Обновление модельной линейки скандинавы начали с кроссовера XC90, как приоритетного и потенциально прибыльного проекта, однако и от нишевых имиджевых машин они не отказываются. По словам Петера Мартенса, старшего вице-президента по исследованиям и разработкам, приоритетная задача сейчас – модернизировать гамму, а потом «предаваться утехам». В основу купе и кабрио, по-видимому, ляжет модульное шасси SPA, ставшее базисом «ксюхи» второго поколения, которое адаптируют также для S60 третьего поколения и нового паркетника XC60. «Переход с двухдверного автомобиля с посадочной формулой 2+2 на кроссовер XC90 уникален в автомобилестроении. Сомневаюсь, что еще какая-либо платформа обеспечивает схожую степень гибкости», – нахваливает разработку Мартенс.     \r\n\r\nВпрочем, поперед новых «шестидесяток», а также купе и кабриолета выйдет флагманский седан S90, пришедший на смену современной «восьмидесятке». Второй товарный носитель SPA Мертенс описывает, как «поразительно красивый» с новым фирменным лицом Volvo, которым наделен современный XC90.\r\n\r\nДизайн S90 одобрен и закончен, осталось разобраться с некоторыми техническими и механическими нюансами. S90 преподносится как глобальный продукт. Длиннобазную модификацию, предназначенную в первую очередь для китайского рынка, вероятно, предложат и в других странах.       ', 'Первой «ласточкой», возвестившей о ренессансе Volvo, стала прошлогодняя концептуальная «двухдверка» Concept Coupe (на фото) с новейшей модульной платформой SPA. Обновление модельной линейки скандинавы начали с кроссовера XC90, как приоритетного и потенциально прибыльного проекта, однако и от нишевых имиджевых машин они не отказываются. По словам Петера Мартенса, старшего вице-президента по исследованиям и разработкам, приоритетная задача сейчас – модернизировать гамму, а потом «предаваться утехам». В основу купе и кабрио, по-видимому, ляжет модульное шасси SPA, ставшее базисом «ксюхи» второго поколения, которое адаптируют также для S60 третьего поколения и нового паркетника XC60. «Переход с двухдверного автомобиля с посадочной формулой 2+2 на кроссовер XC90 уникален в автомобилестроении. Сомневаюсь, что еще какая-либо платформа обеспечивает схожую степень гибкости», – нахваливает разработку Мартенс.     \r\n\r\nВпрочем, поперед новых «шестидесяток», а также купе и кабриолета выйдет флагманский седан S90, пришедший на смену современной «восьмидесятке». Второй товарный носитель SPA Мертенс описывает, как «поразительно красивый» с новым фирменным лицом Volvo, которым наделен современный XC90.\r\n\r\nДизайн S90 одобрен и закончен, осталось разобраться с некоторыми техническими и механическими нюансами. S90 преподносится как глобальный продукт. Длиннобазную модификацию, предназначенную в первую очередь для китайского рынка, вероятно, предложат и в других странах.       ', '', '', ''),
	(52, 20, 9, 'Volvo', 'Первой «ласточкой», возвестившей о ренессансе Volvo, стала прошлогодняя концептуальная «двухдверка» Concept Coupe (на фото) с новейшей модульной платформой SPA. Обновление модельной линейки скандинавы начали с кроссовера XC90, как приоритетного и потенциально прибыльного проекта, однако и от нишевых имиджевых машин они не отказываются. По словам Петера Мартенса, старшего вице-президента по исследованиям и разработкам, приоритетная задача сейчас – модернизировать гамму, а потом «предаваться утехам». В основу купе и кабрио, по-видимому, ляжет модульное шасси SPA, ставшее базисом «ксюхи» второго поколения, которое адаптируют также для S60 третьего поколения и нового паркетника XC60. «Переход с двухдверного автомобиля с посадочной формулой 2+2 на кроссовер XC90 уникален в автомобилестроении. Сомневаюсь, что еще какая-либо платформа обеспечивает схожую степень гибкости», – нахваливает разработку Мартенс.     \r\n\r\nВпрочем, поперед новых «шестидесяток», а также купе и кабриолета выйдет флагманский седан S90, пришедший на смену современной «восьмидесятке». Второй товарный носитель SPA Мертенс описывает, как «поразительно красивый» с новым фирменным лицом Volvo, которым наделен современный XC90.\r\n\r\nДизайн S90 одобрен и закончен, осталось разобраться с некоторыми техническими и механическими нюансами. S90 преподносится как глобальный продукт. Длиннобазную модификацию, предназначенную в первую очередь для китайского рынка, вероятно, предложат и в других странах.       ', 'Первой «ласточкой», возвестившей о ренессансе Volvo, стала прошлогодняя концептуальная «двухдверка» Concept Coupe (на фото) с новейшей модульной платформой SPA. Обновление модельной линейки скандинавы начали с кроссовера XC90, как приоритетного и потенциально прибыльного проекта, однако и от нишевых имиджевых машин они не отказываются. По словам Петера Мартенса, старшего вице-президента по исследованиям и разработкам, приоритетная задача сейчас – модернизировать гамму, а потом «предаваться утехам». В основу купе и кабрио, по-видимому, ляжет модульное шасси SPA, ставшее базисом «ксюхи» второго поколения, которое адаптируют также для S60 третьего поколения и нового паркетника XC60. «Переход с двухдверного автомобиля с посадочной формулой 2+2 на кроссовер XC90 уникален в автомобилестроении. Сомневаюсь, что еще какая-либо платформа обеспечивает схожую степень гибкости», – нахваливает разработку Мартенс.     \r\n\r\nВпрочем, поперед новых «шестидесяток», а также купе и кабриолета выйдет флагманский седан S90, пришедший на смену современной «восьмидесятке». Второй товарный носитель SPA Мертенс описывает, как «поразительно красивый» с новым фирменным лицом Volvo, которым наделен современный XC90.\r\n\r\nДизайн S90 одобрен и закончен, осталось разобраться с некоторыми техническими и механическими нюансами. S90 преподносится как глобальный продукт. Длиннобазную модификацию, предназначенную в первую очередь для китайского рынка, вероятно, предложат и в других странах.       ', '', '', ''),
	(53, 20, 10, 'Volvo', 'Первой «ласточкой», возвестившей о ренессансе Volvo, стала прошлогодняя концептуальная «двухдверка» Concept Coupe (на фото) с новейшей модульной платформой SPA. Обновление модельной линейки скандинавы начали с кроссовера XC90, как приоритетного и потенциально прибыльного проекта, однако и от нишевых имиджевых машин они не отказываются. По словам Петера Мартенса, старшего вице-президента по исследованиям и разработкам, приоритетная задача сейчас – модернизировать гамму, а потом «предаваться утехам». В основу купе и кабрио, по-видимому, ляжет модульное шасси SPA, ставшее базисом «ксюхи» второго поколения, которое адаптируют также для S60 третьего поколения и нового паркетника XC60. «Переход с двухдверного автомобиля с посадочной формулой 2+2 на кроссовер XC90 уникален в автомобилестроении. Сомневаюсь, что еще какая-либо платформа обеспечивает схожую степень гибкости», – нахваливает разработку Мартенс.     \r\n\r\nВпрочем, поперед новых «шестидесяток», а также купе и кабриолета выйдет флагманский седан S90, пришедший на смену современной «восьмидесятке». Второй товарный носитель SPA Мертенс описывает, как «поразительно красивый» с новым фирменным лицом Volvo, которым наделен современный XC90.\r\n\r\nДизайн S90 одобрен и закончен, осталось разобраться с некоторыми техническими и механическими нюансами. S90 преподносится как глобальный продукт. Длиннобазную модификацию, предназначенную в первую очередь для китайского рынка, вероятно, предложат и в других странах.       ', 'Первой «ласточкой», возвестившей о ренессансе Volvo, стала прошлогодняя концептуальная «двухдверка» Concept Coupe (на фото) с новейшей модульной платформой SPA. Обновление модельной линейки скандинавы начали с кроссовера XC90, как приоритетного и потенциально прибыльного проекта, однако и от нишевых имиджевых машин они не отказываются. По словам Петера Мартенса, старшего вице-президента по исследованиям и разработкам, приоритетная задача сейчас – модернизировать гамму, а потом «предаваться утехам». В основу купе и кабрио, по-видимому, ляжет модульное шасси SPA, ставшее базисом «ксюхи» второго поколения, которое адаптируют также для S60 третьего поколения и нового паркетника XC60. «Переход с двухдверного автомобиля с посадочной формулой 2+2 на кроссовер XC90 уникален в автомобилестроении. Сомневаюсь, что еще какая-либо платформа обеспечивает схожую степень гибкости», – нахваливает разработку Мартенс.     \r\n\r\nВпрочем, поперед новых «шестидесяток», а также купе и кабриолета выйдет флагманский седан S90, пришедший на смену современной «восьмидесятке». Второй товарный носитель SPA Мертенс описывает, как «поразительно красивый» с новым фирменным лицом Volvo, которым наделен современный XC90.\r\n\r\nДизайн S90 одобрен и закончен, осталось разобраться с некоторыми техническими и механическими нюансами. S90 преподносится как глобальный продукт. Длиннобазную модификацию, предназначенную в первую очередь для китайского рынка, вероятно, предложат и в других странах.       ', '', '', ''),
	(54, 21, 1, 'Наши контакты', '<div class="row b_about-us b_about-us-inner">\r\n\r\n              <div class="col-xs-12">\r\n                <h4 class="bold">Наши контакты</h4>\r\n              </div>\r\n              <div class="col-xs-6">                \r\n                <img src="upload/map.png" alt="" class=\'img-responsive\'>                \r\n              </div>\r\n              <div class=\'col-xs-4 b_map-text\'>\r\n                <h4><strong>Адрес:</strong></h4>\r\n                <p>170007, Россия, город Примерный, ул. Примерная, дом 58</p>\r\n                <h4><strong>Телефоны:</strong></h4>\r\n                <p>\r\n                  +7 (123) 456-78-90 <br>  \r\n                  +7 (123) 456-78-90\r\n                </p>\r\n                <h4><strong>Почта:</strong></h4>\r\n                <p><a href="mailto:some@mail.ru">example@example.ru</a></p>\r\n                <h4><strong>Режим работы:</strong></h4>\r\n                <p>\r\n                  пн-пт: 9:00 — 19:00 ч <br>\r\n                  сб-вс: 9:00 — 17:00 ч\r\n                </p>\r\n\r\n              </div>\r\n              <div class="col-xs-2 text-right">\r\n                <a href="#" class="btn btn-block btn-yellow block-sm" data-toggle="modal" data-target="#order">Оформить <br> заявку</a>\r\n                <img src="images/icon-list.png">\r\n              </div>\r\n\r\n            </div>', '<div class="row b_about-us b_about-us-inner">\r\n              <div class="col-xs-6">                \r\n                <img src="/uploads/map.png" class="img-responsive">                \r\n              </div>\r\n              <div class="col-xs-4 b_map-text">\r\n                <h4><strong>Адрес:</strong></h4>\r\n                <p>170007, Россия, город Примерный, ул. Примерная, дом 58</p>\r\n                <h4><strong>Телефоны:</strong></h4>\r\n                <p>\r\n                  +7 (123) 456-78-90 <br>  \r\n                  +7 (123) 456-78-90\r\n                </p>\r\n                <h4><strong>Почта:</strong></h4>\r\n                <p><a href="mailto:some@mail.ru">example@example.ru</a></p>\r\n                <h4><strong>Режим работы:</strong></h4>\r\n                <p>\r\n                  пн-пт: 9:00 — 19:00 ч <br>\r\n                  сб-вс: 9:00 — 17:00 ч\r\n                </p>\r\n              </div>\r\n              <div class="col-xs-2 text-right">\r\n                <a href="javascript::void()" class="btn btn-block btn-yellow block-sm" toggle="modal" target="#order" onclick="$(\'#order\').modal(\'show\')">Оформить <br> заявку</a>\r\n                <img src="/uploads/icon-list.png">\r\n              </div>\r\n            </div>', '', '', ''),
	(55, 21, 9, 'Контакты', '<div class="row b_about-us b_about-us-inner">\r\n\r\n              <div class="col-xs-12">\r\n                <h4 class="bold">Наши контакты</h4>\r\n              </div>\r\n              <div class="col-xs-6">                \r\n                <img src="upload/map.png" alt="" class=\'img-responsive\'>                \r\n              </div>\r\n              <div class=\'col-xs-4 b_map-text\'>\r\n                <h4><strong>Адрес:</strong></h4>\r\n                <p>170007, Россия, город Примерный, ул. Примерная, дом 58</p>\r\n                <h4><strong>Телефоны:</strong></h4>\r\n                <p>\r\n                  +7 (123) 456-78-90 <br>  \r\n                  +7 (123) 456-78-90\r\n                </p>\r\n                <h4><strong>Почта:</strong></h4>\r\n                <p><a href="mailto:some@mail.ru">example@example.ru</a></p>\r\n                <h4><strong>Режим работы:</strong></h4>\r\n                <p>\r\n                  пн-пт: 9:00 — 19:00 ч <br>\r\n                  сб-вс: 9:00 — 17:00 ч\r\n                </p>\r\n\r\n              </div>\r\n              <div class="col-xs-2 text-right">\r\n                <a href="#" class="btn btn-block btn-yellow block-sm" data-toggle="modal" data-target="#order">Оформить <br> заявку</a>\r\n                <img src="images/icon-list.png">\r\n              </div>\r\n\r\n            </div>', '<div class="row b_about-us b_about-us-inner">\r\n\r\n              <div class="col-xs-12">\r\n                <h4 class="bold">Наши контакты</h4>\r\n              </div>\r\n              <div class="col-xs-6">                \r\n                <img src="upload/map.png" alt="" class=\'img-responsive\'>                \r\n              </div>\r\n              <div class=\'col-xs-4 b_map-text\'>\r\n                <h4><strong>Адрес:</strong></h4>\r\n                <p>170007, Россия, город Примерный, ул. Примерная, дом 58</p>\r\n                <h4><strong>Телефоны:</strong></h4>\r\n                <p>\r\n                  +7 (123) 456-78-90 <br>  \r\n                  +7 (123) 456-78-90\r\n                </p>\r\n                <h4><strong>Почта:</strong></h4>\r\n                <p><a href="mailto:some@mail.ru">example@example.ru</a></p>\r\n                <h4><strong>Режим работы:</strong></h4>\r\n                <p>\r\n                  пн-пт: 9:00 — 19:00 ч <br>\r\n                  сб-вс: 9:00 — 17:00 ч\r\n                </p>\r\n\r\n              </div>\r\n              <div class="col-xs-2 text-right">\r\n                <a href="#" class="btn btn-block btn-yellow block-sm" data-toggle="modal" data-target="#order">Оформить <br> заявку</a>\r\n                <img src="images/icon-list.png">\r\n              </div>\r\n\r\n            </div>', '', '', ''),
	(56, 21, 10, 'Контакты', '<div class="row b_about-us b_about-us-inner">\r\n\r\n              <div class="col-xs-12">\r\n                <h4 class="bold">Наши контакты</h4>\r\n              </div>\r\n              <div class="col-xs-6">                \r\n                <img src="upload/map.png" alt="" class=\'img-responsive\'>                \r\n              </div>\r\n              <div class=\'col-xs-4 b_map-text\'>\r\n                <h4><strong>Адрес:</strong></h4>\r\n                <p>170007, Россия, город Примерный, ул. Примерная, дом 58</p>\r\n                <h4><strong>Телефоны:</strong></h4>\r\n                <p>\r\n                  +7 (123) 456-78-90 <br>  \r\n                  +7 (123) 456-78-90\r\n                </p>\r\n                <h4><strong>Почта:</strong></h4>\r\n                <p><a href="mailto:some@mail.ru">example@example.ru</a></p>\r\n                <h4><strong>Режим работы:</strong></h4>\r\n                <p>\r\n                  пн-пт: 9:00 — 19:00 ч <br>\r\n                  сб-вс: 9:00 — 17:00 ч\r\n                </p>\r\n\r\n              </div>\r\n              <div class="col-xs-2 text-right">\r\n                <a href="#" class="btn btn-block btn-yellow block-sm" data-toggle="modal" data-target="#order">Оформить <br> заявку</a>\r\n                <img src="images/icon-list.png">\r\n              </div>\r\n\r\n            </div>', '<div class="row b_about-us b_about-us-inner">\r\n\r\n              <div class="col-xs-12">\r\n                <h4 class="bold">Наши контакты</h4>\r\n              </div>\r\n              <div class="col-xs-6">                \r\n                <img src="upload/map.png" alt="" class=\'img-responsive\'>                \r\n              </div>\r\n              <div class=\'col-xs-4 b_map-text\'>\r\n                <h4><strong>Адрес:</strong></h4>\r\n                <p>170007, Россия, город Примерный, ул. Примерная, дом 58</p>\r\n                <h4><strong>Телефоны:</strong></h4>\r\n                <p>\r\n                  +7 (123) 456-78-90 <br>  \r\n                  +7 (123) 456-78-90\r\n                </p>\r\n                <h4><strong>Почта:</strong></h4>\r\n                <p><a href="mailto:some@mail.ru">example@example.ru</a></p>\r\n                <h4><strong>Режим работы:</strong></h4>\r\n                <p>\r\n                  пн-пт: 9:00 — 19:00 ч <br>\r\n                  сб-вс: 9:00 — 17:00 ч\r\n                </p>\r\n\r\n              </div>\r\n              <div class="col-xs-2 text-right">\r\n                <a href="#" class="btn btn-block btn-yellow block-sm" data-toggle="modal" data-target="#order">Оформить <br> заявку</a>\r\n                <img src="images/icon-list.png">\r\n              </div>\r\n\r\n            </div>', '', '', '');
/*!40000 ALTER TABLE `PageTranslate` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.Rights
CREATE TABLE IF NOT EXISTS `Rights` (
  `itemname` varchar(64) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.Rights: 0 rows
DELETE FROM `Rights`;
/*!40000 ALTER TABLE `Rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `Rights` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StoreAttribute
CREATE TABLE IF NOT EXISTS `StoreAttribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `type` tinyint(4) DEFAULT NULL,
  `display_on_front` tinyint(1) DEFAULT '1',
  `use_in_filter` tinyint(1) DEFAULT NULL,
  `use_in_variants` tinyint(1) DEFAULT NULL,
  `use_in_compare` tinyint(1) DEFAULT '0',
  `select_many` tinyint(1) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `required` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `use_in_filter` (`use_in_filter`),
  KEY `display_on_front` (`display_on_front`),
  KEY `position` (`position`),
  KEY `use_in_variants` (`use_in_variants`),
  KEY `use_in_compare` (`use_in_compare`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreAttribute: 26 rows
DELETE FROM `StoreAttribute`;
/*!40000 ALTER TABLE `StoreAttribute` DISABLE KEYS */;
INSERT INTO `StoreAttribute` (`id`, `name`, `type`, `display_on_front`, `use_in_filter`, `use_in_variants`, `use_in_compare`, `select_many`, `position`, `required`) VALUES
	(1, 'processor_manufacturer', 3, 1, 1, NULL, 1, NULL, 0, NULL),
	(2, 'freq', 3, 1, NULL, NULL, 1, NULL, 0, NULL),
	(3, 'memmory', 3, 1, NULL, NULL, 1, NULL, 0, NULL),
	(4, 'memmory_type', 3, 1, NULL, NULL, 1, NULL, 0, NULL),
	(5, 'screen', 3, 1, 1, NULL, 1, NULL, 0, NULL),
	(6, 'screen_dimension', 3, 1, NULL, NULL, 1, NULL, 0, NULL),
	(7, 'rms_power', 3, 1, NULL, NULL, 1, NULL, 0, NULL),
	(8, 'corpus_material', 3, 1, 1, NULL, 1, NULL, 0, NULL),
	(9, 'sound_type', 3, 1, 1, NULL, 1, NULL, 0, NULL),
	(10, 'monitor_diagonal', 3, 1, 1, NULL, 1, NULL, 0, NULL),
	(11, 'monitor_dimension', 3, 1, NULL, NULL, 1, NULL, 0, NULL),
	(12, 'view_angle', 3, 1, NULL, NULL, 1, NULL, 0, NULL),
	(13, 'phone_platform', 3, 1, 1, NULL, 1, NULL, 0, NULL),
	(14, 'phone_weight', 3, 1, NULL, NULL, 1, NULL, 0, NULL),
	(15, 'phone_display', 3, 1, NULL, NULL, 1, NULL, 0, NULL),
	(16, 'phone_camera', 3, 1, NULL, NULL, 1, NULL, 0, NULL),
	(17, 'tablet_screen_size', 3, 1, NULL, NULL, 1, NULL, 0, NULL),
	(18, 'memmory_size', 3, 1, NULL, NULL, 1, NULL, 0, NULL),
	(19, 'weight', 3, 1, NULL, NULL, 1, NULL, 0, NULL),
	(20, 'mark', 3, 1, 1, 1, 1, 0, 0, 1),
	(21, 'year_create', 8, 1, 1, 1, 1, 0, 0, 0),
	(22, 'type_cuzov', 3, 1, 1, 1, 1, 0, 0, 0),
	(23, 'kpp_type', 3, 1, 1, 1, 1, 0, 0, 1),
	(24, 'state', 3, 1, 1, 1, 1, 0, 0, 1),
	(25, 'odometer', 8, 1, 1, 1, 1, 0, 0, 1),
	(26, 'uroven_sostoyaniya', 8, 0, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `StoreAttribute` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StoreAttributeOption
CREATE TABLE IF NOT EXISTS `StoreAttributeOption` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_id` int(11) DEFAULT NULL,
  `position` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_id` (`attribute_id`),
  KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=181 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreAttributeOption: 95 rows
DELETE FROM `StoreAttributeOption`;
/*!40000 ALTER TABLE `StoreAttributeOption` DISABLE KEYS */;
INSERT INTO `StoreAttributeOption` (`id`, `attribute_id`, `position`) VALUES
	(86, 1, NULL),
	(87, 2, NULL),
	(88, 3, NULL),
	(89, 4, NULL),
	(90, 5, NULL),
	(91, 6, NULL),
	(92, 1, NULL),
	(93, 2, NULL),
	(94, 2, NULL),
	(95, 2, NULL),
	(96, 1, NULL),
	(97, 2, NULL),
	(98, 3, NULL),
	(99, 6, NULL),
	(100, 2, NULL),
	(101, 6, NULL),
	(102, 3, NULL),
	(103, 5, NULL),
	(104, 1, NULL),
	(105, 2, NULL),
	(106, 5, NULL),
	(107, 2, NULL),
	(108, 7, NULL),
	(109, 8, NULL),
	(110, 9, NULL),
	(111, 7, NULL),
	(112, 7, NULL),
	(113, 8, NULL),
	(114, 7, NULL),
	(115, 9, NULL),
	(116, 7, NULL),
	(117, 7, NULL),
	(118, 10, NULL),
	(119, 11, NULL),
	(120, 12, NULL),
	(121, 10, NULL),
	(122, 10, NULL),
	(123, 12, NULL),
	(124, 10, NULL),
	(125, 11, NULL),
	(126, 13, NULL),
	(127, 14, NULL),
	(128, 15, NULL),
	(129, 16, NULL),
	(130, 14, NULL),
	(131, 15, NULL),
	(132, 16, NULL),
	(133, 14, NULL),
	(134, 13, NULL),
	(135, 14, NULL),
	(136, 15, NULL),
	(137, 14, NULL),
	(138, 16, NULL),
	(139, 14, NULL),
	(140, 13, NULL),
	(141, 15, NULL),
	(142, 13, NULL),
	(143, 14, NULL),
	(144, 15, NULL),
	(145, 14, NULL),
	(146, 15, NULL),
	(147, 17, NULL),
	(148, 6, NULL),
	(149, 18, NULL),
	(150, 19, NULL),
	(151, 18, NULL),
	(152, 17, NULL),
	(153, 6, NULL),
	(154, 19, NULL),
	(155, 18, NULL),
	(156, 19, NULL),
	(157, 17, NULL),
	(158, 6, NULL),
	(159, 19, NULL),
	(160, 19, NULL),
	(161, 20, 0),
	(162, 20, 1),
	(163, 22, 0),
	(164, 22, 1),
	(165, 22, 2),
	(166, 23, 0),
	(167, 23, 1),
	(168, 24, 0),
	(169, 24, 3),
	(170, 20, 2),
	(171, 20, 3),
	(172, 20, 4),
	(173, 20, 5),
	(174, 20, 6),
	(175, 20, 7),
	(176, 20, 8),
	(177, 24, 1),
	(178, 24, 2),
	(179, 22, 3),
	(180, 22, 4);
/*!40000 ALTER TABLE `StoreAttributeOption` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StoreAttributeOptionTranslate
CREATE TABLE IF NOT EXISTS `StoreAttributeOptionTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `language_id` (`language_id`),
  KEY `object_id` (`object_id`)
) ENGINE=MyISAM AUTO_INCREMENT=381 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreAttributeOptionTranslate: 210 rows
DELETE FROM `StoreAttributeOptionTranslate`;
/*!40000 ALTER TABLE `StoreAttributeOptionTranslate` DISABLE KEYS */;
INSERT INTO `StoreAttributeOptionTranslate` (`id`, `language_id`, `object_id`, `value`) VALUES
	(171, 1, 86, 'Celeron'),
	(172, 9, 86, 'Celeron'),
	(173, 1, 87, '2200 МГц'),
	(174, 9, 87, '2200 МГц'),
	(175, 1, 88, '2048 Мб'),
	(176, 9, 88, '2048 Мб'),
	(177, 1, 89, 'DDR3'),
	(178, 9, 89, 'DDR3'),
	(179, 1, 90, '15.6 дюйм'),
	(180, 9, 90, '15.6 дюйм'),
	(181, 1, 91, '1366x768'),
	(182, 9, 91, '1366x768'),
	(183, 1, 92, 'E-240'),
	(184, 9, 92, 'E-240'),
	(185, 1, 93, '1650 МГц'),
	(186, 9, 93, '1650 МГц'),
	(187, 1, 94, '1500 МГц'),
	(188, 9, 94, '1500 МГц'),
	(189, 1, 95, '1700 МГц'),
	(190, 9, 95, '1700 МГц'),
	(191, 1, 96, 'Core i7'),
	(192, 9, 96, 'Core i7'),
	(193, 1, 97, '2500 МГц'),
	(194, 9, 97, '2500 МГц'),
	(195, 1, 98, '8192 Мб'),
	(196, 9, 98, '8192 Мб'),
	(197, 1, 99, '1920x1080'),
	(198, 9, 99, '1920x1080'),
	(199, 1, 100, '2700 МГц'),
	(200, 9, 100, '2700 МГц'),
	(201, 1, 101, '1920x1200'),
	(202, 9, 101, '1920x1200'),
	(203, 1, 102, '4096 Мб'),
	(204, 9, 102, '4096 Мб'),
	(205, 1, 103, '15.4 дюйм'),
	(206, 9, 103, '15.4 дюйм'),
	(207, 1, 104, 'Core i5'),
	(208, 9, 104, 'Core i5'),
	(209, 1, 105, '2660 МГц'),
	(210, 9, 105, '2660 МГц'),
	(211, 1, 106, '16.4 дюйм'),
	(212, 9, 106, '16.4 дюйм'),
	(213, 1, 107, '1730 МГц'),
	(214, 9, 107, '1730 МГц'),
	(215, 1, 108, '71 Вт'),
	(216, 9, 108, '71 Вт'),
	(217, 1, 109, 'пластик'),
	(218, 9, 109, 'пластик'),
	(219, 1, 110, '5.1'),
	(220, 9, 110, '5.1'),
	(221, 1, 111, '62 Вт'),
	(222, 9, 111, '62 Вт'),
	(223, 1, 112, '80 Вт'),
	(224, 9, 112, '80 Вт'),
	(225, 1, 113, 'MDF'),
	(226, 9, 113, 'MDF'),
	(227, 1, 114, '25 Вт'),
	(228, 9, 114, '25 Вт'),
	(229, 1, 115, '2.1'),
	(230, 9, 115, '2.1'),
	(231, 1, 116, '30 Вт'),
	(232, 9, 116, '30 Вт'),
	(233, 1, 117, '28 Вт'),
	(234, 9, 117, '28 Вт'),
	(235, 1, 118, '24"'),
	(236, 9, 118, '24"'),
	(237, 1, 119, '1920x1200'),
	(238, 9, 119, '1920x1200'),
	(239, 1, 120, '178°/178°'),
	(240, 9, 120, '178°/178°'),
	(241, 1, 121, '23"'),
	(242, 9, 121, '23"'),
	(243, 1, 122, '21.5"'),
	(244, 9, 122, '21.5"'),
	(245, 1, 123, '170°/160°'),
	(246, 9, 123, '170°/160°'),
	(247, 1, 124, '27"'),
	(248, 9, 124, '27"'),
	(249, 1, 125, '2560x1440'),
	(250, 9, 125, '2560x1440'),
	(251, 1, 126, 'Android'),
	(252, 9, 126, 'Android'),
	(253, 1, 127, '118 г'),
	(254, 9, 127, '118 г'),
	(255, 1, 128, '3.8"'),
	(256, 9, 128, '3.8"'),
	(257, 1, 129, '5 МП'),
	(258, 9, 129, '5 МП'),
	(259, 1, 130, '129 г'),
	(260, 9, 130, '129 г'),
	(261, 1, 131, '4.7"'),
	(262, 9, 131, '4.7"'),
	(263, 1, 132, '8 МП'),
	(264, 9, 132, '8 МП'),
	(265, 1, 133, '162 г'),
	(266, 9, 133, '162 г'),
	(267, 1, 134, 'iOS'),
	(268, 9, 134, 'iOS'),
	(269, 1, 135, '140 г'),
	(270, 9, 135, '140 г'),
	(271, 1, 136, '3.5"'),
	(272, 9, 136, '3.5"'),
	(273, 1, 137, '135 г'),
	(274, 9, 137, '135 г'),
	(275, 1, 138, '3 МП'),
	(276, 9, 138, '3 МП'),
	(277, 1, 139, '137 г'),
	(278, 9, 139, '137 г'),
	(279, 1, 140, 'MeeGo'),
	(280, 9, 140, 'MeeGo'),
	(281, 1, 141, '3.9"'),
	(282, 9, 141, '3.9"'),
	(283, 1, 142, 'BlackBerry OS'),
	(284, 9, 142, 'BlackBerry OS'),
	(285, 1, 143, '130 г'),
	(286, 9, 143, '130 г'),
	(287, 1, 144, '2.8"'),
	(288, 9, 144, '2.8"'),
	(289, 1, 145, '122 г'),
	(290, 9, 145, '122 г'),
	(291, 1, 146, '2.4"'),
	(292, 9, 146, '2.4"'),
	(293, 1, 147, '9.7"'),
	(294, 9, 147, '9.7"'),
	(295, 1, 148, '1024x768'),
	(296, 9, 148, '1024x768'),
	(297, 1, 149, '16 Гб'),
	(298, 9, 149, '16 Гб'),
	(299, 1, 150, '613 г'),
	(300, 9, 150, '613 г'),
	(301, 1, 151, '64 Гб'),
	(302, 9, 151, '64 Гб'),
	(303, 1, 152, '7"'),
	(304, 9, 152, '7"'),
	(305, 1, 153, '1024x600'),
	(306, 9, 153, '1024x600'),
	(307, 1, 154, '343 г'),
	(308, 9, 154, '343 г'),
	(309, 1, 155, '8 Гб'),
	(310, 9, 155, '8 Гб'),
	(311, 1, 156, '410 г'),
	(312, 9, 156, '410 г'),
	(313, 1, 157, '10.1"'),
	(314, 9, 157, '10.1"'),
	(315, 1, 158, '1280x800'),
	(316, 9, 158, '1280x800'),
	(317, 1, 159, '586 г'),
	(318, 9, 159, '586 г'),
	(319, 1, 160, '565 г'),
	(320, 9, 160, '565 г'),
	(321, 1, 161, 'BMW'),
	(322, 9, 161, 'BMW'),
	(323, 10, 161, 'BMW'),
	(324, 1, 162, 'Opel'),
	(325, 9, 162, 'Opel'),
	(326, 10, 162, 'Opel'),
	(327, 1, 163, 'Внедорожник'),
	(328, 9, 163, 'Внедорожник'),
	(329, 10, 163, 'Внедорожник'),
	(330, 1, 164, 'Кроссовер'),
	(331, 9, 164, 'Кроссовер'),
	(332, 10, 164, 'Кроссовер'),
	(333, 1, 165, 'Минивэн'),
	(334, 9, 165, 'Минивэн'),
	(335, 10, 165, 'Минивэн'),
	(336, 1, 166, 'автомат'),
	(337, 9, 166, 'автомат'),
	(338, 10, 166, 'автомат'),
	(339, 1, 167, 'механическая'),
	(340, 9, 167, 'механическая'),
	(341, 10, 167, 'механическая'),
	(342, 1, 168, 'Новое'),
	(343, 9, 168, 'Новое'),
	(344, 10, 168, 'Новое'),
	(345, 1, 169, 'Битая'),
	(346, 9, 169, 'Битая'),
	(347, 10, 169, 'Битая'),
	(348, 1, 170, 'Skoda'),
	(349, 9, 170, 'Skoda'),
	(350, 10, 170, 'Skoda'),
	(351, 1, 171, 'Ford'),
	(352, 9, 171, 'Ford'),
	(353, 10, 171, 'Ford'),
	(354, 1, 172, 'Honda'),
	(355, 9, 172, 'Honda'),
	(356, 10, 172, 'Honda'),
	(357, 1, 173, 'Hyundai'),
	(358, 9, 173, 'Hyundai'),
	(359, 10, 173, 'Hyundai'),
	(360, 1, 174, 'Mazda'),
	(361, 9, 174, 'Mazda'),
	(362, 10, 174, 'Mazda'),
	(363, 1, 175, 'Mitsubishi'),
	(364, 9, 175, 'Mitsubishi'),
	(365, 10, 175, 'Mitsubishi'),
	(366, 1, 176, 'Toyota'),
	(367, 9, 176, 'Toyota'),
	(368, 10, 176, 'Toyota'),
	(369, 1, 177, 'Идеальное'),
	(370, 9, 177, 'Идеальное'),
	(371, 10, 177, 'Идеальное'),
	(372, 1, 178, 'Хорошее'),
	(373, 9, 178, 'Хорошее'),
	(374, 10, 178, 'Хорошее'),
	(375, 1, 179, 'Седан'),
	(376, 9, 179, 'Седан'),
	(377, 10, 179, 'Седан'),
	(378, 1, 180, 'Хетчбек'),
	(379, 9, 180, 'Хетчбек'),
	(380, 10, 180, 'Хетчбек');
/*!40000 ALTER TABLE `StoreAttributeOptionTranslate` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StoreAttributeTranslate
CREATE TABLE IF NOT EXISTS `StoreAttributeTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreAttributeTranslate: 78 rows
DELETE FROM `StoreAttributeTranslate`;
/*!40000 ALTER TABLE `StoreAttributeTranslate` DISABLE KEYS */;
INSERT INTO `StoreAttributeTranslate` (`id`, `object_id`, `language_id`, `title`) VALUES
	(41, 1, 1, 'Тип процессора'),
	(42, 1, 9, 'Тип процессора'),
	(43, 2, 1, 'Частота процессора'),
	(44, 2, 9, 'Частота процессора'),
	(45, 3, 1, 'Объем памяти'),
	(46, 3, 9, 'Объем памяти'),
	(47, 4, 1, 'Тип памяти'),
	(48, 4, 9, 'Тип памяти'),
	(49, 5, 1, 'Диагональ'),
	(50, 5, 9, 'Диагональ'),
	(51, 6, 1, 'Разрешение'),
	(52, 6, 9, 'Разрешение'),
	(53, 7, 1, 'Суммарная мощность'),
	(54, 7, 9, 'Суммарная мощность'),
	(55, 8, 1, 'Материал'),
	(56, 8, 9, 'Материал'),
	(57, 9, 1, 'Тип'),
	(58, 9, 9, 'Тип'),
	(59, 10, 1, 'Диагональ'),
	(60, 10, 9, 'Диагональ'),
	(61, 11, 1, 'Разрешение'),
	(62, 11, 9, 'Разрешение'),
	(63, 12, 1, 'Угол обзора'),
	(64, 12, 9, 'Угол обзора'),
	(65, 13, 1, 'Платформа'),
	(66, 13, 9, 'Платформа'),
	(67, 14, 1, 'Вес'),
	(68, 14, 9, 'Вес'),
	(69, 15, 1, 'Диагональ'),
	(70, 15, 9, 'Диагональ'),
	(71, 16, 1, 'Камера'),
	(72, 16, 9, 'Камера'),
	(73, 17, 1, 'Диагональ'),
	(74, 17, 9, 'Диагональ'),
	(75, 18, 1, 'Объем памяти'),
	(76, 18, 9, 'Объем памяти'),
	(77, 19, 1, 'Вес'),
	(78, 19, 9, 'Вес'),
	(79, 9, 10, 'Тип'),
	(80, 19, 10, 'Вес'),
	(81, 10, 10, 'Диагональ'),
	(82, 1, 10, 'Тип процессора'),
	(83, 11, 10, 'Разрешение'),
	(84, 2, 10, 'Частота процессора'),
	(85, 12, 10, 'Угол обзора'),
	(86, 3, 10, 'Объем памяти'),
	(87, 13, 10, 'Платформа'),
	(88, 4, 10, 'Тип памяти'),
	(89, 14, 10, 'Вес'),
	(90, 5, 10, 'Диагональ'),
	(91, 15, 10, 'Диагональ'),
	(92, 6, 10, 'Разрешение'),
	(93, 16, 10, 'Камера'),
	(94, 7, 10, 'Суммарная мощность'),
	(95, 17, 10, 'Диагональ'),
	(96, 8, 10, 'Материал'),
	(97, 18, 10, 'Объем памяти'),
	(98, 20, 1, 'Марка'),
	(99, 20, 9, 'Марка'),
	(100, 20, 10, 'Марка'),
	(101, 21, 1, 'Год выпуска'),
	(102, 21, 9, 'Год выпуска'),
	(103, 21, 10, 'Год выпуска'),
	(104, 22, 1, 'Тип кузова'),
	(105, 22, 9, 'Тип кузова'),
	(106, 22, 10, 'Тип кузова'),
	(107, 23, 1, 'Тип КПП'),
	(108, 23, 9, 'Тип КПП'),
	(109, 23, 10, 'Тип КПП'),
	(110, 24, 1, 'Состояние'),
	(111, 24, 9, 'Состояние'),
	(112, 24, 10, 'Состояние'),
	(113, 25, 1, 'Пробег (тысяч км.)'),
	(114, 25, 9, 'Пробег (тысяч км.)'),
	(115, 25, 10, 'Пробег (тысяч км.)'),
	(116, 26, 1, 'Износ'),
	(117, 26, 9, 'Состояние'),
	(118, 26, 10, 'Состояние');
/*!40000 ALTER TABLE `StoreAttributeTranslate` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StoreCategory
CREATE TABLE IF NOT EXISTS `StoreCategory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lft` int(10) unsigned DEFAULT NULL,
  `rgt` int(10) unsigned DEFAULT NULL,
  `level` smallint(5) unsigned DEFAULT NULL,
  `url` varchar(255) DEFAULT '',
  `full_path` varchar(255) DEFAULT '',
  `layout` varchar(255) DEFAULT '',
  `view` varchar(255) DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `lft` (`lft`),
  KEY `rgt` (`rgt`),
  KEY `level` (`level`),
  KEY `url` (`url`),
  KEY `full_path` (`full_path`)
) ENGINE=MyISAM AUTO_INCREMENT=243 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreCategory: 14 rows
DELETE FROM `StoreCategory`;
/*!40000 ALTER TABLE `StoreCategory` DISABLE KEYS */;
INSERT INTO `StoreCategory` (`id`, `lft`, `rgt`, `level`, `url`, `full_path`, `layout`, `view`, `description`) VALUES
	(1, 1, 36, 1, 'root', '', '', '', NULL),
	(230, 10, 15, 2, 'noutbuki', 'noutbuki', '', '', NULL),
	(231, 11, 12, 3, 'byudzhetnii', 'noutbuki/byudzhetnii', '', '', NULL),
	(232, 13, 14, 3, 'igrovoi', 'noutbuki/igrovoi', '', '', NULL),
	(233, 16, 21, 2, 'kompyuteri', 'kompyuteri', '', '', NULL),
	(234, 17, 18, 3, 'kompyuternaya-akustika', 'kompyuteri/kompyuternaya-akustika', '', '', NULL),
	(235, 22, 23, 2, 'monitori', 'monitori', '', '', NULL),
	(236, 24, 25, 2, 'telefoni', 'telefoni', '', '', NULL),
	(237, 19, 20, 3, 'plansheti', 'kompyuteri/plansheti', '', '', NULL),
	(238, 26, 27, 2, 'avto-parts', 'avto-parts', '', '', ''),
	(239, 32, 33, 2, 'lorries', 'lorries', '', '', ''),
	(240, 30, 31, 2, 'cars', 'cars', '', '', ''),
	(241, 28, 29, 2, 'order-item', 'order-item', '', '', ''),
	(242, 34, 35, 2, 'avtosale', 'avtosale', '', '', '');
/*!40000 ALTER TABLE `StoreCategory` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StoreCategoryTranslate
CREATE TABLE IF NOT EXISTS `StoreCategoryTranslate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  `meta_title` varchar(255) DEFAULT '',
  `meta_keywords` varchar(255) DEFAULT '',
  `meta_description` varchar(255) DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreCategoryTranslate: 46 rows
DELETE FROM `StoreCategoryTranslate`;
/*!40000 ALTER TABLE `StoreCategoryTranslate` DISABLE KEYS */;
INSERT INTO `StoreCategoryTranslate` (`id`, `object_id`, `language_id`, `name`, `meta_title`, `meta_keywords`, `meta_description`, `description`) VALUES
	(1, 1, 1, 'root', '', '', '', NULL),
	(22, 219, 1, 'Планшеты', '', '', '', NULL),
	(23, 219, 9, 'Планшеты', '', '', '', NULL),
	(24, 220, 1, 'Ассортимент', '', '', '', NULL),
	(25, 220, 9, 'Ассортимент', '', '', '', NULL),
	(28, 1, 9, 'root', '', '', '', NULL),
	(45, 230, 1, 'Ноутбуки', NULL, NULL, NULL, NULL),
	(46, 230, 9, 'Ноутбуки', NULL, NULL, NULL, NULL),
	(47, 231, 1, 'Бюджетный', NULL, NULL, NULL, NULL),
	(48, 231, 9, 'Бюджетный', NULL, NULL, NULL, NULL),
	(49, 232, 1, 'Игровой', NULL, NULL, NULL, NULL),
	(50, 232, 9, 'Игровой', NULL, NULL, NULL, NULL),
	(51, 233, 1, 'Компьютеры', NULL, NULL, NULL, NULL),
	(52, 233, 9, 'Компьютеры', NULL, NULL, NULL, NULL),
	(53, 234, 1, 'Компьютерная акустика', NULL, NULL, NULL, NULL),
	(54, 234, 9, 'Компьютерная акустика', NULL, NULL, NULL, NULL),
	(55, 235, 1, 'Мониторы', NULL, NULL, NULL, NULL),
	(56, 235, 9, 'Мониторы', NULL, NULL, NULL, NULL),
	(57, 236, 1, 'Телефоны', NULL, NULL, NULL, NULL),
	(58, 236, 9, 'Телефоны', NULL, NULL, NULL, NULL),
	(59, 237, 1, 'Планшеты', NULL, NULL, NULL, NULL),
	(60, 237, 9, 'Планшеты', NULL, NULL, NULL, NULL),
	(61, 1, 10, 'root', '', '', '', NULL),
	(62, 230, 10, 'Ноутбуки', NULL, NULL, NULL, NULL),
	(63, 231, 10, 'Бюджетный', NULL, NULL, NULL, NULL),
	(64, 232, 10, 'Игровой', NULL, NULL, NULL, NULL),
	(65, 233, 10, 'Компьютеры', NULL, NULL, NULL, NULL),
	(66, 234, 10, 'Компьютерная акустика', NULL, NULL, NULL, NULL),
	(67, 235, 10, 'Мониторы', NULL, NULL, NULL, NULL),
	(68, 236, 10, 'Телефоны', NULL, NULL, NULL, NULL),
	(69, 237, 10, 'Планшеты', NULL, NULL, NULL, NULL),
	(70, 238, 1, 'Автозапчасти', '', '', '', ''),
	(71, 238, 9, 'Автозапчасти', '', '', '', ''),
	(72, 238, 10, 'Автозапчасти', '', '', '', ''),
	(73, 239, 1, 'Грузовые авто', '', '', '', ''),
	(74, 239, 9, 'Грузовые авто', '', '', '', ''),
	(75, 239, 10, 'Грузовые авто', '', '', '', ''),
	(76, 240, 1, 'Легковые авто', '', '', '', ''),
	(77, 240, 9, 'Легковые авто', '', '', '', ''),
	(78, 240, 10, 'Легковые авто', '', '', '', ''),
	(79, 241, 1, 'Заказать деталь', '', '', '', ''),
	(80, 241, 9, 'Заказать деталь', '', '', '', ''),
	(81, 241, 10, 'Заказать деталь', '', '', '', ''),
	(82, 242, 1, 'Продажа авто', '', '', '', ''),
	(83, 242, 9, 'Продажа авто', '', '', '', ''),
	(84, 242, 10, 'Продажа авто', '', '', '', '');
/*!40000 ALTER TABLE `StoreCategoryTranslate` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StoreCountry
CREATE TABLE IF NOT EXISTS `StoreCountry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreCountry: ~3 rows (приблизительно)
DELETE FROM `StoreCountry`;
/*!40000 ALTER TABLE `StoreCountry` DISABLE KEYS */;
INSERT INTO `StoreCountry` (`id`) VALUES
	(1),
	(2),
	(3);
/*!40000 ALTER TABLE `StoreCountry` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StoreCountryTranslate
CREATE TABLE IF NOT EXISTS `StoreCountryTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) NOT NULL,
  `language_id` int(10) NOT NULL,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreCountryTranslate: ~9 rows (приблизительно)
DELETE FROM `StoreCountryTranslate`;
/*!40000 ALTER TABLE `StoreCountryTranslate` DISABLE KEYS */;
INSERT INTO `StoreCountryTranslate` (`id`, `object_id`, `language_id`, `name`) VALUES
	(1, 1, 1, 'Россия'),
	(2, 1, 9, 'Russia'),
	(3, 1, 10, 'Россия'),
	(4, 2, 1, 'Белоруссия'),
	(5, 2, 9, 'Belarus'),
	(6, 2, 10, 'Белорусия'),
	(7, 3, 1, 'Казахстан'),
	(8, 3, 9, 'Kazakhstan'),
	(9, 3, 10, 'Казахстан');
/*!40000 ALTER TABLE `StoreCountryTranslate` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StoreCurrency
CREATE TABLE IF NOT EXISTS `StoreCurrency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `iso` varchar(10) DEFAULT '',
  `symbol` varchar(10) DEFAULT '',
  `rate` float(10,3) DEFAULT NULL,
  `main` tinyint(1) DEFAULT NULL,
  `default` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreCurrency: 2 rows
DELETE FROM `StoreCurrency`;
/*!40000 ALTER TABLE `StoreCurrency` DISABLE KEYS */;
INSERT INTO `StoreCurrency` (`id`, `name`, `iso`, `symbol`, `rate`, `main`, `default`) VALUES
	(1, 'Доллары', 'USD', '$', 1.000, 1, 1),
	(2, 'Рубли', 'RUR', 'руб.', 32.520, 0, 0);
/*!40000 ALTER TABLE `StoreCurrency` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StoreDeliveryMethod
CREATE TABLE IF NOT EXISTS `StoreDeliveryMethod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` float(10,2) DEFAULT '0.00',
  `free_from` float(10,2) DEFAULT '0.00',
  `position` smallint(6) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreDeliveryMethod: 3 rows
DELETE FROM `StoreDeliveryMethod`;
/*!40000 ALTER TABLE `StoreDeliveryMethod` DISABLE KEYS */;
INSERT INTO `StoreDeliveryMethod` (`id`, `price`, `free_from`, `position`, `active`) VALUES
	(14, 10.00, 1000.00, 0, 1),
	(15, 0.00, 0.00, 1, 1),
	(16, 30.00, 0.00, 2, 1);
/*!40000 ALTER TABLE `StoreDeliveryMethod` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StoreDeliveryMethodTranslate
CREATE TABLE IF NOT EXISTS `StoreDeliveryMethodTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreDeliveryMethodTranslate: 9 rows
DELETE FROM `StoreDeliveryMethodTranslate`;
/*!40000 ALTER TABLE `StoreDeliveryMethodTranslate` DISABLE KEYS */;
INSERT INTO `StoreDeliveryMethodTranslate` (`id`, `object_id`, `language_id`, `name`, `description`) VALUES
	(1, 14, 1, 'Курьером', ''),
	(2, 14, 9, 'English', 'english description'),
	(3, 15, 1, 'Самовывоз', ''),
	(4, 15, 9, 'Самовывоз', ''),
	(5, 16, 1, 'Адресная доставка по стране', ''),
	(6, 16, 9, 'Адресная доставка по стране', ''),
	(7, 14, 10, 'Курьером', ''),
	(8, 15, 10, 'Самовывоз', ''),
	(9, 16, 10, 'Адресная доставка по стране', '');
/*!40000 ALTER TABLE `StoreDeliveryMethodTranslate` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StoreDeliveryPayment
CREATE TABLE IF NOT EXISTS `StoreDeliveryPayment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `delivery_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COMMENT='Saves relations between delivery and payment methods ';

-- Дамп данных таблицы partspro.StoreDeliveryPayment: 19 rows
DELETE FROM `StoreDeliveryPayment`;
/*!40000 ALTER TABLE `StoreDeliveryPayment` DISABLE KEYS */;
INSERT INTO `StoreDeliveryPayment` (`id`, `delivery_id`, `payment_id`) VALUES
	(24, 12, 14),
	(23, 10, 16),
	(22, 10, 13),
	(21, 10, 14),
	(34, 11, 16),
	(33, 11, 13),
	(25, 12, 15),
	(26, 12, 16),
	(78, 14, 21),
	(77, 14, 19),
	(76, 14, 20),
	(75, 14, 18),
	(82, 15, 20),
	(81, 15, 18),
	(55, 16, 17),
	(56, 16, 18),
	(57, 16, 20),
	(58, 16, 19),
	(74, 14, 17);
/*!40000 ALTER TABLE `StoreDeliveryPayment` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StoreManufacturer
CREATE TABLE IF NOT EXISTS `StoreManufacturer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT '',
  `layout` varchar(255) DEFAULT '',
  `view` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `url` (`url`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreManufacturer: 18 rows
DELETE FROM `StoreManufacturer`;
/*!40000 ALTER TABLE `StoreManufacturer` DISABLE KEYS */;
INSERT INTO `StoreManufacturer` (`id`, `url`, `layout`, `view`) VALUES
	(1, 'lenovo', '', ''),
	(2, 'asus', '', ''),
	(3, 'dell', '', ''),
	(4, 'fujitsu', '', ''),
	(5, 'hp', '', ''),
	(6, 'apple', '', ''),
	(7, 'sony', '', ''),
	(8, 'acer', '', ''),
	(9, 'logitech', '', ''),
	(10, 'microlab', '', ''),
	(11, 'edifier', '', ''),
	(12, 'sven', '', ''),
	(13, 'lg', '', ''),
	(14, 'samsung', '', ''),
	(15, 'philips', '', ''),
	(16, 'htc', '', ''),
	(17, 'nokia', '', ''),
	(18, 'blackberry', '', '');
/*!40000 ALTER TABLE `StoreManufacturer` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StoreManufacturerTranslate
CREATE TABLE IF NOT EXISTS `StoreManufacturerTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  `description` text,
  `meta_title` varchar(255) DEFAULT '',
  `meta_keywords` varchar(255) DEFAULT '',
  `meta_description` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreManufacturerTranslate: 54 rows
DELETE FROM `StoreManufacturerTranslate`;
/*!40000 ALTER TABLE `StoreManufacturerTranslate` DISABLE KEYS */;
INSERT INTO `StoreManufacturerTranslate` (`id`, `object_id`, `language_id`, `name`, `description`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
	(23, 1, 1, 'Lenovo', NULL, NULL, NULL, NULL),
	(24, 1, 9, 'Lenovo', NULL, NULL, NULL, NULL),
	(25, 2, 1, 'Asus', NULL, NULL, NULL, NULL),
	(26, 2, 9, 'Asus', NULL, NULL, NULL, NULL),
	(27, 3, 1, 'Dell', NULL, NULL, NULL, NULL),
	(28, 3, 9, 'Dell', NULL, NULL, NULL, NULL),
	(29, 4, 1, 'Fujitsu', NULL, NULL, NULL, NULL),
	(30, 4, 9, 'Fujitsu', NULL, NULL, NULL, NULL),
	(31, 5, 1, 'HP', NULL, NULL, NULL, NULL),
	(32, 5, 9, 'HP', NULL, NULL, NULL, NULL),
	(33, 6, 1, 'Apple', NULL, NULL, NULL, NULL),
	(34, 6, 9, 'Apple', NULL, NULL, NULL, NULL),
	(35, 7, 1, 'Sony', NULL, NULL, NULL, NULL),
	(36, 7, 9, 'Sony', NULL, NULL, NULL, NULL),
	(37, 8, 1, 'Acer', NULL, NULL, NULL, NULL),
	(38, 8, 9, 'Acer', NULL, NULL, NULL, NULL),
	(39, 9, 1, 'Logitech', NULL, NULL, NULL, NULL),
	(40, 9, 9, 'Logitech', NULL, NULL, NULL, NULL),
	(41, 10, 1, 'Microlab', NULL, NULL, NULL, NULL),
	(42, 10, 9, 'Microlab', NULL, NULL, NULL, NULL),
	(43, 11, 1, 'Edifier', NULL, NULL, NULL, NULL),
	(44, 11, 9, 'Edifier', NULL, NULL, NULL, NULL),
	(45, 12, 1, 'Sven', NULL, NULL, NULL, NULL),
	(46, 12, 9, 'Sven', NULL, NULL, NULL, NULL),
	(47, 13, 1, 'LG', NULL, NULL, NULL, NULL),
	(48, 13, 9, 'LG', NULL, NULL, NULL, NULL),
	(49, 14, 1, 'Samsung', NULL, NULL, NULL, NULL),
	(50, 14, 9, 'Samsung', NULL, NULL, NULL, NULL),
	(51, 15, 1, 'Philips', NULL, NULL, NULL, NULL),
	(52, 15, 9, 'Philips', NULL, NULL, NULL, NULL),
	(53, 16, 1, 'HTC', NULL, NULL, NULL, NULL),
	(54, 16, 9, 'HTC', NULL, NULL, NULL, NULL),
	(55, 17, 1, 'Nokia', NULL, NULL, NULL, NULL),
	(56, 17, 9, 'Nokia', NULL, NULL, NULL, NULL),
	(57, 18, 1, 'BlackBerry', NULL, NULL, NULL, NULL),
	(58, 18, 9, 'BlackBerry', NULL, NULL, NULL, NULL),
	(59, 1, 10, 'Lenovo', NULL, NULL, NULL, NULL),
	(60, 2, 10, 'Asus', NULL, NULL, NULL, NULL),
	(61, 3, 10, 'Dell', NULL, NULL, NULL, NULL),
	(62, 4, 10, 'Fujitsu', NULL, NULL, NULL, NULL),
	(63, 5, 10, 'HP', NULL, NULL, NULL, NULL),
	(64, 6, 10, 'Apple', NULL, NULL, NULL, NULL),
	(65, 7, 10, 'Sony', NULL, NULL, NULL, NULL),
	(66, 8, 10, 'Acer', NULL, NULL, NULL, NULL),
	(67, 9, 10, 'Logitech', NULL, NULL, NULL, NULL),
	(68, 10, 10, 'Microlab', NULL, NULL, NULL, NULL),
	(69, 11, 10, 'Edifier', NULL, NULL, NULL, NULL),
	(70, 12, 10, 'Sven', NULL, NULL, NULL, NULL),
	(71, 13, 10, 'LG', NULL, NULL, NULL, NULL),
	(72, 14, 10, 'Samsung', NULL, NULL, NULL, NULL),
	(73, 15, 10, 'Philips', NULL, NULL, NULL, NULL),
	(74, 16, 10, 'HTC', NULL, NULL, NULL, NULL),
	(75, 17, 10, 'Nokia', NULL, NULL, NULL, NULL),
	(76, 18, 10, 'BlackBerry', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `StoreManufacturerTranslate` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StorePaymentMethod
CREATE TABLE IF NOT EXISTS `StorePaymentMethod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_id` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `payment_system` varchar(100) DEFAULT '',
  `position` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StorePaymentMethod: 5 rows
DELETE FROM `StorePaymentMethod`;
/*!40000 ALTER TABLE `StorePaymentMethod` DISABLE KEYS */;
INSERT INTO `StorePaymentMethod` (`id`, `currency_id`, `active`, `payment_system`, `position`) VALUES
	(17, 1, 1, 'webmoney', 0),
	(18, 2, 1, '', 2),
	(19, 1, 1, 'robokassa', 1),
	(20, 2, 1, '', 3),
	(21, 2, 1, 'qiwi', 4);
/*!40000 ALTER TABLE `StorePaymentMethod` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StorePaymentMethodTranslate
CREATE TABLE IF NOT EXISTS `StorePaymentMethodTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StorePaymentMethodTranslate: 10 rows
DELETE FROM `StorePaymentMethodTranslate`;
/*!40000 ALTER TABLE `StorePaymentMethodTranslate` DISABLE KEYS */;
INSERT INTO `StorePaymentMethodTranslate` (`id`, `object_id`, `language_id`, `name`, `description`) VALUES
	(1, 17, 1, 'WebMoney', 'WebMoney — это универсальное средство для расчетов в Сети, целая среда финансовых взаимоотношений, которой сегодня пользуются миллионы людей по всему миру.'),
	(2, 17, 9, 'English payment1', 'russian description'),
	(3, 18, 1, 'Наличная', 'Наличная оплата осуществляется только в рублях при доставке товара курьером покупателю.'),
	(7, 20, 1, 'Безналичная', ' Стоимость товара при безналичной оплате без ПДВ равна розничной цене товара + 2% '),
	(8, 20, 9, 'Безналичная', ''),
	(4, 18, 9, 'Наличка', '<p>ыла оылдао ылдао ылдоа ылдва<br />ыаол ывла оывалд ыова</p>'),
	(5, 19, 1, 'Robokassa', 'Многими пользователями электронные платежные системы расцениваются в качестве наиболее удобного средства оплаты товаров и услуг в Интернете.'),
	(6, 19, 9, 'Robokassa', '<p>Description goes here</p>'),
	(9, 21, 1, 'Qiwi', 'Оплата с помощью Qiwi'),
	(10, 21, 9, 'Qiwi', 'Оплата с помощью Qiwi');
/*!40000 ALTER TABLE `StorePaymentMethodTranslate` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StoreProduct
CREATE TABLE IF NOT EXISTS `StoreProduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturer_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `use_configurations` tinyint(1) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL,
  `price` float(10,2) DEFAULT NULL,
  `max_price` float(10,2) NOT NULL DEFAULT '0.00',
  `is_active` tinyint(1) DEFAULT NULL,
  `layout` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT '0',
  `availability` tinyint(2) DEFAULT '1',
  `auto_decrease_quantity` tinyint(2) DEFAULT '1',
  `views_count` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `added_to_cart_count` int(11) DEFAULT NULL,
  `votes` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `video` text,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `manufacturer_id` (`manufacturer_id`),
  KEY `type_id` (`type_id`),
  KEY `price` (`price`),
  KEY `max_price` (`max_price`),
  KEY `is_active` (`is_active`),
  KEY `sku` (`sku`),
  KEY `created` (`created`),
  KEY `updated` (`updated`),
  KEY `added_to_cart_count` (`added_to_cart_count`),
  KEY `views_count` (`views_count`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreProduct: 52 rows
DELETE FROM `StoreProduct`;
/*!40000 ALTER TABLE `StoreProduct` DISABLE KEYS */;
INSERT INTO `StoreProduct` (`id`, `manufacturer_id`, `type_id`, `region_id`, `use_configurations`, `url`, `price`, `max_price`, `is_active`, `layout`, `view`, `sku`, `quantity`, `availability`, `auto_decrease_quantity`, `views_count`, `created`, `updated`, `added_to_cart_count`, `votes`, `rating`, `discount`, `video`, `user_id`) VALUES
	(1, 1, 2, NULL, 0, 'lenovo-b570', 345.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:53', '2014-09-29 16:06:52', NULL, NULL, NULL, NULL, 'Intel GMA HD', 1),
	(2, 1, 2, NULL, 0, 'lenovo-g570', 360.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:53', '2014-09-29 16:06:53', NULL, NULL, NULL, NULL, 'Intel GMA HD', 1),
	(3, 2, 2, NULL, 0, 'asus-k53u', 375.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:53', '2014-09-29 16:06:53', NULL, NULL, NULL, NULL, 'Intel GMA HD', 1),
	(4, 2, 2, NULL, 0, 'asus-x54c', 370.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:53', '2014-09-29 16:06:53', NULL, NULL, NULL, NULL, 'Intel HD Graphics 3000', 1),
	(5, 3, 2, NULL, 0, 'dell-inspiron-n5050', 380.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:53', '2014-09-29 16:06:53', NULL, NULL, NULL, NULL, 'Intel HD Graphics 3000', 1),
	(6, 4, 2, NULL, 0, 'fujitsu-lifebook-ah531', 395.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:53', '2014-09-29 16:06:53', NULL, NULL, NULL, NULL, 'Intel HD Graphics 3000', 1),
	(7, 5, 2, NULL, 0, 'hp-elitebook-8560w', 3150.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:54', '2014-09-29 16:06:53', NULL, NULL, NULL, NULL, 'NVIDIA Quadro 2000M', 1),
	(8, 3, 2, NULL, 0, 'dell-alienware-m17x', 2850.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:54', '2014-09-29 16:06:54', NULL, NULL, NULL, NULL, 'AMD Radeon HD 6990M', 1),
	(9, 6, 2, NULL, 0, 'apple-macbook-pro-15-late-2011', 2600.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, 5, '2014-09-29 16:06:54', '2014-09-29 16:06:54', NULL, NULL, NULL, NULL, 'ATI Radeon HD 6770М', 1),
	(10, 1, 2, NULL, 0, 'lenovo-thinkpad-w520', 2450.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:54', '2014-09-29 16:06:54', NULL, NULL, NULL, NULL, 'NVIDIA Quadro 2000M', 1),
	(11, 7, 2, NULL, 0, 'sony-vaio-vpc-f13s8r', 1950.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:54', '2014-09-29 16:06:54', NULL, NULL, NULL, NULL, 'NVIDIA GeForce GT 425M', 1),
	(12, 8, 2, NULL, 0, 'acer-aspire-5943g-7748g75twiss', 2350.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:54', '2014-09-29 16:06:54', NULL, NULL, NULL, NULL, 'ATI Mobility Radeon HD 5850', 1),
	(13, 9, 3, NULL, 0, 'logitech-x-530', 99.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:55', '2014-09-29 16:06:54', NULL, NULL, NULL, NULL, NULL, 1),
	(14, 10, 3, NULL, 0, 'microlab-m-860', 89.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:55', '2014-09-29 16:06:55', NULL, NULL, NULL, NULL, NULL, 1),
	(15, 11, 3, NULL, 0, 'edifier-m3700', 115.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:55', '2014-09-29 16:06:55', NULL, NULL, NULL, NULL, NULL, 1),
	(16, 9, 3, NULL, 0, 'logitech-z-313', 84.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:55', '2014-09-29 16:06:55', NULL, NULL, NULL, NULL, NULL, 1),
	(17, 12, 3, NULL, 0, 'sven-sps-820', 55.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:55', '2014-09-29 16:06:55', NULL, NULL, NULL, NULL, NULL, 1),
	(18, 11, 3, NULL, 0, 'edifier-m1385', 67.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:55', '2014-09-29 16:06:55', NULL, NULL, NULL, NULL, NULL, 1),
	(19, 11, 3, NULL, 0, 'edifier-x600', 45.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:55', '2014-09-29 16:06:55', NULL, NULL, NULL, NULL, NULL, 1),
	(20, 10, 3, NULL, 0, 'microlab-fc-362', 85.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:55', '2014-09-29 16:06:55', NULL, NULL, NULL, NULL, NULL, 1),
	(21, 3, 4, NULL, 0, 'dell-u2412m', 240.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:56', '2014-09-29 16:06:56', NULL, NULL, NULL, NULL, NULL, 1),
	(22, 3, 4, NULL, 0, 'dell-u2312hm', 180.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:56', '2014-09-29 16:06:56', NULL, NULL, NULL, NULL, NULL, 1),
	(23, 13, 4, NULL, 0, 'lg-flatron-m2250d', 210.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:56', '2014-09-29 16:06:56', NULL, NULL, NULL, NULL, NULL, 1),
	(24, 13, 4, NULL, 0, 'lg-flatron-ips226v', 175.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:56', '2014-09-29 16:06:56', NULL, NULL, NULL, NULL, NULL, 1),
	(25, 14, 4, NULL, 0, 'samsung-syncmaster-s22a350n', 150.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:56', '2014-09-29 16:06:56', NULL, NULL, NULL, NULL, NULL, 1),
	(26, 15, 4, NULL, 0, 'philips-237e3qphsu', 160.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:56', '2014-09-29 16:06:56', NULL, NULL, NULL, NULL, NULL, 1),
	(27, 15, 4, NULL, 0, 'philips-227e3lsu', 190.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:56', '2014-09-29 16:06:56', NULL, NULL, NULL, NULL, NULL, 1),
	(28, 5, 4, NULL, 0, 'hp-zr2740w', 460.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:56', '2014-09-29 16:06:56', NULL, NULL, NULL, NULL, NULL, 1),
	(29, 5, 4, NULL, 0, 'hp-zr2440w', 380.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:57', '2014-09-29 16:06:57', NULL, NULL, NULL, NULL, NULL, 1),
	(30, 14, 5, NULL, 0, 'samsung-galaxy-ace-ii', 390.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:57', '2014-09-29 16:06:57', NULL, NULL, NULL, NULL, NULL, 1),
	(31, 16, 5, NULL, 0, 'htc-one-xl', 425.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, 6, '2014-09-29 16:06:57', '2014-09-29 16:06:57', NULL, NULL, NULL, NULL, NULL, 1),
	(32, 16, 5, NULL, 0, 'htc-sensation-xl', 480.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:57', '2014-09-29 16:06:57', NULL, NULL, NULL, NULL, NULL, 1),
	(33, 6, 5, NULL, 0, 'apple-iphone-4s-16gb', 675.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:57', '2014-09-29 16:06:57', NULL, NULL, NULL, NULL, NULL, 1),
	(34, 6, 5, NULL, 0, 'apple-iphone-3gs-8gb', 425.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:57', '2014-09-29 16:06:57', NULL, NULL, NULL, NULL, NULL, 1),
	(35, 6, 5, NULL, 0, 'apple-iphone-4-16gb', 550.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:57', '2014-09-29 16:06:57', NULL, NULL, NULL, NULL, NULL, 1),
	(36, 17, 5, NULL, 0, 'nokia-n9', 425.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, 8, '2014-09-29 16:06:58', '2014-09-29 16:06:57', NULL, NULL, NULL, NULL, NULL, 1),
	(37, 18, 5, NULL, 0, 'blackberry-bold-9900', 445.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:58', '2014-09-29 16:06:58', NULL, NULL, NULL, NULL, NULL, 1),
	(38, 18, 5, NULL, 0, 'blackberry-bold-9780', 379.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:58', '2014-09-29 16:06:58', NULL, NULL, NULL, NULL, NULL, 1),
	(39, 6, 6, NULL, 0, 'apple-ipad-2-16gb-wi-fi--3g', 430.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, 8, '2014-09-29 16:06:58', '2014-09-29 16:06:58', NULL, NULL, NULL, NULL, NULL, 1),
	(40, 6, 6, NULL, 0, 'apple-ipad-2-64gb-wi-fi--3g', 560.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:58', '2014-09-29 16:06:58', NULL, NULL, NULL, NULL, NULL, 1),
	(41, 14, 6, NULL, 0, 'samsung-galaxy-tab-70-plus-p6200-16gb', 350.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:58', '2014-09-29 16:06:58', NULL, NULL, NULL, NULL, NULL, 1),
	(42, 8, 6, NULL, 0, 'acer-iconia-tab-a100-8gb', 365.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:58', '2014-09-29 16:06:58', NULL, NULL, NULL, NULL, NULL, 1),
	(43, 2, 6, NULL, 0, 'asus-transformer-pad-prime-201-64gb', 495.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:59', '2014-09-29 16:06:59', NULL, NULL, NULL, NULL, NULL, 1),
	(44, 14, 6, NULL, 0, 'samsung-galaxy-tab-101-p7500-16gb', 475.00, 0.00, 1, '', '', '', 0, 1, 1, NULL, '2014-09-29 16:06:59', '2014-10-03 16:45:21', NULL, NULL, NULL, '', NULL, 1),
	(46, NULL, 7, NULL, 0, 'test', 10000.00, 0.00, 1, '', '', '', 10, 1, 1, NULL, '2014-10-03 16:51:37', '2014-10-10 14:37:53', NULL, NULL, NULL, '', NULL, 1),
	(47, NULL, 7, 24, 0, 'acura', 11000.00, 0.00, 1, '', '', '', 10, 1, 1, NULL, '2014-10-08 10:14:57', '2014-10-10 14:37:17', NULL, NULL, NULL, '', NULL, 1),
	(48, NULL, 7, 1, 0, 'skoda-octavia', 10000000.00, 0.00, 1, '', '', '', 1, 1, 1, NULL, '2014-10-10 14:49:32', '2014-10-10 14:49:32', NULL, NULL, NULL, '', NULL, 1),
	(49, NULL, 7, NULL, 0, 'toyota-highlander', 300000.00, 0.00, 1, '', '', '', 0, 1, 1, NULL, '2014-10-10 15:33:26', '2014-10-11 11:52:21', NULL, NULL, NULL, '', NULL, 2),
	(50, NULL, 7, NULL, 0, 'man-gruzovie-tgs-19360', 70000.00, 0.00, 1, '', '', '', 0, 1, 1, NULL, '2014-10-10 15:56:01', '2014-10-10 15:57:19', NULL, NULL, NULL, '', NULL, 1),
	(51, NULL, 7, NULL, 0, 'scania-gruzovie-p340', 8000.00, 0.00, 1, '', '', '', 0, 1, 1, NULL, '2014-10-10 15:58:56', '2014-10-10 15:58:56', NULL, NULL, NULL, '', NULL, 2),
	(52, NULL, 7, 1, 0, 'mercedes-benz-gruzovie-axor-1843ls', 50000.00, 0.00, 1, '', '', '', 0, 1, 1, NULL, '2014-10-10 16:02:02', '2014-10-16 12:38:01', NULL, NULL, NULL, '', NULL, 2),
	(53, NULL, 7, 24, 0, 'mitsubishi-pajero-sport', 40000.00, 0.00, 1, '', '', '', 0, 1, 1, NULL, '2014-10-16 12:59:40', '2014-10-16 12:59:40', NULL, NULL, NULL, '', NULL, 1),
	(97, NULL, 7, 1, 0, 'test-20141020152053', 10000.00, 0.00, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-10-20 15:20:53', '2014-10-20 15:20:53', NULL, NULL, NULL, NULL, NULL, 1),
	(98, NULL, 7, 1, 0, 'test-20141020172307', 10000.00, 0.00, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-10-20 17:23:07', '2014-10-20 17:23:07', NULL, NULL, NULL, NULL, NULL, 1);
/*!40000 ALTER TABLE `StoreProduct` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StoreProductAttributeEAV
CREATE TABLE IF NOT EXISTS `StoreProductAttributeEAV` (
  `entity` int(11) unsigned NOT NULL,
  `attribute` varchar(250) DEFAULT '',
  `value` text,
  KEY `ikEntity` (`entity`),
  KEY `attribute` (`attribute`),
  KEY `value` (`value`(50))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreProductAttributeEAV: 231 rows
DELETE FROM `StoreProductAttributeEAV`;
/*!40000 ALTER TABLE `StoreProductAttributeEAV` DISABLE KEYS */;
INSERT INTO `StoreProductAttributeEAV` (`entity`, `attribute`, `value`) VALUES
	(1, 'processor_manufacturer', '86'),
	(1, 'freq', '87'),
	(1, 'memmory', '88'),
	(1, 'memmory_type', '89'),
	(1, 'screen', '90'),
	(1, 'screen_dimension', '91'),
	(2, 'processor_manufacturer', '86'),
	(2, 'freq', '87'),
	(2, 'memmory', '88'),
	(2, 'memmory_type', '89'),
	(2, 'screen', '90'),
	(2, 'screen_dimension', '91'),
	(3, 'processor_manufacturer', '92'),
	(3, 'freq', '93'),
	(3, 'memmory', '88'),
	(3, 'memmory_type', '89'),
	(3, 'screen', '90'),
	(3, 'screen_dimension', '91'),
	(4, 'processor_manufacturer', '86'),
	(4, 'freq', '94'),
	(4, 'memmory', '88'),
	(4, 'memmory_type', '89'),
	(4, 'screen', '90'),
	(4, 'screen_dimension', '91'),
	(5, 'processor_manufacturer', '86'),
	(5, 'freq', '95'),
	(5, 'memmory', '88'),
	(5, 'memmory_type', '89'),
	(5, 'screen', '90'),
	(5, 'screen_dimension', '91'),
	(6, 'processor_manufacturer', '86'),
	(6, 'freq', '95'),
	(6, 'memmory', '88'),
	(6, 'memmory_type', '89'),
	(6, 'screen', '90'),
	(6, 'screen_dimension', '91'),
	(7, 'processor_manufacturer', '96'),
	(7, 'freq', '97'),
	(7, 'memmory', '98'),
	(7, 'memmory_type', '89'),
	(7, 'screen', '90'),
	(7, 'screen_dimension', '99'),
	(8, 'processor_manufacturer', '96'),
	(8, 'freq', '100'),
	(8, 'memmory', '98'),
	(8, 'memmory_type', '89'),
	(8, 'screen', '90'),
	(8, 'screen_dimension', '101'),
	(9, 'processor_manufacturer', '96'),
	(9, 'freq', '97'),
	(9, 'memmory', '102'),
	(9, 'memmory_type', '89'),
	(9, 'screen', '103'),
	(9, 'screen_dimension', '99'),
	(10, 'processor_manufacturer', '96'),
	(10, 'freq', '100'),
	(10, 'memmory', '102'),
	(10, 'memmory_type', '89'),
	(10, 'screen', '90'),
	(10, 'screen_dimension', '99'),
	(11, 'processor_manufacturer', '104'),
	(11, 'freq', '105'),
	(11, 'memmory', '102'),
	(11, 'memmory_type', '89'),
	(11, 'screen', '106'),
	(11, 'screen_dimension', '99'),
	(12, 'processor_manufacturer', '96'),
	(12, 'freq', '107'),
	(12, 'memmory', '98'),
	(12, 'memmory_type', '89'),
	(12, 'screen', '90'),
	(12, 'screen_dimension', '99'),
	(13, 'rms_power', '108'),
	(13, 'corpus_material', '109'),
	(13, 'sound_type', '110'),
	(14, 'rms_power', '111'),
	(14, 'corpus_material', '109'),
	(14, 'sound_type', '110'),
	(15, 'rms_power', '112'),
	(15, 'corpus_material', '113'),
	(15, 'sound_type', '110'),
	(16, 'rms_power', '114'),
	(16, 'corpus_material', '109'),
	(16, 'sound_type', '115'),
	(17, 'rms_power', '116'),
	(17, 'corpus_material', '113'),
	(17, 'sound_type', '115'),
	(18, 'rms_power', '117'),
	(18, 'corpus_material', '113'),
	(18, 'sound_type', '115'),
	(19, 'rms_power', '116'),
	(19, 'corpus_material', '113'),
	(19, 'sound_type', '115'),
	(20, 'rms_power', '111'),
	(20, 'corpus_material', '113'),
	(20, 'sound_type', '115'),
	(21, 'monitor_diagonal', '118'),
	(21, 'monitor_dimension', '119'),
	(21, 'view_angle', '120'),
	(22, 'monitor_diagonal', '121'),
	(22, 'monitor_dimension', '119'),
	(22, 'view_angle', '120'),
	(23, 'monitor_diagonal', '122'),
	(23, 'monitor_dimension', '119'),
	(23, 'view_angle', '123'),
	(24, 'monitor_diagonal', '122'),
	(24, 'monitor_dimension', '119'),
	(24, 'view_angle', '120'),
	(25, 'monitor_diagonal', '122'),
	(25, 'monitor_dimension', '119'),
	(25, 'view_angle', '123'),
	(26, 'monitor_diagonal', '121'),
	(26, 'monitor_dimension', '119'),
	(26, 'view_angle', '120'),
	(27, 'monitor_diagonal', '122'),
	(27, 'monitor_dimension', '119'),
	(27, 'view_angle', '120'),
	(28, 'monitor_diagonal', '124'),
	(28, 'monitor_dimension', '125'),
	(28, 'view_angle', '120'),
	(29, 'monitor_diagonal', '118'),
	(29, 'monitor_dimension', '119'),
	(29, 'view_angle', '120'),
	(30, 'phone_platform', '126'),
	(30, 'phone_weight', '127'),
	(30, 'phone_display', '128'),
	(30, 'phone_camera', '129'),
	(31, 'phone_platform', '126'),
	(31, 'phone_weight', '130'),
	(31, 'phone_display', '131'),
	(31, 'phone_camera', '132'),
	(32, 'phone_platform', '126'),
	(32, 'phone_weight', '133'),
	(32, 'phone_display', '131'),
	(32, 'phone_camera', '132'),
	(33, 'phone_platform', '134'),
	(33, 'phone_weight', '135'),
	(33, 'phone_display', '136'),
	(33, 'phone_camera', '132'),
	(34, 'phone_platform', '134'),
	(34, 'phone_weight', '137'),
	(34, 'phone_display', '136'),
	(34, 'phone_camera', '138'),
	(35, 'phone_platform', '134'),
	(35, 'phone_weight', '139'),
	(35, 'phone_display', '136'),
	(35, 'phone_camera', '129'),
	(36, 'phone_platform', '140'),
	(36, 'phone_weight', '137'),
	(36, 'phone_display', '141'),
	(36, 'phone_camera', '132'),
	(37, 'phone_platform', '142'),
	(37, 'phone_weight', '143'),
	(37, 'phone_display', '144'),
	(37, 'phone_camera', '129'),
	(38, 'phone_platform', '142'),
	(38, 'phone_weight', '145'),
	(38, 'phone_display', '146'),
	(38, 'phone_camera', '129'),
	(39, 'tablet_screen_size', '147'),
	(39, 'screen_dimension', '148'),
	(39, 'memmory_size', '149'),
	(39, 'weight', '150'),
	(40, 'tablet_screen_size', '147'),
	(40, 'screen_dimension', '148'),
	(40, 'memmory_size', '151'),
	(40, 'weight', '150'),
	(41, 'tablet_screen_size', '152'),
	(41, 'screen_dimension', '153'),
	(41, 'memmory_size', '149'),
	(41, 'weight', '154'),
	(42, 'tablet_screen_size', '152'),
	(42, 'screen_dimension', '153'),
	(42, 'memmory_size', '155'),
	(42, 'weight', '156'),
	(43, 'tablet_screen_size', '157'),
	(43, 'screen_dimension', '158'),
	(43, 'memmory_size', '151'),
	(43, 'weight', '159'),
	(44, 'weight', '160'),
	(44, 'memmory_size', '149'),
	(44, 'tablet_screen_size', '157'),
	(46, 'state', '169'),
	(46, 'kpp_type', '166'),
	(46, 'type_cuzov', '165'),
	(46, 'year_create', '2000'),
	(46, 'mark', '161'),
	(47, 'odometer', '10'),
	(47, 'state', '168'),
	(47, 'kpp_type', '166'),
	(47, 'type_cuzov', '163'),
	(47, 'year_create', '2005'),
	(47, 'mark', '162'),
	(47, 'uroven_sostoyaniya', '1'),
	(46, 'odometer', '10'),
	(46, 'uroven_sostoyaniya', '3'),
	(48, 'mark', '161'),
	(48, 'year_create', '2014'),
	(48, 'kpp_type', '166'),
	(48, 'state', '169'),
	(48, 'odometer', '7 200'),
	(48, 'uroven_sostoyaniya', '4'),
	(49, 'uroven_sostoyaniya', '3'),
	(49, 'odometer', '30000'),
	(49, 'state', '169'),
	(49, 'kpp_type', '166'),
	(49, 'type_cuzov', '163'),
	(49, 'mark', '176'),
	(50, 'state', '178'),
	(50, 'kpp_type', '167'),
	(50, 'year_create', '2010'),
	(50, 'mark', '161'),
	(50, 'odometer', '367000'),
	(50, 'uroven_sostoyaniya', '2'),
	(51, 'mark', '173'),
	(51, 'year_create', '2010'),
	(51, 'kpp_type', '167'),
	(51, 'state', '178'),
	(51, 'odometer', '415000'),
	(51, 'uroven_sostoyaniya', '2'),
	(52, 'odometer', '271000'),
	(52, 'state', '177'),
	(52, 'kpp_type', '167'),
	(52, 'mark', '173'),
	(52, 'uroven_sostoyaniya', '2'),
	(53, 'mark', '175'),
	(53, 'type_cuzov', '163'),
	(53, 'kpp_type', '166'),
	(53, 'state', '169'),
	(53, 'odometer', '90000'),
	(53, 'uroven_sostoyaniya', '3'),
	(97, 'odometer', '10'),
	(97, 'state', '168'),
	(97, 'kpp_type', '167'),
	(97, 'type_cuzov', '164'),
	(97, 'year_create', '2000'),
	(97, 'mark', '170'),
	(98, 'state', '177'),
	(98, 'kpp_type', '166'),
	(98, 'type_cuzov', '164'),
	(98, 'mark', '162'),
	(98, 'year_create', '1999'),
	(98, 'odometer', '2');
/*!40000 ALTER TABLE `StoreProductAttributeEAV` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StoreProductCategoryRef
CREATE TABLE IF NOT EXISTS `StoreProductCategoryRef` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `is_main` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`category`),
  KEY `product` (`product`),
  KEY `is_main` (`is_main`)
) ENGINE=MyISAM AUTO_INCREMENT=289 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreProductCategoryRef: 80 rows
DELETE FROM `StoreProductCategoryRef`;
/*!40000 ALTER TABLE `StoreProductCategoryRef` DISABLE KEYS */;
INSERT INTO `StoreProductCategoryRef` (`id`, `product`, `category`, `is_main`) VALUES
	(162, 1, 231, 1),
	(163, 1, 230, 0),
	(164, 2, 231, 1),
	(165, 2, 230, 0),
	(166, 3, 231, 1),
	(167, 3, 230, 0),
	(168, 4, 231, 1),
	(169, 4, 230, 0),
	(170, 5, 231, 1),
	(171, 5, 230, 0),
	(172, 6, 231, 1),
	(173, 6, 230, 0),
	(174, 7, 232, 1),
	(175, 7, 230, 0),
	(176, 8, 232, 1),
	(177, 8, 230, 0),
	(178, 9, 232, 1),
	(179, 9, 230, 0),
	(180, 10, 232, 1),
	(181, 10, 230, 0),
	(182, 11, 232, 1),
	(183, 11, 230, 0),
	(184, 12, 232, 1),
	(185, 12, 230, 0),
	(186, 13, 234, 1),
	(187, 13, 233, 0),
	(188, 14, 234, 1),
	(189, 14, 233, 0),
	(190, 15, 234, 1),
	(191, 15, 233, 0),
	(192, 16, 234, 1),
	(193, 16, 233, 0),
	(194, 17, 234, 1),
	(195, 17, 233, 0),
	(196, 18, 234, 1),
	(197, 18, 233, 0),
	(198, 19, 234, 1),
	(199, 19, 233, 0),
	(200, 20, 234, 1),
	(201, 20, 233, 0),
	(202, 21, 235, 1),
	(203, 22, 235, 1),
	(204, 23, 235, 1),
	(205, 24, 235, 1),
	(206, 25, 235, 1),
	(207, 26, 235, 1),
	(208, 27, 235, 1),
	(209, 28, 235, 1),
	(210, 29, 235, 1),
	(211, 30, 236, 1),
	(212, 31, 236, 1),
	(213, 32, 236, 1),
	(214, 33, 236, 1),
	(215, 34, 236, 1),
	(216, 35, 236, 1),
	(217, 36, 236, 1),
	(218, 37, 236, 1),
	(219, 38, 236, 1),
	(220, 39, 237, 1),
	(221, 39, 233, 0),
	(222, 40, 237, 1),
	(223, 40, 233, 0),
	(224, 41, 237, 1),
	(225, 41, 233, 0),
	(226, 42, 237, 1),
	(227, 42, 233, 0),
	(228, 43, 237, 1),
	(229, 43, 233, 0),
	(230, 44, 237, 1),
	(231, 44, 233, 0),
	(233, 46, 240, 1),
	(234, 47, 240, 1),
	(235, 48, 240, 1),
	(236, 49, 240, 1),
	(237, 50, 239, 1),
	(238, 51, 239, 1),
	(239, 52, 239, 1),
	(240, 53, 238, 0),
	(241, 53, 240, 1),
	(242, 53, 239, 0),
	(287, 97, 240, 1),
	(288, 98, 240, 1);
/*!40000 ALTER TABLE `StoreProductCategoryRef` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StoreProductConfigurableAttributes
CREATE TABLE IF NOT EXISTS `StoreProductConfigurableAttributes` (
  `product_id` int(11) NOT NULL COMMENT 'Attributes available to configure product',
  `attribute_id` int(11) NOT NULL,
  UNIQUE KEY `product_attribute_index` (`product_id`,`attribute_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreProductConfigurableAttributes: 0 rows
DELETE FROM `StoreProductConfigurableAttributes`;
/*!40000 ALTER TABLE `StoreProductConfigurableAttributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `StoreProductConfigurableAttributes` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StoreProductConfigurations
CREATE TABLE IF NOT EXISTS `StoreProductConfigurations` (
  `product_id` int(11) NOT NULL COMMENT 'Saves relations beetwen product and configurations',
  `configurable_id` int(11) NOT NULL,
  UNIQUE KEY `idsunique` (`product_id`,`configurable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreProductConfigurations: 0 rows
DELETE FROM `StoreProductConfigurations`;
/*!40000 ALTER TABLE `StoreProductConfigurations` DISABLE KEYS */;
/*!40000 ALTER TABLE `StoreProductConfigurations` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StoreProductImage
CREATE TABLE IF NOT EXISTS `StoreProductImage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  `is_main` tinyint(1) DEFAULT '0',
  `uploaded_by` int(11) DEFAULT NULL,
  `date_uploaded` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=220 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreProductImage: 70 rows
DELETE FROM `StoreProductImage`;
/*!40000 ALTER TABLE `StoreProductImage` DISABLE KEYS */;
INSERT INTO `StoreProductImage` (`id`, `product_id`, `name`, `is_main`, `uploaded_by`, `date_uploaded`, `title`) VALUES
	(140, 1, '1_807021547.jpg', 1, NULL, '2014-09-29 16:06:53', NULL),
	(141, 2, '2_-1695289383.jpg', 1, NULL, '2014-09-29 16:06:53', NULL),
	(142, 3, '3_1409629067.jpg', 1, NULL, '2014-09-29 16:06:53', NULL),
	(143, 4, '4_-1374359345.jpg', 1, NULL, '2014-09-29 16:06:53', NULL),
	(144, 5, '5_-904794547.jpg', 1, NULL, '2014-09-29 16:06:53', NULL),
	(145, 6, '6_-737219038.jpg', 1, NULL, '2014-09-29 16:06:53', NULL),
	(146, 7, '7_-1930628704.jpg', 1, NULL, '2014-09-29 16:06:54', NULL),
	(147, 8, '8_970986510.jpg', 1, NULL, '2014-09-29 16:06:54', NULL),
	(148, 9, '9_-2040977945.jpg', 1, NULL, '2014-09-29 16:06:54', NULL),
	(149, 10, '10_765859630.jpg', 1, NULL, '2014-09-29 16:06:54', NULL),
	(150, 11, '11_-207626905.jpg', 1, NULL, '2014-09-29 16:06:54', NULL),
	(151, 12, '12_319328855.jpg', 1, NULL, '2014-09-29 16:06:54', NULL),
	(152, 13, '13_-1514100326.jpg', 1, NULL, '2014-09-29 16:06:55', NULL),
	(153, 14, '14_-1758131356.jpg', 1, NULL, '2014-09-29 16:06:55', NULL),
	(154, 15, '15_-1071387759.jpg', 1, NULL, '2014-09-29 16:06:55', NULL),
	(155, 16, '16_-273282426.jpg', 1, NULL, '2014-09-29 16:06:55', NULL),
	(156, 17, '17_308658080.jpg', 1, NULL, '2014-09-29 16:06:55', NULL),
	(157, 18, '18_-1014205020.jpg', 1, NULL, '2014-09-29 16:06:55', NULL),
	(158, 19, '19_-1157574022.jpg', 1, NULL, '2014-09-29 16:06:55', NULL),
	(159, 20, '20_1325062797.jpg', 1, NULL, '2014-09-29 16:06:56', NULL),
	(160, 21, '21_1153042686.jpg', 1, NULL, '2014-09-29 16:06:56', NULL),
	(161, 22, '22_-732738285.jpg', 1, NULL, '2014-09-29 16:06:56', NULL),
	(162, 23, '23_1605052771.jpg', 1, NULL, '2014-09-29 16:06:56', NULL),
	(163, 24, '24_-1424384921.jpg', 1, NULL, '2014-09-29 16:06:56', NULL),
	(164, 25, '25_-136378456.jpg', 1, NULL, '2014-09-29 16:06:56', NULL),
	(165, 26, '26_-1186379621.jpg', 1, NULL, '2014-09-29 16:06:56', NULL),
	(166, 27, '27_-815540431.jpg', 1, NULL, '2014-09-29 16:06:56', NULL),
	(167, 28, '28_1972394015.jpg', 1, NULL, '2014-09-29 16:06:56', NULL),
	(168, 29, '29_-793226642.jpg', 1, NULL, '2014-09-29 16:06:57', NULL),
	(169, 30, '30_1329112235.jpg', 1, NULL, '2014-09-29 16:06:57', NULL),
	(170, 31, '31_-80538222.jpg', 1, NULL, '2014-09-29 16:06:57', NULL),
	(171, 32, '32_-1812234097.jpg', 1, NULL, '2014-09-29 16:06:57', NULL),
	(172, 33, '33_1741921719.jpg', 1, NULL, '2014-09-29 16:06:57', NULL),
	(173, 34, '34_2001546117.jpg', 1, NULL, '2014-09-29 16:06:57', NULL),
	(174, 35, '35_976854166.jpg', 1, NULL, '2014-09-29 16:06:57', NULL),
	(175, 36, '36_1519785989.jpg', 1, NULL, '2014-09-29 16:06:58', NULL),
	(176, 37, '37_-1810025623.jpg', 1, NULL, '2014-09-29 16:06:58', NULL),
	(177, 38, '38_1931080486.jpg', 1, NULL, '2014-09-29 16:06:58', NULL),
	(178, 39, '39_-1061156575.jpg', 1, NULL, '2014-09-29 16:06:58', NULL),
	(179, 40, '40_1317465838.jpg', 1, NULL, '2014-09-29 16:06:58', NULL),
	(180, 41, '41_-180341756.jpg', 1, NULL, '2014-09-29 16:06:58', NULL),
	(181, 42, '42_54009422.jpg', 1, NULL, '2014-09-29 16:06:58', NULL),
	(182, 43, '43_-2049254809.jpg', 1, NULL, '2014-09-29 16:06:59', NULL),
	(183, 44, '44_-213766250.jpg', 1, NULL, '2014-09-29 16:06:59', ''),
	(185, 46, '46_-1409636915.png', 1, 1, '2014-10-03 16:51:37', ''),
	(186, 47, '47_541213165.jpg', 1, 1, '2014-10-08 10:14:57', ''),
	(187, 48, '48_336680109.jpg', 1, 1, '2014-10-10 14:49:32', NULL),
	(188, 49, '49_1149700446.jpg', 1, 1, '2014-10-10 15:33:26', ''),
	(189, 49, '49_1080171023.jpg', 0, 1, '2014-10-10 15:33:26', ''),
	(190, 49, '49_-210170255.jpg', 0, 1, '2014-10-10 15:33:26', ''),
	(191, 49, '49_1019374735.jpg', 0, 1, '2014-10-10 15:33:26', ''),
	(192, 49, '49_1578581212.jpg', 0, 1, '2014-10-10 15:33:26', ''),
	(193, 50, '50_4247477.jpg', 1, 1, '2014-10-10 15:56:01', ''),
	(194, 50, '50_354482801.jpg', 0, 1, '2014-10-10 15:56:01', ''),
	(195, 50, '50_-607196969.jpg', 0, 1, '2014-10-10 15:56:01', ''),
	(196, 50, '50_1130507350.jpg', 0, 1, '2014-10-10 15:56:01', ''),
	(197, 51, '51_438449065.jpg', 1, 1, '2014-10-10 15:58:56', NULL),
	(198, 51, '51_480892199.jpg', 0, 1, '2014-10-10 15:58:56', NULL),
	(199, 51, '51_126070141.jpg', 0, 1, '2014-10-10 15:58:57', NULL),
	(200, 51, '51_-823148980.jpg', 0, 1, '2014-10-10 15:58:57', NULL),
	(201, 51, '51_-564099434.jpg', 0, 1, '2014-10-10 15:58:57', NULL),
	(202, 52, '52_1241689904.jpg', 1, 1, '2014-10-10 16:02:02', ''),
	(203, 52, '52_978314008.jpg', 0, 1, '2014-10-10 16:02:02', ''),
	(204, 52, '52_423837957.jpg', 0, 1, '2014-10-10 16:02:02', ''),
	(205, 52, '52_980618151.jpg', 0, 1, '2014-10-10 16:02:02', ''),
	(206, 52, '52_-935020389.jpg', 0, 1, '2014-10-10 16:02:02', ''),
	(207, 53, '53_-2142086434.jpg', 1, 1, '2014-10-16 12:59:40', NULL),
	(208, 53, '53_2087810381.jpg', 0, 1, '2014-10-16 12:59:40', NULL),
	(209, 53, '53_-269097316.jpg', 0, 1, '2014-10-16 12:59:40', NULL),
	(210, 53, '53_-56308007.jpg', 0, 1, '2014-10-16 12:59:40', NULL),
	(216, 97, '97_803880102.png', 0, 1, '2014-10-20 15:20:53', NULL),
	(215, 97, '97_344201856.png', 0, 1, '2014-10-20 15:20:53', NULL),
	(214, 97, '97_634199817.png', 1, 1, '2014-10-20 15:20:53', NULL),
	(217, 98, '98_-217673931.png', 1, 1, '2014-10-20 17:23:07', NULL),
	(218, 98, '98_-1192970656.png', 0, 1, '2014-10-20 17:23:07', NULL),
	(219, 98, '98_1062771657.png', 0, 1, '2014-10-20 17:23:07', NULL);
/*!40000 ALTER TABLE `StoreProductImage` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StoreProductTranslate
CREATE TABLE IF NOT EXISTS `StoreProductTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  `short_description` text,
  `full_description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=559 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreProductTranslate: 156 rows
DELETE FROM `StoreProductTranslate`;
/*!40000 ALTER TABLE `StoreProductTranslate` DISABLE KEYS */;
INSERT INTO `StoreProductTranslate` (`id`, `object_id`, `language_id`, `name`, `short_description`, `full_description`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
	(265, 1, 1, 'Lenovo B570', 'Celeron / Pentium, 1500-2200 МГц, 2048-4096 Мб, 320-500 Гб, 15.6 дюйм, Intel GMA HD, DVD-RW, Wi-Fi, Bluetooth (опционально), 2.35 кг', NULL, NULL, NULL, NULL),
	(266, 1, 9, 'Lenovo B570', 'Celeron / Pentium, 1500-2200 МГц, 2048-4096 Мб, 320-500 Гб, 15.6 дюйм, Intel GMA HD, DVD-RW, Wi-Fi, Bluetooth (опционально), 2.35 кг', NULL, NULL, NULL, NULL),
	(267, 2, 1, 'Lenovo G570', 'Celeron / Pentium, 1500-2200 МГц, 2048-4096 Мб, 320-500 Гб, 15.6 дюйм, ATI Radeon HD 6370M, DVD-RW, Wi-Fi, Bluetooth (опционально), 2.43 кг', NULL, NULL, NULL, NULL),
	(268, 2, 9, 'Lenovo G570', 'Celeron / Pentium, 1500-2200 МГц, 2048-4096 Мб, 320-500 Гб, 15.6 дюйм, ATI Radeon HD 6370M, DVD-RW, Wi-Fi, Bluetooth (опционально), 2.43 кг', NULL, NULL, NULL, NULL),
	(269, 3, 1, 'ASUS K53U', 'C-60 / E-240 / E-450, 1000-1650 МГц, 2048-4096 Мб, 320-500 Гб, 15.6 дюйм, DVD-RW, Wi-Fi, Bluetooth (опционально), 2.6 кг', NULL, NULL, NULL, NULL),
	(270, 3, 9, 'ASUS K53U', 'C-60 / E-240 / E-450, 1000-1650 МГц, 2048-4096 Мб, 320-500 Гб, 15.6 дюйм, DVD-RW, Wi-Fi, Bluetooth (опционально), 2.6 кг', NULL, NULL, NULL, NULL),
	(271, 4, 1, 'ASUS X54C', 'Celeron / Pentium, 1500-2200 МГц, 2048-4096 Мб, 320-500 Гб, 15.6 дюйм, Intel HD Graphics 3000, DVD-RW, Wi-Fi, Bluetooth, 2.6 кг', NULL, NULL, NULL, NULL),
	(272, 4, 9, 'ASUS X54C', 'Celeron / Pentium, 1500-2200 МГц, 2048-4096 Мб, 320-500 Гб, 15.6 дюйм, Intel HD Graphics 3000, DVD-RW, Wi-Fi, Bluetooth, 2.6 кг', NULL, NULL, NULL, NULL),
	(273, 5, 1, 'DELL INSPIRON N5050', 'Celeron, 1500-1700 МГц, 2048 Мб, 320-500 Гб, 15.6 дюйм, Intel HD Graphics 3000, DVD-RW, Wi-Fi, Bluetooth (опционально), 2.37 кг', NULL, NULL, NULL, NULL),
	(274, 5, 9, 'DELL INSPIRON N5050', 'Celeron, 1500-1700 МГц, 2048 Мб, 320-500 Гб, 15.6 дюйм, Intel HD Graphics 3000, DVD-RW, Wi-Fi, Bluetooth (опционально), 2.37 кг', NULL, NULL, NULL, NULL),
	(275, 6, 1, 'Fujitsu LIFEBOOK AH531', 'Celeron / Pentium, 1500-2200 МГц, 2048 Мб, 320 Гб, 15.6 дюйм, Intel HD Graphics 3000, DVD-RW, Wi-Fi, Bluetooth, 2.5 кг', NULL, NULL, NULL, NULL),
	(276, 6, 9, 'Fujitsu LIFEBOOK AH531', 'Celeron / Pentium, 1500-2200 МГц, 2048 Мб, 320 Гб, 15.6 дюйм, Intel HD Graphics 3000, DVD-RW, Wi-Fi, Bluetooth, 2.5 кг', NULL, NULL, NULL, NULL),
	(277, 7, 1, 'HP EliteBook 8560w', 'Core i7, 2500 МГц, 8192 Мб, 750 Гб, 15.6 дюйм, NVIDIA Quadro 2000M, BD-RE, Wi-Fi, Bluetooth, 3 кг', NULL, NULL, NULL, NULL),
	(278, 7, 9, 'HP EliteBook 8560w', 'Core i7, 2500 МГц, 8192 Мб, 750 Гб, 15.6 дюйм, NVIDIA Quadro 2000M, BD-RE, Wi-Fi, Bluetooth, 3 кг', NULL, NULL, NULL, NULL),
	(279, 8, 1, 'DELL ALIENWARE M17x', 'Core i7, 2200-2400 МГц, 8192-16384 Мб, 750-1500 Гб, 17 дюйм, AMD Radeon HD 6990M, BD-RE / Blu-Ray / DVD-RW, Wi-Fi, Bluetooth, 5.3 кг', NULL, NULL, NULL, NULL),
	(280, 8, 9, 'DELL ALIENWARE M17x', 'Core i7, 2200-2400 МГц, 8192-16384 Мб, 750-1500 Гб, 17 дюйм, AMD Radeon HD 6990M, BD-RE / Blu-Ray / DVD-RW, Wi-Fi, Bluetooth, 5.3 кг', NULL, NULL, NULL, NULL),
	(281, 9, 1, 'Apple MacBook Pro 15 Late 2011', 'Core i7, 2200-2400 МГц, 4096 Мб, 500-750 Гб, 15.4 дюйм, ATI Radeon HD 6750M / ATI Radeon HD 6770М, DVD-RW, Wi-Fi, Bluetooth, 2.54 кг', NULL, NULL, NULL, NULL),
	(282, 9, 9, 'Apple MacBook Pro 15 Late 2011', 'Core i7, 2200-2400 МГц, 4096 Мб, 500-750 Гб, 15.4 дюйм, ATI Radeon HD 6750M / ATI Radeon HD 6770М, DVD-RW, Wi-Fi, Bluetooth, 2.54 кг', NULL, NULL, NULL, NULL),
	(283, 10, 1, 'Lenovo THINKPAD W520', 'Core i7 / Core i7 Extreme, 2000-2700 МГц, 4096-8192 Мб, 160-580 Гб, 15.6 дюйм, NVIDIA Quadro 2000M, DVD-RW, Wi-Fi, Bluetooth, 2.45 кг', NULL, NULL, NULL, NULL),
	(284, 10, 9, 'Lenovo THINKPAD W520', 'Core i7 / Core i7 Extreme, 2000-2700 МГц, 4096-8192 Мб, 160-580 Гб, 15.6 дюйм, NVIDIA Quadro 2000M, DVD-RW, Wi-Fi, Bluetooth, 2.45 кг', NULL, NULL, NULL, NULL),
	(285, 11, 1, 'Sony VAIO VPC-F13S8R', 'Core i5, 2660 МГц, 4096 Мб, 640 Гб, 16.4 дюйм, NVIDIA GeForce GT 425M, Blu-Ray, Wi-Fi, Bluetooth, 3.1 кг', NULL, NULL, NULL, NULL),
	(286, 11, 9, 'Sony VAIO VPC-F13S8R', 'Core i5, 2660 МГц, 4096 Мб, 640 Гб, 16.4 дюйм, NVIDIA GeForce GT 425M, Blu-Ray, Wi-Fi, Bluetooth, 3.1 кг', NULL, NULL, NULL, NULL),
	(287, 12, 1, 'Acer ASPIRE 5943G-7748G75TWiss', 'Core i7, 1730 МГц, 8192 Мб, 750 Гб, 15.6 дюйм, ATI Mobility Radeon HD 5850, BD-RE, Wi-Fi, Bluetooth, 3.3 кг', NULL, NULL, NULL, NULL),
	(288, 12, 9, 'Acer ASPIRE 5943G-7748G75TWiss', 'Core i7, 1730 МГц, 8192 Мб, 750 Гб, 15.6 дюйм, ATI Mobility Radeon HD 5850, BD-RE, Wi-Fi, Bluetooth, 3.3 кг', NULL, NULL, NULL, NULL),
	(289, 13, 1, 'Logitech X-530', 'число каналов: 5.1, мощность 71.20 Вт, 40-20000 Гц, материал колонок: пластик, материал сабвуфера: MDF, разъем для наушников, магнитное экранирование', NULL, NULL, NULL, NULL),
	(290, 13, 9, 'Logitech X-530', 'число каналов: 5.1, мощность 71.20 Вт, 40-20000 Гц, материал колонок: пластик, материал сабвуфера: MDF, разъем для наушников, магнитное экранирование', NULL, NULL, NULL, NULL),
	(291, 14, 1, 'Microlab M-860', 'число каналов: 5.1, мощность 62 Вт, 30-20000 Гц, материал колонок: пластик, материал сабвуфера: MDF, магнитное экранирование, пульт ДУ', NULL, NULL, NULL, NULL),
	(292, 14, 9, 'Microlab M-860', 'число каналов: 5.1, мощность 62 Вт, 30-20000 Гц, материал колонок: пластик, материал сабвуфера: MDF, магнитное экранирование, пульт ДУ', NULL, NULL, NULL, NULL),
	(293, 15, 1, 'Edifier M3700', 'число каналов: 5.1, мощность 80 Вт, 45-20000 Гц, материал колонок: MDF, материал сабвуфера: MDF, магнитное экранирование, пульт ДУ', NULL, NULL, NULL, NULL),
	(294, 15, 9, 'Edifier M3700', 'число каналов: 5.1, мощность 80 Вт, 45-20000 Гц, материал колонок: MDF, материал сабвуфера: MDF, магнитное экранирование, пульт ДУ', NULL, NULL, NULL, NULL),
	(295, 16, 1, 'Logitech Z-313', 'число каналов: 2.1, мощность 25 Вт, 48-20000 Гц, материал колонок: пластик, материал сабвуфера: MDF', NULL, NULL, NULL, NULL),
	(296, 16, 9, 'Logitech Z-313', 'число каналов: 2.1, мощность 25 Вт, 48-20000 Гц, материал колонок: пластик, материал сабвуфера: MDF', NULL, NULL, NULL, NULL),
	(297, 17, 1, 'Sven SPS-820', 'число каналов: 2.1, мощность 38 Вт, 50-20000 Гц, материал колонок: MDF, материал сабвуфера: MDF, магнитное экранирование', NULL, NULL, NULL, NULL),
	(298, 17, 9, 'Sven SPS-820', 'число каналов: 2.1, мощность 38 Вт, 50-20000 Гц, материал колонок: MDF, материал сабвуфера: MDF, магнитное экранирование', NULL, NULL, NULL, NULL),
	(299, 18, 1, 'Edifier M1385', 'число каналов: 2.1, мощность 28 Вт, материал сабвуфера: MDF, разъем для наушников, магнитное экранирование, радио', NULL, NULL, NULL, NULL),
	(300, 18, 9, 'Edifier M1385', 'число каналов: 2.1, мощность 28 Вт, материал сабвуфера: MDF, разъем для наушников, магнитное экранирование, радио', NULL, NULL, NULL, NULL),
	(301, 19, 1, 'Edifier X600', 'число каналов: 2.1, мощность 30 Вт, 48-20000 Гц, материал колонок: MDF, материал сабвуфера: MDF, магнитное экранирование', NULL, NULL, NULL, NULL),
	(302, 19, 9, 'Edifier X600', 'число каналов: 2.1, мощность 30 Вт, 48-20000 Гц, материал колонок: MDF, материал сабвуфера: MDF, магнитное экранирование', NULL, NULL, NULL, NULL),
	(303, 20, 1, 'Microlab FC 362', 'число каналов: 2.1, мощность 54 Вт, 35-20000 Гц, материал сабвуфера: MDF, разъем для наушников', NULL, NULL, NULL, NULL),
	(304, 20, 9, 'Microlab FC 362', 'число каналов: 2.1, мощность 54 Вт, 35-20000 Гц, материал сабвуфера: MDF, разъем для наушников', NULL, NULL, NULL, NULL),
	(305, 21, 1, 'DELL U2412M', 'ЖК (TFT E-IPS) 24", широкоформатный, 1920x1200, LED-подсветка, 300 кд/м2, 1000:1, 8 мс, 178°/178°, USB-концентратор, DVI, DisplayPort, VGA', NULL, NULL, NULL, NULL),
	(306, 21, 9, 'DELL U2412M', 'ЖК (TFT E-IPS) 24", широкоформатный, 1920x1200, LED-подсветка, 300 кд/м2, 1000:1, 8 мс, 178°/178°, USB-концентратор, DVI, DisplayPort, VGA', NULL, NULL, NULL, NULL),
	(307, 22, 1, 'DELL U2312HM', 'ЖК (TFT IPS) 23", широкоформатный, 1920x1080, LED-подсветка, 300 кд/м2, 1000:1, 8 мс, 178°/178°, USB-концентратор, DVI, DisplayPort, VGA', NULL, NULL, NULL, NULL),
	(308, 22, 9, 'DELL U2312HM', 'ЖК (TFT IPS) 23", широкоформатный, 1920x1080, LED-подсветка, 300 кд/м2, 1000:1, 8 мс, 178°/178°, USB-концентратор, DVI, DisplayPort, VGA', NULL, NULL, NULL, NULL),
	(309, 23, 1, 'LG Flatron M2250D', 'ЖК (TFT TN) 21.5", широкоформатный, 1920x1080, LED-подсветка, 250 кд/м2, 5 мс, 170°/160°, стереоколонки, ТВ-тюнер, HDMI, VGA, композитный вход, компонентный вход, SCART', NULL, NULL, NULL, NULL),
	(310, 23, 9, 'LG Flatron M2250D', 'ЖК (TFT TN) 21.5", широкоформатный, 1920x1080, LED-подсветка, 250 кд/м2, 5 мс, 170°/160°, стереоколонки, ТВ-тюнер, HDMI, VGA, композитный вход, компонентный вход, SCART', NULL, NULL, NULL, NULL),
	(311, 24, 1, 'LG Flatron IPS226V', 'ЖК (TFT E-IPS) 21.5", широкоформатный, 1920x1080, LED-подсветка, 250 кд/м2, 1000:1, 5 мс, 178°/178°, DVI, HDMI, VGA', NULL, NULL, NULL, NULL),
	(312, 24, 9, 'LG Flatron IPS226V', 'ЖК (TFT E-IPS) 21.5", широкоформатный, 1920x1080, LED-подсветка, 250 кд/м2, 1000:1, 5 мс, 178°/178°, DVI, HDMI, VGA', NULL, NULL, NULL, NULL),
	(313, 25, 1, 'Samsung SyncMaster S22A350N', 'ЖК (TFT TN) 21.5", широкоформатный, 1920x1080, LED-подсветка, 250 кд/м2, 1000:1, 5 мс, 170°/160°, VGA', NULL, NULL, NULL, NULL),
	(314, 25, 9, 'Samsung SyncMaster S22A350N', 'ЖК (TFT TN) 21.5", широкоформатный, 1920x1080, LED-подсветка, 250 кд/м2, 1000:1, 5 мс, 170°/160°, VGA', NULL, NULL, NULL, NULL),
	(315, 26, 1, 'Philips 237E3QPHSU', 'ЖК (TFT IPS) 23", широкоформатный, 1920x1080, LED-подсветка, 250 кд/м2, 1000:1, 5 мс, 178°/178°, HDMI x2, VGA', NULL, NULL, NULL, NULL),
	(316, 26, 9, 'Philips 237E3QPHSU', 'ЖК (TFT IPS) 23", широкоформатный, 1920x1080, LED-подсветка, 250 кд/м2, 1000:1, 5 мс, 178°/178°, HDMI x2, VGA', NULL, NULL, NULL, NULL),
	(317, 27, 1, 'Philips 227E3LSU', 'ЖК (TFT TN) 21.5", широкоформатный, 1920x1080, LED-подсветка, 250 кд/м2, 1000:1, 5 мс, DVI, VGA', NULL, NULL, NULL, NULL),
	(318, 27, 9, 'Philips 227E3LSU', 'ЖК (TFT TN) 21.5", широкоформатный, 1920x1080, LED-подсветка, 250 кд/м2, 1000:1, 5 мс, DVI, VGA', NULL, NULL, NULL, NULL),
	(319, 28, 1, 'HP ZR2740w', 'ЖК (TFT IPS) 27", широкоформатный, 2560x1440, LED-подсветка, 380 кд/м2, 1000:1, 12 мс, 178°/178°, USB-концентратор, DVI, DisplayPort', NULL, NULL, NULL, NULL),
	(320, 28, 9, 'HP ZR2740w', 'ЖК (TFT IPS) 27", широкоформатный, 2560x1440, LED-подсветка, 380 кд/м2, 1000:1, 12 мс, 178°/178°, USB-концентратор, DVI, DisplayPort', NULL, NULL, NULL, NULL),
	(321, 29, 1, 'HP ZR2440w', 'ЖК (TFT IPS) 24", широкоформатный, 1920x1200, LED-подсветка, 350 кд/м2, 1000:1, 6 мс, 178°/178°, USB-концентратор, DVI, HDMI, DisplayPort', NULL, NULL, NULL, NULL),
	(322, 29, 9, 'HP ZR2440w', 'ЖК (TFT IPS) 24", широкоформатный, 1920x1200, LED-подсветка, 350 кд/м2, 1000:1, 6 мс, 178°/178°, USB-концентратор, DVI, HDMI, DisplayPort', NULL, NULL, NULL, NULL),
	(323, 30, 1, 'Samsung Galaxy Ace II', 'GSM, 3G, смартфон, Android 2.3, вес 118 г, ШхВхТ: 62.3x118.3x10.5 мм, экран 3.8", 480x800, FM-радио, Bluetooth, Wi-Fi, GPS, ГЛОНАСС, фотокамера 5 МП, память 4 Гб, слот microSD (TransFlash), аккумулятор 1500 мАч', NULL, NULL, NULL, NULL),
	(324, 30, 9, 'Samsung Galaxy Ace II', 'GSM, 3G, смартфон, Android 2.3, вес 118 г, ШхВхТ: 62.3x118.3x10.5 мм, экран 3.8", 480x800, FM-радио, Bluetooth, Wi-Fi, GPS, ГЛОНАСС, фотокамера 5 МП, память 4 Гб, слот microSD (TransFlash), аккумулятор 1500 мАч', NULL, NULL, NULL, NULL),
	(325, 31, 1, 'HTC One XL', 'GSM, 3G, смартфон, Android 4.0, вес 129 г, ШхВхТ: 69.9x134.8x8.9 мм, экран 4.7", 720x1280, FM-радио, Bluetooth, Wi-Fi, GPS, фотокамера 8 МП, память 32 Гб, аккумулятор 1800 мАч', NULL, NULL, NULL, NULL),
	(326, 31, 9, 'HTC One XL', 'GSM, 3G, смартфон, Android 4.0, вес 129 г, ШхВхТ: 69.9x134.8x8.9 мм, экран 4.7", 720x1280, FM-радио, Bluetooth, Wi-Fi, GPS, фотокамера 8 МП, память 32 Гб, аккумулятор 1800 мАч', NULL, NULL, NULL, NULL),
	(327, 32, 1, 'HTC Sensation XL', 'GSM, 3G, смартфон, Android 2.3, вес 162 г, ШхВхТ: 70.7x132.5x9.9 мм, экран 4.7", 480x800, FM-радио, Bluetooth, Wi-Fi, GPS, фотокамера 8 МП, память 16 Гб, аккумулятор 1600 мАч', NULL, NULL, NULL, NULL),
	(328, 32, 9, 'HTC Sensation XL', 'GSM, 3G, смартфон, Android 2.3, вес 162 г, ШхВхТ: 70.7x132.5x9.9 мм, экран 4.7", 480x800, FM-радио, Bluetooth, Wi-Fi, GPS, фотокамера 8 МП, память 16 Гб, аккумулятор 1600 мАч', NULL, NULL, NULL, NULL),
	(329, 33, 1, 'Apple iPhone 4S 16Gb', 'GSM, CDMA800, CDMA1900, 3G, смартфон, iOS 5, вес 140 г, ШхВхТ: 58.6x115.2x9.3 мм, экран 3.5", 640x960, Bluetooth, Wi-Fi, GPS, ГЛОНАСС, фотокамера 8 МП, память 16 Гб', NULL, NULL, NULL, NULL),
	(330, 33, 9, 'Apple iPhone 4S 16Gb', 'GSM, CDMA800, CDMA1900, 3G, смартфон, iOS 5, вес 140 г, ШхВхТ: 58.6x115.2x9.3 мм, экран 3.5", 640x960, Bluetooth, Wi-Fi, GPS, ГЛОНАСС, фотокамера 8 МП, память 16 Гб', NULL, NULL, NULL, NULL),
	(331, 34, 1, 'Apple iPhone 3GS 8Gb', 'GSM, 3G, смартфон, iOS, вес 135 г, ШхВхТ: 62x116x12 мм, экран 3.5", 320x480, Bluetooth, Wi-Fi, GPS, фотокамера 3 МП, память 8 Гб', NULL, NULL, NULL, NULL),
	(332, 34, 9, 'Apple iPhone 3GS 8Gb', 'GSM, 3G, смартфон, iOS, вес 135 г, ШхВхТ: 62x116x12 мм, экран 3.5", 320x480, Bluetooth, Wi-Fi, GPS, фотокамера 3 МП, память 8 Гб', NULL, NULL, NULL, NULL),
	(333, 35, 1, 'Apple iPhone 4 16Gb', 'GSM, 3G, смартфон, iOS 4, вес 137 г, ШхВхТ: 59x115x9 мм, экран 3.5", 640x960, Bluetooth, Wi-Fi, GPS, фотокамера 5 МП, память 16 Гб', NULL, NULL, NULL, NULL),
	(334, 35, 9, 'Apple iPhone 4 16Gb', 'GSM, 3G, смартфон, iOS 4, вес 137 г, ШхВхТ: 59x115x9 мм, экран 3.5", 640x960, Bluetooth, Wi-Fi, GPS, фотокамера 5 МП, память 16 Гб', NULL, NULL, NULL, NULL),
	(335, 36, 1, 'Nokia N9', 'GSM, 3G, смартфон, MeeGo 1.2, вес 135 г, ШхВхТ: 61x116x12 мм, экран 3.9", 480x854, Bluetooth, Wi-Fi, GPS, фотокамера 8 МП, аккумулятор 1450 мАч', NULL, NULL, NULL, NULL),
	(336, 36, 9, 'Nokia N9', 'GSM, 3G, смартфон, MeeGo 1.2, вес 135 г, ШхВхТ: 61x116x12 мм, экран 3.9", 480x854, Bluetooth, Wi-Fi, GPS, фотокамера 8 МП, аккумулятор 1450 мАч', NULL, NULL, NULL, NULL),
	(337, 37, 1, 'BlackBerry Bold 9900', 'GSM, 3G, смартфон, BlackBerry OS, вес 130 г, ШхВхТ: 66x115x11 мм, экран 2.8", 640x480, Bluetooth, Wi-Fi, GPS, фотокамера 5 МП, память 8 Гб, слот microSD (TransFlash), аккумулятор 1230 мАч', NULL, NULL, NULL, NULL),
	(338, 37, 9, 'BlackBerry Bold 9900', 'GSM, 3G, смартфон, BlackBerry OS, вес 130 г, ШхВхТ: 66x115x11 мм, экран 2.8", 640x480, Bluetooth, Wi-Fi, GPS, фотокамера 5 МП, память 8 Гб, слот microSD (TransFlash), аккумулятор 1230 мАч', NULL, NULL, NULL, NULL),
	(339, 38, 1, 'BlackBerry Bold 9780', 'GSM, 3G, смартфон, BlackBerry OS, вес 122 г, ШхВхТ: 60x109x14 мм, экран 2.4", 480x360, Bluetooth, Wi-Fi, GPS, фотокамера 5 МП, память 256 Мб, слот microSD (TransFlash), аккумулятор 1500 мАч', NULL, NULL, NULL, NULL),
	(340, 38, 9, 'BlackBerry Bold 9780', 'GSM, 3G, смартфон, BlackBerry OS, вес 122 г, ШхВхТ: 60x109x14 мм, экран 2.4", 480x360, Bluetooth, Wi-Fi, GPS, фотокамера 5 МП, память 256 Мб, слот microSD (TransFlash), аккумулятор 1500 мАч', NULL, NULL, NULL, NULL),
	(341, 39, 1, 'Apple iPad 2 16Gb Wi-Fi + 3G', 'экран 9.7", 1024x768, емкостный, мультитач, iOS, встроенная память 16 Гб, Wi-Fi, Bluetooth, 3G, GPS, гироскоп, две фотокамеры, вес 613 г', NULL, NULL, NULL, NULL),
	(342, 39, 9, 'Apple iPad 2 16Gb Wi-Fi + 3G', 'экран 9.7", 1024x768, емкостный, мультитач, iOS, встроенная память 16 Гб, Wi-Fi, Bluetooth, 3G, GPS, гироскоп, две фотокамеры, вес 613 г', NULL, NULL, NULL, NULL),
	(343, 40, 1, 'Apple iPad 2 64Gb Wi-Fi + 3G', 'экран 9.7", 1024x768, емкостный, мультитач, iOS, встроенная память 64 Гб, Wi-Fi, Bluetooth, 3G, GPS, гироскоп, две фотокамеры, вес 613 г', NULL, NULL, NULL, NULL),
	(344, 40, 9, 'Apple iPad 2 64Gb Wi-Fi + 3G', 'экран 9.7", 1024x768, емкостный, мультитач, iOS, встроенная память 64 Гб, Wi-Fi, Bluetooth, 3G, GPS, гироскоп, две фотокамеры, вес 613 г', NULL, NULL, NULL, NULL),
	(345, 41, 1, 'Samsung Galaxy Tab 7.0 Plus P6200 16GB', 'экран 7", 1024x600, емкостный, мультитач, Android 3.2, встроенная память 16 Гб, microSDHC, Wi-Fi, Bluetooth, 3G, GPS, гироскоп, две фотокамеры, подключение к компьютеру по USB, вес 343 г', NULL, NULL, NULL, NULL),
	(346, 41, 9, 'Samsung Galaxy Tab 7.0 Plus P6200 16GB', 'экран 7", 1024x600, емкостный, мультитач, Android 3.2, встроенная память 16 Гб, microSDHC, Wi-Fi, Bluetooth, 3G, GPS, гироскоп, две фотокамеры, подключение к компьютеру по USB, вес 343 г', NULL, NULL, NULL, NULL),
	(347, 42, 1, 'Acer Iconia Tab A100 8Gb', 'экран 7", 1024x600, емкостный, мультитач, Android 3.2, встроенная память 8 Гб, microSDHC, Wi-Fi, Bluetooth, GPS, гироскоп, две фотокамеры, HDMI, подключение к компьютеру по USB, вес 410 г', NULL, NULL, NULL, NULL),
	(348, 42, 9, 'Acer Iconia Tab A100 8Gb', 'экран 7", 1024x600, емкостный, мультитач, Android 3.2, встроенная память 8 Гб, microSDHC, Wi-Fi, Bluetooth, GPS, гироскоп, две фотокамеры, HDMI, подключение к компьютеру по USB, вес 410 г', NULL, NULL, NULL, NULL),
	(349, 43, 1, 'Asus Transformer Pad Prime 201 64Gb', 'экран 10.1", 1280x800, емкостный, мультитач, Android 4.0, встроенная память 64 Гб, microSD, Wi-Fi, Bluetooth, гироскоп, две фотокамеры, micro HDMI, подключение к компьютеру по USB, вес 586 г', NULL, NULL, NULL, NULL),
	(350, 43, 9, 'Asus Transformer Pad Prime 201 64Gb', 'экран 10.1", 1280x800, емкостный, мультитач, Android 4.0, встроенная память 64 Гб, microSD, Wi-Fi, Bluetooth, гироскоп, две фотокамеры, micro HDMI, подключение к компьютеру по USB, вес 586 г', NULL, NULL, NULL, NULL),
	(351, 44, 1, 'Samsung Galaxy Tab 10.1 P7500 16Gb', 'экран 10.1", 1280x800, емкостный, мультитач, Android 3.1, встроенная память 16 Гб, Wi-Fi, Bluetooth, 3G, GPS, гироскоп, две фотокамеры, подключение к компьютеру по USB, вес 565 г', '', '', '', ''),
	(352, 44, 9, 'Samsung Galaxy Tab 10.1 P7500 16Gb', 'экран 10.1", 1280x800, емкостный, мультитач, Android 3.1, встроенная память 16 Гб, Wi-Fi, Bluetooth, 3G, GPS, гироскоп, две фотокамеры, подключение к компьютеру по USB, вес 565 г', NULL, NULL, NULL, NULL),
	(353, 1, 10, 'Lenovo B570', 'Celeron / Pentium, 1500-2200 МГц, 2048-4096 Мб, 320-500 Гб, 15.6 дюйм, Intel GMA HD, DVD-RW, Wi-Fi, Bluetooth (опционально), 2.35 кг', NULL, NULL, NULL, NULL),
	(354, 2, 10, 'Lenovo G570', 'Celeron / Pentium, 1500-2200 МГц, 2048-4096 Мб, 320-500 Гб, 15.6 дюйм, ATI Radeon HD 6370M, DVD-RW, Wi-Fi, Bluetooth (опционально), 2.43 кг', NULL, NULL, NULL, NULL),
	(355, 3, 10, 'ASUS K53U', 'C-60 / E-240 / E-450, 1000-1650 МГц, 2048-4096 Мб, 320-500 Гб, 15.6 дюйм, DVD-RW, Wi-Fi, Bluetooth (опционально), 2.6 кг', NULL, NULL, NULL, NULL),
	(356, 4, 10, 'ASUS X54C', 'Celeron / Pentium, 1500-2200 МГц, 2048-4096 Мб, 320-500 Гб, 15.6 дюйм, Intel HD Graphics 3000, DVD-RW, Wi-Fi, Bluetooth, 2.6 кг', NULL, NULL, NULL, NULL),
	(357, 5, 10, 'DELL INSPIRON N5050', 'Celeron, 1500-1700 МГц, 2048 Мб, 320-500 Гб, 15.6 дюйм, Intel HD Graphics 3000, DVD-RW, Wi-Fi, Bluetooth (опционально), 2.37 кг', NULL, NULL, NULL, NULL),
	(358, 6, 10, 'Fujitsu LIFEBOOK AH531', 'Celeron / Pentium, 1500-2200 МГц, 2048 Мб, 320 Гб, 15.6 дюйм, Intel HD Graphics 3000, DVD-RW, Wi-Fi, Bluetooth, 2.5 кг', NULL, NULL, NULL, NULL),
	(359, 7, 10, 'HP EliteBook 8560w', 'Core i7, 2500 МГц, 8192 Мб, 750 Гб, 15.6 дюйм, NVIDIA Quadro 2000M, BD-RE, Wi-Fi, Bluetooth, 3 кг', NULL, NULL, NULL, NULL),
	(360, 8, 10, 'DELL ALIENWARE M17x', 'Core i7, 2200-2400 МГц, 8192-16384 Мб, 750-1500 Гб, 17 дюйм, AMD Radeon HD 6990M, BD-RE / Blu-Ray / DVD-RW, Wi-Fi, Bluetooth, 5.3 кг', NULL, NULL, NULL, NULL),
	(361, 9, 10, 'Apple MacBook Pro 15 Late 2011', 'Core i7, 2200-2400 МГц, 4096 Мб, 500-750 Гб, 15.4 дюйм, ATI Radeon HD 6750M / ATI Radeon HD 6770М, DVD-RW, Wi-Fi, Bluetooth, 2.54 кг', NULL, NULL, NULL, NULL),
	(362, 10, 10, 'Lenovo THINKPAD W520', 'Core i7 / Core i7 Extreme, 2000-2700 МГц, 4096-8192 Мб, 160-580 Гб, 15.6 дюйм, NVIDIA Quadro 2000M, DVD-RW, Wi-Fi, Bluetooth, 2.45 кг', NULL, NULL, NULL, NULL),
	(363, 11, 10, 'Sony VAIO VPC-F13S8R', 'Core i5, 2660 МГц, 4096 Мб, 640 Гб, 16.4 дюйм, NVIDIA GeForce GT 425M, Blu-Ray, Wi-Fi, Bluetooth, 3.1 кг', NULL, NULL, NULL, NULL),
	(364, 12, 10, 'Acer ASPIRE 5943G-7748G75TWiss', 'Core i7, 1730 МГц, 8192 Мб, 750 Гб, 15.6 дюйм, ATI Mobility Radeon HD 5850, BD-RE, Wi-Fi, Bluetooth, 3.3 кг', NULL, NULL, NULL, NULL),
	(365, 13, 10, 'Logitech X-530', 'число каналов: 5.1, мощность 71.20 Вт, 40-20000 Гц, материал колонок: пластик, материал сабвуфера: MDF, разъем для наушников, магнитное экранирование', NULL, NULL, NULL, NULL),
	(366, 14, 10, 'Microlab M-860', 'число каналов: 5.1, мощность 62 Вт, 30-20000 Гц, материал колонок: пластик, материал сабвуфера: MDF, магнитное экранирование, пульт ДУ', NULL, NULL, NULL, NULL),
	(367, 15, 10, 'Edifier M3700', 'число каналов: 5.1, мощность 80 Вт, 45-20000 Гц, материал колонок: MDF, материал сабвуфера: MDF, магнитное экранирование, пульт ДУ', NULL, NULL, NULL, NULL),
	(368, 16, 10, 'Logitech Z-313', 'число каналов: 2.1, мощность 25 Вт, 48-20000 Гц, материал колонок: пластик, материал сабвуфера: MDF', NULL, NULL, NULL, NULL),
	(369, 17, 10, 'Sven SPS-820', 'число каналов: 2.1, мощность 38 Вт, 50-20000 Гц, материал колонок: MDF, материал сабвуфера: MDF, магнитное экранирование', NULL, NULL, NULL, NULL),
	(370, 18, 10, 'Edifier M1385', 'число каналов: 2.1, мощность 28 Вт, материал сабвуфера: MDF, разъем для наушников, магнитное экранирование, радио', NULL, NULL, NULL, NULL),
	(371, 19, 10, 'Edifier X600', 'число каналов: 2.1, мощность 30 Вт, 48-20000 Гц, материал колонок: MDF, материал сабвуфера: MDF, магнитное экранирование', NULL, NULL, NULL, NULL),
	(372, 20, 10, 'Microlab FC 362', 'число каналов: 2.1, мощность 54 Вт, 35-20000 Гц, материал сабвуфера: MDF, разъем для наушников', NULL, NULL, NULL, NULL),
	(373, 21, 10, 'DELL U2412M', 'ЖК (TFT E-IPS) 24", широкоформатный, 1920x1200, LED-подсветка, 300 кд/м2, 1000:1, 8 мс, 178°/178°, USB-концентратор, DVI, DisplayPort, VGA', NULL, NULL, NULL, NULL),
	(374, 22, 10, 'DELL U2312HM', 'ЖК (TFT IPS) 23", широкоформатный, 1920x1080, LED-подсветка, 300 кд/м2, 1000:1, 8 мс, 178°/178°, USB-концентратор, DVI, DisplayPort, VGA', NULL, NULL, NULL, NULL),
	(375, 23, 10, 'LG Flatron M2250D', 'ЖК (TFT TN) 21.5", широкоформатный, 1920x1080, LED-подсветка, 250 кд/м2, 5 мс, 170°/160°, стереоколонки, ТВ-тюнер, HDMI, VGA, композитный вход, компонентный вход, SCART', NULL, NULL, NULL, NULL),
	(376, 24, 10, 'LG Flatron IPS226V', 'ЖК (TFT E-IPS) 21.5", широкоформатный, 1920x1080, LED-подсветка, 250 кд/м2, 1000:1, 5 мс, 178°/178°, DVI, HDMI, VGA', NULL, NULL, NULL, NULL),
	(377, 25, 10, 'Samsung SyncMaster S22A350N', 'ЖК (TFT TN) 21.5", широкоформатный, 1920x1080, LED-подсветка, 250 кд/м2, 1000:1, 5 мс, 170°/160°, VGA', NULL, NULL, NULL, NULL),
	(378, 26, 10, 'Philips 237E3QPHSU', 'ЖК (TFT IPS) 23", широкоформатный, 1920x1080, LED-подсветка, 250 кд/м2, 1000:1, 5 мс, 178°/178°, HDMI x2, VGA', NULL, NULL, NULL, NULL),
	(379, 27, 10, 'Philips 227E3LSU', 'ЖК (TFT TN) 21.5", широкоформатный, 1920x1080, LED-подсветка, 250 кд/м2, 1000:1, 5 мс, DVI, VGA', NULL, NULL, NULL, NULL),
	(380, 28, 10, 'HP ZR2740w', 'ЖК (TFT IPS) 27", широкоформатный, 2560x1440, LED-подсветка, 380 кд/м2, 1000:1, 12 мс, 178°/178°, USB-концентратор, DVI, DisplayPort', NULL, NULL, NULL, NULL),
	(381, 29, 10, 'HP ZR2440w', 'ЖК (TFT IPS) 24", широкоформатный, 1920x1200, LED-подсветка, 350 кд/м2, 1000:1, 6 мс, 178°/178°, USB-концентратор, DVI, HDMI, DisplayPort', NULL, NULL, NULL, NULL),
	(382, 30, 10, 'Samsung Galaxy Ace II', 'GSM, 3G, смартфон, Android 2.3, вес 118 г, ШхВхТ: 62.3x118.3x10.5 мм, экран 3.8", 480x800, FM-радио, Bluetooth, Wi-Fi, GPS, ГЛОНАСС, фотокамера 5 МП, память 4 Гб, слот microSD (TransFlash), аккумулятор 1500 мАч', NULL, NULL, NULL, NULL),
	(383, 31, 10, 'HTC One XL', 'GSM, 3G, смартфон, Android 4.0, вес 129 г, ШхВхТ: 69.9x134.8x8.9 мм, экран 4.7", 720x1280, FM-радио, Bluetooth, Wi-Fi, GPS, фотокамера 8 МП, память 32 Гб, аккумулятор 1800 мАч', NULL, NULL, NULL, NULL),
	(384, 32, 10, 'HTC Sensation XL', 'GSM, 3G, смартфон, Android 2.3, вес 162 г, ШхВхТ: 70.7x132.5x9.9 мм, экран 4.7", 480x800, FM-радио, Bluetooth, Wi-Fi, GPS, фотокамера 8 МП, память 16 Гб, аккумулятор 1600 мАч', NULL, NULL, NULL, NULL),
	(385, 33, 10, 'Apple iPhone 4S 16Gb', 'GSM, CDMA800, CDMA1900, 3G, смартфон, iOS 5, вес 140 г, ШхВхТ: 58.6x115.2x9.3 мм, экран 3.5", 640x960, Bluetooth, Wi-Fi, GPS, ГЛОНАСС, фотокамера 8 МП, память 16 Гб', NULL, NULL, NULL, NULL),
	(386, 34, 10, 'Apple iPhone 3GS 8Gb', 'GSM, 3G, смартфон, iOS, вес 135 г, ШхВхТ: 62x116x12 мм, экран 3.5", 320x480, Bluetooth, Wi-Fi, GPS, фотокамера 3 МП, память 8 Гб', NULL, NULL, NULL, NULL),
	(387, 35, 10, 'Apple iPhone 4 16Gb', 'GSM, 3G, смартфон, iOS 4, вес 137 г, ШхВхТ: 59x115x9 мм, экран 3.5", 640x960, Bluetooth, Wi-Fi, GPS, фотокамера 5 МП, память 16 Гб', NULL, NULL, NULL, NULL),
	(388, 36, 10, 'Nokia N9', 'GSM, 3G, смартфон, MeeGo 1.2, вес 135 г, ШхВхТ: 61x116x12 мм, экран 3.9", 480x854, Bluetooth, Wi-Fi, GPS, фотокамера 8 МП, аккумулятор 1450 мАч', NULL, NULL, NULL, NULL),
	(389, 37, 10, 'BlackBerry Bold 9900', 'GSM, 3G, смартфон, BlackBerry OS, вес 130 г, ШхВхТ: 66x115x11 мм, экран 2.8", 640x480, Bluetooth, Wi-Fi, GPS, фотокамера 5 МП, память 8 Гб, слот microSD (TransFlash), аккумулятор 1230 мАч', NULL, NULL, NULL, NULL),
	(390, 38, 10, 'BlackBerry Bold 9780', 'GSM, 3G, смартфон, BlackBerry OS, вес 122 г, ШхВхТ: 60x109x14 мм, экран 2.4", 480x360, Bluetooth, Wi-Fi, GPS, фотокамера 5 МП, память 256 Мб, слот microSD (TransFlash), аккумулятор 1500 мАч', NULL, NULL, NULL, NULL),
	(391, 39, 10, 'Apple iPad 2 16Gb Wi-Fi + 3G', 'экран 9.7", 1024x768, емкостный, мультитач, iOS, встроенная память 16 Гб, Wi-Fi, Bluetooth, 3G, GPS, гироскоп, две фотокамеры, вес 613 г', NULL, NULL, NULL, NULL),
	(392, 40, 10, 'Apple iPad 2 64Gb Wi-Fi + 3G', 'экран 9.7", 1024x768, емкостный, мультитач, iOS, встроенная память 64 Гб, Wi-Fi, Bluetooth, 3G, GPS, гироскоп, две фотокамеры, вес 613 г', NULL, NULL, NULL, NULL),
	(393, 41, 10, 'Samsung Galaxy Tab 7.0 Plus P6200 16GB', 'экран 7", 1024x600, емкостный, мультитач, Android 3.2, встроенная память 16 Гб, microSDHC, Wi-Fi, Bluetooth, 3G, GPS, гироскоп, две фотокамеры, подключение к компьютеру по USB, вес 343 г', NULL, NULL, NULL, NULL),
	(394, 42, 10, 'Acer Iconia Tab A100 8Gb', 'экран 7", 1024x600, емкостный, мультитач, Android 3.2, встроенная память 8 Гб, microSDHC, Wi-Fi, Bluetooth, GPS, гироскоп, две фотокамеры, HDMI, подключение к компьютеру по USB, вес 410 г', NULL, NULL, NULL, NULL),
	(395, 43, 10, 'Asus Transformer Pad Prime 201 64Gb', 'экран 10.1", 1280x800, емкостный, мультитач, Android 4.0, встроенная память 64 Гб, microSD, Wi-Fi, Bluetooth, гироскоп, две фотокамеры, micro HDMI, подключение к компьютеру по USB, вес 586 г', NULL, NULL, NULL, NULL),
	(396, 44, 10, 'Samsung Galaxy Tab 10.1 P7500 16Gb', 'экран 10.1", 1280x800, емкостный, мультитач, Android 3.1, встроенная память 16 Гб, Wi-Fi, Bluetooth, 3G, GPS, гироскоп, две фотокамеры, подключение к компьютеру по USB, вес 565 г', NULL, NULL, NULL, NULL),
	(401, 46, 9, 'test', 'fdasgsdfgfdsg', 'fdsgfdsgfsdgdsf', '', '', ''),
	(400, 46, 1, 'test', 'fdasgsdfgfdsg', 'fdsgfdsgfsdgdsf', '', '', ''),
	(402, 46, 10, 'test', 'fdasgsdfgfdsg', 'fdsgfdsgfsdgdsf', '', '', ''),
	(403, 47, 1, 'Acura', 'fdgfdgfdsgdsf', 'hjbjhbhjbhjbjh', '', '', ''),
	(404, 47, 9, 'Acura', 'fdgfdgfdsgdsf', 'hjbjhbhjbhjbjh', '', '', ''),
	(405, 47, 10, 'Acura', 'fdgfdgfdsgdsf', 'hjbjhbhjbhjbjh', '', '', ''),
	(406, 48, 1, 'Skoda Octavia', '', '', '', '', ''),
	(407, 48, 9, 'Skoda Octavia', '', '', '', '', ''),
	(408, 48, 10, 'Skoda Octavia', '', '', '', '', ''),
	(409, 49, 1, 'Toyota Highlander', '', '', '', '', ''),
	(410, 49, 9, 'Toyota Highlander', '', '', '', '', ''),
	(411, 49, 10, 'Toyota Highlander', '', '', '', '', ''),
	(412, 50, 1, 'MAN (Грузовые) TGS 19.360', '', '', '', '', ''),
	(413, 50, 9, 'MAN (Грузовые) TGS 19.360', '', '', '', '', ''),
	(414, 50, 10, 'MAN (Грузовые) TGS 19.360', '', '', '', '', ''),
	(415, 51, 1, 'Scania (Грузовые) P340', '', '', '', '', ''),
	(416, 51, 9, 'Scania (Грузовые) P340', '', '', '', '', ''),
	(417, 51, 10, 'Scania (Грузовые) P340', '', '', '', '', ''),
	(418, 52, 1, 'Mercedes Benz (Грузовые) Axor 1843LS', '', '', '', '', ''),
	(419, 52, 9, 'Mercedes Benz (Грузовые) Axor 1843LS', '', '', '', '', ''),
	(420, 52, 10, 'Mercedes Benz (Грузовые) Axor 1843LS', '', '', '', '', ''),
	(421, 53, 1, 'Mitsubishi Pajero Sport', '', '', '', '', ''),
	(422, 53, 9, 'Mitsubishi Pajero Sport', '', '', '', '', ''),
	(423, 53, 10, 'Mitsubishi Pajero Sport', '', '', '', '', ''),
	(558, 98, 10, 'test', NULL, NULL, NULL, NULL, NULL),
	(553, 97, 1, 'test', NULL, NULL, NULL, NULL, NULL),
	(554, 97, 9, 'test', NULL, NULL, NULL, NULL, NULL),
	(555, 97, 10, 'test', NULL, NULL, NULL, NULL, NULL),
	(556, 98, 1, 'test', NULL, NULL, NULL, NULL, NULL),
	(557, 98, 9, 'test', NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `StoreProductTranslate` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StoreProductType
CREATE TABLE IF NOT EXISTS `StoreProductType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `categories_preset` text,
  `main_category` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreProductType: 7 rows
DELETE FROM `StoreProductType`;
/*!40000 ALTER TABLE `StoreProductType` DISABLE KEYS */;
INSERT INTO `StoreProductType` (`id`, `name`, `categories_preset`, `main_category`) VALUES
	(1, 'Простой продукт', NULL, 0),
	(2, 'Ноутбук', NULL, 0),
	(3, 'Акустика', NULL, 0),
	(4, 'Монитор', NULL, 0),
	(5, 'Телефон', NULL, 0),
	(6, 'Планшет', NULL, 0),
	(7, 'Автомобили', 'a:3:{i:0;s:3:"238";i:1;s:3:"239";i:2;s:3:"240";}', 0);
/*!40000 ALTER TABLE `StoreProductType` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StoreProductVariant
CREATE TABLE IF NOT EXISTS `StoreProductVariant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_id` int(11) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` float(10,2) DEFAULT '0.00',
  `price_type` tinyint(1) DEFAULT NULL,
  `sku` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `attribute_id` (`attribute_id`),
  KEY `option_id` (`option_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=298 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreProductVariant: 0 rows
DELETE FROM `StoreProductVariant`;
/*!40000 ALTER TABLE `StoreProductVariant` DISABLE KEYS */;
/*!40000 ALTER TABLE `StoreProductVariant` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StoreRegion
CREATE TABLE IF NOT EXISTS `StoreRegion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreRegion: ~27 rows (приблизительно)
DELETE FROM `StoreRegion`;
/*!40000 ALTER TABLE `StoreRegion` DISABLE KEYS */;
INSERT INTO `StoreRegion` (`id`, `country_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 2),
	(9, 2),
	(10, 2),
	(11, 2),
	(12, 2),
	(13, 2),
	(14, 3),
	(15, 3),
	(16, 3),
	(17, 3),
	(18, 3),
	(19, 3),
	(20, 3),
	(21, 3),
	(22, 3),
	(23, 3),
	(24, 3),
	(25, 3),
	(26, 3),
	(27, 3);
/*!40000 ALTER TABLE `StoreRegion` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StoreRegionTranslate
CREATE TABLE IF NOT EXISTS `StoreRegionTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreRegionTranslate: ~81 rows (приблизительно)
DELETE FROM `StoreRegionTranslate`;
/*!40000 ALTER TABLE `StoreRegionTranslate` DISABLE KEYS */;
INSERT INTO `StoreRegionTranslate` (`id`, `object_id`, `language_id`, `name`) VALUES
	(1, 1, 1, 'Центральный округ'),
	(2, 1, 9, 'Central District'),
	(3, 1, 10, 'Центральный округ'),
	(4, 2, 1, 'Южный округ'),
	(5, 2, 9, 'Southern District'),
	(6, 2, 10, 'Южный округ'),
	(7, 3, 1, 'Приволжский округ'),
	(8, 3, 9, 'Приволжский округ'),
	(9, 3, 10, 'Приволжский округ'),
	(10, 4, 1, 'Северо-Западный округ'),
	(11, 4, 9, 'Северо-Западный округ'),
	(12, 4, 10, 'Северо-Западный округ'),
	(13, 5, 1, 'Дальневосточный округ'),
	(14, 5, 9, 'Дальневосточный округ'),
	(15, 5, 10, 'Дальневосточный округ'),
	(16, 6, 1, 'Уральский округ'),
	(17, 6, 9, 'Уральский округ'),
	(18, 6, 10, 'Уральский округ'),
	(19, 7, 1, 'Сибирский округ'),
	(20, 7, 9, 'Сибирский округ'),
	(21, 7, 10, 'Сибирский округ'),
	(22, 8, 1, 'Брест'),
	(23, 8, 9, 'Брест'),
	(24, 8, 10, 'Брест'),
	(25, 9, 1, 'Грондо'),
	(26, 9, 9, 'Грондо'),
	(27, 9, 10, 'Грондо'),
	(28, 10, 1, 'Минск'),
	(29, 10, 9, 'Минск'),
	(30, 10, 10, 'Минск'),
	(31, 11, 1, 'Витебск'),
	(32, 11, 9, 'Витебск'),
	(33, 11, 10, 'Витебск'),
	(34, 12, 1, 'Могилев'),
	(35, 12, 9, 'Могилев'),
	(36, 12, 10, 'Могилев'),
	(37, 13, 1, 'Гомель'),
	(38, 13, 9, 'Гомель'),
	(39, 13, 10, 'Гомель'),
	(40, 14, 1, 'Уральск'),
	(41, 14, 9, 'Уральск'),
	(42, 14, 10, 'Уральск'),
	(43, 15, 1, 'Атырау'),
	(44, 15, 9, 'Атырау'),
	(45, 15, 10, 'Атырау'),
	(46, 16, 1, 'Актау'),
	(47, 16, 9, 'Актау'),
	(48, 16, 10, 'Актау'),
	(49, 17, 1, 'Актюбинск'),
	(50, 17, 9, 'Актюбинск'),
	(51, 17, 10, 'Актюбинск'),
	(52, 18, 1, 'Костанай'),
	(53, 18, 9, 'Костанай'),
	(54, 18, 10, 'Костанай'),
	(55, 19, 1, 'Кизилорда'),
	(56, 19, 9, 'Кизилорда'),
	(57, 19, 10, 'Кизилорда'),
	(58, 20, 1, 'Петропавловск'),
	(59, 20, 9, 'Петропавловск'),
	(60, 20, 10, 'Петропавловск'),
	(61, 21, 1, 'Астана'),
	(62, 21, 9, 'Астана'),
	(63, 21, 10, 'Астана'),
	(64, 22, 1, 'Караганда'),
	(65, 22, 9, 'Караганда'),
	(66, 22, 10, 'Караганда'),
	(67, 23, 1, 'Павлодар'),
	(68, 23, 9, 'Павлодар'),
	(69, 23, 10, 'Павлодар'),
	(70, 24, 1, 'Шимкент'),
	(71, 24, 9, 'Шимкент'),
	(72, 24, 10, 'Шимкент'),
	(73, 25, 1, 'Тараз'),
	(74, 25, 9, 'Тараз'),
	(75, 25, 10, 'Тараз'),
	(76, 26, 1, 'Алматы'),
	(77, 26, 9, 'Алматы'),
	(78, 26, 10, 'Алматы'),
	(79, 27, 1, 'Семипалатинск'),
	(80, 27, 9, 'Семипалатинск'),
	(81, 27, 10, 'Семипалатинск');
/*!40000 ALTER TABLE `StoreRegionTranslate` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StoreRelatedProduct
CREATE TABLE IF NOT EXISTS `StoreRelatedProduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COMMENT='Handle related products';

-- Дамп данных таблицы partspro.StoreRelatedProduct: 3 rows
DELETE FROM `StoreRelatedProduct`;
/*!40000 ALTER TABLE `StoreRelatedProduct` DISABLE KEYS */;
INSERT INTO `StoreRelatedProduct` (`id`, `product_id`, `related_id`) VALUES
	(65, 49, 46),
	(64, 49, 47),
	(63, 49, 48);
/*!40000 ALTER TABLE `StoreRelatedProduct` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StoreTypeAttribute
CREATE TABLE IF NOT EXISTS `StoreTypeAttribute` (
  `type_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  PRIMARY KEY (`type_id`,`attribute_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreTypeAttribute: 26 rows
DELETE FROM `StoreTypeAttribute`;
/*!40000 ALTER TABLE `StoreTypeAttribute` DISABLE KEYS */;
INSERT INTO `StoreTypeAttribute` (`type_id`, `attribute_id`) VALUES
	(2, 1),
	(2, 2),
	(2, 3),
	(2, 4),
	(2, 5),
	(2, 6),
	(3, 7),
	(3, 8),
	(3, 9),
	(4, 10),
	(4, 11),
	(4, 12),
	(5, 13),
	(5, 14),
	(5, 15),
	(5, 16),
	(6, 17),
	(6, 18),
	(6, 19),
	(7, 20),
	(7, 21),
	(7, 22),
	(7, 23),
	(7, 24),
	(7, 25),
	(7, 26);
/*!40000 ALTER TABLE `StoreTypeAttribute` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StoreWishlist
CREATE TABLE IF NOT EXISTS `StoreWishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(10) DEFAULT '',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `key` (`key`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreWishlist: 0 rows
DELETE FROM `StoreWishlist`;
/*!40000 ALTER TABLE `StoreWishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `StoreWishlist` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StoreWishlistProducts
CREATE TABLE IF NOT EXISTS `StoreWishlistProducts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wishlist_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishlist_id` (`wishlist_id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreWishlistProducts: 0 rows
DELETE FROM `StoreWishlistProducts`;
/*!40000 ALTER TABLE `StoreWishlistProducts` DISABLE KEYS */;
/*!40000 ALTER TABLE `StoreWishlistProducts` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.SystemLanguage
CREATE TABLE IF NOT EXISTS `SystemLanguage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `code` varchar(25) DEFAULT '',
  `locale` varchar(100) DEFAULT '',
  `default` tinyint(1) DEFAULT NULL,
  `flag_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.SystemLanguage: 3 rows
DELETE FROM `SystemLanguage`;
/*!40000 ALTER TABLE `SystemLanguage` DISABLE KEYS */;
INSERT INTO `SystemLanguage` (`id`, `name`, `code`, `locale`, `default`, `flag_name`) VALUES
	(1, 'Рус', 'ru', 'ru', 1, 'ru.png'),
	(9, 'Eng', 'en', 'en', 0, 'us.png'),
	(10, 'Kz', 'kz', 'kz', 0, 'kz.png');
/*!40000 ALTER TABLE `SystemLanguage` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.SystemModules
CREATE TABLE IF NOT EXISTS `SystemModules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.SystemModules: 17 rows
DELETE FROM `SystemModules`;
/*!40000 ALTER TABLE `SystemModules` DISABLE KEYS */;
INSERT INTO `SystemModules` (`id`, `name`, `enabled`) VALUES
	(7, 'users', 1),
	(9, 'pages', 1),
	(11, 'core', 1),
	(12, 'rights', 1),
	(16, 'orders', 1),
	(15, 'store', 1),
	(17, 'comments', 1),
	(37, 'feedback', 1),
	(38, 'discounts', 1),
	(39, 'newsletter', 1),
	(40, 'csv', 1),
	(41, 'logger', 1),
	(52, 'accounting1c', 1),
	(53, 'yandexMarket', 1),
	(54, 'notifier', 1),
	(55, 'statistics', 1),
	(56, 'sitemap', 1);
/*!40000 ALTER TABLE `SystemModules` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.SystemSettings
CREATE TABLE IF NOT EXISTS `SystemSettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT '',
  `key` varchar(255) DEFAULT '',
  `value` text,
  PRIMARY KEY (`id`),
  KEY `category` (`category`),
  KEY `key` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.SystemSettings: 41 rows
DELETE FROM `SystemSettings`;
/*!40000 ALTER TABLE `SystemSettings` DISABLE KEYS */;
INSERT INTO `SystemSettings` (`id`, `category`, `key`, `value`) VALUES
	(9, 'feedback', 'max_message_length', '1000'),
	(8, 'feedback', 'enable_captcha', '1'),
	(7, 'feedback', 'admin_email', 'admin@localhost.local'),
	(10, '17_WebMoneyPaymentSystem', 'LMI_PAYEE_PURSE', 'Z123456578811'),
	(11, '17_WebMoneyPaymentSystem', 'LMI_SECRET_KEY', 'theSercretPassword'),
	(12, '18_WebMoneyPaymentSystem', 'LMI_PAYEE_PURSE', '1'),
	(13, '18_WebMoneyPaymentSystem', 'LMI_SECRET_KEY', '2'),
	(14, '19_RobokassaPaymentSystem', 'login', 'login'),
	(15, '19_RobokassaPaymentSystem', 'password1', 'password1value'),
	(16, '19_RobokassaPaymentSystem', 'password2', 'password2value'),
	(22, 'accounting1c', 'password', 'f880fefe2aff8130bb31d480f08e47c03e655b60'),
	(21, 'accounting1c', 'ip', '127.0.0.1'),
	(23, 'accounting1c', 'tempdir', 'application.runtime'),
	(24, 'yandexMarket', 'name', 'Демо магазин'),
	(25, 'yandexMarket', 'company', 'Демо кампания'),
	(26, 'yandexMarket', 'url', 'http://demo-company.loc/'),
	(27, 'yandexMarket', 'currency_id', '2'),
	(28, 'core', 'siteName', 'PartsPro'),
	(29, 'core', 'productsPerPage', '10,20,40'),
	(30, 'core', 'productsPerPageAdmin', '30'),
	(31, 'core', 'theme', 'partspro'),
	(32, '20_QiwiPaymentSystem', 'shop_id', ''),
	(33, '20_QiwiPaymentSystem', 'password', ''),
	(34, '21_QiwiPaymentSystem', 'shop_id', '211182'),
	(35, '21_QiwiPaymentSystem', 'password', 'xsi100500'),
	(36, 'core', 'editorTheme', 'compant'),
	(37, 'core', 'editorHeight', '150'),
	(38, 'core', 'editorAutoload', '0'),
	(39, 'images', 'path', 'webroot.uploads.product'),
	(40, 'images', 'thumbPath', 'webroot.assets.productThumbs'),
	(41, 'images', 'url', '/uploads/product/'),
	(42, 'images', 'thumbUrl', '/assets/productThumbs/'),
	(43, 'images', 'maxFileSize', '10485760'),
	(44, 'images', 'max_sizes', '1800х1600'),
	(45, 'images', 'maximum_image_size', '1935x947'),
	(46, 'images', 'watermark_image', ''),
	(47, 'images', 'watermark_active', '1'),
	(48, 'images', 'watermark_position', 'bottomRight'),
	(49, 'images', 'watermark_position_vertical', 'bottom'),
	(50, 'images', 'watermark_position_horizontal', 'right'),
	(51, 'images', 'watermark_opacity', '100');
/*!40000 ALTER TABLE `SystemSettings` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.tbl_migration
CREATE TABLE IF NOT EXISTS `tbl_migration` (
  `version` varchar(255) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.tbl_migration: ~13 rows (приблизительно)
DELETE FROM `tbl_migration`;
/*!40000 ALTER TABLE `tbl_migration` DISABLE KEYS */;
INSERT INTO `tbl_migration` (`version`, `apply_time`) VALUES
	('m000000_000000_base', 1361214193),
	('m130218_190341_add_description_to_store_category', 1361214373),
	('m130218_190818_add_description_to_store_category_translate', 1361214547),
	('m130420_194012_add_roles_to_discounts', 1366487103),
	('m130420_204956_add_personal_discount_to_user', 1366491054),
	('m130421_095545_add_personal_discount_to_product', 1366538394),
	('m130504_170119_add_discout_to_order', 1367686940),
	('m130504_183903_add_title_to_store_product_image', 1367692811),
	('m130507_103455_add_banned_to_user', 1367923070),
	('m130507_104810_unban_all_users', 1367923771),
	('m130624_155800_add_new_fields_to_product', 1372089566),
	('m130714_114907_add_admin_comment_to_orders', 1373802668),
	('m130726_042212_create_order_history_table', 1374814430);
/*!40000 ALTER TABLE `tbl_migration` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT '',
  `password` varchar(255) DEFAULT '',
  `email` varchar(255) DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `login_ip` varchar(255) DEFAULT NULL,
  `recovery_key` varchar(20) DEFAULT NULL,
  `recovery_password` varchar(100) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `banned` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Saves user accounts';

-- Дамп данных таблицы partspro.user: 2 rows
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `username`, `password`, `email`, `created_at`, `last_login`, `login_ip`, `recovery_key`, `recovery_password`, `discount`, `banned`) VALUES
	(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin@admin.ru', '2014-09-29 16:07:43', '2014-10-20 10:15:53', '192.168.0.95', NULL, NULL, NULL, 0),
	(2, 'bahdall', 'b8dd5911c83337e30413cc005ff34577dc88125c', 'tyama92@mail.ru', '2014-10-13 12:47:29', '2014-10-18 10:35:25', '192.168.0.95', NULL, NULL, NULL, 0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.user_profile
CREATE TABLE IF NOT EXISTS `user_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT '',
  `phone` varchar(20) DEFAULT NULL,
  `delivery_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.user_profile: 2 rows
DELETE FROM `user_profile`;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` (`id`, `user_id`, `full_name`, `phone`, `delivery_address`) VALUES
	(1, 1, 'admin', NULL, NULL),
	(2, 2, 'тимур шарипов', '998935354200', 'sergeli sputnik-8');
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
