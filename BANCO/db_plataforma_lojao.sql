-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Out-2021 às 14:59
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_plataforma_lojao`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `caixa`
--

CREATE TABLE `caixa` (
  `id` int(11) NOT NULL,
  `data` timestamp NULL DEFAULT current_timestamp(),
  `total_obra` decimal(10,2) DEFAULT NULL,
  `total_servico` decimal(10,2) DEFAULT NULL,
  `usuarios_id` int(11) NOT NULL,
  `mecanicos_id` int(11) NOT NULL,
  `clientes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `caixa`
--

INSERT INTO `caixa` (`id`, `data`, `total_obra`, `total_servico`, `usuarios_id`, `mecanicos_id`, `clientes_id`) VALUES
(161, '2021-09-18 12:56:10', '20.00', '100.00', 4, 1, 19),
(162, '2021-09-21 20:34:43', '0.00', '0.00', 7, 1, 19),
(163, '2021-09-22 19:12:53', '0.00', '0.00', 7, 8, 19),
(164, '2021-09-23 20:37:28', '0.00', '0.00', 7, 8, 19),
(165, '2021-09-25 12:01:15', '180.00', '0.00', 7, 8, 19),
(166, '2021-09-27 18:48:50', '0.00', '0.00', 7, 8, 19),
(167, '2021-09-27 20:02:26', '0.00', '0.00', 7, 8, 19),
(168, '2021-09-28 14:18:35', '0.00', '0.00', 7, 8, 19),
(169, '2021-09-30 11:41:41', '0.00', '0.00', 7, 8, 19),
(170, '2021-09-30 20:04:55', '0.00', '0.00', 7, 8, 19),
(171, '2021-10-01 17:35:41', '0.00', '0.00', 7, 4, 19),
(172, '2021-10-01 17:38:47', '0.00', '0.00', 7, 4, 21),
(173, '2021-10-01 17:43:27', '0.00', '0.00', 7, 4, 21),
(174, '2021-10-01 17:48:58', '0.00', '0.00', 7, 8, 19),
(175, '2021-10-01 19:14:02', '0.00', '0.00', 7, 11, 22),
(176, '2021-10-01 19:17:08', '0.00', '0.00', 7, 11, 22),
(177, '2021-10-01 19:18:47', '0.00', '0.00', 7, 11, 22),
(178, '2021-10-01 19:28:42', '0.00', '40.00', 7, 6, 23),
(179, '2021-10-01 20:00:53', '0.00', '50.00', 7, 7, 24),
(180, '2021-10-01 20:02:30', '0.00', '50.00', 7, 7, 24),
(181, '2021-10-01 20:26:04', '0.00', '0.00', 7, 8, 19),
(182, '2021-10-02 13:09:18', '0.00', '0.00', 7, 8, 19),
(183, '2021-10-02 14:36:22', '0.00', '0.00', 7, 8, 19),
(184, '2021-10-04 13:23:39', '0.00', '0.00', 7, 8, 19),
(185, '2021-10-04 19:15:20', '0.00', '0.00', 7, 8, 19),
(186, '2021-10-04 20:13:48', '0.00', '0.00', 7, 8, 19),
(187, '2021-10-04 20:29:52', '0.00', '0.00', 4, 8, 19),
(188, '2021-10-06 14:18:10', '0.00', '0.00', 7, 8, 19),
(189, '2021-10-06 14:22:26', '0.00', '0.00', 7, 3, 19),
(190, '2021-10-06 14:28:37', '0.00', '0.00', 7, 3, 19),
(191, '2021-10-06 15:01:03', '54.23', '90.00', 7, 1, 19),
(192, '2021-10-06 20:29:22', '200.00', '0.00', 7, 1, 22),
(193, '2021-10-07 13:12:50', '0.00', '0.00', 7, 9, 19),
(194, '2021-10-07 13:25:03', '0.00', '90.00', 7, 5, 19),
(195, '2021-10-07 13:31:58', '50.00', '0.00', 7, 8, 19),
(196, '2021-10-07 13:42:14', '0.00', '50.00', 7, 5, 19),
(197, '2021-10-07 13:43:23', '0.00', '90.00', 7, 5, 19),
(198, '2021-10-07 13:46:31', '0.00', '90.00', 7, 5, 19),
(199, '2021-10-07 13:48:49', '0.00', '90.00', 7, 5, 19),
(200, '2021-10-07 13:49:43', '0.00', '90.00', 7, 5, 19),
(201, '2021-10-07 13:55:52', '0.00', '90.00', 7, 5, 19),
(202, '2021-10-07 19:32:28', '0.00', '0.00', 7, 8, 19),
(203, '2021-10-07 19:37:37', '0.00', '90.00', 7, 1, 19),
(204, '2021-10-07 19:38:04', '100.00', '90.00', 7, 1, 19),
(205, '2021-10-07 19:38:46', '0.00', '90.00', 7, 1, 19),
(206, '2021-10-07 19:39:12', '100.00', '90.00', 7, 1, 19);

-- --------------------------------------------------------

--
-- Estrutura da tabela `catdespesas`
--

CREATE TABLE `catdespesas` (
  `id` int(11) NOT NULL,
  `nome` varchar(105) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `catdespesas`
--

INSERT INTO `catdespesas` (`id`, `nome`) VALUES
(1, 'Venda de produtos'),
(2, 'Compras'),
(3, 'Mão de Obra'),
(4, 'Serviços'),
(13, 'Caixa'),
(14, 'Pagamentos'),
(15, 'Produtos de Limpeza'),
(16, 'Alimentação'),
(17, 'Café da Manhã'),
(18, 'Peças'),
(19, 'Material de Escritório'),
(20, 'Material de Limpeza'),
(21, 'Combustivél'),
(22, 'Limpeza de Motor'),
(23, 'Alinhamento e balanciamento');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `foto` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`, `foto`) VALUES
(39, 'Filtro cabine ', './imgs/2021-05-19_15_45_24.jpg'),
(41, 'Filtro ar motor', './imgs/2021-05-20_08_53_52.jpg'),
(42, 'PASTILHA DE FREIO', './imgs/5588.png'),
(43, 'Higienizador', './imgs/or.png'),
(44, 'SILICONES', './imgs/DE.png'),
(45, 'Correia dentada', './imgs/2021-05-25_09_09_29.jpg'),
(46, 'CABOS DE VELA', './imgs/CA.jpg'),
(47, 'Polias ', './imgs/2021-05-25_10_08_59.jpg'),
(48, 'Tensor correia dentada ', './imgs/2021-05-25_10_14_05.jpg'),
(49, 'CORREIA ALTERNADOR ', './imgs/OO26T62T.jpg'),
(50, 'Correia arcondicionado', './imgs/2021-05-25_10_40_36.jpg'),
(51, 'Bobina ignição', './imgs/2021-05-26_09_18_41.jpg'),
(52, 'Vela de ignição', './imgs/2021-05-26_10_03_39.jpg'),
(53, 'Tensor correia alternador ', './imgs/2021-05-26_14_35_37.jpg'),
(54, 'Rolamentos', './imgs/2021-05-27_10_56_00.jpg'),
(55, 'Colar de embreagem', './imgs/2021-05-27_14_31_52.jpg'),
(56, 'TERMINAL DE DIREÇÃO', './imgs/2021-05-29_10_31_51.jpg'),
(57, 'Articulação', './imgs/2021-05-29_10_32_46.jpg'),
(58, 'FILTRO DE OLEO', './imgs/ret-4.jpg'),
(59, 'Filtro de combustível', './imgs/2021-06-03_09_21_27.jpg'),
(60, 'Disco de freio', './imgs/2021-06-03_10_27_59.jpg'),
(61, 'Limpador de parabrisa  /  Palheta ', './imgs/2021-06-07_14_12_41.jpg'),
(62, 'IMPULSOR DE PARTIDA', './imgs/IMPULSOR.png'),
(63, 'AMORTECEDOR', './imgs/AAA.png'),
(64, 'BANDEJA SUSPENSAO', './imgs/QWERRTE.jpg'),
(65, 'BIELETAS', './imgs/bielta.jpg'),
(66, 'CILINDRO MESTRE ', './imgs/12220a.jpg'),
(67, 'BOMBA DE AGUA', './imgs/0122-1.jpg'),
(68, 'COXIM', './imgs/COXIM.jpg'),
(69, 'ELETROVENTILADOR', './imgs/85263.jpg'),
(70, 'KIT EMBREAGEM', './imgs/001-13.jpg'),
(71, 'JUNTA DA TAMPA DE VALVULA', './imgs/jjj.jpg'),
(72, 'PIVÔ DE SUSPENSÃO ', './imgs/1423.jpg'),
(73, 'ROLAMENTO DO SEMI-EIXO', './imgs/25651.jpg'),
(74, 'ROLAMENTO DO EIXO', './imgs/YGGDF.jpg'),
(75, 'ROLAMENTO DE RODA', './imgs/985565500.jpg'),
(76, 'SENSOR óleo apagar', './imgs/69566226.png'),
(77, 'RETENTOR DA VOLANTE ', './imgs/44117788.jpg'),
(78, 'SONDA LAMBDA', './imgs/EWW78WEE7W8.jpg'),
(79, 'TAMPA DO LIMPADOR DE PARABRISA', './imgs/873256.jpg'),
(80, 'TRIZETA', './imgs/8887415233.png'),
(81, 'VALVULA EQUALIZADORA', './imgs/GGB.jpg'),
(82, 'PRATO CALÇO', './imgs/22554W3.jpg'),
(83, 'JUNTA HOMOCINÉTICA', './imgs/FEFFDG2DF2.jpg'),
(84, 'BATEDOR', './imgs/FVR.jpg'),
(86, 'COIFA ', './imgs/11.jpg'),
(87, 'Tambor de freio', './imgs/2021-06-23_08_55_53.jpg'),
(88, 'CANO DE ÁGUA ', './imgs/1-109.jpg'),
(89, 'CONEXAO DO FLUXO DE ÁGUA ', './imgs/1-117.jpg'),
(90, 'RESERVATÓRIO DE ÁGUA ', './imgs/1-119.jpg'),
(91, 'VÁLVULA TERMOSTATICA', './imgs/1-138.jpg'),
(93, 'FIXO DO MOTOR ', './imgs/1-169.jpg'),
(94, 'MANGOTE ', './imgs/535225-8.png'),
(95, 'Bucha da bandeja ', './imgs/1-193.jpg'),
(96, 'Bucha do braço oscilante', './imgs/2021-07-06_16_11_35.jpg'),
(97, 'Bucha estabilizadora', './imgs/2021-07-07_14_35_49.jpg'),
(100, 'chicote de reparo bomba de combustível ', './imgs/1-216.jpg'),
(101, 'Bucha de eixo ', './imgs/2021-07-08_16_22_11.jpg'),
(102, 'Bucha do amortecedor', './imgs/2021-07-09_10_12_24.jpg'),
(103, 'CAVALO DÁGUA ', './imgs/1-230.jpg'),
(104, 'ANEL DO COLETOR DE ADMISSAO ', './imgs/01-9.png'),
(105, 'Bucha do jumelo', './imgs/2021-07-10_10_53_11.jpg'),
(106, 'CONEXAO  DE SUSP RADIADOR ', './imgs/01-11.png'),
(107, 'SENSOR DE TEMPERATURA ', './imgs/1-9.jpeg'),
(108, 'LONA DE FREIOS ', './imgs/1-240.jpg'),
(109, 'Feixe de molas ', './imgs/2021-07-13_10_36_13.jpg'),
(111, 'RADIADOR DE AGUA', './imgs/1-267.jpg'),
(112, 'Mangueira suspiro de óleo', './imgs/2021-07-14_17_23_21.jpg'),
(113, 'Mangote do filtro de ar do motor', './imgs/2021-07-15_10_09_35.jpg'),
(114, 'Prato do coxim ', './imgs/2021-07-15_10_48_19.jpg'),
(115, 'Bucha da caixa de direção', './imgs/2021-07-15_10_53_04.jpg'),
(117, 'Lâmpadas', './imgs/2021-07-16_14_55_34.jpg'),
(118, 'Balancinho do motor', './imgs/2021-07-16_15_15_33.jpg'),
(120, 'Válvula de admissão', './imgs/2021-07-16_15_36_01.jpg'),
(121, 'Válvula de escapamento', './imgs/2021-07-16_15_36_38.jpg'),
(122, 'Bomba de óleo ', './imgs/2021-07-16_17_00_15.jpg'),
(123, 'Alavanca do câmbio de marcha ', './imgs/2021-07-16_17_04_18.jpg'),
(124, 'Sensor de nivel ', './imgs/2021-07-17_08_55_54.jpg'),
(125, 'Flange ou tampa da bomba de combustível', './imgs/2021-07-17_09_30_07.jpg'),
(126, 'Sensor de óleo ou interruptor de óleo', './imgs/2021-07-17_10_23_03.jpg'),
(127, 'Interruptor de freio ', './imgs/2021-07-17_10_38_13.jpg'),
(128, 'InterRuptor de embreagem', './imgs/2021-07-17_10_39_03.jpg'),
(129, 'Interruptor de luz de ré', './imgs/2021-07-17_10_55_18.jpg'),
(130, 'Cubo de roda', './imgs/2021-07-17_14_55_48.jpg'),
(131, 'Filtro combustível diesel ', './imgs/2021-07-17_15_05_38.jpg'),
(132, 'Correia do alternador', './imgs/2021-07-17_15_11_08.jpg'),
(133, 'Cilindro do PEDAL ou mestre embreagem', './imgs/2021-07-21_09_13_37.jpg'),
(134, 'Cilindro escravo superior embreagem', './imgs/2021-07-21_09_56_28.jpg'),
(135, 'Atuador de embreagem', './imgs/2021-07-21_10_34_20.jpg'),
(137, 'Guarnição Do flange de combustível', './imgs/2021-07-22_09_11_09.jpg'),
(138, 'Poca do flange de combustível', './imgs/2021-07-22_09_12_16.jpg'),
(139, 'Reparos e peças do câmbio', './imgs/2021-07-22_10_53_44.jpg'),
(140, 'Tampa Do radiador', './imgs/2021-07-24_09_33_19.jpg'),
(142, ' ....', './imgs/2021-07-29_14_05_18.jpg'),
(143, 'Mangueira de freio', './imgs/2021-07-29_14_18_44.jpg'),
(144, 'Porte escova motor de arranque', './imgs/2021-07-29_14_41_10.jpg'),
(146, 'Óleo Lubrificante', './imgs/1-306.jpg'),
(147, 'Tirantes ', './imgs/2021-08-16_16_14_42.jpg'),
(148, 'Cilindro de roda', './imgs/2021-08-18_09_54_15.jpg'),
(149, 'Ponta de eixo', './imgs/2021-08-20_09_31_15.jpg'),
(150, 'Junta do cabeçote', './imgs/2021-08-31_10_50_09.jpg'),
(152, 'Retentores ', './imgs/2021-09-03_09_16_30.jpg'),
(153, 'Sensor de abs', './imgs/2021-09-03_14_33_45.jpg'),
(154, 'Porte escova arranque', './imgs/2021-09-03_15_15_06.jpg'),
(155, 'Regulador de voltagem ', './imgs/2021-09-03_15_18_37.jpg'),
(156, 'Oleo de Freio', './imgs/2021-09-04_14_53_36.jpg'),
(157, 'Aditivo de radiador', './imgs/2021-09-04_15_03_40.jpg'),
(158, 'Vedação da bobina', './imgs/001-17.jpg'),
(159, 'Bomba de combustível', './imgs/2021-09-10_15_30_33.jpg'),
(160, 'Caixa de direção', './imgs/2021-09-22_17_25_25.jpg'),
(161, 'Palhetas do parabrisa', './imgs/2021-09-24_11_03_38.jpg'),
(162, 'Parafuso de cabeçote', './imgs/2021-09-24_15_10_04.jpg'),
(163, 'BATERIAs', './imgs/2021-09-30_17_19_46.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `telefone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `placa` varchar(100) DEFAULT NULL,
  `veiculo` varchar(225) DEFAULT NULL,
  `usuarios_id` int(11) NOT NULL,
  `marcas_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `telefone`, `email`, `placa`, `veiculo`, `usuarios_id`, `marcas_id`) VALUES
(19, 'Lojao do carro', '0000000', '', '000000', NULL, 4, 144),
(20, 'PEDRO VICTOR TEXEIRA CUTRIM', '991380693', 'XX', 'PST-2222', NULL, 7, 128),
(21, 'FILIPE MARTINS PINHEIRO', '98982536681', 'FILIPEMARTINSPINHEIRO@HOTMAIL.COM', 'PTE-9844', NULL, 7, 64),
(22, 'LEONARDO BRUNO DE JESUS COSTA', '98988819452', '', 'PTD-0068', NULL, 7, 31),
(23, 'ANDRESSA CARVALHO COELHO', '98981681332', '', 'PTL-4007', NULL, 7, 64),
(24, 'NILSON GOLÇALVES GOMES JUNIOR', '98982006551', '', 'PWV8C04', NULL, 7, 104);

-- --------------------------------------------------------

--
-- Estrutura da tabela `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `data` timestamp NULL DEFAULT current_timestamp(),
  `codigo` varchar(45) DEFAULT NULL,
  `barra` varchar(45) DEFAULT NULL,
  `nome` varchar(225) DEFAULT NULL,
  `qtd` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `valor_compra` decimal(10,2) DEFAULT NULL,
  `produtos_id` int(10) NOT NULL,
  `usuarios_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `compras`
--

INSERT INTO `compras` (`id`, `data`, `codigo`, `barra`, `nome`, `qtd`, `status`, `subtotal`, `valor_compra`, `produtos_id`, `usuarios_id`) VALUES
(132, '2021-09-22 19:15:08', '0', '7891579890191', 'Gp30605 / cofap', '2', '1', '700.00', '350.00', 2867, 7),
(133, '2021-09-27 12:57:28', '0', '7892968017786', 'Br13102201517 / monroe', '1', '1', '36.00', '36.00', 2279, 7),
(134, '2021-10-04 18:06:52', '0', '7898541343648', 'Gc4270 / gauss', '4', '1', '0.00', '0.00', 1476, 7),
(135, '2021-10-04 18:06:52', '0', '7899013313053', '680329 / viemar', '2', '1', '0.00', '0.00', 1566, 7),
(136, '2021-10-04 18:06:52', '0', '7899013314982', '335311 / viemar', '1', '1', '0.00', '0.00', 1568, 7),
(137, '2021-10-04 18:06:52', '0', '7798159129064', 'JFC199-1 / WEGA', '2', '1', '0.00', '0.00', 1628, 7),
(138, '2021-10-04 18:06:52', '0', '7897483494043', 'Rpta02190 / trw', '2', '1', '0.00', '0.00', 2656, 7),
(139, '2021-10-04 18:06:52', '0', '7893049217897', 'C2178 / controil', '2', '1', '0.00', '0.00', 2732, 7),
(140, '2021-10-04 18:06:52', '0', '7898429264706', 'Mb2242 / mobesani', '2', '1', '0.00', '0.00', 2910, 7),
(141, '2021-10-04 18:06:52', '0', '7898632041422', 'T130023 / tsa', '4', '1', '0.00', '0.00', 2908, 7),
(142, '2021-10-04 18:06:52', '0', '7892679064512', 'N1272 / cobreq ', '6', '1', '0.00', '0.00', 1351, 7),
(143, '2021-10-04 18:06:52', '0', '7798159129460  ', 'FAP3286 / WEGA', '12', '1', '0.00', '0.00', 1264, 7),
(144, '2021-10-04 18:06:52', '0', '7893026877847', 'TY/327-cp / Frasle ', '3', '1', '0.00', '0.00', 2243, 7),
(145, '2021-10-04 18:06:52', '0', '7890903031392', 'N99129 / nakata', '3', '1', '0.00', '0.00', 2722, 7),
(146, '2021-10-04 18:06:52', '0', '7890903061696', 'N99272 / nakata', '4', '1', '0.00', '0.00', 2770, 7),
(147, '2021-10-04 18:06:52', '0', '7798001692982', 'Woe710', '16', '1', '0.00', '0.00', 1619, 7),
(148, '2021-10-04 18:06:52', '0', '3322938446628', 'Bwd6000 / TRw', '4', '1', '0.00', '0.00', 2708, 7),
(149, '2021-10-04 18:06:52', '0', '7892968017786', 'Br13102201517 / monroe', '12', '1', '0.00', '0.00', 2279, 7),
(150, '2021-10-04 18:06:52', '0', '7899159515120', 'MG-594 /  MG freios ', '1', '1', '0.00', '0.00', 2255, 7),
(151, '2021-10-04 18:30:37', '0', '7891342005401', 'PSL78/TECFIL', '36', '1', '0.00', '0.00', 1581, 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `entregas`
--

CREATE TABLE `entregas` (
  `id` int(11) NOT NULL,
  `data` timestamp NULL DEFAULT current_timestamp(),
  `cod_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `entregas`
--

INSERT INTO `entregas` (`id`, `data`, `cod_id`, `status`) VALUES
(221, '2021-10-06 14:18:24', 784891, 0),
(222, '2021-10-06 14:22:40', 231146, 0),
(223, '2021-10-06 15:02:02', 194058, 0),
(224, '2021-10-06 20:29:54', 493772, 0),
(225, '2021-10-07 13:13:00', 452741, 0),
(226, '2021-10-07 13:30:45', 117261, 0),
(227, '2021-10-07 13:34:40', 137990, 0),
(228, '2021-10-07 13:57:09', 166898, 0),
(229, '2021-10-07 19:32:47', 408913, 1),
(230, '2021-10-07 19:40:00', 282638, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipamentos`
--

CREATE TABLE `equipamentos` (
  `id` int(11) NOT NULL,
  `data` timestamp NULL DEFAULT current_timestamp(),
  `nome` varchar(100) DEFAULT NULL,
  `barra` varchar(45) DEFAULT NULL,
  `valor_custo` decimal(10,2) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `foto` varchar(300) DEFAULT NULL,
  `fornecedores_id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `equipamentos`
--

INSERT INTO `equipamentos` (`id`, `data`, `nome`, `barra`, `valor_custo`, `valor`, `foto`, `fornecedores_id`, `usuarios_id`) VALUES
(6, '2021-05-28 11:34:00', 'Elevacar Hidraulico / Emaster', '7891342002042', '8000.00', '10000.00', './imgs/tecfil-23.jpg', 7, 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `estatisticas`
--

CREATE TABLE `estatisticas` (
  `id` int(11) NOT NULL,
  `data` timestamp NULL DEFAULT current_timestamp(),
  `codigo` int(11) DEFAULT NULL,
  `barra` int(11) DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `qtd` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `valor_compra` decimal(10,2) DEFAULT NULL,
  `subtotal` varchar(45) DEFAULT NULL,
  `produtos_id` int(10) NOT NULL,
  `usuarios_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `forma_pagamento`
--

CREATE TABLE `forma_pagamento` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `forma_pagamento`
--

INSERT INTO `forma_pagamento` (`id`, `nome`) VALUES
(1, 'Dinheiro'),
(2, 'Cartão de Crédito'),
(3, 'Cartão de Débito'),
(4, 'Cartão de Crédito | Dinheiro'),
(5, 'Cartão de Débito | Dinheiro'),
(6, 'PIX');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `id` int(11) NOT NULL,
  `data` timestamp NULL DEFAULT current_timestamp(),
  `cnpj` varchar(45) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `foto` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fornecedores`
--

INSERT INTO `fornecedores` (`id`, `data`, `cnpj`, `telefone`, `email`, `nome`, `foto`) VALUES
(1, '0000-00-00 00:00:00', '9855221122221000', '(98) 9958-8956', 'mahle.com.br', 'Eneylton', './imgs/2021-05-28_13_14_49.jpg'),
(8, '2021-05-28 16:31:18', '99999999999', 'Elias barros ', 'olic@hotmail.com', 'Elias barros uuuu', './imgs/2021-05-28_13_31_15.jpg'),
(9, '2021-05-28 16:32:17', '*8998999898', '+559888992222', 'olic@hotmail.com', 'Baezerra Oliveira', './imgs/2021-05-28_13_32_17.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `galerias`
--

CREATE TABLE `galerias` (
  `id` int(11) NOT NULL,
  `foto` varchar(225) DEFAULT NULL,
  `produtos_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `galerias`
--

INSERT INTO `galerias` (`id`, `foto`, `produtos_id`) VALUES
(34, './imgs/c2c1f0g8e3f1e1b4b3g8b0c012342021-08-31_14_38_00.jpg', 2796);

-- --------------------------------------------------------

--
-- Estrutura da tabela `marcas`
--

CREATE TABLE `marcas` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `fabricante` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `marcas`
--

INSERT INTO `marcas` (`id`, `nome`, `fabricante`) VALUES
(1, 'UNO EVO', 'FIAT'),
(2, 'UNO FIRE', 'FIAT'),
(3, 'SIENA FIRE', 'FIAT'),
(4, 'SIENA EVO', 'FIAT'),
(5, 'STRADA FIRE', 'FIAT'),
(6, 'STRADA EVO', 'FIAT'),
(7, 'STRADA E-TORQ', 'FIAT'),
(8, 'GRAND SIENA E-TORQ', 'FIAT'),
(9, 'GRAND SIENA EVO', 'FIAT'),
(10, 'ARGO FIREFLY', 'FIAT'),
(11, 'MOBI FIREFLY', 'FIAT'),
(12, 'MOBI EVO', 'FIAT'),
(13, 'CRONOS FIREFLY', 'FIAT'),
(14, 'PALIO FIRE', 'FIAT'),
(15, 'PALIO EVO', 'FIAT'),
(16, '500', 'FIAT'),
(17, 'GOL POWER', 'VOLKSWAGEM'),
(18, 'GOL 3 CILINDROS', 'VOLKSWAGEM'),
(19, 'SAVEIRO POWER', 'VOLKSWAGEM'),
(20, 'SAVEIRO 3 CILINDROS', 'VOLKSWAGEM'),
(21, 'FOX POWER', 'VOLKSWAGEM'),
(22, 'FOX 3 CILINDROS', 'VOLKSWAGEM'),
(23, 'SPACEFOX POWER', 'VOLKSWAGEM'),
(24, 'CROSSFOX POWER', 'VOLKSWAGEM'),
(25, 'UP TSI', 'VOLKSWAGEM'),
(26, 'POLO POWER', 'VOLKSWAGEM'),
(27, 'POLO 3 CILINDROS', 'VOLKSWAGEM'),
(28, 'AMAROK DIESEL', 'VOLKSWAGEM'),
(29, 'AMAROK GASOLINA', 'VOLKSWAGEM'),
(30, 'XTREME MSI', 'VOLKSWAGEM'),
(31, 'TORO GASOLINA', 'FIAT'),
(32, 'TORO DIESEL', 'FIAT'),
(33, 'RENEGADE GASOLINA', 'JEEP'),
(34, 'RENEGADE DIESEL ', 'JEEP'),
(35, 'DOBLO FIRE', 'FIAT'),
(36, 'DOBLO E-TORQ', 'FIAT'),
(37, 'FIORINO FIRE', 'FIAT'),
(38, 'FIORINO EVO', 'FIAT'),
(39, 'CLIO 1.0', 'RENAULT'),
(40, 'CLIO II', 'RENAULT'),
(41, 'DUSTER 1.6', 'RENAULT'),
(42, 'DUSTER 2.0', 'RENAULT'),
(43, 'LOGAN 3 CILINDROS', 'RENAULT'),
(44, 'LOGAN 1.0', 'RENAULT'),
(45, 'LOGAN 1.6', 'RENAULT'),
(46, 'SANDERO 3 CILINDROS', 'RENAULT'),
(47, 'SANDERO 1.0', 'RENAULT'),
(48, 'SANDERO 1.6', 'RENAULT'),
(49, 'SANDERO RS', 'RENAULT'),
(50, 'SYMBOL 1.6', 'RENAULT'),
(51, 'CAPTUR', 'RENAULT'),
(52, 'OROCH 1.6', 'RENAULT'),
(53, 'OROCH 2.0', 'RENAULT'),
(54, 'MEGANE 1.6', 'RENAULT'),
(55, 'MEGANE 2.0', 'RENAULT'),
(56, 'FLUENCE 2.0', 'RENAULT'),
(57, 'DUSTER 3 CILINDROS', 'RENAULT'),
(58, 'KWID', 'RENAULT'),
(59, 'FIESTA ROCAM', 'FORD'),
(60, 'FIESTA NEW ', 'FORD'),
(61, 'ECOSPORT ROCAM', 'FORD'),
(62, 'ECOSPORT NEW', 'FORD'),
(63, 'ECOSPORT 3 CILINDROS', 'FORD'),
(64, 'KA NEW', 'FORD'),
(65, 'KA ROCAM', 'FORD'),
(66, 'FUSION', 'FORD'),
(67, 'FOCUS NOVO', 'FORD'),
(68, 'FOCUS 1.6 SIGMA', 'FORD'),
(69, 'RANGER DIESEL', 'FORD'),
(70, 'RANGER GASOLINA', 'FORD'),
(71, 'TRITON L200 NOVA', 'MITSUBISHI'),
(72, 'TRITON DIESEL', 'MITSUBISHI'),
(73, 'LANCER', 'MITSUBISHI'),
(74, 'OUTLANDER', 'MITSUBISHI'),
(75, 'VIRTUS TSI', 'VOLKSWAGEM'),
(76, 'VIRTUS MSI', 'VOLKSWAGEM'),
(77, 'PASSAT TSI', 'VOLKSWAGEM'),
(78, 'PASSAT GLI', 'VOLKSWAGEM'),
(79, 'ARGO', 'FIAT'),
(80, 'TIGUAN', 'VOLKSWAGEM'),
(81, 'NIVUS', 'VOLKSWAGEM'),
(82, 'PARATI', 'VOLKSWAGEM'),
(83, 'VOYAGE POWER', 'VOLKSWAGEM'),
(84, 'VOYAGE 3 CILINDROS', 'VOLKSWAGEM'),
(85, 'ONIX JOY', 'CHEVROLET'),
(86, 'ONIX PLUS', 'CHEVROLET'),
(87, 'CRUZE 1.8', 'CHEVROLET'),
(88, 'CRUZE TURBO', 'CHEVROLET'),
(89, 'SPIN', 'CHEVROLET'),
(90, 'COBALT', 'CHEVROLET'),
(91, 'PRISMA NOVO', 'CHEVROLET'),
(92, 'PRISMA ', 'CHEVROLET'),
(93, 'TRACKER NOVA', 'CHEVROLET'),
(94, 'EQUINOX', 'CHEVROLET'),
(95, 'CAMARO', 'CHEVROLET'),
(96, 'CELTA ', 'CHEVROLET'),
(97, 'CORSA CLASSIC', 'CHEVROLET'),
(98, 'CORSAO', 'CHEVROLET'),
(99, 'S10 ANTIGA', 'CHEVROLET'),
(100, 'S10 NOVA GASOLINA', 'CHEVROLET'),
(101, 'S10 NOVA DIESEL', 'CHEVROLET'),
(102, 'VERSA 1.0', 'NISSAN'),
(103, 'VERSA 1.6', 'NISSAN'),
(104, 'MARCH 1.0', 'NISSAN'),
(105, 'MARCH 1.6', 'NISSAN'),
(106, 'TIIDA', 'NISSAN'),
(107, 'SENTRA', 'NISSAN'),
(108, 'KICKS', 'NISSAN'),
(109, 'FRONTIER', 'NISSAN'),
(110, 'HB20 1.0', 'HYUNDAI'),
(111, 'HB20 1.6', 'HYUNDAI'),
(112, 'I30', 'HYUNDAI'),
(113, 'CRETA', 'HYUNDAI'),
(114, 'SANTA CRUZ', 'HYUNDAI'),
(115, 'VELOSTER', 'HYUNDAI'),
(116, 'HR', 'HYUNDAI'),
(117, 'AZERA', 'HYUNDAI'),
(118, '206', 'PEUGEOT'),
(119, '208', 'PEUGEOT'),
(120, '207', 'PEUGEOT'),
(121, '307', 'PEUGEOT'),
(122, '308', 'PEUGEOT'),
(123, '408', 'PEUGEOT'),
(124, '3008', 'PEUGEOT'),
(125, 'HOGGAR', 'PEUGEOT'),
(126, 'TUCSON', 'HYUNDAI'),
(127, 'ETIOS', 'TOYOTA'),
(128, 'COROLLA', 'TOYOTA'),
(129, 'YARIS', 'TOYOTA'),
(130, 'HILLUX DIESEL', 'TOYOTA'),
(131, 'HILLUX GASOLINA', 'TOYOTA'),
(132, 'SW4 DIESEL', 'TOYOTA'),
(133, 'SW4 GASOLINA', 'TOYOTA'),
(134, 'RAV4', 'TOYOTA'),
(135, 'T-CROSS', 'VOLKSWAGEM'),
(136, 'CITY', 'HONDA'),
(137, 'NEW CIVIC 2008', 'HONDA'),
(138, 'NEW CIVIC 2012', 'HONDA'),
(139, 'HRV', 'HONDA'),
(140, 'WRV', 'HONDA'),
(141, 'ACCORD', 'HONDA'),
(142, 'FIT', 'HONDA'),
(143, 'NEW CIVIC 2020', 'HONDA'),
(144, 'FIT NEW', 'HONDA'),
(145, 'DOBLO FIRE', 'FIAT'),
(146, 'DOBLO E-TORQ', 'FIAT'),
(178, 'ASTRA FLEX POWER', 'CHEVROLET'),
(179, 'VECTRA FLEX POWER', 'CHEVROLET'),
(180, 'VECTRA 2.2', 'CHEVROLET');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mecanicos`
--

CREATE TABLE `mecanicos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `telefone` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `mecanicos`
--

INSERT INTO `mecanicos` (`id`, `nome`, `telefone`) VALUES
(1, 'Maycon', '98815278'),
(2, 'Zorro (Joanderson)', '98815278'),
(3, 'Robinho (Robson)', '98815278'),
(4, 'Josivaldo (Gordinho)', '98815278'),
(5, 'Matheus Junior', '98815278'),
(6, 'Jose Raimundo ( Tchêtchê )', '98815278'),
(7, 'Pintor (Anilton)', '98815278'),
(8, 'Jeferson', '98815278'),
(9, 'Viana (Karlyson)', '98552211'),
(10, 'Miau (Ataniel)', '98566668'),
(11, 'Barrerinha (Edeilson))', '98522212'),
(12, 'Gabriel(Bombado)', '89855555'),
(13, 'Amanda', '98522555'),
(14, 'Adalberto (Teteco)', '89855655'),
(16, 'Davi (Quatro Olho)', '988285212'),
(17, 'Eneylton', '981581962');

-- --------------------------------------------------------

--
-- Estrutura da tabela `movimentacoes`
--

CREATE TABLE `movimentacoes` (
  `id` int(11) NOT NULL,
  `data` timestamp NULL DEFAULT current_timestamp(),
  `valor` decimal(10,2) DEFAULT NULL,
  `descricao` varchar(335) DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `usuarios_id` int(11) NOT NULL,
  `catdesp_id` int(11) NOT NULL,
  `forma_pagamento_id` int(11) NOT NULL,
  `mecanicos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `movimentacoes`
--

INSERT INTO `movimentacoes` (`id`, `data`, `valor`, `descricao`, `tipo`, `status`, `usuarios_id`, `catdesp_id`, `forma_pagamento_id`, `mecanicos_id`) VALUES
(382, '2021-10-06 14:18:24', '2627.22', NULL, 1, 1, 7, 1, 1, 8),
(383, '2021-10-06 14:22:40', '226.07', NULL, 1, 1, 7, 1, 1, 3),
(384, '2021-10-06 15:02:02', '40.00', NULL, 1, 1, 7, 1, 1, 1),
(385, '2021-10-06 15:02:02', '90.00', NULL, 1, 1, 7, 4, 1, 1),
(386, '2021-10-06 15:02:02', '54.23', NULL, 1, 1, 7, 3, 1, 1),
(387, '2021-10-06 20:29:54', '620.50', NULL, 1, 1, 7, 1, 1, 1),
(388, '2021-10-06 20:29:54', '200.00', NULL, 1, 1, 7, 3, 1, 1),
(389, '2021-10-07 13:13:00', '180.00', NULL, 1, 1, 7, 1, 1, 9),
(390, '2021-10-07 13:30:45', '350.00', NULL, 1, 0, 7, 1, 2, 5),
(391, '2021-10-07 13:30:45', '90.00', NULL, 1, 0, 7, 4, 2, 5),
(392, '2021-10-07 13:34:40', '60.00', NULL, 1, 1, 7, 1, 1, 8),
(393, '2021-10-07 13:34:40', '50.00', NULL, 1, 1, 7, 3, 1, 8),
(394, '2021-10-07 13:57:09', '370.00', NULL, 1, 0, 7, 1, 2, 5),
(395, '2021-10-07 13:57:09', '500.00', NULL, 1, 0, 7, 4, 2, 5),
(396, '2021-10-07 13:57:09', '0.00', NULL, 1, 0, 7, 3, 2, 5),
(397, '2021-10-07 19:32:47', '1352.40', NULL, 1, 1, 7, 1, 1, 8),
(398, '2021-10-07 19:40:00', '460.00', NULL, 1, 0, 7, 1, 2, 1),
(399, '2021-10-07 19:40:00', '360.00', NULL, 1, 0, 7, 4, 2, 1),
(400, '2021-10-07 19:40:00', '100.00', NULL, 1, 0, 7, 3, 2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `orcamentos`
--

CREATE TABLE `orcamentos` (
  `id` int(11) NOT NULL,
  `data` timestamp NULL DEFAULT current_timestamp(),
  `nome` varchar(255) DEFAULT NULL,
  `codigo` int(11) DEFAULT NULL,
  `barra` int(11) DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `valor_venda` decimal(10,2) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `usuarios_id` int(11) NOT NULL,
  `clientes_id` int(11) NOT NULL,
  `mecanicos_id` int(11) NOT NULL,
  `produtos_id` int(10) NOT NULL,
  `cod_id` int(11) DEFAULT NULL,
  `forma_pagamento_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `orcamentos`
--

INSERT INTO `orcamentos` (`id`, `data`, `nome`, `codigo`, `barra`, `qtd`, `valor_venda`, `subtotal`, `usuarios_id`, `clientes_id`, `mecanicos_id`, `produtos_id`, `cod_id`, `forma_pagamento_id`) VALUES
(706, '2021-09-18 12:56:47', ' STD00004 / DELPHI', 0, 0, 1, '40.00', '40.00', 4, 19, 1, 2218, 958141, 2),
(707, '2021-09-22 19:13:17', '300408 / reviam', 0, 300408, 1, '95.00', '95.00', 7, 19, 8, 2866, 242377, 1),
(708, '2021-09-22 19:13:17', 'PSL78/TECFIL', 0, 2147483647, 1, '35.00', '35.00', 7, 19, 8, 1581, 242377, 1),
(709, '2021-09-22 19:13:17', 'ARL 5144 - TECFIL', 0, 2147483647, 1, '80.00', '80.00', 7, 19, 8, 1273, 242377, 1),
(710, '2021-09-22 19:13:17', '5W30 / TOTAL', 0, 2147483647, 3, '32.00', '96.00', 7, 19, 8, 2438, 242377, 1),
(711, '2021-09-22 19:13:17', '680402 / viemar', 0, 2147483647, 1, '140.00', '140.00', 7, 19, 8, 1558, 242377, 1),
(712, '2021-09-22 19:13:17', 'N6081 / nakata', 0, 2147483647, 1, '80.00', '80.00', 7, 19, 8, 2499, 242377, 1),
(713, '2021-09-22 19:13:17', 'Gp30605 / cofap', 0, 2147483647, 2, '875.00', '1750.00', 7, 19, 8, 2867, 242377, 1),
(714, '2021-09-22 19:13:17', 'N99279 / nakata', 0, 2147483647, 2, '90.00', '180.00', 7, 19, 8, 2486, 242377, 1),
(715, '2021-09-22 19:13:17', 'BATEDOR DT ETIOS / KSC22205S COFAP', 0, 2147483647, 2, '70.00', '140.00', 7, 19, 8, 1756, 242377, 1),
(716, '2021-09-22 19:13:17', 'Mb772a / mobesani', 0, 2147483647, 2, '180.00', '360.00', 7, 19, 8, 2295, 242377, 1),
(717, '2021-09-22 19:13:17', 'N-1483 / cobreq ', 0, 2147483647, 1, '150.00', '150.00', 7, 19, 8, 1328, 242377, 1),
(718, '2021-09-22 19:13:17', 'PSL146/TECFIL', 0, 2147483647, 1, '28.27', '28.27', 7, 19, 8, 1586, 242377, 1),
(719, '2021-09-22 19:13:17', '030109243q / Volkswagen', 0, 30109243, 1, '170.00', '170.00', 7, 19, 8, 1460, 242377, 1),
(720, '2021-09-22 19:13:17', 'N93036 / nakata', 0, 2147483647, 2, '75.00', '150.00', 7, 19, 8, 2494, 242377, 1),
(721, '2021-09-22 19:13:17', 'Br10104401480 / monroe', 0, 2147483647, 2, '65.00', '130.00', 7, 19, 8, 2805, 242377, 1),
(722, '2021-09-22 19:13:17', 'BATEDOR GOL TS/ NK0405 NAKATA ', 0, 2147483647, 2, '65.00', '130.00', 7, 19, 8, 1767, 242377, 1),
(723, '2021-09-23 20:37:41', 'ST-V25 / NGK', 0, 2147483647, 1, '250.00', '250.00', 7, 19, 8, 1449, 323519, 1),
(724, '2021-09-23 20:37:41', 'COIFA LADO RODA ESQUERDO DIREITO/  2-13-569-1G SPICE', 0, 2147483647, 1, '40.00', '40.00', 7, 19, 8, 1780, 323519, 1),
(725, '2021-09-23 20:37:41', 'NK0229 / NAKATA ', 0, 2147483647, 4, '71.20', '284.80', 7, 19, 8, 1770, 323519, 1),
(726, '2021-09-23 20:37:41', 'KSC03108S / COFAP', 0, 2147483647, 2, '65.00', '130.00', 7, 19, 8, 1777, 323519, 1),
(727, '2021-09-23 20:37:41', 'Mb462 / mobesani', 0, 0, 1, '207.50', '207.50', 7, 19, 8, 2292, 323519, 1),
(728, '2021-09-23 20:37:41', 'Mb461 / mobesani', 0, 2147483647, 1, '207.50', '207.50', 7, 19, 8, 2291, 323519, 1),
(729, '2021-09-23 20:37:41', 'N99141 / nakata', 0, 2147483647, 2, '86.48', '172.96', 7, 19, 8, 2481, 323519, 1),
(730, '2021-09-23 20:37:41', 'N93036 / nakata', 0, 2147483647, 3, '75.00', '225.00', 7, 19, 8, 2494, 323519, 1),
(731, '2021-09-23 20:37:41', 'PSL619/TECFIL', 0, 2147483647, 1, '35.00', '35.00', 7, 19, 8, 1580, 323519, 1),
(732, '2021-09-23 20:37:41', 'Gi04/7 / tecfil', 0, 2147483647, 1, '18.30', '18.30', 7, 19, 8, 2544, 323519, 1),
(733, '2021-09-23 20:37:41', 'FAP3286 / WEGA', 0, 2147483647, 1, '60.00', '60.00', 7, 19, 8, 1264, 323519, 1),
(734, '2021-09-23 20:37:41', 'ACP126/tecfil', 0, 2147483647, 1, '35.00', '35.00', 7, 19, 8, 1187, 323519, 1),
(735, '2021-09-23 20:37:41', 'LIMPA AR CONDICIONADO / ORBI-AIR', 0, 2147483647, 1, '30.00', '30.00', 7, 19, 8, 1417, 323519, 1),
(736, '2021-09-23 20:37:41', '5W30 / TOTAL', 0, 2147483647, 3, '32.00', '96.00', 7, 19, 8, 2438, 323519, 1),
(737, '2021-09-23 20:37:41', 'Mb2268 / mobesani', 0, 2147483647, 2, '120.00', '240.00', 7, 19, 8, 2214, 323519, 1),
(738, '2021-09-23 20:37:41', 'PSL55 / TECFIL', 0, 2147483647, 1, '20.07', '20.07', 7, 19, 8, 1579, 323519, 1),
(739, '2021-09-23 20:37:41', 'Arl2340 / tecfil', 0, 2147483647, 1, '80.00', '80.00', 7, 19, 8, 2436, 323519, 1),
(740, '2021-09-23 20:37:41', 'Br15101101249 / monroe', 0, 2147483647, 2, '80.00', '160.00', 7, 19, 8, 2176, 323519, 1),
(741, '2021-09-23 20:37:41', 'PSL78/TECFIL', 0, 2147483647, 1, '35.00', '35.00', 7, 19, 8, 1581, 323519, 1),
(742, '2021-09-23 20:37:41', 'Al-1472 / ima', 0, 2147483647, 1, '280.00', '280.00', 7, 19, 8, 2428, 323519, 1),
(743, '2021-09-25 12:01:27', 'BATEDOR  DT CELTA / KSC04105SCOFAP', 0, 2147483647, 2, '60.00', '120.00', 7, 19, 8, 1774, 175925, 1),
(744, '2021-09-25 12:01:27', 'Vkba4529a / skf', 0, 2147483647, 1, '80.00', '80.00', 7, 19, 8, 2350, 175925, 1),
(745, '2021-09-25 12:01:27', '7796 / nytron ', 0, 2147483647, 1, '130.00', '130.00', 7, 19, 8, 1468, 175925, 1),
(746, '2021-09-25 12:01:27', '335074 / viemar', 0, 2147483647, 2, '75.00', '150.00', 7, 19, 8, 1986, 175925, 1),
(747, '2021-09-25 12:01:27', '111sp170h / dayco ', 0, 2147483647, 1, '60.00', '60.00', 7, 19, 8, 1458, 175925, 1),
(748, '2021-09-25 12:01:27', '680070 / viemar', 0, 2147483647, 2, '70.00', '140.00', 7, 19, 8, 1997, 175925, 1),
(749, '2021-09-27 18:49:07', '6pk1200ee / dayco ', 0, 2147483647, 1, '150.00', '150.00', 7, 19, 8, 1444, 136946, 1),
(750, '2021-09-27 18:49:07', 'RCPT13680 / TRW ', 0, 2147483647, 1, '150.00', '150.00', 7, 19, 8, 1390, 136946, 1),
(751, '2021-09-27 18:49:07', 'Mb2259 / mobesani', 0, 2147483647, 2, '120.00', '240.00', 7, 19, 8, 2301, 136946, 1),
(752, '2021-09-27 18:49:07', 'BATEDOR  DT FIESTA/ KSC08126S COFAP', 0, 2147483647, 2, '50.00', '100.00', 7, 19, 8, 1772, 136946, 1),
(753, '2021-09-27 18:49:07', 'PSL55 / TECFIL', 0, 2147483647, 3, '20.07', '60.21', 7, 19, 8, 1579, 136946, 1),
(754, '2021-09-27 18:49:07', 'Mb2270 / mobesani ', 0, 0, 2, '80.00', '160.00', 7, 19, 8, 2283, 136946, 1),
(755, '2021-09-27 18:49:07', '95405221 / GM', 0, 95405221, 1, '350.00', '350.00', 7, 19, 8, 2107, 136946, 1),
(756, '2021-09-27 18:49:07', 'PSL619/TECFIL', 0, 2147483647, 1, '35.00', '35.00', 7, 19, 8, 1580, 136946, 1),
(757, '2021-09-27 18:49:07', 'PSL818/TECFIL', 0, 2147483647, 1, '45.00', '45.00', 7, 19, 8, 1584, 136946, 1),
(758, '2021-09-27 18:49:07', 'Br13102201517 / monroe', 0, 2147483647, 2, '120.00', '240.00', 7, 19, 8, 2279, 136946, 1),
(759, '2021-09-27 18:49:07', '129p8s220h / dayco', 0, 2147483647, 1, '170.00', '170.00', 7, 19, 8, 1457, 136946, 1),
(760, '2021-09-27 18:49:07', '5310816100 / ina', 0, 2147483647, 1, '150.00', '150.00', 7, 19, 8, 2513, 136946, 1),
(761, '2021-09-27 18:49:07', 'N92030 / nakata', 0, 2147483647, 2, '75.00', '150.00', 7, 19, 8, 2473, 136946, 1),
(762, '2021-09-27 18:49:07', '1J0407181 / Volkswagem', 0, 1, 2, '100.00', '200.00', 7, 19, 8, 2179, 136946, 1),
(763, '2021-09-27 18:49:07', 'Mb2268 / mobesani', 0, 2147483647, 2, '120.00', '240.00', 7, 19, 8, 2214, 136946, 1),
(764, '2021-09-27 18:49:07', 'Pel119/ TECFIL', 0, 2147483647, 1, '45.00', '45.00', 7, 19, 8, 1605, 136946, 1),
(765, '2021-09-27 18:49:07', 'Woe710', 0, 2147483647, 1, '23.00', '23.00', 7, 19, 8, 1619, 136946, 1),
(766, '2021-09-27 18:49:07', '78976 / sabó', 0, 2147483647, 2, '80.00', '160.00', 7, 19, 8, 2219, 136946, 1),
(767, '2021-09-27 18:49:07', 'Fap-3615 / wega', 0, 2147483647, 1, '75.00', '75.00', 7, 19, 8, 1241, 136946, 1),
(768, '2021-09-27 18:49:07', 'FI  / 91  - Cpa / Ftasle ', 0, 2147483647, 1, '180.00', '180.00', 7, 19, 8, 2228, 136946, 1),
(769, '2021-09-27 18:49:07', 'Arl4150/tecfil', 0, 0, 2, '60.00', '120.00', 7, 19, 8, 1207, 136946, 1),
(770, '2021-09-27 18:49:07', 'Hf37 / hipperfreios', 0, 2147483647, 1, '290.00', '290.00', 7, 19, 8, 1849, 136946, 1),
(771, '2021-09-27 18:49:07', 'PSL146/TECFIL', 0, 2147483647, 1, '28.27', '28.27', 7, 19, 8, 1586, 136946, 1),
(772, '2021-09-27 18:49:07', 'Ksc03208s / cofap', 0, 2147483647, 2, '165.00', '330.00', 7, 19, 8, 2871, 136946, 1),
(773, '2021-09-27 18:49:07', 'G-1251 / GONEL', 0, 2147483647, 1, '136.00', '136.00', 7, 19, 8, 2018, 136946, 1),
(774, '2021-09-27 20:02:36', 'PSL55 / TECFIL', 0, 2147483647, 1, '20.07', '20.07', 7, 19, 8, 1579, 210441, 1),
(775, '2021-09-27 20:02:36', 'Gi04/7 / tecfil', 0, 2147483647, 1, '18.30', '18.30', 7, 19, 8, 2544, 210441, 1),
(776, '2021-09-27 20:02:36', 'Fap9054/wega', 0, 2147483647, 1, '40.00', '40.00', 7, 19, 8, 1209, 210441, 1),
(777, '2021-09-27 20:02:36', 'Rpta02190 / trw', 0, 2147483647, 2, '250.00', '500.00', 7, 19, 8, 2656, 210441, 1),
(778, '2021-09-28 14:18:47', '030109243q / Volkswagen', 0, 30109243, 1, '170.00', '170.00', 7, 19, 8, 1460, 202114, 1),
(779, '2021-09-28 14:18:47', 'Jzz209119 / Volkswagen', 0, 0, 1, '160.00', '160.00', 7, 19, 8, 1451, 202114, 1),
(780, '2021-09-28 14:18:47', '311529 / reviam', 0, 311529, 1, '80.00', '80.00', 7, 19, 8, 2465, 202114, 1),
(781, '2021-09-28 14:18:47', '1J0407181 / Volkswagem', 0, 1, 2, '100.00', '200.00', 7, 19, 8, 2179, 202114, 1),
(782, '2021-09-28 14:18:47', 'PSL560/TECFIL', 0, 2147483647, 2, '23.60', '47.20', 7, 19, 8, 1578, 202114, 1),
(783, '2021-09-28 14:18:47', 'Gi 12/7', 0, 2147483647, 1, '23.00', '23.00', 7, 19, 8, 1658, 202114, 1),
(784, '2021-09-28 14:18:47', 'ST-V25 / NGK', 0, 2147483647, 1, '250.00', '250.00', 7, 19, 8, 1449, 202114, 1),
(785, '2021-09-28 14:18:47', 'WOE803/WEGA', 0, 2147483647, 1, '27.07', '27.07', 7, 19, 8, 1618, 202114, 1),
(786, '2021-09-28 14:18:47', 'Bkr7esbd / ngk', 0, 2147483647, 1, '152.50', '152.50', 7, 19, 8, 2884, 202114, 1),
(787, '2021-09-28 14:18:47', 'PSL78/TECFIL', 0, 2147483647, 2, '35.00', '70.00', 7, 19, 8, 1581, 202114, 1),
(788, '2021-09-28 14:18:47', 'PSL619/TECFIL', 0, 2147483647, 1, '35.00', '35.00', 7, 19, 8, 1580, 202114, 1),
(789, '2021-09-28 14:18:47', 'PSL55 / TECFIL', 0, 2147483647, 2, '20.07', '40.14', 7, 19, 8, 1579, 202114, 1),
(790, '2021-09-28 14:18:47', '5W30 / TOTAL', 0, 2147483647, 24, '32.00', '768.00', 7, 19, 8, 2438, 202114, 1),
(791, '2021-09-30 11:41:56', 'N457 / cobreq', 0, 2147483647, 2, '180.00', '360.00', 7, 19, 8, 2834, 142177, 1),
(792, '2021-09-30 11:41:56', 'PSL146/TECFIL', 0, 2147483647, 2, '28.27', '56.54', 7, 19, 8, 1586, 142177, 1),
(793, '2021-09-30 11:41:56', 'N3014 / nakata', 0, 2147483647, 2, '75.00', '150.00', 7, 19, 8, 2490, 142177, 1),
(794, '2021-09-30 11:41:56', 'Gi04/7 / tecfil', 0, 2147483647, 5, '18.30', '91.50', 7, 19, 8, 2544, 142177, 1),
(795, '2021-09-30 11:41:56', 'PSL55 / TECFIL', 0, 2147483647, 2, '20.07', '40.14', 7, 19, 8, 1579, 142177, 1),
(796, '2021-09-30 11:41:56', 'Fap9054/wega', 0, 2147483647, 1, '40.00', '40.00', 7, 19, 8, 1209, 142177, 1),
(797, '2021-09-30 11:41:56', 'LIMPA AR CONDICIONADO / ORBI-AIR', 0, 2147483647, 1, '30.00', '30.00', 7, 19, 8, 1417, 142177, 1),
(798, '2021-09-30 11:41:56', 'Acp906/tecfil', 0, 2147483647, 1, '35.00', '35.00', 7, 19, 8, 1174, 142177, 1),
(799, '2021-09-30 11:41:56', 'Rcpt12550 / trw', 0, 2147483647, 1, '160.00', '160.00', 7, 19, 8, 1344, 142177, 1),
(800, '2021-09-30 11:41:56', 'PSL619/TECFIL', 0, 2147483647, 2, '35.00', '70.00', 7, 19, 8, 1580, 142177, 1),
(801, '2021-09-30 11:41:56', 'ARL8834/TECFIL', 0, 2147483647, 2, '60.00', '120.00', 7, 19, 8, 1266, 142177, 1),
(802, '2021-09-30 11:41:56', '680184 / viemar', 0, 2147483647, 1, '150.00', '150.00', 7, 19, 8, 1552, 142177, 1),
(803, '2021-09-30 11:41:56', 'NK0229 / NAKATA ', 0, 2147483647, 2, '71.20', '142.40', 7, 19, 8, 1770, 142177, 1),
(804, '2021-09-30 11:41:56', 'Batetor dt  ecoesport  / Ksc08106s cofap ', 0, 2147483647, 2, '50.00', '100.00', 7, 19, 8, 1779, 142177, 1),
(805, '2021-09-30 11:41:56', '335019 / viemar ', 0, 2147483647, 1, '150.00', '150.00', 7, 19, 8, 1541, 142177, 1),
(806, '2021-09-30 11:41:56', 'Wo-412', 0, 2147483647, 1, '10.00', '10.00', 7, 19, 8, 1650, 142177, 1),
(807, '2021-09-30 11:41:56', 'N99272 / nakata', 0, 2147483647, 1, '112.50', '112.50', 7, 19, 8, 2770, 142177, 1),
(808, '2021-09-30 11:41:56', 'Mb2259 / mobesani', 0, 2147483647, 2, '120.00', '240.00', 7, 19, 8, 2301, 142177, 1),
(809, '2021-09-30 11:41:56', 'art6098/tecfil', 0, 2147483647, 1, '60.00', '60.00', 7, 19, 8, 1220, 142177, 1),
(810, '2021-09-30 11:41:56', 'Gi 12/7', 0, 2147483647, 1, '23.00', '23.00', 7, 19, 8, 1658, 142177, 1),
(811, '2021-09-30 11:41:56', 'PSL560/TECFIL', 0, 2147483647, 1, '23.60', '23.60', 7, 19, 8, 1578, 142177, 1),
(812, '2021-09-30 11:41:56', '844/ IGUACU', 0, 2147483647, 2, '180.00', '360.00', 7, 19, 8, 2210, 142177, 1),
(813, '2021-09-30 11:41:56', 'SC-T64 / NGK  ', 0, 2147483647, 1, '160.00', '160.00', 7, 19, 8, 1447, 142177, 1),
(814, '2021-09-30 11:41:56', 'Zkr8b-10 / ngk', 0, 2147483647, 1, '170.00', '170.00', 7, 19, 8, 1500, 142177, 1),
(815, '2021-09-30 20:05:12', 'PSL55 / TECFIL', 0, 2147483647, 5, '20.07', '100.35', 7, 19, 8, 1579, 162312, 1),
(816, '2021-09-30 20:05:12', 'N1272 / cobreq ', 0, 2147483647, 1, '180.00', '180.00', 7, 19, 8, 1351, 162312, 1),
(817, '2021-09-30 20:05:12', 'Mb416 / mobesani', 0, 2147483647, 4, '15.00', '60.00', 7, 19, 8, 2143, 162312, 1),
(818, '2021-09-30 20:05:12', 'Gi04/7 / tecfil', 0, 2147483647, 4, '18.30', '73.20', 7, 19, 8, 2544, 162312, 1),
(819, '2021-09-30 20:05:12', 'ACP126/tecfil', 0, 2147483647, 1, '35.00', '35.00', 7, 19, 8, 1187, 162312, 1),
(820, '2021-09-30 20:05:12', 'Acp103/tecfil', 0, 2147483647, 2, '35.00', '70.00', 7, 19, 8, 1172, 162312, 1),
(821, '2021-09-30 20:05:12', 'Arl4150/tecfil', 0, 0, 1, '60.00', '60.00', 7, 19, 8, 1207, 162312, 1),
(822, '2021-09-30 20:05:12', 'LIMPA AR CONDICIONADO / ORBI-AIR', 0, 2147483647, 4, '30.00', '120.00', 7, 19, 8, 1417, 162312, 1),
(823, '2021-09-30 20:05:12', 'AKX1397/WEGA', 0, 2147483647, 1, '25.45', '25.45', 7, 19, 8, 1280, 162312, 1),
(824, '2021-09-30 20:05:12', 'Jfa0k16 / wega', 0, 2147483647, 1, '75.00', '75.00', 7, 19, 8, 1288, 162312, 1),
(825, '2021-09-30 20:05:12', 'Paraflu ', 0, 2147483647, 1, '40.00', '40.00', 7, 19, 8, 2824, 162312, 1),
(826, '2021-09-30 20:05:12', 'KSC03108S / COFAP', 0, 2147483647, 2, '65.00', '130.00', 7, 19, 8, 1777, 162312, 1),
(827, '2021-09-30 20:05:12', 'NK0113 / NAKATA ', 0, 2147483647, 2, '65.00', '130.00', 7, 19, 8, 1768, 162312, 1),
(828, '2021-09-30 20:05:12', 'Mb461 / mobesani', 0, 2147483647, 1, '207.50', '207.50', 7, 19, 8, 2291, 162312, 1),
(829, '2021-09-30 20:05:12', 'Mb462 / mobesani', 0, 0, 1, '207.50', '207.50', 7, 19, 8, 2292, 162312, 1),
(830, '2021-09-30 20:05:12', 'PSL77/TECFIL', 0, 2147483647, 1, '20.00', '20.00', 7, 19, 8, 1582, 162312, 1),
(831, '2021-09-30 20:05:12', 'WR245 / wega', 0, 2147483647, 2, '70.00', '140.00', 7, 19, 8, 1278, 162312, 1),
(832, '2021-09-30 20:05:12', 'ALB1491-599 /  ALBARUS', 0, 2147483647, 2, '250.00', '500.00', 7, 19, 8, 1812, 162312, 1),
(833, '2021-09-30 20:05:12', 'Gbl1119 / cofap', 0, 2147483647, 2, '250.00', '500.00', 7, 19, 8, 1897, 162312, 1),
(834, '2021-09-30 20:05:12', '6pk2240 / dayco', 0, 2147483647, 1, '90.00', '90.00', 7, 19, 8, 2571, 162312, 1),
(835, '2021-09-30 20:05:12', 'ARL4161/TECFIL', 6935, 2147483647, 1, '50.00', '50.00', 7, 19, 8, 1216, 162312, 1),
(836, '2021-09-30 20:05:12', 'Acp906/tecfil', 0, 2147483647, 1, '35.00', '35.00', 7, 19, 8, 1174, 162312, 1),
(837, '2021-09-30 20:05:12', 'WO121 / WEGA', 0, 2147483647, 1, '36.00', '36.00', 7, 19, 8, 1942, 162312, 1),
(838, '2021-10-01 17:42:09', '5W30 / TOTAL', 0, 2147483647, 4, '32.00', '128.00', 7, 21, 4, 2438, 125129, 3),
(839, '2021-10-01 17:42:09', 'PSL146/TECFIL', 0, 2147483647, 1, '32.00', '32.00', 7, 21, 4, 1586, 125129, 3),
(840, '2021-10-01 17:42:09', 'Gi04/7 / tecfil', 0, 2147483647, 1, '30.00', '30.00', 7, 21, 4, 2544, 125129, 3),
(841, '2021-10-01 17:44:36', '5W30 / TOTAL', 0, 2147483647, 4, '32.00', '128.00', 7, 21, 4, 2438, 521134, 3),
(842, '2021-10-01 17:44:36', 'PSL146/TECFIL', 0, 2147483647, 1, '32.00', '32.00', 7, 21, 4, 1586, 521134, 3),
(843, '2021-10-01 17:44:36', 'Gi04/7 / tecfil', 0, 2147483647, 1, '30.00', '30.00', 7, 21, 4, 2544, 521134, 3),
(844, '2021-10-01 17:49:32', ' STD00004 / DELPHI', 0, 0, 1, '40.00', '40.00', 7, 19, 8, 2218, 150202, 1),
(845, '2021-10-01 19:19:12', 'WOE626 / WEGA', 0, 2147483647, 1, '60.00', '60.00', 7, 22, 11, 1639, 117036, 1),
(846, '2021-10-01 19:19:12', '15w40 / motrio', 0, 2147483647, 5, '25.00', '125.00', 7, 22, 11, 2822, 117036, 1),
(847, '2021-10-01 19:19:12', 'Arl4157 / tecfil ', 0, 2147483647, 1, '60.00', '60.00', 7, 22, 11, 1244, 117036, 1),
(848, '2021-10-01 19:19:12', 'Akx2108/wega', 0, 2147483647, 1, '30.00', '30.00', 7, 22, 11, 1166, 117036, 1),
(849, '2021-10-01 19:19:12', 'LIMPA AR CONDICIONADO / ORBI-AIR', 0, 2147483647, 1, '25.00', '25.00', 7, 22, 11, 1417, 117036, 1),
(850, '2021-10-01 19:29:26', '5W30 / TOTAL', 0, 2147483647, 4, '32.00', '128.00', 7, 23, 6, 2438, 819795, 2),
(851, '2021-10-01 19:29:26', 'Fap-9286 / wega ', 0, 2147483647, 1, '70.00', '70.00', 7, 23, 6, 1267, 819795, 2),
(852, '2021-10-01 19:29:26', 'Acp205/tecfil', 0, 2147483647, 1, '35.00', '35.00', 7, 23, 6, 1203, 819795, 2),
(853, '2021-10-01 19:29:26', 'Gi04/7 / tecfil', 0, 2147483647, 1, '35.00', '35.00', 7, 23, 6, 2544, 819795, 2),
(854, '2021-10-01 19:29:26', 'PSL146/TECFIL', 0, 2147483647, 1, '45.00', '45.00', 7, 23, 6, 1586, 819795, 2),
(855, '2021-10-01 20:05:20', '5W30 / TOTAL', 0, 2147483647, 4, '32.00', '128.00', 7, 24, 7, 2438, 201703, 2),
(856, '2021-10-01 20:05:20', 'PSL55 / TECFIL', 0, 2147483647, 1, '32.00', '32.00', 7, 24, 7, 1579, 201703, 2),
(857, '2021-10-01 20:05:20', 'Acp367/tecfil', 0, 2147483647, 1, '60.00', '60.00', 7, 24, 7, 1211, 201703, 2),
(858, '2021-10-01 20:05:20', 'Arl1655/tecfil ', 0, 2147483647, 1, '40.00', '40.00', 7, 24, 7, 1182, 201703, 2),
(859, '2021-10-01 20:05:20', 'LIMPA AR CONDICIONADO / ORBI-AIR', 0, 2147483647, 1, '60.00', '60.00', 7, 24, 7, 1417, 201703, 2),
(860, '2021-10-01 20:05:20', 'Gi04/7 / tecfil', 0, 2147483647, 1, '30.00', '30.00', 7, 24, 7, 2544, 201703, 2),
(861, '2021-10-01 20:05:20', 'RCPT13850/ TRW', 0, 2147483647, 1, '180.00', '180.00', 7, 24, 7, 1318, 201703, 2),
(862, '2021-10-01 20:05:20', 'Lmm64193 / magneti marelli', 0, 2147483647, 1, '20.00', '20.00', 7, 24, 7, 2537, 201703, 2),
(863, '2021-10-01 20:26:16', 'C2178 / controil', 0, 2147483647, 1, '280.00', '280.00', 7, 19, 8, 2732, 206214, 1),
(864, '2021-10-01 20:26:16', 'RCPT02840/ TRW', 0, 2147483647, 1, '87.50', '87.50', 7, 19, 8, 1310, 206214, 1),
(865, '2021-10-01 20:26:16', 'PW984/WILLTEC', 0, 2147483647, 1, '157.50', '157.50', 7, 19, 8, 1313, 206214, 1),
(866, '2021-10-01 20:26:16', 'Hf705a / hipperfreios', 0, 2147483647, 1, '290.00', '290.00', 7, 19, 8, 1672, 206214, 1),
(867, '2021-10-01 20:26:16', 'PD/42', 0, 2147483647, 2, '80.00', '160.00', 7, 19, 8, 1384, 206214, 1),
(868, '2021-10-01 20:26:16', 'Hfcd23 / hipperfreios', 0, 2147483647, 1, '180.00', '180.00', 7, 19, 8, 2744, 206214, 1),
(869, '2021-10-01 20:26:16', '335323 / viemar', 0, 2147483647, 3, '180.00', '540.00', 7, 19, 8, 1982, 206214, 1),
(870, '2021-10-01 20:26:16', '545011362R1/ RENAULT group ', 0, 545011362, 3, '420.00', '1260.00', 7, 19, 8, 2086, 206214, 1),
(871, '2021-10-01 20:26:16', 'Pel119/ TECFIL', 0, 2147483647, 1, '45.00', '45.00', 7, 19, 8, 1605, 206214, 1),
(872, '2021-10-01 20:26:16', 'Acp205/tecfil', 0, 2147483647, 2, '35.00', '70.00', 7, 19, 8, 1203, 206214, 1),
(873, '2021-10-01 20:26:16', 'Fap-9286 / wega ', 0, 2147483647, 2, '70.00', '140.00', 7, 19, 8, 1267, 206214, 1),
(874, '2021-10-02 13:13:50', 'JFO 0210-1 / WEGA ', 0, 2147483647, 1, '15.00', '15.00', 7, 19, 8, 1616, 320714, 1),
(875, '2021-10-02 13:13:50', 'LIMPA AR CONDICIONADO / ORBI-AIR', 0, 2147483647, 5, '60.00', '300.00', 7, 19, 8, 1417, 320714, 1),
(876, '2021-10-02 13:13:50', 'Gi04/7 / tecfil', 0, 2147483647, 3, '30.00', '90.00', 7, 19, 8, 2544, 320714, 1),
(877, '2021-10-02 13:13:50', '680494 / viemar', 0, 2147483647, 1, '150.00', '150.00', 7, 19, 8, 2005, 320714, 1),
(878, '2021-10-02 13:13:50', '5W30 / TOTAL', 0, 2147483647, 4, '35.00', '140.00', 7, 19, 8, 2438, 320714, 1),
(879, '2021-10-02 13:13:50', 'FAP3286 / WEGA', 0, 2147483647, 2, '60.00', '120.00', 7, 19, 8, 1264, 320714, 1),
(880, '2021-10-02 13:13:50', 'ACP126/tecfil', 0, 2147483647, 2, '35.00', '70.00', 7, 19, 8, 1187, 320714, 1),
(881, '2021-10-02 13:13:50', 'PSL619/TECFIL', 0, 2147483647, 2, '35.00', '70.00', 7, 19, 8, 1580, 320714, 1),
(882, '2021-10-02 13:13:50', 'N93035 / nakata', 0, 2147483647, 1, '140.00', '140.00', 7, 19, 8, 2711, 320714, 1),
(883, '2021-10-02 13:13:50', '7796 / nytron ', 0, 2147483647, 3, '130.00', '390.00', 7, 19, 8, 1468, 320714, 1),
(884, '2021-10-02 13:13:50', '111sp170h / dayco ', 0, 2147483647, 2, '60.00', '120.00', 7, 19, 8, 1458, 320714, 1),
(885, '2021-10-02 13:13:50', 'Paraflu ', 0, 2147483647, 1, '40.00', '40.00', 7, 19, 8, 2824, 320714, 1),
(886, '2021-10-02 13:13:50', 'JFO0506 / wega', 0, 2147483647, 1, '80.00', '80.00', 7, 19, 8, 1637, 320714, 1),
(887, '2021-10-02 13:13:50', '1114 / nytron ', 0, 2147483647, 1, '60.00', '60.00', 7, 19, 8, 1518, 320714, 1),
(888, '2021-10-02 13:13:50', 'PSL78/TECFIL', 0, 2147483647, 1, '35.00', '35.00', 7, 19, 8, 1581, 320714, 1),
(889, '2021-10-02 13:13:50', 'JFC215 / WEGA', 0, 2147483647, 1, '72.50', '72.50', 7, 19, 8, 1944, 320714, 1),
(890, '2021-10-02 13:13:50', 'Arl4150/tecfil', 0, 0, 1, '40.00', '40.00', 7, 19, 8, 1207, 320714, 1),
(891, '2021-10-02 14:36:34', 'PSL321/TECFIL', 0, 2147483647, 1, '26.10', '26.10', 7, 19, 8, 1583, 180627, 1),
(892, '2021-10-02 14:36:34', 'Gi04/7 / tecfil', 0, 2147483647, 2, '30.00', '60.00', 7, 19, 8, 2544, 180627, 1),
(893, '2021-10-02 14:36:34', 'PSL55 / TECFIL', 0, 2147483647, 1, '32.00', '32.00', 7, 19, 8, 1579, 180627, 1),
(894, '2021-10-02 14:36:34', 'Acp906/tecfil', 0, 2147483647, 1, '35.00', '35.00', 7, 19, 8, 1174, 180627, 1),
(895, '2021-10-02 14:36:34', 'LIMPA AR CONDICIONADO / ORBI-AIR', 0, 2147483647, 1, '60.00', '60.00', 7, 19, 8, 1417, 180627, 1),
(896, '2021-10-02 14:36:34', 'Fap9054/wega', 0, 2147483647, 2, '40.00', '80.00', 7, 19, 8, 1209, 180627, 1),
(897, '2021-10-02 14:36:34', 'WO121 / WEGA', 0, 2147483647, 1, '36.00', '36.00', 7, 19, 8, 1942, 180627, 1),
(898, '2021-10-04 13:23:49', 'Ks403 / gates', 0, 2147483647, 1, '650.00', '650.00', 7, 19, 8, 1424, 131176, 1),
(899, '2021-10-04 13:23:49', 'PSL47/TECFIL', 0, 2147483647, 1, '30.00', '30.00', 7, 19, 8, 1595, 131176, 1),
(900, '2021-10-04 13:23:49', 'Arl9600/tecfil', 0, 2147483647, 1, '30.00', '30.00', 7, 19, 8, 1189, 131176, 1),
(901, '2021-10-04 13:23:49', 'JFC199-1 / WEGA', 0, 2147483647, 1, '150.00', '150.00', 7, 19, 8, 1628, 131176, 1),
(902, '2021-10-04 13:23:49', 'AKX1397/WEGA', 0, 2147483647, 1, '25.45', '25.45', 7, 19, 8, 1280, 131176, 1),
(903, '2021-10-04 13:23:49', 'LIMPA AR CONDICIONADO / ORBI-AIR', 0, 2147483647, 1, '60.00', '60.00', 7, 19, 8, 1417, 131176, 1),
(904, '2021-10-04 13:23:49', '6pk1820 / continental', 0, 2147483647, 2, '90.00', '180.00', 7, 19, 8, 2567, 131176, 1),
(905, '2021-10-04 13:23:49', 'Mb6452 / mobesani', 0, 2147483647, 2, '68.90', '137.80', 7, 19, 8, 2524, 131176, 1),
(906, '2021-10-04 13:23:49', '5310816100 / ina', 0, 2147483647, 1, '150.00', '150.00', 7, 19, 8, 2513, 131176, 1),
(907, '2021-10-04 13:23:49', '129p8s220h / dayco', 0, 2147483647, 1, '170.00', '170.00', 7, 19, 8, 1457, 131176, 1),
(908, '2021-10-04 13:23:49', 'Gc4270 / gauss', 0, 2147483647, 1, '2500.00', '2500.00', 7, 19, 8, 1476, 131176, 1),
(909, '2021-10-04 19:15:35', 'Gi04/7 / tecfil', 0, 2147483647, 2, '30.00', '60.00', 7, 19, 8, 2544, 158974, 1),
(910, '2021-10-04 19:15:35', '111sp170h / dayco ', 0, 2147483647, 1, '60.00', '60.00', 7, 19, 8, 1458, 158974, 1),
(911, '2021-10-04 19:15:35', 'Paraflu ', 0, 2147483647, 2, '40.00', '80.00', 7, 19, 8, 2824, 158974, 1),
(912, '2021-10-04 19:15:35', '300190 / reviam', 0, 300190, 1, '180.00', '180.00', 7, 19, 8, 2464, 158974, 1),
(913, '2021-10-04 19:15:35', '300175 / reviam', 0, 300175, 1, '80.00', '80.00', 7, 19, 8, 2467, 158974, 1),
(914, '2021-10-04 19:15:35', '05908/palio Fire', 0, 45908, 1, '12.50', '12.50', 7, 19, 8, 2825, 158974, 1),
(915, '2021-10-04 19:15:35', '75613 / sabo', 0, 2147483647, 1, '22.00', '22.00', 7, 19, 8, 2136, 158974, 1),
(916, '2021-10-04 19:15:35', '3pk905 / dayco', 0, 2147483647, 1, '19.57', '19.57', 7, 19, 8, 2584, 158974, 1),
(917, '2021-10-04 19:15:35', '5pk1190 / dayco', 0, 2147483647, 1, '90.00', '90.00', 7, 19, 8, 2554, 158974, 1),
(918, '2021-10-04 19:15:35', 'BATEDOR DT PEUGEOT 206 / KSC17102S COFAP', 0, 2147483647, 2, '50.00', '100.00', 7, 19, 8, 1760, 158974, 1),
(919, '2021-10-04 19:15:35', 'N99001 / nakata', 0, 2147483647, 2, '80.00', '160.00', 7, 19, 8, 2485, 158974, 1),
(920, '2021-10-04 19:15:35', 'PSL78/TECFIL', 0, 2147483647, 1, '35.00', '35.00', 7, 19, 8, 1581, 158974, 1),
(921, '2021-10-04 19:15:35', 'PSL55 / TECFIL', 0, 2147483647, 1, '32.00', '32.00', 7, 19, 8, 1579, 158974, 1),
(922, '2021-10-04 19:15:35', 'Nkf8070 / nakata', 0, 2147483647, 2, '350.00', '700.00', 7, 19, 8, 2427, 158974, 1),
(923, '2021-10-04 19:15:35', 'FI / 219-cpa / FRASLE', 0, 2147483647, 1, '280.00', '280.00', 7, 19, 8, 2226, 158974, 1),
(924, '2021-10-04 19:15:35', 'Hf37a / hipperfreios', 0, 2147483647, 1, '290.00', '290.00', 7, 19, 8, 1848, 158974, 1),
(925, '2021-10-04 20:13:59', 'FI/330cpa / Frasle ', 0, 2147483647, 1, '390.00', '390.00', 7, 19, 8, 2235, 326396, 1),
(926, '2021-10-04 20:13:59', 'Paraflu ', 0, 2147483647, 2, '40.00', '80.00', 7, 19, 8, 2824, 326396, 1),
(927, '2021-10-04 20:30:04', 'M48fd / moura ', 0, 2147483647, 1, '0.00', '0.00', 4, 19, 8, 2894, 125719, 1),
(928, '2021-10-04 20:30:04', 'Hnp60hd / heliar', 0, 2147483647, 1, '700.00', '700.00', 4, 19, 8, 2898, 125719, 1),
(929, '2021-10-04 20:30:04', 'M60gd / moura', 0, 2147483647, 1, '704.22', '704.22', 4, 19, 8, 2891, 125719, 1),
(930, '2021-10-04 20:30:04', 'N-1375 / cobreq ', 0, 2147483647, 1, '250.00', '250.00', 4, 19, 8, 1326, 125719, 1),
(931, '2021-10-06 14:18:24', 'Mb6452 / mobesani', 0, 2147483647, 2, '68.90', '137.80', 7, 19, 8, 2524, 784891, 1),
(932, '2021-10-06 14:18:24', '52093284 / gm', 0, 52093284, 1, '550.00', '550.00', 7, 19, 8, 1914, 784891, 1),
(933, '2021-10-06 14:18:24', '52093285 / gm', 0, 52093285, 1, '730.00', '730.00', 7, 19, 8, 1915, 784891, 1),
(934, '2021-10-06 14:18:24', '95227628 / gm ', 0, 95227628, 2, '160.00', '320.00', 7, 19, 8, 2288, 784891, 1),
(935, '2021-10-06 14:18:24', 'Ksc04119s / cofao', 0, 2147483647, 2, '94.77', '189.54', 7, 19, 8, 2828, 784891, 1),
(936, '2021-10-06 14:18:24', 'Gi04/7 / tecfil', 0, 2147483647, 2, '30.00', '60.00', 7, 19, 8, 2544, 784891, 1),
(937, '2021-10-06 14:18:24', 'Woe710', 0, 2147483647, 1, '23.00', '23.00', 7, 19, 8, 1619, 784891, 1),
(938, '2021-10-06 14:18:24', '5w30 / eurorepar', 0, 2147483647, 3, '49.75', '149.25', 7, 19, 8, 2911, 784891, 1),
(939, '2021-10-06 14:18:24', '11026BO / spaal', 0, 2147483647, 1, '60.63', '60.63', 7, 19, 8, 2133, 784891, 1),
(940, '2021-10-06 14:18:24', 'Fap9054/wega', 0, 2147483647, 1, '40.00', '40.00', 7, 19, 8, 1209, 784891, 1),
(941, '2021-10-06 14:18:24', 'PSL55 / TECFIL', 0, 2147483647, 1, '32.00', '32.00', 7, 19, 8, 1579, 784891, 1),
(942, '2021-10-06 14:18:24', 'Acp906/tecfil', 0, 2147483647, 1, '35.00', '35.00', 7, 19, 8, 1174, 784891, 1),
(943, '2021-10-06 14:18:24', '20w50 / petronas ', 0, 2147483647, 3, '30.00', '90.00', 7, 19, 8, 2818, 784891, 1),
(944, '2021-10-06 14:18:24', 'N-1483 / cobreq ', 0, 2147483647, 1, '150.00', '150.00', 7, 19, 8, 1328, 784891, 1),
(945, '2021-10-06 14:18:24', 'LIMPA AR CONDICIONADO / ORBI-AIR', 0, 2147483647, 1, '60.00', '60.00', 7, 19, 8, 1417, 784891, 1),
(946, '2021-10-06 14:22:40', 'WOE803/WEGA', 0, 2147483647, 1, '27.07', '27.07', 7, 19, 3, 1618, 231146, 1),
(947, '2021-10-06 14:22:40', '5w30 / eurorepar', 0, 2147483647, 4, '49.75', '199.00', 7, 19, 3, 2911, 231146, 1),
(948, '2021-10-06 15:02:02', 'Paraflu ', 0, 2147483647, 1, '40.00', '40.00', 7, 19, 1, 2824, 194058, 1),
(949, '2021-10-06 20:29:54', 'Arl2207 / tecfil', 0, 2147483647, 1, '70.00', '63.00', 7, 22, 1, 1253, 493772, 1),
(950, '2021-10-06 20:29:54', 'PSL47/TECFIL', 0, 2147483647, 1, '30.00', '30.00', 7, 22, 1, 1595, 493772, 1),
(951, '2021-10-06 20:29:54', '15w40 / motrio', 0, 2147483647, 8, '25.00', '200.00', 7, 22, 1, 2822, 493772, 1),
(952, '2021-10-06 20:29:54', 'SC-T09/ NGK', 0, 2147483647, 1, '150.00', '150.00', 7, 22, 1, 1445, 493772, 1),
(953, '2021-10-06 20:29:54', 'Bkr6e-d / ngk', 0, 2147483647, 1, '117.50', '117.50', 7, 22, 1, 1499, 493772, 1),
(954, '2021-10-06 20:29:54', 'LIMPA AR CONDICIONADO / ORBI-AIR', 0, 2147483647, 1, '60.00', '60.00', 7, 22, 1, 1417, 493772, 1),
(955, '2021-10-07 13:13:00', 'N-1368 / cobreq', 0, 2147483647, 1, '180.00', '180.00', 7, 19, 9, 1295, 452741, 1),
(956, '2021-10-07 13:30:45', '5w30 / eurorepar', 0, 2147483647, 4, '32.00', '128.00', 7, 19, 5, 2911, 117261, 2),
(957, '2021-10-07 13:30:45', 'PSL560/TECFIL', 0, 2147483647, 1, '32.00', '32.00', 7, 19, 5, 1578, 117261, 2),
(958, '2021-10-07 13:30:45', 'Gi04/7 / tecfil', 0, 2147483647, 1, '30.00', '30.00', 7, 19, 5, 2544, 117261, 2),
(959, '2021-10-07 13:30:45', 'Acp303/tecfil', 0, 2147483647, 1, '30.00', '30.00', 7, 19, 5, 1212, 117261, 2),
(960, '2021-10-07 13:30:45', 'LIMPA AR CONDICIONADO / ORBI-AIR', 0, 2147483647, 1, '90.00', '90.00', 7, 19, 5, 1417, 117261, 2),
(961, '2021-10-07 13:30:45', 'FAP3288 / wega', 0, 2147483647, 1, '40.00', '40.00', 7, 19, 5, 1277, 117261, 2),
(962, '2021-10-07 13:34:40', ' STD00004 / DELPHI', 0, 0, 2, '30.00', '60.00', 7, 19, 8, 2218, 137990, 1),
(963, '2021-10-07 13:57:09', '5w30 / eurorepar', 0, 2147483647, 4, '32.00', '128.00', 7, 19, 5, 2911, 166898, 2),
(964, '2021-10-07 13:57:09', 'PSL560/TECFIL', 0, 2147483647, 1, '32.00', '32.00', 7, 19, 5, 1578, 166898, 2),
(965, '2021-10-07 13:57:09', 'Acp303/tecfil', 0, 2147483647, 1, '30.00', '30.00', 7, 19, 5, 1212, 166898, 2),
(966, '2021-10-07 13:57:09', 'LIMPA AR CONDICIONADO / ORBI-AIR', 0, 2147483647, 1, '90.00', '90.00', 7, 19, 5, 1417, 166898, 2),
(967, '2021-10-07 13:57:09', 'FAP3288 / wega', 0, 2147483647, 1, '60.00', '60.00', 7, 19, 5, 1277, 166898, 2),
(968, '2021-10-07 13:57:09', 'Gi04/7 / tecfil', 0, 2147483647, 1, '30.00', '30.00', 7, 19, 5, 2544, 166898, 2),
(969, '2021-10-07 19:32:47', 'Pd/1492 / frasle', 0, 2147483647, 1, '220.00', '220.00', 7, 19, 8, 1409, 408913, 1),
(970, '2021-10-07 19:32:47', 'NK0229 / NAKATA ', 0, 2147483647, 2, '71.20', '142.40', 7, 19, 8, 1770, 408913, 1),
(971, '2021-10-07 19:32:47', 'Sp363 / monroe', 0, 2147483647, 2, '400.00', '800.00', 7, 19, 8, 1862, 408913, 1),
(972, '2021-10-07 19:32:47', '7796 / nytron ', 0, 2147483647, 1, '130.00', '130.00', 7, 19, 8, 1468, 408913, 1),
(973, '2021-10-07 19:32:47', '111sp170h / dayco ', 0, 2147483647, 1, '60.00', '60.00', 7, 19, 8, 1458, 408913, 1),
(974, '2021-10-07 19:40:00', 'FAP3286 / WEGA', 0, 2147483647, 1, '50.00', '50.00', 7, 19, 1, 1264, 282638, 2),
(975, '2021-10-07 19:40:00', 'Gi04/7 / tecfil', 0, 2147483647, 1, '40.00', '40.00', 7, 19, 1, 2544, 282638, 2),
(976, '2021-10-07 19:40:00', 'PSL619/TECFIL', 0, 2147483647, 1, '32.00', '32.00', 7, 19, 1, 1580, 282638, 2),
(977, '2021-10-07 19:40:00', '5w30 / eurorepar', 0, 2147483647, 4, '32.00', '128.00', 7, 19, 1, 2911, 282638, 2),
(978, '2021-10-07 19:40:00', '111sp170h / dayco ', 0, 2147483647, 1, '70.00', '70.00', 7, 19, 1, 1458, 282638, 2),
(979, '2021-10-07 19:40:00', 'LIMPA AR CONDICIONADO / ORBI-AIR', 0, 2147483647, 1, '60.00', '60.00', 7, 19, 1, 1417, 282638, 2),
(980, '2021-10-07 19:40:00', '09300 / sabo', 0, 2147483647, 1, '80.00', '80.00', 7, 19, 1, 2835, 282638, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ordem_servicos`
--

CREATE TABLE `ordem_servicos` (
  `id` int(11) NOT NULL,
  `data` timestamp NULL DEFAULT current_timestamp(),
  `mao_obra` decimal(10,2) DEFAULT NULL,
  `obs` varchar(225) DEFAULT NULL,
  `clientes_id` int(11) NOT NULL,
  `mecanicos_id` int(11) NOT NULL,
  `servicos_id` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ordem_servicos`
--

INSERT INTO `ordem_servicos` (`id`, `data`, `mao_obra`, `obs`, `clientes_id`, `mecanicos_id`, `servicos_id`, `status`) VALUES
(485, '2021-09-18 12:56:10', '20.00', '', 19, 1, 10, 1),
(486, '2021-09-18 12:56:10', '20.00', '', 19, 1, 11, 1),
(487, '2021-09-18 12:56:10', '20.00', '', 19, 1, 12, 1),
(488, '2021-09-21 20:34:43', '0.00', '', 19, 1, 8, 1),
(489, '2021-09-22 19:12:53', '0.00', '', 19, 8, 8, 1),
(490, '2021-09-23 20:37:28', '0.00', '', 19, 8, 8, 1),
(491, '2021-09-25 12:01:15', '180.00', '', 19, 8, 8, 1),
(492, '2021-09-27 18:48:50', '0.00', '', 19, 8, 8, 1),
(493, '2021-09-27 20:02:26', '0.00', '', 19, 8, 8, 1),
(494, '2021-09-28 14:18:35', '0.00', '', 19, 8, 8, 1),
(495, '2021-09-30 11:41:41', '0.00', '', 19, 8, 8, 1),
(496, '2021-09-30 20:04:55', '0.00', '', 19, 8, 8, 1),
(497, '2021-10-01 17:35:41', '0.00', '', 19, 4, 8, 1),
(498, '2021-10-01 17:38:47', '0.00', '', 21, 4, 8, 1),
(499, '2021-10-01 17:43:27', '0.00', '', 21, 4, 8, 1),
(500, '2021-10-01 17:48:58', '0.00', '', 19, 8, 8, 1),
(501, '2021-10-01 19:14:02', '0.00', '', 22, 11, 8, 1),
(502, '2021-10-01 19:17:08', '0.00', '', 22, 11, 8, 1),
(503, '2021-10-01 19:18:47', '0.00', '', 22, 11, 8, 1),
(504, '2021-10-01 19:28:42', '0.00', '', 23, 6, 11, 1),
(505, '2021-10-01 20:00:53', '0.00', '', 24, 7, 1, 1),
(506, '2021-10-01 20:02:30', '0.00', '', 24, 7, 1, 1),
(507, '2021-10-01 20:26:04', '0.00', '', 19, 8, 8, 1),
(508, '2021-10-02 13:09:18', '0.00', '', 19, 8, 8, 1),
(509, '2021-10-02 14:36:22', '0.00', '', 19, 8, 8, 1),
(510, '2021-10-04 13:23:39', '0.00', '', 19, 8, 8, 1),
(511, '2021-10-04 19:15:20', '0.00', '', 19, 8, 8, 1),
(512, '2021-10-04 20:13:48', '0.00', '', 19, 8, 8, 1),
(513, '2021-10-04 20:29:52', '0.00', '', 19, 8, 8, 1),
(514, '2021-10-06 14:18:10', '0.00', '', 19, 8, 8, 1),
(515, '2021-10-06 14:22:26', '0.00', '', 19, 3, 8, 1),
(516, '2021-10-06 14:28:37', '0.00', '', 19, 3, 8, 1),
(517, '2021-10-06 15:01:03', '54.00', '', 19, 1, 1, 1),
(518, '2021-10-06 15:01:03', '54.00', '', 19, 1, 2, 1),
(519, '2021-10-06 20:29:22', '200.00', '', 22, 1, 8, 1),
(520, '2021-10-07 13:12:50', '0.00', '', 19, 9, 8, 1),
(521, '2021-10-07 13:25:03', '0.00', '', 19, 5, 1, 1),
(522, '2021-10-07 13:25:03', '0.00', '', 19, 5, 11, 1),
(523, '2021-10-07 13:31:58', '50.00', '', 19, 8, 8, 1),
(524, '2021-10-07 13:42:14', '0.00', '', 19, 5, 1, 1),
(525, '2021-10-07 13:43:23', '0.00', '', 19, 5, 1, 1),
(526, '2021-10-07 13:43:23', '0.00', '', 19, 5, 11, 1),
(527, '2021-10-07 13:46:31', '0.00', '', 19, 5, 1, 1),
(528, '2021-10-07 13:46:31', '0.00', '', 19, 5, 11, 1),
(529, '2021-10-07 13:48:49', '0.00', '', 19, 5, 1, 1),
(530, '2021-10-07 13:48:49', '0.00', '', 19, 5, 11, 1),
(531, '2021-10-07 13:49:43', '0.00', '', 19, 5, 1, 1),
(532, '2021-10-07 13:49:43', '0.00', '', 19, 5, 11, 1),
(533, '2021-10-07 13:55:52', '0.00', '', 19, 5, 1, 1),
(534, '2021-10-07 13:55:52', '0.00', '', 19, 5, 11, 1),
(535, '2021-10-07 19:32:28', '0.00', '', 19, 8, 8, 1),
(536, '2021-10-07 19:37:37', '0.00', '', 19, 1, 1, 1),
(537, '2021-10-07 19:37:37', '0.00', '', 19, 1, 11, 1),
(538, '2021-10-07 19:38:04', '100.00', '', 19, 1, 1, 1),
(539, '2021-10-07 19:38:04', '100.00', '', 19, 1, 11, 1),
(540, '2021-10-07 19:38:46', '0.00', '', 19, 1, 1, 1),
(541, '2021-10-07 19:38:46', '0.00', '', 19, 1, 11, 1),
(542, '2021-10-07 19:39:12', '100.00', '', 19, 1, 1, 1),
(543, '2021-10-07 19:39:12', '100.00', '', 19, 1, 11, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `data` timestamp NULL DEFAULT current_timestamp(),
  `codigo` int(11) DEFAULT NULL,
  `barra` int(11) DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `qtd` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `valor_compra` decimal(10,2) DEFAULT NULL,
  `subtotal` varchar(45) DEFAULT NULL,
  `produtos_id` int(10) NOT NULL,
  `usuarios_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`id`, `data`, `codigo`, `barra`, `nome`, `qtd`, `status`, `valor_compra`, `subtotal`, `produtos_id`, `usuarios_id`) VALUES
(226, '2021-09-22 19:15:08', 0, 2147483647, 'Gp30605 / cofap', '2', 1, '350.00', '700', 2867, 7),
(227, '2021-09-27 12:57:28', 0, 2147483647, 'Br13102201517 / monroe', '1', 1, '36.00', '36', 2279, 7),
(228, '2021-10-04 18:06:52', 0, 2147483647, 'Gc4270 / gauss', '4', 1, '0.00', '0', 1476, 7),
(229, '2021-10-04 18:06:52', 0, 2147483647, '680329 / viemar', '2', 1, '0.00', '0', 1566, 7),
(230, '2021-10-04 18:06:52', 0, 2147483647, '335311 / viemar', '1', 1, '0.00', '0', 1568, 7),
(231, '2021-10-04 18:06:52', 0, 2147483647, 'JFC199-1 / WEGA', '2', 1, '0.00', '0', 1628, 7),
(232, '2021-10-04 18:06:52', 0, 2147483647, 'Rpta02190 / trw', '2', 1, '0.00', '0', 2656, 7),
(233, '2021-10-04 18:06:52', 0, 2147483647, 'C2178 / controil', '2', 1, '0.00', '0', 2732, 7),
(234, '2021-10-04 18:06:52', 0, 2147483647, 'Mb2242 / mobesani', '2', 1, '0.00', '0', 2910, 7),
(235, '2021-10-04 18:06:52', 0, 2147483647, 'T130023 / tsa', '4', 1, '0.00', '0', 2908, 7),
(236, '2021-10-04 18:06:52', 0, 2147483647, 'N1272 / cobreq ', '6', 1, '0.00', '0', 1351, 7),
(237, '2021-10-04 18:06:52', 0, 2147483647, 'FAP3286 / WEGA', '12', 1, '0.00', '0', 1264, 7),
(238, '2021-10-04 18:06:52', 0, 2147483647, 'TY/327-cp / Frasle ', '3', 1, '0.00', '0', 2243, 7),
(239, '2021-10-04 18:06:52', 0, 2147483647, 'N99129 / nakata', '3', 1, '0.00', '0', 2722, 7),
(240, '2021-10-04 18:06:52', 0, 2147483647, 'N99272 / nakata', '4', 1, '0.00', '0', 2770, 7),
(241, '2021-10-04 18:06:52', 0, 2147483647, 'Woe710', '16', 1, '0.00', '0', 1619, 7),
(242, '2021-10-04 18:06:52', 0, 2147483647, 'Bwd6000 / TRw', '4', 1, '0.00', '0', 2708, 7),
(243, '2021-10-04 18:06:52', 0, 2147483647, 'Br13102201517 / monroe', '12', 1, '0.00', '0', 2279, 7),
(244, '2021-10-04 18:06:52', 0, 2147483647, 'MG-594 /  MG freios ', '1', 1, '0.00', '0', 2255, 7),
(245, '2021-10-04 18:30:37', 0, 2147483647, 'PSL78/TECFIL', '36', 1, '0.00', '0', 1581, 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(10) NOT NULL,
  `barra` varchar(50) NOT NULL,
  `codigo` int(10) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `qtd` int(10) NOT NULL,
  `valor_compra` decimal(10,2) NOT NULL,
  `valor_venda` decimal(10,2) NOT NULL,
  `estoque` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `foto` varchar(255) NOT NULL,
  `data` timestamp NULL DEFAULT current_timestamp(),
  `usuarios_id` int(11) NOT NULL,
  `categorias_id` int(11) NOT NULL,
  `aplicacao` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `barra`, `codigo`, `nome`, `qtd`, `valor_compra`, `valor_venda`, `estoque`, `status`, `foto`, `data`, `usuarios_id`, `categorias_id`, `aplicacao`) VALUES
(1162, '7891342013826', 0, 'Acp809/tecfil ', 1, '15.00', '35.00', 9, 0, './imgs/2021-05-19_15_53_22.jpg', '2021-05-19 18:53:22', 7, 39, 'Peugeout 308 / Citroen air cross 10 '),
(1165, '7891342007986', 0, 'Acp903/tecfil', 1, '11.00', '35.00', 13, 0, './imgs/2021-05-20_08_47_02.jpg', '2021-05-20 11:43:11', 7, 39, 'Citroen C4 1.6 2014 / Peugeot 307 2.0 2007 '),
(1166, '7798186474908', 0, 'Akx2108/wega', 1, '15.00', '30.00', 7, 0, './imgs/2021-05-20_08_52_28.jpg', '2021-05-20 11:52:28', 7, 39, 'Jeep compass diesel 2016 / jeep renegade flex 1.8 2016 / fiat toro flex e diesel '),
(1167, '7891342011426', 0, 'Acp979/tecfil', 1, '14.00', '35.00', 9, 0, './imgs/2021-05-20_08_57_02.jpg', '2021-05-20 11:57:02', 7, 39, 'Hyunday i30'),
(1168, '7798001690582', 0, 'Jfa-0h12/wega', 1, '25.00', '60.00', 4, 1, './imgs/2021-05-20_09_00_13.jpg', '2021-05-20 12:00:13', 4, 41, 'Hyundai tucson / kia sportage / kia cerato '),
(1169, '7891342007955', 0, 'Acp800/tecfil', 1, '15.00', '35.00', 6, 0, './imgs/2021-05-20_09_01_23.jpg', '2021-05-20 12:01:23', 7, 39, 'Peugeot 206 207 / Hoggar CORTADO'),
(1170, '7892415904737', 0, 'La611/s - acp481', 1, '14.00', '35.00', 5, 1, './imgs/2021-05-20_09_05_51.jpg', '2021-05-20 12:05:51', 4, 39, 'Mitsubishi Pajero Tr4'),
(1171, '7891342014946', 0, 'Arl2341/tecfil', 1, '25.00', '60.00', 0, 0, './imgs/2021-05-20_09_07_48.jpg', '2021-05-20 12:07:48', 7, 41, 'Hynday ELANTRA / CERATO /2.0 2013'),
(1172, '7891342005913', 0, 'Acp103/tecfil', 1, '15.00', '35.00', 23, 0, './imgs/2021-05-20_09_09_41.jpg', '2021-05-20 12:09:41', 7, 39, 'Fiat PALIO weekend / siena / strada /'),
(1173, '7798001697543', 0, 'Jfa-k22/wega ', 1, '25.00', '60.00', 2, 1, './imgs/2021-05-20_09_11_18.jpg', '2021-05-20 12:11:18', 4, 41, 'Kia soul'),
(1174, '7891342012874', 0, 'Acp906/tecfil', 1, '15.00', '35.00', 23, 0, './imgs/2021-05-20_09_13_55.jpg', '2021-05-20 12:13:55', 4, 39, 'Fiat uno / Fiat Mobi / L200 TRITON'),
(1175, '7798001697352', 0, 'Akx0k21/wega', 1, '25.00', '60.00', 2, 1, './imgs/2021-05-20_09_15_20.jpg', '2021-05-20 12:15:20', 4, 41, 'Kia cerato / Hyundai i30'),
(1176, '7891342010771', 0, 'Acp707/tecfil', 1, '15.00', '35.00', 15, 1, './imgs/2021-05-20_09_17_21.jpg', '2021-05-20 12:17:21', 4, 39, 'Honda fit'),
(1177, '7798001695884', 0, 'Jfa-0118/Wega', 1, '25.00', '60.00', 2, 1, './imgs/2021-05-20_09_18_04.jpg', '2021-05-20 12:18:04', 4, 41, 'Nissan frontier'),
(1178, '7891342010757', 0, 'Acp708/tecfil', 1, '15.00', '35.00', 2, 0, './imgs/2021-05-20_09_22_47.jpg', '2021-05-20 12:22:47', 7, 39, 'Honda civic 2013>'),
(1179, '7891342013741', 0, 'Arl1654/tecfil', 1, '25.00', '60.00', 14, 1, './imgs/2021-05-20_09_27_08.jpg', '2021-05-20 12:27:08', 4, 41, 'Tida 1.8 '),
(1182, '7891342013758', 0, 'Arl1655/tecfil ', 1, '25.00', '40.00', 14, 1, './imgs/2021-05-20_09_32_58.jpg', '2021-05-20 12:32:58', 4, 41, 'Nissan march / versa '),
(1183, '7891342015721', 0, 'Acp559/tecfil', 1, '15.00', '35.00', 8, 1, './imgs/2021-05-20_09_36_22.jpg', '2021-05-20 12:36:22', 4, 39, 'Renault SANDERO'),
(1184, '7891342010924', 0, 'Acp550/tecfil', 1, '15.00', '35.00', 7, 1, './imgs/2021-05-20_09_39_19.jpg', '2021-05-20 12:39:19', 4, 39, 'Renault clio / Renault symbol '),
(1185, '7891342015547', 0, 'Arl1658/tecfil', 1, '25.00', '60.00', 11, 0, './imgs/2021-05-20_09_40_56.jpg', '2021-05-20 12:40:56', 7, 41, 'Nissan march / sentra'),
(1186, '3227330073024', 0, 'Acp843/tecfil', 1, '15.00', '35.00', 14, 1, './imgs/2021-05-20_09_43_42.jpg', '2021-05-20 12:43:42', 4, 39, 'Chevrolet s10 2012>'),
(1187, '7891342012294', 0, 'ACP126/tecfil', 1, '15.00', '35.00', 23, 0, './imgs/2021-05-20_09_48_06.jpg', '2021-05-20 12:48:06', 4, 39, 'Chevrolet cobalt / sonic / cruze / onix / spin'),
(1188, '7798186472867', 0, 'Jfa-0193/wega', 1, '25.00', '60.00', 4, 1, './imgs/2021-05-20_09_50_01.jpg', '2021-05-20 12:50:01', 4, 41, 'Nissan  march /sentra'),
(1189, '7891342013765', 0, 'Arl9600/tecfil', 1, '25.00', '30.00', 2, 0, './imgs/2021-05-20_09_52_48.jpg', '2021-05-20 12:52:48', 7, 41, 'Frontier 2007'),
(1190, '7891342005609', 0, 'Acp003/tecfil', 1, '15.00', '35.00', 15, 0, './imgs/2021-05-20_10_02_22.jpg', '2021-05-20 13:02:22', 4, 39, 'Chevrolet gm celta / montana / classic / astra/PRISMA'),
(1191, '7798001695679', 0, 'Fap-6012/wega', 1, '25.00', '60.00', 3, 1, './imgs/2021-05-20_10_04_23.jpg', '2021-05-20 13:04:23', 4, 41, 'Jetta  / passat / audi / fusca '),
(1192, '7891342005951', 0, 'Acp005/tecfil', 1, '15.00', '30.00', 5, 1, './imgs/2021-05-20_10_07_55.jpg', '2021-05-20 13:07:55', 4, 39, 'Chevrolet gm corsa / montana'),
(1193, '7891342005623', 0, 'Acp001/tecfil', 1, '15.00', '35.00', 3, 1, './imgs/2021-05-20_10_12_07.jpg', '2021-05-20 13:12:07', 4, 39, 'Chevrolet gm Vectra / astra'),
(1194, '7798001698199', 0, 'Jfa-0500/wega', 1, '30.00', '80.00', 2, 0, './imgs/2021-05-20_10_14_59.jpg', '2021-05-20 13:14:59', 7, 41, 'Mitsubishi l200 trinton '),
(1195, '7891342010931', 0, 'Acp887/tecfil', 1, '15.00', '30.00', 24, 0, './imgs/2021-05-20_10_17_44.jpg', '2021-05-20 13:17:44', 4, 39, 'Toyota hilux / rav4'),
(1196, '7798001692616', 0, 'Jfa-0897/wega', 1, '25.00', '70.00', 3, 1, './imgs/2021-05-20_10_18_30.jpg', '2021-05-20 13:18:30', 4, 41, ''),
(1200, '7798001695563', 0, 'Jfa-0893/wega', 1, '25.00', '30.00', 1, 1, './imgs/2021-05-20_10_24_45.jpg', '2021-05-20 13:24:45', 4, 41, 'Suzuki gran vitara '),
(1201, '7798001690575', 0, 'Jfa-0587/wega', 1, '25.00', '30.00', 5, 1, './imgs/2021-05-20_10_28_24.jpg', '2021-05-20 13:28:24', 4, 41, 'Mitsubishi lancer / pajero tr4'),
(1202, '7798186471648', 0, 'AKX2161/wega', 1, '14.00', '35.00', 14, 1, './imgs/2021-05-20_10_35_15.jpg', '2021-05-20 13:33:55', 4, 39, 'Toyota Etios'),
(1203, '7891342012249', 0, 'Acp205/tecfil', 1, '15.00', '35.00', 17, 0, './imgs/2021-05-20_10_39_04.jpg', '2021-05-20 13:39:04', 4, 39, 'Ford ECOSPORT / new fiesta / ka'),
(1204, '7798159121884', 0, 'Fap-9121/wega ', 1, '25.00', '60.00', 13, 1, './imgs/2021-05-20_10_43_25.jpg', '2021-05-20 13:43:25', 4, 41, 'Motor etorq / ireiA/ linea / punto / palio'),
(1205, '7891342014489', 0, 'Acp888/tecfil', 1, '12.00', '35.00', 24, 1, './imgs/2021-05-20_10_44_42.jpg', '2021-05-20 13:44:42', 4, 39, 'Toyota etios 2013>'),
(1206, '7891342005586', 0, 'Acp200/tecfil', 1, '13.00', '35.00', 12, 1, './imgs/2021-05-20_10_47_58.jpg', '2021-05-20 13:47:58', 4, 39, 'Ford fiesta >02 / ka 96> / Courier 97>'),
(1207, '', 0, 'Arl4150/tecfil', 1, '25.00', '40.00', -5, 0, './imgs/2021-07-19_09_06_05.jpg', '2021-05-20 13:52:42', 4, 41, 'Palio siena / strada '),
(1208, '7891342005920', 0, 'Acp202/tecfil', 1, '15.00', '35.00', 25, 1, './imgs/2021-05-20_10_55_33.jpg', '2021-05-20 13:55:33', 4, 39, 'Ford fiesta 02> / Ecosport 2009> / Fusion 2009> / '),
(1209, '7798159121945', 0, 'Fap9054/wega', 1, '16.00', '40.00', 11, 0, './imgs/2021-05-20_10_58_04.jpg', '2021-09-17 21:53:42', 4, 41, 'Gran siena / uno mille evo / fiorino furgão'),
(1210, '7891342014441', 0, 'Acp367/tecfil', 1, '15.00', '35.00', 12, 1, './imgs/2021-05-20_11_01_57.jpg', '2021-05-20 14:01:57', 4, 0, 'Volkswagen up 2014>'),
(1211, '7891342014441', 0, 'Acp367/tecfil', 1, '15.00', '60.00', 11, 1, './imgs/2021-05-20_11_04_22.jpg', '2021-05-20 14:04:22', 4, 39, 'Volkswagen up 2014>'),
(1212, '7891342007962', 0, 'Acp303/tecfil', 1, '15.00', '30.00', 27, 0, './imgs/2021-05-20_11_07_58.jpg', '2021-05-20 14:07:58', 7, 39, 'GOL / FOX / POLO / VOYAGE / CROSSFOX / UP ALGUNS'),
(1214, '7891342005548', 0, 'Acp300 / TECFIL', 1, '15.00', '35.00', 6, 0, './imgs/2021-05-20_11_11_40.jpg', '2021-05-20 14:11:40', 7, 39, 'Volkswagen polo 2007-2014 / Passat / SEAT CORDOBA / AUDI A3'),
(1215, '7891342002042', 0, 'ARL4147/tecfil', 1, '25.00', '60.00', 7, 0, './imgs/tecfil-2.jpg', '2021-05-20 14:14:05', 7, 41, 'UNO PRÊMIO / ELBA '),
(1216, '7891342017152', 6935, 'ARL4161/TECFIL', 1, '28.00', '50.00', 7, 0, './imgs/tecfil-3.jpg', '2021-05-20 14:25:37', 4, 41, 'UNO / ARGO / MOBI'),
(1219, '7891342017121', 0, 'arl6076/TECFIL', 1, '25.00', '60.00', 5, 0, './imgs/tecfil-5.jpg', '2021-05-20 18:02:10', 7, 41, 'VW up / Gol 1.0 2016'),
(1220, '7891342010993', 0, 'art6098/tecfil', 1, '25.00', '60.00', 36, 0, './imgs/tecfil-6.jpg', '2021-05-20 18:06:29', 7, 41, 'ECOESPOT 2.0 / GOL 1.6/ FOX 1.8/ POLO'),
(1221, '7891342006217', 0, 'ARL6096 / TECFIL', 1, '25.00', '30.00', 6, 0, './imgs/tecfil-7.jpg', '2021-05-20 18:13:07', 7, 41, 'GOL 1.0 / FOX / VOYAGE 1.0 2008'),
(1222, '7891342004770', 0, 'ARL6093/ TECFIL', 1, '25.00', '60.00', 5, 0, './imgs/tecfil-8.jpg', '2021-05-20 18:15:28', 7, 41, 'GOL 2.0 16V / GOL 1.8  /1999 A 2007'),
(1223, '7891342015608', 0, 'ARL6080/TECFIL', 1, '25.00', '75.00', 5, 0, './imgs/tecfil-9.jpg', '2021-05-20 18:17:33', 7, 41, 'FOX / GOL  /  SAVERO 1.6'),
(1224, '7798001697598', 0, 'JFA428-3 / WEGA ', 1, '25.00', '60.00', 4, 0, './imgs/WEGA.png', '2021-05-20 18:22:57', 7, 41, 'HONDA FIT 1.5 NEW 2008'),
(1225, '7798159128357', 0, 'JFA-0438/WEGA', 1, '25.00', '60.00', 3, 0, './imgs/WEGA-1.png', '2021-05-20 18:27:54', 7, 41, 'HONDA CIVIC 1.8 16V / CIVIC 2.0'),
(1226, '7891342015646', 0, 'ARL1040/TECFIL', 1, '34.00', '60.00', 4, 0, './imgs/tecfil-10.jpg', '2021-05-20 18:30:31', 4, 41, 'HONDA HRV 1.8 16V 2015'),
(1227, '7894766670415', 0, 'LX4370 / MAHLE', 1, '25.00', '60.00', 3, 0, './imgs/OO-1.jpg', '2021-05-20 18:47:39', 7, 41, 'HONDA FIT / HONDA CIVIC 2014'),
(1228, '7798159128357', 0, 'JFA0438/WEGA', 1, '25.00', '60.00', 2, 0, './imgs/WEGA-2.png', '2021-05-20 18:51:58', 7, 41, 'HONDA CIVIC FLEX 2.0'),
(1229, '7798001696331', 0, 'JFA-0433/WEGA', 1, '25.00', '60.00', 2, 0, './imgs/WEGA-3.png', '2021-05-20 18:58:03', 7, 41, 'HONDA CRV- 2.0'),
(1230, '7891342011785', 0, 'ARL1034/TECFIL', 1, '25.00', '60.00', 7, 0, './imgs/tecfil-11.jpg', '2021-05-20 19:04:44', 7, 41, 'HONDA CIVIC 1.8 16V GASOLINA 2006'),
(1231, '7798001692562', 0, 'JFA0428-1/WEGA', 1, '25.00', '60.00', 3, 0, './imgs/WEGA-4.png', '2021-05-20 19:08:41', 7, 41, 'HONDA FIT  MOTOR 1.4 2003'),
(1232, '7891342010337', 0, 'ARL9602/TECFIL', 1, '25.00', '60.00', 1, 0, './imgs/tecfil-12.jpg', '2021-05-20 19:12:07', 7, 41, 'FUSION 2.3 2009'),
(1233, '7891342008334', 0, 'ARL1033/TECFIL', 1, '25.00', '60.00', 2, 0, './imgs/tecfil-13.jpg', '2021-05-20 19:17:26', 7, 41, 'HONDA FIT 1.4 / 2001 A 204 8V'),
(1240, '7798001697529', 0, 'Fap 6000 / wega', 1, '26.65', '70.00', 3, 1, './imgs/2021-05-21_08_51_57.jpg', '2021-05-21 11:51:57', 4, 41, 'Peugeout 207 1.4 2008'),
(1241, '7798151941954', 0, 'Fap-3615 / wega', 1, '26.00', '75.00', 3, 1, './imgs/2021-05-21_09_04_36.jpg', '2021-05-21 12:04:36', 4, 41, 'C3 1.4 2001 / c3 1.4 2006 / '),
(1242, '7798001696768', 0, 'Fap 4054/2 / wega', 1, '26.00', '80.00', 3, 0, './imgs/1-176.jpg', '2021-05-21 12:08:59', 7, 41, 'C4 1.6 2007 / peugeout 2006'),
(1243, '7798159124267', 0, 'Fap 6013 / wega', 1, '37.40', '80.00', 7, 1, './imgs/2021-05-21_09_13_32.jpg', '2021-05-21 12:13:33', 4, 41, 'C4 1.6 turbo 2014 / peugeout 3008 1.6 16v 11 / peugeout 308 1.6 12 / peugeout 2008 1.6 15 todos turbo '),
(1244, '7891342015875', 0, 'Arl4157 / tecfil ', 1, '27.73', '60.00', 5, 1, './imgs/2021-05-21_09_16_49.jpg', '2021-05-21 12:16:49', 4, 41, 'Jeep compass / jeep renegade / fiat toro '),
(1245, '7798001698182', 0, 'Jfa0285 / wega', 1, '22.00', '55.00', 16, 1, './imgs/2021-05-21_09_21_18.jpg', '2021-09-17 22:04:03', 4, 41, 'Corolla 1.8 2008 / corolla 2.0 2010 / rav4 2.5 2013'),
(1246, '7798001690230', 0, 'Jfa-0428 / wega', 1, '26.00', '65.00', 3, 1, './imgs/2021-05-21_09_31_01.jpg', '2021-05-21 12:31:02', 4, 41, 'Corolla 2008 '),
(1247, '7798001690605', 0, 'JFA-0283 / wega', 1, '20.00', '70.00', 2, 1, './imgs/2021-05-21_09_34_46.jpg', '2021-05-21 12:34:47', 4, 41, 'Corolla 1.8 16v 2007 / corolla 1.6 16v 2002 / Lifan 620 1.6 16v 2010'),
(1248, '7798186474748', 0, 'Jfa0282 / wega', 1, '43.00', '100.00', 6, 1, './imgs/2021-05-21_09_47_03.jpg', '2021-05-21 12:47:03', 4, 41, 'Hilluz tdi turbo diesel 2.8 16v 2016 Hillux nova'),
(1251, '7891342015905', 0, 'Arl2206 / tecfil', 1, '34.00', '100.00', 0, 1, './imgs/2021-05-21_09_56_57.jpg', '2021-05-21 12:56:57', 4, 41, 'Hillux 2.8 16v TDI turbo diesel 2016 Hillux nova'),
(1252, '7891342013086', 0, 'Arl2204 / tecfil', 1, '17.00', '42.50', 10, 1, './imgs/2021-05-21_10_26_10.jpg', '2021-09-17 22:11:09', 4, 41, 'Etios 1.3 1.5 2013 Bolsinha '),
(1253, '7891342017114', 0, 'Arl2207 / tecfil', 1, '21.00', '70.00', 23, 1, './imgs/2021-05-21_10_28_19.jpg', '2021-05-21 13:28:19', 4, 41, 'Etios 1.3 1.5 2016 NOVO fino '),
(1254, '7798001699929', 0, 'Fap4872/1 / wega', 1, '17.00', '60.00', 8, 1, './imgs/2021-05-21_10_31_56.jpg', '2021-05-21 13:31:56', 4, 41, 'Kangoo ii / twingo ii'),
(1256, '7798001698182', 0, 'JFA 0285 / WEGA', 1, '0.00', '0.00', 11, 1, './imgs/2021-05-21_15_05_24.jpg', '2021-05-21 18:05:24', 4, 0, 'Toyota COROLLA / rav4 '),
(1257, '4011558338381', 0, 'C 24 700 - Filtro de ar Renault', 1, '17.00', '70.00', 24, 1, './imgs/2021-05-21_15_11_37.jpg', '2021-05-21 18:11:37', 4, 41, 'Renault '),
(1258, '', 0, 'ART5051 / TECFIL', 1, '22.31', '70.00', 7, 1, './imgs/2021-08-16_14_18_28.jpg', '2021-05-21 18:16:21', 4, 41, 'Renault clio / megane / duster oroch / Sandero'),
(1259, '7799076005547', 0, 'FAP3233/WEGA', 1, '25.00', '60.00', 5, 0, './imgs/01-1.png', '2021-05-21 18:18:27', 7, 41, 'ONIX PLUS / 1,0 '),
(1260, '4011558340759', 0, 'C23023/ MANN FILTER', 1, '25.00', '60.00', 19, 0, './imgs/02-10.jpg', '2021-05-21 18:23:11', 7, 41, 'NOVO ONIX '),
(1261, '7798001693507', 0, 'FAP 4872/1 - WEGA', 1, '18.00', '80.00', 4, 1, './imgs/2021-05-21_15_24_10.jpg', '2021-05-21 18:24:10', 4, 41, 'Renault clio / sandero / logan / Nissan march'),
(1262, '7891342010351', 0, 'ARL 5138 - TECFIL', 1, '15.00', '70.00', 4, 1, './imgs/2021-05-21_15_27_24.jpg', '2021-05-21 18:27:24', 4, 41, 'Renault logan / clio / sandero'),
(1263, '7891342005791', 0, 'ARL/8825', 1, '25.00', '60.00', 1, 0, './imgs/03-10.jpg', '2021-05-21 18:29:03', 7, 41, 'CORSA 1.0 / MERIVA / '),
(1264, '7798159129460  ', 0, 'FAP3286 / WEGA', 1, '20.07', '50.00', 10, 0, './imgs/01-2.png', '2021-10-06 20:13:22', 4, 41, 'SPIN / ONIX / PRISMA novo / cobalt'),
(1265, '7891342014618', 0, 'ARL 5141', 1, '21.00', '70.00', 5, 1, './imgs/2021-05-21_15_39_25.jpg', '2021-05-21 18:39:26', 4, 41, 'Renault clio'),
(1266, '7891342005340', 0, 'ARL8834/TECFIL', 1, '25.00', '60.00', 249, 0, './imgs/03-11.jpg', '2021-05-21 18:40:50', 7, 41, 'CELTA / PRISMA 1.0 1,4'),
(1267, '7798159124090', 0, 'Fap-9286 / wega ', 1, '19.69', '70.00', 20, 0, './imgs/2021-05-21_15_42_06.jpg', '2021-05-21 18:42:06', 4, 41, 'Ka 1.5 16v 2014 / fiesta 1.6 16v 2010 / Ka 1.0 12v 2014 / ka 1.5 16v 2014-2015'),
(1268, '7891342002172', 0, 'ARL8832/TECTIL', 1, '25.00', '50.00', 8, 0, './imgs/03-12.jpg', '2021-05-21 18:43:18', 7, 41, 'AGILE / CORSA'),
(1269, '7798151942234', 0, 'FAP 7013 - Wega', 1, '29.00', '70.00', 10, 0, './imgs/2021-05-21_15_43_19.jpg', '2021-05-21 18:43:19', 7, 41, 'Renault SENTRA 09-13 / megane / scenic'),
(1270, '7891342012447', 0, 'ARL8826 / TECFIL', 1, '25.00', '60.00', 1, 0, './imgs/03-13.jpg', '2021-05-21 18:48:33', 7, 0, 'CAPTIVA'),
(1271, '7891342011006', 0, 'ART 5054 - Tecfil', 1, '75.00', '80.00', 6, 1, './imgs/2021-05-21_15_54_53.jpg', '2021-05-21 18:54:53', 4, 41, 'Megane'),
(1272, '7891342017404', 0, 'ARS8843/TECFIL', 1, '25.00', '60.00', 3, 0, './imgs/03-14.jpg', '2021-05-21 19:00:22', 7, 41, 'CRUZER LTZ / 1,4'),
(1273, '7891342016377', 0, 'ARL 5144 - TECFIL', 1, '36.00', '80.00', 7, 1, './imgs/2021-05-21_16_02_10.jpg', '2021-05-21 19:02:10', 4, 41, 'Sandero 2.0 / duster 2.0'),
(1274, '7798159129477', 0, 'Fap-9295 / wega', 1, '31.82', '70.00', 19, 1, './imgs/2021-05-21_16_04_00.jpg', '2021-05-21 19:04:00', 4, 41, 'Ecosport 2.0 16v 2012 nova'),
(1275, '7891342012119', 0, 'ARL8828/TECFIL', 1, '25.00', '60.00', 1, 0, './imgs/03-15.jpg', '2021-05-21 19:04:16', 7, 41, 'CRUZE 1,8 / ECOTEC'),
(1276, '16 54 676 74R', 0, 'Filtro Renault 165467674R', 1, '38.00', '80.00', 2, 0, './imgs/2021-05-21_16_06_16.jpg', '2021-05-21 19:06:16', 7, 41, 'Renault sandero / logan / duster '),
(1277, '7798186471808', 0, 'FAP3288 / wega', 1, '21.00', '60.00', 15, 0, './imgs/01-3.png', '2021-09-17 22:34:59', 4, 41, 'FOX / GOL / UP / VOYAGEm '),
(1278, '7798001696942', 0, 'WR245 / wega', 1, '31.50', '70.00', 9, 1, './imgs/2021-05-21_16_09_44.jpg', '2021-05-21 19:09:44', 4, 41, 'Renault LOGAN / sandero / SYMBOL 1.6'),
(1279, '7891342015417', 0, 'Art9615 / tecfil', 1, '25.00', '70.00', 10, 1, './imgs/2021-05-21_16_09_59.jpg', '2021-05-21 19:09:59', 4, 41, 'Ecosport 1.6 flex 2012 '),
(1280, '7798159123062', 0, 'AKX1397/WEGA', 1, '10.18', '25.45', 30, 0, './imgs/01-4.png', '2021-09-18 16:47:23', 4, 41, 'SANDERO/DUSTER/CAPTUR/OROCH/HB20/LIVINA'),
(1281, '7798001690865', 0, 'FAP 9014', 1, '40.00', '80.00', 2, 1, './imgs/2021-05-21_16_14_27.jpg', '2021-05-21 19:14:27', 4, 41, 'Fiat punto 1.8 2007>'),
(1282, '7798001690872', 0, 'FAP 9015', 1, '40.00', '80.00', 5, 1, './imgs/2021-05-21_16_24_24.jpg', '2021-05-21 19:24:24', 4, 41, 'Fiat punto 1.4'),
(1283, '7891342005524', 0, 'ARl9608 / TECFIL', 1, '17.00', '70.00', 17, 1, './imgs/2021-05-21_16_25_06.jpg', '2021-05-21 19:25:06', 4, 41, 'Fiesta rocam / ecosport 1.6 / KA 1.0 1.6 '),
(1284, '7891342015721', 0, 'ACP559/TECFIL', 1, '25.00', '60.00', 8, 0, './imgs/03-16.jpg', '2021-05-21 19:26:59', 7, 41, 'RENALT SANDERO'),
(1286, '7891342012676', 0, 'Arl2334 / tecfil', 1, '22.93', '80.00', 6, 1, './imgs/2021-05-21_16_29_58.jpg', '2021-05-21 19:29:58', 4, 41, 'I30 2.0 16v 2009 '),
(1287, '7799076006636', 0, 'Jfa-0h41 / wega', 1, '33.00', '80.00', 4, 1, './imgs/2021-05-21_16_35_08.jpg', '2021-05-21 19:35:08', 4, 41, 'Hb20 turbo 1.0 2019 kappa/ hb20s turbo flex 1.0 2019 '),
(1288, '7798159126452', 0, 'Jfa0k16 / wega', 1, '21.00', '75.00', 13, 0, './imgs/2021-05-21_16_39_49.jpg', '2021-05-21 19:39:49', 4, 41, 'Hb20 1.0 12v 2012 / kia picanto 1.0 12v 2011 '),
(1289, '7798159129262', 0, 'Jfa-0h29 / wega', 1, '25.00', '80.00', 3, 1, './imgs/2021-05-21_16_42_18.jpg', '2021-05-21 19:42:18', 4, 41, 'Hb20 1.6 16v 2012 / hb20 turbo flex 1.0 2016'),
(1290, '7891342017824', 0, 'Art968 / tecfil', 1, '25.00', '80.00', 24, 1, './imgs/2021-05-21_16_50_08.jpg', '2021-05-21 19:50:08', 4, 41, 'Ecosport 1.5 3 CILINDROS / 2.0 2017'),
(1291, '7891342012256', 0, 'Arl2332 / tecfil', 1, '26.00', '75.00', 1, 1, './imgs/2021-05-21_16_57_07.jpg', '2021-05-21 19:57:07', 4, 41, 'Santa fé 2.7 v6 24v 2006 '),
(1292, '7893026957570', 0, 'PD1296 / FRASLEY', 1, '175.00', '350.00', 20, 0, './imgs/04-2.jpg', '2021-05-22 11:41:34', 7, 42, 'HYUNDAI TCSON'),
(1293, '7893026957570', 0, 'PD1296 / FRASLEY', 1, '175.00', '350.00', 2, 0, './imgs/04-3.jpg', '2021-05-22 11:42:52', 7, 42, 'HIUNDAI TCSON'),
(1294, '7897483489643', 0, 'RCPT1250 / TRW', 1, '83.00', '250.00', 1, 0, './imgs/08.png', '2021-05-22 11:48:10', 7, 42, 'HIUNDAY TCSON'),
(1295, '7892679063485', 0, 'N-1368 / cobreq', 1, '79.00', '180.00', 7, 1, './imgs/2021-05-22_08_50_53.jpg', '2021-05-22 11:50:53', 4, 42, 'Corolla 2008 traseira'),
(1296, '7895467081777', 0, 'PWB77 / WILTEC', 1, '60.00', '180.00', 1, 0, './imgs/06.jpg', '2021-05-22 11:53:52', 7, 42, 'KIA CERATO 2004'),
(1297, '7890903080093', 0, 'Nkf1187p / nakata', 1, '37.00', '180.00', 3, 1, './imgs/2021-05-22_08_54_44.jpg', '2021-05-22 11:54:44', 4, 42, 'Corolla 2002 2008 / fielder 1.6 1.8'),
(1298, '7893026797794', 0, 'PD1077 / FRASLEY', 1, '127.00', '300.00', 1, 0, './imgs/04-4.jpg', '2021-05-22 11:58:57', 7, 42, 'SUZUKI GRAN VITARA  / DIANTEIRA  '),
(1299, '7893026763829', 0, 'P-512 / lonaflex', 1, '40.00', '150.00', 1, 1, './imgs/2021-05-22_08_59_41.jpg', '2021-05-22 11:59:41', 4, 42, 'Corolla 1.8 2002 / corolla xei 1.8 2.0 traseira'),
(1300, '7893026602593', 0, 'PD585 / FRASLEY', 1, '66.00', '180.00', 0, 0, './imgs/04-5.jpg', '2021-05-22 12:05:11', 7, 42, 'SUZUKI GRAN VITARA / SERNTRA NOVO TRASEIRA  '),
(1301, '7897483448763', 0, 'RCPT04770/ TRW', 1, '85.00', '220.00', 2, 0, './imgs/08-2.png', '2021-05-22 12:09:50', 7, 42, 'SUZUKI GRAN VITARA 1.8 / 2.0  - VITARA '),
(1302, '7897483489131', 0, 'Rcpt12020 / trw', 1, '0.00', '230.00', 1, 1, './imgs/2021-05-22_09_10_00.jpg', '2021-05-22 12:10:00', 4, 42, 'Sw4 nova traseira'),
(1303, '7892679072609', 0, 'N-1774 / COBREQ', 1, '129.00', '350.00', 2, 0, './imgs/99.jpg', '2021-05-22 12:16:28', 7, 42, 'JEEP RENEGATE  /  FIAT TORO  VULCANO FREEDOM DIESEL'),
(1304, '', 0, 'Rcpt01500 / trw', 1, '30.00', '220.00', -31, 1, './imgs/2021-05-22_09_17_24.jpg', '2021-05-22 12:17:24', 4, 42, 'Rav4 2.0 / corolla 1.8 / Camry sw 2.2'),
(1308, '7897483406282', 0, 'RCPT13870 / TRW', 1, '83.00', '180.00', 9, 0, './imgs/08-3.png', '2021-05-22 12:22:19', 4, 42, 'DUSTER 1.6 dianteira'),
(1309, '7897483448909', 0, 'Rcpt04890 / trw', 1, '46.00', '180.00', 3, 1, './imgs/2021-05-22_09_24_33.jpg', '2021-05-22 12:24:33', 4, 42, 'Corolla 1.8 16v '),
(1310, '7897483442433', 0, 'RCPT02840/ TRW', 1, '35.00', '87.50', 10, 0, './imgs/08-4.png', '2021-09-18 20:58:56', 4, 42, 'CLIO 1.0 dianteira / sandero antigo / logan antigo'),
(1311, '7895467542704', 0, 'PW1041/WILTEC', 1, '69.27', '180.00', 3, 0, './imgs/06-1.jpg', '2021-05-22 12:37:24', 7, 42, 'RENAULT KWID / DIANTEIRA'),
(1312, '7895467079453', 0, 'Pw758 / willtec', 1, '46.00', '180.00', 1, 1, './imgs/2021-05-22_09_42_17.jpg', '2021-05-22 12:42:17', 4, 42, 'Hillux 2008 '),
(1313, '7895467186830', 0, 'PW984/WILLTEC', 1, '63.00', '157.50', 7, 0, './imgs/06-2.jpg', '2021-09-18 17:11:03', 4, 42, 'RERNALT KWID 2013 / DIANTEIRA'),
(1314, '7892861519257', 0, 'Nkf1186p / nakata', 1, '34.00', '170.00', 1, 1, './imgs/2021-05-22_09_44_44.jpg', '2021-05-22 12:44:44', 4, 42, 'Corolla 1.6 1.8 2002 '),
(1315, '7891579349439', 0, 'PFC180012/COFAP', 1, '73.79', '180.00', 10, 0, './imgs/10.jpg', '2021-05-22 12:46:50', 7, 42, 'REANLT DUSTER 2.0 / DIANTERA'),
(1316, '7892861519288', 0, 'Nkf1184p / nakata', 1, '36.00', '180.00', 2, 1, './imgs/2021-05-22_09_47_19.jpg', '2021-05-22 12:47:19', 4, 42, 'Corolla 93 98  '),
(1317, '7893026861693', 0, 'PD1483/FRASLEY', 1, '84.00', '150.00', 5, 0, './imgs/04-6.jpg', '2021-05-22 12:50:32', 7, 42, 'RENAULT LOGAN  / DIANTEIRA'),
(1318, '7897483406268', 0, 'RCPT13850/ TRW', 1, '74.00', '180.00', 8, 0, './imgs/08-5.png', '2021-05-22 12:53:20', 4, 42, 'NISSAN MARCH / VERSA / DIANTEIRA'),
(1319, '7895467186496', 0, 'PW973/WILTEC', 1, '102.00', '350.00', 3, 0, './imgs/06-3.jpg', '2021-05-22 12:55:17', 4, 42, 'NISSAN FRONTIER 2017 / DIANTEIRA'),
(1320, '7893026763874', 0, 'P-669 / lonaflex ', 1, '65.00', '220.00', 6, 1, './imgs/2021-05-22_09_56_38.jpg', '2021-05-22 12:56:38', 4, 42, 'Corolla xei 1.8 16v / corolla gli 1.8 16v / altis 2.0 2011'),
(1321, '7892679069326', 0, 'N-1764 / cobreq ', 1, '91.00', '220.00', 2, 0, './imgs/2021-05-22_09_58_09.jpg', '2021-05-22 12:58:09', 7, 42, 'Corolla 2.0 16v altis modelo novo  / HILUZ MODELO NOVO'),
(1322, '7890903025162', 0, 'NKF1250P/NAKATA', 1, '108.00', '220.00', 2, 0, './imgs/nak.jpg', '2021-05-22 13:03:51', 7, 42, 'NISSAN FRONTIER / DIANTEIRA'),
(1323, '7893026859904', 0, 'Pd/1480 / frasle', 1, '99.00', '220.00', 5, 1, './imgs/2021-05-22_10_05_15.jpg', '2021-05-22 13:05:15', 4, 42, 'Corolla 2015'),
(1324, '7893026859904', 0, 'Pd/1480 / frasle', 1, '99.00', '220.00', 5, 1, './imgs/2021-05-22_10_07_31.jpg', '2021-05-22 13:07:31', 4, 42, 'Corolla 2015'),
(1325, '7897483492384', 0, 'RCPT13550/ TRW', 1, '42.00', '150.00', 3, 0, './imgs/08-6.png', '2021-05-22 13:11:55', 7, 42, 'NISSAN TIDA  /  DIANTEIRO'),
(1326, '7892679071985', 0, 'N-1375 / cobreq ', 1, '100.00', '250.00', 1, 0, './imgs/2021-05-22_10_12_39.jpg', '2021-05-22 13:12:39', 7, 42, 'TOYOTA HILUX SW4'),
(1327, '7891579336798', 0, 'PFC290002', 1, '80.00', '200.00', 3, 0, './imgs/10-1.jpg', '2021-05-22 13:13:44', 7, 42, 'SENTRA 2008'),
(1328, '7892679064963', 0, 'N-1483 / cobreq ', 1, '84.00', '150.00', 9, 0, './imgs/2021-05-22_10_20_30.jpg', '2021-05-22 13:20:30', 7, 42, 'Etios 1.3 1.5 '),
(1329, '7893026838848', 0, 'Pd/1438 / frasle', 1, '70.00', '180.00', 2, 1, './imgs/2021-05-22_10_21_44.jpg', '2021-05-22 13:21:44', 4, 42, 'Etios 1.3 1.5'),
(1330, '7892679063478', 0, 'N-1366 / cobreq ', 1, '81.00', '220.00', 4, 1, './imgs/2021-05-22_10_23_26.jpg', '2021-05-22 13:23:26', 4, 42, 'Corolla 2008 '),
(1331, '7890903043685', 0, 'Nkf1283p / nakata', 1, '40.00', '180.00', 1, 1, './imgs/2021-05-22_10_45_53.jpg', '2021-05-22 13:45:53', 4, 42, 'New beetler / tiguan / jetta / bora 2.0 2.5 2.0 16v  2.5 20v  tsi 2014 traseiro'),
(1332, '7893026381719', 0, 'P-362 / lonaflex ', 1, '59.00', '180.00', 9, 1, './imgs/2021-05-22_10_55_07.jpg', '2021-05-22 13:55:07', 4, 42, 'Golf sapão / jetta / bora / golF / SAVEIRO / cordoba / audi A3 1.6 1.8 /  peugeout 405 92 traseira'),
(1333, '7897483492155', 0, 'Rcpt13390 / trw', 1, '70.00', '250.00', 3, 1, './imgs/2021-05-22_10_57_53.jpg', '2021-05-22 13:57:53', 4, 42, 'Amarok 2.0 '),
(1334, '7895467247715', 0, 'Pw1018 / willtec', 1, '87.00', '220.00', 5, 1, './imgs/2021-05-22_10_59_06.jpg', '2021-05-22 13:59:06', 4, 42, 'Virtus 2018 modelo Grande'),
(1335, '7893026216721', 0, 'Pd/58-B / frasle', 1, '90.00', '200.00', 2, 1, './imgs/2021-05-22_11_02_54.jpg', '2021-05-22 14:02:54', 4, 42, 'Bora / golf / polo novo / Gol novo / Voyage novo com sensor '),
(1336, '7893026830903', 0, 'P-58-b / lonaflex', 1, '62.00', '180.00', 4, 1, './imgs/2021-05-22_11_05_05.jpg', '2021-05-22 14:05:05', 4, 42, 'Bora / golf / polo novo / gol novo / Voyage novo / audi a3  com sensor '),
(1337, '4047025602747', 0, 'Bb54 / bosch ', 1, '26.00', '120.00', 12, 1, './imgs/2021-05-22_11_09_01.jpg', '2021-05-22 14:09:01', 4, 42, 'Ipanema 1.8 / kadett / corsa 1.0 1.4 / gol 94 / parati 95'),
(1338, '7893026549119', 0, 'P-367 / lonaflex', 1, '43.00', '150.00', 7, 1, './imgs/2021-05-22_11_13_47.jpg', '2021-05-22 14:13:47', 4, 42, 'Golf 1.8 95 gti / passat 2.0 94 / polo 1.0 / a3 1.6 1.8 96-98 / fox 2003 '),
(1339, 'Xxxxx', 0, 'Nkf1256p / nakata', 1, '36.00', '150.00', 1, 1, './imgs/2021-05-22_11_19_36.jpg', '2021-05-22 14:19:36', 4, 42, 'Gol 1.0 1.6 1.8 G5 / SAVEIRO surf / voyage 1.0 1.6 1.8 G5 '),
(1340, '7890903025216', 0, 'Nkf1255p / nakata', 1, '64.00', '150.00', 8, 1, './imgs/2021-05-22_11_23_50.jpg', '2021-05-22 14:23:50', 4, 42, 'Saveiro  / gol  / Saveiro 1.0 1.6 1.8 '),
(1341, '7897483442303', 0, 'Rcpt02650 / trw', 1, '35.00', '200.00', 3, 1, './imgs/2021-05-24_09_02_48.jpg', '2021-05-24 12:02:48', 4, 42, 'Bravo 2.0 2.0v antigo / '),
(1342, '7897483489742', 0, 'RCPT12630 / trw', 1, '31.00', '120.00', 3, 0, './imgs/2021-05-24_09_10_42.jpg', '2021-05-24 12:10:42', 4, 42, 'Palio essence 1.6 16v / Grand siena 1.6 / strada / PUNTO'),
(1343, '7893026125832', 0, 'Pd/60 / frasle', 1, '23.81', '160.00', 16, 1, './imgs/2021-05-24_09_13_37.jpg', '2021-05-24 12:13:37', 4, 42, 'Palio 1.0 fire modelo antigo / strada antiga fire'),
(1344, '7897483489667', 0, 'Rcpt12550 / trw', 1, '66.00', '160.00', 8, 0, './imgs/2021-05-24_09_17_10.jpg', '2021-05-24 12:17:10', 4, 42, 'Palio NOVO attractive 1.0 / c3 novo / Grand siena 1.4/ ONIX'),
(1345, '7890903025131', 0, 'Nkf1247p / nakata', 1, '35.00', '180.00', 2, 1, './imgs/2021-05-24_09_19_44.jpg', '2021-05-24 12:19:44', 4, 42, 'Punto / linea / strada 1.4 16v / t-jet 1.9 16v adventure locker antigos '),
(1346, '7891579334787', 771092, 'Pfc030046 / cofap', 1, '71.00', '180.00', 2, 1, './imgs/2021-05-24_09_26_37.jpg', '2021-05-24 12:26:37', 4, 42, 'Linea 1.8 1.4 t-jet 2009 traseira'),
(1347, '7897483458212', 770460, 'Rcpt07680 / trw', 1, '35.00', '180.00', 2, 1, './imgs/2021-05-24_09_31_21.jpg', '2021-05-24 12:31:21', 4, 42, 'Stilo 1.9 1.8 2003 dianteira'),
(1350, '7890903043739', 0, 'NKF1288P ', 1, '66.00', '150.00', 1, 1, './imgs/2021-05-24_09_44_58.jpg', '2021-05-24 12:44:58', 4, 42, 'Pastilha de freio Volkswagen gol- Voyage (12/18) Saveiro (12/15) 1.6 e 1.0'),
(1351, '7892679064512', 0, 'N1272 / cobreq ', 1, '0.00', '180.00', 5, 1, './imgs/2021-05-24_09_48_15.jpg', '2021-05-24 12:48:15', 4, 42, 'Hb20 1.6 / veloster 1.6 '),
(1352, '7897483405469', 0, 'Rcpt13830 / trw', 1, '47.00', '160.00', 6, 0, './imgs/2021-05-24_09_49_35.jpg', '2021-05-24 12:49:35', 7, 42, 'Hb20 1.0 12v'),
(1353, '7897483489629', 0, 'Rcpt12510 / trw', 1, '71.00', '220.00', 2, 1, './imgs/2021-05-24_09_51_08.jpg', '2021-05-24 12:51:08', 4, 42, 'Santa fé 2.7 v6 4x4 '),
(1354, '4047025603140', 0, 'Bb107 - Bosch', 1, '100.00', '200.00', 1, 1, './imgs/2021-05-24_09_52_10.jpg', '2021-05-24 12:52:10', 4, 42, 'blazer e S10 2.2 2.4 2.5 2.8 4.3 (95/12)'),
(1355, '7892679063331', 0, 'N-1238 / cobreq', 1, '77.00', '200.00', 2, 1, './imgs/2021-05-24_09_52_16.jpg', '2021-05-24 12:52:16', 4, 42, 'Hr 2.5 hdi 2006'),
(1356, '7895467186151', 0, 'Pw971 / willtec', 1, '87.00', '250.00', 5, 1, './imgs/2021-05-24_09_54_59.jpg', '2021-05-24 12:54:59', 4, 42, 'Creta 2017'),
(1357, '05297.7', 0, 'NKF1151P', 1, '80.00', '180.00', 2, 1, './imgs/2021-05-24_09_57_07.jpg', '2021-05-24 12:57:07', 4, 42, 'Pastilha de freio Chevrolet GM Zafira meriva (02/10)'),
(1358, '7893026948332', 0, 'Pd/1368 / frasle', 1, '55.00', '180.00', 3, 1, './imgs/2021-05-24_09_57_22.jpg', '2021-05-24 12:57:22', 4, 42, 'Kia soul / elantra 1.8 2012 / veloster 1.6 / azera 3.0 v6 traseira'),
(1359, '7893026923889', 0, 'Pd/1366 / frasle', 1, '65.00', '180.00', 1, 1, './imgs/2021-05-24_09_59_41.jpg', '2021-05-24 12:59:41', 4, 42, 'Santa fe 2.4 2.7 3.5 v6 4x4 / sorento 2011 / MONHAVE traseira '),
(1360, '7892861518953', 0, 'Nkf1151P - Nakata', 1, '75.00', '180.00', 2, 0, './imgs/2021-05-24_09_59_57.jpg', '2021-05-24 12:59:57', 4, 42, 'meriva 1.8 04'),
(1362, '7897483489285', 0, 'Rcpt12170 / trw', 1, '101.00', '189.00', 3, 1, './imgs/2021-05-24_10_01_01.jpg', '2021-05-24 13:01:01', 4, 42, 'I30 '),
(1363, '7897483489452', 0, 'Rcpt12340 / trw', 1, '82.00', '220.00', 2, 1, './imgs/2021-05-24_10_02_45.jpg', '2021-05-24 13:02:45', 4, 42, 'I30 traseira'),
(1364, '7890903045689', 0, 'Nkf1343p / nakata ', 1, '25.00', '220.00', 4, 1, './imgs/2021-05-24_10_05_37.jpg', '2021-05-24 13:05:37', 4, 42, 'Ix35 c-abs 2.0 16v / picanto / i30 traseira '),
(1365, '7892679064161', 0, 'N-1464 / cobreq', 1, '45.00', '180.00', 1, 1, './imgs/2021-05-24_10_06_40.jpg', '2021-05-24 13:06:40', 4, 42, 'Cherry qq '),
(1366, '7895467186113', 0, 'PW972 - Willtec', 1, '75.00', '180.00', 3, 0, './imgs/2021-05-24_10_07_23.jpg', '2021-05-24 13:07:23', 4, 42, 'Spin 2017 '),
(1367, '7897483400785', 0, 'Rcpt13730 / trw', 1, '77.00', '170.00', 10, 1, './imgs/2021-05-24_10_08_41.jpg', '2021-05-24 13:08:41', 4, 42, 'New fiesta / new ecosport / new ka '),
(1368, '7890903032658', 0, 'Nkf1266p / nakata', 1, '30.00', '140.00', 10, 1, './imgs/2021-05-24_10_11_38.jpg', '2021-05-24 13:11:38', 4, 42, 'Ecosport ROCAM 1.6 2.0  / fiesta rocam Grande  '),
(1369, '7895291000104', 0, '19314698 - AcDelco', 1, '74.00', '180.00', 2, 1, './imgs/2021-05-24_10_13_09.jpg', '2021-05-24 13:13:09', 4, 42, 'CRUZE 2010 traseira'),
(1370, '7897483489780', 0, 'Rcpt12670 / trw', 1, '40.00', '160.00', 9, 1, './imgs/2021-05-24_10_13_50.jpg', '2021-05-24 13:13:50', 4, 42, 'Ecosport 1.6 2.0 ROCAM / FIESTA rocam grande '),
(1371, '7893026381658', 0, 'P-55 / lonaflex', 1, '85.00', '180.00', 10, 1, './imgs/2021-05-24_10_16_10.jpg', '2021-05-24 13:16:10', 4, 42, 'Fiesta rocam Pequeno / ka '),
(1372, '05374.59', 0, 'RCTP13790', 1, '52.00', '180.00', 1, 1, './imgs/2021-05-24_10_16_31.jpg', '2021-05-24 13:16:31', 4, 42, 'Chevrolet gm cruze LT 1.8 2012> Pastilha de freio traseiro '),
(1373, '7893026802115', 0, 'PD/1101', 1, '118.00', '200.00', 1, 1, './imgs/2021-05-24_10_20_11.jpg', '2021-05-24 13:20:11', 4, 42, 'Cruze LT/LTZ 1.8 2012  DT'),
(1374, '7893026643954', 0, 'Pd/767 / frasle', 1, '85.00', '220.00', 13, 1, './imgs/2021-05-24_10_21_08.jpg', '2021-05-24 13:21:08', 4, 42, 'FOCUS 2.0 / Ecosport NOVA GG'),
(1375, '7890903079493', 0, 'Nkf1057p / nakata', 1, '35.00', '140.00', 3, 1, './imgs/2021-05-24_10_22_14.jpg', '2021-05-24 13:22:14', 4, 42, 'Fiesta rocam Grande / ka '),
(1376, '7895291000111', 0, '19314699 - ACDELCO', 1, '78.00', '200.00', 2, 1, './imgs/2021-05-24_10_23_21.jpg', '2021-05-24 13:23:21', 4, 42, 'CRUZE 2010 DIANTEIRa'),
(1377, '7893026789232', 0, 'Pd/796 / frasle', 1, '84.00', '180.00', 2, 1, './imgs/2021-05-24_10_23_49.jpg', '2021-05-24 13:23:49', 4, 42, 'Focus traseira '),
(1378, '7893026830910', 770457, 'P-79 / lonaflex', 1, '35.00', '140.00', 1, 1, './imgs/2021-05-24_10_26_26.jpg', '2021-05-24 13:26:26', 4, 42, 'Fiesta rocam / ka grande '),
(1379, '7892679161167', 0, 'N2092 / Cobreq', 1, '90.00', '225.00', 20, 1, './imgs/2021-05-24_10_28_07.jpg', '2021-09-23 23:08:41', 4, 42, 'onix plus 2020 novo'),
(1380, '7895467090908', 0, 'Pw918 / willtec ', 1, '45.00', '220.00', 2, 1, './imgs/2021-05-24_10_29_07.jpg', '2021-05-24 13:29:07', 4, 42, 'Peugeout 308 2007;'),
(1381, '7892861520307', 771095, 'Nkf1195p / nakata', 1, '40.00', '180.00', 1, 1, './imgs/2021-05-24_10_33_45.jpg', '2021-05-24 13:33:45', 4, 42, 'Peugeout 307 1.6 / 2.0 8v 16v '),
(1382, '7893026215984', 0, 'PD/46', 1, '36.00', '150.00', 9, 1, './imgs/2021-05-24_10_34_39.jpg', '2021-05-24 13:34:39', 4, 42, 'Corsao 1.0 1.4 1.8 / montana 2010 1.4 1.8'),
(1383, '7892679062990', 0, 'N-1166 / cobreq', 1, '44.00', '220.00', 0, 1, './imgs/2021-05-24_10_36_37.jpg', '2021-05-24 13:36:37', 4, 42, 'Peugeout 307 1.6 1.4 / peugeout 206 2.0 / 206sw 1.6 16v / xsara 1.4 1.6 16v '),
(1384, '7893026006827', 0, 'PD/42', 1, '28.00', '80.00', 8, 1, './imgs/2021-05-24_10_38_35.jpg', '2021-05-24 13:38:35', 4, 42, 'Celta 1.0 1.4 / corsa classic '),
(1385, '7892861520379', 770422, 'Nkf1202p /nakata', 1, '40.00', '180.00', 2, 1, './imgs/2021-05-24_10_44_00.jpg', '2021-05-24 13:44:00', 4, 42, 'C3 1.4 hdi / 1.6 16v / '),
(1386, '7897483448770', 0, 'Rcpt04780 / trw', 1, '50.00', '180.00', 5, 1, './imgs/2021-05-24_10_47_40.jpg', '2021-05-24 13:47:40', 4, 42, 'Peugeout 207 / hoggar 1.4 1.6  com arame lateral'),
(1387, '7895291053001', 0, '19PF1014 / AcDelco', 1, '31.00', '150.00', 4, 1, './imgs/2021-05-24_10_49_07.jpg', '2021-05-24 13:49:07', 4, 42, 'Celta 1.0 1.4 / corsa classic 1.0 1.4'),
(1388, '7897483448695', 0, 'Rcpt04700 / trw', 1, '40.00', '180.00', 4, 1, './imgs/2021-05-24_10_49_45.jpg', '2021-05-24 13:49:45', 4, 42, 'Hoggar 1.6 / peugeout 207 / xsara picasso 2.0 arame encima'),
(1389, '7893026335798', 0, 'Pd/435 / frasle', 1, '56.00', '180.00', 8, 1, './imgs/2021-05-24_10_52_32.jpg', '2021-05-24 13:52:32', 4, 42, 'Peugeout 207 206 / hoggar / escapede com arame lateral'),
(1390, '7897483492520', 0, 'RCPT13680 / TRW ', 1, '40.00', '150.00', 2, 0, './imgs/2021-05-24_10_53_18.jpg', '2021-05-24 13:53:18', 7, 42, 'Chevrolet gm onix prisma cobalt (sem abs)'),
(1391, '7897483401751', 0, 'RCTP13750 - Trw', 1, '53.00', '180.00', 7, 1, './imgs/2021-05-24_10_57_46.jpg', '2021-05-24 13:57:46', 4, 42, 'Cobalt spin 2012> (com abs) pastilha de freio Chevrolet GM'),
(1392, '7893026984828', 0, 'Pd/1533 - Frasle', 1, '118.00', '200.00', 7, 1, './imgs/2021-05-24_10_59_56.jpg', '2021-05-24 13:59:56', 4, 42, 's10 / trailblazer 17 nova'),
(1393, '7892679064741', 0, 'N-390 / Cobreq', 1, '101.00', '230.00', 12, 1, './imgs/2021-05-24_11_04_34.jpg', '2021-05-24 14:04:34', 4, 42, 'S10 2.4 / 2.8 trailbrazer 2.8 3.6 2012'),
(1394, '7897483461809', 770417, 'Rcpt09480 / trw', 1, '35.00', '160.00', 1, 1, './imgs/2021-05-24_14_05_25.jpg', '2021-05-24 17:05:25', 4, 42, 'C3 1.4 com arame encima'),
(1395, '7893026682274', 0, 'P-383 / lonaflex', 1, '40.00', '140.00', 1, 1, './imgs/2021-05-24_14_09_04.jpg', '2021-05-24 17:09:04', 4, 42, 'L200 2.5 / eclipse 2.0 / galant 2.5 antiga'),
(1396, '7891579337023', 0, 'Pfc390005 / cofap', 1, '40.00', '140.00', 1, 1, './imgs/2021-05-24_14_10_57.jpg', '2021-05-24 17:10:57', 4, 42, 'L200 2.5 / pajero sport antiga'),
(1397, '7893026589429', 0, 'Pd/695 / frasle', 1, '109.00', '272.50', 2, 1, './imgs/2021-05-24_15_08_50.jpg', '2021-09-18 17:32:03', 4, 42, 'Pajero full 2009 / land cruiser prado traseira'),
(1398, '7893026383348', 0, 'Pd/500 / frasle', 1, '40.00', '170.00', 3, 1, './imgs/2021-05-24_15_10_05.jpg', '2021-05-24 18:10:05', 4, 42, 'L200 antiga '),
(1399, '7897483489155', 0, 'Rcpt12040 / trw', 1, '56.00', '220.00', 4, 1, './imgs/2021-05-24_15_11_19.jpg', '2021-05-24 18:11:19', 4, 42, 'L200 Triton nova  2.5 '),
(1400, '7893026263572', 771136, 'Pd/465 / frasle', 1, '35.00', '180.00', 2, 1, './imgs/2021-05-24_15_16_47.jpg', '2021-05-24 18:16:47', 4, 42, 'Megane / xsara 1.8 picasso 1.8 '),
(1401, '7897483448442', 0, 'Rcpt04400 / trw', 1, '40.00', '170.00', 2, 1, './imgs/2021-05-24_15_23_21.jpg', '2021-05-24 18:23:21', 4, 42, 'Meriva 1.8 / zafira 1.8 '),
(1402, '7897483403830', 0, 'Rcpt13790 / trw', 1, '51.00', '180.00', 1, 1, './imgs/2021-05-24_15_27_07.jpg', '2021-05-24 18:27:07', 4, 42, 'Cruze lt 1.8 16v'),
(1403, '7893026951592', 0, 'Pd/1517 / frasle', 1, '113.00', '280.00', -65, 1, './imgs/2021-05-24_15_32_07.jpg', '2021-05-24 18:32:07', 4, 42, 'Cruzer 2017 turbo novo'),
(1405, '7897483401751', 0, 'Rcpt13750 / trw', 1, '53.00', '180.00', 9, 1, './imgs/2021-05-24_15_42_38.jpg', '2021-05-24 18:42:38', 4, 42, 'Cobalt 1.8 / spin 1.8 com abs'),
(1406, '7892679071992', 0, 'N-1372/1373 / cobreq', 1, '45.00', '180.00', 2, 1, './imgs/2021-05-24_15_51_55.jpg', '2021-05-24 18:51:55', 4, 42, 'Civic 2005 / accord / new civic 1.8 16v traseira'),
(1407, 'Xxxx', 0, 'Pd/398 / frasle', 1, '35.00', '160.00', 2, 1, './imgs/2021-05-24_15_54_04.jpg', '2021-05-24 18:54:04', 4, 42, 'Civic ex exl 1.6 antigo traseira '),
(1408, '7890903032696', 0, 'Nkf1269p / nakata', 1, '96.00', '180.00', 2, 1, './imgs/2021-05-24_15_57_43.jpg', '2021-05-24 18:57:43', 4, 42, 'New fit 1.4 1.5 civic 2006'),
(1409, '7893026957723', 0, 'Pd/1492 / frasle', 1, '106.00', '220.00', 3, 1, './imgs/2021-05-24_16_00_06.jpg', '2021-05-24 19:00:06', 4, 42, 'Fit dx ex exl lx 1.5 2014 '),
(1410, '7893026916867', 0, 'Pd/457 / frasle', 1, '68.00', '180.00', 2, 1, './imgs/2021-05-24_16_02_18.jpg', '2021-05-24 19:02:18', 4, 42, 'City 2009-2014 traseira'),
(1411, '7893026764024', 0, 'P-685 / frasle', 1, '56.00', '180.00', 2, 1, './imgs/2021-05-24_16_03_56.jpg', '2021-05-24 19:03:56', 4, 42, 'City 1.5 / fit 1.5 16v Dt'),
(1412, '7892679069388', 0, 'N-1457 / cobreq ', 1, '151.00', '280.00', 2, 1, './imgs/2021-05-24_16_06_13.jpg', '2021-05-24 19:06:14', 4, 42, 'Civic 2.0 vtec exr lxr 2014 /new civic 1.8 16v exs lxl lx '),
(1413, '7897483489254', 0, 'Rcpt12140 / trw', 1, '40.00', '180.00', 1, 1, './imgs/2021-05-24_16_07_41.jpg', '2021-05-24 19:07:41', 4, 42, 'City 1.5 ex'),
(1414, '7890903079998', 0, 'Nkf1149p / nakata', 1, '40.00', '180.00', 1, 1, './imgs/2021-05-24_16_08_48.jpg', '2021-05-24 19:08:48', 4, 42, 'Fit 1.4 2004 antigo'),
(1415, '7897483459004', 0, 'Rcpt08090 / trw', 1, '56.00', '170.00', 2, 1, './imgs/2021-05-24_16_11_01.jpg', '2021-05-24 19:11:01', 4, 42, 'Fit 1.4'),
(1416, '7897483448039', 0, 'Rcpt02790 / trw', 1, '45.00', '220.00', 1, 1, './imgs/2021-05-24_16_13_42.jpg', '2021-05-24 19:13:42', 4, 42, 'New civic 1.8 16v 2008-2012 / civic 1.7 samurai'),
(1417, '7898314112303', 0, 'LIMPA AR CONDICIONADO / ORBI-AIR', 1, '10.00', '60.00', 141, 0, './imgs/or-1.png', '2021-05-25 11:58:26', 4, 43, 'tODOS OS CARROS'),
(1418, '7898307291817', 0, 'SILICONE PARA MOTORES / TECPRO', 1, '10.00', '10.00', 15, 0, './imgs/DE-1.png', '2021-05-25 12:05:42', 7, 44, 'TODOS OS CARROS '),
(1419, '7894758183534', 0, 'Ks313 / gates ', 1, '599.00', '850.00', 1, 1, './imgs/2021-05-25_09_06_27.jpg', '2021-05-25 12:06:27', 4, 44, 'Cruze 1.8 16v 2011'),
(1420, '7894758183534', 0, 'Ks313 / gates', 1, '599.00', '850.00', 1, 1, './imgs/2021-05-25_09_10_42.jpg', '2021-05-25 12:10:42', 4, 45, 'Cruze 1.8 16v 2011 / kit correia dentada'),
(1421, '7898410233889', 0, '149stp8m200h / dayco', 1, '48.00', '170.00', 2, 1, './imgs/2021-05-25_09_13_50.jpg', '2021-05-25 12:13:50', 4, 45, 'Vectra 2.2 / blazer 2.4 8v 2001 / blazer 2.2 8v 95-00 / omega suprema 2.2 94 149dentes'),
(1422, '7898410233704', 0, '132sp270h / dayco', 1, '54.00', '160.00', 0, 1, './imgs/2021-05-25_09_17_51.jpg', '2021-05-25 12:17:51', 4, 45, 'Duster 1.6 / logan 1.6 / clio 1.6 / megane 1.6 / livina 1.6 '),
(1423, '7897707504299', 0, 'SC-N08', 1, '150.00', '300.00', 1, 0, './imgs/NGK.jpg', '2021-05-25 12:21:46', 7, 46, 'TUCSON / GASOLINA -ALCOOL / MOTOR 2.0'),
(1424, '7894758217277', 0, 'Ks403 / gates', 1, '251.00', '650.00', 1, 1, './imgs/2021-05-25_09_30_18.jpg', '2021-05-25 12:30:18', 4, 46, 'Ecosport 1.6 16v sigma 2013 / fiesta 1.6 16v sigmA 2009  '),
(1425, '7894758217277', 0, 'Ks403 / gates', 1, '251.00', '700.00', 2, 1, './imgs/2021-05-25_09_32_20.jpg', '2021-05-25 12:32:20', 4, 45, 'Ecosport 1.6 16v sigma 2013 / new FIESTA 1.6 16v sigma 2009 '),
(1426, '7899662102305', 0, 'Ktb333 / dayco', 1, '232.00', '700.00', 1, 1, './imgs/2021-05-25_09_37_08.jpg', '2021-05-25 12:37:08', 4, 45, 'C3 1.6 16v / c4 Picasso 1.6 16v / aircross 1.6 16v / xsara 1.6 16v kit correia dentada '),
(1427, '7897843835042', 0, 'XS10587 / DELPHI', 1, '120.00', '300.00', 2, 0, './imgs/CABO.jpg', '2021-05-25 12:42:29', 7, 46, 'ASTRAQ / VECTRA / ZAFIRA'),
(1428, '77014770141', 0, '7701477014 / renault', 1, '320.00', '800.00', 20, 1, './imgs/2021-05-25_09_49_00.jpg', '2021-09-30 16:43:04', 4, 45, 'Duster 1.6 2.0 16v '),
(1429, '7897843839101', 0, 'XS10638 / DELPHI', 1, '54.00', '135.00', 12, 0, './imgs/1444.png', '2021-09-18 14:30:01', 4, 46, 'ONIX 1.0 / PRISMA 1.0 / COBALT / SPIN'),
(1430, '130C13538R1', 0, '130C13538R / renault ', 1, '285.00', '350.00', 1, 1, './imgs/2021-05-25_09_50_52.jpg', '2021-05-25 12:50:52', 4, 45, 'Logan 1.6 / sandero 1.6 kit correria dentada'),
(1432, '7897843812029', 0, 'XS10001 / DELPHI ', 1, '76.00', '190.00', 17, 0, './imgs/1444-2.png', '2021-09-22 22:58:30', 4, 46, 'AGILE / BLAZER / S-10 / CELTA / corsa CLASSIC / COBALT / DOBLO / IDEA / PUNTO / SIENA /STILO / STRADA / montana '),
(1433, '7898384073153', 0, '2048 / nytron', 1, '35.00', '230.00', 2, 1, './imgs/2021-05-25_10_06_59.jpg', '2021-05-25 13:06:59', 4, 47, 'Tucson 2.0 16v polia correia dentada'),
(1434, '7898384073160', 0, '7707', 1, '50.00', '150.00', 3, 1, './imgs/2021-05-25_10_12_30.jpg', '2021-05-25 13:12:30', 4, 48, 'Tucson 2.0 16v 2006'),
(1435, '4047026263206', 0, 'F00099C135/BOSH', 1, '80.00', '200.00', 1, 0, './imgs/YYY.png', '2021-05-25 13:12:49', 7, 46, 'LOGAN / SANDERO / SYMBOL / KANGOO'),
(1436, '7897707503414', 0, 'CC-R16/NGK', 1, '79.00', '197.50', 5, 0, './imgs/NGK-1.jpg', '2021-09-18 23:16:03', 4, 46, 'CLIO / SANDERO / LOGAN / MOTOR 1.0 16V'),
(1437, '7894758183756', 0, 'T43225 / gates', 1, '50.00', '160.00', 6, 1, './imgs/2021-05-25_10_16_26.jpg', '2021-05-25 13:16:26', 4, 48, 'Logan 1.6 / sandero 1.6'),
(1438, '7898410233148', 0, '096sp170h / dayco', 1, '42.00', '160.00', 6, 1, './imgs/2021-05-25_10_19_15.jpg', '2021-05-25 13:19:15', 4, 45, 'Clio 1.6 / sandero 1.6 / logan 1.6 / megane 1.6 / kangoo 1.6 '),
(1439, '7897707503315', 0, 'SC-F30/ NGK ', 1, '83.00', '200.00', 7, 0, './imgs/NGK-2.jpg', '2021-05-25 13:21:32', 7, 46, 'FIESTA / KA / COURRIER / ECOESPORT / ZETC ROCAM '),
(1440, '7898384073146', 0, '7791 / nytron', 1, '125.00', '300.00', 2, 1, './imgs/2021-05-25_10_22_29.jpg', '2021-05-25 13:22:29', 4, 41, 'Hillux 2.6 3.0 / sw4 2.6 3.0 '),
(1441, '7898384073146', 0, '7791 / nytron ', 1, '125.00', '300.00', 2, 1, './imgs/2021-05-25_10_23_27.jpg', '2021-05-25 13:23:27', 4, 48, 'Hillux sw4 2.6 3.0 '),
(1442, '7898493040763', 0, '097sp250h / dayco', 1, '50.00', '200.00', 2, 1, './imgs/2021-05-25_10_25_25.jpg', '2021-05-25 13:25:25', 4, 45, 'Hillux sw4 2.5 3.0 '),
(1443, '7897843839545', 0, 'XS10639 / DELPHI TECNOOGICS', 1, '88.00', '130.00', 3, 0, './imgs/1444-3.png', '2021-05-25 13:27:04', 7, 46, 'ECOESPORT / FIESTA'),
(1444, '7898410236644', 0, '6pk1200ee / dayco ', 1, '29.00', '150.00', 3, 1, './imgs/2021-05-25_10_27_16.jpg', '2021-05-25 13:27:16', 4, 49, 'Gol / fox / saveiro / polo / space fox /crossfox / voyage g5 g6'),
(1445, '7897707501892', 0, 'SC-T09/ NGK', 1, '60.00', '150.00', 13, 0, './imgs/NGK-3.jpg', '2021-05-25 13:32:26', 4, 46, 'PALIO / SIENA  / UNO / FIORINO / PUNTO / WEEKEND MOTOR  1.0 FIRE '),
(1446, '7899662106648', 0, '3pk796ee / dayco', 1, '27.00', '90.00', 6, 0, './imgs/2021-05-25_10_43_30.jpg', '2021-05-25 13:36:18', 7, 50, 'Gol / fox / saveiro / polo / voyage / crossfox / spacefox'),
(1447, '7897707503902', 0, 'SC-T64 / NGK  ', 1, '67.00', '167.50', 4, 0, './imgs/NGK-4.jpg', '2021-10-06 21:47:17', 4, 46, 'UNO / PALIO / GRWAN SIENA  / MOTOR 1.4 FLAX EVO'),
(1448, '78977007503933', 0, 'SC-T66 / NGK', 1, '75.00', '220.00', 5, 0, './imgs/RE-1.png', '2021-05-25 13:43:00', 7, 46, 'IDEIA / PUNTO /  SIENA / GRAN SIENA / MOTO 1.6 ETORQ'),
(1449, '7897707501649', 0, 'ST-V25 / NGK', 1, '114.00', '250.00', -1, 0, './imgs/NGK-5.jpg', '2021-05-25 13:46:58', 7, 46, 'GOL G4 G5 / FOX / CROSSFOX / GOLF / POLO / SPACE FOX  / VOYAGE '),
(1450, '7898410233766', 0, '135stp8m190h / dayco', 1, '31.00', '160.00', 1, 1, './imgs/2021-05-25_10_52_55.jpg', '2021-05-25 13:52:55', 4, 45, 'Gol / fox / crossfox / spacefox / voyage / polo / parati / golf / saveiro '),
(1451, 'JZZ109119', 0, 'Jzz209119 / Volkswagen', 1, '28.00', '160.00', 17, 1, './imgs/2021-05-25_10_55_09.jpg', '2021-05-25 13:55:09', 4, 45, 'GOL / FOX / CROSSFOX / SPACEFOX / VOYAGE / POLO / PARATI / GOLF / SAVEIRO '),
(1454, '7898410233223', 0, '104sp170h / dayco', 1, '39.00', '100.00', 5, 1, './imgs/2021-05-26_08_13_11.jpg', '2021-05-26 11:13:11', 4, 45, 'C3 1.4 / hoggar 1.4 / peugeout 1.4 / picasso 1.4 / peugeout 106 1.0 91 '),
(1455, '7898410233124', 0, '095sp+234h / dayco', 1, '53.00', '170.00', 2, 1, './imgs/2021-05-26_08_18_08.jpg', '2021-05-26 11:18:08', 4, 45, 'Clio 1.0 / sandero 1.0 / logan 1.0 / march 1.0 / peugeout 206 1.0 / kangoo 1.0 95 dentes '),
(1456, '7898410233568', 0, '124p8s220h / dayco ', 1, '28.48', '71.20', 12, 1, './imgs/2021-05-26_08_21_46.jpg', '2021-09-24 20:21:46', 4, 45, 'Palio fire / siena fire / strada antiga fire / Uno mille fire / fiorino fire antiga / punto fire / bravo antigo '),
(1457, '7898410234381', 0, '129p8s220h / dayco', 1, '34.00', '170.00', 37, 1, './imgs/2021-05-26_08_26_37.jpg', '2021-05-26 11:26:37', 4, 45, 'Palio novO 1.4 evo / grand siena 1.4 Evo / uno 1.4 evo / mobi evo / argo evo / strada nova 1.4 / siena 1.4 '),
(1458, '7898410233285', 0, '111sp170h / dayco ', 1, '24.00', '70.00', 20, 0, './imgs/2021-05-26_08_29_30.jpg', '2021-05-26 11:29:31', 4, 45, 'Corsa wind / corsa classic / celta 1.0 1.4 / meriva 1.4 / montana / prisma novo / prisma antigo / onix / spin / cobalt / agile / '),
(1459, '7898384071173', 0, '7736 / nytron', 1, '53.00', '150.00', 3, 1, './imgs/2021-05-26_08_32_13.jpg', '2021-05-26 11:32:13', 4, 48, 'Gol / fox / crossfox / spacefox / voyage / saveiro / gol / golf 1.6 / polo audi a3 1.6 '),
(1460, '030109243Q', 0, '030109243q / Volkswagen', 1, '70.00', '170.00', 0, 1, './imgs/2021-05-26_08_36_09.jpg', '2021-05-26 11:36:09', 4, 48, 'Gol / fox / crossfox / spacefox / polo / saveiro / audi a3 / voyage / golf 1.6 '),
(1461, '7898384072750', 0, '7726 / nytron ', 1, '63.00', '180.00', 5, 1, './imgs/2021-05-26_08_38_28.jpg', '2021-05-26 11:38:28', 4, 48, 'C3 1.4 1.5 / hoggar 1.4 / peugeout 206 207 208 1.4 / berlingo 1.4  '),
(1462, '7898384071296', 0, '7769 / nytron', 1, '93.58', '233.95', 12, 1, './imgs/2021-05-26_08_39_57.jpg', '2021-09-18 17:05:20', 4, 48, 'Clio 1.0 / sandero 1.0 / logan 1.0 / march 1.0 / peugeout 206 1.0 / '),
(1463, '7898598386353', 0, '5718 / gps', 1, '51.00', '180.00', 1, 1, './imgs/2021-05-26_08_42_43.jpg', '2021-05-26 11:42:43', 4, 47, 'UP / up 1.0 12v tsi 2015 / fox novo / gol novo / saveiro nova / golf 1.4 16v tsi  2014 / polia auxiliar'),
(1464, '7898598386360', 0, '5719 / gps', 1, '105.00', '220.00', 1, 1, './imgs/2021-05-26_08_47_34.jpg', '2021-05-26 11:47:34', 4, 48, 'Up / up tsi / fox 1.0 12v 2014 / fox 1.6 NOVO / SAVEIRO 1.6 nova / gol 1.6 novo / golf 1.4 tsi '),
(1465, '5414465847592', 0, '5680xs / gates', 1, '97.00', '180.00', 1, 1, './imgs/2021-05-26_08_54_04.jpg', '2021-05-26 11:54:04', 4, 45, 'Jetta 1.4 1.6 / passat 1.4 1.6 / golf 1.4 1.6 / polo novo / up / tiguan 2011 / new beetle fusca '),
(1466, '7898410233797', 0, '138tp8m230h / dayco', 1, '75.00', '200.00', 1, 1, './imgs/2021-05-26_08_56_41.jpg', '2021-05-26 11:56:41', 4, 45, 'Jetta 1.4 1.6 / passat 1.4 1.6 / golf 1.4 1.6 / polo novo / up / tiguan 2011 / new beetle fusca '),
(1467, '7898594642521', 0, 'V56018 / continental', 1, '47.00', '170.00', 2, 1, './imgs/2021-05-26_09_00_25.jpg', '2021-05-26 12:00:25', 4, 48, 'Palio Todos / siena todos / grand siena / Argo / mobi / strada todas / fiorino todas / punto / linea / uno todos fire e evo'),
(1468, '7898384070251', 0, '7796 / nytron ', 1, '59.00', '130.00', 18, 0, './imgs/2021-05-26_09_03_11.jpg', '2021-05-26 12:03:11', 4, 48, 'Celta todos / corsa classic todos / corsa todos / meriva todos / astra todos / vectra todos / cobalt / onix / prisma todos / spim / agile todos / '),
(1469, '7897056503349', 0, '12770 / zen ', 1, '48.00', '180.00', 4, 1, './imgs/2021-05-26_09_06_22.jpg', '2021-05-26 12:06:22', 4, 48, 'Celta todos / corsa classic todos / corsa todos / meriva todos / astra todos / vectra todos / cobalt / onix / prisma todos / spim / agile todos / '),
(1470, '7898541349442', 0, 'Gc4098 / gauss ', 1, '175.00', '437.50', 4, 1, './imgs/2021-05-26_09_17_10.jpg', '2021-09-20 20:32:34', 4, 51, 'Gol g6-g7 / Saveiro G6-g7 / FOX NOVO / voyage g6-g7'),
(1471, '7891579342850', 0, 'Bi0060mm / magnetimarelli ', 1, '385.00', '550.00', 1, 1, './imgs/2021-05-26_09_22_30.jpg', '2021-05-26 12:22:30', 4, 51, 'Gol g5 / voyage g5 / saveiro g5 '),
(1472, '7891579205971', 0, 'Bi0017mm / magnetimarelli', 1, '145.00', '400.00', 5, 1, './imgs/2021-05-26_09_24_00.jpg', '2021-05-26 12:24:00', 4, 51, 'GoL g4 / fox / kombi '),
(1473, '7898541341231', 0, 'Gc4273 / gauss', 1, '116.00', '350.00', 5, 1, './imgs/2021-05-26_09_25_36.jpg', '2021-05-26 12:25:36', 4, 51, 'Hb20 1.6 / i30 2.0 / creta 1.6 / cerato 1.6 / kia soul 1.6 / '),
(1474, '7898541341880', 0, 'Gc4274 / gauss ', 1, '120.00', '300.00', 4, 1, './imgs/2021-05-26_09_27_55.jpg', '2021-09-20 20:32:55', 4, 51, 'Hb20 1.0'),
(1475, '7891579368447', 0, 'Bi0079mm / magnetimarelli', 1, '107.00', '300.00', 3, 1, './imgs/2021-05-26_09_28_54.jpg', '2021-05-26 12:28:54', 4, 51, 'Hb20 1.0'),
(1476, '7898541343648', 0, 'Gc4270 / gauss', 1, '0.00', '2500.00', 2, 1, './imgs/2021-05-26_09_31_07.jpg', '2021-05-26 12:31:07', 4, 51, 'Ix35 / sonata / tucson / cerato / sportage / kia soul ');
INSERT INTO `produtos` (`id`, `barra`, `codigo`, `nome`, `qtd`, `valor_compra`, `valor_venda`, `estoque`, `status`, `foto`, `data`, `usuarios_id`, `categorias_id`, `aplicacao`) VALUES
(1477, '7891579287946', 0, 'Bi0021mm / magnetimarelli ', 1, '57.69', '144.22', 12, 1, './imgs/2021-05-26_09_33_31.jpg', '2021-09-18 21:33:32', 4, 51, 'Duster 1.6 2.0 / megane 2.0 / clio novo / logan 1.6 Novo / sandero 1.6 novo'),
(1478, '7899751900010', 0, 'Gc4252 / gauss', 1, '173.00', '350.00', 6, 0, './imgs/2021-05-26_09_35_07.jpg', '2021-09-18 21:25:44', 7, 51, 'Corolla 1.8 2.0 / prius 1.8 / lexus '),
(1479, '3165143655399', 0, '0221604014 / bosch ', 1, '141.00', '352.50', 0, 1, './imgs/2021-05-26_09_36_55.jpg', '2021-09-18 23:25:29', 4, 51, 'Tiida 1.8 / versa / cerato / livina 1.6 '),
(1480, '3165143593998', 0, '0221503485 / bosch ', 1, '181.00', '350.00', 4, 1, './imgs/2021-05-26_09_38_41.jpg', '2021-05-26 12:38:41', 4, 51, 'Fiesta zetec rocam tomada pequena '),
(1481, '7899751900287', 0, 'Gc4066 / gauss', 1, '46.00', '300.00', 2, 1, './imgs/2021-05-26_09_41_06.jpg', '2021-05-26 12:41:06', 4, 51, 'New ka 1.0 2015 '),
(1482, '7899751923408', 0, 'Gc4123 / gauss', 1, '106.00', '280.00', 3, 1, './imgs/2021-05-26_09_42_29.jpg', '2021-05-26 12:42:29', 4, 51, 'Focus  '),
(1483, '7897707570003', 0, 'U2001 / ngk ', 1, '120.00', '280.00', 2, 1, './imgs/2021-05-26_09_46_58.jpg', '2021-05-26 12:46:58', 4, 51, 'Fiesta zetec Rocam tomada grande'),
(1484, '', 0, 'F000zs0235 / bosch', 1, '95.00', '350.00', 3, 1, './imgs/2021-05-26_09_52_10.jpg', '2021-05-26 12:49:01', 4, 51, 'Palio novo 2012 evo / grand siena 1.4 EVO / uno evo novo / mobi / argo / fiorino nova'),
(1485, '4047024733978', 0, 'F000zs0217 / bosch', 1, '170.00', '450.00', 3, 1, './imgs/2021-05-26_09_54_33.jpg', '2021-05-26 12:54:33', 4, 51, 'Palio 1.8 / strada 1.8 / punto 1.8 / uno mille / idea antigo'),
(1486, '7891579864284', 0, 'Bi102mm / magnetimarelli', 1, '228.00', '600.00', 1, 1, './imgs/2021-05-26_09_56_32.jpg', '2021-05-26 12:56:32', 4, 51, 'SANDERO 1.0 1.6 / CLIO 1.0 / SYMBOL 1.6 / LOGAN 1.0 1.6 '),
(1487, '7897843834816', 0, 'Ce20131 / delphi ', 1, '269.13', '550.00', 1, 1, './imgs/2021-05-26_09_58_55.jpg', '2021-05-26 12:58:55', 4, 51, 'Agile 1.4 / cobalt 1.4 / s10 2.4 flex 2012'),
(1488, '7897843812364', 0, 'Ce10001 / delphi', 1, '122.00', '350.00', 4, 1, './imgs/2021-05-26_10_00_43.jpg', '2021-05-26 13:00:43', 4, 51, 'Celta 1.0 / prisma 1.0 1.4 antigo / meriva / montana '),
(1489, '7897707513147', 0, 'Lkr7d-de / ngk', 1, '18.25', '80.00', 35, 1, './imgs/2021-05-26_10_02_34.jpg', '2021-05-26 13:02:34', 4, 52, 'Hb20 1.0 3 cilindros unidade'),
(1490, '7897707512249', 0, 'Lzkr7b-de / ngk', 1, '17.00', '180.00', 11, 1, './imgs/2021-05-26_10_06_13.jpg', '2021-05-26 13:06:13', 4, 52, 'Hb20 1.6 / i30 1.6 / kia soul 1.6 / cerato 1.6 jogo '),
(1491, '7897707510092', 0, 'Ltr7a-10 / ngk', 1, '15.00', '150.00', 5, 1, './imgs/2021-05-26_10_08_16.jpg', '2021-05-26 13:08:16', 4, 52, 'Fiesta zetec rocam 1.0 1.6 / Ecosport rocam 1.6 jogo'),
(1492, '7897707511471', 0, 'Lfr6bd / ngk', 1, '80.00', '200.00', 2, 1, './imgs/2021-05-26_10_09_34.jpg', '2021-09-18 15:18:05', 4, 52, 'C3 / aircross / peugeot 307'),
(1493, '224019874R', 0, '224019874r / renault', 1, '52.44', '100.00', 23, 1, './imgs/2021-05-26_10_12_37.jpg', '2021-05-26 13:12:37', 4, 52, 'Sandero 2016 3cilindros / logan 3cilindros unidade'),
(1494, '224019202R10', 0, '224019202r / renault', 1, '75.00', '187.50', 10, 0, './imgs/2021-05-26_10_17_15.jpg', '2021-09-30 16:46:12', 4, 52, 'Logan 1.0 / clio 1.0 / sandero 1.0 / peugeout 206 207 208 1.0 / march 1.0 / versa 1.0 '),
(1495, '770050015510', 0, '7700500155 / renault ', 1, '75.00', '187.50', 20, 0, './imgs/2021-05-26_10_20_08.jpg', '2021-09-30 16:26:26', 4, 52, 'Duster 1.6 2.0 / sandero 1.6 / logan 1.6 / livina 1.6 / symbol 1.6 unidade'),
(1497, '7897707511402', 0, 'Ker7a-8gdeg / ngk', 1, '0.00', '50.00', 3, 0, './imgs/2021-05-26_10_26_13.jpg', '2021-05-26 13:26:13', 7, 52, 'Gol / fox / saveiro / crossfox / spacefox / virtus / polo novo UNIDADE 3 cilindros'),
(1498, '4047024656758', 0, 'Sp33 / bosch', 1, '18.00', '160.00', 5, 1, './imgs/2021-05-26_10_33_31.jpg', '2021-05-26 13:33:31', 4, 52, 'Gol / fox / saveiro / polo / voyage 1.0 1.6 4 cilindros jogo'),
(1499, '7897707510429', 0, 'Bkr6e-d / ngk', 1, '47.00', '117.50', 19, 0, './imgs/2021-05-26_10_35_45.jpg', '2021-09-18 16:54:40', 4, 52, 'Palio fire / fiorino fire / strada fire / uno fire / gol power '),
(1500, '7897707510153', 0, 'Zkr8b-10 / ngk', 1, '10.00', '170.00', 8, 1, './imgs/2021-05-26_10_37_53.jpg', '2021-05-26 13:37:53', 4, 52, 'Palio evo / uno evo / strada evo / punto evo '),
(1501, '7897707512232', 0, 'Lzkr8b-de / ngk', 1, '19.00', '200.00', 4, 1, './imgs/2021-05-26_10_39_07.jpg', '2021-05-26 13:39:07', 4, 52, 'Sportage / IX35 jogo'),
(1502, '93230926', 0, '93230926 / gm', 1, '56.00', '140.00', 25, 0, './imgs/2021-05-26_10_43_11.jpg', '2021-09-22 20:02:14', 4, 52, 'Corsa 1.4 / montana 1.4 / onix 1.4 / prisma 1.4 / spin 1.4 1.8 / vectra / astra / corsao / cobalt '),
(1503, '93363296', 0, '93363296 / gm', 1, '9.00', '150.00', 13, 1, './imgs/2021-05-26_10_44_42.jpg', '2021-05-26 13:44:42', 4, 52, 'Corsa 1.0 / celta / corsa classic / onix 1.0 / prisma 1.0 antigo e novo '),
(1504, 'Xxxx', 0, '55267121 / mopar ', 1, '28.00', '180.00', 5, 1, './imgs/2021-05-26_10_47_19.jpg', '2021-05-26 13:47:19', 4, 52, 'Evo 4 cilindros fiat / fire 3 CILINDROS jogo palio / argo / mobi '),
(1505, '7897056520827', 0, '5712 / zen ', 1, '100.00', '300.00', 4, 1, './imgs/2021-05-26_14_22_45.jpg', '2021-05-26 17:22:45', 4, 47, 'Sandero 1.0'),
(1506, '7897056585635', 0, '5374 / zen', 1, '100.00', '220.00', 1, 1, './imgs/2021-05-26_14_24_21.jpg', '2021-05-26 17:24:21', 4, 47, 'Blazer / s10 / mwm '),
(1507, '7898384070794', 0, '7798 / nytron ', 1, '131.00', '280.00', 1, 1, './imgs/2021-05-26_14_35_05.jpg', '2021-05-26 17:35:05', 4, 53, 'Gol / parati '),
(1508, '7898384071814', 0, '7814 / nytron ', 1, '116.00', '280.00', 2, 1, './imgs/2021-05-26_14_46_07.jpg', '2021-05-26 17:46:07', 4, 53, 'Corsa / celta / montana 1.4 2007 / cobalt 1.4 / onix / prisma / meriva'),
(1509, '24588831', 0, '24588831 / gm', 1, '120.00', '350.00', 3, 1, './imgs/2021-05-26_14_50_05.jpg', '2021-05-26 17:50:05', 4, 53, 'S10 '),
(1510, '7898384071050', 0, '7822 / NYTRon', 1, '112.00', '280.00', 3, 1, './imgs/2021-05-26_14_52_23.jpg', '2021-05-26 17:52:23', 4, 53, 'Palio / strada / uno / doblo / bravo / fiat 500 / siena / grand siena'),
(1511, '7898384070985', 0, '1143 / nytron', 1, '23.00', '80.00', 7, 1, './imgs/2021-05-26_14_55_01.jpg', '2021-05-26 17:55:01', 4, 47, 'Palio / uno / strada / siena / grand siena /mobi / argo / fiorino todas '),
(1512, '7898384072156', 0, '1250 / nytron ', 1, '27.00', '180.00', 6, 1, './imgs/2021-05-26_14_58_15.jpg', '2021-05-26 17:58:16', 4, 47, 'Xsara 1.6 / peugeout 206 1.4'),
(1513, '7898384072088', 0, '1123 / nytron', 1, '60.00', '180.00', 8, 1, './imgs/2021-05-26_15_04_35.jpg', '2021-05-26 18:04:35', 4, 47, 'Peugeout 1.6 16v COM arcondicionado'),
(1514, '7898384071258', 0, '1154 / nytron', 1, '80.00', '220.00', 9, 1, './imgs/2021-05-26_15_08_51.jpg', '2021-05-26 18:08:51', 4, 47, 'LOGAN / CLIO / SANDERO / KANGOO  1.0 16V engrenagem atras '),
(1515, '7898384071227', 0, '1150 / nytron', 1, '55.00', '120.00', 13, 1, './imgs/2021-05-26_15_11_54.jpg', '2021-05-26 18:11:54', 4, 47, 'Clio / kangoo / peugeout 206 1.0 16v'),
(1516, '7898384071920', 0, '1139 / nytron', 1, '37.00', '70.00', 7, 0, './imgs/2021-05-26_15_13_55.jpg', '2021-05-26 18:13:55', 7, 47, 'Corsa / celta / meriva / cobalt 2.0 com aba '),
(1517, '7898384076567', 0, '1119 / nytron', 1, '35.00', '90.00', 8, 1, './imgs/2021-05-26_15_15_30.jpg', '2021-05-26 18:15:30', 4, 47, 'Corsao / corsa / celta grande estriada '),
(1518, '7898384076703', 0, '1114 / nytron ', 1, '27.00', '60.00', 7, 1, './imgs/2021-05-26_15_17_45.jpg', '2021-05-26 18:17:45', 4, 47, 'Gol / parati / golf 1.6 / polo sem aba'),
(1519, '7898384070480', 0, '1152 / nytron', 1, '24.00', '150.00', 10, 1, './imgs/2021-05-26_15_19_46.jpg', '2021-05-26 18:19:46', 4, 47, 'Gol / parati sem aba grande'),
(1520, '087295922774', 0, 'Lnar7a-9g / ngk', 1, '20.00', '50.00', 31, 0, './imgs/2021-05-26_15_35_56.jpg', '2021-09-18 17:39:56', 4, 52, 'Ford KA new 3 cilindro 1.0 1.5'),
(1524, '878888', 0, '296 / aplic RESOLIT ', 1, '33.00', '80.00', 6, 0, './imgs/5542-1.jpg', '2021-05-27 13:31:13', 7, 47, 'Corsa /corsa classic / celta / meriva / onix / cobalt engrenagem correia dentada '),
(1525, '7892637002150', 0, '215 / aplic resolit', 1, '33.00', '80.00', 1, 0, './imgs/1-285.jpg', '2021-05-27 13:35:29', 7, 47, 'Corsa / corsa classic / celta / astra / omega 2.2 / s10 2.8 turbo / CALIBRA poliA COM aba grande '),
(1526, '7898497407425', 889977, 'Rt7235 / roltens', 1, '110.00', '350.00', 1, 0, './imgs/5542-2.jpg', '2021-05-27 13:39:42', 7, 53, 'S10 nova / trailblazer '),
(1527, '7897056505138', 0, '12777 / zen ', 1, '30.00', '80.00', 2, 0, './imgs/fvd.png', '2021-05-27 13:43:52', 7, 47, 'Fiesta rocam / s10 / gol motor ap'),
(1528, '7316571349961', 0, 'Vkm11113 / skf', 1, '156.00', '250.00', 1, 0, './imgs/eee-3.png', '2021-05-27 13:50:33', 7, 48, 'Bora / golf / jetta / passat / polo'),
(1529, '88744152', 9988523, 'lm67048/lm67010 / gbr', 1, '50.00', '150.00', 1, 0, './imgs/gbr.png', '2021-05-27 13:54:36', 7, 54, 'Kombi / s10 / opala rolamento roda dianteira'),
(1530, '7898599282821', 0, 'Rt7072 / roltens', 1, '59.00', '150.00', 1, 0, './imgs/51rMLSU25KL.png', '2021-05-27 16:58:52', 7, 47, 'Fox polia auxiliar'),
(1531, '94702968', 0, '94702968 / gm ', 1, '130.00', '290.00', 2, 0, './imgs/rewew.jpg', '2021-05-27 17:18:39', 7, 53, 'Onix / cobalt / corsa / corsa classic / celta / meriva / montana'),
(1532, '7316573392484', 0, 'Vkc2523h / skf', 1, '36.00', '180.00', 4, 0, './imgs/eee-2.png', '2021-05-27 17:28:02', 7, 55, 'C3 / c4 / c5 / peugeout 307 207 206'),
(1533, '7316572669631', 0, 'Vkc2215h / skf', 1, '36.00', '180.00', 1, 0, './imgs/eee-1.png', '2021-05-27 17:34:22', 7, 55, 'Corsa / corsa classic / agile '),
(1534, '7316576683398', 0, 'Vkc2216 / skf', 1, '36.00', '180.00', 2, 0, './imgs/eee.png', '2021-05-27 17:37:47', 7, 55, 'Peugeout 206 1.4 8v / peugeout 1.0 16v '),
(1535, '7895586080255', 0, 'Hcs10l16 / hcs', 1, '36.00', '180.00', 6, 0, './imgs/download.jpg', '2021-05-27 17:40:53', 7, 55, 'Peugeout 206 1.0 8v 98-00'),
(1536, '7892637005823', 0, '582 / aplic resolit', 1, '100.00', '300.00', 1, 0, './imgs/5542.jpg', '2021-05-27 17:43:56', 7, 47, 'Gol g4 / golf / fox polia virabrequim'),
(1537, '7890903032092', 0, 'N92023 / nakata ', 1, '50.00', '150.00', 2, 0, './imgs/1-65.jpg', '2021-05-29 13:26:48', 7, 56, 'New fiesta / new ecosport lado esquerdo'),
(1538, '7890903032085', 0, 'N93024 / nakata', 1, '64.00', '160.00', 6, 1, './imgs/2021-05-29_10_35_58.jpg', '2021-09-24 23:05:51', 4, 56, 'New fiesta / new ecosport lado direito'),
(1540, '7899152533008', 0, 'Tdi1034 / perfect ', 1, '32.00', '130.00', 1, 0, './imgs/1-63.jpg', '2021-05-29 13:53:07', 7, 56, 'Courier / fiesta 99-07'),
(1541, '7899013300534', 0, '335019 / viemar ', 1, '42.00', '150.00', 7, 0, './imgs/1-62.jpg', '2021-05-29 13:54:32', 7, 56, 'Fiesta rocaM / ecosport rocam lado esquerdo'),
(1542, '7890903004051', 0, 'N92016 / nakata', 1, '46.00', '150.00', 3, 0, './imgs/1-61.jpg', '2021-05-29 13:55:46', 7, 56, 'Fiesta rocam / ecosport lado direito'),
(1543, '7899013340349', 0, '200003 / viemar', 1, '40.00', '180.00', 1, 0, './imgs/1-42.jpg', '2021-05-29 13:57:42', 7, 57, 'Ka antigo / fiesta Articulação coluna de direção'),
(1544, '7899013321126', 0, '335486 / viemar', 1, '59.00', '150.00', 2, 0, './imgs/1-68.jpg', '2021-05-29 13:59:07', 7, 56, 'Focus 2009 lado direito'),
(1545, '7899013321133', 0, '335487 / viemar', 1, '59.00', '150.00', 2, 0, './imgs/1-69.jpg', '2021-05-29 14:05:37', 7, 56, 'Focus 2009 lado esquerdo'),
(1546, '7899013324745', 0, '335669 / viemar', 1, '40.00', '150.00', 1, 0, './imgs/1-67.jpg', '2021-05-29 14:09:53', 7, 56, 'Focus 2014 lado esquerdo'),
(1547, '7899013324738', 0, '335670 / viemar', 1, '53.00', '180.00', 2, 0, './imgs/1-59.jpg', '2021-05-29 14:11:11', 4, 56, 'Focus 2014 g3 LADO direito '),
(1548, '7899013314807', 0, '680360 / viemar', 1, '37.00', '100.00', 6, 0, './imgs/1-41.jpg', '2021-05-31 11:52:42', 7, 57, 'Focus'),
(1549, '7890903078595', 0, 'N92005 / nakata', 1, '42.00', '170.00', 1, 0, './imgs/1-40.jpg', '2021-05-31 12:15:25', 7, 57, 'Ecosport 2013 / fiesta 2014 '),
(1550, '7899013319994', 0, '680529 / viemar', 1, '40.00', '170.00', 11, 0, './imgs/1-39.jpg', '2021-05-31 12:18:39', 7, 57, 'New Ecosport '),
(1551, '7899013318010', 0, '680409 / viemar', 1, '38.00', '160.00', 8, 0, './imgs/1-38.jpg', '2021-05-31 12:20:41', 7, 57, 'New fiesta / new ka'),
(1552, '7899013373958', 0, '680184 / viemar', 1, '26.00', '150.00', 13, 0, './imgs/1-37.jpg', '2021-05-31 12:22:56', 7, 57, 'Fiesta rocam '),
(1553, '7899013373972', 0, '680185 / viemar', 1, '39.00', '170.00', 2, 0, './imgs/1-43.jpg', '2021-05-31 12:24:15', 7, 57, 'Ecosport rocam antiga'),
(1554, '7890903027562', 0, 'N99100 / nakata ', 1, '40.00', '180.00', 5, 0, './imgs/1-36.jpg', '2021-05-31 12:30:10', 7, 57, 'Corolla 2008 - 2017'),
(1555, '7899013309223', 0, '680285 / viemar', 1, '57.00', '180.00', 1, 0, './imgs/1-34.jpg', '2021-05-31 12:32:29', 7, 57, 'Hillux / sw4'),
(1557, '7899013321379', 0, '680550 / viemar', 1, '39.00', '170.00', 5, 0, './imgs/1-33.jpg', '2021-05-31 12:33:43', 7, 57, 'Etios / yaris'),
(1558, '7899013316993', 0, '680402 / viemar', 1, '45.00', '140.00', 12, 0, './imgs/1-32.jpg', '2021-05-31 12:35:02', 4, 57, 'Corolla 2008 - 2014'),
(1559, '7899013314562', 0, '335347 / viemar', 1, '54.94', '150.00', 6, 0, './imgs/1-58.jpg', '2021-05-31 12:37:41', 4, 56, 'Corolla novo direito e esquerdo reto sem lado'),
(1560, '7899152534425', 0, 'Tdi1077 / perfect', 1, '39.00', '140.00', 2, 0, './imgs/1-57.jpg', '2021-05-31 12:44:31', 7, 56, 'Corolla 08 / fielder 08'),
(1561, '7899152534418', 0, 'Tdi1076 / perfect', 1, '41.00', '140.00', 2, 0, './imgs/1-56.jpg', '2021-05-31 12:51:04', 7, 56, 'Corolla 2008 / fielder 2008'),
(1562, '7890903074115', 0, 'N99225 / nakata', 1, '60.00', '180.00', 1, 0, './imgs/1-55.jpg', '2021-05-31 12:55:40', 7, 56, 'Hillux / sw4'),
(1563, '7890903060705', 0, 'N99223 / nakata', 1, '46.00', '170.00', 4, 0, './imgs/1-54.jpg', '2021-05-31 12:57:01', 7, 56, 'Etios / yaris lado esquerdo'),
(1564, '7890903060712', 0, 'N99224 / nakata', 1, '46.00', '170.00', 2, 0, './imgs/1-53.jpg', '2021-05-31 12:58:09', 7, 56, 'Etios / yaris lado direito'),
(1565, '7899013337035', 0, '680333 / viemar', 1, '63.00', '180.00', 5, 0, './imgs/1-31.jpg', '2021-05-31 12:59:50', 7, 57, 'Tiida / livina '),
(1566, '7899013313053', 0, '680329 / viemar', 1, '0.00', '180.00', 4, 0, './imgs/1-30.jpg', '2021-05-31 13:01:12', 7, 57, 'Frontier '),
(1567, '7899013314975', 0, '335312 / viemar', 1, '58.00', '180.00', 2, 0, './imgs/1-52.jpg', '2021-05-31 13:04:57', 7, 56, 'Frontier lado direito'),
(1568, '7899013314982', 0, '335311 / viemar', 1, '0.00', '220.00', 2, 0, './imgs/1-51.jpg', '2021-05-31 13:06:55', 4, 56, 'Frontier lado esquerdo'),
(1569, '7899013323151', 0, '335505 / viemar', 1, '49.00', '170.00', 3, 0, './imgs/1-50.jpg', '2021-05-31 13:08:53', 4, 56, 'March versa Lado direito'),
(1570, '7899013323144', 0, '335506 / viemar', 1, '49.00', '180.00', 3, 0, './imgs/1-49.jpg', '2021-05-31 13:10:27', 4, 56, 'March versa lado direito'),
(1571, '7899013315019', 0, '680382 / viemar ', 1, '31.00', '150.00', 7, 0, './imgs/1-29.jpg', '2021-05-31 13:13:06', 7, 57, 'Novo uno / grand siena / palio novo 2012 / mobi '),
(1572, '7899013331415', 0, '680037 / viemar ', 1, '30.00', '120.00', 11, 0, './imgs/1-48.jpg', '2021-05-31 13:16:03', 7, 56, 'Uno mille / fiorino '),
(1573, '7899013318522', 0, '680502 / viemar', 1, '35.00', '150.00', 3, 0, './imgs/1-28.jpg', '2021-05-31 13:48:02', 7, 57, 'Strada adventure 2010 / siena 2010 / punto 2010 / strada 2010 / PALIO 2010'),
(1574, '7897499917734', 0, 'N6018 / nakata ', 1, '35.00', '120.00', 2, 0, './imgs/1-27.jpg', '2021-05-31 13:52:21', 7, 57, 'Palio e palio wekeend 96 / siena antigo '),
(1575, '7897499915419', 0, 'N6015 / nakata ', 1, '35.00', '140.00', 6, 0, './imgs/1-23.jpg', '2021-05-31 13:54:16', 7, 57, 'Fiorino / uno antigo femea'),
(1576, '7890903049526', 0, 'N 96036 / nakata', 1, '40.00', '140.00', 4, 0, './imgs/1-26.jpg', '2021-05-31 13:55:52', 7, 57, 'Palio / siena / strada rosca grossa '),
(1577, '7899013318546', 0, '335434 / viemar ', 1, '35.00', '150.00', 6, 0, './imgs/1-47.jpg', '2021-05-31 14:21:46', 7, 56, 'Palio / strada / uno rosca grossa'),
(1578, '7891342000581', 0, 'PSL560/TECFIL', 1, '9.44', '32.00', 131, 0, './imgs/1-88.jpg', '2021-09-18 22:11:48', 4, 58, 'AUDI - A3 Limousine (8VS) - 1.4 TFSI(122Cv) - 09 2013\r\nVOLKSWAGEN - FOX (5Z1, 5Z3) - 1.0(72Cv) - 10 2003\r\nVOLKSWAGEN - FOX (5Z1, 5Z3) - 1.0(73Cv) - 04 2008\r\nVOLKSWAGEN - FOX (5Z1, 5Z3) - 1.0(82Cv) - 04 2013\r\nVOLKSWAGEN - FOX (5Z1, 5Z3) - 1.0 Flex(76Cv) - 05 2005\r\nVOLKSWAGEN - FOX (5Z1, 5Z3) - 1.0 Total Flex(72Cv) - 10 2003\r\nVOLKSWAGEN - FOX (5Z1, 5Z3) - 1.0 Total Flex(73Cv) - 05 2005\r\nVOLKSWAGEN - FOX (5Z1, 5Z3) - 1.0 Total Flex(82Cv) - 04 2013\r\nVOLKSWAGEN - GOL V - 1.0(68Cv) - 05 2010\r\nVOLKSWAGEN - GOL V - 1.0(73Cv) - 04 2010\r\nVOLKSWAGEN - GOL V - 1.0 Flex(76Cv) - 07 2008\r\nVOLKSWAGEN - GOL V - 1.0 Total Flex(71Cv) - 05 2010\r\nVOLKSWAGEN - GOL V - 1.0 Total Flex(73Cv) - 07 2008\r\nVOLKSWAGEN - GOL VI - 1.0 Flex(76Cv) - 08 2012\r\nVOLKSWAGEN - GOLF III (1H1) - 1.6(101Cv) - 07 1995 - 07 1997\r\nVOLKSWAGEN - GOLF III (1H1) - 2.0(115Cv) - 11 1991 - 11 1997\r\nVOLKSWAGEN - GOLF IV (1J1) - 1.6(101Cv) - 02 2001 - 02 2001\r\nVOLKSWAGEN - GOLF IV (1J1) - 1.6 Total Flex(101Cv) - 02 2001 - 02 2008\r\nVOLKSWAGEN - GOLF IV (1J1) - 2.0(115Cv) - 07 1998 - 07 2005\r\nVOLKSWAGEN - GOLF V (1K1) - 1.6 Flex(103Cv) - 04 2007\r\nVOLKSWAGEN - GOLF V (1K1) - 1.6 MultiFuel(102Cv) - 10 2007 - 10 2008\r\nVOLKSWAGEN - GOLF V (1K1) - 2.0(116Cv) - 08 2006\r\nVOLKSWAGEN - GOLF VI (5K1) - 1.6 MultiFuel(102Cv) - 10 2008\r\nVOLKSWAGEN - GOLF VI (5K1) - 2.0 Flex(120Cv) - 10 2008\r\nVOLKSWAGEN - GOLF VII (5G1, BE1) - 2.0 GTI(220Cv) - 04 2013\r\nVOLKSWAGEN - GOLF VII Combi (BA5) - 1.4 TSI(140Cv) - 05 2013\r\nVOLKSWAGEN - KOMBI Ônibus (T2) - 1.4(78Cv) - 01 2006\r\nVOLKSWAGEN - KOMBI Ônibus (T2) - 1.4 Álcool(80Cv) - 08 2004\r\nVOLKSWAGEN - KOMBI Caixa (T2) - 1.4 Flex(78Cv) - 01 2006 - 01 2012\r\nVOLKSWAGEN - KOMBI Caixa (T2) - 1.4 Flex(80Cv) - 01 2006 - 01 2012\r\nVOLKSWAGEN - PARATI II - 1.0(69Cv) - 08 1997 - 08 2003\r\nVOLKSWAGEN - POLO (6R, 6C) - 1.6 Flex(104Cv) - 01 2013\r\nVOLKSWAGEN - POLO três volumes (9A4) - 1.0(79Cv) - 02 2003 - 02 2003\r\nVOLKSWAGEN - POLO três volumes (9A4) - 1.6 Flex(103Cv) - 12 2004 - 12 2008\r\nVOLKSWAGEN - POLO três volumes (9A4) - 1.6 Flex(104Cv) - 05 2008\r\nVOLKSWAGEN - POLO três volumes (9A4) - 1.6 Total Flex(101Cv) - 10 2004\r\nVOLKSWAGEN - SAVEIRO V - 1.6 Flex(105Cv) - 09 2009\r\nVOLKSWAGEN - SAVEIRO V - 1.6 Flex(120Cv) - 03 2014\r\nVOLKSWAGEN - SAVEIRO V - 1.6 Total Flex(101Cv) - 09 2009\r\nVOLKSWAGEN - VOYAGE - 1.0 Flex(76Cv) - 07 2008\r\nVOLKSWAGEN - VOYAGE - 1.6 Flex(101Cv) - 07 2008\r\nVOLKSWAGEN - VOYAGE - 1.6 Flex(105Cv) - 10 2008'),
(1579, '7891342005296', 0, 'PSL55 / TECFIL', 1, '8.03', '32.00', 120, 0, './imgs/1-90.jpg', '2021-09-18 22:10:03', 4, 58, 'FIAT - PALIO - 2005 até 2016\r\nFIAT - SIENA - 2005 até 2016\r\nFIAT - STRADA - 2005 até 2015\r\nFIAT - UNO - 2005 até 2016\r\nFIAT - FIORINO - 2006 até 2018\r\nFIAT - DOBLO - 2001 até 2006\r\nFIAT - PUNTO - 2007 até 2016\r\nFIAT - IDEA - 2005 até 2016\r\nFIAT - FIAT 500 - 2009 até 2011\r\nFIAT - GRAND SIENA - 2012 até 2016\r\nHONDA - CIVIC - 2007 até 2018\r\nHONDA - FIT - 2009 até 2016\r\nHONDA - CRV - 2007 até 2015\r\nHONDA - ACCORD - 2008 até 2014\r\nHONDA - HONDA CITY - 2009 até 2016\r\nHONDA - Crx - 1992 até 1997\r\nMAZDA - MPV - 1996\r\nMITSUBISHI - PAJERO - 1999 até 2002\r\nMITSUBISHI - GALANT - 1993 até 2005\r\nMITSUBISHI - ECLIPSE - 2006 até 1998\r\nMITSUBISHI - OUTLANDER - 2008 até 2015\r\nMITSUBISHI - MITSUBISHI ASX - 2011 até 2015\r\nMITSUBISHI - AIRTREK - 2003 até 2008\r\nMITSUBISHI - GRANDIS - 2004 até 2011\r\nNISSAN - SENTRA - 2009 até 2015\r\nNISSAN - TIIDA - 2009 até 2015\r\nNISSAN - LIVINA - 2009 até 2015\r\nNISSAN - PATHFINDER - 2006 até 2008\r\nNISSAN - GRAND LIVINA - 2009 até 2015'),
(1580, '7891342000192', 0, 'PSL619/TECFIL', 1, '10.00', '32.00', 15, 0, './imgs/1-89.jpg', '2021-06-01 17:23:50', 7, 58, 'FIAT Doblo 1.8 8V 2003/2006 Adventure / ELX / Cargo Gasolina\r\nFIAT Doblo 1.8 8V 2006> Adventure / ELX / HLX Cargo Flex\r\nFIAT Idea 1.8 8V 2005> ELX FLEX Flex\r\nFIAT Palio 1.8 8V 2003/2004 ELX / EX / HLX Gasolina\r\nFIAT Palio 1.8 8V 2004> HLX / RST Flex\r\nFIAT Palio Weekend 1.8 8V 2003/2006 Gasolina/Flex\r\nFIAT Punto 1.8 8V MPI 2007/2010 HLX / Sporting Flex\r\nFIAT Siena 1.8 8V 2003> ELX / EX / HLX Flex\r\nFIAT Stilo 1.8 2002> 16V e 8V Gasolina/Flex\r\nFIAT Strada 1.8 8V 2002> Adventure Gasolina/Flex\r\n'),
(1581, '7891342005401', 0, 'PSL78/TECFIL', 1, '0.00', '35.00', 1, 0, './imgs/1-77.jpg', '2021-06-01 17:33:48', 7, 58, 'Renault / Nissan'),
(1582, '7891342004947', 0, 'PSL77/TECFIL', 1, '12.00', '20.00', 50, 0, './imgs/1-78.jpg', '2021-06-01 17:40:15', 4, 58, '\r\nLogan 1.6 16v 2013 até 2017 Flex\r\nLogan 1.6 8v 09/2013 em diante Flex\r\nSandero 2.0 16v 2015 em diante Flex\r\n'),
(1583, '7891342000628', 0, 'PSL321/TECFIL', 1, '10.00', '26.10', 6, 0, './imgs/01-13.jpg', '2021-06-01 17:46:20', 7, 58, 'CHERY TIGGO 2015 / KIA BESTA 1998 / KIA SPORTAGE 2002 / PEUGEOT 504 1995 / PEUGEOT 504 1999 / VOLVO 460 1996'),
(1584, '7891342005364', 0, 'PSL818/TECFIL', 1, '19.50', '45.00', 33, 0, './imgs/1-76.jpg', '2021-06-01 18:01:55', 7, 58, 'ELANTRA GLS SEDAN 1.8 16V GASOLINA (1996 - 1998)\r\nELANTRA STD SW 1.8 16V GASOLINA (1996 - 1998)\r\nEXCEL GL SEDAN 1.5 8V GASOLINA (1992 - 1995)\r\nEXCEL GLS SEDAN 1.5 8V GASOLINA (1992 - 1995)\r\nEXCEL GS SEDAN 1.5 8V GASOLINA (1993 - 1995)\r\nEXCEL L SEDAN 1.5 8V GASOLINA (1991 - 1995)\r\nEXCEL LSI SEDAN 1.5 8V GASOLINA (1992 - 1995)\r\nHB20 COMFORT HATCH 1.6 16V GAMMA L4 FLEX (2012 - 2020)\r\nHB20 STD HATCH 1.6 16V GAMMA L4 FLEX (2013 - 2020)\r\nIX35 GLS SUV 2.0 16V THETA 2 F4NA FLEX (2011 - 2021)\r\nSANTA FE GLS SUV 2.7 24V V6 GASOLINA (2001 - 2011)\r\nSCOUPE L SEDAN 1.5 8V GASOLINA (1992 - 1995)\r\nSCOUPE LS SEDAN 1.5 8V GASOLINA (1992 - 1995)\r\nSCOUPE TURBO SEDAN 1.5 8V TURBO GASOLINA (1992 - 1995)\r\nCERATO STD SEDAN 1.6 16V GASOLINA (2006 - 2013)\r\nCERATO STD SEDAN 2.0 16V GASOLINA (2006 - 2013)\r\nCERATO KOUP SEDAN 2.0 16V GASOLINA (2011 - 2013)\r\nSEPHIA GTX SEDAN 1.5 16V GASOLINA (1993 - 1998)\r\nSEPHIA LS SEDAN 1.5 16V GASOLINA (1998 - 2001)\r\nSEPHIA GTX SEDAN 1.6 16V GASOLINA (1995 - 1995)\r\nSEPHIA SLX SEDAN 1.6 16V GASOLINA (1993 - 1995)\r\nMX3 STD COUPE 1.6 16V GASOLINA (1992 - 1998)\r\nMX3 PRECIDIA COUPE 1.8 24V GASOLINA (1991 - 1995)\r\nMX5 MIATA COUPE 1.6 16V GASOLINA (1992 - 1995)\r\nMX5 MIATA COUPE 1.8 16V GASOLINA (1992 - 1995)\r\nPROTEGE DX SEDAN 1.5 16V GASOLINA (1991 - 2000)\r\nPROTEGE L SEDAN 1.5 16V GASOLINA (1991 - 2000)\r\nPROTEGE STD SEDAN 1.8 16V GASOLINA (1991 - 2000)\r\nECLIPSE GS COUPE 2.0 16V GASOLINA (1992 - 1995)\r\nECLIPSE GST COUPE 2.0 16V GASOLINA (1992 - 1996)\r\nGALANT STD SEDAN 2.0 16V GASOLINA (1997 - 2000)\r\nGALANT GS SEDAN 2.0 16V GASOLINA (1992 - 1996)\r\nGALANT ES SEDAN 2.4 16V GASOLINA (1992 - 1996)\r\nPATHFINDER SE SUV 3.3 12V GASOLINA (2000 - 2001)\r\nPATHFINDER SE-LUXO SUV 3.3 12V GASOLINA (1996 - 2001)\r\nPATHFINDER SE-TITANIUM SUV 3.3 24V V6 GASOLINA (1996 - 2000)\r\nVIVIO GLI HATCH 0.7 8V GASOLINA (1994 - 1997)\r\nVIVIO GLI SEDAN 2.2 8V GASOLINA (1994 - 1997)\r\nVITARA STD SUV 1.6 16V GASOLINA (1993 - 1994)\r\nVITARA STD SUV 1.6 8V GASOLINA (1991 - 1994)\r\nVITARA JLX CANVAS SUV 1.6 8V GASOLINA (1991 - 1994)\r\nHB20 S COMFORT PLUS SEDAN 1.6 16V GAMMA L4 FLEX (2013 - 2020)\r\nHB20 S COMFORT STYLE SEDAN 1.6 16V GAMMA L4 FLEX (2013 - 2020)\r\nHB20 S PREMIUM SEDAN 1.6 16V GAMMA L4 FLEX (2013 - 2019)\r\nI30 STD HATCH 1.6 16V FLEX (2012 - 2016)\r\nHB20 PREMIUM HATCH 1.6 16V GAMMA L4 FLEX (2013 - 2020)\r\nCRETA PULSE SUV 1.6 16V GAMMA L4 FLEX (2017 - 2018)\r\nCRETA ATTITUDE SUV 1.6 16V GAMMA L4 FLEX (2017 - 2021)\r\nCRETA PULSE SUV 2.0 16V NU GDI CVVT FLEX (2017 - 2020)\r\nHB20 X PREMIUM HATCH 1.6 16V GAMMA L4 FLEX (2013 - 2020)\r\nHB20 X STYLE HATCH 1.6 16V GAMMA L4 FLEX (2013 - 2020)\r\nCRETA PRESTIGE SUV 2.0 16V NU GDI CVVT FLEX (2017 - 2021)\r\nCRETA PULSE PLUS SUV 1.6 16V GAMMA L4 FLEX (2018 - 2021)\r\nIX35 GL SUV 2.0 16V G4KD FLEX (2017 - 2021)\r\nIX35 2WD SUV 2.0 16V G4KD FLEX (2012 - 2021)\r\nIX35 LAUNCHING EDITION SUV 2.0 16V G4KD FLEX (2015 - 2016)\r\nCRETA MILLION SUV 1.6 16V GAMMA L4 FLEX (2018 - 2019)\r\nCRETA SMART SUV 1.6 16V GAMMA L4 FLEX (2019 - 2021)\r\nCRETA SPORT SUV 1.6 16V GAMMA L4 FLEX (2018 - 2019)\r\nHB20 1 MILLION HATCH 1.6 16V GAMMA L4 FLEX (2019 - 2019)\r\nHB20 5 ANOS HATCH 1.6 16V GAMMA L4 FLEX (2018 - 2019)\r\nHB20 COMFORT STYLE HATCH 1.6 16V GAMMA L4 FLEX (2013 - 2020)\r\nHB20 COPA DO MUNDO HATCH 1.6 16V GAMMA L4 FLEX (2014 - 2019)\r\nHB20 R-SPEC HATCH 1.6 16V GAMMA L4 FLEX (2016 - 2020)\r\nHB20 R-SPEC LIMITED HATCH 1.6 16V GAMMA L4 FLEX (2018 - 2019)\r\nHB20 S 1 MILLION SEDAN 1.6 16V GAMMA L4 FLEX (2019 - 2019)\r\nHB20 S 5 ANOS SEDAN 1.6 16V GAMMA L4 FLEX (2018 - 2019)\r\nHB20 SPICY HATCH 1.6 16V GAMMA L4 FLEX (2015 - 2015)\r\nHB20 S IMPRESS SEDAN 1.6 1'),
(1585, '7891342016414', 0, 'PSL56/TECFIL', 1, '17.70', '36.00', 6, 0, './imgs/1-80.jpg', '2021-06-01 18:22:28', 7, 58, 'Argo /Cronos/ Mobi/ Uno /Fluence / Logan/ Sandero'),
(1586, '7891342000680', 0, 'PSL146/TECFIL', 1, '11.31', '45.00', 64, 0, './imgs/1-79.jpg', '2021-09-18 22:07:59', 4, 58, 'Fiesta / ecosport / new fiesta / new ka / Hillux / gol (adaptacao'),
(1587, '7891342000437', 0, 'PSL45/TECFIL', 1, '10.00', '23.00', 20, 0, './imgs/1-104.jpg', '2021-06-01 18:35:05', 7, 58, 'FIAT - BRAVA (182_) - 1.6 SX 16V (106Cv) - 01/1999 - 01/2002\r\nFIAT - BRAVA (182_) - 1.8 HGT 16V (125Cv) - 02/2000 - 02/2003\r\nFIAT - DOBLO Cargo (223_) - 1.6 16V (106Cv) - 11/2001\r\nFIAT - DOBLO Monovolume (119_, 223_) - 1.6 16V (106Cv) - 03/2001 - 03/2004\r\nFIAT - LINEA (323_) - 1.9 Absolute Dualogic Flex (132Cv) - 10/2008 - 10/2010\r\nFIAT - MAREA (185_) - 1.6 SX (106Cv) - 06/2005 - 06/2007\r\nFIAT - MAREA (185_) - 1.8 ELX (132Cv) - 09/1996 - 09/2007\r\nFIAT - MAREA (185_) - 2.0 ELX 20V (141Cv) - 05/1998 - 05/2000\r\nFIAT - MAREA (185_) - 2.0 Turbo 20V (182Cv) - 08/2005 - 08/2007\r\nFIAT - MAREA (185_) - 2.4 (159Cv) - 09/2000 - 09/2006\r\nFIAT - MAREA (185_) - 2.4 ELX 20V (160Cv) - 08/2000 - 08/2007\r\nFIAT - MAREA Weekend (185_) - 1.6 SX (106Cv) - 06/2005 - 06/2007\r\nFIAT - MAREA Weekend (185_) - 1.8 ELX (132Cv) - 08/1999 - 08/2007\r\nFIAT - MAREA Weekend (185_) - 2.0 SX (141Cv) - 05/1998 - 05/2000\r\nFIAT - MAREA Weekend (185_) - 2.0 Turbo 20V (182Cv) - 12/1998 - 12/2007\r\nFIAT - MAREA Weekend (185_) - 2.4 ELX (159Cv) - 09/2000 - 09/2006\r\nFIAT - MAREA Weekend (185_) - 2.4 (160Cv) - 07/2000 - 07/2007\r\nFIAT - PALIO (178BX) - 1.0 RST Fire (54Cv) - 03/2000 - 03/2005\r\nFIAT - TIPO (160_) - 1.6 i.e. (90Cv) - 05/1989 - 05/1995\r\nFIAT - UNO (146_) - 1.4 Turbo (118Cv) - 12/1989 - 12/1996\r\nFIAT - UNO (146_) - 1.5 Flex (78Cv) - 01/2004 - 01/2010\r\nFIAT - UNO (146_) - 1.6 R MPI (90Cv) - 12/1992 - 12/1995\r\nFIAT - UNO (195_) - 1.4 Bipower (86Cv) - 05/2010\r\nFIAT - UNO (195_) - 1.4 Attractive Flex (88Cv) - 05/2010\r\nFIAT - UNO CARGO - 1.5 (78Cv) - 03/2000 - 03/2004'),
(1588, '7891342000512', 0, 'PSL135/TECFIL', 1, '10.00', '35.00', 29, 0, './imgs/1-102.jpg', '2021-06-01 18:37:41', 7, 58, 'CITROEN\r\nAX 1.4 GT/1.0 SFI 1998/ GASOLINA\r\nBERLINGO MULTISPACE 1.6 8V 1998/2007 GASOLINA\r\nBERLINGO XU7JP 1.8i 1998/2004 GASOLINA\r\nBX 16S 1.2 8V 1993 GASOLINA\r\nC3 ORIGINAL/ATTRACTION 1.2 2016/ FLEX\r\nC5 EXCLUSIVE / BREAK MEC 2.0i 16V 136CV 2005/2007 GASOLINA\r\nC5 EXCLUSIVE 3.0 V6 24V 2005/2007 GASOLINA\r\nC6 EXCLUSIVE 3.0 V6 24 2006/2008 GASOLINA\r\nC8 EXCLUSIVE 2.0 16V 2003/2005 GASOLINA\r\nEVASION 2.0 8V 1995/2000 GASOLINA\r\nXANTIA 2.0 8/16V 1994/2001 GASOLINA\r\nXM SEDAN 2.0 16V 1993/2000 GASOLINA\r\nXSARA 2.0 16V 1997/2000 GASOLINA\r\nXSARA 1.8 16V GLX / VTS 1.8 16V 1998/2001 GASOLINA\r\nXSARA BREAK 2.0 16V 1998/2003 GASOLINA\r\nXSARA BREAK 1.8 16V 2001 GASOLINA\r\nXSARA PICASSO 1.6 16V 2005/2007 FLEX\r\nXSARA PICASSO 2.0 16V 2001/2011 FLEX/GASOLINA\r\nXSARA PICASSO 1.6/2.0 16V 2001/2007 GASOLINA\r\nZX 2.0 8V 1993/1998 GASOLINA\r\n\r\nGENERAL MOTORS\r\nTRACKER TDI MOTOR PEUGEOT 2.0 2001/2004 DIESEL\r\n\r\nHYUNDAI\r\nSONATA GLS 2.0 8V 1993/2004 GASOLINA\r\n\r\nPEUGEOT\r\n106 1.0 8V 1992/2001 GASOLINA\r\n205 1.4 8V 1993/2000 GASOLINA\r\n206 1.6 8V 1999/2004 GASOLINA\r\n208 1.2 12V 2016/ FLEX\r\n306 1.8 16V 1996/2004 GASOLINA\r\n306 1.8 8V 1995/2002 GASOLINA\r\n306 2.0 8V 1994/2000 GASOLINA\r\n307 2.0 16V 2003/2007 GASOLINA\r\n405 1.6/1.8/2.0 1992/1999 GASOLINA\r\n406 2.0 16V/3.0 24V 1997/2005 GASOLINA\r\n407 SW 2.0 16V / 3.0 24V 2005/2007 GASOLINA\r\n\r\nRENAULT\r\nLAGUNA 3.0 24V 1999/2005 GASOLINA\r\nMEGANE 2.0 16V 2002/2005 GASOLINA\r\nSAFRANE 2.0 8V 1993/1996 GASOLINA\r\n\r\nSUBARU\r\nFORESTER 2.0 16V 1998/2000 GASOLINA\r\nIMPREZA 2.0 8V 1992/1999 GASOLINA\r\nLAGACY 2.2 8V 1992/2001 GASOLINA\r\nSVX 3.3 24V V6 1992/1998 GASOLINA\r\n\r\nSUZUKI\r\nGRAND VITARA MOTOR PEUGEOT 2.0 2003 DIESEL\r\nVITARA 1.9 1996/ DIESEL'),
(1589, '7891342000222', 0, 'PSL562/TECFIL', 1, '10.00', '80.00', 12, 0, './imgs/1-100.jpg', '2021-06-01 18:43:52', 7, 59, 'jeep regate'),
(1590, '7891342005722', 0, 'PSL152/TECFIL', 1, '10.00', '23.00', 9, 0, './imgs/ret-17.jpg', '2021-06-01 18:50:50', 7, 58, 'I30 HATCHBACK HATCH 2.0 16V GASOLINA (2009 - 2013)\r\nTUCSON STD SUV 2.0 16V GASOLINA (2005 - 2013)\r\nTUCSON STD SUV 2.7 24V V6 GASOLINA (2005 - 2011)\r\nJ3 STD HATCH 1.4 16V GASOLINA (2010 - 2015)\r\nJ3 STD SEDAN 1.4 16V GASOLINA (2010 - 2015)\r\nOPTIMA STD (TF) SEDAN 2.4 16V CVVT G4KE GASOLINA (2013 - 2014)\r\nSORENTO KOUP SUV 2.4 16V CVVT G4KE GASOLINA (2011 - 2021)\r\nSORENTO EX 4X4 SUV 3.5 24V CVVT G6DC LAMBDA II V6 GASOLINA (2010 - 2021)\r\nSORENTO KOUP SUV 3.5 24V CVVT G6DC LAMBDA II V6 GASOLINA (2011 - 2020)\r\n626 GTI HATCH 2.5 24V GASOLINA (1993 - 1995)\r\nMPV STD MINIVAN 3.0 8V GASOLINA (1992 - 2005)\r\nI30 CW SW 2.0 16V GASOLINA (2011 - 2012)\r\nSANTA FE GLS SUV 2.4 16V THETA GASOLINA (2012 - 2015)\r\nCERATO STD SEDAN 1.6 16V GAMMA G4FC L4 FLEX (2013 - 2020)\r\nTUCSON GLS SUV 2.0 16V BETA L4 FLEX (2013 - 2019)\r\nSORENTO KOUP SUV 2.4 16V CVVT G4KJ GASOLINA (2011 - 2021)'),
(1591, '7891342015431', 0, 'FCI1274/TECFIL', 1, '30.00', '170.00', 1, 0, './imgs/1-94.jpg', '2021-06-02 12:06:09', 7, 59, 'VOLKSWAGEN AMAROK 2010 /  2014 / Motor: TDI 2.0 Diesel'),
(1592, '7891342013130', 0, 'PSL557 / TECFIL', 1, '8.03', '20.07', 3, 0, './imgs/1-95.jpg', '2021-09-18 22:40:27', 4, 58, 'VW JETTA / PASSAT '),
(1593, '7891342011679', 0, 'PSL615/TECFIL', 1, '17.46', '30.00', 28, 0, './imgs/1-101.jpg', '2021-06-02 12:11:12', 4, 58, 'CHEVROLET - CAMARO - 6.2(405Cv) - 01/2011\r\nCHEVROLET - CAPTIVA (C100, C140) - 3.6(261Cv) - 01/2008\r\nCHEVROLET - CAPTIVA (C100, C140) - 3.6 4WD(261Cv) - 01/2008\r\nCHEVROLET - S10 Pick-up - 2.8 D(180Cv) - 02/2012\r\nCHEVROLET - S10 Pick-up - 2.8 D 4x4(180Cv) - 02/2012\r\nCHRYSLER - CIRRUS (JR) - 2.7 V6 24V(203Cv) - 04/2001\r\nFIAT - FREEMONT (JF_) - 2.4(173Cv) - 08/2011'),
(1594, '7891342006576', 0, 'PSL147/TECFIL', 1, '26.50', '45.00', 1, 0, './imgs/1-16.jpg', '2021-06-02 12:18:56', 7, 58, 'FORD ECOSPORT 2003 -2020 /  FORD FOCUS 2009-2012 / FORD FUSION 2009-2012 / FORD RANGER 2007-2012'),
(1595, '7891342000123', 0, 'PSL47/TECFIL', 1, '11.00', '30.00', 11, 0, './imgs/ret-22.jpg', '2021-06-02 12:26:10', 7, 58, 'FIAT - SPAZIO - 1.0 C/L/STD (55Cv) [11/1976 - 02/1987] - 11/1976 - 02/1987\r\nFIAT - SPAZIO - 1.3 (61Cv) [07/1980 - 08/1984] - 07/1980 - 08/1984\r\nFIAT - SPAZIO - 1.3 Álcool (63Cv) [10/1978 - 02/1987] - 10/1978 - 02/1987\r\nFIAT - COUPE (175_) - 2.0 16V (139Cv) [11/1993 - 08/1996] - 11/1993 - 08/1996\r\nFIAT - DUNA Sedan - 1.6 i.e. (82Cv) [11/1994 - 12/1995] - 11/1994 - 12/1995\r\nFIAT - ELBA (146_) - 1.3 (58Cv) [04/1986 - 12/1993] - 04/1986 - 12/1993\r\nFIAT - ELBA (146_) - 1.3 Álcool (58Cv) [10/1985 - 11/1989] - 10/1985 - 11/1989\r\nFIAT - ELBA (146_) - 1.5 i.e. CSL (67Cv) [01/1992 - 12/1996] - 01/1992 - 12/1996\r\nFIAT - ELBA (146_) - 1.5 (71Cv) [04/1986 - 10/1992] - 04/1986 - 10/1992\r\nFIAT - ELBA (146_) - 1.5 i.e. CSL (67Cv) [06/1993 - 10/1996] - 06/1993 - 10/1996\r\nFIAT - ELBA (146_) - 1.6 S/CS/CSL (80Cv) [03/1988 - 02/1997] - 03/1988 - 02/1997\r\nFIAT - ELBA (146_) - 1.6 S/CS/CSL Álcool (88Cv) [11/1989 - 10/1994] - 11/1989 - 10/1994\r\nFIAT - ELBA (146_) - 1.6 i.e. INNOC CSL (90Cv) [06/1992 - 10/1996] - 06/1992 - 10/1996\r\nFIAT - ELBA (146_) - 1.5 Álcool (90Cv) [10/1985 - 09/1993] - 10/1985 - 09/1993\r\nFIAT - FIORINO Furgão (146_) - 1.3 (58Cv) [05/1988 - 09/1998] - 05/1988 - 09/1998\r\nFIAT - FIORINO Furgão (146_) - 1.5 Furg/Work/Trek (78Cv) [09/1997 - 06/2002] - 09/1997 - 06/2002\r\nFIAT - FIORINO Furgão (146_) - 1.5 Furg/Work/Trek Álcool (71Cv) [05/1988 - 11/1993] - 05/1988 - 11/1993\r\nFIAT - FIORINO Furgão (146_) - 1.5 Furg/Work/Trek (67Cv) [11/1994 - 09/1996] - 11/1994 - 09/1996\r\nFIAT - FIORINO Pick up (146_) - 1.0 (47Cv) [01/1994 - 07/1995] - 01/1994 - 07/1995\r\nFIAT - FIORINO Pick up (146_) - 1.0 i.e. (57Cv) [08/1995 - 11/1995] - 08/1995 - 11/1995\r\nFIAT - FIORINO Pick up (146_) - 1.3 Álcool (60Cv) [05/1988 - 11/1993] - 05/1988 - 11/1993\r\nFIAT - FIORINO Pick up (146_) - 1.5 (71Cv) [05/1988 - 11/1993] - 05/1988 - 11/1993\r\nFIAT - FIORINO Pick up (146_) - 1.5 i.e. Álcool (67Cv) [11/1994 - 09/1996] - 11/1994 - 09/1996\r\nFIAT - FIORINO Pick up (146_) - 1.6 (90Cv) [05/1991 - 10/1996] - 05/1991 - 10/1996\r\nFIAT - FIORINO Pick up (146_) - 1.6 Álcool (233Cv) [05/1991 - 10/1994] - 05/1991 - 10/1994\r\nFIAT - FIORINO Pick up (147_) - 1.3 (63Cv) [09/1981 - 04/1988] - 09/1981 - 04/1988\r\nFIAT - FIORINO Pick up (147_) - 1.3 Álcool (63Cv) [09/1981 - 04/1988] - 09/1981 - 04/1988\r\nFIAT - OGGI Sedan - 1.3 Flex (63Cv) [04/1983 - 06/1985] - 04/1983 - 06/1985\r\nFIAT - OGGI Sedan - 1300 (56Cv) [07/1984 - 12/1985] - 07/1984 - 12/1985\r\nFIAT - OGGI Sedan - 1.3 (61Cv) [02/1983 - 12/1985] - 02/1983 - 12/1985\r\nFIAT - PANORAMA - 1.3 (61Cv) [10/1980 - 11/1986] - 10/1980 - 11/1986\r\nFIAT - PANORAMA - 1.3 Álcool (63Cv) [03/1980 - 11/1986] - 03/1980 - 11/1986\r\nFIAT - PREMIO - 1.3 S/CS (60Cv) [03/1985 - 09/1992] - 03/1985 - 09/1992\r\nFIAT - PREMIO - 1.3 S/CS Álcool (60Cv) [03/1985 - 09/1992] - 03/1985 - 09/1992\r\nFIAT - PREMIO - 1.5 i.e. S (67Cv) [03/1985 - 12/1996] - 03/1985 - 12/1996\r\nFIAT - PREMIO - 1.5 CS (71Cv) [10/1985 - 07/1988] - 10/1985 - 07/1988\r\nFIAT - PREMIO - 1.5 SL/CSL (82Cv) [08/1988 - 09/1989] - 08/1988 - 09/1989\r\nFIAT - PREMIO - 1.5 CS (86Cv) [10/1989 - 09/1993] - 10/1989 - 09/1993\r\nFIAT - PREMIO - 1.5 CS Álcool (71Cv) [10/1985 - 07/1988] - 10/1985 - 07/1988\r\nFIAT - PREMIO - 1.5 S/CS Álcool (86Cv) [10/1989 - 09/1993] - 10/1989 - 09/1993\r\nFIAT - PREMIO - 1.6 CS Álcool (86Cv) [11/1989 - 06/1994] - 11/1989 - 06/1994\r\nFIAT - PREMIO - 1.6 i.e. CSL (82Cv) [08/1993 - 12/1996] - 08/1993 - 12/1996\r\nFIAT - PREMIO - 1.5 i.e. CS Álcool (200Cv) [06/1992 - 09/1993] - 06/1992 - 09/1993\r\nFIAT - TEMPRA (159_) - 2.0 i.e SX (103Cv) [05/199'),
(1596, '7891342007849', 0, 'PSC498-3 / TECFIL', 1, '20.00', '73.00', 1, 0, './imgs/ret-23.jpg', '2021-06-02 12:33:09', 7, 58, 'CHEVROLET - BLAZER S10 - 2.8 Colina (140Cv) - 01/2006 - 01/2009\r\nCHEVROLET - BLAZER S10 - 2.8 STD Turbo (133Cv) - 01/2000 - 01/2010\r\nCHEVROLET - S10 - 2.8 D Colina (140Cv) - 01/2006\r\nCHEVROLET - S10 Pick-up - 2.8 D Colina (132Cv) - 02/2000 - 02/2004\r\nCHEVROLET - S10 Pick-up - 2.8 D Executive TB (132Cv) - 02/2000 - 02/2004\r\nNISSAN - FRONTIER (D22_) - 2.8 TDI CD SE (D22B) (132Cv) - 05/2002 - 05/2007\r\nNISSAN - FRONTIER (D22_) - 2.8 TDI CD SE (D22B) (132Cv) - 05/2002 - 05/2005\r\nNISSAN - XTERRA (N50) - 2.8 TDI XE (WD22B) (140Cv) - 06/2005 - 06/2008\r\nNISSAN - XTERRA (WD22_) - 2.8 TDI SE (WD22B) (132Cv) - 05/2003 - 05/2008'),
(1597, '7891342005456', 0, 'PEL2003/TECFIL', 1, '10.00', '30.00', 2, 0, './imgs/ret-24.jpg', '2021-06-02 12:39:17', 7, 58, '1215C STD CAMINHAO 4.3 8V OM904LA DIESEL (1998 - 2006)\r\n1618M STD CAMINHAO 4.3 8V OM904LA DIESEL (1998 - 2003)\r\n1718M STD CAMINHAO 4.3 8V OM904LA DIESEL (2001 - 2004)\r\n712 C CAMINHAO 4.3 8V OM904LA DIESEL (1998 - 2003)\r\n712C STD CAMINHAO 4.3 8V OM904LA DIESEL (1998 - 2003)\r\n912C STD CAMINHAO 4.3 8V OM904 DIESEL (2000 - 2007)\r\n914 C CAMINHAO 4.0 8V OM314 DIESEL (1998 - 2007)\r\n914 C CAMINHAO 4.3 8V OM904 DIESEL (1995 - 2007)\r\n915 C CAMINHAO 4.0 8V OM314 DIESEL (1998 - 2007)\r\n915 C CAMINHAO 4.3 8V OM904 DIESEL (1998 - 2007)\r\nC1215 STD CAMINHAO 4.3 8V OM904LA DIESEL (1999 - 2004)\r\nEL1418 STD CAMINHAO 4.3 8V OM904LA DIESEL (2001 - 2001)\r\nL1418 STD CAMINHAO 4.3 8V OM904LA DIESEL (2001 - 2003)\r\nL1622 STD CAMINHAO 4.8 OM924LA DIESEL (2001 - 2016)\r\nOF1417 STD ONIBUS 4.3 8V OM904LA DIESEL (2001 - 2007)'),
(1598, '', 0, 'PSL364', 1, '11.00', '21.38', 2, 0, './imgs/ret-25.jpg', '2021-06-02 12:44:08', 4, 58, 'TOYOTA - BANDEIRANTE Pick-up (_J4_) - 4.0 D OJ 50 - LV B (90Cv) - 01 1991 - 01 1994'),
(1599, '7891342017589', 0, 'PSL76/TECFIL', 1, '14.00', '35.00', 24, 0, './imgs/1-92.jpg', '2021-09-18 22:01:20', 4, 58, 'Kwid 1.0 12V 3 cilindros flex - após 2017'),
(1600, '7891342005395', 0, 'PSL340 / TECFIL', 1, '20.00', '95.00', 3, 0, './imgs/1-11.jpg', '2021-06-02 17:32:33', 7, 58, 'CHEVROLET BLAZER 2000 | Motor: 2.8 8V STD Turbo Diesel - CHEVROLET BLAZER 2001 | Motor: 2.8 8V STD Turbo Diesel'),
(1601, '7891342007849', 0, 'Psc498/3', 1, '20.00', '60.00', 0, 1, './imgs/2021-06-02_14_45_18.jpg', '2021-06-02 17:45:18', 4, 0, 'S10.antiga'),
(1602, '7891342007849', 0, 'Psc498/3', 1, '20.00', '60.00', 1, 1, './imgs/2021-06-02_14_45_34.jpg', '2021-06-02 17:45:34', 4, 58, 'S10.antiga'),
(1603, '7891342000178', 0, 'Psl565', 1, '20.00', '65.00', 2, 1, './imgs/2021-06-02_14_54_25.jpg', '2021-06-02 17:54:25', 4, 58, 'Ford.coecel/belina'),
(1605, '7891342011983', 0, 'Pel119/ TECFIL', 1, '20.00', '45.00', 29, 0, './imgs/1-70.jpg', '2021-06-02 18:01:01', 7, 58, 'FIAT ARGO 2017 | Motor: 1.8 E-torq Flex - FIAT ARGO 2018 | Motor: 1.8 E-torq Flex - FIAT ARGO 2019 | Motor: 1.8 E-torq Flex - FIAT \r\nBRAVO / DUBLO / IDEA / LINEA / PALIO / PUNTO / STRADA E-TORQ'),
(1606, '7891342011723', 0, 'Psl541', 1, '20.00', '45.00', 1, 1, './imgs/2021-06-02_15_05_32.jpg', '2021-06-02 18:05:32', 4, 58, 'Ford'),
(1607, '7891342000185', 0, 'Psl900', 1, '20.00', '40.00', 11, 1, './imgs/2021-06-02_15_24_26.jpg', '2021-06-02 18:24:26', 4, 58, 'Chevrolet.ford.volkswagen'),
(1608, '7891342015943', 0, 'PC953 / TECFIL', 1, '20.00', '75.00', 3, 0, './imgs/2021-06-02_15_35_22.jpg', '2021-06-02 18:35:22', 7, 58, 'TOYOTA HILUX 2016 / TOYOTA HILUX 2017 / TOYOTA HILUX 2018 / TOYOTA HILUX 2019 / TOYOTA HILUX 2020'),
(1610, '7891342008174', 0, 'Pel110', 1, '20.00', '35.00', 3, 1, './imgs/2021-06-02_15_43_12.jpg', '2021-06-02 18:43:12', 4, 58, 'Pergeot.citroen'),
(1611, '7891342015585', 0, 'PEL678 / TECFIL', 1, '20.00', '46.79', 4, 0, './imgs/01-14.jpg', '2021-06-02 18:47:17', 7, 58, 'Renault / Mercedes-Benz/Nissan'),
(1612, '7891342010634', 0, 'Psc498/4', 1, '20.00', '95.00', 3, 1, './imgs/2021-06-02_15_51_44.jpg', '2021-06-02 18:51:44', 4, 58, 'Chevrolet'),
(1614, '7891342003087', 0, 'Psc496', 1, '20.00', '100.00', 9, 1, './imgs/2021-06-02_15_59_30.jpg', '2021-06-02 18:59:30', 4, 58, 'Ford.gm.vw'),
(1616, '7798001694665', 0, 'JFO 0210-1 / WEGA ', 1, '20.00', '15.00', 31, 0, './imgs/1-91.jpg', '2021-06-02 19:15:44', 7, 58, 'Toyota ETIOS  / COROLLA'),
(1617, '7798159128272', 0, 'Woe314/wega', 1, '20.00', '30.18', 1, 0, './imgs/1-82.jpg', '2021-06-02 19:20:36', 7, 58, 'Chevrolet s-10 /  Trailblazer'),
(1618, '7798159121525', 0, 'WOE803/WEGA', 1, '10.83', '27.07', 45, 0, './imgs/01-5.png', '2021-09-17 21:44:40', 4, 58, 'TOYOTA COROLLA 2008 - 2016 /  TOYOTA RAV4 2016'),
(1619, '7798001692982', 0, 'Woe710', 1, '0.00', '23.00', -4, 1, './imgs/2021-06-02_16_25_08.jpg', '2021-06-02 19:25:08', 4, 58, 'Peogeot.citroen'),
(1620, '7798001695877', 0, 'WOE905/WEGA', 1, '11.00', '23.00', 1, 0, './imgs/1-74.jpg', '2021-06-02 19:25:39', 7, 58, 'HYUNDAI AZERA 2008 / 2012 / HYUNDAI VERA CRUZ 2007 / 2012 / KIA MOHAVE 2011'),
(1621, '7798001692982', 0, 'WOE710 / WEGA', 1, '20.00', '30.00', 23, 0, './imgs/1-71.jpg', '2021-06-02 19:26:08', 7, 58, 'PEUGEOT 206 /  2004 - 2010 / CITROEEN'),
(1622, '7798186474335', 0, 'Woe626', 1, '20.00', '23.00', 0, 1, './imgs/2021-06-02_16_28_27.jpg', '2021-06-02 19:28:27', 4, 0, 'Jeep.fiat'),
(1624, '7798159128241', 0, 'fcd0777/wega', 1, '20.00', '23.00', 6, 0, './imgs/1-84.jpg', '2021-06-02 19:31:14', 7, 58, 'Chevrolet S-10 turbo Diesel / trailblazer TDI'),
(1625, '7798159121556', 0, 'Woe313/ wega', 1, '20.00', '32.40', 6, 0, './imgs/2021-06-02_16_32_55.jpg', '2021-06-02 19:32:55', 7, 58, 'Chevrot Cruze / TOYOTA COROLLA 1.6 16V 1997=>2001'),
(1626, '7798159120399', 0, 'WOE680 / WEGA', 1, '20.00', '23.00', 3, 0, './imgs/1-73.jpg', '2021-06-02 19:34:37', 7, 58, 'VOLKSWAGEN AMAROK 2015 /2020'),
(1627, '7798001694597', 0, 'Jfc901 / WEGA', 1, '20.00', '80.00', 3, 0, './imgs/1-99.jpg', '2021-06-02 19:37:23', 7, 59, 'Hyundai  HR'),
(1628, '7798159129064', 0, 'JFC199-1 / WEGA', 1, '0.00', '150.00', 0, 0, './imgs/1-96.jpg', '2021-06-02 19:39:01', 7, 58, 'Nissan:\r\nFrontier 2.5 190cv Turbo Diesel 2012 em diante'),
(1629, '7798186471938', 0, 'Woe506', 1, '20.00', '23.00', 5, 0, './imgs/1-12.jpg', '2021-06-02 19:40:35', 7, 58, 'RENAULT / NISSAN FRONTIER 2017 / 2019 TODAS AS VERSÕES'),
(1630, '7798186472041', 0, 'JFC-901/1/ WEGA', 1, '20.00', '42.00', 2, 0, './imgs/1-13.jpg', '2021-06-02 19:43:37', 7, 58, 'HYUNDAI HR 2.5 / 2006 /2012 - TODAS AS VERSÕES'),
(1631, '7798001694689', 0, 'Jfo-0213', 1, '20.00', '23.00', 0, 1, './imgs/2021-06-02_16_46_02.jpg', '2021-06-02 19:46:02', 4, 47, 'Mazda.toyota.land.'),
(1632, '7798001694689', 0, 'JFO0213 / WEGA', 1, '20.00', '23.00', 4, 0, './imgs/1-106.jpg', '2021-06-02 19:46:24', 7, 58, 'TOYOTA HILUX 3.0 /SRV DIESEL '),
(1633, '7798001694511', 0, 'JFC-197 / WEGA', 1, '20.00', '90.00', 3, 0, './imgs/2021-06-02_16_47_59.jpg', '2021-06-02 19:47:59', 7, 59, 'Nissan FRONTIER 3.2'),
(1635, '7798001693019', 0, 'Woe-130', 1, '20.00', '23.00', 2, 1, './imgs/2021-06-02_16_50_13.jpg', '2021-06-02 19:50:13', 4, 58, 'Ford ranger'),
(1636, '7798001693019', 0, 'Woe-130 / WEGA', 1, '20.00', '150.00', 2, 0, './imgs/1-98.jpg', '2021-06-02 19:50:20', 7, 58, 'Ford ranger'),
(1637, '7798001694825', 0, 'JFO0506 / wega', 1, '33.00', '82.50', 2, 0, './imgs/1-105.jpg', '2021-10-02 17:56:32', 4, 58, 'HYUNDAI GALANT  / PAJEIRO / L300 /  LANCER'),
(1638, '7798001697659', 0, 'Woe312/wega', 1, '20.00', '32.53', 2, 0, './imgs/1-83.jpg', '2021-06-02 20:01:30', 7, 58, 'CHEVROLET MALIBU 2010 / 2013'),
(1639, '7798186474335', 0, 'WOE626 / WEGA', 1, '20.00', '60.00', 8, 0, './imgs/1-72.jpg', '2021-06-02 20:03:36', 7, 58, 'JEEP RENEGADE 2015 / 2020 / FIAT TORO'),
(1640, '7798159127077', 0, 'Jfc-239', 1, '20.00', '23.00', 0, 1, './imgs/2021-06-02_17_05_42.jpg', '2021-06-02 20:05:42', 4, 0, 'Toyota hilux'),
(1641, '7798159127077', 0, 'JFC239/ WEGA', 1, '20.00', '150.00', 3, 0, './imgs/2021-06-02_17_05_57.jpg', '2021-06-02 20:05:57', 7, 59, 'Toyota hilux / sw4'),
(1642, '7798186474755', 0, 'JFC207-2 / WEGA', 1, '20.00', '29.00', 6, 0, './imgs/1-85.jpg', '2021-06-02 20:08:39', 7, 59, 'Toyota Hilux / SW4 / MITSUBSHI L-200'),
(1643, '7798159129750', 0, 'FCD0785 / WEGA', 1, '20.00', '23.00', 2, 0, './imgs/1-97.jpg', '2021-06-02 20:11:44', 7, 59, 'Ford RANGER'),
(1644, '7798151944641', 0, 'Woe903', 1, '20.00', '23.00', 1, 1, './imgs/2021-06-02_17_14_13.jpg', '2021-06-02 20:14:13', 4, 58, 'Hiuyndai'),
(1645, '7798159128340', 0, 'WOE916/ WEGA', 1, '20.00', '49.60', 4, 0, './imgs/1-14.jpg', '2021-06-02 20:19:00', 7, 58, 'GM TRAILBLAZER'),
(1647, '7798159122911', 0, 'Jfc-383', 1, '26.00', '65.00', 2, 1, './imgs/2021-06-02_17_21_52.jpg', '2021-10-02 17:49:48', 4, 59, 'Chevrolet'),
(1648, '7798001698496', 0, 'FCI1303/WEGA', 1, '20.00', '23.00', 1, 0, './imgs/1-19.jpg', '2021-06-02 20:24:41', 7, 59, 'VOLKSWAGEN JETTA 2007 - 2010'),
(1649, '7798159121686', 0, 'WO152 / WEGA', 1, '10.00', '23.50', 1, 0, './imgs/1-17.jpg', '2021-06-02 20:27:59', 7, 58, 'FORD ECOSPORT 2012 / 2020'),
(1650, '7798186478234', 0, 'Wo-412', 1, '0.00', '10.00', 1, 0, './imgs/1-93.jpg', '2021-06-02 20:29:59', 7, 58, 'Renault kwid'),
(1654, '7798186473000', 0, 'JFC-H27/WEGA', 1, '10.00', '44.87', 1, 0, './imgs/1-18.jpg', '2021-06-03 11:56:25', 7, 58, 'HYUNDAI HR 2.5 / DIESEL 2014 / KIA K2500'),
(1655, '798001699196', 0, 'WOE500/WEGA', 1, '10.60', '23.00', 3, 0, './imgs/1-15.jpg', '2021-06-03 12:00:14', 7, 58, 'GM ASTRA 1.8 / CORSA CLASSIC GSI / RENAULT CLIO 1999 / 2004'),
(1656, '7893390800458', 0, 'Wk58', 1, '20.00', '23.00', 37, 1, './imgs/2021-06-03_09_27_40.jpg', '2021-06-03 12:27:40', 4, 59, 'Fiat.gm.toyota'),
(1657, '7891342015691', 0, 'FCI778 / TECFIL', 1, '20.00', '150.00', 1, 0, './imgs/01-8.png', '2021-06-03 12:31:48', 7, 59, 'Turbo Diesel / SW4 / SRV / CD /CS) / Automático/Mecânico'),
(1658, '7891342008129', 0, 'Gi 12/7', 1, '20.00', '23.00', 27, 0, './imgs/1-107.jpg', '2021-06-03 12:34:51', 7, 59, 'Vw'),
(1659, '7891342008136', 0, 'Gi06/7', 1, '20.00', '23.00', 2, 1, './imgs/2021-06-03_09_37_08.jpg', '2021-06-03 12:37:08', 4, 59, 'Gm.ford'),
(1660, '7891342008204', 0, 'Gi 40/7', 1, '20.00', '23.00', 4, 1, './imgs/2021-06-03_09_38_52.jpg', '2021-06-03 12:38:52', 4, 0, 'Fiat uno 2005'),
(1661, '7898318870346', 0, 'HF38 / HIPERFREIOS', 1, '81.00', '250.00', 6, 0, './imgs/2021-06-03_10_32_55.jpg', '2021-06-03 13:32:55', 4, 60, 'Palio fire 99 / siena fire 99 ventilado'),
(1662, '7898318870131', 0, 'Hf 31', 1, '20.00', '23.00', 0, 1, './imgs/2021-06-03_10_37_02.jpg', '2021-06-03 13:37:02', 4, 0, 'Fiat.fiorino e palio 1.0 1.5 siena strada'),
(1663, '7898318870131', 0, 'Hf31 / hipperfreios', 1, '72.00', '0.00', 3, 0, './imgs/2021-06-03_10_37_23.jpg', '2021-06-03 13:37:23', 4, 60, 'Fiorino 85 antiga / palio 1.0 1.5 91 Solido'),
(1664, '7891342000123', 0, 'PSL47 / TECFIL', 1, '20.00', '23.00', 6, 0, './imgs/1-103.jpg', '2021-06-03 14:46:51', 7, 58, 'FIAT FIORINO 1988 /  2020 / FIAT PALIO 1998 / 2013 / FIAT PUNTO 1999 / FIAT SIENA 2013 / FIAT STRADA 2000'),
(1667, '7898500312937', 0, 'Hf31b / hipperfreios', 1, '104.00', '270.00', 2, 1, './imgs/2021-06-03_13_49_40.jpg', '2021-06-03 16:49:40', 4, 60, 'Grand siena 1.4 2012 / palio novo 2012 solido'),
(1669, '7898500316539', 0, 'Hf 31c', 1, '20.00', '100.00', 3, 1, './imgs/2021-06-03_15_50_39.jpg', '2021-06-03 18:50:39', 4, 60, 'Fiat/palio 2012/uno 2010'),
(1671, '7898318870711', 0, 'Hf549 / hipperfreios', 1, '120.00', '280.00', 5, 1, './imgs/2021-06-04_11_32_33.jpg', '2021-06-04 14:32:33', 4, 60, 'Clio 1.6 16v abs 1997 2016'),
(1672, '7898500319981', 0, 'Hf705a / hipperfreios', 1, '82.00', '290.00', 1, 0, './imgs/2021-06-04_11_34_57.jpg', '2021-06-04 14:34:57', 7, 60, 'kwid 1.0 2018 solido'),
(1673, '7898318870742', 0, 'Hf705 / hipperfreios', 1, '96.00', '290.00', 2, 1, './imgs/2021-06-04_11_36_55.jpg', '2021-06-04 14:36:55', 4, 60, 'Clio 1.0 1995 a 2016 / logan 1.0 16v 2007'),
(1674, '7898500318649', 0, 'Hf549b / hipperfreios', 1, '120.00', '290.00', 2, 1, './imgs/2021-06-04_11_40_34.jpg', '2021-06-04 14:40:34', 4, 60, 'Logan 1.0 16v 1.6 8v 2014 ventilado'),
(1675, '7898318870728', 0, 'Hf572 / hipperfreios', 1, '150.00', '300.00', 1, 1, './imgs/2021-06-04_17_37_08.jpg', '2021-06-04 20:37:08', 4, 60, 'Clio 1.0 8v 16v 2000 / megane 1.6 1998'),
(1676, '', 0, '', 1, '0.00', '0.00', 0, 1, './imgs/2021-06-04_17_38_02.jpg', '2021-06-04 20:38:02', 4, 0, ''),
(1677, '7898500317949', 0, 'Hf571 / HIPPERFREIOS', 1, '167.00', '300.00', 1, 1, './imgs/2021-06-04_17_45_25.jpg', '2021-06-04 20:45:25', 4, 60, 'Duster 2.0 16v 2011 / oroch 1.6 2.0 16v  ventilado'),
(1678, '7798186476575', 0, 'JFA0137/WEGA', 1, '29.00', '55.00', 3, 0, './imgs/01-7.png', '2021-06-05 11:52:25', 7, 41, 'Kicks Flex Star (Rio / SL) - automático'),
(1680, '7891342013338', 0, 'ARL5143/TECFIL', 1, '33.00', '60.00', 6, 0, './imgs/03-18.jpg', '2021-06-07 11:47:55', 7, 41, 'Renault Fluence 2,0'),
(1681, '7891100309222', 0, 'Sd9 / Dyna ', 1, '111.00', '39.00', 5, 1, './imgs/2021-06-07_14_05_34.jpg', '2021-06-07 17:05:34', 4, 61, 'VW UP /24 - 16'),
(1682, '7891100304227', 0, 'SD4/Dyna ', 1, '11.00', '39.00', 7, 1, './imgs/2021-06-07_14_11_02.jpg', '2021-06-07 17:11:02', 4, 61, 'Ecoesport / Ka / 22 - 16'),
(1683, '7898318879110', 0, 'Hf570 / hipperfreios', 1, '134.00', '290.00', 2, 1, './imgs/2021-06-07_14_14_07.jpg', '2021-06-07 17:14:07', 4, 60, 'Logan 1.0 1.6 2007 2016 / sandero 1.0 1.6 2008 solido'),
(1684, '7898500318083', 0, 'Hf571a / hipperfreios', 1, '136.00', '370.00', 1, 1, './imgs/2021-06-07_14_20_03.jpg', '2021-06-07 17:20:03', 4, 60, 'Duster 1.6 16v 2011 / oroch 1.6 2.0 16v 2011 ventilado'),
(1685, '7891100340119', 0, 'S401 /Dyna ', 1, '111.00', '47.00', 5, 1, './imgs/2021-06-07_14_23_16.jpg', '2021-06-07 17:23:16', 4, 61, 'Citroeen c3 novo / Fiat lin3r /PUNTO / Ford New Fiesta ômega '),
(1686, '7898500318090', 0, 'Hf 325j', 1, '20.00', '100.00', 1, 1, './imgs/2021-06-07_14_27_01.jpg', '2021-06-07 17:27:01', 4, 60, 'Hyundai hb20 1.0 2013'),
(1687, '7898318876652', 0, 'Hf 325d ', 1, '20.00', '100.00', 1, 1, './imgs/2021-06-07_14_29_17.jpg', '2021-06-07 17:29:17', 4, 60, 'Hyundai tucson 2.0/2.7 2005'),
(1689, '7898318878564', 0, 'Hf 330', 1, '100.00', '450.00', 2, 1, './imgs/2021-06-07_14_36_35.jpg', '2021-06-07 17:36:35', 4, 60, 'Hr 2006'),
(1690, '7891100305224', 0, 'Sd5 / Dyna ', 1, '111.00', '45.72', 4, 1, './imgs/2021-06-07_14_39_05.jpg', '2021-06-07 17:39:05', 4, 61, 'CHEVROLET S10 / TRIOBLAZER'),
(1691, '7898500318113', 0, 'Hf 325l', 1, '100.00', '200.00', 1, 1, './imgs/2021-06-07_14_40_09.jpg', '2021-06-07 17:40:09', 4, 60, 'Hyundai hb20 1.6 2013 kia rio 3 1.4 2011'),
(1692, '7891100307228', 0, 'SD7/Dyna ', 1, '11.00', '46.00', 5, 1, './imgs/2021-06-07_14_43_55.jpg', '2021-06-07 17:43:55', 4, 61, 'VW gol 5 /  saveiro / 5 / voyage');
INSERT INTO `produtos` (`id`, `barra`, `codigo`, `nome`, `qtd`, `valor_compra`, `valor_venda`, `estoque`, `status`, `foto`, `data`, `usuarios_id`, `categorias_id`, `aplicacao`) VALUES
(1693, '7891100306221', 0, 'SD6/ Dyna ', 1, '11.00', '46.00', 4, 1, './imgs/2021-06-07_14_46_26.jpg', '2021-06-07 17:46:26', 4, 61, 'Onix / Prisma '),
(1694, '7898500318168', 0, 'Hf 18h', 1, '100.00', '200.00', 2, 1, './imgs/2021-06-07_14_46_41.jpg', '2021-06-07 17:46:41', 4, 60, 'Ford fista new hatch 2011/fista new sedan'),
(1695, '7898318870032', 0, 'Hf 14', 1, '100.00', '200.00', 2, 1, './imgs/2021-06-07_14_51_31.jpg', '2021-06-07 17:51:31', 4, 60, 'Ford courier 1.3 1997 ford fiesta 1.0 /1.3 1996 a 2016'),
(1696, '7898500318342', 0, 'Hf 18j', 1, '100.00', '200.00', 1, 1, './imgs/2021-06-07_14_54_54.jpg', '2021-06-07 17:54:54', 4, 60, 'Ford ecosport 1.5 2018 / ecosport 1.6 2012'),
(1697, '7898318871237', 0, 'Hf 18b ', 1, '100.00', '200.00', 1, 1, './imgs/2021-06-07_15_00_09.jpg', '2021-06-07 18:00:09', 4, 60, 'Ford focus 1.8 16v/ 2.0 16v'),
(1698, '7898318871244', 0, 'Hf 14a', 1, '100.00', '200.00', 1, 1, './imgs/2021-06-07_15_03_28.jpg', '2021-06-07 18:03:28', 4, 60, 'Ford escort zetec 16v 1997/fiesta 1.0/1.3 1.4'),
(1699, '3276425014909', 0, '501490 / RENAULT CLIO / VALEO', 1, '77.00', '127.00', 1, 0, './imgs/Valeo_Logo.svg.png', '2021-06-07 18:04:48', 7, 62, 'RENAULT CLIO /SANDERO / LOGAN / DUSTER 2011'),
(1700, '7891579116864', 0, 'MP30088 /  CHEVROLET CORSA /  DT / TURBOGAS COFAP', 1, '45.00', '134.00', -1, 0, './imgs/AAA-1.png', '2021-06-07 18:09:18', 7, 63, 'GM CORSA PICKUP DIANTEIRO'),
(1701, '7891579303868', 0, 'GP35950M  / FORD KA  /  DT / TURBOGAS COFAP', 1, '119.00', '326.20', 1, 0, './imgs/TURBO.jpg', '2021-06-07 18:31:23', 7, 63, 'Ford Ka 2007 a 2013'),
(1702, '543029585R ', 0, '543029585R / RENAULT KWID / DT / TURBOGAS COFAP', 1, '112.00', '285.00', 1, 0, './imgs/TURBO-1.jpg', '2021-06-07 18:50:45', 7, 63, 'AMORTECEDOR DIANTEIRO ORIGINAL / RENAULT KWID - 2017 à 2021'),
(1704, '0', 0, 'BIELETA NEW CIVC DIANTEIRA L-D', 1, '10.00', '10.00', 1, 0, './imgs/bielta-1.jpg', '2021-06-11 14:21:41', 7, 65, 'NEW CIVC'),
(1705, '0', 0, 'BIELETA NEW CIVC DIANTEIRA L-E', 1, '20.00', '20.00', 1, 0, './imgs/bielta-2.jpg', '2021-06-11 14:23:23', 7, 65, 'NEW CIVIC'),
(1706, '0', 0, 'BIELETA NEW CIVC TRASEIRA L-E', 1, '10.00', '10.00', 1, 0, './imgs/bielta-3.jpg', '2021-06-11 14:25:09', 7, 65, 'NEW CIVIC'),
(1707, '0', 0, 'BIELETA NEW CIVC TRASEIRA L-D', 1, '10.00', '10.00', 1, 0, './imgs/bielta-4.jpg', '2021-06-11 14:25:56', 7, 65, 'NEW CIVIC '),
(1708, '0', 0, 'CILINDRO MESTRE EMBREAGEM GOL / 6284 000 032', 1, '10.00', '10.00', 1, 0, './imgs/12220a-1.jpg', '2021-06-11 14:28:34', 7, 66, 'GOL'),
(1709, '0', 0, 'CILINDRO MESTRE EMBREAGEM CELTA / RCCD01670', 1, '10.00', '10.00', 1, 0, './imgs/12220a-2.jpg', '2021-06-11 14:29:11', 7, 66, 'CELTA'),
(1710, '0', 0, 'BOMBA DE AGUA NEW FORD KA /  BD FO 10B', 1, '10.00', '10.00', 1, 0, './imgs/0122.jpg', '2021-06-11 14:30:34', 7, 67, 'NEW FORD KA '),
(1711, '0', 0, 'COXIM FORD KA ANTIGO TRASEIRO', 1, '10.00', '10.00', 1, 0, './imgs/COXIM-1.jpg', '2021-06-11 14:48:22', 7, 68, 'FORD KA'),
(1712, '0', 0, 'COXIM PEUGEOUT 206 INFERIOR', 1, '10.00', '10.00', 1, 0, './imgs/COXIM-2.jpg', '2021-06-11 14:49:17', 7, 68, 'PEUGEOUT 206'),
(1713, '0', 0, 'COXIM TRASEIRO C3 NOVO', 1, '10.00', '140.00', 0, 0, './imgs/COXIM-3.jpg', '2021-06-11 14:50:18', 7, 68, 'C3'),
(1714, '0', 0, 'ELETROVENTILADOR NOVO FORD KA ', 1, '1.00', '10.00', 1, 0, './imgs/85263-1.jpg', '2021-06-11 17:48:57', 7, 69, 'NOVO FORD KA '),
(1715, '0', 0, 'Kit Embreagem Gol Saveiro', 1, '20.00', '22.00', 1, 0, './imgs/001-14.jpg', '2021-06-11 17:57:38', 7, 70, 'Gol / Saveiro'),
(1716, '0', 0, 'JUNTA DA TAMPA DE VALVULA NEW FIESTA ', 1, '10.00', '10.00', 1, 0, './imgs/jjj-1.jpg', '2021-06-11 17:59:53', 7, 71, 'NEW FIESTA '),
(1717, '0', 0, 'JUNTA DA TAMPA DE VALVULA HB20', 1, '20.00', '20.00', 1, 0, './imgs/jjj-2.jpg', '2021-06-11 18:01:01', 7, 71, 'HB20'),
(1718, '0', 0, 'PEUGEOUT 307 /  RCPT04620', 1, '10.00', '10.00', 1, 0, './imgs/ww.jpg', '2021-06-11 18:11:01', 7, 42, 'PEUGEOUT 307'),
(1719, '0', 0, 'IVO DE SUSPENSÃO SONATA  / 503090', 1, '21.00', '200.00', 1, 0, './imgs/1423-1.jpg', '2021-06-11 18:23:29', 7, 72, 'Pivô Sonata 2011 A 2014 Suspensão Dianteira'),
(1720, '0', 0, 'RALMENTO DE EIXO FIAT / 7100021100', 1, '20.00', '20.00', 1, 0, './imgs/25651-1.jpg', '2021-06-11 18:26:39', 7, 73, 'FIAT'),
(1721, '0', 0, 'ROLAMENTO DO SEMI EIXO COIFA L-E LOGAN', 1, '20.00', '20.00', 1, 0, './imgs/RREDFF.jpg', '2021-06-11 18:32:31', 7, 73, 'LOGAN SANDERO CLIO'),
(1722, '0', 0, 'ROLAMENTO EIXO SANDERO  /  7120389100', 1, '20.00', '20.00', 1, 0, './imgs/YGGDF-1.jpg', '2021-06-11 18:36:36', 7, 74, 'SANDERO  '),
(1723, '0', 0, 'ROLAMENTO VERSA DIANTEIRO / IR18599', 1, '10.00', '10.00', 1, 0, './imgs/985565500-1.jpg', '2021-06-11 18:39:08', 7, 75, 'NISSAN VERSA'),
(1724, '0', 0, 'SENSOR DE OLÉO  /  FIESTA ROCAM', 1, '21.00', '21.00', 1, 0, './imgs/69566226-1.png', '2021-06-11 18:41:50', 7, 76, 'FIESTA ROCAM'),
(1725, '0', 0, 'RETENTOR DA VOLANTE SANDERO / 5401', 1, '20.00', '20.00', 1, 0, './imgs/44117788-1.jpg', '2021-06-11 18:45:06', 7, 77, 'SANDERO '),
(1726, '0', 0, 'ROLAMENTO DE EIXO FIAT / 7100021100', 1, '25.00', '25.00', 1, 0, './imgs/YGGDF-2.jpg', '2021-06-11 18:47:27', 7, 74, 'FIAT'),
(1727, '0', 0, 'SONDA LAMBDA FIAT / 94593', 1, '20.00', '20.00', 1, 0, './imgs/EWW78WEE7W8-1.jpg', '2021-06-11 18:50:40', 7, 78, 'FIAT'),
(1728, '0', 0, 'SONDA LAMBDA  / SANDERO 4 CILINDROS', 1, '30.00', '33.00', 1, 0, './imgs/EWW78WEE7W8-2.jpg', '2021-06-11 18:51:53', 7, 78, 'SANDERO'),
(1729, '0', 0, 'TAMPA DO LIMPADOR DE PARABRISA ONIX', 1, '23.00', '225.00', 1, 0, './imgs/873256-1.jpg', '2021-06-11 18:55:21', 7, 79, 'Onix'),
(1730, '0', 0, 'TRIZETA ECOSPORT  / AL-30', 1, '25.00', '25.00', 1, 0, './imgs/8887415233-1.png', '2021-06-11 19:09:42', 7, 80, 'ECOESPORTE'),
(1731, '0', 0, 'TRIZETA / NJH135020', 1, '20.00', '25.00', 1, 0, './imgs/8887415233-2.png', '2021-06-11 19:11:56', 7, 80, 'PALIO'),
(1732, '7890903101491', 0, 'TERMINAL DE DIREÇÃO KWID / 29744  NAKATA ', 1, '25.00', '25.00', 1, 0, './imgs/445320.jpg', '2021-06-11 19:15:49', 7, 56, 'KIWD'),
(1733, '0', 0, 'VALVULA EQUALIZADORA / REGULADORA / PROPORCIONADORA', 1, '10.00', '10.00', 1, 0, './imgs/GGB-1.jpg', '2021-06-11 19:20:33', 7, 81, ''),
(1734, '0', 0, 'PRATINHO NISSAN MARCH', 1, '77.00', '77.00', 1, 0, './imgs/22554W3-1.jpg', '2021-06-11 19:24:42', 7, 82, 'NISSAN MARCH'),
(1735, '7891551018353', 0, '6pk1500 / FORD KA', 1, '36.00', '90.00', 3, 0, './imgs/OO26T62T-1.jpg', '2021-06-11 19:31:03', 4, 49, 'Clio / ford ka novo '),
(1736, '7890903061436', 0, 'NJH05-0583 / NAKATA', 1, '137.00', '207.00', 2, 0, './imgs/FEFFDG2DF2-1.jpg', '2021-06-11 19:37:08', 4, 83, 'Onix Cobalt Prisma   22 Dentes INT - 25 Dentes Ext'),
(1737, '0', 0, 'BATEDOR TOYOTA ETIOS', 1, '10.00', '80.00', 1, 0, './imgs/FVR-1.jpg', '2021-06-11 20:17:49', 7, 84, ''),
(1739, '0', 0, 'CILINDRO MESTRE / SANDERO / LOGAN / C2178', 1, '20.00', '20.00', 1, 0, './imgs/WS15WS5-1.jpg', '2021-06-11 20:25:28', 7, 66, 'SANDERO / LOGAN'),
(1740, '7898318871244', 0, 'DISCO DE FREO ECOESPORT / HF 14A / HIPERFREIOS', 1, '100.00', '200.00', 1, 0, './imgs/2021-06-21_10_16_33.jpg', '2021-06-21 13:16:33', 7, 60, 'Ford/ESCORT ZETEC/FIESTA 1.0/1.3/1.4 16V'),
(1741, '7891579230287', 0, 'BATEDOR TS ASTRA  / ksc04205s COFAP', 1, '20.00', '75.00', 7, 0, './imgs/2021-06-21_10_19_52.jpg', '2021-06-21 13:19:52', 7, 84, 'GM astra '),
(1742, '7898318870032', 0, 'DISCO DE FREO FIESTA 1.0  COROLLA / HF 14 / HIPERFREIOS', 1, '100.00', '200.00', 2, 0, './imgs/2021-06-21_10_20_10.jpg', '2021-06-21 13:20:10', 7, 60, 'Ford corrier 1.3 1997 /fiesta 1.0/1.3 1996 a 2016'),
(1743, '7897483462745', 0, 'DISCO DE FREO ETIOS / Rcdi09620-009 TRW', 1, '100.00', '200.00', 1, 0, './imgs/2021-06-21_10_26_05.jpg', '2021-06-21 13:26:05', 7, 60, 'Toyota etios 1.3/ 1.5 2013 yaris sedan 1.5 2019'),
(1744, '7890903047607', 0, 'BATEDOR  DT ASTRA / Nk0315 nakata', 1, '20.00', '80.00', 8, 0, './imgs/2021-06-21_10_28_10.jpg', '2021-06-21 13:28:10', 7, 84, 'Astra / Vectra -  1997'),
(1745, '7898500319103', 0, 'DISCO DE FREO  TOYOTA COROLLA / HF 504B / HIPERFREIOS', 1, '100.00', '200.00', 1, 0, './imgs/2021-06-21_10_29_31.jpg', '2021-06-21 13:29:31', 7, 60, 'Toyota corolla 1.8 16v 03/2014 a 2019 corolla 2.0 16v 03/2014 a 2019'),
(1746, '7891579229274', 0, 'BATEDOR DT  STRADA / ksc03203s COFAP', 1, '30.00', '60.00', 7, 0, './imgs/2021-06-21_10_38_39.jpg', '2021-06-21 13:38:39', 7, 84, 'Fiat strada '),
(1747, '7897483487373', 0, 'DISCO DE FREO COROLLA 1.8  / Rcdi07910-009 TRW', 1, '100.00', '200.00', 3, 0, './imgs/2021-06-21_10_42_38.jpg', '2021-06-21 13:42:38', 7, 60, 'Toyota corolla 1.8'),
(1748, '7892968018806', 0, 'BATEDOR TS  Fiat dublo / BR 10304401661 MONROE', 1, '17.00', '50.00', 2, 0, './imgs/2021-06-21_10_45_58.jpg', '2021-06-21 13:45:58', 7, 84, 'Fiat doblo'),
(1749, '7898318871299', 0, 'DISCO DE FREO  CORSA SEDAN / HF 23B / HIPERFREIOS', 1, '100.00', '200.00', 4, 0, './imgs/2021-06-21_10_46_09.jpg', '2021-06-21 13:46:10', 7, 60, 'Corsa sw 1.0 8v 2002/corsa sedan 1.0 8v 2002'),
(1750, '7898318870179', 0, 'HF23  / HIPERFREIOS', 1, '69.42', '250.00', 3, 0, './imgs/2021-06-21_10_50_07.jpg', '2021-06-21 13:50:07', 4, 60, 'Celta / corsa classic / corsa 1.0 1.4 solido'),
(1751, '7898318870162', 0, 'DISCO DE FREiO AGILE / HF 20 / HIPERFREIOS', 1, '100.00', '200.00', 1, 0, './imgs/2021-06-21_10_54_38.jpg', '2021-06-21 13:54:38', 4, 60, 'Gm agile 1.4 8v 2010 corsa 1995'),
(1752, '7898500318120', 0, 'HF51F  / HIPERFREIOS', 1, '154.00', '300.00', 1, 0, './imgs/2021-06-21_10_57_09.jpg', '2021-06-21 13:57:09', 4, 60, 'Colbalt 1.0 1.8 2012 (+abs) / sonic 1.6 2012'),
(1753, '7898429264119', 0, 'BATEDOR TS CLIO / MB6750 MOBENSANI', 1, '20.00', '60.00', 4, 0, './imgs/bt.jpg', '2021-06-21 13:58:00', 7, 84, 'CLIO  ANO 2000'),
(1754, '7899099127131', 0, 'BATEDOR DT  KWID / 50820 Kit e cia ', 1, '15.00', '50.00', 3, 0, './imgs/KW.jpg', '2021-06-21 14:01:57', 7, 84, 'Renault kwid'),
(1755, '7899099127148', 0, 'BATEDOR TS KWID  / 50821 KIT&CIA', 1, '15.00', '60.00', 3, 0, './imgs/BTK.jpg', '2021-06-21 14:24:26', 4, 84, 'RENAULT CLIO '),
(1756, '7891579854940', 0, 'BATEDOR DT ETIOS / KSC22205S COFAP', 1, '20.00', '70.00', 1, 0, './imgs/ETB.jpg', '2021-06-21 14:28:06', 4, 84, 'ETIOS'),
(1760, '7891579230447', 0, 'BATEDOR DT PEUGEOT 206 / KSC17102S COFAP', 1, '22.00', '50.00', 1, 0, './imgs/BTD2-1.jpg', '2021-06-21 16:43:32', 4, 84, 'PEUGEOT 206 '),
(1761, '', 0, 'KSC55002S / COFAP', 1, '0.00', '139.20', 2, 0, './imgs/2021-09-18_12_04_05.jpg', '2021-09-18 18:04:09', 4, 84, 'C3 2013 / AIRCROSS traseiro'),
(1762, '7891579299376', 0, 'BATEDOR TS C3  /  KSC17202S COFAP', 1, '0.00', '50.00', 3, 0, './imgs/C3T.jpg', '2021-06-21 16:52:14', 4, 84, 'CITROEEN C3'),
(1764, '7891579366917', 0, 'KSC32203S / COFAP', 1, '0.00', '50.00', 3, 0, './imgs/KSC225.jpg', '2021-06-21 17:19:20', 7, 84, 'HB20 TRASEIRO'),
(1765, '7898429266021', 0, 'MB4258 / MOBESANI', 1, '24.94', '62.35', 20, 0, './imgs/pu.jpg', '2021-09-18 17:50:35', 4, 84, 'PUNTO / LINEA / SPIN / COBALT / GRAND SIENA TRASEIRO '),
(1766, '7891579229090', 0, 'BATEDOR  GOL TS/  KSC01205S COFAP', 1, '22.00', '50.00', 1, 0, './imgs/BN.jpg', '2021-06-21 19:52:27', 4, 84, 'GOL PARATI '),
(1767, '7890903047850', 0, 'BATEDOR GOL TS/ NK0405 NAKATA ', 1, '22.00', '65.00', 22, 0, './imgs/BN-1.jpg', '2021-06-21 19:58:48', 4, 84, 'GOL PARATI GOLF POLO'),
(1768, '7890903046846', 0, 'NK0113 / NAKATA ', 1, '18.00', '65.00', 14, 0, './imgs/BBV.jpg', '2021-06-21 20:05:20', 4, 84, 'PALIO / SIENA traseiro '),
(1769, '7898429266427', 0, 'MB4259 / MOBESANI', 1, '40.69', '101.72', 24, 0, './imgs/BBV-1.jpg', '2021-09-18 18:00:54', 4, 84, 'UNO novo / PALIO novo traseiro'),
(1770, '7890903047355', 0, 'NK0229 / NAKATA ', 1, '28.48', '71.20', 10, 0, './imgs/12354.jpg', '2021-09-18 17:57:52', 4, 84, 'FORD FIESTA'),
(1771, '7891579229151', 0, 'BATEDOR  DT FIORINO /  KSC03101S COFAP', 1, '22.00', '50.00', 24, 0, './imgs/gh.jpg', '2021-06-22 11:41:56', 7, 84, 'FIAT ELBA  FIORINO'),
(1772, '7891579881427', 0, 'BATEDOR  DT FIESTA/ KSC08126S COFAP', 1, '22.00', '50.00', 10, 0, './imgs/444.jpg', '2021-06-22 11:50:00', 4, 84, 'FORD FIESTA 2003 NEW FIESTA ECOESPOET'),
(1773, '82007237351', 0, '8200723735 / RENAULT', 1, '31.00', '77.50', 20, 0, './imgs/555.jpg', '2021-06-22 11:56:25', 7, 84, 'LOGAN SANDERO MARCH VERSA '),
(1774, '7891579230171', 0, 'BATEDOR  DT CELTA / KSC04105SCOFAP', 1, '13.42', '60.00', 30, 0, './imgs/666.jpg', '2021-06-22 12:04:50', 4, 84, 'GM CELTA CORSA CLASSIC '),
(1776, '7891579229021', 0, 'BATEDOR DT GOLF / KSC01102S COFAP', 1, '14.08', '63.41', 10, 0, './imgs/88-3.jpg', '2021-06-22 12:12:17', 7, 84, 'VW GOLF FOX POLO VOYAGE PARATI '),
(1777, '7891579229229', 0, 'KSC03108S / COFAP', 1, '37.00', '65.00', 6, 0, './imgs/99-1.jpg', '2021-06-22 12:19:49', 4, 84, 'PALIO / Siena / strada dianteiro'),
(1778, '7898429266403', 0, 'Mb4059 / mobesani', 1, '20.00', '80.00', 11, 0, './imgs/1010.jpg', '2021-06-22 12:26:58', 4, 84, 'Novo uno  novo palio Grand siena '),
(1779, '7891579230355', 0, 'Batetor dt  ecoesport  / Ksc08106s cofap ', 1, '16.61', '50.00', 37, 0, './imgs/523.jpg', '2021-06-22 12:39:24', 7, 84, 'Fiesta rocam  Ecoesport rocam '),
(1780, '7892724415054', 0, 'COIFA LADO RODA ESQUERDO DIREITO/  2-13-569-1G SPICE', 1, '13.00', '40.00', 10, 0, './imgs/11-1.jpg', '2021-06-22 12:58:28', 7, 86, 'VW GOL 2.4  1.0 PARATI 1.0'),
(1781, '7899554023367', 0, 'COIFA LADO  DO CAMBIO NEW CIVIC  / KITSBOR', 1, '40.00', '120.00', 13, 0, './imgs/22-1.jpg', '2021-06-22 13:13:29', 7, 86, 'REPARO DO SEMI-EIXO LADO CAMBIO NEW CIVIC '),
(1782, '77891252785943', 0, 'COIFA LADO DO CAMBIO CLIO / 78594 SABO', 1, '40.00', '120.00', 11, 0, './imgs/33.jpg', '2021-06-22 13:20:06', 7, 86, 'RENAULT SCENIC MEGANE CLIO '),
(1783, '7891252785943', 0, 'COIFA LADO DO CAMBIO CLIO / 78594 SABO', 1, '40.00', '120.00', 25, 0, './imgs/32.jpg', '2021-06-22 13:35:53', 7, 86, 'RENAULT SCENIC MEGANE CLIO'),
(1784, '7892724415016', 0, 'COIFA LADO DA RODA  CORSA CLASSIC  /  2-13-499G  SPICE', 1, '11.70', '60.00', 38, 0, './imgs/12.jpg', '2021-06-22 13:53:47', 7, 86, 'GM CORSA CLASSIC CLETA AGILE ONIX SPIN MERIVA PRISMA COBALT  MONTANA'),
(1785, '7892724415085', 0, 'COIFA LADO RODA ESQUERDO DIREITO PALIO /  2-13-569 SPICE', 1, '12.00', '120.00', 9, 0, './imgs/11-2.jpg', '2021-06-22 14:19:43', 4, 86, 'FIAT PALIO SIENA UNO FIORINO  ARGO MOBI CRONOS GRAN SI3NA '),
(1786, '7892724415115', 0, 'COIFA LADO DO CAMBIO PALIO/ 2-13-659G SPICER', 1, '20.00', '60.00', 17, 0, './imgs/10-2.jpg', '2021-06-22 14:38:25', 4, 86, 'FIAT  PALIO 1.0 SI3NA STRADA UNO FIORINO CRONOS GRAND SIENA'),
(1787, '7892861987308', 0, 'COIFA LADO RODA HILUX / 2-13-6959G / SPICER', 1, '34.00', '120.00', 13, 0, './imgs/7458.jpg', '2021-06-22 19:11:51', 4, 86, 'Toyota Hilux SW4 (05/15) - Roda - Dir / Esq'),
(1788, '7898684755483', 0, 'COIFA LADO CAMBIO HILUX /  BCR', 1, '33.00', '120.00', 4, 0, './imgs/7458-1.jpg', '2021-06-22 19:16:38', 4, 86, 'TOYOTA HILUX SW4'),
(1789, '7890903093598', 0, 'COIFA LADO CAMBIO HILUX /  NKJ256D NAKATA ', 1, '33.00', '120.00', 4, 0, './imgs/789.jpg', '2021-06-22 19:20:31', 7, 86, 'TOYOTA HILUX SW4'),
(1790, '7890903093598', 0, 'COIFA LADO CAMBIO HILUX /  NKJ256D NAKATA ', 1, '33.00', '120.00', 4, 0, './imgs/789-1.jpg', '2021-06-22 19:22:45', 7, 86, 'TOYOTA  HILUX SW4'),
(1791, '7892724416273', 0, 'COIFA LADO RODA FIESTA ZETEC ROCAM  / 2-13-1139GS / SPICER', 1, '20.00', '80.00', 20, 0, './imgs/10-3.jpg', '2021-06-22 19:27:35', 4, 86, 'FIESTA ROCAM / CLIO  1.0 lado roda'),
(1792, '782724415153', 0, 'COIFA LADO DO CAMBIO FIESTA  / 78594 SABO', 1, '33.00', '120.00', 19, 0, './imgs/12-1.jpg', '2021-06-22 19:46:08', 4, 86, 'FORD FIESTA CURRER FORD KA ZETEC ROCAM '),
(1793, '7898500318014', 0, 'Hf21f / hipperfreios', 1, '131.00', '280.00', 2, 1, './imgs/2021-06-23_08_53_45.jpg', '2021-06-23 11:53:45', 4, 87, 'S10 nova 4x4 4x2 2012'),
(1794, '7890903053134', 0, '2041.669 / SPICER', 1, '120.00', '350.00', 1, 0, './imgs/FEFFDG2DF2-2.jpg', '2021-06-23 11:57:43', 7, 83, 'Fiat Brava 1.6 1.8 16v 2002'),
(1795, '7898318873378', 0, 'Hf26a / hipperfreios', 1, '80.00', '280.00', 1, 1, './imgs/2021-06-23_09_00_10.jpg', '2021-06-23 12:00:10', 4, 87, 'Astra 1.8 2.0 99 / montana '),
(1796, '7898500318526', 0, 'Hf615b / hipperfreios', 1, '147.00', '290.00', 1, 1, './imgs/2021-06-23_09_02_43.jpg', '2021-06-23 12:02:43', 4, 60, 'Nissan march 1.0 1.6 2012 / versa 1.0 2016 '),
(1797, '7892861978757', 0, 'ALB1735-909 / ALBARUS', 1, '50.00', '350.00', 2, 0, './imgs/JJ-9.jpg', '2021-06-23 12:03:43', 7, 83, 'FORD COURIER 1997 / FORD ECOSPORT 2012 / FORD FIESTA 2014 / FORD FOCUS 2010 / 1.6 ZETEC ROCAM'),
(1798, '7898318872357', 0, 'Hf502 / hipperfreios', 1, '80.00', '270.00', 1, 1, './imgs/2021-06-23_09_05_26.jpg', '2021-06-23 12:05:26', 4, 60, 'Corolla 1.6 / fielder 1.8 16v 2004 '),
(1799, '7897483487373', 0, 'Rcdi07910 / trw', 1, '80.00', '290.00', 1, 1, './imgs/2021-06-23_09_11_07.jpg', '2021-06-23 12:11:07', 4, 60, 'Corolla 1.8 16v 2008'),
(1800, '7898318875372', 0, 'Hf480c / hipperfreios', 1, '110.00', '225.00', 0, 1, './imgs/2021-06-23_09_13_30.jpg', '2021-06-23 12:13:30', 4, 87, 'Hillux 2.5 3.0 / sw4'),
(1801, '7892861978658', 0, 'ALB1601-569A /  ALBARUS', 1, '50.00', '145.00', 2, 0, './imgs/JJ.jpg', '2021-06-23 12:16:03', 7, 83, 'VW GOL G4'),
(1802, '7898500319103', 0, 'Hf504b / hipperfreios', 1, '191.00', '320.00', 1, 1, './imgs/2021-06-23_09_16_34.jpg', '2021-06-23 12:16:35', 4, 60, 'Corolla 1.8 2014 2019 / corolla 2.0 2014 2019 ventilado'),
(1803, '7892861979136', 0, 'ALB325-129A /  ALBARUS', 1, '76.00', '190.00', 2, 0, './imgs/JJ-1.jpg', '2021-09-18 22:54:03', 4, 83, 'VW GOL / PARATI / PASSAT / SANTANA / SAVEIRO / VOYAGEN'),
(1804, '7897483487373', 0, 'Rcdi07910 / trw', 1, '84.00', '290.00', 3, 1, './imgs/2021-06-23_09_22_35.jpg', '2021-06-23 12:22:35', 4, 60, 'Corolla 1.8 2009 2014 ventilado'),
(1805, '7897483462745', 0, 'Rcdi08620 / trw', 1, '165.00', '320.00', 1, 1, './imgs/2021-06-23_09_25_54.jpg', '2021-06-23 12:25:54', 4, 60, 'Yaris sedan 1.5 2019 / etios 1.3 1.5 2013 ventilado'),
(1806, '7892861978498', 0, 'ALB1355-499A /  ALBARUS', 1, '50.00', '144.00', 6, 0, './imgs/JJ-8.jpg', '2021-06-23 12:27:02', 4, 83, 'CHEVROLET CORSA 1994  1.4 8V   CLASSIC 1.0 8V   1.0 '),
(1807, '7898318871244', 0, 'Hf14a / hipperfreios', 1, '70.00', '260.00', 1, 1, './imgs/2021-06-23_09_30_16.jpg', '2021-06-23 12:30:16', 4, 83, 'Fiesta 1.0 1.3 1.4 / escort zetec 16v 1997'),
(1808, '4041278883090', 0, 'Hf14a / hippeefreios', 1, '70.00', '260.00', 1, 1, './imgs/2021-06-23_09_33_02.jpg', '2021-06-23 12:33:02', 4, 60, 'Fiesta 1.0 1.3 1.4 / ESCOrt zetec 16v 1997 ventilado'),
(1809, '7892861978474', 0, 'ALB1345-909A / ALBARUS ', 1, '50.00', '233.21', 3, 0, './imgs/JJ-2.jpg', '2021-06-23 12:33:50', 7, 83, 'GM - Agile / Celta / Corsa / Corsa Classic / Corsa Novo - Com ABS - 1.4 8V / 1.0'),
(1810, '7898318870032', 0, 'Hf14 / hipperfreios', 1, '80.00', '270.00', 2, 1, './imgs/2021-06-23_09_35_25.jpg', '2021-06-23 12:35:25', 4, 60, 'Fiesta rocam 1.0 1.3 / courier 1.3 solido'),
(1811, '7898500318168', 0, 'Hf18h / hipperfreios', 1, '90.00', '300.00', 2, 1, './imgs/2021-06-23_09_38_50.jpg', '2021-06-23 12:38:50', 4, 60, 'New fiesta 2011 ventilado'),
(1812, '7892861978597', 0, 'ALB1491-599 /  ALBARUS', 1, '50.00', '250.00', 3, 0, './imgs/JJ-7.jpg', '2021-06-23 12:40:09', 4, 83, 'Fiat - Palio/Siena  / Uno 1.0 (96/99) / Fiorino 1.3 8/16V (00/07)'),
(1813, '7898500318342', 0, 'Hf18j / hipperfreios', 1, '120.00', '350.00', 1, 1, './imgs/2021-06-23_09_42_32.jpg', '2021-06-23 12:42:32', 4, 60, 'Ecosport 1.5 2018 1.6 2012 ventilado'),
(1814, '7898318871237', 0, 'Hf18b / hipperfreios', 1, '90.00', '290.00', 1, 1, './imgs/2021-06-23_09_45_57.jpg', '2021-06-23 12:45:57', 4, 60, 'Focus 1.8 16v 2.0 16v ventilado'),
(1815, '7892861979013', 0, 'ALB2461-1449 / ALBARUS ', 1, '50.00', '160.00', 2, 0, './imgs/JJ-6.jpg', '2021-06-23 12:47:12', 7, 83, 'Fiat - Dobló 1.8  /  Palio 1.8 , Siena 1.8  /  Palio Weekend 1.8 8V Sem ABS / Strada 1.8 / Idea 1.8 8V Sem ABS '),
(1816, '7898500318113', 0, 'Hf325l / hipperfreios', 1, '153.00', '290.00', 1, 1, './imgs/2021-06-23_09_48_11.jpg', '2021-06-23 12:48:11', 4, 60, 'Hb20 1.6 2013 ventilado'),
(1817, '7892861978795', 0, 'ALB1805-669 / ALBARUS', 1, '50.00', '152.00', 6, 0, './imgs/JJ-5.jpg', '2021-06-23 12:53:59', 7, 83, 'Fiat strada '),
(1818, '7898500318106', 0, 'Hf325m / hipperfreios', 1, '125.00', '300.00', 2, 1, './imgs/2021-06-23_09_54_06.jpg', '2021-06-23 12:54:06', 4, 87, 'Hb20 1.0 1.6 '),
(1819, '7898318878564', 0, 'Hf325d / hipperfreios', 1, '100.00', '300.00', 1, 1, './imgs/2021-06-23_10_00_27.jpg', '2021-06-23 13:00:27', 4, 60, 'Tucson 2.0 2.7 2005 ventilado'),
(1820, '7898318878564', 0, 'Hf330 / hipperfreios', 1, '203.00', '450.00', 2, 1, './imgs/2021-06-23_10_01_50.jpg', '2021-06-23 13:01:50', 4, 60, 'Hr 2006 ventilado'),
(1821, '7892861978931', 0, 'ALB2231-2029 /  ALBARUS', 1, '80.00', '256.00', 2, 0, './imgs/JJ-4.jpg', '2021-06-23 13:03:36', 7, 83, 'FIAT NOVO PAILO / UNO 2010 A 2014 | VIVACE 1.0 EVO / FIORINO 2015 | 1.0 8V FIRE | 1.0 8V'),
(1822, '7898500318090', 0, 'Hf325j / hipperfreios', 1, '129.00', '290.00', 1, 1, './imgs/2021-06-23_10_08_51.jpg', '2021-06-23 13:08:51', 4, 60, 'Hb20 1.0 2013 '),
(1823, '7892861979174', 0, 'ALB4000-8772 /  Albarus ', 1, '120.00', '306.00', 1, 0, './imgs/JJ-3.jpg', '2021-06-23 13:10:28', 7, 83, 'Fiat doblo / Bravo / Grand Siena 1.6 E.TORQ / NOVO PALIO / Palio Weekend  / Strada 1.8 E.TORQ / Punto 1.6 e 1.8 E.TORQ'),
(1824, '7890903031545', 0, 'NJH91--1409 / NAKATA', 1, '80.00', '221.00', 3, 0, './imgs/1.jpg', '2021-06-23 13:27:31', 7, 83, 'DOBLÒ / PALIO 2005 | SIENA 2005 | STRADA 2015 | 1.4 8V  \r\n22 dentes int. / 22 dentes ext.'),
(1825, '7890903011080', 0, 'NJH05-69 NAKATA', 1, '50.00', '166.00', 3, 0, './imgs/1-1.jpg', '2021-06-23 13:37:20', 7, 83, 'FIAT STRADA  / 22 dentes int. / 22 dentes ext.'),
(1826, '7898500317130', 0, 'Hf549a / hipperfreios', 1, '120.00', '300.00', 1, 1, './imgs/2021-06-23_10_38_02.jpg', '2021-06-23 13:38:02', 4, 60, 'Clio 1.6 / march 1.0 1.6 VENTILADO'),
(1827, '0', 0, 'JUNTA HOMOCINETICA NOVO PALIO / NJH31-2029 NAKATA', 1, '124.00', '350.00', 1, 0, './imgs/1-2.jpg', '2021-06-23 13:43:18', 7, 60, 'FIAT PALIO FIRORINO NOVO UNO 1.0'),
(1828, '4', 4, 'TTTTT', 1, '4.00', '4.00', 251, 0, './imgs/10-4.jpg', '2021-06-23 13:43:55', 7, 60, '4'),
(1829, '0', 0, 'JUNTA HOMOCINETICA CORSA 1994 / NJH31-2029 NAKATA', 1, '124.00', '350.00', 1, 0, './imgs/1-3.jpg', '2021-06-23 13:47:11', 7, 60, '0'),
(1830, '7898318872111', 0, 'Hf322b / hipperfreios', 1, '178.00', '300.00', 2, 1, './imgs/2021-06-23_10_51_46.jpg', '2021-06-23 13:51:46', 4, 87, 'Sandero 1.0 1.6 2008 / clio 1.0 2000 2016 com cubo'),
(1831, '7898318872098', 0, 'Hf322 / hipperfreios', 1, '120.00', '290.00', 4, 1, './imgs/2021-06-23_10_54_45.jpg', '2021-06-23 13:54:45', 4, 87, 'Clio 1.0 com cubo'),
(1832, '7890903035543', 0, 'NJH31-2029 NAKATA ', 1, '124.00', '212.00', 1, 0, './imgs/1-4.jpg', '2021-06-23 13:54:56', 7, 83, 'NOVO PALIO NOVO UNO FIORINO FIRE EVO / 21 dentes int. / 22 dentes ext.'),
(1833, '7890903089164', 0, 'NJH23-3358 NAKATA', 1, '242.00', '449.00', 2, 0, './imgs/1-5.jpg', '2021-06-23 14:13:15', 7, 83, 'JEEP RENAGATE  TORO / 24 dentes int. / 27 dentes ext.'),
(1834, '7890903061450', 0, 'NJH00-1497 NAKATA', 1, '169.00', '226.00', 2, 0, './imgs/1-6.jpg', '2021-06-23 14:19:07', 7, 83, 'HYUNDAI HB20 1.6  / 22 dentes int. / 25 dentes ext.'),
(1835, '7899613614079', 0, 'VT5253 / VETOR', 1, '145.00', '204.00', 1, 0, './imgs/2.jpg', '2021-06-23 14:22:22', 7, 83, 'GM COBALT 1.8 SONIC SPIN'),
(1836, '7892254154781', 0, 'HC080 / VOLDA', 1, '114.00', '216.00', 1, 0, './imgs/3.jpg', '2021-06-23 14:27:06', 7, 83, 'GM CRUZER'),
(1837, '7890903061399', 0, 'NJH03-0580 / NAKATA ', 1, '146.00', '214.00', 2, 0, './imgs/1-7.jpg', '2021-06-23 14:29:31', 7, 83, 'GM COBALT SPIN ONIX PRISMA  1.8  / 30 dentes int. / 25 dentes ext.'),
(1838, '7891579354501', 0, 'JHC-01106 / COFAP', 1, '182.00', '269.00', 1, 0, './imgs/4.jpg', '2021-06-23 14:33:55', 7, 83, 'VW FOX 1.6 COM ABS'),
(1839, '7890903061412', 0, 'NJH04-6481 / NAKATA ', 1, '50.00', '199.00', 2, 0, './imgs/1-8.jpg', '2021-06-23 14:37:32', 7, 83, 'GM COBALT / ONIX /PRISMA  21 dentes int. / 25 dentes ext.'),
(1840, '7890903069739', 0, 'NJH09-0582 / NAKATA', 1, '30.00', '222.00', 1, 0, './imgs/1-9.jpg', '2021-06-23 14:39:48', 7, 83, 'GM COBALT 1.4 25  21 dentes int. / 25 dentes ext.'),
(1841, '7890903031521', 0, 'NJH05-1829 / NAKATA ', 1, '30.00', '181.00', 1, 0, './imgs/1-10.jpg', '2021-06-23 14:43:57', 7, 83, 'FOX GOL G5 VOYAGE 2008 ATÉ 2013 ESTRIAS 24 INTERNA 22 EXTERNA DIREITO ESQUERDO'),
(1842, '7898500317505', 0, 'Hf51c / hipperfreios', 1, '94.44', '290.00', 2, 1, './imgs/2021-06-23_14_56_13.jpg', '2021-06-23 17:56:14', 4, 60, 'Onix 1.0 1.4 2013 2019 / cobalt 1.4 1.8 abs ventilado'),
(1843, '7898318871299', 0, 'Hf23b / hipperfreios', 1, '157.00', '290.00', 3, 1, './imgs/2021-06-23_14_59_28.jpg', '2021-06-23 17:59:28', 4, 60, 'Corsao 1.0 8v / corsa sw 1.0 2002 ventilado'),
(1844, '7898318870421', 0, 'Hf24 / hipperfreios', 1, '134.00', '260.00', 1, 1, './imgs/2021-06-23_15_17_17.jpg', '2021-06-23 18:17:17', 4, 87, 'Celta 1.0 1.4 / Agile 1.4 8v 2009'),
(1845, '7898318871930', 0, 'Hf24b / hipperfreios', 1, '143.00', '290.00', 1, 1, './imgs/2021-06-23_15_20_36.jpg', '2021-06-23 18:20:36', 4, 87, 'Corsa 1.0 1.4 1.8 2002 / corsa sw 1.0 1.4 1.8 2002'),
(1846, '7898500318267', 0, 'HF51 / HIpperfreios', 1, '88.00', '260.00', 4, 1, './imgs/2021-06-23_15_26_19.jpg', '2021-06-23 18:26:19', 4, 87, 'Onix '),
(1847, '7898318870261', 0, 'Hf36 / hipperfreios', 1, '76.00', '0.00', 3, 1, './imgs/2021-06-23_15_48_57.jpg', '2021-09-17 22:54:35', 4, 87, 'Fiorino 85 93 / palio 96'),
(1848, '7898500313149', 0, 'Hf37a / hipperfreios', 1, '120.00', '290.00', 4, 1, './imgs/2021-06-23_15_52_28.jpg', '2021-06-23 18:52:28', 4, 87, 'Grand siena 1.4 1.6 abs / palio 1.0 2012 sem cubo'),
(1849, '7898318870377', 0, 'Hf37 / hipperfreios', 1, '132.63', '290.00', 2, 1, './imgs/2021-06-23_15_56_11.jpg', '2021-06-23 18:56:11', 4, 87, 'Doblo 2002 / fiorino 1994 sem cubo'),
(1850, '7898318875808', 0, 'Hf08b / hipperfreios', 1, '120.00', '290.00', 2, 1, './imgs/2021-06-23_16_00_02.jpg', '2021-06-23 19:00:02', 4, 87, 'Gol 1.0 1.6 g5 g6 / up 1.0 2012 sem cubo'),
(1851, '7898318871626', 0, 'Hf08a / hipperfreios', 1, '120.00', '290.00', 2, 1, './imgs/2021-06-23_16_05_33.jpg', '2021-06-23 19:05:33', 4, 87, 'Polo 2002 / fox 2003 06 07  5 furos SEM cubo'),
(1852, '7898500310247', 0, 'Hf87a / hipperfreios', 1, '88.00', '280.00', 4, 1, './imgs/2021-06-23_16_08_39.jpg', '2021-06-23 19:08:39', 4, 60, 'GOL / voyage g5 g6 1.0 1.6 aro 14 ventilado'),
(1853, '7898318871077', 0, 'Hf81 / hipperfreios', 1, '116.00', '290.00', 2, 1, './imgs/2021-06-23_16_11_04.jpg', '2021-06-23 19:11:04', 4, 60, 'Fox 1.6 / SPACEFOX 1.6 / CROSSFOX 1.6 / golf 1.6 2.0 99 2014 5 furos ventilado'),
(1854, '7898318871374', 0, 'Hf700 / hipperfreios', 1, '90.00', '250.00', 1, 1, './imgs/2021-06-23_16_13_26.jpg', '2021-06-23 19:13:26', 4, 60, 'Civic ex lx 1.6 93 / ventilado'),
(1855, '7893233035467', 0, 'Bd3546 / fremax', 1, '58.00', '290.00', 2, 1, './imgs/2021-06-23_16_18_00.jpg', '2021-06-23 19:18:00', 4, 87, 'Cobalt 1.4 1.8 / sonic 1.6'),
(1856, '7898318871435', 0, 'Hf735 / hipperfreios', 1, '120.00', '380.00', 1, 1, './imgs/2021-06-23_16_19_35.jpg', '2021-06-23 19:19:35', 4, 87, 'Peugeout 206 abs 98 / 106 1.6 com cubo'),
(1857, '7898318872623', 0, 'Hf692 / hipperfreios', 1, '120.00', '290.00', 0, 1, './imgs/2021-06-23_16_21_37.jpg', '2021-06-23 19:21:37', 4, 60, 'Peugeout 206 1.0 00 / c3 1.4 2002 solido '),
(1858, '7893233047507', 0, 'Bd4750 / fremax', 1, '130.00', '290.00', 1, 1, './imgs/2021-06-23_16_25_43.jpg', '2021-06-23 19:25:43', 4, 60, 'Citroen C3 /citroen c4 / peugeout 2008 / hoggar / peugeout 207 ventilado'),
(1859, '7898318873637', 0, 'Hf752 / hipperfreios', 1, '130.00', '300.00', 1, 1, './imgs/2021-06-23_16_28_41.jpg', '2021-06-23 19:28:41', 4, 60, 'C4 pallas / picasso 2.0 16 07 / peugeout 307 2.0 ventilado'),
(1860, '7891579303813', 0, 'Gb29949m / cofap', 1, '214.00', '350.00', 2, 1, './imgs/2021-06-24_11_18_53.jpg', '2021-06-24 14:18:53', 4, 63, 'Ford ka antigo 2007 traseiro'),
(1861, '7891579216014', 0, 'Gb27471 / cofap', 1, '132.00', '300.00', 3, 1, './imgs/2021-06-24_11_20_07.jpg', '2021-06-24 14:20:07', 4, 63, 'Fiesta zetec rocam 2003 traseiro'),
(1862, '7899027349277', 0, 'Sp363 / monroe', 1, '160.00', '400.00', 4, 1, './imgs/2021-06-24_11_22_51.jpg', '2021-09-24 20:12:52', 4, 63, 'New fiesta / new KA kA+ 1.0 1.5 sem barra estabilizadora traseiro'),
(1863, '7899027349413', 0, 'Sp344 / monroe', 1, '140.00', '350.00', 4, 1, './imgs/2021-06-24_11_24_08.jpg', '2021-06-24 14:24:08', 4, 63, 'New Ecosport 4x2 2012 traseiro'),
(1864, '7899027350259', 0, 'Sp067 / monroe', 1, '174.00', '450.00', 1, 0, './imgs/1-108.jpg', '2021-06-24 14:25:58', 7, 63, 'New ka ka + / SEM barra estabilizadora lado esquerdo dianteiro'),
(1865, '7899027350242', 0, 'Sp066 / monroe', 1, '209.00', '522.50', 2, 1, './imgs/2021-06-24_11_26_59.jpg', '2021-09-18 16:34:01', 4, 63, 'New KA ka+ / sem barra estabilizadora lado direito dianteiro'),
(1866, '7891579203137', 0, 'Gb30231 / cofap', 1, '188.00', '450.00', 4, 1, './imgs/2021-06-24_11_28_10.jpg', '2021-06-24 14:28:10', 4, 63, 'Fiesta zetec rocam 2003 dianteiro lado esquerdo + direito'),
(1867, '7891579303868', 0, 'Gb35950m / cofap', 1, '257.00', '500.00', 2, 1, './imgs/2021-06-24_11_30_27.jpg', '2021-06-24 14:30:27', 4, 63, 'Ka antigo 2007 dianteiro'),
(1868, '7891579205872', 0, 'Gp30313 / cofap', 1, '0.00', '450.00', 2, 1, './imgs/2021-06-24_11_32_07.jpg', '2021-06-24 14:32:07', 4, 63, 'Ecosport 4x2 2003 dianteiro'),
(1869, '543024025r1', 0, '543024025R / renault', 1, '230.00', '550.00', 2, 1, './imgs/2021-06-24_11_34_58.jpg', '2021-06-24 14:34:58', 4, 63, 'Sandero 2007 / logan 2007 dianteiro'),
(1870, '8200126407 ', 0, '8200126407 / RENAULT', 1, '358.00', '895.00', 2, 1, './imgs/2021-06-24_11_38_26.jpg', '2021-09-20 21:44:40', 4, 63, 'Clio 2 dianteiro'),
(1871, '543026348R1', 0, '543026348r / Renault', 1, '300.00', '550.00', 4, 1, './imgs/2021-06-24_11_40_21.jpg', '2021-06-24 14:40:21', 4, 63, 'DUSTER 1.6 2.0 dianteiro'),
(1872, '543029585r', 0, '543029585r / renault ', 1, '238.00', '460.00', 1, 1, './imgs/2021-06-24_11_43_11.jpg', '2021-06-24 14:43:11', 4, 63, 'Kwid dianteiro'),
(1873, '7891579238757', 0, 'GB48039 / cofap', 1, '229.00', '460.00', 2, 1, './imgs/2021-06-24_11_45_16.jpg', '2021-06-24 14:45:16', 4, 63, 'Logan / sandero 2007 traseiro '),
(1874, '7891579099976', 0, 'Gb47828 / cofap', 1, '159.00', '350.00', 2, 1, './imgs/2021-06-24_11_46_15.jpg', '2021-06-24 14:46:15', 4, 63, 'Clio traseiro'),
(1875, '562105006R1', 0, '562105006R / Renault', 1, '154.00', '460.00', 4, 1, './imgs/2021-06-24_11_48_43.jpg', '2021-06-24 14:48:43', 4, 63, 'Sandero / logan 2007 traseiro'),
(1876, '562105059R1', 0, '562105059R / renault', 1, '229.00', '500.00', 4, 1, './imgs/2021-06-24_11_51_14.jpg', '2021-06-24 14:51:14', 4, 63, 'Duster 4x2 2011 traseiro'),
(1877, '7891579354976', 0, 'Gb48246 / cofap', 1, '190.00', '350.00', 6, 1, './imgs/2021-06-24_14_31_52.jpg', '2021-06-24 17:31:52', 4, 63, 'Hb20 2012 traseiro'),
(1878, '7891579355003', 0, 'Gb30535 / cofap', 1, '349.00', '600.00', 1, 1, './imgs/2021-06-24_14_33_00.jpg', '2021-06-24 17:33:00', 4, 63, 'Hb20 2012 lado esquerdo dianteiro'),
(1879, '7891579354990', 0, 'Gp30534 / cofap', 1, '338.00', '600.00', 1, 1, './imgs/2021-06-24_14_33_56.jpg', '2021-06-24 17:33:56', 4, 63, 'Hb20 2012 lado direito dianteiro'),
(1880, '7899027350266', 0, 'Sp004 / monroe', 1, '141.00', '350.00', 6, 1, './imgs/2021-06-24_14_35_11.jpg', '2021-06-24 17:35:11', 4, 63, 'Etios 2012 traseiro '),
(1881, '7891579368638', 0, 'Gb27663 / cofap', 1, '109.00', '400.00', 4, 1, './imgs/2021-06-24_14_39_01.jpg', '2021-06-24 17:39:01', 4, 63, 'Hillux pick 05 traseiro'),
(1882, '7899027350372', 0, 'Sp003 / monroe', 1, '193.00', '480.00', 4, 1, './imgs/2021-06-24_14_49_32.jpg', '2021-06-24 17:49:32', 4, 63, 'Etios todos dianteiro'),
(1883, '7891579368645', 0, 'Gb48277 / COFAp', 1, '177.61', '444.03', 4, 1, './imgs/2021-06-24_14_52_15.jpg', '2021-09-18 23:18:42', 4, 63, 'Hillux pick up 05 dianteiro'),
(1884, '4909500966860', 0, '339825 / kyb', 1, '279.17', '697.92', 2, 1, './imgs/2021-06-24_14_54_52.jpg', '2021-09-18 23:22:53', 4, 63, 'Corolla novo lado esquerdo dianteiro'),
(1885, '4909500966846', 0, '339824 / kyb', 1, '256.00', '550.00', 2, 1, './imgs/2021-06-24_14_57_12.jpg', '2021-06-24 17:55:47', 4, 63, 'Corolla novo lado direito dianteiro'),
(1886, '7892861991688', 0, 'Alb91505g / albarus', 1, '226.00', '450.00', 1, 1, './imgs/2021-06-24_15_05_25.jpg', '2021-06-24 18:05:25', 4, 63, 'Uno vivace 2010 2015 lado esquerdo dianteiro'),
(1890, '7892861991695', 0, 'Alb91506g / albarus', 1, '226.00', '450.00', 1, 1, './imgs/2021-06-24_15_06_44.jpg', '2021-06-24 18:06:44', 4, 63, 'Uno vivace 2010 2015 lado direito dianteiro'),
(1891, '7890903095653', 0, 'Hg33109 / hg nakata', 1, '250.00', '550.00', 1, 1, './imgs/2021-06-24_15_32_07.jpg', '2021-06-24 18:32:07', 4, 63, 'Cronos 2018 / argo 2017 lado direito dianteiro'),
(1892, '7890903095660', 0, 'Hg33110 / hg nakata', 1, '250.00', '550.00', 1, 1, './imgs/2021-06-24_16_18_21.jpg', '2021-06-24 19:18:21', 4, 63, 'Cronos 2018 / argo 2017'),
(1893, '7890903029108', 0, 'Hg33063 / hg nakata', 1, '230.00', '450.00', 1, 1, './imgs/2021-06-24_16_20_22.jpg', '2021-06-24 19:20:22', 4, 63, 'UNO VIVAVE 2010 2016 / COM ESTABILIZADOR LADO ESQUERDO DIANTEIRO'),
(1894, '7891579866455', 0, 'Gp33281 / cofap ', 1, '251.00', '450.00', 1, 1, './imgs/2021-06-24_16_22_45.jpg', '2021-06-24 19:22:45', 4, 63, 'Umo vivave 2017 cok estabilizador lado direito dianteiro'),
(1895, '7891579118288', 0, 'Gp30120 / cofap', 1, '209.00', '450.00', 4, 1, './imgs/2021-06-24_16_24_10.jpg', '2021-06-24 19:24:10', 4, 63, 'Strada antiga rst 2001 dianteiro'),
(1896, '7891579346209', 0, 'Gb48125 / cofap', 1, '139.00', '300.00', 6, 1, './imgs/2021-06-24_16_25_52.jpg', '2021-06-24 19:25:52', 4, 63, 'Grand siena traseiro '),
(1897, '7891579099822', 0, 'Gbl1119 / cofap', 1, '127.00', '250.00', 0, 1, './imgs/2021-06-24_16_28_46.jpg', '2021-06-24 19:28:46', 4, 63, 'Palio antigo hatch 97 traseiro '),
(1898, '7891579346193', 0, 'Gb48092 / cofap', 1, '199.00', '350.00', 4, 1, './imgs/2021-06-24_16_29_50.jpg', '2021-06-24 19:29:50', 4, 63, 'Palio novo traseiro '),
(1899, '7891579296467', 0, 'Gb47963 / cofap', 1, '175.00', '350.00', 2, 1, './imgs/2021-06-24_16_31_14.jpg', '2021-06-24 19:31:14', 4, 63, 'Punto / linea todos traseiro'),
(1900, '7891579311344', 0, 'Gp32800ps / cofap', 1, '344.82', '450.00', 0, 1, './imgs/2021-06-24_16_34_31.jpg', '2021-06-24 19:34:31', 4, 63, 'PALIO ANTIGO 1.0 DH 2007 DIANTEIRO'),
(1901, '7891579331557', 0, 'Gp32827 / cofap', 1, '244.00', '550.00', 1, 1, './imgs/2021-06-24_16_37_31.jpg', '2021-06-24 19:37:31', 4, 63, 'Uno 2010 lado direito dianteiro'),
(1902, '7891579246172', 0, 'Mp27539 / cofap', 1, '164.00', '300.00', 2, 1, './imgs/2021-06-24_16_38_55.jpg', '2021-06-24 19:38:55', 4, 63, 'Uno WAY antigo QUADRADO lado direito dianteiro'),
(1903, '7891579347763', 0, 'Gb27567 / cofap', 1, '140.00', '290.00', 2, 1, './imgs/2021-06-24_16_40_47.jpg', '2021-06-24 19:40:47', 4, 63, 'Citroen c3 novi traseiro'),
(1904, '4909500941867', 0, '338755 / kyb', 1, '250.00', '600.00', 1, 1, './imgs/2021-06-24_16_43_27.jpg', '2021-06-24 19:43:27', 4, 63, 'Citroen c4 pallas lado direito dianteiro'),
(1905, '4909500941881', 0, '338756 / cofap', 1, '250.00', '600.00', 1, 1, './imgs/2021-06-24_16_44_20.jpg', '2021-06-24 19:44:20', 4, 63, 'Citroen c4 pallas'),
(1906, '7891579297655', 0, 'Gp32687 / cofap', 1, '212.00', '550.00', 1, 1, './imgs/2021-06-24_16_47_03.jpg', '2021-06-24 19:47:03', 4, 63, 'Peugeout 207 hatch lado esquerdo dianteiro'),
(1907, '7891579297457', 0, 'Gp32688 / cofap', 1, '212.00', '550.00', 1, 1, './imgs/2021-06-24_16_48_10.jpg', '2021-06-24 19:48:10', 4, 63, 'Peugeout 207 hatch lado direito dianteiro'),
(1908, '7891579331489', 0, 'Gbl1252 / cofap', 1, '212.00', '400.00', 2, 0, './imgs/2021-06-24_16_49_17.jpg', '2021-06-24 19:49:17', 7, 63, 'Montana nova ls 2011 traseiro '),
(1909, '7891579206015', 0, 'Gl12902 / COFAp', 1, '212.00', '400.00', 2, 0, './imgs/2021-06-24_16_53_58.jpg', '2021-06-24 19:53:58', 7, 63, 'S10 4x4 2009 dianteiro'),
(1910, '7891579120755', 0, 'B.47061 / cofap', 1, '91.00', '280.00', 5, 1, './imgs/2021-06-24_16_56_24.jpg', '2021-06-24 19:56:24', 4, 63, 'Celta / corsa CORSA BTODOS '),
(1911, '7891579346186', 0, 'Gb27608 / cofap', 1, '149.00', '372.50', 4, 1, './imgs/2021-06-24_16_57_21.jpg', '2021-09-18 16:32:29', 4, 63, 'Onix / prisma novo traseiro '),
(1912, '7891579116864', 0, 'Mp30088 / cofap', 1, '141.00', '352.50', 6, 1, './imgs/2021-06-24_16_58_53.jpg', '2021-09-23 23:23:57', 4, 63, 'Corsa classic / celta dianteiro'),
(1913, '7891579308535', 0, 'Gp30316 / cofap', 1, '212.00', '480.00', 4, 1, './imgs/2021-06-24_17_00_04.jpg', '2021-06-24 20:00:04', 4, 63, 'Agile 2009 dianteiro'),
(1914, '52093284', 0, '52093284 / gm', 1, '282.00', '550.00', 1, 1, './imgs/2021-06-24_17_02_26.jpg', '2021-06-24 20:02:26', 4, 63, 'Onix / prisma novo lado esquerdo DIANTEIRO '),
(1915, '52093285', 0, '52093285 / gm', 1, '292.00', '730.00', 10, 1, './imgs/2021-06-24_17_03_20.jpg', '2021-09-20 23:04:18', 4, 63, 'Onix / prisma novo lado direito dianteiro'),
(1916, '7899027348492', 0, 'Sp320 / monroe', 1, '205.00', '512.50', 6, 1, './imgs/2021-06-24_17_06_15.jpg', '2021-09-18 16:29:12', 4, 63, 'Gol / voyage / G5-g6 1.0-1.6 com estabilizador dianteiro'),
(1917, '52024164', 0, 'Gp30520 / cofap', 1, '244.00', '500.00', 1, 0, './imgs/2021-06-24_17_12_07.jpg', '2021-06-24 20:09:31', 7, 63, 'Cobalt 2011 lado direito dianteiro'),
(1918, '7891579353610', 0, 'Gp30521 / cofap', 1, '244.00', '500.00', 1, 1, './imgs/2021-06-24_17_10_35.jpg', '2021-06-24 20:10:35', 4, 63, 'Cobalt 2011 lado esquerdo dianteiro'),
(1919, '7891579121967', 0, 'Gp32476 / cofap', 1, '230.00', '550.00', 2, 1, './imgs/2021-06-24_17_11_38.jpg', '2021-06-24 20:11:38', 4, 63, 'Fox 2003 dianteiro'),
(1920, '7891579293718', 0, 'Gp32801 / cofap', 1, '247.00', '460.00', 2, 1, './imgs/2021-06-24_17_15_03.jpg', '2021-06-24 20:15:03', 4, 63, 'Saveiro g5 g6 dianteiro'),
(1921, '7891579002105', 0, 'B.47097 / cofap', 1, '109.00', '250.00', 6, 1, './imgs/2021-06-24_17_16_59.jpg', '2021-06-24 20:16:59', 4, 63, 'GOL / voyage  g5 g6 traseiro '),
(1922, '7891579125118', 0, 'Gb27395 / cofap', 1, '174.00', '350.00', 2, 1, './imgs/2021-06-24_17_18_08.jpg', '2021-06-24 20:18:08', 4, 63, 'Golf / bora 2007 2008 traseiro '),
(1923, '7899027348959', 0, 'Sp282 / monroe ', 1, '144.00', '350.00', 2, 1, './imgs/2021-06-24_17_19_05.jpg', '2021-06-24 20:19:05', 4, 63, 'Fox / crossfox / spacefox '),
(1924, '7899027350679', 0, 'Sp251 / monroe', 1, '285.00', '350.00', 2, 1, './imgs/2021-06-24_17_20_24.jpg', '2021-06-24 20:20:24', 4, 63, 'Civic 2006 2011 traseiro'),
(1925, '7899027351294', 0, 'Sp288 / cofap', 1, '179.00', '450.00', 1, 1, './imgs/2021-06-24_17_22_00.jpg', '2021-06-24 20:22:00', 4, 63, 'Nissan march 2011 / march sport lado direito dianteiro'),
(1926, '7899027351300', 0, 'Sp289 / monroe', 1, '179.00', '450.00', 1, 1, './imgs/2021-06-24_17_23_05.jpg', '2021-06-24 20:23:05', 4, 63, 'Nissan march / march sport lado esquerdo dianteiro'),
(1927, '7899027351287', 0, 'Sp145 / monroe', 1, '186.00', '450.00', 1, 1, './imgs/2021-06-24_17_24_13.jpg', '2021-06-24 20:24:13', 4, 63, 'Nissan versa 2011 lado esquerdo dianteiro'),
(1928, '7899027351270', 0, 'Sp144 / monroe', 1, '186.00', '450.00', 1, 1, './imgs/2021-06-24_17_25_18.jpg', '2021-06-24 20:25:18', 4, 63, 'Nissan versa 2011 lado direito dianteiro'),
(1930, '7891579867759', 0, 'Gp30585 / cofap', 1, '600.00', '276.00', 1, 1, './imgs/2021-06-24_17_26_46.jpg', '2021-06-24 20:26:46', 4, 63, 'Nissan kicks lado esquerdo dianteiro'),
(1931, '7891579867742', 0, 'Gp30584 / cofap', 1, '276.00', '600.00', 1, 1, './imgs/2021-06-24_17_28_12.jpg', '2021-06-24 20:28:12', 4, 63, 'Nissan kicks lado direito dianteiro'),
(1932, '7899027344418', 0, '27328 / monroe', 1, '0.00', '500.00', 2, 1, './imgs/2021-06-24_17_29_35.jpg', '2021-06-24 20:29:35', 4, 63, 'Frontier 4x4 traseiro '),
(1933, '7890903032085', 0, 'N92024 / nakata', 1, '52.00', '180.00', 6, 0, './imgs/1-64.jpg', '2021-06-25 11:53:22', 7, 56, 'New fiesta / new ecosport lado direito'),
(1934, '7891342010863', 0, 'PSL332 / TECFIL', 1, '27.00', '67.50', 9, 0, './imgs/ft.jpg', '2021-10-02 17:47:25', 4, 58, 'HYUNDAI HR 2006 | 2.5 TDI - HYUNDAI HR 2007 | 2.5 TDI - HYUNDAI HR 2008 | 2.5 TDI - HYUNDAI HR 2009 | 2.5 TDI - HYUNDAI HR 2010 .'),
(1935, '7892504023332', 0, 'Ts.3900 / trw', 1, '30.00', '150.00', 4, 0, './imgs/1-45.jpg', '2021-06-25 12:05:31', 7, 56, 'Gol / parati / saveiro G1 g2 g3 g4 lado direito femea '),
(1936, '7890903026756', 0, 'N97001 / nakata', 1, '42.00', '150.00', 11, 0, './imgs/1-46.jpg', '2021-06-25 12:09:44', 4, 56, 'Gol / voyage / fox / a3 / golf / bora / up / crossfox lado direito'),
(1937, '7890903026749', 0, 'N97000 / nakata', 1, '42.00', '150.00', 10, 0, './imgs/535225.png', '2021-06-25 12:16:00', 4, 56, 'Gol / voyage / fox / a3 / golf / bora / up / crossfox lado esquerdo'),
(1938, '7892504044559', 0, 'Ts.4301 / trw', 1, '48.00', '150.00', 1, 0, './imgs/1-66.jpg', '2021-06-25 12:17:32', 7, 56, 'Gol / voyage / fox / a3 / golf / bora / up / crossfox lado esquerdo'),
(1939, '7899013332016', 0, '680097 / viemar ', 1, '35.00', '150.00', 5, 0, './imgs/1-24.jpg', '2021-06-25 12:23:10', 7, 57, 'golf / A3 / BORA / JETTA / NEW BEETLE '),
(1940, '7899013302064', 0, '680265 / viemar', 1, '26.00', '150.00', 7, 0, './imgs/1-25.jpg', '2021-06-25 12:32:59', 7, 57, 'GOL G5 08 / FOX 03 /  POLO 02-06  / SAVEIRO G5 / CROSSFOX 05 /  VOYAGE 08'),
(1941, '7891342013345', 0, 'PEL722 / TECFIL', 1, '12.00', '36.40', 1, 0, './imgs/1-75.jpg', '2021-06-25 18:50:33', 7, 58, 'HYUNDAI AZERA 2012-2020 / HYUNDAI SANTA FÉ 2010 /  2020 / KIA CADENZA 2011/2016 / KIA SORENTO 2011-2020'),
(1942, '7798186476940', 0, 'WO121 / WEGA', 1, '12.00', '36.00', 33, 0, './imgs/1-81.jpg', '2021-06-25 19:30:07', 4, 58, 'FIAT ARGO 2017 -  2020'),
(1943, '7798186474755', 0, 'JFC207/3 / WEGA', 1, '35.00', '87.50', 3, 0, './imgs/1-86.jpg', '2021-09-20 20:43:47', 4, 131, 'HILUX 2.0 TURBO DIESEL refil'),
(1944, '7798001694528', 0, 'JFC215 / WEGA', 1, '29.00', '72.50', 5, 0, './imgs/1-87.jpg', '2021-06-29 11:45:08', 7, 58, 'TOYTA HILUX / DIESEL\r\nL200 TRITON '),
(1945, '7890903031330', 0, 'N97006 / nakata', 1, '53.00', '150.00', 6, 1, './imgs/2021-06-29_08_59_30.jpg', '2021-06-29 11:59:30', 4, 57, 'Saveiro 08 15 / gol / voyage rosca grossa '),
(1946, '7890903078588', 0, 'N91001 / nakata', 1, '40.00', '150.00', 14, 1, './imgs/2021-06-29_09_11_52.jpg', '2021-06-29 12:11:52', 4, 57, 'Fox 04-06 / polo 04-08'),
(1947, '7890903027692', 0, 'N96018 / nakata', 1, '50.00', '140.00', 5, 0, './imgs/2021-06-29_09_42_52.jpg', '2021-06-29 12:36:29', 7, 56, 'Linea / punto lado direito'),
(1948, '7890903027685', 0, 'N96017 / nakata', 1, '50.00', '140.00', 4, 1, './imgs/2021-06-29_09_40_59.jpg', '2021-06-29 12:40:59', 4, 56, 'Linea / punto lado esquerdo'),
(1949, '7897499917772', 0, 'N6016 / nakata', 1, '42.00', '80.00', 12, 0, './imgs/2021-06-29_09_46_04.jpg', '2021-06-29 12:46:04', 7, 56, 'Palio fire / siena fire / uno vivace way FIRE lado direito'),
(1950, '7897499917789', 0, 'N6017 / nakata', 1, '42.00', '80.00', 9, 1, './imgs/2021-06-29_09_48_04.jpg', '2021-06-29 12:48:04', 4, 56, 'PALIO FIRE / SIENA FIRE / UNO VIVACE WAY FIRE LADO esquerdo'),
(1951, '7890903100982', 0, 'N96053 / nakata', 1, '54.00', '180.00', 3, 1, './imgs/2021-06-29_09_50_15.jpg', '2021-06-29 12:50:15', 4, 56, 'Argo / cronos lado direito'),
(1952, '7890903100975', 0, 'N96054 / nakata', 1, '54.00', '180.00', 3, 1, './imgs/2021-06-29_09_51_49.jpg', '2021-06-29 12:51:49', 4, 56, 'Argo / cronos lado esquerdo'),
(1953, '7890903052687', 0, 'N96038 / nakata ', 1, '30.00', '140.00', 1, 1, './imgs/2021-06-29_10_00_26.jpg', '2021-06-29 13:00:26', 4, 56, 'Palio siena strada caixa de direção jtekt lado direito'),
(1954, '7890903046518', 0, 'N96034 / nakata', 1, '30.00', '140.00', 1, 1, './imgs/2021-06-29_10_02_13.jpg', '2021-06-29 13:02:13', 4, 56, 'Doblo adventure '),
(1955, '7897499915402', 0, 'N6014 / nakata', 1, '30.00', '120.00', 1, 1, './imgs/2021-06-29_10_03_46.jpg', '2021-06-29 13:03:46', 4, 56, 'Fiorino / prêmio / uno'),
(1956, '7892504012725', 0, 'Ts.3749 / trw', 1, '30.00', '120.00', 3, 1, './imgs/2021-06-29_10_06_36.jpg', '2021-06-29 13:06:36', 4, 56, 'Uno / Fiorino / 147 '),
(1957, '7899013309346', 0, '335018 / viemar', 1, '34.00', '140.00', 3, 1, './imgs/2021-06-29_10_09_14.jpg', '2021-06-29 13:09:14', 4, 56, 'Uno MILLE antigo quadrado '),
(1958, '7899013318553', 0, '335433 / viemar', 1, '43.00', '150.00', 9, 1, './imgs/2021-06-29_10_15_30.jpg', '2021-06-29 13:15:30', 4, 56, 'Palio / strada / uno rosca GROSSA lado direito'),
(1964, '7899013319925', 0, '680496 / viemar', 1, '47.00', '150.00', 7, 1, './imgs/2021-06-30_09_21_53.jpg', '2021-06-30 12:21:53', 4, 57, 'Duster 2011 '),
(1965, '7899013310342', 0, '680315 / viemar', 1, '34.00', '150.00', -1, 1, './imgs/2021-06-30_09_28_51.jpg', '2021-06-30 12:28:51', 4, 57, 'logan 2007 -2012 / sandero 2007 -2012 '),
(1966, '7899013332191', 0, '680115 / viemar', 1, '35.00', '150.00', 10, 1, './imgs/2021-06-30_09_30_32.jpg', '2021-06-30 12:30:32', 4, 57, 'Clio '),
(1967, '7898474512029', 0, 'VC-232 / VALCLEI', 1, '12.00', '33.80', 13, 0, './imgs/1-110.jpg', '2021-06-30 12:35:48', 7, 88, 'PALIO ELX / SIENA FIRE '),
(1968, '7899013332191', 0, '680665 / viemar', 1, '41.00', '150.00', 3, 1, './imgs/2021-06-30_09_35_57.jpg', '2021-06-30 12:35:57', 4, 57, 'Kwid'),
(1969, '7898677150943', 0, '3409-0 / ADB AUTOBIKE', 1, '15.00', '60.00', 1, 0, './imgs/1-111.jpg', '2021-06-30 12:41:59', 7, 88, 'VW VOYAGE / SPACEFOX  / FOX / GOL / MOTOR AT  '),
(1970, '7899013320389', 0, '680495 / viemar', 1, '44.00', '180.00', 2, 1, './imgs/2021-06-30_09_49_43.jpg', '2021-06-30 12:49:43', 4, 57, 'Fluencer '),
(1971, '7898298064476', 0, '01622/ MR&F', 1, '15.00', '60.00', 6, 0, './imgs/1-112.jpg', '2021-06-30 12:50:23', 7, 88, 'CORSA / MONTANA'),
(1972, '7899013323960', 0, '335422 /viemar', 1, '66.00', '180.00', 1, 1, './imgs/2021-06-30_09_52_12.jpg', '2021-06-30 12:52:12', 4, 56, 'Fluence lado direito'),
(1973, '7899013323281', 0, '335421 / viemar', 1, '66.00', '180.00', 1, 1, './imgs/2021-06-30_09_53_29.jpg', '2021-06-30 12:53:29', 4, 56, 'FLUENCE lado esquerdo'),
(1974, '7304700003754', 0, 'MG 375 / MG MANGUEIRAS', 1, '17.00', '60.00', 4, 0, './imgs/1-113.jpg', '2021-06-30 12:58:58', 7, 88, 'GM ONIX 2013 / PRISMA '),
(1975, '7899013322154', 0, '335424 / viemar', 1, '56.00', '160.00', 6, 1, './imgs/2021-06-30_10_01_03.jpg', '2021-06-30 13:01:03', 4, 56, 'Duster lado esquerdo'),
(1976, '7898298062670', 0, '01528 / MR&F', 1, '12.00', '36.00', 2, 0, './imgs/1-114.jpg', '2021-06-30 13:03:04', 7, 88, 'GM CORSA COM AR QUENTE'),
(1977, '3322937975716', 0, 'Jte1195 / trw', 1, '70.00', '180.00', 2, 1, './imgs/2021-06-30_10_04_43.jpg', '2021-06-30 13:04:43', 4, 56, 'Duster lado direito'),
(1978, '7890903054087', 0, 'N99200 / nakata', 1, '92.00', '180.00', 3, 1, './imgs/2021-06-30_10_06_28.jpg', '2021-06-30 13:06:28', 4, 56, 'Duster lado direito'),
(1979, '7898298065473', 0, '01631 /  MR&F', 1, '10.00', '65.00', 7, 0, './imgs/1-115.jpg', '2021-06-30 13:08:14', 7, 88, 'GM CORSDA SEDAN / MERIVA  / MONTANA 1.0/1.4 FLEXGAS'),
(1980, '7908162301160', 0, 'MG 123 / MG MANGUEIRAS', 1, '15.00', '60.00', 4, 0, './imgs/1-116.jpg', '2021-06-30 13:22:01', 7, 88, 'CELTA / PRISMA 09 / 1.0 / 1.4\r\n'),
(1981, '7898436088456', 0, '7907 / VP ', 1, '18.00', '40.00', 13, 0, './imgs/1-118.jpg', '2021-06-30 13:32:01', 4, 89, 'FIAT PALIO / STILO /DOBLO / STRADA /  CORSA / MERIVA / MONTANA / FLEX 2006'),
(1982, '7899013317204', 0, '335323 / viemar', 1, '59.00', '180.00', 1, 1, './imgs/2021-06-30_10_39_57.jpg', '2021-06-30 13:39:57', 4, 56, 'Sandero / logan lado esquerdo'),
(1983, '7899013317211', 0, '335324 / viemar ', 1, '59.00', '150.00', 5, 1, './imgs/2021-06-30_10_42_36.jpg', '2021-06-30 13:42:36', 4, 56, 'Sandero / logan lado direito'),
(1984, '7899013300336', 0, '335091 / viemar', 1, '44.00', '150.00', 6, 1, './imgs/2021-06-30_10_44_49.jpg', '2021-06-30 13:44:49', 4, 56, 'Clio lado direito'),
(1985, '7899013300343', 0, '335090 / viemar', 1, '44.00', '150.00', 3, 1, './imgs/2021-06-30_10_48_06.jpg', '2021-06-30 13:48:06', 4, 56, 'Clio lado esquerdo'),
(1986, '7899013300176', 0, '335074 / viemar', 1, '29.00', '75.00', 12, 1, './imgs/2021-06-30_10_54_27.jpg', '2021-06-30 13:54:27', 4, 56, 'Corsa / celta '),
(1987, '7899013319444', 0, '335420 / viemar', 1, '47.00', '150.00', 7, 1, './imgs/2021-06-30_10_56_23.jpg', '2021-06-30 13:56:23', 4, 56, 'Onix / cobalt / spin / prisma novo'),
(1988, '7899013300435', 0, '335064 / viemar', 1, '38.00', '150.00', 5, 1, './imgs/2021-06-30_10_59_33.jpg', '2021-06-30 13:59:34', 4, 56, 'Montana antiga / corsao'),
(1992, '7890903049915', 0, 'N93046 / nakata', 1, '70.00', '200.00', 6, 1, './imgs/2021-06-30_11_02_04.jpg', '2021-06-30 14:02:04', 4, 56, 'S10 nova com abs '),
(1993, '7890903092805', 0, 'N93079 / nakata', 1, '53.00', '180.00', 3, 1, './imgs/2021-06-30_11_08_30.jpg', '2021-06-30 14:08:30', 4, 56, 'Onix / spin / cobalt / prisma novo lado esquerdo caixa eletrica'),
(1994, '7890903092799', 0, 'N93078 / nakata', 1, '53.00', '180.00', 3, 1, './imgs/2021-06-30_11_10_13.jpg', '2021-06-30 14:10:13', 4, 56, 'Onix / spin / cobalt / prisma novo lado direito caixa eletrica'),
(1995, '7899013331712', 0, '680067 / viemar', 1, '29.00', '140.00', 5, 1, './imgs/2021-06-30_11_12_40.jpg', '2021-06-30 14:12:40', 4, 57, 'Corsa / celta antigo femea '),
(1996, '7899013323991', 0, '680647 / viemar', 1, '36.00', '140.00', 10, 1, './imgs/2021-06-30_11_14_24.jpg', '2021-06-30 14:14:24', 4, 57, 'Onix / cobalt / prisma novo '),
(1997, '7899013331743', 0, '680070 / viemar', 1, '28.00', '70.00', 7, 1, './imgs/2021-06-30_11_15_50.jpg', '2021-09-25 14:55:37', 4, 57, 'Corsa CLASSIC / celta direcao hidraulica'),
(1998, '7899013319345', 0, '680517 / viemar', 1, '43.00', '180.00', 2, 1, './imgs/2021-06-30_11_17_40.jpg', '2021-06-30 14:17:40', 4, 57, 'S10 nova / trailblazer');
INSERT INTO `produtos` (`id`, `barra`, `codigo`, `nome`, `qtd`, `valor_compra`, `valor_venda`, `estoque`, `status`, `foto`, `data`, `usuarios_id`, `categorias_id`, `aplicacao`) VALUES
(1999, '7897483471075', 0, 'Jarb0099 / trw', 1, '65.00', '180.00', 4, 1, './imgs/2021-06-30_11_19_47.jpg', '2021-06-30 14:19:47', 4, 57, 'S10 nova / trailblazer '),
(2000, '7899013317495', 0, '680487 / viemar', 1, '35.00', '150.00', 3, 1, './imgs/2021-06-30_11_22_05.jpg', '2021-06-30 14:22:05', 4, 57, 'Montana 2011'),
(2001, '7899013373651', 0, '680178 / viemar', 1, '35.00', '150.00', 5, 1, './imgs/2021-06-30_11_24_05.jpg', '2021-06-30 14:24:05', 4, 57, 'Corsa / meriva / montana / corsao hatch'),
(2002, '7899013314845', 0, '680365 / viemar', 1, '35.00', '150.00', 3, 1, './imgs/2021-06-30_11_26_15.jpg', '2021-06-30 14:26:15', 4, 57, 'Agile 09-12'),
(2003, '7899013373170', 0, '680177 / viemar', 1, '35.00', '150.00', 2, 1, './imgs/2021-06-30_11_28_33.jpg', '2021-06-30 14:28:33', 4, 57, 'Corsao / meriva chapoletona '),
(2004, '7890903078700', 0, 'N93004 / nakata', 1, '46.00', '150.00', 4, 1, './imgs/2021-06-30_11_32_09.jpg', '2021-06-30 14:32:09', 4, 57, 'VECTRA 06-12 / ASTRA 98-06 / zafira '),
(2005, '7899013318959', 0, '680494 / viemar', 1, '41.00', '150.00', 10, 1, './imgs/2021-06-30_11_33_56.jpg', '2021-06-30 14:33:56', 4, 57, 'Onix / spin / cobalt / prisma novo grande '),
(2006, '7898134044587', 0, '13.501 / FLORIO', 1, '43.32', '80.00', 4, 0, './imgs/1-120.jpg', '2021-06-30 17:16:41', 7, 90, 'FIAT PUNTO 1.4'),
(2007, '7898326909090', 0, 'G-1301 / GONEL', 1, '19.77', '67.00', 3, 0, './imgs/1-121.jpg', '2021-06-30 17:23:28', 7, 90, 'FIAT UNO 1993 / 2013'),
(2008, '7898326909021', 0, 'G-1307 /  GONEL', 1, '13.00', '82.00', 4, 0, './imgs/1-122.jpg', '2021-06-30 17:31:48', 7, 90, 'PALIO / SIENA /STRADA  / IDEIA SISTEMA VALEU'),
(2009, '7898326904743', 0, 'G-1324 / GONEL', 1, '12.00', '80.00', 7, 0, './imgs/1-123.jpg', '2021-06-30 17:38:05', 7, 90, 'NOVO PALIO MOTOR ETORQ  / GRAND SIENA  / '),
(2010, '7898326904347', 0, 'G-1322 / GONEL', 1, '31.83', '80.00', 2, 0, './imgs/1-124.jpg', '2021-06-30 17:49:43', 7, 90, 'NOVA FIORINO / NOVO UNO / GRAND SIENA '),
(2011, '7898326909441', 0, 'G-1306 / GONEL', 1, '40.00', '80.00', 6, 0, './imgs/1-125.jpg', '2021-06-30 17:55:41', 4, 90, 'IDEIA / SIENA / STRADA / PALIO SISTEMA BEHR'),
(2012, '7898134045898', 0, '14.551 / FLORIO', 1, '12.00', '100.00', 5, 0, './imgs/1-126.jpg', '2021-06-30 18:01:33', 7, 90, 'COBALT / ONX / SPIN / NOVO PRISMA '),
(2013, '7898326904361', 0, 'G-1254 / GONEL', 1, '45.00', '90.00', 6, 0, './imgs/1-127.jpg', '2021-06-30 18:05:53', 7, 90, 'ONIX 1.4 / SPIN / NOVO PRISMA  / COBALT FLEX'),
(2014, '7898326903234', 0, 'G-1244 /  GONEL', 1, '51.00', '120.00', 4, 0, './imgs/1-128.jpg', '2021-06-30 18:09:09', 7, 90, 'CORSA / MONTANA'),
(2015, '7898326903012', 0, 'G-1235 / GONEL ', 1, '12.00', '60.00', 2, 0, './imgs/1-130.jpg', '2021-06-30 18:12:50', 7, 90, 'CORSA / MONTANA'),
(2016, '7898326904316', 0, 'G-1252 / GONEL ', 1, '12.00', '80.00', 4, 0, './imgs/1-131.jpg', '2021-06-30 18:16:21', 7, 90, 'GM CELTA / PRISMA  2007 '),
(2017, '7898326904323', 0, 'G-1253 / GONEL', 1, '12.00', '83.00', 1, 0, './imgs/1-132.jpg', '2021-06-30 18:19:14', 7, 90, 'CELTA / PRISMA / AGILE'),
(2018, '7898326903982', 0, 'G-1251 / GONEL', 1, '48.24', '136.00', 3, 0, './imgs/1-133.jpg', '2021-06-30 18:21:44', 4, 90, 'CORSA CLASSIC 09 / 03 BICOS '),
(2019, '7898134016215', 0, '15.555 / FLORIO', 1, '12.00', '80.00', 1, 0, './imgs/1-134.jpg', '2021-06-30 18:25:28', 7, 90, 'CITROEEN C3 / AIRCROSS / PICASSO / PEUGEOUT 208'),
(2020, '7898326900783', 0, 'G-1114/GONEL', 1, '12.00', '70.00', 4, 0, './imgs/1-135.jpg', '2021-06-30 18:28:17', 7, 90, 'ECOESPORT / FIESTA 2003 / DOIS BICOS '),
(2021, '7898326909397', 0, 'G-1107/ GONEL', 1, '10.00', '63.00', 8, 0, './imgs/1-136.jpg', '2021-06-30 18:32:46', 7, 90, 'FORD KA 1997 / 2007 MOTOR ROCAM '),
(2022, '24579936', 0, '24579936 / GM', 1, '16.00', '76.00', 1, 0, './imgs/1-137.jpg', '2021-07-01 12:23:17', 4, 89, 'GM ONIX / PRISMA 1.0 / 1.4 8V 2013> \r\nGM SPIN 1.8 2017>'),
(2023, '110600968 ', 0, '110600968 / RENAULT GROUP', 1, '60.00', '210.00', 2, 0, './imgs/1-139.jpg', '2021-07-01 12:30:40', 7, 91, 'Renault Sandero 1.0 12v 2014 em diante'),
(2024, '7892294647909', 0, '7469 / SACHS', 1, '445.00', '905.00', 2, 0, './imgs/1-140.jpg', '2021-07-01 12:38:55', 4, 70, 'Peugeot 206 Sw 1.4 8v Gasolina - 2004 À 2005'),
(2025, '7898276872475', 0, '228282/ valeo', 1, '130.00', '417.00', 3, 0, './imgs/1-141.jpg', '2021-07-01 14:15:32', 7, 70, 'Ford Courier 1.3 1.4 1.6 97'),
(2026, '7898272280113', 0, '228011/valeo', 1, '377.00', '780.00', 2, 0, './imgs/1-142.jpg', '2021-07-01 14:22:06', 4, 70, 'CITROEN C3 1.5,1.6 12>\r\nCITROEN XSARA 1.6 16V 01>\r\nPEUGEOT 206 1.4 8V 05>\r\nPEUGEOT 206 1.6 16V 01>\r\nPEUGEOT 207 1.4,1.6 16V 07>\r\nPEUGEOT 208 1.5,1.6 13>\r\nPEUGEOT HOGGAR 1.4 8V,1.6 16V 10>\r\nPEUGEOT PARTNER 1.6 8V/16V 00/06'),
(2027, '4005108982872', 0, '62031000900/ LUK REPSET', 1, '80.00', '370.00', 2, 0, './imgs/1-143.jpg', '2021-07-01 14:35:56', 7, 70, 'Ford Courier 1.3L 8V / 1.4L 16V Zetec Rocam SE / 1.6L Zetec Rocam após 07/1997'),
(2028, '4005108970572', 0, '6223150330/lukrepset', 1, '444.00', '1110.00', 2, 0, './imgs/535225-2.png', '2021-09-23 23:16:02', 4, 70, 'Focus 2009 / 2013 - 2.0 16V MANUAL\r\n'),
(2029, '7899013309575', 0, '680288 / viemar', 1, '35.00', '150.00', 4, 1, './imgs/2021-07-01_14_29_34.jpg', '2021-07-01 17:29:34', 4, 57, 'New Civic 06-11 direção hidráulica'),
(2030, '7899013300695', 0, '680211 / viemar', 1, '35.00', '150.00', 1, 1, './imgs/2021-07-01_14_33_59.jpg', '2021-07-01 17:33:59', 4, 57, 'Honda FIT 2003-2008'),
(2031, '7899013310137', 0, '680313 / viemar', 1, '35.00', '150.00', 2, 1, './imgs/2021-07-01_14_39_04.jpg', '2021-07-01 17:39:04', 4, 57, 'Honda fit 2003-2008 lado esquerdo'),
(2032, '7899013320846', 0, '680537 / viemar', 1, '42.00', '150.00', 1, 1, './imgs/2021-07-01_14_41_12.jpg', '2021-07-01 17:41:12', 4, 57, 'New CIVIC 2012 '),
(2033, '7899013314920', 0, '680374 / viemar', 1, '44.00', '150.00', 1, 1, './imgs/2021-07-01_14_43_47.jpg', '2021-07-01 17:43:47', 4, 57, 'Honda fit 2008-2013 / honda city 2009-2013'),
(2034, '7899013325452', 0, '335679 / viemar ', 1, '68.00', '150.00', 2, 1, './imgs/2021-07-01_14_51_40.jpg', '2021-07-01 17:51:40', 4, 56, 'Honda city / honda fit 2015 lado esquerdo'),
(2035, '7899013325445', 0, '335680 / viemar', 1, '68.00', '150.00', 2, 1, './imgs/2021-07-01_14_54_09.jpg', '2021-07-01 17:54:09', 4, 57, 'Honda city / honda fit 2015 lado direito'),
(2036, '7899013313008', 0, '335232 / viemar', 1, '40.00', '150.00', 2, 1, './imgs/2021-07-01_14_57_12.jpg', '2021-07-01 17:57:12', 4, 56, 'Honda fit 2003-2008 lado esquerdo'),
(2037, '7899013313015', 0, '335233 / viemar', 1, '35.00', '150.00', 2, 1, './imgs/2021-07-01_14_58_34.jpg', '2021-07-01 17:58:34', 4, 56, 'Honda fit 2003-2008 lado direito'),
(2038, '7899013324110', 0, '335500 / viemar', 1, '57.00', '150.00', 1, 1, './imgs/2021-07-01_15_04_22.jpg', '2021-07-01 18:04:22', 4, 56, 'CIVIC 2012-2016 lado direito'),
(2039, '4005108763549', 0, '6203127000/Luk REpset ', 1, '120.00', '339.00', 3, 0, './imgs/535225-3.png', '2021-07-01 18:31:04', 7, 70, 'Saveiro 1.6'),
(2040, '7899013318836', 0, '335435 / viemar', 1, '40.00', '150.00', 3, 1, './imgs/2021-07-01_15_41_25.jpg', '2021-07-01 18:41:25', 4, 56, 'Accord 2007-2012 lado esquerdo'),
(2041, '4014870188504', 0, '6223346000/Luk REpset ', 1, '89.00', '339.00', 1, 0, './imgs/1-145.jpg', '2021-07-01 18:41:55', 7, 70, 'VW Fox / Crossfox / Spacefox '),
(2042, '7890903027715', 0, 'N99096 / nakata', 1, '40.00', '150.00', 1, 1, './imgs/2021-07-01_15_44_03.jpg', '2021-07-01 18:44:04', 4, 56, 'New civuc 2006-2012 lado direito'),
(2043, '7899013320914', 0, '680539 / viemar', 1, '35.00', '150.00', 2, 1, './imgs/2021-07-01_15_51_49.jpg', '2021-07-01 18:51:49', 4, 57, 'Hb20 2012-2013'),
(2044, '4013872904501', 0, '3000001340 / Sachs ', 1, '67.00', '339.00', 1, 0, './imgs/1-146.jpg', '2021-07-01 18:52:38', 7, 70, 'Toyota Etios'),
(2045, '24586361 ', 0, '24586361/GM', 1, '74.00', '450.00', 1, 1, './imgs/2021-07-01_16_04_19.jpg', '2021-07-01 18:58:10', 4, 70, 'Cobalt / spin / corsao / montana 1.8 8v'),
(2046, '7899013309674', 0, '680297 / viemar', 1, '64.00', '150.00', 2, 1, './imgs/2021-07-01_15_59_53.jpg', '2021-07-01 18:59:53', 4, 57, 'Tucson '),
(2047, '7890903050775', 0, 'N99162 / nakata', 1, '50.00', '150.00', 4, 1, './imgs/2021-07-01_16_09_00.jpg', '2021-07-01 19:09:00', 4, 56, 'Hb20 12-13 lado direito'),
(2048, '7898272283220', 0, '228322/valeo', 1, '89.00', '339.00', 2, 0, './imgs/1-147.jpg', '2021-07-01 19:09:41', 7, 70, 'Montana  1.4 '),
(2049, '7899013313602', 0, '335330 / viemar', 1, '74.00', '180.00', 1, 1, './imgs/2021-07-01_16_11_41.jpg', '2021-07-01 19:11:41', 4, 56, 'Tucson 05-10 / SPORTAGE 04- lado direito'),
(2050, '7899013300688', 0, '680212 / viemar', 1, '23.00', '150.00', 6, 1, './imgs/2021-07-01_16_14_14.jpg', '2021-07-01 19:14:15', 4, 57, 'C3 02-06 ANTIGO'),
(2051, '7899013321027', 0, '680543 / viemar', 1, '38.00', '159.00', 6, 1, './imgs/2021-07-01_16_17_45.jpg', '2021-07-01 19:17:45', 4, 57, 'C3 NOVO / PEUGEOT 208 '),
(2052, '7899013309841', 0, '680305 / viemar', 1, '44.00', '150.00', 5, 1, './imgs/2021-07-01_16_20_04.jpg', '2021-07-01 19:20:04', 4, 57, 'Peugeout 307 01-11 / c4 04-12'),
(2053, '4005108982940', 0, '6203236330/Luk REpset ', 1, '363.00', '700.00', 5, 0, './imgs/1-148.jpg', '2021-07-01 19:24:08', 4, 70, 'Montana / Corsa 1.4 '),
(2054, '7890903078939', 0, 'N99019 / Nakata', 1, '41.00', '150.00', 7, 1, './imgs/2021-07-01_16_24_30.jpg', '2021-07-01 19:24:30', 4, 57, 'Peugeout 206-207'),
(2055, '7899013300282', 0, '335076 / viemar', 1, '38.00', '150.00', 3, 1, './imgs/2021-07-01_16_26_57.jpg', '2021-07-01 19:26:57', 4, 56, 'Peugeout 307 '),
(2056, '7434203370890', 0, '335463 / viemar', 1, '62.00', '150.00', 3, 1, './imgs/2021-07-01_16_33_21.jpg', '2021-07-01 19:33:21', 4, 56, 'Peugeout 208 / c3 / ds3 lado direito'),
(2057, '7899013322130', 0, '335462 / viemar', 1, '62.00', '150.00', 3, 1, './imgs/2021-07-01_16_35_58.jpg', '2021-07-01 19:35:58', 4, 56, 'PEUGEOUT 208 / C3 / DS3 LADO esquerdo'),
(2058, '7897483407999', 0, 'TS4475 / trw', 1, '58.00', '150.00', 1, 0, './imgs/2021-07-01_16_51_46.jpg', '2021-07-01 19:42:49', 7, 56, 'C3 2002-2013 lado esquerdo'),
(2059, '302050901R1', 0, '302050901R / REnault ', 1, '340.00', '850.00', 2, 0, './imgs/1-149.jpg', '2021-09-30 16:17:40', 4, 70, 'Duster 1.6 2.0 16v / oroch 1.6 2.0 16v / captur 1.6 16v '),
(2060, '7897483407968', 0, 'TS4474 / trw', 1, '58.00', '158.00', 5, 0, './imgs/2021-07-01_16_53_05.jpg', '2021-07-01 19:48:26', 7, 56, 'C3 2002-2013 lado direito'),
(2061, '7899013312971', 0, '335267 / viemar', 1, '54.00', '150.00', 1, 1, './imgs/2021-07-01_16_56_52.jpg', '2021-07-01 19:56:52', 4, 56, 'C3 02-03 lado esquerdo'),
(2062, '7899013300305', 0, '335112 / viemar', 1, '38.00', '150.00', 4, 1, './imgs/2021-07-01_16_59_04.jpg', '2021-07-01 19:59:04', 4, 56, 'Peugeout 206-207 lado direito'),
(2063, '7898276872017', 0, '227959 / VALEO', 1, '0.00', '0.00', 3, 0, './imgs/1-150.jpg', '2021-09-18 17:24:28', 4, 70, 'PEUGEOT 206 2000 | 1.0 8V (CÂMBIO JBI) | 1.0 16V (CÂMBIO JBI) - PEUGEOT 206 2001 | 1.0 8V (CÂMBIO JBI) | 1.0 16V (CÂMBIO JBI) - PEUGEOT 206 2002'),
(2064, '7899013300299', 0, '335111 / viemar', 1, '38.00', '150.00', 4, 1, './imgs/2021-07-01_17_00_38.jpg', '2021-07-01 20:00:38', 4, 56, 'Peugeout 206-207 LADO esquerdo'),
(2065, '7890903051901', 0, 'NBJ5004E/nakata ', 1, '119.00', '300.00', 2, 0, './imgs/1-151.jpg', '2021-07-05 12:07:51', 7, 92, 'Citroeen C3 '),
(2066, '7890903051901', 0, 'NBJ5004E / NAKATA ', 1, '135.63', '300.00', 1, 0, './imgs/1-152.jpg', '2021-07-05 12:14:52', 4, 64, 'CITROEN C3 / peugeot 208 lado esquerdo'),
(2067, '7899152534616', 0, 'BDJ0841 / Perfect', 1, '119.00', '319.85', 1, 0, './imgs/535225-4.png', '2021-07-05 12:24:44', 4, 64, 'Bandeja Inferior | Lado Esquerdo / pegeout 307 / c4'),
(2068, '7890903051871', 0, 'NBJ5002DP/nakata', 1, '135.63', '320.00', 3, 0, './imgs/1-154.jpg', '2021-07-05 12:37:27', 7, 64, 'Pegeou 206 / 207'),
(2069, '7890903051864', 0, 'NBJ5002EP/NAKATA ', 1, '135.63', '320.00', 3, 0, './imgs/1-153.jpg', '2021-07-05 12:39:27', 7, 64, 'Pegeout 206 / 207'),
(2070, '', 0, 'NBJ1011D/ NAKATA ', 1, '0.00', '238.85', 2, 0, './imgs/2021-09-23_15_31_03.jpg', '2021-09-23 21:31:09', 4, 64, 'Gol G5 / SAVEIRO G5 / VOYAGE 08  Dianteiro com buchas sem pivo '),
(2071, '7891579304001', 0, 'Bjc 01045m / cofap', 1, '280.00', '325.25', 1, 0, './imgs/1-156.jpg', '2021-07-05 13:06:18', 7, 64, 'GOL/VOYAGE/SAVEIRO G5 2008/ - G6 2012/ - ESQUERDA'),
(2072, '7890903051147', 0, 'NJB1011E/NAKATA ', 1, '88.35', '88.45', 2, 0, './imgs/1-157.jpg', '2021-07-05 13:15:46', 7, 64, 'Gol g5 /Fox '),
(2073, '7890903051024', 0, 'NBJ1003/ NAKATA ', 1, '46.05', '200.00', 0, 1, './imgs/2021-07-05_10_23_33.jpg', '2021-07-05 13:23:33', 4, 0, 'Gol / PARATI / SAVEIRO /Fu4is 12 mm  Dianteiro  com buchas sem pivô ld /le'),
(2074, '7890903051024', 0, 'NBJ1003/ NAKATA ', 1, '46.05', '200.00', 4, 0, './imgs/1-162.jpg', '2021-07-05 13:23:44', 7, 64, 'Gol / PARATI / SAVEIRO /Fu4is 12 mm  Dianteiro  com buchas sem pivô ld /le'),
(2075, '7891579308092', 0, 'BJC04118M / COFAP', 1, '108.89', '300.00', 3, 0, './imgs/1-161.jpg', '2021-07-05 13:26:23', 7, 64, 'AGILE 2013 | Todas as versões / CELTA 2014 | Todas as versões /  CORSA 2012 | CLASSIC | PICK-UP / MONTANA 2014 | MODELO AGILE'),
(2076, '7891579304001', 0, 'Bjc01045m / cofap', 1, '208.00', '400.00', 3, 0, './imgs/1-160.jpg', '2021-07-05 13:28:17', 7, 64, 'CROSSFOX 2016 | Todas as versões /  FOX 2014 | Todas as versões / GOL 2016 | G VI / VOYAGE 2016 | G VI'),
(2077, '7890903080802', 0, 'Nbj6003dp / Nakata ', 1, '214.00', '535.00', 3, 0, './imgs/1-159.jpg', '2021-09-23 21:18:05', 4, 64, 'Nissan MARCH / VERSA lado direito'),
(2078, '7890903080819', 0, 'NBJ6003EP/ Nakata ', 1, '214.00', '535.00', 4, 0, './imgs/1-158.jpg', '2021-09-23 21:17:32', 4, 64, 'Nissan MARCH / VERSA lado esquerdo'),
(2079, '545013512r1', 0, '545013512R/ RENAULT group ', 1, '125.00', '300.00', 1, 0, './imgs/1-166.jpg', '2021-07-05 13:54:22', 4, 64, 'Bandeja Esquerda Renault Kwid 2018 A'),
(2080, '555013187R1', 0, '555013187R/ RENAULT group ', 1, '125.00', '300.00', 1, 0, './imgs/1-165.jpg', '2021-07-05 13:56:16', 4, 64, 'Suspensão LD Kwid 2017 Em Diante'),
(2082, '7890903050973', 0, 'NBJ6009B/ Nakata ', 1, '163.00', '300.00', 2, 0, './imgs/1-164.jpg', '2021-07-05 13:59:22', 7, 64, 'RENAULT DUSTER 2011 | Todas as versões - RENAULT DUSTER 2012 | Todas as versões - RENAULT DUSTER 2013 | Todas as versões - RENAULT DUSTER 201'),
(2084, '545004269R', 0, '545004269R  / RENAULT GROUP ', 1, '119.00', '239.63', 4, 0, './imgs/1-163.jpg', '2021-07-05 14:01:56', 7, 64, 'RENAULT LOGAN / RENAULT SANDERO'),
(2085, '545001064R', 0, '545001064R /  RENAULT GROUP', 1, '168.00', '400.00', 6, 0, './imgs/1-168.jpg', '2021-07-05 14:26:23', 7, 64, 'Logan e Sandero 1.6 ou 1.0\r\nAté 2014'),
(2086, '545011362R1', 0, '545011362R1/ RENAULT group ', 1, '179.00', '420.00', 3, 0, './imgs/1-167.jpg', '2021-07-05 14:28:14', 7, 64, '000'),
(2087, '106274', 0, 'FZ00106274N / GETOFLEX', 1, '88.00', '220.56', 2, 0, './imgs/1-170.jpg', '2021-07-05 17:25:05', 7, 93, 'Aplicação palio 2001 2002'),
(2088, '7897417612918', 0, '51034103 / BFX', 1, '101.00', '263.00', 2, 0, './imgs/1-171.jpg', '2021-07-05 17:32:50', 4, 93, 'Novo Uno  / PALIO 1.0/1.4 2010 Em Diante'),
(2089, 'FZ00106293N', 0, 'FZ00106293N/GETOFLEX', 1, '112.30', '280.00', 1, 0, './imgs/535225-5.png', '2021-07-05 17:42:20', 7, 93, 'FIAT UNO '),
(2090, '7894325102093', 0, 'GTX4426/GETOFLEX', 1, '112.00', '263.00', 2, 0, './imgs/1-172.jpg', '2021-07-05 17:45:26', 7, 93, 'FIAT UNO / PALIO / FIORINO SUPORTE DIANTEIRO / LADO DIREITO'),
(2091, '7897850403627', 0, 'GTX482 / GETOFLEX', 1, '88.00', '212.00', 7, 0, './imgs/1-173.jpg', '2021-07-05 17:58:02', 7, 93, 'FIAT UNO / PALIO / SIENA'),
(2092, 'FZ00106261N', 0, 'FZ00106261N / GETOFLEX ', 1, '80.00', '200.00', 6, 0, './imgs/1-174.jpg', '2021-07-05 18:12:43', 7, 93, 'Motor Fiat Siena Fire 2004 A 2017'),
(2093, '789521122356622', 0, '887799/MOBESANI', 1, '80.00', '180.00', 1, 0, './imgs/1-175.jpg', '2021-07-06 11:59:01', 7, 93, 'Fiat Uno '),
(2094, '778899445566', 0, 'SC0093 / GETOFLEX ', 1, '45.00', '180.00', 2, 0, './imgs/1-177.jpg', '2021-07-06 12:09:28', 7, 93, 'Coxim Câmbio Esquerdo Fiat Palio – Siena – Strada'),
(2095, '7892531643660', 0, '1091 / SAMPEL', 1, '25.00', '112.56', 3, 0, './imgs/535225-6.png', '2021-07-06 12:14:56', 7, 93, ' FIAT NOVO PALIO / NOVO UNO / NOVA FIOTINO'),
(2096, '7898429262726', 0, 'MB 9242 / MOBESANI', 1, '33.00', '125.89', 1, 0, './imgs/1-178.jpg', '2021-07-06 12:18:51', 7, 93, 'FIAT DOBLÒ 2002 | 1.3 | 1.6 - FIAT DOBLÒ 2003 | 1.3 | 1.6 - FIAT DOBLÒ 2004 | 1.3 | 1.6 - FIAT DOBLÒ 2005 | 1.3 | 1.6 - FIAT DOBLÒ 2006 | 1.3 | 1.6'),
(2097, '7899850403078', 0, 'MB 4460 / Mobensani', 1, '33.00', '127.46', 2, 0, './imgs/1-179.jpg', '2021-07-06 12:22:47', 7, 93, 'FIAT IDEA 2011 | 1.6 16V | 1.8 16V | 1.6 16V | 1.8 16V - FIAT IDEA 2012 | 1.6 16V | 1.8 16V | 1.6 16V | 1.8 16V - FIAT IDEA 2013 | 1.6 16V | 1.8 16V'),
(2098, '7892968018127', 0, 'Br15051105445 / MONROE', 1, '33.00', '96.11', 1, 0, './imgs/1-180.jpg', '2021-07-06 12:29:26', 7, 93, 'Lado Direito Peugeot 106 / 205 / 206 '),
(2099, '7899850404518', 0, 'GTX9507 / GETOFLEX', 1, '33.00', '178.22', 1, 0, './imgs/1-181.jpg', '2021-07-06 12:34:10', 7, 93, 'COXIM MOTOR LD JAHU (208 2012 EM DIANTE) (C3 2012 EM DIANTE) (C3 AIRCROSS 2016 EM DIANTE) (C3 PICASSO 2012 EM DIANTE'),
(2100, '7899850404433', 0, 'GTX9578 / GETOFLEX', 1, '55.00', '143.78', 1, 0, './imgs/1-182.jpg', '2021-07-06 13:32:55', 7, 93, 'Calço Coxim Do Câmbio Vw Polo. Confort 1.6 2009 / '),
(2101, '7892968009248', 0, '0582 /  Monroe', 1, '22.00', '58.50', 3, 0, './imgs/1-183.jpg', '2021-07-06 13:41:09', 7, 93, 'Volkswagen:GOL'),
(2102, '1304975556038CA', 0, '1304975556038CA / RH', 1, '44.00', '180.00', 17, 0, './imgs/1-184.jpg', '2021-07-06 13:57:16', 7, 93, 'COXIM DIANTEIRO FORD KA'),
(2103, '7898261417636', 0, 'MB 9168 / Mobensani ', 1, '44.00', '121.72', 1, 0, './imgs/1-185.jpg', '2021-07-06 14:12:38', 7, 93, 'RENAULT 19 1993 | Todas as versões - RENAULT 19 1994 | Todas as versões - RENAULT 19 1995 | Todas as versões - RENAULT 19 1996 | Todas as versõe'),
(2104, '7898429264522', 0, 'MB9085 /  MOBENSANI', 1, '44.00', '137.57', 7, 0, './imgs/535225-7.png', '2021-07-06 14:19:29', 7, 93, 'COXIM MOTOR/CAMBIO - LOGAN 1.0, 1.6 8V 07/..., MEGANE 1.6 8V 07/..., SCENIC 1.6 8V '),
(2105, '93305641 ', 0, '93305641 / GM', 1, '44.00', '115.00', 7, 0, './imgs/1-186.jpg', '2021-07-06 14:24:59', 7, 93, 'CELTA 2001 EM DIANTE\r\nCORSA 1994 EM DIANTE\r\nPRISMA 2006 EM DIANTE\r\nNOVA MONTANA 2011 EM DIANTE\r\nAGILE 2009 EM DIANTE'),
(2106, '103501', 0, '103501/ GETOFLEX', 1, '44.00', '180.00', 6, 0, './imgs/1-187.jpg', '2021-07-06 14:37:28', 7, 93, 'Coxim Dianteiro Motor Corsa 1994/2002  Celta 2001/... Prisma 2006/... Agile 2009/... Nova Montana 2011/'),
(2107, '95405221 ', 0, '95405221 / GM', 1, '55.00', '350.00', 8, 0, './imgs/1-188.jpg', '2021-07-06 14:41:12', 7, 93, 'COBALT ADVANTAGE 1.4 MPFI F.POWER -MANUAL 2014 ate 2014\r\nCOBALT ELITE 1.8 2019 ate 2019\r\nCOBALT ELITE 1.8- MANUAL 2018 ate 2018\r\nCOBALT GRAPHITE 1.8 ECONO.FLEX- MANUAL 2015 ate 2016\r\nCOBALT LS 1.4 FLEXPOWER- MANUAL 2011 ate 2015\r\nCOBALT LT 1.4 FLEXPOWER- MANUAL 2012 ate 2016\r\nCOBALT LT 1.8 ECONO.FLEX- MANUAL 2013 ate 2016\r\nCOBALT LTZ 1.4 FLEXPOWER- MANUAL 2012 ate 2016\r\nCOBALT LTZ 1.8 2019 ate 2019\r\nCOBALT LTZ 1.8 FLEX- MANUAL 2013 ate 2017\r\nCOBALT LTZ 1.8- MANUAL 2018 ate 2018'),
(2108, '7891579380505', 0, 'CXC04123 / COFAP', 1, '35.00', '125.00', 1, 0, './imgs/1-189.jpg', '2021-07-06 14:49:10', 7, 93, 'CORSA / MERIVA / MONTANA '),
(2109, '7898429263877', 0, 'MB1205 / MOBESANI', 1, '130.00', '290.56', 1, 0, './imgs/1-190.jpg', '2021-07-06 14:52:00', 4, 93, 'CHEVROLET CORSA 2002 | Todas as versões - CHEVROLET CORSA 2003 | Todas as versões - CHEVROLET CORSA 2004 | Todas as versões - CHEVROLET CORSA'),
(2110, '78944152389752', 0, '3007 / SABO', 1, '44.00', '169.00', 4, 0, './imgs/1-191.jpg', '2021-07-06 14:57:09', 7, 93, '\r\nCORSA GL 1.6 MPFI / 1.4 EFI 2P E 4P - GASOLINA 1994 ate 2000\r\nCORSA GLS 1.6 MPFI 5P - GASOLINA 1999 ate 2001\r\nCORSA GSI 16V - GASOLINA 1995 ate 1996\r\nCORSA PICK-UP GL/ CHAMP 1.6 MPFI / EFI - GASOLINA 1995 ate 2001\r\nCORSA PICK-UP STD/ RODEIO 1.6 MPFI - GASOLINA 1998 ate 2001\r\nCORSA SED.WIND 1.0/MILLENIUM/CLASSIC VHC - ALCOOL 2000 ate 2001\r\nCORSA SED.WIND 1.0/MILLENIUM/CLASSIC VHC - GASOLINA 1999 ate 2001\r\nCORSA SEDAN GL 1.6 MPFI 4P - GASOLINA 1995 ate 2001\r\nCORSA SEDAN GLS 1.6 16V MPFI 4P - GASOLINA 1997 ate 2001\r\nCORSA SEDAN GLS 1.6 MPFI 4P - GASOLINA 1996 ate 2001\r\nCORSA SEDAN SUPER 1.0 MPFI 16V 4P - GASOLINA 1999 ate 2001\r\nCORSA SEDAN SUPER 1.0 MPFI 4P - GASOLINA 1998 ate 1999\r\nCORSA SEDAN SUPER MILENIUM 1.0 MPFI 16V - GASOLINA 1999 ate 2001\r\nCORSA SEDAN SUPER/ CLASSIC 1.6 MPFI 8V 4 - GASOLINA 2001 ate 2001\r\nCORSA SUPER 1.0 MPFI / 2P E 4P - GASOLINA 1995 ate 1999\r\nCORSA SUPER 1.0 MPFI 16V 3P - GASOLINA 1999 ate 2000\r\nCORSA SUPER 1.0 MPFI 16V 5P - GASOLINA 1998 ate 2001\r\nCORSA SUPER 1.6 MPFI 8V 5P - GASOLINA 2001 ate 2001\r\nCORSA WAGON GL 1.6 MPFI 4P - GASOLINA 1997 ate 1999\r\nCORSA WAGON GLS 1.6 16V MPFI 4P - GASOLINA 1997 ate 2001\r\nCORSA WAGON GLS 1.6 8V 4P - GASOLINA 1997 ate 2001\r\nCORSA WAGON SUPER 1.0 MPFI 16V - GASOLINA 1999 ate 2001\r\nCORSA WAGON SUPER 1.6 MPFI 8V - GASOLINA 2001 ate 2001\r\nCORSA WIND 1.0 MPF/MILLENIUMI/ EFI 4P - ALCOOL 1999 ate 2001\r\nCORSA WIND 1.0 MPF/MILLENIUMI/ EFI 4P - GASOLINA 1996 ate 2001\r\nCORSA WIND 1.0 MPFI / EFI 2P - ALCOOL 2000 ate 2000\r\nCORSA WIND 1.0 MPFI / EFI 2P - GASOLINA 1994 ate 2001\r\nCORSA WIND 1.6 MPFI 2P - GASOLINA 1998 ate 2001\r\nCORSA WIND 1.6 MPFI 4P - GASOLINA 1998 ate 2001\r\nCORSA WIND PIQUET/ CHAMP 1.0 MPFI 2P - GASOLINA 1997 ate 1999\r\nCORSA GL 1.6 MPFI / 1.4 EFI 2P E 4P - GASOLINA 1994 ate 2000\r\nCORSA GLS 1.6 MPFI 5P - GASOLINA 1999 ate 2001\r\nCORSA GSI 16V - GASOLINA 1995 ate 1996\r\nCORSA PICK-UP GL/ CHAMP 1.6 MPFI / EFI - GASOLINA 1995 ate 2001\r\nCORSA PICK-UP STD/ RODEIO 1.6 MPFI - GASOLINA 1998 ate 2001\r\nCORSA SED.WIND 1.0/MILLENIUM/CLASSIC VHC - ALCOOL 2000 ate 2001\r\nCORSA SED.WIND 1.0/MILLENIUM/CLASSIC VHC - GASOLINA 1999 ate 2001\r\nCORSA SEDAN GL 1.6 MPFI 4P - GASOLINA 1995 ate 2001\r\nCORSA SEDAN GLS 1.6 16V MPFI 4P - GASOLINA 1997 ate 2001\r\nCORSA SEDAN GLS 1.6 MPFI 4P - GASOLINA 1996 ate 2001\r\nCORSA SEDAN SUPER 1.0 MPFI 16V 4P - GASOLINA 1999 ate 2001\r\nCORSA SEDAN SUPER 1.0 MPFI 4P - GASOLINA 1998 ate 1999\r\nCORSA SEDAN SUPER MILENIUM 1.0 MPFI 16V - GASOLINA 1999 ate 2001\r\nCORSA SEDAN SUPER/ CLASSIC 1.6 MPFI 8V 4 - GASOLINA 2001 ate 2001\r\nCORSA SUPER 1.0 MPFI / 2P E 4P - GASOLINA 1995 ate 1999\r\nCORSA SUPER 1.0 MPFI 16V 3P - GASOLINA 1999 ate 2000\r\nCORSA SUPER 1.0 MPFI 16V 5P - GASOLINA 1998 ate 2001\r\nCORSA SUPER 1.6 MPFI 8V 5P - GASOLINA 2001 ate 2001\r\nCORSA WAGON GL 1.6 MPFI 4P - GASOLINA 1997 ate 1999\r\nCORSA WAGON GLS 1.6 16V MPFI 4P - GASOLINA 1997 ate 2001\r\nCORSA WAGON GLS 1.6 8V 4P - GASOLINA 1997 ate 2001\r\nCORSA WAGON SUPER 1.0 MPFI 16V - GASOLINA 1999 ate 2001\r\nCORSA WAGON SUPER 1.6 MPFI 8V - GASOLINA 2001 ate 2001\r\nCORSA WIND 1.0 MPF/MILLENIUMI/ EFI 4P - ALCOOL 1999 ate 2001\r\nCORSA WIND 1.0 MPF/MILLENIUMI/ EFI 4P - GASOLINA 1996 ate 2001\r\nCORSA WIND 1.0 MPFI / EFI 2P - ALCOOL 2000 ate 2000\r\nCORSA WIND 1.0 MPFI / EFI 2P - GASOLINA 1994 ate 2001\r\nCORSA WIND 1.6 MPFI 2P - GASOLINA 1998 ate 2001\r\nCORSA WIND 1.6 MPFI 4P - GASOLINA 1998 ate 2001\r\nCORSA WIND PIQUET/ CHAMP 1.0 MPFI 2P - GASOLINA 1997 ate 1999'),
(2111, '7899500932067', 0, 'RB10284 / JAMAICA ', 1, '80.00', '240.00', 8, 0, './imgs/535225-9.png', '2021-07-06 18:00:13', 7, 94, 'PALIO S/ AR QUENTE'),
(2112, '51851014', 0, '51851014 / CAUPLACAS', 1, '20.00', '100.00', 14, 0, './imgs/1-192.jpg', '2021-07-06 19:00:43', 7, 94, 'MANGUEIRA SUPERIOR RADIADOR FIAT UNO EVO 1.4 2012/ 51851014 FIAT\r\nFIAT FIORINO 1.4 2013/\r\nFIAT GRAND SIENA 1.4 2012/\r\nFIAT PALIO NOVO 1.4 2012/\r\nFIAT UNO EVO NOVO 1.4 2012/'),
(2113, '7891252789187', 0, '78918 / sabo ', 1, '10.00', '50.00', 11, 1, './imgs/2021-07-06_16_04_41.jpg', '2021-07-06 19:04:41', 4, 95, 'Uno Mille / 147 / premio antigo traseira'),
(2114, '7302300001804', 0, 'MG 180 / MG  MANUEIRAS', 1, '22.00', '60.00', 5, 0, './imgs/1-194.jpg', '2021-07-06 19:05:04', 4, 94, 'MANGUEIRA RESPIRO TANQUE / CORSA G1 (TANQUE PLÁSTICO) 1999/ CELTA 2001/2009, PRISMA G1 2007/2009'),
(2115, '94749539', 0, '94749439 /  GM ', 1, '89.00', '125.91', 11, 0, './imgs/1-195.jpg', '2021-07-06 19:19:15', 7, 94, 'Mangueira Aquecedor Onix Novo Prisma 1.4 8v 13'),
(2116, '7899013321294', 0, '335509 / viemar', 1, '52.00', '180.00', 3, 1, './imgs/2021-07-06_16_21_25.jpg', '2021-07-06 19:21:25', 4, 56, 'Etios / yaris lado direito'),
(2118, '78998888888888', 0, 'GP30370 / COFAP', 1, '322.90', '650.00', 1, 0, './imgs/1-199.jpg', '2021-07-06 20:34:02', 7, 63, 'C3 2012 LADO DIREITO'),
(2119, '78955656665', 0, 'GP30369 / COFAP', 1, '322.90', '650.00', 1, 0, './imgs/1-198.jpg', '2021-07-06 20:36:20', 7, 63, 'C3  2012 LADO ESQUERDO DT '),
(2121, '7899243235090', 0, 'TC-8139 / ZION', 1, '12.70', '50.00', 14, 0, './imgs/1-201.jpg', '2021-07-07 12:25:11', 7, 94, 'GM CORSA'),
(2122, '7899662131831', 0, 'DYH-GM4050/1 / DAYCO', 1, '12.00', '23.89', 18, 0, './imgs/1-202.jpg', '2021-07-07 12:28:56', 7, 94, 'CORSA / MONTANA'),
(2123, '7899500920375', 0, 'MM8126 / JAMAICA', 1, '12.00', '46.70', 13, 0, './imgs/1-203.jpg', '2021-07-07 12:31:08', 7, 94, 'Mangueira Entrada Aquecedor Celta Prisma '),
(2124, '79807416000', 0, '8582 / CUPLAS', 1, '12.00', '55.00', 16, 0, './imgs/1-204.jpg', '2021-07-07 12:43:41', 7, 94, 'FIAT SIENA '),
(2125, '7899500933092', 0, '8125rb / JAMAICA', 1, '22.00', '115.00', 17, 0, './imgs/1-205.jpg', '2021-07-07 12:45:52', 7, 94, 'GM CELTA / PRISMA '),
(2126, '24579148', 0, '24579148 / GM ', 1, '12.00', '55.00', 11, 0, './imgs/1-206.jpg', '2021-07-07 12:50:30', 7, 94, 'CHEVROLET AGILE 2010 | Todas as versões - CHEVROLET AGILE 2011 | Todas as versões - CHEVROLET AGILE 2012 | Todas as versões - CHEVROLET AGILE 201'),
(2127, '7898261413515', 0, 'Mb443 / mobesani', 1, '20.00', '70.00', 14, 0, './imgs/1-208.jpg', '2021-07-07 17:26:01', 4, 96, 'Uno mille antigo braço OSCILANTE dt'),
(2128, '7893049901789', 0, 'C-9017 / Control', 1, '20.00', '60.00', 4, 0, './imgs/1-207.jpg', '2021-07-07 17:28:19', 7, 94, 'GM celta / MERIVA / Corsa / Montana  /  Prisma  / AGILE '),
(2129, '7894325000080', 0, '1005 / sampel', 1, '20.00', '70.00', 5, 1, './imgs/2021-07-07_14_28_34.jpg', '2021-07-07 17:28:34', 4, 96, 'Uno mille antigo braço oscilante'),
(2130, '7892968010039', 0, 'Br15301100690 / monroe', 1, '20.00', '70.00', 6, 1, './imgs/2021-07-07_14_32_07.jpg', '2021-07-07 17:32:07', 4, 96, 'Uni mille antigo braço oscilante'),
(2131, '7898473384924', 0, '1417888N / BASTOS', 1, '30.00', '59.00', 6, 0, './imgs/1-209.jpg', '2021-07-07 17:37:49', 7, 71, 'Fiat Siena / JEEP rengate / Palio / PUNTO '),
(2132, '7898300981753', 0, '10309 / kit&cia', 1, '4.00', '25.00', 13, 1, './imgs/2021-07-07_14_40_34.jpg', '2021-07-07 17:40:34', 4, 97, 'Uno mille azul 15mm p'),
(2133, '4958687043581', 0, '11026BO / spaal', 1, '24.25', '60.63', 12, 0, './imgs/2021-09-24_14_29_58.jpg', '2021-09-24 20:31:35', 4, 71, 'fiesta ROCAM / Ecosport rocam'),
(2134, '7298300987760', 0, '10310 / kit&cia', 1, '7.00', '30.00', 12, 1, './imgs/2021-07-07_14_47_19.jpg', '2021-07-07 17:47:19', 4, 97, 'Uno mille preta grande'),
(2135, '', 0, '75629 / sabo', 1, '0.00', '33.55', 10, 0, './imgs/2021-09-18_11_37_43.jpg', '2021-09-18 17:37:48', 4, 71, 'Fire Evo 1.0 8v / fire evo 1.4 8v'),
(2136, '7891252756134', 0, '75613 / sabo', 1, '22.00', '22.00', 9, 0, './imgs/orar.jpg', '2021-07-07 17:55:29', 4, 71, 'FIAT IDEA 2006 | 1.8 MPI 8V ADVENTURE 4P | 1.8 MPI 8V HLX 4P | 1.4 MPI 8V ELX 4P | 1.4 MPI FIRE 8V ELX 4P - FIAT IDEA 2007 | 1.8 MPI 8V HLX 4P'),
(2137, '7898261416554', 0, 'Mb473 / mobesani', 1, '20.00', '100.00', 3, 1, './imgs/2021-07-07_14_57_42.jpg', '2021-07-07 17:57:42', 4, 68, 'Uno mille antigo ts'),
(2138, '7898435861746', 0, '15171732bn / Bastos', 1, '48.30', '120.75', 6, 0, './imgs/2021-09-18_14_46_38.jpg', '2021-09-18 20:48:41', 4, 71, 'CLIO / SANDERO / TWINGO 1.0 1.2 16V '),
(2139, '7898435872704', 0, '1417878n / bastos', 1, '12.00', '32.00', 2, 0, './imgs/1-214.jpg', '2021-07-07 18:20:14', 7, 71, 'UNO - PALIO - MOBI '),
(2140, '90467661', 0, '90467661 / GM ', 1, '13.00', '45.00', 8, 0, './imgs/1-215.jpg', '2021-07-07 18:29:16', 7, 71, 'CHEVROLET GM\r\nAstra de 1999 a 2011\r\nBlazer de 1998 a 2011\r\nS10 de 1998 a 2016\r\nVectra de 1997 a 2011\r\nZafira de 1999 a 2012\r\n'),
(2141, '7898484694395', 0, '1233  / TC', 1, '12.00', '60.00', 12, 0, './imgs/1-217.jpg', '2021-07-07 18:52:10', 4, 100, 'Logan / Sandero /  Duster'),
(2142, '7891252788050', 0, '78805 / sabo', 1, '35.00', '100.00', 3, 1, './imgs/2021-07-08_10_12_48.jpg', '2021-07-08 13:12:48', 4, 68, 'Uno mille antigo dt'),
(2143, '7898261413249', 0, 'Mb416 / mobesani', 1, '10.00', '15.00', 19, 0, './imgs/1-286.jpg', '2021-07-08 13:29:18', 7, 95, 'Uno mille antigo bucha do braço tensor'),
(2144, '7892968019643', 0, 'Br11302101696 / monroe', 1, '43.00', '120.00', 12, 1, './imgs/2021-07-08_10_36_24.jpg', '2021-07-08 13:36:24', 4, 95, 'Palio / siena / Strada / GRANDsiena / palio novo com estabilizador lado esquerdo'),
(2145, '7892968019650', 0, 'Br11302101697 / monroe', 1, '43.00', '120.00', 14, 1, './imgs/2021-07-08_10_38_46.jpg', '2021-07-08 13:38:46', 4, 95, 'PALIO / SIENA / STRADA / GRANDSIENA / PALIO NOVO COM ESTABILIZADOR LADO direito'),
(2146, '7894325060367', 0, '1321 / sampel', 1, '30.29', '90.00', 5, 1, './imgs/2021-07-08_10_41_45.jpg', '2021-07-08 13:41:45', 4, 95, 'Palio / siena / strada sem estabilizador lado esquerdo'),
(2147, '7892968019667', 0, 'Br11302101698 / Monroe', 1, '30.00', '90.00', 1, 1, './imgs/2021-07-08_10_51_28.jpg', '2021-07-08 13:51:28', 4, 95, 'Palio / siena / strada sem estabilizador lado esquerdo '),
(2148, '7894325060398', 0, '1322 / sampel', 1, '30.24', '120.00', 2, 1, './imgs/2021-07-08_15_53_03.jpg', '2021-07-08 18:53:03', 4, 95, 'Palio / siena / strada sem estabilizador Lado direito'),
(2149, '', 0, 'Br11302101699 / monroe', 1, '30.24', '120.00', 6, 1, './imgs/2021-08-31_15_06_10.jpg', '2021-07-08 18:56:06', 4, 95, 'Palio / siena / strada sem estabilizador lado direito'),
(2150, '7892968014167', 0, 'Br15301101038 / MONroe', 1, '16.00', '80.00', 16, 1, './imgs/2021-07-08_16_05_45.jpg', '2021-07-08 19:05:45', 4, 95, 'Palio / Siena / strada / grand siena pequena de ferro'),
(2151, '7892968019506', 0, 'Br15301101703 / monroe', 1, '23.00', '90.00', 2, 1, './imgs/2021-07-08_16_17_37.jpg', '2021-07-08 19:17:37', 4, 95, 'Punto / linea dianteira'),
(2152, '7898429265376', 0, 'Mb4406 / mobesani', 1, '32.00', '100.00', 2, 1, './imgs/2021-07-08_16_19_52.jpg', '2021-07-08 19:19:52', 4, 95, 'Punto 08-17 / linea 08-18 traseira'),
(2153, '1893145017793', 0, 'Br15301101520 / MONROe', 1, '34.00', '120.00', 5, 1, './imgs/2021-07-08_16_25_10.jpg', '2021-07-08 19:25:10', 4, 101, 'Strada / fiorino grande '),
(2155, '7892968017809', 0, 'Br15301101521 / monroe', 1, '17.00', '100.00', 4, 1, './imgs/2021-07-08_16_27_39.jpg', '2021-07-08 19:27:39', 4, 101, 'Strada / fiorino pequena '),
(2156, '7892968011098', 0, 'Br15201100895 / monroe', 1, '21.00', '70.00', 14, 1, './imgs/2021-07-09_10_07_34.jpg', '2021-07-09 13:07:34', 4, 95, 'Corsa / corsa classic '),
(2157, '7898962673065', 0, '337 ', 1, '8.00', '40.00', 6, 1, './imgs/2021-07-09_10_17_04.jpg', '2021-07-09 13:17:04', 4, 102, 'S10 nova traseira'),
(2158, '7898429261675', 0, 'Mb1181 / mobesani', 1, '26.00', '140.00', 2, 1, './imgs/2021-07-09_10_32_40.jpg', '2021-07-09 13:32:40', 4, 101, 'CORSAo / corsao hatch'),
(2159, '7898429266014', 0, 'Mb1210 / mobesani', 1, '38.00', '170.00', 5, 1, './imgs/2021-07-09_11_07_40.jpg', '2021-07-09 14:07:40', 4, 101, 'Astra / corsao / zafira 06 / meriva / montana antiga ferro'),
(2160, '7898429267202', 0, 'Mb1224 / mobesani', 1, '23.80', '100.00', 6, 1, './imgs/2021-07-09_11_12_12.jpg', '2021-07-09 14:12:12', 4, 95, 'Onix / cobalt / spin / prisma novo pequena '),
(2161, '7898429267219', 0, 'Mb1225 / mobesani', 1, '23.63', '80.00', 15, 1, './imgs/2021-07-09_11_14_54.jpg', '2021-07-09 14:14:54', 4, 95, 'Onix / cobalt / spin / prisma novo grande'),
(2162, '', 0, 'Br10001102609 / monroe ', 1, '33.00', '130.00', 6, 1, './imgs/2021-08-31_15_17_46.jpg', '2021-07-09 14:22:01', 4, 95, 'S10 NOVA INFERIOR'),
(2163, '7898429267769', 0, 'Mb1232 / mobesani', 1, '27.00', '140.00', 2, 1, './imgs/2021-07-09_11_25_50.jpg', '2021-07-09 14:25:50', 4, 95, 'Cruze Pequena'),
(2164, '7898429267776', 0, 'Mb1233 / mobesani', 1, '143.00', '250.00', 2, 1, './imgs/2021-07-09_11_28_05.jpg', '2021-07-09 14:28:05', 4, 95, 'Cruze grande '),
(2165, '7890903023229', 0, 'NKBA01766 / NAKATA ', 1, '77.00', '345.00', 8, 0, './imgs/535225-10.png', '2021-07-09 18:23:07', 7, 67, 'Doblò 2006  / Fiorino 2013 1.3 8V / Idea 2016 1.4 8V / Palio 2020 1.4 8V / Punto 2012 1.4 8V / Siena 2016 1.0 8V | 1.4 8V / Strada 2016 1.4 8V / Uno 2013 1.0 8V'),
(2166, '7892968011081', 0, 'Br14201100894 / monroe', 1, '20.00', '80.00', 7, 1, './imgs/2021-07-09_15_33_56.jpg', '2021-07-09 18:33:56', 4, 101, 'Corsa / corsa classic / celta '),
(2167, '7890903023175', 0, 'NKBAA07630  / NAKATA  ', 1, '80.91', '287.00', 2, 0, './imgs/1-218.jpg', '2021-07-09 18:37:06', 7, 67, 'VW FOX  / CROSSFOX '),
(2169, '', 0, 'NKBA03147 / Nakata ', 1, '72.00', '250.00', 12, 0, './imgs/2021-08-31_14_57_43.jpg', '2021-07-09 18:38:55', 4, 67, 'GM celta / Corsa / onix / prisma todos / cobalt / spin '),
(2170, '2010100928', 0, 'BDGM18 / takao', 1, '57.80', '345.00', 1, 0, './imgs/1-229.jpg', '2021-07-09 18:45:55', 7, 67, 'GM astra / blazer  /  VECTRA '),
(2171, '7892677005302', 0, '90000814  / schadek', 1, '58.00', '178.00', 6, 0, './imgs/1-228.jpg', '2021-07-09 18:49:57', 7, 67, 'Ka  / Fiesta  /  Ecoesport / Courrie '),
(2173, '7899632000334', 0, 'UB0807 / urba ', 1, '135.00', '267.00', 0, 0, './imgs/1-227.jpg', '2021-07-09 18:52:56', 4, 67, 'citroeen c3'),
(2174, '7898261411429', 0, 'Mb1136 / mobesani ', 1, '20.00', '80.00', 2, 1, './imgs/2021-07-09_15_54_23.jpg', '2021-07-09 18:54:23', 4, 101, 'Corsa / corsa classic / celta'),
(2175, '7890903096759', 0, 'NKba09828 /  Nakata ', 1, '104.28', '367.00', 1, 0, './imgs/1-226.jpg', '2021-07-09 18:55:23', 7, 67, 'Renault captur'),
(2176, '7892968015546', 0, 'Br15101101249 / monroe', 1, '18.00', '80.00', 15, 0, './imgs/2021-08-31_15_12_14.jpg', '2021-07-09 18:58:14', 7, 95, 'Gol / voyage / polo / golf / fox / new fiesta / new ka pequena '),
(2177, '7890903089027 ', 0, 'Nkba17423 / Nakata ', 1, '121.78', '345.00', 1, 0, './imgs/1-225.jpg', '2021-07-09 18:58:59', 7, 67, 'Hyundai HB20  /  Kia soul /  Veloster / cerato6'),
(2178, '7899632006190', 0, 'Ub421  / Urba ', 1, '117.36', '223.00', 1, 0, './imgs/1-224.jpg', '2021-07-09 19:01:33', 7, 67, 'HB20 1.0 / Picanto '),
(2179, '1J0407181', 0, '1J0407181 / Volkswagem', 1, '33.00', '100.00', 8, 0, './imgs/001-16.jpg', '2021-07-09 19:02:55', 4, 95, 'Gol / voyage / polo / golf / fox grande '),
(2180, '7898098927186', 0, '854513  / indisa', 1, '110.00', '321.00', 1, 0, './imgs/1-223.jpg', '2021-07-09 19:04:12', 7, 67, 'Hyundai HB20 '),
(2181, '7890903107059', 0, 'Nkba02060  /  Nakata ', 1, '120.00', '324.00', 2, 0, './imgs/1-222.jpg', '2021-07-09 19:06:38', 7, 67, 'Ford ka motor 1.0'),
(2182, '2007694403', 0, 'BDF016C/ takao', 1, '92.04', '320.00', 3, 0, './imgs/1-221.jpg', '2021-07-09 19:08:59', 7, 67, 'New fiesta '),
(2183, '7898614664175', 0, '04e121600q / bremen ', 1, '415.00', '900.00', 1, 0, './imgs/1-219.jpg', '2021-07-09 19:11:56', 7, 67, 'Up   / fox'),
(2184, '7892968015522', 0, 'Br15101101247 / monroe', 1, '29.00', '70.00', 4, 1, './imgs/2021-07-09_16_12_29.jpg', '2021-07-09 19:12:29', 4, 95, 'Gol / voyage / polo novo / golf / fox grande'),
(2185, '7892968019896', 0, 'Br15101101843 / monroe', 1, '23.00', '100.00', 6, 1, './imgs/2021-07-09_16_19_03.jpg', '2021-07-09 19:19:03', 4, 95, 'Fox / crossfox grande gg'),
(2186, '7892968008111', 0, 'Br15101100377 / monroe', 1, '14.00', '80.00', 6, 1, './imgs/2021-07-09_16_24_41.jpg', '2021-07-09 19:24:41', 4, 101, 'Gol / Parati / saveiro borracha '),
(2187, '7892968019438', 0, 'Br15101101590 / Monroe', 1, '20.00', '80.00', 8, 1, './imgs/2021-07-09_16_27_55.jpg', '2021-07-09 19:27:55', 4, 101, 'Gol / parati / saveiro / voyage ferro'),
(2188, '7898298060386', 0, '1514 / FBY', 1, '26.00', '60.00', 7, 0, './imgs/1-231.jpg', '2021-07-10 12:17:44', 4, 103, 'FOX / POLO'),
(2189, '113122', 0, '6G9Z8K556A / REVIAM', 1, '191.00', '450.00', 1, 0, './imgs/1-232.jpg', '2021-07-10 12:35:44', 7, 103, 'FORD FUSION '),
(2190, '7898331577901', 0, 'IG300482 / IGUAÇU', 1, '1992.00', '468.00', 1, 0, './imgs/1-1.jpeg', '2021-07-10 12:47:21', 7, 91, 'FORD COURIER L / XL 1.6  / FIESTA / KA'),
(2191, '7898551441167', 0, '1165100 / VALCLEI', 1, '206.00', '500.00', 1, 0, './imgs/1-233.jpg', '2021-07-10 12:50:38', 7, 91, 'Ford Courier 2007 Em Diante Motor: Zetec Rocam 1.6\r\nFord Ka 2007 Em Diante Motor: Zetec Rocam 1.0 1.6'),
(2192, '7892968025873', 0, 'Br10001202717 / monroe', 1, '58.00', '150.00', 3, 1, './imgs/2021-07-10_09_54_39.jpg', '2021-07-10 12:54:39', 4, 95, 'Hillux / sw4 4x2 4x4 inferior dianteira '),
(2193, '7893989084399', 0, 'VT487 / MTE-E THONSON', 1, '126.00', '380.00', 2, 0, './imgs/1-2.jpeg', '2021-07-10 12:56:53', 7, 91, 'CITROEEN / PEGEOUT'),
(2194, '7899850405317', 0, 'Mb792 / mobesani', 1, '58.00', '150.00', 5, 1, './imgs/2021-07-10_09_56_54.jpg', '2021-07-10 12:56:54', 4, 95, 'Hillux / sw4 4x2 4x4 inferior dianteira'),
(2195, '7893989084382', 0, 'VT48689 /  MTE-THOMSON', 1, '69.50', '220.00', 2, 0, './imgs/1-3.jpeg', '2021-07-10 12:59:59', 7, 91, 'Citroen C3, Berlingo, Ax Xsara'),
(2196, '7892968025880', 0, 'Br10001202718 / monroe', 1, '71.00', '150.00', 2, 1, './imgs/2021-07-10_10_06_15.jpg', '2021-07-10 13:06:15', 4, 95, 'Hillux / sw4 inferior traseira'),
(2197, '7893989078893', 0, 'VT422.88 / MTE-THOMSOPN', 1, '106.00', '315.00', 251, 0, './imgs/1-4.jpeg', '2021-07-10 13:09:18', 7, 91, 'FIAT 500 1.4 GAS 2010 2016\r\nFIAT FIORINO 1.4 8V EVO FLEX 2014 2016\r\nFIAT GRAND SIENA 1.4 8V EVO FLEX 2012 2016\r\nFIAT PALIO 1.0 8V EVO FLEX 2011 2016\r\nFIAT PALIO 1.4 8V EVO FLEX 2011 2016\r\nFIAT PUNTO 1.4 FLEX 2011 2016\r\nFIAT UNO 1.0 8V EVO FLEX 2010 2016\r\nFIAT UNO 1.4 EVO FLEX 2010 2016'),
(2198, '7898684753557', 0, '6005 / bcr', 1, '31.00', '150.00', 8, 1, './imgs/2021-07-10_10_09_37.jpg', '2021-07-10 13:09:37', 4, 95, 'Hillux / sw4 inferior traseira'),
(2199, '7898684752390', 0, '6004 / bcr', 1, '15.00', '100.00', 4, 1, './imgs/2021-07-10_10_13_35.jpg', '2021-07-10 13:13:35', 4, 95, 'Hillux / sw4 superior dianteira menor'),
(2200, 'FZ00127067HN', 0, 'FZ00127067HN / getoflex ', 1, '28.00', '120.00', 5, 1, './imgs/2021-07-10_10_18_38.jpg', '2021-07-10 13:18:38', 4, 95, 'Hillux / sw4 superior dianteira maior '),
(2201, '7898331579684', 0, '55242321 / IGUAÇU', 1, '55.00', '142.00', 2, 0, './imgs/1-5.jpeg', '2021-07-10 13:19:08', 7, 91, 'Bravo 1.8 16V Etorq 2011/2014\r\nDoblo 1.8 16V Etorq 2011/2015\r\nDoblo 1.8 16V Etorq 2015/...\r\nGrand Siena 1.6 16V Etorq 2013/2015\r\nGrand Siena 1.6 16V Etorq 2015/...\r\nIdea 1.6 16V Etorq 2011/2016\r\nIdea 1.8 16V Etorq 2011/2015\r\nLinea 1.8 16V Etorq 2009/2016\r\nLinea 1.6 16V Etorq 2015/2016\r\nNovo Palio 1.6 16V Etorq 2012/2015\r\nNovo Palio 1.6 16V Etorq 2015/...\r\nPalio Essence 1.6 16V Etorq 2011/2012\r\nPalio Weekend 1.6 16V Etorq 2011/2014\r\nPalio Weekend 1.8 16V Etorq 2011/2014\r\nPunto 1.8 16V Etorq 2011/2016\r\nPunto 1.6 16V Etorq 2011/2016\r\nSiena 1.6 16V Etorq 2010/2011\r\nStrada 1.6 16V Etorq 2011/2013\r\nStrada 1.8 16V Etorq 2011/2013'),
(2202, '7898331579639', 0, '401.1112-82 / IGUAÇU', 1, '30.00', '91.05', 1, 0, './imgs/1-234.jpg', '2021-07-10 13:21:30', 7, 91, 'HYUNDAI HB20 2013 | 1.0 12V FLEX (MOTOR KAPPA) | 1.6 16V FLEX (MOTOR GAMMA) - HYUNDAI HB20 2014 | 1.0 12V FLEX (MOTOR KAPPA) | 1.6 16V FLEX'),
(2203, '7893989105308', 0, 'VT441,88 / MTE-THOMSON', 1, '10.00', '35.00', 1, 0, './imgs/1-7.jpeg', '2021-07-10 13:35:24', 7, 91, 'HB20 - TODADAS AS VERSOES'),
(2204, '7891579237422', 0, 'MMVT 349.87 / Marelli', 1, '41.59', '158.00', 10, 0, './imgs/1-8.jpeg', '2021-07-10 13:38:53', 7, 91, 'FIAT PALIO / SIENA / STRADA 1.0/1.3 FIRE 8/16V - ANO: 2001 em diante'),
(2205, '7892968024876', 0, 'BR10001102602 / monroe', 1, '50.00', '150.00', 12, 1, './imgs/2021-07-10_10_40_45.jpg', '2021-07-10 13:40:45', 4, 95, 'Etios grande'),
(2206, '7892968025316', 0, 'Br10001102748 / monroe', 1, '13.00', '120.00', 14, 1, './imgs/2021-07-10_10_50_05.jpg', '2021-07-10 13:50:05', 4, 95, 'Etios pequeno '),
(2207, '7893049950138', 0, 'C-9501 / CONTROIL', 1, '20.00', '60.00', 5, 0, './imgs/01-10.png', '2021-07-10 13:50:37', 7, 104, 'FIAT PALIO ADMSSÃO DO MOTOR 2006 / ... MOD. 1.8 R\r\nFIAT PALIO ADMSSÃO DO MOTOR 2007 / ... MOTOR 1.8 FLEX 8V\r\n'),
(2208, '7898474516140', 0, 'VC158C / VALCLEI', 1, '70.00', '220.00', 1, 0, './imgs/01-12.png', '2021-07-10 13:57:43', 7, 106, '(VW) FOX 1.0/1.6 03/04,\r\n(VW) SPACEFOX 1.6 06/ GAS/FLEX\r\n(VW) POLO 1.6 02/'),
(2209, '7899152517602', 0, 'Bch50540 / perfect', 1, '14.00', '60.00', 10, 1, './imgs/2021-07-10_11_04_34.jpg', '2021-07-10 14:04:35', 4, 105, 'Hillux / l200 / s10 / triton '),
(2210, '7898331572975', 0, '844/ IGUACU', 1, '36.00', '180.00', -1, 0, './imgs/1-10.jpeg', '2021-07-10 14:04:51', 4, 107, 'Sensor Temperatura+carcaca Palio uno siena idea doblo fire'),
(2211, '7893989032000', 0, 'VT24580 / MTE-THOMSON', 1, '22.00', '87.00', 4, 0, './imgs/1-235.jpg', '2021-07-10 14:07:50', 4, 91, 'FOX/GOL/PARA/POLO'),
(2212, '122370', 0, '122370 / getoflex', 1, '40.00', '120.00', 6, 1, './imgs/2021-07-10_11_15_04.jpg', '2021-07-10 14:15:04', 4, 95, 'New ecosport 4x4  grande'),
(2213, '7892639004800', 0, '880063 / WAHLER', 1, '12.00', '21.02', 7, 0, './imgs/1-236.jpg', '2021-07-10 14:17:50', 4, 107, 'Chevrolet Astra.- Chevrolet Celta.- Chevrolet Corsa.- Chevrolet Kadett.- Chevrolet Monza.- Chevrolet Omega.- Chevrolet S10.- Chevrolet Vectra.- Fiat Fiorino.- Fiat Ipanema.- Fiat Marea.- Fiat Premio.- Fiat Uno.'),
(2214, '7898429267240', 0, 'Mb2268 / mobesani', 1, '24.00', '120.00', 7, 1, './imgs/2021-07-10_11_18_01.jpg', '2021-07-10 14:18:01', 4, 95, 'New fiesta / new ecosport 4x2 '),
(2215, '7898331572296', 0, 'IG850  /  Iguaçu', 1, '12.00', '85.47', 1, 0, './imgs/1-237.jpg', '2021-07-10 14:21:51', 7, 107, 'Vw Polo /  Spacefox / Saveiro G5 / Voyage G5 / Gol G5 /  Crossfox'),
(2216, '7898331573590', 0, 'IG0830 / IGUACU', 1, '12.00', '61.45', 4, 0, './imgs/1-238.jpg', '2021-07-10 14:26:18', 7, 107, ' Bora /  Fox  / Golf / Polo / Spacefox / Passat'),
(2217, '7892968023534', 0, 'Br10001102356 / monroe', 1, '38.00', '120.00', 20, 1, './imgs/2021-07-10_11_27_48.jpg', '2021-07-10 14:27:48', 4, 95, 'FIESTA / ESCOSPORTE zetec rocam grande'),
(2218, '', 0, ' STD00004 / DELPHI', 1, '50.00', '30.00', 39, 0, './imgs/2021-07-29_09_07_23.jpg', '2021-07-10 14:28:09', 4, 107, 'PALIO/CELTA/CORSA'),
(2219, '7891252789767', 0, '78976 / sabó', 1, '14.00', '80.00', 1, 1, './imgs/2021-07-10_11_33_26.jpg', '2021-07-10 14:33:26', 4, 95, 'Fiesta / ecosport zetec rocam pequena'),
(2220, '7898429260647', 0, 'Mb2222 / mobesani', 1, '13.00', '90.00', 5, 1, './imgs/2021-07-10_11_35_02.jpg', '2021-07-10 14:35:02', 4, 95, 'Fiesta / ecosport zetec rocam'),
(2221, '7898331573293', 0, '201.0815 / IGUAÇU', 1, '23.00', '89.00', 251, 0, './imgs/1-11.jpeg', '2021-07-10 14:37:45', 7, 107, 'Ford Courier  / Ford Ecosport  / Ford Fiesta  /Ford Focus / Ford Ka'),
(2222, '7892968012477', 0, 'Br15501101035 / Monroe', 1, '27.00', '120.00', 6, 1, './imgs/2021-07-10_11_39_25.jpg', '2021-07-10 14:39:25', 4, 101, 'Fiesta / escort / ka antigo'),
(2223, '7898261412280', 0, 'Mb262 / mobesani', 1, '20.00', '80.00', 5, 1, './imgs/2021-07-10_11_42_51.jpg', '2021-07-10 14:42:51', 4, 95, 'Fiesta antigo grande'),
(2224, '7898261412297', 0, 'Mb263 / mobesani', 1, '16.00', '80.00', 7, 1, './imgs/2021-07-10_11_52_45.jpg', '2021-07-10 14:52:45', 4, 95, 'Fiesta antigo pequena'),
(2225, '7890903033112', 0, 'Nkf3001cag / Nakata ', 1, '220.00', '500.00', 7, 0, './imgs/1-255.jpg', '2021-07-12 11:53:23', 7, 108, 'Palio weekend / Siena  / UNO  / 1.0 etorq'),
(2226, '7893026962475', 0, 'FI / 219-cpa / FRASLE', 1, '137.00', '280.00', 3, 0, './imgs/1-254.jpg', '2021-07-12 11:56:14', 7, 108, 'Fiat argo / GRAN SIENA / PUNTO  / UNO vivace '),
(2227, '7893026493030', 0, 'FI/136cp / frasle', 1, '98.25', '245.63', 3, 0, './imgs/2021-09-10_10_27_56.jpg', '2021-09-18 20:52:53', 4, 108, 'Doblo / Fiorino'),
(2228, '7893026761986', 0, 'FI  / 91  - Cpa / Ftasle ', 1, '55.68', '180.00', 1, 0, './imgs/1-252.jpg', '2021-07-12 12:04:54', 7, 108, 'Fiat brava  / Fioriono '),
(2229, '7898404513683', 0, 'BPSA!-0090137 / Mazzicar ', 1, '65.89', '200.00', 1, 0, './imgs/1-251.jpg', '2021-07-12 12:08:22', 7, 108, 'Novo Palo / Novo uno '),
(2230, '7893026650969', 0, 'FI / 90 Ftasle ', 1, '80.00', '260.00', 2, 0, './imgs/1-250.jpg', '2021-07-12 12:23:12', 7, 108, 'Fiat Mille / premio / fiorino'),
(2234, '7893026340648', 0, 'Fd /61 / Ftasle ', 1, '36.90', '120.00', 2, 0, './imgs/1-249.jpg', '2021-07-12 12:27:25', 7, 108, 'Ford fiesta  / GM celta '),
(2235, '7893026985085', 0, 'FI/330cpa / Frasle ', 1, '156.00', '390.00', 2, 0, './imgs/2021-09-10_10_29_18.jpg', '2021-09-18 20:50:45', 4, 108, 'Palio / UNO 1.4 evo'),
(2236, '7893026460933', 0, 'CB/46 - CP / Ftasle ', 1, '280.00', '560.00', 1, 0, './imgs/1-247.jpg', '2021-07-12 12:32:49', 7, 108, 'Astra MERIVa /VECTRA / 2.0'),
(2237, '7890903061160', 0, 'NKF3042 / Nakata ', 1, '82.00', '220.00', 1, 0, './imgs/1-246.jpg', '2021-07-12 12:34:38', 7, 108, 'GM onix 1.0 /1.4 '),
(2238, '7893026983869', 0, 'CB / 153- CPA / Ftasle ', 1, '124.00', '330.00', 1, 0, './imgs/1-245.jpg', '2021-07-12 12:37:39', 7, 108, 'GM Cobalt   todas as versões '),
(2239, '7893026981117', 0, 'CB /416-Cpa / Frasle ', 1, '122.00', '260.00', 3, 0, './imgs/1-244.jpg', '2021-07-12 12:40:22', 7, 108, 'Onix todas as versões '),
(2240, '7898404514109', 0, 'BPSA - 0094690 / Mazzicar ', 1, '133.00', '300.00', 1, 0, './imgs/1-243.jpg', '2021-07-12 12:43:05', 7, 108, 'GM spin / Tracker '),
(2241, '7899159507286', 0, 'MG-576 / mgfreios', 1, '124.00', '300.00', 1, 0, './imgs/1-242.jpg', '2021-07-12 12:45:07', 7, 108, 'L- 200 Triton '),
(2242, '7890903033198', 0, 'Nkf 3007ca / Nakata ', 1, '220.00', '500.00', 2, 0, './imgs/1-241.jpg', '2021-07-12 12:46:51', 7, 108, 'GM AGILE / Corsa '),
(2243, '7893026877847', 0, 'TY/327-cp / Frasle ', 1, '0.00', '320.00', 1, 0, './imgs/2021-08-16_10_02_21.jpg', '2021-09-27 22:41:20', 4, 108, 'HILUX /  sw4  2. 5 / pitbull'),
(2244, '7890903061573', 0, 'Nkf3055ca / Nakata ', 1, '89.00', '300.00', 2, 0, './imgs/1-263.jpg', '2021-07-12 13:10:01', 7, 108, 'Renault duster '),
(2245, '7893026608007', 0, 'RN/ 324- CPA / Ftasle ', 1, '2.00', '88.00', 2, 0, './imgs/1-262.jpg', '2021-07-12 13:11:41', 7, 108, '200'),
(2246, '', 0, '', 1, '0.00', '0.00', 0, 1, './imgs/2021-07-12_10_12_08.jpg', '2021-07-12 13:12:08', 4, 0, ''),
(2247, '7893026885965', 0, 'RN / 325- CPA / FRASLE', 1, '119.00', '300.00', 2, 0, './imgs/1-261.jpg', '2021-07-12 13:14:02', 7, 108, 'Renault logan'),
(2248, '', 0, '', 1, '0.00', '0.00', 0, 1, './imgs/2021-07-12_10_14_21.jpg', '2021-07-12 13:14:21', 4, 0, ''),
(2249, '', 0, '', 1, '0.00', '0.00', 0, 1, './imgs/2021-07-12_10_15_49.jpg', '2021-07-12 13:15:49', 4, 0, ''),
(2250, '7899159516455', 0, 'MG-595 /MG Freios', 1, '83.82', '300.00', 1, 0, './imgs/1-260.jpg', '2021-07-12 13:18:02', 7, 108, 'Renault duster '),
(2253, '7898512358742', 0, 'MI/ 198-Cp / Frasle ', 1, '88.00', '270.00', 1, 0, './imgs/1-259.jpg', '2021-07-12 13:23:44', 7, 108, 'L 200 OUTDOR HPE 2.5 4X4 DIESEL - 2008 EM DIANTE\r\nL-200 OUTDOOR - 2006 A 2007\r\nL200 SAVANA 2.5 4X4 DIESEL - 2008 EM DIANTE\r\nL200 SPORT - 2002 EM DIANTE\r\nL-200 2.5D HPE - 2006 A 2007\r\nL-200 2.5D SPORT - 2006 A 2007'),
(2254, '7893026091946', 0, 'FD/ 152-Cpa / Frasle ', 1, '98.00', '220.00', 2, 0, './imgs/1-258.jpg', '2021-07-12 13:25:33', 7, 108, 'Ford fiesta / Ka '),
(2255, '7899159515120', 0, 'MG-594 /  MG freios ', 1, '0.00', '260.00', 1, 0, './imgs/1-257.jpg', '2021-07-12 13:28:14', 7, 108, 'Ford ranger '),
(2258, '7983026830804', 0, 'VW/ 280- CPA / Ftasle ', 1, '127.00', '380.00', 2, 0, './imgs/1-256.jpg', '2021-07-12 13:31:32', 7, 108, 'VW GOL / SAVEIRO G5'),
(2259, 'FZ00129305N', 0, 'Fz00129305n / getoflex', 1, '37.00', '150.00', 6, 1, './imgs/2021-07-13_10_09_26.jpg', '2021-07-13 13:09:27', 4, 101, 'Sandero / logan '),
(2261, '7892968020243', 0, 'Br15001102029 / monroe', 1, '34.00', '100.00', 4, 1, './imgs/2021-07-13_10_18_25.jpg', '2021-07-13 13:18:25', 4, 95, 'Honda fit 2003 bucha do BRAÇO dianteiro '),
(2262, '7894325114084', 0, '8338 / sampel', 1, '23.00', '140.00', 4, 1, './imgs/2021-07-13_10_24_45.jpg', '2021-07-13 13:24:45', 4, 95, 'Hrv 2016 pequena'),
(2263, '7908217852753', 0, '7488-5 / CBT combate', 1, '62.00', '120.00', 0, 1, './imgs/2021-07-13_10_27_34.jpg', '2021-07-13 13:27:34', 4, 95, 'Hrv 2016 grande'),
(2264, '7891252789866', 0, '78986 / sabó', 1, '35.00', '120.00', 2, 0, './imgs/02-14.jpg', '2021-07-13 13:32:06', 7, 95, 'Corolla grande '),
(2265, '7898429261316', 0, 'Mb742 / mobesani', 1, '15.00', '100.00', 7, 0, './imgs/2021-07-13_10_34_30.jpg', '2021-07-13 13:34:30', 7, 95, 'Pequena'),
(2266, '7898261416561', 0, 'Mb474 / mobesani', 1, '18.00', '75.00', 4, 1, './imgs/2021-07-13_10_38_42.jpg', '2021-07-13 13:38:42', 4, 109, 'Uno mille / FIORINO suporte inferior central '),
(2267, '7898429261293', 0, 'Mb484 / mobesani', 1, '18.00', '75.00', 3, 1, './imgs/2021-07-13_10_42_00.jpg', '2021-07-13 13:42:00', 4, 109, 'Uno mille / fiorino suporte traseiro'),
(2268, '7898300981678', 0, '10153 / kit&cia', 1, '18.00', '50.00', 5, 1, './imgs/2021-07-13_10_44_37.jpg', '2021-07-13 13:44:37', 4, 109, 'Uno mille / fiorino abraçadeira e calços'),
(2269, '100176', 0, '100176 / getoflex', 1, '38.00', '120.00', 1, 1, './imgs/2021-07-13_10_49_51.jpg', '2021-07-13 13:49:51', 4, 101, 'Citroen c4 '),
(2270, '100138', 0, '10.0138 / getoflex', 1, '38.00', '120.00', 9, 1, './imgs/2021-07-13_10_52_16.jpg', '2021-07-13 13:52:16', 4, 101, 'Citroen c3 ');
INSERT INTO `produtos` (`id`, `barra`, `codigo`, `nome`, `qtd`, `valor_compra`, `valor_venda`, `estoque`, `status`, `foto`, `data`, `usuarios_id`, `categorias_id`, `aplicacao`) VALUES
(2271, '7898429267851', 0, 'Mb9344 / mobesani', 1, '23.00', '90.00', 4, 1, './imgs/2021-07-13_10_55_09.jpg', '2021-07-13 13:55:09', 4, 95, 'Hb20  2013 pequena'),
(2272, '7898429268452', 0, 'Mb9347 / mobesani', 1, '38.00', '150.00', 6, 1, './imgs/2021-07-13_11_01_04.jpg', '2021-07-13 14:01:04', 4, 95, 'Ix35 2010 / Sportage 2011 / tucson / hb20 / i30 / cerato / Santa fé grande'),
(2273, '7892968022759', 0, 'Br10001102234 / monroe', 1, '38.00', '150.00', 2, 1, './imgs/2021-07-13_11_05_51.jpg', '2021-07-13 14:05:51', 4, 95, 'Ix35 2010 / Sportage 2011 / tucson / hb20 / i30 / cerato / Santa fé grande'),
(2274, '7891252789804', 0, '78980 / sabó', 1, '38.00', '80.00', 4, 1, './imgs/2021-07-13_11_17_03.jpg', '2021-07-13 14:17:03', 4, 95, 'Ix35 2010 / Sportage 2011 / tucson / hb20 / i30 / cerato / Santa fé pequena'),
(2275, '7898429263922', 0, 'Mb9283 / mobesani', 1, '37.00', '80.00', 4, 1, './imgs/2021-07-13_11_19_18.jpg', '2021-07-13 14:19:18', 4, 95, 'Ix35 2010 / Sportage 2011 / tucson / hb20 / i30 / cerato / Santa fé pequena'),
(2276, '82007237411', 0, '8200723741 / renault', 1, '33.00', '150.00', 5, 1, './imgs/2021-07-13_14_15_01.jpg', '2021-07-13 17:15:01', 4, 68, 'Sandero / logan / duster 4x2 4x4'),
(2277, '', 0, 'Nb26027 / nakata', 1, '39.00', '150.00', 10, 1, './imgs/2021-07-27_09_24_34.jpg', '2021-07-13 17:20:07', 4, 68, 'Clio dianteiro'),
(2278, '', 0, 'BR13002201552 / monroe', 1, '80.00', '120.00', 10, 1, './imgs/2021-07-26_10_53_07.jpg', '2021-07-13 17:28:33', 4, 68, 'Clio dianteiro '),
(2279, '7892968017786', 0, 'Br13102201517 / monroe', 1, '0.00', '120.00', 1, 0, './imgs/2021-07-13_14_43_35.jpg', '2021-07-13 17:43:35', 7, 68, 'Gol G5-G6-g7 / saveiro g5-g6-g7 / up / voyage g5-g6-g7 '),
(2280, '7898261417964', 0, 'Mb380a / mobesani', 1, '22.00', '120.00', 4, 1, './imgs/2021-07-13_14_46_28.jpg', '2021-07-13 17:46:28', 4, 68, 'GoL G3-G4 dianteiro'),
(2281, '7898429260616', 0, 'MB2221a / mobesani', 1, '77.00', '150.00', 4, 1, './imgs/2021-07-13_15_01_00.jpg', '2021-07-13 18:01:00', 4, 68, 'Fiesta rocam / ecosport rocaM com rolamento dianteiro '),
(2282, '7892968017724', 0, 'Br13502201505 / monroe', 1, '38.00', '120.00', 1, 1, './imgs/2021-07-13_15_06_33.jpg', '2021-07-13 18:06:33', 4, 68, 'Fiesta rocam / Ecosport rocam sem rolamento dianteiro'),
(2283, '', 0, 'Mb2270 / mobesani ', 1, '0.00', '80.00', 4, 1, './imgs/2021-09-17_15_14_24.jpg', '2021-09-17 21:14:32', 4, 68, 'New fiesta / new ecosport / new ka sem rolamento dianteiro'),
(2284, '7894325109561', 0, '8292a / sampel', 1, '15.00', '140.00', 3, 1, './imgs/2021-07-13_15_16_39.jpg', '2021-07-13 18:16:39', 4, 68, 'Versa / march dianteiro '),
(2285, '7898429268834', 0, 'Mb7027a / mobesani', 1, '44.00', '140.00', 8, 1, './imgs/2021-07-13_15_19_35.jpg', '2021-07-13 18:19:35', 4, 68, 'March / VERSA / KIcks;16 dianteiro'),
(2287, '7891579861955', 0, 'Cxc17109 / cofap', 1, '80.50', '150.00', 4, 1, './imgs/2021-07-13_15_23_25.jpg', '2021-07-13 18:23:25', 4, 68, 'C3 novo / aircross / peugeot 308 / c3 picasso dianteiro '),
(2288, '95227628', 0, '95227628 / gm ', 1, '104.00', '160.00', 10, 1, './imgs/2021-07-13_15_39_47.jpg', '2021-07-13 18:39:47', 4, 68, 'Onix / prisma novo / cobalt / spin dianteiro'),
(2289, '7892968010756', 0, 'Br13202100789 / monroe', 1, '24.00', '140.00', 16, 1, './imgs/2021-07-13_15_45_02.jpg', '2021-07-13 18:45:02', 4, 68, 'Celta / corsa classic dianteiro'),
(2290, '7890903073866', 0, 'Nb23014 / nakata', 1, '18.00', '80.00', 0, 1, './imgs/2021-07-13_15_47_42.jpg', '2021-07-13 18:47:42', 4, 68, 'Celta / corsa classic'),
(2291, '7898261415205', 0, 'Mb461 / mobesani', 1, '83.00', '207.50', 3, 1, './imgs/2021-08-31_09_38_18.jpg', '2021-09-18 14:14:42', 4, 68, 'Palio antigo / strada antiga lado esquerdo dianteiro'),
(2292, '', 0, 'Mb462 / mobesani', 1, '0.00', '207.50', 3, 1, './imgs/2021-09-18_08_15_39.jpg', '2021-09-18 14:15:46', 4, 68, 'PALIO ANTIGO / STRADA ANTIGA LADO DIREITO'),
(2293, '', 0, 'Mb9131a / mobesani', 1, '37.00', '150.00', 7, 1, './imgs/2021-08-31_09_01_27.jpg', '2021-07-13 19:08:36', 4, 68, 'Hb20 Todos dianteiro '),
(2294, '', 0, 'Br10002202266 / monroe ', 1, '86.00', '180.00', 6, 1, './imgs/2021-07-28_15_24_42.jpg', '2021-07-13 19:14:16', 4, 68, 'Uno novo / palio novo / grandsiena / mobi / argo / cronos dianteiro'),
(2295, '7899850401043', 0, 'Mb772a / mobesani', 1, '37.00', '180.00', 0, 0, './imgs/2021-07-13_16_17_30.jpg', '2021-07-13 19:17:30', 7, 68, 'Etios dianteiro'),
(2296, '90538936', 0, '90538936 / gm', 1, '36.00', '100.00', 8, 1, './imgs/2021-07-13_16_20_38.jpg', '2021-07-13 19:20:38', 4, 68, 'Agile / vectra / Montana antiga dianteiro '),
(2297, '3276426968652', 0, '696865 / VALEO', 1, '370.00', '925.00', 4, 0, './imgs/1-266.jpg', '2021-09-24 21:34:37', 4, 69, 'Logan / SANDERO 1.0 1.6 '),
(2298, '7898577570223', 0, 'NT-4643.523 / NOTUS', 1, '280.00', '500.00', 1, 0, './imgs/1-268.jpg', '2021-07-14 12:01:38', 7, 111, 'LOGAN 1.0 16V FLEX / CLIO 1.0 16V FLEX / SANDERO 1.0 16V FLEX'),
(2299, '7891579358080', 0, 'RMM698001M / MAGNETI MARELLI', 1, '78.00', '88.00', 2, 0, './imgs/1-270.jpg', '2021-07-14 12:17:23', 4, 111, 'FOX 1.0 FLEX / 	GOL 1.6 FLEX / 	SAVEIRO 1.8 FLEX / SPACEFOX 1.6 FLEX'),
(2300, '7891579297099', 0, 'RMM2067001 / 	Magneti Marelli', 1, '122.00', '433.00', 1, 0, './imgs/1-271.jpg', '2021-07-14 19:36:33', 7, 111, 'Radiador Agile 1.4 09'),
(2301, '7898429265239', 0, 'Mb2259 / mobesani', 1, '28.00', '120.00', 2, 1, './imgs/2021-07-14_16_38_25.jpg', '2021-07-14 19:38:25', 4, 68, 'Fiesta rocam / Ecosport rocam traseiro'),
(2302, '52082244', 0, '52082244 / gm', 1, '62.00', '150.00', 4, 1, './imgs/2021-07-14_16_41_06.jpg', '2021-07-14 19:41:06', 4, 68, 'Onix / cobalt / spin / prisma novo lado direito traseiro'),
(2303, '52082243', 0, '52082243 / gm', 1, '62.00', '150.00', 3, 1, './imgs/2021-07-14_16_42_42.jpg', '2021-07-14 19:42:42', 4, 68, 'Onix / cobalt / spin / prisma novo lado esquerdo traseiro '),
(2304, '7891579363169', 0, 'Cxc03135 / cofap', 1, '28.00', '120.00', 11, 1, './imgs/2021-07-14_16_45_50.jpg', '2021-07-14 19:45:50', 4, 68, 'Linea / punto / grandsiena / IDEA / cronos  traseiro'),
(2305, '7894325083595', 0, '8051a / sampel', 1, '40.00', '150.00', 2, 1, './imgs/2021-07-14_16_49_21.jpg', '2021-07-14 19:49:21', 4, 68, 'Peugeot 206 '),
(2306, '7898429263150', 0, 'Mb9196a / mobesani', 1, '41.00', '180.00', 6, 1, './imgs/2021-07-14_16_51_20.jpg', '2021-07-14 19:51:20', 4, 68, 'C4 / peugeot 307-308 dianteiro'),
(2307, '7892968011005', 0, 'Br13104300886 / monror', 1, '92.00', '175.00', 7, 1, './imgs/2021-07-14_16_56_24.jpg', '2021-07-14 19:56:24', 4, 68, 'Polo / bora / crossfox / fox traseiro'),
(2308, '', 0, 'Br13002201840 / monroe', 1, '69.00', '150.00', 6, 1, './imgs/2021-07-26_10_53_47.jpg', '2021-07-14 19:59:55', 4, 68, 'Honda Fit dianteiro'),
(2309, '7894325103088', 0, '8251 / sampel', 1, '108.00', '230.00', 5, 0, './imgs/02-13.jpg', '2021-07-14 20:03:24', 4, 68, 'Corolla 2008-2014 dianteiro'),
(2310, '7899850404358', 0, 'Gtx790 / getoflex ', 1, '68.00', '180.00', 10, 1, './imgs/2021-07-14_17_05_49.jpg', '2021-07-14 20:05:49', 4, 68, 'Hillux / sw4 dianteiro'),
(2311, 'Xxxxx', 0, '10.2225 / getoflex', 1, '35.00', '120.00', 3, 1, './imgs/2021-07-14_17_10_56.jpg', '2021-07-14 20:10:56', 4, 68, 'Ka antigo traseiro'),
(2312, '7892968015232', 0, 'Br13502201202 / monroe', 1, '60.00', '120.00', 4, 1, './imgs/2021-07-14_17_18_11.jpg', '2021-07-14 20:18:11', 4, 68, 'Fiesta antigo / ka antigo dianteiro '),
(2313, '', 0, 'Mg018 / mg', 1, '35.00', '80.00', 5, 1, './imgs/2021-07-22_14_40_29.jpg', '2021-07-14 20:26:49', 4, 112, 'Gol '),
(2316, '7899500996400', 0, 'Rb10387 / jamaica', 1, '34.00', '120.00', 13, 1, './imgs/2021-07-14_17_30_39.jpg', '2021-07-14 20:30:39', 4, 112, 'Uno novo / Fiorino nova / palio novo / grandsiena / uno vivace'),
(2317, '7892968017762', 0, 'Br13104101515 / monroe', 1, '10.00', '60.00', 15, 1, './imgs/2021-07-15_09_50_32.jpg', '2021-07-15 12:50:32', 4, 68, 'Gol / parati traseiro'),
(2318, '7893049900201', 0, 'C-9002 / controil', 1, '43.00', '120.00', 9, 1, './imgs/2021-07-15_10_14_11.jpg', '2021-07-15 13:14:11', 4, 113, 'Palio / strada / siena / palio weekend 1.4 fire flex '),
(2319, '7893049900119', 0, 'C-9001 / controil ', 1, '37.00', '60.00', 8, 1, './imgs/2021-07-15_10_30_29.jpg', '2021-07-15 13:30:29', 4, 113, 'Palio / siena / UNO mille / palio wekeend 1.0 1.3 fire '),
(2320, '7893049900461', 0, 'C-9004 / controil', 1, '37.00', '120.00', 8, 1, './imgs/2021-07-15_10_46_21.jpg', '2021-07-15 13:46:21', 4, 113, 'Fiorino / uno 2004 1.0 1.3 fire '),
(2321, '0000', 0, '10.7099 / getoflex', 1, '15.00', '40.00', 4, 0, './imgs/1-305.jpg', '2021-07-15 13:51:28', 7, 114, 'Etios dianteiro'),
(2322, '7908168178179', 0, '24004 / patral', 1, '17.50', '50.00', 6, 1, './imgs/2021-07-15_10_57_20.jpg', '2021-07-15 13:57:20', 4, 115, 'Amarok 2010'),
(2323, '7897417605651', 0, 'Bfx699 / bfx', 1, '12.00', '40.00', 10, 0, './imgs/1-304.jpg', '2021-07-15 14:01:45', 7, 114, 'Gol g2-G3-G4 DIANTEIRO maior'),
(2324, '7895554025378', 0, '1080016 / kitsbor', 1, '12.00', '30.00', 20, 0, './imgs/1-303.jpg', '2021-09-17 22:19:56', 4, 114, 'Gol / saveiro / voyage g5-g6-g7 dianteiro'),
(2325, '82006511721', 0, '8200651172 / renault', 1, '32.00', '50.00', 11, 0, './imgs/1-231.jpg', '2021-07-15 14:14:44', 7, 68, 'Sandero / logan / duster rolamento do coxim dianteiro'),
(2326, '7891579851086', 0, 'RMM1129HY /  MAGNETI MARELLI', 1, '133.00', '632.00', 1, 0, './imgs/1-272.jpg', '2021-07-15 17:10:12', 7, 111, 'HB20 1.0 - 2012 2013 2014 2015 2016 2017 2018 2019\r\nHB20 1.6 - 2012 2013 2014 2015 2016 2017 2018 2019\r\nHB20S 1.0 - 2012 2013 2014 2015 2016 2017 2018 2019\r\nHB20S 1.6 - 2012 2013 2014 2015 2016 2017 2018 2019'),
(2328, '7891579357106', 0, 'RMM339001M / Magneti Marelli', 1, '201.00', '350.00', 1, 0, './imgs/1-302.jpg', '2021-07-15 17:43:36', 7, 111, 'Ford Courier 1.6 8v Flex Com ou Sem Ar Condicionado 2007 a 2009\r\nFord Ecosport 1.6 8v Flex Com ou Sem Ar Condicionado ano 2003 a 2009\r\nFord Ecosport 1.6 8v Gasolina Com ou Sem Ar Condicionado ano 2003 a 2005\r\nFord Ecosport 2.0 16v Gasolina Com ou Sem Ar Condicionado ano 2003 a 2009\r\nFord Ecosport 2.0 8v Gasolina Com ou Sem Ar Condicionado ano 2003 a 2009\r\nFord Fiesta 1.0 8v Flex Com ou Sem Ar Condicionado ano 2004 a 2009\r\nFord Fiesta 1.0 8v Gasolina Com ou Sem Ar Condicionado ano 2003 a 2006\r\nFord Fiesta 1.0 8v Street Gasolina Com ou Sem Ar Condicionado ano 2003 a 2006\r\nFord Fiesta 1.6 8v Flex Com ou Sem Ar Condicionado ano 2004 a 2009\r\nFord Fiesta 1.6 8v Gasolina Com ou Sem Ar Condicionado ano 2003 a 2005\r\nFord Fiesta 1.6 8v Street Gasolina Com ou Sem Ar Condicionado ano 2003 a 2005'),
(2329, '7890079125437', 0, '12543 / Visconde', 1, '80.00', '295.00', 2, 0, './imgs/1-301.jpg', '2021-07-15 17:52:54', 7, 111, 'FIAT\r\nUNO ATTRACTI. CELEB.1.4 EVO F.FLEX 8V 2P 2012\r\n'),
(2330, '7316572280980', 0, 'Bah-0015e / skf', 1, '56.00', '180.00', 6, 0, './imgs/1-291.jpg', '2021-07-15 20:00:47', 7, 75, 'GRANDSIENA / uno 1.0 1.4 sem abs dianteiro '),
(2331, '7897483491028', 0, 'Lvb0031 / lucas', 1, '56.00', '180.00', 4, 0, './imgs/1-292.jpg', '2021-07-15 20:05:05', 7, 75, 'Palio 1.4 / GRANdsiena / uno novo sem abs dianteiro'),
(2332, '7316576689840', 0, 'Vkbc3577 / skf', 1, '82.00', '220.00', 6, 0, './imgs/1-300.jpg', '2021-07-15 20:08:50', 7, 75, 'Uno / argo / mobi / fiorino nova / grand siena com abs dianteiro'),
(2333, '7899270848015', 0, 'Ir18626 / irb', 1, '79.00', '180.00', 9, 0, './imgs/1-298.jpg', '2021-07-15 20:13:20', 7, 75, 'Palio / siena / strada 1.3 1.5 1.6 com abs dianteiro '),
(2334, '7897483491080', 0, 'Lvb0094 / lucas', 1, '68.00', '180.00', 6, 0, './imgs/1-297.jpg', '2021-07-15 20:20:54', 7, 75, 'Palio / brava / tempra / punto 08-12 / linea 09-12 / idea / doblo / sandero / logan 1.8 sem abs dianteiro '),
(2335, '7316576689543', 0, 'Bah-0012ad/vk210 / skf', 1, '56.00', '180.00', 1, 0, './imgs/1-296.jpg', '2021-07-16 11:50:44', 7, 75, 'PALIO / BRAVA / TEMPRA / PUNTO 08-12 / LINEA 09-12 / IDEA / DOBLO / SANDERO / LOGAN 1.8 SEM ABS DIANTEIRO '),
(2336, '7316575570729', 0, 'Bah-0013e / skf', 1, '57.00', '180.00', 3, 0, './imgs/1-295.jpg', '2021-07-16 12:01:27', 7, 75, 'PUNTO 1.4 / linea 1.4 SEM abs dianteiro '),
(2337, '7316577688798', 0, 'Vkbc20065 / skf', 1, '75.00', '220.00', 4, 0, './imgs/1-294.jpg', '2021-07-16 12:06:11', 7, 75, 'Argo / palio novo / strada / siena / grandsiena 1.6 / linea 1.8 / Sandero / logan com abs dianteiro '),
(2338, '7316577258083', 0, 'Bah-0206/vc560 / skf', 1, '66.00', '180.00', 8, 0, './imgs/1-293.jpg', '2021-07-16 12:35:37', 7, 75, 'Kadett / astra / monza / Fiesta rocam / gol sem abs dianteiro'),
(2339, '7316577688347', 0, 'Vkbc20009 / skf', 1, '102.00', '300.00', 5, 0, './imgs/1-290.jpg', '2021-07-16 12:40:25', 7, 75, 'Gol / fiesta rocam com ABS dianteiro'),
(2340, '7897483491110', 0, 'Lvb445620 / lucas ', 1, '52.00', '180.00', 4, 0, './imgs/1-289.jpg', '2021-07-16 12:42:31', 7, 75, 'Clio 1.0 1.6 sem abs dianteiro '),
(2341, '7316579123143', 0, 'Vkbc6001 / skf ', 1, '76.00', '180.00', 2, 0, './imgs/535225-12.png', '2021-07-16 12:45:01', 7, 75, 'Fiesta rocam / Ecosport rocam traseiro '),
(2342, '7316576870996', 0, 'Vkbc6682 / skf', 1, '132.00', '280.00', 2, 0, './imgs/1-288.jpg', '2021-07-16 12:48:04', 7, 75, 'Duster / fluence dianteiro com e sem abs '),
(2343, '7316577695659', 0, 'Vkbc20038 / skf', 1, '109.00', '200.00', 6, 0, './imgs/1-287.jpg', '2021-07-16 12:52:38', 7, 75, 'Citroen c3-c4 / PEUGEOT 207 1.4 307 / duster traseiro '),
(2344, '7899270846899', 0, 'Ir18084 / irb', 1, '130.00', '280.00', 1, 0, './imgs/1-286.jpg', '2021-07-16 13:08:39', 7, 75, 'Tucson todos / sonata / ix35 / sportage 04-09 / Azera / santa fé dianteiro'),
(2345, '7316574056323', 0, 'Bah-0155a / skf', 1, '130.00', '300.00', 1, 0, './imgs/1-285.jpg', '2021-07-16 13:10:44', 7, 75, 'i30 2009 dianteiro'),
(2346, '7899270848244', 0, 'Ir18599 / irb', 1, '107.00', '180.00', 5, 0, './imgs/1-284.jpg', '2021-07-16 13:14:17', 7, 75, 'Versa / MARCH traseiro '),
(2347, '3413521877346', 0, 'Xgb42539s01r / snr', 1, '98.00', '300.00', 1, 0, './imgs/1-283.jpg', '2021-07-16 13:17:37', 7, 75, 'NEW CIVIC 08-12 com abs DIANTEIRO'),
(2348, '3413521886126', 0, 'GB40547S01R / SNR', 1, '75.66', '200.00', 2, 0, './imgs/1-282.jpg', '2021-07-16 13:48:34', 7, 75, 'Peugeot 206-207 /citroen c3 02-12 DIANTEIRO sem abs'),
(2349, '7899444400711', 0, 'ZA-35BWD26CA68 / nsk', 1, '86.00', '220.00', 1, 0, './imgs/1-281.jpg', '2021-07-16 13:52:39', 7, 75, 'UP dianteiro 35x66x37'),
(2350, '7316574646418', 0, 'Vkba4529a / skf', 1, '41.00', '80.00', 21, 0, './imgs/1-280.jpg', '2021-07-16 13:58:43', 4, 75, 'Corsa / corsa classic / parati / gol traseiro'),
(2351, '7890079122092', 0, '12209 /  MODINE / VISCONDE', 1, '120.00', '186.14', 2, 0, './imgs/1-278.jpg', '2021-07-16 14:02:07', 7, 57, 'FIORINO 1.0 - 2001 2002 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013\r\nFIORINO 1.3 - 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013\r\nUNO 1.0 - 2001 2002 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013\r\nUNO 1.3 - 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013'),
(2352, '7898577570056', 0, '107154197 /  Notus', 1, '8.00', '450.00', -1, 0, './imgs/1-279.jpg', '2021-07-16 14:03:28', 7, 111, '- Palio 1.0/1.3/1.4 8/16V 2001 Em Diante\r\n- Siena 1.0/1.3/1.4 8/16V 2001 Em Diante\r\n- Strada 1.0/1.3/1.4 8/16V 2001 Em Diante\r\n- Idea 1.4 S/Ar'),
(2353, '4014870545581', 0, '563644a1 / fag', 1, '157.00', '280.00', 4, 0, './imgs/1-277.jpg', '2021-07-16 14:03:50', 7, 75, 'Onix / cobalt / spin / prisma novo dianteiro '),
(2354, '7890079125086', 0, '12508 / MODINE / VISCONDE', 1, '88.00', '201.00', 2, 0, './imgs/1-275.jpg', '2021-07-16 14:04:43', 7, 111, 'GOL 1.0 - 1997 1998 1999 2000 2001 2002 2003 2004 2005 2006 2007 2008\r\nPARATI 1.0 - 1997 1998 1999 2000 2001 2002 2003 2004 2005 2006 2007 2008'),
(2356, '7897483491097', 0, 'Lvb443648 / lucas', 1, '63.00', '200.00', 13, 0, './imgs/1-276.jpg', '2021-07-16 14:09:09', 7, 75, 'CORSAo / meriva / montana antiga dianteiro sem abs'),
(2357, '7316576689574', 0, 'Bahb636114 lb/vk210 / skf', 1, '62.00', '200.00', 7, 0, './imgs/1-275.jpg', '2021-07-16 14:11:26', 7, 75, 'Corsao / meriva / montana antiga dianteiro'),
(2358, '7316572392294', 0, 'Vkba4533 / skf', 1, '52.00', '140.00', 7, 0, './imgs/1-274.jpg', '2021-07-16 14:15:56', 7, 75, 'Ford ka antigo traseiro'),
(2359, '740032', 0, 'Ash3805740032 / reviam', 1, '56.00', '150.00', 2, 0, './imgs/1-273.jpg', '2021-07-16 14:20:25', 7, 54, 'Peugeot 206-207 1.4 1.6 com ESTABILIZADORb ROLAMENTO do eixo'),
(2360, '7891579358073', 0, 'RMM695001M / MAGNETI MARELLI', 1, '314.15', '314.00', 3, 0, './imgs/1-272.jpg', '2021-07-16 14:24:36', 7, 111, 'VOLKSWAGEN\r\nFOX 1.0/1.6 2006/2013\r\nGOL 1.0/1.6 GV 2009/2013\r\nPOLO 1.6/2.0 2006/2013\r\nSAVEIRO 1.6 2009/2013\r\nVOYAGE 1.0/1.6 2008/2013'),
(2361, '15434081', 0, '513272jg / reviam', 1, '56.00', '150.00', 1, 0, './imgs/1-271.jpg', '2021-07-16 14:25:07', 7, 54, 'Peugeot 206-207 sem estabilizador traseiro '),
(2362, '7899613607842', 0, 'Vk0008sp / vetor', 1, '56.00', '150.00', 1, 0, './imgs/1-270.jpg', '2021-07-16 14:27:29', 7, 54, 'Peugeot 206-207 sem estabilizador traseiro'),
(2363, '789521532223', 0, 'Ash3840 / vetor', 1, '59.00', '150.00', 2, 0, './imgs/1-269.jpg', '2021-07-16 14:31:26', 7, 54, 'Peugeot 206-207 com estabilIzador TRASEIRO rolamento de eixo'),
(2364, '3276427326758', 0, '732675 /  valeo', 1, '122.00', '310.90', 1, 0, './imgs/1-268.jpg', '2021-07-16 17:27:54', 7, 111, 'CORSA G1 HATCH SEDAN WAGON PICKUP CLASSIC MPFI 1.0 1.4 1.6 SEM AR\r\nCONDICIONADO DE 1994 ATÉ 2007'),
(2365, '7891579343802', 0, 'RMM1066HGM / MAGNETI MARELLI', 1, '120.00', '322.00', 1, 0, './imgs/1-267.jpg', '2021-07-16 17:29:19', 7, 111, 'CORSA 2007 (C/ AR CONDICIONADO)'),
(2366, '7898584372797', 0, 'RV 2225 / Notus', 1, '122.00', '322.00', 9, 0, './imgs/1-265.jpg', '2021-07-16 17:30:18', 7, 111, 'Chevrolet Classic Advantage 1.0 Flex Com Ar / Sem Ar Manual 2014/2015\r\nChevrolet Classic Life/ls 1.0 Flex Com Ar / Sem Ar Manual 2010/2011/2012/2013/2014/2015/2016'),
(2367, '7899430207447', 0, 'PC105015 /  Procooler', 1, '122.00', '379.85', 1, 0, './imgs/1-264.jpg', '2021-07-16 17:31:11', 7, 111, 'Radiador Celta / Prisma 1.0 / 1.4 2006 A 2013 Com Ar'),
(2368, '7899850407809', 0, 'Gtx9292a / getoflex', 1, '61.00', '150.00', 16, 0, './imgs/1-263.jpg', '2021-07-16 17:31:46', 7, 68, 'Sandero / logan dianteira com rolamento'),
(2369, '7897483491042', 0, 'Lvb445539 / lucas', 1, '63.00', '150.00', 2, 0, './imgs/1-262.jpg', '2021-07-16 17:33:34', 7, 75, 'Citroen C3 /peugeot 206 / clio / sandero / logan traseiro'),
(2370, '7891579314871', 0, 'lmm2825 / magneti Marelli', 1, '1.12', '5.00', 50, 0, './imgs/1-261.jpg', '2021-07-16 17:59:21', 7, 117, 'Todos os carros'),
(2372, '7890079201786', 0, '12579 / notus', 1, '88.00', '222.00', 1, 0, './imgs/1-260.jpg', '2021-07-16 18:13:24', 7, 111, 'CELTA 1.0 8V GASOLINA / '),
(2375, '7892637002808', 0, '90409194 / aplic resolit', 1, '120.00', '300.00', 2, 0, './imgs/1-259.jpg', '2021-07-16 18:21:08', 7, 118, 'Celta / corsa / ASTRA ate 2008 / kadett / meriva roletado'),
(2376, '7898577575396', 0, '22224534 / Notus', 1, '122.00', '322.00', 1, 0, './imgs/1-258.jpg', '2021-07-16 18:23:50', 7, 111, 'GM CELTA 10/14 8v C/ACD FLEX 2004/2014\r\nGM PRISMA 10/14 8v C/ACD FLEX 2006/2012'),
(2377, '93361395', 0, '93361395 / gm', 1, '14.00', '30.00', 40, 0, './imgs/1-257.jpg', '2021-07-16 18:29:47', 7, 118, 'Onix / prisma novo / spin / vectra 06-12 / ASTRA 09-11 / camaro 11-14 / s10 nova / montana 08 diante / agile 09 / celta 09 / gol  roletado'),
(2378, '7898582792757', 0, 'Re1302 / ric componentes', 1, '22.00', '70.00', 4, 0, './imgs/1-256.jpg', '2021-07-16 19:02:28', 7, 121, 'CORSA / Corsa classic / prisma e celta VHC VHC-e'),
(2379, '7898582792573', 0, 'Re1284 / ric componentes', 1, '35.00', '70.00', 8, 0, './imgs/1-255.jpg', '2021-07-16 19:09:13', 7, 121, 'Peugeot 206-307 / XSARA / c3 '),
(2380, '84099114', 0, 'Ra1301 / ric componentes', 1, '20.00', '80.00', 4, 0, './imgs/1-254.jpg', '2021-07-16 19:15:42', 7, 120, 'Corsa classic / celta / prisma / vhc vhc-e'),
(2381, '7898582792566', 0, 'Ra1283 / ric componentes', 1, '20.00', '70.00', 4, 0, './imgs/1-252.jpg', '2021-07-16 19:27:40', 7, 120, 'Peugeot 206-307 / xsara / picasso / 1.6 16v '),
(2382, '1978924158796530', 0, 'Va0441091 / metal leve', 1, '20.00', '80.00', 8, 0, './imgs/1-253.jpg', '2021-07-16 19:56:09', 7, 120, 'Peugeot 207 1.4 / Citroen c3 1.4 8v'),
(2383, '7898544297283', 0, 'Bo0140 / brosol', 1, '200.00', '490.00', 1, 0, './imgs/1-251.jpg', '2021-07-16 20:02:17', 7, 122, 'Palio fire / uno mille / fiorino fire / siena fire '),
(2384, '300043', 0, '93348858 / REVIAM', 1, '60.00', '180.00', 1, 0, './imgs/1-250.jpg', '2021-07-16 20:05:35', 7, 123, 'CORSA / CELTA / Corsa classic 2005 '),
(2385, '7897483491127', 0, 'Lvb27530043 / lucas', 1, '60.00', '120.00', 6, 0, './imgs/1-249.jpg', '2021-07-17 11:52:53', 7, 75, 'Corsao / corsa 2002 / corsao hatch traseiro'),
(2386, '4047024699946', 0, 'F000te113d / bosch', 1, '57.00', '150.00', 1, 0, './imgs/1-248.jpg', '2021-07-17 12:02:36', 7, 124, 'Agile / celta / prisma / corsa '),
(2387, '4047024712966', 0, 'F000te146h / bosch', 1, '76.00', '150.00', 1, 0, './imgs/1-247.jpg', '2021-07-17 12:05:40', 7, 124, 'Fiesta rocam 1.0 1.6 / Ecosport rocam '),
(2388, '7898935146640', 0, 'T-010159 / tsa', 1, '57.00', '150.00', 2, 0, './imgs/1-246.jpg', '2021-07-17 12:10:47', 7, 124, 'Sandero 2007-2014 / logan 2007-2014'),
(2389, '7898568768974', 0, '23187 / ds', 1, '58.00', '150.00', 1, 0, './imgs/1-245.jpg', '2021-07-17 12:13:09', 7, 124, 'Mobi 1.0 2016'),
(2392, '7898911774430', 0, 'T-010129 / tsa', 1, '50.00', '150.00', 4, 0, './imgs/1-244.jpg', '2021-07-17 12:18:18', 7, 124, 'Grandsiena / punto 07 / palio novo / siena novo / idea 2006 '),
(2393, '7898935146671', 0, 'T-010162 / tsa ', 1, '60.00', '150.00', 2, 0, './imgs/1-243.jpg', '2021-07-17 12:24:44', 7, 124, 'Peugeot 207 2007 / hoggar 2007-2015'),
(2394, '7898935147296', 0, 'T-030031 / tsa', 1, '40.00', '150.00', 11, 0, './imgs/1-242.jpg', '2021-07-17 12:29:15', 7, 125, 'Fiesta ROCAM 1.0 1.6 / ecosport rocam 1.0 1.6'),
(2395, '7898935147609', 0, 'T-030044 / tsa', 1, '51.00', '180.00', 1, 0, './imgs/1-241.jpg', '2021-07-17 12:33:04', 7, 125, 'Peugeot 207 1.4 8v-207 1.6 16v 2008-2015'),
(2396, '7898568769148', 0, '2430 / ds', 1, '39.00', '180.00', 3, 0, './imgs/1-240.jpg', '2021-07-17 12:35:09', 7, 125, 'Clio / duster / kangoo / logan / sandero '),
(2397, '7898436088692', 0, '7090 / vp', 1, '29.00', '180.00', 1, 0, './imgs/1-239.jpg', '2021-07-17 12:37:09', 7, 125, 'Clio / duster / kangoo / logan / sandero'),
(2398, '7898632040975', 0, 'T-030071 / tsa', 1, '44.00', '180.00', 1, 0, './imgs/1-238.jpg', '2021-07-17 12:40:41', 7, 125, 'Onix / COBALT / prisma novo '),
(2399, '7898436088982', 0, '7096 / vp', 1, '36.00', '170.00', 2, 0, './imgs/1-237.jpg', '2021-07-17 12:44:48', 7, 125, 'Peugeot 206 1.4 / hoggar 1.4-1.6 16v / xsara picasso 1.6 16v '),
(2400, '7898436088975', 0, '7095 / vp', 1, '29.00', '180.00', 1, 0, './imgs/1-236.jpg', '2021-07-17 12:53:07', 7, 125, 'Peugeot 307 1.6-2.0 / peugeot 408 / citroen c4  1.6 / Citroen C3 1.6 16v flex '),
(2401, '7898935147548', 0, 'T-030038 / tsa', 1, '35.00', '180.00', 7, 0, './imgs/1-235.jpg', '2021-07-17 12:56:08', 7, 125, 'Celta / prisma / agile / corsa classic / meriva / montana antiga / corsao / vectra sedan 07-09  '),
(2402, '7898436087336', 0, '7068 / vp', 1, '25.00', '150.00', 3, 0, './imgs/1-233.jpg', '2021-07-17 12:59:28', 7, 125, 'Astra 2.0 sfi 99 / astra 2.0 mpfi 03'),
(2403, '7898436083185', 0, '7016 / vp', 1, '40.00', '150.00', 3, 0, './imgs/1-232.jpg', '2021-07-17 13:04:01', 7, 125, 'Celta 2000 / corsa 2000-2002'),
(2404, '7898568767908', 0, '2434 / ds', 1, '41.76', '104.40', 2, 0, './imgs/1-230.jpg', '2021-09-20 20:33:31', 4, 125, 'Bravo 1.4 16v T-JET 06-11 / linea 1.4 16v turbo / punto 1.4 16v t-jet 2009'),
(2405, '7898935147159', 0, 'T-030016 / tsa', 1, '105.00', '180.00', 1, 0, './imgs/1-229.jpg', '2021-07-17 13:13:01', 7, 125, 'Palio wekeend / PALIO flex 04 / siena FLEX 04 / strada 05 flex / idea 2006 flex'),
(2408, '7895706005267', 0, '7269 / marflex', 1, '11.00', '50.00', 5, 0, './imgs/1-228.jpg', '2021-07-17 13:33:02', 7, 126, 'Uno mille / palio / siena / grand siena / argo / mobi / strada todas'),
(2409, '7895706005458', 0, '7178 / marflex', 1, '14.44', '80.00', 10, 0, './imgs/535225-11.png', '2021-07-17 13:35:59', 4, 126, 'Celta / corsa classic / corsa / prisma / onix / meriva / montana'),
(2410, '7899499008573', 0, '7467 / marfelx', 1, '25.00', '80.00', 1, 0, './imgs/1-227.jpg', '2021-07-17 13:40:48', 7, 127, 'Fox / bora / golf '),
(2411, '7895706006356', 0, '7466 / marflex', 1, '30.00', '80.00', 1, 0, './imgs/1-226.jpg', '2021-07-17 13:43:53', 7, 128, 'Fox / gol / golf'),
(2412, '7895706002754', 0, '7180 / marflex', 1, '30.00', '80.00', 5, 0, './imgs/1-225.jpg', '2021-07-17 13:47:26', 7, 126, 'Gol bola / verona 1.8 '),
(2413, '7895706005595', 0, '7290 / marflex', 1, '18.00', '80.00', 5, 0, './imgs/1-224.jpg', '2021-07-17 13:53:55', 7, 126, 'Golf 1.6 / fox novo total flex'),
(2414, '7895706009036', 0, '7543 / marflex', 1, '20.00', '80.00', 1, 0, './imgs/1-223.jpg', '2021-07-17 13:58:40', 7, 129, 'Fiesta Rocam / EcoSport Rocam'),
(2415, '7895706005021', 0, '7121 / marflex', 1, '20.00', '80.00', 1, 0, './imgs/1-222.jpg', '2021-07-17 14:04:46', 7, 126, 'Sandero/Logan/Clio 1.0 16v '),
(2416, '7895706009494', 0, '7551 / marflex', 1, '15.00', '70.00', 3, 0, './imgs/1-221.jpg', '2021-07-17 14:22:43', 7, 129, 'Kia besta / topic'),
(2417, '7895706008985', 0, '7536 / marflex', 1, '20.00', '80.00', 2, 0, './imgs/1452-1.jpeg', '2021-07-17 14:27:01', 7, 129, 'Corsao / corsa wagon / corsa pick-up / corsa gl'),
(2418, '7895706009005', 0, '7540 / marflex', 1, '15.00', '70.00', 2, 0, './imgs/1-220.jpg', '2021-07-17 14:30:09', 7, 129, 'Gol / parati / saveiro com plug de encaixe'),
(2422, '7895706006509', 0, '7573 / marflex', 1, '15.00', '80.00', 3, 0, './imgs/1452.jpeg', '2021-07-17 14:32:38', 7, 129, 'Gol / saveiro / parati todos g4 '),
(2423, '7895706003287', 0, '7427 / marflex', 1, '16.00', '60.00', 6, 0, './imgs/1-219.jpg', '2021-07-17 14:36:47', 7, 127, 'Uno antigo / tempra '),
(2424, '7898357591233', 0, '341 / 3-rho', 1, '15.00', '70.00', 2, 0, './imgs/1-218.jpg', '2021-07-17 14:45:23', 7, 127, 'Doblo / palio / stilo luz de freio'),
(2425, '7890903015439', 0, 'Nkbo0700 / nakata', 1, '200.00', '400.00', 1, 0, './imgs/1-217.jpg', '2021-07-17 14:48:25', 7, 122, 'Fox 1.0 1.6 / gol / parati'),
(2426, '7898429261736', 0, 'Mb391a / mobesani', 1, '115.00', '190.00', 4, 0, './imgs/1-216.jpg', '2021-07-17 17:48:11', 7, 68, 'Fox / crossfox / spacefox dianteiro'),
(2427, '7890903033716', 0, 'Nkf8070 / nakata', 1, '119.00', '350.00', 6, 0, './imgs/1-215.jpg', '2021-07-17 17:57:42', 7, 130, 'Argo / mobi / uno novo / fiorino nova / siena / grand siena / idea / punto com abs traseiro'),
(2428, '7899823503972', 0, 'Al-1472 / ima', 1, '140.00', '280.00', 5, 0, './imgs/535225-10.png', '2021-07-17 18:02:26', 7, 83, 'Cobalt / onix / prisma novo 2012  INT 22 x 25 ext '),
(2430, '7891342015691', 0, 'Fci778 / tecfil', 1, '20.00', '140.00', 7, 0, './imgs/1-214.jpg', '2021-07-17 18:08:03', 7, 131, 'Hillux 2.5 3.0 2012 secundário'),
(2431, '7898410232301', 0, '6pk1385 / dayco', 1, '21.37', '80.00', 6, 0, './imgs/Sem Título-2.jpg', '2021-07-17 18:13:19', 7, 132, 'Fiat uno barra Palio 1.6 e-torq/Fiat Strada 1.8 e-torq/Fiat Strada 1.6 e-torq/Siena 1.5 97'),
(2432, '7891342005791', 0, 'Arl8825 / tecfil', 1, '13.00', '50.00', 11, 0, './imgs/1-213.jpg', '2021-07-19 11:57:46', 7, 41, 'Corsao / montana / corsa hatch '),
(2433, '7891342016377', 0, 'Arl5144 / tecfil', 1, '38.00', '70.00', 27, 0, './imgs/1-212.jpg', '2021-07-19 12:22:55', 7, 41, 'SANDERO novo / duster 2.0 / logan NOVO gavetinha'),
(2434, '7891342015349', 0, 'Arl1038 / tecfil', 1, '31.00', '70.00', 13, 0, './imgs/1-211.jpg', '2021-07-19 12:29:53', 7, 41, 'City 1.5 16v / fit 1.5 16v 2014'),
(2435, '7891342016674', 0, 'Arl1659 / tecfil', 1, '53.00', '80.00', 6, 0, './imgs/1-210.jpg', '2021-07-19 12:34:45', 7, 41, 'Kikcs 1.6 2016'),
(2436, '7891342015653', 0, 'Arl2340 / tecfil', 1, '28.00', '80.00', 11, 0, './imgs/1-209.jpg', '2021-07-19 12:38:14', 7, 41, 'Hb20 1.6'),
(2437, '6QE721388A', 0, '6qe721388a / Volkswagem', 1, '168.00', '250.00', 4, 1, './imgs/2021-07-21_09_15_16.jpg', '2021-07-21 12:15:16', 4, 133, 'Gol g5-g6 / fox / polo / voyage g5-g6'),
(2438, '07897769478583', 0, '5W30 / TOTAL', 1, '18.00', '35.00', 1046, 0, './imgs/D_NQ_NP_708493-MLB45282512343_032021-O.webp', '2021-07-21 12:32:59', 7, 146, 'Todos sintético'),
(2439, '7892677001304', 0, '90000059 / schadek ', 1, '144.00', '280.00', 3, 1, './imgs/2021-07-21_09_34_27.jpg', '2021-07-21 12:34:27', 4, 122, 'CORSA 1.0 1.6 8V 1.0 1.6 16V / AGILE 10-13 / MONTANA 1.4 08-13 / PRISMA 1.0 1.4 06-12 / MERIVA 1.4 09-12 / '),
(2440, '7892677008488', 0, '90000171 / schedek ', 1, '226.00', '450.00', 2, 1, './imgs/2021-07-21_09_53_39.jpg', '2021-07-21 12:53:39', 4, 122, 'Onix 1.0 1.4 / cobalt 1.4 1.8  / spin 1.8 '),
(2441, '7316575926410', 0, 'Vkch1505541 / skf', 1, '161.00', '250.00', 1, 1, './imgs/2021-07-21_10_03_14.jpg', '2021-07-21 13:03:14', 4, 134, 'Palio 1.4 / punto / doblo'),
(2442, '3404970345074', 0, 'Vkch4748 / skf', 1, '108.00', '270.00', 2, 1, './imgs/2021-07-21_10_09_08.jpg', '2021-09-24 20:11:33', 4, 134, 'Gol / saveiro / fox / voyage '),
(2443, '4005108781222', 0, '5110155100 / luk', 1, '170.00', '250.00', 7, 1, './imgs/2021-07-21_10_12_35.jpg', '2021-07-21 13:12:35', 4, 134, 'Idea 1.4 1.8 / palio 01 diante / siena 03 / strada'),
(2444, '4005108781246', 0, '5120174100 / luk', 1, '170.00', '280.00', 3, 1, './imgs/2021-07-21_10_18_55.jpg', '2021-07-21 13:18:55', 4, 134, 'STRADA 1.3-1.6 / palio 1.0 1.3 1.4 2001 / siena / strada 1.3 1.4 1.6 '),
(2445, '4005108982407', 0, '5120070100 / luk', 1, '100.00', '220.00', 4, 1, './imgs/2021-07-21_10_30_29.jpg', '2021-07-21 13:30:29', 4, 134, 'Grand siena 1.4 / palio 1.4 / siena 12-18'),
(2446, '7316573479444', 0, 'Vkch4750 / skf', 1, '130.00', '260.00', 4, 1, './imgs/2021-07-21_10_34_01.jpg', '2021-07-21 13:34:01', 4, 135, 'Fiesta zetec rocam / Ecosport rocam'),
(2447, '7316573479116', 0, 'Vkch4729 / skf', 1, '126.00', '250.00', 3, 1, './imgs/2021-07-21_10_43_02.jpg', '2021-07-21 13:43:02', 4, 133, 'Festa ROCAM / focus 1.6 rocam 07-19 / ka rocam'),
(2448, '3276425900622', 0, '2117019 / fte', 1, '99.00', '230.00', 6, 1, './imgs/2021-07-21_10_46_57.jpg', '2021-07-21 13:46:57', 4, 133, 'Fiesta rocam / Ecosport rocam 1.0 1.6 8v'),
(2449, '7892861979273', 0, 'Alb5135020 / albarus', 1, '47.00', '150.00', 2, 1, './imgs/2021-07-21_10_58_01.jpg', '2021-07-21 13:58:01', 4, 80, 'Palio / fiesta 96 22x32'),
(2450, '7890903068374', 0, 'Njh135350 / nakata', 1, '44.00', '50.00', 5, 1, './imgs/2021-07-21_11_00_50.jpg', '2021-07-21 14:00:50', 4, 80, 'Palio / doblo / siena / idea / uno 1.4 1.8 16v 8v'),
(2451, '7891579115614', 0, 'Trc03505 / cofap', 1, '44.00', '150.00', 2, 1, './imgs/2021-07-21_11_04_57.jpg', '2021-07-21 14:04:57', 4, 80, 'Palio / siena 22dentes'),
(2452, '7898233433459', 0, 'Al-27 / ima ', 1, '40.00', '150.00', 3, 1, './imgs/2021-07-21_11_08_49.jpg', '2021-07-21 14:08:49', 4, 80, 'Courier 1.6 rocam / ecosport 1.0 1.6 rocam / fiesta rocam 1.6 / ka 1.6 rocam clio lado direito /  21 dentes'),
(2453, 'Xxxxxxx', 0, 'Al-592 / ima', 1, '50.00', '150.00', 1, 1, './imgs/2021-07-21_11_10_50.jpg', '2021-07-21 14:10:50', 4, 80, 'Hb20 1.0 '),
(2454, '7890903054384', 0, 'Nuj53 / nakata', 1, '40.00', '120.00', 2, 1, './imgs/2021-07-21_11_19_23.jpg', '2021-07-21 14:19:23', 4, 80, 'F1000 / troller 96 '),
(2455, '7890903011615', 0, 'Njh135010 / nakata', 1, '48.00', '150.00', 3, 1, './imgs/2021-07-21_11_22_35.jpg', '2021-07-21 14:22:35', 4, 80, 'Palio  / siena / uno / tip0 / palio wekeend 20dentes x 32mm'),
(2456, '7890903011608', 0, 'Njh135020 / nakata', 1, '59.00', '150.00', 1, 1, './imgs/2021-07-21_11_26_38.jpg', '2021-07-21 14:26:38', 4, 80, 'Palio 1.6 8v 16v / palio wekeend 1.5 1.6 8v 16v / courier endura 1.4 16v /  com abs e sem abs '),
(2457, '7890903054421', 0, 'Nuj273 / nakata', 1, '36.96', '150.00', 3, 1, './imgs/2021-07-21_11_29_01.jpg', '2021-07-21 14:29:01', 4, 80, 'Ford f1000 - f400 - 4500-5000 / s10 hillux '),
(2458, '7891579102621', 0, 'Mam00025 / magneti marelli', 1, '20.00', '70.00', 2, 1, './imgs/2021-07-22_09_32_10.jpg', '2021-07-22 12:32:10', 4, 137, 'Verona / f1000'),
(2459, '7898436084549', 0, '7034 / vp', 1, '20.00', '80.00', 2, 1, './imgs/2021-07-22_09_51_17.jpg', '2021-07-22 12:51:17', 4, 137, 'VECTRA / corsa'),
(2460, '7898436084519', 0, '7033 / vp', 1, '9.00', '80.00', 1, 1, './imgs/2021-07-22_10_11_20.jpg', '2021-07-22 13:11:20', 4, 137, 'Astra / CORSA / ômega 2.0 3.0 4.1 '),
(2461, '7898610551554', 0, '4030g / dsc', 1, '21.00', '120.00', 2, 1, './imgs/2021-07-22_10_26_46.jpg', '2021-07-22 13:26:46', 4, 138, 'Cobalt / onix / prisma / spin com guarnição'),
(2462, '7898574040941', 0, '4017 / dsc', 1, '21.00', '120.00', 1, 1, './imgs/2021-07-22_10_36_38.jpg', '2021-07-22 13:36:38', 4, 138, 'Spin / cobalt / onix / prisma'),
(2463, '7898938364089', 0, '4009g / dsc', 1, '21.00', '120.00', 5, 1, './imgs/2021-07-22_10_46_42.jpg', '2021-07-22 13:46:42', 4, 138, 'Fiat 500 / bravo 2011 / doblo 2002 / punto 2008 / linea 2009 '),
(2464, '300190', 0, '300190 / reviam', 1, '79.00', '180.00', 0, 1, './imgs/2021-07-22_10_59_58.jpg', '2021-07-22 13:59:58', 4, 139, 'Corsa / celta / corsa CLASSIC haster'),
(2465, '311529', 0, '311529 / reviam', 1, '19.00', '80.00', 17, 1, './imgs/2021-07-22_11_04_12.jpg', '2021-07-22 14:04:12', 4, 139, 'Corsa / corsa classic / celta  / prisma regulagem'),
(2466, '311510', 0, '311510 / reviam', 1, '20.00', '70.00', 7, 1, './imgs/2021-07-22_11_06_38.jpg', '2021-07-22 14:06:38', 4, 139, 'Corsa / corsa classic / CELTA / prisma / zafira  castelo'),
(2467, '300175', 0, '300175 / reviam', 1, '16.00', '80.00', 10, 1, './imgs/2021-07-22_11_08_49.jpg', '2021-07-22 14:08:49', 4, 139, 'Corsa / corsa classic / celta / prisma liame'),
(2468, '311570', 0, '311570 / reviam', 1, '25.00', '80.00', 14, 1, './imgs/2021-07-22_11_10_43.jpg', '2021-07-22 14:10:43', 4, 139, 'Corsa / corsa classic / celta / prisma reparo da alavanca '),
(2469, '7899660706604', 0, 'T-1099 / templa', 1, '12.00', '40.00', 18, 1, './imgs/2021-07-22_11_14_21.jpg', '2021-07-22 14:14:21', 4, 139, 'Corsa / corsa classic / celta / vectra ANTIGO / kadett / monza  pino da marcha'),
(2470, '7893049901949', 0, 'C-9019 / controil', 1, '36.00', '180.00', 12, 1, './imgs/2021-07-22_11_20_11.jpg', '2021-07-22 14:20:11', 4, 113, 'Prisma 1.4 2009-2012 '),
(2471, '7893049902168', 0, 'C-9021 / controil', 1, '84.00', '220.00', 3, 1, './imgs/2021-07-22_11_25_16.jpg', '2021-07-22 14:25:16', 4, 113, 'Cobalt / spin / onix '),
(2472, '7893049901864', 0, 'C-9018 / controil', 1, '36.00', '180.00', 10, 1, './imgs/2021-07-22_11_27_23.jpg', '2021-07-22 14:27:23', 4, 113, 'Corsa classic / celta / prisma 1.0 '),
(2473, '7890903032283', 0, 'N92030 / nakata', 1, '32.00', '75.00', 14, 1, './imgs/2021-07-23_11_02_40.jpg', '2021-07-23 14:02:40', 4, 65, 'New fiesta / new ka / new Ecosport'),
(2474, '7890903060095', 0, 'N99243 / nakata', 1, '53.00', '80.00', 1, 1, './imgs/2021-07-23_11_16_19.jpg', '2021-07-23 14:16:19', 4, 65, 'Hrv lado esquerdo dianteiro'),
(2475, '7890903060088', 0, 'N99242 / nakata', 1, '53.00', '80.00', 1, 1, './imgs/2021-07-23_11_17_41.jpg', '2021-07-23 14:17:41', 4, 65, 'Hrv lado direito dianteiro '),
(2476, '7890903031644', 0, 'N99088 / nakata', 1, '30.00', '80.00', 4, 1, './imgs/2021-07-23_11_20_31.jpg', '2021-07-23 14:20:31', 4, 65, 'New civic 08 lado direito dianteiro'),
(2477, '7890903031637', 0, 'N99087 / nakata', 1, '30.00', '80.00', 4, 1, './imgs/2021-07-23_11_23_41.jpg', '2021-07-23 14:23:41', 4, 65, 'New civic 08 lado esquerdo dianteiro'),
(2478, '7897483467313', 0, 'Jtsb0176 / trw', 1, '40.00', '100.00', 1, 1, './imgs/2021-07-23_11_28_52.jpg', '2021-07-23 14:28:52', 4, 65, 'FRONTIER 2008 lado direito dianteiro '),
(2479, '7897483467306', 0, 'Jtsb0175 / trw', 1, '40.00', '100.00', 1, 1, './imgs/2021-07-23_11_30_11.jpg', '2021-07-23 14:30:11', 4, 65, 'Frontier 2008 lado esquerdo dianteiro'),
(2480, '7890903032344', 0, 'N99145 / NAKATA', 1, '39.00', '75.00', 24, 0, './imgs/2021-07-23_11_34_51.jpg', '2021-07-23 14:33:43', 4, 65, 'Tiida / versa / march / livina'),
(2481, '7890903032306', 0, 'N99141 / nakata', 1, '34.59', '86.48', 15, 0, './imgs/2021-07-23_11_36_57.jpg', '2021-09-18 21:12:04', 4, 65, 'Duster / OROCH / captur dianteira'),
(2482, '7890903060910', 0, 'N99258 / nakata', 1, '24.00', '80.00', 18, 1, './imgs/2021-07-23_11_38_51.jpg', '2021-07-23 14:38:51', 4, 65, 'Logan / sandero '),
(2483, '145451049700', 0, 'N99198 / nakata', 1, '39.00', '80.00', 9, 1, './imgs/2021-07-23_11_41_01.jpg', '2021-07-23 14:41:01', 4, 65, 'New cerato 12-15 dianteiro'),
(2484, '7890903032320', 0, 'N99143 / nakata', 1, '34.00', '80.00', 11, 1, './imgs/2021-07-23_14_19_51.jpg', '2021-07-23 17:19:51', 4, 65, 'Peugeot 307 / Citroen c4 '),
(2485, '7890903078519', 0, 'N99001 / nakata', 1, '35.00', '80.00', 8, 1, './imgs/2021-07-23_14_22_21.jpg', '2021-07-23 17:22:21', 4, 65, 'Peugeout 206-207-208 / citroen c3'),
(2486, '7890903067834', 0, 'N99279 / nakata', 1, '37.00', '90.00', 14, 1, './imgs/2021-07-23_14_29_21.jpg', '2021-07-23 17:29:21', 4, 65, 'Etios '),
(2487, '7890903078533', 0, 'N99005 / nakata', 1, '33.00', '80.00', 26, 0, './imgs/2021-07-23_14_36_28.jpg', '2021-07-23 17:36:28', 4, 65, 'Corolla / fielder dianteiro'),
(2488, '7890903032436', 0, 'N99154 / nakata', 1, '44.00', '100.00', 7, 1, './imgs/2021-07-23_14_39_17.jpg', '2021-07-23 17:39:17', 4, 65, 'Hillux / sw4 lado direito dianteiro '),
(2489, '7890903032467', 0, 'N99155 / nakata', 1, '44.00', '100.00', 6, 1, './imgs/2021-07-23_14_41_42.jpg', '2021-07-23 17:41:42', 4, 65, 'Hillux / sw4 lado esquerdo dianteiro'),
(2490, '7897499921403', 0, 'N3014 / nakata', 1, '32.00', '75.00', 7, 1, './imgs/2021-07-23_14_47_21.jpg', '2021-07-23 17:47:21', 4, 65, 'Vectra / Montana antiga / corsao '),
(2491, '7890903031729', 0, 'N93031 / nakata', 1, '18.00', '45.00', 8, 1, './imgs/2021-07-23_14_49_20.jpg', '2021-09-18 17:41:24', 4, 65, 'S10 antiga / blazer antiga'),
(2492, '7890903050683', 0, 'N93041 / nakata', 1, '46.00', '120.00', 4, 1, './imgs/2021-07-23_15_07_35.jpg', '2021-07-23 18:07:35', 4, 65, 'S10 nova / trailblazer lado esquerdo dianteiro'),
(2493, '7890903050676', 0, 'N93040 / nakata', 1, '46.00', '120.00', 5, 1, './imgs/2021-07-23_15_09_37.jpg', '2021-07-23 18:09:37', 4, 65, 'S10 nova / trailblazer lado direito dianteiro'),
(2494, '7890903046365', 0, 'N93036 / nakata', 1, '30.00', '75.00', 15, 0, './imgs/2021-07-23_15_19_46.jpg', '2021-09-18 21:05:43', 4, 65, 'Onix / prisma novo / cobalt / spin '),
(2495, '7897499924275', 0, 'N1068 / nakata', 1, '27.57', '68.92', 10, 1, './imgs/2021-07-23_15_26_30.jpg', '2021-10-06 20:17:22', 4, 65, 'FOX TODOS / GOL TODOS / VOYAGE / POLO / SAVEIRO  / SPACEFOX / CROSSFOX'),
(2496, '7890903068077', 0, 'N97015 / nakata', 1, '59.00', '120.00', 1, 1, './imgs/2021-07-23_15_27_58.jpg', '2021-07-23 18:27:58', 4, 65, 'Amarok dianteiro'),
(2497, '7899850401029', 0, 'Mb3025 / mobesani', 1, '59.00', '120.00', 2, 1, './imgs/2021-07-23_15_29_04.jpg', '2021-07-23 18:29:04', 4, 65, 'Amarok dianteiro '),
(2498, '7892968021318', 0, 'Br19153102131 / monroe', 1, '33.00', '80.00', 8, 1, './imgs/2021-07-23_15_30_49.jpg', '2021-07-23 18:30:49', 4, 65, 'Golf sapao / bora'),
(2499, '7897499952377', 0, 'N6081 / nakata', 1, '28.48', '80.00', 30, 1, './imgs/2021-07-23_15_34_44.jpg', '2021-07-23 18:34:44', 4, 65, 'Palio novo / uno novo / mobi / grand siena / fiorino nova / strada nova'),
(2502, '7890903032399', 0, 'N99150 / nakata', 1, '35.00', '90.00', 9, 1, './imgs/2021-07-23_15_36_57.jpg', '2021-07-23 18:36:57', 4, 65, 'Hb20 todos'),
(2503, '7890903078441', 0, 'N92004 / nakata', 1, '29.00', '80.00', 18, 1, './imgs/2021-07-23_16_49_28.jpg', '2021-07-23 19:49:28', 4, 65, 'Fiesta rocam / Ecosport rocam dianteiro'),
(2504, '7890903031897', 0, 'N99093 / nakata', 1, '38.00', '120.00', 1, 1, './imgs/2021-07-23_16_51_41.jpg', '2021-07-23 19:51:41', 4, 65, 'L200 triton lado esquerdo dianteiro'),
(2505, '7891579353641', 0, 'Btc39107 / cofap', 1, '38.00', '120.00', 1, 1, './imgs/2021-07-23_16_53_30.jpg', '2021-07-23 19:53:30', 4, 65, 'L200 triton'),
(2506, '7891579353634', 0, 'BTC39106 / cofap', 1, '38.00', '120.00', 1, 1, './imgs/2021-07-23_16_55_42.jpg', '2021-07-23 19:55:42', 4, 65, 'L200 triton lado DIREITO dianteiro'),
(2507, '7890903031880', 0, 'N99092 / nakata', 1, '38.00', '120.00', 1, 1, './imgs/2021-07-23_16_57_46.jpg', '2021-07-23 19:57:46', 4, 65, 'L200 TRITON lado direito dianteiro'),
(2508, '7890903078489', 0, 'N96002 / nakata', 1, '51.00', '40.00', 4, 0, './imgs/2021-07-23_17_13_22.jpg', '2021-07-23 20:01:47', 7, 65, 'Idea ADVENTURE grande lado esquerdo'),
(2509, '7890903078472', 0, 'N96001 / nakata', 1, '51.00', '40.00', 1, 1, './imgs/2021-07-23_17_08_01.jpg', '2021-07-23 20:08:01', 4, 65, 'Idea adventure lado direito '),
(2510, '7890903078496', 0, 'N96003 / nakata', 1, '31.00', '75.00', 6, 1, './imgs/2021-07-23_17_11_55.jpg', '2021-07-23 20:11:55', 4, 65, 'Doblo ADVENTURE / doblo cargo '),
(2511, '5U0121407C', 0, '5U0121407C / vw', 1, '52.00', '120.00', 6, 1, './imgs/2021-07-24_09_30_57.jpg', '2021-07-24 12:30:57', 4, 90, 'Gol / voyage / fox '),
(2512, '030103485aa', 0, '030103485AA / vw', 1, '14.00', '30.00', 30, 1, './imgs/2021-07-24_09_42_41.jpg', '2021-07-24 12:42:41', 4, 140, 'Gol / fox / voyage / poll'),
(2513, '4005108556813', 0, '5310816100 / ina', 1, '38.00', '150.00', 27, 1, './imgs/2021-07-26_10_50_08.jpg', '2021-07-26 13:50:08', 4, 48, 'PALIO todos / siena todos / grand siena / mobi / argo / strada todas / fiorino todas/ Fiat todos '),
(2514, '7891579331526', 0, 'Gp32822ps / cofap', 1, '302.00', '580.00', 1, 1, './imgs/2021-07-26_11_08_28.jpg', '2021-07-26 14:08:28', 4, 63, 'Uno novo 2010 lado esquerdo dianteiro '),
(2515, '7891579331533', 0, 'Gp32823ps / cofap', 1, '302.00', '580.00', 1, 1, './imgs/2021-07-26_11_10_05.jpg', '2021-07-26 14:10:05', 4, 63, 'Uno novo 2010 lado direito dianteiro'),
(2516, '7897499926880', 0, 'N6067 / nakata', 1, '33.00', '85.00', 12, 1, './imgs/2021-07-26_15_09_30.jpg', '2021-07-26 18:09:30', 4, 65, 'Argo / bravo / strada / punto / stilo / cronos'),
(2517, '7898410232745', 0, '7pk1530 / dayco', 1, '22.00', '80.00', 2, 1, './imgs/2021-07-27_10_11_55.jpg', '2021-07-27 13:11:55', 4, 49, 'Blazer / s10 antiga 2.5 diesel 95'),
(2518, '7898493040756', 0, '7pk1515 / dayco', 1, '35.00', '100.00', 6, 1, './imgs/2021-07-27_10_49_15.jpg', '2021-07-27 13:49:15', 4, 49, 'Hillux 3.0 '),
(2519, '7891551997047', 0, '7pk1180 / continental', 1, '56.00', '100.00', 6, 1, './imgs/2021-07-27_10_56_30.jpg', '2021-07-27 13:56:30', 4, 49, 'Etios '),
(2520, '541 4465 248795', 0, '7pk1165 / gates', 1, '41.00', '100.00', 5, 1, './imgs/2021-07-27_10_58_59.jpg', '2021-07-27 13:58:59', 4, 49, 'March / VERSA 1.0 12v 3 cilindros'),
(2521, '7898410237962', 0, '6pk1050 / dayco', 1, '20.00', '80.00', 8, 1, './imgs/2021-07-28_10_55_44.jpg', '2021-07-28 13:55:44', 4, 49, 'Peugeout 307 1.6 / marea 1.8 16v / bravo 1.8 16v / audi a4 2.0 16v / citroen c3 1.4 1.6 16v / fiesta 1.0 1.6 ROCAM / ka 1.0 1.6 rocam '),
(2522, '7893026460940', 0, 'Pg/202-cp / frasle', 1, '56.00', '180.00', 2, 1, './imgs/2021-07-28_11_13_22.jpg', '2021-07-28 14:13:22', 4, 108, 'Peugeot 206 1.0 1.4 1.6 99 '),
(2523, '4013872857883', 0, '3000001217 / sachs', 1, '641.00', '1300.00', 1, 1, './imgs/2021-07-28_11_26_28.jpg', '2021-07-28 14:26:28', 4, 70, 'Ka sedan 1.0 2014-2018 / ka motor 1.0 3 cilindros '),
(2524, '7898429267813', 0, 'Mb6452 / mobesani', 1, '27.56', '68.90', 16, 1, './imgs/2021-07-28_11_36_46.jpg', '2021-09-18 17:49:59', 4, 84, 'HB20 / corolla traseiro'),
(2525, '4014870539238', 0, '5110329100a1 / luk', 1, '85.00', '180.00', 5, 1, './imgs/2021-07-28_14_33_46.jpg', '2021-07-28 17:33:46', 4, 133, 'Argo / mobi / cronos / grand siena 1.4 1.6 '),
(2526, '7899013310113', 0, '335198 / viemar', 1, '62.00', '150.00', 4, 1, './imgs/2021-07-28_14_56_54.jpg', '2021-07-28 17:56:54', 4, 56, 'Hillux 2016'),
(2527, '7891579859907', 0, 'Rmm1134gm / magneti marelli', 1, '408.00', '600.00', 1, 1, './imgs/2021-07-28_15_12_55.jpg', '2021-07-28 18:12:55', 4, 111, 'Onix / prisma / cobalt spin 2017 manual com ar '),
(2529, '7892968022735', 0, 'Br10002202266 / monroe', 1, '92.00', '180.00', 8, 1, './imgs/2021-07-28_15_38_38.jpg', '2021-07-28 18:38:38', 4, 68, 'UNO novo / palio novo / grand siena / '),
(2530, '7893989002010', 0, '4051 / mte thomson', 1, '28.00', '70.00', 6, 1, './imgs/2021-07-29_08_59_52.jpg', '2021-07-29 11:59:52', 4, 107, 'Uno / strada / corsa'),
(2531, '7798186476001', 0, 'Wr150 / wega', 1, '31.00', '80.00', 0, 1, './imgs/2021-07-29_09_10_21.jpg', '2021-07-29 12:10:21', 4, 41, 'Cruse1.4 turbo 2016 '),
(2532, '7899013322123', 0, '503389 / viemar', 1, '57.00', '150.00', 4, 1, './imgs/2021-07-29_09_23_44.jpg', '2021-07-29 12:23:44', 4, 72, 'Duster / oroch'),
(2533, '7891579315021', 0, 'Lmm64150 / magneti marelli', 1, '7.00', '20.00', 28, 1, './imgs/2021-07-29_09_35_30.jpg', '2021-07-29 12:35:30', 4, 117, 'CARROS h1'),
(2534, '043168925631', 0, 'Pgj19-1 / ge', 1, '44.00', '70.00', 6, 1, './imgs/2021-07-29_09_47_25.jpg', '2021-07-29 12:47:25', 4, 117, 'AUXILIAR 35w h8'),
(2535, '888888', 0, '300001240 / SACHS', 1, '398.00', '1075.00', 1, 0, './imgs/02-12.jpg', '2021-07-29 13:54:27', 7, 70, 'HB20 1.0\r\n'),
(2536, '7798186477497', 0, 'Akx35725 / wega', 1, '14.00', '40.00', 1, 1, './imgs/2021-07-29_11_32_16.jpg', '2021-07-29 14:32:16', 4, 39, 'CRUZE turbo 1.4 flex / Camaro / equinox '),
(2537, '7891579315090', 0, 'Lmm64193 / magneti marelli', 1, '8.00', '20.00', 49, 1, './imgs/2021-07-29_11_35_45.jpg', '2021-07-29 14:35:45', 4, 117, 'Todos h4'),
(2538, '7895467186182', 0, 'Pw968 / willtec', 1, '107.00', '250.00', 6, 1, './imgs/2021-07-29_11_49_40.jpg', '2021-07-29 14:49:40', 4, 42, 'Kikcs 2017 dianteiro'),
(2540, '7897499921304', 0, 'N3045 / nakata', 1, '41.00', '140.00', 0, 1, './imgs/2021-07-29_14_08_34.jpg', '2021-07-29 17:08:34', 4, 72, 'Corsa sedan / corsa pick-up / celta '),
(2541, '7897483425115', 0, 'Rpfx00890 / trw', 1, '11.78', '70.00', 7, 1, './imgs/2021-07-29_14_20_56.jpg', '2021-07-29 17:20:56', 4, 143, 'Corsa / celta dianteiro'),
(2542, '7898500779846', 0, '10535653m / remy', 1, '10.00', '25.00', 4, 0, './imgs/2021-07-29_14_43_59.jpg', '2021-07-29 17:44:00', 7, 144, 'Vectra / astra / Zafira / s10 '),
(2543, '7897056514468', 0, '1755 / zen', 1, '10.00', '25.00', 2, 0, './imgs/2021-07-29_15_52_45.jpg', '2021-07-29 18:52:45', 7, 62, 'Sandero / logan / c4 '),
(2544, '7891342008112', 0, 'Gi04/7 / tecfil', 1, '7.32', '40.00', 88, 0, './imgs/2021-08-02_13_53_37.jpg', '2021-09-18 22:32:39', 4, 59, 'Todos '),
(2545, '7891551016052', 0, '6pk0915 / continental', 1, '26.00', '80.00', 2, 1, './imgs/2021-08-03_09_42_27.jpg', '2021-08-03 12:42:27', 4, 49, 'Jumper 2.8 / monza 1.8 2.0 / ducato 2.8 8v diesel '),
(2546, '7899662107256', 0, '6pk890 / dayco', 1, '15.00', '80.00', 3, 1, './imgs/2021-08-03_09_45_12.jpg', '2021-08-03 12:45:13', 4, 49, 'Kombi 1.4 / gol  1.6 1.8 ap / PARATI 1.6 1.8 ap / POLO 1.0 16v  / saveiro 1.6 power  '),
(2547, '5414465449222', 0, '6pk701sf / gates', 1, '32.00', '120.00', 6, 1, './imgs/2021-08-03_09_46_52.jpg', '2021-08-03 12:46:52', 4, 49, 'Up / saveiro nova / gol '),
(2548, '7891551020523', 0, '5pk1815 / continental', 1, '20.00', '90.00', 2, 1, './imgs/2021-08-03_09_48_06.jpg', '2021-08-03 12:48:06', 4, 49, 'Strada / doblo / idea / corsa '),
(2549, '7898493040794', 0, '5pk1795 / dayco', 1, '21.00', '80.00', 5, 1, './imgs/2021-08-03_09_52_52.jpg', '2021-08-03 12:52:52', 4, 49, 'Celta 1.0 1.4 / prisma 1.4 11 / punto 1.8 / strada 1.8 03 / palio 1.8 / siena 1.8 / Doblo 1.8'),
(2550, '7894758181998', 0, '5pk1770 / gates', 1, '35.00', '80.00', 8, 1, './imgs/2021-08-03_09_56_35.jpg', '2021-08-03 12:56:35', 4, 49, 'COBALT 1.4 1.8 2010 / PRISMA NOVO '),
(2551, '7891551187028', 0, '5pk1745 / goodyear ', 1, '18.00', '80.00', 4, 1, './imgs/2021-08-03_10_00_04.jpg', '2021-08-03 13:00:04', 4, 49, 'Montana 1.8 / corsa / corsa classic 1.0 vhc / stilo 1.8 sem arcon / punto 1.8 /  '),
(2552, '7898410232004', 0, '5pk1250 / dayco', 1, '12.55', '31.38', 5, 1, './imgs/2021-09-18_15_46_29.jpg', '2021-09-18 21:49:11', 4, 49, 'Hb20 1.0 12 / sonata 3.0 v6 24v / kadett 1.8 2.0 / monza 1.8 2.0 / blazee 2.2 '),
(2553, '7894758002217', 0, '5pk1250 / gates', 1, '16.00', '80.00', 2, 1, './imgs/2021-08-03_10_04_13.jpg', '2021-08-03 13:04:13', 4, 49, 'HB20 1.0 12 / SONATA 3.0 V6 24V / KADETT 1.8 2.0 / MONZA 1.8 2.0 / BLAZER 2.2 '),
(2554, '7898410231984', 0, '5pk1190 / dayco', 1, '20.00', '90.00', 10, 1, './imgs/2021-08-03_10_07_54.jpg', '2021-08-03 13:07:54', 4, 49, 'Argo fire flyb/ cronos fire fly / fiorino fire / uno 1.0 fire / palio 1.0 fire / '),
(2555, '7898493042071', 0, '5pk1170 / dayco', 1, '23.00', '80.00', 7, 1, './imgs/2021-08-03_10_13_20.jpg', '2021-08-03 13:13:20', 4, 49, 'Uno vivace 1.0 / uno sporting 1.4 '),
(2556, '7891551092919', 0, '5pk1140 / continental', 1, '29.00', '80.00', 1, 1, './imgs/2021-08-03_10_14_34.jpg', '2021-08-03 13:14:34', 4, 49, 'Honda FIT 1.4 1.5 16v 04 / new fit 1.4 1.5 16v / city 1.5 16v 09'),
(2557, '7894758084510', 0, '5pk1140 / gates', 1, '30.00', '100.00', 2, 1, './imgs/2021-08-03_10_16_30.jpg', '2021-08-03 13:16:30', 4, 49, 'HONDA FIT 1.4 1.5 16V 04 / NEW FIT 1.4 1.5 16V / CITY 1.5 16V 09'),
(2558, '7899662112069', 0, '5pk1030 / dayco', 1, '21.00', '80.00', 6, 1, './imgs/2021-08-03_10_18_09.jpg', '2021-08-03 13:18:09', 4, 49, 'Onix 1.0 1.4 8V 14 / prisma 1.0 1.4 8v 14'),
(2559, '7898410231892', 0, '5pk1025 / dayco', 1, '15.00', '60.00', 4, 1, './imgs/2021-08-03_10_19_17.jpg', '2021-08-03 13:19:17', 4, 49, 'Peugeot 106 1.0'),
(2560, '7894758176802', 0, '4pk1540 / gates', 1, '8.00', '20.00', 26, 1, './imgs/2021-08-03_10_21_33.jpg', '2021-09-18 23:09:49', 4, 49, 'Peugeot 206 1.0 16v '),
(2561, '7891551180784', 0, '6pk1530 / goodyear', 1, '20.00', '70.00', 1, 1, './imgs/2021-08-03_10_29_29.jpg', '2021-08-03 13:29:29', 4, 49, 'Corsa sedan 1.0 16v ');
INSERT INTO `produtos` (`id`, `barra`, `codigo`, `nome`, `qtd`, `valor_compra`, `valor_venda`, `estoque`, `status`, `foto`, `data`, `usuarios_id`, `categorias_id`, `aplicacao`) VALUES
(2562, '7898410232387', 0, '6pk1545 / dayco', 1, '30.00', '80.00', 4, 1, './imgs/2021-08-03_10_31_44.jpg', '2021-08-03 13:31:44', 4, 49, 'BMW 320i 323i 2.0 2.5 24v / golf 1.6 8v / escort 1.8 zerec rocam'),
(2563, '7891551161776', 0, '6pk1200rnh / goodyear', 1, '15.00', '80.00', 1, 1, './imgs/2021-08-03_10_34_17.jpg', '2021-08-03 13:34:17', 4, 49, 'Audi TT 1.8 20v turbo '),
(2564, '7898410232462', 0, '6pk1700 / dayco', 1, '15.00', '99.00', 3, 1, './imgs/2021-08-03_10_37_16.jpg', '2021-08-03 13:37:16', 4, 49, 'C20 4.1 / escort 1.6 rocam '),
(2565, '7894758084800', 0, '6pk1705 / gates', 1, '26.00', '80.00', 4, 1, './imgs/2021-08-04_14_12_54.jpg', '2021-08-04 17:12:54', 4, 49, 'C5 2.0 2008 / c4 Pallas 2.0 16v / Fox / crossfox / spacefox polo 1.6 2.0 / '),
(2566, '7898410232523', 0, '6pk1795 / dayco', 1, '21.00', '80.00', 2, 1, './imgs/2021-08-04_14_15_47.jpg', '2021-08-04 17:15:47', 4, 49, 'Celta 1.0 1.4 / tigra 1.6 16v / master 2.6 16v / gol 1.0 8v 16v at / PARATI 1.0 8v 16v  '),
(2567, '7891551018773', 0, '6pk1820 / continental', 1, '38.00', '90.00', 6, 1, './imgs/2021-08-04_14_19_01.jpg', '2021-08-04 17:19:01', 4, 49, 'Duster / sandero / logan '),
(2568, '7894758160900', 0, '6pk1822 / gates', 1, '33.00', '90.00', 4, 1, './imgs/2021-08-04_14_20_34.jpg', '2021-08-04 17:20:34', 4, 49, 'Duster / sandero / symbol / clio 1.6 16v'),
(2570, '7898410232592', 0, '6pk1905 / dayco', 1, '23.00', '90.00', 3, 1, './imgs/2021-08-04_14_24_49.jpg', '2021-08-04 17:24:49', 4, 49, 'VECTRA 2.2 2.0 8V / CALIBRA 2.0 16V / ASTRA 2.0 16V'),
(2571, '7898410232707', 0, '6pk2240 / dayco', 1, '37.00', '90.00', 1, 1, './imgs/2021-08-04_14_27_41.jpg', '2021-08-04 17:27:41', 4, 49, 'Courier 1.6 16v / ranger 4.0 v6 07 / Ecosport 1.6 rocam / fiesta 1.0 1.6 rocam / saveiro 1.6 ap / gol 1.6 ap '),
(2572, '7891551179535', 0, '6pk1275 / continental', 1, '33.00', '90.00', 3, 1, './imgs/2021-08-04_14_30_15.jpg', '2021-08-04 17:30:15', 4, 49, 'S10 / blazer'),
(2573, '7898493040954', 0, '4pk1538 / dayco', 1, '24.00', '90.00', 5, 1, './imgs/2021-08-04_14_41_21.jpg', '2021-08-04 17:41:21', 4, 49, 'Clio 1.0 16v 2010 / march 1.0 12-15 '),
(2574, '7891551017547', 0, '4pk0975 / goodyear', 1, '20.00', '70.00', 3, 1, './imgs/2021-08-04_14_45_01.jpg', '2021-08-04 17:45:01', 4, 49, 'Uno mille fire / tempra 2.0 16v / tempra 2.0 8V turbo / elantra 1.6 16v 90-95 / '),
(2576, '7891551017462', 0, '4pk0930 / continental', 1, '20.00', '80.00', 1, 1, './imgs/2021-08-04_14_46_29.jpg', '2021-08-04 17:46:29', 4, 50, 'Peugeot 1.0 16v '),
(2577, '7891551017455', 0, '4pk0925 / continental', 1, '20.00', '75.00', 3, 1, './imgs/2021-08-04_14_49_37.jpg', '2021-08-04 17:49:37', 4, 50, 'Sportage 2.0 16v 97 / eclipse 2.0 16v / mazda 626 2.0 16v / mazda 323 2.0 v6 94'),
(2578, '7899662106914', 0, '4pk890 / dayco', 1, '13.00', '60.00', 6, 1, './imgs/2021-08-04_14_52_00.jpg', '2021-08-04 17:52:00', 4, 49, 'Tucson 2.0 / sportage 2.0 16v 06 / i30 2.0 16v 05 / crv 2.0 16v '),
(2579, '7899662106860', 0, '4pk855 / dayco', 1, '11.00', '65.00', 3, 1, './imgs/2021-08-04_14_57_20.jpg', '2021-08-04 17:57:20', 4, 49, 'Civic 1.6 8v 16v 98-00 / fiorino 1.6 8v / elantra 1.5 12v 97 / palio 1.6 8v / peugeout 306 1.6 16v 97 / uno 1.6 8v / audi a4 '),
(2580, '7891551015369', 0, '4pk0855 / continental', 1, '15.00', '70.00', 3, 1, './imgs/2021-08-04_15_00_02.jpg', '2021-08-04 18:00:02', 4, 49, 'CIVIC 1.6 8V 16V 98-00 / FIORINO 1.6 8V / ELANTRA 1.5 12V 97 / PALIO 1.6 8V / PEUGEOUT 306 1.6 16V 97 / UNO 1.6 8V / AUDI A4'),
(2581, '7891551032632', 0, '4pk0820 / continental', 1, '20.00', '70.00', 3, 1, './imgs/2021-08-04_15_01_28.jpg', '2021-08-04 18:01:28', 4, 50, 'Frontier 2.5 tdi 2011 direção hidráulica'),
(2582, '7899662106815', 0, '4ok800 / dayco', 1, '18.00', '80.00', 1, 1, './imgs/2021-08-04_15_05_57.jpg', '2021-08-04 18:05:57', 4, 49, 'Civic 1.6 16v 95-01 / kwid 1.0 / suzuki vitara 1.6 8v 91 / grand vitara 2.0 02 / sandero 1.0 12v 2016 / tracker 2.0 02-04'),
(2583, '7891551034469', 0, '4pk675 / continental', 1, '9.00', '80.00', 3, 1, './imgs/2021-08-04_15_07_45.jpg', '2021-08-04 18:07:45', 4, 49, 'Palio / idea / doblo / picanto'),
(2584, '7899662106679', 0, '3pk905 / dayco', 1, '7.83', '19.57', 14, 0, './imgs/2021-08-04_15_10_48.jpg', '2021-09-18 21:26:54', 4, 50, 'Palio / siena / grand siena / argo / uno todos / strada idea 1.4 / punto 1.4 '),
(2585, '7899662106617', 0, '3pk740 / dayco', 1, '12.00', '70.00', 8, 1, './imgs/2021-08-04_15_13_17.jpg', '2021-08-04 18:13:17', 4, 50, 'LOGAN 07 / sandero 07 / kangoo 1.0 / clio 1.0 8v / peugeot 206 1.0 16v '),
(2586, '7894758210797', 0, '3pk0695 / gates', 1, '20.00', '80.00', 3, 1, './imgs/2021-08-04_15_14_38.jpg', '2021-08-04 18:14:38', 4, 49, 'Hb20 1.0 12v 2012 / '),
(2587, '7891551157021', 0, '3pk0680 / continental', 1, '20.00', '70.00', 4, 1, './imgs/2021-08-04_15_15_38.jpg', '2021-08-04 18:15:38', 4, 50, 'Tucson 2.0 16v direção hidráulica'),
(2588, '7891551014607', 0, '13av0840 / goddyear', 1, '13.00', '60.00', 7, 1, './imgs/2021-08-04_15_17_23.jpg', '2021-08-04 18:17:23', 4, 50, 'Uno / premio / fiorino 94'),
(2589, '', 0, '', 1, '0.00', '0.00', 0, 1, './imgs/2021-08-04_15_17_37.jpg', '2021-08-04 18:17:37', 4, 0, ''),
(2590, '7891551137863', 0, '11av1080 / goddyear', 1, '20.00', '60.00', 2, 1, './imgs/2021-08-04_15_19_03.jpg', '2021-08-04 18:19:03', 4, 49, 'L200 / l300 2.5 diesel 2003'),
(2591, '7891551137085', 0, '10av0975 / goodyear', 1, '20.00', '70.00', 1, 1, './imgs/2021-08-04_15_20_31.jpg', '2021-08-04 18:20:31', 4, 49, 'Pajero 2.8 diesel 94-98 - 3.2 2006'),
(2592, '7894758011998', 0, '6pk1000 / gates', 1, '33.00', '80.00', 6, 1, './imgs/2021-08-04_15_32_20.jpg', '2021-08-04 18:32:20', 4, 50, 'C4 pallas 2.0 16v / picasso 2.0 16v / peugeot 308 2.0 16v 12 / peugeot 406 2.0 16v 05 / peugeot 307 / peugeot sw 2.0 16v '),
(2593, '7898493041999', 0, '6pk1000 / dayco', 1, '33.00', '80.00', 1, 1, './imgs/2021-08-04_15_33_34.jpg', '2021-08-04 18:33:34', 4, 50, 'C4 PALLAS 2.0 16V / PICASSO 2.0 16V / PEUGEOT 308 2.0 16V 12 / PEUGEOT 406 2.0 16V 05 / PEUGEOT 307 / PEUGEOT SW 2.0 16V '),
(2594, '7894758183435', 0, '3pk0890sf / gates', 1, '44.00', '120.00', 6, 1, './imgs/2021-08-04_15_37_53.jpg', '2021-08-04 18:37:53', 4, 50, 'Onix 1.0 1.4 / prisma 1.0 1.4 13 / sonic 1.6 16v ecotec HIDRÁULICA elástica'),
(2595, '7894758179759', 0, '6pk1031sf / gates', 1, '52.00', '120.00', 3, 1, './imgs/2021-08-04_15_40_52.jpg', '2021-08-04 18:40:52', 4, 49, 'New fiesta 1.6 8v sigma 2012 / new ecosport 1.6 flex sigma elástica'),
(2596, '7894758196848', 0, '5pk1030sf / gates ', 1, '47.00', '120.00', 4, 1, './imgs/2021-08-04_15_43_16.jpg', '2021-08-04 18:43:16', 4, 49, 'Prisma 1.0 1.4 spe 2013 / onix 1.0 1.4 2012 '),
(2597, '7898605589944', 0, '5pk1051 / continental', 1, '45.00', '120.00', 4, 1, './imgs/2021-08-04_15_45_48.jpg', '2021-08-04 18:45:48', 4, 49, 'Cobalt 1.4 1.8 8v / onix 1.0 1.4 8v / prisma 1.0 1.4 8v / spin 1.8 8v 2010 2016 todos'),
(2598, '7899662107065', 0, '5pk0868ee / dayco', 1, '42.00', '120.00', 3, 1, './imgs/2021-08-04_15_47_52.jpg', '2021-08-04 18:47:52', 4, 50, 'Focus sigma 1.6 16v '),
(2599, '117206588r1', 0, '117206588r / renault', 1, '34.00', '70.00', 8, 1, './imgs/2021-08-04_15_50_50.jpg', '2021-08-04 18:50:50', 4, 49, 'Sandero 3 cilindros / logan 3 cilindros'),
(2600, '119205655R1', 0, '119205655r / renault', 1, '34.00', '80.00', 8, 1, './imgs/2021-08-04_15_56_24.jpg', '2021-08-04 18:56:24', 4, 50, 'Sandero / logan / kwid'),
(2601, '7898410236743', 0, '6pk1059ee / dayco ', 1, '70.00', '195.00', 3, 1, './imgs/2021-08-04_16_00_10.jpg', '2021-08-04 19:00:11', 4, 49, 'Focis sigma 1.6 16v '),
(2602, '117208023r1', 0, '117208023r / renault', 1, '30.00', '80.00', 2, 1, './imgs/2021-08-04_16_03_08.jpg', '2021-08-04 19:03:08', 4, 49, 'Duster 7pk 1038'),
(2603, '7891551996958', 0, '6pks1060 / continental', 1, '60.00', '180.00', 1, 1, './imgs/2021-08-04_16_06_39.jpg', '2021-08-04 19:06:39', 4, 49, 'Focus sigma / new EcoSport 1.6 sigma 2012 elástica'),
(2604, '7899850401531', 0, 'Mb1272 / mobesani', 1, '15.00', '70.00', 8, 1, './imgs/2021-08-06_11_16_40.jpg', '2021-08-06 14:16:40', 4, 97, 'Cruze 2012'),
(2605, '7898429267318', 0, 'Mb1227 / mobesani', 1, '10.00', '25.00', 12, 1, './imgs/2021-08-06_11_21_31.jpg', '2021-08-06 14:21:31', 4, 97, 'Agile / MONTANA 2012'),
(2606, '7898429267745', 0, 'Mb1231 / mobesani', 1, '14.58', '40.00', 13, 1, './imgs/2021-08-06_11_24_08.jpg', '2021-08-06 14:24:08', 4, 97, 'S10 / trailblazer '),
(2607, '52043805', 0, '52053805 / gm', 1, '14.58', '40.00', 5, 1, './imgs/2021-08-06_11_25_19.jpg', '2021-08-06 14:25:19', 4, 97, 'S10 nova / trailblazer'),
(2608, '93296979', 0, '93296979 / gm', 1, '10.00', '30.00', 38, 1, './imgs/2021-08-06_11_32_14.jpg', '2021-08-06 14:32:14', 4, 97, 'Corsa classic / celta / agile / montana '),
(2609, '7894325107444', 0, '3150 / sampel', 1, '12.00', '50.00', 2, 1, './imgs/2021-08-06_14_08_10.jpg', '2021-08-06 17:08:10', 4, 97, 'Meriva / vectra / montana / corsao'),
(2610, '7898304559767', 0, '30539 / kit&cia', 1, '7.00', '50.00', 4, 1, './imgs/2021-08-06_14_09_58.jpg', '2021-08-06 17:09:58', 4, 97, 'Meriva / vectra / montana / corsao'),
(2611, '7898429267226', 0, 'Mb1226 / mobesani', 1, '12.00', '40.00', 6, 1, './imgs/2021-08-06_14_13_02.jpg', '2021-08-06 17:13:02', 4, 97, 'Onix / spin / cobalt / prism novo'),
(2612, '7892968017373', 0, 'Br15351105406 / monroe', 1, '10.00', '40.00', 4, 1, './imgs/2021-08-06_14_37_34.jpg', '2021-08-06 17:37:34', 4, 97, 'Palio 97 / siena 97 / doblo 23mm'),
(2613, '7892968017366', 0, 'Br15351105405 / monroe', 1, '13.00', '40.00', 5, 1, './imgs/2021-08-06_14_40_01.jpg', '2021-08-06 17:40:01', 4, 97, 'Palii 1.6 96 / siena 1.6 98 20mm'),
(2614, '7892968017359', 0, 'Br15351105404 / Monroe', 1, '16.00', '40.00', 10, 1, './imgs/2021-08-06_14_43_07.jpg', '2021-08-06 17:43:07', 4, 97, 'Palio fire / siena fire / uno fire 19mm'),
(2615, '7899099103630', 0, '10017 / kit&cia', 1, '11.00', '30.00', 14, 1, './imgs/2021-08-06_14_46_59.jpg', '2021-08-06 17:46:59', 4, 97, 'Palio / siena / doblo / strada 12mm bucha da ponta '),
(2616, '7898429261279', 0, 'Mb483 / mobesani', 1, '11.00', '30.00', 1, 1, './imgs/2021-08-06_14_48_59.jpg', '2021-08-06 17:48:59', 4, 97, 'Palio / siena / doblo / strada 12mm bucha ponta'),
(2617, '7898429267592', 0, 'Mb7033 / mobesani', 1, '28.00', '60.00', 6, 1, './imgs/2021-08-06_14_51_42.jpg', '2021-08-06 17:51:42', 4, 97, 'Livina / tiida 22mm '),
(2618, '7898684755025', 0, '8037 / bcr', 1, '87.00', '120.00', 6, 1, './imgs/2021-08-06_14_54_12.jpg', '2021-08-06 17:54:12', 4, 97, 'Frontier'),
(2619, '7899099128121', 0, '50845 / kit&cia', 1, '15.00', '50.00', 11, 1, './imgs/2021-08-06_15_09_07.jpg', '2021-08-06 18:09:07', 4, 97, 'VERSA 2012 / KICKS 2017 20MM'),
(2620, '789955404863', 0, '9020400 / kitsbor ', 1, '17.59', '50.00', 8, 1, './imgs/2021-08-06_15_12_43.jpg', '2021-08-06 18:12:43', 4, 97, 'VERSA 2012 / KICKS 2017 20MM'),
(2621, '7898429260791', 0, 'Mb386 / mobesani', 1, '8.00', '40.00', 7, 1, './imgs/2021-08-06_15_26_20.jpg', '2021-08-06 18:26:20', 4, 97, 'GOLf 99 / audi a3'),
(2622, '7892968024082', 0, 'Br10004102440 / monroe', 1, '8.00', '40.00', 36, 1, './imgs/2021-08-06_15_31_37.jpg', '2021-08-06 18:31:37', 4, 97, 'GOL G5-G6 / FOX / POLO / VOYAGE / CROSSFOX / SPACEFOX '),
(2623, '7898429268612', 0, 'Mb771 / mobesani', 1, '16.46', '50.00', 4, 1, './imgs/2021-08-06_15_37_02.jpg', '2021-08-06 18:37:02', 4, 97, 'Etios'),
(2624, '7894325108335', 0, '8277 / sampel', 1, '16.17', '50.00', 30, 1, './imgs/2021-08-06_15_40_02.jpg', '2021-08-06 18:40:02', 4, 97, 'Etios'),
(2625, '7898429268599', 0, 'Mb770 / mobesani', 1, '7.00', '50.00', 22, 1, './imgs/2021-08-06_15_43_17.jpg', '2021-08-06 18:43:17', 4, 97, 'Corolla 2009 em DIANTE 24mm'),
(2626, '7892968022384', 0, 'Br18054105533 / monroe', 1, '30.00', '60.00', 9, 1, './imgs/2021-08-06_15_45_56.jpg', '2021-08-06 18:45:56', 4, 97, 'Corolla 2003-2005 21mm'),
(2627, '7892968017588', 0, 'Br15051105427 / monroe', 1, '11.00', '60.00', 9, 1, './imgs/2021-08-06_15_53_26.jpg', '2021-08-06 18:53:26', 4, 97, 'HILLUX 99 4x4 sr5 pequena'),
(2628, '7898429263051', 0, 'Mb752 / mobesani', 1, '11.00', '60.00', 4, 1, './imgs/2021-08-06_15_55_51.jpg', '2021-08-06 18:55:51', 4, 97, 'Hillux 3.0 srv 2005 em diante GRANDE 32mm'),
(2629, '7894325116019', 0, '8365 / sampel', 1, '11.00', '60.00', 4, 1, './imgs/2021-08-06_15_57_53.jpg', '2021-08-06 18:57:53', 4, 97, 'HILLUX 3.0 SRV 2005 EM DIANTE GRANDE 32MM'),
(2630, '7895291056149', 0, '20w50 / acdelco', 1, '12.00', '35.00', 1996, 0, './imgs/2021-08-07_08_45_27.jpg', '2021-08-07 11:45:27', 7, 146, 'Todos'),
(2631, '7896636551428', 0, '20w50 / motorcraft', 1, '11.60', '35.00', 297, 1, './imgs/2021-08-07_09_47_51.jpg', '2021-08-07 12:47:51', 4, 146, 'Todos'),
(2632, '24582667', 0, '24582667 / gm', 1, '168.00', '220.00', 8, 1, './imgs/2021-08-07_10_01_40.jpg', '2021-08-07 13:01:40', 4, 71, 'Corsa classic / celta / corsao 1.4 / montana todas / prisma todos / onix / cobalt / spin '),
(2633, '7799076004199', 0, 'Fci1695a / wega', 1, '0.00', '35.00', 6, 1, './imgs/2021-08-07_11_31_52.jpg', '2021-08-07 14:31:52', 4, 59, 'Fiesta rocam '),
(2634, '7898429260685', 0, 'Mb2224 / mobesani', 1, '10.00', '50.00', 5, 1, './imgs/2021-08-09_14_31_37.jpg', '2021-08-09 17:31:37', 4, 97, 'Ecosport 4x2 03-12 dianteira'),
(2635, '7899850400039', 0, 'Mb2304 / mobesani', 1, '12.00', '60.00', 8, 1, './imgs/2021-08-09_14_36_49.jpg', '2021-08-09 17:36:49', 4, 97, 'Ecosport 1.6 2013 / new fiesta / new KA   22.5mm'),
(2637, '7898261417735', 0, 'Mb9032 / mobesani ', 1, '10.00', '40.00', 10, 1, './imgs/2021-08-09_14_45_58.jpg', '2021-08-09 17:45:58', 4, 97, 'Clio / kangoo / megane 95 21mm '),
(2638, '7898429268742', 0, 'Mb1036 / mobesani', 1, '11.00', '70.00', 2, 1, './imgs/2021-08-09_14_47_13.jpg', '2021-08-09 17:47:13', 4, 97, 'L200 triton 2007 25mm '),
(2639, '7892968038286', 0, 'Br10004105522 / monroe', 1, '10.00', '40.00', 14, 1, './imgs/2021-08-09_14_50_46.jpg', '2021-08-09 17:50:46', 4, 97, 'Sandero / logan '),
(2640, '7898429266304', 0, 'Mb9338 / mobesani', 1, '12.00', '40.00', 9, 1, './imgs/2021-08-09_14_52_19.jpg', '2021-08-09 17:52:19', 4, 97, 'Sandero / logan'),
(2641, '7894325108243', 0, '8165 / sampel', 1, '10.00', '60.00', 2, 1, './imgs/2021-08-09_14_54_28.jpg', '2021-08-09 17:54:28', 4, 97, 'Duster / oroch'),
(2642, '7899099113042', 0, '50585 / kit&cia', 1, '10.00', '50.00', 10, 1, './imgs/2021-08-09_15_02_04.jpg', '2021-08-09 18:02:04', 4, 97, 'New civic 2008 -2012 traseiro'),
(2643, '7894325108175', 0, '8280 / sampel', 1, '10.00', '50.00', 4, 1, './imgs/2021-08-09_15_04_28.jpg', '2021-08-09 18:04:28', 4, 97, 'New Civic 2008-2012 traseiro'),
(2644, '7898429266298', 0, 'Mb9337 / mobesani', 1, '14.00', '60.00', 3, 1, './imgs/2021-08-09_15_06_16.jpg', '2021-08-09 18:06:16', 4, 97, 'New Civic 2007 2012 dianteiro'),
(2645, '', 0, '55531 / kit&cia', 1, '22.00', '70.00', 4, 1, './imgs/2021-08-09_15_23_09.jpg', '2021-08-09 18:19:03', 4, 97, 'New civic 2012 mais NOVO 24mm'),
(2646, '', 0, 'Mb9233 / mobesani', 1, '10.00', '60.00', 3, 1, './imgs/2021-08-09_15_23_33.jpg', '2021-08-09 18:22:25', 4, 97, 'Fit 2003 DIANTEIRO 21mm'),
(2647, '7898429268544', 0, 'Mb8002 / mobesani', 1, '12.00', '60.00', 9, 1, './imgs/2021-08-09_15_25_53.jpg', '2021-08-09 18:25:53', 4, 97, 'Hb20 2013'),
(2648, '7898429266328', 0, 'Mb9340 / mobesani', 1, '15.00', '70.00', 0, 1, './imgs/2021-08-09_15_28_20.jpg', '2021-08-09 18:28:20', 4, 97, '6'),
(2649, '7898429268551', 0, 'Mb8003 / MOBESANi', 1, '10.00', '60.00', 4, 1, './imgs/2021-08-09_15_31_59.jpg', '2021-08-09 18:31:59', 4, 97, 'I30 2010 dianteira'),
(2650, '7897417624881', 0, '5428 / bfx', 1, '7.00', '40.00', 4, 1, './imgs/2021-08-09_15_35_43.jpg', '2021-08-09 18:35:43', 4, 97, 'I30 TRASEIRO 23.8mm'),
(2651, '7892968017496', 0, 'Br15051105418 / monroe', 1, '37.00', '70.00', 9, 1, './imgs/2021-08-09_15_38_00.jpg', '2021-08-09 18:38:00', 4, 97, 'Peugeot 206 dianteiro'),
(2652, '7892968018721', 0, 'Br18054105467 / monroe', 1, '23.00', '70.00', 6, 1, './imgs/2021-08-09_15_40_43.jpg', '2021-08-09 18:40:43', 4, 97, 'Peugeot 307 '),
(2653, '7892968018608', 0, 'Br18054105449 / monroe', 1, '24.00', '80.00', 11, 1, './imgs/2021-08-09_15_43_20.jpg', '2021-08-09 18:43:21', 4, 97, 'Citroen C3 dianteiro'),
(2654, '000000', 0, '100169 / getoflex', 1, '20.00', '70.00', 7, 1, './imgs/2021-08-09_15_45_06.jpg', '2021-08-09 18:45:06', 4, 97, 'Citroen C4 pallas'),
(2655, 'Xxx', 0, 'Gp32691 / cofap', 1, '423.32', '700.00', 0, 1, './imgs/2021-08-13_14_56_10.jpg', '2021-08-13 17:56:10', 4, 63, 'Peugeot 307 / citroen C4 lado esquerdo'),
(2656, '7897483494043', 0, 'Rpta02190 / trw', 1, '0.00', '250.00', 2, 1, './imgs/2021-08-16_10_08_59.jpg', '2021-08-16 13:08:59', 4, 87, 'Hillux 2.8 3.0 2002-2015'),
(2658, '7890903051918', 0, 'Nbj5004d / nakata', 1, '135.64', '300.00', 1, 1, './imgs/2021-08-16_10_26_23.jpg', '2021-08-16 13:26:23', 4, 64, 'Citroen c3 / peugeot 208 lado direito'),
(2659, '7891342004787', 0, 'Arl8840 / tecfil', 1, '37.00', '70.00', 2, 1, './imgs/2021-08-16_14_10_05.jpg', '2021-08-16 17:10:05', 4, 41, 'Astra 1.8 2.0 8v 16v / astra 2.0 power flex / zafira / vectra '),
(2660, '7891342015677', 0, 'Ar6075 / tecfio', 1, '58.00', '100.00', 1, 1, './imgs/2021-08-16_14_13_43.jpg', '2021-08-16 17:13:43', 4, 41, 'Jetta 2.0 8v 2010 flex'),
(2661, '7798159121532', 0, 'Fap2361 / wega', 1, '29.20', '80.00', 3, 1, './imgs/2021-08-16_14_37_09.jpg', '2021-08-16 17:37:09', 4, 41, 'Cruze 1.8 16v '),
(2662, '7798186477077', 0, 'Jfa0h40 / wega', 1, '40.00', '80.00', 2, 1, './imgs/2021-08-16_14_53_30.jpg', '2021-08-16 17:53:30', 4, 41, 'Creta 1.6 16v 2017'),
(2664, '7893026761986', 0, 'Fi/91-cpa / frasle', 1, '71.00', '280.00', 2, 1, './imgs/2021-08-16_15_23_10.jpg', '2021-08-16 18:23:10', 4, 108, 'Idea adventure 1.8 '),
(2665, '7891252753188', 0, '75318 / sabo', 1, '47.00', '100.00', 1, 1, './imgs/2021-08-16_15_50_03.jpg', '2021-08-16 18:50:03', 4, 71, 'Hb20 1.6 / creta 1.6 16v'),
(2666, '7891252753157', 0, '75315 / sabo', 1, '51.00', '100.00', 1, 1, './imgs/2021-08-16_15_53_42.jpg', '2021-08-16 18:53:42', 4, 71, 'Hb20 1.0 '),
(2667, '7891252756639', 0, '75663 / sabo', 1, '24.00', '100.00', 2, 1, './imgs/2021-08-16_15_59_40.jpg', '2021-08-16 18:59:40', 4, 71, 'New fiesta 1.6 2013 / focus 2007 / Sigma '),
(2668, '7899013320464', 0, '503235 / viemar', 1, '61.00', '130.00', 4, 1, './imgs/2021-08-16_16_12_12.jpg', '2021-08-16 19:12:12', 4, 72, 'Corolla novo / rav4'),
(2671, '7891579340160', 0, 'Stc04128m / cofap', 1, '70.44', '176.10', 5, 1, './imgs/2021-08-16_16_16_16.jpg', '2021-09-18 21:01:04', 4, 147, 'Agile / montana lado direito'),
(2672, '7891579340177', 0, 'Stc04129m / cofap', 1, '70.44', '176.10', 5, 1, './imgs/2021-08-16_16_21_14.jpg', '2021-09-18 21:01:31', 4, 147, 'Agile / Montana lado esquerdo'),
(2673, '7897499921304', 0, 'N1020 / nakata', 1, '34.00', '80.00', 7, 1, './imgs/2021-08-17_15_40_10.jpg', '2021-08-17 18:40:10', 4, 72, 'Gol bola '),
(2674, '7897499923704', 0, 'N1059 / nakata', 1, '59.00', '140.00', 1, 1, './imgs/2021-08-17_15_42_29.jpg', '2021-08-17 18:42:29', 4, 72, 'Audi A3 inf / golf lado direito'),
(2675, '7897499923711', 0, 'N1058 / nakata', 1, '59.00', '140.00', 3, 1, './imgs/2021-08-17_15_44_15.jpg', '2021-08-17 18:44:15', 4, 72, 'Audi a3 inf / GOLF lado esquerdo'),
(2676, '7899013313695', 0, '503195 / viemar', 1, '65.00', '150.00', 1, 1, './imgs/2021-08-17_15_45_59.jpg', '2021-08-17 18:45:59', 4, 72, 'Crossfox lado esquerdo'),
(2677, '4053203363706', 0, 'Ps.4449 / trw', 1, '41.91', '150.00', 1, 1, './imgs/2021-08-17_15_49_25.jpg', '2021-08-17 18:49:25', 4, 72, 'Gol g5 / voyage g5 / Saveiro g5 / fox lado esquerdo'),
(2678, '4053203362990', 0, 'Ps.4448 / trw', 1, '41.91', '130.00', 2, 1, './imgs/2021-08-17_15_51_22.jpg', '2021-08-17 18:51:22', 4, 72, 'Gol g5 / Saveiro g5 / voyage g5 / fox lado direito'),
(2679, '7897499951080', 0, 'N1074 / nakata', 1, '67.00', '150.00', 2, 1, './imgs/2021-08-17_15_55_59.jpg', '2021-08-17 18:55:59', 4, 72, 'Fox / gol / up / g5 g6 lado esquerdo'),
(2680, '7899013313626', 0, '503192 / viemar', 1, '44.00', '150.00', 10, 1, './imgs/2021-08-17_16_03_00.jpg', '2021-08-17 19:03:00', 4, 72, 'Gol g5 / saveiro g5 / voyage g5 / fox lado direito'),
(2681, '7899013313633', 0, '503193 / viemar', 1, '44.00', '150.00', 9, 1, './imgs/2021-08-17_16_04_52.jpg', '2021-08-17 19:04:52', 4, 72, 'Gol g5 / Saveiro G5 / voyage g5 / fox lado esquerdo'),
(2682, '7897499925371', 0, 'N1065 / nakata', 1, '40.00', '130.00', 5, 1, './imgs/2021-08-17_16_09_55.jpg', '2021-08-17 19:09:55', 4, 72, 'Polo / fox  lado direito'),
(2683, '7897499925364', 0, 'N1064 / nakata', 1, '40.00', '130.00', 7, 1, './imgs/2021-08-17_16_11_13.jpg', '2021-08-17 19:11:13', 4, 72, 'Polo / fox Lado esquerdo'),
(2684, '7897499910827', 0, 'N1012 / nakata', 1, '30.00', '100.00', 3, 1, './imgs/2021-08-17_16_13_43.jpg', '2021-08-17 19:13:43', 4, 72, 'Gol bola '),
(2685, '7893049343954', 0, 'C-3439 / controil ', 1, '24.00', '80.00', 6, 1, './imgs/2021-08-18_10_03_01.jpg', '2021-08-18 13:03:02', 4, 148, 'Celta 01-02 / escort / fiesta street hatch / ka 97 / escort hobby'),
(2687, '7894476033517', 0, '005780 / ate', 1, '34.00', '80.00', 5, 1, './imgs/2021-08-18_10_06_56.jpg', '2021-08-18 13:06:56', 4, 148, 'Palio weekend / Strada 97 / doblo '),
(2688, '7894476081730', 0, '005958 / ate', 1, '32.00', '80.00', 9, 1, './imgs/2021-08-18_10_10_03.jpg', '2021-08-18 13:10:03', 4, 148, 'Palio / siena / uno / grand siena / argo / mobi alumínio'),
(2689, '7893049354486', 0, 'C-3544 / controil', 1, '57.00', '80.00', 5, 1, './imgs/2021-08-18_10_17_23.jpg', '2021-08-18 13:17:23', 4, 148, 'Etios '),
(2690, '7897483467030', 0, 'Bwh906 / trw', 1, '67.00', '120.00', 3, 1, './imgs/2021-08-18_10_22_14.jpg', '2021-08-18 13:22:14', 4, 148, 'Hillux '),
(2691, '7893049354301', 0, 'C-3543 / controil', 1, '99.00', '180.00', 2, 1, './imgs/2021-08-18_10_24_46.jpg', '2021-08-18 13:24:46', 4, 148, 'amarok 2011'),
(2692, '7897483491622', 0, 'Rccr03510 / trw', 1, '23.90', '80.00', 4, 1, './imgs/2021-08-18_10_26_23.jpg', '2021-08-18 13:26:23', 4, 148, 'Gol / voyage / saveiro'),
(2693, '7893049353595', 0, 'C-3535 / controil', 1, '54.00', '100.00', 4, 1, './imgs/2021-08-18_10_38_48.jpg', '2021-08-18 13:38:48', 4, 148, 'Peugeot 207-106 sw passion / citroen c3 06-12 com abs'),
(2694, '', 0, 'C-3512 / controil', 1, '83.00', '150.00', 1, 1, './imgs/2021-08-18_10_47_38.jpg', '2021-08-18 13:42:17', 4, 148, 'Peugeot 206-306-207 passion / citroen xsara lado direito'),
(2695, '7893049351119', 0, 'C-3511 / controil', 1, '83.00', '150.00', 1, 1, './imgs/2021-08-18_10_44_11.jpg', '2021-08-18 13:44:11', 4, 148, 'PEUGEOT 206-306-207 PASSION / CITROEN XSARA LADO esquerdo'),
(2696, '7898591120886', 0, 'K1131 / katho', 1, '44.00', '100.00', 4, 1, './imgs/2021-08-18_14_33_55.jpg', '2021-08-18 17:33:55', 4, 148, 'Duster 4x2'),
(2697, '7891989922697', 0, 'Ccr-92269 / fortec', 1, '60.00', '100.00', 1, 1, './imgs/2021-08-18_14_36_22.jpg', '2021-08-18 17:36:22', 4, 148, 'Duster 4x4 lado esquerdo'),
(2698, '7891989922703', 0, 'Ccr-92270 / fortec', 1, '60.00', '100.00', 1, 1, './imgs/2021-08-18_14_37_43.jpg', '2021-08-18 17:37:43', 4, 148, 'Duster 4x4 lado direito'),
(2699, '8891919922680', 0, 'ccr-92268 / fortec', 1, '60.00', '100.00', 1, 1, './imgs/2021-08-18_14_42_18.jpg', '2021-08-18 17:42:18', 4, 148, 'Duster 4x2 / captur / sandero rs / sandero 15-17'),
(2700, '7897483441269', 0, 'Rccr02910 / trw', 1, '26.68', '80.00', 6, 1, './imgs/2021-08-18_14_44_00.jpg', '2021-08-18 17:44:00', 4, 148, 'Clio 98 / twingo '),
(2701, '4047025896795', 0, 'Cr8653 / bosch', 1, '54.00', '100.00', 3, 1, './imgs/2021-08-18_14_51_22.jpg', '2021-08-18 17:51:22', 4, 148, 'LOGAN 1.6 / sandero 1.6 / symbol 1.6 / clio 1.0 10-13'),
(2702, '7894476062722', 0, '006446 / ate', 1, '39.00', '80.00', 6, 1, './imgs/2021-08-18_14_54_41.jpg', '2021-08-18 17:54:41', 4, 148, 'Clio 2000'),
(2703, '7893049353755', 0, 'C-3637 / controil', 1, '65.00', '100.00', 1, 1, './imgs/2021-08-18_14_58_53.jpg', '2021-08-18 17:58:53', 4, 148, 'Clio 10-13 / symbol / sandero 1.6 / logan 1.6'),
(2704, '7894476061725', 0, '005516 / ate', 1, '20.00', '70.00', 2, 1, './imgs/2021-08-18_15_18_10.jpg', '2021-08-18 18:18:10', 4, 148, 'Escort / Verona / fiesta / ka / celta '),
(2705, '7893049341073', 0, 'C3410 / controil', 1, '22.00', '80.00', 11, 1, './imgs/2021-08-18_15_19_51.jpg', '2021-08-18 18:19:51', 4, 148, 'Astra / corsa classic / tigra / vectra 97-05 / zafira'),
(2706, '7893049352192', 0, 'C-3521 / controil', 1, '35.00', '120.00', 4, 1, './imgs/2021-08-18_15_21_40.jpg', '2021-08-18 18:21:40', 4, 148, 'Vectra 06-11 / zafira / montana 04 / astra 05-11'),
(2707, '7897483441221', 0, 'Rccr02890 / trw', 1, '27.00', '80.00', 7, 1, './imgs/2021-08-18_15_24_58.jpg', '2021-08-18 18:24:58', 4, 148, 'Celta 2002'),
(2708, '3322938446628', 0, 'Bwd6000 / TRw', 1, '0.00', '80.00', 3, 1, './imgs/2021-08-18_15_27_34.jpg', '2021-08-18 18:27:34', 4, 148, 'Onix / cobalt / prisma novo / SONIc'),
(2709, '7898591120732', 0, 'K1085 / katcho', 1, '58.00', '120.00', 7, 1, './imgs/2021-08-18_15_29_13.jpg', '2021-08-18 18:29:13', 4, 148, 'S10 nova'),
(2710, '7899152541966', 0, 'Pvi1065 / perfect', 1, '35.00', '130.00', 1, 1, './imgs/2021-08-18_15_32_51.jpg', '2021-08-18 18:32:51', 4, 72, 'Crossfix 2004 lado direito'),
(2711, '7890903050553', 0, 'N93035 / nakata', 1, '41.00', '140.00', 8, 1, './imgs/2021-08-18_15_34_44.jpg', '2021-08-18 18:34:44', 4, 148, 'Onix / prisma novo / cobalt / spin / sonic / tracker 11-18'),
(2712, '3322937337637', 0, 'Jbj705 / trw', 1, '47.00', '120.00', 6, 1, './imgs/2021-08-18_15_36_16.jpg', '2021-08-18 18:36:16', 4, 148, 'Montana 05-10 / corsa 02-12'),
(2713, '7899013315637', 0, '503351 / viemar', 1, '54.00', '120.00', 10, 1, './imgs/2021-08-18_15_43_53.jpg', '2021-08-18 18:43:53', 4, 72, 'Celta / prisma / corsa grande'),
(2714, '7897499921304', 0, 'N3045 / nakata', 1, '41.00', '120.00', 17, 1, './imgs/2021-08-18_15_48_16.jpg', '2021-08-18 18:48:16', 4, 72, 'Corsa / celta / agile pequeno'),
(2715, '7890903049588', 0, 'N93042 / nakata', 1, '69.00', '140.00', 5, 1, './imgs/2021-08-19_16_14_55.jpg', '2021-08-19 19:14:55', 4, 72, 'Montana nova lado esquerdo'),
(2716, '7890903027395', 0, 'N93019 / nakata', 1, '40.00', '140.00', 3, 1, './imgs/2021-08-19_16_18_54.jpg', '2021-08-19 19:18:54', 4, 72, 'Agile '),
(2717, '7899013318782', 0, '503272 / viemar', 1, '133.00', '350.00', 2, 1, './imgs/2021-08-19_16_22_56.jpg', '2021-08-19 19:22:56', 4, 72, 'Blazer 2012 inferior'),
(2718, '7899013321775', 0, '503271 / viemar', 1, '110.00', '250.00', 2, 1, './imgs/2021-08-19_16_24_22.jpg', '2021-08-19 19:24:22', 4, 72, 'S10 '),
(2719, '7899013321478', 0, '503274 / viemar', 1, '43.00', '150.00', 4, 1, './imgs/2021-08-20_08_48_44.jpg', '2021-08-20 11:48:44', 4, 72, 'Etios'),
(2720, '7899013309162', 0, '503168 / viemar', 1, '69.00', '150.00', 4, 1, './imgs/2021-08-20_08_50_02.jpg', '2021-08-20 11:50:03', 4, 72, 'Hillux'),
(2721, '7890903031385', 0, 'N99128 / viemar', 1, '60.00', '150.00', 4, 1, './imgs/2021-08-20_08_51_51.jpg', '2021-08-20 11:51:51', 4, 72, 'Hillux superior '),
(2722, '7890903031392', 0, 'N99129 / nakata', 1, '0.00', '150.00', 3, 1, './imgs/2021-08-20_08_52_55.jpg', '2021-08-20 11:52:55', 4, 72, 'Hillux inferior'),
(2723, '7899013390665', 0, '503010 / viemar', 1, '47.00', '140.00', 5, 1, './imgs/2021-08-20_08_53_56.jpg', '2021-08-20 11:53:56', 4, 72, 'Clio'),
(2724, '7899152513154', 0, 'Pvi0606 / perfect', 1, '66.00', '150.00', 1, 1, './imgs/2021-08-20_08_55_44.jpg', '2021-08-20 11:55:44', 4, 72, 'Fluence 2011 E-D'),
(2725, '7899013323830', 0, '503388 / viemar', 1, '66.00', '150.00', 1, 1, './imgs/2021-08-20_08_56_40.jpg', '2021-08-20 11:56:40', 4, 72, 'Fluence 2011 e-d'),
(2726, '7897483407760', 0, 'Ps4446 / trw', 1, '35.00', '140.00', 2, 1, './imgs/2021-08-20_08_58_11.jpg', '2021-08-20 11:58:11', 4, 72, 'Logan / sandero 2007'),
(2727, '7897499925340', 0, 'N9189 / nakata', 1, '62.00', '150.00', 2, 1, './imgs/2021-08-20_08_59_47.jpg', '2021-08-20 11:59:47', 4, 72, 'Symbol / clio / megane '),
(2728, '7899013322123', 0, '503389 / viemar', 1, '57.00', '150.00', 4, 1, './imgs/2021-08-20_09_00_58.jpg', '2021-08-20 12:00:58', 4, 72, 'Duster / oroch '),
(2729, '7893049217385', 0, 'C2173 / controil', 1, '128.00', '350.00', 1, 1, './imgs/2021-08-20_09_03_10.jpg', '2021-08-20 12:03:10', 4, 66, 'Gol g5 / voyage g5 / saveiro g5 sem abs '),
(2730, '7894476057216', 0, '006041 / ate', 1, '100.00', '250.00', 1, 1, './imgs/2021-08-20_09_04_51.jpg', '2021-08-20 12:04:51', 4, 66, 'Parati 94 22mm'),
(2731, '7893049215688', 0, 'C2156 / controil', 1, '80.00', '250.00', 3, 1, './imgs/2021-08-20_09_07_23.jpg', '2021-08-20 12:07:23', 4, 66, 'Fiesta rocam 1.0 22.22mm'),
(2732, '7893049217897', 0, 'C2178 / controil', 1, '0.00', '280.00', 0, 1, './imgs/2021-08-20_09_09_30.jpg', '2021-08-20 12:09:30', 4, 66, 'Sandero / Logan 2007 sem ABS 20.63mm'),
(2733, '7893049209601', 0, 'C2096 / controil', 1, '140.00', '280.00', 4, 1, './imgs/2021-08-20_09_11_19.jpg', '2021-08-20 12:11:19', 4, 66, 'Clio 00 / symbol 2009 sem ABS 20.63mm '),
(2734, '7894476060018', 0, '006966 / ate', 1, '280.00', '450.00', 1, 1, './imgs/2021-08-20_09_13_13.jpg', '2021-08-20 12:13:13', 4, 66, 'Sandero / logan com abs 20.64mm'),
(2735, '7897483441733', 0, 'Rccd01530 / trw', 1, '98.00', '350.00', 1, 1, './imgs/2021-08-20_09_14_53.jpg', '2021-08-20 12:14:53', 4, 66, 'Palio / palio weekend / siena sem abs'),
(2736, '7894476064153', 0, '007402 / ate', 1, '129.00', '280.00', 3, 1, './imgs/2021-08-20_09_16_38.jpg', '2021-08-20 12:16:38', 4, 66, 'Grand SIENA / palio novo / uno novo com ABS 22mm'),
(2737, '7893049209977', 0, 'C2092 / controil', 1, '132.00', '280.00', 2, 1, './imgs/2021-08-20_09_20_57.jpg', '2021-08-20 12:20:57', 4, 66, 'Celta 01-05 20.63mm'),
(2738, '7894473421171', 0, '005991 / ate', 1, '90.00', '200.00', 4, 1, './imgs/2021-08-20_09_23_24.jpg', '2021-08-20 12:23:24', 4, 66, 'Corsa wagon PICK-UP 98-07'),
(2739, '7893049217460', 0, 'C2174 / controil', 1, '212.00', '380.00', 2, 1, './imgs/2021-08-20_09_25_12.jpg', '2021-08-20 12:25:12', 4, 66, 'Corsa classic / agile 2012 sem abs 20.63mm'),
(2740, '7893049207584', 0, 'C2075 / controil', 1, '111.00', '280.00', 1, 1, './imgs/2021-08-20_09_27_19.jpg', '2021-08-20 12:27:19', 4, 66, 'Strada / fiorino / palio weekend sem abs 22.22mm'),
(2741, '7893049203326', 0, 'C2033 / controil', 1, '105.00', '280.00', 1, 1, './imgs/2021-08-20_09_29_08.jpg', '2021-08-20 12:29:08', 4, 66, 'Uno antigo / premio / fiorino 20.63mm'),
(2742, '7897483457840', 0, 'Rccd01670 / trw', 1, '148.00', '350.00', 2, 1, './imgs/2021-08-20_09_30_17.jpg', '2021-08-20 12:30:17', 4, 66, 'Celta 06'),
(2743, '7898233430564', 0, 'Al101 / ima', 1, '61.00', '130.00', 3, 1, './imgs/2021-08-20_09_39_32.jpg', '2021-08-20 12:39:32', 4, 149, 'Corsa / prisma / celta / agile / corsa classic traseiro'),
(2744, '7898318874313', 0, 'Hfcd23 / hipperfreios', 1, '46.00', '115.00', 2, 1, './imgs/2021-08-20_09_42_30.jpg', '2021-10-02 17:57:18', 4, 130, 'Corsa classic / CELTA dianteiro'),
(2745, '7892861979518', 0, 'ALB70235 / albarus', 1, '93.00', '232.50', 4, 1, './imgs/2021-08-20_09_45_02.jpg', '2021-09-18 15:19:19', 4, 130, 'Strada / fiorino / palio / siena / idea sem abs traseiro'),
(2747, '7890903033716', 0, 'Nkf8070 / nakata', 1, '119.00', '350.00', 6, 1, './imgs/2021-08-20_09_47_30.jpg', '2021-08-20 12:47:30', 4, 130, 'Argo / mobi / grand siena / uno novo / siena / palio novo com abs traseiro'),
(2748, '7898318874122', 0, 'Hfcd38 / hipperfreios', 1, '35.00', '120.00', 2, 1, './imgs/2021-08-20_10_09_18.jpg', '2021-08-20 13:09:18', 4, 130, 'Uno / palio sem rolamento dianteiro'),
(2749, '7898233437754', 0, 'Al773 / ima', 1, '43.00', '220.00', 2, 1, './imgs/2021-08-20_10_13_51.jpg', '2021-08-20 13:13:51', 4, 130, 'Idea adventure / doblo adventure / palio weekend  / palio adventure / strada / strada locker 37mmx 27 dentes dianteiro '),
(2750, '31030401', 0, '31030401 / vober', 1, '282.00', '450.00', 2, 1, './imgs/2021-08-20_10_18_11.jpg', '2021-08-20 13:18:11', 4, 130, 'Mobi / argo / cronos / uno novo / grand siena / palio NOVo / fiat 500 / punto dianteiro     22 estrias-35mm'),
(2751, '45764', 0, '45764 / reviam', 1, '35.00', '100.00', 1, 1, './imgs/2021-08-20_13_52_23.jpg', '2021-08-20 16:52:23', 4, 149, 'Celta / tigra traseiro'),
(2752, '7898233431134', 0, 'Al801 / ima', 1, '40.00', '120.00', 3, 1, './imgs/2021-08-20_13_55_15.jpg', '2021-08-20 16:55:15', 4, 149, 'Gol / parati / voyage / golf / SAVEIRO / POLO traseiro'),
(2753, '7890903053769', 0, 'Nkf8253 / nakata', 1, '157.00', '350.00', 2, 1, './imgs/2021-08-20_13_58_05.jpg', '2021-08-20 16:58:05', 4, 130, 'Gol / voyage / up / Saveiro 1.6 4furos com abs traseiro'),
(2754, '7898233439529', 0, 'Al551 / ima', 1, '178.00', '350.00', 2, 1, './imgs/2021-08-20_14_00_47.jpg', '2021-08-20 17:00:47', 4, 130, 'Gol / up / voyage 1.6 4 furos traseiro'),
(2755, '7898233431127', 0, 'Al800 / ima', 1, '40.00', '100.00', 1, 1, './imgs/2021-08-20_14_04_48.jpg', '2021-08-20 17:04:48', 4, 130, 'Gol / saveiro / parati / VOYAGE 39mm-22dentes  dianteiro '),
(2756, '7899270851398', 0, 'Ir18561 / irb', 1, '80.00', '350.00', 1, 1, './imgs/2021-08-20_14_07_49.jpg', '2021-08-20 17:07:49', 4, 130, 'Hb20 1.0 1.6 / picanto 1.0 com abs traseiro'),
(2757, '7898233435545', 0, 'Al895 / ima', 1, '280.00', '650.00', 2, 1, './imgs/2021-08-20_14_10_37.jpg', '2021-08-20 17:10:37', 4, 130, 'New civic 2008 5furos com abs traseiro'),
(2758, '7890903033822', 0, 'Nkf8081 / nakata', 1, '160.00', '380.00', 3, 1, './imgs/2021-08-20_14_12_30.jpg', '2021-08-20 17:12:30', 4, 130, 'Hillux 4x4 4x2 dianteiro'),
(2759, '7890903030302', 0, 'Nkf96027 / nakata', 1, '62.00', '150.00', 3, 1, './imgs/2021-08-20_14_15_44.jpg', '2021-08-20 17:15:44', 4, 72, 'PALIO adventure / strada ADAVENTURE / idea adventure lado direito'),
(2760, '7890903030296', 0, 'N96026 / nakata', 1, '62.00', '150.00', 2, 1, './imgs/2021-08-20_14_22_24.jpg', '2021-08-20 17:22:24', 4, 72, 'Palio adventure / strada adventure / idea adventure lado esquerdo'),
(2761, '7897499923728', 0, 'N6058 / nakata', 1, '27.00', '67.50', 22, 0, './imgs/2021-08-20_14_29_50.jpg', '2021-09-18 21:19:13', 4, 72, 'Palio fire / siena fire / strada fire / uno fire / grand siena'),
(2762, '7316572848296', 0, 'Vkds4775 / skf', 1, '27.00', '120.00', 4, 1, './imgs/2021-08-20_14_35_14.jpg', '2021-08-20 17:35:14', 4, 72, 'Uno mille'),
(2763, '7899013301685', 0, '503110 / viemar', 1, '24.00', '120.00', 8, 1, './imgs/2021-08-20_14_36_46.jpg', '2021-08-20 17:36:46', 4, 72, 'Uno mille'),
(2764, '7890903101002', 0, 'N96051 / nakata', 1, '64.00', '150.00', 4, 1, './imgs/2021-08-20_14_38_27.jpg', '2021-08-20 17:38:27', 4, 72, 'Argo / cronos lado esquerdo'),
(2765, '7890903101019', 0, 'N96050 / nakata', 1, '64.00', '150.00', 2, 1, './imgs/2021-08-20_14_39_45.jpg', '2021-08-20 17:39:45', 4, 72, 'Argo / cronos lado direito'),
(2766, '7899013313312', 0, '503185 / viemar', 1, '47.00', '180.00', 3, 1, './imgs/2021-08-20_14_48_48.jpg', '2021-08-20 17:48:48', 4, 72, 'Punto / linea '),
(2767, '7899152533121', 0, 'Pvi1021 / PERFECt', 1, '34.00', '120.00', 3, 1, './imgs/2021-08-20_14_50_32.jpg', '2021-08-20 17:50:32', 4, 72, 'Fiesta 96 / ka 97 / fiesta street / courier'),
(2768, '7899013324028', 0, '503405 / viemar', 1, '64.00', '180.00', 1, 1, './imgs/2021-08-20_14_52_14.jpg', '2021-08-20 17:52:14', 4, 72, 'Focus lado esquerdo'),
(2769, '7899013324011', 0, '503406 / viemar', 1, '64.00', '180.00', 1, 1, './imgs/2021-08-20_14_53_28.jpg', '2021-08-20 17:53:28', 4, 72, 'Lado direito'),
(2770, '7890903061696', 0, 'N99272 / nakata', 1, '0.00', '112.50', 2, 1, './imgs/2021-08-20_14_57_33.jpg', '2021-09-23 21:04:59', 4, 72, 'New fiesta / new ka / new ecosport '),
(2771, '7890903006291', 0, 'N2136 / nakata', 1, '48.00', '140.00', 5, 1, './imgs/2021-08-20_14_59_02.jpg', '2021-08-20 17:59:02', 4, 72, 'Fiesta rocam / Ecosport rocam '),
(2772, '7899152543236', 0, 'Pvi0903 / perfect', 1, '51.00', '150.00', 5, 1, './imgs/2021-08-20_15_01_33.jpg', '2021-08-20 18:01:33', 4, 72, 'Peugeot 208 / citroen c3 novo '),
(2773, '7899152537235', 0, 'Pvi0121 / perfect', 1, '40.00', '120.00', 3, 1, './imgs/2021-08-20_15_03_28.jpg', '2021-08-20 18:03:28', 4, 72, 'Citroen c4 todos / peugeot 3008 307'),
(2774, '7899013313183', 0, '503196 / viemar', 1, '65.00', '180.00', 2, 1, './imgs/2021-08-20_15_04_33.jpg', '2021-08-20 18:04:33', 4, 72, 'Tucson'),
(2775, '7899013320945', 0, '503264 / viemar', 1, '44.00', '150.00', 2, 1, './imgs/2021-08-20_15_06_36.jpg', '2021-08-20 18:06:36', 4, 72, 'Hb20 '),
(2776, '7899013310731', 0, '503090 / viemar', 1, '93.00', '180.00', 1, 1, './imgs/2021-08-20_15_07_54.jpg', '2021-08-20 18:07:54', 4, 72, 'Sonata'),
(2777, '7899013315217', 0, '503335 / viemar', 1, '90.00', '190.00', 2, 1, './imgs/2021-08-20_15_10_15.jpg', '2021-08-20 18:10:15', 4, 72, 'FRONTIER 08-12'),
(2778, '7890903044323', 0, 'N99175 / nakata', 1, '55.00', '180.00', 2, 1, './imgs/2021-08-20_15_11_35.jpg', '2021-08-20 18:11:35', 4, 72, 'Frontier superior'),
(2779, '7890903060620', 0, 'N99247 / nakata', 1, '54.00', '160.00', 2, 1, './imgs/2021-08-20_15_13_13.jpg', '2021-08-20 18:13:13', 4, 72, 'New civic 2013-2015'),
(2780, '7899013315330', 0, '503338 / viemar', 1, '40.00', '140.00', 2, 1, './imgs/2021-08-20_15_14_40.jpg', '2021-08-20 18:14:40', 4, 72, 'Fit 2009-2014'),
(2781, '7897483407647', 0, 'Ps4443 / trw', 1, '30.00', '120.00', 1, 1, './imgs/2021-08-20_15_15_54.jpg', '2021-08-20 18:15:54', 4, 72, 'Fit 04-09'),
(2782, '7899152537075', 0, 'Pvi2002 / perfect', 1, '57.00', '150.00', 1, 1, './imgs/2021-08-20_15_17_25.jpg', '2021-08-20 18:17:25', 4, 72, 'New civic 2007-2011 lado esquerdo'),
(2783, '7899152537082', 0, 'Pvi2003 / perfect', 1, '57.00', '150.00', 2, 1, './imgs/2021-08-20_15_18_46.jpg', '2021-08-20 18:18:46', 4, 72, 'New civic 2007-2011 lado direito'),
(2784, '7897499943306', 0, 'N6075 / nakata', 1, '68.00', '150.00', 2, 1, './imgs/2021-08-28_11_30_19.jpg', '2021-08-28 14:30:19', 4, 0, 'Idea exceto adventure '),
(2785, '7897499943306', 0, 'N6075 / nakata', 1, '68.50', '150.00', 2, 1, './imgs/2021-08-28_11_31_33.jpg', '2021-08-28 14:31:33', 4, 72, 'Idea exceto adventure'),
(2786, '7899013376058', 0, '680192 / viemar', 1, '23.00', '140.00', 10, 1, './imgs/2021-08-28_14_06_07.jpg', '2021-08-28 17:06:07', 4, 57, 'Gol g5 / voyage g5'),
(2787, '7899013321645', 0, '680559 / viemar', 1, '34.00', '150.00', 10, 1, './imgs/2021-08-28_14_29_59.jpg', '2021-08-28 17:29:59', 4, 57, 'Sandero / Logan 2013'),
(2789, '7898298060386', 0, '1541 / fby', 1, '27.00', '67.50', 10, 0, './imgs/2021-08-28_15_10_50.jpg', '2021-08-28 18:10:50', 7, 103, 'Gol / voyage / fox / polo / spacefox / crossfox'),
(2790, '7898436084779', 0, '7045 / vp', 1, '24.00', '150.00', 8, 1, './imgs/2021-08-31_08_34_59.jpg', '2021-08-31 11:34:59', 4, 125, 'Palio fire / siena fire / uno fire / Strada fire'),
(2791, '7798159121549', 0, 'Jfa0h21 / wega', 1, '25.00', '80.00', 2, 1, './imgs/2021-08-31_08_43_23.jpg', '2021-08-31 11:43:23', 4, 41, 'Ix35 2.0 12 / sportage 2.7 2.0 / new tucson / '),
(2792, '7891252824321', 0, '82432 / sabo', 1, '46.00', '120.00', 3, 1, './imgs/2021-08-31_10_53_46.jpg', '2021-08-31 13:53:46', 4, 150, 'Citroen 1.6 / peugeout 1.6'),
(2793, '4005108817037', 0, '622322900 / luk', 1, '527.00', '900.00', 1, 1, './imgs/2021-08-31_11_20_00.jpg', '2021-08-31 14:20:00', 4, 70, 'Hb20 1.6'),
(2794, '4013872872329', 0, '3000001240 / sachs', 1, '398.32', '995.80', 2, 1, './imgs/2021-08-31_14_13_07.jpg', '2021-09-18 17:16:22', 4, 70, 'Hb20 1.0'),
(2795, '4013872856930', 0, '3000001211 / sachs', 1, '254.00', '500.00', 4, 1, './imgs/2021-08-31_14_15_43.jpg', '2021-08-31 17:15:43', 4, 70, 'Corsa classic / celta / agile sem atuador '),
(2796, '7892294626706', 0, '3000000113 / sachs', 1, '218.00', '550.00', 6, 1, './imgs/2021-08-31_14_36_25.jpg', '2021-08-31 17:36:25', 4, 70, 'Palio fire / siena fire / fiorino fire / strada fire '),
(2797, '087295945476', 0, 'Oza641a2 / ntk', 1, '188.00', '350.00', 2, 1, './imgs/2021-08-31_14_47_12.jpg', '2021-08-31 17:47:12', 4, 78, 'Palio fire / siena fire '),
(2798, '7892968019674', 0, 'Br11302101699 / monroe', 1, '30.00', '120.00', 6, 1, './imgs/2021-08-31_15_09_16.jpg', '2021-08-31 18:09:16', 4, 95, 'PALIO / SIENA / STRADA SEM ESTABILIZADOR LADO direito'),
(2799, '7892968024890', 0, 'Br10001102610 / monroe', 1, '24.00', '120.00', 4, 1, './imgs/2021-08-31_15_16_06.jpg', '2021-08-31 18:16:06', 4, 95, 'S10 nova superior'),
(2800, '7899152553174', 0, 'Cir0806 / perfect', 1, '61.00', '140.00', 4, 1, './imgs/2021-08-31_15_20_08.jpg', '2021-08-31 18:20:08', 4, 148, 'Sandero 08-14 / logan 08-13 / symbol 09-14 / up'),
(2801, '7891579315052', 0, 'Lmm64151 / magneti marelli', 1, '6.70', '20.00', 30, 1, './imgs/2021-08-31_15_24_47.jpg', '2021-08-31 18:24:47', 4, 117, 'Todos '),
(2802, '7891579308504', 0, 'Stc04127m / cofap', 1, '56.00', '140.00', 10, 1, './imgs/2021-08-31_16_00_36.jpg', '2021-08-31 19:00:36', 4, 147, 'Celta / corsa CLASSIC lado esquerdo'),
(2803, '7891579308498', 0, 'Stc04126m / cofap', 1, '56.00', '140.00', 12, 1, './imgs/2021-08-31_16_02_51.jpg', '2021-08-31 19:02:51', 4, 147, 'Celta / Corsa classic lado direito'),
(2804, '7890903073262', 0, 'Nk0116 / nakata', 1, '68.00', '120.00', 6, 1, './imgs/2021-08-31_16_15_12.jpg', '2021-08-31 19:15:12', 4, 84, 'DOBLo / FIORINO traseiro'),
(2805, '7892968017205', 0, 'Br10104401480 / monroe', 1, '12.00', '65.00', 14, 1, './imgs/2021-08-31_16_21_01.jpg', '2021-08-31 19:21:01', 4, 84, 'Gol / parati / up / Fox / saveiro / crosfox / SPACEFOX dianteiro '),
(2806, '7891579355003', 0, 'Gp30535 / cofap', 1, '338.00', '600.00', 1, 1, './imgs/2021-08-31_17_29_01.jpg', '2021-08-31 20:29:01', 4, 63, 'Hb20 lado esquerdo dianteiro'),
(2807, '7898577570056', 0, 'Nt7091523 / notus', 1, '173.00', '350.00', 3, 1, './imgs/2021-08-31_17_34_49.jpg', '2021-08-31 20:34:49', 4, 111, 'Palio fire / siena fire / strada 1.0 1.3 1.4 '),
(2808, '7891579350725', 877135, 'BI0067MM /  MARELLI', 1, '254.00', '635.00', 2, 0, './imgs/0001-1.jpg', '2021-09-18 17:27:35', 4, 51, 'AGILE 1.4 / CORSA/ MONTANA'),
(2809, '7899013322291', 944883, '680565 / VIEMAR', 1, '59.86', '149.65', 1, 0, './imgs/001-15.jpg', '2021-09-02 19:15:11', 4, 57, 'BARRA DIR AXIAL TORO/JEEP RENEGADE'),
(2810, '7891252020686', 0, '02068 / sabo', 1, '20.00', '80.00', 1, 1, './imgs/2021-09-03_09_19_52.jpg', '2021-09-03 12:19:52', 4, 152, 'Gol / parati / passat saida transmissao'),
(2812, '7899751926256', 0, 'Gs2286 / gauss', 1, '117.00', '180.00', 0, 1, './imgs/2021-09-03_14_37_04.jpg', '2021-09-03 17:37:04', 4, 153, 'Fiorino 1.4 nova / strada 1.6 traseiro'),
(2814, '7891252020099', 0, '02009 / sabo', 1, '15.00', '80.00', 0, 1, './imgs/2021-09-03_14_42_42.jpg', '2021-09-03 17:42:42', 4, 152, 'Uno / siena / palio FIRE eixo piloto'),
(2815, '3276425014015', 0, '501401 / valeo', 1, '54.00', '120.00', 1, 1, './imgs/2021-09-03_15_17_06.jpg', '2021-09-03 18:17:06', 4, 144, 'Sandero / Logan / clio'),
(2816, '3276425014909', 0, '501490 / valeo', 1, '49.00', '140.00', 1, 1, './imgs/2021-09-03_15_19_31.jpg', '2021-09-03 18:19:31', 4, 155, 'Etios'),
(2817, '7898935147234', 0, 'T030024 / tsa', 1, '40.00', '150.00', 0, 1, './imgs/2021-09-03_15_24_20.jpg', '2021-09-03 18:24:20', 4, 125, 'Palio / siena / strada / palio weekend 97-01 '),
(2818, '7891414396154', 0, '20w50 / petronas ', 1, '11.50', '30.00', 2997, 1, './imgs/2021-09-04_14_50_10.jpg', '2021-09-04 17:50:10', 4, 146, 'Todos'),
(2819, '7896587325222', 0, '5w30 / motrio', 1, '16.00', '35.00', 2996, 1, './imgs/2021-09-04_14_52_22.jpg', '2021-09-04 17:52:22', 4, 146, 'Todos'),
(2820, '7897483400051', 0, 'Dot4 / trw varga', 1, '17.00', '35.00', 40, 1, './imgs/2021-09-04_14_56_17.jpg', '2021-09-04 17:56:17', 4, 156, 'Carros de embreagem com ATUADOR 500ml'),
(2821, '7897483400020', 0, 'Dot3 / trw varga', 1, '13.00', '25.00', 40, 1, './imgs/2021-09-04_14_58_06.jpg', '2021-09-04 17:58:06', 4, 156, 'Carros sem atuador hidráulico de embreagem 500ml'),
(2822, '7896587325208', 0, '15w40 / motrio', 1, '14.00', '25.00', 2987, 1, './imgs/2021-09-04_15_00_22.jpg', '2021-09-04 18:00:22', 4, 146, 'Diesel semi sintético'),
(2823, '7897170507995', 0, '80w90 / uni', 1, '18.00', '40.00', 1000, 1, './imgs/2021-09-04_15_02_39.jpg', '2021-09-04 18:02:39', 4, 146, 'Caixa de marcha'),
(2824, '7898587461474', 0, 'Paraflu ', 1, '15.50', '40.00', 693, 1, './imgs/2021-09-04_15_06_49.jpg', '2021-09-04 18:06:49', 4, 157, 'Todos '),
(2825, '045908', 0, '05908/palio Fire', 1, '5.00', '12.50', 1, 0, './imgs/001-18.jpg', '2021-09-08 11:51:44', 4, 158, 'Palio fire'),
(2826, '7899027349437', 0, 'Sp357 / monroe', 1, '261.00', '652.50', 2, 1, './imgs/2021-09-10_09_54_24.jpg', '2021-09-17 20:28:02', 4, 63, 'Ka new / new fiesta com estabilizador lado ESQUERDO dianteiro dianteiro'),
(2827, '7899027349444', 0, 'Sp358 / monroe', 1, '261.00', '652.50', 2, 1, './imgs/2021-09-10_09_56_15.jpg', '2021-09-17 20:07:12', 4, 63, 'Ka new / new fiesta com estabilizador lado DIREITO dianteiro'),
(2828, '7891579680136', 0, 'Ksc04119s / cofao', 1, '37.91', '94.77', 12, 1, './imgs/2021-09-10_10_01_56.jpg', '2021-09-18 18:08:35', 4, 84, 'Onix / prisma novo / cobalt / spin dianteiro'),
(2829, '7891579680136', 0, 'Ksc32104s / cofap', 1, '24.82', '62.05', 10, 1, './imgs/2021-09-10_10_05_12.jpg', '2021-09-18 18:06:19', 4, 84, 'Hb20 dianteiro'),
(2830, '0', 0, 'Bpr7e-d / ngk', 1, '0.00', '0.00', 0, 1, './imgs/2021-09-10_10_10_08.jpg', '2021-09-10 13:10:08', 4, 52, 'Corsa 1.4 / agile 1.4 / prisma 1.4 / Onix 1.4 / cobalt 1.4 1.8 / montana 1.4 1.8 / spin 1.8 '),
(2831, '7892861979129', 0, 'Alb325129 / albarus', 1, '100.00', '350.00', 0, 1, './imgs/2021-09-10_10_24_59.jpg', '2021-09-10 13:24:59', 4, 83, 'GOL bola g2 g3 g4 sem abs '),
(2832, '4047025073585', 0, 'F000te159a / bosch', 1, '163.41', '408.52', 13, 1, './imgs/2021-09-10_15_32_56.jpg', '2021-09-18 21:53:23', 4, 159, 'Todos flex'),
(2833, '4047025072731', 0, 'F000te0103 / bosch', 1, '147.00', '367.50', 7, 1, './imgs/2021-09-10_15_35_18.jpg', '2021-09-18 21:57:56', 4, 159, 'Todos apenas combustível'),
(2834, '7892679069401', 0, 'N457 / cobreq', 1, '61.00', '180.00', 15, 1, './imgs/2021-09-11_10_26_08.jpg', '2021-09-11 13:26:08', 4, 42, 'Sandero novo / logan novo'),
(2835, '7891252093000', 0, '09300 / sabo', 1, '16.00', '80.00', 20, 1, './imgs/2021-09-13_13_45_14.jpg', '2021-09-18 14:04:26', 4, 152, 'Palio fire / punto fire / siena fire / strada fire retentor de VALVULA fire'),
(2836, '7898410231977', 0, '5pk1165 / dayco', 1, '33.00', '80.00', 10, 1, './imgs/2021-09-14_14_46_31.jpg', '2021-09-14 17:46:31', 4, 132, 'Idea 1.4 fire / palio 1.4 8v fire / punto 1.4 fire / fiorino 1.3 1.4 / uno 1.0 fire / mobi 1.0 fire 2011'),
(2837, '7899662173718', 0, '5pk1051ee / dayco', 1, '33.00', '180.00', 8, 1, './imgs/2021-09-16_09_13_41.jpg', '2021-09-16 12:13:41', 4, 49, 'Onix / prisma novo / spin / cobalt elastica'),
(2838, '7899850400862', 0, 'Mb9356 / mobesani', 1, '8.00', '30.00', 20, 1, './imgs/2021-09-16_09_46_16.jpg', '2021-09-16 12:46:16', 4, 97, 'Duster / oroch '),
(2839, '7898404513997', 0, 'Bpsa0094680 / mazzicar', 1, '110.00', '240.00', 2, 1, './imgs/2021-09-16_09_51_05.jpg', '2021-09-16 12:51:05', 4, 108, 'Onix / prisma novo'),
(2840, '125333', 0, 'teste para excliur', 1, '2533.00', '225.00', 222, 1, './imgs/2021-09-17_10_08_32.jpg', '2021-09-17 13:08:32', 4, 0, '22222'),
(2841, '125333', 0, 'teste para excliur', 1, '2533.00', '225.00', 222, 1, './imgs/2021-09-17_10_13_43.jpg', '2021-09-17 13:13:49', 4, 0, '22222'),
(2842, '125333', 0, 'teste para excliur', 1, '2533.00', '225.00', 222, 1, './imgs/2021-09-17_10_14_11.jpg', '2021-09-17 13:14:14', 4, 0, '22222'),
(2844, '7898429268285', 0, 'Mb2270a / mobesani', 1, '97.00', '242.50', 4, 1, './imgs/2021-09-17_15_16_03.jpg', '2021-09-17 18:16:03', 4, 68, 'New fiesta / new ka com rolamento dianteiro'),
(2845, '7891551157755', 0, '5pk1155 / continental', 1, '55.00', '137.50', 4, 1, './imgs/2021-09-17_15_37_19.jpg', '2021-09-17 18:37:19', 4, 49, 'Punto 1.4 8v'),
(2846, '7798001692623', 0, 'Jfa0292/2 / wega', 1, '50.00', '125.00', 8, 1, './imgs/2021-09-17_16_45_42.jpg', '2021-09-17 19:45:42', 4, 41, 'Hillux sw4'),
(2847, '3276427351248', 0, '735124 / valeo', 1, '233.00', '582.50', 1, 1, './imgs/2021-09-17_16_49_04.jpg', '2021-09-17 19:49:04', 4, 111, 'Gol g5 com arcondicionado 1.0 1.6'),
(2848, '7898435855998', 0, '14424910 / bastos', 1, '2.00', '5.00', 17, 1, './imgs/2021-09-17_17_03_36.jpg', '2021-09-17 20:03:36', 4, 158, 'Palio / uno / siena / strada / grand siena / mobi / argo / cronos / Palio wekeend '),
(2849, '7890079127332', 0, '12733', 1, '221.00', '552.50', 2, 1, './imgs/2021-09-18_08_10_50.jpg', '2021-09-18 11:10:50', 4, 111, 'Fiesta rocam 1.0 1.6 / ecosporte rocam'),
(2850, '7891342012959', 0, 'Arl2337 / tecfil', 1, '28.00', '70.00', 2, 1, './imgs/2021-09-18_08_34_33.jpg', '2021-09-18 11:34:33', 4, 41, 'Ix35  / sportage 2.0 2.7 16v 2010'),
(2851, '7897843832706', 0, 'Es20330 / delphi', 1, '175.00', '437.50', 2, 1, './imgs/2021-09-18_08_54_17.jpg', '2021-09-18 11:54:17', 4, 78, 'Corsa classic / celta 1.0 1.4 / prisma 1.0 1.4'),
(2852, '7890903032573', 0, 'Nkba08807 / nakata', 1, '95.00', '237.50', 1, 1, './imgs/2021-09-18_09_00_21.jpg', '2021-09-18 12:00:21', 4, 67, 'C3 1.4 8v 2003-2012 / peugeot 206 1.4 8v 2004-2008/ peugeot 207 1.4 8v 2009-2013 polia 18 dentes'),
(2853, '7908222210586', 0, 'Ub0834 / urba', 1, '117.00', '292.50', 1, 1, './imgs/2021-09-18_09_02_38.jpg', '2021-09-18 12:02:38', 4, 67, 'Peugeot 208 / citroen c3 / aircross 1.6'),
(2854, '7895467063438', 0, 'Pw641 / willtec', 1, '86.00', '215.00', 2, 1, './imgs/2021-09-18_09_26_11.jpg', '2021-09-18 12:26:11', 4, 42, 'Civic 2.0 / accord 2.0'),
(2855, '7891252052458', 0, '05245 / sabo', 1, '87.00', '217.50', 5, 1, './imgs/2021-09-18_09_31_32.jpg', '2021-09-18 12:31:32', 4, 77, 'Palio fire / siena fire / strada fire / uno fire  74mm'),
(2856, '7893989102000', 0, '4259 / mte', 1, '42.00', '105.00', 2, 1, './imgs/2021-09-18_09_36_57.jpg', '2021-09-18 12:36:57', 4, 107, 'Up / gol / fox '),
(2857, '7899171151801', 0, '6487 / arca', 1, '36.00', '90.00', 3, 1, './imgs/2021-09-18_09_38_57.jpg', '2021-09-18 15:45:26', 4, 152, 'S10 / BLAZER semi EIXO 40 x 69 x 15'),
(2858, '7899171150071', 0, '6966 / arca', 1, '17.00', '42.50', 2, 1, './imgs/2021-09-18_09_41_33.jpg', '2021-09-18 15:44:55', 4, 152, 'Hillux diferencial LATERAL 47 X 80 X 11 /26');
INSERT INTO `produtos` (`id`, `barra`, `codigo`, `nome`, `qtd`, `valor_compra`, `valor_venda`, `estoque`, `status`, `foto`, `data`, `usuarios_id`, `categorias_id`, `aplicacao`) VALUES
(2859, '4005108982865', 0, '6203041000 / luk', 1, '270.00', '675.00', 1, 1, './imgs/2021-09-18_11_21_47.jpg', '2021-09-18 14:21:47', 4, 70, 'Clio 1.6 / kangoo 1.6 / megane 1.6 '),
(2860, '7894325111533', 0, '8288b / sampel', 1, '49.00', '122.50', 11, 1, './imgs/2021-09-18_11_46_13.jpg', '2021-09-18 14:46:13', 4, 68, 'Etios dianteiro'),
(2861, '7897707509713', 0, 'Bkr6esz10 / ngk', 1, '55.44', '138.60', 10, 1, './imgs/2021-09-18_15_35_56.jpg', '2021-09-18 18:35:56', 4, 52, 'Duster 1.6 / oroch 1.6 / captur 1.6 / sandero 1.6 / logan 1.6 '),
(2862, '7891551997030', 0, '7PK1125 / Continental ', 1, '38.47', '96.17', 2, 1, './imgs/2021-09-18_15_58_24.jpg', '2021-09-18 22:03:12', 4, 132, 'Versa / March '),
(2863, '7891252025254', 0, '02525 / sabo', 1, '31.00', '77.50', 4, 1, './imgs/2021-09-20_14_36_48.jpg', '2021-09-20 17:36:48', 4, 152, 'CORSA / celta / Palio / stilo / Doblo'),
(2864, '7898436087442', 0, '8687 / vp', 1, '56.00', '140.00', 2, 1, './imgs/2021-09-21_09_16_32.jpg', '2021-09-21 12:16:32', 4, 124, 'Prisma 1.4 / celta 1.0 2007'),
(2865, '7891579881137', 0, 'Emm2036ft / magneti marelli', 1, '311.00', '777.50', 1, 1, './imgs/2021-09-22_08_46_18.jpg', '2021-09-22 11:46:18', 4, 69, 'Uno 1.0 1.4 flex 2010-2017'),
(2866, '300408', 0, '300408 / reviam', 1, '38.00', '95.00', 6, 1, './imgs/2021-09-22_09_14_24.jpg', '2021-09-22 12:14:24', 4, 89, 'Onix / prisma / cobalt / spin'),
(2867, '7891579890191', 0, 'Gp30605 / cofap', 1, '350.00', '875.00', 0, 1, './imgs/2021-09-22_09_41_42.jpg', '2021-09-22 15:42:05', 4, 63, 'YARIs dianteiro'),
(2868, '7891579890177', 0, 'Gp27680 / cofap', 1, '161.00', '402.50', 2, 1, './imgs/2021-09-22_09_43_22.jpg', '2021-09-22 12:43:23', 4, 63, 'Yaris traseiro'),
(2869, '93363296', 0, '93363296 / gm', 1, '56.00', '140.00', 26, 1, './imgs/2021-09-22_13_56_03.jpg', '2021-09-22 20:01:54', 4, 52, 'Onix 1.0 / corsa classic 1.0 / agile 1.0 / celta 1.0 '),
(2870, '13505131', 0, '13505131 / gm', 1, '188.00', '470.00', 4, 1, './imgs/2021-09-22_14_18_46.jpg', '2021-09-22 17:18:46', 4, 68, 'Cruze dianteiro'),
(2871, '7891579287199', 0, 'Ksc03208s / cofap', 1, '66.00', '165.00', 4, 1, './imgs/2021-09-22_17_06_34.jpg', '2021-09-22 23:06:56', 4, 84, 'DOBLO traseiro'),
(2872, '7899430205757', 0, 'Pc300033 / procooler', 1, '421.00', '1052.50', 1, 1, './imgs/2021-09-22_17_11_17.jpg', '2021-09-22 20:11:17', 4, 111, 'Fiesta rocam / ecosport rocam'),
(2873, '7897707513765', 0, 'Dilkar7q8d / ngk iridium', 1, '271.24', '678.10', 3, 0, './imgs/2021-09-22_17_15_04.jpg', '2021-09-25 14:50:34', 4, 52, 'Corolla / Etios / yaris 1.3 1.5 '),
(2874, '7897707570195', 0, 'U5316 / ngk', 1, '107.34', '268.35', 3, 1, './imgs/2021-09-22_17_18_21.jpg', '2021-09-22 20:18:21', 4, 51, 'Hb20 1.0'),
(2875, 'Xxx tentacion', 0, 'Gmp71 / wpc', 1, '266.00', '665.00', 3, 1, './imgs/2021-09-22_17_27_56.jpg', '2021-09-22 20:27:56', 4, 160, 'Corsa classic / celta mecânico'),
(2876, '4014870209605', 0, '6213132330 / luk', 1, '662.00', '1655.00', 1, 1, './imgs/2021-09-23_17_17_43.jpg', '2021-09-23 20:17:43', 4, 70, 'Etios 1.3 1.5'),
(2877, '7891100340515', 0, 'S405 / dyna', 1, '49.00', '122.50', 6, 1, './imgs/2021-09-24_11_15_44.jpg', '2021-09-24 14:15:44', 4, 161, 'Logan novo / sandero novo'),
(2878, '7891252784557', 0, '78455 / sabo', 1, '8.00', '20.00', 20, 1, './imgs/2021-09-24_15_13_34.jpg', '2021-09-24 18:13:34', 4, 162, 'Palio / doblo / siena / strada / uno'),
(2879, '7890079122252', 0, '12225 / visconde', 1, '185.00', '462.50', 3, 1, './imgs/2021-09-24_15_21_11.jpg', '2021-09-24 18:21:11', 4, 111, 'Corsa classic 1.0 2011 vhc com arcondicionado'),
(2880, '7890079125628', 0, '12562 / visconde', 1, '225.00', '562.50', 1, 1, './imgs/2021-09-24_15_25_08.jpg', '2021-09-24 18:25:08', 4, 111, 'Corsa 1.0 1.4 1.6 V94-02 com ar condicionado'),
(2881, '7890079122245', 0, '12224 / visconde', 1, '257.00', '642.50', 1, 1, './imgs/2021-09-24_15_28_46.jpg', '2021-09-24 18:28:46', 4, 111, 'Celta 1.0 1.4 2006 / prisma 1.0 1.4 2006 '),
(2882, '3276426968546', 0, '696854 / valeo', 1, '391.00', '977.50', 1, 1, './imgs/2021-09-24_15_31_27.jpg', '2021-09-24 18:31:27', 4, 69, 'Punto 1.4 com arcondicionado'),
(2883, '7891551157991', 0, '6Pk1615 / continental', 1, '98.00', '245.00', 1, 1, './imgs/2021-09-24_17_08_37.jpg', '2021-09-24 20:08:37', 4, 49, 'Peugeot 406'),
(2884, '7897707510559', 0, 'Bkr7esbd / ngk', 1, '61.00', '152.50', 11, 1, './imgs/2021-09-28_09_39_02.jpg', '2021-09-28 12:39:03', 4, 52, 'Gol / fox / saveiro / voyage / up / polo 1.0 1.6 '),
(2885, '306206219r1', 0, '306206219r / renault', 1, '230.00', '575.00', 2, 1, './imgs/2021-09-30_10_12_31.jpg', '2021-09-30 13:12:31', 4, 135, 'Duster 1.6 16v / captur 1.6 16v / sandero 1.6 16v / logan 1.6 16v '),
(2887, '7897154297041', 0, 'Mf60ad / moura', 1, '468.00', '1170.00', 1, 0, './imgs/2021-10-01_08_49_40.jpg', '2021-10-01 11:49:40', 7, 163, '60 AMPERES Start-stop sandero'),
(2888, '7897154297058', 0, 'Mf72ld / moura', 1, '581.00', '1452.50', 2, 0, './imgs/2021-10-01_09_04_12.jpg', '2021-10-01 12:04:12', 7, 163, '72 amperes Start-stop '),
(2889, '7897154296921', 0, 'M90td / moura', 1, '530.00', '0.00', 2, 1, './imgs/2021-10-01_09_12_26.jpg', '2021-10-01 12:12:26', 4, 163, '90 amperes hillux / sw4 '),
(2890, '7897154296662', 0, 'M50ed / Moura', 1, '309.00', '0.00', 7, 1, './imgs/2021-10-01_09_15_03.jpg', '2021-10-01 12:15:03', 4, 163, '50 amperes '),
(2891, '7897154296761', 0, 'M60gd / moura', 1, '281.69', '704.22', 5, 1, './imgs/2021-10-01_09_16_51.jpg', '2021-10-01 12:16:51', 4, 163, '60 amperes caixa baixa '),
(2892, '7897154296822', 0, '60ax / moura ', 1, '281.69', '704.22', 7, 1, './imgs/2021-10-01_09_22_59.jpg', '2021-10-01 12:22:59', 4, 163, '60 amperes caixa alta '),
(2893, '7897154296730', 0, 'M50jd / moura', 1, '309.00', '0.00', 2, 1, './imgs/2021-10-01_09_26_39.jpg', '2021-10-01 12:26:39', 4, 163, '50 amperes slim new civic '),
(2894, '7897154296631', 0, 'M48fd / moura ', 1, '307.00', '0.00', 8, 1, './imgs/2021-10-01_09_29_08.jpg', '2021-10-01 12:29:08', 4, 163, '48 amperes '),
(2895, '7891676030056', 0, 'St50gd / strada', 1, '190.00', '475.00', 4, 1, './imgs/2021-10-01_10_03_50.jpg', '2021-10-01 16:11:19', 4, 163, '50 amperes '),
(2896, '7891676030070', 0, 'ST60DD / strada', 1, '190.00', '475.00', 8, 1, './imgs/2021-10-01_10_05_54.jpg', '2021-10-01 13:05:54', 4, 163, '60 AMPERES caixa baixa'),
(2897, '7891676030094', 0, 'St60hd / strada', 1, '190.00', '475.00', 10, 1, './imgs/2021-10-01_10_10_40.jpg', '2021-10-01 13:10:40', 4, 163, '60 amperes caixa alta'),
(2898, '7891676106126', 0, 'Hnp60hd / heliar', 1, '280.00', '700.00', 12, 1, './imgs/2021-10-01_10_17_46.jpg', '2021-10-01 13:17:46', 4, 163, '60 AMPERES caixa alta'),
(2899, '7891676106102', 0, 'Hnp60dd / heliar', 1, '280.00', '700.00', 8, 1, './imgs/2021-10-01_10_19_52.jpg', '2021-10-01 13:19:52', 4, 163, '60 amperes caixa baixa'),
(2901, '7891676010249', 0, 'Hf75pd / heliar', 1, '445.00', '0.00', 2, 1, './imgs/2021-10-01_10_21_46.jpg', '2021-10-01 13:21:46', 4, 163, '75 amperes s10'),
(2902, '7891676107574', 0, 'Hfb60hd / heliar', 1, '0.00', '0.00', 1, 1, './imgs/2021-10-01_10_24_38.jpg', '2021-10-01 13:24:38', 4, 163, '60 amperes start-stop'),
(2903, '7896320588969', 0, 'Tsf45pvd / tudor', 1, '0.00', '0.00', 1, 1, './imgs/2021-10-01_10_27_48.jpg', '2021-10-01 13:27:48', 4, 163, '45 amperes'),
(2904, '7896320580437', 0, 'Tsf75phd / tudor', 1, '0.00', '0.00', 1, 1, './imgs/2021-10-01_10_30_21.jpg', '2021-10-01 13:30:21', 4, 163, '75 amperes'),
(2905, '7896320581359', 0, 'Tsf90mcd / TUDOr', 1, '0.00', '0.00', 3, 1, './imgs/2021-10-01_10_33_42.jpg', '2021-10-01 13:33:42', 4, 163, '90 amperes'),
(2906, '7892504008421', 0, 'Rccd01800 / trw', 1, '125.00', '312.50', 1, 1, './imgs/2021-10-02_10_16_57.jpg', '2021-10-02 13:16:57', 4, 66, 'Gol G5-g6/ saveiro G5-g6 / voyage g5-g6 sem abs'),
(2907, '7891342014540', 0, 'Arl4141 / tecfil', 1, '47.00', '117.50', 3, 1, './imgs/2021-10-04_09_43_31.jpg', '2021-10-04 12:43:31', 4, 41, 'L200 triton 3.2 tdi 2009'),
(2908, '7898632041422', 0, 'T130023 / tsa', 1, '0.00', '315.00', 1, 1, './imgs/2021-10-04_10_53_55.jpg', '2021-10-04 13:53:55', 4, 153, 'Mobi 2012 / palio novo 12 / uno 11 / uno furgoneta traseiro '),
(2909, '7893272004141', 0, 'Tc6551 / click', 1, '47.00', '117.50', 0, 1, './imgs/2021-10-04_10_57_18.jpg', '2021-10-04 13:57:18', 4, 140, 'New fiesta / new ka / ranger 2.5 Flex 2015'),
(2910, '7898429264706', 0, 'Mb2242 / mobesani', 1, '0.00', '290.00', 0, 1, './imgs/2021-10-04_11_03_07.jpg', '2021-10-04 14:03:07', 4, 93, 'Fiesta rocam 1.0 1.6/ ECOSPORTE rocam 1.0 1.6 / focus 1.6'),
(2911, '7896636551275', 0, '5w30 / eurorepar', 1, '19.90', '32.00', 1125, 1, './imgs/2021-10-04_15_35_06.jpg', '2021-10-04 18:35:06', 4, 146, '5w30 sintetico'),
(2912, '7892679160214', 0, 'N1772 DIANTEIRA / COBREQ', 1, '96.00', '240.00', 1, 0, './imgs/01-16.jpg', '2021-10-05 14:08:17', 7, 42, ' Volkswagen Up 1.0'),
(2913, '7897707504237', 0, 'Scf35 / ngk', 1, '92.44', '231.10', 3, 1, './imgs/2021-10-06_14_12_08.jpg', '2021-10-06 17:12:08', 4, 46, 'New fiesta / new ka / new ecosport '),
(2914, '7893548043591', 0, '11016bi / spal', 1, '44.29', '110.72', 2, 1, './imgs/2021-10-06_14_16_07.jpg', '2021-10-06 17:16:07', 4, 71, 'Fiesta rocam / Ecosport rocam carter');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

CREATE TABLE `servicos` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `servicos`
--

INSERT INTO `servicos` (`id`, `nome`, `valor`) VALUES
(1, 'ALINHAMENTO + BALANCEAMENTO LIGA LEVE', '50.00'),
(2, 'ALINHAMENTO + BALANCEAMENTO CALHA DE FERRO', '40.00'),
(3, 'ALINHAMENTO + BALANCEAMENTO CAMINHONETE', '60.00'),
(4, 'ENCALHAMENTO CALHA FERRO P', '40.00'),
(6, 'ENCALHAMENTO CALHA DE LIGA LEVE P', '60.00'),
(7, 'LIMPEZA DE BICO', '150.00'),
(8, 'NENHUM', '0.00'),
(9, 'ENCALHAMENTO CAMINHONETE ', '80.00'),
(10, 'ALINHAMENTO ', '30.00'),
(11, 'LIMPEZA DE MOTOR', '40.00'),
(12, 'BALANCEAMENTO ', '30.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`) VALUES
(4, 'admin', 'admin@eneylton.com', '$2y$10$mZ.QuTVOWHefiG58kSk2K.BW3VDnDFu/l1fhYaBmRhQ5eJTJImThm'),
(7, 'Eneylton Barros', 'eneylton@hotmail.com', '$2y$10$JZR7X2ZpplGhF4dtchAhJedF/Y0/4ynAOd8VBlR4ehJfLOKHX4mLG'),
(13, 'enexs', 'ene@gmail.com.br', '$2y$10$QOY9tsU49c0vK86BUx34peirngMXyhbktyuv1F3/b2i5He7a.IdIC');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `id` int(11) NOT NULL,
  `data` timestamp NULL DEFAULT current_timestamp(),
  `nome` varchar(255) DEFAULT NULL,
  `codigo` int(11) DEFAULT NULL,
  `barra` int(11) DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `valor_venda` decimal(10,2) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `forma_pagamento` varchar(100) DEFAULT NULL,
  `usuarios_id` int(11) NOT NULL,
  `clientes_id` int(11) NOT NULL,
  `mecanicos_id` int(11) NOT NULL,
  `produtos_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `caixa`
--
ALTER TABLE `caixa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_caixa_usuarios1_idx` (`usuarios_id`),
  ADD KEY `fk_caixa_mecanicos1_idx` (`mecanicos_id`),
  ADD KEY `fk_caixa_clientes1_idx` (`clientes_id`);

--
-- Índices para tabela `catdespesas`
--
ALTER TABLE `catdespesas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_clientes_usuarios1_idx` (`usuarios_id`),
  ADD KEY `fk_clientes_marcas1_idx` (`marcas_id`);

--
-- Índices para tabela `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_compras_produtos1_idx` (`produtos_id`),
  ADD KEY `fk_compras_usuarios1_idx` (`usuarios_id`);

--
-- Índices para tabela `entregas`
--
ALTER TABLE `entregas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `equipamentos`
--
ALTER TABLE `equipamentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_equipamentos_fornecedores1_idx` (`fornecedores_id`),
  ADD KEY `fk_equipamentos_usuarios1_idx` (`usuarios_id`);

--
-- Índices para tabela `estatisticas`
--
ALTER TABLE `estatisticas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_estatisticas_produtos1_idx` (`produtos_id`),
  ADD KEY `fk_estatisticas_usuarios1_idx` (`usuarios_id`);

--
-- Índices para tabela `forma_pagamento`
--
ALTER TABLE `forma_pagamento`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `galerias`
--
ALTER TABLE `galerias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_galerias_produtos1_idx` (`produtos_id`);

--
-- Índices para tabela `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `mecanicos`
--
ALTER TABLE `mecanicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `movimentacoes`
--
ALTER TABLE `movimentacoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_despesas_usuarios1_idx` (`usuarios_id`),
  ADD KEY `fk_despesas_catdesp1_idx` (`catdesp_id`),
  ADD KEY `fk_movimentacoes_forma_pagamento1_idx` (`forma_pagamento_id`),
  ADD KEY `fk_movimentacoes_mecanicos1_idx` (`mecanicos_id`);

--
-- Índices para tabela `orcamentos`
--
ALTER TABLE `orcamentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orcamentos_usuarios1_idx` (`usuarios_id`),
  ADD KEY `fk_orcamentos_clientes1_idx` (`clientes_id`),
  ADD KEY `fk_orcamentos_mecanicos1_idx` (`mecanicos_id`),
  ADD KEY `fk_orcamentos_produtos1_idx` (`produtos_id`),
  ADD KEY `fk_orcamentos_forma_pagamento1_idx` (`forma_pagamento_id`);

--
-- Índices para tabela `ordem_servicos`
--
ALTER TABLE `ordem_servicos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ordem_servicos_clientes1_idx` (`clientes_id`),
  ADD KEY `fk_ordem_servicos_mecanicos1_idx` (`mecanicos_id`),
  ADD KEY `fk_ordem_servicos_servicos1_idx` (`servicos_id`);

--
-- Índices para tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pedidos_produtos1_idx` (`produtos_id`),
  ADD KEY `fk_pedidos_usuarios1_idx` (`usuarios_id`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_produtos_usuarios1_idx` (`usuarios_id`),
  ADD KEY `fk_produtos_categorias1_idx` (`categorias_id`);

--
-- Índices para tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orcamento_final_usuarios1_idx` (`usuarios_id`),
  ADD KEY `fk_orcamento_final_clientes1_idx` (`clientes_id`),
  ADD KEY `fk_orcamento_final_mecanicos1_idx` (`mecanicos_id`),
  ADD KEY `fk_vendas_produtos1_idx` (`produtos_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `caixa`
--
ALTER TABLE `caixa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT de tabela `catdespesas`
--
ALTER TABLE `catdespesas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT de tabela `entregas`
--
ALTER TABLE `entregas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT de tabela `estatisticas`
--
ALTER TABLE `estatisticas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT de tabela `forma_pagamento`
--
ALTER TABLE `forma_pagamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `galerias`
--
ALTER TABLE `galerias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT de tabela `mecanicos`
--
ALTER TABLE `mecanicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `movimentacoes`
--
ALTER TABLE `movimentacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT de tabela `orcamentos`
--
ALTER TABLE `orcamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=981;

--
-- AUTO_INCREMENT de tabela `ordem_servicos`
--
ALTER TABLE `ordem_servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=544;

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2915;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `caixa`
--
ALTER TABLE `caixa`
  ADD CONSTRAINT `fk_caixa_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_caixa_mecanicos1` FOREIGN KEY (`mecanicos_id`) REFERENCES `mecanicos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_caixa_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `fk_clientes_marcas1` FOREIGN KEY (`marcas_id`) REFERENCES `marcas` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_clientes_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `fk_compras_produtos1` FOREIGN KEY (`produtos_id`) REFERENCES `produtos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_compras_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `estatisticas`
--
ALTER TABLE `estatisticas`
  ADD CONSTRAINT `fk_estatisticas_produtos1` FOREIGN KEY (`produtos_id`) REFERENCES `produtos` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_estatisticas_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `galerias`
--
ALTER TABLE `galerias`
  ADD CONSTRAINT `fk_galerias_produtos1` FOREIGN KEY (`produtos_id`) REFERENCES `produtos` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `movimentacoes`
--
ALTER TABLE `movimentacoes`
  ADD CONSTRAINT `fk_movimentacoes_forma_pagamento1` FOREIGN KEY (`forma_pagamento_id`) REFERENCES `forma_pagamento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_movimentacoes_mecanicos1` FOREIGN KEY (`mecanicos_id`) REFERENCES `mecanicos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `orcamentos`
--
ALTER TABLE `orcamentos`
  ADD CONSTRAINT `fk_orcamentos_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_orcamentos_forma_pagamento1` FOREIGN KEY (`forma_pagamento_id`) REFERENCES `forma_pagamento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_orcamentos_mecanicos1` FOREIGN KEY (`mecanicos_id`) REFERENCES `mecanicos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_orcamentos_produtos1` FOREIGN KEY (`produtos_id`) REFERENCES `produtos` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_orcamentos_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `ordem_servicos`
--
ALTER TABLE `ordem_servicos`
  ADD CONSTRAINT `fk_ordem_servicos_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ordem_servicos_mecanicos1` FOREIGN KEY (`mecanicos_id`) REFERENCES `mecanicos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ordem_servicos_servicos1` FOREIGN KEY (`servicos_id`) REFERENCES `servicos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `fk_pedidos_produtos1` FOREIGN KEY (`produtos_id`) REFERENCES `produtos` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pedidos_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
