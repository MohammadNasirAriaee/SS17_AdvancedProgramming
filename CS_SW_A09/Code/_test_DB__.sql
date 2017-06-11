-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 17, 2017 at 05:35 PM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `stack_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE IF NOT EXISTS `materials` (
  `m_name` varchar(20) DEFAULT NULL,
  `amount` varchar(30) DEFAULT NULL,
  `days` int(20) DEFAULT NULL,
  `price_day` int(11) DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL,
  `s_name` varchar(20) DEFAULT NULL,
  `o_id` int(11) DEFAULT NULL,
  KEY `s_name` (`s_name`),
  KEY `o_id` (`o_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`m_name`, `amount`, `days`, `price_day`, `total_price`, `s_name`, `o_id`) VALUES
('Banana', '500kg', 40, 120, 4800, 'Kabul_Stack', 2),
('Floor', '2000kg', 45, 350, 15750, 'Kabul', 3),
('floor', '1000kg', 25, 120, 3000, 'Our_Stack', 2);

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE IF NOT EXISTS `owner` (
  `O_ID` int(10) NOT NULL,
  `O_Name` varchar(20) NOT NULL,
  `O_Address` varchar(20) NOT NULL,
  `O_Contact` int(15) NOT NULL,
  PRIMARY KEY (`O_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`O_ID`, `O_Name`, `O_Address`, `O_Contact`) VALUES
(10, 'Ahmad', 'Kabul', 795266540),
(1, 'wali', 'Kabul', 793439010),
(3, 'Ali', 'Logar', 783128980),
(2, 'Ahmad', 'Kabul', 792782030);

-- --------------------------------------------------------

--
-- Table structure for table `stack`
--

CREATE TABLE IF NOT EXISTS `stack` (
  `Name` varchar(30) NOT NULL DEFAULT 'Collection',
  `Address` varchar(30) NOT NULL DEFAULT 'Kabul',
  PRIMARY KEY (`Name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stack`
--

INSERT INTO `stack` (`Name`, `Address`) VALUES
('Our_stack', 'Pol-e-mahmoodkhan');
