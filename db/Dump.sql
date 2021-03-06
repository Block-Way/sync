-- MySQL dump 10.13  Distrib 5.7.37, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: hah
-- ------------------------------------------------------
-- Server version	5.7.37-0ubuntu0.18.04.1

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
-- Table structure for table `addr`
--

DROP TABLE IF EXISTS `addr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addr` (
  `walletId` varchar(64) NOT NULL,
  `bbc_addr` varchar(64) DEFAULT NULL,
  `eth_addr` varchar(64) DEFAULT NULL,
  `btc_addr` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`walletId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addr`
--

LOCK TABLES `addr` WRITE;
/*!40000 ALTER TABLE `addr` DISABLE KEYS */;
/*!40000 ALTER TABLE `addr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banners` (
  `id` int(10) NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `content` varchar(45) DEFAULT NULL,
  `img` varchar(64) DEFAULT NULL,
  `bgImg` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (1,'test','test img1','test img','http://via.placeholder.com/350x150','http://via.placeholder.com/350x150'),(2,'test','test img2','test img','http://via.placeholder.cn/350x150','http://via.placeholder.cn/350x150');
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `block`
--

DROP TABLE IF EXISTS `block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `type` varchar(64) DEFAULT NULL COMMENT '????????????',
  `txs` bigint(20) DEFAULT NULL COMMENT '?????????????????????',
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`) USING BTREE,
  KEY `time` (`time`) USING BTREE,
  KEY `height` (`height`) USING BTREE,
  KEY `reward_address` (`reward_address`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6886 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block`
--

LOCK TABLES `block` WRITE;
/*!40000 ALTER TABLE `block` DISABLE KEYS */;
/*!40000 ALTER TABLE `block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pool`
--

DROP TABLE IF EXISTS `pool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pool` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(64) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `votes` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `quotations`
--

DROP TABLE IF EXISTS `quotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quotations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tradePairId` varchar(45) DEFAULT NULL,
  `price` decimal(20,8) DEFAULT NULL,
  `precision` int(11) DEFAULT NULL,
  `price24h` decimal(20,8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotations`
--

LOCK TABLES `quotations` WRITE;
/*!40000 ALTER TABLE `quotations` DISABLE KEYS */;
INSERT INTO `quotations` VALUES (1,'HAH/USDT',13.20000000,8,11.50000000),(2,'MAM/USDT',11.00000000,8,10.00000000),(3,'BTC/USDT',10.00000000,8,10.00000000),(4,'ETH/USDT',9.00000000,8,10.00000000),(5,'TRX/USDT',8.00000000,8,10.00000000),(6,'BNB/USDT',7.00000000,8,10.00000000),(7,'XRP/USDT',6.50000000,8,10.00000000);
/*!40000 ALTER TABLE `quotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rank`
--

DROP TABLE IF EXISTS `rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rank` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `address` varchar(65) DEFAULT NULL COMMENT '??????',
  `ranking` int(11) DEFAULT NULL COMMENT '??????',
  `yield` decimal(20,6) DEFAULT NULL COMMENT '?????????',
  `balance` decimal(20,6) DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`id`),
  KEY `address` (`address`),
  KEY `ranking` (`ranking`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rank`
--

LOCK TABLES `rank` WRITE;
/*!40000 ALTER TABLE `rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reward`
--

DROP TABLE IF EXISTS `reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reward` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `height` int(11) DEFAULT NULL,
  `amount` bigint(20) DEFAULT NULL COMMENT '????????????',
  `rank` int(11) DEFAULT NULL COMMENT '??????',
  `stake_reward` bigint(20) DEFAULT NULL COMMENT '????????????',
  `achievement` bigint(20) DEFAULT NULL COMMENT '????????????????????????',
  `power` bigint(20) DEFAULT NULL,
  `promotion_reward` bigint(20) DEFAULT NULL COMMENT '????????????',
  `address` varchar(64) DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`),
  KEY `index2` (`address`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reward`
--

LOCK TABLES `reward` WRITE;
/*!40000 ALTER TABLE `reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx`
--

DROP TABLE IF EXISTS `tx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `block_hash` varchar(64) DEFAULT NULL,
  `txid` varchar(64) DEFAULT NULL,
  `from` varchar(64) DEFAULT NULL,
  `to` varchar(64) DEFAULT NULL,
  `amount` decimal(20,8) DEFAULT NULL,
  `fee` decimal(20,8) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `dpos_in` varchar(64) DEFAULT NULL COMMENT '?????????????????????',
  `client_in` varchar(64) DEFAULT NULL COMMENT '??????????????????????????????????????????',
  `dpos_out` varchar(64) DEFAULT NULL COMMENT '???????????????????????????',
  `client_out` varchar(64) DEFAULT NULL COMMENT '????????????????????????????????????????????????',
  `transtime` bigint(20) DEFAULT NULL COMMENT '????????????',
  `data` varchar(4096) DEFAULT NULL COMMENT '????????????',
  `height` int(11) DEFAULT NULL,
  `nonce` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `block_hash` (`block_hash`) USING BTREE,
  KEY `txid` (`txid`) USING BTREE,
  KEY `from` (`from`) USING BTREE,
  KEY `to` (`to`) USING BTREE,
  KEY `type` (`type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25901 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx`
--

LOCK TABLES `tx` WRITE;

DROP TABLE IF EXISTS `blockstatistics`;
CREATE TABLE `blockstatistics` (
  `reward_address` varchar(255) NOT NULL ,
  `reward_date` varchar(255) not NULL,
  `amount` int(11)  null
) 





/*!40000 ALTER TABLE `tx` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-01 15:31:09



drop procedure if exists `blockstatisticsproc`;

CREATE DEFINER=`hah`@`%` PROCEDURE `blockstatisticsproc`()
BEGIN
DECLARE done INT DEFAULT 0; 
declare startState int default 10;
declare i int;
declare blockCount int;
declare reward_address1 varchar(255);
declare reward_date1 varchar(255);
declare amount1 int ;
declare cur CURSOR for select reward_address,reward_date ,count(id) as amount   from(select * from  (
select id , reward_address , FROM_UNIXTIME(time,'%Y-%m-%d') as reward_date  from block where type = 'primary-dpos') a where  datediff(now(), reward_date ) < 2)b
group by   reward_address, reward_date order by reward_date ,reward_address;
DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1; 
set blockCount = 1;
 OPEN cur;   
 REPEAT 
FETCH  cur INTO reward_address1, reward_date1, amount1; 
select reward_address1,reward_date1,amount1;
   if exists ( select *  from blockstatistics where reward_address=reward_address1 and reward_date=reward_date1) then 
	 update blockstatistics set amount=amount1 where reward_address=reward_address1 and reward_date=reward_date1;
   else
	insert into blockstatistics( reward_address, reward_date,amount) values( reward_address1,reward_date1,amount1);    
   end if;  
UNTIL done END REPEAT; 
CLOSE cur; 
END




drop procedure if exists `blockstatisticsproc31`;
CREATE DEFINER=`hah`@`%` PROCEDURE `blockstatisticsproc31`()
BEGIN
delete from blockstatistics where datediff(now(), str_to_date(reward_date,'%Y-%m-%d')) < 31;
  insert into blockstatistics(reward_address,reward_date,amount) select reward_address,reward_date ,count(id) as amount 
 from(select * from(select id , reward_address , FROM_UNIXTIME(time,'%Y-%m-%d') as reward_date  from block where type = 'primary-dpos') a 
 where  datediff(now(), reward_date ) < 31)b group by   reward_address, reward_date order by reward_date ,reward_address;
END