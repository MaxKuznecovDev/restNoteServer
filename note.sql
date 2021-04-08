-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 08 2021 г., 13:38
-- Версия сервера: 8.0.19
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `note`
--

-- --------------------------------------------------------

--
-- Структура таблицы `algorithms`
--

CREATE TABLE `algorithms` (
  `id_algorithm` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `algorithms`
--

INSERT INTO `algorithms` (`id_algorithm`, `name`) VALUES
(1, 'Спорт'),
(2, 'Поход в горы');

-- --------------------------------------------------------

--
-- Структура таблицы `records`
--

CREATE TABLE `records` (
  `id_record` int NOT NULL,
  `id_algorithm` int NOT NULL,
  `text_data` varchar(255) NOT NULL,
  `done` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `records`
--

INSERT INTO `records` (`id_record`, `id_algorithm`, `text_data`, `done`) VALUES
(1, 1, 'Пробежка', 1),
(2, 1, 'Подтягивание', 0),
(3, 1, 'Пресс', 0),
(4, 2, 'Собрать рюкзак', 1),
(5, 2, 'Проложить маршрут', 1),
(6, 2, 'Купить билет на автобус', 0),
(7, 2, 'Предупредить маму', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `algorithms`
--
ALTER TABLE `algorithms`
  ADD PRIMARY KEY (`id_algorithm`);

--
-- Индексы таблицы `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`id_record`),
  ADD KEY `id_algorithm` (`id_algorithm`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `algorithms`
--
ALTER TABLE `algorithms`
  MODIFY `id_algorithm` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT для таблицы `records`
--
ALTER TABLE `records`
  MODIFY `id_record` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `records`
--
ALTER TABLE `records`
  ADD CONSTRAINT `records_ibfk_1` FOREIGN KEY (`id_algorithm`) REFERENCES `algorithms` (`id_algorithm`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
