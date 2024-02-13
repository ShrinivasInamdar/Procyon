-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2022 at 12:23 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `procyon2022`
--
CREATE DATABASE IF NOT EXISTS `procyon2022` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `procyon2022`;

-- --------------------------------------------------------

--
-- Table structure for table `crregistration`
--

DROP TABLE IF EXISTS `crregistration`;
CREATE TABLE `crregistration` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crregistration`
--

INSERT INTO `crregistration` (`id`, `username`, `password`, 'category') VALUES
(2, 'VARUN CASTELLO', 2113027), 
(3, 'VADIRAJ INAMDAR', 2014059),
(4, 'SHRINIVAS GURURAJ INAMDAR', 2314092),
(5, 'SANCHA VICTORIA GOMES', 2316039),
(6, 'SAHIL SUBHASH PATIL', 2121030),
(7, 'SARVADNYA SANJEEV GAUNS DESSAI ', 2311022),
(8, 'LYDON FERNANDES', 2112019),
(9, 'ANANYA MAHESH SAWANT ', 2111008),
(10, 'RAJAT KASHALKAR', 2111018),
(11, 'AYYAN SHAIKH ', 2312006),
(12, 'VANOSH FERNANDES', 2216055),
(13, 'SAMUEL MIRANDA ', 2114043),
(14, 'OM MAHANAND PARAB', 2214033), 
(15, 'AADARSH CHODANKAR', 2012001), 
(16, 'JEREMY GILBERT', 2013010),  
(17, 'ABHISHEK DIAS', 2212011), 
(18, 'LIAM MENDES', 2211011); 

-- --------------------------------------------------------

--
-- Table structure for table `deptregistrations`
--

DROP TABLE IF EXISTS `deptregistrations`;
CREATE TABLE `deptregistrations` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` int(7) NOT NULL,
  `category` varchar(20) NOT NULL DEFAULT 'class'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deptregistrations`
--

INSERT INTO `deptregistrations` (`id`, `username`, `password`, `category`) VALUES
(1, 'LYZANDER GOMES', 1912025, 'department'),
(2, 'YASH PHAL DESSAI', 2022025, 'department'),
(3, 'ANIRUDDHA SURAWASE', 2023007, 'department'),
(4, 'REEV DSOUZA', 1914036, 'department'),
(5, 'SHRUTI SAWANT', 2021037, 'department');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crregistration`
--
ALTER TABLE `crregistration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deptregistrations`
--
ALTER TABLE `deptregistrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crregistration`
--
ALTER TABLE `crregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `deptregistrations`
--
ALTER TABLE `deptregistrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
