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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.ActionLog: 0 rows
DELETE FROM `ActionLog`;
/*!40000 ALTER TABLE `ActionLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `ActionLog` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.AuthAssignment
CREATE TABLE IF NOT EXISTS `AuthAssignment` (
  `itemname` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`itemname`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.AuthAssignment: 8 rows
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
	('Authenticated', '63', NULL, 'N;');
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

-- Дамп данных таблицы partspro.AuthItem: 18 rows
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
	('Orders.Statuses.Delete', 0, NULL, NULL, 'N;');
/*!40000 ALTER TABLE `AuthItem` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.AuthItemChild
CREATE TABLE IF NOT EXISTS `AuthItemChild` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.AuthItemChild: 0 rows
DELETE FROM `AuthItemChild`;
/*!40000 ALTER TABLE `AuthItemChild` DISABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.Page: 7 rows
DELETE FROM `Page`;
/*!40000 ALTER TABLE `Page` DISABLE KEYS */;
INSERT INTO `Page` (`id`, `user_id`, `category_id`, `url`, `created`, `updated`, `publish_date`, `status`, `layout`, `view`) VALUES
	(8, 1, NULL, 'help', '2012-06-10 22:35:51', '2012-07-07 11:47:09', '2012-06-10 22:35:29', 'published', '', ''),
	(9, 1, NULL, 'how-to-create-order', '2012-06-10 22:36:50', '2012-07-07 11:45:53', '2012-06-10 22:36:27', 'published', '', ''),
	(10, 1, NULL, 'garantiya', '2012-06-10 22:37:06', '2012-07-07 11:45:38', '2012-06-10 22:36:50', 'published', '', ''),
	(11, 1, NULL, 'dostavka-i-oplata', '2012-06-10 22:37:18', '2012-07-07 11:41:49', '2012-06-10 22:37:07', 'published', '', ''),
	(12, 1, 7, 'samsung-pitaetsya-izbezhat-zapreta-na-galaxy-nexus-v-shtatah-pri-pomoshi-patcha', '2012-07-07 12:08:50', '2012-07-07 12:09:33', '2012-07-07 12:06:19', 'published', '', ''),
	(13, 1, 7, 'za-85-mesyacev-android-40-popal-na-11-ustroistv', '2012-07-07 12:19:44', '2013-06-04 23:20:21', '2012-07-07 12:14:48', 'published', '', ''),
	(14, 1, 7, 'google-prezentoval-svoi-ochki-dopolnennoi-realnosti', '2012-07-07 12:26:11', '2012-07-07 12:26:11', '2012-07-07 12:25:48', 'published', '', '');
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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.PageCategory: 3 rows
DELETE FROM `PageCategory`;
/*!40000 ALTER TABLE `PageCategory` DISABLE KEYS */;
INSERT INTO `PageCategory` (`id`, `parent_id`, `url`, `full_url`, `layout`, `view`, `created`, `updated`, `page_size`) VALUES
	(7, NULL, 'news', 'news', '', '', '2012-07-07 12:06:03', '2013-04-29 23:24:05', NULL),
	(10, NULL, 'tesstovya2', 'tesstovya2', '', '', '2013-05-21 23:59:34', '2013-05-21 23:59:34', NULL),
	(12, 7, 'tesstovya2', 'news/tesstovya2', '', '', '2013-05-22 00:07:01', '2013-05-22 00:07:01', NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.PageCategoryTranslate: 6 rows
DELETE FROM `PageCategoryTranslate`;
/*!40000 ALTER TABLE `PageCategoryTranslate` DISABLE KEYS */;
INSERT INTO `PageCategoryTranslate` (`id`, `object_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keywords`) VALUES
	(13, 7, 1, 'Новости', '', '', '', ''),
	(14, 7, 9, 'Новости', '', '', '', ''),
	(15, 11, 1, 'sdfsdf', '', '', '', ''),
	(16, 11, 9, 'sdfsdf', '', '', '', ''),
	(17, 12, 1, 'Тесстовя2', '', '', '', ''),
	(18, 12, 9, 'Тесстовя2', '', '', '', '');
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
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.PageTranslate: 14 rows
DELETE FROM `PageTranslate`;
/*!40000 ALTER TABLE `PageTranslate` DISABLE KEYS */;
INSERT INTO `PageTranslate` (`id`, `object_id`, `language_id`, `title`, `short_description`, `full_description`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
	(22, 11, 9, 'Доставка и оплата', '', '', '', '', ''),
	(15, 8, 1, 'Помощь', 'Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации "Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст.." Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам "lorem ipsum" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).', '', '', '', ''),
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
	(28, 14, 9, 'Google презентовал свои очки дополненной реальности‎', 'Компания Google приступит к продаже очков дополненной реальности, который разрабатываются в рамках проекта Google Project Glass, пишет блог All Things Digital. ', 'Очки будут стоить 1,5 тысячи долларов, и поставки стартуют в начале 2013 года. Устройство, однако, будет предназначено только для разработчиков. Оформить предварительный заказ на него смогут исключительно посетители конференции I/O, открывшейся 27 июня в Сан-Франциско. ', '', '', '');
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
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreAttribute: 19 rows
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
	(19, 'weight', 3, 1, NULL, NULL, 1, NULL, 0, NULL);
/*!40000 ALTER TABLE `StoreAttribute` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StoreAttributeOption
CREATE TABLE IF NOT EXISTS `StoreAttributeOption` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_id` int(11) DEFAULT NULL,
  `position` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_id` (`attribute_id`),
  KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=161 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreAttributeOption: 75 rows
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
	(160, 19, NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=321 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreAttributeOptionTranslate: 150 rows
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
	(320, 9, 160, '565 г');
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
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreAttributeTranslate: 38 rows
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
	(78, 19, 9, 'Вес');
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
) ENGINE=MyISAM AUTO_INCREMENT=238 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreCategory: 9 rows
DELETE FROM `StoreCategory`;
/*!40000 ALTER TABLE `StoreCategory` DISABLE KEYS */;
INSERT INTO `StoreCategory` (`id`, `lft`, `rgt`, `level`, `url`, `full_path`, `layout`, `view`, `description`) VALUES
	(1, 1, 26, 1, 'root', '', '', '', NULL),
	(230, 10, 15, 2, 'noutbuki', 'noutbuki', '', '', NULL),
	(231, 11, 12, 3, 'byudzhetnii', 'noutbuki/byudzhetnii', '', '', NULL),
	(232, 13, 14, 3, 'igrovoi', 'noutbuki/igrovoi', '', '', NULL),
	(233, 16, 21, 2, 'kompyuteri', 'kompyuteri', '', '', NULL),
	(234, 17, 18, 3, 'kompyuternaya-akustika', 'kompyuteri/kompyuternaya-akustika', '', '', NULL),
	(235, 22, 23, 2, 'monitori', 'monitori', '', '', NULL),
	(236, 24, 25, 2, 'telefoni', 'telefoni', '', '', NULL),
	(237, 19, 20, 3, 'plansheti', 'kompyuteri/plansheti', '', '', NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreCategoryTranslate: 22 rows
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
	(60, 237, 9, 'Планшеты', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `StoreCategoryTranslate` ENABLE KEYS */;


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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreDeliveryMethodTranslate: 6 rows
DELETE FROM `StoreDeliveryMethodTranslate`;
/*!40000 ALTER TABLE `StoreDeliveryMethodTranslate` DISABLE KEYS */;
INSERT INTO `StoreDeliveryMethodTranslate` (`id`, `object_id`, `language_id`, `name`, `description`) VALUES
	(1, 14, 1, 'Курьером', ''),
	(2, 14, 9, 'English', 'english description'),
	(3, 15, 1, 'Самовывоз', ''),
	(4, 15, 9, 'Самовывоз', ''),
	(5, 16, 1, 'Адресная доставка по стране', ''),
	(6, 16, 9, 'Адресная доставка по стране', '');
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
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreManufacturerTranslate: 36 rows
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
	(58, 18, 9, 'BlackBerry', NULL, NULL, NULL, NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreProduct: 44 rows
DELETE FROM `StoreProduct`;
/*!40000 ALTER TABLE `StoreProduct` DISABLE KEYS */;
INSERT INTO `StoreProduct` (`id`, `manufacturer_id`, `type_id`, `use_configurations`, `url`, `price`, `max_price`, `is_active`, `layout`, `view`, `sku`, `quantity`, `availability`, `auto_decrease_quantity`, `views_count`, `created`, `updated`, `added_to_cart_count`, `votes`, `rating`, `discount`, `video`) VALUES
	(1, 1, 2, 0, 'lenovo-b570', 345.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:53', '2014-09-29 16:06:52', NULL, NULL, NULL, NULL, 'Intel GMA HD'),
	(2, 1, 2, 0, 'lenovo-g570', 360.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:53', '2014-09-29 16:06:53', NULL, NULL, NULL, NULL, 'Intel GMA HD'),
	(3, 2, 2, 0, 'asus-k53u', 375.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:53', '2014-09-29 16:06:53', NULL, NULL, NULL, NULL, 'Intel GMA HD'),
	(4, 2, 2, 0, 'asus-x54c', 370.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:53', '2014-09-29 16:06:53', NULL, NULL, NULL, NULL, 'Intel HD Graphics 3000'),
	(5, 3, 2, 0, 'dell-inspiron-n5050', 380.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:53', '2014-09-29 16:06:53', NULL, NULL, NULL, NULL, 'Intel HD Graphics 3000'),
	(6, 4, 2, 0, 'fujitsu-lifebook-ah531', 395.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:53', '2014-09-29 16:06:53', NULL, NULL, NULL, NULL, 'Intel HD Graphics 3000'),
	(7, 5, 2, 0, 'hp-elitebook-8560w', 3150.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:54', '2014-09-29 16:06:53', NULL, NULL, NULL, NULL, 'NVIDIA Quadro 2000M'),
	(8, 3, 2, 0, 'dell-alienware-m17x', 2850.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:54', '2014-09-29 16:06:54', NULL, NULL, NULL, NULL, 'AMD Radeon HD 6990M'),
	(9, 6, 2, 0, 'apple-macbook-pro-15-late-2011', 2600.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, 5, '2014-09-29 16:06:54', '2014-09-29 16:06:54', NULL, NULL, NULL, NULL, 'ATI Radeon HD 6770М'),
	(10, 1, 2, 0, 'lenovo-thinkpad-w520', 2450.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:54', '2014-09-29 16:06:54', NULL, NULL, NULL, NULL, 'NVIDIA Quadro 2000M'),
	(11, 7, 2, 0, 'sony-vaio-vpc-f13s8r', 1950.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:54', '2014-09-29 16:06:54', NULL, NULL, NULL, NULL, 'NVIDIA GeForce GT 425M'),
	(12, 8, 2, 0, 'acer-aspire-5943g-7748g75twiss', 2350.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:54', '2014-09-29 16:06:54', NULL, NULL, NULL, NULL, 'ATI Mobility Radeon HD 5850'),
	(13, 9, 3, 0, 'logitech-x-530', 99.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:55', '2014-09-29 16:06:54', NULL, NULL, NULL, NULL, NULL),
	(14, 10, 3, 0, 'microlab-m-860', 89.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:55', '2014-09-29 16:06:55', NULL, NULL, NULL, NULL, NULL),
	(15, 11, 3, 0, 'edifier-m3700', 115.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:55', '2014-09-29 16:06:55', NULL, NULL, NULL, NULL, NULL),
	(16, 9, 3, 0, 'logitech-z-313', 84.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:55', '2014-09-29 16:06:55', NULL, NULL, NULL, NULL, NULL),
	(17, 12, 3, 0, 'sven-sps-820', 55.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:55', '2014-09-29 16:06:55', NULL, NULL, NULL, NULL, NULL),
	(18, 11, 3, 0, 'edifier-m1385', 67.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:55', '2014-09-29 16:06:55', NULL, NULL, NULL, NULL, NULL),
	(19, 11, 3, 0, 'edifier-x600', 45.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:55', '2014-09-29 16:06:55', NULL, NULL, NULL, NULL, NULL),
	(20, 10, 3, 0, 'microlab-fc-362', 85.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:55', '2014-09-29 16:06:55', NULL, NULL, NULL, NULL, NULL),
	(21, 3, 4, 0, 'dell-u2412m', 240.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:56', '2014-09-29 16:06:56', NULL, NULL, NULL, NULL, NULL),
	(22, 3, 4, 0, 'dell-u2312hm', 180.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:56', '2014-09-29 16:06:56', NULL, NULL, NULL, NULL, NULL),
	(23, 13, 4, 0, 'lg-flatron-m2250d', 210.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:56', '2014-09-29 16:06:56', NULL, NULL, NULL, NULL, NULL),
	(24, 13, 4, 0, 'lg-flatron-ips226v', 175.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:56', '2014-09-29 16:06:56', NULL, NULL, NULL, NULL, NULL),
	(25, 14, 4, 0, 'samsung-syncmaster-s22a350n', 150.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:56', '2014-09-29 16:06:56', NULL, NULL, NULL, NULL, NULL),
	(26, 15, 4, 0, 'philips-237e3qphsu', 160.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:56', '2014-09-29 16:06:56', NULL, NULL, NULL, NULL, NULL),
	(27, 15, 4, 0, 'philips-227e3lsu', 190.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:56', '2014-09-29 16:06:56', NULL, NULL, NULL, NULL, NULL),
	(28, 5, 4, 0, 'hp-zr2740w', 460.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:56', '2014-09-29 16:06:56', NULL, NULL, NULL, NULL, NULL),
	(29, 5, 4, 0, 'hp-zr2440w', 380.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:57', '2014-09-29 16:06:57', NULL, NULL, NULL, NULL, NULL),
	(30, 14, 5, 0, 'samsung-galaxy-ace-ii', 390.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:57', '2014-09-29 16:06:57', NULL, NULL, NULL, NULL, NULL),
	(31, 16, 5, 0, 'htc-one-xl', 425.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, 6, '2014-09-29 16:06:57', '2014-09-29 16:06:57', NULL, NULL, NULL, NULL, NULL),
	(32, 16, 5, 0, 'htc-sensation-xl', 480.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:57', '2014-09-29 16:06:57', NULL, NULL, NULL, NULL, NULL),
	(33, 6, 5, 0, 'apple-iphone-4s-16gb', 675.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:57', '2014-09-29 16:06:57', NULL, NULL, NULL, NULL, NULL),
	(34, 6, 5, 0, 'apple-iphone-3gs-8gb', 425.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:57', '2014-09-29 16:06:57', NULL, NULL, NULL, NULL, NULL),
	(35, 6, 5, 0, 'apple-iphone-4-16gb', 550.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:57', '2014-09-29 16:06:57', NULL, NULL, NULL, NULL, NULL),
	(36, 17, 5, 0, 'nokia-n9', 425.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, 7, '2014-09-29 16:06:58', '2014-09-29 16:06:57', NULL, NULL, NULL, NULL, NULL),
	(37, 18, 5, 0, 'blackberry-bold-9900', 445.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:58', '2014-09-29 16:06:58', NULL, NULL, NULL, NULL, NULL),
	(38, 18, 5, 0, 'blackberry-bold-9780', 379.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:58', '2014-09-29 16:06:58', NULL, NULL, NULL, NULL, NULL),
	(39, 6, 6, 0, 'apple-ipad-2-16gb-wi-fi--3g', 430.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, 8, '2014-09-29 16:06:58', '2014-09-29 16:06:58', NULL, NULL, NULL, NULL, NULL),
	(40, 6, 6, 0, 'apple-ipad-2-64gb-wi-fi--3g', 560.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:58', '2014-09-29 16:06:58', NULL, NULL, NULL, NULL, NULL),
	(41, 14, 6, 0, 'samsung-galaxy-tab-70-plus-p6200-16gb', 350.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:58', '2014-09-29 16:06:58', NULL, NULL, NULL, NULL, NULL),
	(42, 8, 6, 0, 'acer-iconia-tab-a100-8gb', 365.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:58', '2014-09-29 16:06:58', NULL, NULL, NULL, NULL, NULL),
	(43, 2, 6, 0, 'asus-transformer-pad-prime-201-64gb', 495.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:59', '2014-09-29 16:06:59', NULL, NULL, NULL, NULL, NULL),
	(44, 14, 6, 0, 'samsung-galaxy-tab-101-p7500-16gb', 475.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2014-09-29 16:06:59', '2014-09-29 16:06:59', NULL, NULL, NULL, NULL, NULL);
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

-- Дамп данных таблицы partspro.StoreProductAttributeEAV: 183 rows
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
	(44, 'tablet_screen_size', '157'),
	(44, 'screen_dimension', '158'),
	(44, 'memmory_size', '149'),
	(44, 'weight', '160');
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
) ENGINE=MyISAM AUTO_INCREMENT=232 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreProductCategoryRef: 70 rows
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
	(231, 44, 233, 0);
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
) ENGINE=MyISAM AUTO_INCREMENT=184 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreProductImage: 44 rows
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
	(183, 44, '44_-213766250.jpg', 1, NULL, '2014-09-29 16:06:59', NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=353 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreProductTranslate: 88 rows
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
	(351, 44, 1, 'Samsung Galaxy Tab 10.1 P7500 16Gb', 'экран 10.1", 1280x800, емкостный, мультитач, Android 3.1, встроенная память 16 Гб, Wi-Fi, Bluetooth, 3G, GPS, гироскоп, две фотокамеры, подключение к компьютеру по USB, вес 565 г', NULL, NULL, NULL, NULL),
	(352, 44, 9, 'Samsung Galaxy Tab 10.1 P7500 16Gb', 'экран 10.1", 1280x800, емкостный, мультитач, Android 3.1, встроенная память 16 Гб, Wi-Fi, Bluetooth, 3G, GPS, гироскоп, две фотокамеры, подключение к компьютеру по USB, вес 565 г', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `StoreProductTranslate` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StoreProductType
CREATE TABLE IF NOT EXISTS `StoreProductType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `categories_preset` text,
  `main_category` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreProductType: 6 rows
DELETE FROM `StoreProductType`;
/*!40000 ALTER TABLE `StoreProductType` DISABLE KEYS */;
INSERT INTO `StoreProductType` (`id`, `name`, `categories_preset`, `main_category`) VALUES
	(1, 'Простой продукт', NULL, 0),
	(2, 'Ноутбук', NULL, 0),
	(3, 'Акустика', NULL, 0),
	(4, 'Монитор', NULL, 0),
	(5, 'Телефон', NULL, 0),
	(6, 'Планшет', NULL, 0);
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


-- Дамп структуры для таблица partspro.StoreRelatedProduct
CREATE TABLE IF NOT EXISTS `StoreRelatedProduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COMMENT='Handle related products';

-- Дамп данных таблицы partspro.StoreRelatedProduct: 0 rows
DELETE FROM `StoreRelatedProduct`;
/*!40000 ALTER TABLE `StoreRelatedProduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `StoreRelatedProduct` ENABLE KEYS */;


-- Дамп структуры для таблица partspro.StoreTypeAttribute
CREATE TABLE IF NOT EXISTS `StoreTypeAttribute` (
  `type_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  PRIMARY KEY (`type_id`,`attribute_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.StoreTypeAttribute: 19 rows
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
	(6, 19);
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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.SystemLanguage: 2 rows
DELETE FROM `SystemLanguage`;
/*!40000 ALTER TABLE `SystemLanguage` DISABLE KEYS */;
INSERT INTO `SystemLanguage` (`id`, `name`, `code`, `locale`, `default`, `flag_name`) VALUES
	(1, 'Русский', 'ru', 'ru', 1, 'ru.png'),
	(9, 'English', 'en', 'en', 0, 'us.png');
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
	(29, 'core', 'productsPerPage', '12,18,24'),
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Saves user accounts';

-- Дамп данных таблицы partspro.user: 1 rows
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `username`, `password`, `email`, `created_at`, `last_login`, `login_ip`, `recovery_key`, `recovery_password`, `discount`, `banned`) VALUES
	(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin@admin.ru', '2014-09-29 16:07:43', '2014-09-30 10:10:55', '192.168.0.111', NULL, NULL, NULL, 0);
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы partspro.user_profile: 1 rows
DELETE FROM `user_profile`;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` (`id`, `user_id`, `full_name`, `phone`, `delivery_address`) VALUES
	(1, 1, 'admin', NULL, NULL);
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
