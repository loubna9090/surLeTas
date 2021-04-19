-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 19 avr. 2021 à 12:36
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
  PRIMARY KEY (`idClient`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`idClient`, `lastNameClient`, `firstNameClient`, `phoneClient`, `adressClient`, `countryClient`, `cityClient`, `emailClient`, `mdpClient`) VALUES
(1, 'Damri', 'Loubna', 615417377, 'bd alqods immau 10 n3 ainchock', 'Maroc', 'casablanca', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(2, 'Damri', 'Loubna', 615417377, 'bd alqods immau 10 n3 ainchock', 'Maroc', 'casablanca', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(3, 'Damri', 'Loubna', 615417377, 'bd alqods immau 10 n3 ainchock', 'Maroc', 'casablanca', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(4, 'Damri', 'Loubna', 615417377, 'bd alqods immau 10 n3 ainchock', 'Maroc', 'casablanca', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(5, 'Damri', 'Loubna', 615417377, 'bd alqods immau 10 n3 ainchock', 'Maroc', 'casablanca', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(6, 'Damri', 'Loubna', 615417377, 'bd alqods immau 10 n3 ainchock', 'Maroc', 'casablanca', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(7, 'Damri', 'Loubna', 615417377, 'bd alqods immau 10 n3 ainchock', 'Maroc', 'casablanca', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(8, 'Damri', 'Loubna', 615417377, 'bd alqods immau 10 n3 ainchock', 'Maroc', 'casablanca', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(9, 'dwv', 'Loubna', 0, 'bd alqods immau 10 n3 ainchock', 'Maroc', 'casablanca', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(10, 'dwv', 'Loubna', 0, 'bd alqods immau 10 n3 ainchock', 'Maroc', 'casablanca', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(11, 'dwv', 'Loubna', 0, 'bd alqods immau 10 n3 ainchock', 'Maroc', 'casablanca', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(12, 'dwv', 'Loubna', 0, 'bd alqods immau 10 n3 ainchock', 'Maroc', 'casablanca', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(13, 'dwv', 'Loubna', 0, 'bd alqods immau 10 n3 ainchock', 'Maroc', 'casablanca', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(14, 'dwv', 'Loubna', 0, 'bd alqods immau 10 n3 ainchock', 'Maroc', 'casablanca', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(15, 'dwv', 'Loubna', 0, 'bd alqods immau 10 n3 ainchock', 'Maroc', 'casablanca', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(16, 'dwv', 'Loubna', 0, 'bd alqods immau 10 n3 ainchock', 'Maroc', 'casablanca', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(17, 'dwv', 'Loubna', 0, 'bd alqods immau 10 n3 ainchock', 'Maroc', 'casablanca', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(18, 'Damri', 'Loubna', 615417377, 'bd alqods immau 10 n3 ainchock', 'Maroc', 'casablanca', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(19, 'Damri', 'Loubna', 615417377, 'bd alqods immau 10 n3 ainchock', 'Maroc', 'casablanca', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(20, 'Damri', 'Loubna', 615417377, 'bd alqods immau 10 n3 ainchock', 'Maroc', 'casablanca', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(21, 'Damri', 'Loubna', 615417377, 'bd alqods immau 10 n3 ainchock', 'Maroc', 'casablanca', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(22, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'Maroc', 'Choisy-le-Roi', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(23, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'Maroc', 'Choisy-le-Roi', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(24, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'Maroc', 'Choisy-le-Roi', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(25, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'Maroc', 'Choisy-le-Roi', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(26, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'Maroc', 'Choisy-le-Roi', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(27, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'Maroc', 'Choisy-le-Roi', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(28, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'Maroc', 'Choisy-le-Roi', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(29, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(30, 'Damri', 'Loubna', 615417377, 'bd alqods immau 10 n3 ainchock', 'Maroc', 'casablanca', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(31, 'Damri', 'Loubna', 615417377, 'bd alqods immau 10 n3 ainchock', 'Maroc', 'casablanca', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(32, 'Damri', 'Loubna', 615417377, 'bd alqods immau 10 n3 ainchock', 'Maroc', 'casablanca', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(33, 'Damri', 'Loubna', 615417377, 'bd alqods immau 10 n3 ainchock', 'Maroc', 'casablanca', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(34, 'Damri', 'Loubna', 615417377, 'bd alqods immau 10 n3 ainchock', 'Maroc', 'casablanca', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(35, 'Damri', 'Loubna', 615417377, 'bd alqods immau 10 n3 ainchock', 'Maroc', 'casablanca', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(36, 'Damri', 'Loubna', 615417377, 'bd alqods immau 10 n3 ainchock', 'Maroc', 'casablanca', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(37, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(38, 'Damri', 'Loubna', 15417377, 'bd alqods immau 10 n3 ainchock', 'Maroc', 'casablanca', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(39, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(40, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(41, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(42, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(43, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(44, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(45, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(46, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(47, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(48, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(49, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(50, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(51, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(52, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(53, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(54, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(55, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(56, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(57, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(58, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(59, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(60, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(61, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(62, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(63, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(64, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(65, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(66, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(67, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(68, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubna1damri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(69, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', 'e53a0a2978c28872a4505bdb51db06dc'),
(70, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', 'e53a0a2978c28872a4505bdb51db06dc'),
(71, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', 'e53a0a2978c28872a4505bdb51db06dc'),
(72, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', 'e53a0a2978c28872a4505bdb51db06dc'),
(73, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', 'e53a0a2978c28872a4505bdb51db06dc'),
(74, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', 'e53a0a2978c28872a4505bdb51db06dc'),
(75, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', 'e53a0a2978c28872a4505bdb51db06dc'),
(76, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', 'e53a0a2978c28872a4505bdb51db06dc'),
(77, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', 'e53a0a2978c28872a4505bdb51db06dc'),
(78, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', 'e53a0a2978c28872a4505bdb51db06dc'),
(79, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', 'e53a0a2978c28872a4505bdb51db06dc'),
(80, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(81, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(82, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(83, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(84, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(85, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(86, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(87, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(88, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(89, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(90, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(91, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(92, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(93, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(94, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(95, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(96, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(97, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(98, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(99, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(100, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(101, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(102, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubna90damri@gmail.com', '202cb962ac59075b964b07152d234b70'),
(103, 'DAMRI', 'Loubna', 627208446, '14 Rue Fernand Pelloutier Appart B44, immeuble B2', 'France', 'CHOISY LE ROI', 'loubnadamri12@gmail.com', '202cb962ac59075b964b07152d234b70');

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
  PRIMARY KEY (`idTask`),
  KEY `idCat` (`idCat`),
  KEY `idClient` (`idClient`),
  KEY `idDeveloper` (`idDeveloper`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `task`
--

INSERT INTO `task` (`idTask`, `docTask`, `nameTask`, `topicTask`, `idCat`, `idDeveloper`, `idClient`) VALUES
(2, 'mcd.png', 'test1', 'tfjnhbxgfv', NULL, NULL, NULL),
(3, 'mcd.png', 'test1', 'fdghnj,', NULL, NULL, NULL),
(4, 'mcd.png', 'test1', 'fdghnj,', NULL, NULL, NULL),
(5, 'mcd.png', 'test1', 'sdfegh', NULL, NULL, 36),
(6, '', '', '', NULL, NULL, 36),
(7, 'mcd.png', 'test1', 'jkljklm', NULL, NULL, 39),
(8, 'mcd.png', 'test1', 'jkljklm', NULL, NULL, 40),
(9, 'mcd.png', 'test1', 'jkljklm', NULL, NULL, 41),
(10, 'mcd.png', 'test1', 'jkljklm', NULL, NULL, 42),
(11, 'mcd.png', 'test1', 'jkljklm', NULL, NULL, 43),
(12, 'mcd.png', 'test1', 'jkljklm', NULL, NULL, 44),
(13, 'mcd.png', 'test1', 'jkljklm', NULL, NULL, 45),
(14, 'mcd.png', 'test1', 'jkljklm', NULL, NULL, 46),
(15, 'mcd.png', 'test1', 'jkljklm', NULL, NULL, 47),
(16, 'mcd.png', 'test1', 'jkljklm', NULL, NULL, 48),
(17, 'mcd.png', 'test1', 'jkljklm', NULL, NULL, 49),
(18, 'mcd.png', 'test2', 'lk,vdkcmlsx', NULL, NULL, 50),
(19, 'mcd.png', 'test2', 'lk,vdkcmlsx', NULL, NULL, 51),
(20, 'mcd.png', 'test2', 'lk,vdkcmlsx', NULL, NULL, 52),
(21, '', 'test2', 'ghbhn,', NULL, NULL, 53),
(22, '', 'test2', 'ghbhn,', NULL, NULL, 54),
(23, '', 'test2', 'ghbhn,', NULL, NULL, 55),
(24, '', 'test2', 'ghbhn,', NULL, NULL, 56),
(25, '', 'test2', 'ghbhn,', NULL, NULL, 57),
(26, '', 'test2', 'ghbhn,', NULL, NULL, 58),
(27, '', 'test2', 'ghbhn,', NULL, NULL, 59),
(28, '', 'test2', 'ghbhn,', NULL, NULL, 60),
(29, '', 'test2', 'ghbhn,', NULL, NULL, 61),
(30, '', 'test2', 'ghbhn,', NULL, NULL, 62),
(31, '', 'test2', 'ghbhn,', NULL, NULL, 63),
(32, '', 'Loubna DAMRI', '', NULL, NULL, 64),
(33, '', 'Loubna DAMRI', '', NULL, NULL, 65),
(34, 'mcd.png', 'test2', 'lk,vdkcmlsx', NULL, NULL, 66),
(35, 'mcd.png', 'test1', 'jkljklm', NULL, NULL, 67),
(36, 'LoopingImage.jpg', 'test1', 'zfqcdsgv', NULL, NULL, 68),
(37, 'images (2).jpg', 'Loubna DAMRI', 'dseghb', NULL, NULL, 81),
(38, 'free-standing-sculpture-3683201.jpg', 'te', 'qsfc', 85, NULL, 85),
(39, 'multicolored-abstract-painting-1012982.jpg', 'tes', 'zsqfdv', 12, NULL, 86),
(40, 'LoopingImage.jpg', 'testz', 'hnjbgfvcd', 12, NULL, 88),
(41, 'LoopingImage.jpg', 'Loubna DAMRI', 'dhgfh', 12, NULL, 89),
(42, 'LoopingImage.jpg', 'test1', 'esdfcvb', NULL, NULL, 92),
(43, '', 'teeee', 'ghn,;:', NULL, NULL, 93),
(44, '', 'kjh,g', '', NULL, NULL, 94),
(45, '', '11', 'jkh,nbgv', 12, NULL, 98),
(46, '', 'tttt', 'tttt', 1, NULL, 99),
(47, 'LoopingImage.jpg', 'aedfgb', 'sxcdvb ', 2, NULL, 100),
(48, 'LoopingImage.jpg', 'dfvgbn,;', 'qsdfghjk', 8, NULL, 101),
(49, '', 'test du test ', 'fkgbklglmglmlmnhmllmùhnlmnh', 7, NULL, 102),
(50, 'LoopingImage.jpg', 'test ', 'jknfldb;v:!cx', 1, NULL, 103);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
