-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2024 at 07:02 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `procyon2024`
--

-- --------------------------------------------------------

--
-- Table structure for table `crregistration`
--

CREATE TABLE `crregistration` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` int(11) NOT NULL,
  `category` varchar(20) NOT NULL DEFAULT 'class'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crregistration`
--

INSERT INTO `crregistration` (`id`, `username`, `password`, `category`) VALUES
(2, 'VARUN CASTELLO', 2113027, 'class'),
(3, 'VADIRAJ INAMDAR', 2014059, 'class'),
(4, 'SHRINIVAS GURURAJ INAMDAR', 2314092, 'class'),
(5, 'SANCHA VICTORIA GOMES', 2316039, 'class'),
(6, 'SAHIL SUBHASH PATIL', 2121030, 'class'),
(7, 'SARVADNYA SANJEEV GAUNS DESSAI ', 2311022, 'class'),
(8, 'LYDON FERNANDES', 2112019, 'class'),
(9, 'ANANYA MAHESH SAWANT ', 2111008, 'class'),
(10, 'RAJAT KASHALKAR', 2111018, 'class'),
(11, 'AYYAN SHAIKH ', 2312006, 'class'),
(12, 'VANOSH FERNANDES', 2216055, 'class'),
(13, 'SAMUEL MIRANDA ', 2114043, 'class'),
(14, 'OM MAHANAND PARAB', 2214033, 'class'),
(15, 'AADARSH CHODANKAR', 2012001, 'class'),
(16, 'JEREMY GILBERT', 2013010, 'class'),
(17, 'ABHISHEK DIAS', 2212011, 'class'),
(18, 'LIAM MENDES', 2211011, 'class');

-- --------------------------------------------------------

--
-- Table structure for table `deptregistrations`
--

CREATE TABLE `deptregistrations` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` int(7) NOT NULL,
  `category` varchar(20) NOT NULL DEFAULT 'department'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
