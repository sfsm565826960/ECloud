-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 2018-12-30 12:01:46
-- 服务器版本： 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecloud`
--

-- --------------------------------------------------------

--
-- 表的结构 `custom`
--

DROP TABLE IF EXISTS `custom`;
CREATE TABLE IF NOT EXISTS `custom` (
  `name` varchar(50) NOT NULL COMMENT '公司名',
  `address` varchar(100) NOT NULL COMMENT '公司地址',
  `attchment` varchar(40) NOT NULL COMMENT '附件目录(邮箱+时间的md5)',
  `license` varchar(20) NOT NULL COMMENT '营业执照编码',
  `mail` varchar(50) NOT NULL COMMENT '邮箱',
  `operator_name` varchar(20) NOT NULL COMMENT '经办人姓名',
  `operator_id` varchar(20) NOT NULL COMMENT '经办人身份证号',
  `operator_phone` varchar(13) NOT NULL COMMENT '经办人手机',
  `operator_address` varchar(100) NOT NULL COMMENT '经办人地址',
  `payment` varchar(20) NOT NULL COMMENT '缴费卡号',
  `group_id` varchar(20) NOT NULL COMMENT '群接入号',
  `bizid` varchar(20) NOT NULL COMMENT '资源识别码',
  `manager_id` varchar(20) NOT NULL COMMENT '客户经理（手机）',
  `create_date` varchar(20) NOT NULL COMMENT '创建日期',
  PRIMARY KEY (`mail`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `ecs`
--

DROP TABLE IF EXISTS `ecs`;
CREATE TABLE IF NOT EXISTS `ecs` (
  `server_id` varchar(20) NOT NULL COMMENT '云主机接入号',
  `group_id` varchar(20) NOT NULL COMMENT '群接入号',
  `manager_id` varchar(20) NOT NULL COMMENT '客户经理',
  `cpu` int(11) NOT NULL COMMENT 'CPU',
  `memory` int(11) NOT NULL COMMENT '内存',
  `sata` int(11) NOT NULL COMMENT 'SATA存储',
  `ssd` int(11) NOT NULL COMMENT 'SSD存储',
  `sas` int(11) NOT NULL COMMENT 'SAS存储',
  `sys_sata` int(11) NOT NULL COMMENT 'SATA系统盘（默认40）',
  `sys_ssd` int(11) NOT NULL COMMENT 'SSD系统盘',
  `sys_sas` int(11) NOT NULL COMMENT 'SAS系统盘',
  `network` int(11) NOT NULL COMMENT '网速',
  `public_ip` varchar(20) NOT NULL COMMENT '公网ip',
  `private_ip` varchar(20) NOT NULL COMMENT '私网ip',
  `system` varchar(50) NOT NULL COMMENT '操作系统',
  `count` int(11) NOT NULL COMMENT '数量',
  `discount` int(11) NOT NULL COMMENT '折扣/套餐/固定资费',
  `cost` int(11) NOT NULL COMMENT '出账金额',
  `create_date` varchar(20) NOT NULL COMMENT '申请日期',
  `start_date` varchar(20) NOT NULL COMMENT '竣工日期',
  `end_date` varchar(20) NOT NULL COMMENT '结束日期',
  `payment` varchar(20) NOT NULL COMMENT '缴费卡号',
  `note` varchar(200) NOT NULL COMMENT '备注信息'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='弹性云主机';

-- --------------------------------------------------------

--
-- 表的结构 `manager`
--

DROP TABLE IF EXISTS `manager`;
CREATE TABLE IF NOT EXISTS `manager` (
  `phone` varchar(13) NOT NULL COMMENT '手机号码（ID）',
  `name` varchar(10) NOT NULL COMMENT '姓名',
  `mail` varchar(50) NOT NULL COMMENT '邮箱',
  `department` varchar(16) NOT NULL COMMENT '部门',
  `password` varchar(40) NOT NULL COMMENT '密码（md5）',
  `create_date` varchar(20) NOT NULL COMMENT '创建日期(YY-MM-DD hh:mm:ss',
  PRIMARY KEY (`phone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
