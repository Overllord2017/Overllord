-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 22 2022 г., 17:00
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
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id_images` int NOT NULL,
  `image` varchar(45) DEFAULT NULL,
  `extra_images` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id_images`, `image`, `extra_images`) VALUES
(1, 'images_1.png', '\'images_11.png\', \'images_111.png\''),
(2, 'images_2.png', '\'images_22.png\', \'images_222.png\'');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id_products` int NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `section_list` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price_without_discount` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `promocode_price` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `count_products` int DEFAULT NULL,
  `articul` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id_products`, `name`, `description`, `section_list`, `price`, `price_without_discount`, `promocode_price`, `count_products`, `articul`) VALUES
(1, 'РУБАШКА MEDICINE', 'Рубашка Medicine выполнена из вискозной ткани с клетчатым узором. Детали: прямой крой; отложной воротник; планка из маджеты на пуговицах; карман на груди.', '\'Рубашки\'. \'Летняя одежда\'', '2499.00', '2699.00', '2227.00', 5, 1),
(2, 'Худи Medicine Худи', 'Толстовка удлинённая и прежде всего привлекает своей длиной по спинке (до 78 см), объёмными рукавами и манжетом с прорезью для большого пальца. ', '\'Худи\', \'Летняя одежда\'', '2900.00', '3100.00', '2600.00', 21, 2),
(3, 'Худи COMFYCLTH', 'Худи объемное с накладным карманом и двойным капюшоном. Комфортный оверсайз со спущенным плечом. Начёс в процессе носки может скатываться. Универсальный крой позволяет сочетать и носить данное изделие с абсолютно любыми брюками', 'Худи', '3500.00', '3850.00', '3400.00', 10, 2),
(4, 'Шорты спортивные Top Top', 'Данный товар является частью проекта Lamoda planet - специального раздела нашего каталога, где мы собрали экологичные, этичные, инклюзивные и благотворительные товары.', 'Летняя одежда', '4200.00', '4500.00', '3900.00', 7, 2);

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
(2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `sections`
--

CREATE TABLE `sections` (
  `id_sections` int NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `sections`
--

INSERT INTO `sections` (`id_sections`, `name`, `description`) VALUES
(1, 'Летняя одежда', 'Яркая одежда на лето, рубашки, футболки, шорты и тд.'),
(2, 'Рубашки', 'Рубашки буржуйских и отечественных брендов'),
(3, 'Худи', 'Очень теплые худи, мягкие и очень удобные.');

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
  ADD PRIMARY KEY (`id_sections`);

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
  MODIFY `id_sections` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `product_pictures`
--
ALTER TABLE `product_pictures`
  ADD CONSTRAINT `fk_products_has_images_images1` FOREIGN KEY (`images_id_images`) REFERENCES `images` (`id_images`),
  ADD CONSTRAINT `fk_products_has_images_products1` FOREIGN KEY (`products_id_products`) REFERENCES `products` (`id_products`);

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
