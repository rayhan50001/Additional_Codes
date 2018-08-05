-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2016 at 06:50 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `blood_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `donar`
--

CREATE TABLE IF NOT EXISTS `donar` (
  `Donar_Name` varchar(50) NOT NULL,
  `Donar_ID` varchar(15) NOT NULL,
  `Blood_Group` varchar(4) NOT NULL,
  `Donar_Disease` text NOT NULL,
  `Donar_Address` text NOT NULL,
  PRIMARY KEY (`Donar_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donar`
--

INSERT INTO `donar` (`Donar_Name`, `Donar_ID`, `Blood_Group`, `Donar_Disease`, `Donar_Address`) VALUES
('d1', '1235', 'A+', ' ', 'Dhaka'),
('d2', '1236', 'B+', ' ', 'Dhaka'),
('d3', '1237', 'O+', ' ', 'Dhaka'),
('d4', '1238', 'A+', ' ', 'Dhaka'),
('d5', '1239', 'B+', ' ', 'Dhaka'),
('d6', '1240', 'O+', ' ', 'Dhaka'),
('d7', '1241', 'A+', ' ', 'Dhaka'),
('d8', '1242', 'B+', ' ', 'Dhaka'),
('d9', '1243', 'O+', ' ', 'Dhaka'),
('d10', '1244', 'A+', ' ', 'Dhaka'),
('d11', '1245', 'B+', ' ', 'Dhaka'),
('d12', '1246', 'O+', ' ', 'Dhaka'),
('d13', '1247', 'A+', ' ', 'Dhaka'),
('d14', '1248', 'B+', ' ', 'Dhaka'),
('d15', '1249', 'O+', ' ', 'Dhaka'),
('d16', '1250', 'A+', ' ', 'Dhaka'),
('d17', '1251', 'B+', ' ', 'Dhaka'),
('d18', '1252', 'O+', ' ', 'Dhaka'),
('d19', '1253', 'A+', ' ', 'Dhaka'),
('d20', '1254', 'B+', ' ', 'Dhaka'),
('d21', '1255', 'O+', ' ', 'Dhaka'),
('d22', '1256', 'A+', ' ', 'Dhaka'),
('d23', '1257', 'B+', ' ', 'Dhaka'),
('d24', '1258', 'O+', ' ', 'Dhaka'),
('d25', '1259', 'A+', ' ', 'Dhaka'),
('d26', '1260', 'B+', ' ', 'Dhaka'),
('d27', '1261', 'O+', ' ', 'Dhaka'),
('d28', '1262', 'A+', ' ', 'Dhaka'),
('d29', '1263', 'B+', ' ', 'Dhaka'),
('d30', '1264', 'O+', ' ', 'Dhaka'),
('d31', '1265', 'A+', ' ', 'Dhaka'),
('d32', '1266', 'B+', ' ', 'Dhaka'),
('d33', '1267', 'O+', ' ', 'Dhaka'),
('d34', '1268', 'A+', ' ', 'Dhaka'),
('d35', '1269', 'B+', ' ', 'Dhaka'),
('d36', '1270', 'O+', ' ', 'Dhaka'),
('d37', '1271', 'A+', ' ', 'Dhaka'),
('d38', '1272', 'B+', ' ', 'Dhaka'),
('d39', '1273', 'O+', ' ', 'Dhaka'),
('d40', '1274', 'A+', ' ', 'Dhaka'),
('d41', '1275', 'B+', ' ', 'Dhaka'),
('d42', '1276', 'O+', ' ', 'Dhaka'),
('d43', '1277', 'A+', ' ', 'Dhaka'),
('d44', '1278', 'B+', ' ', 'Dhaka'),
('d45', '1279', 'O+', ' ', 'Dhaka'),
('d46', '1280', 'A+', ' ', 'Dhaka'),
('d47', '1281', 'B+', ' ', 'Dhaka'),
('d48', '1282', 'O+', ' ', 'Dhaka'),
('d49', '1283', 'A+', ' ', 'Dhaka'),
('d50', '1284', 'B+', ' ', 'Dhaka');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
