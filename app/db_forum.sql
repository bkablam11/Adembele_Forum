-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 19 avr. 2022 à 04:53
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `forum2020`
--

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id_message` int(11) NOT NULL,
  `texte_message` text NOT NULL,
  `date_message` date NOT NULL,
  `heure_message` time NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `message` (`id_message`, `texte_message`, `date_message`, `heure_message`, `id_user`) VALUES
(1, 'lorum', '2022-04-19', '22:18:31', 7),
(2, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Velit pariatur est, placeat modi consectetur quae ex commodi sed, numquam expedita omnis veniam, ratione aliquid quisquam ipsam temporibus voluptatibus aut vel.', '2022-04-19', '04:38:00', 8),
(3, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Velit pariatur est, placeat modi consectetur quae ex commodi sed, numquam expedita omnis veniam, ratione aliquid quisquam ipsam temporibus voluptatibus aut vel.', '2022-04-19', '02:39:00', 8),
(4, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Velit pariatur est, placeat modi consectetur quae ex commodi sed, numquam expedita omnis veniam, ratione aliquid quisquam ipsam temporibus voluptatibus aut vel.', '2022-04-19', '00:39:42', 7),
(5, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Velit pariatur est, placeat modi consectetur quae ex commodi sed, numquam expedita omnis veniam, ratione aliquid quisquam ipsam temporibus voluptatibus aut vel.', '2022-04-19', '04:40:00', 8),
(6, '', '2022-04-19', '04:50:00', 9),
(7, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Odit atque rerum exercitationem harum aliquam, molestias pariatur at laborum magnam eveniet, delectus est totam quae enim aliquid fugiat commodi cum error.', '2022-04-19', '04:51:00', 9);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_user` int(11) NOT NULL,
  `nom_user` varchar(50) NOT NULL,
  `prenom_user` varchar(50) NOT NULL,
  `email_user` varchar(50) NOT NULL,
  `pw_user` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_user`, `nom_user`, `prenom_user`, `email_user`, `pw_user`) VALUES
(7, 'Blanchard', 'Kablam', 'bkablam11@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(8, 'nom1', 'prenom1', 'email1@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(9, 'nom2', 'prenom2', 'email2@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id_message`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `id_message` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
