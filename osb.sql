/*
Navicat MySQL Data Transfer

Source Server         : 台式机
Source Server Version : 50736
Source Host           : 192.168.0.103:3306
Source Database       : osb

Target Server Type    : MYSQL
Target Server Version : 50736
File Encoding         : 65001

Date: 2021-11-26 11:59:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for block
-- ----------------------------
DROP TABLE IF EXISTS `block`;
CREATE TABLE `block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `prev_hash` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `reward_address` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `reward_money` decimal(20,8) DEFAULT NULL,
  `bits` decimal(30,2) DEFAULT NULL,
  `is_useful` bit(1) DEFAULT b'1',
  `type` varchar(64) DEFAULT NULL COMMENT '区块类型',
  `txs` bigint(20) DEFAULT NULL COMMENT '区块的交易数量', 
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`) USING BTREE,
  KEY `time` (`time`) USING BTREE,
  KEY `height` (`height`) USING BTREE,
  KEY `reward_address` (`reward_address`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6886 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for pool
-- ----------------------------
DROP TABLE IF EXISTS `pool`;
CREATE TABLE `pool` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `fee` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `address` (`address`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for PVInfo
-- ----------------------------
DROP TABLE IF EXISTS `PVInfo`;
CREATE TABLE `pvinfo` (
  `pv_id` int(11) NOT NULL AUTO_INCREMENT,
  `pv_ip` varchar(255) DEFAULT NULL,
  `pv_date` datetime DEFAULT NULL,
  `pv_page` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pv_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tx
-- ----------------------------
DROP TABLE IF EXISTS `tx`;
CREATE TABLE `tx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `block_hash` varchar(64) DEFAULT NULL,
  `txid` varchar(64) DEFAULT NULL,
  `from` varchar(64) DEFAULT NULL,
  `to` varchar(64) DEFAULT NULL,
  `amount` decimal(20,8) DEFAULT NULL,
  `fee` decimal(20,8) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `dpos_in` varchar(64) DEFAULT NULL COMMENT '挖矿的模板地址',
  `client_in` varchar(64) DEFAULT NULL COMMENT '挖矿的模板地址对应的钱包地址',
  `dpos_out` varchar(64) DEFAULT NULL COMMENT '抵押转出的挖矿地址',
  `client_out` varchar(64) DEFAULT NULL COMMENT '抵押转出的挖矿地址对应的普通地址',
  `transtime` bigint(20) DEFAULT NULL COMMENT '交易时间',
  `data` varchar(4096) DEFAULT NULL COMMENT '交易备注',
  `height` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `block_hash` (`block_hash`) USING BTREE,
  KEY `txid` (`txid`) USING BTREE,
  KEY `from` (`from`) USING BTREE,
  KEY `to` (`to`) USING BTREE,
  KEY `type` (`type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25901 DEFAULT CHARSET=utf8;
