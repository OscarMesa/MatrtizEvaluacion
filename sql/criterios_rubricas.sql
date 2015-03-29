/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : sistema_competencias

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-03-29 14:19:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `criterios_rubricas`
-- ----------------------------
DROP TABLE IF EXISTS `criterios_rubricas`;
CREATE TABLE `criterios_rubricas` (
`id_criterio_evaluacion`  int(11) NULL DEFAULT NULL ,
`id_rubrica`  int(11) NULL DEFAULT NULL ,
`id_criterio_rubrica`  int(11) NOT NULL AUTO_INCREMENT ,
PRIMARY KEY (`id_criterio_rubrica`),
FOREIGN KEY (`id_criterio_evaluacion`) REFERENCES `criterio_evaluacion` (`id_criterio_evaluacion`) ON DELETE RESTRICT ON UPDATE CASCADE,
FOREIGN KEY (`id_rubrica`) REFERENCES `rubricas` (`id_rubrica`) ON DELETE RESTRICT ON UPDATE CASCADE,
UNIQUE INDEX `indice_criterio_rubrica` (`id_criterio_evaluacion`, `id_rubrica`) USING BTREE ,
INDEX `id_criterio` (`id_criterio_evaluacion`) USING BTREE ,
INDEX `id_rubrica_criterio` (`id_rubrica`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of criterios_rubricas
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Auto increment value for `criterios_rubricas`
-- ----------------------------
ALTER TABLE `criterios_rubricas` AUTO_INCREMENT=1;
