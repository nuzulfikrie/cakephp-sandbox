-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 29. Jan 2015 um 21:50
-- Server Version: 5.5.24-log
-- PHP-Version: 5.4.26

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `cake_sandbox`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sandbox_animals`
--

DROP TABLE IF EXISTS `sandbox_animals`;
CREATE TABLE IF NOT EXISTS `sandbox_animals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=47 ;

--
-- Daten für Tabelle `sandbox_animals`
--

INSERT INTO `sandbox_animals` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Alpaca', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Armadillo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Badger', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Butterfly', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Cheetah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Chicken', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Dragonfly', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Eagle', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Elephant', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Frog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Fox', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Giraffe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Goat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Hawk', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Hornet', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Ibex', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Ibis', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Jackal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Jellyfish', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Koala', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Kookabura', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Lion', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Llama', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Mantis', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Meerkat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Narwhal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Newt', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Octopus', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Ostrich', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Parrot', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Penguin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Quetzal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Quail', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Raven', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Rhinoceros', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Scorpion', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Snake', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Tiger', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Toad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Viper', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Vulture', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Wasp', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Whale', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Yak', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Zebra', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
