-- MySQL dump 10.13  Distrib 5.5.59, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: hrdb
-- ------------------------------------------------------
-- Server version	5.5.59-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `hrdb`
--

/*!40000 DROP DATABASE IF EXISTS `hrdb`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hrdb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `hrdb`;

--
-- Table structure for table `about_incidents_reader`
--

DROP TABLE IF EXISTS `about_incidents_reader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `about_incidents_reader` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `about_incidents_reader__history`
--

DROP TABLE IF EXISTS `about_incidents_reader__history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `about_incidents_reader__history` (
  `history__id` int(11) NOT NULL AUTO_INCREMENT,
  `history__language` varchar(2) DEFAULT NULL,
  `history__comments` text,
  `history__user` varchar(32) DEFAULT NULL,
  `history__state` int(11) DEFAULT '0',
  `history__modified` datetime DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `info` int(11) DEFAULT NULL,
  PRIMARY KEY (`history__id`),
  KEY `datekeys` (`history__modified`) USING BTREE,
  KEY `prikeys` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `asset_eam`
--

DROP TABLE IF EXISTS `asset_eam`;
/*!50001 DROP VIEW IF EXISTS `asset_eam`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `asset_eam` (
  `id` tinyint NOT NULL,
  `Asset` tinyint NOT NULL,
  `Description` tinyint NOT NULL,
  `Location` tinyint NOT NULL,
  `Manufacturer` tinyint NOT NULL,
  `Model` tinyint NOT NULL,
  `Serial Number` tinyint NOT NULL,
  `Supplier` tinyint NOT NULL,
  `Category` tinyint NOT NULL,
  `Cell` tinyint NOT NULL,
  `Change Notice` tinyint NOT NULL,
  `Class` tinyint NOT NULL,
  `Commission Date` tinyint NOT NULL,
  `Contract Equipment` tinyint NOT NULL,
  `Criticality` tinyint NOT NULL,
  `Currency` tinyint NOT NULL,
  `Customer` tinyint NOT NULL,
  `Department` tinyint NOT NULL,
  `Dependent` tinyint NOT NULL,
  `Dormant End` tinyint NOT NULL,
  `Dormant Start` tinyint NOT NULL,
  `Eligible for Energy Star Label` tinyint NOT NULL,
  `Latest Install Date` tinyint NOT NULL,
  `Latest Receipt Date` tinyint NOT NULL,
  `Lock Reliability Ranking Values` tinyint NOT NULL,
  `Organization` tinyint NOT NULL,
  `Original Install Date` tinyint NOT NULL,
  `Original Receipt Date` tinyint NOT NULL,
  `Out of Service` tinyint NOT NULL,
  `PO# / IPP#` tinyint NOT NULL,
  `Parent Asset` tinyint NOT NULL,
  `Prevent non-PM WO Completion` tinyint NOT NULL,
  `Primary Use` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `audits`
--

DROP TABLE IF EXISTS `audits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auditable_id` int(11) DEFAULT NULL,
  `auditable_type` varchar(255) DEFAULT NULL,
  `associated_id` int(11) DEFAULT NULL,
  `associated_type` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `audited_changes` text,
  `version` int(11) DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL,
  `remote_address` varchar(255) DEFAULT NULL,
  `request_uuid` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `auditable_index` (`auditable_id`,`auditable_type`),
  KEY `associated_index` (`associated_id`,`associated_type`),
  KEY `user_index` (`user_id`,`user_type`),
  KEY `index_audits_on_request_uuid` (`request_uuid`),
  KEY `index_audits_on_created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=1324 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `copy_pp_parkingpass`
--

DROP TABLE IF EXISTS `copy_pp_parkingpass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copy_pp_parkingpass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clock1` varchar(8) DEFAULT NULL,
  `name_full_entpr` varchar(22) DEFAULT NULL,
  `parking_pass` varchar(7) DEFAULT NULL,
  `dept` varchar(7) DEFAULT NULL,
  `company` varchar(28) DEFAULT NULL,
  `group` varchar(16) DEFAULT NULL,
  `status` varchar(3) DEFAULT NULL,
  `supervisor` varchar(39) DEFAULT NULL,
  `clock_entpr` varchar(39) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=504 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `corrective_actions`
--

DROP TABLE IF EXISTS `corrective_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `corrective_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci,
  `responsible` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `target_date` date DEFAULT NULL,
  `actual_date_done` date DEFAULT NULL,
  `done` tinyint(1) DEFAULT NULL,
  `sort_integer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `incident_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_corrective_actions_on_incident_id` (`incident_id`),
  CONSTRAINT `fk_rails_9aac145ab5` FOREIGN KEY (`incident_id`) REFERENCES `incidents` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dashboard`
--

DROP TABLE IF EXISTS `dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dataface__failed_logins`
--

DROP TABLE IF EXISTS `dataface__failed_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataface__failed_logins` (
  `attempt_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL,
  `time_of_attempt` int(11) NOT NULL,
  PRIMARY KEY (`attempt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dataface__modules`
--

DROP TABLE IF EXISTS `dataface__modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataface__modules` (
  `module_name` varchar(255) NOT NULL,
  `module_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`module_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dataface__mtimes`
--

DROP TABLE IF EXISTS `dataface__mtimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataface__mtimes` (
  `name` varchar(255) NOT NULL,
  `mtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dataface__preferences`
--

DROP TABLE IF EXISTS `dataface__preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataface__preferences` (
  `pref_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `table` varchar(128) NOT NULL,
  `record_id` varchar(255) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`pref_id`),
  KEY `username` (`username`),
  KEY `table` (`table`),
  KEY `record_id` (`record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dataface__record_mtimes`
--

DROP TABLE IF EXISTS `dataface__record_mtimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataface__record_mtimes` (
  `recordhash` varchar(32) NOT NULL,
  `recordid` varchar(255) NOT NULL,
  `mtime` int(11) NOT NULL,
  PRIMARY KEY (`recordhash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dataface__version`
--

DROP TABLE IF EXISTS `dataface__version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataface__version` (
  `version` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dc_category`
--

DROP TABLE IF EXISTS `dc_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dc_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(99) NOT NULL,
  `active_status` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '50',
  `comment` text,
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dc_disc_type`
--

DROP TABLE IF EXISTS `dc_disc_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dc_disc_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(99) NOT NULL,
  `active_status` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `comment` text,
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dc_disc_type__history`
--

DROP TABLE IF EXISTS `dc_disc_type__history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dc_disc_type__history` (
  `history__id` int(11) NOT NULL AUTO_INCREMENT,
  `history__language` varchar(2) DEFAULT NULL,
  `history__comments` text,
  `history__user` varchar(32) DEFAULT NULL,
  `history__state` int(5) DEFAULT '0',
  `history__modified` datetime DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `name` varchar(99) DEFAULT NULL,
  `active_status` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `comment` text,
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedtime` datetime DEFAULT NULL,
  PRIMARY KEY (`history__id`),
  KEY `prikeys` (`id`) USING HASH,
  KEY `datekeys` (`history__modified`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dc_discipline__history`
--

DROP TABLE IF EXISTS `dc_discipline__history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dc_discipline__history` (
  `history__id` int(11) NOT NULL AUTO_INCREMENT,
  `history__language` varchar(2) DEFAULT NULL,
  `history__comments` text,
  `history__user` varchar(32) DEFAULT NULL,
  `history__state` int(5) DEFAULT '0',
  `history__modified` datetime DEFAULT NULL,
  `employee` varchar(99) DEFAULT NULL,
  `dated` date DEFAULT NULL,
  `disciplineby` varchar(99) DEFAULT NULL,
  `disc_type` varchar(99) DEFAULT NULL,
  `description_of_incident` text,
  `action` text,
  `comment` text,
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedtime` datetime DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `category` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`history__id`),
  KEY `prikeys` (`id`) USING HASH,
  KEY `datekeys` (`history__modified`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dc_discipline_off`
--

DROP TABLE IF EXISTS `dc_discipline_off`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dc_discipline_off` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dated` date NOT NULL,
  `employee` varchar(99) NOT NULL,
  `disciplineby` varchar(99) NOT NULL,
  `category` varchar(99) NOT NULL,
  `disc_type` varchar(99) NOT NULL,
  `description_of_incident` text NOT NULL,
  `action` text NOT NULL,
  `comment` text,
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dc_disciplines`
--

DROP TABLE IF EXISTS `dc_disciplines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dc_disciplines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `date_discipline` date DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `discipline_by` varchar(255) DEFAULT NULL,
  `dc_level_id` int(11) DEFAULT NULL,
  `dc_stream_id` int(11) DEFAULT NULL,
  `infraction_description` text,
  `documents_on_file` tinyint(1) DEFAULT NULL,
  `hr_comment` text,
  `employee_comment` text,
  `output` text,
  `sort_order` int(11) DEFAULT NULL,
  `active_status` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `sigpad_supervisor` text,
  `hr_manager_approval` varchar(99) DEFAULT NULL,
  `dept_manager_approval` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_dc_disciplines_on_employee_id` (`employee_id`),
  KEY `index_dc_disciplines_on_dc_level_id` (`dc_level_id`),
  KEY `index_dc_disciplines_on_dc_stream_id` (`dc_stream_id`),
  CONSTRAINT `fk_rails_328e4ed411` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  CONSTRAINT `fk_rails_55090c154b` FOREIGN KEY (`dc_level_id`) REFERENCES `dc_levels` (`id`),
  CONSTRAINT `fk_rails_ec249656c8` FOREIGN KEY (`dc_stream_id`) REFERENCES `dc_streams` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dc_levels`
--

DROP TABLE IF EXISTS `dc_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dc_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `active_status` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dc_streams`
--

DROP TABLE IF EXISTS `dc_streams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dc_streams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `active_status` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `emp_ceridian`
--

DROP TABLE IF EXISTS `emp_ceridian`;
/*!50001 DROP VIEW IF EXISTS `emp_ceridian`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `emp_ceridian` (
  `x9` tinyint NOT NULL,
  `eenum` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `position` tinyint NOT NULL,
  `dept` tinyint NOT NULL,
  `x9b` tinyint NOT NULL,
  `datehired` tinyint NOT NULL,
  `shift` tinyint NOT NULL,
  `senoritydate` tinyint NOT NULL,
  `reportdate` tinyint NOT NULL,
  `home_phone` tinyint NOT NULL,
  `id` tinyint NOT NULL,
  `positionstartdate` tinyint NOT NULL,
  `payrate` tinyint NOT NULL,
  `type_a` tinyint NOT NULL,
  `updatedtime` tinyint NOT NULL,
  `createdtime` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `emp_enterprise`
--

DROP TABLE IF EXISTS `emp_enterprise`;
/*!50001 DROP VIEW IF EXISTS `emp_enterprise`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `emp_enterprise` (
  `clock` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `dept` tinyint NOT NULL,
  `company` tinyint NOT NULL,
  `grouping` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `sch_wk1` tinyint NOT NULL,
  `pln_wk1` tinyint NOT NULL,
  `sch_wk2` tinyint NOT NULL,
  `pln_wk2` tinyint NOT NULL,
  `id_e` tinyint NOT NULL,
  `updatedtime` tinyint NOT NULL,
  `createdtime` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `emp_enterprise_ceridian`
--

DROP TABLE IF EXISTS `emp_enterprise_ceridian`;
/*!50001 DROP VIEW IF EXISTS `emp_enterprise_ceridian`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `emp_enterprise_ceridian` (
  `clock` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `dept` tinyint NOT NULL,
  `company` tinyint NOT NULL,
  `grouping` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `sch_wk1` tinyint NOT NULL,
  `pln_wk1` tinyint NOT NULL,
  `sch_wk2` tinyint NOT NULL,
  `pln_wk2` tinyint NOT NULL,
  `id_e` tinyint NOT NULL,
  `cer_eenum` tinyint NOT NULL,
  `cer_position` tinyint NOT NULL,
  `cer_dept` tinyint NOT NULL,
  `cer_name` tinyint NOT NULL,
  `cer_sh` tinyint NOT NULL,
  `cer_datehired` tinyint NOT NULL,
  `cer_seniority_date` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `emp_homephone`
--

DROP TABLE IF EXISTS `emp_homephone`;
/*!50001 DROP VIEW IF EXISTS `emp_homephone`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `emp_homephone` (
  `cnt` tinyint NOT NULL,
  `home_phone` tinyint NOT NULL,
  `en_clock` tinyint NOT NULL,
  `en_dept` tinyint NOT NULL,
  `en_company` tinyint NOT NULL,
  `en_name` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `en_shift` tinyint NOT NULL,
  `sch_wk1` tinyint NOT NULL,
  `pln_wk1` tinyint NOT NULL,
  `id_e` tinyint NOT NULL,
  `eenum` tinyint NOT NULL,
  `cer_dept` tinyint NOT NULL,
  `cer_name` tinyint NOT NULL,
  `cer_shift` tinyint NOT NULL,
  `position` tinyint NOT NULL,
  `cer_id` tinyint NOT NULL,
  `datehired` tinyint NOT NULL,
  `senoritydate` tinyint NOT NULL,
  `senority_month` tinyint NOT NULL,
  `cer_reportdate` tinyint NOT NULL,
  `positionstartdate` tinyint NOT NULL,
  `payrate` tinyint NOT NULL,
  `parking_pass` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `clock` varchar(255) DEFAULT NULL,
  `sort` varchar(255) DEFAULT NULL,
  `active` int(2) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_employees_on_clock_and_name` (`clock`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3833 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER employees_trigger_created BEFORE INSERT ON 
employees
FOR EACH ROW BEGIN
SET new.created_at := now();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `inci_assets`
--

DROP TABLE IF EXISTS `inci_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inci_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_assets_on_asset_and_description` (`asset`,`description`) USING BTREE,
  UNIQUE KEY `index_inci_assets_on_asset_and_description` (`asset`,`description`)
) ENGINE=InnoDB AUTO_INCREMENT=874 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
ALTER DATABASE `hrdb` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hruser`@`localhost`*/ /*!50003 TRIGGER 
          assets_table_trigger_created_at 
      BEFORE INSERT ON 
        inci_assets
      FOR EACH ROW BEGIN
      SET new.created_at := now();
      END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `hrdb` CHARACTER SET utf8 COLLATE utf8_general_ci ;

--
-- Table structure for table `incidents`
--

DROP TABLE IF EXISTS `incidents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incidents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report_type` varchar(987) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `name_if_not_in_employees` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contractor_or_visitor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reported_to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reported_at` datetime DEFAULT NULL,
  `incident_occured` datetime DEFAULT NULL,
  `left_right` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dominant` tinyint(1) DEFAULT NULL,
  `injured_body_part` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `incident_type` varchar(987) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other_exposure` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inci_asset_id` int(11) DEFAULT NULL,
  `incident_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `witness1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `witness2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `task_being_done` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `routine_task` tinyint(1) DEFAULT NULL,
  `description_of_incident` text COLLATE utf8_unicode_ci,
  `treatment` varchar(987) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_first_aid` text COLLATE utf8_unicode_ci,
  `immediate_cause` text COLLATE utf8_unicode_ci,
  `basic_root_cause` text COLLATE utf8_unicode_ci,
  `previous_occurrence` text COLLATE utf8_unicode_ci,
  `working_environment` varchar(987) COLLATE utf8_unicode_ci DEFAULT NULL,
  `work_environment_details` text COLLATE utf8_unicode_ci,
  `machine_equipment` varchar(987) COLLATE utf8_unicode_ci DEFAULT NULL,
  `machine_equipment_details` text COLLATE utf8_unicode_ci,
  `addtional_comments` text COLLATE utf8_unicode_ci,
  `corrective_action_id` int(11) DEFAULT NULL,
  `corrective_actions_implemented_checkbox` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `corrective_actions_implemented` text COLLATE utf8_unicode_ci,
  `corrective_actions_effective_checkbox` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `corrective_actions_effective` text COLLATE utf8_unicode_ci,
  `other_corrective_comments` text COLLATE utf8_unicode_ci,
  `supervisor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supervisor_date` date DEFAULT NULL,
  `operations_manager` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `operations_manager_date` date DEFAULT NULL,
  `hse_coordinator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hse_coordinator_date` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `hr_manager` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ohsa_reportable` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `length_of_service` float DEFAULT NULL,
  `plant` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `return_to_work_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_incidents_on_employee_id` (`employee_id`),
  KEY `index_incidents_on_inci_asset_id` (`inci_asset_id`),
  KEY `index_incidents_on_corrective_action_id` (`corrective_action_id`),
  KEY `index_incidents_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_19ef14975c` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  CONSTRAINT `fk_rails_61fd4346ab` FOREIGN KEY (`corrective_action_id`) REFERENCES `corrective_actions` (`id`),
  CONSTRAINT `fk_rails_6af30a70d3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_rails_78dd9c65ac` FOREIGN KEY (`inci_asset_id`) REFERENCES `inci_assets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pp_parkingpass__history`
--

DROP TABLE IF EXISTS `pp_parkingpass__history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_parkingpass__history` (
  `history__id` int(11) NOT NULL AUTO_INCREMENT,
  `history__language` varchar(2) DEFAULT NULL,
  `history__comments` text,
  `history__user` varchar(32) DEFAULT NULL,
  `history__state` int(5) DEFAULT '0',
  `history__modified` datetime DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `clock1` varchar(8) DEFAULT NULL,
  `name_full_entpr` varchar(22) DEFAULT NULL,
  `parking_pass` varchar(7) DEFAULT NULL,
  `dept` varchar(7) DEFAULT NULL,
  `company` varchar(28) DEFAULT NULL,
  `group` varchar(16) DEFAULT NULL,
  `status` varchar(3) DEFAULT NULL,
  `supervisor` varchar(39) DEFAULT NULL,
  `clock_entpr` varchar(39) DEFAULT NULL,
  PRIMARY KEY (`history__id`),
  KEY `prikeys` (`id`) USING HASH,
  KEY `datekeys` (`history__modified`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pp_parkingpass_off`
--

DROP TABLE IF EXISTS `pp_parkingpass_off`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_parkingpass_off` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clock1` varchar(8) DEFAULT NULL,
  `en_name` varchar(22) DEFAULT NULL,
  `parking_pass` varchar(50) DEFAULT NULL,
  `dept` varchar(7) DEFAULT NULL,
  `company` varchar(28) DEFAULT NULL,
  `grouping` varchar(16) DEFAULT NULL,
  `en_status` varchar(3) DEFAULT NULL,
  `supervisor` varchar(39) DEFAULT NULL,
  `en_clock` varchar(39) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=503 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pp_parkingpasses`
--

DROP TABLE IF EXISTS `pp_parkingpasses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_parkingpasses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(99) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `clock1` varchar(8) DEFAULT NULL,
  `en_name` varchar(22) DEFAULT NULL,
  `parking_pass` varchar(50) DEFAULT NULL,
  `dept` varchar(7) DEFAULT NULL,
  `company` varchar(28) DEFAULT NULL,
  `grouping` varchar(16) DEFAULT NULL,
  `en_status` varchar(3) DEFAULT NULL,
  `supervisor` varchar(39) DEFAULT NULL,
  `en_clock` varchar(39) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `active_status` int(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `parking_pass` (`parking_pass`),
  KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=520 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `roles_dc`
--

DROP TABLE IF EXISTS `roles_dc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_dc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `active_status` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `search_1`
--

DROP TABLE IF EXISTS `search_1`;
/*!50001 DROP VIEW IF EXISTS `search_1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `search_1` (
  `clocknum` tinyint NOT NULL,
  `employee` tinyint NOT NULL,
  `training_date` tinyint NOT NULL,
  `course_name` tinyint NOT NULL,
  `id` tinyint NOT NULL,
  `training_record_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `search_test`
--

DROP TABLE IF EXISTS `search_test`;
/*!50001 DROP VIEW IF EXISTS `search_test`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `search_test` (
  `clocknum` tinyint NOT NULL,
  `employee` tinyint NOT NULL,
  `training_date` tinyint NOT NULL,
  `course_name` tinyint NOT NULL,
  `id` tinyint NOT NULL,
  `training_record_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `stf_assets`
--

DROP TABLE IF EXISTS `stf_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stf_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assetnum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active_status` int(11) DEFAULT '1',
  `sort` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_stf_assets_on_assetnum_and_description` (`assetnum`,`description`)
) ENGINE=InnoDB AUTO_INCREMENT=855 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER stf_assets_trigger_created BEFORE INSERT ON 
stf_assets
FOR EACH ROW BEGIN
SET new.created_at := now();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `stf_employees`
--

DROP TABLE IF EXISTS `stf_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stf_employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clocknum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active_status` int(11) DEFAULT '1',
  `sort` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_stf_employees_on_clocknum_and_name` (`clocknum`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5566 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER stf_employees_trigger_created BEFORE INSERT ON 
stf_employees
FOR EACH ROW BEGIN
SET new.created_at := now();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tr_cells`
--

DROP TABLE IF EXISTS `tr_cells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_cells` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `operation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `operationid` int(11) NOT NULL,
  `active_status` int(11) DEFAULT '1',
  `sort` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_operation_operationid` (`name`,`operation`,`operationid`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tr_courses`
--

DROP TABLE IF EXISTS `tr_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active_status` int(11) NOT NULL DEFAULT '1',
  `sort` int(11) DEFAULT '51',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=342 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tr_customers`
--

DROP TABLE IF EXISTS `tr_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customerid` int(11) NOT NULL,
  `active_status` int(11) DEFAULT '1',
  `sort` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_location_customerid` (`name`,`location`,`customerid`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tr_parts`
--

DROP TABLE IF EXISTS `tr_parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `partnumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active_status` int(11) DEFAULT '1',
  `sort` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_tr_parts_on_name_and_partnumber` (`name`,`partnumber`)
) ENGINE=InnoDB AUTO_INCREMENT=625 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tr_programs`
--

DROP TABLE IF EXISTS `tr_programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_programs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active_status` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tr_secondary_course_names`
--

DROP TABLE IF EXISTS `tr_secondary_course_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_secondary_course_names` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `active_status` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tr_training_employees`
--

DROP TABLE IF EXISTS `tr_training_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_training_employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `output` text COLLATE utf8_unicode_ci,
  `tr_training_record_id` int(11) DEFAULT NULL,
  `stf_employee_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tr_training_employees_on_tr_training_record_id` (`tr_training_record_id`),
  KEY `index_tr_training_employees_on_stf_employee_id` (`stf_employee_id`),
  CONSTRAINT `fk_rails_68c46882eb` FOREIGN KEY (`tr_training_record_id`) REFERENCES `tr_training_records` (`id`),
  CONSTRAINT `fk_rails_98f88a3293` FOREIGN KEY (`stf_employee_id`) REFERENCES `stf_employees` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tr_training_records`
--

DROP TABLE IF EXISTS `tr_training_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_training_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tr_course_id` int(11) DEFAULT NULL,
  `training_date` date DEFAULT NULL,
  `details_of_training` text COLLATE utf8_unicode_ci,
  `hours_trained` float DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `swi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path_to_training_material` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tr_type_id` int(11) DEFAULT NULL,
  `tr_customer_id` int(11) DEFAULT NULL,
  `tr_program_id` int(11) DEFAULT NULL,
  `tr_part_id` int(11) DEFAULT NULL,
  `tr_cell_id` int(11) DEFAULT NULL,
  `stf_asset_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `plant` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trainer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tr_secondary_course_name_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tr_training_records_on_tr_course_id` (`tr_course_id`),
  KEY `index_tr_training_records_on_tr_type_id` (`tr_type_id`),
  KEY `index_tr_training_records_on_tr_customer_id` (`tr_customer_id`),
  KEY `index_tr_training_records_on_tr_program_id` (`tr_program_id`),
  KEY `index_tr_training_records_on_tr_part_id` (`tr_part_id`),
  KEY `index_tr_training_records_on_tr_cell_id` (`tr_cell_id`),
  KEY `index_tr_training_records_on_stf_asset_id` (`stf_asset_id`),
  KEY `index_tr_training_records_on_user_id` (`user_id`),
  KEY `index_tr_training_records_on_tr_secondary_course_name_id` (`tr_secondary_course_name_id`),
  CONSTRAINT `fk_rails_05beb3664e` FOREIGN KEY (`tr_course_id`) REFERENCES `tr_courses` (`id`),
  CONSTRAINT `fk_rails_0c3f21230e` FOREIGN KEY (`tr_program_id`) REFERENCES `tr_programs` (`id`),
  CONSTRAINT `fk_rails_3381fb84c9` FOREIGN KEY (`tr_customer_id`) REFERENCES `tr_customers` (`id`),
  CONSTRAINT `fk_rails_4c41fe0151` FOREIGN KEY (`stf_asset_id`) REFERENCES `stf_assets` (`id`),
  CONSTRAINT `fk_rails_4d5783d196` FOREIGN KEY (`tr_part_id`) REFERENCES `tr_parts` (`id`),
  CONSTRAINT `fk_rails_6d93847646` FOREIGN KEY (`tr_cell_id`) REFERENCES `tr_cells` (`id`),
  CONSTRAINT `fk_rails_6fb2cbdd9c` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_rails_90ca565d23` FOREIGN KEY (`tr_type_id`) REFERENCES `tr_types` (`id`),
  CONSTRAINT `fk_rails_d601693709` FOREIGN KEY (`tr_secondary_course_name_id`) REFERENCES `tr_secondary_course_names` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tr_types`
--

DROP TABLE IF EXISTS `tr_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active_status` int(11) NOT NULL DEFAULT '1',
  `sort` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=426 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `crypted_password` varchar(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `Role` enum('READ ONLY','NO','EDIT','DELETE','OWNER','USER','ADMIN','REGISTER','ADDER','EDITB1','MANAGER') NOT NULL DEFAULT 'NO',
  `username` varchar(234) NOT NULL DEFAULT 'x',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  KEY `index_users_on_role_id` (`role_id`),
  CONSTRAINT `fk_rails_642f17018b` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_dc`
--

DROP TABLE IF EXISTS `users_dc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_dc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `crypted_password` varchar(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `Role` enum('READ ONLY','NO','EDIT','DELETE','OWNER','USER','ADMIN','REGISTER','ADDER','EDITB1','MANAGER') NOT NULL DEFAULT 'NO',
  `username` varchar(234) NOT NULL DEFAULT 'x',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  KEY `index_users_on_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_homephone`
--

DROP TABLE IF EXISTS `users_homephone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_homephone` (
  `username` varchar(32) NOT NULL,
  `password` varchar(244) NOT NULL,
  `Role` enum('READ ONLY','NO ACCESS','EDIT','DELETE','OWNER','USER','ADMIN','REGISTER','ADDER','EDITB1','MANAGER') DEFAULT 'NO ACCESS',
  `first_name` varchar(233) DEFAULT NULL,
  `last_name` varchar(233) DEFAULT NULL,
  `address` varchar(244) DEFAULT NULL,
  `phone_num` varchar(211) DEFAULT NULL,
  `email` varchar(234) NOT NULL,
  `comment_fld1` text,
  `createdtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedtime` datetime DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_hrapp_xataface`
--

DROP TABLE IF EXISTS `users_hrapp_xataface`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_hrapp_xataface` (
  `username` varchar(32) NOT NULL,
  `password` varchar(244) NOT NULL,
  `Role` enum('READ ONLY','NO ACCESS','EDIT','DELETE','OWNER','USER','ADMIN','REGISTER','ADDER','EDITB1','MANAGER') DEFAULT 'NO ACCESS',
  `first_name` varchar(233) DEFAULT NULL,
  `last_name` varchar(233) DEFAULT NULL,
  `address` varchar(244) DEFAULT NULL,
  `phone_num` varchar(211) DEFAULT NULL,
  `email` varchar(234) NOT NULL,
  `comment_fld1` text,
  `createdtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedtime` datetime DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_xataface`
--

DROP TABLE IF EXISTS `users_xataface`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_xataface` (
  `username` varchar(32) NOT NULL,
  `password` varchar(244) NOT NULL,
  `Role` enum('READ ONLY','NO ACCESS','EDIT','DELETE','OWNER','USER','ADMIN','REGISTER','ADDER','EDITB1','MANAGER') DEFAULT 'NO ACCESS',
  `first_name` varchar(233) DEFAULT NULL,
  `last_name` varchar(233) DEFAULT NULL,
  `address` varchar(244) DEFAULT NULL,
  `phone_num` varchar(211) DEFAULT NULL,
  `email` varchar(234) NOT NULL,
  `comment_fld1` text,
  `createdtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedtime` datetime DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `version_associations`
--

DROP TABLE IF EXISTS `version_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `version_associations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version_id` int(11) DEFAULT NULL,
  `foreign_key_name` varchar(255) NOT NULL,
  `foreign_key_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_version_associations_on_version_id` (`version_id`),
  KEY `index_version_associations_on_foreign_key` (`foreign_key_name`,`foreign_key_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_type` varchar(191) NOT NULL,
  `item_id` int(11) NOT NULL,
  `event` varchar(255) NOT NULL,
  `whodunnit` varchar(255) DEFAULT NULL,
  `object` longtext,
  `created_at` datetime DEFAULT NULL,
  `object_changes` longtext,
  `transaction_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_versions_on_item_type_and_item_id` (`item_type`,`item_id`),
  KEY `index_versions_on_transaction_id` (`transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1129 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `versions_dc`
--

DROP TABLE IF EXISTS `versions_dc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions_dc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_type` varchar(191) NOT NULL,
  `item_id` int(11) NOT NULL,
  `event` varchar(255) NOT NULL,
  `whodunnit` varchar(255) DEFAULT NULL,
  `object` longtext,
  `created_at` datetime DEFAULT NULL,
  `object_changes` longtext,
  `transaction_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_versions_on_item_type_and_item_id` (`item_type`,`item_id`),
  KEY `index_versions_on_transaction_id` (`transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'hrdb'
--
/*!50003 DROP PROCEDURE IF EXISTS `addcolumns1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addcolumns1`()
begin
    declare continue handler for 1060 begin end; -- this ignores errors if they occur in the following lines. say if the column already exists.
    alter table dc_disciplines add sigpad_supervisor text;
    alter table dc_disciplines add hr_manager_approval varchar(99);
    alter table dc_disciplines add production_manager_approval varchar(99);
    alter table dc_disciplines add documents_on_file bool null;
    alter table dc_disciplines MODIFY COLUMN documents_on_file bool after dc_action;
    
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Current Database: `hrdb`
--

USE `hrdb`;

--
-- Final view structure for view `asset_eam`
--

/*!50001 DROP TABLE IF EXISTS `asset_eam`*/;
/*!50001 DROP VIEW IF EXISTS `asset_eam`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `asset_eam` AS select `lukup`.`asset_eam`.`id` AS `id`,`lukup`.`asset_eam`.`Asset` AS `Asset`,`lukup`.`asset_eam`.`Description` AS `Description`,`lukup`.`asset_eam`.`Location` AS `Location`,`lukup`.`asset_eam`.`Manufacturer` AS `Manufacturer`,`lukup`.`asset_eam`.`Model` AS `Model`,`lukup`.`asset_eam`.`Serial Number` AS `Serial Number`,`lukup`.`asset_eam`.`Supplier` AS `Supplier`,`lukup`.`asset_eam`.`Category` AS `Category`,`lukup`.`asset_eam`.`Cell` AS `Cell`,`lukup`.`asset_eam`.`Change Notice` AS `Change Notice`,`lukup`.`asset_eam`.`Class` AS `Class`,`lukup`.`asset_eam`.`Commission Date` AS `Commission Date`,`lukup`.`asset_eam`.`Contract Equipment` AS `Contract Equipment`,`lukup`.`asset_eam`.`Criticality` AS `Criticality`,`lukup`.`asset_eam`.`Currency` AS `Currency`,`lukup`.`asset_eam`.`Customer` AS `Customer`,`lukup`.`asset_eam`.`Department` AS `Department`,`lukup`.`asset_eam`.`Dependent` AS `Dependent`,`lukup`.`asset_eam`.`Dormant End` AS `Dormant End`,`lukup`.`asset_eam`.`Dormant Start` AS `Dormant Start`,`lukup`.`asset_eam`.`Eligible for Energy Star Label` AS `Eligible for Energy Star Label`,`lukup`.`asset_eam`.`Latest Install Date` AS `Latest Install Date`,`lukup`.`asset_eam`.`Latest Receipt Date` AS `Latest Receipt Date`,`lukup`.`asset_eam`.`Lock Reliability Ranking Values` AS `Lock Reliability Ranking Values`,`lukup`.`asset_eam`.`Organization` AS `Organization`,`lukup`.`asset_eam`.`Original Install Date` AS `Original Install Date`,`lukup`.`asset_eam`.`Original Receipt Date` AS `Original Receipt Date`,`lukup`.`asset_eam`.`Out of Service` AS `Out of Service`,`lukup`.`asset_eam`.`PO# / IPP#` AS `PO# / IPP#`,`lukup`.`asset_eam`.`Parent Asset` AS `Parent Asset`,`lukup`.`asset_eam`.`Prevent non-PM WO Completion` AS `Prevent non-PM WO Completion`,`lukup`.`asset_eam`.`Primary Use` AS `Primary Use` from `lukup`.`asset_eam` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `emp_ceridian`
--

/*!50001 DROP TABLE IF EXISTS `emp_ceridian`*/;
/*!50001 DROP VIEW IF EXISTS `emp_ceridian`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `emp_ceridian` AS select `lukup`.`emp_ceridian`.`x9` AS `x9`,`lukup`.`emp_ceridian`.`eenum` AS `eenum`,`lukup`.`emp_ceridian`.`name` AS `name`,`lukup`.`emp_ceridian`.`position` AS `position`,`lukup`.`emp_ceridian`.`dept` AS `dept`,`lukup`.`emp_ceridian`.`x9b` AS `x9b`,`lukup`.`emp_ceridian`.`datehired` AS `datehired`,`lukup`.`emp_ceridian`.`shift` AS `shift`,`lukup`.`emp_ceridian`.`senoritydate` AS `senoritydate`,`lukup`.`emp_ceridian`.`reportdate` AS `reportdate`,`lukup`.`emp_ceridian`.`home_phone` AS `home_phone`,`lukup`.`emp_ceridian`.`id` AS `id`,`lukup`.`emp_ceridian`.`positionstartdate` AS `positionstartdate`,`lukup`.`emp_ceridian`.`payrate` AS `payrate`,`lukup`.`emp_ceridian`.`type_a` AS `type_a`,`lukup`.`emp_ceridian`.`updatedtime` AS `updatedtime`,`lukup`.`emp_ceridian`.`createdtime` AS `createdtime` from `lukup`.`emp_ceridian` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `emp_enterprise`
--

/*!50001 DROP TABLE IF EXISTS `emp_enterprise`*/;
/*!50001 DROP VIEW IF EXISTS `emp_enterprise`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `emp_enterprise` AS select `lukup`.`emp_enterprise`.`clock` AS `clock`,`lukup`.`emp_enterprise`.`name` AS `name`,`lukup`.`emp_enterprise`.`dept` AS `dept`,`lukup`.`emp_enterprise`.`company` AS `company`,`lukup`.`emp_enterprise`.`grouping` AS `grouping`,`lukup`.`emp_enterprise`.`status` AS `status`,`lukup`.`emp_enterprise`.`sch_wk1` AS `sch_wk1`,`lukup`.`emp_enterprise`.`pln_wk1` AS `pln_wk1`,`lukup`.`emp_enterprise`.`sch_wk2` AS `sch_wk2`,`lukup`.`emp_enterprise`.`pln_wk2` AS `pln_wk2`,`lukup`.`emp_enterprise`.`id_e` AS `id_e`,`lukup`.`emp_enterprise`.`updatedtime` AS `updatedtime`,`lukup`.`emp_enterprise`.`createdtime` AS `createdtime` from `lukup`.`emp_enterprise` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `emp_enterprise_ceridian`
--

/*!50001 DROP TABLE IF EXISTS `emp_enterprise_ceridian`*/;
/*!50001 DROP VIEW IF EXISTS `emp_enterprise_ceridian`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `emp_enterprise_ceridian` AS select `te`.`clock` AS `clock`,`te`.`name` AS `name`,`te`.`dept` AS `dept`,`te`.`company` AS `company`,`te`.`grouping` AS `grouping`,`te`.`status` AS `status`,`te`.`sch_wk1` AS `sch_wk1`,`te`.`pln_wk1` AS `pln_wk1`,`te`.`sch_wk2` AS `sch_wk2`,`te`.`pln_wk2` AS `pln_wk2`,`te`.`id_e` AS `id_e`,`tc`.`eenum` AS `cer_eenum`,`tc`.`position` AS `cer_position`,`tc`.`dept` AS `cer_dept`,`tc`.`name` AS `cer_name`,`tc`.`shift` AS `cer_sh`,`tc`.`datehired` AS `cer_datehired`,`tc`.`senoritydate` AS `cer_seniority_date` from (`lukup`.`emp_enterprise` `te` left join `lukup`.`emp_ceridian` `tc` on((`tc`.`eenum` = `te`.`clock`))) order by `te`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `emp_homephone`
--

/*!50001 DROP TABLE IF EXISTS `emp_homephone`*/;
/*!50001 DROP VIEW IF EXISTS `emp_homephone`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `emp_homephone` AS select count(0) AS `cnt`,group_concat(`tc`.`home_phone` separator ',') AS `home_phone`,`te`.`clock` AS `en_clock`,`te`.`dept` AS `en_dept`,`te`.`company` AS `en_company`,`te`.`name` AS `en_name`,`te`.`status` AS `status`,`te`.`grouping` AS `en_shift`,`te`.`sch_wk1` AS `sch_wk1`,`te`.`pln_wk1` AS `pln_wk1`,`te`.`id_e` AS `id_e`,`tc`.`eenum` AS `eenum`,`tc`.`dept` AS `cer_dept`,`tc`.`name` AS `cer_name`,`tc`.`shift` AS `cer_shift`,`tc`.`position` AS `position`,`tc`.`id` AS `cer_id`,`tc`.`datehired` AS `datehired`,`tc`.`senoritydate` AS `senoritydate`,lpad(month(`tc`.`senoritydate`),2,'0') AS `senority_month`,`tc`.`reportdate` AS `cer_reportdate`,`tc`.`positionstartdate` AS `positionstartdate`,`tc`.`payrate` AS `payrate`,`p`.`parking_pass` AS `parking_pass` from (((`lukup`.`emp_ceridian` `tc` left join `lukup`.`emp_enterprise` `te` on((`tc`.`eenum` = `te`.`clock`))) left join `hrdb`.`employees` `e` on((`te`.`clock` = convert(`e`.`clock` using utf8)))) left join `hrdb`.`pp_parkingpasses` `p` on((`e`.`id` = `p`.`employee_id`))) where ((not((`te`.`status` like 'SH'))) and (not((`te`.`status` like 'Z'))) and (`e`.`active` = 1) and (`p`.`active_status` = 1) and (`p`.`parking_pass` is not null)) group by `tc`.`name`,`tc`.`eenum` order by count(0) desc,`te`.`clock` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `search_1`
--

/*!50001 DROP TABLE IF EXISTS `search_1`*/;
/*!50001 DROP VIEW IF EXISTS `search_1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `search_1` AS select `se`.`clocknum` AS `clocknum`,`se`.`name` AS `employee`,`rc`.`training_date` AS `training_date`,(select `tr_courses`.`name` from `tr_courses` where (`tr_courses`.`id` = `rc`.`tr_course_id`)) AS `course_name`,`te`.`id` AS `id`,`te`.`tr_training_record_id` AS `training_record_id` from ((`tr_training_employees` `te` left join `tr_training_records` `rc` on((`te`.`tr_training_record_id` = `rc`.`id`))) left join `stf_employees` `se` on((`se`.`id` = `te`.`stf_employee_id`))) order by `rc`.`id` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `search_test`
--

/*!50001 DROP TABLE IF EXISTS `search_test`*/;
/*!50001 DROP VIEW IF EXISTS `search_test`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `search_test` AS select `se`.`clocknum` AS `clocknum`,`se`.`name` AS `employee`,`rc`.`training_date` AS `training_date`,(select `tr_courses`.`name` from `tr_courses` where (`tr_courses`.`id` = `rc`.`tr_course_id`)) AS `course_name`,`te`.`id` AS `id`,`te`.`tr_training_record_id` AS `training_record_id` from ((`tr_training_employees` `te` left join `tr_training_records` `rc` on((`te`.`tr_training_record_id` = `rc`.`id`))) left join `stf_employees` `se` on((`se`.`id` = `te`.`stf_employee_id`))) order by `rc`.`id` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-14 15:30:41
