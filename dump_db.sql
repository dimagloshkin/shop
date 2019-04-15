-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 09 2019 г., 18:14
-- Версия сервера: 8.0.12
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `super_mag`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `sort_order`, `status`) VALUES
(1, 'Ноутбук', 1, 1),
(2, 'Планшеты', 2, 1),
(3, 'Мониторы', 3, 1),
(4, 'Игровые компьютеры', 4, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `price` float NOT NULL,
  `availability` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `is_new` int(11) NOT NULL DEFAULT '0',
  `is_recommended` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `image` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `category_id`, `code`, `price`, `availability`, `brand`, `description`, `is_new`, `is_recommended`, `status`, `image`) VALUES
(49, 'Asus VivoBook D540NA-GQ211T', 1, 90167245, 7999, 1, 'Asus', 'Экран 15.6\" (1366x768) WXGA HD, матовый / Intel Pentium N4200 (1.1 - 2.5 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics 505 / без ОД / Wi-Fi / Bluetooth / веб-камера / Windows 10 Home 64bit / 2 кг / темно-коричневый\r\nПодробнее: https://rozetka.com.ua/asus_d540na_gq211t/p70599548/', 1, 1, 1, ''),
(50, 'Lenovo IdeaPad 330-15AST', 1, 69309434, 6400, 1, 'Lenovo', 'Экран 15.6\" TN+film (1366x768) HD, матовый / AMD E2-9000 (1.8 - 2.2 ГГц) / RAM 4 ГБ / HDD 500 ГБ / AMD Radeon R2 Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 2.2 кг / черный\r\nПодробнее: https://rozetka.com.ua/lenovo_81d600jyra/p69309434/', 0, 1, 1, ''),
(51, 'Dell Inspiron 3573', 1, 3573, 5999, 1, 'Dell', 'Экран 15.6\" (1366x768) WXGA HD, глянцевый с антибликовым покрытием / Intel Celeron N4000 (1.1 - 2.6 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel UHD Graphics 600 / DVD±RW / Wi-Fi / Bluetooth / веб-камера / Linux / 2.15 кг / черный\r\nПодробнее: https://rozetka.com.ua/dell_35n44h5ihd_lbk/p55590054/', 1, 1, 1, ''),
(52, 'Acer Nitro 5 AN515-52', 1, 515, 35000, 1, 'Acer', 'Экран 15.6” IPS (1920x1080) Full HD, матовый / Intel Core i7-8750H (2.2 - 4.1 ГГц) / RAM 16 ГБ / HDD 2 ТБ + SSD 256 ГБ / nVidia GeForce GTX 1060, 6 ГБ / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.7 кг / черный\r\n', 0, 1, 1, ''),
(53, 'HP 250 G6', 1, 250, 12900, 1, 'HP', 'Экран 15.6” (1920x1080) Full HD, матовый / Intel Core i3-7020U (2.3 ГГц) / RAM 8 ГБ / HDD 1 ТБ / AMD Radeon 520, 2 ГБ / DVD+/-RW / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 1.86 кг / черный', 1, 1, 1, ''),
(54, 'Acer Aspire 3 A315-33', 1, 33, 7200, 1, 'Acer', 'Экран 15.6\" (1366x768) WXGA HD, матовый / Intel Pentium N3710 (1.6 - 2.56 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics 405 / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.1 кг / черный', 0, 1, 1, ''),
(55, 'Acer Aspire 3 A315-33', 1, 142, 9000, 1, 'Acer', 'Экран 15.6\" (1366x768) WXGA HD, матовый / Intel Pentium N3710 (1.6 - 2.56 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics 405 / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.1 кг / черный\r\n\r\n', 1, 1, 1, ''),
(56, 'HP Pawl 12', 1, 475, 14829, 1, 'HP', 'Экран 15.6\" (1366x768) WXGA HD, матовый / Intel Pentium N3710 (1.6 - 2.56 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics 405 / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.1 кг / черный\r\n\r\n', 0, 1, 1, ''),
(57, 'Prestigio Grace 3778', 2, 3778, 2300, 1, 'Prestigio', 'Экран 8\" IPS (1280x800) MultiTouch / MediaTek MT8321 (1.3 ГГц) / RAM 1 ГБ / 16 ГБ встроенной памяти + microSD / 3G / Wi-Fi / Bluetooth 4.0 / основная камера 2 Мп, фронтальная - 0.3 Мп / GPS / Android 8.1 (Oreo Go edition) / 321 г / черный', 1, 1, 1, ''),
(58, 'Mystery MID-703G', 2, 703, 1389, 1, 'Mystery', 'Экран 8\" IPS (1280x800) MultiTouch / MediaTek MT8321 (1.3 ГГц) / RAM 1 ГБ / 16 ГБ встроенной памяти + microSD / 3G / Wi-Fi / Bluetooth 4.0 / основная камера 2 Мп, фронтальная - 0.3 Мп / GPS / Android 8.1 (Oreo Go edition) / 321 г / черный', 1, 1, 1, ''),
(59, 'Bravis NB76', 2, 151, 1143, 1, 'Bravis', 'Экран 6.95\" IPS (1280х720) MultiTouch / MediaTek 8321 (1.3 ГГц) / RAM 2 ГБ / 16 ГБ встроенной памяти + microSD / 3G / Wi-Fi / Bluetooth 4.0 / основная камера 2 Мп + фронтальная 0.3 Мп / GPS / A-GPS / поддержка 2-х СИМ-карт / Android 8.1 / 280 г / черный', 1, 1, 1, ''),
(60, 'Монитор 23.6', 3, 42532, 6700, 1, 'MSI', 'Диагональ дисплея: 23.6\"\r\nМаксимальное разрешение дисплея: 1920 x 1080\r\nТип матрицы: VA\r\nВремя реакции матрицы: 1 мс\r\nЯркость дисплея: 250 кд/м2\r\nКонтрастность дисплея: 3000:1\r\nОсобенности: Изогнутый экран,  Flicker-Free\r\nСтрана регистрации бренда: Тайвань', 0, 1, 1, ''),
(61, 'Монитор 27', 3, 423, 9700, 1, 'Samsung', 'Диагональ дисплея: 27\"\r\nМаксимальное разрешение дисплея: 2560 x 1440\r\nТип матрицы: VA\r\nВремя реакции матрицы: 4 мс (GtG)\r\nЯркость дисплея: Минимальная: 250 кд/м²\r\nСтардартная: 300 кд/м²\r\nКонтрастность дисплея: 3000:1\r\nОсобенности: Изогнутый экран,  Flicker-Free\r\nСтрана регистрации бренда: Корея', 1, 1, 1, ''),
(62, 'Монитор 23.8\" Acer Nitro', 3, 365, 2352, 1, 'Acer', 'Диагональ дисплея: 23.8\"\r\nМаксимальное разрешение дисплея: 1920 x 1080\r\nТип матрицы: IPS IPS\r\nВремя реакции матрицы: 1 мс\r\nЯркость дисплея: 250 кд/м²\r\nКонтрастность дисплея: Статическая: 1000:1\r\nДинамическая: 100M:1\r\nОсобенности: LED-подсветка LED-подсветка,  \"Безрамочный\" (Сinema screen),  Flicker-Free', 0, 1, 1, ''),
(63, 'Artline Overlord X88 v88', 4, 325, 26457, 1, 'Artline', 'AMD Ryzen 7 1700 (3.0 - 3.7 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 240 ГБ / AMD Radeon RX580, 8 ГБ / без ОД / LAN / без ОС', 1, 1, 1, ''),
(64, 'ARTLINE Gaming X91', 4, 321, 38467, 1, 'ARTLINE', 'Intel Core i5-9600K (3.7 - 4.6 ГГц) / RAM 16 ГБ / HDD 2 TБ + SSD 480 ГБ / nVIdia GeForce GTX 1070 Ti, 8 ГБ / без ОД / LAN / без ОС', 0, 1, 1, ''),
(65, 'Artline Gaming X48 v04', 4, 364, 22999, 1, 'ARTLINE', 'AMD Ryzen 5 1600X (3.6 - 4.0 ГГц) / RAM 16 ГБ / HDD 1 ТБ + SSD 240 ГБ / AMD Radeon RX580, 8 ГБ / без ОД / LAN / без ОС', 0, 1, 1, '');

-- --------------------------------------------------------

--
-- Структура таблицы `product_order`
--

CREATE TABLE `product_order` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `user_comment` text NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `products` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_order`
--

INSERT INTO `product_order` (`id`, `user_name`, `user_phone`, `user_comment`, `user_id`, `date`, `products`, `status`) VALUES
(47, 'dima', '0954370924', 'yes', 16, '2019-04-08 15:14:16', '{\"40\":3,\"39\":1,\"38\":1,\"44\":4,\"43\":6,\"45\":4,\"42\":1,\"41\":1}', 1),
(48, 'dima', '9437667376403430', 'yes', 16, '2019-04-08 15:20:24', '{\"45\":1}', 1),
(49, 'dima', '943766737640343-0', 'sdacasdsa', 16, '2019-04-08 15:33:49', '{\"45\":1}', 1),
(50, 'dima', '943766737640343-0', 'sdacasdsa', 16, '2019-04-08 15:35:50', 'false', 1),
(51, 'dima', '943766737640343-0', 'fafas', 16, '2019-04-08 15:35:58', '{\"40\":1}', 1),
(52, 'dima', '03081992', 'yes', 16, '2019-04-08 15:47:11', '{\"44\":2,\"45\":1}', 1),
(53, 'safa', '943766737640343-0', 'yes', 16, '2019-04-08 15:47:31', '{\"44\":1}', 1),
(54, 'dima', '943766737640343-0', 'dass', 16, '2019-04-08 15:48:34', '{\"45\":1}', 1),
(55, 'dima', 'awd', 'awd', 16, '2019-04-08 15:49:14', '{\"44\":1,\"43\":1}', 1),
(56, 'dima', '943766737640343-0', 'awd', 16, '2019-04-08 16:05:59', '{\"44\":1,\"43\":1}', 1),
(57, 'dima', 'dawds', 'adsda', 16, '2019-04-08 16:11:24', '{\"44\":1}', 1),
(58, 'dima', '943766737640343-0', 'fafas', 16, '2019-04-09 07:02:47', '{\"40\":1,\"39\":1}', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `role`) VALUES
(21, 'Дмитрий ', 'dimagloshkin@gmail.com', '03081992', 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT для таблицы `product_order`
--
ALTER TABLE `product_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
