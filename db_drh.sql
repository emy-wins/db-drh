-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2024 at 12:22 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_drh`
--

-- --------------------------------------------------------

--
-- Table structure for table `conge`
--

CREATE TABLE `conge` (
  `id_cng` int(11) NOT NULL,
  `nbr_jour` int(100) NOT NULL,
  `date_entre` date NOT NULL,
  `date_sortie` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `diplome`
--

CREATE TABLE `diplome` (
  `id_d` int(11) NOT NULL,
  `nom_diplome` varchar(50) NOT NULL,
  `specialite_diplome` varchar(50) NOT NULL,
  `type_diplome` varchar(50) NOT NULL,
  `etablissement` varchar(50) NOT NULL,
  `categorie_diplome` varchar(50) NOT NULL,
  `date_diplome` date NOT NULL,
  `file_diplome` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enfant`
--

CREATE TABLE `enfant` (
  `id_e` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `nom_arb` varchar(20) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `prenom_arb` varchar(30) NOT NULL,
  `sexe` varchar(10) NOT NULL,
  `date_naissance` date NOT NULL,
  `lieu_naissance` varchar(100) NOT NULL,
  `lieu_naissance_arb` varchar(100) NOT NULL,
  `idsc` varchar(50) NOT NULL,
  `cin` varchar(10) NOT NULL,
  `file_cin` blob NOT NULL,
  `annee_civil` int(4) NOT NULL,
  `num_civil` int(11) NOT NULL,
  `file_extrait` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fonctionnaire`
--

CREATE TABLE `fonctionnaire` (
  `id_f` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `nom_arb` varchar(20) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `prenom_arb` varchar(30) NOT NULL,
  `sexe` varchar(10) NOT NULL,
  `date_naissance` date NOT NULL,
  `lieu_naissance` varchar(100) NOT NULL,
  `lieu_naissance_arb` varchar(100) NOT NULL,
  `idsc` varchar(50) NOT NULL,
  `cin` varchar(10) NOT NULL,
  `file_cin` blob NOT NULL,
  `annee_civil` int(4) NOT NULL,
  `num_civil` int(11) NOT NULL,
  `file_extrait` blob NOT NULL,
  `photo` blob NOT NULL,
  `prenom_pere` varchar(30) NOT NULL,
  `prenom_pere_arb` varchar(30) NOT NULL,
  `prenom_grand_pere_paternel` varchar(30) NOT NULL,
  `prenom_grand_pere_paternel_arb` varchar(30) NOT NULL,
  `prenom_mere` varchar(30) NOT NULL,
  `prenom_mere_arb` varchar(30) NOT NULL,
  `prenom_grand_pere_maternel` varchar(30) NOT NULL,
  `prenom_grand_pere_maternel_arb` varchar(30) NOT NULL,
  `ville_naissance` varchar(10) NOT NULL,
  `ville_naissance_arb` varchar(30) NOT NULL,
  `commune_naissance` varchar(20) NOT NULL,
  `commune_naissance_arb` varchar(30) NOT NULL,
  `file_rib` blob NOT NULL,
  `situation` varchar(10) NOT NULL,
  `commune_residence` varchar(20) NOT NULL,
  `province_residence` varchar(100) NOT NULL,
  `commune_residence_arb` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `adresse_arb` varchar(100) NOT NULL,
  `date_recrutement` date NOT NULL,
  `ppr` varchar(10) NOT NULL,
  `file_arrete` blob NOT NULL,
  `grade` varchar(30) NOT NULL,
  `date_grade` date DEFAULT NULL,
  `echelle` int(11) NOT NULL,
  `echelon` int(11) NOT NULL,
  `date_echelon` date DEFAULT NULL,
  `fonction` varchar(255) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fonctionnaire`
--

INSERT INTO `fonctionnaire` (`id_f`, `nom`, `nom_arb`, `prenom`, `prenom_arb`, `sexe`, `date_naissance`, `lieu_naissance`, `lieu_naissance_arb`, `idsc`, `cin`, `file_cin`, `annee_civil`, `num_civil`, `file_extrait`, `photo`, `prenom_pere`, `prenom_pere_arb`, `prenom_grand_pere_paternel`, `prenom_grand_pere_paternel_arb`, `prenom_mere`, `prenom_mere_arb`, `prenom_grand_pere_maternel`, `prenom_grand_pere_maternel_arb`, `ville_naissance`, `ville_naissance_arb`, `commune_naissance`, `commune_naissance_arb`, `file_rib`, `situation`, `commune_residence`, `province_residence`, `commune_residence_arb`, `email`, `telephone`, `adresse`, `adresse_arb`, `date_recrutement`, `ppr`, `file_arrete`, `grade`, `date_grade`, `echelle`, `echelon`, `date_echelon`, `fonction`, `password`) VALUES
(1, 'imane', 'gdfgfdgf', 'gffdgfdg', 'dgfgdg', 'Homme', '2024-12-11', 'sqdsqdsqd', 'sdfghujklmù', '84854169', 'dgdgd', 0x62643564653231302d666338372d343034662d616137662d3936376437366231623736382e746d70, 2024, 66545415, 0x3131313633353134363630393733342e6a7067, 0x3131313633353134363630393733342e6a7067, 'sdsdgg', 'sdgsdg', 'sdgsdggd', 'sdgsdgg', 'sgdddgd', 'sgdgsdd', 'sdgggd', 'eretertreter', 'qsdqsdsqd', 'dgfdrgfdgfd', 'sdqsdqds', 'qsdqsdqds', 0x686f7573652d7376677265706f2d636f6d2e737667, 'Marie', 'rtyrtytrytry', '', 'rtyrtytrytry', 'imaneben@gmail.com', '125486946512', 'dxcugihygboùuhioh', '^cyguihoiuùoçpàuçou', '2024-12-18', '1561561651', 0x68656172742d7376677265706f2d636f6d2e737667, 'Grade', NULL, 155, 15, NULL, 'Fonction ..', 'dgdgd');

-- --------------------------------------------------------

--
-- Table structure for table `formation`
--

CREATE TABLE `formation` (
  `id_f` int(11) NOT NULL,
  `titre_formation` varchar(50) NOT NULL,
  `domain_formation` varchar(50) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

CREATE TABLE `partner` (
  `id_p` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `nom_arb` varchar(20) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `prenom_arb` varchar(30) NOT NULL,
  `sexe` varchar(10) NOT NULL,
  `date_naissance` date NOT NULL,
  `lieu_naissance` varchar(100) NOT NULL,
  `lieu_naissance_arb` varchar(100) NOT NULL,
  `idsc` varchar(50) NOT NULL,
  `cin` varchar(10) NOT NULL,
  `file_cin` blob NOT NULL,
  `annee_civil` int(4) NOT NULL,
  `num_civil` int(11) NOT NULL,
  `file_extrait` blob NOT NULL,
  `file_mariage` blob NOT NULL,
  `num_enfant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `type_conge`
--

CREATE TABLE `type_conge` (
  `id_tc` int(11) NOT NULL,
  `nom_type` varchar(255) NOT NULL,
  `file_motif` blob NOT NULL,
  `nbr_jour` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conge`
--
ALTER TABLE `conge`
  ADD PRIMARY KEY (`id_cng`);

--
-- Indexes for table `diplome`
--
ALTER TABLE `diplome`
  ADD PRIMARY KEY (`id_d`);

--
-- Indexes for table `enfant`
--
ALTER TABLE `enfant`
  ADD PRIMARY KEY (`id_e`);

--
-- Indexes for table `fonctionnaire`
--
ALTER TABLE `fonctionnaire`
  ADD PRIMARY KEY (`id_f`);

--
-- Indexes for table `formation`
--
ALTER TABLE `formation`
  ADD PRIMARY KEY (`id_f`);

--
-- Indexes for table `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id_p`);

--
-- Indexes for table `type_conge`
--
ALTER TABLE `type_conge`
  ADD PRIMARY KEY (`id_tc`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conge`
--
ALTER TABLE `conge`
  MODIFY `id_cng` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `diplome`
--
ALTER TABLE `diplome`
  MODIFY `id_d` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enfant`
--
ALTER TABLE `enfant`
  MODIFY `id_e` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fonctionnaire`
--
ALTER TABLE `fonctionnaire`
  MODIFY `id_f` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `formation`
--
ALTER TABLE `formation`
  MODIFY `id_f` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partner`
--
ALTER TABLE `partner`
  MODIFY `id_p` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `type_conge`
--
ALTER TABLE `type_conge`
  MODIFY `id_tc` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
