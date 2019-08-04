-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 04-Ago-2019 às 15:27
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id10383139_escola_em_dia`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `id` int(11) NOT NULL,
  `id_escola` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `serie` varchar(20) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`id`, `id_escola`, `email`, `serie`, `senha`) VALUES
(2, 11, 'pavanpedro816@gmail.com', '2º do fundamental', 'e807f1fcf82d132f9bb018ca6738a19f'),
(3, 3, 'mail@mail.com', '12', '25d55ad283aa400af464c76d713c07ad'),
(4, 22, 'teste dois', '4', '25f9e794323b453885f5181f1b624d0b'),
(5, 22, 'teste@teste.com.br', '9', '25f9e794323b453885f5181f1b624d0b'),
(6, 6, 'aa@aa.com', '5', 'bbb8aae57c104cda40c93843ad5e6db8');

-- --------------------------------------------------------

--
-- Estrutura da tabela `assunto`
--

CREATE TABLE `assunto` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `assunto`
--

INSERT INTO `assunto` (`id`, `nome`) VALUES
(1, 'Vandalismo'),
(2, 'Reparos'),
(3, 'Bens de consumo'),
(4, 'Infraestrutura'),
(5, 'Comida'),
(6, 'Outros');

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
  `rua` varchar(100) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cep` int(11) NOT NULL,
  `telefone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `diretor` varchar(100) NOT NULL,
  `adjunto` varchar(100) DEFAULT NULL,
  `nota` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `escola`
--

INSERT INTO `escola` (`id`, `id_cidade`, `nome`, `rua`, `bairro`, `cep`, `telefone`, `email`, `diretor`, `adjunto`, `nota`) VALUES
(3, 1, 'EE 11 DE OUTUBRO', 'R. PORTO BATISTA, 29', 'CONJ. BONANÇA', 79092153, '33146053', 'ee11deoutubro@sed.ms.gov.br', ' WAGNER VANELI', 'DIRETOR ADJUNTO: CARMEM RONETE DE CUNHA SANTANA', NULL),
(4, 1, 'EE 26 DE AGOSTO', 'R. RUI BARBOSA, 4.580', 'B. SÃO FRANCISCO', 79002367, '33147063/ 33147064', 'ee26deagosto@sed.ms.gov.br', ' ADJALMO MALAQUIAS DA SILVA', 'DIRETOR ADJUNTO: VERA LUCIA DA SILVA MENDES', NULL),
(5, 1, 'EE ADVENTOR DIVINO DE ALMEIDA', 'AV. JÚLIO DE CASTILHO', 'VILA ALBA', 79100005, '33147055/7062', 'eeadda@sed.ms.gov.br', ' INIVALDO GISOATO', 'DIRETOR ADJUNTO: CRISTIANO CESAR TRINDADE GUILHERME', NULL),
(6, 1, 'EE ADVOGADO DEMOSTHENES MARTINS', 'R. ARIRAMBA, 215', 'CONJ. OCTÁVIO PÉCORA', 79012110, '33560883', 'eeadm@sed.ms.gov.br', ' CLAUDIA DO NASCIMENTO GIMENEZ', '', NULL),
(7, 1, 'EE AMANDO DE OLIVEIRA', 'AV. MANOEL DA COSTA LIMA, 1.435', 'VILA PIRATININGA', 79081040, '33464004/ 33460955', 'eeado@sed.ms.gov.br', ' RITA DE CÁSSIA DA SILVA', 'DIRETOR ADJUNTO: MARIA APARECIDA DA CRUZ', NULL),
(8, 1, 'EE AMÉLIO DE CARVALHO BAÍS', 'AV. FLORESTAL', 'CONJ. COOPHATRABALHO', 79115020, '33147054/33615269', 'eeacb@sed.ms.gov.br', ' PAULO ANTONIO CASTALDELI', 'DIRETOR ADJUNTO: MARIA CRISTINA DA SILVA PEDRA', NULL),
(9, 1, 'EE ARACY EUDOCIAK', 'R. MARACANTINS, 696', 'B. TIJUCA II', 79094140, '33146054', 'eeae@sed.ms.gov.br', ' GISELE MARIA BACANELLI', 'DIRETOR ADJUNTO: BRENO DE ARRUDA DIAS', NULL),
(10, 1, 'EE ARLINDO DE ANDRADE GOMES', 'AV. JÚLIO DE CASTILHO, 1.360', 'B. SANTO AMARO', 79112000, '33147050/33147078', 'eeadag@sed.ms.gov.br', ' MARCELO JOSÉ DE SOUZA', 'DIRETOR ADJUNTO: MATILDES ARAÚJO LIMA', NULL),
(11, 1, 'EE ARLINDO DE SAMPAIO JORGE', 'R. PARIRIS, 360', 'VILA MORENINHA II', 79065080, '33149011', 'eeasj@sed.ms.gov.br', ' CARLOS EDUARDO PEREIRA', 'DIRETOR ADJUNTO: MILTON CARDOSO SOBRINHO', NULL),
(12, 1, 'EE BLANCHE DOS SANTOS PEREIRA', 'R. TABIRA, 911', 'JD. TIJUCA I', 79094030, '33146055/ 33146056', 'eebdsp@sed.ms.gov.br ', ' MARIA DE FÁTIMA E ALMEIDA MECENAS', 'DIRETOR ADJUNTO: AMARILDO RODRIGUES MONTEIRO', NULL),
(13, 1, 'EE CORAÇÃO DE MARIA', 'R. DR. ANIBAL DE TOLEDO, 420', 'VILA SANTA DOROTÉIA', 79004060, '33145630', 'eecdm@sed.ms.gov.br', ' NEIVA MARIA DE MATTOS', '-', NULL),
(14, 1, 'EE DONA CONSUELO MULLER', 'R. EQUADOR, 70', 'VILA JACY', 79006320, '33313996/ 33141249', 'eedcm@sed.ms.gov.br', ' MIRIAN BENTO DA SILVA', 'DIRETOR ADJUNTO: LUCIENE DA SILVA VARGAS WEILER', NULL),
(15, 1, 'EE DR. ARTHUR DE VASCONCELLOS DIAS', 'R. DR. JIVAGO, 744', 'CONJ. ESTRELA DO SUL', 79013820, '33141252', 'eedadvd@sed.ms.gov.br', ' FABIANA DE LIMA SOUZA', 'DIRETOR ADJUNTO: SORAYA XIMENES DE SENA CARVALHO ', NULL),
(16, 1, 'EE ELVIRA MATHIAS DE OLIVEIRA', 'R. AGRONÔMICA, 38', 'VILA SANTO EUGÊNIO', 79060490, '33141255/1254 / 33879868', 'eeemdo@sed.ms.gov.br', ' DENISE APARECIDA CAMARGO', 'DIRETOR ADJUNTO: RODRIGO TRELHA DE OLIVEIRA', NULL),
(17, 1, 'EE GENERAL MALAN', 'R. AMANDO DE OLIVEIRA, 595', 'B. AMAMBAÍ', 79008010, '33141230/ 33141229', 'eegm@sed.ms.gov.br', ' APARECIDA CONCEIÇÃO DE ARAÚJO', '-', NULL),
(18, 1, 'EE HÉRCULES MAYMONE', 'R. JOAQUIM MURTINHO, 2.612', 'B. ITANHANGÁ PARK', 79003020, '33141281/ 33141282', 'eehm@sed.ms.gov.br', ' MARIA IRENE ALVES RIBEIRO', 'DIRETOR ADJUNTO: LUELY DIANE MUSSI ', NULL),
(19, 1, 'EE JOÃO CARLOS FLORES', 'R. ASSUNÇÃO', 'B. RITA VIEIRA', 79052061, '33879810', 'eejcf@sed.ms.gov.br', ' CLAUDECY JOSÉ DA CRUZ', 'DIRETOR ADJUNTO: ELIZELENA MEDINA BELLUZO', NULL),
(20, 1, 'EE JOAQUIM MURTINHO', 'AV. AFONSO PENA, 2.445', 'CENTRO', 79002073, '33257668/33846124', 'eejm@sed.ms.gov.br', ' CLÁUDIO MORINIGO RIBEIRO', 'DIRETOR ADJUNTO: EUGENIO CESAR FAVA DOS REIS', NULL),
(21, 1, 'EE JOSÉ ANTÔNIO PEREIRA', 'R. ANTONIO PINTO, 257', 'VILA TAVEIRÓPOLIS', 79090170, '33141248', 'eejap@sed.ms.gov.br', ' REJANE DIAS DELMÃO', 'DIRETOR ADJUNTO: MELISSA DA SILVA ESCOBAR CARVALHO ', NULL),
(22, 1, 'EE JOSÉ BARBOSA RODRIGUES', 'R. ELESBÃO MURTINHO, 856', 'B. UNIVERSITÁRIO', 79063040, '33879966/ 33141257', 'eejbr@sed.ms.gov.br', ' EDVALDO LOURENÇO DA SILVA', 'DIRETOR ADJUNTO: CÉLIA FERREIRA GONÇALVES DOS SANTOS', NULL),
(23, 1, 'EE JOSÉ FERREIRA BARBOSA', 'R. COMANDANTE ELIAS FERREIRA, 55', 'VILA BORDON', 79106695, '33147057/33632643', 'eejfb@sed.ms.gov.br', ' MARIOMAR REZENDE DINIZ JUNIOR', 'DIRETOR ADJUNTO: LUIZ CARLOS FLORES JUNIOR', NULL),
(24, 1, 'EE JOSÉ MAMEDE DE AQUINO', 'AV. HEITOR VIEIRA DE ALMEIDA, 287', 'JD. AEROPORTO', 79106053, '33147058/ 33147066', 'eejmda@sed.ms.gov.br', ' DIANA PILATTI ONOFRE', 'DIRETOR ADJUNTO: MARILIDIA SATIRO', NULL),
(25, 1, 'EE LINO VILLACHÁ', 'R. HAROLDO PEREIRA, 887', 'B. NOVA LIMA', 79017065, '33542239/33148134', 'eelv@sed.ms.gov.br', ' OLIVIO MANGOLIM', 'DIRETOR ADJUNTO: RUDNEI SIQUEIRA BERNARDES', NULL),
(26, 1, 'EE LÚCIA MARTINS COELHO', 'R. BAHIA, 355', 'JD. DOS ESTADOS', 79002530, '33141237 / 33141238', 'eelmc@sed.ms.gov.br', ' DÉBORAH DAL MORO', 'DIRETOR ADJUNTO: VICENTA DE OLIVEIRA ALVARENGA', NULL),
(27, 1, 'EE LUIZA VIDAL BORGES DANIEL', 'R. DAS AMEIXAS', 'B. BOM JARDIM', 79091210, '33146050/33146070', 'eelvbd@sed.ms.gov.br', ' VALÉRIA APARECIDA MENDONÇA DE OLIVEIRA CALDERONE ZANETTI', '-', NULL),
(28, 1, 'EE MAESTRO FREDERICO LIEBERMANN', 'AV. MONTE CASTELO, 50', 'B. MONTE CASTELO', 79010400, '33561352', 'eemfl@sed.ms.gov.br', ' RITA REGINA CARDOSO DINIZ', 'DIRETOR ADJUNTO: GISLAINE MARTIN DOS SANTOS', NULL),
(29, 1, 'EE MAESTRO HEITOR VILLA LOBOS', 'R. ESTEVÃO ALVES DE FIGUEIREDO', 'CONJ. PARATI', 79081580, '33462351/33474632', 'eemhvl@sed.ms.gov.br', ' LOURIVAL RAMOS DE ALMEIDA', 'DIRETOR ADJUNTO: ALESSANDRA DOS SANTOS', NULL),
(30, 1, 'EE MANOEL BONIFÁCIO NUNES DA CUNHA', 'R. ITAÓCA, 196', 'JD. TARUMÃ', 79097400, '33733840', 'eembnc@sed.ms.gov.br', ' SILVANA DE SOUZA RAMOS', 'DIRETOR ADJUNTO: LUZIMEIRE DA SILVA FIGUEIREDO', NULL),
(31, 1, 'EE MARÇAL DE SOUZA TUPÃ-Y', 'R. LUÍS DE VASCONCELOS, 200', 'JD. LOS ANGELES', 79073238, '33145639/33145638', 'eemdsty@sed.ms.gov.br', ' ADEMIR MEDEIROS DOS SANTOS JÚNIOR', 'DIRETOR ADJUNTO: FERNANDO GOMES EUFIGÊNIO DOS SANTOS', NULL),
(32, 1, 'EE MARIA CONSTANÇA BARROS MACHADO', 'R. MARECHAL CÂNDIDO MARIANO, 451', 'B. AMAMBAÍ', 79008000, '33141239/ 33141247', 'eemcdbm@sed.ms.gov.br', ' REINALDO JOSÉ SCHMIDT', 'DIRETOR ADJUNTO: MARCIA MARIA LOPES FERREIRA HAJJAR', NULL),
(33, 1, 'EE MARIA ELIZA BOCAYÚVA CORRÊA DA COSTA', 'R. COMANDANTE CYRO ARAUJO FRANÇA, 412', 'B. CRUZEIRO', 79023270, '33141261/ 33141250', 'eemebcc@sed.ms.gov.br', ' ADRIANE LOPES MOREIRA LEÃO', 'DIRETOR ADJUNTO: MÁRCIA LOLI RITTER', NULL),
(34, 1, 'EE NICOLAU FRAGELLI', 'AV. DR. EULER DE AZEVEDO, 116', 'B. SÃO FRANCISCO', 79116610, '33657606', 'eenf@sed.ms.gov.br', ' LUCI MELINSKI', '-', NULL),
(35, 1, 'EE OLINDA CONCEIÇÃO TEIXEIRA BACHA', 'R. DAS CAMÉLIAS, 1.446', 'CONJ. BURITI', 79091020, '33146062', 'eeoctb@sed.ms.gov.br', ' EVELISE RIBEIRO VALADARES DA SILVEIRA', 'DIRETOR ADJUNTO: ANTONIA AUXILIADORA DA SILVA DE MENEZES', NULL),
(36, 1, 'EE ORCÍRIO THIAGO DE OLIVEIRA ', 'R. SENADOR PONCE', 'VILA PROGRESSO', 79050220, '33145632/33145634', 'eeotdo@sed.ms.gov.br', ' SILMARA GOMES OVELAR', 'DIRETOR ADJUNTO: KASSIO PEREIRA CAVALCANTE', NULL),
(37, 1, 'EE PADRE FRANCO DELPIANO', 'AV. LINO VILLACHÁ, 1.250, HOSP SÃO JULIÃO', 'B. NOVA LIMA', 79017200, '33542100', 'eepfd@sed.ms.gov.br', ' DENISE FERREIRA NASCIMENTO', '-', NULL),
(38, 1, 'EE PADRE JOSÉ SCAMPINI', 'R. DO PORTO, 220', 'CONJ. COOPHAVILA II', 79097160, '33734799/ 33732342', 'eejs@sed.ms.gov.br', ' JESSIER BAES DE MENEZES', 'DIRETOR ADJUNTO: IVAN BENITO DE VASCONCELOS', NULL),
(39, 1, 'EE PADRE MÁRIO BLANDINO', 'R. PLÍNIO MENDES DOS SANTOS, 91', 'CONJ. AERO RANCHO', 79084090, '33146051/ 33146052', 'eemb@sed.ms.gov.br', ' JADER WILLIAN ANTONELO', 'DIRETOR ADJUNTO: EUNISETE BARBOSA DE ALMEIDA ALBUQUERQUE', NULL),
(40, 1, 'EE Pe. JOÃO GREINER', 'R. MACUNAÍMA, 199', 'CONJ. ESTRELA DO SUL', 79013290, '33141262/1265 / 33138060', 'eepjg@sed.ms.gov.br', ' CLAUDIA NOVAES LORENTZ FURTADO', '-', NULL),
(41, 1, 'EE PÓLO PROFª. REGINA LÚCIA ANFFE NUNES BETINE', 'R. DOS DENTISTAS,500', 'BAIRRO DR. ARNALDO ESTEVÃO DE FIGUEIREDO', 79043080, '33572300', 'eepprlanb@sed.ms.gov.br', ' VIVIANE APARECIDA DA SILVA', '-', NULL),
(42, 1, 'EE PROFª. ADA TEIXEIRA DOS SANTOS PEREIRA', 'R. LOURENÇO DA VEIGA', 'JD. CAMPO BELO', 79015243, '33545641/33555679', 'eepatdsp@sed.ms.gov.br', ' WILLIAM GERALDO CAVALARI BARBOSA', 'DIRETOR ADJUNTO: RENATO LIMA DE AGUIAR', NULL),
(43, 1, 'EE PROFª. ALICE NUNES ZAMPIERE', 'R. CONSTANTINOPLA', 'JD. PANAMÁ', 79112180, '33147051', 'eepanz@sed.ms.gov.br', ' SHIRLEY MARA DE OLIVEIRA HURMEREZ', 'DIRETOR ADJUNTO: REGINA MAURA CANDIDO ALVES', NULL),
(44, 1, 'EE PROFª. BRASILINA FERRAZ MANTERO', 'R. TAMOIO, 260', 'JD. LEBLON', 79092040, '33146057', 'eepbfm@sed.ms.gov.br', ' LAWRENCE SEVILHA INOCENCIO', '-', NULL),
(45, 1, 'EE PROF. CARLOS HENRIQUE SCHRADER', 'R. TITO MADI', 'B. TIRADENTES', 79041041, '33416293', 'eepchs@sed.ms.gov.br', ' VANESSA VASCONCELOS GALVÃO MIRANDA', '', NULL),
(46, 1, 'EE PROFª. CÉLIA MARIA NÁGLIS', 'R. BAGUARI, 28', 'R. BAGUARI, 28', 79065290, '33149012', 'eepcmn@sed.ms.gov.br', ' JOSÉ ANTONIO SOUZA DA SILVA', 'DIRETOR ADJUNTO: AMBRÓSIO LAZZARI', NULL),
(47, 1, 'EE PROFª. CLARINDA MENDES DE AQUINO', 'AV. MURILO ROLIM JUNIOR, 200', 'JD. PETRÓPOLIS', 79102100, '33147059', 'eepcmda@sed.ms.gov.br', ' ANTONIO AURELIO SILVA MARQUES', 'DIRETOR ADJUNTO: FABIOLA SILVA DOS SANTOS', NULL),
(48, 1, 'EE PROFª. DELMIRA RAMOS DOS SANTOS', 'R. DOS RECIFES, 371', 'CONJ. COOPHAVILA II', 79097050, '33734789', 'eepdrds@sed.ms.gov.br', ' GIGLIOLA APARECIDA PENAZZO VINCI', '-', NULL),
(49, 1, 'EE PROFª. ÉLIA FRANÇA CARDOSO', 'R. SARGENTO JONAS S. DE OLIVEIRA, 297', 'JD. SÃO CONRADO', 79093250, '33146058', 'eepefc@sed.ms.gov.br', ' GLAYCE CRUZ DE MELLO', 'DIRETOR ADJUNTO: HELOIZA SANTOS DA SILVA RAMOS', NULL),
(50, 1, 'EE PROF. EMYGDIO CAMPOS WIDAL', 'AV. BOM PASTOR, 460', 'JD. VILAS BOAS', 79051220, '33419622', 'eepecv@sed.ms.gov.br', ' FERNANDA ALVES BUCALLON SERAFIM', 'DIRETOR ADJUNTO: NELISANE TRINDADE DE ALENCAR SOUZA', NULL),
(51, 1, 'EE PROFª. FAUSTA GARCIA BUENO', 'R. CARLOS SCARDINE, 138', 'CONJ. COOPHASUL', 79117160, '33147060', 'eepfgb@sed.ms.gov.br', ' JUERLENE REIS DA SILVA RAMIRES', 'DIRETOR ADJUNTO: WLADIMIR DE SOUZA', NULL),
(52, 1, 'EE PROFª. FLAVINA MARIA DA SILVA', 'R. CENTRO OESTE, 40', 'JD. BOTAFOGO', 79070060, '33885177/ 33141256', 'eepfmds@sed.ms.gov.br', ' EVERALDO MONTEIRO DA SILVA', '-', NULL),
(53, 1, 'EE PROF. HENRIQUE CIRYLLO CORRÊA', 'AV. CAPITAL, 611', 'B. CRUZEIRO', 79022180, '33141253/33141260', 'eephcc@sed.ms.gov.br', ' ANA MARIA GASPARINI', '-', NULL),
(54, 1, 'EE PROFª. HILDA DE SOUZA FERREIRA', 'R. MANGABEIRA, 28', 'CONJ. COOPHATRABALHO', 79115191, '33147053', 'eephdsf@sed.ms.gov.br', ' MÁRCIO BERETTA COSSATO', 'DIRETOR: CIRLEI RODRIGUES FERREIRA', NULL),
(55, 1, 'EE PROFª. IZAURA HIGA', 'R. INCONFIDENTE, 348', 'B. CIDADE MORENA', 79064130, '33149013', 'eepih@sed.ms.gov.br', ' JOVAINE SILVA TEIXEIRA AZEVEDO', 'DIRETOR ADJUNTO: HELGA TICIANA DE BARROS MACIEL', NULL),
(56, 1, 'EE PROFª. JOELINA DE ALMEIDA XAVIER', 'R. SANDOVAL RIBEIRO SOARES, 54', 'JD. GUANABARA', 79013590, '33141251/33141241', 'eepjax@sed.ms.gov.br', ' FÁTIMA MACK DE SOUZA ', 'DIRETOR ADJUNTO: ROSE HELENA PADOA BARBOSA', NULL),
(57, 1, 'EE PROFª. MARIA DE LOURDES TOLEDO AREIAS', 'R. ARACY PEREIRA DE MATTOS', 'CONJ. RECANTO DOS ROUXINOIS', 79063280, '33141259/33875772', 'eepmdlta@sed.ms.gov.br', ' ADRIANA BELLEI', 'DIRETOR ADJUNTO: EDI CARLOS DOUGLAS MAZINI', NULL),
(58, 1, 'EE PROFª. MARIA RITA DE CÁSSIA PONTES TEIXEIRA', 'R. OSVALDINO MENDES ROCHA, 560', 'CONJ. UNIÃO I', 79091540, '33146060', 'eepmrdcpt@sed.ms.gov.br', ' NERY SILVEIRA DE OLIVEIRA', 'DIRETOR ADJUNTO: IVANIR TEIXEIRA THOMAZ MARTINS', NULL),
(59, 1, 'EE PROFª. NEYDER SUELLY COSTA VIEIRA', 'R. MARCO AURÉLIO BEIER, 100', 'CONJ. AERO RANCHO', 79085042, '33146067/33146097/ 33864779', 'eepnscv@sed.ms.gov.br', ' MÁRCIO WAGNER DE SOUZA', 'DIRETOR ADJUNTO: JOSÉ CLÁUDIO DO CARMO', NULL),
(60, 1, 'EE PROF. SEVERINO DE QUEIROZ', 'R. SÃO PAULO, 1.103', 'VILA ROSA', 79010050, '33141263/ 33141746', 'eepsq@sed.ms.gov.br', ' JULIO CESAR GONÇALVES DA SILVA', 'DIRETOR ADJUNTO: PAULA MARQUES SILVA ROSSETO', NULL),
(61, 1, 'EE PROF. SEVERINO DE QUEIROZ', 'R. SÃO PAULO, 1.103', 'VILA ROSA', 79010050, '33141263/ 33141746', 'eepsq@sed.ms.gov.br', ' JULIO CESAR GONÇALVES DA SILVA', 'DIRETOR ADJUNTO: PAULA MARQUES SILVA ROSSETO', NULL),
(62, 1, 'EE PROF. SILVIO OLIVEIRA DOS SANTOS', 'R. PEDRO SOARES DE SOUZA, 154', 'CONJ. AERO RANCHO', 79085030, '33146063/ 33146064', 'eepsods@sed.ms.gov.br', ' JAQUELINE DIAS', 'DIRETOR ADJUNTO: LEANDRO COLOMBO PEDRINI', NULL),
(63, 1, 'EE PROFª. THEREZA NORONHA DE CARVALHO', 'AV. JOÃO SELLINGARDI, 770', 'B. PARQUE DO LAGEADO', 79075051, '33146065', 'eetndc@sed.ms.gov.br', ' PEDRO ANISIO FERREIRA NOVAIS', 'DIRETOR ADJUNTO- MARCIA DA SILVA TEIXEIRA CORREIA', NULL),
(64, 1, 'EE PROF. ULISSES SERRA', 'AV. PRINCIPAL', 'NÚCLEO INDUSTRIAL', 79108550, '33911124/ 33911236', 'eepus@sed.ms.gov.br', ' EDIVALDO LUIS CAMARGO', 'DIRETOR ADJUNTO: LUCIA DA COSTA ALMEIDA', NULL),
(65, 1, 'EE PROFª. ZÉLIA QUEVEDO CHAVES', 'R. GAUDILEY BROW, 250', 'PARQUE RESIDENCIAL IRACY COELHO NETTO', 79074500, '33146066/33146069', 'eepzqc@sed.ms.gov.br', ' MARCIO JOSÉ DE SOUZA E SILVA', 'DIRETOR ADJUNTO: RENATA CRISTINA ALVES DUARTE', NULL),
(66, 1, 'EE RUI BARBOSA', 'R. JOÃO THOMAZ, 222', 'B. SANTO ANTÔNIO', 79100350, '33147052', 'eerb@sed.ms.gov.br', ' TANIA MARA CORTE MATTOS', 'DIRETOR ADJUNTO: MILVA HEIMBACH', NULL),
(67, 1, 'EE SÃO FRANCISCO', 'AV. DR. EULER DE AZEVEDO, 500', 'B. SÃO FRANCISCO', 79116610, '33147065', 'eesf@sed.ms.gov.br', ' GERUZA APARECIDA FERREIRA SARAIVA BARBOSA', '-', NULL),
(68, 1, 'EE SÃO JOSÉ', 'R. DR. ARTHUR JORGE, 1.762', 'VILA ROSA', 79010210, '33141242', 'eesj@sed.ms.gov.br', ' FABIANA MUNIZ DO CARMO', '-', NULL),
(69, 1, 'EE SEBASTIÃO SANTANA DE OLIVEIRA', 'R. ARMANDO HOLANDA, 318', 'CONJ. JOSÉ ABRAÃO', 79114050, '3314-7061', 'eessdo@sed.ms.gov.br', ' DOMINGOS DA LUZ NOGUEIRA', 'DIRETOR ADJUNTO: SOLANGE TEREZINHA QUINCOZES', NULL),
(70, 1, 'EE TEOTÔNIO VILELA', 'AV. SOUZA LIMA, 506', 'B. UNIVERSITÁRIA II', 79071340, '3314-5637/ 3314-5636/3397-0544', 'eetv@sed.ms.gov.br', ' ADAUTO JULIO DA COSTA', 'DIRETOR ADJUNTO: VALTER JERONIMO MARQUES QUEIROZ', NULL),
(71, 1, 'EE VESPASIANO MARTINS', 'R. 13 DE MAIO, 1.516', 'VILA GLÓRIA', 79044442, '3314-1243/3383-9661', 'eevm@sed.ms.gov.br', ' ANTONIO BARBOSA SORRILHA DE LIMA', 'DIRETOR ADJUNTO: LEOSANDRO CARLOS ADAMISKI', NULL),
(72, 1, 'EE WALDEMIR BARROS DA SILVA', 'R. PALMÁCIA', 'VILA MORENINHA I', 79065140, '3314-9014/9016', 'eewbds@sed.ms.gov.br', ' ERNÂNGELA MARIA DE SOUZA CALIXTO', 'DIRETOR ADJUNTO: ANALICE SILVA DA CRUZ', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `reclamacao`
--

CREATE TABLE `reclamacao` (
  `id` int(11) NOT NULL,
  `id_escola_r` int(11) NOT NULL,
  `id_aluno` int(11) NOT NULL,
  `id_assunto` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `assunto` varchar(50) NOT NULL,
  `corpo` varchar(700) NOT NULL,
  `data` date DEFAULT NULL,
  `avaliacao` int(11) DEFAULT NULL,
  `andamento` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `reclamacao`
--

INSERT INTO `reclamacao` (`id`, `id_escola_r`, `id_aluno`, `id_assunto`, `titulo`, `assunto`, `corpo`, `data`, `avaliacao`, `andamento`) VALUES
(11, 3, 1, 0, 'dsafs', 'dfsaf', 'fsafasdf', NULL, NULL, NULL),
(12, 3, 1, 0, 'fsaf', 'fsdafds', 'fsafsdafsaf', NULL, NULL, NULL),
(13, 3, 1, 0, 'reportedeuser', 'reportado', 'report', NULL, NULL, NULL),
(14, 3, 3, 0, 'report18', 'report', 'olha o reporte', NULL, NULL, NULL),
(15, 3, 3, 0, 'bhjhj', 'thrty', 'tftfu', NULL, NULL, NULL),
(16, 3, 3, 0, 'carlinhos', 'carlinhos', 'carlinhos', NULL, NULL, NULL),
(17, 3, 3, 0, 'Banheiro sem porta', 'Conserto da Porta', 'Uma das cabines do banheiro masculino localizado do primeiro piso está sem porta!', NULL, NULL, NULL);

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
  `nome` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `series`
--

INSERT INTO `series` (`id`, `nome`) VALUES
(1, '1° ano fundamental'),
(2, '2° ano fundamental'),
(3, '3° ano fundamental'),
(4, '4° ano fundamental'),
(5, '5° ano fundamental'),
(6, '6° ano fundamental'),
(7, '7° ano fundamental'),
(8, '8° ano fundamental'),
(9, '9° ano fundamental'),
(10, '1° ano medio'),
(11, '2° ano medio'),
(12, '3° ano medio');

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
-- Indexes for table `assunto`
--
ALTER TABLE `assunto`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `assunto`
--
ALTER TABLE `assunto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `reclamacao`
--
ALTER TABLE `reclamacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
