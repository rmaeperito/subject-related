-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.18-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema pageant
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ pageant;
USE pageant;

--
-- Table structure for table `pageant`.`contestant`
--

DROP TABLE IF EXISTS `contestant`;
CREATE TABLE `contestant` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pageant`.`contestant`
--

/*!40000 ALTER TABLE `contestant` DISABLE KEYS */;
INSERT INTO `contestant` (`id`,`name`) VALUES 
 (1,'Sample1'),
 (2,'Sample2'),
 (3,'Sample3'),
 (4,'Sample4'),
 (5,'Sample5'),
 (6,'Sample6');
/*!40000 ALTER TABLE `contestant` ENABLE KEYS */;


--
-- Table structure for table `pageant`.`criteria`
--

DROP TABLE IF EXISTS `criteria`;
CREATE TABLE `criteria` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(55) NOT NULL default '',
  `percentage` decimal(10,0) NOT NULL default '0',
  `score` decimal(10,0) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pageant`.`criteria`
--

/*!40000 ALTER TABLE `criteria` DISABLE KEYS */;
INSERT INTO `criteria` (`id`,`name`,`percentage`,`score`) VALUES 
 (1,'Beauty of Face and Body Proportion','25','25'),
 (2,'Poise, Confidence, and ELAN','25','25'),
 (3,'Wit and Communication Skills','25','25'),
 (4,'Personality and Skills','25','25');
/*!40000 ALTER TABLE `criteria` ENABLE KEYS */;


--
-- Table structure for table `pageant`.`judge`
--

DROP TABLE IF EXISTS `judge`;
CREATE TABLE `judge` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(55) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pageant`.`judge`
--

/*!40000 ALTER TABLE `judge` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge` ENABLE KEYS */;


--
-- Table structure for table `pageant`.`score`
--

DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `candNo` int(10) unsigned NOT NULL default '0',
  `criteria` varchar(65) NOT NULL default '',
  `score` int(10) unsigned NOT NULL default '0',
  `judgeNo` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pageant`.`score`
--

/*!40000 ALTER TABLE `score` DISABLE KEYS */;
INSERT INTO `score` (`id`,`candNo`,`criteria`,`score`,`judgeNo`) VALUES 
 (1,1,'Beauty of Face and Body Proportion',10,1),
 (2,2,'Beauty of Face and Body Proportion',10,1),
 (3,3,'Beauty of Face and Body Proportion',23,1),
 (4,1,'Beauty of Face and Body Proportion',10,2),
 (5,2,'Beauty of Face and Body Proportion',10,2),
 (6,3,'Beauty of Face and Body Proportion',25,2),
 (7,1,'Poise, Confidence, and ELAN',30,2),
 (8,2,'Poise, Confidence, and ELAN',20,2),
 (9,3,'Poise, Confidence, and ELAN',25,2),
 (10,1,'Poise, Confidence, and ELAN',25,1),
 (12,2,'Poise, Confidence, and ELAN',25,1),
 (13,3,'Poise, Confidence, and ELAN',25,1);
/*!40000 ALTER TABLE `score` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
