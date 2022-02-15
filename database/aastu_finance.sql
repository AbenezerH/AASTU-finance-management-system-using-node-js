-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2022 at 02:10 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aastu_finance`
--

-- --------------------------------------------------------

--
-- Table structure for table `in-coming`
--

CREATE TABLE `in-coming` (
  `ID` int(20) NOT NULL,
  `Received-from` varchar(50) NOT NULL,
  `Amount` double NOT NULL,
  `Date` date NOT NULL,
  `Reason` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `in-coming`
--

INSERT INTO `in-coming` (`ID`, `Received-from`, `Amount`, `Date`, `Reason`) VALUES
(1, 'Ministry of Science and Higher Education', 50000000, '2022-01-01', 'The year budget from the ministry of Science and Higher Education for the 2014 ec calendar year'),
(2, 'Ministry of Water Irrigation and Energy', 560000, '2022-01-11', 'The payments received by AASTU for the collaborative development of power management software '),
(3, 'Ethiopian Space Science and Technology Institute', 625000, '2021-09-01', 'The payments received by AASTU for the collaborative development of a drone hardware and control software system'),
(4, 'Abebe cement factory', 25000, '2022-01-10', 'The payments made by Abebe cement factory to AASTU for the purchase of ERP system'),
(5, 'Addis paper production', 300000, '2022-01-13', 'The payments received for the licensing of new pulp making technology developed in AASTU');

-- --------------------------------------------------------

--
-- Table structure for table `out-going`
--

CREATE TABLE `out-going` (
  `ID` int(20) NOT NULL,
  `Made-to` varchar(50) NOT NULL,
  `Amount` double NOT NULL,
  `Date` date NOT NULL,
  `Reason` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `out-going`
--

INSERT INTO `out-going` (`ID`, `Made-to`, `Amount`, `Date`, `Reason`) VALUES
(1, 'Ethio-telecom', 100000, '2022-02-08', 'The payment for ethio-telecom for the wifi connection'),
(2, 'Dr. Brad James', 80000, '2021-12-01', 'The research grant released to Dr. Brad James for the research on construction materials'),
(3, 'AASTU human resource management', 1000000, '2022-02-07', 'The payroll payment for the staff made to the AASTU Human Resource department to be paid to staff'),
(4, 'AASTU inventory department', 250000, '2022-02-08', 'The payment made to the AASTU inventory department for the acquisition of cleaning supplies'),
(5, 'Chemical Engineering department', 10000, '2022-02-07', 'The payments made to chemical engineering department for organizing industry visitation');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(20) NOT NULL,
  `User-name` varchar(30) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `User-name`, `Password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `in-coming`
--
ALTER TABLE `in-coming`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `out-going`
--
ALTER TABLE `out-going`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `in-coming`
--
ALTER TABLE `in-coming`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `out-going`
--
ALTER TABLE `out-going`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
