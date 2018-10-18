-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 18 oct. 2018 à 14:51
-- Version du serveur :  5.7.19
-- Version de PHP :  7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `autoecole`
--

-- --------------------------------------------------------

--
-- Structure de la table `eleve`
--

DROP TABLE IF EXISTS `eleve`;
CREATE TABLE IF NOT EXISTS `eleve` (
  `code` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(10) NOT NULL,
  `dateInscription` date NOT NULL,
  `prenom` varchar(10) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `creditHoraire` int(11) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `eleve`
--

INSERT INTO `eleve` (`code`, `nom`, `dateInscription`, `prenom`, `adresse`, `creditHoraire`) VALUES
(1, 'Barry', '2019-04-02', 'Gareth', '182-7736 Porttitor Ave', 10),
(2, 'Padilla', '2018-12-25', 'Tobias', '540-378 Fusce Ave', 3),
(3, 'Cameron', '2018-09-12', 'Daniel', 'CP 760, 8403 Ultricies Avenue', 9),
(4, 'Barry', '2018-04-08', 'Malachi', 'CP 344, 8736 Rutrum. Av.', 10),
(5, 'Nelson', '2018-09-21', 'Graiden', '2125 Tincidunt Impasse', 6),
(6, 'Duran', '2018-12-11', 'Jerome', '264-4796 Phasellus Av.', 1),
(7, 'Carrillo', '2018-05-31', 'Thaddeus', '5071 Eu Route', 2),
(8, 'Hall', '2018-08-20', 'Todd', 'CP 576, 2139 Montes, Ave', 9),
(9, 'Hale', '2018-12-28', 'Felix', 'Appartement 147-135 Feugiat. Rd.', 1),
(10, 'Hicks', '2019-03-14', 'Brandon', '4572 Posuere Avenue', 10),
(11, 'Velasquez', '2018-05-29', 'Acton', 'CP 204, 7996 Parturient Impasse', 8),
(12, 'Gates', '2018-10-05', 'Silas', 'CP 934, 2866 Sed Route', 9),
(13, 'Gay', '2018-04-20', 'Boris', 'Appartement 369-190 Lectus, Chemin', 9),
(14, 'Spencer', '2018-09-20', 'Aidan', 'Appartement 890-1840 Lorem, Avenue', 8),
(15, 'Shepard', '2019-03-13', 'Conan', '171-4420 Sed Avenue', 6),
(16, 'Barron', '2019-02-05', 'Abraham', '3776 Adipiscing Route', 2),
(17, 'West', '2017-12-03', 'Caesar', 'CP 553, 1634 Magna Rue', 6),
(18, 'Yates', '2018-03-19', 'Chandler', '294-7422 Fermentum Avenue', 8),
(19, 'Weber', '2018-03-31', 'Curran', 'CP 685, 8683 Arcu. Av.', 4),
(20, 'Browning', '2018-07-11', 'Hashim', 'CP 840, 8499 Nullam Rue', 3),
(21, 'Love', '2018-11-11', 'Akeem', 'Appartement 309-7338 Viverra. Chemin', 3),
(22, 'Russell', '2018-03-11', 'Fletcher', 'CP 448, 2206 Leo. Avenue', 1),
(23, 'Mcdaniel', '2018-07-30', 'Quinn', 'CP 915, 3646 Fusce Av.', 8),
(24, 'Potts', '2018-09-08', 'Wang', 'CP 594, 3176 Nulla Avenue', 10),
(25, 'Larson', '2019-04-03', 'Thomas', 'Appartement 912-2631 Mi Ave', 3),
(26, 'Figueroa', '2018-09-22', 'Neville', 'Appartement 780-7416 Mi Route', 1),
(27, 'Wynn', '2019-03-30', 'Ivor', 'CP 729, 8595 Cursus Rd.', 6),
(28, 'Griffin', '2018-04-13', 'Ulysses', '719-7732 Sollicitudin Impasse', 7),
(29, 'Blackburn', '2019-07-01', 'Hoyt', 'Appartement 642-9668 Libero Route', 5),
(30, 'Hewitt', '2017-11-01', 'Rooney', 'CP 108, 2286 Cursus, Av.', 10),
(31, 'Maldonado', '2019-02-16', 'Kasimir', 'CP 839, 3105 Ipsum. Rue', 4),
(32, 'Silva', '2017-10-25', 'Davis', 'Appartement 132-7516 Rutrum Rue', 9),
(33, 'Guerra', '2019-04-29', 'Kermit', 'CP 193, 4543 Mauris Av.', 5),
(34, 'Becker', '2018-02-08', 'Erasmus', 'Appartement 955-1487 Mauris, Rd.', 4),
(35, 'Francis', '2018-10-12', 'Tanek', '1294 Nunc Ave', 1),
(36, 'Osborne', '2018-04-08', 'Cole', '296-4523 Suspendisse Avenue', 10),
(37, 'Price', '2018-07-05', 'Carson', '998-315 Fusce Av.', 3),
(38, 'Moore', '2018-08-18', 'Emerson', 'CP 299, 7234 Eget Rue', 10),
(39, 'May', '2018-08-24', 'Dorian', 'Appartement 664-463 Mauris Chemin', 2),
(40, 'Merritt', '2019-01-29', 'Colby', 'Appartement 509-8020 Ullamcorper, Av.', 7),
(41, 'Wright', '2017-11-08', 'Travis', '1795 Sagittis Rd.', 4),
(42, 'Odonnell', '2018-12-09', 'Elvis', 'Appartement 932-6408 Nonummy Impasse', 6),
(43, 'Santiago', '2018-01-04', 'Lewis', 'CP 365, 9753 Dui. Impasse', 4),
(44, 'Donovan', '2018-09-23', 'Scott', '368-9673 Est, Avenue', 5),
(45, 'Price', '2019-04-19', 'Evan', '335 Augue Chemin', 2),
(46, 'Norris', '2019-04-01', 'Len', 'Appartement 491-9541 Eu Chemin', 1),
(47, 'Lloyd', '2018-10-19', 'Clarke', '777-6745 Placerat, Rue', 3),
(48, 'West', '2019-09-02', 'Harding', '2175 Aliquet Rue', 2),
(49, 'Pickett', '2019-02-21', 'Mark', 'CP 104, 1458 Adipiscing. Av.', 9),
(50, 'Monroe', '2018-02-05', 'Lane', '241-7330 Proin Chemin', 3),
(51, 'Briggs', '2019-04-25', 'Omar', 'Appartement 190-5462 Rhoncus. Av.', 9),
(52, 'Boone', '2017-09-29', 'Troy', 'CP 381, 3247 Eu, Ave', 8),
(53, 'Mclean', '2018-09-13', 'Jakeem', 'Appartement 223-9611 Eleifend. Route', 2),
(54, 'Wood', '2019-03-23', 'Graiden', 'Appartement 359-2772 Blandit Av.', 4),
(55, 'Porter', '2019-01-06', 'Lucas', '194-5255 Nulla Chemin', 8),
(56, 'Bowen', '2018-05-25', 'Vernon', 'Appartement 267-3734 Mauris Avenue', 6),
(57, 'Mcgee', '2018-09-21', 'Akeem', 'Appartement 268-4335 Rutrum Av.', 1),
(58, 'Brock', '2018-11-01', 'Quinn', '554-2867 Dis Rd.', 2),
(59, 'Beach', '2018-09-14', 'Dennis', 'Appartement 714-3139 Nibh. Impasse', 10),
(60, 'Atkinson', '2018-02-06', 'Burton', 'CP 957, 4190 Diam Impasse', 7),
(61, 'Hicks', '2019-06-16', 'Chester', 'CP 263, 1815 Cursus Chemin', 4),
(62, 'Gaines', '2018-01-07', 'Yasir', 'CP 997, 5071 Scelerisque Chemin', 10),
(63, 'Mercer', '2018-07-07', 'Cooper', '607-1519 Vel, Impasse', 8),
(64, 'Hart', '2018-08-13', 'Jordan', '1001 Magna. Route', 5),
(65, 'Bryan', '2017-11-07', 'Jeremy', '888-9956 Sed Rue', 9),
(66, 'Dillard', '2019-09-03', 'Dante', 'Appartement 645-7499 Turpis Av.', 10),
(67, 'Hatfield', '2019-08-11', 'Hayes', '2829 A Avenue', 8),
(68, 'Jimenez', '2019-04-09', 'Mohammad', '508-1954 Est. Rue', 6),
(69, 'Griffith', '2019-05-18', 'Beck', 'Appartement 878-1551 Nulla. Av.', 10),
(70, 'Kim', '2019-05-14', 'Lyle', '7489 Sed Chemin', 5),
(75, 'rostaing', '2018-09-21', 'theo', '45 chemin de la commanderie', 0),
(76, 'Test', '2018-09-24', 'Test', 'ceci est la vrai addresse', -2);

-- --------------------------------------------------------

--
-- Structure de la table `lecon`
--

DROP TABLE IF EXISTS `lecon`;
CREATE TABLE IF NOT EXISTS `lecon` (
  `numero` int(11) NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `heure` varchar(5) NOT NULL,
  `duree` time NOT NULL,
  `effectuer` char(1) NOT NULL,
  `numImma` varchar(9) NOT NULL,
  `code` int(11) DEFAULT NULL,
  PRIMARY KEY (`numero`),
  KEY `lecon_vehicule_FK` (`numImma`),
  KEY `lecon_eleve0_FK` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `lecon`
--

INSERT INTO `lecon` (`numero`, `Date`, `heure`, `duree`, `effectuer`, `numImma`, `code`) VALUES
(1, '2018-10-10', '12:00', '02:00:00', 'n', 'AW-708-TG', NULL),
(2, '2018-10-04', '10:00', '02:00:00', 'n', 'BU-854-RZ', NULL),
(3, '2018-12-12', '08:00', '02:00:00', 'n', 'CB-876-BQ', NULL),
(4, '2018-10-09', '16:00', '02:00:00', 'n', 'AG-942-VT', NULL),
(5, '2018-12-19', '14:00', '02:00:00', 'n', 'DY-058-YO', NULL),
(6, '2018-12-06', '18:00', '02:00:00', 'n', 'XM-612-MS', NULL),
(7, '2018-10-18', '20:00', '02:00:00', 'n', 'EA-619-ZF', 75),
(8, '2018-12-13', '16:00', '02:00:00', 'n', 'CB-876-BQ', NULL),
(9, '2018-10-19', '10:00', '02:00:00', 'o', 'PF-616-PB', NULL),
(10, '2018-10-18', '10:00', '02:00:22', 'n', 'DY-058-YO', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `vehicule`
--

DROP TABLE IF EXISTS `vehicule`;
CREATE TABLE IF NOT EXISTS `vehicule` (
  `numImma` varchar(9) NOT NULL,
  `modele` varchar(50) NOT NULL,
  `couleur` varchar(50) NOT NULL,
  PRIMARY KEY (`numImma`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vehicule`
--

INSERT INTO `vehicule` (`numImma`, `modele`, `couleur`) VALUES
('AA-000-AA', 'clio', '#990014'),
('AA-353-RG', 'ullamcorper', '#000'),
('AC-293-NA', 'nunc.', '#000'),
('AG-942-VT', 'at,', '#000'),
('AO-416-VA', 'Nam', '#000'),
('AR-350-JA', 'enim', '#000'),
('AT-366-WL', 'a', '#000'),
('AW-708-TG', 'ridiculus', '#000'),
('BL-170-GV', 'diam', '#000'),
('BP-237-UN', 'tempus', '#990014'),
('BU-398-GA', 'sem', '#000'),
('BU-854-RZ', 'commodo', '#000'),
('CB-876-BQ', 'justo', '#000'),
('CT-164-IW', 'nec', '#000'),
('DY-058-YO', 'elit,', '#000'),
('EA-619-ZF', 'magnis', '#000'),
('EG-155-TQ', 'auctor', '#000'),
('EK-106-FO', 'nisi', '#000'),
('FJ-652-GK', 'elit', '#000'),
('FY-362-QH', 'tincidunt', '#000'),
('GB-992-KE', 'mollis', '#c4c1ea'),
('GJ-311-GZ', 'consequat', '#000'),
('GQ-500-YI', 'adipiscing', '#000'),
('GT-648-NH', 'ut', '#000'),
('GX-305-LO', 'gravida', '#000'),
('HA-326-LC', 'Proin', '#000'),
('HG-363-DU', 'torquent', '#000'),
('HP-334-UP', 'Nam', '#000'),
('HP-563-ZQ', 'id,', '#000'),
('HY-958-PW', 'risus', '#000'),
('IA-352-UI', 'ac', '#000'),
('JA-909-SL', 'fermentum', '#000'),
('JO-264-EQ', 'tempor,', '#000'),
('JV-691-QJ', 'et,', '#990014'),
('KK-650-SM', 'mauris', '#000'),
('KK-890-TD', 'ac', '#000'),
('KQ-180-AF', 'at', '#000'),
('KV-422-TJ', 'pede,', '#000'),
('KV-894-MZ', 'Mauris', '#000'),
('LG-030-ZY', 'egestas.', '#000'),
('LL-958-HI', 'urna,', '#000'),
('LN-777-UU', 'Duis', '#000'),
('LS-887-LX', 'id', '#000'),
('LV-896-VN', 'dignissim', '#000'),
('LW-340-SS', 'eu', '#000'),
('MF-400-VF', 'pede.', '#000'),
('MI-315-UR', 'orci', '#000'),
('MJ-641-SM', 'orci,', '#000'),
('MK-929-TU', 'tellus', '#000'),
('MQ-381-GJ', 'pellentesque.', '#000'),
('NI-662-PR', 'aliquet.', '#c4c1ea'),
('NI-714-VP', 'elementum,', '#000'),
('NJ-656-VM', 'tellus', '#000'),
('NM-798-RC', 'Aliquam', '#000'),
('NN-384-WG', 'leo,', '#000'),
('NQ-436-DF', 'fringilla', '#000'),
('NR-475-JM', 'Morbi', '#000'),
('NV-948-YD', 'quis', '#000'),
('PF-616-PB', 'Integer', '#000'),
('PF-814-PR', 'risus.', '#000'),
('PL-526-GF', 'neque', '#000'),
('PM-752-FN', 'orci,', '#000'),
('PV-731-OW', 'lobortis.', '#000'),
('QE-867-NE', 'gravida', '#000'),
('QM-927-ME', 'feugiat', '#000'),
('QR-117-CE', 'ornare', '#000'),
('RA-895-MV', 'orci', '#000'),
('RM-512-HB', 'risus,', '#000'),
('SB-413-GR', 'Curabitur', '#000'),
('SR-646-GJ', 'erat', '#000'),
('TD-371-HW', 'magna,', '#000'),
('TJ-660-HD', 'facilisis.', '#000'),
('TP-103-XG', 'aliquet', '#000'),
('TP-413-BM', 'luctus,', '#000'),
('TQ-496-JB', 'nec,', '#000'),
('TY-330-WY', 'Phasellus', '#000'),
('UG-561-WL', 'ac,', '#000'),
('UI-547-ZV', 'vitae', '#000'),
('UK-680-TR', 'tincidunt,', '#000'),
('UR-200-UD', 'Sed', '#000'),
('UV-633-DO', 'In', '#000'),
('UZ-699-ZA', 'elit,', '#000'),
('VI-880-IN', 'Sed', '#000'),
('WB-640-DQ', 'eleifend,', '#000'),
('WI-456-LV', 'arcu.', '#000'),
('WM-830-VK', 'vel', '#000'),
('XA-936-ZY', 'sed', '#000'),
('XM-612-MS', 'consequat', '#000'),
('XR-977-YR', 'eget', '#000'),
('XY-969-HJ', 'malesuada', '#000'),
('XZ-229-BB', 'egestas', '#000'),
('YC-048-LH', 'Donec', '#000'),
('YD-902-SE', 'pellentesque,', '#000'),
('YG-183-HZ', 'luctus', '#000'),
('YH-524-GR', 'semper', '#000'),
('YL-846-TA', 'ornare.', '#000'),
('YX-634-XU', 'turpis', '#000'),
('ZE-818-RT', 'ultrices', '#000'),
('ZG-012-CC', 'lacus.', '#000'),
('ZL-993-WQ', 'vitae', '#000'),
('ZQ-206-DY', 'sed', '#000');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `lecon`
--
ALTER TABLE `lecon`
  ADD CONSTRAINT `lecon_eleve0_FK` FOREIGN KEY (`code`) REFERENCES `eleve` (`code`),
  ADD CONSTRAINT `lecon_vehicule_FK` FOREIGN KEY (`numImma`) REFERENCES `vehicule` (`numImma`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
