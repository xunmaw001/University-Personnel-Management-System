-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmi89ce
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmi89ce/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmi89ce/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmi89ce/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609297608111 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (81,'2020-12-30 03:02:17','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(82,'2020-12-30 03:02:17','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(83,'2020-12-30 03:02:17','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(84,'2020-12-30 03:02:17','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(85,'2020-12-30 03:02:17','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(86,'2020-12-30 03:02:17','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1609297587517,'2020-12-30 03:06:26','论坛','这里可以发布信息，用于用户进行交流\r\n',0,1609297528065,'1','开放'),(1609297608110,'2020-12-30 03:06:47',NULL,'66666',1609297587517,11,'001',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongzixinxi`
--

DROP TABLE IF EXISTS `gongzixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongzixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jibengongzi` int(11) DEFAULT NULL COMMENT '基本工资',
  `jiabangongzi` int(11) DEFAULT NULL COMMENT '加班工资',
  `butie` int(11) DEFAULT NULL COMMENT '补贴',
  `shebao` int(11) DEFAULT NULL COMMENT '社保',
  `huoshi` int(11) DEFAULT NULL COMMENT '伙食',
  `qitakoufei` int(11) DEFAULT NULL COMMENT '其他扣费',
  `shifagongzi` int(11) DEFAULT NULL COMMENT '实发工资',
  `riqi` date DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609297941298 DEFAULT CHARSET=utf8 COMMENT='工资信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongzixinxi`
--

LOCK TABLES `gongzixinxi` WRITE;
/*!40000 ALTER TABLE `gongzixinxi` DISABLE KEYS */;
INSERT INTO `gongzixinxi` VALUES (71,'2020-12-30 03:02:17','名称1','工号1','姓名1',1,1,1,1,1,1,1,'2020-12-30'),(72,'2020-12-30 03:02:17','名称2','工号2','姓名2',2,2,2,2,2,2,2,'2020-12-30'),(73,'2020-12-30 03:02:17','名称3','工号3','姓名3',3,3,3,3,3,3,3,'2020-12-30'),(74,'2020-12-30 03:02:17','名称4','工号4','姓名4',4,4,4,4,4,4,4,'2020-12-30'),(75,'2020-12-30 03:02:17','名称5','工号5','姓名5',5,5,5,5,5,5,5,'2020-12-30'),(76,'2020-12-30 03:02:17','名称6','工号6','姓名6',6,6,6,6,6,6,6,'2020-12-30'),(1609297941297,'2020-12-30 03:12:20','12月份工资','1','刘倩',5000,2500,500,580,250,120,7050,'2020-12-15');
/*!40000 ALTER TABLE `gongzixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaoqindaka`
--

DROP TABLE IF EXISTS `kaoqindaka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaoqindaka` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `dakashijian` datetime DEFAULT NULL COMMENT '打卡时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1609297561127 DEFAULT CHARSET=utf8 COMMENT='考勤打卡';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaoqindaka`
--

LOCK TABLES `kaoqindaka` WRITE;
/*!40000 ALTER TABLE `kaoqindaka` DISABLE KEYS */;
INSERT INTO `kaoqindaka` VALUES (31,'2020-12-30 03:02:17','编号1','2020-12-30 11:02:17','工号1','姓名1',1),(32,'2020-12-30 03:02:17','编号2','2020-12-30 11:02:17','工号2','姓名2',2),(33,'2020-12-30 03:02:17','编号3','2020-12-30 11:02:17','工号3','姓名3',3),(34,'2020-12-30 03:02:17','编号4','2020-12-30 11:02:17','工号4','姓名4',4),(35,'2020-12-30 03:02:17','编号5','2020-12-30 11:02:17','工号5','姓名5',5),(36,'2020-12-30 03:02:17','编号6','2020-12-30 11:02:17','工号6','姓名6',6),(1609297561126,'2020-12-30 03:06:00','202012301154070919536','2020-11-29 20:00:00','1','刘倩',1609297528065);
/*!40000 ALTER TABLE `kaoqindaka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nianjiadiaoxiu`
--

DROP TABLE IF EXISTS `nianjiadiaoxiu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nianjiadiaoxiu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `diaoxiuneirong` longtext COMMENT '调休内容',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609297849698 DEFAULT CHARSET=utf8 COMMENT='年假调休';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nianjiadiaoxiu`
--

LOCK TABLES `nianjiadiaoxiu` WRITE;
/*!40000 ALTER TABLE `nianjiadiaoxiu` DISABLE KEYS */;
INSERT INTO `nianjiadiaoxiu` VALUES (61,'2020-12-30 03:02:17','名称1','调休内容1','2020-12-30','工号1','姓名1','否',''),(62,'2020-12-30 03:02:17','名称2','调休内容2','2020-12-30','工号2','姓名2','否',''),(63,'2020-12-30 03:02:17','名称3','调休内容3','2020-12-30','工号3','姓名3','否',''),(64,'2020-12-30 03:02:17','名称4','调休内容4','2020-12-30','工号4','姓名4','否',''),(65,'2020-12-30 03:02:17','名称5','调休内容5','2020-12-30','工号5','姓名5','否',''),(66,'2020-12-30 03:02:17','名称6','调休内容6','2020-12-30','工号6','姓名6','否',''),(1609297849697,'2020-12-30 03:10:49','2020年假通知','我要提前休假，这个星期有事，先调用5天','2020-11-29','1','刘倩','是','同意调假');
/*!40000 ALTER TABLE `nianjiadiaoxiu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nianjiaxinxi`
--

DROP TABLE IF EXISTS `nianjiaxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nianjiaxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianjiatianshu` varchar(200) DEFAULT NULL COMMENT '年假天数',
  `beizhu` longtext COMMENT '备注',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609297723003 DEFAULT CHARSET=utf8 COMMENT='年假信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nianjiaxinxi`
--

LOCK TABLES `nianjiaxinxi` WRITE;
/*!40000 ALTER TABLE `nianjiaxinxi` DISABLE KEYS */;
INSERT INTO `nianjiaxinxi` VALUES (51,'2020-12-30 03:02:17','名称1','工号1','姓名1','年假天数1','备注1','2020-12-30'),(52,'2020-12-30 03:02:17','名称2','工号2','姓名2','年假天数2','备注2','2020-12-30'),(53,'2020-12-30 03:02:17','名称3','工号3','姓名3','年假天数3','备注3','2020-12-30'),(54,'2020-12-30 03:02:17','名称4','工号4','姓名4','年假天数4','备注4','2020-12-30'),(55,'2020-12-30 03:02:17','名称5','工号5','姓名5','年假天数5','备注5','2020-12-30'),(56,'2020-12-30 03:02:17','名称6','工号6','姓名6','年假天数6','备注6','2020-12-30'),(1609297723002,'2020-12-30 03:08:42','2020年假通知','1','刘倩','10','有10天年假从1月25号开始放假','2020-11-29');
/*!40000 ALTER TABLE `nianjiaxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qingjiaxinxi`
--

DROP TABLE IF EXISTS `qingjiaxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qingjiaxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `qingjiariqi` date DEFAULT NULL COMMENT '请假日期',
  `qingjiatianshu` varchar(200) DEFAULT NULL COMMENT '请假天数',
  `jieshuriqi` date DEFAULT NULL COMMENT '结束日期',
  `qingjianeirong` longtext COMMENT '请假内容',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609297812000 DEFAULT CHARSET=utf8 COMMENT='请假信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qingjiaxinxi`
--

LOCK TABLES `qingjiaxinxi` WRITE;
/*!40000 ALTER TABLE `qingjiaxinxi` DISABLE KEYS */;
INSERT INTO `qingjiaxinxi` VALUES (41,'2020-12-30 03:02:17','名称1','2020-12-30','请假天数1','2020-12-30','请假内容1','工号1','姓名1','否',''),(42,'2020-12-30 03:02:17','名称2','2020-12-30','请假天数2','2020-12-30','请假内容2','工号2','姓名2','否',''),(43,'2020-12-30 03:02:17','名称3','2020-12-30','请假天数3','2020-12-30','请假内容3','工号3','姓名3','否',''),(44,'2020-12-30 03:02:17','名称4','2020-12-30','请假天数4','2020-12-30','请假内容4','工号4','姓名4','否',''),(45,'2020-12-30 03:02:17','名称5','2020-12-30','请假天数5','2020-12-30','请假内容5','工号5','姓名5','否',''),(46,'2020-12-30 03:02:17','名称6','2020-12-30','请假天数6','2020-12-30','请假内容6','工号6','姓名6','否',''),(1609297811999,'2020-12-30 03:10:11','我要请假','2020-11-29','3天','2020-12-01','生病了需要请假三天，内容都是用于测试的，可以自行修改删除','1','刘倩','是','同意请假');
/*!40000 ALTER TABLE `qingjiaxinxi` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','1ol9e93quxgupcnulyeo0k0ean9sv4bi','2020-12-30 03:03:04','2020-12-30 04:11:19'),(2,1609297528065,'1','yuangong','员工','ty582okass70sf75mwdskgt19mrnr1bq','2020-12-30 03:05:33','2020-12-30 04:12:37'),(3,11,'001','yuangong','员工','cejhmaepfnb3rdk6bkz1flhy5svabafk','2020-12-30 03:06:38','2020-12-30 04:12:31');
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
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2020-12-30 03:02:17');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xitonggonggao`
--

DROP TABLE IF EXISTS `xitonggonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xitonggonggao`
--

LOCK TABLES `xitonggonggao` WRITE;
/*!40000 ALTER TABLE `xitonggonggao` DISABLE KEYS */;
INSERT INTO `xitonggonggao` VALUES (21,'2020-12-30 03:02:17','公告信息','http://localhost:8080/jspmi89ce/upload/1609297667186.jpg','管理员这里可以发布公告信息','2020-11-29 13:29:17'),(22,'2020-12-30 03:02:17','标题2','http://localhost:8080/jspmi89ce/upload/xitonggonggao_tupian2.jpg','公告内容2','2020-12-30 11:02:17'),(23,'2020-12-30 03:02:17','标题3','http://localhost:8080/jspmi89ce/upload/xitonggonggao_tupian3.jpg','公告内容3','2020-12-30 11:02:17'),(24,'2020-12-30 03:02:17','标题4','http://localhost:8080/jspmi89ce/upload/xitonggonggao_tupian4.jpg','公告内容4','2020-12-30 11:02:17'),(25,'2020-12-30 03:02:17','标题5','http://localhost:8080/jspmi89ce/upload/xitonggonggao_tupian5.jpg','公告内容5','2020-12-30 11:02:17'),(26,'2020-12-30 03:02:17','标题6','http://localhost:8080/jspmi89ce/upload/xitonggonggao_tupian6.jpg','公告内容6','2020-12-30 11:02:17');
/*!40000 ALTER TABLE `xitonggonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangong`
--

DROP TABLE IF EXISTS `yuangong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhuzhi` varchar(200) DEFAULT NULL COMMENT '住址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1609297528066 DEFAULT CHARSET=utf8 COMMENT='员工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangong`
--

LOCK TABLES `yuangong` WRITE;
/*!40000 ALTER TABLE `yuangong` DISABLE KEYS */;
INSERT INTO `yuangong` VALUES (11,'2020-12-30 03:02:17','001','001','姓名1','男','http://localhost:8080/jspmi89ce/upload/1609297456903.png','13823888881','440300199101010001','住址1'),(1609297528065,'2020-12-30 03:05:28','1','1','刘倩','女','http://localhost:8080/jspmi89ce/upload/1609297543853.png','15214121412','441214121412141214','上海市1');
/*!40000 ALTER TABLE `yuangong` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-30 11:14:59
