-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19/04/2024 às 13:48
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `pobreza`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `artigo`
--

CREATE TABLE `artigo` (
  `artigoid` int(11) NOT NULL,
  `titulo` varchar(60) NOT NULL,
  `subtitulo` varchar(100) DEFAULT NULL,
  `imgprincipal` blob NOT NULL,
  `texto` longtext NOT NULL,
  `autor` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `dados`
--

CREATE TABLE `dados` (
  `dadosid` int(11) NOT NULL,
  `titulo` varchar(60) DEFAULT NULL,
  `img` blob DEFAULT NULL,
  `legenda` text DEFAULT NULL,
  `artigoid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `documentos`
--

CREATE TABLE `documentos` (
  `docid` int(11) NOT NULL,
  `titulo` varchar(60) NOT NULL,
  `imgarquivo` blob DEFAULT NULL,
  `legenda` text NOT NULL,
  `artigoid` int(11) NOT NULL,
  `paginasid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `paginas`
--

CREATE TABLE `paginas` (
  `paginasid` int(11) NOT NULL,
  `titulo` varchar(60) DEFAULT NULL,
  `endereco` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `artigo`
--
ALTER TABLE `artigo`
  ADD PRIMARY KEY (`artigoid`);

--
-- Índices de tabela `dados`
--
ALTER TABLE `dados`
  ADD PRIMARY KEY (`dadosid`),
  ADD KEY `artigoid_idx` (`artigoid`);

--
-- Índices de tabela `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`docid`),
  ADD KEY `PaginaID` (`paginasid`);

--
-- Índices de tabela `paginas`
--
ALTER TABLE `paginas`
  ADD PRIMARY KEY (`paginasid`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `dados`
--
ALTER TABLE `dados`
  ADD CONSTRAINT `artigoid` FOREIGN KEY (`artigoid`) REFERENCES `artigo` (`artigoid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `documentos`
--
ALTER TABLE `documentos`
  ADD CONSTRAINT `PaginaID` FOREIGN KEY (`paginasid`) REFERENCES `paginas` (`paginasid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
