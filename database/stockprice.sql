/*
Navicat MySQL Data Transfer

Source Server         : mysql-213
Source Server Version : 50528
Source Host           : 10.1.171.213:3306
Source Database       : quote

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2018-04-04 09:56:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for stockprice
-- ----------------------------
DROP TABLE IF EXISTS `stockprice`;
CREATE TABLE `stockprice` (
  `tradedate` date NOT NULL COMMENT '交易日期',
  `market` varchar(3) COLLATE utf8_bin NOT NULL COMMENT '股票市场',
  `stockcode` varchar(6) COLLATE utf8_bin NOT NULL COMMENT '股票代码',
  `openprice` double NOT NULL COMMENT '开盘价格',
  `closeprice` double NOT NULL COMMENT '收盘价格',
  `highprice` double NOT NULL COMMENT '最高价',
  `lowprice` double NOT NULL COMMENT '最低价',
  `matchqty` int(11) NOT NULL COMMENT '成交数量',
  `matchamount` double NOT NULL COMMENT '成交金额'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
