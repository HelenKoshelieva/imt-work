-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 23 2020 г., 22:12
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `storeproject`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Статья первая', 'statya_pervaya)', 'Тест первой статьи', '2020-11-23 21:02:20', '2020-11-23 21:02:20'),
(2, 'Статья вторая', 'statya_2)', 'Тест второй статьи', '2020-11-23 21:02:51', '2020-11-23 21:02:51'),
(3, 'Статья 3', 'statya_3)', 'Тест 3 статьи', '2020-11-23 21:03:03', '2020-11-23 21:03:03'),
(4, 'Статья 4', 'statya_4)', 'Тест 4 статьи', '2020-11-23 21:03:10', '2020-11-23 21:03:10'),
(5, 'Статья 5', 'statya_5)', 'Тест 5 статьи', '2020-11-23 21:03:15', '2020-11-23 21:03:15'),
(6, 'Статья 6', 'statya_6)', 'Тест 6 статьи', '2020-11-23 21:03:22', '2020-11-23 21:03:22'),
(7, 'Статья 7', 'statya_7)', 'Тест 7 статьи', '2020-11-23 21:03:29', '2020-11-23 21:03:29'),
(8, 'Статья 8', 'statya_8)', 'Тест 8 статьи', '2020-11-23 21:03:36', '2020-11-23 21:03:36'),
(9, 'Статья 9', 'statya_9)', 'Тест 9 статьи', '2020-11-23 21:03:42', '2020-11-23 21:03:42'),
(10, 'Статья 10', 'statya_10)', 'Тест 10 статьи', '2020-11-23 21:03:54', '2020-11-23 21:03:54');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `publish`) VALUES
(1, 'Категория 1', NULL, 1),
(2, 'Категория 2', NULL, 1),
(3, 'Категория 3', NULL, 1),
(4, 'Категория 4', NULL, 1),
(5, 'Категория 5', NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(50) NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `phone`, `created_at`, `updated_at`) VALUES
(1, 1, '380660043451', '2020-11-23 21:37:12', '2020-11-23 21:37:12'),
(2, 2, '3806601111', '2020-11-23 21:37:39', '2020-11-23 21:37:39'),
(3, 3, '3806601111', '2020-11-23 21:38:07', '2020-11-23 21:38:07'),
(4, 5, '380662333444', '2020-11-23 21:38:20', '2020-11-23 21:38:20'),
(5, 4, '380662333333', '2020-11-23 21:38:30', '2020-11-23 21:38:30');

-- --------------------------------------------------------

--
-- Структура таблицы `orders_to_products`
--

CREATE TABLE `orders_to_products` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders_to_products`
--

INSERT INTO `orders_to_products` (`id`, `order_id`, `product_id`, `price`) VALUES
(1, 1, 36, '15'),
(2, 1, 42, '152'),
(3, 1, 40, '63'),
(4, 1, 43, '15'),
(5, 2, 39, '152'),
(6, 2, 45, '5656'),
(7, 2, 49, '15'),
(8, 3, 39, '152'),
(9, 3, 45, '5656'),
(10, 3, 49, '15'),
(11, 4, 39, '152'),
(12, 4, 45, '5656'),
(13, 4, 49, '15'),
(14, 5, 39, '152'),
(15, 5, 45, '5656'),
(16, 5, 49, '15');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `articul` int(50) NOT NULL,
  `brand` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `publish` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `articul`, `brand`, `image_path`, `description`, `price`, `category_id`, `created_at`, `updated_at`, `publish`) VALUES
(36, 'Пенал', 123457, 'Школьник', 'https://i2.rozetka.ua/goods/18748288/225179665_images_18748288147.jpg', NULL, '15.50', 2, '2020-11-23 20:45:53', '2020-11-23 20:45:53', 0),
(37, 'Тетрадь', 123458, 'Офис', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0QeXCQAbApZjTpSb9GszIKw0aRVFo6sMN_A&usqp=CAU', NULL, '866.00', 3, '2020-11-23 20:45:53', '2020-11-23 20:45:53', 1),
(38, 'Ручка', 123459, 'Ластикюа', 'https://pm1.narvii.com/6967/ef2fdda5a5506631be4dcccf1be97575f2f52601r1-527-540v2_uhq.jpg', 'Отличный товар)', '5656.00', 4, '2020-11-23 20:45:53', '2020-11-23 20:45:53', 0),
(39, 'Книга', 123456, 'Ластикюа', 'https://pm1.narvii.com/6967/ef2fdda5a5506631be4dcccf1be97575f2f52601r1-527-540v2_uhq.jpg', 'Отличный товар)', '152.00', 1, '2020-11-23 20:45:53', '2020-11-23 20:45:53', 1),
(40, 'Карандаш', 123460, 'Школьник', 'https://i2.rozetka.ua/goods/18748288/225179665_images_18748288147.jpg', NULL, '63.00', 5, '2020-11-23 20:45:53', '2020-11-23 20:45:53', 1),
(41, 'Линейка', 123461, 'Офис', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0QeXCQAbApZjTpSb9GszIKw0aRVFo6sMN_A&usqp=CAU', NULL, '78.00', 6, '2020-11-23 20:45:53', '2020-11-23 20:45:53', 0),
(42, 'Фломастер', 123462, 'Ластикюа', 'https://pm1.narvii.com/6967/ef2fdda5a5506631be4dcccf1be97575f2f52601r1-527-540v2_uhq.jpg', 'Отличный товар)', '152.00', 1, '2020-11-23 20:45:53', '2020-11-23 20:45:53', 1),
(43, 'Альбом для рисования', 123463, 'Школьник', 'https://i2.rozetka.ua/goods/18748288/225179665_images_18748288147.jpg', NULL, '15.00', 2, '2020-11-23 20:45:53', '2020-11-23 20:45:53', 0),
(44, 'Степлер', 123464, 'Офис', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0QeXCQAbApZjTpSb9GszIKw0aRVFo6sMN_A&usqp=CAU', 'Отличный товар)', '866.00', 3, '2020-11-23 20:45:53', '2020-11-23 20:45:53', 1),
(45, 'Скобы', 123465, 'Ластикюа', 'https://pm1.narvii.com/6967/ef2fdda5a5506631be4dcccf1be97575f2f52601r1-527-540v2_uhq.jpg', NULL, '5656.00', 4, '2020-11-23 20:45:53', '2020-11-23 20:45:53', 0),
(46, 'Сумка', 123466, 'Школьник', 'https://i2.rozetka.ua/goods/18748288/225179665_images_18748288147.jpg', NULL, '36.30', 5, '2020-11-23 20:45:53', '2020-11-23 20:45:53', 1),
(47, 'Папка', 123467, 'Офис', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0QeXCQAbApZjTpSb9GszIKw0aRVFo6sMN_A&usqp=CAU', NULL, '12.00', 6, '2020-11-23 20:45:53', '2020-11-23 20:45:53', 0),
(48, 'Стикер', 123468, 'Ластикюа', 'https://pm1.narvii.com/6967/ef2fdda5a5506631be4dcccf1be97575f2f52601r1-527-540v2_uhq.jpg', 'Отличный товар)', '152.00', 4, '2020-11-23 20:45:53', '2020-11-23 20:45:53', 1),
(49, 'Мел', 123469, 'Школьник', 'https://i2.rozetka.ua/goods/18748288/225179665_images_18748288147.jpg', NULL, '15.00', 5, '2020-11-23 20:45:53', '2020-11-23 20:45:53', 0),
(50, 'Ластик', 123470, 'Офис', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0QeXCQAbApZjTpSb9GszIKw0aRVFo6sMN_A&usqp=CAU', 'Отличный товар)', '866.00', 6, '2020-11-23 20:45:53', '2020-11-23 20:45:53', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Иванов Иван Иванович', 'tst@ua', '380660043451', 'test1', '2020-11-23 21:13:03', '2020-11-23 21:13:03'),
(2, 'Федор', 'tst1@ua', '3806601111', 'test2', '2020-11-23 21:13:19', '2020-11-23 21:13:19'),
(3, 'Петр', 'tst2@ua', '38066222222', 'test3', '2020-11-23 21:13:39', '2020-11-23 21:13:39'),
(4, 'Александра', 'tst3@ua', '380662333333', 'test33', '2020-11-23 21:13:59', '2020-11-23 21:13:59'),
(5, 'Мария', 'tst4@ua', '380662333444', 'test34', '2020-11-23 21:14:19', '2020-11-23 21:14:19');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `orders_to_products`
--
ALTER TABLE `orders_to_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`) USING HASH;

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `orders_to_products`
--
ALTER TABLE `orders_to_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `orders_to_products`
--
ALTER TABLE `orders_to_products`
  ADD CONSTRAINT `orders_to_products_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `orders_to_products_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
