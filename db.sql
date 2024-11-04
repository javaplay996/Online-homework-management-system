/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm10r7g
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm10r7g` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm10r7g`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm10r7g/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm10r7g/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm10r7g/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshi` varchar(200) NOT NULL COMMENT '教师',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshi`,`xingbie`,`shouji`,`youxiang`,`zhaopian`) values (21,'2021-04-15 17:12:30','教师1','123456','教师1','男','13823888881','773890001@qq.com','http://localhost:8080/ssm10r7g/upload/jiaoshi_zhaopian1.jpg'),(22,'2021-04-15 17:12:30','教师2','123456','教师2','男','13823888882','773890002@qq.com','http://localhost:8080/ssm10r7g/upload/jiaoshi_zhaopian2.jpg'),(23,'2021-04-15 17:12:30','教师3','123456','教师3','男','13823888883','773890003@qq.com','http://localhost:8080/ssm10r7g/upload/jiaoshi_zhaopian3.jpg'),(24,'2021-04-15 17:12:30','教师4','123456','教师4','男','13823888884','773890004@qq.com','http://localhost:8080/ssm10r7g/upload/jiaoshi_zhaopian4.jpg'),(25,'2021-04-15 17:12:30','教师5','123456','教师5','男','13823888885','773890005@qq.com','http://localhost:8080/ssm10r7g/upload/jiaoshi_zhaopian5.jpg'),(26,'2021-04-15 17:12:30','教师6','123456','教师6','男','13823888886','773890006@qq.com','http://localhost:8080/ssm10r7g/upload/jiaoshi_zhaopian6.jpg');

/*Table structure for table `jiaoxueziyuan` */

DROP TABLE IF EXISTS `jiaoxueziyuan`;

CREATE TABLE `jiaoxueziyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `peitu` varchar(200) DEFAULT NULL COMMENT '配图',
  `shipinziyuan` varchar(200) DEFAULT NULL COMMENT '视频资源',
  `ziyuanfenxiang` varchar(200) DEFAULT NULL COMMENT '资源分享',
  `ziyuanjieshao` longtext COMMENT '资源介绍',
  `gengxinshijian` datetime DEFAULT NULL COMMENT '更新时间',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='教学资源';

/*Data for the table `jiaoxueziyuan` */

insert  into `jiaoxueziyuan`(`id`,`addtime`,`biaoti`,`peitu`,`shipinziyuan`,`ziyuanfenxiang`,`ziyuanjieshao`,`gengxinshijian`,`userid`) values (71,'2021-04-15 17:12:30','标题1','http://localhost:8080/ssm10r7g/upload/jiaoxueziyuan_peitu1.jpg','','','资源介绍1','2021-04-15 17:12:30',1),(72,'2021-04-15 17:12:30','标题2','http://localhost:8080/ssm10r7g/upload/jiaoxueziyuan_peitu2.jpg','','','资源介绍2','2021-04-15 17:12:30',2),(73,'2021-04-15 17:12:30','标题3','http://localhost:8080/ssm10r7g/upload/jiaoxueziyuan_peitu3.jpg','','','资源介绍3','2021-04-15 17:12:30',3),(74,'2021-04-15 17:12:30','标题4','http://localhost:8080/ssm10r7g/upload/jiaoxueziyuan_peitu4.jpg','','','资源介绍4','2021-04-15 17:12:30',4),(75,'2021-04-15 17:12:30','标题5','http://localhost:8080/ssm10r7g/upload/jiaoxueziyuan_peitu5.jpg','','','资源介绍5','2021-04-15 17:12:30',5),(76,'2021-04-15 17:12:30','标题6','http://localhost:8080/ssm10r7g/upload/jiaoxueziyuan_peitu6.jpg','','','资源介绍6','2021-04-15 17:12:30',6);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='通知公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (111,'2021-04-15 17:12:30','标题1','简介1','http://localhost:8080/ssm10r7g/upload/news_picture1.jpg','内容1'),(112,'2021-04-15 17:12:30','标题2','简介2','http://localhost:8080/ssm10r7g/upload/news_picture2.jpg','内容2'),(113,'2021-04-15 17:12:30','标题3','简介3','http://localhost:8080/ssm10r7g/upload/news_picture3.jpg','内容3'),(114,'2021-04-15 17:12:30','标题4','简介4','http://localhost:8080/ssm10r7g/upload/news_picture4.jpg','内容4'),(115,'2021-04-15 17:12:30','标题5','简介5','http://localhost:8080/ssm10r7g/upload/news_picture5.jpg','内容5'),(116,'2021-04-15 17:12:30','标题6','简介6','http://localhost:8080/ssm10r7g/upload/news_picture6.jpg','内容6');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'学生1','xuesheng','学生','nhlgb5ebm1rt5c2y68ypc58mj53wj927','2021-04-15 17:14:52','2021-04-15 18:14:52');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-15 17:12:30');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xuesheng` varchar(200) NOT NULL COMMENT '学生',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xuesheng`,`xingbie`,`shouji`,`youxiang`,`zhaopian`) values (11,'2021-04-15 17:12:30','学生1','123456','学生1','男','13823888881','773890001@qq.com','http://localhost:8080/ssm10r7g/upload/xuesheng_zhaopian1.jpg'),(12,'2021-04-15 17:12:30','学生2','123456','学生2','男','13823888882','773890002@qq.com','http://localhost:8080/ssm10r7g/upload/xuesheng_zhaopian2.jpg'),(13,'2021-04-15 17:12:30','学生3','123456','学生3','男','13823888883','773890003@qq.com','http://localhost:8080/ssm10r7g/upload/xuesheng_zhaopian3.jpg'),(14,'2021-04-15 17:12:30','学生4','123456','学生4','男','13823888884','773890004@qq.com','http://localhost:8080/ssm10r7g/upload/xuesheng_zhaopian4.jpg'),(15,'2021-04-15 17:12:30','学生5','123456','学生5','男','13823888885','773890005@qq.com','http://localhost:8080/ssm10r7g/upload/xuesheng_zhaopian5.jpg'),(16,'2021-04-15 17:12:30','学生6','123456','学生6','男','13823888886','773890006@qq.com','http://localhost:8080/ssm10r7g/upload/xuesheng_zhaopian6.jpg');

/*Table structure for table `xueshengliuyan` */

DROP TABLE IF EXISTS `xueshengliuyan`;

CREATE TABLE `xueshengliuyan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xuesheng` varchar(200) DEFAULT NULL COMMENT '学生',
  `xueshengliuyan` longtext COMMENT '学生留言',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshi` varchar(200) DEFAULT NULL COMMENT '教师',
  `jiaoshihuifu` longtext COMMENT '教师回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='学生留言';

/*Data for the table `xueshengliuyan` */

insert  into `xueshengliuyan`(`id`,`addtime`,`xuehao`,`xuesheng`,`xueshengliuyan`,`gonghao`,`jiaoshi`,`jiaoshihuifu`) values (91,'2021-04-15 17:12:30','学号1','学生1','学生留言1','工号1','教师1','教师回复1'),(92,'2021-04-15 17:12:30','学号2','学生2','学生留言2','工号2','教师2','教师回复2'),(93,'2021-04-15 17:12:30','学号3','学生3','学生留言3','工号3','教师3','教师回复3'),(94,'2021-04-15 17:12:30','学号4','学生4','学生留言4','工号4','教师4','教师回复4'),(95,'2021-04-15 17:12:30','学号5','学生5','学生留言5','工号5','教师5','教师回复5'),(96,'2021-04-15 17:12:30','学号6','学生6','学生留言6','工号6','教师6','教师回复6');

/*Table structure for table `zuoyedaan` */

DROP TABLE IF EXISTS `zuoyedaan`;

CREATE TABLE `zuoyedaan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyebianhao` varchar(200) DEFAULT NULL COMMENT '作业编号',
  `zuoyedaan` varchar(200) DEFAULT NULL COMMENT '作业答案',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshi` varchar(200) DEFAULT NULL COMMENT '教师',
  `gengxinshijian` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='作业答案';

/*Data for the table `zuoyedaan` */

insert  into `zuoyedaan`(`id`,`addtime`,`zuoyebianhao`,`zuoyedaan`,`gonghao`,`jiaoshi`,`gengxinshijian`) values (51,'2021-04-15 17:12:30','作业编号1','','工号1','教师1','2021-04-15 17:12:30'),(52,'2021-04-15 17:12:30','作业编号2','','工号2','教师2','2021-04-15 17:12:30'),(53,'2021-04-15 17:12:30','作业编号3','','工号3','教师3','2021-04-15 17:12:30'),(54,'2021-04-15 17:12:30','作业编号4','','工号4','教师4','2021-04-15 17:12:30'),(55,'2021-04-15 17:12:30','作业编号5','','工号5','教师5','2021-04-15 17:12:30'),(56,'2021-04-15 17:12:30','作业编号6','','工号6','教师6','2021-04-15 17:12:30');

/*Table structure for table `zuoyepiyue` */

DROP TABLE IF EXISTS `zuoyepiyue`;

CREATE TABLE `zuoyepiyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyebianhao` varchar(200) DEFAULT NULL COMMENT '作业编号',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xuesheng` varchar(200) DEFAULT NULL COMMENT '学生',
  `zuoyepiyue` varchar(200) DEFAULT NULL COMMENT '作业批阅',
  `zuoyechengji` int(11) DEFAULT NULL COMMENT '作业成绩',
  `shifoujige` varchar(200) DEFAULT NULL COMMENT '是否及格',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshi` varchar(200) DEFAULT NULL COMMENT '教师',
  `pigaishijian` datetime DEFAULT NULL COMMENT '批改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='作业批阅';

/*Data for the table `zuoyepiyue` */

insert  into `zuoyepiyue`(`id`,`addtime`,`zuoyebianhao`,`xuehao`,`xuesheng`,`zuoyepiyue`,`zuoyechengji`,`shifoujige`,`gonghao`,`jiaoshi`,`pigaishijian`) values (61,'2021-04-15 17:12:30','作业编号1','学号1','学生1','',1,'及格','工号1','教师1','2021-04-15 17:12:30'),(62,'2021-04-15 17:12:30','作业编号2','学号2','学生2','',2,'及格','工号2','教师2','2021-04-15 17:12:30'),(63,'2021-04-15 17:12:30','作业编号3','学号3','学生3','',3,'及格','工号3','教师3','2021-04-15 17:12:30'),(64,'2021-04-15 17:12:30','作业编号4','学号4','学生4','',4,'及格','工号4','教师4','2021-04-15 17:12:30'),(65,'2021-04-15 17:12:30','作业编号5','学号5','学生5','',5,'及格','工号5','教师5','2021-04-15 17:12:30'),(66,'2021-04-15 17:12:30','作业编号6','学号6','学生6','',6,'及格','工号6','教师6','2021-04-15 17:12:30');

/*Table structure for table `zuoyetijiao` */

DROP TABLE IF EXISTS `zuoyetijiao`;

CREATE TABLE `zuoyetijiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyebianhao` varchar(200) DEFAULT NULL COMMENT '作业编号',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xuesheng` varchar(200) DEFAULT NULL COMMENT '学生',
  `zuoyetijiao` varchar(200) DEFAULT NULL COMMENT '作业提交',
  `tijiaoshijian` datetime DEFAULT NULL COMMENT '提交时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshi` varchar(200) DEFAULT NULL COMMENT '教师',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='作业提交';

/*Data for the table `zuoyetijiao` */

insert  into `zuoyetijiao`(`id`,`addtime`,`zuoyebianhao`,`xuehao`,`xuesheng`,`zuoyetijiao`,`tijiaoshijian`,`gonghao`,`jiaoshi`) values (41,'2021-04-15 17:12:30','作业编号1','学号1','学生1','','2021-04-15 17:12:30','工号1','教师1'),(42,'2021-04-15 17:12:30','作业编号2','学号2','学生2','','2021-04-15 17:12:30','工号2','教师2'),(43,'2021-04-15 17:12:30','作业编号3','学号3','学生3','','2021-04-15 17:12:30','工号3','教师3'),(44,'2021-04-15 17:12:30','作业编号4','学号4','学生4','','2021-04-15 17:12:30','工号4','教师4'),(45,'2021-04-15 17:12:30','作业编号5','学号5','学生5','','2021-04-15 17:12:30','工号5','教师5'),(46,'2021-04-15 17:12:30','作业编号6','学号6','学生6','','2021-04-15 17:12:30','工号6','教师6');

/*Table structure for table `zuoyetongji` */

DROP TABLE IF EXISTS `zuoyetongji`;

CREATE TABLE `zuoyetongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyebianhao` varchar(200) DEFAULT NULL COMMENT '作业编号',
  `tijiaorenshu` int(11) DEFAULT NULL COMMENT '提交人数',
  `hegerenshu` int(11) DEFAULT NULL COMMENT '合格人数',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='作业统计';

/*Data for the table `zuoyetongji` */

insert  into `zuoyetongji`(`id`,`addtime`,`zuoyebianhao`,`tijiaorenshu`,`hegerenshu`,`userid`) values (81,'2021-04-15 17:12:30','作业编号1',1,1,1),(82,'2021-04-15 17:12:30','作业编号2',2,2,2),(83,'2021-04-15 17:12:30','作业编号3',3,3,3),(84,'2021-04-15 17:12:30','作业编号4',4,4,4),(85,'2021-04-15 17:12:30','作业编号5',5,5,5),(86,'2021-04-15 17:12:30','作业编号6',6,6,6);

/*Table structure for table `zuoyexinxi` */

DROP TABLE IF EXISTS `zuoyexinxi`;

CREATE TABLE `zuoyexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyebianhao` varchar(200) NOT NULL COMMENT '作业编号',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `peitu` varchar(200) DEFAULT NULL COMMENT '配图',
  `zuoye` varchar(200) DEFAULT NULL COMMENT '作业',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshi` varchar(200) DEFAULT NULL COMMENT '教师',
  `shangchuanshijian` datetime DEFAULT NULL COMMENT '上传时间',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zuoyebianhao` (`zuoyebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='作业信息';

/*Data for the table `zuoyexinxi` */

insert  into `zuoyexinxi`(`id`,`addtime`,`zuoyebianhao`,`biaoti`,`peitu`,`zuoye`,`gonghao`,`jiaoshi`,`shangchuanshijian`,`beizhu`) values (31,'2021-04-15 17:12:30','作业编号1','标题1','http://localhost:8080/ssm10r7g/upload/zuoyexinxi_peitu1.jpg','','工号1','教师1','2021-04-15 17:12:30','备注1'),(32,'2021-04-15 17:12:30','作业编号2','标题2','http://localhost:8080/ssm10r7g/upload/zuoyexinxi_peitu2.jpg','','工号2','教师2','2021-04-15 17:12:30','备注2'),(33,'2021-04-15 17:12:30','作业编号3','标题3','http://localhost:8080/ssm10r7g/upload/zuoyexinxi_peitu3.jpg','','工号3','教师3','2021-04-15 17:12:30','备注3'),(34,'2021-04-15 17:12:30','作业编号4','标题4','http://localhost:8080/ssm10r7g/upload/zuoyexinxi_peitu4.jpg','','工号4','教师4','2021-04-15 17:12:30','备注4'),(35,'2021-04-15 17:12:30','作业编号5','标题5','http://localhost:8080/ssm10r7g/upload/zuoyexinxi_peitu5.jpg','','工号5','教师5','2021-04-15 17:12:30','备注5'),(36,'2021-04-15 17:12:30','作业编号6','标题6','http://localhost:8080/ssm10r7g/upload/zuoyexinxi_peitu6.jpg','','工号6','教师6','2021-04-15 17:12:30','备注6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
