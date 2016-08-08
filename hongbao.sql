/*
Navicat MySQL Data Transfer

Source Server         : vm
Source Server Version : 50632
Source Host           : localhost:3306
Source Database       : hongbao

Target Server Type    : MYSQL
Target Server Version : 50632
File Encoding         : 65001

Date: 2016-08-08 16:19:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `account` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(20) DEFAULT NULL,
  `val` double(15,2) NOT NULL DEFAULT '0.00',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 普通账户 1系统账户',
  PRIMARY KEY (`account`),
  KEY `a_uid` (`uid`),
  CONSTRAINT `a_uid` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=11579 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('0', null, '0.00', '1');
INSERT INTO `account` VALUES ('11176', 'test1', '9739.61', '0');
INSERT INTO `account` VALUES ('11177', 'test16', '3.26', '0');
INSERT INTO `account` VALUES ('11178', 'test14', '19.90', '0');
INSERT INTO `account` VALUES ('11179', 'test3', '5.93', '0');
INSERT INTO `account` VALUES ('11180', 'test2', '19.46', '0');
INSERT INTO `account` VALUES ('11181', 'test41', '0.00', '0');
INSERT INTO `account` VALUES ('11182', 'test24', '18.22', '0');
INSERT INTO `account` VALUES ('11183', 'test28', '0.38', '0');
INSERT INTO `account` VALUES ('11184', 'test13', '10.73', '0');
INSERT INTO `account` VALUES ('11185', 'test23', '0.82', '0');
INSERT INTO `account` VALUES ('11186', 'test4', '22.17', '0');
INSERT INTO `account` VALUES ('11187', 'test15', '0.72', '0');
INSERT INTO `account` VALUES ('11188', 'test39', '0.00', '0');
INSERT INTO `account` VALUES ('11189', 'test26', '7.19', '0');
INSERT INTO `account` VALUES ('11190', 'test11', '10.57', '0');
INSERT INTO `account` VALUES ('11191', 'test32', '0.00', '0');
INSERT INTO `account` VALUES ('11192', 'test25', '16.76', '0');
INSERT INTO `account` VALUES ('11193', 'test36', '0.00', '0');
INSERT INTO `account` VALUES ('11194', 'test9', '7.40', '0');
INSERT INTO `account` VALUES ('11195', 'test40', '0.00', '0');
INSERT INTO `account` VALUES ('11196', 'test33', '0.00', '0');
INSERT INTO `account` VALUES ('11197', 'test42', '0.00', '0');
INSERT INTO `account` VALUES ('11198', 'test35', '0.00', '0');
INSERT INTO `account` VALUES ('11199', 'test19', '17.87', '0');
INSERT INTO `account` VALUES ('11200', 'test31', '0.00', '0');
INSERT INTO `account` VALUES ('11201', 'test34', '0.00', '0');
INSERT INTO `account` VALUES ('11202', 'test44', '0.00', '0');
INSERT INTO `account` VALUES ('11203', 'test21', '7.86', '0');
INSERT INTO `account` VALUES ('11204', 'test7', '14.07', '0');
INSERT INTO `account` VALUES ('11205', 'test18', '0.65', '0');
INSERT INTO `account` VALUES ('11206', 'test6', '4.10', '0');
INSERT INTO `account` VALUES ('11207', 'test29', '1.09', '0');
INSERT INTO `account` VALUES ('11208', 'test38', '0.00', '0');
INSERT INTO `account` VALUES ('11209', 'test37', '0.00', '0');
INSERT INTO `account` VALUES ('11210', 'test20', '20.00', '0');
INSERT INTO `account` VALUES ('11211', 'test22', '7.38', '0');
INSERT INTO `account` VALUES ('11212', 'test8', '8.22', '0');
INSERT INTO `account` VALUES ('11213', 'test27', '7.89', '0');
INSERT INTO `account` VALUES ('11214', 'test43', '0.00', '0');
INSERT INTO `account` VALUES ('11215', 'test12', '0.60', '0');
INSERT INTO `account` VALUES ('11216', 'test17', '19.11', '0');
INSERT INTO `account` VALUES ('11217', 'test10', '5.62', '0');
INSERT INTO `account` VALUES ('11218', 'test5', '2.01', '0');
INSERT INTO `account` VALUES ('11219', 'test30', '0.41', '0');
INSERT INTO `account` VALUES ('11220', 'test45', '0.00', '0');
INSERT INTO `account` VALUES ('11221', 'test46', '0.00', '0');
INSERT INTO `account` VALUES ('11222', 'test47', '0.00', '0');
INSERT INTO `account` VALUES ('11223', 'test48', '0.00', '0');
INSERT INTO `account` VALUES ('11224', 'test49', '0.00', '0');
INSERT INTO `account` VALUES ('11225', 'test50', '0.00', '0');
INSERT INTO `account` VALUES ('11226', 'test51', '0.00', '0');
INSERT INTO `account` VALUES ('11227', 'test52', '0.00', '0');
INSERT INTO `account` VALUES ('11228', 'test53', '0.00', '0');
INSERT INTO `account` VALUES ('11229', 'test54', '0.00', '0');
INSERT INTO `account` VALUES ('11230', 'test55', '0.00', '0');
INSERT INTO `account` VALUES ('11231', 'test56', '0.00', '0');
INSERT INTO `account` VALUES ('11232', 'test57', '0.00', '0');
INSERT INTO `account` VALUES ('11233', 'test59', '0.00', '0');
INSERT INTO `account` VALUES ('11234', 'test58', '0.00', '0');
INSERT INTO `account` VALUES ('11235', 'test60', '0.00', '0');
INSERT INTO `account` VALUES ('11236', 'test61', '0.00', '0');
INSERT INTO `account` VALUES ('11237', 'test62', '0.00', '0');
INSERT INTO `account` VALUES ('11238', 'test63', '0.00', '0');
INSERT INTO `account` VALUES ('11239', 'test64', '0.00', '0');
INSERT INTO `account` VALUES ('11240', 'test65', '0.00', '0');
INSERT INTO `account` VALUES ('11241', 'test67', '0.00', '0');
INSERT INTO `account` VALUES ('11242', 'test66', '0.00', '0');
INSERT INTO `account` VALUES ('11243', 'test68', '0.00', '0');
INSERT INTO `account` VALUES ('11244', 'test69', '0.00', '0');
INSERT INTO `account` VALUES ('11245', 'test70', '0.00', '0');
INSERT INTO `account` VALUES ('11246', 'test86', '0.00', '0');
INSERT INTO `account` VALUES ('11247', 'test147', '0.00', '0');
INSERT INTO `account` VALUES ('11248', 'test148', '0.00', '0');
INSERT INTO `account` VALUES ('11249', 'test157', '0.00', '0');
INSERT INTO `account` VALUES ('11250', 'test102', '0.00', '0');
INSERT INTO `account` VALUES ('11251', 'test172', '0.00', '0');
INSERT INTO `account` VALUES ('11252', 'test182', '0.00', '0');
INSERT INTO `account` VALUES ('11253', 'test190', '0.00', '0');
INSERT INTO `account` VALUES ('11254', 'test175', '0.00', '0');
INSERT INTO `account` VALUES ('11255', 'test180', '0.00', '0');
INSERT INTO `account` VALUES ('11256', 'test200', '0.00', '0');
INSERT INTO `account` VALUES ('11257', 'test196', '0.00', '0');
INSERT INTO `account` VALUES ('11258', 'test72', '0.00', '0');
INSERT INTO `account` VALUES ('11259', 'test73', '0.00', '0');
INSERT INTO `account` VALUES ('11260', 'test74', '0.00', '0');
INSERT INTO `account` VALUES ('11261', 'test75', '0.00', '0');
INSERT INTO `account` VALUES ('11262', 'test76', '0.00', '0');
INSERT INTO `account` VALUES ('11263', 'test77', '0.00', '0');
INSERT INTO `account` VALUES ('11264', 'test78', '0.00', '0');
INSERT INTO `account` VALUES ('11265', 'test183', '0.00', '0');
INSERT INTO `account` VALUES ('11266', 'test184', '0.00', '0');
INSERT INTO `account` VALUES ('11267', 'test174', '0.00', '0');
INSERT INTO `account` VALUES ('11268', 'test87', '0.00', '0');
INSERT INTO `account` VALUES ('11269', 'test88', '0.00', '0');
INSERT INTO `account` VALUES ('11270', 'test197', '0.00', '0');
INSERT INTO `account` VALUES ('11271', 'test71', '0.00', '0');
INSERT INTO `account` VALUES ('11272', 'test92', '0.00', '0');
INSERT INTO `account` VALUES ('11273', 'test93', '0.00', '0');
INSERT INTO `account` VALUES ('11274', 'test94', '0.00', '0');
INSERT INTO `account` VALUES ('11275', 'test95', '0.00', '0');
INSERT INTO `account` VALUES ('11276', 'test185', '0.00', '0');
INSERT INTO `account` VALUES ('11277', 'test115', '0.00', '0');
INSERT INTO `account` VALUES ('11278', 'test187', '0.00', '0');
INSERT INTO `account` VALUES ('11279', 'test186', '0.00', '0');
INSERT INTO `account` VALUES ('11280', 'test96', '0.00', '0');
INSERT INTO `account` VALUES ('11281', 'test177', '0.00', '0');
INSERT INTO `account` VALUES ('11282', 'test146', '0.00', '0');
INSERT INTO `account` VALUES ('11283', 'test149', '0.00', '0');
INSERT INTO `account` VALUES ('11284', 'test150', '0.00', '0');
INSERT INTO `account` VALUES ('11285', 'test151', '0.00', '0');
INSERT INTO `account` VALUES ('11286', 'test103', '0.00', '0');
INSERT INTO `account` VALUES ('11287', 'test104', '0.00', '0');
INSERT INTO `account` VALUES ('11288', 'test199', '0.00', '0');
INSERT INTO `account` VALUES ('11289', 'test122', '0.00', '0');
INSERT INTO `account` VALUES ('11290', 'test106', '0.00', '0');
INSERT INTO `account` VALUES ('11291', 'test105', '0.00', '0');
INSERT INTO `account` VALUES ('11292', 'test79', '0.00', '0');
INSERT INTO `account` VALUES ('11293', 'test80', '0.00', '0');
INSERT INTO `account` VALUES ('11294', 'test82', '0.00', '0');
INSERT INTO `account` VALUES ('11295', 'test89', '0.00', '0');
INSERT INTO `account` VALUES ('11296', 'test91', '0.00', '0');
INSERT INTO `account` VALUES ('11297', 'test90', '0.00', '0');
INSERT INTO `account` VALUES ('11298', 'test84', '0.00', '0');
INSERT INTO `account` VALUES ('11299', 'test83', '0.00', '0');
INSERT INTO `account` VALUES ('11300', 'test107', '0.00', '0');
INSERT INTO `account` VALUES ('11301', 'test152', '0.00', '0');
INSERT INTO `account` VALUES ('11302', 'test153', '0.00', '0');
INSERT INTO `account` VALUES ('11303', 'test154', '0.00', '0');
INSERT INTO `account` VALUES ('11304', 'test156', '0.00', '0');
INSERT INTO `account` VALUES ('11305', 'test155', '0.00', '0');
INSERT INTO `account` VALUES ('11306', 'test160', '0.00', '0');
INSERT INTO `account` VALUES ('11307', 'test159', '0.00', '0');
INSERT INTO `account` VALUES ('11308', 'test158', '0.00', '0');
INSERT INTO `account` VALUES ('11309', 'test161', '0.00', '0');
INSERT INTO `account` VALUES ('11310', 'test165', '0.00', '0');
INSERT INTO `account` VALUES ('11311', 'test162', '0.00', '0');
INSERT INTO `account` VALUES ('11312', 'test163', '0.00', '0');
INSERT INTO `account` VALUES ('11313', 'test164', '0.00', '0');
INSERT INTO `account` VALUES ('11314', 'test166', '0.00', '0');
INSERT INTO `account` VALUES ('11315', 'test169', '0.00', '0');
INSERT INTO `account` VALUES ('11316', 'test167', '0.00', '0');
INSERT INTO `account` VALUES ('11317', 'test171', '0.00', '0');
INSERT INTO `account` VALUES ('11318', 'test173', '0.00', '0');
INSERT INTO `account` VALUES ('11319', 'test170', '0.00', '0');
INSERT INTO `account` VALUES ('11320', 'test168', '0.00', '0');
INSERT INTO `account` VALUES ('11321', 'test189', '0.00', '0');
INSERT INTO `account` VALUES ('11322', 'test181', '0.00', '0');
INSERT INTO `account` VALUES ('11323', 'test188', '0.00', '0');
INSERT INTO `account` VALUES ('11324', 'test192', '0.00', '0');
INSERT INTO `account` VALUES ('11325', 'test191', '0.00', '0');
INSERT INTO `account` VALUES ('11326', 'test194', '0.00', '0');
INSERT INTO `account` VALUES ('11327', 'test193', '0.00', '0');
INSERT INTO `account` VALUES ('11328', 'test195', '0.00', '0');
INSERT INTO `account` VALUES ('11329', 'test81', '0.00', '0');
INSERT INTO `account` VALUES ('11330', 'test85', '0.00', '0');
INSERT INTO `account` VALUES ('11331', 'test198', '0.00', '0');
INSERT INTO `account` VALUES ('11332', 'test98', '0.00', '0');
INSERT INTO `account` VALUES ('11333', 'test97', '0.00', '0');
INSERT INTO `account` VALUES ('11334', 'test99', '0.00', '0');
INSERT INTO `account` VALUES ('11335', 'test100', '0.00', '0');
INSERT INTO `account` VALUES ('11336', 'test179', '0.00', '0');
INSERT INTO `account` VALUES ('11337', 'test176', '0.00', '0');
INSERT INTO `account` VALUES ('11338', 'test178', '0.00', '0');
INSERT INTO `account` VALUES ('11339', 'test101', '0.00', '0');
INSERT INTO `account` VALUES ('11340', 'test108', '0.00', '0');
INSERT INTO `account` VALUES ('11341', 'test109', '0.00', '0');
INSERT INTO `account` VALUES ('11342', 'test110', '0.00', '0');
INSERT INTO `account` VALUES ('11343', 'test111', '0.00', '0');
INSERT INTO `account` VALUES ('11344', 'test112', '0.00', '0');
INSERT INTO `account` VALUES ('11345', 'test114', '0.00', '0');
INSERT INTO `account` VALUES ('11346', 'test113', '0.00', '0');
INSERT INTO `account` VALUES ('11347', 'test116', '0.00', '0');
INSERT INTO `account` VALUES ('11348', 'test117', '0.00', '0');
INSERT INTO `account` VALUES ('11349', 'test118', '0.00', '0');
INSERT INTO `account` VALUES ('11350', 'test119', '0.00', '0');
INSERT INTO `account` VALUES ('11351', 'test120', '0.00', '0');
INSERT INTO `account` VALUES ('11352', 'test123', '0.00', '0');
INSERT INTO `account` VALUES ('11353', 'test124', '0.00', '0');
INSERT INTO `account` VALUES ('11354', 'test121', '0.00', '0');
INSERT INTO `account` VALUES ('11355', 'test125', '0.00', '0');
INSERT INTO `account` VALUES ('11356', 'test127', '0.00', '0');
INSERT INTO `account` VALUES ('11357', 'test126', '0.00', '0');
INSERT INTO `account` VALUES ('11358', 'test129', '0.00', '0');
INSERT INTO `account` VALUES ('11359', 'test128', '0.00', '0');
INSERT INTO `account` VALUES ('11360', 'test131', '0.00', '0');
INSERT INTO `account` VALUES ('11361', 'test130', '0.00', '0');
INSERT INTO `account` VALUES ('11362', 'test133', '0.00', '0');
INSERT INTO `account` VALUES ('11363', 'test132', '0.00', '0');
INSERT INTO `account` VALUES ('11364', 'test135', '0.00', '0');
INSERT INTO `account` VALUES ('11365', 'test134', '0.00', '0');
INSERT INTO `account` VALUES ('11366', 'test136', '0.00', '0');
INSERT INTO `account` VALUES ('11367', 'test137', '0.00', '0');
INSERT INTO `account` VALUES ('11368', 'test138', '0.00', '0');
INSERT INTO `account` VALUES ('11369', 'test139', '0.00', '0');
INSERT INTO `account` VALUES ('11370', 'test140', '0.00', '0');
INSERT INTO `account` VALUES ('11371', 'test141', '0.00', '0');
INSERT INTO `account` VALUES ('11372', 'test143', '0.00', '0');
INSERT INTO `account` VALUES ('11373', 'test142', '0.00', '0');
INSERT INTO `account` VALUES ('11374', 'test144', '0.00', '0');
INSERT INTO `account` VALUES ('11375', 'test145', '0.00', '0');
INSERT INTO `account` VALUES ('11576', '1', '1997.23', '0');
INSERT INTO `account` VALUES ('11578', '2', '2.77', '0');

-- ----------------------------
-- Table structure for `bribery`
-- ----------------------------
DROP TABLE IF EXISTS `bribery`;
CREATE TABLE `bribery` (
  `bid` varchar(255) CHARACTER SET latin1 NOT NULL,
  `val` double(11,0) NOT NULL,
  `uid` varchar(20) CHARACTER SET latin1 NOT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `num` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `ptime` datetime NOT NULL,
  `otime` datetime NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `uid` (`uid`),
  CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bribery
-- ----------------------------
INSERT INTO `bribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '500', 'test1', 'æ­å–œå‘è´¢', '50', '2', '2016-08-05 16:13:41', '2016-08-05 16:15:41');
INSERT INTO `bribery` VALUES ('2016-08-05 18:07:06:test1:10:5:91041fdfbd9af32b1f0fcd232758e1d2', '10', 'test1', 'æ­å–œå‘è´¢', '5', '2', '2016-08-05 18:07:06', '2016-08-05 18:09:06');
INSERT INTO `bribery` VALUES ('2016-08-05 18:16:34:test1:10:5:f60daa34c216f98a9137e0ee1b97e5f4', '10', 'test1', 'æ­å–œå‘è´¢', '5', '2', '2016-08-05 18:16:34', '2016-08-05 18:18:34');
INSERT INTO `bribery` VALUES ('2016-08-08 11:13:14:1:100:10:08df0d4e69414d6d4c7e2dc044eb5efd', '100', '1', 'æ­å–œå‘è´¢', '10', '2', '2016-08-08 11:13:14', '2016-08-08 11:15:14');
INSERT INTO `bribery` VALUES ('2016-08-08 11:13:38:1:100:10:343369b7cf97afbbc4fe66b56c01b1a2', '100', '1', 'æ­å–œå‘è´¢', '10', '2', '2016-08-08 11:13:38', '2016-08-08 11:15:38');
INSERT INTO `bribery` VALUES ('2016-08-08 11:22:48:1:100:10:62ca0fe32842e6fab024929d53e89620', '100', '1', 'æ­å–œå‘è´¢', '10', '2', '2016-08-08 11:22:48', '2016-08-08 11:24:48');
INSERT INTO `bribery` VALUES ('2016-08-08 11:34:06:1:10:1:e750204e48d26f852bccf5b2852dc0fc', '10', '1', 'æ­å–œå‘è´¢', '1', '2', '2016-08-08 11:34:06', '2016-08-08 11:36:06');
INSERT INTO `bribery` VALUES ('2016-08-08 11:40:12:1:10:1:fc4f2beaf4dbcc03fa2eb93da63c2484', '10', '1', 'æ­å–œå‘è´¢', '1', '2', '2016-08-08 11:40:12', '2016-08-08 11:42:12');
INSERT INTO `bribery` VALUES ('2016-08-08 11:57:23:1:10:1:1b4ce9fe65c4f055d7bf38e19c584b66', '10', '1', 'æ­å–œå‘è´¢', '1', '2', '2016-08-08 11:57:23', '2016-08-08 11:59:23');

-- ----------------------------
-- Table structure for `bribery_record`
-- ----------------------------
DROP TABLE IF EXISTS `bribery_record`;
CREATE TABLE `bribery_record` (
  `mid` varchar(255) NOT NULL,
  `receiveid` varchar(20) NOT NULL,
  `receivetime` datetime NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `receiveid` (`receiveid`),
  CONSTRAINT `mid` FOREIGN KEY (`mid`) REFERENCES `mbribery` (`mid`),
  CONSTRAINT `receiveid` FOREIGN KEY (`receiveid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bribery_record
-- ----------------------------
INSERT INTO `bribery_record` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:0', 'test1', '2016-08-05 16:14:29');
INSERT INTO `bribery_record` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:1', 'test6', '2016-08-05 16:14:29');
INSERT INTO `bribery_record` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:10', 'test11', '2016-08-05 16:14:29');
INSERT INTO `bribery_record` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:11', 'test21', '2016-08-05 16:14:29');
INSERT INTO `bribery_record` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:12', 'test2', '2016-08-05 16:14:29');
INSERT INTO `bribery_record` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:13', 'test9', '2016-08-05 16:14:29');
INSERT INTO `bribery_record` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:14', 'test30', '2016-08-05 16:14:29');
INSERT INTO `bribery_record` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:15', 'test7', '2016-08-05 16:14:29');
INSERT INTO `bribery_record` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:16', 'test4', '2016-08-05 16:14:29');
INSERT INTO `bribery_record` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:17', 'test3', '2016-08-05 16:14:29');
INSERT INTO `bribery_record` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:18', 'test18', '2016-08-05 16:14:30');
INSERT INTO `bribery_record` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:19', 'test14', '2016-08-05 16:14:30');
INSERT INTO `bribery_record` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:2', 'test5', '2016-08-05 16:14:30');
INSERT INTO `bribery_record` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:20', 'test26', '2016-08-05 16:14:30');
INSERT INTO `bribery_record` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:21', 'test27', '2016-08-05 16:14:30');
INSERT INTO `bribery_record` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:22', 'test10', '2016-08-05 16:14:30');
INSERT INTO `bribery_record` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:23', 'test8', '2016-08-05 16:14:30');
INSERT INTO `bribery_record` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:24', 'test20', '2016-08-05 16:14:30');
INSERT INTO `bribery_record` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:25', 'test24', '2016-08-05 16:14:30');
INSERT INTO `bribery_record` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:26', 'test15', '2016-08-05 16:14:30');
INSERT INTO `bribery_record` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:27', 'test17', '2016-08-05 16:14:30');
INSERT INTO `bribery_record` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:28', 'test28', '2016-08-05 16:14:30');
INSERT INTO `bribery_record` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:29', 'test29', '2016-08-05 16:14:30');
INSERT INTO `bribery_record` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:3', 'test16', '2016-08-05 16:14:30');
INSERT INTO `bribery_record` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:30', 'test25', '2016-08-05 16:14:30');
INSERT INTO `bribery_record` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:31', 'test12', '2016-08-05 16:14:30');
INSERT INTO `bribery_record` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:32', 'test23', '2016-08-05 16:14:30');
INSERT INTO `bribery_record` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:33', 'test19', '2016-08-05 16:14:30');
INSERT INTO `bribery_record` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:34', 'test13', '2016-08-05 16:14:30');
INSERT INTO `bribery_record` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:35', 'test22', '2016-08-05 16:14:30');
INSERT INTO `bribery_record` VALUES ('2016-08-05 18:07:06:test1:10:5:91041fdfbd9af32b1f0fcd232758e1d2:0', 'test1', '2016-08-05 18:07:18');
INSERT INTO `bribery_record` VALUES ('2016-08-08 11:13:38:1:100:10:343369b7cf97afbbc4fe66b56c01b1a2:0', '2', '2016-08-08 11:14:25');
INSERT INTO `bribery_record` VALUES ('2016-08-08 11:13:38:1:100:10:343369b7cf97afbbc4fe66b56c01b1a2:1', '1', '2016-08-08 11:14:50');

-- ----------------------------
-- Table structure for `card`
-- ----------------------------
DROP TABLE IF EXISTS `card`;
CREATE TABLE `card` (
  `cardid` varchar(20) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `val` double NOT NULL,
  PRIMARY KEY (`cardid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of card
-- ----------------------------
INSERT INTO `card` VALUES ('1', '1', '88000');

-- ----------------------------
-- Table structure for `mbribery`
-- ----------------------------
DROP TABLE IF EXISTS `mbribery`;
CREATE TABLE `mbribery` (
  `mid` varchar(255) NOT NULL,
  `bid` varchar(255) NOT NULL,
  `val` double NOT NULL,
  `st` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`),
  KEY `bid` (`bid`),
  CONSTRAINT `bid` FOREIGN KEY (`bid`) REFERENCES `bribery` (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mbribery
-- ----------------------------
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:0', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '17.14', '1');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:1', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '4.1', '1');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:10', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '10.57', '1');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:11', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '7.86', '1');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:12', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '19.46', '1');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:13', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '7.4', '1');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:14', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '0.41', '1');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:15', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '14.07', '1');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:16', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '22.17', '1');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:17', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '5.93', '1');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:18', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '0.65', '1');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:19', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '19.9', '1');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:2', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '2.01', '1');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:20', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '7.19', '1');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:21', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '7.89', '1');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:22', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '5.62', '1');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:23', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '8.22', '1');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:24', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '20', '1');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:25', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '18.22', '1');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:26', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '0.72', '1');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:27', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '19.11', '1');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:28', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '0.38', '1');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:29', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '1.09', '1');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:3', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '3.26', '1');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:30', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '16.76', '1');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:31', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '0.6', '1');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:32', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '0.82', '1');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:33', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '17.87', '1');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:34', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '10.73', '1');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:35', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '7.38', '1');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:36', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '4.46', '2');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:37', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '11.07', '2');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:38', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '6.06', '2');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:39', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '3.43', '2');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:4', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '10.76', '2');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:40', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '4.58', '2');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:41', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '13.46', '2');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:42', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '4.53', '2');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:43', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '20.64', '2');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:44', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '8.82', '2');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:45', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '4.87', '2');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:46', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '5.96', '2');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:47', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '19.9', '2');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:48', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '13.87', '2');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:49', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '21.78', '2');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:5', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '19.8', '2');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:6', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '12.72', '2');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:7', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '1.05', '2');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:8', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '20', '2');
INSERT INTO `mbribery` VALUES ('2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e:9', '2016-08-05 16:13:41:test1:500:50:403d7f8e125747f674919512e02ac25e', '14.71', '2');
INSERT INTO `mbribery` VALUES ('2016-08-05 18:07:06:test1:10:5:91041fdfbd9af32b1f0fcd232758e1d2:0', '2016-08-05 18:07:06:test1:10:5:91041fdfbd9af32b1f0fcd232758e1d2', '1.57', '1');
INSERT INTO `mbribery` VALUES ('2016-08-05 18:07:06:test1:10:5:91041fdfbd9af32b1f0fcd232758e1d2:1', '2016-08-05 18:07:06:test1:10:5:91041fdfbd9af32b1f0fcd232758e1d2', '2.76', '2');
INSERT INTO `mbribery` VALUES ('2016-08-05 18:07:06:test1:10:5:91041fdfbd9af32b1f0fcd232758e1d2:2', '2016-08-05 18:07:06:test1:10:5:91041fdfbd9af32b1f0fcd232758e1d2', '1.9', '2');
INSERT INTO `mbribery` VALUES ('2016-08-05 18:07:06:test1:10:5:91041fdfbd9af32b1f0fcd232758e1d2:3', '2016-08-05 18:07:06:test1:10:5:91041fdfbd9af32b1f0fcd232758e1d2', '0.04', '2');
INSERT INTO `mbribery` VALUES ('2016-08-05 18:07:06:test1:10:5:91041fdfbd9af32b1f0fcd232758e1d2:4', '2016-08-05 18:07:06:test1:10:5:91041fdfbd9af32b1f0fcd232758e1d2', '3.73', '2');
INSERT INTO `mbribery` VALUES ('2016-08-05 18:16:34:test1:10:5:f60daa34c216f98a9137e0ee1b97e5f4:0', '2016-08-05 18:16:34:test1:10:5:f60daa34c216f98a9137e0ee1b97e5f4', '1.42', '2');
INSERT INTO `mbribery` VALUES ('2016-08-05 18:16:34:test1:10:5:f60daa34c216f98a9137e0ee1b97e5f4:1', '2016-08-05 18:16:34:test1:10:5:f60daa34c216f98a9137e0ee1b97e5f4', '3.73', '2');
INSERT INTO `mbribery` VALUES ('2016-08-05 18:16:34:test1:10:5:f60daa34c216f98a9137e0ee1b97e5f4:2', '2016-08-05 18:16:34:test1:10:5:f60daa34c216f98a9137e0ee1b97e5f4', '0.4', '2');
INSERT INTO `mbribery` VALUES ('2016-08-05 18:16:34:test1:10:5:f60daa34c216f98a9137e0ee1b97e5f4:3', '2016-08-05 18:16:34:test1:10:5:f60daa34c216f98a9137e0ee1b97e5f4', '2.32', '2');
INSERT INTO `mbribery` VALUES ('2016-08-05 18:16:34:test1:10:5:f60daa34c216f98a9137e0ee1b97e5f4:4', '2016-08-05 18:16:34:test1:10:5:f60daa34c216f98a9137e0ee1b97e5f4', '2.13', '2');
INSERT INTO `mbribery` VALUES ('2016-08-08 11:13:14:1:100:10:08df0d4e69414d6d4c7e2dc044eb5efd:0', '2016-08-08 11:13:14:1:100:10:08df0d4e69414d6d4c7e2dc044eb5efd', '19.56', '2');
INSERT INTO `mbribery` VALUES ('2016-08-08 11:13:14:1:100:10:08df0d4e69414d6d4c7e2dc044eb5efd:1', '2016-08-08 11:13:14:1:100:10:08df0d4e69414d6d4c7e2dc044eb5efd', '3.74', '2');
INSERT INTO `mbribery` VALUES ('2016-08-08 11:13:14:1:100:10:08df0d4e69414d6d4c7e2dc044eb5efd:2', '2016-08-08 11:13:14:1:100:10:08df0d4e69414d6d4c7e2dc044eb5efd', '6.99', '2');
INSERT INTO `mbribery` VALUES ('2016-08-08 11:13:14:1:100:10:08df0d4e69414d6d4c7e2dc044eb5efd:3', '2016-08-08 11:13:14:1:100:10:08df0d4e69414d6d4c7e2dc044eb5efd', '8.72', '2');
INSERT INTO `mbribery` VALUES ('2016-08-08 11:13:14:1:100:10:08df0d4e69414d6d4c7e2dc044eb5efd:4', '2016-08-08 11:13:14:1:100:10:08df0d4e69414d6d4c7e2dc044eb5efd', '7.54', '2');
INSERT INTO `mbribery` VALUES ('2016-08-08 11:13:14:1:100:10:08df0d4e69414d6d4c7e2dc044eb5efd:5', '2016-08-08 11:13:14:1:100:10:08df0d4e69414d6d4c7e2dc044eb5efd', '9.37', '2');
INSERT INTO `mbribery` VALUES ('2016-08-08 11:13:14:1:100:10:08df0d4e69414d6d4c7e2dc044eb5efd:6', '2016-08-08 11:13:14:1:100:10:08df0d4e69414d6d4c7e2dc044eb5efd', '18.55', '2');
INSERT INTO `mbribery` VALUES ('2016-08-08 11:13:14:1:100:10:08df0d4e69414d6d4c7e2dc044eb5efd:7', '2016-08-08 11:13:14:1:100:10:08df0d4e69414d6d4c7e2dc044eb5efd', '1.59', '2');
INSERT INTO `mbribery` VALUES ('2016-08-08 11:13:14:1:100:10:08df0d4e69414d6d4c7e2dc044eb5efd:8', '2016-08-08 11:13:14:1:100:10:08df0d4e69414d6d4c7e2dc044eb5efd', '9.72', '2');
INSERT INTO `mbribery` VALUES ('2016-08-08 11:13:14:1:100:10:08df0d4e69414d6d4c7e2dc044eb5efd:9', '2016-08-08 11:13:14:1:100:10:08df0d4e69414d6d4c7e2dc044eb5efd', '14.22', '2');
INSERT INTO `mbribery` VALUES ('2016-08-08 11:13:38:1:100:10:343369b7cf97afbbc4fe66b56c01b1a2:0', '2016-08-08 11:13:38:1:100:10:343369b7cf97afbbc4fe66b56c01b1a2', '2.77', '1');
INSERT INTO `mbribery` VALUES ('2016-08-08 11:13:38:1:100:10:343369b7cf97afbbc4fe66b56c01b1a2:1', '2016-08-08 11:13:38:1:100:10:343369b7cf97afbbc4fe66b56c01b1a2', '11.45', '1');
INSERT INTO `mbribery` VALUES ('2016-08-08 11:13:38:1:100:10:343369b7cf97afbbc4fe66b56c01b1a2:2', '2016-08-08 11:13:38:1:100:10:343369b7cf97afbbc4fe66b56c01b1a2', '2.37', '2');
INSERT INTO `mbribery` VALUES ('2016-08-08 11:13:38:1:100:10:343369b7cf97afbbc4fe66b56c01b1a2:3', '2016-08-08 11:13:38:1:100:10:343369b7cf97afbbc4fe66b56c01b1a2', '11.77', '2');
INSERT INTO `mbribery` VALUES ('2016-08-08 11:13:38:1:100:10:343369b7cf97afbbc4fe66b56c01b1a2:4', '2016-08-08 11:13:38:1:100:10:343369b7cf97afbbc4fe66b56c01b1a2', '27.58', '2');
INSERT INTO `mbribery` VALUES ('2016-08-08 11:13:38:1:100:10:343369b7cf97afbbc4fe66b56c01b1a2:5', '2016-08-08 11:13:38:1:100:10:343369b7cf97afbbc4fe66b56c01b1a2', '12.55', '2');
INSERT INTO `mbribery` VALUES ('2016-08-08 11:13:38:1:100:10:343369b7cf97afbbc4fe66b56c01b1a2:6', '2016-08-08 11:13:38:1:100:10:343369b7cf97afbbc4fe66b56c01b1a2', '0.01', '2');
INSERT INTO `mbribery` VALUES ('2016-08-08 11:13:38:1:100:10:343369b7cf97afbbc4fe66b56c01b1a2:7', '2016-08-08 11:13:38:1:100:10:343369b7cf97afbbc4fe66b56c01b1a2', '11.97', '2');
INSERT INTO `mbribery` VALUES ('2016-08-08 11:13:38:1:100:10:343369b7cf97afbbc4fe66b56c01b1a2:8', '2016-08-08 11:13:38:1:100:10:343369b7cf97afbbc4fe66b56c01b1a2', '10.39', '2');
INSERT INTO `mbribery` VALUES ('2016-08-08 11:13:38:1:100:10:343369b7cf97afbbc4fe66b56c01b1a2:9', '2016-08-08 11:13:38:1:100:10:343369b7cf97afbbc4fe66b56c01b1a2', '9.14', '2');
INSERT INTO `mbribery` VALUES ('2016-08-08 11:22:48:1:100:10:62ca0fe32842e6fab024929d53e89620:0', '2016-08-08 11:22:48:1:100:10:62ca0fe32842e6fab024929d53e89620', '8.85', '2');
INSERT INTO `mbribery` VALUES ('2016-08-08 11:22:48:1:100:10:62ca0fe32842e6fab024929d53e89620:1', '2016-08-08 11:22:48:1:100:10:62ca0fe32842e6fab024929d53e89620', '1.96', '2');
INSERT INTO `mbribery` VALUES ('2016-08-08 11:22:48:1:100:10:62ca0fe32842e6fab024929d53e89620:2', '2016-08-08 11:22:48:1:100:10:62ca0fe32842e6fab024929d53e89620', '18.85', '2');
INSERT INTO `mbribery` VALUES ('2016-08-08 11:22:48:1:100:10:62ca0fe32842e6fab024929d53e89620:3', '2016-08-08 11:22:48:1:100:10:62ca0fe32842e6fab024929d53e89620', '12.52', '2');
INSERT INTO `mbribery` VALUES ('2016-08-08 11:22:48:1:100:10:62ca0fe32842e6fab024929d53e89620:4', '2016-08-08 11:22:48:1:100:10:62ca0fe32842e6fab024929d53e89620', '4.38', '2');
INSERT INTO `mbribery` VALUES ('2016-08-08 11:22:48:1:100:10:62ca0fe32842e6fab024929d53e89620:5', '2016-08-08 11:22:48:1:100:10:62ca0fe32842e6fab024929d53e89620', '9.4', '2');
INSERT INTO `mbribery` VALUES ('2016-08-08 11:22:48:1:100:10:62ca0fe32842e6fab024929d53e89620:6', '2016-08-08 11:22:48:1:100:10:62ca0fe32842e6fab024929d53e89620', '10.94', '2');
INSERT INTO `mbribery` VALUES ('2016-08-08 11:22:48:1:100:10:62ca0fe32842e6fab024929d53e89620:7', '2016-08-08 11:22:48:1:100:10:62ca0fe32842e6fab024929d53e89620', '7.43', '2');
INSERT INTO `mbribery` VALUES ('2016-08-08 11:22:48:1:100:10:62ca0fe32842e6fab024929d53e89620:8', '2016-08-08 11:22:48:1:100:10:62ca0fe32842e6fab024929d53e89620', '4.66', '2');
INSERT INTO `mbribery` VALUES ('2016-08-08 11:22:48:1:100:10:62ca0fe32842e6fab024929d53e89620:9', '2016-08-08 11:22:48:1:100:10:62ca0fe32842e6fab024929d53e89620', '21.01', '2');
INSERT INTO `mbribery` VALUES ('2016-08-08 11:34:06:1:10:1:e750204e48d26f852bccf5b2852dc0fc:0', '2016-08-08 11:34:06:1:10:1:e750204e48d26f852bccf5b2852dc0fc', '10', '2');
INSERT INTO `mbribery` VALUES ('2016-08-08 11:40:12:1:10:1:fc4f2beaf4dbcc03fa2eb93da63c2484:0', '2016-08-08 11:40:12:1:10:1:fc4f2beaf4dbcc03fa2eb93da63c2484', '10', '2');
INSERT INTO `mbribery` VALUES ('2016-08-08 11:57:23:1:10:1:1b4ce9fe65c4f055d7bf38e19c584b66:0', '2016-08-08 11:57:23:1:10:1:1b4ce9fe65c4f055d7bf38e19c584b66', '10', '2');

-- ----------------------------
-- Table structure for `transaction_record`
-- ----------------------------
DROP TABLE IF EXISTS `transaction_record`;
CREATE TABLE `transaction_record` (
  `tsid` int(11) NOT NULL AUTO_INCREMENT COMMENT '1 充值 2 提现',
  `account` int(11) NOT NULL,
  `val` double NOT NULL,
  `type` char(1) NOT NULL,
  `ttime` datetime NOT NULL,
  `cardid` varchar(255) NOT NULL,
  PRIMARY KEY (`tsid`),
  KEY `account` (`account`),
  KEY `card` (`cardid`),
  CONSTRAINT `account` FOREIGN KEY (`account`) REFERENCES `account` (`account`),
  CONSTRAINT `card` FOREIGN KEY (`cardid`) REFERENCES `card` (`cardid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaction_record
-- ----------------------------
INSERT INTO `transaction_record` VALUES ('14', '11176', '10000', '+', '2016-08-05 16:11:19', '1');
INSERT INTO `transaction_record` VALUES ('15', '11576', '1000', '+', '2016-08-08 11:09:40', '1');
INSERT INTO `transaction_record` VALUES ('16', '11576', '1000', '+', '2016-08-08 11:11:22', '1');
INSERT INTO `transaction_record` VALUES ('17', '11576', '1', '-', '2016-08-08 11:12:10', '1');
INSERT INTO `transaction_record` VALUES ('18', '11576', '999', '-', '2016-08-08 11:12:18', '1');
INSERT INTO `transaction_record` VALUES ('19', '11576', '1000', '+', '2016-08-08 11:45:10', '1');

-- ----------------------------
-- Table structure for `transfer_record`
-- ----------------------------
DROP TABLE IF EXISTS `transfer_record`;
CREATE TABLE `transfer_record` (
  `tid` bigint(20) NOT NULL AUTO_INCREMENT,
  `out_account` int(11) NOT NULL,
  `in_account` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `val` double NOT NULL,
  PRIMARY KEY (`tid`),
  KEY `in_account` (`in_account`),
  KEY `out_account` (`out_account`),
  CONSTRAINT `in_account` FOREIGN KEY (`in_account`) REFERENCES `account` (`account`),
  CONSTRAINT `out_account` FOREIGN KEY (`out_account`) REFERENCES `account` (`account`)
) ENGINE=InnoDB AUTO_INCREMENT=1405 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transfer_record
-- ----------------------------
INSERT INTO `transfer_record` VALUES ('1322', '11176', '0', '2016-08-05 16:13:41', '500');
INSERT INTO `transfer_record` VALUES ('1323', '0', '11176', '2016-08-05 16:14:29', '17.14');
INSERT INTO `transfer_record` VALUES ('1324', '0', '11206', '2016-08-05 16:14:29', '4.1');
INSERT INTO `transfer_record` VALUES ('1327', '0', '11190', '2016-08-05 16:14:29', '10.57');
INSERT INTO `transfer_record` VALUES ('1329', '0', '11203', '2016-08-05 16:14:29', '7.86');
INSERT INTO `transfer_record` VALUES ('1333', '0', '11180', '2016-08-05 16:14:29', '19.46');
INSERT INTO `transfer_record` VALUES ('1335', '0', '11194', '2016-08-05 16:14:29', '7.4');
INSERT INTO `transfer_record` VALUES ('1339', '0', '11219', '2016-08-05 16:14:29', '0.41');
INSERT INTO `transfer_record` VALUES ('1342', '0', '11204', '2016-08-05 16:14:29', '14.07');
INSERT INTO `transfer_record` VALUES ('1344', '0', '11186', '2016-08-05 16:14:29', '22.17');
INSERT INTO `transfer_record` VALUES ('1346', '0', '11179', '2016-08-05 16:14:29', '5.93');
INSERT INTO `transfer_record` VALUES ('1349', '0', '11205', '2016-08-05 16:14:30', '0.65');
INSERT INTO `transfer_record` VALUES ('1351', '0', '11178', '2016-08-05 16:14:30', '19.9');
INSERT INTO `transfer_record` VALUES ('1353', '0', '11218', '2016-08-05 16:14:30', '2.01');
INSERT INTO `transfer_record` VALUES ('1355', '0', '11189', '2016-08-05 16:14:30', '7.19');
INSERT INTO `transfer_record` VALUES ('1357', '0', '11213', '2016-08-05 16:14:30', '7.89');
INSERT INTO `transfer_record` VALUES ('1360', '0', '11217', '2016-08-05 16:14:30', '5.62');
INSERT INTO `transfer_record` VALUES ('1362', '0', '11212', '2016-08-05 16:14:30', '8.22');
INSERT INTO `transfer_record` VALUES ('1363', '0', '11210', '2016-08-05 16:14:30', '20');
INSERT INTO `transfer_record` VALUES ('1365', '0', '11182', '2016-08-05 16:14:30', '18.22');
INSERT INTO `transfer_record` VALUES ('1366', '0', '11187', '2016-08-05 16:14:30', '0.72');
INSERT INTO `transfer_record` VALUES ('1368', '0', '11216', '2016-08-05 16:14:30', '19.11');
INSERT INTO `transfer_record` VALUES ('1370', '0', '11183', '2016-08-05 16:14:30', '0.38');
INSERT INTO `transfer_record` VALUES ('1372', '0', '11207', '2016-08-05 16:14:30', '1.09');
INSERT INTO `transfer_record` VALUES ('1374', '0', '11177', '2016-08-05 16:14:30', '3.26');
INSERT INTO `transfer_record` VALUES ('1375', '0', '11192', '2016-08-05 16:14:30', '16.76');
INSERT INTO `transfer_record` VALUES ('1378', '0', '11215', '2016-08-05 16:14:30', '0.6');
INSERT INTO `transfer_record` VALUES ('1379', '0', '11185', '2016-08-05 16:14:30', '0.82');
INSERT INTO `transfer_record` VALUES ('1381', '0', '11199', '2016-08-05 16:14:30', '17.87');
INSERT INTO `transfer_record` VALUES ('1384', '0', '11184', '2016-08-05 16:14:30', '10.73');
INSERT INTO `transfer_record` VALUES ('1385', '0', '11211', '2016-08-05 16:14:30', '7.38');
INSERT INTO `transfer_record` VALUES ('1386', '0', '11176', '2016-08-05 16:16:30', '222.47');
INSERT INTO `transfer_record` VALUES ('1387', '11176', '0', '2016-08-05 18:07:06', '10');
INSERT INTO `transfer_record` VALUES ('1388', '0', '11176', '2016-08-05 18:07:18', '1.57');
INSERT INTO `transfer_record` VALUES ('1389', '0', '11176', '2016-08-05 18:13:52', '8.43');
INSERT INTO `transfer_record` VALUES ('1390', '11176', '0', '2016-08-05 18:16:34', '10');
INSERT INTO `transfer_record` VALUES ('1391', '0', '11176', '2016-08-05 18:26:53', '10');
INSERT INTO `transfer_record` VALUES ('1392', '11576', '0', '2016-08-08 11:13:14', '100');
INSERT INTO `transfer_record` VALUES ('1393', '11576', '0', '2016-08-08 11:13:38', '100');
INSERT INTO `transfer_record` VALUES ('1394', '0', '11578', '2016-08-08 11:14:25', '2.77');
INSERT INTO `transfer_record` VALUES ('1395', '0', '11576', '2016-08-08 11:14:50', '11.45');
INSERT INTO `transfer_record` VALUES ('1396', '0', '11576', '2016-08-08 11:16:10', '185.78');
INSERT INTO `transfer_record` VALUES ('1397', '11576', '0', '2016-08-08 11:22:48', '100');
INSERT INTO `transfer_record` VALUES ('1398', '0', '11576', '2016-08-08 11:25:25', '100');
INSERT INTO `transfer_record` VALUES ('1399', '11576', '0', '2016-08-08 11:34:06', '10');
INSERT INTO `transfer_record` VALUES ('1400', '0', '11576', '2016-08-08 11:37:01', '10');
INSERT INTO `transfer_record` VALUES ('1401', '11576', '0', '2016-08-08 11:40:12', '10');
INSERT INTO `transfer_record` VALUES ('1402', '0', '11576', '2016-08-08 11:43:01', '10');
INSERT INTO `transfer_record` VALUES ('1403', '11576', '0', '2016-08-08 11:57:23', '10');
INSERT INTO `transfer_record` VALUES ('1404', '0', '11576', '2016-08-08 12:00:01', '10');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uid` (`uid`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1', 'c4ca4238a0b923820dcc509a6f75849b');
INSERT INTO `user` VALUES ('2', '2', 'c81e728d9d4c2f636f067f89cc14862c');
INSERT INTO `user` VALUES ('test1', 'test1', '5a105e8b9d40e1329780d62ea2265d8a');
INSERT INTO `user` VALUES ('test10', 'test10', 'c1a8e059bfd1e911cf10b626340c9a54');
INSERT INTO `user` VALUES ('test100', 'test100', 'f5f97c92ae39d49a4fa87d97eb3d89ff');
INSERT INTO `user` VALUES ('test101', 'test101', 'b84a0745fae979b744827304e66dcd5f');
INSERT INTO `user` VALUES ('test102', 'test102', '654409aab4d309a66d4bc7c494b199a5');
INSERT INTO `user` VALUES ('test103', 'test103', '7c62e13b80dd6f3a9462736409a7fe30');
INSERT INTO `user` VALUES ('test104', 'test104', 'ef82500aafcd9618bbbc5a1ac3f99f67');
INSERT INTO `user` VALUES ('test105', 'test105', '49ec7e883faeb0aa08bb9b92bad0678e');
INSERT INTO `user` VALUES ('test106', 'test106', '6da73fa49967c2d83c91f5dfce5eafa4');
INSERT INTO `user` VALUES ('test107', 'test107', '8e396db096cc66c85efe2e56d720e4d7');
INSERT INTO `user` VALUES ('test108', 'test108', '58a964ed8559dbf46694578036ca3898');
INSERT INTO `user` VALUES ('test109', 'test109', 'e94cc5e4acd9f3e4e8b59b62ebd603cc');
INSERT INTO `user` VALUES ('test11', 'test11', 'f696282aa4cd4f614aa995190cf442fe');
INSERT INTO `user` VALUES ('test110', 'test110', 'c80b4f115a9d68c50bf013a1cb5ac7d2');
INSERT INTO `user` VALUES ('test111', 'test111', '4061863caf7f28c0b0346719e764d561');
INSERT INTO `user` VALUES ('test112', 'test112', '7b95845013abd87a1ad6018568247679');
INSERT INTO `user` VALUES ('test113', 'test113', '88f8ec571e3fba57977decfcb75d4857');
INSERT INTO `user` VALUES ('test114', 'test114', '90755a1ef7bfe1aed4d1483c3b23b0ce');
INSERT INTO `user` VALUES ('test115', 'test115', '9bba56232e0d312cf0563ff10b092a04');
INSERT INTO `user` VALUES ('test116', 'test116', 'f2373fe8bbc45bf587d61d76d8fc2bbe');
INSERT INTO `user` VALUES ('test117', 'test117', '730207e6436393b9ccd82e7fb3d7944f');
INSERT INTO `user` VALUES ('test118', 'test118', '305addeecd16c1cbf730dc2d74b3c576');
INSERT INTO `user` VALUES ('test119', 'test119', 'b42a86db0221aa3e38893aa52675407b');
INSERT INTO `user` VALUES ('test12', 'test12', '60474c9c10d7142b7508ce7a50acf414');
INSERT INTO `user` VALUES ('test120', 'test120', 'cb08f874a1d78acbda3811776d947509');
INSERT INTO `user` VALUES ('test121', 'test121', 'f0cb60e4dfbba5674340ba95d21c3f04');
INSERT INTO `user` VALUES ('test122', 'test122', 'e2dec57b685b9b1192738fdada9d0f28');
INSERT INTO `user` VALUES ('test123', 'test123', 'cc03e747a6afbbcbf8be7668acfebee5');
INSERT INTO `user` VALUES ('test124', 'test124', 'ad2af2578b4d55b5f78383024270f852');
INSERT INTO `user` VALUES ('test125', 'test125', '8b6a686dfdea527e0ad4f0a560328c8a');
INSERT INTO `user` VALUES ('test126', 'test126', '5d6cb0cd0ccdcbfcdbf694e1c202411f');
INSERT INTO `user` VALUES ('test127', 'test127', '4c8974e21e04c5339191ac9a04aa2b5f');
INSERT INTO `user` VALUES ('test128', 'test128', '44b0d62289e8e5ff3ef53f97ed2c4e74');
INSERT INTO `user` VALUES ('test129', 'test129', '9f3c79bf8a5aded0b16a1c4d68a04d6a');
INSERT INTO `user` VALUES ('test13', 'test13', '33fc3dbd51a8b38a38b1b85b6a76b42b');
INSERT INTO `user` VALUES ('test130', 'test130', 'e289a199773adcceca462e8b42f139e0');
INSERT INTO `user` VALUES ('test131', 'test131', '0020b05bc1f5af852530af0c7682ffbf');
INSERT INTO `user` VALUES ('test132', 'test132', 'c0e450228a64e399a3962bffaee74577');
INSERT INTO `user` VALUES ('test133', 'test133', '8911d8e964b6035087fc9d702ebdfb3b');
INSERT INTO `user` VALUES ('test134', 'test134', '3823dcac027e5d7dedaf283f53cb7777');
INSERT INTO `user` VALUES ('test135', 'test135', '8edb3faa6792b48583165646e4bb671e');
INSERT INTO `user` VALUES ('test136', 'test136', 'af234c4c6698d7d0c48fa52326aab5da');
INSERT INTO `user` VALUES ('test137', 'test137', '38ccd61ae6e2db25c7a4239a128d623b');
INSERT INTO `user` VALUES ('test138', 'test138', '4f16857ceb2ff2ae264c97e89dae956b');
INSERT INTO `user` VALUES ('test139', 'test139', '0a9976be540736ae3e999a88ce40f4f0');
INSERT INTO `user` VALUES ('test14', 'test14', 'b99c94f62fb2a61433c4e44e27406050');
INSERT INTO `user` VALUES ('test140', 'test140', 'fcea6401028cdacd8026f1b1cb8b96c9');
INSERT INTO `user` VALUES ('test141', 'test141', '73f9db3d34592cf8f43afc9ecdc23881');
INSERT INTO `user` VALUES ('test142', 'test142', '2491ebf818945150d954bafd8989460c');
INSERT INTO `user` VALUES ('test143', 'test143', '5add7931b2b477611ef3934c383913a7');
INSERT INTO `user` VALUES ('test144', 'test144', 'b6affa76230f819a2df44b056331ae3d');
INSERT INTO `user` VALUES ('test145', 'test145', '83160bee1c16b4b930d44a89583c86c7');
INSERT INTO `user` VALUES ('test146', 'test146', '5f40ed6e9c850307208759517a4ad632');
INSERT INTO `user` VALUES ('test147', 'test147', '75ae296f29616e15b03b6e0d3fb137f3');
INSERT INTO `user` VALUES ('test148', 'test148', '5e5e6fdaa8d197093d2f912bb1982e98');
INSERT INTO `user` VALUES ('test149', 'test149', 'c782937a67d3f52e1e90c3c540fb2b17');
INSERT INTO `user` VALUES ('test15', 'test15', '4b377d23309d4ed39c9da5791417aeff');
INSERT INTO `user` VALUES ('test150', 'test150', 'ce8ad643c92762b58d78e441d14de087');
INSERT INTO `user` VALUES ('test151', 'test151', 'e93ba18a73e9eef3189640bcff5f446f');
INSERT INTO `user` VALUES ('test152', 'test152', '62e9cb51283e4a20796f9fb7d22ce177');
INSERT INTO `user` VALUES ('test153', 'test153', '641f148386f1eceb3eaf632873212d3c');
INSERT INTO `user` VALUES ('test154', 'test154', '9ed57598a633169271bbc27f7c5bd612');
INSERT INTO `user` VALUES ('test155', 'test155', 'ad3533e0b86f2ec4b282602f0633441b');
INSERT INTO `user` VALUES ('test156', 'test156', 'a01aedcc3fe54731f62a58ff50fdc2a2');
INSERT INTO `user` VALUES ('test157', 'test157', '463e720a042b9c48e53677a317f36cce');
INSERT INTO `user` VALUES ('test158', 'test158', '6c4eb92737d85ba1a27d31e007ab73b7');
INSERT INTO `user` VALUES ('test159', 'test159', '3440a6f59f7da6ce21a7ce4886bd11d9');
INSERT INTO `user` VALUES ('test16', 'test16', '0c1ccf98666ed505310c0471529429db');
INSERT INTO `user` VALUES ('test160', 'test160', '6e5b068265b5880e34cfe6c247922d00');
INSERT INTO `user` VALUES ('test161', 'test161', 'cd99f659cef92b2c57203965f22dbd53');
INSERT INTO `user` VALUES ('test162', 'test162', '61cbce674edbd4dc7ca406ed38fad45f');
INSERT INTO `user` VALUES ('test163', 'test163', '000e9c50cb9e6080d22d1f12c6cb6dee');
INSERT INTO `user` VALUES ('test164', 'test164', 'e2b88f94335050b0d8046419bee0b138');
INSERT INTO `user` VALUES ('test165', 'test165', 'a56c7d783e63897132dacb21d21d073f');
INSERT INTO `user` VALUES ('test166', 'test166', '00be2a937d88270c7d69530ba5c06ff0');
INSERT INTO `user` VALUES ('test167', 'test167', '6792798484f7c53bc8d721383ddc9e3a');
INSERT INTO `user` VALUES ('test168', 'test168', '230bb8d5096c52055fccb908faf64267');
INSERT INTO `user` VALUES ('test169', 'test169', '23e0182f41c4eb1e1e2c7ba34498f481');
INSERT INTO `user` VALUES ('test17', 'test17', 'fcb1a7bbe091b4ee78748946cb762a84');
INSERT INTO `user` VALUES ('test170', 'test170', '2d6b3d22985c72f9c54adf8a25e19e6a');
INSERT INTO `user` VALUES ('test171', 'test171', 'e8bbff2dccb11cf480853d2f5468e281');
INSERT INTO `user` VALUES ('test172', 'test172', '25561cf15c2f749788644ed8d74de766');
INSERT INTO `user` VALUES ('test173', 'test173', '529c16a5c9b48f41a37720d261b5a7f7');
INSERT INTO `user` VALUES ('test174', 'test174', '038cdbceaecbddb42e1c746edae9d31e');
INSERT INTO `user` VALUES ('test175', 'test175', '1d880e878dbab2cd8367b894e72035e2');
INSERT INTO `user` VALUES ('test176', 'test176', '3de05e060215889d3af6ac7c19e8d38f');
INSERT INTO `user` VALUES ('test177', 'test177', '7e594542930af5f146feafcd72e91cb0');
INSERT INTO `user` VALUES ('test178', 'test178', '182a67475883af2896193833373983d7');
INSERT INTO `user` VALUES ('test179', 'test179', '039432e544b7aa31d5e3a0aea89cd4ec');
INSERT INTO `user` VALUES ('test18', 'test18', 'df71df92c31111f810a7d89bd2c2e35d');
INSERT INTO `user` VALUES ('test180', 'test180', '9e4d836a023af641345e36ab31364652');
INSERT INTO `user` VALUES ('test181', 'test181', '64018a0a7a6132379be765728c9873a6');
INSERT INTO `user` VALUES ('test182', 'test182', '9d35d5a1ee23e0e0183f4789dc561fa0');
INSERT INTO `user` VALUES ('test183', 'test183', '4b718e67c59ad3aba24884e925667257');
INSERT INTO `user` VALUES ('test184', 'test184', 'df9c2a37426fa944b03217bfef28fb3a');
INSERT INTO `user` VALUES ('test185', 'test185', 'e1763e8e909599cf30a8ea9d7186cf13');
INSERT INTO `user` VALUES ('test186', 'test186', '78140e0568b5a5a8ac303f29bf62937e');
INSERT INTO `user` VALUES ('test187', 'test187', '3c21a9cc2175c653d12cd180d795b9e9');
INSERT INTO `user` VALUES ('test188', 'test188', '374f0b4993f641ed5b53c3de5d1df102');
INSERT INTO `user` VALUES ('test189', 'test189', 'dd25956b21f7a2f3dbaed9d2977abaf8');
INSERT INTO `user` VALUES ('test19', 'test19', '45357a5c731751a44000d1ba2c0e25fb');
INSERT INTO `user` VALUES ('test190', 'test190', '170f94a9c87304829d6fae36389542ca');
INSERT INTO `user` VALUES ('test191', 'test191', '94fce492bc04144e0d3dacd848a96cd8');
INSERT INTO `user` VALUES ('test192', 'test192', 'a290eee895921453970d4fc90a25330c');
INSERT INTO `user` VALUES ('test193', 'test193', '74dfcecdbcaefaaf6ac0c6fab5b9a2a4');
INSERT INTO `user` VALUES ('test194', 'test194', 'ade2f5928901e3f0706bbe0e3f0f1fde');
INSERT INTO `user` VALUES ('test195', 'test195', 'ea4e76ecc34360d11359184c9437f31d');
INSERT INTO `user` VALUES ('test196', 'test196', '393f2357a66aee41eefd174326f573ae');
INSERT INTO `user` VALUES ('test197', 'test197', '77b0541d8af017dab1d8a8371f4b97fd');
INSERT INTO `user` VALUES ('test198', 'test198', '2af50448f9357dc02532e9918bc4522c');
INSERT INTO `user` VALUES ('test199', 'test199', '10f0200cd257070b0872d3eb399e716f');
INSERT INTO `user` VALUES ('test2', 'test2', 'ad0234829205b9033196ba818f7a872b');
INSERT INTO `user` VALUES ('test20', 'test20', 'b428cbb02358afc32cf32f9bdb725a51');
INSERT INTO `user` VALUES ('test200', 'test200', 'a0fce90325b0b93f6bb828527c6dc2fd');
INSERT INTO `user` VALUES ('test21', 'test21', '6c4e97affe728b586468f1ecd344ceb0');
INSERT INTO `user` VALUES ('test22', 'test22', '4d42bf9c18cb04139f918ff0ae68f8a0');
INSERT INTO `user` VALUES ('test23', 'test23', 'b48cca5aebb82a328227b78d899506f5');
INSERT INTO `user` VALUES ('test24', 'test24', 'b5e8f27ba26ac0268b74fc8e32bf7742');
INSERT INTO `user` VALUES ('test25', 'test25', '7249b7cf523f5b04f4daaa3d6e02f58a');
INSERT INTO `user` VALUES ('test26', 'test26', 'cca1e4cdb678f010dc66458d91780547');
INSERT INTO `user` VALUES ('test27', 'test27', '3d4faa76a034ffc1ec18eb5069162845');
INSERT INTO `user` VALUES ('test28', 'test28', 'f4f4f99191ca681c2abe4e9cf07843b5');
INSERT INTO `user` VALUES ('test29', 'test29', '96e42ae3e19ab360ec81bc7f059aa8c4');
INSERT INTO `user` VALUES ('test3', 'test3', '8ad8757baa8564dc136c1e07507f4a98');
INSERT INTO `user` VALUES ('test30', 'test30', '40a0d0d497cbced7d9b87e4359f1e94a');
INSERT INTO `user` VALUES ('test31', 'test31', '536d69ec353e44061a437cf571f01e71');
INSERT INTO `user` VALUES ('test32', 'test32', '7f2d7bce0daacac07fb3a8970e5e20cb');
INSERT INTO `user` VALUES ('test33', 'test33', '9cb45d54b2ccdc1c486e2f3eb87fbe9f');
INSERT INTO `user` VALUES ('test34', 'test34', 'c6710d5b0bf358d5a5aa8efd02971d0c');
INSERT INTO `user` VALUES ('test35', 'test35', '8b38ab79c07d1466910a50903c26e962');
INSERT INTO `user` VALUES ('test36', 'test36', '22ab3b987a3706aa958debe8b9164584');
INSERT INTO `user` VALUES ('test37', 'test37', '1507dccbee38bc0d7687f2f8fb093cd2');
INSERT INTO `user` VALUES ('test38', 'test38', 'a0ee99583f15b604f502e1ee64309e55');
INSERT INTO `user` VALUES ('test39', 'test39', '5527235f43c222efc4b0aed50d900175');
INSERT INTO `user` VALUES ('test4', 'test4', '86985e105f79b95d6bc918fb45ec7727');
INSERT INTO `user` VALUES ('test40', 'test40', 'daebb9ee52fba3e75c5e4696c1d2b0de');
INSERT INTO `user` VALUES ('test41', 'test41', 'f6646c41378602b24279e8a383bd2b4f');
INSERT INTO `user` VALUES ('test42', 'test42', 'a681d0039910f6b38666d5cbc2e5ac1d');
INSERT INTO `user` VALUES ('test43', 'test43', 'de8397f651cbb078e955067ca46df6b3');
INSERT INTO `user` VALUES ('test44', 'test44', 'fd196d87b9d4752fa86a3ddf1481412a');
INSERT INTO `user` VALUES ('test45', 'test45', 'ce532efc40e83f9faaa94183c4383193');
INSERT INTO `user` VALUES ('test46', 'test46', '9eec309b5c8122e74a80479de201dce8');
INSERT INTO `user` VALUES ('test47', 'test47', '168c34716cb6aabbe34ca310090c6e43');
INSERT INTO `user` VALUES ('test48', 'test48', 'aaf1892a6026f15c11931d1e52341cff');
INSERT INTO `user` VALUES ('test49', 'test49', '241db62d4cb712d490d6c6fdd81c4682');
INSERT INTO `user` VALUES ('test5', 'test5', 'e3d704f3542b44a621ebed70dc0efe13');
INSERT INTO `user` VALUES ('test50', 'test50', 'e4abf54583b16ef4d4ba714617038d54');
INSERT INTO `user` VALUES ('test51', 'test51', '96b468c912f633abc8692a06f76115ee');
INSERT INTO `user` VALUES ('test52', 'test52', 'cf75fafbea951e89e59be317d62a3636');
INSERT INTO `user` VALUES ('test53', 'test53', 'b117c11569e93c4fc5f23b6def81155e');
INSERT INTO `user` VALUES ('test54', 'test54', '41cd217dedd91095e5db64e7f166c7ad');
INSERT INTO `user` VALUES ('test55', 'test55', '7e39cfce74d155294619613f42484f18');
INSERT INTO `user` VALUES ('test56', 'test56', 'a8f6a060dabc98a702333252b2d24013');
INSERT INTO `user` VALUES ('test57', 'test57', 'ad2bd20c73883cb12ca20ab8f00547e1');
INSERT INTO `user` VALUES ('test58', 'test58', 'e947c4e3d3091991356d1564d09ddac2');
INSERT INTO `user` VALUES ('test59', 'test59', 'debdcbab258bf9e208b9f2e6e6d1779b');
INSERT INTO `user` VALUES ('test6', 'test6', '4cfad7076129962ee70c36839a1e3e15');
INSERT INTO `user` VALUES ('test60', 'test60', '187cea2f627b284cd2c47288a0eaab96');
INSERT INTO `user` VALUES ('test61', 'test61', '26f607c6a4b177f5ecac7ea50de3ded1');
INSERT INTO `user` VALUES ('test62', 'test62', 'cd7376c4dd50bf0f2f7df0cad084a2ef');
INSERT INTO `user` VALUES ('test63', 'test63', '36dc2448cf5dd6cc6faa9c4cd71b94d4');
INSERT INTO `user` VALUES ('test64', 'test64', '193a27469d656d9221c9c4d44c8b5463');
INSERT INTO `user` VALUES ('test65', 'test65', '39dd7a8aa04b8421b1269553f4f3be0f');
INSERT INTO `user` VALUES ('test66', 'test66', '3f1bc06510a4e5ac9bd49f64d247354c');
INSERT INTO `user` VALUES ('test67', 'test67', 'bd1901231b0822a59c64c48ca3757fb5');
INSERT INTO `user` VALUES ('test68', 'test68', 'a1d9b3bb8f0b89664a7a3bb03c515a6a');
INSERT INTO `user` VALUES ('test69', 'test69', 'cffb9c1f93b6337e59444dbafbd62369');
INSERT INTO `user` VALUES ('test7', 'test7', 'b04083e53e242626595e2b8ea327e525');
INSERT INTO `user` VALUES ('test70', 'test70', '331b14f674757ad7017313c7da0f3573');
INSERT INTO `user` VALUES ('test71', 'test71', '0adb754d58712d01ad99df94ecbcb9a4');
INSERT INTO `user` VALUES ('test72', 'test72', '72db411532a21131ba70094b0c4ad812');
INSERT INTO `user` VALUES ('test73', 'test73', '31e3499c469a87517feb37b98a50a56d');
INSERT INTO `user` VALUES ('test74', 'test74', 'f325e0a65c72201e32c9de4afa604f6e');
INSERT INTO `user` VALUES ('test75', 'test75', '7cc689dbfa7f725b281d83ee6c73c9db');
INSERT INTO `user` VALUES ('test76', 'test76', '3437bc85bf852c073958126d08e4cb57');
INSERT INTO `user` VALUES ('test77', 'test77', 'd40b31764c7f77dad3fa57e01d2c19fd');
INSERT INTO `user` VALUES ('test78', 'test78', '24f5cf9528c35849bc01afbc7ab899b2');
INSERT INTO `user` VALUES ('test79', 'test79', 'addf27c94762c72998a1c8bfe4d62487');
INSERT INTO `user` VALUES ('test8', 'test8', '5e40d09fa0529781afd1254a42913847');
INSERT INTO `user` VALUES ('test80', 'test80', '6277a983790c9d38afff64f9a8ce0bf9');
INSERT INTO `user` VALUES ('test81', 'test81', '19b715c76f17760c8d495f09191d2157');
INSERT INTO `user` VALUES ('test82', 'test82', 'ab441d7e64fd093e7b62c461e5d4f03e');
INSERT INTO `user` VALUES ('test83', 'test83', 'fb86e0ede5dd3341df690d6188f9918c');
INSERT INTO `user` VALUES ('test84', 'test84', '6c0b4f0ee8f309d82a66d101126d7845');
INSERT INTO `user` VALUES ('test85', 'test85', 'c39906c9308f0e3b9edabd1c67fc9b61');
INSERT INTO `user` VALUES ('test86', 'test86', '5ce81b3ee8b45872028a1d15aea9456d');
INSERT INTO `user` VALUES ('test87', 'test87', 'de86ab9f23e930f6131b0bbd27942158');
INSERT INTO `user` VALUES ('test88', 'test88', '841f54c24fd24fb27f45377b2e941070');
INSERT INTO `user` VALUES ('test89', 'test89', 'eef4adf7752a518e7ba014c0629b8815');
INSERT INTO `user` VALUES ('test9', 'test9', '739969b53246b2c727850dbb3490ede6');
INSERT INTO `user` VALUES ('test90', 'test90', 'f22e9d39753c0ea31bfb8c179afd6e11');
INSERT INTO `user` VALUES ('test91', 'test91', '9061fa65754d0dbee26ac2e7bf7c6304');
INSERT INTO `user` VALUES ('test92', 'test92', '99a478cb3a802a11261359ef496abd03');
INSERT INTO `user` VALUES ('test93', 'test93', '590141d26dd12adb8c0e859d5bc40ae8');
INSERT INTO `user` VALUES ('test94', 'test94', '8e183aa7421726f1d2682f78a43926ec');
INSERT INTO `user` VALUES ('test95', 'test95', '253b0cb1cfea1e4d249a2ccd4187464d');
INSERT INTO `user` VALUES ('test96', 'test96', 'b376264f38d87c5ec9a7b0fd57ec28d0');
INSERT INTO `user` VALUES ('test97', 'test97', '5680f66fd95044944d9653e43807c069');
INSERT INTO `user` VALUES ('test98', 'test98', '96ac805584eb36f7448c28c717d51489');
INSERT INTO `user` VALUES ('test99', 'test99', '1d56a580bb00ff669f38e5c1f69b497c');
