-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28-Jun-2019 às 13:35
-- Versão do servidor: 10.3.15-MariaDB
-- versão do PHP: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `alocar_vagas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alocacoes`
--

CREATE TABLE `alocacoes` (
  `codigo` int(11) NOT NULL,
  `titulo` varchar(350) NOT NULL,
  `descricao` varchar(10000) NOT NULL,
  `localizacao` varchar(200) NOT NULL,
  `horas_boolean` varchar(8) NOT NULL,
  `data` date NOT NULL,
  `empresa` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `alocacoes`
--

INSERT INTO `alocacoes` (`codigo`, `titulo`, `descricao`, `localizacao`, `horas_boolean`, `data`, `empresa`) VALUES
(1, 'vagas de estagio', 'intuito em aprender o a empresa fornecer, baixa aprendizagem em banco mysql, linux e logica em algoritmos', 'rio verde go', 'false', '2019-06-28', 'unimed'),
(2, 'Procurando por engenheiros eletricos e mecanicos ou mecatronicos', 'especializacao em area comercial em robos e ou eletricidade, mecanica', 'goiania go', 'true', '2019-06-28', 'comigo'),
(3, 'Programador senior', 'procura-se programador senior em php e conhecimento em banco de dados diversos', 'sao paulo sp', 'true', '2019-06-28', 'Easy System'),
(4, 'estagio remunerado', 'procura-se estagiario para aprendizado em nodejs, bancos diversos e aprendizagem de ferramentas de reconhecimento de fala', 'santa catarina sc', 'false', '2019-06-28', 'UBISTART');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alocacoes`
--
ALTER TABLE `alocacoes`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alocacoes`
--
ALTER TABLE `alocacoes`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
