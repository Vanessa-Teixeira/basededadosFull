-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Out-2020 às 20:59
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fullstackeletro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `idpedidos` int(11) NOT NULL,
  `Nome_cli` varchar(45) NOT NULL,
  `endereço_cli` varchar(100) NOT NULL,
  `telefone` varchar(14) DEFAULT NULL,
  `nome_produto` varchar(45) NOT NULL,
  `valor_unitário` decimal(8,2) NOT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `valor total` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`idpedidos`, `Nome_cli`, `endereço_cli`, `telefone`, `nome_produto`, `valor_unitário`, `quantidade`, `valor total`) VALUES
(1, 'Vanessa Teixeira', 'Rua Canoana 55 Pq Esmeralda Campo Limpo - SP', '(11)3333-4343', 'geladeira', '1500.00', 1, '1500.00'),
(2, 'Adriana Ribeiro', 'Av Naçoes 299- RJ', '(21)90909-0000', 'fogao', '400.00', 1, '400.00'),
(3, 'Marcos Silva', 'Rua Padre Jose Antonio Romano- 99-  SP', '(11)5434-8909', 'microodas', '750.00', 1, '700.00'),
(4, 'Pedro Lima', 'AV Maria Jose-1000-SP', '(11)99545-4544', 'geladeira', '1000.00', 1, '1000.00'),
(5, 'Mario Trindae', 'Av Copacabana -21- RJ', '(21)7876-7676', 'lava-roupa', '1500.00', 1, '1500.00'),
(6, 'Maria Rafaela', 'Estrada do Campo Limpo 787 -SP', '(11)97897-9090', 'microodas', '750.00', 1, '750.00'),
(7, 'José Maria', 'Rua Quipá - 788 - SP', '(11)99890-0000', 'geladeira', '800.00', 1, '800.00'),
(8, 'Maria Cristina', 'Rua Cristo Redentor 1000 -SP', '(21)99898-9898', 'microodas', '700.00', 2, '1400.00'),
(9, 'Guilherme Vieira', 'Rua Amapa Ribeiro 2 SP', '(11)7867-9089', 'Fogão', '500.00', 1, '500.00'),
(10, 'Amanda Lima', 'Av dos Governadores 78 SP', '(21)5898-9090', 'lava-louça', '1000.00', 1, '1000.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `idprodutos` int(11) NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `descriçao` varchar(150) NOT NULL,
  `preço` decimal(8,2) NOT NULL,
  `preçofinal` decimal(8,2) NOT NULL,
  `imagem` varchar(45) DEFAULT NULL,
  `data_inclusao` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`idprodutos`, `categoria`, `descriçao`, `preço`, `preçofinal`, `imagem`, `data_inclusao`) VALUES
(1, 'geladeira', 'Geladeira Inox 2 portas - 110/220w', '4000.00', '2000.00', 'imagens/geladeira4.jpg', '0000-00-00 00:00:00'),
(2, 'geladeira', 'Geladeira Branca de 500 litros, 2 portas.', '6000.00', '3000.00', 'imagens/geladeira1.jpg', '0000-00-00 00:00:00'),
(3, 'geladeira', 'Geladeira Inox 2 portas / Linha Inox Eletrolux', '2000.00', '15000.00', 'imagens/geladeira.jpg', '0000-00-00 00:00:00'),
(4, 'fogão', 'Fogão 4 bocas com forno elétrico - automático', '400.00', '300.00', 'imagens/folgao.jpg', '2020-10-02 12:00:50'),
(5, 'fogao', 'Fogão 6 bocas - Forno elétrico - 110/220', '600.00', '500.00', 'imagens/fogao6.jpg', '2020-10-02 12:00:50'),
(6, 'fogao', 'Fogão elétrico - 2 bocas automático', '700.00', '600.00', 'imagens/fogao2.jpg', '2020-10-02 12:00:50'),
(7, 'microodas', 'Microodas Philco - 18 litros - Inox.', '900.00', '750.00', 'imagens/microo.jpg', '2020-10-02 12:00:50'),
(8, 'microodas', 'Microodas preto - 10 litros- 110/220w', '400.00', '350.00', 'imagens/microondas.jpg', '2020-10-02 12:00:50'),
(9, 'microodas', 'Microondas Branco - 8 litros 110 w', '2000.00', '1500.00', 'imagens/microondas2.jpg', '2020-11-05 13:00:00'),
(10, 'lava-louça', 'Lava- louça 50 litros - linha branca', '1500.00', '1000.00', 'imagens/lava.jpg', '2020-11-05 13:00:00'),
(11, 'lava-roupas', 'Máquina de lavar roupa 10 litros - Linhas branca', '1500.00', '1399.00', 'imagens/maquina.jpg', '2020-11-05 13:00:00'),
(12, 'lava-roupas', 'Máquina de Lavar - linha branca - 18 litros', '2000.00', '1500.00', 'imagens/maquina2.jpg', '2020-11-05 13:00:00');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`idpedidos`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idprodutos`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `idpedidos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idprodutos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
