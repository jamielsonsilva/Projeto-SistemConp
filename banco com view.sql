-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 20-Jun-2018 às 22:20
-- Versão do servidor: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistemconp`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `areacomum`
--

CREATE TABLE `areacomum` (
  `area_Cod` int(11) NOT NULL,
  `area_Desc` varchar(200) NOT NULL,
  `area_Situacao` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `areacomum`
--

INSERT INTO `areacomum` (`area_Cod`, `area_Desc`, `area_Situacao`) VALUES
(1, 'Piscina', NULL),
(2, 'Salão de festa', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `assembleiaonline`
--

CREATE TABLE `assembleiaonline` (
  `assembleia_Dt_Inicio` date DEFAULT NULL,
  `assembleia_Dt_Final` date DEFAULT NULL,
  `assembleia_Cod` int(11) NOT NULL,
  `assembeia_Conteudo` varchar(30) DEFAULT NULL,
  `assembleia_Status` tinyint(1) DEFAULT NULL,
  `assembleia_Num_Partic` int(11) DEFAULT NULL,
  `assembleia_Conclusao` varchar(30) DEFAULT NULL,
  `assembleia_Tipo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `circular`
--

CREATE TABLE `circular` (
  `circular_Cod` int(11) NOT NULL,
  `circular_Assunto` varchar(250) NOT NULL,
  `circular_Data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimo`
--

CREATE TABLE `emprestimo` (
  `emprestimo_Cod` int(11) NOT NULL,
  `emprestimo_Data` date DEFAULT NULL,
  `emprestimo_Data_Devolucao` date DEFAULT NULL,
  `emprestimo_Item` varchar(30) NOT NULL,
  `morador_Cod` int(11) DEFAULT NULL,
  `imovel_Cod` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `encomenda`
--

CREATE TABLE `encomenda` (
  `encomenda_Cod` int(11) NOT NULL,
  `encomenda_Data_Chegada` date DEFAULT NULL,
  `encomenda_Data_Retirada` date DEFAULT NULL,
  `morador_Cod` int(11) DEFAULT NULL,
  `imovel_Cod` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `encomenda`
--

INSERT INTO `encomenda` (`encomenda_Cod`, `encomenda_Data_Chegada`, `encomenda_Data_Retirada`, `morador_Cod`, `imovel_Cod`) VALUES
(1, '2018-06-20', '2018-06-20', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `eventoperiodico`
--

CREATE TABLE `eventoperiodico` (
  `evento_Cod` int(11) NOT NULL,
  `evento_Desc` varchar(30) NOT NULL,
  `evento_Data` date DEFAULT NULL,
  `evento_Hora` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `imovel`
--

CREATE TABLE `imovel` (
  `imovel_Cod` int(11) NOT NULL,
  `imovel_Descr` varchar(100) DEFAULT NULL,
  `imovel_Endereço` varchar(250) DEFAULT NULL,
  `imovel_Situacao` varchar(30) DEFAULT NULL,
  `imovel_Valor` float DEFAULT NULL,
  `imovel_Banheiro` int(11) DEFAULT NULL,
  `imovel_Quarto` int(11) DEFAULT NULL,
  `imovel_Sala` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `imovel`
--

INSERT INTO `imovel` (`imovel_Cod`, `imovel_Descr`, `imovel_Endereço`, `imovel_Situacao`, `imovel_Valor`, `imovel_Banheiro`, `imovel_Quarto`, `imovel_Sala`) VALUES
(1, 'Apartamento 3 quartos', 'Rua das flores 2540', NULL, 300, 2, 3, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `informativo`
--

CREATE TABLE `informativo` (
  `informat_Cod` int(11) NOT NULL,
  `informat_Data` date DEFAULT NULL,
  `Informat_Tipo` varchar(30) DEFAULT NULL,
  `informat_Descric` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `morador`
--

CREATE TABLE `morador` (
  `morador_Cod` int(11) NOT NULL,
  `morador_Nome` varchar(200) NOT NULL,
  `morador_Dt_Nascimento` date DEFAULT NULL,
  `morador_Email` varchar(100) DEFAULT NULL,
  `morador_Telefone` varchar(20) DEFAULT NULL,
  `morador_Situacao` varchar(20) DEFAULT NULL,
  `morador_Dt_Cadastro` date DEFAULT NULL,
  `morador_Login` varchar(30) DEFAULT NULL,
  `morador_Senha` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `morador`
--

INSERT INTO `morador` (`morador_Cod`, `morador_Nome`, `morador_Dt_Nascimento`, `morador_Email`, `morador_Telefone`, `morador_Situacao`, `morador_Dt_Cadastro`, `morador_Login`, `morador_Senha`) VALUES
(1, 'Jamielson Santos', '1985-04-15', 'jamielson@gmail.com', '(92) 9155-1020', NULL, '2018-05-13', 'jamil', '123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `multa`
--

CREATE TABLE `multa` (
  `multa_Cod` int(11) NOT NULL,
  `multa_Valor` float DEFAULT NULL,
  `multa_Data_Venc` date DEFAULT NULL,
  `multa_Valor_Pago` float DEFAULT NULL,
  `multa_Juros` float DEFAULT NULL,
  `morador_Cod` int(11) DEFAULT NULL,
  `imovel_Cod` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `multa`
--

INSERT INTO `multa` (`multa_Cod`, `multa_Valor`, `multa_Data_Venc`, `multa_Valor_Pago`, `multa_Juros`, `morador_Cod`, `imovel_Cod`) VALUES
(1, 100, '2018-06-20', NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ocorrencia`
--

CREATE TABLE `ocorrencia` (
  `ocorrencia_Cod` int(11) NOT NULL,
  `ocorrencia_Desc` varchar(200) NOT NULL,
  `ocorrencia_Data` date DEFAULT NULL,
  `ocorrencia_Local` varchar(50) DEFAULT NULL,
  `morador_Cod` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reservaareacomum`
--

CREATE TABLE `reservaareacomum` (
  `reserva_Cod` int(11) NOT NULL,
  `reserva_Data_Inicial` date DEFAULT NULL,
  `reserva_Data_Final` date DEFAULT NULL,
  `area_Cod` int(11) DEFAULT NULL,
  `morador_Cod` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `reservaareacomum`
--

INSERT INTO `reservaareacomum` (`reserva_Cod`, `reserva_Data_Inicial`, `reserva_Data_Final`, `area_Cod`, `morador_Cod`) VALUES
(1, '2018-06-19', '2018-06-19', 1, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewmoradormulta`
-- (See below for the actual view)
--
CREATE TABLE `viewmoradormulta` (
`morador_Nome` varchar(200)
,`multa_Valor` float
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewreservamorador`
-- (See below for the actual view)
--
CREATE TABLE `viewreservamorador` (
`Nome` varchar(200)
,`descricao` varchar(200)
,`DATA` date
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `visita`
--

CREATE TABLE `visita` (
  `visita_Cod` int(11) NOT NULL,
  `visita_Nome` varchar(200) NOT NULL,
  `visita_Data` date DEFAULT NULL,
  `visita_Hora` time DEFAULT NULL,
  `morador_Cod` int(11) DEFAULT NULL,
  `imovel_Cod` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure for view `viewmoradormulta`
--
DROP TABLE IF EXISTS `viewmoradormulta`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewmoradormulta`  AS  select `morador`.`morador_Nome` AS `morador_Nome`,`multa`.`multa_Valor` AS `multa_Valor` from (`morador` join `multa` on((`morador`.`morador_Cod` = `multa`.`morador_Cod`))) where (`morador`.`morador_Nome` = 'Jamielson Santos') ;

-- --------------------------------------------------------

--
-- Structure for view `viewreservamorador`
--
DROP TABLE IF EXISTS `viewreservamorador`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewreservamorador`  AS  select `m`.`morador_Nome` AS `Nome`,`ac`.`area_Desc` AS `descricao`,`rc`.`reserva_Data_Inicial` AS `DATA` from ((`morador` `m` join `reservaareacomum` `rc`) join `areacomum` `ac`) where ((`m`.`morador_Cod` = `rc`.`morador_Cod`) and (`m`.`morador_Nome` = 'Jamielson Santos') and (`rc`.`area_Cod` = `ac`.`area_Cod`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `areacomum`
--
ALTER TABLE `areacomum`
  ADD PRIMARY KEY (`area_Cod`);

--
-- Indexes for table `assembleiaonline`
--
ALTER TABLE `assembleiaonline`
  ADD PRIMARY KEY (`assembleia_Cod`);

--
-- Indexes for table `circular`
--
ALTER TABLE `circular`
  ADD PRIMARY KEY (`circular_Cod`);

--
-- Indexes for table `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD PRIMARY KEY (`emprestimo_Cod`),
  ADD KEY `morador_Cod` (`morador_Cod`),
  ADD KEY `imovel_Cod` (`imovel_Cod`);

--
-- Indexes for table `encomenda`
--
ALTER TABLE `encomenda`
  ADD PRIMARY KEY (`encomenda_Cod`),
  ADD KEY `morador_Cod` (`morador_Cod`),
  ADD KEY `imovel_Cod` (`imovel_Cod`);

--
-- Indexes for table `eventoperiodico`
--
ALTER TABLE `eventoperiodico`
  ADD PRIMARY KEY (`evento_Cod`);

--
-- Indexes for table `imovel`
--
ALTER TABLE `imovel`
  ADD PRIMARY KEY (`imovel_Cod`);

--
-- Indexes for table `informativo`
--
ALTER TABLE `informativo`
  ADD PRIMARY KEY (`informat_Cod`);

--
-- Indexes for table `morador`
--
ALTER TABLE `morador`
  ADD PRIMARY KEY (`morador_Cod`);

--
-- Indexes for table `multa`
--
ALTER TABLE `multa`
  ADD PRIMARY KEY (`multa_Cod`),
  ADD KEY `morador_Cod` (`morador_Cod`),
  ADD KEY `imovel_Cod` (`imovel_Cod`);

--
-- Indexes for table `ocorrencia`
--
ALTER TABLE `ocorrencia`
  ADD PRIMARY KEY (`ocorrencia_Cod`),
  ADD KEY `morador_Cod` (`morador_Cod`);

--
-- Indexes for table `reservaareacomum`
--
ALTER TABLE `reservaareacomum`
  ADD PRIMARY KEY (`reserva_Cod`),
  ADD KEY `area_Cod` (`area_Cod`),
  ADD KEY `morador_Cod` (`morador_Cod`);

--
-- Indexes for table `visita`
--
ALTER TABLE `visita`
  ADD PRIMARY KEY (`visita_Cod`),
  ADD KEY `morador_Cod` (`morador_Cod`),
  ADD KEY `imovel_Cod` (`imovel_Cod`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `areacomum`
--
ALTER TABLE `areacomum`
  MODIFY `area_Cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `assembleiaonline`
--
ALTER TABLE `assembleiaonline`
  MODIFY `assembleia_Cod` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `circular`
--
ALTER TABLE `circular`
  MODIFY `circular_Cod` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emprestimo`
--
ALTER TABLE `emprestimo`
  MODIFY `emprestimo_Cod` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `encomenda`
--
ALTER TABLE `encomenda`
  MODIFY `encomenda_Cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `eventoperiodico`
--
ALTER TABLE `eventoperiodico`
  MODIFY `evento_Cod` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `imovel`
--
ALTER TABLE `imovel`
  MODIFY `imovel_Cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `informativo`
--
ALTER TABLE `informativo`
  MODIFY `informat_Cod` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `morador`
--
ALTER TABLE `morador`
  MODIFY `morador_Cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `multa`
--
ALTER TABLE `multa`
  MODIFY `multa_Cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ocorrencia`
--
ALTER TABLE `ocorrencia`
  MODIFY `ocorrencia_Cod` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reservaareacomum`
--
ALTER TABLE `reservaareacomum`
  MODIFY `reserva_Cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `visita`
--
ALTER TABLE `visita`
  MODIFY `visita_Cod` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD CONSTRAINT `emprestimo_ibfk_1` FOREIGN KEY (`morador_Cod`) REFERENCES `morador` (`morador_Cod`),
  ADD CONSTRAINT `emprestimo_ibfk_2` FOREIGN KEY (`imovel_Cod`) REFERENCES `imovel` (`imovel_Cod`);

--
-- Limitadores para a tabela `encomenda`
--
ALTER TABLE `encomenda`
  ADD CONSTRAINT `encomenda_ibfk_1` FOREIGN KEY (`morador_Cod`) REFERENCES `morador` (`morador_Cod`),
  ADD CONSTRAINT `encomenda_ibfk_2` FOREIGN KEY (`imovel_Cod`) REFERENCES `imovel` (`imovel_Cod`);

--
-- Limitadores para a tabela `multa`
--
ALTER TABLE `multa`
  ADD CONSTRAINT `multa_ibfk_1` FOREIGN KEY (`morador_Cod`) REFERENCES `morador` (`morador_Cod`),
  ADD CONSTRAINT `multa_ibfk_2` FOREIGN KEY (`imovel_Cod`) REFERENCES `imovel` (`imovel_Cod`);

--
-- Limitadores para a tabela `ocorrencia`
--
ALTER TABLE `ocorrencia`
  ADD CONSTRAINT `ocorrencia_ibfk_1` FOREIGN KEY (`morador_Cod`) REFERENCES `morador` (`morador_Cod`);

--
-- Limitadores para a tabela `reservaareacomum`
--
ALTER TABLE `reservaareacomum`
  ADD CONSTRAINT `reservaareacomum_ibfk_1` FOREIGN KEY (`area_Cod`) REFERENCES `areacomum` (`area_Cod`),
  ADD CONSTRAINT `reservaareacomum_ibfk_2` FOREIGN KEY (`morador_Cod`) REFERENCES `morador` (`morador_Cod`);

--
-- Limitadores para a tabela `visita`
--
ALTER TABLE `visita`
  ADD CONSTRAINT `visita_ibfk_1` FOREIGN KEY (`morador_Cod`) REFERENCES `morador` (`morador_Cod`),
  ADD CONSTRAINT `visita_ibfk_2` FOREIGN KEY (`imovel_Cod`) REFERENCES `imovel` (`imovel_Cod`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
