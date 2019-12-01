-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 30, 2019 at 04:12 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `africantech`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
CREATE TABLE IF NOT EXISTS `registration` (
  `First_Name` varchar(30) NOT NULL,
  `Last_Name` varchar(30) NOT NULL,
  `Organization` varchar(30) NOT NULL,
  `Code` int(5) NOT NULL,
  `Tel_No` int(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  PRIMARY KEY (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table is all about registration';

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`First_Name`, `Last_Name`, `Organization`, `Code`, `Tel_No`, `Email`) VALUES
('Anne', 'tie', 'public org', 252, 79804567, 'anne@gmail.com'),
('anne', 'chile', 'public org', 253, 789045233, 'chile@gmail.com'),
('June', 'Sung', 'public org', 254, 78569314, 'J@gmail.com'),
('alex ', 'Mtie', 'public org', 253, 362768683, 'mutiealex@gmail.com'),
('robert', 'Mwangi', 'private org', 252, 789345211, 'robert@gmail.com'),
('sarah', 'ann', 'NGO', 255, 768573653, 'sarah@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
