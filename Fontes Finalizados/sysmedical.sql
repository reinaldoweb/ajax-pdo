-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Fev-2020 às 01:05
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sysmedical`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `especializacoes`
--

CREATE TABLE `especializacoes` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `especializacoes`
--

INSERT INTO `especializacoes` (`id`, `nome`) VALUES
(1, 'Pediatra'),
(3, 'Ortopedista'),
(4, 'Clínico Geral'),
(5, 'Cirúrgião');

-- --------------------------------------------------------

--
-- Estrutura da tabela `medicos`
--

CREATE TABLE `medicos` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `especialidade` int(11) NOT NULL,
  `crm` varchar(20) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `turno` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `medicos`
--

INSERT INTO `medicos` (`id`, `nome`, `especialidade`, `crm`, `cpf`, `telefone`, `email`, `turno`) VALUES
(1, 'Marcela', 1, '0000000', '000.000.000-00', '(00) 00000-0000', 'marcela@hotmail.com', ''),
(2, 'fdsfs', 1, '000', '111.111.111-11', '(11) 11111-1111', '', ''),
(3, 'Matheus', 1, '00000', '222.222.222-22', '(22) 22222-2222', 'mateus@hotmail.com', ''),
(4, 'Marcos', 5, '00611', '333.333.333-33', '(33) 33333-3333', 'marcos@hotmail.com', ''),
(19, 'FSFSDF', 1, 'FFSDF', '001.545.154-54', '(00) 00000-0000', '', ''),
(20, 'Paulo Santos', 1, '55555', '555.555.555-55', '(22) 22222-2222', '', 'Manhã'),
(29, 'Barbara', 1, '1645', '656.623.200-06', '(56) 56565-6565', 'barbara@hotmail.com', 'Noite'),
(33, 'Fátima Santos', 4, '645554', '022.220.000-00', '(00) 00000-0000', '', 'Noite'),
(34, 'Maria Paula', 3, '0005', '222.222.222-20', '(35) 66666-6666', 'maria@hotmail.com', 'Tarde'),
(35, 'Carla Silva', 1, '05512', '055.556.545-45', '(54) 54545-4545', 'carla@hotmail.com', 'Manhã');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `usuario` varchar(40) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `senha_original` varchar(25) NOT NULL,
  `nivel` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `usuario`, `senha`, `senha_original`, `nivel`) VALUES
(11, 'Hugo Vasconcelos', 'contato@hugocursos.com.br', '202cb962ac59075b964b07152d234b70', '123', 'admin'),
(14, 'Marcela', 'marcela@hotmail.com', '202cb962ac59075b964b07152d234b70', '123', 'admin'),
(16, 'Carlos', 'carlos@hotmail.com', '202cb962ac59075b964b07152d234b70', '123', 'admin'),
(17, 'Paloma', 'paloma@hotmail.com', '202cb962ac59075b964b07152d234b70', '123', 'admin'),
(18, 'Matheus', 'mateus@hotmail.com', '202cb962ac59075b964b07152d234b70', '123', 'admin'),
(20, 'fsdfdsf', 'admin@hotmail.com', 'e4de7f5478bfe421dbc42bc12f676c91', 'fdsfdf', 'admin'),
(21, 'fsdfsdf', 'admindf@hotmail.com', '35a322a37e6fb34b2aaea6f4ed30aa7f', 'fdsf', 'admin'),
(22, 'Patricia', 'patricia@hotmail.com', '202cb962ac59075b964b07152d234b70', '123', 'admin');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `especializacoes`
--
ALTER TABLE `especializacoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `medicos`
--
ALTER TABLE `medicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `especializacoes`
--
ALTER TABLE `especializacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `medicos`
--
ALTER TABLE `medicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
