# Host: localhost  (Version: 5.5.53)
# Date: 2020-09-09 23:35:33
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "admin"
#

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(36) NOT NULL DEFAULT '' COMMENT '密码',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '姓名',
  `role` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '角色',
  `last_login_at` datetime DEFAULT NULL COMMENT '最后登录时间',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='管理员';

#
# Data for table "admin"
#

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','111','张三',1,'2020-09-09 23:09:51','2020-09-06 22:05:52','2020-09-09 23:09:51'),(2,'xiaom','222','小明',1,NULL,'2020-09-07 22:06:17',NULL),(3,'xiaoz','333','张飞',2,NULL,'2020-09-07 12:06:44','2020-09-07 22:08:28'),(4,'lisi','444','李四',1,'2020-09-08 22:07:22','2020-09-08 16:07:12','2020-09-08 22:08:23');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

#
# Structure for table "article"
#

DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `title` varchar(60) NOT NULL DEFAULT '' COMMENT '文章标题',
  `desc` varchar(255) DEFAULT NULL COMMENT '摘要',
  `content` text COMMENT '内容',
  `cate` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '所属分类',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='文章表';

#
# Data for table "article"
#

/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'测试文章1','测试文章111','测试文章111',1,'2020-09-04 08:42:40',NULL),(2,'navicat 打开设计表有点慢','自己电脑安装的Navicat 不知道怎么回事，发现打开空的表也很慢，sql语句到是很快，上网搜了下，这个方式可以，特此记录下\r\n\r\nNavicat – 编辑连接 – 高级 – 勾选保持连接间隔 – 输入框设置为30 – 点击确定！','自己电脑安装的Navicat 不知道怎么回事，发现打开空的表也很慢，sql语句到是很快，上网搜了下，这个方式可以，特此记录下\r\n\r\nNavicat – 编辑连接 – 高级 – 勾选保持连接间隔 – 输入框设置为30 – 点击确定！',2,'2020-09-05 14:43:30',NULL),(3,'因汛情停航的武汉两江游船','因汛情停航的武汉两江游船恢复航线运营灯光秀炫丽亮相','因长江汛情停航的武汉两江游览游船正式复航，市民游客乘坐游船亲水纳凉，欣赏久违的长江灯光秀。',1,'2020-09-06 16:44:21',NULL),(4,'明天是教师节','教师节教师节教师节教师节老师好','教师节教师节教师节教师节老师好',2,'2020-09-09 22:58:52','2020-09-09 22:58:52'),(6,'教师节老师好','教师节老师好','教师节老师好',2,'2020-09-09 23:00:47','2020-09-09 23:03:34');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;

#
# Structure for table "cate"
#

DROP TABLE IF EXISTS `cate`;
CREATE TABLE `cate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '分类名',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='分类表';

#
# Data for table "cate"
#

/*!40000 ALTER TABLE `cate` DISABLE KEYS */;
INSERT INTO `cate` VALUES (1,'技术文章','2020-09-05 20:41:26','2020-09-06 20:40:12'),(2,'生活随笔','2020-09-06 12:41:48',NULL),(3,'技术文章','2020-09-06 12:30:10',NULL);
/*!40000 ALTER TABLE `cate` ENABLE KEYS */;

#
# Structure for table "info"
#

DROP TABLE IF EXISTS `info`;
CREATE TABLE `info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `title` varchar(30) NOT NULL DEFAULT '' COMMENT '网站标题',
  `subtitle` varchar(30) DEFAULT NULL COMMENT '网站副标题',
  `about` text COMMENT '关于我们',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='信息表';

#
# Data for table "info"
#

/*!40000 ALTER TABLE `info` DISABLE KEYS */;
INSERT INTO `info` VALUES (1,'莫办法呢','哈哈哈哈哈哈哈','饿肚肚多多付','2020-09-06 19:45:08','2020-09-09 23:13:02');
/*!40000 ALTER TABLE `info` ENABLE KEYS */;
