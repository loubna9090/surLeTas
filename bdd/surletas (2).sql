-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 26 avr. 2021 à 12:40
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `surletas`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `idAdmin` varchar(50) COLLATE utf8_bin NOT NULL,
  `userNameAdmin` varchar(50) COLLATE utf8_bin NOT NULL,
  `emailAdmin` varchar(50) COLLATE utf8_bin NOT NULL,
  `mdpAdmin` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idAdmin`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `belongs`
--

DROP TABLE IF EXISTS `belongs`;
CREATE TABLE IF NOT EXISTS `belongs` (
  `idDeveloper` int(11) NOT NULL,
  `idCat` int(11) NOT NULL,
  PRIMARY KEY (`idDeveloper`,`idCat`),
  KEY `idCat` (`idCat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `idCat` int(11) NOT NULL,
  `nameCat` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idCat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`idCat`, `nameCat`) VALUES
(1, 'Programming/Coding'),
(2, 'Data Science & Analysis'),
(3, 'Databases'),
(4, 'Social Media App'),
(5, 'Software Testing'),
(6, 'Mobile App Development'),
(7, 'Email Template Development'),
(8, 'CMS Development'),
(9, 'eCommerce CMS Development'),
(10, 'ERP/CRM Development'),
(11, 'Website Development'),
(12, 'Game Development');

-- --------------------------------------------------------

--
-- Structure de la table `checked`
--

DROP TABLE IF EXISTS `checked`;
CREATE TABLE IF NOT EXISTS `checked` (
  `idTask` int(11) NOT NULL,
  `idAdmin` varchar(50) COLLATE utf8_bin NOT NULL,
  `valideTask` varchar(50) COLLATE utf8_bin NOT NULL,
  `priceTask` int(11) NOT NULL,
  `timeTask` datetime NOT NULL,
  PRIMARY KEY (`idTask`,`idAdmin`),
  KEY `idAdmin` (`idAdmin`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `idClient` int(11) NOT NULL AUTO_INCREMENT,
  `lastNameClient` varchar(50) COLLATE utf8_bin NOT NULL,
  `firstNameClient` varchar(50) COLLATE utf8_bin NOT NULL,
  `phoneClient` int(11) NOT NULL,
  `adressClient` text COLLATE utf8_bin,
  `countryClient` varchar(50) COLLATE utf8_bin NOT NULL,
  `cityClient` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `emailClient` varchar(50) COLLATE utf8_bin NOT NULL,
  `mdpClient` varchar(50) COLLATE utf8_bin NOT NULL,
  `dateClient` date DEFAULT NULL,
  PRIMARY KEY (`idClient`)
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`idClient`, `lastNameClient`, `firstNameClient`, `phoneClient`, `adressClient`, `countryClient`, `cityClient`, `emailClient`, `mdpClient`, `dateClient`) VALUES
(68, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubna1damri@gmail.com', '202cb962ac59075b964b07152d234b70', NULL),
(102, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubna90damri@gmail.com', '202cb962ac59075b964b07152d234b70', NULL),
(103, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri12@gmail.com', '202cb962ac59075b964b07152d234b70', NULL),
(126, 'damri', 'loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'Choisy-le-Roi', 'loubnadamri20@gmail.com', '202cb962ac59075b964b07152d234b70', '2021-04-26'),
(105, 'damri', 'loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'Choisy-le-Roi', 'loubnadamri14@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', NULL),
(109, 'damri', 'loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'Choisy-le-Roi', 'loubnadamri15@gmail.com', '202cb962ac59075b964b07152d234b70', NULL),
(122, 'damri', 'loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'Choisy-le-Roi', 'loubnadamri16@gmail.com', '202cb962ac59075b964b07152d234b70', '2021-04-24'),
(123, 'damri', 'loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'Choisy-le-Roi', 'loubnadamri17@gmail.com', '202cb962ac59075b964b07152d234b70', '2021-04-24'),
(124, 'damri', 'loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'Choisy-le-Roi', 'loubnadamri18@gmail.com', '202cb962ac59075b964b07152d234b70', '2021-04-24'),
(125, 'damri', 'loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'Choisy-le-Roi', 'loubnadamri19@gmail.com', '202cb962ac59075b964b07152d234b70', '2021-04-24');

-- --------------------------------------------------------

--
-- Structure de la table `delivredtask`
--

DROP TABLE IF EXISTS `delivredtask`;
CREATE TABLE IF NOT EXISTS `delivredtask` (
  `idDelivredTask` int(11) NOT NULL,
  `text` text COLLATE utf8_bin,
  `taskUrl` text COLLATE utf8_bin NOT NULL,
  `idDeveloper` int(11) NOT NULL,
  PRIMARY KEY (`idDelivredTask`),
  UNIQUE KEY `idDeveloper` (`idDeveloper`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `developer`
--

DROP TABLE IF EXISTS `developer`;
CREATE TABLE IF NOT EXISTS `developer` (
  `idDeveloper` int(11) NOT NULL,
  `firstNameDeveloper` varchar(50) COLLATE utf8_bin NOT NULL,
  `mdpDeveloper` varchar(50) COLLATE utf8_bin NOT NULL,
  `emailDeveloper` varchar(50) COLLATE utf8_bin NOT NULL,
  `phoneDeveloper` int(11) NOT NULL,
  `adressDeveloper` text COLLATE utf8_bin NOT NULL,
  `lastNameDeveloper` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idDeveloper`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `task`
--

DROP TABLE IF EXISTS `task`;
CREATE TABLE IF NOT EXISTS `task` (
  `idTask` int(11) NOT NULL AUTO_INCREMENT,
  `docTask` text COLLATE utf8_bin,
  `nameTask` varchar(100) COLLATE utf8_bin NOT NULL,
  `topicTask` text COLLATE utf8_bin NOT NULL,
  `idCat` int(11) DEFAULT NULL,
  `idDeveloper` int(11) DEFAULT NULL,
  `idClient` int(11) DEFAULT NULL,
  `statusTask` varchar(20) COLLATE utf8_bin DEFAULT 'En attente',
  `dateTask` date DEFAULT NULL,
  PRIMARY KEY (`idTask`),
  KEY `idCat` (`idCat`),
  KEY `idClient` (`idClient`),
  KEY `idDeveloper` (`idDeveloper`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `task`
--

INSERT INTO `task` (`idTask`, `docTask`, `nameTask`, `topicTask`, `idCat`, `idDeveloper`, `idClient`, `statusTask`, `dateTask`) VALUES
(64, '', 'qdsf', 'dvgfc', 11, NULL, 116, 'En attente', '2021-04-23'),
(65, '', 'loubna damri', 'scvxdb', 1, NULL, 117, 'En attente', '2021-04-23'),
(66, '', 'qsf', 'QFC', 1, NULL, 118, 'En attente', '2021-04-23'),
(95, '', 'yj', 'y,jn', 11, NULL, 125, 'En attente', '2021-04-24'),
(94, '', '12', '12', 1, NULL, 124, 'En attente', '2021-04-24'),
(93, '', 'lou', 'wdhbg', 12, NULL, 123, 'En attente', '2021-04-24'),
(92, '', 'th', 'thg', 11, NULL, 122, 'En attente', '2021-04-24'),
(97, '', 'test1', 'h,,kvk', 11, NULL, 126, 'En attente', '2021-04-26'),
(96, '', 'test', 'qsgdfhf', 1, NULL, 126, 'En attente', '2021-04-26'),
(88, '', 'hj', 'hj', 12, NULL, 121, 'En attente', '2021-04-23');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
