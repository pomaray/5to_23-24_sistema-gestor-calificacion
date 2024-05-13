-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-10-2021 a las 18:45:25
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `registro_alumnos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `appgini_query_log`
--

CREATE TABLE `appgini_query_log` (
  `datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `statement` longtext DEFAULT NULL,
  `duration` decimal(10,2) UNSIGNED DEFAULT 0.00,
  `error` text DEFAULT NULL,
  `memberID` varchar(200) DEFAULT NULL,
  `uri` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `appgini_query_log`
--

INSERT INTO `appgini_query_log` (`datetime`, `statement`, `duration`, `error`, `memberID`, `uri`) VALUES
('2021-10-04 13:57:58', 'ALTER TABLE `membership_groups` ADD COLUMN `allowCSVImport` TINYINT NOT NULL DEFAULT \'0\'', '0.00', 'Duplicate column name \'allowCSVImport\'', 'admin', '/registro_alumnos/index.php'),
('2021-10-04 13:57:58', 'ALTER TABLE `membership_users` ADD COLUMN `pass_reset_key` VARCHAR(100)', '0.00', 'Duplicate column name \'pass_reset_key\'', 'admin', '/registro_alumnos/index.php'),
('2021-10-04 13:57:58', 'ALTER TABLE `membership_users` ADD COLUMN `pass_reset_expiry` INT UNSIGNED', '0.00', 'Duplicate column name \'pass_reset_expiry\'', 'admin', '/registro_alumnos/index.php'),
('2021-10-04 13:57:58', 'ALTER TABLE `membership_users` ADD INDEX `groupID` (`groupID`)', '0.00', 'Duplicate key name \'groupID\'', 'admin', '/registro_alumnos/index.php'),
('2021-10-04 13:57:58', 'ALTER TABLE `membership_users` ADD COLUMN `allowCSVImport` TINYINT NOT NULL DEFAULT \'0\'', '0.00', 'Duplicate column name \'allowCSVImport\'', 'admin', '/registro_alumnos/index.php'),
('2021-10-04 13:57:59', 'ALTER TABLE `membership_userrecords` ADD UNIQUE INDEX `tableName_pkValue` (`tableName`, `pkValue`(150))', '0.00', 'Duplicate key name \'tableName_pkValue\'', 'admin', '/registro_alumnos/index.php'),
('2021-10-04 13:57:59', 'ALTER TABLE `membership_userrecords` ADD INDEX `pkValue` (`pkValue`)', '0.00', 'Duplicate key name \'pkValue\'', 'admin', '/registro_alumnos/index.php'),
('2021-10-04 13:57:59', 'ALTER TABLE `membership_userrecords` ADD INDEX `tableName` (`tableName`)', '0.00', 'Duplicate key name \'tableName\'', 'admin', '/registro_alumnos/index.php'),
('2021-10-04 13:57:59', 'ALTER TABLE `membership_userrecords` ADD INDEX `memberID` (`memberID`)', '0.00', 'Duplicate key name \'memberID\'', 'admin', '/registro_alumnos/index.php'),
('2021-10-04 13:57:59', 'ALTER TABLE `membership_userrecords` ADD INDEX `groupID` (`groupID`)', '0.00', 'Duplicate key name \'groupID\'', 'admin', '/registro_alumnos/index.php'),
('2021-10-04 14:09:56', 'ALTER TABLE `membership_groups` ADD UNIQUE INDEX `name` (`name`)', '0.00', 'Duplicate key name \'name\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-04 14:09:56', 'ALTER TABLE `membership_groups` ADD COLUMN `allowCSVImport` TINYINT NOT NULL DEFAULT \'0\'', '0.00', 'Duplicate column name \'allowCSVImport\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-04 14:09:56', 'ALTER TABLE `membership_users` ADD COLUMN `pass_reset_key` VARCHAR(100)', '0.00', 'Duplicate column name \'pass_reset_key\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-04 14:09:56', 'ALTER TABLE `membership_users` ADD COLUMN `pass_reset_expiry` INT UNSIGNED', '0.00', 'Duplicate column name \'pass_reset_expiry\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-04 14:09:57', 'ALTER TABLE `membership_users` ADD INDEX `groupID` (`groupID`)', '0.00', 'Duplicate key name \'groupID\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-04 14:09:57', 'ALTER TABLE `membership_users` ADD COLUMN `flags` TEXT', '0.00', 'Duplicate column name \'flags\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-04 14:09:57', 'ALTER TABLE `membership_users` ADD COLUMN `allowCSVImport` TINYINT NOT NULL DEFAULT \'0\'', '0.00', 'Duplicate column name \'allowCSVImport\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-04 14:09:57', 'ALTER TABLE `membership_userrecords` ADD UNIQUE INDEX `tableName_pkValue` (`tableName`, `pkValue`(150))', '0.00', 'Duplicate key name \'tableName_pkValue\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-04 14:09:57', 'ALTER TABLE `membership_userrecords` ADD INDEX `pkValue` (`pkValue`)', '0.00', 'Duplicate key name \'pkValue\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-04 14:09:57', 'ALTER TABLE `membership_userrecords` ADD INDEX `tableName` (`tableName`)', '0.00', 'Duplicate key name \'tableName\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-04 14:09:57', 'ALTER TABLE `membership_userrecords` ADD INDEX `memberID` (`memberID`)', '0.00', 'Duplicate key name \'memberID\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-04 14:09:57', 'ALTER TABLE `membership_userrecords` ADD INDEX `groupID` (`groupID`)', '0.00', 'Duplicate key name \'groupID\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-04 14:09:57', 'ALTER TABLE `membership_grouppermissions` ADD UNIQUE INDEX `groupID_tableName` (`groupID`, `tableName`)', '0.00', 'Duplicate key name \'groupID_tableName\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-04 14:09:57', 'ALTER TABLE `membership_userpermissions` ADD UNIQUE INDEX `memberID_tableName` (`memberID`, `tableName`)', '0.00', 'Duplicate key name \'memberID_tableName\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-04 14:09:57', 'INSERT INTO `membership_users` SET \r\n			`memberID`=\'admin\', \r\n			`passMD5`=\'$2y$10$zAA8N4touMDR973NXkWiVuZNWisv28gYv9D3NYW.npVntVzFaSydC\', \r\n			`email`=\'yosoy1969@yahoo.com\', \r\n			`signUpDate`=\'2021-10-04\', \r\n			`groupID`=\'2\', \r\n			`isBanned`=0, \r\n			`isApproved`=1, \r\n			`comments`=\'Admin member created automatically on 2021-10-04\'', '0.00', 'Duplicate entry \'admin\' for key \'PRIMARY\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-04 15:21:59', 'ALTER TABLE `materias` MODIFY `codigo_estudiante` INT UNSIGNED NULL', '1.33', NULL, 'admin', '/registro_alumnos/admin/pageRebuildFields.php?all=1'),
('2021-10-04 16:38:26', 'SELECT sum(criditos) FROM `materias` \r\nWHERE `materias`.`id`=\'1\'', '0.00', 'Unknown column \'criditos\' in \'field list\'', 'admin', '/registro_alumnos/ajax-update-calculated-fields.php?table=materias&id%5B%5D=1&id%5B%5D=2&id%5B%5D=3&id%5B%5D=4'),
('2021-10-04 16:38:27', 'SELECT sum(criditos) FROM `materias` \r\nWHERE `materias`.`id`=\'2\'', '0.00', 'Unknown column \'criditos\' in \'field list\'', 'admin', '/registro_alumnos/ajax-update-calculated-fields.php?table=materias&id%5B%5D=1&id%5B%5D=2&id%5B%5D=3&id%5B%5D=4'),
('2021-10-04 16:38:27', 'SELECT sum(criditos) FROM `materias` \r\nWHERE `materias`.`id`=\'3\'', '0.00', 'Unknown column \'criditos\' in \'field list\'', 'admin', '/registro_alumnos/ajax-update-calculated-fields.php?table=materias&id%5B%5D=1&id%5B%5D=2&id%5B%5D=3&id%5B%5D=4'),
('2021-10-04 16:38:27', 'SELECT sum(criditos) FROM `materias` \r\nWHERE `materias`.`id`=\'4\'', '0.00', 'Unknown column \'criditos\' in \'field list\'', 'admin', '/registro_alumnos/ajax-update-calculated-fields.php?table=materias&id%5B%5D=1&id%5B%5D=2&id%5B%5D=3&id%5B%5D=4'),
('2021-10-04 16:40:32', 'SELECT sum(criditos) FROM `materias` \r\nWHERE `materias`.`id`=\'1\'', '0.00', 'Unknown column \'criditos\' in \'field list\'', 'admin', '/registro_alumnos/ajax-update-calculated-fields.php?table=materias&id%5B%5D=1&id%5B%5D=2&id%5B%5D=3&id%5B%5D=4'),
('2021-10-04 16:40:32', '', '0.00', '', 'admin', '/registro_alumnos/ajax-update-calculated-fields.php?table=materias&id%5B%5D=1&id%5B%5D=2&id%5B%5D=3&id%5B%5D=4'),
('2021-10-04 16:40:32', 'SELECT sum(criditos) FROM `materias` \r\nWHERE `materias`.`id`=\'2\'', '0.00', 'Unknown column \'criditos\' in \'field list\'', 'admin', '/registro_alumnos/ajax-update-calculated-fields.php?table=materias&id%5B%5D=1&id%5B%5D=2&id%5B%5D=3&id%5B%5D=4'),
('2021-10-04 16:40:32', '', '0.00', '', 'admin', '/registro_alumnos/ajax-update-calculated-fields.php?table=materias&id%5B%5D=1&id%5B%5D=2&id%5B%5D=3&id%5B%5D=4'),
('2021-10-04 16:40:32', 'SELECT sum(criditos) FROM `materias` \r\nWHERE `materias`.`id`=\'3\'', '0.00', 'Unknown column \'criditos\' in \'field list\'', 'admin', '/registro_alumnos/ajax-update-calculated-fields.php?table=materias&id%5B%5D=1&id%5B%5D=2&id%5B%5D=3&id%5B%5D=4'),
('2021-10-04 16:40:32', '', '0.00', '', 'admin', '/registro_alumnos/ajax-update-calculated-fields.php?table=materias&id%5B%5D=1&id%5B%5D=2&id%5B%5D=3&id%5B%5D=4'),
('2021-10-04 16:40:32', 'SELECT sum(criditos) FROM `materias` \r\nWHERE `materias`.`id`=\'4\'', '0.00', 'Unknown column \'criditos\' in \'field list\'', 'admin', '/registro_alumnos/ajax-update-calculated-fields.php?table=materias&id%5B%5D=1&id%5B%5D=2&id%5B%5D=3&id%5B%5D=4'),
('2021-10-04 16:40:32', '', '0.00', '', 'admin', '/registro_alumnos/ajax-update-calculated-fields.php?table=materias&id%5B%5D=1&id%5B%5D=2&id%5B%5D=3&id%5B%5D=4'),
('2021-10-04 16:41:31', 'SELECT sum(criditos) FROM `materias` \r\nWHERE `materias`.`id`=\'1\'', '0.00', 'Unknown column \'criditos\' in \'field list\'', 'admin', '/registro_alumnos/ajax-update-calculated-fields.php?table=materias&id%5B%5D=1&id%5B%5D=2&id%5B%5D=3&id%5B%5D=4'),
('2021-10-04 16:41:32', 'SELECT sum(criditos) FROM `materias` \r\nWHERE `materias`.`id`=\'2\'', '0.00', 'Unknown column \'criditos\' in \'field list\'', 'admin', '/registro_alumnos/ajax-update-calculated-fields.php?table=materias&id%5B%5D=1&id%5B%5D=2&id%5B%5D=3&id%5B%5D=4'),
('2021-10-04 16:41:32', 'SELECT sum(criditos) FROM `materias` \r\nWHERE `materias`.`id`=\'3\'', '0.00', 'Unknown column \'criditos\' in \'field list\'', 'admin', '/registro_alumnos/ajax-update-calculated-fields.php?table=materias&id%5B%5D=1&id%5B%5D=2&id%5B%5D=3&id%5B%5D=4'),
('2021-10-04 16:41:32', 'SELECT sum(criditos) FROM `materias` \r\nWHERE `materias`.`id`=\'4\'', '0.00', 'Unknown column \'criditos\' in \'field list\'', 'admin', '/registro_alumnos/ajax-update-calculated-fields.php?table=materias&id%5B%5D=1&id%5B%5D=2&id%5B%5D=3&id%5B%5D=4'),
('2021-10-04 16:44:04', '', '0.00', '', 'admin', '/registro_alumnos/ajax-update-calculated-fields.php?table=materias&id%5B%5D=1&id%5B%5D=2&id%5B%5D=3&id%5B%5D=4'),
('2021-10-04 16:44:04', '', '0.00', '', 'admin', '/registro_alumnos/ajax-update-calculated-fields.php?table=materias&id%5B%5D=1&id%5B%5D=2&id%5B%5D=3&id%5B%5D=4'),
('2021-10-04 16:44:04', '', '0.00', '', 'admin', '/registro_alumnos/ajax-update-calculated-fields.php?table=materias&id%5B%5D=1&id%5B%5D=2&id%5B%5D=3&id%5B%5D=4'),
('2021-10-04 16:44:04', '', '0.00', '', 'admin', '/registro_alumnos/ajax-update-calculated-fields.php?table=materias&id%5B%5D=1&id%5B%5D=2&id%5B%5D=3&id%5B%5D=4'),
('2021-10-04 17:56:16', 'ALTER TABLE `membership_groups` ADD UNIQUE INDEX `name` (`name`)', '0.00', 'Duplicate key name \'name\'', 'guest', '/registro_alumnos/index.php'),
('2021-10-04 17:56:16', 'ALTER TABLE `membership_groups` ADD COLUMN `allowCSVImport` TINYINT NOT NULL DEFAULT \'0\'', '0.00', 'Duplicate column name \'allowCSVImport\'', 'guest', '/registro_alumnos/index.php'),
('2021-10-04 17:56:16', 'ALTER TABLE `membership_users` ADD COLUMN `pass_reset_key` VARCHAR(100)', '0.00', 'Duplicate column name \'pass_reset_key\'', 'guest', '/registro_alumnos/index.php'),
('2021-10-04 17:56:16', 'ALTER TABLE `membership_users` ADD COLUMN `pass_reset_expiry` INT UNSIGNED', '0.00', 'Duplicate column name \'pass_reset_expiry\'', 'guest', '/registro_alumnos/index.php'),
('2021-10-04 17:56:16', 'ALTER TABLE `membership_users` ADD INDEX `groupID` (`groupID`)', '0.00', 'Duplicate key name \'groupID\'', 'guest', '/registro_alumnos/index.php'),
('2021-10-04 17:56:16', 'ALTER TABLE `membership_users` ADD COLUMN `flags` TEXT', '0.00', 'Duplicate column name \'flags\'', 'guest', '/registro_alumnos/index.php'),
('2021-10-04 17:56:16', 'ALTER TABLE `membership_users` ADD COLUMN `allowCSVImport` TINYINT NOT NULL DEFAULT \'0\'', '0.00', 'Duplicate column name \'allowCSVImport\'', 'guest', '/registro_alumnos/index.php'),
('2021-10-04 17:56:17', 'ALTER TABLE `membership_userrecords` ADD UNIQUE INDEX `tableName_pkValue` (`tableName`, `pkValue`(150))', '0.00', 'Duplicate key name \'tableName_pkValue\'', 'guest', '/registro_alumnos/index.php'),
('2021-10-04 17:56:17', 'ALTER TABLE `membership_userrecords` ADD INDEX `pkValue` (`pkValue`)', '0.00', 'Duplicate key name \'pkValue\'', 'guest', '/registro_alumnos/index.php'),
('2021-10-04 17:56:17', 'ALTER TABLE `membership_userrecords` ADD INDEX `tableName` (`tableName`)', '0.00', 'Duplicate key name \'tableName\'', 'guest', '/registro_alumnos/index.php'),
('2021-10-04 17:56:17', 'ALTER TABLE `membership_userrecords` ADD INDEX `memberID` (`memberID`)', '0.00', 'Duplicate key name \'memberID\'', 'guest', '/registro_alumnos/index.php'),
('2021-10-04 17:56:17', 'ALTER TABLE `membership_userrecords` ADD INDEX `groupID` (`groupID`)', '0.00', 'Duplicate key name \'groupID\'', 'guest', '/registro_alumnos/index.php'),
('2021-10-04 17:56:17', 'ALTER TABLE `membership_grouppermissions` ADD UNIQUE INDEX `groupID_tableName` (`groupID`, `tableName`)', '0.00', 'Duplicate key name \'groupID_tableName\'', 'guest', '/registro_alumnos/index.php'),
('2021-10-04 17:56:17', 'ALTER TABLE `membership_userpermissions` ADD UNIQUE INDEX `memberID_tableName` (`memberID`, `tableName`)', '0.00', 'Duplicate key name \'memberID_tableName\'', 'guest', '/registro_alumnos/index.php'),
('2021-10-04 17:56:17', 'INSERT INTO `membership_users` SET \r\n			`memberID`=\'admin\', \r\n			`passMD5`=\'$2y$10$zAA8N4touMDR973NXkWiVuZNWisv28gYv9D3NYW.npVntVzFaSydC\', \r\n			`email`=\'yosoy1969@yahoo.com\', \r\n			`signUpDate`=\'2021-10-04\', \r\n			`groupID`=\'2\', \r\n			`isBanned`=0, \r\n			`isApproved`=1, \r\n			`comments`=\'Admin member created automatically on 2021-10-04\'', '0.00', 'Duplicate entry \'admin\' for key \'PRIMARY\'', 'guest', '/registro_alumnos/index.php'),
('2021-10-04 17:56:37', 'SELECT `materias`.`id` AS \'id\', IF(    CHAR_LENGTH(`inscrippciones1`.`id`), CONCAT_WS(\'\',   `inscrippciones1`.`id`), \'\') /* Cod_Inscripcion */ AS \'Id_inscripcion\', IF(    CHAR_LENGTH(`estudiantes1`.`cod_estudiante`), CONCAT_WS(\'\',   `estudiantes1`.`cod_estudiante`), \'\') /* Codigo estudiante */ AS \'codigo_estudiante\', `materias`.`materia` AS \'materia\', `materias`.`creditos` AS \'creditos\', `materias`.`calificacion` AS \'calificacion\', `materias`.`promedio` AS \'promedio\', COALESCE(`materias`.`id`) AS \'materias.id\' FROM `materias` LEFT JOIN `inscrippciones` as inscrippciones1 ON `inscrippciones1`.`id`=`materias`.`Id_inscripcion` LEFT JOIN `estudiantes` as estudiantes1 ON `estudiantes1`.`id`=`inscrippciones1`.`cod_estudiante`  WHERE 1=1  LIMIT 0, 2000', '0.00', 'Unknown column \'materias.promedio\' in \'field list\'', 'admin', '/registro_alumnos/materias_view.php'),
('2021-10-14 16:39:15', 'ALTER TABLE `membership_groups` ADD UNIQUE INDEX `name` (`name`)', '0.00', 'Duplicate key name \'name\'', 'guest', '/registro_alumnos/'),
('2021-10-14 16:39:15', 'ALTER TABLE `membership_groups` ADD COLUMN `allowCSVImport` TINYINT NOT NULL DEFAULT \'0\'', '0.00', 'Duplicate column name \'allowCSVImport\'', 'guest', '/registro_alumnos/'),
('2021-10-14 16:39:15', 'ALTER TABLE `membership_users` ADD COLUMN `pass_reset_key` VARCHAR(100)', '0.00', 'Duplicate column name \'pass_reset_key\'', 'guest', '/registro_alumnos/'),
('2021-10-14 16:39:15', 'ALTER TABLE `membership_users` ADD COLUMN `pass_reset_expiry` INT UNSIGNED', '0.00', 'Duplicate column name \'pass_reset_expiry\'', 'guest', '/registro_alumnos/'),
('2021-10-14 16:39:15', 'ALTER TABLE `membership_users` ADD INDEX `groupID` (`groupID`)', '0.00', 'Duplicate key name \'groupID\'', 'guest', '/registro_alumnos/'),
('2021-10-14 16:39:15', 'ALTER TABLE `membership_users` ADD COLUMN `flags` TEXT', '0.00', 'Duplicate column name \'flags\'', 'guest', '/registro_alumnos/'),
('2021-10-14 16:39:15', 'ALTER TABLE `membership_users` ADD COLUMN `allowCSVImport` TINYINT NOT NULL DEFAULT \'0\'', '0.00', 'Duplicate column name \'allowCSVImport\'', 'guest', '/registro_alumnos/'),
('2021-10-14 16:39:15', 'ALTER TABLE `membership_userrecords` ADD UNIQUE INDEX `tableName_pkValue` (`tableName`, `pkValue`(150))', '0.00', 'Duplicate key name \'tableName_pkValue\'', 'guest', '/registro_alumnos/'),
('2021-10-14 16:39:15', 'ALTER TABLE `membership_userrecords` ADD INDEX `pkValue` (`pkValue`)', '0.00', 'Duplicate key name \'pkValue\'', 'guest', '/registro_alumnos/'),
('2021-10-14 16:39:16', 'ALTER TABLE `membership_userrecords` ADD INDEX `tableName` (`tableName`)', '0.00', 'Duplicate key name \'tableName\'', 'guest', '/registro_alumnos/'),
('2021-10-14 16:39:16', 'ALTER TABLE `membership_userrecords` ADD INDEX `memberID` (`memberID`)', '0.00', 'Duplicate key name \'memberID\'', 'guest', '/registro_alumnos/'),
('2021-10-14 16:39:16', 'ALTER TABLE `membership_userrecords` ADD INDEX `groupID` (`groupID`)', '0.00', 'Duplicate key name \'groupID\'', 'guest', '/registro_alumnos/'),
('2021-10-14 16:39:16', 'ALTER TABLE `membership_grouppermissions` ADD UNIQUE INDEX `groupID_tableName` (`groupID`, `tableName`)', '0.00', 'Duplicate key name \'groupID_tableName\'', 'guest', '/registro_alumnos/'),
('2021-10-14 16:39:16', 'ALTER TABLE `membership_userpermissions` ADD UNIQUE INDEX `memberID_tableName` (`memberID`, `tableName`)', '0.00', 'Duplicate key name \'memberID_tableName\'', 'guest', '/registro_alumnos/'),
('2021-10-14 16:39:16', 'INSERT INTO `membership_users` SET \r\n			`memberID`=\'admin\', \r\n			`passMD5`=\'$2y$10$zAA8N4touMDR973NXkWiVuZNWisv28gYv9D3NYW.npVntVzFaSydC\', \r\n			`email`=\'yosoy1969@yahoo.com\', \r\n			`signUpDate`=\'2021-10-14\', \r\n			`groupID`=\'2\', \r\n			`isBanned`=0, \r\n			`isApproved`=1, \r\n			`comments`=\'Admin member created automatically on 2021-10-14\'', '0.00', 'Duplicate entry \'admin\' for key \'PRIMARY\'', 'guest', '/registro_alumnos/'),
('2021-10-14 16:42:07', 'ALTER TABLE `membership_groups` ADD UNIQUE INDEX `name` (`name`)', '0.00', 'Duplicate key name \'name\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-14 16:42:07', 'ALTER TABLE `membership_groups` ADD COLUMN `allowCSVImport` TINYINT NOT NULL DEFAULT \'0\'', '0.00', 'Duplicate column name \'allowCSVImport\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-14 16:42:07', 'ALTER TABLE `membership_users` ADD COLUMN `pass_reset_key` VARCHAR(100)', '0.00', 'Duplicate column name \'pass_reset_key\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-14 16:42:07', 'ALTER TABLE `membership_users` ADD COLUMN `pass_reset_expiry` INT UNSIGNED', '0.00', 'Duplicate column name \'pass_reset_expiry\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-14 16:42:08', 'ALTER TABLE `membership_users` ADD INDEX `groupID` (`groupID`)', '0.00', 'Duplicate key name \'groupID\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-14 16:42:08', 'ALTER TABLE `membership_users` ADD COLUMN `flags` TEXT', '0.00', 'Duplicate column name \'flags\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-14 16:42:08', 'ALTER TABLE `membership_users` ADD COLUMN `allowCSVImport` TINYINT NOT NULL DEFAULT \'0\'', '0.00', 'Duplicate column name \'allowCSVImport\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-14 16:42:08', 'ALTER TABLE `membership_userrecords` ADD UNIQUE INDEX `tableName_pkValue` (`tableName`, `pkValue`(150))', '0.00', 'Duplicate key name \'tableName_pkValue\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-14 16:42:08', 'ALTER TABLE `membership_userrecords` ADD INDEX `pkValue` (`pkValue`)', '0.00', 'Duplicate key name \'pkValue\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-14 16:42:08', 'ALTER TABLE `membership_userrecords` ADD INDEX `tableName` (`tableName`)', '0.00', 'Duplicate key name \'tableName\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-14 16:42:08', 'ALTER TABLE `membership_userrecords` ADD INDEX `memberID` (`memberID`)', '0.00', 'Duplicate key name \'memberID\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-14 16:42:08', 'ALTER TABLE `membership_userrecords` ADD INDEX `groupID` (`groupID`)', '0.00', 'Duplicate key name \'groupID\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-14 16:42:08', 'ALTER TABLE `membership_grouppermissions` ADD UNIQUE INDEX `groupID_tableName` (`groupID`, `tableName`)', '0.00', 'Duplicate key name \'groupID_tableName\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-14 16:42:08', 'ALTER TABLE `membership_userpermissions` ADD UNIQUE INDEX `memberID_tableName` (`memberID`, `tableName`)', '0.00', 'Duplicate key name \'memberID_tableName\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-14 16:42:08', 'INSERT INTO `membership_users` SET \r\n			`memberID`=\'admin\', \r\n			`passMD5`=\'$2y$10$zAA8N4touMDR973NXkWiVuZNWisv28gYv9D3NYW.npVntVzFaSydC\', \r\n			`email`=\'yosoy1969@yahoo.com\', \r\n			`signUpDate`=\'2021-10-14\', \r\n			`groupID`=\'2\', \r\n			`isBanned`=0, \r\n			`isApproved`=1, \r\n			`comments`=\'Admin member created automatically on 2021-10-14\'', '0.00', 'Duplicate entry \'admin\' for key \'PRIMARY\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-14 16:44:25', 'ALTER TABLE `membership_groups` ADD UNIQUE INDEX `name` (`name`)', '0.00', 'Duplicate key name \'name\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-14 16:44:25', 'ALTER TABLE `membership_groups` ADD COLUMN `allowCSVImport` TINYINT NOT NULL DEFAULT \'0\'', '0.00', 'Duplicate column name \'allowCSVImport\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-14 16:44:25', 'ALTER TABLE `membership_users` ADD COLUMN `pass_reset_key` VARCHAR(100)', '0.00', 'Duplicate column name \'pass_reset_key\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-14 16:44:25', 'ALTER TABLE `membership_users` ADD COLUMN `pass_reset_expiry` INT UNSIGNED', '0.00', 'Duplicate column name \'pass_reset_expiry\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-14 16:44:26', 'ALTER TABLE `membership_users` ADD INDEX `groupID` (`groupID`)', '0.00', 'Duplicate key name \'groupID\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-14 16:44:26', 'ALTER TABLE `membership_users` ADD COLUMN `flags` TEXT', '0.00', 'Duplicate column name \'flags\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-14 16:44:26', 'ALTER TABLE `membership_users` ADD COLUMN `allowCSVImport` TINYINT NOT NULL DEFAULT \'0\'', '0.00', 'Duplicate column name \'allowCSVImport\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-14 16:44:26', 'ALTER TABLE `membership_userrecords` ADD UNIQUE INDEX `tableName_pkValue` (`tableName`, `pkValue`(150))', '0.00', 'Duplicate key name \'tableName_pkValue\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-14 16:44:26', 'ALTER TABLE `membership_userrecords` ADD INDEX `pkValue` (`pkValue`)', '0.00', 'Duplicate key name \'pkValue\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-14 16:44:26', 'ALTER TABLE `membership_userrecords` ADD INDEX `tableName` (`tableName`)', '0.00', 'Duplicate key name \'tableName\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-14 16:44:26', 'ALTER TABLE `membership_userrecords` ADD INDEX `memberID` (`memberID`)', '0.00', 'Duplicate key name \'memberID\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-14 16:44:26', 'ALTER TABLE `membership_userrecords` ADD INDEX `groupID` (`groupID`)', '0.00', 'Duplicate key name \'groupID\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-14 16:44:26', 'ALTER TABLE `membership_grouppermissions` ADD UNIQUE INDEX `groupID_tableName` (`groupID`, `tableName`)', '0.00', 'Duplicate key name \'groupID_tableName\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-14 16:44:26', 'ALTER TABLE `membership_userpermissions` ADD UNIQUE INDEX `memberID_tableName` (`memberID`, `tableName`)', '0.00', 'Duplicate key name \'memberID_tableName\'', 'guest', '/registro_alumnos/index.php?signIn=1'),
('2021-10-14 16:44:26', 'INSERT INTO `membership_users` SET \r\n			`memberID`=\'admin\', \r\n			`passMD5`=\'$2y$10$zAA8N4touMDR973NXkWiVuZNWisv28gYv9D3NYW.npVntVzFaSydC\', \r\n			`email`=\'yosoy1969@yahoo.com\', \r\n			`signUpDate`=\'2021-10-14\', \r\n			`groupID`=\'2\', \r\n			`isBanned`=0, \r\n			`isApproved`=1, \r\n			`comments`=\'Admin member created automatically on 2021-10-14\'', '0.00', 'Duplicate entry \'admin\' for key \'PRIMARY\'', 'guest', '/registro_alumnos/index.php?signIn=1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `id` int(10) UNSIGNED NOT NULL,
  `cod_clase` varchar(40) DEFAULT NULL,
  `cod_facultad` int(10) UNSIGNED DEFAULT NULL,
  `horario` varchar(40) DEFAULT NULL,
  `salon` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clases`
--

INSERT INTO `clases` (`id`, `cod_clase`, `cod_facultad`, `horario`, `salon`) VALUES
(1, 'C1001', 1, '8:00 am - 12 M.', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `director` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id`, `nombre`, `director`) VALUES
(1, 'Departamento de Matemáticas', 1),
(2, 'Departamento de Ciencias', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directores`
--

CREATE TABLE `directores` (
  `id` int(10) UNSIGNED NOT NULL,
  `foto` varchar(40) DEFAULT NULL,
  `Nombres` varchar(150) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `directores`
--

INSERT INTO `directores` (`id`, `foto`, `Nombres`, `telefono`, `correo`) VALUES
(1, 'dfdab830afca66a94.jpg', 'Ing. Octavio Santana', '829-658-7841', 'osantana@hotmail.com'),
(2, 'db4bd8af422791d2f.jpg', 'Maestro Alberto Santana', '829-698-7841', 'asantana@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `id` int(10) UNSIGNED NOT NULL,
  `foto` varchar(40) DEFAULT NULL,
  `Nombres` varchar(150) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`id`, `foto`, `Nombres`, `direccion`, `telefono`, `correo`) VALUES
(1, '1b63344fadf4d88d8.jpg', 'Altagracia Agramonte Perez', 'Calle Enriquez y Carvajal no. 85. Los Chicos', '809-698-9687', 'aperez@Yahoo.es'),
(2, '3e60c6f0ef786ca7b.jpg', 'Rogelio Méndez', 'Av. Santaigo no. 56. Los Frailes', '829-658-7851', 'rmendez@Hotmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(10) UNSIGNED NOT NULL,
  `foto` varchar(40) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `nombres` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `correo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `empleados` (`id`, `foto`, `apellidos`, `nombres`, `telefono`, `direccion`, `correo`) VALUES
(1, 'f3a6742163d2f1312.jpg', 'Rojas Perez', 'Marisela', '809-698-8741', 'Av. Lopez de Vega no. 21. Piantini', 'rmarisela@gmail.com'),
(2, '0f9abb6fa6f46f6c3.jpg', 'Zapata Perez', 'Luis Fernando', '809-698-8741', 'Calle Enriquez y Carvajal no. 85. Los Minas', 'zluis@gmail.com'),
(3, '8995e10751a664a80.jpg', 'Rodriguez Corona', 'Angelina', '829-658-7841', 'Calle Enriquez y Carvajal no. 85. Los Minas', 'rangelina@Gmail.com');



CREATE TABLE `estudiantes` (
  `id` int(10) UNSIGNED NOT NULL,
  `foto` varchar(40) DEFAULT NULL,
  `cod_estudiante` varchar(20) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `nombres` varchar(60) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `foto`, `cod_estudiante`, `apellidos`, `nombres`, `direccion`, `telefono`, `correo`) VALUES
(1, 'e5eacaf1a7069bf42.jpg', 'E1001', 'Zapata', 'Gregorio Antonio', 'Ortega y Gasset no. 547. Los Guandules', '829-968-7421', 'gzapata@gmail.com');


CREATE TABLE `facultades` (
  `id` int(10) UNSIGNED NOT NULL,
  `universidad` int(10) UNSIGNED DEFAULT NULL,
  `cod_Facultad` varchar(20) DEFAULT NULL,
  `departamento` int(10) UNSIGNED DEFAULT NULL,
  `Nombre_docente` int(10) UNSIGNED DEFAULT NULL,
  `posicion` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `facultades` (`id`, `universidad`, `cod_Facultad`, `departamento`, `Nombre_docente`, `posicion`) VALUES
(1, 1, 'F1001', 1, 1, 1);

-- --------------------------------------------------------


CREATE TABLE `inscrippciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `cod_estudiante` int(10) UNSIGNED DEFAULT NULL,
  `cod_clase` int(10) UNSIGNED DEFAULT NULL,
  `empleado` int(10) UNSIGNED DEFAULT NULL,
  `cod_inscripcion` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `inscrippciones` (`id`, `cod_estudiante`, `cod_clase`, `empleado`, `cod_inscripcion`) VALUES
(1, 1, 1, 3, 'I-1001');


CREATE TABLE `materias` (
  `id` int(10) UNSIGNED NOT NULL,
  `materia` char(40) DEFAULT NULL,
  `calificacion` decimal(10,2) DEFAULT NULL,
  `cod_materia` varchar(40) DEFAULT NULL,
  `Id_inscripcion` int(10) UNSIGNED DEFAULT NULL,
  `codigo_estudiante` int(10) UNSIGNED DEFAULT NULL,
  `creditos` int(11) DEFAULT NULL,
  `field8` varchar(40) DEFAULT NULL,
  `field9` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `materias` (`id`, `materia`, `calificacion`, `cod_materia`, `Id_inscripcion`, `codigo_estudiante`, `creditos`, `field8`, `field9`) VALUES
(1, 'Matematica I', '89.00', NULL, 1, 1, 3, NULL, NULL),
(2, 'Biología', '92.00', NULL, 1, 1, 4, NULL, NULL),
(3, 'Química I', '90.00', NULL, 1, 1, 4, NULL, NULL),
(4, 'Algebra', '87.00', NULL, 1, 1, 3, NULL, NULL);


CREATE TABLE `membership_grouppermissions` (
  `permissionID` int(10) UNSIGNED NOT NULL,
  `groupID` int(10) UNSIGNED DEFAULT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `allowInsert` tinyint(4) NOT NULL DEFAULT 0,
  `allowView` tinyint(4) NOT NULL DEFAULT 0,
  `allowEdit` tinyint(4) NOT NULL DEFAULT 0,
  `allowDelete` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `membership_grouppermissions` (`permissionID`, `groupID`, `tableName`, `allowInsert`, `allowView`, `allowEdit`, `allowDelete`) VALUES
(1, 2, 'estudiantes', 1, 3, 3, 3),
(2, 2, 'facultades', 1, 3, 3, 3),
(3, 2, 'clases', 1, 3, 3, 3),
(4, 2, 'inscrippciones', 1, 3, 3, 3),
(5, 2, 'empleados', 1, 3, 3, 3),
(6, 2, 'universidad', 1, 3, 3, 3),
(7, 2, 'materias', 1, 3, 3, 3),
(8, 2, 'directores', 1, 3, 3, 3),
(9, 2, 'posiciones', 1, 3, 3, 3),
(10, 2, 'salones', 1, 3, 3, 3),
(11, 2, 'departamentos', 1, 3, 3, 3),
(12, 2, 'docentes', 1, 3, 3, 3);




CREATE TABLE `membership_groups` (
  `groupID` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `allowSignup` tinyint(4) DEFAULT NULL,
  `needsApproval` tinyint(4) DEFAULT NULL,
  `allowCSVImport` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `membership_groups` (`groupID`, `name`, `description`, `allowSignup`, `needsApproval`, `allowCSVImport`) VALUES
(1, 'anonymous', 'Anonymous group created automatically on 2021-10-04', 0, 0, 0),
(2, 'Admins', 'Admin group created automatically on 2021-10-04', 0, 1, 0);



CREATE TABLE `membership_userpermissions` (
  `permissionID` int(10) UNSIGNED NOT NULL,
  `memberID` varchar(100) NOT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `allowInsert` tinyint(4) NOT NULL DEFAULT 0,
  `allowView` tinyint(4) NOT NULL DEFAULT 0,
  `allowEdit` tinyint(4) NOT NULL DEFAULT 0,
  `allowDelete` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------



CREATE TABLE `membership_userrecords` (
  `recID` bigint(20) UNSIGNED NOT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `pkValue` varchar(255) DEFAULT NULL,
  `memberID` varchar(100) DEFAULT NULL,
  `dateAdded` bigint(20) UNSIGNED DEFAULT NULL,
  `dateUpdated` bigint(20) UNSIGNED DEFAULT NULL,
  `groupID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `membership_userrecords` (`recID`, `tableName`, `pkValue`, `memberID`, `dateAdded`, `dateUpdated`, `groupID`) VALUES
(1, 'materias', '1', 'admin', 1633356019, 1633361569, 2),
(2, 'estudiantes', '1', 'admin', 1633356082, 1633356112, 2),
(3, 'universidad', '1', 'admin', 1633356261, 1633356264, 2),
(4, 'directores', '1', 'admin', 1633356329, 1633356331, 2),
(5, 'departamentos', '1', 'admin', 1633356334, 1633356334, 2),
(6, 'docentes', '1', 'admin', 1633356407, 1633356407, 2),
(7, 'posiciones', '1', 'admin', 1633356425, 1633357573, 2),
(8, 'facultades', '1', 'admin', 1633356429, 1633357458, 2),
(9, 'empleados', '1', 'admin', 1633356773, 1633357230, 2),
(10, 'empleados', '2', 'admin', 1633357283, 1633357283, 2),
(11, 'empleados', '3', 'admin', 1633357339, 1633357339, 2),
(12, 'posiciones', '2', 'admin', 1633357579, 1633357579, 2),
(13, 'posiciones', '3', 'admin', 1633357602, 1633357602, 2),
(14, 'posiciones', '4', 'admin', 1633357613, 1633357613, 2),
(15, 'posiciones', '5', 'admin', 1633357626, 1633357626, 2),
(16, 'posiciones', '6', 'admin', 1633357646, 1633357646, 2),
(17, 'posiciones', '7', 'admin', 1633357658, 1633357735, 2),
(18, 'salones', '1', 'admin', 1633358961, 1633358961, 2),
(19, 'clases', '1', 'admin', 1633358989, 1633358989, 2),
(20, 'docentes', '2', 'admin', 1633359056, 1633359056, 2),
(21, 'directores', '2', 'admin', 1633359159, 1633359159, 2),
(22, 'departamentos', '2', 'admin', 1633359167, 1633359167, 2),
(23, 'inscrippciones', '1', 'admin', 1633359215, 1633371695, 2),
(24, 'materias', '2', 'admin', 1633360181, 1633361579, 2),
(25, 'materias', '3', 'admin', 1633364405, 1633364405, 2),
(26, 'materias', '4', 'admin', 1633364432, 1633364436, 2);


CREATE TABLE `membership_users` (
  `memberID` varchar(100) NOT NULL,
  `passMD5` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `signupDate` date DEFAULT NULL,
  `groupID` int(10) UNSIGNED DEFAULT NULL,
  `isBanned` tinyint(4) DEFAULT NULL,
  `isApproved` tinyint(4) DEFAULT NULL,
  `custom1` text DEFAULT NULL,
  `custom2` text DEFAULT NULL,
  `custom3` text DEFAULT NULL,
  `custom4` text DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `pass_reset_key` varchar(100) DEFAULT NULL,
  `pass_reset_expiry` int(10) UNSIGNED DEFAULT NULL,
  `allowCSVImport` tinyint(4) NOT NULL DEFAULT 0,
  `flags` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `membership_users`
--

INSERT INTO `membership_users` (`memberID`, `passMD5`, `email`, `signupDate`, `groupID`, `isBanned`, `isApproved`, `custom1`, `custom2`, `custom3`, `custom4`, `comments`, `pass_reset_key`, `pass_reset_expiry`, `allowCSVImport`, `flags`) VALUES
('admin', '$2y$10$zAA8N4touMDR973NXkWiVuZNWisv28gYv9D3NYW.npVntVzFaSydC', 'yosoy1969@yahoo.com', '2021-10-04', 2, 0, 1, NULL, NULL, NULL, NULL, 'Admin member created automatically on 2021-10-04', NULL, NULL, 0, NULL),
('guest', NULL, NULL, '2021-10-04', 1, 0, 1, NULL, NULL, NULL, NULL, 'Anonymous member created automatically on 2021-10-04', NULL, NULL, 0, NULL);



CREATE TABLE `membership_usersessions` (
  `memberID` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  `agent` varchar(100) NOT NULL,
  `expiry_ts` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `posiciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `posiciones` (`id`, `descripcion`) VALUES
(1, 'Maestra'),
(2, 'Maestro'),
(3, 'Instructor'),
(4, 'Asistente'),
(5, 'Asociado'),
(6, 'Asistente e profesor'),
(7, 'Monitor');



CREATE TABLE `salones` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `salones` (`id`, `nombre`) VALUES
(1, 'Salón A');



CREATE TABLE `universidad` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(40) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `telefono` varchar(40) DEFAULT NULL,
  `correo` varchar(40) DEFAULT NULL,
  `web` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `universidad` (`id`, `logo`, `nombre`, `direccion`, `telefono`, `correo`, `web`) VALUES
(1, '7e2d56b4a1134a378.jpg', 'Universidad del Este (UEM) de México', 'Calle Rodrigo no. 574. Chiapas', '829-968-7421', 'uem@gmail,com', 'www.uem.edu');


ALTER TABLE `clases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cod_facultad` (`cod_facultad`),
  ADD KEY `salon` (`salon`);


ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `director` (`director`);


ALTER TABLE `directores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `facultades`
--
ALTER TABLE `facultades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `universidad` (`universidad`),
  ADD KEY `departamento` (`departamento`),
  ADD KEY `Nombre_docente` (`Nombre_docente`),
  ADD KEY `posicion` (`posicion`);

--
-- Indices de la tabla `inscrippciones`
--
ALTER TABLE `inscrippciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cod_estudiante` (`cod_estudiante`),
  ADD KEY `cod_clase` (`cod_clase`),
  ADD KEY `empleado` (`empleado`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nombre` (`materia`),
  ADD KEY `cod_materia` (`cod_materia`),
  ADD KEY `Id_incripcion` (`Id_inscripcion`);

--
-- Indices de la tabla `membership_grouppermissions`
--
ALTER TABLE `membership_grouppermissions`
  ADD PRIMARY KEY (`permissionID`),
  ADD UNIQUE KEY `groupID_tableName` (`groupID`,`tableName`);

--
-- Indices de la tabla `membership_groups`
--
ALTER TABLE `membership_groups`
  ADD PRIMARY KEY (`groupID`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `membership_userpermissions`
--
ALTER TABLE `membership_userpermissions`
  ADD PRIMARY KEY (`permissionID`),
  ADD UNIQUE KEY `memberID_tableName` (`memberID`,`tableName`);

--
-- Indices de la tabla `membership_userrecords`
--
ALTER TABLE `membership_userrecords`
  ADD PRIMARY KEY (`recID`),
  ADD UNIQUE KEY `tableName_pkValue` (`tableName`,`pkValue`(150)),
  ADD KEY `pkValue` (`pkValue`),
  ADD KEY `tableName` (`tableName`),
  ADD KEY `memberID` (`memberID`),
  ADD KEY `groupID` (`groupID`);

--
-- Indices de la tabla `membership_users`
--
ALTER TABLE `membership_users`
  ADD PRIMARY KEY (`memberID`),
  ADD KEY `groupID` (`groupID`);

--
-- Indices de la tabla `membership_usersessions`
--
ALTER TABLE `membership_usersessions`
  ADD UNIQUE KEY `memberID_token_agent` (`memberID`,`token`,`agent`),
  ADD KEY `memberID` (`memberID`),
  ADD KEY `expiry_ts` (`expiry_ts`);

--
-- Indices de la tabla `posiciones`
--
ALTER TABLE `posiciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `salones`
--
ALTER TABLE `salones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `universidad`
--
ALTER TABLE `universidad`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `directores`
--
ALTER TABLE `directores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `facultades`
--
ALTER TABLE `facultades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `inscrippciones`
--
ALTER TABLE `inscrippciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `membership_grouppermissions`
--
ALTER TABLE `membership_grouppermissions`
  MODIFY `permissionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `membership_groups`
--
ALTER TABLE `membership_groups`
  MODIFY `groupID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `membership_userpermissions`
--
ALTER TABLE `membership_userpermissions`
  MODIFY `permissionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `membership_userrecords`
--
ALTER TABLE `membership_userrecords`
  MODIFY `recID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `posiciones`
--
ALTER TABLE `posiciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `salones`
--
ALTER TABLE `salones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `universidad`
--
ALTER TABLE `universidad`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
