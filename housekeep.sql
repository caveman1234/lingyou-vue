/*
Navicat MySQL Data Transfer

Source Server         : zhongyi
Source Server Version : 50614
Source Host           : localhost:3306
Source Database       : housekeep

Target Server Type    : MYSQL
Target Server Version : 50614
File Encoding         : 65001

Date: 2017-10-19 14:55:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `hk_vipuser`
-- ----------------------------
DROP TABLE IF EXISTS `hk_vipuser`;
CREATE TABLE `hk_vipuser` (
  `user_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '用户id 主键',
  `user_name` varchar(100) DEFAULT NULL COMMENT '用户名',
  `user_pwd` varchar(200) DEFAULT NULL COMMENT '密码',
  `sex` char(1) DEFAULT NULL COMMENT '性别, 1:男，2:女，3：保密',
  `stat` varchar(10) DEFAULT NULL COMMENT '用户状态，01:正常，02:冻结',
  `last_login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `email` varchar(20) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(50) DEFAULT NULL COMMENT '电话',
  `reg_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='VIP客户表';

-- ----------------------------
-- Records of hk_vipuser
-- ----------------------------
INSERT INTO `hk_vipuser` VALUES ('1', 'ceshi', '123', null, null, null, null, null, null);
INSERT INTO `hk_vipuser` VALUES ('2', 'test', '82qUGF/dccJk8EWWz+lExA==', null, null, null, null, null, null);
