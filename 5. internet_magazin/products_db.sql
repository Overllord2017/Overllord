-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 23 2022 г., 07:04
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
-- База данных: `products_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `extra_images`
--

CREATE TABLE `extra_images` (
  `id` int NOT NULL,
  `extra_images` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `extra_images`
--

INSERT INTO `extra_images` (`id`, `extra_images`) VALUES
(1, 'images_11.png'),
(2, 'images_22.png');

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id_images` int NOT NULL,
  `image` varchar(45) DEFAULT NULL,
  `alt` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id_images`, `image`, `alt`) VALUES
(1, 'images_1.png', NULL),
(2, 'images_2.png', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id_products` int NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `price` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price_without_discount` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `promocode_price` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `count_products` int DEFAULT NULL,
  `articul` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id_products`, `name`, `description`, `price`, `price_without_discount`, `promocode_price`, `count_products`, `articul`) VALUES
(1, 'РУБАШКА MEDICINE', 'Рубашка Medicine выполнена из вискозной ткани с клетчатым узором. Детали: прямой крой; отложной воротник; планка из маджеты на пуговицах; карман на груди.', '2499.00', '2699.00', '2227.00', 5, 1),
(2, 'Худи Medicine Худи', 'Толстовка удлинённая и прежде всего привлекает своей длиной по спинке (до 78 см), объёмными рукавами и манжетом с прорезью для большого пальца. ', '2900.00', '3100.00', '2600.00', 21, 2),
(3, 'Худи COMFYCLTH', 'Худи объемное с накладным карманом и двойным капюшоном. Комфортный оверсайз со спущенным плечом. Начёс в процессе носки может скатываться. Универсальный крой позволяет сочетать и носить данное изделие с абсолютно любыми брюками', '3500.00', '3850.00', '3400.00', 10, 2),
(4, 'Шорты спортивные Top Top', 'Данный товар является частью проекта Lamoda planet - специального раздела нашего каталога, где мы собрали экологичные, этичные, инклюзивные и благотворительные товары.', '4200.00', '4500.00', '3900.00', NULL, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `product_pictures`
--

CREATE TABLE `product_pictures` (
  `products_id_products` int NOT NULL,
  `images_id_images` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `product_pictures`
--

INSERT INTO `product_pictures` (`products_id_products`, `images_id_images`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `sections`
--

CREATE TABLE `sections` (
  `id_sections` int NOT NULL,
  `main_section_id` int DEFAULT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `sections`
--

INSERT INTO `sections` (`id_sections`, `main_section_id`, `name`, `description`) VALUES
(1, NULL, 'Летняя одежда', 'Яркая одежда на лето, рубашки, футболки, шорты и тд.'),
(2, NULL, 'Рубашки', 'Рубашки буржуйских и отечественных брендов'),
(3, 1, 'Худи', 'Очень теплые худи, мягкие и очень удобные.'),
(4, NULL, 'Зимняя одежда', 'Теплая одежда для холодной зимы');

-- --------------------------------------------------------

--
-- Структура таблицы `sections_has_products`
--

CREATE TABLE `sections_has_products` (
  `sections_id_sections` int NOT NULL,
  `products_id_products` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `sections_has_products`
--

INSERT INTO `sections_has_products` (`sections_id_sections`, `products_id_products`) VALUES
(2, 1),
(3, 2),
(3, 3),
(1, 4);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `extra_images`
--
ALTER TABLE `extra_images`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id_images`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_products`);

--
-- Индексы таблицы `product_pictures`
--
ALTER TABLE `product_pictures`
  ADD PRIMARY KEY (`products_id_products`,`images_id_images`),
  ADD KEY `fk_products_has_images_images1_idx` (`images_id_images`),
  ADD KEY `fk_products_has_images_products1_idx` (`products_id_products`);

--
-- Индексы таблицы `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id_sections`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `main_section_id` (`main_section_id`) USING BTREE;

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
-- AUTO_INCREMENT для таблицы `extra_images`
--
ALTER TABLE `extra_images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id_images` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id_products` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `sections`
--
ALTER TABLE `sections`
  MODIFY `id_sections` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `extra_images`
--
ALTER TABLE `extra_images`
  ADD CONSTRAINT `extra_images_ibfk_1` FOREIGN KEY (`id`) REFERENCES `products` (`id_products`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `product_pictures`
--
ALTER TABLE `product_pictures`
  ADD CONSTRAINT `fk_products_has_images_images1` FOREIGN KEY (`images_id_images`) REFERENCES `images` (`id_images`),
  ADD CONSTRAINT `fk_products_has_images_products1` FOREIGN KEY (`products_id_products`) REFERENCES `products` (`id_products`);

--
-- Ограничения внешнего ключа таблицы `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `section__parent__fk` FOREIGN KEY (`main_section_id`) REFERENCES `sections` (`id_sections`) ON DELETE RESTRICT ON UPDATE RESTRICT;

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
/*
1.
SELECT s.id_sections,
p.count_products,
       s.name,
       sum(p.count_products) AS count_products
  FROM products p
  JOIN sections s
    ON s.id_sections = p.id_products
 GROUP BY s.id_sections, s.name
 ORDER BY s.id_sections


7. и 4.
SELECT s.id_sections,
p.count_products,
       s.name
  FROM products p
  JOIN sections s
    ON s.id_sections = p.id_products
 WHERE p.count_products > 0
 GROUP BY s.id_sections, s.name
 ORDER BY p.count_products DESC

3.
SELECT s.id_sections,
p.count_products,
       s.name
  FROM products p
  JOIN sections s
    ON s.id_sections = p.id_products
 WHERE p.count_products > 0
 GROUP BY s.id_sections, s.name
 ORDER BY p.count_products DESC
 
 */
