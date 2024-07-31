/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t238`;
CREATE DATABASE IF NOT EXISTS `t238` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t238`;

DROP TABLE IF EXISTS `biyeluenwen`;
CREATE TABLE IF NOT EXISTS `biyeluenwen` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zhonggaoshenhe_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111 ',
  `zhonggaoshenhe_file` varchar(200) DEFAULT NULL COMMENT '论文文件',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `biyeluenwen_yesno_types` int DEFAULT NULL COMMENT '打分状态 Search111',
  `biyeluenwen_num` int DEFAULT NULL COMMENT '现阶段分数',
  `biyeluenwen_yesno_text` text COMMENT '评语',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='毕业论文';

DELETE FROM `biyeluenwen`;
INSERT INTO `biyeluenwen` (`id`, `zhonggaoshenhe_name`, `zhonggaoshenhe_file`, `yonghu_id`, `biyeluenwen_yesno_types`, `biyeluenwen_num`, `biyeluenwen_yesno_text`, `create_time`) VALUES
	(1, '标题1', 'http://localhost:8080/biyeshejichengjiguanli/upload/1650856729638.rar', 1, 5, 200, '最终得分', '2022-04-25 02:38:44'),
	(2, '标题2', 'http://localhost:8080/biyeshejichengjiguanli/upload/file.rar', 2, 1, 0, NULL, '2022-04-25 02:38:44'),
	(3, '标题3', 'http://localhost:8080/biyeshejichengjiguanli/upload/file.rar', 3, 1, 0, NULL, '2022-04-25 02:38:44');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;

DROP TABLE IF EXISTS `dabianmishu`;
CREATE TABLE IF NOT EXISTS `dabianmishu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `dabianmishu_name` varchar(200) DEFAULT NULL COMMENT '答辩秘书姓名 Search111 ',
  `dabianmishu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `dabianmishu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `dabianmishu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='答辩秘书';

DELETE FROM `dabianmishu`;
INSERT INTO `dabianmishu` (`id`, `username`, `password`, `dabianmishu_name`, `dabianmishu_photo`, `sex_types`, `dabianmishu_phone`, `dabianmishu_email`, `insert_time`, `create_time`) VALUES
	(1, '答辩秘书1', '123456', '答辩秘书姓名1', 'http://localhost:8080/biyeshejichengjiguanli/upload/dabianmishu1.jpg', 2, '17703786901', '1@qq.com', '2022-04-25 02:38:44', '2022-04-25 02:38:44'),
	(2, '答辩秘书2', '123456', '答辩秘书姓名2', 'http://localhost:8080/biyeshejichengjiguanli/upload/dabianmishu2.jpg', 1, '17703786902', '2@qq.com', '2022-04-25 02:38:44', '2022-04-25 02:38:44'),
	(3, '答辩秘书3', '123456', '答辩秘书姓名3', 'http://localhost:8080/biyeshejichengjiguanli/upload/dabianmishu3.jpg', 1, '17703786903', '3@qq.com', '2022-04-25 02:38:44', '2022-04-25 02:38:44');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'biyeluenwen_yesno_types', '打分状态', 1, '指导教师审核中', NULL, NULL, '2022-04-25 02:33:03'),
	(2, 'biyeluenwen_yesno_types', '打分状态', 2, '指导教师审核通过', NULL, NULL, '2022-04-25 02:33:03'),
	(3, 'biyeluenwen_yesno_types', '打分状态', 3, '指导教师审核拒绝', NULL, NULL, '2022-04-25 02:33:03'),
	(4, 'biyeluenwen_yesno_types', '打分状态', 4, '评阅教师已评分', NULL, NULL, '2022-04-25 02:33:03'),
	(5, 'biyeluenwen_yesno_types', '打分状态', 5, '最终答辩成绩', NULL, NULL, '2022-04-25 02:33:03'),
	(6, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-04-25 02:33:03'),
	(7, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-04-25 02:33:03'),
	(8, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2022-04-25 02:33:03'),
	(9, 'sex_types', '性别', 1, '男', NULL, NULL, '2022-04-25 02:33:03'),
	(10, 'sex_types', '性别', 2, '女', NULL, NULL, '2022-04-25 02:33:03'),
	(11, 'xueke_types', '专业', 1, '专业1', NULL, NULL, '2022-04-25 02:33:03'),
	(12, 'xueke_types', '专业', 2, '专业2', NULL, NULL, '2022-04-25 02:33:03'),
	(13, 'banji_types', '班级', 1, '班级1', NULL, NULL, '2022-04-25 02:33:03'),
	(14, 'banji_types', '班级', 2, '班级2', NULL, NULL, '2022-04-25 02:33:03');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 1, 'http://localhost:8080/biyeshejichengjiguanli/upload/news1.jpg', '2022-04-25 02:38:44', '公告详情1', '2022-04-25 02:38:44'),
	(2, '公告标题2', 3, 'http://localhost:8080/biyeshejichengjiguanli/upload/news2.jpg', '2022-04-25 02:38:44', '公告详情2', '2022-04-25 02:38:44'),
	(3, '公告标题3', 1, 'http://localhost:8080/biyeshejichengjiguanli/upload/news3.jpg', '2022-04-25 02:38:44', '公告详情3', '2022-04-25 02:38:44'),
	(4, '公告标题4', 1, 'http://localhost:8080/biyeshejichengjiguanli/upload/news4.jpg', '2022-04-25 02:38:44', '公告详情4', '2022-04-25 02:38:44'),
	(5, '公告标题5', 2, 'http://localhost:8080/biyeshejichengjiguanli/upload/news5.jpg', '2022-04-25 02:38:44', '公告详情5', '2022-04-25 02:38:44');

DROP TABLE IF EXISTS `pingyuejiaoshi`;
CREATE TABLE IF NOT EXISTS `pingyuejiaoshi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `pingyuejiaoshi_name` varchar(200) DEFAULT NULL COMMENT '评阅教师姓名 Search111 ',
  `pingyuejiaoshi_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `pingyuejiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `pingyuejiaoshi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='评阅教师';

DELETE FROM `pingyuejiaoshi`;
INSERT INTO `pingyuejiaoshi` (`id`, `username`, `password`, `pingyuejiaoshi_name`, `pingyuejiaoshi_photo`, `sex_types`, `pingyuejiaoshi_phone`, `pingyuejiaoshi_email`, `insert_time`, `create_time`) VALUES
	(1, '评阅教师1', '123456', '评阅教师姓名1', 'http://localhost:8080/biyeshejichengjiguanli/upload/pingyuejiaoshi1.jpg', 1, '17703786901', '1@qq.com', '2022-04-25 02:38:44', '2022-04-25 02:38:44'),
	(2, '评阅教师2', '123456', '评阅教师姓名2', 'http://localhost:8080/biyeshejichengjiguanli/upload/pingyuejiaoshi2.jpg', 2, '17703786902', '2@qq.com', '2022-04-25 03:22:00', '2022-04-25 02:38:44'),
	(3, '评阅教师3', '123456', '评阅教师姓名3', 'http://localhost:8080/biyeshejichengjiguanli/upload/pingyuejiaoshi3.jpg', 1, '17703786903', '3@qq.com', '2022-04-25 02:38:44', '2022-04-25 02:38:44');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', '15lntwpecn3pmiscpym7iqlb7a3h8b2u', '2022-04-25 02:45:53', '2024-06-21 09:52:29'),
	(2, 1, 'a1', 'yonghu', '用户', 'i851vd2f0v2pgpan90m3oxxdi2fympat', '2022-04-25 02:53:20', '2024-06-21 09:54:00'),
	(3, 1, 'a1', 'zhidaojiaoshi', '指导教师', 'uxfz3phcvocpys7xyusow6ws90yttc44', '2022-04-25 02:53:59', '2024-06-21 09:53:18'),
	(4, 1, 'a1', 'pingyuejiaoshi', '评阅教师', 'pui9r8pg62acp5vudfozg6i8xlidoeko', '2022-04-25 03:00:01', '2024-06-21 09:53:34'),
	(5, 1, 'a1', 'dabianmishu', '答辩秘书', 'gka751zzysu3wehocboad9ml0ogkg0sj', '2022-04-25 03:03:39', '2024-06-21 09:53:47');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_uuid_number` varchar(255) DEFAULT NULL COMMENT '学号 Search111',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `xueke_types` int DEFAULT NULL COMMENT '专业 Search111 ',
  `banji_types` int DEFAULT NULL COMMENT '班级 Search111 ',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `yonghu_uuid_number`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `sex_types`, `yonghu_phone`, `yonghu_email`, `xueke_types`, `banji_types`, `yonghu_delete`, `insert_time`, `create_time`) VALUES
	(1, '16508543243191', '用户1', '123456', '用户姓名1', 'http://localhost:8080/biyeshejichengjiguanli/upload/yonghu1.jpg', 2, '17703786901', '1@qq.com', 2, 2, 1, '2022-04-25 02:38:44', '2022-04-25 02:38:44'),
	(2, '165085432431936', '用户2', '123456', '用户姓名2', 'http://localhost:8080/biyeshejichengjiguanli/upload/yonghu2.jpg', 1, '17703786902', '2@qq.com', 2, 1, 1, '2022-04-25 02:38:44', '2022-04-25 02:38:44'),
	(3, '165085432431917', '用户3', '123456', '用户姓名3', 'http://localhost:8080/biyeshejichengjiguanli/upload/yonghu3.jpg', 1, '17703786903', '3@qq.com', 2, 1, 1, '2022-04-25 02:38:44', '2022-04-25 02:38:44');

DROP TABLE IF EXISTS `zhidaojiaoshi`;
CREATE TABLE IF NOT EXISTS `zhidaojiaoshi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `zhidaojiaoshi_name` varchar(200) DEFAULT NULL COMMENT '指导教师姓名 Search111 ',
  `zhidaojiaoshi_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `zhidaojiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `zhidaojiaoshi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='指导教师';

DELETE FROM `zhidaojiaoshi`;
INSERT INTO `zhidaojiaoshi` (`id`, `username`, `password`, `zhidaojiaoshi_name`, `zhidaojiaoshi_photo`, `sex_types`, `zhidaojiaoshi_phone`, `zhidaojiaoshi_email`, `insert_time`, `create_time`) VALUES
	(1, '指导教师1', '123456', '指导教师姓名1', 'http://localhost:8080/biyeshejichengjiguanli/upload/zhidaojiaoshi1.jpg', 2, '17703786901', '1@qq.com', '2022-04-25 02:38:44', '2022-04-25 02:38:44'),
	(2, '指导教师2', '123456', '指导教师姓名2', 'http://localhost:8080/biyeshejichengjiguanli/upload/zhidaojiaoshi2.jpg', 2, '17703786902', '2@qq.com', '2022-04-25 02:38:44', '2022-04-25 02:38:44'),
	(3, '指导教师3', '123456', '指导教师姓名3', 'http://localhost:8080/biyeshejichengjiguanli/upload/zhidaojiaoshi3.jpg', 1, '17703786903', '3@qq.com', '2022-04-25 02:38:44', '2022-04-25 02:38:44');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
