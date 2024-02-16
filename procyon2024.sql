-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 16, 2024 at 03:54 AM
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
  `contact` bigint(13) DEFAULT NULL,
  `category` varchar(20) NOT NULL DEFAULT 'class'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crregistration`
--

INSERT INTO `crregistration` (`id`, `username`, `password`, `contact`, `category`) VALUES
(1, 'VADIRAJ INAMDAR', 2014059, 7083491368, 'class'),
(2, 'JEREMY GILBERT', 2013010, 7709252200, 'class'),
(3, 'AADARSH CHODANKAR', 2012001, 7972180432, 'class'),
(4, 'SAHIL PATIL', 2121030, 8275384780, 'class'),
(5, 'SAMUEL MIRANDA', 2114043, 9028452328, 'class'),
(6, 'VARUN CASTELLO', 2113027, 9146992833, 'class'),
(7, 'LYDON FERNANDES', 2112019, 7249692831, 'class'),
(8, 'RAJAT KASHALKAR', 2111018, 7875911506, 'class'),
(9, 'OM PARAB', 2214033, 7083423318, 'class'),
(10, 'VANOSH FERNANDES', 2216055, 9405897258, 'class'),
(11, 'ABHISHEK DIAS', 2212011, 7743938887, 'class'),
(12, 'LIAM MENDES', 2211011, 9322754791, 'class'),
(13, 'ANANYA SAWANT', 2314008, 6366145473, 'class'),
(14, 'SHRINIVAS INAMDAR', 2314092, 7038823805, 'class'),
(15, 'SANCHA GOMES', 2316039, 9356892557, 'class'),
(16, 'AYYAN SHAIKH', 2312006, 9373607718, 'class'),
(17, 'SARVADNYA DESSAI', 2311022, 7558494898, 'class');

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
(1, 'VADIRAJ INAMDAR', 2014059, 'department'),
(2, 'AADARSH CHODANKAR', 2012001, 'department'),
(3, 'JEREMY GILBERT', 2013010, 'department'),
(4, 'SAHIL PATIL', 2121030, 'department');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `deptregistrations`
--
ALTER TABLE `deptregistrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
