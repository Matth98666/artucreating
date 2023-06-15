-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 16 mai 2023 à 16:30
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `artucreating`
--

-- --------------------------------------------------------

--
-- Structure de la table `audio`
--

CREATE TABLE `audio` (
  `id_audio` int(11) DEFAULT NULL,
  `id_creation` int(11) DEFAULT NULL,
  `audio` varchar(255) DEFAULT NULL,
  `duree_audio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `audio`
--

INSERT INTO `audio` (`id_audio`, `id_creation`, `audio`, `duree_audio`) VALUES
(1, 3, 'Guerre des mondes.wav', 912);

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `id_commentaire` int(11) NOT NULL,
  `id_tuto` int(11) DEFAULT NULL,
  `id_utilisateur` int(11) DEFAULT NULL,
  `id_creation` int(11) DEFAULT NULL,
  `commentaire` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`id_commentaire`, `id_tuto`, `id_utilisateur`, `id_creation`, `commentaire`) VALUES
(1, 1, 1, 2, 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.');

-- --------------------------------------------------------

--
-- Structure de la table `creation`
--

CREATE TABLE `creation` (
  `id_creation` int(11) NOT NULL,
  `id_utilisateur` int(11) DEFAULT NULL,
  `type` enum('all','video','audio','photo') DEFAULT NULL,
  `titre` varchar(80) DEFAULT NULL,
  `date_creation` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `auteur_creation` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `creation`
--

INSERT INTO `creation` (`id_creation`, `id_utilisateur`, `type`, `titre`, `date_creation`, `description`, `auteur_creation`) VALUES
(1, NULL, 'video', 'Headhunterz & Sub Zero Project - Our Church - (Metal Cover)', 7082022, '0 + 0= ma tête à toto', 'Matthias'),
(2, NULL, 'photo', 'Que trépasse si je faiblit!', 20102022, '...', 'Goddefroy'),
(3, NULL, 'audio', 'JE SUIS TON PIRE CAUCHEMARD', 10052023, 'Fait de beaux rêve', 'Freddy');

-- --------------------------------------------------------

--
-- Structure de la table `photo`
--

CREATE TABLE `photo` (
  `id_photo` int(11) DEFAULT NULL,
  `id_creation` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `photo`
--

INSERT INTO `photo` (`id_photo`, `id_creation`, `photo`) VALUES
(1, 2, 'Church.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `tuto`
--

CREATE TABLE `tuto` (
  `id_tuto` int(11) NOT NULL,
  `id_utilisateur` int(11) DEFAULT NULL,
  `type` enum('all','video','audio','photo') DEFAULT NULL,
  `titre` varchar(80) DEFAULT NULL,
  `auteur_tuto` varchar(80) DEFAULT NULL,
  `date_tuto` int(11) DEFAULT NULL,
  `contenu` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tuto`
--

INSERT INTO `tuto` (`id_tuto`, `id_utilisateur`, `type`, `titre`, `auteur_tuto`, `date_tuto`, `contenu`, `image`) VALUES
(1, NULL, 'audio', 'Comment dormir la nuit', 'Freddy', 10052023, 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'greenmoon.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_utilisateur` int(11) NOT NULL,
  `prenom` varchar(80) DEFAULT NULL,
  `nom` varchar(80) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `mot_de_passe` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `prenom`, `nom`, `email`, `mot_de_passe`) VALUES
(1, 'Matthias', 'NEVIERE', 'matthnev@orange.fr', ' '),
(2, 'Freddy', 'KRUEGER', 'freddy.krueger@gmail.com', ' '),
(3, 'Goddefroy', 'DEMONTMIRAIL', 'louis16@legros.com', ' ');

-- --------------------------------------------------------

--
-- Structure de la table `video`
--

CREATE TABLE `video` (
  `id_video` int(11) DEFAULT NULL,
  `id_creation` int(11) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `duree_video` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `video`
--

INSERT INTO `video` (`id_video`, `id_creation`, `video`, `duree_video`) VALUES
(1, 1, 'Headhunterz & Sub Zero Project - Our Church - (Metal Cover).mp4', 301);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `audio`
--
ALTER TABLE `audio`
  ADD KEY `id_creation` (`id_creation`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id_commentaire`),
  ADD KEY `id_tuto` (`id_tuto`),
  ADD KEY `id_utilisateur` (`id_utilisateur`),
  ADD KEY `id_creation` (`id_creation`);

--
-- Index pour la table `creation`
--
ALTER TABLE `creation`
  ADD PRIMARY KEY (`id_creation`),
  ADD KEY `Depose` (`id_utilisateur`);

--
-- Index pour la table `photo`
--
ALTER TABLE `photo`
  ADD KEY `id_creation` (`id_creation`);

--
-- Index pour la table `tuto`
--
ALTER TABLE `tuto`
  ADD PRIMARY KEY (`id_tuto`),
  ADD KEY `Depose_tuto` (`id_utilisateur`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_utilisateur`);

--
-- Index pour la table `video`
--
ALTER TABLE `video`
  ADD KEY `id_creation` (`id_creation`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `audio`
--
ALTER TABLE `audio`
  ADD CONSTRAINT `audio_ibfk_1` FOREIGN KEY (`id_creation`) REFERENCES `creation` (`id_creation`);

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `commentaire_ibfk_1` FOREIGN KEY (`id_tuto`) REFERENCES `tuto` (`id_tuto`),
  ADD CONSTRAINT `commentaire_ibfk_2` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`),
  ADD CONSTRAINT `commentaire_ibfk_3` FOREIGN KEY (`id_creation`) REFERENCES `creation` (`id_creation`);

--
-- Contraintes pour la table `creation`
--
ALTER TABLE `creation`
  ADD CONSTRAINT `Depose` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `photo`
--
ALTER TABLE `photo`
  ADD CONSTRAINT `photo_ibfk_1` FOREIGN KEY (`id_creation`) REFERENCES `creation` (`id_creation`);

--
-- Contraintes pour la table `tuto`
--
ALTER TABLE `tuto`
  ADD CONSTRAINT `Depose_tuto` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `video_ibfk_1` FOREIGN KEY (`id_creation`) REFERENCES `creation` (`id_creation`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
