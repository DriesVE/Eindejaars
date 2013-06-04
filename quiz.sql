-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2013 at 01:14 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `hoofdthema's`
--

CREATE TABLE IF NOT EXISTS `hoofdthema's` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Description` text NOT NULL,
  `Image` text NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `hoofdthema's`
--

INSERT INTO `hoofdthema's` (`Id`, `Description`, `Image`) VALUES
(1, 'Music', ''),
(2, 'Movie', ''),
(3, 'Games', ''),
(4, 'Misc.', '');

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE IF NOT EXISTS `player` (
  `naam` varchar(55) NOT NULL,
  `is_connected` tinyint(1) NOT NULL,
  `room` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`naam`, `is_connected`, `room`) VALUES
('test', 1, ''),
('test', 1, ''),
('test', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `Naam` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subthema's`
--

CREATE TABLE IF NOT EXISTS `subthema's` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `HoofdId` int(11) NOT NULL,
  `Description` text NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `subthema's`
--

INSERT INTO `subthema's` (`Id`, `HoofdId`, `Description`) VALUES
(1, 1, 'Rock'),
(2, 1, 'Pop'),
(3, 1, 'Classic'),
(4, 2, 'Action'),
(5, 2, 'Comedy'),
(6, 2, 'Animated'),
(7, 3, 'MMO'),
(8, 3, 'Shooter'),
(9, 3, 'Race');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
