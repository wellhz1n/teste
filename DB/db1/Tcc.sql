-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 25/05/2019 às 02:14
-- Versão do servidor: 10.1.40-MariaDB
-- Versão do PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `Tcc`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `configuracoes`
--

CREATE TABLE `configuracoes` (
  `id` int(11) NOT NULL,
  `chave` varchar(255) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `ativo` int(11) DEFAULT NULL,
  `cor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `configuracoes`
--

INSERT INTO `configuracoes` (`id`, `chave`, `idusuario`, `ativo`, `cor`) VALUES
(1, 'MUDARCORSITE', 53, 1, '#3600c5'),
(2, 'MUDARCORSITE', 68, 1, '#022311'),
(3, 'DESABILITACONTATO', 53, 1, NULL),
(4, 'DESABILITACONTATO', 68, 1, NULL),
(5, 'DESABILITACONTATO', 73, 0, NULL),
(6, 'DESABILITACONTATO', 70, 1, NULL),
(7, 'DESABILITACONTATO', 114, 0, NULL),
(8, 'MUDARCORSITE', 70, 1, '#bc00dc');

-- --------------------------------------------------------

--
-- Estrutura para tabela `contato`
--

CREATE TABLE `contato` (
  `id` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Assunto` varchar(255) NOT NULL,
  `data_envio` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `contato`
--

INSERT INTO `contato` (`id`, `Nome`, `Email`, `Assunto`, `data_envio`) VALUES
(26, 'teste', 'wellingtom.h@hotmail.com', 'mdspkamd', '2019-05-24 10:36:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`id`, `nome`, `descricao`, `img`, `valor`) VALUES
(17, 'Corpo Humano', 'Unico no estoque', '7a788c4124db4d124101d319ad11d871.png', 400000000),
(20, 'teste maior', 'haahh', '92a4407985ea3bb4674bc3f775266736.png', 222),
(21, 'html', 'html', '7ba48cb9115c44c8559e2285bb2b9a56.png', 20220),
(22, 'Exel', 'exel', '2f7886405515a124841f1e93a821ce87.png', 20),
(23, 'PowerPoint', 'vai que da bom', '5207bb17819e8b0a0d2fa3c9732c33d0.png', 1200),
(24, 'Google Chrome', 'Pesquisa ae ', '54b5d7a365616d4ad9066bba888b44d1.png', 200),
(25, 'a', 'a', '1523c80a8ecf53e7636b1610432defcd.png', 22);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_user` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `nivel_autoridade` tinyint(1) NOT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`id_user`, `nome`, `senha`, `nivel_autoridade`, `img`) VALUES
(53, 'admin     ', '21232f297a57a5a743894a0e4a801fc3', 0, 'aa273854d3689739a7e4752ef35caaa9.jpg'),
(54, 'wellington ', 'dcbacadf485c141a2b9b0028f2c0b2e1', 1, '3ea7291451201e07cdb7375519a66da2.gif'),
(68, 'root', '63a9f0ea7bb98050796b649e85481845', 0, '7cbad886a41c17a2de4e60e220401219.gif'),
(70, 'Igor    ', 'dd97813dd40be87559aaefed642c3fbb', 0, '0e2914e9491d77ea5a27264f87067fb7.jpeg'),
(73, 'marquinhos', '202cb962ac59075b964b07152d234b70', 0, 'd0ce7660ac458876cce114a5d600f8cc.jpg'),
(106, 'mateus', '202cb962ac59075b964b07152d234b70', 1, '8ed58504699cc98cb5f0d8658e7306b1.jpg'),
(107, 'Pipoca, a Minhoca', '202cb962ac59075b964b07152d234b70', 1, '19d41349b40984e084730725a76479ad.jpeg'),
(112, 'novo', 'e10adc3949ba59abbe56e057f20f883e', 1, NULL),
(114, 'julia', 'e10adc3949ba59abbe56e057f20f883e', 1, '9cdd1b5b08280b3b7565d3e9fa857f3a.jpg');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `configuracoes`
--
ALTER TABLE `configuracoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_confusu` (`idusuario`);

--
-- Índices de tabela `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `configuracoes`
--
ALTER TABLE `configuracoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `contato`
--
ALTER TABLE `contato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `configuracoes`
--
ALTER TABLE `configuracoes`
  ADD CONSTRAINT `fk_confusu` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
