-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2020 at 06:18 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicant_store`
--

CREATE TABLE `applicant_store` (
  `studentId` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `phoneNumber` varchar(15) NOT NULL,
  `email` varchar(150) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `classStatus` varchar(50) NOT NULL,
  `gpaNum` double NOT NULL,
  `numCreditHours` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `applicant_store`
--

INSERT INTO `applicant_store` (`studentId`, `firstName`, `lastName`, `phoneNumber`, `email`, `gender`, `dateOfBirth`, `classStatus`, `gpaNum`, `numCreditHours`) VALUES
(4, 'A', '', '', 'A@google.com', 'Female', '2000-01-01', 'Senior', 4, 12),
(6, 'F', 'F', '', 'F@google.com', 'Female', '2000-01-01', 'Junior', 4, 12);

-- --------------------------------------------------------

--
-- Table structure for table `awarded_store`
--

CREATE TABLE `awarded_store` (
  `studentId` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `phoneNumber` varchar(15) NOT NULL,
  `email` varchar(150) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `classStatus` varchar(50) NOT NULL,
  `gpaNum` double NOT NULL,
  `numCreditHours` int(50) NOT NULL,
  `awardedAmount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `awarded_store`
--

INSERT INTO `awarded_store` (`studentId`, `firstName`, `lastName`, `phoneNumber`, `email`, `gender`, `dateOfBirth`, `classStatus`, `gpaNum`, `numCreditHours`, `awardedAmount`) VALUES
(1, 'A', 'A', '123456789', 'a@gmail.com', 'Female', '2000-01-01', 'Senior', 4, 12, 2500),
(123456807, 'A', 'A', '', '', 'Female', '2000-01-01', 'Senior', 4, 12, 2500);

-- --------------------------------------------------------

--
-- Table structure for table `registrar_info`
--

CREATE TABLE `registrar_info` (
  `studentId` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `phoneNumber` varchar(15) NOT NULL,
  `email` varchar(150) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `classStatus` varchar(50) NOT NULL,
  `gpaNum` double NOT NULL,
  `numCreditHours` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registrar_info`
--

INSERT INTO `registrar_info` (`studentId`, `firstName`, `lastName`, `phoneNumber`, `email`, `gender`, `dateOfBirth`, `classStatus`, `gpaNum`, `numCreditHours`) VALUES
(1, 'A', 'A', '123456789', 'A@gmail.com', 'Female', '2000-01-01', 'Senior', 4, 12),
(2, 'B', 'B', '123456789', 'B@gmail.com', 'Female', '2000-01-01', 'Senior', 3, 12),
(3, 'C', 'C', '123456789', 'C@gmail.com', 'Female', '2000-01-01', 'Senior', 2, 12),
(4, 'D', 'D', '123456789', 'D@gmail.com', 'Female', '2000-01-01', 'Senior', 4, 10),
(5, 'E', 'E', '123456789', 'E@gmail.com', 'Female', '1996-01-01', 'Senior', 4, 12),
(6, 'F', 'F', '123456789', 'F@gmail.com', 'Female', '2000-01-01', 'Junior', 4, 12),
(7, 'G', 'G', '123456789', 'G@gmail.com', 'Female', '2000-01-01', 'Junior', 3.5, 12);

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `studentId` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `phoneNumber` varchar(15) NOT NULL,
  `email` varchar(150) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `classStatus` varchar(50) NOT NULL,
  `gpaNum` double NOT NULL,
  `numCreditHours` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`studentId`, `firstName`, `lastName`, `phoneNumber`, `email`, `gender`, `dateOfBirth`, `classStatus`, `gpaNum`, `numCreditHours`) VALUES
(1, 'Samantha(applicant)', 'Alkatib', '2484647846', 'salkatib@umich.edu', 'Female', '1998-07-04', 'Senior', 3.5, 12),
(2, 'John', 'Smith', '2488874532', 'tommysmith@yahoo.com', 'Male', '1998-09-23', 'Senior', 3.1, 15),
(3, 'Ashley', 'Lopez', '2487765438', 'alopez5@umich.edu', 'Female', '1997-06-14', 'Junior', 3.7, 13),
(4, 'Ryan', 'Watha', '248931517', 'rwatha@umich.edu', 'Male', '1998-04-15', 'Senior', 3.5, 15),
(44, 'testing', 'testing', '', '', 'Other', '2020-12-11', 'Senior', 0, 0),
(45, 'John', '', '', '', 'Other', '2020-12-11', 'Senior', 3.7, 15),
(46, 'John', '', '', '', 'Other', '2020-12-11', 'Senior', 3.7, 15),
(47, 'John', '', '', '', 'Other', '2020-12-11', 'Senior', 3.7, 15),
(48, 'John', '', '', '', 'Other', '2020-12-11', 'Senior', 3.7, 15),
(49, 'John', '', '', '', 'Other', '2020-12-11', 'Senior', 3.7, 15),
(50, 'John', '', '', '', 'Other', '2020-12-11', 'Senior', 3.7, 15),
(51, 'John', '', '', '', 'Other', '2020-12-11', 'Senior', 3.7, 15),
(52, 'John', '', '', '', 'Other', '2020-12-11', 'Senior', 3.7, 15),
(53, 'John', '', '', '', 'Other', '2020-12-11', 'Senior', 3.7, 15),
(54, 'John', '', '', '', 'Other', '2020-12-11', 'Senior', 3.7, 15),
(55, 'John', '', '', '', 'Other', '2020-12-11', 'Senior', 3.7, 15),
(56, 'John', '', '', '', 'Other', '2020-12-11', 'Senior', 3.7, 15),
(111, 'no', 'no', '0', 'no@somehting.com', 'Female', '1998-04-07', 'Senior', 3.5, 12),
(12345, 'B', 'B', '12345', 'somethingB@google.com', 'Other', '2020-12-11', 'Senior', 3, 14),
(33333, 'test5', 'test5', '1', 'test@google.com', 'Other', '2020-12-11', 'Senior', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicant_store`
--
ALTER TABLE `applicant_store`
  ADD PRIMARY KEY (`studentId`);

--
-- Indexes for table `awarded_store`
--
ALTER TABLE `awarded_store`
  ADD PRIMARY KEY (`studentId`);

--
-- Indexes for table `registrar_info`
--
ALTER TABLE `registrar_info`
  ADD PRIMARY KEY (`studentId`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`studentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicant_store`
--
ALTER TABLE `applicant_store`
  MODIFY `studentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123456791;

--
-- AUTO_INCREMENT for table `awarded_store`
--
ALTER TABLE `awarded_store`
  MODIFY `studentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123456808;

--
-- AUTO_INCREMENT for table `registrar_info`
--
ALTER TABLE `registrar_info`
  MODIFY `studentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123456796;

--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `studentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
