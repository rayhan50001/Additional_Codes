-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2016 at 06:51 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `contact_info`
--

CREATE TABLE IF NOT EXISTS `contact_info` (
  `ID` varchar(15) NOT NULL,
  `Mobile` varchar(15) NOT NULL,
  `Office` varchar(15) NOT NULL,
  `Home` varchar(15) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_info`
--

INSERT INTO `contact_info` (`ID`, `Mobile`, `Office`, `Home`) VALUES
('1', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('10', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('11', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('12', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('13', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('14', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('15', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('16', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('17', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('18', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('19', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('2', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('20', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('21', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('22', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('23', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('24', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('25', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('26', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('27', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('28', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('29', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('3', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('30', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('31', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('32', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('33', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('34', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('35', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('36', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('37', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('38', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('39', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('4', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('40', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('41', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('42', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('43', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('44', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('45', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('46', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('47', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('48', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('49', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('5', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('50', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('6', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('7', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('8', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX'),
('9', '+8801XXXXXXXXX', '+2-XXXXXX', '+8801XXXXXXXXX');

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

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `Paitent_Name` varchar(120) NOT NULL,
  `Paitent_ID` varchar(11) NOT NULL,
  `Blood_Group` varchar(4) NOT NULL,
  `Paitent_disease` text,
  PRIMARY KEY (`Paitent_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`Paitent_Name`, `Paitent_ID`, `Blood_Group`, `Paitent_disease`) VALUES
('p0', '1000', 'A+', ' Anemia of Inflammation and Chronic Disease'),
('p1', '1001', 'A+', ' Anemia'),
('p2', '1002', 'B+', ' Aplastic Anemia'),
('p3', '1003', 'O+', ' Sickle Cell Anemia'),
('p4', '1004', 'A+', ' Thalassemia'),
('p5', '1005', 'B+', ' Myelofibrosis'),
('p6', '1006', 'O+', ' Myeloma'),
('p7', '1007', 'A+', ' Myelodysplasia'),
('p8', '1008', 'B+', ' Leukemia '),
('p9', '1009', 'O+', ' Lymphoma'),
('p10', '1010', 'A+', ' Platelet Disorders'),
('p11', '1011', 'B+', ' Bleeding'),
('p12', '1012', 'O+', ' Immune Thrombocytopenic Purpura (ITP) '),
('p13', '1013', 'A+', ' Essential Thrombocytosis '),
('p14', '1014', 'B+', ' Clotting Disorders'),
('p15', '1015', 'O+', ' Hemophilia '),
('p16', '1016', 'A+', ' Von Willebrand Disease'),
('p17', '1017', 'B+', ' Hypercoagulable states'),
('p18', '1018', 'O+', ' Hemochromatosis'),
('p19', '1019', 'A+', ' Hypercoagulable states '),
('p20', '1020', 'B+', ' Von Willebrand Disease'),
('p21', '1021', 'O+', ' Hemophilia'),
('p22', '1022', 'A+', ' Clotting Disorders'),
('p23', '1023', 'B+', ' Essential Thrombocytosis '),
('p24', '1024', 'O+', ' Immune Thrombocytopenic Purpura (ITP)'),
('p25', '1025', 'A+', ' Platelet Disorders '),
('p26', '1026', 'B+', ' Lymphoma '),
('p27', '1027', 'O+', ' Leukemia'),
('p28', '1028', 'A+', ' Myelodysplasia'),
('p29', '1029', 'B+', ' Myeloma '),
('p30', '1030', 'O+', ' '),
('p31', '1031', 'A+', ' '),
('p32', '1032', 'B+', ' '),
('p33', '1033', 'O+', ' '),
('p34', '1034', 'A+', ' '),
('p35', '1035', 'B+', ' '),
('p36', '1036', 'O+', ' '),
('p37', '1037', 'A+', ' '),
('p38', '1038', 'B+', ' '),
('p39', '1039', 'O+', ' '),
('p40', '1040', 'A+', ' '),
('p41', '1041', 'B+', ' '),
('p42', '1042', 'O+', ' '),
('p43', '1043', 'A+', ' '),
('p44', '1044', 'B+', ' '),
('p45', '1045', 'O+', ' '),
('p46', '1046', 'A+', ' '),
('p47', '1047', 'B+', ' '),
('p48', '1048', 'O+', ' '),
('p49', '1049', 'A+', ' '),
('p50', '1050', 'B+', ' '),
('p50', '1051', 'AB+', 'Cancer');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
