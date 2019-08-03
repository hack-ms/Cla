-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 03-Ago-2019 às 20:14
-- Versão do servidor: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `escola_em_dia`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `id` int(11) NOT NULL,
  `id_escola` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `serie` varchar(20) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidade`
--

CREATE TABLE `cidade` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `direcao`
--

CREATE TABLE `direcao` (
  `id` int(11) NOT NULL,
  `id_escola_d` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `escola`
--

CREATE TABLE `escola` (
  `id` int(11) NOT NULL,
  `id_cidade` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `bairro` varchar(20) NOT NULL,
  `rua` varchar(50) NOT NULL,
  `cep` int(11) NOT NULL,
  `telefone` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diretor` varchar(50) NOT NULL,
  `adjunto` varchar(50) DEFAULT NULL,
  `nota` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reclamacao`
--

CREATE TABLE `reclamacao` (
  `id` int(11) NOT NULL,
  `id_escola_r` int(11) NOT NULL,
  `id_aluno` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `assunto` varchar(50) NOT NULL,
  `corpo` varchar(700) NOT NULL,
  `data` date DEFAULT NULL,
  `avaliacao` int(11) DEFAULT NULL,
  `andamento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `replica`
--

CREATE TABLE `replica` (
  `id` int(11) NOT NULL,
  `id_reclamacao` int(11) NOT NULL,
  `corpo` varchar(700) NOT NULL,
  `assinatura` varchar(50) NOT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `series`
--

CREATE TABLE `series` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `series`
--

INSERT INTO `series` (`id`, `nome`) VALUES
(1, '1&#176; ano fundamental'),
(2, '2&#176; ano fundamental'),
(3, '3&#176; ano fundamental'),
(4, '4&#176; ano fundamental'),
(5, '5&#176; ano fundamental'),
(6, '6&#176; ano fundamental'),
(7, '7&#176; ano fundamental'),
(8, '8&#176; ano fundamental'),
(9, '9&#176; ano fundamental'),
(10, '1&#176; ano medio'),
(11, '2&#176; ano medio'),
(12, '3&#176; ano medio');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turno`
--

CREATE TABLE `turno` (
  `id` int(11) NOT NULL,
  `nome` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `turno`
--

INSERT INTO `turno` (`id`, `nome`) VALUES
(1, 'Matutino'),
(2, 'Vespertino'),
(3, 'Noturno'),
(4, 'Integral');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `direcao`
--
ALTER TABLE `direcao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `escola`
--
ALTER TABLE `escola`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reclamacao`
--
ALTER TABLE `reclamacao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replica`
--
ALTER TABLE `replica`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cidade`
--
ALTER TABLE `cidade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `direcao`
--
ALTER TABLE `direcao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `escola`
--
ALTER TABLE `escola`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reclamacao`
--
ALTER TABLE `reclamacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `replica`
--
ALTER TABLE `replica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `series`
--
ALTER TABLE `series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `turno`
--
ALTER TABLE `turno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
