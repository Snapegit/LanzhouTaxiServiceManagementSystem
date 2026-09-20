-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl86201279
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `cl86201279`
--

/*!40000 DROP DATABASE IF EXISTS `cl86201279`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl86201279` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl86201279`;

--
-- Table structure for table `cheliangxinxi`
--

DROP TABLE IF EXISTS `cheliangxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheliangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheliangbianhao` varchar(200) DEFAULT NULL COMMENT '车辆编号',
  `cheliangtupian` longtext COMMENT '车辆图片',
  `cheliangleixing` varchar(200) NOT NULL COMMENT '车辆类型',
  `cheliangmingcheng` varchar(200) DEFAULT NULL COMMENT '车辆名称',
  `jiage` double DEFAULT NULL COMMENT '价格',
  `cheliangzhuangtai` varchar(200) DEFAULT NULL COMMENT '车辆状态',
  `cheliangxiangqing` longtext COMMENT '车辆详情',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cheliangbianhao` (`cheliangbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1712566100632 DEFAULT CHARSET=utf8 COMMENT='车辆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheliangxinxi`
--

LOCK TABLES `cheliangxinxi` WRITE;
/*!40000 ALTER TABLE `cheliangxinxi` DISABLE KEYS */;
INSERT INTO `cheliangxinxi` VALUES (41,'2024-04-08 08:40:23','1111111111','file/cheliangxinxiCheliangtupian1.jpg,file/cheliangxinxiCheliangtupian2.jpg,file/cheliangxinxiCheliangtupian3.jpg','车辆类型1','车辆名称1',1,'已出租','车辆详情1'),(42,'2024-04-08 08:40:23','2222222222','file/cheliangxinxiCheliangtupian2.jpg,file/cheliangxinxiCheliangtupian3.jpg,file/cheliangxinxiCheliangtupian4.jpg','车辆类型2','车辆名称2',2,'已出租','车辆详情2'),(43,'2024-04-08 08:40:23','3333333333','file/cheliangxinxiCheliangtupian3.jpg,file/cheliangxinxiCheliangtupian4.jpg,file/cheliangxinxiCheliangtupian5.jpg','车辆类型3','车辆名称3',3,'已出租','车辆详情3'),(44,'2024-04-08 08:40:23','4444444444','file/cheliangxinxiCheliangtupian4.jpg,file/cheliangxinxiCheliangtupian5.jpg,file/cheliangxinxiCheliangtupian6.jpg','车辆类型4','车辆名称4',4,'已出租','车辆详情4'),(45,'2024-04-08 08:40:23','5555555555','file/cheliangxinxiCheliangtupian5.jpg,file/cheliangxinxiCheliangtupian6.jpg,file/cheliangxinxiCheliangtupian7.jpg','车辆类型5','车辆名称5',5,'已出租','车辆详情5'),(46,'2024-04-08 08:40:23','6666666666','file/cheliangxinxiCheliangtupian6.jpg,file/cheliangxinxiCheliangtupian7.jpg,file/cheliangxinxiCheliangtupian8.jpg','车辆类型6','车辆名称6',6,'已出租','车辆详情6'),(1712566100631,'2024-04-08 08:48:20','1712566085617','file/1712566090614.jpg','SUV','发文',300,'已出租','福娃恶妇');
/*!40000 ALTER TABLE `cheliangxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kehu`
--

DROP TABLE IF EXISTS `kehu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kehu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kehuzhanghao` varchar(200) NOT NULL COMMENT '客户账号',
  `kehumima` varchar(200) NOT NULL COMMENT '客户密码',
  `kehuxingming` varchar(200) NOT NULL COMMENT '客户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kehuzhanghao` (`kehuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1712566133448 DEFAULT CHARSET=utf8 COMMENT='客户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kehu`
--

LOCK TABLES `kehu` WRITE;
/*!40000 ALTER TABLE `kehu` DISABLE KEYS */;
INSERT INTO `kehu` VALUES (31,'2024-04-08 08:40:23','客户账号1','123456','客户姓名1','男','年龄1','19819881111','441622200101010001'),(32,'2024-04-08 08:40:23','客户账号2','123456','客户姓名2','男','年龄2','19819881112','441622200202020002'),(33,'2024-04-08 08:40:23','客户账号3','123456','客户姓名3','男','年龄3','19819881113','441622200303030003'),(34,'2024-04-08 08:40:23','客户账号4','123456','客户姓名4','男','年龄4','19819881114','441622200404040004'),(35,'2024-04-08 08:40:23','客户账号5','123456','客户姓名5','男','年龄5','19819881115','441622200505050005'),(1712566133447,'2024-04-08 08:48:53','111','111','李玉','女','25','13212121211','441212121212121211');
/*!40000 ALTER TABLE `kehu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-04-08 08:40:24','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"导出\",\"首页总数\",\"首页统计\"],\"menu\":\"客户\",\"menuJump\":\"列表\",\"tableName\":\"kehu\"}],\"fontClass\":\"icon-user1\",\"menu\":\"客户管理\",\"unicode\":\"&#xef97;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"导出\"],\"menu\":\"汽车入库\",\"menuJump\":\"列表\",\"tableName\":\"qicheruku\"}],\"fontClass\":\"icon-common24\",\"menu\":\"汽车入库管理\",\"unicode\":\"&#xee07;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"首页统计\",\"首页总数\",\"出租\"],\"menu\":\"车辆信息\",\"menuJump\":\"列表\",\"tableName\":\"cheliangxinxi\"}],\"fontClass\":\"icon-common28\",\"menu\":\"车辆信息管理\",\"unicode\":\"&#xee2d;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"导出\",\"首页总数\",\"首页统计\"],\"menu\":\"汽车出租\",\"menuJump\":\"列表\",\"tableName\":\"qichechuzu\"}],\"fontClass\":\"icon-common34\",\"menu\":\"汽车出租管理\",\"unicode\":\"&#xee85;\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"查看\"],\"menu\":\"车辆信息\",\"menuJump\":\"列表\",\"tableName\":\"cheliangxinxi\"}],\"fontClass\":\"icon-common28\",\"menu\":\"车辆信息管理\",\"unicode\":\"&#xee2d;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"查看\"],\"menu\":\"汽车出租\",\"menuJump\":\"列表\",\"tableName\":\"qichechuzu\"}],\"fontClass\":\"icon-common34\",\"menu\":\"汽车出租管理\",\"unicode\":\"&#xee85;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\"],\"menu\":\"汽车入库\",\"menuJump\":\"列表\",\"tableName\":\"qicheruku\"}],\"fontClass\":\"icon-common24\",\"menu\":\"汽车入库管理\",\"unicode\":\"&#xee07;\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"客户\",\"tableName\":\"kehu\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qichechuzu`
--

DROP TABLE IF EXISTS `qichechuzu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qichechuzu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheliangbianhao` varchar(200) DEFAULT NULL COMMENT '车辆编号',
  `cheliangtupian` longtext COMMENT '车辆图片',
  `cheliangleixing` varchar(200) NOT NULL COMMENT '车辆类型',
  `cheliangmingcheng` varchar(200) DEFAULT NULL COMMENT '车辆名称',
  `jiage` double DEFAULT NULL COMMENT '价格',
  `chuzushijian` datetime DEFAULT NULL COMMENT '出租时间',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712566173404 DEFAULT CHARSET=utf8 COMMENT='汽车出租';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qichechuzu`
--

LOCK TABLES `qichechuzu` WRITE;
/*!40000 ALTER TABLE `qichechuzu` DISABLE KEYS */;
INSERT INTO `qichechuzu` VALUES (51,'2024-04-08 08:40:23','车辆编号1','file/qichechuzuCheliangtupian1.jpg,file/qichechuzuCheliangtupian2.jpg,file/qichechuzuCheliangtupian3.jpg','车辆类型1','车辆名称1',1,'2024-04-08 16:40:23','客户账号1','客户姓名1'),(52,'2024-04-08 08:40:23','车辆编号2','file/qichechuzuCheliangtupian2.jpg,file/qichechuzuCheliangtupian3.jpg,file/qichechuzuCheliangtupian4.jpg','车辆类型2','车辆名称2',2,'2024-04-08 16:40:23','客户账号2','客户姓名2'),(53,'2024-04-08 08:40:23','车辆编号3','file/qichechuzuCheliangtupian3.jpg,file/qichechuzuCheliangtupian4.jpg,file/qichechuzuCheliangtupian5.jpg','车辆类型3','车辆名称3',3,'2024-04-08 16:40:23','客户账号3','客户姓名3'),(54,'2024-04-08 08:40:23','车辆编号4','file/qichechuzuCheliangtupian4.jpg,file/qichechuzuCheliangtupian5.jpg,file/qichechuzuCheliangtupian6.jpg','车辆类型4','车辆名称4',4,'2024-04-08 16:40:23','客户账号4','客户姓名4'),(55,'2024-04-08 08:40:23','车辆编号5','file/qichechuzuCheliangtupian5.jpg,file/qichechuzuCheliangtupian6.jpg,file/qichechuzuCheliangtupian7.jpg','车辆类型5','车辆名称5',5,'2024-04-08 16:40:23','客户账号5','客户姓名5'),(56,'2024-04-08 08:40:23','车辆编号6','file/qichechuzuCheliangtupian6.jpg,file/qichechuzuCheliangtupian7.jpg,file/qichechuzuCheliangtupian8.jpg','车辆类型6','车辆名称6',6,'2024-04-08 16:40:23','客户账号6','客户姓名6'),(1712566173403,'2024-04-08 08:49:32','1712566085617','file/1712566090614.jpg','SUV','发文',300,'2024-04-08 16:49:29','111','李玉');
/*!40000 ALTER TABLE `qichechuzu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qicheruku`
--

DROP TABLE IF EXISTS `qicheruku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qicheruku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chepaihao` varchar(200) NOT NULL COMMENT '车牌号',
  `qichemingcheng` varchar(200) DEFAULT NULL COMMENT '汽车名称',
  `qichetupian` longtext COMMENT '汽车图片',
  `cheliangleixing` varchar(200) NOT NULL COMMENT '车辆类型',
  `qichepinpai` varchar(200) NOT NULL COMMENT '汽车品牌',
  `cheshenyanse` varchar(200) NOT NULL COMMENT '车身颜色',
  `xiangqingdizhi` varchar(200) NOT NULL COMMENT '详情地址',
  `qichexiangqing` longtext COMMENT '汽车详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712566084372 DEFAULT CHARSET=utf8 COMMENT='汽车入库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qicheruku`
--

LOCK TABLES `qicheruku` WRITE;
/*!40000 ALTER TABLE `qicheruku` DISABLE KEYS */;
INSERT INTO `qicheruku` VALUES (61,'2024-04-08 08:40:24','车牌号1','汽车名称1','file/qicherukuQichetupian1.jpg,file/qicherukuQichetupian2.jpg,file/qicherukuQichetupian3.jpg','车辆类型1','汽车品牌1','车身颜色1','详情地址1','汽车详情1'),(62,'2024-04-08 08:40:24','车牌号2','汽车名称2','file/qicherukuQichetupian2.jpg,file/qicherukuQichetupian3.jpg,file/qicherukuQichetupian4.jpg','车辆类型2','汽车品牌2','车身颜色2','详情地址2','汽车详情2'),(63,'2024-04-08 08:40:24','车牌号3','汽车名称3','file/qicherukuQichetupian3.jpg,file/qicherukuQichetupian4.jpg,file/qicherukuQichetupian5.jpg','车辆类型3','汽车品牌3','车身颜色3','详情地址3','汽车详情3'),(64,'2024-04-08 08:40:24','车牌号4','汽车名称4','file/qicherukuQichetupian4.jpg,file/qicherukuQichetupian5.jpg,file/qicherukuQichetupian6.jpg','车辆类型4','汽车品牌4','车身颜色4','详情地址4','汽车详情4'),(65,'2024-04-08 08:40:24','车牌号5','汽车名称5','file/qicherukuQichetupian5.jpg,file/qicherukuQichetupian6.jpg,file/qicherukuQichetupian7.jpg','车辆类型5','汽车品牌5','车身颜色5','详情地址5','汽车详情5'),(66,'2024-04-08 08:40:24','车牌号6','汽车名称6','file/qicherukuQichetupian6.jpg,file/qicherukuQichetupian7.jpg,file/qicherukuQichetupian8.jpg','车辆类型6','汽车品牌6','车身颜色6','详情地址6','汽车详情6'),(1712566084371,'2024-04-08 08:48:04','发撒的','福娃恶妇','file/1712566079491.jpg','哇哦发我','范围啊','飞娃儿','飞娃儿','<p>范围阿帆</p>');
/*!40000 ALTER TABLE `qicheruku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','7vmv5szjy1m9xrs2ncvjv7bupomn0gu2','2024-04-08 08:47:44','2024-04-08 09:50:36'),(2,1712566133447,'111','kehu','客户','ftw2xemo3gd5o8tuzt45gytq4w97skvy','2024-04-08 08:48:58','2024-04-08 09:50:25');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-04-08 08:40:24','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-08 20:08:26
