/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : sistema_competencias

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2015-01-21 22:17:09
*/

SET FOREIGN_KEY_CHECKS=0;
   
-- ----------------------------
-- Table structure for `criterio_evaluacion`
-- ----------------------------
DROP TABLE IF EXISTS `criterio_evaluacion`;  
CREATE TABLE `criterio_evaluacion` ( 
`id_criterio_evaluacion`  int(11) NOT NULL AUTO_INCREMENT ,
`descripcion`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id_criterio_evaluacion`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=8

;

-- ----------------------------
-- Records of criterio_evaluacion
-- ----------------------------
BEGIN;
INSERT INTO `criterio_evaluacion` VALUES ('1', 'Manejo de expresiones lógico matemáticas'), ('2', 'Identifica los datos y las variables del caso de estudio o problema a resolver'), ('3', 'Reconoce los conceptos de contador y acumulador de memoria.'), ('4', 'Manejo de las estructuras condicionales (simples, compuestas y anidadas)'), ('5', 'Reconoce la definición de Subprogramas (procedimientos y funciones.)'), ('6', 'Identifica el paso de parámetros por valor y por referencia'), ('7', 'Identifica los ciclos cuantitativos y cualitativos');
COMMIT;

-- ----------------------------
-- Table structure for `elementos`
-- ----------------------------
DROP TABLE IF EXISTS `elementos`;
CREATE TABLE `elementos` (
`id_elemento`  int(11) NOT NULL AUTO_INCREMENT ,
`codigo_elemento`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`descripcion`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id_elemento`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=5

;

-- ----------------------------
-- Records of elementos
-- ----------------------------
BEGIN;
INSERT INTO `elementos` VALUES ('1', 'AWQ1', 'Construye los algoritmos para el caso de estudio o problema de acuerdo con la metodología seleccionada y las especificaciones dadas por el cliente. '), ('2', '4EWR', 'Construye los algoritmos para el caso de estudio o problema de acuerdo con la metodología seleccionada y las especificaciones dadas por el cliente. '), ('3', 'RTE2', 'Construye los algoritmos para el caso de estudio o problema de acuerdo con la metodología seleccionada y las especificaciones dadas por el cliente. '), ('4', 'K1nU3', 'Construye los algoritmos para el caso de estudio o problema de acuerdo con la metodología seleccionada y las especificaciones dadas por el cliente. ');
COMMIT;

-- ----------------------------
-- Table structure for `encabezado_evaluacion`
-- ----------------------------
DROP TABLE IF EXISTS `encabezado_evaluacion`;
CREATE TABLE `encabezado_evaluacion` (
`id_encabezado`  int(5) NOT NULL AUTO_INCREMENT ,
`id_modulo`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`id_norma`  int(5) NULL DEFAULT NULL ,
`id_elemento`  int(5) NULL DEFAULT NULL ,
`id_resultado`  int(5) NULL DEFAULT NULL ,
`id_evidencia`  int(5) NULL DEFAULT NULL ,
`descripcion`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id_encabezado`),
FOREIGN KEY (`id_elemento`) REFERENCES `elementos` (`id_elemento`) ON DELETE RESTRICT ON UPDATE CASCADE,
FOREIGN KEY (`id_evidencia`) REFERENCES `evidencia` (`id_evidencia`) ON DELETE RESTRICT ON UPDATE CASCADE,
FOREIGN KEY (`id_modulo`) REFERENCES `modulos` (`Codigo`) ON DELETE RESTRICT ON UPDATE CASCADE,
FOREIGN KEY (`id_norma`) REFERENCES `norma` (`id_norma`) ON DELETE RESTRICT ON UPDATE CASCADE,
FOREIGN KEY (`id_resultado`) REFERENCES `resultado_aprendizaje` (`id_resultado`) ON DELETE RESTRICT ON UPDATE CASCADE,
INDEX `fk_modulo` (`id_modulo`) USING BTREE ,
INDEX `fk_norma` (`id_norma`) USING BTREE ,
INDEX `fk_elemento` (`id_elemento`) USING BTREE ,
INDEX `fk_resultado` (`id_resultado`) USING BTREE ,
INDEX `fk_evidencia` (`id_evidencia`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=11

;

-- ----------------------------
-- Records of encabezado_evaluacion
-- ----------------------------
BEGIN;
INSERT INTO `encabezado_evaluacion` VALUES ('1', 'ING00812', '3', '1', '1', '1', 'preuba'), ('2', 'ING00812', '2', '1', '1', '1', 'oscar esta es una prueba'), ('3', 'ING00812', '3', '1', '1', '1', 'esta es otra preuab'), ('4', 'ING00812', '2', '2', '1', '3', 'otra prueba'), ('5', 'ING00812', '3', '1', '1', '1', 'otheer fukin prueba'), ('6', 'ING00812', '2', '3', '1', '3', 'otra '), ('7', 'ING00812', '2', '2', '1', '3', 'con otra descripcion y full hdf'), ('8', 'ING00812', '3', '1', '1', '3', 'hola'), ('9', 'ING00812', '2', '3', '1', '3', 'hi'), ('10', 'ING00812', '3', '1', '1', '3', 'descripción prueba evalucion');
COMMIT;

-- ----------------------------
-- Table structure for `estado`
-- ----------------------------
DROP TABLE IF EXISTS `estado`;
CREATE TABLE `estado` (
`codigo`  int(1) NOT NULL DEFAULT 0 ,
`descripcion`  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`codigo`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of estado
-- ----------------------------
BEGIN;
INSERT INTO `estado` VALUES ('0', 'Inactivo'), ('1', 'Activo');
COMMIT;

-- ----------------------------
-- Table structure for `estudiantes`
-- ----------------------------
DROP TABLE IF EXISTS `estudiantes`;
CREATE TABLE `estudiantes` (
`Documento`  varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`TipoDoc`  varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`Nombre1`  varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`Nombre2`  varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Apellido1`  varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`Apellido2`  varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Direccion`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`Municipio`  varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`email`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`Telefono`  varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`Fecha_Nac`  date NULL DEFAULT NULL ,
PRIMARY KEY (`Documento`, `TipoDoc`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of estudiantes
-- ----------------------------
BEGIN;
INSERT INTO `estudiantes` VALUES ('1000002', 'S.D.', 'Andrés', 'Felipe', 'Cardona', '', '', '0507', '', '', '0000-00-00'), ('1000003', 'S.D.', 'Leydy', 'Álzate', '', '', '', '0507', '', '', '0000-00-00'), ('1000004', 'S.D.', 'Yeny', 'Giraldo', 'Salas', '', '', '0507', '', '', '0000-00-00'), ('1000005', 'S.D.', 'Juan', 'David', 'Henao', 'A.', '', '0507', '', '', '0000-00-00'), ('1000006', 'S.D.', 'Mariano', 'Alfonso', 'Mesa', 'Madrigal', '', '0507', '', '', '0000-00-00'), ('1000007', 'S.D.', 'Daniela', 'Carmona', 'García', '', '', '0507', '', '', '0000-00-00'), ('1000040', 'S.D.', 'Jorge', 'Leonardo', 'Céspedes', 'Goez', '', '0507', '', '', '0000-00-00'), ('1000041', 'S.D.', 'Harold', 'Ernesto', 'Vargas', 'Grajales', '', '0507', '', '', '0000-00-00'), ('1000042', 'S.D.', 'Leidy', 'Carolina', 'García', 'Pino', '', '0507', '', '', '0000-00-00'), ('1000043', 'S.D.', 'Juan', 'Esteban', 'Iral', 'Betancur', '', '0507', '', '', '0000-00-00'), ('1007028350', 'C.C.', 'Mónica', 'Patricia', 'Martínez', 'Arboleda', '', '0507', '', '', '0000-00-00'), ('1017161627', 'C.C.', 'Edwar', 'Smith', 'Manco', '', '', '0507', '', '', '0000-00-00'), ('1017167999', 'C.C.', 'Julián', 'Steven', 'Muletón', 'Herrera', '', '0507', '', '', '0000-00-00'), ('1017168258', 'C.C.', 'Dayne', 'Lopera', 'Cardona', '', '', '0507', '', '', '0000-00-00'), ('1017170598', 'C.C.', 'Steeven', 'Molina', 'Zuleta', '', '', '0507', '', '', '0000-00-00'), ('1017170926', 'C.C.', 'Diana', 'Vanegas', 'Arias', '', '', '0507', '', '', '0000-00-00'), ('1017172923', 'C.C.', 'Érica', 'Yanet', 'Molina', 'Avendaño', '', '0507', '', '', '0000-00-00'), ('1020420098', 'C.C.', 'Laura', 'Marcela', 'Castrillón', 'Pineda', '', '0507', '', '', '0000-00-00'), ('1020426625', 'C.C.', 'Joan', 'Sebastián', 'Zapata', 'Morales', '', '0507', '', '', '0000-00-00'), ('1035302769', 'C.C.', 'Jairo', 'Alonso', 'Giraldo', 'Ospina', '', '0507', '', '', '0000-00-00'), ('1037582153', 'C.C.', 'Juan', 'David', 'Navia', '', '', '0507', '', '', '0000-00-00'), ('11231', 'cc', 'vanessa', null, 'agudelo', 'marin', 'francisco antonio', 'mede', 'vanagumar', '477', '1992-12-03'), ('1128278088', 'C.C.', 'Leidy', 'Tatiana', 'Mira', 'Rodríguez', '', '0507', '', '', '0000-00-00'), ('1128393403', 'C.C.', 'Luis', 'Fernando', 'Martínez', 'Aria', '', '0507', '', '', '0000-00-00'), ('1128395135', 'C.C.', 'July', 'Andrea', 'Cuervo', 'Daza', '', '0507', '', '', '0000-00-00'), ('1128395912', 'C.C.', 'Bernardo', 'Ospina', 'Sánchez', '', '', '0507', '', '', '0000-00-00'), ('1128419005', 'C.C.', 'Jhon', 'Esteban', 'Restrepo', 'Quintero', '', '0507', '', '', '0000-00-00'), ('1128422406', 'C.C.', 'Luís', 'Guillermo', 'Cuartas', 'Pérez', '', '0507', '', '', '0000-00-00'), ('1128422407', 'C.C.', 'Luz', 'Aleidy', 'Cuartas', 'Pérez', '', '0507', '', '', '0000-00-00'), ('1128448778', 'C.C.', 'Marisol', 'Vargas', 'Sánchez', '', '', '0507', '', '', '0000-00-00'), ('1128449143', 'C.C.', 'Maura', 'Alejandra', 'Arango', 'Hernández', '', '0507', '', '', '0000-00-00'), ('1128450672', 'C.C.', 'Marisol', 'Acosta', 'Gómez', '', '', '0507', '', '', '0000-00-00'), ('1128469662', 'C.C.', 'Marcela', 'Hernández', 'Cardona', '', '', '0507', '', '', '0000-00-00'), ('1128471601', 'C.C.', 'Luisa', 'Fernanda', 'Rayo', 'Osorio', '', '0507', '', '', '0000-00-00'), ('1128693484', 'C.C.', 'Meyre', 'Mazo', 'Ortiz', '', '', '0507', '', '', '0000-00-00'), ('12213', 'cc', 'olga', 'luicia', 'marin', 'giraldo', 'castilla', 'mede', 'ollumagi', '232424', '1970-02-23'), ('12341', 'cc', 'andres ', 'felipe', 'villa', null, 'estadio obelisco', 'mede', 'pipe_vasc', '23121123', '1985-12-26'), ('12926985', 'R.C.', 'Eduardo', 'Cesar', 'Henao', 'Echeverri', '', '0507', '', '', '0000-00-00'), ('16357527', 'R.C.', 'Víctor ', 'Eduardo ', 'López ', 'Mora ', '', '0507', '', '', '0000-00-00'), ('16774195', 'R.C.', 'Anderson ', 'Estiver ', 'Álvarez ', 'Giraldo ', '', '0507', '', '', '0000-00-00'), ('16817049', 'R.C.', 'Emmanuel ', '', 'Gómez ', 'Colorado ', '', '0507', '', '', '0000-00-00'), ('16938742', 'R.C.', 'Andrés ', 'Felipe ', 'Henao ', 'Cano ', '', '0507', '', '', '0000-00-00'), ('21186040', 'R.C.', 'Andrés ', '', 'Álvarez ', 'Duque ', '', '0507', '', '', '0000-00-00'), ('88021255810', 'T.I.', 'Claudia', 'Patricia', 'Arango', 'Sánchez', '', '0507', '', '', '0000-00-00'), ('88121970419', 'T.I.', 'Daisy', 'Del', 'Pilar', 'Cano', '', '0507', '', '', '0000-00-00'), ('89011679596', 'T.I.', 'Deisy', 'Silvana', 'Ruiz', 'Ospina', '', '0507', '', '', '0000-00-00'), ('89030370512', 'T.I.', 'Yudy', 'Biviana', 'Acevedo', 'Vélez', '', '0507', '', '', '0000-00-00'), ('89070952905', 'T.I.', 'Christian', 'Camilo', 'Castrillón', 'Rendón', '', '0507', '', '', '0000-00-00'), ('89081554383', 'T.I.', 'Cristian', 'Julián', 'Diez', 'Ruiz', '', '0507', '', '', '0000-00-00'), ('89081868752', 'T.I.', 'Luisa', 'Fernanda', 'Álvarez', 'Grisales', '', '0507', '', '', '0000-00-00'), ('89082367595', 'T.I.', 'Ana', 'María', 'Rojas', 'Carmona', '', '0507', '', '', '0000-00-00'), ('89091059593', 'T.I.', 'Viviana', 'Rúa', 'Vásquez', '', '', '0507', '', '', '0000-00-00'), ('89091953286', 'T.I.', 'Brian', 'Steve', 'Ocampo', 'Saldarriaga', '', '0507', '', '', '0000-00-00'), ('89092479618', 'T.I.', 'Leidy', 'Aristizabal', 'Buitrago', '', '', '0507', '', '', '0000-00-00'), ('89110562722', 'T.I.', 'Edinson', 'Ramiro', 'Galeano', 'Correa', '', '0507', '', '', '0000-00-00'), ('89110980860', 'T.I.', 'Sergio', 'García', 'Vasco', '', '', '0507', '', '', '0000-00-00'), ('89112160850', 'T.I.', 'Viviana', 'Julieth', 'López', 'Tangarife', '', '0507', '', '', '0000-00-00'), ('89122153925', 'T.I.', 'Roland', 'Ramírez', 'Patiño', '', '', '0507', '', '', '0000-00-00'), ('89122852955', 'T.I.', 'Vanessa', 'Alexandra', 'Urrego', 'Urrego', '', '0507', '', '', '0000-00-00'), ('89122964672', 'T.I.', 'Jheimy', 'Tatiana', 'Mora', 'Gañan', '', '0507', '', '', '0000-00-00'), ('89123056710', 'T.I.', 'Yennifer', 'Barrientos', 'Gómez', '', '', '0507', '', '', '0000-00-00'), ('90010853337', 'T.I.', 'Natally', 'Rivera', 'Pérez', '', '', '0507', '', '', '0000-00-00'), ('90011257231', 'T.I.', 'Luisa', 'Fernanda', 'Londoño', 'Rendón', '', '0507', '', '', '0000-00-00'), ('90011857190', 'T.I.', 'Claudia', 'Patricia', 'Caro', 'Zapata', '', '0507', '', '', '0000-00-00'), ('90011964175', 'T.I.', 'Luisa', 'Fernanda', 'Ardila', 'Olaya', '', '0507', '', '', '0000-00-00'), ('90012360877', 'T.I.', 'Laura', 'María', 'Baena', 'González', '', '0507', '', '', '0000-00-00'), ('90012963873', 'T.I.', 'Kelly', 'Johanna', 'Vélez', 'García', '', '0507', '', '', '0000-00-00'), ('90013057299', 'T.I.', 'Juliana', 'Suárez', 'Mayo', '', '', '0507', '', '', '0000-00-00'), ('90020252501', 'T.I.', 'Jonathan', 'Usma', 'Dávila', '', '', '0507', '', '', '0000-00-00'), ('90021452458', 'T.I.', 'Marleidy', 'Bedoya', 'Díaz', '', '', '0507', '', '', '0000-00-00'), ('90021452474', 'T.I.', 'Estefanía', 'Yepes', 'Ruiz', '', '', '0507', '', '', '0000-00-00'), ('90022058672', 'T.I.', 'Jenifer', 'Katerine', 'Rivera', 'Galvis', '', '0507', '', '', '0000-00-00'), ('90030162470', 'T.I.', 'Verónica', 'Barrera', '', '', '', '0507', '', '', '0000-00-00'), ('90030350226', 'T.I.', 'Juan', 'Sebastián', 'Morales', 'Salazar', '', '0507', '', '', '0000-00-00'), ('90031052598', 'T.I.', 'Leidy', 'Marcela', 'Lopera', 'Espinosa', '', '0507', '', '', '0000-00-00'), ('90032951910', 'T.I.', 'Marisela', 'Jiménez', 'Londoño', '', '', '0507', '', '', '0000-00-00'), ('90040551696', 'T.I.', 'Sandra', 'Milena', 'Barrada', 'Quintero', '', '0507', '', '', '0000-00-00'), ('90042354383', 'T.I.', 'Jonathan', 'Javier', 'Ballesteros', 'Bedoya', '', '0507', '', '', '0000-00-00'), ('90042451486', 'T.I.', 'Yadir', 'Betancur', 'Jiménez', '', '', '0507', '', '', '0000-00-00'), ('90042750335', 'T.I.', 'Mariana', 'Arango', 'Rodríguez', '', '', '0507', '', '', '0000-00-00'), ('90042851409', 'T.I.', 'Carlos', 'Alberto', 'Gómez', 'Pitalua', '', '0507', '', '', '0000-00-00'), ('90050655600', 'T.I.', 'Andrés', 'David', 'Álzate', 'López', '', '0507', '', '', '0000-00-00'), ('90051377817', 'T.I.', 'Leandra', 'Bedoya', 'Echeverry', '', '', '0507', '', '', '0000-00-00'), ('90051651919', 'T.I.', 'Stephanie', 'Ramírez', 'Jiménez', '', '', '0507', '', '', '0000-00-00'), ('90052154072', 'T.I.', 'Ivone', 'Sirley', 'Correa', 'Durango', '', '0507', '', '', '0000-00-00'), ('90052377802', 'T.I.', 'Santiago', 'Gallego', 'Pérez', '', '', '0507', '', '', '0000-00-00'), ('90052475685', 'T.I.', 'Santiago', 'Ospina', 'Ríos', '', '', '0507', '', '', '0000-00-00'), ('90052553368', 'T.I.', 'Frank', 'David', 'Franco', 'López', '', '0507', '', '', '0000-00-00'), ('90052653907', 'T.I.', 'Ferney', 'Alexis', 'García', 'Vélez', '', '0507', '', '', '0000-00-00'), ('90052658852', 'T.I.', 'Luz', 'María', 'Gómez', 'Fernández', '', '0507', '', '', '0000-00-00'), ('90053174719', 'T.I.', 'Erika', 'Yuliana', 'Escudero', 'Herrera', '', '0507', '', '', '0000-00-00'), ('90060374910', 'T.I.', 'Liliana', 'Marcela', 'Romero', 'Correa', '', '0507', '', '', '0000-00-00'), ('90060656699', 'T.I.', 'Astrid', 'Carolina', 'Barrera', 'Barrera', '', '0507', '', '', '0000-00-00'), ('90060770068', 'T.I.', 'Juan', 'Esteban', 'Restrepo', 'Coronado', '', '0507', '', '', '0000-00-00'), ('90061951066', 'T.I.', 'Emerson', 'Didieson', 'Sánchez', 'Peña', '', '0507', '', '', '0000-00-00'), ('90062059841', 'T.I.', 'Edian', 'Alejandro', 'Mejía', 'Taborda', '', '0507', '', '', '0000-00-00'), ('90062158556', 'T.I.', 'Lorena', 'María', 'Quiroz', 'Betancur', '', '0507', '', '', '0000-00-00'), ('90062253443', 'T.I.', 'John', 'Fernando', 'Lopera', 'Hernández', '', '0507', '', '', '0000-00-00'), ('90062254920', 'T.I.', 'Juan', 'Andrés', 'Carvajal', 'Brand', '', '0507', '', '', '0000-00-00'), ('90062257880', 'T.I.', 'Willigton', 'García', 'Vargas', '', '', '0507', '', '', '0000-00-00');
INSERT INTO `estudiantes` VALUES ('90062454546', 'T.I.', 'Edwin', 'Alberto', 'Cortes', 'Hurtado', '', '0507', '', '', '0000-00-00'), ('90062556381', 'T.I.', 'Cristian', 'Camilo', 'Mosquera', 'Rodríguez', '', '0507', '', '', '0000-00-00'), ('90062772580', 'T.I.', 'Carlos', 'Mario', 'Cruz', 'Cortes', '', '0507', '', '', '0000-00-00'), ('90062952406', 'T.I.', 'Sebastián', 'Pulgarín', 'Bran', '', '', '0507', '', '', '0000-00-00'), ('90062963882', 'T.I.', 'Juan', 'David', 'Usuga', 'Muñoz', '', '0507', '', '', '0000-00-00'), ('90070152168', 'T.I.', 'Jesús', 'David', 'Munera', 'Álvarez', '', '0507', '', '', '0000-00-00'), ('90070757698', 'T.I.', 'Luisa', 'Fernanda', 'Chica', 'De', '', '0507', '', '', '0000-00-00'), ('90070857170', 'T.I.', 'Ivonn', 'Maritza', 'Álvarez', 'Giraldo', '', '0507', '', '', '0000-00-00'), ('90070960183', 'T.I.', 'Edwin', 'Farley', 'Castro', 'Vergara', '', '0507', '', '', '0000-00-00'), ('90071173649', 'T.I.', 'Nelson', 'Eduardo', 'Acevedo', 'Acevedo', '', '0507', '', '', '0000-00-00'), ('90071360694', 'T.I.', 'Yesenia', 'Andrade', 'Castaño', '', '', '0507', '', '', '0000-00-00'), ('90071650978', 'T.I.', 'Jessica', 'Johanna', 'Santamaría', 'Estrada', '', '0507', '', '', '0000-00-00'), ('90071681695', 'T.I.', 'Catalina', 'Zuluaga', 'Ruiz', '', '', '0507', '', '', '0000-00-00'), ('90071765449', 'T.I.', 'Juan', 'David', 'Muñoz', 'Correa', '', '0507', '', '', '0000-00-00'), ('90071860379', 'T.I.', 'Paula', 'Alejandra', 'Ardila', 'Marín', '', '0507', '', '', '0000-00-00'), ('90071893734', 'T.I.', 'Yorlany', 'Andrea', 'Gaviria', '', '', '0507', '', '', '0000-00-00'), ('90072459325', 'T.I.', 'Cristian', 'Montoya', 'Correa', '', '', '0507', '', '', '0000-00-00'), ('90072760866', 'T.I.', 'Jorge', 'Humberto', 'Gallego', 'Orrego', '', '0507', '', '', '0000-00-00'), ('90080168216', 'T.I.', 'Estefanía', 'Solorzano', 'Arbeláez', '', '', '0507', '', '', '0000-00-00'), ('90080350138', 'T.I.', 'Leidy', 'Johanna', 'Yepes', 'Sepúlveda', '', '0507', '', '', '0000-00-00'), ('90080752929', 'T.I.', 'Camilo', 'Gallego', 'Ortiz', '', '', '0507', '', '', '0000-00-00'), ('90081158028', 'T.I.', 'Wilmel', 'Leandro', 'Zapata', 'Ruiz', '', '0507', '', '', '0000-00-00'), ('90081658276', 'T.I.', 'Juliana', 'Acevedo', 'Cano', '', '', '0507', '', '', '0000-00-00'), ('90081751420', 'T.I.', 'Yohan', 'Camilo', 'Pérez', 'Pérez', '', '0507', '', '', '0000-00-00'), ('90082159656', 'T.I.', 'Lorena', 'Henao', 'López', '', '', '0507', '', '', '0000-00-00'), ('90082377106', 'T.I.', 'Juan', 'Camilo', 'Bermúdez', 'Estrada', '', '0507', '', '', '0000-00-00'), ('90082579027', 'T.I.', 'Gonzalo', 'Excelino', 'Cabezas', 'Zapata', '', '0507', '', '', '0000-00-00'), ('90082858147', 'T.I.', 'Brando', 'Stib', 'Muñoz', 'Ortiz', '', '0507', '', '', '0000-00-00'), ('90083059566', 'T.I.', 'Andrés', 'Julián', 'Moreno', 'Buriticá', '', '0507', '', '', '0000-00-00'), ('90090259520', 'T.I.', 'Fabián', 'Arturo', 'García', 'Torres', '', '0507', '', '', '0000-00-00'), ('90090261133', 'T.I.', 'Jennifer', 'Gil', 'Galeano', '', '', '0507', '', '', '0000-00-00'), ('90090558497', 'T.I.', 'Sara', 'Matilde', 'Correa', 'Herrera', '', '0507', '', '', '0000-00-00'), ('90090662014', 'T.I.', 'Carolina', 'Flórez', 'Quintana', '', '', '0507', '', '', '0000-00-00'), ('90090680055', 'T.I.', 'Juliana', 'Morales', 'Rodríguez', '', '', '0507', '', '', '0000-00-00'), ('90091062100', 'T.I.', 'Anderson', 'Buriticá', 'Osorio', '', '', '0507', '', '', '0000-00-00'), ('90091309041', 'T.I.', 'Laura', 'Tabimba', 'Arias', '', '', '0507', '', '', '0000-00-00'), ('90091371021', 'T.I.', 'Cristian ', 'Miguel ', 'Henao ', 'Echeverri ', '', '0507', '', '', '0000-00-00'), ('90091458933', 'T.I.', 'Carolina', 'García', 'Osorio', '', '', '0507', '', '', '0000-00-00'), ('90091969636', 'T.I.', 'Mónica', 'Patricia', 'Restrepo', 'Cano', '', '0507', '', '', '0000-00-00'), ('90092180270', 'T.I.', 'Yuly', 'Maritza', 'Jaramillo', 'Rueda', '', '0507', '', '', '0000-00-00'), ('90092359530', 'T.I.', 'Erika', 'Marcela', 'Martínez', 'Colorado', '', '0507', '', '', '0000-00-00'), ('90092374377', 'T.I.', 'Katerine', 'Molina', 'Quintero', '', '', '0507', '', '', '0000-00-00'), ('90092859770', 'T.I.', 'Cindy', 'Jineth', 'Robledo', 'Castañeda', '', '0507', '', '', '0000-00-00'), ('90092979783', 'T.I.', 'Fabián', 'Mauricio', 'Salazar', 'Ramírez', '', '0507', '', '', '0000-00-00'), ('90093060112', 'T.I.', 'María', 'Luisa', 'Correa', 'Flórez', '', '0507', '', '', '0000-00-00'), ('90100254249', 'T.I.', 'Edwin', 'Arley', 'Romero', 'Ortiz', '', '0507', '', '', '0000-00-00'), ('90100259086', 'T.I.', 'Jefersson', 'Sánchez', 'Ruiz', '', '', '0507', '', '', '0000-00-00'), ('90100261633', 'T.I.', 'Sara', 'Carolina', 'Aguirre', 'Zuluaga', '', '0507', '', '', '0000-00-00'), ('90100561173', 'T.I.', 'Leidy', 'Johana', 'Beltrán', 'Usme', '', '0507', '', '', '0000-00-00'), ('90100657529', 'T.I.', 'Oscar', 'Hernando', 'Mesa', 'Garavito', '', '0507', '', '', '0000-00-00'), ('90100660147', 'T.I.', 'Cristian', 'Duvan', 'Gañan', 'Peña', '', '0507', '', '', '0000-00-00'), ('90101764469', 'T.I.', 'Alexander', 'Gallego', 'Jiménez', '', '', '0507', '', '', '0000-00-00'), ('90101969125', 'T.I.', 'Oscar', 'Andrés', 'Cossio', 'Acevedo', '', '0507', '', '', '0000-00-00'), ('90102158171', 'T.I.', 'Lina', 'María', 'Piedrahita', 'Pérez', '', '0507', '', '', '0000-00-00'), ('90102558765', 'T.I.', 'Jonathan', 'Alexander', 'Ocampo', 'Uribe', '', '0507', '', '', '0000-00-00'), ('90102676679', 'T.I.', 'Diana', 'Katerine', 'Echavarría', 'Restrepo', '', '0507', '', '', '0000-00-00'), ('90103057729', 'T.I.', 'Daniel', 'Esteban', 'Sánchez', 'López', '', '0507', '', '', '0000-00-00'), ('90110179650', 'T.I.', 'Sara', 'Catalina', 'Prieto', 'Atehortua', '', '0507', '', '', '0000-00-00'), ('90110658965', 'T.I.', 'Daniel', 'Stiven', 'Grajales', 'Tabares', '', '0507', '', '', '0000-00-00'), ('90110659066', 'T.I.', 'Santiago', 'Eduardo', 'Franco', 'Vargas', '', '0507', '', '', '0000-00-00'), ('90110957822', 'T.I.', 'Daniel', 'Restrepo', 'González', '', '', '0507', '', '', '0000-00-00'), ('90110964560', 'T.I.', 'Juan', 'Manuel', 'Lombana', 'Martínez', '', '0507', '', '', '0000-00-00'), ('90111168740', 'T.I.', 'Cristian', 'Camilo', 'Cordoba', 'Ramírez', '', '0507', '', '', '0000-00-00'), ('90111379830', 'T.I.', 'Natalia', 'Zapata', 'Osorio', '', '', '0507', '', '', '0000-00-00'), ('90111458951', 'T.I.', 'Andrea', 'Galvis', 'Gil', '', '', '0507', '', '', '0000-00-00'), ('90111477514', 'T.I.', 'María', 'Alejandra', 'Álzate', 'Pérez', '', '0507', '', '', '0000-00-00'), ('90111763681', 'T.I.', 'Arturo', 'Moreno', 'Agudelo', '', '', '0507', '', '', '0000-00-00'), ('90111854237', 'T.I.', 'Gina', 'Marcela', 'Carmona', 'Gómez', '', '0507', '', '', '0000-00-00'), ('90112357601', 'T.I.', 'Daniel', 'Escobar', 'González', '', '', '0507', '', '', '0000-00-00'), ('90120378553', 'T.I.', 'Dora', 'Elena', 'Duque', 'Cortes', '', '0507', '', '', '0000-00-00'), ('90120552715', 'T.I.', 'Sindy', 'Lorena', 'Giraldo', 'Valencia', '', '0507', '', '', '0000-00-00'), ('90120754768', 'T.I.', 'Alejandro', 'Jaramillo', 'Celis', '', '', '0507', '', '', '0000-00-00'), ('90121155981', 'T.I.', 'William', 'Andrés', 'Jiménez', 'Londoño', '', '0507', '', '', '0000-00-00'), ('90121350598', 'T.I.', 'Yeraldin', 'Vanessa', 'Sepúlveda', 'Zapata', '', '0507', '', '', '0000-00-00'), ('90121550538', 'T.I.', 'Sandra', 'Marcela', 'Taborda', 'Mazo', '', '0507', '', '', '0000-00-00'), ('90121551992', 'T.I.', 'Yeraldyn', 'Valencia', 'Correa', '', '', '0507', '', '', '0000-00-00'), ('90121664657', 'T.I.', 'Ludis', 'Jazmín', 'Palacios', 'Palacios', '', '0507', '', '', '0000-00-00'), ('90121666218', 'T.I.', 'Leidy', 'Viviana', 'Rivera', 'Aguirre', '', '0507', '', '', '0000-00-00'), ('90121673591', 'T.I.', 'Ledys', 'Vanesa', 'Castañeda', 'Tabares', '', '0507', '', '', '0000-00-00'), ('90121752262', 'T.I.', 'Juan', 'Felipe', 'Acevedo', 'Zapata', '', '0507', '', '', '0000-00-00'), ('90121874473', 'T.I.', 'Lady', 'Carolina', 'Munera', 'Osorio', '', '0507', '', '', '0000-00-00'), ('90121877014', 'T.I.', 'Odandresa', 'Osorio', 'Jiménez', '', '', '0507', '', '', '0000-00-00'), ('90122150541', 'T.I.', 'Duvan', 'Lora', 'Acevedo', '', '', '0507', '', '', '0000-00-00'), ('90122251631', 'T.I.', 'Laura', 'Mitchell', 'Rueda', 'Ardila', '', '0507', '', '', '0000-00-00'), ('90122550507', 'T.I.', 'Steven', 'Moncada', 'Correa', '', '', '0507', '', '', '0000-00-00'), ('90122765244', 'T.I.', 'Juan', 'David', 'Correa', 'Aguirre', '', '0507', '', '', '0000-00-00'), ('90122851060', 'T.I.', 'John', 'David', 'López', 'Toro', '', '0507', '', '', '0000-00-00'), ('90122950866', 'T.I.', 'Juan', 'Camilo', 'Arboleda', 'Tamayo', '', '0507', '', '', '0000-00-00'), ('90123051306', 'T.I.', 'Ronny', 'Alexis', 'Grisales', 'Hinestroza', '', '0507', '', '', '0000-00-00'), ('90123161571', 'T.I.', 'Anny', 'Yulieth', 'Vélez', 'Cristancho', '', '0507', '', '', '0000-00-00'), ('91010183184', 'T.I.', 'Jaime', 'Andrés', 'Echeverri', 'Londoño', '', '0507', '', '', '0000-00-00'), ('91010300938', 'T.I.', 'Paula', 'Alejandra', 'Rico', 'Zapata', '', '0507', '', '', '0000-00-00'), ('91011251582', 'T.I.', 'Julián', 'Andrés', 'Montoya', 'Palacio', '', '0507', '', '', '0000-00-00'), ('91011324482', 'T.I.', 'Mario', 'Giraldo', 'Restrepo', '', '', '0507', '', '', '0000-00-00'), ('91011402521', 'T.I.', 'Quilton', 'Steven', 'Arteaga', 'Murillo', '', '0507', '', '', '0000-00-00'), ('91011801345', 'T.I.', 'David', 'Esteban', 'Morales', 'Hoyos', '', '0507', '', '', '0000-00-00'), ('91012018490', 'T.I.', 'Luisa', 'Fernanda', 'Acosta', 'Pérez', '', '0507', '', '', '0000-00-00'), ('91012102092', 'T.I.', 'Melissa', 'Espinal', 'López', '', '', '0507', '', '', '0000-00-00'), ('91012700577', 'T.I.', 'Lizeth', 'Tatiana', 'Velásquez', 'Gómez', '', '0507', '', '', '0000-00-00'), ('91020400779', 'T.I.', 'Laura', 'Rivillas', 'Rigol', '', '', '0507', '', '', '0000-00-00');
INSERT INTO `estudiantes` VALUES ('91021119313', 'T.I.', 'Xiomara', 'Rivillas', 'Hincapié', '', '', '0507', '', '', '0000-00-00'), ('91021201796', 'T.I.', 'Janina', 'Stheffy', 'González', 'Velandia', '', '0507', '', '', '0000-00-00'), ('91021202482', 'T.I.', 'Juan', 'Pablo', 'Baena', 'González', '', '0507', '', '', '0000-00-00'), ('91021204639', 'T.I.', 'Alejandra', 'Margarita', 'Ocampo', 'Holguín', '', '0507', '', '', '0000-00-00'), ('91021400322', 'T.I.', 'Yoiner', 'Alexis', 'Ibarra', 'Machado', '', '0507', '', '', '0000-00-00'), ('91021402457', 'T.I.', 'Yuliana', 'Betancur', 'Parra', '', '', '0507', '', '', '0000-00-00'), ('91021800134', 'T.I.', 'Laura', 'Soto', 'Duque', '', '', '0507', '', '', '0000-00-00'), ('91021801599', 'T.I.', 'Laura', 'Moreno', 'Pérez', '', '', '0507', '', '', '0000-00-00'), ('91022053510', 'T.I.', 'Ana', 'Milena', 'Londoño', 'Vanegas', '', '0507', '', '', '0000-00-00'), ('91022255245', 'T.I.', 'Diego', 'Alejandro', 'López', 'Cárdenas', '', '0507', '', '', '0000-00-00'), ('91022300127', 'T.I.', 'Diego', 'Alejandro', 'Rodas', 'Serna', '', '0507', '', '', '0000-00-00'), ('91022301840', 'T.I.', 'Sergio', 'Andrés', 'Molina', 'Paniagua', '', '0507', '', '', '0000-00-00'), ('91022501173', 'T.I.', 'Yuliana ', 'Milena ', 'Pérez ', 'Muñoz ', '', '0507', '', '', '0000-00-00'), ('91022600678', 'T.I.', 'Jennifer', 'Lizeth', 'Serna', 'Álvarez', '', '0507', '', '', '0000-00-00'), ('91022603421', 'T.I.', 'Juan', 'Esteban', 'Mieles', 'Padilla', '', '0507', '', '', '0000-00-00'), ('91030100048', 'T.I.', 'Jhon', 'Jairo', 'Vallejo', 'Botero', '', '0507', '', '', '0000-00-00'), ('91030803030', 'T.I.', 'Leidy', 'Yuliana', 'Ortiz', 'Bustamante', '', '0507', '', '', '0000-00-00'), ('91031100882', 'T.I.', 'David', 'Alejandro', 'Rondón', 'Berrio', '', '0507', '', '', '0000-00-00'), ('91031150014', 'T.I.', 'Sandra', 'Vélez', 'Zuluaga', '', '', '0507', '', '', '0000-00-00'), ('91031200666', 'T.I.', 'David', 'Esteban', 'Villa', 'Sánchez', '', '0507', '', '', '0000-00-00'), ('91031302809', 'T.I.', 'Giovanni', 'Adolfo', 'Castañeda', 'Sánchez', '', '0507', '', '', '0000-00-00'), ('91031601423', 'T.I.', 'Arlex', 'David', 'Martínez', 'Guzmán', '', '0507', '', '', '0000-00-00'), ('91032161036', 'T.I.', 'Ana', 'Milena', 'Cano', 'Rodríguez', '', '0507', '', '', '0000-00-00'), ('91032303043', 'T.I.', 'Cesar', 'Alejandro', 'Marín', 'Echeverri', '', '0507', '', '', '0000-00-00'), ('91032451980', 'T.I.', 'Daniel', 'Franco', 'Monsalve', '', '', '0507', '', '', '0000-00-00'), ('91032803232', 'T.I.', 'Katerin', 'Tatiana', 'González', 'Tamayo', '', '0507', '', '', '0000-00-00'), ('91032812479', 'T.I.', 'Leidy', 'Samanta', 'Aguirre', 'Rueda', '', '0507', '', '', '0000-00-00'), ('91033180275', 'T.I.', 'Elizabeth', 'Mesa', 'López', '', '', '0507', '', '', '0000-00-00'), ('91040200970', 'T.I.', 'María', 'Isabel', 'Sierra', 'Pineda', '', '0507', '', '', '0000-00-00'), ('91040604230', 'T.I.', 'Natalia', 'Restrepo', 'Gutiérrez', '', '', '0507', '', '', '0000-00-00'), ('91040801389', 'T.I.', 'Jaime', 'Andrés', 'Palacio', 'Cardona', '', '0507', '', '', '0000-00-00'), ('91041701710', 'T.I.', 'Shirley', 'Caterine', 'Mesa', 'Villegas', '', '0507', '', '', '0000-00-00'), ('91041724590', 'T.I.', 'Luisa', 'María', 'Torres', 'García', '', '0507', '', '', '0000-00-00'), ('91041900194', 'T.I.', 'Laura', 'Isabel', 'Osorio', 'Rivera', '', '0507', '', '', '0000-00-00'), ('91041911277', 'T.I.', 'Leidy', 'Alejandra', 'Pulgarín', 'Pérez', '', '0507', '', '', '0000-00-00'), ('91042101309', 'T.I.', 'Sebastián', 'Molina', 'Calderón', '', '', '0507', '', '', '0000-00-00'), ('91042116217', 'T.I.', 'Cristina', 'Isabel', 'Mejía', 'González', '', '0507', '', '', '0000-00-00'), ('91042202679', 'T.I.', 'Flor', 'María', 'Álzate', 'Ramírez', '', '0507', '', '', '0000-00-00'), ('91042228490', 'T.I.', 'Saudith', 'Del Carmen', 'Toro', '', '', '0507', '', '', '0000-00-00'), ('91042504390', 'T.I.', 'Leidy', 'Juliana', 'Mazo', 'Osorio', '', '0507', '', '', '0000-00-00'), ('91042604734', 'T.I.', 'Melissa', 'Pérez', 'López', '', '', '0507', '', '', '0000-00-00'), ('91042901267', 'T.I.', 'Andrés', 'Felipe', 'Pérez', 'Gómez', '', '0507', '', '', '0000-00-00'), ('91042914083', 'T.I.', 'Andrés', 'Felipe', 'Rivera', 'Amaya', '', '0507', '', '', '0000-00-00'), ('91050202963', 'T.I.', 'Esteban ', '', 'González ', 'Tobón ', '', '0507', '', '', '0000-00-00'), ('91050813830', 'T.I.', 'Laura', 'Manuela', 'Cardona', 'Gómez', '', '0507', '', '', '0000-00-00'), ('91050901438', 'T.I.', 'Yuliana', 'Andrea', 'Montoya', 'Zuleta', '', '0507', '', '', '0000-00-00'), ('91050903210', 'T.I.', 'Yessica', 'Pérez', 'Palacio', '', '', '0507', '', '', '0000-00-00'), ('91051002500', 'T.I.', 'Esteban', 'Castrillón', 'López', '', '', '0507', '', '', '0000-00-00'), ('91051705071', 'T.I.', 'Elizabeth', 'Cristina', 'Bolívar', 'Restrepo', '', '0507', '', '', '0000-00-00'), ('91052063162', 'T.I.', 'Daniel', 'Alexis', 'Gaviria', 'Otalvaro', '', '0507', '', '', '0000-00-00'), ('91052301888', 'T.I.', 'Santiago', 'Escobar', 'Giraldo', '', '', '0507', '', '', '0000-00-00'), ('91052810995', 'T.I.', 'Ana', 'Lucia', 'Guevara', 'Ospina', '', '0507', '', '', '0000-00-00'), ('91052900722', 'T.I.', 'Jerson', 'Alexander', 'Suaza', 'Gallego', '', '0507', '', '', '0000-00-00'), ('91052903438', 'T.I.', 'Katheryne', 'Gordon', 'Henao', '', '', '0507', '', '', '0000-00-00'), ('91053150050', 'T.I.', 'Sarah', 'Melissa', 'Torres', 'Restrepo', '', '0507', '', '', '0000-00-00'), ('91060900545', 'T.I.', 'Sebastián ', '', 'Bolívar ', 'Guiral ', '', '0507', '', '', '0000-00-00'), ('91061651450', 'T.I.', 'Paola', 'Andrea', 'García', 'Arboleda', '', '0507', '', '', '0000-00-00'), ('91061950228', 'T.I.', 'Leyson ', 'Camilo ', 'Oquendo ', 'Gallego ', '', '0507', '', '', '0000-00-00'), ('91062100171', 'T.I.', 'Cindy', 'Yulieth', 'Restrepo', 'Osorno', '', '0507', '', '', '0000-00-00'), ('91062202020', 'T.I.', 'Alexander ', '', 'Duque ', 'Parra ', '', '0507', '', '', '0000-00-00'), ('91062721362', 'T.I.', 'Jeysson ', '', 'Hurtado ', 'Montoya ', '', '0507', '', '', '0000-00-00'), ('91071452560', 'T.I.', 'Steven', 'Tamayo', 'Palacio', '', '', '0507', '', '', '0000-00-00'), ('91071501936', 'T.I.', 'Diana', 'Jimena', 'Echeverri', 'Arenas', '', '0507', '', '', '0000-00-00'), ('91071503980', 'T.I.', 'Daniel', 'Olarte', 'Quintero', '', '', '0507', '', '', '0000-00-00'), ('91080900584', 'T.I.', 'Abdel', 'Hamid', 'Cano', 'Restrepo', '', '0507', '', '', '0000-00-00'), ('91090609829', 'T.I.', 'Santiago ', '', 'Marchena ', 'Álvarez ', '', '0507', '', '', '0000-00-00'), ('91091400575', 'T.I.', 'Jennifer', 'Velásquez', 'Londoño', '', '', '0507', '', '', '0000-00-00'), ('91092200499', 'T.I.', 'Ana', 'María', 'Correa', 'Castañeda', '', '0507', '', '', '0000-00-00'), ('91092252055', 'T.I.', 'Andrés ', 'Felipe ', 'Olaya ', 'Betancur ', '', '0507', '', '', '0000-00-00'), ('91092804980', 'T.I.', 'Omar', 'Andrés', 'Celis', 'Volkmar', '', '0507', '', '', '0000-00-00'), ('91100403558', 'T.I.', 'Lina', 'María', 'Osorno', 'Sánchez', '', '0507', '', '', '0000-00-00'), ('91110204545', 'T.I.', 'Wilmar ', '', 'Álvarez ', 'González ', '', '0507', '', '', '0000-00-00'), ('91110660303', 'T.I.', 'Diego', 'Alberto', 'Ochoa', 'Guzmán', '', '0507', '', '', '0000-00-00'), ('91111350146', 'T.I.', 'Esteban', '', 'Penagos', 'Salazar', '', '0507', '', '', '0000-00-00'), ('91112668590', 'T.I.', 'Isabel', 'Cristina', 'Jaramillo', 'Torres', '', '0507', '', '', '0000-00-00'), ('91120175330', 'T.I.', 'Kelly', 'Tatiana', 'Arboleda', 'Laverde', '', '0507', '', '', '0000-00-00'), ('91120553240', 'T.I.', 'David', 'Alejandro', 'Munera', 'Silva', '', '0507', '', '', '0000-00-00'), ('91123158607', 'T.I.', 'Christian', '', 'Álzate', 'Rendón', '', '0507', '', '', '0000-00-00'), ('92011904892', 'T.I.', 'Daniela ', '', 'Franco ', 'Aguirre ', '', '0507', '', '', '0000-00-00'), ('92013104532', 'T.I.', 'Azucena', 'Parra', 'Cartagena', '', '', '0507', '', '', '0000-00-00'), ('92020204828', 'T.I.', 'Alejandro', '', 'Navia', 'Álvarez', '', '0507', '', '', '0000-00-00'), ('92022353391', 'T.I.', 'Jesica', 'Tatiana', 'Silva', 'Jiménez', '', '0507', '', '', '0000-00-00'), ('92022605820', 'T.I.', 'Juan ', 'Pablo ', 'Escobar ', 'Guarín ', '', '0507', '', '', '0000-00-00'), ('92022755708', 'T.I.', 'Danny ', 'Alexander ', 'Echavarría ', 'Giraldo ', '', '0507', '', '', '0000-00-00'), ('92030771607', 'T.I.', 'Jorman ', 'Andrés ', 'Bustos ', 'Gómez ', '', '0507', '', '', '0000-00-00'), ('92030854227', 'T.I.', 'David', 'Stivens', 'Quintero', 'Sánchez', '', '0507', '', '', '0000-00-00'), ('92030954353', 'T.I.', 'Daniela', '', 'Monsalve', 'Quiceno', '', '0507', '', '', '0000-00-00'), ('92031254380', 'T.I.', 'David ', '', 'Pérez ', 'Grajales ', '', '0507', '', '', '0000-00-00'), ('92031655511', 'T.I.', 'Yesenia', '', 'Brand', 'Noreña', '', '0507', '', '', '0000-00-00'), ('92032158384', 'T.I.', 'Juan', 'David', 'Bermúdez', 'Mazo', '', '0507', '', '', '0000-00-00'), ('92032405500', 'T.I.', 'David ', 'Alejandro ', 'Gallego ', 'Zapata ', '', '0507', '', '', '0000-00-00'), ('92052252700', 'T.I.', 'Frank ', 'Alexander ', 'García ', 'Gil ', '', '0507', '', '', '0000-00-00'), ('92052676721', 'T.I.', 'Edison ', 'Duvan ', 'Osorno ', 'Zapata ', '', '0507', '', '', '0000-00-00'), ('92060553345', 'T.I.', 'Santiago', '', 'Carrillo', 'Holguín', '', '0507', '', '', '0000-00-00'), ('92061254309', 'T.I.', 'Joseph', '', 'Ortiz', 'Laverde', '', '0507', '', '', '0000-00-00'), ('92062402603', 'T.I.', 'Andrés', 'Morón', 'González', 'Correa', '', '0507', '', '', '0000-00-00'), ('92070153485', 'T.I.', 'Jhon', 'James', 'Cardona', 'Orozco', '', '0507', '', '', '0000-00-00'), ('92080852870', 'T.I.', 'Tatiana', 'Andrea', 'Vallejo', 'Agudelo', '', '0507', '', '', '0000-00-00'), ('92110556502', 'T.I.', 'Daniel', 'Felipe', 'Duque', 'Jiménez', '', '0507', '', '', '0000-00-00'), ('92110558980', 'T.I.', 'Daniel ', 'Esteban ', 'Bedoya ', 'Maya ', '', '0507', '', '', '0000-00-00');
COMMIT;

-- ----------------------------
-- Table structure for `evalua_criterio_estudiante`
-- ----------------------------
DROP TABLE IF EXISTS `evalua_criterio_estudiante`;
CREATE TABLE `evalua_criterio_estudiante` (
`id_criterio_estudiante`  int(11) NOT NULL AUTO_INCREMENT ,
`id_item_evaluacion`  int(11) NOT NULL ,
`id_estudiante`  varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`estudiantes_TipoDoc`  varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`puntos_criterio_item`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`id_criterio_estudiante`),
FOREIGN KEY (`id_estudiante`, `estudiantes_TipoDoc`) REFERENCES `estudiantes` (`Documento`, `TipoDoc`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`id_item_evaluacion`) REFERENCES `item_evaluacion` (`id_item_evaluacion`) ON DELETE RESTRICT ON UPDATE RESTRICT,
UNIQUE INDEX `indice_item_estudiante` (`id_item_evaluacion`, `id_estudiante`) USING BTREE ,
INDEX `estudiante` (`id_estudiante`, `estudiantes_TipoDoc`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=7

;

-- ----------------------------
-- Records of evalua_criterio_estudiante
-- ----------------------------
BEGIN;
INSERT INTO `evalua_criterio_estudiante` VALUES ('1', '1', '11231', 'cc', '3'), ('2', '2', '11231', 'cc', '2'), ('3', '1', '12213', 'cc', '3'), ('4', '2', '12213', 'cc', '3'), ('5', '1', '12341', 'cc', '3'), ('6', '2', '12341', 'cc', '3');
COMMIT;

-- ----------------------------
-- Table structure for `evidencia`
-- ----------------------------
DROP TABLE IF EXISTS `evidencia`;
CREATE TABLE `evidencia` (
`id_evidencia`  int(11) NOT NULL AUTO_INCREMENT ,
`id_modulo`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`id_tipo_evidencia`  int(11) NOT NULL ,
`descripcion`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`porcentaje`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`id_evidencia`),
FOREIGN KEY (`id_tipo_evidencia`) REFERENCES `tipo_evidencias` (`id_tipo_evidencia`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`id_modulo`) REFERENCES `modulos` (`Codigo`) ON DELETE RESTRICT ON UPDATE RESTRICT,
UNIQUE INDEX `indice_evidecia` (`id_modulo`, `id_tipo_evidencia`) USING BTREE ,
INDEX `EVIDENCIA_TIPO_EVIDENCIA_FK` (`id_tipo_evidencia`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=4

;

-- ----------------------------
-- Records of evidencia
-- ----------------------------
BEGIN;
INSERT INTO `evidencia` VALUES ('1', 'ING00812', '1', 'ninguna', '30'), ('2', '2', '2', 'ninguna', '20'), ('3', 'ING00812', '3', 'ninguna', '50');
COMMIT;

-- ----------------------------
-- Table structure for `institucionesm`
-- ----------------------------
DROP TABLE IF EXISTS `institucionesm`;
CREATE TABLE `institucionesm` (
`Codigo`  varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`Coddane`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Nit`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Nombre`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Joradamt`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Telefono`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Municipio`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Comuna`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Direccion`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Email`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Rector`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Telrector`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Email_rector`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Coordinador`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Tel_coord`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`Codigo`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of institucionesm
-- ----------------------------
BEGIN;
INSERT INTO `institucionesm` VALUES ('10001', '', '', 'AGRICOLA DE URABÁ', '', '8258493', '0175', '', 'VEREDA LA RIVERA KM 3', 'ieauespinosa@hotmail.com', 'MARGARITA MARÍA ESPINOSA BOTERO', '', 'john_ferney@hotmail.com', '', ''), ('10002', '', '', 'ALFONSO LOPEZ', '', '8261555', '0045', '', 'CARRERA 67,  101 - 140', 'institucionalfonsolopez@hotmail.com', 'CIRILO MENA PALACIOS', '', '', '', ''), ('10003', '', '', 'ANA DE CASTRILLÓN', '', '2178032', '0507', '', 'CARRERA 38, 39B- 86', 'carojas72@gmail.com', 'HECTOR MAURICIO CALLE GALLEGO', '', '', '', ''), ('10004', '', '', 'CADENA LAS PLAYAS', '', '8285460', '0045', '', 'CALLE 96, 83 - 03', 'cadenalasplayas@gmail.com', 'SAMUEL VASQUEZ VELASQUEZ', '', 'samva55@yahoo.es', '', ''), ('10006', '105001000108 ', '811017377-8', 'CEFA CENTRO FORMATIVO DE ANTIOQUIA', '', '2393774', '0507', '10', 'CALLE 50 # 41 - 56', '', 'GLADYS DEL SOCORRO OTÁLVARO ROJAS', '2393774', '', 'HUMBERTO PÉREZ VALDERRAMA', '217 53 37'), ('10007', '105001006980 ', '811034110-0', 'CONCEJO DE MEDELLÍN', '', '4119115', '0507', '12', 'CARRERA 82 # 47A - 66', '', 'MÓNICA PATRICIA PÉREZ SÁNCHEZ', '4119115', '', 'NO APLICA', 'NO APLICA'), ('10008', '', '', 'DE CHIGORODO', '', '8254709', '0175', '', 'CALLE 93, 105- 53', 'mgps2759@hotmail.com', 'MÁXIMO GASPAR PINEDA SANTACRUZ', '', 'insteduchigorodo@hotmail.com', '', ''), ('10012', '105001011711 ', '811018372-6', 'FE Y ALEGRÍA VILLA DE LA CANDELARIA', '', '2642310', '0507', '7', 'CALLE 77A # 90D - 36', '', 'MARTA MARÍA RESTREPO PARRA', '2642310', '', 'FAVER CANO', '3217984580'), ('10013', '105001002011 ', '811014080-2', 'FEDERICO OZANAM', '', '2217929', '0507', '9', 'CALLE 50 # 29 - 83', '', 'JAIRO HUMBERTO ESCOBAR HIGUERA', '2217929', '', 'NO APLICA', 'NO APLICA'), ('10014', '105001013439 ', '811019800-1', 'FÉLIX DE BEDOUT MORENO', '', '2737699­4631981', '0507', '5', 'CALLE 108 # 70 ­ 40', '', 'RENÉ DE JESÚS ANDRADE', '2737699­4631981', '', 'NO APLICA', 'NO APLICA'), ('10016', '', '', 'FINCA LA MESA', '', '214 91 57 - 2149155', '0507', '', 'CALLE 118, 51A - 03', 'cesar.rodriguez@medellin.gov.co', 'CESAR AUGUSTO RODRIGEZ HENAO', '', 'carh06@yahoo.es;stefhymu0233@yahoo.es', '', ''), ('10018', '', '', 'GABRIELA MISTRAL', '', '4010510/2748300', '0219', '', 'CARRERA 28, 43 - 199', 'iegabrielamistral1@yahoo.es', 'MARIA NORA ARROYAVE ZAPATA', '', 'mnora68@hotmail.com', '', ''), ('10019', '105001000981 ', '811018722-0', 'GILBERTO ALZATE AVENDAÑO', '', '5221008­5717731', '0507', '4', 'CALLE 92 # 51A - 101', '', 'HUMBERTO ANTONIO BERMÚDEZ CARDONA', '5221008­5717731', '', 'RAMON OQUENDO ', '5717731 EXT 111'), ('10020', '', '', 'GONZALO MEJÍA', '', '8253093', '0175', '', 'CALLE 96, 105 - 63', 'jhocom@hotmail.com', 'JHOVANNY CORDOBA MURILLO', '', '', '', ''), ('10022', '', '', 'HERACLIO  MENA PADILLA', '', '8281910', '0045', '', 'CALLE 94, 92 - 34', 'ruthemirag@yahoo.com', 'RUTH EMIRA GARCES ALBORNOZ', '', '', '', ''), ('10023', '105001013340 ', '811042439-1', 'INEM JOSÉ FÉLIX DE RESTREPO', '', '2663443', '0507', '14', 'CARRERA 48 # 1 - 26', '', 'FERNANDO ANTONIO CARVAJAL OQUENDO', '2663443', '', 'JAIME MARTÍNEZ ESCOBAR', '2663138'), ('10026', '', '', 'JOSE CELESTINO MUTIS', '', '8280377', '0045', '', 'CARRERA 105, 108 - 25', 'colegiomutis1@gmail.com', 'LUZ MERY ARCILA FRANCO', '', '', '', ''), ('10027', '', '', 'JOSÉ DE LOS SANTOS ZUÑIGA', '', '8259528', '0175', '', 'CARRERA 99, 94 - 35', 'santo_zuniga@hotmail.com', 'GUILLERMO MORENO PEREA', '', 'guimope_2006@hotmail.com', '', ''), ('10028', '105212000163 ', '811017044-0', 'JOSÉ MIGUEL DE RESTREPO Y PUERTA', '', '4442872 -  2747522 - 4015592', '0219', '', 'CARRERA 50 # 50A-59 ', '', 'LUIS BERNARDO CASTAÑO ZULUAGA', '444 28 72', '', 'ESMERALDA CABALLERO ESCORCIA', '2746459'), ('10029', '', '', 'LA PAZ', '', '8262546', '0045', '', 'CARRERA 105, 108- 25', 'ielapaz@hotmail.com', 'EFREN ANTONIO PINEDA', '', 'efren02@gmail.com', '', ''), ('10030', '', '', 'LA TRINIDAD', '', '4810134/ 4810134', '0219', '', 'CALLE 41, 78C - 32', 'latrinidad@une.net.co', 'GILDARDO ALBERTO GÓMEZ', '', 'gialgove@hotmail.com', '', ''), ('10031', '', '', 'LORETO', '', '2280095 - 2390090', '0507', '', 'CARRERA 32,  34 - 06', 'ie.loretogabrielagom@medellin.gov.co', 'GUSTAVO DE JESÚS HOYOS AGUDELO', '', '', '', ''), ('10033', '', '', 'LOS ANDES', '', '8251279/8255376', '0175', '', 'CLLE 97, 105 - 33; B. KENNEDY', 'ieachigorodo@yahoo.es', 'AMANCIO MORENO SALAS', '', '', '', ''), ('10034', '', '', 'MADRE LAURA', '', '8290318', '0045', '', 'CARRERA 100, 104 - 24', 'madrelaura@gmail.com', 'DORIS ELIANA ARCILA TORO', '', '', '', ''), ('10035', '', '', 'MAESTRO ARENAS BETANCUR', '', '4719328', '0507', '', 'CALLE 98A, 65 - 120', 'ie.maestroarenas@medellin.gov.co', 'JOSÉ RAUL LOPEZ CASTAÑO', '', 'joralop59@gmail.com', '', ''), ('10037', '', '', 'MARÍA AUXILIADORA', '', '8255959', '0175', '', 'CARRERA 106, 93 - 16B', 'iemauxiliadorachigorodo@gmail.com', 'CARLOS ALBERTO URREGO QUIROZ', '', 'carlosalber_27@hotmail.com', '', ''), ('10039', '', '', 'MONSEÑOR VICTOR WIDEMAN', '', '2860010', '0507', '', 'CALLE 10C, 6B ESTE - 32', 'ie.victorwiedemann@medellin.gov.co', 'LABA NERY ECHEVERRI BUILES', '', 'anecheverrib@hotmail.com', '', ''), ('10041', '', '', 'POLICARPA SALABARRIETA', '', '8263902', '0045', '', 'CALLE 104A, 62 - 30', 'kike020805@yahoo.es', 'LUIS ENRIQUE MAZO MIRA', '', '', '', ''), ('10044', '', '', 'RURAL EL DIAMANTE', '', '', '0045', '', 'VEREDA EL DIAMANTE', 'ierudiamante@hotmail.com', 'ROBINSON MUÑOZ CORDOBA', '', 'robinsonmunozcordoba@hotmail.com', '', ''), ('10045', '', '', 'RURAL EL REPOSO', '', '8296216', '0045', '', 'CORREGIMIENTO EL REPOSO', 'ierelreposo@hotmail.com', 'AZAEL LOZANO ARBOLEDA', '', 'azael.lozano@gmail.com', '', ''), ('10046', '', '', 'RURAL PEDRONEL DURANGO', '', '8296331 -8296385', '0045', '', 'VEREDA ZUNGO ', 'calechamat2@hotmail.com', 'CARLOS ALEXIS ESTUPIÑAN CHAMAT', '', '', '', ''), ('10047', '', '', 'SALVADOR', '', '2180993', '0507', '', 'CARRERA 38, 34 - 207', 'ie.salvador@medellin.gov.co', 'ALBERTO GIRALDO JIMENEZ', '', '', '', ''), ('10050', '105154000298 ', '', 'SANTA TERESITA', '', '839 01 52 - 8392464', '0160', '', 'CALLE  19 # 6 A - 6', '', 'RAMÓN DAVID JIMÉNEZ OCHOA', '8390152 - 8392464', '', 'RAFAEL ENRIQUE HERRERA', '3137006368'), ('10051', '', '', 'SEBASTIAN DE BELALCAZAR', '', '2674506 EXT 103', '0507', '', 'CALLE 103 EE, 63D - 85', 'sedebelalcazar2009@gmail.com', 'GLORIA PATRICIA CORREA MADRIGAL', '', 'glopacom29@gmail.com', '', ''), ('10055', '', '', 'TRICENTENARIO', '', '4713914', '0507', '', 'CARRERA 63, 94A - 623', 'evelio.ospina@medellin.gov.co', 'EVELIO OSPINA GRISALES', '', ' ', '', ''), ('10056', '', '', 'VILLANUEVA', '', '4015993 - 2745561', '0219', '', 'CALLE 56,  56 - 155', 'colegio_villanueva@hotmail.com', 'MARTA LUZ CADAVID BUSTAMANTE', '', 'maluzak@hotmail.com', '', '');
COMMIT;

-- ----------------------------
-- Table structure for `item_evaluacion`
-- ----------------------------
DROP TABLE IF EXISTS `item_evaluacion`;
CREATE TABLE `item_evaluacion` (
`id_item_evaluacion`  int(11) NOT NULL AUTO_INCREMENT ,
`id_evidencia`  int(11) NOT NULL ,
`id_criterio_evaluacion`  int(11) NOT NULL ,
`id_rubrica`  int(11) NOT NULL ,
`descripcion_item`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id_item_evaluacion`),
FOREIGN KEY (`id_criterio_evaluacion`) REFERENCES `criterio_evaluacion` (`id_criterio_evaluacion`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`id_evidencia`) REFERENCES `evidencia` (`id_evidencia`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`id_rubrica`) REFERENCES `rubricas` (`id_rubrica`) ON DELETE RESTRICT ON UPDATE RESTRICT,
UNIQUE INDEX `indice_itemEvaluacion` (`id_criterio_evaluacion`, `id_evidencia`, `id_rubrica`) USING BTREE ,
INDEX `evidencia` (`id_evidencia`) USING BTREE ,
INDEX `rubrica` (`id_rubrica`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=3

;

-- ----------------------------
-- Records of item_evaluacion
-- ----------------------------
BEGIN;
INSERT INTO `item_evaluacion` VALUES ('1', '1', '2', '4', 'No escribe correctamente expresiones algebraicas, aplicadas al diseño de algoritmos.'), ('2', '1', '1', '4', 'No escribe correctamente expresiones algebraicas, aplicadas al diseño de algoritmos.');
COMMIT;

-- ----------------------------
-- Table structure for `matricula`
-- ----------------------------
DROP TABLE IF EXISTS `matricula`;
CREATE TABLE `matricula` (
`Codigo`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`IEM`  varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`DocEst`  varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`TipoDoc`  varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`YEAR`  varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`CodEnt`  varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Programa`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`ESTADO`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`Codigo`),
FOREIGN KEY (`IEM`) REFERENCES `institucionesm` (`Codigo`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`DocEst`, `TipoDoc`) REFERENCES `estudiantes` (`Documento`, `TipoDoc`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `IEM` (`IEM`) USING BTREE ,
INDEX `matricula_estudiantes` (`DocEst`, `TipoDoc`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of matricula
-- ----------------------------
BEGIN;
INSERT INTO `matricula` VALUES ('20071042', '10007', '91052900722', 'T.I.', '2007', '02', '01', 'ACTIVO'), ('20071049', '10007', '91111350146', 'T.I.', '2007', '02', '01', 'ACTIVO'), ('20071261', '10023', '12926985', 'R.C.', '2007', '02', '01', 'ACTIVO'), ('20071263', '10023', '16357527', 'R.C.', '2007', '02', '01', 'ACTIVO'), ('20071265', '10023', '16774195', 'R.C.', '2007', '02', '01', 'ACTIVO'), ('20071266', '10023', '16817049', 'R.C.', '2007', '02', '01', 'ACTIVO'), ('20071267', '10023', '16938742', 'R.C.', '2007', '02', '01', 'ACTIVO'), ('20071269', '10023', '21186040', 'R.C.', '2007', '02', '01', 'ACTIVO'), ('20071272', '10023', '90091371021', 'T.I.', '2007', '02', '01', 'ACTIVO'), ('20071275', '10023', '91022501173', 'T.I.', '2007', '02', '01', 'ACTIVO'), ('20071277', '10023', '91050202963', 'T.I.', '2007', '02', '01', 'ACTIVO'), ('20071283', '10023', '91060900545', 'T.I.', '2007', '02', '01', 'ACTIVO'), ('20071284', '10023', '91061950228', 'T.I.', '2007', '02', '01', 'ACTIVO'), ('20071285', '10023', '91062202020', 'T.I.', '2007', '02', '01', 'ACTIVO'), ('20071287', '10023', '91062721362', 'T.I.', '2007', '02', '01', 'ACTIVO'), ('20071293', '10023', '91080900584', 'T.I.', '2007', '02', '01', 'ACTIVO'), ('20071298', '10023', '91090609829', 'T.I.', '2007', '02', '01', 'ACTIVO'), ('20071302', '10023', '91092252055', 'T.I.', '2007', '02', '01', 'ACTIVO'), ('20071305', '10023', '91110204545', 'T.I.', '2007', '02', '01', 'ACTIVO'), ('20071315', '10023', '92011904892', 'T.I.', '2007', '02', '01', 'ACTIVO'), ('20071323', '10023', '92022605820', 'T.I.', '2007', '02', '01', 'ACTIVO'), ('20071324', '10023', '92022755708', 'T.I.', '2007', '02', '01', 'ACTIVO'), ('20071326', '10023', '92030771607', 'T.I.', '2007', '02', '01', 'ACTIVO'), ('20071328', '10023', '92031254380', 'T.I.', '2007', '02', '01', 'ACTIVO'), ('20071329', '10023', '92031655511', 'T.I.', '2007', '02', '01', 'ACTIVO'), ('20071332', '10023', '92032405500', 'T.I.', '2007', '02', '01', 'ACTIVO'), ('20071337', '10023', '92052252700', 'T.I.', '2007', '02', '01', 'ACTIVO'), ('20071338', '10023', '92052676721', 'T.I.', '2007', '02', '01', 'ACTIVO'), ('20071345', '10023', '92110558980', 'T.I.', '2007', '02', '01', 'ACTIVO');
COMMIT;

-- ----------------------------
-- Table structure for `modulo_docente`
-- ----------------------------
DROP TABLE IF EXISTS `modulo_docente`;
CREATE TABLE `modulo_docente` (
`id_modulo_docente`  int(11) NOT NULL AUTO_INCREMENT ,
`Id_modulo`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`id_docente`  varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id_modulo_docente`),
FOREIGN KEY (`id_docente`) REFERENCES `personal` (`Documento`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`Id_modulo`) REFERENCES `modulos` (`Codigo`) ON DELETE RESTRICT ON UPDATE RESTRICT,
UNIQUE INDEX `indice_modu_doce` (`Id_modulo`, `id_docente`) USING BTREE ,
INDEX `docente` (`id_docente`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=4

;

-- ----------------------------
-- Records of modulo_docente
-- ----------------------------
BEGIN;
INSERT INTO `modulo_docente` VALUES ('1', 'ING00812', '10010'), ('2', 'ING00817', '10010'), ('3', 'ING00817', '22229765');
COMMIT;

-- ----------------------------
-- Table structure for `modulo_norma`
-- ----------------------------
DROP TABLE IF EXISTS `modulo_norma`;
CREATE TABLE `modulo_norma` (
`id_modulo_norma`  int(11) NOT NULL AUTO_INCREMENT ,
`id_modulo`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`id_norma`  int(11) NOT NULL ,
PRIMARY KEY (`id_modulo_norma`),
FOREIGN KEY (`id_modulo`) REFERENCES `modulos` (`Codigo`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`id_norma`) REFERENCES `norma` (`id_norma`) ON DELETE RESTRICT ON UPDATE RESTRICT,
UNIQUE INDEX `indice_mod_norma` (`id_modulo`, `id_norma`) USING BTREE ,
INDEX `norma1` (`id_norma`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=7

;

-- ----------------------------
-- Records of modulo_norma
-- ----------------------------
BEGIN;
INSERT INTO `modulo_norma` VALUES ('6', 'ING00812', '2'), ('1', 'ING00812', '3'), ('2', 'ING00817R', '2'), ('3', 'ING00821A', '3');
COMMIT;

-- ----------------------------
-- Table structure for `modulos`
-- ----------------------------
DROP TABLE IF EXISTS `modulos`;
CREATE TABLE `modulos` (
`Codigo`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`Descripcion`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`Grado`  varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`YearI`  varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`YearF`  varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`Codigo`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of modulos
-- ----------------------------
BEGIN;
INSERT INTO `modulos` VALUES ('1', 'Desarrollo del Pensamiento Analitico y Sistemico 1', '11', '2010', '2020'), ('2', 'Construcción de Elementos de software 1', '10', '2009', ''), ('ING00812', 'Identificar el Ciclo de Vida del Software', '10', '2008', ''), ('ING00815', 'Desarrollo de Habilidades Comunicativas y de negociación', '10', '2008', '2011'), ('ING00817', 'Desarrollo del pensamiento analítico y sistémico 1(A-B)', '10', '2009', ''), ('ING00817R', 'Repaso Desarrollo del pensamiento analítico y sistémico 1(A-B)', '11', '2009', ''), ('ING00819', 'Definicion de Requerimientos', '11', '2010', '2012'), ('ING00821A', 'Construcción de Elementos de software 1', '10', '2009', ''), ('ING00821B', 'Construcción de elementos de software 1', '11', '2008', ''), ('ING00824', 'Construcción de Informes Utilizando Herramientas Ofimáticas', '10', '2008', ''), ('ING00825', 'Construcción de elementos de software Web', '11', '2009', ''), ('ING00827', 'Identificacion de Estandares para la Documentacion y Construcción de Informes ', '10', '2008', ''), ('ING00828', 'Procesos de Soporte a Usuarios de Aplicaciones y de Software a Usuario Final', '11', '2009', '2011'), ('ING00829', 'Construcción de bases de datos ', '11', '2008', ''), ('ING00882', 'Interpretacion de Requerimientos', '11', '2012', ''), ('MED00001', 'Proyecto Integrador', '10', '2009', ''), ('MED00002', 'Proyecto Integrador', '11', '2009', ''), ('MED00004', 'Construcción interfaces Web', '11', '2009', '2011'), ('MED00005', 'Instalación de Software de Base y Elementos de Hardware', '11', '2009', '2011'), ('MED00006', 'Pruebas Repetitivas y Despliegue del Sistema de Información', '11', '2009', '2011'), ('MED00007', 'Estrategias Metodológicas de la Carrera', '10', '2009', '2011'), ('MED00008', 'Comprensión de Inglés técnico', '10', '2009', '2011');
COMMIT;

-- ----------------------------
-- Table structure for `modulos_matricula`
-- ----------------------------
DROP TABLE IF EXISTS `modulos_matricula`;
CREATE TABLE `modulos_matricula` (
`matricula_Codigo`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`personal_Documento`  varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`CodMat`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`ID_DIM`  int(11) NULL DEFAULT NULL ,
`NotaDef`  double NULL DEFAULT NULL ,
`Recup`  double NULL DEFAULT NULL ,
PRIMARY KEY (`matricula_Codigo`, `CodMat`),
FOREIGN KEY (`personal_Documento`) REFERENCES `personal` (`Documento`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`matricula_Codigo`) REFERENCES `matricula` (`Codigo`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `doc_personal` (`personal_Documento`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of modulos_matricula
-- ----------------------------
BEGIN;
INSERT INTO `modulos_matricula` VALUES ('20071263', '22229765', 'ING7687698', '0', '0', '0');
COMMIT;

-- ----------------------------
-- Table structure for `norma`
-- ----------------------------
DROP TABLE IF EXISTS `norma`;
CREATE TABLE `norma` (
`id_norma`  int(11) NOT NULL AUTO_INCREMENT ,
`codigo_norma`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`descripcion`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`estado`  int(1) NULL DEFAULT NULL ,
PRIMARY KEY (`id_norma`),
FOREIGN KEY (`estado`) REFERENCES `estado` (`codigo`) ON DELETE RESTRICT ON UPDATE CASCADE,
UNIQUE INDEX `codigo_norma` (`codigo_norma`) USING BTREE ,
INDEX `fk_estado` (`estado`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=9

;

-- ----------------------------
-- Records of norma
-- ----------------------------
BEGIN;
INSERT INTO `norma` VALUES ('1', 'CDO-005', 'Desarrollar una ...', '0'), ('2', 'CDO-002', 'Desarrollar el sistema que cumpla con los requerimientos de la solución informática', '1'), ('3', 'CDO-003', 'Desarrollar el sistema que cumpla con los requerimientos de la solución informática', '1'), ('4', 'CDO-004', 'hola mundo', '1'), ('5', 'null', 'null', '1'), ('6', 'dsf', 'sdf', '1'), ('7', 'EWQ3', 'hola hola', null), ('8', 'asdf', 'fasdf', null);
COMMIT;

-- ----------------------------
-- Table structure for `normas_elementos`
-- ----------------------------
DROP TABLE IF EXISTS `normas_elementos`;
CREATE TABLE `normas_elementos` (
`norma_elemento`  int(11) NOT NULL AUTO_INCREMENT ,
`id_norma`  int(11) NOT NULL ,
`id_elemento`  int(11) NOT NULL ,
PRIMARY KEY (`norma_elemento`),
FOREIGN KEY (`id_elemento`) REFERENCES `elementos` (`id_elemento`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`id_norma`) REFERENCES `norma` (`id_norma`) ON DELETE RESTRICT ON UPDATE RESTRICT,
UNIQUE INDEX `indice_elemento_norma` (`id_norma`, `id_elemento`) USING BTREE ,
INDEX `elemento` (`id_elemento`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=8

;

-- ----------------------------
-- Records of normas_elementos
-- ----------------------------
BEGIN;
INSERT INTO `normas_elementos` VALUES ('1', '1', '2'), ('5', '2', '1'), ('7', '2', '2'), ('4', '2', '3'), ('3', '3', '1');
COMMIT;

-- ----------------------------
-- Table structure for `personal`
-- ----------------------------
DROP TABLE IF EXISTS `personal`;
CREATE TABLE `personal` (
`Documento`  varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`Nombre1`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Nombre2`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Apellido1`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Apellido2`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Fecha_Nac`  datetime NULL DEFAULT NULL ,
`Cargo`  varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Telefono`  varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Celular`  varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`email`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Posgrado`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Est_Univer`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Diplomado_Doc`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Exp_Media`  double NULL DEFAULT 0 ,
`Exp_ArtPoli`  double NULL DEFAULT 0 ,
`Exp_Universit`  double NULL DEFAULT 0 ,
`Clave`  varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of personal
-- ----------------------------
BEGIN;
INSERT INTO `personal` VALUES ('1017173652', 'Andrea', null, 'Manrique', 'Toro', '2012-10-04 00:00:00', 'Docente', '3669148', '3163231044', 'andy-242@hotmail.com', null, 'Tecnóloga en Sistematización De   Datos', null, null, '2', null, '10171736'), ('16946156', 'Benhur', 'Lewis', 'Gutiérrez', 'Suarez', null, 'Docente', '3677499', '3104079363', 'ben865@hotmail.com', null, null, null, null, null, null, '16946156'), ('22117146', 'Diana', 'Cecilia', 'Espinosa', 'Espinosa', null, 'Asesor de PPI', '2692922', '3007456151', 'dices72@gmail.com', null, null, null, null, null, null, '22117146'), ('22229765', 'Marta', 'Inés', 'Mendoza', 'Puerta', null, 'Docente', '2112049', null, null, null, null, null, null, null, null, '22229765'), ('3443754', 'Manuel', 'Acosta', 'Cuello', null, '2015-10-01 00:00:00', 'Docente', null, '3113753387', 'aminadad1966@hotmail.com', null, null, null, null, null, null, '3443754'), ('32182687', 'Erika', 'Andrea', 'Herrera', null, null, 'Asistente administrativa', '3454459', null, null, null, null, null, null, null, null, '32182687'), ('32359719', 'María', 'Eugenia', 'Valencia', 'Galeano', null, 'Monitor', '5730810', null, null, null, null, null, null, null, null, '32359719'), ('36755913', 'Doria', 'Andrea', 'Montenegro', 'Portilla', null, 'Docente', null, null, null, 'Especialista en Pedagogía', 'Ingeniera de Sistemas', null, null, null, null, '36755913'), ('39188339', 'Yurley', 'Teresa', 'Torres', 'Dávila', null, 'Docente', '4345239', '3128837681', 'ydavilatorres@gmail.com', null, null, null, null, null, null, '39188339'), ('40329106', 'Diana', 'Carolina', 'Mora', 'Parrado', null, 'Coordinadora', null, null, null, null, 'Ingeniera de Sistemas', null, null, null, null, '40329106'), ('42692889', 'Gisela', 'Gliceth', 'Gil', 'Gómez', '2027-04-01 00:00:00', 'Docente', '3007751995', '3144306350', 'giselagil4@yahoo.es', null, null, null, null, null, null, '42692889'), ('42881623', 'Martha', 'Helena', 'Duque', 'Gaviria', null, 'Asesor PPI', null, null, null, null, 'Ingeniera de Sistemas', null, null, null, null, '42881623'), ('43151931', 'Durley', 'Cecilia', 'López', 'Álzate', null, 'Docente', null, '3146968499', 'durley@gmail.com', null, null, null, null, null, null, '43151931'), ('43151932', 'Gloria', 'Amparo', 'Lora', 'Patiño', '2001-12-01 00:00:00', 'Docente', '2910063', '3206784500', 'gloriaamparolora@gmail.com', 'Esudiante Especialización En Ingeniería De Software', 'Ingeniero Informático', null, null, '2', null, '43151932'), ('43752425', 'Diana', 'Marcela', 'Parra', null, null, 'Docente', null, '3004544500', 'dianamp74@gmail.com', null, null, null, null, null, null, '43752425'), ('43759235', 'Olga', 'Patricia', 'Restrepo', 'Gómez', '2012-09-19 00:00:00', 'Docente', '2925961', '3157879590', 'restrepopatricia3@gmail.com', 'Estudiante Especialización En Administración De La Tecnología Educativa', 'Ingeniería De Sistemas', null, '2', '6', null, '43759235'), ('43837138', 'Isleny', 'Rincón', 'Monsalve', null, '2027-07-01 00:00:00', 'Docente', null, '3155558194', 'rislenyama@yahoo.es', null, null, null, null, null, null, '43837138'), ('43866224', 'Liliana', 'Andrea', 'Montoya', null, null, 'Apoyo logístico', null, '3017302265', 'mediatecnica@elpoli.edu.co', null, null, null, null, null, null, '43866224'), ('43914570', 'Diana', 'Patricia', 'Bedoya', 'Ruiz', '2012-05-17 00:00:00', 'Docente', '4143804', '3003374191', 'dianabedoya570@hotmail.com', 'Estudiante Maestria En Ingenieria', 'Ingeniería De Sistemas', 'Diplomado Docencia Universitaria - Poli', null, '4', '2.5', '43914570'), ('70050280', 'Leonel', 'Osorno', 'Restrepo', null, null, 'Docente', '4413236', null, null, null, null, null, null, null, null, '70050280'), ('70068581', 'Edgar', 'Eusebio', 'López', 'Murillo', null, 'Docente', '2395232', null, null, null, null, null, null, null, null, '70068581'), ('70109227', 'Héctor', 'Darío', 'Cardona', 'Arenas', '2012-06-16 00:00:00', 'Docente', '2284170', '3148770759', 'hectordariocardonaarenas6@gmail.com', null, 'Ingeniero De Sistemas', null, '2', '6', '1.5', '70109227'), ('70510558', 'John', 'Jairo', 'Monsalve', 'Restrepo', null, 'Docente', '3010496', null, null, null, null, null, null, null, null, '70510558'), ('70663541', 'Rubén', 'Darío', 'Zuleta', 'Arango', null, 'Docente', '3313266', null, null, null, null, null, null, null, null, '70663541'), ('71264811', 'Jonatán', 'Harrys', 'García', 'Ceballos', null, 'Docente', '2656435', null, null, null, null, null, null, null, null, '71264811'), ('71291385', 'Juan', 'Gonzalo', 'Rojas', 'González', null, 'Docente', '3727369', null, null, null, null, null, null, null, null, '71291385'), ('71762841', 'Orlando', 'Isaza', 'Estrada', null, null, 'Coordinador', null, '3006005742', 'oisaza@gmail.com', null, null, null, null, null, null, '71762841'), ('8105139', 'Fernando', 'Jaime', 'Sarmiento', 'Palacio', null, 'Monitor', '2635162', null, null, null, null, null, null, null, null, '8105139'), ('8106629', 'Juan', 'Sebastián', 'Montoya', 'Jaramillo', null, 'Monitor', '2377775', null, null, null, null, null, null, null, null, '8106629'), ('8127268', 'Carlos', 'Alberto', 'Cerpa', 'González', null, 'Docente', null, '3012523383', 'carloscerpa77@hotmail.com', null, null, null, null, null, null, '8127268'), ('8161796', 'Carlos', 'Andrés', 'Giraldo', 'Hernández', null, 'Docente', '5825204', '3012523370', 'carlosgiraldoh@misena.edu.co, carlosgiraldopoli@gmail.com - ', null, null, null, null, null, null, '8161796'), ('8472131', 'Juan', 'Carlos', 'Pérez', 'Pérez', '2012-03-13 00:00:00', 'Docente', '2798562', '3002856046', 'juanperezu@gmail.com', null, 'Tecnólogo En Sistematización De   Datos', null, '2', '5', null, '8472131'), ('94533535', 'Diego', 'Iván', 'Cruz', 'Ordiéres', '2012-06-04 00:00:00', 'Docente', '2343766', '3017546859', 'diegocruzo@gmail.com', null, 'Licenciado En Informática', null, '1', null, '1.5', '94533535'), ('98499849', 'Carlosenrique', 'Nicolás', 'Monsalve', 'Pérez', null, 'Asesor PPI', null, null, null, 'Especialista en Formulación y Evaluación de Proyectos públicos y Privados', 'Ingeniero Industrial', null, null, null, null, '98499849'), ('98520597', 'Luis', 'Fernando', 'Echeverri', 'Echeverri', null, 'Docente', '5855994', '3117811072', 'echeverri88@gmail.com', null, null, null, null, null, null, '98520597'), ('98547737', 'Jorge', 'Hernán', 'Suaza', 'Jiménez', '2012-07-08 00:00:00', 'Docente', '3312188', '3108423054', 'jorgesuaza76@gmail.com', 'Esudiante Especialización En Ingeniería De Software', 'Ingeniero Informático', null, null, '5', '1', '98547737'), ('98557143', 'Jaime', 'Mauricio', 'Córdoba', 'Caro', '2012-06-06 00:00:00', 'Docente', '4825953', '3167793836', 'jmcordobac10@yahoo.es ', 'Estudiante Especialización En Administración De La Tecnología Educativa', 'Ingeniero Informático', null, '5', '2', null, '98557143'), ('98563742', 'Manuel', 'Alexander', 'Valbuena', 'Henao', null, 'Docente', null, null, null, null, 'Ingeniero Informático', null, null, null, null, '98563742'), ('98577292', 'Luis', 'Norberto', 'Zapata', 'Puerta', null, 'Docente', '5213714', null, null, null, null, null, null, null, null, '98577292'), ('98619298', 'John', 'Fredy', 'Velásquez', null, '2011-10-01 00:00:00', 'Docente', null, '3104546193', 'jhonfve@hotmail.com', null, null, null, null, null, null, '98619298'), ('98629826', 'Gustavo', 'Hernán', 'Macías', 'Suarez', null, 'Docente', null, '3148744041', 'gusmaci7@gmail.com', null, null, null, null, null, null, '98629826'), ('98643327', 'Luis', 'Alberto', 'Barrios', 'Ospina', null, 'Docente', null, null, null, null, 'Ingeniero Informático', null, null, null, null, '98643327'), ('98654593', 'Orlando', 'Teófilo', 'Fadul', 'Vásquez', null, 'Docente', null, '3116473023', 'otfadul@hotmail.com', null, null, null, null, null, null, '98654593'), ('98662503', 'Rafael', 'Evelio', 'Puerta', 'Mejía', '2013-07-24 00:00:00', 'Docente', '3108403046', '3116101812', 'rraffitto@hotmail.com - rraffitto@gmail.com', null, null, null, null, null, null, '98662503'), ('98663773', 'Juan', 'Edward', 'Álvarez', 'Ateortua', null, 'Monitor', null, '3007785903', null, null, null, null, null, null, null, '98663773'), ('98670692', 'Juan', 'Diego', 'Porras', 'Vanegas', null, 'Docente', '3320809', '3127997379', 'sk8porras@gmail.com', null, 'Ingeniero Informático', null, null, null, null, '98670692'), ('98707028', 'Oscar', 'Andrés', 'Urrego', 'Velásquez', null, 'Monitor', '2377775', null, null, null, null, null, null, null, null, '98707028'), ('98570507', 'Fredy', 'Alexander', 'Ceballos', 'Cardona', null, 'Asesor PPI', null, null, null, null, 'Ingeniero de Sistemas', null, null, null, null, '98570507'), ('10001', 'Jesús', 'Albeiro', 'Zuluaga', 'Duque', null, 'Docente', null, null, null, null, null, null, '0', '0', '0', '10001'), ('10002', 'Carlos', 'David', 'Posada', 'Fernández', null, 'Docente', null, null, null, null, null, null, '0', '0', '0', '10002'), ('10010', 'Docente', 'IEM', null, null, null, 'Docente', null, null, null, null, null, null, '0', '0', '0', '10010'), ('43577911', 'Yolanda', null, 'Villa', 'López', '2012-08-12 00:00:00', 'Coordinador', '2123707', '3154242138', 'yolavillal@gmail.com', null, 'Ingeniera Informática', 'Diplomado Docencia Universitaria - Poli', null, '0.5', '1.5', '43577911');
COMMIT;

-- ----------------------------
-- Table structure for `resultado_aprendizaje`
-- ----------------------------
DROP TABLE IF EXISTS `resultado_aprendizaje`;
CREATE TABLE `resultado_aprendizaje` (
`id_resultado`  int(11) NOT NULL AUTO_INCREMENT ,
`codigo_resultado`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`descripcion`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id_resultado`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=5

;

-- ----------------------------
-- Records of resultado_aprendizaje
-- ----------------------------
BEGIN;
INSERT INTO `resultado_aprendizaje` VALUES ('1', 'RTO-001', 'Identifica la secuencia de pasos lógicos o acciones a realizar a partir de la interpretación del diseño del sistema o caso de estudio, aplicando las diferentes estructuras de decisión y control que respondan a los requerimientos del problema'), ('2', 'RTO-002', 'Identifica la secuencia de pasos lógicos o acciones a realizar a partir de la interpretación del diseño del sistema o caso de estudio, aplicando las diferentes estructuras de decisión y control que respondan a los requerimientos del problema'), ('3', 'RTO-003', 'Identifica la secuencia de pasos lógicos o acciones a realizar a partir de la interpretación del diseño del sistema o caso de estudio, aplicando las diferentes estructuras de decisión y control que respondan a los requerimientos del problema'), ('4', 'RTO-004', 'Identifica la secuencia de pasos lógicos o acciones a realizar a partir de la interpretación del diseño del sistema o caso de estudio, aplicando las diferentes estructuras de decisión y control que respondan a los requerimientos del problema');
COMMIT;

-- ----------------------------
-- Table structure for `resultado_modulo`
-- ----------------------------
DROP TABLE IF EXISTS `resultado_modulo`;
CREATE TABLE `resultado_modulo` (
`id_resul_modulo`  int(11) NOT NULL AUTO_INCREMENT ,
`id_modulo`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`id_resultado`  int(11) NOT NULL ,
PRIMARY KEY (`id_resul_modulo`),
FOREIGN KEY (`id_modulo`) REFERENCES `modulos` (`Codigo`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`id_resultado`) REFERENCES `resultado_aprendizaje` (`id_resultado`) ON DELETE RESTRICT ON UPDATE RESTRICT,
UNIQUE INDEX `indice_resultado_modulo` (`id_modulo`, `id_resultado`) USING BTREE ,
INDEX `resultado` (`id_resultado`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=6

;

-- ----------------------------
-- Records of resultado_modulo
-- ----------------------------
BEGIN;
INSERT INTO `resultado_modulo` VALUES ('4', 'ING00812', '1'), ('3', 'ING00819', '3'), ('1', 'ING00821B', '2'), ('2', 'ING00821B', '3'), ('5', 'ING00824', '4');
COMMIT;

-- ----------------------------
-- Table structure for `rubricas`
-- ----------------------------
DROP TABLE IF EXISTS `rubricas`;
CREATE TABLE `rubricas` (
`id_rubrica`  int(11) NOT NULL AUTO_INCREMENT ,
`descripcion`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`valor`  int(11) NOT NULL ,
PRIMARY KEY (`id_rubrica`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=5

;

-- ----------------------------
-- Records of rubricas
-- ----------------------------
BEGIN;
INSERT INTO `rubricas` VALUES ('1', 'Deficiente', '0'), ('2', 'Insuficiente', '1'), ('3', 'Bueno', '3'), ('4', 'Aceptable', '2');
COMMIT;

-- ----------------------------
-- Table structure for `tipo_evidencias`
-- ----------------------------
DROP TABLE IF EXISTS `tipo_evidencias`;
CREATE TABLE `tipo_evidencias` (
`id_tipo_evidencia`  int(11) NOT NULL AUTO_INCREMENT ,
`descripcion`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id_tipo_evidencia`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=4

;

-- ----------------------------
-- Records of tipo_evidencias
-- ----------------------------
BEGIN;
INSERT INTO `tipo_evidencias` VALUES ('1', 'Evidencia de Conocimiento'), ('2', 'Evidencia de Desempeño'), ('3', 'Evidencia de Producto');
COMMIT;

-- ----------------------------
-- Auto increment value for `criterio_evaluacion`
-- ----------------------------
ALTER TABLE `criterio_evaluacion` AUTO_INCREMENT=8;

-- ----------------------------
-- Auto increment value for `elementos`
-- ----------------------------
ALTER TABLE `elementos` AUTO_INCREMENT=5;

-- ----------------------------
-- Auto increment value for `encabezado_evaluacion`
-- ----------------------------
ALTER TABLE `encabezado_evaluacion` AUTO_INCREMENT=11;

-- ----------------------------
-- Auto increment value for `evalua_criterio_estudiante`
-- ----------------------------
ALTER TABLE `evalua_criterio_estudiante` AUTO_INCREMENT=7;

-- ----------------------------
-- Auto increment value for `evidencia`
-- ----------------------------
ALTER TABLE `evidencia` AUTO_INCREMENT=4;

-- ----------------------------
-- Auto increment value for `item_evaluacion`
-- ----------------------------
ALTER TABLE `item_evaluacion` AUTO_INCREMENT=3;

-- ----------------------------
-- Auto increment value for `modulo_docente`
-- ----------------------------
ALTER TABLE `modulo_docente` AUTO_INCREMENT=4;

-- ----------------------------
-- Auto increment value for `modulo_norma`
-- ----------------------------
ALTER TABLE `modulo_norma` AUTO_INCREMENT=7;

-- ----------------------------
-- Auto increment value for `norma`
-- ----------------------------
ALTER TABLE `norma` AUTO_INCREMENT=9;

-- ----------------------------
-- Auto increment value for `normas_elementos`
-- ----------------------------
ALTER TABLE `normas_elementos` AUTO_INCREMENT=8;

-- ----------------------------
-- Auto increment value for `resultado_aprendizaje`
-- ----------------------------
ALTER TABLE `resultado_aprendizaje` AUTO_INCREMENT=5;

-- ----------------------------
-- Auto increment value for `resultado_modulo`
-- ----------------------------
ALTER TABLE `resultado_modulo` AUTO_INCREMENT=6;

-- ----------------------------
-- Auto increment value for `rubricas`
-- ----------------------------
ALTER TABLE `rubricas` AUTO_INCREMENT=5;

-- ----------------------------
-- Auto increment value for `tipo_evidencias`
-- ----------------------------
ALTER TABLE `tipo_evidencias` AUTO_INCREMENT=4;
