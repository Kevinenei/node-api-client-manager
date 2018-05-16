-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 16, 2018 at 12:51 AM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id_news` int(11) NOT NULL,
  `dni` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `apellido` text,
  `email` text,
  `tel` int(40) DEFAULT NULL,
  `data_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id_news`, `dni`, `name`, `apellido`, `email`, `tel`, `data_created`) VALUES
(132, 40459408, 'AXEL', 'ROJAS', 'axelrojas@hotmail.com', 1535177012, '2017-09-13 19:49:54'),
(135, 40459407, 'KEVIN', 'ENEI', 'kevinenei@hotmail.com', 1531234565, '2018-05-15 16:56:31'),
(136, 40459406, 'ROXANA', 'MIGLIOTI', 'roxana@gmail.com', 1535157012, '2018-05-15 16:59:58');

-- --------------------------------------------------------

--
-- Table structure for table `pagos`
--

CREATE TABLE `pagos` (
  `Id` int(11) NOT NULL,
  `dni` int(11) NOT NULL,
  `pago` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pagos`
--

INSERT INTO `pagos` (`Id`, `dni`, `pago`, `date`) VALUES
(1, 40459408, 3656, '2018-05-15 22:01:35'),
(2, 40459408, 2024, '2018-05-15 22:01:38'),
(3, 40459407, 1449, '2018-05-16 03:43:50'),
(4, 40459407, 685, '2018-05-16 03:43:50'),
(5, 40459407, 1449, '2018-05-16 03:43:56'),
(6, 40459407, 685, '2018-05-16 03:43:56'),
(7, 40459407, 789, '2018-05-16 03:44:32'),
(8, 40459406, 1990, '2018-05-16 03:44:32'),
(9, 40459407, 789, '2018-05-16 03:44:37'),
(10, 40459406, 1990, '2018-05-16 03:44:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_news`),
  ADD UNIQUE KEY `dni` (`dni`);

--
-- Indexes for table `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id_news` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;
--
-- AUTO_INCREMENT for table `pagos`
--
ALTER TABLE `pagos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
