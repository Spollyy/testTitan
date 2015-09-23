-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Сен 23 2015 г., 11:42
-- Версия сервера: 5.6.21
-- Версия PHP: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `testtitan`
--

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2015_09_21_104432_users', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` char(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `created_at`, `updated_at`, `login`, `email`, `password`, `date`) VALUES
(3, '2015-09-22 05:40:39', '2015-09-22 05:40:39', 'asdad', 'sd@d.d', '$2y$10$v02tzyB8LoULcvuGdfgHzuJLwvp4Ffk40me2Oh.VdMO9GteV2a2Da', '1442918439'),
(4, '2015-09-22 10:33:46', '2015-09-22 10:33:46', 'asdasda', 'asdasd@d.d', '$2y$10$kLKNOo8JzVqlVNY1MXp0uuqGwPt95NcU.yk/TrfGRcD6bt.PRoZ9m', '1442936026'),
(5, '2015-09-22 10:34:52', '2015-09-22 10:34:52', '1231112', 'asldjakldlasdj@d.d', '$2y$10$dzC205T6Cjc2gcvA8FDfIO9NqQUpgKKh1csUMSdBYot3uOq7y4uay', '1442936092'),
(6, '2015-09-22 10:35:15', '2015-09-22 10:35:15', '13212312', 'dass@d.d', '$2y$10$WG5zQvkllbLSGDu063Nt/ebIdhmioapvN.elG187S2WfbVp0oO9Qa', '1442936115'),
(7, '2015-09-22 11:50:09', '2015-09-22 11:50:09', 'a@a.a', 'sada@d.d', '$2y$10$hf8CklE.yRCuOnyLRgc1MO8lUhAU6NRuzgk9kzh8GI/JjjI40nvFa', '1442940609');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
