/*
Navicat MySQL Data Transfer

Source Server         : mysql-213
Source Server Version : 50528
Source Host           : 10.1.171.213:3306
Source Database       : quote

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2018-04-11 09:00:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for event
-- ----------------------------
DROP TABLE IF EXISTS `event`;
CREATE TABLE `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '时间ID',
  `occurdate` int(10) unsigned NOT NULL COMMENT '发生日期',
  `industry` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '所属行业',
  `field` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '所属领域',
  `company` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '公司主体',
  `event` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '事件内容',
  `stockcode` varchar(6) COLLATE utf8_bin NOT NULL COMMENT '股票代码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用于记录新闻事件,研究新闻事件对股票行情的影响';

-- ----------------------------
-- Records of event
-- ----------------------------
