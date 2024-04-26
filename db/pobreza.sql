-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26/04/2024 às 13:21
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

--
-- Despejando dados para a tabela `artigo`
--

INSERT INTO `artigo` (`artigoid`, `titulo`, `subtitulo`, `imgprincipal`, `texto`, `autor`) VALUES
(1, 'O que é pobreza menstrual: ', 'Pobreza menstrual é caracterizada pela UNICEFF como:', '', 'A falta de infraestrutura, recursos e até conhecimento por parte de pessoas que menstruam para cuidados envolvendo a própria menstruação, afetando pessoas que vivem condições de pobreza e situação de vulnerabilidade.', 'FRANÇA; RAYANNE.  2022'),
(2, 'O que a lei diz:', '', '', 'O art. 12 da Lei de Execução Penal (1984) afirma que todo o cidadão em situação de cárcere deve ter acesso à saúde e higiene, mas o Estado se abstém da responsabilidade, que acaba sendo tomada pela família. \r\n O código de aplicação penal da Constituição delega (art. 38. 1984) que todos os direitos do preso recluso de sua liberdade devem ser mantidos durante o cumprimento da pena, ainda impondo a todas as autoridades o respeito à sua integridade física e moral. Ainda, conforme o Art.5 da Constituição, em seu inciso XLIX - é do Estado o dever de cuidar da manutenção dos presídios, sobretudo conferir condições que não ferem a dignidade da pessoa humana. No entanto, as instituições prisionais foram historicamente construídas majoritariamente pelas necessidades masculinas.', ''),
(3, 'Regras de Bangkok:', 'Documento produzido pela Organização das Nações Unidas', '', 'Desde 2010, foi adotado o documento chamado de “Regras de Bangkok”, produzido pela Organização das Nações Unidas, sobre o contexto da pobreza menstrual, o qual prevê que as mulheres tenham acomodações e materiais de higiene específicos e o mesmo acesso à saúde que teriam se estivessem em posse de sua liberdade. Contrariando isso, os sistemas prisionais femininos continuam sendo sinônimo de superlotação, insalubridade e direitos violados atualmente.\r\n Levando em consideração os princípios básicos das Regras de Bangkok (2016), onde são determinadas regras de ingresso, registro, alocação, higiene pessoal, cuidados à saúde, atendimento médico específico, cuidados com a saúde mental, prevenção de doenças sexualmente transmissíveis, revistas, instrumentos de contenções, capacitação adequada de funcionários, priorização do contato com o mundo exterior, individualização da pena, flexibilização do regime prisional, foco das relações sociais e assistência posterior ao encarceramento, cuidados especiais com gestantes e lactantes, estrangeiras, minorias e povos indígenas e deficientes, é necessário o olhar específico para com as diferentes necessidades das mulheres encarceradas. Uma dessas necessidades tão importantes é a preocupação com a pobreza menstrual, ligada intrinsicamente com higiene e saúde da mulher.', ''),
(4, 'A realidade das mulheres encarceradas', '', '', 'Nesse contexto, por serem minoria, as necessidades específicas das mulheres passam despercebidas, recebendo um tratamento e necessidades semelhantes ao que os homens recebem nas prisões brasileiras, sabe-se que diversas prioridades e necessidades de mulheres e homens são diferentes. Essas informações se reflete e relaciona com o livro “Presos que Menstruam” que mostra e revela o sofrimento das mulheres, tendo que cumprir sua pena improvisando maneiras de lidar com a menstruação, entre outras pautas como o nascimento de seus filhos ou até mesmo a gestação dentro deste sistema, relatam que não colocam absorventes e papéis higiênicos suficientes, pois os homens usam o papel apenas uma vez, enquanto as mulheres tem que utilizar duas vezes, além das mulheres grávidas e de consequentemente a dignidade desse outro ser, que é violada desde o útero. Assim, enfatizando como é pensado e arquitetado somente para homens conviverem nesse espaço.', 'QUEIROZ, NANA. 2015'),
(5, 'Relatos:', '', '', 'Nesse contexto, por serem minoria, as necessidades específicas das mulheres passam despercebidas, recebendo um tratamento e necessidades semelhantes ao que os homens recebem nas prisões brasileiras, sabe-se que diversas prioridades e necessidades de mulheres e homens são diferentes. Essas informações se reflete e relaciona com o livro “Presos que Menstruam” que mostra e revela o sofrimento das mulheres, tendo que cumprir sua pena improvisando maneiras de lidar com a menstruação, entre outras pautas como o nascimento de seus filhos ou até mesmo a gestação dentro deste sistema, relatam que não colocam absorventes e papéis higiênicos suficientes, pois os homens usam o papel apenas uma vez, enquanto as mulheres tem que utilizar duas vezes, além das mulheres grávidas e de consequentemente a dignidade desse outro ser, que é violada desde o útero. Assim, enfatizando como é pensado e arquitetado somente para homens conviverem nesse espaço.', 'QUEIROZ, NANA. 2015');

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
