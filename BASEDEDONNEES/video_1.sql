-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : ven. 15 jan. 2021 à 14:37
-- Version du serveur :  8.0.22
-- Version de PHP : 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `video`
--
CREATE DATABASE IF NOT EXISTS `video` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `video`;

-- --------------------------------------------------------

--
-- Structure de la table `acteur`
--

CREATE TABLE `acteur` (
  `idacteur` int NOT NULL,
  `nom` varchar(100) NOT NULL DEFAULT '',
  `prenom` varchar(50) NOT NULL DEFAULT '',
  `date_naissance` date NOT NULL DEFAULT '0000-00-00',
  `nation` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `acteur`
--

INSERT INTO `acteur` (`idacteur`, `nom`, `prenom`, `date_naissance`, `nation`) VALUES
(1, 'Worthington', 'Sam', '1976-08-02', 'Australie'),
(2, 'Saldana', 'Zoe', '1978-06-19', 'USA'),
(3, 'Weaver', 'Sigourney', '1949-10-08', 'USA'),
(4, 'Lang', 'Stephen', '1952-07-11', 'USA'),
(5, 'Dicaprio', 'Leonardo', '1974-11-11', 'USA'),
(6, 'Winslet', 'Kate', '1975-10-05', 'Angleterre'),
(7, 'Radcliffe', 'Daniel', '1989-07-23', 'Angleterre'),
(8, 'Grint', 'Rupert', '1988-08-24', 'Angleterre'),
(9, 'Watson', 'Emma', '1990-04-15', 'Angleterre'),
(10, 'Wood', 'Elijah', '1981-01-28', 'USA'),
(11, 'Mortensen', 'Viggo', '1958-10-20', 'USA'),
(12, 'Lee', 'Christopher', '1922-05-27', 'Angleterre'),
(13, 'Duhamel', 'Josh', '1972-11-14', 'USA'),
(14, 'Fox', 'Megan', '1986-05-16', 'USA'),
(15, 'LaBeouf', 'Shia', '1986-06-11', 'USA'),
(16, 'Depp', 'Johnny', '1963-06-09', 'USA'),
(17, 'Knightley', 'Keira', '1985-03-26', 'Angleterre'),
(18, 'Rush', 'Geoffrey', '1951-07-06', 'Australie'),
(19, 'Cotillard', 'Marion', '1975-09-30', 'France'),
(20, 'Bonham', 'Helena', '1966-05-26', 'Angleterre'),
(21, 'Ford', 'Harrison', '1942-07-13', 'USA'),
(22, 'Portman', 'Natalie', '1981-06-09', 'USA'),
(23, 'McGregor', 'Ewan', '1971-03-31', 'Ecosse'),
(24, 'Maguire', 'Tobey', '1975-06-27', 'USA'),
(25, 'Reeves', 'Keanu', '1964-09-02', 'USA'),
(26, 'Cusak', 'John', '1966-06-26', 'USA'),
(27, 'Peet', 'Amanda', '1972-01-11', 'USA'),
(28, 'Goldblum', 'Jeffrey', '1952-10-22', 'USA'),
(29, 'Smith', 'Will', '1968-09-25', 'USA'),
(30, 'Hanks', 'Tom', '1956-07-09', 'USA'),
(31, 'Tautou', 'Audrey', '1976-08-09', 'France'),
(32, 'Reno', 'Jean', '1948-07-30', 'France'),
(33, 'Stewart', 'Kristen', '1990-04-09', 'USA'),
(34, 'Pattinson', 'Thomas', '1986-05-13', 'Angleterre'),
(35, 'Lautner', 'Taylor', '1992-02-11', 'USA'),
(36, 'Connery', 'Sean', '1930-08-25', 'Ecosse'),
(37, 'Willis', 'Bruce', '1955-03-19', 'USA'),
(38, 'Williams', 'Olivia', '1968-07-26', 'Angleterre'),
(39, 'Bale', 'Christian', '1974-01-30', 'Angleterre'),
(40, 'Freeman', 'Morgan', '1937-06-01', 'USA');

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `idfilm` int NOT NULL,
  `titre` varchar(100) NOT NULL DEFAULT '',
  `genre` varchar(50) NOT NULL DEFAULT '',
  `sortie` date NOT NULL DEFAULT '0000-00-00',
  `recettes` int NOT NULL DEFAULT '0',
  `idrealisateur` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`idfilm`, `titre`, `genre`, `sortie`, `recettes`, `idrealisateur`) VALUES
(1, 'Twilight chapitre II : Tentation', 'Fantastique', '2009-02-12', 710, 6),
(2, 'Transformers', 'Fantastique', '2007-06-06', 709, 4),
(3, 'Twilight chapitre III : HÃ©sitation', 'Fantastique', '2010-01-10', 698, 7),
(4, 'Forrest Gump', 'Histoire', '1994-05-20', 677, 8),
(5, 'Avatar', 'Fantastique', '2009-02-15', 2782, 1),
(6, 'Titanic', 'Drame', '1997-07-23', 1843, 1),
(7, 'Harry Potter et les Reliques de la Mort II', 'Fantastique', '2011-12-01', 1294, 2),
(8, 'Le Seigneur des anneaux : Le Retour du roi', 'Histoire', '2003-05-23', 1119, 3),
(9, 'SixiÃ¨me Sens', 'Science fiction', '1999-03-06', 673, 9),
(10, 'L Ã‚ge de glace 2', 'Animation', '2006-09-06', 655, 10),
(11, 'Pirates des CaraÃ¯bes : La MalÃ©diction du Black Pearl', 'Fantastique', '2003-04-02', 654, 5),
(12, 'Transformers 3 : La Face cachÃ©e de la Lune', 'Fantastique', '2011-04-23', 1106, 4),
(13, 'Pirates des CaraÃ¯bes : Le Secret du coffre maudit', 'Fantastique', '2006-12-01', 1066, 5),
(14, 'Toy Story 3', 'Animation', '2010-07-10', 1063, 11),
(15, 'Pirates des CaraÃ¯bes : La Fontaine de Jouvence', 'Fantastique', '2011-03-09', 1038, 12),
(16, 'Alice au pays des merveilles', 'Animation', '2010-09-04', 1024, 13),
(17, 'The Dark Knight : Le Chevalier noir', 'Fantastique', '2008-08-06', 1001, 14),
(18, 'Harry Potter Ã  l Ã©cole des Sorciers', 'Fantastique', '2001-02-01', 975, 15),
(19, 'Da Vinci Code', 'Policier', '2006-08-02', 758, 16),
(20, 'Shrek 4 : Il Ã©tait une fin', 'Animation', '2010-01-05', 753, 17),
(21, 'Le Monde de Narnia', 'Fantastique', '2005-07-04', 745, 18),
(22, 'Matrix Reloaded', 'Science fiction', '2003-09-21', 742, 19),
(23, 'LÃ -haut', 'Animation', '2009-11-07', 731, 20),
(24, 'Pirates des CaraÃ¯bes : Jusqu au bout du monde', 'Fantastique', '2007-10-23', 963, 5),
(25, 'Harry Potter et les Reliques de la Mort I', 'Fantastique', '2010-04-03', 955, 2),
(26, 'Harry Potter et l Ordre du PhÃ©nix', 'Fantastique', '2007-02-01', 940, 2),
(27, 'Harry Potter et le Prince de Sang-MÃªlÃ©', 'Fantastique', '2009-09-04', 934, 2),
(28, 'Le Seigneur des anneaux : Les Deux Tours', 'Histoire', '2002-07-12', 925, 3),
(29, 'Star Wars I : La Menace fantÃ´me', 'Science fiction', '1999-06-21', 924, 21),
(30, 'Shrek 2', 'Animation', '2004-05-26', 920, 18),
(31, 'Independence Day', 'Science fiction', '1996-01-02', 817, 27),
(32, 'Shrek le troisiÃ¨me', 'Animation', '2007-08-03', 798, 22),
(33, 'Harry Potter et le Prisonnier d Azkaban', 'Fantastique', '2003-04-18', 796, 23),
(34, 'E.T. l extra-terrestre', 'Science fiction', '1982-04-04', 792, 24),
(35, 'Indiana Jones', 'Aventure', '2008-02-02', 786, 24),
(36, 'Le Roi lion', 'Animation', '1994-06-06', 784, 25),
(37, 'Spider-Man 2', 'Fantastique', '2004-11-23', 783, 26),
(38, 'Star Wars  IV : Un nouvel espoir', 'Science fiction', '1977-09-17', 775, 21),
(39, '2012', 'Science fiction', '2009-04-03', 769, 27),
(40, 'L Ã‚ge de glace 3', 'Animation', '2009-09-01', 886, 10),
(41, 'Harry Potter et la Chambre des Secrets', 'Fantastique', '2002-03-26', 878, 15),
(42, 'Le Seigneur des anneaux : La CommunautÃ© de l anneau', 'Histoire', '2001-07-03', 870, 3),
(43, 'Le Monde de Nemo', 'Animation', '2003-05-01', 867, 28),
(44, 'Star Wars III : La Revanche des Sith', 'Science fiction', '2005-11-04', 848, 21),
(45, 'Transformers 2 : La Revanche', 'Fantastique', '2009-08-02', 836, 4),
(46, 'Inception', 'Fantastique', '2010-09-04', 825, 14),
(47, 'Spider-Man', 'Fantastique', '2002-06-06', 821, 26),
(48, 'Jurassic Park', 'Fantastique', '1993-08-12', 914, 24),
(49, 'Harry Potter et la Coupe de Feu', 'Fantastique', '2005-07-07', 896, 29),
(50, 'Spider-Man 3', 'Fantastique', '2007-09-01', 890, 26);

-- --------------------------------------------------------

--
-- Structure de la table `filmacteur`
--

CREATE TABLE `filmacteur` (
  `idfilm` int NOT NULL DEFAULT '0',
  `idacteur` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `filmacteur`
--

INSERT INTO `filmacteur` (`idfilm`, `idacteur`) VALUES
(1, 33),
(1, 34),
(1, 35),
(2, 13),
(2, 14),
(2, 15),
(3, 33),
(3, 34),
(3, 35),
(4, 30),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(6, 5),
(6, 6),
(7, 7),
(7, 8),
(7, 9),
(8, 10),
(8, 11),
(8, 12),
(9, 37),
(9, 38),
(11, 16),
(11, 17),
(11, 18),
(12, 13),
(12, 15),
(13, 16),
(13, 17),
(13, 18),
(15, 16),
(15, 18),
(16, 16),
(16, 20),
(17, 39),
(17, 40),
(18, 7),
(18, 8),
(18, 9),
(19, 30),
(19, 31),
(19, 32),
(22, 25),
(24, 16),
(24, 17),
(24, 18),
(25, 7),
(25, 8),
(25, 9),
(26, 7),
(26, 8),
(26, 9),
(27, 7),
(27, 8),
(27, 9),
(28, 10),
(28, 11),
(28, 12),
(29, 21),
(29, 22),
(29, 23),
(31, 28),
(31, 29),
(33, 7),
(33, 8),
(33, 9),
(35, 21),
(35, 36),
(37, 24),
(38, 21),
(38, 22),
(38, 23),
(39, 26),
(39, 27),
(41, 7),
(41, 8),
(41, 9),
(42, 10),
(42, 11),
(42, 12),
(43, 7),
(43, 8),
(43, 9),
(44, 21),
(44, 22),
(44, 23),
(45, 13),
(45, 14),
(45, 15),
(46, 5),
(46, 19),
(47, 24),
(48, 28),
(49, 7),
(49, 8),
(49, 9),
(50, 24);

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

CREATE TABLE `realisateur` (
  `idrealisateur` int NOT NULL,
  `nom` varchar(100) NOT NULL DEFAULT '',
  `prenom` varchar(50) NOT NULL DEFAULT '',
  `date_naissance` date NOT NULL DEFAULT '0000-00-00',
  `nation` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `realisateur`
--

INSERT INTO `realisateur` (`idrealisateur`, `nom`, `prenom`, `date_naissance`, `nation`) VALUES
(1, 'Cameron', 'James', '1954-08-16', 'USA'),
(2, 'Yates', 'David', '1963-11-30', 'Angleterre'),
(3, 'Jackson', 'Peter', '1961-10-31', 'Nouvelle ZÃ©lande'),
(4, 'Bay', 'Michael', '1965-02-17', 'USA'),
(5, 'Verbinski', 'Gore', '1964-03-16', 'USA'),
(6, 'Weitz', 'Chris', '1969-11-30', 'USA'),
(7, 'Slade', 'David', '1969-09-26', 'Angleterre'),
(8, 'Zemeckis', 'Robert', '1951-05-14', 'USA'),
(9, 'Shyamalan', 'Night', '1970-08-06', 'USA'),
(10, 'Saldanha', 'Carlos', '1965-07-24', 'BrÃ©sil'),
(11, 'Unkrich', 'Lee', '1967-08-08', 'USA'),
(12, 'Marshall', 'Rob', '1960-10-17', 'USA'),
(13, 'Burton', 'Tim', '1958-08-25', 'USA'),
(14, 'Nolan', 'Christopher', '1970-07-30', 'Angleterre'),
(15, 'Columbus', 'Chris', '1958-09-10', 'USA'),
(16, 'Howard', 'Ron', '1954-03-01', 'USA'),
(17, 'Mitchell', 'Mike', '1970-10-20', 'USA'),
(18, 'Adamson', 'Andrew', '1966-12-01', 'Nouvelle ZÃ©lande'),
(19, 'Wachowski', 'Larry', '1967-12-29', 'USA'),
(20, 'Peterson', 'Bob', '1961-01-05', 'USA'),
(21, 'Lucas', 'Ceorge', '1944-05-14', 'USA'),
(22, 'Miller', 'Chris', '1975-09-23', 'USA'),
(23, 'CuarÃ³n', 'Alfonso', '1961-11-28', 'Mexique'),
(24, 'Spielberg', 'Steven', '1946-12-18', 'USA'),
(25, 'Allers', 'Roger', '1949-10-02', 'USA'),
(26, 'Raimi', 'Sam', '1959-10-23', 'USA'),
(27, 'Emmerich', 'Roland', '1955-11-10', 'Allemagne'),
(28, 'Stanton', 'Andrew', '1965-12-03', 'USA'),
(29, 'Newell', 'Mike', '1942-03-28', 'Angleterre'),
(30, 'Hitchcok', 'Alfred', '1899-08-13', 'Angleterre'),
(31, 'Besson', 'Luc', '1959-03-18', 'France');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `login` varchar(255) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `rue` varchar(255) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `cp` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `login`, `mdp`, `nom`, `prenom`, `rue`, `ville`, `cp`) VALUES
(6, 'otot', 'otot', 'ototo', 'toot', 'oto', 'oto', 7878);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD PRIMARY KEY (`idacteur`);

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`idfilm`),
  ADD KEY `idrealisateur` (`idrealisateur`);

--
-- Index pour la table `filmacteur`
--
ALTER TABLE `filmacteur`
  ADD PRIMARY KEY (`idfilm`,`idacteur`),
  ADD KEY `idacteur` (`idacteur`);

--
-- Index pour la table `realisateur`
--
ALTER TABLE `realisateur`
  ADD PRIMARY KEY (`idrealisateur`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `acteur`
--
ALTER TABLE `acteur`
  MODIFY `idacteur` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `idfilm` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `realisateur`
--
ALTER TABLE `realisateur`
  MODIFY `idrealisateur` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
