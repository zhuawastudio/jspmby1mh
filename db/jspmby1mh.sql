-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmby1mh
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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614762688525 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (61,'2021-03-03 06:15:46',1,1,'提问1','回复1',1),(62,'2021-03-03 06:15:46',2,2,'提问2','回复2',2),(63,'2021-03-03 06:15:46',3,3,'提问3','回复3',3),(64,'2021-03-03 06:15:46',4,4,'提问4','回复4',4),(65,'2021-03-03 06:15:46',5,5,'提问5','回复5',5),(66,'2021-03-03 06:15:46',6,6,'提问6','回复6',6),(1614762688524,'2021-03-03 09:11:28',1614762558505,NULL,'‍有个问题\r\n','11111\r\n',0);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmby1mh/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmby1mh/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmby1mh/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjiaoyouxinxi`
--

DROP TABLE IF EXISTS `discussjiaoyouxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjiaoyouxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614762654535 DEFAULT CHARSET=utf8 COMMENT='交友信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjiaoyouxinxi`
--

LOCK TABLES `discussjiaoyouxinxi` WRITE;
/*!40000 ALTER TABLE `discussjiaoyouxinxi` DISABLE KEYS */;
INSERT INTO `discussjiaoyouxinxi` VALUES (91,'2021-03-03 06:15:46',1,1,'评论内容1','回复内容1'),(92,'2021-03-03 06:15:46',2,2,'评论内容2','回复内容2'),(93,'2021-03-03 06:15:46',3,3,'评论内容3','回复内容3'),(94,'2021-03-03 06:15:46',4,4,'评论内容4','回复内容4'),(95,'2021-03-03 06:15:46',5,5,'评论内容5','回复内容5'),(96,'2021-03-03 06:15:46',6,6,'评论内容6','回复内容6'),(1614762654534,'2021-03-03 09:10:54',21,1614762558505,'adsasd',NULL);
/*!40000 ALTER TABLE `discussjiaoyouxinxi` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1614762678564 DEFAULT CHARSET=utf8 COMMENT='论坛交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (71,'2021-03-03 06:15:46','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(72,'2021-03-03 06:15:46','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(73,'2021-03-03 06:15:46','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(74,'2021-03-03 06:15:46','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(75,'2021-03-03 06:15:46','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(76,'2021-03-03 06:15:46','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1614762670333,'2021-03-03 09:11:09','asdasd','<p>请输入内容asdasd</p>',0,1614762558505,'2','开放'),(1614762678563,'2021-03-03 09:11:17',NULL,'请输入评论asdsadasdsa',1614762670333,1614762558505,'2',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongbaoming`
--

DROP TABLE IF EXISTS `huodongbaoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongbaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baomingbianhao` varchar(200) DEFAULT NULL COMMENT '报名编号',
  `huodongbiaoti` varchar(200) DEFAULT NULL COMMENT '活动标题',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `kaishishijian` varchar(200) DEFAULT NULL COMMENT '开始时间',
  `jieshushijian` varchar(200) DEFAULT NULL COMMENT '结束时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `baomingbianhao` (`baomingbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614762635546 DEFAULT CHARSET=utf8 COMMENT='活动报名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongbaoming`
--

LOCK TABLES `huodongbaoming` WRITE;
/*!40000 ALTER TABLE `huodongbaoming` DISABLE KEYS */;
INSERT INTO `huodongbaoming` VALUES (41,'2021-03-03 06:15:46','报名编号1','活动标题1','活动地点1','开始时间1','结束时间1','用户账号1','用户姓名1','备注1'),(42,'2021-03-03 06:15:46','报名编号2','活动标题2','活动地点2','开始时间2','结束时间2','用户账号2','用户姓名2','备注2'),(43,'2021-03-03 06:15:46','报名编号3','活动标题3','活动地点3','开始时间3','结束时间3','用户账号3','用户姓名3','备注3'),(44,'2021-03-03 06:15:46','报名编号4','活动标题4','活动地点4','开始时间4','结束时间4','用户账号4','用户姓名4','备注4'),(45,'2021-03-03 06:15:46','报名编号5','活动标题5','活动地点5','开始时间5','结束时间5','用户账号5','用户姓名5','备注5'),(46,'2021-03-03 06:15:46','报名编号6','活动标题6','活动地点6','开始时间6','结束时间6','用户账号6','用户姓名6','备注6'),(1614753508135,'2021-03-03 06:38:27','20213314383386614171','活动标题2','活动地点2','2021-03-03 14:15:46','2021-03-03 14:15:46','1','用户姓名1','无'),(1614762635545,'2021-03-03 09:10:34','20213317104286960837','活动标题1','活动地点1','2021-03-03 14:15:46','2021-03-03 14:15:46','2','xxx用户','无');
/*!40000 ALTER TABLE `huodongbaoming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoyouxinxi`
--

DROP TABLE IF EXISTS `jiaoyouxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoyouxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `gerenyouxiang` varchar(200) DEFAULT NULL COMMENT '个人邮箱',
  `aihao` varchar(200) DEFAULT NULL COMMENT '爱好',
  `tezhang` varchar(200) DEFAULT NULL COMMENT '特长',
  `gerenjieshao` longtext COMMENT '个人介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614762613629 DEFAULT CHARSET=utf8 COMMENT='交友信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoyouxinxi`
--

LOCK TABLES `jiaoyouxinxi` WRITE;
/*!40000 ALTER TABLE `jiaoyouxinxi` DISABLE KEYS */;
INSERT INTO `jiaoyouxinxi` VALUES (21,'2021-03-03 06:15:46','用户账号1','用户姓名1','性别1',1,'http://localhost:8080/jspmby1mh/upload/jiaoyouxinxi_touxiang1.jpg','联系方式1','773890001@qq.com','爱好1','特长1','个人介绍1','2021-03-03 17:10:57',3),(22,'2021-03-03 06:15:46','用户账号2','用户姓名2','性别2',2,'http://localhost:8080/jspmby1mh/upload/jiaoyouxinxi_touxiang2.jpg','联系方式2','773890002@qq.com','爱好2','特长2','个人介绍2','2021-03-03 14:15:46',2),(23,'2021-03-03 06:15:46','用户账号3','用户姓名3','性别3',3,'http://localhost:8080/jspmby1mh/upload/jiaoyouxinxi_touxiang3.jpg','联系方式3','773890003@qq.com','爱好3','特长3','个人介绍3','2021-03-03 14:15:46',3),(24,'2021-03-03 06:15:46','用户账号4','用户姓名4','性别4',4,'http://localhost:8080/jspmby1mh/upload/jiaoyouxinxi_touxiang4.jpg','联系方式4','773890004@qq.com','爱好4','特长4','个人介绍4','2021-03-03 14:15:46',4),(25,'2021-03-03 06:15:46','用户账号5','用户姓名5','性别5',5,'http://localhost:8080/jspmby1mh/upload/jiaoyouxinxi_touxiang5.jpg','联系方式5','773890005@qq.com','爱好5','特长5','个人介绍5','2021-03-03 14:38:16',6),(26,'2021-03-03 06:15:46','用户账号6','用户姓名6','性别6',6,'http://localhost:8080/jspmby1mh/upload/jiaoyouxinxi_touxiang6.jpg','联系方式6','773890006@qq.com','爱好6','特长6','个人介绍6','2021-03-03 17:09:31',7),(1614762613628,'2021-03-03 09:10:12','2','xxx用户','男',20,'http://localhost:8080/jspmby1mh/upload/1614762599459.jpg','12345678910','123@qq.com','aaa','aaa','aaaa\r\n','2021-03-03 17:10:45',1);
/*!40000 ALTER TABLE `jiaoyouxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614762650552 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1614762650551,'2021-03-03 09:10:50',1614762558505,21,'jiaoyouxinxi','用户姓名1','http://localhost:8080/jspmby1mh/upload/jiaoyouxinxi_touxiang1.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
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
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','s5pa1r92l3hya5m2u9yfshr8j6n27wyn','2021-03-03 06:37:30','2021-03-03 10:11:43'),(2,11,'1','yonghu','用户','bhoctonjldgx9jitl3o3vx58z0b12yu5','2021-03-03 06:38:12','2021-03-03 07:38:13'),(3,1614762558505,'2','yonghu','用户','jt8bhjtewnjob4lx2li6sltt8nr5qs5w','2021-03-03 09:09:22','2021-03-03 10:09:23');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-03 06:15:46');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xianxiahuodong`
--

DROP TABLE IF EXISTS `xianxiahuodong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xianxiahuodong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongbiaoti` varchar(200) DEFAULT NULL COMMENT '活动标题',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `huodongneirong` longtext COMMENT '活动内容',
  `huodongyaoqiu` varchar(200) DEFAULT NULL COMMENT '活动要求',
  `kaishishijian` datetime DEFAULT NULL COMMENT '开始时间',
  `jieshushijian` datetime DEFAULT NULL COMMENT '结束时间',
  `tupianfengmian` varchar(200) DEFAULT NULL COMMENT '图片封面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='线下活动';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xianxiahuodong`
--

LOCK TABLES `xianxiahuodong` WRITE;
/*!40000 ALTER TABLE `xianxiahuodong` DISABLE KEYS */;
INSERT INTO `xianxiahuodong` VALUES (31,'2021-03-03 06:15:46','活动标题1','活动地点1','活动内容1','活动要求1','2021-03-03 14:15:46','2021-03-03 14:15:46','http://localhost:8080/jspmby1mh/upload/xianxiahuodong_tupianfengmian1.jpg'),(32,'2021-03-03 06:15:46','活动标题2','活动地点2','活动内容2','活动要求2','2021-03-03 14:15:46','2021-03-03 14:15:46','http://localhost:8080/jspmby1mh/upload/xianxiahuodong_tupianfengmian2.jpg'),(33,'2021-03-03 06:15:46','活动标题3','活动地点3','活动内容3','活动要求3','2021-03-03 14:15:46','2021-03-03 14:15:46','http://localhost:8080/jspmby1mh/upload/xianxiahuodong_tupianfengmian3.jpg'),(34,'2021-03-03 06:15:46','活动标题4','活动地点4','活动内容4','活动要求4','2021-03-03 14:15:46','2021-03-03 14:15:46','http://localhost:8080/jspmby1mh/upload/xianxiahuodong_tupianfengmian4.jpg'),(35,'2021-03-03 06:15:46','活动标题5','活动地点5','活动内容5','活动要求5','2021-03-03 14:15:46','2021-03-03 14:15:46','http://localhost:8080/jspmby1mh/upload/xianxiahuodong_tupianfengmian5.jpg'),(36,'2021-03-03 06:15:46','活动标题6','活动地点6','活动内容6','活动要求6','2021-03-03 14:15:46','2021-03-03 14:15:46','http://localhost:8080/jspmby1mh/upload/xianxiahuodong_tupianfengmian6.jpg');
/*!40000 ALTER TABLE `xianxiahuodong` ENABLE KEYS */;
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
  `neirong` longtext COMMENT '内容',
  `gonggaoleixing` varchar(200) DEFAULT NULL COMMENT '公告类型',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614762518805 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xitonggonggao`
--

LOCK TABLES `xitonggonggao` WRITE;
/*!40000 ALTER TABLE `xitonggonggao` DISABLE KEYS */;
INSERT INTO `xitonggonggao` VALUES (51,'2021-03-03 06:15:46','标题1','内容1','公告类型1','2021-03-03','发布人1','http://localhost:8080/jspmby1mh/upload/xitonggonggao_tupian1.jpg'),(52,'2021-03-03 06:15:46','标题2','内容2','公告类型2','2021-03-03','发布人2','http://localhost:8080/jspmby1mh/upload/xitonggonggao_tupian2.jpg'),(53,'2021-03-03 06:15:46','标题3','内容3','公告类型3','2021-03-03','发布人3','http://localhost:8080/jspmby1mh/upload/xitonggonggao_tupian3.jpg'),(54,'2021-03-03 06:15:46','标题4','内容4','公告类型4','2021-03-03','发布人4','http://localhost:8080/jspmby1mh/upload/xitonggonggao_tupian4.jpg'),(55,'2021-03-03 06:15:46','标题5','内容5','公告类型5','2021-03-03','发布人5','http://localhost:8080/jspmby1mh/upload/xitonggonggao_tupian5.jpg'),(56,'2021-03-03 06:15:46','标题6','内容6','公告类型6','2021-03-03','发布人6','http://localhost:8080/jspmby1mh/upload/xitonggonggao_tupian6.jpg'),(1614762518804,'2021-03-03 09:08:38','sdfsd','sdfdsf\r\n','sdfds','2021-03-03','xxx','http://localhost:8080/jspmby1mh/upload/1614762531125.jpg');
/*!40000 ALTER TABLE `xitonggonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614762558506 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-03 06:15:46','1','1','用户姓名1','男',1,'http://localhost:8080/jspmby1mh/upload/yonghu_touxiang1.jpg'),(12,'2021-03-03 06:15:46','用户2','123456','用户姓名2','男',2,'http://localhost:8080/jspmby1mh/upload/yonghu_touxiang2.jpg'),(13,'2021-03-03 06:15:46','用户3','123456','用户姓名3','男',3,'http://localhost:8080/jspmby1mh/upload/yonghu_touxiang3.jpg'),(14,'2021-03-03 06:15:46','用户4','123456','用户姓名4','男',4,'http://localhost:8080/jspmby1mh/upload/yonghu_touxiang4.jpg'),(15,'2021-03-03 06:15:46','用户5','123456','用户姓名5','男',5,'http://localhost:8080/jspmby1mh/upload/yonghu_touxiang5.jpg'),(16,'2021-03-03 06:15:46','用户6','123456','用户姓名6','男',6,'http://localhost:8080/jspmby1mh/upload/yonghu_touxiang6.jpg'),(1614762558505,'2021-03-03 09:09:18','2','2','xxx用户','男',20,'http://localhost:8080/jspmby1mh/upload/1614762586991.jpg');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-03 20:05:28
