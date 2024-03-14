/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - lvyouwangzhan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`lvyouwangzhan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `lvyouwangzhan`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/lvyouwangzhan/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/lvyouwangzhan/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/lvyouwangzhan/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'lvyouluxian_types','路线类型',1,'路线类型1',NULL,NULL,'2022-03-08 11:55:31'),(2,'lvyouluxian_types','路线类型',2,'路线类型2',NULL,NULL,'2022-03-08 11:55:31'),(3,'lvyouluxian_types','路线类型',3,'路线类型3',NULL,NULL,'2022-03-08 11:55:31'),(4,'lvyoudongtai_types','动态类型',1,'动态类型1',NULL,NULL,'2022-03-08 11:55:31'),(5,'lvyoudongtai_types','动态类型',2,'动态类型2',NULL,NULL,'2022-03-08 11:55:31'),(6,'lvyoudongtai_types','动态类型',3,'动态类型3',NULL,NULL,'2022-03-08 11:55:31'),(7,'jingdian_types','景点类型',1,'景点类型1',NULL,NULL,'2022-03-08 11:55:31'),(8,'jingdian_types','景点类型',2,'景点类型2',NULL,NULL,'2022-03-08 11:55:31'),(9,'jingdian_types','景点类型',3,'景点类型3',NULL,NULL,'2022-03-08 11:55:31'),(12,'single_seach_types','单页数据类型',3,'公司简介',NULL,NULL,'2022-03-08 11:55:31'),(13,'sex_types','性别',1,'男',NULL,NULL,'2022-03-08 11:55:31'),(14,'sex_types','性别',2,'女',NULL,NULL,'2022-03-08 11:55:31'),(15,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-03-08 11:55:31'),(16,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-03-08 11:55:31'),(17,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-03-08 11:55:31'),(18,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-03-08 11:55:31'),(19,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-03-08 11:55:31');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,'发布内容1',NULL,1,'2022-03-08 11:57:59','2022-03-08 11:57:59','2022-03-08 11:57:59'),(2,'帖子标题2',2,NULL,'发布内容2',NULL,1,'2022-03-08 11:57:59','2022-03-08 11:57:59','2022-03-08 11:57:59'),(3,'帖子标题3',2,NULL,'发布内容3',NULL,1,'2022-03-08 11:57:59','2022-03-08 11:57:59','2022-03-08 11:57:59'),(4,'帖子标题4',2,NULL,'发布内容4',NULL,1,'2022-03-08 11:57:59','2022-03-08 11:57:59','2022-03-08 11:57:59'),(5,'帖子标题5',1,NULL,'发布内容5',NULL,1,'2022-03-08 11:57:59','2022-03-08 11:57:59','2022-03-08 11:57:59'),(6,NULL,1,NULL,'用户1评论',4,2,'2022-03-08 13:36:40',NULL,'2022-03-08 13:36:40'),(7,NULL,NULL,1,'管理评论',4,2,'2022-03-08 13:37:32',NULL,'2022-03-08 13:37:32');

/*Table structure for table `jingdian` */

DROP TABLE IF EXISTS `jingdian`;

CREATE TABLE `jingdian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_name` varchar(200) DEFAULT NULL COMMENT '景点名称 Search111 ',
  `jingdian_types` int(11) DEFAULT NULL COMMENT '景点类型 Search111',
  `jingdian_photo` varchar(200) DEFAULT NULL COMMENT '景点图片',
  `jingdian_content` text COMMENT '景点详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='景点信息';

/*Data for the table `jingdian` */

insert  into `jingdian`(`id`,`jingdian_name`,`jingdian_types`,`jingdian_photo`,`jingdian_content`,`insert_time`,`create_time`) values (1,'景点名称1',3,'http://localhost:8080/lvyouwangzhan/upload/jingdian1.jpg','景点详情1','2022-03-08 11:57:59','2022-03-08 11:57:59'),(2,'景点名称2',3,'http://localhost:8080/lvyouwangzhan/upload/jingdian2.jpg','景点详情2','2022-03-08 11:57:59','2022-03-08 11:57:59'),(3,'景点名称3',1,'http://localhost:8080/lvyouwangzhan/upload/jingdian3.jpg','景点详情3','2022-03-08 11:57:59','2022-03-08 11:57:59'),(4,'景点名称4',1,'http://localhost:8080/lvyouwangzhan/upload/jingdian4.jpg','景点详情4','2022-03-08 11:57:59','2022-03-08 11:57:59'),(5,'景点名称5',3,'http://localhost:8080/lvyouwangzhan/upload/jingdian5.jpg','景点详情5','2022-03-08 11:57:59','2022-03-08 11:57:59');

/*Table structure for table `jingdian_liuyan` */

DROP TABLE IF EXISTS `jingdian_liuyan`;

CREATE TABLE `jingdian_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_id` int(11) DEFAULT NULL COMMENT '景点',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jingdian_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='景点留言';

/*Data for the table `jingdian_liuyan` */

insert  into `jingdian_liuyan`(`id`,`jingdian_id`,`yonghu_id`,`jingdian_liuyan_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,1,'留言内容1','回复信息1','2022-03-08 11:57:59','2022-03-08 11:57:59','2022-03-08 11:57:59'),(2,2,3,'留言内容2','回复信息2','2022-03-08 11:57:59','2022-03-08 11:57:59','2022-03-08 11:57:59'),(3,3,1,'留言内容3','回复信息3','2022-03-08 11:57:59','2022-03-08 11:57:59','2022-03-08 11:57:59'),(4,4,3,'留言内容4','回复信息4','2022-03-08 11:57:59','2022-03-08 11:57:59','2022-03-08 11:57:59'),(5,5,2,'留言内容5','管理可以回复用户的留言','2022-03-08 11:57:59','2022-03-08 13:37:54','2022-03-08 11:57:59');

/*Table structure for table `lvyoudongtai` */

DROP TABLE IF EXISTS `lvyoudongtai`;

CREATE TABLE `lvyoudongtai` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `lvyoudongtai_name` varchar(200) DEFAULT NULL COMMENT '动态标题 Search111 ',
  `lvyoudongtai_types` int(11) DEFAULT NULL COMMENT '动态类型 Search111',
  `lvyoudongtai_photo` varchar(200) DEFAULT NULL COMMENT '动态图片',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `lvyoudongtai_content` text COMMENT '动态详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='旅游动态';

/*Data for the table `lvyoudongtai` */

insert  into `lvyoudongtai`(`id`,`lvyoudongtai_name`,`lvyoudongtai_types`,`lvyoudongtai_photo`,`yonghu_id`,`lvyoudongtai_content`,`insert_time`,`create_time`) values (1,'动态标题1',1,'http://localhost:8080/lvyouwangzhan/upload/1646717401808.jpeg',1,'<p>动态详情1</p>','2022-03-08 11:57:59','2022-03-08 11:57:59'),(2,'动态标题2',3,'http://localhost:8080/lvyouwangzhan/upload/1646717394032.jpeg',1,'<p>动态详情2</p>','2022-03-08 11:57:59','2022-03-08 11:57:59'),(3,'动态标题3',2,'http://localhost:8080/lvyouwangzhan/upload/1646717385266.jpeg',2,'<p>动态详情3</p>','2022-03-08 11:57:59','2022-03-08 11:57:59'),(4,'动态标题4',3,'http://localhost:8080/lvyouwangzhan/upload/1646717376552.jpeg',2,'<p>动态详情4</p>','2022-03-08 11:57:59','2022-03-08 11:57:59'),(5,'动态标题5',3,'http://localhost:8080/lvyouwangzhan/upload/1646717367721.jpeg',1,'<p>动态详情5</p>','2022-03-08 11:57:59','2022-03-08 11:57:59');

/*Table structure for table `lvyouluxian` */

DROP TABLE IF EXISTS `lvyouluxian`;

CREATE TABLE `lvyouluxian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `lvyouluxian_uuid_number` varchar(200) DEFAULT NULL COMMENT '路线编号',
  `lvyouluxian_name` varchar(200) DEFAULT NULL COMMENT '路线标题 Search111 ',
  `lvyouluxian_types` int(11) DEFAULT NULL COMMENT '路线类型 Search111',
  `lvyouluxian_photo` varchar(200) DEFAULT NULL COMMENT '路线图片',
  `lvyouluxian_content` text COMMENT '路线详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='旅游路线';

/*Data for the table `lvyouluxian` */

insert  into `lvyouluxian`(`id`,`lvyouluxian_uuid_number`,`lvyouluxian_name`,`lvyouluxian_types`,`lvyouluxian_photo`,`lvyouluxian_content`,`insert_time`,`create_time`) values (1,'16467118794208','路线标题1',2,'http://localhost:8080/lvyouwangzhan/upload/1646717475797.jpg','<p>路线详情1</p>','2022-03-08 11:57:59','2022-03-08 11:57:59'),(2,'16467118794209','路线标题2',2,'http://localhost:8080/lvyouwangzhan/upload/1646717465694.gif','<p>路线详情2</p>','2022-03-08 11:57:59','2022-03-08 11:57:59'),(3,'164671187942017','路线标题3',2,'http://localhost:8080/lvyouwangzhan/upload/1646717457867.jpg','<p>路线详情3</p>','2022-03-08 11:57:59','2022-03-08 11:57:59'),(4,'164671187942011','路线标题4',3,'http://localhost:8080/lvyouwangzhan/upload/1646717447456.jfif','<p>路线详情4</p>','2022-03-08 11:57:59','2022-03-08 11:57:59'),(5,'16467118794202','路线标题5',2,'http://localhost:8080/lvyouwangzhan/upload/1646717439327.jpeg','<p>路线详情5</p>','2022-03-08 11:57:59','2022-03-08 11:57:59');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'http://localhost:8080/lvyouwangzhan/upload/news1.jpg','2022-03-08 11:57:59','公告详情1','2022-03-08 11:57:59'),(2,'公告标题2',2,'http://localhost:8080/lvyouwangzhan/upload/news2.jpg','2022-03-08 11:57:59','公告详情2','2022-03-08 11:57:59'),(3,'公告标题3',3,'http://localhost:8080/lvyouwangzhan/upload/news3.jpg','2022-03-08 11:57:59','公告详情3','2022-03-08 11:57:59'),(4,'公告标题4',3,'http://localhost:8080/lvyouwangzhan/upload/news4.jpg','2022-03-08 11:57:59','公告详情4','2022-03-08 11:57:59'),(5,'公告标题5',1,'http://localhost:8080/lvyouwangzhan/upload/news5.jpg','2022-03-08 11:57:59','公告详情5','2022-03-08 11:57:59');

/*Table structure for table `single_seach` */

DROP TABLE IF EXISTS `single_seach`;

CREATE TABLE `single_seach` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `single_seach_name` varchar(200) DEFAULT NULL COMMENT '名字  Search111 ',
  `single_seach_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `single_seach_content` text COMMENT '内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='公司简介';

/*Data for the table `single_seach` */

insert  into `single_seach`(`id`,`single_seach_name`,`single_seach_types`,`single_seach_content`,`create_time`) values (1,'公司简介1',3,'<p><span style=\"color: rgb(151, 168, 190); background-color: rgb(224, 240, 233);\">公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介、</span></p><p><span style=\"color: rgb(151, 168, 190); background-color: rgb(224, 240, 233);\">可以自定义</span><img src=\"http://localhost:8080/lvyouwangzhan/upload/1646717897479.jpg\"></p>','2022-03-08 13:23:16');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','w4panghd207na3hboqll84pu3gnote5q','2022-03-08 13:22:33','2022-03-08 14:42:13'),(2,1,'a1','yonghu','用户','jo2gmn33oixwyyh68ncfox0oh84i8mum','2022-03-08 13:25:48','2022-03-08 14:39:49');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`sex_types`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/lvyouwangzhan/upload/yonghu1.jpg',2,'17703786901','410224199610232001','1@qq.com',1,'2022-03-08 11:57:59'),(2,'a2','123456','用户姓名2','http://localhost:8080/lvyouwangzhan/upload/yonghu2.jpg',1,'17703786902','410224199610232002','2@qq.com',1,'2022-03-08 11:57:59'),(3,'a3','123456','用户姓名3','http://localhost:8080/lvyouwangzhan/upload/yonghu3.jpg',1,'17703786903','410224199610232003','3@qq.com',1,'2022-03-08 11:57:59');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
