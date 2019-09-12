-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2019 年 09 月 12 日 16:53
-- 伺服器版本： 10.1.38-MariaDB
-- PHP 版本： 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `test1`
--

-- --------------------------------------------------------

--
-- 資料表結構 `Appointment`
--

CREATE TABLE `Appointment` (
  `Booking_Number` varchar(8) NOT NULL,
  `Patient_Number` varchar(8) NOT NULL,
  `Date` date NOT NULL,
  `Session` char(11) NOT NULL,
  `Venue` varchar(255) NOT NULL,
  `Doctor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `Appointment`
--

INSERT INTO `Appointment` (`Booking_Number`, `Patient_Number`, `Date`, `Session`, `Venue`, `Doctor`) VALUES
('00000001', '00000003', '2018-12-03', '11:00-12:00', 'Central', 'Tommy Yeung'),
('00000002', '00000003', '2019-02-14', '13:00-14:00', 'Central', 'Melody Wong'),
('00000003', '00000005', '2019-06-21', '10:00-11:00', 'Sha Tin', 'Jackson Fong'),
('00000004', '00000002', '2019-07-24', '14:00-15:00', 'Sha Tin', 'Patrick Yip'),
('00000005', '00000001', '2019-09-20', '15:00-16:00', 'Central', 'Tommy Yeung'),
('00000006', '00000002', '2019-09-01', '15:00-16:00', 'Central', 'Grace Leung'),
('00000007', '00000002', '2019-06-04', '10:00-11:00', 'Sha Tin', 'Happy Lam'),
('00000008', '00000004', '2019-07-06', '11:00-12:00', 'Sha Tin', 'Jackson Fong'),
('00000009', '00000004', '2019-08-07', '09:00-10:00', 'Central', 'Tommy Yeung'),
('00000010', '00000005', '2019-10-01', '10:00-11:00', 'Sha Tin', 'Patrick Yip');

-- --------------------------------------------------------

--
-- 資料表結構 `Diagnosis`
--

CREATE TABLE `Diagnosis` (
  `Booking_Number` char(8) NOT NULL,
  `Diagnosis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `Diagnosis`
--

INSERT INTO `Diagnosis` (`Booking_Number`, `Diagnosis`) VALUES
('00000001', 'Reflux esophagitis\r\n'),
('00000002', 'Allergic rhinitis'),
('00000003', 'Hypothyroidism'),
('00000004', 'Respiratory problems'),
('00000005', 'Diabetes'),
('00000006', 'Osteoarthritis'),
('00000007', 'Depressive disorder'),
('00000008', 'Visual refractive errors'),
('00000009', 'Acute laryngopharyngitis'),
('00000010', 'Asthma');

-- --------------------------------------------------------

--
-- 資料表結構 `Doctor`
--

CREATE TABLE `Doctor` (
  `Doctor_Number` char(8) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Entry Time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `Doctor`
--

INSERT INTO `Doctor` (`Doctor_Number`, `Name`, `Entry Time`) VALUES
('00000001', 'Tommy Yeung', '2018-03-06'),
('00000002', 'Melody Wong', '2018-04-11'),
('00000003', 'Grace Leung', '2018-12-04'),
('00000004', 'Jackson Fong', '2018-06-04'),
('00000005', 'Patrick Yip', '2018-12-05'),
('00000006', 'Happy Lam', '2018-02-03');

-- --------------------------------------------------------

--
-- 資料表結構 `Patient_Record`
--

CREATE TABLE `Patient_Record` (
  `Patient_Number` char(8) NOT NULL COMMENT 'Number given to the patient once s/he is resistered',
  `Name` varchar(100) NOT NULL COMMENT 'Name of the patient',
  `Gender` varchar(6) NOT NULL,
  `HKID_Number` char(7) NOT NULL COMMENT 'HKID number for identity validation',
  `Membership` char(100) NOT NULL COMMENT 'give out specific suite and medical advice',
  `Password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `Patient_Record`
--

INSERT INTO `Patient_Record` (`Patient_Number`, `Name`, `Gender`, `HKID_Number`, `Membership`, `Password`) VALUES
('00000001', 'Chan Tai Man', 'Male', 'A101019', 'Corporate', 'Aa123456'),
('00000002', 'Chan Siu Man', 'Female', 'A101021', 'Ordinary', 'Bb123456'),
('00000003', 'Chan Kwok Pui', 'Male', 'A207983', 'Ordinary', 'Cc123456'),
('00000004', 'Yuen Chik Sing', 'female', 'S123456', 'Ordinary', '123123'),
('00000005', 'Hello', 'male', 'E192834', 'Corporate', '123'),
('00000006', 'Billy Lam', 'male', 'F293241', 'Ordinary', '1234-567'),
('00000007', 'Lotus Leung', 'male', 'F129832', 'Ordinary', '3212-567'),
('00000008', 'Hugo Cheung', 'male', 'F232123', 'Ordinary', '1212-567');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `Appointment`
--
ALTER TABLE `Appointment`
  ADD PRIMARY KEY (`Booking_Number`);

--
-- 資料表索引 `Diagnosis`
--
ALTER TABLE `Diagnosis`
  ADD PRIMARY KEY (`Booking_Number`);

--
-- 資料表索引 `Doctor`
--
ALTER TABLE `Doctor`
  ADD PRIMARY KEY (`Doctor_Number`);

--
-- 資料表索引 `Patient_Record`
--
ALTER TABLE `Patient_Record`
  ADD UNIQUE KEY `Patient_Number` (`Patient_Number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
