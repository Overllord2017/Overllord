-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 25 2022 г., 07:01
-- Версия сервера: 8.0.24
-- Версия PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `store_choose`
Create Database `store_choose`;
use store_choose;
--

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id_images` int NOT NULL,
  `image` varchar(45) DEFAULT NULL,
  `alt` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id_images`, `image`, `alt`) VALUES
(1, 'images_1.png', NULL),
(2, 'images_2.png', NULL),
(3, 'images_3.png', NULL),
(4, 'images_4.png', NULL),
(5, 'images_5.png', NULL),
(6, 'images_6.png', NULL),
(7, 'image_7.png', NULL),
(8, 'image_8.png', NULL),
(9, 'image_9.png', NULL),
(10, 'image_10.png', NULL),
(11, 'extra_images_1.png', NULL),
(12, 'extra_images_2.png', NULL),
(13, 'extra_images_3.png', NULL),
(14, 'extra_images_4.png', NULL),
(15, 'extra_images_5.png', NULL),
(16, 'extra_images_6.png', NULL),
(17, 'extra_images_7.png', NULL),
(18, 'extra_images_8.png', NULL),
(19, 'extra_images_9.png', NULL),
(20, 'extra_images_10.png', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id_products` int NOT NULL,
  `main_sections_id` int NOT NULL,
  `image_id` int NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `price` decimal(20,2) NOT NULL,
  `price_without_discount` decimal(20,2) NOT NULL,
  `promocode_price` decimal(20,2) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `count_products` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id_products`, `main_sections_id`, `image_id`, `name`, `price`, `price_without_discount`, `promocode_price`, `description`, `count_products`) VALUES
(1, 1, 1, 'РУБАШКА MEDICINE', '2600.00', '2800.00', '2500.00', 'Рубашка Medicine выполнена из вискозной ткани с клетчатым узором. Детали: прямой крой; отложной воротник; планка из маджеты на пуговицах; карман на груди.', 5),
(2, 1, 2, 'Худи Medicine Худи', '3500.00', '4000.00', '3400.00', 'Толстовка удлинённая и прежде всего привлекает своей длиной по спинке (до 78 см), объёмными рукавами и манжетом с прорезью для большого пальца. ', 21),
(3, 3, 3, 'Худи COMFYCLTH', '3400.00', '3750.00', '2000.00', 'Худи объемное с накладным карманом и двойным капюшоном. Комфортный оверсайз со спущенным плечом. Начёс в процессе носки может скатываться. Универсальный крой позволяет сочетать и носить данное изделие с абсолютно любыми брюками', 10),
(4, 1, 4, 'Шорты спортивные Top Top', '2500.00', '2800.00', '2300.00', 'Данный товар является частью проекта Lamoda planet - специального раздела нашего каталога, где мы собрали экологичные, этичные, инклюзивные и благотворительные товары.', NULL),
(5, 7, 5, 'Мужские прямые джинсы Waterman Revolver', '7273.00', '10390.00', '7000.00', 'Мужские прямые джинсы Waterman Revolver\r\n \r\n\r\nМодель EQMDP03002\r\n\r\nThe model is 180cm/5\'11\" tall and wears a size 32\" in the photo', 3),
(6, 9, 6, 'Водостойкая куртка Nomad', '26990.00', '30000.00', '25000.00', 'Водостойкая и дышащая мембрана Quiksilver DryFlight® 10K (10 000 мм/5000 г)\r\nМатериал обработан водоотталкивающим составом DWR (Durable Water Repellent), не содержащим фтористых соединений\r\nПереработанный полиэстер\r\nУтеплитель Primaloft® Thermoplume с имитацией пера и Primaloft® Black Eco (350 г)\r\nСтеганая нейлоновая подкладка\r\nСъемный регулируемый капюшон\r\nКарманы для рук с двумя молниями — сверху и сбоку\r\nОдин сеточный карман на молнии', 4),
(7, 10, 7, 'Брюки-карго Cuffed', '6590.00', '7100.00', '6430.00', 'Эластичный хлопок плотностью 280 г/кв. м\r\nВинтажный стиль\r\nУзкий крой с зауженными внизу штанинами\r\nНеэластичный пояс на молнии и пуговице\r\nБоковые карманы\r\nЗадние карманы\r\nКарманы-карго\r\nШлевки под ремень\r\nЭластичные края штанин', 5),
(8, 10, 8, 'Мужские брюки Hue Hiller', '7990.00', '5593.00', '5106.00', 'Тонкая хлопчатобумажная саржа плотностью 170 г/кв. м\r\nПрямой повседневный крой\r\nПояс на плоской эластичной утяжке (вшита с изнанки)\r\nПередний боковой карман\r\nВертикальный мини-кармашек\r\nЗадние карманы\r\nГотовое изделие прошло смягчающую обработку\r\nДекоративная ширинка\r\nПринт с логотипом на переднем кармане\r\nНашивка с брендингом Quiksilver над правым задним карманом', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `product_extra_picthers`
--

CREATE TABLE `product_extra_picthers` (
  `id_product` int NOT NULL,
  `id_images` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `product_extra_picthers`
--

INSERT INTO `product_extra_picthers` (`id_product`, `id_images`) VALUES
(1, 11),
(2, 12),
(3, 13),
(4, 14),
(5, 15),
(6, 16),
(7, 17),
(8, 18);

-- --------------------------------------------------------

--
-- Структура таблицы `sections`
--

CREATE TABLE `sections` (
  `id_sections` int NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sections`
--

INSERT INTO `sections` (`id_sections`, `name`, `description`) VALUES
(1, 'Летняя одежда', 'Яркая одежда на лето, рубашки, футболки, шорты и тд.'),
(2, 'Рубашки', 'Рубашки буржуйских и отечественных брендов'),
(3, 'Худи', 'Очень теплые худи, мягкие и очень удобные.'),
(4, 'Зимняя одежда', 'Теплая одежда для холодной зимы'),
(5, 'Женская одежда', NULL),
(7, 'Джинсы', NULL),
(9, 'Куртки', NULL),
(10, 'Брюки', NULL),
(11, 'Футболки', NULL),
(12, 'Кеды и Кросовки', NULL),
(13, 'Свитеры и джемперы', NULL),
(14, 'Ботинки', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `sections_has_products`
--

CREATE TABLE `sections_has_products` (
  `sections_id_sections` int NOT NULL,
  `products_id_products` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sections_has_products`
--

INSERT INTO `sections_has_products` (`sections_id_sections`, `products_id_products`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(4, 6),
(1, 7),
(1, 8);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id_images`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_products`),
  ADD KEY `main_sections_id` (`main_sections_id`),
  ADD KEY `image_id` (`image_id`);

--
-- Индексы таблицы `product_extra_picthers`
--
ALTER TABLE `product_extra_picthers`
  ADD PRIMARY KEY (`id_images`,`id_product`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_images` (`id_images`);

--
-- Индексы таблицы `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id_sections`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `sections_has_products`
--
ALTER TABLE `sections_has_products`
  ADD PRIMARY KEY (`sections_id_sections`,`products_id_products`),
  ADD KEY `fk_sections_has_products_products1_idx` (`products_id_products`),
  ADD KEY `fk_sections_has_products_sections_idx` (`sections_id_sections`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id_images` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id_products` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `sections`
--
ALTER TABLE `sections`
  MODIFY `id_sections` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`main_sections_id`) REFERENCES `sections` (`id_sections`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`image_id`) REFERENCES `images` (`id_images`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `product_extra_picthers`
--
ALTER TABLE `product_extra_picthers`
  ADD CONSTRAINT `product_extra_picthers_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_products`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `product_extra_picthers_ibfk_2` FOREIGN KEY (`id_images`) REFERENCES `images` (`id_images`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `sections_has_products`
--
ALTER TABLE `sections_has_products`
  ADD CONSTRAINT `fk_sections_has_products_products1` FOREIGN KEY (`products_id_products`) REFERENCES `products` (`id_products`),
  ADD CONSTRAINT `fk_sections_has_products_sections` FOREIGN KEY (`sections_id_sections`) REFERENCES `sections` (`id_sections`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*1*/
SELECT s.name AS category, count(*) AS cnt
FROM products p
INNER JOIN sections s ON p.main_sections_id = s.id_sections
GROUP BY p.main_sections_id;
/*4*/
SELECT s.name AS category, count(*) AS cnt
FROM products p
INNER JOIN sections s ON p.main_sections_id = s.id_sections
GROUP BY p.main_sections_id 
ORDER BY cnt DESC;
/*7*/
SELECT * FROM `products`
WHERE `count_products` > 0;
