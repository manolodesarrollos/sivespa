-- MySQL dump 10.13  Distrib 5.7.42, for Linux (x86_64)
--
-- Host: localhost    Database: u674755405_sivespa
-- ------------------------------------------------------
-- Server version	5.7.42-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--  comandos la base de datos creada 24/12/2024
drop database if exists u674755405_sivespa;
create database  u674755405_sivespa;
use  u674755405_sivespa;
 -- --------------------------------------------
--
-- Table structure for table `db_aju`
--

DROP TABLE IF EXISTS `db_aju`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_aju` (
  `id_reporte` varchar(255) NOT NULL,
  `ID_RL_AJUSTE` varchar(255) NOT NULL COMMENT '0 = NO APLICA, NO AJUSTA, 1ª VEZ. N3 = CONFIRMADO POR LABORATORIO N4= CONFIRMADO POR CLÍNICA N6 = DESCARTADO N7 = OTRA ACTUALIZACIÓN ND = DESCARTE POR ERROR DE DIGITACIONN',
  `FEC_AJU` date NOT NULL,
  `ID_HP_AYUDA` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_reporte`(191)),  -- Limitar el índice del campo id_reporte a 191 caracteres
  KEY `FK_DB_AJU_HP_AYUDA_idx` (`ID_HP_AYUDA`),
  KEY `FK_DB_AJU_RL_AJUSTE_idx` (`ID_RL_AJUSTE`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `db_con_act`
--

DROP TABLE IF EXISTS `db_con_act`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_con_act` (
   `id_reporte` varchar(255) NOT NULL,
   `ID_CIE_10` varchar(190) DEFAULT NULL COMMENT 'CÓDIGO CIE10 ASOCIADO AL CONSUMO SPA',
   `COD_CIE10_COMORBILIDAD` varchar(190) DEFAULT NULL,
   `ID_RL_LISTA_SPA` int(11) DEFAULT NULL COMMENT 'SUSTANCIA QUE CONSUME DE MAYOR IMPACTO',
   `ID_RL_LISTA_SPA2` varchar(190) DEFAULT NULL,
   `ID_RL_IMP_FREC_USO` int(11) DEFAULT NULL COMMENT 'FRECUENCIA DE USO',
   `ID_RL_IMP_VIA_ADM` int(11) DEFAULT NULL COMMENT 'PRINCIPAL VÍA DE ADMINISTRACIÓN',
   `IMP_FR_INYECC` int(11) DEFAULT NULL,
   `ID_RL_INI_ENTORNO` int(11) DEFAULT NULL COMMENT 'ENTORNO DE CONSUMO ACTUAL',
   `ID_RL_INI_LUGAR` int(11) DEFAULT NULL COMMENT 'LUGAR DEL CONSUMO ACTUAL',
   `ID_RL_INI_LUGAR2` varchar(190) DEFAULT NULL,
   `ID_RL_PRO_CA` int(11) DEFAULT NULL COMMENT 'PRINCIPAL PROBLEMA QUE LE GENERA EL CONSUMO ACTUAL',
   `FR_SOBRED` int(11) DEFAULT NULL,
   `FR_SEXUAL` int(11) DEFAULT NULL,
   `ACT_SPA_ALC` int(11) DEFAULT NULL,
   `ACT_SPA_TAB` int(11) DEFAULT 2,
   `ACT_SPA_MAR` int(11) DEFAULT 2,
   `ACT_SPA_COC` int(11) DEFAULT 2,
   `ACT_SPA_BAS` int(11) DEFAULT 2,
   `ACT_SPA_EXT` int(11) DEFAULT 2,
   `ACT_SPA_LSD` int(11) DEFAULT 2,
   `ACT_SPA_HER` int(11) DEFAULT 2,
   `ACT_SPA_2CB` int(11) DEFAULT 2,
   `ACT_SPA_MET` int(11) DEFAULT 2,
   `ACT_SPA_GHB` int(11) DEFAULT 2,
   `ACT_SPA_KET` int(11) DEFAULT 2,
   `ACT_SPA_POP` int(11) DEFAULT 2,
   `ACT_SPA_DIC` int(11) DEFAULT 2,
   `ACT_SPA_SOL` int(11) DEFAULT 2,
   `ACT_SPA_ANF` int(11) DEFAULT 2,
   `ACT_SPA_TRA` int(11) DEFAULT 2,
   `ACT_SPA_OPI` int(11) DEFAULT 2,
   `ACT_SPA_CAC` int(11) DEFAULT 2,
   `ACT_SPA_HON` int(11) DEFAULT 2,
   `ACT_SPA_CSI` int(11) DEFAULT 2,
   `ACT_SPA_OTR` int(11) DEFAULT 2,
   `ACT_SPA_OTR_CUA` varchar(255) DEFAULT 'No aplica',
   `DISP_ELECTRONICOS` int(11) DEFAULT 2,
   PRIMARY KEY (`id_reporte`(191)),
   KEY `FK_CON_ACT_LISTA_SPA_IDX` (`ID_RL_LISTA_SPA`),
   KEY `FK_CON_ACT_LISTA_SPA_IDX1` (`ID_RL_LISTA_SPA2`),
   KEY `FK_CON_ACT_IDX` (`ID_CIE_10`),
   KEY `FK_CON_ACT_IMP_FREC_USO_IDX` (`ID_RL_IMP_FREC_USO`),
   KEY `FK_CON_ACT_IMP_VIA_ADM_IDX` (`ID_RL_IMP_VIA_ADM`),
   KEY `FK_CON_ACT_INI_ENTORNO_IDX` (`ID_RL_INI_ENTORNO`),
   KEY `FK_CON_ACT_INI_LUGAR_IDX` (`ID_RL_INI_LUGAR`, `ID_RL_INI_LUGAR2`),
   KEY `FK_CON_ACT_INI_LUGAR2_idx` (`ID_RL_INI_LUGAR2`),
   KEY `FK_CON_ACT_PRO_CA_idx` (`ID_RL_PRO_CA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `db_ent_mun`
--

DROP TABLE IF EXISTS `db_ent_mun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_ent_mun` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `COD_MUN` int(255) NOT NULL,
  `NOM_MUN` varchar(255) NOT NULL,
  `FEC_INICIAR` date NOT NULL,
  `FEC_CAMCAR` date NOT NULL,
  `NOMBRE_RESPON` varchar(255) NOT NULL,
  `APELLIDO_RESPON` varchar(255) NOT NULL,
  `ID_RL_TIP_IDE` varchar(255) NOT NULL,
  `NRO_DOC` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `TELEFONO` bigint(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `db_ide_pac`
--

DROP TABLE IF EXISTS `db_ide_pac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_ide_pac` (
  `id_reporte` varchar(255) NOT NULL,
  `ID_TIP_IDE` bigint(255) NOT NULL,
  `NUM_IDE` varchar(255) NOT NULL COMMENT 'NÚMERO IDENTIFICACIÓNN',
  `PRI_NOM` varchar(45) DEFAULT NULL COMMENT 'PRIMER NOMBREN',
  `SEG_NOM` varchar(45) DEFAULT NULL COMMENT 'SEGUNDO NOMBREN',
  `PRI_APE` varchar(45) DEFAULT NULL COMMENT 'PRIMER APELLIDON',
  `SEG_APE` varchar(45) DEFAULT NULL COMMENT 'SEGUNDO APELLIDON',
  `TELEFONO` varchar(20) DEFAULT NULL COMMENT 'TELEFONO PACIENTEN',
  `FECHA_NTO` date DEFAULT NULL COMMENT 'FECHA DE NACIMIENTON',
  `EDAD` int(255) DEFAULT NULL,
  `ID_SEXO` int(11) DEFAULT NULL,
  `IDENTIDAD_GENERO` int(11) DEFAULT '5',
  `ID_RL_NACIONALIDAD` int(255) DEFAULT NULL,
  `ID_COD_PAIS_O` int(11) DEFAULT NULL,
  `ID_RL_DIVIPOLA` int(11) DEFAULT NULL,
  `AREA_RESIDENCIA` int(11) DEFAULT '1',
  `LOCALIDAD_BARRIO_VEREDA_CENTROP_RESIDENCIA` varchar(45) DEFAULT 'Sin Informacion',
  `DIR_RES` varchar(255) DEFAULT NULL,
  `id_rl_tip_ss` int(255) DEFAULT NULL,
  `ESTRATO` int(45) DEFAULT NULL,
  `gpdis` int(11) DEFAULT '2',
  `gpdes` int(11) DEFAULT NULL,
  `gpmigr` int(11) DEFAULT NULL,
  `gpcar` int(11) DEFAULT NULL,
  `gpges` int(11) DEFAULT NULL,
  `SEM_GES` bigint(255) DEFAULT NULL,
  `gplac` int(11) DEFAULT '2',
  `gpindi` int(11) DEFAULT NULL,
  `gpicbfs` int(11) DEFAULT NULL,
  `gpmc` int(11) DEFAULT NULL,
  `gpdesmo` int(11) DEFAULT NULL,
  `gppsi` int(11) DEFAULT NULL,
  `gpvicvio` int(11) DEFAULT NULL,
  `gpotro` int(11) DEFAULT NULL,
  `CIUO88` int(11) DEFAULT NULL,
  `COD_ASE` bigint(255) DEFAULT NULL,
  `rl_per_ind` int(255) DEFAULT NULL,
  `NOM_GRUPO` varchar(255) DEFAULT NULL,
  `GENERO` int(11) DEFAULT NULL,
  `EST_CIV` int(11) DEFAULT NULL,
  `NIV_ESC_TER` int(11) DEFAULT NULL,
  `CORREO` varchar(255) DEFAULT 'No Aplica',
  `borrador` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_reporte`(191)),
  UNIQUE KEY `ID_IDE_PAC` (`id_reporte`(191)),
  KEY `FK_DB_IDE_PAC_RL_SEXO_idx` (`ID_SEXO`),
  KEY `FK_idx` (`ID_RL_NACIONALIDAD`),
  KEY `FK_DB_IDE_PAC_RL_NACIONALIDAD1_idx` (`ID_RL_DIVIPOLA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `db_info_gral`
--

DROP TABLE IF EXISTS `db_info_gral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_info_gral` (
  `id_reporte` varchar(255) NOT NULL COMMENT '1. INFORMACIÓN GENERAL',
  `ID_TIP_IDE` int(255) NOT NULL,
  `COD_EVE` varchar(255) DEFAULT NULL COMMENT 'CÓDIGO CIE10 ASOCIADON',
  `FEC_NOT` date DEFAULT NULL COMMENT 'FECHA NOTIFICACIÓNN',
  `SEMANA` int(11) DEFAULT NULL COMMENT 'SEMANAN',
  `ANO` int(11) DEFAULT NULL COMMENT 'AÑON',
  `COD_PRE` varchar(255) DEFAULT NULL COMMENT 'CÓDIGO DEL PRESTADOR DE SERVICIOS DE SALUDN',
  `COD_SUB` varchar(255) DEFAULT NULL COMMENT 'CÓDIGO DE PRESTADOR DE SERVICIOS DE SALUD – SUB ÍNDICEN',
  PRIMARY KEY (`id_reporte`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `db_ini_con`
--

DROP TABLE IF EXISTS `db_ini_con`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_ini_con` (
  `id_reporte` varchar(255) NOT NULL,
  `INI_EDAD` int(11) DEFAULT NULL COMMENT '¿A QUÉ EDAD INICIÓ EL CONSUMO?NN>=5 AND <=99',
  `ID_RL_LISTA_SPA` int(11) DEFAULT NULL COMMENT 'CON CUÁL SUSTANCIA INICIÓ EL CONSUMONNLISTA SPA',
  `ID_RL_LISTA_SPA2` varchar(190) DEFAULT NULL COMMENT 'CON CUÁL OTRA SUSTANCIA INICIÓ EL CONSUMONNLISTA SPA / REGISTRE CON CUAL OTRA SUSTANCIA INICIÓ EL CONSUMONNSI SE SELECCIONA LA OPCIÓN 39 = OTRA EN "CON CUAL SUSTANCIA INICIÓ EL CONSUMO", DEBE ACTIVARSE ESTA VARIABLE',
  `ID_RL_INI_PER` int(11) DEFAULT NULL COMMENT 'QUIEN LE INDUJO AL PRIMER CONSUMO',
  `ID_RL_INI_ENTORNO` int(11) DEFAULT NULL COMMENT 'ENTORNO DEL PRIMER CONSUMO',
  `ID_RL_INI_LUGAR` int(11) DEFAULT NULL,
  `INI_LUGAR_OTRO` varchar(190) NOT NULL,
  `ID_RL_INI_MOTIV` int(11) DEFAULT NULL COMMENT 'PRINCIPAL MOTIVACIÓN AL PRIMER CONSUMO',
  `ID_RL_INI_MOTIV2` varchar(190) DEFAULT NULL COMMENT 'CUAL OTRA MOTIVACIÓN AL PRIMER CONSUMO',
  PRIMARY KEY (`id_reporte`(191)),
  KEY `FK_INI_CON_LISTA_SPA_IDX` (`ID_RL_LISTA_SPA`),
  KEY `FK_INI_CON_LISTA_SPA2_IDX` (`ID_RL_LISTA_SPA2`),
  KEY `FK_INI_CON_INI_PER_IDX` (`ID_RL_INI_PER`),
  KEY `FK_INI_CON_INI_ENTORNO_IDX` (`ID_RL_INI_ENTORNO`),
  KEY `FK_INI_CON_INI_LUGAR_IDX` (`ID_RL_INI_LUGAR`),
  KEY `FK_INI_CON_INI_MOTIV_IDX` (`ID_RL_INI_MOTIV`),
  KEY `FK_INI_CON_INI_MOTIV2_IDX` (`ID_RL_INI_MOTIV2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `db_intven`
--

DROP TABLE IF EXISTS `db_intven`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_intven` (
  `id_reporte` varchar(255) NOT NULL,
  `EDUC_PREV` int(11) DEFAULT NULL,
  `ID_RL_EDUC_CAL` int(11) DEFAULT NULL COMMENT 'COMO CALIFICA LA CALIDAD DE LA INFORMACIÓN O EDUCACIÓN BRINDADA',
  `TTO_PREVIO` int(11) DEFAULT NULL,
  `FECHA_ULTIMO_TRATAMIENTO_SPA` date DEFAULT '2001-01-01',
  `ID_DISP_AYUDA` int(11) DEFAULT NULL,
  `RED_APOYO` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_reporte`(191)),
  KEY `FK_DB_INTVEN_IDX` (`ID_RL_EDUC_CAL`),
  KEY `DB_INTVEN_DISP_AYUDA_IDX` (`ID_DISP_AYUDA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='4. INTERVENCIONES';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `db_mega_upgd`
--

DROP TABLE IF EXISTS `db_mega_upgd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_mega_upgd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `raz_soc` varchar(255) DEFAULT NULL,
  `cod_pre` bigint(255) DEFAULT NULL,
  `cod_sub` bigint(255) DEFAULT NULL,
  `cod_mun` bigint(255) DEFAULT NULL,
  `is_father` int(255) DEFAULT NULL,
  `father_id` bigint(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nom_respon` varchar(45) DEFAULT NULL,
  `nit` bigint(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `db_notif`
--

DROP TABLE IF EXISTS `db_notif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_notif` (
  `id_reporte` varchar(255) NOT NULL,
  `ID_RL_FUENTE` int(11) NOT NULL COMMENT 'FUENTEN''SI AJUSTE ES 0 O 7, FUENTE ES OBLIGATORIA.''',
  `ID_RL_PAIS_DIAN` int(11) NOT NULL COMMENT 'CÓDIGO DEL PAÍS DE RESIDENCIA DEL PACIENTE.NFK DIVIPOLA',
  `ID_RL_DIVIPOLA` int(11) DEFAULT NULL,
  `AREA_OCURRENCIA` int(11) DEFAULT '1',
  `LOCALIDAD_BARRIO_VEREDA_CENTROP_OCURRENCIA` varchar(255) DEFAULT 'Sin Informacion',
  `DIR_RES` varchar(200) NOT NULL COMMENT 'DIRECCIÓN DE RESIDENCIAN',
  `FEC_CON` date NOT NULL COMMENT 'FECHA CONSULTAN<= A LA FECHA DE NOTIFICACIÓN',
  `INI_SIN` date NOT NULL COMMENT 'FECHA INICIO DE SÍNTOMASN''CORRESPONDE A LA FECHA DE ÚLTIMO CONSUMO SPA''',
  `ID_TIP_CAS` int(11) NOT NULL COMMENT 'CLASIFICACIÓN INICIAL DEL CASON',
  `PAC_HOS` int(255) NOT NULL COMMENT 'HOSPITALIZADO',
  `FEC_HOS` date DEFAULT NULL COMMENT 'FECHA HOSPITALIZACIÓNN',
  `ID_CON_FIN` int(11) NOT NULL COMMENT 'CONDICIÓN FINALN',
  `FEC_DEF` date NOT NULL COMMENT 'FECHA DEFUNCIÓNNN"SI SE SELECCIONA LA OPCIÓN 2= MUERTO EN CONDICIÓN FINAL DEBE SER OBLIGATORIO EL DILIGENCIAMIENTO DE ESTA VARIABLEN>= FECHA DE CONSULTA"N',
  `CER_DEF` varchar(45) DEFAULT NULL COMMENT 'NUMERO DEL CERTIFICADO DEFUNCIÓNNNSI SE SELECCIONA LA OPCIÓN 2= MUERTO EN CONDICIÓN FINAL DEBE ACTIVARSE ESTA VARIABLEN',
  `ID_RL_CIE_10` int(11) NOT NULL COMMENT 'CAUSA BÁSICA DE DEFUNCIÓNNSI SE SELECCIONA LA OPCIÓN 2= MUERTO, EN CONDICIÓN FINAL DEBE SER OBLIGATORIO EL DILIGENCIAMIENTO DE ESTA VARIABLENN',
  `NOM_DIL_FI` varchar(45) NOT NULL COMMENT 'NOMBRE DEL PROFESIONAL QUE DILIGENCIA LA FICHAN',
  `TEL_DIL_FI` varchar(45) NOT NULL COMMENT 'TELÉFONO DEL PROFESIONAL QUE DILIGENCIA LA FICHANALFANUMÉRICO - MÍNIMO 7 DÍGITOS Y MÁXIMO 12 EN CASO DE TENER EXTENSIÓN',
  `FEC_NOT` date DEFAULT NULL,
  PRIMARY KEY (`id_reporte`(191)),
  KEY `FK_DB_NOTIF_FUENTE_IDX` (`ID_RL_FUENTE`),
  KEY `FK_DB_NOTIF_IDX` (`ID_RL_PAIS_DIAN`),
  KEY `FK_DB_NOTIF_TIP_CAS_idx` (`ID_TIP_CAS`),
  KEY `FK_DB_NOTIF_CIE_10_idx` (`ID_RL_CIE_10`),
  KEY `FK_DB_NOTIF_DIVIPOLA_idx` (`ID_RL_DIVIPOLA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `db_rel_dat`
--

DROP TABLE IF EXISTS `db_rel_dat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_rel_dat` (
  `ID_DB_REL_DAT` int(11) NOT NULL,
  `FEC_CON` date DEFAULT NULL COMMENT 'FECHA DE CONSULTA: CALCULA LA SEMANA Y EL AÑO',
  `ID_RL_PRE_SER_SAL` int(11) DEFAULT NULL,
  `ID_RL_CIE_10` int(11) DEFAULT NULL,
  `ID_DB_IDE_PAC` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_DB_REL_DAT`),
  KEY `FK_idx` (`ID_RL_PRE_SER_SAL`),
  KEY `FK_DB_REL_DAT_PRE_CIE_10_idx` (`ID_RL_CIE_10`),
  KEY `FK_DB_REL_DAT_DB_INFO_GRAL_idx` (`ID_DB_IDE_PAC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `db_res_not`
--

DROP TABLE IF EXISTS `db_res_not`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_res_not` (
  `id_reporte` varchar(255) NOT NULL,
  `NOMBRES` varchar(100) NOT NULL COMMENT 'NOMBRES Y APELLIDOS DE LA PERSONA RESPONSABLE DE LA NOTIFICACIÓN EN LA UPGD',
  `APELLIDOS` varchar(100) DEFAULT NULL,
  `ID_RL_TIP_IDE` int(11) DEFAULT NULL COMMENT 'TIPO DE DOCMENTO',
  `NRO_DOC` varchar(80) DEFAULT NULL COMMENT 'NRO DOCUMENTO RESPONSABLE',
  `TEL_PER` varchar(45) DEFAULT NULL,
  `ID_RL_PRE_SERV_SAL` bigint(255) DEFAULT NULL,
  PRIMARY KEY (`id_reporte`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='RESPONSABLE NOTIFICACIÓN';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `db_silencio`
--

DROP TABLE IF EXISTS `db_silencio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_silencio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `semana` int(11) DEFAULT NULL,
  `ano` bigint(255) DEFAULT NULL,
  `cod_pre` bigint(255) DEFAULT NULL,
  `cod_sub` bigint(255) DEFAULT NULL,
  `raz_soc` varchar(255) DEFAULT NULL,
  `responsable` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `week_is_reported` varchar(45) DEFAULT NULL,
  `municipio` varchar(45) DEFAULT NULL,
  `cod_mun` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8514 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `db_tam_assist`
--

DROP TABLE IF EXISTS `db_tam_assist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_tam_assist` (
  `id_tamizaje` varchar(255) NOT NULL,
  `id_creador` varchar(255) NOT NULL,
  `nombrecreador` varchar(255) NOT NULL,
  `FEC_NOT` date NOT NULL,
  `TIP_IDE` int(255) NOT NULL,
  `NUM_IDE` varchar(255) NOT NULL,
  `PRI_NOM` varchar(255) NOT NULL,
  `SEG_NOM` varchar(255) DEFAULT NULL,
  `PRI_APE` varchar(255) NOT NULL,
  `SEG_APE` varchar(255) NOT NULL,
  `TELEFONO` bigint(255) NOT NULL,
  `FECHA_NTO` date NOT NULL,
  `INI_SIN` date DEFAULT NULL,
  `EDAD` int(255) NOT NULL,
  `SEXO` int(255) NOT NULL,
  `NACION` int(255) NOT NULL,
  `ID_RL_DIVIPOLA` int(255) NOT NULL,
  `ID_RL_DIVIPOLA_RESI` int(255) NOT NULL,
  `DIR_RES` varchar(255) DEFAULT NULL,
  `tip_reg` int(255) NOT NULL,
  `cod_adm` bigint(255) DEFAULT NULL,
  `PROFESION` int(11) NOT NULL,
  `INI_EDAD` int(255) NOT NULL,
  `ASSIST_P1a_TAB` int(11) NOT NULL,
  `ASSIST_P1_EDAD_INI_CIG` int(11) NOT NULL,
  `ASSIST_P1b_ALC` int(11) NOT NULL,
  `ASSIST_P1c_CAN` int(11) NOT NULL,
  `ASSIST_P1d_COC` int(11) NOT NULL,
  `ASSIST_P1e_ANF` int(11) NOT NULL,
  `ASSIST_P1f_INH` int(11) NOT NULL,
  `ASSIST_P1g_TRA` int(11) NOT NULL,
  `ASSIST_P1h_ALU` int(11) NOT NULL,
  `ASSIST_P1i_OPI` int(11) NOT NULL,
  `ASSIST_P1j_OTR` int(11) NOT NULL,
  `ASSIST_P1_CUAL_OTRA` varchar(255) NOT NULL,
  `ASSIST_P2a_TAB` int(11) NOT NULL,
  `ASSIST_P2b_ALC` int(11) NOT NULL,
  `ASSIST_P2c_CAN` int(11) NOT NULL,
  `ASSIST_P2d_COC` int(11) NOT NULL,
  `ASSIST_P2e_ANF` int(11) NOT NULL,
  `ASSIST_P2f_INH` int(11) NOT NULL,
  `ASSIST_P2g_TRA` int(11) NOT NULL,
  `ASSIST_P2h_ALU` int(11) NOT NULL,
  `ASSIST_P2i_OPI` int(11) NOT NULL,
  `ASSIST_P2j_OTR` int(11) NOT NULL,
  `ASSIST_P2i_CUAL` varchar(11) NOT NULL,
  `ASSIST_P3a_TAB` int(11) NOT NULL,
  `ASSIST_P3b_ALC` int(11) NOT NULL,
  `ASSIST_P3c_CAN` int(11) NOT NULL,
  `ASSIST_P3d_COC` int(11) NOT NULL,
  `ASSIST_P3e_ANF` int(11) NOT NULL,
  `ASSIST_P3f_INH` int(11) NOT NULL,
  `ASSIST_P3g_TRA` int(11) NOT NULL,
  `ASSIST_P3h_ALU` int(11) NOT NULL,
  `ASSIST_P3i_OPI` int(11) NOT NULL,
  `ASSIST_P3j_OTR` int(11) NOT NULL,
  `ASSIST_P4a_TAB` int(11) NOT NULL,
  `ASSIST_P4b_ALC` int(11) NOT NULL,
  `ASSIST_P4c_CAN` int(11) NOT NULL,
  `ASSIST_P4d_COC` int(11) NOT NULL,
  `ASSIST_P4e_ANF` int(11) NOT NULL,
  `ASSIST_P4f_INH` int(11) NOT NULL,
  `ASSIST_P4g_TRA` int(11) NOT NULL,
  `ASSIST_P4h_ALU` int(11) NOT NULL,
  `ASSIST_P4i_OPI` int(11) NOT NULL,
  `ASSIST_P4j_OTR` int(11) NOT NULL,
  `ASSIST_P5a_TAB` int(11) NOT NULL,
  `ASSIST_P5b_ALC` int(11) NOT NULL,
  `ASSIST_P5c_CAN` int(11) NOT NULL,
  `ASSIST_P5d_COC` int(11) NOT NULL,
  `ASSIST_P5e_ANF` int(11) NOT NULL,
  `ASSIST_P5f_INH` int(11) NOT NULL,
  `ASSIST_P5g_TRA` int(11) NOT NULL,
  `ASSIST_P5h_ALU` int(11) NOT NULL,
  `ASSIST_P5i_OPI` int(11) NOT NULL,
  `ASSIST_P5j_OTR` int(11) NOT NULL,
  `ASSIST_P6a_TAB` int(11) NOT NULL,
  `ASSIST_P6b_ALC` int(11) NOT NULL,
  `ASSIST_P6c_CAN` int(11) NOT NULL,
  `ASSIST_P6d_COC` int(11) NOT NULL,
  `ASSIST_P6e_ANF` int(11) NOT NULL,
  `ASSIST_P6f_INH` int(11) NOT NULL,
  `ASSIST_P6g_TRA` int(11) NOT NULL,
  `ASSIST_P6h_ALU` int(11) NOT NULL,
  `ASSIST_P6i_OPI` int(11) NOT NULL,
  `ASSIST_P6j_OTR` int(11) NOT NULL,
  `ASSIST_P7a_TAB` int(11) NOT NULL,
  `ASSIST_P7b_ALC` int(11) NOT NULL,
  `ASSIST_P7c_CAN` int(11) NOT NULL,
  `ASSIST_P7d_COC` int(11) NOT NULL,
  `ASSIST_P7e_ANF` int(11) NOT NULL,
  `ASSIST_P7f_INH` int(11) NOT NULL,
  `ASSIST_P7g_TRA` int(11) NOT NULL,
  `ASSIST_P7h_ALU` int(11) NOT NULL,
  `ASSIST_P7i_OPI` int(11) NOT NULL,
  `ASSIST_P7j_OTR` int(11) NOT NULL,
  `ASSIST_P8_1_INY` int(11) NOT NULL,
  `ASSIST_P8_2_FREC` int(11) NOT NULL,
  `ASSIST_Puntajea_TAB` int(255) NOT NULL,
  `ASSIST_Puntajeb_ALC` int(255) NOT NULL,
  `ASSIST_Puntajec_CAN` int(255) NOT NULL,
  `ASSIST_Puntajed_COC` int(255) NOT NULL,
  `ASSIST_Puntajee_ANF` int(255) NOT NULL,
  `ASSIST_Puntajef_INH` int(255) NOT NULL,
  `ASSIST_Puntajeg_TRA` int(255) NOT NULL,
  `ASSIST_Puntajeh_ALU` int(255) NOT NULL,
  `ASSIST_Puntajei_OPI` int(255) NOT NULL,
  `ASSIST_Puntajej_OTR` int(255) NOT NULL,
  `ASSIST_Puntajej_8INY` int(255) NOT NULL,
  PRIMARY KEY (`id_tamizaje`(191)),
  KEY `ID` (`id_tamizaje`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `db_tam_assist_ciu`
--

DROP TABLE IF EXISTS `db_tam_assist_ciu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_tam_assist_ciu` (
  `id_tamizaje` varchar(255) NOT NULL DEFAULT '',
  `id_creador` varchar(255) NOT NULL,
  `nombrecreador` varchar(255) NOT NULL,
  `FEC_NOT` date NOT NULL,
  `TIP_IDE` int(255) NOT NULL,
  `NUM_IDE` varchar(255) NOT NULL,
  `PRI_NOM` varchar(255) NOT NULL,
  `SEG_NOM` varchar(255) DEFAULT NULL,
  `PRI_APE` varchar(255) NOT NULL,
  `SEG_APE` varchar(255) NOT NULL,
  `TELEFONO` bigint(255) NOT NULL,
  `FECHA_NTO` date NOT NULL,
  `EDAD` int(255) NOT NULL,
  `SEXO` int(255) NOT NULL,
  `NACION` int(255) NOT NULL,
  `ID_RL_DIVIPOLA` int(255) NOT NULL,
  `ID_RL_DIVIPOLA_RESI` int(255) NOT NULL,
  `DIR_RES` varchar(255) DEFAULT NULL,
  `tip_reg` int(255) NOT NULL,
  `cod_adm` bigint(255) DEFAULT NULL,
  `spa` int(255) DEFAULT NULL,
  `PROFESION` int(11) NOT NULL,
  `INI_EDAD` int(255) NOT NULL,
  `ASSIST_P1a_TAB` int(11) NOT NULL,
  `ASSIST_P1_EDAD_INI_CIG` int(11) NOT NULL,
  `ASSIST_P1b_ALC` int(11) NOT NULL,
  `ASSIST_P1c_CAN` int(11) NOT NULL,
  `ASSIST_P1d_COC` int(11) NOT NULL,
  `ASSIST_P1e_ANF` int(11) NOT NULL,
  `ASSIST_P1f_INH` int(11) NOT NULL,
  `ASSIST_P1g_TRA` int(11) NOT NULL,
  `ASSIST_P1h_ALU` int(11) NOT NULL,
  `ASSIST_P1i_OPI` int(11) NOT NULL,
  `ASSIST_P1j_OTR` int(11) NOT NULL,
  `ASSIST_P1_CUAL_OTRA` varchar(255) NOT NULL,
  `ASSIST_P2a_TAB` int(11) NOT NULL,
  `ASSIST_P2b_ALC` int(11) NOT NULL,
  `ASSIST_P2c_CAN` int(11) NOT NULL,
  `ASSIST_P2d_COC` int(11) NOT NULL,
  `ASSIST_P2e_ANF` int(11) NOT NULL,
  `ASSIST_P2f_INH` int(11) NOT NULL,
  `ASSIST_P2g_TRA` int(11) NOT NULL,
  `ASSIST_P2h_ALU` int(11) NOT NULL,
  `ASSIST_P2i_OPI` int(11) NOT NULL,
  `ASSIST_P2j_OTR` int(11) NOT NULL,
  `ASSIST_P2i_CUAL` varchar(11) NOT NULL,
  `ASSIST_P3a_TAB` int(11) NOT NULL,
  `ASSIST_P3b_ALC` int(11) NOT NULL,
  `ASSIST_P3c_CAN` int(11) NOT NULL,
  `ASSIST_P3d_COC` int(11) NOT NULL,
  `ASSIST_P3e_ANF` int(11) NOT NULL,
  `ASSIST_P3f_INH` int(11) NOT NULL,
  `ASSIST_P3g_TRA` int(11) NOT NULL,
  `ASSIST_P3h_ALU` int(11) NOT NULL,
  `ASSIST_P3i_OPI` int(11) NOT NULL,
  `ASSIST_P3j_OTR` int(11) NOT NULL,
  `ASSIST_P4a_TAB` int(11) NOT NULL,
  `ASSIST_P4b_ALC` int(11) NOT NULL,
  `ASSIST_P4c_CAN` int(11) NOT NULL,
  `ASSIST_P4d_COC` int(11) NOT NULL,
  `ASSIST_P4e_ANF` int(11) NOT NULL,
  `ASSIST_P4f_INH` int(11) NOT NULL,
  `ASSIST_P4g_TRA` int(11) NOT NULL,
  `ASSIST_P4h_ALU` int(11) NOT NULL,
  `ASSIST_P4i_OPI` int(11) NOT NULL,
  `ASSIST_P4j_OTR` int(11) NOT NULL,
  `ASSIST_P5a_TAB` int(11) NOT NULL,
  `ASSIST_P5b_ALC` int(11) NOT NULL,
  `ASSIST_P5c_CAN` int(11) NOT NULL,
  `ASSIST_P5d_COC` int(11) NOT NULL,
  `ASSIST_P5e_ANF` int(11) NOT NULL,
  `ASSIST_P5f_INH` int(11) NOT NULL,
  `ASSIST_P5g_TRA` int(11) NOT NULL,
  `ASSIST_P5h_ALU` int(11) NOT NULL,
  `ASSIST_P5i_OPI` int(11) NOT NULL,
  `ASSIST_P5j_OTR` int(11) NOT NULL,
  `ASSIST_P6a_TAB` int(11) NOT NULL,
  `ASSIST_P6b_ALC` int(11) NOT NULL,
  `ASSIST_P6c_CAN` int(11) NOT NULL,
  `ASSIST_P6d_COC` int(11) NOT NULL,
  `ASSIST_P6e_ANF` int(11) NOT NULL,
  `ASSIST_P6f_INH` int(11) NOT NULL,
  `ASSIST_P6g_TRA` int(11) NOT NULL,
  `ASSIST_P6h_ALU` int(11) NOT NULL,
  `ASSIST_P6i_OPI` int(11) NOT NULL,
  `ASSIST_P6j_OTR` int(11) NOT NULL,
  `ASSIST_P7a_TAB` int(11) NOT NULL,
  `ASSIST_P7b_ALC` int(11) NOT NULL,
  `ASSIST_P7c_CAN` int(11) NOT NULL,
  `ASSIST_P7d_COC` int(11) NOT NULL,
  `ASSIST_P7e_ANF` int(11) NOT NULL,
  `ASSIST_P7f_INH` int(11) NOT NULL,
  `ASSIST_P7g_TRA` int(11) NOT NULL,
  `ASSIST_P7h_ALU` int(11) NOT NULL,
  `ASSIST_P7i_OPI` int(11) NOT NULL,
  `ASSIST_P7j_OTR` int(11) NOT NULL,
  `ASSIST_P8_1_INY` int(11) NOT NULL,
  `ASSIST_P8_2_FREC` int(11) NOT NULL,
  `ASSIST_Puntajea_TAB` int(255) NOT NULL,
  `ASSIST_Puntajeb_ALC` int(255) NOT NULL,
  `ASSIST_Puntajec_CAN` int(255) NOT NULL,
  `ASSIST_Puntajed_COC` int(255) NOT NULL,
  `ASSIST_Puntajee_ANF` int(255) NOT NULL,
  `ASSIST_Puntajef_INH` int(255) NOT NULL,
  `ASSIST_Puntajeg_TRA` int(255) NOT NULL,
  `ASSIST_Puntajeh_ALU` int(255) NOT NULL,
  `ASSIST_Puntajei_OPI` int(255) NOT NULL,
  `ASSIST_Puntajej_OTR` int(255) NOT NULL,
  `ASSIST_Puntajej_8INY` int(255) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `db_tam_assist_ciucol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `db_tam_audit`
--

DROP TABLE IF EXISTS `db_tam_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_tam_audit` (
  `id_tamizaje` varchar(255) NOT NULL,
  `id_creador` varchar(255) DEFAULT NULL,
  `nombrecreador` varchar(255) DEFAULT NULL,
  `PRI_NOM` varchar(45) DEFAULT NULL,
  `SEG_NOM` varchar(45) DEFAULT NULL,
  `PRI_APE` varchar(45) DEFAULT NULL,
  `SEG_APE` varchar(45) DEFAULT NULL,
  `EDAD` int(11) DEFAULT NULL,
  `FEC_NAC` date DEFAULT NULL,
  `TIP_DOC` int(11) DEFAULT NULL,
  `NUM_IDE` varchar(255) DEFAULT NULL,
  `NACION` varchar(45) DEFAULT NULL,
  `SEG_SOCIAL` int(11) DEFAULT NULL,
  `EPS` int(11) DEFAULT NULL,
  `MUNICIPIO` varchar(45) DEFAULT NULL,
  `DIR_RESIDENCIA` varchar(255) DEFAULT NULL,
  `TEL` varchar(255) DEFAULT NULL,
  `BARRIO` varchar(45) DEFAULT NULL,
  `VEREDA` varchar(45) DEFAULT NULL,
  `CORREGIMIENTO` varchar(45) DEFAULT NULL,
  `INI_EDAD` int(11) DEFAULT NULL,
  `INI_SPA` int(11) DEFAULT NULL,
  `QUESTION_AUDIT_1` int(11) DEFAULT NULL,
  `QUESTION_AUDIT_2` int(11) DEFAULT NULL,
  `QUESTION_AUDIT_3` int(11) DEFAULT NULL,
  `QUESTION_AUDIT_4` int(11) DEFAULT NULL,
  `QUESTION_AUDIT_5` int(11) DEFAULT NULL,
  `QUESTION_AUDIT_6` int(11) DEFAULT NULL,
  `QUESTION_AUDIT_7` int(11) DEFAULT NULL,
  `QUESTION_AUDIT_8` int(11) DEFAULT NULL,
  `QUESTION_AUDIT_9` int(11) DEFAULT NULL,
  `QUESTION_AUDIT_10` int(11) DEFAULT NULL,
  `PUNTAJE_TOTAL` int(11) DEFAULT NULL,
  `FEC_NOT` date DEFAULT NULL,
  `SEXO` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_tamizaje`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `db_tam_audit_ciu`
--

DROP TABLE IF EXISTS `db_tam_audit_ciu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_tam_audit_ciu` (
  `id_tamizaje` varchar(255) NOT NULL,
  `id_creador` varchar(255) DEFAULT '0',
  `nombrecreador` varchar(255) DEFAULT 'plataforma web',
  `PRI_NOM` varchar(45) DEFAULT NULL,
  `SEG_NOM` varchar(45) DEFAULT NULL,
  `PRI_APE` varchar(45) DEFAULT NULL,
  `SEG_APE` varchar(45) DEFAULT NULL,
  `EDAD` int(11) DEFAULT NULL,
  `FEC_NAC` date DEFAULT NULL,
  `TIP_DOC` int(11) DEFAULT NULL,
  `NUM_IDE` varchar(255) DEFAULT NULL,
  `NACION` varchar(45) DEFAULT '42',
  `SEG_SOCIAL` int(11) DEFAULT NULL,
  `EPS` int(11) DEFAULT NULL,
  `MUNICIPIO` varchar(45) DEFAULT NULL,
  `DIR_RESIDENCIA` varchar(255) DEFAULT NULL,
  `TEL` varchar(255) DEFAULT NULL,
  `BARRIO` varchar(45) DEFAULT NULL,
  `VEREDA` varchar(45) DEFAULT NULL,
  `CORREGIMIENTO` varchar(45) DEFAULT NULL,
  `INI_EDAD` int(11) DEFAULT NULL,
  `INI_SPA` int(11) DEFAULT NULL,
  `QUESTION_AUDIT_1` int(11) DEFAULT NULL,
  `QUESTION_AUDIT_2` int(11) DEFAULT NULL,
  `QUESTION_AUDIT_3` int(11) DEFAULT NULL,
  `QUESTION_AUDIT_4` int(11) DEFAULT NULL,
  `QUESTION_AUDIT_5` int(11) DEFAULT NULL,
  `QUESTION_AUDIT_6` int(11) DEFAULT NULL,
  `QUESTION_AUDIT_7` int(11) DEFAULT NULL,
  `QUESTION_AUDIT_8` int(11) DEFAULT NULL,
  `QUESTION_AUDIT_9` int(11) DEFAULT NULL,
  `QUESTION_AUDIT_10` int(11) DEFAULT NULL,
  `PUNTAJE_TOTAL` int(11) DEFAULT NULL,
  `FEC_NOT` date DEFAULT NULL,
  `SEXO` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_tamizaje`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `db_tam_crafft`
--

DROP TABLE IF EXISTS `db_tam_crafft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_tam_crafft` (
  `id_tamizaje` varchar(255) NOT NULL,
  `id_creador` varchar(255) NOT NULL,
  `nombrecreador` varchar(255) NOT NULL,
  `FEC_NOT` date NOT NULL,
  `TIP_IDE` int(255) NOT NULL,
  `NUM_IDE` varchar(255) NOT NULL,
  `PRI_NOM` varchar(255) NOT NULL,
  `SEG_NOM` varchar(255) NOT NULL,
  `PRI_APE` varchar(255) NOT NULL,
  `SEG_APE` varchar(255) NOT NULL,
  `TELEFONO` bigint(255) NOT NULL,
  `FECHA_NTO` date NOT NULL,
  `INI_SIN` date DEFAULT NULL,
  `EDAD` int(255) NOT NULL,
  `SEXO` int(255) NOT NULL,
  `NACION` int(255) NOT NULL,
  `ID_RL_DIVIPOLA` int(255) NOT NULL,
  `ID_RL_DIVIPOLA_RESI` int(255) NOT NULL,
  `DIR_RES` varchar(255) DEFAULT NULL,
  `tip_reg` int(255) NOT NULL,
  `cod_adm` bigint(255) NOT NULL,
  `EDAD_INI` int(255) NOT NULL,
  `SPA_INI` int(255) NOT NULL,
  `CRAFFT_Pa1_ALC` int(255) NOT NULL,
  `CRAFFT_Pa2_MAR` int(255) NOT NULL,
  `CRAFFT_Pa3_OTR` int(255) NOT NULL,
  `CRAFFT_Pb1_RIESGOS` int(255) NOT NULL,
  `CRAFFT_Pb2_DISMIN` int(255) NOT NULL,
  `CRAFFT_Pb3_RELAJ` int(255) NOT NULL,
  `CRAFFT_Pb4_LIOS` int(255) NOT NULL,
  `CRAFFT_Pb5_OLVIDO` int(255) NOT NULL,
  `CRAFFT_Pb6_SOLO` int(255) NOT NULL,
  `CRAFFT_Puntaje` int(255) NOT NULL,
  `accion` varchar(255) NOT NULL,
  PRIMARY KEY (`id_tamizaje`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `db_uni_not`
--

DROP TABLE IF EXISTS `db_uni_not`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_uni_not` (
  `PK_UNI_NOTIF` int(11) NOT NULL AUTO_INCREMENT,
  `FEC_INICAR` date DEFAULT NULL COMMENT 'FECHA INICIAL DE CARACTERIZACIÓNN"FECHA EFECTIVA EN LA CUAL LA UPGD EMPEZÓNA USAR EL APLICATIVO"NN',
  `FEC_CAMCAR` date DEFAULT NULL COMMENT 'FECHA DE CAMBIO EN LA CARACTERIZACIÓNN"DEBE SER IGUAL A LA FECHA ACTUAL NO PUEDENSER INFERIOR A LA FECHA DE ENTREGA DELNAPLICATIVO."N',
  `COD_PRE` varchar(255) DEFAULT NULL,
  `COD_SUB` varchar(255) DEFAULT NULL,
  `COD_MUN` bigint(255) NOT NULL,
  `RAZ_SOC` varchar(200) DEFAULT NULL COMMENT 'RAZÓN SOCIALNNOMBRE DE LA PERSONA JURÍDICA REGISTRADA PARA IDENTIFICAR A LA UPGDNN',
  `COR_ELE` varchar(150) NOT NULL COMMENT 'CORREO ELECTRÓNICONCORREO ELECTRÓNICO DE LA UPGD.NN',
  `ID_RES_NOT` varchar(255) DEFAULT NULL,
  `TEL` varchar(255) DEFAULT NULL COMMENT 'TELÉFONONNÚMERO TELEFÓNICO DE LA UPGD.NN',
  `ACT_SIV` bigint(1) DEFAULT NULL,
  `NIT_UPGD` bigint(11) DEFAULT NULL COMMENT 'NIT UPGD',
  `ES_UNI_NOT` bigint(1) DEFAULT NULL,
  `ESTADOUPGD` bigint(1) DEFAULT NULL,
  `sector` varchar(45) DEFAULT 'salud',
  PRIMARY KEY (`PK_UNI_NOTIF`)
) ENGINE=InnoDB AUTO_INCREMENT=677 DEFAULT CHARSET=utf8mb4 COMMENT='1. CARACTERIZACIÓN DE UNIDAD NOTIFICADORA';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'u674755405_sivespa'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-26  0:07:36
