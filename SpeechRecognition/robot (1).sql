-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2024 at 07:05 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `robot`
--

-- --------------------------------------------------------

--
-- Table structure for table `controlpanel`
--

CREATE TABLE `controlpanel` (
  `id` int(11) NOT NULL,
  `direction` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `controlpanel`
--

INSERT INTO `controlpanel` (`id`, `direction`) VALUES
(1, 'Left'),
(2, 'Stop'),
(3, 'Left'),
(4, 'Stop'),
(5, 'Left'),
(9, 'Backward'),
(10, 'Stop'),
(12, 'Stop'),
(13, 'Right'),
(15, 'Left'),
(16, 'Stop'),
(17, ''),
(19, 'Backward'),
(20, 'Left'),
(21, 'Stop'),
(22, ''),
(23, 'Left'),
(24, ''),
(25, ''),
(26, 'Stop'),
(27, 'Right'),
(28, 'Backward'),
(29, ''),
(30, 'Backward'),
(31, 'Stop'),
(32, 'Left'),
(33, ''),
(34, 'Left'),
(35, ''),
(36, ''),
(37, ''),
(38, 'Backward'),
(39, 'Stop'),
(40, ''),
(41, ''),
(42, ''),
(43, 'Backward');

-- --------------------------------------------------------

--
-- Table structure for table `speech`
--

CREATE TABLE `speech` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `speech`
--

INSERT INTO `speech` (`id`, `text`) VALUES
(1, 'hi hi'),
(2, 'good morning');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `controlpanel`
--
ALTER TABLE `controlpanel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speech`
--
ALTER TABLE `speech`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `controlpanel`
--
ALTER TABLE `controlpanel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `speech`
--
ALTER TABLE `speech`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
