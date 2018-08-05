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
-- Table structure for table `blood_bank`
--

CREATE TABLE IF NOT EXISTS `blood_bank` (
  `ID` varchar(15) NOT NULL,
  `Name` varchar(120) NOT NULL,
  `Address` text NOT NULL,
  `Donar_ID` varchar(15) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood_bank`
--

INSERT INTO `blood_bank` (`ID`, `Name`, `Address`, `Donar_ID`) VALUES
('bd1', 'Blood_Bank1', 'Dhaka', '1235 '),
('bd10', 'Blood_Bank10', 'Dhaka', '1244 '),
('bd11', 'Blood_Bank11', 'Dhaka', '1245 '),
('bd12', 'Blood_Bank12', 'Dhaka', '1246 '),
('bd13', 'Blood_Bank13', 'Dhaka', '1247 '),
('bd14', 'Blood_Bank14', 'Dhaka', '1248 '),
('bd15', 'Blood_Bank15', 'Dhaka', '1249 '),
('bd16', 'Blood_Bank16', 'Dhaka', '1250 '),
('bd17', 'Blood_Bank17', 'Dhaka', '1251 '),
('bd18', 'Blood_Bank18', 'Dhaka', '1252 '),
('bd19', 'Blood_Bank19', 'Dhaka', '1253 '),
('bd2', 'Blood_Bank2', 'Dhaka', '1236 '),
('bd20', 'Blood_Bank20', 'Dhaka', '1254 '),
('bd21', 'Blood_Bank21', 'Dhaka', '1255 '),
('bd22', 'Blood_Bank22', 'Dhaka', '1256 '),
('bd23', 'Blood_Bank23', 'Dhaka', '1257 '),
('bd24', 'Blood_Bank24', 'Dhaka', '1258 '),
('bd25', 'Blood_Bank25', 'Dhaka', '1259 '),
('bd26', 'Blood_Bank26', 'Dhaka', '1260 '),
('bd27', 'Blood_Bank27', 'Dhaka', '1261 '),
('bd28', 'Blood_Bank28', 'Dhaka', '1262 '),
('bd29', 'Blood_Bank29', 'Dhaka', '1263 '),
('bd3', 'Blood_Bank3', 'Dhaka', '1237 '),
('bd30', 'Blood_Bank30', 'Dhaka', '1264 '),
('bd31', 'Blood_Bank31', 'Dhaka', '1265 '),
('bd32', 'Blood_Bank32', 'Dhaka', '1266 '),
('bd33', 'Blood_Bank33', 'Dhaka', '1267 '),
('bd34', 'Blood_Bank34', 'Dhaka', '1268 '),
('bd35', 'Blood_Bank35', 'Dhaka', '1269 '),
('bd36', 'Blood_Bank36', 'Dhaka', '1270 '),
('bd37', 'Blood_Bank37', 'Dhaka', '1271 '),
('bd38', 'Blood_Bank38', 'Dhaka', '1272 '),
('bd39', 'Blood_Bank39', 'Dhaka', '1273 '),
('bd4', 'Blood_Bank4', 'Dhaka', '1238 '),
('bd40', 'Blood_Bank40', 'Dhaka', '1274 '),
('bd41', 'Blood_Bank41', 'Dhaka', '1275 '),
('bd42', 'Blood_Bank42', 'Dhaka', '1276 '),
('bd43', 'Blood_Bank43', 'Dhaka', '1277 '),
('bd44', 'Blood_Bank44', 'Dhaka', '1278 '),
('bd45', 'Blood_Bank45', 'Dhaka', '1279 '),
('bd46', 'Blood_Bank46', 'Dhaka', '1280 '),
('bd47', 'Blood_Bank47', 'Dhaka', '1281 '),
('bd48', 'Blood_Bank48', 'Dhaka', '1282 '),
('bd49', 'Blood_Bank49', 'Dhaka', '1283 '),
('bd5', 'Blood_Bank5', 'Dhaka', '1239 '),
('bd50', 'Blood_Bank50', 'Dhaka', '1284 '),
('bd6', 'Blood_Bank6', 'Dhaka', '1240 '),
('bd7', 'Blood_Bank7', 'Dhaka', '1241 '),
('bd8', 'Blood_Bank8', 'Dhaka', '1242 '),
('bd9', 'Blood_Bank9', 'Dhaka', '1243 ');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
