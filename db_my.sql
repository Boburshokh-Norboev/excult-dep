-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 19 2022 г., 08:02
-- Версия сервера: 10.1.38-MariaDB
-- Версия PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `db_my`
--

-- --------------------------------------------------------

--
-- Структура таблицы `app_variables`
--

CREATE TABLE `app_variables` (
  `id` bigint(20) NOT NULL,
  `count` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `unique_text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `app_variables`
--

INSERT INTO `app_variables` (`id`, `count`, `description`, `unique_text`) VALUES
(1, 'Onlayn Excel testlari', 'Asosiy sahifadagi katta matn', 'main_main_title'),
(2, '350', 'Raqamlar qismidagi foydalanuvchilar soni', 'main_user_count'),
(3, '19', 'Raqamlar qismidagi testlar soni', 'main_test_count'),
(4, '5000', 'Raqamlar qismidagi bajarilgan savollar soni', 'main_completed_count'),
(5, 'boburbeknorboyev@gmail.com', 'Aloqa pochtasi', 'contact_mail');

-- --------------------------------------------------------

--
-- Структура таблицы `certificate`
--

CREATE TABLE `certificate` (
  `id` bigint(20) NOT NULL,
  `generated` bigint(20) NOT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `course`
--

CREATE TABLE `course` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `course`
--

INSERT INTO `course` (`id`, `description`, `name`) VALUES
(1, 'Boshlang\'ich bilimlarni tekshirish uchun Beginner testlari to\'plami.', 'Excelda ishlash asoslari (1-qism)'),
(2, 'Kurs izohi batafsil....................', 'Excelda hisoblash asoslari (2-qism)'),
(3, 'Hisobotlar bu biznesda moliyaning ajralmas qismi. shunday ekan har bir buxgalter excelda hisobot tayyorlashni bilishi zarur.......', 'Excelda Hisobotlar tayyorlash');

-- --------------------------------------------------------

--
-- Структура таблицы `result`
--

CREATE TABLE `result` (
  `id` bigint(20) NOT NULL,
  `natija` double NOT NULL,
  `qiymatlar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `result`
--

INSERT INTO `result` (`id`, `natija`, `qiymatlar`) VALUES
(1, 6, '1,5');

-- --------------------------------------------------------

--
-- Структура таблицы `role`
--

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'ROLE_USER'),
(2, 'ROLE_ADMIN'),
(3, 'ROLE_SUPER_ADMIN');

-- --------------------------------------------------------

--
-- Структура таблицы `stat`
--

CREATE TABLE `stat` (
  `id` bigint(20) NOT NULL,
  `asosiy_kalit` varchar(255) DEFAULT NULL,
  `attempt` int(11) NOT NULL,
  `attempt_time` datetime DEFAULT NULL,
  `completed` bit(1) NOT NULL,
  `kalitlar` varchar(255) DEFAULT NULL,
  `task_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `stat`
--

INSERT INTO `stat` (`id`, `asosiy_kalit`, `attempt`, `attempt_time`, `completed`, `kalitlar`, `task_id`, `user_id`) VALUES
(1, 'O72', 2, '2022-06-19 08:38:05', b'1', 'L31,W2', 1, 3),
(2, 'R82', 3, '2022-05-06 16:12:24', b'0', 'I9,B48', 1, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `topshiriq`
--

CREATE TABLE `topshiriq` (
  `id` bigint(20) NOT NULL,
  `asosiy_kalit` varchar(10) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `field_count` int(11) DEFAULT NULL,
  `kalitlar` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `course_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `topshiriq`
--

INSERT INTO `topshiriq` (`id`, `asosiy_kalit`, `description`, `field_count`, `kalitlar`, `name`, `course_id`) VALUES
(1, '', '_@ va _@ maydonlarining yig\'indisini @ maydoniga qiymatlab bering.', 2, '', 'Summa', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `topshiriq_results`
--

CREATE TABLE `topshiriq_results` (
  `topshiriq_id` bigint(20) NOT NULL,
  `results_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `topshiriq_results`
--

INSERT INTO `topshiriq_results` (`topshiriq_id`, `results_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `created_time` datetime DEFAULT NULL,
  `name` varchar(60) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(60) DEFAULT NULL,
  `surname` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `created_time`, `name`, `password`, `phone`, `surname`) VALUES
(1, '2022-03-18 04:11:16', 'ADMIN', '$2a$10$A7Up6dJ89qMB7vjJzoF0LeD2Iy.S4db/JW..nodSHYbizHmbxiPeu', '000000000', 'ADMIN'),
(2, '2022-03-18 04:11:16', 'SUPERADMIN', '$2a$10$MLJD07h0K8gbEVR/HyaYdeqIuFYrdzVgIm7XnilmKCR0b3n88TCta', '111111111', 'SUPERADMIN'),
(3, '2022-03-18 04:30:52', 'Bobur ', '$2a$10$i3LMDs9P9O/wPqvAQA4bVu9lgcWx06EyGgfIUc7doFJf1mrdbLxoi', '996631671', 'Norboyev'),
(4, '2022-05-06 16:06:42', 'Dmitriy', '$2a$10$szaxIHEaiMzPc5m7p9KadeQbyHelhJhGp6Lnydw221SuXWTSgZScG', '911111111', 'Kuznetsov');

-- --------------------------------------------------------

--
-- Структура таблицы `user_role`
--

CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(1, 2),
(2, 3),
(3, 1),
(4, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `app_variables`
--
ALTER TABLE `app_variables`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `certificate`
--
ALTER TABLE `certificate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKnnm153gu9kaknjb58euxms2uk` (`course_id`),
  ADD KEY `FKp2ure8wwndmepxyj2ey8r3lb2` (`user_id`);

--
-- Индексы таблицы `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `stat`
--
ALTER TABLE `stat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKt2we3ygbhqa3xx9sam501oauq` (`task_id`),
  ADD KEY `FKb1odngehg7jfetgisiodxj02y` (`user_id`);

--
-- Индексы таблицы `topshiriq`
--
ALTER TABLE `topshiriq`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKoujo0o7ucsrb20sdy0ds0406d` (`course_id`);

--
-- Индексы таблицы `topshiriq_results`
--
ALTER TABLE `topshiriq_results`
  ADD UNIQUE KEY `UK_1uln24wbmsjy3y0gqe76gxdjl` (`results_id`),
  ADD KEY `FKqagfcbab7jynigog3aecxn0li` (`topshiriq_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `app_variables`
--
ALTER TABLE `app_variables`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `certificate`
--
ALTER TABLE `certificate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `course`
--
ALTER TABLE `course`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `result`
--
ALTER TABLE `result`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `stat`
--
ALTER TABLE `stat`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `topshiriq`
--
ALTER TABLE `topshiriq`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `certificate`
--
ALTER TABLE `certificate`
  ADD CONSTRAINT `FKnnm153gu9kaknjb58euxms2uk` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `FKp2ure8wwndmepxyj2ey8r3lb2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ограничения внешнего ключа таблицы `stat`
--
ALTER TABLE `stat`
  ADD CONSTRAINT `FKb1odngehg7jfetgisiodxj02y` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKt2we3ygbhqa3xx9sam501oauq` FOREIGN KEY (`task_id`) REFERENCES `topshiriq` (`id`);

--
-- Ограничения внешнего ключа таблицы `topshiriq`
--
ALTER TABLE `topshiriq`
  ADD CONSTRAINT `FKoujo0o7ucsrb20sdy0ds0406d` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`);

--
-- Ограничения внешнего ключа таблицы `topshiriq_results`
--
ALTER TABLE `topshiriq_results`
  ADD CONSTRAINT `FK6b4m4cn6i7h7v7u314fu4ekm9` FOREIGN KEY (`results_id`) REFERENCES `result` (`id`),
  ADD CONSTRAINT `FKqagfcbab7jynigog3aecxn0li` FOREIGN KEY (`topshiriq_id`) REFERENCES `topshiriq` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
