-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 12-Abr-2018 às 01:44
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aproveitamento`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aproveitamento`
--

CREATE TABLE `aproveitamento` (
  `ID` int(11) NOT NULL,
  `NOME_PESSOA` varchar(255) DEFAULT NULL,
  `MATR_ALUNO` varchar(255) DEFAULT NULL,
  `NUM_VERSAO` int(11) DEFAULT NULL,
  `NOME_CURSO` varchar(255) DEFAULT NULL,
  `COD_CURSO` varchar(10) DEFAULT NULL,
  `ID_VERSAO_CURSO` int(11) DEFAULT NULL,
  `ANO` int(11) DEFAULT NULL,
  `COD_ATIV_CURRIC` varchar(10) DEFAULT NULL,
  `NOME_ATIV_CURRIC` varchar(100) DEFAULT NULL,
  `MEDIA_FINAL` double DEFAULT NULL,
  `DESCR_SITUACAO` varchar(10) DEFAULT NULL,
  `PERIODO` varchar(15) DEFAULT NULL,
  `ID_CURSO_ALUNO` int(11) DEFAULT NULL,
  `SITUACAO_ITEM` int(11) DEFAULT NULL,
  `CH_TEORICA` int(11) DEFAULT NULL,
  `CH_PRATICA` int(11) DEFAULT NULL,
  `TOTAL_CARGA_HORARIA` int(11) DEFAULT NULL,
  `ANO_INGRESSO` int(11) DEFAULT NULL,
  `FORMA_EVASAO` varchar(100) DEFAULT NULL,
  `ANO_EVASAO` int(11) DEFAULT NULL,
  `SEXO` varchar(1) DEFAULT NULL,
  `id_curso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aproveitamento`
--

INSERT INTO `aproveitamento` (`ID`, `NOME_PESSOA`, `MATR_ALUNO`, `NUM_VERSAO`, `NOME_CURSO`, `COD_CURSO`, `ID_VERSAO_CURSO`, `ANO`, `COD_ATIV_CURRIC`, `NOME_ATIV_CURRIC`, `MEDIA_FINAL`, `DESCR_SITUACAO`, `PERIODO`, `ID_CURSO_ALUNO`, `SITUACAO_ITEM`, `CH_TEORICA`, `CH_PRATICA`, `TOTAL_CARGA_HORARIA`, `ANO_INGRESSO`, `FORMA_EVASAO`, `ANO_EVASAO`, `SEXO`, `id_curso`) VALUES
(3732, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 86, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3733, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DEE048', 'COMPUTADORES E SOCIEDADE', 88, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(3734, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 100, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3735, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DEE040', 'MATEM??TICA I', 89, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(3736, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DSH010', 'POL??TICAS EDUCACIONAIS E GEST?ƒO ESCOLAR', 96, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3737, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 82, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3738, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DEE046', 'ALGORITMOS E ESTRUTURAS DE DADOS II', 91, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3739, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 100, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3740, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 87, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3741, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DEE041', 'MATEM??TICA II', 84, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(3742, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 83, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3743, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE047', 'ALGORITMOS E ESTRUTURAS DE DADOS III', 97, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3744, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE052', 'ESTAT??STICA E PROBABILIDADE', 95, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3745, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH011', '?‰TICA E EDUCA?‡?ƒO', 86, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3746, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH012', 'HIST?“RIA, FILOSOFIA E ENSINO DAS CI??NCIAS', 92, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3747, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE042', 'MATEM??TICA III', 92, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(3748, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE051', 'SISTEMAS OPERACIONAIS', 86, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3749, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH013', 'DID??TICA', 92, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3750, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE054', 'FUNDAMENTOS DE REDES E SISTEMAS DISTRIBU??DOS', 84, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3751, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE043', 'MATEM??TICA IV', 94, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(3752, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE055', 'PROGRAMA?‡?ƒO ORIENTADA A OBJETOS', 86, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3753, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE056', 'SISTEMAS DE BANCO DE DADOS', 90, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(3754, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE058', 'DESENVOLVIMENTO DE SISTEMAS BASEADOS NA WEB', 96, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(3755, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH014', 'DID??TICA DA COMPUTA?‡?ƒO', 96, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(3756, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH016', 'EST??GIO SUPERVISIONADO DE DOC??NCIA I', 100, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(3757, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE044', 'MATEM??TICA V', 88, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(3758, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH015', 'PR??TICA PEDAG?“GICA INTERDISCIPLINAR', 100, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3759, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE057', 'PROJETO DE SOFTWARE', 82, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(3763, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH017', 'EST??GIO SUPEVISIONADO DE DOC??NCIA II', 100, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(3769, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH018', 'INFORM??TICA E EDUCA?‡?ƒO', 95, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(3770, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE059', 'INTELIG??NCIA ARTIFICIAL', 96, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3771, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE060', 'INTERA?‡?ƒO HUMANO COMPUTADOR', 100, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(3777, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH019', 'PR??TICA PEDAG?“GICA DO ENSINO DE COMPUTA?‡?ƒO I', 83, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(3790, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 76, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3791, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DEE048', 'COMPUTADORES E SOCIEDADE', 88, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(3792, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 79, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3794, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DEE040', 'MATEM??TICA I', 75, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(3796, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DSH010', 'POL??TICAS EDUCACIONAIS E GEST?ƒO ESCOLAR', 88, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3798, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 94, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3799, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DEE046', 'ALGORITMOS E ESTRUTURAS DE DADOS II', 89, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3800, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 91, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3801, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 77, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3803, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DEE041', 'MATEM??TICA II', 66, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(3804, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 76, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3805, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE047', 'ALGORITMOS E ESTRUTURAS DE DADOS III', 82, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3806, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE052', 'ESTAT??STICA E PROBABILIDADE', 71, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3808, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH011', '?‰TICA E EDUCA?‡?ƒO', 74, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3809, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH012', 'HIST?“RIA, FILOSOFIA E ENSINO DAS CI??NCIAS', 75, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3811, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE042', 'MATEM??TICA III', 76, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(3813, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE051', 'SISTEMAS OPERACIONAIS', 80, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3814, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH013', 'DID??TICA', 90, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3816, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE054', 'FUNDAMENTOS DE REDES E SISTEMAS DISTRIBU??DOS', 88, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3817, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE043', 'MATEM??TICA IV', 80, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(3818, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE055', 'PROGRAMA?‡?ƒO ORIENTADA A OBJETOS', 88, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3819, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE056', 'SISTEMAS DE BANCO DE DADOS', 92, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(3820, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE058', 'DESENVOLVIMENTO DE SISTEMAS BASEADOS NA WEB', 91, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(3821, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH014', 'DID??TICA DA COMPUTA?‡?ƒO', 93, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(3822, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH016', 'EST??GIO SUPERVISIONADO DE DOC??NCIA I', 100, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(3823, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE044', 'MATEM??TICA V', 81, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(3824, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH015', 'PR??TICA PEDAG?“GICA INTERDISCIPLINAR', 100, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3825, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE057', 'PROJETO DE SOFTWARE', 82, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(3829, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH017', 'EST??GIO SUPEVISIONADO DE DOC??NCIA II', 100, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(3831, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH018', 'INFORM??TICA E EDUCA?‡?ƒO', 87, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(3832, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE059', 'INTELIG??NCIA ARTIFICIAL', 95, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3833, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE060', 'INTERA?‡?ƒO HUMANO COMPUTADOR', 100, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(3834, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH019', 'PR??TICA PEDAG?“GICA DO ENSINO DE COMPUTA?‡?ƒO I', 85, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(3849, '258815', 'GRR20146649', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 70, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3850, '258815', 'GRR20146649', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DEE048', 'COMPUTADORES E SOCIEDADE', 90, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(3851, '258815', 'GRR20146649', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 100, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3852, '258815', 'GRR20146649', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DEE040', 'MATEM??TICA I', 72, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(3853, '258815', 'GRR20146649', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DSH010', 'POL??TICAS EDUCACIONAIS E GEST?ƒO ESCOLAR', 93, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3854, '258815', 'GRR20146649', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 93, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3856, '258815', 'GRR20146649', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 100, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3857, '258815', 'GRR20146649', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 89, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3859, '258815', 'GRR20146649', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 70, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3861, '258815', 'GRR20146649', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH011', '?‰TICA E EDUCA?‡?ƒO', 73, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3862, '258815', 'GRR20146649', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH012', 'HIST?“RIA, FILOSOFIA E ENSINO DAS CI??NCIAS', 76, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3863, '258815', 'GRR20146649', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE046', 'ALGORITMOS E ESTRUTURAS DE DADOS II', 0, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(3864, '258815', 'GRR20146649', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE041', 'MATEM??TICA II', 55, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(3865, '258815', 'GRR20146649', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE056', 'SISTEMAS DE BANCO DE DADOS', 81, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(3866, '258815', 'GRR20146649', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE052', 'ESTAT??STICA E PROBABILIDADE', 89, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3867, '258815', 'GRR20146649', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE042', 'MATEM??TICA III', 27, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(3868, '258815', 'GRR20146649', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH015', 'PR??TICA PEDAG?“GICA INTERDISCIPLINAR', 100, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3869, '258815', 'GRR20146649', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE051', 'SISTEMAS OPERACIONAIS', 70, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3870, '258815', 'GRR20146649', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH013', 'DID??TICA', 90, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3871, '258815', 'GRR20146649', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH055', 'COMUNICA?‡?ƒO EM L??NGUA BRASILEIRA DE SINAIS - LIBRAS', 96, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3872, '258815', 'GRR20146649', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH014', 'DID??TICA DA COMPUTA?‡?ƒO', 95, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(3873, '258815', 'GRR20146649', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH018', 'INFORM??TICA E EDUCA?‡?ƒO', 84, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(3874, '258815', 'GRR20146649', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE042', 'MATEM??TICA III', 80, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3890, '258994', 'GRR20146715', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 0, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(3891, '258994', 'GRR20146715', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DEE048', 'COMPUTADORES E SOCIEDADE', 0, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 54, 0, '', 0, '', 1),
(3894, '258994', 'GRR20146715', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DSH010', 'POL??TICAS EDUCACIONAIS E GEST?ƒO ESCOLAR', 22, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 36, 0, '', 0, '', 1),
(3895, '258994', 'GRR20146715', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 70, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3897, '258994', 'GRR20146715', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 25, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 36, 0, '', 0, '', 1),
(3898, '258994', 'GRR20146715', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 9, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(3899, '258994', 'GRR20146715', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DEE041', 'MATEM??TICA II', 0, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 72, 0, '', 0, '', 1),
(3900, '258994', 'GRR20146715', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 0, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(3901, '258994', 'GRR20146715', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 9, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(3902, '258994', 'GRR20146715', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE048', 'COMPUTADORES E SOCIEDADE', 15, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 54, 0, '', 0, '', 1),
(3903, '258994', 'GRR20146715', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH012', 'HIST?“RIA, FILOSOFIA E ENSINO DAS CI??NCIAS', 32, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 36, 0, '', 0, '', 1),
(3904, '258994', 'GRR20146715', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 0, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(3905, '258994', 'GRR20146715', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE040', 'MATEM??TICA I', 0, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 72, 0, '', 0, '', 1),
(3906, '258994', 'GRR20146715', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH013', 'DID??TICA', 40, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 36, 0, '', 0, '', 1),
(3907, '258994', 'GRR20146715', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 82, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3908, '258994', 'GRR20146715', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 0, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(3909, '258994', 'GRR20146715', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE040', 'MATEM??TICA I', 18, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 72, 0, '', 0, '', 1),
(3910, '258994', 'GRR20146715', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 7, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(3911, '258994', 'GRR20146715', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE048', 'COMPUTADORES E SOCIEDADE', 81, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(3912, '258994', 'GRR20146715', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH011', '?‰TICA E EDUCA?‡?ƒO', 73, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3913, '258994', 'GRR20146715', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH012', 'HIST?“RIA, FILOSOFIA E ENSINO DAS CI??NCIAS', 87, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3914, '258994', 'GRR20146715', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE040', 'MATEM??TICA I', 25, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(3915, '258994', 'GRR20146715', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE051', 'SISTEMAS OPERACIONAIS', 0, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(3916, '258994', 'GRR20146715', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH013', 'DID??TICA', 80, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3917, '258994', 'GRR20146715', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 74, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3918, '258994', 'GRR20146715', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE053', 'GEOMETRIA ANAL??TICA', 4, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 36, 0, '', 0, '', 1),
(3919, '258994', 'GRR20146715', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE040', 'MATEM??TICA I', 58, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3920, '258994', 'GRR20146715', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE056', 'SISTEMAS DE BANCO DE DADOS', 0, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 72, 0, '', 0, '', 1),
(3921, '258994', 'GRR20146715', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 58, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3922, '258994', 'GRR20146715', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 4, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(3923, '258994', 'GRR20146715', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE051', 'SISTEMAS OPERACIONAIS', 21, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(3928, '273898', 'GRR20150625', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 23, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(3929, '273898', 'GRR20150625', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE048', 'COMPUTADORES E SOCIEDADE', 74, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(3930, '273898', 'GRR20150625', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 85, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3931, '273898', 'GRR20150625', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 29, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(3932, '273898', 'GRR20150625', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE040', 'MATEM??TICA I', 26, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 72, 0, '', 0, '', 1),
(3933, '273898', 'GRR20150625', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 70, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3934, '273898', 'GRR20150625', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE046', 'ALGORITMOS E ESTRUTURAS DE DADOS II', 34, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(3935, '273898', 'GRR20150625', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'EER008', 'ALGORITMOS E PROGRAMA?‡?ƒO DE COMPUTADORES', 31, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 72, 0, '', 0, '', 1),
(3936, '273898', 'GRR20150625', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 56, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3937, '273898', 'GRR20150625', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE041', 'MATEM??TICA II', 25, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 72, 0, '', 0, '', 1),
(3938, '273898', 'GRR20150625', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 21, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(3939, '273898', 'GRR20150625', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH010', 'POL??TICAS EDUCACIONAIS E GEST?ƒO ESCOLAR', 90, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3940, '273898', 'GRR20150625', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 44, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(3941, '273898', 'GRR20150625', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH011', '?‰TICA E EDUCA?‡?ƒO', 87, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3942, '273898', 'GRR20150625', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 36, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(3943, '273898', 'GRR20150625', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE040', 'MATEM??TICA I', 14, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(3944, '273898', 'GRR20150625', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE046', 'ALGORITMOS E ESTRUTURAS DE DADOS II', 30, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(3945, '273898', 'GRR20150625', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH013', 'DID??TICA', 76, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3946, '273898', 'GRR20150625', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 37, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(3947, '273898', 'GRR20150625', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE056', 'SISTEMAS DE BANCO DE DADOS', 47, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 72, 0, '', 0, '', 1),
(3949, '273898', 'GRR20150625', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH012', 'HIST?“RIA, FILOSOFIA E ENSINO DAS CI??NCIAS', 85, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3950, '273898', 'GRR20150625', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH018', 'INFORM??TICA E EDUCA?‡?ƒO', 74, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(3951, '273898', 'GRR20150625', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 71, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3952, '273898', 'GRR20150625', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH015', 'PR??TICA PEDAG?“GICA INTERDISCIPLINAR', 80, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3964, '265041', 'GRR20150632', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 25, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(3965, '265041', 'GRR20150632', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE048', 'COMPUTADORES E SOCIEDADE', 86, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(3966, '265041', 'GRR20150632', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 87, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3967, '265041', 'GRR20150632', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 33, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(3968, '265041', 'GRR20150632', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE040', 'MATEM??TICA I', 43, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 72, 0, '', 0, '', 1),
(3969, '265041', 'GRR20150632', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 60, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3971, '265041', 'GRR20150632', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 71, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3972, '265041', 'GRR20150632', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE041', 'MATEM??TICA II', 2, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 72, 0, '', 0, '', 1),
(3973, '265041', 'GRR20150632', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 2, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(3974, '265041', 'GRR20150632', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH010', 'POL??TICAS EDUCACIONAIS E GEST?ƒO ESCOLAR', 83, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3975, '265041', 'GRR20150632', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 2, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(3976, '265041', 'GRR20150632', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH011', '?‰TICA E EDUCA?‡?ƒO', 70, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3977, '265041', 'GRR20150632', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 44, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(3978, '265041', 'GRR20150632', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE040', 'MATEM??TICA I', 7, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(3980, '265041', 'GRR20150632', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 0, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(3981, '265041', 'GRR20150632', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE056', 'SISTEMAS DE BANCO DE DADOS', 0, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 72, 0, '', 0, '', 1),
(3982, '265041', 'GRR20150632', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 0, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(3983, '265041', 'GRR20150632', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 17, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(3984, '265041', 'GRR20150632', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 11, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(3991, '265259', 'GRR20150850', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 72, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3992, '265259', 'GRR20150850', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE048', 'COMPUTADORES E SOCIEDADE', 87, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(3993, '265259', 'GRR20150850', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 88, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3994, '265259', 'GRR20150850', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 83, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3995, '265259', 'GRR20150850', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE040', 'MATEM??TICA I', 71, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(3996, '265259', 'GRR20150850', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 74, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(3997, '265259', 'GRR20150850', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE046', 'ALGORITMOS E ESTRUTURAS DE DADOS II', 38, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(3998, '265259', 'GRR20150850', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 85, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(3999, '265259', 'GRR20150850', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE041', 'MATEM??TICA II', 27, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 72, 0, '', 0, '', 1),
(4000, '265259', 'GRR20150850', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 70, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4001, '265259', 'GRR20150850', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH010', 'POL??TICAS EDUCACIONAIS E GEST?ƒO ESCOLAR', 85, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4002, '265259', 'GRR20150850', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE052', 'ESTAT??STICA E PROBABILIDADE', 70, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4003, '265259', 'GRR20150850', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH011', '?‰TICA E EDUCA?‡?ƒO', 93, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4004, '265259', 'GRR20150850', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH012', 'HIST?“RIA, FILOSOFIA E ENSINO DAS CI??NCIAS', 90, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4005, '265259', 'GRR20150850', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH015', 'PR??TICA PEDAG?“GICA INTERDISCIPLINAR', 100, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4006, '265259', 'GRR20150850', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE051', 'SISTEMAS OPERACIONAIS', 76, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4007, '265259', 'GRR20150850', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE046', 'ALGORITMOS E ESTRUTURAS DE DADOS II', 73, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4008, '265259', 'GRR20150850', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH013', 'DID??TICA', 74, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4009, '265259', 'GRR20150850', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE054', 'FUNDAMENTOS DE REDES E SISTEMAS DISTRIBU??DOS', 75, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4010, '265259', 'GRR20150850', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE055', 'PROGRAMA?‡?ƒO ORIENTADA A OBJETOS', 53, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4011, '265259', 'GRR20150850', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE056', 'SISTEMAS DE BANCO DE DADOS', 82, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(4012, '265259', 'GRR20150850', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE047', 'ALGORITMOS E ESTRUTURAS DE DADOS III', 71, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4013, '265259', 'GRR20150850', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH055', 'COMUNICA?‡?ƒO EM L??NGUA BRASILEIRA DE SINAIS - LIBRAS', 90, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4014, '265259', 'GRR20150850', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE058', 'DESENVOLVIMENTO DE SISTEMAS BASEADOS NA WEB', 91, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4015, '265259', 'GRR20150850', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH014', 'DID??TICA DA COMPUTA?‡?ƒO', 91, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(4016, '265259', 'GRR20150850', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE041', 'MATEM??TICA II', 70, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4029, '265439', 'GRR20151030', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 81, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4030, '265439', 'GRR20151030', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE048', 'COMPUTADORES E SOCIEDADE', 91, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4031, '265439', 'GRR20151030', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 76, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4032, '265439', 'GRR20151030', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 86, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4033, '265439', 'GRR20151030', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE040', 'MATEM??TICA I', 84, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(4034, '265439', 'GRR20151030', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 74, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4035, '265439', 'GRR20151030', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE046', 'ALGORITMOS E ESTRUTURAS DE DADOS II', 71, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4036, '265439', 'GRR20151030', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 86, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4037, '265439', 'GRR20151030', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE041', 'MATEM??TICA II', 51, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(4038, '265439', 'GRR20151030', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 70, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4039, '265439', 'GRR20151030', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH010', 'POL??TICAS EDUCACIONAIS E GEST?ƒO ESCOLAR', 90, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4040, '265439', 'GRR20151030', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE047', 'ALGORITMOS E ESTRUTURAS DE DADOS III', 79, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4041, '265439', 'GRR20151030', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE052', 'ESTAT??STICA E PROBABILIDADE', 70, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4042, '265439', 'GRR20151030', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH011', '?‰TICA E EDUCA?‡?ƒO', 90, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4043, '265439', 'GRR20151030', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH012', 'HIST?“RIA, FILOSOFIA E ENSINO DAS CI??NCIAS', 90, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4044, '265439', 'GRR20151030', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE042', 'MATEM??TICA III', 56, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4045, '265439', 'GRR20151030', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE051', 'SISTEMAS OPERACIONAIS', 76, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4046, '265439', 'GRR20151030', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH013', 'DID??TICA', 78, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4047, '265439', 'GRR20151030', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE054', 'FUNDAMENTOS DE REDES E SISTEMAS DISTRIBU??DOS', 87, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4048, '265439', 'GRR20151030', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE053', 'GEOMETRIA ANAL??TICA', 79, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4049, '265439', 'GRR20151030', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE043', 'MATEM??TICA IV', 52, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4050, '265439', 'GRR20151030', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE055', 'PROGRAMA?‡?ƒO ORIENTADA A OBJETOS', 82, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4051, '265439', 'GRR20151030', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE056', 'SISTEMAS DE BANCO DE DADOS', 95, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(4052, '265439', 'GRR20151030', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE058', 'DESENVOLVIMENTO DE SISTEMAS BASEADOS NA WEB', 100, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4053, '265439', 'GRR20151030', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH014', 'DID??TICA DA COMPUTA?‡?ƒO', 89, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(4054, '265439', 'GRR20151030', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH016', 'EST??GIO SUPERVISIONADO DE DOC??NCIA I', 85, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(4055, '265439', 'GRR20151030', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE044', 'MATEM??TICA V', 72, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(4056, '265439', 'GRR20151030', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH015', 'PR??TICA PEDAG?“GICA INTERDISCIPLINAR', 100, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4057, '265439', 'GRR20151030', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE057', 'PROJETO DE SOFTWARE', 84, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(4073, '273955', 'GRR20151298', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 76, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4074, '273955', 'GRR20151298', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE048', 'COMPUTADORES E SOCIEDADE', 72, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1);
INSERT INTO `aproveitamento` (`ID`, `NOME_PESSOA`, `MATR_ALUNO`, `NUM_VERSAO`, `NOME_CURSO`, `COD_CURSO`, `ID_VERSAO_CURSO`, `ANO`, `COD_ATIV_CURRIC`, `NOME_ATIV_CURRIC`, `MEDIA_FINAL`, `DESCR_SITUACAO`, `PERIODO`, `ID_CURSO_ALUNO`, `SITUACAO_ITEM`, `CH_TEORICA`, `CH_PRATICA`, `TOTAL_CARGA_HORARIA`, `ANO_INGRESSO`, `FORMA_EVASAO`, `ANO_EVASAO`, `SEXO`, `id_curso`) VALUES
(4075, '273955', 'GRR20151298', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 73, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4076, '273955', 'GRR20151298', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 53, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4077, '273955', 'GRR20151298', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE040', 'MATEM??TICA I', 67, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(4078, '273955', 'GRR20151298', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 64, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4079, '273955', 'GRR20151298', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE046', 'ALGORITMOS E ESTRUTURAS DE DADOS II', 95, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4080, '273955', 'GRR20151298', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 82, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4081, '273955', 'GRR20151298', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE041', 'MATEM??TICA II', 51, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(4082, '273955', 'GRR20151298', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 85, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4083, '273955', 'GRR20151298', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH010', 'POL??TICAS EDUCACIONAIS E GEST?ƒO ESCOLAR', 52, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4084, '273955', 'GRR20151298', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE047', 'ALGORITMOS E ESTRUTURAS DE DADOS III', 80, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4085, '273955', 'GRR20151298', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE052', 'ESTAT??STICA E PROBABILIDADE', 44, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 36, 0, '', 0, '', 1),
(4086, '273955', 'GRR20151298', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH011', '?‰TICA E EDUCA?‡?ƒO', 70, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4087, '273955', 'GRR20151298', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH012', 'HIST?“RIA, FILOSOFIA E ENSINO DAS CI??NCIAS', 75, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4088, '273955', 'GRR20151298', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE042', 'MATEM??TICA III', 9, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4089, '273955', 'GRR20151298', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE051', 'SISTEMAS OPERACIONAIS', 54, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4090, '273955', 'GRR20151298', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH013', 'DID??TICA', 81, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4091, '273955', 'GRR20151298', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE054', 'FUNDAMENTOS DE REDES E SISTEMAS DISTRIBU??DOS', 75, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4092, '273955', 'GRR20151298', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE053', 'GEOMETRIA ANAL??TICA', 57, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4093, '273955', 'GRR20151298', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE055', 'PROGRAMA?‡?ƒO ORIENTADA A OBJETOS', 70, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4094, '273955', 'GRR20151298', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE056', 'SISTEMAS DE BANCO DE DADOS', 81, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(4095, '273955', 'GRR20151298', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE058', 'DESENVOLVIMENTO DE SISTEMAS BASEADOS NA WEB', 95, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4096, '273955', 'GRR20151298', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH014', 'DID??TICA DA COMPUTA?‡?ƒO', 78, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(4097, '273955', 'GRR20151298', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH016', 'EST??GIO SUPERVISIONADO DE DOC??NCIA I', 80, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(4098, '273955', 'GRR20151298', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH015', 'PR??TICA PEDAG?“GICA INTERDISCIPLINAR', 90, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4099, '273955', 'GRR20151298', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE057', 'PROJETO DE SOFTWARE', 73, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(4115, '266101', 'GRR20151692', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 45, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4116, '266101', 'GRR20151692', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE048', 'COMPUTADORES E SOCIEDADE', 88, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4117, '266101', 'GRR20151692', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 96, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4118, '266101', 'GRR20151692', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 43, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4119, '266101', 'GRR20151692', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE040', 'MATEM??TICA I', 18, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 72, 0, '', 0, '', 1),
(4120, '266101', 'GRR20151692', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 66, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4121, '266101', 'GRR20151692', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 85, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4123, '266101', 'GRR20151692', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 22, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4124, '266101', 'GRR20151692', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH010', 'POL??TICAS EDUCACIONAIS E GEST?ƒO ESCOLAR', 92, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4125, '266101', 'GRR20151692', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 20, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4126, '266101', 'GRR20151692', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH011', '?‰TICA E EDUCA?‡?ƒO', 25, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 36, 0, '', 0, '', 1),
(4127, '266101', 'GRR20151692', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 23, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4128, '266101', 'GRR20151692', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE040', 'MATEM??TICA I', 13, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4130, '266101', 'GRR20151692', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 72, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4131, '266101', 'GRR20151692', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH055', 'COMUNICA?‡?ƒO EM L??NGUA BRASILEIRA DE SINAIS - LIBRAS', 88, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4132, '266101', 'GRR20151692', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 80, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4133, '266101', 'GRR20151692', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 92, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4141, '266456', 'GRR20152047', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 5, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4142, '266456', 'GRR20152047', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE048', 'COMPUTADORES E SOCIEDADE', 57, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4143, '266456', 'GRR20152047', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 52, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4144, '266456', 'GRR20152047', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 4, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4145, '266456', 'GRR20152047', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE040', 'MATEM??TICA I', 2, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 72, 0, '', 0, '', 1),
(4146, '266456', 'GRR20152047', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 59, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4148, '266456', 'GRR20152047', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 0, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4149, '266456', 'GRR20152047', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 0, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4150, '266456', 'GRR20152047', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH010', 'POL??TICAS EDUCACIONAIS E GEST?ƒO ESCOLAR', 0, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 36, 0, '', 0, '', 1),
(4151, '266456', 'GRR20152047', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 2, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4152, '266456', 'GRR20152047', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE040', 'MATEM??TICA I', 0, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4153, '266456', 'GRR20152047', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 45, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4154, '266456', 'GRR20152047', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH010', 'POL??TICAS EDUCACIONAIS E GEST?ƒO ESCOLAR', 90, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4155, '266456', 'GRR20152047', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 32, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4156, '266456', 'GRR20152047', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 7, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4165, '266662', 'GRR20152253', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 93, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4166, '266662', 'GRR20152253', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE048', 'COMPUTADORES E SOCIEDADE', 92, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4167, '266662', 'GRR20152253', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 100, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4168, '266662', 'GRR20152253', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 72, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4169, '266662', 'GRR20152253', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE040', 'MATEM??TICA I', 30, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 72, 0, '', 0, '', 1),
(4170, '266662', 'GRR20152253', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 87, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4171, '266662', 'GRR20152253', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE046', 'ALGORITMOS E ESTRUTURAS DE DADOS II', 64, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4172, '266662', 'GRR20152253', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 91, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4173, '266662', 'GRR20152253', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE041', 'MATEM??TICA II', 3, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 72, 0, '', 0, '', 1),
(4174, '266662', 'GRR20152253', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 70, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4175, '266662', 'GRR20152253', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH010', 'POL??TICAS EDUCACIONAIS E GEST?ƒO ESCOLAR', 84, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4176, '266662', 'GRR20152253', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE047', 'ALGORITMOS E ESTRUTURAS DE DADOS III', 77, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4178, '266662', 'GRR20152253', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH011', '?‰TICA E EDUCA?‡?ƒO', 83, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4179, '266662', 'GRR20152253', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH012', 'HIST?“RIA, FILOSOFIA E ENSINO DAS CI??NCIAS', 92, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4180, '266662', 'GRR20152253', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE051', 'SISTEMAS OPERACIONAIS', 65, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4181, '266662', 'GRR20152253', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH013', 'DID??TICA', 80, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4182, '266662', 'GRR20152253', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE054', 'FUNDAMENTOS DE REDES E SISTEMAS DISTRIBU??DOS', 87, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4183, '266662', 'GRR20152253', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE055', 'PROGRAMA?‡?ƒO ORIENTADA A OBJETOS', 76, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4184, '266662', 'GRR20152253', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE056', 'SISTEMAS DE BANCO DE DADOS', 98, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(4185, '266662', 'GRR20152253', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH055', 'COMUNICA?‡?ƒO EM L??NGUA BRASILEIRA DE SINAIS - LIBRAS', 85, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4186, '266662', 'GRR20152253', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE058', 'DESENVOLVIMENTO DE SISTEMAS BASEADOS NA WEB', 100, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4187, '266662', 'GRR20152253', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH014', 'DID??TICA DA COMPUTA?‡?ƒO', 90, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(4188, '266662', 'GRR20152253', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 35, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4189, '266662', 'GRR20152253', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE057', 'PROJETO DE SOFTWARE', 86, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(4199, '267631', 'GRR20153222', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 71, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4200, '267631', 'GRR20153222', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE048', 'COMPUTADORES E SOCIEDADE', 88, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4201, '267631', 'GRR20153222', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 95, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4202, '267631', 'GRR20153222', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 46, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4203, '267631', 'GRR20153222', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE040', 'MATEM??TICA I', 5, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 72, 0, '', 0, '', 1),
(4204, '267631', 'GRR20153222', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 70, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4205, '267631', 'GRR20153222', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE046', 'ALGORITMOS E ESTRUTURAS DE DADOS II', 75, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4206, '267631', 'GRR20153222', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 83, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4207, '267631', 'GRR20153222', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE041', 'MATEM??TICA II', 33, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 72, 0, '', 0, '', 1),
(4208, '267631', 'GRR20153222', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 84, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4209, '267631', 'GRR20153222', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH010', 'POL??TICAS EDUCACIONAIS E GEST?ƒO ESCOLAR', 97, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4210, '267631', 'GRR20153222', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE047', 'ALGORITMOS E ESTRUTURAS DE DADOS III', 71, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4212, '267631', 'GRR20153222', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH011', '?‰TICA E EDUCA?‡?ƒO', 70, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4213, '267631', 'GRR20153222', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH012', 'HIST?“RIA, FILOSOFIA E ENSINO DAS CI??NCIAS', 93, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4214, '267631', 'GRR20153222', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE040', 'MATEM??TICA I', 35, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4215, '267631', 'GRR20153222', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE051', 'SISTEMAS OPERACIONAIS', 69, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4216, '267631', 'GRR20153222', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH013', 'DID??TICA', 88, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4217, '267631', 'GRR20153222', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE054', 'FUNDAMENTOS DE REDES E SISTEMAS DISTRIBU??DOS', 83, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4218, '267631', 'GRR20153222', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE053', 'GEOMETRIA ANAL??TICA', 50, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4219, '267631', 'GRR20153222', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE055', 'PROGRAMA?‡?ƒO ORIENTADA A OBJETOS', 51, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4220, '267631', 'GRR20153222', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE056', 'SISTEMAS DE BANCO DE DADOS', 92, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(4221, '267631', 'GRR20153222', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH055', 'COMUNICA?‡?ƒO EM L??NGUA BRASILEIRA DE SINAIS - LIBRAS', 92, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4222, '267631', 'GRR20153222', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE058', 'DESENVOLVIMENTO DE SISTEMAS BASEADOS NA WEB', 94, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4223, '267631', 'GRR20153222', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH014', 'DID??TICA DA COMPUTA?‡?ƒO', 84, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(4224, '267631', 'GRR20153222', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 40, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4225, '267631', 'GRR20153222', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE057', 'PROJETO DE SOFTWARE', 71, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(4234, '268206', 'GRR20153797', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 17, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4235, '268206', 'GRR20153797', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE048', 'COMPUTADORES E SOCIEDADE', 54, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4236, '268206', 'GRR20153797', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 52, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4237, '268206', 'GRR20153797', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 15, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4238, '268206', 'GRR20153797', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE040', 'MATEM??TICA I', 4, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 72, 0, '', 0, '', 1),
(4239, '268206', 'GRR20153797', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 14, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 36, 0, '', 0, '', 1),
(4241, '268206', 'GRR20153797', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 80, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4242, '268206', 'GRR20153797', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE040', 'MATEM??TICA I', 33, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 72, 0, '', 0, '', 1),
(4243, '268206', 'GRR20153797', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE055', 'PROGRAMA?‡?ƒO ORIENTADA A OBJETOS', 0, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4244, '268206', 'GRR20153797', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 75, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4245, '268206', 'GRR20153797', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 39, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4246, '268206', 'GRR20153797', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE040', 'MATEM??TICA I', 16, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4247, '268206', 'GRR20153797', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE046', 'ALGORITMOS E ESTRUTURAS DE DADOS II', 50, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4248, '268206', 'GRR20153797', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 75, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4249, '268206', 'GRR20153797', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE056', 'SISTEMAS DE BANCO DE DADOS', 39, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 72, 0, '', 0, '', 1),
(4250, '268206', 'GRR20153797', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE047', 'ALGORITMOS E ESTRUTURAS DE DADOS III', 60, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4251, '268206', 'GRR20153797', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 77, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4252, '268206', 'GRR20153797', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 86, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4253, '268206', 'GRR20153797', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 52, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 54, 0, '', 0, '', 1),
(4263, '268421', 'GRR20154012', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 23, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4264, '268421', 'GRR20154012', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE048', 'COMPUTADORES E SOCIEDADE', 92, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4265, '268421', 'GRR20154012', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 100, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4266, '268421', 'GRR20154012', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 51, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4267, '268421', 'GRR20154012', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE040', 'MATEM??TICA I', 56, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(4268, '268421', 'GRR20154012', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 83, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4269, '268421', 'GRR20154012', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE046', 'ALGORITMOS E ESTRUTURAS DE DADOS II', 32, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4270, '268421', 'GRR20154012', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 74, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4271, '268421', 'GRR20154012', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE041', 'MATEM??TICA II', 0, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 72, 0, '', 0, '', 1),
(4272, '268421', 'GRR20154012', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 32, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4273, '268421', 'GRR20154012', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH010', 'POL??TICAS EDUCACIONAIS E GEST?ƒO ESCOLAR', 94, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4274, '268421', 'GRR20154012', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 51, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4275, '268421', 'GRR20154012', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH011', '?‰TICA E EDUCA?‡?ƒO', 83, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4276, '268421', 'GRR20154012', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH012', 'HIST?“RIA, FILOSOFIA E ENSINO DAS CI??NCIAS', 90, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4277, '268421', 'GRR20154012', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH015', 'PR??TICA PEDAG?“GICA INTERDISCIPLINAR', 100, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4278, '268421', 'GRR20154012', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE051', 'SISTEMAS OPERACIONAIS', 51, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4279, '268421', 'GRR20154012', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE046', 'ALGORITMOS E ESTRUTURAS DE DADOS II', 38, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4280, '268421', 'GRR20154012', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH013', 'DID??TICA', 81, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4281, '268421', 'GRR20154012', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE041', 'MATEM??TICA II', 12, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4282, '268421', 'GRR20154012', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 36, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4283, '268421', 'GRR20154012', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH055', 'COMUNICA?‡?ƒO EM L??NGUA BRASILEIRA DE SINAIS - LIBRAS', 90, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4284, '268421', 'GRR20154012', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH014', 'DID??TICA DA COMPUTA?‡?ƒO', 89, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(4285, '268421', 'GRR20154012', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE041', 'MATEM??TICA II', 8, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4286, '268421', 'GRR20154012', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH019', 'PR??TICA PEDAG?“GICA DO ENSINO DE COMPUTA?‡?ƒO I', 85, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(4296, '268971', 'GRR20154562', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 52, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4297, '268971', 'GRR20154562', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE048', 'COMPUTADORES E SOCIEDADE', 84, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4298, '268971', 'GRR20154562', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 80, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4299, '268971', 'GRR20154562', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 29, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4300, '268971', 'GRR20154562', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE040', 'MATEM??TICA I', 26, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 72, 0, '', 0, '', 1),
(4301, '268971', 'GRR20154562', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 73, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4302, '268971', 'GRR20154562', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE046', 'ALGORITMOS E ESTRUTURAS DE DADOS II', 25, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4303, '268971', 'GRR20154562', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 83, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4304, '268971', 'GRR20154562', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE041', 'MATEM??TICA II', 25, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 72, 0, '', 0, '', 1),
(4305, '268971', 'GRR20154562', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 70, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4306, '268971', 'GRR20154562', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH010', 'POL??TICAS EDUCACIONAIS E GEST?ƒO ESCOLAR', 73, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4307, '268971', 'GRR20154562', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE052', 'ESTAT??STICA E PROBABILIDADE', 13, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 36, 0, '', 0, '', 1),
(4308, '268971', 'GRR20154562', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH011', '?‰TICA E EDUCA?‡?ƒO', 73, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4309, '268971', 'GRR20154562', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 78, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4310, '268971', 'GRR20154562', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE040', 'MATEM??TICA I', 84, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4311, '268971', 'GRR20154562', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE046', 'ALGORITMOS E ESTRUTURAS DE DADOS II', 66, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4312, '268971', 'GRR20154562', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE041', 'MATEM??TICA II', 37, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4313, '268971', 'GRR20154562', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE055', 'PROGRAMA?‡?ƒO ORIENTADA A OBJETOS', 53, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4314, '268971', 'GRR20154562', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE047', 'ALGORITMOS E ESTRUTURAS DE DADOS III', 75, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4315, '268971', 'GRR20154562', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE052', 'ESTAT??STICA E PROBABILIDADE', 84, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4316, '268971', 'GRR20154562', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH012', 'HIST?“RIA, FILOSOFIA E ENSINO DAS CI??NCIAS', 75, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4317, '268971', 'GRR20154562', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE042', 'MATEM??TICA III', 7, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4318, '268971', 'GRR20154562', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE051', 'SISTEMAS OPERACIONAIS', 83, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4330, '273177', 'GRR20158346', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 27, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4331, '273177', 'GRR20158346', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE048', 'COMPUTADORES E SOCIEDADE', 80, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4332, '273177', 'GRR20158346', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 87, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4333, '273177', 'GRR20158346', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 40, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4334, '273177', 'GRR20158346', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE040', 'MATEM??TICA I', 23, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 72, 0, '', 0, '', 1),
(4335, '273177', 'GRR20158346', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 52, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4336, '273177', 'GRR20158346', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 82, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4337, '273177', 'GRR20158346', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 22, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4338, '273177', 'GRR20158346', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH010', 'POL??TICAS EDUCACIONAIS E GEST?ƒO ESCOLAR', 94, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4339, '273177', 'GRR20158346', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 50, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4340, '273177', 'GRR20158346', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH011', '?‰TICA E EDUCA?‡?ƒO', 83, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4341, '273177', 'GRR20158346', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 73, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4342, '273177', 'GRR20158346', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE040', 'MATEM??TICA I', 4, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4343, '273177', 'GRR20158346', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE046', 'ALGORITMOS E ESTRUTURAS DE DADOS II', 6, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4344, '273177', 'GRR20158346', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE041', 'MATEM??TICA II', 27, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4345, '273177', 'GRR20158346', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 31, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4346, '273177', 'GRR20158346', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH055', 'COMUNICA?‡?ƒO EM L??NGUA BRASILEIRA DE SINAIS - LIBRAS', 72, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4347, '273177', 'GRR20158346', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE052', 'ESTAT??STICA E PROBABILIDADE', 18, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 36, 0, '', 0, '', 1),
(4348, '273177', 'GRR20158346', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH012', 'HIST?“RIA, FILOSOFIA E ENSINO DAS CI??NCIAS', 70, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4349, '273177', 'GRR20158346', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 71, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4350, '273177', 'GRR20158346', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH015', 'PR??TICA PEDAG?“GICA INTERDISCIPLINAR', 90, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4362, '275008', 'GRR20159217', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 15, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4363, '275008', 'GRR20159217', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE048', 'COMPUTADORES E SOCIEDADE', 71, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4364, '275008', 'GRR20159217', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 51, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4365, '275008', 'GRR20159217', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 10, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4366, '275008', 'GRR20159217', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE040', 'MATEM??TICA I', 2, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 72, 0, '', 0, '', 1),
(4367, '275008', 'GRR20159217', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 33, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 36, 0, '', 0, '', 1),
(4368, '275008', 'GRR20159217', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH013', 'DID??TICA', 85, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4369, '275008', 'GRR20159217', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 72, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4370, '275008', 'GRR20159217', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 5, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4371, '275008', 'GRR20159217', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DSH010', 'POL??TICAS EDUCACIONAIS E GEST?ƒO ESCOLAR', 53, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4372, '275008', 'GRR20159217', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2015, 'DEE055', 'PROGRAMA?‡?ƒO ORIENTADA A OBJETOS', 0, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4373, '275008', 'GRR20159217', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 5, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4374, '275008', 'GRR20159217', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 2, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4375, '275008', 'GRR20159217', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE040', 'MATEM??TICA I', 0, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4376, '275008', 'GRR20159217', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 14, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 54, 0, '', 0, '', 1),
(4377, '275008', 'GRR20159217', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE046', 'ALGORITMOS E ESTRUTURAS DE DADOS II', 0, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4378, '275008', 'GRR20159217', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 6, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4379, '275008', 'GRR20159217', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE056', 'SISTEMAS DE BANCO DE DADOS', 4, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 72, 0, '', 0, '', 1),
(4380, '275008', 'GRR20159217', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 30, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4381, '275008', 'GRR20159217', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH012', 'HIST?“RIA, FILOSOFIA E ENSINO DAS CI??NCIAS', 62, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4382, '275008', 'GRR20159217', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 13, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4386, '277030', 'GRR20160011', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE048', 'COMPUTADORES E SOCIEDADE', 23, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 54, 0, '', 0, '', 1),
(4387, '277030', 'GRR20160011', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH055', 'COMUNICA?‡?ƒO EM L??NGUA BRASILEIRA DE SINAIS - LIBRAS', 0, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 36, 0, '', 0, '', 1),
(4390, '277030', 'GRR20160011', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH012', 'HIST?“RIA, FILOSOFIA E ENSINO DAS CI??NCIAS', 72, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4391, '277030', 'GRR20160011', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 5, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1);
INSERT INTO `aproveitamento` (`ID`, `NOME_PESSOA`, `MATR_ALUNO`, `NUM_VERSAO`, `NOME_CURSO`, `COD_CURSO`, `ID_VERSAO_CURSO`, `ANO`, `COD_ATIV_CURRIC`, `NOME_ATIV_CURRIC`, `MEDIA_FINAL`, `DESCR_SITUACAO`, `PERIODO`, `ID_CURSO_ALUNO`, `SITUACAO_ITEM`, `CH_TEORICA`, `CH_PRATICA`, `TOTAL_CARGA_HORARIA`, `ANO_INGRESSO`, `FORMA_EVASAO`, `ANO_EVASAO`, `SEXO`, `id_curso`) VALUES
(4392, '277030', 'GRR20160011', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE040', 'MATEM??TICA I', 14, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4395, '277030', 'GRR20160011', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 84, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4396, '277030', 'GRR20160011', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 70, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4397, '277030', 'GRR20160011', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE056', 'SISTEMAS DE BANCO DE DADOS', 71, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 72, 0, '', 0, '', 1),
(4398, '277030', 'GRR20160011', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 74, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4399, '277030', 'GRR20160011', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE048', 'COMPUTADORES E SOCIEDADE', 71, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4400, '277030', 'GRR20160011', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 73, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4401, '277030', 'GRR20160011', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 84, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4411, '282140', 'GRR20161522', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 77, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4412, '282140', 'GRR20161522', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE048', 'COMPUTADORES E SOCIEDADE', 79, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4413, '282140', 'GRR20161522', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 73, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4414, '282140', 'GRR20161522', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 76, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4415, '282140', 'GRR20161522', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE040', 'MATEM??TICA I', 54, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4416, '282140', 'GRR20161522', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 70, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4417, '282140', 'GRR20161522', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE046', 'ALGORITMOS E ESTRUTURAS DE DADOS II', 50, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4418, '282140', 'GRR20161522', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 88, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4419, '282140', 'GRR20161522', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE041', 'MATEM??TICA II', 60, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4420, '282140', 'GRR20161522', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 88, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4421, '282140', 'GRR20161522', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH010', 'POL??TICAS EDUCACIONAIS E GEST?ƒO ESCOLAR', 83, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4422, '282140', 'GRR20161522', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE047', 'ALGORITMOS E ESTRUTURAS DE DADOS III', 71, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4423, '282140', 'GRR20161522', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE052', 'ESTAT??STICA E PROBABILIDADE', 62, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4424, '282140', 'GRR20161522', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH011', '?‰TICA E EDUCA?‡?ƒO', 83, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4425, '282140', 'GRR20161522', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH012', 'HIST?“RIA, FILOSOFIA E ENSINO DAS CI??NCIAS', 84, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4426, '282140', 'GRR20161522', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE042', 'MATEM??TICA III', 75, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4427, '282140', 'GRR20161522', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE051', 'SISTEMAS OPERACIONAIS', 70, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4441, '278668', 'GRR20161525', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 2, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4442, '278668', 'GRR20161525', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE048', 'COMPUTADORES E SOCIEDADE', 50, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4443, '278668', 'GRR20161525', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 32, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 36, 0, '', 0, '', 1),
(4444, '278668', 'GRR20161525', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 8, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4445, '278668', 'GRR20161525', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE040', 'MATEM??TICA I', 0, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4446, '278668', 'GRR20161525', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 26, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 54, 0, '', 0, '', 1),
(4447, '278668', 'GRR20161525', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE046', 'ALGORITMOS E ESTRUTURAS DE DADOS II', 0, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4448, '278668', 'GRR20161525', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 22, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4449, '278668', 'GRR20161525', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE041', 'MATEM??TICA II', 7, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4450, '278668', 'GRR20161525', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH010', 'POL??TICAS EDUCACIONAIS E GEST?ƒO ESCOLAR', 30, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 36, 0, '', 0, '', 1),
(4451, '278668', 'GRR20161525', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 8, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4452, '278668', 'GRR20161525', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 35, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4453, '278668', 'GRR20161525', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 60, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4462, '280468', 'GRR20161530', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 12, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4463, '280468', 'GRR20161530', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE048', 'COMPUTADORES E SOCIEDADE', 70, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4464, '280468', 'GRR20161530', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 33, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 36, 0, '', 0, '', 1),
(4465, '280468', 'GRR20161530', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 8, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4466, '280468', 'GRR20161530', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE040', 'MATEM??TICA I', 17, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4467, '280468', 'GRR20161530', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 21, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 54, 0, '', 0, '', 1),
(4468, '280468', 'GRR20161530', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE046', 'ALGORITMOS E ESTRUTURAS DE DADOS II', 0, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4469, '280468', 'GRR20161530', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 78, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4470, '280468', 'GRR20161530', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE041', 'MATEM??TICA II', 10, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4471, '280468', 'GRR20161530', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 12, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4472, '280468', 'GRR20161530', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH010', 'POL??TICAS EDUCACIONAIS E GEST?ƒO ESCOLAR', 95, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4473, '280468', 'GRR20161530', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 55, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4474, '280468', 'GRR20161530', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 70, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4475, '280468', 'GRR20161530', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 25, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4476, '280468', 'GRR20161530', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 72, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4486, '282598', 'GRR20165230', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 82, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4487, '282598', 'GRR20165230', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE048', 'COMPUTADORES E SOCIEDADE', 71, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4488, '282598', 'GRR20165230', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 84, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4489, '282598', 'GRR20165230', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 77, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4490, '282598', 'GRR20165230', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE040', 'MATEM??TICA I', 24, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4491, '282598', 'GRR20165230', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 77, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4492, '282598', 'GRR20165230', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE046', 'ALGORITMOS E ESTRUTURAS DE DADOS II', 3, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4493, '282598', 'GRR20165230', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH011', '?‰TICA E EDUCA?‡?ƒO', 78, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4494, '282598', 'GRR20165230', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 70, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4495, '282598', 'GRR20165230', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH056', 'LIBRAS B??SICA', 88, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4496, '282598', 'GRR20165230', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 38, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4497, '282598', 'GRR20165230', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH010', 'POL??TICAS EDUCACIONAIS E GEST?ƒO ESCOLAR', 85, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4498, '282598', 'GRR20165230', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE052', 'ESTAT??STICA E PROBABILIDADE', 69, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4499, '282598', 'GRR20165230', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH012', 'HIST?“RIA, FILOSOFIA E ENSINO DAS CI??NCIAS', 63, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4500, '282598', 'GRR20165230', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH032', 'LEITURA DIRIGIDA DE PAULO FREIRE', 100, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4501, '282598', 'GRR20165230', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 89, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4511, '282388', 'GRR20165506', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 78, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4512, '282388', 'GRR20165506', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE048', 'COMPUTADORES E SOCIEDADE', 94, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4513, '282388', 'GRR20165506', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 87, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4514, '282388', 'GRR20165506', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 82, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4515, '282388', 'GRR20165506', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE040', 'MATEM??TICA I', 81, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4516, '282388', 'GRR20165506', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 85, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4517, '282388', 'GRR20165506', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE046', 'ALGORITMOS E ESTRUTURAS DE DADOS II', 71, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4518, '282388', 'GRR20165506', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH013', 'DID??TICA', 70, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4519, '282388', 'GRR20165506', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 92, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4520, '282388', 'GRR20165506', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE041', 'MATEM??TICA II', 62, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4521, '282388', 'GRR20165506', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 93, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4522, '282388', 'GRR20165506', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH010', 'POL??TICAS EDUCACIONAIS E GEST?ƒO ESCOLAR', 78, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4523, '282388', 'GRR20165506', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE047', 'ALGORITMOS E ESTRUTURAS DE DADOS III', 73, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4524, '282388', 'GRR20165506', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE052', 'ESTAT??STICA E PROBABILIDADE', 70, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4525, '282388', 'GRR20165506', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH011', '?‰TICA E EDUCA?‡?ƒO', 78, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4526, '282388', 'GRR20165506', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH012', 'HIST?“RIA, FILOSOFIA E ENSINO DAS CI??NCIAS', 80, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4527, '282388', 'GRR20165506', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE042', 'MATEM??TICA III', 76, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4528, '282388', 'GRR20165506', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE051', 'SISTEMAS OPERACIONAIS', 75, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4541, '284614', 'GRR20167412', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 76, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4542, '284614', 'GRR20167412', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE048', 'COMPUTADORES E SOCIEDADE', 53, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4543, '284614', 'GRR20167412', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 73, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4544, '284614', 'GRR20167412', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 75, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4545, '284614', 'GRR20167412', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE040', 'MATEM??TICA I', 72, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4546, '284614', 'GRR20167412', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 44, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 54, 0, '', 0, '', 1),
(4547, '284614', 'GRR20167412', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE046', 'ALGORITMOS E ESTRUTURAS DE DADOS II', 41, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4548, '284614', 'GRR20167412', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 37, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4549, '284614', 'GRR20167412', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE042', 'MATEM??TICA II', 23, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4550, '284614', 'GRR20167412', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 33, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4551, '284614', 'GRR20167412', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH010', 'POL??TICAS EDUCACIONAIS E GEST?ƒO ESCOLAR', 75, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4553, '284614', 'GRR20167412', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH011', '?‰TICA E EDUCA?‡?ƒO', 23, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 36, 0, '', 0, '', 1),
(4554, '284614', 'GRR20167412', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH012', 'HIST?“RIA, FILOSOFIA E ENSINO DAS CI??NCIAS', 20, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 36, 0, '', 0, '', 1),
(4555, '284614', 'GRR20167412', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH015', 'PR??TICA PEDAG?“GICA INTERDISCIPLINAR', 80, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4556, '284614', 'GRR20167412', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 27, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 54, 0, '', 0, '', 1),
(4557, '284614', 'GRR20167412', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE051', 'SISTEMAS OPERACIONAIS', 24, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4561, '284122', 'GRR20167420', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 37, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4562, '284122', 'GRR20167420', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE048', 'COMPUTADORES E SOCIEDADE', 88, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4563, '284122', 'GRR20167420', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 93, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4564, '284122', 'GRR20167420', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 56, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4565, '284122', 'GRR20167420', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE040', 'MATEM??TICA I', 15, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4566, '284122', 'GRR20167420', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 83, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4567, '284122', 'GRR20167420', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE046', 'ALGORITMOS E ESTRUTURAS DE DADOS II', 3, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4568, '284122', 'GRR20167420', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH011', '?‰TICA E EDUCA?‡?ƒO', 90, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4569, '284122', 'GRR20167420', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 70, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4570, '284122', 'GRR20167420', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH056', 'LIBRAS B??SICA', 88, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4571, '284122', 'GRR20167420', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 22, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4572, '284122', 'GRR20167420', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH010', 'POL??TICAS EDUCACIONAIS E GEST?ƒO ESCOLAR', 82, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4573, '284122', 'GRR20167420', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 50, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4574, '284122', 'GRR20167420', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE052', 'ESTAT??STICA E PROBABILIDADE', 13, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 36, 0, '', 0, '', 1),
(4575, '284122', 'GRR20167420', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH012', 'HIST?“RIA, FILOSOFIA E ENSINO DAS CI??NCIAS', 78, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4576, '284122', 'GRR20167420', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH032', 'LEITURA DIRIGIDA DE PAULO FREIRE', 100, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4577, '284122', 'GRR20167420', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 81, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4587, '284021', 'GRR20167449', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 13, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4588, '284021', 'GRR20167449', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE048', 'COMPUTADORES E SOCIEDADE', 89, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4589, '284021', 'GRR20167449', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 76, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4590, '284021', 'GRR20167449', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 50, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4591, '284021', 'GRR20167449', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE040', 'MATEM??TICA I', 20, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4592, '284021', 'GRR20167449', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 81, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4593, '284021', 'GRR20167449', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH013', 'DID??TICA', 70, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4594, '284021', 'GRR20167449', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH011', '?‰TICA E EDUCA?‡?ƒO', 79, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4595, '284021', 'GRR20167449', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 50, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4596, '284021', 'GRR20167449', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 19, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4597, '284021', 'GRR20167449', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH010', 'POL??TICAS EDUCACIONAIS E GEST?ƒO ESCOLAR', 50, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4598, '284021', 'GRR20167449', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 54, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4599, '284021', 'GRR20167449', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE052', 'ESTAT??STICA E PROBABILIDADE', 10, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 36, 0, '', 0, '', 1),
(4600, '284021', 'GRR20167449', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH012', 'HIST?“RIA, FILOSOFIA E ENSINO DAS CI??NCIAS', 75, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4601, '284021', 'GRR20167449', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 83, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4609, '284399', 'GRR20167499', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 11, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4610, '284399', 'GRR20167499', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE048', 'COMPUTADORES E SOCIEDADE', 51, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4611, '284399', 'GRR20167499', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 36, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 36, 0, '', 0, '', 1),
(4612, '284399', 'GRR20167499', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 37, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4613, '284399', 'GRR20167499', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE040', 'MATEM??TICA I', 7, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4614, '284399', 'GRR20167499', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 34, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 54, 0, '', 0, '', 1),
(4619, '284399', 'GRR20167499', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 48, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4620, '284399', 'GRR20167499', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 83, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4621, '284399', 'GRR20167499', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 71, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4629, '284621', 'GRR20167506', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 3, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4630, '284621', 'GRR20167506', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE048', 'COMPUTADORES E SOCIEDADE', 36, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 54, 0, '', 0, '', 1),
(4631, '284621', 'GRR20167506', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 47, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 36, 0, '', 0, '', 1),
(4632, '284621', 'GRR20167506', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 1, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4633, '284621', 'GRR20167506', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE040', 'MATEM??TICA I', 0, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4634, '284621', 'GRR20167506', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 36, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 54, 0, '', 0, '', 1),
(4636, '284621', 'GRR20167506', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE052', 'ESTAT??STICA E PROBABILIDADE', 0, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 36, 0, '', 0, '', 1),
(4637, '284621', 'GRR20167506', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH011', '?‰TICA E EDUCA?‡?ƒO', 0, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 36, 0, '', 0, '', 1),
(4638, '284621', 'GRR20167506', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 6, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4639, '284621', 'GRR20167506', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH010', 'POL??TICAS EDUCACIONAIS E GEST?ƒO ESCOLAR', 56, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 36, 0, '', 0, '', 1),
(4640, '284621', 'GRR20167506', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 1, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4641, '284621', 'GRR20167506', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 0, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4642, '284621', 'GRR20167506', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 0, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 54, 0, '', 0, '', 1),
(4649, '284272', 'GRR20167512', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 21, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4650, '284272', 'GRR20167512', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE048', 'COMPUTADORES E SOCIEDADE', 77, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4651, '284272', 'GRR20167512', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 95, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4652, '284272', 'GRR20167512', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 54, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4653, '284272', 'GRR20167512', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE040', 'MATEM??TICA I', 10, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4654, '284272', 'GRR20167512', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 64, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4655, '284272', 'GRR20167512', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH013', 'DID??TICA', 72, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4656, '284272', 'GRR20167512', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH011', '?‰TICA E EDUCA?‡?ƒO', 79, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4657, '284272', 'GRR20167512', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 77, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4658, '284272', 'GRR20167512', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 75, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4659, '284272', 'GRR20167512', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH010', 'POL??TICAS EDUCACIONAIS E GEST?ƒO ESCOLAR', 84, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4660, '284272', 'GRR20167512', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 70, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4661, '284272', 'GRR20167512', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE052', 'ESTAT??STICA E PROBABILIDADE', 59, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4662, '284272', 'GRR20167512', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH012', 'HIST?“RIA, FILOSOFIA E ENSINO DAS CI??NCIAS', 83, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4663, '284272', 'GRR20167512', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH032', 'LEITURA DIRIGIDA DE PAULO FREIRE', 100, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4664, '284272', 'GRR20167512', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 97, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4674, '284538', 'GRR20167537', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 8, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4675, '284538', 'GRR20167537', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE048', 'COMPUTADORES E SOCIEDADE', 51, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4676, '284538', 'GRR20167537', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH055', 'COMUNICA?‡?ƒO EM L??NGUA BRASILEIRA DE SINAIS - LIBRAS', 72, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4677, '284538', 'GRR20167537', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 61, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4678, '284538', 'GRR20167537', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 5, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4679, '284538', 'GRR20167537', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE040', 'MATEM??TICA I', 20, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4680, '284538', 'GRR20167537', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 50, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4681, '284538', 'GRR20167537', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH013', 'DID??TICA', 75, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4682, '284538', 'GRR20167537', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH011', '?‰TICA E EDUCA?‡?ƒO', 78, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4683, '284538', 'GRR20167537', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 57, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4684, '284538', 'GRR20167537', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH056', 'LIBRAS B??SICA', 0, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 36, 0, '', 0, '', 1),
(4685, '284538', 'GRR20167537', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 72, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4686, '284538', 'GRR20167537', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH010', 'POL??TICAS EDUCACIONAIS E GEST?ƒO ESCOLAR', 77, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4687, '284538', 'GRR20167537', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 67, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4688, '284538', 'GRR20167537', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 71, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4689, '284538', 'GRR20167537', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 90, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4699, '284589', 'GRR20167565', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 4, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4700, '284589', 'GRR20167565', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE048', 'COMPUTADORES E SOCIEDADE', 77, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4701, '284589', 'GRR20167565', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 87, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4702, '284589', 'GRR20167565', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 17, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4703, '284589', 'GRR20167565', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE040', 'MATEM??TICA I', 4, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4704, '284589', 'GRR20167565', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 77, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4705, '284589', 'GRR20167565', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH011', '?‰TICA E EDUCA?‡?ƒO', 85, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4706, '284589', 'GRR20167565', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 77, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4707, '284589', 'GRR20167565', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH056', 'LIBRAS B??SICA', 90, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4708, '284589', 'GRR20167565', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 0, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4709, '284589', 'GRR20167565', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH010', 'POL??TICAS EDUCACIONAIS E GEST?ƒO ESCOLAR', 80, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4710, '284589', 'GRR20167565', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 45, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4711, '284589', 'GRR20167565', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 51, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4712, '284589', 'GRR20167565', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH032', 'LEITURA DIRIGIDA DE PAULO FREIRE', 100, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4713, '284589', 'GRR20167565', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 27, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4723, '284336', 'GRR20167693', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 73, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4724, '284336', 'GRR20167693', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE048', 'COMPUTADORES E SOCIEDADE', 87, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4725, '284336', 'GRR20167693', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 82, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4726, '284336', 'GRR20167693', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 63, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4727, '284336', 'GRR20167693', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE040', 'MATEM??TICA I', 25, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4728, '284336', 'GRR20167693', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 70, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4729, '284336', 'GRR20167693', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE046', 'ALGORITMOS E ESTRUTURAS DE DADOS II', 37, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4730, '284336', 'GRR20167693', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH011', '?‰TICA E EDUCA?‡?ƒO', 88, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4731, '284336', 'GRR20167693', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 91, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4732, '284336', 'GRR20167693', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 33, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4733, '284336', 'GRR20167693', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH010', 'POL??TICAS EDUCACIONAIS E GEST?ƒO ESCOLAR', 78, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4734, '284336', 'GRR20167693', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE052', 'ESTAT??STICA E PROBABILIDADE', 0, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 36, 0, '', 0, '', 1),
(4735, '284336', 'GRR20167693', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH012', 'HIST?“RIA, FILOSOFIA E ENSINO DAS CI??NCIAS', 78, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4736, '284336', 'GRR20167693', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 90, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4737, '284336', 'GRR20167693', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH015', 'PR??TICA PEDAG?“GICA INTERDISCIPLINAR', 80, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4745, '284541', 'GRR20167708', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 5, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1);
INSERT INTO `aproveitamento` (`ID`, `NOME_PESSOA`, `MATR_ALUNO`, `NUM_VERSAO`, `NOME_CURSO`, `COD_CURSO`, `ID_VERSAO_CURSO`, `ANO`, `COD_ATIV_CURRIC`, `NOME_ATIV_CURRIC`, `MEDIA_FINAL`, `DESCR_SITUACAO`, `PERIODO`, `ID_CURSO_ALUNO`, `SITUACAO_ITEM`, `CH_TEORICA`, `CH_PRATICA`, `TOTAL_CARGA_HORARIA`, `ANO_INGRESSO`, `FORMA_EVASAO`, `ANO_EVASAO`, `SEXO`, `id_curso`) VALUES
(4746, '284541', 'GRR20167708', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE048', 'COMPUTADORES E SOCIEDADE', 57, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4747, '284541', 'GRR20167708', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 50, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4748, '284541', 'GRR20167708', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 23, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4749, '284541', 'GRR20167708', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE040', 'MATEM??TICA I', 0, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4750, '284541', 'GRR20167708', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 57, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4751, '284541', 'GRR20167708', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH011', '?‰TICA E EDUCA?‡?ƒO', 70, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4752, '284541', 'GRR20167708', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 50, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4753, '284541', 'GRR20167708', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH056', 'LIBRAS B??SICA', 92, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4754, '284541', 'GRR20167708', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 10, 'Reprovado ', '2o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4755, '284541', 'GRR20167708', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH010', 'POL??TICAS EDUCACIONAIS E GEST?ƒO ESCOLAR', 50, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4756, '284541', 'GRR20167708', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 40, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4757, '284541', 'GRR20167708', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 32, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4758, '284541', 'GRR20167708', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 3, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4767, '284398', 'GRR20167741', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 46, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4768, '284398', 'GRR20167741', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE048', 'COMPUTADORES E SOCIEDADE', 98, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4769, '284398', 'GRR20167741', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 79, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4770, '284398', 'GRR20167741', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 14, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4771, '284398', 'GRR20167741', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE040', 'MATEM??TICA I', 11, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4772, '284398', 'GRR20167741', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 70, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4774, '284398', 'GRR20167741', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH011', '?‰TICA E EDUCA?‡?ƒO', 78, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4775, '284398', 'GRR20167741', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 71, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4776, '284398', 'GRR20167741', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DEE049', 'OFICINA DE COMPUTA?‡?ƒO', 32, 'Reprovado ', '2o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4777, '284398', 'GRR20167741', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2016, 'DSH010', 'POL??TICAS EDUCACIONAIS E GEST?ƒO ESCOLAR', 74, 'Aprovado', '2o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4778, '284398', 'GRR20167741', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 75, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4779, '284398', 'GRR20167741', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 51, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4780, '284398', 'GRR20167741', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 51, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4789, '293475', 'GRR20173753', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 37, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4790, '293475', 'GRR20173753', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE048', 'COMPUTADORES E SOCIEDADE', 25, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 54, 0, '', 0, '', 1),
(4791, '293475', 'GRR20173753', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 52, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4792, '293475', 'GRR20173753', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 12, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4793, '293475', 'GRR20173753', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 14, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4794, '293475', 'GRR20173753', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 32, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 54, 0, '', 0, '', 1),
(4803, '291637', 'GRR20173756', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 97, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4804, '291637', 'GRR20173756', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE048', 'COMPUTADORES E SOCIEDADE', 84, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4805, '291637', 'GRR20173756', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 53, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4806, '291637', 'GRR20173756', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 74, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4807, '291637', 'GRR20173756', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 88, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4808, '291637', 'GRR20173756', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 83, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4820, '292993', 'GRR20173757', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 70, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4821, '292993', 'GRR20173757', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE048', 'COMPUTADORES E SOCIEDADE', 68, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4822, '292993', 'GRR20173757', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 86, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4823, '292993', 'GRR20173757', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 77, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4824, '292993', 'GRR20173757', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 77, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4825, '292993', 'GRR20173757', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 80, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4837, '291210', 'GRR20173762', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 1, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4838, '291210', 'GRR20173762', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE048', 'COMPUTADORES E SOCIEDADE', 32, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 54, 0, '', 0, '', 1),
(4839, '291210', 'GRR20173762', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 8, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 36, 0, '', 0, '', 1),
(4840, '291210', 'GRR20173762', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 10, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4841, '291210', 'GRR20173762', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 0, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4842, '291210', 'GRR20173762', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 18, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 54, 0, '', 0, '', 1),
(4846, '289877', 'GRR20173764', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 16, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4847, '289877', 'GRR20173764', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE048', 'COMPUTADORES E SOCIEDADE', 56, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4848, '289877', 'GRR20173764', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 25, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 36, 0, '', 0, '', 1),
(4849, '289877', 'GRR20173764', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 23, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4850, '289877', 'GRR20173764', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 32, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4851, '289877', 'GRR20173764', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 64, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4861, '292281', 'GRR20173769', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 52, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4862, '292281', 'GRR20173769', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE048', 'COMPUTADORES E SOCIEDADE', 64, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4863, '292281', 'GRR20173769', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 57, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4864, '292281', 'GRR20173769', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 55, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4865, '292281', 'GRR20173769', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 42, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4866, '292281', 'GRR20173769', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 73, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4877, '292963', 'GRR20173910', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 0, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4878, '292963', 'GRR20173910', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE048', 'COMPUTADORES E SOCIEDADE', 52, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 54, 0, '', 0, '', 1),
(4879, '292963', 'GRR20173910', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 12, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 36, 0, '', 0, '', 1),
(4880, '292963', 'GRR20173910', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 0, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4881, '292963', 'GRR20173910', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 0, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4882, '292963', 'GRR20173910', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 22, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 54, 0, '', 0, '', 1),
(4892, '296572', 'GRR20177372', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 66, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4893, '296572', 'GRR20177372', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE048', 'COMPUTADORES E SOCIEDADE', 79, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4894, '296572', 'GRR20177372', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 70, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4895, '296572', 'GRR20177372', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 70, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4896, '296572', 'GRR20177372', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 74, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4897, '296572', 'GRR20177372', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 85, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4909, '296202', 'GRR20177373', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 70, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4910, '296202', 'GRR20177373', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE048', 'COMPUTADORES E SOCIEDADE', 32, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 54, 0, '', 0, '', 1),
(4911, '296202', 'GRR20177373', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 72, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4912, '296202', 'GRR20177373', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 24, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4913, '296202', 'GRR20177373', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 74, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4914, '296202', 'GRR20177373', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 75, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4917, '296151', 'GRR20177374', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 81, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4918, '296151', 'GRR20177374', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE048', 'COMPUTADORES E SOCIEDADE', 85, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4919, '296151', 'GRR20177374', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 77, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4920, '296151', 'GRR20177374', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 70, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4921, '296151', 'GRR20177374', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 97, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 90, 0, '', 0, '', 1),
(4922, '296151', 'GRR20177374', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 87, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4934, '296548', 'GRR20177376', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 12, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4935, '296548', 'GRR20177376', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE048', 'COMPUTADORES E SOCIEDADE', 60, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4936, '296548', 'GRR20177376', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 50, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4937, '296548', 'GRR20177376', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 7, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4938, '296548', 'GRR20177376', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 18, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4939, '296548', 'GRR20177376', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 65, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4945, '296349', 'GRR20177377', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 0, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4946, '296349', 'GRR20177377', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE048', 'COMPUTADORES E SOCIEDADE', 0, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 54, 0, '', 0, '', 1),
(4947, '296349', 'GRR20177377', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 0, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 36, 0, '', 0, '', 1),
(4948, '296349', 'GRR20177377', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 0, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4949, '296349', 'GRR20177377', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 8, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4950, '296349', 'GRR20177377', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 0, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 54, 0, '', 0, '', 1),
(4962, '296184', 'GRR20177378', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 17, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4963, '296184', 'GRR20177378', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE048', 'COMPUTADORES E SOCIEDADE', 73, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4964, '296184', 'GRR20177378', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 70, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4965, '296184', 'GRR20177378', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 18, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4966, '296184', 'GRR20177378', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 29, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4967, '296184', 'GRR20177378', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 62, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4977, '296199', 'GRR20177381', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 0, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4978, '296199', 'GRR20177381', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE048', 'COMPUTADORES E SOCIEDADE', 4, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 54, 0, '', 0, '', 1),
(4979, '296199', 'GRR20177381', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 59, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 36, 0, '', 0, '', 1),
(4980, '296199', 'GRR20177381', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 1, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4981, '296199', 'GRR20177381', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 0, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4982, '296199', 'GRR20177381', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 70, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4988, '296222', 'GRR20177382', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 21, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4989, '296222', 'GRR20177382', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE048', 'COMPUTADORES E SOCIEDADE', 70, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4990, '296222', 'GRR20177382', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH008', 'FUNDAMENTOS DA EDUCA?‡?ƒO', 71, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 36, 0, '', 0, '', 1),
(4991, '296222', 'GRR20177382', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE090', 'INTRODU?‡?ƒO ?€ L?“GICA', 17, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(4992, '296222', 'GRR20177382', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE040', 'MATEM??TICA I', 44, 'Reprovado ', '1o. Semestre', 0, 2, 0, 0, 90, 0, '', 0, '', 1),
(4993, '296222', 'GRR20177382', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DSH009', 'PSICOLOGIA DA EDUCA?‡?ƒO', 73, 'Aprovado', '1o. Semestre', 0, 1, 0, 0, 54, 0, '', 0, '', 1),
(4997, '296042', 'GRR20177383', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 1, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 90, 0, '', 0, '', 1),
(5002, '296042', 'GRR20177383', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2017, 'DEE053', 'GEOMETRIA ANAL??TICA', 0, 'Reprovado ', '1o. Semestre', 0, 3, 0, 0, 36, 0, '', 0, '', 1),
(5465, 'CICLANO DA SILVA', '1123', 2016, 'Programação Básica', '4curso', 1468, 2017, 't1', 'CURSO PHP', 88, 'Aprovado', '1o. Semestre', 2578568, 1, 0, 0, 90, 2017, 'Sem Evasão', 0, 'M', 6),
(5466, 'CICLANO DA SILVA', '1123', 2016, 'Programação Básica', '4curso', 1468, 2017, 't2', 'C', 0, 'Aprovado', '1o. Semestre', 2578568, 1, 0, 0, 90, 2017, 'Sem Evasão', 0, 'M', 6),
(5467, 'CICLANO DA SILVA', '1123', 2016, 'Programação Básica', '4curso', 1468, 2017, 't3', 'Pascal', 98, 'Aprovado', '1o. Semestre', 2578568, 1, 0, 0, 90, 2017, 'Sem Evasão', 0, 'M', 6),
(5468, 'CICLANO DA SILVA', '1123', 2016, 'Programação Básica', '4curso', 1468, 2017, 't4', 'JAVA', 89, 'Aprovado', '1o. Semestre', 2578568, 1, 0, 0, 90, 2017, 'Sem Evasão', 0, 'M', 6),
(5469, 'CICLANO DA SILVA', '1123', 2016, 'Programação Básica', '4curso', 1468, 2017, 't5', 'JAVA', 89, 'Aprovado', '1o. Semestre', 2578568, 1, 0, 0, 90, 2017, 'Sem Evasão', 0, 'M', 6),
(5470, 'CICLANO DA SILVA', '1123', 2016, 'Programação Básica', '4curso', 1468, 2017, 't6', 'JAVA', 100, 'Aprovado', '1o. Semestre', 2578568, 1, 0, 0, 90, 2017, 'Sem Evasão', 0, 'M', 6),
(5471, 'CICLANO DA SILVA', '1123', 2016, 'Programação Básica', '4curso', 1468, 2017, 't7', 'JAVA', 12, 'Aprovado', '1o. Semestre', 2578568, 1, 0, 0, 90, 2017, 'Sem Evasão', 0, 'M', 6),
(5472, 'CICLANO DA SILVA', '1123', 2016, 'Programa?a?o B?sica', 'a1', 1468, 2017, 't1', 'CURSO PHP', 88, 'APROVADO', '1o. Semestre', 2578568, 1, 0, 0, 90, 2017, 'Sem Evasão', 0, 'M', 2),
(5473, 'CICLANO DA SILVA', '1123', 2016, 'Programa?a?o B?sica', 'a1', 1468, 2017, 't2', 'C', 0, 'APROVADO', '1o. Semestre', 2578568, 1, 0, 0, 90, 2017, 'Sem Evasão', 0, 'M', 2),
(5474, 'CICLANO DA SILVA', '1123', 2016, 'Programa?a?o B?sica', 'a1', 1468, 2017, 't3', 'Pascal', 98, 'APROVADO', '1o. Semestre', 2578568, 1, 0, 0, 90, 2017, 'Sem Evasão', 0, 'M', 2),
(5475, 'CICLANO DA SILVA', '1123', 2016, 'Programa?a?o B?sica', 'a1', 1468, 2017, 't5', 'JAVA', 89, 'APROVADO', '1o. Semestre', 2578568, 1, 0, 0, 90, 2017, 'Sem Evasão', 0, 'M', 2),
(5476, 'CICLANO DA SILVA', '1123', 2016, 'Programa?a?o B?sica', 'a1', 1468, 2017, 't7', 'JAVA', 12, 'APROVADO', '1o. Semestre', 2578568, 1, 0, 0, 90, 2017, 'Sem Evasão', 0, 'M', 2),
(5477, '257846', 'GRR20145680', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DEE053', 'GEOMETRIA ANALÍTICA', 94, 'Aprovado', '4o. Semestre', 0, 1, 0, 0, 36, 0, NULL, 0, 'M', 1),
(5478, '258226', 'GRR20146060', 1467, 'Curso de Licenciatura em Computa?§?£o - Palotina - Noturno', '156A', 2016, 2014, 'DEE053', 'GEOMETRIA ANALÍTICA', 80, 'Aprovado', '4o. Semestre', 0, 1, 0, 0, 36, 0, NULL, 0, 'M', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `compartilhado`
--

CREATE TABLE `compartilhado` (
  `id` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `id_compartilhado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `compartilhado`
--

INSERT INTO `compartilhado` (`id`, `id_curso`, `id_compartilhado`) VALUES
(3, 1014, 1),
(4, 6, 14),
(5, 9, 18),
(6, 9, 17),
(7, 12, 17),
(10, 1015, 1),
(16, 2, 17),
(21, 1005, 13),
(24, 1, 6),
(27, 1018, 19),
(28, 2, 19);

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `id` int(11) NOT NULL,
  `codigo` varchar(15) NOT NULL,
  `nome` text NOT NULL,
  `semanas` int(11) NOT NULL,
  `cargaHoraria` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_periodo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`id`, `codigo`, `nome`, `semanas`, `cargaHoraria`, `id_usuario`, `id_periodo`) VALUES
(1, '156A', 'Licenciatura em Computação', 18, 3042, 1, 3),
(2, 'a1', 'Programação Básica 1', 15, 0, 1, 3),
(3, '12', 'TESTE hhh', 0, 0, 2, 3),
(4, '122', 'QQsdasa', 0, 0, 2, 3),
(5, '112a', 'outro teste', 0, 0, 1, 3),
(6, '4curso', 'novo CURSO', 0, 0, 1, 3),
(7, 'br', 'heheheehzxasd', 0, 0, 1, 3),
(8, 'dasd', 'testeeeeeessas', 16, 0, 1, 3),
(9, 'codigo1', 'mais um teste', 12, 0, 1, 3),
(10, 'sa', 'Curso de Teste', 12, 0, 1, 3),
(11, 'sem codigo', 'A outro teste do Angular ', 45, 0, 1, 3),
(12, 'log', 'logaritmos', 18, 0, 1, 3),
(13, 'tettsttstst', 'testandoooo', 18, 0, 1, 3),
(14, 'teste2', 'outro teste 2', 12, 0, 2, 3),
(15, 'k1', 'curso 1', 12, 0, 6, 3),
(17, 'asas', 'outroqq', 0, 0, 12, 3),
(21, 'testeNovo2', 'teste novo 2', 12, 0, 13, 3),
(1000, '99', 'teste', 12, 0, 13, 3),
(1001, '7777', 'meu curso', 12, 0, 13, 3),
(1005, 'a2', 'outro', 20, 0, 1, 3),
(1006, 'kkjh4ff', 'curso', 12, 0, 2, 3),
(1007, '1231', 'awa', 0, 0, 2, 3),
(1008, 'kkas34', 'teste', 12, 0, 15, 3),
(1009, 'st01', 'só testando', 12, 0, 1, 3),
(1010, 'pr31', 'Programação', 18, 0, 2, 3),
(1011, 'asasas', 'daniel', 0, 0, 1, 3),
(1012, 'adasdasd', 'dani', 0, 0, 1, 3),
(1013, 'gdashg', 'asdasdjhjdgh', 12, 0, 1, 3),
(1014, 'dasdasd', 'daniel dois', 0, 0, 17, 3),
(1015, '12erre', 'daniel 3', 12, 0, 17, 3),
(1016, 'v2', 'curso vespertino', 2, 0, 1, 2),
(1017, 'ufprC', 'cinco mil horas de C', 18, 5000, 1, 1),
(1018, 'BIO', 'BACHAREL EM CIÊNCIAS BIOLÓGICAS', 15, 3200, 1, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `ID` int(11) NOT NULL,
  `CODIGO` varchar(10) NOT NULL,
  `NOME` varchar(255) DEFAULT NULL,
  `categoria` varchar(56) DEFAULT NULL,
  `curso` text NOT NULL,
  `TOTAL_CARGA_HORARIA` int(11) NOT NULL,
  `requisitoCadastrado` int(11) NOT NULL,
  `requisitada` int(1) NOT NULL DEFAULT '0',
  `ativa` int(11) NOT NULL,
  `id_curso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`ID`, `CODIGO`, `NOME`, `categoria`, `curso`, `TOTAL_CARGA_HORARIA`, `requisitoCadastrado`, `requisitada`, `ativa`, `id_curso`) VALUES
(1, 'DEE045', 'ALGORITMOS E ESTRUTURA DE DADOS I', 'COMPUTACAO', '156A', 90, 1, 1, 0, 1),
(2, 'DEE048', 'COMPUTADORES E SOCIEDADE', 'COMPUTACAO', '156A', 54, 1, 1, 0, 1),
(3, 'DEE090', 'INTRODUÇÃO À LÓGICA', 'COMPUTACAO', '156A', 90, 1, 1, 0, 1),
(4, 'DEE040', 'MATEMÁTICA I', 'EXATA', '156A', 72, 1, 1, 0, 1),
(5, 'DSH010', 'POLÍTICAS EDUCACIONAIS E GESTÃO ESCOLAR', 'PEDAGOGICA', '156A', 36, 1, 1, 1, 1),
(6, 'DSH009', 'PSICOLOGIA DA EDUCAÇÃO', 'PEDAGOGICA', '156A', 54, 1, 1, 0, 1),
(7, 'DEE046', 'ALGORITMOS E ESTRUTURAS DE DADOS II', 'COMPUTACAO', '156A', 90, 1, 1, 1, 1),
(8, 'DSH008', 'FUNDAMENTOS DA EDUCAÇÃO', 'PEDAGOGICA', '156A', 36, 1, 1, 0, 1),
(9, 'DEE050', 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', 'COMPUTACAO', '156A', 90, 1, 1, 1, 1),
(10, 'DEE041', 'MATEMÁTICA II', 'EXATA', '156A', 72, 1, 1, 1, 1),
(11, 'DEE049', 'OFICINA DE COMPUTAÇÃO', 'COMPUTACAO', '156A', 90, 1, 1, 1, 1),
(12, 'DEE047', 'ALGORITMOS E ESTRUTURAS DE DADOS III', 'COMPUTACAO', '156A', 90, 1, 1, 0, 1),
(13, 'DEE052', 'ESTATÍSTICA E PROBABILIDADE', 'EXATA', '156A', 36, 1, 1, 0, 1),
(14, 'DSH011', 'ÉTICA E EDUCAÇÃO', 'PEDAGOGICA', '156A', 36, 1, 1, 0, 1),
(15, 'DSH012', 'HISTÓRIA, FILOSOFIA E ENSINO DAS CIÊNCIAS', 'PEDAGOGICA', '156A', 36, 1, 1, 0, 1),
(16, 'DEE042', 'MATEMÁTICA III', 'EXATA', '156A', 72, 1, 1, 0, 1),
(17, 'DEE051', 'SISTEMAS OPERACIONAIS', 'COMPUTACAO', '156A', 90, 1, 1, 0, 1),
(18, 'DSH013', 'DIDÁTICA', 'PEDAGOGICA', '156A', 36, 1, 1, 1, 1),
(19, 'DEE054', 'FUNDAMENTOS DE REDES E SISTEMAS DISTRIBUÍDOS', 'COMPUTACAO', '156A', 90, 1, 1, 1, 1),
(20, 'DEE043', 'MATEMÁTICA IV', 'EXATA', '156A', 36, 1, 1, 1, 1),
(21, 'DEE055', 'PROGRAMAÇÃO ORIENTADA A OBJETOS', 'COMPUTACAO', '156A', 90, 1, 1, 1, 1),
(22, 'DEE056', 'SISTEMAS DE BANCOS DE DADOS', 'COMPUTACAO', '156A', 54, 1, 1, 1, 1),
(23, 'DEE058', 'DESENVOLVIMENTO DE SISTEMAS BASEADOS NA WEB', 'COMPUTACAO', '156A', 54, 1, 1, 0, 1),
(24, 'DSH014', 'DIDÁTICA DE COMPUTAÇÃO', 'PEDAGOGICA', '156A', 72, 1, 1, 0, 1),
(25, 'DSH016', 'ESTÁGIO SUPERVISIONADO DE DOCÊNCIA I', 'PEDAGOGICA', '156A', 72, 1, 1, 0, 1),
(26, 'DEE044', 'MATEMÁTICA V', 'EXATA', '156A', 72, 1, 1, 0, 1),
(27, 'DSH015', 'PRÁTICA PEDAGÓGICA INTERDISCIPLINAR', 'PEDAGOGICA', '156A', 36, 1, 1, 0, 1),
(28, 'DEE057', 'PROJETO DE SOFTWARE', 'COMPUTACAO', '156A', 54, 1, 1, 0, 1),
(29, 'PCN001', 'MOBILIDADE ACADÊMICA NACIONAL I', 'EXATA', '156A', 0, 1, 1, 0, 1),
(30, 'DSH018', 'INFORMÁTICA E EDUCAÇÃO', 'PEDAGOGICA', '156A', 72, 1, 1, 1, 1),
(31, 'DEE059', 'INTELIGÊNCIA ARTIFICIAL', 'COMPUTACAO', '156A', 90, 1, 1, 1, 1),
(32, 'DEE060', 'INTERAÇÃO HUMANO COMPUTADOR', 'COMPUTACAO', '156A', 72, 1, 1, 1, 1),
(33, 'DSH019', 'PRÁTICA PEDAGÓGICA DO ENSINO DE COMPUTAÇÃO I', 'PEDAGOGICA', '156A', 72, 1, 1, 1, 1),
(34, 'DSH055', 'COMUNICAÇÃO EM LÍNGUA BRASILEIRA DE SINAIS - LIBRAS', 'PEDAGOGICA', '156A', 36, 1, 1, 1, 1),
(35, 'DSH021', 'ESTÁGIO SUPERVISIONADO DE DOCÊNCIA EM COMPUTAÇÃO I', 'PEDAGOGICA', '156A', 126, 1, 1, 1, 1),
(36, 'DSH020', 'PRÁTICA PEDAGÓGICA DO ENSINO DE COMPUTAÇÃO II', 'PEDAGOGICA', '156A', 90, 1, 1, 1, 1),
(37, 'DEE061', 'SISTEMAS MULTIMÍDIA', 'COMPUTACAO', '156A', 54, 1, 1, 1, 1),
(38, 'DSH023', 'TRABALHO DE CONCLUSÃO DO CURSO DE LICENCIATURA EM COMPUTAÇÃO I', 'COMPUTACAO', '156A', 36, 1, 1, 1, 1),
(39, 'DSH026', 'DIVULGAÇÃO CIENTÍFICA', 'PEDAGOGICA', '156A', 36, 1, 1, 0, 1),
(40, 'DSH022', 'ESTÁGIO SUPERVISIONADO DE DOCÊNCIA EM COMPUTAÇÃO II', 'PEDAGOGICA', '156A', 0, 1, 1, 0, 1),
(41, 'DSH025', 'PRÁTICA PEDAGÓGICA DO ENSINO DE CIÊNCIAS EM AMBIENTES VIRTUAIS DE ENSINO E APRENDIZAGEM', 'PEDAGOGICA', '156A', 72, 1, 1, 0, 1),
(42, 'DSH024', 'TRABALHO DE CONCLUSÃO DO CURSO DE LICENCIATURA EM COMPUTAÇÃO II', 'COMPUTACAO', '156A', 36, 1, 1, 0, 1),
(43, 'DSH017', 'ESTÁGIO SUPERVISIONADO DE DOCÊNCIA II', 'PEDAGOGICA', '156A', 90, 1, 1, 1, 1),
(45, 'T1', 'teste1', 'COMPUTACAO', '156ZZ', 45, 0, 0, 0, NULL),
(46, 'T2', 'teste2', 'EXATA', '156ZZ', 45, 0, 0, 0, NULL),
(47, 'T3', 'teste3', 'EXATA', '156ZZ', 0, 0, 0, 0, NULL),
(48, 'T4', 'teste4', 'exata', '156ZZ', 0, 0, 0, 0, NULL),
(49, 'T5', 'teste5', 'PEDAGOGICA', '156ZZ', 0, 0, 0, 0, NULL),
(55, 'P1', 'portugues', 'normal', 'a2', 30, 0, 0, 0, NULL),
(56, 'm1', 'matemática', 'normal', 'a2', 76, 0, 0, 0, NULL),
(57, 'dd', 'dd', 'dsa', 'a2', 22, 0, 0, 0, NULL),
(58, 'dsa', 'Dsadsadsa', 'dsa', 'a3', 33, 0, 0, 0, NULL),
(65, 'a3', 'dfdsfsdfssss', 'Programação', 't1', 34, 0, 0, 0, NULL),
(66, 'ttt', 'teste', 'nenhuma', 'ee2', 22, 0, 0, 0, NULL),
(71, 'e', 'w', 'web developer', 'fgfd', 12, 0, 0, 0, NULL),
(140, 'log0', 'Log para Potência', 'basico', '', 4, 1, 1, 1, 12),
(141, 'log1', 'Log de 1', 'basico', '', 2, 1, 0, 1, 12),
(142, 'LogBase', 'Logaritmo e base igual', 'basico', '', 1, 1, 0, 1, 12),
(143, 'logPotenci', 'a^log a b', 'basico', '', 1, 1, 0, 1, 12),
(144, 'baseIgual', 'Logs de mesma base', 'basico', '', 1, 1, 0, 1, 12),
(145, 'prod', 'Produto', 'propriedade', '', 2, 1, 1, 1, 12),
(146, 'quoc', 'Quociente', 'propriedade', '', 2, 1, 1, 1, 12),
(147, 'pote', 'Potência', 'propriedade', '', 3, 1, 1, 1, 12),
(148, 'raiz', 'Raiz', 'propriedade', '', 4, 1, 0, 1, 12),
(149, 'mudBase', 'Mudança de base', 'propriedade', '', 4, 1, 0, 1, 12),
(150, 'JAVA01', 'JAVA O.O.', 'Programação', '', 20, 0, 0, 1, 2),
(151, 'C01', 'C programação', 'Programação', '', 67, 0, 0, 1, 2),
(163, 'dsds', 'tete', '', '', 0, 0, 0, 0, NULL),
(192, 'r', 'desenhos da Rafa', 'desenho', '', 11, 0, 0, 1, NULL),
(197, 'sdsd', 'Dsdsdsad', '', '', 0, 0, 0, 1, NULL),
(207, 'php01', 'PHP', 'Desenvolvimento Web', '', 60, 0, 0, 1, 2),
(213, 'dsadasa', 'dasd', '', '', 0, 0, 0, 1, 4),
(216, 'testeeeeee', 'testando', '', '', 0, 0, 0, 0, 3),
(217, 'dsad', 'dsjhdas', '', '', 0, 0, 0, 0, 3),
(220, 'ahsdjahg', 'dsgj', '', '', 0, 0, 0, 1, 14),
(221, 'aa', 'disicplina', 'dgsgjd', '', 12, 0, 0, 1, 15),
(229, 'asas', 'teste', '', '', 0, 0, 0, 1, 21),
(230, 'asdgssahja', 'outra', '', '', 12, 0, 0, 1, 21),
(231, 'nova21', 'nova disciplina', 'sem categoria', '', 12, 0, 0, 0, 1008),
(233, 'qqwqew', 'qq', '', '', 0, 0, 0, 1, 9),
(234, 'jdjks', 'eu 2', '', '', 0, 0, 0, 1, 1014),
(236, 'js01', 'Java Script', 'web', '', 23, 0, 0, 1, 2),
(239, 'dsadsa', 'daada', 'web', '', 0, 0, 0, 1, 2),
(243, 'TESTE0012', 'TESTE MATEMATICA', 'EXATA', '', 72, 1, 1, 0, 1),
(244, 'DSH027', 'EMPREENDEDORISMO (OPTATIVA)', 'COMPUTACAO', '', 36, 1, 0, 0, 1),
(245, 'DEE074', 'TÓPICOS EM INTELIGÊNCIA ARTIFICIAL I (OPTATIVA)', 'COMPUTACAO', '', 36, 1, 1, 1, 1),
(246, 'DEE075', 'TÓPICOS EM INTELIGÊNCIA ARTIFICIAL II (OPTATIVA)', 'COMPUTACAO', '', 72, 1, 0, 0, 1),
(248, 'testemt2', 'TESTE MATEMATICA 2', 'EXATA', '', 72, 1, 0, 0, 1),
(249, 'DEE053', 'GEOMETRIA ANALÍTICA', 'EXATA', '', 36, 1, 1, 1, 1),
(250, 'SPCB013', 'Morfologia e Anatomia Vegetal', 'nenhuma', '', 60, 1, 1, 1, 1018),
(251, 'SPCB014', 'Fundamentos de Zoologia', 'nenhuma', '', 60, 1, 1, 1, 1018),
(252, 'SPCB015', 'Ecologia das Populações', 'nenhuma', '', 30, 1, 0, 1, 1018),
(253, 'SPCB016', 'Redação Instrumental', 'nenhuma', '', 30, 1, 0, 1, 1018),
(254, 'SPCB017', 'Biologia Celular', 'nenhuma', '', 60, 1, 1, 1, 1018),
(255, 'SPCB018', 'Bioquímica', 'nenhuma', '', 60, 1, 0, 1, 1018),
(256, 'SPCB019', 'Bioética', 'nenhuma', '', 30, 1, 0, 1, 1018),
(257, 'SPCB020', 'Metodologia Científica', 'nenhuma', '', 30, 1, 0, 1, 1018),
(258, 'SPCB021', 'Artrópodes', 'nenhuma', '', 60, 1, 1, 1, 1018),
(259, 'SPCB022', 'Sistemática de Criptógramas', 'nenhuma', '', 60, 1, 0, 1, 1018),
(260, 'SPCB023', 'Microbiologia Geral', 'nenhuma', '', 60, 1, 0, 1, 1018),
(261, 'SPCB024', 'Biologia do Desenvolvimento', 'nenhuma', '', 75, 1, 0, 1, 1018),
(262, 'SPCB025', 'Parasitologia', 'nenhuma', '', 30, 1, 0, 1, 1018),
(263, 'SPCB026', 'Ecossistemas Brasileiros', 'nenhuma', '', 30, 1, 0, 1, 1018),
(264, 'SPCB027', 'Biologia Molecular', 'nenhuma', '', 60, 1, 0, 1, 1018),
(265, 'SPCB028', 'Genética', 'nenhuma', '', 60, 1, 0, 1, 1018),
(266, 'SPCB029', 'Anatomofisiologia Animal Comparada 1', 'nenhuma', '', 75, 1, 1, 1, 1018),
(267, 'SPCB031', 'Sistemática de Fanerógamas', 'nenhuma', '', 60, 1, 0, 1, 1018),
(268, 'SPCB032', 'Moluscos e Deuterostômios Invertebrados', 'nenhuma', '', 60, 1, 0, 1, 1018),
(269, 'SPCB033', 'Educação Ambiental', 'nenhuma', '', 15, 1, 0, 1, 1018),
(270, 'SPCB034', 'Ecologia do Campo', 'nenhuma', '', 90, 1, 0, 1, 1018),
(271, 'SPCB036', 'Bioestatística Básica', 'nenhuma', '', 45, 1, 0, 1, 1018),
(272, 'SPCB030', 'Anatomofisiologia Animal Comparada 2', 'nenhuma', '', 75, 1, 0, 1, 1018),
(273, 'SPCB037', 'Geologia Aplicada à Biologia', 'nenhuma', '', 30, 1, 0, 1, 1018),
(274, 'SPCB038', 'Vertebrados', 'nenhuma', '', 75, 1, 0, 1, 1018),
(275, 'SPCB039', 'Química Geral', 'nenhuma', '', 60, 1, 1, 1, 1018),
(276, 'SPCB040', 'Imunologia', 'nenhuma', '', 30, 1, 0, 1, 1018),
(277, 'SPCB041', 'Legislação Ambiental', 'nenhuma', '', 15, 1, 0, 1, 1018),
(278, 'SPCB044', 'Genética de Populações', 'nenhuma', '', 30, 1, 1, 1, 1018),
(279, 'SPCB045', 'Ecologia de Comunidades e Conservação', 'nenhuma', '', 60, 1, 0, 1, 1018),
(280, 'SPCB046', 'Fisiologia Vegetal', 'nenhuma', '', 60, 1, 0, 1, 1018),
(281, 'SPCB084', 'Gestão Ambiental', 'nenhuma', '', 30, 1, 0, 1, 1018),
(283, 'SPCB085', 'Práticas em Química Ambiental', 'nenhuma', '', 45, 1, 0, 1, 1018),
(284, 'SPCB086', 'Planejamento e Amostragem em Ecologia de Campo', 'nenhuma', '', 60, 1, 0, 1, 1018),
(285, 'SPCB049', 'Biogeografia', 'nenhuma', '', 30, 1, 1, 1, 1018),
(286, 'SPCB050', 'Biodiversidade e Conservação de Recursos', 'nenhuma', '', 30, 1, 0, 1, 1018),
(287, 'SPCB087', 'Avaliação de Impacto Ambiental', 'nenhuma', '', 30, 1, 0, 1, 1018),
(288, 'SPCB088', 'Gestão Turística de Ambientes Naturais', 'nenhuma', '', 30, 1, 0, 1, 1018),
(289, 'SPCB089', 'Ecologia Ambiental', 'nenhuma', '', 30, 1, 0, 1, 1018),
(290, 'SPCB090', 'Bioestatística Avançada', 'nenhuma', '', 60, 1, 0, 1, 1018),
(291, 'SPCB091', 'Restauração de Áreas Degradadas', 'nenhuma', '', 45, 1, 0, 1, 1018),
(292, 'SPCB092', 'Bacias Hidrográficas', 'nenhuma', '', 45, 1, 0, 1, 1018),
(293, 'SPCB054', 'Práticas em Educação Ambiental', 'nenhuma', '', 30, 1, 0, 1, 1018),
(294, 'SPCB053', 'Paleontologia Geral e Aplicada', 'nenhuma', '', 30, 1, 0, 1, 1018),
(295, 'SPCB122', 'Projetos em Ecologia de Campo', 'nenhuma', '', 90, 1, 0, 1, 1018),
(296, 'SPCB061', 'Evolução', 'nenhuma', '', 45, 1, 0, 1, 1018),
(297, 'SPCB093', 'Modelagem Ecológica', 'nenhuma', '', 45, 1, 0, 1, 1018),
(298, 'SPCB094', 'Gerenciamento de Resíduos', 'nenhuma', '', 60, 1, 0, 1, 1018),
(299, 'SPCB095', 'Estágio Supervisionado em Ciências Biológicas 1', 'nenhuma', '', 180, 1, 0, 1, 1018),
(300, 'SPCB096', 'Estágio Supervisionado em Ciências Biológicas 2', 'nenhuma', '', 180, 1, 0, 1, 1018),
(301, 'SPCB097', 'Trabalho de Conclusão de Curso', 'nenhuma', '', 60, 1, 0, 1, 1018),
(302, 'SPCB098', 'Abelhas e Ambiente (Optativa)', 'nenhuma', '', 30, 1, 0, 1, 1018),
(303, 'SPCB099', 'Bem Estar e Comportamento Animal (Optativa)', 'nenhuma', '', 60, 1, 0, 1, 1018),
(304, 'SPCB100', 'Biologia de Peixes (Optativa)', 'nenhuma', '', 30, 1, 0, 1, 1018),
(305, 'SPCB101', 'Biologia Marinha (Optativa)', 'nenhuma', '', 30, 1, 0, 1, 1018),
(306, 'SPCB102', 'Climatologia e Meteorologia (Optativa)', 'nenhuma', '', 30, 1, 0, 1, 1018),
(307, 'ET082', 'Comunicação em Língua Brasileira de Sinais - LIBRAS (Optativa)', 'nenhuma', '', 30, 1, 0, 1, 1018),
(308, 'SPCB103', 'Diversidade Biológica Quantitativa (Optativa)', 'nenhuma', '', 30, 1, 0, 1, 1018),
(309, 'SPCB104', 'Ecologia de Rios (Optativa)', 'nenhuma', '', 30, 1, 0, 1, 1018),
(310, 'SPCB105', 'Entomologia Agrícola (Optativa)', 'nenhuma', '', 60, 1, 0, 1, 1018),
(311, 'SPCB081', 'Entomologia do Campo (Optativa)', 'nenhuma', '', 45, 1, 0, 1, 1018),
(312, 'SPCB106', 'Espécies Exóticas Invasoras (Optativa)', 'nenhuma', '', 30, 1, 0, 1, 1018),
(313, 'SPCB107', 'Etologia (Optativa)', 'nenhuma', '', 30, 1, 0, 1, 1018),
(314, 'SPCB083', 'Evolução Humana (Optativa)', 'nenhuma', '', 30, 1, 0, 1, 1018),
(315, 'SPCB108', 'Filosofia da Ciência (Optativa)', 'nenhuma', '', 30, 1, 0, 1, 1018),
(316, 'SPCB109', 'Indicadores Ambientais na Gestão de Recursos Hídricos (Optativa)', 'nenhuma', '', 30, 1, 0, 1, 1018),
(317, 'SPCB110', 'Manejo de Animais Silvestres ex situ (Optativa)', 'nenhuma', '', 45, 1, 0, 1, 1018),
(318, 'SPCB111', 'Micologia (Optativa)', 'nenhuma', '', 30, 1, 1, 1, 1018),
(319, 'SPCB112', 'Micologia de Campo (Optativa)', 'nenhuma', '', 30, 1, 0, 1, 1018),
(320, 'SPCB113', 'Ornitologia (Optativa)', 'nenhuma', '', 30, 1, 0, 1, 1018),
(321, 'SPCB114', 'Seminário em Biodiversidade (Optativa)', 'nenhuma', '', 30, 1, 0, 1, 1018),
(322, 'SPCB115', 'Sensoriamento Remoto e Geoprocessamento (Optativa)', 'nenhuma', '', 60, 1, 0, 1, 1018),
(323, 'SPCB116', 'Sistemática e Evolução (Optativa)', 'nenhuma', '', 30, 1, 0, 1, 1018),
(324, 'SPCB117', 'Tecnologia do Meio Ambiente', 'nenhuma', '', 60, 1, 0, 1, 1018),
(325, 'SPCB118', 'Tópicos Especiais 1 (Optativa)', 'nenhuma', '', 15, 1, 0, 1, 1018),
(326, 'SPCbB119', 'Tópicos Especiais 2 (Optativa)', 'nenhuma', '', 45, 1, 0, 1, 1018),
(327, 'SPCB120', 'Tópicos Especiais 3 (Optativa)', 'nenhuma', '', 30, 1, 0, 1, 1018),
(328, 'SPCB121', 'Tópicos Especiais 4 (Optativa)', 'nenhuma', '', 60, 1, 0, 1, 1018);

-- --------------------------------------------------------

--
-- Estrutura da tabela `disc_horario`
--

CREATE TABLE `disc_horario` (
  `id_disciplina` int(11) NOT NULL,
  `id_horario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `disc_horario`
--

INSERT INTO `disc_horario` (`id_disciplina`, `id_horario`) VALUES
(5, 8),
(7, 2),
(7, 7),
(9, 3),
(9, 9),
(10, 1),
(10, 5),
(11, 6),
(11, 10),
(18, 3),
(19, 8),
(19, 10),
(20, 9),
(21, 5),
(21, 7),
(22, 1),
(22, 4),
(30, 4),
(30, 7),
(31, 1),
(31, 8),
(32, 2),
(32, 5),
(33, 6),
(33, 9),
(34, 4),
(35, 2),
(35, 5),
(35, 6),
(35, 7),
(36, 1),
(36, 8),
(37, 9),
(38, 10),
(43, 3),
(43, 10),
(150, 1),
(150, 3),
(150, 4),
(151, 4),
(207, 1),
(207, 2),
(245, 3),
(249, 6),
(302, 15),
(302, 16),
(302, 17);

-- --------------------------------------------------------

--
-- Estrutura da tabela `horario`
--

CREATE TABLE `horario` (
  `id_horario` int(11) NOT NULL,
  `hora_inicio` time NOT NULL,
  `dia` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `horario`
--

INSERT INTO `horario` (`id_horario`, `hora_inicio`, `dia`) VALUES
(1, '19:00:00', 'Segunda'),
(2, '21:00:00', 'Segunda'),
(3, '19:00:00', 'Terça'),
(4, '21:00:00', 'Terça'),
(5, '19:00:00', 'Quarta'),
(6, '21:00:00', 'Quarta'),
(7, '19:00:00', 'Quinta'),
(8, '21:00:00', 'Quinta'),
(9, '19:00:00', 'Sexta'),
(10, '21:00:00', 'Sexta'),
(11, '07:30:00', 'Segunda'),
(12, '09:00:00', 'Segunda'),
(13, '07:00:00', 'Terça'),
(14, '09:00:00', 'Sexta'),
(15, '13:30:00', 'Quarta'),
(16, '13:30:00', 'Terça'),
(17, '14:20:00', 'Terça'),
(18, '07:30:00', 'Quinta'),
(19, '15:30:00', 'Segunda'),
(20, '06:00:00', 'Terça'),
(21, '10:00:00', 'Quinta');

-- --------------------------------------------------------

--
-- Estrutura da tabela `periodo`
--

CREATE TABLE `periodo` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `periodo`
--

INSERT INTO `periodo` (`id`, `nome`) VALUES
(1, 'matutino'),
(2, 'vespertino'),
(3, 'noturno'),
(4, 'integral');

-- --------------------------------------------------------

--
-- Estrutura da tabela `requisito`
--

CREATE TABLE `requisito` (
  `id_disciplina` int(11) NOT NULL,
  `id_requisito` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `requisito`
--

INSERT INTO `requisito` (`id_disciplina`, `id_requisito`, `id_curso`) VALUES
(1, 0, 1),
(2, 0, 1),
(3, 0, 1),
(4, 0, 1),
(5, 8, 1),
(6, 0, 1),
(7, 1, 1),
(8, 0, 1),
(9, 0, 1),
(10, 4, 1),
(11, 1, 1),
(12, 7, 1),
(13, 10, 1),
(14, 6, 1),
(15, 0, 1),
(16, 10, 1),
(17, 7, 1),
(17, 9, 1),
(18, 0, 1),
(19, 12, 1),
(19, 17, 1),
(20, 16, 1),
(21, 12, 1),
(22, 3, 1),
(22, 12, 1),
(23, 21, 1),
(24, 18, 1),
(25, 18, 1),
(26, 20, 1),
(26, 249, 1),
(27, 18, 1),
(28, 21, 1),
(29, 0, 1),
(30, 23, 1),
(30, 27, 1),
(30, 28, 1),
(31, 3, 1),
(31, 12, 1),
(31, 13, 1),
(32, 28, 1),
(33, 24, 1),
(33, 25, 1),
(33, 27, 1),
(34, 0, 1),
(35, 33, 1),
(35, 43, 1),
(36, 33, 1),
(36, 43, 1),
(37, 26, 1),
(38, 12, 1),
(38, 23, 1),
(38, 33, 1),
(38, 43, 1),
(39, 0, 1),
(40, 35, 1),
(40, 36, 1),
(41, 35, 1),
(41, 36, 1),
(42, 38, 1),
(43, 24, 1),
(43, 25, 1),
(43, 27, 1),
(243, 4, 1),
(244, 0, 1),
(245, 0, 1),
(246, 245, 1),
(248, 243, 1),
(249, 10, 1),
(250, 0, 1018),
(251, 0, 1018),
(252, 0, 1018),
(253, 0, 1018),
(254, 0, 1018),
(255, 0, 1018),
(256, 0, 1018),
(257, 0, 1018),
(258, 251, 1018),
(259, 250, 1018),
(260, 0, 1018),
(261, 254, 1018),
(262, 0, 1018),
(263, 0, 1018),
(264, 0, 1018),
(265, 0, 1018),
(266, 0, 1018),
(267, 250, 1018),
(268, 251, 1018),
(269, 0, 1018),
(270, 0, 1018),
(271, 0, 1018),
(272, 266, 1018),
(273, 0, 1018),
(274, 250, 1018),
(274, 251, 1018),
(275, 0, 1018),
(276, 0, 1018),
(277, 0, 1018),
(278, 0, 1018),
(279, 0, 1018),
(280, 250, 1018),
(281, 0, 1018),
(283, 275, 1018),
(284, 0, 1018),
(285, 0, 1018),
(286, 0, 1018),
(287, 0, 1018),
(288, 0, 1018),
(289, 0, 1018),
(290, 0, 1018),
(291, 0, 1018),
(292, 0, 1018),
(293, 0, 1018),
(294, 278, 1018),
(294, 285, 1018),
(295, 0, 1018),
(296, 278, 1018),
(296, 285, 1018),
(297, 0, 1018),
(298, 0, 1018),
(299, 0, 1018),
(300, 0, 1018),
(301, 0, 1018),
(302, 258, 1018),
(303, 0, 1018),
(304, 0, 1018),
(305, 0, 1018),
(306, 0, 1018),
(307, 0, 1018),
(308, 0, 1018),
(309, 0, 1018),
(310, 0, 1018),
(311, 258, 1018),
(312, 0, 1018),
(313, 0, 1018),
(314, 278, 1018),
(314, 285, 1018),
(315, 0, 1018),
(316, 0, 1018),
(317, 0, 1018),
(318, 0, 1018),
(319, 318, 1018),
(320, 0, 1018),
(321, 0, 1018),
(322, 0, 1018),
(323, 0, 1018),
(324, 0, 1018),
(325, 0, 1018),
(326, 0, 1018),
(327, 0, 1018),
(328, 0, 1018);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `senha` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `email`, `senha`) VALUES
(1, 'daniel', 'daniel@gmail.com', 'a2FybGxpbmcxMjM='),
(2, 'teste', 'teste@email', 'YWJj'),
(6, 'karling', 'asas', 'YWJjZA=='),
(9, 'user', 'email', 'senha'),
(12, 'outrp', '', '1'),
(13, 'novo usuario para teste', '', '1'),
(14, 'admin', '', 'admin'),
(15, 'teste', '', 'teste'),
(16, 'user', '', 'dXNlcg=='),
(17, 'daniel2', '', 'MTIzNA=='),
(18, 'a', '', 'YQ=='),
(19, 'rafa', 'rafa@ela', 'YmVsaW5oYTEy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aproveitamento`
--
ALTER TABLE `aproveitamento`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `aproveitamento_id_curso` (`id_curso`);

--
-- Indexes for table `compartilhado`
--
ALTER TABLE `compartilhado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_curso` (`id_curso`),
  ADD KEY `fk_usuario` (`id_compartilhado`);

--
-- Indexes for table `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD KEY `fk_curso_has_usuario` (`id_usuario`),
  ADD KEY `fk_periodo` (`id_periodo`);

--
-- Indexes for table `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `CODIGO` (`CODIGO`),
  ADD KEY `id_curso` (`id_curso`);

--
-- Indexes for table `disc_horario`
--
ALTER TABLE `disc_horario`
  ADD PRIMARY KEY (`id_disciplina`,`id_horario`),
  ADD KEY `chave_estrangeira2` (`id_horario`);

--
-- Indexes for table `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`id_horario`);

--
-- Indexes for table `periodo`
--
ALTER TABLE `periodo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requisito`
--
ALTER TABLE `requisito`
  ADD PRIMARY KEY (`id_disciplina`,`id_requisito`),
  ADD KEY `fk_requisito` (`id_requisito`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aproveitamento`
--
ALTER TABLE `aproveitamento`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5479;
--
-- AUTO_INCREMENT for table `compartilhado`
--
ALTER TABLE `compartilhado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `curso`
--
ALTER TABLE `curso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1019;
--
-- AUTO_INCREMENT for table `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=330;
--
-- AUTO_INCREMENT for table `horario`
--
ALTER TABLE `horario`
  MODIFY `id_horario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `periodo`
--
ALTER TABLE `periodo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `aproveitamento`
--
ALTER TABLE `aproveitamento`
  ADD CONSTRAINT `aproveitamento_id_curso` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id`);

--
-- Limitadores para a tabela `compartilhado`
--
ALTER TABLE `compartilhado`
  ADD CONSTRAINT `fk_curso` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id`),
  ADD CONSTRAINT `fk_usuario` FOREIGN KEY (`id_compartilhado`) REFERENCES `usuario` (`id`);

--
-- Limitadores para a tabela `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `fk_curso_has_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_periodo` FOREIGN KEY (`id_periodo`) REFERENCES `periodo` (`id`);

--
-- Limitadores para a tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD CONSTRAINT `id_curso` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id`);

--
-- Limitadores para a tabela `disc_horario`
--
ALTER TABLE `disc_horario`
  ADD CONSTRAINT `chave_estrangeira1` FOREIGN KEY (`id_disciplina`) REFERENCES `disciplina` (`ID`),
  ADD CONSTRAINT `chave_estrangeira2` FOREIGN KEY (`id_horario`) REFERENCES `horario` (`id_horario`);

--
-- Limitadores para a tabela `requisito`
--
ALTER TABLE `requisito`
  ADD CONSTRAINT `fk_disc` FOREIGN KEY (`id_disciplina`) REFERENCES `disciplina` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
