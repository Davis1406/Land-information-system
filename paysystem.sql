-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 06, 2017 at 12:57 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `paysystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE IF NOT EXISTS `branch` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `branch` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `detail` text NOT NULL,
  `delete_status` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `branch`, `address`, `detail`, `delete_status`) VALUES
(1, 'CRDB', 'MAZIMBU', 'MORORGORO', '0'),
(2, 'NMB', 'MASIKA', 'MOROGORO', '0'),
(3, 'NBC', 'MASIKA', 'MOROGORO', '0'),
(4, 'NBC', 'ARUSHA', 'ARUSHA', '0');

-- --------------------------------------------------------

--
-- Table structure for table `fees_transaction`
--

CREATE TABLE IF NOT EXISTS `fees_transaction` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `stdid` varchar(255) NOT NULL,
  `paid` int(255) NOT NULL,
  `submitdate` datetime NOT NULL,
  `transcation_remark` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `fees_transaction`
--

INSERT INTO `fees_transaction` (`id`, `stdid`, `paid`, `submitdate`, `transcation_remark`) VALUES
(1, '1', 20000, '2017-10-24 00:00:00', 'PAID'),
(2, '1', 200000, '2017-10-24 00:00:00', 'DONE'),
(3, '1', 30000, '2017-10-25 00:00:00', 'DONE'),
(4, '2', 300000, '2017-10-25 00:00:00', 'NOT DONE'),
(5, '3', 250000, '2017-10-26 00:00:00', 'NOT DONE'),
(6, '4', 400000, '2017-10-31 00:00:00', 'NOT DONE'),
(7, '4', 100000, '2017-11-01 00:00:00', 'PAID'),
(8, '2', 200000, '2017-10-10 00:00:00', 'DONE'),
(9, '3', 250000, '2017-11-17 00:00:00', 'DONE'),
(10, '5', 400000, '2017-11-17 00:00:00', 'NOT DONE'),
(11, '5', 200000, '2017-11-18 00:00:00', 'DONE');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `emailid` varchar(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `joindate` datetime NOT NULL,
  `about` text NOT NULL,
  `contact` varchar(255) NOT NULL,
  `fees` int(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `balance` int(255) NOT NULL,
  `delete_status` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `emailid`, `sname`, `joindate`, `about`, `contact`, `fees`, `branch`, `balance`, `delete_status`) VALUES
(1, 'chedydemmbaga@gmail.com', 'AMANI PASCAL ', '2017-10-24 00:00:00', 'SECOND YEAR INFORMATICS', '276456376', 250000, '1', 0, '0'),
(2, 'dkondo@gmail.com', 'DAVIS KONDAMWALI', '2017-10-25 00:00:00', 'THIRD YEAR INFORMATICS', '0695423356', 500000, '1', 0, '0'),
(3, 'lanta.mayo@gmail.com', 'FLAVIA MAYO', '2017-10-26 00:00:00', 'THIRD YEAR INFORMATICS', '025565895', 500000, '2', 0, '0'),
(4, 'reynmhina96@gmail.com', 'REHEMA MHINA', '2017-10-31 00:00:00', 'THIRD YEAR BAF', '0628419281', 500000, '1', 0, '0'),
(5, 'josiasamson@gmail.com', 'Josia Mosha', '2017-11-17 00:00:00', 'Informatics Third Year', '2545555855', 600000, '1', 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `emailid` varchar(255) NOT NULL,
  `lastlogin` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `emailid`, `lastlogin`) VALUES
(1, 'admin', '9496419073ac22791f9f34ad089a4b7b', 'Lewa', 'lewa@gmail.com', '0000-00-00 00:00:00'),
(2, 'chedy', 'peace1598', 'Amani', 'chedydemmbaga@gmail.com', '2017-11-15 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
