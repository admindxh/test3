-- phpMyAdmin SQL Dump
-- http://www.phpmyadmin.net
--
-- 生成日期: 2015 年 06 月 01 日 09:19

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `TtnibMCfcMSJBTwcscbN`
--

-- --------------------------------------------------------

--
-- 表的结构 `cgform_button`
--

CREATE TABLE IF NOT EXISTS `cgform_button` (
  `ID` varchar(32) NOT NULL,
  `BUTTON_CODE` varchar(50) DEFAULT NULL,
  `button_icon` varchar(20) DEFAULT NULL,
  `BUTTON_NAME` varchar(50) DEFAULT NULL,
  `BUTTON_STATUS` varchar(2) DEFAULT NULL,
  `BUTTON_STYLE` varchar(20) DEFAULT NULL,
  `EXP` varchar(255) DEFAULT NULL,
  `FORM_ID` varchar(32) DEFAULT NULL,
  `OPT_TYPE` varchar(20) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `cgform_button_sql`
--

CREATE TABLE IF NOT EXISTS `cgform_button_sql` (
  `ID` varchar(32) NOT NULL,
  `BUTTON_CODE` varchar(50) DEFAULT NULL,
  `CGB_SQL` tinyblob,
  `CGB_SQL_NAME` varchar(50) DEFAULT NULL,
  `CONTENT` longtext,
  `FORM_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `cgform_enhance_js`
--

CREATE TABLE IF NOT EXISTS `cgform_enhance_js` (
  `ID` varchar(32) NOT NULL,
  `CG_JS` blob,
  `CG_JS_TYPE` varchar(20) DEFAULT NULL,
  `CONTENT` longtext,
  `FORM_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `cgform_field`
--

CREATE TABLE IF NOT EXISTS `cgform_field` (
  `id` varchar(32) NOT NULL,
  `content` varchar(200) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_name` varchar(32) DEFAULT NULL,
  `dict_field` varchar(100) DEFAULT NULL,
  `dict_table` varchar(100) DEFAULT NULL,
  `dict_text` varchar(100) DEFAULT NULL,
  `field_default` varchar(20) DEFAULT NULL,
  `field_href` varchar(200) DEFAULT NULL,
  `field_length` int(11) DEFAULT NULL,
  `field_name` varchar(32) NOT NULL,
  `field_valid_type` varchar(10) DEFAULT NULL,
  `is_key` varchar(2) DEFAULT NULL,
  `is_null` varchar(5) DEFAULT NULL,
  `is_query` varchar(5) DEFAULT NULL,
  `is_show` varchar(5) DEFAULT NULL,
  `is_show_list` varchar(5) DEFAULT NULL,
  `length` int(11) NOT NULL,
  `main_field` varchar(100) DEFAULT NULL,
  `main_table` varchar(100) DEFAULT NULL,
  `old_field_name` varchar(32) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `point_length` int(11) DEFAULT NULL,
  `query_mode` varchar(10) DEFAULT NULL,
  `show_type` varchar(10) DEFAULT NULL,
  `type` varchar(32) NOT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_name` varchar(32) DEFAULT NULL,
  `table_id` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_iwtkke1oigq9ukafldrovslx6` (`table_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cgform_field`
--

INSERT INTO `cgform_field` (`id`, `content`, `create_by`, `create_date`, `create_name`, `dict_field`, `dict_table`, `dict_text`, `field_default`, `field_href`, `field_length`, `field_name`, `field_valid_type`, `is_key`, `is_null`, `is_query`, `is_show`, `is_show_list`, `length`, `main_field`, `main_table`, `old_field_name`, `order_num`, `point_length`, `query_mode`, `show_type`, `type`, `update_by`, `update_date`, `update_name`, `table_id`) VALUES
('40288088486e343b01486e3f9d120007', '主键', '4028d881436d514601436d5215ac0043', '2014-09-13 17:02:15', 'admin', '', '', '', '', '', 120, 'id', '', 'Y', 'N', 'N', 'N', 'N', 36, '', '', 'id', 1, 0, 'single', 'text', 'string', NULL, NULL, NULL, '40288088486e343b01486e3f9d110006'),
('40288088486e343b01486e3f9d210008', '创建人名称', '4028d881436d514601436d5215ac0043', '2014-09-13 17:02:15', 'admin', '', '', '', '', '', 120, 'create_name', '', 'N', 'Y', 'N', 'N', 'N', 50, '', '', 'create_name', 2, 0, 'single', 'text', 'string', NULL, NULL, NULL, '40288088486e343b01486e3f9d110006'),
('40288088486e343b01486e3f9d230009', '创建日期', '4028d881436d514601436d5215ac0043', '2014-09-13 17:02:15', 'admin', '', '', '', '', '', 120, 'create_date', '', 'N', 'Y', 'N', 'N', 'N', 20, '', '', 'create_date', 3, 0, 'single', 'text', 'Date', NULL, NULL, NULL, '40288088486e343b01486e3f9d110006'),
('40288088486e343b01486e3f9d25000a', '修改人名称', '4028d881436d514601436d5215ac0043', '2014-09-13 17:02:15', 'admin', '', '', '', '', '', 120, 'update_name', '', 'N', 'Y', 'N', 'N', 'N', 50, '', '', 'update_name', 4, 0, 'single', 'text', 'string', NULL, NULL, NULL, '40288088486e343b01486e3f9d110006'),
('40288088486e343b01486e3f9d27000b', '修改日期', '4028d881436d514601436d5215ac0043', '2014-09-13 17:02:15', 'admin', '', '', '', '', '', 120, 'update_date', '', 'N', 'Y', 'N', 'N', 'N', 20, '', '', 'update_date', 5, 0, 'single', 'text', 'Date', NULL, NULL, NULL, '40288088486e343b01486e3f9d110006'),
('40288088486e343b01486e3f9d2f000c', '活动名称', '4028d881436d514601436d5215ac0043', '2014-09-13 17:02:15', 'admin', '', '', '', '', '', 120, 'hd_name', '', 'N', 'Y', 'Y', 'Y', 'Y', 100, '', '', 'hd_name', 6, 0, 'single', 'text', 'string', NULL, NULL, NULL, '40288088486e343b01486e3f9d110006'),
('40288088486e343b01486e3f9d34000d', '活动状态', '4028d881436d514601436d5215ac0043', '2014-09-13 17:02:15', 'admin', '', '', '', '', '', 120, 'hd_status', '', 'N', 'Y', 'Y', 'Y', 'Y', 32, '', '', 'hd_status', 7, 0, 'single', 'text', 'int', '4028d881436d514601436d5215ac0043', '2014-09-13 17:26:53', 'admin', '40288088486e343b01486e3f9d110006'),
('40288088486e6c7101486e80febb0002', '主键', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', 120, 'id', '', 'Y', 'N', 'N', 'N', 'N', 36, '', '', 'id', 1, 0, 'single', 'text', 'string', NULL, NULL, NULL, '40288088486e6c7101486e80feb70001'),
('40288088486e6c7101486e80feff0003', '创建人名称', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', 120, 'create_name', '', 'N', 'Y', 'N', 'N', 'N', 50, '', '', 'create_name', 2, 0, 'single', 'text', 'string', NULL, NULL, NULL, '40288088486e6c7101486e80feb70001'),
('40288088486e6c7101486e80ff040004', '创建日期', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', 120, 'create_date', '', 'N', 'Y', 'N', 'N', 'N', 20, '', '', 'create_date', 3, 0, 'single', 'text', 'Date', NULL, NULL, NULL, '40288088486e6c7101486e80feb70001'),
('40288088486e6c7101486e80ff170005', '修改人名称', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', 120, 'update_name', '', 'N', 'Y', 'N', 'N', 'N', 50, '', '', 'update_name', 4, 0, 'single', 'text', 'string', NULL, NULL, NULL, '40288088486e6c7101486e80feb70001'),
('40288088486e6c7101486e80ff1a0006', '修改日期', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', 120, 'update_date', '', 'N', 'Y', 'N', 'N', 'N', 20, '', '', 'update_date', 5, 0, 'single', 'text', 'Date', NULL, NULL, NULL, '40288088486e6c7101486e80feb70001'),
('40288088486e6c7101486e80ff340007', '社区平台', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', 120, 'platform_code', '', 'N', 'Y', 'N', 'Y', 'Y', 100, '', '', 'platform_code', 6, 0, 'single', 'text', 'string', NULL, NULL, NULL, '40288088486e6c7101486e80feb70001'),
('40288088486e6c7101486e80ff360008', '平台账号', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', 120, 'user_account', '', 'N', 'Y', 'N', 'Y', 'Y', 32, '', '', 'user_account', 7, 0, 'single', 'text', 'string', NULL, NULL, NULL, '40288088486e6c7101486e80feb70001'),
('40288088486e6c7101486e80ff400009', '活动ID', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', 120, 'huoddong_id', '', 'N', 'Y', 'N', 'Y', 'Y', 32, '', '', 'huoddong_id', 8, 0, 'single', 'text', 'string', NULL, NULL, NULL, '40288088486e6c7101486e80feb70001'),
('40288088486e6c7101486e80ff43000a', '奖品名称', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', 120, 'jp_name', '', 'N', 'Y', 'N', 'Y', 'Y', 100, '', '', 'jp_name', 9, 0, 'single', 'text', 'string', NULL, NULL, NULL, '40288088486e6c7101486e80feb70001'),
('40288088486e6c7101486e80ff46000b', '奖品代码', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', 120, 'jp_code', '', 'N', 'Y', 'N', 'Y', 'Y', 100, '', '', 'jp_code', 10, 0, 'single', 'text', 'string', NULL, NULL, NULL, '40288088486e6c7101486e80feb70001'),
('40288088486e6c7101486e80ff48000c', '奖品级别', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', 120, 'jp_level', '', 'N', 'Y', 'N', 'Y', 'Y', 2, '', '', 'jp_level', 11, 0, 'single', 'text', 'int', NULL, NULL, NULL, '40288088486e6c7101486e80feb70001'),
('40288088486e6c7101486e80ff52000d', '兑奖状态', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', 120, 'jp_flag', '', 'N', 'Y', 'N', 'Y', 'Y', 2, '', '', 'jp_flag', 12, 0, 'single', 'text', 'int', NULL, NULL, NULL, '40288088486e6c7101486e80feb70001'),
('40288088486e6c7101486e80ff54000e', '兑奖人姓名', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', 120, 'user_anme', '', 'N', 'Y', 'N', 'Y', 'Y', 50, '', '', 'user_anme', 13, 0, 'single', 'text', 'string', NULL, NULL, NULL, '40288088486e6c7101486e80feb70001'),
('40288088486e6c7101486e80ff57000f', '联系方式', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', 120, 'user_telphone', '', 'N', 'Y', 'N', 'Y', 'Y', 100, '', '', 'user_telphone', 14, 0, 'single', 'text', 'string', NULL, NULL, NULL, '40288088486e6c7101486e80feb70001'),
('40288088486e6c7101486e80ff5a0010', '收件地址', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', 120, 'user_address', '', 'N', 'Y', 'N', 'Y', 'Y', 500, '', '', 'user_address', 15, 0, 'single', 'text', 'string', NULL, NULL, NULL, '40288088486e6c7101486e80feb70001'),
('40288088486e6c7101486e80ff5d0011', '备注', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', 120, 'content', '', 'N', 'Y', 'N', 'Y', 'Y', 500, '', '', 'content', 16, 0, 'single', 'text', 'string', NULL, NULL, NULL, '40288088486e6c7101486e80feb70001'),
('40288088486e6c7101486e80ff5f0012', '身份证正面', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', 120, 'idcard_a_file', '', 'N', 'Y', 'N', 'Y', 'Y', 32, '', '', 'idcard_a_file', 17, 0, 'single', 'text', 'Blob', NULL, NULL, NULL, '40288088486e6c7101486e80feb70001'),
('40288088486e6c7101486e80ff620013', '身份证反面', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', 120, 'idcard_b_file', '', 'N', 'Y', 'N', 'Y', 'Y', 32, '', '', 'idcard_b_file', 18, 0, 'single', 'text', 'Blob', NULL, NULL, NULL, '40288088486e6c7101486e80feb70001'),
('402881e446676a0601466770878c0002', '主键', 'admin', '2014-06-04 23:12:46', '管理员', '', '', '', '', '', 0, 'id', '', 'Y', 'N', 'N', 'N', 'N', 36, '', '', 'id', 1, 0, 'single', 'text', 'string', NULL, NULL, NULL, '402881e446676a060146677087880001'),
('402881e446676a060146677087df0003', '关键字', 'admin', '2014-06-04 23:12:47', '管理员', '', '', '', '', '', 120, 'keyword', '', 'N', 'N', 'N', 'Y', 'Y', 100, '', '', 'key', 2, 0, 'single', 'text', 'string', 'admin', '2014-06-04 23:18:27', '管理员', '402881e446676a060146677087880001'),
('402881e446676a060146677087e20004', '类长名', 'admin', '2014-06-04 23:12:47', '管理员', '', '', '', '', '', 120, 'classname', '', 'N', 'N', 'N', 'Y', 'Y', 100, '', '', 'classname', 3, 0, 'single', 'text', 'string', NULL, NULL, NULL, '402881e446676a060146677087880001'),
('402881e446676a060146677087e50005', '微信公众帐号', 'admin', '2014-06-04 23:12:47', '管理员', '', '', '', '', '', 120, 'accountid', '', 'N', 'Y', 'N', 'Y', 'Y', 200, '', '', 'accountid', 4, 0, 'single', 'text', 'string', NULL, NULL, NULL, '402881e446676a060146677087880001'),
('402881e446676a0601466775b8fc0007', '功能名称', 'admin', '2014-06-04 23:18:27', '管理员', '', '', '', '', '', 120, 'name', '', 'N', 'Y', 'N', 'Y', 'Y', 100, '', '', 'name', 5, 0, 'single', 'text', 'string', NULL, NULL, NULL, '402881e446676a060146677087880001'),
('402881e446676a0601466775b9000008', '功能描述', 'admin', '2014-06-04 23:18:27', '管理员', '', '', '', '', '', 120, 'content', '', 'N', 'Y', 'N', 'Y', 'Y', 300, '', '', 'content', 6, 0, 'single', 'text', 'string', NULL, NULL, NULL, '402881e446676a060146677087880001'),
('402881e845c73cb00145c75445120008', '主键', 'admin', '2014-05-04 21:02:39', '管理员', '', '', '', '', '', 0, 'id', '', 'Y', 'N', 'N', 'N', 'N', 36, '', '', 'id', 1, 0, 'single', 'text', 'string', NULL, NULL, NULL, '402881e845c73cb00145c754450c0007'),
('402881e845c73cb00145c75445ae0009', '公众帐号名称', 'admin', '2014-05-04 21:02:40', '管理员', '', '', '', '', '', 120, 'accountname', '', 'N', 'Y', 'N', 'Y', 'Y', 200, '', '', 'accountname', 2, 0, 'single', 'text', 'string', NULL, NULL, NULL, '402881e845c73cb00145c754450c0007'),
('402881e845c73cb00145c75445b5000b', '公众帐号TOKEN', 'admin', '2014-05-04 21:02:40', '管理员', '', '', '', '', '', 120, 'accounttoken', '', 'N', 'Y', 'N', 'Y', 'Y', 200, '', '', 'accounttoken', 3, 0, 'single', 'text', 'string', 'admin', '2014-05-06 20:10:22', '管理员', '402881e845c73cb00145c754450c0007'),
('402881e845c73cb00145c75445b8000c', '公众微信号', 'admin', '2014-05-04 21:02:40', '管理员', '', '', '', '', '', 120, 'accountnumber', '', 'N', 'Y', 'N', 'Y', 'Y', 200, '', '', 'accountnumber', 4, 0, 'single', 'text', 'string', 'admin', '2014-05-06 20:10:22', '管理员', '402881e845c73cb00145c754450c0007'),
('402881e845c73cb00145c75445c3000d', '公众号类型', 'admin', '2014-05-04 21:02:40', '管理员', '', '', '', '', '', 120, 'accounttype', '', 'N', 'Y', 'N', 'Y', 'Y', 50, '', '', 'accounttype', 5, 0, 'single', 'text', 'string', 'admin', '2014-05-06 20:10:22', '管理员', '402881e845c73cb00145c754450c0007'),
('402881e845c73cb00145c75445c7000e', '电子邮箱', 'admin', '2014-05-04 21:02:40', '管理员', '', '', '', '', '', 120, 'accountemail', '', 'N', 'Y', 'N', 'Y', 'Y', 200, '', '', 'accountemail', 6, 0, 'single', 'text', 'string', 'admin', '2014-05-06 20:10:22', '管理员', '402881e845c73cb00145c754450c0007'),
('402881e845c73cb00145c75445cb000f', '公众帐号描述', 'admin', '2014-05-04 21:02:40', '管理员', '', '', '', '', '', 120, 'accountdesc', '', 'N', 'Y', 'N', 'Y', 'Y', 500, '', '', 'accountdesc', 7, 0, 'single', 'text', 'string', 'admin', '2014-05-06 20:10:22', '管理员', '402881e845c73cb00145c754450c0007'),
('402881e845d16cb10145d1711e730002', '公众帐号APPID', 'admin', '2014-05-06 20:10:22', '管理员', '', '', '', '', '', 120, 'accountappid', '', 'N', 'Y', 'N', 'Y', 'Y', 200, '', '', 'accountappid', 8, 0, 'single', 'text', 'string', NULL, NULL, NULL, '402881e845c73cb00145c754450c0007'),
('402881e845d16cb10145d1711e790003', '公众帐号APPSECRET', 'admin', '2014-05-06 20:10:22', '管理员', '', '', '', '', '', 120, 'accountappsecret', '', 'N', 'Y', 'N', 'Y', 'Y', 500, '', '', 'accountappsecret', 9, 0, 'single', 'text', 'string', NULL, NULL, NULL, '402881e845c73cb00145c754450c0007'),
('402881e845d16cb10145d1711e7e0004', 'ACCESS_TOKEN', 'admin', '2014-05-06 20:10:22', '管理员', '', '', '', '', '', 120, 'accountaccesstoken', '', 'N', 'Y', 'N', 'Y', 'Y', 1000, '', '', 'accountaccesstoken', 10, 0, 'single', 'text', 'string', NULL, NULL, NULL, '402881e845c73cb00145c754450c0007'),
('402881e946f72f8e0146f74632020009', '主键', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', 120, 'id', '', 'Y', 'N', 'N', 'N', 'N', 36, '', '', 'id', 1, 0, 'single', 'text', 'string', NULL, NULL, NULL, '402881e946f72f8e0146f74632010008'),
('402881e946f72f8e0146f7463216000a', '创建人名称', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', 120, 'create_name', '', 'N', 'Y', 'N', 'N', 'N', 50, '', '', 'create_name', 2, 0, 'single', 'text', 'string', NULL, NULL, NULL, '402881e946f72f8e0146f74632010008'),
('402881e946f72f8e0146f746321c000b', '创建日期', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', 120, 'create_date', '', 'N', 'Y', 'N', 'N', 'Y', 20, '', '', 'create_date', 3, 0, 'single', 'text', 'Date', NULL, NULL, NULL, '402881e946f72f8e0146f74632010008'),
('402881e946f72f8e0146f7463224000c', '修改人名称', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', 120, 'update_name', '', 'N', 'Y', 'N', 'N', 'N', 50, '', '', 'update_name', 4, 0, 'single', 'text', 'string', NULL, NULL, NULL, '402881e946f72f8e0146f74632010008'),
('402881e946f72f8e0146f7463246000d', '修改日期', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', 120, 'update_date', '', 'N', 'Y', 'N', 'N', 'N', 20, '', '', 'update_date', 5, 0, 'single', 'text', 'Date', NULL, NULL, NULL, '402881e946f72f8e0146f74632010008'),
('402881e946f72f8e0146f7463250000e', '分类名称', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', 120, 'name', '', 'N', 'Y', 'N', 'Y', 'Y', 50, '', '', 'name', 6, 0, 'single', 'text', 'string', NULL, NULL, NULL, '402881e946f72f8e0146f74632010008'),
('402881e946f72f8e0146f746326b000f', '图片路径', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', 120, 'imgurl', '', 'N', 'Y', 'N', 'Y', 'Y', 200, '', '', 'imgurl', 7, 0, 'single', 'text', 'string', NULL, NULL, NULL, '402881e946f72f8e0146f74632010008'),
('402881e946f72f8e0146f74632720010', '分类上级ID', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', 120, 'parentid', '', 'N', 'Y', 'N', 'Y', 'Y', 36, '', '', 'parentid', 8, 0, 'single', 'text', 'string', NULL, NULL, NULL, '402881e946f72f8e0146f74632010008'),
('402881e946f72f8e0146f746327b0011', '卖家ID', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', 120, 'seller_id', '', 'N', 'Y', 'N', 'N', 'N', 36, '', '', 'seller_id', 9, 0, 'single', 'text', 'string', NULL, NULL, NULL, '402881e946f72f8e0146f74632010008'),
('402881e94701b0bc014701b6ed3c0002', '主键', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', 120, 'id', '', 'Y', 'N', 'N', 'N', 'N', 36, '', '', 'id', 1, 0, 'single', 'text', 'string', NULL, NULL, NULL, '402881e94701b0bc014701b6ed380001'),
('402881e94701b0bc014701b6ed620003', '创建人名称', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', 120, 'create_name', '', 'N', 'Y', 'N', 'N', 'N', 50, '', '', 'create_name', 2, 0, 'single', 'text', 'string', NULL, NULL, NULL, '402881e94701b0bc014701b6ed380001'),
('402881e94701b0bc014701b6ed6a0004', '创建日期', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', 120, 'create_date', '', 'N', 'Y', 'N', 'N', 'N', 20, '', '', 'create_date', 3, 0, 'single', 'text', 'Date', NULL, NULL, NULL, '402881e94701b0bc014701b6ed380001'),
('402881e94701b0bc014701b6ed880005', '修改人名称', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', 120, 'update_name', '', 'N', 'Y', 'N', 'N', 'N', 50, '', '', 'update_name', 4, 0, 'single', 'text', 'string', NULL, NULL, NULL, '402881e94701b0bc014701b6ed380001'),
('402881e94701b0bc014701b6ed920006', '修改日期', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', 120, 'update_date', '', 'N', 'Y', 'N', 'N', 'N', 20, '', '', 'update_date', 5, 0, 'single', 'text', 'Date', NULL, NULL, NULL, '402881e94701b0bc014701b6ed380001'),
('402881e94701b0bc014701b6ed9c0007', '标题信息', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', 120, 'title', '', 'N', 'Y', 'N', 'Y', 'Y', 200, '', '', 'title', 6, 0, 'single', 'text', 'string', NULL, NULL, NULL, '402881e94701b0bc014701b6ed380001'),
('402881e94701b0bc014701b6eda50008', '标题图片', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', 120, 'title_img', '', 'N', 'Y', 'N', 'Y', 'Y', 100, '', '', 'title_img', 7, 0, 'single', 'text', 'string', NULL, NULL, NULL, '402881e94701b0bc014701b6ed380001'),
('402881e94701b0bc014701b6edbd0009', '商品详情', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', 120, 'descriptions', '', 'N', 'Y', 'N', 'Y', 'Y', 5000, '', '', 'descriptions', 8, 0, 'single', 'text', 'Text', '4028d881436d514601436d5215ac0043', '2014-07-04 22:14:48', 'admin', '402881e94701b0bc014701b6ed380001'),
('402881e94701b0bc014701b6edc5000a', '商品原价', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', 120, 'price', '', 'N', 'Y', 'N', 'Y', 'Y', 18, '', '', 'price', 9, 2, 'single', 'text', 'double', '4028d881436d514601436d5215ac0043', '2014-07-04 22:14:48', 'admin', '402881e94701b0bc014701b6ed380001'),
('402881e94701b0bc014701b6edcc000b', '商品现价', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', 120, 'real_price', '', 'N', 'Y', 'N', 'Y', 'Y', 18, '', '', 'real_price', 10, 2, 'single', 'text', 'double', '4028d881436d514601436d5215ac0043', '2014-07-04 22:14:48', 'admin', '402881e94701b0bc014701b6ed380001'),
('402881e94701b0bc014701b6edd4000c', '折扣', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', 120, 'sale', '', 'N', 'Y', 'N', 'Y', 'Y', 18, '', '', 'sale', 11, 2, 'single', 'text', 'double', '4028d881436d514601436d5215ac0043', '2014-07-04 22:14:48', 'admin', '402881e94701b0bc014701b6ed380001'),
('402881e94701b0bc014701b6edde000d', '销售数量', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', 120, 'sell_count', '', 'N', 'Y', 'N', 'Y', 'Y', 11, '', '', 'sell_count', 12, 0, 'single', 'text', 'int', '4028d881436d514601436d5215ac0043', '2014-07-04 22:14:48', 'admin', '402881e94701b0bc014701b6ed380001'),
('402881e94701b0bc014701b6ede5000e', '评价数量', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', 120, 'discuss_count', '', 'N', 'Y', 'N', 'N', 'Y', 11, '', '', 'discuss_count', 13, 0, 'single', 'text', 'int', '4028d881436d514601436d5215ac0043', '2014-07-04 22:16:50', 'admin', '402881e94701b0bc014701b6ed380001'),
('402881e94701b0bc014701b6edec000f', '好评数量', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', 120, 'good_count', '', 'N', 'Y', 'N', 'N', 'Y', 11, '', '', 'good_count', 14, 0, 'single', 'text', 'int', '4028d881436d514601436d5215ac0043', '2014-07-04 22:16:50', 'admin', '402881e94701b0bc014701b6ed380001'),
('402881e94701b0bc014701b6edf40010', '差评数量', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', 120, 'bad_count', '', 'N', 'Y', 'N', 'N', 'Y', 11, '', '', 'bad_count', 15, 0, 'single', 'text', 'int', '4028d881436d514601436d5215ac0043', '2014-07-04 22:16:50', 'admin', '402881e94701b0bc014701b6ed380001'),
('402881e94701b0bc014701b6edff0011', '状态', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', 120, 'statement', '', 'N', 'Y', 'N', 'N', 'Y', 32, '', '', 'statement', 16, 0, 'single', 'text', 'string', '4028d881436d514601436d5215ac0043', '2014-07-04 22:16:50', 'admin', '402881e94701b0bc014701b6ed380001'),
('402881e94701b0bc014701b6ee1a0012', '上架时间', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', 120, 'shelve_time', '', 'N', 'Y', 'N', 'N', 'Y', 32, '', '', 'shelve_time', 17, 0, 'single', 'text', 'Date', '4028d881436d514601436d5215ac0043', '2014-07-04 22:16:50', 'admin', '402881e94701b0bc014701b6ed380001'),
('402881e94701b0bc014701b6ee220013', '下架时间', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', 120, 'remove_time', '', 'N', 'Y', 'N', 'N', 'Y', 32, '', '', 'remove_time', 18, 0, 'single', 'text', 'Date', '4028d881436d514601436d5215ac0043', '2014-07-04 22:16:50', 'admin', '402881e94701b0bc014701b6ed380001'),
('402881e94701b0bc014701b6ee280014', '快递名称', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', 120, 'express_name', '', 'N', 'Y', 'N', 'Y', 'Y', 32, '', '', 'express_name', 19, 0, 'single', 'text', 'string', NULL, NULL, NULL, '402881e94701b0bc014701b6ed380001'),
('402881e94701b0bc014701b6ee2f0015', '快递费用', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', 120, 'express_price', '', 'N', 'Y', 'N', 'Y', 'Y', 18, '', '', 'express_price', 20, 2, 'single', 'text', 'double', '4028d881436d514601436d5215ac0043', '2014-07-04 22:14:48', 'admin', '402881e94701b0bc014701b6ed380001'),
('402881e94701b0bc014701b6ee360016', '卖家ID', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', 120, 'seller_id', '', 'N', 'Y', 'N', 'Y', 'Y', 36, '', '', 'seller_id', 21, 0, 'single', 'text', 'string', '4028d881436d514601436d5215ac0043', '2014-07-04 22:14:48', 'admin', '402881e94701b0bc014701b6ed380001'),
('4028d881436d514601436d52193b012f', '主键', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 0, 'id', NULL, 'Y', 'N', 'N', 'N', 'N', 36, '', '', NULL, 0, 0, 'single', 'text', 'string', NULL, NULL, NULL, '4028d881436d514601436d521928012a'),
('4028d881436d514601436d5219410130', '订单号', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 0, 'order_code', NULL, 'N', 'Y', 'Y', 'Y', 'Y', 50, '', '', NULL, 1, 0, 'single', 'text', 'string', NULL, NULL, NULL, '4028d881436d514601436d521928012a'),
('4028d881436d514601436d5219460131', '订单日期', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 0, 'order_date', NULL, 'N', 'Y', 'Y', 'Y', 'Y', 20, '', '', NULL, 2, 0, 'single', 'date', 'Date', NULL, NULL, NULL, '4028d881436d514601436d521928012a'),
('4028d881436d514601436d5219480132', '订单金额', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 0, 'order_money', NULL, 'N', 'Y', 'Y', 'Y', 'Y', 10, '', '', NULL, 3, 3, 'single', 'text', 'double', NULL, NULL, NULL, '4028d881436d514601436d521928012a'),
('4028d881436d514601436d52194a0133', '备注', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 0, 'content', NULL, 'N', 'Y', 'Y', 'Y', 'Y', 255, '', '', NULL, 4, 0, 'single', 'text', 'string', NULL, NULL, NULL, '4028d881436d514601436d521928012a'),
('4028d881436d514601436d5219520134', '主键', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 0, 'id', NULL, 'Y', 'N', 'N', 'N', 'N', 36, '', '', NULL, 0, 0, 'single', 'text', 'string', NULL, NULL, NULL, '4028d881436d514601436d52192d012b'),
('4028d881436d514601436d5219550135', '请假标题', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 0, 'title', NULL, 'N', 'N', 'N', 'Y', 'Y', 50, '', '', NULL, 1, 0, 'single', 'text', 'string', NULL, NULL, NULL, '4028d881436d514601436d52192d012b'),
('4028d881436d514601436d5219570136', '请假人', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 0, 'people', NULL, 'N', 'N', 'Y', 'Y', 'Y', 20, '', '', NULL, 2, 0, 'single', 'text', 'string', NULL, NULL, NULL, '4028d881436d514601436d52192d012b'),
('4028d881436d514601436d5219580137', '性别', 'admin', '2014-01-07 23:28:53', '管理员', 'sex', '', NULL, NULL, NULL, 0, 'sex', NULL, 'N', 'N', 'Y', 'Y', 'Y', 10, '', '', NULL, 3, 0, 'single', 'list', 'string', NULL, NULL, NULL, '4028d881436d514601436d52192d012b'),
('4028d881436d514601436d52195a0138', '请假开始时间', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 0, 'begindate', NULL, 'N', 'N', 'N', 'Y', 'Y', 0, '', '', NULL, 4, 0, 'group', 'date', 'Date', NULL, NULL, NULL, '4028d881436d514601436d52192d012b'),
('4028d881436d514601436d52195b0139', '请假结束时间', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 0, 'enddate', NULL, 'N', 'N', 'N', 'Y', 'Y', 0, '', '', NULL, 5, 0, 'group', 'datetime', 'Date', NULL, NULL, NULL, '4028d881436d514601436d52192d012b'),
('4028d881436d514601436d52195d013a', '所属部门', 'admin', '2014-01-07 23:28:53', '管理员', 'id', 't_s_depart', 'departname', NULL, NULL, 0, 'hol_dept', NULL, 'N', 'N', 'N', 'Y', 'Y', 32, '', '', NULL, 7, 0, 'single', 'list', 'string', NULL, NULL, NULL, '4028d881436d514601436d52192d012b'),
('4028d881436d514601436d52195e013b', '请假原因', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 0, 'hol_reson', NULL, 'N', 'N', 'N', 'Y', 'Y', 255, '', '', NULL, 8, 0, 'single', 'text', 'string', NULL, NULL, NULL, '4028d881436d514601436d52192d012b'),
('4028d881436d514601436d521960013c', '部门审批人', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 0, 'dep_leader', NULL, 'N', 'N', 'N', 'Y', 'Y', 20, '', '', NULL, 9, 0, 'single', 'text', 'string', NULL, NULL, NULL, '4028d881436d514601436d52192d012b'),
('4028d881436d514601436d521961013d', '部门审批意见', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 0, 'content', NULL, 'N', 'N', 'N', 'Y', 'Y', 255, '', '', NULL, 10, 0, 'single', 'text', 'string', NULL, NULL, NULL, '4028d881436d514601436d52192d012b'),
('4028d881436d514601436d521963013e', '请假天数', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 120, 'day_num', NULL, 'N', 'Y', 'N', 'Y', 'Y', 10, '', '', NULL, 6, 0, 'single', 'text', 'int', NULL, NULL, NULL, '4028d881436d514601436d52192d012b'),
('4028d881436d514601436d52196e013f', '主键', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 0, 'id', NULL, 'Y', 'N', 'N', 'N', 'N', 36, '', '', NULL, 0, 0, 'single', 'text', 'string', NULL, NULL, NULL, '4028d881436d514601436d52192f012c'),
('4028d881436d514601436d5219700140', '客户名', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 0, 'name', NULL, 'N', 'Y', 'Y', 'Y', 'Y', 32, '', '', NULL, 1, 0, 'single', 'text', 'string', NULL, NULL, NULL, '4028d881436d514601436d52192f012c'),
('4028d881436d514601436d5219720141', '单价', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 0, 'money', NULL, 'N', 'Y', 'Y', 'Y', 'Y', 10, '', '', NULL, 2, 2, 'group', 'text', 'double', NULL, NULL, NULL, '4028d881436d514601436d52192f012c'),
('4028d881436d514601436d5219740142', '外键', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 120, 'fk_id', NULL, 'N', 'N', 'Y', 'N', 'N', 36, 'id', 'jform_order_main', NULL, 5, 0, 'single', 'text', 'string', NULL, NULL, NULL, '4028d881436d514601436d52192f012c'),
('4028d881436d514601436d5219750143', '电话', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 120, 'telphone', NULL, 'N', 'Y', 'Y', 'Y', 'Y', 32, '', '', NULL, 4, 0, 'single', 'text', 'string', NULL, NULL, NULL, '4028d881436d514601436d52192f012c'),
('4028d881436d514601436d5219770144', '性别', 'admin', '2014-01-07 23:28:53', '管理员', 'sex', '', NULL, NULL, NULL, 120, 'sex', NULL, 'N', 'Y', 'Y', 'Y', 'Y', 4, '', '', NULL, 3, 0, 'single', 'radio', 'string', NULL, NULL, NULL, '4028d881436d514601436d52192f012c'),
('4028d881436d514601436d52197b0145', '主键', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 120, 'id', NULL, 'Y', 'N', 'N', 'N', 'N', 36, '', '', NULL, 0, 0, 'single', 'checkbox', 'string', NULL, NULL, NULL, '4028d881436d514601436d521931012d'),
('4028d881436d514601436d52197d0146', '航班号', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 120, 'ticket_code', NULL, 'N', 'N', 'Y', 'Y', 'Y', 100, '', '', NULL, 1, 0, 'single', 'text', 'string', NULL, NULL, NULL, '4028d881436d514601436d521931012d'),
('4028d881436d514601436d52197f0147', '航班时间', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 120, 'tickect_date', NULL, 'N', 'N', 'Y', 'Y', 'Y', 10, '', '', NULL, 2, 0, 'single', 'datetime', 'Date', NULL, NULL, NULL, '4028d881436d514601436d521931012d'),
('4028d881436d514601436d5219810148', '外键', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 120, 'fck_id', NULL, 'N', 'N', 'N', 'N', 'N', 36, 'id', 'jform_order_main', NULL, 3, 0, 'single', 'text', 'string', NULL, NULL, NULL, '4028d881436d514601436d521931012d'),
('4028d881436d514601436d5219860149', '主键', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 0, 'id', NULL, 'Y', 'N', 'N', 'N', 'N', 36, '', '', NULL, 0, 0, 'single', 'text', 'string', NULL, NULL, NULL, '4028d881436d514601436d521933012e'),
('4028d881436d514601436d521989014a', '机构合计', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 0, 'a', NULL, 'N', 'N', 'Y', 'Y', 'Y', 10, '', '', NULL, 1, 2, 'group', 'text', 'double', NULL, NULL, NULL, '4028d881436d514601436d521933012e'),
('4028d881436d514601436d52198a014b', '行政小计', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 0, 'b1', NULL, 'N', 'N', 'N', 'Y', 'Y', 10, '', '', NULL, 2, 2, 'group', 'text', 'double', NULL, NULL, NULL, '4028d881436d514601436d521933012e'),
('4028d881436d514601436d52198d014c', '行政省', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 0, 'b11', NULL, 'N', 'N', 'N', 'Y', 'Y', 100, '', '', NULL, 3, 0, 'group', 'text', 'string', NULL, NULL, NULL, '4028d881436d514601436d521933012e'),
('4028d881436d514601436d52198f014d', '行政市', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 0, 'b12', NULL, 'N', 'N', 'N', 'Y', 'Y', 100, '', '', NULL, 4, 0, 'group', 'text', 'string', NULL, NULL, NULL, '4028d881436d514601436d521933012e'),
('4028d881436d514601436d521991014e', '行政县', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 0, 'b13', NULL, 'N', 'N', 'N', 'Y', 'Y', 100, '', '', NULL, 5, 0, 'single', 'text', 'string', NULL, NULL, NULL, '4028d881436d514601436d521933012e'),
('4028d881436d514601436d521994014f', '事业合计', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 0, 'b2', NULL, 'N', 'N', 'N', 'Y', 'Y', 10, '', '', NULL, 6, 2, 'single', 'text', 'double', NULL, NULL, NULL, '4028d881436d514601436d521933012e'),
('4028d881436d514601436d5219970150', '参公小计', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 0, 'b3', NULL, 'N', 'N', 'N', 'Y', 'Y', 10, '', '', NULL, 7, 2, 'single', 'text', 'double', NULL, NULL, NULL, '4028d881436d514601436d521933012e'),
('4028d881436d514601436d5219990151', '参公省', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 0, 'b31', NULL, 'N', 'N', 'N', 'Y', 'Y', 100, '', '', NULL, 8, 0, 'single', 'text', 'string', NULL, NULL, NULL, '4028d881436d514601436d521933012e'),
('4028d881436d514601436d52199c0152', '参公市', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 0, 'b32', NULL, 'N', 'N', 'N', 'Y', 'Y', 100, '', '', NULL, 9, 0, 'single', 'text', 'string', NULL, NULL, NULL, '4028d881436d514601436d521933012e'),
('4028d881436d514601436d52199e0153', '参公县', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 0, 'b33', NULL, 'N', 'N', 'N', 'Y', 'Y', 100, '', '', NULL, 10, 0, 'single', 'text', 'string', NULL, NULL, NULL, '4028d881436d514601436d521933012e'),
('4028d881436d514601436d5219a00154', '全额拨款', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 0, 'c1', NULL, 'N', 'N', 'N', 'Y', 'Y', 10, '', '', NULL, 11, 2, 'single', 'text', 'double', NULL, NULL, NULL, '4028d881436d514601436d521933012e'),
('4028d881436d514601436d5219a30155', '差额拨款', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 0, 'c2', NULL, 'N', 'N', 'N', 'Y', 'Y', 10, '', '', NULL, 12, 2, 'single', 'text', 'double', NULL, NULL, NULL, '4028d881436d514601436d521933012e'),
('4028d881436d514601436d5219a60156', '自收自支', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 0, 'c3', NULL, 'N', 'N', 'N', 'Y', 'Y', 10, '', '', NULL, 13, 2, 'single', 'text', 'double', NULL, NULL, NULL, '4028d881436d514601436d521933012e'),
('4028d881436d514601436d5219a80157', '经费合计', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 0, 'd', NULL, 'N', 'N', 'Y', 'Y', 'Y', 10, '', '', NULL, 14, 2, 'single', 'text', 'int', NULL, NULL, NULL, '4028d881436d514601436d521933012e'),
('4028d881436d514601436d5219aa0158', '机构资质', 'admin', '2014-01-07 23:28:53', '管理员', '', '', NULL, NULL, NULL, 0, 'd1', NULL, 'N', 'N', 'N', 'Y', 'Y', 1000, '', '', NULL, 15, 0, 'single', 'text', 'string', NULL, NULL, NULL, '4028d881436d514601436d521933012e');

-- --------------------------------------------------------

--
-- 表的结构 `cgform_ftl`
--

CREATE TABLE IF NOT EXISTS `cgform_ftl` (
  `ID` varchar(32) NOT NULL,
  `CGFORM_ID` varchar(36) NOT NULL,
  `CGFORM_NAME` varchar(100) NOT NULL,
  `CREATE_BY` varchar(36) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(32) DEFAULT NULL,
  `FTL_CONTENT` longtext,
  `FTL_STATUS` varchar(50) DEFAULT NULL,
  `FTL_VERSION` int(11) NOT NULL,
  `FTL_WORD_URL` varchar(200) DEFAULT NULL,
  `UPDATE_BY` varchar(36) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_NAME` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `cgform_head`
--

CREATE TABLE IF NOT EXISTS `cgform_head` (
  `id` varchar(32) NOT NULL,
  `content` varchar(200) NOT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_name` varchar(32) DEFAULT NULL,
  `is_checkbox` varchar(5) NOT NULL,
  `is_dbsynch` varchar(20) NOT NULL,
  `is_pagination` varchar(5) NOT NULL,
  `is_tree` varchar(5) NOT NULL,
  `jform_type` int(11) NOT NULL,
  `jform_version` varchar(10) NOT NULL,
  `querymode` varchar(10) NOT NULL,
  `relation_type` int(11) DEFAULT NULL,
  `sub_table_str` longtext,
  `table_name` varchar(20) NOT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_name` varchar(32) DEFAULT NULL,
  `jform_pk_sequence` varchar(200) DEFAULT NULL,
  `jform_pk_type` varchar(100) DEFAULT NULL,
  `tab_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cgform_head`
--

INSERT INTO `cgform_head` (`id`, `content`, `create_by`, `create_date`, `create_name`, `is_checkbox`, `is_dbsynch`, `is_pagination`, `is_tree`, `jform_type`, `jform_version`, `querymode`, `relation_type`, `sub_table_str`, `table_name`, `update_by`, `update_date`, `update_name`, `jform_pk_sequence`, `jform_pk_type`, `tab_order`) VALUES
('40288088486e343b01486e3f9d110006', '活动表', '4028d881436d514601436d5215ac0043', '2014-09-13 17:02:15', 'admin', 'Y', 'Y', 'Y', 'N', 1, '5', 'group', 0, NULL, 'wx_huodong', '4028d881436d514601436d5215ac0043', '2014-09-13 17:26:53', 'admin', '', 'UUID', NULL),
('40288088486e6c7101486e80feb70001', '中奖记录', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', 'N', 'Y', 'Y', 'N', 1, '2', 'group', 0, NULL, 'wx_zhongjiang', '4028d881436d514601436d5215ac0043', '2014-09-13 18:25:45', 'admin', '', 'UUID', NULL),
('402881e446676a060146677087880001', '扩展接口管理', 'admin', '2014-06-04 23:12:46', '管理员', 'N', 'Y', 'Y', 'N', 1, '2', 'single', 0, NULL, 'weixin_expandconfig', 'admin', '2014-06-04 23:18:31', '管理员', NULL, NULL, NULL),
('402881e845c73cb00145c754450c0007', '微信公众帐号信息', 'admin', '2014-05-04 21:02:39', '管理员', 'Y', 'Y', 'Y', 'N', 1, '2', 'single', 0, NULL, 'weixin_account', 'admin', '2014-05-06 20:10:30', '管理员', NULL, NULL, NULL),
('402881e946f72f8e0146f74632010008', '商品分类', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', 'N', 'Y', 'Y', 'Y', 1, '1', 'single', 0, NULL, 'WEIXIN_MALL_CATEGORY', '4028d881436d514601436d5215ac0043', '2014-07-02 21:45:35', 'admin', '', 'UUID', NULL),
('402881e94701b0bc014701b6ed380001', '商品信息', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', 'Y', 'Y', 'Y', 'N', 1, '3', 'group', 0, NULL, 'weixin_shop_goods', '4028d881436d514601436d5215ac0043', '2014-07-04 22:23:37', 'admin', '', 'UUID', NULL),
('4028d881436d514601436d521928012a', '订单主信息', 'admin', '2014-01-07 23:28:53', '管理员', 'N', 'Y', 'Y', 'N', 2, '57', 'group', 0, 'jform_order_ticket,jform_order_customer', 'jform_order_main', '4028d881436d514601436d5215ac0043', '2014-07-24 15:39:44', 'admin', NULL, NULL, NULL),
('4028d881436d514601436d52192d012b', '请假单', 'admin', '2014-01-07 23:28:53', '管理员', 'N', 'Y', 'Y', 'N', 1, '51', 'group', 0, NULL, 'jform_leave', 'admin', '2014-01-19 10:08:17', '管理员', NULL, NULL, NULL),
('4028d881436d514601436d52192f012c', '订单客户信息', 'admin', '2014-01-07 23:28:53', '管理员', 'Y', 'N', 'Y', 'N', 3, '16', 'single', 0, NULL, 'jform_order_customer', NULL, NULL, NULL, NULL, NULL, NULL),
('4028d881436d514601436d521931012d', '订单机票信息', 'admin', '2014-01-07 23:28:53', '管理员', 'N', 'N', 'Y', 'N', 3, '20', 'single', 0, NULL, 'jform_order_ticket', NULL, NULL, NULL, NULL, NULL, NULL),
('4028d881436d514601436d521933012e', '价格认证机构统计表', 'admin', '2014-01-07 23:28:53', '管理员', 'N', 'N', 'Y', 'N', 1, '3', 'group', 0, NULL, 'jform_price1', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `cgform_uploadfiles`
--

CREATE TABLE IF NOT EXISTS `cgform_uploadfiles` (
  `CGFORM_FIELD` varchar(100) NOT NULL,
  `CGFORM_ID` varchar(36) NOT NULL,
  `CGFORM_NAME` varchar(100) NOT NULL,
  `id` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_qwig8sn3okhvh4wye8nn8gdeg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ck_editor`
--

CREATE TABLE IF NOT EXISTS `ck_editor` (
  `ID` varchar(32) NOT NULL,
  `CONTENTS` blob,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ck_editor`
--

INSERT INTO `ck_editor` (`ID`, `CONTENTS`) VALUES
('4028d881436d514601436d5219250129', 0x3c68746d6c3e0d0a3c686561643e0d0a093c7469746c653e3c2f7469746c653e0d0a093c6c696e6b20687265663d22706c75672d696e2f6561737975692f7468656d65732f64656661756c742f6561737975692e637373222069643d226561737975695468656d65222072656c3d227374796c6573686565742220747970653d22746578742f63737322202f3e0d0a093c6c696e6b20687265663d22706c75672d696e2f6561737975692f7468656d65732f69636f6e2e637373222072656c3d227374796c6573686565742220747970653d22746578742f63737322202f3e0d0a093c6c696e6b20687265663d22706c75672d696e2f6163636f7264696f6e2f6373732f6163636f7264696f6e2e637373222072656c3d227374796c6573686565742220747970653d22746578742f63737322202f3e0d0a093c6c696e6b20687265663d22706c75672d696e2f56616c6964666f726d2f6373732f7374796c652e637373222072656c3d227374796c6573686565742220747970653d22746578742f63737322202f3e0d0a093c6c696e6b20687265663d22706c75672d696e2f56616c6964666f726d2f6373732f7461626c6566726f6d2e637373222072656c3d227374796c6573686565742220747970653d22746578742f63737322202f3e0d0a093c7374796c6520747970653d22746578742f637373223e626f64797b666f6e742d73697a653a313270783b7d7461626c65207b626f726465723a31707820736f6c696420233030303030303b626f726465722d636f6c6c617073653a20636f6c6c617073653b7d7464207b626f726465723a31707820736f6c696420233030303030303b6261636b67726f756e643a77686974653b666f6e742d73697a653a313270783b666f6e742d66616d696c793a203f3f3f3f3f3f3b636f6c6f723a20233333333b0d0a093c2f7374796c653e0d0a3c2f686561643e0d0a3c626f64793e0d0a3c6469763e0d0a3c703e3f3f3f3f323f3f3c2f703e0d0a0d0a3c6831207374796c653d22746578742d616c69676e3a63656e746572223e3c7370616e207374796c653d22666f6e742d73697a653a32347078223e3c7374726f6e673e3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3c2f7374726f6e673e3c2f7370616e3e3c2f68313e0d0a0d0a3c703e3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3c696e707574206e616d653d226f72675f6e616d652220747970653d2274657874222076616c75653d22247b6f72675f6e616d653f69665f6578697374733f68746d6c7d22202f3e3c2f703e0d0a0d0a3c703e3f3f3f3f3f3f3f3f3f3f3f3f3c696e707574206e616d653d226e756d2220747970653d2274657874222076616c75653d22247b6e756d3f69665f6578697374733f68746d6c7d22202f3e20266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b3f3f3f3f3f3f3f3f3f3f266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203f3f3f3f3f3f3f3f266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203f3f266e6273703b266e6273703b203f3f266e6273703b266e6273703b203f3f3c2f703e0d0a0d0a3c666f726d20616374696f6e3d226367466f726d4275696c64436f6e74726f6c6c65722e646f3f736176654f72557064617465222069643d22666f726d6f626a22206d6574686f643d22706f737422206e616d653d22666f726d6f626a223e3c696e707574206e616d653d227461626c654e616d652220747970653d2268696464656e222076616c75653d22247b7461626c654e616d653f69665f6578697374733f68746d6c7d22202f3e203c696e707574206e616d653d2269642220747970653d2268696464656e222076616c75653d22247b69643f69665f6578697374733f68746d6c7d22202f3e237b6a666f726d5f68696464656e5f6669656c647d3c696e70757420747970653d2268696464656e22202f3e0d0a3c703e266e6273703b3c2f703e0d0a0d0a3c7461626c6520626f726465723d2231222063656c6c70616464696e673d2230222063656c6c73706163696e673d223022207374796c653d2277696474683a313031367078223e0d0a093c74626f64793e0d0a09093c74723e0d0a0909093c746420726f777370616e3d2234223e0d0a0909093c703e266e6273703b3c2f703e0d0a0d0a0909093c703e266e6273703b3c2f703e0d0a0d0a0909093c703e3f3f3f3f3c2f703e0d0a0d0a0909093c703e266e6273703b3c2f703e0d0a0909093c2f74643e0d0a0909093c746420636f6c7370616e3d22362220726f777370616e3d2232223e0d0a0909093c703e266e6273703b3c2f703e0d0a0d0a0909093c703e3f3f3f3f3c2f703e0d0a0909093c2f74643e0d0a0909093c746420636f6c7370616e3d22352220726f777370616e3d2232223e0d0a0909093c703e266e6273703b3c2f703e0d0a0d0a0909093c703e3f3f3f3f3c2f703e0d0a0909093c2f74643e0d0a0909093c746420636f6c7370616e3d22342220726f777370616e3d2232223e0d0a0909093c703e266e6273703b3c2f703e0d0a0d0a0909093c703e3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3c2f703e0d0a0909093c2f74643e0d0a0909093c746420636f6c7370616e3d2234223e0d0a0909093c703e3f3f3f3f3f3f3f3f3f3f3f3f3c2f703e0d0a0909093c2f74643e0d0a09093c2f74723e0d0a09093c74723e0d0a0909093c746420636f6c7370616e3d2234223e0d0a0909093c703e3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3c2f703e0d0a0909093c2f74643e0d0a09093c2f74723e0d0a09093c74723e0d0a0909093c746420636f6c7370616e3d2233223e0d0a0909093c703e3f3f3f3f3f3f3f3f3c2f703e0d0a0909093c2f74643e0d0a0909093c746420636f6c7370616e3d2232223e0d0a0909093c703e3f3f3f3f3f3f3f3f3c2f703e0d0a0909093c2f74643e0d0a0909093c746420726f777370616e3d2232223e0d0a0909093c703e3f3f3f3f283f3f3f3f293f3f3f3f3c2f703e0d0a0909093c2f74643e0d0a0909093c746420726f777370616e3d2232223e0d0a0909093c703e3f3f3f3f3c2f703e0d0a0909093c2f74643e0d0a0909093c746420726f777370616e3d2232223e0d0a0909093c703e3f3f3f3f3c2f703e0d0a0909093c2f74643e0d0a0909093c746420726f777370616e3d2232223e0d0a0909093c703e3f3f3f3f3c2f703e0d0a0909093c2f74643e0d0a0909093c746420726f777370616e3d2232223e0d0a0909093c703e3f3f3f3f3f3f3c2f703e0d0a0909093c2f74643e0d0a0909093c746420726f777370616e3d2232223e0d0a0909093c703e3f3f3f3f3c2f703e0d0a0909093c2f74643e0d0a0909093c746420726f777370616e3d2232223e0d0a0909093c703e3f3f3f3f3c2f703e0d0a0d0a0909093c703e3f3f3f3f3f3f3c2f703e0d0a0909093c2f74643e0d0a0909093c746420726f777370616e3d2232223e0d0a0909093c703e3f3f3f3f3c2f703e0d0a0d0a0909093c703e3f3f3f3f3f3f3c2f703e0d0a0909093c2f74643e0d0a0909093c746420726f777370616e3d2232223e0d0a0909093c703e3f3f3f3f3c2f703e0d0a0d0a0909093c703e3f3f3f3f3f3f3c2f703e0d0a0909093c2f74643e0d0a0909093c746420726f777370616e3d2232223e0d0a0909093c703e3f3f3f3f3c2f703e0d0a0909093c2f74643e0d0a0909093c746420726f777370616e3d2232223e0d0a0909093c703e3f3f3f3f3c2f703e0d0a0909093c2f74643e0d0a0909093c746420726f777370616e3d2232223e0d0a0909093c703e3f3f3f3f3c2f703e0d0a0909093c2f74643e0d0a0909093c746420726f777370616e3d2232223e0d0a0909093c703e3f3f3f3f3c2f703e0d0a0909093c2f74643e0d0a0909093c746420726f777370616e3d2232223e0d0a0909093c703e3f3f3f3f3c2f703e0d0a0909093c2f74643e0d0a09093c2f74723e0d0a09093c74723e0d0a0909093c74643e0d0a0909093c703e3f3f3f3f3f3f3c2f703e0d0a0909093c2f74643e0d0a0909093c746420636f6c7370616e3d2232223e0d0a0909093c703e3f3f3f3f3c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e3f3f3f3f3c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e3f3f3f3f3c2f703e0d0a0909093c2f74643e0d0a09093c2f74723e0d0a09093c74723e0d0a0909093c74643e0d0a0909093c703e41313c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e42313c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e42323c2f703e0d0a0909093c2f74643e0d0a0909093c746420636f6c7370616e3d2232223e0d0a0909093c703e42333c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e42343c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e42353c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e43313c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e43323c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e43333c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e43343c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e43353c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e44313c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e44323c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e44333c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e44343c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e45313c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e45323c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e45333c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e45343c2f703e0d0a0909093c2f74643e0d0a09093c2f74723e0d0a09093c74723e0d0a0909093c74643e0d0a0909093c703e3c696e707574206e616d653d226131222073697a653d22342220747970653d2274657874222076616c75653d22247b61313f69665f6578697374733f68746d6c7d22202f3e3c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e3c696e707574206e616d653d226231222073697a653d22342220747970653d2274657874222076616c75653d22247b62313f69665f6578697374733f68746d6c7d22202f3e3c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e3c696e707574206e616d653d226232222073697a653d22342220747970653d2274657874222076616c75653d22247b62323f69665f6578697374733f68746d6c7d22202f3e3c2f703e0d0a0909093c2f74643e0d0a0909093c746420636f6c7370616e3d2232223e0d0a0909093c703e3c696e707574206e616d653d226233222073697a653d22342220747970653d2274657874222076616c75653d22247b62333f69665f6578697374733f68746d6c7d22202f3e3c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e3c696e707574206e616d653d226234222073697a653d22342220747970653d2274657874222076616c75653d22247b62343f69665f6578697374733f68746d6c7d22202f3e3c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e3c696e707574206e616d653d226235222073697a653d22342220747970653d2274657874222076616c75653d22247b62353f69665f6578697374733f68746d6c7d22202f3e3c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e3c696e707574206e616d653d226331222073697a653d22342220747970653d2274657874222076616c75653d22247b63313f69665f6578697374733f68746d6c7d22202f3e3c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e3c696e707574206e616d653d226332222073697a653d22342220747970653d2274657874222076616c75653d22247b63323f69665f6578697374733f68746d6c7d22202f3e3c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e3c696e707574206e616d653d226333222073697a653d22342220747970653d2274657874222076616c75653d22247b63333f69665f6578697374733f68746d6c7d22202f3e3c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e3c696e707574206e616d653d226334222073697a653d22342220747970653d2274657874222076616c75653d22247b63343f69665f6578697374733f68746d6c7d22202f3e3c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e3c696e707574206e616d653d226335222073697a653d22342220747970653d2274657874222076616c75653d22247b63353f69665f6578697374733f68746d6c7d22202f3e3c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e3c696e707574206e616d653d226431222073697a653d22342220747970653d2274657874222076616c75653d22247b64313f69665f6578697374733f68746d6c7d22202f3e3c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e3c696e707574206e616d653d226432222073697a653d22342220747970653d2274657874222076616c75653d22247b64323f69665f6578697374733f68746d6c7d22202f3e3c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e3c696e707574206e616d653d226433222073697a653d22342220747970653d2274657874222076616c75653d22247b64333f69665f6578697374733f68746d6c7d22202f3e3c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e3c696e707574206e616d653d226434222073697a653d22342220747970653d2274657874222076616c75653d22247b64343f69665f6578697374733f68746d6c7d22202f3e3c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e3c696e707574206e616d653d226531222073697a653d22342220747970653d2274657874222076616c75653d22247b65313f69665f6578697374733f68746d6c7d22202f3e3c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e3c696e707574206e616d653d226532222073697a653d22342220747970653d2274657874222076616c75653d22247b65323f69665f6578697374733f68746d6c7d22202f3e3c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e3c696e707574206e616d653d226533222073697a653d22342220747970653d2274657874222076616c75653d22247b65333f69665f6578697374733f68746d6c7d22202f3e3c2f703e0d0a0909093c2f74643e0d0a0909093c74643e0d0a0909093c703e3c696e707574206e616d653d226534222073697a653d22342220747970653d2274657874222076616c75653d22247b65343f69665f6578697374733f68746d6c7d22202f3e3c2f703e0d0a0909093c2f74643e0d0a09093c2f74723e0d0a09093c74723e0d0a0909093c746420636f6c7370616e3d223230223e0d0a0909093c703e266e6273703b3c2f703e0d0a0d0a0909093c703e3f3f3f3f3f3f3f3f3f3f3c2f703e0d0a0d0a0909093c703e3f3f3f3f3f3f3f3f3f3f413f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3c2f703e0d0a0d0a0909093c703e3f3f3f3f3f3f3f3f3f3f3c2f703e0d0a0d0a0909093c703e3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f42313f3f42323f3f3f3f3f3f3c2f703e0d0a0d0a0909093c703e3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f42333f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f42343f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3c2f703e0d0a0d0a0909093c703e3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f42353f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3c2f703e0d0a0d0a0909093c703e3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3c2f703e0d0a0d0a0909093c703e413d42312b42322b42332b42342b42353d43312b43322b43332b43342b43353d44312b44322b44332b44343d45312b45322b45332b45343c2f703e0d0a0909093c2f74643e0d0a09093c2f74723e0d0a093c2f74626f64793e0d0a3c2f7461626c653e0d0a3c2f666f726d3e0d0a3c2f6469763e0d0a3c2f626f64793e0d0a3c2f68746d6c3e0d0a);

-- --------------------------------------------------------

--
-- 表的结构 `ck_finder`
--

CREATE TABLE IF NOT EXISTS `ck_finder` (
  `ID` varchar(32) NOT NULL,
  `ATTACHMENT` varchar(255) DEFAULT NULL,
  `IMAGE` varchar(255) DEFAULT NULL,
  `REMARK` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `doc`
--

CREATE TABLE IF NOT EXISTS `doc` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DOCCONTENT` longblob,
  `DOCDATE` datetime DEFAULT NULL,
  `DOCID` varchar(255) DEFAULT NULL,
  `DOCTITLE` varchar(255) DEFAULT NULL,
  `DOCTYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gzentity`
--

CREATE TABLE IF NOT EXISTS `gzentity` (
  `id` varchar(100) NOT NULL,
  `templateName` varchar(100) DEFAULT NULL,
  `templateId` varchar(100) DEFAULT NULL,
  `lx` varchar(100) DEFAULT NULL,
  `addTime` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `jeecg_demo`
--

CREATE TABLE IF NOT EXISTS `jeecg_demo` (
  `ID` varchar(32) NOT NULL,
  `AGE` int(11) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `DEP_ID` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `MOBILE_PHONE` varchar(255) DEFAULT NULL,
  `OFFICE_PHONE` varchar(255) DEFAULT NULL,
  `SALARY` decimal(19,2) DEFAULT NULL,
  `SEX` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `USER_NAME` varchar(255) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jeecg_demo`
--

INSERT INTO `jeecg_demo` (`ID`, `AGE`, `BIRTHDAY`, `content`, `CREATE_TIME`, `DEP_ID`, `EMAIL`, `MOBILE_PHONE`, `OFFICE_PHONE`, `SALARY`, `SEX`, `status`, `USER_NAME`, `create_date`) VALUES
('4028d881436d514601436d521ad4015e', 12, '2014-01-07 23:28:53', NULL, NULL, '123', 'demo@jeecg.com', '13111111111', '66666666', '111111.00', '1', NULL, '小明', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `jeecg_demo_course`
--

CREATE TABLE IF NOT EXISTS `jeecg_demo_course` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(25) DEFAULT NULL,
  `teacher_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_g3jn8mfod69i7jfv5gnrcvgbx` (`teacher_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jeecg_demo_course`
--

INSERT INTO `jeecg_demo_course` (`ID`, `NAME`, `teacher_ID`) VALUES
('4028d881436d514601436d5219b0015b', '海贼王', '4028d881436d514601436d5219ae015a');

-- --------------------------------------------------------

--
-- 表的结构 `jeecg_demo_student`
--

CREATE TABLE IF NOT EXISTS `jeecg_demo_student` (
  `ID` varchar(32) NOT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `NAME` varchar(32) DEFAULT NULL,
  `SEX` varchar(1) DEFAULT NULL,
  `COURSE_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_r86q81koyocgod3cx6529hbpw` (`COURSE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jeecg_demo_student`
--

INSERT INTO `jeecg_demo_student` (`ID`, `BIRTHDAY`, `NAME`, `SEX`, `COURSE_ID`) VALUES
('4028d881436d514601436d5219b4015c', NULL, '卓洛', '0', '4028d881436d514601436d5219b0015b'),
('4028d881436d514601436d5219b7015d', NULL, '山治 ', '0', '4028d881436d514601436d5219b0015b');

-- --------------------------------------------------------

--
-- 表的结构 `jeecg_demo_teacher`
--

CREATE TABLE IF NOT EXISTS `jeecg_demo_teacher` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(12) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jeecg_demo_teacher`
--

INSERT INTO `jeecg_demo_teacher` (`ID`, `NAME`, `pic`) VALUES
('4028d881436d514601436d5219ae015a', '路飞', 'upload/Teacher/pic3345280233.PNG');

-- --------------------------------------------------------

--
-- 表的结构 `jeecg_matter_bom`
--

CREATE TABLE IF NOT EXISTS `jeecg_matter_bom` (
  `ID` varchar(32) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` decimal(21,6) NOT NULL,
  `productionDate` datetime DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `parent_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_fldfyrevj0li4hej5b2gu2q7w` (`parent_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jeecg_matter_bom`
--

INSERT INTO `jeecg_matter_bom` (`ID`, `address`, `code`, `name`, `price`, `productionDate`, `quantity`, `stock`, `unit`, `weight`, `parent_ID`) VALUES
('4028d881436d514601436d521ae40163', '广东深圳', '001', '电脑', '5000.000000', '2014-01-07 23:28:53', 5, 10, '台', '100', NULL),
('4028d881436d514601436d521ae70164', '上海', '001001', '主板', '800.000000', '2014-01-07 23:28:53', 6, 18, '个', '60', '4028d881436d514601436d521ae40163');

-- --------------------------------------------------------

--
-- 表的结构 `jeecg_minidao`
--

CREATE TABLE IF NOT EXISTS `jeecg_minidao` (
  `ID` varchar(32) NOT NULL,
  `AGE` int(11) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `CONTENT` varchar(255) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `DEP_ID` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `MOBILE_PHONE` varchar(255) DEFAULT NULL,
  `OFFICE_PHONE` varchar(255) DEFAULT NULL,
  `SALARY` decimal(19,2) DEFAULT NULL,
  `SEX` int(11) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `USER_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `jeecg_order_custom`
--

CREATE TABLE IF NOT EXISTS `jeecg_order_custom` (
  `ID` varchar(32) NOT NULL,
  `CREATE_DT` datetime DEFAULT NULL,
  `CRTUSER` varchar(12) DEFAULT NULL,
  `CRTUSER_NAME` varchar(10) DEFAULT NULL,
  `DEL_DT` datetime DEFAULT NULL,
  `DELFLAG` int(11) DEFAULT NULL,
  `GO_ORDER_CODE` varchar(12) NOT NULL,
  `GOC_BUSS_CONTENT` varchar(33) DEFAULT NULL,
  `GOC_CONTENT` varchar(66) DEFAULT NULL,
  `GOC_CUS_NAME` varchar(16) DEFAULT NULL,
  `GOC_IDCARD` varchar(18) DEFAULT NULL,
  `GOC_PASSPORT_CODE` varchar(10) DEFAULT NULL,
  `GOC_SEX` varchar(255) DEFAULT NULL,
  `MODIFIER` varchar(12) DEFAULT NULL,
  `MODIFIER_NAME` varchar(10) DEFAULT NULL,
  `MODIFY_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jeecg_order_custom`
--

INSERT INTO `jeecg_order_custom` (`ID`, `CREATE_DT`, `CRTUSER`, `CRTUSER_NAME`, `DEL_DT`, `DELFLAG`, `GO_ORDER_CODE`, `GOC_BUSS_CONTENT`, `GOC_CONTENT`, `GOC_CUS_NAME`, `GOC_IDCARD`, `GOC_PASSPORT_CODE`, `GOC_SEX`, `MODIFIER`, `MODIFIER_NAME`, `MODIFY_DT`) VALUES
('4028d881436d514601436d521ae20162', NULL, NULL, NULL, NULL, NULL, '11111AAA', NULL, NULL, '小明', NULL, NULL, '1', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `jeecg_order_main`
--

CREATE TABLE IF NOT EXISTS `jeecg_order_main` (
  `ID` varchar(32) NOT NULL,
  `CREATE_DT` datetime DEFAULT NULL,
  `CRTUSER` varchar(12) DEFAULT NULL,
  `CRTUSER_NAME` varchar(10) DEFAULT NULL,
  `DEL_DT` datetime DEFAULT NULL,
  `DELFLAG` int(11) DEFAULT NULL,
  `GO_ALL_PRICE` decimal(10,2) DEFAULT NULL,
  `GO_CONTACT_NAME` varchar(16) DEFAULT NULL,
  `GO_CONTENT` varchar(66) DEFAULT NULL,
  `GO_ORDER_CODE` varchar(12) NOT NULL,
  `GO_ORDER_COUNT` int(11) DEFAULT NULL,
  `GO_RETURN_PRICE` decimal(10,2) DEFAULT NULL,
  `GO_TELPHONE` varchar(11) DEFAULT NULL,
  `GODER_TYPE` varchar(255) DEFAULT NULL,
  `MODIFIER` varchar(12) DEFAULT NULL,
  `MODIFIER_NAME` varchar(10) DEFAULT NULL,
  `MODIFY_DT` datetime DEFAULT NULL,
  `USERTYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jeecg_order_main`
--

INSERT INTO `jeecg_order_main` (`ID`, `CREATE_DT`, `CRTUSER`, `CRTUSER_NAME`, `DEL_DT`, `DELFLAG`, `GO_ALL_PRICE`, `GO_CONTACT_NAME`, `GO_CONTENT`, `GO_ORDER_CODE`, `GO_ORDER_COUNT`, `GO_RETURN_PRICE`, `GO_TELPHONE`, `GODER_TYPE`, `MODIFIER`, `MODIFIER_NAME`, `MODIFY_DT`, `USERTYPE`) VALUES
('4028d881436d514601436d521adb0160', NULL, NULL, NULL, NULL, NULL, '1111111.00', 'alex', '别放辣椒', '11111AAA', 1, '100.00', NULL, '1', NULL, NULL, NULL, '1');

-- --------------------------------------------------------

--
-- 表的结构 `jeecg_order_product`
--

CREATE TABLE IF NOT EXISTS `jeecg_order_product` (
  `ID` varchar(32) NOT NULL,
  `CREATE_DT` datetime DEFAULT NULL,
  `CRTUSER` varchar(12) DEFAULT NULL,
  `CRTUSER_NAME` varchar(10) DEFAULT NULL,
  `DEL_DT` datetime DEFAULT NULL,
  `DELFLAG` int(11) DEFAULT NULL,
  `GO_ORDER_CODE` varchar(12) NOT NULL,
  `GOP_CONTENT` varchar(66) DEFAULT NULL,
  `GOP_COUNT` int(11) DEFAULT NULL,
  `GOP_ONE_PRICE` decimal(10,2) DEFAULT NULL,
  `GOP_PRODUCT_NAME` varchar(33) DEFAULT NULL,
  `GOP_PRODUCT_TYPE` varchar(1) NOT NULL,
  `GOP_SUM_PRICE` decimal(10,2) DEFAULT NULL,
  `MODIFIER` varchar(12) DEFAULT NULL,
  `MODIFIER_NAME` varchar(10) DEFAULT NULL,
  `MODIFY_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jeecg_order_product`
--

INSERT INTO `jeecg_order_product` (`ID`, `CREATE_DT`, `CRTUSER`, `CRTUSER_NAME`, `DEL_DT`, `DELFLAG`, `GO_ORDER_CODE`, `GOP_CONTENT`, `GOP_COUNT`, `GOP_ONE_PRICE`, `GOP_PRODUCT_NAME`, `GOP_PRODUCT_TYPE`, `GOP_SUM_PRICE`, `MODIFIER`, `MODIFIER_NAME`, `MODIFY_DT`) VALUES
('4028d881436d514601436d521adf0161', NULL, NULL, NULL, NULL, NULL, '11111AAA', NULL, 1, '100.00', '最最美味的地锅鸡', '1', '100.00', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `jform_cgreport_head`
--

CREATE TABLE IF NOT EXISTS `jform_cgreport_head` (
  `ID` varchar(36) NOT NULL,
  `CGR_SQL` longtext NOT NULL,
  `CODE` varchar(36) NOT NULL,
  `CONTENT` longtext NOT NULL,
  `NAME` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jform_cgreport_head`
--

INSERT INTO `jform_cgreport_head` (`ID`, `CGR_SQL`, `CODE`, `CONTENT`, `NAME`) VALUES
('402889f847666ae401476670bb72000a', 'select * from  weixin_cms_menu', 'A001', '查询微网站栏目', '查询栏目');

-- --------------------------------------------------------

--
-- 表的结构 `jform_cgreport_item`
--

CREATE TABLE IF NOT EXISTS `jform_cgreport_item` (
  `ID` varchar(36) NOT NULL,
  `S_FLAG` varchar(2) DEFAULT NULL,
  `S_MODE` varchar(10) DEFAULT NULL,
  `CGRHEAD_ID` varchar(36) DEFAULT NULL,
  `DICT_CODE` varchar(36) DEFAULT NULL,
  `FIELD_HREF` varchar(120) DEFAULT NULL,
  `FIELD_NAME` varchar(36) DEFAULT NULL,
  `FIELD_TXT` longtext,
  `FIELD_TYPE` varchar(10) DEFAULT NULL,
  `IS_SHOW` varchar(5) DEFAULT NULL,
  `ORDER_NUM` int(11) DEFAULT NULL,
  `REPLACE_VA` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jform_cgreport_item`
--

INSERT INTO `jform_cgreport_item` (`ID`, `S_FLAG`, `S_MODE`, `CGRHEAD_ID`, `DICT_CODE`, `FIELD_HREF`, `FIELD_NAME`, `FIELD_TXT`, `FIELD_TYPE`, `IS_SHOW`, `ORDER_NUM`, `REPLACE_VA`) VALUES
('402889f847666ae401476670bb74000b', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'ID', 'ID', 'String', 'Y', 0, ''),
('402889f847666ae401476670bb78000c', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'ACCOUNTID', 'ACCOUNTID', 'String', 'Y', 1, ''),
('402889f847666ae401476670bb79000d', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'CREATE_BY', 'CREATE_BY', 'String', 'Y', 2, ''),
('402889f847666ae401476670bb7a000e', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'CREATE_DATE', 'CREATE_DATE', 'String', 'Y', 3, ''),
('402889f847666ae401476670bb7b000f', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'CREATE_NAME', 'CREATE_NAME', 'String', 'Y', 4, ''),
('402889f847666ae401476670bb7e0010', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'IMAGE_HREF', 'IMAGE_HREF', 'String', 'Y', 5, ''),
('402889f847666ae401476670bb7f0011', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'IMAGE_NAME', 'IMAGE_NAME', 'String', 'Y', 6, ''),
('402889f847666ae401476670bb800012', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'NAME', 'NAME', 'String', 'Y', 7, ''),
('402889f847666ae401476670bb810013', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'TYPE', 'TYPE', 'String', 'Y', 8, '');

-- --------------------------------------------------------

--
-- 表的结构 `jform_leave`
--

CREATE TABLE IF NOT EXISTS `jform_leave` (
  `id` varchar(36) NOT NULL,
  `title` varchar(50) NOT NULL COMMENT '请假标题',
  `people` varchar(20) NOT NULL COMMENT '请假人',
  `sex` varchar(10) NOT NULL COMMENT '性别',
  `begindate` datetime NOT NULL COMMENT '请假开始时间',
  `enddate` datetime NOT NULL COMMENT '请假结束时间',
  `day_num` int(11) DEFAULT NULL COMMENT '请假天数',
  `hol_dept` varchar(32) NOT NULL COMMENT '所属部门',
  `hol_reson` varchar(255) NOT NULL COMMENT '请假原因',
  `dep_leader` varchar(20) NOT NULL COMMENT '部门审批人',
  `content` varchar(255) NOT NULL COMMENT '部门审批意见',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `jform_order_main`
--

CREATE TABLE IF NOT EXISTS `jform_order_main` (
  `id` varchar(36) NOT NULL,
  `order_code` varchar(50) DEFAULT NULL COMMENT '订单号',
  `order_date` datetime DEFAULT NULL COMMENT '订单日期',
  `order_money` double DEFAULT NULL COMMENT '订单金额',
  `content` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `jg_person`
--

CREATE TABLE IF NOT EXISTS `jg_person` (
  `ID` varchar(32) NOT NULL,
  `AGE` int(11) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `CREATEDT` datetime DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `SALARY` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jg_person`
--

INSERT INTO `jg_person` (`ID`, `AGE`, `BIRTHDAY`, `CREATEDT`, `NAME`, `SALARY`) VALUES
('4028d881436d514601436d521ad9015f', 10, '2014-01-07 23:28:53', '2014-01-07 23:28:53', '小红', '1000.00');

-- --------------------------------------------------------

--
-- 表的结构 `OPTIMISTIC_LOCKING`
--

CREATE TABLE IF NOT EXISTS `OPTIMISTIC_LOCKING` (
  `ID` varchar(32) NOT NULL,
  `ACCOUNT` int(11) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  `NAME` varchar(85) DEFAULT NULL,
  `VER` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `optimistic_locking`
--

CREATE TABLE IF NOT EXISTS `optimistic_locking` (
  `ID` varchar(32) NOT NULL,
  `ACCOUNT` int(11) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  `NAME` varchar(85) DEFAULT NULL,
  `VER` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `t_finance`
--

CREATE TABLE IF NOT EXISTS `t_finance` (
  `ID` varchar(32) NOT NULL,
  `APPROFILETYPE` varchar(255) DEFAULT NULL,
  `BUYMONEY` float DEFAULT NULL,
  `BUYPROJECTNO` varchar(255) DEFAULT NULL,
  `BUYPROJECTORG` varchar(255) DEFAULT NULL,
  `BUYUSE` varchar(255) DEFAULT NULL,
  `BUYYEAR` varchar(255) DEFAULT NULL,
  `CATEGORY` varchar(255) DEFAULT NULL,
  `COLLECTORG` varchar(255) DEFAULT NULL,
  `EXPENSEACCOUNT` varchar(255) DEFAULT NULL,
  `HAPPENYEAR` int(11) DEFAULT NULL,
  `MONEYAREA` varchar(255) DEFAULT NULL,
  `MONEYSOURCE` varchar(255) DEFAULT NULL,
  `MONEYTOTAL` float DEFAULT NULL,
  `MONEYUSE` varchar(255) DEFAULT NULL,
  `PAYTIME` datetime DEFAULT NULL,
  `ZBWNO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_finance`
--

INSERT INTO `t_finance` (`ID`, `APPROFILETYPE`, `BUYMONEY`, `BUYPROJECTNO`, `BUYPROJECTORG`, `BUYUSE`, `BUYYEAR`, `CATEGORY`, `COLLECTORG`, `EXPENSEACCOUNT`, `HAPPENYEAR`, `MONEYAREA`, `MONEYSOURCE`, `MONEYTOTAL`, `MONEYUSE`, `PAYTIME`, `ZBWNO`) VALUES
('402880e6478c6d8201478c72e8ff0008', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('402880e6478c6d8201478c74a6000010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('402889fb480bc77a01480bda5de90014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('402889fb480bfaf001480c22ff2a0045', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('402889fb480bfaf001480c2331810048', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `t_finance_files`
--

CREATE TABLE IF NOT EXISTS `t_finance_files` (
  `id` varchar(32) NOT NULL,
  `financeId` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ij2p74feypwcda4n0n96pyd10` (`financeId`),
  KEY `FK_28m7vvi0cy5r5keke68b6f7rt` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `t_s_attachment`
--

CREATE TABLE IF NOT EXISTS `t_s_attachment` (
  `ID` varchar(32) NOT NULL,
  `attachmentcontent` longblob,
  `attachmenttitle` varchar(100) DEFAULT NULL,
  `businesskey` varchar(32) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `extend` varchar(32) DEFAULT NULL,
  `note` longtext,
  `realpath` varchar(100) DEFAULT NULL,
  `subclassname` longtext,
  `swfpath` longtext,
  `BUSENTITYNAME` varchar(100) DEFAULT NULL,
  `INFOTYPEID` varchar(32) DEFAULT NULL,
  `USERID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_mnq23hlc835n4ufgjl7nkn3bd` (`USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_s_attachment`
--

INSERT INTO `t_s_attachment` (`ID`, `attachmentcontent`, `attachmenttitle`, `businesskey`, `createdate`, `extend`, `note`, `realpath`, `subclassname`, `swfpath`, `BUSENTITYNAME`, `INFOTYPEID`, `USERID`) VALUES
('297e7eb6469a4a8901469a5d96ea000d', NULL, '19343396_845725', NULL, '2014-06-14 20:32:43', 'jpg', NULL, 'upload/files/20140614203243Hk6qikWt.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140614203243Hk6qikWt.swf', NULL, NULL, NULL),
('297e7eb6469a4a8901469a5ebac20010', NULL, '1384480985636', NULL, '2014-06-14 20:33:57', 'jpg', NULL, 'upload/files/20140614203357CLkYJbzQ.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140614203357CLkYJbzQ.swf', NULL, NULL, NULL),
('297e7eb6469a9a0f01469a9b59d30001', NULL, '1384480985636', NULL, '2014-06-14 21:40:10', 'jpg', NULL, 'upload/files/20140614214010COJ3srhx.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140614214010COJ3srhx.swf', NULL, NULL, NULL),
('297e7eb6469a9a0f01469a9bc74b0003', NULL, '19343396_845725', NULL, '2014-06-14 21:40:38', 'jpg', NULL, 'upload/files/20140614214038YRSIWjjs.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140614214038YRSIWjjs.swf', NULL, NULL, NULL),
('2c9183404d70b41a014d74171adb0018', NULL, 'banner_bg1', NULL, '2015-05-21 09:29:40', 'jpg', NULL, 'template/cms/default/images/20150521092940bGIMzLVX.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', NULL, NULL, NULL, NULL),
('2c9183404d744024014d74470fab0003', NULL, 'banner_bg1', NULL, '2015-05-21 10:22:03', 'jpg', NULL, 'template/cms/default/images/20150521102203Jmf83cCh.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', NULL, NULL, NULL, NULL),
('2c9183404d74f79b014d755b07440001', NULL, 'share_qq_E3FAD2BD42F94B07F311DE9BC472C416', NULL, NULL, 'png', NULL, 'upload/files/20150521152329hRTBLuPJ.png', NULL, NULL, NULL, NULL, NULL),
('2c9183404d74f79b014d792a6d98000a', NULL, 'banner_bg1', NULL, '2015-05-22 09:08:53', 'jpg', NULL, 'template/cms/default/images/20150522090853ZP0JuiVf.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', NULL, NULL, NULL, NULL),
('2c9183404d7938da014d793bbc730009', NULL, 'banner_bg1', NULL, '2015-05-22 09:27:47', 'jpg', NULL, 'template/cms/default/images/20150522092747Ddj7m03s.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', NULL, NULL, NULL, NULL),
('2c9183404d7938da014d793de516000d', NULL, 'banner_bg1', NULL, '2015-05-22 09:30:09', 'jpg', NULL, 'template/cms/default/images/2015052209300907v1vw41.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', NULL, NULL, NULL, NULL),
('2c9183404d7938da014d793f0ef40011', NULL, 'banner_bg1', NULL, '2015-05-22 09:31:25', 'jpg', NULL, 'template/cms/default/images/20150522093125PHzBZreY.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', NULL, NULL, NULL, NULL),
('402880e6477d04e001477d0a31040002', NULL, 'jeecg_scott', NULL, '2014-07-28 20:55:25', 'jpg', NULL, 'upload/files/20140728205525rUa7itrm.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728205525rUa7itrm.swf', NULL, NULL, NULL),
('402880e6477d04e001477d0a53150005', NULL, 'default', NULL, '2014-07-28 20:55:34', 'zip', NULL, 'upload/files/20140728205534UfBLupzK.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728205534UfBLupzK.swf', NULL, NULL, NULL),
('402880e6477d04e001477d0dfcd80009', NULL, 'default', NULL, '2014-07-28 20:59:34', 'zip', NULL, 'upload/files/20140728205934YVSrqmg8.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728205934YVSrqmg8.swf', NULL, NULL, NULL),
('402880e6477d04e001477d0e143d000a', NULL, 'jeecg_scott', NULL, '2014-07-28 20:59:40', 'jpg', NULL, 'upload/files/20140728205940Y6Ly8de0.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728205940Y6Ly8de0.swf', NULL, NULL, NULL),
('402880e6477d04e001477d0e1d31000d', NULL, 'default', NULL, '2014-07-28 20:59:42', 'zip', NULL, 'upload/files/20140728205942vS1giD8f.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728205942vS1giD8f.swf', NULL, NULL, NULL),
('402880e6477d5c2601477d5d81de0001', NULL, 'jeecg_scott', NULL, '2014-07-28 22:26:25', 'jpg', NULL, 'upload/files/20140728222625KXeCCRAG.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728222625KXeCCRAG.swf', NULL, NULL, NULL),
('402880e648138dba014813b89b85003c', NULL, '2501216q581a_434673', NULL, '2014-08-27 03:08:58', 'jpg', NULL, 'upload/files/20140827030858H9rAhVCV.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140827030858H9rAhVCV.swf', NULL, NULL, NULL),
('402880e648138dba014813b8e1ee0040', NULL, '1348502732_4991', NULL, '2014-08-27 03:09:16', 'gif', NULL, 'upload/files/20140827030916Z6dAQhQ0.gif', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140827030916Z6dAQhQ0.swf', NULL, NULL, NULL),
('4028818348fa8bb90148fa905a910001', NULL, 'bd2', NULL, '2014-10-10 22:57:17', 'png', NULL, 'template/cms/default/images/20141010225717SwvmZkzZ.png', 'org.jeecgframework.web.system.pojo.base.TSDocument', NULL, NULL, NULL, NULL),
('4028818348faa4fa0148faa950de0001', NULL, 'bd2', NULL, '2014-10-10 23:24:33', 'png', NULL, 'template/cms/default/images/20141010232433Y4aYL1ZQ.png', 'org.jeecgframework.web.system.pojo.base.TSDocument', NULL, NULL, NULL, NULL),
('4028818348faa4fa0148faad079b0005', NULL, 'bd2', NULL, '2014-10-10 23:28:36', 'png', NULL, 'template/cms/default/images/20141010232836Qauvsfay.png', 'org.jeecgframework.web.system.pojo.base.TSDocument', NULL, NULL, NULL, NULL),
('4028818348fab3080148fab743f40001', NULL, 'banner', NULL, '2014-10-10 23:39:47', 'png', NULL, 'template/cms/default/images/20141010233947DXEKBLwW.png', 'org.jeecgframework.web.system.pojo.base.TSDocument', NULL, NULL, NULL, NULL),
('402881e446394419014639453ce90002', NULL, '19343396_845725', NULL, '2014-05-27 00:02:57', 'jpg', NULL, 'upload/files/20140527000257Q4m5Y6eh.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140527000257Q4m5Y6eh.swf', NULL, NULL, NULL),
('402881e4463cc88701463ccef5340001', NULL, '19343396_845725', NULL, '2014-05-27 16:32:14', 'jpg', NULL, 'upload/files/20140527163214CKTFLZIC.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140527163214CKTFLZIC.swf', NULL, NULL, NULL),
('402881e44643207c01464333b1f9000c', NULL, '1384480985636', NULL, '2014-05-28 22:19:59', 'jpg', NULL, 'upload/files/20140528221959CZ99E1i2.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140528221959CZ99E1i2.swf', NULL, NULL, NULL),
('402881e4464381350146438691940002', NULL, '1384480985636', NULL, '2014-05-28 23:50:30', 'jpg', NULL, 'upload/files/20140528235031DMUhg2PP.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140528235031DMUhg2PP.swf', NULL, NULL, NULL),
('402881e44643813501464389b02a000b', NULL, '1384480985636', NULL, '2014-05-28 23:53:55', 'jpg', NULL, 'upload/files/20140528235355miw0YqCA.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140528235355miw0YqCA.swf', NULL, NULL, NULL),
('402881e44643a1cd014643a510060003', NULL, '19343396_845725', NULL, '2014-05-29 00:23:49', 'jpg', NULL, 'upload/files/20140529002349G6XE4cA2.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140529002349G6XE4cA2.swf', NULL, NULL, NULL),
('402881e44643a1cd014643a55d6f0006', NULL, '1384480985636', NULL, '2014-05-29 00:24:09', 'jpg', NULL, 'upload/files/20140529002409iN0ffyA8.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140529002409iN0ffyA8.swf', NULL, NULL, NULL),
('402881e44695183a014695210478000f', NULL, '6e061d950a7b020896cc3c1162d9f2d3572cc83d', NULL, '2014-06-13 20:08:27', 'jpg', NULL, 'upload/files/20140613200827S3Ft6XCD.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613200827S3Ft6XCD.swf', NULL, NULL, NULL),
('402881e44695183a0146952144320012', NULL, 'd1f3d003big', NULL, '2014-06-13 20:08:43', 'jpg', NULL, 'upload/files/20140613200843IviG7AmD.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613200843IviG7AmD.swf', NULL, NULL, NULL),
('402881e44695183a0146952187bc0015', NULL, '1253192_135516023956_2', NULL, '2014-06-13 20:09:01', 'jpg', NULL, 'upload/files/20140613200901Ojk0MGav.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613200901Ojk0MGav.swf', NULL, NULL, NULL),
('402881e44695183a01469522f1ed0018', NULL, 'd1f3d003big', NULL, '2014-06-13 20:10:33', 'jpg', NULL, 'upload/files/20140613201033crByRcxc.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613201033crByRcxc.swf', NULL, NULL, NULL),
('402881e44695183a01469523431e001b', NULL, '6e061d950a7b020896cc3c1162d9f2d3572cc83d', NULL, '2014-06-13 20:10:54', 'jpg', NULL, 'upload/files/20140613201054g0kYQE93.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613201054g0kYQE93.swf', NULL, NULL, NULL),
('402881e44695183a01469523eb7f001e', NULL, '1253192_135516023956_2', NULL, '2014-06-13 20:11:37', 'jpg', NULL, 'upload/files/20140613201137iG8QIvk5.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613201137iG8QIvk5.swf', NULL, NULL, NULL),
('402881e44695183a0146952422130021', NULL, 'ADIDAS', NULL, '2014-06-13 20:11:51', 'jpg', NULL, 'upload/files/201406132011519hkg5QtC.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/201406132011519hkg5QtC.swf', NULL, NULL, NULL),
('402881e446955c7c014695970aeb0014', NULL, 'duote_07_10-55-22', NULL, '2014-06-13 22:17:22', 'jpg', NULL, 'upload/files/20140613221722NSivMHPF.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613221722NSivMHPF.swf', NULL, NULL, NULL),
('402881e446955c7c01469597394f0016', NULL, 'duote_07_10-55-22', NULL, '2014-06-13 22:17:34', 'jpg', NULL, 'upload/files/20140613221734ZEujKDpc.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613221734ZEujKDpc.swf', NULL, NULL, NULL),
('402881e446955c7c0146959757810018', NULL, 'duote_07_10-55-22', NULL, '2014-06-13 22:17:42', 'jpg', NULL, 'upload/files/20140613221742gfNHuIR8.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613221742gfNHuIR8.swf', NULL, NULL, NULL),
('402881e446955c7c014695977560001a', NULL, 'duote_07_10-55-22', NULL, '2014-06-13 22:17:49', 'jpg', NULL, 'upload/files/20140613221749dsYZWnuE.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613221749dsYZWnuE.swf', NULL, NULL, NULL),
('402881e446955c7c014695a1de0a001d', NULL, '537f1f63dd1c9', NULL, '2014-06-13 22:29:11', 'jpg', NULL, 'upload/files/20140613222911w09Nh7qi.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613222911w09Nh7qi.swf', NULL, NULL, NULL),
('402881e446955c7c014695a38b470020', NULL, '537f1f74d031c', NULL, '2014-06-13 22:31:01', 'jpg', NULL, 'upload/files/2014061322310112yaMHm6.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/2014061322310112yaMHm6.swf', NULL, NULL, NULL),
('402881e446955c7c014695a3cdea0022', NULL, '537f1f86602b3', NULL, '2014-06-13 22:31:18', 'jpg', NULL, 'upload/files/20140613223118fWHj2S0v.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613223118fWHj2S0v.swf', NULL, NULL, NULL),
('402881e446955c7c014695a4383a0024', NULL, '537f1f98d6f42', NULL, '2014-06-13 22:31:45', 'jpg', NULL, 'upload/files/201406132231453VVP7RXR.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/201406132231453VVP7RXR.swf', NULL, NULL, NULL),
('402881e446955c7c014695a4913b0026', NULL, '537f1faf595dd', NULL, '2014-06-13 22:32:08', 'jpg', NULL, 'upload/files/20140613223208gwvPwwpZ.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613223208gwvPwwpZ.swf', NULL, NULL, NULL),
('402881e446955c7c014695a4dda10027', NULL, '537f1faf595dd', NULL, '2014-06-13 22:32:28', 'jpg', NULL, 'upload/files/201406132232281L92gsCP.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/201406132232281L92gsCP.swf', NULL, NULL, NULL),
('402881e446955c7c014695a726df0028', NULL, '537f1faf595dd', NULL, '2014-06-13 22:34:58', 'jpg', NULL, 'upload/files/201406132234583cgLyGHg.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/201406132234583cgLyGHg.swf', NULL, NULL, NULL),
('402881e446955c7c014695a7705a002b', NULL, '537f1ca3cd562', NULL, '2014-06-13 22:35:16', 'jpg', NULL, 'upload/files/20140613223516i3wMpi1u.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613223516i3wMpi1u.swf', NULL, NULL, NULL),
('402881e446955c7c014695a7b814002e', NULL, '537f1cb75c597', NULL, '2014-06-13 22:35:35', 'jpg', NULL, 'upload/files/20140613223535gu4iUrA4.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613223535gu4iUrA4.swf', NULL, NULL, NULL),
('402881e446955c7c014695a7ecf10031', NULL, '537f1fc8d750b', NULL, '2014-06-13 22:35:48', 'jpg', NULL, 'upload/files/20140613223548eQq5swwP.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613223548eQq5swwP.swf', NULL, NULL, NULL),
('402881e446955c7c014695a831d70034', NULL, '537f1fdba507f', NULL, '2014-06-13 22:36:06', 'jpg', NULL, 'upload/files/20140613223606Lfh0WaQd.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613223606Lfh0WaQd.swf', NULL, NULL, NULL),
('402881e44695ebe3014695ed3bdc0001', NULL, '2385844_083138053_2', NULL, '2014-06-13 23:51:30', 'jpg', NULL, 'upload/files/20140613235131snYOuQDL.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613235131snYOuQDL.swf', NULL, NULL, NULL),
('402881e44695ebe3014695ed79fa0003', NULL, '1384480985636', NULL, '2014-06-13 23:51:46', 'jpg', NULL, 'upload/files/20140613235146eEgyESpy.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613235146eEgyESpy.swf', NULL, NULL, NULL),
('402881e44695ebe3014695ef476c0005', NULL, '19343396_845725', NULL, '2014-06-13 23:53:45', 'jpg', NULL, 'upload/files/20140613235345vGK3pfjC.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613235345vGK3pfjC.swf', NULL, NULL, NULL),
('402881e44695ebe3014695f2c6280007', NULL, '537f1f63dd1c9', NULL, '2014-06-13 23:57:34', 'jpg', NULL, 'upload/files/201406132357343zuaHgX4.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/201406132357343zuaHgX4.swf', NULL, NULL, NULL),
('402881e44695ebe3014695f3176d0009', NULL, '537f1f86602b3', NULL, '2014-06-13 23:57:54', 'jpg', NULL, 'upload/files/20140613235754hLRC87rF.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613235754hLRC87rF.swf', NULL, NULL, NULL),
('402881e44695ebe3014695f339a7000b', NULL, '537f1f74d031c', NULL, '2014-06-13 23:58:03', 'jpg', NULL, 'upload/files/201406132358039IpFSyet.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/201406132358039IpFSyet.swf', NULL, NULL, NULL),
('402881e44695ebe3014695f3a3b3000d', NULL, '537f1f98d6f42', NULL, '2014-06-13 23:58:30', 'jpg', NULL, 'upload/files/20140613235830M96wj4Lr.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613235830M96wj4Lr.swf', NULL, NULL, NULL),
('402881e44695ebe3014695f3f89f000f', NULL, '537f1faf595dd', NULL, '2014-06-13 23:58:52', 'jpg', NULL, 'upload/files/20140613235852gBTueAWO.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613235852gBTueAWO.swf', NULL, NULL, NULL),
('402881e44695ebe3014695f443990011', NULL, '537f1ca3cd562', NULL, '2014-06-13 23:59:11', 'jpg', NULL, 'upload/files/20140613235911chsAs0Md.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613235911chsAs0Md.swf', NULL, NULL, NULL),
('402881e44695ebe3014695f45e1a0013', NULL, '537f1cb75c597', NULL, '2014-06-13 23:59:18', 'jpg', NULL, 'upload/files/20140613235918OA8vt546.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613235918OA8vt546.swf', NULL, NULL, NULL),
('402881e44695ebe3014695f494290015', NULL, '537f1fc8d750b', NULL, '2014-06-13 23:59:32', 'jpg', NULL, 'upload/files/20140613235932htqZFtCs.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613235932htqZFtCs.swf', NULL, NULL, NULL),
('402881e44695ebe3014695f4d5570017', NULL, '537f1fdba507f', NULL, '2014-06-13 23:59:49', 'jpg', NULL, 'upload/files/20140613235949UuUHp1Bs.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613235949UuUHp1Bs.swf', NULL, NULL, NULL),
('402881e845d1723e0145d18fef940019', NULL, 'svn', NULL, '2014-05-06 20:44:02', 'txt', NULL, 'upload/files/20140506204402BgVrby8Q.txt', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140506204402BgVrby8Q.swf', NULL, NULL, NULL),
('402881e946ddea480146ddf061b50001', NULL, '634490825089531250', NULL, '2014-06-27 23:27:36', 'jpg', NULL, 'upload/files/20140627232736z3SvfVEj.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140627232736z3SvfVEj.swf', NULL, NULL, NULL),
('402881e946ddea480146ddf730350003', NULL, '19300001024098134717639977056', NULL, '2014-06-27 23:35:02', 'jpg', NULL, 'upload/files/20140627233502FEzyc38j.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140627233502FEzyc38j.swf', NULL, NULL, NULL),
('402881e946ddea480146ddf991610005', NULL, '20120823024251636', NULL, '2014-06-27 23:37:38', 'jpg', NULL, 'upload/files/20140627233738xqDsNzfy.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140627233738xqDsNzfy.swf', NULL, NULL, NULL),
('402881e946ddea480146de02f8ba0008', NULL, 'Img305735292', NULL, '2014-06-27 23:47:55', 'jpg', NULL, 'upload/files/20140627234755MS58ckJV.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140627234755MS58ckJV.swf', NULL, NULL, NULL),
('402881e946ddea480146de0522e3000a', NULL, '30_1i$1JxIOB', NULL, '2014-06-27 23:50:17', 'jpg', NULL, 'upload/files/20140627235017KDQfXcBu.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140627235017KDQfXcBu.swf', NULL, NULL, NULL),
('402881e946ddea480146de09f959000e', NULL, 'Img305735292', NULL, '2014-06-27 23:55:34', 'jpg', NULL, 'upload/files/20140627235534VJM1pkx3.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140627235534VJM1pkx3.swf', NULL, NULL, NULL),
('402881e946ddea480146de0f340b0010', NULL, '30_1i$1JxIOB', NULL, '2014-06-28 00:01:16', 'jpg', NULL, 'upload/files/20140628000116OF07rm7E.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140628000116OF07rm7E.swf', NULL, NULL, NULL),
('402881e947015a7001470160f9290001', NULL, '1384480985636', NULL, '2014-07-04 20:37:18', 'jpg', NULL, 'upload/files/201407042037189rPp00ZT.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407042037189rPp00ZT.swf', NULL, NULL, NULL),
('402881e947015a70014701619f490004', NULL, '19343396_845725', NULL, '2014-07-04 20:38:00', 'jpg', NULL, 'upload/files/20140704203800Q6g5eVpd.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140704203800Q6g5eVpd.swf', NULL, NULL, NULL),
('402881e947015a700147016449650007', NULL, '1384480985636', NULL, '2014-07-04 20:40:55', 'jpg', NULL, 'upload/files/20140704204055j06raaJy.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140704204055j06raaJy.swf', NULL, NULL, NULL),
('402881e94701df96014701eb22d30006', NULL, '1384480985636', NULL, '2014-07-04 23:08:12', 'jpg', NULL, 'upload/files/201407042308121vLOUuSc.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407042308121vLOUuSc.swf', NULL, NULL, NULL),
('402881e94701df96014701f3f7160007', NULL, '634490825089531250', NULL, '2014-07-04 23:17:51', 'jpg', NULL, 'upload/files/20140704231751jgyEMUFt.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140704231751jgyEMUFt.swf', NULL, NULL, NULL),
('402881e94701df960147020b82d1000d', NULL, '1384480985636', NULL, '2014-07-04 23:43:34', 'jpg', NULL, 'upload/files/20140704234334Vhfk9mYp.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140704234334Vhfk9mYp.swf', NULL, NULL, NULL),
('402881e9470273d20147028adf830019', NULL, '634490825089531250', NULL, '2014-07-05 02:02:41', 'jpg', NULL, 'upload/files/201407050202416ZCRAJjr.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407050202416ZCRAJjr.swf', NULL, NULL, NULL),
('402881e9470273d20147028afde6001a', NULL, '634490825089531250', NULL, '2014-07-05 02:02:49', 'jpg', NULL, 'upload/files/201407050202490ByJscnc.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407050202490ByJscnc.swf', NULL, NULL, NULL),
('402881e94702c764014702ceee2e0004', NULL, '19343396_845725', NULL, '2014-07-05 03:17:01', 'jpg', NULL, 'upload/files/20140705031701QWDPG07Q.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140705031701QWDPG07Q.swf', NULL, NULL, NULL),
('402881e9487dd36401487df2c4830002', NULL, 'OnlineCoding在线开发衍生插件式开发专题', NULL, '2014-09-16 18:12:15', 'pdf', NULL, 'template/cms/default/images/20140916181215VjjAK1d2.pdf', 'org.jeecgframework.web.system.pojo.base.TSDocument', NULL, NULL, NULL, NULL),
('402881ea4cf000a0014cf6176eb50001', NULL, 'bb2', NULL, '2015-04-26 22:17:53', 'jpg', NULL, 'upload/files/20150426221753MakZHMGC.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20150426221753MakZHMGC.swf', NULL, NULL, NULL),
('402889ed472e852301472eaee6f80009', NULL, '1348502748_9205', NULL, '2014-07-13 15:45:19', 'gif', NULL, 'upload/files/20140713154520vkFUZy23.gif', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713154520vkFUZy23.swf', NULL, NULL, NULL),
('402889ed472e852301472eb0270b000d', NULL, '1348502732_4991', NULL, '2014-07-13 15:46:42', 'gif', NULL, 'upload/files/20140713154642E71rUQGZ.gif', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713154642E71rUQGZ.swf', NULL, NULL, NULL),
('402889ed472ec2a801472ec3997c0001', NULL, '1348502772_8826', NULL, '2014-07-13 16:07:56', 'gif', NULL, 'upload/files/20140713160756wTrr5Zn3.gif', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713160756wTrr5Zn3.swf', NULL, NULL, NULL),
('402889ed472ee23401472ee59ccf0001', NULL, '13840528444553', NULL, '2014-07-13 16:45:05', 'png', NULL, 'upload/files/20140713164505QAtOSSSm.png', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713164505QAtOSSSm.swf', NULL, NULL, NULL),
('402889f346dc66c30146dc7c11630001', NULL, '1348502732_4991', NULL, '2014-06-27 16:40:56', 'gif', NULL, 'upload/files/20140627164056wwWqB80c.gif', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140627164056wwWqB80c.swf', NULL, NULL, NULL),
('402889f346dc66c30146dc7ccb410005', NULL, '13840528444553', NULL, '2014-06-27 16:41:44', 'png', NULL, 'upload/files/20140627164144bzcSvQNs.png', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140627164144bzcSvQNs.swf', NULL, NULL, NULL),
('402889f346dc66c30146dc7cf66b0008', NULL, '1348502748_9205', NULL, '2014-06-27 16:41:55', 'gif', NULL, 'upload/files/20140627164155hUT3hMVJ.gif', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140627164155hUT3hMVJ.swf', NULL, NULL, NULL),
('402889f346dc8a220146dc933f720007', NULL, 'fdfb6e9cb6103298f5497760962ebbf7', NULL, '2014-06-27 17:06:15', 'png', NULL, 'upload/files/20140627170616I8PtmI3X.png', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140627170616I8PtmI3X.swf', NULL, NULL, NULL),
('402889f64747048401474709372d0009', NULL, 'LOGO-副本副本', NULL, '2014-07-18 09:14:52', 'jpg', NULL, 'upload/files/20140718091452MW70kigU.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718091452MW70kigU.swf', NULL, NULL, NULL),
('402889f6474704840147470a1ca7000e', NULL, 'Desktop', NULL, '2014-07-18 09:15:50', 'zip', NULL, 'upload/files/20140718091550rbnPw893.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718091550rbnPw893.swf', NULL, NULL, NULL),
('402889f6474704840147470d48ab000f', NULL, 'LOGO-副本副本', NULL, '2014-07-18 09:19:18', 'jpg', NULL, 'upload/files/20140718091918Vmd5RP48.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718091918Vmd5RP48.swf', NULL, NULL, NULL),
('402889f6474704840147470d62570012', NULL, 'Desktop', NULL, '2014-07-18 09:19:25', 'zip', NULL, 'upload/files/20140718091925pEgAued6.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718091925pEgAued6.swf', NULL, NULL, NULL),
('402889f6474704840147470e7b920014', NULL, 'LOGO-副本副本', NULL, '2014-07-18 09:20:37', 'jpg', NULL, 'upload/files/20140718092037mgTjUY0W.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718092037mgTjUY0W.swf', NULL, NULL, NULL),
('402889f64747048401474710097e0017', NULL, 'Desktop', NULL, '2014-07-18 09:22:19', 'zip', NULL, 'upload/files/20140718092219HhQXuKxn.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718092219HhQXuKxn.swf', NULL, NULL, NULL),
('402889f647470484014747108feb001a', NULL, 'LOGO-副本副本', NULL, '2014-07-18 09:22:53', 'jpg', NULL, 'upload/files/20140718092253Hk6Q64Rz.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718092253Hk6Q64Rz.swf', NULL, NULL, NULL),
('402889f647470484014747129c15001d', NULL, 'Desktop', NULL, '2014-07-18 09:25:07', 'zip', NULL, 'upload/files/20140718092507XT4r9A7J.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718092507XT4r9A7J.swf', NULL, NULL, NULL),
('402889f647470484014747133201001f', NULL, 'LOGO-副本副本', NULL, '2014-07-18 09:25:46', 'jpg', NULL, 'upload/files/201407180925466IUsX7FW.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407180925466IUsX7FW.swf', NULL, NULL, NULL),
('402889f647470484014747137f230022', NULL, 'Desktop', NULL, '2014-07-18 09:26:05', 'zip', NULL, 'upload/files/20140718092605f3N8z6h7.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718092605f3N8z6h7.swf', NULL, NULL, NULL),
('402889f64747182f01474718ed750001', NULL, 'LOGO', NULL, '2014-07-18 09:32:01', 'jpg', NULL, 'upload/files/20140718093201bbpEq64r.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718093201bbpEq64r.swf', NULL, NULL, NULL),
('402889f64747182f01474719193e0004', NULL, 'Desktop', NULL, '2014-07-18 09:32:12', 'zip', NULL, 'upload/files/20140718093212D3R2wWX8.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718093212D3R2wWX8.swf', NULL, NULL, NULL),
('402889f64747182f01474719c42b0007', NULL, 'Desktop', NULL, '2014-07-18 09:32:56', 'zip', NULL, 'upload/files/201407180932564NiTCHsL.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407180932564NiTCHsL.swf', NULL, NULL, NULL),
('402889f64747182f01474720ef4c000c', NULL, 'LOGO-副本副本', NULL, '2014-07-18 09:40:46', 'jpg', NULL, 'upload/files/20140718094046tpfYNITQ.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718094046tpfYNITQ.swf', NULL, NULL, NULL),
('402889f64747182f014747211b11000f', NULL, 'Desktop', NULL, '2014-07-18 09:40:57', 'zip', NULL, 'upload/files/2014071809405739bzRcEb.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/2014071809405739bzRcEb.swf', NULL, NULL, NULL),
('402889f6474722ad01474723d3400001', NULL, 'LOGO-副本副本', NULL, '2014-07-18 09:43:55', 'jpg', NULL, 'upload/files/20140718094355twCIOKEZ.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718094355twCIOKEZ.swf', NULL, NULL, NULL),
('402889f6474722ad01474723f78e0004', NULL, 'Desktop', NULL, '2014-07-18 09:44:05', 'zip', NULL, 'upload/files/201407180944059hUL3euv.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407180944059hUL3euv.swf', NULL, NULL, NULL),
('402889f6474722ad014747248d0f0007', NULL, 'LOGO-副本副本', NULL, '2014-07-18 09:44:43', 'jpg', NULL, 'upload/files/20140718094443ye4QrEVf.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718094443ye4QrEVf.swf', NULL, NULL, NULL),
('402889f6474722ad01474724bdc2000a', NULL, 'Desktop', NULL, '2014-07-18 09:44:56', 'zip', NULL, 'upload/files/20140718094456XgxaVLOr.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718094456XgxaVLOr.swf', NULL, NULL, NULL),
('402889f847666ae40147666df6eb0002', NULL, 'jeecg_scott', NULL, '2014-07-24 11:33:08', 'jpg', NULL, 'upload/files/20140724113308R9yRv2hj.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140724113308R9yRv2hj.swf', NULL, NULL, NULL),
('402889f847666ae40147666e16ff0003', NULL, 'jeecg_scott', NULL, '2014-07-24 11:33:16', 'jpg', NULL, 'upload/files/201407241133168ezfMs40.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407241133168ezfMs40.swf', NULL, NULL, NULL),
('402889f847666ae40147671e80cf0017', NULL, 'LOGO', NULL, '2014-07-24 14:45:58', 'jpg', NULL, 'upload/files/20140724144558XmkQL4Zs.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140724144558XmkQL4Zs.swf', NULL, NULL, NULL),
('402889f847666ae401476729806f0018', NULL, 'LOGO', NULL, '2014-07-24 14:57:58', 'jpg', NULL, 'upload/files/20140724145758jWIbQ6sv.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140724145758jWIbQ6sv.swf', NULL, NULL, NULL),
('402889f847666ae401476729c6df001b', NULL, 'default', NULL, '2014-07-24 14:58:16', 'zip', NULL, 'upload/files/20140724145816LX1bxIBf.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140724145816LX1bxIBf.swf', NULL, NULL, NULL),
('402889f847666ae401476730b187001e', NULL, 'LOGO', NULL, '2014-07-24 15:05:50', 'jpg', NULL, 'upload/files/20140724150550qiXF3fMC.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140724150550qiXF3fMC.swf', NULL, NULL, NULL),
('402889f847666ae401476730f1240021', NULL, 'root', NULL, '2014-07-24 15:06:06', 'zip', NULL, 'upload/files/20140724150606bwWmIb9y.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140724150606bwWmIb9y.swf', NULL, NULL, NULL),
('402889f84767413b0147674352d30001', NULL, 'jeecg_scott', NULL, '2014-07-24 15:26:11', 'jpg', NULL, 'upload/files/20140724152611YCkPnNNe.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140724152611YCkPnNNe.swf', NULL, NULL, NULL),
('402889f8477ad29d01477ad8e51b0004', NULL, 'default', NULL, '2014-07-28 10:42:20', 'zip', NULL, 'upload/files/20140728104220s9ne9Xg1.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728104220s9ne9Xg1.swf', NULL, NULL, NULL),
('402889f8477b0c1f01477b0e31e30003', NULL, 'LOGO', NULL, '2014-07-28 11:40:33', 'jpg', NULL, 'upload/files/20140728114033QsfvsemU.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728114033QsfvsemU.swf', NULL, NULL, NULL),
('402889f8477b0c1f01477b0e44790006', NULL, '12', NULL, '2014-07-28 11:40:38', 'zip', NULL, 'upload/files/20140728114038qnWchMMc.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728114038qnWchMMc.swf', NULL, NULL, NULL),
('402889f8477b5b5b01477b5cb2c40002', NULL, '12', NULL, '2014-07-28 13:06:18', 'zip', NULL, 'upload/files/20140728130618DtPUFGuA.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728130618DtPUFGuA.swf', NULL, NULL, NULL),
('402889f8477b5b5b01477b5cc3e50003', NULL, 'LOGO', NULL, '2014-07-28 13:06:22', 'jpg', NULL, 'upload/files/20140728130622IwHTMQ8A.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728130622IwHTMQ8A.swf', NULL, NULL, NULL),
('402889f8477b5b5b01477b5d02730006', NULL, '12', NULL, '2014-07-28 13:06:38', 'zip', NULL, 'upload/files/20140728130638snqMiJ14.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728130638snqMiJ14.swf', NULL, NULL, NULL),
('402889f8477b5b5b01477b5ef0a90009', NULL, 'LOGO', NULL, '2014-07-28 13:08:45', 'jpg', NULL, 'upload/files/20140728130845H1ns0FfD.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728130845H1ns0FfD.swf', NULL, NULL, NULL),
('402889f8477b5b5b01477b5efd31000c', NULL, '12', NULL, '2014-07-28 13:08:48', 'zip', NULL, 'upload/files/20140728130848mCc0YxYQ.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728130848mCc0YxYQ.swf', NULL, NULL, NULL),
('402889f8477b681801477b69179c0002', NULL, 'LOGO', NULL, '2014-07-28 13:19:50', 'jpg', NULL, 'upload/files/20140728131950wN5iFSPb.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728131950wN5iFSPb.swf', NULL, NULL, NULL),
('402889f8477b681801477b692d7b0005', NULL, 'saas-plugin-web-master-shiro-mybatis', NULL, '2014-07-28 13:19:56', 'zip', NULL, 'upload/files/20140728131956xAYGxZkb.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728131956xAYGxZkb.swf', NULL, NULL, NULL),
('402889f8477b6c5401477b6d39dc0002', NULL, 'LOGO', NULL, '2014-07-28 13:24:21', 'jpg', NULL, 'upload/files/20140728132421aK4DQMYc.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728132421aK4DQMYc.swf', NULL, NULL, NULL),
('402889f8477b6c5401477b6d4ee40005', NULL, '12', NULL, '2014-07-28 13:24:26', 'zip', NULL, 'upload/files/20140728132426Jjjm71ce.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728132426Jjjm71ce.swf', NULL, NULL, NULL),
('402889f8477b6e4e01477b6efba10001', NULL, 'LOGO', NULL, '2014-07-28 13:26:16', 'jpg', NULL, 'upload/files/20140728132616YIujfrwM.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728132616YIujfrwM.swf', NULL, NULL, NULL),
('402889f8477b6e4e01477b6f0ae10004', NULL, '12', NULL, '2014-07-28 13:26:20', 'zip', NULL, 'upload/files/20140728132620zgrSq1Lg.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728132620zgrSq1Lg.swf', NULL, NULL, NULL),
('402889f8477b70aa01477b71e16e0003', NULL, 'LOGO', NULL, '2014-07-28 13:29:26', 'jpg', NULL, 'upload/files/201407281329268P4veRz7.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407281329268P4veRz7.swf', NULL, NULL, NULL),
('402889f8477b70aa01477b71ee4a0006', NULL, '12', NULL, '2014-07-28 13:29:29', 'zip', NULL, 'upload/files/20140728132929AexU7BwG.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728132929AexU7BwG.swf', NULL, NULL, NULL),
('402889f8477b70aa01477b75b3200009', NULL, 'LOGO', NULL, '2014-07-28 13:33:36', 'jpg', NULL, 'upload/files/20140728133336yGqI8ds0.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728133336yGqI8ds0.swf', NULL, NULL, NULL),
('402889f8477b70aa01477b75c54a000c', NULL, '12', NULL, '2014-07-28 13:33:41', 'zip', NULL, 'upload/files/20140728133341NY9jq8uK.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728133341NY9jq8uK.swf', NULL, NULL, NULL),
('402889f8477c283701477c29665c0002', NULL, 'jeecg_scott', NULL, '2014-07-28 16:49:53', 'jpg', NULL, 'upload/files/20140728164953P9e67L9P.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728164953P9e67L9P.swf', NULL, NULL, NULL),
('402889f8477c283701477c298a7e0005', NULL, 'jeewx_default(1)', NULL, '2014-07-28 16:50:03', 'zip', NULL, 'upload/files/20140728165003FePN5O3T.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728165003FePN5O3T.swf', NULL, NULL, NULL),
('402889f8477c283701477c2a71d10007', NULL, 'jeecg_scott', NULL, '2014-07-28 16:51:02', 'jpg', NULL, 'upload/files/20140728165102pX4UL9q5.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728165102pX4UL9q5.swf', NULL, NULL, NULL),
('402889f8477c283701477c2a81de000a', NULL, 'jeewx_default(1)', NULL, '2014-07-28 16:51:06', 'zip', NULL, 'upload/files/20140728165106e4gjNVNS.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728165106e4gjNVNS.swf', NULL, NULL, NULL),
('402889f8477c283701477c2b8bb4000b', NULL, 'LOGO', NULL, '2014-07-28 16:52:14', 'jpg', NULL, 'upload/files/20140728165214sZ5XLBUL.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728165214sZ5XLBUL.swf', NULL, NULL, NULL),
('402889f8477c283701477c2b9bfd000e', NULL, 'jeewx_default(1)', NULL, '2014-07-28 16:52:18', 'zip', NULL, 'upload/files/20140728165218pc1G2SaG.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728165218pc1G2SaG.swf', NULL, NULL, NULL),
('402889f8477c283701477c2e96f50012', NULL, 'jeecg_scott', NULL, '2014-07-28 16:55:33', 'jpg', NULL, 'upload/files/20140728165533cOAxPIj2.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728165533cOAxPIj2.swf', NULL, NULL, NULL),
('402889f8477c283701477c2eb1300015', NULL, 'default', NULL, '2014-07-28 16:55:40', 'zip', NULL, 'upload/files/201407281655408Wv6aztF.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407281655408Wv6aztF.swf', NULL, NULL, NULL),
('402889fb480bc77a01480bda5f580016', NULL, '2501216q581a_434673', NULL, NULL, 'jpg', NULL, 'upload/files/20140825142853yOt63381.jpg', NULL, 'upload/files/20140825142853yOt63381.swf', NULL, NULL, NULL),
('402889fb480bfaf001480c23009e0047', NULL, '13840528444553', NULL, NULL, 'png', NULL, 'upload/files/20140825154813YPMUWsr1.png', NULL, 'upload/files/20140825154813YPMUWsr1.swf', NULL, NULL, NULL),
('402889fb480bfaf001480c23324c004a', NULL, 'LOGO', NULL, NULL, 'jpg', NULL, 'upload/files/20140825154826UrzfBdWq.jpg', NULL, 'upload/files/20140825154826UrzfBdWq.swf', NULL, NULL, NULL),
('4028bc064763571d0147635828440003', NULL, 'LOGO', NULL, '2014-07-23 21:10:27', 'jpg', NULL, 'upload/files/20140723211027iPYMKOfy.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140723211027iPYMKOfy.swf', NULL, NULL, NULL),
('4028d881436d514601436d5214bb0008', NULL, 'JR079839867R90000001000', NULL, NULL, 'doc', NULL, 'JR079839867R90000001000', NULL, 'upload/files/20130719201109hDr31jP1.swf', NULL, NULL, NULL),
('4028d881436d514601436d5214c00009', NULL, 'JEECG平台协议', NULL, NULL, 'docx', NULL, 'JEECG平台协议', NULL, 'upload/files/20130719201156sYHjSFJj.swf', NULL, NULL, NULL),
('4028d881436d514601436d5214c2000a', NULL, '分析JEECG与其他的开源项目的不足和优势', NULL, NULL, 'docx', NULL, '分析JEECG与其他的开源项目的不足和优势', NULL, 'upload/files/20130719201727ZLEX1OSf.swf', NULL, NULL, NULL),
('4028d881436d514601436d5214c4000b', NULL, 'DMS-T3第三方租赁业务接口开发说明', NULL, NULL, 'docx', NULL, 'DMS-T3第三方租赁业务接口开发说明', NULL, 'upload/files/20130719201841LzcgqUek.swf', NULL, NULL, NULL),
('4028d881436d514601436d5214c5000c', NULL, 'SAP-需求说明书-金融服务公司-第三方租赁业务需求V1.7-研发', NULL, NULL, 'doc', NULL, 'SAP-需求说明书-金融服务公司-第三方租赁业务需求V1.7-研发', NULL, 'upload/files/20130719201925mkCrU47P.swf', NULL, NULL, NULL),
('4028d881436d514601436d5214ca000d', NULL, 'JEECG团队开发规范', NULL, NULL, 'txt', NULL, 'JEECG团队开发规范', NULL, 'upload/files/20130724103633fvOTwNSV.swf', NULL, NULL, NULL),
('4028d881436d514601436d5214cb000e', NULL, '第一模板', NULL, NULL, 'doc', NULL, '第一模板', NULL, 'upload/files/20130724104603pHDw4QUT.swf', NULL, NULL, NULL),
('4028d881436d514601436d5214cd000f', NULL, 'github入门使用教程', NULL, NULL, 'doc', NULL, 'github入门使用教程', NULL, 'upload/files/20130704200345EakUH3WB.swf', NULL, NULL, NULL),
('4028d881436d514601436d5214cf0010', NULL, 'github入门使用教程', NULL, NULL, 'doc', NULL, 'github入门使用教程', NULL, 'upload/files/20130704200651IE8wPdZ4.swf', NULL, NULL, NULL),
('4028d881436d514601436d5214d10011', NULL, '（张代浩）-金融服务公司机构岗位职责与任职资格设置表(根据模板填写）', NULL, NULL, 'xlsx', NULL, '（张代浩）-金融服务公司机构岗位职责与任职资格设置表(根据模板填写）', NULL, 'upload/files/20130704201022KhdRW1Gd.swf', NULL, NULL, NULL),
('4028d881436d514601436d5214d30012', NULL, 'EIM201_CN', NULL, NULL, 'pdf', NULL, 'EIM201_CN', NULL, 'upload/files/20130704201046JVAkvvOt.swf', NULL, NULL, NULL),
('4028d881436d514601436d5214d40013', NULL, 'github入门使用教程', NULL, NULL, 'doc', NULL, 'github入门使用教程', NULL, 'upload/files/20130704201116Z8NhEK57.swf', NULL, NULL, NULL),
('4028d881436d514601436d5214d60014', NULL, 'JEECGUI标签库帮助文档v3.2', NULL, NULL, 'pdf', NULL, 'JEECGUI标签库帮助文档v3.2', NULL, 'upload/files/20130704201125DQg8hi2x.swf', NULL, NULL, NULL),
('4028d881472f0d8101472f14e0010002', NULL, '13840528444553', NULL, '2014-07-13 17:36:42', 'png', NULL, 'upload/files/20140713173643LtfDgtJW.png', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713173643LtfDgtJW.swf', NULL, NULL, NULL),
('4028d881472f0d8101472f1ff82a0005', NULL, '2501216q581a_434673', NULL, '2014-07-13 17:48:50', 'jpg', NULL, 'upload/files/201407131748505X4diOvz.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407131748505X4diOvz.swf', NULL, NULL, NULL),
('4028d881472f0d8101472f218b350008', NULL, 'fdfb6e9cb6103298f5497760962ebbf7', NULL, '2014-07-13 17:50:33', 'png', NULL, 'upload/files/20140713175033jbqSMvgC.png', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713175033jbqSMvgC.swf', NULL, NULL, NULL),
('4028d881472f356e01472f3695840002', NULL, 'Penguins', NULL, '2014-07-13 18:13:32', 'jpg', NULL, 'upload/files/20140713181332KAu3isS8.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713181332KAu3isS8.swf', NULL, NULL, NULL),
('4028d881472f356e01472f3f428e0006', NULL, 'Hydrangeas', NULL, '2014-07-13 18:23:00', 'jpg', NULL, 'upload/files/20140713182300VpK2yVH4.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713182300VpK2yVH4.swf', NULL, NULL, NULL),
('4028d881472f356e01472f4256e00007', NULL, 'Hydrangeas', NULL, '2014-07-13 18:26:22', 'jpg', NULL, 'upload/files/201407131826228RgGqLTc.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407131826228RgGqLTc.swf', NULL, NULL, NULL),
('4028d881472f356e01472f42fcc40009', NULL, 'Tulips', NULL, '2014-07-13 18:27:05', 'jpg', NULL, 'upload/files/20140713182705cUaiEj8S.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713182705cUaiEj8S.swf', NULL, NULL, NULL),
('4028d881472f451c01472f481df30001', NULL, 'Koala', NULL, '2014-07-13 18:32:41', 'jpg', NULL, 'upload/files/20140713183241G0MwnKGS.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713183241G0MwnKGS.swf', NULL, NULL, NULL),
('4028d881472f451c01472f4cd0dc0003', NULL, 'Desert', NULL, '2014-07-13 18:37:49', 'jpg', NULL, 'upload/files/20140713183749DFYsvVqm.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713183749DFYsvVqm.swf', NULL, NULL, NULL),
('4028d881472f451c01472f4d0a920004', NULL, 'Jellyfish', NULL, '2014-07-13 18:38:03', 'jpg', NULL, 'upload/files/20140713183803rrJwDiBz.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713183803rrJwDiBz.swf', NULL, NULL, NULL),
('4028d8814734ee0d0147351e604e0001', NULL, '淘学网DB设计', NULL, '2014-07-14 21:44:48', 'xls', NULL, 'upload/files/20140714214448nnhIGNXP.xls', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140714214448nnhIGNXP.swf', NULL, NULL, NULL),
('4028d88147359f51014735a006fc0001', NULL, '1348502732_4991', NULL, '2014-07-15 00:06:25', 'gif', NULL, 'upload/files/20140715000625jz067Iqi.gif', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140715000625jz067Iqi.swf', NULL, NULL, NULL),
('f7a8a3a9487816f80148784e11af00bf', NULL, '手机', NULL, '2014-09-15 15:54:15', 'jpg', NULL, 'upload/files/20140915155415g510v6qF.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140915155415g510v6qF.swf', NULL, NULL, NULL),
('f7a8a3a9487816f80148784f28fb00c9', NULL, 'dianshi', NULL, '2014-09-15 15:55:26', 'jpg', NULL, 'upload/files/20140915155526yZOqHMsv.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140915155526yZOqHMsv.swf', NULL, NULL, NULL),
('f7a8a3a9487816f80148784f773b00cc', NULL, '00caa4894a92ec7e9e3ce1cdd19b7bb1', NULL, '2014-09-15 15:55:46', 'png', NULL, 'upload/files/20140915155546tD1CxcsF.png', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140915155546tD1CxcsF.swf', NULL, NULL, NULL),
('f7a8a3a9487816f801487850306900d4', NULL, 'dianshi', NULL, '2014-09-15 15:56:34', 'jpg', NULL, 'upload/files/20140915155634PKf2xftq.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140915155634PKf2xftq.swf', NULL, NULL, NULL),
('f7a8a3a9487816f8014878562b3b00e5', NULL, 'jiadian', NULL, '2014-09-15 16:03:06', 'jpg', NULL, 'upload/files/20140915160306AB5EsXvL.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140915160306AB5EsXvL.swf', NULL, NULL, NULL),
('f7a8a3a9487816f801487859332c00f2', NULL, '2', NULL, '2014-09-15 16:06:24', 'jpg', NULL, 'upload/files/20140915160624FTLr7Pi1.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140915160624FTLr7Pi1.swf', NULL, NULL, NULL),
('f7a8a3a9487816f80148785b6f3200fa', NULL, '3', NULL, '2014-09-15 16:08:51', 'jpg', NULL, 'upload/files/20140915160851z1Uzudqp.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140915160851z1Uzudqp.swf', NULL, NULL, NULL),
('f7a8a3a9487816f80148785cb6090101', NULL, 'u=4027482876,2363678158&fm=23&gp=0', NULL, '2014-09-15 16:10:14', 'jpg', NULL, 'upload/files/201409151610148RvvnDM4.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201409151610148RvvnDM4.swf', NULL, NULL, NULL),
('f7a8a3a9487816f80148785d46a10103', NULL, '5', NULL, '2014-09-15 16:10:51', 'jpg', NULL, 'upload/files/20140915161051rgZ0xtje.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140915161051rgZ0xtje.swf', NULL, NULL, NULL),
('f7a8a3a9487816f80148786855220136', NULL, 'QQ图片20140528173211', NULL, '2014-09-15 16:22:56', 'jpg', NULL, 'upload/files/20140915162256x5DP3ZUB.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140915162256x5DP3ZUB.swf', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `t_s_base_user`
--

CREATE TABLE IF NOT EXISTS `t_s_base_user` (
  `ID` varchar(32) NOT NULL,
  `activitiSync` smallint(6) DEFAULT NULL,
  `browser` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `realname` varchar(50) DEFAULT NULL,
  `signature` blob,
  `status` smallint(6) DEFAULT NULL,
  `userkey` varchar(200) DEFAULT NULL,
  `username` varchar(10) NOT NULL,
  `departid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_15jh1g4iem1857546ggor42et` (`departid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_s_base_user`
--

INSERT INTO `t_s_base_user` (`ID`, `activitiSync`, `browser`, `password`, `realname`, `signature`, `status`, `userkey`, `username`, `departid`) VALUES
('402880e447d2f1fb0147d2f580d40002', NULL, NULL, 'd8a8af5e643bd5fb', NULL, NULL, 1, NULL, 'scott1', '4028d881436d514601436d5214d70015'),
('402880e447d7243d0147d72ea3eb0002', NULL, NULL, 'a005ce36be9f5672', NULL, NULL, 1, NULL, '1', '4028d881436d514601436d5214d70015'),
('402881e4461f9c6401461fa2e6f50002', NULL, NULL, '4be1dd049390623054515c6d433c4e3c', 'tingfeng', NULL, 1, NULL, 'tingfeng', '4028d881436d514601436d5214d70015'),
('402881e44648134a014648174a45000c', NULL, NULL, 'e0d5cae5376f58ac', 'jeecg测试', NULL, 1, NULL, 'ceshi', '4028d881436d514601436d5214d70015'),
('4028bce447cf8bda0147cf9047090006', NULL, NULL, 'aff3f434005ab82a', NULL, NULL, 1, NULL, '1111', '4028d881436d514601436d5214d70015'),
('4028d881436d514601436d5215ac0043', 1, NULL, 'c44b01947c9e6e3f', '管理员', NULL, 1, NULL, 'admin', '4028d881436d514601436d5214d70015'),
('4028d881436d514601436d5215b20044', 0, NULL, '97c07a884bf272b5', '张代浩', NULL, 1, NULL, 'scott', '4028d881436d514601436d5214f30017'),
('4028d881436d514601436d5215b80045', 0, NULL, 'f2322ec2fb9f40d1', '采购员', NULL, 1, NULL, 'cgy', '4028d881436d514601436d5214d70015'),
('4028d881436d514601436d5215bc0046', 1, NULL, 'a324509dc1a3089a', '采购审批员', NULL, 1, NULL, 'cgspy', '4028d881436d514601436d5214d70015'),
('f7a8a3a9487816f801487817c4fd0001', NULL, NULL, '', NULL, NULL, 1, NULL, '', '4028d881436d514601436d5214d70015'),
('f7a8a3a9487816f801487818b3070006', NULL, NULL, '4bfc5baeb03671b6', '兑奖', NULL, 1, NULL, 'dj', '4028d881436d514601436d5214d70015'),
('f7a8a3a9487816f80148781e4cfc004b', NULL, NULL, '', NULL, NULL, 1, NULL, '', '4028d881436d514601436d5214d70015'),
('f7a8a3a9487816f8014878200b850051', NULL, NULL, '', NULL, NULL, 1, NULL, '', '4028d881436d514601436d5214d70015'),
('f7a8a3a9487816f80148782154be0057', NULL, NULL, '', NULL, NULL, 1, NULL, '', '4028d881436d514601436d5214d70015'),
('f7a8a3a9487816f801487822427a005d', NULL, NULL, '', NULL, NULL, 1, NULL, '', '4028d881436d514601436d5214d70015'),
('f7a8a3a9487816f801487829a7f80076', NULL, NULL, '', NULL, NULL, 1, NULL, '', '4028d881436d514601436d5214d70015'),
('f7a8a3a9487816f80148783b292b008f', NULL, NULL, '', NULL, NULL, 1, NULL, '', '4028d881436d514601436d5214d70015'),
('f7a8a3a9487816f8014878449b6200a8', NULL, NULL, '', NULL, NULL, 1, NULL, '', '4028d881436d514601436d5214d70015'),
('f7a8a3a9487816f801487845f3be00ad', NULL, NULL, '', NULL, NULL, 1, NULL, '', '4028d881436d514601436d5214d70015'),
('f7a8a3a9487816f801487848150800b4', NULL, NULL, '', NULL, NULL, 1, NULL, '', '4028d881436d514601436d5214d70015'),
('f7a8a3a9487816f801487848e4cb00ba', NULL, NULL, '', NULL, NULL, 1, NULL, '', '4028d881436d514601436d5214d70015'),
('f7a8a3a9487816f80148784ef41000c5', NULL, NULL, 'a427579a1e0d1cbea330b2759ac7c5b5', NULL, NULL, 1, NULL, 'ceshi123', '4028d881436d514601436d5214d70015'),
('f7a8a3a9487816f80148784fb74100cf', NULL, NULL, '463408fdf59bb9d9', NULL, NULL, 1, NULL, '123456', '4028d881436d514601436d5214d70015'),
('f7a8a3a9487816f801487852a91a00d7', NULL, NULL, '17e1d92ba37d928c', NULL, NULL, 1, NULL, 'lwljdtx', '4028d881436d514601436d5214d70015'),
('f7a8a3a9487816f801487854854c00dd', NULL, NULL, '8c459e2733844b36', NULL, NULL, 1, NULL, 'kyno', '4028d881436d514601436d5214d70015'),
('f7a8a3a9487816f80148785e9c0f0107', NULL, NULL, '38611a40dc72d28d491e46540572b24a', NULL, NULL, 1, NULL, 'dps12345', '4028d881436d514601436d5214d70015'),
('f7a8a3a9487816f80148786f49a7013f', NULL, NULL, '', NULL, NULL, 1, NULL, '', '4028d881436d514601436d5214d70015'),
('f7a8a3a9487816f80148787496290144', NULL, NULL, '6c6a5ea0fc122ca6', NULL, NULL, 1, NULL, 'qqqq', '4028d881436d514601436d5214d70015'),
('f7a8a3a9487816f80148788795320150', NULL, NULL, '', NULL, NULL, 1, NULL, '', '4028d881436d514601436d5214d70015'),
('f7a8a3a9487816f80148788d22850163', NULL, NULL, 'c379b08e38347144', NULL, NULL, 1, NULL, 'xyytest', '4028d881436d514601436d5214d70015'),
('f7a8a3a9487816f801487898dc3b0172', NULL, NULL, '', NULL, NULL, 1, NULL, '', '4028d881436d514601436d5214d70015'),
('f7a8a3a9487816f80148789a88e10177', NULL, NULL, '', NULL, NULL, 1, NULL, '', '4028d881436d514601436d5214d70015'),
('f7a8a3a9487816f8014878a64db30185', NULL, NULL, '', NULL, NULL, 1, NULL, '', '4028d881436d514601436d5214d70015'),
('f7a8a3a9487816f8014878bc224201a7', NULL, NULL, '', NULL, NULL, 1, NULL, '', '4028d881436d514601436d5214d70015');

-- --------------------------------------------------------

--
-- 表的结构 `t_s_config`
--

CREATE TABLE IF NOT EXISTS `t_s_config` (
  `ID` varchar(32) NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `content` longtext,
  `name` varchar(100) NOT NULL,
  `note` longtext,
  `userid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_m3q8r50ror4fl7fjkvd82tqgn` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `t_s_demo`
--

CREATE TABLE IF NOT EXISTS `t_s_demo` (
  `ID` varchar(32) NOT NULL,
  `democode` longtext,
  `demoorder` smallint(6) DEFAULT NULL,
  `demotitle` varchar(200) DEFAULT NULL,
  `demourl` varchar(200) DEFAULT NULL,
  `demopid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_fni8e3v88wcf2sahhlv57u4nm` (`demopid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_s_demo`
--

INSERT INTO `t_s_demo` (`ID`, `democode`, `demoorder`, `demotitle`, `demourl`, `demopid`) VALUES
('4028d881436d514601436d52186900c4', '<div class="form">\r\n   <label class="Validform_label">\r\n     非空验证：\r\n    </label>\r\n    <input name="demotitle" id="demotitle" datatype="*" errormsg="该字段不为空">\r\n    <span class="Validform_checktip"></span>\r\n   </div>\r\n   <div class="form">\r\n     <label class="Validform_label">\r\n     URL验证：\r\n    </label>\r\n    <input name="demourl" id="demourl" datatype="url" errormsg="必须是URL">\r\n    <span class="Validform_checktip"></span>\r\n   </div>\r\n   <div class="form">\r\n     <label class="Validform_label">\r\n     至少选择2项：\r\n    </label>\r\n    <input name="shoppingsite1" class="rt2" id="shoppingsite21" type="checkbox" value="1" datatype="need2" nullmsg="请选择您的爱好！" />\r\n  \r\n     阅读\r\n  \r\n    <input name="shoppingsite1" class="rt2" id="shoppingsite22" type="checkbox" value="2" />\r\n    \r\n     音乐\r\n  \r\n    <input name="shoppingsite1" class="rt2" id="shoppingsite23" type="checkbox" value="3" />\r\n  \r\n     运动\r\n   \r\n    <span class="Validform_checktip"></span>\r\n   </div>\r\n   <div class="form">\r\n     <label class="Validform_label">\r\n     邮箱：\r\n    </label>\r\n    <input name="demoorder" id="demoorder" datatype="e" errormsg="邮箱非法">\r\n    <span class="Validform_checktip"></span>\r\n   </div>\r\n   <div class="form">\r\n     <label class="Validform_label">\r\n     手机号：\r\n    </label>\r\n    <input name="phone" id="phone" datatype="m" errormsg="手机号非法">\r\n    <span class="Validform_checktip"></span>\r\n   </div>\r\n   <div class="form">\r\n     <label class="Validform_label">\r\n     金额：\r\n    </label>\r\n    <input name="money" id="money" datatype="d" errormsg="金额非法">\r\n    <span class="Validform_checktip"></span>\r\n   </div>\r\n   <div class="form">\r\n     <label class="Validform_label">\r\n     日期：\r\n    </label>\r\n    <input name="date" id="date" class="easyui-datebox">\r\n    <span class="Validform_checktip"></span>\r\n   </div>\r\n   <div class="form">\r\n     <label class="Validform_label">\r\n     时间：\r\n    </label>\r\n    <input name="time" id="time" class="easyui-datetimebox">\r\n    <span class="Validform_checktip"></span>\r\n   </div>', NULL, '表单验证', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `t_s_depart`
--

CREATE TABLE IF NOT EXISTS `t_s_depart` (
  `ID` varchar(32) NOT NULL,
  `departname` varchar(100) NOT NULL,
  `description` longtext,
  `parentdepartid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_knnm3wb0bembwvm0il7tf6686` (`parentdepartid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_s_depart`
--

INSERT INTO `t_s_depart` (`ID`, `departname`, `description`, `parentdepartid`) VALUES
('4028d881436d514601436d5214d70015', '信息部', '12', NULL),
('4028d881436d514601436d5214ef0016', '设计部', NULL, NULL),
('4028d881436d514601436d5214f30017', '研发室', '研发技术难题', '4028d881436d514601436d5214ef0016');

-- --------------------------------------------------------

--
-- 表的结构 `t_s_document`
--

CREATE TABLE IF NOT EXISTS `t_s_document` (
  `documentstate` smallint(6) DEFAULT NULL,
  `documenttitle` varchar(100) DEFAULT NULL,
  `pictureindex` blob,
  `showhome` smallint(6) DEFAULT NULL,
  `id` varchar(32) NOT NULL,
  `typeid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_qr3qlmgkflj35m5ci1xv0vvg3` (`typeid`),
  KEY `FK_f2mc12eu0umghp2i70apmtxjl` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_s_document`
--

INSERT INTO `t_s_document` (`documentstate`, `documenttitle`, `pictureindex`, `showhome`, `id`, `typeid`) VALUES
(NULL, NULL, NULL, NULL, '297e7eb6469a4a8901469a5d96ea000d', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '297e7eb6469a4a8901469a5ebac20010', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '297e7eb6469a9a0f01469a9b59d30001', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '297e7eb6469a9a0f01469a9bc74b0003', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '2c9183404d70b41a014d74171adb0018', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '2c9183404d744024014d74470fab0003', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '2c9183404d74f79b014d792a6d98000a', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '2c9183404d7938da014d793bbc730009', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '2c9183404d7938da014d793de516000d', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '2c9183404d7938da014d793f0ef40011', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402880e6477d04e001477d0a31040002', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402880e6477d04e001477d0a53150005', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402880e6477d04e001477d0dfcd80009', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402880e6477d04e001477d0e143d000a', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402880e6477d04e001477d0e1d31000d', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402880e6477d5c2601477d5d81de0001', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402880e648138dba014813b89b85003c', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402880e648138dba014813b8e1ee0040', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '4028818348fa8bb90148fa905a910001', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '4028818348faa4fa0148faa950de0001', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '4028818348faa4fa0148faad079b0005', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '4028818348fab3080148fab743f40001', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e446394419014639453ce90002', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e4463cc88701463ccef5340001', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e44643207c01464333b1f9000c', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e4464381350146438691940002', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e44643813501464389b02a000b', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e44643a1cd014643a510060003', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e44643a1cd014643a55d6f0006', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e44695183a014695210478000f', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e44695183a0146952144320012', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e44695183a0146952187bc0015', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e44695183a01469522f1ed0018', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e44695183a01469523431e001b', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e44695183a01469523eb7f001e', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e44695183a0146952422130021', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e446955c7c014695970aeb0014', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e446955c7c01469597394f0016', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e446955c7c0146959757810018', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e446955c7c014695977560001a', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e446955c7c014695a1de0a001d', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e446955c7c014695a38b470020', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e446955c7c014695a3cdea0022', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e446955c7c014695a4383a0024', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e446955c7c014695a4913b0026', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e446955c7c014695a4dda10027', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e446955c7c014695a726df0028', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e446955c7c014695a7705a002b', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e446955c7c014695a7b814002e', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e446955c7c014695a7ecf10031', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e446955c7c014695a831d70034', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e44695ebe3014695ed3bdc0001', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e44695ebe3014695ed79fa0003', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e44695ebe3014695ef476c0005', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e44695ebe3014695f2c6280007', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e44695ebe3014695f3176d0009', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e44695ebe3014695f339a7000b', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e44695ebe3014695f3a3b3000d', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e44695ebe3014695f3f89f000f', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e44695ebe3014695f443990011', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e44695ebe3014695f45e1a0013', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e44695ebe3014695f494290015', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e44695ebe3014695f4d5570017', '4028d881436d514601436d5216190053'),
(NULL, '11111', NULL, NULL, '402881e845d1723e0145d18fef940019', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e946ddea480146ddf061b50001', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e946ddea480146ddf730350003', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e946ddea480146ddf991610005', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e946ddea480146de02f8ba0008', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e946ddea480146de0522e3000a', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e946ddea480146de09f959000e', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e946ddea480146de0f340b0010', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e947015a7001470160f9290001', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e947015a70014701619f490004', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e947015a700147016449650007', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e94701df96014701eb22d30006', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e94701df96014701f3f7160007', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e94701df960147020b82d1000d', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e9470273d20147028adf830019', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e9470273d20147028afde6001a', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e94702c764014702ceee2e0004', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881e9487dd36401487df2c4830002', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402881ea4cf000a0014cf6176eb50001', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889ed472e852301472eaee6f80009', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889ed472e852301472eb0270b000d', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889ed472ec2a801472ec3997c0001', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889ed472ee23401472ee59ccf0001', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f346dc66c30146dc7c11630001', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f346dc66c30146dc7ccb410005', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f346dc66c30146dc7cf66b0008', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f346dc8a220146dc933f720007', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f64747048401474709372d0009', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f6474704840147470a1ca7000e', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f6474704840147470d48ab000f', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f6474704840147470d62570012', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f6474704840147470e7b920014', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f64747048401474710097e0017', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f647470484014747108feb001a', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f647470484014747129c15001d', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f647470484014747133201001f', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f647470484014747137f230022', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f64747182f01474718ed750001', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f64747182f01474719193e0004', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f64747182f01474719c42b0007', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f64747182f01474720ef4c000c', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f64747182f014747211b11000f', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f6474722ad01474723d3400001', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f6474722ad01474723f78e0004', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f6474722ad014747248d0f0007', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f6474722ad01474724bdc2000a', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f847666ae40147666df6eb0002', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f847666ae40147666e16ff0003', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f847666ae40147671e80cf0017', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f847666ae401476729806f0018', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f847666ae401476729c6df001b', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f847666ae401476730b187001e', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f847666ae401476730f1240021', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f84767413b0147674352d30001', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f8477ad29d01477ad8e51b0004', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f8477b0c1f01477b0e31e30003', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f8477b0c1f01477b0e44790006', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f8477b5b5b01477b5cb2c40002', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f8477b5b5b01477b5cc3e50003', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f8477b5b5b01477b5d02730006', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f8477b5b5b01477b5ef0a90009', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f8477b5b5b01477b5efd31000c', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f8477b681801477b69179c0002', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f8477b681801477b692d7b0005', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f8477b6c5401477b6d39dc0002', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f8477b6c5401477b6d4ee40005', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f8477b6e4e01477b6efba10001', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f8477b6e4e01477b6f0ae10004', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f8477b70aa01477b71e16e0003', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f8477b70aa01477b71ee4a0006', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f8477b70aa01477b75b3200009', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f8477b70aa01477b75c54a000c', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f8477c283701477c29665c0002', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f8477c283701477c298a7e0005', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f8477c283701477c2a71d10007', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f8477c283701477c2a81de000a', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f8477c283701477c2b8bb4000b', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f8477c283701477c2b9bfd000e', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f8477c283701477c2e96f50012', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '402889f8477c283701477c2eb1300015', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '4028bc064763571d0147635828440003', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '4028d881472f0d8101472f14e0010002', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '4028d881472f0d8101472f1ff82a0005', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '4028d881472f0d8101472f218b350008', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '4028d881472f356e01472f3695840002', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '4028d881472f356e01472f3f428e0006', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '4028d881472f356e01472f4256e00007', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '4028d881472f356e01472f42fcc40009', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '4028d881472f451c01472f481df30001', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '4028d881472f451c01472f4cd0dc0003', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '4028d881472f451c01472f4d0a920004', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '4028d8814734ee0d0147351e604e0001', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, '4028d88147359f51014735a006fc0001', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f80148784e11af00bf', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f80148784f28fb00c9', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f80148784f773b00cc', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f801487850306900d4', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f8014878562b3b00e5', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f801487859332c00f2', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f80148785b6f3200fa', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f80148785cb6090101', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f80148785d46a10103', '4028d881436d514601436d5216190053'),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f80148786855220136', '4028d881436d514601436d5216190053');

-- --------------------------------------------------------

--
-- 表的结构 `t_s_fileno`
--

CREATE TABLE IF NOT EXISTS `t_s_fileno` (
  `ID` varchar(32) NOT NULL,
  `filenobefore` varchar(32) DEFAULT NULL,
  `filenonum` int(11) DEFAULT NULL,
  `filenotype` varchar(32) DEFAULT NULL,
  `filenoYear` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `t_s_function`
--

CREATE TABLE IF NOT EXISTS `t_s_function` (
  `ID` varchar(32) NOT NULL,
  `functioniframe` smallint(6) DEFAULT NULL,
  `functionlevel` smallint(6) DEFAULT NULL,
  `functionname` varchar(50) NOT NULL,
  `functionorder` varchar(255) DEFAULT NULL,
  `functionurl` varchar(100) DEFAULT NULL,
  `parentfunctionid` varchar(32) DEFAULT NULL,
  `iconid` varchar(32) DEFAULT NULL,
  `desk_iconid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_brd7b3keorj8pmxcv8bpahnxp` (`parentfunctionid`),
  KEY `FK_q5tqo3v4ltsp1pehdxd59rccx` (`iconid`),
  KEY `FK_gbdacaoju6d5u53rp4jo4rbs9` (`desk_iconid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_s_function`
--

INSERT INTO `t_s_function` (`ID`, `functioniframe`, `functionlevel`, `functionname`, `functionorder`, `functionurl`, `parentfunctionid`, `iconid`, `desk_iconid`) VALUES
('297e7eb6469a4a8901469a54eff60006', NULL, 1, '文章管理', '3', 'cmsArticleController.do?cmsArticle', '402881e44695183a0146951af2b70004', '4028d881436d514601436d5214b30002', NULL),
('2c9716d547c2f4290147c36c654e0001', NULL, 1, '会员信息', '2', 'weixinVipMemberController.do?weixinVipMember', '402881e5479d04cc01479d0635030001', '4028d881436d514601436d5214b30002', NULL),
('3c3cd1354801b1b5014801b6b0370001', NULL, 0, '微社区', '9', '', NULL, '4028d881436d514601436d5214b30002', NULL),
('3c3cd1354801b1b5014801b768030003', NULL, 1, '微社区设置', '1', 'weixinBbsController.do?addorupdate', '3c3cd1354801b1b5014801b6b0370001', '4028d881436d514601436d5214b30002', NULL),
('3c3cd1354801b1b5014801b7dd490005', NULL, 1, '帖子管理', '2', 'weixinBbsPostController.do?weixinBbsPost', '3c3cd1354801b1b5014801b6b0370001', '4028d881436d514601436d5214b30002', NULL),
('40288088486e8df201486e942f740002', NULL, 0, '微信活动', '1', '', NULL, '4028d881436d514601436d5214b30002', NULL),
('40288088486e8df201486e94f0d00004', NULL, 1, '活动管理', '1', 'wxHuodongController.do?wxHuodong', '40288088486e8df201486e942f740002', '4028d881436d514601436d5214b30002', NULL),
('40288088486e8df201486e95ce330006', NULL, 1, '中奖管理', '2', 'wxZhongjiangController.do?wxZhongjiang', '40288088486e8df201486e942f740002', '4028d881436d514601436d5214b30002', NULL),
('402880e64763f59c014763f70c370001', NULL, 1, '订单管理', '6', 'weixinShopDealController.do?goList', '402881e946f7bcb20146f7c763470001', '4028d881436d514601436d5214b30002', NULL),
('402880e6477d61da01477d71430f001a', NULL, 1, 'JqueryFile示例', '10', 'fileUploadController.do?fileUploadSample', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', NULL),
('402880e6478c6d8201478c71c5460001', NULL, 1, '微相册', '3', 'weixinPhotoAlbumController.do?weixinPhotoAlbum', '4028d881436d514601436d5449330189', '4028d881436d514601436d5214b30002', NULL),
('40288183490a24bb01490a5a28b10018', NULL, 1, ' 奖项设置', '6', 'awardsLevelController.do?awardsLevel', '4028d881436d514601436d5449330189', '4028d881436d514601436d5214b30002', NULL),
('40288183490a24bb01490a5bb790001a', NULL, 1, '奖品设置', '6', 'awardController.do?award', '4028d881436d514601436d5449330189', '4028d881436d514601436d5214b30002', NULL),
('402881e446677b700146677d7b600001', NULL, 1, '业务扩展接口管理', '0', 'weixinExpandconfigController.do?weixinExpandconfig', '4028d881436d514601436d5485af018b', '4028d881436d514601436d5214b30002', NULL),
('402881e44695183a0146951af2b70004', NULL, 0, '微网站', '5', '', NULL, '4028d881436d514601436d5214b30002', NULL),
('402881e44695183a0146951b66050006', NULL, 1, '广告管理', '0', 'adController.do?ad', '402881e44695183a0146951af2b70004', '4028d881436d514601436d5214b30002', NULL),
('402881e44695183a0146951ed79e0008', NULL, 1, '栏目管理', '1', 'cmsMenuController.do?menu', '402881e44695183a0146951af2b70004', '4028d881436d514601436d5214b30002', NULL),
('402881e447a678500147a679e8c30001', NULL, 1, '关注用户管理', '1', 'gzUserInfoYwController.do?list', '4028d881436d514601436d5485af018b', '4028d881436d514601436d5214b30002', NULL),
('402881e447ab60250147ab7211830001', NULL, 1, '用户分组管理', '2', 'groupYwController.do?list', '4028d881436d514601436d5485af018b', '4028d881436d514601436d5214b30002', NULL),
('402881e44807fe29014808037c1c0006', NULL, 1, '优惠劵', '1', 'promotionCouponController.do?promotionCoupon', '402881e5479d04cc01479d0635030001', '4028d881436d514601436d5214b30002', NULL),
('402881e448313d1a0148314004310001', NULL, 1, '调研问卷主题', '1', 'weixinSurveyMainController.do?weixinSurveyMain', '402881e9481f46a801481f506a3c0002', '4028d881436d514601436d5214b30002', NULL),
('402881e545f5dd1a0145f5de9bb60001', NULL, 0, '微消息素材', '2', '', NULL, '4028d881436d514601436d5214b30002', NULL),
('402881e545f5dd1a0145f5f32cf00005', NULL, 1, '消息管理', '1', 'textTemplateController.do?list', '402881e545f5dd1a0145f5de9bb60001', '4028d881436d514601436d5214b30002', NULL),
('402881e545f5f4780145f61198810004', NULL, 1, '素材管理', '2', 'newsTemplateController.do?list', '402881e545f5dd1a0145f5de9bb60001', '4028d881436d514601436d5214b30002', NULL),
('402881e54705f629014705f7d5d40001', NULL, 1, '会员管理', '3', 'weixinShopMemberController.do?weixinShopMember', '402881e946f7bcb20146f7c763470001', '4028d881436d514601436d5214b30002', NULL),
('402881e5470bc37201470bd136b20001', NULL, 1, '购物车管理', '4', 'weixinShopCartController.do?weixinShopCart', '402881e946f7bcb20146f7c763470001', '4028d881436d514601436d5214b30002', NULL),
('402881e5479d04cc01479d0635030001', NULL, 0, '会员卡', '8', '', NULL, '4028d881436d514601436d5214b30002', NULL),
('402881e5479d04cc01479d0675b90003', NULL, 1, '会员卡信息', '1', 'weixinVipInfoController.do?weixinVipInfo', '402881e5479d04cc01479d0635030001', '4028d881436d514601436d5214b30002', NULL),
('402881e547f88af30147f88c187b0001', NULL, 0, '二维码推广', '7', '', NULL, '4028d881436d514601436d5214b30002', NULL),
('402881e547f88af30147f88dac140003', NULL, 1, '二维码场景管理', '1', 'weixinQrcodeSceneController.do?weixinQrcodeScene', '402881e547f88af30147f88c187b0001', '4028d881436d514601436d5214b30002', NULL),
('402881e547f8b88d0147f8ba73c50005', NULL, 1, '二维码管理', '2', 'weixinQrcodeController.do?weixinQrcode', '402881e547f88af30147f88c187b0001', '4028d881436d514601436d5214b30002', NULL),
('402881e547fe87990147fe8c15390004', NULL, 1, '扫描记录查询', '3', 'weixinQrcodeScanRecordController.do?weixinQrcodeScanRecord', '402881e547f88af30147f88c187b0001', '4028d881436d514601436d5214b30002', NULL),
('402881e54808141b0148082494eb001a', NULL, 1, '微投票', '4', 'weixinVoteController.do?weixinVote', '402881e9481f46a801481f506a3c0002', '4028d881436d514601436d5214b30002', NULL),
('402881e647b5bae60147b5bd8b320001', NULL, 1, '接收消息管理', '3', 'receiveTextController.do?list', '4028d881436d514601436d5485af018b', '4028d881436d514601436d5214b30002', NULL),
('402881e647f8d19c0147f8d522ec0001', NULL, 1, '周边管理', '5', 'aroundController.do?around', '4028d881436d514601436d5485af018b', '4028d881436d514601436d5214b30002', NULL),
('402881e8460d7e5301460d81c7a60001', NULL, 1, '关键字管理', '2', 'autoResponseController.do?list', '4028d881436d514601436d52c2fb0181', '4028d881436d514601436d5214b30002', NULL),
('402881e847d4dc160147d4de5f870001', NULL, 1, '微留言', '6', 'weixinLeaveMsgController.do?weixinLeaveMsg', '4028d881436d514601436d5449330189', '4028d881436d514601436d5214b30002', NULL),
('402881e946f7bcb20146f7c763470001', NULL, 0, '微商城', '6', '', NULL, '4028d881436d514601436d5214ba0007', NULL),
('402881e946f7bcb20146f7c8bfc60003', NULL, 1, '商品分类', '1', 'weixinShopCategoryController.do?weixinShopCategory', '402881e946f7bcb20146f7c763470001', '4028d881436d514601436d5214b30002', NULL),
('402881e94701df96014701e5fe2e0001', NULL, 1, '商品信息', '1', 'weixinShopGoodsController.do?weixinShopGoods', '402881e946f7bcb20146f7c763470001', '4028d881436d514601436d5214b30002', NULL),
('402881e9481f46a801481f506a3c0002', NULL, 0, '微调研问卷', '10', '', NULL, '4028d881436d514601436d5214b30002', NULL),
('402881e9481f46a801481f51442a0004', NULL, 1, '调研问卷题目', '2', 'weixinSurveyController.do?weixinSurvey', '402881e9481f46a801481f506a3c0002', '4028d881436d514601436d5214b30002', NULL),
('402881e9481f46a801481f52afb70006', NULL, 1, '调研问卷结果', '3', 'weixinSurveyController.do?weixinSurveyRecord', '402881e9481f46a801481f506a3c0002', '4028d881436d514601436d5214b30002', NULL),
('402889f64747048401474706d2a50001', NULL, 1, '网站信息', '5', 'weixinCmsSiteController.do?weixinCmsSite', '402881e44695183a0146951af2b70004', '4028d881436d514601436d5214b30002', NULL),
('402889f64747048401474707902e0003', NULL, 1, '网站模板', '6', 'weixinCmsStyleController.do?weixinCmsStyle', '402881e44695183a0146951af2b70004', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d5215070018', NULL, 0, 'Online 开发', '11', '', NULL, '4028d881436d514601436d5214ba0007', NULL),
('4028d881436d514601436d52150a0019', NULL, 0, '系统管理', '11', '', NULL, '4028d881436d514601436d5214b80005', NULL),
('4028d881436d514601436d52150b001a', NULL, 0, '统计查询', '3', '', NULL, '4028d881436d514601436d5214ba0007', NULL),
('4028d881436d514601436d52150d001b', NULL, 0, '常用示例', '12', '', NULL, '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d52150f001c', NULL, 0, '系统监控', '11', '', NULL, '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d521513001d', NULL, 1, '用户管理', '5', 'userController.do?user', '4028d881436d514601436d52150a0019', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d521516001e', NULL, 1, '角色管理', '6', 'roleController.do?role', '4028d881436d514601436d52150a0019', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d52151a001f', NULL, 1, '菜单管理', '7', 'functionController.do?function', '4028d881436d514601436d52150a0019', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d52151f0020', NULL, 1, '数据字典', '6', 'systemController.do?typeGroupList', '4028d881436d514601436d52150a0019', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d5215220021', NULL, 1, '图标管理', '18', 'iconController.do?icon', '4028d881436d514601436d52150a0019', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d5215260023', NULL, 1, '部门管理', '22', 'departController.do?depart', '4028d881436d514601436d52150a0019', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d5215290024', NULL, 1, '地域管理', '22', 'territoryController.do?territory', '4028d881436d514601436d52150a0019', '4028d881436d514601436d5214b10001', NULL),
('4028d881436d514601436d52152c0025', NULL, 1, '用户分析', '17', 'logController.do?statisticTabs&isIframe', '4028d881436d514601436d52150b001a', '4028d881436d514601436d5214b10001', NULL),
('4028d881436d514601436d5215300026', NULL, 1, '表单配置', '1', 'cgFormHeadController.do?cgFormHeadList', '4028d881436d514601436d5215070018', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d5215340027', NULL, 1, '动态报表配置', '2', 'cgreportConfigHeadController.do?cgreportConfigHead', '4028d881436d514601436d5215070018', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d5215380028', NULL, 1, '数据监控', '11', 'dataSourceController.do?goDruid&isIframe', '4028d881436d514601436d52150f001c', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d52153b0029', NULL, 1, '系统日志', '21', 'logController.do?log', '4028d881436d514601436d52150f001c', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d521540002a', NULL, 1, '定时任务', '21', 'timeTaskController.do?timeTask', '4028d881436d514601436d52150f001c', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d521545002b', NULL, 1, '表单验证', '1', 'demoController.do?formTabs', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d521549002c', NULL, 1, 'Demo示例', '2', 'jeecgDemoController.do?jeecgDemo', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d52154d002d', NULL, 1, '单表模型', '3', 'jeecgNoteController.do?jeecgNote', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d521552002e', NULL, 1, '一对多模型', '4', 'jeecgOrderMainController.do?jeecgOrderMain', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d521557002f', NULL, 1, 'Excel导入导出', '5', 'courseController.do?course', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d52155a0030', NULL, 1, '上传下载', '6', 'commonController.do?listTurn&turn=system/document/filesList', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d52155f0031', NULL, 1, '无分页列表', '7', 'userNoPageController.do?user', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d5215640032', NULL, 1, 'jdbc示例', '8', 'jeecgJdbcController.do?jeecgJdbc', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d5215670033', NULL, 1, 'SQL分离', '9', 'jeecgJdbcController.do?dictParameter', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d52156b0034', NULL, 1, '字典标签', '10', 'demoController.do?dictSelect', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d52156f0035', NULL, 1, '表单弹出风格', '11', 'demoController.do?demoList', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d5215730036', NULL, 1, '特殊布局', '12', 'demoController.do?demoIframe', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d5215770037', NULL, 1, '单表例子(无Tag)', '13', 'jeecgEasyUIController.do?jeecgEasyUI', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d52157a0038', NULL, 1, '一对多例子(无Tag)', '14', 'jeecgOrderMainNoTagController.do?jeecgOrderMainNoTag', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d52157e0039', NULL, 1, 'HTML编辑器', '15', 'jeecgDemoController.do?ckeditor&isIframe', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d521581003a', NULL, 1, '在线word(IE)', '16', 'webOfficeController.do?webOffice', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d521584003b', NULL, 1, 'WebOffice官方例子', '17', 'webOfficeController.do?webOfficeSample&isIframe', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d521587003c', NULL, 1, '多附件管理', '18', 'tFinanceController.do?tFinance', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d52158a003d', NULL, 1, 'Datagrid手工Html', '19', 'userController.do?userDemo', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d52158f003e', NULL, 1, '物料Bom', '20', 'jeecgMatterBomController.do?goList', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d521593003f', NULL, 1, '报表示例', '21', 'reportDemoController.do?studentStatisticTabs&isIframe', '4028d881436d514601436d52150b001a', '4028d881436d514601436d5214b10001', NULL),
('4028d881436d514601436d5215990040', NULL, 1, 'ckfinder例子', '100', 'jeecgDemoCkfinderController.do?jeecgDemoCkfinder', '4028d881436d514601436d52150d001b', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d52c2fb0181', NULL, 0, '微配置中心', '1', '', NULL, '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d53fee50187', NULL, 0, '发送消息', '11', '', NULL, '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d5449330189', NULL, 0, '微营销', '3', '', NULL, '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d5485af018b', NULL, 0, '高级接口', '4', '', NULL, '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d54b1bf018d', NULL, 0, '统计分析', '11', '', NULL, '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d5618400191', NULL, 1, '关注欢迎语', '01', 'subscribeController.do?list', '4028d881436d514601436d52c2fb0181', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d56555e0193', NULL, 1, '未识别回复语', '02', 'unknownResponseController.do?list', '4028d881436d514601436d52c2fb0181', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d5884be019d', NULL, 1, '自定义菜单', '02', 'menuManagerController.do?list', '4028d881436d514601436d52c2fb0181', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d58ff5e01a1', NULL, 1, '群发消息', '01', '', '4028d881436d514601436d53fee50187', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d592bef01a3', NULL, 1, '单发消息', '02', '', '4028d881436d514601436d53fee50187', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d59d6d901a7', NULL, 1, '微信抽奖活动', '02', 'huodongController.do?list&type=1', '4028d881436d514601436d5449330189', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d5a18e601a9', NULL, 1, '数据统计', '01', '', '4028d881436d514601436d54b1bf018d', '4028d881436d514601436d5214b30002', NULL),
('4028d881436d514601436d5af95501b1', NULL, 1, '公众帐号管理', '10', 'weixinAccountController.do?weixinAccount', '4028d881436d514601436d52c2fb0181', '4028d881436d514601436d5214b30002', NULL),
('f7a8a3a9487816f801487836b363007d', NULL, 0, '竞选投票PK', '10', '', NULL, '4028d881436d514601436d5214b30002', NULL),
('f7a8a3a9487816f801487836e83e007f', NULL, 1, '用户信息管理', '1', 'weixinVotePKSignUserinfoController.do?weixinVotePKSignUserinfo', 'f7a8a3a9487816f801487836b363007d', '4028d881436d514601436d5214b30002', NULL),
('f7a8a3a9487816f80148783723340081', NULL, 1, '投票结果查询', '2', 'weixinVotePKRecordController.do?weixinVotePKRecord', 'f7a8a3a9487816f801487836b363007d', '4028d881436d514601436d5214b30002', NULL),
('f7a8a3a9487816f8014878375c830083', NULL, 1, '参数配置', '3', 'weixinVotePKConfigController.do?weixinVotePKConfig', 'f7a8a3a9487816f801487836b363007d', '4028d881436d514601436d5214b30002', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `t_s_icon`
--

CREATE TABLE IF NOT EXISTS `t_s_icon` (
  `ID` varchar(32) NOT NULL,
  `extend` varchar(255) DEFAULT NULL,
  `iconclas` varchar(200) DEFAULT NULL,
  `content` blob,
  `name` varchar(100) NOT NULL,
  `path` longtext,
  `type` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_s_icon`
--

INSERT INTO `t_s_icon` (`ID`, `extend`, `iconclas`, `content`, `name`, `path`, `type`) VALUES
('4028d881436d514601436d5214650000', 'png', 'back', NULL, '返回', 'plug-in/accordion/images/back.png', 1),
('4028d881436d514601436d5214b10001', 'png', 'pie', NULL, '饼图', 'plug-in/accordion/images/pie.png', 1),
('4028d881436d514601436d5214b30002', 'png', 'pictures', NULL, '图片', 'plug-in/accordion/images/pictures.png', 1),
('4028d881436d514601436d5214b40003', 'png', 'pencil', NULL, '笔', 'plug-in/accordion/images/pencil.png', 1),
('4028d881436d514601436d5214b50004', 'png', 'map', NULL, '地图', 'plug-in/accordion/images/map.png', 1),
('4028d881436d514601436d5214b80005', 'png', 'group_add', NULL, '组', 'plug-in/accordion/images/group_add.png', 1),
('4028d881436d514601436d5214b90006', 'png', 'calculator', NULL, '计算器', 'plug-in/accordion/images/calculator.png', 1),
('4028d881436d514601436d5214ba0007', 'png', 'folder', NULL, '文件夹', 'plug-in/accordion/images/folder.png', 1);

-- --------------------------------------------------------

--
-- 表的结构 `t_s_log`
--

CREATE TABLE IF NOT EXISTS `t_s_log` (
  `ID` varchar(32) NOT NULL,
  `broswer` varchar(100) DEFAULT NULL,
  `logcontent` longtext NOT NULL,
  `loglevel` smallint(6) DEFAULT NULL,
  `note` longtext,
  `operatetime` datetime NOT NULL,
  `operatetype` smallint(6) DEFAULT NULL,
  `userid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_oe64k4852uylhyc5a00rfwtay` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_s_log`
--

INSERT INTO `t_s_log` (`ID`, `broswer`, `logcontent`, `loglevel`, `note`, `operatetime`, `operatetype`, `userid`) VALUES
('297e7eb6469a4a8901469a4b008b0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '169.254.254.54', '2014-06-14 20:12:25', 1, '4028d881436d514601436d5215ac0043'),
('297e7eb6469a4a8901469a4b9c400001', 'Chrome', '权限: 微大转盘被更新成功', 5, '169.254.254.54', '2014-06-14 20:13:04', 1, '4028d881436d514601436d5215ac0043'),
('297e7eb6469a4a8901469a4c0c810002', 'Chrome', '权限: 微信刮刮乐被更新成功', 5, '169.254.254.54', '2014-06-14 20:13:33', 1, '4028d881436d514601436d5215ac0043'),
('297e7eb6469a4a8901469a4c1d6a0003', 'Chrome', '用户admin已退出', 2, '169.254.254.54', '2014-06-14 20:13:38', 1, '4028d881436d514601436d5215ac0043'),
('297e7eb6469a4a8901469a4c6e2f0004', 'Chrome', '用户: admin[信息部]登录成功', 1, '169.254.254.54', '2014-06-14 20:13:58', 1, '4028d881436d514601436d5215ac0043'),
('297e7eb6469a4a8901469a4ebff20005', 'Chrome', '权限: 广告管理被更新成功', 5, '169.254.254.54', '2014-06-14 20:16:30', 1, '4028d881436d514601436d5215ac0043'),
('297e7eb6469a4a8901469a54f0740007', 'Chrome', '权限: 信息管理被添加成功', 3, '169.254.254.54', '2014-06-14 20:23:16', 1, '4028d881436d514601436d5215ac0043'),
('297e7eb6469a4a8901469a5596b80009', 'Chrome', '用户admin已退出', 2, '169.254.254.54', '2014-06-14 20:23:58', 1, '4028d881436d514601436d5215ac0043'),
('297e7eb6469a4a8901469a55a8fa000a', 'Chrome', '用户: admin[信息部]登录成功', 1, '169.254.254.54', '2014-06-14 20:24:03', 1, '4028d881436d514601436d5215ac0043'),
('297e7eb6469a4a8901469a562832000b', 'Chrome', '用户admin已退出', 2, '169.254.254.54', '2014-06-14 20:24:36', 1, '4028d881436d514601436d5215ac0043'),
('297e7eb6469a4a8901469a59947b000c', 'Chrome', '用户: admin[信息部]登录成功', 1, '169.254.254.54', '2014-06-14 20:28:20', 1, '4028d881436d514601436d5215ac0043'),
('297e7eb6469a4a8901469a5e5939000f', 'Chrome', '信息添加成功', 3, '169.254.254.54', '2014-06-14 20:33:32', 1, '4028d881436d514601436d5215ac0043'),
('297e7eb6469a4a8901469a5ef9c80012', 'Chrome', '信息添加成功', 3, '169.254.254.54', '2014-06-14 20:34:14', 1, '4028d881436d514601436d5215ac0043'),
('297e7eb6469a5fcc01469a60c51e0001', 'Chrome', '用户: admin[信息部]登录成功', 1, '169.254.254.54', '2014-06-14 20:36:11', 1, '4028d881436d514601436d5215ac0043'),
('297e7eb6469a5fcc01469a6229a40002', 'Chrome', '用户: admin[信息部]登录成功', 1, '169.254.254.54', '2014-06-14 20:37:42', 1, '4028d881436d514601436d5215ac0043'),
('297e7eb6469a728901469a7315830000', 'Chrome', '用户: admin[信息部]登录成功', 1, '169.254.254.54', '2014-06-14 20:56:11', 1, '4028d881436d514601436d5215ac0043'),
('297e7eb6469a9a0f01469a9a79210000', 'Chrome', '用户: admin[信息部]登录成功', 1, '169.254.254.54', '2014-06-14 21:39:13', 1, '4028d881436d514601436d5215ac0043'),
('297e7eb6469a9a0f01469a9b5fe10002', 'Chrome', '信息更新成功', 5, '169.254.254.54', '2014-06-14 21:40:12', 1, '4028d881436d514601436d5215ac0043'),
('297e7eb6469a9a0f01469a9bcd080004', 'Chrome', '信息更新成功', 5, '169.254.254.54', '2014-06-14 21:40:40', 1, '4028d881436d514601436d5215ac0043'),
('297e7eb6469ad01a01469ad0915d0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '169.254.254.54', '2014-06-14 22:38:18', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d5fbb46014d5fbffa8a0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '172.17.1.154', '2015-05-17 10:42:06', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d5fd051014d5fd0e54f0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '172.17.1.154', '2015-05-17 11:00:35', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d5fd051014d5fd49ec30005', 'Chrome', '修改关文本模板成功！', 5, '172.17.1.154', '2015-05-17 11:04:39', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d5fd051014d5fd535b60009', 'Chrome', '同步菜单信息数据成功！', 4, '172.17.1.154', '2015-05-17 11:05:18', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d5fd901014d5fdc606e0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '172.17.1.154', '2015-05-17 11:13:07', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d65976a6c002c', 'Firefox', '用户: admin[信息部]登录成功', 1, '172.17.1.154', '2015-05-18 13:55:31', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d659c22d9002d', 'Firefox', '删除信息数据成功！', 4, '172.17.1.154', '2015-05-18 14:00:40', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d659c2f44002e', 'Firefox', '删除信息数据成功！', 4, '172.17.1.154', '2015-05-18 14:00:44', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d65a3197c0030', 'Firefox', '修改关文本模板成功！', 5, '172.17.1.154', '2015-05-18 14:08:17', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d65a39ff90031', 'Firefox', '修改关文本模板成功！', 5, '172.17.1.154', '2015-05-18 14:08:51', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d65a3ef5e0032', 'Firefox', '微信公众帐号信息更新成功', 5, '172.17.1.154', '2015-05-18 14:09:12', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d65ac09af0036', 'Firefox', '修改关文本模板成功！', 5, '172.17.1.154', '2015-05-18 14:18:03', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d65adf0d9003a', 'Firefox', '修改关文本模板成功！', 5, '172.17.1.154', '2015-05-18 14:20:07', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d65af0cf9003e', 'Firefox', '修改关文本模板成功！', 5, '172.17.1.154', '2015-05-18 14:21:20', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d65b1e4280042', 'Firefox', '修改关文本模板成功！', 5, '172.17.1.154', '2015-05-18 14:24:26', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d65b357e90046', 'Firefox', '修改关文本模板成功！', 5, '172.17.1.154', '2015-05-18 14:26:01', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d65b5abfe0071', 'Firefox', '用户admin已退出', 2, '172.17.1.154', '2015-05-18 14:28:34', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d65b5ea430072', 'Firefox', '用户: admin[信息部]登录成功', 1, '172.17.1.154', '2015-05-18 14:28:50', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d65e3716a007d', 'Firefox', '用户: admin[信息部]登录成功', 1, '172.17.1.154', '2015-05-18 15:18:34', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d65e6dfab007e', 'Firefox', '更新更多功能>>的菜单信息信息成功！', 5, '172.17.1.154', '2015-05-18 15:22:18', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d65ec3acd007f', 'Firefox', '更新兑奖入口的菜单信息信息成功！', 5, '172.17.1.154', '2015-05-18 15:28:09', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d65ec68f80080', 'Firefox', '更新联系我们的菜单信息信息成功！', 5, '172.17.1.154', '2015-05-18 15:28:21', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d65efa4070082', 'Firefox', '更新竞选投票PK的菜单信息信息成功！', 5, '172.17.1.154', '2015-05-18 15:31:53', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d65f2f7810083', 'Firefox', '更新捷微微信管家的菜单信息信息成功！', 5, '172.17.1.154', '2015-05-18 15:35:31', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d65f9e31d0084', 'Firefox', '删除BPM开发平台菜单信息数据', 4, '172.17.1.154', '2015-05-18 15:43:04', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d65fa19840085', 'Firefox', '同步菜单信息数据失败！错误码为：40027错误信息为：invalid sub button url size', 4, '172.17.1.154', '2015-05-18 15:43:18', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d65fa48ca0086', 'Firefox', '同步菜单信息数据失败！错误码为：40027错误信息为：invalid sub button url size', 4, '172.17.1.154', '2015-05-18 15:43:31', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d65fa7e8c0087', 'Firefox', '更新联系我们的菜单信息信息成功！', 5, '172.17.1.154', '2015-05-18 15:43:44', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d65faa7380088', 'Firefox', '更新微官网的菜单信息信息成功！', 5, '172.17.1.154', '2015-05-18 15:43:55', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d65fac02c0089', 'Firefox', '更新微留言的菜单信息信息成功！', 5, '172.17.1.154', '2015-05-18 15:44:01', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d65fac79f008a', 'Firefox', '同步菜单信息数据成功！', 4, '172.17.1.154', '2015-05-18 15:44:03', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d6600e5e2008b', 'Firefox', '删除高级功能菜单信息数据', 4, '172.17.1.154', '2015-05-18 15:50:44', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d66012012008c', 'Firefox', '更新基础功能的菜单信息信息成功！', 5, '172.17.1.154', '2015-05-18 15:50:59', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d66012861008d', 'Firefox', '同步菜单信息数据成功！', 4, '172.17.1.154', '2015-05-18 15:51:01', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d660444860090', 'Firefox', '同步菜单信息数据成功！', 4, '172.17.1.154', '2015-05-18 15:54:25', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d660559f90094', 'Firefox', '同步菜单信息数据成功！', 4, '172.17.1.154', '2015-05-18 15:55:36', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d6605b2570095', 'Firefox', '同步菜单信息数据成功！', 4, '172.17.1.154', '2015-05-18 15:55:58', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d66087687009a', 'Firefox', '更新营销工具的菜单信息信息成功！', 5, '172.17.1.154', '2015-05-18 15:59:00', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d6608b046009b', 'Firefox', '更新刮刮乐的菜单信息信息成功！', 5, '172.17.1.154', '2015-05-18 15:59:15', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d6608f7aa009c', 'Firefox', '更新微投票的菜单信息信息成功！', 5, '172.17.1.154', '2015-05-18 15:59:33', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d66091ae2009d', 'Firefox', '删除调研问卷菜单信息数据', 4, '172.17.1.154', '2015-05-18 15:59:42', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d66093247009e', 'Firefox', '删除微相册菜单信息数据', 4, '172.17.1.154', '2015-05-18 15:59:48', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d660947ad009f', 'Firefox', '同步菜单信息数据成功！', 4, '172.17.1.154', '2015-05-18 15:59:53', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d660b194100a0', 'Firefox', '同步菜单信息数据成功！', 4, '172.17.1.154', '2015-05-18 16:01:52', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d6612c9f400a8', 'Firefox', '更新联系我们的菜单信息信息成功！', 5, '172.17.1.154', '2015-05-18 16:10:16', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d6612f1c500a9', 'Firefox', '更新关于公司的菜单信息信息成功！', 5, '172.17.1.154', '2015-05-18 16:10:27', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d6613080400aa', 'Firefox', '同步菜单信息数据成功！', 4, '172.17.1.154', '2015-05-18 16:10:32', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d6613b23500ab', 'Firefox', '同步菜单信息数据成功！', 4, '172.17.1.154', '2015-05-18 16:11:16', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d6613dc2e00ac', 'Firefox', '更新联系我们的菜单信息信息成功！', 5, '172.17.1.154', '2015-05-18 16:11:27', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d6613e45000ad', 'Firefox', '同步菜单信息数据成功！', 4, '172.17.1.154', '2015-05-18 16:11:29', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d6616e75800b2', 'Firefox', '更新微官网的菜单信息信息成功！', 5, '172.17.1.154', '2015-05-18 16:14:46', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d661759a300b3', 'Firefox', '更新微官网的菜单信息信息成功！', 5, '172.17.1.154', '2015-05-18 16:15:15', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d6617626b00b4', 'Firefox', '同步菜单信息数据成功！', 4, '172.17.1.154', '2015-05-18 16:15:18', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d661c187d00bd', 'Firefox', '更新关于公司的菜单信息信息成功！', 5, '172.17.1.154', '2015-05-18 16:20:26', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d661c36cc00be', 'Firefox', '更新微留言的菜单信息信息成功！', 5, '172.17.1.154', '2015-05-18 16:20:34', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d663dcc8d00c0', 'Firefox', '用户: admin[信息部]登录成功', 1, '172.17.1.154', '2015-05-18 16:57:15', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d6642001f00c1', 'Firefox', '更新关于公司的菜单信息信息成功！', 5, '172.17.1.154', '2015-05-18 17:01:51', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d66424c0e00c2', 'Firefox', '同步菜单信息数据成功！', 4, '172.17.1.154', '2015-05-18 17:02:10', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d60d054014d6645f53e00c7', 'Firefox', '同步菜单信息数据成功！', 4, '172.17.1.154', '2015-05-18 17:06:10', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d6670ec014d6671a4500003', 'Firefox', '用户: admin[信息部]登录成功', 1, '172.17.1.154', '2015-05-18 17:53:53', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d667395014d69b1462d0005', 'Firefox', '用户: admin[信息部]登录成功', 1, '172.17.1.154', '2015-05-19 09:02:15', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d667395014d69b9bd180006', 'Firefox', '用户: admin[信息部]登录成功', 1, '172.17.1.154', '2015-05-19 09:11:29', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d69d33d014d69de16290000', 'Firefox', '用户: admin[信息部]登录成功', 1, '172.17.1.154', '2015-05-19 09:51:11', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d69f09a014d69f18f1f0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '172.17.1.154', '2015-05-19 10:12:28', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d6a3632014d6a3794430000', 'Firefox', '用户: admin[信息部]登录成功', 1, '172.17.1.154', '2015-05-19 11:28:56', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d6a3b09014d6a4b11b10000', 'Firefox', '用户: admin[信息部]登录成功', 1, '172.17.1.154', '2015-05-19 11:50:14', 1, '4028d881436d514601436d5215ac0043'),
('2c91811a4d6aa2d2014d6aa900fb0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '172.17.1.154', '2015-05-19 13:32:50', 1, '4028d881436d514601436d5215ac0043'),
('2c9182b94d6b74a9014d6b779ebe0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '172.17.2.57', '2015-05-19 17:18:31', 1, '4028d881436d514601436d5215ac0043'),
('2c9182b94d6b83ee014d6b857ccb0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '172.17.2.57', '2015-05-19 17:33:39', 1, '4028d881436d514601436d5215ac0043'),
('2c9182b94d6b887f014d6efe03910001', 'Firefox', '用户: admin[信息部]登录成功', 1, '172.17.2.57', '2015-05-20 09:44:10', 1, '4028d881436d514601436d5215ac0043'),
('2c9182b94d6f67a1014d6f69e5230000', 'Firefox', '用户: admin[信息部]登录成功', 1, '172.17.2.57', '2015-05-20 11:42:00', 1, '4028d881436d514601436d5215ac0043'),
('2c9182b94d6f6ab2014d6f6ca6e70000', 'Firefox', '用户: admin[信息部]登录成功', 1, '172.17.2.57', '2015-05-20 11:45:01', 1, '4028d881436d514601436d5215ac0043'),
('2c9182b94d6f6ab2014d6f6d11a40001', 'Firefox', '更新微留言的菜单信息信息成功！', 5, '172.17.2.57', '2015-05-20 11:45:28', 1, '4028d881436d514601436d5215ac0043'),
('2c9182b94d6f6dbf014d6f6e3d2e0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '172.17.2.57', '2015-05-20 11:46:45', 1, '4028d881436d514601436d5215ac0043'),
('2c9182b94d6f6dbf014d6f6e95540001', 'Firefox', '同步菜单信息数据成功！', 4, '172.17.2.57', '2015-05-20 11:47:07', 1, '4028d881436d514601436d5215ac0043'),
('2c9182b94d6f7062014d6f70c1ba000e', 'Safari', '留言信息添加成功', 3, '172.17.2.57', '2015-05-20 11:49:30', 1, NULL),
('2c9182b94d6f7062014d6f70c1ba000f', 'Safari', '留言信息添加成功', 3, '172.17.2.57', '2015-05-20 11:49:30', 1, NULL),
('2c9182b94d6f7062014d6f70c1ba0010', 'Safari', '留言信息添加成功', 3, '172.17.2.57', '2015-05-20 11:49:30', 1, NULL),
('2c9182b94d6f7062014d6f70c1ba0011', 'Safari', '留言信息添加成功', 3, '172.17.2.57', '2015-05-20 11:49:30', 1, NULL),
('2c9182b94d6f7062014d6f70c1ba0012', 'Safari', '留言信息添加成功', 3, '172.17.2.57', '2015-05-20 11:49:30', 1, NULL),
('2c9182b94d6f7062014d6f70c2080013', 'Safari', '留言信息添加成功', 3, '172.17.2.57', '2015-05-20 11:49:30', 1, NULL),
('2c9182b94d6f7062014d6f70c20e0014', 'Safari', '留言信息添加成功', 3, '172.17.2.57', '2015-05-20 11:49:30', 1, NULL),
('2c9182b94d6f7062014d6f70c2170015', 'Safari', '留言信息添加成功', 3, '172.17.2.57', '2015-05-20 11:49:30', 1, NULL),
('2c9182b94d6f7062014d6f70c2180016', 'Safari', '留言信息添加成功', 3, '172.17.2.57', '2015-05-20 11:49:30', 1, NULL),
('2c9182b94d6f7062014d6f70c26a0017', 'Safari', '留言信息添加成功', 3, '172.17.2.57', '2015-05-20 11:49:30', 1, NULL),
('2c9182b94d6f7062014d6f70c26a0018', 'Safari', '留言信息添加成功', 3, '172.17.2.57', '2015-05-20 11:49:30', 1, NULL),
('2c9182b94d6f7062014d6f70c26c0019', 'Safari', '留言信息添加成功', 3, '172.17.2.57', '2015-05-20 11:49:30', 1, NULL),
('2c9182b94d6f7062014d6f70c26d001a', 'Safari', '留言信息添加成功', 3, '172.17.2.57', '2015-05-20 11:49:30', 1, NULL),
('2c9182b94d6f7062014d6f70c271001b', 'Safari', '留言信息添加成功', 3, '172.17.2.57', '2015-05-20 11:49:30', 1, NULL),
('2c9182b94d6f7062014d6f70c65c001d', 'Safari', '留言信息添加成功', 3, '172.17.2.57', '2015-05-20 11:49:31', 1, NULL),
('2c9182b94d6f7062014d6f70c6c50024', 'Safari', '留言信息添加成功', 3, '172.17.2.57', '2015-05-20 11:49:31', 1, NULL),
('2c9182b94d6f7062014d6f70c6c50025', 'Safari', '留言信息添加成功', 3, '172.17.2.57', '2015-05-20 11:49:31', 1, NULL),
('2c9182b94d6f7062014d6f70c7180026', 'Safari', '留言信息添加成功', 3, '172.17.2.57', '2015-05-20 11:49:31', 1, NULL),
('2c9182b94d6f7062014d6f70c7190027', 'Safari', '留言信息添加成功', 3, '172.17.2.57', '2015-05-20 11:49:31', 1, NULL),
('2c9182b94d6f7062014d6f70c7190028', 'Safari', '留言信息添加成功', 3, '172.17.2.57', '2015-05-20 11:49:31', 1, NULL),
('2c9182b94d6f7062014d6f70c7190029', 'Safari', '留言信息添加成功', 3, '172.17.2.57', '2015-05-20 11:49:31', 1, NULL),
('2c9182b94d6f7062014d6f70c789002b', 'Safari', '留言信息添加成功', 3, '172.17.2.57', '2015-05-20 11:49:31', 1, NULL),
('2c9182b94d6f7062014d6f70c7f4002d', 'Safari', '留言信息添加成功', 3, '172.17.2.57', '2015-05-20 11:49:31', 1, NULL),
('2c9182b94d6f7062014d6f70c8b00032', 'Safari', '留言信息添加成功', 3, '172.17.2.57', '2015-05-20 11:49:31', 1, NULL),
('2c9182b94d6f7062014d6f70c8b40033', 'Safari', '留言信息添加成功', 3, '172.17.2.57', '2015-05-20 11:49:31', 1, NULL),
('2c9182b94d6f7062014d6f70c8b50034', 'Safari', '留言信息添加成功', 3, '172.17.2.57', '2015-05-20 11:49:31', 1, NULL),
('2c9182b94d6f7062014d6f70c8b60035', 'Safari', '留言信息添加成功', 3, '172.17.2.57', '2015-05-20 11:49:31', 1, NULL),
('2c9182b94d6f7062014d6f73daf10037', 'Safari', '留言信息添加成功', 3, '172.17.2.57', '2015-05-20 11:52:53', 1, NULL),
('2c9182b94d6f7062014d6f74220b0039', 'Safari', '留言信息添加成功', 3, '172.17.2.57', '2015-05-20 11:53:11', 1, NULL),
('2c9182b94d6f7062014d6f767852003a', 'Firefox', '用户: admin[信息部]登录成功', 1, '172.17.2.57', '2015-05-20 11:55:44', 1, '4028d881436d514601436d5215ac0043'),
('2c9182b94d6f7cc7014d6fd2114f0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '172.17.2.57', '2015-05-20 13:35:47', 1, '4028d881436d514601436d5215ac0043'),
('2c9182b94d6f7cc7014d7000151c0004', 'Chrome', '用户: admin[信息部]登录成功', 1, '172.17.2.57', '2015-05-20 14:26:03', 1, '4028d881436d514601436d5215ac0043'),
('2c9182b94d6f7cc7014d7000d4e40005', 'Chrome', '微信公众帐号信息更新成功', 5, '172.17.2.57', '2015-05-20 14:26:52', 1, '4028d881436d514601436d5215ac0043'),
('2c9182b94d6f7cc7014d7007fc970007', 'Chrome', '更新公司产品的菜单信息信息成功！', 5, '172.17.2.57', '2015-05-20 14:34:41', 1, '4028d881436d514601436d5215ac0043'),
('2c9182b94d6f7cc7014d700c00260008', 'Chrome', '同步菜单信息数据成功！', 4, '172.17.2.57', '2015-05-20 14:39:04', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d7090ee014d709302180000', 'Chrome', '用户: admin[信息部]登录成功', 1, '172.17.3.192', '2015-05-20 17:06:32', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d7090ee014d70937f1d0001', 'Chrome', '更新关于公司的菜单信息信息成功！', 5, '172.17.3.192', '2015-05-20 17:07:04', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d7090ee014d709389af0002', 'Chrome', '同步菜单信息数据成功！', 4, '172.17.3.192', '2015-05-20 17:07:06', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d7090ee014d7097984e0009', 'Chrome', '同步菜单信息数据成功！', 4, '172.17.3.192', '2015-05-20 17:11:32', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d7090ee014d7097a4d0000a', 'Chrome', '同步菜单信息数据成功！', 4, '172.17.3.192', '2015-05-20 17:11:35', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d70b41a014d70b852af0002', 'Safari', '留言信息添加成功', 3, '172.17.3.192', '2015-05-20 17:47:17', 1, NULL),
('2c9183404d70b41a014d7407e7af0015', 'Firefox', '用户: admin[信息部]登录成功', 1, '172.17.3.192', '2015-05-21 09:13:04', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d70b41a014d7414bf280017', 'Firefox', '更新公司动态的菜单信息信息成功！', 5, '172.17.3.192', '2015-05-21 09:27:06', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d70b41a014d74173e0d0019', 'Firefox', '微信单图消息更新成功', 5, '172.17.3.192', '2015-05-21 09:29:49', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d70b41a014d74179aee001a', 'Firefox', '更新公司动态的菜单信息信息成功！', 5, '172.17.3.192', '2015-05-21 09:30:13', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d70b41a014d7417a462001b', 'Firefox', '同步菜单信息数据成功！', 4, '172.17.3.192', '2015-05-21 09:30:16', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d70b41a014d741e0e78001e', 'Firefox', '修改图文模板成功！', 5, '172.17.3.192', '2015-05-21 09:37:16', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d70b41a014d741e5ee0001f', 'Firefox', '同步菜单信息数据成功！', 4, '172.17.3.192', '2015-05-21 09:37:36', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d70b41a014d742cd5860025', 'Chrome', '用户: admin[信息部]登录成功', 1, '172.17.3.192', '2015-05-21 09:53:24', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d744024014d7444ccda0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '172.17.3.192', '2015-05-21 10:19:35', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d744024014d744730900004', 'Chrome', '微信单图消息更新成功', 5, '172.17.3.192', '2015-05-21 10:22:12', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d744966014d744a851c0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '172.17.3.192', '2015-05-21 10:25:50', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d74599c014d745aab6b0001', 'Chrome', '用户: admin[信息部]登录成功', 1, '172.17.3.192', '2015-05-21 10:43:28', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d74599c014d745b63440002', 'Chrome', '修改图文模板成功！', 5, '172.17.3.192', '2015-05-21 10:44:15', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d74599c014d745ce0a80003', 'Chrome', '更新公司动态的菜单信息信息成功！', 5, '172.17.3.192', '2015-05-21 10:45:53', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d745d85014d745e198c0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '172.17.3.192', '2015-05-21 10:47:13', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d745d85014d745f03190001', 'Chrome', '同步菜单信息数据成功！', 4, '172.17.3.192', '2015-05-21 10:48:13', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d745d85014d74661c4a0003', 'Chrome', '更新公司动态的菜单信息信息成功！', 5, '172.17.3.192', '2015-05-21 10:55:58', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d7466c1014d7467470e0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '172.17.3.192', '2015-05-21 10:57:15', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d7466c1014d7467cd7d0001', 'Chrome', '修改图文模板成功！', 5, '172.17.3.192', '2015-05-21 10:57:49', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d7466c1014d746a151d0002', 'Chrome', '微信单图消息更新成功', 5, '172.17.3.192', '2015-05-21 11:00:18', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d7466c1014d746ab5d00003', 'Chrome', '删除信息数据成功', 4, '172.17.3.192', '2015-05-21 11:00:59', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d7466c1014d746ab5fc0004', 'Chrome', '删除信息数据成功', 4, '172.17.3.192', '2015-05-21 11:01:00', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d7466c1014d746ab61a0005', 'Chrome', '删除信息数据成功', 4, '172.17.3.192', '2015-05-21 11:01:00', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d746b62014d746ea3080000', 'Chrome', '用户: admin[信息部]登录成功', 1, '172.17.3.192', '2015-05-21 11:05:17', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d746b62014d7474bc3a0003', 'Chrome', '更新公司服务的菜单信息信息成功！', 5, '172.17.3.192', '2015-05-21 11:11:56', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d747549014d74762a120000', 'Chrome', '用户: admin[信息部]登录成功', 1, '172.17.3.192', '2015-05-21 11:13:30', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d747549014d747677a80001', 'Chrome', '同步菜单信息数据成功！', 4, '172.17.3.192', '2015-05-21 11:13:50', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d747e5d014d74f4462b0022', 'Chrome', '用户: admin[信息部]登录成功', 1, '172.17.3.192', '2015-05-21 13:31:15', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d74f79b014d755d22ce0002', 'Chrome', '用户: admin[信息部]登录成功', 1, '172.17.3.192', '2015-05-21 15:25:47', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d74f79b014d75e861320003', 'Chrome', '用户: admin[信息部]登录成功', 1, '172.17.3.192', '2015-05-21 17:57:53', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d74f79b014d75ea9ddc0008', 'Safari', '留言信息添加成功', 3, '172.17.3.192', '2015-05-21 18:00:19', 1, NULL),
('2c9183404d74f79b014d7924fc920009', 'Firefox', '用户: admin[信息部]登录成功', 1, '172.17.3.192', '2015-05-22 09:02:56', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d74f79b014d792aad01000c', 'Firefox', '微信单图消息添加成功', 3, '172.17.3.192', '2015-05-22 09:09:09', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d7934b4014d793664a90000', 'Firefox', '用户: admin[信息部]登录成功', 1, '172.17.3.192', '2015-05-22 09:21:57', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d7938da014d793a05aa0006', 'Firefox', '用户: admin[信息部]登录成功', 1, '172.17.3.192', '2015-05-22 09:25:55', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d7938da014d793a42810007', 'Firefox', '微信单图消息删除成功', 4, '172.17.3.192', '2015-05-22 09:26:10', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d7938da014d793beb93000b', 'Firefox', '微信单图消息添加成功', 3, '172.17.3.192', '2015-05-22 09:27:59', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d7938da014d793e3460000f', 'Firefox', '微信单图消息添加成功', 3, '172.17.3.192', '2015-05-22 09:30:29', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d7938da014d793f2abb0012', 'Firefox', '微信单图消息更新成功', 5, '172.17.3.192', '2015-05-22 09:31:32', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d7938da014d793f35360013', 'Firefox', '微信单图消息更新成功', 5, '172.17.3.192', '2015-05-22 09:31:35', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d7940a0014d7941844f0003', 'Firefox', '用户: admin[信息部]登录成功', 1, '172.17.3.192', '2015-05-22 09:34:06', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d944223014d9442c0d00000', 'Firefox', '用户: admin[信息部]登录成功', 1, '172.17.3.192', '2015-05-27 15:25:12', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d944223014d944308c60001', 'Firefox', '同步菜单信息数据成功！', 4, '172.17.3.192', '2015-05-27 15:25:30', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d944223014d9445afbd0004', 'Firefox', '同步菜单信息数据成功！', 4, '172.17.3.192', '2015-05-27 15:28:24', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d944223014d94ac482e0007', 'Firefox', '用户: admin[信息部]登录成功', 1, '172.17.3.192', '2015-05-27 17:20:28', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d944223014d9592bf3f0013', 'Chrome', '用户: admin[信息部]登录成功', 1, '172.17.3.192', '2015-05-27 21:32:11', 1, '4028d881436d514601436d5215ac0043'),
('2c9183404d944223014d9eee50f80017', 'Firefox', '用户: admin[信息部]登录成功', 1, '172.17.3.192', '2015-05-29 17:08:47', 1, '4028d881436d514601436d5215ac0043'),
('2c9183534d702826014d7031a9d70000', 'Firefox', '用户: admin[信息部]登录成功', 1, '172.17.3.211', '2015-05-20 15:20:12', 1, '4028d881436d514601436d5215ac0043'),
('2c9183534d702826014d7033245b0001', 'Chrome', '用户: admin[信息部]登录成功', 1, '172.17.3.211', '2015-05-20 15:21:49', 1, '4028d881436d514601436d5215ac0043'),
('2c9183534d70353e014d7035bd020000', 'Chrome', '用户: admin[信息部]登录成功', 1, '172.17.3.211', '2015-05-20 15:24:39', 1, '4028d881436d514601436d5215ac0043'),
('2c9183534d70353e014d7035fe880001', 'Chrome', '更新关于公司的菜单信息信息成功！', 5, '172.17.3.211', '2015-05-20 15:24:56', 1, '4028d881436d514601436d5215ac0043'),
('2c9183534d70353e014d70360cb60002', 'Chrome', '同步菜单信息数据成功！', 4, '172.17.3.211', '2015-05-20 15:24:59', 1, '4028d881436d514601436d5215ac0043'),
('2c9183534d703aa3014d703d82540009', 'Chrome', '用户: admin[信息部]登录成功', 1, '172.17.3.211', '2015-05-20 15:33:08', 1, '4028d881436d514601436d5215ac0043'),
('2c9183534d703aa3014d703dfa40000a', 'Chrome', '更新关于公司的菜单信息信息成功！', 5, '172.17.3.211', '2015-05-20 15:33:39', 1, '4028d881436d514601436d5215ac0043'),
('2c9183534d704299014d704a38c20000', 'Firefox', '用户: admin[信息部]登录成功', 1, '172.17.3.211', '2015-05-20 15:47:01', 1, '4028d881436d514601436d5215ac0043'),
('2c9183534d704ccf014d7050c2210000', 'Chrome', '用户: admin[信息部]登录成功', 1, '172.17.3.211', '2015-05-20 15:54:10', 1, '4028d881436d514601436d5215ac0043'),
('2c9183534d704ccf014d705150090001', 'Chrome', '更新关于公司的菜单信息信息成功！', 5, '172.17.3.211', '2015-05-20 15:54:46', 1, '4028d881436d514601436d5215ac0043'),
('2c9183534d704ccf014d7051dcb10002', 'Chrome', '更新关于公司的菜单信息信息成功！', 5, '172.17.3.211', '2015-05-20 15:55:22', 1, '4028d881436d514601436d5215ac0043'),
('2c9183534d704ccf014d7051ea0d0003', 'Chrome', '同步菜单信息数据成功！', 4, '172.17.3.211', '2015-05-20 15:55:26', 1, '4028d881436d514601436d5215ac0043'),
('2c9183534d704ccf014d7065dd81000e', 'Chrome', '用户: admin[信息部]登录成功', 1, '172.17.3.211', '2015-05-20 16:17:13', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e343b01486e3739500000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.0.8', '2014-09-13 16:53:05', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e343b01486e3a48330004', 'Firefox', '用户admin已退出', 2, '192.168.0.8', '2014-09-13 16:56:26', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e343b01486e3a69d20005', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.0.8', '2014-09-13 16:56:35', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e343b01486e3f9d55000e', 'Firefox', '创建成功', 3, '192.168.0.8', '2014-09-13 17:02:15', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e343b01486e4063eb000f', 'Firefox', '修改成功', 5, '192.168.0.8', '2014-09-13 17:03:06', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e343b01486e422f960011', 'Firefox', '类型分组: 活动类型被添加成功', 3, '192.168.0.8', '2014-09-13 17:05:04', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e343b01486e42a9370013', 'Firefox', '类型: 结束被添加成功', 3, '192.168.0.8', '2014-09-13 17:05:35', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e343b01486e42d44a0015', 'Firefox', '类型: 活动被添加成功', 3, '192.168.0.8', '2014-09-13 17:05:46', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e343b01486e54ca9e0016', 'Firefox', '修改成功', 5, '192.168.0.8', '2014-09-13 17:25:23', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e343b01486e55edc80017', 'Firefox', '修改成功', 5, '192.168.0.8', '2014-09-13 17:26:38', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e343b01486e5627fa0018', 'Firefox', '修改成功', 5, '192.168.0.8', '2014-09-13 17:26:53', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e6c7101486e6d2ae20000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.0.8', '2014-09-13 17:52:01', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e6c7101486e80ff870014', 'Firefox', '创建成功', 3, '192.168.0.8', '2014-09-13 18:13:40', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e6c7101486e82510a0015', 'Firefox', '删除成功', 4, '192.168.0.8', '2014-09-13 18:15:07', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e6c7101486e8c0ed20016', 'Firefox', '修改成功', 5, '192.168.0.8', '2014-09-13 18:25:45', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e8df201486e8fa5440000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.0.8', '2014-09-13 18:29:40', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e8df201486e8fa70c0001', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.0.8', '2014-09-13 18:29:41', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e8df201486e942fc60003', 'Firefox', '权限: 微信活动被添加成功', 3, '192.168.0.8', '2014-09-13 18:34:38', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e8df201486e94f1170005', 'Firefox', '权限: 活动管理被添加成功', 3, '192.168.0.8', '2014-09-13 18:35:27', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e8df201486e95ce820007', 'Firefox', '权限: 中奖管理被添加成功', 3, '192.168.0.8', '2014-09-13 18:36:24', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e8df201486e961645000b', 'Firefox', '用户admin已退出', 2, '192.168.0.8', '2014-09-13 18:36:42', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e970101486e977ee80000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.0.8', '2014-09-13 18:38:15', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e970101486eaf03330001', 'Firefox', '活动表删除成功', 4, '192.168.0.8', '2014-09-13 19:03:56', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e970101486eaf1ab40002', 'Firefox', '活动表删除成功', 4, '192.168.0.8', '2014-09-13 19:04:02', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e970101486eaf1b030003', 'Firefox', '活动表删除成功', 4, '192.168.0.8', '2014-09-13 19:04:02', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e970101486eafea860004', 'Firefox', '活动表更新成功', 5, '192.168.0.8', '2014-09-13 19:04:55', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e970101486eb1640b0005', 'Firefox', '活动表更新成功', 5, '192.168.0.8', '2014-09-13 19:06:32', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e970101486eb178ad0006', 'Firefox', '活动表更新成功', 5, '192.168.0.8', '2014-09-13 19:06:37', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e970101486eb1bad20007', 'Firefox', '活动表更新成功', 5, '192.168.0.8', '2014-09-13 19:06:54', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e970101486eb403320009', 'Firefox', '活动表添加成功', 3, '192.168.0.8', '2014-09-13 19:09:24', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e970101486eb42a9d000a', 'Firefox', '活动表更新成功', 5, '192.168.0.8', '2014-09-13 19:09:34', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e970101486eb446ee000c', 'Firefox', '活动表添加成功', 3, '192.168.0.8', '2014-09-13 19:09:41', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e970101486eb4b2bd000e', 'Firefox', '活动表添加成功', 3, '192.168.0.8', '2014-09-13 19:10:09', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e970101486eb4d061000f', 'Firefox', '活动表更新成功', 5, '192.168.0.8', '2014-09-13 19:10:16', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e970101486eb4e6e30010', 'Firefox', '活动表删除成功', 4, '192.168.0.8', '2014-09-13 19:10:22', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e970101486eb506a10012', 'Firefox', '活动表添加成功', 3, '192.168.0.8', '2014-09-13 19:10:30', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e970101486eb663f30013', 'Firefox', '活动表删除成功', 4, '192.168.0.8', '2014-09-13 19:11:59', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e970101486eb664400014', 'Firefox', '活动表删除成功', 4, '192.168.0.8', '2014-09-13 19:12:00', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e970101486eb664970015', 'Firefox', '活动表删除成功', 4, '192.168.0.8', '2014-09-13 19:12:00', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e970101486eb9f6160017', 'Firefox', '类型分组: 奖品级别被添加成功', 3, '192.168.0.8', '2014-09-13 19:15:54', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e970101486eba4cec0019', 'Firefox', '类型分组: 兑奖状态被添加成功', 3, '192.168.0.8', '2014-09-13 19:16:16', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e970101486ebc03f8001b', 'Firefox', '类型分组: 社区平台类型被添加成功', 3, '192.168.0.8', '2014-09-13 19:18:08', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e970101486ebc5685001d', 'Firefox', '类型: 小于200被添加成功', 3, '192.168.0.8', '2014-09-13 19:18:29', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e970101486ebc833d001f', 'Firefox', '类型: 大于200被添加成功', 3, '192.168.0.8', '2014-09-13 19:18:41', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e970101486ebcd9350021', 'Firefox', '类型: 未兑奖被添加成功', 3, '192.168.0.8', '2014-09-13 19:19:03', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e970101486ebd1a040023', 'Firefox', '类型: 已兑奖被添加成功', 3, '192.168.0.8', '2014-09-13 19:19:19', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e970101486f1329fc0024', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.0.8', '2014-09-13 20:53:19', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e970101486f14064f0026', 'Firefox', '类型: 微博被添加成功', 3, '192.168.0.8', '2014-09-13 20:54:16', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e970101486f1451990028', 'Firefox', '类型: 贴吧被添加成功', 3, '192.168.0.8', '2014-09-13 20:54:35', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e970101486f14936a002a', 'Firefox', '类型: QQ空间被添加成功', 3, '192.168.0.8', '2014-09-13 20:54:52', 1, '4028d881436d514601436d5215ac0043'),
('40288088486e970101486f14c158002c', 'Firefox', '类型: 微信被添加成功', 3, '192.168.0.8', '2014-09-13 20:55:04', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f3a1b090000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.0.8', '2014-09-13 21:35:52', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f3a1cbd0001', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.0.8', '2014-09-13 21:35:52', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f5bbd880002', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:12:36', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f5bbddb0003', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:12:36', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f5bbe160004', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:12:36', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f5bbe500005', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:12:36', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f5bbe8a0006', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:12:36', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f5bbebc0007', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:12:36', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f5bbef70008', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:12:36', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f5bbf470009', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:12:36', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f5bbf86000a', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:12:36', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f5bbfd7000b', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:12:36', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f5bceeb000c', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:12:40', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f5bcff4000d', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:12:41', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f5bd026000e', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:12:41', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f5bd058000f', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:12:41', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f5bd0920010', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:12:41', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f5bd0c40011', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:12:41', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f5bd1130012', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:12:41', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f611eac0013', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:18:28', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f611ed60014', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:18:28', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f611f000015', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:18:28', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f611f320016', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:18:29', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f611f640017', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:18:29', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f611f950018', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:18:29', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f611fc90019', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:18:29', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f611ffa001a', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:18:29', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f61202c001b', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:18:29', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f612055001c', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:18:29', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f612b23001d', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:18:32', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f612b4d001e', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:18:32', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f612b7f001f', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:18:32', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f612bb20020', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:18:32', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f612be30021', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:18:32', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f612c0d0022', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:18:32', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f612c3f0023', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:18:32', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f612c710024', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:18:32', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f612c9b0025', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:18:32', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f612ccd0026', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:18:32', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f631c350027', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:20:39', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f631c930028', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:20:39', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f631cc50029', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:20:39', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f631cf7002a', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:20:39', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f631d29002b', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:20:39', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f631d5b002c', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:20:39', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f631d8d002d', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:20:39', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f631dbf002e', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:20:39', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f631e23002f', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:20:39', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f631e4d0030', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:20:39', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f6adb260039', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:29:06', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f6adb6f003a', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:29:07', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f6adb99003b', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:29:07', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f6adbcb003c', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:29:07', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f6adbf4003d', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:29:07', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f6adc29003e', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:29:07', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f6adc78003f', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:29:07', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f6adcb20040', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:29:07', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f6e290f0045', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:32:43', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f6e29620046', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:32:43', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f6e299c0047', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:32:43', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f6e29ce0048', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:32:43', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f7042110055', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:35:01', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f7042410056', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:35:01', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f7042780057', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:35:01', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f7042ae0058', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:35:01', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f7042e00059', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:35:01', 1, '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` (`ID`, `broswer`, `logcontent`, `loglevel`, `note`, `operatetime`, `operatetype`, `userid`) VALUES
('40288088486f389501486f704317005a', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:35:01', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f70434c005b', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:35:01', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f704382005c', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:35:01', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f7043bd005d', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:35:01', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f7043f3005e', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:35:01', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f70522f005f', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:35:05', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f7052600060', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:35:05', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f71d90c0065', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:36:45', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f71d9350066', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:36:45', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f71d9680067', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:36:45', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f71d99a0068', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:36:45', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f735767006d', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:38:23', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f735790006e', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:38:23', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f7357ba006f', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:38:23', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f389501486f7357e30070', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 22:38:23', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f85fe01486f86a07a0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.0.8', '2014-09-13 22:59:26', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f85fe01486f88e96e0009', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:01:56', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f85fe01486f88e9a7000a', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:01:56', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f85fe01486f88e9e0000b', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:01:56', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f85fe01486f88ea0a000c', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:01:56', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f85fe01486f88ea67000d', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:01:56', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f85fe01486f88ea99000e', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:01:57', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f85fe01486f88eae1000f', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:01:57', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f85fe01486f88eb1b0010', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:01:57', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486f8b82090000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.0.8', '2014-09-13 23:04:46', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486f8b847e0001', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.0.8', '2014-09-13 23:04:47', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486f90e95b0009', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:10:40', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486f90e98c000a', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:10:41', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486f90e9e0000b', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:10:41', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486f90ea1a000c', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:10:41', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486f90eafa000d', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:10:41', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486f90eb33000e', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:10:41', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486f90eb65000f', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:10:41', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486f92843d0017', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:12:26', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486f9284980018', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:12:26', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486f9284ca0019', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:12:26', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486f9284fc001a', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:12:26', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486f92852e001b', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:12:26', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486f928568001c', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:12:26', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486f92859a001d', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:12:26', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486f9746230022', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:17:37', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486f97467e0023', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:17:38', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486f9746b00024', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:17:38', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486f9746e20025', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:17:38', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486f978644002a', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:17:54', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486f97867c002b', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:17:54', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486f978847002c', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:17:54', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486f978879002d', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:17:54', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486f99743f0032', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:20:00', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486f99746c0033', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:20:00', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486f9974970034', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:20:00', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486f9974c80035', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:20:00', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486f9f9294003a', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:26:41', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486f9f92bd003b', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:26:41', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486f9f92e7003c', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:26:41', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486f9f9321003d', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:26:41', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486fa4196f0042', 'Firefox', '中奖记录更新成功', 5, '192.168.0.8', '2014-09-13 23:31:38', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486fa50e4a0044', 'Firefox', '中奖记录添加成功', 3, '192.168.0.8', '2014-09-13 23:32:41', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486fa51fb30045', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:32:45', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486fa51fdd0046', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:32:45', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486fa520270047', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:32:45', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486fa5205a0048', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:32:45', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486fa5208c0049', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-13 23:32:45', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486fc2c06c004e', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-14 00:05:07', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486fc2c0d7004f', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-14 00:05:07', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486fc2c10b0050', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-14 00:05:07', 1, '4028d881436d514601436d5215ac0043'),
('40288088486f8b1d01486fc2c13c0051', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-14 00:05:07', 1, '4028d881436d514601436d5215ac0043'),
('40288088486fd2df01486fd374560000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.0.8', '2014-09-14 00:23:21', 1, '4028d881436d514601436d5215ac0043'),
('40288088486fd2df01486fd964b40001', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-14 00:29:51', 1, '4028d881436d514601436d5215ac0043'),
('40288088486fd2df01486fdf0c110002', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-14 00:36:01', 1, '4028d881436d514601436d5215ac0043'),
('40288088486fd2df01486fdf0c3a0003', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-14 00:36:01', 1, '4028d881436d514601436d5215ac0043'),
('40288088486fd2df01486fdf0c6c0004', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-14 00:36:01', 1, '4028d881436d514601436d5215ac0043'),
('40288088486fd2df01486fe1545b0009', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-14 00:38:31', 1, '4028d881436d514601436d5215ac0043'),
('40288088486fd2df01486fe1548c000a', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-14 00:38:31', 1, '4028d881436d514601436d5215ac0043'),
('40288088486fd2df01486fe154bf000b', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-14 00:38:31', 1, '4028d881436d514601436d5215ac0043'),
('40288088486fd2df01486fe154f1000c', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-14 00:38:31', 1, '4028d881436d514601436d5215ac0043'),
('40288088486fd2df01486fe241890011', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-14 00:39:31', 1, '4028d881436d514601436d5215ac0043'),
('40288088486fd2df01486fe241bb0012', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-14 00:39:32', 1, '4028d881436d514601436d5215ac0043'),
('40288088486fd2df01486fe241ef0013', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-14 00:39:32', 1, '4028d881436d514601436d5215ac0043'),
('40288088486fd2df01486fe242270014', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-14 00:39:32', 1, '4028d881436d514601436d5215ac0043'),
('40288088486fd2df01486fe346370019', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-14 00:40:38', 1, '4028d881436d514601436d5215ac0043'),
('40288088486fd2df01486fe3466c001a', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-14 00:40:38', 1, '4028d881436d514601436d5215ac0043'),
('40288088486fd2df01486fe346b0001b', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-14 00:40:38', 1, '4028d881436d514601436d5215ac0043'),
('40288088486fd2df01486fe346e9001c', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-14 00:40:38', 1, '4028d881436d514601436d5215ac0043'),
('40288088486fd2df01486fe4c9c20021', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-14 00:42:17', 1, '4028d881436d514601436d5215ac0043'),
('40288088486fd2df01486fe4c9fb0022', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-14 00:42:17', 1, '4028d881436d514601436d5215ac0043'),
('40288088486fd2df01486fe4ca250023', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-14 00:42:18', 1, '4028d881436d514601436d5215ac0043'),
('40288088486fd2df01486fe4ca570024', 'Firefox', '中奖记录删除成功', 4, '192.168.0.8', '2014-09-14 00:42:18', 1, '4028d881436d514601436d5215ac0043'),
('40288088486fd2df01486ffae08b0029', 'Firefox', '活动表更新成功', 5, '192.168.0.8', '2014-09-14 01:06:25', 1, '4028d881436d514601436d5215ac0043'),
('40288088486fd2df01487156f6e0002a', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.0.8', '2014-09-14 07:26:37', 1, '4028d881436d514601436d5215ac0043'),
('40288088487194b301487195ff510000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.0.8', '2014-09-14 08:35:28', 1, '4028d881436d514601436d5215ac0043'),
('4028808848719a190148719a97c60000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.0.8', '2014-09-14 08:40:29', 1, '4028d881436d514601436d5215ac0043'),
('4028808848719a19014871b365a20001', 'Firefox', '活动表更新成功', 5, '192.168.0.8', '2014-09-14 09:07:35', 1, '4028d881436d514601436d5215ac0043'),
('4028808848719a19014871bc2e430002', 'Firefox', '中奖记录更新成功', 5, '192.168.0.8', '2014-09-14 09:17:11', 1, '4028d881436d514601436d5215ac0043'),
('402880a945fef8250145fefbd4c20000', 'MSIE 7.0', '用户: admin[信息部]登录成功', 1, '192.168.0.41', '2014-05-15 16:24:48', 1, '4028d881436d514601436d5215ac0043'),
('402880a945ff058c0145ff05c6fd0000', 'MSIE 7.0', '用户: admin[信息部]登录成功', 1, '192.168.0.41', '2014-05-15 16:35:39', 1, '4028d881436d514601436d5215ac0043'),
('402880a945ff058c0145ff08ca8b0001', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.41', '2014-05-15 16:38:57', 1, '4028d881436d514601436d5215ac0043'),
('402880a945ff058c0145ff0b9bea0002', 'MSIE 9.0', '用户: admin[信息部]登录成功', 1, '192.168.0.41', '2014-05-15 16:42:02', 1, '4028d881436d514601436d5215ac0043'),
('402880e447c05cf00147c05d771f0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.100', '2014-08-10 22:40:56', 1, '4028d881436d514601436d5215ac0043'),
('402880e447cffc4b0147cffd0fd60000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.100', '2014-08-13 23:29:34', 1, '4028d881436d514601436d5215ac0043'),
('402880e447cffc4b0147cffd8f670002', 'Chrome', '用户admin已退出', 2, '192.168.0.100', '2014-08-13 23:30:06', 1, '4028d881436d514601436d5215ac0043'),
('402880e447cffc4b0147cffe56590003', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.100', '2014-08-13 23:30:57', 1, '4028d881436d514601436d5215ac0043'),
('402880e447cffc4b0147cffe83ac0004', 'Chrome', '用户admin已退出', 2, '192.168.0.100', '2014-08-13 23:31:09', 1, '4028d881436d514601436d5215ac0043'),
('402880e447cffc4b0147d00190010005', 'Chrome', '用户: 1111[信息部]登录成功', 1, '192.168.0.100', '2014-08-13 23:34:29', 1, '4028bce447cf8bda0147cf9047090006'),
('402880e447cffc4b0147d00269190008', 'Chrome', '商城地址信息添加成功', 3, '192.168.0.100', '2014-08-13 23:35:24', 1, '4028bce447cf8bda0147cf9047090006'),
('402880e447cffc4b0147d00289100009', 'Chrome', '设定成功', 4, '192.168.0.100', '2014-08-13 23:35:32', 1, '4028bce447cf8bda0147cf9047090006'),
('402880e447cffc4b0147d008ad52000b', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.100', '2014-08-13 23:42:15', 1, '4028d881436d514601436d5215ac0043'),
('402880e447cffc4b0147d008e65c000c', 'Chrome', '更新微活动的菜单信息信息成功！', 5, '192.168.0.100', '2014-08-13 23:42:29', 1, '4028d881436d514601436d5215ac0043'),
('402880e447cffc4b0147d01afa4b000d', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.100', '2014-08-14 00:02:14', 1, '4028d881436d514601436d5215ac0043'),
('402880e447d29bc80147d2b28ddf0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.100', '2014-08-14 12:07:02', 1, '4028d881436d514601436d5215ac0043'),
('402880e447d2f1fb0147d2f2aff60000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.100', '2014-08-14 13:17:05', 1, '4028d881436d514601436d5215ac0043'),
('402880e447d2f1fb0147d2f2dc870001', 'Chrome', '用户admin已退出', 2, '192.168.0.100', '2014-08-14 13:17:17', 1, '4028d881436d514601436d5215ac0043'),
('402880e447d2f1fb0147d2f5827e0004', 'Chrome', '用户: scott1添加成功', 3, '192.168.0.100', '2014-08-14 13:20:10', 1, NULL),
('402880e447d2f1fb0147d2f5efcb0005', 'Chrome', '用户: scott1[信息部]登录成功', 1, '192.168.0.100', '2014-08-14 13:20:38', 1, '402880e447d2f1fb0147d2f580d40002'),
('402880e447d2f1fb0147d2f6af940006', 'Chrome', '用户: scott1[信息部]登录成功', 1, '192.168.0.100', '2014-08-14 13:21:27', 1, '402880e447d2f1fb0147d2f580d40002'),
('402880e447d2f1fb0147d2f89f100009', 'Chrome', '商城地址信息添加成功', 3, '192.168.0.100', '2014-08-14 13:23:34', 1, '402880e447d2f1fb0147d2f580d40002'),
('402880e447d2f1fb0147d2f8b84a000b', 'Chrome', '商城地址信息添加成功', 3, '192.168.0.100', '2014-08-14 13:23:41', 1, '402880e447d2f1fb0147d2f580d40002'),
('402880e447d2f1fb0147d2f8d92d000c', 'Chrome', '设定成功', 4, '192.168.0.100', '2014-08-14 13:23:49', 1, '402880e447d2f1fb0147d2f580d40002'),
('402880e447d314530147d3149c240000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.100', '2014-08-14 13:54:09', 1, '4028d881436d514601436d5215ac0043'),
('402880e447d314530147d314e3ff0001', 'Chrome', '用户admin已退出', 2, '192.168.0.100', '2014-08-14 13:54:27', 1, '4028d881436d514601436d5215ac0043'),
('402880e447d322a90147d32302620000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.100', '2014-08-14 14:09:52', 1, '4028d881436d514601436d5215ac0043'),
('402880e447d322a90147d32379ae0002', 'Chrome', '用户admin已退出', 2, '192.168.0.100', '2014-08-14 14:10:23', 1, '4028d881436d514601436d5215ac0043'),
('402880e447d322a90147d32395b70003', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.100', '2014-08-14 14:10:30', 1, '4028d881436d514601436d5215ac0043'),
('402880e447d7243d0147d72afb4f0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.100', '2014-08-15 08:57:04', 1, '4028d881436d514601436d5215ac0043'),
('402880e447d7243d0147d72b94950001', 'Chrome', '用户admin已退出', 2, '192.168.0.100', '2014-08-15 08:57:43', 1, '4028d881436d514601436d5215ac0043'),
('402880e447d7243d0147d72ea47c0004', 'Chrome', '用户: 1添加成功', 3, '192.168.0.100', '2014-08-15 09:01:03', 1, NULL),
('402880e447d7243d0147d72f33fc0005', 'Chrome', '用户: 1[信息部]登录成功', 1, '192.168.0.100', '2014-08-15 09:01:40', 1, '402880e447d7243d0147d72ea3eb0002'),
('402880e447d7243d0147d7305d250007', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.100', '2014-08-15 09:02:56', 1, '4028d881436d514601436d5215ac0043'),
('402880e447d7243d0147d732a5b30009', 'Chrome', '用户: 1[信息部]登录成功', 1, '192.168.0.100', '2014-08-15 09:05:26', 1, '402880e447d7243d0147d72ea3eb0002'),
('402880e447d7243d0147d732f984000b', 'Chrome', '商城地址信息添加成功', 3, '192.168.0.100', '2014-08-15 09:05:47', 1, '402880e447d7243d0147d72ea3eb0002'),
('402880e447d80c1e0147d80df6570000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.100', '2014-08-15 13:04:59', 1, '4028d881436d514601436d5215ac0043'),
('402880e447df43440147df442a860000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.100', '2014-08-16 22:41:32', 1, '4028d881436d514601436d5215ac0043'),
('402880e447df43440147df44c6a50002', 'Chrome', '操作: 字段控制被添加成功', 3, '192.168.0.100', '2014-08-16 22:42:12', 1, '4028d881436d514601436d5215ac0043'),
('402880e6475e8cc801475e9117020000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-07-22 22:54:32', 1, '4028d881436d514601436d5215ac0043'),
('402880e64763f59c014763f61b110000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-07-24 00:02:58', 1, '4028d881436d514601436d5215ac0043'),
('402880e64763f59c014763f70c870002', 'Firefox', '权限: 订单管理被添加成功', 3, '192.168.0.102', '2014-07-24 00:04:00', 1, '4028d881436d514601436d5215ac0043'),
('402880e64763f59c014763f7dab70004', 'Firefox', '用户admin已退出', 2, '192.168.0.102', '2014-07-24 00:04:53', 1, '4028d881436d514601436d5215ac0043'),
('402880e64763f59c014763f7fa0a0005', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-07-24 00:05:01', 1, '4028d881436d514601436d5215ac0043'),
('402880e6476832b20147683308170000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-07-24 19:48:00', 1, '4028d881436d514601436d5215ac0043'),
('402880e6476832b201476834b5480001', 'Chrome', '用户admin已退出', 2, '192.168.0.102', '2014-07-24 19:49:50', 1, '4028d881436d514601436d5215ac0043'),
('402880e6476832b201476834d0bf0002', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-07-24 19:49:57', 1, '4028d881436d514601436d5215ac0043'),
('402880e647684471014768452cbd0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-07-24 20:07:49', 1, '4028d881436d514601436d5215ac0043'),
('402880e6476844710147684ca6550001', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-07-24 20:15:59', 1, '4028d881436d514601436d5215ac0043'),
('402880e647685ab10147685b063e0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-07-24 20:31:41', 1, '4028d881436d514601436d5215ac0043'),
('402880e647687a270147687a94830000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-07-24 21:06:09', 1, '4028d881436d514601436d5215ac0043'),
('402880e6477d04e001477d0820000000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-07-28 20:53:10', 1, '4028d881436d514601436d5215ac0043'),
('402880e6477d04e001477d09f9a00001', 'Firefox', '微站点模板删除成功', 4, '192.168.0.102', '2014-07-28 20:55:11', 1, '4028d881436d514601436d5215ac0043'),
('402880e6477d04e001477d0a52110004', 'Firefox', '微站点模板添加成功', 3, '192.168.0.102', '2014-07-28 20:55:34', 1, '4028d881436d514601436d5215ac0043'),
('402880e6477d04e001477d0b3b0c0006', 'Firefox', '微站点信息更新成功', 5, '192.168.0.102', '2014-07-28 20:56:33', 1, '4028d881436d514601436d5215ac0043'),
('402880e6477d04e001477d0cb8a50007', 'Firefox', '微站点模板更新成功', 5, '192.168.0.102', '2014-07-28 20:58:11', 1, '4028d881436d514601436d5215ac0043'),
('402880e6477d04e001477d0dc4ca0008', 'Firefox', '微站点模板删除成功', 4, '192.168.0.102', '2014-07-28 20:59:20', 1, '4028d881436d514601436d5215ac0043'),
('402880e6477d04e001477d0e1c9b000c', 'Firefox', '微站点模板添加成功', 3, '192.168.0.102', '2014-07-28 20:59:42', 1, '4028d881436d514601436d5215ac0043'),
('402880e6477d04e001477d0e644b000e', 'Firefox', '微站点信息更新成功', 5, '192.168.0.102', '2014-07-28 21:00:00', 1, '4028d881436d514601436d5215ac0043'),
('402880e6477d04e001477d1254da000f', 'Firefox', '微站点信息更新成功', 5, '192.168.0.102', '2014-07-28 21:04:19', 1, '4028d881436d514601436d5215ac0043'),
('402880e6477d5c2601477d5d11d60000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-07-28 22:25:57', 1, '4028d881436d514601436d5215ac0043'),
('402880e6477d5c2601477d5d8f4f0003', 'Chrome', '信息添加成功', 3, '192.168.0.102', '2014-07-28 22:26:29', 1, '4028d881436d514601436d5215ac0043'),
('402880e6477d5f7601477d5febb70000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-07-28 22:29:04', 1, '4028d881436d514601436d5215ac0043'),
('402880e6477d61da01477d637e370000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-07-28 22:32:58', 1, '4028d881436d514601436d5215ac0043'),
('402880e6477d61da01477d6a70730001', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-07-28 22:40:33', 1, '4028d881436d514601436d5215ac0043'),
('402880e6477d61da01477d6ba9ac0018', 'Firefox', '用户admin已退出', 2, '192.168.0.102', '2014-07-28 22:41:53', 1, '4028d881436d514601436d5215ac0043'),
('402880e6477d61da01477d6bc2680019', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-07-28 22:41:59', 1, '4028d881436d514601436d5215ac0043'),
('402880e6477d61da01477d71437b001b', 'Chrome', '权限: JqueryFile示例被添加成功', 3, '192.168.0.102', '2014-07-28 22:48:00', 1, '4028d881436d514601436d5215ac0043'),
('402880e6477d61da01477d71bbf5001d', 'Chrome', '用户admin已退出', 2, '192.168.0.102', '2014-07-28 22:48:31', 1, '4028d881436d514601436d5215ac0043'),
('402880e6477d61da01477d7248f8001e', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-07-28 22:49:07', 1, '4028d881436d514601436d5215ac0043'),
('402880e6478c6d8201478c6ecb850000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-07-31 20:39:37', 1, '4028d881436d514601436d5215ac0043'),
('402880e6478c6d8201478c71c5a70002', 'Chrome', '权限: 微相册被添加成功', 3, '192.168.0.102', '2014-07-31 20:42:52', 1, '4028d881436d514601436d5215ac0043'),
('402880e6478c6d8201478c7227d20004', 'Chrome', '用户admin已退出', 2, '192.168.0.102', '2014-07-31 20:43:17', 1, '4028d881436d514601436d5215ac0043'),
('402880e6478c6d8201478c7245c40005', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-07-31 20:43:24', 1, '4028d881436d514601436d5215ac0043'),
('402880e6478c6d8201478c72a7350007', 'Chrome', '微相册添加成功', 3, '192.168.0.102', '2014-07-31 20:43:49', 1, '4028d881436d514601436d5215ac0043'),
('402880e6478c6d8201478c72e9510009', 'Chrome', '添加成功', 3, '192.168.0.102', '2014-07-31 20:44:06', 1, '4028d881436d514601436d5215ac0043'),
('402880e6478c6d8201478c738eea000c', 'Chrome', '相片更新成功', 5, '192.168.0.102', '2014-07-31 20:44:49', 1, '4028d881436d514601436d5215ac0043'),
('402880e6478c6d8201478c73abb9000d', 'Chrome', '相片更新成功', 5, '192.168.0.102', '2014-07-31 20:44:56', 1, '4028d881436d514601436d5215ac0043'),
('402880e6478c6d8201478c7454cd000f', 'Chrome', '微相册添加成功', 3, '192.168.0.102', '2014-07-31 20:45:39', 1, '4028d881436d514601436d5215ac0043'),
('402880e6478c6d8201478c74a63f0011', 'Chrome', '添加成功', 3, '192.168.0.102', '2014-07-31 20:46:00', 1, '4028d881436d514601436d5215ac0043'),
('402880e6478d3e0501478d3ea6610000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-08-01 00:26:39', 1, '4028d881436d514601436d5215ac0043'),
('402880e6478d418101478d4232170000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-08-01 00:30:31', 1, '4028d881436d514601436d5215ac0043'),
('402880e6478d48ea01478d4965960000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-08-01 00:38:23', 1, '4028d881436d514601436d5215ac0043'),
('402880e6478d527e01478d52dc8e0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-08-01 00:48:43', 1, '4028d881436d514601436d5215ac0043'),
('402880e6481371c501481372d3fe0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-08-27 01:52:45', 1, '4028d881436d514601436d5215ac0043'),
('402880e648137ad10148137b24420000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-08-27 02:01:50', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba0148138e10520000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-08-27 02:22:30', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba0148139a8cde0002', 'Chrome', '扩展接口管理添加成功', 3, '192.168.0.102', '2014-08-27 02:36:08', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba0148139b0ea20003', 'Chrome', '扩展接口管理更新成功', 5, '192.168.0.102', '2014-08-27 02:36:42', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba0148139b4f200004', 'Chrome', '扩展接口管理更新成功', 5, '192.168.0.102', '2014-08-27 02:36:58', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba0148139c7b730006', 'Chrome', '扩展接口管理添加成功', 3, '192.168.0.102', '2014-08-27 02:38:15', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba0148139d84960008', 'Chrome', '扩展接口管理添加成功', 3, '192.168.0.102', '2014-08-27 02:39:23', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba0148139e31250009', 'Chrome', '更新BPM业务构建平台的菜单信息信息成功！', 5, '192.168.0.102', '2014-08-27 02:40:07', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba0148139e577f000a', 'Chrome', '更新捷微-微信管家的菜单信息信息成功！', 5, '192.168.0.102', '2014-08-27 02:40:17', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813a00345000b', 'Chrome', '修改关文本模板成功！', 5, '192.168.0.102', '2014-08-27 02:42:06', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813a07b63000c', 'Chrome', '修改关文本模板成功！', 5, '192.168.0.102', '2014-08-27 02:42:37', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813a0c10b000d', 'Chrome', '更新BPM业务构建平台的菜单信息信息失败！', 5, '192.168.0.102', '2014-08-27 02:42:55', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813a0dc9d000e', 'Chrome', '更新联系我们的菜单信息信息失败！', 5, '192.168.0.102', '2014-08-27 02:43:02', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813a0fccf000f', 'Chrome', '更新BPM业务构建平台的菜单信息信息失败！', 5, '192.168.0.102', '2014-08-27 02:43:10', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813a135a00010', 'Chrome', '更新公司产品的菜单信息信息成功！', 5, '192.168.0.102', '2014-08-27 02:43:25', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813a1735d0011', 'Chrome', '更新BPM业务构建平台的菜单信息信息失败！', 5, '192.168.0.102', '2014-08-27 02:43:41', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813a25a240012', 'Chrome', '删除JAVA架构培训菜单信息数据', 4, '192.168.0.102', '2014-08-27 02:44:40', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813a2c84a0014', 'Chrome', '添加微投票的信息成功！', 3, '192.168.0.102', '2014-08-27 02:45:08', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813a311680016', 'Chrome', '添加会员卡的信息成功！', 3, '192.168.0.102', '2014-08-27 02:45:27', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813a37a390018', 'Chrome', '添加周边团购的信息成功！', 3, '192.168.0.102', '2014-08-27 02:45:53', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813a3f8100019', 'Chrome', '更新微商城的菜单信息信息成功！', 5, '192.168.0.102', '2014-08-27 02:46:26', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813a433c5001a', 'Chrome', '更新捷微功能的菜单信息信息成功！', 5, '192.168.0.102', '2014-08-27 02:46:41', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813a449be001b', 'Chrome', '更新基础功能的菜单信息信息成功！', 5, '192.168.0.102', '2014-08-27 02:46:46', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813a4f8d8001c', 'Chrome', '更新捷微管家介绍的菜单信息信息失败！', 5, '192.168.0.102', '2014-08-27 02:47:31', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813a54581001d', 'Chrome', '更新捷微-微信管家的菜单信息信息失败！', 5, '192.168.0.102', '2014-08-27 02:47:51', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813a69cf7001f', 'Chrome', '添加微留言的信息成功！', 3, '192.168.0.102', '2014-08-27 02:49:19', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813a764860020', 'Chrome', '用户admin已退出', 2, '192.168.0.102', '2014-08-27 02:50:10', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813a793300021', 'Chrome', '用户: ceshi[信息部]登录成功', 1, '192.168.0.102', '2014-08-27 02:50:22', 1, '402881e44648134a014648174a45000c'),
('402880e648138dba014813a7b5510022', 'Chrome', '用户ceshi已退出', 2, '192.168.0.102', '2014-08-27 02:50:31', 1, '402881e44648134a014648174a45000c'),
('402880e648138dba014813a7defc0023', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-08-27 02:50:41', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813a88cd60027', 'Chrome', '权限: 促销被删除成功', 4, '192.168.0.102', '2014-08-27 02:51:26', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813a8bf950028', 'Chrome', '权限: 二维码推广被更新成功', 5, '192.168.0.102', '2014-08-27 02:51:39', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813a968010029', 'Chrome', '权限: 会员卡被更新成功', 5, '192.168.0.102', '2014-08-27 02:52:22', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813a97b64002a', 'Chrome', '用户admin已退出', 2, '192.168.0.102', '2014-08-27 02:52:27', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813a99503002b', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-08-27 02:52:33', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813aa056d002c', 'Chrome', '用户admin已退出', 2, '192.168.0.102', '2014-08-27 02:53:02', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813aa1eb2002d', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-08-27 02:53:09', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813ab7f21002e', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-08-27 02:54:39', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813abfd680032', 'Chrome', '用户admin已退出', 2, '192.168.0.102', '2014-08-27 02:55:11', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813ac1ac90033', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-08-27 02:55:19', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813acac660034', 'Chrome', '权限: 二维码推广被更新成功', 5, '192.168.0.102', '2014-08-27 02:55:56', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813acd6a00035', 'Chrome', '权限: 会员卡被更新成功', 5, '192.168.0.102', '2014-08-27 02:56:07', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813ad3b96003a', 'Chrome', '用户admin已退出', 2, '192.168.0.102', '2014-08-27 02:56:33', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813ad579e003b', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-08-27 02:56:40', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813b8a290003e', 'Chrome', '商品分类添加成功', 3, '192.168.0.102', '2014-08-27 03:09:00', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813b8b160003f', 'Chrome', '商品分类删除成功', 4, '192.168.0.102', '2014-08-27 03:09:04', 1, '4028d881436d514601436d5215ac0043'),
('402880e648138dba014813babb3c0042', 'Chrome', '微信会员卡和用户关系表更新成功', 5, '192.168.0.102', '2014-08-27 03:11:17', 1, '4028d881436d514601436d5215ac0043'),
('402880e648152c3a0148152cfa430000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-08-27 09:55:42', 1, '4028d881436d514601436d5215ac0043'),
('402880e648152c3a0148153004ab0002', 'Chrome', '权限: 微投票设置被添加成功', 3, '192.168.0.102', '2014-08-27 09:59:01', 1, '4028d881436d514601436d5215ac0043'),
('402880e648152c3a014815305b9e0004', 'Chrome', '用户admin已退出', 2, '192.168.0.102', '2014-08-27 09:59:23', 1, '4028d881436d514601436d5215ac0043'),
('402880e648152c3a01481530bb860005', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-08-27 09:59:48', 1, '4028d881436d514601436d5215ac0043'),
('402880e648152c3a01481533d8f40006', 'Chrome', '权限: 微投票设置被更新成功', 5, '192.168.0.102', '2014-08-27 10:03:12', 1, '4028d881436d514601436d5215ac0043'),
('402880e648152c3a0148153408380007', 'Chrome', '用户admin已退出', 2, '192.168.0.102', '2014-08-27 10:03:24', 1, '4028d881436d514601436d5215ac0043'),
('402880e648152c3a0148153485260008', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-08-27 10:03:56', 1, '4028d881436d514601436d5215ac0043'),
('402880e648152c3a01481537e82f0011', 'Chrome', '微投票添加成功', 3, '192.168.0.102', '2014-08-27 10:07:38', 1, '4028d881436d514601436d5215ac0043'),
('402880e648152c3a0148155a77d00013', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-08-27 10:45:23', 1, '4028d881436d514601436d5215ac0043'),
('402880e6481d7cc201481d7d2ae50000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-08-29 00:40:15', 1, '4028d881436d514601436d5215ac0043'),
('402880e6481d80ce01481d81a6880000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-08-29 00:45:09', 1, '4028d881436d514601436d5215ac0043'),
('402880e6481d80ce01481d834eb40001', 'Chrome', '更新联系我们的菜单信息信息成功！', 5, '192.168.0.102', '2014-08-29 00:46:57', 1, '4028d881436d514601436d5215ac0043'),
('402880e6481d80ce01481d83868a0002', 'Chrome', '同步菜单信息数据成功！', 4, '192.168.0.102', '2014-08-29 00:47:12', 1, '4028d881436d514601436d5215ac0043'),
('402880e64824fe6d01482500fd4a0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-08-30 11:41:34', 1, '4028d881436d514601436d5215ac0043'),
('402880e64824fe6d01482503d59f0001', 'Chrome', '用户: scott1密码重置成功', 5, '192.168.0.102', '2014-08-30 11:44:41', 1, '4028d881436d514601436d5215ac0043'),
('402880e64824fe6d01482503e1cb0002', 'Chrome', '用户admin已退出', 2, '192.168.0.102', '2014-08-30 11:44:44', 1, '4028d881436d514601436d5215ac0043'),
('402880e64824fe6d01482505937f0003', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.102', '2014-08-30 11:46:35', 1, '4028d881436d514601436d5215ac0043'),
('402880eb44ce3b0f0144ce684ba30000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.107', '2014-03-17 12:59:05', 1, '4028d881436d514601436d5215ac0043'),
('402880f3459d14a101459d19f3710000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.115', '2014-04-26 16:14:54', 1, '4028d881436d514601436d5215ac0043'),
('402880f3459d14a101459d1b7a360001', 'Chrome', '用户admin已退出', 2, '192.168.0.115', '2014-04-26 16:16:34', 1, '4028d881436d514601436d5215ac0043'),
('402880f3459d14a101459d1ba61c0002', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.115', '2014-04-26 16:16:46', 1, '4028d881436d514601436d5215ac0043'),
('402880f3459d14a101459d1c5b250003', 'Chrome', '用户admin已退出', 2, '192.168.0.115', '2014-04-26 16:17:32', 1, '4028d881436d514601436d5215ac0043'),
('402880f3459d14a101459d25a4ef0004', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.115', '2014-04-26 16:27:41', 1, '4028d881436d514601436d5215ac0043'),
('402880f3459d14a101459d26ce2c0005', 'Chrome', '用户admin已退出', 2, '192.168.0.115', '2014-04-26 16:28:57', 1, '4028d881436d514601436d5215ac0043'),
('402880f3459d14a101459d26e6870006', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.115', '2014-04-26 16:29:03', 1, '4028d881436d514601436d5215ac0043'),
('402880f3459d14a101459d2dae670007', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.0.115', '2014-04-26 16:36:27', 1, '4028d881436d514601436d5215ac0043'),
('4028818248ca19150148ca1994ab0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.2', '2014-10-01 13:05:47', 1, '4028d881436d514601436d5215ac0043'),
('4028818248ca19150148ca24ac010001', 'Chrome', '修改关文本模板成功！', 5, '192.168.1.2', '2014-10-01 13:17:54', 1, '4028d881436d514601436d5215ac0043'),
('4028818348fa19290148fa1aa9fc0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-10 20:48:44', 1, '4028d881436d514601436d5215ac0043'),
('4028818348fa23290148fa24cf360000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-10 20:59:49', 1, '4028d881436d514601436d5215ac0043'),
('4028818348fa4cf30148fa50e39e0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-10 21:47:58', 1, '4028d881436d514601436d5215ac0043'),
('4028818348fa4cf30148fa5262e00012', 'Chrome', '用户admin已退出', 2, '192.168.1.3', '2014-10-10 21:49:36', 1, '4028d881436d514601436d5215ac0043'),
('4028818348fa4cf30148fa52885a0013', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-10 21:49:45', 1, '4028d881436d514601436d5215ac0043'),
('4028818348fa8bb90148fa8d28950000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-10 22:53:48', 1, '4028d881436d514601436d5215ac0043'),
('4028818348fa9d080148fa9e76a40000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-10 23:12:42', 1, '4028d881436d514601436d5215ac0043'),
('4028818348fa9fe80148faa15db50000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-10 23:15:52', 1, '4028d881436d514601436d5215ac0043'),
('4028818348faa4fa0148faa6a40b0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-10 23:21:38', 1, '4028d881436d514601436d5215ac0043'),
('4028818348faa4fa0148faa9ed6a0002', 'Chrome', '删除信息数据成功！', 4, '192.168.1.3', '2014-10-10 23:25:13', 1, '4028d881436d514601436d5215ac0043'),
('4028818348faa4fa0148faac6de70004', 'Chrome', '修改图文模板成功！', 5, '192.168.1.3', '2014-10-10 23:27:57', 1, '4028d881436d514601436d5215ac0043'),
('4028818348fab3080148fab6edb80000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-10 23:39:25', 1, '4028d881436d514601436d5215ac0043'),
('4028818348fab3080148fab763750003', 'Chrome', '微信单图消息添加成功', 3, '192.168.1.3', '2014-10-10 23:39:55', 1, '4028d881436d514601436d5215ac0043'),
('4028818348fadde00148fae07fc60000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-11 00:24:49', 1, '4028d881436d514601436d5215ac0043'),
('4028818348faea310148faed44120000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-11 00:38:46', 1, '4028d881436d514601436d5215ac0043'),
('4028818348faf4200148faf6563a0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-11 00:48:41', 1, '4028d881436d514601436d5215ac0043'),
('4028818348fb019d0148fb032f5f0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-11 01:02:43', 1, '4028d881436d514601436d5215ac0043'),
('4028818348fb050d0148fb0691b10000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-11 01:06:24', 1, '4028d881436d514601436d5215ac0043'),
('4028818348fb17090148fb188e6e0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-11 01:26:03', 1, '4028d881436d514601436d5215ac0043'),
('4028818348fb17090148fb193e780001', 'Chrome', '权限: 未识别回复语被更新成功', 5, '192.168.1.3', '2014-10-11 01:26:48', 1, '4028d881436d514601436d5215ac0043'),
('4028818348fb17090148fb1966db0002', 'Chrome', '用户admin已退出', 2, '192.168.1.3', '2014-10-11 01:26:59', 1, '4028d881436d514601436d5215ac0043'),
('4028818348fb17090148fb197f110003', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-11 01:27:05', 1, '4028d881436d514601436d5215ac0043'),
('4028818348fb17090148fb1a73240006', 'Chrome', '修改关文本模板成功！', 5, '192.168.1.3', '2014-10-11 01:28:07', 1, '4028d881436d514601436d5215ac0043'),
('4028818348fb1e2a0148fb1f99b00000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-11 01:33:45', 1, '4028d881436d514601436d5215ac0043'),
('4028818348fb209d0148fb22d1290000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-11 01:37:16', 1, '4028d881436d514601436d5215ac0043'),
('4028818348fb209d0148fb2401e20001', 'Chrome', '修改关文本模板成功！', 5, '192.168.1.3', '2014-10-11 01:38:34', 1, '4028d881436d514601436d5215ac0043'),
('4028818348fb209d0148fb2474ab0002', 'Chrome', '修改关文本模板成功！', 5, '192.168.1.3', '2014-10-11 01:39:03', 1, '4028d881436d514601436d5215ac0043'),
('4028818348fb2b690148fb2cd7060000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-11 01:48:12', 1, '4028d881436d514601436d5215ac0043'),
('4028818348fb2b690148fb2d1dfd0001', 'Chrome', '修改关文本模板成功！', 5, '192.168.1.3', '2014-10-11 01:48:31', 1, '4028d881436d514601436d5215ac0043'),
('402881834904702101490471c1820000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-12 21:00:04', 1, '4028d881436d514601436d5215ac0043'),
('40288183490470210149047268f60002', 'Chrome', '活动添加成功', 3, '192.168.1.3', '2014-10-12 21:00:47', 1, '4028d881436d514601436d5215ac0043'),
('402881834904808a0149048203520000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-12 21:17:49', 1, '4028d881436d514601436d5215ac0043'),
('402881834904808a0149049546770001', 'Chrome', '活动更新成功', 5, '192.168.1.3', '2014-10-12 21:38:52', 1, '4028d881436d514601436d5215ac0043'),
('402881834904808a01490495e9e90002', 'Chrome', '活动更新成功', 5, '192.168.1.3', '2014-10-12 21:39:33', 1, '4028d881436d514601436d5215ac0043'),
('402881834904808a01490496faeb0003', 'Chrome', '活动更新成功', 5, '192.168.1.3', '2014-10-12 21:40:43', 1, '4028d881436d514601436d5215ac0043'),
('402881834904808a01490498c7e80004', 'Chrome', '活动更新成功', 5, '192.168.1.3', '2014-10-12 21:42:41', 1, '4028d881436d514601436d5215ac0043'),
('402881834904808a0149049a27af0005', 'Chrome', '活动更新成功', 5, '192.168.1.3', '2014-10-12 21:44:11', 1, '4028d881436d514601436d5215ac0043'),
('40288183490984af0149098629d10000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-13 20:40:27', 1, '4028d881436d514601436d5215ac0043'),
('40288183490984af01490986d2f10005', 'Chrome', '活动添加成功', 3, '192.168.1.3', '2014-10-13 20:41:11', 1, '4028d881436d514601436d5215ac0043'),
('40288183490984af014909880aef000c', 'Chrome', '活动更新成功', 5, '192.168.1.3', '2014-10-13 20:42:31', 1, '4028d881436d514601436d5215ac0043'),
('40288183490990e4014909927c290000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-13 20:53:55', 1, '4028d881436d514601436d5215ac0043'),
('40288183490990e4014909932aa90003', 'Chrome', '活动更新成功', 5, '192.168.1.3', '2014-10-13 20:54:40', 1, '4028d881436d514601436d5215ac0043'),
('40288183490996fd01490998a6dc0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-13 21:00:39', 1, '4028d881436d514601436d5215ac0043'),
('4028818349099fe6014909a1e6140000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-13 21:10:45', 1, '4028d881436d514601436d5215ac0043'),
('402881834909a670014909a858240000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-13 21:17:47', 1, '4028d881436d514601436d5215ac0043'),
('402881834909a670014909a923540008', 'Chrome', '活动更新成功', 5, '192.168.1.3', '2014-10-13 21:18:39', 1, '4028d881436d514601436d5215ac0043'),
('402881834909adcd014909af4dd50000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-13 21:25:24', 1, '4028d881436d514601436d5215ac0043'),
('402881834909adcd014909affc0e000a', 'Chrome', '活动更新成功', 5, '192.168.1.3', '2014-10-13 21:26:08', 1, '4028d881436d514601436d5215ac0043'),
('402881834909adcd014909b06d58000b', 'Chrome', '活动删除成功', 4, '192.168.1.3', '2014-10-13 21:26:37', 1, '4028d881436d514601436d5215ac0043'),
('402881834909adcd014909b15eb50013', 'Chrome', '活动添加成功', 3, '192.168.1.3', '2014-10-13 21:27:39', 1, '4028d881436d514601436d5215ac0043'),
('402881834909adcd014909b180820016', 'Chrome', '活动更新成功', 5, '192.168.1.3', '2014-10-13 21:27:48', 1, '4028d881436d514601436d5215ac0043'),
('402881834909adcd014909b4c7a3001b', 'Chrome', '活动添加成功', 3, '192.168.1.3', '2014-10-13 21:31:22', 1, '4028d881436d514601436d5215ac0043'),
('402881834909adcd014909b5a276001d', 'Chrome', '活动更新成功', 5, '192.168.1.3', '2014-10-13 21:32:18', 1, '4028d881436d514601436d5215ac0043'),
('402881834909adcd014909b7093a0020', 'Chrome', '活动更新成功', 5, '192.168.1.3', '2014-10-13 21:33:50', 1, '4028d881436d514601436d5215ac0043'),
('402881834909adcd014909b810280024', 'Chrome', '活动更新成功', 5, '192.168.1.3', '2014-10-13 21:34:58', 1, '4028d881436d514601436d5215ac0043'),
('402881834909adcd014909b92e720029', 'Chrome', '活动更新成功', 5, '192.168.1.3', '2014-10-13 21:36:11', 1, '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` (`ID`, `broswer`, `logcontent`, `loglevel`, `note`, `operatetime`, `operatetype`, `userid`) VALUES
('402881834909dff5014909e175e90000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-13 22:20:11', 1, '4028d881436d514601436d5215ac0043'),
('402881834909dff5014909e1cafd0005', 'Chrome', '活动更新成功', 5, '192.168.1.3', '2014-10-13 22:20:32', 1, '4028d881436d514601436d5215ac0043'),
('402881834909dff5014909e524ed0009', 'Chrome', '活动更新成功', 5, '192.168.1.3', '2014-10-13 22:24:12', 1, '4028d881436d514601436d5215ac0043'),
('402881834909dff5014909e774c8000d', 'Chrome', '活动更新成功', 5, '192.168.1.3', '2014-10-13 22:26:44', 1, '4028d881436d514601436d5215ac0043'),
('402881834909dff5014909ed90660011', 'Chrome', '活动更新成功', 5, '192.168.1.3', '2014-10-13 22:33:24', 1, '4028d881436d514601436d5215ac0043'),
('40288183490a0dba01490a0f3f020000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-13 23:10:11', 1, '4028d881436d514601436d5215ac0043'),
('40288183490a0dba01490a0fbd830005', 'Chrome', '活动更新成功', 5, '192.168.1.3', '2014-10-13 23:10:44', 1, '4028d881436d514601436d5215ac0043'),
('40288183490a19d801490a1b8a980000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-13 23:23:37', 1, '4028d881436d514601436d5215ac0043'),
('40288183490a19d801490a1bc7350004', 'Chrome', '活动更新成功', 5, '192.168.1.3', '2014-10-13 23:23:53', 1, '4028d881436d514601436d5215ac0043'),
('40288183490a1e4701490a1fd8c20000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-13 23:28:19', 1, '4028d881436d514601436d5215ac0043'),
('40288183490a1e4701490a2054eb0004', 'Chrome', '活动更新成功', 5, '192.168.1.3', '2014-10-13 23:28:51', 1, '4028d881436d514601436d5215ac0043'),
('40288183490a24bb01490a262e5d0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-13 23:35:14', 1, '4028d881436d514601436d5215ac0043'),
('40288183490a24bb01490a26a1020004', 'Chrome', '活动更新成功', 5, '192.168.1.3', '2014-10-13 23:35:44', 1, '4028d881436d514601436d5215ac0043'),
('40288183490a24bb01490a43ca9b0005', 'Chrome', '活动删除成功', 4, '192.168.1.3', '2014-10-14 00:07:35', 1, '4028d881436d514601436d5215ac0043'),
('40288183490a24bb01490a449eb30009', 'Chrome', '活动添加成功', 3, '192.168.1.3', '2014-10-14 00:08:29', 1, '4028d881436d514601436d5215ac0043'),
('40288183490a24bb01490a48cd29000e', 'Chrome', '活动更新成功', 5, '192.168.1.3', '2014-10-14 00:13:03', 1, '4028d881436d514601436d5215ac0043'),
('40288183490a24bb01490a4faf5f0016', 'Chrome', '活动添加成功', 3, '192.168.1.3', '2014-10-14 00:20:34', 1, '4028d881436d514601436d5215ac0043'),
('40288183490a24bb01490a5a28cd0019', 'Chrome', '权限:  奖项设置被添加成功', 3, '192.168.1.3', '2014-10-14 00:32:01', 1, '4028d881436d514601436d5215ac0043'),
('40288183490a24bb01490a5bb79f001b', 'Chrome', '权限: 奖品设置被添加成功', 3, '192.168.1.3', '2014-10-14 00:33:43', 1, '4028d881436d514601436d5215ac0043'),
('40288183490a24bb01490a5c1cc0001e', 'Chrome', '用户admin已退出', 2, '192.168.1.3', '2014-10-14 00:34:09', 1, '4028d881436d514601436d5215ac0043'),
('40288183490a24bb01490a5c3684001f', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-14 00:34:15', 1, '4028d881436d514601436d5215ac0043'),
('40288183490a24bb01490a6280090021', 'Chrome', '二维码场景信息添加成功', 3, '192.168.1.3', '2014-10-14 00:41:07', 1, '4028d881436d514601436d5215ac0043'),
('40288183490a24bb01490a62b1170023', 'Chrome', '二维码信息添加成功', 3, '192.168.1.3', '2014-10-14 00:41:20', 1, '4028d881436d514601436d5215ac0043'),
('40288183490a746e01490a7679590000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.3', '2014-10-14 01:02:56', 1, '4028d881436d514601436d5215ac0043'),
('402881e445a3b2fe0145a3b45ede0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-04-27 23:01:18', 1, '4028d881436d514601436d5215ac0043'),
('402881e4461f927c01461f9361480000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-05-22 00:18:10', 1, '4028d881436d514601436d5215ac0043'),
('402881e4461f927c01461f94a26d0001', 'Chrome', '用户admin已退出', 2, '192.168.1.100', '2014-05-22 00:19:33', 1, '4028d881436d514601436d5215ac0043'),
('402881e4461f927c01461f94b44b0002', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-05-22 00:19:37', 1, '4028d881436d514601436d5215ac0043'),
('402881e4461f9c6401461f9cc0830000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-05-22 00:28:25', 1, '4028d881436d514601436d5215ac0043'),
('402881e4461f9c6401461fa2e79f0004', 'Chrome', '用户: tingfeng添加成功', 3, '192.168.1.100', '2014-05-22 00:35:08', 1, '4028d881436d514601436d5215ac0043'),
('402881e4461f9c6401461fa2f9910005', 'Chrome', '用户admin已退出', 2, '192.168.1.100', '2014-05-22 00:35:12', 1, '4028d881436d514601436d5215ac0043'),
('402881e4461f9c6401461fa31a820006', 'Chrome', '用户: tingfeng[信息部]登录成功', 1, '192.168.1.100', '2014-05-22 00:35:21', 1, '402881e4461f9c6401461fa2e6f50002'),
('402881e4461f9c6401461fa349030007', 'Chrome', '用户tingfeng已退出', 2, '192.168.1.100', '2014-05-22 00:35:33', 1, '402881e4461f9c6401461fa2e6f50002'),
('402881e4461f9c6401461fa35a540008', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-05-22 00:35:37', 1, '4028d881436d514601436d5215ac0043'),
('402881e4461f9c6401461fa395a4000a', 'Chrome', '用户: tingfeng更新成功', 5, '192.168.1.100', '2014-05-22 00:35:52', 1, '4028d881436d514601436d5215ac0043'),
('402881e4461f9c6401461fa3a099000b', 'Chrome', '用户admin已退出', 2, '192.168.1.100', '2014-05-22 00:35:55', 1, '4028d881436d514601436d5215ac0043'),
('402881e4461f9c6401461fa3bc08000c', 'Chrome', '用户: tingfeng[信息部]登录成功', 1, '192.168.1.100', '2014-05-22 00:36:02', 1, '402881e4461f9c6401461fa2e6f50002'),
('402881e44639441901463944c01a0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-05-27 00:02:25', 1, '4028d881436d514601436d5215ac0043'),
('402881e4463cc88701463cc95b6a0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-05-27 16:26:07', 1, '4028d881436d514601436d5215ac0043'),
('402881e4463cc88701463ccf1d2d0003', 'Chrome', '微信单图消息添加成功', 3, '192.168.1.100', '2014-05-27 16:32:24', 1, '4028d881436d514601436d5215ac0043'),
('402881e44643207c014643224c250000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-05-28 22:00:59', 1, '4028d881436d514601436d5215ac0043'),
('402881e44643207c01464322e2000001', 'Chrome', '用户admin已退出', 2, '192.168.1.100', '2014-05-28 22:01:38', 1, '4028d881436d514601436d5215ac0043'),
('402881e44643207c0146432330d80002', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-05-28 22:01:58', 1, '4028d881436d514601436d5215ac0043'),
('402881e44643207c0146432382b10003', 'Chrome', '用户admin已退出', 2, '192.168.1.100', '2014-05-28 22:02:19', 1, '4028d881436d514601436d5215ac0043'),
('402881e44643207c0146432399a60004', 'Chrome', '用户: tingfeng[信息部]登录成功', 1, '192.168.1.100', '2014-05-28 22:02:25', 1, '402881e4461f9c6401461fa2e6f50002'),
('402881e44643207c014643293b310005', 'Chrome', '用户tingfeng已退出', 2, '192.168.1.100', '2014-05-28 22:08:34', 1, '402881e4461f9c6401461fa2e6f50002'),
('402881e44643207c0146432950350006', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-05-28 22:08:39', 1, '4028d881436d514601436d5215ac0043'),
('402881e44643207c014643328d3b0008', 'Chrome', '用户admin已退出', 2, '192.168.1.100', '2014-05-28 22:18:44', 1, '4028d881436d514601436d5215ac0043'),
('402881e44643207c01464332a3e90009', 'Chrome', '用户: tingfeng[信息部]登录成功', 1, '192.168.1.100', '2014-05-28 22:18:50', 1, '402881e4461f9c6401461fa2e6f50002'),
('402881e44643207c01464333f86e000e', 'Chrome', '微信单图消息添加成功', 3, '192.168.1.100', '2014-05-28 22:20:17', 1, '402881e4461f9c6401461fa2e6f50002'),
('402881e44643207c0146435b9f6c0011', 'Chrome', '微信公众帐号信息添加成功', 3, '192.168.1.100', '2014-05-28 23:03:36', 1, '402881e4461f9c6401461fa2e6f50002'),
('402881e44643207c0146436e5e770013', 'Chrome', '用户tingfeng已退出', 2, '192.168.1.100', '2014-05-28 23:24:05', 1, '402881e4461f9c6401461fa2e6f50002'),
('402881e44643207c01464373c3b60014', 'Chrome', '用户: tingfeng[信息部]登录成功', 1, '192.168.1.100', '2014-05-28 23:29:58', 1, '402881e4461f9c6401461fa2e6f50002'),
('402881e44643813501464381e9700000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-05-28 23:45:25', 1, '4028d881436d514601436d5215ac0043'),
('402881e44643813501464386a7090004', 'Chrome', '微信单图消息添加成功', 3, '192.168.1.100', '2014-05-28 23:50:36', 1, '4028d881436d514601436d5215ac0043'),
('402881e44643813501464388b4950008', 'Chrome', '用户admin已退出', 2, '192.168.1.100', '2014-05-28 23:52:51', 1, '4028d881436d514601436d5215ac0043'),
('402881e44643813501464388d43a0009', 'Chrome', '用户: tingfeng[信息部]登录成功', 1, '192.168.1.100', '2014-05-28 23:52:59', 1, '402881e4461f9c6401461fa2e6f50002'),
('402881e44643813501464389b876000d', 'Chrome', '微信单图消息添加成功', 3, '192.168.1.100', '2014-05-28 23:53:57', 1, '402881e4461f9c6401461fa2e6f50002'),
('402881e44643a1cd014643a3c2d80001', 'Chrome', '用户: tingfeng[信息部]登录成功', 1, '192.168.1.100', '2014-05-29 00:22:24', 1, '402881e4461f9c6401461fa2e6f50002'),
('402881e44643a1cd014643a536680005', 'Chrome', '微信单图消息添加成功', 3, '192.168.1.100', '2014-05-29 00:23:59', 1, '402881e4461f9c6401461fa2e6f50002'),
('402881e44643a1cd014643a579b20008', 'Chrome', '微信单图消息添加成功', 3, '192.168.1.100', '2014-05-29 00:24:16', 1, '402881e4461f9c6401461fa2e6f50002'),
('402881e44648134a014648146e7b0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-05-29 21:03:57', 1, '4028d881436d514601436d5215ac0043'),
('402881e44648134a014648163ab80002', 'Chrome', '角色: 测试角色被添加成功', 3, '192.168.1.100', '2014-05-29 21:05:54', 1, '4028d881436d514601436d5215ac0043'),
('402881e44648134a0146481669b90003', 'Chrome', '角色: 测试角色被更新成功', 5, '192.168.1.100', '2014-05-29 21:06:06', 1, '4028d881436d514601436d5215ac0043'),
('402881e44648134a014648174aeb000e', 'Chrome', '用户: ceshi添加成功', 3, '192.168.1.100', '2014-05-29 21:07:04', 1, '4028d881436d514601436d5215ac0043'),
('402881e44648134a0146481772be000f', 'Chrome', '用户admin已退出', 2, '192.168.1.100', '2014-05-29 21:07:14', 1, '4028d881436d514601436d5215ac0043'),
('402881e44648134a0146481791ac0010', 'Chrome', '用户: ceshi[信息部]登录成功', 1, '192.168.1.100', '2014-05-29 21:07:22', 1, '402881e44648134a014648174a45000c'),
('402881e44648134a01464817e7da0011', 'Chrome', '用户ceshi已退出', 2, '192.168.1.100', '2014-05-29 21:07:44', 1, '402881e44648134a014648174a45000c'),
('402881e44648134a01464817fd8a0012', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-05-29 21:07:50', 1, '4028d881436d514601436d5215ac0043'),
('402881e44648134a01464818dfee0029', 'Chrome', '用户admin已退出', 2, '192.168.1.100', '2014-05-29 21:08:48', 1, '4028d881436d514601436d5215ac0043'),
('402881e44648134a01464818f9bd002a', 'Chrome', '用户: ceshi[信息部]登录成功', 1, '192.168.1.100', '2014-05-29 21:08:54', 1, '402881e44648134a014648174a45000c'),
('402881e44648134a014648193f99002b', 'Chrome', '用户ceshi已退出', 2, '192.168.1.100', '2014-05-29 21:09:12', 1, '402881e44648134a014648174a45000c'),
('402881e44648134a01464819557f002c', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-05-29 21:09:18', 1, '4028d881436d514601436d5215ac0043'),
('402881e44648134a01464819f229002d', 'Chrome', '用户admin已退出', 2, '192.168.1.100', '2014-05-29 21:09:58', 1, '4028d881436d514601436d5215ac0043'),
('402881e44648134a0146481a78d3002e', 'Chrome', '用户: ceshi[信息部]登录成功', 1, '192.168.1.100', '2014-05-29 21:10:32', 1, '402881e44648134a014648174a45000c'),
('402881e44648134a0146481ad284002f', 'Chrome', '用户ceshi已退出', 2, '192.168.1.100', '2014-05-29 21:10:55', 1, '402881e44648134a014648174a45000c'),
('402881e44648134a0146481aed9e0030', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-05-29 21:11:02', 1, '4028d881436d514601436d5215ac0043'),
('402881e44648134a0146481d4a370047', 'Chrome', '用户admin已退出', 2, '192.168.1.100', '2014-05-29 21:13:37', 1, '4028d881436d514601436d5215ac0043'),
('402881e44648134a0146481d5d860048', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-05-29 21:13:42', 1, '4028d881436d514601436d5215ac0043'),
('402881e44648134a014648209402004a', 'Chrome', '操作: 新增被添加成功', 3, '192.168.1.100', '2014-05-29 21:17:13', 1, '4028d881436d514601436d5215ac0043'),
('402881e44648134a0146482152fc004c', 'Chrome', '操作: 编辑被添加成功', 3, '192.168.1.100', '2014-05-29 21:18:01', 1, '4028d881436d514601436d5215ac0043'),
('402881e44648134a01464821b64b004d', 'Chrome', '用户admin已退出', 2, '192.168.1.100', '2014-05-29 21:18:27', 1, '4028d881436d514601436d5215ac0043'),
('402881e44648134a01464821ea56004e', 'Chrome', '用户: ceshi[信息部]登录成功', 1, '192.168.1.100', '2014-05-29 21:18:40', 1, '402881e44648134a014648174a45000c'),
('402881e44648134a0146482288a6004f', 'Chrome', '用户ceshi已退出', 2, '192.168.1.100', '2014-05-29 21:19:21', 1, '402881e44648134a014648174a45000c'),
('402881e44648134a014648229acc0050', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-05-29 21:19:25', 1, '4028d881436d514601436d5215ac0043'),
('402881e44648134a014648254cbb0051', 'Firefox', '用户: ceshi[信息部]登录成功', 1, '192.168.1.100', '2014-05-29 21:22:22', 1, '402881e44648134a014648174a45000c'),
('402881e44648134a01464827a5de0052', 'Chrome', '用户admin已退出', 2, '192.168.1.100', '2014-05-29 21:24:56', 1, '4028d881436d514601436d5215ac0043'),
('402881e44648134a0146482c4e0f0053', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-05-29 21:30:01', 1, '4028d881436d514601436d5215ac0043'),
('402881e44648134a0146482e24850054', 'Chrome', '用户admin已退出', 2, '192.168.1.100', '2014-05-29 21:32:02', 1, '4028d881436d514601436d5215ac0043'),
('402881e44648134a0146482e37b90055', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-05-29 21:32:06', 1, '4028d881436d514601436d5215ac0043'),
('402881e44648134a0146483162bf0056', 'Chrome', '用户admin已退出', 2, '192.168.1.100', '2014-05-29 21:35:34', 1, '4028d881436d514601436d5215ac0043'),
('402881e44648134a0146483184de0057', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-05-29 21:35:43', 1, '4028d881436d514601436d5215ac0043'),
('402881e4464d026901464d036aa40000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-05-30 20:03:28', 1, '4028d881436d514601436d5215ac0043'),
('402881e4464d026901464d05ab920002', 'Chrome', '添加1的信息成功！', 3, '192.168.1.100', '2014-05-30 20:05:55', 1, '4028d881436d514601436d5215ac0043'),
('402881e4464db22d01464db4a1870000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-05-30 23:17:01', 1, '4028d881436d514601436d5215ac0043'),
('402881e4464db22d01464db6ccfa0001', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-05-30 23:19:24', 1, '4028d881436d514601436d5215ac0043'),
('402881e4464db22d01464db785860003', 'Chrome', '添加大转盘的信息成功！', 3, '192.168.1.100', '2014-05-30 23:20:11', 1, '4028d881436d514601436d5215ac0043'),
('402881e4464dd29901464dd5dd1a0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-05-30 23:53:19', 1, '4028d881436d514601436d5215ac0043'),
('402881e4464ddec701464ddf57fd0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-05-31 00:03:41', 1, '4028d881436d514601436d5215ac0043'),
('402881e4464de1b501464de86fc10000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-05-31 00:13:37', 1, '4028d881436d514601436d5215ac0043'),
('402881e4464de1b501464dedae2e0001', 'Chrome', '同步菜单信息数据成功！', 4, '192.168.1.100', '2014-05-31 00:19:20', 1, '4028d881436d514601436d5215ac0043'),
('402881e4464de1b501464defa1a40002', 'Chrome', '同步菜单信息数据成功！', 4, '192.168.1.100', '2014-05-31 00:21:28', 1, '4028d881436d514601436d5215ac0043'),
('402881e4464de1b501464df091cd0003', 'Chrome', '同步菜单信息数据成功！', 4, '192.168.1.100', '2014-05-31 00:22:30', 1, '4028d881436d514601436d5215ac0043'),
('402881e4464de1b501464df315720004', 'Chrome', '更新大转盘的菜单信息信息成功！', 5, '192.168.1.100', '2014-05-31 00:25:14', 1, '4028d881436d514601436d5215ac0043'),
('402881e4464df45f01464df500090000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-05-31 00:27:20', 1, '4028d881436d514601436d5215ac0043'),
('402881e4464df45f01464df5476e0001', 'Chrome', '删除大转盘菜单信息数据', 4, '192.168.1.100', '2014-05-31 00:27:38', 1, '4028d881436d514601436d5215ac0043'),
('402881e4464df45f01464df5cc4c0002', 'Chrome', '更新1的菜单信息信息成功！', 5, '192.168.1.100', '2014-05-31 00:28:12', 1, '4028d881436d514601436d5215ac0043'),
('402881e4464df45f01464df66e280003', 'Chrome', '同步菜单信息数据成功！', 4, '192.168.1.100', '2014-05-31 00:28:54', 1, '4028d881436d514601436d5215ac0043'),
('402881e4464df45f01464df707b20005', 'Chrome', '添加我的大转盘的信息成功！', 3, '192.168.1.100', '2014-05-31 00:29:33', 1, '4028d881436d514601436d5215ac0043'),
('402881e4464df45f01464df718220006', 'Chrome', '同步菜单信息数据成功！', 4, '192.168.1.100', '2014-05-31 00:29:37', 1, '4028d881436d514601436d5215ac0043'),
('402881e4464df45f01464df7525a0007', 'Chrome', '同步菜单信息数据成功！', 4, '192.168.1.100', '2014-05-31 00:29:52', 1, '4028d881436d514601436d5215ac0043'),
('402881e4464df45f01464df7931c0008', 'Chrome', '同步菜单信息数据成功！', 4, '192.168.1.100', '2014-05-31 00:30:09', 1, '4028d881436d514601436d5215ac0043'),
('402881e4464df45f01464df9087b0009', 'Chrome', '同步菜单信息数据成功！', 4, '192.168.1.100', '2014-05-31 00:31:44', 1, '4028d881436d514601436d5215ac0043'),
('402881e446672a080146672aa03a0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-06-04 21:56:25', 1, '4028d881436d514601436d5215ac0043'),
('402881e446675fc801466761ea850000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-06-04 22:56:48', 1, '4028d881436d514601436d5215ac0043'),
('402881e446676a060146676b66c90000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-06-04 23:07:10', 1, '4028d881436d514601436d5215ac0043'),
('402881e446676a060146677088340006', 'Chrome', '创建成功', 3, '192.168.1.100', '2014-06-04 23:12:46', 1, '4028d881436d514601436d5215ac0043'),
('402881e446676a0601466775b94c0009', 'Chrome', '修改成功', 5, '192.168.1.100', '2014-06-04 23:18:26', 1, '4028d881436d514601436d5215ac0043'),
('402881e446677b700146677c3e140000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-06-04 23:25:34', 1, '4028d881436d514601436d5215ac0043'),
('402881e446677b700146677d7bc20002', 'Chrome', '权限: 扩展接口管理被添加成功', 3, '192.168.1.100', '2014-06-04 23:26:55', 1, '4028d881436d514601436d5215ac0043'),
('402881e446677b700146677d9e290003', 'Chrome', '用户admin已退出', 2, '192.168.1.100', '2014-06-04 23:27:04', 1, '4028d881436d514601436d5215ac0043'),
('402881e446677b700146677db0a00004', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-06-04 23:27:08', 1, '4028d881436d514601436d5215ac0043'),
('402881e446677b700146678c66690006', 'Chrome', '用户admin已退出', 2, '192.168.1.100', '2014-06-04 23:43:13', 1, '4028d881436d514601436d5215ac0043'),
('402881e446677b700146678c795a0007', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-06-04 23:43:17', 1, '4028d881436d514601436d5215ac0043'),
('402881e446677b700146678d6a810008', 'Chrome', '权限: 扩展接口管理被更新成功', 5, '192.168.1.100', '2014-06-04 23:44:19', 1, '4028d881436d514601436d5215ac0043'),
('402881e446677b700146678d8d210009', 'Chrome', '用户admin已退出', 2, '192.168.1.100', '2014-06-04 23:44:28', 1, '4028d881436d514601436d5215ac0043'),
('402881e446677b700146678d9e64000a', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-06-04 23:44:32', 1, '4028d881436d514601436d5215ac0043'),
('402881e44667912a01466793387a0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-06-04 23:50:39', 1, '4028d881436d514601436d5215ac0043'),
('402881e44667912a0146679390b60002', 'Chrome', '扩展接口管理添加成功', 3, '192.168.1.100', '2014-06-04 23:51:02', 1, '4028d881436d514601436d5215ac0043'),
('402881e44667912a014667947aaa0004', 'Chrome', '扩展接口管理添加成功', 3, '192.168.1.100', '2014-06-04 23:52:02', 1, '4028d881436d514601436d5215ac0043'),
('402881e44667a05e014667a104aa0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-06-05 00:05:44', 1, '4028d881436d514601436d5215ac0043'),
('402881e4466c8d9801466c92e8a00006', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-06-05 23:08:25', 1, '4028d881436d514601436d5215ac0043'),
('402881e446950f860146951146380000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-06-13 19:51:15', 1, '4028d881436d514601436d5215ac0043'),
('402881e446950f86014695120fc30002', 'Chrome', '扩展接口管理添加成功', 3, '192.168.1.100', '2014-06-13 19:52:07', 1, '4028d881436d514601436d5215ac0043'),
('402881e446950f8601469513ecde0004', 'Chrome', '扩展接口管理添加成功', 3, '192.168.1.100', '2014-06-13 19:54:09', 1, '4028d881436d514601436d5215ac0043'),
('402881e44695183a0146951a33a60002', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-06-13 20:01:00', 1, '4028d881436d514601436d5215ac0043'),
('402881e44695183a0146951af32f0005', 'Chrome', '权限: 微信CMS被添加成功', 3, '192.168.1.100', '2014-06-13 20:01:49', 1, '4028d881436d514601436d5215ac0043'),
('402881e44695183a0146951b66cb0007', 'Chrome', '权限: 首页广告管理被添加成功', 3, '192.168.1.100', '2014-06-13 20:02:19', 1, '4028d881436d514601436d5215ac0043'),
('402881e44695183a0146951ed81f0009', 'Chrome', '权限: 栏目管理被添加成功', 3, '192.168.1.100', '2014-06-13 20:06:05', 1, '4028d881436d514601436d5215ac0043'),
('402881e44695183a0146951f35f7000d', 'Chrome', '用户admin已退出', 2, '192.168.1.100', '2014-06-13 20:06:29', 1, '4028d881436d514601436d5215ac0043'),
('402881e44695183a0146951f470e000e', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-06-13 20:06:33', 1, '4028d881436d514601436d5215ac0043'),
('402881e44695183a0146952114830011', 'Chrome', '首页广告添加成功', 3, '192.168.1.100', '2014-06-13 20:08:31', 1, '4028d881436d514601436d5215ac0043'),
('402881e44695183a014695214ad30014', 'Chrome', '首页广告添加成功', 3, '192.168.1.100', '2014-06-13 20:08:45', 1, '4028d881436d514601436d5215ac0043'),
('402881e44695183a01469521a0200017', 'Chrome', '首页广告添加成功', 3, '192.168.1.100', '2014-06-13 20:09:07', 1, '4028d881436d514601436d5215ac0043'),
('402881e44695183a01469522f83f001a', 'Chrome', '栏目管理添加成功', 3, '192.168.1.100', '2014-06-13 20:10:35', 1, '4028d881436d514601436d5215ac0043'),
('402881e44695183a0146952348ec001d', 'Chrome', '栏目管理添加成功', 3, '192.168.1.100', '2014-06-13 20:10:56', 1, '4028d881436d514601436d5215ac0043'),
('402881e44695183a01469523f1300020', 'Chrome', '栏目管理添加成功', 3, '192.168.1.100', '2014-06-13 20:11:39', 1, '4028d881436d514601436d5215ac0043'),
('402881e44695183a01469524270e0023', 'Chrome', '栏目管理添加成功', 3, '192.168.1.100', '2014-06-13 20:11:52', 1, '4028d881436d514601436d5215ac0043'),
('402881e446952fde0146953087580001', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-06-13 20:25:24', 1, '4028d881436d514601436d5215ac0043'),
('402881e446955c7c0146955d19850000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-06-13 21:14:05', 1, '4028d881436d514601436d5215ac0043'),
('402881e446955c7c01469581929e0005', 'Chrome', '扩展接口管理更新成功', 5, '192.168.1.100', '2014-06-13 21:53:55', 1, '4028d881436d514601436d5215ac0043'),
('402881e446955c7c0146958917930010', 'Chrome', '扩展接口管理更新成功', 5, '192.168.1.100', '2014-06-13 22:02:08', 1, '4028d881436d514601436d5215ac0043'),
('402881e446955c7c01469597116a0015', 'Chrome', '栏目管理更新成功', 5, '192.168.1.100', '2014-06-13 22:17:24', 1, '4028d881436d514601436d5215ac0043'),
('402881e446955c7c014695973dbd0017', 'Chrome', '栏目管理更新成功', 5, '192.168.1.100', '2014-06-13 22:17:35', 1, '4028d881436d514601436d5215ac0043'),
('402881e446955c7c014695975c130019', 'Chrome', '栏目管理更新成功', 5, '192.168.1.100', '2014-06-13 22:17:43', 1, '4028d881436d514601436d5215ac0043'),
('402881e446955c7c0146959779d6001b', 'Chrome', '栏目管理更新成功', 5, '192.168.1.100', '2014-06-13 22:17:50', 1, '4028d881436d514601436d5215ac0043'),
('402881e446955c7c014695a1e45f001e', 'Chrome', '栏目管理更新成功', 5, '192.168.1.100', '2014-06-13 22:29:13', 1, '4028d881436d514601436d5215ac0043'),
('402881e446955c7c014695a36e56001f', 'Chrome', '栏目管理更新成功', 5, '192.168.1.100', '2014-06-13 22:30:54', 1, '4028d881436d514601436d5215ac0043'),
('402881e446955c7c014695a390f50021', 'Chrome', '栏目管理更新成功', 5, '192.168.1.100', '2014-06-13 22:31:03', 1, '4028d881436d514601436d5215ac0043'),
('402881e446955c7c014695a3d2fb0023', 'Chrome', '栏目管理更新成功', 5, '192.168.1.100', '2014-06-13 22:31:20', 1, '4028d881436d514601436d5215ac0043'),
('402881e446955c7c014695a4526f0025', 'Chrome', '栏目管理更新成功', 5, '192.168.1.100', '2014-06-13 22:31:52', 1, '4028d881436d514601436d5215ac0043'),
('402881e446955c7c014695a72ae4002a', 'Chrome', '栏目管理添加成功', 3, '192.168.1.100', '2014-06-13 22:34:59', 1, '4028d881436d514601436d5215ac0043'),
('402881e446955c7c014695a77541002d', 'Chrome', '栏目管理添加成功', 3, '192.168.1.100', '2014-06-13 22:35:18', 1, '4028d881436d514601436d5215ac0043'),
('402881e446955c7c014695a7bcb80030', 'Chrome', '栏目管理添加成功', 3, '192.168.1.100', '2014-06-13 22:35:36', 1, '4028d881436d514601436d5215ac0043'),
('402881e446955c7c014695a7f0f70033', 'Chrome', '栏目管理添加成功', 3, '192.168.1.100', '2014-06-13 22:35:49', 1, '4028d881436d514601436d5215ac0043'),
('402881e446955c7c014695a8374e0036', 'Chrome', '栏目管理添加成功', 3, '192.168.1.100', '2014-06-13 22:36:07', 1, '4028d881436d514601436d5215ac0043'),
('402881e44695ebe3014695ec69a30000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-06-13 23:50:37', 1, '4028d881436d514601436d5215ac0043'),
('402881e44695ebe3014695ed424a0002', 'Chrome', '首页广告更新成功', 5, '192.168.1.100', '2014-06-13 23:51:32', 1, '4028d881436d514601436d5215ac0043'),
('402881e44695ebe3014695ed811b0004', 'Chrome', '首页广告更新成功', 5, '192.168.1.100', '2014-06-13 23:51:48', 1, '4028d881436d514601436d5215ac0043'),
('402881e44695ebe3014695ef4c060006', 'Chrome', '首页广告更新成功', 5, '192.168.1.100', '2014-06-13 23:53:46', 1, '4028d881436d514601436d5215ac0043'),
('402881e44695ebe3014695f2e0010008', 'Chrome', '栏目管理更新成功', 5, '192.168.1.100', '2014-06-13 23:57:40', 1, '4028d881436d514601436d5215ac0043'),
('402881e44695ebe3014695f31d02000a', 'Chrome', '栏目管理更新成功', 5, '192.168.1.100', '2014-06-13 23:57:56', 1, '4028d881436d514601436d5215ac0043'),
('402881e44695ebe3014695f33e67000c', 'Chrome', '栏目管理更新成功', 5, '192.168.1.100', '2014-06-13 23:58:04', 1, '4028d881436d514601436d5215ac0043'),
('402881e44695ebe3014695f3aa80000e', 'Chrome', '栏目管理更新成功', 5, '192.168.1.100', '2014-06-13 23:58:32', 1, '4028d881436d514601436d5215ac0043'),
('402881e44695ebe3014695f3ff9d0010', 'Chrome', '栏目管理更新成功', 5, '192.168.1.100', '2014-06-13 23:58:54', 1, '4028d881436d514601436d5215ac0043'),
('402881e44695ebe3014695f447550012', 'Chrome', '栏目管理更新成功', 5, '192.168.1.100', '2014-06-13 23:59:12', 1, '4028d881436d514601436d5215ac0043'),
('402881e44695ebe3014695f465280014', 'Chrome', '栏目管理更新成功', 5, '192.168.1.100', '2014-06-13 23:59:20', 1, '4028d881436d514601436d5215ac0043'),
('402881e44695ebe3014695f499930016', 'Chrome', '栏目管理更新成功', 5, '192.168.1.100', '2014-06-13 23:59:33', 1, '4028d881436d514601436d5215ac0043'),
('402881e44695ebe3014695f4dac10018', 'Chrome', '栏目管理更新成功', 5, '192.168.1.100', '2014-06-13 23:59:50', 1, '4028d881436d514601436d5215ac0043'),
('402881e4469ffe7a01469fff48cb0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-06-15 22:47:26', 1, '4028d881436d514601436d5215ac0043'),
('402881e4469ffe7a0146a000097e0002', 'Chrome', '扩展接口管理添加成功', 3, '192.168.1.100', '2014-06-15 22:48:15', 1, '4028d881436d514601436d5215ac0043'),
('402881e4469ffe7a0146a005dbda0008', 'Chrome', '更新我的大转盘的菜单信息信息成功！', 5, '192.168.1.100', '2014-06-15 22:54:37', 1, '4028d881436d514601436d5215ac0043'),
('402881e4469ffe7a0146a0060ecf0009', 'Chrome', '更新我的大转盘的菜单信息信息成功！', 5, '192.168.1.100', '2014-06-15 22:54:50', 1, '4028d881436d514601436d5215ac0043'),
('402881e446a009740146a00a89c50000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-06-15 22:59:43', 1, '4028d881436d514601436d5215ac0043'),
('402881e446a4d1cc0146a4d4eb280000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-06-16 21:19:15', 1, '4028d881436d514601436d5215ac0043'),
('402881e446a4d1cc0146a4eb87dd0001', 'Chrome', '权限: 栏目管理被更新成功', 5, '192.168.1.100', '2014-06-16 21:43:57', 1, '4028d881436d514601436d5215ac0043'),
('402881e446a4d1cc0146a4ebbfee0002', 'Chrome', '用户admin已退出', 2, '192.168.1.100', '2014-06-16 21:44:12', 1, '4028d881436d514601436d5215ac0043'),
('402881e446a4d1cc0146a4ebd7360003', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-06-16 21:44:17', 1, '4028d881436d514601436d5215ac0043'),
('402881e446a4d1cc0146a4ec895c0004', 'Chrome', '权限: 栏目管理被更新成功', 5, '192.168.1.100', '2014-06-16 21:45:03', 1, '4028d881436d514601436d5215ac0043'),
('402881e446a4d1cc0146a4ec97da0005', 'Chrome', '用户admin已退出', 2, '192.168.1.100', '2014-06-16 21:45:07', 1, '4028d881436d514601436d5215ac0043'),
('402881e446a4d1cc0146a4ecab460006', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-06-16 21:45:12', 1, '4028d881436d514601436d5215ac0043'),
('402881e446a4d1cc0146a4f0380b0007', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-06-16 21:49:04', 1, '4028d881436d514601436d5215ac0043'),
('402881e446a4d1cc0146a4f1a2290008', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-06-16 21:50:37', 1, '4028d881436d514601436d5215ac0043'),
('402881e446a4f60d0146a4f671ad0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-06-16 21:55:52', 1, '4028d881436d514601436d5215ac0043'),
('402881e446a4f9400146a4fa2beb0001', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-06-16 21:59:57', 1, '4028d881436d514601436d5215ac0043'),
('402881e446a4f9400146a500c7460007', 'Chrome', '更新测试菜单的菜单信息信息成功！', 5, '192.168.1.100', '2014-06-16 22:07:10', 1, '4028d881436d514601436d5215ac0043'),
('402881e446a4f9400146a50183d00009', 'Chrome', '添加微CMS的信息成功！', 3, '192.168.1.100', '2014-06-16 22:07:58', 1, '4028d881436d514601436d5215ac0043'),
('402881e446a4f9400146a5019b9b000a', 'Chrome', '同步菜单信息数据成功！', 4, '192.168.1.100', '2014-06-16 22:08:04', 1, '4028d881436d514601436d5215ac0043'),
('402881e446a4f9400146a5028775000b', 'MSIE 8.0', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-06-16 22:09:04', 1, '4028d881436d514601436d5215ac0043'),
('402881e446a4f9400146a503d7a6000c', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-06-16 22:10:30', 1, '4028d881436d514601436d5215ac0043'),
('402881e446a4f9400146a503e6bc000d', 'Safari', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-06-16 22:10:34', 1, '4028d881436d514601436d5215ac0043'),
('402881e446a4f9400146a506c908000f', 'Safari', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-06-16 22:13:43', 1, '4028d881436d514601436d5215ac0043'),
('402881e446a4f9400146a52c2e240010', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.100', '2014-06-16 22:54:34', 1, '4028d881436d514601436d5215ac0043'),
('402881e446a4f9400146a52ccb7d0011', 'Chrome', '用户admin已退出', 2, '192.168.1.100', '2014-06-16 22:55:14', 1, '4028d881436d514601436d5215ac0043'),
('402881e545f5dd1a0145f5ddb2850000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-05-13 21:55:18', 1, '4028d881436d514601436d5215ac0043'),
('402881e545f5dd1a0145f5de9bdb0002', 'Chrome', '权限: 消息管理被添加成功', 3, '192.168.1.101', '2014-05-13 21:56:18', 1, '4028d881436d514601436d5215ac0043'),
('402881e545f5dd1a0145f5f0b5ab0004', 'Chrome', '权限: 文本模板被添加成功', 3, '192.168.1.101', '2014-05-13 22:16:04', 1, '4028d881436d514601436d5215ac0043'),
('402881e545f5dd1a0145f5f32d4f0006', 'Chrome', '权限: 文本模板被添加成功', 3, '192.168.1.101', '2014-05-13 22:18:45', 1, '4028d881436d514601436d5215ac0043'),
('402881e545f5dd1a0145f5f33dc60007', 'Chrome', '权限: 文本模板被删除成功', 4, '192.168.1.101', '2014-05-13 22:18:50', 1, '4028d881436d514601436d5215ac0043'),
('402881e545f5dd1a0145f5f37693000a', 'Chrome', '用户admin已退出', 2, '192.168.1.101', '2014-05-13 22:19:04', 1, '4028d881436d514601436d5215ac0043'),
('402881e545f5dd1a0145f5f387d1000b', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-05-13 22:19:09', 1, '4028d881436d514601436d5215ac0043'),
('402881e545f5f4780145f5f4debd0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-05-13 22:20:36', 1, '4028d881436d514601436d5215ac0043'),
('402881e545f5f4780145f5f55fb30002', 'Chrome', '删除信息数据成功！', 4, '192.168.1.101', '2014-05-13 22:21:09', 1, '4028d881436d514601436d5215ac0043'),
('402881e545f5f4780145f6112aa30003', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-05-13 22:51:31', 1, '4028d881436d514601436d5215ac0043'),
('402881e545f5f4780145f61198cf0005', 'Chrome', '权限: 图文模板被添加成功', 3, '192.168.1.101', '2014-05-13 22:51:59', 1, '4028d881436d514601436d5215ac0043'),
('402881e545f5f4780145f611ed960007', 'Chrome', '用户admin已退出', 2, '192.168.1.101', '2014-05-13 22:52:21', 1, '4028d881436d514601436d5215ac0043'),
('402881e545f5f4780145f611feae0008', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-05-13 22:52:25', 1, '4028d881436d514601436d5215ac0043'),
('402881e545f612570145f61311400000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-05-13 22:53:35', 1, '4028d881436d514601436d5215ac0043'),
('402881e545f61b4d0145f61c39a60000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-05-13 23:03:36', 1, '4028d881436d514601436d5215ac0043'),
('402881e545f61f110145f61f54460000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-05-13 23:06:59', 1, '4028d881436d514601436d5215ac0043'),
('402881e545fb0fdb0145fb1027e40000', 'MSIE 7.0', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-05-14 22:08:31', 1, '4028d881436d514601436d5215ac0043'),
('402881e545fb0fdb0145fb1123c30001', 'MSIE 7.0', '权限: 自定义菜单被更新成功', 5, '192.168.1.101', '2014-05-14 22:09:35', 1, '4028d881436d514601436d5215ac0043'),
('402881e545fb0fdb0145fb1178920002', 'MSIE 7.0', '用户admin已退出', 2, '192.168.1.101', '2014-05-14 22:09:57', 1, '4028d881436d514601436d5215ac0043'),
('402881e545fb0fdb0145fb118a2a0003', 'MSIE 7.0', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-05-14 22:10:01', 1, '4028d881436d514601436d5215ac0043'),
('402881e545fb0fdb0145fb174b050006', 'MSIE 7.0', '添加第一个菜单的信息成功！', 3, '192.168.1.101', '2014-05-14 22:16:18', 1, '4028d881436d514601436d5215ac0043'),
('402881e545fb0fdb0145fb206d840008', 'MSIE 7.0', '添加子菜单的信息成功！', 3, '192.168.1.101', '2014-05-14 22:26:17', 1, '4028d881436d514601436d5215ac0043'),
('402881e54705957f0147059acf3e0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-07-05 16:18:57', 1, '4028d881436d514601436d5215ac0043'),
('402881e54705f629014705f6963f0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-07-05 17:59:12', 1, '4028d881436d514601436d5215ac0043'),
('402881e54705f629014705f7d62b0002', 'Chrome', '权限: 会员管理被添加成功', 3, '192.168.1.101', '2014-07-05 18:00:34', 1, '4028d881436d514601436d5215ac0043'),
('402881e54705f629014705f81e150004', 'Chrome', '用户admin已退出', 2, '192.168.1.101', '2014-07-05 18:00:52', 1, '4028d881436d514601436d5215ac0043'),
('402881e54705f629014705f83d730005', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-07-05 18:01:00', 1, '4028d881436d514601436d5215ac0043'),
('402881e5470601b7014706020d7a0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-07-05 18:11:43', 1, '4028d881436d514601436d5215ac0043'),
('402881e5470a3f7701470a4033150000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-07-06 13:58:05', 1, '4028d881436d514601436d5215ac0043'),
('402881e5470a3f7701470a4159b60002', 'Chrome', '权限: 会员管理被添加成功', 3, '192.168.1.101', '2014-07-06 13:59:20', 1, '4028d881436d514601436d5215ac0043'),
('402881e5470a3f7701470a41e1700004', 'Chrome', '用户admin已退出', 2, '192.168.1.101', '2014-07-06 13:59:55', 1, '4028d881436d514601436d5215ac0043'),
('402881e5470a3f7701470a42034d0005', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-07-06 14:00:04', 1, '4028d881436d514601436d5215ac0043'),
('402881e5470a3f7701470a42c71f0006', 'Chrome', '权限: 会员管理被删除成功', 4, '192.168.1.101', '2014-07-06 14:00:54', 1, '4028d881436d514601436d5215ac0043'),
('402881e5470a3f7701470a43019c0007', 'Chrome', '用户admin已退出', 2, '192.168.1.101', '2014-07-06 14:01:09', 1, '4028d881436d514601436d5215ac0043'),
('402881e5470a3f7701470a4321dd0008', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-07-06 14:01:17', 1, '4028d881436d514601436d5215ac0043'),
('402881e5470a44ed01470a458b630000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-07-06 14:03:55', 1, '4028d881436d514601436d5215ac0043'),
('402881e5470a467f01470a46dc3a0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-07-06 14:05:21', 1, '4028d881436d514601436d5215ac0043'),
('402881e5470a467f01470a4809cf0001', 'Chrome', '用户admin已退出', 2, '192.168.1.101', '2014-07-06 14:06:39', 1, '4028d881436d514601436d5215ac0043'),
('402881e5470a467f01470a482c630002', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-07-06 14:06:47', 1, '4028d881436d514601436d5215ac0043'),
('402881e5470a467f01470a48d4a10003', 'Chrome', '权限: 会员管理被更新成功', 5, '192.168.1.101', '2014-07-06 14:07:30', 1, '4028d881436d514601436d5215ac0043'),
('402881e5470a4f9b01470a5083540000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-07-06 14:15:54', 1, '4028d881436d514601436d5215ac0043'),
('402881e5470a4f9b01470a5155040001', 'Chrome', '权限: 会员管理被更新成功', 5, '192.168.1.101', '2014-07-06 14:16:48', 1, '4028d881436d514601436d5215ac0043'),
('402881e5470a559701470a5644850000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-07-06 14:22:11', 1, '4028d881436d514601436d5215ac0043'),
('402881e5470a6e9a01470a6f33d20000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-07-06 14:49:25', 1, '4028d881436d514601436d5215ac0043'),
('402881e5470a6e9a01470a855a1e0002', 'Chrome', '商城会员添加成功', 3, '192.168.1.101', '2014-07-06 15:13:37', 1, '4028d881436d514601436d5215ac0043'),
('402881e5470a6e9a01470a90101f0004', 'Chrome', '商城会员添加成功', 3, '192.168.1.101', '2014-07-06 15:25:19', 1, '4028d881436d514601436d5215ac0043'),
('402881e5470a6e9a01470ad0483d0005', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-07-06 16:35:27', 1, '4028d881436d514601436d5215ac0043'),
('402881e5470ae66801470ae727db0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-07-06 17:00:26', 1, '4028d881436d514601436d5215ac0043'),
('402881e5470aeaa301470aeb76cb0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-07-06 17:05:09', 1, '4028d881436d514601436d5215ac0043'),
('402881e5470aeaa301470bb508930001', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-07-06 20:45:19', 1, '4028d881436d514601436d5215ac0043'),
('402881e5470bc37201470bd0699a0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-07-06 21:15:13', 1, '4028d881436d514601436d5215ac0043'),
('402881e5470bc37201470bd137200002', 'Chrome', '权限: 购物车管理被添加成功', 3, '192.168.1.101', '2014-07-06 21:16:06', 1, '4028d881436d514601436d5215ac0043'),
('402881e5470bd23901470bd46bbd0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-07-06 21:19:36', 1, '4028d881436d514601436d5215ac0043'),
('402881e5470c1b5901470c1bf4ae0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-07-06 22:37:44', 1, '4028d881436d514601436d5215ac0043'),
('402881e5470c28a701470c2a94e80000', 'Chrome', '购物车 删除成功', 4, '192.168.1.101', '2014-07-06 22:53:43', 1, NULL),
('402881e5470c28a701470c2c97540001', 'Chrome', '购物车 删除成功', 4, '192.168.1.101', '2014-07-06 22:55:54', 1, NULL),
('402881e5470c28a701470c2e24de0003', 'Chrome', '购物车 删除成功', 4, '192.168.1.101', '2014-07-06 22:57:36', 1, NULL),
('402881e5470c28a701470c2e4e6c0007', 'Chrome', '购物车 删除成功', 4, '192.168.1.101', '2014-07-06 22:57:47', 1, NULL),
('402881e5470c28a701470c2ecc6a0009', 'Chrome', '购物车 删除成功', 4, '192.168.1.101', '2014-07-06 22:58:19', 1, NULL),
('402881e5470c28a701470c2f5933000a', 'Chrome', '购物车 删除成功', 4, '192.168.1.101', '2014-07-06 22:58:55', 1, NULL),
('402881e5479d04cc01479d051f600000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-08-04 01:57:44', 1, '4028d881436d514601436d5215ac0043'),
('402881e5479d04cc01479d0635480002', 'Chrome', '权限: 会员卡被添加成功', 3, '192.168.1.101', '2014-08-04 01:58:55', 1, '4028d881436d514601436d5215ac0043'),
('402881e5479d04cc01479d0675f80004', 'Chrome', '权限: 会员卡信息被添加成功', 3, '192.168.1.101', '2014-08-04 01:59:12', 1, '4028d881436d514601436d5215ac0043'),
('402881e5479d04cc01479d0777a80007', 'Chrome', '用户admin已退出', 2, '192.168.1.101', '2014-08-04 02:00:18', 1, '4028d881436d514601436d5215ac0043'),
('402881e5479d04cc01479d07915f0008', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-08-04 02:00:24', 1, '4028d881436d514601436d5215ac0043'),
('402881e5479d04cc01479d08ceeb0009', 'Chrome', '权限: 会员卡信息被更新成功', 5, '192.168.1.101', '2014-08-04 02:01:45', 1, '4028d881436d514601436d5215ac0043'),
('402881e5479d04cc01479d0ab6be000a', 'Chrome', '权限: 会员卡信息被更新成功', 5, '192.168.1.101', '2014-08-04 02:03:50', 1, '4028d881436d514601436d5215ac0043'),
('402881e5479d04cc01479d0def2b000b', 'Chrome', '权限: 会员卡信息被更新成功', 5, '192.168.1.101', '2014-08-04 02:07:21', 1, '4028d881436d514601436d5215ac0043'),
('402881e5479d04cc01479d0e9f37000c', 'Chrome', '权限: 会员卡信息被更新成功', 5, '192.168.1.101', '2014-08-04 02:08:06', 1, '4028d881436d514601436d5215ac0043'),
('402881e5479d04cc01479d0ef21c000d', 'Chrome', '权限: 会员卡信息被更新成功', 5, '192.168.1.101', '2014-08-04 02:08:28', 1, '4028d881436d514601436d5215ac0043'),
('402881e5479d04cc01479d0f336f000e', 'Chrome', '权限: 会员卡被更新成功', 5, '192.168.1.101', '2014-08-04 02:08:44', 1, '4028d881436d514601436d5215ac0043'),
('402881e647962b48014796e03c450000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.102', '2014-08-02 21:19:43', 1, '4028d881436d514601436d5215ac0043'),
('402881e647970fbd014797105e5e0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.102', '2014-08-02 22:12:18', 1, '4028d881436d514601436d5215ac0043'),
('402881e64799449b014799452ac80000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.102', '2014-08-03 08:29:12', 1, '4028d881436d514601436d5215ac0043'),
('402881e64799449b0147994cf3c60001', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.102', '2014-08-03 08:37:42', 1, '4028d881436d514601436d5215ac0043'),
('402881e64799449b0147994d95a20002', 'Chrome', '权限: 订单管理被更新成功', 5, '192.168.1.102', '2014-08-03 08:38:24', 1, '4028d881436d514601436d5215ac0043'),
('402881e64799449b0147994dd6280003', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.102', '2014-08-03 08:38:40', 1, '4028d881436d514601436d5215ac0043'),
('402881e647994e690147994f10680000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.102', '2014-08-03 08:40:01', 1, '4028d881436d514601436d5215ac0043'),
('402881e647994e6901479986a1d50001', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.102', '2014-08-03 09:40:43', 1, '4028d881436d514601436d5215ac0043'),
('402881e64799f7e4014799f870300000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.102', '2014-08-03 11:45:01', 1, '4028d881436d514601436d5215ac0043'),
('402881e6479a921401479a928f0f0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.102', '2014-08-03 14:33:21', 1, '4028d881436d514601436d5215ac0043'),
('402881e6479ac39801479ac5a04a0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.102', '2014-08-03 15:29:08', 1, '4028d881436d514601436d5215ac0043'),
('402881e6479ace8d01479acf061e0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.102', '2014-08-03 15:39:24', 1, '4028d881436d514601436d5215ac0043'),
('402881e6479ace8d01479aecadaa0004', 'Chrome', '购物车 删除成功', 4, '192.168.1.102', '2014-08-03 16:11:48', 1, '4028d881436d514601436d5215ac0043'),
('402881e6479af7d201479af843d80000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.102', '2014-08-03 16:24:27', 1, '4028d881436d514601436d5215ac0043'),
('402881e6479af9a001479affc7fc0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.102', '2014-08-03 16:32:39', 1, '4028d881436d514601436d5215ac0043'),
('402881e6479b3b3301479b3b8f6d0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.102', '2014-08-03 17:37:57', 1, '4028d881436d514601436d5215ac0043'),
('402881e6479b3d9e01479b3dfcc60000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.102', '2014-08-03 17:40:36', 1, '4028d881436d514601436d5215ac0043'),
('402881e6479b4e8c01479b5294d10000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.102', '2014-08-03 18:03:06', 1, '4028d881436d514601436d5215ac0043'),
('402881e6479b619c01479b6244f90000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.102', '2014-08-03 18:20:14', 1, '4028d881436d514601436d5215ac0043'),
('402881e6479b662101479b69e3110000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.102', '2014-08-03 18:28:33', 1, '4028d881436d514601436d5215ac0043'),
('402881e6479b6c8601479b6cf0950000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.102', '2014-08-03 18:31:53', 1, '4028d881436d514601436d5215ac0043'),
('402881e6479b6c8601479b6e7d7c0001', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.102', '2014-08-03 18:33:35', 1, '4028d881436d514601436d5215ac0043'),
('402881e6479b6c8601479b7002910002', 'Chrome', '商城地址信息删除成功', 4, '192.168.1.102', '2014-08-03 18:35:14', 1, '4028d881436d514601436d5215ac0043'),
('402881e6479b6c8601479b700b550003', 'Chrome', '商城地址信息删除成功', 4, '192.168.1.102', '2014-08-03 18:35:17', 1, '4028d881436d514601436d5215ac0043'),
('402881e6479b6c8601479b7092220005', 'Chrome', '商城地址信息添加成功', 3, '192.168.1.102', '2014-08-03 18:35:51', 1, '4028d881436d514601436d5215ac0043'),
('402881e745e6735b0145e676015f0000', 'MSIE 7.0', '用户: admin[信息部]登录成功', 1, '192.168.1.103', '2014-05-10 22:07:44', 1, '4028d881436d514601436d5215ac0043'),
('402881e745e67ca70145e67d2ef90000', 'MSIE 7.0', '用户: admin[信息部]登录成功', 1, '192.168.1.103', '2014-05-10 22:15:34', 1, '4028d881436d514601436d5215ac0043'),
('402881e747bae9ac0147baea2c810000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.103', '2014-08-09 21:16:54', 1, '4028d881436d514601436d5215ac0043'),
('402881e747baf1ea0147baf2403d0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.103', '2014-08-09 21:25:44', 1, '4028d881436d514601436d5215ac0043'),
('402881e747baf1ea0147baf4c6a40001', 'Chrome', '用户admin已退出', 2, '192.168.1.103', '2014-08-09 21:28:29', 1, '4028d881436d514601436d5215ac0043'),
('402881e747baf1ea0147baf4e7e50002', 'Chrome', '用户: tingfeng[信息部]登录成功', 1, '192.168.1.103', '2014-08-09 21:28:38', 1, '402881e4461f9c6401461fa2e6f50002'),
('402881e747baf1ea0147bb0a90340003', 'Chrome', '用户tingfeng已退出', 2, '192.168.1.101', '2014-08-09 21:52:17', 1, '402881e4461f9c6401461fa2e6f50002');
INSERT INTO `t_s_log` (`ID`, `broswer`, `logcontent`, `loglevel`, `note`, `operatetime`, `operatetype`, `userid`) VALUES
('402881e747baf1ea0147bb0aa6030004', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-08-09 21:52:23', 1, '4028d881436d514601436d5215ac0043'),
('402881e747baf1ea0147bb51f7ea0005', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-08-09 23:10:17', 1, '4028d881436d514601436d5215ac0043'),
('402881e747baf1ea0147bb750b9a0006', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.101', '2014-08-09 23:48:35', 1, '4028d881436d514601436d5215ac0043'),
('402881e747baf1ea0147bb79d29f0008', 'Chrome', '扩展接口管理添加成功', 3, '192.168.1.101', '2014-08-09 23:53:48', 1, '4028d881436d514601436d5215ac0043'),
('402881e7490c2b0301490c2b79a00000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.103', '2014-10-14 09:00:16', 1, '4028d881436d514601436d5215ac0043'),
('402881e7490c2b0301490c2c353c0001', 'Chrome', '用户admin已退出', 2, '192.168.1.103', '2014-10-14 09:01:04', 1, '4028d881436d514601436d5215ac0043'),
('402881e7490c2b0301490c2c579a0002', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.103', '2014-10-14 09:01:12', 1, '4028d881436d514601436d5215ac0043'),
('402881e7490c2b0301490c2cbed30003', 'Chrome', '用户admin已退出', 2, '192.168.1.103', '2014-10-14 09:01:39', 1, '4028d881436d514601436d5215ac0043'),
('402881e7490c2b0301490c2ce2930004', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.103', '2014-10-14 09:01:48', 1, '4028d881436d514601436d5215ac0043'),
('402881e845c297860145c29981dd0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-03 23:00:11', 1, '4028d881436d514601436d5215ac0043'),
('402881e845c2d12b0145c2d303490000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-04 00:03:00', 1, '4028d881436d514601436d5215ac0043'),
('402881e845c2d12b0145c2d38b680001', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-04 00:03:34', 1, '4028d881436d514601436d5215ac0043'),
('402881e845c2d12b0145c2d473600002', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-04 00:04:34', 1, '4028d881436d514601436d5215ac0043'),
('402881e845c2d88e0145c2d9159a0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-04 00:09:37', 1, '4028d881436d514601436d5215ac0043'),
('402881e845c6f1430145c7043fa80000', 'MSIE 9.0', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-04 19:35:15', 1, '4028d881436d514601436d5215ac0043'),
('402881e845c6f1430145c704a6230001', 'MSIE 9.0', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-04 19:35:41', 1, '4028d881436d514601436d5215ac0043'),
('402881e845c6f1430145c705a9480002', 'MSIE 9.0', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-04 19:36:48', 1, '4028d881436d514601436d5215ac0043'),
('402881e845c7090d0145c709a93b0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-04 19:41:10', 1, '4028d881436d514601436d5215ac0043'),
('402881e845c732a20145c737394d0000', 'MSIE 9.0', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-04 20:30:56', 1, '4028d881436d514601436d5215ac0043'),
('402881e845c73cb00145c746c9240000', 'MSIE 9.0', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-04 20:47:56', 1, '4028d881436d514601436d5215ac0043'),
('402881e845c73cb00145c74893910001', 'MSIE 9.0', '权限: 公众帐号管理被更新成功', 5, '192.168.1.104', '2014-05-04 20:49:53', 1, '4028d881436d514601436d5215ac0043'),
('402881e845c73cb00145c74976440005', 'MSIE 9.0', '用户admin已退出', 2, '192.168.1.104', '2014-05-04 20:50:51', 1, '4028d881436d514601436d5215ac0043'),
('402881e845c73cb00145c74988570006', 'MSIE 9.0', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-04 20:50:56', 1, '4028d881436d514601436d5215ac0043'),
('402881e845c73cb00145c75445eb0010', 'MSIE 9.0', '创建成功', 3, '192.168.1.104', '2014-05-04 21:02:40', 1, '4028d881436d514601436d5215ac0043'),
('402881e845cc520a0145cc535a580000', 'MSIE 9.0', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-05 20:19:45', 1, '4028d881436d514601436d5215ac0043'),
('402881e845cc520a0145cc5520730001', 'MSIE 9.0', '权限: 公众帐号管理被更新成功', 5, '192.168.1.104', '2014-05-05 20:21:42', 1, '4028d881436d514601436d5215ac0043'),
('402881e845cc520a0145cc55585c0002', 'MSIE 9.0', '用户admin已退出', 2, '192.168.1.104', '2014-05-05 20:21:56', 1, '4028d881436d514601436d5215ac0043'),
('402881e845cc520a0145cc5569f20003', 'MSIE 9.0', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-05 20:22:00', 1, '4028d881436d514601436d5215ac0043'),
('402881e845cc520a0145cc62d2900004', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-05 20:36:39', 1, '4028d881436d514601436d5215ac0043'),
('402881e845cc65050145cc659b8d0000', 'MSIE 9.0', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-05 20:39:42', 1, '4028d881436d514601436d5215ac0043'),
('402881e845cc8bf40145cc8cb0750000', 'MSIE 9.0', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-05 21:22:23', 1, '4028d881436d514601436d5215ac0043'),
('402881e845cc8bf40145cc8cfdcd0001', 'MSIE 9.0', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-05 21:22:43', 1, '4028d881436d514601436d5215ac0043'),
('402881e845cc8bf40145cc8e41100002', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-05 21:24:06', 1, '4028d881436d514601436d5215ac0043'),
('402881e845d1456d0145d14949e90000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-06 19:26:52', 1, '4028d881436d514601436d5215ac0043'),
('402881e845d1698f0145d16a1d380000', 'MSIE 9.0', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-06 20:02:43', 1, '4028d881436d514601436d5215ac0043'),
('402881e845d16aef0145d16b87370000', 'MSIE 9.0', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-06 20:04:16', 1, '4028d881436d514601436d5215ac0043'),
('402881e845d16cb10145d16d0af40000', 'MSIE 9.0', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-06 20:05:55', 1, '4028d881436d514601436d5215ac0043'),
('402881e845d16cb10145d1711cc60001', 'MSIE 9.0', 'accountid删除成功', 4, '192.168.1.104', '2014-05-06 20:10:22', 1, '4028d881436d514601436d5215ac0043'),
('402881e845d16cb10145d1711eb90005', 'MSIE 9.0', '修改成功', 5, '192.168.1.104', '2014-05-06 20:10:22', 1, '4028d881436d514601436d5215ac0043'),
('402881e845d1723e0145d172b10f0000', 'MSIE 9.0', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-06 20:12:05', 1, '4028d881436d514601436d5215ac0043'),
('402881e845d1723e0145d18f52a70017', 'MSIE 9.0', '用户admin已退出', 2, '192.168.1.104', '2014-05-06 20:43:22', 1, '4028d881436d514601436d5215ac0043'),
('402881e845d1723e0145d18f649e0018', 'MSIE 9.0', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-06 20:43:26', 1, '4028d881436d514601436d5215ac0043'),
('402881e845d1723e0145d199f2b7001a', 'MSIE 9.0', '用户admin已退出', 2, '192.168.1.104', '2014-05-06 20:54:58', 1, '4028d881436d514601436d5215ac0043'),
('402881e845d1723e0145d19a0626001b', 'MSIE 9.0', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-06 20:55:03', 1, '4028d881436d514601436d5215ac0043'),
('402881e845d6fbb90145d6fe287f0000', 'MSIE 9.0', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-07 22:02:31', 1, '4028d881436d514601436d5215ac0043'),
('402881e8460d7e5301460d7f42d70000', 'MSIE 7.0', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-18 12:03:02', 1, '4028d881436d514601436d5215ac0043'),
('402881e8460d7e5301460d81c7d60002', 'MSIE 7.0', '权限: 关键字管理被添加成功', 3, '192.168.1.104', '2014-05-18 12:05:47', 1, '4028d881436d514601436d5215ac0043'),
('402881e8460d7e5301460d8341ce0004', 'MSIE 7.0', '用户admin已退出', 2, '192.168.1.104', '2014-05-18 12:07:24', 1, '4028d881436d514601436d5215ac0043'),
('402881e8460d7e5301460d83568b0005', 'MSIE 7.0', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-18 12:07:29', 1, '4028d881436d514601436d5215ac0043'),
('402881e8460d83c701460d85afbd0000', 'MSIE 7.0', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-18 12:10:03', 1, '4028d881436d514601436d5215ac0043'),
('402881e8460d83c701460d89f1580001', 'MSIE 7.0', '修改关文本模板成功！', 5, '192.168.1.104', '2014-05-18 12:14:42', 1, '4028d881436d514601436d5215ac0043'),
('402881e8460d83c701460e06cd630002', 'MSIE 7.0', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-18 14:31:05', 1, '4028d881436d514601436d5215ac0043'),
('402881e8460d83c701460e075e2f0003', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-18 14:31:42', 1, '4028d881436d514601436d5215ac0043'),
('402881e8460d83c701460e08fc770005', 'Chrome', '权限: 关注欢迎语被更新成功', 5, '192.168.1.104', '2014-05-18 14:33:28', 1, '4028d881436d514601436d5215ac0043'),
('402881e8460e097d01460e0b37850000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-18 14:35:54', 1, '4028d881436d514601436d5215ac0043'),
('402881e8460e097d01460e0be28c0001', 'Chrome', '用户admin已退出', 2, '192.168.1.104', '2014-05-18 14:36:38', 1, '4028d881436d514601436d5215ac0043'),
('402881e8460e097d01460e0c00cf0002', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-18 14:36:46', 1, '4028d881436d514601436d5215ac0043'),
('402881e8460e097d01460e0f35f50003', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-18 14:40:16', 1, '4028d881436d514601436d5215ac0043'),
('402881e8460e102a01460e107e860000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-18 14:41:40', 1, '4028d881436d514601436d5215ac0043'),
('402881e8460f865501460f8c923d0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-18 21:36:49', 1, '4028d881436d514601436d5215ac0043'),
('402881e84617910601461791f8fe0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-20 10:59:40', 1, '4028d881436d514601436d5215ac0043'),
('402881e846181e710146182023a70000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-20 13:34:57', 1, '4028d881436d514601436d5215ac0043'),
('402881e84618d367014618d3f08e0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-20 16:51:21', 1, '4028d881436d514601436d5215ac0043'),
('402881e84618da56014618dacb830000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-20 16:58:50', 1, '4028d881436d514601436d5215ac0043'),
('402881e84618e0e5014618e146e80000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-20 17:05:55', 1, '4028d881436d514601436d5215ac0043'),
('402881e84618e481014618e4ef4d0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-20 17:09:55', 1, '4028d881436d514601436d5215ac0043'),
('402881e84619037b01461903dc000000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-20 17:43:41', 1, '4028d881436d514601436d5215ac0043'),
('402881e846190c670146190ce4670000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-20 17:53:33', 1, '4028d881436d514601436d5215ac0043'),
('402881e8461911f00146191305010000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-20 18:00:15', 1, '4028d881436d514601436d5215ac0043'),
('402881e8461919800146191a5a070000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-20 18:08:15', 1, '4028d881436d514601436d5215ac0043'),
('402881e8461921b80146192242490000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-20 18:16:54', 1, '4028d881436d514601436d5215ac0043'),
('402881e8461926590146192744fc0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-20 18:22:22', 1, '4028d881436d514601436d5215ac0043'),
('402881e8461931a3014619328a900000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-20 18:34:41', 1, '4028d881436d514601436d5215ac0043'),
('402881e846193d530146193db2b90000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-20 18:46:52', 1, '4028d881436d514601436d5215ac0043'),
('402881e846194295014619430b350000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-20 18:52:42', 1, '4028d881436d514601436d5215ac0043'),
('402881e846194a3a0146194a96b10000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-20 19:00:57', 1, '4028d881436d514601436d5215ac0043'),
('402881e846194ec30146194fb3000000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-20 19:06:32', 1, '4028d881436d514601436d5215ac0043'),
('402881e84619622701461962f69c0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-20 19:27:34', 1, '4028d881436d514601436d5215ac0043'),
('402881e84619666e01461966e3eb0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-20 19:31:51', 1, '4028d881436d514601436d5215ac0043'),
('402881e8461c3ba101461c3dbb7f0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-21 08:45:46', 1, '4028d881436d514601436d5215ac0043'),
('402881e8461c3ba101461c3e522f0001', 'Chrome', '权限: 取消关注回复语被删除成功', 4, '192.168.1.104', '2014-05-21 08:46:24', 1, '4028d881436d514601436d5215ac0043'),
('402881e8461c3ba101461c3e93b90002', 'Chrome', '权限: 素材管理被删除成功', 4, '192.168.1.104', '2014-05-21 08:46:41', 1, '4028d881436d514601436d5215ac0043'),
('402881e8461c3ba101461c3f2b950003', 'Chrome', '权限: 关键字应答被删除成功', 4, '192.168.1.104', '2014-05-21 08:47:20', 1, '4028d881436d514601436d5215ac0043'),
('402881e8461c3ba101461c3f386f0004', 'Chrome', '权限: 关键字应答被删除成功', 4, '192.168.1.104', '2014-05-21 08:47:23', 1, '4028d881436d514601436d5215ac0043'),
('402881e8461c3ba101461c3f63830005', 'Chrome', '权限: 自动应答菜单被删除成功', 4, '192.168.1.104', '2014-05-21 08:47:34', 1, '4028d881436d514601436d5215ac0043'),
('402881e8461c3ba101461c4221ca0006', 'Chrome', '用户admin已退出', 2, '192.168.1.104', '2014-05-21 08:50:34', 1, '4028d881436d514601436d5215ac0043'),
('402881e8461c3ba101461c42339b0007', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.104', '2014-05-21 08:50:39', 1, '4028d881436d514601436d5215ac0043'),
('402881e946dd8ecc0146dd8f7e9c0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.105', '2014-06-27 21:41:47', 1, '4028d881436d514601436d5215ac0043'),
('402881e946ddc9450146ddcae3540000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.105', '2014-06-27 22:46:39', 1, '4028d881436d514601436d5215ac0043'),
('402881e946ddea480146ddefa0bb0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.105', '2014-06-27 23:26:47', 1, '4028d881436d514601436d5215ac0043'),
('402881e946ddea480146ddf07b620002', 'Chrome', '首页广告更新成功', 5, '192.168.1.105', '2014-06-27 23:27:43', 1, '4028d881436d514601436d5215ac0043'),
('402881e946ddea480146ddf741ac0004', 'Chrome', '首页广告更新成功', 5, '192.168.1.105', '2014-06-27 23:35:07', 1, '4028d881436d514601436d5215ac0043'),
('402881e946ddea480146ddf99c4c0006', 'Chrome', '首页广告更新成功', 5, '192.168.1.105', '2014-06-27 23:37:41', 1, '4028d881436d514601436d5215ac0043'),
('402881e946ddea480146ddf9b7370007', 'Chrome', '首页广告更新成功', 5, '192.168.1.105', '2014-06-27 23:37:48', 1, '4028d881436d514601436d5215ac0043'),
('402881e946ddea480146de0300b30009', 'Chrome', '首页广告更新成功', 5, '192.168.1.105', '2014-06-27 23:47:57', 1, '4028d881436d514601436d5215ac0043'),
('402881e946ddea480146de05329b000c', 'Chrome', '首页广告添加成功', 3, '192.168.1.105', '2014-06-27 23:50:21', 1, '4028d881436d514601436d5215ac0043'),
('402881e946ddea480146de099ce5000d', 'Chrome', '首页广告删除成功', 4, '192.168.1.105', '2014-06-27 23:55:10', 1, '4028d881436d514601436d5215ac0043'),
('402881e946ddea480146de09fe7c000f', 'Chrome', '首页广告更新成功', 5, '192.168.1.105', '2014-06-27 23:55:35', 1, '4028d881436d514601436d5215ac0043'),
('402881e946ddea480146de0f3ab60012', 'Chrome', '首页广告添加成功', 3, '192.168.1.105', '2014-06-28 00:01:18', 1, '4028d881436d514601436d5215ac0043'),
('402881e946e2a2360146e2a404f30000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.105', '2014-06-28 21:22:18', 1, '4028d881436d514601436d5215ac0043'),
('402881e946e2a2360146e2af4be30001', 'Chrome', '用户admin已退出', 2, '192.168.1.105', '2014-06-28 21:34:37', 1, '4028d881436d514601436d5215ac0043'),
('402881e946e2a2360146e2af66d80002', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.105', '2014-06-28 21:34:44', 1, '4028d881436d514601436d5215ac0043'),
('402881e946e2a2360146e2ca1bc00003', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.105', '2014-06-28 22:03:54', 1, '4028d881436d514601436d5215ac0043'),
('402881e946e2a2360146e2caeb950005', 'Chrome', '修改图文模板成功！', 5, '192.168.1.105', '2014-06-28 22:04:47', 1, '4028d881436d514601436d5215ac0043'),
('402881e946ecbe530146ecc60c9d0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.105', '2014-06-30 20:35:40', 1, '4028d881436d514601436d5215ac0043'),
('402881e946ecbe530146ecc6149a0001', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.105', '2014-06-30 20:35:42', 1, '4028d881436d514601436d5215ac0043'),
('402881e946f72f8e0146f73230170000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.105', '2014-07-02 21:09:59', 1, '4028d881436d514601436d5215ac0043'),
('402881e946f72f8e0146f7403e600004', 'Chrome', '用户admin已退出', 2, '192.168.1.105', '2014-07-02 21:25:21', 1, '4028d881436d514601436d5215ac0043'),
('402881e946f72f8e0146f7406e8d0005', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.105', '2014-07-02 21:25:33', 1, '4028d881436d514601436d5215ac0043'),
('402881e946f72f8e0146f74632e60012', 'Chrome', '创建成功', 3, '192.168.1.105', '2014-07-02 21:31:51', 1, '4028d881436d514601436d5215ac0043'),
('402881e946f749a30146f752151d0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.105', '2014-07-02 21:44:50', 1, '4028d881436d514601436d5215ac0043'),
('402881e946f755ae0146f758cf830000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.105', '2014-07-02 21:52:11', 1, '4028d881436d514601436d5215ac0043'),
('402881e946f7bcb20146f7c69ad30000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.105', '2014-07-02 23:52:06', 1, '4028d881436d514601436d5215ac0043'),
('402881e946f7bcb20146f7c763c10002', 'Chrome', '权限: 微信商城被添加成功', 3, '192.168.1.105', '2014-07-02 23:52:58', 1, '4028d881436d514601436d5215ac0043'),
('402881e946f7bcb20146f7c8c0380004', 'Chrome', '权限: 商品类别被添加成功', 3, '192.168.1.105', '2014-07-02 23:54:27', 1, '4028d881436d514601436d5215ac0043'),
('402881e946f7bcb20146f7c9992d0007', 'Chrome', '用户admin已退出', 2, '192.168.1.105', '2014-07-02 23:55:22', 1, '4028d881436d514601436d5215ac0043'),
('402881e946f7bcb20146f7c9c6580008', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.105', '2014-07-02 23:55:34', 1, '4028d881436d514601436d5215ac0043'),
('402881e946f7bcb20146f7ceb045000b', 'Chrome', '商品分类添加成功', 3, '192.168.1.105', '2014-07-03 00:00:56', 1, '4028d881436d514601436d5215ac0043'),
('402881e9470133a7014701375b910000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.105', '2014-07-04 19:51:50', 1, '4028d881436d514601436d5215ac0043'),
('402881e9470133a70147013872f00002', 'Chrome', '商品分类添加成功', 3, '192.168.1.105', '2014-07-04 19:53:02', 1, '4028d881436d514601436d5215ac0043'),
('402881e947015a700147015b65830000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.105', '2014-07-04 20:31:12', 1, '4028d881436d514601436d5215ac0043'),
('402881e947015a700147016148ac0003', 'Chrome', '商品分类添加成功', 3, '192.168.1.105', '2014-07-04 20:37:38', 1, '4028d881436d514601436d5215ac0043'),
('402881e947015a7001470161a84c0006', 'Chrome', '商品分类添加成功', 3, '192.168.1.105', '2014-07-04 20:38:03', 1, '4028d881436d514601436d5215ac0043'),
('402881e947015a7001470164504b0009', 'Chrome', '商品分类添加成功', 3, '192.168.1.105', '2014-07-04 20:40:57', 1, '4028d881436d514601436d5215ac0043'),
('402881e94701b0bc014701b1982e0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.105', '2014-07-04 22:05:21', 1, '4028d881436d514601436d5215ac0043'),
('402881e94701b0bc014701b6eeaa0017', 'Chrome', '创建成功', 3, '192.168.1.105', '2014-07-04 22:11:11', 1, '4028d881436d514601436d5215ac0043'),
('402881e94701b0bc014701ba3eb80018', 'Chrome', '修改成功', 5, '192.168.1.105', '2014-07-04 22:14:48', 1, '4028d881436d514601436d5215ac0043'),
('402881e94701b0bc014701bc19440019', 'Chrome', '修改成功', 5, '192.168.1.105', '2014-07-04 22:16:50', 1, '4028d881436d514601436d5215ac0043'),
('402881e94701df96014701e43b290000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.105', '2014-07-04 23:00:40', 1, '4028d881436d514601436d5215ac0043'),
('402881e94701df96014701e5fec20002', 'Chrome', '权限: 商品信息管理被添加成功', 3, '192.168.1.105', '2014-07-04 23:02:35', 1, '4028d881436d514601436d5215ac0043'),
('402881e94701df96014701e69fe70004', 'Chrome', '用户admin已退出', 2, '192.168.1.105', '2014-07-04 23:03:17', 1, '4028d881436d514601436d5215ac0043'),
('402881e94701df96014701e6b86e0005', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.105', '2014-07-04 23:03:23', 1, '4028d881436d514601436d5215ac0043'),
('402881e94701df96014701f48cee0009', 'Chrome', '商品信息添加成功', 3, '192.168.1.105', '2014-07-04 23:18:29', 1, '4028d881436d514601436d5215ac0043'),
('402881e94701df96014701fcbfc7000b', 'Chrome', '商品信息添加成功', 3, '192.168.1.105', '2014-07-04 23:27:27', 1, '4028d881436d514601436d5215ac0043'),
('402881e94701df96014702080ac0000c', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.105', '2014-07-04 23:39:47', 1, '4028d881436d514601436d5215ac0043'),
('402881e94701df960147020c27b30011', 'Chrome', '商品信息添加成功', 3, '192.168.1.105', '2014-07-04 23:44:16', 1, '4028d881436d514601436d5215ac0043'),
('402881e9470273d2014702840d3a0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.105', '2014-07-05 01:55:14', 1, '4028d881436d514601436d5215ac0043'),
('402881e9470273d201470285fa1a0017', 'Chrome', '用户admin已退出', 2, '192.168.1.105', '2014-07-05 01:57:20', 1, '4028d881436d514601436d5215ac0043'),
('402881e9470273d20147028610cf0018', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.105', '2014-07-05 01:57:26', 1, '4028d881436d514601436d5215ac0043'),
('402881e9470273d201470297db5e001b', 'Chrome', '用户admin已退出', 2, '192.168.1.105', '2014-07-05 02:16:52', 1, '4028d881436d514601436d5215ac0043'),
('402881e9470273d201470297fccb001c', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.105', '2014-07-05 02:17:00', 1, '4028d881436d514601436d5215ac0043'),
('402881e9470273d2014702a94a9f001e', 'Chrome', '扩展接口管理添加成功', 3, '192.168.1.105', '2014-07-05 02:35:54', 1, '4028d881436d514601436d5215ac0043'),
('402881e94702c764014702cd82f20002', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.105', '2014-07-05 03:15:28', 1, '4028d881436d514601436d5215ac0043'),
('402881e94702c764014702ce59e90003', 'Chrome', '商品信息更新成功', 5, '192.168.1.105', '2014-07-05 03:16:23', 1, '4028d881436d514601436d5215ac0043'),
('402881e94702c764014702cf04d50005', 'Chrome', '商品信息更新成功', 5, '192.168.1.105', '2014-07-05 03:17:07', 1, '4028d881436d514601436d5215ac0043'),
('402881e9487d19ab01487d1bd57c0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.105', '2014-09-16 14:17:29', 1, '4028d881436d514601436d5215ac0043'),
('402881e9487d21ed01487d22a04f0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.105', '2014-09-16 14:24:54', 1, '4028d881436d514601436d5215ac0043'),
('402881e9487d257f01487d25cb600000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.105', '2014-09-16 14:28:21', 1, '4028d881436d514601436d5215ac0043'),
('402881e9487dd36401487dec09730000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.105', '2014-09-16 18:04:54', 1, '4028d881436d514601436d5215ac0043'),
('402881e9487dd36401487e0165e60003', 'Chrome', '用户admin已退出', 2, '192.168.1.105', '2014-09-16 18:28:13', 1, '4028d881436d514601436d5215ac0043'),
('402881e9487dd36401487e0193ba0004', 'Chrome', '用户: ceshi[信息部]登录成功', 1, '192.168.1.105', '2014-09-16 18:28:25', 1, '402881e44648134a014648174a45000c'),
('402881e9487dd36401487e01c7940005', 'Chrome', '用户ceshi已退出', 2, '192.168.1.105', '2014-09-16 18:28:38', 1, '402881e44648134a014648174a45000c'),
('402881e9487dd36401487e01e9150006', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.105', '2014-09-16 18:28:47', 1, '4028d881436d514601436d5215ac0043'),
('402881ea4cad964a014cad97027f0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.106', '2015-04-12 20:24:57', 1, '4028d881436d514601436d5215ac0043'),
('402881ea4cad964a014cada416a70002', 'Chrome', '微社区添加成功', 3, '192.168.1.106', '2015-04-12 20:39:14', 1, '4028d881436d514601436d5215ac0043'),
('402881ea4cad964a014cada5703e0003', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.106', '2015-04-12 20:40:42', 1, '4028d881436d514601436d5215ac0043'),
('402881ea4cad964a014cada780cf0004', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.106', '2015-04-12 20:42:58', 1, '4028d881436d514601436d5215ac0043'),
('402881ea4cad964a014cae105e9f0005', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.106', '2015-04-12 22:37:30', 1, '4028d881436d514601436d5215ac0043'),
('402881ea4cad964a014cae12d5e50006', 'Chrome', '微社区更新成功', 5, '192.168.1.106', '2015-04-12 22:40:12', 1, '4028d881436d514601436d5215ac0043'),
('402881ea4cf000a0014cf6161bed0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.106', '2015-04-26 22:16:26', 1, '4028d881436d514601436d5215ac0043'),
('402881ed4d5f9fdc014d5fa1b8210000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.109', '2015-05-17 10:09:03', 1, '4028d881436d514601436d5215ac0043'),
('402881ed4d5f9fdc014d5fa22d700001', 'Chrome', '微信公众帐号信息更新成功', 5, '192.168.1.109', '2015-05-17 10:09:33', 1, '4028d881436d514601436d5215ac0043'),
('402881ed4d5f9fdc014d5fa2c2710002', 'Chrome', '微信公众帐号信息更新成功', 5, '192.168.1.109', '2015-05-17 10:10:11', 1, '4028d881436d514601436d5215ac0043'),
('402881ed4d5f9fdc014d5fa3f9a40003', 'Chrome', '修改关键字回复成功！', 5, '192.168.1.109', '2015-05-17 10:11:31', 1, '4028d881436d514601436d5215ac0043'),
('402881ed4d5f9fdc014d5fa40c0d0004', 'Chrome', '删除信息数据成功！', 4, '192.168.1.109', '2015-05-17 10:11:36', 1, '4028d881436d514601436d5215ac0043'),
('402881ed4d5f9fdc014d5fa414310005', 'Chrome', '删除信息数据成功！', 4, '192.168.1.109', '2015-05-17 10:11:38', 1, '4028d881436d514601436d5215ac0043'),
('402881f34871c7b2014871c859700000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.115', '2014-09-14 09:30:28', 1, '4028d881436d514601436d5215ac0043'),
('402881f34871c7b2014871c876b50001', 'Chrome', '用户admin已退出', 2, '192.168.1.115', '2014-09-14 09:30:36', 1, '4028d881436d514601436d5215ac0043'),
('402881f34871c7b2014871ca4bed0002', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.115', '2014-09-14 09:32:36', 1, '4028d881436d514601436d5215ac0043'),
('402881f34871c7b2014871cac6ea0004', 'Chrome', '活动表添加成功', 3, '192.168.1.115', '2014-09-14 09:33:07', 1, '4028d881436d514601436d5215ac0043'),
('402881f34871c7b2014871cb41c70005', 'Chrome', '中奖记录删除成功', 4, '192.168.1.115', '2014-09-14 09:33:39', 1, '4028d881436d514601436d5215ac0043'),
('402881f34871c7b2014871cb42420006', 'Chrome', '中奖记录删除成功', 4, '192.168.1.115', '2014-09-14 09:33:39', 1, '4028d881436d514601436d5215ac0043'),
('402881f34871c7b2014871cb42e10007', 'Chrome', '中奖记录删除成功', 4, '192.168.1.115', '2014-09-14 09:33:39', 1, '4028d881436d514601436d5215ac0043'),
('402881f34871c7b2014871cb43c40008', 'Chrome', '中奖记录删除成功', 4, '192.168.1.115', '2014-09-14 09:33:39', 1, '4028d881436d514601436d5215ac0043'),
('402881f34871d253014871d62faa0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.115', '2014-09-14 09:45:35', 1, '4028d881436d514601436d5215ac0043'),
('402881f34871d253014871d6ab9b0001', 'Chrome', '活动表更新成功', 5, '192.168.1.115', '2014-09-14 09:46:07', 1, '4028d881436d514601436d5215ac0043'),
('402881f34871d253014871d9791e0003', 'Chrome', '中奖记录添加成功', 3, '192.168.1.115', '2014-09-14 09:49:10', 1, '4028d881436d514601436d5215ac0043'),
('402881f34871d253014871dcc2bb0004', 'Chrome', '活动表删除成功', 4, '192.168.1.115', '2014-09-14 09:52:46', 1, '4028d881436d514601436d5215ac0043'),
('402881f34871d253014871dce1100005', 'Chrome', '活动表删除成功', 4, '192.168.1.115', '2014-09-14 09:52:54', 1, '4028d881436d514601436d5215ac0043'),
('402881f34871d253014871dce1bf0006', 'Chrome', '活动表删除成功', 4, '192.168.1.115', '2014-09-14 09:52:54', 1, '4028d881436d514601436d5215ac0043'),
('402881f34871d253014871dce2330007', 'Chrome', '活动表删除成功', 4, '192.168.1.115', '2014-09-14 09:52:54', 1, '4028d881436d514601436d5215ac0043'),
('402881f34871d253014871dce2e20008', 'Chrome', '活动表删除成功', 4, '192.168.1.115', '2014-09-14 09:52:54', 1, '4028d881436d514601436d5215ac0043'),
('402881f34871d253014871dce3470009', 'Chrome', '活动表删除成功', 4, '192.168.1.115', '2014-09-14 09:52:54', 1, '4028d881436d514601436d5215ac0043'),
('402881f34871d253014871dce3ac000a', 'Chrome', '活动表删除成功', 4, '192.168.1.115', '2014-09-14 09:52:54', 1, '4028d881436d514601436d5215ac0043'),
('402881f34871d253014871dce40f000b', 'Chrome', '活动表删除成功', 4, '192.168.1.115', '2014-09-14 09:52:54', 1, '4028d881436d514601436d5215ac0043'),
('402881f34871d253014871dd0798000c', 'Chrome', '活动表更新成功', 5, '192.168.1.115', '2014-09-14 09:53:03', 1, '4028d881436d514601436d5215ac0043'),
('402881f34871d253014871dd1bd9000d', 'Chrome', '活动表更新成功', 5, '192.168.1.115', '2014-09-14 09:53:09', 1, '4028d881436d514601436d5215ac0043'),
('402881f34871e060014871e23b100000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.115', '2014-09-14 09:58:44', 1, '4028d881436d514601436d5215ac0043'),
('402881f34871e060014871e26c990001', 'Chrome', '活动表更新成功', 5, '192.168.1.115', '2014-09-14 09:58:57', 1, '4028d881436d514601436d5215ac0043'),
('402881f34871e060014871e2baf50003', 'Chrome', '中奖记录添加成功', 3, '192.168.1.115', '2014-09-14 09:59:17', 1, '4028d881436d514601436d5215ac0043'),
('402881f34871e060014871e2dc630004', 'Chrome', '中奖记录删除成功', 4, '192.168.1.115', '2014-09-14 09:59:26', 1, '4028d881436d514601436d5215ac0043'),
('402881f34871e060014871e2dd270005', 'Chrome', '中奖记录删除成功', 4, '192.168.1.115', '2014-09-14 09:59:26', 1, '4028d881436d514601436d5215ac0043'),
('402881f34871e060014871e2f2ec0007', 'Chrome', '中奖记录添加成功', 3, '192.168.1.115', '2014-09-14 09:59:31', 1, '4028d881436d514601436d5215ac0043'),
('402881f34871e6b2014871e7585f0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.115', '2014-09-14 10:04:19', 1, '4028d881436d514601436d5215ac0043'),
('402881f34871e6b2014871f133950003', 'Chrome', '中奖记录更新成功', 5, '192.168.1.115', '2014-09-14 10:15:05', 1, '4028d881436d514601436d5215ac0043'),
('402881f34871e6b2014871f4d4060004', 'Chrome', '用户admin已退出', 2, '192.168.1.115', '2014-09-14 10:19:03', 1, '4028d881436d514601436d5215ac0043'),
('402881f34871e6b2014871f4ed080005', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.115', '2014-09-14 10:19:09', 1, '4028d881436d514601436d5215ac0043'),
('402881f34871f7d0014871f876780000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.115', '2014-09-14 10:23:01', 1, '4028d881436d514601436d5215ac0043'),
('402881f348723a310148723abcf00000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.115', '2014-09-14 11:35:25', 1, '4028d881436d514601436d5215ac0043'),
('402881f3487258400148725e583a0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.115', '2014-09-14 12:14:18', 1, '4028d881436d514601436d5215ac0043'),
('402881f34872fd69014872fe59b40000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.115', '2014-09-14 15:09:04', 1, '4028d881436d514601436d5215ac0043'),
('402881f34872fd69014872febd6d0001', 'Chrome', '中奖记录删除成功', 4, '192.168.1.115', '2014-09-14 15:09:30', 1, '4028d881436d514601436d5215ac0043'),
('402881f34872fd69014872febdc80002', 'Chrome', '中奖记录删除成功', 4, '192.168.1.115', '2014-09-14 15:09:30', 1, '4028d881436d514601436d5215ac0043'),
('402881f34872fd69014872febe240003', 'Chrome', '中奖记录删除成功', 4, '192.168.1.115', '2014-09-14 15:09:30', 1, '4028d881436d514601436d5215ac0043'),
('402881f34872fd69014873006d970009', 'Chrome', '中奖记录删除成功', 4, '192.168.1.115', '2014-09-14 15:11:20', 1, '4028d881436d514601436d5215ac0043'),
('402881f34872fd69014873006dec000a', 'Chrome', '中奖记录删除成功', 4, '192.168.1.115', '2014-09-14 15:11:21', 1, '4028d881436d514601436d5215ac0043'),
('402881f348734046014873439f550000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.115', '2014-09-14 16:24:44', 1, '4028d881436d514601436d5215ac0043'),
('402881fc485d955501485d964c5c0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.1.124', '2014-09-10 11:23:24', 1, '4028d881436d514601436d5215ac0043'),
('40288904471a1d8301471a1e409b0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.132', '2014-07-09 15:54:56', 1, '4028d881436d514601436d5215ac0043'),
('40288904471a20e301471a21ef3d0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.132', '2014-07-09 15:58:57', 1, '4028d881436d514601436d5215ac0043'),
('40288904471a240e01471a25aefb0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.132', '2014-07-09 16:03:03', 1, '4028d881436d514601436d5215ac0043'),
('40288904471a240e01471a25e0680001', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.132', '2014-07-09 16:03:15', 1, '4028d881436d514601436d5215ac0043'),
('40288904471a240e01471a2abcc20002', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.132', '2014-07-09 16:08:34', 1, '4028d881436d514601436d5215ac0043'),
('40288904471a240e01471a2d1e390003', 'Chrome', '商品分类删除成功', 4, '192.168.9.132', '2014-07-09 16:11:10', 1, '4028d881436d514601436d5215ac0043'),
('40288904471a240e01471a2fbd720004', 'Chrome', '商品分类更新成功', 5, '192.168.9.132', '2014-07-09 16:14:02', 1, '4028d881436d514601436d5215ac0043'),
('40288904471a240e01471a2fe1830005', 'Chrome', '商品分类更新成功', 5, '192.168.9.132', '2014-07-09 16:14:11', 1, '4028d881436d514601436d5215ac0043'),
('40288904471a240e01471a3013160006', 'Chrome', '商品分类更新成功', 5, '192.168.9.132', '2014-07-09 16:14:24', 1, '4028d881436d514601436d5215ac0043'),
('40288904471a240e01471a30db7e0008', 'Chrome', '商城会员添加成功', 3, '192.168.9.132', '2014-07-09 16:15:15', 1, '4028d881436d514601436d5215ac0043'),
('40288904471a240e01471a34036e0009', 'Chrome', '商品信息删除成功', 4, '192.168.9.132', '2014-07-09 16:18:42', 1, '4028d881436d514601436d5215ac0043'),
('402889ed472e852301472e85f8ea0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.109', '2014-07-13 15:00:37', 1, '4028d881436d514601436d5215ac0043'),
('402889ed472e852301472e8a050c0001', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.109', '2014-07-13 15:05:02', 1, '4028d881436d514601436d5215ac0043'),
('402889ed472e852301472e90a3080006', 'Firefox', '活动删除成功', 4, '192.168.9.109', '2014-07-13 15:12:16', 1, '4028d881436d514601436d5215ac0043'),
('402889ed472e852301472eae6cef0007', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.109', '2014-07-13 15:44:48', 1, '4028d881436d514601436d5215ac0043'),
('402889ed472e852301472eb0d6bd000f', 'Chrome', '微信单图消息添加成功', 3, '192.168.9.109', '2014-07-13 15:47:27', 1, '4028d881436d514601436d5215ac0043'),
('402889ed472e852301472eb1b2c30010', 'Chrome', '微信单图消息更新成功', 5, '192.168.9.109', '2014-07-13 15:48:23', 1, '4028d881436d514601436d5215ac0043'),
('402889ed472ec2a801472ec328f50000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.109', '2014-07-13 16:07:27', 1, '4028d881436d514601436d5215ac0043'),
('402889ed472ec2a801472ec39f680003', 'Firefox', '微信单图消息添加成功', 3, '192.168.9.109', '2014-07-13 16:07:58', 1, '4028d881436d514601436d5215ac0043'),
('402889ed472ee23401472ee48a410000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.109', '2014-07-13 16:43:55', 1, '4028d881436d514601436d5215ac0043'),
('402889f346dc66c30146dc778e9a0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.115', '2014-06-27 16:36:01', 1, '4028d881436d514601436d5215ac0043'),
('402889f346dc66c30146dc7c1c450003', 'Chrome', '信息添加成功', 3, '192.168.9.115', '2014-06-27 16:40:59', 1, '4028d881436d514601436d5215ac0043'),
('402889f346dc66c30146dc7cd4510007', 'Chrome', '微信单图消息添加成功', 3, '192.168.9.115', '2014-06-27 16:41:46', 1, '4028d881436d514601436d5215ac0043'),
('402889f346dc66c30146dc7cfb05000a', 'Chrome', '微信单图消息添加成功', 3, '192.168.9.115', '2014-06-27 16:41:56', 1, '4028d881436d514601436d5215ac0043'),
('402889f346dc8a220146dc8ac3190000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.115', '2014-06-27 16:56:59', 1, '4028d881436d514601436d5215ac0043'),
('402889f346dc8a220146dc8b16a60001', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.115', '2014-06-27 16:57:21', 1, '4028d881436d514601436d5215ac0043'),
('402889f346dc8a220146dc8d69990002', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.115', '2014-06-27 16:59:53', 1, '4028d881436d514601436d5215ac0043'),
('402889f346dc8a220146dc8d92dd0003', 'Chrome', '用户admin已退出', 2, '192.168.9.115', '2014-06-27 17:00:04', 1, '4028d881436d514601436d5215ac0043'),
('402889f346dc8a220146dc8ea8cc0004', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.115', '2014-06-27 17:01:15', 1, '4028d881436d514601436d5215ac0043'),
('402889f346dc8a220146dc8fec310005', 'Chrome', '用户admin已退出', 2, '192.168.9.115', '2014-06-27 17:02:38', 1, '4028d881436d514601436d5215ac0043'),
('402889f346dc8a220146dc90209a0006', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.115', '2014-06-27 17:02:51', 1, '4028d881436d514601436d5215ac0043'),
('402889f346dc8a220146dc9520650008', 'Chrome', '用户admin已退出', 2, '192.168.9.115', '2014-06-27 17:08:19', 1, '4028d881436d514601436d5215ac0043'),
('402889f346dc8a220146dca372870009', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.115', '2014-06-27 17:23:57', 1, '4028d881436d514601436d5215ac0043'),
('402889f346dc8a220146dca3c44f000a', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.115', '2014-06-27 17:24:18', 1, '4028d881436d514601436d5215ac0043'),
('402889f346dcad7f0146dcade99f0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.115', '2014-06-27 17:35:23', 1, '4028d881436d514601436d5215ac0043'),
('402889f346dcad7f0146dcb414f50001', 'Chrome', '用户admin已退出', 2, '192.168.9.115', '2014-06-27 17:42:07', 1, '4028d881436d514601436d5215ac0043'),
('402889f6474704840147470593110000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.118', '2014-07-18 09:10:53', 1, '4028d881436d514601436d5215ac0043'),
('402889f64747048401474706d41f0002', 'Chrome', '权限: 微站点信息被添加成功', 3, '192.168.9.118', '2014-07-18 09:12:15', 1, '4028d881436d514601436d5215ac0043'),
('402889f6474704840147470790740004', 'Chrome', '权限: 微站点模板被添加成功', 3, '192.168.9.118', '2014-07-18 09:13:03', 1, '4028d881436d514601436d5215ac0043'),
('402889f64747048401474708189c0007', 'Chrome', '用户admin已退出', 2, '192.168.9.118', '2014-07-18 09:13:38', 1, '4028d881436d514601436d5215ac0043'),
('402889f64747048401474708b0170008', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.118', '2014-07-18 09:14:17', 1, '4028d881436d514601436d5215ac0043'),
('402889f64747048401474709458e000b', 'Chrome', '微站点信息添加成功', 3, '192.168.9.118', '2014-07-18 09:14:55', 1, '4028d881436d514601436d5215ac0043'),
('402889f6474704840147470a1bf2000d', 'Chrome', '微站点模板添加成功', 3, '192.168.9.118', '2014-07-18 09:15:50', 1, '4028d881436d514601436d5215ac0043'),
('402889f6474704840147470d620a0011', 'Chrome', '微站点模板添加成功', 3, '192.168.9.118', '2014-07-18 09:19:25', 1, '4028d881436d514601436d5215ac0043'),
('402889f6474704840147470e56d50013', 'Chrome', '微站点模板删除成功', 4, '192.168.9.118', '2014-07-18 09:20:27', 1, '4028d881436d514601436d5215ac0043'),
('402889f6474704840147471009460016', 'Chrome', '微站点模板添加成功', 3, '192.168.9.118', '2014-07-18 09:22:19', 1, '4028d881436d514601436d5215ac0043'),
('402889f647470484014747106a810018', 'Chrome', '微站点模板删除成功', 4, '192.168.9.118', '2014-07-18 09:22:43', 1, '4028d881436d514601436d5215ac0043'),
('402889f647470484014747106ad30019', 'Chrome', '微站点模板删除成功', 4, '192.168.9.118', '2014-07-18 09:22:44', 1, '4028d881436d514601436d5215ac0043'),
('402889f647470484014747129bc6001c', 'Chrome', '微站点模板添加成功', 3, '192.168.9.118', '2014-07-18 09:25:07', 1, '4028d881436d514601436d5215ac0043'),
('402889f64747048401474713109a001e', 'Chrome', '微站点模板删除成功', 4, '192.168.9.118', '2014-07-18 09:25:37', 1, '4028d881436d514601436d5215ac0043'),
('402889f647470484014747137eeb0021', 'Chrome', '微站点模板添加成功', 3, '192.168.9.118', '2014-07-18 09:26:05', 1, '4028d881436d514601436d5215ac0043'),
('402889f64747182f01474718a70d0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.118', '2014-07-18 09:31:43', 1, '4028d881436d514601436d5215ac0043'),
('402889f64747182f0147471918ba0003', 'Chrome', '微站点模板添加成功', 3, '192.168.9.118', '2014-07-18 09:32:12', 1, '4028d881436d514601436d5215ac0043'),
('402889f64747182f01474719c3e00006', 'Chrome', '微站点模板添加成功', 3, '192.168.9.118', '2014-07-18 09:32:56', 1, '4028d881436d514601436d5215ac0043'),
('402889f64747182f01474720a1500008', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.118', '2014-07-18 09:40:26', 1, '4028d881436d514601436d5215ac0043'),
('402889f64747182f01474720c6010009', 'Chrome', '微站点模板删除成功', 4, '192.168.9.118', '2014-07-18 09:40:35', 1, '4028d881436d514601436d5215ac0043'),
('402889f64747182f01474720c65a000a', 'Chrome', '微站点模板删除成功', 4, '192.168.9.118', '2014-07-18 09:40:36', 1, '4028d881436d514601436d5215ac0043'),
('402889f64747182f01474720c6be000b', 'Chrome', '微站点模板删除成功', 4, '192.168.9.118', '2014-07-18 09:40:36', 1, '4028d881436d514601436d5215ac0043'),
('402889f64747182f014747211adc000e', 'Chrome', '微站点模板添加成功', 3, '192.168.9.118', '2014-07-18 09:40:57', 1, '4028d881436d514601436d5215ac0043'),
('402889f6474722ad0147472395130000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.118', '2014-07-18 09:43:40', 1, '4028d881436d514601436d5215ac0043'),
('402889f6474722ad01474723f6e50003', 'Chrome', '微站点模板添加成功', 3, '192.168.9.118', '2014-07-18 09:44:05', 1, '4028d881436d514601436d5215ac0043'),
('402889f6474722ad0147472469ff0005', 'Chrome', '微站点模板删除成功', 4, '192.168.9.118', '2014-07-18 09:44:34', 1, '4028d881436d514601436d5215ac0043'),
('402889f6474722ad014747246a530006', 'Chrome', '微站点模板删除成功', 4, '192.168.9.118', '2014-07-18 09:44:34', 1, '4028d881436d514601436d5215ac0043'),
('402889f6474722ad01474724bd6f0009', 'Chrome', '微站点模板添加成功', 3, '192.168.9.118', '2014-07-18 09:44:55', 1, '4028d881436d514601436d5215ac0043'),
('402889f647c35f450147c3602efd0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.118', '2014-08-11 12:42:46', 1, '4028d881436d514601436d5215ac0043'),
('402889f647c35f450147c37be2270004', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.118', '2014-08-11 13:13:01', 1, '4028d881436d514601436d5215ac0043'),
('402889f647c35f450147c37ecd990005', 'Chrome', '用户admin已退出', 2, '192.168.9.118', '2014-08-11 13:16:13', 1, '4028d881436d514601436d5215ac0043'),
('402889f8476650de0147665143220000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.120', '2014-07-24 11:01:47', 1, '4028d881436d514601436d5215ac0043'),
('402889f8476650de014766568e6c0001', 'Chrome', '用户: ceshi[信息部]登录成功', 1, '192.168.9.120', '2014-07-24 11:07:34', 1, '402881e44648134a014648174a45000c'),
('402889f8476650de01476665e0360003', 'Firefox', '类型分组: 12被添加成功', 3, '192.168.9.120', '2014-07-24 11:24:18', 1, '4028d881436d514601436d5215ac0043'),
('402889f8476650de014766662a910004', 'Firefox', '类型分组: CMS菜单类型被更新成功', 5, '192.168.9.120', '2014-07-24 11:24:37', 1, '4028d881436d514601436d5215ac0043'),
('402889f8476650de01476666acfe0006', 'Firefox', '类型: 单文被添加成功', 3, '192.168.9.120', '2014-07-24 11:25:10', 1, '4028d881436d514601436d5215ac0043'),
('402889f8476650de01476666d5f20008', 'Firefox', '类型: 02被添加成功', 3, '192.168.9.120', '2014-07-24 11:25:21', 1, '4028d881436d514601436d5215ac0043'),
('402889f8476650de014766670a2f0009', 'Firefox', '类型: 多文章被更新成功', 5, '192.168.9.120', '2014-07-24 11:25:34', 1, '4028d881436d514601436d5215ac0043'),
('402889f8476650de014766672fdb000a', 'Firefox', '类型: 单文章被更新成功', 5, '192.168.9.120', '2014-07-24 11:25:44', 1, '4028d881436d514601436d5215ac0043'),
('402889f8476650de01476668df3f000b', 'Firefox', '类型: 多文章被更新成功', 5, '192.168.9.120', '2014-07-24 11:27:34', 1, '4028d881436d514601436d5215ac0043'),
('402889f8476650de01476668faaf000c', 'Firefox', '类型: 单文章被更新成功', 5, '192.168.9.120', '2014-07-24 11:27:41', 1, '4028d881436d514601436d5215ac0043'),
('402889f847666ae40147666c2fd70000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.120', '2014-07-24 11:31:11', 1, '4028d881436d514601436d5215ac0043'),
('402889f847666ae40147666c8b3c0001', 'Firefox', '栏目管理更新成功', 5, '192.168.9.120', '2014-07-24 11:31:35', 1, '4028d881436d514601436d5215ac0043'),
('402889f847666ae40147666e1c530004', 'Firefox', '栏目管理更新成功', 5, '192.168.9.120', '2014-07-24 11:33:18', 1, '4028d881436d514601436d5215ac0043'),
('402889f847666ae40147666f81db0008', 'Firefox', '用户admin已退出', 2, '192.168.9.120', '2014-07-24 11:34:49', 1, '4028d881436d514601436d5215ac0043'),
('402889f847666ae40147666f9c060009', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.120', '2014-07-24 11:34:56', 1, '4028d881436d514601436d5215ac0043'),
('402889f847666ae401476670bbc70014', 'Firefox', '添加成功', 3, '192.168.9.120', '2014-07-24 11:36:09', 1, '4028d881436d514601436d5215ac0043'),
('402889f847666ae4014766daefc80015', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.120', '2014-07-24 13:32:10', 1, '4028d881436d514601436d5215ac0043'),
('402889f847666ae40147670ad1f30016', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.120', '2014-07-24 14:24:28', 1, '4028d881436d514601436d5215ac0043'),
('402889f847666ae401476729c58b001a', 'Firefox', '微站点模板添加成功', 3, '192.168.9.120', '2014-07-24 14:58:16', 1, '4028d881436d514601436d5215ac0043'),
('402889f847666ae40147672f3e19001c', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.120', '2014-07-24 15:04:15', 1, '4028d881436d514601436d5215ac0043'),
('402889f847666ae401476730779a001d', 'Firefox', '微站点模板删除成功', 4, '192.168.9.120', '2014-07-24 15:05:35', 1, '4028d881436d514601436d5215ac0043'),
('402889f847666ae401476730f0870020', 'Firefox', '微站点模板添加成功', 3, '192.168.9.120', '2014-07-24 15:06:06', 1, '4028d881436d514601436d5215ac0043'),
('402889f847666ae40147673af4bd0022', 'Firefox', '微站点信息更新成功', 5, '192.168.9.120', '2014-07-24 15:17:02', 1, '4028d881436d514601436d5215ac0043'),
('402889f84767413b0147674303790000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.120', '2014-07-24 15:25:50', 1, '4028d881436d514601436d5215ac0043'),
('402889f84767413b01476743586f0003', 'Firefox', '栏目管理添加成功', 3, '192.168.9.120', '2014-07-24 15:26:12', 1, '4028d881436d514601436d5215ac0043'),
('402889f84767413b0147674375a50004', 'Firefox', '栏目管理更新成功', 5, '192.168.9.120', '2014-07-24 15:26:20', 1, '4028d881436d514601436d5215ac0043'),
('402889f84767413b014767472de60005', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.120', '2014-07-24 15:30:23', 1, '4028d881436d514601436d5215ac0043'),
('402889f84767413b0147674b45130008', 'Chrome', '用户admin已退出', 2, '192.168.9.120', '2014-07-24 15:34:51', 1, '4028d881436d514601436d5215ac0043'),
('402889f84767413b0147674b61a20009', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.120', '2014-07-24 15:34:59', 1, '4028d881436d514601436d5215ac0043'),
('402889f84767413b0147674ba7f2000a', 'Chrome', '用户admin已退出', 2, '192.168.9.120', '2014-07-24 15:35:17', 1, '4028d881436d514601436d5215ac0043'),
('402889f84767413b0147674c0407000b', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.120', '2014-07-24 15:35:40', 1, '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` (`ID`, `broswer`, `logcontent`, `loglevel`, `note`, `operatetime`, `operatetype`, `userid`) VALUES
('402889f8477ab1ad01477ab2859d0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.120', '2014-07-28 10:00:25', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477ac5b901477ac638de0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.120', '2014-07-28 10:21:56', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477ac5b901477ac6ea2f0001', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.120', '2014-07-28 10:22:42', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477ac5b901477acfe6460002', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.120', '2014-07-28 10:32:31', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477ad29d01477ad7c1830000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.120', '2014-07-28 10:41:05', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477ad29d01477ad88f8d0001', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.120', '2014-07-28 10:41:58', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477ad29d01477ad8e3c70003', 'Chrome', '微站点模板添加成功', 3, '192.168.9.120', '2014-07-28 10:42:20', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477adacf01477addfd2f0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.120', '2014-07-28 10:47:54', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477adacf01477ade1a860001', 'Chrome', '微站点模板删除成功', 4, '192.168.9.120', '2014-07-28 10:48:01', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477aea1d01477aea8c990000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.120', '2014-07-28 11:01:37', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477afa0601477afa80070000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.120', '2014-07-28 11:19:02', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477b065001477b06cd560000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.120', '2014-07-28 11:32:29', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477b08ad01477b0908670000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.120', '2014-07-28 11:34:55', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477b0c1f01477b0ca6ae0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.120', '2014-07-28 11:38:52', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477b0c1f01477b0ded290001', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.120', '2014-07-28 11:40:16', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477b0c1f01477b0e084a0002', 'Chrome', '微站点模板删除成功', 4, '192.168.9.120', '2014-07-28 11:40:22', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477b0c1f01477b0e43cb0005', 'Chrome', '微站点模板添加成功', 3, '192.168.9.120', '2014-07-28 11:40:38', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477b0fc001477b101c450000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.120', '2014-07-28 11:42:39', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477b5b5b01477b5c03060000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.120', '2014-07-28 13:05:33', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477b5b5b01477b5c93980001', 'Chrome', '微站点模板删除成功', 4, '192.168.9.120', '2014-07-28 13:06:10', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477b5b5b01477b5d01af0005', 'Chrome', '微站点模板添加成功', 3, '192.168.9.120', '2014-07-28 13:06:38', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477b5b5b01477b5e68790007', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.120', '2014-07-28 13:08:10', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477b5b5b01477b5ec8360008', 'Chrome', '微站点模板删除成功', 4, '192.168.9.120', '2014-07-28 13:08:34', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477b5b5b01477b5efcf3000b', 'Chrome', '微站点模板添加成功', 3, '192.168.9.120', '2014-07-28 13:08:48', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477b66e201477b67504a0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.120', '2014-07-28 13:17:54', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477b66e201477b678dea0001', 'Chrome', '微站点模板更新成功', 5, '192.168.9.120', '2014-07-28 13:18:09', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477b681801477b68a1ce0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.120', '2014-07-28 13:19:20', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477b681801477b68c3960001', 'Chrome', '微站点模板删除成功', 4, '192.168.9.120', '2014-07-28 13:19:29', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477b681801477b692cf90004', 'Chrome', '微站点模板添加成功', 3, '192.168.9.120', '2014-07-28 13:19:56', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477b6c5401477b6cf5b70000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.120', '2014-07-28 13:24:04', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477b6c5401477b6d1c880001', 'Chrome', '微站点模板删除成功', 4, '192.168.9.120', '2014-07-28 13:24:14', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477b6c5401477b6d4e880004', 'Chrome', '微站点模板添加成功', 3, '192.168.9.120', '2014-07-28 13:24:26', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477b6e4e01477b6ebcc00000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.120', '2014-07-28 13:26:00', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477b6e4e01477b6f0a720003', 'Chrome', '微站点模板添加成功', 3, '192.168.9.120', '2014-07-28 13:26:20', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477b70aa01477b7196420000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.120', '2014-07-28 13:29:07', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477b70aa01477b71b6460001', 'Chrome', '微站点模板删除成功', 4, '192.168.9.120', '2014-07-28 13:29:15', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477b70aa01477b71bede0002', 'Chrome', '微站点模板删除成功', 4, '192.168.9.120', '2014-07-28 13:29:17', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477b70aa01477b71edd70005', 'Chrome', '微站点模板添加成功', 3, '192.168.9.120', '2014-07-28 13:29:29', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477b70aa01477b7264fb0007', 'Chrome', '微站点模板更新成功', 5, '192.168.9.120', '2014-07-28 13:30:00', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477b70aa01477b729a7f0008', 'Chrome', '微站点模板删除成功', 4, '192.168.9.120', '2014-07-28 13:30:14', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477b70aa01477b75c50c000b', 'Chrome', '微站点模板添加成功', 3, '192.168.9.120', '2014-07-28 13:33:41', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477c283701477c28cc230000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.120', '2014-07-28 16:49:14', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477c283701477c28ea980001', 'Chrome', '微站点模板删除成功', 4, '192.168.9.120', '2014-07-28 16:49:22', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477c283701477c2989d70004', 'Chrome', '微站点模板添加成功', 3, '192.168.9.120', '2014-07-28 16:50:02', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477c283701477c2a4e0b0006', 'Chrome', '微站点模板更新成功', 5, '192.168.9.120', '2014-07-28 16:50:53', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477c283701477c2a81970009', 'Chrome', '微站点模板添加成功', 3, '192.168.9.120', '2014-07-28 16:51:06', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477c283701477c2b9bc0000d', 'Chrome', '微站点模板添加成功', 3, '192.168.9.120', '2014-07-28 16:52:18', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477c283701477c2e7144000f', 'Chrome', '微站点模板删除成功', 4, '192.168.9.120', '2014-07-28 16:55:24', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477c283701477c2e76b70010', 'Chrome', '微站点模板删除成功', 4, '192.168.9.120', '2014-07-28 16:55:25', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477c283701477c2e7dbf0011', 'Chrome', '微站点模板删除成功', 4, '192.168.9.120', '2014-07-28 16:55:27', 1, '4028d881436d514601436d5215ac0043'),
('402889f8477c283701477c2eb0f20014', 'Chrome', '微站点模板添加成功', 3, '192.168.9.120', '2014-07-28 16:55:40', 1, '4028d881436d514601436d5215ac0043'),
('402889fa47e7803c0147e782cac30000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.122', '2014-08-18 13:06:54', 1, '4028d881436d514601436d5215ac0043'),
('402889fb47c8e4550147c8e52bf70000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.123', '2014-08-12 14:26:07', 1, '4028d881436d514601436d5215ac0043'),
('402889fb47c910700147c910e5c70000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.123', '2014-08-12 15:13:53', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480b38e101480b397f950000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.123', '2014-08-25 11:33:10', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480b38e101480b85860a0001', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.123', '2014-08-25 12:56:13', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bc77a01480bc8b3690000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.123', '2014-08-25 14:09:35', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bc77a01480bd622720001', 'Chrome', '微相册更新成功', 5, '192.168.9.123', '2014-08-25 14:24:15', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bc77a01480bd64be60002', 'Chrome', '相片更新成功', 5, '192.168.9.123', '2014-08-25 14:24:26', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bc77a01480bd6aebe0003', 'Chrome', '相片更新成功', 5, '192.168.9.123', '2014-08-25 14:24:51', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bc77a01480bd802980012', 'Chrome', '用户admin已退出', 2, '192.168.9.123', '2014-08-25 14:26:18', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bc77a01480bd828090013', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.123', '2014-08-25 14:26:28', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bc77a01480bda5e560015', 'Chrome', '添加成功', 3, '192.168.9.123', '2014-08-25 14:28:53', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bc77a01480bda79950017', 'Chrome', '相片更新成功', 5, '192.168.9.123', '2014-08-25 14:29:00', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bef0c01480befab000000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.123', '2014-08-25 14:52:09', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bef0c01480bf0d9ea0001', 'Chrome', '删除信息数据成功！', 4, '192.168.9.123', '2014-08-25 14:53:26', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bef0c01480bf1d3da0003', 'Chrome', '留言信息添加成功', 3, '192.168.9.123', '2014-08-25 14:54:30', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bef0c01480bf49fbe0004', 'Chrome', '用户admin已退出', 2, '192.168.9.123', '2014-08-25 14:57:34', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bef0c01480bf676030005', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.123', '2014-08-25 14:59:34', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bef0c01480bf7eea90006', 'Chrome', '用户admin已退出', 2, '192.168.9.123', '2014-08-25 15:01:10', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c0417870000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.123', '2014-08-25 15:14:27', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c090f060002', 'Chrome', '权限: 微留言被更新成功', 5, '192.168.9.123', '2014-08-25 15:19:53', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c0997c60003', 'Chrome', '权限: 优惠劵被更新成功', 5, '192.168.9.123', '2014-08-25 15:20:28', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c09a5f60004', 'Chrome', '权限: 促销被删除成功', 4, '192.168.9.123', '2014-08-25 15:20:31', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c09b3430005', 'Chrome', '用户admin已退出', 2, '192.168.9.123', '2014-08-25 15:20:35', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c09f2670006', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.123', '2014-08-25 15:20:51', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c0bf5610007', 'Chrome', '权限: 管家配置中心被更新成功', 5, '192.168.9.123', '2014-08-25 15:23:03', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c0d69730008', 'Chrome', '权限: 微信公众账号被更新成功', 5, '192.168.9.123', '2014-08-25 15:24:38', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c0e28110009', 'Chrome', '权限: 自定义菜单被更新成功', 5, '192.168.9.123', '2014-08-25 15:25:27', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c0e318a000a', 'Chrome', '权限: 菜单管理被删除成功', 4, '192.168.9.123', '2014-08-25 15:25:29', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c0ede78000b', 'Chrome', '权限: 企业资料被删除成功', 4, '192.168.9.123', '2014-08-25 15:26:14', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c0f139e000c', 'Chrome', '权限: 公众帐号管理被更新成功', 5, '192.168.9.123', '2014-08-25 15:26:27', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c0f2d5f000d', 'Chrome', '权限: 微信公众账号被删除成功', 4, '192.168.9.123', '2014-08-25 15:26:34', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c0f37bd000e', 'Chrome', '用户admin已退出', 2, '192.168.9.123', '2014-08-25 15:26:36', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c0f721b000f', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.123', '2014-08-25 15:26:51', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c0fd80c0010', 'Chrome', '权限: 微配置中心被更新成功', 5, '192.168.9.123', '2014-08-25 15:27:18', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c0fe3a60011', 'Chrome', '用户admin已退出', 2, '192.168.9.123', '2014-08-25 15:27:20', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c0fff020012', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.123', '2014-08-25 15:27:28', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c111f960013', 'Chrome', '权限: 微信消息素材被更新成功', 5, '192.168.9.123', '2014-08-25 15:28:41', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c112a840014', 'Chrome', '用户admin已退出', 2, '192.168.9.123', '2014-08-25 15:28:44', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c115b900015', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.123', '2014-08-25 15:28:57', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c1409740016', 'Chrome', '权限: 微信消息素材被更新成功', 5, '192.168.9.123', '2014-08-25 15:31:52', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c1415a10017', 'Chrome', '用户admin已退出', 2, '192.168.9.123', '2014-08-25 15:31:55', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c142d950018', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.123', '2014-08-25 15:32:02', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c1585e50019', 'Chrome', '权限: 微消息素材被更新成功', 5, '192.168.9.123', '2014-08-25 15:33:30', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c15cf7e001a', 'Chrome', '权限: 消息管理被更新成功', 5, '192.168.9.123', '2014-08-25 15:33:49', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c15f229001b', 'Chrome', '权限: 素材管理被更新成功', 5, '192.168.9.123', '2014-08-25 15:33:57', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c178ea7001c', 'Chrome', '权限: 会员中心被更新成功', 5, '192.168.9.123', '2014-08-25 15:35:43', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c17dc2b001d', 'Chrome', '权限: 微用户管理被更新成功', 5, '192.168.9.123', '2014-08-25 15:36:03', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c1824f5001e', 'Chrome', '权限: 用户概况被删除成功', 4, '192.168.9.123', '2014-08-25 15:36:22', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c183418001f', 'Chrome', '权限: 用户分组被删除成功', 4, '192.168.9.123', '2014-08-25 15:36:25', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c1840450020', 'Chrome', '权限: 会话记录被删除成功', 4, '192.168.9.123', '2014-08-25 15:36:28', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c1875ea0021', 'Chrome', '权限: 关注用户管理被更新成功', 5, '192.168.9.123', '2014-08-25 15:36:42', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c18ab010022', 'Chrome', '权限: 用户分组管理被更新成功', 5, '192.168.9.123', '2014-08-25 15:36:56', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c18ecb00023', 'Chrome', '权限: 接收消息管理被更新成功', 5, '192.168.9.123', '2014-08-25 15:37:13', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c1998c50025', 'Chrome', '权限: 高级接口被添加成功', 3, '192.168.9.123', '2014-08-25 15:37:57', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c1a06990026', 'Chrome', '权限: 高级接口被删除成功', 4, '192.168.9.123', '2014-08-25 15:38:25', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c1a25eb0027', 'Chrome', '权限: 高级接口被更新成功', 5, '192.168.9.123', '2014-08-25 15:38:33', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c1aa0cc0028', 'Chrome', '权限: 业务扩展接口管理被更新成功', 5, '192.168.9.123', '2014-08-25 15:39:04', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c1ad0e90029', 'Chrome', '权限: 业务扩展接口管理被更新成功', 5, '192.168.9.123', '2014-08-25 15:39:17', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c1b5bff002a', 'Chrome', '用户admin已退出', 2, '192.168.9.123', '2014-08-25 15:39:52', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c1bd1e6002b', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.123', '2014-08-25 15:40:22', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c1c9c52002c', 'Chrome', '权限: 周边管理被更新成功', 5, '192.168.9.123', '2014-08-25 15:41:14', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c1cac2e002d', 'Chrome', '用户admin已退出', 2, '192.168.9.123', '2014-08-25 15:41:18', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c1ceaa2002e', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.123', '2014-08-25 15:41:34', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c1d54cc002f', 'Chrome', '权限: 微配置中心被更新成功', 5, '192.168.9.123', '2014-08-25 15:42:01', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c1d798c0030', 'Chrome', '权限: 微消息素材被更新成功', 5, '192.168.9.123', '2014-08-25 15:42:11', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c1d9f7f0031', 'Chrome', '权限: 微活动被更新成功', 5, '192.168.9.123', '2014-08-25 15:42:21', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c1db7540032', 'Chrome', '权限: 高级接口被更新成功', 5, '192.168.9.123', '2014-08-25 15:42:27', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c1dcdc20033', 'Chrome', '权限: 微信网站被更新成功', 5, '192.168.9.123', '2014-08-25 15:42:32', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c1df45e0034', 'Chrome', '权限: 微信商城被更新成功', 5, '192.168.9.123', '2014-08-25 15:42:42', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c1e101a0035', 'Chrome', '权限: 统计分析被更新成功', 5, '192.168.9.123', '2014-08-25 15:42:49', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c1e2ee30036', 'Chrome', '权限: 发送消息被更新成功', 5, '192.168.9.123', '2014-08-25 15:42:57', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c1e48160037', 'Chrome', '权限: 二维码推广被更新成功', 5, '192.168.9.123', '2014-08-25 15:43:04', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c1e62970038', 'Chrome', '权限: 会员卡被更新成功', 5, '192.168.9.123', '2014-08-25 15:43:10', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c1e87c10039', 'Chrome', '权限: 常用示例被更新成功', 5, '192.168.9.123', '2014-08-25 15:43:20', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c1e9109003a', 'Chrome', '用户admin已退出', 2, '192.168.9.123', '2014-08-25 15:43:22', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c1f3286003b', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.123', '2014-08-25 15:44:04', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c2125fa003c', 'Chrome', '相片删除成功', 4, '192.168.9.123', '2014-08-25 15:46:12', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c212d24003d', 'Chrome', '相片删除成功', 4, '192.168.9.123', '2014-08-25 15:46:13', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c2143cd003e', 'Chrome', '微相册删除成功', 4, '192.168.9.123', '2014-08-25 15:46:19', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c216e0e003f', 'Chrome', '相片删除成功', 4, '192.168.9.123', '2014-08-25 15:46:30', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c217d830040', 'Chrome', '相片删除成功', 4, '192.168.9.123', '2014-08-25 15:46:34', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c2184f10041', 'Chrome', '相片删除成功', 4, '192.168.9.123', '2014-08-25 15:46:36', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c21b69d0042', 'Chrome', '微相册删除成功', 4, '192.168.9.123', '2014-08-25 15:46:49', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c22d1220044', 'Chrome', '微相册添加成功', 3, '192.168.9.123', '2014-08-25 15:48:01', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c22ff9d0046', 'Chrome', '添加成功', 3, '192.168.9.123', '2014-08-25 15:48:13', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c2331c90049', 'Chrome', '添加成功', 3, '192.168.9.123', '2014-08-25 15:48:26', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c237bff004b', 'Chrome', '相片更新成功', 5, '192.168.9.123', '2014-08-25 15:48:45', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c2e877d004c', 'Chrome', '权限: 微营销被更新成功', 5, '192.168.9.123', '2014-08-25 16:00:49', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c30b762004d', 'Chrome', '权限: 微商城被更新成功', 5, '192.168.9.123', '2014-08-25 16:03:12', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c30cc6a004e', 'Chrome', '权限: 微网站被更新成功', 5, '192.168.9.123', '2014-08-25 16:03:17', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c313f25004f', 'Chrome', '用户admin已退出', 2, '192.168.9.123', '2014-08-25 16:03:47', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c321f640050', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.123', '2014-08-25 16:04:44', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c32d3a50052', 'Chrome', '用户admin已退出', 2, '192.168.9.123', '2014-08-25 16:05:30', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480bfaf001480c32ec090053', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.123', '2014-08-25 16:05:36', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480c38fa01480c394d1b0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.123', '2014-08-25 16:12:34', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480c38fa01480c3cc6300001', 'Chrome', '同步菜单信息数据成功！', 4, '192.168.9.123', '2014-08-25 16:16:22', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480c38fa01480c3da7e70002', 'Chrome', '权限: 周边管理被更新成功', 5, '192.168.9.123', '2014-08-25 16:17:20', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480c40eb01480c4184ef0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.123', '2014-08-25 16:21:33', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480c527801480c52d88d0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.123', '2014-08-25 16:40:29', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480c663e01480c66e9760000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.123', '2014-08-25 17:02:24', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480c663e01480c6824840001', 'Chrome', '更新快速开发平台的菜单信息信息成功！', 5, '192.168.9.123', '2014-08-25 17:03:44', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480c663e01480c68597c0002', 'Chrome', '更新开源微信系统的菜单信息信息成功！', 5, '192.168.9.123', '2014-08-25 17:03:58', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480c663e01480c697c870003', 'Chrome', '更新社区培训的菜单信息信息成功！', 5, '192.168.9.123', '2014-08-25 17:05:12', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480c710301480c715e800000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.123', '2014-08-25 17:13:49', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480c710301480c71cc670001', 'Chrome', '更新开源项目的菜单信息信息成功！', 5, '192.168.9.123', '2014-08-25 17:14:17', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480c710301480c73e5c10002', 'Chrome', '同步菜单信息数据失败！错误码为：40001错误信息为：invalid credential', 4, '192.168.9.123', '2014-08-25 17:16:35', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480c710301480c7444900003', 'Chrome', '同步菜单信息数据失败！错误码为：40001错误信息为：invalid credential', 4, '192.168.9.123', '2014-08-25 17:16:59', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480c710301480c74fe910004', 'Chrome', '同步菜单信息数据失败！错误码为：40001错误信息为：invalid credential', 4, '192.168.9.123', '2014-08-25 17:17:47', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480c710301480c75cfea0005', 'Chrome', '微信公众帐号信息更新成功', 5, '192.168.9.123', '2014-08-25 17:18:40', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480c710301480c76fc230006', 'Chrome', '同步菜单信息数据失败！错误码为：40001错误信息为：invalid credential', 4, '192.168.9.123', '2014-08-25 17:19:57', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480c79b601480c7a042a0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.123', '2014-08-25 17:23:16', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480c79b601480c7a20b80001', 'Chrome', '同步菜单信息数据成功！', 4, '192.168.9.123', '2014-08-25 17:23:23', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480c79b601480c7af5360002', 'Chrome', '更新微活动的菜单信息信息成功！', 5, '192.168.9.123', '2014-08-25 17:24:17', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480c79b601480c7b04fc0003', 'Chrome', '同步菜单信息数据成功！', 4, '192.168.9.123', '2014-08-25 17:24:21', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480c79b601480c7c7b7a0004', 'Chrome', '更新产品的菜单信息信息成功！', 5, '192.168.9.123', '2014-08-25 17:25:57', 1, '4028d881436d514601436d5215ac0043'),
('402889fb480c79b601480c7c829c0005', 'Chrome', '同步菜单信息数据成功！', 4, '192.168.9.123', '2014-08-25 17:25:59', 1, '4028d881436d514601436d5215ac0043'),
('402889fb4810ab6c014810acd4810000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.123', '2014-08-26 12:57:15', 1, '4028d881436d514601436d5215ac0043'),
('402889fb4820bcb3014820bd9d5b0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.123', '2014-08-29 15:49:30', 1, '4028d881436d514601436d5215ac0043'),
('402889fb4820bcb3014820c1e6a10001', 'Chrome', '权限: 微社区被更新成功', 5, '192.168.9.123', '2014-08-29 15:54:11', 1, '4028d881436d514601436d5215ac0043'),
('402889fb4820bcb3014820c1fbae0002', 'Chrome', '权限: 微调研被更新成功', 5, '192.168.9.123', '2014-08-29 15:54:16', 1, '4028d881436d514601436d5215ac0043'),
('402889fb4820bcb3014820c302950021', 'Chrome', '用户admin已退出', 2, '192.168.9.123', '2014-08-29 15:55:24', 1, '4028d881436d514601436d5215ac0043'),
('402889fb4820bcb3014820c349310022', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.123', '2014-08-29 15:55:42', 1, '4028d881436d514601436d5215ac0043'),
('402889fb4820bcb3014820c3df9c0023', 'Chrome', '权限: 公众帐号管理被更新成功', 5, '192.168.9.123', '2014-08-29 15:56:20', 1, '4028d881436d514601436d5215ac0043'),
('402889fb4820bcb3014820c3ea600024', 'Chrome', '用户admin已退出', 2, '192.168.9.123', '2014-08-29 15:56:23', 1, '4028d881436d514601436d5215ac0043'),
('402889fb4820bcb3014820c401d10025', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.123', '2014-08-29 15:56:29', 1, '4028d881436d514601436d5215ac0043'),
('402889fb4820bcb3014820c4cee60026', 'Chrome', '微信公众帐号信息更新成功', 5, '192.168.9.123', '2014-08-29 15:57:22', 1, '4028d881436d514601436d5215ac0043'),
('402889fc4734103e01473411c0c40000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.124', '2014-07-14 16:51:24', 1, '4028d881436d514601436d5215ac0043'),
('402889fc4734103e0147341478940003', 'Firefox', '删除信息数据成功', 4, '192.168.9.124', '2014-07-14 16:54:22', 1, '4028d881436d514601436d5215ac0043'),
('402889fc4734103e0147341479dc0004', 'Firefox', '删除信息数据成功', 4, '192.168.9.124', '2014-07-14 16:54:22', 1, '4028d881436d514601436d5215ac0043'),
('402889fc483f6b7501483f6bcb3c0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.124', '2014-09-04 14:48:22', 1, '4028d881436d514601436d5215ac0043'),
('402889fc483f6b7501483f6cf3bb0001', 'Chrome', '微信公众帐号信息更新成功', 5, '192.168.9.124', '2014-09-04 14:49:37', 1, '4028d881436d514601436d5215ac0043'),
('402889fc483f6b7501483f6d11930002', 'Chrome', '同步菜单信息数据成功！', 4, '192.168.9.124', '2014-09-04 14:49:45', 1, '4028d881436d514601436d5215ac0043'),
('402889fc483f6b7501483f6e2d330003', 'Chrome', '同步菜单信息数据成功！', 4, '192.168.9.124', '2014-09-04 14:50:58', 1, '4028d881436d514601436d5215ac0043'),
('402889fc483f6b7501483f81b2ab009d', 'Chrome', '微信公众帐号信息更新成功', 5, '192.168.9.124', '2014-09-04 15:12:17', 1, '4028d881436d514601436d5215ac0043'),
('402889fc483f6b7501483f81d7a700d1', 'Chrome', '同步菜单信息数据成功！', 4, '192.168.9.124', '2014-09-04 15:12:27', 1, '4028d881436d514601436d5215ac0043'),
('402889fc4867e570014867e5dbc80000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.124', '2014-09-12 11:26:30', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728a3d1c90000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 11:35:30', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728a46c520001', 'Chrome', '权限: 文本消息被更新成功', 5, '192.168.9.127', '2014-07-12 11:36:10', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728a48b0c0002', 'Chrome', '权限: 图文消息被更新成功', 5, '192.168.9.127', '2014-07-12 11:36:17', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728a4a7b50003', 'Chrome', '删除信息数据成功！', 4, '192.168.9.127', '2014-07-12 11:36:25', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728ab3dbe0006', 'Chrome', '删除信息数据成功！', 4, '192.168.9.127', '2014-07-12 11:43:36', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728ab47f30007', 'Chrome', '删除信息数据成功！', 4, '192.168.9.127', '2014-07-12 11:43:39', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728ab72600008', 'Chrome', '删除信息数据成功！', 4, '192.168.9.127', '2014-07-12 11:43:50', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728ab9d040009', 'Chrome', '删除信息数据成功！', 4, '192.168.9.127', '2014-07-12 11:44:01', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728abc608000a', 'Chrome', '删除信息数据成功！', 4, '192.168.9.127', '2014-07-12 11:44:11', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728abd265000b', 'Chrome', '删除信息数据成功！', 4, '192.168.9.127', '2014-07-12 11:44:14', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728af52b3000c', 'Chrome', '删除信息数据成功！', 4, '192.168.9.127', '2014-07-12 11:48:04', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728af6535000d', 'Chrome', '删除信息数据成功！', 4, '192.168.9.127', '2014-07-12 11:48:09', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728af7a82000e', 'Chrome', '删除信息数据成功！', 4, '192.168.9.127', '2014-07-12 11:48:14', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728af8734000f', 'Chrome', '删除信息数据成功！', 4, '192.168.9.127', '2014-07-12 11:48:17', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728af8eda0010', 'Chrome', '删除信息数据成功！', 4, '192.168.9.127', '2014-07-12 11:48:19', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728afa4dd0011', 'Chrome', '删除信息数据成功！', 4, '192.168.9.127', '2014-07-12 11:48:25', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728afe92f0012', 'Chrome', '删除信息数据成功！', 4, '192.168.9.127', '2014-07-12 11:48:42', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728aff7370013', 'Chrome', '删除信息数据成功！', 4, '192.168.9.127', '2014-07-12 11:48:46', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728afff480014', 'Chrome', '删除信息数据成功！', 4, '192.168.9.127', '2014-07-12 11:48:48', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728b00a100015', 'Chrome', '删除信息数据成功！', 4, '192.168.9.127', '2014-07-12 11:48:51', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728b01a710016', 'Chrome', '删除信息数据成功！', 4, '192.168.9.127', '2014-07-12 11:48:55', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728b0415b0017', 'Chrome', '修改关键字回复成功！', 5, '192.168.9.127', '2014-07-12 11:49:05', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728b05a0d0018', 'Chrome', '修改关键字回复成功！', 5, '192.168.9.127', '2014-07-12 11:49:11', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728b0663e0019', 'Chrome', '修改关键字回复成功！', 5, '192.168.9.127', '2014-07-12 11:49:14', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728b0708e001a', 'Chrome', '修改关键字回复成功！', 5, '192.168.9.127', '2014-07-12 11:49:17', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728b20122001d', 'Chrome', '删除信息数据成功！', 4, '192.168.9.127', '2014-07-12 11:51:00', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728b2088c001e', 'Chrome', '删除信息数据成功！', 4, '192.168.9.127', '2014-07-12 11:51:02', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728b20f7b001f', 'Chrome', '删除信息数据成功！', 4, '192.168.9.127', '2014-07-12 11:51:03', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728b436990022', 'Chrome', '权限: 微信商城被更新成功', 5, '192.168.9.127', '2014-07-12 11:53:24', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728b455730023', 'Chrome', '权限: 微信CMS被更新成功', 5, '192.168.9.127', '2014-07-12 11:53:32', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728b47d3c0024', 'Chrome', '用户admin已退出', 2, '192.168.9.127', '2014-07-12 11:53:42', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728b497bc0025', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 11:53:49', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728b4d76f0026', 'Chrome', '权限: 基础设置被更新成功', 5, '192.168.9.127', '2014-07-12 11:54:06', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728b4eb280027', 'Chrome', '权限: 菜单管理被更新成功', 5, '192.168.9.127', '2014-07-12 11:54:11', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728b58db10028', 'Chrome', '权限: Online 开发被更新成功', 5, '192.168.9.127', '2014-07-12 11:54:52', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728b5cf500029', 'Chrome', '权限: 微信网站被更新成功', 5, '192.168.9.127', '2014-07-12 11:55:09', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728b5df56002a', 'Chrome', '用户admin已退出', 2, '192.168.9.127', '2014-07-12 11:55:13', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728b68b9d002b', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 11:55:57', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728b8aeb6002c', 'Chrome', '修改关文本模板成功！', 5, '192.168.9.127', '2014-07-12 11:58:17', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728b8be01002d', 'Chrome', '删除信息数据成功！', 4, '192.168.9.127', '2014-07-12 11:58:21', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728baa5300030', 'Chrome', '更新我的大转盘的菜单信息信息成功！', 5, '192.168.9.127', '2014-07-12 12:00:26', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728bace3a0031', 'Chrome', '更新微CMS的菜单信息信息成功！', 5, '192.168.9.127', '2014-07-12 12:00:36', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728bafe2c0032', 'Chrome', '更新微活动的菜单信息信息成功！', 5, '192.168.9.127', '2014-07-12 12:00:49', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728bb20160033', 'Chrome', '更新微商城的菜单信息信息成功！', 5, '192.168.9.127', '2014-07-12 12:00:57', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728bbb73f0035', 'Chrome', '添加查天气的信息成功！', 3, '192.168.9.127', '2014-07-12 12:01:36', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728bc62680037', 'Chrome', '添加联系我们的信息成功！', 3, '192.168.9.127', '2014-07-12 12:02:20', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728bcb34c0039', 'Chrome', '添加联系我们的信息成功！', 3, '192.168.9.127', '2014-07-12 12:02:41', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728e02c65003a', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 12:41:25', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728a293014728e55ce2003b', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 12:47:05', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728e9ee014728ea82d90000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 12:52:43', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728ebee014728ec763c0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 12:54:51', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728ee6b014728f0025e0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 12:58:43', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728f237014728f283db0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 13:01:27', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728f237014728f2d3fd0002', 'Firefox', '添加开源项目的信息成功！', 3, '192.168.9.127', '2014-07-12 13:01:48', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728f237014728f3015b0003', 'Firefox', '更新开源项目的菜单信息信息成功！', 5, '192.168.9.127', '2014-07-12 13:02:00', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728f237014728f314560004', 'Firefox', '更新微活动的菜单信息信息成功！', 5, '192.168.9.127', '2014-07-12 13:02:04', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728f237014728f324df0005', 'Firefox', '更新联系我们的菜单信息信息成功！', 5, '192.168.9.127', '2014-07-12 13:02:09', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728f237014728f4ba310007', 'Firefox', '添加捷微jeeWX的信息成功！', 3, '192.168.9.127', '2014-07-12 13:03:52', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728f237014728f52c640009', 'Firefox', '添加企业快速开发平台的信息成功！', 3, '192.168.9.127', '2014-07-12 13:04:22', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728f237014728f5a95a000a', 'Firefox', '更新联系我们的菜单信息信息成功！', 5, '192.168.9.127', '2014-07-12 13:04:54', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728f237014728f60f56000c', 'Firefox', '添加社区培训的信息成功！', 3, '192.168.9.127', '2014-07-12 13:05:20', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728f237014728f61bde000d', 'Firefox', '同步菜单信息数据失败！', 4, '192.168.9.127', '2014-07-12 13:05:23', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728f237014728f8e092000f', 'Firefox', '扩展接口管理添加成功', 3, '192.168.9.127', '2014-07-12 13:08:24', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728f237014729029dd30011', 'Firefox', '添加刮刮乐的信息成功！', 3, '192.168.9.127', '2014-07-12 13:19:03', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728f23701472903092a0012', 'Firefox', '删除查天气菜单信息数据', 4, '192.168.9.127', '2014-07-12 13:19:30', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728f2370147290349b50013', 'Firefox', '更新大转盘的菜单信息信息成功！', 5, '192.168.9.127', '2014-07-12 13:19:47', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728f237014729039ccb0015', 'Firefox', '添加营销工具的信息成功！', 3, '192.168.9.127', '2014-07-12 13:20:08', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728f23701472906878f0016', 'Firefox', '同步菜单信息数据失败！', 4, '192.168.9.127', '2014-07-12 13:23:19', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728f23701472908756c0017', 'Firefox', '微信公众帐号信息更新成功', 5, '192.168.9.127', '2014-07-12 13:25:25', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728f23701472909966e0019', 'Firefox', '类型分组: 微信公众账号类型被添加成功', 3, '192.168.9.127', '2014-07-12 13:26:39', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728f23701472909d8a8001b', 'Firefox', '类型分组: 服务号被添加成功', 3, '192.168.9.127', '2014-07-12 13:26:56', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728f23701472909ee60001c', 'Firefox', '数据字典分组: 服务号被删除 成功', 4, '192.168.9.127', '2014-07-12 13:27:02', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728f2370147290a0fb6001e', 'Firefox', '类型: 1被添加成功', 3, '192.168.9.127', '2014-07-12 13:27:11', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728f2370147290a2d9f0020', 'Firefox', '类型: 2被添加成功', 3, '192.168.9.127', '2014-07-12 13:27:18', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728f2370147290ac9190021', 'Firefox', '类型: 服务号被更新成功', 5, '192.168.9.127', '2014-07-12 13:27:58', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728f2370147290ae8500022', 'Firefox', '类型: 订阅号被更新成功', 5, '192.168.9.127', '2014-07-12 13:28:06', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4728f2370147290b08140023', 'Firefox', '微信公众帐号信息更新成功', 5, '192.168.9.127', '2014-07-12 13:28:14', 1, '4028d881436d514601436d5215ac0043'),
('402889ff47290bbf0147290c5a780000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 13:29:41', 1, '4028d881436d514601436d5215ac0043'),
('402889ff472928ab01472928fce50000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 14:00:57', 1, '4028d881436d514601436d5215ac0043'),
('402889ff47292ef10147292f5bcc0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 14:07:55', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4729328401472933d1900000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 14:12:47', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4729376601472937d0e60000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 14:17:09', 1, '4028d881436d514601436d5215ac0043'),
('402889ff472939aa0147293a00060000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 14:19:32', 1, '4028d881436d514601436d5215ac0043'),
('402889ff47293de30147293e633a0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 14:24:20', 1, '4028d881436d514601436d5215ac0043'),
('402889ff47294b5c0147294bc2df0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 14:38:56', 1, '4028d881436d514601436d5215ac0043'),
('402889ff47294cb20147294d0fb90000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 14:40:21', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4729505d01472950c6810000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 14:44:25', 1, '4028d881436d514601436d5215ac0043'),
('402889ff472953b401472954cc520000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 14:48:48', 1, '4028d881436d514601436d5215ac0043'),
('402889ff47295aa80147295af83c0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 14:55:33', 1, '4028d881436d514601436d5215ac0043'),
('402889ff47295db40147295e20af0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 14:59:00', 1, '4028d881436d514601436d5215ac0043'),
('402889ff47295db40147295e7fc40002', 'Firefox', '活动添加成功', 3, '192.168.9.127', '2014-07-12 14:59:24', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4729668a01472966d77a0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 15:08:31', 1, '4028d881436d514601436d5215ac0043'),
('402889ff47296a4f0147296ac2a40000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 15:12:48', 1, '4028d881436d514601436d5215ac0043'),
('402889ff47297515014729759d050000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 15:24:39', 1, '4028d881436d514601436d5215ac0043'),
('402889ff472975150147297654c70003', 'Firefox', '删除信息数据成功！', 4, '192.168.9.127', '2014-07-12 15:25:26', 1, '4028d881436d514601436d5215ac0043'),
('402889ff472978290147297893f20000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 15:27:53', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4729782901472979ed520002', 'Firefox', '删除信息数据成功！', 4, '192.168.9.127', '2014-07-12 15:29:22', 1, '4028d881436d514601436d5215ac0043'),
('402889ff472978290147297d66970005', 'Firefox', '删除信息数据成功！', 4, '192.168.9.127', '2014-07-12 15:33:09', 1, '4028d881436d514601436d5215ac0043'),
('402889ff472978290147297d7fa50006', 'Firefox', '删除信息数据成功！', 4, '192.168.9.127', '2014-07-12 15:33:16', 1, '4028d881436d514601436d5215ac0043'),
('402889ff472978290147297d93990007', 'Firefox', '删除信息数据成功！', 4, '192.168.9.127', '2014-07-12 15:33:21', 1, '4028d881436d514601436d5215ac0043'),
('402889ff472978290147297da7d80008', 'Firefox', '删除信息数据成功！', 4, '192.168.9.127', '2014-07-12 15:33:26', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4729834501472983d7e00000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 15:40:12', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4729929c014729931f250000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 15:56:53', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4729929c0147299360340001', 'Firefox', '同步菜单信息数据失败！', 4, '192.168.9.127', '2014-07-12 15:57:10', 1, '4028d881436d514601436d5215ac0043'),
('402889ff47299a8a0147299b51420000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 16:05:50', 1, '4028d881436d514601436d5215ac0043'),
('402889ff47299a8a0147299bb2570001', 'Firefox', '同步菜单信息数据失败！', 4, '192.168.9.127', '2014-07-12 16:06:15', 1, '4028d881436d514601436d5215ac0043'),
('402889ff47299a8a0147299e45970002', 'Firefox', '同步菜单信息数据失败！', 4, '192.168.9.127', '2014-07-12 16:09:04', 1, '4028d881436d514601436d5215ac0043'),
('402889ff47299a8a014729a141620003', 'Firefox', '更新开源项目的菜单信息信息成功！', 5, '192.168.9.127', '2014-07-12 16:12:19', 1, '4028d881436d514601436d5215ac0043'),
('402889ff47299a8a014729a169390004', 'Firefox', '更新捷微jeeWX的菜单信息信息成功！', 5, '192.168.9.127', '2014-07-12 16:12:29', 1, '4028d881436d514601436d5215ac0043'),
('402889ff47299a8a014729a185df0005', 'Firefox', '更新企业快速开发平台的菜单信息信息成功！', 5, '192.168.9.127', '2014-07-12 16:12:37', 1, '4028d881436d514601436d5215ac0043'),
('402889ff47299a8a014729a1a2f80006', 'Firefox', '更新微活动的菜单信息信息成功！', 5, '192.168.9.127', '2014-07-12 16:12:44', 1, '4028d881436d514601436d5215ac0043'),
('402889ff47299a8a014729a1c0bb0007', 'Firefox', '更新营销工具的菜单信息信息成功！', 5, '192.168.9.127', '2014-07-12 16:12:52', 1, '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` (`ID`, `broswer`, `logcontent`, `loglevel`, `note`, `operatetime`, `operatetype`, `userid`) VALUES
('402889ff47299a8a014729a1daf50008', 'Firefox', '更新微商城的菜单信息信息成功！', 5, '192.168.9.127', '2014-07-12 16:12:58', 1, '4028d881436d514601436d5215ac0043'),
('402889ff47299a8a014729a201060009', 'Firefox', '更新微网站的菜单信息信息成功！', 5, '192.168.9.127', '2014-07-12 16:13:08', 1, '4028d881436d514601436d5215ac0043'),
('402889ff47299a8a014729a21894000a', 'Firefox', '更新刮刮乐的菜单信息信息成功！', 5, '192.168.9.127', '2014-07-12 16:13:14', 1, '4028d881436d514601436d5215ac0043'),
('402889ff47299a8a014729a23350000b', 'Firefox', '更新关于我们的菜单信息信息成功！', 5, '192.168.9.127', '2014-07-12 16:13:21', 1, '4028d881436d514601436d5215ac0043'),
('402889ff47299a8a014729a2518e000c', 'Firefox', '更新社区培训的菜单信息信息成功！', 5, '192.168.9.127', '2014-07-12 16:13:29', 1, '4028d881436d514601436d5215ac0043'),
('402889ff47299a8a014729a27006000d', 'Firefox', '更新联系我们的菜单信息信息成功！', 5, '192.168.9.127', '2014-07-12 16:13:37', 1, '4028d881436d514601436d5215ac0043'),
('402889ff47299a8a014729a279b8000e', 'Firefox', '同步菜单信息数据失败！', 4, '192.168.9.127', '2014-07-12 16:13:39', 1, '4028d881436d514601436d5215ac0043'),
('402889ff47299a8a014729a2c176000f', 'Firefox', '同步菜单信息数据失败！', 4, '192.168.9.127', '2014-07-12 16:13:58', 1, '4028d881436d514601436d5215ac0043'),
('402889ff47299a8a014729a33fa90010', 'Firefox', '同步菜单信息数据失败！', 4, '192.168.9.127', '2014-07-12 16:14:30', 1, '4028d881436d514601436d5215ac0043'),
('402889ff47299a8a014729a3556b0011', 'Firefox', '同步菜单信息数据成功！', 4, '192.168.9.127', '2014-07-12 16:14:35', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4729fcdc014729fe78740000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 17:54:08', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4729fcdc01472a06d89a0001', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 18:03:17', 1, '4028d881436d514601436d5215ac0043'),
('402889ff4729fcdc01472a07536e0002', 'Firefox', '微信公众帐号信息更新成功', 5, '192.168.9.127', '2014-07-12 18:03:48', 1, '4028d881436d514601436d5215ac0043'),
('402889ff472a277501472a2800180000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 18:39:30', 1, '4028d881436d514601436d5215ac0043'),
('402889ff472a2e7601472a2ede9c0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 18:47:00', 1, '4028d881436d514601436d5215ac0043'),
('402889ff472ac43501472ac4989f0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 21:30:32', 1, '4028d881436d514601436d5215ac0043'),
('402889ff472ac43501472ac581010001', 'Firefox', '扩展接口管理更新成功', 5, '192.168.9.127', '2014-07-12 21:31:32', 1, '4028d881436d514601436d5215ac0043'),
('402889ff472ac43501472ac592270002', 'Firefox', '扩展接口管理更新成功', 5, '192.168.9.127', '2014-07-12 21:31:36', 1, '4028d881436d514601436d5215ac0043'),
('402889ff472ac43501472ac5a8340003', 'Firefox', '扩展接口管理更新成功', 5, '192.168.9.127', '2014-07-12 21:31:42', 1, '4028d881436d514601436d5215ac0043'),
('402889ff472ac43501472ac5bec20004', 'Firefox', '扩展接口管理更新成功', 5, '192.168.9.127', '2014-07-12 21:31:48', 1, '4028d881436d514601436d5215ac0043'),
('402889ff472ac43501472ac5cfc80005', 'Firefox', '扩展接口管理更新成功', 5, '192.168.9.127', '2014-07-12 21:31:52', 1, '4028d881436d514601436d5215ac0043'),
('402889ff472ac43501472ac5f9060006', 'Firefox', '扩展接口管理更新成功', 5, '192.168.9.127', '2014-07-12 21:32:03', 1, '4028d881436d514601436d5215ac0043'),
('402889ff472ac43501472ac626fc0007', 'Firefox', '扩展接口管理更新成功', 5, '192.168.9.127', '2014-07-12 21:32:14', 1, '4028d881436d514601436d5215ac0043'),
('402889ff472ac43501472ac654d10008', 'Firefox', '扩展接口管理更新成功', 5, '192.168.9.127', '2014-07-12 21:32:26', 1, '4028d881436d514601436d5215ac0043'),
('402889ff472ac43501472ac675e40009', 'Firefox', '扩展接口管理更新成功', 5, '192.168.9.127', '2014-07-12 21:32:35', 1, '4028d881436d514601436d5215ac0043'),
('402889ff472ac43501472ac68a3b000a', 'Firefox', '扩展接口管理更新成功', 5, '192.168.9.127', '2014-07-12 21:32:40', 1, '4028d881436d514601436d5215ac0043'),
('402889ff472ac90001472aca175a0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 21:36:33', 1, '4028d881436d514601436d5215ac0043'),
('402889ff472ad38401472ad3fc5f0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 21:47:21', 1, '4028d881436d514601436d5215ac0043'),
('402889ff472ad38401472ae7258f0001', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 22:08:17', 1, '4028d881436d514601436d5215ac0043'),
('402889ff472b0f1c01472b0fdd640000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.9.127', '2014-07-12 22:52:45', 1, '4028d881436d514601436d5215ac0043'),
('4028bc064763323001476332f4130000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.60.134', '2014-07-23 20:29:49', 1, '4028d881436d514601436d5215ac0043'),
('4028bc0647633a790147633afa130000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.60.134', '2014-07-23 20:38:35', 1, '4028d881436d514601436d5215ac0043'),
('4028bc0647633a7901476344ed290006', 'Firefox', '删除信息数据成功！', 4, '192.168.60.134', '2014-07-23 20:49:27', 1, '4028d881436d514601436d5215ac0043'),
('4028bc0647633a7901476344f8ae0007', 'Firefox', '删除信息数据成功！', 4, '192.168.60.134', '2014-07-23 20:49:30', 1, '4028d881436d514601436d5215ac0043'),
('4028bc0647633a790147634529d00009', 'Firefox', '修改关键字回复成功！', 5, '192.168.60.134', '2014-07-23 20:49:42', 1, '4028d881436d514601436d5215ac0043'),
('4028bc0647633a79014763453777000a', 'Firefox', '删除信息数据成功！', 4, '192.168.60.134', '2014-07-23 20:49:46', 1, '4028d881436d514601436d5215ac0043'),
('4028bc0647633a79014763455d03000c', 'Firefox', '扩展接口管理添加成功', 3, '192.168.60.134', '2014-07-23 20:49:55', 1, '4028d881436d514601436d5215ac0043'),
('4028bc0647633a79014763457026000d', 'Firefox', '扩展接口管理更新成功', 5, '192.168.60.134', '2014-07-23 20:50:00', 1, '4028d881436d514601436d5215ac0043'),
('4028bc0647633a79014763458628000e', 'Firefox', '扩展接口管理删除成功', 4, '192.168.60.134', '2014-07-23 20:50:06', 1, '4028d881436d514601436d5215ac0043'),
('4028bc0647633a7901476345bd530010', 'Firefox', '修改关文本模板成功！', 5, '192.168.60.134', '2014-07-23 20:50:20', 1, '4028d881436d514601436d5215ac0043'),
('4028bc0647633a7901476345c7630011', 'Firefox', '删除信息数据成功！', 4, '192.168.60.134', '2014-07-23 20:50:23', 1, '4028d881436d514601436d5215ac0043'),
('4028bc0647633a7901476345fd250013', 'Firefox', '添加1221的信息成功！', 3, '192.168.60.134', '2014-07-23 20:50:36', 1, '4028d881436d514601436d5215ac0043'),
('4028bc0647633a7901476346349a0014', 'Firefox', '更新1221的菜单信息信息成功！', 5, '192.168.60.134', '2014-07-23 20:50:51', 1, '4028d881436d514601436d5215ac0043'),
('4028bc0647633a7901476346ea220015', 'Firefox', '删除1221菜单信息数据', 4, '192.168.60.134', '2014-07-23 20:51:37', 1, '4028d881436d514601436d5215ac0043'),
('4028bc0647633a790147634749f40017', 'Firefox', '修改关文本模板成功！', 5, '192.168.60.134', '2014-07-23 20:52:02', 1, '4028d881436d514601436d5215ac0043'),
('4028bc0647633a790147634753770018', 'Firefox', '删除信息数据成功！', 4, '192.168.60.134', '2014-07-23 20:52:04', 1, '4028d881436d514601436d5215ac0043'),
('4028bc06476349dc0147634a7b4d0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.60.134', '2014-07-23 20:55:31', 1, '4028d881436d514601436d5215ac0043'),
('4028bc0647634d250147634de3cd0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.60.134', '2014-07-23 20:59:14', 1, '4028d881436d514601436d5215ac0043'),
('4028bc06476353c00147635427a40000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.60.134', '2014-07-23 21:06:05', 1, '4028d881436d514601436d5215ac0043'),
('4028bc064763571d0147635779670000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.60.134', '2014-07-23 21:09:42', 1, '4028d881436d514601436d5215ac0043'),
('4028bc064763571d01476357d5430002', 'Firefox', '修改图文模板成功！', 5, '192.168.60.134', '2014-07-23 21:10:06', 1, '4028d881436d514601436d5215ac0043'),
('4028bc064763571d01476358bc6c0005', 'Firefox', '微信单图消息添加成功', 3, '192.168.60.134', '2014-07-23 21:11:05', 1, '4028d881436d514601436d5215ac0043'),
('4028bc0647635da50147635e2e9f0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.60.134', '2014-07-23 21:17:02', 1, '4028d881436d514601436d5215ac0043'),
('4028bc0647635da50147636036890001', 'Firefox', '购物车 删除成功', 4, '192.168.60.134', '2014-07-23 21:19:15', 1, '4028d881436d514601436d5215ac0043'),
('4028bc0647635da5014763603f7a0002', 'Firefox', '购物车 删除成功', 4, '192.168.60.134', '2014-07-23 21:19:17', 1, '4028d881436d514601436d5215ac0043'),
('4028bc0647635da50147636049f70003', 'Firefox', '购物车 删除成功', 4, '192.168.60.134', '2014-07-23 21:19:20', 1, '4028d881436d514601436d5215ac0043'),
('4028bc06476362cd0147636343fc0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.60.134', '2014-07-23 21:22:35', 1, '4028d881436d514601436d5215ac0043'),
('4028bc06476362cd0147636429280001', 'Firefox', '权限: 购物车管理被更新成功', 5, '192.168.60.134', '2014-07-23 21:23:34', 1, '4028d881436d514601436d5215ac0043'),
('4028bc06476362cd0147636443760002', 'Firefox', '用户admin已退出', 2, '192.168.60.134', '2014-07-23 21:23:41', 1, '4028d881436d514601436d5215ac0043'),
('4028bc06476362cd0147636462930003', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.60.134', '2014-07-23 21:23:49', 1, '4028d881436d514601436d5215ac0043'),
('4028bc06476362cd0147636578720004', 'Firefox', '权限: 微网站配置被更新成功', 5, '192.168.60.134', '2014-07-23 21:25:00', 1, '4028d881436d514601436d5215ac0043'),
('4028bc06476362cd01476365b5240005', 'Firefox', '权限: 微网站模板被更新成功', 5, '192.168.60.134', '2014-07-23 21:25:15', 1, '4028d881436d514601436d5215ac0043'),
('4028bc06476362cd01476365da9e0006', 'Firefox', '权限: 微网站信息被更新成功', 5, '192.168.60.134', '2014-07-23 21:25:25', 1, '4028d881436d514601436d5215ac0043'),
('4028bc06476362cd01476365faae0007', 'Firefox', '用户admin已退出', 2, '192.168.60.134', '2014-07-23 21:25:33', 1, '4028d881436d514601436d5215ac0043'),
('4028bc06476362cd01476366257b0008', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.60.134', '2014-07-23 21:25:44', 1, '4028d881436d514601436d5215ac0043'),
('4028bc06476362cd01476366db320009', 'Firefox', '权限: 微网站信息被更新成功', 5, '192.168.60.134', '2014-07-23 21:26:30', 1, '4028d881436d514601436d5215ac0043'),
('4028bc06476362cd014763674561000a', 'Firefox', '权限: 文章管理被更新成功', 5, '192.168.60.134', '2014-07-23 21:26:58', 1, '4028d881436d514601436d5215ac0043'),
('4028bc06476362cd01476367a228000b', 'Firefox', '权限: 微网站模板被更新成功', 5, '192.168.60.134', '2014-07-23 21:27:21', 1, '4028d881436d514601436d5215ac0043'),
('4028bc06476362cd014763680c3a000c', 'Firefox', '用户admin已退出', 2, '192.168.60.134', '2014-07-23 21:27:49', 1, '4028d881436d514601436d5215ac0043'),
('4028bc06476362cd014763683635000d', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.60.134', '2014-07-23 21:27:59', 1, '4028d881436d514601436d5215ac0043'),
('4028bc06476362cd014763697ee5000e', 'Firefox', '用户admin已退出', 2, '192.168.60.134', '2014-07-23 21:29:23', 1, '4028d881436d514601436d5215ac0043'),
('4028bc06476362cd01476369a4a6000f', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.60.134', '2014-07-23 21:29:33', 1, '4028d881436d514601436d5215ac0043'),
('4028bc06476362cd0147636b0e450010', 'Firefox', '微站点模板删除成功', 4, '192.168.60.134', '2014-07-23 21:31:06', 1, '4028d881436d514601436d5215ac0043'),
('4028bc06476362cd0147636b30310011', 'Firefox', '微站点信息更新成功', 5, '192.168.60.134', '2014-07-23 21:31:14', 1, '4028d881436d514601436d5215ac0043'),
('4028bc06476362cd0147636ceb710012', 'Firefox', '权限: 商品分类被更新成功', 5, '192.168.60.134', '2014-07-23 21:33:08', 1, '4028d881436d514601436d5215ac0043'),
('4028bc06476362cd0147636d2e180013', 'Firefox', '权限: 商品信息被更新成功', 5, '192.168.60.134', '2014-07-23 21:33:25', 1, '4028d881436d514601436d5215ac0043'),
('4028bc06476362cd0147636f66420014', 'Firefox', '权限: 购物车管理被更新成功', 5, '192.168.60.134', '2014-07-23 21:35:50', 1, '4028d881436d514601436d5215ac0043'),
('4028bc06476362cd01476372abdc0015', 'Firefox', '用户admin已退出', 2, '192.168.60.134', '2014-07-23 21:39:25', 1, '4028d881436d514601436d5215ac0043'),
('4028bc06476362cd01476372d50c0016', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.60.134', '2014-07-23 21:39:35', 1, '4028d881436d514601436d5215ac0043'),
('4028bc06476362cd0147637352850017', 'Firefox', '权限: 网站信息被更新成功', 5, '192.168.60.134', '2014-07-23 21:40:07', 1, '4028d881436d514601436d5215ac0043'),
('4028bc06476362cd0147637379410018', 'Firefox', '权限: 网站模板被更新成功', 5, '192.168.60.134', '2014-07-23 21:40:17', 1, '4028d881436d514601436d5215ac0043'),
('4028bc0647637a8d014763808f2a0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.60.134', '2014-07-23 21:54:35', 1, '4028d881436d514601436d5215ac0043'),
('4028bcdb47d3c86b0147d3c8e0910000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.60.91', '2014-08-14 17:11:03', 1, '4028d881436d514601436d5215ac0043'),
('4028bcdb47d3c86b0147d3cdc6700001', 'Chrome', '同步菜单信息数据成功！', 4, '192.168.60.91', '2014-08-14 17:16:24', 1, '4028d881436d514601436d5215ac0043'),
('4028bcdb47d3c86b0147d3cfaafc0003', 'Chrome', '添加微相册的信息成功！', 3, '192.168.60.91', '2014-08-14 17:18:28', 1, '4028d881436d514601436d5215ac0043'),
('4028bcdb47d3c86b0147d3cfbad70004', 'Chrome', '同步菜单信息数据成功！', 4, '192.168.60.91', '2014-08-14 17:18:32', 1, '4028d881436d514601436d5215ac0043'),
('4028bcdb47d3fa840147d3faf5bc0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.60.91', '2014-08-14 18:05:45', 1, '4028d881436d514601436d5215ac0043'),
('4028bce447cf2b170147cf44d8220000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.60.100', '2014-08-13 20:08:21', 1, '4028d881436d514601436d5215ac0043'),
('4028bce447cf2b170147cf4518f80001', 'Chrome', '用户admin已退出', 2, '192.168.60.100', '2014-08-13 20:08:37', 1, '4028d881436d514601436d5215ac0043'),
('4028bce447cf8bda0147cf8d03f70000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.60.100', '2014-08-13 21:27:11', 1, '4028d881436d514601436d5215ac0043'),
('4028bce447cf8bda0147cf8ecb2e0005', 'Chrome', '用户admin已退出', 2, '192.168.60.100', '2014-08-13 21:29:07', 1, '4028d881436d514601436d5215ac0043'),
('4028bce447cf8bda0147cf9049620008', 'Chrome', '用户: 1111添加成功', 3, '192.168.60.100', '2014-08-13 21:30:45', 1, NULL),
('4028d881436d514601436d52187300c5', 'Chrome', '用户: admin登录成功', 1, '169.254.200.136', '2013-04-24 16:22:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d52187c00c6', 'Chrome', '用户: admin登录成功', 1, '10.10.10.1', '2013-04-24 17:12:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d52187d00c7', 'Chrome', '用户: admin登录成功', 1, '169.254.218.201', '2013-03-10 15:37:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d52187f00c8', 'Chrome', '用户admin已退出', 2, '169.254.218.201', '2013-03-10 15:38:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d52188000c9', 'MSIE 9.0', '用户: admin登录成功', 1, '169.254.218.201', '2013-03-10 15:38:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d52188200ca', 'MSIE 9.0', 'JeecgDemo例子: 12被删除 成功', 4, '169.254.218.201', '2013-03-10 15:39:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d52188400cb', 'MSIE 9.0', 'JeecgDemo例子: 12被删除 成功', 4, '169.254.218.201', '2013-03-10 15:39:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d52188600cc', 'Chrome', 'JeecgDemo例子: 12被删除 成功', 4, '169.254.218.201', '2013-03-10 15:39:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d52188700cd', 'MSIE 9.0', '权限: 单表模型被更新成功', 5, '169.254.218.201', '2013-03-10 15:39:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d52188800ce', 'Chrome', '删除成功', 4, '169.254.218.201', '2013-03-10 15:39:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d52188900cf', 'MSIE 9.0', '删除成功', 4, '169.254.218.201', '2013-03-10 15:39:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d52188b00d0', 'Chrome', '删除成功', 4, '169.254.218.201', '2013-03-10 15:39:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d52188c00d1', 'Firefox', '删除成功', 4, '169.254.218.201', '2013-03-10 15:39:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d52188e00d2', 'Chrome', '添加成功', 3, '169.254.218.201', '2013-03-10 15:40:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d52188f00d3', 'Chrome', '更新成功', 5, '169.254.218.201', '2013-03-10 15:40:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d52189100d4', 'Chrome', 'JeecgDemo例子: 12被添加成功', 3, '169.254.218.201', '2013-03-10 15:40:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d52189400d5', 'Chrome', '部门: 信息部被更新成功', 5, '169.254.218.201', '2013-03-10 15:41:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d52189600d6', 'Chrome', '部门: 设计部被更新成功', 5, '169.254.218.201', '2013-03-10 15:41:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d52189800d7', 'Chrome', '类型: 信息部流程被更新成功', 5, '169.254.218.201', '2013-03-10 15:46:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d52189a00d8', 'Chrome', '用户: admin登录成功', 1, '169.254.218.201', '2013-03-10 15:48:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d52189c00d9', 'Firefox', '用户: admin登录成功', 1, '169.254.218.201', '2013-03-21 23:23:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d52189d00da', 'Chrome', '用户: admin登录成功', 1, '169.254.218.201', '2013-03-21 23:26:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d52189f00db', 'Chrome', '权限: 一对多实例被添加成功', 3, '169.254.218.201', '2013-03-21 23:28:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218a100dc', 'Chrome', '用户: admin登录成功', 1, '169.254.218.201', '2013-03-22 08:25:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218a300dd', 'Firefox', '用户: admin登录成功', 1, '169.254.218.201', '2013-03-22 09:05:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218a500de', 'Chrome', '用户: admin登录成功', 1, '169.254.218.201', '2013-03-22 09:09:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218a600df', 'MSIE 8.0', '用户: admin登录成功', 1, '169.254.218.201', '2013-03-22 09:28:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218a700e0', 'Firefox', '用户: admin登录成功', 1, '169.254.218.201', '2013-03-22 10:32:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218a900e1', 'Chrome', '物品: 笔记本添加成功', 3, '169.254.218.201', '2013-03-22 10:35:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218aa00e2', 'Firefox', '用户: admin登录成功', 1, '169.254.218.201', '2013-03-22 10:41:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218ab00e3', 'Firefox', '用户: admin登录成功', 1, '169.254.218.201', '2013-03-22 16:11:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218ac00e4', 'Chrome', '用户: admin登录成功', 1, '169.254.218.201', '2013-03-22 21:49:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218ae00e5', 'Chrome', '用户: admin登录成功', 1, '169.254.218.201', '2013-03-22 23:17:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218af00e6', 'Chrome', '用户: admin登录成功', 1, '169.254.218.201', '2013-03-22 23:27:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218b100e7', 'Chrome', '用户: admin登录成功', 1, '169.254.218.201', '2013-03-23 00:16:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218b200e8', 'Chrome', '用户: admin登录成功', 1, '169.254.218.201', '2013-03-23 00:22:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218b300e9', 'Firefox', '用户: admin登录成功', 1, '169.254.218.201', '2013-03-23 00:31:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218b400ea', 'Chrome', '用户: admin登录成功', 1, '169.254.218.201', '2013-03-23 14:23:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218b600eb', 'Chrome', '流程参数: 主任审批被添加成功', 3, '169.254.218.201', '2013-03-23 15:05:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218b800ec', 'Firefox', '业务参数: 入职申请被添加成功', 3, '169.254.218.201', '2013-03-23 15:05:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218bb00ed', 'Chrome', '权限: 入职申请被添加成功', 3, '169.254.218.201', '2013-03-23 15:12:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218bc00ee', 'Firefox', '权限: 入职办理被添加成功', 3, '169.254.218.201', '2013-03-23 15:13:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218be00ef', 'Chrome', '用户: admin登录成功', 1, '10.10.10.1', '2013-05-06 15:27:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218c000f0', 'MSIE 8.0', '用户: admin登录成功', 1, '192.168.197.1', '2013-07-07 15:16:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218c200f1', 'MSIE 8.0', '用户: admin登录成功', 1, '192.168.197.1', '2013-07-07 16:02:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218c400f2', 'MSIE 8.0', '用户: admin登录成功', 1, '192.168.197.1', '2013-07-07 16:07:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218c600f3', 'MSIE 8.0', '用户: admin登录成功', 1, '192.168.197.1', '2013-07-07 16:09:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218c800f4', 'MSIE 8.0', '用户: admin登录成功', 1, '192.168.197.1', '2013-07-07 16:11:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218ca00f5', 'MSIE 8.0', '用户: admin登录成功', 1, '192.168.197.1', '2013-07-07 16:13:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218cc00f6', 'MSIE 8.0', '用户: admin登录成功', 1, '192.168.197.1', '2013-07-07 16:16:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218cd00f7', 'MSIE 8.0', '用户: admin登录成功', 1, '192.168.197.1', '2013-07-07 16:19:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218ce00f8', 'MSIE 8.0', '用户: admin登录成功', 1, '192.168.197.1', '2013-07-07 16:27:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218d100f9', 'MSIE 8.0', '用户: admin登录成功', 1, '192.168.197.1', '2013-07-07 16:42:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218d200fa', 'MSIE 8.0', '用户: admin登录成功', 1, '192.168.197.1', '2013-07-07 16:44:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218d300fb', 'MSIE 8.0', '用户: admin登录成功', 1, '192.168.197.1', '2013-07-07 16:49:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218d500fc', 'MSIE 8.0', '用户: admin登录成功', 1, '192.168.197.1', '2013-07-07 16:50:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218d600fd', 'MSIE 8.0', '用户: admin登录成功', 1, '192.168.197.1', '2013-07-07 16:53:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218d700fe', 'MSIE 8.0', '修改成功', 5, '192.168.197.1', '2013-07-07 16:56:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218d900ff', 'MSIE 8.0', '用户: admin登录成功', 1, '192.168.197.1', '2013-07-07 16:59:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218da0100', 'MSIE 8.0', '创建成功', 3, '192.168.197.1', '2013-07-07 17:22:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218dc0101', 'MSIE 8.0', '修改成功', 5, '192.168.197.1', '2013-07-07 17:26:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218de0102', 'MSIE 8.0', '删除成功', 4, '192.168.197.1', '2013-07-07 17:31:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218df0103', 'MSIE 8.0', '修改成功', 5, '192.168.197.1', '2013-07-07 17:35:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218e00104', 'MSIE 8.0', '用户: admin登录成功', 1, '192.168.197.1', '2013-07-07 17:46:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218e20105', 'MSIE 8.0', '用户: admin登录成功', 1, '192.168.197.1', '2013-07-07 17:55:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218e30106', 'MSIE 8.0', '用户: admin登录成功', 1, '192.168.197.1', '2013-07-07 18:08:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218e40107', 'MSIE 8.0', '用户: admin登录成功', 1, '192.168.197.1', '2013-07-07 18:13:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218e60108', 'MSIE 8.0', '用户: admin登录成功', 1, '192.168.197.1', '2013-07-07 18:15:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218e70109', 'MSIE 8.0', '修改成功', 5, '192.168.197.1', '2013-07-07 18:28:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218e9010a', 'MSIE 8.0', '修改成功', 5, '192.168.197.1', '2013-07-07 18:29:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218ed010b', 'MSIE 8.0', '修改成功', 5, '192.168.197.1', '2013-07-07 18:30:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218f0010c', 'MSIE 8.0', '修改成功', 5, '192.168.197.1', '2013-07-07 18:31:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218f3010d', 'MSIE 8.0', '修改成功', 5, '192.168.197.1', '2013-07-07 18:31:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218f5010e', 'MSIE 9.0', '物品: 555添加成功', 3, '192.168.1.103', '2013-03-20 23:03:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218f7010f', 'MSIE 9.0', '用户: admin登录成功', 1, '192.168.1.103', '2013-03-20 23:19:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218f80110', 'MSIE 9.0', '用户: admin登录成功', 1, '192.168.1.103', '2013-03-21 20:09:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218fa0111', 'MSIE 9.0', '用户: admin登录成功', 1, '192.168.1.103', '2013-03-21 20:27:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218fb0112', 'MSIE 9.0', '用户: admin登录成功', 1, '192.168.1.103', '2013-03-21 20:44:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218fc0113', 'MSIE 9.0', '用户: admin登录成功', 1, '192.168.1.103', '2013-03-21 20:54:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218fe0114', 'MSIE 9.0', '用户: admin登录成功', 1, '192.168.1.103', '2013-03-21 21:01:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5218ff0115', 'MSIE 9.0', '用户: admin登录成功', 1, '192.168.1.103', '2013-03-21 21:13:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5219010116', 'MSIE 9.0', '物品: 55添加成功', 3, '192.168.1.103', '2013-03-21 21:15:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5219040117', 'MSIE 9.0', '用户: admin登录成功', 1, '192.168.1.103', '2013-03-21 21:22:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5219060118', 'MSIE 9.0', '物品: 55添加成功', 3, '192.168.1.103', '2013-03-21 21:23:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5219080119', 'MSIE 9.0', '物品: 33添加成功', 3, '192.168.1.103', '2013-03-21 21:23:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d521909011a', 'MSIE 9.0', '用户: admin登录成功', 1, '192.168.1.103', '2013-03-21 21:25:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d52190b011b', 'MSIE 9.0', '用户: admin登录成功', 1, '192.168.1.103', '2013-03-21 21:27:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d52190c011c', 'MSIE 9.0', '权限: 采购审批被添加成功', 3, '192.168.1.103', '2013-03-21 21:29:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d52190d011d', 'MSIE 9.0', '权限: 采购审批被更新成功', 5, '192.168.1.103', '2013-03-21 21:29:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d52190f011e', 'MSIE 9.0', '权限: 采购审批被更新成功', 5, '192.168.1.103', '2013-03-21 21:30:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d521910011f', 'MSIE 9.0', '用户: admin更新成功', 5, '192.168.1.103', '2013-03-21 21:31:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5219130120', 'MSIE 9.0', '流程参数: 采购审批员审批被添加成功', 3, '192.168.1.103', '2013-03-21 21:36:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5219150121', 'MSIE 9.0', '流程参数: 采购审批员审批被更新成功', 5, '192.168.1.103', '2013-03-21 21:36:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5219170122', 'MSIE 9.0', '流程参数: 采购审批员审批被更新成功', 5, '192.168.1.103', '2013-03-21 21:37:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5219190123', 'MSIE 9.0', '流程类别: 采购审批员审批被删除 成功', 4, '192.168.1.103', '2013-03-21 21:38:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d52191c0124', 'MSIE 9.0', '物品: 44添加成功', 3, '192.168.1.103', '2013-03-21 21:43:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d52191e0125', 'MSIE 9.0', '用户: admin登录成功', 1, '192.168.1.105', '2013-02-07 10:10:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5219200126', 'MSIE 9.0', '权限: 上传下载被添加成功', 3, '192.168.1.105', '2013-02-07 11:07:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5219210127', 'MSIE 9.0', '权限: 插件演示被删除成功', 4, '192.168.1.105', '2013-02-07 11:07:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5219230128', 'MSIE 9.0', '用户: admin登录成功', 1, '192.168.1.105', '2013-02-07 11:07:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d522e440180', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-01-07 23:28:58', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d52c3440182', 'Chrome', '权限: 基础设置被添加成功', 3, '192.168.88.1', '2014-01-07 23:29:37', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d539c950184', 'Chrome', '权限: 菜单管理被添加成功', 3, '192.168.88.1', '2014-01-07 23:30:32', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d53cfd20186', 'Chrome', '权限: 关键字应答被添加成功', 3, '192.168.88.1', '2014-01-07 23:30:45', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d53ff2f0188', 'Chrome', '权限: 发送消息被添加成功', 3, '192.168.88.1', '2014-01-07 23:30:57', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d544978018a', 'Chrome', '权限: 微活动1被添加成功', 3, '192.168.88.1', '2014-01-07 23:31:16', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5485f3018c', 'Chrome', '权限: 会员管理被添加成功', 3, '192.168.88.1', '2014-01-07 23:31:32', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d54b207018e', 'Chrome', '权限: 统计分析被添加成功', 3, '192.168.88.1', '2014-01-07 23:31:43', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d54e1080190', 'Chrome', '权限: 账号管理被添加成功', 3, '192.168.88.1', '2014-01-07 23:31:55', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5619b80192', 'Chrome', '权限: 关注欢迎语被添加成功', 3, '192.168.88.1', '2014-01-07 23:33:15', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d56559f0194', 'Chrome', '权限: 未识别回复语被添加成功', 3, '192.168.88.1', '2014-01-07 23:33:31', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d569e610195', 'Chrome', '权限: 关注欢迎语被更新成功', 5, '192.168.88.1', '2014-01-07 23:33:49', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d56c7540196', 'Chrome', '权限: 未识别回复语被更新成功', 5, '192.168.88.1', '2014-01-07 23:34:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d571b010198', 'Chrome', '权限: 内容库管理被添加成功', 3, '192.168.88.1', '2014-01-07 23:34:21', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d574c5f019a', 'Chrome', '权限: 取消关注回复语被添加成功', 3, '192.168.88.1', '2014-01-07 23:34:34', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d585d05019c', 'Chrome', '权限: 自动应答菜单被添加成功', 3, '192.168.88.1', '2014-01-07 23:35:44', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d588500019e', 'Chrome', '权限: 自定义菜单被添加成功', 3, '192.168.88.1', '2014-01-07 23:35:54', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d58cfd801a0', 'Chrome', '权限: 关键字应答被添加成功', 3, '192.168.88.1', '2014-01-07 23:36:13', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d58ff9e01a2', 'Chrome', '权限: 群发消息被添加成功', 3, '192.168.88.1', '2014-01-07 23:36:25', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d592c4301a4', 'Chrome', '权限: 单发消息被添加成功', 3, '192.168.88.1', '2014-01-07 23:36:37', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d59987501a6', 'Chrome', '权限: 微大转盘被添加成功', 3, '192.168.88.1', '2014-01-07 23:37:04', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d59d73801a8', 'Chrome', '权限: 微信刮刮乐被添加成功', 3, '192.168.88.1', '2014-01-07 23:37:20', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5a192c01aa', 'Chrome', '权限: 数据统计被添加成功', 3, '192.168.88.1', '2014-01-07 23:37:37', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5a5c8501ac', 'Chrome', '权限: 用户概况被添加成功', 3, '192.168.88.1', '2014-01-07 23:37:55', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5a872001ae', 'Chrome', '权限: 用户分组被添加成功', 3, '192.168.88.1', '2014-01-07 23:38:05', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5ac02801b0', 'Chrome', '权限: 会话记录被添加成功', 3, '192.168.88.1', '2014-01-07 23:38:20', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5af99501b2', 'Chrome', '权限: 接口配置被添加成功', 3, '192.168.88.1', '2014-01-07 23:38:35', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5b3bb401b4', 'Chrome', '权限: 企业资料被添加成功', 3, '192.168.88.1', '2014-01-07 23:38:52', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5ce5f601ce', 'Chrome', '用户admin已退出', 2, '192.168.88.1', '2014-01-07 23:40:41', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5d276a01cf', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-01-07 23:40:58', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5dfdb701d0', 'Chrome', '权限: 微活动被更新成功', 5, '192.168.88.1', '2014-01-07 23:41:52', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5e419901d1', 'Chrome', '权限: 系统管理被更新成功', 5, '192.168.88.1', '2014-01-07 23:42:10', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5e5c3c01d2', 'Chrome', '用户admin已退出', 2, '192.168.88.1', '2014-01-07 23:42:17', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5e6dfa01d3', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-01-07 23:42:21', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d61ad3701d4', 'Chrome', '权限: 自动应答菜单被更新成功', 5, '192.168.88.1', '2014-01-07 23:45:54', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d61c65901d5', 'Chrome', '权限: 自定义菜单被更新成功', 5, '192.168.88.1', '2014-01-07 23:46:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d7bbd01436d7c3ba70000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-01-08 00:14:54', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d7bbd01436d7cad630001', 'Chrome', '权限: 微信菜单被删除成功', 4, '192.168.88.1', '2014-01-08 00:15:24', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d7bbd01436d7d344a0003', 'Chrome', '权限: 素材管理被添加成功', 3, '192.168.88.1', '2014-01-08 00:15:58', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d7bbd01436d7d81fe0004', 'Chrome', '权限: 素材管理被更新成功', 5, '192.168.88.1', '2014-01-08 00:16:18', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d7bbd01436d7dc4910006', 'Chrome', '用户admin已退出', 2, '192.168.88.1', '2014-01-08 00:16:35', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d7bbd01436d7dd6840007', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-01-08 00:16:40', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d7f5a01436d7f9fa60000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-01-08 00:18:37', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d7f5a01436d8003090001', 'Chrome', '权限: 内容库管理被删除成功', 4, '192.168.88.1', '2014-01-08 00:19:02', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d7f5a01436d80ef0c0002', 'Chrome', '权限: 素材管理被更新成功', 5, '192.168.88.1', '2014-01-08 00:20:02', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d7f5a01436d81011e0003', 'Chrome', '用户admin已退出', 2, '192.168.88.1', '2014-01-08 00:20:07', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d7f5a01436d8112660004', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-01-08 00:20:12', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d823c01436d827dc60000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-01-08 00:21:45', 1, '4028d881436d514601436d5215ac0043'),
('4028d881436d823c01436d8481b30002', 'Chrome', '微信素材添加成功', 3, '192.168.88.1', '2014-01-08 00:23:57', 1, '4028d881436d514601436d5215ac0043'),
('4028d881439b285601439b296cb30000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-01-16 21:06:59', 1, '4028d881436d514601436d5215ac0043'),
('4028d881439b285601439b2d8c830001', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-01-16 21:11:30', 1, '4028d881436d514601436d5215ac0043'),
('4028d881439b389601439b39332c0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-01-16 21:24:13', 1, '4028d881436d514601436d5215ac0043'),
('4028d881439b3a1601439b3a5deb0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-01-16 21:25:30', 1, '4028d881436d514601436d5215ac0043'),
('4028d881439b3a1601439b3b9fe50001', 'Chrome', '微信单图消息删除成功', 4, '192.168.88.1', '2014-01-16 21:26:52', 1, '4028d881436d514601436d5215ac0043'),
('4028d88143a83cad0143a83d55b00000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-01-19 10:03:48', 1, '4028d881436d514601436d5215ac0043'),
('4028d88143a83cad0143a83d7ba10001', 'Chrome', '微信单图消息删除成功', 4, '192.168.88.1', '2014-01-19 10:03:58', 1, '4028d881436d514601436d5215ac0043'),
('4028d88143a83cad0143a84123050005', 'Chrome', '用户admin已退出', 2, '192.168.88.1', '2014-01-19 10:07:57', 1, '4028d881436d514601436d5215ac0043'),
('4028d88143a83cad0143a84135f40006', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-01-19 10:08:02', 1, '4028d881436d514601436d5215ac0043'),
('4028d88143a83cad0143a842884b0009', 'Chrome', '用户admin已退出', 2, '192.168.88.1', '2014-01-19 10:09:29', 1, '4028d881436d514601436d5215ac0043'),
('4028d88143a83cad0143a842995f000a', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-01-19 10:09:33', 1, '4028d881436d514601436d5215ac0043'),
('4028d88143a904ff0143a905b6090000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-01-19 13:42:40', 1, '4028d881436d514601436d5215ac0043'),
('4028d88143bc9a910143bc9af4130000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-01-23 08:58:28', 1, '4028d881436d514601436d5215ac0043'),
('4028d881448cf61c01448cf6e6ed0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-03-04 19:59:55', 1, '4028d881436d514601436d5215ac0043'),
('4028d88146dce1940146dce1e75c0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-06-27 18:32:10', 1, '4028d881436d514601436d5215ac0043'),
('4028d88146dce1940146dcebf6710001', 'Chrome', '用户admin已退出', 2, '192.168.88.1', '2014-06-27 18:43:10', 1, '4028d881436d514601436d5215ac0043'),
('4028d88146dd21330146dd21856a0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-06-27 19:41:40', 1, '4028d881436d514601436d5215ac0043'),
('4028d8814710f69f014710f77c450000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-07-07 21:16:00', 1, '4028d881436d514601436d5215ac0043'),
('4028d881472b634601472b63b9c50000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-07-13 00:24:21', 1, '4028d881436d514601436d5215ac0043'),
('4028d881472b679501472b67fd580000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-07-13 00:29:01', 1, '4028d881436d514601436d5215ac0043'),
('4028d881472b8aaf01472b8bd7280000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-07-13 01:08:10', 1, '4028d881436d514601436d5215ac0043'),
('4028d881472f0d8101472f13ea1b0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-07-13 17:35:40', 1, '4028d881436d514601436d5215ac0043'),
('4028d881472f0d8101472f14a4650001', 'Firefox', '删除信息数据成功！', 4, '192.168.88.1', '2014-07-13 17:36:27', 1, '4028d881436d514601436d5215ac0043'),
('4028d881472f0d8101472f154b520004', 'Firefox', '微信单图消息添加成功', 3, '192.168.88.1', '2014-07-13 17:37:10', 1, '4028d881436d514601436d5215ac0043'),
('4028d881472f0d8101472f200b4f0007', 'Firefox', '微信单图消息添加成功', 3, '192.168.88.1', '2014-07-13 17:48:54', 1, '4028d881436d514601436d5215ac0043'),
('4028d881472f0d8101472f219e1b000a', 'Firefox', '微信单图消息添加成功', 3, '192.168.88.1', '2014-07-13 17:50:38', 1, '4028d881436d514601436d5215ac0043'),
('4028d881472f2eb101472f2f492b0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-07-13 18:05:33', 1, '4028d881436d514601436d5215ac0043'),
('4028d881472f356e01472f35e58f0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-07-13 18:12:47', 1, '4028d881436d514601436d5215ac0043'),
('4028d881472f356e01472f36d1aa0004', 'Firefox', '微信单图消息添加成功', 3, '192.168.88.1', '2014-07-13 18:13:47', 1, '4028d881436d514601436d5215ac0043'),
('4028d881472f356e01472f3a1a3b0005', 'Firefox', '微信单图消息删除成功', 4, '192.168.88.1', '2014-07-13 18:17:22', 1, '4028d881436d514601436d5215ac0043'),
('4028d881472f356e01472f4289960008', 'Firefox', '微信单图消息更新成功', 5, '192.168.88.1', '2014-07-13 18:26:35', 1, '4028d881436d514601436d5215ac0043'),
('4028d881472f356e01472f431322000a', 'Firefox', '微信单图消息更新成功', 5, '192.168.88.1', '2014-07-13 18:27:10', 1, '4028d881436d514601436d5215ac0043'),
('4028d881472f451c01472f459c790000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-07-13 18:29:56', 1, '4028d881436d514601436d5215ac0043'),
('4028d881472f451c01472f495eee0002', 'Firefox', '微信单图消息更新成功', 5, '192.168.88.1', '2014-07-13 18:34:03', 1, '4028d881436d514601436d5215ac0043'),
('4028d881472f674b01472f67ba5e0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-07-13 19:07:12', 1, '4028d881436d514601436d5215ac0043'),
('4028d881472f6b2001472f6b818f0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-07-13 19:11:20', 1, '4028d881436d514601436d5215ac0043'),
('4028d881472f712001472f71b7840000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-07-13 19:18:07', 1, '4028d881436d514601436d5215ac0043'),
('4028d881472f712001472f71f60e0001', 'Firefox', '微信单图消息删除成功', 4, '192.168.88.1', '2014-07-13 19:18:23', 1, '4028d881436d514601436d5215ac0043'),
('4028d881472f712001472f7201550002', 'Firefox', '微信单图消息删除成功', 4, '192.168.88.1', '2014-07-13 19:18:26', 1, '4028d881436d514601436d5215ac0043'),
('4028d881472f84d101472fb41e900000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-07-13 20:30:39', 1, '4028d881436d514601436d5215ac0043'),
('4028d881472f84d101472fb4aea30001', 'Firefox', '商城会员删除成功', 4, '192.168.88.1', '2014-07-13 20:31:16', 1, '4028d881436d514601436d5215ac0043'),
('4028d881472f84d101472fb4bf5d0002', 'Firefox', '商城会员删除成功', 4, '192.168.88.1', '2014-07-13 20:31:20', 1, '4028d881436d514601436d5215ac0043'),
('4028d881472f84d101472fb549b70003', 'Firefox', '更新捷微jeeWX的菜单信息信息成功！', 5, '192.168.88.1', '2014-07-13 20:31:55', 1, '4028d881436d514601436d5215ac0043'),
('4028d881472f84d101472fb57ad70004', 'Firefox', '更新企业快速开发平台的菜单信息信息成功！', 5, '192.168.88.1', '2014-07-13 20:32:08', 1, '4028d881436d514601436d5215ac0043'),
('4028d881472fbd4401472fbdb5e60000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-07-13 20:41:07', 1, '4028d881436d514601436d5215ac0043'),
('4028d881472fbd4401472fbde7670002', 'Firefox', '添加joa123的信息成功！', 3, '192.168.88.1', '2014-07-13 20:41:20', 1, '4028d881436d514601436d5215ac0043'),
('4028d881472fbd4401472fbdfb560004', 'Firefox', '添加333的信息成功！', 3, '192.168.88.1', '2014-07-13 20:41:25', 1, '4028d881436d514601436d5215ac0043'),
('4028d881472fbd4401472fbe186a0005', 'Firefox', '更新333的菜单信息信息成功！', 5, '192.168.88.1', '2014-07-13 20:41:33', 1, '4028d881436d514601436d5215ac0043'),
('4028d881472fbd4401472fbe28430006', 'Firefox', '删除joa123菜单信息数据', 4, '192.168.88.1', '2014-07-13 20:41:37', 1, '4028d881436d514601436d5215ac0043'),
('4028d881472fbd4401472fbe50fb0007', 'Firefox', '同步菜单信息数据成功！', 4, '192.168.88.1', '2014-07-13 20:41:47', 1, '4028d881436d514601436d5215ac0043'),
('4028d88147301fa50147302271f20000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-07-13 22:31:09', 1, '4028d881436d514601436d5215ac0043'),
('4028d881473027c7014730283f0c0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-07-13 22:37:29', 1, '4028d881436d514601436d5215ac0043'),
('4028d8814734ee0d0147351707bd0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-07-14 21:36:47', 1, '4028d881436d514601436d5215ac0043'),
('4028d8814734ee0d014735670b820006', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-07-14 23:04:11', 1, '4028d881436d514601436d5215ac0043'),
('4028d8814734ee0d0147356b6b600011', 'Firefox', '修改关键字回复成功！', 5, '192.168.88.1', '2014-07-14 23:08:58', 1, '4028d881436d514601436d5215ac0043'),
('4028d8814734ee0d0147357de8000013', 'Firefox', '修改关键字回复成功！', 5, '192.168.88.1', '2014-07-14 23:29:09', 1, '4028d881436d514601436d5215ac0043'),
('4028d88147359f510147359fa7950000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-07-15 00:06:01', 1, '4028d881436d514601436d5215ac0043'),
('4028d88147359f51014735a020630002', 'Firefox', '微信单图消息更新成功', 5, '192.168.88.1', '2014-07-15 00:06:32', 1, '4028d881436d514601436d5215ac0043'),
('4028d88147359f51014735a02cbf0003', 'Firefox', '微信单图消息更新成功', 5, '192.168.88.1', '2014-07-15 00:06:35', 1, '4028d881436d514601436d5215ac0043'),
('4028d881474489d70147448bcaab0000', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-07-17 21:38:37', 1, '4028d881436d514601436d5215ac0043'),
('4028d881474489d701474494f70c0001', 'Firefox', '用户admin已退出', 2, '192.168.88.1', '2014-07-17 21:48:39', 1, '4028d881436d514601436d5215ac0043'),
('4028d881474489d7014744955dfb0002', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-07-17 21:49:05', 1, '4028d881436d514601436d5215ac0043'),
('4028d881474489d701474495b5bf0003', 'Firefox', '用户: ceshi密码重置成功', 5, '192.168.88.1', '2014-07-17 21:49:27', 1, '4028d881436d514601436d5215ac0043');
INSERT INTO `t_s_log` (`ID`, `broswer`, `logcontent`, `loglevel`, `note`, `operatetime`, `operatetype`, `userid`) VALUES
('4028d881474489d701474495c3940004', 'Firefox', '用户admin已退出', 2, '192.168.88.1', '2014-07-17 21:49:31', 1, '4028d881436d514601436d5215ac0043'),
('4028d881474489d701474495de470005', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-07-17 21:49:38', 1, '4028d881436d514601436d5215ac0043'),
('4028d881474489d701474495f5b00006', 'Firefox', '用户admin已退出', 2, '192.168.88.1', '2014-07-17 21:49:44', 1, '4028d881436d514601436d5215ac0043'),
('4028d881474489d7014744966c3a0007', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-07-17 21:50:14', 1, '4028d881436d514601436d5215ac0043'),
('4028d881474489d7014744969efe0008', 'Firefox', '用户admin已退出', 2, '192.168.88.1', '2014-07-17 21:50:27', 1, '4028d881436d514601436d5215ac0043'),
('4028d881474489d701474496cad00009', 'Firefox', '用户: ceshi[信息部]登录成功', 1, '192.168.88.1', '2014-07-17 21:50:38', 1, '402881e44648134a014648174a45000c'),
('4028d881474489d7014744971411000a', 'Firefox', '用户ceshi已退出', 2, '192.168.88.1', '2014-07-17 21:50:57', 1, '402881e44648134a014648174a45000c'),
('4028d881474489d70147449733e2000b', 'Firefox', '用户: admin[信息部]登录成功', 1, '192.168.88.1', '2014-07-17 21:51:05', 1, '4028d881436d514601436d5215ac0043'),
('4028d881474489d70147449868fc0023', 'Firefox', '用户admin已退出', 2, '192.168.88.1', '2014-07-17 21:52:24', 1, '4028d881436d514601436d5215ac0043'),
('4028d881474489d7014744989cca0024', 'Firefox', '用户: ceshi[信息部]登录成功', 1, '192.168.88.1', '2014-07-17 21:52:38', 1, '402881e44648134a014648174a45000c'),
('4028d881474489d701474499892d0026', 'Firefox', '微信公众帐号信息添加成功', 3, '192.168.88.1', '2014-07-17 21:53:38', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f801487817bd4c0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 14:54:54', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f801487817c9910003', 'Firefox', '用户: 添加成功', 3, '119.40.35.41', '2014-09-15 14:54:57', 1, NULL),
('f7a8a3a9487816f801487817cd5a0004', 'Firefox', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 14:54:58', 1, 'f7a8a3a9487816f801487817c4fd0001'),
('f7a8a3a9487816f80148781850940005', 'Chrome', '用户: admin密码重置成功', 5, '119.40.35.41', '2014-09-15 14:55:32', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f801487818b3260008', 'Chrome', '用户: dj添加成功', 3, '119.40.35.41', '2014-09-15 14:55:57', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f801487818dfa5000a', 'Chrome', '角色: duij被添加成功', 3, '119.40.35.41', '2014-09-15 14:56:09', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f8014878192393000f', 'Chrome', '用户: dj更新成功', 5, '119.40.35.41', '2014-09-15 14:56:26', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f801487819322a0010', 'Chrome', '用户: ceshi[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 14:56:30', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f80148781956b90011', 'Chrome', '角色: 兑奖用户被更新成功', 5, '119.40.35.41', '2014-09-15 14:56:39', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f801487819f4120043', 'Chrome', '用户admin已退出', 2, '119.40.35.41', '2014-09-15 14:57:19', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148781a27a50044', 'Chrome', '用户: dj[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 14:57:33', 1, 'f7a8a3a9487816f801487818b3070006'),
('f7a8a3a9487816f80148781a61b10045', 'Chrome', '用户dj已退出', 2, '119.40.35.41', '2014-09-15 14:57:47', 1, 'f7a8a3a9487816f801487818b3070006'),
('f7a8a3a9487816f80148781ab9f20046', 'Chrome', '用户: admin[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 14:58:10', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148781b7e9a0047', 'Chrome', '用户: tingfeng[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 14:59:00', 1, '402881e4461f9c6401461fa2e6f50002'),
('f7a8a3a9487816f80148781bda660048', 'rv:11.0', '用户: ceshi[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 14:59:24', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f80148781ca0f20049', 'Chrome', '用户: ceshi[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 15:00:15', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f80148781ca577004a', 'Chrome', '微信公众帐号信息更新成功', 5, '119.40.35.41', '2014-09-15 15:00:16', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148781e4d1c004d', 'Chrome', '用户: 添加成功', 3, '119.40.35.41', '2014-09-15 15:02:04', 1, NULL),
('f7a8a3a9487816f80148781e4d1c004e', 'Chrome', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 15:02:04', 1, 'f7a8a3a9487816f80148781e4cfc004b'),
('f7a8a3a9487816f80148781f186b004f', 'Chrome', '更新BPM业务构建平台的菜单信息信息成功！', 5, '119.40.35.41', '2014-09-15 15:02:56', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148781f55640050', 'Chrome', '更新捷微-微信管家的菜单信息信息成功！', 5, '119.40.35.41', '2014-09-15 15:03:12', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f8014878200ba40053', 'Safari', '用户: 添加成功', 3, '119.40.35.41', '2014-09-15 15:03:59', 1, NULL),
('f7a8a3a9487816f8014878200ba40054', 'Safari', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 15:03:59', 1, 'f7a8a3a9487816f8014878200b850051'),
('f7a8a3a9487816f80148782047750055', 'Chrome', '用户admin已退出', 2, '119.40.35.41', '2014-09-15 15:04:14', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f8014878207ee00056', 'Chrome', '用户: admin[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 15:04:28', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148782154dd0059', 'Safari', '用户: 添加成功', 3, '119.40.35.41', '2014-09-15 15:05:23', 1, NULL),
('f7a8a3a9487816f80148782154dd005a', 'Safari', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 15:05:23', 1, 'f7a8a3a9487816f80148782154be0057'),
('f7a8a3a9487816f80148782203bb005b', 'Chrome', '更新关于我们的菜单信息信息成功！', 5, '119.40.35.41', '2014-09-15 15:06:08', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f8014878224289005f', 'Safari', '用户: 添加成功', 3, '119.40.35.41', '2014-09-15 15:06:24', 1, NULL),
('f7a8a3a9487816f80148782242890060', 'Safari', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 15:06:24', 1, 'f7a8a3a9487816f801487822427a005d'),
('f7a8a3a9487816f8014878224da50061', 'Chrome', '更新捷微：敏捷微信管家的菜单信息信息成功！', 5, '119.40.35.41', '2014-09-15 15:06:27', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f801487822acec0063', 'Chrome', '添加兑奖入口的信息成功！', 3, '119.40.35.41', '2014-09-15 15:06:51', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f801487822b44e0064', 'Chrome', '同步菜单信息数据成功！', 4, '119.40.35.41', '2014-09-15 15:06:53', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f801487822c3cf0065', 'Safari', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 15:06:57', 1, 'f7a8a3a9487816f801487822427a005d'),
('f7a8a3a9487816f801487822c3cf0066', 'Safari', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 15:06:57', 1, 'f7a8a3a9487816f801487822427a005d'),
('f7a8a3a9487816f801487822c8ff0067', 'Safari', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 15:06:58', 1, 'f7a8a3a9487816f801487822427a005d'),
('f7a8a3a9487816f801487822c8ff0068', 'Safari', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 15:06:58', 1, 'f7a8a3a9487816f801487822427a005d'),
('f7a8a3a9487816f80148782427c40069', 'Chrome', '更新JEECG 工作流商业版的菜单信息信息成功！', 5, '119.40.35.41', '2014-09-15 15:08:28', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148782446b6006a', 'Chrome', '更新JeeWx 微信管家的菜单信息信息成功！', 5, '119.40.35.41', '2014-09-15 15:08:36', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148782459ff006b', 'Chrome', '更新兑奖入口的菜单信息信息成功！', 5, '119.40.35.41', '2014-09-15 15:08:41', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f8014878247112006c', 'Chrome', '更新联系我们的菜单信息信息成功！', 5, '119.40.35.41', '2014-09-15 15:08:47', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f8014878248526006d', 'Chrome', '更新兑奖入口的菜单信息信息成功！', 5, '119.40.35.41', '2014-09-15 15:08:52', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f8014878259379006e', 'Chrome', '更新微网站的菜单信息信息成功！', 5, '119.40.35.41', '2014-09-15 15:10:01', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f801487825c344006f', 'Chrome', '更新微投票的菜单信息信息成功！', 5, '119.40.35.41', '2014-09-15 15:10:13', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f801487826153c0070', '其它', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 15:10:34', 1, 'f7a8a3a9487816f801487822427a005d'),
('f7a8a3a9487816f8014878269c5e0071', 'Chrome', '更新JeeWx 微信管家的菜单信息信息成功！', 5, '119.40.35.41', '2014-09-15 15:11:09', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f801487826ff6d0072', 'Chrome', '更新JEECG 工作流商业版的菜单信息信息成功！', 5, '119.40.35.41', '2014-09-15 15:11:34', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f801487827961f0073', '其它', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 15:12:13', 1, 'f7a8a3a9487816f801487817c4fd0001'),
('f7a8a3a9487816f801487829a8080078', '其它', '用户: 添加成功', 3, '119.40.35.41', '2014-09-15 15:14:29', 1, NULL),
('f7a8a3a9487816f801487829a8170079', '其它', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 15:14:29', 1, 'f7a8a3a9487816f801487829a7f80076'),
('f7a8a3a9487816f80148782cb642007a', 'Chrome', '用户: ceshi[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 15:17:49', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f80148782d755b007b', 'Chrome', '同步菜单信息数据成功！', 4, '119.40.35.41', '2014-09-15 15:18:38', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f801487831f2c5007c', 'Chrome', '用户: ceshi[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 15:23:32', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f801487836b391007e', 'Chrome', '权限: 投票PK被添加成功', 3, '119.40.35.41', '2014-09-15 15:28:43', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f801487836e83e0080', 'Chrome', '权限: 用户信息管理被添加成功', 3, '119.40.35.41', '2014-09-15 15:28:57', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148783723430082', 'Chrome', '权限: 投票记录查询被添加成功', 3, '119.40.35.41', '2014-09-15 15:29:12', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f8014878375c830084', 'Chrome', '权限: 参数配置被添加成功', 3, '119.40.35.41', '2014-09-15 15:29:27', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f8014878375dac0085', 'Chrome', '用户: ceshi[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 15:29:27', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f80148783824e4008a', 'Chrome', '用户admin已退出', 2, '119.40.35.41', '2014-09-15 15:30:18', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f8014878382dae008b', 'Chrome', '用户: ceshi[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 15:30:20', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f8014878385c40008c', 'Chrome', '用户: admin[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 15:30:32', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f8014878392ccf008d', 'Chrome', '用户ceshi已退出', 2, '119.40.35.41', '2014-09-15 15:31:26', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f801487839b24b008e', 'Chrome', '用户: tingfeng[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 15:32:00', 1, '402881e4461f9c6401461fa2e6f50002'),
('f7a8a3a9487816f80148783b29890091', 'Safari', '用户: 添加成功', 3, '119.40.35.41', '2014-09-15 15:33:36', 1, NULL),
('f7a8a3a9487816f80148783b29990092', 'Safari', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 15:33:36', 1, 'f7a8a3a9487816f80148783b292b008f'),
('f7a8a3a9487816f80148783b3bb90094', 'Chrome', '商品分类添加成功', 3, '119.40.35.41', '2014-09-15 15:33:40', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f80148783b59730096', 'Chrome', '商品分类添加成功', 3, '119.40.35.41', '2014-09-15 15:33:48', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f80148783c358b0098', 'Chrome', '商品信息添加成功', 3, '119.40.35.41', '2014-09-15 15:34:44', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f80148783d6d300099', 'Chrome', '用户: admin[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 15:36:04', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148783dab04009a', '其它', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 15:36:20', 1, 'f7a8a3a9487816f801487822427a005d'),
('f7a8a3a9487816f80148783f0516009e', 'Chrome', '扩展接口管理添加成功', 3, '119.40.35.41', '2014-09-15 15:37:49', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148783f87a4009f', 'Firefox', '用户: ceshi[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 15:38:22', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f801487841d9a200a2', 'Firefox', '修改关文本模板成功！', 5, '119.40.35.41', '2014-09-15 15:40:54', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f801487842fc3900a3', 'Chrome', '用户: ceshi[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 15:42:08', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f801487843246200a5', 'Chrome', '添加竞选投票PK的信息成功！', 3, '119.40.35.41', '2014-09-15 15:42:19', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f801487843345000a6', 'Chrome', '同步菜单信息数据成功！', 4, '119.40.35.41', '2014-09-15 15:42:23', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f8014878437ca400a7', 'Chrome', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 15:42:41', 1, 'f7a8a3a9487816f80148781e4cfc004b'),
('f7a8a3a9487816f8014878449b7200aa', 'Safari', '用户: 添加成功', 3, '119.40.35.41', '2014-09-15 15:43:55', 1, NULL),
('f7a8a3a9487816f8014878449b8100ab', 'Safari', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 15:43:55', 1, 'f7a8a3a9487816f8014878449b6200a8'),
('f7a8a3a9487816f801487844f43000ac', 'MSIE 10.0', '用户: admin[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 15:44:17', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f801487845f3ce00af', 'Chrome', '用户: 添加成功', 3, '119.40.35.41', '2014-09-15 15:45:23', 1, NULL),
('f7a8a3a9487816f801487845f3dd00b0', 'Chrome', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 15:45:23', 1, 'f7a8a3a9487816f801487845f3be00ad'),
('f7a8a3a9487816f801487846a01b00b1', 'Chrome', '用户admin已退出', 2, '119.40.35.41', '2014-09-15 15:46:07', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f801487846fb1c00b2', 'Chrome', '用户: admin[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 15:46:30', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f801487847e64700b3', 'Chrome', '用户: ceshi[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 15:47:31', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f801487848152700b6', 'Chrome', '用户: 添加成功', 3, '119.40.35.41', '2014-09-15 15:47:43', 1, NULL),
('f7a8a3a9487816f801487848152700b7', 'Chrome', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 15:47:43', 1, 'f7a8a3a9487816f801487848150800b4'),
('f7a8a3a9487816f8014878488baf00b9', 'Chrome', '加入会员成功!', 3, '119.40.35.41', '2014-09-15 15:48:13', 1, 'f7a8a3a9487816f801487848150800b4'),
('f7a8a3a9487816f801487848e4db00bc', 'Chrome', '用户: 添加成功', 3, '119.40.35.41', '2014-09-15 15:48:36', 1, NULL),
('f7a8a3a9487816f801487848e4db00bd', 'Chrome', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 15:48:36', 1, 'f7a8a3a9487816f801487848e4cb00ba'),
('f7a8a3a9487816f80148784c2ea700be', 'MSIE 9.0', '用户: ceshi[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 15:52:11', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f80148784e234300c0', 'MSIE 9.0', '用户ceshi已退出', 2, '119.40.35.41', '2014-09-15 15:54:19', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f80148784e296d00c2', 'MSIE 10.0', '商品分类添加成功', 3, '119.40.35.41', '2014-09-15 15:54:21', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148784edacc00c3', 'MSIE 10.0', '商品分类更新成功', 5, '119.40.35.41', '2014-09-15 15:55:06', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148784ef29900c4', '其它', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 15:55:12', 1, 'f7a8a3a9487816f80148781e4cfc004b'),
('f7a8a3a9487816f80148784ef43000c7', 'MSIE 9.0', '用户: ceshi123添加成功', 3, '119.40.35.41', '2014-09-15 15:55:13', 1, NULL),
('f7a8a3a9487816f80148784f013f00c8', 'MSIE 10.0', '商品分类更新成功', 5, '119.40.35.41', '2014-09-15 15:55:16', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148784f2e6a00ca', 'MSIE 10.0', '商品分类更新成功', 5, '119.40.35.41', '2014-09-15 15:55:28', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148784f555b00cb', 'MSIE 9.0', '用户: ceshi123[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 15:55:38', 1, 'f7a8a3a9487816f80148784ef41000c5'),
('f7a8a3a9487816f80148784f7d7400cd', 'MSIE 10.0', '商品分类更新成功', 5, '119.40.35.41', '2014-09-15 15:55:48', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148784fb4d000ce', 'MSIE 9.0', '用户ceshi123已退出', 2, '119.40.35.41', '2014-09-15 15:56:02', 1, 'f7a8a3a9487816f80148784ef41000c5'),
('f7a8a3a9487816f80148784fb75100d1', 'Firefox', '用户: 123456添加成功', 3, '119.40.35.41', '2014-09-15 15:56:03', 1, NULL),
('f7a8a3a9487816f801487850042900d2', 'Firefox', '用户: 123456[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 15:56:22', 1, 'f7a8a3a9487816f80148784fb74100cf'),
('f7a8a3a9487816f8014878501d3f00d3', 'MSIE 9.0', '用户: ceshi[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 15:56:29', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f801487850370000d5', 'MSIE 10.0', '商品分类更新成功', 5, '119.40.35.41', '2014-09-15 15:56:35', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f8014878515dec00d6', '其它', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 15:57:51', 1, 'f7a8a3a9487816f8014878449b6200a8'),
('f7a8a3a9487816f801487852a92900d9', 'Chrome', '用户: lwljdtx添加成功', 3, '119.40.35.41', '2014-09-15 15:59:16', 1, NULL),
('f7a8a3a9487816f801487852b3e700da', 'MSIE 10.0', '用户: ceshi[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 15:59:19', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f801487852e85500db', '其它', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 15:59:32', 1, 'f7a8a3a9487816f801487817c4fd0001'),
('f7a8a3a9487816f801487852ed0800dc', 'Chrome', '用户: lwljdtx[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 15:59:33', 1, 'f7a8a3a9487816f801487852a91a00d7'),
('f7a8a3a9487816f801487854855b00df', 'Chrome', '用户: kyno添加成功', 3, '119.40.35.41', '2014-09-15 16:01:18', 1, NULL),
('f7a8a3a9487816f801487854d2c000e0', 'Chrome', '用户: kyno[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 16:01:37', 1, 'f7a8a3a9487816f801487854854c00dd'),
('f7a8a3a9487816f80148785519cb00e1', '其它', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 16:01:56', 1, 'f7a8a3a9487816f801487848150800b4'),
('f7a8a3a9487816f8014878559c6900e2', 'Chrome', '用户: admin[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 16:02:29', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f801487855f13000e3', 'Chrome', '更新微信管家(JeeWx)的菜单信息信息成功！', 5, '119.40.35.41', '2014-09-15 16:02:51', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148785621f400e4', 'Chrome', '更新BPM流程开发平台（jeecg）的菜单信息信息成功！', 5, '119.40.35.41', '2014-09-15 16:03:03', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f801487856321100e6', 'MSIE 10.0', '商品分类更新成功', 5, '119.40.35.41', '2014-09-15 16:03:07', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f801487856695e00e7', 'Firefox', '用户: ceshi[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 16:03:22', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f801487856793c00e9', 'Chrome', '添加调研问卷的信息成功！', 3, '119.40.35.41', '2014-09-15 16:03:26', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f801487856806000ea', 'Chrome', '同步菜单信息数据成功！', 4, '119.40.35.41', '2014-09-15 16:03:27', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f8014878578d7b00eb', 'Chrome', '权限: 微调研问卷被更新成功', 5, '119.40.35.41', '2014-09-15 16:04:36', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f8014878580cdc00ec', 'Chrome', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 16:05:09', 1, 'f7a8a3a9487816f801487848e4cb00ba'),
('f7a8a3a9487816f801487858754b00ed', 'MSIE 10.0', '商品信息删除成功,部分商品可能已经下单，不能删除。', 4, '119.40.35.41', '2014-09-15 16:05:36', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f801487858757a00ee', 'MSIE 10.0', '商品信息删除成功,部分商品可能已经下单，不能删除。', 4, '119.40.35.41', '2014-09-15 16:05:36', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148785875a800ef', 'MSIE 10.0', '商品信息删除成功,部分商品可能已经下单，不能删除。', 4, '119.40.35.41', '2014-09-15 16:05:36', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148785875c800f0', 'MSIE 10.0', '商品信息删除成功,部分商品可能已经下单，不能删除。', 4, '119.40.35.41', '2014-09-15 16:05:36', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f801487858fefd00f1', 'Chrome', '用户: ceshi[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 16:06:11', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f801487859ec7a00f4', 'Chrome', '微调研 添加成功', 3, '119.40.35.41', '2014-09-15 16:07:12', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148785ae81f00f5', 'Chrome', '权限: 调研问卷题目被更新成功', 5, '119.40.35.41', '2014-09-15 16:08:16', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148785af7bf00f6', 'MSIE 10.0', '商品信息更新成功', 5, '119.40.35.41', '2014-09-15 16:08:20', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148785b174e00f7', 'Chrome', '权限: 调研问卷被更新成功', 5, '119.40.35.41', '2014-09-15 16:08:28', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148785b4a0600f8', 'Chrome', '权限: 调研问卷结果被更新成功', 5, '119.40.35.41', '2014-09-15 16:08:41', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148785b540800f9', 'Chrome', '用户admin已退出', 2, '119.40.35.41', '2014-09-15 16:08:44', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148785b984500fb', 'Chrome', '用户: admin[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 16:09:01', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148785bebf300fc', 'Chrome', '权限: 调研问卷题目被更新成功', 5, '119.40.35.41', '2014-09-15 16:09:23', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148785bf79b00fd', 'Chrome', '用户admin已退出', 2, '119.40.35.41', '2014-09-15 16:09:26', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148785c2e9a00fe', 'MSIE 10.0', '商品信息更新成功', 5, '119.40.35.41', '2014-09-15 16:09:40', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148785c36b800ff', 'Chrome', '用户: admin[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 16:09:42', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148785ca65a0100', 'Chrome', '微调研 添加成功', 3, '119.40.35.41', '2014-09-15 16:10:10', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148785d0aa20102', 'Chrome', '用户: ceshi[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 16:10:36', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f80148785d4c9c0104', 'Chrome', '权限: 调研问卷主题被更新成功', 5, '119.40.35.41', '2014-09-15 16:10:53', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148785e04050105', 'MSIE 10.0', '商品信息更新成功', 5, '119.40.35.41', '2014-09-15 16:11:40', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148785e634c0106', 'MSIE 10.0', '商品信息更新成功', 5, '119.40.35.41', '2014-09-15 16:12:04', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148785e9c0f0109', 'Chrome', '用户: dps12345添加成功', 3, '119.40.35.41', '2014-09-15 16:12:19', 1, NULL),
('f7a8a3a9487816f80148785ed688010b', 'Chrome', '微调研 添加成功', 3, '119.40.35.41', '2014-09-15 16:12:34', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148785f53b70110', 'Chrome', '微调研 添加成功', 3, '119.40.35.41', '2014-09-15 16:13:06', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148785f66260111', 'Chrome', '用户: ceshi[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 16:13:11', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f8014878603a000112', '其它', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 16:14:05', 1, 'f7a8a3a9487816f80148781e4cfc004b'),
('f7a8a3a9487816f80148786065560118', 'Chrome', '微调研 添加成功', 3, '119.40.35.41', '2014-09-15 16:14:16', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148786097910119', 'Chrome', '用户: ceshi[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 16:14:29', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f801487860ab48011a', 'Chrome', '用户: ceshi[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 16:14:34', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f801487860b134011c', 'Chrome', '微调研 添加成功', 3, '119.40.35.41', '2014-09-15 16:14:35', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f801487860cd38011d', 'Chrome', '微调研 发布成功', 4, '119.40.35.41', '2014-09-15 16:14:43', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f801487860fb9b011f', 'Chrome', '用户: ceshi[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 16:14:54', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f8014878617f9f0120', 'Chrome', '用户: admin[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 16:15:28', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f801487862ab2f0125', 'Chrome', '商城地址信息添加成功', 3, '119.40.35.41', '2014-09-15 16:16:45', 1, 'f7a8a3a9487816f80148781e4cfc004b'),
('f7a8a3a9487816f8014878645c690128', 'Chrome', '*********************支付宝即时到账交易请求 begin***********************', 3, '119.40.35.41', '2014-09-15 16:18:36', 1, 'f7a8a3a9487816f80148781e4cfc004b'),
('f7a8a3a9487816f8014878645c790129', 'Chrome', '*** error: Class PayExtAction; Method alipaydirectRequest(); key is null ***', 3, '119.40.35.41', '2014-09-15 16:18:36', 1, 'f7a8a3a9487816f80148781e4cfc004b'),
('f7a8a3a9487816f8014878645c79012a', 'Chrome', '*** error: Class PayExtAction; Method alipaydirectRequest(); bizID is null ***', 3, '119.40.35.41', '2014-09-15 16:18:36', 1, 'f7a8a3a9487816f80148781e4cfc004b'),
('f7a8a3a9487816f801487865bb4d012b', 'Chrome', '*********************支付宝即时到账交易请求 begin***********************', 3, '119.40.35.41', '2014-09-15 16:20:06', 1, 'f7a8a3a9487816f80148781e4cfc004b'),
('f7a8a3a9487816f801487865bb5d012c', 'Chrome', '*** error: Class PayExtAction; Method alipaydirectRequest(); key is null ***', 3, '119.40.35.41', '2014-09-15 16:20:06', 1, 'f7a8a3a9487816f80148781e4cfc004b'),
('f7a8a3a9487816f801487865bb5d012d', 'Chrome', '*** error: Class PayExtAction; Method alipaydirectRequest(); bizID is null ***', 3, '119.40.35.41', '2014-09-15 16:20:06', 1, 'f7a8a3a9487816f80148781e4cfc004b'),
('f7a8a3a9487816f8014878664713012e', 'Chrome', '*********************支付宝即时到账交易请求 begin***********************', 3, '119.40.35.41', '2014-09-15 16:20:41', 1, 'f7a8a3a9487816f80148781e4cfc004b'),
('f7a8a3a9487816f8014878664722012f', 'Chrome', '*** error: Class PayExtAction; Method alipaydirectRequest(); key is null ***', 3, '119.40.35.41', '2014-09-15 16:20:41', 1, 'f7a8a3a9487816f80148781e4cfc004b'),
('f7a8a3a9487816f80148786647220130', 'Chrome', '*** error: Class PayExtAction; Method alipaydirectRequest(); bizID is null ***', 3, '119.40.35.41', '2014-09-15 16:20:41', 1, 'f7a8a3a9487816f80148781e4cfc004b'),
('f7a8a3a9487816f801487867227e0132', 'Chrome', '用户: ceshi[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 16:21:38', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f80148786744cc0133', 'Chrome', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 16:21:46', 1, 'f7a8a3a9487816f801487817c4fd0001'),
('f7a8a3a9487816f80148786784d20134', '其它', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 16:22:03', 1, 'f7a8a3a9487816f801487848150800b4'),
('f7a8a3a9487816f801487867fea60135', '其它', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 16:22:34', 1, 'f7a8a3a9487816f8014878449b6200a8'),
('f7a8a3a9487816f801487868de770138', 'Chrome', '商城地址信息添加成功', 3, '119.40.35.41', '2014-09-15 16:23:31', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f80148786a1570013a', 'rv:11.0', '用户: ceshi[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 16:24:51', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f80148786a5874013b', 'Chrome', '用户admin已退出', 2, '119.40.35.41', '2014-09-15 16:25:08', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148786ab913013c', 'Chrome', '用户: admin[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 16:25:33', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148786b006c013e', 'Chrome', '设定成功', 4, '119.40.35.41', '2014-09-15 16:25:51', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f80148786f49b70141', 'Safari', '用户: 添加成功', 3, '119.40.35.41', '2014-09-15 16:30:32', 1, NULL),
('f7a8a3a9487816f80148786f49b70142', 'Safari', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 16:30:32', 1, 'f7a8a3a9487816f80148786f49a7013f'),
('f7a8a3a9487816f80148787496380146', 'Chrome', '用户: qqqq添加成功', 3, '119.40.35.41', '2014-09-15 16:36:19', 1, NULL),
('f7a8a3a9487816f801487874cf4a0147', 'Chrome', '用户: qqqq[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 16:36:34', 1, 'f7a8a3a9487816f80148787496290144'),
('f7a8a3a9487816f80148787561c60148', 'Chrome', '用户qqqq已退出', 2, '119.40.35.41', '2014-09-15 16:37:11', 1, 'f7a8a3a9487816f80148787496290144'),
('f7a8a3a9487816f8014878759e030149', 'Chrome', '用户: qqqq[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 16:37:27', 1, 'f7a8a3a9487816f80148787496290144'),
('f7a8a3a9487816f80148787cd3f6014a', '其它', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 16:45:19', 1, 'f7a8a3a9487816f8014878449b6200a8'),
('f7a8a3a9487816f80148787e9adb014b', 'Chrome', '权限: 微投票设置被删除成功', 4, '119.40.35.41', '2014-09-15 16:47:16', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148787ecc7a014c', 'Chrome', '权限: 关注用户管理被更新成功', 5, '119.40.35.41', '2014-09-15 16:47:28', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148787ee68a014d', 'Chrome', '权限: 用户分组管理被更新成功', 5, '119.40.35.41', '2014-09-15 16:47:35', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148787f055d014e', 'Chrome', '权限: 业务扩展接口管理被更新成功', 5, '119.40.35.41', '2014-09-15 16:47:43', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148787f2b53014f', 'Chrome', '权限: 接收消息管理被更新成功', 5, '119.40.35.41', '2014-09-15 16:47:53', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148788795510152', 'Safari', '用户: 添加成功', 3, '119.40.35.41', '2014-09-15 16:57:04', 1, NULL),
('f7a8a3a9487816f80148788795510153', 'Safari', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 16:57:04', 1, 'f7a8a3a9487816f80148788795320150'),
('f7a8a3a9487816f801487888473c0154', 'Chrome', '权限: 微投票被更新成功', 5, '119.40.35.41', '2014-09-15 16:57:50', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f8014878888a210155', 'Chrome', '权限: 调研问卷结果被更新成功', 5, '119.40.35.41', '2014-09-15 16:58:07', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f801487888a0c60156', 'Chrome', '权限: 微投票被更新成功', 5, '119.40.35.41', '2014-09-15 16:58:13', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148788955120157', 'Chrome', '权限: 微投票被更新成功', 5, '119.40.35.41', '2014-09-15 16:58:59', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f801487889f9de0159', 'Safari', '留言信息添加成功', 3, '119.40.35.41', '2014-09-15 16:59:41', 1, 'f7a8a3a9487816f80148788795320150'),
('f7a8a3a9487816f80148788a15c2015a', 'Chrome', '权限: 竞选投票PK被更新成功', 5, '119.40.35.41', '2014-09-15 16:59:48', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148788a4500015b', 'Chrome', '权限: 投票结果查询被更新成功', 5, '119.40.35.41', '2014-09-15 17:00:00', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148788d22950165', 'Chrome', '用户: xyytest添加成功', 3, '119.40.35.41', '2014-09-15 17:03:08', 1, NULL),
('f7a8a3a9487816f80148788d71ee0166', 'Chrome', '用户: xyytest[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 17:03:28', 1, 'f7a8a3a9487816f80148788d22850163'),
('f7a8a3a9487816f8014878960d7b0167', 'Safari', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 17:12:52', 1, 'f7a8a3a9487816f801487817c4fd0001'),
('f7a8a3a9487816f80148789637f60168', 'Firefox', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 17:13:03', 1, 'f7a8a3a9487816f801487817c4fd0001'),
('f7a8a3a9487816f80148789683d40169', 'Chrome', '用户: admin[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 17:13:23', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f801487896ba16016b', 'Chrome', '回复留言成功', 3, '119.40.35.41', '2014-09-15 17:13:37', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f801487896c61d016d', 'Chrome', '回复留言成功', 3, '119.40.35.41', '2014-09-15 17:13:40', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f8014878974a60016f', 'Safari', '留言信息添加成功', 3, '119.40.35.41', '2014-09-15 17:14:13', 1, NULL),
('f7a8a3a9487816f801487897e6b00171', 'Safari', '留言信息添加成功', 3, '119.40.35.41', '2014-09-15 17:14:54', 1, NULL),
('f7a8a3a9487816f801487898dc5a0174', 'Safari', '用户: 添加成功', 3, '119.40.35.41', '2014-09-15 17:15:56', 1, NULL),
('f7a8a3a9487816f801487898dc5a0175', 'Safari', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 17:15:56', 1, 'f7a8a3a9487816f801487898dc3b0172'),
('f7a8a3a9487816f801487898efa40176', 'Chrome', '用户: admin[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 17:16:01', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f80148789a88f10179', 'Safari', '用户: 添加成功', 3, '119.40.35.41', '2014-09-15 17:17:46', 1, NULL),
('f7a8a3a9487816f80148789a8901017a', 'Safari', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 17:17:46', 1, 'f7a8a3a9487816f80148789a88e10177'),
('f7a8a3a9487816f8014878a242b9017c', 'Safari', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 17:26:12', 1, 'f7a8a3a9487816f80148783b292b008f'),
('f7a8a3a9487816f8014878a42cb70180', '其它', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 17:28:18', 1, 'f7a8a3a9487816f801487817c4fd0001'),
('f7a8a3a9487816f8014878a64dd20187', 'Safari', '用户: 添加成功', 3, '119.40.35.41', '2014-09-15 17:30:37', 1, NULL),
('f7a8a3a9487816f8014878a64dd20188', 'Safari', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 17:30:37', 1, 'f7a8a3a9487816f8014878a64db30185'),
('f7a8a3a9487816f8014878a653210189', 'Chrome', '权限: 优惠劵被更新成功', 5, '119.40.35.41', '2014-09-15 17:30:39', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f8014878a7f74c018a', 'Chrome', '用户: ceshi[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 17:32:26', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f8014878a8110d018b', 'Safari', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 17:32:33', 1, 'f7a8a3a9487816f8014878449b6200a8'),
('f7a8a3a9487816f8014878a92637018f', 'Safari', '商城地址信息添加成功', 3, '119.40.35.41', '2014-09-15 17:33:44', 1, 'f7a8a3a9487816f8014878449b6200a8'),
('f7a8a3a9487816f8014878a9348e0190', 'Safari', '设定成功', 4, '119.40.35.41', '2014-09-15 17:33:48', 1, 'f7a8a3a9487816f8014878449b6200a8'),
('f7a8a3a9487816f8014878a9830c0193', 'Safari', '*********************支付宝即时到账交易请求 begin***********************', 3, '119.40.35.41', '2014-09-15 17:34:08', 1, 'f7a8a3a9487816f8014878449b6200a8'),
('f7a8a3a9487816f8014878a9831c0194', 'Safari', '*** error: Class PayExtAction; Method alipaydirectRequest(); key is null ***', 3, '119.40.35.41', '2014-09-15 17:34:08', 1, 'f7a8a3a9487816f8014878449b6200a8'),
('f7a8a3a9487816f8014878a9831c0195', 'Safari', '*** error: Class PayExtAction; Method alipaydirectRequest(); bizID is null ***', 3, '119.40.35.41', '2014-09-15 17:34:08', 1, 'f7a8a3a9487816f8014878449b6200a8'),
('f7a8a3a9487816f8014878aa86c10198', 'Chrome', '用户: ceshi[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 17:35:14', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f8014878aae089019a', 'Chrome', 'ceshi加入会员成功!', 3, '119.40.35.41', '2014-09-15 17:35:37', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f8014878ad602f019b', '其它', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 17:38:21', 1, 'f7a8a3a9487816f80148789a88e10177'),
('f7a8a3a9487816f8014878b378f9019c', 'Chrome', '权限: 微信抽奖活动被更新成功', 5, '119.40.35.41', '2014-09-15 17:45:00', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f8014878b39d3b019d', 'Chrome', '权限: 微大转盘被删除成功', 4, '119.40.35.41', '2014-09-15 17:45:10', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f8014878b4c5fb019e', 'Chrome', '用户admin已退出', 2, '119.40.35.41', '2014-09-15 17:46:26', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f8014878b4f47e019f', 'Chrome', '用户: admin[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 17:46:38', 1, '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f8014878b558d501a0', 'Chrome', '用户: ceshi[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 17:47:03', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f8014878b5cfab01a1', 'Chrome', '用户: ceshi[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 17:47:34', 1, '402881e44648134a014648174a45000c'),
('f7a8a3a9487816f8014878b72c4d01a2', '其它', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 17:49:03', 1, 'f7a8a3a9487816f801487817c4fd0001'),
('f7a8a3a9487816f8014878b892f201a3', '其它', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 17:50:35', 1, 'f7a8a3a9487816f801487829a7f80076'),
('f7a8a3a9487816f8014878b9847601a4', '其它', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 17:51:37', 1, 'f7a8a3a9487816f80148789a88e10177'),
('f7a8a3a9487816f8014878b9897701a5', '其它', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 17:51:38', 1, 'f7a8a3a9487816f80148783b292b008f'),
('f7a8a3a9487816f8014878bac3ac01a6', 'Chrome', '用户: xyytest[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 17:52:58', 1, 'f7a8a3a9487816f80148788d22850163'),
('f7a8a3a9487816f8014878bc225201a9', 'Safari', '用户: 添加成功', 3, '119.40.35.41', '2014-09-15 17:54:28', 1, NULL),
('f7a8a3a9487816f8014878bc226201aa', 'Safari', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 17:54:28', 1, 'f7a8a3a9487816f8014878bc224201a7'),
('f7a8a3a9487816f8014878c2304f01ab', '其它', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 18:01:05', 1, 'f7a8a3a9487816f80148789a88e10177'),
('f7a8a3a9487816f8014878c5bd4e01ac', '其它', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 18:04:58', 1, 'f7a8a3a9487816f80148783b292b008f'),
('f7a8a3a9487816f8014878c7539e01ad', '其它', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 18:06:42', 1, 'f7a8a3a9487816f8014878a64db30185'),
('f7a8a3a9487816f8014878c81e4101ae', '其它', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 18:07:33', 1, 'f7a8a3a9487816f801487817c4fd0001'),
('f7a8a3a9487816f8014878c9250201af', '其它', '用户: 登录成功', 1, '119.40.35.41', '2014-09-15 18:08:41', 1, 'f7a8a3a9487816f801487817c4fd0001'),
('f7a8a3a9487816f8014878cf4eb501b0', 'Firefox', '用户: ceshi[信息部]登录成功', 1, '119.40.35.41', '2014-09-15 18:15:25', 1, '402881e44648134a014648174a45000c'),
('ff8080814d435c41014d435c91fd0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '127.0.0.1', '2015-05-11 22:24:09', 1, '4028d881436d514601436d5215ac0043'),
('ff8080814d435c41014d437e98580001', 'Chrome', '用户: admin[信息部]登录成功', 1, '127.0.0.1', '2015-05-11 23:01:19', 1, '4028d881436d514601436d5215ac0043'),
('ff8080814d43a677014d43a7691a0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '127.0.0.1', '2015-05-11 23:45:54', 1, '4028d881436d514601436d5215ac0043'),
('ff8080814d43a9e7014d43aa28600000', 'Chrome', '用户: admin[信息部]登录成功', 1, '127.0.0.1', '2015-05-11 23:48:54', 1, '4028d881436d514601436d5215ac0043'),
('ff8080814d485da1014d485eae630000', 'Chrome', '用户: admin[信息部]登录成功', 1, '127.0.0.1', '2015-05-12 21:44:34', 1, '4028d881436d514601436d5215ac0043'),
('ff8080814d485da1014d486923d00001', 'Chrome', '同步菜单信息数据失败！同步自定义菜单URL地址不正确。', 4, '127.0.0.1', '2015-05-12 21:55:59', 1, '4028d881436d514601436d5215ac0043'),
('ff8080814d485da1014d489c4d4d0003', 'Chrome', '微相册添加成功', 3, '127.0.0.1', '2015-05-12 22:51:52', 1, '4028d881436d514601436d5215ac0043'),
('ff8080814d485da1014d489c8c700004', 'Chrome', '微相册更新成功', 5, '127.0.0.1', '2015-05-12 22:52:08', 1, '4028d881436d514601436d5215ac0043'),
('ff8080814d485da1014d4d8d8c7d0005', 'Chrome', '用户: admin[信息部]登录成功', 1, '127.0.0.1', '2015-05-13 21:53:51', 1, '4028d881436d514601436d5215ac0043'),
('ff8080814d485da1014d4d8e000d0006', 'Chrome', '微社区更新成功', 5, '127.0.0.1', '2015-05-13 21:54:21', 1, '4028d881436d514601436d5215ac0043'),
('ff8080814d485da1014d4d8e968d0008', 'Chrome', '微社区帖子添加成功', 3, '127.0.0.1', '2015-05-13 21:54:59', 1, '4028d881436d514601436d5215ac0043'),
('ff8080814d485da1014d4d8ea6b20009', 'Chrome', '帖子置顶成功', 4, '127.0.0.1', '2015-05-13 21:55:03', 1, '4028d881436d514601436d5215ac0043'),
('ff8080814d485da1014d4d8ebf04000b', 'Chrome', '帖子评论成功', 3, '127.0.0.1', '2015-05-13 21:55:10', 1, '4028d881436d514601436d5215ac0043'),
('ff8080814d485da1014d4d8f303b000c', 'Chrome', '同步菜单信息数据失败！同步自定义菜单URL地址不正确。', 4, '127.0.0.1', '2015-05-13 21:55:39', 1, '4028d881436d514601436d5215ac0043'),
('ff8080814d4d91a1014d4d995fdc0000', 'Chrome', '用户: admin[信息部]登录成功', 1, '127.0.0.1', '2015-05-13 22:06:46', 1, '4028d881436d514601436d5215ac0043'),
('ff8080814d4d91a1014d4d9ac91d0004', 'Chrome', '*********************支付宝即时到账交易请求 begin***********************', 3, '127.0.0.1', '2015-05-13 22:08:19', 1, '4028d881436d514601436d5215ac0043'),
('ff8080814d4d91a1014d4d9ac9570005', 'Chrome', '*** error: Class PayExtAction; Method alipaydirectRequest(); key is null ***', 3, '127.0.0.1', '2015-05-13 22:08:19', 1, '4028d881436d514601436d5215ac0043'),
('ff8080814d4d91a1014d4d9ac9980006', 'Chrome', '*** error: Class PayExtAction; Method alipaydirectRequest(); bizID is null ***', 3, '127.0.0.1', '2015-05-13 22:08:19', 1, '4028d881436d514601436d5215ac0043'),
('ff8080814d4d9ca5014d529dd2c60000', 'Chrome', '用户: admin[信息部]登录成功', 1, '127.0.0.1', '2015-05-14 21:29:44', 1, '4028d881436d514601436d5215ac0043'),
('ff8080814d4d9ca5014d52d5ef580001', 'Chrome', '用户: admin[信息部]登录成功', 1, '127.0.0.1', '2015-05-14 22:31:01', 1, '4028d881436d514601436d5215ac0043'),
('ff8080814d4d9ca5014d576a3de30005', 'Chrome', '用户: admin[信息部]登录成功', 1, '127.0.0.1', '2015-05-15 19:51:30', 1, '4028d881436d514601436d5215ac0043'),
('ff8080814d4d9ca5014d576c35270006', 'Chrome', '微信公众帐号信息更新成功', 5, '127.0.0.1', '2015-05-15 19:53:38', 1, '4028d881436d514601436d5215ac0043'),
('ff8080814d4d9ca5014d5c6442aa0008', 'Chrome', '用户: admin[信息部]登录成功', 1, '127.0.0.1', '2015-05-16 19:03:04', 1, '4028d881436d514601436d5215ac0043');

-- --------------------------------------------------------

--
-- 表的结构 `t_s_operation`
--

CREATE TABLE IF NOT EXISTS `t_s_operation` (
  `ID` varchar(32) NOT NULL,
  `operationcode` varchar(50) DEFAULT NULL,
  `operationicon` varchar(100) DEFAULT NULL,
  `operationname` varchar(50) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `functionid` varchar(32) DEFAULT NULL,
  `iconid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_pceuy41wr2fjbcilyc7mk3m1f` (`functionid`),
  KEY `FK_ny5de7922l39ta2pkhyspd5f` (`iconid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_s_operation`
--

INSERT INTO `t_s_operation` (`ID`, `operationcode`, `operationicon`, `operationname`, `status`, `functionid`, `iconid`) VALUES
('402880e447df43440147df44c65f0001', '#id', NULL, '字段控制', 1, '4028d881436d514601436d521545002b', '4028d881436d514601436d5214650000'),
('402881e44648134a0146482093940049', 'add', NULL, '新增', NULL, '4028d881436d514601436d52154d002d', '4028d881436d514601436d5214650000'),
('402881e44648134a0146482152c2004b', 'edit', NULL, '编辑', NULL, '4028d881436d514601436d52154d002d', '4028d881436d514601436d5214650000'),
('4028d881436d514601436d5216730069', 'add', NULL, '录入', NULL, '4028d881436d514601436d521549002c', '4028d881436d514601436d5214650000'),
('4028d881436d514601436d521678006a', 'edit', NULL, '编辑', NULL, '4028d881436d514601436d521549002c', '4028d881436d514601436d5214650000'),
('4028d881436d514601436d52167c006b', 'del', NULL, '删除', NULL, '4028d881436d514601436d521549002c', '4028d881436d514601436d5214650000'),
('4028d881436d514601436d52167f006c', 'szqm', NULL, '审核', NULL, '4028d881436d514601436d521549002c', '4028d881436d514601436d5214650000');

-- --------------------------------------------------------

--
-- 表的结构 `t_s_opintemplate`
--

CREATE TABLE IF NOT EXISTS `t_s_opintemplate` (
  `ID` varchar(32) NOT NULL,
  `descript` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `t_s_role`
--

CREATE TABLE IF NOT EXISTS `t_s_role` (
  `ID` varchar(32) NOT NULL,
  `rolecode` varchar(10) DEFAULT NULL,
  `rolename` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_s_role`
--

INSERT INTO `t_s_role` (`ID`, `rolecode`, `rolename`) VALUES
('402881e44648134a014648163a6d0001', 'ceshi', '测试角色'),
('4028d881436d514601436d52159c0041', 'admin', '管理员'),
('4028d881436d514601436d5215a00042', 'manager', '普通用户'),
('f7a8a3a9487816f801487818df950009', 'duij', '兑奖用户');

-- --------------------------------------------------------

--
-- 表的结构 `t_s_role_function`
--

CREATE TABLE IF NOT EXISTS `t_s_role_function` (
  `ID` varchar(32) NOT NULL,
  `operation` varchar(100) DEFAULT NULL,
  `functionid` varchar(32) DEFAULT NULL,
  `roleid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_fvsillj2cxyk5thnuu625urab` (`functionid`),
  KEY `FK_9dww3p4w8jwvlrgwhpitsbfif` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_s_role_function`
--

INSERT INTO `t_s_role_function` (`ID`, `operation`, `functionid`, `roleid`) VALUES
('2c91811a4d60d054014d65b59bd90049', NULL, '4028d881436d514601436d52153b0029', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59bee004a', NULL, '4028d881436d514601436d52155a0030', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59bf0004b', NULL, '4028d881436d514601436d521587003c', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59bf0004c', NULL, '4028d881436d514601436d521545002b', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59bf0004d', NULL, '4028d881436d514601436d521540002a', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59bf0004e', NULL, '4028d881436d514601436d521593003f', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59bf0004f', NULL, '4028d881436d514601436d5215290024', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59bf00050', NULL, '4028d881436d514601436d5215990040', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59bf00051', NULL, '4028d881436d514601436d521549002c', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59bf10052', NULL, '4028d881436d514601436d5215300026', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59bf10053', NULL, '4028d881436d514601436d52150b001a', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59bf10054', NULL, '4028d881436d514601436d592bef01a3', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59bf10055', NULL, '4028d881436d514601436d5215260023', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59bf10056', NULL, '4028d881436d514601436d52158a003d', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59bf10057', NULL, '4028d881436d514601436d5215380028', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59bf10058', NULL, '4028d881436d514601436d52152c0025', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59bf10059', NULL, '4028d881436d514601436d5215670033', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59bf1005a', NULL, '4028d881436d514601436d5215770037', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59bf2005b', NULL, '4028d881436d514601436d5215070018', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59bf2005c', NULL, '4028d881436d514601436d5215640032', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59bf2005d', NULL, '4028d881436d514601436d5a18e601a9', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59c31005e', NULL, '4028d881436d514601436d52157a0038', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59c31005f', NULL, '4028d881436d514601436d5215730036', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59c310060', NULL, '4028d881436d514601436d54b1bf018d', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59c310061', NULL, '4028d881436d514601436d521552002e', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59c310062', NULL, '4028d881436d514601436d5215340027', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59c310063', NULL, '4028d881436d514601436d521557002f', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59c390064', NULL, '4028d881436d514601436d52150d001b', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59c390065', NULL, '4028d881436d514601436d52158f003e', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59c390066', NULL, '4028d881436d514601436d521584003b', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59c3a0067', NULL, '4028d881436d514601436d52154d002d', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59c3a0068', NULL, '4028d881436d514601436d58ff5e01a1', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59c3a0069', NULL, '4028d881436d514601436d52157e0039', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59c3a006a', NULL, '4028d881436d514601436d52156b0034', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59c3a006b', NULL, '4028d881436d514601436d521581003a', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59c3a006c', NULL, '402880e6477d61da01477d71430f001a', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59c3b006d', NULL, '4028d881436d514601436d52150f001c', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59c3b006e', NULL, '4028d881436d514601436d52155f0031', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59c3b006f', NULL, '4028d881436d514601436d52156f0035', '4028d881436d514601436d52159c0041'),
('2c91811a4d60d054014d65b59c3b0070', NULL, '4028d881436d514601436d53fee50187', '4028d881436d514601436d52159c0041'),
('4028818348fa4cf30148fa5236ba0002', NULL, '3c3cd1354801b1b5014801b6b0370001', '4028d881436d514601436d52159c0041'),
('4028818348fa4cf30148fa5236ba0003', NULL, '40288088486e8df201486e95ce330006', '4028d881436d514601436d52159c0041'),
('4028818348fa4cf30148fa5236bb0008', NULL, '3c3cd1354801b1b5014801b768030003', '4028d881436d514601436d52159c0041'),
('4028818348fa4cf30148fa5236bb000a', NULL, '4028d881436d514601436d56555e0193', '4028d881436d514601436d52159c0041'),
('4028818348fa4cf30148fa5236bc000c', NULL, '40288088486e8df201486e94f0d00004', '4028d881436d514601436d52159c0041'),
('4028818348fa4cf30148fa5236bc000f', NULL, '40288088486e8df201486e942f740002', '4028d881436d514601436d52159c0041'),
('4028818348fa4cf30148fa5236bc0010', NULL, '3c3cd1354801b1b5014801b7dd490005', '4028d881436d514601436d52159c0041'),
('40288183490a24bb01490a5bdfb6001c', NULL, '40288183490a24bb01490a5a28b10018', '4028d881436d514601436d52159c0041'),
('40288183490a24bb01490a5bdfc2001d', NULL, '40288183490a24bb01490a5bb790001a', '4028d881436d514601436d52159c0041'),
('402889fb4820bcb3014820c2f9ed0009', NULL, '2c9716d547c2f4290147c36c654e0001', '402881e44648134a014648163a6d0001'),
('402889fb4820bcb3014820c2f9ed000a', NULL, '402881e9481f46a801481f52afb70006', '402881e44648134a014648163a6d0001'),
('402889fb4820bcb3014820c2f9ed000b', NULL, '402881e5479d04cc01479d0675b90003', '402881e44648134a014648163a6d0001'),
('402889fb4820bcb3014820c2f9ed000c', NULL, '402881e547f88af30147f88dac140003', '402881e44648134a014648163a6d0001'),
('402889fb4820bcb3014820c2f9ed0010', NULL, '402889f64747048401474707902e0003', '402881e44648134a014648163a6d0001'),
('402889fb4820bcb3014820c2f9ed0011', NULL, '402881e9481f46a801481f51442a0004', '402881e44648134a014648163a6d0001'),
('402889fb4820bcb3014820c2f9ee0015', NULL, '402881e547f88af30147f88c187b0001', '402881e44648134a014648163a6d0001'),
('402889fb4820bcb3014820c2f9ee0016', NULL, '402881e9481f46a801481f506a3c0002', '402881e44648134a014648163a6d0001'),
('402889fb4820bcb3014820c2f9ee0017', NULL, '402880e64763f59c014763f70c370001', '402881e44648134a014648163a6d0001'),
('402889fb4820bcb3014820c2f9ee0018', NULL, '402881e547fe87990147fe8c15390004', '402881e44648134a014648163a6d0001'),
('402889fb4820bcb3014820c2f9ee001a', NULL, '402881e5479d04cc01479d0635030001', '402881e44648134a014648163a6d0001'),
('402889fb4820bcb3014820c2f9ee001b', NULL, '402889f64747048401474706d2a50001', '402881e44648134a014648163a6d0001'),
('402889fb4820bcb3014820c2f9f8001c', NULL, '402881e547f8b88d0147f8ba73c50005', '402881e44648134a014648163a6d0001'),
('402889ff4728a293014728b3fab70021', NULL, '4028d881436d514601436d52151f0020', '4028d881436d514601436d52159c0041'),
('4028d881436d514601436d521699006f', NULL, '4028d881436d514601436d52150a0019', '4028d881436d514601436d52159c0041'),
('4028d881436d514601436d52169e0070', NULL, '4028d881436d514601436d52150a0019', '4028d881436d514601436d5215a00042'),
('4028d881436d514601436d5216bb0077', NULL, '4028d881436d514601436d521513001d', '4028d881436d514601436d52159c0041'),
('4028d881436d514601436d5216bf0078', NULL, '4028d881436d514601436d521513001d', '4028d881436d514601436d5215a00042'),
('4028d881436d514601436d5216c30079', NULL, '4028d881436d514601436d521516001e', '4028d881436d514601436d52159c0041'),
('4028d881436d514601436d5216c7007a', NULL, '4028d881436d514601436d521516001e', '4028d881436d514601436d5215a00042'),
('4028d881436d514601436d5216ca007b', NULL, '4028d881436d514601436d52151a001f', '4028d881436d514601436d52159c0041'),
('4028d881436d514601436d5216cc007c', NULL, '4028d881436d514601436d52151a001f', '4028d881436d514601436d5215a00042'),
('4028d881436d514601436d5216d4007e', NULL, '4028d881436d514601436d52151f0020', '4028d881436d514601436d5215a00042'),
('4028d881436d514601436d5216d7007f', NULL, '4028d881436d514601436d5215220021', '4028d881436d514601436d52159c0041'),
('4028d881436d514601436d5216dc0080', NULL, '4028d881436d514601436d5215220021', '4028d881436d514601436d5215a00042'),
('4028d881436d514601436d5216eb0084', NULL, '4028d881436d514601436d5215260023', '4028d881436d514601436d5215a00042'),
('4028d881436d514601436d5216f10086', NULL, '4028d881436d514601436d5215290024', '4028d881436d514601436d5215a00042'),
('4028d881474489d7014744985904000f', NULL, '402881e54705f629014705f7d5d40001', '402881e44648134a014648163a6d0001'),
('4028d881474489d70147449859040012', NULL, '297e7eb6469a4a8901469a54eff60006', '402881e44648134a014648163a6d0001'),
('4028d881474489d70147449859040014', NULL, '402881e545f5dd1a0145f5f32cf00005', '402881e44648134a014648163a6d0001'),
('4028d881474489d70147449859040015', NULL, '402881e545f5f4780145f61198810004', '402881e44648134a014648163a6d0001'),
('4028d881474489d70147449859040017', NULL, '402881e44695183a0146951ed79e0008', '402881e44648134a014648163a6d0001'),
('4028d881474489d70147449859040019', NULL, '402881e946f7bcb20146f7c8bfc60003', '402881e44648134a014648163a6d0001'),
('4028d881474489d7014744985904001a', NULL, '402881e946f7bcb20146f7c763470001', '402881e44648134a014648163a6d0001'),
('4028d881474489d7014744985904001d', NULL, '402881e545f5dd1a0145f5de9bb60001', '402881e44648134a014648163a6d0001'),
('4028d881474489d7014744985904001e', NULL, '402881e94701df96014701e5fe2e0001', '402881e44648134a014648163a6d0001'),
('4028d881474489d7014744985904001f', NULL, '402881e44695183a0146951af2b70004', '402881e44648134a014648163a6d0001'),
('4028d881474489d70147449859140021', NULL, '402881e44695183a0146951b66050006', '402881e44648134a014648163a6d0001'),
('4028d881474489d70147449859140022', NULL, '402881e5470bc37201470bd136b20001', '402881e44648134a014648163a6d0001'),
('f7a8a3a9487816f801487818f2a0000b', NULL, '40288088486e8df201486e942f740002', 'f7a8a3a9487816f801487818df950009'),
('f7a8a3a9487816f801487818f2b0000c', NULL, '40288088486e8df201486e95ce330006', 'f7a8a3a9487816f801487818df950009'),
('f7a8a3a9487816f801487818f2b0000d', NULL, '40288088486e8df201486e94f0d00004', 'f7a8a3a9487816f801487818df950009'),
('f7a8a3a9487816f801487819d9950012', NULL, '402881e647f8d19c0147f8d522ec0001', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9a50014', NULL, '2c9716d547c2f4290147c36c654e0001', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9a50015', NULL, '402881e5479d04cc01479d0675b90003', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9a50016', NULL, '402881e547f88af30147f88dac140003', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9a50017', NULL, '402881e847d4dc160147d4de5f870001', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9a50018', NULL, '402881e44807fe29014808037c1c0006', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9a50019', NULL, '402881e9481f46a801481f51442a0004', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9a5001b', NULL, '402881e946f7bcb20146f7c763470001', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9a5001c', NULL, '4028d881436d514601436d52c2fb0181', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9a5001d', NULL, '402881e9481f46a801481f506a3c0002', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9a5001e', NULL, '402881e44695183a0146951b66050006', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9a50020', NULL, '402881e547fe87990147fe8c15390004', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9a50021', NULL, '402881e54705f629014705f7d5d40001', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9a50022', NULL, '402881e446677b700146677d7b600001', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9a50023', NULL, '402881e5479d04cc01479d0635030001', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9a50024', NULL, '402889f64747048401474706d2a50001', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9a50025', NULL, '402881e647b5bae60147b5bd8b320001', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9a50026', NULL, '402881e545f5f4780145f61198810004', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9d30027', NULL, '402881e547f8b88d0147f8ba73c50005', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9d30028', NULL, '4028d881436d514601436d5449330189', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9d30029', NULL, '402881e44695183a0146951ed79e0008', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9d3002a', NULL, '4028d881436d514601436d5485af018b', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9d3002b', NULL, '402881e946f7bcb20146f7c8bfc60003', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9d3002c', NULL, '402881e545f5dd1a0145f5de9bb60001', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9d3002d', NULL, '402881e94701df96014701e5fe2e0001', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9d3002e', NULL, '402881e9481f46a801481f52afb70006', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9d30030', NULL, '402889f64747048401474707902e0003', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9d30031', NULL, '4028d881436d514601436d5618400191', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9d30032', NULL, '402881e54808141b0148082494eb001a', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9d30033', NULL, '402881e545f5dd1a0145f5f32cf00005', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9d30035', NULL, '402881e8460d7e5301460d81c7a60001', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9d30036', NULL, '402881e447ab60250147ab7211830001', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9d30037', NULL, '402881e547f88af30147f88c187b0001', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9d30038', NULL, '4028d881436d514601436d5af95501b1', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9d30039', NULL, '402880e64763f59c014763f70c370001', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819d9d3003a', NULL, '402881e5470bc37201470bd136b20001', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819da02003b', NULL, '4028d881436d514601436d5884be019d', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819da02003c', NULL, '4028d881436d514601436d59d6d901a7', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819da02003d', NULL, '402880e6478c6d8201478c71c5460001', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819da02003e', NULL, '297e7eb6469a4a8901469a54eff60006', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819da02003f', NULL, '402881e448313d1a0148314004310001', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819da020041', NULL, '402881e447a678500147a679e8c30001', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f801487819da020042', NULL, '402881e44695183a0146951af2b70004', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f8014878381bad0086', NULL, 'f7a8a3a9487816f801487836b363007d', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f8014878381bad0087', NULL, 'f7a8a3a9487816f80148783723340081', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f8014878381bad0088', NULL, 'f7a8a3a9487816f801487836e83e007f', '4028d881436d514601436d52159c0041'),
('f7a8a3a9487816f8014878381bad0089', NULL, 'f7a8a3a9487816f8014878375c830083', '4028d881436d514601436d52159c0041');

-- --------------------------------------------------------

--
-- 表的结构 `t_s_role_user`
--

CREATE TABLE IF NOT EXISTS `t_s_role_user` (
  `ID` varchar(32) NOT NULL,
  `roleid` varchar(32) DEFAULT NULL,
  `userid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_n2ucxeorvpjy7qhnmuem01kbx` (`roleid`),
  KEY `FK_d4qb5xld2pfb0bkjx9iwtolda` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_s_role_user`
--

INSERT INTO `t_s_role_user` (`ID`, `roleid`, `userid`) VALUES
('402880e447d2f1fb0147d2f582560003', '4028d881436d514601436d5215a00042', '402880e447d2f1fb0147d2f580d40002'),
('402880e447d7243d0147d72ea4420003', '4028d881436d514601436d5215a00042', '402880e447d7243d0147d72ea3eb0002'),
('402881e4461f9c6401461fa3956d0009', '4028d881436d514601436d52159c0041', '402881e4461f9c6401461fa2e6f50002'),
('402881e44648134a014648174ab3000d', '402881e44648134a014648163a6d0001', '402881e44648134a014648174a45000c'),
('4028bce447cf8bda0147cf90493f0007', '4028d881436d514601436d5215a00042', '4028bce447cf8bda0147cf9047090006'),
('4028d881436d514601436d52179f00bf', '4028d881436d514601436d52159c0041', '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5217a300c0', '4028d881436d514601436d52159c0041', '4028d881436d514601436d5215ac0043'),
('4028d881436d514601436d5217a700c1', '4028d881436d514601436d5215a00042', '4028d881436d514601436d5215b20044'),
('4028d881436d514601436d5217aa00c2', '4028d881436d514601436d52159c0041', '4028d881436d514601436d5215b80045'),
('4028d881436d514601436d5217ad00c3', '4028d881436d514601436d52159c0041', '4028d881436d514601436d5215bc0046'),
('f7a8a3a9487816f801487817c6a30002', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f801487817c4fd0001'),
('f7a8a3a9487816f8014878192393000e', 'f7a8a3a9487816f801487818df950009', 'f7a8a3a9487816f801487818b3070006'),
('f7a8a3a9487816f80148781e4d0c004c', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f80148781e4cfc004b'),
('f7a8a3a9487816f8014878200b950052', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f8014878200b850051'),
('f7a8a3a9487816f80148782154ce0058', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f80148782154be0057'),
('f7a8a3a9487816f801487822427a005e', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f801487822427a005d'),
('f7a8a3a9487816f801487829a8080077', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f801487829a7f80076'),
('f7a8a3a9487816f80148783b293b0090', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f80148783b292b008f'),
('f7a8a3a9487816f8014878449b7200a9', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f8014878449b6200a8'),
('f7a8a3a9487816f801487845f3ce00ae', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f801487845f3be00ad'),
('f7a8a3a9487816f801487848151800b5', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f801487848150800b4'),
('f7a8a3a9487816f801487848e4db00bb', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f801487848e4cb00ba'),
('f7a8a3a9487816f80148784ef42000c6', '402881e44648134a014648163a6d0001', 'f7a8a3a9487816f80148784ef41000c5'),
('f7a8a3a9487816f80148784fb75100d0', '402881e44648134a014648163a6d0001', 'f7a8a3a9487816f80148784fb74100cf'),
('f7a8a3a9487816f801487852a92900d8', '402881e44648134a014648163a6d0001', 'f7a8a3a9487816f801487852a91a00d7'),
('f7a8a3a9487816f801487854855b00de', '402881e44648134a014648163a6d0001', 'f7a8a3a9487816f801487854854c00dd'),
('f7a8a3a9487816f80148785e9c0f0108', '402881e44648134a014648163a6d0001', 'f7a8a3a9487816f80148785e9c0f0107'),
('f7a8a3a9487816f80148786f49b70140', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f80148786f49a7013f'),
('f7a8a3a9487816f80148787496380145', '402881e44648134a014648163a6d0001', 'f7a8a3a9487816f80148787496290144'),
('f7a8a3a9487816f80148788795420151', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f80148788795320150'),
('f7a8a3a9487816f80148788d22950164', '402881e44648134a014648163a6d0001', 'f7a8a3a9487816f80148788d22850163'),
('f7a8a3a9487816f801487898dc4b0173', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f801487898dc3b0172'),
('f7a8a3a9487816f80148789a88f10178', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f80148789a88e10177'),
('f7a8a3a9487816f8014878a64dc20186', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f8014878a64db30185'),
('f7a8a3a9487816f8014878bc225201a8', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f8014878bc224201a7');

-- --------------------------------------------------------

--
-- 表的结构 `t_s_student`
--

CREATE TABLE IF NOT EXISTS `t_s_student` (
  `ID` varchar(32) NOT NULL,
  `classname` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_s_student`
--

INSERT INTO `t_s_student` (`ID`, `classname`, `name`, `sex`) VALUES
('4028d881436d514601436d521ae80165', '1班', '张三', 'f'),
('4028d881436d514601436d521aea0166', '1班', '李四', 'f'),
('4028d881436d514601436d521aeb0167', '1班', '王五', 'm'),
('4028d881436d514601436d521aec0168', '1班', '赵六', 'f'),
('4028d881436d514601436d521aec0169', '2班', '张三', 'f'),
('4028d881436d514601436d521aee016a', '2班', '李四', 'f'),
('4028d881436d514601436d521af0016b', '2班', '王五', 'm'),
('4028d881436d514601436d521af1016c', '2班', '赵六', 'f'),
('4028d881436d514601436d521af3016d', '3班', '张三', 'f'),
('4028d881436d514601436d521af4016e', '3班', '李四', 'f'),
('4028d881436d514601436d521af7016f', '3班', '王五', 'm'),
('4028d881436d514601436d521afa0170', '3班', '李四', 'f'),
('4028d881436d514601436d521afe0171', '3班', '王五', 'm'),
('4028d881436d514601436d521aff0172', '3班', '赵六', 'f'),
('4028d881436d514601436d521b000173', '4班', '张三', 'f'),
('4028d881436d514601436d521b010174', '4班', '李四', 'f'),
('4028d881436d514601436d521b030175', '4班', '王五', 'm'),
('4028d881436d514601436d521b040176', '4班', '赵六', 'f'),
('4028d881436d514601436d521b040177', '5班', '张三', 'm'),
('4028d881436d514601436d521b050178', '5班', '李四', 'f'),
('4028d881436d514601436d521b060179', '5班', '王五', 'm'),
('4028d881436d514601436d521b07017a', '5班', '赵六', 'm'),
('4028d881436d514601436d521b08017b', '5班', '赵六', 'm'),
('4028d881436d514601436d521b09017c', '5班', '李四', 'f'),
('4028d881436d514601436d521b0a017d', '5班', '王五', 'm'),
('4028d881436d514601436d521b0b017e', '5班', '赵六', 'm'),
('4028d881436d514601436d521b0c017f', '5班', '赵六', 'm');

-- --------------------------------------------------------

--
-- 表的结构 `t_s_territory`
--

CREATE TABLE IF NOT EXISTS `t_s_territory` (
  `ID` varchar(32) NOT NULL,
  `territorycode` varchar(10) NOT NULL,
  `territorylevel` smallint(6) NOT NULL,
  `territoryname` varchar(50) NOT NULL,
  `territory_pinyin` varchar(40) DEFAULT NULL,
  `territorysort` varchar(3) NOT NULL,
  `x_wgs84` double NOT NULL,
  `y_wgs84` double NOT NULL,
  `territoryparentid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_s_territory`
--

INSERT INTO `t_s_territory` (`ID`, `territorycode`, `territorylevel`, `territoryname`, `territory_pinyin`, `territorysort`, `x_wgs84`, `y_wgs84`, `territoryparentid`) VALUES
('1', '100', 1, '全国', 'qg', '0', 106.258754, 38.471318, '0'),
('10', '00000016', 2, '河南省', 'HNS', '0', 113.687228, 34.76819, '1'),
('100', '371300', 3, '临沂市', 'LYS', '0', 118.356448, 35.104672, '18'),
('1000', '370903', 4, '岱岳区', 'DYQ', '0', 117.041582, 36.18799, '96'),
('1001', '370921', 4, '宁阳县', 'NYX', '0', 116.805797, 35.758787, '96'),
('1002', '370923', 4, '东平县', 'DPX', '0', 116.470304, 35.937102, '96'),
('1003', '370982', 4, '新泰市', 'XTS', '0', 117.767953, 35.909032, '96'),
('1004', '370983', 4, '肥城市', 'FCS', '0', 116.768358, 36.182571, '96'),
('1005', '371002', 4, '环翠区', 'HCQ', '0', 122.123444, 37.501991, '97'),
('1006', '371081', 4, '文登市', 'WDS', '0', 122.058128, 37.1939129, '97'),
('1007', '371082', 4, '荣成市', 'RCS', '0', 122.486676, 37.165249, '97'),
('1008', '371083', 4, '乳山市', 'RSS', '0', 121.539764, 36.919816, '97'),
('1009', '371102', 4, '东港区', 'DGQ', '0', 119.462228, 35.425475, '98'),
('101', '371400', 3, '德州市', 'DZS', '0', 116.357465, 37.434093, '18'),
('1010', '371103', 4, '岚山区', 'LSQ', '0', 119.318813, 35.121816, '98'),
('1011', '371121', 4, '五莲县', 'WLX', '0', 119.208744, 35.750095, '98'),
('1012', '371122', 4, '莒县', 'JX', '0', 118.837131, 35.579868, '98'),
('1013', '371202', 4, '莱城区', 'LCQ', '0', 117.659864, 36.203208, '99'),
('1014', '371203', 4, '钢城区', 'GCQ', '0', 117.811355, 36.058572, '99'),
('1015', '371302', 4, '兰山区', 'LSQ', '0', 118.347707, 35.051729, '100'),
('1016', '371311', 4, '罗庄区', 'LZQ', '0', 118.284786, 34.996741, '100'),
('1017', '371312', 4, '河东区', 'HDQ', '0', 118.402893, 35.089917, '100'),
('1018', '371321', 4, '沂南县', 'YNX', '0', 118.465213, 35.549976, '100'),
('1019', '371322', 4, '郯城县', 'TCX', '0', 118.367263, 34.613557, '100'),
('102', '371500', 3, '聊城市', 'LCS', '0', 115.985371, 36.4567039, '18'),
('1020', '371323', 4, '沂水县', 'YSX', '0', 118.627918, 35.79045, '100'),
('1021', '371324', 4, '苍山县', 'CSX', '0', 118.07065, 34.857149, '100'),
('1022', '371325', 4, '费县', 'FX', '0', 117.977868, 35.26634, '100'),
('1023', '371326', 4, '平邑县', 'PYX', '0', 117.640352, 35.5059429, '100'),
('1024', '371327', 4, '莒南县', 'JNX', '0', 118.835163, 35.174846, '100'),
('1025', '371328', 4, '蒙阴县', 'MYX', '0', 117.945085, 35.710032, '100'),
('1026', '371329', 4, '临沭县', 'LSX', '0', 118.650782, 34.919852, '100'),
('1027', '371402', 4, '德城区', 'DCQ', '0', 116.299434, 37.451272, '101'),
('1028', '371421', 4, '陵县', 'LX', '0', 116.576176, 37.33579, '101'),
('1029', '371422', 4, '宁津县', 'NJX', '0', 116.800324, 37.652329, '101'),
('103', '371600', 3, '滨州市', 'BZS', '0', 117.970703, 37.38199, '18'),
('1030', '371423', 4, '庆云县', 'QYX', '0', 117.385123, 37.77539, '101'),
('1031', '371424', 4, '临邑县', 'LYX', '0', 116.86665, 37.189864, '101'),
('1032', '371425', 4, '齐河县', 'QHX', '0', 116.758917, 36.795011, '101'),
('1033', '371426', 4, '平原县', 'PYX', '0', 116.434187, 37.165419, '101'),
('1034', '371427', 4, '夏津县', 'XJX', '0', 116.001726, 36.948371, '101'),
('1035', '371428', 4, '武城县', 'WCX', '0', 116.069302, 37.213311, '101'),
('1036', '371481', 4, '乐陵市', 'LLS', '0', 117.231935, 37.729907, '101'),
('1037', '371482', 4, '禹城市', 'YCS', '0', 116.638387, 36.934259, '101'),
('1038', '371502', 4, '东昌府区', 'DCFQ', '0', 115.988484, 36.434697, '102'),
('1039', '371521', 4, '阳谷县', 'YGX', '0', 115.79182, 36.114392, '102'),
('104', '371700', 3, '菏泽市', 'HZS', '0', 115.480656, 35.23375, '18'),
('1040', '371522', 4, '莘县', 'SX', '0', 115.671191, 36.233599, '102'),
('1041', '371523', 4, '茌平县', 'CPX', '0', 116.255282, 36.5807639, '102'),
('1042', '371524', 4, '东阿县', 'DAX', '0', 116.24758, 36.334917, '102'),
('1043', '371525', 4, '冠县', 'GX', '0', 115.44274, 36.484009, '102'),
('1044', '371526', 4, '高唐县', 'GTX', '0', 116.231478, 36.866062, '102'),
('1045', '371581', 4, '临清市', 'LQS', '0', 115.704881, 36.838277, '102'),
('1046', '371602', 4, '滨城区', 'BCQ', '0', 118.019146, 37.43206, '103'),
('1047', '371621', 4, '惠民县', 'HMX', '0', 117.510451, 37.489769, '103'),
('1048', '371622', 4, '阳信县', 'YXX', '0', 117.578262, 37.641106, '103'),
('1049', '371623', 4, '无棣县', 'WDX', '0', 117.625696, 37.770261, '103'),
('1050', '371624', 4, '沾化县', 'ZHX', '0', 118.132199, 37.698281, '103'),
('1051', '371625', 4, '博兴县', 'BXX', '0', 118.131815, 37.150226, '103'),
('1052', '371626', 4, '邹平县', 'ZPX', '0', 117.743109, 36.862989, '103'),
('1053', '371702', 4, '牡丹区', 'MDQ', '0', 115.417827, 35.252512, '104'),
('1054', '371721', 4, '曹县', 'CX', '0', 115.542328, 34.825508, '104'),
('1055', '371722', 4, '单县', 'DX', '0', 116.107428, 34.778808, '104'),
('1056', '371723', 4, '成武县', 'CWX', '0', 115.889765, 34.952459, '104'),
('1057', '371724', 4, '巨野县', 'JYX', '0', 116.094674, 35.396261, '104'),
('1058', '371725', 4, '郓城县', 'YCX', '0', 115.943613, 35.599758, '104'),
('1059', '371726', 4, '鄄城县', 'JCX', '0', 115.510193, 35.563408, '104'),
('1060', '371727', 4, '定陶县', 'DTX', '0', 115.573094, 35.071, '104'),
('1061', '371728', 4, '东明县', 'DMX', '0', 115.089905, 35.289368, '104'),
('11', '00000008', 2, '黑龙江省', 'HLJS', '0', 126.662507, 45.7421699, '1'),
('12', '20000000', 2, '上海市', 'SHS', '0', 121.473704, 31.230393, '1'),
('13', '00000010', 2, '江苏省', 'JSS', '0', 118.763232, 32.061707, '1'),
('14', '00000011', 2, '浙江省', 'ZJS', '0', 120.153676, 30.26586, '1'),
('15', '00000012', 2, '安徽省', 'AHS', '0', 117.284923, 31.861184, '1'),
('16', '00000013', 2, '福建省', 'FJS', '0', 119.296506, 26.099933, '1'),
('17', '00000014', 2, '江西省', 'JXS', '0', 115.909175, 28.674424, '1'),
('1739', '360102', 4, '东湖区', 'DHQ', '0', 115.89901, 28.6849159, '184'),
('1740', '360103', 4, '西湖区', 'XHQ', '0', 115.877287, 28.656887, '184'),
('1741', '360104', 4, '青云谱区', 'QYPQ', '0', 115.925749, 28.621169, '184'),
('1742', '360105', 4, '湾里区', 'WLQ', '0', 115.730994, 28.714869, '184'),
('1743', '360111', 4, '青山湖区', 'QSHQ', '0', 115.962144, 28.682985, '184'),
('1744', '360121', 4, '南昌县', 'NCX', '0', 115.944162, 28.545459, '184'),
('1745', '360122', 4, '新建县', 'XJX', '0', 115.815233, 28.692437, '184'),
('1746', '360123', 4, '安义县', 'AYX', '0', 115.549199, 28.844429, '184'),
('1747', '360124', 4, '进贤县', 'JXX', '0', 116.240924, 28.376918, '184'),
('1748', '360202', 4, '昌江区', 'CJQ', '0', 117.183688, 29.27342, '185'),
('1749', '360203', 4, '珠山区', 'ZSQ', '0', 117.202336, 29.301272, '185'),
('1750', '360222', 4, '浮梁县', 'FLX', '0', 117.215061, 29.351739, '185'),
('1751', '360281', 4, '乐平市', 'LPS', '0', 117.129169, 28.961902, '185'),
('1752', '360302', 4, '安源区', 'AYQ', '0', 113.87073, 27.615202, '186'),
('1753', '360313', 4, '湘东区', 'XDQ', '0', 113.733059, 27.640075, '186'),
('1754', '360321', 4, '莲花县', 'LHX', '0', 113.961465, 27.127669, '186'),
('1755', '360322', 4, '上栗县', 'SLX', '0', 113.795219, 27.880567, '186'),
('1756', '360323', 4, '芦溪县', 'LXX', '0', 114.029595, 27.631145, '186'),
('1757', '360402', 4, '庐山区', 'LSQ', '0', 115.989212, 29.671775, '187'),
('1758', '360403', 4, '浔阳区', 'XYQ', '0', 115.990399, 29.72746, '187'),
('1759', '360421', 4, '九江县', 'JJX', '0', 115.911314, 29.608456, '187'),
('1760', '360423', 4, '武宁县', 'WNX', '0', 115.100579, 29.256323, '187'),
('1761', '360424', 4, '修水县', 'XSX', '0', 114.547356, 29.025707, '187'),
('1762', '360425', 4, '永修县', 'YXX', '0', 115.809111, 29.021824, '187'),
('1763', '360426', 4, '德安县', 'DAX', '0', 115.756883, 29.314348, '187'),
('1764', '360427', 4, '星子县', 'XZX', '0', 116.044893, 29.448037, '187'),
('1765', '360428', 4, '都昌县', 'DCX', '0', 116.204099, 29.273194, '187'),
('1766', '360429', 4, '湖口县', 'HKX', '0', 116.220266, 29.73944, '187'),
('1767', '360430', 4, '彭泽县', 'PZX', '0', 116.549359, 29.896061, '187'),
('1768', '360481', 4, '瑞昌市', 'RCS', '0', 115.681504, 29.673795, '187'),
('1769', '360499', 4, '共青城', 'GQC', '0', 115.774, 29.2417, '187'),
('1770', '360502', 4, '渝水区', 'YSQ', '0', 114.944574, 27.80038, '188'),
('1771', '360521', 4, '分宜县', 'FYX', '0', 114.692039, 27.814628, '188'),
('1772', '360602', 4, '月湖区', 'YHQ', '0', 117.036676, 28.238797, '189'),
('1773', '360622', 4, '余江县', 'YJX', '0', 116.818871, 28.204174, '189'),
('1774', '360681', 4, '贵溪市', 'GXS', '0', 117.245497, 28.292519, '189'),
('1775', '360702', 4, '章贡区', 'ZGQ', '0', 114.941826, 25.862827, '190'),
('1776', '360721', 4, '赣县', 'GX', '0', 115.011561, 25.860691, '190'),
('1777', '360722', 4, '信丰县', 'XFX', '0', 114.922963, 25.386278, '190'),
('1778', '360723', 4, '大余县', 'DYX', '0', 114.362094, 25.401283, '190'),
('1779', '360724', 4, '上犹县', 'SYX', '0', 114.551371, 25.784978, '190'),
('1780', '360725', 4, '崇义县', 'CYX', '0', 114.308273, 25.681879, '190'),
('1781', '360726', 4, '安远县', 'AYX', '0', 115.393922, 25.136925, '190'),
('1782', '360727', 4, '龙南县', 'LNX', '0', 114.789811, 24.911107, '190'),
('1783', '360728', 4, '定南县', 'DNX', '0', 115.027845, 24.78441, '190'),
('1784', '360729', 4, '全南县', 'QNX', '0', 114.530125, 24.742401, '190'),
('1785', '360730', 4, '宁都县', 'NDX', '0', 116.009472, 26.470116, '190'),
('1786', '360731', 4, '于都县', 'YDX', '0', 115.41551, 25.952066, '190'),
('1787', '360732', 4, '兴国县', 'XGX', '0', 115.36319, 26.337937, '190'),
('1788', '360733', 4, '会昌县', 'HCX', '0', 115.786057, 25.600272, '190'),
('1789', '360734', 4, '寻乌县', 'YWX', '0', 115.646525, 24.963322, '190'),
('1790', '360735', 4, '石城县', 'SCX', '0', 116.354201, 26.32686, '190'),
('1791', '360781', 4, '瑞金市', 'RJS', '0', 116.02713, 25.885561, '190'),
('1792', '360782', 4, '南康市', 'NKS', '0', 114.765238, 25.661356, '190'),
('1793', '360802', 4, '吉州区', 'JZQ', '0', 114.994307, 27.129975, '191'),
('1794', '360803', 4, '青原区', 'QYQ', '0', 115.01424, 27.081719, '191'),
('1795', '360821', 4, '吉安县', 'JAX', '0', 114.907659, 27.040142, '191'),
('1796', '360822', 4, '吉水县', 'JSX', '0', 115.135507, 27.229632, '191'),
('1797', '360823', 4, '峡江县', 'XJX', '0', 115.316566, 27.582901, '191'),
('1798', '360824', 4, '新干县', 'XGX', '0', 115.393043, 27.740809, '191'),
('1799', '360825', 4, '永丰县', 'YFX', '0', 115.441477, 27.317869, '191'),
('18', '00000015', 2, '山东省', 'SDS', '0', 117.020411, 36.668627, '1'),
('1800', '360826', 4, '泰和县', 'THX', '0', 114.908861, 26.790231, '191'),
('1801', '360827', 4, '遂川县', 'SCX', '0', 114.52098, 26.311894, '191'),
('1802', '360828', 4, '万安县', 'WAX', '0', 114.786256, 26.458257, '191'),
('1803', '360829', 4, '安福县', 'AFX', '0', 114.619893, 27.392874, '191'),
('1804', '360830', 4, '永新县', 'YXX', '0', 114.242675, 26.945233, '191'),
('1805', '360881', 4, '井冈山市', 'JGSS', '0', 114.289182, 26.748186, '191'),
('1806', '360902', 4, '袁州区', 'YZQ', '0', 114.424657, 27.798846, '192'),
('1807', '360921', 4, '奉新县', 'FXX', '0', 115.384904, 28.700806, '192'),
('1808', '360922', 4, '万载县', 'WZX', '0', 114.447551, 28.10455, '192'),
('1809', '360923', 4, '上高县', 'SGX', '0', 114.924494, 28.232827, '192'),
('1810', '360924', 4, '宜丰县', 'YFX', '0', 114.803542, 28.393613, '192'),
('1811', '360925', 4, '靖安县', 'JAX', '0', 115.362629, 28.861475, '192'),
('1812', '360926', 4, '铜鼓县', 'TGX', '0', 114.37098, 28.520747, '192'),
('1813', '360981', 4, '丰城市', 'FCS', '0', 115.771195, 28.159325, '192'),
('1814', '360982', 4, '樟树市', 'ZSS', '0', 115.546063, 28.055796, '192'),
('1815', '360983', 4, '高安市', 'GAS', '0', 115.375618, 28.417261, '192'),
('1816', '361002', 4, '临川区', 'LCQ', '0', 116.31136, 27.934529, '193'),
('1817', '361021', 4, '南城县', 'NCX', '0', 116.644658, 27.552748, '193'),
('1818', '361022', 4, '黎川县', 'LCX', '0', 116.907508, 27.282382, '193'),
('1819', '361023', 4, '南丰县', 'NFX', '0', 116.525725, 27.218445, '193'),
('1820', '361024', 4, '崇仁县', 'CRX', '0', 116.061164, 27.764681, '193'),
('1821', '361025', 4, '乐安县', 'LAX', '0', 115.837895, 27.420441, '193'),
('1822', '361026', 4, '宜黄县', 'YHX', '0', 116.222128, 27.546146, '193'),
('1823', '361027', 4, '金溪县', 'JXX', '0', 116.775435, 27.908337, '193'),
('1824', '361028', 4, '资溪县', 'ZXX', '0', 117.060264, 27.706102, '193'),
('1825', '361029', 4, '东乡县', 'DXX', '0', 116.590465, 28.236118, '193'),
('1826', '361030', 4, '广昌县', 'GCX', '0', 116.325757, 26.837267, '193'),
('1827', '361102', 4, '信州区', 'XZQ', '0', 117.966823, 28.43121, '194'),
('1828', '361121', 4, '上饶县', 'SRX', '0', 117.90785, 28.448983, '194'),
('1829', '361122', 4, '广丰县', 'GFX', '0', 118.19124, 28.436286, '194'),
('1830', '361123', 4, '玉山县', 'YSX', '0', 118.245124, 28.682055, '194'),
('1831', '361124', 4, '铅山县', 'QSX', '0', 117.709451, 28.315217, '194'),
('1832', '361125', 4, '横峰县', 'HFX', '0', 117.596452, 28.407118, '194'),
('1833', '361126', 4, '弋阳县', 'YYX', '0', 117.449588, 28.378044, '194'),
('1834', '361127', 4, '余干县', 'YGX', '0', 116.695647, 28.702302, '194'),
('1835', '361128', 4, '鄱阳县', 'PYX', '0', 116.699746, 29.011699, '194'),
('1836', '361129', 4, '万年县', 'WNX', '0', 117.058445, 28.694582, '194'),
('1837', '361130', 4, '婺源县', 'WYX', '0', 117.861911, 29.2480249, '194'),
('1838', '361181', 4, '德兴市', 'DXS', '0', 117.578713, 28.946464, '194'),
('1839', '370102', 4, '历下区', 'LXQ', '0', 117.07653, 36.666344, '195'),
('184', '360100', 3, '南昌市', 'NCS', '0', 115.858089, 28.68316, '17'),
('1840', '370103', 4, '市中区', 'SZQ', '0', 116.997475, 36.6511749, '195'),
('1841', '370104', 4, '槐荫区', 'HYQ', '0', 116.90113, 36.651301, '195'),
('1842', '370105', 4, '天桥区', 'TQQ', '0', 116.987492, 36.678016, '195'),
('1843', '370112', 4, '历城区', 'LCQ', '0', 117.065222, 36.680171, '195'),
('185', '360200', 3, '景德镇市', 'JDZS', '0', 117.17842, 29.268836, '17'),
('186', '360300', 3, '萍乡市', 'PXS', '0', 113.854676, 27.622865, '17'),
('187', '360400', 3, '九江市', 'JJS', '0', 116.001951, 29.705103, '17'),
('188', '360500', 3, '新余市', 'XYS', '0', 114.91741, 27.817819, '17'),
('189', '360600', 3, '鹰潭市', 'YTS', '0', 117.069202, 28.260189, '17'),
('19', '00000017', 2, '湖北省', 'HBS', '0', 114.341921, 30.545861, '1'),
('190', '360700', 3, '赣州市', 'GZS', '0', 114.935025, 25.831925, '17'),
('191', '360800', 3, '吉安市', 'JAS', '0', 114.992912, 27.113039, '17'),
('192', '360900', 3, '宜春市', 'YCS', '0', 114.416778, 27.815619, '17'),
('193', '361000', 3, '抚州市', 'FZS', '0', 116.358176, 27.9492, '17'),
('194', '361100', 3, '上饶市', 'SRS', '0', 117.943433, 28.454863, '17'),
('195', '370100', 3, '济南市', 'JNS', '0', 116.994917, 36.665282, '18'),
('20', '00000018', 2, '湖南省', 'HNS', '0', 112.98381, 28.112444, '1'),
('21', '40000000', 2, '重庆市', 'ZQS', '0', 106.551557, 29.56301, '1'),
('22', '00000022', 2, '四川省', 'SCS', '0', 104.075931, 30.651652, '1'),
('23', '00000019', 2, '广东省', 'GDS', '0', 113.266531, 23.132191, '1'),
('24', '00000020', 2, '广西壮族自治区', 'GXZZZZQ', '0', 108.327546, 22.815478, '1'),
('25', '00000021', 2, '海南省', 'HNS', '0', 110.349229, 20.017378, '1'),
('26', '810000', 2, '香港特别行政区', 'XGTBXZQ', '0', 114.109497, 22.396428, '1'),
('27', '820000', 2, '澳门特别行政区', 'AMTBXZQ', '0', 113.543873, 22.198745, '1'),
('28', '00000023', 2, '贵州省', 'GZS', '0', 106.707116, 26.598026, '1'),
('29', '00000024', 2, '云南省', 'YNS', '0', 102.709812, 25.045359, '1'),
('3', '00000006', 2, '辽宁省', 'LNS', '0', 123.42944, 41.835441, '1'),
('30', '00000025', 2, '西藏自治区', 'XCZZQ', '0', 91.1170059, 29.647951, '1'),
('31', '00000026', 2, '陕西省', 'SXS', '0', 108.954239, 34.265472, '1'),
('32', '00000027', 2, '甘肃省', 'GSS', '0', 103.826308, 36.059421, '1'),
('33', '00000028', 2, '青海省', 'QHS', '0', 101.780199, 36.620901, '1'),
('34', '00000029', 2, '宁夏回族自治区', 'NXHZZZQ', '0', 106.258754, 38.471318, '1'),
('35', '00000030', 2, '新疆维吾尔自治区', 'XJWWEZZQ', '0', 87.6278119, 43.793028, '1'),
('4', '00000007', 2, '吉林省', 'JLS', '0', 125.326065, 43.896082, '1'),
('5', '10000000', 2, '北京市', 'BJS', '0', 116.407413, 39.904214, '1'),
('6', '30000000', 2, '天津市', 'TJS', '0', 117.200983, 39.084158, '1'),
('7', '00000003', 2, '河北省', 'HBS', '0', 114.468665, 38.037057, '1'),
('8', '00000004', 2, '山西省', 'SXS', '0', 112.562569, 37.873376, '1'),
('89', '370200', 3, '青岛市', 'QDS', '0', 120.382504, 36.06722, '18'),
('9', '00000005', 2, '内蒙古自治区', 'NMGZZQ', '0', 111.765618, 40.817498, '1'),
('90', '370300', 3, '淄博市', 'ZBS', '0', 118.055007, 36.813497, '18'),
('91', '370400', 3, '枣庄市', 'ZZS', '0', 117.323725, 34.810488, '18'),
('92', '370500', 3, '东营市', 'DYS', '0', 118.674767, 37.434751, '18'),
('926', '370113', 4, '长清区', 'CQQ', '0', 116.751959, 36.553691, '195'),
('927', '370124', 4, '平阴县', 'PYX', '0', 116.456187, 36.289265, '195'),
('928', '370125', 4, '济阳县', 'JYX', '0', 117.173529, 36.978547, '195'),
('929', '370126', 4, '商河县', 'SHX', '0', 117.157183, 37.309045, '195'),
('93', '370600', 3, '烟台市', 'YTS', '0', 121.447926, 37.463819, '18'),
('930', '370181', 4, '章丘市', 'ZQS', '0', 117.534326, 36.714015, '195'),
('931', '370202', 4, '市南区', 'SNQ', '0', 120.412392, 36.075651, '89'),
('932', '370203', 4, '市北区', 'SBQ', '0', 120.374801, 36.087661, '89'),
('933', '370205', 4, '四方区', 'SFQ', '0', 120.366454, 36.103993, '89'),
('934', '370211', 4, '黄岛区', 'HDQ', '0', 120.198054, 35.960935, '89'),
('935', '370212', 4, '崂山区', 'LSQ', '0', 120.468956, 36.107538, '89'),
('936', '370213', 4, '李沧区', 'LCQ', '0', 120.432864, 36.145476, '89'),
('937', '370214', 4, '城阳区', 'CYQ', '0', 120.396529, 36.307061, '89'),
('938', '370281', 4, '胶州市', 'JZS', '0', 120.033345, 36.264664, '89'),
('939', '370282', 4, '即墨市', 'JMS', '0', 120.447162, 36.389401, '89'),
('94', '370700', 3, '潍坊市', 'WFS', '0', 119.16193, 36.706691, '18'),
('940', '370283', 4, '平度市', 'PDS', '0', 119.960014, 36.7867, '89'),
('941', '370284', 4, '胶南市', 'JNS', '0', 120.04643, 35.8725, '89'),
('942', '370285', 4, '莱西市', 'LXS', '0', 120.51769, 36.889084, '89'),
('943', '370302', 4, '淄川区', 'ZCQ', '0', 117.966842, 36.643449, '90'),
('944', '370303', 4, '张店区', 'ZDQ', '0', 118.017656, 36.806773, '90'),
('945', '370304', 4, '博山区', 'BSQ', '0', 117.861698, 36.494752, '90'),
('946', '370305', 4, '临淄区', 'LZQ', '0', 118.308977, 36.827343, '90'),
('947', '370306', 4, '周村区', 'ZCQ', '0', 117.869877, 36.803109, '90'),
('948', '370321', 4, '桓台县', 'HTX', '0', 118.097955, 36.959623, '90'),
('949', '370322', 4, '高青县', 'GQX', '0', 117.826916, 37.171063, '90'),
('95', '370800', 3, '济宁市', 'JNS', '0', 116.587099, 35.414921, '18'),
('950', '370323', 4, '沂源县', 'YYX', '0', 118.170979, 36.184827, '90'),
('951', '370402', 4, '市中区', 'SZQ', '0', 117.556124, 34.864114, '91'),
('952', '370403', 4, '薛城区', 'YCQ', '0', 117.263157, 34.795206, '91'),
('953', '370404', 4, '峄城区', 'YCQ', '0', 117.590819, 34.772236, '91'),
('954', '370405', 4, '台儿庄区', 'TEZQ', '0', 117.733832, 34.562528, '91'),
('955', '370406', 4, '山亭区', 'STQ', '0', 117.461343, 35.099549, '91'),
('956', '370481', 4, '滕州市', 'TZS', '0', 117.164388, 35.084021, '91'),
('957', '370502', 4, '东营区', 'DYQ', '0', 118.582184, 37.448964, '92'),
('958', '370503', 4, '河口区', 'HKQ', '0', 118.525579, 37.886138, '92'),
('959', '370521', 4, '垦利县', 'KLX', '0', 118.547627, 37.58754, '92'),
('960', '370522', 4, '利津县', 'LJX', '0', 118.255273, 37.49026, '92'),
('961', '370523', 4, '广饶县', 'GRX', '0', 118.407045, 37.0537, '92'),
('962', '370602', 4, '芝罘区', 'ZFQ', '0', 121.400031, 37.540687, '93'),
('963', '370611', 4, '福山区', 'FSQ', '0', 121.267697, 37.498051, '93'),
('964', '370612', 4, '牟平区', 'MPQ', '0', 121.600512, 37.386901, '93'),
('965', '370613', 4, '莱山区', 'LSQ', '0', 121.445304, 37.511305, '93'),
('966', '370614', 4, '开发区', 'KFQ', '0', 121.251001, 37.554683, '93'),
('967', '370634', 4, '长岛县', 'CDX', '0', 120.736584, 37.921417, '93'),
('968', '370681', 4, '龙口市', 'LKS', '0', 120.477836, 37.646064, '93'),
('969', '370682', 4, '莱阳市', 'LYS', '0', 120.711607, 36.97891, '93'),
('970', '370683', 4, '莱州市', 'LZS', '0', 119.942327, 37.177017, '93'),
('971', '370684', 4, '蓬莱市', 'PLS', '0', 120.758848, 37.810661, '93'),
('972', '370685', 4, '招远市', 'ZYS', '0', 120.434072, 37.355469, '93'),
('973', '370686', 4, '栖霞市', 'QXS', '0', 120.849675, 37.335123, '93'),
('974', '370687', 4, '海阳市', 'HYS', '0', 121.158477, 36.776425, '93'),
('975', '370702', 4, '潍城区', 'WCQ', '0', 119.024836, 36.7281, '94'),
('976', '370703', 4, '寒亭区', 'HTQ', '0', 119.219734, 36.775491, '94'),
('977', '370704', 4, '坊子区', 'FZQ', '0', 119.166485, 36.654448, '94'),
('978', '370705', 4, '奎文区', 'KWQ', '0', 119.132486, 36.707676, '94'),
('979', '370724', 4, '临朐县', 'LQX', '0', 118.542982, 36.5125059, '94'),
('980', '370725', 4, '昌乐县', 'CLX', '0', 118.829914, 36.706945, '94'),
('981', '370781', 4, '青州市', 'QZS', '0', 118.479622, 36.684528, '94'),
('982', '370782', 4, '诸城市', 'ZCS', '0', 119.410103, 35.995654, '94'),
('983', '370783', 4, '寿光市', 'SGS', '0', 118.790652, 36.85548, '94'),
('984', '370784', 4, '安丘市', 'AQS', '0', 119.218978, 36.478494, '94'),
('985', '370785', 4, '高密市', 'GMS', '0', 119.755597, 36.3825949, '94'),
('986', '370786', 4, '昌邑市', 'CYS', '0', 119.398525, 36.85882, '94'),
('987', '370802', 4, '市中区', 'SZQ', '0', 116.596614, 35.40819, '95'),
('988', '370811', 4, '任城区', 'RCQ', '0', 116.628562, 35.433727, '95'),
('989', '370826', 4, '微山县', 'WSX', '0', 117.128946, 34.8071, '95'),
('990', '370827', 4, '鱼台县', 'YTX', '0', 116.650608, 35.012749, '95'),
('991', '370828', 4, '金乡县', 'JXX', '0', 116.311532, 35.06662, '95'),
('992', '370829', 4, '嘉祥县', 'JXX', '0', 116.342442, 35.407829, '95'),
('993', '370830', 4, '汶上县', 'WSX', '0', 116.489043, 35.732799, '95'),
('994', '370831', 4, '泗水县', 'SSX', '0', 117.251195, 35.664323, '95'),
('995', '370832', 4, '梁山县', 'LSX', '0', 116.096044, 35.802306, '95'),
('996', '370881', 4, '曲阜市', 'QFS', '0', 116.986532, 35.581137, '95'),
('997', '370882', 4, '兖州市', 'YZS', '0', 116.783834, 35.553144, '95'),
('998', '370883', 4, '邹城市', 'ZCS', '0', 117.003743, 35.405185, '95'),
('999', '370902', 4, '泰山区', 'TSQ', '0', 117.135354, 36.192084, '96');

-- --------------------------------------------------------

--
-- 表的结构 `t_s_timetask`
--

CREATE TABLE IF NOT EXISTS `t_s_timetask` (
  `ID` varchar(32) NOT NULL,
  `CREATE_BY` varchar(32) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(32) DEFAULT NULL,
  `CRON_EXPRESSION` varchar(100) NOT NULL,
  `IS_EFFECT` varchar(1) NOT NULL,
  `IS_START` varchar(1) NOT NULL,
  `TASK_DESCRIBE` varchar(50) NOT NULL,
  `TASK_ID` varchar(100) NOT NULL,
  `UPDATE_BY` varchar(32) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_NAME` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_s_timetask`
--

INSERT INTO `t_s_timetask` (`ID`, `CREATE_BY`, `CREATE_DATE`, `CREATE_NAME`, `CRON_EXPRESSION`, `IS_EFFECT`, `IS_START`, `TASK_DESCRIBE`, `TASK_ID`, `UPDATE_BY`, `UPDATE_DATE`, `UPDATE_NAME`) VALUES
('4028d881436d514601436d5219ab0159', NULL, NULL, NULL, '0 0/1 * * * ?', '0', '0', '测试Demo', 'taskDemoServiceTaskCronTrigger', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `t_s_type`
--

CREATE TABLE IF NOT EXISTS `t_s_type` (
  `ID` varchar(32) NOT NULL,
  `typecode` varchar(50) DEFAULT NULL,
  `typename` varchar(50) DEFAULT NULL,
  `typepid` varchar(32) DEFAULT NULL,
  `typegroupid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_nw2b22gy7plh7pqows186odmq` (`typepid`),
  KEY `FK_3q40mr4ebtd0cvx79matl39x1` (`typegroupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_s_type`
--

INSERT INTO `t_s_type` (`ID`, `typecode`, `typename`, `typepid`, `typegroupid`) VALUES
('40288088486e343b01486e42a8ff0012', '2', '结束', NULL, '40288088486e343b01486e422f550010'),
('40288088486e343b01486e42d3f80014', '1', '活动', NULL, '40288088486e343b01486e422f550010'),
('40288088486e970101486ebc563c001c', '0', '小于200', NULL, '40288088486e970101486eb9f5df0016'),
('40288088486e970101486ebc8315001e', '1', '大于200', NULL, '40288088486e970101486eb9f5df0016'),
('40288088486e970101486ebcd9050020', '0', '未兑奖', NULL, '40288088486e970101486eba4c9a0018'),
('40288088486e970101486ebd19d70022', '1', '已兑奖', NULL, '40288088486e970101486eba4c9a0018'),
('40288088486e970101486f1406250025', '1', '微博', NULL, '40288088486e970101486ebc03cc001a'),
('40288088486e970101486f1451620027', '2', '贴吧', NULL, '40288088486e970101486ebc03cc001a'),
('40288088486e970101486f1493400029', '3', 'QQ空间', NULL, '40288088486e970101486ebc03cc001a'),
('40288088486e970101486f14c121002b', '4', '微信', NULL, '40288088486e970101486ebc03cc001a'),
('402881e4480845f601480849ddf50003', '0', '未审核', NULL, '402881e4480845f6014808498b510001'),
('402881e4480845f60148084a0c0a0005', '1', '已审核', NULL, '402881e4480845f6014808498b510001'),
('402881e44870784a0148708a63d6000f', '1', '点击投票', NULL, '402881e44870784a01487088ebba000d'),
('402881e44870784a0148708f8ca20014', '2', '扫描投票', NULL, '402881e44870784a01487088ebba000d'),
('402881e44870784a014870bae5c40017', '3', '分享投票', NULL, '402881e44870784a01487088ebba000d'),
('402881e547f88af30147f8ab400a0020', '1', '临时二维码', NULL, '402881e547f88af30147f8aafc5b001e'),
('402881e547f88af30147f8ab7d380023', '2', '永久二维码', NULL, '402881e547f88af30147f8aafc5b001e'),
('402881e54808a0be014808accf80001a', '0', '未发布', NULL, '402881e54808a0be014808ac663c0018'),
('402881e54808a0be014808ace8da001c', '1', '已发布', NULL, '402881e54808a0be014808ac663c0018'),
('402881e54808a0be014808ad0bb4001e', '2', '已结束', NULL, '402881e54808a0be014808ac663c0018'),
('402881e9481f55b201481f5761ae0003', '1', '单选', NULL, '402881e9481f55b201481f5733010001'),
('402881e9481f55b201481f577ae50005', '2', '多选', NULL, '402881e9481f55b201481f5733010001'),
('402881e9481f55b201481f57ac850007', '3', '填空', NULL, '402881e9481f55b201481f5733010001'),
('402889f8476650de01476666acbf0005', '01', '多文章', NULL, '402889f8476650de01476665dfe70002'),
('402889f8476650de01476666d5c30007', '02', '单文章', NULL, '402889f8476650de01476665dfe70002'),
('402889ff4728f2370147290a0f82001d', '1', '服务号', NULL, '402889ff4728f2370147290995f80018'),
('402889ff4728f2370147290a2d63001f', '2', '订阅号', NULL, '402889ff4728f2370147290995f80018'),
('4028d881436d514601436d5216130051', '2', '菜单图标', NULL, '4028d881436d514601436d5215c30047'),
('4028d881436d514601436d5216160052', '1', '系统图标', NULL, '4028d881436d514601436d5215c30047'),
('4028d881436d514601436d5216190053', 'files', '附件', NULL, '4028d881436d514601436d5215e4004f'),
('4028d881436d514601436d52161c0054', '1', '优质订单', NULL, '4028d881436d514601436d5215c90048'),
('4028d881436d514601436d52161f0055', '2', '普通订单', NULL, '4028d881436d514601436d5215c90048'),
('4028d881436d514601436d5216220056', '1', '签约客户', NULL, '4028d881436d514601436d5215cc0049'),
('4028d881436d514601436d5216250057', '2', '普通客户', NULL, '4028d881436d514601436d5215cc0049'),
('4028d881436d514601436d5216290058', '1', '特殊服务', NULL, '4028d881436d514601436d5215cf004a'),
('4028d881436d514601436d52162e0059', '2', '普通服务', NULL, '4028d881436d514601436d5215cf004a'),
('4028d881436d514601436d521633005a', 'single', '单条件查询', NULL, '4028d881436d514601436d5215d4004b'),
('4028d881436d514601436d521638005b', 'group', '范围查询', NULL, '4028d881436d514601436d5215d4004b'),
('4028d881436d514601436d52163d005c', 'Y', '是', NULL, '4028d881436d514601436d5215d7004c'),
('4028d881436d514601436d521640005d', 'N', '否', NULL, '4028d881436d514601436d5215d7004c'),
('4028d881436d514601436d521643005e', 'Integer', 'Integer', NULL, '4028d881436d514601436d5215db004d'),
('4028d881436d514601436d521646005f', 'Date', 'Date', NULL, '4028d881436d514601436d5215db004d'),
('4028d881436d514601436d52164b0060', 'String', 'String', NULL, '4028d881436d514601436d5215db004d'),
('4028d881436d514601436d52164f0061', 'Long', 'Long', NULL, '4028d881436d514601436d5215db004d'),
('4028d881436d514601436d5216530062', 'act', '工作流引擎表', NULL, '4028d881436d514601436d5215df004e'),
('4028d881436d514601436d5216570063', 't_s', '系统基础表', NULL, '4028d881436d514601436d5215df004e'),
('4028d881436d514601436d52165c0064', 't_b', '业务表', NULL, '4028d881436d514601436d5215df004e'),
('4028d881436d514601436d5216600065', 't_p', '自定义引擎表', NULL, '4028d881436d514601436d5215df004e'),
('4028d881436d514601436d5216640066', 'news', '新闻', NULL, '4028d881436d514601436d5215e4004f'),
('4028d881436d514601436d5216670067', '0', '男性', NULL, '4028d881436d514601436d5215e90050'),
('4028d881436d514601436d52166a0068', '1', '女性', NULL, '4028d881436d514601436d5215e90050');

-- --------------------------------------------------------

--
-- 表的结构 `t_s_typegroup`
--

CREATE TABLE IF NOT EXISTS `t_s_typegroup` (
  `ID` varchar(32) NOT NULL,
  `typegroupcode` varchar(50) DEFAULT NULL,
  `typegroupname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_s_typegroup`
--

INSERT INTO `t_s_typegroup` (`ID`, `typegroupcode`, `typegroupname`) VALUES
('40288088486e343b01486e422f550010', 'hdType', '活动类型'),
('40288088486e970101486eb9f5df0016', 'jp_level', '奖品级别'),
('40288088486e970101486eba4c9a0018', 'jp_flag', '兑奖状态'),
('40288088486e970101486ebc03cc001a', 'pf_code', '社区平台类型'),
('402881e4480845f6014808498b510001', 'bbs_status', '社区帖子状态'),
('402881e44870784a01487088ebba000d', 'votepktype', '投票PK活动投票类型'),
('402881e547f88af30147f8aafc5b001e', 'qrcodetype', '微信二维码类型'),
('402881e54808a0be014808ac663c0018', 'votestat', '微投票状态'),
('402881e9481f55b201481f5733010001', 'surveytype', '题目类型'),
('402889f8476650de01476665dfe70002', 'cms_menu', 'CMS菜单类型'),
('402889ff4728f2370147290995f80018', 'weixintype', '微信公众账号类型'),
('4028d881436d514601436d5215c30047', 'icontype', '图标类型'),
('4028d881436d514601436d5215c90048', 'order', '订单类型'),
('4028d881436d514601436d5215cc0049', 'custom', '客户类型'),
('4028d881436d514601436d5215cf004a', 'service', '服务项目类型'),
('4028d881436d514601436d5215d4004b', 'searchmode', '查询模式'),
('4028d881436d514601436d5215d7004c', 'yesorno', '逻辑条件'),
('4028d881436d514601436d5215db004d', 'fieldtype', '字段类型'),
('4028d881436d514601436d5215df004e', 'database', '数据表'),
('4028d881436d514601436d5215e4004f', 'fieltype', '文档分类'),
('4028d881436d514601436d5215e90050', 'sex', '性别类');

-- --------------------------------------------------------

--
-- 表的结构 `t_s_user`
--

CREATE TABLE IF NOT EXISTS `t_s_user` (
  `email` varchar(50) DEFAULT NULL,
  `mobilePhone` varchar(30) DEFAULT NULL,
  `officePhone` varchar(20) DEFAULT NULL,
  `signatureFile` varchar(100) DEFAULT NULL,
  `id` varchar(32) NOT NULL,
  `openid` varchar(200) DEFAULT NULL,
  `type` varchar(2) DEFAULT '1',
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_2cuji5h6yorrxgsr8ojndlmal` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_s_user`
--

INSERT INTO `t_s_user` (`email`, `mobilePhone`, `officePhone`, `signatureFile`, `id`, `openid`, `type`, `createtime`) VALUES
(NULL, '13427652729', NULL, NULL, '402880e447d2f1fb0147d2f580d40002', NULL, '1', NULL),
(NULL, '13426323292', NULL, NULL, '402880e447d7243d0147d72ea3eb0002', NULL, '1', NULL),
('', '', '', NULL, '402881e4461f9c6401461fa2e6f50002', '', NULL, NULL),
('', '', '', NULL, '402881e44648134a014648174a45000c', '', NULL, NULL),
(NULL, '111', NULL, NULL, '4028bce447cf8bda0147cf9047090006', NULL, '1', NULL),
(NULL, NULL, NULL, 'images/renfang/qm/licf.gif', '4028d881436d514601436d5215ac0043', '', NULL, NULL),
('zhangdaiscott@163.com', '13426432910', '7496661', NULL, '4028d881436d514601436d5215b20044', '', NULL, NULL),
(NULL, NULL, NULL, NULL, '4028d881436d514601436d5215b80045', '', NULL, NULL),
(NULL, NULL, NULL, NULL, '4028d881436d514601436d5215bc0046', '', NULL, NULL),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f801487817c4fd0001', 'null', '1', NULL),
('', '', '', NULL, 'f7a8a3a9487816f801487818b3070006', NULL, '2', '2014-09-15 14:55:57'),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f80148781e4cfc004b', 'oGCDRjv54RH4ojhWyadb8o8rx2lc', '1', NULL),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f8014878200b850051', 'oGCDRjtKImpgFNv0SqbxvQScwtE0', '1', NULL),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f80148782154be0057', 'oGCDRjiIBtNQApPs1GY9kF3xIpgs', '1', NULL),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f801487822427a005d', 'oGCDRjmj5t_pci-7UV-Ey3SCAubI', '1', NULL),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f801487829a7f80076', 'oGCDRjqZWwngJWx6YMYi15qknpM4', '1', NULL),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f80148783b292b008f', 'oGCDRjqdNbWQsEoB3APp_-QMrYaA', '1', NULL),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f8014878449b6200a8', 'oGCDRjvr9L1NoqxbyXLReCVYVyV0', '1', NULL),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f801487845f3be00ad', 'oGCDRjnJG97To7evvXJKMH8x4U9k', '1', NULL),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f801487848150800b4', 'oGCDRjtmh8JInl-3qaWXOr_qJYdA', '1', NULL),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f801487848e4cb00ba', '1234', '1', NULL),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f80148784ef41000c5', NULL, '2', '2014-09-15 15:55:13'),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f80148784fb74100cf', NULL, '2', '2014-09-15 15:56:03'),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f801487852a91a00d7', NULL, '2', '2014-09-15 15:59:16'),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f801487854854c00dd', NULL, '2', '2014-09-15 16:01:18'),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f80148785e9c0f0107', NULL, '2', '2014-09-15 16:12:19'),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f80148786f49a7013f', 'oGCDRjrgOW4Lf0aJapxmXkLDzsXE', '1', NULL),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f80148787496290144', NULL, '2', '2014-09-15 16:36:19'),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f80148788795320150', 'oGCDRjuLfYaYMGTpJJIUlOAw3ZzY', '1', NULL),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f80148788d22850163', NULL, '2', '2014-09-15 17:03:08'),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f801487898dc3b0172', 'oGCDRjpq_W9fxmXB3DZh2vbhVhu0', '1', NULL),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f80148789a88e10177', 'oGCDRjnY5zDii_i9QheSGTIeli8Q', '1', NULL),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f8014878a64db30185', 'oGCDRjih26CSDi9Lx9aRAK6bHg0A', '1', NULL),
(NULL, NULL, NULL, NULL, 'f7a8a3a9487816f8014878bc224201a7', 'oGCDRjp5o1gME6Sx6cZ7-zSBgbPI', '1', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `t_s_version`
--

CREATE TABLE IF NOT EXISTS `t_s_version` (
  `ID` varchar(32) NOT NULL,
  `loginpage` varchar(100) DEFAULT NULL,
  `versioncode` varchar(50) DEFAULT NULL,
  `versionname` varchar(30) DEFAULT NULL,
  `versionnum` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `weixin_accesstoken`
--

CREATE TABLE IF NOT EXISTS `weixin_accesstoken` (
  `ID` varchar(32) NOT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `expires_ib` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `weixin_account`
--

CREATE TABLE IF NOT EXISTS `weixin_account` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `accountname` varchar(200) DEFAULT NULL COMMENT '公众帐号名称',
  `accounttoken` varchar(200) DEFAULT NULL COMMENT '公众帐号TOKEN',
  `accountnumber` varchar(200) DEFAULT NULL COMMENT '公众微信号',
  `accounttype` varchar(50) DEFAULT NULL COMMENT '公众号类型',
  `accountemail` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `accountdesc` varchar(500) DEFAULT NULL COMMENT '公众帐号描述',
  `accountaccesstoken` varchar(1000) DEFAULT NULL COMMENT 'ACCESS_TOKEN',
  `accountappid` varchar(200) DEFAULT NULL COMMENT '公众帐号APPID',
  `accountappsecret` varchar(500) DEFAULT NULL COMMENT '公众帐号APPSECRET',
  `ADDTOEKNTIME` datetime DEFAULT NULL,
  `USERNAME` varchar(50) DEFAULT NULL,
  `WEIXIN_ACCOUNTID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_account`
--

INSERT INTO `weixin_account` (`id`, `accountname`, `accounttoken`, `accountnumber`, `accounttype`, `accountemail`, `accountdesc`, `accountaccesstoken`, `accountappid`, `accountappsecret`, `ADDTOEKNTIME`, `USERNAME`, `WEIXIN_ACCOUNTID`) VALUES
('402881e8461795c201461795c2e90000', '成都永辉科技有限公司', 'dxhnihao', 'gh_b2a51a1013e8', '1', '652356756@@qq.com', '无', 'spHR2UzRfU2npsCE-VbLgs4m7Ech1bMr8-HE53fbxJZGmToYfJasnM4KQD0KRszS32mGlLdKBUQ5gPR-Abq1yh1QQxH3iRHVuV4QXmqopiA', 'wx60948a85e051f738', 'e23379551673977d2fb4419d86466577', '2015-05-29 17:10:43', 'admin', 'gh_b2a51a1013e8');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_around`
--

CREATE TABLE IF NOT EXISTS `weixin_around` (
  `id` varchar(40) NOT NULL COMMENT '主键Id',
  `keyword` varchar(100) DEFAULT NULL COMMENT '关键字',
  `area` varchar(200) DEFAULT NULL COMMENT '城市名称',
  `radius` varchar(100) DEFAULT NULL COMMENT '搜索半径',
  `addtime` datetime DEFAULT NULL COMMENT '时间',
  `accountid` varchar(40) DEFAULT NULL,
  `iswork` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `weixin_article`
--

CREATE TABLE IF NOT EXISTS `weixin_article` (
  `ID` varchar(36) NOT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `WX_AUTHOR` varchar(255) DEFAULT NULL,
  `WX_CONTENT` varchar(255) DEFAULT NULL,
  `WX_ORIGIN_URL` varchar(255) DEFAULT NULL,
  `WX_PIC_URL` varchar(255) DEFAULT NULL,
  `WX_SUMMARY` varchar(255) DEFAULT NULL,
  `WX_TITLE` varchar(255) DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `weixin_autoresponse`
--

CREATE TABLE IF NOT EXISTS `weixin_autoresponse` (
  `ID` varchar(32) NOT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `msgtype` varchar(255) DEFAULT NULL,
  `rescontent` varchar(255) DEFAULT NULL,
  `templatename` varchar(255) DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_autoresponse`
--

INSERT INTO `weixin_autoresponse` (`ID`, `addtime`, `keyword`, `msgtype`, `rescontent`, `templatename`, `accountid`) VALUES
('402889ff4728a293014728b0c7da001b', '2014-07-12 11:49:39', '01', 'text', 'f7a8a3a946e55a940146e5a3e498004d', '微译使用指南', 'gh_73c84c67337c'),
('f7a8a3a946e249c20146e26a10ca0019', '2014-06-28 20:19:00', '?', 'text', 'f7a8a3a946e249c20146e25c4dc7000c', '欢迎关注语', 'gh_73c84c67337c'),
('f7a8a3a946e55a940146e5a47b890050', '2014-06-29 11:21:40', '02', 'text', 'f7a8a3a946e55a940146e5a429cf004e', '天气使用指南', 'gh_73c84c67337c'),
('f7a8a3a946e55a940146e5a632220054', '2014-06-29 11:23:32', '03', 'text', 'f7a8a3a946e55a940146e5a53e6b0051', '大转盘指南', 'gh_73c84c67337c'),
('f7a8a3a946e55a940146e5a656150055', '2014-06-29 11:23:41', '04', 'text', 'f7a8a3a946e55a940146e5a584da0052', '刮刮乐指南', 'gh_73c84c67337c');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_award`
--

CREATE TABLE IF NOT EXISTS `weixin_award` (
  `id` varchar(36) NOT NULL DEFAULT '',
  `name` varchar(200) DEFAULT NULL,
  `accountid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_award`
--

INSERT INTO `weixin_award` (`id`, `name`, `accountid`) VALUES
('2c9716d548584958014858539292000a', '自行车', NULL),
('2c9716d54858495801485853c3bd000c', '电视机', NULL),
('2c9716d54858495801485853d996000e', '电冰箱', NULL),
('2c9716d54858495801485853ffff0010', '宝马轿车', NULL),
('2c9716d5485849580148585414670012', '洗衣粉', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `weixin_awards_award`
--

CREATE TABLE IF NOT EXISTS `weixin_awards_award` (
  `id` varchar(36) NOT NULL DEFAULT '',
  `award_id` varchar(36) DEFAULT NULL,
  `huodong_id` varchar(36) DEFAULT NULL,
  `accountid` varchar(36) DEFAULT NULL,
  `awards_level_id` varchar(36) DEFAULT NULL,
  `huoDongAwardEntity_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_rp4b6isg6nyrdy9scdw41lggp` (`award_id`),
  KEY `FK_t56wndtomibhs8fieiimgq8v6` (`awards_level_id`),
  KEY `FK_abwq6mo6cvp27syb618w3jupf` (`huodong_id`),
  KEY `FK_kgvd4dso2dfe53fgtxaj1t6jc` (`huoDongAwardEntity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_awards_award`
--

INSERT INTO `weixin_awards_award` (`id`, `award_id`, `huodong_id`, `accountid`, `awards_level_id`, `huoDongAwardEntity_id`) VALUES
('40288183490a24bb01490a48cd09000b', '2c9716d548584958014858539292000a', '40288183490a24bb01490a449e8d0006', '402881e8461795c201461795c2e90000', 'f1ad11f1486fe3b401486fed950d000b', '40288183490a24bb01490a48ccf9000a'),
('40288183490a24bb01490a48cd22000d', '2c9716d5485849580148585414670012', '40288183490a24bb01490a449e8d0006', '402881e8461795c201461795c2e90000', 'f1ad11f1486fe3b401486fedcaa8000d', '40288183490a24bb01490a48cd19000c'),
('40288183490a24bb01490a4faf1e0011', '2c9716d548584958014858539292000a', '40288183490a24bb01490a4faefe000f', '402881e8461795c201461795c2e90000', 'f1ad11f1486fe3b401486fed950d000b', '40288183490a24bb01490a4faf0e0010'),
('40288183490a24bb01490a4faf3d0013', '2c9716d54858495801485853c3bd000c', '40288183490a24bb01490a4faefe000f', '402881e8461795c201461795c2e90000', 'f1ad11f1486fe3b401486fede05d000f', '40288183490a24bb01490a4faf2f0012'),
('40288183490a24bb01490a4faf540015', '2c9716d5485849580148585414670012', '40288183490a24bb01490a4faefe000f', '402881e8461795c201461795c2e90000', 'f1ad11f1486fe3b401486fee1a330013', '40288183490a24bb01490a4faf490014');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_awards_level`
--

CREATE TABLE IF NOT EXISTS `weixin_awards_level` (
  `id` varchar(36) NOT NULL DEFAULT '',
  `awards_name` varchar(200) DEFAULT NULL,
  `accountid` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_awards_level`
--

INSERT INTO `weixin_awards_level` (`id`, `awards_name`, `accountid`) VALUES
('f1ad11f1486fe3b401486fed950d000b', '一等奖', '402881e8461795c201461795c2e90000'),
('f1ad11f1486fe3b401486fedcaa8000d', '二等奖', '402881e8461795c201461795c2e90000'),
('f1ad11f1486fe3b401486fede05d000f', '鼓励奖', '402881e8461795c201461795c2e90000'),
('f1ad11f1486fe3b401486fedf35a0011', '安慰奖', '402881e8461795c201461795c2e90000'),
('f1ad11f1486fe3b401486fee1a330013', '三等奖', '402881e8461795c201461795c2e90000'),
('f1ad11f1486fe3b401486fee3b0f0015', '超级大奖', '402881e8461795c201461795c2e90000');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_bbs`
--

CREATE TABLE IF NOT EXISTS `weixin_bbs` (
  `ID` varchar(96) NOT NULL DEFAULT '',
  `ACCESS_AUTH` varchar(96) DEFAULT NULL,
  `ACCOUNTID` varchar(96) DEFAULT NULL,
  `COMMENT_CHECK` varchar(96) DEFAULT NULL,
  `CREATE_BY` varchar(96) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `NAME` varchar(300) DEFAULT NULL,
  `NICK_NAME` varchar(300) DEFAULT NULL,
  `POST_CHECK` varchar(96) DEFAULT NULL,
  `UPDATE_BY` varchar(96) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `TEMPLATE_STYLE` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_bbs`
--

INSERT INTO `weixin_bbs` (`ID`, `ACCESS_AUTH`, `ACCOUNTID`, `COMMENT_CHECK`, `CREATE_BY`, `CREATE_DATE`, `NAME`, `NICK_NAME`, `POST_CHECK`, `UPDATE_BY`, `UPDATE_DATE`, `TEMPLATE_STYLE`) VALUES
('402881ea4cad964a014cada416370001', NULL, '402881e8461795c201461795c2e90000', NULL, '4028d881436d514601436d5215ac0043', '2015-04-12 20:39:14', '11', '111', NULL, '4028d881436d514601436d5215ac0043', '2015-05-13 21:54:21', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `weixin_bbs_post`
--

CREATE TABLE IF NOT EXISTS `weixin_bbs_post` (
  `ID` varchar(96) NOT NULL DEFAULT '',
  `BBS_ID` varchar(96) DEFAULT NULL,
  `COMMENT_COUNT` double DEFAULT NULL,
  `CONTENT` blob,
  `CREATE_BY` varchar(96) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `POST_PERSON` varchar(96) DEFAULT NULL,
  `PRAISE_COUNT` double DEFAULT NULL,
  `STATUS` varchar(96) DEFAULT NULL,
  `TITLE` varchar(300) DEFAULT NULL,
  `TOP_STATUS` varchar(96) DEFAULT NULL,
  `UPDATE_BY` varchar(96) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_hbo1supucwts7ujq7wvi8mvim` (`BBS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_bbs_post`
--

INSERT INTO `weixin_bbs_post` (`ID`, `BBS_ID`, `COMMENT_COUNT`, `CONTENT`, `CREATE_BY`, `CREATE_DATE`, `POST_PERSON`, `PRAISE_COUNT`, `STATUS`, `TITLE`, `TOP_STATUS`, `UPDATE_BY`, `UPDATE_DATE`) VALUES
('ff8080814d485da1014d4d8e96350007', NULL, 1, 0x3c703e736466736466733c62722f3e3c2f703e, '4028d881436d514601436d5215ac0043', '2015-05-13 21:54:59', '111', 0, '1', 'sdf', 'Y', '4028d881436d514601436d5215ac0043', '2015-05-13 21:55:10');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_bbs_post_comment`
--

CREATE TABLE IF NOT EXISTS `weixin_bbs_post_comment` (
  `ID` varchar(96) NOT NULL DEFAULT '',
  `COMMENT_PERSON` varchar(300) DEFAULT NULL,
  `COMMENT` varchar(600) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_BY` varchar(96) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_BY` varchar(96) DEFAULT NULL,
  `POST_ID` varchar(96) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_nems9ijkrds9yuskc5go20it3` (`POST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_bbs_post_comment`
--

INSERT INTO `weixin_bbs_post_comment` (`ID`, `COMMENT_PERSON`, `COMMENT`, `CREATE_DATE`, `CREATE_BY`, `UPDATE_DATE`, `UPDATE_BY`, `POST_ID`) VALUES
('ff8080814d485da1014d4d8ebec5000a', '111', 'sdfsdf', '2015-05-13 21:55:10', '4028d881436d514601436d5215ac0043', NULL, NULL, 'ff8080814d485da1014d4d8e96350007');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_bbs_post_img`
--

CREATE TABLE IF NOT EXISTS `weixin_bbs_post_img` (
  `id` varchar(96) NOT NULL DEFAULT '',
  `post_id` varchar(96) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_qhavmw04br4l83vb26oi9h25b` (`post_id`),
  KEY `FK_dm7mg8robtwox03ing3kmm1t9` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_bbs_post_img`
--

INSERT INTO `weixin_bbs_post_img` (`id`, `post_id`) VALUES
('2c9183404d74f79b014d755b07440001', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `weixin_cms_ad`
--

CREATE TABLE IF NOT EXISTS `weixin_cms_ad` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(100) DEFAULT NULL,
  `CREATE_BY` varchar(255) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(255) DEFAULT NULL,
  `IMAGE_HREF` varchar(255) DEFAULT NULL,
  `IMAGE_NAME` varchar(255) DEFAULT NULL,
  `TITLE` varchar(20) DEFAULT NULL,
  `SHOW_FLAG` varchar(1) DEFAULT NULL,
  `ORDERS` int(11) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_cms_ad`
--

INSERT INTO `weixin_cms_ad` (`ID`, `ACCOUNTID`, `CREATE_BY`, `CREATE_DATE`, `CREATE_NAME`, `IMAGE_HREF`, `IMAGE_NAME`, `TITLE`, `SHOW_FLAG`, `ORDERS`, `URL`) VALUES
('402881e44695183a014695214a510013', '402881e8461795c201461795c2e90000', 'admin', '2014-06-13 20:08:45', '管理员', 'upload/files/20140627233502FEzyc38j.jpg', '19300001024098134717639977056.jpg', 'IPHONE7', NULL, NULL, NULL),
('402881e44695183a014695219fe70016', '402881e8461795c201461795c2e90000', 'admin', '2014-06-13 20:09:07', '管理员', 'upload/files/20140627232736z3SvfVEj.jpg', '634490825089531250.jpg', 'IPHONE', NULL, NULL, NULL),
('402881e946ddea480146de053265000b', '402881e8461795c201461795c2e90000', '4028d881436d514601436d5215ac0043', '2014-06-27 23:50:21', 'admin', 'upload/files/20140627235534VJM1pkx3.jpg', 'Img305735292.jpg', '黑莓', NULL, NULL, NULL),
('402881e946ddea480146de0f3a810011', '402881e8461795c201461795c2e90000', '4028d881436d514601436d5215ac0043', '2014-06-28 00:01:18', 'admin', 'upload/files/20140628000116OF07rm7E.jpg', '30_1i$1JxIOB.jpg', 'Lumia930 王者归来', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `weixin_cms_article`
--

CREATE TABLE IF NOT EXISTS `weixin_cms_article` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `image_name` varchar(255) DEFAULT NULL COMMENT '图片名称',
  `image_href` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `summary` varchar(255) DEFAULT NULL,
  `content` varchar(20000) DEFAULT NULL COMMENT '内容',
  `column_id` varchar(36) DEFAULT NULL COMMENT '栏目id',
  `accountid` varchar(100) DEFAULT NULL COMMENT '微信账户',
  `create_name` varchar(255) DEFAULT NULL COMMENT '创建人',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建人id',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `VIEW_COUNT` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_cms_article`
--

INSERT INTO `weixin_cms_article` (`id`, `title`, `image_name`, `image_href`, `summary`, `content`, `column_id`, `accountid`, `create_name`, `create_by`, `create_date`, `VIEW_COUNT`) VALUES
('297e7eb6469a4a8901469a5e58c0000e', '测试一个小黄人的图片', '19343396_845725.jpg', 'upload/files/20140613235146eEgyESpy.jpg', '你看看这个小黄人美不美？', '<p><strong>我的小黄人是不是很好看啊</strong></p><p><strong><br/></strong></p><p><strong><br/></strong></p><p><span style="background-color: rgb(255, 255, 0);"><strong>这个颜色怎么样啊。</strong></span></p>', '402881e44695183a01469522f7d20019', '402881e8461795c201461795c2e90000', '管理员', 'admin', '2014-06-14 20:33:33', 1),
('297e7eb6469a4a8901469a5ef95c0011', '这个杀手帅不帅？', '1384480985636.jpg', 'upload/files/20140613235146eEgyESpy.jpg', '这个杀手帅不帅？', '<p><strong><em>这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？</em></strong></p><p><strong><em>这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？</em></strong></p>', '402881e44695183a01469522f7d20019', '402881e8461795c201461795c2e90000', '管理员', 'admin', '2014-06-14 20:34:14', 0),
('402880e6477d5c2601477d5d8f260002', '123123', 'jeecg_scott.jpg', 'upload/files/20140728222625KXeCCRAG.jpg', '123123', '<p>123123123123</p>', '402889f84767413b0147674358370002', '402881e8461795c201461795c2e90000', 'admin', '4028d881436d514601436d5215ac0043', '2014-07-28 22:26:29', 0),
('402889f346dc66c30146dc7c1c120002', '12', '1348502732_4991.gif', 'upload/files/20140613235146eEgyESpy.jpg', '12', '12', '402881e44695183a0146952426ce0022', '402881e8461795c201461795c2e90000', 'admin', '4028d881436d514601436d5215ac0043', '2014-06-27 16:40:59', 2);

-- --------------------------------------------------------

--
-- 表的结构 `weixin_cms_menu`
--

CREATE TABLE IF NOT EXISTS `weixin_cms_menu` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(100) DEFAULT NULL,
  `CREATE_BY` varchar(255) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(255) DEFAULT NULL,
  `IMAGE_HREF` varchar(255) DEFAULT NULL,
  `IMAGE_NAME` varchar(255) DEFAULT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `TYPE` varchar(20) DEFAULT NULL COMMENT '类型',
  `SHOW_FLAG` varchar(1) DEFAULT NULL,
  `ORDERS` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_cms_menu`
--

INSERT INTO `weixin_cms_menu` (`ID`, `ACCOUNTID`, `CREATE_BY`, `CREATE_DATE`, `CREATE_NAME`, `IMAGE_HREF`, `IMAGE_NAME`, `NAME`, `TYPE`, `SHOW_FLAG`, `ORDERS`) VALUES
('402881e44695183a01469522f7d20019', '402881e8461795c201461795c2e90000', 'admin', '2014-06-13 20:10:35', '管理员', 'upload/files/201406132357343zuaHgX4.jpg', '537f1f63dd1c9.jpg', '关于JEECG', '01', NULL, NULL),
('402881e44695183a014695234880001c', '402881e8461795c201461795c2e90000', 'admin', '2014-06-13 20:10:56', '管理员', 'upload/files/20140613235754hLRC87rF.jpg', '537f1f86602b3.jpg', '渠道代理', '01', NULL, NULL),
('402881e44695183a01469523f03a001f', '402881e8461795c201461795c2e90000', 'admin', '2014-06-13 20:11:39', '管理员', 'upload/files/201406132358039IpFSyet.jpg', '537f1f74d031c.jpg', '功能说明', '01', NULL, NULL),
('402881e44695183a0146952426ce0022', '402881e8461795c201461795c2e90000', 'admin', '2014-06-13 20:11:53', '管理员', 'upload/files/20140613235830M96wj4Lr.jpg', '537f1f98d6f42.jpg', '企业文化', '01', NULL, NULL),
('402881e446955c7c014695a72a610029', '402881e8461795c201461795c2e90000', 'admin', '2014-06-13 22:34:59', '管理员', 'upload/files/20140613235852gBTueAWO.jpg', '537f1faf595dd.jpg', '案例分享', '01', NULL, NULL),
('402881e446955c7c014695a774f9002c', '402881e8461795c201461795c2e90000', 'admin', '2014-06-13 22:35:18', '管理员', 'upload/files/20140613235911chsAs0Md.jpg', '537f1ca3cd562.jpg', '联系我们', '01', NULL, NULL),
('402881e446955c7c014695a7bc45002f', '402881e8461795c201461795c2e90000', 'admin', '2014-06-13 22:35:36', '管理员', 'upload/files/20140613235918OA8vt546.jpg', '537f1cb75c597.jpg', '轻松一刻', '01', NULL, NULL),
('402881e446955c7c014695a7f08b0032', '402881e8461795c201461795c2e90000', 'admin', '2014-06-13 22:35:50', '管理员', 'upload/files/20140613235932htqZFtCs.jpg', '537f1fc8d750b.jpg', '互动推广', '01', NULL, NULL),
('402881e446955c7c014695a836da0035', '402881e8461795c201461795c2e90000', 'admin', '2014-06-13 22:36:08', '管理员', 'upload/files/201407241133168ezfMs40.jpg', 'jeecg_scott.jpg', '升级公告', '01', NULL, NULL),
('402889f84767413b0147674358370002', '402881e8461795c201461795c2e90000', '4028d881436d514601436d5215ac0043', '2014-07-24 15:26:12', 'admin', 'upload/files/20140724152611YCkPnNNe.jpg', 'jeecg_scott.jpg', '123123', '02', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `weixin_cms_site`
--

CREATE TABLE IF NOT EXISTS `weixin_cms_site` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(32) DEFAULT NULL,
  `COMPANY_TEL` varchar(50) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(50) DEFAULT NULL,
  `SITE_LOGO` varchar(200) DEFAULT NULL,
  `SITE_NAME` varchar(100) DEFAULT NULL,
  `SITE_TEMPLATE_STYLE` varchar(50) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_cms_site`
--

INSERT INTO `weixin_cms_site` (`ID`, `ACCOUNTID`, `COMPANY_TEL`, `CREATE_DATE`, `CREATE_NAME`, `SITE_LOGO`, `SITE_NAME`, `SITE_TEMPLATE_STYLE`, `UPDATE_DATE`, `UPDATE_NAME`) VALUES
('402889f647470484014747094556000a', '402881e8461795c201461795c2e90000', '18611788525', '2014-07-18 09:14:55', 'admin', 'upload/files/20140718091452MW70kigU.jpg', 'JEECG开源社区', '', '2014-07-28 21:04:18', 'admin');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_cms_style`
--

CREATE TABLE IF NOT EXISTS `weixin_cms_style` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(50) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(50) DEFAULT NULL,
  `REVIEW_IMG_URL` varchar(100) DEFAULT NULL,
  `TEMPLATE_NAME` varchar(100) DEFAULT NULL,
  `TEMPLATE_URL` varchar(200) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_cms_style`
--

INSERT INTO `weixin_cms_style` (`ID`, `ACCOUNTID`, `CREATE_DATE`, `CREATE_NAME`, `REVIEW_IMG_URL`, `TEMPLATE_NAME`, `TEMPLATE_URL`, `UPDATE_DATE`, `UPDATE_NAME`) VALUES
('402880e6477d04e001477d0e1c5e000b', '402881e8461795c201461795c2e90000', '2014-07-28 20:59:42', 'admin', 'upload/files/20140728205940Y6Ly8de0.jpg', '123', '123', NULL, '');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_column`
--

CREATE TABLE IF NOT EXISTS `weixin_column` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(100) DEFAULT NULL,
  `CREATE_BY` varchar(255) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(255) DEFAULT NULL,
  `IMAGE_HREF` varchar(255) DEFAULT NULL,
  `IMAGE_NAME` varchar(255) DEFAULT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_column`
--

INSERT INTO `weixin_column` (`ID`, `ACCOUNTID`, `CREATE_BY`, `CREATE_DATE`, `CREATE_NAME`, `IMAGE_HREF`, `IMAGE_NAME`, `NAME`) VALUES
('402881e44695183a01469522f7d20019', 'gh_7371a2c3fef2', 'admin', '2014-06-13 20:10:35', '管理员', 'upload/files/201406132357343zuaHgX4.jpg', '537f1f63dd1c9.jpg', '关于JEECG'),
('402881e44695183a014695234880001c', 'gh_7371a2c3fef2', 'admin', '2014-06-13 20:10:56', '管理员', 'upload/files/20140613235754hLRC87rF.jpg', '537f1f86602b3.jpg', '渠道代理'),
('402881e44695183a01469523f03a001f', 'gh_7371a2c3fef2', 'admin', '2014-06-13 20:11:39', '管理员', 'upload/files/201406132358039IpFSyet.jpg', '537f1f74d031c.jpg', '功能说明'),
('402881e44695183a0146952426ce0022', 'gh_7371a2c3fef2', 'admin', '2014-06-13 20:11:53', '管理员', 'upload/files/20140613235830M96wj4Lr.jpg', '537f1f98d6f42.jpg', '企业文化'),
('402881e446955c7c014695a72a610029', 'gh_7371a2c3fef2', 'admin', '2014-06-13 22:34:59', '管理员', 'upload/files/20140613235852gBTueAWO.jpg', '537f1faf595dd.jpg', '案例分享'),
('402881e446955c7c014695a774f9002c', 'gh_7371a2c3fef2', 'admin', '2014-06-13 22:35:18', '管理员', 'upload/files/20140613235911chsAs0Md.jpg', '537f1ca3cd562.jpg', '联系我们'),
('402881e446955c7c014695a7bc45002f', 'gh_7371a2c3fef2', 'admin', '2014-06-13 22:35:36', '管理员', 'upload/files/20140613235918OA8vt546.jpg', '537f1cb75c597.jpg', '轻松一刻'),
('402881e446955c7c014695a7f08b0032', 'gh_7371a2c3fef2', 'admin', '2014-06-13 22:35:50', '管理员', 'upload/files/20140613235932htqZFtCs.jpg', '537f1fc8d750b.jpg', '互动推广'),
('402881e446955c7c014695a836da0035', 'gh_7371a2c3fef2', 'admin', '2014-06-13 22:36:08', '管理员', 'upload/files/20140613235949UuUHp1Bs.jpg', '537f1fdba507f.jpg', '升级公告');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_expandconfig`
--

CREATE TABLE IF NOT EXISTS `weixin_expandconfig` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(200) DEFAULT NULL,
  `CLASSNAME` varchar(100) NOT NULL,
  `CONTENT` longtext,
  `KEYWORD` varchar(100) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_expandconfig`
--

INSERT INTO `weixin_expandconfig` (`ID`, `ACCOUNTID`, `CLASSNAME`, `CONTENT`, `KEYWORD`, `NAME`) VALUES
('402880e648138dba0148139a8b6c0001', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.AroundService', '周边团购', '周边,周边团购', '周边团购'),
('402880e648138dba0148139c7b320005', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.VoteService', '微投票', '微投票,微调研', '微投票'),
('402880e648138dba0148139d84560007', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.WeixinVipMemberService', '会员卡', '会员卡', '会员卡'),
('402881e44667912a0146679390450001', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.FanYiKeyService', '翻译', '翻译', '翻译'),
('402881e44667912a014667947a3a0003', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.TianQiKeyService', '天气预报', '天气', '天气预报'),
('402881e446950f86014695120f810001', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.DaZhuanPanService', '大转盘', '大转盘', '大转盘'),
('402881e446950f8601469513ec670003', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.CmsService', 'CMS', 'cms', 'CMS,cms'),
('402881e4469ffe7a0146a000090d0001', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.GuagualeService', '刮刮乐', '刮刮乐', '刮刮乐'),
('402881e747baf1ea0147bb79d2330007', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.WeixinPhotoService', '微相册', '微相册,相册', '微相册'),
('402881e74821183901482120a08c0001', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.BbsService', '微信社区', '微社区,BBS', '微社区'),
('402881e74821183901482121a7ea0003', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.LeaveMsgService', '微信留言', '微留言', '微留言'),
('402881e9470273d2014702a94a1b001d', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.WeixinShopService', '微信商城', '微商城,商城', '微商城'),
('402881e948209011014820923a800001', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.SurveyService', '微调研', '微调研,调研', '微调研'),
('f7a8a3a9487816f80148783f040c009d', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.VotePKService', '投票PK', '投票PK', '投票PK');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_group`
--

CREATE TABLE IF NOT EXISTS `weixin_group` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '分组名称',
  `addtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '添加时间',
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_group`
--

INSERT INTO `weixin_group` (`id`, `name`, `addtime`, `accountid`) VALUES
('ssss', 'sss', NULL, '402881e8461795c201461795c2e90000');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_gzuserinfo`
--

CREATE TABLE IF NOT EXISTS `weixin_gzuserinfo` (
  `id` varchar(100) CHARACTER SET gbk NOT NULL COMMENT '主键',
  `subscribe` varchar(100) DEFAULT NULL COMMENT '是否关注',
  `openid` varchar(100) DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(200) DEFAULT NULL COMMENT '昵称',
  `sex` varchar(100) DEFAULT NULL COMMENT '性别',
  `city` varchar(100) DEFAULT NULL COMMENT '城市',
  `province` varchar(100) DEFAULT NULL COMMENT '省份',
  `country` varchar(100) DEFAULT NULL COMMENT '国家',
  `headimgurl` varchar(400) DEFAULT NULL COMMENT '用户头像',
  `bzName` varchar(100) DEFAULT NULL COMMENT '备注名称',
  `groupId` varchar(100) DEFAULT NULL,
  `subscribe_time` varchar(100) DEFAULT NULL COMMENT '关注时间',
  `addtime` datetime DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_gzuserinfo`
--

INSERT INTO `weixin_gzuserinfo` (`id`, `subscribe`, `openid`, `nickname`, `sex`, `city`, `province`, `country`, `headimgurl`, `bzName`, `groupId`, `subscribe_time`, `addtime`, `accountid`) VALUES
('2c91811a4d5fd051014d5fd5b47c000c', '1', 'oxIKHuMKrjHBKjwXp0znQ982gF3w', 'Pz8=', '1', '成都', '四川', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLDXuaFruibIP70AsKhQHznG4kmKjElXKWbSaBQU0n93ZhUvUjoX62CgYYRNltvhkq5E67YoSzgg9hyY3LKpJHPec0BQXCkDqRG8/0', NULL, NULL, '1431831950', '2015-05-17 00:00:00', '402881e8461795c201461795c2e90000'),
('2c91811a4d5fd901014d5fe6b0830002', '1', 'oxIKHuJyLsTUp-hMXhHLPwq1Audo', 'Pz8/Pw==', '1', '广州', '广东', '中国', 'http://wx.qlogo.cn/mmopen/iauV7v3htpib7cnCC0wIlSE8U5yia91Kz4V53rEhibicJ2EU6W0aqJeAcRQYuJvIle4xKeiciclSWf52icd0nMkf42yFXkJbeq2mGETB/0', NULL, NULL, '1431833061', '2015-05-17 00:00:00', '402881e8461795c201461795c2e90000'),
('2c91811a4d60d054014d65aab9b00035', '0', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', 'Pz8/', '1', '成都', '四川', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKfHDtSxKHqxOg5K5h6yCzxB1uMD4dNrILuC1sROh2fLPe5gGW0eWE7MV7VBBzYiadYvia9zpxDXtmiaq7psgIbGWcRHgfJl26xcI/0', NULL, NULL, '1431929795', '2015-05-18 00:00:00', '402881e8461795c201461795c2e90000'),
('2c91811a4d60d054014d65ac775b0039', '0', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', 'Pz8/', '1', '成都', '四川', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKfHDtSxKHqxOg5K5h6yCzxB1uMD4dNrILuC1sROh2fLPe5gGW0eWE7MV7VBBzYiadYvia9zpxDXtmiaq7psgIbGWcRHgfJl26xcI/0', NULL, NULL, '1431929910', '2015-05-18 00:00:00', '402881e8461795c201461795c2e90000'),
('2c91811a4d60d054014d65ae4c33003d', '0', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', 'Pz8/', '1', '成都', '四川', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKfHDtSxKHqxOg5K5h6yCzxB1uMD4dNrILuC1sROh2fLPe5gGW0eWE7MV7VBBzYiadYvia9zpxDXtmiaq7psgIbGWcRHgfJl26xcI/0', NULL, NULL, '1431930030', '2015-05-18 00:00:00', '402881e8461795c201461795c2e90000'),
('2c91811a4d60d054014d65af588c0041', '0', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', 'Pz8/', '1', '成都', '四川', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKfHDtSxKHqxOg5K5h6yCzxB1uMD4dNrILuC1sROh2fLPe5gGW0eWE7MV7VBBzYiadYvia9zpxDXtmiaq7psgIbGWcRHgfJl26xcI/0', NULL, NULL, '1431930099', '2015-05-18 00:00:00', '402881e8461795c201461795c2e90000'),
('2c91811a4d60d054014d65b23d8c0045', '0', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', 'Pz8/', '1', '成都', '四川', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKfHDtSxKHqxOg5K5h6yCzxB1uMD4dNrILuC1sROh2fLPe5gGW0eWE7MV7VBBzYiadYvia9zpxDXtmiaq7psgIbGWcRHgfJl26xcI/0', NULL, NULL, '1431930289', '2015-05-18 00:00:00', '402881e8461795c201461795c2e90000'),
('2c91811a4d60d054014d65b48ce40048', '0', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', 'Pz8/', '1', '成都', '四川', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKfHDtSxKHqxOg5K5h6yCzxB1uMD4dNrILuC1sROh2fLPe5gGW0eWE7MV7VBBzYiadYvia9zpxDXtmiaq7psgIbGWcRHgfJl26xcI/0', NULL, NULL, '1431930440', '2015-05-18 00:00:00', '402881e8461795c201461795c2e90000'),
('2c91811a4d60d054014d65da07690075', '1', 'oxIKHuPepPXoL8Uy9Blf9Vma4590', 'Pz8/RD8/Pz8=', '1', '昆明', '云南', '中国', 'http://wx.qlogo.cn/mmopen/KH4wdewD7MOpHIhK99Q6vwca8Tdc70JMXjUqHw8b4372MM8HxwNJ6Xtzzoc8ZhTCHZOb9o4ycicN64y0DaOj7WxaiayHgDGJPZ/0', NULL, NULL, '1431932896', '2015-05-18 00:00:00', '402881e8461795c201461795c2e90000'),
('2c91811a4d60d054014d65dd655d007c', '1', 'oxIKHuAcld1KrRDBbzKSMysNHVc0', 'Pw==', '1', '西安', '陕西', '中国', 'http://wx.qlogo.cn/mmopen/UsichrXlnR9KpZKT9yFrcWWXG3M2SOOHHhPcMXokakP0ibaZsZjic4WBOpqOpGL6pSqxfhibicKzMk3FJThVTlywXIfLuGlFMibL5P/0', NULL, NULL, '1431933117', '2015-05-18 00:00:00', '402881e8461795c201461795c2e90000'),
('2c91811a4d60d054014d6603d1ef008f', '0', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', 'Pz8/', '1', '成都', '四川', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKfHDtSxKHqxOg5K5h6yCzxB1uMD4dNrILuC1sROh2fLPe5gGW0eWE7MV7VBBzYiadYvia9zpxDXtmiaq7psgIbGWcRHgfJl26xcI/0', NULL, NULL, '1431935635', '2015-05-18 00:00:00', '402881e8461795c201461795c2e90000'),
('2c91811a4d60d054014d6604cb640093', '0', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', 'Pz8/', '1', '成都', '四川', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKfHDtSxKHqxOg5K5h6yCzxB1uMD4dNrILuC1sROh2fLPe5gGW0eWE7MV7VBBzYiadYvia9zpxDXtmiaq7psgIbGWcRHgfJl26xcI/0', NULL, NULL, '1431935699', '2015-05-18 00:00:00', '402881e8461795c201461795c2e90000'),
('2c91811a4d60d054014d66070e170098', '0', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', 'Pz8/', '1', '成都', '四川', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKfHDtSxKHqxOg5K5h6yCzxB1uMD4dNrILuC1sROh2fLPe5gGW0eWE7MV7VBBzYiadYvia9zpxDXtmiaq7psgIbGWcRHgfJl26xcI/0', NULL, NULL, '1431935847', '2015-05-18 00:00:00', '402881e8461795c201461795c2e90000'),
('2c91811a4d60d054014d66194aba00b6', '0', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', 'Pz8/', '1', '成都', '四川', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKfHDtSxKHqxOg5K5h6yCzxB1uMD4dNrILuC1sROh2fLPe5gGW0eWE7MV7VBBzYiadYvia9zpxDXtmiaq7psgIbGWcRHgfJl26xcI/0', NULL, NULL, '1431937042', '2015-05-18 00:00:00', '402881e8461795c201461795c2e90000'),
('2c91811a4d60d054014d664949b100cd', '1', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', 'Pz8/', '1', '成都', '四川', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKfHDtSxKHqxOg5K5h6yCzxB1uMD4dNrILuC1sROh2fLPe5gGW0eWE7MV7VBBzYiadYvia9zpxDXtmiaq7psgIbGWcRHgfJl26xcI/0', NULL, NULL, '1431940188', '2015-05-18 00:00:00', '402881e8461795c201461795c2e90000'),
('2c9182b94d6f7cc7014d6fdd26ac0002', '0', 'oxIKHuLmswItcsAJZq1MqqtsY5qM', 'c3VwZXI/Pz8/Pw==', '1', '杭州', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/KH4wdewD7MNZibzXysdKJRWzgrupcufwKhMFnBdhFG6XBclcbZtB7fTTgJf20M4WrBRulb7Fl9XJO7GPFzpdiauVdbnV6HlDzW/0', NULL, NULL, '1432100872', '2015-05-20 00:00:00', '402881e8461795c201461795c2e90000'),
('2c9183404d7090ee014d70983fdc000d', '1', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', 'Pz8/', '1', '成都', '四川', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKfHDtSxKHqxOg5K5h6yCzxB1uMD4dNrILuC1sROh2fLPe5gGW0eWE7MV7VBBzYiadYvia9zpxDXtmiaq7psgIbGWcRHgfJl26xcI/0', NULL, NULL, '1432113135', '2015-05-20 00:00:00', '402881e8461795c201461795c2e90000'),
('2c9183404d70a742014d70ad8e460005', '0', 'oxIKHuN_5qX4wP2f3ifILiGdT0j0', 'TXIuUGl6', '1', '成都', '四川', '中国', 'http://wx.qlogo.cn/mmopen/zXBd3Nw719YrglIv5pTsbiah3oFIibMeib55n2JQwWNogOQTPwuyYylh9oxjSLYfic4j1F3VQz9NXicIjx2GC3Y2ut1PufRAibHsA1/0', NULL, NULL, '1432114529', '2015-05-20 00:00:00', '402881e8461795c201461795c2e90000'),
('2c9183404d747e5d014d7480fb060004', '1', 'oxIKHuAtrEvfufwPIqnELZ6FsjyM', 'TGFzcnVlbnQ/enpk', '1', '泉州', '福建', '中国', 'http://wx.qlogo.cn/mmopen/UsichrXlnR9LaPRel8zrkrR8fr3yxYZeZcxZgZ98Cc3edNoiawgyBO9oMoiabGGDKcOMtuIEMz9OeLNb643EQ0B3A/0', NULL, NULL, '1432178718', '2015-05-21 00:00:00', '402881e8461795c201461795c2e90000'),
('2c9183404d747e5d014d749041ab000e', '1', 'oxIKHuGZq28bxzXTQOcg9N2CZ07w', 'QXJ2aW4=', '1', '', '', '拉脱维亚', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLCmMwP775UgpgQZ5ol4qSTFQd386EFbfez2LD9p5DZS9UH3GSp4TLKTs7sgLqMknH9QWyTA6VicJuA/0', NULL, NULL, '1432179717', '2015-05-21 00:00:00', '402881e8461795c201461795c2e90000'),
('2c9183404d747e5d014d749093d40010', '1', 'oxIKHuPeJmtgsvt7UOxIlGiPNW30', 'SGVybWFubg==', '1', '青岛', '山东', '中国', 'http://wx.qlogo.cn/mmopen/NYjIF1ncicLd7deRAO0fpb2EmdVE9M7ekhgRhbPicia51h5mR5qWV4Ho5VaEMDb6a697sKsJsYVEicyc1Eq36iamzImbYkFSD4Ram/0', NULL, NULL, '1432179741', '2015-05-21 00:00:00', '402881e8461795c201461795c2e90000'),
('2c9183404d747e5d014d74a0a8630012', '1', 'oxIKHuCmwXuAVEDqBQ0WgwAEg5y8', 'U3VwZXJNYW4=', '1', '杭州', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/iauV7v3htpib7cnCC0wIlSExXic8RicEKZFTVVUaXGxTAFhibEUk5tuBx5DatrRot1Gr4npib7D4icssdFhTMxuO5DOR3EIP2FS8Pzic/0', NULL, NULL, '1432180795', '2015-05-21 00:00:00', '402881e8461795c201461795c2e90000'),
('2c9183404d747e5d014d74d7d3c4001f', '1', 'oxIKHuIS0cJZiP-XwW1fuBYoAvyI', 'Pz8=', '1', '通州', '北京', '中国', 'http://wx.qlogo.cn/mmopen/zXBd3Nw719b9X5VUVOMq8us9CcsI6QWW2yibH9ibneUk5Rtjvq7J9pYhDjzAkUib9DibKSTWAUUZUDXkVIKPiaGo9rYu7r8sdzlCR/0', NULL, NULL, '1432184410', '2015-05-21 00:00:00', '402881e8461795c201461795c2e90000'),
('2c9183534d704ccf014d705e6e6c0009', '0', 'oxIKHuN_5qX4wP2f3ifILiGdT0j0', 'TXIuUGl6', '1', '成都', '四川', '中国', 'http://wx.qlogo.cn/mmopen/zXBd3Nw719YrglIv5pTsbiah3oFIibMeib55n2JQwWNogOQTPwuyYylh9oxjSLYfic4j1F3VQz9NXicIjx2GC3Y2ut1PufRAibHsA1/0', NULL, NULL, '1432109346', '2015-05-20 00:00:00', '402881e8461795c201461795c2e90000'),
('2c9183534d704ccf014d7072db440014', '1', 'oxIKHuMCQLukfzl8nr71PwSqhAUk', 'Pz8=', '1', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/8TankgW0yonBug1Kuz2ibW0cYAG0pwXR4orzNYWJtBrxA5ZUD3HRYy9bGNQgtkFPxFULehgnejZaSiaPreRQODZH5BTCLLQYK5/0', NULL, NULL, '1432110684', '2015-05-20 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51910004', '1', 'oUG4_t1qemVol-lJUiFAATzAVG30', '6YKx5b+X5rC4', '1', '杭州', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLCDYRK77IsjRdEoRyOq2tk19JhprA96pNADalS0tbkvGLWa4mK44Xibs6LmwUGwZ3KdqsFgjFOlMicA/0', 'ssssa都是', 'ssss', '1404631630', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51ae0005', '1', 'oUG4_tzFcZSufsYytFIR1zO-x6Ig', '6Ieq55Sx5Yqg6YCf5bqm', '1', '青岛', '山东', '中国', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4Sll7ekGKInQrWrs2mhV6rlgbTqtZDHA2ovNeru6oNrWxHG5yhGibAmiawIVQpZmSKnuIxsnic9MRRbpg/0', NULL, 'ssss', '1400078272', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51af0006', '1', 'oUG4_twU6kGLLIhR9jJhI4qdAcqs', 'IOWjsOacieS7v+WjsOaXoA==', '1', '', '广东', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLDj2UpQznfMQH5iaibU1mILAdicXibAF9icnhUzXibpicA4nouyJ08dGyPObIODPep9iaKsAtFBcSkyhicticKQ/0', NULL, 'ssss', '1400553610', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51af0007', '1', 'oUG4_t6ncWoGePtLSKPMqIeysVes', '546L5Lqu', '1', '青岛', '山东', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLARmUDjsCPjITNExL8GBcl9S8Zwxsib3ksGWGCJdkB7CCxTlzJlIDAEIR3oiaodA3hwgUfnz7ScZicdQ/0', NULL, NULL, '1409379785', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51af0008', '1', 'oUG4_t08gyPOYTf4eMMU4x5pzGMU', '6LCt5piO5pm6', '1', '青岛', '山东', '中国', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOelkZ5ATjXRXQDfAcO4YeDmsS9TzHgAKf0R7HrzN1LAFl65fNcic5x0KCa4cO0cnibCXibicib37BbImN3A/0', NULL, NULL, '1409019992', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51b00009', '1', 'oUG4_t2_Hkzbb_aJeY9pSK1aZg6c', '5LuO6Zu25byA5aeL', '1', '青岛', '山东', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLDVKH7MGiazYaPdIT8LNavjpcL91WhQlKy0CzFcIZfotchH27zeYqicBhQyEGVxek7sgV6TiaCsHeq8Q/0', NULL, NULL, '1398415434', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51b0000a', '1', 'oUG4_t5UFLUi8vAvTI2usCBEy918', '5L2V5L+K55yf', '1', '郑州', '河南', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLCf6dWE6k6S2FExSyqVoicLtD9Bia4AiaibXHVM5T4rfhS0NnkvibJibDCoMp1WdXUoKOUT5YxndXajT1Rw/0', NULL, NULL, '1405670929', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51b0000b', '1', 'oUG4_t7NoMZBGeEZRVYyt8DRP0eE', '6YGl6L+c55qE54Gv5aGU', '1', '朝阳', '北京', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKvxnkSnjUDxnt8N1DpCM65dKa6yqn0Rq8WzTlibicCzsPrJcOMuHXQ3r4ZLRXcbyHA2vzWBoxrjKmQ/0', NULL, NULL, '1397992556', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51b0000c', '1', 'oUG4_t-0V4RdmbXaCyHVUEV8DR6g', '5oOR', '2', '广州', '广东', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJl4QHDM1k5C1dewGPfQHKuD2Gr7S1dXZ7JDiapxW4UGTZkwWQdRHiaCtEBpI5WAibVqOrtr6DVbFKTA/0', NULL, NULL, '1405843077', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51b1000d', '1', 'oUG4_t_8C3Xe2T0RNPx3SVb3IndM', '44K8OvCflKXjgIzolpvjgI3wn5mJ', '1', '无锡', '江苏', '中国', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4SkmzryluOuqXOesuQ5VuIbdj2jqJTjv2rwowS4MicbeIEibnRHw8BviaibqdNIEY7OceaAWGngH0kY0NQ/0', NULL, NULL, '1405074965', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51b1000e', '1', 'oUG4_t66WWSTBl99i4ja5nuMuhsA', 'ICA=', '1', '', '', '冰岛', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM4txOAXYErhBsKuvicEtxEqKx7Cuf0cu6SRMrbU16lujLv3wk99u7hVsXmaNK93dqUgf336cvs0WFA/0', NULL, NULL, '1400539238', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51b1000f', '1', 'oUG4_tx_vbPjKCTrayzrxtom48BM', '6Zi/5ouJ6L6b', '1', '徐汇', '上海', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLC5YkKEicHbFDdouxic7bCUf0ohFOMgAD1y7MlQomALNT8mibIXJRtbfMsqUgKqaxviasXfUoTr4CDCQg/0', NULL, NULL, '1408097538', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51b10010', '1', 'oUG4_tyK3mAhjBsBbOgYd7l7F4iM', 'QSBUIE0=', '1', '', '', '马绍尔群岛', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEIbTu7wD4XIv3cH8VMYxQtXiaX8BP1icA7icUicvNsf2OtSchqv8nvWIpF4PZDFJ2kozAbhGkXXlRfFBQ/0', NULL, NULL, '1408879503', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51b10011', '1', 'oUG4_tyFImHh6Myx4LOxAAFIB_gE', '6IyD6L+q6LWb5bCUXw==', '1', '苏州', '江苏', '中国', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5I7YVeoUyXgiaQTAZ6RjTVKBEBwjIH6AictcGwvHID059DL1ewDbF9LdsSvbVsw7LMnNujRZjN3Jxg/0', NULL, NULL, '1405153380', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51b20012', '1', 'oUG4_t_jHvwHlf5O9N9P8soOZPMI', 'MTY2NA==', '1', '', '', '以色列', 'http://wx.qlogo.cn/mmopen/ZwIE1OEm4BzfEV0Gib0VnCUCvRSSkd4P7DlautgcdQOncH4Gjcb8Qd3tI7lpIwIq07dA8WNagV9UusDHUSJsQ04GxWGIO7gwK/0', NULL, NULL, '1405183393', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51b40013', '1', 'oUG4_t-PubdMb1OuI3GpNKnEppnc', '6ams57qi5bKp', '1', '晋城', '山西', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEIGsVxJGOGDW4e8UX8ZFas8y5EwFyibbaHwkR9v41FsjxbXSWW0HZ4uBFAGj5YL2IHnrqz213AfgcA/0', NULL, NULL, '1397464303', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51b60014', '1', 'oUG4_t57uKMmLsNJqXwTGjeurNks', '5aWU6LeR55qE6JyX54mb', '1', '青岛', '山东', '中国', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4SkibqiaSh7iawP1jbWTmQuaicqOicTNs1lZQ2NzL18kw9U65lGBDxoLYiam44Nu08OYGeZsWZ5iaFmDWGprw/0', NULL, NULL, '1404099613', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51b60015', '1', 'oUG4_tyl5q8cta1gu3yxONw0V36E', '5ZGZ54mb', '1', '洛阳', '河南', '中国', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOemib7VQJDsbnnAEWvEeibOxJia3Anq8UGI6MdlUZ9DBmD5hAjtGIQLKFvoibM7cl3SvZpbzcXS6T041hQ/0', NULL, NULL, '1401975645', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51b60016', '1', 'oUG4_txyBWG6ei_ZurbHMxq1U6yY', 'QeWVin7lnLDnk5w=', '1', '郑州', '河南', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLC4AQn4LM8Jic0knUhLENIziaPQ7W0nFlLVgagyic3uXnViaq29guWl5n2B7XDjn4eurQ0heLlrv1rIMg/0', NULL, NULL, '1409121331', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51b70017', '1', 'oUG4_t7m2NEye_69CKLRGZ_THQNw', 'TWljaGVsbGU=', '2', '浦东新区', '上海', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKACibicsokyhmCaibL5vNZhIoCp8G13a6ick32geLV2WE0WZA7J4y5KWyQQWHgic9KBia5VHvDlwMbdAmQ/0', NULL, NULL, '1406774509', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51b70018', '1', 'oUG4_tzNAaNPtDv66E8NEAhsjbvs', '4pSi4pSmYc6h772QeQ==', '1', '延边', '吉林', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLBNva5tehUz1iabJ8b6X3ib4X87emMXhNicOCPRaWAhvPmq9NlotXCX5Z8DjpBSKFXFkaqggsbth2baw/0', NULL, NULL, '1395387884', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51d10019', '1', 'oUG4_t9GHqpkY5OtrWLtiDDEXCUY', '6Zu25pif', '1', '咸宁', '湖北', '中国', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOenKMiaAcQgLuPXp0BuOkO1PZThFv4TbD0fxFUTRyxDR8MrOaEQibibMpBEBqXibJIZyuAfkdXnjiaffIXg/0', NULL, NULL, '1403079814', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51d1001a', '1', 'oUG4_t11NHSp0OSDxfmJmMAp3HlU', '6YeR6Zyy546J', '2', '南京', '江苏', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLAMywHpdpnsibtLYalYSotyQmyes11aF9rXqZpmFHIDuxoKBO8PP1OK842c6cZdMN4OXcYe4tRjxyg/0', NULL, NULL, '1399459734', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51d1001b', '1', 'oUG4_t38UfJAXESD74iVpZJbVgXI', '5p+z5LiL6aOe6Zuq', '1', '青岛', '山东', '中国', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOeloryfSax4HeCCkqDbGypnO39fmjZu9TeU8GJRmLsb2EyOJcVxYgBfS7CHk1knGPuhAmwyrib0yIEQ/0', NULL, NULL, '1400748780', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51d2001c', '1', 'oUG4_t4M3ZwpZs8xoN9fR29N6HtA', '5aea5L+K', '1', '南昌', '江西', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLABftw1D6fQGHvs3zyLdkmbEjjou10VQoHwzDsT6YkibSJPhqhJukbXTOcCl0UVVibRC9xOJCFibiaFOQ/0', NULL, NULL, '1409280395', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51d2001d', '1', 'oUG4_ty06wJLmCJ3o61czjqURy34', '5a6JWkg=', '2', '海淀', '北京', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLCFF9Dmib5tFK9bauibGrlvsWYxYuU9xynTichnCbxUSCg5dqickQDO6Zt0IsXoXscscicswLtIwFIGIPw/0', NULL, NULL, '1408241870', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51d2001e', '1', 'oUG4_t6zP3dKgIx0n0a2NJfJfOYs', '6JOd6Imy5aSp56m6', '1', '安阳', '河南', '中国', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOelzpx0REhd8WZcAtlZaf4cz1osdss8kUrc4BOSEmXLKTrAIbicvkefJvhVF9grcT4SX1GNsGiaI4Iog/0', NULL, NULL, '1409710682', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51d2001f', '1', 'oUG4_t0jXGLHdLia80WHuKkKb_R8', 'Q0Y=', '1', '乌鲁木齐', '新疆', '中国', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5Pcc2cLXMicDwktpUX2z5F1NwSavSEeA0656vJ1c4sr5vrntlW5bJSPotPUmpzV4aftakYGPHp5cg/0', NULL, NULL, '1405047485', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51d20020', '1', 'oUG4_t0F45EKBY88onO7CiK4RWBc', '6L2p5ZOl', '1', '青浦', '上海', '中国', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOeld08icpEXsgBjrQA21wKs5VK8lvZBoFsMpzqvfF9QgPuBUCA6DknFFhDX7yoA1FPJFhdxh0CeBwIg/0', NULL, NULL, '1407396612', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51d30021', '1', 'oUG4_t8NXHvMf7915kvFQXbwsXGs', 'bXXvvZ5tdQ==', '2', '黄浦', '上海', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaELMSIrapuxXHwycbZjiaUWty5PDWl7ibgsdibOxtG5Edm30eqbwHTliciaYaEJmAZFMXgRcoqRU2fv4t6A/0', NULL, NULL, '1394467636', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51d30022', '1', 'oUG4_t7G3hMmpN47FJaLjRQxXmXI', '5pmT', '2', '广州', '广东', '中国', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4SlPEDjWOCL6JshF3LFjxwRl4hT6XqTQrTcu91YJfw0PNxPA88ewIXblAH6ptaQFj2P2nEoiaFIusQA/0', NULL, NULL, '1408089964', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51d30023', '1', 'oUG4_t22vRrv6NWvuu24YXw3BEoU', '5a2Z5LuB5Y2O', '1', '', '', '智利', '', NULL, NULL, '1408532568', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51d30024', '1', 'oUG4_txCUxsjCElTQk2N32Gmu6tU', 'Y3Vp5bCP5LmZ', '2', '福州', '福建', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJb8wJibjbnCLuguswqiczLq3ITBTjMRj5dic9PmAeQE8Ftgncib2PekJRaNZmuXZskbq1UPQ8EtwHHug/0', NULL, NULL, '1401547949', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51d40025', '1', 'oUG4_t1dGX8tqIui9NwkLmUkF3ME', '5oKy5YKs55qE54aK5a2p5a2Q', '1', '漳州', '福建', '中国', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4SnN0RKQbT3DZSf41W9jxKDPM4rQtqqL1LOfPCib5akDU4SibU6RrbtUaOibA6AiakaNia4k6kzOBXwuPGQ/0', NULL, NULL, '1400085177', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51d40026', '1', 'oUG4_twl6la4_UAHr71TCfqhmwTI', '6JK/5YWL5a6H', '1', '邯郸', '河北', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLAENER5OArKaiboHrhjlA0rObhE2lNEoqPxe9ibQVCd8gibEFaayDEiaQ9LEzsRVmvsNq9PdtoibV0kic4g/0', NULL, NULL, '1406772396', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51d40027', '1', 'oUG4_tym4vXPM2HEsBWzmqn64ZLU', '5Y2i5LqR', '1', '运城', '山西', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJhQMtvzgLicyFAPSbnz0ibQrh72rKZVUo797lpHlMkCeR5px2ibcXpMrfSDdIBR5SibzSzOx3MNZgwfA/0', NULL, NULL, '1408179258', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51d40028', '1', 'oUG4_tzIWm6iwVDAcdQfIR7_46RY', '5a6B6Z2Z6Ie06L+c', '1', '银川', '宁夏', '中国', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOeleV8QESYWmibsXk6CGSfu6hPyrVuzv5wCUkKD6u0F7A5DvEYCc3BGictH2KoAceLX0okSQLDWngnTA/0', NULL, NULL, '1404320278', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51d40029', '1', 'oUG4_txEWRVv8effYgDxJpRsq4O0', '5LmW5LmW6bG8', '2', '惠州', '广东', '中国', 'http://wx.qlogo.cn/mmopen/rjFpqUibBJ3cSvddSwZvWRf7PWoaaDFu7GBfDJic1bbRJfTKTibS96cYzKIQicy1VnprtWkynGLgGU37icf1dXQMO6vWtfibKtCmB6/0', NULL, NULL, '1406895421', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51d5002a', '1', 'oUG4_t2sEJ6_gKe_g1nw8CbNeJZ8', '562J5b6F5aSP57ut', '1', '泸州', '四川', '中国', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOemBergiaydrWY4C9xfTxdV6JhUiaBwvRuwEC12Gy5ybcibICtjynUsCpZFGRXHz1BF4V3sdkYaEibJR5w/0', NULL, NULL, '1395982769', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51d5002b', '1', 'oUG4_txs6ElyQ1zXhdWbJMCCffOM', '5p2O55Ge4oCU5Yy76ICF5LuB4p2k77iP', '1', '临汾', '山西', '中国', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOek7oiaE6Xjic0ubV3CjMDgAc4tXshiaic1g51eib7rcDzibsFUcIrx0BOLj0uLOec877NwpiaMLCANqzgusg/0', NULL, NULL, '1406961120', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51d5002c', '1', 'oUG4_t9NOBlpt3gi5swvDdF31ezs', '546L5bCP6I65', '2', '石景山', '北京', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLCRQuR1QNdA1VTMRabWcIK29Pk2TiaXSicDkIAvWu4U27DVqh1D2oK7sWjexSh7w1wa8FjsHzuwdBag/0', NULL, NULL, '1399861664', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51e8002d', '1', 'oUG4_t_86sQZveRgziWS1VxV0HgE', '5ra16JCP', '2', '昆明', '云南', '中国', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOek48JN6jHTxCu3ZBlIBRTd44rLYYr8ehhTDuPfJjCh0uVMrVZeUQLFU4jDy2iaACr95MH94DnVIuNg/0', NULL, NULL, '1408806782', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51e8002e', '1', 'oUG4_tzkcEYqyoUHF2sdcqUxum2E', '5bCP5YiY', '1', '黑河', '黑龙江', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJsI7xPleYZg3dSzlOe5rN9AMdAjOmk8y5iaVzXAMdoia6GUibRpkM6HZZoaryNEibiaXOCUrmbZias8ia1g/0', NULL, NULL, '1409288957', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51e9002f', '1', 'oUG4_t0Yln3v1pB-Cw8sNzMPnypk', '5aSa5ouJ5LiNQeaipg==', '2', '廊坊', '河北', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLD34lynYic610Hgg5GfrY1EtBPWhHBHibI59RIEGtgMtonMQ2FJWficdiaKxxLnSXw7znjMcrBXPsIWQw/0', NULL, NULL, '1407906171', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51e90030', '1', 'oUG4_t0fWVnM42yJQisEUbWyqHqQ', '5ZCV5aif', '2', '西安', '陕西', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEIrhc6XHN7adyYSFwibx17lCbEBUzZiappEycMm5GYyaN7YqJYtlW7JZPSDC8APAHDSwVT5ZwuuEnTg/0', NULL, NULL, '1395061925', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51e90031', '1', 'oUG4_t-GMCSWRSjgvZHbt3Jn1H8g', '6Zuo5rWT', '2', '青岛', '山东', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEIXTy7PYhup7s2WPpnWBqTBy483K1NV4SdhVQhcXXeMPFGAhLr1xQk3qgibLytsicBoS8Nk9a40R9MQ/0', NULL, NULL, '1405607069', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51e90032', '1', 'oUG4_t-TY-x2VTFHqyc9g1SEb3Js', 'Q2F0aHlaaWxjaA==', '2', '汉中', '陕西', '中国', 'http://wx.qlogo.cn/mmopen/rjFpqUibBJ3cSvddSwZvWRRDYm4icX0BAnmia7fqTk6pCx1NiarX9mc9jktCWqmCJECfw5q12kcEASMDjCUyE1teNk9ia68ZMhwsG/0', NULL, NULL, '1407221795', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51e90033', '1', 'oUG4_t7g6aQBkYdTEeEESNFX7Kd4', '5p2O576O6Imz', '2', '咸阳', '陕西', '中国', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOekeIBOc1drCMg3GRqfwMricVPORXlorQtIFvhPMGdKUAZ0nV7MnFTWctt1ic2Yao5RlnDWCibwhTx8EQ/0', NULL, NULL, '1397061898', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51ea0034', '1', 'oUG4_twkz7uBm289LqilEIsqyioM', '6KKB', '1', '河北', '天津', '中国', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM4V5Zeia7puDo0Nl03iclFuj9I8onC2MkpvuNcU8Roj0EBHCsA6YqibibWicCk4DS1fPibpFCiaCAWfwuV1A/0', NULL, NULL, '1407037480', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51ea0035', '1', 'oUG4_t5Gp9zR7YJhXVSqKp29epP4', '5bCP5pWP', '2', '潍坊', '山东', '中国', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4SlUVsoWINicGqI0d5gvnL2xMkq2wrdfECp1vzTyxwGFXEHa0uRhTXY5icnw1uE5CvMibPxEshcibHqW5g/0', NULL, NULL, '1405130471', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f6f51ea0036', '1', 'oUG4_tx8PN_KXpBs75YTdD8bwrEM', 'MjTor74=', '1', '郑州', '河南', '中国', 'http://wx.qlogo.cn/mmopen/ZwIE1OEm4Bxf7mUUDe8sVGK4LCardoBKNyMI2IBKnMTzFjL7YGibdJMLh3747XLoksJ18M7HeGDTMpVclt1s8FA/0', NULL, NULL, '1400684234', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f0f10037', '1', 'oUG4_txBj6NbevFE260VSZY4gFew', '5bCP5Yia', '1', '常州', '江苏', '中国', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4SkYRthcicKytznIgdN2eYTiakmGkhGRv2ejaZicJV4PUNRuJF6EgDfh3fsdYLUebqwgX6UKTjm0VWYibQ/0', NULL, NULL, '1398086634', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f0f30038', '1', 'oUG4_t6wbCWjjN8tIIcR6mYJO2Vc', 'RHIuY3Vl', '1', '延安', '陕西', '中国', 'http://wx.qlogo.cn/mmopen/oghTTPicQ9EPJlBiaX3ddObGRllazvle6X4iamCBupbN6QEnnf5EQqMJfNSH4roHd3vibC39hjnXO6aNVgcNKJLEejIn52CRTAiav/0', NULL, NULL, '1406648139', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f0f30039', '1', 'oUG4_t_3PGL1w1Xmt5Q4GjMHxHAE', 'bHVja3k=', '2', '通州', '北京', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaELlaoVt0ibzzch7ZickwmxEGad1eiaMX9IJkXSPY0QIqjzDSdv508SjMCLeib4EeqV1oW4DkFXBGTjqqg/0', NULL, NULL, '1409102941', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f0f3003a', '1', 'oUG4_t3tyHtntondadmSJfhlugM8', '5Yid5bGV', '1', '武清', '天津', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJ1kXwgBnZKTslictG0bDuBzWC7OlzmlqMd3YjtFR27ic8ticd0Pmg1CQQK21SkW5zgx3oNibJyhsq0qw/0', NULL, NULL, '1402030766', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f0f4003b', '1', 'oUG4_tz5F5rf3dMNY6OhejUMlX7g', '5bCPUQ==', '2', '丰台', '北京', '中国', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4SliblHvmRUueCuIe1aVGHRvAypVwb1pn0Dewty4nsyGuY9SuzsiaqSCFKSAofiaol1dzdicBFSUIPkXJ2SHVEA6Ticiav/0', NULL, NULL, '1394110776', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f0f4003c', '1', 'oUG4_t-KNaqQCZqzuOYxthfCXtx8', '5LuW5pyy5bCI5bGe', '2', '昌吉', '新疆', '中国', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOekccmp3hdqibhqsUufeZFRuLCkJVmD7tkbhXNib8vyHnEo99YrULzjwSrcophCaf4MX2PDOM2D8FYWQ/0', NULL, NULL, '1394780452', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f0f4003d', '1', 'oUG4_tzBA4C0D0d4jlTPGQJjQ5OY', '5bCP55KH', '2', '汕头', '广东', '中国', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4SliblHvmRUueCiabUm9xAmVggPibh6y1fA6lEVSMCeldAhoaKVEhrz0XvS3BLxBzGQV6yHG3gGxtrthlmc4rBCS7XQ/0', NULL, NULL, '1408671173', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f0f4003e', '1', 'oUG4_tzEbAcr1NUE-L6L4ByALJYA', '5pmT5LqR', '1', '桂林', '广西', '中国', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM66t1ls6FvNu4OoUPgLrhZVxrZPVAZEjiadicxWerKIvhMNJ11A0ibsAXV7XiaPD7urmLUV3rNMPibx4vg/0', NULL, NULL, '1394041319', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f0f5003f', '1', 'oUG4_tzDKNg8l9SWJXrdtHcwWQf0', '57+f5paH5pet', '1', '浦东新区', '上海', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLB80230Dic8EFnthhtia2Tdvd8Pjc7hpmmzwyAuPibRCLZFGDyYd5M4MFuvqfvjZesjjFLh0AMa0qc1A/0', NULL, NULL, '1402837272', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f0f60040', '1', 'oUG4_t_zxc5sdydynfw0OL3cxse8', '5q2k5pe25q2k5Yi7', '2', '', '慕尼黑', '德国', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOenK1kgJiaunaTbzdHKOTgMdGf1qz06JF6sYj4ibF2wuJzL5FdArdAzBvA1UKcRukqOLhl1elCeqibnwQ/0', NULL, NULL, '1409730813', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f0f60041', '1', 'oUG4_t9z6klIHyZ-8d2GBeqe7-CA', 'S2luZw==', '1', '德州', '山东', '中国', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOeny4RSIKPtRQC1vbp7YK2icdY4vcgMvUVVp09LTuXdNaTtnC2rUXs1acCxVlpCrBx1iajjKAFebrP7g/0', NULL, NULL, '1400044127', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f0f60042', '1', 'oUG4_t9Zbs3L82LFzag_MIpnaHis', '6JOd5bCP6bqm', '2', '', '杜塞尔多夫', '德国', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4SkTM3b0qHtibRROsfFYicONY2UE7Y64icpBoeoIAtN0SXoOibUhgKZpAYq22M9rEkVKD3RicD6FQibX7EEw/0', NULL, NULL, '1405221598', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f0f60043', '1', 'oUG4_t180pz2RUO_Ei6hKRm643XU', 'RHIuSg==', '1', '兰州市', '甘肃', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaELjfsibPd0rl3YKqQJJNAGoHk4EkLIH2MOWlMarrKbpORKc8QFzJ4DtebxHD5RQwgjJ5M6DLaiaeouw/0', NULL, NULL, '1401637382', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f0f60044', '1', 'oUG4_twXeeyMnWwPNmSnwzkEDb3g', '6LaK5p2l6LaK6IOW', '1', '', '杜塞尔多夫', '德国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLBR1ZW0Xz5lXqQiboDmrMhxEeOOwWgo1169sJavRcchfv92pwicyibich2UlJlgOOvbtoEvyKx0eD3rTQ/0', NULL, NULL, '1401802347', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f0f60045', '1', 'oUG4_tzc_EK2VD_8OQTYU2DZnTE4', '5aaC5p6c5L2g6K6k6K+GRS5DLkc=', '1', '恩施', '湖北', '中国', 'http://wx.qlogo.cn/mmopen/ZwIE1OEm4BzhYFVmNo3NXlEeaTvQ47wxKEfsqicbIlMGLNK0dgXqmVT2qyECX0m3AMdQVmz7LSUTu4f7BTAeoU6TptzF3TiaX6/0', NULL, NULL, '1406791558', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f0f70046', '1', 'oUG4_t7idACZYxluAih7eHaqix6E', '6YC4', '1', '', '', '卢旺达', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLB5wza9BfvPFVFzVPiaobzVLgNsLficgCwd9rQ16icCiaUX0AfjGB7s57ubpEhsx22rohI2s07XBSzjTA/0', NULL, NULL, '1409379769', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f0f70047', '1', 'oUG4_t44iZed3bikEOiE6FUwFPkU', '546L54+K', '2', '东城', '北京', '中国', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM4qRMau3KWpUeY3bS1OBfuribh1lYiaiaJtb0NXwM8Vlc29l6pcia9FnQG1ib5RgZuqrwEJAxxysINS0mQ/0', NULL, NULL, '1403787472', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f0f70048', '1', 'oUG4_t9-fHmATqcCQuhTA9PdSZ_U', 'Uk9TQQ==', '2', '东城', '北京', '中国', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOen7fwGjOSeNnVib942jEUCYISDzn4dxNqLVSlFd7M2Kh3QCjQHWflpLv4Bf6fGUCTVMmwpENibBMibQw/0', NULL, NULL, '1403591391', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f0f70049', '1', 'oUG4_t7dMxGVgl7R3tGiKdB6Jv70', '6YOt5a6H', '1', '沈阳', '辽宁', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLDZ6oeh2AkHSzCjZTQDvUf8kFJmsbZzFyZibzalibCDFNUdnbvXNrfHibMt4DJZibrwtP3A3BdMKOicrtA/0', NULL, NULL, '1401889432', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f0f7004a', '1', 'oUG4_tw-odIBruxIgo9ziww3Dp-k', '546L54Wc', '2', '萍乡', '江西', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEIeD8ib1ZsIx0ibSDkZdlM8OJO6cmUo8mXhoAYKicd8xeqncYTHuibPiaAwXnqTicShhTmjUcuJliasopQqQ/0', NULL, NULL, '1407800413', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f0f7004b', '1', 'oUG4_tzF6TAX9JnfFoJ4TCoixzQM', '5oWO5a2Q', '2', '长沙', '湖南', '中国', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOemwicl2F8Qp9DBkicA4gF2br5YgfYu8eUdHD628j6RibWpial1ibH6cq5OryQL2GICngAk4KqrQDmViaZWg/0', NULL, NULL, '1401599645', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f131004c', '1', 'oUG4_t2XjXhxs_Lcz9Wqt0icAb1k', '772A5bm856ia5a6M44CC', '1', '广州', '广东', '中国', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4Slq9ib8D5pABYMpL7jF17LsFgfmXG58EIhho1yxjeibkUDNuzTib71LvQVibSh7gTlk6MUicBsRF0e8fWQ/0', NULL, NULL, '1400515384', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f132004d', '1', 'oUG4_t851UoSICQc1YGYU2RPDMMQ', 'X3NhbXVsYXJpYeKZpQ==', '2', '西安', '陕西', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLCnZQuOewMurMYdEaWH8hphibJG9gpKg3Oib5atOpwAgbcN94DOahH3aPZiazDSu2Piavico7XFI7XddVQ/0', NULL, NULL, '1400246110', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f132004e', '1', 'oUG4_t-LdaL1CH8CfACoq5_qWSdg', '5Y+25a2Q', '2', '六盘水', '贵州', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLD9KVc87TBw5bwNcJ6RAu6ia0ibCTQyUj7JhiaZL7EW1G2h9rwMKpwJycxZZ8y5zTpvlNE1v67x4GNEg/0', NULL, NULL, '1402048135', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f132004f', '1', 'oUG4_t2p1aMkdiI3_VnN63NgeSAU', 'ICAg4pyo4pyo', '2', '沈阳', '辽宁', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLDJdGRDT1b98PLFL8lAEhicuXfIF5HgU55hkNXzcPode0jX8a2h3zV3NgoCuQ9LIs6ynt14L1icFu8g/0', NULL, NULL, '1394284253', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f1320050', '1', 'oUG4_t-KgbDLbofUfNbOZ2kf05r0', '7pSg7pSg7pSg44CC5rOb5rOb77yM', '2', '长沙', '湖南', '中国', 'http://wx.qlogo.cn/mmopen/rjFpqUibBJ3cSvddSwZvWRfUMZPEB2AqgyrsoK8EgjHn6LlBiaxib6bD4zHhW70fpn0cAXMzkP4ZRG66OQSqxr4IsE5mlIQCzvE/0', NULL, NULL, '1407923177', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f1320051', '1', 'oUG4_t-Z-8wVhJZjlaQwxTWF4Hao', '5pum', '1', '潍坊', '山东', '中国', 'http://wx.qlogo.cn/mmopen/rjFpqUibBJ3dUia7bcSr35icAhmbnCRXZFn3wR7TQfnWZXY7r5VicFupJ9v1aic6kr7SxMMMibBtKxjou1a2EfkkZn3A/0', NULL, NULL, '1401016598', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f1330052', '1', 'oUG4_t4hjjM1HqfQk4ap2ZvP1zOo', '5YGP5omn54uC44CB', '2', '九江', '江西', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEIAoIKbyRcKe0zqRricbeibjCRsnn6Ze3HPlkRv38Da6iac5uwhHibyElhUoW7IgrWdwgRL663kMKnfZg/0', NULL, NULL, '1394022896', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f1330053', '1', 'oUG4_t7KeRmaFFAru1KcVMKq_7_E', '56a55bee5LqM6Zmi5byg5pmT56OK', '1', '许昌', '河南', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLA6ZIjbu11qWA6FQnY47WoRUTb9TEuAhBjFg0Dia7tpmV4dicFmdiabicjEVr3Q5rFer6bBkwHbSbzCoQ/0', NULL, NULL, '1402366801', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f1330054', '1', 'oUG4_tzbzEwsqF3eoD9MPmP9IGcQ', 'c2NvdHQ=', '1', '海淀', '北京', '中国', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOenuyb8DYgBMRl1hB4uFRjpCP2aMNgF5C7Bby16RMROkK2OrA8qxPABibRgUmsBkjul3YHrb7qTuJMA/0', NULL, NULL, '1409813358', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f1330055', '1', 'oUG4_tySfSUo5wwW-3wV1VCWvQlg', '546W5a6J', '2', '齐齐哈尔', '黑龙江', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKMpB7aB3HTp92Qqt525orj2VWclSBKia0QbOjBcQwOmoI48eY7tjuUCtkbeeKdPiaYbX3iaDAiaviaALw/0', NULL, NULL, '1406998750', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f1330056', '1', 'oUG4_t0dk3iW0o5SqN5C3MpOGpp4', '55Cb5ZOl', '1', '郑州', '河南', '中国', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOelZoRx6kh8ryPsZAbfyicMXB4a6Q1lHFPn6LRLLmIc1I5WibZ3kcA20F295P4hlRMg9GIhXxAkotJsg/0', NULL, NULL, '1407060322', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f1330057', '1', 'oUG4_t5NPTnt09f4vXpkJzY1rZZs', '44CA5b2p6Jm55aa55aa5', '2', '绵阳', '四川', '中国', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5vf4KfAIjXYjK9XQia6YYkTjeDibia1J9aRzYHZJT3VOb0CK9qoha6aibO4AA62CoWrBE4kR3W9daZyg/0', NULL, NULL, '1404892651', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f1330058', '1', 'oUG4_t4vmiICY6gNGSLL30fYobs0', '5Yas5aSp55qE6Zuo', '1', '佳木斯', '黑龙江', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJ44gfTSubiato6ejibBo0GmVdicSoQgh1ZDVUC5dRgvTbHzIEMlOCcIDE7yxtjibuFKQ8c2iaL8aQVXHg/0', NULL, NULL, '1399628998', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f1340059', '1', 'oUG4_t2iZjYjTFGab6w072gIcnP0', '5bCP55m9Xihvbyle', '1', '泰安', '山东', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLB8HARiceYaGZ7gicGuR4CvVURvVT17OCLCF5xuLoQbLrCGDx8klibp1gZFcfoAxG6FjskGqb0VtibtJQ/0', NULL, NULL, '1407981788', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f134005a', '1', 'oUG4_t8MGKfMp1d6oh4j0x6XkTDc', '54Wn5bq3', '2', '温州', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLCiarHAtDsDO56FzEjIhcngUJvAiao7DafKwV9EN9blOtZSF8ibFUC5HDzw7UlSZ2ibvHvyibURleuYt9w/0', NULL, NULL, '1403453349', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f134005b', '1', 'oUG4_twudGilSQM6XWfz2YYIVklk', 'bGFuY3k=', '0', '', '北京', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLC4HAYsoZTw567Tqf8e12h5vv3ssUXYFzr6YoSAXjlU3xCeVg5uy4yfgIWlsnE9NDG8kdPJ1hribhg/0', NULL, NULL, '1401809582', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f134005c', '1', 'oUG4_t_UcKApIyRCxAO6ihbECJBA', '6Z+p5Yas5Yas', '1', '青岛', '山东', '中国', '', NULL, NULL, '1409381534', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f134005d', '1', 'oUG4_t6xQQA3guhL_-j6rhM8Ewv8', '5a65', '0', '', '', '', '', NULL, NULL, '1399106920', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f134005e', '1', 'oUG4_t538f283CXDXcMCAMf7Ak9A', 'KD5fPCk=', '1', '', '', '直布罗陀', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEI4wJBtBQmsNiaYorDy1fTzs1uaWGRhjrCchUCpLicvGa1DBSdhsUMPVtu3jTyBy8rKGp2lfG2q6oSw/0', NULL, NULL, '1401416695', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f134005f', '1', 'oUG4_t-w13afEOV9_prvE4at7PSQ', '5bq35a6B', '1', '三明', '福建', '中国', '', NULL, NULL, '1408868466', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f1460060', '1', 'oUG4_txRfjecQn6nMuhD0WB4zlPo', '572X', '1', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOelzKj1pO4ny4TYeYRVZD4Uicbe1v3ztNOeR2ibG9BDGYBiaDibGazY2ibeZg4GYGagja608EyUfaO8hDBw/0', NULL, NULL, '1394065221', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f1460061', '1', 'oUG4_t87KyZbEcwjNw0KRdeViXsM', '5ZGo546J6I2j', '2', '太原', '山西', '中国', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4SliblHvmRUueCteO8vQnCwRYJ7rNXFpV61JV4CmGek9mrl5sOlvbu38icMsrUvfUlpVbHFg37pRbB5TmUk2jTn5Kj/0', NULL, NULL, '1405436015', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f1460062', '1', 'oUG4_t9_KMWmkwMELv6oVikEUBc8', '5Yu/5b+Y5b+D5a6J', '1', '遵义', '贵州', '中国', 'http://wx.qlogo.cn/mmopen/ZwIE1OEm4BzhYFVmNo3NXhYINTz401ujgJgnLicMticWUngWaepR7dI1AuR12DRgCrziciazariaKheQykicEdAZRFN3IOQ3EV13zT/0', NULL, NULL, '1398263460', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f1460063', '1', 'oUG4_twapzskC1F6zdjlItzqWqY0', 'Qe6MolbmnbHkuqzng60=', '1', '通辽', '内蒙古', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaELvVsvT5HOj2g6z3SWzGiamfHk35pQ6De7Uw97uuoyAfor9z0A4oQTJRpOgYf8l6kDtPBZ1GcYTgyw/0', NULL, NULL, '1407063577', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f1470064', '1', 'oUG4_twoPQdZbS82OrGwhirP0pJU', '55m95aSp5LiN5oeC5aSc55qE6buR', '1', '许昌', '河南', '中国', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM4ONwjwK7zULxXuPywMIFvlvA2bpNmLsEcLLTLsoB0ZtFElLSvn1oAecgkBKS0OayjtKxzaticCPeQ/0', NULL, NULL, '1405227561', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f1470065', '1', 'oUG4_txUfbhstRQoVkmAYNyxZzY0', 'QmliaWc=', '0', '', '', '', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLAxUBVTThvDVcykuWXm4FLnHrVNUsbpzqibda9SaPUq25Y6ESccvdrhh8ulbrj0suD8P1WBjib0M2Jg/0', NULL, NULL, '1400142082', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f1470066', '1', 'oUG4_tzgRT1iRTpndXJIAeJUxS0c', 'Rmxvd2Vy', '2', '奉贤', '上海', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLD3lAsRPPIktXicGOibQ1YHeKf2rdpK8z0QF1RZU4iawcibAShSTyqibVt4ZTNgJrUrC3YnzhstB0iaX7Bw/0', NULL, NULL, '1405766136', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f1470067', '1', 'oUG4_t0ob4u6U7c8tpvG2yPezVP4', '6ZWc6Iqx5rC05pyI', '2', '延边', '吉林', '中国', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4SkHNToVbzaP3CqRSSIXmv081wtk9kM4Dbiba6zickl3mY1P7jCIkSIbV0Nj6qqPCJAZwf7CZ5bF40Jw/0', NULL, NULL, '1406705583', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f1470068', '1', 'oUG4_txUA7jeGcs6SvE_YxMoM8_0', '55m955m9', '2', '海淀', '北京', '中国', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7elnsJrTapAPFXqKMqiaeA809pgqqvqNWwlQuHyrZxrW7SNRZhY6icu3PhETBWpJ1zWyb04bNUibibZw/0', NULL, NULL, '1405524043', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f72f1470069', '1', 'oUG4_t3Qln9LXsIpgKMIdAAGLEUM', '6aOO5b2x', '1', '金华', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/ZwIE1OEm4BzhYFVmNo3NXmDicNBicOhZnqheILRgsK7JqAwRIFg0JibFicmypmjBUQkDWtyZ0P5DdzpYhbhLF9UPmbyFx5a97iapx/0', NULL, NULL, '1408934268', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42e1006a', '1', 'oUG4_t6LNFPtWNCbb-66xLSq91pM', '6Iqx5Y2O', '2', '阜阳', '安徽', '中国', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7VUOqibJviaTyxsZdAZmFeeOZlTXonDPR9ly1XB9QQuxNUnNqTfMqQE1mOfjTyiaOLnAIiaYhkhYzSyQ/0', NULL, NULL, '1403282306', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42e2006b', '1', 'oUG4_t_hq7pdr9_P2543Od3kqvK0', '5pyd6Ze75aSp5LiLemhhbmdoYWlqdW4=', '1', '赤峰', '内蒙古', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEIeibAZdFE89d45m2XccBxoVzLmiaFWgDzvJzibygz7ay4zMwN0vNWpMzOSxP0yzM1pOkW9OY1CqhIicg/0', NULL, NULL, '1408716579', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42e2006c', '1', 'oUG4_txRaUfF7UgkSFCIGleAqlBE', '6IOh6JOJ5riF', '2', '常州', '江苏', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLD2U5ia6iadIqhxgumY92icic0H4abpKyxNDxmFESVkS8sI1LW3B65UicoPGVcR6ksoro2GhxDMswVaiaVA/0', NULL, NULL, '1405476858', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42e2006d', '1', 'oUG4_t0WjutWMLK60bgNWproSuXg', 'TFlOTg==', '2', '朝阳', '北京', '中国', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOen5EbO65a8hBOE8qxclSZYIOkxrRE7nTlPpXlibmicZnR6NvbO7COFpGvK5e6yZ8YNicIpjKoyJ9rZxQ/0', NULL, NULL, '1399183646', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42e2006e', '1', 'oUG4_t38soHCHZ61G_4ZGHCy0lx8', '5pm05aSp5aiD5aiD8J+Sk/CfjLvwn4y08J+MufCfkZfwn5KE', '0', '', '', '', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6aibtnk6HXicvicuPa1fuibCYIqUK8GGQ9GylkTyiaYbWRPdDg25xibCYBpJ7HfrcLnnuX4oPaxhy6CYbw/0', NULL, NULL, '1407714777', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42e3006f', '1', 'oUG4_t24BqojgZjJ3MJjjXPvfeYM', '6ZyN5pel5aic', '2', '通辽', '内蒙古', '中国', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOelDbynyl70nZuX3guibvUebicibO7Wp3Bia53mqC1MA6vvCSyfkKHeiaLYEM1OLVBM5YickWmzXo31Vqs4Q/0', NULL, NULL, '1400280679', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42e30070', '1', 'oUG4_txY8hxsLDrAsMY9JMF9NJLA', 'c3dlZXRib3g=', '2', '', '', '', '', NULL, NULL, '1404636970', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42e30071', '1', 'oUG4_t6GNv7sdpmjxIzOAgUhE-AE', 'TXIuSGFv', '1', '包头', '内蒙古', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaELbvavGe6sLkWhWCGyIk80rLKLO6BUtQzNVt5vnVAibVDALhxHcxRp1vC52HnkcAORxThsiaic8qqDcw/0', NULL, NULL, '1399169387', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42e30072', '1', 'oUG4_tyF7_i89FNv9e9K-cXS-nrI', 'aHVzZWw=', '2', '鄂尔多斯', '内蒙古', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLBNdHM603mPq1Aya1Ja8ZbCRLBFlTO1Wo8oqqJYIVKvojRiapoAPN8CBHW5Qjk1z4gy650tuKq80wA/0', NULL, NULL, '1399789315', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42e30073', '1', 'oUG4_t36JDDpV5SRri5gOnmkiaDk', '5pig6Zuq', '2', '徐州', '江苏', '中国', '', NULL, NULL, '1407090220', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42e30074', '1', 'oUG4_t5Rn_rPn2F3IT_mqJ6FeiOw', '5bCP5a2p', '2', '哈尔滨', '黑龙江', '中国', 'http://wx.qlogo.cn/mmopen/ZwIE1OEm4BzhYFVmNo3NXqxXCBGIHibtbFUBL9MoMTA8J5JYa7YZXwvBDW31iaepiao76W3fghl4sjNia96wkFTI7ZwpsRuVRPEs/0', NULL, NULL, '1395728286', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42e40075', '1', 'oUG4_twvEAA-7wqCfWDdWqeBsQMI', '5a625bqt6L6+5Lq6', '0', '', '上海', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLBuTEEJLllyFCKmwWIGpTAXib5FF0rL5C84ib0pXA0b2ECicmNOa0XFykC8fwHpdZIJCONX6v81Ww31g/0', NULL, NULL, '1408760442', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42e40076', '1', 'oUG4_t7vH7T9ne_aoqWwuuV49ehQ', '6aOT6aOO', '1', '洛阳', '河南', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEI3OkzoW6Nib1yBd4BFENFRVaVRWYZOn2GfTX7pm4b5oAV8I01fNCSgicpec6eP4S4qv6I7IBwVoIhw/0', NULL, NULL, '1403317252', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42e40077', '1', 'oUG4_tzyMsUsKDx9MVUaxTsgAG1Y', '6YeR5Yia6Jek', '1', '临沂', '山东', '中国', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4Sn920GhQJwcZgXibHuHOungt9H4rkqnFWLszicaUnPBtDejXrKic0BsMibnncam2b4bIg5gno5NtCb7tw/0', NULL, NULL, '1397571726', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42e40078', '1', 'oUG4_tzzs77S5aKXJgm8IqkHEAnI', 'SmFja+adjg==', '1', '朝阳', '北京', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLAHjJ3NicnNXq8jHIQIIrTyuC8ACPGedzmxRgRBr3BoKcic4rP6YiaqWgKGYlGC8tGbnluKQ7FZuqPtw/0', NULL, NULL, '1407938775', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42e40079', '1', 'oUG4_t2NQsBlU0sozqdlgrIkMzkk', '55m95byA5rC0', '1', '成都', '四川', '中国', 'http://wx.qlogo.cn/mmopen/rjFpqUibBJ3cSvddSwZvWRSaYa6sRASOmhJpLmFicUrOrM4ic8I1GfYIkorZ89iaGZZGZuiag9kibj5oXBpc23Vsc7zWtfIIPLf1z9/0', NULL, NULL, '1407577289', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42e4007a', '1', 'oUG4_t9E7m1FfyE1dv1nizsXcEf8', '5LmQ5ZOI5ZOI', '1', '', '', '以色列', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5IZvP6Cp2tZ3ib8wO2qWkAbYwZsQaib7TZR3K2eVTxQrQKQsZ5mf2d9ZuxRKqMcOo0sicvGvm1Dib8Cg/0', NULL, NULL, '1407211882', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42e4007b', '1', 'oUG4_t8_BOek1q4x7PBxQ0fD45BE', '546L56aP5Y2O', '1', '莆田', '福建', '中国', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOek1IIQhAV4lFxujYCkHr65nKhuutvSCg3VvibtPRZLYhWxScIHJGiats6l3jvEZwscLvItkyWKQrdnw/0', NULL, NULL, '1407717022', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42e5007c', '1', 'oUG4_t5OMlk879L6HBOo47PUsBH8', '5p6B5aWH6L+5', '1', '江门', '广东', '中国', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOel9gM7f0abWbCMWr7GLqsG5PTHU1aZP0HLzF5RoOrKdMEuZaG5NjQibW0mbKomdKNY8wlYGMMGbhuw/0', NULL, NULL, '1405176292', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42e5007d', '1', 'oUG4_t5v7YtoHbOlXp3G41wi5Zp0', 'ICAgICAg5rWu5aS4ICAgIHwgIHw=', '1', '邯郸', '河北', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLDwgFU8S92u3svxH14PPX4hxpXlaCf6IHeDk73UgBluIyccECfhySer0Lvq5DRwHhyCMbxEW0wySg/0', NULL, NULL, '1408926796', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42e5007e', '1', 'oUG4_t05WzgUMq5_MDhRa43wK2Cw', 'SC5ZLkY=', '2', '吕梁', '山西', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLDicmLGwia0honTPRZpPTyQbvhVXs5952ia4bnz8B3SocRpVzViciaaoBVx23uyONBt8BaTicFgBIjfnuyQ/0', NULL, NULL, '1406196964', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42f4007f', '1', 'oUG4_txirfqa-37GUWxZW5H1YgAs', '5bm05Y2O5YCS5b2xNw==', '1', '南昌', '江西', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKsjfWh4ltDL1Vbs1LetAfprQWR0cxK9hr5aWfq6Q3TwORZX7OdHJKeeNNYjLvwnhJ2M01H3YE7XQ/0', NULL, NULL, '1405959408', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42f40080', '1', 'oUG4_t36mMwebcw-Af-sl9OUaWQc', '57uG5pWw57mB5Y2O6JC95bC955qE5YeE5YeJ44CC4pWu', '2', '琼中', '海南', '中国', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4SliblHvmRUueCoLMr6Qm2icshpW28Qoaj2xLzywTg0Jf3cO9PKqWgUHFGX1AaiaQptoIb5a0OVus0ibpQ5CWn7GjXBW/0', NULL, NULL, '1400088216', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42f40081', '1', 'oUG4_tziyXkU8HhVjU4REqy_SzT0', '5LiA5aaC5b6A5piU', '1', '昆明', '云南', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJZkFG1aKqVHInMwcz7JsCWDNowcM3iaiajC471CJz7ndKzyJQuOXXiccX9sibfCgo5OsSjeSuaC63wQQ/0', NULL, NULL, '1406114735', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000');
INSERT INTO `weixin_gzuserinfo` (`id`, `subscribe`, `openid`, `nickname`, `sex`, `city`, `province`, `country`, `headimgurl`, `bzName`, `groupId`, `subscribe_time`, `addtime`, `accountid`) VALUES
('402889fc483f6b7501483f7a42f40082', '1', 'oUG4_t-eII172ix9IlceHjPc2OC8', '6I6r5oSB', '2', '河源', '广东', '中国', '', NULL, NULL, '1400569645', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42f50083', '1', 'oUG4_t7Yyf28r7acewZ-cYtE8TeY', '6I2J6Iq95YS/', '2', '新乡', '河南', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKeCJRF7SMr7ZJttnkdyE3EL6GZrV0w88CGHPkWicusa7jkOS1TLtfTS8ZBETRicRNoOJXPE1CzicG9g/0', NULL, NULL, '1399360486', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42f50084', '1', 'oUG4_t7ulTljF0tziigFJbhv9bLA', '5p6r5Y+26aOY', '1', '海东', '青海', '中国', 'http://wx.qlogo.cn/mmopen/oghTTPicQ9EPJlBiaX3ddObCIBmJnSLpQ7LYMK9s3DNa12AnHjdTPwx07eSRkouhBFP293u4MibVXfJKktfVGg0RDJhVKwY3EFia/0', NULL, NULL, '1409213809', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42f50085', '1', 'oUG4_t5Ncq65ugdhPdEewr60XkM8', '576K', '1', '宿迁', '江苏', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLBxgCNibFWgvgaONB2Y3sibYK7SxTdtSdBJen1cdcGiarnWomq1XkibhSRaNErmeMn1R0yuWX2iaS5FVAw/0', NULL, NULL, '1409123999', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42f50086', '1', 'oUG4_tx1veVFPrbeuRl3BBNsdvJQ', '5aSp5L2R56uL54WM', '1', '通州', '北京', '中国', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6XLRmNuCricfBSxuJib87Gfq97nsMSmicqApLrmDBHOUeeJQhUArqoia273SZicYmgQY1fXjCy047j7yw/0', NULL, NULL, '1404145336', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42f50087', '1', 'oUG4_tydDvZHDZRuLAAmXsCh0hXc', '5ram54mp5peg5aOw', '2', '朝阳', '北京', '中国', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4SkEpEWUNcet3biahulthHgCFc7LOvx4ZLo4F6Vicq3Bf3C64aicPIlJspFhaxKGnxHT3dibYvP8eHnx8g/0', NULL, NULL, '1394770379', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42f50088', '1', 'oUG4_t6kLKZzwU1SaucKhIn4ITXI', 'RWFybA==', '1', '湛江', '广东', '中国', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM48AsOjHiaUzImDq8ntyBTjUNPIpb5gSWRfJZfrpxjBhLEHo09Xq0lgnQlLZOLRaMQlW1N31tamVy9lp7XicfvRGhPNaStia5Ffq8/0', NULL, NULL, '1407053765', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42f60089', '1', 'oUG4_t0bU0yXosUo6ZQnjUMyWejc', '5aaZ5pu+', '2', '德阳', '四川', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLCAGkl3ibybWbpIESoH4qM1tRT2ibOPBvE1470iatYVKibVRnz4dhjUG4WSryoqgVibiccbQ0zUJleroOTQ/0', NULL, NULL, '1398132498', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42f6008a', '1', 'oUG4_tyA4OcHs1c1mhDi8j6O5DD8', '5aO5', '2', '惠州', '广东', '中国', 'http://wx.qlogo.cn/mmopen/rjFpqUibBJ3cSvddSwZvWRXa0UH3CQCb3MPrGuRzPLlhibZPQ2I3tIxH9tUGLPulQkDSs5r5xj3oN0p3ZscPwbUml3KF12jwQw/0', NULL, NULL, '1407408416', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42f6008b', '1', 'oUG4_twCKOX0W7go1LOiTmG-_l0g', '6ZGr6L6w', '1', '金华', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM75LtAsDcYA407lDhSAiavVkeiaP4icoVq2ZENc5YmnK6jHv0iajdhXpicpXW3C9HlqrrxTt4aeictcPwMQ/0', NULL, NULL, '1401630199', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42f6008c', '1', 'oUG4_t9387u4Oidyrb6J6YYGNT8g', '5bCP6LSd', '2', '郑州', '河南', '中国', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOemAwsvWMukj0DmcxKKUIqxzUYl6Nz9oSroOIKSAaVzbkwdbniaia9EIpZ6SD2jfLOHVibSg1ibGvtw8jw/0', NULL, NULL, '1406098709', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42f6008d', '1', 'oUG4_t7WPUcehS_WTBLCwzV-Stgo', '5LqR5reh6aOO6L27', '2', '德州', '山东', '中国', 'http://wx.qlogo.cn/mmopen/rjFpqUibBJ3cSvddSwZvWRUn66d2fBvXspkcjItriap1T3nrAtXfXw2EhVyTz3XwURYWAmBXZsh0Cnibyic6UvXWfEelFIsZRpG3/0', NULL, NULL, '1408659830', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42f6008e', '1', 'oUG4_twHJWOPVR_0KP0dgDeXp4dA', 'U0kgTEFORyBRVSBaSEVO', '2', '', '巴黎', '法国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEIX0o9Uh3aVDibHpGnDlYyYoXdF35CdtnibgADMG2lhWze7zCbUG47c7C4bIib1HciadIM6tP1cn9XLaQ/0', NULL, NULL, '1407253028', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42f7008f', '1', 'oUG4_t-znzaBhu_uVttHapHccRGg', '6b6Z54mZ', '1', '赣州', '江西', '中国', 'http://wx.qlogo.cn/mmopen/rjFpqUibBJ3cSvddSwZvWRZyevvJic7ibY1qxCiaC4q0XbMN5EibFmKhOST654V5w4W5iaT18LD5UwHq81MkRXjpAVXiciaedeVtPEaY/0', NULL, NULL, '1395367257', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42f70090', '1', 'oUG4_t1_-WCkItiyTP3DEjOrxESk', '55+b55u+6KeE5b6L', '0', '', '', '', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7kUxlo4VQHr7AXr2G4TPBj9Lv9DzDmOicHwW7OIf60A9UGjicAgsjUVDoQoVazmRNASibKnb6iaOiaGtg/0', NULL, NULL, '1400340103', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42f70091', '1', 'oUG4_twcGUalWsmG3p-UA404Wfzg', '5b6X5LmQ5YS/', '2', '西青', '天津', '中国', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM530tFfTsruyFYYdfRMZ5QxRtDjshPrTQpfZYPEibQfm1twicUvBhdtJKrDPs0wlcmrDjpibudPtBhhg/0', NULL, NULL, '1401407518', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a42f70092', '1', 'oUG4_t481bTKJX9kpO8nEnKvSIEQ', '5b6Q5bCP5YCp', '0', '', '', '', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaELN0B5XQhQ5wWkeSeW8aRfwwfnxIwDCNnibeZSqhCUJ5rSd5pibGRXkibZJ7j6MMibZd75I61g5RkticPQ/0', NULL, NULL, '1408343990', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a43050093', '1', 'oUG4_t_VXU3TD8vNbg-BAXP1O3bY', '5bqe5YKy5Yay', '1', '吕梁', '山西', '中国', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6QoMlTN8AQUw2yuRM3nlq5URZOTQbkD5LiawJicScB4RFosZSnuAjk2ib1dpw7AicIzeRY1DibdlAnSxw/0', NULL, NULL, '1407673324', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a43050094', '1', 'oUG4_t0a7ntoMOsfw5KLE2TuFKFc', '5bGx6Ze05riF5rOJ', '1', '潍坊', '山东', '中国', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM56JHGGia8pEPYUP1IX8GO8AKon48T5qIPF8Aq5Jj4KTAZibGnBRWicQqSakjdkslJjp2Vtg1FdYEcpg/0', NULL, NULL, '1407033949', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a43050095', '1', 'oUG4_t9DJFsOJs2PJ3hFiKv_ipEo', '5rWq6L+5', '1', '', '大埔区', '中国香港', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLCp6QeTpNbqqJtiaL7ArkxOFH2KicQJYuUjicz7WQKsBk3WEMJZMZIapvNWYubRiaRUDZ88Mjibic0Pc0hWURMqrfkzygytjL7yy4iauY/0', NULL, NULL, '1401963402', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a43050096', '1', 'oUG4_txWATPcL7PuZymrogfw0N4c', '5bed5YyX5Yy75Lq6', '1', '柳州', '广西', '中国', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOekhz6HRngJ8rUibA8qial7JCtI7nrbSkgJFff3IDP9dJFibQJbxmibzaVjXVBdmccAPouHFS3AR6J5RzQ/0', NULL, NULL, '1394779083', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a43050097', '1', 'oUG4_t5LOZzHp3bHXWnxrrgXzIh0', '5bCP6JGj', '1', '', '', '智利', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKGqdIYgJMczKZW4DLo54vPr2bYhVkwVKrmFBUCNGHZZCTNwJWcahyVicS6UnZ8rrTdCj4Q3115A5g/0', NULL, NULL, '1401182651', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a43060098', '1', 'oUG4_ty5IDSTgxdOTRKzAQ_ig3oU', '5YK75Lir5aS0', '2', '葫芦岛', '辽宁', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEIXNtVBVz4Hk0LsNDdXpXwuDnatqfkhfDgYy3pYKutLkZS9NmLKTYUEp7R9ZlOgBEIHlS0srTjxcw/0', NULL, NULL, '1405848927', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a43060099', '1', 'oUG4_t1cvGzKJFRT1064ok3PuzmI', '55Sw5oGp6I+g', '1', '中山', '广东', '中国', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5OYEUDxbOZXGJtodicmgmTBapeUxco4l8J0VLzoDIqDDpNcorw2qqBicaGx18Ex0j13p3PBrNdqUJA/0', NULL, NULL, '1399638656', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a4306009a', '1', 'oUG4_tzXGSJlTCa-NWsmQXUU3NxQ', 'VmlyLg==', '0', '', '', '', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLBde83KZfgibIckibeWyHh2dLIL16yEvc5HacrQ2h1Sps3Rib5LKMUdRS0rMa245jsYLVeqYEGHVWLiag/0', NULL, NULL, '1407403000', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a4306009b', '1', 'oUG4_tykU2eS2pufscuZkZZTmcHE', '6ZmG55u4', '1', '', '', '以色列', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOekxsKSlDmpphQNVUtsEvGN8gvgYSduzBZVLZDI6PLJkQz6RzSAj0EzamxFg6uxg1xj0UibpPoSBia6g/0', NULL, NULL, '1408354667', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f7a4306009c', '1', 'oUG4_t7dc1YxTo5XuvkAAMVsmurg', '5p2l6Ieq5pyI5Lqu55qE5oiR', '2', '乌鲁木齐', '新疆', '中国', 'http://wx.qlogo.cn/mmopen/ZwIE1OEm4BzhYFVmNo3NXryibRow3ibReVmWVRUQfEUiaSY6XyocSOic2hLDw5f945HtEiciakBIxdib79YD7JxZoku1r3ZJoTpiczXW/0', NULL, NULL, '1405695267', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c105009e', '1', 'oUG4_t9to2Gp-nC6dQy2JIfEklUM', 'TCDugKIgeHVl', '1', '滨海新区', '天津', '中国', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM72wfbsAr4AlAh67RiaVM4vKjwL1WH1CyBcsQNwuibtN4Q2aLdxD5pCgdWyxmfYiceuUr3LxMjDDrqew/0', NULL, NULL, '1405321119', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c106009f', '1', 'oUG4_t3BE0JXwhUktknOGQB5hwEg', '5piO', '1', '肇庆', '广东', '中国', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4Sk4pZhAWbLgaZo5rmkkZ6joUeJD5jhjURSOGkY7V7mMAXEA4heR1JV89JABcKl2NAEIYiatVXibNlFA/0', NULL, NULL, '1400420905', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c10600a0', '1', 'oUG4_t9qALseZDklzBprzFt3SeEM', '5bCP6I2J', '2', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/rjFpqUibBJ3cSvddSwZvWRTMffqibCgxQWFpKh99w6wcto3RVudFL9vAclryjm1OFaX6dAOlcQxGpyIicok4b2EuSZxYLicWegw9/0', NULL, NULL, '1403449928', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c10600a1', '1', 'oUG4_t_az0lDh2cGaQ3d3CPwUQ-8', '6JOd54aZ6Iy5', '2', '武汉', '湖北', '中国', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4SliblHvmRUueCvXvOtmdGn7hf3sicsYMbCDrfYaDqS8jYJaPfl3gTT14JeTN9qR9RfKmRlsymvw4wHS1UFfHduydV/0', NULL, NULL, '1407976964', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c10600a2', '1', 'oUG4_t8-ypVNoHwT9S9dPVgbgRWc', '6Iqx6JW+', '1', '郑州', '河南', '中国', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOemHsGKbdD6dodyRoxy5SaIfrL7dyM2JicT3Ds9PJHwa1rLmfpWNvx9nMy4qPBV1xe1961rZgU5GgaA/0', NULL, NULL, '1403684714', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c10600a3', '1', 'oUG4_t68dPKFcfs1KU2bFaanLb9I', '6Zi/5rqQ', '1', '宝山', '上海', '中国', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4SksF80UqPzNmLHVLOIXYtiaTXsG6SRpWibXz6eibDEDabkaKrLwng9wVg7LKLGBSsPLFSkDG1YRMfsFw/0', NULL, NULL, '1409311806', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c10700a4', '1', 'oUG4_t88T7y4TAckWFCt9YyqqmDw', '6Iqs6Iqz5aeQ5aa56IqxY2dm', '2', '曲靖', '云南', '中国', 'http://wx.qlogo.cn/mmopen/ZwIE1OEm4BzhYFVmNo3NXtOo7Xs0qd0ibESEicju0r7YkSYltLQrAq0JApmTDZoyS7b2D4khFFibGMbt9QGiaHkUBnW4vK8dTRWw/0', NULL, NULL, '1409047476', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c10700a5', '1', 'oUG4_ty3cKqPAmXK1DVl1vAPd6_M', '6JCn', '2', '石家庄', '河北', '中国', 'http://wx.qlogo.cn/mmopen/ZwIE1OEm4BzhYFVmNo3NXmYO8ibic1V40ZYMzQ0cm2pruEZ4LjdJvxKRoIu6Swbc08iciciceRQrRswsq1Zp0nX7EJrRgS2HXMZrx/0', NULL, NULL, '1406970206', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c10700a6', '1', 'oUG4_t8oIEt7XBHADcD10PhAdCNA', '6buE5bel', '1', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEIwPibIFnJGGiczseQhlIGribVh2xgId814WmniaA6UicqgWl3mpF8oUpALicxG7f6awfFibhWer0o6mThVw/0', NULL, NULL, '1406862522', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c10700a7', '1', 'oUG4_t_XZLJg8NAKLt2cjf62xz9s', '6Imz', '2', '', '', '斯威士兰', 'http://wx.qlogo.cn/mmopen/rjFpqUibBJ3cITNOPxZ4e4iaK7nibv8Bm2NQT1ooTAhOVlzj61FCeVpkrMibaEcz3J1sbTgurcJM2V24XFz8qlG60g/0', NULL, NULL, '1408413379', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c10700a8', '1', 'oUG4_t9wWEs0OX-u61AkBumHSwiE', 'SXJpbmE=', '2', '', '天津', '中国', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOeleiaWPRtBdImnqtmTbVBUcwnHhNlo5Xzx6apCbiaoMIHuu3Zg4vu5bmmsIphelRNMCGCMibtC2WNCeQ/0', NULL, NULL, '1401631233', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c10800a9', '1', 'oUG4_t27LyzqsH41eB3t0Yvvodp0', '6L+95qKm', '0', '', '', '', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLCp6QeTpNbqqJtiaL7ArkxOFEQNu7HvQzdHMZZsEtdfVF0VLFJ8G9ricUUePzd2XPFIvcejMA4u3ykicEStY65cTLlWUKBzy0y1p0/0', NULL, NULL, '1402930644', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c10800aa', '1', 'oUG4_t4ijqHTe8Z01fe8QLsPkK0c', '6Jaw6KGj6I2J', '2', '莆田', '福建', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaELibGDBF2DmH4pwqnpMTHHRdZ1ZAics02Qd1xbVrib8VwaBlEiaRAZsoZVG8BnKtOiaOP5EaxkS0fSpB4g/0', NULL, NULL, '1402009775', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c10800ab', '1', 'oUG4_t_7aBUCnrL1rszGujBkJwE0', '5p2O6ZKw', '2', '太原', '山西', '中国', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4SnPiaOs86kC1xCTQP9uc5q5SIxf9tpULdh31HTyibtxSH38gMr47mVROz4MoZkuxYoibCdcxhZUeuNsA/0', NULL, NULL, '1402117548', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c10800ac', '1', 'oUG4_t9DWHTrWyU06C3-aRFQGXPs', '5LiJ', '1', '临汾', '山西', '中国', 'http://wx.qlogo.cn/mmopen/oghTTPicQ9EPJlBiaX3ddObAOccfOibAuc3bBZ1eNjeY71wRD17B3l9rBCFttefKJQaLaYZqQbtt0NRXmgDQibAEHltYxdgmNAyM/0', NULL, NULL, '1402139518', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c10800ad', '1', 'oUG4_t1HMS4BktF3x63nzNQfccS0', '6Z2S56u5', '1', '', '', '关岛', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM4pvQsw3qxoSs6CA0zib2DVqeTrcxtZrnfribrwMFIyquiciaoX2skjVIftAkeD2iaAUavTaMG2tWVHXqA/0', NULL, NULL, '1399806311', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c10800ae', '1', 'oUG4_t6hg3R54FDcTWbxeVEgp6Dg', 'bWFu', '1', '', '东区', '中国香港', 'http://wx.qlogo.cn/mmopen/rjFpqUibBJ3cSvddSwZvWRRCdzxoYI0FgoaOkdddR9OiaScPxk85DgcFZZ7Hl2AQL8ha9f5icI2kicIe41IbzOtj5lUOz3ZRCYJL/0', NULL, NULL, '1399726099', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c10800af', '1', 'oUG4_t9rG0GChyW_qiJ-muoRoyeA', '6YeO6I2J', '1', '天水', '甘肃', '中国', '', NULL, NULL, '1408787186', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c10900b0', '1', 'oUG4_t-DbzBQ-UegKST-jNaGEYJw', '5Yy75L+u5ZOl5ZOl', '1', '长沙', '湖南', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEIHn3IyYTdRLQzqZjX0XH1RDcNicDTWvqPbwGW4kqicySv5cf4icxLVicJfqia120NJO4NIVSGnpXTFVww/0', NULL, NULL, '1403257201', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c10900b1', '1', 'oUG4_t4Z4KILiDqjqmcQdVttaqjI', '56qm5paH5b+g', '1', '', '', '', 'http://wx.qlogo.cn/mmopen/rjFpqUibBJ3cSvddSwZvWRZJtdSWicmucw3Z2CPtnE0ETVq9j0PEzFJ4K86peolIuKBIMAibY0w4SU15U4FwdaCG7ZtZ2xlKDpo/0', NULL, NULL, '1408513430', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c10900b2', '1', 'oUG4_tyO9xrL5jVQljjdFcXmLy5c', '6aqk6Zuo', '2', '阜阳', '安徽', '中国', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4SliblHvmRUueClTiaVdr20icriaibcHnNLZALMkKT7EO5sxz7DyJJOm8WE8uxtn9YrYKEpHIWToNlaO1IAfBlPJuTicO1/0', NULL, NULL, '1407899458', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c12a00b3', '1', 'oUG4_tw7vF76OhAoY9QlgQNcXKoA', '6JSh5Yab', '0', '', '', '', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM48AsOjHiaUzImDq8ntyBTjUqW0Px4lyezLKwC1IiaYcdWmjuc2nAeAFsFkBN901wQticMEkWXawPzhGDv5tW2PPtYl54rtaBjOdw/0', NULL, NULL, '1401229669', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c12b00b4', '1', 'oUG4_t5nyMeSYDOX17mqc9Cg2BoQ', '5Yav5Li9', '2', '阳泉', '山西', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEK2X1CMOX59Oed9ZSRjLEqrsn5YicobPu9fCDogaTgrgpYfAiczy0pXIEYGMPCkHfuynrvewxll6nqg/0', NULL, NULL, '1400861929', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c12b00b5', '1', 'oUG4_t3KEIPNVj6j1_fU3cHVF9nw', '5aW95aWH5a6z5q276aqa5bm0', '1', '黄浦', '上海', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLBJ5phuD4x16ACuMYOgAJOBUkkq6eH3BQkLp87EePGXRFW7zFCIqQWNpfk1TkjHJQoKlMS6WyXSGw/0', NULL, NULL, '1399978852', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c12b00b6', '1', 'oUG4_tyi6j1cAYsKFFAedTloLg-M', '5ZC05Yy755Sf', '2', '东莞', '广东', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaELFGsLZQqrqQd6UuAWDBqBS4AkicGq6hp3MheDnt4GFEI3IPiaeaUibkS2GMSKVjqbyQ3yPzfd9urTNA/0', NULL, NULL, '1394280101', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c12b00b7', '1', 'oUG4_t7cVuCp_Zbvk1ybybwqJ6is', '6auY5YW0', '2', '奉贤', '上海', '中国', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6xfRVdyPCnt1KUMBwM7iarpK38pNwprNf6gBRrayjT8IBokAttkVMiaA07VO67A5mlMmoHGqBoZ8BA/0', NULL, NULL, '1399256301', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c12c00b8', '1', 'oUG4_t7pZhVM3yAstlJGlXB7TMuM', '57uT5bCP', '0', '', '', '', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4SliblHvmRUueCkgLDEz4O6ibJ8Xib2SaRSj9vbkoQHP4KS4sVB2ia4CMbqBIjljMl7MoIHHHicIyKx2dSH27uXt3ByqU/0', NULL, NULL, '1406169684', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c12c00b9', '1', 'oUG4_tySLEHARZ2vBVQIiCNFlzo4', '5bCP5Lqm5LmQ', '0', '', '', '', 'http://wx.qlogo.cn/mmopen/rjFpqUibBJ3cSvddSwZvWRUibosGl0BlrVGZom3ZI4P08jliaJCCicuLcma9lJp70sZXicLeg8cN1PVgeOibEsun4qCFQ8mlSV2SbU/0', NULL, NULL, '1406689786', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c12c00ba', '1', 'oUG4_t5OZeEx4eK4fJ9SjXHCwK3Q', '5aWH', '1', '', '阿伯茨福', '加拿大', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEIibFbeM3h0DreI3PQlict1UKYicBnRS7e4RMbnJ0T3bkPJEUSf84d8QIRPrSdycIT41ota41h8q1NCg/0', NULL, NULL, '1400355772', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c12c00bb', '1', 'oUG4_t-wblhwQL8ooHxo6g5M5vso', '6Zuo5Lq6', '1', '济南', '山东', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLAjf7Sic5RjNvH7pHLj6B9nzBgCX66VuKye4vSedI8QgRt09icm6MuicGfdkV91y8j1CGeiawF2aXK3ag/0', NULL, NULL, '1400759670', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c12c00bc', '1', 'oUG4_t11fCcND0QwAPUthVoqS07M', '5Li955C0', '1', '兰州市', '甘肃', '中国', 'http://wx.qlogo.cn/mmopen/ZwIE1OEm4BzhYFVmNo3NXjyYPnxEP4V8hb43Dk0NWrzkA9lUPEKJnXBSXh58X2UTSiadsvwhibGl9NicS0ETDdW0gynKAzdQjt3/0', NULL, NULL, '1405862831', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c12d00bd', '1', 'oUG4_t1zXTRX8DbiHIYpNl2YdEww', '5YiY5pmT6Imz', '0', '', '北京', '中国', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5sib4ZNibxbo7oicOn5XQZQgf69TGFQyibXJ2JyKK8UQUEzeNQOOicJic9XIDshvedDQxYuBg4KxuL3ic9g/0', NULL, NULL, '1399697123', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c12d00be', '1', 'oUG4_t-wC6RL1oKk6JVs0AJkrnCM', '5bCP6bG8', '0', '', '重庆', '中国', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOenl1mj1rLiaWq4Jib06GfMhVTlVdRgMRUicInPF1L4o542qT1ghahAAmwxvpWAHCX8Hq3Jon77zXvarg/0', NULL, NULL, '1407818303', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c12d00bf', '1', 'oUG4_tyH2wQ9SMvHvhWcL1Ge1MV0', '5reh54S2', '2', '杭州', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLBR3nic5BAzPacibTCcPWwa4OJ5R9MKSdPXuWCobcIjs7HOfBkQ8V461a72TuPE6NnHycZX8afQjAkg/0', NULL, NULL, '1405037872', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c12d00c0', '1', 'oUG4_tyz-YgSeUxQZJRJXw06KnHo', '5a6L5bCP5p6X', '2', '长宁', '上海', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEIgicVJd6VyntUFACaUXQNR82pCEibKLCpyuj1LBtW02Bz1dV8qkBlTwvic49Eo0VhfC5Blku3jjEEdw/0', NULL, NULL, '1401521051', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c12d00c1', '1', 'oUG4_t3ZOKIAH0w_iGu9RXKCN4t0', '54yr5ZKq5Y2h5Zyo6Iet6LGG6IWQ6YeM', '2', '广州', '广东', '中国', 'http://wx.qlogo.cn/mmopen/ZwIE1OEm4BzhYFVmNo3NXnWonTsiaP817ibfbdcyZ5x3mvAxIB79rluwGvYogkjN0iazmcDheeB9Yw8KaITu8agiaOUmc3ecmfvN/0', NULL, NULL, '1406007331', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c12d00c2', '1', 'oUG4_t6vgdUWweCVEooo0hR8SU40', '546L5Y2O', '1', '石家庄', '河北', '中国', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4SkRx8eNBBwTLbicicE8a2qHhCGt9rvGNfrxGD179YHJWfV0PoIiaFQhu5szI8EnU54uIHia4ZLiaOF86nA/0', NULL, NULL, '1394080853', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c12d00c3', '1', 'oUG4_t_zQUG76v6lizdkZqIym6vs', '5pa56Imz', '2', '宜昌', '湖北', '中国', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM4g7YBIGG8icXGMNZ03tMz3leoAvP70VeExHT65ic2CohcyPqL2m9Bawia2yB3FINTicvfmRzHiczjwAyg/0', NULL, NULL, '1403332854', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c12e00c4', '1', 'oUG4_t0GIv9RqA6GoVNelwNtyvow', '6LGG57KS', '2', '赤峰', '内蒙古', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLASC8RluSSibTsibKfd4kMQdmOKxeK8wjj2LAtmaaf3sHicOXttAibM2L6SGTqPDYYvUOEv0TWRX4lH9A/0', NULL, NULL, '1408440540', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c12e00c5', '1', 'oUG4_t2AYKqi-LsW_QklVcc-kbqw', '5pil5aSp', '2', '忻州', '山西', '中国', 'http://wx.qlogo.cn/mmopen/ZwIE1OEm4BzhYFVmNo3NXkahpeLxj8Waeictak3j0SQlUicUXc1ETKZALst1kZbiaZ8KJbD894TDKLeLj3GwpSTNb2Fg487buGN/0', NULL, NULL, '1405739541', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c12e00c6', '1', 'oUG4_t-DMMXaBJQa8_IB-Q3OTgQQ', '5qKFTWVp', '0', '', '', '', 'http://wx.qlogo.cn/mmopen/rjFpqUibBJ3cSvddSwZvWRXYCX4VEshicjibqjktM5xZoQKJmMaofAHPHBmkSsbzPw739icekcu3k9vBgCHXrzhZo7RvUotD8eGic/0', NULL, NULL, '1400030790', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c13b00c7', '1', 'oUG4_t1jWvW0kxey7m4WEgr076lI', '6ZmI6KW/5YWo', '1', '濮阳', '河南', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLAq0Ncibj8Sg9q21ctVZVUfwv5saRZk07mKibicttA8Nic214m9WIGBD70dMHpzAlKvJFBhPeNc5s39SQ/0', NULL, NULL, '1402096760', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c13b00c8', '1', 'oUG4_tzQRzCLhmB10QGi_ip1ZpTk', '6Jme6I2j5piM', '1', '黄石', '湖北', '中国', 'http://wx.qlogo.cn/mmopen/ZwIE1OEm4BzhYFVmNo3NXsG7ZqdGoqjUoqqQclfkfNRBm8tJmzHian8ACUrP5elojrKXiaib6yMCpjOW3huCeHkNC38gLhF9aL0/0', NULL, NULL, '1405510829', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c13b00c9', '1', 'oUG4_t4gIiUpWR0juc5z4Z1RgHWc', '56uL', '2', '呼伦贝尔', '内蒙古', '中国', 'http://wx.qlogo.cn/mmopen/ZwIE1OEm4BzhYFVmNo3NXjiaCmk6PwtI66vwibBHia7HTRMofz5vO3LPNZcatfhRtGAMMiaskWV0GMPAv7R5YNhWiau8McA0Ycq7x/0', NULL, NULL, '1407333486', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c13b00ca', '1', 'oUG4_t1TcAFqOAgOu6jbyzwYfNKE', '5p+x5a2Q', '1', '赣州', '江西', '中国', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5qzl6bicSVXFN3OvuicqvUXESTSkR5QvhfoZd6vialy29Ug1L6xVKLMyk2ia0rHtB15q7oicpDTiaZyCsQ/0', NULL, NULL, '1401887321', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c13b00cb', '1', 'oUG4_t-IOKNRvZ-NnFINpk7baTus', '5pif5pif', '0', '', '', '', 'http://wx.qlogo.cn/mmopen/rjFpqUibBJ3cSvddSwZvWRWJ79WwoS2HOFGBichzBnOrrcptdljk8w221X7Yceg3pnH8nIjvnUqkB72BbT8DpLejdqlKQ6zbzg/0', NULL, NULL, '1407678349', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c13c00cc', '1', 'oUG4_t0g4cEyGBh4BXaZUJtkjPQI', '5a2m6YGT5Y6a6buR', '1', '崇左', '广西', '中国', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOembufNUggUpLiaVa2L9jBntCsz80MFnFrJ47iaSVn8L64Prcq4XL4wUkoA7OFmy3p2fEibyv9hgzntOQ/0', NULL, NULL, '1398176526', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c13c00cd', '1', 'oUG4_t7b7GMXauhy-LkRJ0R5rqhI', 'cHVycGxlcmFpbg==', '0', '', '', '', '', NULL, NULL, '1404827187', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c13c00ce', '1', 'oUG4_t-fNNew75thJ-srdHOKSuAA', 'TG9Jcw==', '2', '', '湖北', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJxv2vaHZm93eVBdtFdjzobMwXI3z53icbTEh7ib9HyoTw8tqDAFMlTSQ1ajMjSRpFEjIYlO6esVPtQ/0', NULL, NULL, '1409611892', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c13c00cf', '1', 'oUG4_twQzc_7yS-SUoG0EU9YMCRc', 'ICBsYWNlIOi+ueeahOiKseWEvw==', '2', '海淀', '北京', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLCibZHtEdic19zCeDiapGNo603vY8Q5x8wmS06WoFEHicwEYQ4A4SgJ9ib63IQsEEaYyb7BKjohaibq6EIQ/0', NULL, NULL, '1394329322', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f81c13c00d0', '1', 'oUG4_t8JODDuYYaEusr8ql4ehv2Y', 'cXE=', '2', '', '', '智利', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4SnMC0GEJyoM2xvFdUd3rSvCEaybnCicFbTuQNibhTnowRKxNS8g0BKnozn1xZ1DziaDiaQ7ct5AtRlH2A/0', NULL, NULL, '1405264450', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f63100d2', '1', 'oUG4_twqGYPSJPDefSX9cq-qf1-o', '5ZCV5YuH', '1', '东城', '北京', '中国', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4SmbxUEXC9y5cc7JCHtQomRETh98iaVz7ud2VlZCicLIwQiahT82T6PIUNCiacXnCwa65e5F3ycI8ZxDkw/0', NULL, NULL, '1404271912', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f63300d3', '1', 'oUG4_t-cfNH3W3_oO_ymIdZqa0lQ', '6JOd5aSp', '1', '洛阳', '河南', '中国', 'http://wx.qlogo.cn/mmopen/rjFpqUibBJ3cSvddSwZvWRdcDs2GSSPJJPrPjLna0TNLMkkkTFzQlGQicIMqGYRzBIW25QvMfdWCfp5Tw81esUYwvUfY5GU6Nz/0', NULL, NULL, '1405347864', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f63300d4', '1', 'oUG4_txsP9o-zJNHRL_tWKD27GBA', '5pel5pyI5pyJ5YWJ', '1', '晋中', '山西', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLB0MhyMBdKiaQ4jZ0xmV8upgHJia5RAvjicA0icQdqicWUWbWQcJwBw2eDLODQrvesLxxn1CPowwKUsu8A/0', NULL, NULL, '1409488160', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f63300d5', '1', 'oUG4_twy2353j9LUsp4f_U9goR7k', '57ub5L6d', '2', '', '', '直布罗陀', 'http://wx.qlogo.cn/mmopen/ZwIE1OEm4BzhYFVmNo3NXj374coFlvA0YiaQuO3oJQULqwj80fVW88iaOWLaHXatFtwgQiawsZ5CNFap2FNuNrc73FBia7cV3kA1/0', NULL, NULL, '1408069153', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f63300d6', '1', 'oUG4_t9_5hbReu9oqAsCLmTQKnac', '5qKB5aqb', '2', '玉林', '广西', '中国', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM48AsOjHiaUzImDq8ntyBTjU0DWtXd14ibquzkTSUltHTrF7Y7IyF1feicZ1myyMyvd2RXm8jp1dkE1FtacsN1tCbuAxejaphr1QE/0', NULL, NULL, '1394807324', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f63400d7', '1', 'oUG4_t1Z5hBaQLBoKZ-ABGa5CDgc', '5qWa5Yip5ZCb', '2', '长沙', '湖南', '中国', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5YNYs7fWzyYG9n0Z3CUEZWlfmggFRMibQu3cUGicR4SVGovic6pUyicOkTZIspw3dF1JpuTTY9zwr2pg/0', NULL, NULL, '1406179356', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f63400d8', '1', 'oUG4_t33waL4aNIVvsS47105jPxs', '6ZmI6KOV5Z2k', '2', '茂名', '广东', '中国', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOekJib9oNSDQLNTuoSCRoGBVII4CuxgdZbibUFe2pyy0HaqHbCrGpCPLhrDoXXXKYSiawaCRczzJqwQIw/0', NULL, NULL, '1403757337', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f63400d9', '1', 'oUG4_t2GSrVssQ5lqBxOrPdP7Kz4', '5YGl6L+Q5aSn5L6g', '1', '', '瓦朗斯', '法国', '', NULL, NULL, '1399458311', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f63400da', '1', 'oUG4_tyCb-My2mBYyR7FZS-eivvY', '5pqW54S25pum', '2', '黄冈', '湖北', '中国', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM4wBs2hCIAibuUNGGYIffW0vocS88ng2Rgt4ZgAosF38YgcwmcpDwwAE6QrkFic8c6q7KQOG6YW325w/0', NULL, NULL, '1408770139', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f63400db', '1', 'oUG4_t20xMb40k-o8deBw3SYwgTY', '5q2m5bKz', '1', '菏泽', '山东', '中国', '', NULL, NULL, '1398896121', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f63400dc', '1', 'oUG4_t1VS-e6eko-HBQMI_tbYtY8', '5aeR5aeR', '0', '', '', '', 'http://wx.qlogo.cn/mmopen/oghTTPicQ9EPJlBiaX3ddObJg0wZmGTENpQYpicZABnoMvC8SHR3FBwPDG1AxjLVEko7EWuIib3NblkicicXWkf4accOibFZO5WCSria/0', NULL, NULL, '1398492704', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f63400dd', '1', 'oUG4_tykC7WiESbLkOSIyhSMafeY', '55WZICAgIOmmmQ==', '1', '青浦', '上海', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJvNUib9UpRqQ7Cic6QfYW78nFqiabicWQ6X2cg9LwlhhVHUrU4ibIYwC3cAzEPOOrObXS7RrKu0ugok3g/0', NULL, NULL, '1395799309', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f63500de', '1', 'oUG4_t0emCVOjQ6naE1UfATRNwbo', '56aP5Lu9', '1', '承德', '河北', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLDAe0AVP8Gw2g3RfTibR3kxGd9ZZicH8ZTfurAm9gwnDzzoqrrv8qJibKWme80icicTaDggfxMqVueq6Vw/0', NULL, NULL, '1396362652', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f63500df', '1', 'oUG4_txyq6jmOW4r1PKsOQzXRRZA', '56u55p6XKuWPtuWtkA==', '2', '福州', '福建', '中国', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOeltbXOLcBs4oWvXYmicdV21e8rxf7MiaAeEQ73S7yXCAIkTsO2FiaoJ8vg3p0Q6cOMMkR8sb3T4JGtqA/0', NULL, NULL, '1394804264', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f63500e0', '1', 'oUG4_t2w8awIEcftlyJcBMAwRDCw', '5LiA55Sf5pyJ5L2g', '1', '奉节', '重庆', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLAnMT2iaKWBKce2qW7Zr1vw4YqExLxb8j0lHXYeDePYtnr7cXU8LQ4ibSzRyetYXibciaZ0W7Epf1M2Uw/0', NULL, NULL, '1403426383', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f63500e1', '1', 'oUG4_t7B_4FJNaOLqZDIbGMOR1N0', '5bKz6aOe', '1', '扬州', '江苏', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJya4vdyjxRzIZ65icCPG3ZoTAD0mt7mj26eRj1dNghKhJl5ibsTzWr4agtxh6KLcFfictiaRJtFa9f1Q/0', NULL, NULL, '1404221443', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f63500e2', '1', 'oUG4_t9ve9TCd3YE-a4Ymb_a7Q3s', '54G/5YS/8J+Mnw==', '2', '西安', '陕西', '中国', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4SliblHvmRUueCoBiatevsdDKJcV0Zcia2McfAmibf9ibsdbXZbPPI0GClmsCQ9ZCGen8AFjJ5Z2AgTzv4BvtBpcy4MPb/0', NULL, NULL, '1400463041', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f63500e3', '1', 'oUG4_tzHp40vrWDmAsxrU-L431_k', '5rC05b+D', '0', '宁波', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLD7icbUnoJa71yLKsgw3tbN9TbzP40LSSDwUnyAHFOWtgn9g5yCeonyt2ycDNjibMLN7sB3G2rN24Kw/0', NULL, NULL, '1394028211', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f63500e4', '1', 'oUG4_t3I2yasFA3Kn3Rc2AIOcDc8', '5bCa5YWz', '2', '嘉兴', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLBGw67RYAwvaLibTwLY5RiaFV8PR6jTyrgynicnfI1uYFLOFwfAUiaJTl3cxcFVlHMlxzkM2dWiaSxVofQ/0', NULL, NULL, '1400137746', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f63600e5', '1', 'oUG4_txIkbM_OD7MwSXdYpSLd5ME', '54eV5a2Q', '2', '长沙', '湖南', '中国', '', NULL, NULL, '1407251502', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f63600e6', '1', 'oUG4_t6SCfyZZC4rqVxoe0nHgxrk', '5L6v6IOc6b6Z', '1', '鹤岗', '黑龙江', '中国', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4SmnicX52Uz6cxIvwV79QHJ4E87GCmnkq3Lne00LXY6TY4sQcoNVTMrkcBqNGo9YztR87LBgI7NQvtg/0', NULL, NULL, '1408718876', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f64300e7', '1', 'oUG4_txO0kiA10bZtosHML8fZxN8', 'RGF2aWQgUWlu', '1', '静安', '上海', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLAtpbFmrc6kFAwjNmQF8WMGLBrB4jXwvBS3XrqXveAGBKZSDszdnYgTOzMbRLeR1G17PBKykZjzNw/0', NULL, NULL, '1408241548', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f64400e8', '1', 'oUG4_t2fSKX8SxPuv0qh1NduOkpY', '44CMIFJpYmF2aXJpbi7wn5KK', '1', '西雅图', '华盛顿', '美国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLCqMpuJI39adh7Wc6mJxhph040GePTwbWDXicgFBLmzayUb4loaHp6pw9RZ3ofnOLn8lBd1ic3ial5ug/0', NULL, NULL, '1400399985', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f64400e9', '1', 'oUG4_t_Ayxc2TETgow5L_Lxz0oP8', 'QyBLUQ==', '1', '广州', '广东', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLCp6QeTpNbqqJtiaL7ArkxOFMLKNdstWPAgKZtCibonTH7A4uhkO06JcHw3j3nib9Dj7ibqAcHYBP1vNsfR8GglrQwHabK1p8HYgAE/0', NULL, NULL, '1406938343', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f64400ea', '1', 'oUG4_t3L9QRdvwu2ljp-Go0LSEn8', '7oyIIOWWteWEv+WFlO6Mhw==', '2', '', '', '亚美尼亚', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5hiaJBdJnzyj32QOXlYiclurDQiaQu7RIuqusYuriaQjBdEOz1zrGc7Wia3xYcENAP2eaqxUSxF817BicA/0', NULL, NULL, '1398737695', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f64400eb', '1', 'oUG4_twytuIcZCFnDd2biUdqkM6k', '44CC', '1', '西安', '陕西', '中国', '', NULL, NULL, '1405526431', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f64400ec', '1', 'oUG4_t2pScWgpr_-G3F-DU4OfGfY', 'SCtaK0o=', '1', '台州', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4Sn4gcaxFfyVUpaCpA1LO5frh1E16T5EibVw03ZqdnU7TpxicFmNYP09d3iccN8YCnPGE5Hrtm9ibRZnVx1Ub04jCricT/0', NULL, NULL, '1404367478', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f64400ed', '1', 'oUG4_t3tXJqz5ksGAUGZLqGLreFE', '5p2O5am3', '2', '泰安', '山东', '中国', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4Sn4gcaxFfyVUvSMfYDicXPNumkySmqriaKuxZhyrw2SQzEDt5UvZRDhWC3LiaKzxzWMwEHmAnEibbjiaibkGeA5ibDmL0S/0', NULL, NULL, '1402453919', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f64400ee', '1', 'oUG4_t01iS18EcRJrB9YJ_gZNi4U', '5q6156uL5YCp', '2', '', '巴厘', '印度尼西亚', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4Sn4gcaxFfyVUticCXdooSgZDI1panJrHyHlmH7ntNzc3FYoqQoVngTiaOlLvl3YiaRQZHUrJ8icgckMz0nYqB8U1UO4/0', NULL, NULL, '1403438262', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f64400ef', '1', 'oUG4_t7uWvMeWvNRvpOWBwpz1eD4', '5L2bXk9e6Zi/5byl6ZmA5L2b', '2', '晋中', '山西', '中国', 'http://wx.qlogo.cn/mmopen/ZwIE1OEm4BzB3vVoHya0DZITuFISUPxgsrnemcUHgyfw3M7fEXuvSwtib9hm2sN1bTzlHNTYoWpd57QbKvWp8tjW1icibA7m6Qf/0', NULL, NULL, '1406437401', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f64500f0', '1', 'oUG4_t-gARFPRqRF0EZD-FaANj8M', '56Os6aOO', '2', '萍乡', '江西', '中国', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOekuniclpK23y1I1UUb6Lq9FPq1UEsSGonDTglXnOANVpjia6GEZgiaZY7yIojWaZia13kkVicvQ1uIv0yFXr1j5SXgf8/0', NULL, NULL, '1402319075', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f64500f1', '1', 'oUG4_t_L79oN2oJL8uZfczLY-YnI', '5b+D5rW3', '2', '昌平', '北京', '中国', 'http://wx.qlogo.cn/mmopen/ZwIE1OEm4BwiaBQE7XI1FQRyXUzFHAmylrQib7tFl3LZ1zAvkCO6oiaoUaLFRicktqsPRbtiaBWzXNYkMx2G5GUAuBKkXicNNAtKics/0', NULL, NULL, '1396241002', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f64500f2', '1', 'oUG4_t3b8YuQLL5pQOgvpZ28RPoY', '6Z2S5p2+', '1', '曲靖', '云南', '中国', 'http://wx.qlogo.cn/mmopen/ZwIE1OEm4BzHqsVghMmCwHmmLh4oWaFiaE0Bh1tAmKANf1wN3P7MBA0yDoD01nEjSfUp0iaJYfLW05N9fFL9u6av1bfkqX50hic/0', NULL, NULL, '1401805354', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f64500f3', '1', 'oUG4_t4QpBkzqC5D2L_M8bXwP9II', 'Sm9leQ==', '1', '太原', '山西', '中国', 'http://wx.qlogo.cn/mmopen/rjFpqUibBJ3dzuna8VCk6Q25ENhENGO5EFLe5JpuuZdp8c2Z2Ctod6rxwKFtRD0Sw3PuTTMOrDZMoUGf91tricLlBFWHDYkXCr/0', NULL, NULL, '1403005852', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f64500f4', '1', 'oUG4_t3pJZ4GuIAHJxsMQkQDtbrQ', '6YKT5pS+', '1', 'Jilin', 'Jilin', 'CN', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOekuniclpK23y1IN7h2jiaxUp7j0oRUgo1psicVTtQb8qfw46kvZazOz60XGLLlMOj9P3BxGzvqYV0ad1A6ibO6Byk6o/0', NULL, NULL, '1408499080', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f64500f5', '1', 'oUG4_t_rtUfmonzPt10zSPbqr0UQ', '6Z2Z5a+C', '1', '辽源', '吉林', '中国', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4Sn4gcaxFfyVUs8IKCCPoibadyeqYccXURvCZX6iaIDu3ibC5oSyv4icaNH4kPfcjOgciaRLfaYhu7dYaKZbvExlRic0fo/0', NULL, NULL, '1409497018', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f64500f6', '1', 'oUG4_t87GTd-6_xkruWqwWreMo30', '5Ly85pu+55u46K+G', '2', '', '', '以色列', 'http://wx.qlogo.cn/mmopen/rjFpqUibBJ3dSaJbtdd2Cwr5ib9fS9nxdPFJ5n0qDVbl2GXsQlymOBSV7K70wF1u7GwLRGunJSJEfJO8sl6iclw4D2RRvVN0T9M/0', NULL, NULL, '1401975814', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f64600f7', '1', 'oUG4_t3j0hZvUs1OypddYf_IpnCI', 'eGkyMDA3MDc=', '1', '河西', '天津', '中国', 'http://wx.qlogo.cn/mmopen/rjFpqUibBJ3dicZ22H8nxAkW8Lyy4lvQRnKuwDkztQicMD7avBuGqBqvhsodXt7LVxU7eYIDjwK03jfHGdAQl1GqKCdOS9o8JU5/0', NULL, NULL, '1404186920', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f64600f8', '1', 'oUG4_t2yCpq-EbWcIAbmJ9onLgn8', '5p2O5rWpc21pbGU=', '1', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/ZwIE1OEm4BzrgcEppyREicOrt1Y7U2efZSHwiaYtcTDx5KAxrMLiceEXCpBEg4G7CUXD8Hu4ttaGxGau0h3WtqpNyNibCsmOy9A9/0', NULL, NULL, '1408278950', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f64600f9', '1', 'oUG4_t3T29PuEfH-d1qnW_1fOAkg', '54mh5Li5', '0', '', '', '', 'http://wx.qlogo.cn/mmopen/le6HREBEEyYK487h6stC3r4jCEMLjSFrvyQRtxzzuaFVPFEDz9YloDSQzfkwBuBDhWGk71XkMFPdiaIITYudGhvjMsfPiaW1mA/0', NULL, NULL, '1407575756', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f64600fa', '1', 'oUG4_t9ahPqsuDupsiAM8u1U75xI', '5YKy', '1', '', '', '', 'http://wx.qlogo.cn/mmopen/ZwIE1OEm4BxlOKj0YyXIHiaONQdwYm5VIunTATFpLav7KibJ2Xibj4RqX0yawE2h6EH1syNB7SSyp4o98cSGsxvr2VY2vwa8tXD/0', NULL, NULL, '1405226413', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f65400fb', '1', 'oUG4_tzzEw0G8Dy5LKfng7t84hXs', '5bmz5bi45b+D', '1', '牡丹江', '黑龙江', '中国', 'http://wx.qlogo.cn/mmopen/rjFpqUibBJ3dzuna8VCk6Q3vI8ljIS956glttHibobTE55q3IPoLW7MeNgGyaibFKicibkUggpvv1gqWhY2gymxbHZvFpNxtDxg2j/0', NULL, NULL, '1402830318', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f65400fc', '1', 'oUG4_t5cTN5CTZ959zDRu_LhHZRA', '6Zuq', '2', '南通', '江苏', '中国', 'http://wx.qlogo.cn/mmopen/ZwIE1OEm4BzB3vVoHya0Dc2cPVMB4M1s81T0OzDv17icItO8XOhUeyg7ibzTticPficVm2pr19zHicq4ARZqCHD8GEWCQSvhe1Anm/0', NULL, NULL, '1405153377', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f65400fd', '1', 'oUG4_t7c75tTTCFn6Ewwttvnn0h0', 'dG9uZw==', '1', '张家界', '湖南', '中国', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4Sn659YBuwVl8lgYR92ySiaJAOVSnm7UxtMordrcsFGTy9bjbVBpBUn1icY9Eicic6D5WQ4Cl7whcPxpU178lx0mqJkH/0', NULL, NULL, '1406730812', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f65500fe', '1', 'oUG4_t3kZJSWpK4RNv3TOM6IDm7o', '6ZmM6ZmM', '1', '阿里', '西藏', '中国', 'http://wx.qlogo.cn/mmopen/ZwIE1OEm4BzB3vVoHya0DbGbu9NufrMuNt1LjgU5ZPg5Z1Spcz2icryXD5Ye7F1iav2ULYRV9KSzmPVJZzJoibdxbhkqX1VNtb9/0', NULL, NULL, '1403097631', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f65500ff', '1', 'oUG4_t7IIdGtsDCGa8UajjiHIrO4', '57+B56WW6Z2S', '1', '', '高雄市', '中国台湾', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4Sn4gcaxFfyVUvibSsR78KlD6icr9hW3Lrraoa4UdnSvgr8bdrTlUGm6j4PpMKPYGhScJRuzcJBgr1vL155zUwiaKOa/0', NULL, NULL, '1407072549', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f6550100', '1', 'oUG4_t2BOUuKQbY1xsYZR9_Nvrh8', '54q55pyq5pma', '2', '', '广东', '中国', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4Sn4gcaxFfyVUhSbAetKn6ibkJwK853bjMvCAmIzibCdPKcQoC1nqlQdG9sgNRYuuTBQv1ic8YHJJONFTtoDg8cyVzJ/0', NULL, NULL, '1399702543', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f6550101', '1', 'oUG4_t6zyAqiRiQN0cSufqjz0kPs', 'VGluZXI=', '2', '宁波', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/9k5ouRIw4Sn4gcaxFfyVUr6f9ySWW3nHOxLxT650mXZEXNJUsORzlIdWmtpZnzOQhGcgONdNwoqeV7dVsbhUcFqhZKhaLE7R/0', NULL, NULL, '1404653608', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f6550102', '1', 'oUG4_tzHQusC2-dYREAdRzE2piG8', 'UGhhbnRhc3Rf6YWx5rK55aa5', '2', '郑州', '河南', '中国', 'http://wx.qlogo.cn/mmopen/eHEMOF2hOekuniclpK23y1KuQMuJB1e9kK95cs1WtYIxwtw7Dnibibopmf0icO4Ky7RhNcT8GSibHfDP2SajIWoyjLk52vEvMQCTS/0', NULL, NULL, '1403520105', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f6550103', '1', 'oUG4_tzeiSalBZGo-8b_Cs7_eGfc', '576O5Li95Lq655Sf', '2', '黑河', '黑龙江', '中国', 'http://wx.qlogo.cn/mmopen/dFAibM95WhPvLW9WHOoHWay0FxY40ubwugneC2fUpN6bDDp8Pnlg8YMtb8joxWvb5zica0xcH62PTwDqkqFtsTlBDcMU5d2cxic/0', NULL, NULL, '1399884330', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000'),
('402889fc483f6b7501483f88f6560104', '1', 'oUG4_t239jJPKWuIoT85Vs-5diyQ', '5ZG95Lit5rOo5a6aKO+/oyjjgqgp77+jKQ==', '1', '', '', '文莱', 'http://wx.qlogo.cn/mmopen/ZwIE1OEm4BzB3vVoHya0DfOVx3qXA2uTz0fMLn3plKptIpJmfII1OVtiafPiaeZe1eTy0Xw46OEUgOX4RZibGsJwibjy56QscMCj/0', NULL, NULL, '1396274233', '2014-09-04 00:00:00', '402881e8461795c201461795c2e90000');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_hdrecord`
--

CREATE TABLE IF NOT EXISTS `weixin_hdrecord` (
  `ID` varchar(100) NOT NULL,
  `ADDTIME` datetime DEFAULT NULL,
  `HDID` varchar(100) DEFAULT NULL,
  `NICKNAME` varchar(200) DEFAULT NULL,
  `OPENDID` varchar(100) DEFAULT NULL,
  `TOTAL` int(11) DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_hdrecord`
--

INSERT INTO `weixin_hdrecord` (`ID`, `ADDTIME`, `HDID`, `NICKNAME`, `OPENDID`, `TOTAL`, `accountid`) VALUES
('40288183490a24bb01490a57dfda0017', '2014-10-14 00:29:31', '40288183490a24bb01490a449e8d0006', '', 'oGCDRjvr9L1NoqxbyXLReCVYVyV0', 2, '402881e8461795c201461795c2e90000'),
('402889ed472e852301472e8d20090002', '2014-07-13 15:08:26', '402880a9468a0bef01468a0e72840001', '', 'oGCDRjvr9L1NoqxbyXLReCVYVyV0', 2, NULL),
('402889ed472e852301472e8e0b7e0003', '2014-07-13 15:09:26', '402881e6469a13b901469a1e9e420001', '', 'oGCDRjvr9L1NoqxbyXLReCVYVyV0', 2, NULL),
('4028bc0647633a790147633d5ab10001', '2014-07-23 20:41:11', '402881e6469a13b901469a1e9e420001', '', 'oGCDRjvr9L1NoqxbyXLReCVYVyV0', 1, '402881e8461795c201461795c2e90000'),
('4028bc0647633a790147633ee1f50002', '2014-07-23 20:42:51', '402880a9468a0bef01468a0e72840001', '', 'oGCDRjvr9L1NoqxbyXLReCVYVyV0', 1, '402881e8461795c201461795c2e90000');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_huodong`
--

CREATE TABLE IF NOT EXISTS `weixin_huodong` (
  `id` varchar(100) NOT NULL COMMENT '键主',
  `hd_code` varchar(400) DEFAULT NULL,
  `title` varchar(400) DEFAULT NULL COMMENT '活动名称',
  `description` text COMMENT '活动描述',
  `starttime` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `endtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '结束时间',
  `type` varchar(100) DEFAULT NULL COMMENT '活动类型',
  `gl` varchar(100) DEFAULT NULL,
  `count` varchar(10) DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_huodong`
--

INSERT INTO `weixin_huodong` (`id`, `hd_code`, `title`, `description`, `starttime`, `endtime`, `type`, `gl`, `count`, `accountid`) VALUES
('40288183490a24bb01490a449e8d0006', '0', 'eee', '22', '2014-10-14 04:07:42', '2014-10-14 04:07:44', '1', '2/3', '22', '402881e8461795c201461795c2e90000'),
('40288183490a24bb01490a4faefe000f', '0', 'sadf', 'ad', '2014-10-13 16:19:40', '2014-10-31 16:19:43', '2', '1/2', '1', '402881e8461795c201461795c2e90000');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_huodong_award`
--

CREATE TABLE IF NOT EXISTS `weixin_huodong_award` (
  `id` varchar(36) NOT NULL DEFAULT '',
  `award_id` varchar(36) DEFAULT NULL,
  `huodong_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `weixin_huodong_awards`
--

CREATE TABLE IF NOT EXISTS `weixin_huodong_awards` (
  `id` varchar(36) NOT NULL DEFAULT '',
  `hd_id` varchar(36) DEFAULT NULL,
  `awards_level_id` varchar(36) DEFAULT NULL,
  `amount` int(10) DEFAULT NULL,
  `accountid` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_n178j4f2mxx2af4e9eom89t4p` (`awards_level_id`),
  KEY `FK_h7icpbg87fie5kgtwyp03dsp3` (`hd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_huodong_awards`
--

INSERT INTO `weixin_huodong_awards` (`id`, `hd_id`, `awards_level_id`, `amount`, `accountid`) VALUES
('40288183490a24bb01490a48ccf9000a', '40288183490a24bb01490a449e8d0006', 'f1ad11f1486fe3b401486fed950d000b', 2, '402881e8461795c201461795c2e90000'),
('40288183490a24bb01490a48cd19000c', '40288183490a24bb01490a449e8d0006', 'f1ad11f1486fe3b401486fedcaa8000d', 3, '402881e8461795c201461795c2e90000'),
('40288183490a24bb01490a4faf0e0010', '40288183490a24bb01490a4faefe000f', 'f1ad11f1486fe3b401486fed950d000b', 2, '402881e8461795c201461795c2e90000'),
('40288183490a24bb01490a4faf2f0012', '40288183490a24bb01490a4faefe000f', 'f1ad11f1486fe3b401486fede05d000f', 4, '402881e8461795c201461795c2e90000'),
('40288183490a24bb01490a4faf490014', '40288183490a24bb01490a4faefe000f', 'f1ad11f1486fe3b401486fee1a330013', 4, '402881e8461795c201461795c2e90000');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_huodong_awards_weixin_awards_award`
--

CREATE TABLE IF NOT EXISTS `weixin_huodong_awards_weixin_awards_award` (
  `weixin_huodong_awards_ID` varchar(32) NOT NULL,
  `awardlist_ID` varchar(32) NOT NULL,
  UNIQUE KEY `UK_sksqqh4e6tq2uc7bc1lkuatpi` (`awardlist_ID`),
  KEY `FK_sksqqh4e6tq2uc7bc1lkuatpi` (`awardlist_ID`),
  KEY `FK_fjj2xux4qsua8uxttba5bqrpg` (`weixin_huodong_awards_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `weixin_leave_msg`
--

CREATE TABLE IF NOT EXISTS `weixin_leave_msg` (
  `ID` varchar(32) NOT NULL,
  `NICK_NAME` varchar(32) DEFAULT NULL COMMENT '昵称',
  `CONTENT` varchar(200) DEFAULT NULL COMMENT '内容',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `CREATE_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '修改时间',
  `UPDATE_BY` varchar(32) DEFAULT NULL COMMENT '修改人',
  `accountid` varchar(100) DEFAULT NULL,
  `concact` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_leave_msg`
--

INSERT INTO `weixin_leave_msg` (`ID`, `NICK_NAME`, `CONTENT`, `CREATE_DATE`, `CREATE_BY`, `UPDATE_DATE`, `UPDATE_BY`, `accountid`, `concact`) VALUES
('2c9183404d70b41a014d70b852700001', '看看', '兔兔', '2015-05-20 17:47:17', NULL, NULL, NULL, NULL, '兔兔'),
('2c9183404d74f79b014d75ea9dd10007', '看看', '具体', '2015-05-21 18:00:19', NULL, NULL, NULL, NULL, '木头'),
('402889fb480bef0c01480bf1d3930002', '123123', '123123', '2014-08-25 14:54:30', '4028d881436d514601436d5215ac0043', NULL, NULL, '402881e8461795c201461795c2e90000', NULL),
('f7a8a3a9487816f801487889f9de0158', 'vv宝贝', '该喝喝几节课', '2014-09-15 16:59:41', 'f7a8a3a9487816f80148788795320150', NULL, NULL, '402881e8461795c201461795c2e90000', NULL),
('f7a8a3a9487816f8014878974a60016e', '你好', '你好', '2014-09-15 17:14:13', NULL, NULL, NULL, NULL, NULL),
('f7a8a3a9487816f801487897e5d50170', '111111', '111', '2014-09-15 17:14:53', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `weixin_leave_msg_reply`
--

CREATE TABLE IF NOT EXISTS `weixin_leave_msg_reply` (
  `ID` varchar(32) NOT NULL,
  `MSG_ID` varchar(32) NOT NULL COMMENT '留言内容',
  `CONTENT` varchar(200) DEFAULT NULL COMMENT '回复内容',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `CREATE_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '修改时间',
  `UPDATE_BY` varchar(32) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`ID`),
  KEY `FK_et3q739yp44m7d0p003liby4c` (`MSG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `WEIXIN_LEAVE_MSG_REPLY`
--

CREATE TABLE IF NOT EXISTS `WEIXIN_LEAVE_MSG_REPLY` (
  `ID` varchar(32) NOT NULL,
  `CONTENT` varchar(200) DEFAULT NULL,
  `CREATE_BY` varchar(32) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `MSG_ID` varchar(32) NOT NULL,
  `UPDATE_BY` varchar(32) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_et3q739yp44m7d0p003liby4c` (`MSG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `weixin_location`
--

CREATE TABLE IF NOT EXISTS `weixin_location` (
  `id` varchar(40) NOT NULL COMMENT '主键id',
  `openid` varchar(40) NOT NULL COMMENT '用户openId',
  `accountid` varchar(40) NOT NULL COMMENT '服务号Id',
  `latitude` varchar(10) DEFAULT NULL COMMENT '维度',
  `longitude` varchar(10) DEFAULT NULL COMMENT '经度',
  `PRECISIONWEIXIN` varchar(10) DEFAULT NULL COMMENT '地理位置经度',
  `nickname` varchar(50) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `weixin_member_coupon`
--

CREATE TABLE IF NOT EXISTS `weixin_member_coupon` (
  `id` varchar(36) NOT NULL DEFAULT '',
  `couponid` varchar(36) DEFAULT NULL,
  `member_vip_id` varchar(36) DEFAULT NULL,
  `quantity` int(20) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `FK_6y70y2f7s5r3ljyo3ovq5wcar` (`couponid`),
  KEY `FK_cwy9h77t3o3cfw7k2hvyo23x` (`member_vip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `weixin_menu`
--

CREATE TABLE IF NOT EXISTS `weixin_menu` (
  `ID` varchar(36) NOT NULL,
  `CATEGORY` varchar(100) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `WEIXIN_CODE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `weixin_menuentity`
--

CREATE TABLE IF NOT EXISTS `weixin_menuentity` (
  `ID` varchar(32) NOT NULL,
  `menukey` varchar(255) DEFAULT NULL,
  `msgtype` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `orders` varchar(11) DEFAULT NULL,
  `templateid` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `fatherid` varchar(32) DEFAULT NULL,
  `accountid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_astulwpsla864at9igbas3eic` (`fatherid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_menuentity`
--

INSERT INTO `weixin_menuentity` (`ID`, `menukey`, `msgtype`, `name`, `orders`, `templateid`, `type`, `url`, `fatherid`, `accountid`) VALUES
('402880e648138dba014813a2c7fe0013', 'toupiao', 'text', '公司产品', '1', '2c9182b94d6f7cc7014d70079edb0006', 'click', '', '402881e4464d026901464d05ab600001', '402881e8461795c201461795c2e90000'),
('402881e4464d026901464d05ab600001', 'c02', 'text', '公司动态', '1', 'f7a8a3a946e249c20146e25c4dc7000c', 'click', '', NULL, '402881e8461795c201461795c2e90000'),
('402889ff4728a293014728bc62250036', 'c03', 'text', '关于永辉', '3', 'f7a8a3a946e55a940146e5c317f6005f', 'click', '', NULL, '402881e8461795c201461795c2e90000'),
('402889ff4728a293014728bcb3020038', 'c0302', 'text', '关于公司', '2', '2c91811a4d60d054014d65a2caa1002f', 'view', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', '402889ff4728a293014728bc62250036', '402881e8461795c201461795c2e90000'),
('402889ff4728f237014728f4b8c70006', 'c0101', NULL, '微留言', '3', NULL, 'view', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goPage&page=leaveMsg&accountid=402881e8461795c201461795c2e90000', '402889ff4728a293014728bc62250036', '402881e8461795c201461795c2e90000'),
('402889ff4728f237014729029d940010', 'c0204', 'news', '公司动态', '1', '4028d881472f356e01472f36461b0001', 'click', '', '402881e4464d026901464d05ab600001', '402881e8461795c201461795c2e90000'),
('402889ff4728f237014729039c7c0014', 'c0201', 'expand', '公司社区', '1', '402881e74821183901482120a08c0001', 'click', '', '402881e4464d026901464d05ab600001', '402881e8461795c201461795c2e90000'),
('f7a8a3a9487816f801487822acec0062', 'lxwm', 'text', '联系我们', '1', '2c91811a4d60d054014d65a2caa1002f', 'click', 'http://www.jeewx.com/jeewx/wxZhongjiangController.do?index', '402889ff4728a293014728bc62250036', '402881e8461795c201461795c2e90000'),
('f7a8a3a9487816f801487843245200a4', 'pk', 'expand', '微官网', '2', 'f7a8a3a9487816f80148783f040c009d', 'view', 'http://yhsoft.duapp.com/', '402889ff4728a293014728bc62250036', '402881e8461795c201461795c2e90000');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_newsitem`
--

CREATE TABLE IF NOT EXISTS `weixin_newsitem` (
  `ID` varchar(32) NOT NULL,
  `new_type` varchar(255) DEFAULT NULL COMMENT '图文类型：图文还是外部url',
  `author` varchar(255) DEFAULT NULL,
  `content` text,
  `description` varchar(255) DEFAULT NULL,
  `imagepath` varchar(255) DEFAULT NULL,
  `orders` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `templateid` varchar(32) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL COMMENT '外部URL',
  `create_date` date DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_m8qs8ufeqkk5cx17budto66r0` (`templateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_newsitem`
--

INSERT INTO `weixin_newsitem` (`ID`, `new_type`, `author`, `content`, `description`, `imagepath`, `orders`, `title`, `templateid`, `url`, `create_date`, `accountid`) VALUES
('2c9183404d7938da014d793beb86000a', NULL, '人生最重要的事情', '<p>人生最重要的事情人生最重要的事情人生最重要的事情人生最重要的事情</p>', '人生最重要的事情', 'template/cms/default/images/20150522092747Ddj7m03s.jpg', '55', '人生最重要的事情', '4028d881472f356e01472f36461b0001', '', '2015-05-22', '402881e8461795c201461795c2e90000'),
('2c9183404d7938da014d793e3450000e', NULL, '幸福定义', '<p>幸福定义幸福定义幸福定义幸福定义幸福定义幸福定义幸福定义幸福定义</p>', '幸福定义', 'template/cms/default/images/2015052209300907v1vw41.jpg', '1', '幸福定义', '4028d881472f356e01472f36461b0001', '', '2015-05-22', '402881e8461795c201461795c2e90000'),
('4028d881472f356e01472f36d0a00003', NULL, '邓晓辉', '<p>&nbsp; &nbsp;成都永辉科技有限公司 &nbsp;520 &nbsp;放假通知</p><p>大家好：</p><p>&nbsp; &nbsp;520所有员工放假一天。希望大家能够找到自己喜爱的人</p><p>&nbsp;</p>', '成都永辉科技有限公司  520  放假通知', 'template/cms/default/images/20150522093125PHzBZreY.jpg', '1', '成都永辉科技有限公司  520  放假通知', '4028d881472f356e01472f36461b0001', '', '2014-07-13', '402881e8461795c201461795c2e90000');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_newstemplate`
--

CREATE TABLE IF NOT EXISTS `weixin_newstemplate` (
  `ID` varchar(32) NOT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `tempatename` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_newstemplate`
--

INSERT INTO `weixin_newstemplate` (`ID`, `addtime`, `tempatename`, `type`, `accountid`) VALUES
('4028d881472f356e01472f36461b0001', '2014-07-13 18:13:11', '公司动态', 'common', '402881e8461795c201461795c2e90000'),
('f7a8a3a9487816f801487840b91f00a0', '2014-09-15 15:39:40', 'aa', 'cl', '4028d881474489d70147449988040025');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_pay_config`
--

CREATE TABLE IF NOT EXISTS `weixin_pay_config` (
  `id` varchar(36) NOT NULL DEFAULT '',
  `payname` varchar(100) DEFAULT NULL,
  `paytype` char(1) DEFAULT NULL,
  `paykey` varchar(32) DEFAULT NULL,
  `partner` varchar(16) DEFAULT NULL,
  `seller_email` varchar(200) DEFAULT NULL,
  `typename` varchar(200) DEFAULT NULL,
  `accountid` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `weixin_photo`
--

CREATE TABLE IF NOT EXISTS `weixin_photo` (
  `ID` varchar(32) NOT NULL,
  `PHOTO_ALBUM_ID` varchar(32) DEFAULT NULL COMMENT '对应相册',
  `CONTENT` varchar(255) DEFAULT NULL COMMENT '相片描述',
  `CREATE_BY` varchar(32) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL COMMENT '相片名字',
  `UPDATE_BY` varchar(32) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_oqe2wy2ehv1gp54j8s8367e1g` (`PHOTO_ALBUM_ID`),
  KEY `FK_rtqvxlo0v4hgfuw1ipngep5gs` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_photo`
--

INSERT INTO `weixin_photo` (`ID`, `PHOTO_ALBUM_ID`, `CONTENT`, `CREATE_BY`, `CREATE_DATE`, `NAME`, `UPDATE_BY`, `UPDATE_DATE`) VALUES
('402889fb480bfaf001480c23009e0047', '402889fb480bfaf001480c22cf930043', NULL, '4028d881436d514601436d5215ac0043', '2014-08-25 15:48:13', '未命名', '4028d881436d514601436d5215ac0043', '2014-08-25 15:48:13'),
('402889fb480bfaf001480c23324c004a', '402889fb480bfaf001480c22cf930043', '\r\nJEECG开源社区\r\nwww.jeecg.org', '4028d881436d514601436d5215ac0043', '2014-08-25 15:48:26', 'JEECG开源社区', '4028d881436d514601436d5215ac0043', '2014-08-25 15:48:45');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_photo_album`
--

CREATE TABLE IF NOT EXISTS `weixin_photo_album` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL COMMENT '相册名称',
  `CONTENT` varchar(255) DEFAULT NULL COMMENT '相册描述',
  `ACCOUNTID` varchar(100) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `CREATE_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '修改时间',
  `UPDATE_BY` varchar(32) DEFAULT NULL COMMENT '修改人',
  `PHOTO_ID` varchar(32) DEFAULT NULL COMMENT '封面相片',
  PRIMARY KEY (`ID`),
  KEY `FK_jv7nb0xjbct8t41pfiy3pyu2f` (`PHOTO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_photo_album`
--

INSERT INTO `weixin_photo_album` (`ID`, `NAME`, `CONTENT`, `ACCOUNTID`, `CREATE_DATE`, `CREATE_BY`, `UPDATE_DATE`, `UPDATE_BY`, `PHOTO_ID`) VALUES
('402889fb480bfaf001480c22cf930043', '我的相册', '我的相册', '402881e8461795c201461795c2e90000', '2014-08-25 15:48:01', '4028d881436d514601436d5215ac0043', '2014-08-25 15:49:18', '4028d881436d514601436d5215ac0043', '402889fb480bfaf001480c23324c004a'),
('ff8080814d485da1014d489c4cd40002', 't', 't', '402881e8461795c201461795c2e90000', '2015-05-12 22:51:52', '4028d881436d514601436d5215ac0043', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `weixin_prizerecord`
--

CREATE TABLE IF NOT EXISTS `weixin_prizerecord` (
  `ID` varchar(100) NOT NULL,
  `ADDTIME` datetime DEFAULT NULL,
  `HDID` varchar(100) DEFAULT NULL,
  `MOBILE` varchar(100) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `PRIZE` varchar(100) DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `address` varchar(2000) DEFAULT NULL,
  `identity_id` varchar(20) DEFAULT NULL,
  `awards_code` varchar(36) DEFAULT NULL,
  `system_type` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_g9gh5aa11gdflh353kmvtc3vp` (`PRIZE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `weixin_promotion_coupon`
--

CREATE TABLE IF NOT EXISTS `weixin_promotion_coupon` (
  `id` varchar(36) NOT NULL DEFAULT '',
  `name` varchar(200) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT '0',
  `code` varchar(200) DEFAULT NULL,
  `type` varchar(2) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `accountid` varchar(36) DEFAULT NULL,
  `restrict_type` varchar(2) DEFAULT NULL,
  `restrict_price` decimal(10,0) DEFAULT '0',
  `status` varchar(2) DEFAULT NULL,
  `RESTRICTGOODS` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `weixin_qrcode`
--

CREATE TABLE IF NOT EXISTS `weixin_qrcode` (
  `id` varchar(36) NOT NULL,
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `expire_seconds` int(11) DEFAULT NULL COMMENT '有效时间',
  `action_name` varchar(32) DEFAULT NULL COMMENT '二维码类型',
  `action_info` varchar(32) DEFAULT NULL COMMENT '二维码详细信息',
  `scene_id` int(11) DEFAULT NULL COMMENT '场景键',
  `accountid` varchar(50) DEFAULT NULL COMMENT '公众帐号ID',
  `imageurl` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_qrcode`
--

INSERT INTO `weixin_qrcode` (`id`, `create_name`, `create_date`, `update_name`, `update_date`, `expire_seconds`, `action_name`, `action_info`, `scene_id`, `accountid`, `imageurl`) VALUES
('40288183490a24bb01490a62b1100022', 'admin', '2014-10-14 00:41:20', '', NULL, 1111, '1', '1111', 2222, '402881e8461795c201461795c2e90000', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `weixin_qrcode_scan_record`
--

CREATE TABLE IF NOT EXISTS `weixin_qrcode_scan_record` (
  `ID` varchar(36) NOT NULL,
  `IMAGEURL` longtext,
  `NICKNAME` varchar(100) DEFAULT NULL,
  `OPENID` varchar(100) DEFAULT NULL,
  `SCANTIME` datetime DEFAULT NULL,
  `SCENEKEY` varchar(10) DEFAULT NULL,
  `SCENEVALUE` varchar(50) DEFAULT NULL,
  `accountid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `weixin_qrcode_scene`
--

CREATE TABLE IF NOT EXISTS `weixin_qrcode_scene` (
  `id` varchar(36) NOT NULL,
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `accountid` varchar(50) DEFAULT NULL COMMENT '公众帐号ID',
  `scenekey` int(11) DEFAULT NULL COMMENT '场景键',
  `scenevalue` varchar(100) DEFAULT NULL COMMENT '场景值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_qrcode_scene`
--

INSERT INTO `weixin_qrcode_scene` (`id`, `create_name`, `create_date`, `update_name`, `update_date`, `accountid`, `scenekey`, `scenevalue`) VALUES
('40288183490a24bb01490a627ff70020', 'admin', '2014-10-14 00:41:08', '', NULL, '402881e8461795c201461795c2e90000', 2222, '1111');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_qrcode_sceneseq`
--

CREATE TABLE IF NOT EXISTS `weixin_qrcode_sceneseq` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(50) DEFAULT NULL,
  `REALNAME` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `weixin_receiveevent`
--

CREATE TABLE IF NOT EXISTS `weixin_receiveevent` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL,
  `accountid` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createtime` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `events` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `eventkey` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `fromusername` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `msgtype` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `precisions` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `receivetime` datetime DEFAULT NULL,
  `ticket` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `tousername` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `weixin_receiveevent`
--

INSERT INTO `weixin_receiveevent` (`ID`, `accountid`, `createtime`, `events`, `eventkey`, `fromusername`, `latitude`, `longitude`, `msgtype`, `precisions`, `receivetime`, `ticket`, `tousername`) VALUES
('2c91811a4d5fd051014d5fd57ab7000a', '402881e8461795c201461795c2e90000', '1431831935', 'unsubscribe', '', 'oxIKHuMKrjHBKjwXp0znQ982gF3w', NULL, NULL, 'event', NULL, '2015-05-17 11:05:35', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d5fd051014d5fd5b38c000b', '402881e8461795c201461795c2e90000', '1431831950', 'subscribe', '', 'oxIKHuMKrjHBKjwXp0znQ982gF3w', NULL, NULL, 'event', NULL, '2015-05-17 11:05:50', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d5fd051014d5fd5ef2b000d', '402881e8461795c201461795c2e90000', '1431831965', 'CLICK', 'c0204', 'oxIKHuMKrjHBKjwXp0znQ982gF3w', NULL, NULL, 'event', NULL, '2015-05-17 11:06:05', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d5fd051014d5fd7221c000e', '402881e8461795c201461795c2e90000', '1431832044', 'CLICK', 'c0203', 'oxIKHuMKrjHBKjwXp0znQ982gF3w', NULL, NULL, 'event', NULL, '2015-05-17 11:07:24', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d5fd901014d5fe6ad7d0001', '402881e8461795c201461795c2e90000', '1431833061', 'subscribe', '', 'oxIKHuJyLsTUp-hMXhHLPwq1Audo', NULL, NULL, 'event', NULL, '2015-05-17 11:24:22', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d5fd901014d5fe7a96f0003', '402881e8461795c201461795c2e90000', '1431833127', 'CLICK', 'c0204', 'oxIKHuJyLsTUp-hMXhHLPwq1Audo', NULL, NULL, 'event', NULL, '2015-05-17 11:25:27', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d5fd901014d601108650004', '402881e8461795c201461795c2e90000', '1431835838', 'CLICK', 'c0302', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 12:10:38', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d60d0babd0000', '402881e8461795c201461795c2e90000', '1431848347', 'CLICK', 'c0203', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 15:40:01', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d60d0babd0001', '402881e8461795c201461795c2e90000', '1431848322', 'CLICK', 'c0302', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 15:40:01', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d60d0babd0002', '402881e8461795c201461795c2e90000', '1431848267', 'CLICK', 'c0201', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 15:40:01', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d60d0babf0003', '402881e8461795c201461795c2e90000', '1431848347', 'CLICK', 'c0203', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 15:40:01', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d60d0babf0004', '402881e8461795c201461795c2e90000', '1431848322', 'CLICK', 'c0302', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 15:40:01', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d60d0bb110005', '402881e8461795c201461795c2e90000', '1431848322', 'CLICK', 'c0302', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 15:40:01', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d60d0bb180006', '402881e8461795c201461795c2e90000', '1431848267', 'CLICK', 'c0201', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 15:40:01', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d60d0bb1d0007', '402881e8461795c201461795c2e90000', '1431848353', 'CLICK', 'xiangce', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 15:40:01', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d60d0bb830008', '402881e8461795c201461795c2e90000', '1431848347', 'CLICK', 'c0203', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 15:40:01', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d60d0bbe10009', '402881e8461795c201461795c2e90000', '1431848285', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 15:40:01', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d60d0bc3f000a', '402881e8461795c201461795c2e90000', '1431848353', 'CLICK', 'xiangce', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 15:40:01', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d60d0bc3f000b', '402881e8461795c201461795c2e90000', '1431848353', 'CLICK', 'xiangce', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 15:40:01', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d60d0bc40000c', '402881e8461795c201461795c2e90000', '1431848285', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 15:40:01', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d60d0bc45000d', '402881e8461795c201461795c2e90000', '1431848285', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 15:40:01', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d60d0bc45000e', '402881e8461795c201461795c2e90000', '1431848267', 'CLICK', 'c0201', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 15:40:01', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d60e432270013', '402881e8461795c201461795c2e90000', '1431849677', 'CLICK', 'c0201', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 16:01:17', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d60e465b50014', '402881e8461795c201461795c2e90000', '1431849690', 'CLICK', 'toupiao', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 16:01:30', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d6153f4a70015', '402881e8461795c201461795c2e90000', '1431857001', 'CLICK', 'c0201', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 18:03:21', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d61540e230016', '402881e8461795c201461795c2e90000', '1431857008', 'CLICK', 'toupiao', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 18:03:28', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d61542a610017', '402881e8461795c201461795c2e90000', '1431857015', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 18:03:35', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d6154ea650018', '402881e8461795c201461795c2e90000', '1431857064', 'CLICK', 'dy', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 18:04:24', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d6155cc800019', '402881e8461795c201461795c2e90000', '1431857122', 'CLICK', 'toupiao', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 18:05:22', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d6155dbad001a', '402881e8461795c201461795c2e90000', '1431857126', 'CLICK', 'dy', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 18:05:26', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d6155f0d3001b', '402881e8461795c201461795c2e90000', '1431857131', 'CLICK', 'xiangce', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 18:05:31', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d61562392001c', '402881e8461795c201461795c2e90000', '1431857144', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 18:05:44', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d6156425b001d', '402881e8461795c201461795c2e90000', '1431857152', 'CLICK', 'c0203', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 18:05:52', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d61567623001e', '402881e8461795c201461795c2e90000', '1431857165', 'CLICK', 'huiyuan', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 18:06:05', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d6156a4c9001f', '402881e8461795c201461795c2e90000', '1431857177', 'VIEW', 'http://www.jeewx.com/jeewx/cmsController.do?goPage&page=leaveMsg', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 18:06:17', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d6156f9a60020', '402881e8461795c201461795c2e90000', '1431857199', 'VIEW', 'http://www.jeewx.com/jeewx/cmsController.do?goPage&page=leaveMsg', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 18:06:39', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d615741300021', '402881e8461795c201461795c2e90000', '1431857217', 'CLICK', 'zhoubian', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 18:06:57', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d6157aaf80022', '402881e8461795c201461795c2e90000', '1431857244', 'CLICK', 'c0302', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 18:07:24', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d6157b9e60023', '402881e8461795c201461795c2e90000', '1431857248', 'VIEW', 'http://www.jeewx.com/jeewx/wxZhongjiangController.do?index', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 18:07:28', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d6157d3b80024', '402881e8461795c201461795c2e90000', '1431857255', 'CLICK', 'pk', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 18:07:35', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d6157fb8d0025', '402881e8461795c201461795c2e90000', '1431857265', 'VIEW', 'http://mp.weixin.qq.com/s?__biz=MjM5NjA2OTkxMg==&mid=200275454&idx=1&sn=bf36f852ad218a22a07ebe4b7cc40d01&scene=18#rd', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 18:07:45', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d61580e760026', '402881e8461795c201461795c2e90000', '1431857270', 'VIEW', 'http://mp.weixin.qq.com/s?__biz=MjM5NjA2OTkxMg==&mid=200275454&idx=2&sn=a4a4bd237aff404b8044e59105b74c69&scene=18#rd', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-17 18:07:50', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d615ef2970028', '402881e8461795c201461795c2e90000', '1431857721', 'CLICK', 'toupiao', 'oxIKHuDZzZ6POzJe8uQlSqkb9X2Y', NULL, NULL, 'event', NULL, '2015-05-17 18:15:22', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d623996e30029', '402881e8461795c201461795c2e90000', '1431872050', 'VIEW', 'http://mp.weixin.qq.com/s?__biz=MjM5NjA2OTkxMg==&mid=200275454&idx=2&sn=a4a4bd237aff404b8044e59105b74c69&scene=18#rd', 'oxIKHuMKrjHBKjwXp0znQ982gF3w', NULL, NULL, 'event', NULL, '2015-05-17 22:14:10', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d65a6fd430033', '402881e8461795c201461795c2e90000', '1431929552', 'unsubscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 14:12:32', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d65aab56e0034', '402881e8461795c201461795c2e90000', '1431929795', 'subscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 14:16:35', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d65ac30af0037', '402881e8461795c201461795c2e90000', '1431929892', 'unsubscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 14:18:13', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d65ac767e0038', '402881e8461795c201461795c2e90000', '1431929910', 'subscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 14:18:30', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d65ae1888003b', '402881e8461795c201461795c2e90000', '1431930017', 'unsubscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 14:20:17', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d65ae4b57003c', '402881e8461795c201461795c2e90000', '1431930030', 'subscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 14:20:30', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d65af2a80003f', '402881e8461795c201461795c2e90000', '1431930087', 'unsubscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 14:21:28', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d65af57bb0040', '402881e8461795c201461795c2e90000', '1431930099', 'subscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 14:21:39', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d65b1fe860043', '402881e8461795c201461795c2e90000', '1431930273', 'unsubscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 14:24:33', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d65b23cb80044', '402881e8461795c201461795c2e90000', '1431930289', 'subscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 14:24:49', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d65b48c130047', '402881e8461795c201461795c2e90000', '1431930440', 'subscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 14:27:20', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d65da06950074', '402881e8461795c201461795c2e90000', '1431932896', 'subscribe', '', 'oxIKHuPepPXoL8Uy9Blf9Vma4590', NULL, NULL, 'event', NULL, '2015-05-18 15:08:16', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d65dc9a570076', '402881e8461795c201461795c2e90000', '1431933065', 'VIEW', 'http://mp.weixin.qq.com/s?__biz=MjM5NjA2OTkxMg==&mid=200275454&idx=1&sn=bf36f852ad218a22a07ebe4b7cc40d01&scene=18#rd', 'oxIKHuPepPXoL8Uy9Blf9Vma4590', NULL, NULL, 'event', NULL, '2015-05-18 15:11:05', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d65dcb85b0077', '402881e8461795c201461795c2e90000', '1431933073', 'CLICK', 'huiyuan', 'oxIKHuPepPXoL8Uy9Blf9Vma4590', NULL, NULL, 'event', NULL, '2015-05-18 15:11:13', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d65dce1c50078', '402881e8461795c201461795c2e90000', '1431933083', 'CLICK', 'c0201', 'oxIKHuPepPXoL8Uy9Blf9Vma4590', NULL, NULL, 'event', NULL, '2015-05-18 15:11:24', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d65dcfd200079', '402881e8461795c201461795c2e90000', '1431933090', 'CLICK', 'xiangce', 'oxIKHuPepPXoL8Uy9Blf9Vma4590', NULL, NULL, 'event', NULL, '2015-05-18 15:11:31', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d65dd1795007a', '402881e8461795c201461795c2e90000', '1431933097', 'CLICK', 'zhoubian', 'oxIKHuPepPXoL8Uy9Blf9Vma4590', NULL, NULL, 'event', NULL, '2015-05-18 15:11:37', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d65dd6498007b', '402881e8461795c201461795c2e90000', '1431933117', 'subscribe', '', 'oxIKHuAcld1KrRDBbzKSMysNHVc0', NULL, NULL, 'event', NULL, '2015-05-18 15:11:57', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d65ed83000081', '402881e8461795c201461795c2e90000', '1431934173', 'CLICK', 'pk', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 15:29:33', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d6603d129008e', '402881e8461795c201461795c2e90000', '1431935635', 'subscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 15:53:55', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d660465d80091', '402881e8461795c201461795c2e90000', '1431935673', 'unsubscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 15:54:33', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d6604ca8b0092', '402881e8461795c201461795c2e90000', '1431935699', 'subscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 15:54:59', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d6605f1c50096', '402881e8461795c201461795c2e90000', '1431935775', 'unsubscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 15:56:15', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d66070d530097', '402881e8461795c201461795c2e90000', '1431935847', 'subscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 15:57:27', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d660b82d700a1', '402881e8461795c201461795c2e90000', '1431936139', 'unsubscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 16:02:19', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d660ef01800a5', '402881e8461795c201461795c2e90000', '1431936364', 'CLICK', 'toupiao', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 16:06:04', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d660f00d700a6', '402881e8461795c201461795c2e90000', '1431936368', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 16:06:08', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d661435f300b0', '402881e8461795c201461795c2e90000', '1431936710', 'VIEW', 'http://www.jeewx.com/jeewx/wxZhongjiangController.do?index', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 16:11:50', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d661468e200b1', '402881e8461795c201461795c2e90000', '1431936723', 'unsubscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 16:12:03', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d661949e200b5', '402881e8461795c201461795c2e90000', '1431937042', 'subscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 16:17:22', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d661b348700ba', '402881e8461795c201461795c2e90000', '1431937168', 'CLICK', 'lxwm', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 16:19:28', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d661b4f1100bb', '402881e8461795c201461795c2e90000', '1431937175', 'CLICK', 'c0302', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 16:19:35', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d661babb800bc', '402881e8461795c201461795c2e90000', '1431937198', 'VIEW', 'http://yhsoft.duapp.com/', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 16:19:59', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d661c4fc300bf', '402881e8461795c201461795c2e90000', '1431937240', 'VIEW', 'http://mp.weixin.qq.com/s?__biz=MjM5NjA2OTkxMg==&mid=200275454&idx=1&sn=bf36f852ad218a22a07ebe4b7cc40d01&scene=18#rd', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 16:20:41', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d6645af6300c4', '402881e8461795c201461795c2e90000', '1431939952', 'CLICK', 'c0302', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 17:05:52', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d6645bec800c5', '402881e8461795c201461795c2e90000', '1431939956', 'CLICK', 'c0302', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 17:05:56', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d6645d04200c6', '402881e8461795c201461795c2e90000', '1431939960', 'CLICK', 'c0302', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 17:06:00', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d6646307a00c8', '402881e8461795c201461795c2e90000', '1431939985', 'CLICK', 'c0302', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 17:06:25', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d664699bc00c9', '402881e8461795c201461795c2e90000', '1431940012', 'CLICK', 'c0302', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 17:06:52', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d6647cb1600ca', '402881e8461795c201461795c2e90000', '1431940090', 'CLICK', 'c0302', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 17:08:10', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d664842ac00cb', '402881e8461795c201461795c2e90000', '1431940121', 'unsubscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 17:08:41', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d664948e200cc', '402881e8461795c201461795c2e90000', '1431940188', 'subscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 17:09:48', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d6649e27500ce', '402881e8461795c201461795c2e90000', '1431940227', 'VIEW', 'http://yhsoft.duapp.com/guanyuwomen.html', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 17:10:27', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d60d054014d664f68c400cf', '402881e8461795c201461795c2e90000', '1431940589', 'VIEW', 'http://mp.weixin.qq.com/s?__biz=MjM5NjA2OTkxMg==&mid=200275454&idx=1&sn=bf36f852ad218a22a07ebe4b7cc40d01&scene=18#rd', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 17:16:29', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d6670ec014d6671572f0000', '402881e8461795c201461795c2e90000', '1431942804', 'VIEW', 'http://yhsoft.duapp.com/guanyuwomen.html', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 17:53:33', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d6670ec014d6671572f0001', '402881e8461795c201461795c2e90000', '1431942804', 'VIEW', 'http://yhsoft.duapp.com/guanyuwomen.html', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 17:53:33', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d6670ec014d667177680002', '402881e8461795c201461795c2e90000', '1431942821', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 17:53:41', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d667395014d6715bad40002', '402881e8461795c201461795c2e90000', '1431953586', 'CLICK', 'lxwm', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 20:53:06', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d667395014d6715d32a0003', '402881e8461795c201461795c2e90000', '1431953593', 'CLICK', 'toupiao', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 20:53:13', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d667395014d671600340004', '402881e8461795c201461795c2e90000', '1431953604', 'CLICK', 'c0201', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-18 20:53:24', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d6ae91f014d6af0e2180000', '402881e8461795c201461795c2e90000', '1432018280', 'CLICK', 'lxwm', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-19 14:51:20', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d6ae91f014d6af1f8330001', '402881e8461795c201461795c2e90000', '1432018352', 'CLICK', 'toupiao', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-19 14:52:32', NULL, 'gh_b2a51a1013e8'),
('2c91811a4d6ae91f014d6af2248b0002', '402881e8461795c201461795c2e90000', '1432018363', 'VIEW', 'http://mp.weixin.qq.com/s?__biz=MjM5NjA2OTkxMg==&mid=200275454&idx=1&sn=bf36f852ad218a22a07ebe4b7cc40d01&scene=18#rd', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-19 14:52:43', NULL, 'gh_b2a51a1013e8'),
('2c9182b94d6b887f014d6c0485080000', '402881e8461795c201461795c2e90000', '1432036344', 'CLICK', 'lxwm', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-19 19:52:25', NULL, 'gh_b2a51a1013e8'),
('2c9182b94d6f6dbf014d6f6f635c0003', '402881e8461795c201461795c2e90000', '1432093680', 'VIEW', 'http://mp.weixin.qq.com/s?__biz=MjM5NjA2OTkxMg==&mid=200275454&idx=1&sn=bf36f852ad218a22a07ebe4b7cc40d01&scene=18#rd', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 11:48:00', NULL, 'gh_b2a51a1013e8'),
('2c9182b94d6f7cc7014d6fdd22470001', '402881e8461795c201461795c2e90000', '1432100872', 'subscribe', '', 'oxIKHuLmswItcsAJZq1MqqtsY5qM', NULL, NULL, 'event', NULL, '2015-05-20 13:47:52', NULL, 'gh_b2a51a1013e8'),
('2c9182b94d6f7cc7014d6fdd66830003', '402881e8461795c201461795c2e90000', '1432100890', 'unsubscribe', '', 'oxIKHuLmswItcsAJZq1MqqtsY5qM', NULL, NULL, 'event', NULL, '2015-05-20 13:48:10', NULL, 'gh_b2a51a1013e8'),
('2c9182b94d6f7cc7014d700c638b000a', '402881e8461795c201461795c2e90000', '1432103969', 'CLICK', 'toupiao', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 14:39:29', NULL, 'gh_b2a51a1013e8'),
('2c9183404d7090ee014d7094675f0004', '402881e8461795c201461795c2e90000', '1432112883', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 17:08:03', NULL, 'gh_b2a51a1013e8'),
('2c9183404d7090ee014d709480d20005', '402881e8461795c201461795c2e90000', '1432112889', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 17:08:10', NULL, 'gh_b2a51a1013e8'),
('2c9183404d7090ee014d709542de0007', '402881e8461795c201461795c2e90000', '1432112939', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 17:08:59', NULL, 'gh_b2a51a1013e8'),
('2c9183404d7090ee014d7097f967000b', '402881e8461795c201461795c2e90000', '1432113117', 'unsubscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 17:11:57', NULL, 'gh_b2a51a1013e8'),
('2c9183404d7090ee014d70983f09000c', '402881e8461795c201461795c2e90000', '1432113135', 'subscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 17:12:15', NULL, 'gh_b2a51a1013e8'),
('2c9183404d7090ee014d70989fd8000e', '402881e8461795c201461795c2e90000', '1432113160', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 17:12:40', NULL, 'gh_b2a51a1013e8'),
('2c9183404d7090ee014d709bd7cc000f', '402881e8461795c201461795c2e90000', '1432113370', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 17:16:11', NULL, 'gh_b2a51a1013e8'),
('2c9183404d7090ee014d709d8f7e0010', '402881e8461795c201461795c2e90000', '1432113483', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 17:18:03', NULL, 'gh_b2a51a1013e8'),
('2c9183404d7090ee014d709dafee0011', '402881e8461795c201461795c2e90000', '1432113491', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 17:18:11', NULL, 'gh_b2a51a1013e8'),
('2c9183404d7090ee014d70a622110012', '402881e8461795c201461795c2e90000', '1432114045', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 17:27:25', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70a742014d70a7fba70000', '402881e8461795c201461795c2e90000', '1432114166', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 17:29:26', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70a742014d70a8fc320001', '402881e8461795c201461795c2e90000', '1432114232', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 17:30:32', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70a742014d70ab24d10003', '402881e8461795c201461795c2e90000', '1432114373', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 17:32:53', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70a742014d70ad87800004', '402881e8461795c201461795c2e90000', '1432114529', 'subscribe', '', 'oxIKHuN_5qX4wP2f3ifILiGdT0j0', NULL, NULL, 'event', NULL, '2015-05-20 17:35:30', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70a742014d70ad9fdd0006', '402881e8461795c201461795c2e90000', '1432114536', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuN_5qX4wP2f3ifILiGdT0j0', NULL, NULL, 'event', NULL, '2015-05-20 17:35:36', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70a742014d70adcdd50007', '402881e8461795c201461795c2e90000', '1432114548', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuN_5qX4wP2f3ifILiGdT0j0', NULL, NULL, 'event', NULL, '2015-05-20 17:35:48', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70a742014d70ae120f0008', '402881e8461795c201461795c2e90000', '1432114565', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 17:36:05', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70a742014d70ae799f0009', '402881e8461795c201461795c2e90000', '1432114592', 'CLICK', 'lxwm', 'oxIKHuN_5qX4wP2f3ifILiGdT0j0', NULL, NULL, 'event', NULL, '2015-05-20 17:36:32', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70a742014d70ae91c2000a', '402881e8461795c201461795c2e90000', '1432114598', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goPage&page=leaveMsg&accountid=402881e8461795c201461795c2e90000', 'oxIKHuN_5qX4wP2f3ifILiGdT0j0', NULL, NULL, 'event', NULL, '2015-05-20 17:36:38', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70b41a014d70b838900000', '402881e8461795c201461795c2e90000', '1432115230', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goPage&page=leaveMsg&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 17:47:10', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70b41a014d70b9fe340003', '402881e8461795c201461795c2e90000', '1432115346', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 17:49:06', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70b41a014d70d58b090004', '402881e8461795c201461795c2e90000', '1432117152', 'unsubscribe', '', 'oxIKHuN_5qX4wP2f3ifILiGdT0j0', NULL, NULL, 'event', NULL, '2015-05-20 18:19:12', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70b41a014d7175752f0005', '402881e8461795c201461795c2e90000', '1432127632', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 21:13:52', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70b41a014d7175e4f70006', '402881e8461795c201461795c2e90000', '1432127661', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goPage&page=leaveMsg&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 21:14:21', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70b41a014d717613920007', '402881e8461795c201461795c2e90000', '1432127673', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goPage&page=leaveMsg&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 21:14:33', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70b41a014d717625020008', '402881e8461795c201461795c2e90000', '1432127677', 'VIEW', 'http://yhsoft.duapp.com/', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 21:14:37', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70b41a014d717641840009', '402881e8461795c201461795c2e90000', '1432127684', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 21:14:44', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70b41a014d71764ea7000a', '402881e8461795c201461795c2e90000', '1432127688', 'CLICK', 'lxwm', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 21:14:48', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70b41a014d717671b1000b', '402881e8461795c201461795c2e90000', '1432127694', 'CLICK', 'toupiao', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 21:14:57', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70b41a014d717694d6000c', '402881e8461795c201461795c2e90000', '1432127706', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 21:15:06', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70b41a014d7176c1be000d', '402881e8461795c201461795c2e90000', '1432127717', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 21:15:17', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70b41a014d7176d19b000e', '402881e8461795c201461795c2e90000', '1432127721', 'CLICK', 'toupiao', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 21:15:21', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70b41a014d71b2b0f5000f', '402881e8461795c201461795c2e90000', '1432131645', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuJyYW9gjC1jqaioaylaeqy0', NULL, NULL, 'event', NULL, '2015-05-20 22:20:45', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70b41a014d71b2f78d0010', '402881e8461795c201461795c2e90000', '1432131663', 'CLICK', 'toupiao', 'oxIKHuJyYW9gjC1jqaioaylaeqy0', NULL, NULL, 'event', NULL, '2015-05-20 22:21:03', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70b41a014d71b306d40011', '402881e8461795c201461795c2e90000', '1432131667', 'CLICK', 'c0204', 'oxIKHuJyYW9gjC1jqaioaylaeqy0', NULL, NULL, 'event', NULL, '2015-05-20 22:21:07', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70b41a014d71b31c900012', '402881e8461795c201461795c2e90000', '1432131673', 'CLICK', 'c0201', 'oxIKHuJyYW9gjC1jqaioaylaeqy0', NULL, NULL, 'event', NULL, '2015-05-20 22:21:13', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70b41a014d71b33a170013', '402881e8461795c201461795c2e90000', '1432131680', 'VIEW', 'http://yhsoft.duapp.com/', 'oxIKHuJyYW9gjC1jqaioaylaeqy0', NULL, NULL, 'event', NULL, '2015-05-20 22:21:20', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70b41a014d71b3805f0014', '402881e8461795c201461795c2e90000', '1432131698', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goPage&page=leaveMsg&accountid=402881e8461795c201461795c2e90000', 'oxIKHuJyYW9gjC1jqaioaylaeqy0', NULL, NULL, 'event', NULL, '2015-05-20 22:21:38', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70b41a014d74135e250016', '402881e8461795c201461795c2e90000', '1432171535', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-21 09:25:35', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70b41a014d741b58a2001d', '402881e8461795c201461795c2e90000', '1432172058', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-21 09:34:18', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70b41a014d742287020022', '402881e8461795c201461795c2e90000', '1432172529', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-21 09:42:09', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70b41a014d74280a8f0023', '402881e8461795c201461795c2e90000', '1432172890', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-21 09:48:10', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70b41a014d742adeaa0024', '402881e8461795c201461795c2e90000', '1432173076', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-21 09:51:16', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70b41a014d74349b6c0026', '402881e8461795c201461795c2e90000', '1432173714', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-21 10:01:54', NULL, 'gh_b2a51a1013e8'),
('2c9183404d70b41a014d743f169b0027', '402881e8461795c201461795c2e90000', '1432174400', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-21 10:13:21', NULL, 'gh_b2a51a1013e8'),
('2c9183404d744024014d744584e50002', '402881e8461795c201461795c2e90000', '1432174822', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-21 10:20:22', NULL, 'gh_b2a51a1013e8'),
('2c9183404d744024014d74480e470005', '402881e8461795c201461795c2e90000', '1432174988', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-21 10:23:08', NULL, 'gh_b2a51a1013e8'),
('2c9183404d744966014d744a96e50001', '402881e8461795c201461795c2e90000', '1432175153', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-21 10:25:54', NULL, 'gh_b2a51a1013e8'),
('2c9183404d744966014d745765e30002', '402881e8461795c201461795c2e90000', '1432175994', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-21 10:39:54', NULL, 'gh_b2a51a1013e8'),
('2c9183404d744966014d7457902d0003', '402881e8461795c201461795c2e90000', '1432176005', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-21 10:40:05', NULL, 'gh_b2a51a1013e8'),
('2c9183404d744966014d7457d7520004', '402881e8461795c201461795c2e90000', '1432176023', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-21 10:40:23', NULL, 'gh_b2a51a1013e8'),
('2c9183404d74599c014d7459f4170000', '402881e8461795c201461795c2e90000', '1432176158', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-21 10:42:41', NULL, 'gh_b2a51a1013e8'),
('2c9183404d745d85014d7460167a0002', '402881e8461795c201461795c2e90000', '1432176563', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-21 10:49:23', NULL, 'gh_b2a51a1013e8'),
('2c9183404d746b62014d74732f110002', '402881e8461795c201461795c2e90000', '1432177815', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-21 11:10:15', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747549014d74793edb0003', '402881e8461795c201461795c2e90000', '1432178212', 'CLICK', 'c0201', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-21 11:16:52', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747b19014d747c1d160000', '402881e8461795c201461795c2e90000', '1432178400', 'VIEW', 'http://yhsoft.duapp.com/', 'oxIKHuH2JUGKxJ3N5_4fGjQRn6ks', NULL, NULL, 'event', NULL, '2015-05-21 11:20:00', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747b19014d747d1b210001', '402881e8461795c201461795c2e90000', '1432178465', 'CLICK', 'c0201', 'oxIKHuH2JUGKxJ3N5_4fGjQRn6ks', NULL, NULL, 'event', NULL, '2015-05-21 11:21:05', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747b19014d747d4cc80002', '402881e8461795c201461795c2e90000', '1432178478', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuH2JUGKxJ3N5_4fGjQRn6ks', NULL, NULL, 'event', NULL, '2015-05-21 11:21:18', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747b19014d747da8e80003', '402881e8461795c201461795c2e90000', '1432178501', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuH2JUGKxJ3N5_4fGjQRn6ks', NULL, NULL, 'event', NULL, '2015-05-21 11:21:41', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747e5d014d747ebcdf0000', '402881e8461795c201461795c2e90000', '1432178520', 'unsubscribe', '', 'oxIKHuH2JUGKxJ3N5_4fGjQRn6ks', NULL, NULL, 'event', NULL, '2015-05-21 11:22:52', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747e5d014d747ebcdf0001', '402881e8461795c201461795c2e90000', '1432178520', 'unsubscribe', '', 'oxIKHuH2JUGKxJ3N5_4fGjQRn6ks', NULL, NULL, 'event', NULL, '2015-05-21 11:22:52', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747e5d014d747ebcdf0002', '402881e8461795c201461795c2e90000', '1432178520', 'unsubscribe', '', 'oxIKHuH2JUGKxJ3N5_4fGjQRn6ks', NULL, NULL, 'event', NULL, '2015-05-21 11:22:52', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747e5d014d7480f7d00003', '402881e8461795c201461795c2e90000', '1432178718', 'subscribe', '', 'oxIKHuAtrEvfufwPIqnELZ6FsjyM', NULL, NULL, 'event', NULL, '2015-05-21 11:25:18', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747e5d014d748111630005', '402881e8461795c201461795c2e90000', '1432178725', 'CLICK', 'toupiao', 'oxIKHuAtrEvfufwPIqnELZ6FsjyM', NULL, NULL, 'event', NULL, '2015-05-21 11:25:25', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747e5d014d74811acf0006', '402881e8461795c201461795c2e90000', '1432178727', 'CLICK', 'c0204', 'oxIKHuAtrEvfufwPIqnELZ6FsjyM', NULL, NULL, 'event', NULL, '2015-05-21 11:25:27', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747e5d014d74812bd60007', '402881e8461795c201461795c2e90000', '1432178731', 'VIEW', 'http://yhsoft.duapp.com/', 'oxIKHuAtrEvfufwPIqnELZ6FsjyM', NULL, NULL, 'event', NULL, '2015-05-21 11:25:31', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747e5d014d748158a10008', '402881e8461795c201461795c2e90000', '1432178743', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goPage&page=leaveMsg&accountid=402881e8461795c201461795c2e90000', 'oxIKHuAtrEvfufwPIqnELZ6FsjyM', NULL, NULL, 'event', NULL, '2015-05-21 11:25:43', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747e5d014d748169040009', '402881e8461795c201461795c2e90000', '1432178747', 'CLICK', 'lxwm', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-21 11:25:47', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747e5d014d74817104000a', '402881e8461795c201461795c2e90000', '1432178749', 'CLICK', 'lxwm', 'oxIKHuAtrEvfufwPIqnELZ6FsjyM', NULL, NULL, 'event', NULL, '2015-05-21 11:25:49', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747e5d014d7481d751000b', '402881e8461795c201461795c2e90000', '1432178775', 'CLICK', 'lxwm', 'oxIKHuAtrEvfufwPIqnELZ6FsjyM', NULL, NULL, 'event', NULL, '2015-05-21 11:26:15', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747e5d014d7488db41000c', '402881e8461795c201461795c2e90000', '1432179235', 'CLICK', 'c0201', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-21 11:33:55', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747e5d014d7490381b000d', '402881e8461795c201461795c2e90000', '1432179717', 'subscribe', '', 'oxIKHuGZq28bxzXTQOcg9N2CZ07w', NULL, NULL, 'event', NULL, '2015-05-21 11:41:58', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747e5d014d749092f3000f', '402881e8461795c201461795c2e90000', '1432179741', 'subscribe', '', 'oxIKHuPeJmtgsvt7UOxIlGiPNW30', NULL, NULL, 'event', NULL, '2015-05-21 11:42:21', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747e5d014d74a0a74e0011', '402881e8461795c201461795c2e90000', '1432180795', 'subscribe', '', 'oxIKHuCmwXuAVEDqBQ0WgwAEg5y8', NULL, NULL, 'event', NULL, '2015-05-21 11:59:55', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747e5d014d74a0d6f50013', '402881e8461795c201461795c2e90000', '1432180807', 'CLICK', 'toupiao', 'oxIKHuCmwXuAVEDqBQ0WgwAEg5y8', NULL, NULL, 'event', NULL, '2015-05-21 12:00:07', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747e5d014d74a0e3f10014', '402881e8461795c201461795c2e90000', '1432180810', 'CLICK', 'c0204', 'oxIKHuCmwXuAVEDqBQ0WgwAEg5y8', NULL, NULL, 'event', NULL, '2015-05-21 12:00:10', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747e5d014d74a0f1880015', '402881e8461795c201461795c2e90000', '1432180814', 'CLICK', 'c0201', 'oxIKHuCmwXuAVEDqBQ0WgwAEg5y8', NULL, NULL, 'event', NULL, '2015-05-21 12:00:14', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747e5d014d74a118f30016', '402881e8461795c201461795c2e90000', '1432180824', 'CLICK', 'lxwm', 'oxIKHuCmwXuAVEDqBQ0WgwAEg5y8', NULL, NULL, 'event', NULL, '2015-05-21 12:00:24', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747e5d014d74a121c20017', '402881e8461795c201461795c2e90000', '1432180826', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuCmwXuAVEDqBQ0WgwAEg5y8', NULL, NULL, 'event', NULL, '2015-05-21 12:00:26', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747e5d014d74a150ec0018', '402881e8461795c201461795c2e90000', '1432180838', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goPage&page=leaveMsg&accountid=402881e8461795c201461795c2e90000', 'oxIKHuCmwXuAVEDqBQ0WgwAEg5y8', NULL, NULL, 'event', NULL, '2015-05-21 12:00:38', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747e5d014d74a194930019', '402881e8461795c201461795c2e90000', '1432180855', 'VIEW', 'http://yhsoft.duapp.com/', 'oxIKHuCmwXuAVEDqBQ0WgwAEg5y8', NULL, NULL, 'event', NULL, '2015-05-21 12:00:55', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747e5d014d74d4fa89001a', '402881e8461795c201461795c2e90000', '1432184224', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-21 12:57:04', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747e5d014d74d5d7ad001b', '402881e8461795c201461795c2e90000', '1432184280', 'CLICK', 'c0201', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-21 12:58:01', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747e5d014d74d5f931001c', '402881e8461795c201461795c2e90000', '1432184289', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-21 12:58:09', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747e5d014d74d65521001d', '402881e8461795c201461795c2e90000', '1432184313', 'CLICK', 'toupiao', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-21 12:58:33', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747e5d014d74d7d2d0001e', '402881e8461795c201461795c2e90000', '1432184410', 'subscribe', '', 'oxIKHuIS0cJZiP-XwW1fuBYoAvyI', NULL, NULL, 'event', NULL, '2015-05-21 13:00:10', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747e5d014d74eda3a30020', '402881e8461795c201461795c2e90000', '1432185840', 'VIEW', 'http://yhsoft.duapp.com/', 'oxIKHuGZq28bxzXTQOcg9N2CZ07w', NULL, NULL, 'event', NULL, '2015-05-21 13:24:00', NULL, 'gh_b2a51a1013e8'),
('2c9183404d747e5d014d74eeb1ff0021', '402881e8461795c201461795c2e90000', '1432185909', 'CLICK', 'c0201', 'oxIKHuGZq28bxzXTQOcg9N2CZ07w', NULL, NULL, 'event', NULL, '2015-05-21 13:25:09', NULL, 'gh_b2a51a1013e8'),
('2c9183404d74f79b014d755a0a020000', '402881e8461795c201461795c2e90000', '1432192943', 'CLICK', 'c0201', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-21 15:22:24', NULL, 'gh_b2a51a1013e8'),
('2c9183404d74f79b014d75e9d0f50004', '402881e8461795c201461795c2e90000', '1432202367', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-21 17:59:27', NULL, 'gh_b2a51a1013e8'),
('2c9183404d74f79b014d75ea0bb60005', '402881e8461795c201461795c2e90000', '1432202382', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-21 17:59:42', NULL, 'gh_b2a51a1013e8'),
('2c9183404d74f79b014d75ea68740006', '402881e8461795c201461795c2e90000', '1432202405', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goPage&page=leaveMsg&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-21 18:00:06', NULL, 'gh_b2a51a1013e8'),
('2c9183404d7934b4014d79379c1e0001', '402881e8461795c201461795c2e90000', '1432257796', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-22 09:23:17', NULL, 'gh_b2a51a1013e8'),
('2c9183404d7938da014d793938380000', '402881e8461795c201461795c2e90000', '1432257874', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-22 09:25:02', NULL, 'gh_b2a51a1013e8'),
('2c9183404d7938da014d793938380001', '402881e8461795c201461795c2e90000', '1432257874', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-22 09:25:02', NULL, 'gh_b2a51a1013e8'),
('2c9183404d7938da014d7939383b0002', '402881e8461795c201461795c2e90000', '1432257837', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-22 09:25:02', NULL, 'gh_b2a51a1013e8'),
('2c9183404d7938da014d793938890003', '402881e8461795c201461795c2e90000', '1432257899', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-22 09:25:02', NULL, 'gh_b2a51a1013e8'),
('2c9183404d7938da014d793938890004', '402881e8461795c201461795c2e90000', '1432257837', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-22 09:25:02', NULL, 'gh_b2a51a1013e8'),
('2c9183404d7938da014d793938ef0005', '402881e8461795c201461795c2e90000', '1432257874', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-22 09:25:02', NULL, 'gh_b2a51a1013e8'),
('2c9183404d7938da014d793a709c0008', '402881e8461795c201461795c2e90000', '1432257982', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-22 09:26:22', NULL, 'gh_b2a51a1013e8'),
('2c9183404d7938da014d793d2450000c', '402881e8461795c201461795c2e90000', '1432258159', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-22 09:29:19', NULL, 'gh_b2a51a1013e8'),
('2c9183404d7938da014d793e5a360010', '402881e8461795c201461795c2e90000', '1432258238', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-22 09:30:39', NULL, 'gh_b2a51a1013e8'),
('2c9183404d7938da014d793f4b460014', '402881e8461795c201461795c2e90000', '1432258300', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-22 09:31:40', NULL, 'gh_b2a51a1013e8'),
('2c9183404d7940a0014d7940f82f0000', '402881e8461795c201461795c2e90000', '1432258383', 'CLICK', 'c0201', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-22 09:33:30', NULL, 'gh_b2a51a1013e8'),
('2c9183404d7940a0014d7940f82f0001', '402881e8461795c201461795c2e90000', '1432258383', 'CLICK', 'c0201', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-22 09:33:30', NULL, 'gh_b2a51a1013e8'),
('2c9183404d7940a0014d7940f82f0002', '402881e8461795c201461795c2e90000', '1432258383', 'CLICK', 'c0201', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-22 09:33:30', NULL, 'gh_b2a51a1013e8'),
('2c9183404d7940a0014d79421b620004', '402881e8461795c201461795c2e90000', '1432258485', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-22 09:34:45', NULL, 'gh_b2a51a1013e8'),
('2c9183404d944223014d9445439d0002', '402881e8461795c201461795c2e90000', '1432711676', 'CLICK', 'gsdlxx', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-27 15:27:56', NULL, 'gh_b2a51a1013e8'),
('2c9183404d944223014d944566a30003', '402881e8461795c201461795c2e90000', '1432711685', 'CLICK', 'gsdlxx', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-27 15:28:05', NULL, 'gh_b2a51a1013e8'),
('2c9183404d944223014d9445f78a0005', '402881e8461795c201461795c2e90000', '1432711722', 'CLICK', 'toupiao', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-27 15:28:42', NULL, 'gh_b2a51a1013e8'),
('2c9183404d944223014d944605c30006', '402881e8461795c201461795c2e90000', '1432711726', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-27 15:28:46', NULL, 'gh_b2a51a1013e8'),
('2c9183404d944223014d9510a5ac0008', '402881e8461795c201461795c2e90000', '1432725005', 'CLICK', 'toupiao', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-27 19:10:05', NULL, 'gh_b2a51a1013e8');
INSERT INTO `weixin_receiveevent` (`ID`, `accountid`, `createtime`, `events`, `eventkey`, `fromusername`, `latitude`, `longitude`, `msgtype`, `precisions`, `receivetime`, `ticket`, `tousername`) VALUES
('2c9183404d944223014d95111e660009', '402881e8461795c201461795c2e90000', '1432725036', 'CLICK', 'toupiao', 'oxIKHuN4X5Z9ExmXjSpLagOr-tIg', NULL, NULL, 'event', NULL, '2015-05-27 19:10:36', NULL, 'gh_b2a51a1013e8'),
('2c9183404d944223014d951137ae000a', '402881e8461795c201461795c2e90000', '1432725043', 'CLICK', 'c0204', 'oxIKHuN4X5Z9ExmXjSpLagOr-tIg', NULL, NULL, 'event', NULL, '2015-05-27 19:10:43', NULL, 'gh_b2a51a1013e8'),
('2c9183404d944223014d95114c6c000b', '402881e8461795c201461795c2e90000', '1432725048', 'CLICK', 'gsdlxx', 'oxIKHuN4X5Z9ExmXjSpLagOr-tIg', NULL, NULL, 'event', NULL, '2015-05-27 19:10:48', NULL, 'gh_b2a51a1013e8'),
('2c9183404d944223014d951170e8000c', '402881e8461795c201461795c2e90000', '1432725057', 'CLICK', 'gsdlxx', 'oxIKHuN4X5Z9ExmXjSpLagOr-tIg', NULL, NULL, 'event', NULL, '2015-05-27 19:10:57', NULL, 'gh_b2a51a1013e8'),
('2c9183404d944223014d95119a98000d', '402881e8461795c201461795c2e90000', '1432725068', 'CLICK', 'gsdlxx', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-27 19:11:08', NULL, 'gh_b2a51a1013e8'),
('2c9183404d944223014d9511b021000e', '402881e8461795c201461795c2e90000', '1432725073', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-27 19:11:13', NULL, 'gh_b2a51a1013e8'),
('2c9183404d944223014d9512ccda000f', '402881e8461795c201461795c2e90000', '1432725146', 'CLICK', 'gsdlxx', 'oxIKHuN4X5Z9ExmXjSpLagOr-tIg', NULL, NULL, 'event', NULL, '2015-05-27 19:12:26', NULL, 'gh_b2a51a1013e8'),
('2c9183404d944223014d9512e2b80010', '402881e8461795c201461795c2e90000', '1432725152', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-27 19:12:32', NULL, 'gh_b2a51a1013e8'),
('2c9183404d944223014d951368b80011', '402881e8461795c201461795c2e90000', '1432725186', 'CLICK', 'toupiao', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-27 19:13:06', NULL, 'gh_b2a51a1013e8'),
('2c9183404d944223014d951d36bd0012', '402881e8461795c201461795c2e90000', '1432725829', 'CLICK', 'c0204', 'oxIKHuN4X5Z9ExmXjSpLagOr-tIg', NULL, NULL, 'event', NULL, '2015-05-27 19:23:49', NULL, 'gh_b2a51a1013e8'),
('2c9183404d944223014d9637ceb40014', '402881e8461795c201461795c2e90000', '1432744349', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-28 00:32:29', NULL, 'gh_b2a51a1013e8'),
('2c9183404d944223014d9d0ce1af0015', '402881e8461795c201461795c2e90000', '1432858976', 'VIEW', 'http://yhsoft.duapp.com/', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-29 08:22:56', NULL, 'gh_b2a51a1013e8'),
('2c9183404d944223014d9d0fe70c0016', '402881e8461795c201461795c2e90000', '1432859174', 'CLICK', 'c0201', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-29 08:26:14', NULL, 'gh_b2a51a1013e8'),
('2c9183404d944223014da867cd810018', '402881e8461795c201461795c2e90000', '1433049484', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuJL1j8enWsdg3nEyWPW1puk', NULL, NULL, 'event', NULL, '2015-05-31 13:18:04', NULL, 'gh_b2a51a1013e8'),
('2c9183404d944223014da8682aa80019', '402881e8461795c201461795c2e90000', '1433049508', 'VIEW', 'http://yhsoft.duapp.com/', 'oxIKHuJL1j8enWsdg3nEyWPW1puk', NULL, NULL, 'event', NULL, '2015-05-31 13:18:28', NULL, 'gh_b2a51a1013e8'),
('2c9183404d944223014da8685b19001a', '402881e8461795c201461795c2e90000', '1433049520', 'CLICK', 'toupiao', 'oxIKHuJL1j8enWsdg3nEyWPW1puk', NULL, NULL, 'event', NULL, '2015-05-31 13:18:40', NULL, 'gh_b2a51a1013e8'),
('2c9183534d70353e014d70380cad0003', '402881e8461795c201461795c2e90000', '1432106830', 'VIEW', 'http://yhsoft.duapp.com/guanyuwomen.html', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 15:27:11', NULL, 'gh_b2a51a1013e8'),
('2c9183534d70353e014d703945590006', '402881e8461795c201461795c2e90000', '1432106910', 'CLICK', 'lxwm', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 15:28:31', NULL, 'gh_b2a51a1013e8'),
('2c9183534d70353e014d7039655e0007', '402881e8461795c201461795c2e90000', '1432106919', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 15:28:39', NULL, 'gh_b2a51a1013e8'),
('2c9183534d70353e014d703995530008', '402881e8461795c201461795c2e90000', '1432106931', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 15:28:51', NULL, 'gh_b2a51a1013e8'),
('2c9183534d70353e014d7039aa020009', '402881e8461795c201461795c2e90000', '1432106936', 'VIEW', 'http://yhsoft.duapp.com/', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 15:28:56', NULL, 'gh_b2a51a1013e8'),
('2c9183534d703aa3014d703b00fe0000', '402881e8461795c201461795c2e90000', '1432106981', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 15:30:24', NULL, 'gh_b2a51a1013e8'),
('2c9183534d703aa3014d703b00fe0001', '402881e8461795c201461795c2e90000', '1432106981', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 15:30:24', NULL, 'gh_b2a51a1013e8'),
('2c9183534d703aa3014d703b00fe0002', '402881e8461795c201461795c2e90000', '1432106981', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 15:30:24', NULL, 'gh_b2a51a1013e8'),
('2c9183534d703aa3014d703b1efc0003', '402881e8461795c201461795c2e90000', '1432107032', 'CLICK', 'toupiao', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 15:30:32', NULL, 'gh_b2a51a1013e8'),
('2c9183534d703aa3014d703b3b500004', '402881e8461795c201461795c2e90000', '1432107039', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 15:30:39', NULL, 'gh_b2a51a1013e8'),
('2c9183534d703aa3014d703b5da60005', '402881e8461795c201461795c2e90000', '1432107048', 'VIEW', 'http://yhsoft.duapp.com/', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 15:30:48', NULL, 'gh_b2a51a1013e8'),
('2c9183534d703aa3014d703b6f0e0006', '402881e8461795c201461795c2e90000', '1432107052', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goPage&page=leaveMsg&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 15:30:52', NULL, 'gh_b2a51a1013e8'),
('2c9183534d703aa3014d703b97d30007', '402881e8461795c201461795c2e90000', '1432107063', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 15:31:03', NULL, 'gh_b2a51a1013e8'),
('2c9183534d703aa3014d703d1fa90008', '402881e8461795c201461795c2e90000', '1432107163', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 15:32:43', NULL, 'gh_b2a51a1013e8'),
('2c9183534d703e9c014d703f01550000', '402881e8461795c201461795c2e90000', '1432107259', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 15:34:46', NULL, 'gh_b2a51a1013e8'),
('2c9183534d703e9c014d703f01550001', '402881e8461795c201461795c2e90000', '1432107259', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 15:34:46', NULL, 'gh_b2a51a1013e8'),
('2c9183534d703e9c014d703f01550002', '402881e8461795c201461795c2e90000', '1432107259', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 15:34:46', NULL, 'gh_b2a51a1013e8'),
('2c9183534d704ccf014d705461ac0005', '402881e8461795c201461795c2e90000', '1432108687', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 15:58:07', NULL, 'gh_b2a51a1013e8'),
('2c9183534d704ccf014d7058431b0006', '402881e8461795c201461795c2e90000', '1432108942', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 16:02:22', NULL, 'gh_b2a51a1013e8'),
('2c9183534d704ccf014d705c7fc60007', '402881e8461795c201461795c2e90000', '1432109219', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 16:06:59', NULL, 'gh_b2a51a1013e8'),
('2c9183534d704ccf014d705e6d920008', '402881e8461795c201461795c2e90000', '1432109346', 'subscribe', '', 'oxIKHuN_5qX4wP2f3ifILiGdT0j0', NULL, NULL, 'event', NULL, '2015-05-20 16:09:06', NULL, 'gh_b2a51a1013e8'),
('2c9183534d704ccf014d705e9b5b000a', '402881e8461795c201461795c2e90000', '1432109357', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuN_5qX4wP2f3ifILiGdT0j0', NULL, NULL, 'event', NULL, '2015-05-20 16:09:17', NULL, 'gh_b2a51a1013e8'),
('2c9183534d704ccf014d705edad3000b', '402881e8461795c201461795c2e90000', '1432109374', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuN_5qX4wP2f3ifILiGdT0j0', NULL, NULL, 'event', NULL, '2015-05-20 16:09:34', NULL, 'gh_b2a51a1013e8'),
('2c9183534d704ccf014d705ee43c000c', '402881e8461795c201461795c2e90000', '1432109376', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuN_5qX4wP2f3ifILiGdT0j0', NULL, NULL, 'event', NULL, '2015-05-20 16:09:36', NULL, 'gh_b2a51a1013e8'),
('2c9183534d704ccf014d705f9fe9000d', '402881e8461795c201461795c2e90000', '1432109424', 'unsubscribe', '', 'oxIKHuN_5qX4wP2f3ifILiGdT0j0', NULL, NULL, 'event', NULL, '2015-05-20 16:10:24', NULL, 'gh_b2a51a1013e8'),
('2c9183534d704ccf014d7066775d000f', '402881e8461795c201461795c2e90000', '1432109872', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 16:17:52', NULL, 'gh_b2a51a1013e8'),
('2c9183534d704ccf014d70682faf0010', '402881e8461795c201461795c2e90000', '1432109985', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 16:19:45', NULL, 'gh_b2a51a1013e8'),
('2c9183534d704ccf014d7069f08b0011', '402881e8461795c201461795c2e90000', '1432110100', 'VIEW', 'http://yhsoft.duapp.com/', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 16:21:40', NULL, 'gh_b2a51a1013e8'),
('2c9183534d704ccf014d706a26650012', '402881e8461795c201461795c2e90000', '1432110114', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', NULL, NULL, 'event', NULL, '2015-05-20 16:21:54', NULL, 'gh_b2a51a1013e8'),
('2c9183534d704ccf014d7072da3c0013', '402881e8461795c201461795c2e90000', '1432110684', 'subscribe', '', 'oxIKHuMCQLukfzl8nr71PwSqhAUk', NULL, NULL, 'event', NULL, '2015-05-20 16:31:24', NULL, 'gh_b2a51a1013e8');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_receivetext`
--

CREATE TABLE IF NOT EXISTS `weixin_receivetext` (
  `ID` varchar(32) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `fromusername` varchar(255) DEFAULT NULL,
  `msgid` varchar(255) DEFAULT NULL,
  `msgtype` varchar(255) DEFAULT NULL,
  `rescontent` varchar(255) DEFAULT NULL,
  `response` varchar(255) DEFAULT NULL,
  `tousername` varchar(255) DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  `nickname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_receivetext`
--

INSERT INTO `weixin_receivetext` (`ID`, `content`, `createtime`, `fromusername`, `msgid`, `msgtype`, `rescontent`, `response`, `tousername`, `accountid`, `nickname`) VALUES
('2c91811a4d5fd051014d5fd2981b0001', 'hhhs', '2015-05-17 11:02:26', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6149670522650506094', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', NULL),
('2c91811a4d5fd051014d5fd2f3810002', 'test', '2015-05-17 11:02:49', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6149670621434753924', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', NULL),
('2c91811a4d5fd051014d5fd358670003', '你好', '2015-05-17 11:03:15', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6149670733103903633', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', NULL),
('2c91811a4d5fd051014d5fd449c20004', '就是就是就是', '2015-05-17 11:04:17', 'oxIKHuMKrjHBKjwXp0znQ982gF3w', '6149670999391876008', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', NULL),
('2c91811a4d5fd051014d5fd4b8e20006', '让人', '2015-05-17 11:04:46', 'oxIKHuMKrjHBKjwXp0znQ982gF3w', '6149671119650960314', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', NULL),
('2c91811a4d5fd051014d5fd4ca6d0007', '你好', '2015-05-17 11:04:50', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6149671141125796798', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', NULL),
('2c91811a4d5fd051014d5fd4fcae0008', '你好', '2015-05-17 11:05:03', 'oxIKHuMKrjHBKjwXp0znQ982gF3w', '6149671196960371653', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', NULL),
('2c91811a4d60d054014d60d0bd0f000f', '你好', '2015-05-17 15:40:01', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6149741587179392695', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', NULL),
('2c91811a4d60d054014d60d0bd700010', '你好', '2015-05-17 15:40:01', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6149741587179392695', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', NULL),
('2c91811a4d60d054014d60d0bd740011', '你好', '2015-05-17 15:40:01', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6149741587179392695', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', NULL),
('2c91811a4d60d054014d60e407e40012', '你好', '2015-05-17 16:01:06', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6149747488464457964', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', NULL),
('2c91811a4d60d054014d615ec1340027', '你好', '2015-05-17 18:15:09', 'oxIKHuDZzZ6POzJe8uQlSqkb9X2Y', '6149782032886423278', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', NULL),
('2c91811a4d60d054014d646d0930002a', '解决了', '2015-05-18 08:29:36', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150002222974804446', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', NULL),
('2c91811a4d60d054014d6543957b002b', '你好', '2015-05-18 12:23:57', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150062614509962479', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', NULL),
('2c91811a4d60d054014d65bab96d0073', '看看', '2015-05-18 14:34:05', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150096149614613265', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/'),
('2c91811a4d60d054014d66072bf90099', '解决了', '2015-05-18 15:57:35', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150117667400769049', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/'),
('2c91811a4d60d054014d660d3dc200a2', '看看', '2015-05-18 16:04:13', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150119376797753096', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/'),
('2c91811a4d60d054014d660d536c00a3', '途径', '2015-05-18 16:04:18', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150119398272589582', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/'),
('2c91811a4d60d054014d660d768100a4', '露露', '2015-05-18 16:04:27', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150119436927295254', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/'),
('2c91811a4d60d054014d6611013b00a7', '是啊', '2015-05-18 16:08:20', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150120433359708037', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/'),
('2c91811a4d60d054014d661406e300ae', '看看', '2015-05-18 16:11:38', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150121283763232752', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/'),
('2c91811a4d60d054014d6614184e00af', '吧唧', '2015-05-18 16:11:42', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150121305238069239', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/'),
('2c91811a4d60d054014d66196ec800b7', '呵呵', '2015-05-18 16:17:32', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150122808476622980', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/'),
('2c91811a4d60d054014d6619817300b8', '把', '2015-05-18 16:17:37', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150122825656492168', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/'),
('2c91811a4d60d054014d6619916600b9', '看看', '2015-05-18 16:17:41', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150122847131328651', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/'),
('2c91811a4d60d054014d6645af1600c3', '好久', '2015-05-18 17:05:52', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150135263881784120', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/'),
('2c91811a4d667395014d66fed1740000', '你个', '2015-05-18 20:28:05', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150187370425028832', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/'),
('2c91811a4d667395014d66ffe5f70001', '你个', '2015-05-18 20:29:16', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150187675367706906', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/'),
('2c9182b94d6f6dbf014d6f6f2caa0002', '模块', '2015-05-20 11:47:46', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150795456189826381', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/'),
('2c9182b94d6f6dbf014d6f6f9a7a0004', '回老家了', '2015-05-20 11:48:14', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150795580743877982', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/'),
('2c9182b94d6f7cc7014d700c2a430009', '地理课', '2015-05-20 14:39:14', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150839647108341601', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/'),
('2c9183404d7090ee014d709440ce0003', '看看', '2015-05-20 17:07:53', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150877953921661879', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/'),
('2c9183404d7090ee014d7094fd2d0006', '1144', '2015-05-20 17:08:41', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150878160080092139', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/'),
('2c9183404d7090ee014d7096671d0008', '.com', '2015-05-20 17:10:14', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150878559512050810', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/'),
('2c9183404d70a742014d70ab11610002', '图', '2015-05-20 17:32:48', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150884374897771101', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/'),
('2c9183404d70b41a014d7417f3d8001c', '你好。。', '2015-05-21 09:30:36', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6151131189488424951', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/'),
('2c9183404d70b41a014d741e94700020', '会', '2015-05-21 09:37:50', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6151133062094166161', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/'),
('2c9183404d70b41a014d741ec5360021', '垃圾', '2015-05-21 09:38:03', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6151133113633773716', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/'),
('2c9183404d744024014d7444facc0001', '赶过来', '2015-05-21 10:19:47', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6151143868231884111', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/'),
('2c9183404d746b62014d7472fe3a0001', '回来了', '2015-05-21 11:10:02', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6151156821853250476', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/'),
('2c9183404d747549014d747914840002', '解决了', '2015-05-21 11:16:41', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6151158535545201794', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/'),
('2c9183534d70353e014d70383b4f0004', '图', '2015-05-20 15:27:22', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150852050973894237', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/'),
('2c9183534d70353e014d70384ed30005', '垃圾', '2015-05-20 15:27:27', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150852072448730719', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/'),
('2c9183534d703e9c014d703f26470003', '来', '2015-05-20 15:34:56', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150854000889046928', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/'),
('2c9183534d704ccf014d70536e080004', '呵呵', '2015-05-20 15:57:05', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150859708900584145', 'text', NULL, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_shop_address`
--

CREATE TABLE IF NOT EXISTS `weixin_shop_address` (
  `id` varchar(36) NOT NULL,
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `accountid` varchar(50) DEFAULT NULL COMMENT '公众帐号ID',
  `openid` varchar(50) DEFAULT NULL COMMENT '用户ID',
  `userid` varchar(50) DEFAULT NULL COMMENT '用户ID2',
  `province` varchar(50) DEFAULT NULL COMMENT '省份',
  `city` varchar(50) DEFAULT NULL COMMENT '城市',
  `area` varchar(50) DEFAULT NULL COMMENT '县区',
  `address` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `realname` varchar(50) DEFAULT NULL COMMENT '收件人姓名',
  `tel` varchar(50) DEFAULT NULL COMMENT '收件人电话',
  `postno` varchar(10) DEFAULT NULL COMMENT '邮编',
  `alladdress` varchar(500) DEFAULT NULL,
  `defaultflag` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_shop_address`
--

INSERT INTO `weixin_shop_address` (`id`, `create_name`, `create_date`, `update_name`, `update_date`, `accountid`, `openid`, `userid`, `province`, `city`, `area`, `address`, `realname`, `tel`, `postno`, `alladdress`, `defaultflag`) VALUES
('402880e447cffc4b0147d00267a80007', '1111', '2014-08-13 23:35:24', '1111', '2014-08-13 23:35:32', '402881e8461795c201461795c2e90000', '4028bce447cf8bda0147cf9047090006', '4028bce447cf8bda0147cf9047090006', '山西省,', '阳泉市', '', '1212', '1212', NULL, NULL, '山西省,阳泉市12121212null', '1'),
('402880e447d2f1fb0147d2f89ec80008', 'scott1', '2014-08-14 13:23:34', NULL, NULL, NULL, '402880e447d2f1fb0147d2f580d40002', '402880e447d2f1fb0147d2f580d40002', '上海市', '地级市', '', '123', '123', '123', '123', '上海市地级市123123123', '0'),
('402880e447d2f1fb0147d2f8b80b000a', 'scott1', '2014-08-14 13:23:41', 'scott1', '2014-08-14 13:23:49', NULL, '402880e447d2f1fb0147d2f580d40002', '402880e447d2f1fb0147d2f580d40002', '省份', '地级市', '', '', '', '', '', '省份地级市', '1'),
('402880e447d7243d0147d732f935000a', '1', '2014-08-15 09:05:47', NULL, NULL, NULL, '402880e447d7243d0147d72ea3eb0002', '402880e447d7243d0147d72ea3eb0002', '上海市', '上海市', '', '123', '123', '123', '1231', '上海市上海市123123123', '0'),
('402881e6479b6c8601479b7091ee0004', 'admin', '2014-08-03 18:35:51', NULL, NULL, '402881e8461795c201461795c2e90000', '4028d881436d514601436d5215ac0043', '4028d881436d514601436d5215ac0043', '河南省', '郑州市', '', '文化路97号', '付明星', '18838231664', NULL, '河南省郑州市文化路97号付明星18838231664', '0'),
('f7a8a3a9487816f801487862ab1f0124', '', '2014-09-15 16:16:45', NULL, NULL, '402881e8461795c201461795c2e90000', 'f7a8a3a9487816f80148781e4cfc004b', 'f7a8a3a9487816f80148781e4cfc004b', '北京市', '北京市', '', '小区1号楼1单元101', '捷微', '01012345678', '100001', '北京市北京市小区1号楼1单元101捷微01012345678', '0'),
('f7a8a3a9487816f801487868de670137', 'ceshi', '2014-09-15 16:23:31', 'ceshi', '2014-09-15 16:25:51', '4028d881474489d70147449988040025', '402881e44648134a014648174a45000c', '402881e44648134a014648174a45000c', '湖南省', '长沙市', '', '测试', '王先生', '15111315531', '415100', '湖南省长沙市测试王先生15111315531', '1'),
('f7a8a3a9487816f8014878a92627018e', '', '2014-09-15 17:33:44', '', '2014-09-15 17:33:48', '402881e8461795c201461795c2e90000', 'f7a8a3a9487816f8014878449b6200a8', 'f7a8a3a9487816f8014878449b6200a8', '北京市', '北京市', '', '北京', '1223', '1342664664', '10000', '北京市北京市北京12231342664664', '1');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_shop_cart`
--

CREATE TABLE IF NOT EXISTS `weixin_shop_cart` (
  `id` varchar(40) NOT NULL COMMENT '购物车Id',
  `goods_id` varchar(40) DEFAULT NULL COMMENT '商品Id',
  `goods_property` varchar(200) DEFAULT NULL COMMENT '商品属性',
  `buy_price` double(10,0) DEFAULT NULL COMMENT '单价',
  `count` int(11) DEFAULT NULL COMMENT '数量',
  `total` double(10,0) DEFAULT NULL COMMENT '总结金额',
  `buyer_id` varchar(40) DEFAULT NULL COMMENT '买家Id',
  `seller_id` varchar(40) DEFAULT NULL COMMENT '卖家Id',
  `accountid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tft4l75wvjgycjrkqlaab0n0c` (`seller_id`),
  KEY `FK_sttol1w61rhh3j0i7ygdxwoun` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_shop_cart`
--

INSERT INTO `weixin_shop_cart` (`id`, `goods_id`, `goods_property`, `buy_price`, `count`, `total`, `buyer_id`, `seller_id`, `accountid`) VALUES
('402880e447d7243d0147d730a1910008', '402881e94701df960147020c273b0010', '', 123, 1, 123, '4028d881436d514601436d5215ac0043', NULL, '402881e8461795c201461795c2e90000'),
('402881e5470c28a701470c2e477f0006', '402881e94701df96014701f48ca00008', '', 4000, 1, 4000, '402881e5470a6e9a01470a8559c20001', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `weixin_shop_category`
--

CREATE TABLE IF NOT EXISTS `weixin_shop_category` (
  `ID` varchar(36) NOT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(50) DEFAULT NULL,
  `IMGURL` varchar(200) DEFAULT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `SELLER_ID` varchar(36) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  `UPDATE_NAME` varchar(50) DEFAULT NULL,
  `parentid` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_pyu50rd5olohgk0u8cnosgk3d` (`parentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_shop_category`
--

INSERT INTO `weixin_shop_category` (`ID`, `CREATE_DATE`, `CREATE_NAME`, `IMGURL`, `NAME`, `SELLER_ID`, `UPDATE_DATE`, `accountid`, `UPDATE_NAME`, `parentid`) VALUES
('402881e947015a7001470161481b0002', '2014-07-04 20:37:38', 'admin', 'upload/files/20140915160306AB5EsXvL.jpg', '家电', '4028d881436d514601436d5215ac0043', '2014-09-15 16:03:07', '402881e8461795c201461795c2e90000', 'admin', NULL),
('402881e947015a7001470161a8050005', '2014-07-04 20:38:03', 'admin', 'upload/files/20140915155546tD1CxcsF.png', '电脑', '4028d881436d514601436d5215ac0043', '2014-09-15 15:55:48', '402881e8461795c201461795c2e90000', 'admin', '402881e947015a7001470161481b0002'),
('402881e947015a700147016450170008', '2014-07-04 20:40:57', 'admin', 'upload/files/20140915155526yZOqHMsv.jpg', '电视', '4028d881436d514601436d5215ac0043', '2014-09-15 15:55:28', '402881e8461795c201461795c2e90000', 'admin', '402881e947015a7001470161481b0002'),
('f7a8a3a9487816f80148783b3baa0093', '2014-09-15 15:33:40', 'ceshi', '', '分类1', '402881e44648134a014648174a45000c', NULL, '4028d881474489d70147449988040025', '', NULL),
('f7a8a3a9487816f80148783b59730095', '2014-09-15 15:33:48', 'ceshi', '', '分类2', '402881e44648134a014648174a45000c', NULL, '4028d881474489d70147449988040025', '', NULL),
('f7a8a3a9487816f80148784e295e00c1', '2014-09-15 15:54:21', 'admin', 'upload/files/20140915155415g510v6qF.jpg', '手机', '4028d881436d514601436d5215ac0043', NULL, '402881e8461795c201461795c2e90000', '', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `weixin_shop_deal`
--

CREATE TABLE IF NOT EXISTS `weixin_shop_deal` (
  `id` varchar(36) NOT NULL,
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `deal_number` varchar(50) DEFAULT NULL COMMENT '订单编号',
  `paytype` varchar(32) DEFAULT NULL COMMENT '支付方式',
  `pay_number` varchar(32) DEFAULT NULL COMMENT '交易号',
  `buyer_id` varchar(32) DEFAULT NULL COMMENT '买家id',
  `seller_id` varchar(32) DEFAULT NULL COMMENT '卖家id',
  `address_detail` varchar(32) DEFAULT NULL COMMENT '配送信息',
  `deal_statement` varchar(32) DEFAULT NULL COMMENT '订单状态',
  `sendtype` varchar(32) DEFAULT NULL COMMENT '配送方式',
  `express_name` varchar(32) DEFAULT NULL COMMENT '快递名称',
  `express_number` varchar(32) DEFAULT NULL COMMENT '运单号',
  `tel` varchar(32) DEFAULT NULL COMMENT '联系电话',
  `deal_time` varchar(32) DEFAULT NULL COMMENT '下单时间',
  `pay_time` varchar(32) DEFAULT NULL COMMENT '支付时间',
  `sendout_time` varchar(32) DEFAULT NULL COMMENT '发货时间',
  `confirm_time` varchar(32) DEFAULT NULL COMMENT '确认收获时间',
  `buyer_leave_words` varchar(32) DEFAULT NULL COMMENT '买家留言',
  `seller_leave_words` varchar(32) DEFAULT NULL COMMENT '卖家留言',
  `reduce_price` double DEFAULT NULL COMMENT '优惠降价',
  `yfmny` double DEFAULT NULL COMMENT '应付金额',
  `sfmny` double DEFAULT NULL COMMENT '实付金额',
  `jfmny` double DEFAULT NULL COMMENT '积分抵用金额',
  `memo` varchar(32) DEFAULT NULL COMMENT '备注',
  `goodid` varchar(40) DEFAULT NULL,
  `buycount` int(11) DEFAULT NULL,
  `expresstotal` double DEFAULT NULL,
  `receiveaddress` varchar(100) DEFAULT NULL,
  `receivemobile` varchar(50) DEFAULT NULL,
  `receivename` varchar(50) DEFAULT NULL,
  `receivephone` varchar(50) DEFAULT NULL,
  `receivepostno` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_shop_deal`
--

INSERT INTO `weixin_shop_deal` (`id`, `create_name`, `create_date`, `update_name`, `update_date`, `deal_number`, `paytype`, `pay_number`, `buyer_id`, `seller_id`, `address_detail`, `deal_statement`, `sendtype`, `express_name`, `express_number`, `tel`, `deal_time`, `pay_time`, `sendout_time`, `confirm_time`, `buyer_leave_words`, `seller_leave_words`, `reduce_price`, `yfmny`, `sfmny`, `jfmny`, `memo`, `goodid`, `buycount`, `expresstotal`, `receiveaddress`, `receivemobile`, `receivename`, `receivephone`, `receivepostno`) VALUES
('402880e447cffc4b0147d002ad0b000a', '1111', '2014-08-13 23:35:42', NULL, NULL, '1407944142090', '货到货款', NULL, '4028bce447cf8bda0147cf9047090006', '402881e8461795c201461795c2e90000', NULL, '未支付', NULL, '顺丰', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 4500, NULL, NULL, NULL, '402881e94701df96014701f48ca00008', 1, 0, NULL, NULL, NULL, NULL, NULL),
('402880e447d7243d0147d735945a000e', '1', '2014-08-15 09:08:38', NULL, NULL, '1408064918618', '货到货款', NULL, '402880e447d7243d0147d72ea3eb0002', NULL, NULL, '未支付', NULL, '顺丰', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 8500, NULL, NULL, NULL, '402881e94701df96014701f48ca00008', 2, 0, NULL, NULL, NULL, NULL, NULL),
('402880e447d7243d0147d73594a5000f', '1', '2014-08-15 09:08:38', NULL, NULL, '1408064918693', '货到货款', NULL, '402880e447d7243d0147d72ea3eb0002', NULL, NULL, '未支付', NULL, '11', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 257, NULL, NULL, NULL, '402881e94701df960147020c273b0010', 2, 0, NULL, NULL, NULL, NULL, NULL),
('402880e447d7243d0147d73594cd0010', '1', '2014-08-15 09:08:38', NULL, NULL, '1408064918732', '货到货款', NULL, '402880e447d7243d0147d72ea3eb0002', NULL, NULL, '未支付', NULL, '11', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 257, NULL, NULL, NULL, '402881e94701df960147020c273b0010', 2, 0, NULL, NULL, NULL, NULL, NULL),
('402881e6479a921401479a9413270001', 'admin', '2014-08-03 14:35:01', NULL, NULL, '16015d47-c431-470a-9273-30fb89f5d208', '银联支付', NULL, '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '', '未支付', NULL, '顺丰', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 4000, NULL, NULL, NULL, '402881e94701df96014701f48ca00008', NULL, 0, NULL, NULL, NULL, NULL, NULL),
('402881e6479ace8d01479ad0466d0001', '235', '2014-08-03 15:40:46', NULL, NULL, '75ac87c3-6587-405b-9b5d-63d71e828102', '银联支付', NULL, '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '6667null51525235', '未支付', NULL, '顺丰', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 4500, NULL, NULL, NULL, '402881e94701df96014701f48ca00008', NULL, 0, NULL, NULL, NULL, NULL, NULL),
('402881e6479b4e8c01479b54110e0001', '235', '2014-08-03 18:04:43', NULL, NULL, '69d4dc13-b725-42a2-96c2-752518234fcf', '银联支付', NULL, '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '6667null51525235', '未支付', NULL, '顺丰', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 4500, NULL, NULL, NULL, '402881e94701df96014701f48ca00008', NULL, 0, NULL, NULL, NULL, NULL, NULL),
('402881e6479b4e8c01479b5411780002', '235', '2014-08-03 18:04:43', NULL, NULL, '7375bc83-b6f7-4d16-8645-3f771b5ea69a', '银联支付', NULL, '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '6667null51525235', '未支付', NULL, '顺丰', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 4500, NULL, NULL, NULL, '402881e94701df96014701f48ca00008', NULL, 0, NULL, NULL, NULL, NULL, NULL),
('402881e6479b4e8c01479b5411dd0003', '235', '2014-08-03 18:04:43', NULL, NULL, '6da59092-22da-42c7-9f53-c8b5c9242954', '银联支付', NULL, '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '6667null51525235', '未支付', NULL, '顺丰', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 4500, NULL, NULL, NULL, '402881e94701df96014701f48ca00008', NULL, 0, NULL, NULL, NULL, NULL, NULL),
('402881e6479b4e8c01479b54121d0004', '235', '2014-08-03 18:04:43', NULL, NULL, '1ca7b82e-7b86-422c-9680-a6f27ad04c3c', '银联支付', NULL, '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '6667null51525235', '未支付', NULL, '顺丰', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 4500, NULL, NULL, NULL, '402881e94701df96014701f48ca00008', NULL, 0, NULL, NULL, NULL, NULL, NULL),
('402881e6479b4e8c01479b54124b0005', '235', '2014-08-03 18:04:43', NULL, NULL, '029092c5-5cdc-43aa-9dc3-e8c178bbb88f', '银联支付', NULL, '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '6667null51525235', '未支付', NULL, '顺丰', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 4500, NULL, NULL, NULL, '402881e94701df96014701f48ca00008', NULL, 0, NULL, NULL, NULL, NULL, NULL),
('402881e6479b4e8c01479b5412730006', '235', '2014-08-03 18:04:44', NULL, NULL, '2175e40f-103a-49a3-9aec-43972782f563', '银联支付', NULL, '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '6667null51525235', '未支付', NULL, '顺丰', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 4500, NULL, NULL, NULL, '402881e94701df96014701f48ca00008', NULL, 0, NULL, NULL, NULL, NULL, NULL),
('402881e6479b4e8c01479b5412910007', '235', '2014-08-03 18:04:44', NULL, NULL, '22520f2a-d92d-4be4-8bb4-0a86196cfa2c', '银联支付', NULL, '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '6667null51525235', '未支付', NULL, '顺丰', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 4500, NULL, NULL, NULL, '402881e94701df96014701f48ca00008', NULL, 0, NULL, NULL, NULL, NULL, NULL),
('402881e6479b4e8c01479b5412b70008', '235', '2014-08-03 18:04:44', NULL, NULL, 'f74add86-e576-4744-b747-b4ce25e7a143', '银联支付', NULL, '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '6667null51525235', '未支付', NULL, '顺丰', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 4500, NULL, NULL, NULL, '402881e94701df96014701f48ca00008', NULL, 0, NULL, NULL, NULL, NULL, NULL),
('402881e6479b4e8c01479b5412e50009', '235', '2014-08-03 18:04:44', NULL, NULL, 'd01d5bb7-04ed-4300-9b82-4eef38e295a1', '银联支付', NULL, '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '6667null51525235', '未支付', NULL, '顺丰', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 4500, NULL, NULL, NULL, '402881e94701df96014701f48ca00008', NULL, 0, NULL, NULL, NULL, NULL, NULL),
('402881e6479b6c8601479b75ffc80006', '付明星', '2014-08-03 18:41:47', NULL, NULL, 'ffea1444-2e1a-4c65-9d7a-05d074cb74cb', '银联支付', NULL, '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '河南省郑州市文化路97号', '未支付', NULL, '顺丰', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 4500, NULL, NULL, NULL, '402881e94701df96014701f48ca00008', NULL, 0, NULL, NULL, NULL, NULL, NULL),
('4028bce447cf8bda0147cf8e1eff0003', 'admin', '2014-08-13 21:28:23', NULL, NULL, '1407936503549', '货到货款', NULL, '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', NULL, '未支付', NULL, '11', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 257, NULL, NULL, NULL, '402881e94701df960147020c273b0012', 2, 0, NULL, NULL, NULL, NULL, NULL),
('4028bce447cf8bda0147cf8e1f7b0004', 'admin', '2014-08-13 21:28:23', NULL, NULL, '1407936503674', '货到货款', NULL, '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', NULL, '未支付', NULL, '11', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 257, NULL, NULL, NULL, '402881e94701df960147020c273b0012', 2, 0, NULL, NULL, NULL, NULL, NULL),
('f7a8a3a9487816f80148786300350126', '', '2014-09-15 16:17:07', NULL, NULL, '1410769027125', '货到货款', NULL, 'f7a8a3a9487816f80148781e4cfc004b', '402881e8461795c201461795c2e90000', NULL, '未支付', NULL, '顺丰', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 3810, NULL, NULL, NULL, '402881e94701df960147020c273b0010', 1, 11, NULL, NULL, NULL, NULL, NULL),
('f7a8a3a9487816f8014878664c330131', 'ceshi', '2014-09-15 16:20:43', NULL, NULL, '1410769243187', '货到货款', NULL, '402881e44648134a014648174a45000c', '4028d881474489d70147449988040025', NULL, '未支付', NULL, '顺丰', NULL, NULL, NULL, NULL, NULL, NULL, '非常好', NULL, NULL, 6208, NULL, NULL, NULL, '402881e94701df96014701f48ca00008', 1, 20, NULL, NULL, NULL, NULL, NULL),
('f7a8a3a9487816f801487869e0370139', 'ceshi', '2014-09-15 16:24:37', NULL, NULL, '1410769477687', '货到货款', NULL, '402881e44648134a014648174a45000c', '4028d881474489d70147449988040025', NULL, '未支付', NULL, '申通', NULL, NULL, NULL, NULL, NULL, NULL, '说都发送到发送到', NULL, NULL, 3360, NULL, NULL, NULL, '402881e94701df960147020c273b0012', 1, 11, NULL, NULL, NULL, NULL, NULL),
('f7a8a3a9487816f8014878a982ed0191', '', '2014-09-15 17:34:08', NULL, NULL, '1410773648109', '银联支付', NULL, 'f7a8a3a9487816f8014878449b6200a8', '402881e8461795c201461795c2e90000', '北京市北京市北京12231342664664', '未支付', NULL, '顺丰', NULL, NULL, NULL, NULL, NULL, NULL, '又得多上', NULL, NULL, 12396, NULL, NULL, NULL, '402881e94701df96014701f48ca00008', 2, 20, '北京', '1342664664', '1223', NULL, '10000'),
('f7a8a3a9487816f8014878a982fd0192', '', '2014-09-15 17:34:08', NULL, NULL, '1410773648125', '银联支付', NULL, 'f7a8a3a9487816f8014878449b6200a8', '402881e8461795c201461795c2e90000', '北京市北京市北京12231342664664', '未支付', NULL, '申通', NULL, NULL, NULL, NULL, NULL, NULL, '又得多上', NULL, NULL, 6709, NULL, NULL, NULL, '402881e94701df960147020c273b0012', 2, 11, '北京', '1342664664', '1223', NULL, '10000'),
('f7a8a3a9487816f8014878a9a3270196', '', '2014-09-15 17:34:16', NULL, NULL, '1410773656359', '货到货款', NULL, 'f7a8a3a9487816f8014878449b6200a8', '402881e8461795c201461795c2e90000', NULL, '未支付', NULL, '顺丰', NULL, NULL, NULL, NULL, NULL, NULL, '又得多上', NULL, NULL, 12396, NULL, NULL, NULL, '402881e94701df96014701f48ca00008', 2, 20, NULL, NULL, NULL, NULL, NULL),
('f7a8a3a9487816f8014878a9a3370197', '', '2014-09-15 17:34:16', NULL, NULL, '1410773656375', '货到货款', NULL, 'f7a8a3a9487816f8014878449b6200a8', '402881e8461795c201461795c2e90000', NULL, '未支付', NULL, '申通', NULL, NULL, NULL, NULL, NULL, NULL, '又得多上', NULL, NULL, 6709, NULL, NULL, NULL, '402881e94701df960147020c273b0012', 2, 11, NULL, NULL, NULL, NULL, NULL),
('ff8080814d4d91a1014d4d9ac6920002', 'admin', '2015-05-13 22:08:18', NULL, NULL, '1431526098576', '1', NULL, '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '河南省郑州市文化路97号付明星18838231664', '未支付', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 18624, 18624, NULL, NULL, NULL, 3, 60, '文化路97号', '18838231664', '付明星', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `weixin_shop_goods`
--

CREATE TABLE IF NOT EXISTS `weixin_shop_goods` (
  `id` varchar(36) NOT NULL,
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `title` varchar(200) DEFAULT NULL COMMENT '标题信息',
  `title_img` varchar(100) DEFAULT NULL COMMENT '标题图片',
  `descriptions` longtext COMMENT '商品详情',
  `price` double DEFAULT NULL COMMENT '商品原价',
  `real_price` double DEFAULT NULL COMMENT '商品现价',
  `sale` double DEFAULT NULL COMMENT '折扣',
  `sell_count` int(11) DEFAULT NULL COMMENT '销售数量',
  `discuss_count` int(11) DEFAULT NULL COMMENT '评价数量',
  `good_count` int(11) DEFAULT NULL COMMENT '好评数量',
  `bad_count` int(11) DEFAULT NULL COMMENT '差评数量',
  `statement` varchar(32) DEFAULT NULL COMMENT '状态',
  `shelve_time` datetime DEFAULT NULL COMMENT '上架时间',
  `remove_time` datetime DEFAULT NULL COMMENT '下架时间',
  `express_name` varchar(32) DEFAULT NULL COMMENT '快递名称',
  `express_price` double DEFAULT NULL COMMENT '快递费用',
  `seller_id` varchar(36) DEFAULT NULL COMMENT '卖家ID',
  `accountid` varchar(200) DEFAULT NULL,
  `CATEGORY_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_997yl0agvds726aknlc95grpo` (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_shop_goods`
--

INSERT INTO `weixin_shop_goods` (`id`, `create_name`, `create_date`, `update_name`, `update_date`, `title`, `title_img`, `descriptions`, `price`, `real_price`, `sale`, `sell_count`, `discuss_count`, `good_count`, `bad_count`, `statement`, `shelve_time`, `remove_time`, `express_name`, `express_price`, `seller_id`, `accountid`, `CATEGORY_ID`) VALUES
('402881e94701df96014701f48ca00008', 'admin', '2014-07-04 23:18:29', '', '2014-09-15 17:34:22', '苹果（Apple）MacBook Air MD711CH/B 11.6英寸笔记本电脑', 'upload/files/20140915161051rgZ0xtje.jpg', '<h1 title="苹果（Apple）MacBook Air MD711CH/B 11.6英寸笔记本电脑（I5 4G 128G SSD 核芯显卡 Intel GMA HD 5000 OS 银色）" class="wb" style="margin: 0px 0px 3px; padding: 0px 0px 0px 10px; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: 微软雅黑; font-size: 16px; font-style: normal; font-variant: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; -ms-word-wrap: break-word; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;">本页面为测试页面，最终解释权归捷微团队。</h1><p title="苹果（Apple）MacBook Air MD711CH/B 11.6英寸笔记本电脑（I5 4G 128G SSD 核芯显卡 Intel GMA HD 5000 OS 银色）" class="wb" style="margin: 0px 0px 3px; padding: 0px 0px 0px 10px; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: 微软雅黑; font-size: 16px; font-style: normal; font-variant: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; -ms-word-wrap: break-word; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;"></p><h1 title="苹果（Apple）MacBook Air MD711CH/B 11.6英寸笔记本电脑（I5 4G 128G SSD 核芯显卡 Intel GMA HD 5000 OS 银色）" class="wb" style="margin: 0px 0px 3px; padding: 0px 0px 0px 10px; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: 微软雅黑; font-size: 16px; font-style: normal; font-variant: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; -ms-word-wrap: break-word; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;">苹果（Apple）MacBook Air MD711CH/B 11.6英寸笔记本电脑（I5 4G 128G SSD 核芯显卡 Intel GMA HD 50...</h1><h2 class="selling-points wb" id="promotionDesc" style="margin: 0px; padding: 0px 0px 4px 10px; color: rgb(255, 119, 0); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: 微软雅黑; font-size: 16px; font-style: normal; font-variant: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; -ms-word-wrap: break-word; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;">纤薄，轻巧，强劲，满足你一切的想象。</h2><p></p>', 6888, 6188, 8.98, 15, 0, 0, 0, '0', '2014-07-05 03:14:16', NULL, '顺丰', 20, '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '402881e947015a7001470161a8050005'),
('402881e94701df960147020c273b0010', 'admin', '2014-07-04 23:44:16', '', '2014-09-15 17:55:11', '联想(Lenovo)G510AM 15.6英寸笔记本电脑(I5-4210M 4G 500G 2G独显 Win8 金属黑)', 'upload/files/20140915160624FTLr7Pi1.jpg', '<p><strong>&nbsp;本页面为测试页面，最终解释权归捷微团队。</strong></p><h1 title="联想(Lenovo)G510AM 15.6英寸笔记本电脑(I5-4210M 4G 500G 2G独显 Win8 金属黑)" class="wb" style="margin: 0px 0px 3px; padding: 0px 0px 0px 10px; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: 微软雅黑; font-size: 16px; font-style: normal; font-variant: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; -ms-word-wrap: break-word; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;">联想(Lenovo)G510AM 15.6英寸笔记本电脑(I5-4210M 4G 500G 2G独显 Win8 金属黑)</h1><h2 class="selling-points wb" id="promotionDesc" style="margin: 0px; padding: 0px 0px 4px 10px; color: rgb(255, 119, 0); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: 微软雅黑; font-size: 16px; font-style: normal; font-variant: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; -ms-word-wrap: break-word; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;">小Y配置，R7-M265显卡超能体验，G490升配机器，金属机身，更加酷炫。</h2><h1 title="联想(Lenovo)G510AM 15.6英寸笔记本电脑(I5-4210M 4G 500G 2G独显 Win8 金属黑)" class="wb" style="margin: 0px 0px 3px; padding: 0px 0px 0px 10px; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: 微软雅黑; font-size: 16px; font-style: normal; font-variant: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; -ms-word-wrap: break-word; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;">&nbsp;</h1><p>&nbsp;</p>', 3999, 3799, 9.5, 11, 0, 0, 0, '0', '2014-07-04 23:44:16', '2014-07-04 23:44:16', '顺丰', 11, '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '402881e947015a7001470161a8050005'),
('402881e94701df960147020c273b0012', 'admin', '2014-07-04 23:44:16', '', '2014-09-15 17:34:22', '华硕(ASUS)F450LD4200 14英寸 笔记本 (I5-4200U 4G 500G GT820 2G独显 DOS 黑)', 'upload/files/20140915160851z1Uzudqp.jpg', '<h1 title="华硕(ASUS)F450LD4200 14英寸 笔记本 (I5-4200U 4G  500G GT820 2G独显 DOS 黑)" class="wb" style="margin: 0px 0px 3px; padding: 0px 0px 0px 10px; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: 微软雅黑; font-size: 16px; font-style: normal; font-variant: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; -ms-word-wrap: break-word; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;">本页面为测试页面，最终解释权归捷微团队。</h1><h1 title="华硕(ASUS)F450LD4200 14英寸 笔记本 (I5-4200U 4G  500G GT820 2G独显 DOS 黑)" class="wb" style="margin: 0px 0px 3px; padding: 0px 0px 0px 10px; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: 微软雅黑; font-size: 16px; font-style: normal; font-variant: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; -ms-word-wrap: break-word; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;">华硕(ASUS)F450LD4200 14英寸 笔记本 (I5-4200U 4G 500G GT820 2G独显 DOS 黑)</h1><h2 class="selling-points wb" id="promotionDesc" style="margin: 0px; padding: 0px 0px 4px 10px; color: rgb(255, 119, 0); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: 微软雅黑; font-size: 16px; font-style: normal; font-variant: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; -ms-word-wrap: break-word; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;">英特尔全新I5处理器，500G海量硬盘 GT820M 2G游戏显卡。</h2><p>&nbsp;</p>', 3699, 3349, 9.05, 18, 0, 0, 0, '0', '2014-07-04 23:44:16', '2014-07-04 23:44:16', '申通', 11, '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '402881e947015a7001470161a8050005'),
('f7a8a3a9487816f80148783c357b0097', 'ceshi', '2014-09-15 15:34:44', '', NULL, '商品1', '', '', 1000, 900, 9, 0, 0, 0, 0, '0', NULL, NULL, '', NULL, '402881e44648134a014648174a45000c', '4028d881474489d70147449988040025', 'f7a8a3a9487816f80148783b3baa0093');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_shop_member`
--

CREATE TABLE IF NOT EXISTS `weixin_shop_member` (
  `id` varchar(40) NOT NULL COMMENT '主键Id',
  `USERNAME` varchar(100) NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(100) NOT NULL COMMENT '密码',
  `accountid` varchar(100) DEFAULT NULL,
  `ADDTIME` datetime DEFAULT NULL COMMENT '注册时间',
  `MOBILE` varchar(20) DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_shop_member`
--

INSERT INTO `weixin_shop_member` (`id`, `USERNAME`, `PASSWORD`, `accountid`, `ADDTIME`, `MOBILE`) VALUES
('402881e5470a6e9a01470a8559c20001', 'tom', '111111', NULL, NULL, '18838231664');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_shop_orderdetail`
--

CREATE TABLE IF NOT EXISTS `weixin_shop_orderdetail` (
  `id` varchar(50) NOT NULL,
  `order_id` varchar(50) DEFAULT NULL COMMENT '单订Id',
  `goods_id` varchar(50) DEFAULT NULL,
  `goods_property` varchar(100) DEFAULT NULL COMMENT '宝贝属性',
  `buy_price` double(11,0) DEFAULT NULL COMMENT '购买单价',
  `count` int(10) DEFAULT NULL COMMENT '购买数量',
  `reduce_price` varchar(100) DEFAULT NULL COMMENT '优惠/降价',
  `total` double(10,0) DEFAULT NULL COMMENT '总计金额',
  `buyer_id` varchar(50) DEFAULT NULL COMMENT '买家Id',
  `seller_id` varchar(50) DEFAULT NULL COMMENT '卖家Id',
  `accountid` varchar(50) DEFAULT NULL COMMENT '商家微信号Id',
  PRIMARY KEY (`id`),
  KEY `FK_g3hoendqqwpfqhnx3w685xjw6` (`goods_id`),
  KEY `FK_6q7xw4lc2crfa2rbbnx15rnjl` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_shop_orderdetail`
--

INSERT INTO `weixin_shop_orderdetail` (`id`, `order_id`, `goods_id`, `goods_property`, `buy_price`, `count`, `reduce_price`, `total`, `buyer_id`, `seller_id`, `accountid`) VALUES
('ff8080814d4d91a1014d4d9ac82a0003', 'ff8080814d4d91a1014d4d9ac6920002', '402881e94701df96014701f48ca00008', '', 6188, 3, '0', 18564, '4028d881436d514601436d5215ac0043', '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_subscribe`
--

CREATE TABLE IF NOT EXISTS `weixin_subscribe` (
  `ID` varchar(32) CHARACTER SET utf8 NOT NULL,
  `accountid` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `addTime` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `msgType` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `templateId` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `templateName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `weixin_subscribe`
--

INSERT INTO `weixin_subscribe` (`ID`, `accountid`, `addTime`, `msgType`, `templateId`, `templateName`) VALUES
('402889ff472978290147297b54350004', '402881e8461795c201461795c2e90000', '2014-07-12 15:30:54', 'text', '2c91811a4d60d054014d65a2caa1002f', '成都永辉科技有限公司');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_survey`
--

CREATE TABLE IF NOT EXISTS `weixin_survey` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(50) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(50) DEFAULT NULL,
  `INTEGRAL` int(11) DEFAULT NULL,
  `statement` varchar(255) DEFAULT NULL,
  `SURVEY_COUNT` int(11) DEFAULT NULL,
  `SURVEY_DESCRIPTION` varchar(200) DEFAULT NULL,
  `SURVEY_TITLE` varchar(200) DEFAULT NULL,
  `SURVEY_TYPE` varchar(50) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_NAME` varchar(50) DEFAULT NULL,
  `MAIN_ID` varchar(50) DEFAULT NULL,
  `SEQ` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_survey`
--

INSERT INTO `weixin_survey` (`ID`, `ACCOUNTID`, `CREATE_DATE`, `CREATE_NAME`, `INTEGRAL`, `statement`, `SURVEY_COUNT`, `SURVEY_DESCRIPTION`, `SURVEY_TITLE`, `SURVEY_TYPE`, `UPDATE_DATE`, `UPDATE_NAME`, `MAIN_ID`, `SEQ`) VALUES
('f7a8a3a9487816f80148785f53a7010c', '402881e8461795c201461795c2e90000', '2014-09-15 16:13:06', 'admin', NULL, '0', 3, '天气如何', '天气如何', '1', '2015-05-14 22:33:12', 'admin', 'f7a8a3a9487816f80148785ed688010a', 1),
('f7a8a3a9487816f80148786065370113', '402881e8461795c201461795c2e90000', '2014-09-15 16:14:16', 'admin', NULL, '0', 3, '你想住在几环', '你想住在几环', '2', '2015-05-14 22:33:13', 'admin', 'f7a8a3a9487816f80148785ed688010a', 2),
('f7a8a3a9487816f801487860b134011b', '402881e8461795c201461795c2e90000', '2014-09-15 16:14:35', 'admin', NULL, '0', 3, '你期望你未来的生活是什么样子', '你期望你未来的生活是什么样子', '3', '2015-05-14 22:33:13', 'admin', 'f7a8a3a9487816f80148785ed688010a', 3);

-- --------------------------------------------------------

--
-- 表的结构 `weixin_survey_main`
--

CREATE TABLE IF NOT EXISTS `weixin_survey_main` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(50) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(50) DEFAULT NULL,
  `INTEGRAL` int(11) DEFAULT NULL,
  `statement` varchar(255) DEFAULT NULL,
  `SURVEY_COUNT` int(11) DEFAULT NULL,
  `SURVEY_DESCRIPTION` varchar(200) DEFAULT NULL,
  `SURVEY_TITLE` varchar(200) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_NAME` varchar(50) DEFAULT NULL,
  `validDate` datetime DEFAULT NULL,
  `VALID_DATE` datetime DEFAULT NULL,
  `BEGIN_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_survey_main`
--

INSERT INTO `weixin_survey_main` (`ID`, `ACCOUNTID`, `CREATE_DATE`, `CREATE_NAME`, `INTEGRAL`, `statement`, `SURVEY_COUNT`, `SURVEY_DESCRIPTION`, `SURVEY_TITLE`, `UPDATE_DATE`, `UPDATE_NAME`, `validDate`, `VALID_DATE`, `BEGIN_DATE`) VALUES
('f7a8a3a9487816f801487859ec6a00f3', NULL, '2014-09-15 16:07:12', 'admin', 5, '0', 0, '调用北京生活质量', '调用北京生活质量', '2014-09-15 16:10:10', 'admin', NULL, '2014-09-15 16:07:59', '2014-09-10 16:07:57'),
('f7a8a3a9487816f80148785ed688010a', '402881e8461795c201461795c2e90000', '2014-09-15 16:12:34', 'admin', 5, '1', 3, '北京生活质量', '北京生活质量', '2015-05-14 22:33:12', 'admin', NULL, '2014-09-20 16:13:18', '2014-09-15 16:13:16');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_survey_option`
--

CREATE TABLE IF NOT EXISTS `weixin_survey_option` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(50) DEFAULT NULL,
  `SURVEY_COUNT` int(11) DEFAULT NULL,
  `SCALE` double DEFAULT NULL,
  `SURVEY_OPTION_TITLE` varchar(50) DEFAULT NULL,
  `SURVEY_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_souo34p5h30ntkci47ag47vsb` (`SURVEY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_survey_option`
--

INSERT INTO `weixin_survey_option` (`ID`, `ACCOUNTID`, `SURVEY_COUNT`, `SCALE`, `SURVEY_OPTION_TITLE`, `SURVEY_ID`) VALUES
('f7a8a3a9487816f80148785f53a7010d', '402881e8461795c201461795c2e90000', 0, 0, '好', 'f7a8a3a9487816f80148785f53a7010c'),
('f7a8a3a9487816f80148785f53a7010e', '402881e8461795c201461795c2e90000', 1, 0, '不好', 'f7a8a3a9487816f80148785f53a7010c'),
('f7a8a3a9487816f80148785f53a7010f', '402881e8461795c201461795c2e90000', 2, 0, '很差', 'f7a8a3a9487816f80148785f53a7010c'),
('f7a8a3a9487816f80148786065370114', '402881e8461795c201461795c2e90000', 2, 0, '一环', 'f7a8a3a9487816f80148786065370113'),
('f7a8a3a9487816f80148786065460115', '402881e8461795c201461795c2e90000', 2, 0, '二环', 'f7a8a3a9487816f80148786065370113'),
('f7a8a3a9487816f80148786065460116', '402881e8461795c201461795c2e90000', 1, 0, '三环', 'f7a8a3a9487816f80148786065370113'),
('f7a8a3a9487816f80148786065460117', '402881e8461795c201461795c2e90000', 1, 0, '四环', 'f7a8a3a9487816f80148786065370113');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_survey_record`
--

CREATE TABLE IF NOT EXISTS `weixin_survey_record` (
  `id` varchar(255) NOT NULL,
  `accountid` varchar(50) DEFAULT NULL,
  `answer` varchar(200) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(50) DEFAULT NULL,
  `openid` varchar(50) DEFAULT NULL,
  `surveyid` varchar(50) DEFAULT NULL,
  `userid` varchar(50) DEFAULT NULL,
  `MAINID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_survey_record`
--

INSERT INTO `weixin_survey_record` (`id`, `accountid`, `answer`, `CREATE_DATE`, `CREATE_NAME`, `openid`, `surveyid`, `userid`, `MAINID`) VALUES
('f7a8a3a9487816f801487861974e0121', '402881e8461795c201461795c2e90000', '很差', '2014-09-15 16:15:34', '', 'oGCDRjvr9L1NoqxbyXLReCVYVyV0', 'f7a8a3a9487816f80148785f53a7010c', 'f7a8a3a9487816f8014878449b6200a8', 'f7a8a3a9487816f80148785ed688010a'),
('f7a8a3a9487816f80148786197bb0122', '402881e8461795c201461795c2e90000', '一环;二环;三环;四环', '2014-09-15 16:15:34', '', 'oGCDRjvr9L1NoqxbyXLReCVYVyV0', 'f7a8a3a9487816f80148786065370113', 'f7a8a3a9487816f8014878449b6200a8', 'f7a8a3a9487816f80148785ed688010a'),
('f7a8a3a9487816f80148786197cb0123', '402881e8461795c201461795c2e90000', '有房有车', '2014-09-15 16:15:34', '', 'oGCDRjvr9L1NoqxbyXLReCVYVyV0', 'f7a8a3a9487816f801487860b134011b', 'f7a8a3a9487816f8014878449b6200a8', 'f7a8a3a9487816f80148785ed688010a'),
('f7a8a3a9487816f80148788ab83c015c', '402881e8461795c201461795c2e90000', '不好', '2014-09-15 17:00:30', '', 'oGCDRjuLfYaYMGTpJJIUlOAw3ZzY', 'f7a8a3a9487816f80148785f53a7010c', 'f7a8a3a9487816f80148788795320150', 'f7a8a3a9487816f80148785ed688010a'),
('f7a8a3a9487816f80148788ab88a015d', '402881e8461795c201461795c2e90000', '二环', '2014-09-15 17:00:30', '', 'oGCDRjuLfYaYMGTpJJIUlOAw3ZzY', 'f7a8a3a9487816f80148786065370113', 'f7a8a3a9487816f80148788795320150', 'f7a8a3a9487816f80148785ed688010a'),
('f7a8a3a9487816f80148788ab89a015e', '402881e8461795c201461795c2e90000', '刚好回家', '2014-09-15 17:00:30', '', 'oGCDRjuLfYaYMGTpJJIUlOAw3ZzY', 'f7a8a3a9487816f801487860b134011b', 'f7a8a3a9487816f80148788795320150', 'f7a8a3a9487816f80148785ed688010a'),
('ff8080814d4d9ca5014d52d7efd30002', '402881e8461795c201461795c2e90000', '很差', '2015-05-14 22:33:12', 'admin', 'oGCDRjvr9L1NoqxbyXLReCVYVyV0', 'f7a8a3a9487816f80148785f53a7010c', '4028d881436d514601436d5215ac0043', 'f7a8a3a9487816f80148785ed688010a'),
('ff8080814d4d9ca5014d52d7f1620003', '402881e8461795c201461795c2e90000', '一环', '2015-05-14 22:33:13', 'admin', 'oGCDRjvr9L1NoqxbyXLReCVYVyV0', 'f7a8a3a9487816f80148786065370113', '4028d881436d514601436d5215ac0043', 'f7a8a3a9487816f80148785ed688010a'),
('ff8080814d4d9ca5014d52d7f1920004', '402881e8461795c201461795c2e90000', 'ddasd', '2015-05-14 22:33:13', 'admin', 'oGCDRjvr9L1NoqxbyXLReCVYVyV0', 'f7a8a3a9487816f801487860b134011b', '4028d881436d514601436d5215ac0043', 'f7a8a3a9487816f80148785ed688010a');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_texttemplate`
--

CREATE TABLE IF NOT EXISTS `weixin_texttemplate` (
  `ID` varchar(32) NOT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `templatename` varchar(255) DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_texttemplate`
--

INSERT INTO `weixin_texttemplate` (`ID`, `addtime`, `content`, `templatename`, `accountid`) VALUES
('2c91811a4d60d054014d65a2caa1002f', '2015-05-18 14:07:57', '欢迎您,来到成都永辉科技有限公司\r\n1: 软件系统,办公系统 OA, 网站制作\r\n   ， 仿站,  微信公众号开发\r\n请联系 邓先生 \r\n手机号: 13558674514    \r\n QQ:652356756@qq.com\r\n           杨先生 \r\n手机号: 18520699500  \r\n QQ:497731972@qq.com\r\n2:公司详情介绍 \r\n http://yhsoft.duapp.com/', '成都永辉科技有限公司', '402881e8461795c201461795c2e90000'),
('2c9182b94d6f7cc7014d70079edb0006', '2015-05-20 14:34:17', '1:OA源码(淘宝地址: http://item.taobao.com/item.htm?spm=a230r.1.14.10.5lDH6m&id=45053029089&ns=1&abbucket=8#detail)', '公司产品', '402881e8461795c201461795c2e90000'),
('4028818348fb17090148fb1a2bf00005', '2014-10-11 01:27:49', '未知名回复', '未知名回复', '402881e8461795c201461795c2e90000'),
('4028d8814734ee0d0147356b4c730010', '2014-07-14 23:08:50', '你好，我是邓晓辉', '你好', '402881e8461795c201461795c2e90000'),
('f7a8a3a946e249c20146e25c4dc7000c', '2014-06-28 20:03:58', ' 欢迎您关注捷微团队，捷微是一款基于JAVA+MYSQL的微信公众平台第三方扩展框架，代码完全开源，方便二次开发。程序自身提供部分行业解决方案及丰富的营销功能。更多演示功能请查看下方菜单。官方网站：http://www.jeewx.com。\r\nQQ群：287090836\r\n论坛：www.jeecg.org', '欢迎关注语', '402881e8461795c201461795c2e90000'),
('f7a8a3a946e55a940146e5a3e498004d', '2014-06-29 11:21:01', '微译使用指南\r\n\r\n微译为用户提供专业的多语言翻译服务，目前支持以下翻译方向：\r\n    中 -> 英\r\n    英 -> 中\r\n    日 -> 中\r\n\r\n使用示例：\r\n    翻译我是中国人\r\n    翻译dream\r\n    翻译さようなら\r\n\r\n回复“?”显示主菜单', '微译使用指南', '402881e8461795c201461795c2e90000'),
('f7a8a3a946e55a940146e5a429cf004e', '2014-06-29 11:21:19', '发送天气+城市，例如''天气广州''\r\n', '天气使用指南', '402881e8461795c201461795c2e90000'),
('f7a8a3a946e55a940146e5a53e6b0051', '2014-06-29 11:22:30', '请输入"大转盘"，参与抽奖活动', '大转盘指南', '402881e8461795c201461795c2e90000'),
('f7a8a3a946e55a940146e5a584da0052', '2014-06-29 11:22:48', '请输入"刮刮乐"，参与抽奖活动', '刮刮乐指南', '402881e8461795c201461795c2e90000'),
('f7a8a3a946e55a940146e5c317f6005f', '2014-06-29 11:55:06', '专业团队承接微信订制开发，BPM业务构建平台，成熟OA系统，承接这种外包项目；\r\n\r\n商务负责人：秦风\r\n商务 QQ： 418799587\r\n社区创始人：scott\r\n官网：www.jeewx.com\r\n论坛： www.jeecg.org', '联系我们', '402881e8461795c201461795c2e90000'),
('f7a8a3a946e55a940146e5cfa5660070', '2014-06-29 12:08:49', '01  翻译\r\n02  天气\r\n03  大转盘\r\n04  刮刮乐', '营销工具', '402881e8461795c201461795c2e90000'),
('f7a8a3a9487816f801487841b69900a1', '2014-09-15 15:40:45', 'bb', 'aa', '4028d881474489d70147449988040025');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_unknown_response`
--

CREATE TABLE IF NOT EXISTS `weixin_unknown_response` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL,
  `accountid` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `addTime` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `msgType` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `templateId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `templateName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `weixin_unknown_response`
--

INSERT INTO `weixin_unknown_response` (`ID`, `accountid`, `addTime`, `msgType`, `templateId`, `templateName`) VALUES
('4028818348fb17090148fb19c94a0004', '402881e8461795c201461795c2e90000', '2014-10-11 01:27:24', 'text', '2c91811a4d60d054014d65a2caa1002f', '成都永辉科技有限公司');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_userinfo`
--

CREATE TABLE IF NOT EXISTS `weixin_userinfo` (
  `ID` varchar(32) NOT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `weixin_vip_info`
--

CREATE TABLE IF NOT EXISTS `weixin_vip_info` (
  `ID` varchar(36) NOT NULL,
  `VIP_NAME` varchar(100) NOT NULL,
  `VIP_IMG` varchar(200) DEFAULT NULL,
  `VIP_DESCRIBE` varchar(200) DEFAULT NULL,
  `VIP_COFING` varchar(20) DEFAULT NULL,
  `START_TIME` date DEFAULT NULL,
  `END_TIME` date DEFAULT NULL,
  `LEVEL_ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_vip_info`
--

INSERT INTO `weixin_vip_info` (`ID`, `VIP_NAME`, `VIP_IMG`, `VIP_DESCRIBE`, `VIP_COFING`, `START_TIME`, `END_TIME`, `LEVEL_ID`, `ACCOUNTID`) VALUES
('402881e5479afd0101479b7258ca0023', '黄金会员卡', 'upload/files/20140804022004UE5avXRs.png', '					      					      黄金会员卡,帝王享受\r\n					      \r\n					      \r\n					      ', NULL, '2014-08-03', NULL, '4', '402881e8461795c201461795c2e90000'),
('402881e5479afd0101479b7cc102002b', '钻石会员卡', 'upload/files/20140804022016GE5JCfZ0.png', '					      					      钻石会员卡，至尊待遇，尊贵无比			      \r\n					      \r\n					      ', NULL, '2014-08-03', NULL, '5', '402881e8461795c201461795c2e90000'),
('402881e5479afd0101479b7d792e002f', '普通会员卡', 'upload/files/20140804022031I66JtQG5.png', '					      普通会员卡,注册即可获得	      \r\n					      ', NULL, '2014-08-03', NULL, '1', '402881e8461795c201461795c2e90000'),
('402881e5479afd0101479b7e64c00032', '青铜会员卡', 'upload/files/20140804022040CxBHjCcT.png', '					      活跃用户才能获得的会员卡	      \r\n					      ', NULL, '2014-08-03', NULL, '2', '402881e8461795c201461795c2e90000'),
('402881e5479afd0101479b7ee8aa0035', '白银会员卡', 'upload/files/20140804022243rk2FhIWa.png', '					      					      					      核心用户才能获取的会员卡，享受精致生活 \r\n					      \r\n					      \r\n					      ', NULL, '2014-08-03', NULL, '3', '402881e8461795c201461795c2e90000');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_vip_member`
--

CREATE TABLE IF NOT EXISTS `weixin_vip_member` (
  `ID` varchar(36) NOT NULL,
  `MEMBER_NAME` varchar(100) DEFAULT NULL,
  `MEMBER_BALANCE` decimal(9,2) unsigned zerofill DEFAULT '0000000.00',
  `MEMBER_INTEGRAL` int(9) DEFAULT '0',
  `CREATE_TIME` date NOT NULL,
  `VIP_ID` varchar(36) DEFAULT NULL,
  `MEMBER_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_tm49oa6pkefxo4qt1o52hphla` (`MEMBER_ID`),
  KEY `FK_1vcxsax8twhsh45bk0dpsvess` (`VIP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_vip_member`
--

INSERT INTO `weixin_vip_member` (`ID`, `MEMBER_NAME`, `MEMBER_BALANCE`, `MEMBER_INTEGRAL`, `CREATE_TIME`, `VIP_ID`, `MEMBER_ID`) VALUES
('402881e5479afd0101479b7cc102002c', 'admin', '0000000.00', 6, '2014-08-04', '402881e5479afd0101479b7cc102002b', '4028d881436d514601436d5215ac0043'),
('f7a8a3a9487816f8014878488b7000b8', '', '0000000.00', 0, '2014-09-15', '402881e5479afd0101479b7d792e002f', 'f7a8a3a9487816f801487848150800b4'),
('f7a8a3a9487816f8014878aae0890199', 'ceshi', '0000000.00', 0, '2014-09-15', '402881e5479afd0101479b7d792e002f', '402881e44648134a014648174a45000c');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_vote`
--

CREATE TABLE IF NOT EXISTS `weixin_vote` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(50) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(50) DEFAULT NULL,
  `INTEGRAL` int(11) DEFAULT NULL,
  `statement` varchar(255) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_NAME` varchar(50) DEFAULT NULL,
  `VOTE_COUNT` int(11) DEFAULT NULL,
  `VOTE_DESCRIPTION` varchar(200) DEFAULT NULL,
  `VOTE_TITLE` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_vote`
--

INSERT INTO `weixin_vote` (`ID`, `ACCOUNTID`, `CREATE_DATE`, `CREATE_NAME`, `INTEGRAL`, `statement`, `UPDATE_DATE`, `UPDATE_NAME`, `VOTE_COUNT`, `VOTE_DESCRIPTION`, `VOTE_TITLE`) VALUES
('402880e648152c3a01481537e6b6000d', '402881e8461795c201461795c2e90000', '2014-08-27 10:07:38', 'admin', 1, '1', '2014-09-15 17:01:27', '', 4, '11', '喜欢吃什么');

-- --------------------------------------------------------

--
-- 表的结构 `WEIXIN_VOTEPK_CONFIG`
--

CREATE TABLE IF NOT EXISTS `WEIXIN_VOTEPK_CONFIG` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` longtext,
  `CONFIG_NAME` varchar(50) DEFAULT NULL,
  `CONFIG_VALUE` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `weixin_votepk_config`
--

CREATE TABLE IF NOT EXISTS `weixin_votepk_config` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` longtext,
  `CONFIG_NAME` varchar(50) DEFAULT NULL,
  `CONFIG_VALUE` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_votepk_config`
--

INSERT INTO `weixin_votepk_config` (`ID`, `ACCOUNTID`, `CONFIG_NAME`, `CONFIG_VALUE`) VALUES
('402881e4486fff4101486ffff4440001', '402881e8461795c201461795c2e90000', '投票排行每页显示数量', '20'),
('402881e4486fff4101487001f93e0004', '402881e8461795c201461795c2e90000', '朋友圈分享投票数量', '4'),
('402881e4486fff410148700657cd0006', '402881e8461795c201461795c2e90000', '快捷关注图文URL', 'http://mp.weixin.qq.com/s?__biz=MzA4MzE1OTYyMw==&mid=200524733&idx=1&sn=f4b685efa7457a8d7229757986a5a7ab#rd'),
('402881e44872e8f8014872ec0edb0001', '402881e8461795c201461795c2e90000', '活动规则URL', 'http://mp.weixin.qq.com/s?__biz=MzA4MzE1OTYyMw==&mid=200527497&idx=1&sn=4ac77cfbff7f6d044e001a3f8771880f#rd'),
('402881e44872edae014872f119b30001', '402881e8461795c201461795c2e90000', '活动介绍URL', 'http://mp.weixin.qq.com/s?__biz=MzA4MzE1OTYyMw==&mid=200527548&idx=1&sn=b31da87920598f8da7dcbc3bca78e827#rd'),
('402881e44872edae014872f2b9e50004', '402881e8461795c201461795c2e90000', '投票攻略URL', 'http://mp.weixin.qq.com/s?__biz=MzA4MzE1OTYyMw==&mid=200527552&idx=1&sn=f55620b7c0c3fb7817b3ef11b4effe94#rd');

-- --------------------------------------------------------

--
-- 表的结构 `WEIXIN_VOTEPK_RECORD`
--

CREATE TABLE IF NOT EXISTS `WEIXIN_VOTEPK_RECORD` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(50) DEFAULT NULL,
  `HEADIMGURL` longtext,
  `NICKNAME` varchar(50) DEFAULT NULL,
  `OPENID` varchar(50) DEFAULT NULL,
  `SUBSCIBE` varchar(50) DEFAULT NULL,
  `VOTEDATE` datetime DEFAULT NULL,
  `VOTENICKNAME` varchar(50) DEFAULT NULL,
  `VOTEOPENID` varchar(50) DEFAULT NULL,
  `VOTETYPE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `weixin_votepk_record`
--

CREATE TABLE IF NOT EXISTS `weixin_votepk_record` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(50) DEFAULT NULL,
  `OPENID` varchar(50) DEFAULT NULL,
  `VOTEDATE` datetime DEFAULT NULL,
  `VOTEOPENID` varchar(50) DEFAULT NULL,
  `VOTETYPE` varchar(50) DEFAULT NULL,
  `SUBSCIBE` varchar(50) DEFAULT NULL,
  `NICKNAME` varchar(50) DEFAULT NULL,
  `VOTENICKNAME` varchar(50) DEFAULT NULL,
  `headimgurl` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `WEIXIN_VOTEPK_SIGNUSERINFO`
--

CREATE TABLE IF NOT EXISTS `WEIXIN_VOTEPK_SIGNUSERINFO` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `OPENID` varchar(200) DEFAULT NULL,
  `QRCODEURL` longtext,
  `REALNAME` varchar(50) DEFAULT NULL,
  `SCENEID` int(11) DEFAULT NULL,
  `SIGNDATE` datetime DEFAULT NULL,
  `TEL` varchar(50) DEFAULT NULL,
  `VOTECOUNT` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `weixin_votepk_signuserinfo`
--

CREATE TABLE IF NOT EXISTS `weixin_votepk_signuserinfo` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `OPENID` varchar(200) DEFAULT NULL,
  `QRCODEURL` longtext,
  `REALNAME` varchar(50) DEFAULT NULL,
  `SCENEID` int(11) DEFAULT NULL,
  `SIGNDATE` datetime DEFAULT NULL,
  `TEL` varchar(50) DEFAULT NULL,
  `VOTECOUNT` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `weixin_vote_option`
--

CREATE TABLE IF NOT EXISTS `weixin_vote_option` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(50) DEFAULT NULL,
  `VOTE_COUNT` int(11) DEFAULT NULL,
  `SCALE` double DEFAULT NULL,
  `VOTE_OPTION_TITLE` varchar(50) DEFAULT NULL,
  `VOTE_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_4avf3c7onqp8cjg49phgu9smg` (`VOTE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_vote_option`
--

INSERT INTO `weixin_vote_option` (`ID`, `ACCOUNTID`, `VOTE_COUNT`, `SCALE`, `VOTE_OPTION_TITLE`, `VOTE_ID`) VALUES
('402880e648152c3a01481537e6ba000e', '402881e8461795c201461795c2e90000', 3, 0.75, '苹果', '402880e648152c3a01481537e6b6000d'),
('402880e648152c3a01481537e6bd000f', '402881e8461795c201461795c2e90000', 1, 0.33, '桃子', '402880e648152c3a01481537e6b6000d'),
('402880e648152c3a01481537e6c00010', '402881e8461795c201461795c2e90000', 0, 0, '栗子', '402880e648152c3a01481537e6b6000d');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_vote_record`
--

CREATE TABLE IF NOT EXISTS `weixin_vote_record` (
  `id` varchar(255) NOT NULL,
  `accountid` varchar(50) DEFAULT NULL,
  `openid` varchar(50) DEFAULT NULL,
  `optionid` varchar(50) DEFAULT NULL,
  `userid` varchar(50) DEFAULT NULL,
  `voteid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weixin_vote_record`
--

INSERT INTO `weixin_vote_record` (`id`, `accountid`, `openid`, `optionid`, `userid`, `voteid`) VALUES
('402880e648152c3a014815381b9c0012', '402881e8461795c201461795c2e90000', '', '402880e648152c3a01481537e6ba000e', '4028d881436d514601436d5215ac0043', '402880e648152c3a01481537e6b6000d'),
('f7a8a3a9487816f8014878221213005c', '402881e8461795c201461795c2e90000', 'oGCDRjiIBtNQApPs1GY9kF3xIpgs', '402880e648152c3a01481537e6ba000e', 'f7a8a3a9487816f80148782154be0057', '402880e648152c3a01481537e6b6000d'),
('f7a8a3a9487816f80148786fc36b0143', '402881e8461795c201461795c2e90000', 'oGCDRjrgOW4Lf0aJapxmXkLDzsXE', '402880e648152c3a01481537e6bd000f', 'f7a8a3a9487816f80148786f49a7013f', '402880e648152c3a01481537e6b6000d'),
('f7a8a3a9487816f80148788b9752015f', '402881e8461795c201461795c2e90000', 'oGCDRjuLfYaYMGTpJJIUlOAw3ZzY', '402880e648152c3a01481537e6ba000e', 'f7a8a3a9487816f80148788795320150', '402880e648152c3a01481537e6b6000d');

-- --------------------------------------------------------

--
-- 表的结构 `weixin_wall`
--

CREATE TABLE IF NOT EXISTS `weixin_wall` (
  `id` varchar(36) NOT NULL DEFAULT '',
  `name` varchar(200) DEFAULT NULL,
  `keyword` varchar(50) DEFAULT NULL,
  `logo` varchar(500) DEFAULT NULL,
  `qr_code` varchar(500) DEFAULT NULL,
  `createtime` date DEFAULT NULL,
  `starttime` date DEFAULT NULL,
  `endtime` date DEFAULT NULL,
  `type` char(1) DEFAULT NULL,
  `timer` int(10) DEFAULT NULL,
  `accountid` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `weixin_wall_message`
--

CREATE TABLE IF NOT EXISTS `weixin_wall_message` (
  `id` varchar(36) NOT NULL DEFAULT '',
  `openid` varchar(200) DEFAULT NULL,
  `accountid` varchar(36) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `nickname` varchar(200) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `headimgurl` varchar(1000) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `userid` varchar(36) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `wallid` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `wx_huodong`
--

CREATE TABLE IF NOT EXISTS `wx_huodong` (
  `id` varchar(36) NOT NULL,
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `hd_caption` varchar(1000) DEFAULT NULL,
  `hd_name` varchar(100) DEFAULT NULL COMMENT '活动名称',
  `hd_status` int(11) DEFAULT NULL COMMENT '活动状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `wx_huodong`
--

INSERT INTO `wx_huodong` (`id`, `create_name`, `create_date`, `update_name`, `update_date`, `hd_caption`, `hd_name`, `hd_status`) VALUES
('40288088486e568501486e5a012b0002', '', NULL, 'admin', '2014-09-14 09:53:03', '活esfrsadfr', '活动1', 1),
('40288088486e568501486e5a01630003', '', NULL, 'admin', '2014-09-14 09:53:09', '活动说明', '活动2', 1);

-- --------------------------------------------------------

--
-- 表的结构 `wx_zhongjiang`
--

CREATE TABLE IF NOT EXISTS `wx_zhongjiang` (
  `id` varchar(36) NOT NULL,
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  `platform_code` int(11) DEFAULT NULL COMMENT '社区平台',
  `user_account` varchar(32) DEFAULT NULL COMMENT '平台账号',
  `huoddong_id` varchar(32) DEFAULT NULL COMMENT '活动ID',
  `jp_name` varchar(100) DEFAULT NULL COMMENT '奖品名称',
  `jp_code` varchar(100) DEFAULT NULL COMMENT '奖品代码',
  `jp_level` int(11) DEFAULT NULL COMMENT '奖品级别',
  `jp_flag` int(11) DEFAULT NULL COMMENT '兑奖状态',
  `user_anme` varchar(50) DEFAULT NULL COMMENT '兑奖人姓名',
  `user_telphone` varchar(100) DEFAULT NULL COMMENT '联系方式',
  `user_address` longtext COMMENT '收件地址',
  `content` longtext COMMENT '备注',
  `idcard_a_file` longtext COMMENT '身份证正面',
  `idcard_b_file` longtext COMMENT '身份证反面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `wx_zhongjiang`
--

INSERT INTO `wx_zhongjiang` (`id`, `create_name`, `create_date`, `update_name`, `update_date`, `platform_code`, `user_account`, `huoddong_id`, `jp_name`, `jp_code`, `jp_level`, `jp_flag`, `user_anme`, `user_telphone`, `user_address`, `content`, `idcard_a_file`, `idcard_b_file`) VALUES
('402881f34872fd6901487300536d0006', 'admin', '2014-09-14 15:11:14', NULL, NULL, 1, 'zhangsan', '40288088486e568501486e5a012b0002', '苹果手机', 'A001', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
('402881f34872fd690148730054d10007', 'admin', '2014-09-14 15:11:14', NULL, NULL, 2, 'lisi', '40288088486e568501486e5a01630003', '苹果笔记本', 'A002', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
('402881f34872fd690148730054fb0008', 'admin', '2014-09-14 15:11:14', 'admin', '2014-09-14 15:13:26', 4, 'scott', '40288088486e568501486e5a01630003', '苹果笔记本', 'A003', 1, 1, '张代浩', '13426432920', '北京天通苑天通南阳', '平谷手机', 'upload\\zhongjiang\\402881f34873025601487302567d0000.jpg', 'upload\\zhongjiang\\402881f3487302560148730256800001.gif');

--
-- 限制导出的表
--

--
-- 限制表 `cgform_field`
--
ALTER TABLE `cgform_field`
  ADD CONSTRAINT `FK_iwtkke1oigq9ukafldrovslx6` FOREIGN KEY (`table_id`) REFERENCES `cgform_head` (`id`);

--
-- 限制表 `cgform_uploadfiles`
--
ALTER TABLE `cgform_uploadfiles`
  ADD CONSTRAINT `FK_qwig8sn3okhvh4wye8nn8gdeg` FOREIGN KEY (`id`) REFERENCES `t_s_attachment` (`ID`);

--
-- 限制表 `jeecg_demo_course`
--
ALTER TABLE `jeecg_demo_course`
  ADD CONSTRAINT `FK_g3jn8mfod69i7jfv5gnrcvgbx` FOREIGN KEY (`teacher_ID`) REFERENCES `jeecg_demo_teacher` (`ID`);

--
-- 限制表 `jeecg_demo_student`
--
ALTER TABLE `jeecg_demo_student`
  ADD CONSTRAINT `FK_r86q81koyocgod3cx6529hbpw` FOREIGN KEY (`COURSE_ID`) REFERENCES `jeecg_demo_course` (`ID`);

--
-- 限制表 `jeecg_matter_bom`
--
ALTER TABLE `jeecg_matter_bom`
  ADD CONSTRAINT `FK_fldfyrevj0li4hej5b2gu2q7w` FOREIGN KEY (`parent_ID`) REFERENCES `jeecg_matter_bom` (`ID`);

--
-- 限制表 `t_finance_files`
--
ALTER TABLE `t_finance_files`
  ADD CONSTRAINT `FK_28m7vvi0cy5r5keke68b6f7rt` FOREIGN KEY (`id`) REFERENCES `t_s_attachment` (`ID`),
  ADD CONSTRAINT `FK_ij2p74feypwcda4n0n96pyd10` FOREIGN KEY (`financeId`) REFERENCES `t_finance` (`ID`);

--
-- 限制表 `t_s_attachment`
--
ALTER TABLE `t_s_attachment`
  ADD CONSTRAINT `FK_mnq23hlc835n4ufgjl7nkn3bd` FOREIGN KEY (`USERID`) REFERENCES `t_s_user` (`id`);

--
-- 限制表 `t_s_base_user`
--
ALTER TABLE `t_s_base_user`
  ADD CONSTRAINT `FK_15jh1g4iem1857546ggor42et` FOREIGN KEY (`departid`) REFERENCES `t_s_depart` (`ID`);

--
-- 限制表 `t_s_config`
--
ALTER TABLE `t_s_config`
  ADD CONSTRAINT `FK_m3q8r50ror4fl7fjkvd82tqgn` FOREIGN KEY (`userid`) REFERENCES `t_s_user` (`id`);

--
-- 限制表 `t_s_demo`
--
ALTER TABLE `t_s_demo`
  ADD CONSTRAINT `FK_fni8e3v88wcf2sahhlv57u4nm` FOREIGN KEY (`demopid`) REFERENCES `t_s_demo` (`ID`);

--
-- 限制表 `t_s_depart`
--
ALTER TABLE `t_s_depart`
  ADD CONSTRAINT `FK_knnm3wb0bembwvm0il7tf6686` FOREIGN KEY (`parentdepartid`) REFERENCES `t_s_depart` (`ID`);

--
-- 限制表 `t_s_document`
--
ALTER TABLE `t_s_document`
  ADD CONSTRAINT `FK_f2mc12eu0umghp2i70apmtxjl` FOREIGN KEY (`id`) REFERENCES `t_s_attachment` (`ID`),
  ADD CONSTRAINT `FK_qr3qlmgkflj35m5ci1xv0vvg3` FOREIGN KEY (`typeid`) REFERENCES `t_s_type` (`ID`);

--
-- 限制表 `t_s_function`
--
ALTER TABLE `t_s_function`
  ADD CONSTRAINT `FK_brd7b3keorj8pmxcv8bpahnxp` FOREIGN KEY (`parentfunctionid`) REFERENCES `t_s_function` (`ID`),
  ADD CONSTRAINT `FK_gbdacaoju6d5u53rp4jo4rbs9` FOREIGN KEY (`desk_iconid`) REFERENCES `t_s_icon` (`ID`),
  ADD CONSTRAINT `FK_q5tqo3v4ltsp1pehdxd59rccx` FOREIGN KEY (`iconid`) REFERENCES `t_s_icon` (`ID`);

--
-- 限制表 `t_s_log`
--
ALTER TABLE `t_s_log`
  ADD CONSTRAINT `FK_oe64k4852uylhyc5a00rfwtay` FOREIGN KEY (`userid`) REFERENCES `t_s_user` (`id`);

--
-- 限制表 `t_s_operation`
--
ALTER TABLE `t_s_operation`
  ADD CONSTRAINT `FK_ny5de7922l39ta2pkhyspd5f` FOREIGN KEY (`iconid`) REFERENCES `t_s_icon` (`ID`),
  ADD CONSTRAINT `FK_pceuy41wr2fjbcilyc7mk3m1f` FOREIGN KEY (`functionid`) REFERENCES `t_s_function` (`ID`);

--
-- 限制表 `t_s_role_function`
--
ALTER TABLE `t_s_role_function`
  ADD CONSTRAINT `FK_9dww3p4w8jwvlrgwhpitsbfif` FOREIGN KEY (`roleid`) REFERENCES `t_s_role` (`ID`),
  ADD CONSTRAINT `FK_fvsillj2cxyk5thnuu625urab` FOREIGN KEY (`functionid`) REFERENCES `t_s_function` (`ID`);

--
-- 限制表 `t_s_role_user`
--
ALTER TABLE `t_s_role_user`
  ADD CONSTRAINT `FK_d4qb5xld2pfb0bkjx9iwtolda` FOREIGN KEY (`userid`) REFERENCES `t_s_user` (`id`),
  ADD CONSTRAINT `FK_n2ucxeorvpjy7qhnmuem01kbx` FOREIGN KEY (`roleid`) REFERENCES `t_s_role` (`ID`);

--
-- 限制表 `t_s_type`
--
ALTER TABLE `t_s_type`
  ADD CONSTRAINT `FK_3q40mr4ebtd0cvx79matl39x1` FOREIGN KEY (`typegroupid`) REFERENCES `t_s_typegroup` (`ID`),
  ADD CONSTRAINT `FK_nw2b22gy7plh7pqows186odmq` FOREIGN KEY (`typepid`) REFERENCES `t_s_type` (`ID`);

--
-- 限制表 `t_s_user`
--
ALTER TABLE `t_s_user`
  ADD CONSTRAINT `FK_2cuji5h6yorrxgsr8ojndlmal` FOREIGN KEY (`id`) REFERENCES `t_s_base_user` (`ID`);

--
-- 限制表 `weixin_awards_award`
--
ALTER TABLE `weixin_awards_award`
  ADD CONSTRAINT `FK_abwq6mo6cvp27syb618w3jupf` FOREIGN KEY (`huodong_id`) REFERENCES `weixin_huodong` (`id`),
  ADD CONSTRAINT `FK_kgvd4dso2dfe53fgtxaj1t6jc` FOREIGN KEY (`huoDongAwardEntity_id`) REFERENCES `weixin_huodong_awards` (`id`),
  ADD CONSTRAINT `FK_rp4b6isg6nyrdy9scdw41lggp` FOREIGN KEY (`award_id`) REFERENCES `weixin_award` (`id`),
  ADD CONSTRAINT `FK_t56wndtomibhs8fieiimgq8v6` FOREIGN KEY (`awards_level_id`) REFERENCES `weixin_awards_level` (`id`);

--
-- 限制表 `weixin_bbs_post`
--
ALTER TABLE `weixin_bbs_post`
  ADD CONSTRAINT `FK_hbo1supucwts7ujq7wvi8mvim` FOREIGN KEY (`BBS_ID`) REFERENCES `weixin_bbs` (`ID`);

--
-- 限制表 `weixin_bbs_post_comment`
--
ALTER TABLE `weixin_bbs_post_comment`
  ADD CONSTRAINT `FK_nems9ijkrds9yuskc5go20it3` FOREIGN KEY (`POST_ID`) REFERENCES `weixin_bbs_post` (`ID`);

--
-- 限制表 `weixin_bbs_post_img`
--
ALTER TABLE `weixin_bbs_post_img`
  ADD CONSTRAINT `FK_dm7mg8robtwox03ing3kmm1t9` FOREIGN KEY (`id`) REFERENCES `t_s_attachment` (`ID`),
  ADD CONSTRAINT `FK_qhavmw04br4l83vb26oi9h25b` FOREIGN KEY (`post_id`) REFERENCES `weixin_bbs_post` (`ID`);

--
-- 限制表 `weixin_huodong_awards`
--
ALTER TABLE `weixin_huodong_awards`
  ADD CONSTRAINT `FK_h7icpbg87fie5kgtwyp03dsp3` FOREIGN KEY (`hd_id`) REFERENCES `weixin_huodong` (`id`),
  ADD CONSTRAINT `FK_n178j4f2mxx2af4e9eom89t4p` FOREIGN KEY (`awards_level_id`) REFERENCES `weixin_awards_level` (`id`);

--
-- 限制表 `weixin_huodong_awards_weixin_awards_award`
--
ALTER TABLE `weixin_huodong_awards_weixin_awards_award`
  ADD CONSTRAINT `FK_fjj2xux4qsua8uxttba5bqrpg` FOREIGN KEY (`weixin_huodong_awards_ID`) REFERENCES `weixin_huodong_awards` (`id`),
  ADD CONSTRAINT `FK_sksqqh4e6tq2uc7bc1lkuatpi` FOREIGN KEY (`awardlist_ID`) REFERENCES `weixin_awards_award` (`id`);

--
-- 限制表 `weixin_leave_msg_reply`
--
ALTER TABLE `weixin_leave_msg_reply`
  ADD CONSTRAINT `FK_et3q739yp44m7d0p003liby4c` FOREIGN KEY (`MSG_ID`) REFERENCES `weixin_leave_msg` (`ID`);

--
-- 限制表 `weixin_member_coupon`
--
ALTER TABLE `weixin_member_coupon`
  ADD CONSTRAINT `FK_6y70y2f7s5r3ljyo3ovq5wcar` FOREIGN KEY (`couponid`) REFERENCES `weixin_promotion_coupon` (`id`),
  ADD CONSTRAINT `FK_cwy9h77t3o3cfw7k2hvyo23x` FOREIGN KEY (`member_vip_id`) REFERENCES `weixin_vip_member` (`ID`);

--
-- 限制表 `weixin_menuentity`
--
ALTER TABLE `weixin_menuentity`
  ADD CONSTRAINT `FK_astulwpsla864at9igbas3eic` FOREIGN KEY (`fatherid`) REFERENCES `weixin_menuentity` (`ID`);

--
-- 限制表 `weixin_newsitem`
--
ALTER TABLE `weixin_newsitem`
  ADD CONSTRAINT `FK_m8qs8ufeqkk5cx17budto66r0` FOREIGN KEY (`templateid`) REFERENCES `weixin_newstemplate` (`ID`);

--
-- 限制表 `weixin_photo`
--
ALTER TABLE `weixin_photo`
  ADD CONSTRAINT `FK_oqe2wy2ehv1gp54j8s8367e1g` FOREIGN KEY (`PHOTO_ALBUM_ID`) REFERENCES `weixin_photo_album` (`ID`),
  ADD CONSTRAINT `FK_rtqvxlo0v4hgfuw1ipngep5gs` FOREIGN KEY (`ID`) REFERENCES `t_s_attachment` (`ID`);

--
-- 限制表 `weixin_photo_album`
--
ALTER TABLE `weixin_photo_album`
  ADD CONSTRAINT `FK_jv7nb0xjbct8t41pfiy3pyu2f` FOREIGN KEY (`PHOTO_ID`) REFERENCES `weixin_photo` (`ID`);

--
-- 限制表 `weixin_prizerecord`
--
ALTER TABLE `weixin_prizerecord`
  ADD CONSTRAINT `FK_g9gh5aa11gdflh353kmvtc3vp` FOREIGN KEY (`PRIZE`) REFERENCES `weixin_awards_level` (`id`);

--
-- 限制表 `weixin_shop_cart`
--
ALTER TABLE `weixin_shop_cart`
  ADD CONSTRAINT `FK_sttol1w61rhh3j0i7ygdxwoun` FOREIGN KEY (`goods_id`) REFERENCES `weixin_shop_goods` (`id`),
  ADD CONSTRAINT `FK_tft4l75wvjgycjrkqlaab0n0c` FOREIGN KEY (`seller_id`) REFERENCES `t_s_user` (`id`);

--
-- 限制表 `weixin_shop_category`
--
ALTER TABLE `weixin_shop_category`
  ADD CONSTRAINT `FK_pyu50rd5olohgk0u8cnosgk3d` FOREIGN KEY (`parentid`) REFERENCES `weixin_shop_category` (`ID`);

--
-- 限制表 `weixin_shop_goods`
--
ALTER TABLE `weixin_shop_goods`
  ADD CONSTRAINT `FK_997yl0agvds726aknlc95grpo` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `weixin_shop_category` (`ID`);

--
-- 限制表 `weixin_shop_orderdetail`
--
ALTER TABLE `weixin_shop_orderdetail`
  ADD CONSTRAINT `FK_6q7xw4lc2crfa2rbbnx15rnjl` FOREIGN KEY (`order_id`) REFERENCES `weixin_shop_deal` (`id`),
  ADD CONSTRAINT `FK_g3hoendqqwpfqhnx3w685xjw6` FOREIGN KEY (`goods_id`) REFERENCES `weixin_shop_goods` (`id`);

--
-- 限制表 `weixin_survey_option`
--
ALTER TABLE `weixin_survey_option`
  ADD CONSTRAINT `FK_souo34p5h30ntkci47ag47vsb` FOREIGN KEY (`SURVEY_ID`) REFERENCES `weixin_survey` (`ID`);

--
-- 限制表 `weixin_vip_member`
--
ALTER TABLE `weixin_vip_member`
  ADD CONSTRAINT `FK_1vcxsax8twhsh45bk0dpsvess` FOREIGN KEY (`VIP_ID`) REFERENCES `weixin_vip_info` (`ID`),
  ADD CONSTRAINT `FK_tm49oa6pkefxo4qt1o52hphla` FOREIGN KEY (`MEMBER_ID`) REFERENCES `t_s_user` (`id`);

--
-- 限制表 `weixin_vote_option`
--
ALTER TABLE `weixin_vote_option`
  ADD CONSTRAINT `weixin_vote_option_ibfk_1` FOREIGN KEY (`VOTE_ID`) REFERENCES `weixin_vote` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
