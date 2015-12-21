/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : jeecgwx

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2015-12-21 09:43:44
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `cgform_button`
-- ----------------------------
DROP TABLE IF EXISTS `cgform_button`;
CREATE TABLE `cgform_button` (
  `ID` varchar(32) NOT NULL,
  `BUTTON_CODE` varchar(50) default NULL,
  `button_icon` varchar(20) default NULL,
  `BUTTON_NAME` varchar(50) default NULL,
  `BUTTON_STATUS` varchar(2) default NULL,
  `BUTTON_STYLE` varchar(20) default NULL,
  `EXP` varchar(255) default NULL,
  `FORM_ID` varchar(32) default NULL,
  `OPT_TYPE` varchar(20) default NULL,
  `order_num` int(11) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_button
-- ----------------------------

-- ----------------------------
-- Table structure for `cgform_button_sql`
-- ----------------------------
DROP TABLE IF EXISTS `cgform_button_sql`;
CREATE TABLE `cgform_button_sql` (
  `ID` varchar(32) NOT NULL,
  `BUTTON_CODE` varchar(50) default NULL,
  `CGB_SQL` tinyblob,
  `CGB_SQL_NAME` varchar(50) default NULL,
  `CONTENT` longtext,
  `FORM_ID` varchar(32) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_button_sql
-- ----------------------------

-- ----------------------------
-- Table structure for `cgform_enhance_js`
-- ----------------------------
DROP TABLE IF EXISTS `cgform_enhance_js`;
CREATE TABLE `cgform_enhance_js` (
  `ID` varchar(32) NOT NULL,
  `CG_JS` blob,
  `CG_JS_TYPE` varchar(20) default NULL,
  `CONTENT` longtext,
  `FORM_ID` varchar(32) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_enhance_js
-- ----------------------------

-- ----------------------------
-- Table structure for `cgform_field`
-- ----------------------------
DROP TABLE IF EXISTS `cgform_field`;
CREATE TABLE `cgform_field` (
  `id` varchar(32) NOT NULL,
  `content` varchar(200) NOT NULL,
  `create_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `create_name` varchar(32) default NULL,
  `dict_field` varchar(100) default NULL,
  `dict_table` varchar(100) default NULL,
  `dict_text` varchar(100) default NULL,
  `field_default` varchar(20) default NULL,
  `field_href` varchar(200) default NULL,
  `field_length` int(11) default NULL,
  `field_name` varchar(32) NOT NULL,
  `field_valid_type` varchar(10) default NULL,
  `is_key` varchar(2) default NULL,
  `is_null` varchar(5) default NULL,
  `is_query` varchar(5) default NULL,
  `is_show` varchar(5) default NULL,
  `is_show_list` varchar(5) default NULL,
  `length` int(11) NOT NULL,
  `main_field` varchar(100) default NULL,
  `main_table` varchar(100) default NULL,
  `old_field_name` varchar(32) default NULL,
  `order_num` int(11) default NULL,
  `point_length` int(11) default NULL,
  `query_mode` varchar(10) default NULL,
  `show_type` varchar(10) default NULL,
  `type` varchar(32) NOT NULL,
  `update_by` varchar(32) default NULL,
  `update_date` datetime default NULL,
  `update_name` varchar(32) default NULL,
  `table_id` varchar(32) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_iwtkke1oigq9ukafldrovslx6` (`table_id`),
  CONSTRAINT `FK_iwtkke1oigq9ukafldrovslx6` FOREIGN KEY (`table_id`) REFERENCES `cgform_head` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_field
-- ----------------------------
INSERT INTO cgform_field VALUES ('40288088486e343b01486e3f9d120007', '主键', '4028d881436d514601436d5215ac0043', '2014-09-13 17:02:15', 'admin', '', '', '', '', '', '120', 'id', '', 'Y', 'N', 'N', 'N', 'N', '36', '', '', 'id', '1', '0', 'single', 'text', 'string', null, null, null, '40288088486e343b01486e3f9d110006');
INSERT INTO cgform_field VALUES ('40288088486e343b01486e3f9d210008', '创建人名称', '4028d881436d514601436d5215ac0043', '2014-09-13 17:02:15', 'admin', '', '', '', '', '', '120', 'create_name', '', 'N', 'Y', 'N', 'N', 'N', '50', '', '', 'create_name', '2', '0', 'single', 'text', 'string', null, null, null, '40288088486e343b01486e3f9d110006');
INSERT INTO cgform_field VALUES ('40288088486e343b01486e3f9d230009', '创建日期', '4028d881436d514601436d5215ac0043', '2014-09-13 17:02:15', 'admin', '', '', '', '', '', '120', 'create_date', '', 'N', 'Y', 'N', 'N', 'N', '20', '', '', 'create_date', '3', '0', 'single', 'text', 'Date', null, null, null, '40288088486e343b01486e3f9d110006');
INSERT INTO cgform_field VALUES ('40288088486e343b01486e3f9d25000a', '修改人名称', '4028d881436d514601436d5215ac0043', '2014-09-13 17:02:15', 'admin', '', '', '', '', '', '120', 'update_name', '', 'N', 'Y', 'N', 'N', 'N', '50', '', '', 'update_name', '4', '0', 'single', 'text', 'string', null, null, null, '40288088486e343b01486e3f9d110006');
INSERT INTO cgform_field VALUES ('40288088486e343b01486e3f9d27000b', '修改日期', '4028d881436d514601436d5215ac0043', '2014-09-13 17:02:15', 'admin', '', '', '', '', '', '120', 'update_date', '', 'N', 'Y', 'N', 'N', 'N', '20', '', '', 'update_date', '5', '0', 'single', 'text', 'Date', null, null, null, '40288088486e343b01486e3f9d110006');
INSERT INTO cgform_field VALUES ('40288088486e343b01486e3f9d2f000c', '活动名称', '4028d881436d514601436d5215ac0043', '2014-09-13 17:02:15', 'admin', '', '', '', '', '', '120', 'hd_name', '', 'N', 'Y', 'Y', 'Y', 'Y', '100', '', '', 'hd_name', '6', '0', 'single', 'text', 'string', null, null, null, '40288088486e343b01486e3f9d110006');
INSERT INTO cgform_field VALUES ('40288088486e343b01486e3f9d34000d', '活动状态', '4028d881436d514601436d5215ac0043', '2014-09-13 17:02:15', 'admin', '', '', '', '', '', '120', 'hd_status', '', 'N', 'Y', 'Y', 'Y', 'Y', '32', '', '', 'hd_status', '7', '0', 'single', 'text', 'int', '4028d881436d514601436d5215ac0043', '2014-09-13 17:26:53', 'admin', '40288088486e343b01486e3f9d110006');
INSERT INTO cgform_field VALUES ('40288088486e6c7101486e80febb0002', '主键', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', '120', 'id', '', 'Y', 'N', 'N', 'N', 'N', '36', '', '', 'id', '1', '0', 'single', 'text', 'string', null, null, null, '40288088486e6c7101486e80feb70001');
INSERT INTO cgform_field VALUES ('40288088486e6c7101486e80feff0003', '创建人名称', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', '120', 'create_name', '', 'N', 'Y', 'N', 'N', 'N', '50', '', '', 'create_name', '2', '0', 'single', 'text', 'string', null, null, null, '40288088486e6c7101486e80feb70001');
INSERT INTO cgform_field VALUES ('40288088486e6c7101486e80ff040004', '创建日期', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', '120', 'create_date', '', 'N', 'Y', 'N', 'N', 'N', '20', '', '', 'create_date', '3', '0', 'single', 'text', 'Date', null, null, null, '40288088486e6c7101486e80feb70001');
INSERT INTO cgform_field VALUES ('40288088486e6c7101486e80ff170005', '修改人名称', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', '120', 'update_name', '', 'N', 'Y', 'N', 'N', 'N', '50', '', '', 'update_name', '4', '0', 'single', 'text', 'string', null, null, null, '40288088486e6c7101486e80feb70001');
INSERT INTO cgform_field VALUES ('40288088486e6c7101486e80ff1a0006', '修改日期', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', '120', 'update_date', '', 'N', 'Y', 'N', 'N', 'N', '20', '', '', 'update_date', '5', '0', 'single', 'text', 'Date', null, null, null, '40288088486e6c7101486e80feb70001');
INSERT INTO cgform_field VALUES ('40288088486e6c7101486e80ff340007', '社区平台', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', '120', 'platform_code', '', 'N', 'Y', 'N', 'Y', 'Y', '100', '', '', 'platform_code', '6', '0', 'single', 'text', 'string', null, null, null, '40288088486e6c7101486e80feb70001');
INSERT INTO cgform_field VALUES ('40288088486e6c7101486e80ff360008', '平台账号', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', '120', 'user_account', '', 'N', 'Y', 'N', 'Y', 'Y', '32', '', '', 'user_account', '7', '0', 'single', 'text', 'string', null, null, null, '40288088486e6c7101486e80feb70001');
INSERT INTO cgform_field VALUES ('40288088486e6c7101486e80ff400009', '活动ID', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', '120', 'huoddong_id', '', 'N', 'Y', 'N', 'Y', 'Y', '32', '', '', 'huoddong_id', '8', '0', 'single', 'text', 'string', null, null, null, '40288088486e6c7101486e80feb70001');
INSERT INTO cgform_field VALUES ('40288088486e6c7101486e80ff43000a', '奖品名称', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', '120', 'jp_name', '', 'N', 'Y', 'N', 'Y', 'Y', '100', '', '', 'jp_name', '9', '0', 'single', 'text', 'string', null, null, null, '40288088486e6c7101486e80feb70001');
INSERT INTO cgform_field VALUES ('40288088486e6c7101486e80ff46000b', '奖品代码', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', '120', 'jp_code', '', 'N', 'Y', 'N', 'Y', 'Y', '100', '', '', 'jp_code', '10', '0', 'single', 'text', 'string', null, null, null, '40288088486e6c7101486e80feb70001');
INSERT INTO cgform_field VALUES ('40288088486e6c7101486e80ff48000c', '奖品级别', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', '120', 'jp_level', '', 'N', 'Y', 'N', 'Y', 'Y', '2', '', '', 'jp_level', '11', '0', 'single', 'text', 'int', null, null, null, '40288088486e6c7101486e80feb70001');
INSERT INTO cgform_field VALUES ('40288088486e6c7101486e80ff52000d', '兑奖状态', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', '120', 'jp_flag', '', 'N', 'Y', 'N', 'Y', 'Y', '2', '', '', 'jp_flag', '12', '0', 'single', 'text', 'int', null, null, null, '40288088486e6c7101486e80feb70001');
INSERT INTO cgform_field VALUES ('40288088486e6c7101486e80ff54000e', '兑奖人姓名', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', '120', 'user_anme', '', 'N', 'Y', 'N', 'Y', 'Y', '50', '', '', 'user_anme', '13', '0', 'single', 'text', 'string', null, null, null, '40288088486e6c7101486e80feb70001');
INSERT INTO cgform_field VALUES ('40288088486e6c7101486e80ff57000f', '联系方式', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', '120', 'user_telphone', '', 'N', 'Y', 'N', 'Y', 'Y', '100', '', '', 'user_telphone', '14', '0', 'single', 'text', 'string', null, null, null, '40288088486e6c7101486e80feb70001');
INSERT INTO cgform_field VALUES ('40288088486e6c7101486e80ff5a0010', '收件地址', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', '120', 'user_address', '', 'N', 'Y', 'N', 'Y', 'Y', '500', '', '', 'user_address', '15', '0', 'single', 'text', 'string', null, null, null, '40288088486e6c7101486e80feb70001');
INSERT INTO cgform_field VALUES ('40288088486e6c7101486e80ff5d0011', '备注', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', '120', 'content', '', 'N', 'Y', 'N', 'Y', 'Y', '500', '', '', 'content', '16', '0', 'single', 'text', 'string', null, null, null, '40288088486e6c7101486e80feb70001');
INSERT INTO cgform_field VALUES ('40288088486e6c7101486e80ff5f0012', '身份证正面', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', '120', 'idcard_a_file', '', 'N', 'Y', 'N', 'Y', 'Y', '32', '', '', 'idcard_a_file', '17', '0', 'single', 'text', 'Blob', null, null, null, '40288088486e6c7101486e80feb70001');
INSERT INTO cgform_field VALUES ('40288088486e6c7101486e80ff620013', '身份证反面', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', '', '', '', '', '', '120', 'idcard_b_file', '', 'N', 'Y', 'N', 'Y', 'Y', '32', '', '', 'idcard_b_file', '18', '0', 'single', 'text', 'Blob', null, null, null, '40288088486e6c7101486e80feb70001');
INSERT INTO cgform_field VALUES ('402881e446676a0601466770878c0002', '主键', 'admin', '2014-06-04 23:12:46', '管理员', '', '', '', '', '', '0', 'id', '', 'Y', 'N', 'N', 'N', 'N', '36', '', '', 'id', '1', '0', 'single', 'text', 'string', null, null, null, '402881e446676a060146677087880001');
INSERT INTO cgform_field VALUES ('402881e446676a060146677087df0003', '关键字', 'admin', '2014-06-04 23:12:47', '管理员', '', '', '', '', '', '120', 'keyword', '', 'N', 'N', 'N', 'Y', 'Y', '100', '', '', 'key', '2', '0', 'single', 'text', 'string', 'admin', '2014-06-04 23:18:27', '管理员', '402881e446676a060146677087880001');
INSERT INTO cgform_field VALUES ('402881e446676a060146677087e20004', '类长名', 'admin', '2014-06-04 23:12:47', '管理员', '', '', '', '', '', '120', 'classname', '', 'N', 'N', 'N', 'Y', 'Y', '100', '', '', 'classname', '3', '0', 'single', 'text', 'string', null, null, null, '402881e446676a060146677087880001');
INSERT INTO cgform_field VALUES ('402881e446676a060146677087e50005', '微信公众帐号', 'admin', '2014-06-04 23:12:47', '管理员', '', '', '', '', '', '120', 'accountid', '', 'N', 'Y', 'N', 'Y', 'Y', '200', '', '', 'accountid', '4', '0', 'single', 'text', 'string', null, null, null, '402881e446676a060146677087880001');
INSERT INTO cgform_field VALUES ('402881e446676a0601466775b8fc0007', '功能名称', 'admin', '2014-06-04 23:18:27', '管理员', '', '', '', '', '', '120', 'name', '', 'N', 'Y', 'N', 'Y', 'Y', '100', '', '', 'name', '5', '0', 'single', 'text', 'string', null, null, null, '402881e446676a060146677087880001');
INSERT INTO cgform_field VALUES ('402881e446676a0601466775b9000008', '功能描述', 'admin', '2014-06-04 23:18:27', '管理员', '', '', '', '', '', '120', 'content', '', 'N', 'Y', 'N', 'Y', 'Y', '300', '', '', 'content', '6', '0', 'single', 'text', 'string', null, null, null, '402881e446676a060146677087880001');
INSERT INTO cgform_field VALUES ('402881e845c73cb00145c75445120008', '主键', 'admin', '2014-05-04 21:02:39', '管理员', '', '', '', '', '', '0', 'id', '', 'Y', 'N', 'N', 'N', 'N', '36', '', '', 'id', '1', '0', 'single', 'text', 'string', null, null, null, '402881e845c73cb00145c754450c0007');
INSERT INTO cgform_field VALUES ('402881e845c73cb00145c75445ae0009', '公众帐号名称', 'admin', '2014-05-04 21:02:40', '管理员', '', '', '', '', '', '120', 'accountname', '', 'N', 'Y', 'N', 'Y', 'Y', '200', '', '', 'accountname', '2', '0', 'single', 'text', 'string', null, null, null, '402881e845c73cb00145c754450c0007');
INSERT INTO cgform_field VALUES ('402881e845c73cb00145c75445b5000b', '公众帐号TOKEN', 'admin', '2014-05-04 21:02:40', '管理员', '', '', '', '', '', '120', 'accounttoken', '', 'N', 'Y', 'N', 'Y', 'Y', '200', '', '', 'accounttoken', '3', '0', 'single', 'text', 'string', 'admin', '2014-05-06 20:10:22', '管理员', '402881e845c73cb00145c754450c0007');
INSERT INTO cgform_field VALUES ('402881e845c73cb00145c75445b8000c', '公众微信号', 'admin', '2014-05-04 21:02:40', '管理员', '', '', '', '', '', '120', 'accountnumber', '', 'N', 'Y', 'N', 'Y', 'Y', '200', '', '', 'accountnumber', '4', '0', 'single', 'text', 'string', 'admin', '2014-05-06 20:10:22', '管理员', '402881e845c73cb00145c754450c0007');
INSERT INTO cgform_field VALUES ('402881e845c73cb00145c75445c3000d', '公众号类型', 'admin', '2014-05-04 21:02:40', '管理员', '', '', '', '', '', '120', 'accounttype', '', 'N', 'Y', 'N', 'Y', 'Y', '50', '', '', 'accounttype', '5', '0', 'single', 'text', 'string', 'admin', '2014-05-06 20:10:22', '管理员', '402881e845c73cb00145c754450c0007');
INSERT INTO cgform_field VALUES ('402881e845c73cb00145c75445c7000e', '电子邮箱', 'admin', '2014-05-04 21:02:40', '管理员', '', '', '', '', '', '120', 'accountemail', '', 'N', 'Y', 'N', 'Y', 'Y', '200', '', '', 'accountemail', '6', '0', 'single', 'text', 'string', 'admin', '2014-05-06 20:10:22', '管理员', '402881e845c73cb00145c754450c0007');
INSERT INTO cgform_field VALUES ('402881e845c73cb00145c75445cb000f', '公众帐号描述', 'admin', '2014-05-04 21:02:40', '管理员', '', '', '', '', '', '120', 'accountdesc', '', 'N', 'Y', 'N', 'Y', 'Y', '500', '', '', 'accountdesc', '7', '0', 'single', 'text', 'string', 'admin', '2014-05-06 20:10:22', '管理员', '402881e845c73cb00145c754450c0007');
INSERT INTO cgform_field VALUES ('402881e845d16cb10145d1711e730002', '公众帐号APPID', 'admin', '2014-05-06 20:10:22', '管理员', '', '', '', '', '', '120', 'accountappid', '', 'N', 'Y', 'N', 'Y', 'Y', '200', '', '', 'accountappid', '8', '0', 'single', 'text', 'string', null, null, null, '402881e845c73cb00145c754450c0007');
INSERT INTO cgform_field VALUES ('402881e845d16cb10145d1711e790003', '公众帐号APPSECRET', 'admin', '2014-05-06 20:10:22', '管理员', '', '', '', '', '', '120', 'accountappsecret', '', 'N', 'Y', 'N', 'Y', 'Y', '500', '', '', 'accountappsecret', '9', '0', 'single', 'text', 'string', null, null, null, '402881e845c73cb00145c754450c0007');
INSERT INTO cgform_field VALUES ('402881e845d16cb10145d1711e7e0004', 'ACCESS_TOKEN', 'admin', '2014-05-06 20:10:22', '管理员', '', '', '', '', '', '120', 'accountaccesstoken', '', 'N', 'Y', 'N', 'Y', 'Y', '1000', '', '', 'accountaccesstoken', '10', '0', 'single', 'text', 'string', null, null, null, '402881e845c73cb00145c754450c0007');
INSERT INTO cgform_field VALUES ('402881e946f72f8e0146f74632020009', '主键', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', '120', 'id', '', 'Y', 'N', 'N', 'N', 'N', '36', '', '', 'id', '1', '0', 'single', 'text', 'string', null, null, null, '402881e946f72f8e0146f74632010008');
INSERT INTO cgform_field VALUES ('402881e946f72f8e0146f7463216000a', '创建人名称', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', '120', 'create_name', '', 'N', 'Y', 'N', 'N', 'N', '50', '', '', 'create_name', '2', '0', 'single', 'text', 'string', null, null, null, '402881e946f72f8e0146f74632010008');
INSERT INTO cgform_field VALUES ('402881e946f72f8e0146f746321c000b', '创建日期', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', '120', 'create_date', '', 'N', 'Y', 'N', 'N', 'Y', '20', '', '', 'create_date', '3', '0', 'single', 'text', 'Date', null, null, null, '402881e946f72f8e0146f74632010008');
INSERT INTO cgform_field VALUES ('402881e946f72f8e0146f7463224000c', '修改人名称', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', '120', 'update_name', '', 'N', 'Y', 'N', 'N', 'N', '50', '', '', 'update_name', '4', '0', 'single', 'text', 'string', null, null, null, '402881e946f72f8e0146f74632010008');
INSERT INTO cgform_field VALUES ('402881e946f72f8e0146f7463246000d', '修改日期', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', '120', 'update_date', '', 'N', 'Y', 'N', 'N', 'N', '20', '', '', 'update_date', '5', '0', 'single', 'text', 'Date', null, null, null, '402881e946f72f8e0146f74632010008');
INSERT INTO cgform_field VALUES ('402881e946f72f8e0146f7463250000e', '分类名称', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', '120', 'name', '', 'N', 'Y', 'N', 'Y', 'Y', '50', '', '', 'name', '6', '0', 'single', 'text', 'string', null, null, null, '402881e946f72f8e0146f74632010008');
INSERT INTO cgform_field VALUES ('402881e946f72f8e0146f746326b000f', '图片路径', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', '120', 'imgurl', '', 'N', 'Y', 'N', 'Y', 'Y', '200', '', '', 'imgurl', '7', '0', 'single', 'text', 'string', null, null, null, '402881e946f72f8e0146f74632010008');
INSERT INTO cgform_field VALUES ('402881e946f72f8e0146f74632720010', '分类上级ID', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', '120', 'parentid', '', 'N', 'Y', 'N', 'Y', 'Y', '36', '', '', 'parentid', '8', '0', 'single', 'text', 'string', null, null, null, '402881e946f72f8e0146f74632010008');
INSERT INTO cgform_field VALUES ('402881e946f72f8e0146f746327b0011', '卖家ID', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', '120', 'seller_id', '', 'N', 'Y', 'N', 'N', 'N', '36', '', '', 'seller_id', '9', '0', 'single', 'text', 'string', null, null, null, '402881e946f72f8e0146f74632010008');
INSERT INTO cgform_field VALUES ('402881e94701b0bc014701b6ed3c0002', '主键', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'id', '', 'Y', 'N', 'N', 'N', 'N', '36', '', '', 'id', '1', '0', 'single', 'text', 'string', null, null, null, '402881e94701b0bc014701b6ed380001');
INSERT INTO cgform_field VALUES ('402881e94701b0bc014701b6ed620003', '创建人名称', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'create_name', '', 'N', 'Y', 'N', 'N', 'N', '50', '', '', 'create_name', '2', '0', 'single', 'text', 'string', null, null, null, '402881e94701b0bc014701b6ed380001');
INSERT INTO cgform_field VALUES ('402881e94701b0bc014701b6ed6a0004', '创建日期', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'create_date', '', 'N', 'Y', 'N', 'N', 'N', '20', '', '', 'create_date', '3', '0', 'single', 'text', 'Date', null, null, null, '402881e94701b0bc014701b6ed380001');
INSERT INTO cgform_field VALUES ('402881e94701b0bc014701b6ed880005', '修改人名称', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'update_name', '', 'N', 'Y', 'N', 'N', 'N', '50', '', '', 'update_name', '4', '0', 'single', 'text', 'string', null, null, null, '402881e94701b0bc014701b6ed380001');
INSERT INTO cgform_field VALUES ('402881e94701b0bc014701b6ed920006', '修改日期', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'update_date', '', 'N', 'Y', 'N', 'N', 'N', '20', '', '', 'update_date', '5', '0', 'single', 'text', 'Date', null, null, null, '402881e94701b0bc014701b6ed380001');
INSERT INTO cgform_field VALUES ('402881e94701b0bc014701b6ed9c0007', '标题信息', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'title', '', 'N', 'Y', 'N', 'Y', 'Y', '200', '', '', 'title', '6', '0', 'single', 'text', 'string', null, null, null, '402881e94701b0bc014701b6ed380001');
INSERT INTO cgform_field VALUES ('402881e94701b0bc014701b6eda50008', '标题图片', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'title_img', '', 'N', 'Y', 'N', 'Y', 'Y', '100', '', '', 'title_img', '7', '0', 'single', 'text', 'string', null, null, null, '402881e94701b0bc014701b6ed380001');
INSERT INTO cgform_field VALUES ('402881e94701b0bc014701b6edbd0009', '商品详情', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'descriptions', '', 'N', 'Y', 'N', 'Y', 'Y', '5000', '', '', 'descriptions', '8', '0', 'single', 'text', 'Text', '4028d881436d514601436d5215ac0043', '2014-07-04 22:14:48', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO cgform_field VALUES ('402881e94701b0bc014701b6edc5000a', '商品原价', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'price', '', 'N', 'Y', 'N', 'Y', 'Y', '18', '', '', 'price', '9', '2', 'single', 'text', 'double', '4028d881436d514601436d5215ac0043', '2014-07-04 22:14:48', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO cgform_field VALUES ('402881e94701b0bc014701b6edcc000b', '商品现价', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'real_price', '', 'N', 'Y', 'N', 'Y', 'Y', '18', '', '', 'real_price', '10', '2', 'single', 'text', 'double', '4028d881436d514601436d5215ac0043', '2014-07-04 22:14:48', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO cgform_field VALUES ('402881e94701b0bc014701b6edd4000c', '折扣', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'sale', '', 'N', 'Y', 'N', 'Y', 'Y', '18', '', '', 'sale', '11', '2', 'single', 'text', 'double', '4028d881436d514601436d5215ac0043', '2014-07-04 22:14:48', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO cgform_field VALUES ('402881e94701b0bc014701b6edde000d', '销售数量', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'sell_count', '', 'N', 'Y', 'N', 'Y', 'Y', '11', '', '', 'sell_count', '12', '0', 'single', 'text', 'int', '4028d881436d514601436d5215ac0043', '2014-07-04 22:14:48', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO cgform_field VALUES ('402881e94701b0bc014701b6ede5000e', '评价数量', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'discuss_count', '', 'N', 'Y', 'N', 'N', 'Y', '11', '', '', 'discuss_count', '13', '0', 'single', 'text', 'int', '4028d881436d514601436d5215ac0043', '2014-07-04 22:16:50', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO cgform_field VALUES ('402881e94701b0bc014701b6edec000f', '好评数量', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'good_count', '', 'N', 'Y', 'N', 'N', 'Y', '11', '', '', 'good_count', '14', '0', 'single', 'text', 'int', '4028d881436d514601436d5215ac0043', '2014-07-04 22:16:50', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO cgform_field VALUES ('402881e94701b0bc014701b6edf40010', '差评数量', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'bad_count', '', 'N', 'Y', 'N', 'N', 'Y', '11', '', '', 'bad_count', '15', '0', 'single', 'text', 'int', '4028d881436d514601436d5215ac0043', '2014-07-04 22:16:50', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO cgform_field VALUES ('402881e94701b0bc014701b6edff0011', '状态', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'statement', '', 'N', 'Y', 'N', 'N', 'Y', '32', '', '', 'statement', '16', '0', 'single', 'text', 'string', '4028d881436d514601436d5215ac0043', '2014-07-04 22:16:50', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO cgform_field VALUES ('402881e94701b0bc014701b6ee1a0012', '上架时间', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'shelve_time', '', 'N', 'Y', 'N', 'N', 'Y', '32', '', '', 'shelve_time', '17', '0', 'single', 'text', 'Date', '4028d881436d514601436d5215ac0043', '2014-07-04 22:16:50', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO cgform_field VALUES ('402881e94701b0bc014701b6ee220013', '下架时间', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'remove_time', '', 'N', 'Y', 'N', 'N', 'Y', '32', '', '', 'remove_time', '18', '0', 'single', 'text', 'Date', '4028d881436d514601436d5215ac0043', '2014-07-04 22:16:50', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO cgform_field VALUES ('402881e94701b0bc014701b6ee280014', '快递名称', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'express_name', '', 'N', 'Y', 'N', 'Y', 'Y', '32', '', '', 'express_name', '19', '0', 'single', 'text', 'string', null, null, null, '402881e94701b0bc014701b6ed380001');
INSERT INTO cgform_field VALUES ('402881e94701b0bc014701b6ee2f0015', '快递费用', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'express_price', '', 'N', 'Y', 'N', 'Y', 'Y', '18', '', '', 'express_price', '20', '2', 'single', 'text', 'double', '4028d881436d514601436d5215ac0043', '2014-07-04 22:14:48', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO cgform_field VALUES ('402881e94701b0bc014701b6ee360016', '卖家ID', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'seller_id', '', 'N', 'Y', 'N', 'Y', 'Y', '36', '', '', 'seller_id', '21', '0', 'single', 'text', 'string', '4028d881436d514601436d5215ac0043', '2014-07-04 22:14:48', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d52193b012f', '主键', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'id', null, 'Y', 'N', 'N', 'N', 'N', '36', '', '', null, '0', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d521928012a');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d5219410130', '订单号', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'order_code', null, 'N', 'Y', 'Y', 'Y', 'Y', '50', '', '', null, '1', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d521928012a');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d5219460131', '订单日期', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'order_date', null, 'N', 'Y', 'Y', 'Y', 'Y', '20', '', '', null, '2', '0', 'single', 'date', 'Date', null, null, null, '4028d881436d514601436d521928012a');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d5219480132', '订单金额', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'order_money', null, 'N', 'Y', 'Y', 'Y', 'Y', '10', '', '', null, '3', '3', 'single', 'text', 'double', null, null, null, '4028d881436d514601436d521928012a');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d52194a0133', '备注', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'content', null, 'N', 'Y', 'Y', 'Y', 'Y', '255', '', '', null, '4', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d521928012a');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d5219520134', '主键', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'id', null, 'Y', 'N', 'N', 'N', 'N', '36', '', '', null, '0', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d52192d012b');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d5219550135', '请假标题', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'title', null, 'N', 'N', 'N', 'Y', 'Y', '50', '', '', null, '1', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d52192d012b');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d5219570136', '请假人', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'people', null, 'N', 'N', 'Y', 'Y', 'Y', '20', '', '', null, '2', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d52192d012b');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d5219580137', '性别', 'admin', '2014-01-07 23:28:53', '管理员', 'sex', '', null, null, null, '0', 'sex', null, 'N', 'N', 'Y', 'Y', 'Y', '10', '', '', null, '3', '0', 'single', 'list', 'string', null, null, null, '4028d881436d514601436d52192d012b');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d52195a0138', '请假开始时间', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'begindate', null, 'N', 'N', 'N', 'Y', 'Y', '0', '', '', null, '4', '0', 'group', 'date', 'Date', null, null, null, '4028d881436d514601436d52192d012b');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d52195b0139', '请假结束时间', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'enddate', null, 'N', 'N', 'N', 'Y', 'Y', '0', '', '', null, '5', '0', 'group', 'datetime', 'Date', null, null, null, '4028d881436d514601436d52192d012b');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d52195d013a', '所属部门', 'admin', '2014-01-07 23:28:53', '管理员', 'id', 't_s_depart', 'departname', null, null, '0', 'hol_dept', null, 'N', 'N', 'N', 'Y', 'Y', '32', '', '', null, '7', '0', 'single', 'list', 'string', null, null, null, '4028d881436d514601436d52192d012b');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d52195e013b', '请假原因', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'hol_reson', null, 'N', 'N', 'N', 'Y', 'Y', '255', '', '', null, '8', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d52192d012b');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d521960013c', '部门审批人', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'dep_leader', null, 'N', 'N', 'N', 'Y', 'Y', '20', '', '', null, '9', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d52192d012b');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d521961013d', '部门审批意见', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'content', null, 'N', 'N', 'N', 'Y', 'Y', '255', '', '', null, '10', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d52192d012b');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d521963013e', '请假天数', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '120', 'day_num', null, 'N', 'Y', 'N', 'Y', 'Y', '10', '', '', null, '6', '0', 'single', 'text', 'int', null, null, null, '4028d881436d514601436d52192d012b');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d52196e013f', '主键', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'id', null, 'Y', 'N', 'N', 'N', 'N', '36', '', '', null, '0', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d52192f012c');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d5219700140', '客户名', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'name', null, 'N', 'Y', 'Y', 'Y', 'Y', '32', '', '', null, '1', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d52192f012c');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d5219720141', '单价', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'money', null, 'N', 'Y', 'Y', 'Y', 'Y', '10', '', '', null, '2', '2', 'group', 'text', 'double', null, null, null, '4028d881436d514601436d52192f012c');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d5219740142', '外键', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '120', 'fk_id', null, 'N', 'N', 'Y', 'N', 'N', '36', 'id', 'jform_order_main', null, '5', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d52192f012c');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d5219750143', '电话', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '120', 'telphone', null, 'N', 'Y', 'Y', 'Y', 'Y', '32', '', '', null, '4', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d52192f012c');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d5219770144', '性别', 'admin', '2014-01-07 23:28:53', '管理员', 'sex', '', null, null, null, '120', 'sex', null, 'N', 'Y', 'Y', 'Y', 'Y', '4', '', '', null, '3', '0', 'single', 'radio', 'string', null, null, null, '4028d881436d514601436d52192f012c');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d52197b0145', '主键', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '120', 'id', null, 'Y', 'N', 'N', 'N', 'N', '36', '', '', null, '0', '0', 'single', 'checkbox', 'string', null, null, null, '4028d881436d514601436d521931012d');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d52197d0146', '航班号', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '120', 'ticket_code', null, 'N', 'N', 'Y', 'Y', 'Y', '100', '', '', null, '1', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d521931012d');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d52197f0147', '航班时间', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '120', 'tickect_date', null, 'N', 'N', 'Y', 'Y', 'Y', '10', '', '', null, '2', '0', 'single', 'datetime', 'Date', null, null, null, '4028d881436d514601436d521931012d');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d5219810148', '外键', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '120', 'fck_id', null, 'N', 'N', 'N', 'N', 'N', '36', 'id', 'jform_order_main', null, '3', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d521931012d');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d5219860149', '主键', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'id', null, 'Y', 'N', 'N', 'N', 'N', '36', '', '', null, '0', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d521989014a', '机构合计', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'a', null, 'N', 'N', 'Y', 'Y', 'Y', '10', '', '', null, '1', '2', 'group', 'text', 'double', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d52198a014b', '行政小计', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'b1', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '2', '2', 'group', 'text', 'double', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d52198d014c', '行政省', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'b11', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '3', '0', 'group', 'text', 'string', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d52198f014d', '行政市', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'b12', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '4', '0', 'group', 'text', 'string', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d521991014e', '行政县', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'b13', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '5', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d521994014f', '事业合计', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'b2', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '6', '2', 'single', 'text', 'double', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d5219970150', '参公小计', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'b3', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '7', '2', 'single', 'text', 'double', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d5219990151', '参公省', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'b31', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '8', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d52199c0152', '参公市', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'b32', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '9', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d52199e0153', '参公县', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'b33', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '10', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d5219a00154', '全额拨款', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'c1', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '11', '2', 'single', 'text', 'double', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d5219a30155', '差额拨款', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'c2', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '12', '2', 'single', 'text', 'double', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d5219a60156', '自收自支', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'c3', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '13', '2', 'single', 'text', 'double', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d5219a80157', '经费合计', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'd', null, 'N', 'N', 'Y', 'Y', 'Y', '10', '', '', null, '14', '2', 'single', 'text', 'int', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO cgform_field VALUES ('4028d881436d514601436d5219aa0158', '机构资质', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'd1', null, 'N', 'N', 'N', 'Y', 'Y', '1000', '', '', null, '15', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d521933012e');

-- ----------------------------
-- Table structure for `cgform_ftl`
-- ----------------------------
DROP TABLE IF EXISTS `cgform_ftl`;
CREATE TABLE `cgform_ftl` (
  `ID` varchar(32) NOT NULL,
  `CGFORM_ID` varchar(36) NOT NULL,
  `CGFORM_NAME` varchar(100) NOT NULL,
  `CREATE_BY` varchar(36) default NULL,
  `CREATE_DATE` datetime default NULL,
  `CREATE_NAME` varchar(32) default NULL,
  `FTL_CONTENT` longtext,
  `FTL_STATUS` varchar(50) default NULL,
  `FTL_VERSION` int(11) NOT NULL,
  `FTL_WORD_URL` varchar(200) default NULL,
  `UPDATE_BY` varchar(36) default NULL,
  `UPDATE_DATE` datetime default NULL,
  `UPDATE_NAME` varchar(32) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_ftl
-- ----------------------------

-- ----------------------------
-- Table structure for `cgform_head`
-- ----------------------------
DROP TABLE IF EXISTS `cgform_head`;
CREATE TABLE `cgform_head` (
  `id` varchar(32) NOT NULL,
  `content` varchar(200) NOT NULL,
  `create_by` varchar(32) default NULL,
  `create_date` datetime default NULL,
  `create_name` varchar(32) default NULL,
  `is_checkbox` varchar(5) NOT NULL,
  `is_dbsynch` varchar(20) NOT NULL,
  `is_pagination` varchar(5) NOT NULL,
  `is_tree` varchar(5) NOT NULL,
  `jform_type` int(11) NOT NULL,
  `jform_version` varchar(10) NOT NULL,
  `querymode` varchar(10) NOT NULL,
  `relation_type` int(11) default NULL,
  `sub_table_str` longtext,
  `table_name` varchar(20) NOT NULL,
  `update_by` varchar(32) default NULL,
  `update_date` datetime default NULL,
  `update_name` varchar(32) default NULL,
  `jform_pk_sequence` varchar(200) default NULL,
  `jform_pk_type` varchar(100) default NULL,
  `tab_order` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_head
-- ----------------------------
INSERT INTO cgform_head VALUES ('40288088486e343b01486e3f9d110006', '活动表', '4028d881436d514601436d5215ac0043', '2014-09-13 17:02:15', 'admin', 'Y', 'Y', 'Y', 'N', '1', '5', 'group', '0', null, 'wx_huodong', '4028d881436d514601436d5215ac0043', '2014-09-13 17:26:53', 'admin', '', 'UUID', null);
INSERT INTO cgform_head VALUES ('40288088486e6c7101486e80feb70001', '中奖记录', '4028d881436d514601436d5215ac0043', '2014-09-13 18:13:40', 'admin', 'N', 'Y', 'Y', 'N', '1', '2', 'group', '0', null, 'wx_zhongjiang', '4028d881436d514601436d5215ac0043', '2014-09-13 18:25:45', 'admin', '', 'UUID', null);
INSERT INTO cgform_head VALUES ('402881e446676a060146677087880001', '扩展接口管理', 'admin', '2014-06-04 23:12:46', '管理员', 'N', 'Y', 'Y', 'N', '1', '2', 'single', '0', null, 'weixin_expandconfig', 'admin', '2014-06-04 23:18:31', '管理员', null, null, null);
INSERT INTO cgform_head VALUES ('402881e845c73cb00145c754450c0007', '微信公众帐号信息', 'admin', '2014-05-04 21:02:39', '管理员', 'Y', 'Y', 'Y', 'N', '1', '2', 'single', '0', null, 'weixin_account', 'admin', '2014-05-06 20:10:30', '管理员', null, null, null);
INSERT INTO cgform_head VALUES ('402881e946f72f8e0146f74632010008', '商品分类', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', 'N', 'Y', 'Y', 'Y', '1', '1', 'single', '0', null, 'WEIXIN_MALL_CATEGORY', '4028d881436d514601436d5215ac0043', '2014-07-02 21:45:35', 'admin', '', 'UUID', null);
INSERT INTO cgform_head VALUES ('402881e94701b0bc014701b6ed380001', '商品信息', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', 'Y', 'Y', 'Y', 'N', '1', '3', 'group', '0', null, 'weixin_shop_goods', '4028d881436d514601436d5215ac0043', '2014-07-04 22:23:37', 'admin', '', 'UUID', null);
INSERT INTO cgform_head VALUES ('4028d881436d514601436d521928012a', '订单主信息', 'admin', '2014-01-07 23:28:53', '管理员', 'N', 'Y', 'Y', 'N', '2', '57', 'group', '0', 'jform_order_ticket,jform_order_customer', 'jform_order_main', '4028d881436d514601436d5215ac0043', '2014-07-24 15:39:44', 'admin', null, null, null);
INSERT INTO cgform_head VALUES ('4028d881436d514601436d52192d012b', '请假单', 'admin', '2014-01-07 23:28:53', '管理员', 'N', 'Y', 'Y', 'N', '1', '51', 'group', '0', null, 'jform_leave', 'admin', '2014-01-19 10:08:17', '管理员', null, null, null);
INSERT INTO cgform_head VALUES ('4028d881436d514601436d52192f012c', '订单客户信息', 'admin', '2014-01-07 23:28:53', '管理员', 'Y', 'N', 'Y', 'N', '3', '16', 'single', '0', null, 'jform_order_customer', null, null, null, null, null, null);
INSERT INTO cgform_head VALUES ('4028d881436d514601436d521931012d', '订单机票信息', 'admin', '2014-01-07 23:28:53', '管理员', 'N', 'N', 'Y', 'N', '3', '20', 'single', '0', null, 'jform_order_ticket', null, null, null, null, null, null);
INSERT INTO cgform_head VALUES ('4028d881436d514601436d521933012e', '价格认证机构统计表', 'admin', '2014-01-07 23:28:53', '管理员', 'N', 'N', 'Y', 'N', '1', '3', 'group', '0', null, 'jform_price1', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `cgform_uploadfiles`
-- ----------------------------
DROP TABLE IF EXISTS `cgform_uploadfiles`;
CREATE TABLE `cgform_uploadfiles` (
  `CGFORM_FIELD` varchar(100) NOT NULL,
  `CGFORM_ID` varchar(36) NOT NULL,
  `CGFORM_NAME` varchar(100) NOT NULL,
  `id` varchar(32) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_qwig8sn3okhvh4wye8nn8gdeg` (`id`),
  CONSTRAINT `FK_qwig8sn3okhvh4wye8nn8gdeg` FOREIGN KEY (`id`) REFERENCES `t_s_attachment` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_uploadfiles
-- ----------------------------

-- ----------------------------
-- Table structure for `ck_editor`
-- ----------------------------
DROP TABLE IF EXISTS `ck_editor`;
CREATE TABLE `ck_editor` (
  `ID` varchar(32) NOT NULL,
  `CONTENTS` blob,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_editor
-- ----------------------------
INSERT INTO ck_editor VALUES ('4028d881436d514601436d5219250129', 0x3C68746D6C3E0D0A3C686561643E0D0A093C7469746C653E3C2F7469746C653E0D0A093C6C696E6B20687265663D22706C75672D696E2F6561737975692F7468656D65732F64656661756C742F6561737975692E637373222069643D226561737975695468656D65222072656C3D227374796C6573686565742220747970653D22746578742F63737322202F3E0D0A093C6C696E6B20687265663D22706C75672D696E2F6561737975692F7468656D65732F69636F6E2E637373222072656C3D227374796C6573686565742220747970653D22746578742F63737322202F3E0D0A093C6C696E6B20687265663D22706C75672D696E2F6163636F7264696F6E2F6373732F6163636F7264696F6E2E637373222072656C3D227374796C6573686565742220747970653D22746578742F63737322202F3E0D0A093C6C696E6B20687265663D22706C75672D696E2F56616C6964666F726D2F6373732F7374796C652E637373222072656C3D227374796C6573686565742220747970653D22746578742F63737322202F3E0D0A093C6C696E6B20687265663D22706C75672D696E2F56616C6964666F726D2F6373732F7461626C6566726F6D2E637373222072656C3D227374796C6573686565742220747970653D22746578742F63737322202F3E0D0A093C7374796C6520747970653D22746578742F637373223E626F64797B666F6E742D73697A653A313270783B7D7461626C65207B626F726465723A31707820736F6C696420233030303030303B626F726465722D636F6C6C617073653A20636F6C6C617073653B7D7464207B626F726465723A31707820736F6C696420233030303030303B6261636B67726F756E643A77686974653B666F6E742D73697A653A313270783B666F6E742D66616D696C793A203F3F3F3F3F3F3B636F6C6F723A20233333333B0D0A093C2F7374796C653E0D0A3C2F686561643E0D0A3C626F64793E0D0A3C6469763E0D0A3C703E3F3F3F3F323F3F3C2F703E0D0A0D0A3C6831207374796C653D22746578742D616C69676E3A63656E746572223E3C7370616E207374796C653D22666F6E742D73697A653A32347078223E3C7374726F6E673E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2F7374726F6E673E3C2F7370616E3E3C2F68313E0D0A0D0A3C703E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C696E707574206E616D653D226F72675F6E616D652220747970653D2274657874222076616C75653D22247B6F72675F6E616D653F69665F6578697374733F68746D6C7D22202F3E3C2F703E0D0A0D0A3C703E3F3F3F3F3F3F3F3F3F3F3F3F3C696E707574206E616D653D226E756D2220747970653D2274657874222076616C75653D22247B6E756D3F69665F6578697374733F68746D6C7D22202F3E20266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B3F3F3F3F3F3F3F3F3F3F266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B203F3F3F3F3F3F3F3F266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B203F3F266E6273703B266E6273703B203F3F266E6273703B266E6273703B203F3F3C2F703E0D0A0D0A3C666F726D20616374696F6E3D226367466F726D4275696C64436F6E74726F6C6C65722E646F3F736176654F72557064617465222069643D22666F726D6F626A22206D6574686F643D22706F737422206E616D653D22666F726D6F626A223E3C696E707574206E616D653D227461626C654E616D652220747970653D2268696464656E222076616C75653D22247B7461626C654E616D653F69665F6578697374733F68746D6C7D22202F3E203C696E707574206E616D653D2269642220747970653D2268696464656E222076616C75653D22247B69643F69665F6578697374733F68746D6C7D22202F3E237B6A666F726D5F68696464656E5F6669656C647D3C696E70757420747970653D2268696464656E22202F3E0D0A3C703E266E6273703B3C2F703E0D0A0D0A3C7461626C6520626F726465723D2231222063656C6C70616464696E673D2230222063656C6C73706163696E673D223022207374796C653D2277696474683A313031367078223E0D0A093C74626F64793E0D0A09093C74723E0D0A0909093C746420726F777370616E3D2234223E0D0A0909093C703E266E6273703B3C2F703E0D0A0D0A0909093C703E266E6273703B3C2F703E0D0A0D0A0909093C703E3F3F3F3F3C2F703E0D0A0D0A0909093C703E266E6273703B3C2F703E0D0A0909093C2F74643E0D0A0909093C746420636F6C7370616E3D22362220726F777370616E3D2232223E0D0A0909093C703E266E6273703B3C2F703E0D0A0D0A0909093C703E3F3F3F3F3C2F703E0D0A0909093C2F74643E0D0A0909093C746420636F6C7370616E3D22352220726F777370616E3D2232223E0D0A0909093C703E266E6273703B3C2F703E0D0A0D0A0909093C703E3F3F3F3F3C2F703E0D0A0909093C2F74643E0D0A0909093C746420636F6C7370616E3D22342220726F777370616E3D2232223E0D0A0909093C703E266E6273703B3C2F703E0D0A0D0A0909093C703E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2F703E0D0A0909093C2F74643E0D0A0909093C746420636F6C7370616E3D2234223E0D0A0909093C703E3F3F3F3F3F3F3F3F3F3F3F3F3C2F703E0D0A0909093C2F74643E0D0A09093C2F74723E0D0A09093C74723E0D0A0909093C746420636F6C7370616E3D2234223E0D0A0909093C703E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2F703E0D0A0909093C2F74643E0D0A09093C2F74723E0D0A09093C74723E0D0A0909093C746420636F6C7370616E3D2233223E0D0A0909093C703E3F3F3F3F3F3F3F3F3C2F703E0D0A0909093C2F74643E0D0A0909093C746420636F6C7370616E3D2232223E0D0A0909093C703E3F3F3F3F3F3F3F3F3C2F703E0D0A0909093C2F74643E0D0A0909093C746420726F777370616E3D2232223E0D0A0909093C703E3F3F3F3F283F3F3F3F293F3F3F3F3C2F703E0D0A0909093C2F74643E0D0A0909093C746420726F777370616E3D2232223E0D0A0909093C703E3F3F3F3F3C2F703E0D0A0909093C2F74643E0D0A0909093C746420726F777370616E3D2232223E0D0A0909093C703E3F3F3F3F3C2F703E0D0A0909093C2F74643E0D0A0909093C746420726F777370616E3D2232223E0D0A0909093C703E3F3F3F3F3C2F703E0D0A0909093C2F74643E0D0A0909093C746420726F777370616E3D2232223E0D0A0909093C703E3F3F3F3F3F3F3C2F703E0D0A0909093C2F74643E0D0A0909093C746420726F777370616E3D2232223E0D0A0909093C703E3F3F3F3F3C2F703E0D0A0909093C2F74643E0D0A0909093C746420726F777370616E3D2232223E0D0A0909093C703E3F3F3F3F3C2F703E0D0A0D0A0909093C703E3F3F3F3F3F3F3C2F703E0D0A0909093C2F74643E0D0A0909093C746420726F777370616E3D2232223E0D0A0909093C703E3F3F3F3F3C2F703E0D0A0D0A0909093C703E3F3F3F3F3F3F3C2F703E0D0A0909093C2F74643E0D0A0909093C746420726F777370616E3D2232223E0D0A0909093C703E3F3F3F3F3C2F703E0D0A0D0A0909093C703E3F3F3F3F3F3F3C2F703E0D0A0909093C2F74643E0D0A0909093C746420726F777370616E3D2232223E0D0A0909093C703E3F3F3F3F3C2F703E0D0A0909093C2F74643E0D0A0909093C746420726F777370616E3D2232223E0D0A0909093C703E3F3F3F3F3C2F703E0D0A0909093C2F74643E0D0A0909093C746420726F777370616E3D2232223E0D0A0909093C703E3F3F3F3F3C2F703E0D0A0909093C2F74643E0D0A0909093C746420726F777370616E3D2232223E0D0A0909093C703E3F3F3F3F3C2F703E0D0A0909093C2F74643E0D0A0909093C746420726F777370616E3D2232223E0D0A0909093C703E3F3F3F3F3C2F703E0D0A0909093C2F74643E0D0A09093C2F74723E0D0A09093C74723E0D0A0909093C74643E0D0A0909093C703E3F3F3F3F3F3F3C2F703E0D0A0909093C2F74643E0D0A0909093C746420636F6C7370616E3D2232223E0D0A0909093C703E3F3F3F3F3C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E3F3F3F3F3C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E3F3F3F3F3C2F703E0D0A0909093C2F74643E0D0A09093C2F74723E0D0A09093C74723E0D0A0909093C74643E0D0A0909093C703E41313C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E42313C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E42323C2F703E0D0A0909093C2F74643E0D0A0909093C746420636F6C7370616E3D2232223E0D0A0909093C703E42333C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E42343C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E42353C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E43313C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E43323C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E43333C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E43343C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E43353C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E44313C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E44323C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E44333C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E44343C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E45313C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E45323C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E45333C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E45343C2F703E0D0A0909093C2F74643E0D0A09093C2F74723E0D0A09093C74723E0D0A0909093C74643E0D0A0909093C703E3C696E707574206E616D653D226131222073697A653D22342220747970653D2274657874222076616C75653D22247B61313F69665F6578697374733F68746D6C7D22202F3E3C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E3C696E707574206E616D653D226231222073697A653D22342220747970653D2274657874222076616C75653D22247B62313F69665F6578697374733F68746D6C7D22202F3E3C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E3C696E707574206E616D653D226232222073697A653D22342220747970653D2274657874222076616C75653D22247B62323F69665F6578697374733F68746D6C7D22202F3E3C2F703E0D0A0909093C2F74643E0D0A0909093C746420636F6C7370616E3D2232223E0D0A0909093C703E3C696E707574206E616D653D226233222073697A653D22342220747970653D2274657874222076616C75653D22247B62333F69665F6578697374733F68746D6C7D22202F3E3C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E3C696E707574206E616D653D226234222073697A653D22342220747970653D2274657874222076616C75653D22247B62343F69665F6578697374733F68746D6C7D22202F3E3C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E3C696E707574206E616D653D226235222073697A653D22342220747970653D2274657874222076616C75653D22247B62353F69665F6578697374733F68746D6C7D22202F3E3C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E3C696E707574206E616D653D226331222073697A653D22342220747970653D2274657874222076616C75653D22247B63313F69665F6578697374733F68746D6C7D22202F3E3C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E3C696E707574206E616D653D226332222073697A653D22342220747970653D2274657874222076616C75653D22247B63323F69665F6578697374733F68746D6C7D22202F3E3C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E3C696E707574206E616D653D226333222073697A653D22342220747970653D2274657874222076616C75653D22247B63333F69665F6578697374733F68746D6C7D22202F3E3C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E3C696E707574206E616D653D226334222073697A653D22342220747970653D2274657874222076616C75653D22247B63343F69665F6578697374733F68746D6C7D22202F3E3C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E3C696E707574206E616D653D226335222073697A653D22342220747970653D2274657874222076616C75653D22247B63353F69665F6578697374733F68746D6C7D22202F3E3C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E3C696E707574206E616D653D226431222073697A653D22342220747970653D2274657874222076616C75653D22247B64313F69665F6578697374733F68746D6C7D22202F3E3C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E3C696E707574206E616D653D226432222073697A653D22342220747970653D2274657874222076616C75653D22247B64323F69665F6578697374733F68746D6C7D22202F3E3C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E3C696E707574206E616D653D226433222073697A653D22342220747970653D2274657874222076616C75653D22247B64333F69665F6578697374733F68746D6C7D22202F3E3C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E3C696E707574206E616D653D226434222073697A653D22342220747970653D2274657874222076616C75653D22247B64343F69665F6578697374733F68746D6C7D22202F3E3C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E3C696E707574206E616D653D226531222073697A653D22342220747970653D2274657874222076616C75653D22247B65313F69665F6578697374733F68746D6C7D22202F3E3C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E3C696E707574206E616D653D226532222073697A653D22342220747970653D2274657874222076616C75653D22247B65323F69665F6578697374733F68746D6C7D22202F3E3C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E3C696E707574206E616D653D226533222073697A653D22342220747970653D2274657874222076616C75653D22247B65333F69665F6578697374733F68746D6C7D22202F3E3C2F703E0D0A0909093C2F74643E0D0A0909093C74643E0D0A0909093C703E3C696E707574206E616D653D226534222073697A653D22342220747970653D2274657874222076616C75653D22247B65343F69665F6578697374733F68746D6C7D22202F3E3C2F703E0D0A0909093C2F74643E0D0A09093C2F74723E0D0A09093C74723E0D0A0909093C746420636F6C7370616E3D223230223E0D0A0909093C703E266E6273703B3C2F703E0D0A0D0A0909093C703E3F3F3F3F3F3F3F3F3F3F3C2F703E0D0A0D0A0909093C703E3F3F3F3F3F3F3F3F3F3F413F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2F703E0D0A0D0A0909093C703E3F3F3F3F3F3F3F3F3F3F3C2F703E0D0A0D0A0909093C703E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F42313F3F42323F3F3F3F3F3F3C2F703E0D0A0D0A0909093C703E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F42333F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F42343F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2F703E0D0A0D0A0909093C703E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F42353F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2F703E0D0A0D0A0909093C703E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2F703E0D0A0D0A0909093C703E413D42312B42322B42332B42342B42353D43312B43322B43332B43342B43353D44312B44322B44332B44343D45312B45322B45332B45343C2F703E0D0A0909093C2F74643E0D0A09093C2F74723E0D0A093C2F74626F64793E0D0A3C2F7461626C653E0D0A3C2F666F726D3E0D0A3C2F6469763E0D0A3C2F626F64793E0D0A3C2F68746D6C3E0D0A);

-- ----------------------------
-- Table structure for `ck_finder`
-- ----------------------------
DROP TABLE IF EXISTS `ck_finder`;
CREATE TABLE `ck_finder` (
  `ID` varchar(32) NOT NULL,
  `ATTACHMENT` varchar(255) default NULL,
  `IMAGE` varchar(255) default NULL,
  `REMARK` longtext,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_finder
-- ----------------------------

-- ----------------------------
-- Table structure for `doc`
-- ----------------------------
DROP TABLE IF EXISTS `doc`;
CREATE TABLE `doc` (
  `ID` int(11) NOT NULL auto_increment,
  `DOCCONTENT` longblob,
  `DOCDATE` datetime default NULL,
  `DOCID` varchar(255) default NULL,
  `DOCTITLE` varchar(255) default NULL,
  `DOCTYPE` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doc
-- ----------------------------

-- ----------------------------
-- Table structure for `gzentity`
-- ----------------------------
DROP TABLE IF EXISTS `gzentity`;
CREATE TABLE `gzentity` (
  `id` varchar(100) NOT NULL,
  `templateName` varchar(100) default NULL,
  `templateId` varchar(100) default NULL,
  `lx` varchar(100) default NULL,
  `addTime` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gzentity
-- ----------------------------

-- ----------------------------
-- Table structure for `jeecg_demo`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_demo`;
CREATE TABLE `jeecg_demo` (
  `ID` varchar(32) NOT NULL,
  `AGE` int(11) default NULL,
  `BIRTHDAY` datetime default NULL,
  `content` varchar(255) default NULL,
  `CREATE_TIME` datetime default NULL,
  `DEP_ID` varchar(255) default NULL,
  `EMAIL` varchar(255) default NULL,
  `MOBILE_PHONE` varchar(255) default NULL,
  `OFFICE_PHONE` varchar(255) default NULL,
  `SALARY` decimal(19,2) default NULL,
  `SEX` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  `USER_NAME` varchar(255) NOT NULL,
  `create_date` datetime default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_demo
-- ----------------------------
INSERT INTO jeecg_demo VALUES ('4028d881436d514601436d521ad4015e', '12', '2014-01-07 23:28:53', null, null, '123', 'demo@jeecg.com', '13111111111', '66666666', '111111.00', '1', null, '小明', null);

-- ----------------------------
-- Table structure for `jeecg_demo_course`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_demo_course`;
CREATE TABLE `jeecg_demo_course` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(25) default NULL,
  `teacher_ID` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_g3jn8mfod69i7jfv5gnrcvgbx` (`teacher_ID`),
  CONSTRAINT `FK_g3jn8mfod69i7jfv5gnrcvgbx` FOREIGN KEY (`teacher_ID`) REFERENCES `jeecg_demo_teacher` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_demo_course
-- ----------------------------
INSERT INTO jeecg_demo_course VALUES ('4028d881436d514601436d5219b0015b', '海贼王', '4028d881436d514601436d5219ae015a');

-- ----------------------------
-- Table structure for `jeecg_demo_student`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_demo_student`;
CREATE TABLE `jeecg_demo_student` (
  `ID` varchar(32) NOT NULL,
  `BIRTHDAY` datetime default NULL,
  `NAME` varchar(32) default NULL,
  `SEX` varchar(1) default NULL,
  `COURSE_ID` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_r86q81koyocgod3cx6529hbpw` (`COURSE_ID`),
  CONSTRAINT `FK_r86q81koyocgod3cx6529hbpw` FOREIGN KEY (`COURSE_ID`) REFERENCES `jeecg_demo_course` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_demo_student
-- ----------------------------
INSERT INTO jeecg_demo_student VALUES ('4028d881436d514601436d5219b4015c', null, '卓洛', '0', '4028d881436d514601436d5219b0015b');
INSERT INTO jeecg_demo_student VALUES ('4028d881436d514601436d5219b7015d', null, '山治 ', '0', '4028d881436d514601436d5219b0015b');

-- ----------------------------
-- Table structure for `jeecg_demo_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_demo_teacher`;
CREATE TABLE `jeecg_demo_teacher` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(12) default NULL,
  `pic` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_demo_teacher
-- ----------------------------
INSERT INTO jeecg_demo_teacher VALUES ('4028d881436d514601436d5219ae015a', '路飞', 'upload/Teacher/pic3345280233.PNG');

-- ----------------------------
-- Table structure for `jeecg_matter_bom`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_matter_bom`;
CREATE TABLE `jeecg_matter_bom` (
  `ID` varchar(32) NOT NULL,
  `address` varchar(255) default NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` decimal(21,6) NOT NULL,
  `productionDate` datetime default NULL,
  `quantity` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `unit` varchar(50) default NULL,
  `weight` varchar(50) default NULL,
  `parent_ID` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_fldfyrevj0li4hej5b2gu2q7w` (`parent_ID`),
  CONSTRAINT `FK_fldfyrevj0li4hej5b2gu2q7w` FOREIGN KEY (`parent_ID`) REFERENCES `jeecg_matter_bom` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_matter_bom
-- ----------------------------
INSERT INTO jeecg_matter_bom VALUES ('4028d881436d514601436d521ae40163', '广东深圳', '001', '电脑', '5000.000000', '2014-01-07 23:28:53', '5', '10', '台', '100', null);
INSERT INTO jeecg_matter_bom VALUES ('4028d881436d514601436d521ae70164', '上海', '001001', '主板', '800.000000', '2014-01-07 23:28:53', '6', '18', '个', '60', '4028d881436d514601436d521ae40163');

-- ----------------------------
-- Table structure for `jeecg_minidao`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_minidao`;
CREATE TABLE `jeecg_minidao` (
  `ID` varchar(32) NOT NULL,
  `AGE` int(11) default NULL,
  `BIRTHDAY` datetime default NULL,
  `CONTENT` varchar(255) default NULL,
  `CREATE_TIME` datetime default NULL,
  `DEP_ID` varchar(255) default NULL,
  `EMAIL` varchar(255) default NULL,
  `MOBILE_PHONE` varchar(255) default NULL,
  `OFFICE_PHONE` varchar(255) default NULL,
  `SALARY` decimal(19,2) default NULL,
  `SEX` int(11) default NULL,
  `STATUS` varchar(255) default NULL,
  `USER_NAME` varchar(255) NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_minidao
-- ----------------------------

-- ----------------------------
-- Table structure for `jeecg_order_custom`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_order_custom`;
CREATE TABLE `jeecg_order_custom` (
  `ID` varchar(32) NOT NULL,
  `CREATE_DT` datetime default NULL,
  `CRTUSER` varchar(12) default NULL,
  `CRTUSER_NAME` varchar(10) default NULL,
  `DEL_DT` datetime default NULL,
  `DELFLAG` int(11) default NULL,
  `GO_ORDER_CODE` varchar(12) NOT NULL,
  `GOC_BUSS_CONTENT` varchar(33) default NULL,
  `GOC_CONTENT` varchar(66) default NULL,
  `GOC_CUS_NAME` varchar(16) default NULL,
  `GOC_IDCARD` varchar(18) default NULL,
  `GOC_PASSPORT_CODE` varchar(10) default NULL,
  `GOC_SEX` varchar(255) default NULL,
  `MODIFIER` varchar(12) default NULL,
  `MODIFIER_NAME` varchar(10) default NULL,
  `MODIFY_DT` datetime default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_order_custom
-- ----------------------------
INSERT INTO jeecg_order_custom VALUES ('4028d881436d514601436d521ae20162', null, null, null, null, null, '11111AAA', null, null, '小明', null, null, '1', null, null, null);

-- ----------------------------
-- Table structure for `jeecg_order_main`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_order_main`;
CREATE TABLE `jeecg_order_main` (
  `ID` varchar(32) NOT NULL,
  `CREATE_DT` datetime default NULL,
  `CRTUSER` varchar(12) default NULL,
  `CRTUSER_NAME` varchar(10) default NULL,
  `DEL_DT` datetime default NULL,
  `DELFLAG` int(11) default NULL,
  `GO_ALL_PRICE` decimal(10,2) default NULL,
  `GO_CONTACT_NAME` varchar(16) default NULL,
  `GO_CONTENT` varchar(66) default NULL,
  `GO_ORDER_CODE` varchar(12) NOT NULL,
  `GO_ORDER_COUNT` int(11) default NULL,
  `GO_RETURN_PRICE` decimal(10,2) default NULL,
  `GO_TELPHONE` varchar(11) default NULL,
  `GODER_TYPE` varchar(255) default NULL,
  `MODIFIER` varchar(12) default NULL,
  `MODIFIER_NAME` varchar(10) default NULL,
  `MODIFY_DT` datetime default NULL,
  `USERTYPE` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_order_main
-- ----------------------------
INSERT INTO jeecg_order_main VALUES ('4028d881436d514601436d521adb0160', null, null, null, null, null, '1111111.00', 'alex', '别放辣椒', '11111AAA', '1', '100.00', null, '1', null, null, null, '1');

-- ----------------------------
-- Table structure for `jeecg_order_product`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_order_product`;
CREATE TABLE `jeecg_order_product` (
  `ID` varchar(32) NOT NULL,
  `CREATE_DT` datetime default NULL,
  `CRTUSER` varchar(12) default NULL,
  `CRTUSER_NAME` varchar(10) default NULL,
  `DEL_DT` datetime default NULL,
  `DELFLAG` int(11) default NULL,
  `GO_ORDER_CODE` varchar(12) NOT NULL,
  `GOP_CONTENT` varchar(66) default NULL,
  `GOP_COUNT` int(11) default NULL,
  `GOP_ONE_PRICE` decimal(10,2) default NULL,
  `GOP_PRODUCT_NAME` varchar(33) default NULL,
  `GOP_PRODUCT_TYPE` varchar(1) NOT NULL,
  `GOP_SUM_PRICE` decimal(10,2) default NULL,
  `MODIFIER` varchar(12) default NULL,
  `MODIFIER_NAME` varchar(10) default NULL,
  `MODIFY_DT` datetime default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_order_product
-- ----------------------------
INSERT INTO jeecg_order_product VALUES ('4028d881436d514601436d521adf0161', null, null, null, null, null, '11111AAA', null, '1', '100.00', '最最美味的地锅鸡', '1', '100.00', null, null, null);

-- ----------------------------
-- Table structure for `jform_cgreport_head`
-- ----------------------------
DROP TABLE IF EXISTS `jform_cgreport_head`;
CREATE TABLE `jform_cgreport_head` (
  `ID` varchar(36) NOT NULL,
  `CGR_SQL` longtext NOT NULL,
  `CODE` varchar(36) NOT NULL,
  `CONTENT` longtext NOT NULL,
  `NAME` varchar(100) NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jform_cgreport_head
-- ----------------------------
INSERT INTO jform_cgreport_head VALUES ('402889f847666ae401476670bb72000a', 'select * from  weixin_cms_menu', 'A001', '查询微网站栏目', '查询栏目');

-- ----------------------------
-- Table structure for `jform_cgreport_item`
-- ----------------------------
DROP TABLE IF EXISTS `jform_cgreport_item`;
CREATE TABLE `jform_cgreport_item` (
  `ID` varchar(36) NOT NULL,
  `S_FLAG` varchar(2) default NULL,
  `S_MODE` varchar(10) default NULL,
  `CGRHEAD_ID` varchar(36) default NULL,
  `DICT_CODE` varchar(36) default NULL,
  `FIELD_HREF` varchar(120) default NULL,
  `FIELD_NAME` varchar(36) default NULL,
  `FIELD_TXT` longtext,
  `FIELD_TYPE` varchar(10) default NULL,
  `IS_SHOW` varchar(5) default NULL,
  `ORDER_NUM` int(11) default NULL,
  `REPLACE_VA` varchar(36) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jform_cgreport_item
-- ----------------------------
INSERT INTO jform_cgreport_item VALUES ('402889f847666ae401476670bb74000b', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'ID', 'ID', 'String', 'Y', '0', '');
INSERT INTO jform_cgreport_item VALUES ('402889f847666ae401476670bb78000c', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'ACCOUNTID', 'ACCOUNTID', 'String', 'Y', '1', '');
INSERT INTO jform_cgreport_item VALUES ('402889f847666ae401476670bb79000d', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'CREATE_BY', 'CREATE_BY', 'String', 'Y', '2', '');
INSERT INTO jform_cgreport_item VALUES ('402889f847666ae401476670bb7a000e', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'CREATE_DATE', 'CREATE_DATE', 'String', 'Y', '3', '');
INSERT INTO jform_cgreport_item VALUES ('402889f847666ae401476670bb7b000f', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'CREATE_NAME', 'CREATE_NAME', 'String', 'Y', '4', '');
INSERT INTO jform_cgreport_item VALUES ('402889f847666ae401476670bb7e0010', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'IMAGE_HREF', 'IMAGE_HREF', 'String', 'Y', '5', '');
INSERT INTO jform_cgreport_item VALUES ('402889f847666ae401476670bb7f0011', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'IMAGE_NAME', 'IMAGE_NAME', 'String', 'Y', '6', '');
INSERT INTO jform_cgreport_item VALUES ('402889f847666ae401476670bb800012', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'NAME', 'NAME', 'String', 'Y', '7', '');
INSERT INTO jform_cgreport_item VALUES ('402889f847666ae401476670bb810013', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'TYPE', 'TYPE', 'String', 'Y', '8', '');

-- ----------------------------
-- Table structure for `jform_leave`
-- ----------------------------
DROP TABLE IF EXISTS `jform_leave`;
CREATE TABLE `jform_leave` (
  `id` varchar(36) NOT NULL,
  `title` varchar(50) NOT NULL COMMENT '请假标题',
  `people` varchar(20) NOT NULL COMMENT '请假人',
  `sex` varchar(10) NOT NULL COMMENT '性别',
  `begindate` datetime NOT NULL COMMENT '请假开始时间',
  `enddate` datetime NOT NULL COMMENT '请假结束时间',
  `day_num` int(11) default NULL COMMENT '请假天数',
  `hol_dept` varchar(32) NOT NULL COMMENT '所属部门',
  `hol_reson` varchar(255) NOT NULL COMMENT '请假原因',
  `dep_leader` varchar(20) NOT NULL COMMENT '部门审批人',
  `content` varchar(255) NOT NULL COMMENT '部门审批意见',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jform_leave
-- ----------------------------

-- ----------------------------
-- Table structure for `jform_order_main`
-- ----------------------------
DROP TABLE IF EXISTS `jform_order_main`;
CREATE TABLE `jform_order_main` (
  `id` varchar(36) NOT NULL,
  `order_code` varchar(50) default NULL COMMENT '订单号',
  `order_date` datetime default NULL COMMENT '订单日期',
  `order_money` double default NULL COMMENT '订单金额',
  `content` varchar(255) default NULL COMMENT '备注',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jform_order_main
-- ----------------------------

-- ----------------------------
-- Table structure for `jg_person`
-- ----------------------------
DROP TABLE IF EXISTS `jg_person`;
CREATE TABLE `jg_person` (
  `ID` varchar(32) NOT NULL,
  `AGE` int(11) default NULL,
  `BIRTHDAY` datetime default NULL,
  `CREATEDT` datetime default NULL,
  `NAME` varchar(255) NOT NULL,
  `SALARY` decimal(19,2) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jg_person
-- ----------------------------
INSERT INTO jg_person VALUES ('4028d881436d514601436d521ad9015f', '10', '2014-01-07 23:28:53', '2014-01-07 23:28:53', '小红', '1000.00');

-- ----------------------------
-- Table structure for `optimistic_locking`
-- ----------------------------
DROP TABLE IF EXISTS `optimistic_locking`;
CREATE TABLE `optimistic_locking` (
  `ID` varchar(32) NOT NULL,
  `ACCOUNT` int(11) default NULL,
  `AGE` int(11) default NULL,
  `NAME` varchar(85) default NULL,
  `VER` int(11) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of optimistic_locking
-- ----------------------------

-- ----------------------------
-- Table structure for `t_finance`
-- ----------------------------
DROP TABLE IF EXISTS `t_finance`;
CREATE TABLE `t_finance` (
  `ID` varchar(32) NOT NULL,
  `APPROFILETYPE` varchar(255) default NULL,
  `BUYMONEY` float default NULL,
  `BUYPROJECTNO` varchar(255) default NULL,
  `BUYPROJECTORG` varchar(255) default NULL,
  `BUYUSE` varchar(255) default NULL,
  `BUYYEAR` varchar(255) default NULL,
  `CATEGORY` varchar(255) default NULL,
  `COLLECTORG` varchar(255) default NULL,
  `EXPENSEACCOUNT` varchar(255) default NULL,
  `HAPPENYEAR` int(11) default NULL,
  `MONEYAREA` varchar(255) default NULL,
  `MONEYSOURCE` varchar(255) default NULL,
  `MONEYTOTAL` float default NULL,
  `MONEYUSE` varchar(255) default NULL,
  `PAYTIME` datetime default NULL,
  `ZBWNO` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_finance
-- ----------------------------
INSERT INTO t_finance VALUES ('402880e6478c6d8201478c72e8ff0008', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO t_finance VALUES ('402880e6478c6d8201478c74a6000010', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO t_finance VALUES ('402889fb480bc77a01480bda5de90014', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO t_finance VALUES ('402889fb480bfaf001480c22ff2a0045', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO t_finance VALUES ('402889fb480bfaf001480c2331810048', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_finance_files`
-- ----------------------------
DROP TABLE IF EXISTS `t_finance_files`;
CREATE TABLE `t_finance_files` (
  `id` varchar(32) NOT NULL,
  `financeId` varchar(32) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_ij2p74feypwcda4n0n96pyd10` (`financeId`),
  KEY `FK_28m7vvi0cy5r5keke68b6f7rt` (`id`),
  CONSTRAINT `FK_28m7vvi0cy5r5keke68b6f7rt` FOREIGN KEY (`id`) REFERENCES `t_s_attachment` (`ID`),
  CONSTRAINT `FK_ij2p74feypwcda4n0n96pyd10` FOREIGN KEY (`financeId`) REFERENCES `t_finance` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_finance_files
-- ----------------------------

-- ----------------------------
-- Table structure for `t_s_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_attachment`;
CREATE TABLE `t_s_attachment` (
  `ID` varchar(32) NOT NULL,
  `attachmentcontent` longblob,
  `attachmenttitle` varchar(100) default NULL,
  `businesskey` varchar(32) default NULL,
  `createdate` datetime default NULL,
  `extend` varchar(32) default NULL,
  `note` longtext,
  `realpath` varchar(100) default NULL,
  `subclassname` longtext,
  `swfpath` longtext,
  `BUSENTITYNAME` varchar(100) default NULL,
  `INFOTYPEID` varchar(32) default NULL,
  `USERID` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_mnq23hlc835n4ufgjl7nkn3bd` (`USERID`),
  CONSTRAINT `FK_mnq23hlc835n4ufgjl7nkn3bd` FOREIGN KEY (`USERID`) REFERENCES `t_s_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_attachment
-- ----------------------------
INSERT INTO t_s_attachment VALUES ('297e7eb6469a4a8901469a5d96ea000d', null, '19343396_845725', null, '2014-06-14 20:32:43', 'jpg', null, 'upload/files/20140614203243Hk6qikWt.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140614203243Hk6qikWt.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('297e7eb6469a4a8901469a5ebac20010', null, '1384480985636', null, '2014-06-14 20:33:57', 'jpg', null, 'upload/files/20140614203357CLkYJbzQ.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140614203357CLkYJbzQ.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('297e7eb6469a9a0f01469a9b59d30001', null, '1384480985636', null, '2014-06-14 21:40:10', 'jpg', null, 'upload/files/20140614214010COJ3srhx.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140614214010COJ3srhx.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('297e7eb6469a9a0f01469a9bc74b0003', null, '19343396_845725', null, '2014-06-14 21:40:38', 'jpg', null, 'upload/files/20140614214038YRSIWjjs.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140614214038YRSIWjjs.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('2c9183404d70b41a014d74171adb0018', null, 'banner_bg1', null, '2015-05-21 09:29:40', 'jpg', null, 'template/cms/default/images/20150521092940bGIMzLVX.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', null, null, null, null);
INSERT INTO t_s_attachment VALUES ('2c9183404d744024014d74470fab0003', null, 'banner_bg1', null, '2015-05-21 10:22:03', 'jpg', null, 'template/cms/default/images/20150521102203Jmf83cCh.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', null, null, null, null);
INSERT INTO t_s_attachment VALUES ('2c9183404d74f79b014d755b07440001', null, 'share_qq_E3FAD2BD42F94B07F311DE9BC472C416', null, null, 'png', null, 'upload/files/20150521152329hRTBLuPJ.png', null, null, null, null, null);
INSERT INTO t_s_attachment VALUES ('2c9183404d74f79b014d792a6d98000a', null, 'banner_bg1', null, '2015-05-22 09:08:53', 'jpg', null, 'template/cms/default/images/20150522090853ZP0JuiVf.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', null, null, null, null);
INSERT INTO t_s_attachment VALUES ('2c9183404d7938da014d793bbc730009', null, 'banner_bg1', null, '2015-05-22 09:27:47', 'jpg', null, 'template/cms/default/images/20150522092747Ddj7m03s.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', null, null, null, null);
INSERT INTO t_s_attachment VALUES ('2c9183404d7938da014d793de516000d', null, 'banner_bg1', null, '2015-05-22 09:30:09', 'jpg', null, 'template/cms/default/images/2015052209300907v1vw41.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', null, null, null, null);
INSERT INTO t_s_attachment VALUES ('2c9183404d7938da014d793f0ef40011', null, 'banner_bg1', null, '2015-05-22 09:31:25', 'jpg', null, 'template/cms/default/images/20150522093125PHzBZreY.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', null, null, null, null);
INSERT INTO t_s_attachment VALUES ('402880e6477d04e001477d0a31040002', null, 'jeecg_scott', null, '2014-07-28 20:55:25', 'jpg', null, 'upload/files/20140728205525rUa7itrm.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728205525rUa7itrm.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402880e6477d04e001477d0a53150005', null, 'default', null, '2014-07-28 20:55:34', 'zip', null, 'upload/files/20140728205534UfBLupzK.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728205534UfBLupzK.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402880e6477d04e001477d0dfcd80009', null, 'default', null, '2014-07-28 20:59:34', 'zip', null, 'upload/files/20140728205934YVSrqmg8.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728205934YVSrqmg8.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402880e6477d04e001477d0e143d000a', null, 'jeecg_scott', null, '2014-07-28 20:59:40', 'jpg', null, 'upload/files/20140728205940Y6Ly8de0.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728205940Y6Ly8de0.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402880e6477d04e001477d0e1d31000d', null, 'default', null, '2014-07-28 20:59:42', 'zip', null, 'upload/files/20140728205942vS1giD8f.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728205942vS1giD8f.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402880e6477d5c2601477d5d81de0001', null, 'jeecg_scott', null, '2014-07-28 22:26:25', 'jpg', null, 'upload/files/20140728222625KXeCCRAG.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728222625KXeCCRAG.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402880e648138dba014813b89b85003c', null, '2501216q581a_434673', null, '2014-08-27 03:08:58', 'jpg', null, 'upload/files/20140827030858H9rAhVCV.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140827030858H9rAhVCV.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402880e648138dba014813b8e1ee0040', null, '1348502732_4991', null, '2014-08-27 03:09:16', 'gif', null, 'upload/files/20140827030916Z6dAQhQ0.gif', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140827030916Z6dAQhQ0.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('4028818348fa8bb90148fa905a910001', null, 'bd2', null, '2014-10-10 22:57:17', 'png', null, 'template/cms/default/images/20141010225717SwvmZkzZ.png', 'org.jeecgframework.web.system.pojo.base.TSDocument', null, null, null, null);
INSERT INTO t_s_attachment VALUES ('4028818348faa4fa0148faa950de0001', null, 'bd2', null, '2014-10-10 23:24:33', 'png', null, 'template/cms/default/images/20141010232433Y4aYL1ZQ.png', 'org.jeecgframework.web.system.pojo.base.TSDocument', null, null, null, null);
INSERT INTO t_s_attachment VALUES ('4028818348faa4fa0148faad079b0005', null, 'bd2', null, '2014-10-10 23:28:36', 'png', null, 'template/cms/default/images/20141010232836Qauvsfay.png', 'org.jeecgframework.web.system.pojo.base.TSDocument', null, null, null, null);
INSERT INTO t_s_attachment VALUES ('4028818348fab3080148fab743f40001', null, 'banner', null, '2014-10-10 23:39:47', 'png', null, 'template/cms/default/images/20141010233947DXEKBLwW.png', 'org.jeecgframework.web.system.pojo.base.TSDocument', null, null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e446394419014639453ce90002', null, '19343396_845725', null, '2014-05-27 00:02:57', 'jpg', null, 'upload/files/20140527000257Q4m5Y6eh.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140527000257Q4m5Y6eh.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e4463cc88701463ccef5340001', null, '19343396_845725', null, '2014-05-27 16:32:14', 'jpg', null, 'upload/files/20140527163214CKTFLZIC.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140527163214CKTFLZIC.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e44643207c01464333b1f9000c', null, '1384480985636', null, '2014-05-28 22:19:59', 'jpg', null, 'upload/files/20140528221959CZ99E1i2.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140528221959CZ99E1i2.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e4464381350146438691940002', null, '1384480985636', null, '2014-05-28 23:50:30', 'jpg', null, 'upload/files/20140528235031DMUhg2PP.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140528235031DMUhg2PP.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e44643813501464389b02a000b', null, '1384480985636', null, '2014-05-28 23:53:55', 'jpg', null, 'upload/files/20140528235355miw0YqCA.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140528235355miw0YqCA.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e44643a1cd014643a510060003', null, '19343396_845725', null, '2014-05-29 00:23:49', 'jpg', null, 'upload/files/20140529002349G6XE4cA2.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140529002349G6XE4cA2.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e44643a1cd014643a55d6f0006', null, '1384480985636', null, '2014-05-29 00:24:09', 'jpg', null, 'upload/files/20140529002409iN0ffyA8.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140529002409iN0ffyA8.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e44695183a014695210478000f', null, '6e061d950a7b020896cc3c1162d9f2d3572cc83d', null, '2014-06-13 20:08:27', 'jpg', null, 'upload/files/20140613200827S3Ft6XCD.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613200827S3Ft6XCD.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e44695183a0146952144320012', null, 'd1f3d003big', null, '2014-06-13 20:08:43', 'jpg', null, 'upload/files/20140613200843IviG7AmD.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613200843IviG7AmD.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e44695183a0146952187bc0015', null, '1253192_135516023956_2', null, '2014-06-13 20:09:01', 'jpg', null, 'upload/files/20140613200901Ojk0MGav.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613200901Ojk0MGav.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e44695183a01469522f1ed0018', null, 'd1f3d003big', null, '2014-06-13 20:10:33', 'jpg', null, 'upload/files/20140613201033crByRcxc.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613201033crByRcxc.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e44695183a01469523431e001b', null, '6e061d950a7b020896cc3c1162d9f2d3572cc83d', null, '2014-06-13 20:10:54', 'jpg', null, 'upload/files/20140613201054g0kYQE93.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613201054g0kYQE93.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e44695183a01469523eb7f001e', null, '1253192_135516023956_2', null, '2014-06-13 20:11:37', 'jpg', null, 'upload/files/20140613201137iG8QIvk5.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613201137iG8QIvk5.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e44695183a0146952422130021', null, 'ADIDAS', null, '2014-06-13 20:11:51', 'jpg', null, 'upload/files/201406132011519hkg5QtC.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/201406132011519hkg5QtC.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e446955c7c014695970aeb0014', null, 'duote_07_10-55-22', null, '2014-06-13 22:17:22', 'jpg', null, 'upload/files/20140613221722NSivMHPF.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613221722NSivMHPF.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e446955c7c01469597394f0016', null, 'duote_07_10-55-22', null, '2014-06-13 22:17:34', 'jpg', null, 'upload/files/20140613221734ZEujKDpc.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613221734ZEujKDpc.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e446955c7c0146959757810018', null, 'duote_07_10-55-22', null, '2014-06-13 22:17:42', 'jpg', null, 'upload/files/20140613221742gfNHuIR8.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613221742gfNHuIR8.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e446955c7c014695977560001a', null, 'duote_07_10-55-22', null, '2014-06-13 22:17:49', 'jpg', null, 'upload/files/20140613221749dsYZWnuE.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613221749dsYZWnuE.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e446955c7c014695a1de0a001d', null, '537f1f63dd1c9', null, '2014-06-13 22:29:11', 'jpg', null, 'upload/files/20140613222911w09Nh7qi.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613222911w09Nh7qi.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e446955c7c014695a38b470020', null, '537f1f74d031c', null, '2014-06-13 22:31:01', 'jpg', null, 'upload/files/2014061322310112yaMHm6.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/2014061322310112yaMHm6.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e446955c7c014695a3cdea0022', null, '537f1f86602b3', null, '2014-06-13 22:31:18', 'jpg', null, 'upload/files/20140613223118fWHj2S0v.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613223118fWHj2S0v.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e446955c7c014695a4383a0024', null, '537f1f98d6f42', null, '2014-06-13 22:31:45', 'jpg', null, 'upload/files/201406132231453VVP7RXR.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/201406132231453VVP7RXR.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e446955c7c014695a4913b0026', null, '537f1faf595dd', null, '2014-06-13 22:32:08', 'jpg', null, 'upload/files/20140613223208gwvPwwpZ.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613223208gwvPwwpZ.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e446955c7c014695a4dda10027', null, '537f1faf595dd', null, '2014-06-13 22:32:28', 'jpg', null, 'upload/files/201406132232281L92gsCP.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/201406132232281L92gsCP.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e446955c7c014695a726df0028', null, '537f1faf595dd', null, '2014-06-13 22:34:58', 'jpg', null, 'upload/files/201406132234583cgLyGHg.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/201406132234583cgLyGHg.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e446955c7c014695a7705a002b', null, '537f1ca3cd562', null, '2014-06-13 22:35:16', 'jpg', null, 'upload/files/20140613223516i3wMpi1u.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613223516i3wMpi1u.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e446955c7c014695a7b814002e', null, '537f1cb75c597', null, '2014-06-13 22:35:35', 'jpg', null, 'upload/files/20140613223535gu4iUrA4.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613223535gu4iUrA4.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e446955c7c014695a7ecf10031', null, '537f1fc8d750b', null, '2014-06-13 22:35:48', 'jpg', null, 'upload/files/20140613223548eQq5swwP.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613223548eQq5swwP.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e446955c7c014695a831d70034', null, '537f1fdba507f', null, '2014-06-13 22:36:06', 'jpg', null, 'upload/files/20140613223606Lfh0WaQd.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613223606Lfh0WaQd.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e44695ebe3014695ed3bdc0001', null, '2385844_083138053_2', null, '2014-06-13 23:51:30', 'jpg', null, 'upload/files/20140613235131snYOuQDL.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613235131snYOuQDL.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e44695ebe3014695ed79fa0003', null, '1384480985636', null, '2014-06-13 23:51:46', 'jpg', null, 'upload/files/20140613235146eEgyESpy.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613235146eEgyESpy.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e44695ebe3014695ef476c0005', null, '19343396_845725', null, '2014-06-13 23:53:45', 'jpg', null, 'upload/files/20140613235345vGK3pfjC.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613235345vGK3pfjC.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e44695ebe3014695f2c6280007', null, '537f1f63dd1c9', null, '2014-06-13 23:57:34', 'jpg', null, 'upload/files/201406132357343zuaHgX4.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/201406132357343zuaHgX4.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e44695ebe3014695f3176d0009', null, '537f1f86602b3', null, '2014-06-13 23:57:54', 'jpg', null, 'upload/files/20140613235754hLRC87rF.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613235754hLRC87rF.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e44695ebe3014695f339a7000b', null, '537f1f74d031c', null, '2014-06-13 23:58:03', 'jpg', null, 'upload/files/201406132358039IpFSyet.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/201406132358039IpFSyet.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e44695ebe3014695f3a3b3000d', null, '537f1f98d6f42', null, '2014-06-13 23:58:30', 'jpg', null, 'upload/files/20140613235830M96wj4Lr.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613235830M96wj4Lr.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e44695ebe3014695f3f89f000f', null, '537f1faf595dd', null, '2014-06-13 23:58:52', 'jpg', null, 'upload/files/20140613235852gBTueAWO.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613235852gBTueAWO.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e44695ebe3014695f443990011', null, '537f1ca3cd562', null, '2014-06-13 23:59:11', 'jpg', null, 'upload/files/20140613235911chsAs0Md.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613235911chsAs0Md.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e44695ebe3014695f45e1a0013', null, '537f1cb75c597', null, '2014-06-13 23:59:18', 'jpg', null, 'upload/files/20140613235918OA8vt546.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613235918OA8vt546.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e44695ebe3014695f494290015', null, '537f1fc8d750b', null, '2014-06-13 23:59:32', 'jpg', null, 'upload/files/20140613235932htqZFtCs.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613235932htqZFtCs.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e44695ebe3014695f4d5570017', null, '537f1fdba507f', null, '2014-06-13 23:59:49', 'jpg', null, 'upload/files/20140613235949UuUHp1Bs.jpg', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140613235949UuUHp1Bs.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e845d1723e0145d18fef940019', null, 'svn', null, '2014-05-06 20:44:02', 'txt', null, 'upload/files/20140506204402BgVrby8Q.txt', 'jeecg.system.pojo.base.TSDocument', 'upload/files/20140506204402BgVrby8Q.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e946ddea480146ddf061b50001', null, '634490825089531250', null, '2014-06-27 23:27:36', 'jpg', null, 'upload/files/20140627232736z3SvfVEj.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140627232736z3SvfVEj.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e946ddea480146ddf730350003', null, '19300001024098134717639977056', null, '2014-06-27 23:35:02', 'jpg', null, 'upload/files/20140627233502FEzyc38j.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140627233502FEzyc38j.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e946ddea480146ddf991610005', null, '20120823024251636', null, '2014-06-27 23:37:38', 'jpg', null, 'upload/files/20140627233738xqDsNzfy.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140627233738xqDsNzfy.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e946ddea480146de02f8ba0008', null, 'Img305735292', null, '2014-06-27 23:47:55', 'jpg', null, 'upload/files/20140627234755MS58ckJV.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140627234755MS58ckJV.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e946ddea480146de0522e3000a', null, '30_1i$1JxIOB', null, '2014-06-27 23:50:17', 'jpg', null, 'upload/files/20140627235017KDQfXcBu.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140627235017KDQfXcBu.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e946ddea480146de09f959000e', null, 'Img305735292', null, '2014-06-27 23:55:34', 'jpg', null, 'upload/files/20140627235534VJM1pkx3.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140627235534VJM1pkx3.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e946ddea480146de0f340b0010', null, '30_1i$1JxIOB', null, '2014-06-28 00:01:16', 'jpg', null, 'upload/files/20140628000116OF07rm7E.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140628000116OF07rm7E.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e947015a7001470160f9290001', null, '1384480985636', null, '2014-07-04 20:37:18', 'jpg', null, 'upload/files/201407042037189rPp00ZT.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407042037189rPp00ZT.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e947015a70014701619f490004', null, '19343396_845725', null, '2014-07-04 20:38:00', 'jpg', null, 'upload/files/20140704203800Q6g5eVpd.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140704203800Q6g5eVpd.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e947015a700147016449650007', null, '1384480985636', null, '2014-07-04 20:40:55', 'jpg', null, 'upload/files/20140704204055j06raaJy.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140704204055j06raaJy.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e94701df96014701eb22d30006', null, '1384480985636', null, '2014-07-04 23:08:12', 'jpg', null, 'upload/files/201407042308121vLOUuSc.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407042308121vLOUuSc.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e94701df96014701f3f7160007', null, '634490825089531250', null, '2014-07-04 23:17:51', 'jpg', null, 'upload/files/20140704231751jgyEMUFt.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140704231751jgyEMUFt.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e94701df960147020b82d1000d', null, '1384480985636', null, '2014-07-04 23:43:34', 'jpg', null, 'upload/files/20140704234334Vhfk9mYp.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140704234334Vhfk9mYp.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e9470273d20147028adf830019', null, '634490825089531250', null, '2014-07-05 02:02:41', 'jpg', null, 'upload/files/201407050202416ZCRAJjr.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407050202416ZCRAJjr.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e9470273d20147028afde6001a', null, '634490825089531250', null, '2014-07-05 02:02:49', 'jpg', null, 'upload/files/201407050202490ByJscnc.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407050202490ByJscnc.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e94702c764014702ceee2e0004', null, '19343396_845725', null, '2014-07-05 03:17:01', 'jpg', null, 'upload/files/20140705031701QWDPG07Q.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140705031701QWDPG07Q.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402881e9487dd36401487df2c4830002', null, 'OnlineCoding在线开发衍生插件式开发专题', null, '2014-09-16 18:12:15', 'pdf', null, 'template/cms/default/images/20140916181215VjjAK1d2.pdf', 'org.jeecgframework.web.system.pojo.base.TSDocument', null, null, null, null);
INSERT INTO t_s_attachment VALUES ('402881ea4cf000a0014cf6176eb50001', null, 'bb2', null, '2015-04-26 22:17:53', 'jpg', null, 'upload/files/20150426221753MakZHMGC.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20150426221753MakZHMGC.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889ed472e852301472eaee6f80009', null, '1348502748_9205', null, '2014-07-13 15:45:19', 'gif', null, 'upload/files/20140713154520vkFUZy23.gif', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713154520vkFUZy23.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889ed472e852301472eb0270b000d', null, '1348502732_4991', null, '2014-07-13 15:46:42', 'gif', null, 'upload/files/20140713154642E71rUQGZ.gif', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713154642E71rUQGZ.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889ed472ec2a801472ec3997c0001', null, '1348502772_8826', null, '2014-07-13 16:07:56', 'gif', null, 'upload/files/20140713160756wTrr5Zn3.gif', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713160756wTrr5Zn3.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889ed472ee23401472ee59ccf0001', null, '13840528444553', null, '2014-07-13 16:45:05', 'png', null, 'upload/files/20140713164505QAtOSSSm.png', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713164505QAtOSSSm.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f346dc66c30146dc7c11630001', null, '1348502732_4991', null, '2014-06-27 16:40:56', 'gif', null, 'upload/files/20140627164056wwWqB80c.gif', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140627164056wwWqB80c.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f346dc66c30146dc7ccb410005', null, '13840528444553', null, '2014-06-27 16:41:44', 'png', null, 'upload/files/20140627164144bzcSvQNs.png', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140627164144bzcSvQNs.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f346dc66c30146dc7cf66b0008', null, '1348502748_9205', null, '2014-06-27 16:41:55', 'gif', null, 'upload/files/20140627164155hUT3hMVJ.gif', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140627164155hUT3hMVJ.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f346dc8a220146dc933f720007', null, 'fdfb6e9cb6103298f5497760962ebbf7', null, '2014-06-27 17:06:15', 'png', null, 'upload/files/20140627170616I8PtmI3X.png', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140627170616I8PtmI3X.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f64747048401474709372d0009', null, 'LOGO-副本副本', null, '2014-07-18 09:14:52', 'jpg', null, 'upload/files/20140718091452MW70kigU.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718091452MW70kigU.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f6474704840147470a1ca7000e', null, 'Desktop', null, '2014-07-18 09:15:50', 'zip', null, 'upload/files/20140718091550rbnPw893.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718091550rbnPw893.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f6474704840147470d48ab000f', null, 'LOGO-副本副本', null, '2014-07-18 09:19:18', 'jpg', null, 'upload/files/20140718091918Vmd5RP48.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718091918Vmd5RP48.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f6474704840147470d62570012', null, 'Desktop', null, '2014-07-18 09:19:25', 'zip', null, 'upload/files/20140718091925pEgAued6.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718091925pEgAued6.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f6474704840147470e7b920014', null, 'LOGO-副本副本', null, '2014-07-18 09:20:37', 'jpg', null, 'upload/files/20140718092037mgTjUY0W.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718092037mgTjUY0W.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f64747048401474710097e0017', null, 'Desktop', null, '2014-07-18 09:22:19', 'zip', null, 'upload/files/20140718092219HhQXuKxn.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718092219HhQXuKxn.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f647470484014747108feb001a', null, 'LOGO-副本副本', null, '2014-07-18 09:22:53', 'jpg', null, 'upload/files/20140718092253Hk6Q64Rz.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718092253Hk6Q64Rz.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f647470484014747129c15001d', null, 'Desktop', null, '2014-07-18 09:25:07', 'zip', null, 'upload/files/20140718092507XT4r9A7J.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718092507XT4r9A7J.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f647470484014747133201001f', null, 'LOGO-副本副本', null, '2014-07-18 09:25:46', 'jpg', null, 'upload/files/201407180925466IUsX7FW.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407180925466IUsX7FW.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f647470484014747137f230022', null, 'Desktop', null, '2014-07-18 09:26:05', 'zip', null, 'upload/files/20140718092605f3N8z6h7.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718092605f3N8z6h7.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f64747182f01474718ed750001', null, 'LOGO', null, '2014-07-18 09:32:01', 'jpg', null, 'upload/files/20140718093201bbpEq64r.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718093201bbpEq64r.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f64747182f01474719193e0004', null, 'Desktop', null, '2014-07-18 09:32:12', 'zip', null, 'upload/files/20140718093212D3R2wWX8.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718093212D3R2wWX8.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f64747182f01474719c42b0007', null, 'Desktop', null, '2014-07-18 09:32:56', 'zip', null, 'upload/files/201407180932564NiTCHsL.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407180932564NiTCHsL.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f64747182f01474720ef4c000c', null, 'LOGO-副本副本', null, '2014-07-18 09:40:46', 'jpg', null, 'upload/files/20140718094046tpfYNITQ.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718094046tpfYNITQ.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f64747182f014747211b11000f', null, 'Desktop', null, '2014-07-18 09:40:57', 'zip', null, 'upload/files/2014071809405739bzRcEb.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/2014071809405739bzRcEb.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f6474722ad01474723d3400001', null, 'LOGO-副本副本', null, '2014-07-18 09:43:55', 'jpg', null, 'upload/files/20140718094355twCIOKEZ.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718094355twCIOKEZ.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f6474722ad01474723f78e0004', null, 'Desktop', null, '2014-07-18 09:44:05', 'zip', null, 'upload/files/201407180944059hUL3euv.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407180944059hUL3euv.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f6474722ad014747248d0f0007', null, 'LOGO-副本副本', null, '2014-07-18 09:44:43', 'jpg', null, 'upload/files/20140718094443ye4QrEVf.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718094443ye4QrEVf.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f6474722ad01474724bdc2000a', null, 'Desktop', null, '2014-07-18 09:44:56', 'zip', null, 'upload/files/20140718094456XgxaVLOr.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140718094456XgxaVLOr.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f847666ae40147666df6eb0002', null, 'jeecg_scott', null, '2014-07-24 11:33:08', 'jpg', null, 'upload/files/20140724113308R9yRv2hj.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140724113308R9yRv2hj.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f847666ae40147666e16ff0003', null, 'jeecg_scott', null, '2014-07-24 11:33:16', 'jpg', null, 'upload/files/201407241133168ezfMs40.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407241133168ezfMs40.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f847666ae40147671e80cf0017', null, 'LOGO', null, '2014-07-24 14:45:58', 'jpg', null, 'upload/files/20140724144558XmkQL4Zs.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140724144558XmkQL4Zs.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f847666ae401476729806f0018', null, 'LOGO', null, '2014-07-24 14:57:58', 'jpg', null, 'upload/files/20140724145758jWIbQ6sv.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140724145758jWIbQ6sv.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f847666ae401476729c6df001b', null, 'default', null, '2014-07-24 14:58:16', 'zip', null, 'upload/files/20140724145816LX1bxIBf.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140724145816LX1bxIBf.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f847666ae401476730b187001e', null, 'LOGO', null, '2014-07-24 15:05:50', 'jpg', null, 'upload/files/20140724150550qiXF3fMC.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140724150550qiXF3fMC.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f847666ae401476730f1240021', null, 'root', null, '2014-07-24 15:06:06', 'zip', null, 'upload/files/20140724150606bwWmIb9y.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140724150606bwWmIb9y.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f84767413b0147674352d30001', null, 'jeecg_scott', null, '2014-07-24 15:26:11', 'jpg', null, 'upload/files/20140724152611YCkPnNNe.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140724152611YCkPnNNe.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f8477ad29d01477ad8e51b0004', null, 'default', null, '2014-07-28 10:42:20', 'zip', null, 'upload/files/20140728104220s9ne9Xg1.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728104220s9ne9Xg1.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f8477b0c1f01477b0e31e30003', null, 'LOGO', null, '2014-07-28 11:40:33', 'jpg', null, 'upload/files/20140728114033QsfvsemU.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728114033QsfvsemU.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f8477b0c1f01477b0e44790006', null, '12', null, '2014-07-28 11:40:38', 'zip', null, 'upload/files/20140728114038qnWchMMc.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728114038qnWchMMc.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f8477b5b5b01477b5cb2c40002', null, '12', null, '2014-07-28 13:06:18', 'zip', null, 'upload/files/20140728130618DtPUFGuA.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728130618DtPUFGuA.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f8477b5b5b01477b5cc3e50003', null, 'LOGO', null, '2014-07-28 13:06:22', 'jpg', null, 'upload/files/20140728130622IwHTMQ8A.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728130622IwHTMQ8A.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f8477b5b5b01477b5d02730006', null, '12', null, '2014-07-28 13:06:38', 'zip', null, 'upload/files/20140728130638snqMiJ14.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728130638snqMiJ14.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f8477b5b5b01477b5ef0a90009', null, 'LOGO', null, '2014-07-28 13:08:45', 'jpg', null, 'upload/files/20140728130845H1ns0FfD.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728130845H1ns0FfD.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f8477b5b5b01477b5efd31000c', null, '12', null, '2014-07-28 13:08:48', 'zip', null, 'upload/files/20140728130848mCc0YxYQ.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728130848mCc0YxYQ.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f8477b681801477b69179c0002', null, 'LOGO', null, '2014-07-28 13:19:50', 'jpg', null, 'upload/files/20140728131950wN5iFSPb.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728131950wN5iFSPb.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f8477b681801477b692d7b0005', null, 'saas-plugin-web-master-shiro-mybatis', null, '2014-07-28 13:19:56', 'zip', null, 'upload/files/20140728131956xAYGxZkb.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728131956xAYGxZkb.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f8477b6c5401477b6d39dc0002', null, 'LOGO', null, '2014-07-28 13:24:21', 'jpg', null, 'upload/files/20140728132421aK4DQMYc.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728132421aK4DQMYc.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f8477b6c5401477b6d4ee40005', null, '12', null, '2014-07-28 13:24:26', 'zip', null, 'upload/files/20140728132426Jjjm71ce.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728132426Jjjm71ce.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f8477b6e4e01477b6efba10001', null, 'LOGO', null, '2014-07-28 13:26:16', 'jpg', null, 'upload/files/20140728132616YIujfrwM.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728132616YIujfrwM.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f8477b6e4e01477b6f0ae10004', null, '12', null, '2014-07-28 13:26:20', 'zip', null, 'upload/files/20140728132620zgrSq1Lg.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728132620zgrSq1Lg.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f8477b70aa01477b71e16e0003', null, 'LOGO', null, '2014-07-28 13:29:26', 'jpg', null, 'upload/files/201407281329268P4veRz7.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407281329268P4veRz7.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f8477b70aa01477b71ee4a0006', null, '12', null, '2014-07-28 13:29:29', 'zip', null, 'upload/files/20140728132929AexU7BwG.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728132929AexU7BwG.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f8477b70aa01477b75b3200009', null, 'LOGO', null, '2014-07-28 13:33:36', 'jpg', null, 'upload/files/20140728133336yGqI8ds0.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728133336yGqI8ds0.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f8477b70aa01477b75c54a000c', null, '12', null, '2014-07-28 13:33:41', 'zip', null, 'upload/files/20140728133341NY9jq8uK.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728133341NY9jq8uK.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f8477c283701477c29665c0002', null, 'jeecg_scott', null, '2014-07-28 16:49:53', 'jpg', null, 'upload/files/20140728164953P9e67L9P.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728164953P9e67L9P.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f8477c283701477c298a7e0005', null, 'jeewx_default(1)', null, '2014-07-28 16:50:03', 'zip', null, 'upload/files/20140728165003FePN5O3T.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728165003FePN5O3T.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f8477c283701477c2a71d10007', null, 'jeecg_scott', null, '2014-07-28 16:51:02', 'jpg', null, 'upload/files/20140728165102pX4UL9q5.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728165102pX4UL9q5.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f8477c283701477c2a81de000a', null, 'jeewx_default(1)', null, '2014-07-28 16:51:06', 'zip', null, 'upload/files/20140728165106e4gjNVNS.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728165106e4gjNVNS.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f8477c283701477c2b8bb4000b', null, 'LOGO', null, '2014-07-28 16:52:14', 'jpg', null, 'upload/files/20140728165214sZ5XLBUL.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728165214sZ5XLBUL.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f8477c283701477c2b9bfd000e', null, 'jeewx_default(1)', null, '2014-07-28 16:52:18', 'zip', null, 'upload/files/20140728165218pc1G2SaG.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728165218pc1G2SaG.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f8477c283701477c2e96f50012', null, 'jeecg_scott', null, '2014-07-28 16:55:33', 'jpg', null, 'upload/files/20140728165533cOAxPIj2.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140728165533cOAxPIj2.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889f8477c283701477c2eb1300015', null, 'default', null, '2014-07-28 16:55:40', 'zip', null, 'upload/files/201407281655408Wv6aztF.zip', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407281655408Wv6aztF.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('402889fb480bc77a01480bda5f580016', null, '2501216q581a_434673', null, null, 'jpg', null, 'upload/files/20140825142853yOt63381.jpg', null, 'upload/files/20140825142853yOt63381.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('4028bc064763571d0147635828440003', null, 'LOGO', null, '2014-07-23 21:10:27', 'jpg', null, 'upload/files/20140723211027iPYMKOfy.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140723211027iPYMKOfy.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('4028d881436d514601436d5214bb0008', null, 'JR079839867R90000001000', null, null, 'doc', null, 'JR079839867R90000001000', null, 'upload/files/20130719201109hDr31jP1.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('4028d881436d514601436d5214c00009', null, 'JEECG平台协议', null, null, 'docx', null, 'JEECG平台协议', null, 'upload/files/20130719201156sYHjSFJj.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('4028d881436d514601436d5214c2000a', null, '分析JEECG与其他的开源项目的不足和优势', null, null, 'docx', null, '分析JEECG与其他的开源项目的不足和优势', null, 'upload/files/20130719201727ZLEX1OSf.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('4028d881436d514601436d5214c4000b', null, 'DMS-T3第三方租赁业务接口开发说明', null, null, 'docx', null, 'DMS-T3第三方租赁业务接口开发说明', null, 'upload/files/20130719201841LzcgqUek.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('4028d881436d514601436d5214c5000c', null, 'SAP-需求说明书-金融服务公司-第三方租赁业务需求V1.7-研发', null, null, 'doc', null, 'SAP-需求说明书-金融服务公司-第三方租赁业务需求V1.7-研发', null, 'upload/files/20130719201925mkCrU47P.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('4028d881436d514601436d5214ca000d', null, 'JEECG团队开发规范', null, null, 'txt', null, 'JEECG团队开发规范', null, 'upload/files/20130724103633fvOTwNSV.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('4028d881436d514601436d5214cb000e', null, '第一模板', null, null, 'doc', null, '第一模板', null, 'upload/files/20130724104603pHDw4QUT.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('4028d881436d514601436d5214cd000f', null, 'github入门使用教程', null, null, 'doc', null, 'github入门使用教程', null, 'upload/files/20130704200345EakUH3WB.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('4028d881436d514601436d5214cf0010', null, 'github入门使用教程', null, null, 'doc', null, 'github入门使用教程', null, 'upload/files/20130704200651IE8wPdZ4.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('4028d881436d514601436d5214d10011', null, '（张代浩）-金融服务公司机构岗位职责与任职资格设置表(根据模板填写）', null, null, 'xlsx', null, '（张代浩）-金融服务公司机构岗位职责与任职资格设置表(根据模板填写）', null, 'upload/files/20130704201022KhdRW1Gd.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('4028d881436d514601436d5214d30012', null, 'EIM201_CN', null, null, 'pdf', null, 'EIM201_CN', null, 'upload/files/20130704201046JVAkvvOt.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('4028d881436d514601436d5214d40013', null, 'github入门使用教程', null, null, 'doc', null, 'github入门使用教程', null, 'upload/files/20130704201116Z8NhEK57.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('4028d881436d514601436d5214d60014', null, 'JEECGUI标签库帮助文档v3.2', null, null, 'pdf', null, 'JEECGUI标签库帮助文档v3.2', null, 'upload/files/20130704201125DQg8hi2x.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('4028d881472f0d8101472f14e0010002', null, '13840528444553', null, '2014-07-13 17:36:42', 'png', null, 'upload/files/20140713173643LtfDgtJW.png', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713173643LtfDgtJW.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('4028d881472f0d8101472f1ff82a0005', null, '2501216q581a_434673', null, '2014-07-13 17:48:50', 'jpg', null, 'upload/files/201407131748505X4diOvz.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407131748505X4diOvz.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('4028d881472f0d8101472f218b350008', null, 'fdfb6e9cb6103298f5497760962ebbf7', null, '2014-07-13 17:50:33', 'png', null, 'upload/files/20140713175033jbqSMvgC.png', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713175033jbqSMvgC.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('4028d881472f356e01472f3695840002', null, 'Penguins', null, '2014-07-13 18:13:32', 'jpg', null, 'upload/files/20140713181332KAu3isS8.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713181332KAu3isS8.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('4028d881472f356e01472f3f428e0006', null, 'Hydrangeas', null, '2014-07-13 18:23:00', 'jpg', null, 'upload/files/20140713182300VpK2yVH4.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713182300VpK2yVH4.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('4028d881472f356e01472f4256e00007', null, 'Hydrangeas', null, '2014-07-13 18:26:22', 'jpg', null, 'upload/files/201407131826228RgGqLTc.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201407131826228RgGqLTc.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('4028d881472f356e01472f42fcc40009', null, 'Tulips', null, '2014-07-13 18:27:05', 'jpg', null, 'upload/files/20140713182705cUaiEj8S.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713182705cUaiEj8S.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('4028d881472f451c01472f481df30001', null, 'Koala', null, '2014-07-13 18:32:41', 'jpg', null, 'upload/files/20140713183241G0MwnKGS.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713183241G0MwnKGS.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('4028d881472f451c01472f4cd0dc0003', null, 'Desert', null, '2014-07-13 18:37:49', 'jpg', null, 'upload/files/20140713183749DFYsvVqm.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713183749DFYsvVqm.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('4028d881472f451c01472f4d0a920004', null, 'Jellyfish', null, '2014-07-13 18:38:03', 'jpg', null, 'upload/files/20140713183803rrJwDiBz.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140713183803rrJwDiBz.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('4028d8814734ee0d0147351e604e0001', null, '淘学网DB设计', null, '2014-07-14 21:44:48', 'xls', null, 'upload/files/20140714214448nnhIGNXP.xls', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140714214448nnhIGNXP.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('4028d88147359f51014735a006fc0001', null, '1348502732_4991', null, '2014-07-15 00:06:25', 'gif', null, 'upload/files/20140715000625jz067Iqi.gif', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140715000625jz067Iqi.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('f7a8a3a9487816f80148784e11af00bf', null, '手机', null, '2014-09-15 15:54:15', 'jpg', null, 'upload/files/20140915155415g510v6qF.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140915155415g510v6qF.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('f7a8a3a9487816f80148784f28fb00c9', null, 'dianshi', null, '2014-09-15 15:55:26', 'jpg', null, 'upload/files/20140915155526yZOqHMsv.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140915155526yZOqHMsv.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('f7a8a3a9487816f80148784f773b00cc', null, '00caa4894a92ec7e9e3ce1cdd19b7bb1', null, '2014-09-15 15:55:46', 'png', null, 'upload/files/20140915155546tD1CxcsF.png', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140915155546tD1CxcsF.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('f7a8a3a9487816f801487850306900d4', null, 'dianshi', null, '2014-09-15 15:56:34', 'jpg', null, 'upload/files/20140915155634PKf2xftq.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140915155634PKf2xftq.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('f7a8a3a9487816f8014878562b3b00e5', null, 'jiadian', null, '2014-09-15 16:03:06', 'jpg', null, 'upload/files/20140915160306AB5EsXvL.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140915160306AB5EsXvL.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('f7a8a3a9487816f801487859332c00f2', null, '2', null, '2014-09-15 16:06:24', 'jpg', null, 'upload/files/20140915160624FTLr7Pi1.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140915160624FTLr7Pi1.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('f7a8a3a9487816f80148785b6f3200fa', null, '3', null, '2014-09-15 16:08:51', 'jpg', null, 'upload/files/20140915160851z1Uzudqp.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140915160851z1Uzudqp.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('f7a8a3a9487816f80148785cb6090101', null, 'u=4027482876,2363678158&fm=23&gp=0', null, '2014-09-15 16:10:14', 'jpg', null, 'upload/files/201409151610148RvvnDM4.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/201409151610148RvvnDM4.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('f7a8a3a9487816f80148785d46a10103', null, '5', null, '2014-09-15 16:10:51', 'jpg', null, 'upload/files/20140915161051rgZ0xtje.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140915161051rgZ0xtje.swf', null, null, null);
INSERT INTO t_s_attachment VALUES ('f7a8a3a9487816f80148786855220136', null, 'QQ图片20140528173211', null, '2014-09-15 16:22:56', 'jpg', null, 'upload/files/20140915162256x5DP3ZUB.jpg', 'org.jeecgframework.web.system.pojo.base.TSDocument', 'upload/files/20140915162256x5DP3ZUB.swf', null, null, null);

-- ----------------------------
-- Table structure for `t_s_base_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_base_user`;
CREATE TABLE `t_s_base_user` (
  `ID` varchar(32) NOT NULL,
  `activitiSync` smallint(6) default NULL,
  `browser` varchar(20) default NULL,
  `password` varchar(100) default NULL,
  `realname` varchar(50) default NULL,
  `signature` blob,
  `status` smallint(6) default NULL,
  `userkey` varchar(200) default NULL,
  `username` varchar(10) NOT NULL,
  `departid` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_15jh1g4iem1857546ggor42et` (`departid`),
  CONSTRAINT `FK_15jh1g4iem1857546ggor42et` FOREIGN KEY (`departid`) REFERENCES `t_s_depart` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_base_user
-- ----------------------------
INSERT INTO t_s_base_user VALUES ('402880e447d2f1fb0147d2f580d40002', null, null, 'd8a8af5e643bd5fb', null, null, '1', null, 'test123', '4028d881436d514601436d5214d70015');
INSERT INTO t_s_base_user VALUES ('402880e447d7243d0147d72ea3eb0002', null, null, 'a005ce36be9f5672', null, null, '1', null, '1', '4028d881436d514601436d5214d70015');
INSERT INTO t_s_base_user VALUES ('402881e4461f9c6401461fa2e6f50002', null, null, '4be1dd049390623054515c6d433c4e3c', 'tingfeng', null, '1', null, 'tingfeng', '4028d881436d514601436d5214d70015');
INSERT INTO t_s_base_user VALUES ('402881e44648134a014648174a45000c', null, null, 'e0d5cae5376f58ac', '测试', null, '1', null, 'ceshi', '4028d881436d514601436d5214d70015');
INSERT INTO t_s_base_user VALUES ('4028bce447cf8bda0147cf9047090006', null, null, 'aff3f434005ab82a', null, null, '1', null, '1111', '4028d881436d514601436d5214d70015');
INSERT INTO t_s_base_user VALUES ('4028d881436d514601436d5215ac0043', '1', null, 'c44b01947c9e6e3f', '管理员', null, '1', null, 'admin', '4028d881436d514601436d5214d70015');
INSERT INTO t_s_base_user VALUES ('4028d881436d514601436d5215b20044', '0', null, '97c07a884bf272b5', '测试', null, '1', null, 'test432', '4028d881436d514601436d5214f30017');
INSERT INTO t_s_base_user VALUES ('4028d881436d514601436d5215b80045', '0', null, 'f2322ec2fb9f40d1', '采购员', null, '1', null, 'cgy', '4028d881436d514601436d5214d70015');
INSERT INTO t_s_base_user VALUES ('4028d881436d514601436d5215bc0046', '1', null, 'a324509dc1a3089a', '采购审批员', null, '1', null, 'cgspy', '4028d881436d514601436d5214d70015');
INSERT INTO t_s_base_user VALUES ('f7a8a3a9487816f801487817c4fd0001', null, null, '', null, null, '1', null, '', '4028d881436d514601436d5214d70015');
INSERT INTO t_s_base_user VALUES ('f7a8a3a9487816f801487818b3070006', null, null, '4bfc5baeb03671b6', '兑奖', null, '1', null, 'dj', '4028d881436d514601436d5214d70015');
INSERT INTO t_s_base_user VALUES ('f7a8a3a9487816f80148781e4cfc004b', null, null, '', null, null, '1', null, '', '4028d881436d514601436d5214d70015');
INSERT INTO t_s_base_user VALUES ('f7a8a3a9487816f8014878200b850051', null, null, '', null, null, '1', null, '', '4028d881436d514601436d5214d70015');
INSERT INTO t_s_base_user VALUES ('f7a8a3a9487816f80148782154be0057', null, null, '', null, null, '1', null, '', '4028d881436d514601436d5214d70015');
INSERT INTO t_s_base_user VALUES ('f7a8a3a9487816f801487822427a005d', null, null, '', null, null, '1', null, '', '4028d881436d514601436d5214d70015');
INSERT INTO t_s_base_user VALUES ('f7a8a3a9487816f801487829a7f80076', null, null, '', null, null, '1', null, '', '4028d881436d514601436d5214d70015');
INSERT INTO t_s_base_user VALUES ('f7a8a3a9487816f80148783b292b008f', null, null, '', null, null, '1', null, '', '4028d881436d514601436d5214d70015');
INSERT INTO t_s_base_user VALUES ('f7a8a3a9487816f8014878449b6200a8', null, null, '', null, null, '1', null, '', '4028d881436d514601436d5214d70015');
INSERT INTO t_s_base_user VALUES ('f7a8a3a9487816f801487845f3be00ad', null, null, '', null, null, '1', null, '', '4028d881436d514601436d5214d70015');
INSERT INTO t_s_base_user VALUES ('f7a8a3a9487816f801487848150800b4', null, null, '', null, null, '1', null, '', '4028d881436d514601436d5214d70015');
INSERT INTO t_s_base_user VALUES ('f7a8a3a9487816f801487848e4cb00ba', null, null, '', null, null, '1', null, '', '4028d881436d514601436d5214d70015');
INSERT INTO t_s_base_user VALUES ('f7a8a3a9487816f80148784ef41000c5', null, null, 'a427579a1e0d1cbea330b2759ac7c5b5', null, null, '1', null, 'ceshi123', '4028d881436d514601436d5214d70015');
INSERT INTO t_s_base_user VALUES ('f7a8a3a9487816f80148784fb74100cf', null, null, '463408fdf59bb9d9', null, null, '1', null, '123456', '4028d881436d514601436d5214d70015');
INSERT INTO t_s_base_user VALUES ('f7a8a3a9487816f801487852a91a00d7', null, null, '17e1d92ba37d928c', null, null, '1', null, 'lwljdtx', '4028d881436d514601436d5214d70015');
INSERT INTO t_s_base_user VALUES ('f7a8a3a9487816f801487854854c00dd', null, null, '8c459e2733844b36', null, null, '1', null, 'kyno', '4028d881436d514601436d5214d70015');
INSERT INTO t_s_base_user VALUES ('f7a8a3a9487816f80148785e9c0f0107', null, null, '38611a40dc72d28d491e46540572b24a', null, null, '1', null, 'dps12345', '4028d881436d514601436d5214d70015');
INSERT INTO t_s_base_user VALUES ('f7a8a3a9487816f80148786f49a7013f', null, null, '', null, null, '1', null, '', '4028d881436d514601436d5214d70015');
INSERT INTO t_s_base_user VALUES ('f7a8a3a9487816f80148787496290144', null, null, '6c6a5ea0fc122ca6', null, null, '1', null, 'qqqq', '4028d881436d514601436d5214d70015');
INSERT INTO t_s_base_user VALUES ('f7a8a3a9487816f80148788795320150', null, null, '', null, null, '1', null, '', '4028d881436d514601436d5214d70015');
INSERT INTO t_s_base_user VALUES ('f7a8a3a9487816f80148788d22850163', null, null, 'c379b08e38347144', null, null, '1', null, 'xyytest', '4028d881436d514601436d5214d70015');
INSERT INTO t_s_base_user VALUES ('f7a8a3a9487816f801487898dc3b0172', null, null, '', null, null, '1', null, '', '4028d881436d514601436d5214d70015');
INSERT INTO t_s_base_user VALUES ('f7a8a3a9487816f80148789a88e10177', null, null, '', null, null, '1', null, '', '4028d881436d514601436d5214d70015');
INSERT INTO t_s_base_user VALUES ('f7a8a3a9487816f8014878a64db30185', null, null, '', null, null, '1', null, '', '4028d881436d514601436d5214d70015');
INSERT INTO t_s_base_user VALUES ('f7a8a3a9487816f8014878bc224201a7', null, null, '', null, null, '1', null, '', '4028d881436d514601436d5214d70015');

-- ----------------------------
-- Table structure for `t_s_config`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_config`;
CREATE TABLE `t_s_config` (
  `ID` varchar(32) NOT NULL,
  `code` varchar(100) default NULL,
  `content` longtext,
  `name` varchar(100) NOT NULL,
  `note` longtext,
  `userid` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_m3q8r50ror4fl7fjkvd82tqgn` (`userid`),
  CONSTRAINT `FK_m3q8r50ror4fl7fjkvd82tqgn` FOREIGN KEY (`userid`) REFERENCES `t_s_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_config
-- ----------------------------

-- ----------------------------
-- Table structure for `t_s_demo`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_demo`;
CREATE TABLE `t_s_demo` (
  `ID` varchar(32) NOT NULL,
  `democode` longtext,
  `demoorder` smallint(6) default NULL,
  `demotitle` varchar(200) default NULL,
  `demourl` varchar(200) default NULL,
  `demopid` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_fni8e3v88wcf2sahhlv57u4nm` (`demopid`),
  CONSTRAINT `FK_fni8e3v88wcf2sahhlv57u4nm` FOREIGN KEY (`demopid`) REFERENCES `t_s_demo` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_demo
-- ----------------------------
INSERT INTO t_s_demo VALUES ('4028d881436d514601436d52186900c4', '<div class=\"form\">\r\n   <label class=\"Validform_label\">\r\n     非空验证：\r\n    </label>\r\n    <input name=\"demotitle\" id=\"demotitle\" datatype=\"*\" errormsg=\"该字段不为空\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     URL验证：\r\n    </label>\r\n    <input name=\"demourl\" id=\"demourl\" datatype=\"url\" errormsg=\"必须是URL\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     至少选择2项：\r\n    </label>\r\n    <input name=\"shoppingsite1\" class=\"rt2\" id=\"shoppingsite21\" type=\"checkbox\" value=\"1\" datatype=\"need2\" nullmsg=\"请选择您的爱好！\" />\r\n  \r\n     阅读\r\n  \r\n    <input name=\"shoppingsite1\" class=\"rt2\" id=\"shoppingsite22\" type=\"checkbox\" value=\"2\" />\r\n    \r\n     音乐\r\n  \r\n    <input name=\"shoppingsite1\" class=\"rt2\" id=\"shoppingsite23\" type=\"checkbox\" value=\"3\" />\r\n  \r\n     运动\r\n   \r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     邮箱：\r\n    </label>\r\n    <input name=\"demoorder\" id=\"demoorder\" datatype=\"e\" errormsg=\"邮箱非法\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     手机号：\r\n    </label>\r\n    <input name=\"phone\" id=\"phone\" datatype=\"m\" errormsg=\"手机号非法\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     金额：\r\n    </label>\r\n    <input name=\"money\" id=\"money\" datatype=\"d\" errormsg=\"金额非法\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     日期：\r\n    </label>\r\n    <input name=\"date\" id=\"date\" class=\"easyui-datebox\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     时间：\r\n    </label>\r\n    <input name=\"time\" id=\"time\" class=\"easyui-datetimebox\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>', null, '表单验证', null, null);

-- ----------------------------
-- Table structure for `t_s_depart`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_depart`;
CREATE TABLE `t_s_depart` (
  `ID` varchar(32) NOT NULL,
  `departname` varchar(100) NOT NULL,
  `description` longtext,
  `parentdepartid` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_knnm3wb0bembwvm0il7tf6686` (`parentdepartid`),
  CONSTRAINT `FK_knnm3wb0bembwvm0il7tf6686` FOREIGN KEY (`parentdepartid`) REFERENCES `t_s_depart` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_depart
-- ----------------------------
INSERT INTO t_s_depart VALUES ('4028d881436d514601436d5214d70015', '信息部', '12', null);
INSERT INTO t_s_depart VALUES ('4028d881436d514601436d5214ef0016', '设计部', null, null);
INSERT INTO t_s_depart VALUES ('4028d881436d514601436d5214f30017', '研发室', '研发技术难题', '4028d881436d514601436d5214ef0016');

-- ----------------------------
-- Table structure for `t_s_document`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_document`;
CREATE TABLE `t_s_document` (
  `documentstate` smallint(6) default NULL,
  `documenttitle` varchar(100) default NULL,
  `pictureindex` blob,
  `showhome` smallint(6) default NULL,
  `id` varchar(32) NOT NULL,
  `typeid` varchar(32) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_qr3qlmgkflj35m5ci1xv0vvg3` (`typeid`),
  KEY `FK_f2mc12eu0umghp2i70apmtxjl` (`id`),
  CONSTRAINT `FK_f2mc12eu0umghp2i70apmtxjl` FOREIGN KEY (`id`) REFERENCES `t_s_attachment` (`ID`),
  CONSTRAINT `FK_qr3qlmgkflj35m5ci1xv0vvg3` FOREIGN KEY (`typeid`) REFERENCES `t_s_type` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_document
-- ----------------------------
INSERT INTO t_s_document VALUES (null, null, null, null, '297e7eb6469a4a8901469a5d96ea000d', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '297e7eb6469a4a8901469a5ebac20010', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '297e7eb6469a9a0f01469a9b59d30001', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '297e7eb6469a9a0f01469a9bc74b0003', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '2c9183404d70b41a014d74171adb0018', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '2c9183404d744024014d74470fab0003', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '2c9183404d74f79b014d792a6d98000a', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '2c9183404d7938da014d793bbc730009', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '2c9183404d7938da014d793de516000d', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '2c9183404d7938da014d793f0ef40011', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402880e6477d04e001477d0a31040002', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402880e6477d04e001477d0a53150005', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402880e6477d04e001477d0dfcd80009', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402880e6477d04e001477d0e143d000a', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402880e6477d04e001477d0e1d31000d', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402880e6477d5c2601477d5d81de0001', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402880e648138dba014813b89b85003c', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402880e648138dba014813b8e1ee0040', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '4028818348fa8bb90148fa905a910001', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '4028818348faa4fa0148faa950de0001', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '4028818348faa4fa0148faad079b0005', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '4028818348fab3080148fab743f40001', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e446394419014639453ce90002', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e4463cc88701463ccef5340001', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e44643207c01464333b1f9000c', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e4464381350146438691940002', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e44643813501464389b02a000b', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e44643a1cd014643a510060003', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e44643a1cd014643a55d6f0006', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e44695183a014695210478000f', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e44695183a0146952144320012', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e44695183a0146952187bc0015', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e44695183a01469522f1ed0018', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e44695183a01469523431e001b', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e44695183a01469523eb7f001e', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e44695183a0146952422130021', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e446955c7c014695970aeb0014', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e446955c7c01469597394f0016', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e446955c7c0146959757810018', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e446955c7c014695977560001a', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e446955c7c014695a1de0a001d', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e446955c7c014695a38b470020', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e446955c7c014695a3cdea0022', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e446955c7c014695a4383a0024', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e446955c7c014695a4913b0026', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e446955c7c014695a4dda10027', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e446955c7c014695a726df0028', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e446955c7c014695a7705a002b', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e446955c7c014695a7b814002e', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e446955c7c014695a7ecf10031', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e446955c7c014695a831d70034', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e44695ebe3014695ed3bdc0001', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e44695ebe3014695ed79fa0003', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e44695ebe3014695ef476c0005', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e44695ebe3014695f2c6280007', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e44695ebe3014695f3176d0009', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e44695ebe3014695f339a7000b', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e44695ebe3014695f3a3b3000d', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e44695ebe3014695f3f89f000f', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e44695ebe3014695f443990011', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e44695ebe3014695f45e1a0013', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e44695ebe3014695f494290015', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e44695ebe3014695f4d5570017', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, '11111', null, null, '402881e845d1723e0145d18fef940019', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e946ddea480146ddf061b50001', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e946ddea480146ddf730350003', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e946ddea480146ddf991610005', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e946ddea480146de02f8ba0008', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e946ddea480146de0522e3000a', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e946ddea480146de09f959000e', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e946ddea480146de0f340b0010', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e947015a7001470160f9290001', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e947015a70014701619f490004', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e947015a700147016449650007', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e94701df96014701eb22d30006', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e94701df96014701f3f7160007', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e94701df960147020b82d1000d', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e9470273d20147028adf830019', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e9470273d20147028afde6001a', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e94702c764014702ceee2e0004', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881e9487dd36401487df2c4830002', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402881ea4cf000a0014cf6176eb50001', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889ed472e852301472eaee6f80009', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889ed472e852301472eb0270b000d', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889ed472ec2a801472ec3997c0001', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889ed472ee23401472ee59ccf0001', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f346dc66c30146dc7c11630001', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f346dc66c30146dc7ccb410005', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f346dc66c30146dc7cf66b0008', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f346dc8a220146dc933f720007', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f64747048401474709372d0009', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f6474704840147470a1ca7000e', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f6474704840147470d48ab000f', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f6474704840147470d62570012', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f6474704840147470e7b920014', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f64747048401474710097e0017', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f647470484014747108feb001a', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f647470484014747129c15001d', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f647470484014747133201001f', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f647470484014747137f230022', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f64747182f01474718ed750001', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f64747182f01474719193e0004', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f64747182f01474719c42b0007', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f64747182f01474720ef4c000c', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f64747182f014747211b11000f', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f6474722ad01474723d3400001', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f6474722ad01474723f78e0004', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f6474722ad014747248d0f0007', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f6474722ad01474724bdc2000a', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f847666ae40147666df6eb0002', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f847666ae40147666e16ff0003', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f847666ae40147671e80cf0017', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f847666ae401476729806f0018', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f847666ae401476729c6df001b', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f847666ae401476730b187001e', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f847666ae401476730f1240021', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f84767413b0147674352d30001', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f8477ad29d01477ad8e51b0004', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f8477b0c1f01477b0e31e30003', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f8477b0c1f01477b0e44790006', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f8477b5b5b01477b5cb2c40002', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f8477b5b5b01477b5cc3e50003', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f8477b5b5b01477b5d02730006', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f8477b5b5b01477b5ef0a90009', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f8477b5b5b01477b5efd31000c', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f8477b681801477b69179c0002', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f8477b681801477b692d7b0005', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f8477b6c5401477b6d39dc0002', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f8477b6c5401477b6d4ee40005', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f8477b6e4e01477b6efba10001', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f8477b6e4e01477b6f0ae10004', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f8477b70aa01477b71e16e0003', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f8477b70aa01477b71ee4a0006', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f8477b70aa01477b75b3200009', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f8477b70aa01477b75c54a000c', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f8477c283701477c29665c0002', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f8477c283701477c298a7e0005', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f8477c283701477c2a71d10007', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f8477c283701477c2a81de000a', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f8477c283701477c2b8bb4000b', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f8477c283701477c2b9bfd000e', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f8477c283701477c2e96f50012', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '402889f8477c283701477c2eb1300015', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '4028bc064763571d0147635828440003', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '4028d881472f0d8101472f14e0010002', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '4028d881472f0d8101472f1ff82a0005', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '4028d881472f0d8101472f218b350008', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '4028d881472f356e01472f3695840002', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '4028d881472f356e01472f3f428e0006', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '4028d881472f356e01472f4256e00007', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '4028d881472f356e01472f42fcc40009', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '4028d881472f451c01472f481df30001', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '4028d881472f451c01472f4cd0dc0003', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '4028d881472f451c01472f4d0a920004', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '4028d8814734ee0d0147351e604e0001', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, '4028d88147359f51014735a006fc0001', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, 'f7a8a3a9487816f80148784e11af00bf', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, 'f7a8a3a9487816f80148784f28fb00c9', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, 'f7a8a3a9487816f80148784f773b00cc', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, 'f7a8a3a9487816f801487850306900d4', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, 'f7a8a3a9487816f8014878562b3b00e5', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, 'f7a8a3a9487816f801487859332c00f2', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, 'f7a8a3a9487816f80148785b6f3200fa', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, 'f7a8a3a9487816f80148785cb6090101', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, 'f7a8a3a9487816f80148785d46a10103', '4028d881436d514601436d5216190053');
INSERT INTO t_s_document VALUES (null, null, null, null, 'f7a8a3a9487816f80148786855220136', '4028d881436d514601436d5216190053');

-- ----------------------------
-- Table structure for `t_s_fileno`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_fileno`;
CREATE TABLE `t_s_fileno` (
  `ID` varchar(32) NOT NULL,
  `filenobefore` varchar(32) default NULL,
  `filenonum` int(11) default NULL,
  `filenotype` varchar(32) default NULL,
  `filenoYear` date default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_fileno
-- ----------------------------

-- ----------------------------
-- Table structure for `t_s_function`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_function`;
CREATE TABLE `t_s_function` (
  `ID` varchar(32) NOT NULL,
  `functioniframe` smallint(6) default NULL,
  `functionlevel` smallint(6) default NULL,
  `functionname` varchar(50) NOT NULL,
  `functionorder` varchar(255) default NULL,
  `functionurl` varchar(100) default NULL,
  `parentfunctionid` varchar(32) default NULL,
  `iconid` varchar(32) default NULL,
  `desk_iconid` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_brd7b3keorj8pmxcv8bpahnxp` (`parentfunctionid`),
  KEY `FK_q5tqo3v4ltsp1pehdxd59rccx` (`iconid`),
  KEY `FK_gbdacaoju6d5u53rp4jo4rbs9` (`desk_iconid`),
  CONSTRAINT `FK_brd7b3keorj8pmxcv8bpahnxp` FOREIGN KEY (`parentfunctionid`) REFERENCES `t_s_function` (`ID`),
  CONSTRAINT `FK_gbdacaoju6d5u53rp4jo4rbs9` FOREIGN KEY (`desk_iconid`) REFERENCES `t_s_icon` (`ID`),
  CONSTRAINT `FK_q5tqo3v4ltsp1pehdxd59rccx` FOREIGN KEY (`iconid`) REFERENCES `t_s_icon` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_function
-- ----------------------------
INSERT INTO t_s_function VALUES ('297e7eb6469a4a8901469a54eff60006', null, '1', '文章管理', '3', 'cmsArticleController.do?cmsArticle', '402881e44695183a0146951af2b70004', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('2c9716d547c2f4290147c36c654e0001', null, '1', '会员信息', '2', 'weixinVipMemberController.do?weixinVipMember', '402881e5479d04cc01479d0635030001', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('3c3cd1354801b1b5014801b6b0370001', null, '0', '微社区', '9', '', null, '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('3c3cd1354801b1b5014801b768030003', null, '1', '微社区设置', '1', 'weixinBbsController.do?addorupdate', '3c3cd1354801b1b5014801b6b0370001', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('3c3cd1354801b1b5014801b7dd490005', null, '1', '帖子管理', '2', 'weixinBbsPostController.do?weixinBbsPost', '3c3cd1354801b1b5014801b6b0370001', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('402880e64763f59c014763f70c370001', null, '1', '订单管理', '6', 'weixinShopDealController.do?goList', '402881e946f7bcb20146f7c763470001', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('402880e6478c6d8201478c71c5460001', null, '1', '微相册', '3', 'weixinPhotoAlbumController.do?weixinPhotoAlbum', '4028d881436d514601436d5449330189', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('40288183490a24bb01490a5a28b10018', null, '1', ' 奖项设置', '6', 'awardsLevelController.do?awardsLevel', '4028d881436d514601436d5449330189', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('40288183490a24bb01490a5bb790001a', null, '1', '奖品设置', '6', 'awardController.do?award', '4028d881436d514601436d5449330189', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('402881e44695183a0146951af2b70004', null, '0', '微网站', '5', '', null, '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('402881e44695183a0146951b66050006', null, '1', '广告管理', '0', 'adController.do?ad', '402881e44695183a0146951af2b70004', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('402881e44695183a0146951ed79e0008', null, '1', '栏目管理', '1', 'cmsMenuController.do?menu', '402881e44695183a0146951af2b70004', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('402881e447a678500147a679e8c30001', null, '1', '关注用户管理', '1', 'gzUserInfoYwController.do?list', '4028d881436d514601436d5485af018b', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('402881e447ab60250147ab7211830001', null, '1', '用户分组管理', '2', 'groupYwController.do?list', '4028d881436d514601436d5485af018b', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('402881e44807fe29014808037c1c0006', null, '1', '优惠劵', '1', 'promotionCouponController.do?promotionCoupon', '402881e5479d04cc01479d0635030001', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('402881e448313d1a0148314004310001', null, '1', '调研问卷主题', '1', 'weixinSurveyMainController.do?weixinSurveyMain', '402881e9481f46a801481f506a3c0002', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('402881e545f5dd1a0145f5de9bb60001', null, '0', '微消息素材', '2', '', null, '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('402881e545f5dd1a0145f5f32cf00005', null, '1', '消息管理', '1', 'textTemplateController.do?list', '402881e545f5dd1a0145f5de9bb60001', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('402881e545f5f4780145f61198810004', null, '1', '素材管理', '2', 'newsTemplateController.do?list', '402881e545f5dd1a0145f5de9bb60001', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('402881e54705f629014705f7d5d40001', null, '1', '会员管理', '3', 'weixinShopMemberController.do?weixinShopMember', '402881e946f7bcb20146f7c763470001', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('402881e5470bc37201470bd136b20001', null, '1', '购物车管理', '4', 'weixinShopCartController.do?weixinShopCart', '402881e946f7bcb20146f7c763470001', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('402881e5479d04cc01479d0635030001', null, '0', '会员卡', '8', '', null, '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('402881e5479d04cc01479d0675b90003', null, '1', '会员卡信息', '1', 'weixinVipInfoController.do?weixinVipInfo', '402881e5479d04cc01479d0635030001', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('402881e54808141b0148082494eb001a', null, '1', '微投票', '4', 'weixinVoteController.do?weixinVote', '402881e9481f46a801481f506a3c0002', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('402881e647b5bae60147b5bd8b320001', null, '1', '接收消息管理', '3', 'receiveTextController.do?list', '4028d881436d514601436d5485af018b', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('402881e647f8d19c0147f8d522ec0001', null, '1', '周边管理', '5', 'aroundController.do?around', '4028d881436d514601436d5485af018b', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('402881e8460d7e5301460d81c7a60001', null, '1', '关键字管理', '2', 'autoResponseController.do?list', '4028d881436d514601436d52c2fb0181', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('402881e847d4dc160147d4de5f870001', null, '1', '微留言', '6', 'weixinLeaveMsgController.do?weixinLeaveMsg', '4028d881436d514601436d5449330189', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('402881e946f7bcb20146f7c763470001', null, '0', '微商城', '6', '', null, '4028d881436d514601436d5214ba0007', null);
INSERT INTO t_s_function VALUES ('402881e946f7bcb20146f7c8bfc60003', null, '1', '商品分类', '1', 'weixinShopCategoryController.do?weixinShopCategory', '402881e946f7bcb20146f7c763470001', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('402881e94701df96014701e5fe2e0001', null, '1', '商品信息', '1', 'weixinShopGoodsController.do?weixinShopGoods', '402881e946f7bcb20146f7c763470001', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('402881e9481f46a801481f506a3c0002', null, '0', '微调研问卷', '10', '', null, '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('402881e9481f46a801481f51442a0004', null, '1', '调研问卷题目', '2', 'weixinSurveyController.do?weixinSurvey', '402881e9481f46a801481f506a3c0002', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('402881e9481f46a801481f52afb70006', null, '1', '调研问卷结果', '3', 'weixinSurveyController.do?weixinSurveyRecord', '402881e9481f46a801481f506a3c0002', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('402886bd519544f801519548d2ee0003', null, '1', '支付账号管理', '1', 'payConfigController.do?payConfig', '4028d881436d514601436d52c2fb0181', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('402889f64747048401474706d2a50001', null, '1', '网站信息', '5', 'weixinCmsSiteController.do?weixinCmsSite', '402881e44695183a0146951af2b70004', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('402889f64747048401474707902e0003', null, '1', '网站模板', '6', 'weixinCmsStyleController.do?weixinCmsStyle', '402881e44695183a0146951af2b70004', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('4028d881436d514601436d52150a0019', null, '0', '系统管理', '11', '', null, '4028d881436d514601436d5214b80005', null);
INSERT INTO t_s_function VALUES ('4028d881436d514601436d52150b001a', null, '0', '统计查询', '3', '', null, '4028d881436d514601436d5214ba0007', null);
INSERT INTO t_s_function VALUES ('4028d881436d514601436d52150f001c', null, '0', '系统监控', '11', '', null, '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('4028d881436d514601436d521513001d', null, '1', '用户管理', '5', 'userController.do?user', '4028d881436d514601436d52150a0019', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('4028d881436d514601436d521516001e', null, '1', '角色管理', '6', 'roleController.do?role', '4028d881436d514601436d52150a0019', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('4028d881436d514601436d52151a001f', null, '1', '菜单管理', '7', 'functionController.do?function', '4028d881436d514601436d52150a0019', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('4028d881436d514601436d52151f0020', null, '1', '数据字典', '6', 'systemController.do?typeGroupList', '4028d881436d514601436d52150a0019', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('4028d881436d514601436d5215220021', null, '1', '图标管理', '18', 'iconController.do?icon', '4028d881436d514601436d52150a0019', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('4028d881436d514601436d5215260023', null, '1', '部门管理', '22', 'departController.do?depart', '4028d881436d514601436d52150a0019', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('4028d881436d514601436d5215290024', null, '1', '地域管理', '22', 'territoryController.do?territory', '4028d881436d514601436d52150a0019', '4028d881436d514601436d5214b10001', null);
INSERT INTO t_s_function VALUES ('4028d881436d514601436d52152c0025', null, '1', '用户分析', '17', 'logController.do?statisticTabs&isIframe', '4028d881436d514601436d52150b001a', '4028d881436d514601436d5214b10001', null);
INSERT INTO t_s_function VALUES ('4028d881436d514601436d5215380028', null, '1', '数据监控', '11', 'dataSourceController.do?goDruid&isIframe', '4028d881436d514601436d52150f001c', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('4028d881436d514601436d52153b0029', null, '1', '系统日志', '21', 'logController.do?log', '4028d881436d514601436d52150f001c', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('4028d881436d514601436d521540002a', null, '1', '定时任务', '21', 'timeTaskController.do?timeTask', '4028d881436d514601436d52150f001c', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('4028d881436d514601436d521593003f', null, '1', '报表示例', '21', 'reportDemoController.do?studentStatisticTabs&isIframe', '4028d881436d514601436d52150b001a', '4028d881436d514601436d5214b10001', null);
INSERT INTO t_s_function VALUES ('4028d881436d514601436d52c2fb0181', null, '0', '微配置中心', '1', '', null, '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('4028d881436d514601436d5449330189', null, '0', '微营销', '3', '', null, '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('4028d881436d514601436d5485af018b', null, '0', '高级接口', '4', '', null, '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('4028d881436d514601436d5618400191', null, '1', '关注欢迎语', '01', 'subscribeController.do?list', '4028d881436d514601436d52c2fb0181', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('4028d881436d514601436d56555e0193', null, '1', '未识别回复语', '02', 'unknownResponseController.do?list', '4028d881436d514601436d52c2fb0181', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('4028d881436d514601436d5884be019d', null, '1', '自定义菜单', '02', 'menuManagerController.do?list', '4028d881436d514601436d52c2fb0181', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('4028d881436d514601436d59d6d901a7', null, '1', '微信抽奖活动', '02', 'huodongController.do?list&type=1', '4028d881436d514601436d5449330189', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('4028d881436d514601436d5af95501b1', null, '1', '公众帐号管理', '10', 'weixinAccountController.do?weixinAccount', '4028d881436d514601436d52c2fb0181', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('f7a8a3a9487816f801487836b363007d', null, '0', '竞选投票PK', '10', '', null, '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('f7a8a3a9487816f801487836e83e007f', null, '1', '用户信息管理', '1', 'weixinVotePKSignUserinfoController.do?weixinVotePKSignUserinfo', 'f7a8a3a9487816f801487836b363007d', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('f7a8a3a9487816f80148783723340081', null, '1', '投票结果查询', '2', 'weixinVotePKRecordController.do?weixinVotePKRecord', 'f7a8a3a9487816f801487836b363007d', '4028d881436d514601436d5214b30002', null);
INSERT INTO t_s_function VALUES ('f7a8a3a9487816f8014878375c830083', null, '1', '参数配置', '3', 'weixinVotePKConfigController.do?weixinVotePKConfig', 'f7a8a3a9487816f801487836b363007d', '4028d881436d514601436d5214b30002', null);

-- ----------------------------
-- Table structure for `t_s_icon`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_icon`;
CREATE TABLE `t_s_icon` (
  `ID` varchar(32) NOT NULL,
  `extend` varchar(255) default NULL,
  `iconclas` varchar(200) default NULL,
  `content` blob,
  `name` varchar(100) NOT NULL,
  `path` longtext,
  `type` smallint(6) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_icon
-- ----------------------------
INSERT INTO t_s_icon VALUES ('4028d881436d514601436d5214650000', 'png', 'back', null, '返回', 'plug-in/accordion/images/back.png', '1');
INSERT INTO t_s_icon VALUES ('4028d881436d514601436d5214b10001', 'png', 'pie', null, '饼图', 'plug-in/accordion/images/pie.png', '1');
INSERT INTO t_s_icon VALUES ('4028d881436d514601436d5214b30002', 'png', 'pictures', null, '图片', 'plug-in/accordion/images/pictures.png', '1');
INSERT INTO t_s_icon VALUES ('4028d881436d514601436d5214b40003', 'png', 'pencil', null, '笔', 'plug-in/accordion/images/pencil.png', '1');
INSERT INTO t_s_icon VALUES ('4028d881436d514601436d5214b50004', 'png', 'map', null, '地图', 'plug-in/accordion/images/map.png', '1');
INSERT INTO t_s_icon VALUES ('4028d881436d514601436d5214b80005', 'png', 'group_add', null, '组', 'plug-in/accordion/images/group_add.png', '1');
INSERT INTO t_s_icon VALUES ('4028d881436d514601436d5214b90006', 'png', 'calculator', null, '计算器', 'plug-in/accordion/images/calculator.png', '1');
INSERT INTO t_s_icon VALUES ('4028d881436d514601436d5214ba0007', 'png', 'folder', null, '文件夹', 'plug-in/accordion/images/folder.png', '1');

-- ----------------------------
-- Table structure for `t_s_log`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_log`;
CREATE TABLE `t_s_log` (
  `ID` varchar(32) NOT NULL,
  `broswer` varchar(100) default NULL,
  `logcontent` longtext NOT NULL,
  `loglevel` smallint(6) default NULL,
  `note` longtext,
  `operatetime` datetime NOT NULL,
  `operatetype` smallint(6) default NULL,
  `userid` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_oe64k4852uylhyc5a00rfwtay` (`userid`),
  CONSTRAINT `FK_oe64k4852uylhyc5a00rfwtay` FOREIGN KEY (`userid`) REFERENCES `t_s_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_log
-- ----------------------------
INSERT INTO t_s_log VALUES ('297e7eb6469a4a8901469a4b008b0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '169.254.254.54', '2014-06-14 20:12:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('297e7eb6469a4a8901469a4b9c400001', 'Chrome', '权限: 微大转盘被更新成功', '5', '169.254.254.54', '2014-06-14 20:13:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('297e7eb6469a4a8901469a4c0c810002', 'Chrome', '权限: 微信刮刮乐被更新成功', '5', '169.254.254.54', '2014-06-14 20:13:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('297e7eb6469a4a8901469a4c1d6a0003', 'Chrome', '用户admin已退出', '2', '169.254.254.54', '2014-06-14 20:13:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('297e7eb6469a4a8901469a4c6e2f0004', 'Chrome', '用户: admin[信息部]登录成功', '1', '169.254.254.54', '2014-06-14 20:13:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('297e7eb6469a4a8901469a4ebff20005', 'Chrome', '权限: 广告管理被更新成功', '5', '169.254.254.54', '2014-06-14 20:16:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('297e7eb6469a4a8901469a54f0740007', 'Chrome', '权限: 信息管理被添加成功', '3', '169.254.254.54', '2014-06-14 20:23:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('297e7eb6469a4a8901469a5596b80009', 'Chrome', '用户admin已退出', '2', '169.254.254.54', '2014-06-14 20:23:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('297e7eb6469a4a8901469a55a8fa000a', 'Chrome', '用户: admin[信息部]登录成功', '1', '169.254.254.54', '2014-06-14 20:24:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('297e7eb6469a4a8901469a562832000b', 'Chrome', '用户admin已退出', '2', '169.254.254.54', '2014-06-14 20:24:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('297e7eb6469a4a8901469a59947b000c', 'Chrome', '用户: admin[信息部]登录成功', '1', '169.254.254.54', '2014-06-14 20:28:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('297e7eb6469a4a8901469a5e5939000f', 'Chrome', '信息添加成功', '3', '169.254.254.54', '2014-06-14 20:33:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('297e7eb6469a4a8901469a5ef9c80012', 'Chrome', '信息添加成功', '3', '169.254.254.54', '2014-06-14 20:34:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('297e7eb6469a5fcc01469a60c51e0001', 'Chrome', '用户: admin[信息部]登录成功', '1', '169.254.254.54', '2014-06-14 20:36:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('297e7eb6469a5fcc01469a6229a40002', 'Chrome', '用户: admin[信息部]登录成功', '1', '169.254.254.54', '2014-06-14 20:37:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('297e7eb6469a728901469a7315830000', 'Chrome', '用户: admin[信息部]登录成功', '1', '169.254.254.54', '2014-06-14 20:56:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('297e7eb6469a9a0f01469a9a79210000', 'Chrome', '用户: admin[信息部]登录成功', '1', '169.254.254.54', '2014-06-14 21:39:13', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('297e7eb6469a9a0f01469a9b5fe10002', 'Chrome', '信息更新成功', '5', '169.254.254.54', '2014-06-14 21:40:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('297e7eb6469a9a0f01469a9bcd080004', 'Chrome', '信息更新成功', '5', '169.254.254.54', '2014-06-14 21:40:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('297e7eb6469ad01a01469ad0915d0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '169.254.254.54', '2014-06-14 22:38:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d5fbb46014d5fbffa8a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '172.17.1.154', '2015-05-17 10:42:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d5fd051014d5fd0e54f0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '172.17.1.154', '2015-05-17 11:00:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d5fd051014d5fd49ec30005', 'Chrome', '修改关文本模板成功！', '5', '172.17.1.154', '2015-05-17 11:04:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d5fd051014d5fd535b60009', 'Chrome', '同步菜单信息数据成功！', '4', '172.17.1.154', '2015-05-17 11:05:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d5fd901014d5fdc606e0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '172.17.1.154', '2015-05-17 11:13:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d65976a6c002c', 'Firefox', '用户: admin[信息部]登录成功', '1', '172.17.1.154', '2015-05-18 13:55:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d659c22d9002d', 'Firefox', '删除信息数据成功！', '4', '172.17.1.154', '2015-05-18 14:00:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d659c2f44002e', 'Firefox', '删除信息数据成功！', '4', '172.17.1.154', '2015-05-18 14:00:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d65a3197c0030', 'Firefox', '修改关文本模板成功！', '5', '172.17.1.154', '2015-05-18 14:08:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d65a39ff90031', 'Firefox', '修改关文本模板成功！', '5', '172.17.1.154', '2015-05-18 14:08:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d65a3ef5e0032', 'Firefox', '微信公众帐号信息更新成功', '5', '172.17.1.154', '2015-05-18 14:09:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d65ac09af0036', 'Firefox', '修改关文本模板成功！', '5', '172.17.1.154', '2015-05-18 14:18:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d65adf0d9003a', 'Firefox', '修改关文本模板成功！', '5', '172.17.1.154', '2015-05-18 14:20:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d65af0cf9003e', 'Firefox', '修改关文本模板成功！', '5', '172.17.1.154', '2015-05-18 14:21:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d65b1e4280042', 'Firefox', '修改关文本模板成功！', '5', '172.17.1.154', '2015-05-18 14:24:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d65b357e90046', 'Firefox', '修改关文本模板成功！', '5', '172.17.1.154', '2015-05-18 14:26:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d65b5abfe0071', 'Firefox', '用户admin已退出', '2', '172.17.1.154', '2015-05-18 14:28:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d65b5ea430072', 'Firefox', '用户: admin[信息部]登录成功', '1', '172.17.1.154', '2015-05-18 14:28:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d65e3716a007d', 'Firefox', '用户: admin[信息部]登录成功', '1', '172.17.1.154', '2015-05-18 15:18:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d65e6dfab007e', 'Firefox', '更新更多功能>>的菜单信息信息成功！', '5', '172.17.1.154', '2015-05-18 15:22:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d65ec3acd007f', 'Firefox', '更新兑奖入口的菜单信息信息成功！', '5', '172.17.1.154', '2015-05-18 15:28:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d65ec68f80080', 'Firefox', '更新联系我们的菜单信息信息成功！', '5', '172.17.1.154', '2015-05-18 15:28:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d65efa4070082', 'Firefox', '更新竞选投票PK的菜单信息信息成功！', '5', '172.17.1.154', '2015-05-18 15:31:53', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d65f2f7810083', 'Firefox', '更新捷微微信管家的菜单信息信息成功！', '5', '172.17.1.154', '2015-05-18 15:35:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d65f9e31d0084', 'Firefox', '删除BPM开发平台菜单信息数据', '4', '172.17.1.154', '2015-05-18 15:43:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d65fa19840085', 'Firefox', '同步菜单信息数据失败！错误码为：40027错误信息为：invalid sub button url size', '4', '172.17.1.154', '2015-05-18 15:43:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d65fa48ca0086', 'Firefox', '同步菜单信息数据失败！错误码为：40027错误信息为：invalid sub button url size', '4', '172.17.1.154', '2015-05-18 15:43:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d65fa7e8c0087', 'Firefox', '更新联系我们的菜单信息信息成功！', '5', '172.17.1.154', '2015-05-18 15:43:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d65faa7380088', 'Firefox', '更新微官网的菜单信息信息成功！', '5', '172.17.1.154', '2015-05-18 15:43:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d65fac02c0089', 'Firefox', '更新微留言的菜单信息信息成功！', '5', '172.17.1.154', '2015-05-18 15:44:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d65fac79f008a', 'Firefox', '同步菜单信息数据成功！', '4', '172.17.1.154', '2015-05-18 15:44:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d6600e5e2008b', 'Firefox', '删除高级功能菜单信息数据', '4', '172.17.1.154', '2015-05-18 15:50:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d66012012008c', 'Firefox', '更新基础功能的菜单信息信息成功！', '5', '172.17.1.154', '2015-05-18 15:50:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d66012861008d', 'Firefox', '同步菜单信息数据成功！', '4', '172.17.1.154', '2015-05-18 15:51:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d660444860090', 'Firefox', '同步菜单信息数据成功！', '4', '172.17.1.154', '2015-05-18 15:54:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d660559f90094', 'Firefox', '同步菜单信息数据成功！', '4', '172.17.1.154', '2015-05-18 15:55:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d6605b2570095', 'Firefox', '同步菜单信息数据成功！', '4', '172.17.1.154', '2015-05-18 15:55:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d66087687009a', 'Firefox', '更新营销工具的菜单信息信息成功！', '5', '172.17.1.154', '2015-05-18 15:59:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d6608b046009b', 'Firefox', '更新刮刮乐的菜单信息信息成功！', '5', '172.17.1.154', '2015-05-18 15:59:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d6608f7aa009c', 'Firefox', '更新微投票的菜单信息信息成功！', '5', '172.17.1.154', '2015-05-18 15:59:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d66091ae2009d', 'Firefox', '删除调研问卷菜单信息数据', '4', '172.17.1.154', '2015-05-18 15:59:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d66093247009e', 'Firefox', '删除微相册菜单信息数据', '4', '172.17.1.154', '2015-05-18 15:59:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d660947ad009f', 'Firefox', '同步菜单信息数据成功！', '4', '172.17.1.154', '2015-05-18 15:59:53', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d660b194100a0', 'Firefox', '同步菜单信息数据成功！', '4', '172.17.1.154', '2015-05-18 16:01:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d6612c9f400a8', 'Firefox', '更新联系我们的菜单信息信息成功！', '5', '172.17.1.154', '2015-05-18 16:10:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d6612f1c500a9', 'Firefox', '更新关于公司的菜单信息信息成功！', '5', '172.17.1.154', '2015-05-18 16:10:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d6613080400aa', 'Firefox', '同步菜单信息数据成功！', '4', '172.17.1.154', '2015-05-18 16:10:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d6613b23500ab', 'Firefox', '同步菜单信息数据成功！', '4', '172.17.1.154', '2015-05-18 16:11:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d6613dc2e00ac', 'Firefox', '更新联系我们的菜单信息信息成功！', '5', '172.17.1.154', '2015-05-18 16:11:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d6613e45000ad', 'Firefox', '同步菜单信息数据成功！', '4', '172.17.1.154', '2015-05-18 16:11:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d6616e75800b2', 'Firefox', '更新微官网的菜单信息信息成功！', '5', '172.17.1.154', '2015-05-18 16:14:46', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d661759a300b3', 'Firefox', '更新微官网的菜单信息信息成功！', '5', '172.17.1.154', '2015-05-18 16:15:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d6617626b00b4', 'Firefox', '同步菜单信息数据成功！', '4', '172.17.1.154', '2015-05-18 16:15:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d661c187d00bd', 'Firefox', '更新关于公司的菜单信息信息成功！', '5', '172.17.1.154', '2015-05-18 16:20:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d661c36cc00be', 'Firefox', '更新微留言的菜单信息信息成功！', '5', '172.17.1.154', '2015-05-18 16:20:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d663dcc8d00c0', 'Firefox', '用户: admin[信息部]登录成功', '1', '172.17.1.154', '2015-05-18 16:57:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d6642001f00c1', 'Firefox', '更新关于公司的菜单信息信息成功！', '5', '172.17.1.154', '2015-05-18 17:01:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d66424c0e00c2', 'Firefox', '同步菜单信息数据成功！', '4', '172.17.1.154', '2015-05-18 17:02:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d60d054014d6645f53e00c7', 'Firefox', '同步菜单信息数据成功！', '4', '172.17.1.154', '2015-05-18 17:06:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d6670ec014d6671a4500003', 'Firefox', '用户: admin[信息部]登录成功', '1', '172.17.1.154', '2015-05-18 17:53:53', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d667395014d69b1462d0005', 'Firefox', '用户: admin[信息部]登录成功', '1', '172.17.1.154', '2015-05-19 09:02:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d667395014d69b9bd180006', 'Firefox', '用户: admin[信息部]登录成功', '1', '172.17.1.154', '2015-05-19 09:11:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d69d33d014d69de16290000', 'Firefox', '用户: admin[信息部]登录成功', '1', '172.17.1.154', '2015-05-19 09:51:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d69f09a014d69f18f1f0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '172.17.1.154', '2015-05-19 10:12:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d6a3632014d6a3794430000', 'Firefox', '用户: admin[信息部]登录成功', '1', '172.17.1.154', '2015-05-19 11:28:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d6a3b09014d6a4b11b10000', 'Firefox', '用户: admin[信息部]登录成功', '1', '172.17.1.154', '2015-05-19 11:50:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c91811a4d6aa2d2014d6aa900fb0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '172.17.1.154', '2015-05-19 13:32:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9182b94d6b74a9014d6b779ebe0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '172.17.2.57', '2015-05-19 17:18:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9182b94d6b83ee014d6b857ccb0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '172.17.2.57', '2015-05-19 17:33:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9182b94d6b887f014d6efe03910001', 'Firefox', '用户: admin[信息部]登录成功', '1', '172.17.2.57', '2015-05-20 09:44:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9182b94d6f67a1014d6f69e5230000', 'Firefox', '用户: admin[信息部]登录成功', '1', '172.17.2.57', '2015-05-20 11:42:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9182b94d6f6ab2014d6f6ca6e70000', 'Firefox', '用户: admin[信息部]登录成功', '1', '172.17.2.57', '2015-05-20 11:45:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9182b94d6f6ab2014d6f6d11a40001', 'Firefox', '更新微留言的菜单信息信息成功！', '5', '172.17.2.57', '2015-05-20 11:45:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9182b94d6f6dbf014d6f6e3d2e0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '172.17.2.57', '2015-05-20 11:46:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9182b94d6f6dbf014d6f6e95540001', 'Firefox', '同步菜单信息数据成功！', '4', '172.17.2.57', '2015-05-20 11:47:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9182b94d6f7062014d6f70c1ba000e', 'Safari', '留言信息添加成功', '3', '172.17.2.57', '2015-05-20 11:49:30', '1', null);
INSERT INTO t_s_log VALUES ('2c9182b94d6f7062014d6f70c1ba000f', 'Safari', '留言信息添加成功', '3', '172.17.2.57', '2015-05-20 11:49:30', '1', null);
INSERT INTO t_s_log VALUES ('2c9182b94d6f7062014d6f70c1ba0010', 'Safari', '留言信息添加成功', '3', '172.17.2.57', '2015-05-20 11:49:30', '1', null);
INSERT INTO t_s_log VALUES ('2c9182b94d6f7062014d6f70c1ba0011', 'Safari', '留言信息添加成功', '3', '172.17.2.57', '2015-05-20 11:49:30', '1', null);
INSERT INTO t_s_log VALUES ('2c9182b94d6f7062014d6f70c1ba0012', 'Safari', '留言信息添加成功', '3', '172.17.2.57', '2015-05-20 11:49:30', '1', null);
INSERT INTO t_s_log VALUES ('2c9182b94d6f7062014d6f70c2080013', 'Safari', '留言信息添加成功', '3', '172.17.2.57', '2015-05-20 11:49:30', '1', null);
INSERT INTO t_s_log VALUES ('2c9182b94d6f7062014d6f70c20e0014', 'Safari', '留言信息添加成功', '3', '172.17.2.57', '2015-05-20 11:49:30', '1', null);
INSERT INTO t_s_log VALUES ('2c9182b94d6f7062014d6f70c2170015', 'Safari', '留言信息添加成功', '3', '172.17.2.57', '2015-05-20 11:49:30', '1', null);
INSERT INTO t_s_log VALUES ('2c9182b94d6f7062014d6f70c2180016', 'Safari', '留言信息添加成功', '3', '172.17.2.57', '2015-05-20 11:49:30', '1', null);
INSERT INTO t_s_log VALUES ('2c9182b94d6f7062014d6f70c26a0017', 'Safari', '留言信息添加成功', '3', '172.17.2.57', '2015-05-20 11:49:30', '1', null);
INSERT INTO t_s_log VALUES ('2c9182b94d6f7062014d6f70c26a0018', 'Safari', '留言信息添加成功', '3', '172.17.2.57', '2015-05-20 11:49:30', '1', null);
INSERT INTO t_s_log VALUES ('2c9182b94d6f7062014d6f70c26c0019', 'Safari', '留言信息添加成功', '3', '172.17.2.57', '2015-05-20 11:49:30', '1', null);
INSERT INTO t_s_log VALUES ('2c9182b94d6f7062014d6f70c26d001a', 'Safari', '留言信息添加成功', '3', '172.17.2.57', '2015-05-20 11:49:30', '1', null);
INSERT INTO t_s_log VALUES ('2c9182b94d6f7062014d6f70c271001b', 'Safari', '留言信息添加成功', '3', '172.17.2.57', '2015-05-20 11:49:30', '1', null);
INSERT INTO t_s_log VALUES ('2c9182b94d6f7062014d6f70c65c001d', 'Safari', '留言信息添加成功', '3', '172.17.2.57', '2015-05-20 11:49:31', '1', null);
INSERT INTO t_s_log VALUES ('2c9182b94d6f7062014d6f70c6c50024', 'Safari', '留言信息添加成功', '3', '172.17.2.57', '2015-05-20 11:49:31', '1', null);
INSERT INTO t_s_log VALUES ('2c9182b94d6f7062014d6f70c6c50025', 'Safari', '留言信息添加成功', '3', '172.17.2.57', '2015-05-20 11:49:31', '1', null);
INSERT INTO t_s_log VALUES ('2c9182b94d6f7062014d6f70c7180026', 'Safari', '留言信息添加成功', '3', '172.17.2.57', '2015-05-20 11:49:31', '1', null);
INSERT INTO t_s_log VALUES ('2c9182b94d6f7062014d6f70c7190027', 'Safari', '留言信息添加成功', '3', '172.17.2.57', '2015-05-20 11:49:31', '1', null);
INSERT INTO t_s_log VALUES ('2c9182b94d6f7062014d6f70c7190028', 'Safari', '留言信息添加成功', '3', '172.17.2.57', '2015-05-20 11:49:31', '1', null);
INSERT INTO t_s_log VALUES ('2c9182b94d6f7062014d6f70c7190029', 'Safari', '留言信息添加成功', '3', '172.17.2.57', '2015-05-20 11:49:31', '1', null);
INSERT INTO t_s_log VALUES ('2c9182b94d6f7062014d6f70c789002b', 'Safari', '留言信息添加成功', '3', '172.17.2.57', '2015-05-20 11:49:31', '1', null);
INSERT INTO t_s_log VALUES ('2c9182b94d6f7062014d6f70c7f4002d', 'Safari', '留言信息添加成功', '3', '172.17.2.57', '2015-05-20 11:49:31', '1', null);
INSERT INTO t_s_log VALUES ('2c9182b94d6f7062014d6f70c8b00032', 'Safari', '留言信息添加成功', '3', '172.17.2.57', '2015-05-20 11:49:31', '1', null);
INSERT INTO t_s_log VALUES ('2c9182b94d6f7062014d6f70c8b40033', 'Safari', '留言信息添加成功', '3', '172.17.2.57', '2015-05-20 11:49:31', '1', null);
INSERT INTO t_s_log VALUES ('2c9182b94d6f7062014d6f70c8b50034', 'Safari', '留言信息添加成功', '3', '172.17.2.57', '2015-05-20 11:49:31', '1', null);
INSERT INTO t_s_log VALUES ('2c9182b94d6f7062014d6f70c8b60035', 'Safari', '留言信息添加成功', '3', '172.17.2.57', '2015-05-20 11:49:31', '1', null);
INSERT INTO t_s_log VALUES ('2c9182b94d6f7062014d6f73daf10037', 'Safari', '留言信息添加成功', '3', '172.17.2.57', '2015-05-20 11:52:53', '1', null);
INSERT INTO t_s_log VALUES ('2c9182b94d6f7062014d6f74220b0039', 'Safari', '留言信息添加成功', '3', '172.17.2.57', '2015-05-20 11:53:11', '1', null);
INSERT INTO t_s_log VALUES ('2c9182b94d6f7062014d6f767852003a', 'Firefox', '用户: admin[信息部]登录成功', '1', '172.17.2.57', '2015-05-20 11:55:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9182b94d6f7cc7014d6fd2114f0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '172.17.2.57', '2015-05-20 13:35:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9182b94d6f7cc7014d7000151c0004', 'Chrome', '用户: admin[信息部]登录成功', '1', '172.17.2.57', '2015-05-20 14:26:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9182b94d6f7cc7014d7000d4e40005', 'Chrome', '微信公众帐号信息更新成功', '5', '172.17.2.57', '2015-05-20 14:26:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9182b94d6f7cc7014d7007fc970007', 'Chrome', '更新公司产品的菜单信息信息成功！', '5', '172.17.2.57', '2015-05-20 14:34:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9182b94d6f7cc7014d700c00260008', 'Chrome', '同步菜单信息数据成功！', '4', '172.17.2.57', '2015-05-20 14:39:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d7090ee014d709302180000', 'Chrome', '用户: admin[信息部]登录成功', '1', '172.17.3.192', '2015-05-20 17:06:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d7090ee014d70937f1d0001', 'Chrome', '更新关于公司的菜单信息信息成功！', '5', '172.17.3.192', '2015-05-20 17:07:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d7090ee014d709389af0002', 'Chrome', '同步菜单信息数据成功！', '4', '172.17.3.192', '2015-05-20 17:07:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d7090ee014d7097984e0009', 'Chrome', '同步菜单信息数据成功！', '4', '172.17.3.192', '2015-05-20 17:11:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d7090ee014d7097a4d0000a', 'Chrome', '同步菜单信息数据成功！', '4', '172.17.3.192', '2015-05-20 17:11:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d70b41a014d70b852af0002', 'Safari', '留言信息添加成功', '3', '172.17.3.192', '2015-05-20 17:47:17', '1', null);
INSERT INTO t_s_log VALUES ('2c9183404d70b41a014d7407e7af0015', 'Firefox', '用户: admin[信息部]登录成功', '1', '172.17.3.192', '2015-05-21 09:13:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d70b41a014d7414bf280017', 'Firefox', '更新公司动态的菜单信息信息成功！', '5', '172.17.3.192', '2015-05-21 09:27:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d70b41a014d74173e0d0019', 'Firefox', '微信单图消息更新成功', '5', '172.17.3.192', '2015-05-21 09:29:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d70b41a014d74179aee001a', 'Firefox', '更新公司动态的菜单信息信息成功！', '5', '172.17.3.192', '2015-05-21 09:30:13', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d70b41a014d7417a462001b', 'Firefox', '同步菜单信息数据成功！', '4', '172.17.3.192', '2015-05-21 09:30:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d70b41a014d741e0e78001e', 'Firefox', '修改图文模板成功！', '5', '172.17.3.192', '2015-05-21 09:37:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d70b41a014d741e5ee0001f', 'Firefox', '同步菜单信息数据成功！', '4', '172.17.3.192', '2015-05-21 09:37:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d70b41a014d742cd5860025', 'Chrome', '用户: admin[信息部]登录成功', '1', '172.17.3.192', '2015-05-21 09:53:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d744024014d7444ccda0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '172.17.3.192', '2015-05-21 10:19:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d744024014d744730900004', 'Chrome', '微信单图消息更新成功', '5', '172.17.3.192', '2015-05-21 10:22:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d744966014d744a851c0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '172.17.3.192', '2015-05-21 10:25:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d74599c014d745aab6b0001', 'Chrome', '用户: admin[信息部]登录成功', '1', '172.17.3.192', '2015-05-21 10:43:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d74599c014d745b63440002', 'Chrome', '修改图文模板成功！', '5', '172.17.3.192', '2015-05-21 10:44:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d74599c014d745ce0a80003', 'Chrome', '更新公司动态的菜单信息信息成功！', '5', '172.17.3.192', '2015-05-21 10:45:53', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d745d85014d745e198c0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '172.17.3.192', '2015-05-21 10:47:13', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d745d85014d745f03190001', 'Chrome', '同步菜单信息数据成功！', '4', '172.17.3.192', '2015-05-21 10:48:13', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d745d85014d74661c4a0003', 'Chrome', '更新公司动态的菜单信息信息成功！', '5', '172.17.3.192', '2015-05-21 10:55:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d7466c1014d7467470e0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '172.17.3.192', '2015-05-21 10:57:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d7466c1014d7467cd7d0001', 'Chrome', '修改图文模板成功！', '5', '172.17.3.192', '2015-05-21 10:57:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d7466c1014d746a151d0002', 'Chrome', '微信单图消息更新成功', '5', '172.17.3.192', '2015-05-21 11:00:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d7466c1014d746ab5d00003', 'Chrome', '删除信息数据成功', '4', '172.17.3.192', '2015-05-21 11:00:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d7466c1014d746ab5fc0004', 'Chrome', '删除信息数据成功', '4', '172.17.3.192', '2015-05-21 11:01:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d7466c1014d746ab61a0005', 'Chrome', '删除信息数据成功', '4', '172.17.3.192', '2015-05-21 11:01:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d746b62014d746ea3080000', 'Chrome', '用户: admin[信息部]登录成功', '1', '172.17.3.192', '2015-05-21 11:05:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d746b62014d7474bc3a0003', 'Chrome', '更新公司服务的菜单信息信息成功！', '5', '172.17.3.192', '2015-05-21 11:11:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d747549014d74762a120000', 'Chrome', '用户: admin[信息部]登录成功', '1', '172.17.3.192', '2015-05-21 11:13:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d747549014d747677a80001', 'Chrome', '同步菜单信息数据成功！', '4', '172.17.3.192', '2015-05-21 11:13:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d747e5d014d74f4462b0022', 'Chrome', '用户: admin[信息部]登录成功', '1', '172.17.3.192', '2015-05-21 13:31:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d74f79b014d755d22ce0002', 'Chrome', '用户: admin[信息部]登录成功', '1', '172.17.3.192', '2015-05-21 15:25:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d74f79b014d75e861320003', 'Chrome', '用户: admin[信息部]登录成功', '1', '172.17.3.192', '2015-05-21 17:57:53', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d74f79b014d75ea9ddc0008', 'Safari', '留言信息添加成功', '3', '172.17.3.192', '2015-05-21 18:00:19', '1', null);
INSERT INTO t_s_log VALUES ('2c9183404d74f79b014d7924fc920009', 'Firefox', '用户: admin[信息部]登录成功', '1', '172.17.3.192', '2015-05-22 09:02:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d74f79b014d792aad01000c', 'Firefox', '微信单图消息添加成功', '3', '172.17.3.192', '2015-05-22 09:09:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d7934b4014d793664a90000', 'Firefox', '用户: admin[信息部]登录成功', '1', '172.17.3.192', '2015-05-22 09:21:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d7938da014d793a05aa0006', 'Firefox', '用户: admin[信息部]登录成功', '1', '172.17.3.192', '2015-05-22 09:25:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d7938da014d793a42810007', 'Firefox', '微信单图消息删除成功', '4', '172.17.3.192', '2015-05-22 09:26:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d7938da014d793beb93000b', 'Firefox', '微信单图消息添加成功', '3', '172.17.3.192', '2015-05-22 09:27:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d7938da014d793e3460000f', 'Firefox', '微信单图消息添加成功', '3', '172.17.3.192', '2015-05-22 09:30:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d7938da014d793f2abb0012', 'Firefox', '微信单图消息更新成功', '5', '172.17.3.192', '2015-05-22 09:31:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d7938da014d793f35360013', 'Firefox', '微信单图消息更新成功', '5', '172.17.3.192', '2015-05-22 09:31:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d7940a0014d7941844f0003', 'Firefox', '用户: admin[信息部]登录成功', '1', '172.17.3.192', '2015-05-22 09:34:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d944223014d9442c0d00000', 'Firefox', '用户: admin[信息部]登录成功', '1', '172.17.3.192', '2015-05-27 15:25:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d944223014d944308c60001', 'Firefox', '同步菜单信息数据成功！', '4', '172.17.3.192', '2015-05-27 15:25:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d944223014d9445afbd0004', 'Firefox', '同步菜单信息数据成功！', '4', '172.17.3.192', '2015-05-27 15:28:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d944223014d94ac482e0007', 'Firefox', '用户: admin[信息部]登录成功', '1', '172.17.3.192', '2015-05-27 17:20:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d944223014d9592bf3f0013', 'Chrome', '用户: admin[信息部]登录成功', '1', '172.17.3.192', '2015-05-27 21:32:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183404d944223014d9eee50f80017', 'Firefox', '用户: admin[信息部]登录成功', '1', '172.17.3.192', '2015-05-29 17:08:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183534d702826014d7031a9d70000', 'Firefox', '用户: admin[信息部]登录成功', '1', '172.17.3.211', '2015-05-20 15:20:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183534d702826014d7033245b0001', 'Chrome', '用户: admin[信息部]登录成功', '1', '172.17.3.211', '2015-05-20 15:21:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183534d70353e014d7035bd020000', 'Chrome', '用户: admin[信息部]登录成功', '1', '172.17.3.211', '2015-05-20 15:24:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183534d70353e014d7035fe880001', 'Chrome', '更新关于公司的菜单信息信息成功！', '5', '172.17.3.211', '2015-05-20 15:24:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183534d70353e014d70360cb60002', 'Chrome', '同步菜单信息数据成功！', '4', '172.17.3.211', '2015-05-20 15:24:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183534d703aa3014d703d82540009', 'Chrome', '用户: admin[信息部]登录成功', '1', '172.17.3.211', '2015-05-20 15:33:08', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183534d703aa3014d703dfa40000a', 'Chrome', '更新关于公司的菜单信息信息成功！', '5', '172.17.3.211', '2015-05-20 15:33:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183534d704299014d704a38c20000', 'Firefox', '用户: admin[信息部]登录成功', '1', '172.17.3.211', '2015-05-20 15:47:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183534d704ccf014d7050c2210000', 'Chrome', '用户: admin[信息部]登录成功', '1', '172.17.3.211', '2015-05-20 15:54:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183534d704ccf014d705150090001', 'Chrome', '更新关于公司的菜单信息信息成功！', '5', '172.17.3.211', '2015-05-20 15:54:46', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183534d704ccf014d7051dcb10002', 'Chrome', '更新关于公司的菜单信息信息成功！', '5', '172.17.3.211', '2015-05-20 15:55:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183534d704ccf014d7051ea0d0003', 'Chrome', '同步菜单信息数据成功！', '4', '172.17.3.211', '2015-05-20 15:55:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('2c9183534d704ccf014d7065dd81000e', 'Chrome', '用户: admin[信息部]登录成功', '1', '172.17.3.211', '2015-05-20 16:17:13', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e343b01486e3739500000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.8', '2014-09-13 16:53:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e343b01486e3a48330004', 'Firefox', '用户admin已退出', '2', '192.168.0.8', '2014-09-13 16:56:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e343b01486e3a69d20005', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.8', '2014-09-13 16:56:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e343b01486e3f9d55000e', 'Firefox', '创建成功', '3', '192.168.0.8', '2014-09-13 17:02:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e343b01486e4063eb000f', 'Firefox', '修改成功', '5', '192.168.0.8', '2014-09-13 17:03:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e343b01486e422f960011', 'Firefox', '类型分组: 活动类型被添加成功', '3', '192.168.0.8', '2014-09-13 17:05:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e343b01486e42a9370013', 'Firefox', '类型: 结束被添加成功', '3', '192.168.0.8', '2014-09-13 17:05:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e343b01486e42d44a0015', 'Firefox', '类型: 活动被添加成功', '3', '192.168.0.8', '2014-09-13 17:05:46', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e343b01486e54ca9e0016', 'Firefox', '修改成功', '5', '192.168.0.8', '2014-09-13 17:25:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e343b01486e55edc80017', 'Firefox', '修改成功', '5', '192.168.0.8', '2014-09-13 17:26:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e343b01486e5627fa0018', 'Firefox', '修改成功', '5', '192.168.0.8', '2014-09-13 17:26:53', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e6c7101486e6d2ae20000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.8', '2014-09-13 17:52:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e6c7101486e80ff870014', 'Firefox', '创建成功', '3', '192.168.0.8', '2014-09-13 18:13:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e6c7101486e82510a0015', 'Firefox', '删除成功', '4', '192.168.0.8', '2014-09-13 18:15:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e6c7101486e8c0ed20016', 'Firefox', '修改成功', '5', '192.168.0.8', '2014-09-13 18:25:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e8df201486e8fa5440000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.8', '2014-09-13 18:29:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e8df201486e8fa70c0001', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.8', '2014-09-13 18:29:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e8df201486e942fc60003', 'Firefox', '权限: 微信活动被添加成功', '3', '192.168.0.8', '2014-09-13 18:34:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e8df201486e94f1170005', 'Firefox', '权限: 活动管理被添加成功', '3', '192.168.0.8', '2014-09-13 18:35:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e8df201486e95ce820007', 'Firefox', '权限: 中奖管理被添加成功', '3', '192.168.0.8', '2014-09-13 18:36:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e8df201486e961645000b', 'Firefox', '用户admin已退出', '2', '192.168.0.8', '2014-09-13 18:36:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e970101486e977ee80000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.8', '2014-09-13 18:38:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e970101486eaf03330001', 'Firefox', '活动表删除成功', '4', '192.168.0.8', '2014-09-13 19:03:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e970101486eaf1ab40002', 'Firefox', '活动表删除成功', '4', '192.168.0.8', '2014-09-13 19:04:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e970101486eaf1b030003', 'Firefox', '活动表删除成功', '4', '192.168.0.8', '2014-09-13 19:04:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e970101486eafea860004', 'Firefox', '活动表更新成功', '5', '192.168.0.8', '2014-09-13 19:04:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e970101486eb1640b0005', 'Firefox', '活动表更新成功', '5', '192.168.0.8', '2014-09-13 19:06:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e970101486eb178ad0006', 'Firefox', '活动表更新成功', '5', '192.168.0.8', '2014-09-13 19:06:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e970101486eb1bad20007', 'Firefox', '活动表更新成功', '5', '192.168.0.8', '2014-09-13 19:06:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e970101486eb403320009', 'Firefox', '活动表添加成功', '3', '192.168.0.8', '2014-09-13 19:09:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e970101486eb42a9d000a', 'Firefox', '活动表更新成功', '5', '192.168.0.8', '2014-09-13 19:09:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e970101486eb446ee000c', 'Firefox', '活动表添加成功', '3', '192.168.0.8', '2014-09-13 19:09:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e970101486eb4b2bd000e', 'Firefox', '活动表添加成功', '3', '192.168.0.8', '2014-09-13 19:10:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e970101486eb4d061000f', 'Firefox', '活动表更新成功', '5', '192.168.0.8', '2014-09-13 19:10:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e970101486eb4e6e30010', 'Firefox', '活动表删除成功', '4', '192.168.0.8', '2014-09-13 19:10:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e970101486eb506a10012', 'Firefox', '活动表添加成功', '3', '192.168.0.8', '2014-09-13 19:10:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e970101486eb663f30013', 'Firefox', '活动表删除成功', '4', '192.168.0.8', '2014-09-13 19:11:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e970101486eb664400014', 'Firefox', '活动表删除成功', '4', '192.168.0.8', '2014-09-13 19:12:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e970101486eb664970015', 'Firefox', '活动表删除成功', '4', '192.168.0.8', '2014-09-13 19:12:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e970101486eb9f6160017', 'Firefox', '类型分组: 奖品级别被添加成功', '3', '192.168.0.8', '2014-09-13 19:15:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e970101486eba4cec0019', 'Firefox', '类型分组: 兑奖状态被添加成功', '3', '192.168.0.8', '2014-09-13 19:16:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e970101486ebc03f8001b', 'Firefox', '类型分组: 社区平台类型被添加成功', '3', '192.168.0.8', '2014-09-13 19:18:08', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e970101486ebc5685001d', 'Firefox', '类型: 小于200被添加成功', '3', '192.168.0.8', '2014-09-13 19:18:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e970101486ebc833d001f', 'Firefox', '类型: 大于200被添加成功', '3', '192.168.0.8', '2014-09-13 19:18:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e970101486ebcd9350021', 'Firefox', '类型: 未兑奖被添加成功', '3', '192.168.0.8', '2014-09-13 19:19:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e970101486ebd1a040023', 'Firefox', '类型: 已兑奖被添加成功', '3', '192.168.0.8', '2014-09-13 19:19:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e970101486f1329fc0024', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.8', '2014-09-13 20:53:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e970101486f14064f0026', 'Firefox', '类型: 微博被添加成功', '3', '192.168.0.8', '2014-09-13 20:54:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e970101486f1451990028', 'Firefox', '类型: 贴吧被添加成功', '3', '192.168.0.8', '2014-09-13 20:54:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e970101486f14936a002a', 'Firefox', '类型: QQ空间被添加成功', '3', '192.168.0.8', '2014-09-13 20:54:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486e970101486f14c158002c', 'Firefox', '类型: 微信被添加成功', '3', '192.168.0.8', '2014-09-13 20:55:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f3a1b090000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.8', '2014-09-13 21:35:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f3a1cbd0001', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.8', '2014-09-13 21:35:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f5bbd880002', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:12:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f5bbddb0003', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:12:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f5bbe160004', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:12:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f5bbe500005', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:12:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f5bbe8a0006', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:12:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f5bbebc0007', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:12:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f5bbef70008', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:12:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f5bbf470009', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:12:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f5bbf86000a', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:12:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f5bbfd7000b', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:12:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f5bceeb000c', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:12:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f5bcff4000d', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:12:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f5bd026000e', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:12:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f5bd058000f', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:12:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f5bd0920010', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:12:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f5bd0c40011', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:12:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f5bd1130012', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:12:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f611eac0013', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:18:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f611ed60014', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:18:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f611f000015', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:18:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f611f320016', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:18:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f611f640017', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:18:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f611f950018', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:18:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f611fc90019', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:18:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f611ffa001a', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:18:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f61202c001b', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:18:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f612055001c', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:18:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f612b23001d', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:18:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f612b4d001e', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:18:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f612b7f001f', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:18:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f612bb20020', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:18:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f612be30021', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:18:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f612c0d0022', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:18:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f612c3f0023', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:18:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f612c710024', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:18:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f612c9b0025', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:18:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f612ccd0026', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:18:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f631c350027', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:20:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f631c930028', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:20:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f631cc50029', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:20:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f631cf7002a', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:20:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f631d29002b', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:20:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f631d5b002c', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:20:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f631d8d002d', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:20:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f631dbf002e', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:20:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f631e23002f', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:20:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f631e4d0030', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:20:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f6adb260039', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:29:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f6adb6f003a', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:29:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f6adb99003b', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:29:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f6adbcb003c', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:29:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f6adbf4003d', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:29:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f6adc29003e', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:29:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f6adc78003f', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:29:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f6adcb20040', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:29:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f6e290f0045', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:32:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f6e29620046', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:32:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f6e299c0047', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:32:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f6e29ce0048', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:32:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f7042110055', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:35:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f7042410056', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:35:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f7042780057', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:35:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f7042ae0058', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:35:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f7042e00059', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:35:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f704317005a', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:35:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f70434c005b', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:35:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f704382005c', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:35:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f7043bd005d', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:35:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f7043f3005e', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:35:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f70522f005f', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:35:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f7052600060', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:35:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f71d90c0065', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:36:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f71d9350066', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:36:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f71d9680067', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:36:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f71d99a0068', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:36:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f735767006d', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:38:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f735790006e', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:38:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f7357ba006f', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:38:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f389501486f7357e30070', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 22:38:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f85fe01486f86a07a0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.8', '2014-09-13 22:59:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f85fe01486f88e96e0009', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:01:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f85fe01486f88e9a7000a', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:01:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f85fe01486f88e9e0000b', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:01:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f85fe01486f88ea0a000c', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:01:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f85fe01486f88ea67000d', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:01:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f85fe01486f88ea99000e', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:01:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f85fe01486f88eae1000f', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:01:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f85fe01486f88eb1b0010', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:01:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486f8b82090000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.8', '2014-09-13 23:04:46', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486f8b847e0001', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.8', '2014-09-13 23:04:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486f90e95b0009', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:10:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486f90e98c000a', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:10:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486f90e9e0000b', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:10:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486f90ea1a000c', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:10:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486f90eafa000d', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:10:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486f90eb33000e', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:10:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486f90eb65000f', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:10:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486f92843d0017', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:12:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486f9284980018', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:12:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486f9284ca0019', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:12:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486f9284fc001a', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:12:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486f92852e001b', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:12:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486f928568001c', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:12:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486f92859a001d', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:12:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486f9746230022', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:17:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486f97467e0023', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:17:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486f9746b00024', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:17:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486f9746e20025', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:17:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486f978644002a', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:17:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486f97867c002b', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:17:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486f978847002c', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:17:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486f978879002d', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:17:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486f99743f0032', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:20:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486f99746c0033', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:20:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486f9974970034', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:20:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486f9974c80035', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:20:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486f9f9294003a', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:26:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486f9f92bd003b', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:26:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486f9f92e7003c', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:26:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486f9f9321003d', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:26:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486fa4196f0042', 'Firefox', '中奖记录更新成功', '5', '192.168.0.8', '2014-09-13 23:31:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486fa50e4a0044', 'Firefox', '中奖记录添加成功', '3', '192.168.0.8', '2014-09-13 23:32:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486fa51fb30045', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:32:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486fa51fdd0046', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:32:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486fa520270047', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:32:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486fa5205a0048', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:32:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486fa5208c0049', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-13 23:32:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486fc2c06c004e', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-14 00:05:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486fc2c0d7004f', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-14 00:05:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486fc2c10b0050', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-14 00:05:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486f8b1d01486fc2c13c0051', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-14 00:05:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486fd2df01486fd374560000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.8', '2014-09-14 00:23:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486fd2df01486fd964b40001', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-14 00:29:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486fd2df01486fdf0c110002', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-14 00:36:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486fd2df01486fdf0c3a0003', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-14 00:36:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486fd2df01486fdf0c6c0004', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-14 00:36:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486fd2df01486fe1545b0009', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-14 00:38:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486fd2df01486fe1548c000a', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-14 00:38:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486fd2df01486fe154bf000b', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-14 00:38:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486fd2df01486fe154f1000c', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-14 00:38:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486fd2df01486fe241890011', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-14 00:39:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486fd2df01486fe241bb0012', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-14 00:39:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486fd2df01486fe241ef0013', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-14 00:39:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486fd2df01486fe242270014', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-14 00:39:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486fd2df01486fe346370019', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-14 00:40:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486fd2df01486fe3466c001a', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-14 00:40:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486fd2df01486fe346b0001b', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-14 00:40:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486fd2df01486fe346e9001c', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-14 00:40:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486fd2df01486fe4c9c20021', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-14 00:42:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486fd2df01486fe4c9fb0022', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-14 00:42:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486fd2df01486fe4ca250023', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-14 00:42:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486fd2df01486fe4ca570024', 'Firefox', '中奖记录删除成功', '4', '192.168.0.8', '2014-09-14 00:42:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486fd2df01486ffae08b0029', 'Firefox', '活动表更新成功', '5', '192.168.0.8', '2014-09-14 01:06:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088486fd2df01487156f6e0002a', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.8', '2014-09-14 07:26:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288088487194b301487195ff510000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.8', '2014-09-14 08:35:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028808848719a190148719a97c60000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.8', '2014-09-14 08:40:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028808848719a19014871b365a20001', 'Firefox', '活动表更新成功', '5', '192.168.0.8', '2014-09-14 09:07:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028808848719a19014871bc2e430002', 'Firefox', '中奖记录更新成功', '5', '192.168.0.8', '2014-09-14 09:17:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880a945fef8250145fefbd4c20000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.0.41', '2014-05-15 16:24:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880a945ff058c0145ff05c6fd0000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.0.41', '2014-05-15 16:35:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880a945ff058c0145ff08ca8b0001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.41', '2014-05-15 16:38:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880a945ff058c0145ff0b9bea0002', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.0.41', '2014-05-15 16:42:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e447c05cf00147c05d771f0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.100', '2014-08-10 22:40:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e447cffc4b0147cffd0fd60000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.100', '2014-08-13 23:29:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e447cffc4b0147cffd8f670002', 'Chrome', '用户admin已退出', '2', '192.168.0.100', '2014-08-13 23:30:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e447cffc4b0147cffe56590003', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.100', '2014-08-13 23:30:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e447cffc4b0147cffe83ac0004', 'Chrome', '用户admin已退出', '2', '192.168.0.100', '2014-08-13 23:31:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e447cffc4b0147d00190010005', 'Chrome', '用户: 1111[信息部]登录成功', '1', '192.168.0.100', '2014-08-13 23:34:29', '1', '4028bce447cf8bda0147cf9047090006');
INSERT INTO t_s_log VALUES ('402880e447cffc4b0147d00269190008', 'Chrome', '商城地址信息添加成功', '3', '192.168.0.100', '2014-08-13 23:35:24', '1', '4028bce447cf8bda0147cf9047090006');
INSERT INTO t_s_log VALUES ('402880e447cffc4b0147d00289100009', 'Chrome', '设定成功', '4', '192.168.0.100', '2014-08-13 23:35:32', '1', '4028bce447cf8bda0147cf9047090006');
INSERT INTO t_s_log VALUES ('402880e447cffc4b0147d008ad52000b', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.100', '2014-08-13 23:42:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e447cffc4b0147d008e65c000c', 'Chrome', '更新微活动的菜单信息信息成功！', '5', '192.168.0.100', '2014-08-13 23:42:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e447cffc4b0147d01afa4b000d', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.100', '2014-08-14 00:02:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e447d29bc80147d2b28ddf0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.100', '2014-08-14 12:07:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e447d2f1fb0147d2f2aff60000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.100', '2014-08-14 13:17:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e447d2f1fb0147d2f2dc870001', 'Chrome', '用户admin已退出', '2', '192.168.0.100', '2014-08-14 13:17:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e447d2f1fb0147d2f5827e0004', 'Chrome', '用户: scott1添加成功', '3', '192.168.0.100', '2014-08-14 13:20:10', '1', null);
INSERT INTO t_s_log VALUES ('402880e447d2f1fb0147d2f5efcb0005', 'Chrome', '用户: scott1[信息部]登录成功', '1', '192.168.0.100', '2014-08-14 13:20:38', '1', '402880e447d2f1fb0147d2f580d40002');
INSERT INTO t_s_log VALUES ('402880e447d2f1fb0147d2f6af940006', 'Chrome', '用户: scott1[信息部]登录成功', '1', '192.168.0.100', '2014-08-14 13:21:27', '1', '402880e447d2f1fb0147d2f580d40002');
INSERT INTO t_s_log VALUES ('402880e447d2f1fb0147d2f89f100009', 'Chrome', '商城地址信息添加成功', '3', '192.168.0.100', '2014-08-14 13:23:34', '1', '402880e447d2f1fb0147d2f580d40002');
INSERT INTO t_s_log VALUES ('402880e447d2f1fb0147d2f8b84a000b', 'Chrome', '商城地址信息添加成功', '3', '192.168.0.100', '2014-08-14 13:23:41', '1', '402880e447d2f1fb0147d2f580d40002');
INSERT INTO t_s_log VALUES ('402880e447d2f1fb0147d2f8d92d000c', 'Chrome', '设定成功', '4', '192.168.0.100', '2014-08-14 13:23:49', '1', '402880e447d2f1fb0147d2f580d40002');
INSERT INTO t_s_log VALUES ('402880e447d314530147d3149c240000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.100', '2014-08-14 13:54:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e447d314530147d314e3ff0001', 'Chrome', '用户admin已退出', '2', '192.168.0.100', '2014-08-14 13:54:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e447d322a90147d32302620000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.100', '2014-08-14 14:09:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e447d322a90147d32379ae0002', 'Chrome', '用户admin已退出', '2', '192.168.0.100', '2014-08-14 14:10:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e447d322a90147d32395b70003', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.100', '2014-08-14 14:10:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e447d7243d0147d72afb4f0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.100', '2014-08-15 08:57:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e447d7243d0147d72b94950001', 'Chrome', '用户admin已退出', '2', '192.168.0.100', '2014-08-15 08:57:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e447d7243d0147d72ea47c0004', 'Chrome', '用户: 1添加成功', '3', '192.168.0.100', '2014-08-15 09:01:03', '1', null);
INSERT INTO t_s_log VALUES ('402880e447d7243d0147d72f33fc0005', 'Chrome', '用户: 1[信息部]登录成功', '1', '192.168.0.100', '2014-08-15 09:01:40', '1', '402880e447d7243d0147d72ea3eb0002');
INSERT INTO t_s_log VALUES ('402880e447d7243d0147d7305d250007', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.100', '2014-08-15 09:02:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e447d7243d0147d732a5b30009', 'Chrome', '用户: 1[信息部]登录成功', '1', '192.168.0.100', '2014-08-15 09:05:26', '1', '402880e447d7243d0147d72ea3eb0002');
INSERT INTO t_s_log VALUES ('402880e447d7243d0147d732f984000b', 'Chrome', '商城地址信息添加成功', '3', '192.168.0.100', '2014-08-15 09:05:47', '1', '402880e447d7243d0147d72ea3eb0002');
INSERT INTO t_s_log VALUES ('402880e447d80c1e0147d80df6570000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.100', '2014-08-15 13:04:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e447df43440147df442a860000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.100', '2014-08-16 22:41:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e447df43440147df44c6a50002', 'Chrome', '操作: 字段控制被添加成功', '3', '192.168.0.100', '2014-08-16 22:42:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6475e8cc801475e9117020000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-22 22:54:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e64763f59c014763f61b110000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-24 00:02:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e64763f59c014763f70c870002', 'Firefox', '权限: 订单管理被添加成功', '3', '192.168.0.102', '2014-07-24 00:04:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e64763f59c014763f7dab70004', 'Firefox', '用户admin已退出', '2', '192.168.0.102', '2014-07-24 00:04:53', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e64763f59c014763f7fa0a0005', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-24 00:05:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6476832b20147683308170000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-24 19:48:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6476832b201476834b5480001', 'Chrome', '用户admin已退出', '2', '192.168.0.102', '2014-07-24 19:49:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6476832b201476834d0bf0002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-24 19:49:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e647684471014768452cbd0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-24 20:07:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6476844710147684ca6550001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-24 20:15:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e647685ab10147685b063e0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-24 20:31:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e647687a270147687a94830000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-24 21:06:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6477d04e001477d0820000000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-28 20:53:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6477d04e001477d09f9a00001', 'Firefox', '微站点模板删除成功', '4', '192.168.0.102', '2014-07-28 20:55:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6477d04e001477d0a52110004', 'Firefox', '微站点模板添加成功', '3', '192.168.0.102', '2014-07-28 20:55:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6477d04e001477d0b3b0c0006', 'Firefox', '微站点信息更新成功', '5', '192.168.0.102', '2014-07-28 20:56:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6477d04e001477d0cb8a50007', 'Firefox', '微站点模板更新成功', '5', '192.168.0.102', '2014-07-28 20:58:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6477d04e001477d0dc4ca0008', 'Firefox', '微站点模板删除成功', '4', '192.168.0.102', '2014-07-28 20:59:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6477d04e001477d0e1c9b000c', 'Firefox', '微站点模板添加成功', '3', '192.168.0.102', '2014-07-28 20:59:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6477d04e001477d0e644b000e', 'Firefox', '微站点信息更新成功', '5', '192.168.0.102', '2014-07-28 21:00:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6477d04e001477d1254da000f', 'Firefox', '微站点信息更新成功', '5', '192.168.0.102', '2014-07-28 21:04:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6477d5c2601477d5d11d60000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-28 22:25:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6477d5c2601477d5d8f4f0003', 'Chrome', '信息添加成功', '3', '192.168.0.102', '2014-07-28 22:26:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6477d5f7601477d5febb70000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-28 22:29:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6477d61da01477d637e370000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-28 22:32:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6477d61da01477d6a70730001', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-28 22:40:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6477d61da01477d6ba9ac0018', 'Firefox', '用户admin已退出', '2', '192.168.0.102', '2014-07-28 22:41:53', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6477d61da01477d6bc2680019', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-28 22:41:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6477d61da01477d71437b001b', 'Chrome', '权限: JqueryFile示例被添加成功', '3', '192.168.0.102', '2014-07-28 22:48:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6477d61da01477d71bbf5001d', 'Chrome', '用户admin已退出', '2', '192.168.0.102', '2014-07-28 22:48:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6477d61da01477d7248f8001e', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-28 22:49:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6478c6d8201478c6ecb850000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-31 20:39:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6478c6d8201478c71c5a70002', 'Chrome', '权限: 微相册被添加成功', '3', '192.168.0.102', '2014-07-31 20:42:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6478c6d8201478c7227d20004', 'Chrome', '用户admin已退出', '2', '192.168.0.102', '2014-07-31 20:43:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6478c6d8201478c7245c40005', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-31 20:43:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6478c6d8201478c72a7350007', 'Chrome', '微相册添加成功', '3', '192.168.0.102', '2014-07-31 20:43:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6478c6d8201478c72e9510009', 'Chrome', '添加成功', '3', '192.168.0.102', '2014-07-31 20:44:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6478c6d8201478c738eea000c', 'Chrome', '相片更新成功', '5', '192.168.0.102', '2014-07-31 20:44:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6478c6d8201478c73abb9000d', 'Chrome', '相片更新成功', '5', '192.168.0.102', '2014-07-31 20:44:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6478c6d8201478c7454cd000f', 'Chrome', '微相册添加成功', '3', '192.168.0.102', '2014-07-31 20:45:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6478c6d8201478c74a63f0011', 'Chrome', '添加成功', '3', '192.168.0.102', '2014-07-31 20:46:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6478d3e0501478d3ea6610000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-08-01 00:26:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6478d418101478d4232170000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-08-01 00:30:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6478d48ea01478d4965960000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-08-01 00:38:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6478d527e01478d52dc8e0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-08-01 00:48:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6481371c501481372d3fe0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-08-27 01:52:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648137ad10148137b24420000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-08-27 02:01:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba0148138e10520000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-08-27 02:22:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba0148139a8cde0002', 'Chrome', '扩展接口管理添加成功', '3', '192.168.0.102', '2014-08-27 02:36:08', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba0148139b0ea20003', 'Chrome', '扩展接口管理更新成功', '5', '192.168.0.102', '2014-08-27 02:36:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba0148139b4f200004', 'Chrome', '扩展接口管理更新成功', '5', '192.168.0.102', '2014-08-27 02:36:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba0148139c7b730006', 'Chrome', '扩展接口管理添加成功', '3', '192.168.0.102', '2014-08-27 02:38:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba0148139d84960008', 'Chrome', '扩展接口管理添加成功', '3', '192.168.0.102', '2014-08-27 02:39:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba0148139e31250009', 'Chrome', '更新BPM业务构建平台的菜单信息信息成功！', '5', '192.168.0.102', '2014-08-27 02:40:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba0148139e577f000a', 'Chrome', '更新捷微-微信管家的菜单信息信息成功！', '5', '192.168.0.102', '2014-08-27 02:40:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813a00345000b', 'Chrome', '修改关文本模板成功！', '5', '192.168.0.102', '2014-08-27 02:42:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813a07b63000c', 'Chrome', '修改关文本模板成功！', '5', '192.168.0.102', '2014-08-27 02:42:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813a0c10b000d', 'Chrome', '更新BPM业务构建平台的菜单信息信息失败！', '5', '192.168.0.102', '2014-08-27 02:42:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813a0dc9d000e', 'Chrome', '更新联系我们的菜单信息信息失败！', '5', '192.168.0.102', '2014-08-27 02:43:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813a0fccf000f', 'Chrome', '更新BPM业务构建平台的菜单信息信息失败！', '5', '192.168.0.102', '2014-08-27 02:43:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813a135a00010', 'Chrome', '更新公司产品的菜单信息信息成功！', '5', '192.168.0.102', '2014-08-27 02:43:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813a1735d0011', 'Chrome', '更新BPM业务构建平台的菜单信息信息失败！', '5', '192.168.0.102', '2014-08-27 02:43:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813a25a240012', 'Chrome', '删除JAVA架构培训菜单信息数据', '4', '192.168.0.102', '2014-08-27 02:44:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813a2c84a0014', 'Chrome', '添加微投票的信息成功！', '3', '192.168.0.102', '2014-08-27 02:45:08', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813a311680016', 'Chrome', '添加会员卡的信息成功！', '3', '192.168.0.102', '2014-08-27 02:45:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813a37a390018', 'Chrome', '添加周边团购的信息成功！', '3', '192.168.0.102', '2014-08-27 02:45:53', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813a3f8100019', 'Chrome', '更新微商城的菜单信息信息成功！', '5', '192.168.0.102', '2014-08-27 02:46:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813a433c5001a', 'Chrome', '更新捷微功能的菜单信息信息成功！', '5', '192.168.0.102', '2014-08-27 02:46:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813a449be001b', 'Chrome', '更新基础功能的菜单信息信息成功！', '5', '192.168.0.102', '2014-08-27 02:46:46', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813a4f8d8001c', 'Chrome', '更新捷微管家介绍的菜单信息信息失败！', '5', '192.168.0.102', '2014-08-27 02:47:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813a54581001d', 'Chrome', '更新捷微-微信管家的菜单信息信息失败！', '5', '192.168.0.102', '2014-08-27 02:47:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813a69cf7001f', 'Chrome', '添加微留言的信息成功！', '3', '192.168.0.102', '2014-08-27 02:49:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813a764860020', 'Chrome', '用户admin已退出', '2', '192.168.0.102', '2014-08-27 02:50:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813a793300021', 'Chrome', '用户: ceshi[信息部]登录成功', '1', '192.168.0.102', '2014-08-27 02:50:22', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('402880e648138dba014813a7b5510022', 'Chrome', '用户ceshi已退出', '2', '192.168.0.102', '2014-08-27 02:50:31', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('402880e648138dba014813a7defc0023', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-08-27 02:50:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813a88cd60027', 'Chrome', '权限: 促销被删除成功', '4', '192.168.0.102', '2014-08-27 02:51:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813a8bf950028', 'Chrome', '权限: 二维码推广被更新成功', '5', '192.168.0.102', '2014-08-27 02:51:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813a968010029', 'Chrome', '权限: 会员卡被更新成功', '5', '192.168.0.102', '2014-08-27 02:52:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813a97b64002a', 'Chrome', '用户admin已退出', '2', '192.168.0.102', '2014-08-27 02:52:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813a99503002b', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-08-27 02:52:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813aa056d002c', 'Chrome', '用户admin已退出', '2', '192.168.0.102', '2014-08-27 02:53:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813aa1eb2002d', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-08-27 02:53:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813ab7f21002e', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-08-27 02:54:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813abfd680032', 'Chrome', '用户admin已退出', '2', '192.168.0.102', '2014-08-27 02:55:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813ac1ac90033', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-08-27 02:55:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813acac660034', 'Chrome', '权限: 二维码推广被更新成功', '5', '192.168.0.102', '2014-08-27 02:55:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813acd6a00035', 'Chrome', '权限: 会员卡被更新成功', '5', '192.168.0.102', '2014-08-27 02:56:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813ad3b96003a', 'Chrome', '用户admin已退出', '2', '192.168.0.102', '2014-08-27 02:56:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813ad579e003b', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-08-27 02:56:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813b8a290003e', 'Chrome', '商品分类添加成功', '3', '192.168.0.102', '2014-08-27 03:09:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813b8b160003f', 'Chrome', '商品分类删除成功', '4', '192.168.0.102', '2014-08-27 03:09:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648138dba014813babb3c0042', 'Chrome', '微信会员卡和用户关系表更新成功', '5', '192.168.0.102', '2014-08-27 03:11:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648152c3a0148152cfa430000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-08-27 09:55:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648152c3a0148153004ab0002', 'Chrome', '权限: 微投票设置被添加成功', '3', '192.168.0.102', '2014-08-27 09:59:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648152c3a014815305b9e0004', 'Chrome', '用户admin已退出', '2', '192.168.0.102', '2014-08-27 09:59:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648152c3a01481530bb860005', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-08-27 09:59:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648152c3a01481533d8f40006', 'Chrome', '权限: 微投票设置被更新成功', '5', '192.168.0.102', '2014-08-27 10:03:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648152c3a0148153408380007', 'Chrome', '用户admin已退出', '2', '192.168.0.102', '2014-08-27 10:03:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648152c3a0148153485260008', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-08-27 10:03:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648152c3a01481537e82f0011', 'Chrome', '微投票添加成功', '3', '192.168.0.102', '2014-08-27 10:07:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e648152c3a0148155a77d00013', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-08-27 10:45:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6481d7cc201481d7d2ae50000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-08-29 00:40:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6481d80ce01481d81a6880000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-08-29 00:45:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6481d80ce01481d834eb40001', 'Chrome', '更新联系我们的菜单信息信息成功！', '5', '192.168.0.102', '2014-08-29 00:46:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e6481d80ce01481d83868a0002', 'Chrome', '同步菜单信息数据成功！', '4', '192.168.0.102', '2014-08-29 00:47:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e64824fe6d01482500fd4a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-08-30 11:41:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e64824fe6d01482503d59f0001', 'Chrome', '用户: scott1密码重置成功', '5', '192.168.0.102', '2014-08-30 11:44:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e64824fe6d01482503e1cb0002', 'Chrome', '用户admin已退出', '2', '192.168.0.102', '2014-08-30 11:44:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880e64824fe6d01482505937f0003', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-08-30 11:46:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880eb44ce3b0f0144ce684ba30000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.107', '2014-03-17 12:59:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880f3459d14a101459d19f3710000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.115', '2014-04-26 16:14:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880f3459d14a101459d1b7a360001', 'Chrome', '用户admin已退出', '2', '192.168.0.115', '2014-04-26 16:16:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880f3459d14a101459d1ba61c0002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.115', '2014-04-26 16:16:46', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880f3459d14a101459d1c5b250003', 'Chrome', '用户admin已退出', '2', '192.168.0.115', '2014-04-26 16:17:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880f3459d14a101459d25a4ef0004', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.115', '2014-04-26 16:27:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880f3459d14a101459d26ce2c0005', 'Chrome', '用户admin已退出', '2', '192.168.0.115', '2014-04-26 16:28:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880f3459d14a101459d26e6870006', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.115', '2014-04-26 16:29:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402880f3459d14a101459d2dae670007', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.115', '2014-04-26 16:36:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028818248ca19150148ca1994ab0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.2', '2014-10-01 13:05:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028818248ca19150148ca24ac010001', 'Chrome', '修改关文本模板成功！', '5', '192.168.1.2', '2014-10-01 13:17:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028818348fa19290148fa1aa9fc0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-10 20:48:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028818348fa23290148fa24cf360000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-10 20:59:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028818348fa4cf30148fa50e39e0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-10 21:47:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028818348fa4cf30148fa5262e00012', 'Chrome', '用户admin已退出', '2', '192.168.1.3', '2014-10-10 21:49:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028818348fa4cf30148fa52885a0013', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-10 21:49:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028818348fa8bb90148fa8d28950000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-10 22:53:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028818348fa9d080148fa9e76a40000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-10 23:12:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028818348fa9fe80148faa15db50000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-10 23:15:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028818348faa4fa0148faa6a40b0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-10 23:21:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028818348faa4fa0148faa9ed6a0002', 'Chrome', '删除信息数据成功！', '4', '192.168.1.3', '2014-10-10 23:25:13', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028818348faa4fa0148faac6de70004', 'Chrome', '修改图文模板成功！', '5', '192.168.1.3', '2014-10-10 23:27:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028818348fab3080148fab6edb80000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-10 23:39:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028818348fab3080148fab763750003', 'Chrome', '微信单图消息添加成功', '3', '192.168.1.3', '2014-10-10 23:39:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028818348fadde00148fae07fc60000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-11 00:24:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028818348faea310148faed44120000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-11 00:38:46', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028818348faf4200148faf6563a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-11 00:48:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028818348fb019d0148fb032f5f0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-11 01:02:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028818348fb050d0148fb0691b10000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-11 01:06:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028818348fb17090148fb188e6e0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-11 01:26:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028818348fb17090148fb193e780001', 'Chrome', '权限: 未识别回复语被更新成功', '5', '192.168.1.3', '2014-10-11 01:26:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028818348fb17090148fb1966db0002', 'Chrome', '用户admin已退出', '2', '192.168.1.3', '2014-10-11 01:26:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028818348fb17090148fb197f110003', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-11 01:27:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028818348fb17090148fb1a73240006', 'Chrome', '修改关文本模板成功！', '5', '192.168.1.3', '2014-10-11 01:28:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028818348fb1e2a0148fb1f99b00000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-11 01:33:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028818348fb209d0148fb22d1290000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-11 01:37:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028818348fb209d0148fb2401e20001', 'Chrome', '修改关文本模板成功！', '5', '192.168.1.3', '2014-10-11 01:38:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028818348fb209d0148fb2474ab0002', 'Chrome', '修改关文本模板成功！', '5', '192.168.1.3', '2014-10-11 01:39:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028818348fb2b690148fb2cd7060000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-11 01:48:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028818348fb2b690148fb2d1dfd0001', 'Chrome', '修改关文本模板成功！', '5', '192.168.1.3', '2014-10-11 01:48:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881834904702101490471c1820000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-12 21:00:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288183490470210149047268f60002', 'Chrome', '活动添加成功', '3', '192.168.1.3', '2014-10-12 21:00:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881834904808a0149048203520000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-12 21:17:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881834904808a0149049546770001', 'Chrome', '活动更新成功', '5', '192.168.1.3', '2014-10-12 21:38:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881834904808a01490495e9e90002', 'Chrome', '活动更新成功', '5', '192.168.1.3', '2014-10-12 21:39:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881834904808a01490496faeb0003', 'Chrome', '活动更新成功', '5', '192.168.1.3', '2014-10-12 21:40:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881834904808a01490498c7e80004', 'Chrome', '活动更新成功', '5', '192.168.1.3', '2014-10-12 21:42:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881834904808a0149049a27af0005', 'Chrome', '活动更新成功', '5', '192.168.1.3', '2014-10-12 21:44:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288183490984af0149098629d10000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-13 20:40:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288183490984af01490986d2f10005', 'Chrome', '活动添加成功', '3', '192.168.1.3', '2014-10-13 20:41:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288183490984af014909880aef000c', 'Chrome', '活动更新成功', '5', '192.168.1.3', '2014-10-13 20:42:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288183490990e4014909927c290000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-13 20:53:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288183490990e4014909932aa90003', 'Chrome', '活动更新成功', '5', '192.168.1.3', '2014-10-13 20:54:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288183490996fd01490998a6dc0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-13 21:00:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028818349099fe6014909a1e6140000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-13 21:10:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881834909a670014909a858240000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-13 21:17:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881834909a670014909a923540008', 'Chrome', '活动更新成功', '5', '192.168.1.3', '2014-10-13 21:18:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881834909adcd014909af4dd50000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-13 21:25:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881834909adcd014909affc0e000a', 'Chrome', '活动更新成功', '5', '192.168.1.3', '2014-10-13 21:26:08', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881834909adcd014909b06d58000b', 'Chrome', '活动删除成功', '4', '192.168.1.3', '2014-10-13 21:26:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881834909adcd014909b15eb50013', 'Chrome', '活动添加成功', '3', '192.168.1.3', '2014-10-13 21:27:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881834909adcd014909b180820016', 'Chrome', '活动更新成功', '5', '192.168.1.3', '2014-10-13 21:27:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881834909adcd014909b4c7a3001b', 'Chrome', '活动添加成功', '3', '192.168.1.3', '2014-10-13 21:31:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881834909adcd014909b5a276001d', 'Chrome', '活动更新成功', '5', '192.168.1.3', '2014-10-13 21:32:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881834909adcd014909b7093a0020', 'Chrome', '活动更新成功', '5', '192.168.1.3', '2014-10-13 21:33:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881834909adcd014909b810280024', 'Chrome', '活动更新成功', '5', '192.168.1.3', '2014-10-13 21:34:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881834909adcd014909b92e720029', 'Chrome', '活动更新成功', '5', '192.168.1.3', '2014-10-13 21:36:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881834909dff5014909e175e90000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-13 22:20:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881834909dff5014909e1cafd0005', 'Chrome', '活动更新成功', '5', '192.168.1.3', '2014-10-13 22:20:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881834909dff5014909e524ed0009', 'Chrome', '活动更新成功', '5', '192.168.1.3', '2014-10-13 22:24:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881834909dff5014909e774c8000d', 'Chrome', '活动更新成功', '5', '192.168.1.3', '2014-10-13 22:26:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881834909dff5014909ed90660011', 'Chrome', '活动更新成功', '5', '192.168.1.3', '2014-10-13 22:33:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288183490a0dba01490a0f3f020000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-13 23:10:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288183490a0dba01490a0fbd830005', 'Chrome', '活动更新成功', '5', '192.168.1.3', '2014-10-13 23:10:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288183490a19d801490a1b8a980000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-13 23:23:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288183490a19d801490a1bc7350004', 'Chrome', '活动更新成功', '5', '192.168.1.3', '2014-10-13 23:23:53', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288183490a1e4701490a1fd8c20000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-13 23:28:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288183490a1e4701490a2054eb0004', 'Chrome', '活动更新成功', '5', '192.168.1.3', '2014-10-13 23:28:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288183490a24bb01490a262e5d0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-13 23:35:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288183490a24bb01490a26a1020004', 'Chrome', '活动更新成功', '5', '192.168.1.3', '2014-10-13 23:35:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288183490a24bb01490a43ca9b0005', 'Chrome', '活动删除成功', '4', '192.168.1.3', '2014-10-14 00:07:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288183490a24bb01490a449eb30009', 'Chrome', '活动添加成功', '3', '192.168.1.3', '2014-10-14 00:08:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288183490a24bb01490a48cd29000e', 'Chrome', '活动更新成功', '5', '192.168.1.3', '2014-10-14 00:13:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288183490a24bb01490a4faf5f0016', 'Chrome', '活动添加成功', '3', '192.168.1.3', '2014-10-14 00:20:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288183490a24bb01490a5a28cd0019', 'Chrome', '权限:  奖项设置被添加成功', '3', '192.168.1.3', '2014-10-14 00:32:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288183490a24bb01490a5bb79f001b', 'Chrome', '权限: 奖品设置被添加成功', '3', '192.168.1.3', '2014-10-14 00:33:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288183490a24bb01490a5c1cc0001e', 'Chrome', '用户admin已退出', '2', '192.168.1.3', '2014-10-14 00:34:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288183490a24bb01490a5c3684001f', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-14 00:34:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288183490a24bb01490a6280090021', 'Chrome', '二维码场景信息添加成功', '3', '192.168.1.3', '2014-10-14 00:41:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288183490a24bb01490a62b1170023', 'Chrome', '二维码信息添加成功', '3', '192.168.1.3', '2014-10-14 00:41:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288183490a746e01490a7679590000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.3', '2014-10-14 01:02:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e445a3b2fe0145a3b45ede0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-04-27 23:01:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4461f927c01461f9361480000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-22 00:18:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4461f927c01461f94a26d0001', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-05-22 00:19:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4461f927c01461f94b44b0002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-22 00:19:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4461f9c6401461f9cc0830000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-22 00:28:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4461f9c6401461fa2e79f0004', 'Chrome', '用户: tingfeng添加成功', '3', '192.168.1.100', '2014-05-22 00:35:08', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4461f9c6401461fa2f9910005', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-05-22 00:35:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4461f9c6401461fa31a820006', 'Chrome', '用户: tingfeng[信息部]登录成功', '1', '192.168.1.100', '2014-05-22 00:35:21', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO t_s_log VALUES ('402881e4461f9c6401461fa349030007', 'Chrome', '用户tingfeng已退出', '2', '192.168.1.100', '2014-05-22 00:35:33', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO t_s_log VALUES ('402881e4461f9c6401461fa35a540008', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-22 00:35:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4461f9c6401461fa395a4000a', 'Chrome', '用户: tingfeng更新成功', '5', '192.168.1.100', '2014-05-22 00:35:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4461f9c6401461fa3a099000b', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-05-22 00:35:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4461f9c6401461fa3bc08000c', 'Chrome', '用户: tingfeng[信息部]登录成功', '1', '192.168.1.100', '2014-05-22 00:36:02', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO t_s_log VALUES ('402881e44639441901463944c01a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-27 00:02:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4463cc88701463cc95b6a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-27 16:26:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4463cc88701463ccf1d2d0003', 'Chrome', '微信单图消息添加成功', '3', '192.168.1.100', '2014-05-27 16:32:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44643207c014643224c250000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-28 22:00:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44643207c01464322e2000001', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-05-28 22:01:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44643207c0146432330d80002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-28 22:01:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44643207c0146432382b10003', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-05-28 22:02:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44643207c0146432399a60004', 'Chrome', '用户: tingfeng[信息部]登录成功', '1', '192.168.1.100', '2014-05-28 22:02:25', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO t_s_log VALUES ('402881e44643207c014643293b310005', 'Chrome', '用户tingfeng已退出', '2', '192.168.1.100', '2014-05-28 22:08:34', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO t_s_log VALUES ('402881e44643207c0146432950350006', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-28 22:08:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44643207c014643328d3b0008', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-05-28 22:18:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44643207c01464332a3e90009', 'Chrome', '用户: tingfeng[信息部]登录成功', '1', '192.168.1.100', '2014-05-28 22:18:50', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO t_s_log VALUES ('402881e44643207c01464333f86e000e', 'Chrome', '微信单图消息添加成功', '3', '192.168.1.100', '2014-05-28 22:20:17', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO t_s_log VALUES ('402881e44643207c0146435b9f6c0011', 'Chrome', '微信公众帐号信息添加成功', '3', '192.168.1.100', '2014-05-28 23:03:36', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO t_s_log VALUES ('402881e44643207c0146436e5e770013', 'Chrome', '用户tingfeng已退出', '2', '192.168.1.100', '2014-05-28 23:24:05', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO t_s_log VALUES ('402881e44643207c01464373c3b60014', 'Chrome', '用户: tingfeng[信息部]登录成功', '1', '192.168.1.100', '2014-05-28 23:29:58', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO t_s_log VALUES ('402881e44643813501464381e9700000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-28 23:45:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44643813501464386a7090004', 'Chrome', '微信单图消息添加成功', '3', '192.168.1.100', '2014-05-28 23:50:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44643813501464388b4950008', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-05-28 23:52:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44643813501464388d43a0009', 'Chrome', '用户: tingfeng[信息部]登录成功', '1', '192.168.1.100', '2014-05-28 23:52:59', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO t_s_log VALUES ('402881e44643813501464389b876000d', 'Chrome', '微信单图消息添加成功', '3', '192.168.1.100', '2014-05-28 23:53:57', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO t_s_log VALUES ('402881e44643a1cd014643a3c2d80001', 'Chrome', '用户: tingfeng[信息部]登录成功', '1', '192.168.1.100', '2014-05-29 00:22:24', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO t_s_log VALUES ('402881e44643a1cd014643a536680005', 'Chrome', '微信单图消息添加成功', '3', '192.168.1.100', '2014-05-29 00:23:59', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO t_s_log VALUES ('402881e44643a1cd014643a579b20008', 'Chrome', '微信单图消息添加成功', '3', '192.168.1.100', '2014-05-29 00:24:16', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO t_s_log VALUES ('402881e44648134a014648146e7b0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-29 21:03:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44648134a014648163ab80002', 'Chrome', '角色: 测试角色被添加成功', '3', '192.168.1.100', '2014-05-29 21:05:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44648134a0146481669b90003', 'Chrome', '角色: 测试角色被更新成功', '5', '192.168.1.100', '2014-05-29 21:06:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44648134a014648174aeb000e', 'Chrome', '用户: ceshi添加成功', '3', '192.168.1.100', '2014-05-29 21:07:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44648134a0146481772be000f', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-05-29 21:07:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44648134a0146481791ac0010', 'Chrome', '用户: ceshi[信息部]登录成功', '1', '192.168.1.100', '2014-05-29 21:07:22', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('402881e44648134a01464817e7da0011', 'Chrome', '用户ceshi已退出', '2', '192.168.1.100', '2014-05-29 21:07:44', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('402881e44648134a01464817fd8a0012', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-29 21:07:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44648134a01464818dfee0029', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-05-29 21:08:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44648134a01464818f9bd002a', 'Chrome', '用户: ceshi[信息部]登录成功', '1', '192.168.1.100', '2014-05-29 21:08:54', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('402881e44648134a014648193f99002b', 'Chrome', '用户ceshi已退出', '2', '192.168.1.100', '2014-05-29 21:09:12', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('402881e44648134a01464819557f002c', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-29 21:09:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44648134a01464819f229002d', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-05-29 21:09:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44648134a0146481a78d3002e', 'Chrome', '用户: ceshi[信息部]登录成功', '1', '192.168.1.100', '2014-05-29 21:10:32', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('402881e44648134a0146481ad284002f', 'Chrome', '用户ceshi已退出', '2', '192.168.1.100', '2014-05-29 21:10:55', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('402881e44648134a0146481aed9e0030', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-29 21:11:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44648134a0146481d4a370047', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-05-29 21:13:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44648134a0146481d5d860048', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-29 21:13:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44648134a014648209402004a', 'Chrome', '操作: 新增被添加成功', '3', '192.168.1.100', '2014-05-29 21:17:13', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44648134a0146482152fc004c', 'Chrome', '操作: 编辑被添加成功', '3', '192.168.1.100', '2014-05-29 21:18:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44648134a01464821b64b004d', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-05-29 21:18:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44648134a01464821ea56004e', 'Chrome', '用户: ceshi[信息部]登录成功', '1', '192.168.1.100', '2014-05-29 21:18:40', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('402881e44648134a0146482288a6004f', 'Chrome', '用户ceshi已退出', '2', '192.168.1.100', '2014-05-29 21:19:21', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('402881e44648134a014648229acc0050', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-29 21:19:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44648134a014648254cbb0051', 'Firefox', '用户: ceshi[信息部]登录成功', '1', '192.168.1.100', '2014-05-29 21:22:22', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('402881e44648134a01464827a5de0052', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-05-29 21:24:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44648134a0146482c4e0f0053', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-29 21:30:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44648134a0146482e24850054', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-05-29 21:32:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44648134a0146482e37b90055', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-29 21:32:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44648134a0146483162bf0056', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-05-29 21:35:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44648134a0146483184de0057', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-29 21:35:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4464d026901464d036aa40000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-30 20:03:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4464d026901464d05ab920002', 'Chrome', '添加1的信息成功！', '3', '192.168.1.100', '2014-05-30 20:05:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4464db22d01464db4a1870000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-30 23:17:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4464db22d01464db6ccfa0001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-30 23:19:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4464db22d01464db785860003', 'Chrome', '添加大转盘的信息成功！', '3', '192.168.1.100', '2014-05-30 23:20:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4464dd29901464dd5dd1a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-30 23:53:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4464ddec701464ddf57fd0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-31 00:03:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4464de1b501464de86fc10000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-31 00:13:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4464de1b501464dedae2e0001', 'Chrome', '同步菜单信息数据成功！', '4', '192.168.1.100', '2014-05-31 00:19:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4464de1b501464defa1a40002', 'Chrome', '同步菜单信息数据成功！', '4', '192.168.1.100', '2014-05-31 00:21:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4464de1b501464df091cd0003', 'Chrome', '同步菜单信息数据成功！', '4', '192.168.1.100', '2014-05-31 00:22:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4464de1b501464df315720004', 'Chrome', '更新大转盘的菜单信息信息成功！', '5', '192.168.1.100', '2014-05-31 00:25:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4464df45f01464df500090000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-05-31 00:27:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4464df45f01464df5476e0001', 'Chrome', '删除大转盘菜单信息数据', '4', '192.168.1.100', '2014-05-31 00:27:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4464df45f01464df5cc4c0002', 'Chrome', '更新1的菜单信息信息成功！', '5', '192.168.1.100', '2014-05-31 00:28:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4464df45f01464df66e280003', 'Chrome', '同步菜单信息数据成功！', '4', '192.168.1.100', '2014-05-31 00:28:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4464df45f01464df707b20005', 'Chrome', '添加我的大转盘的信息成功！', '3', '192.168.1.100', '2014-05-31 00:29:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4464df45f01464df718220006', 'Chrome', '同步菜单信息数据成功！', '4', '192.168.1.100', '2014-05-31 00:29:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4464df45f01464df7525a0007', 'Chrome', '同步菜单信息数据成功！', '4', '192.168.1.100', '2014-05-31 00:29:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4464df45f01464df7931c0008', 'Chrome', '同步菜单信息数据成功！', '4', '192.168.1.100', '2014-05-31 00:30:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4464df45f01464df9087b0009', 'Chrome', '同步菜单信息数据成功！', '4', '192.168.1.100', '2014-05-31 00:31:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446672a080146672aa03a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-04 21:56:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446675fc801466761ea850000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-04 22:56:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446676a060146676b66c90000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-04 23:07:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446676a060146677088340006', 'Chrome', '创建成功', '3', '192.168.1.100', '2014-06-04 23:12:46', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446676a0601466775b94c0009', 'Chrome', '修改成功', '5', '192.168.1.100', '2014-06-04 23:18:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446677b700146677c3e140000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-04 23:25:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446677b700146677d7bc20002', 'Chrome', '权限: 扩展接口管理被添加成功', '3', '192.168.1.100', '2014-06-04 23:26:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446677b700146677d9e290003', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-06-04 23:27:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446677b700146677db0a00004', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-04 23:27:08', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446677b700146678c66690006', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-06-04 23:43:13', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446677b700146678c795a0007', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-04 23:43:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446677b700146678d6a810008', 'Chrome', '权限: 扩展接口管理被更新成功', '5', '192.168.1.100', '2014-06-04 23:44:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446677b700146678d8d210009', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-06-04 23:44:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446677b700146678d9e64000a', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-04 23:44:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44667912a01466793387a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-04 23:50:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44667912a0146679390b60002', 'Chrome', '扩展接口管理添加成功', '3', '192.168.1.100', '2014-06-04 23:51:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44667912a014667947aaa0004', 'Chrome', '扩展接口管理添加成功', '3', '192.168.1.100', '2014-06-04 23:52:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44667a05e014667a104aa0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-05 00:05:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4466c8d9801466c92e8a00006', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-05 23:08:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446950f860146951146380000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-13 19:51:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446950f86014695120fc30002', 'Chrome', '扩展接口管理添加成功', '3', '192.168.1.100', '2014-06-13 19:52:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446950f8601469513ecde0004', 'Chrome', '扩展接口管理添加成功', '3', '192.168.1.100', '2014-06-13 19:54:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44695183a0146951a33a60002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-13 20:01:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44695183a0146951af32f0005', 'Chrome', '权限: 微信CMS被添加成功', '3', '192.168.1.100', '2014-06-13 20:01:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44695183a0146951b66cb0007', 'Chrome', '权限: 首页广告管理被添加成功', '3', '192.168.1.100', '2014-06-13 20:02:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44695183a0146951ed81f0009', 'Chrome', '权限: 栏目管理被添加成功', '3', '192.168.1.100', '2014-06-13 20:06:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44695183a0146951f35f7000d', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-06-13 20:06:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44695183a0146951f470e000e', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-13 20:06:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44695183a0146952114830011', 'Chrome', '首页广告添加成功', '3', '192.168.1.100', '2014-06-13 20:08:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44695183a014695214ad30014', 'Chrome', '首页广告添加成功', '3', '192.168.1.100', '2014-06-13 20:08:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44695183a01469521a0200017', 'Chrome', '首页广告添加成功', '3', '192.168.1.100', '2014-06-13 20:09:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44695183a01469522f83f001a', 'Chrome', '栏目管理添加成功', '3', '192.168.1.100', '2014-06-13 20:10:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44695183a0146952348ec001d', 'Chrome', '栏目管理添加成功', '3', '192.168.1.100', '2014-06-13 20:10:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44695183a01469523f1300020', 'Chrome', '栏目管理添加成功', '3', '192.168.1.100', '2014-06-13 20:11:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44695183a01469524270e0023', 'Chrome', '栏目管理添加成功', '3', '192.168.1.100', '2014-06-13 20:11:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446952fde0146953087580001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-13 20:25:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446955c7c0146955d19850000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-13 21:14:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446955c7c01469581929e0005', 'Chrome', '扩展接口管理更新成功', '5', '192.168.1.100', '2014-06-13 21:53:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446955c7c0146958917930010', 'Chrome', '扩展接口管理更新成功', '5', '192.168.1.100', '2014-06-13 22:02:08', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446955c7c01469597116a0015', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 22:17:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446955c7c014695973dbd0017', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 22:17:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446955c7c014695975c130019', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 22:17:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446955c7c0146959779d6001b', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 22:17:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446955c7c014695a1e45f001e', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 22:29:13', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446955c7c014695a36e56001f', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 22:30:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446955c7c014695a390f50021', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 22:31:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446955c7c014695a3d2fb0023', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 22:31:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446955c7c014695a4526f0025', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 22:31:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446955c7c014695a72ae4002a', 'Chrome', '栏目管理添加成功', '3', '192.168.1.100', '2014-06-13 22:34:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446955c7c014695a77541002d', 'Chrome', '栏目管理添加成功', '3', '192.168.1.100', '2014-06-13 22:35:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446955c7c014695a7bcb80030', 'Chrome', '栏目管理添加成功', '3', '192.168.1.100', '2014-06-13 22:35:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446955c7c014695a7f0f70033', 'Chrome', '栏目管理添加成功', '3', '192.168.1.100', '2014-06-13 22:35:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446955c7c014695a8374e0036', 'Chrome', '栏目管理添加成功', '3', '192.168.1.100', '2014-06-13 22:36:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44695ebe3014695ec69a30000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-13 23:50:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44695ebe3014695ed424a0002', 'Chrome', '首页广告更新成功', '5', '192.168.1.100', '2014-06-13 23:51:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44695ebe3014695ed811b0004', 'Chrome', '首页广告更新成功', '5', '192.168.1.100', '2014-06-13 23:51:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44695ebe3014695ef4c060006', 'Chrome', '首页广告更新成功', '5', '192.168.1.100', '2014-06-13 23:53:46', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44695ebe3014695f2e0010008', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 23:57:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44695ebe3014695f31d02000a', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 23:57:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44695ebe3014695f33e67000c', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 23:58:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44695ebe3014695f3aa80000e', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 23:58:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44695ebe3014695f3ff9d0010', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 23:58:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44695ebe3014695f447550012', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 23:59:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44695ebe3014695f465280014', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 23:59:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44695ebe3014695f499930016', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 23:59:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e44695ebe3014695f4dac10018', 'Chrome', '栏目管理更新成功', '5', '192.168.1.100', '2014-06-13 23:59:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4469ffe7a01469fff48cb0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-15 22:47:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4469ffe7a0146a000097e0002', 'Chrome', '扩展接口管理添加成功', '3', '192.168.1.100', '2014-06-15 22:48:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4469ffe7a0146a005dbda0008', 'Chrome', '更新我的大转盘的菜单信息信息成功！', '5', '192.168.1.100', '2014-06-15 22:54:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e4469ffe7a0146a0060ecf0009', 'Chrome', '更新我的大转盘的菜单信息信息成功！', '5', '192.168.1.100', '2014-06-15 22:54:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446a009740146a00a89c50000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-15 22:59:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446a4d1cc0146a4d4eb280000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-16 21:19:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446a4d1cc0146a4eb87dd0001', 'Chrome', '权限: 栏目管理被更新成功', '5', '192.168.1.100', '2014-06-16 21:43:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446a4d1cc0146a4ebbfee0002', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-06-16 21:44:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446a4d1cc0146a4ebd7360003', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-16 21:44:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446a4d1cc0146a4ec895c0004', 'Chrome', '权限: 栏目管理被更新成功', '5', '192.168.1.100', '2014-06-16 21:45:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446a4d1cc0146a4ec97da0005', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-06-16 21:45:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446a4d1cc0146a4ecab460006', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-16 21:45:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446a4d1cc0146a4f0380b0007', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-16 21:49:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446a4d1cc0146a4f1a2290008', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-16 21:50:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446a4f60d0146a4f671ad0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-16 21:55:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446a4f9400146a4fa2beb0001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-16 21:59:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446a4f9400146a500c7460007', 'Chrome', '更新测试菜单的菜单信息信息成功！', '5', '192.168.1.100', '2014-06-16 22:07:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446a4f9400146a50183d00009', 'Chrome', '添加微CMS的信息成功！', '3', '192.168.1.100', '2014-06-16 22:07:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446a4f9400146a5019b9b000a', 'Chrome', '同步菜单信息数据成功！', '4', '192.168.1.100', '2014-06-16 22:08:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446a4f9400146a5028775000b', 'MSIE 8.0', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-16 22:09:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446a4f9400146a503d7a6000c', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-16 22:10:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446a4f9400146a503e6bc000d', 'Safari', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-16 22:10:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446a4f9400146a506c908000f', 'Safari', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-16 22:13:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446a4f9400146a52c2e240010', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.100', '2014-06-16 22:54:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e446a4f9400146a52ccb7d0011', 'Chrome', '用户admin已退出', '2', '192.168.1.100', '2014-06-16 22:55:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e545f5dd1a0145f5ddb2850000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-05-13 21:55:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e545f5dd1a0145f5de9bdb0002', 'Chrome', '权限: 消息管理被添加成功', '3', '192.168.1.101', '2014-05-13 21:56:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e545f5dd1a0145f5f0b5ab0004', 'Chrome', '权限: 文本模板被添加成功', '3', '192.168.1.101', '2014-05-13 22:16:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e545f5dd1a0145f5f32d4f0006', 'Chrome', '权限: 文本模板被添加成功', '3', '192.168.1.101', '2014-05-13 22:18:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e545f5dd1a0145f5f33dc60007', 'Chrome', '权限: 文本模板被删除成功', '4', '192.168.1.101', '2014-05-13 22:18:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e545f5dd1a0145f5f37693000a', 'Chrome', '用户admin已退出', '2', '192.168.1.101', '2014-05-13 22:19:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e545f5dd1a0145f5f387d1000b', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-05-13 22:19:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e545f5f4780145f5f4debd0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-05-13 22:20:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e545f5f4780145f5f55fb30002', 'Chrome', '删除信息数据成功！', '4', '192.168.1.101', '2014-05-13 22:21:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e545f5f4780145f6112aa30003', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-05-13 22:51:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e545f5f4780145f61198cf0005', 'Chrome', '权限: 图文模板被添加成功', '3', '192.168.1.101', '2014-05-13 22:51:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e545f5f4780145f611ed960007', 'Chrome', '用户admin已退出', '2', '192.168.1.101', '2014-05-13 22:52:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e545f5f4780145f611feae0008', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-05-13 22:52:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e545f612570145f61311400000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-05-13 22:53:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e545f61b4d0145f61c39a60000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-05-13 23:03:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e545f61f110145f61f54460000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-05-13 23:06:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e545fb0fdb0145fb1027e40000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-05-14 22:08:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e545fb0fdb0145fb1123c30001', 'MSIE 7.0', '权限: 自定义菜单被更新成功', '5', '192.168.1.101', '2014-05-14 22:09:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e545fb0fdb0145fb1178920002', 'MSIE 7.0', '用户admin已退出', '2', '192.168.1.101', '2014-05-14 22:09:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e545fb0fdb0145fb118a2a0003', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-05-14 22:10:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e545fb0fdb0145fb174b050006', 'MSIE 7.0', '添加第一个菜单的信息成功！', '3', '192.168.1.101', '2014-05-14 22:16:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e545fb0fdb0145fb206d840008', 'MSIE 7.0', '添加子菜单的信息成功！', '3', '192.168.1.101', '2014-05-14 22:26:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e54705957f0147059acf3e0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-05 16:18:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e54705f629014705f6963f0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-05 17:59:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e54705f629014705f7d62b0002', 'Chrome', '权限: 会员管理被添加成功', '3', '192.168.1.101', '2014-07-05 18:00:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e54705f629014705f81e150004', 'Chrome', '用户admin已退出', '2', '192.168.1.101', '2014-07-05 18:00:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e54705f629014705f83d730005', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-05 18:01:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5470601b7014706020d7a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-05 18:11:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5470a3f7701470a4033150000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-06 13:58:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5470a3f7701470a4159b60002', 'Chrome', '权限: 会员管理被添加成功', '3', '192.168.1.101', '2014-07-06 13:59:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5470a3f7701470a41e1700004', 'Chrome', '用户admin已退出', '2', '192.168.1.101', '2014-07-06 13:59:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5470a3f7701470a42034d0005', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-06 14:00:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5470a3f7701470a42c71f0006', 'Chrome', '权限: 会员管理被删除成功', '4', '192.168.1.101', '2014-07-06 14:00:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5470a3f7701470a43019c0007', 'Chrome', '用户admin已退出', '2', '192.168.1.101', '2014-07-06 14:01:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5470a3f7701470a4321dd0008', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-06 14:01:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5470a44ed01470a458b630000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-06 14:03:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5470a467f01470a46dc3a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-06 14:05:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5470a467f01470a4809cf0001', 'Chrome', '用户admin已退出', '2', '192.168.1.101', '2014-07-06 14:06:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5470a467f01470a482c630002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-06 14:06:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5470a467f01470a48d4a10003', 'Chrome', '权限: 会员管理被更新成功', '5', '192.168.1.101', '2014-07-06 14:07:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5470a4f9b01470a5083540000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-06 14:15:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5470a4f9b01470a5155040001', 'Chrome', '权限: 会员管理被更新成功', '5', '192.168.1.101', '2014-07-06 14:16:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5470a559701470a5644850000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-06 14:22:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5470a6e9a01470a6f33d20000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-06 14:49:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5470a6e9a01470a855a1e0002', 'Chrome', '商城会员添加成功', '3', '192.168.1.101', '2014-07-06 15:13:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5470a6e9a01470a90101f0004', 'Chrome', '商城会员添加成功', '3', '192.168.1.101', '2014-07-06 15:25:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5470a6e9a01470ad0483d0005', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-06 16:35:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5470ae66801470ae727db0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-06 17:00:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5470aeaa301470aeb76cb0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-06 17:05:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5470aeaa301470bb508930001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-06 20:45:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5470bc37201470bd0699a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-06 21:15:13', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5470bc37201470bd137200002', 'Chrome', '权限: 购物车管理被添加成功', '3', '192.168.1.101', '2014-07-06 21:16:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5470bd23901470bd46bbd0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-06 21:19:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5470c1b5901470c1bf4ae0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-07-06 22:37:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5470c28a701470c2a94e80000', 'Chrome', '购物车 删除成功', '4', '192.168.1.101', '2014-07-06 22:53:43', '1', null);
INSERT INTO t_s_log VALUES ('402881e5470c28a701470c2c97540001', 'Chrome', '购物车 删除成功', '4', '192.168.1.101', '2014-07-06 22:55:54', '1', null);
INSERT INTO t_s_log VALUES ('402881e5470c28a701470c2e24de0003', 'Chrome', '购物车 删除成功', '4', '192.168.1.101', '2014-07-06 22:57:36', '1', null);
INSERT INTO t_s_log VALUES ('402881e5470c28a701470c2e4e6c0007', 'Chrome', '购物车 删除成功', '4', '192.168.1.101', '2014-07-06 22:57:47', '1', null);
INSERT INTO t_s_log VALUES ('402881e5470c28a701470c2ecc6a0009', 'Chrome', '购物车 删除成功', '4', '192.168.1.101', '2014-07-06 22:58:19', '1', null);
INSERT INTO t_s_log VALUES ('402881e5470c28a701470c2f5933000a', 'Chrome', '购物车 删除成功', '4', '192.168.1.101', '2014-07-06 22:58:55', '1', null);
INSERT INTO t_s_log VALUES ('402881e5479d04cc01479d051f600000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-08-04 01:57:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5479d04cc01479d0635480002', 'Chrome', '权限: 会员卡被添加成功', '3', '192.168.1.101', '2014-08-04 01:58:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5479d04cc01479d0675f80004', 'Chrome', '权限: 会员卡信息被添加成功', '3', '192.168.1.101', '2014-08-04 01:59:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5479d04cc01479d0777a80007', 'Chrome', '用户admin已退出', '2', '192.168.1.101', '2014-08-04 02:00:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5479d04cc01479d07915f0008', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-08-04 02:00:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5479d04cc01479d08ceeb0009', 'Chrome', '权限: 会员卡信息被更新成功', '5', '192.168.1.101', '2014-08-04 02:01:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5479d04cc01479d0ab6be000a', 'Chrome', '权限: 会员卡信息被更新成功', '5', '192.168.1.101', '2014-08-04 02:03:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5479d04cc01479d0def2b000b', 'Chrome', '权限: 会员卡信息被更新成功', '5', '192.168.1.101', '2014-08-04 02:07:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5479d04cc01479d0e9f37000c', 'Chrome', '权限: 会员卡信息被更新成功', '5', '192.168.1.101', '2014-08-04 02:08:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5479d04cc01479d0ef21c000d', 'Chrome', '权限: 会员卡信息被更新成功', '5', '192.168.1.101', '2014-08-04 02:08:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e5479d04cc01479d0f336f000e', 'Chrome', '权限: 会员卡被更新成功', '5', '192.168.1.101', '2014-08-04 02:08:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e647962b48014796e03c450000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-02 21:19:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e647970fbd014797105e5e0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-02 22:12:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e64799449b014799452ac80000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 08:29:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e64799449b0147994cf3c60001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 08:37:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e64799449b0147994d95a20002', 'Chrome', '权限: 订单管理被更新成功', '5', '192.168.1.102', '2014-08-03 08:38:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e64799449b0147994dd6280003', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 08:38:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e647994e690147994f10680000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 08:40:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e647994e6901479986a1d50001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 09:40:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e64799f7e4014799f870300000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 11:45:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e6479a921401479a928f0f0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 14:33:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e6479ac39801479ac5a04a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 15:29:08', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e6479ace8d01479acf061e0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 15:39:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e6479ace8d01479aecadaa0004', 'Chrome', '购物车 删除成功', '4', '192.168.1.102', '2014-08-03 16:11:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e6479af7d201479af843d80000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 16:24:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e6479af9a001479affc7fc0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 16:32:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e6479b3b3301479b3b8f6d0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 17:37:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e6479b3d9e01479b3dfcc60000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 17:40:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e6479b4e8c01479b5294d10000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 18:03:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e6479b619c01479b6244f90000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 18:20:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e6479b662101479b69e3110000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 18:28:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e6479b6c8601479b6cf0950000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 18:31:53', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e6479b6c8601479b6e7d7c0001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.102', '2014-08-03 18:33:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e6479b6c8601479b7002910002', 'Chrome', '商城地址信息删除成功', '4', '192.168.1.102', '2014-08-03 18:35:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e6479b6c8601479b700b550003', 'Chrome', '商城地址信息删除成功', '4', '192.168.1.102', '2014-08-03 18:35:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e6479b6c8601479b7092220005', 'Chrome', '商城地址信息添加成功', '3', '192.168.1.102', '2014-08-03 18:35:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e745e6735b0145e676015f0000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.103', '2014-05-10 22:07:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e745e67ca70145e67d2ef90000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.103', '2014-05-10 22:15:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e747bae9ac0147baea2c810000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.103', '2014-08-09 21:16:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e747baf1ea0147baf2403d0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.103', '2014-08-09 21:25:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e747baf1ea0147baf4c6a40001', 'Chrome', '用户admin已退出', '2', '192.168.1.103', '2014-08-09 21:28:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e747baf1ea0147baf4e7e50002', 'Chrome', '用户: tingfeng[信息部]登录成功', '1', '192.168.1.103', '2014-08-09 21:28:38', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO t_s_log VALUES ('402881e747baf1ea0147bb0a90340003', 'Chrome', '用户tingfeng已退出', '2', '192.168.1.101', '2014-08-09 21:52:17', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO t_s_log VALUES ('402881e747baf1ea0147bb0aa6030004', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-08-09 21:52:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e747baf1ea0147bb51f7ea0005', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-08-09 23:10:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e747baf1ea0147bb750b9a0006', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.101', '2014-08-09 23:48:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e747baf1ea0147bb79d29f0008', 'Chrome', '扩展接口管理添加成功', '3', '192.168.1.101', '2014-08-09 23:53:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e7490c2b0301490c2b79a00000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.103', '2014-10-14 09:00:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e7490c2b0301490c2c353c0001', 'Chrome', '用户admin已退出', '2', '192.168.1.103', '2014-10-14 09:01:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e7490c2b0301490c2c579a0002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.103', '2014-10-14 09:01:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e7490c2b0301490c2cbed30003', 'Chrome', '用户admin已退出', '2', '192.168.1.103', '2014-10-14 09:01:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e7490c2b0301490c2ce2930004', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.103', '2014-10-14 09:01:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845c297860145c29981dd0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-03 23:00:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845c2d12b0145c2d303490000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-04 00:03:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845c2d12b0145c2d38b680001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-04 00:03:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845c2d12b0145c2d473600002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-04 00:04:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845c2d88e0145c2d9159a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-04 00:09:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845c6f1430145c7043fa80000', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-04 19:35:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845c6f1430145c704a6230001', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-04 19:35:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845c6f1430145c705a9480002', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-04 19:36:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845c7090d0145c709a93b0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-04 19:41:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845c732a20145c737394d0000', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-04 20:30:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845c73cb00145c746c9240000', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-04 20:47:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845c73cb00145c74893910001', 'MSIE 9.0', '权限: 公众帐号管理被更新成功', '5', '192.168.1.104', '2014-05-04 20:49:53', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845c73cb00145c74976440005', 'MSIE 9.0', '用户admin已退出', '2', '192.168.1.104', '2014-05-04 20:50:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845c73cb00145c74988570006', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-04 20:50:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845c73cb00145c75445eb0010', 'MSIE 9.0', '创建成功', '3', '192.168.1.104', '2014-05-04 21:02:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845cc520a0145cc535a580000', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-05 20:19:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845cc520a0145cc5520730001', 'MSIE 9.0', '权限: 公众帐号管理被更新成功', '5', '192.168.1.104', '2014-05-05 20:21:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845cc520a0145cc55585c0002', 'MSIE 9.0', '用户admin已退出', '2', '192.168.1.104', '2014-05-05 20:21:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845cc520a0145cc5569f20003', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-05 20:22:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845cc520a0145cc62d2900004', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-05 20:36:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845cc65050145cc659b8d0000', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-05 20:39:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845cc8bf40145cc8cb0750000', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-05 21:22:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845cc8bf40145cc8cfdcd0001', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-05 21:22:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845cc8bf40145cc8e41100002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-05 21:24:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845d1456d0145d14949e90000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-06 19:26:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845d1698f0145d16a1d380000', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-06 20:02:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845d16aef0145d16b87370000', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-06 20:04:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845d16cb10145d16d0af40000', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-06 20:05:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845d16cb10145d1711cc60001', 'MSIE 9.0', 'accountid删除成功', '4', '192.168.1.104', '2014-05-06 20:10:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845d16cb10145d1711eb90005', 'MSIE 9.0', '修改成功', '5', '192.168.1.104', '2014-05-06 20:10:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845d1723e0145d172b10f0000', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-06 20:12:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845d1723e0145d18f52a70017', 'MSIE 9.0', '用户admin已退出', '2', '192.168.1.104', '2014-05-06 20:43:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845d1723e0145d18f649e0018', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-06 20:43:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845d1723e0145d199f2b7001a', 'MSIE 9.0', '用户admin已退出', '2', '192.168.1.104', '2014-05-06 20:54:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845d1723e0145d19a0626001b', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-06 20:55:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e845d6fbb90145d6fe287f0000', 'MSIE 9.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-07 22:02:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e8460d7e5301460d7f42d70000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-18 12:03:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e8460d7e5301460d81c7d60002', 'MSIE 7.0', '权限: 关键字管理被添加成功', '3', '192.168.1.104', '2014-05-18 12:05:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e8460d7e5301460d8341ce0004', 'MSIE 7.0', '用户admin已退出', '2', '192.168.1.104', '2014-05-18 12:07:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e8460d7e5301460d83568b0005', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-18 12:07:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e8460d83c701460d85afbd0000', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-18 12:10:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e8460d83c701460d89f1580001', 'MSIE 7.0', '修改关文本模板成功！', '5', '192.168.1.104', '2014-05-18 12:14:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e8460d83c701460e06cd630002', 'MSIE 7.0', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-18 14:31:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e8460d83c701460e075e2f0003', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-18 14:31:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e8460d83c701460e08fc770005', 'Chrome', '权限: 关注欢迎语被更新成功', '5', '192.168.1.104', '2014-05-18 14:33:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e8460e097d01460e0b37850000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-18 14:35:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e8460e097d01460e0be28c0001', 'Chrome', '用户admin已退出', '2', '192.168.1.104', '2014-05-18 14:36:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e8460e097d01460e0c00cf0002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-18 14:36:46', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e8460e097d01460e0f35f50003', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-18 14:40:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e8460e102a01460e107e860000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-18 14:41:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e8460f865501460f8c923d0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-18 21:36:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e84617910601461791f8fe0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 10:59:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e846181e710146182023a70000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 13:34:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e84618d367014618d3f08e0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 16:51:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e84618da56014618dacb830000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 16:58:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e84618e0e5014618e146e80000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 17:05:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e84618e481014618e4ef4d0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 17:09:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e84619037b01461903dc000000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 17:43:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e846190c670146190ce4670000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 17:53:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e8461911f00146191305010000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 18:00:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e8461919800146191a5a070000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 18:08:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e8461921b80146192242490000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 18:16:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e8461926590146192744fc0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 18:22:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e8461931a3014619328a900000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 18:34:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e846193d530146193db2b90000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 18:46:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e846194295014619430b350000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 18:52:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e846194a3a0146194a96b10000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 19:00:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e846194ec30146194fb3000000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 19:06:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e84619622701461962f69c0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 19:27:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e84619666e01461966e3eb0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-20 19:31:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e8461c3ba101461c3dbb7f0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-21 08:45:46', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e8461c3ba101461c3e522f0001', 'Chrome', '权限: 取消关注回复语被删除成功', '4', '192.168.1.104', '2014-05-21 08:46:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e8461c3ba101461c3e93b90002', 'Chrome', '权限: 素材管理被删除成功', '4', '192.168.1.104', '2014-05-21 08:46:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e8461c3ba101461c3f2b950003', 'Chrome', '权限: 关键字应答被删除成功', '4', '192.168.1.104', '2014-05-21 08:47:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e8461c3ba101461c3f386f0004', 'Chrome', '权限: 关键字应答被删除成功', '4', '192.168.1.104', '2014-05-21 08:47:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e8461c3ba101461c3f63830005', 'Chrome', '权限: 自动应答菜单被删除成功', '4', '192.168.1.104', '2014-05-21 08:47:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e8461c3ba101461c4221ca0006', 'Chrome', '用户admin已退出', '2', '192.168.1.104', '2014-05-21 08:50:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e8461c3ba101461c42339b0007', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.104', '2014-05-21 08:50:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e946dd8ecc0146dd8f7e9c0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-06-27 21:41:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e946ddc9450146ddcae3540000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-06-27 22:46:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e946ddea480146ddefa0bb0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-06-27 23:26:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e946ddea480146ddf07b620002', 'Chrome', '首页广告更新成功', '5', '192.168.1.105', '2014-06-27 23:27:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e946ddea480146ddf741ac0004', 'Chrome', '首页广告更新成功', '5', '192.168.1.105', '2014-06-27 23:35:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e946ddea480146ddf99c4c0006', 'Chrome', '首页广告更新成功', '5', '192.168.1.105', '2014-06-27 23:37:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e946ddea480146ddf9b7370007', 'Chrome', '首页广告更新成功', '5', '192.168.1.105', '2014-06-27 23:37:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e946ddea480146de0300b30009', 'Chrome', '首页广告更新成功', '5', '192.168.1.105', '2014-06-27 23:47:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e946ddea480146de05329b000c', 'Chrome', '首页广告添加成功', '3', '192.168.1.105', '2014-06-27 23:50:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e946ddea480146de099ce5000d', 'Chrome', '首页广告删除成功', '4', '192.168.1.105', '2014-06-27 23:55:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e946ddea480146de09fe7c000f', 'Chrome', '首页广告更新成功', '5', '192.168.1.105', '2014-06-27 23:55:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e946ddea480146de0f3ab60012', 'Chrome', '首页广告添加成功', '3', '192.168.1.105', '2014-06-28 00:01:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e946e2a2360146e2a404f30000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-06-28 21:22:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e946e2a2360146e2af4be30001', 'Chrome', '用户admin已退出', '2', '192.168.1.105', '2014-06-28 21:34:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e946e2a2360146e2af66d80002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-06-28 21:34:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e946e2a2360146e2ca1bc00003', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-06-28 22:03:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e946e2a2360146e2caeb950005', 'Chrome', '修改图文模板成功！', '5', '192.168.1.105', '2014-06-28 22:04:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e946ecbe530146ecc60c9d0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-06-30 20:35:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e946ecbe530146ecc6149a0001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-06-30 20:35:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e946f72f8e0146f73230170000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-07-02 21:09:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e946f72f8e0146f7403e600004', 'Chrome', '用户admin已退出', '2', '192.168.1.105', '2014-07-02 21:25:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e946f72f8e0146f7406e8d0005', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-07-02 21:25:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e946f72f8e0146f74632e60012', 'Chrome', '创建成功', '3', '192.168.1.105', '2014-07-02 21:31:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e946f749a30146f752151d0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-07-02 21:44:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e946f755ae0146f758cf830000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-07-02 21:52:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e946f7bcb20146f7c69ad30000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-07-02 23:52:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e946f7bcb20146f7c763c10002', 'Chrome', '权限: 微信商城被添加成功', '3', '192.168.1.105', '2014-07-02 23:52:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e946f7bcb20146f7c8c0380004', 'Chrome', '权限: 商品类别被添加成功', '3', '192.168.1.105', '2014-07-02 23:54:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e946f7bcb20146f7c9992d0007', 'Chrome', '用户admin已退出', '2', '192.168.1.105', '2014-07-02 23:55:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e946f7bcb20146f7c9c6580008', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-07-02 23:55:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e946f7bcb20146f7ceb045000b', 'Chrome', '商品分类添加成功', '3', '192.168.1.105', '2014-07-03 00:00:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e9470133a7014701375b910000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-07-04 19:51:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e9470133a70147013872f00002', 'Chrome', '商品分类添加成功', '3', '192.168.1.105', '2014-07-04 19:53:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e947015a700147015b65830000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-07-04 20:31:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e947015a700147016148ac0003', 'Chrome', '商品分类添加成功', '3', '192.168.1.105', '2014-07-04 20:37:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e947015a7001470161a84c0006', 'Chrome', '商品分类添加成功', '3', '192.168.1.105', '2014-07-04 20:38:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e947015a7001470164504b0009', 'Chrome', '商品分类添加成功', '3', '192.168.1.105', '2014-07-04 20:40:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e94701b0bc014701b1982e0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-07-04 22:05:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e94701b0bc014701b6eeaa0017', 'Chrome', '创建成功', '3', '192.168.1.105', '2014-07-04 22:11:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e94701b0bc014701ba3eb80018', 'Chrome', '修改成功', '5', '192.168.1.105', '2014-07-04 22:14:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e94701b0bc014701bc19440019', 'Chrome', '修改成功', '5', '192.168.1.105', '2014-07-04 22:16:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e94701df96014701e43b290000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-07-04 23:00:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e94701df96014701e5fec20002', 'Chrome', '权限: 商品信息管理被添加成功', '3', '192.168.1.105', '2014-07-04 23:02:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e94701df96014701e69fe70004', 'Chrome', '用户admin已退出', '2', '192.168.1.105', '2014-07-04 23:03:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e94701df96014701e6b86e0005', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-07-04 23:03:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e94701df96014701f48cee0009', 'Chrome', '商品信息添加成功', '3', '192.168.1.105', '2014-07-04 23:18:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e94701df96014701fcbfc7000b', 'Chrome', '商品信息添加成功', '3', '192.168.1.105', '2014-07-04 23:27:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e94701df96014702080ac0000c', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-07-04 23:39:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e94701df960147020c27b30011', 'Chrome', '商品信息添加成功', '3', '192.168.1.105', '2014-07-04 23:44:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e9470273d2014702840d3a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-07-05 01:55:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e9470273d201470285fa1a0017', 'Chrome', '用户admin已退出', '2', '192.168.1.105', '2014-07-05 01:57:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e9470273d20147028610cf0018', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-07-05 01:57:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e9470273d201470297db5e001b', 'Chrome', '用户admin已退出', '2', '192.168.1.105', '2014-07-05 02:16:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e9470273d201470297fccb001c', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-07-05 02:17:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e9470273d2014702a94a9f001e', 'Chrome', '扩展接口管理添加成功', '3', '192.168.1.105', '2014-07-05 02:35:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e94702c764014702cd82f20002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-07-05 03:15:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e94702c764014702ce59e90003', 'Chrome', '商品信息更新成功', '5', '192.168.1.105', '2014-07-05 03:16:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e94702c764014702cf04d50005', 'Chrome', '商品信息更新成功', '5', '192.168.1.105', '2014-07-05 03:17:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e9487d19ab01487d1bd57c0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-09-16 14:17:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e9487d21ed01487d22a04f0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-09-16 14:24:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e9487d257f01487d25cb600000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-09-16 14:28:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e9487dd36401487dec09730000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-09-16 18:04:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e9487dd36401487e0165e60003', 'Chrome', '用户admin已退出', '2', '192.168.1.105', '2014-09-16 18:28:13', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881e9487dd36401487e0193ba0004', 'Chrome', '用户: ceshi[信息部]登录成功', '1', '192.168.1.105', '2014-09-16 18:28:25', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('402881e9487dd36401487e01c7940005', 'Chrome', '用户ceshi已退出', '2', '192.168.1.105', '2014-09-16 18:28:38', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('402881e9487dd36401487e01e9150006', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.105', '2014-09-16 18:28:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881ea4cad964a014cad97027f0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.106', '2015-04-12 20:24:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881ea4cad964a014cada416a70002', 'Chrome', '微社区添加成功', '3', '192.168.1.106', '2015-04-12 20:39:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881ea4cad964a014cada5703e0003', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.106', '2015-04-12 20:40:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881ea4cad964a014cada780cf0004', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.106', '2015-04-12 20:42:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881ea4cad964a014cae105e9f0005', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.106', '2015-04-12 22:37:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881ea4cad964a014cae12d5e50006', 'Chrome', '微社区更新成功', '5', '192.168.1.106', '2015-04-12 22:40:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881ea4cf000a0014cf6161bed0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.106', '2015-04-26 22:16:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881ed4d5f9fdc014d5fa1b8210000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.109', '2015-05-17 10:09:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881ed4d5f9fdc014d5fa22d700001', 'Chrome', '微信公众帐号信息更新成功', '5', '192.168.1.109', '2015-05-17 10:09:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881ed4d5f9fdc014d5fa2c2710002', 'Chrome', '微信公众帐号信息更新成功', '5', '192.168.1.109', '2015-05-17 10:10:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881ed4d5f9fdc014d5fa3f9a40003', 'Chrome', '修改关键字回复成功！', '5', '192.168.1.109', '2015-05-17 10:11:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881ed4d5f9fdc014d5fa40c0d0004', 'Chrome', '删除信息数据成功！', '4', '192.168.1.109', '2015-05-17 10:11:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881ed4d5f9fdc014d5fa414310005', 'Chrome', '删除信息数据成功！', '4', '192.168.1.109', '2015-05-17 10:11:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34871c7b2014871c859700000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.115', '2014-09-14 09:30:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34871c7b2014871c876b50001', 'Chrome', '用户admin已退出', '2', '192.168.1.115', '2014-09-14 09:30:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34871c7b2014871ca4bed0002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.115', '2014-09-14 09:32:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34871c7b2014871cac6ea0004', 'Chrome', '活动表添加成功', '3', '192.168.1.115', '2014-09-14 09:33:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34871c7b2014871cb41c70005', 'Chrome', '中奖记录删除成功', '4', '192.168.1.115', '2014-09-14 09:33:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34871c7b2014871cb42420006', 'Chrome', '中奖记录删除成功', '4', '192.168.1.115', '2014-09-14 09:33:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34871c7b2014871cb42e10007', 'Chrome', '中奖记录删除成功', '4', '192.168.1.115', '2014-09-14 09:33:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34871c7b2014871cb43c40008', 'Chrome', '中奖记录删除成功', '4', '192.168.1.115', '2014-09-14 09:33:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34871d253014871d62faa0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.115', '2014-09-14 09:45:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34871d253014871d6ab9b0001', 'Chrome', '活动表更新成功', '5', '192.168.1.115', '2014-09-14 09:46:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34871d253014871d9791e0003', 'Chrome', '中奖记录添加成功', '3', '192.168.1.115', '2014-09-14 09:49:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34871d253014871dcc2bb0004', 'Chrome', '活动表删除成功', '4', '192.168.1.115', '2014-09-14 09:52:46', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34871d253014871dce1100005', 'Chrome', '活动表删除成功', '4', '192.168.1.115', '2014-09-14 09:52:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34871d253014871dce1bf0006', 'Chrome', '活动表删除成功', '4', '192.168.1.115', '2014-09-14 09:52:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34871d253014871dce2330007', 'Chrome', '活动表删除成功', '4', '192.168.1.115', '2014-09-14 09:52:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34871d253014871dce2e20008', 'Chrome', '活动表删除成功', '4', '192.168.1.115', '2014-09-14 09:52:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34871d253014871dce3470009', 'Chrome', '活动表删除成功', '4', '192.168.1.115', '2014-09-14 09:52:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34871d253014871dce3ac000a', 'Chrome', '活动表删除成功', '4', '192.168.1.115', '2014-09-14 09:52:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34871d253014871dce40f000b', 'Chrome', '活动表删除成功', '4', '192.168.1.115', '2014-09-14 09:52:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34871d253014871dd0798000c', 'Chrome', '活动表更新成功', '5', '192.168.1.115', '2014-09-14 09:53:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34871d253014871dd1bd9000d', 'Chrome', '活动表更新成功', '5', '192.168.1.115', '2014-09-14 09:53:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34871e060014871e23b100000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.115', '2014-09-14 09:58:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34871e060014871e26c990001', 'Chrome', '活动表更新成功', '5', '192.168.1.115', '2014-09-14 09:58:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34871e060014871e2baf50003', 'Chrome', '中奖记录添加成功', '3', '192.168.1.115', '2014-09-14 09:59:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34871e060014871e2dc630004', 'Chrome', '中奖记录删除成功', '4', '192.168.1.115', '2014-09-14 09:59:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34871e060014871e2dd270005', 'Chrome', '中奖记录删除成功', '4', '192.168.1.115', '2014-09-14 09:59:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34871e060014871e2f2ec0007', 'Chrome', '中奖记录添加成功', '3', '192.168.1.115', '2014-09-14 09:59:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34871e6b2014871e7585f0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.115', '2014-09-14 10:04:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34871e6b2014871f133950003', 'Chrome', '中奖记录更新成功', '5', '192.168.1.115', '2014-09-14 10:15:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34871e6b2014871f4d4060004', 'Chrome', '用户admin已退出', '2', '192.168.1.115', '2014-09-14 10:19:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34871e6b2014871f4ed080005', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.115', '2014-09-14 10:19:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34871f7d0014871f876780000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.115', '2014-09-14 10:23:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f348723a310148723abcf00000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.115', '2014-09-14 11:35:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f3487258400148725e583a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.115', '2014-09-14 12:14:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34872fd69014872fe59b40000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.115', '2014-09-14 15:09:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34872fd69014872febd6d0001', 'Chrome', '中奖记录删除成功', '4', '192.168.1.115', '2014-09-14 15:09:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34872fd69014872febdc80002', 'Chrome', '中奖记录删除成功', '4', '192.168.1.115', '2014-09-14 15:09:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34872fd69014872febe240003', 'Chrome', '中奖记录删除成功', '4', '192.168.1.115', '2014-09-14 15:09:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34872fd69014873006d970009', 'Chrome', '中奖记录删除成功', '4', '192.168.1.115', '2014-09-14 15:11:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f34872fd69014873006dec000a', 'Chrome', '中奖记录删除成功', '4', '192.168.1.115', '2014-09-14 15:11:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881f348734046014873439f550000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.115', '2014-09-14 16:24:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402881fc485d955501485d964c5c0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.124', '2014-09-10 11:23:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b4015194f751870000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.6.61', '2015-12-12 14:53:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b4015194f825c80001', 'Chrome', '权限: 活动管理被删除成功', '4', '192.168.6.61', '2015-12-12 14:54:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b4015194f84a4a0002', 'Chrome', '权限: 中奖管理被删除成功', '4', '192.168.6.61', '2015-12-12 14:54:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b4015194f879200003', 'Chrome', '权限: 微信活动被删除成功', '4', '192.168.6.61', '2015-12-12 14:54:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b4015194f8ccf00004', 'Chrome', '权限: 表单配置被删除成功', '4', '192.168.6.61', '2015-12-12 14:55:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b4015194f8e3670005', 'Chrome', '权限: 动态报表配置被删除成功', '4', '192.168.6.61', '2015-12-12 14:55:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b4015194f8f86f0006', 'Chrome', '权限: Online 开发被删除成功', '4', '192.168.6.61', '2015-12-12 14:55:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b4015194f950640007', 'Chrome', '权限: 群发消息被删除成功', '4', '192.168.6.61', '2015-12-12 14:55:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b4015194f967620008', 'Chrome', '权限: 单发消息被删除成功', '4', '192.168.6.61', '2015-12-12 14:55:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b4015194f97f120009', 'Chrome', '权限: 发送消息被删除成功', '4', '192.168.6.61', '2015-12-12 14:55:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b4015194f9c056000a', 'Chrome', '权限: 二维码场景管理被删除成功', '4', '192.168.6.61', '2015-12-12 14:56:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b4015194f9dfef000b', 'Chrome', '权限: 二维码管理被删除成功', '4', '192.168.6.61', '2015-12-12 14:56:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b4015194fa08d3000c', 'Chrome', '权限: 扫描记录查询被删除成功', '4', '192.168.6.61', '2015-12-12 14:56:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b4015194fa229d000d', 'Chrome', '权限: 二维码推广被删除成功', '4', '192.168.6.61', '2015-12-12 14:56:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b4015194ff6e01000e', 'Chrome', '权限: 表单验证被删除成功', '4', '192.168.6.61', '2015-12-12 15:02:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b4015194ff93e4000f', 'Chrome', '权限: JqueryFile示例被删除成功', '4', '192.168.6.61', '2015-12-12 15:02:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b4015194ffae5e0010', 'Chrome', '权限: 字典标签被删除成功', '4', '192.168.6.61', '2015-12-12 15:02:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b4015194ffed190011', 'Chrome', '权限: 表单弹出风格被删除成功', '4', '192.168.6.61', '2015-12-12 15:02:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b401519500049e0012', 'Chrome', '权限: ckfinder例子被删除成功', '4', '192.168.6.61', '2015-12-12 15:03:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b40151950081440013', 'Chrome', '权限: 特殊布局被删除成功', '4', '192.168.6.61', '2015-12-12 15:03:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b40151950099000014', 'Chrome', '权限: 单表例子(无Tag)被删除成功', '4', '192.168.6.61', '2015-12-12 15:03:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b401519500aeb80015', 'Chrome', '权限: 一对多例子(无Tag)被删除成功', '4', '192.168.6.61', '2015-12-12 15:03:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b401519500c4340016', 'Chrome', '权限: HTML编辑器被删除成功', '4', '192.168.6.61', '2015-12-12 15:03:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b401519500d8400017', 'Chrome', '权限: 在线word(IE)被删除成功', '4', '192.168.6.61', '2015-12-12 15:03:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b401519500eca00018', 'Chrome', '权限: WebOffice官方例子被删除成功', '4', '192.168.6.61', '2015-12-12 15:04:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b40151950102b30019', 'Chrome', '权限: 多附件管理被删除成功', '4', '192.168.6.61', '2015-12-12 15:04:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b4015195011fcf001a', 'Chrome', '权限: Datagrid手工Html被删除成功', '4', '192.168.6.61', '2015-12-12 15:04:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b40151950135a1001b', 'Chrome', '权限: Demo示例被删除成功', '4', '192.168.6.61', '2015-12-12 15:04:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b401519501a144001c', 'Chrome', '权限: 物料Bom被删除成功', '4', '192.168.6.61', '2015-12-12 15:04:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b401519501b7cc001d', 'Chrome', '权限: 单表模型被删除成功', '4', '192.168.6.61', '2015-12-12 15:04:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b401519501e8c8001e', 'Chrome', '权限: 一对多模型被删除成功', '4', '192.168.6.61', '2015-12-12 15:05:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b401519501fd5f001f', 'Chrome', '权限: Excel导入导出被删除成功', '4', '192.168.6.61', '2015-12-12 15:05:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b4015195020fd30020', 'Chrome', '权限: 上传下载被删除成功', '4', '192.168.6.61', '2015-12-12 15:05:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b40151950221540021', 'Chrome', '权限: 无分页列表被删除成功', '4', '192.168.6.61', '2015-12-12 15:05:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b401519502335a0022', 'Chrome', '权限: jdbc示例被删除成功', '4', '192.168.6.61', '2015-12-12 15:05:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b40151950261fa0023', 'Chrome', '权限: SQL分离被删除成功', '4', '192.168.6.61', '2015-12-12 15:05:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b40151950282000024', 'Chrome', '权限: 常用示例被删除成功', '4', '192.168.6.61', '2015-12-12 15:05:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b40151950293ab0025', 'Chrome', '权限: 数据统计被删除成功', '4', '192.168.6.61', '2015-12-12 15:05:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b401519502a1190026', 'Chrome', '权限: 统计分析被删除成功', '4', '192.168.6.61', '2015-12-12 15:05:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b401519502be100027', 'Chrome', '用户admin已退出', '2', '192.168.6.61', '2015-12-12 15:06:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b40151950307930028', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.6.61', '2015-12-12 15:06:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b40151950b9caa002a', 'Chrome', '购物车 删除成功', '4', '192.168.6.61', '2015-12-12 15:15:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b40151951004a4002d', 'Chrome', '购物车 删除成功', '4', '192.168.6.61', '2015-12-12 15:20:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5194f5b4015195100e72002e', 'Chrome', '购物车 删除成功', '4', '192.168.6.61', '2015-12-12 15:20:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5195158f0151951645e60000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.6.61', '2015-12-12 15:27:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5195158f01519525f28b0001', 'Chrome', '删除周边团购菜单信息数据', '4', '192.168.6.61', '2015-12-12 15:44:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5195158f0151952688f20002', 'Chrome', '删除微网站菜单信息数据', '4', '192.168.6.61', '2015-12-12 15:45:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5195158f015195274b400003', 'Chrome', '删除营销工具菜单信息数据', '4', '192.168.6.61', '2015-12-12 15:45:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5195158f01519527731b0004', 'Chrome', '删除微投票菜单信息数据', '4', '192.168.6.61', '2015-12-12 15:46:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5195158f01519527dc830005', 'Chrome', '删除竞选投票PK菜单信息数据', '4', '192.168.6.61', '2015-12-12 15:46:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5195158f01519527f7200006', 'Chrome', '删除兑奖入口菜单信息数据', '4', '192.168.6.61', '2015-12-12 15:46:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5195158f0151952840a90007', 'Chrome', '删除微留言菜单信息数据', '4', '192.168.6.61', '2015-12-12 15:47:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5195158f0151952c3b6d0008', 'Chrome', '商品信息更新成功', '5', '192.168.6.61', '2015-12-12 15:51:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5195158f0151952c5fb70009', 'Chrome', '商品信息更新成功', '5', '192.168.6.61', '2015-12-12 15:51:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5195158f0151952c7b68000a', 'Chrome', '商品信息更新成功', '5', '192.168.6.61', '2015-12-12 15:51:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5195158f0151952cc1e1000b', 'Chrome', '商品信息更新成功', '5', '192.168.6.61', '2015-12-12 15:51:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5195158f0151952d07ba000c', 'Chrome', '商品信息更新成功', '5', '192.168.6.61', '2015-12-12 15:52:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5195158f0151952d2da4000d', 'Chrome', '商品信息更新成功', '5', '192.168.6.61', '2015-12-12 15:52:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5195158f0151952d92020011', 'Chrome', '*********************支付宝即时到账交易请求 begin***********************', '3', '192.168.6.61', '2015-12-12 15:52:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5195158f0151952d920a0012', 'Chrome', '*** error: Class PayExtAction; Method alipaydirectRequest(); key is null ***', '3', '192.168.6.61', '2015-12-12 15:52:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5195158f0151952d92130013', 'Chrome', '*** error: Class PayExtAction; Method alipaydirectRequest(); bizID is null ***', '3', '192.168.6.61', '2015-12-12 15:52:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5195158f0151952e5e120015', 'Chrome', '*********************支付宝即时到账交易请求 begin***********************', '3', '192.168.6.61', '2015-12-12 15:53:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5195158f0151952e5e220016', 'Chrome', '*** error: Class PayExtAction; Method alipaydirectRequest(); key is null ***', '3', '192.168.6.61', '2015-12-12 15:53:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5195158f0151952e5e2a0017', 'Chrome', '*** error: Class PayExtAction; Method alipaydirectRequest(); bizID is null ***', '3', '192.168.6.61', '2015-12-12 15:53:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5195158f0151953094340019', 'Chrome', '*********************支付宝即时到账交易请求 begin***********************', '3', '192.168.6.61', '2015-12-12 15:56:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5195158f015195309440001a', 'Chrome', '*** error: Class PayExtAction; Method alipaydirectRequest(); key is null ***', '3', '192.168.6.61', '2015-12-12 15:56:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5195158f015195309449001b', 'Chrome', '*** error: Class PayExtAction; Method alipaydirectRequest(); bizID is null ***', '3', '192.168.6.61', '2015-12-12 15:56:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5195158f0151953496e4001d', 'Chrome', '*********************支付宝即时到账交易请求 begin***********************', '3', '192.168.6.61', '2015-12-12 16:00:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5195158f015195349700001e', 'Chrome', '*** error: Class PayExtAction; Method alipaydirectRequest(); key is null ***', '3', '192.168.6.61', '2015-12-12 16:00:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5195158f01519534970d001f', 'Chrome', '*** error: Class PayExtAction; Method alipaydirectRequest(); bizID is null ***', '3', '192.168.6.61', '2015-12-12 16:00:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd519537560151953881a40000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.6.61', '2015-12-12 16:04:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5195375601519540ae5c0004', 'Chrome', '*********************支付宝即时到账交易请求 begin***********************', '3', '192.168.6.61', '2015-12-12 16:13:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5195375601519540ae750005', 'Chrome', '*** error: Class PayExtAction; Method alipaydirectRequest(); key is null ***', '3', '192.168.6.61', '2015-12-12 16:13:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5195375601519540ae8f0006', 'Chrome', '*** error: Class PayExtAction; Method alipaydirectRequest(); bizID is null ***', '3', '192.168.6.61', '2015-12-12 16:13:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd519544f80151954606ea0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.6.61', '2015-12-12 16:19:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd519544f8015195464cf10001', 'Chrome', '用户admin已退出', '2', '192.168.6.61', '2015-12-12 16:19:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd519544f80151954679a60002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.6.61', '2015-12-12 16:20:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd519544f801519548d31a0004', 'Chrome', '权限: 支付账号管理被添加成功', '3', '192.168.6.61', '2015-12-12 16:22:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd519544f80151954919c40006', 'Chrome', '用户admin已退出', '2', '192.168.6.61', '2015-12-12 16:22:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd519544f801519549451e0007', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.6.61', '2015-12-12 16:23:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd519544f80151954a29780009', 'Chrome', '支付方式设置添加成功', '3', '192.168.6.61', '2015-12-12 16:24:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd519544f80151954a72b7000a', 'Chrome', '*********************支付宝即时到账交易请求 begin***********************', '3', '192.168.6.61', '2015-12-12 16:24:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd519544f80151954f10c2000f', 'Chrome', '商品信息更新成功', '5', '192.168.6.61', '2015-12-12 16:29:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd519544f80151954f2eeb0010', 'Chrome', '商品信息更新成功', '5', '192.168.6.61', '2015-12-12 16:29:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd519544f801519551692a0014', 'Chrome', '*********************支付宝即时到账交易请求 begin***********************', '3', '192.168.6.61', '2015-12-12 16:31:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd519544f801519551e3c10015', 'Chrome', '*********************支付宝即时到账交易请求 begin***********************', '3', '192.168.6.61', '2015-12-12 16:32:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd51955ac30151955bb5d30000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.6.61', '2015-12-12 16:43:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd51955ac30151955c38a10004', 'Chrome', '*********************支付宝即时到账交易请求 begin***********************', '3', '192.168.6.61', '2015-12-12 16:43:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd51955ac30151955f1bce0006', 'Chrome', '*********************支付宝即时到账交易请求 begin***********************', '3', '192.168.6.61', '2015-12-12 16:46:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd51955ac30151955f661c000a', 'Chrome', '*********************支付宝即时到账交易请求 begin***********************', '3', '192.168.6.61', '2015-12-12 16:47:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd5195766b0151959446cb0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.6.61', '2015-12-12 17:45:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd51aa1f4c0151aa2d21cc0006', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.6.61', '2015-12-16 17:44:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd51aa324e0151aa4120300002', 'Chrome', '*********************支付宝即时到账交易请求 begin***********************', '3', '192.168.6.61', '2015-12-16 18:06:13', '1', null);
INSERT INTO t_s_log VALUES ('402886bd51b430d90151b441729d0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.6.61', '2015-12-18 16:42:46', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd51b430d90151b4417acf0001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.6.61', '2015-12-18 16:42:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd51b430d90151b44268d80002', 'Chrome', '用户admin已退出', '2', '192.168.6.61', '2015-12-18 16:43:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd51b430d90151b442ad6a0003', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.6.61', '2015-12-18 16:44:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd51b44c980151b44faeb40000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.6.61', '2015-12-18 16:58:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd51b44c980151b44fb4c80001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.6.61', '2015-12-18 16:58:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd51b44c980151b450a8e10002', 'Chrome', '删除公司社区菜单信息数据', '4', '192.168.6.61', '2015-12-18 16:59:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd51b44c980151b450c1680003', 'Chrome', '删除公司产品菜单信息数据', '4', '192.168.6.61', '2015-12-18 16:59:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd51b44c980151b4513a2f0004', 'Chrome', '删除刮刮乐菜单信息数据', '4', '192.168.6.61', '2015-12-18 17:00:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd51b44c980151b451c11f0005', 'Chrome', '删除微相册菜单信息数据', '4', '192.168.6.61', '2015-12-18 17:00:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd51b44c980151b457f1e90006', 'Chrome', '删除信息数据成功', '4', '192.168.6.61', '2015-12-18 17:07:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd51b44c980151b457f21e0007', 'Chrome', '删除信息数据成功', '4', '192.168.6.61', '2015-12-18 17:07:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd51b44c980151b457f2680008', 'Chrome', '删除信息数据成功', '4', '192.168.6.61', '2015-12-18 17:07:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd51b44c980151b457f29f0009', 'Chrome', '删除信息数据成功', '4', '192.168.6.61', '2015-12-18 17:07:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd51b44c980151b457f2b0000a', 'Chrome', '删除信息数据成功', '4', '192.168.6.61', '2015-12-18 17:07:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd51b44c980151b457f2c3000b', 'Chrome', '删除信息数据成功', '4', '192.168.6.61', '2015-12-18 17:07:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd51b44c980151b45805cd000c', 'Chrome', '删除信息数据成功', '4', '192.168.6.61', '2015-12-18 17:07:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd51b44c980151b458cf22000d', 'Chrome', '相片删除成功', '4', '192.168.6.61', '2015-12-18 17:08:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd51b44c980151b458dae5000e', 'Chrome', '相片删除成功', '4', '192.168.6.61', '2015-12-18 17:08:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd51b44c980151b45a4bc9000f', 'Chrome', '权限: 业务扩展接口管理被删除成功', '4', '192.168.6.61', '2015-12-18 17:09:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd51b44c980151b45bd50b0010', 'Chrome', '微站点信息更新成功', '5', '192.168.6.61', '2015-12-18 17:11:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd51b44c980151b46095500011', 'Chrome', '用户admin已退出', '2', '192.168.6.61', '2015-12-18 17:16:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd51b44c980151b46117400012', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.6.61', '2015-12-18 17:17:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd51c214d70151c21d84610000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.6.61', '2015-12-21 09:18:13', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd51c214d70151c21d88550001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.6.61', '2015-12-21 09:18:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd51c214d70151c21f14cb0002', 'Chrome', '删除会员卡菜单信息数据', '4', '192.168.6.61', '2015-12-21 09:19:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd51c214d70151c21f30030003', 'Chrome', '删除微官网菜单信息数据', '4', '192.168.6.61', '2015-12-21 09:20:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402886bd51c214d70151c21f4ad60004', 'Chrome', '同步菜单信息数据成功！', '4', '192.168.6.61', '2015-12-21 09:20:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288904471a1d8301471a1e409b0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.132', '2014-07-09 15:54:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288904471a20e301471a21ef3d0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.132', '2014-07-09 15:58:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288904471a240e01471a25aefb0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.132', '2014-07-09 16:03:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288904471a240e01471a25e0680001', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.132', '2014-07-09 16:03:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288904471a240e01471a2abcc20002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.132', '2014-07-09 16:08:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288904471a240e01471a2d1e390003', 'Chrome', '商品分类删除成功', '4', '192.168.9.132', '2014-07-09 16:11:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288904471a240e01471a2fbd720004', 'Chrome', '商品分类更新成功', '5', '192.168.9.132', '2014-07-09 16:14:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288904471a240e01471a2fe1830005', 'Chrome', '商品分类更新成功', '5', '192.168.9.132', '2014-07-09 16:14:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288904471a240e01471a3013160006', 'Chrome', '商品分类更新成功', '5', '192.168.9.132', '2014-07-09 16:14:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288904471a240e01471a30db7e0008', 'Chrome', '商城会员添加成功', '3', '192.168.9.132', '2014-07-09 16:15:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('40288904471a240e01471a34036e0009', 'Chrome', '商品信息删除成功', '4', '192.168.9.132', '2014-07-09 16:18:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ed472e852301472e85f8ea0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.109', '2014-07-13 15:00:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ed472e852301472e8a050c0001', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.109', '2014-07-13 15:05:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ed472e852301472e90a3080006', 'Firefox', '活动删除成功', '4', '192.168.9.109', '2014-07-13 15:12:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ed472e852301472eae6cef0007', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.109', '2014-07-13 15:44:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ed472e852301472eb0d6bd000f', 'Chrome', '微信单图消息添加成功', '3', '192.168.9.109', '2014-07-13 15:47:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ed472e852301472eb1b2c30010', 'Chrome', '微信单图消息更新成功', '5', '192.168.9.109', '2014-07-13 15:48:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ed472ec2a801472ec328f50000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.109', '2014-07-13 16:07:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ed472ec2a801472ec39f680003', 'Firefox', '微信单图消息添加成功', '3', '192.168.9.109', '2014-07-13 16:07:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ed472ee23401472ee48a410000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.109', '2014-07-13 16:43:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f346dc66c30146dc778e9a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.115', '2014-06-27 16:36:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f346dc66c30146dc7c1c450003', 'Chrome', '信息添加成功', '3', '192.168.9.115', '2014-06-27 16:40:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f346dc66c30146dc7cd4510007', 'Chrome', '微信单图消息添加成功', '3', '192.168.9.115', '2014-06-27 16:41:46', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f346dc66c30146dc7cfb05000a', 'Chrome', '微信单图消息添加成功', '3', '192.168.9.115', '2014-06-27 16:41:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f346dc8a220146dc8ac3190000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.115', '2014-06-27 16:56:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f346dc8a220146dc8b16a60001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.115', '2014-06-27 16:57:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f346dc8a220146dc8d69990002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.115', '2014-06-27 16:59:53', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f346dc8a220146dc8d92dd0003', 'Chrome', '用户admin已退出', '2', '192.168.9.115', '2014-06-27 17:00:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f346dc8a220146dc8ea8cc0004', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.115', '2014-06-27 17:01:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f346dc8a220146dc8fec310005', 'Chrome', '用户admin已退出', '2', '192.168.9.115', '2014-06-27 17:02:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f346dc8a220146dc90209a0006', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.115', '2014-06-27 17:02:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f346dc8a220146dc9520650008', 'Chrome', '用户admin已退出', '2', '192.168.9.115', '2014-06-27 17:08:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f346dc8a220146dca372870009', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.115', '2014-06-27 17:23:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f346dc8a220146dca3c44f000a', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.115', '2014-06-27 17:24:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f346dcad7f0146dcade99f0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.115', '2014-06-27 17:35:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f346dcad7f0146dcb414f50001', 'Chrome', '用户admin已退出', '2', '192.168.9.115', '2014-06-27 17:42:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f6474704840147470593110000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.118', '2014-07-18 09:10:53', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f64747048401474706d41f0002', 'Chrome', '权限: 微站点信息被添加成功', '3', '192.168.9.118', '2014-07-18 09:12:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f6474704840147470790740004', 'Chrome', '权限: 微站点模板被添加成功', '3', '192.168.9.118', '2014-07-18 09:13:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f64747048401474708189c0007', 'Chrome', '用户admin已退出', '2', '192.168.9.118', '2014-07-18 09:13:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f64747048401474708b0170008', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.118', '2014-07-18 09:14:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f64747048401474709458e000b', 'Chrome', '微站点信息添加成功', '3', '192.168.9.118', '2014-07-18 09:14:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f6474704840147470a1bf2000d', 'Chrome', '微站点模板添加成功', '3', '192.168.9.118', '2014-07-18 09:15:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f6474704840147470d620a0011', 'Chrome', '微站点模板添加成功', '3', '192.168.9.118', '2014-07-18 09:19:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f6474704840147470e56d50013', 'Chrome', '微站点模板删除成功', '4', '192.168.9.118', '2014-07-18 09:20:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f6474704840147471009460016', 'Chrome', '微站点模板添加成功', '3', '192.168.9.118', '2014-07-18 09:22:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f647470484014747106a810018', 'Chrome', '微站点模板删除成功', '4', '192.168.9.118', '2014-07-18 09:22:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f647470484014747106ad30019', 'Chrome', '微站点模板删除成功', '4', '192.168.9.118', '2014-07-18 09:22:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f647470484014747129bc6001c', 'Chrome', '微站点模板添加成功', '3', '192.168.9.118', '2014-07-18 09:25:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f64747048401474713109a001e', 'Chrome', '微站点模板删除成功', '4', '192.168.9.118', '2014-07-18 09:25:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f647470484014747137eeb0021', 'Chrome', '微站点模板添加成功', '3', '192.168.9.118', '2014-07-18 09:26:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f64747182f01474718a70d0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.118', '2014-07-18 09:31:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f64747182f0147471918ba0003', 'Chrome', '微站点模板添加成功', '3', '192.168.9.118', '2014-07-18 09:32:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f64747182f01474719c3e00006', 'Chrome', '微站点模板添加成功', '3', '192.168.9.118', '2014-07-18 09:32:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f64747182f01474720a1500008', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.118', '2014-07-18 09:40:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f64747182f01474720c6010009', 'Chrome', '微站点模板删除成功', '4', '192.168.9.118', '2014-07-18 09:40:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f64747182f01474720c65a000a', 'Chrome', '微站点模板删除成功', '4', '192.168.9.118', '2014-07-18 09:40:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f64747182f01474720c6be000b', 'Chrome', '微站点模板删除成功', '4', '192.168.9.118', '2014-07-18 09:40:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f64747182f014747211adc000e', 'Chrome', '微站点模板添加成功', '3', '192.168.9.118', '2014-07-18 09:40:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f6474722ad0147472395130000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.118', '2014-07-18 09:43:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f6474722ad01474723f6e50003', 'Chrome', '微站点模板添加成功', '3', '192.168.9.118', '2014-07-18 09:44:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f6474722ad0147472469ff0005', 'Chrome', '微站点模板删除成功', '4', '192.168.9.118', '2014-07-18 09:44:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f6474722ad014747246a530006', 'Chrome', '微站点模板删除成功', '4', '192.168.9.118', '2014-07-18 09:44:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f6474722ad01474724bd6f0009', 'Chrome', '微站点模板添加成功', '3', '192.168.9.118', '2014-07-18 09:44:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f647c35f450147c3602efd0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.118', '2014-08-11 12:42:46', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f647c35f450147c37be2270004', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.118', '2014-08-11 13:13:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f647c35f450147c37ecd990005', 'Chrome', '用户admin已退出', '2', '192.168.9.118', '2014-08-11 13:16:13', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8476650de0147665143220000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-24 11:01:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8476650de014766568e6c0001', 'Chrome', '用户: ceshi[信息部]登录成功', '1', '192.168.9.120', '2014-07-24 11:07:34', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('402889f8476650de01476665e0360003', 'Firefox', '类型分组: 12被添加成功', '3', '192.168.9.120', '2014-07-24 11:24:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8476650de014766662a910004', 'Firefox', '类型分组: CMS菜单类型被更新成功', '5', '192.168.9.120', '2014-07-24 11:24:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8476650de01476666acfe0006', 'Firefox', '类型: 单文被添加成功', '3', '192.168.9.120', '2014-07-24 11:25:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8476650de01476666d5f20008', 'Firefox', '类型: 02被添加成功', '3', '192.168.9.120', '2014-07-24 11:25:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8476650de014766670a2f0009', 'Firefox', '类型: 多文章被更新成功', '5', '192.168.9.120', '2014-07-24 11:25:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8476650de014766672fdb000a', 'Firefox', '类型: 单文章被更新成功', '5', '192.168.9.120', '2014-07-24 11:25:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8476650de01476668df3f000b', 'Firefox', '类型: 多文章被更新成功', '5', '192.168.9.120', '2014-07-24 11:27:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8476650de01476668faaf000c', 'Firefox', '类型: 单文章被更新成功', '5', '192.168.9.120', '2014-07-24 11:27:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f847666ae40147666c2fd70000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-24 11:31:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f847666ae40147666c8b3c0001', 'Firefox', '栏目管理更新成功', '5', '192.168.9.120', '2014-07-24 11:31:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f847666ae40147666e1c530004', 'Firefox', '栏目管理更新成功', '5', '192.168.9.120', '2014-07-24 11:33:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f847666ae40147666f81db0008', 'Firefox', '用户admin已退出', '2', '192.168.9.120', '2014-07-24 11:34:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f847666ae40147666f9c060009', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-24 11:34:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f847666ae401476670bbc70014', 'Firefox', '添加成功', '3', '192.168.9.120', '2014-07-24 11:36:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f847666ae4014766daefc80015', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-24 13:32:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f847666ae40147670ad1f30016', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-24 14:24:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f847666ae401476729c58b001a', 'Firefox', '微站点模板添加成功', '3', '192.168.9.120', '2014-07-24 14:58:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f847666ae40147672f3e19001c', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-24 15:04:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f847666ae401476730779a001d', 'Firefox', '微站点模板删除成功', '4', '192.168.9.120', '2014-07-24 15:05:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f847666ae401476730f0870020', 'Firefox', '微站点模板添加成功', '3', '192.168.9.120', '2014-07-24 15:06:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f847666ae40147673af4bd0022', 'Firefox', '微站点信息更新成功', '5', '192.168.9.120', '2014-07-24 15:17:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f84767413b0147674303790000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-24 15:25:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f84767413b01476743586f0003', 'Firefox', '栏目管理添加成功', '3', '192.168.9.120', '2014-07-24 15:26:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f84767413b0147674375a50004', 'Firefox', '栏目管理更新成功', '5', '192.168.9.120', '2014-07-24 15:26:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f84767413b014767472de60005', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-24 15:30:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f84767413b0147674b45130008', 'Chrome', '用户admin已退出', '2', '192.168.9.120', '2014-07-24 15:34:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f84767413b0147674b61a20009', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-24 15:34:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f84767413b0147674ba7f2000a', 'Chrome', '用户admin已退出', '2', '192.168.9.120', '2014-07-24 15:35:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f84767413b0147674c0407000b', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-24 15:35:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477ab1ad01477ab2859d0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 10:00:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477ac5b901477ac638de0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 10:21:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477ac5b901477ac6ea2f0001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 10:22:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477ac5b901477acfe6460002', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 10:32:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477ad29d01477ad7c1830000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 10:41:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477ad29d01477ad88f8d0001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 10:41:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477ad29d01477ad8e3c70003', 'Chrome', '微站点模板添加成功', '3', '192.168.9.120', '2014-07-28 10:42:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477adacf01477addfd2f0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 10:47:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477adacf01477ade1a860001', 'Chrome', '微站点模板删除成功', '4', '192.168.9.120', '2014-07-28 10:48:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477aea1d01477aea8c990000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 11:01:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477afa0601477afa80070000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 11:19:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477b065001477b06cd560000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 11:32:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477b08ad01477b0908670000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 11:34:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477b0c1f01477b0ca6ae0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 11:38:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477b0c1f01477b0ded290001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 11:40:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477b0c1f01477b0e084a0002', 'Chrome', '微站点模板删除成功', '4', '192.168.9.120', '2014-07-28 11:40:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477b0c1f01477b0e43cb0005', 'Chrome', '微站点模板添加成功', '3', '192.168.9.120', '2014-07-28 11:40:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477b0fc001477b101c450000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 11:42:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477b5b5b01477b5c03060000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 13:05:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477b5b5b01477b5c93980001', 'Chrome', '微站点模板删除成功', '4', '192.168.9.120', '2014-07-28 13:06:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477b5b5b01477b5d01af0005', 'Chrome', '微站点模板添加成功', '3', '192.168.9.120', '2014-07-28 13:06:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477b5b5b01477b5e68790007', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 13:08:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477b5b5b01477b5ec8360008', 'Chrome', '微站点模板删除成功', '4', '192.168.9.120', '2014-07-28 13:08:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477b5b5b01477b5efcf3000b', 'Chrome', '微站点模板添加成功', '3', '192.168.9.120', '2014-07-28 13:08:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477b66e201477b67504a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 13:17:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477b66e201477b678dea0001', 'Chrome', '微站点模板更新成功', '5', '192.168.9.120', '2014-07-28 13:18:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477b681801477b68a1ce0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 13:19:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477b681801477b68c3960001', 'Chrome', '微站点模板删除成功', '4', '192.168.9.120', '2014-07-28 13:19:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477b681801477b692cf90004', 'Chrome', '微站点模板添加成功', '3', '192.168.9.120', '2014-07-28 13:19:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477b6c5401477b6cf5b70000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 13:24:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477b6c5401477b6d1c880001', 'Chrome', '微站点模板删除成功', '4', '192.168.9.120', '2014-07-28 13:24:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477b6c5401477b6d4e880004', 'Chrome', '微站点模板添加成功', '3', '192.168.9.120', '2014-07-28 13:24:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477b6e4e01477b6ebcc00000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 13:26:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477b6e4e01477b6f0a720003', 'Chrome', '微站点模板添加成功', '3', '192.168.9.120', '2014-07-28 13:26:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477b70aa01477b7196420000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 13:29:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477b70aa01477b71b6460001', 'Chrome', '微站点模板删除成功', '4', '192.168.9.120', '2014-07-28 13:29:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477b70aa01477b71bede0002', 'Chrome', '微站点模板删除成功', '4', '192.168.9.120', '2014-07-28 13:29:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477b70aa01477b71edd70005', 'Chrome', '微站点模板添加成功', '3', '192.168.9.120', '2014-07-28 13:29:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477b70aa01477b7264fb0007', 'Chrome', '微站点模板更新成功', '5', '192.168.9.120', '2014-07-28 13:30:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477b70aa01477b729a7f0008', 'Chrome', '微站点模板删除成功', '4', '192.168.9.120', '2014-07-28 13:30:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477b70aa01477b75c50c000b', 'Chrome', '微站点模板添加成功', '3', '192.168.9.120', '2014-07-28 13:33:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477c283701477c28cc230000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.120', '2014-07-28 16:49:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477c283701477c28ea980001', 'Chrome', '微站点模板删除成功', '4', '192.168.9.120', '2014-07-28 16:49:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477c283701477c2989d70004', 'Chrome', '微站点模板添加成功', '3', '192.168.9.120', '2014-07-28 16:50:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477c283701477c2a4e0b0006', 'Chrome', '微站点模板更新成功', '5', '192.168.9.120', '2014-07-28 16:50:53', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477c283701477c2a81970009', 'Chrome', '微站点模板添加成功', '3', '192.168.9.120', '2014-07-28 16:51:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477c283701477c2b9bc0000d', 'Chrome', '微站点模板添加成功', '3', '192.168.9.120', '2014-07-28 16:52:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477c283701477c2e7144000f', 'Chrome', '微站点模板删除成功', '4', '192.168.9.120', '2014-07-28 16:55:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477c283701477c2e76b70010', 'Chrome', '微站点模板删除成功', '4', '192.168.9.120', '2014-07-28 16:55:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477c283701477c2e7dbf0011', 'Chrome', '微站点模板删除成功', '4', '192.168.9.120', '2014-07-28 16:55:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889f8477c283701477c2eb0f20014', 'Chrome', '微站点模板添加成功', '3', '192.168.9.120', '2014-07-28 16:55:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fa47e7803c0147e782cac30000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.122', '2014-08-18 13:06:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb47c8e4550147c8e52bf70000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.123', '2014-08-12 14:26:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb47c910700147c910e5c70000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.123', '2014-08-12 15:13:53', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480b38e101480b397f950000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.123', '2014-08-25 11:33:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480b38e101480b85860a0001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.123', '2014-08-25 12:56:13', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bc77a01480bc8b3690000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.123', '2014-08-25 14:09:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bc77a01480bd622720001', 'Chrome', '微相册更新成功', '5', '192.168.9.123', '2014-08-25 14:24:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bc77a01480bd64be60002', 'Chrome', '相片更新成功', '5', '192.168.9.123', '2014-08-25 14:24:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bc77a01480bd6aebe0003', 'Chrome', '相片更新成功', '5', '192.168.9.123', '2014-08-25 14:24:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bc77a01480bd802980012', 'Chrome', '用户admin已退出', '2', '192.168.9.123', '2014-08-25 14:26:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bc77a01480bd828090013', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.123', '2014-08-25 14:26:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bc77a01480bda5e560015', 'Chrome', '添加成功', '3', '192.168.9.123', '2014-08-25 14:28:53', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bc77a01480bda79950017', 'Chrome', '相片更新成功', '5', '192.168.9.123', '2014-08-25 14:29:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bef0c01480befab000000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.123', '2014-08-25 14:52:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bef0c01480bf0d9ea0001', 'Chrome', '删除信息数据成功！', '4', '192.168.9.123', '2014-08-25 14:53:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bef0c01480bf1d3da0003', 'Chrome', '留言信息添加成功', '3', '192.168.9.123', '2014-08-25 14:54:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bef0c01480bf49fbe0004', 'Chrome', '用户admin已退出', '2', '192.168.9.123', '2014-08-25 14:57:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bef0c01480bf676030005', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.123', '2014-08-25 14:59:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bef0c01480bf7eea90006', 'Chrome', '用户admin已退出', '2', '192.168.9.123', '2014-08-25 15:01:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c0417870000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.123', '2014-08-25 15:14:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c090f060002', 'Chrome', '权限: 微留言被更新成功', '5', '192.168.9.123', '2014-08-25 15:19:53', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c0997c60003', 'Chrome', '权限: 优惠劵被更新成功', '5', '192.168.9.123', '2014-08-25 15:20:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c09a5f60004', 'Chrome', '权限: 促销被删除成功', '4', '192.168.9.123', '2014-08-25 15:20:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c09b3430005', 'Chrome', '用户admin已退出', '2', '192.168.9.123', '2014-08-25 15:20:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c09f2670006', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.123', '2014-08-25 15:20:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c0bf5610007', 'Chrome', '权限: 管家配置中心被更新成功', '5', '192.168.9.123', '2014-08-25 15:23:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c0d69730008', 'Chrome', '权限: 微信公众账号被更新成功', '5', '192.168.9.123', '2014-08-25 15:24:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c0e28110009', 'Chrome', '权限: 自定义菜单被更新成功', '5', '192.168.9.123', '2014-08-25 15:25:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c0e318a000a', 'Chrome', '权限: 菜单管理被删除成功', '4', '192.168.9.123', '2014-08-25 15:25:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c0ede78000b', 'Chrome', '权限: 企业资料被删除成功', '4', '192.168.9.123', '2014-08-25 15:26:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c0f139e000c', 'Chrome', '权限: 公众帐号管理被更新成功', '5', '192.168.9.123', '2014-08-25 15:26:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c0f2d5f000d', 'Chrome', '权限: 微信公众账号被删除成功', '4', '192.168.9.123', '2014-08-25 15:26:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c0f37bd000e', 'Chrome', '用户admin已退出', '2', '192.168.9.123', '2014-08-25 15:26:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c0f721b000f', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.123', '2014-08-25 15:26:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c0fd80c0010', 'Chrome', '权限: 微配置中心被更新成功', '5', '192.168.9.123', '2014-08-25 15:27:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c0fe3a60011', 'Chrome', '用户admin已退出', '2', '192.168.9.123', '2014-08-25 15:27:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c0fff020012', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.123', '2014-08-25 15:27:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c111f960013', 'Chrome', '权限: 微信消息素材被更新成功', '5', '192.168.9.123', '2014-08-25 15:28:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c112a840014', 'Chrome', '用户admin已退出', '2', '192.168.9.123', '2014-08-25 15:28:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c115b900015', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.123', '2014-08-25 15:28:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c1409740016', 'Chrome', '权限: 微信消息素材被更新成功', '5', '192.168.9.123', '2014-08-25 15:31:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c1415a10017', 'Chrome', '用户admin已退出', '2', '192.168.9.123', '2014-08-25 15:31:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c142d950018', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.123', '2014-08-25 15:32:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c1585e50019', 'Chrome', '权限: 微消息素材被更新成功', '5', '192.168.9.123', '2014-08-25 15:33:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c15cf7e001a', 'Chrome', '权限: 消息管理被更新成功', '5', '192.168.9.123', '2014-08-25 15:33:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c15f229001b', 'Chrome', '权限: 素材管理被更新成功', '5', '192.168.9.123', '2014-08-25 15:33:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c178ea7001c', 'Chrome', '权限: 会员中心被更新成功', '5', '192.168.9.123', '2014-08-25 15:35:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c17dc2b001d', 'Chrome', '权限: 微用户管理被更新成功', '5', '192.168.9.123', '2014-08-25 15:36:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c1824f5001e', 'Chrome', '权限: 用户概况被删除成功', '4', '192.168.9.123', '2014-08-25 15:36:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c183418001f', 'Chrome', '权限: 用户分组被删除成功', '4', '192.168.9.123', '2014-08-25 15:36:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c1840450020', 'Chrome', '权限: 会话记录被删除成功', '4', '192.168.9.123', '2014-08-25 15:36:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c1875ea0021', 'Chrome', '权限: 关注用户管理被更新成功', '5', '192.168.9.123', '2014-08-25 15:36:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c18ab010022', 'Chrome', '权限: 用户分组管理被更新成功', '5', '192.168.9.123', '2014-08-25 15:36:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c18ecb00023', 'Chrome', '权限: 接收消息管理被更新成功', '5', '192.168.9.123', '2014-08-25 15:37:13', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c1998c50025', 'Chrome', '权限: 高级接口被添加成功', '3', '192.168.9.123', '2014-08-25 15:37:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c1a06990026', 'Chrome', '权限: 高级接口被删除成功', '4', '192.168.9.123', '2014-08-25 15:38:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c1a25eb0027', 'Chrome', '权限: 高级接口被更新成功', '5', '192.168.9.123', '2014-08-25 15:38:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c1aa0cc0028', 'Chrome', '权限: 业务扩展接口管理被更新成功', '5', '192.168.9.123', '2014-08-25 15:39:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c1ad0e90029', 'Chrome', '权限: 业务扩展接口管理被更新成功', '5', '192.168.9.123', '2014-08-25 15:39:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c1b5bff002a', 'Chrome', '用户admin已退出', '2', '192.168.9.123', '2014-08-25 15:39:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c1bd1e6002b', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.123', '2014-08-25 15:40:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c1c9c52002c', 'Chrome', '权限: 周边管理被更新成功', '5', '192.168.9.123', '2014-08-25 15:41:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c1cac2e002d', 'Chrome', '用户admin已退出', '2', '192.168.9.123', '2014-08-25 15:41:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c1ceaa2002e', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.123', '2014-08-25 15:41:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c1d54cc002f', 'Chrome', '权限: 微配置中心被更新成功', '5', '192.168.9.123', '2014-08-25 15:42:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c1d798c0030', 'Chrome', '权限: 微消息素材被更新成功', '5', '192.168.9.123', '2014-08-25 15:42:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c1d9f7f0031', 'Chrome', '权限: 微活动被更新成功', '5', '192.168.9.123', '2014-08-25 15:42:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c1db7540032', 'Chrome', '权限: 高级接口被更新成功', '5', '192.168.9.123', '2014-08-25 15:42:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c1dcdc20033', 'Chrome', '权限: 微信网站被更新成功', '5', '192.168.9.123', '2014-08-25 15:42:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c1df45e0034', 'Chrome', '权限: 微信商城被更新成功', '5', '192.168.9.123', '2014-08-25 15:42:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c1e101a0035', 'Chrome', '权限: 统计分析被更新成功', '5', '192.168.9.123', '2014-08-25 15:42:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c1e2ee30036', 'Chrome', '权限: 发送消息被更新成功', '5', '192.168.9.123', '2014-08-25 15:42:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c1e48160037', 'Chrome', '权限: 二维码推广被更新成功', '5', '192.168.9.123', '2014-08-25 15:43:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c1e62970038', 'Chrome', '权限: 会员卡被更新成功', '5', '192.168.9.123', '2014-08-25 15:43:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c1e87c10039', 'Chrome', '权限: 常用示例被更新成功', '5', '192.168.9.123', '2014-08-25 15:43:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c1e9109003a', 'Chrome', '用户admin已退出', '2', '192.168.9.123', '2014-08-25 15:43:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c1f3286003b', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.123', '2014-08-25 15:44:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c2125fa003c', 'Chrome', '相片删除成功', '4', '192.168.9.123', '2014-08-25 15:46:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c212d24003d', 'Chrome', '相片删除成功', '4', '192.168.9.123', '2014-08-25 15:46:13', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c2143cd003e', 'Chrome', '微相册删除成功', '4', '192.168.9.123', '2014-08-25 15:46:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c216e0e003f', 'Chrome', '相片删除成功', '4', '192.168.9.123', '2014-08-25 15:46:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c217d830040', 'Chrome', '相片删除成功', '4', '192.168.9.123', '2014-08-25 15:46:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c2184f10041', 'Chrome', '相片删除成功', '4', '192.168.9.123', '2014-08-25 15:46:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c21b69d0042', 'Chrome', '微相册删除成功', '4', '192.168.9.123', '2014-08-25 15:46:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c22d1220044', 'Chrome', '微相册添加成功', '3', '192.168.9.123', '2014-08-25 15:48:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c22ff9d0046', 'Chrome', '添加成功', '3', '192.168.9.123', '2014-08-25 15:48:13', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c2331c90049', 'Chrome', '添加成功', '3', '192.168.9.123', '2014-08-25 15:48:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c237bff004b', 'Chrome', '相片更新成功', '5', '192.168.9.123', '2014-08-25 15:48:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c2e877d004c', 'Chrome', '权限: 微营销被更新成功', '5', '192.168.9.123', '2014-08-25 16:00:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c30b762004d', 'Chrome', '权限: 微商城被更新成功', '5', '192.168.9.123', '2014-08-25 16:03:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c30cc6a004e', 'Chrome', '权限: 微网站被更新成功', '5', '192.168.9.123', '2014-08-25 16:03:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c313f25004f', 'Chrome', '用户admin已退出', '2', '192.168.9.123', '2014-08-25 16:03:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c321f640050', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.123', '2014-08-25 16:04:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c32d3a50052', 'Chrome', '用户admin已退出', '2', '192.168.9.123', '2014-08-25 16:05:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480bfaf001480c32ec090053', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.123', '2014-08-25 16:05:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480c38fa01480c394d1b0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.123', '2014-08-25 16:12:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480c38fa01480c3cc6300001', 'Chrome', '同步菜单信息数据成功！', '4', '192.168.9.123', '2014-08-25 16:16:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480c38fa01480c3da7e70002', 'Chrome', '权限: 周边管理被更新成功', '5', '192.168.9.123', '2014-08-25 16:17:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480c40eb01480c4184ef0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.123', '2014-08-25 16:21:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480c527801480c52d88d0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.123', '2014-08-25 16:40:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480c663e01480c66e9760000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.123', '2014-08-25 17:02:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480c663e01480c6824840001', 'Chrome', '更新快速开发平台的菜单信息信息成功！', '5', '192.168.9.123', '2014-08-25 17:03:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480c663e01480c68597c0002', 'Chrome', '更新开源微信系统的菜单信息信息成功！', '5', '192.168.9.123', '2014-08-25 17:03:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480c663e01480c697c870003', 'Chrome', '更新社区培训的菜单信息信息成功！', '5', '192.168.9.123', '2014-08-25 17:05:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480c710301480c715e800000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.123', '2014-08-25 17:13:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480c710301480c71cc670001', 'Chrome', '更新开源项目的菜单信息信息成功！', '5', '192.168.9.123', '2014-08-25 17:14:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480c710301480c73e5c10002', 'Chrome', '同步菜单信息数据失败！错误码为：40001错误信息为：invalid credential', '4', '192.168.9.123', '2014-08-25 17:16:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480c710301480c7444900003', 'Chrome', '同步菜单信息数据失败！错误码为：40001错误信息为：invalid credential', '4', '192.168.9.123', '2014-08-25 17:16:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480c710301480c74fe910004', 'Chrome', '同步菜单信息数据失败！错误码为：40001错误信息为：invalid credential', '4', '192.168.9.123', '2014-08-25 17:17:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480c710301480c75cfea0005', 'Chrome', '微信公众帐号信息更新成功', '5', '192.168.9.123', '2014-08-25 17:18:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480c710301480c76fc230006', 'Chrome', '同步菜单信息数据失败！错误码为：40001错误信息为：invalid credential', '4', '192.168.9.123', '2014-08-25 17:19:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480c79b601480c7a042a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.123', '2014-08-25 17:23:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480c79b601480c7a20b80001', 'Chrome', '同步菜单信息数据成功！', '4', '192.168.9.123', '2014-08-25 17:23:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480c79b601480c7af5360002', 'Chrome', '更新微活动的菜单信息信息成功！', '5', '192.168.9.123', '2014-08-25 17:24:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480c79b601480c7b04fc0003', 'Chrome', '同步菜单信息数据成功！', '4', '192.168.9.123', '2014-08-25 17:24:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480c79b601480c7c7b7a0004', 'Chrome', '更新产品的菜单信息信息成功！', '5', '192.168.9.123', '2014-08-25 17:25:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb480c79b601480c7c829c0005', 'Chrome', '同步菜单信息数据成功！', '4', '192.168.9.123', '2014-08-25 17:25:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb4810ab6c014810acd4810000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.123', '2014-08-26 12:57:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb4820bcb3014820bd9d5b0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.123', '2014-08-29 15:49:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb4820bcb3014820c1e6a10001', 'Chrome', '权限: 微社区被更新成功', '5', '192.168.9.123', '2014-08-29 15:54:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb4820bcb3014820c1fbae0002', 'Chrome', '权限: 微调研被更新成功', '5', '192.168.9.123', '2014-08-29 15:54:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb4820bcb3014820c302950021', 'Chrome', '用户admin已退出', '2', '192.168.9.123', '2014-08-29 15:55:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb4820bcb3014820c349310022', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.123', '2014-08-29 15:55:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb4820bcb3014820c3df9c0023', 'Chrome', '权限: 公众帐号管理被更新成功', '5', '192.168.9.123', '2014-08-29 15:56:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb4820bcb3014820c3ea600024', 'Chrome', '用户admin已退出', '2', '192.168.9.123', '2014-08-29 15:56:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb4820bcb3014820c401d10025', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.123', '2014-08-29 15:56:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fb4820bcb3014820c4cee60026', 'Chrome', '微信公众帐号信息更新成功', '5', '192.168.9.123', '2014-08-29 15:57:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fc4734103e01473411c0c40000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.124', '2014-07-14 16:51:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fc4734103e0147341478940003', 'Firefox', '删除信息数据成功', '4', '192.168.9.124', '2014-07-14 16:54:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fc4734103e0147341479dc0004', 'Firefox', '删除信息数据成功', '4', '192.168.9.124', '2014-07-14 16:54:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fc483f6b7501483f6bcb3c0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.124', '2014-09-04 14:48:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fc483f6b7501483f6cf3bb0001', 'Chrome', '微信公众帐号信息更新成功', '5', '192.168.9.124', '2014-09-04 14:49:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fc483f6b7501483f6d11930002', 'Chrome', '同步菜单信息数据成功！', '4', '192.168.9.124', '2014-09-04 14:49:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fc483f6b7501483f6e2d330003', 'Chrome', '同步菜单信息数据成功！', '4', '192.168.9.124', '2014-09-04 14:50:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fc483f6b7501483f81b2ab009d', 'Chrome', '微信公众帐号信息更新成功', '5', '192.168.9.124', '2014-09-04 15:12:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fc483f6b7501483f81d7a700d1', 'Chrome', '同步菜单信息数据成功！', '4', '192.168.9.124', '2014-09-04 15:12:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889fc4867e570014867e5dbc80000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.124', '2014-09-12 11:26:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728a3d1c90000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 11:35:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728a46c520001', 'Chrome', '权限: 文本消息被更新成功', '5', '192.168.9.127', '2014-07-12 11:36:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728a48b0c0002', 'Chrome', '权限: 图文消息被更新成功', '5', '192.168.9.127', '2014-07-12 11:36:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728a4a7b50003', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:36:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728ab3dbe0006', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:43:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728ab47f30007', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:43:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728ab72600008', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:43:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728ab9d040009', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:44:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728abc608000a', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:44:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728abd265000b', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:44:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728af52b3000c', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:48:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728af6535000d', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:48:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728af7a82000e', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:48:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728af8734000f', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:48:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728af8eda0010', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:48:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728afa4dd0011', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:48:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728afe92f0012', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:48:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728aff7370013', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:48:46', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728afff480014', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:48:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728b00a100015', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:48:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728b01a710016', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:48:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728b0415b0017', 'Chrome', '修改关键字回复成功！', '5', '192.168.9.127', '2014-07-12 11:49:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728b05a0d0018', 'Chrome', '修改关键字回复成功！', '5', '192.168.9.127', '2014-07-12 11:49:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728b0663e0019', 'Chrome', '修改关键字回复成功！', '5', '192.168.9.127', '2014-07-12 11:49:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728b0708e001a', 'Chrome', '修改关键字回复成功！', '5', '192.168.9.127', '2014-07-12 11:49:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728b20122001d', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:51:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728b2088c001e', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:51:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728b20f7b001f', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:51:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728b436990022', 'Chrome', '权限: 微信商城被更新成功', '5', '192.168.9.127', '2014-07-12 11:53:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728b455730023', 'Chrome', '权限: 微信CMS被更新成功', '5', '192.168.9.127', '2014-07-12 11:53:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728b47d3c0024', 'Chrome', '用户admin已退出', '2', '192.168.9.127', '2014-07-12 11:53:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728b497bc0025', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 11:53:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728b4d76f0026', 'Chrome', '权限: 基础设置被更新成功', '5', '192.168.9.127', '2014-07-12 11:54:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728b4eb280027', 'Chrome', '权限: 菜单管理被更新成功', '5', '192.168.9.127', '2014-07-12 11:54:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728b58db10028', 'Chrome', '权限: Online 开发被更新成功', '5', '192.168.9.127', '2014-07-12 11:54:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728b5cf500029', 'Chrome', '权限: 微信网站被更新成功', '5', '192.168.9.127', '2014-07-12 11:55:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728b5df56002a', 'Chrome', '用户admin已退出', '2', '192.168.9.127', '2014-07-12 11:55:13', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728b68b9d002b', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 11:55:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728b8aeb6002c', 'Chrome', '修改关文本模板成功！', '5', '192.168.9.127', '2014-07-12 11:58:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728b8be01002d', 'Chrome', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 11:58:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728baa5300030', 'Chrome', '更新我的大转盘的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 12:00:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728bace3a0031', 'Chrome', '更新微CMS的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 12:00:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728bafe2c0032', 'Chrome', '更新微活动的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 12:00:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728bb20160033', 'Chrome', '更新微商城的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 12:00:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728bbb73f0035', 'Chrome', '添加查天气的信息成功！', '3', '192.168.9.127', '2014-07-12 12:01:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728bc62680037', 'Chrome', '添加联系我们的信息成功！', '3', '192.168.9.127', '2014-07-12 12:02:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728bcb34c0039', 'Chrome', '添加联系我们的信息成功！', '3', '192.168.9.127', '2014-07-12 12:02:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728e02c65003a', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 12:41:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728a293014728e55ce2003b', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 12:47:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728e9ee014728ea82d90000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 12:52:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728ebee014728ec763c0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 12:54:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728ee6b014728f0025e0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 12:58:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728f237014728f283db0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 13:01:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728f237014728f2d3fd0002', 'Firefox', '添加开源项目的信息成功！', '3', '192.168.9.127', '2014-07-12 13:01:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728f237014728f3015b0003', 'Firefox', '更新开源项目的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 13:02:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728f237014728f314560004', 'Firefox', '更新微活动的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 13:02:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728f237014728f324df0005', 'Firefox', '更新联系我们的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 13:02:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728f237014728f4ba310007', 'Firefox', '添加捷微jeeWX的信息成功！', '3', '192.168.9.127', '2014-07-12 13:03:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728f237014728f52c640009', 'Firefox', '添加企业快速开发平台的信息成功！', '3', '192.168.9.127', '2014-07-12 13:04:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728f237014728f5a95a000a', 'Firefox', '更新联系我们的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 13:04:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728f237014728f60f56000c', 'Firefox', '添加社区培训的信息成功！', '3', '192.168.9.127', '2014-07-12 13:05:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728f237014728f61bde000d', 'Firefox', '同步菜单信息数据失败！', '4', '192.168.9.127', '2014-07-12 13:05:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728f237014728f8e092000f', 'Firefox', '扩展接口管理添加成功', '3', '192.168.9.127', '2014-07-12 13:08:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728f237014729029dd30011', 'Firefox', '添加刮刮乐的信息成功！', '3', '192.168.9.127', '2014-07-12 13:19:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728f23701472903092a0012', 'Firefox', '删除查天气菜单信息数据', '4', '192.168.9.127', '2014-07-12 13:19:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728f2370147290349b50013', 'Firefox', '更新大转盘的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 13:19:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728f237014729039ccb0015', 'Firefox', '添加营销工具的信息成功！', '3', '192.168.9.127', '2014-07-12 13:20:08', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728f23701472906878f0016', 'Firefox', '同步菜单信息数据失败！', '4', '192.168.9.127', '2014-07-12 13:23:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728f23701472908756c0017', 'Firefox', '微信公众帐号信息更新成功', '5', '192.168.9.127', '2014-07-12 13:25:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728f23701472909966e0019', 'Firefox', '类型分组: 微信公众账号类型被添加成功', '3', '192.168.9.127', '2014-07-12 13:26:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728f23701472909d8a8001b', 'Firefox', '类型分组: 服务号被添加成功', '3', '192.168.9.127', '2014-07-12 13:26:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728f23701472909ee60001c', 'Firefox', '数据字典分组: 服务号被删除 成功', '4', '192.168.9.127', '2014-07-12 13:27:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728f2370147290a0fb6001e', 'Firefox', '类型: 1被添加成功', '3', '192.168.9.127', '2014-07-12 13:27:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728f2370147290a2d9f0020', 'Firefox', '类型: 2被添加成功', '3', '192.168.9.127', '2014-07-12 13:27:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728f2370147290ac9190021', 'Firefox', '类型: 服务号被更新成功', '5', '192.168.9.127', '2014-07-12 13:27:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728f2370147290ae8500022', 'Firefox', '类型: 订阅号被更新成功', '5', '192.168.9.127', '2014-07-12 13:28:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4728f2370147290b08140023', 'Firefox', '微信公众帐号信息更新成功', '5', '192.168.9.127', '2014-07-12 13:28:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff47290bbf0147290c5a780000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 13:29:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff472928ab01472928fce50000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 14:00:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff47292ef10147292f5bcc0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 14:07:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4729328401472933d1900000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 14:12:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4729376601472937d0e60000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 14:17:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff472939aa0147293a00060000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 14:19:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff47293de30147293e633a0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 14:24:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff47294b5c0147294bc2df0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 14:38:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff47294cb20147294d0fb90000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 14:40:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4729505d01472950c6810000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 14:44:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff472953b401472954cc520000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 14:48:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff47295aa80147295af83c0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 14:55:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff47295db40147295e20af0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 14:59:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff47295db40147295e7fc40002', 'Firefox', '活动添加成功', '3', '192.168.9.127', '2014-07-12 14:59:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4729668a01472966d77a0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 15:08:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff47296a4f0147296ac2a40000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 15:12:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff47297515014729759d050000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 15:24:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff472975150147297654c70003', 'Firefox', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 15:25:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff472978290147297893f20000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 15:27:53', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4729782901472979ed520002', 'Firefox', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 15:29:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff472978290147297d66970005', 'Firefox', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 15:33:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff472978290147297d7fa50006', 'Firefox', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 15:33:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff472978290147297d93990007', 'Firefox', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 15:33:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff472978290147297da7d80008', 'Firefox', '删除信息数据成功！', '4', '192.168.9.127', '2014-07-12 15:33:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4729834501472983d7e00000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 15:40:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4729929c014729931f250000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 15:56:53', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4729929c0147299360340001', 'Firefox', '同步菜单信息数据失败！', '4', '192.168.9.127', '2014-07-12 15:57:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff47299a8a0147299b51420000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 16:05:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff47299a8a0147299bb2570001', 'Firefox', '同步菜单信息数据失败！', '4', '192.168.9.127', '2014-07-12 16:06:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff47299a8a0147299e45970002', 'Firefox', '同步菜单信息数据失败！', '4', '192.168.9.127', '2014-07-12 16:09:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff47299a8a014729a141620003', 'Firefox', '更新开源项目的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 16:12:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff47299a8a014729a169390004', 'Firefox', '更新捷微jeeWX的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 16:12:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff47299a8a014729a185df0005', 'Firefox', '更新企业快速开发平台的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 16:12:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff47299a8a014729a1a2f80006', 'Firefox', '更新微活动的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 16:12:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff47299a8a014729a1c0bb0007', 'Firefox', '更新营销工具的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 16:12:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff47299a8a014729a1daf50008', 'Firefox', '更新微商城的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 16:12:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff47299a8a014729a201060009', 'Firefox', '更新微网站的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 16:13:08', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff47299a8a014729a21894000a', 'Firefox', '更新刮刮乐的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 16:13:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff47299a8a014729a23350000b', 'Firefox', '更新关于我们的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 16:13:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff47299a8a014729a2518e000c', 'Firefox', '更新社区培训的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 16:13:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff47299a8a014729a27006000d', 'Firefox', '更新联系我们的菜单信息信息成功！', '5', '192.168.9.127', '2014-07-12 16:13:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff47299a8a014729a279b8000e', 'Firefox', '同步菜单信息数据失败！', '4', '192.168.9.127', '2014-07-12 16:13:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff47299a8a014729a2c176000f', 'Firefox', '同步菜单信息数据失败！', '4', '192.168.9.127', '2014-07-12 16:13:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff47299a8a014729a33fa90010', 'Firefox', '同步菜单信息数据失败！', '4', '192.168.9.127', '2014-07-12 16:14:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff47299a8a014729a3556b0011', 'Firefox', '同步菜单信息数据成功！', '4', '192.168.9.127', '2014-07-12 16:14:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4729fcdc014729fe78740000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 17:54:08', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4729fcdc01472a06d89a0001', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 18:03:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff4729fcdc01472a07536e0002', 'Firefox', '微信公众帐号信息更新成功', '5', '192.168.9.127', '2014-07-12 18:03:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff472a277501472a2800180000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 18:39:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff472a2e7601472a2ede9c0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 18:47:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff472ac43501472ac4989f0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 21:30:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff472ac43501472ac581010001', 'Firefox', '扩展接口管理更新成功', '5', '192.168.9.127', '2014-07-12 21:31:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff472ac43501472ac592270002', 'Firefox', '扩展接口管理更新成功', '5', '192.168.9.127', '2014-07-12 21:31:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff472ac43501472ac5a8340003', 'Firefox', '扩展接口管理更新成功', '5', '192.168.9.127', '2014-07-12 21:31:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff472ac43501472ac5bec20004', 'Firefox', '扩展接口管理更新成功', '5', '192.168.9.127', '2014-07-12 21:31:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff472ac43501472ac5cfc80005', 'Firefox', '扩展接口管理更新成功', '5', '192.168.9.127', '2014-07-12 21:31:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff472ac43501472ac5f9060006', 'Firefox', '扩展接口管理更新成功', '5', '192.168.9.127', '2014-07-12 21:32:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff472ac43501472ac626fc0007', 'Firefox', '扩展接口管理更新成功', '5', '192.168.9.127', '2014-07-12 21:32:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff472ac43501472ac654d10008', 'Firefox', '扩展接口管理更新成功', '5', '192.168.9.127', '2014-07-12 21:32:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff472ac43501472ac675e40009', 'Firefox', '扩展接口管理更新成功', '5', '192.168.9.127', '2014-07-12 21:32:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff472ac43501472ac68a3b000a', 'Firefox', '扩展接口管理更新成功', '5', '192.168.9.127', '2014-07-12 21:32:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff472ac90001472aca175a0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 21:36:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff472ad38401472ad3fc5f0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 21:47:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff472ad38401472ae7258f0001', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 22:08:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('402889ff472b0f1c01472b0fdd640000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.127', '2014-07-12 22:52:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc064763323001476332f4130000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.60.134', '2014-07-23 20:29:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc0647633a790147633afa130000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.60.134', '2014-07-23 20:38:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc0647633a7901476344ed290006', 'Firefox', '删除信息数据成功！', '4', '192.168.60.134', '2014-07-23 20:49:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc0647633a7901476344f8ae0007', 'Firefox', '删除信息数据成功！', '4', '192.168.60.134', '2014-07-23 20:49:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc0647633a790147634529d00009', 'Firefox', '修改关键字回复成功！', '5', '192.168.60.134', '2014-07-23 20:49:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc0647633a79014763453777000a', 'Firefox', '删除信息数据成功！', '4', '192.168.60.134', '2014-07-23 20:49:46', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc0647633a79014763455d03000c', 'Firefox', '扩展接口管理添加成功', '3', '192.168.60.134', '2014-07-23 20:49:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc0647633a79014763457026000d', 'Firefox', '扩展接口管理更新成功', '5', '192.168.60.134', '2014-07-23 20:50:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc0647633a79014763458628000e', 'Firefox', '扩展接口管理删除成功', '4', '192.168.60.134', '2014-07-23 20:50:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc0647633a7901476345bd530010', 'Firefox', '修改关文本模板成功！', '5', '192.168.60.134', '2014-07-23 20:50:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc0647633a7901476345c7630011', 'Firefox', '删除信息数据成功！', '4', '192.168.60.134', '2014-07-23 20:50:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc0647633a7901476345fd250013', 'Firefox', '添加1221的信息成功！', '3', '192.168.60.134', '2014-07-23 20:50:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc0647633a7901476346349a0014', 'Firefox', '更新1221的菜单信息信息成功！', '5', '192.168.60.134', '2014-07-23 20:50:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc0647633a7901476346ea220015', 'Firefox', '删除1221菜单信息数据', '4', '192.168.60.134', '2014-07-23 20:51:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc0647633a790147634749f40017', 'Firefox', '修改关文本模板成功！', '5', '192.168.60.134', '2014-07-23 20:52:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc0647633a790147634753770018', 'Firefox', '删除信息数据成功！', '4', '192.168.60.134', '2014-07-23 20:52:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc06476349dc0147634a7b4d0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.60.134', '2014-07-23 20:55:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc0647634d250147634de3cd0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.60.134', '2014-07-23 20:59:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc06476353c00147635427a40000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.60.134', '2014-07-23 21:06:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc064763571d0147635779670000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.60.134', '2014-07-23 21:09:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc064763571d01476357d5430002', 'Firefox', '修改图文模板成功！', '5', '192.168.60.134', '2014-07-23 21:10:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc064763571d01476358bc6c0005', 'Firefox', '微信单图消息添加成功', '3', '192.168.60.134', '2014-07-23 21:11:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc0647635da50147635e2e9f0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.60.134', '2014-07-23 21:17:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc0647635da50147636036890001', 'Firefox', '购物车 删除成功', '4', '192.168.60.134', '2014-07-23 21:19:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc0647635da5014763603f7a0002', 'Firefox', '购物车 删除成功', '4', '192.168.60.134', '2014-07-23 21:19:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc0647635da50147636049f70003', 'Firefox', '购物车 删除成功', '4', '192.168.60.134', '2014-07-23 21:19:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc06476362cd0147636343fc0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.60.134', '2014-07-23 21:22:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc06476362cd0147636429280001', 'Firefox', '权限: 购物车管理被更新成功', '5', '192.168.60.134', '2014-07-23 21:23:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc06476362cd0147636443760002', 'Firefox', '用户admin已退出', '2', '192.168.60.134', '2014-07-23 21:23:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc06476362cd0147636462930003', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.60.134', '2014-07-23 21:23:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc06476362cd0147636578720004', 'Firefox', '权限: 微网站配置被更新成功', '5', '192.168.60.134', '2014-07-23 21:25:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc06476362cd01476365b5240005', 'Firefox', '权限: 微网站模板被更新成功', '5', '192.168.60.134', '2014-07-23 21:25:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc06476362cd01476365da9e0006', 'Firefox', '权限: 微网站信息被更新成功', '5', '192.168.60.134', '2014-07-23 21:25:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc06476362cd01476365faae0007', 'Firefox', '用户admin已退出', '2', '192.168.60.134', '2014-07-23 21:25:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc06476362cd01476366257b0008', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.60.134', '2014-07-23 21:25:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc06476362cd01476366db320009', 'Firefox', '权限: 微网站信息被更新成功', '5', '192.168.60.134', '2014-07-23 21:26:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc06476362cd014763674561000a', 'Firefox', '权限: 文章管理被更新成功', '5', '192.168.60.134', '2014-07-23 21:26:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc06476362cd01476367a228000b', 'Firefox', '权限: 微网站模板被更新成功', '5', '192.168.60.134', '2014-07-23 21:27:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc06476362cd014763680c3a000c', 'Firefox', '用户admin已退出', '2', '192.168.60.134', '2014-07-23 21:27:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc06476362cd014763683635000d', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.60.134', '2014-07-23 21:27:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc06476362cd014763697ee5000e', 'Firefox', '用户admin已退出', '2', '192.168.60.134', '2014-07-23 21:29:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc06476362cd01476369a4a6000f', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.60.134', '2014-07-23 21:29:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc06476362cd0147636b0e450010', 'Firefox', '微站点模板删除成功', '4', '192.168.60.134', '2014-07-23 21:31:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc06476362cd0147636b30310011', 'Firefox', '微站点信息更新成功', '5', '192.168.60.134', '2014-07-23 21:31:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc06476362cd0147636ceb710012', 'Firefox', '权限: 商品分类被更新成功', '5', '192.168.60.134', '2014-07-23 21:33:08', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc06476362cd0147636d2e180013', 'Firefox', '权限: 商品信息被更新成功', '5', '192.168.60.134', '2014-07-23 21:33:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc06476362cd0147636f66420014', 'Firefox', '权限: 购物车管理被更新成功', '5', '192.168.60.134', '2014-07-23 21:35:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc06476362cd01476372abdc0015', 'Firefox', '用户admin已退出', '2', '192.168.60.134', '2014-07-23 21:39:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc06476362cd01476372d50c0016', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.60.134', '2014-07-23 21:39:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc06476362cd0147637352850017', 'Firefox', '权限: 网站信息被更新成功', '5', '192.168.60.134', '2014-07-23 21:40:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc06476362cd0147637379410018', 'Firefox', '权限: 网站模板被更新成功', '5', '192.168.60.134', '2014-07-23 21:40:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bc0647637a8d014763808f2a0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.60.134', '2014-07-23 21:54:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bcdb47d3c86b0147d3c8e0910000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.60.91', '2014-08-14 17:11:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bcdb47d3c86b0147d3cdc6700001', 'Chrome', '同步菜单信息数据成功！', '4', '192.168.60.91', '2014-08-14 17:16:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bcdb47d3c86b0147d3cfaafc0003', 'Chrome', '添加微相册的信息成功！', '3', '192.168.60.91', '2014-08-14 17:18:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bcdb47d3c86b0147d3cfbad70004', 'Chrome', '同步菜单信息数据成功！', '4', '192.168.60.91', '2014-08-14 17:18:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bcdb47d3fa840147d3faf5bc0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.60.91', '2014-08-14 18:05:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bce447cf2b170147cf44d8220000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.60.100', '2014-08-13 20:08:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bce447cf2b170147cf4518f80001', 'Chrome', '用户admin已退出', '2', '192.168.60.100', '2014-08-13 20:08:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bce447cf8bda0147cf8d03f70000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.60.100', '2014-08-13 21:27:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bce447cf8bda0147cf8ecb2e0005', 'Chrome', '用户admin已退出', '2', '192.168.60.100', '2014-08-13 21:29:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028bce447cf8bda0147cf9049620008', 'Chrome', '用户: 1111添加成功', '3', '192.168.60.100', '2014-08-13 21:30:45', '1', null);
INSERT INTO t_s_log VALUES ('4028d881436d514601436d52187300c5', 'Chrome', '用户: admin登录成功', '1', '169.254.200.136', '2013-04-24 16:22:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d52187c00c6', 'Chrome', '用户: admin登录成功', '1', '10.10.10.1', '2013-04-24 17:12:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d52187d00c7', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-10 15:37:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d52187f00c8', 'Chrome', '用户admin已退出', '2', '169.254.218.201', '2013-03-10 15:38:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d52188000c9', 'MSIE 9.0', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-10 15:38:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d52188200ca', 'MSIE 9.0', 'JeecgDemo例子: 12被删除 成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d52188400cb', 'MSIE 9.0', 'JeecgDemo例子: 12被删除 成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d52188600cc', 'Chrome', 'JeecgDemo例子: 12被删除 成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d52188700cd', 'MSIE 9.0', '权限: 单表模型被更新成功', '5', '169.254.218.201', '2013-03-10 15:39:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d52188800ce', 'Chrome', '删除成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d52188900cf', 'MSIE 9.0', '删除成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d52188b00d0', 'Chrome', '删除成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d52188c00d1', 'Firefox', '删除成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d52188e00d2', 'Chrome', '添加成功', '3', '169.254.218.201', '2013-03-10 15:40:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d52188f00d3', 'Chrome', '更新成功', '5', '169.254.218.201', '2013-03-10 15:40:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d52189100d4', 'Chrome', 'JeecgDemo例子: 12被添加成功', '3', '169.254.218.201', '2013-03-10 15:40:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d52189400d5', 'Chrome', '部门: 信息部被更新成功', '5', '169.254.218.201', '2013-03-10 15:41:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d52189600d6', 'Chrome', '部门: 设计部被更新成功', '5', '169.254.218.201', '2013-03-10 15:41:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d52189800d7', 'Chrome', '类型: 信息部流程被更新成功', '5', '169.254.218.201', '2013-03-10 15:46:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d52189a00d8', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-10 15:48:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d52189c00d9', 'Firefox', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-21 23:23:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d52189d00da', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-21 23:26:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d52189f00db', 'Chrome', '权限: 一对多实例被添加成功', '3', '169.254.218.201', '2013-03-21 23:28:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218a100dc', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 08:25:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218a300dd', 'Firefox', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 09:05:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218a500de', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 09:09:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218a600df', 'MSIE 8.0', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 09:28:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218a700e0', 'Firefox', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 10:32:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218a900e1', 'Chrome', '物品: 笔记本添加成功', '3', '169.254.218.201', '2013-03-22 10:35:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218aa00e2', 'Firefox', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 10:41:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218ab00e3', 'Firefox', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 16:11:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218ac00e4', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 21:49:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218ae00e5', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 23:17:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218af00e6', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 23:27:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218b100e7', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-23 00:16:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218b200e8', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-23 00:22:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218b300e9', 'Firefox', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-23 00:31:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218b400ea', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-23 14:23:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218b600eb', 'Chrome', '流程参数: 主任审批被添加成功', '3', '169.254.218.201', '2013-03-23 15:05:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218b800ec', 'Firefox', '业务参数: 入职申请被添加成功', '3', '169.254.218.201', '2013-03-23 15:05:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218bb00ed', 'Chrome', '权限: 入职申请被添加成功', '3', '169.254.218.201', '2013-03-23 15:12:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218bc00ee', 'Firefox', '权限: 入职办理被添加成功', '3', '169.254.218.201', '2013-03-23 15:13:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218be00ef', 'Chrome', '用户: admin登录成功', '1', '10.10.10.1', '2013-05-06 15:27:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218c000f0', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 15:16:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218c200f1', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:02:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218c400f2', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:07:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218c600f3', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:09:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218c800f4', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:11:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218ca00f5', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:13:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218cc00f6', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:16:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218cd00f7', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:19:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218ce00f8', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:27:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218d100f9', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:42:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218d200fa', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:44:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218d300fb', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:49:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218d500fc', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:50:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218d600fd', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:53:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218d700fe', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 16:56:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218d900ff', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:59:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218da0100', 'MSIE 8.0', '创建成功', '3', '192.168.197.1', '2013-07-07 17:22:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218dc0101', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 17:26:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218de0102', 'MSIE 8.0', '删除成功', '4', '192.168.197.1', '2013-07-07 17:31:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218df0103', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 17:35:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218e00104', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 17:46:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218e20105', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 17:55:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218e30106', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 18:08:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218e40107', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 18:13:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218e60108', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 18:15:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218e70109', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 18:28:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218e9010a', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 18:29:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218ed010b', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 18:30:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218f0010c', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 18:31:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218f3010d', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 18:31:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218f5010e', 'MSIE 9.0', '物品: 555添加成功', '3', '192.168.1.103', '2013-03-20 23:03:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218f7010f', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-20 23:19:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218f80110', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 20:09:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218fa0111', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 20:27:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218fb0112', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 20:44:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218fc0113', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 20:54:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218fe0114', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 21:01:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5218ff0115', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 21:13:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5219010116', 'MSIE 9.0', '物品: 55添加成功', '3', '192.168.1.103', '2013-03-21 21:15:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5219040117', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 21:22:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5219060118', 'MSIE 9.0', '物品: 55添加成功', '3', '192.168.1.103', '2013-03-21 21:23:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5219080119', 'MSIE 9.0', '物品: 33添加成功', '3', '192.168.1.103', '2013-03-21 21:23:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d521909011a', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 21:25:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d52190b011b', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 21:27:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d52190c011c', 'MSIE 9.0', '权限: 采购审批被添加成功', '3', '192.168.1.103', '2013-03-21 21:29:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d52190d011d', 'MSIE 9.0', '权限: 采购审批被更新成功', '5', '192.168.1.103', '2013-03-21 21:29:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d52190f011e', 'MSIE 9.0', '权限: 采购审批被更新成功', '5', '192.168.1.103', '2013-03-21 21:30:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d521910011f', 'MSIE 9.0', '用户: admin更新成功', '5', '192.168.1.103', '2013-03-21 21:31:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5219130120', 'MSIE 9.0', '流程参数: 采购审批员审批被添加成功', '3', '192.168.1.103', '2013-03-21 21:36:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5219150121', 'MSIE 9.0', '流程参数: 采购审批员审批被更新成功', '5', '192.168.1.103', '2013-03-21 21:36:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5219170122', 'MSIE 9.0', '流程参数: 采购审批员审批被更新成功', '5', '192.168.1.103', '2013-03-21 21:37:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5219190123', 'MSIE 9.0', '流程类别: 采购审批员审批被删除 成功', '4', '192.168.1.103', '2013-03-21 21:38:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d52191c0124', 'MSIE 9.0', '物品: 44添加成功', '3', '192.168.1.103', '2013-03-21 21:43:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d52191e0125', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.105', '2013-02-07 10:10:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5219200126', 'MSIE 9.0', '权限: 上传下载被添加成功', '3', '192.168.1.105', '2013-02-07 11:07:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5219210127', 'MSIE 9.0', '权限: 插件演示被删除成功', '4', '192.168.1.105', '2013-02-07 11:07:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5219230128', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.105', '2013-02-07 11:07:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d522e440180', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-07 23:28:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d52c3440182', 'Chrome', '权限: 基础设置被添加成功', '3', '192.168.88.1', '2014-01-07 23:29:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d539c950184', 'Chrome', '权限: 菜单管理被添加成功', '3', '192.168.88.1', '2014-01-07 23:30:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d53cfd20186', 'Chrome', '权限: 关键字应答被添加成功', '3', '192.168.88.1', '2014-01-07 23:30:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d53ff2f0188', 'Chrome', '权限: 发送消息被添加成功', '3', '192.168.88.1', '2014-01-07 23:30:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d544978018a', 'Chrome', '权限: 微活动1被添加成功', '3', '192.168.88.1', '2014-01-07 23:31:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5485f3018c', 'Chrome', '权限: 会员管理被添加成功', '3', '192.168.88.1', '2014-01-07 23:31:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d54b207018e', 'Chrome', '权限: 统计分析被添加成功', '3', '192.168.88.1', '2014-01-07 23:31:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d54e1080190', 'Chrome', '权限: 账号管理被添加成功', '3', '192.168.88.1', '2014-01-07 23:31:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5619b80192', 'Chrome', '权限: 关注欢迎语被添加成功', '3', '192.168.88.1', '2014-01-07 23:33:15', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d56559f0194', 'Chrome', '权限: 未识别回复语被添加成功', '3', '192.168.88.1', '2014-01-07 23:33:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d569e610195', 'Chrome', '权限: 关注欢迎语被更新成功', '5', '192.168.88.1', '2014-01-07 23:33:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d56c7540196', 'Chrome', '权限: 未识别回复语被更新成功', '5', '192.168.88.1', '2014-01-07 23:34:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d571b010198', 'Chrome', '权限: 内容库管理被添加成功', '3', '192.168.88.1', '2014-01-07 23:34:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d574c5f019a', 'Chrome', '权限: 取消关注回复语被添加成功', '3', '192.168.88.1', '2014-01-07 23:34:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d585d05019c', 'Chrome', '权限: 自动应答菜单被添加成功', '3', '192.168.88.1', '2014-01-07 23:35:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d588500019e', 'Chrome', '权限: 自定义菜单被添加成功', '3', '192.168.88.1', '2014-01-07 23:35:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d58cfd801a0', 'Chrome', '权限: 关键字应答被添加成功', '3', '192.168.88.1', '2014-01-07 23:36:13', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d58ff9e01a2', 'Chrome', '权限: 群发消息被添加成功', '3', '192.168.88.1', '2014-01-07 23:36:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d592c4301a4', 'Chrome', '权限: 单发消息被添加成功', '3', '192.168.88.1', '2014-01-07 23:36:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d59987501a6', 'Chrome', '权限: 微大转盘被添加成功', '3', '192.168.88.1', '2014-01-07 23:37:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d59d73801a8', 'Chrome', '权限: 微信刮刮乐被添加成功', '3', '192.168.88.1', '2014-01-07 23:37:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5a192c01aa', 'Chrome', '权限: 数据统计被添加成功', '3', '192.168.88.1', '2014-01-07 23:37:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5a5c8501ac', 'Chrome', '权限: 用户概况被添加成功', '3', '192.168.88.1', '2014-01-07 23:37:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5a872001ae', 'Chrome', '权限: 用户分组被添加成功', '3', '192.168.88.1', '2014-01-07 23:38:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5ac02801b0', 'Chrome', '权限: 会话记录被添加成功', '3', '192.168.88.1', '2014-01-07 23:38:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5af99501b2', 'Chrome', '权限: 接口配置被添加成功', '3', '192.168.88.1', '2014-01-07 23:38:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5b3bb401b4', 'Chrome', '权限: 企业资料被添加成功', '3', '192.168.88.1', '2014-01-07 23:38:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5ce5f601ce', 'Chrome', '用户admin已退出', '2', '192.168.88.1', '2014-01-07 23:40:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5d276a01cf', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-07 23:40:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5dfdb701d0', 'Chrome', '权限: 微活动被更新成功', '5', '192.168.88.1', '2014-01-07 23:41:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5e419901d1', 'Chrome', '权限: 系统管理被更新成功', '5', '192.168.88.1', '2014-01-07 23:42:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5e5c3c01d2', 'Chrome', '用户admin已退出', '2', '192.168.88.1', '2014-01-07 23:42:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d5e6dfa01d3', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-07 23:42:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d61ad3701d4', 'Chrome', '权限: 自动应答菜单被更新成功', '5', '192.168.88.1', '2014-01-07 23:45:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d514601436d61c65901d5', 'Chrome', '权限: 自定义菜单被更新成功', '5', '192.168.88.1', '2014-01-07 23:46:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d7bbd01436d7c3ba70000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-08 00:14:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d7bbd01436d7cad630001', 'Chrome', '权限: 微信菜单被删除成功', '4', '192.168.88.1', '2014-01-08 00:15:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d7bbd01436d7d344a0003', 'Chrome', '权限: 素材管理被添加成功', '3', '192.168.88.1', '2014-01-08 00:15:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d7bbd01436d7d81fe0004', 'Chrome', '权限: 素材管理被更新成功', '5', '192.168.88.1', '2014-01-08 00:16:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d7bbd01436d7dc4910006', 'Chrome', '用户admin已退出', '2', '192.168.88.1', '2014-01-08 00:16:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d7bbd01436d7dd6840007', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-08 00:16:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d7f5a01436d7f9fa60000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-08 00:18:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d7f5a01436d8003090001', 'Chrome', '权限: 内容库管理被删除成功', '4', '192.168.88.1', '2014-01-08 00:19:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d7f5a01436d80ef0c0002', 'Chrome', '权限: 素材管理被更新成功', '5', '192.168.88.1', '2014-01-08 00:20:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d7f5a01436d81011e0003', 'Chrome', '用户admin已退出', '2', '192.168.88.1', '2014-01-08 00:20:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d7f5a01436d8112660004', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-08 00:20:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d823c01436d827dc60000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-08 00:21:45', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881436d823c01436d8481b30002', 'Chrome', '微信素材添加成功', '3', '192.168.88.1', '2014-01-08 00:23:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881439b285601439b296cb30000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-16 21:06:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881439b285601439b2d8c830001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-16 21:11:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881439b389601439b39332c0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-16 21:24:13', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881439b3a1601439b3a5deb0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-16 21:25:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881439b3a1601439b3b9fe50001', 'Chrome', '微信单图消息删除成功', '4', '192.168.88.1', '2014-01-16 21:26:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d88143a83cad0143a83d55b00000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-19 10:03:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d88143a83cad0143a83d7ba10001', 'Chrome', '微信单图消息删除成功', '4', '192.168.88.1', '2014-01-19 10:03:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d88143a83cad0143a84123050005', 'Chrome', '用户admin已退出', '2', '192.168.88.1', '2014-01-19 10:07:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d88143a83cad0143a84135f40006', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-19 10:08:02', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d88143a83cad0143a842884b0009', 'Chrome', '用户admin已退出', '2', '192.168.88.1', '2014-01-19 10:09:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d88143a83cad0143a842995f000a', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-19 10:09:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d88143a904ff0143a905b6090000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-19 13:42:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d88143bc9a910143bc9af4130000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-01-23 08:58:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881448cf61c01448cf6e6ed0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-03-04 19:59:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d88146dce1940146dce1e75c0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-06-27 18:32:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d88146dce1940146dcebf6710001', 'Chrome', '用户admin已退出', '2', '192.168.88.1', '2014-06-27 18:43:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d88146dd21330146dd21856a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-06-27 19:41:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d8814710f69f014710f77c450000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-07 21:16:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881472b634601472b63b9c50000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-13 00:24:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881472b679501472b67fd580000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-13 00:29:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881472b8aaf01472b8bd7280000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-13 01:08:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881472f0d8101472f13ea1b0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-13 17:35:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881472f0d8101472f14a4650001', 'Firefox', '删除信息数据成功！', '4', '192.168.88.1', '2014-07-13 17:36:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881472f0d8101472f154b520004', 'Firefox', '微信单图消息添加成功', '3', '192.168.88.1', '2014-07-13 17:37:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881472f0d8101472f200b4f0007', 'Firefox', '微信单图消息添加成功', '3', '192.168.88.1', '2014-07-13 17:48:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881472f0d8101472f219e1b000a', 'Firefox', '微信单图消息添加成功', '3', '192.168.88.1', '2014-07-13 17:50:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881472f2eb101472f2f492b0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-13 18:05:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881472f356e01472f35e58f0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-13 18:12:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881472f356e01472f36d1aa0004', 'Firefox', '微信单图消息添加成功', '3', '192.168.88.1', '2014-07-13 18:13:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881472f356e01472f3a1a3b0005', 'Firefox', '微信单图消息删除成功', '4', '192.168.88.1', '2014-07-13 18:17:22', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881472f356e01472f4289960008', 'Firefox', '微信单图消息更新成功', '5', '192.168.88.1', '2014-07-13 18:26:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881472f356e01472f431322000a', 'Firefox', '微信单图消息更新成功', '5', '192.168.88.1', '2014-07-13 18:27:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881472f451c01472f459c790000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-13 18:29:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881472f451c01472f495eee0002', 'Firefox', '微信单图消息更新成功', '5', '192.168.88.1', '2014-07-13 18:34:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881472f674b01472f67ba5e0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-13 19:07:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881472f6b2001472f6b818f0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-13 19:11:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881472f712001472f71b7840000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-13 19:18:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881472f712001472f71f60e0001', 'Firefox', '微信单图消息删除成功', '4', '192.168.88.1', '2014-07-13 19:18:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881472f712001472f7201550002', 'Firefox', '微信单图消息删除成功', '4', '192.168.88.1', '2014-07-13 19:18:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881472f84d101472fb41e900000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-13 20:30:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881472f84d101472fb4aea30001', 'Firefox', '商城会员删除成功', '4', '192.168.88.1', '2014-07-13 20:31:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881472f84d101472fb4bf5d0002', 'Firefox', '商城会员删除成功', '4', '192.168.88.1', '2014-07-13 20:31:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881472f84d101472fb549b70003', 'Firefox', '更新捷微jeeWX的菜单信息信息成功！', '5', '192.168.88.1', '2014-07-13 20:31:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881472f84d101472fb57ad70004', 'Firefox', '更新企业快速开发平台的菜单信息信息成功！', '5', '192.168.88.1', '2014-07-13 20:32:08', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881472fbd4401472fbdb5e60000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-13 20:41:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881472fbd4401472fbde7670002', 'Firefox', '添加joa123的信息成功！', '3', '192.168.88.1', '2014-07-13 20:41:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881472fbd4401472fbdfb560004', 'Firefox', '添加333的信息成功！', '3', '192.168.88.1', '2014-07-13 20:41:25', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881472fbd4401472fbe186a0005', 'Firefox', '更新333的菜单信息信息成功！', '5', '192.168.88.1', '2014-07-13 20:41:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881472fbd4401472fbe28430006', 'Firefox', '删除joa123菜单信息数据', '4', '192.168.88.1', '2014-07-13 20:41:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881472fbd4401472fbe50fb0007', 'Firefox', '同步菜单信息数据成功！', '4', '192.168.88.1', '2014-07-13 20:41:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d88147301fa50147302271f20000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-13 22:31:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881473027c7014730283f0c0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-13 22:37:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d8814734ee0d0147351707bd0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-14 21:36:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d8814734ee0d014735670b820006', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-14 23:04:11', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d8814734ee0d0147356b6b600011', 'Firefox', '修改关键字回复成功！', '5', '192.168.88.1', '2014-07-14 23:08:58', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d8814734ee0d0147357de8000013', 'Firefox', '修改关键字回复成功！', '5', '192.168.88.1', '2014-07-14 23:29:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d88147359f510147359fa7950000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-15 00:06:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d88147359f51014735a020630002', 'Firefox', '微信单图消息更新成功', '5', '192.168.88.1', '2014-07-15 00:06:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d88147359f51014735a02cbf0003', 'Firefox', '微信单图消息更新成功', '5', '192.168.88.1', '2014-07-15 00:06:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881474489d70147448bcaab0000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-17 21:38:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881474489d701474494f70c0001', 'Firefox', '用户admin已退出', '2', '192.168.88.1', '2014-07-17 21:48:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881474489d7014744955dfb0002', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-17 21:49:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881474489d701474495b5bf0003', 'Firefox', '用户: ceshi密码重置成功', '5', '192.168.88.1', '2014-07-17 21:49:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881474489d701474495c3940004', 'Firefox', '用户admin已退出', '2', '192.168.88.1', '2014-07-17 21:49:31', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881474489d701474495de470005', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-17 21:49:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881474489d701474495f5b00006', 'Firefox', '用户admin已退出', '2', '192.168.88.1', '2014-07-17 21:49:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881474489d7014744966c3a0007', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-17 21:50:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881474489d7014744969efe0008', 'Firefox', '用户admin已退出', '2', '192.168.88.1', '2014-07-17 21:50:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881474489d701474496cad00009', 'Firefox', '用户: ceshi[信息部]登录成功', '1', '192.168.88.1', '2014-07-17 21:50:38', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('4028d881474489d7014744971411000a', 'Firefox', '用户ceshi已退出', '2', '192.168.88.1', '2014-07-17 21:50:57', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('4028d881474489d70147449733e2000b', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-17 21:51:05', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881474489d70147449868fc0023', 'Firefox', '用户admin已退出', '2', '192.168.88.1', '2014-07-17 21:52:24', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('4028d881474489d7014744989cca0024', 'Firefox', '用户: ceshi[信息部]登录成功', '1', '192.168.88.1', '2014-07-17 21:52:38', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('4028d881474489d701474499892d0026', 'Firefox', '微信公众帐号信息添加成功', '3', '192.168.88.1', '2014-07-17 21:53:38', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487817bd4c0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 14:54:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487817c9910003', 'Firefox', '用户: 添加成功', '3', '119.40.35.41', '2014-09-15 14:54:57', '1', null);
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487817cd5a0004', 'Firefox', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 14:54:58', '1', 'f7a8a3a9487816f801487817c4fd0001');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148781850940005', 'Chrome', '用户: admin密码重置成功', '5', '119.40.35.41', '2014-09-15 14:55:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487818b3260008', 'Chrome', '用户: dj添加成功', '3', '119.40.35.41', '2014-09-15 14:55:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487818dfa5000a', 'Chrome', '角色: duij被添加成功', '3', '119.40.35.41', '2014-09-15 14:56:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878192393000f', 'Chrome', '用户: dj更新成功', '5', '119.40.35.41', '2014-09-15 14:56:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487819322a0010', 'Chrome', '用户: ceshi[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 14:56:30', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148781956b90011', 'Chrome', '角色: 兑奖用户被更新成功', '5', '119.40.35.41', '2014-09-15 14:56:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487819f4120043', 'Chrome', '用户admin已退出', '2', '119.40.35.41', '2014-09-15 14:57:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148781a27a50044', 'Chrome', '用户: dj[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 14:57:33', '1', 'f7a8a3a9487816f801487818b3070006');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148781a61b10045', 'Chrome', '用户dj已退出', '2', '119.40.35.41', '2014-09-15 14:57:47', '1', 'f7a8a3a9487816f801487818b3070006');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148781ab9f20046', 'Chrome', '用户: admin[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 14:58:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148781b7e9a0047', 'Chrome', '用户: tingfeng[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 14:59:00', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148781bda660048', 'rv:11.0', '用户: ceshi[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 14:59:24', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148781ca0f20049', 'Chrome', '用户: ceshi[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 15:00:15', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148781ca577004a', 'Chrome', '微信公众帐号信息更新成功', '5', '119.40.35.41', '2014-09-15 15:00:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148781e4d1c004d', 'Chrome', '用户: 添加成功', '3', '119.40.35.41', '2014-09-15 15:02:04', '1', null);
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148781e4d1c004e', 'Chrome', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 15:02:04', '1', 'f7a8a3a9487816f80148781e4cfc004b');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148781f186b004f', 'Chrome', '更新BPM业务构建平台的菜单信息信息成功！', '5', '119.40.35.41', '2014-09-15 15:02:56', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148781f55640050', 'Chrome', '更新捷微-微信管家的菜单信息信息成功！', '5', '119.40.35.41', '2014-09-15 15:03:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878200ba40053', 'Safari', '用户: 添加成功', '3', '119.40.35.41', '2014-09-15 15:03:59', '1', null);
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878200ba40054', 'Safari', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 15:03:59', '1', 'f7a8a3a9487816f8014878200b850051');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148782047750055', 'Chrome', '用户admin已退出', '2', '119.40.35.41', '2014-09-15 15:04:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878207ee00056', 'Chrome', '用户: admin[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 15:04:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148782154dd0059', 'Safari', '用户: 添加成功', '3', '119.40.35.41', '2014-09-15 15:05:23', '1', null);
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148782154dd005a', 'Safari', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 15:05:23', '1', 'f7a8a3a9487816f80148782154be0057');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148782203bb005b', 'Chrome', '更新关于我们的菜单信息信息成功！', '5', '119.40.35.41', '2014-09-15 15:06:08', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878224289005f', 'Safari', '用户: 添加成功', '3', '119.40.35.41', '2014-09-15 15:06:24', '1', null);
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148782242890060', 'Safari', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 15:06:24', '1', 'f7a8a3a9487816f801487822427a005d');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878224da50061', 'Chrome', '更新捷微：敏捷微信管家的菜单信息信息成功！', '5', '119.40.35.41', '2014-09-15 15:06:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487822acec0063', 'Chrome', '添加兑奖入口的信息成功！', '3', '119.40.35.41', '2014-09-15 15:06:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487822b44e0064', 'Chrome', '同步菜单信息数据成功！', '4', '119.40.35.41', '2014-09-15 15:06:53', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487822c3cf0065', 'Safari', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 15:06:57', '1', 'f7a8a3a9487816f801487822427a005d');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487822c3cf0066', 'Safari', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 15:06:57', '1', 'f7a8a3a9487816f801487822427a005d');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487822c8ff0067', 'Safari', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 15:06:58', '1', 'f7a8a3a9487816f801487822427a005d');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487822c8ff0068', 'Safari', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 15:06:58', '1', 'f7a8a3a9487816f801487822427a005d');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148782427c40069', 'Chrome', '更新JEECG 工作流商业版的菜单信息信息成功！', '5', '119.40.35.41', '2014-09-15 15:08:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148782446b6006a', 'Chrome', '更新JeeWx 微信管家的菜单信息信息成功！', '5', '119.40.35.41', '2014-09-15 15:08:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148782459ff006b', 'Chrome', '更新兑奖入口的菜单信息信息成功！', '5', '119.40.35.41', '2014-09-15 15:08:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878247112006c', 'Chrome', '更新联系我们的菜单信息信息成功！', '5', '119.40.35.41', '2014-09-15 15:08:47', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878248526006d', 'Chrome', '更新兑奖入口的菜单信息信息成功！', '5', '119.40.35.41', '2014-09-15 15:08:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878259379006e', 'Chrome', '更新微网站的菜单信息信息成功！', '5', '119.40.35.41', '2014-09-15 15:10:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487825c344006f', 'Chrome', '更新微投票的菜单信息信息成功！', '5', '119.40.35.41', '2014-09-15 15:10:13', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487826153c0070', '其它', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 15:10:34', '1', 'f7a8a3a9487816f801487822427a005d');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878269c5e0071', 'Chrome', '更新JeeWx 微信管家的菜单信息信息成功！', '5', '119.40.35.41', '2014-09-15 15:11:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487826ff6d0072', 'Chrome', '更新JEECG 工作流商业版的菜单信息信息成功！', '5', '119.40.35.41', '2014-09-15 15:11:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487827961f0073', '其它', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 15:12:13', '1', 'f7a8a3a9487816f801487817c4fd0001');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487829a8080078', '其它', '用户: 添加成功', '3', '119.40.35.41', '2014-09-15 15:14:29', '1', null);
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487829a8170079', '其它', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 15:14:29', '1', 'f7a8a3a9487816f801487829a7f80076');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148782cb642007a', 'Chrome', '用户: ceshi[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 15:17:49', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148782d755b007b', 'Chrome', '同步菜单信息数据成功！', '4', '119.40.35.41', '2014-09-15 15:18:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487831f2c5007c', 'Chrome', '用户: ceshi[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 15:23:32', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487836b391007e', 'Chrome', '权限: 投票PK被添加成功', '3', '119.40.35.41', '2014-09-15 15:28:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487836e83e0080', 'Chrome', '权限: 用户信息管理被添加成功', '3', '119.40.35.41', '2014-09-15 15:28:57', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148783723430082', 'Chrome', '权限: 投票记录查询被添加成功', '3', '119.40.35.41', '2014-09-15 15:29:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878375c830084', 'Chrome', '权限: 参数配置被添加成功', '3', '119.40.35.41', '2014-09-15 15:29:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878375dac0085', 'Chrome', '用户: ceshi[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 15:29:27', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148783824e4008a', 'Chrome', '用户admin已退出', '2', '119.40.35.41', '2014-09-15 15:30:18', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878382dae008b', 'Chrome', '用户: ceshi[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 15:30:20', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878385c40008c', 'Chrome', '用户: admin[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 15:30:32', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878392ccf008d', 'Chrome', '用户ceshi已退出', '2', '119.40.35.41', '2014-09-15 15:31:26', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487839b24b008e', 'Chrome', '用户: tingfeng[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 15:32:00', '1', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148783b29890091', 'Safari', '用户: 添加成功', '3', '119.40.35.41', '2014-09-15 15:33:36', '1', null);
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148783b29990092', 'Safari', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 15:33:36', '1', 'f7a8a3a9487816f80148783b292b008f');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148783b3bb90094', 'Chrome', '商品分类添加成功', '3', '119.40.35.41', '2014-09-15 15:33:40', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148783b59730096', 'Chrome', '商品分类添加成功', '3', '119.40.35.41', '2014-09-15 15:33:48', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148783c358b0098', 'Chrome', '商品信息添加成功', '3', '119.40.35.41', '2014-09-15 15:34:44', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148783d6d300099', 'Chrome', '用户: admin[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 15:36:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148783dab04009a', '其它', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 15:36:20', '1', 'f7a8a3a9487816f801487822427a005d');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148783f0516009e', 'Chrome', '扩展接口管理添加成功', '3', '119.40.35.41', '2014-09-15 15:37:49', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148783f87a4009f', 'Firefox', '用户: ceshi[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 15:38:22', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487841d9a200a2', 'Firefox', '修改关文本模板成功！', '5', '119.40.35.41', '2014-09-15 15:40:54', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487842fc3900a3', 'Chrome', '用户: ceshi[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 15:42:08', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487843246200a5', 'Chrome', '添加竞选投票PK的信息成功！', '3', '119.40.35.41', '2014-09-15 15:42:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487843345000a6', 'Chrome', '同步菜单信息数据成功！', '4', '119.40.35.41', '2014-09-15 15:42:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878437ca400a7', 'Chrome', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 15:42:41', '1', 'f7a8a3a9487816f80148781e4cfc004b');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878449b7200aa', 'Safari', '用户: 添加成功', '3', '119.40.35.41', '2014-09-15 15:43:55', '1', null);
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878449b8100ab', 'Safari', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 15:43:55', '1', 'f7a8a3a9487816f8014878449b6200a8');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487844f43000ac', 'MSIE 10.0', '用户: admin[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 15:44:17', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487845f3ce00af', 'Chrome', '用户: 添加成功', '3', '119.40.35.41', '2014-09-15 15:45:23', '1', null);
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487845f3dd00b0', 'Chrome', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 15:45:23', '1', 'f7a8a3a9487816f801487845f3be00ad');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487846a01b00b1', 'Chrome', '用户admin已退出', '2', '119.40.35.41', '2014-09-15 15:46:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487846fb1c00b2', 'Chrome', '用户: admin[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 15:46:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487847e64700b3', 'Chrome', '用户: ceshi[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 15:47:31', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487848152700b6', 'Chrome', '用户: 添加成功', '3', '119.40.35.41', '2014-09-15 15:47:43', '1', null);
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487848152700b7', 'Chrome', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 15:47:43', '1', 'f7a8a3a9487816f801487848150800b4');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878488baf00b9', 'Chrome', '加入会员成功!', '3', '119.40.35.41', '2014-09-15 15:48:13', '1', 'f7a8a3a9487816f801487848150800b4');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487848e4db00bc', 'Chrome', '用户: 添加成功', '3', '119.40.35.41', '2014-09-15 15:48:36', '1', null);
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487848e4db00bd', 'Chrome', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 15:48:36', '1', 'f7a8a3a9487816f801487848e4cb00ba');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148784c2ea700be', 'MSIE 9.0', '用户: ceshi[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 15:52:11', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148784e234300c0', 'MSIE 9.0', '用户ceshi已退出', '2', '119.40.35.41', '2014-09-15 15:54:19', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148784e296d00c2', 'MSIE 10.0', '商品分类添加成功', '3', '119.40.35.41', '2014-09-15 15:54:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148784edacc00c3', 'MSIE 10.0', '商品分类更新成功', '5', '119.40.35.41', '2014-09-15 15:55:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148784ef29900c4', '其它', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 15:55:12', '1', 'f7a8a3a9487816f80148781e4cfc004b');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148784ef43000c7', 'MSIE 9.0', '用户: ceshi123添加成功', '3', '119.40.35.41', '2014-09-15 15:55:13', '1', null);
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148784f013f00c8', 'MSIE 10.0', '商品分类更新成功', '5', '119.40.35.41', '2014-09-15 15:55:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148784f2e6a00ca', 'MSIE 10.0', '商品分类更新成功', '5', '119.40.35.41', '2014-09-15 15:55:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148784f555b00cb', 'MSIE 9.0', '用户: ceshi123[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 15:55:38', '1', 'f7a8a3a9487816f80148784ef41000c5');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148784f7d7400cd', 'MSIE 10.0', '商品分类更新成功', '5', '119.40.35.41', '2014-09-15 15:55:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148784fb4d000ce', 'MSIE 9.0', '用户ceshi123已退出', '2', '119.40.35.41', '2014-09-15 15:56:02', '1', 'f7a8a3a9487816f80148784ef41000c5');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148784fb75100d1', 'Firefox', '用户: 123456添加成功', '3', '119.40.35.41', '2014-09-15 15:56:03', '1', null);
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487850042900d2', 'Firefox', '用户: 123456[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 15:56:22', '1', 'f7a8a3a9487816f80148784fb74100cf');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878501d3f00d3', 'MSIE 9.0', '用户: ceshi[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 15:56:29', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487850370000d5', 'MSIE 10.0', '商品分类更新成功', '5', '119.40.35.41', '2014-09-15 15:56:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878515dec00d6', '其它', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 15:57:51', '1', 'f7a8a3a9487816f8014878449b6200a8');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487852a92900d9', 'Chrome', '用户: lwljdtx添加成功', '3', '119.40.35.41', '2014-09-15 15:59:16', '1', null);
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487852b3e700da', 'MSIE 10.0', '用户: ceshi[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 15:59:19', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487852e85500db', '其它', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 15:59:32', '1', 'f7a8a3a9487816f801487817c4fd0001');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487852ed0800dc', 'Chrome', '用户: lwljdtx[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 15:59:33', '1', 'f7a8a3a9487816f801487852a91a00d7');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487854855b00df', 'Chrome', '用户: kyno添加成功', '3', '119.40.35.41', '2014-09-15 16:01:18', '1', null);
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487854d2c000e0', 'Chrome', '用户: kyno[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 16:01:37', '1', 'f7a8a3a9487816f801487854854c00dd');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148785519cb00e1', '其它', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 16:01:56', '1', 'f7a8a3a9487816f801487848150800b4');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878559c6900e2', 'Chrome', '用户: admin[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 16:02:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487855f13000e3', 'Chrome', '更新微信管家(JeeWx)的菜单信息信息成功！', '5', '119.40.35.41', '2014-09-15 16:02:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148785621f400e4', 'Chrome', '更新BPM流程开发平台（jeecg）的菜单信息信息成功！', '5', '119.40.35.41', '2014-09-15 16:03:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487856321100e6', 'MSIE 10.0', '商品分类更新成功', '5', '119.40.35.41', '2014-09-15 16:03:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487856695e00e7', 'Firefox', '用户: ceshi[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 16:03:22', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487856793c00e9', 'Chrome', '添加调研问卷的信息成功！', '3', '119.40.35.41', '2014-09-15 16:03:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487856806000ea', 'Chrome', '同步菜单信息数据成功！', '4', '119.40.35.41', '2014-09-15 16:03:27', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878578d7b00eb', 'Chrome', '权限: 微调研问卷被更新成功', '5', '119.40.35.41', '2014-09-15 16:04:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878580cdc00ec', 'Chrome', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 16:05:09', '1', 'f7a8a3a9487816f801487848e4cb00ba');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487858754b00ed', 'MSIE 10.0', '商品信息删除成功,部分商品可能已经下单，不能删除。', '4', '119.40.35.41', '2014-09-15 16:05:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487858757a00ee', 'MSIE 10.0', '商品信息删除成功,部分商品可能已经下单，不能删除。', '4', '119.40.35.41', '2014-09-15 16:05:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148785875a800ef', 'MSIE 10.0', '商品信息删除成功,部分商品可能已经下单，不能删除。', '4', '119.40.35.41', '2014-09-15 16:05:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148785875c800f0', 'MSIE 10.0', '商品信息删除成功,部分商品可能已经下单，不能删除。', '4', '119.40.35.41', '2014-09-15 16:05:36', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487858fefd00f1', 'Chrome', '用户: ceshi[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 16:06:11', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487859ec7a00f4', 'Chrome', '微调研 添加成功', '3', '119.40.35.41', '2014-09-15 16:07:12', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148785ae81f00f5', 'Chrome', '权限: 调研问卷题目被更新成功', '5', '119.40.35.41', '2014-09-15 16:08:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148785af7bf00f6', 'MSIE 10.0', '商品信息更新成功', '5', '119.40.35.41', '2014-09-15 16:08:20', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148785b174e00f7', 'Chrome', '权限: 调研问卷被更新成功', '5', '119.40.35.41', '2014-09-15 16:08:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148785b4a0600f8', 'Chrome', '权限: 调研问卷结果被更新成功', '5', '119.40.35.41', '2014-09-15 16:08:41', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148785b540800f9', 'Chrome', '用户admin已退出', '2', '119.40.35.41', '2014-09-15 16:08:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148785b984500fb', 'Chrome', '用户: admin[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 16:09:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148785bebf300fc', 'Chrome', '权限: 调研问卷题目被更新成功', '5', '119.40.35.41', '2014-09-15 16:09:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148785bf79b00fd', 'Chrome', '用户admin已退出', '2', '119.40.35.41', '2014-09-15 16:09:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148785c2e9a00fe', 'MSIE 10.0', '商品信息更新成功', '5', '119.40.35.41', '2014-09-15 16:09:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148785c36b800ff', 'Chrome', '用户: admin[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 16:09:42', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148785ca65a0100', 'Chrome', '微调研 添加成功', '3', '119.40.35.41', '2014-09-15 16:10:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148785d0aa20102', 'Chrome', '用户: ceshi[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 16:10:36', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148785d4c9c0104', 'Chrome', '权限: 调研问卷主题被更新成功', '5', '119.40.35.41', '2014-09-15 16:10:53', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148785e04050105', 'MSIE 10.0', '商品信息更新成功', '5', '119.40.35.41', '2014-09-15 16:11:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148785e634c0106', 'MSIE 10.0', '商品信息更新成功', '5', '119.40.35.41', '2014-09-15 16:12:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148785e9c0f0109', 'Chrome', '用户: dps12345添加成功', '3', '119.40.35.41', '2014-09-15 16:12:19', '1', null);
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148785ed688010b', 'Chrome', '微调研 添加成功', '3', '119.40.35.41', '2014-09-15 16:12:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148785f53b70110', 'Chrome', '微调研 添加成功', '3', '119.40.35.41', '2014-09-15 16:13:06', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148785f66260111', 'Chrome', '用户: ceshi[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 16:13:11', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878603a000112', '其它', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 16:14:05', '1', 'f7a8a3a9487816f80148781e4cfc004b');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148786065560118', 'Chrome', '微调研 添加成功', '3', '119.40.35.41', '2014-09-15 16:14:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148786097910119', 'Chrome', '用户: ceshi[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 16:14:29', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487860ab48011a', 'Chrome', '用户: ceshi[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 16:14:34', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487860b134011c', 'Chrome', '微调研 添加成功', '3', '119.40.35.41', '2014-09-15 16:14:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487860cd38011d', 'Chrome', '微调研 发布成功', '4', '119.40.35.41', '2014-09-15 16:14:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487860fb9b011f', 'Chrome', '用户: ceshi[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 16:14:54', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878617f9f0120', 'Chrome', '用户: admin[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 16:15:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487862ab2f0125', 'Chrome', '商城地址信息添加成功', '3', '119.40.35.41', '2014-09-15 16:16:45', '1', 'f7a8a3a9487816f80148781e4cfc004b');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878645c690128', 'Chrome', '*********************支付宝即时到账交易请求 begin***********************', '3', '119.40.35.41', '2014-09-15 16:18:36', '1', 'f7a8a3a9487816f80148781e4cfc004b');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878645c790129', 'Chrome', '*** error: Class PayExtAction; Method alipaydirectRequest(); key is null ***', '3', '119.40.35.41', '2014-09-15 16:18:36', '1', 'f7a8a3a9487816f80148781e4cfc004b');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878645c79012a', 'Chrome', '*** error: Class PayExtAction; Method alipaydirectRequest(); bizID is null ***', '3', '119.40.35.41', '2014-09-15 16:18:36', '1', 'f7a8a3a9487816f80148781e4cfc004b');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487865bb4d012b', 'Chrome', '*********************支付宝即时到账交易请求 begin***********************', '3', '119.40.35.41', '2014-09-15 16:20:06', '1', 'f7a8a3a9487816f80148781e4cfc004b');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487865bb5d012c', 'Chrome', '*** error: Class PayExtAction; Method alipaydirectRequest(); key is null ***', '3', '119.40.35.41', '2014-09-15 16:20:06', '1', 'f7a8a3a9487816f80148781e4cfc004b');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487865bb5d012d', 'Chrome', '*** error: Class PayExtAction; Method alipaydirectRequest(); bizID is null ***', '3', '119.40.35.41', '2014-09-15 16:20:06', '1', 'f7a8a3a9487816f80148781e4cfc004b');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878664713012e', 'Chrome', '*********************支付宝即时到账交易请求 begin***********************', '3', '119.40.35.41', '2014-09-15 16:20:41', '1', 'f7a8a3a9487816f80148781e4cfc004b');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878664722012f', 'Chrome', '*** error: Class PayExtAction; Method alipaydirectRequest(); key is null ***', '3', '119.40.35.41', '2014-09-15 16:20:41', '1', 'f7a8a3a9487816f80148781e4cfc004b');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148786647220130', 'Chrome', '*** error: Class PayExtAction; Method alipaydirectRequest(); bizID is null ***', '3', '119.40.35.41', '2014-09-15 16:20:41', '1', 'f7a8a3a9487816f80148781e4cfc004b');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487867227e0132', 'Chrome', '用户: ceshi[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 16:21:38', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148786744cc0133', 'Chrome', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 16:21:46', '1', 'f7a8a3a9487816f801487817c4fd0001');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148786784d20134', '其它', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 16:22:03', '1', 'f7a8a3a9487816f801487848150800b4');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487867fea60135', '其它', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 16:22:34', '1', 'f7a8a3a9487816f8014878449b6200a8');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487868de770138', 'Chrome', '商城地址信息添加成功', '3', '119.40.35.41', '2014-09-15 16:23:31', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148786a1570013a', 'rv:11.0', '用户: ceshi[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 16:24:51', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148786a5874013b', 'Chrome', '用户admin已退出', '2', '119.40.35.41', '2014-09-15 16:25:08', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148786ab913013c', 'Chrome', '用户: admin[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 16:25:33', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148786b006c013e', 'Chrome', '设定成功', '4', '119.40.35.41', '2014-09-15 16:25:51', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148786f49b70141', 'Safari', '用户: 添加成功', '3', '119.40.35.41', '2014-09-15 16:30:32', '1', null);
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148786f49b70142', 'Safari', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 16:30:32', '1', 'f7a8a3a9487816f80148786f49a7013f');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148787496380146', 'Chrome', '用户: qqqq添加成功', '3', '119.40.35.41', '2014-09-15 16:36:19', '1', null);
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487874cf4a0147', 'Chrome', '用户: qqqq[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 16:36:34', '1', 'f7a8a3a9487816f80148787496290144');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148787561c60148', 'Chrome', '用户qqqq已退出', '2', '119.40.35.41', '2014-09-15 16:37:11', '1', 'f7a8a3a9487816f80148787496290144');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878759e030149', 'Chrome', '用户: qqqq[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 16:37:27', '1', 'f7a8a3a9487816f80148787496290144');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148787cd3f6014a', '其它', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 16:45:19', '1', 'f7a8a3a9487816f8014878449b6200a8');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148787e9adb014b', 'Chrome', '权限: 微投票设置被删除成功', '4', '119.40.35.41', '2014-09-15 16:47:16', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148787ecc7a014c', 'Chrome', '权限: 关注用户管理被更新成功', '5', '119.40.35.41', '2014-09-15 16:47:28', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148787ee68a014d', 'Chrome', '权限: 用户分组管理被更新成功', '5', '119.40.35.41', '2014-09-15 16:47:35', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148787f055d014e', 'Chrome', '权限: 业务扩展接口管理被更新成功', '5', '119.40.35.41', '2014-09-15 16:47:43', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148787f2b53014f', 'Chrome', '权限: 接收消息管理被更新成功', '5', '119.40.35.41', '2014-09-15 16:47:53', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148788795510152', 'Safari', '用户: 添加成功', '3', '119.40.35.41', '2014-09-15 16:57:04', '1', null);
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148788795510153', 'Safari', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 16:57:04', '1', 'f7a8a3a9487816f80148788795320150');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487888473c0154', 'Chrome', '权限: 微投票被更新成功', '5', '119.40.35.41', '2014-09-15 16:57:50', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878888a210155', 'Chrome', '权限: 调研问卷结果被更新成功', '5', '119.40.35.41', '2014-09-15 16:58:07', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487888a0c60156', 'Chrome', '权限: 微投票被更新成功', '5', '119.40.35.41', '2014-09-15 16:58:13', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148788955120157', 'Chrome', '权限: 微投票被更新成功', '5', '119.40.35.41', '2014-09-15 16:58:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487889f9de0159', 'Safari', '留言信息添加成功', '3', '119.40.35.41', '2014-09-15 16:59:41', '1', 'f7a8a3a9487816f80148788795320150');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148788a15c2015a', 'Chrome', '权限: 竞选投票PK被更新成功', '5', '119.40.35.41', '2014-09-15 16:59:48', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148788a4500015b', 'Chrome', '权限: 投票结果查询被更新成功', '5', '119.40.35.41', '2014-09-15 17:00:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148788d22950165', 'Chrome', '用户: xyytest添加成功', '3', '119.40.35.41', '2014-09-15 17:03:08', '1', null);
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148788d71ee0166', 'Chrome', '用户: xyytest[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 17:03:28', '1', 'f7a8a3a9487816f80148788d22850163');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878960d7b0167', 'Safari', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 17:12:52', '1', 'f7a8a3a9487816f801487817c4fd0001');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148789637f60168', 'Firefox', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 17:13:03', '1', 'f7a8a3a9487816f801487817c4fd0001');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148789683d40169', 'Chrome', '用户: admin[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 17:13:23', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487896ba16016b', 'Chrome', '回复留言成功', '3', '119.40.35.41', '2014-09-15 17:13:37', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487896c61d016d', 'Chrome', '回复留言成功', '3', '119.40.35.41', '2014-09-15 17:13:40', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878974a60016f', 'Safari', '留言信息添加成功', '3', '119.40.35.41', '2014-09-15 17:14:13', '1', null);
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487897e6b00171', 'Safari', '留言信息添加成功', '3', '119.40.35.41', '2014-09-15 17:14:54', '1', null);
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487898dc5a0174', 'Safari', '用户: 添加成功', '3', '119.40.35.41', '2014-09-15 17:15:56', '1', null);
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487898dc5a0175', 'Safari', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 17:15:56', '1', 'f7a8a3a9487816f801487898dc3b0172');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f801487898efa40176', 'Chrome', '用户: admin[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 17:16:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148789a88f10179', 'Safari', '用户: 添加成功', '3', '119.40.35.41', '2014-09-15 17:17:46', '1', null);
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f80148789a8901017a', 'Safari', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 17:17:46', '1', 'f7a8a3a9487816f80148789a88e10177');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878a242b9017c', 'Safari', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 17:26:12', '1', 'f7a8a3a9487816f80148783b292b008f');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878a42cb70180', '其它', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 17:28:18', '1', 'f7a8a3a9487816f801487817c4fd0001');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878a64dd20187', 'Safari', '用户: 添加成功', '3', '119.40.35.41', '2014-09-15 17:30:37', '1', null);
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878a64dd20188', 'Safari', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 17:30:37', '1', 'f7a8a3a9487816f8014878a64db30185');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878a653210189', 'Chrome', '权限: 优惠劵被更新成功', '5', '119.40.35.41', '2014-09-15 17:30:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878a7f74c018a', 'Chrome', '用户: ceshi[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 17:32:26', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878a8110d018b', 'Safari', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 17:32:33', '1', 'f7a8a3a9487816f8014878449b6200a8');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878a92637018f', 'Safari', '商城地址信息添加成功', '3', '119.40.35.41', '2014-09-15 17:33:44', '1', 'f7a8a3a9487816f8014878449b6200a8');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878a9348e0190', 'Safari', '设定成功', '4', '119.40.35.41', '2014-09-15 17:33:48', '1', 'f7a8a3a9487816f8014878449b6200a8');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878a9830c0193', 'Safari', '*********************支付宝即时到账交易请求 begin***********************', '3', '119.40.35.41', '2014-09-15 17:34:08', '1', 'f7a8a3a9487816f8014878449b6200a8');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878a9831c0194', 'Safari', '*** error: Class PayExtAction; Method alipaydirectRequest(); key is null ***', '3', '119.40.35.41', '2014-09-15 17:34:08', '1', 'f7a8a3a9487816f8014878449b6200a8');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878a9831c0195', 'Safari', '*** error: Class PayExtAction; Method alipaydirectRequest(); bizID is null ***', '3', '119.40.35.41', '2014-09-15 17:34:08', '1', 'f7a8a3a9487816f8014878449b6200a8');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878aa86c10198', 'Chrome', '用户: ceshi[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 17:35:14', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878aae089019a', 'Chrome', 'ceshi加入会员成功!', '3', '119.40.35.41', '2014-09-15 17:35:37', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878ad602f019b', '其它', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 17:38:21', '1', 'f7a8a3a9487816f80148789a88e10177');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878b378f9019c', 'Chrome', '权限: 微信抽奖活动被更新成功', '5', '119.40.35.41', '2014-09-15 17:45:00', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878b39d3b019d', 'Chrome', '权限: 微大转盘被删除成功', '4', '119.40.35.41', '2014-09-15 17:45:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878b4c5fb019e', 'Chrome', '用户admin已退出', '2', '119.40.35.41', '2014-09-15 17:46:26', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878b4f47e019f', 'Chrome', '用户: admin[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 17:46:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878b558d501a0', 'Chrome', '用户: ceshi[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 17:47:03', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878b5cfab01a1', 'Chrome', '用户: ceshi[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 17:47:34', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878b72c4d01a2', '其它', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 17:49:03', '1', 'f7a8a3a9487816f801487817c4fd0001');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878b892f201a3', '其它', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 17:50:35', '1', 'f7a8a3a9487816f801487829a7f80076');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878b9847601a4', '其它', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 17:51:37', '1', 'f7a8a3a9487816f80148789a88e10177');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878b9897701a5', '其它', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 17:51:38', '1', 'f7a8a3a9487816f80148783b292b008f');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878bac3ac01a6', 'Chrome', '用户: xyytest[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 17:52:58', '1', 'f7a8a3a9487816f80148788d22850163');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878bc225201a9', 'Safari', '用户: 添加成功', '3', '119.40.35.41', '2014-09-15 17:54:28', '1', null);
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878bc226201aa', 'Safari', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 17:54:28', '1', 'f7a8a3a9487816f8014878bc224201a7');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878c2304f01ab', '其它', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 18:01:05', '1', 'f7a8a3a9487816f80148789a88e10177');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878c5bd4e01ac', '其它', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 18:04:58', '1', 'f7a8a3a9487816f80148783b292b008f');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878c7539e01ad', '其它', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 18:06:42', '1', 'f7a8a3a9487816f8014878a64db30185');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878c81e4101ae', '其它', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 18:07:33', '1', 'f7a8a3a9487816f801487817c4fd0001');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878c9250201af', '其它', '用户: 登录成功', '1', '119.40.35.41', '2014-09-15 18:08:41', '1', 'f7a8a3a9487816f801487817c4fd0001');
INSERT INTO t_s_log VALUES ('f7a8a3a9487816f8014878cf4eb501b0', 'Firefox', '用户: ceshi[信息部]登录成功', '1', '119.40.35.41', '2014-09-15 18:15:25', '1', '402881e44648134a014648174a45000c');
INSERT INTO t_s_log VALUES ('ff8080814d435c41014d435c91fd0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '127.0.0.1', '2015-05-11 22:24:09', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('ff8080814d435c41014d437e98580001', 'Chrome', '用户: admin[信息部]登录成功', '1', '127.0.0.1', '2015-05-11 23:01:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('ff8080814d43a677014d43a7691a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '127.0.0.1', '2015-05-11 23:45:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('ff8080814d43a9e7014d43aa28600000', 'Chrome', '用户: admin[信息部]登录成功', '1', '127.0.0.1', '2015-05-11 23:48:54', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('ff8080814d485da1014d485eae630000', 'Chrome', '用户: admin[信息部]登录成功', '1', '127.0.0.1', '2015-05-12 21:44:34', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('ff8080814d485da1014d486923d00001', 'Chrome', '同步菜单信息数据失败！同步自定义菜单URL地址不正确。', '4', '127.0.0.1', '2015-05-12 21:55:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('ff8080814d485da1014d489c4d4d0003', 'Chrome', '微相册添加成功', '3', '127.0.0.1', '2015-05-12 22:51:52', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('ff8080814d485da1014d489c8c700004', 'Chrome', '微相册更新成功', '5', '127.0.0.1', '2015-05-12 22:52:08', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('ff8080814d485da1014d4d8d8c7d0005', 'Chrome', '用户: admin[信息部]登录成功', '1', '127.0.0.1', '2015-05-13 21:53:51', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('ff8080814d485da1014d4d8e000d0006', 'Chrome', '微社区更新成功', '5', '127.0.0.1', '2015-05-13 21:54:21', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('ff8080814d485da1014d4d8e968d0008', 'Chrome', '微社区帖子添加成功', '3', '127.0.0.1', '2015-05-13 21:54:59', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('ff8080814d485da1014d4d8ea6b20009', 'Chrome', '帖子置顶成功', '4', '127.0.0.1', '2015-05-13 21:55:03', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('ff8080814d485da1014d4d8ebf04000b', 'Chrome', '帖子评论成功', '3', '127.0.0.1', '2015-05-13 21:55:10', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('ff8080814d485da1014d4d8f303b000c', 'Chrome', '同步菜单信息数据失败！同步自定义菜单URL地址不正确。', '4', '127.0.0.1', '2015-05-13 21:55:39', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('ff8080814d4d91a1014d4d995fdc0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '127.0.0.1', '2015-05-13 22:06:46', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('ff8080814d4d91a1014d4d9ac91d0004', 'Chrome', '*********************支付宝即时到账交易请求 begin***********************', '3', '127.0.0.1', '2015-05-13 22:08:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('ff8080814d4d91a1014d4d9ac9570005', 'Chrome', '*** error: Class PayExtAction; Method alipaydirectRequest(); key is null ***', '3', '127.0.0.1', '2015-05-13 22:08:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('ff8080814d4d91a1014d4d9ac9980006', 'Chrome', '*** error: Class PayExtAction; Method alipaydirectRequest(); bizID is null ***', '3', '127.0.0.1', '2015-05-13 22:08:19', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('ff8080814d4d9ca5014d529dd2c60000', 'Chrome', '用户: admin[信息部]登录成功', '1', '127.0.0.1', '2015-05-14 21:29:44', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('ff8080814d4d9ca5014d52d5ef580001', 'Chrome', '用户: admin[信息部]登录成功', '1', '127.0.0.1', '2015-05-14 22:31:01', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('ff8080814d4d9ca5014d576a3de30005', 'Chrome', '用户: admin[信息部]登录成功', '1', '127.0.0.1', '2015-05-15 19:51:30', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('ff8080814d4d9ca5014d576c35270006', 'Chrome', '微信公众帐号信息更新成功', '5', '127.0.0.1', '2015-05-15 19:53:38', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('ff8080814d4d9ca5014d5c6442aa0008', 'Chrome', '用户: admin[信息部]登录成功', '1', '127.0.0.1', '2015-05-16 19:03:04', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('ff80808151aebee80151aec095e30000', 'Firefox', '用户: admin[信息部]登录成功', '1', '127.0.0.1', '2015-12-17 15:03:55', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('ff80808151aebee80151aec0e0920001', 'Firefox', '同步菜单信息数据失败！错误码为：40023错误信息为：invalid sub button size hint: [PgJSZa0013vr18]', '4', '127.0.0.1', '2015-12-17 15:04:14', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('ff80808151aebee80151aec11aa80002', 'Firefox', '删除调研问卷菜单信息数据', '4', '127.0.0.1', '2015-12-17 15:04:29', '1', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_log VALUES ('ff80808151aebee80151aec125190003', 'Firefox', '同步菜单信息数据成功！', '4', '127.0.0.1', '2015-12-17 15:04:32', '1', '4028d881436d514601436d5215ac0043');

-- ----------------------------
-- Table structure for `t_s_operation`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_operation`;
CREATE TABLE `t_s_operation` (
  `ID` varchar(32) NOT NULL,
  `operationcode` varchar(50) default NULL,
  `operationicon` varchar(100) default NULL,
  `operationname` varchar(50) default NULL,
  `status` smallint(6) default NULL,
  `functionid` varchar(32) default NULL,
  `iconid` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_pceuy41wr2fjbcilyc7mk3m1f` (`functionid`),
  KEY `FK_ny5de7922l39ta2pkhyspd5f` (`iconid`),
  CONSTRAINT `FK_ny5de7922l39ta2pkhyspd5f` FOREIGN KEY (`iconid`) REFERENCES `t_s_icon` (`ID`),
  CONSTRAINT `FK_pceuy41wr2fjbcilyc7mk3m1f` FOREIGN KEY (`functionid`) REFERENCES `t_s_function` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_operation
-- ----------------------------

-- ----------------------------
-- Table structure for `t_s_opintemplate`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_opintemplate`;
CREATE TABLE `t_s_opintemplate` (
  `ID` varchar(32) NOT NULL,
  `descript` varchar(100) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_opintemplate
-- ----------------------------

-- ----------------------------
-- Table structure for `t_s_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_role`;
CREATE TABLE `t_s_role` (
  `ID` varchar(32) NOT NULL,
  `rolecode` varchar(10) default NULL,
  `rolename` varchar(100) NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_role
-- ----------------------------
INSERT INTO t_s_role VALUES ('402881e44648134a014648163a6d0001', 'ceshi', '测试角色');
INSERT INTO t_s_role VALUES ('4028d881436d514601436d52159c0041', 'admin', '管理员');
INSERT INTO t_s_role VALUES ('4028d881436d514601436d5215a00042', 'manager', '普通用户');
INSERT INTO t_s_role VALUES ('f7a8a3a9487816f801487818df950009', 'duij', '兑奖用户');

-- ----------------------------
-- Table structure for `t_s_role_function`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_role_function`;
CREATE TABLE `t_s_role_function` (
  `ID` varchar(32) NOT NULL,
  `operation` varchar(100) default NULL,
  `functionid` varchar(32) default NULL,
  `roleid` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_fvsillj2cxyk5thnuu625urab` (`functionid`),
  KEY `FK_9dww3p4w8jwvlrgwhpitsbfif` (`roleid`),
  CONSTRAINT `FK_9dww3p4w8jwvlrgwhpitsbfif` FOREIGN KEY (`roleid`) REFERENCES `t_s_role` (`ID`),
  CONSTRAINT `FK_fvsillj2cxyk5thnuu625urab` FOREIGN KEY (`functionid`) REFERENCES `t_s_function` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_role_function
-- ----------------------------
INSERT INTO t_s_role_function VALUES ('2c91811a4d60d054014d65b59bd90049', null, '4028d881436d514601436d52153b0029', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('2c91811a4d60d054014d65b59bf0004d', null, '4028d881436d514601436d521540002a', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('2c91811a4d60d054014d65b59bf0004e', null, '4028d881436d514601436d521593003f', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('2c91811a4d60d054014d65b59bf0004f', null, '4028d881436d514601436d5215290024', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('2c91811a4d60d054014d65b59bf10053', null, '4028d881436d514601436d52150b001a', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('2c91811a4d60d054014d65b59bf10055', null, '4028d881436d514601436d5215260023', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('2c91811a4d60d054014d65b59bf10057', null, '4028d881436d514601436d5215380028', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('2c91811a4d60d054014d65b59bf10058', null, '4028d881436d514601436d52152c0025', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('2c91811a4d60d054014d65b59c3b006d', null, '4028d881436d514601436d52150f001c', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('4028818348fa4cf30148fa5236ba0002', null, '3c3cd1354801b1b5014801b6b0370001', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('4028818348fa4cf30148fa5236bb0008', null, '3c3cd1354801b1b5014801b768030003', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('4028818348fa4cf30148fa5236bb000a', null, '4028d881436d514601436d56555e0193', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('4028818348fa4cf30148fa5236bc0010', null, '3c3cd1354801b1b5014801b7dd490005', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('40288183490a24bb01490a5bdfb6001c', null, '40288183490a24bb01490a5a28b10018', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('40288183490a24bb01490a5bdfc2001d', null, '40288183490a24bb01490a5bb790001a', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('402886bd519544f8015195490d4b0005', null, '402886bd519544f801519548d2ee0003', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('402889fb4820bcb3014820c2f9ed0009', null, '2c9716d547c2f4290147c36c654e0001', '402881e44648134a014648163a6d0001');
INSERT INTO t_s_role_function VALUES ('402889fb4820bcb3014820c2f9ed000a', null, '402881e9481f46a801481f52afb70006', '402881e44648134a014648163a6d0001');
INSERT INTO t_s_role_function VALUES ('402889fb4820bcb3014820c2f9ed000b', null, '402881e5479d04cc01479d0675b90003', '402881e44648134a014648163a6d0001');
INSERT INTO t_s_role_function VALUES ('402889fb4820bcb3014820c2f9ed0010', null, '402889f64747048401474707902e0003', '402881e44648134a014648163a6d0001');
INSERT INTO t_s_role_function VALUES ('402889fb4820bcb3014820c2f9ed0011', null, '402881e9481f46a801481f51442a0004', '402881e44648134a014648163a6d0001');
INSERT INTO t_s_role_function VALUES ('402889fb4820bcb3014820c2f9ee0016', null, '402881e9481f46a801481f506a3c0002', '402881e44648134a014648163a6d0001');
INSERT INTO t_s_role_function VALUES ('402889fb4820bcb3014820c2f9ee0017', null, '402880e64763f59c014763f70c370001', '402881e44648134a014648163a6d0001');
INSERT INTO t_s_role_function VALUES ('402889fb4820bcb3014820c2f9ee001a', null, '402881e5479d04cc01479d0635030001', '402881e44648134a014648163a6d0001');
INSERT INTO t_s_role_function VALUES ('402889fb4820bcb3014820c2f9ee001b', null, '402889f64747048401474706d2a50001', '402881e44648134a014648163a6d0001');
INSERT INTO t_s_role_function VALUES ('402889ff4728a293014728b3fab70021', null, '4028d881436d514601436d52151f0020', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('4028d881436d514601436d521699006f', null, '4028d881436d514601436d52150a0019', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('4028d881436d514601436d52169e0070', null, '4028d881436d514601436d52150a0019', '4028d881436d514601436d5215a00042');
INSERT INTO t_s_role_function VALUES ('4028d881436d514601436d5216bb0077', null, '4028d881436d514601436d521513001d', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('4028d881436d514601436d5216bf0078', null, '4028d881436d514601436d521513001d', '4028d881436d514601436d5215a00042');
INSERT INTO t_s_role_function VALUES ('4028d881436d514601436d5216c30079', null, '4028d881436d514601436d521516001e', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('4028d881436d514601436d5216c7007a', null, '4028d881436d514601436d521516001e', '4028d881436d514601436d5215a00042');
INSERT INTO t_s_role_function VALUES ('4028d881436d514601436d5216ca007b', null, '4028d881436d514601436d52151a001f', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('4028d881436d514601436d5216cc007c', null, '4028d881436d514601436d52151a001f', '4028d881436d514601436d5215a00042');
INSERT INTO t_s_role_function VALUES ('4028d881436d514601436d5216d4007e', null, '4028d881436d514601436d52151f0020', '4028d881436d514601436d5215a00042');
INSERT INTO t_s_role_function VALUES ('4028d881436d514601436d5216d7007f', null, '4028d881436d514601436d5215220021', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('4028d881436d514601436d5216dc0080', null, '4028d881436d514601436d5215220021', '4028d881436d514601436d5215a00042');
INSERT INTO t_s_role_function VALUES ('4028d881436d514601436d5216eb0084', null, '4028d881436d514601436d5215260023', '4028d881436d514601436d5215a00042');
INSERT INTO t_s_role_function VALUES ('4028d881436d514601436d5216f10086', null, '4028d881436d514601436d5215290024', '4028d881436d514601436d5215a00042');
INSERT INTO t_s_role_function VALUES ('4028d881474489d7014744985904000f', null, '402881e54705f629014705f7d5d40001', '402881e44648134a014648163a6d0001');
INSERT INTO t_s_role_function VALUES ('4028d881474489d70147449859040012', null, '297e7eb6469a4a8901469a54eff60006', '402881e44648134a014648163a6d0001');
INSERT INTO t_s_role_function VALUES ('4028d881474489d70147449859040014', null, '402881e545f5dd1a0145f5f32cf00005', '402881e44648134a014648163a6d0001');
INSERT INTO t_s_role_function VALUES ('4028d881474489d70147449859040015', null, '402881e545f5f4780145f61198810004', '402881e44648134a014648163a6d0001');
INSERT INTO t_s_role_function VALUES ('4028d881474489d70147449859040017', null, '402881e44695183a0146951ed79e0008', '402881e44648134a014648163a6d0001');
INSERT INTO t_s_role_function VALUES ('4028d881474489d70147449859040019', null, '402881e946f7bcb20146f7c8bfc60003', '402881e44648134a014648163a6d0001');
INSERT INTO t_s_role_function VALUES ('4028d881474489d7014744985904001a', null, '402881e946f7bcb20146f7c763470001', '402881e44648134a014648163a6d0001');
INSERT INTO t_s_role_function VALUES ('4028d881474489d7014744985904001d', null, '402881e545f5dd1a0145f5de9bb60001', '402881e44648134a014648163a6d0001');
INSERT INTO t_s_role_function VALUES ('4028d881474489d7014744985904001e', null, '402881e94701df96014701e5fe2e0001', '402881e44648134a014648163a6d0001');
INSERT INTO t_s_role_function VALUES ('4028d881474489d7014744985904001f', null, '402881e44695183a0146951af2b70004', '402881e44648134a014648163a6d0001');
INSERT INTO t_s_role_function VALUES ('4028d881474489d70147449859140021', null, '402881e44695183a0146951b66050006', '402881e44648134a014648163a6d0001');
INSERT INTO t_s_role_function VALUES ('4028d881474489d70147449859140022', null, '402881e5470bc37201470bd136b20001', '402881e44648134a014648163a6d0001');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819d9950012', null, '402881e647f8d19c0147f8d522ec0001', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819d9a50014', null, '2c9716d547c2f4290147c36c654e0001', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819d9a50015', null, '402881e5479d04cc01479d0675b90003', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819d9a50017', null, '402881e847d4dc160147d4de5f870001', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819d9a50018', null, '402881e44807fe29014808037c1c0006', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819d9a50019', null, '402881e9481f46a801481f51442a0004', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819d9a5001b', null, '402881e946f7bcb20146f7c763470001', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819d9a5001c', null, '4028d881436d514601436d52c2fb0181', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819d9a5001d', null, '402881e9481f46a801481f506a3c0002', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819d9a5001e', null, '402881e44695183a0146951b66050006', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819d9a50021', null, '402881e54705f629014705f7d5d40001', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819d9a50023', null, '402881e5479d04cc01479d0635030001', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819d9a50024', null, '402889f64747048401474706d2a50001', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819d9a50025', null, '402881e647b5bae60147b5bd8b320001', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819d9a50026', null, '402881e545f5f4780145f61198810004', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819d9d30028', null, '4028d881436d514601436d5449330189', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819d9d30029', null, '402881e44695183a0146951ed79e0008', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819d9d3002a', null, '4028d881436d514601436d5485af018b', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819d9d3002b', null, '402881e946f7bcb20146f7c8bfc60003', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819d9d3002c', null, '402881e545f5dd1a0145f5de9bb60001', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819d9d3002d', null, '402881e94701df96014701e5fe2e0001', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819d9d3002e', null, '402881e9481f46a801481f52afb70006', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819d9d30030', null, '402889f64747048401474707902e0003', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819d9d30031', null, '4028d881436d514601436d5618400191', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819d9d30032', null, '402881e54808141b0148082494eb001a', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819d9d30033', null, '402881e545f5dd1a0145f5f32cf00005', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819d9d30035', null, '402881e8460d7e5301460d81c7a60001', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819d9d30036', null, '402881e447ab60250147ab7211830001', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819d9d30038', null, '4028d881436d514601436d5af95501b1', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819d9d30039', null, '402880e64763f59c014763f70c370001', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819d9d3003a', null, '402881e5470bc37201470bd136b20001', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819da02003b', null, '4028d881436d514601436d5884be019d', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819da02003c', null, '4028d881436d514601436d59d6d901a7', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819da02003d', null, '402880e6478c6d8201478c71c5460001', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819da02003e', null, '297e7eb6469a4a8901469a54eff60006', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819da02003f', null, '402881e448313d1a0148314004310001', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819da020041', null, '402881e447a678500147a679e8c30001', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f801487819da020042', null, '402881e44695183a0146951af2b70004', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f8014878381bad0086', null, 'f7a8a3a9487816f801487836b363007d', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f8014878381bad0087', null, 'f7a8a3a9487816f80148783723340081', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f8014878381bad0088', null, 'f7a8a3a9487816f801487836e83e007f', '4028d881436d514601436d52159c0041');
INSERT INTO t_s_role_function VALUES ('f7a8a3a9487816f8014878381bad0089', null, 'f7a8a3a9487816f8014878375c830083', '4028d881436d514601436d52159c0041');

-- ----------------------------
-- Table structure for `t_s_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_role_user`;
CREATE TABLE `t_s_role_user` (
  `ID` varchar(32) NOT NULL,
  `roleid` varchar(32) default NULL,
  `userid` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_n2ucxeorvpjy7qhnmuem01kbx` (`roleid`),
  KEY `FK_d4qb5xld2pfb0bkjx9iwtolda` (`userid`),
  CONSTRAINT `FK_d4qb5xld2pfb0bkjx9iwtolda` FOREIGN KEY (`userid`) REFERENCES `t_s_user` (`id`),
  CONSTRAINT `FK_n2ucxeorvpjy7qhnmuem01kbx` FOREIGN KEY (`roleid`) REFERENCES `t_s_role` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_role_user
-- ----------------------------
INSERT INTO t_s_role_user VALUES ('402880e447d2f1fb0147d2f582560003', '4028d881436d514601436d5215a00042', '402880e447d2f1fb0147d2f580d40002');
INSERT INTO t_s_role_user VALUES ('402880e447d7243d0147d72ea4420003', '4028d881436d514601436d5215a00042', '402880e447d7243d0147d72ea3eb0002');
INSERT INTO t_s_role_user VALUES ('402881e4461f9c6401461fa3956d0009', '4028d881436d514601436d52159c0041', '402881e4461f9c6401461fa2e6f50002');
INSERT INTO t_s_role_user VALUES ('402881e44648134a014648174ab3000d', '402881e44648134a014648163a6d0001', '402881e44648134a014648174a45000c');
INSERT INTO t_s_role_user VALUES ('4028bce447cf8bda0147cf90493f0007', '4028d881436d514601436d5215a00042', '4028bce447cf8bda0147cf9047090006');
INSERT INTO t_s_role_user VALUES ('4028d881436d514601436d52179f00bf', '4028d881436d514601436d52159c0041', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_role_user VALUES ('4028d881436d514601436d5217a300c0', '4028d881436d514601436d52159c0041', '4028d881436d514601436d5215ac0043');
INSERT INTO t_s_role_user VALUES ('4028d881436d514601436d5217a700c1', '4028d881436d514601436d5215a00042', '4028d881436d514601436d5215b20044');
INSERT INTO t_s_role_user VALUES ('4028d881436d514601436d5217aa00c2', '4028d881436d514601436d52159c0041', '4028d881436d514601436d5215b80045');
INSERT INTO t_s_role_user VALUES ('4028d881436d514601436d5217ad00c3', '4028d881436d514601436d52159c0041', '4028d881436d514601436d5215bc0046');
INSERT INTO t_s_role_user VALUES ('f7a8a3a9487816f801487817c6a30002', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f801487817c4fd0001');
INSERT INTO t_s_role_user VALUES ('f7a8a3a9487816f8014878192393000e', 'f7a8a3a9487816f801487818df950009', 'f7a8a3a9487816f801487818b3070006');
INSERT INTO t_s_role_user VALUES ('f7a8a3a9487816f80148781e4d0c004c', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f80148781e4cfc004b');
INSERT INTO t_s_role_user VALUES ('f7a8a3a9487816f8014878200b950052', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f8014878200b850051');
INSERT INTO t_s_role_user VALUES ('f7a8a3a9487816f80148782154ce0058', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f80148782154be0057');
INSERT INTO t_s_role_user VALUES ('f7a8a3a9487816f801487822427a005e', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f801487822427a005d');
INSERT INTO t_s_role_user VALUES ('f7a8a3a9487816f801487829a8080077', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f801487829a7f80076');
INSERT INTO t_s_role_user VALUES ('f7a8a3a9487816f80148783b293b0090', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f80148783b292b008f');
INSERT INTO t_s_role_user VALUES ('f7a8a3a9487816f8014878449b7200a9', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f8014878449b6200a8');
INSERT INTO t_s_role_user VALUES ('f7a8a3a9487816f801487845f3ce00ae', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f801487845f3be00ad');
INSERT INTO t_s_role_user VALUES ('f7a8a3a9487816f801487848151800b5', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f801487848150800b4');
INSERT INTO t_s_role_user VALUES ('f7a8a3a9487816f801487848e4db00bb', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f801487848e4cb00ba');
INSERT INTO t_s_role_user VALUES ('f7a8a3a9487816f80148784ef42000c6', '402881e44648134a014648163a6d0001', 'f7a8a3a9487816f80148784ef41000c5');
INSERT INTO t_s_role_user VALUES ('f7a8a3a9487816f80148784fb75100d0', '402881e44648134a014648163a6d0001', 'f7a8a3a9487816f80148784fb74100cf');
INSERT INTO t_s_role_user VALUES ('f7a8a3a9487816f801487852a92900d8', '402881e44648134a014648163a6d0001', 'f7a8a3a9487816f801487852a91a00d7');
INSERT INTO t_s_role_user VALUES ('f7a8a3a9487816f801487854855b00de', '402881e44648134a014648163a6d0001', 'f7a8a3a9487816f801487854854c00dd');
INSERT INTO t_s_role_user VALUES ('f7a8a3a9487816f80148785e9c0f0108', '402881e44648134a014648163a6d0001', 'f7a8a3a9487816f80148785e9c0f0107');
INSERT INTO t_s_role_user VALUES ('f7a8a3a9487816f80148786f49b70140', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f80148786f49a7013f');
INSERT INTO t_s_role_user VALUES ('f7a8a3a9487816f80148787496380145', '402881e44648134a014648163a6d0001', 'f7a8a3a9487816f80148787496290144');
INSERT INTO t_s_role_user VALUES ('f7a8a3a9487816f80148788795420151', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f80148788795320150');
INSERT INTO t_s_role_user VALUES ('f7a8a3a9487816f80148788d22950164', '402881e44648134a014648163a6d0001', 'f7a8a3a9487816f80148788d22850163');
INSERT INTO t_s_role_user VALUES ('f7a8a3a9487816f801487898dc4b0173', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f801487898dc3b0172');
INSERT INTO t_s_role_user VALUES ('f7a8a3a9487816f80148789a88f10178', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f80148789a88e10177');
INSERT INTO t_s_role_user VALUES ('f7a8a3a9487816f8014878a64dc20186', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f8014878a64db30185');
INSERT INTO t_s_role_user VALUES ('f7a8a3a9487816f8014878bc225201a8', '4028d881436d514601436d5215a00042', 'f7a8a3a9487816f8014878bc224201a7');

-- ----------------------------
-- Table structure for `t_s_student`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_student`;
CREATE TABLE `t_s_student` (
  `ID` varchar(32) NOT NULL,
  `classname` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `sex` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_student
-- ----------------------------
INSERT INTO t_s_student VALUES ('4028d881436d514601436d521ae80165', '1班', '张三', 'f');
INSERT INTO t_s_student VALUES ('4028d881436d514601436d521aea0166', '1班', '李四', 'f');
INSERT INTO t_s_student VALUES ('4028d881436d514601436d521aeb0167', '1班', '王五', 'm');
INSERT INTO t_s_student VALUES ('4028d881436d514601436d521aec0168', '1班', '赵六', 'f');
INSERT INTO t_s_student VALUES ('4028d881436d514601436d521aec0169', '2班', '张三', 'f');
INSERT INTO t_s_student VALUES ('4028d881436d514601436d521aee016a', '2班', '李四', 'f');
INSERT INTO t_s_student VALUES ('4028d881436d514601436d521af0016b', '2班', '王五', 'm');
INSERT INTO t_s_student VALUES ('4028d881436d514601436d521af1016c', '2班', '赵六', 'f');
INSERT INTO t_s_student VALUES ('4028d881436d514601436d521af3016d', '3班', '张三', 'f');
INSERT INTO t_s_student VALUES ('4028d881436d514601436d521af4016e', '3班', '李四', 'f');
INSERT INTO t_s_student VALUES ('4028d881436d514601436d521af7016f', '3班', '王五', 'm');
INSERT INTO t_s_student VALUES ('4028d881436d514601436d521afa0170', '3班', '李四', 'f');
INSERT INTO t_s_student VALUES ('4028d881436d514601436d521afe0171', '3班', '王五', 'm');
INSERT INTO t_s_student VALUES ('4028d881436d514601436d521aff0172', '3班', '赵六', 'f');
INSERT INTO t_s_student VALUES ('4028d881436d514601436d521b000173', '4班', '张三', 'f');
INSERT INTO t_s_student VALUES ('4028d881436d514601436d521b010174', '4班', '李四', 'f');
INSERT INTO t_s_student VALUES ('4028d881436d514601436d521b030175', '4班', '王五', 'm');
INSERT INTO t_s_student VALUES ('4028d881436d514601436d521b040176', '4班', '赵六', 'f');
INSERT INTO t_s_student VALUES ('4028d881436d514601436d521b040177', '5班', '张三', 'm');
INSERT INTO t_s_student VALUES ('4028d881436d514601436d521b050178', '5班', '李四', 'f');
INSERT INTO t_s_student VALUES ('4028d881436d514601436d521b060179', '5班', '王五', 'm');
INSERT INTO t_s_student VALUES ('4028d881436d514601436d521b07017a', '5班', '赵六', 'm');
INSERT INTO t_s_student VALUES ('4028d881436d514601436d521b08017b', '5班', '赵六', 'm');
INSERT INTO t_s_student VALUES ('4028d881436d514601436d521b09017c', '5班', '李四', 'f');
INSERT INTO t_s_student VALUES ('4028d881436d514601436d521b0a017d', '5班', '王五', 'm');
INSERT INTO t_s_student VALUES ('4028d881436d514601436d521b0b017e', '5班', '赵六', 'm');
INSERT INTO t_s_student VALUES ('4028d881436d514601436d521b0c017f', '5班', '赵六', 'm');

-- ----------------------------
-- Table structure for `t_s_territory`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_territory`;
CREATE TABLE `t_s_territory` (
  `ID` varchar(32) NOT NULL,
  `territorycode` varchar(10) NOT NULL,
  `territorylevel` smallint(6) NOT NULL,
  `territoryname` varchar(50) NOT NULL,
  `territory_pinyin` varchar(40) default NULL,
  `territorysort` varchar(3) NOT NULL,
  `x_wgs84` double NOT NULL,
  `y_wgs84` double NOT NULL,
  `territoryparentid` varchar(32) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_territory
-- ----------------------------
INSERT INTO t_s_territory VALUES ('1', '100', '1', '全国', 'qg', '0', '106.258754', '38.471318', '0');
INSERT INTO t_s_territory VALUES ('10', '00000016', '2', '河南省', 'HNS', '0', '113.687228', '34.76819', '1');
INSERT INTO t_s_territory VALUES ('100', '371300', '3', '临沂市', 'LYS', '0', '118.356448', '35.104672', '18');
INSERT INTO t_s_territory VALUES ('1000', '370903', '4', '岱岳区', 'DYQ', '0', '117.041582', '36.18799', '96');
INSERT INTO t_s_territory VALUES ('1001', '370921', '4', '宁阳县', 'NYX', '0', '116.805797', '35.758787', '96');
INSERT INTO t_s_territory VALUES ('1002', '370923', '4', '东平县', 'DPX', '0', '116.470304', '35.937102', '96');
INSERT INTO t_s_territory VALUES ('1003', '370982', '4', '新泰市', 'XTS', '0', '117.767953', '35.909032', '96');
INSERT INTO t_s_territory VALUES ('1004', '370983', '4', '肥城市', 'FCS', '0', '116.768358', '36.182571', '96');
INSERT INTO t_s_territory VALUES ('1005', '371002', '4', '环翠区', 'HCQ', '0', '122.123444', '37.501991', '97');
INSERT INTO t_s_territory VALUES ('1006', '371081', '4', '文登市', 'WDS', '0', '122.058128', '37.1939129', '97');
INSERT INTO t_s_territory VALUES ('1007', '371082', '4', '荣成市', 'RCS', '0', '122.486676', '37.165249', '97');
INSERT INTO t_s_territory VALUES ('1008', '371083', '4', '乳山市', 'RSS', '0', '121.539764', '36.919816', '97');
INSERT INTO t_s_territory VALUES ('1009', '371102', '4', '东港区', 'DGQ', '0', '119.462228', '35.425475', '98');
INSERT INTO t_s_territory VALUES ('101', '371400', '3', '德州市', 'DZS', '0', '116.357465', '37.434093', '18');
INSERT INTO t_s_territory VALUES ('1010', '371103', '4', '岚山区', 'LSQ', '0', '119.318813', '35.121816', '98');
INSERT INTO t_s_territory VALUES ('1011', '371121', '4', '五莲县', 'WLX', '0', '119.208744', '35.750095', '98');
INSERT INTO t_s_territory VALUES ('1012', '371122', '4', '莒县', 'JX', '0', '118.837131', '35.579868', '98');
INSERT INTO t_s_territory VALUES ('1013', '371202', '4', '莱城区', 'LCQ', '0', '117.659864', '36.203208', '99');
INSERT INTO t_s_territory VALUES ('1014', '371203', '4', '钢城区', 'GCQ', '0', '117.811355', '36.058572', '99');
INSERT INTO t_s_territory VALUES ('1015', '371302', '4', '兰山区', 'LSQ', '0', '118.347707', '35.051729', '100');
INSERT INTO t_s_territory VALUES ('1016', '371311', '4', '罗庄区', 'LZQ', '0', '118.284786', '34.996741', '100');
INSERT INTO t_s_territory VALUES ('1017', '371312', '4', '河东区', 'HDQ', '0', '118.402893', '35.089917', '100');
INSERT INTO t_s_territory VALUES ('1018', '371321', '4', '沂南县', 'YNX', '0', '118.465213', '35.549976', '100');
INSERT INTO t_s_territory VALUES ('1019', '371322', '4', '郯城县', 'TCX', '0', '118.367263', '34.613557', '100');
INSERT INTO t_s_territory VALUES ('102', '371500', '3', '聊城市', 'LCS', '0', '115.985371', '36.4567039', '18');
INSERT INTO t_s_territory VALUES ('1020', '371323', '4', '沂水县', 'YSX', '0', '118.627918', '35.79045', '100');
INSERT INTO t_s_territory VALUES ('1021', '371324', '4', '苍山县', 'CSX', '0', '118.07065', '34.857149', '100');
INSERT INTO t_s_territory VALUES ('1022', '371325', '4', '费县', 'FX', '0', '117.977868', '35.26634', '100');
INSERT INTO t_s_territory VALUES ('1023', '371326', '4', '平邑县', 'PYX', '0', '117.640352', '35.5059429', '100');
INSERT INTO t_s_territory VALUES ('1024', '371327', '4', '莒南县', 'JNX', '0', '118.835163', '35.174846', '100');
INSERT INTO t_s_territory VALUES ('1025', '371328', '4', '蒙阴县', 'MYX', '0', '117.945085', '35.710032', '100');
INSERT INTO t_s_territory VALUES ('1026', '371329', '4', '临沭县', 'LSX', '0', '118.650782', '34.919852', '100');
INSERT INTO t_s_territory VALUES ('1027', '371402', '4', '德城区', 'DCQ', '0', '116.299434', '37.451272', '101');
INSERT INTO t_s_territory VALUES ('1028', '371421', '4', '陵县', 'LX', '0', '116.576176', '37.33579', '101');
INSERT INTO t_s_territory VALUES ('1029', '371422', '4', '宁津县', 'NJX', '0', '116.800324', '37.652329', '101');
INSERT INTO t_s_territory VALUES ('103', '371600', '3', '滨州市', 'BZS', '0', '117.970703', '37.38199', '18');
INSERT INTO t_s_territory VALUES ('1030', '371423', '4', '庆云县', 'QYX', '0', '117.385123', '37.77539', '101');
INSERT INTO t_s_territory VALUES ('1031', '371424', '4', '临邑县', 'LYX', '0', '116.86665', '37.189864', '101');
INSERT INTO t_s_territory VALUES ('1032', '371425', '4', '齐河县', 'QHX', '0', '116.758917', '36.795011', '101');
INSERT INTO t_s_territory VALUES ('1033', '371426', '4', '平原县', 'PYX', '0', '116.434187', '37.165419', '101');
INSERT INTO t_s_territory VALUES ('1034', '371427', '4', '夏津县', 'XJX', '0', '116.001726', '36.948371', '101');
INSERT INTO t_s_territory VALUES ('1035', '371428', '4', '武城县', 'WCX', '0', '116.069302', '37.213311', '101');
INSERT INTO t_s_territory VALUES ('1036', '371481', '4', '乐陵市', 'LLS', '0', '117.231935', '37.729907', '101');
INSERT INTO t_s_territory VALUES ('1037', '371482', '4', '禹城市', 'YCS', '0', '116.638387', '36.934259', '101');
INSERT INTO t_s_territory VALUES ('1038', '371502', '4', '东昌府区', 'DCFQ', '0', '115.988484', '36.434697', '102');
INSERT INTO t_s_territory VALUES ('1039', '371521', '4', '阳谷县', 'YGX', '0', '115.79182', '36.114392', '102');
INSERT INTO t_s_territory VALUES ('104', '371700', '3', '菏泽市', 'HZS', '0', '115.480656', '35.23375', '18');
INSERT INTO t_s_territory VALUES ('1040', '371522', '4', '莘县', 'SX', '0', '115.671191', '36.233599', '102');
INSERT INTO t_s_territory VALUES ('1041', '371523', '4', '茌平县', 'CPX', '0', '116.255282', '36.5807639', '102');
INSERT INTO t_s_territory VALUES ('1042', '371524', '4', '东阿县', 'DAX', '0', '116.24758', '36.334917', '102');
INSERT INTO t_s_territory VALUES ('1043', '371525', '4', '冠县', 'GX', '0', '115.44274', '36.484009', '102');
INSERT INTO t_s_territory VALUES ('1044', '371526', '4', '高唐县', 'GTX', '0', '116.231478', '36.866062', '102');
INSERT INTO t_s_territory VALUES ('1045', '371581', '4', '临清市', 'LQS', '0', '115.704881', '36.838277', '102');
INSERT INTO t_s_territory VALUES ('1046', '371602', '4', '滨城区', 'BCQ', '0', '118.019146', '37.43206', '103');
INSERT INTO t_s_territory VALUES ('1047', '371621', '4', '惠民县', 'HMX', '0', '117.510451', '37.489769', '103');
INSERT INTO t_s_territory VALUES ('1048', '371622', '4', '阳信县', 'YXX', '0', '117.578262', '37.641106', '103');
INSERT INTO t_s_territory VALUES ('1049', '371623', '4', '无棣县', 'WDX', '0', '117.625696', '37.770261', '103');
INSERT INTO t_s_territory VALUES ('1050', '371624', '4', '沾化县', 'ZHX', '0', '118.132199', '37.698281', '103');
INSERT INTO t_s_territory VALUES ('1051', '371625', '4', '博兴县', 'BXX', '0', '118.131815', '37.150226', '103');
INSERT INTO t_s_territory VALUES ('1052', '371626', '4', '邹平县', 'ZPX', '0', '117.743109', '36.862989', '103');
INSERT INTO t_s_territory VALUES ('1053', '371702', '4', '牡丹区', 'MDQ', '0', '115.417827', '35.252512', '104');
INSERT INTO t_s_territory VALUES ('1054', '371721', '4', '曹县', 'CX', '0', '115.542328', '34.825508', '104');
INSERT INTO t_s_territory VALUES ('1055', '371722', '4', '单县', 'DX', '0', '116.107428', '34.778808', '104');
INSERT INTO t_s_territory VALUES ('1056', '371723', '4', '成武县', 'CWX', '0', '115.889765', '34.952459', '104');
INSERT INTO t_s_territory VALUES ('1057', '371724', '4', '巨野县', 'JYX', '0', '116.094674', '35.396261', '104');
INSERT INTO t_s_territory VALUES ('1058', '371725', '4', '郓城县', 'YCX', '0', '115.943613', '35.599758', '104');
INSERT INTO t_s_territory VALUES ('1059', '371726', '4', '鄄城县', 'JCX', '0', '115.510193', '35.563408', '104');
INSERT INTO t_s_territory VALUES ('1060', '371727', '4', '定陶县', 'DTX', '0', '115.573094', '35.071', '104');
INSERT INTO t_s_territory VALUES ('1061', '371728', '4', '东明县', 'DMX', '0', '115.089905', '35.289368', '104');
INSERT INTO t_s_territory VALUES ('11', '00000008', '2', '黑龙江省', 'HLJS', '0', '126.662507', '45.7421699', '1');
INSERT INTO t_s_territory VALUES ('12', '20000000', '2', '上海市', 'SHS', '0', '121.473704', '31.230393', '1');
INSERT INTO t_s_territory VALUES ('13', '00000010', '2', '江苏省', 'JSS', '0', '118.763232', '32.061707', '1');
INSERT INTO t_s_territory VALUES ('14', '00000011', '2', '浙江省', 'ZJS', '0', '120.153676', '30.26586', '1');
INSERT INTO t_s_territory VALUES ('15', '00000012', '2', '安徽省', 'AHS', '0', '117.284923', '31.861184', '1');
INSERT INTO t_s_territory VALUES ('16', '00000013', '2', '福建省', 'FJS', '0', '119.296506', '26.099933', '1');
INSERT INTO t_s_territory VALUES ('17', '00000014', '2', '江西省', 'JXS', '0', '115.909175', '28.674424', '1');
INSERT INTO t_s_territory VALUES ('1739', '360102', '4', '东湖区', 'DHQ', '0', '115.89901', '28.6849159', '184');
INSERT INTO t_s_territory VALUES ('1740', '360103', '4', '西湖区', 'XHQ', '0', '115.877287', '28.656887', '184');
INSERT INTO t_s_territory VALUES ('1741', '360104', '4', '青云谱区', 'QYPQ', '0', '115.925749', '28.621169', '184');
INSERT INTO t_s_territory VALUES ('1742', '360105', '4', '湾里区', 'WLQ', '0', '115.730994', '28.714869', '184');
INSERT INTO t_s_territory VALUES ('1743', '360111', '4', '青山湖区', 'QSHQ', '0', '115.962144', '28.682985', '184');
INSERT INTO t_s_territory VALUES ('1744', '360121', '4', '南昌县', 'NCX', '0', '115.944162', '28.545459', '184');
INSERT INTO t_s_territory VALUES ('1745', '360122', '4', '新建县', 'XJX', '0', '115.815233', '28.692437', '184');
INSERT INTO t_s_territory VALUES ('1746', '360123', '4', '安义县', 'AYX', '0', '115.549199', '28.844429', '184');
INSERT INTO t_s_territory VALUES ('1747', '360124', '4', '进贤县', 'JXX', '0', '116.240924', '28.376918', '184');
INSERT INTO t_s_territory VALUES ('1748', '360202', '4', '昌江区', 'CJQ', '0', '117.183688', '29.27342', '185');
INSERT INTO t_s_territory VALUES ('1749', '360203', '4', '珠山区', 'ZSQ', '0', '117.202336', '29.301272', '185');
INSERT INTO t_s_territory VALUES ('1750', '360222', '4', '浮梁县', 'FLX', '0', '117.215061', '29.351739', '185');
INSERT INTO t_s_territory VALUES ('1751', '360281', '4', '乐平市', 'LPS', '0', '117.129169', '28.961902', '185');
INSERT INTO t_s_territory VALUES ('1752', '360302', '4', '安源区', 'AYQ', '0', '113.87073', '27.615202', '186');
INSERT INTO t_s_territory VALUES ('1753', '360313', '4', '湘东区', 'XDQ', '0', '113.733059', '27.640075', '186');
INSERT INTO t_s_territory VALUES ('1754', '360321', '4', '莲花县', 'LHX', '0', '113.961465', '27.127669', '186');
INSERT INTO t_s_territory VALUES ('1755', '360322', '4', '上栗县', 'SLX', '0', '113.795219', '27.880567', '186');
INSERT INTO t_s_territory VALUES ('1756', '360323', '4', '芦溪县', 'LXX', '0', '114.029595', '27.631145', '186');
INSERT INTO t_s_territory VALUES ('1757', '360402', '4', '庐山区', 'LSQ', '0', '115.989212', '29.671775', '187');
INSERT INTO t_s_territory VALUES ('1758', '360403', '4', '浔阳区', 'XYQ', '0', '115.990399', '29.72746', '187');
INSERT INTO t_s_territory VALUES ('1759', '360421', '4', '九江县', 'JJX', '0', '115.911314', '29.608456', '187');
INSERT INTO t_s_territory VALUES ('1760', '360423', '4', '武宁县', 'WNX', '0', '115.100579', '29.256323', '187');
INSERT INTO t_s_territory VALUES ('1761', '360424', '4', '修水县', 'XSX', '0', '114.547356', '29.025707', '187');
INSERT INTO t_s_territory VALUES ('1762', '360425', '4', '永修县', 'YXX', '0', '115.809111', '29.021824', '187');
INSERT INTO t_s_territory VALUES ('1763', '360426', '4', '德安县', 'DAX', '0', '115.756883', '29.314348', '187');
INSERT INTO t_s_territory VALUES ('1764', '360427', '4', '星子县', 'XZX', '0', '116.044893', '29.448037', '187');
INSERT INTO t_s_territory VALUES ('1765', '360428', '4', '都昌县', 'DCX', '0', '116.204099', '29.273194', '187');
INSERT INTO t_s_territory VALUES ('1766', '360429', '4', '湖口县', 'HKX', '0', '116.220266', '29.73944', '187');
INSERT INTO t_s_territory VALUES ('1767', '360430', '4', '彭泽县', 'PZX', '0', '116.549359', '29.896061', '187');
INSERT INTO t_s_territory VALUES ('1768', '360481', '4', '瑞昌市', 'RCS', '0', '115.681504', '29.673795', '187');
INSERT INTO t_s_territory VALUES ('1769', '360499', '4', '共青城', 'GQC', '0', '115.774', '29.2417', '187');
INSERT INTO t_s_territory VALUES ('1770', '360502', '4', '渝水区', 'YSQ', '0', '114.944574', '27.80038', '188');
INSERT INTO t_s_territory VALUES ('1771', '360521', '4', '分宜县', 'FYX', '0', '114.692039', '27.814628', '188');
INSERT INTO t_s_territory VALUES ('1772', '360602', '4', '月湖区', 'YHQ', '0', '117.036676', '28.238797', '189');
INSERT INTO t_s_territory VALUES ('1773', '360622', '4', '余江县', 'YJX', '0', '116.818871', '28.204174', '189');
INSERT INTO t_s_territory VALUES ('1774', '360681', '4', '贵溪市', 'GXS', '0', '117.245497', '28.292519', '189');
INSERT INTO t_s_territory VALUES ('1775', '360702', '4', '章贡区', 'ZGQ', '0', '114.941826', '25.862827', '190');
INSERT INTO t_s_territory VALUES ('1776', '360721', '4', '赣县', 'GX', '0', '115.011561', '25.860691', '190');
INSERT INTO t_s_territory VALUES ('1777', '360722', '4', '信丰县', 'XFX', '0', '114.922963', '25.386278', '190');
INSERT INTO t_s_territory VALUES ('1778', '360723', '4', '大余县', 'DYX', '0', '114.362094', '25.401283', '190');
INSERT INTO t_s_territory VALUES ('1779', '360724', '4', '上犹县', 'SYX', '0', '114.551371', '25.784978', '190');
INSERT INTO t_s_territory VALUES ('1780', '360725', '4', '崇义县', 'CYX', '0', '114.308273', '25.681879', '190');
INSERT INTO t_s_territory VALUES ('1781', '360726', '4', '安远县', 'AYX', '0', '115.393922', '25.136925', '190');
INSERT INTO t_s_territory VALUES ('1782', '360727', '4', '龙南县', 'LNX', '0', '114.789811', '24.911107', '190');
INSERT INTO t_s_territory VALUES ('1783', '360728', '4', '定南县', 'DNX', '0', '115.027845', '24.78441', '190');
INSERT INTO t_s_territory VALUES ('1784', '360729', '4', '全南县', 'QNX', '0', '114.530125', '24.742401', '190');
INSERT INTO t_s_territory VALUES ('1785', '360730', '4', '宁都县', 'NDX', '0', '116.009472', '26.470116', '190');
INSERT INTO t_s_territory VALUES ('1786', '360731', '4', '于都县', 'YDX', '0', '115.41551', '25.952066', '190');
INSERT INTO t_s_territory VALUES ('1787', '360732', '4', '兴国县', 'XGX', '0', '115.36319', '26.337937', '190');
INSERT INTO t_s_territory VALUES ('1788', '360733', '4', '会昌县', 'HCX', '0', '115.786057', '25.600272', '190');
INSERT INTO t_s_territory VALUES ('1789', '360734', '4', '寻乌县', 'YWX', '0', '115.646525', '24.963322', '190');
INSERT INTO t_s_territory VALUES ('1790', '360735', '4', '石城县', 'SCX', '0', '116.354201', '26.32686', '190');
INSERT INTO t_s_territory VALUES ('1791', '360781', '4', '瑞金市', 'RJS', '0', '116.02713', '25.885561', '190');
INSERT INTO t_s_territory VALUES ('1792', '360782', '4', '南康市', 'NKS', '0', '114.765238', '25.661356', '190');
INSERT INTO t_s_territory VALUES ('1793', '360802', '4', '吉州区', 'JZQ', '0', '114.994307', '27.129975', '191');
INSERT INTO t_s_territory VALUES ('1794', '360803', '4', '青原区', 'QYQ', '0', '115.01424', '27.081719', '191');
INSERT INTO t_s_territory VALUES ('1795', '360821', '4', '吉安县', 'JAX', '0', '114.907659', '27.040142', '191');
INSERT INTO t_s_territory VALUES ('1796', '360822', '4', '吉水县', 'JSX', '0', '115.135507', '27.229632', '191');
INSERT INTO t_s_territory VALUES ('1797', '360823', '4', '峡江县', 'XJX', '0', '115.316566', '27.582901', '191');
INSERT INTO t_s_territory VALUES ('1798', '360824', '4', '新干县', 'XGX', '0', '115.393043', '27.740809', '191');
INSERT INTO t_s_territory VALUES ('1799', '360825', '4', '永丰县', 'YFX', '0', '115.441477', '27.317869', '191');
INSERT INTO t_s_territory VALUES ('18', '00000015', '2', '山东省', 'SDS', '0', '117.020411', '36.668627', '1');
INSERT INTO t_s_territory VALUES ('1800', '360826', '4', '泰和县', 'THX', '0', '114.908861', '26.790231', '191');
INSERT INTO t_s_territory VALUES ('1801', '360827', '4', '遂川县', 'SCX', '0', '114.52098', '26.311894', '191');
INSERT INTO t_s_territory VALUES ('1802', '360828', '4', '万安县', 'WAX', '0', '114.786256', '26.458257', '191');
INSERT INTO t_s_territory VALUES ('1803', '360829', '4', '安福县', 'AFX', '0', '114.619893', '27.392874', '191');
INSERT INTO t_s_territory VALUES ('1804', '360830', '4', '永新县', 'YXX', '0', '114.242675', '26.945233', '191');
INSERT INTO t_s_territory VALUES ('1805', '360881', '4', '井冈山市', 'JGSS', '0', '114.289182', '26.748186', '191');
INSERT INTO t_s_territory VALUES ('1806', '360902', '4', '袁州区', 'YZQ', '0', '114.424657', '27.798846', '192');
INSERT INTO t_s_territory VALUES ('1807', '360921', '4', '奉新县', 'FXX', '0', '115.384904', '28.700806', '192');
INSERT INTO t_s_territory VALUES ('1808', '360922', '4', '万载县', 'WZX', '0', '114.447551', '28.10455', '192');
INSERT INTO t_s_territory VALUES ('1809', '360923', '4', '上高县', 'SGX', '0', '114.924494', '28.232827', '192');
INSERT INTO t_s_territory VALUES ('1810', '360924', '4', '宜丰县', 'YFX', '0', '114.803542', '28.393613', '192');
INSERT INTO t_s_territory VALUES ('1811', '360925', '4', '靖安县', 'JAX', '0', '115.362629', '28.861475', '192');
INSERT INTO t_s_territory VALUES ('1812', '360926', '4', '铜鼓县', 'TGX', '0', '114.37098', '28.520747', '192');
INSERT INTO t_s_territory VALUES ('1813', '360981', '4', '丰城市', 'FCS', '0', '115.771195', '28.159325', '192');
INSERT INTO t_s_territory VALUES ('1814', '360982', '4', '樟树市', 'ZSS', '0', '115.546063', '28.055796', '192');
INSERT INTO t_s_territory VALUES ('1815', '360983', '4', '高安市', 'GAS', '0', '115.375618', '28.417261', '192');
INSERT INTO t_s_territory VALUES ('1816', '361002', '4', '临川区', 'LCQ', '0', '116.31136', '27.934529', '193');
INSERT INTO t_s_territory VALUES ('1817', '361021', '4', '南城县', 'NCX', '0', '116.644658', '27.552748', '193');
INSERT INTO t_s_territory VALUES ('1818', '361022', '4', '黎川县', 'LCX', '0', '116.907508', '27.282382', '193');
INSERT INTO t_s_territory VALUES ('1819', '361023', '4', '南丰县', 'NFX', '0', '116.525725', '27.218445', '193');
INSERT INTO t_s_territory VALUES ('1820', '361024', '4', '崇仁县', 'CRX', '0', '116.061164', '27.764681', '193');
INSERT INTO t_s_territory VALUES ('1821', '361025', '4', '乐安县', 'LAX', '0', '115.837895', '27.420441', '193');
INSERT INTO t_s_territory VALUES ('1822', '361026', '4', '宜黄县', 'YHX', '0', '116.222128', '27.546146', '193');
INSERT INTO t_s_territory VALUES ('1823', '361027', '4', '金溪县', 'JXX', '0', '116.775435', '27.908337', '193');
INSERT INTO t_s_territory VALUES ('1824', '361028', '4', '资溪县', 'ZXX', '0', '117.060264', '27.706102', '193');
INSERT INTO t_s_territory VALUES ('1825', '361029', '4', '东乡县', 'DXX', '0', '116.590465', '28.236118', '193');
INSERT INTO t_s_territory VALUES ('1826', '361030', '4', '广昌县', 'GCX', '0', '116.325757', '26.837267', '193');
INSERT INTO t_s_territory VALUES ('1827', '361102', '4', '信州区', 'XZQ', '0', '117.966823', '28.43121', '194');
INSERT INTO t_s_territory VALUES ('1828', '361121', '4', '上饶县', 'SRX', '0', '117.90785', '28.448983', '194');
INSERT INTO t_s_territory VALUES ('1829', '361122', '4', '广丰县', 'GFX', '0', '118.19124', '28.436286', '194');
INSERT INTO t_s_territory VALUES ('1830', '361123', '4', '玉山县', 'YSX', '0', '118.245124', '28.682055', '194');
INSERT INTO t_s_territory VALUES ('1831', '361124', '4', '铅山县', 'QSX', '0', '117.709451', '28.315217', '194');
INSERT INTO t_s_territory VALUES ('1832', '361125', '4', '横峰县', 'HFX', '0', '117.596452', '28.407118', '194');
INSERT INTO t_s_territory VALUES ('1833', '361126', '4', '弋阳县', 'YYX', '0', '117.449588', '28.378044', '194');
INSERT INTO t_s_territory VALUES ('1834', '361127', '4', '余干县', 'YGX', '0', '116.695647', '28.702302', '194');
INSERT INTO t_s_territory VALUES ('1835', '361128', '4', '鄱阳县', 'PYX', '0', '116.699746', '29.011699', '194');
INSERT INTO t_s_territory VALUES ('1836', '361129', '4', '万年县', 'WNX', '0', '117.058445', '28.694582', '194');
INSERT INTO t_s_territory VALUES ('1837', '361130', '4', '婺源县', 'WYX', '0', '117.861911', '29.2480249', '194');
INSERT INTO t_s_territory VALUES ('1838', '361181', '4', '德兴市', 'DXS', '0', '117.578713', '28.946464', '194');
INSERT INTO t_s_territory VALUES ('1839', '370102', '4', '历下区', 'LXQ', '0', '117.07653', '36.666344', '195');
INSERT INTO t_s_territory VALUES ('184', '360100', '3', '南昌市', 'NCS', '0', '115.858089', '28.68316', '17');
INSERT INTO t_s_territory VALUES ('1840', '370103', '4', '市中区', 'SZQ', '0', '116.997475', '36.6511749', '195');
INSERT INTO t_s_territory VALUES ('1841', '370104', '4', '槐荫区', 'HYQ', '0', '116.90113', '36.651301', '195');
INSERT INTO t_s_territory VALUES ('1842', '370105', '4', '天桥区', 'TQQ', '0', '116.987492', '36.678016', '195');
INSERT INTO t_s_territory VALUES ('1843', '370112', '4', '历城区', 'LCQ', '0', '117.065222', '36.680171', '195');
INSERT INTO t_s_territory VALUES ('185', '360200', '3', '景德镇市', 'JDZS', '0', '117.17842', '29.268836', '17');
INSERT INTO t_s_territory VALUES ('186', '360300', '3', '萍乡市', 'PXS', '0', '113.854676', '27.622865', '17');
INSERT INTO t_s_territory VALUES ('187', '360400', '3', '九江市', 'JJS', '0', '116.001951', '29.705103', '17');
INSERT INTO t_s_territory VALUES ('188', '360500', '3', '新余市', 'XYS', '0', '114.91741', '27.817819', '17');
INSERT INTO t_s_territory VALUES ('189', '360600', '3', '鹰潭市', 'YTS', '0', '117.069202', '28.260189', '17');
INSERT INTO t_s_territory VALUES ('19', '00000017', '2', '湖北省', 'HBS', '0', '114.341921', '30.545861', '1');
INSERT INTO t_s_territory VALUES ('190', '360700', '3', '赣州市', 'GZS', '0', '114.935025', '25.831925', '17');
INSERT INTO t_s_territory VALUES ('191', '360800', '3', '吉安市', 'JAS', '0', '114.992912', '27.113039', '17');
INSERT INTO t_s_territory VALUES ('192', '360900', '3', '宜春市', 'YCS', '0', '114.416778', '27.815619', '17');
INSERT INTO t_s_territory VALUES ('193', '361000', '3', '抚州市', 'FZS', '0', '116.358176', '27.9492', '17');
INSERT INTO t_s_territory VALUES ('194', '361100', '3', '上饶市', 'SRS', '0', '117.943433', '28.454863', '17');
INSERT INTO t_s_territory VALUES ('195', '370100', '3', '济南市', 'JNS', '0', '116.994917', '36.665282', '18');
INSERT INTO t_s_territory VALUES ('20', '00000018', '2', '湖南省', 'HNS', '0', '112.98381', '28.112444', '1');
INSERT INTO t_s_territory VALUES ('21', '40000000', '2', '重庆市', 'ZQS', '0', '106.551557', '29.56301', '1');
INSERT INTO t_s_territory VALUES ('22', '00000022', '2', '四川省', 'SCS', '0', '104.075931', '30.651652', '1');
INSERT INTO t_s_territory VALUES ('23', '00000019', '2', '广东省', 'GDS', '0', '113.266531', '23.132191', '1');
INSERT INTO t_s_territory VALUES ('24', '00000020', '2', '广西壮族自治区', 'GXZZZZQ', '0', '108.327546', '22.815478', '1');
INSERT INTO t_s_territory VALUES ('25', '00000021', '2', '海南省', 'HNS', '0', '110.349229', '20.017378', '1');
INSERT INTO t_s_territory VALUES ('26', '810000', '2', '香港特别行政区', 'XGTBXZQ', '0', '114.109497', '22.396428', '1');
INSERT INTO t_s_territory VALUES ('27', '820000', '2', '澳门特别行政区', 'AMTBXZQ', '0', '113.543873', '22.198745', '1');
INSERT INTO t_s_territory VALUES ('28', '00000023', '2', '贵州省', 'GZS', '0', '106.707116', '26.598026', '1');
INSERT INTO t_s_territory VALUES ('29', '00000024', '2', '云南省', 'YNS', '0', '102.709812', '25.045359', '1');
INSERT INTO t_s_territory VALUES ('3', '00000006', '2', '辽宁省', 'LNS', '0', '123.42944', '41.835441', '1');
INSERT INTO t_s_territory VALUES ('30', '00000025', '2', '西藏自治区', 'XCZZQ', '0', '91.1170059', '29.647951', '1');
INSERT INTO t_s_territory VALUES ('31', '00000026', '2', '陕西省', 'SXS', '0', '108.954239', '34.265472', '1');
INSERT INTO t_s_territory VALUES ('32', '00000027', '2', '甘肃省', 'GSS', '0', '103.826308', '36.059421', '1');
INSERT INTO t_s_territory VALUES ('33', '00000028', '2', '青海省', 'QHS', '0', '101.780199', '36.620901', '1');
INSERT INTO t_s_territory VALUES ('34', '00000029', '2', '宁夏回族自治区', 'NXHZZZQ', '0', '106.258754', '38.471318', '1');
INSERT INTO t_s_territory VALUES ('35', '00000030', '2', '新疆维吾尔自治区', 'XJWWEZZQ', '0', '87.6278119', '43.793028', '1');
INSERT INTO t_s_territory VALUES ('4', '00000007', '2', '吉林省', 'JLS', '0', '125.326065', '43.896082', '1');
INSERT INTO t_s_territory VALUES ('5', '10000000', '2', '北京市', 'BJS', '0', '116.407413', '39.904214', '1');
INSERT INTO t_s_territory VALUES ('6', '30000000', '2', '天津市', 'TJS', '0', '117.200983', '39.084158', '1');
INSERT INTO t_s_territory VALUES ('7', '00000003', '2', '河北省', 'HBS', '0', '114.468665', '38.037057', '1');
INSERT INTO t_s_territory VALUES ('8', '00000004', '2', '山西省', 'SXS', '0', '112.562569', '37.873376', '1');
INSERT INTO t_s_territory VALUES ('89', '370200', '3', '青岛市', 'QDS', '0', '120.382504', '36.06722', '18');
INSERT INTO t_s_territory VALUES ('9', '00000005', '2', '内蒙古自治区', 'NMGZZQ', '0', '111.765618', '40.817498', '1');
INSERT INTO t_s_territory VALUES ('90', '370300', '3', '淄博市', 'ZBS', '0', '118.055007', '36.813497', '18');
INSERT INTO t_s_territory VALUES ('91', '370400', '3', '枣庄市', 'ZZS', '0', '117.323725', '34.810488', '18');
INSERT INTO t_s_territory VALUES ('92', '370500', '3', '东营市', 'DYS', '0', '118.674767', '37.434751', '18');
INSERT INTO t_s_territory VALUES ('926', '370113', '4', '长清区', 'CQQ', '0', '116.751959', '36.553691', '195');
INSERT INTO t_s_territory VALUES ('927', '370124', '4', '平阴县', 'PYX', '0', '116.456187', '36.289265', '195');
INSERT INTO t_s_territory VALUES ('928', '370125', '4', '济阳县', 'JYX', '0', '117.173529', '36.978547', '195');
INSERT INTO t_s_territory VALUES ('929', '370126', '4', '商河县', 'SHX', '0', '117.157183', '37.309045', '195');
INSERT INTO t_s_territory VALUES ('93', '370600', '3', '烟台市', 'YTS', '0', '121.447926', '37.463819', '18');
INSERT INTO t_s_territory VALUES ('930', '370181', '4', '章丘市', 'ZQS', '0', '117.534326', '36.714015', '195');
INSERT INTO t_s_territory VALUES ('931', '370202', '4', '市南区', 'SNQ', '0', '120.412392', '36.075651', '89');
INSERT INTO t_s_territory VALUES ('932', '370203', '4', '市北区', 'SBQ', '0', '120.374801', '36.087661', '89');
INSERT INTO t_s_territory VALUES ('933', '370205', '4', '四方区', 'SFQ', '0', '120.366454', '36.103993', '89');
INSERT INTO t_s_territory VALUES ('934', '370211', '4', '黄岛区', 'HDQ', '0', '120.198054', '35.960935', '89');
INSERT INTO t_s_territory VALUES ('935', '370212', '4', '崂山区', 'LSQ', '0', '120.468956', '36.107538', '89');
INSERT INTO t_s_territory VALUES ('936', '370213', '4', '李沧区', 'LCQ', '0', '120.432864', '36.145476', '89');
INSERT INTO t_s_territory VALUES ('937', '370214', '4', '城阳区', 'CYQ', '0', '120.396529', '36.307061', '89');
INSERT INTO t_s_territory VALUES ('938', '370281', '4', '胶州市', 'JZS', '0', '120.033345', '36.264664', '89');
INSERT INTO t_s_territory VALUES ('939', '370282', '4', '即墨市', 'JMS', '0', '120.447162', '36.389401', '89');
INSERT INTO t_s_territory VALUES ('94', '370700', '3', '潍坊市', 'WFS', '0', '119.16193', '36.706691', '18');
INSERT INTO t_s_territory VALUES ('940', '370283', '4', '平度市', 'PDS', '0', '119.960014', '36.7867', '89');
INSERT INTO t_s_territory VALUES ('941', '370284', '4', '胶南市', 'JNS', '0', '120.04643', '35.8725', '89');
INSERT INTO t_s_territory VALUES ('942', '370285', '4', '莱西市', 'LXS', '0', '120.51769', '36.889084', '89');
INSERT INTO t_s_territory VALUES ('943', '370302', '4', '淄川区', 'ZCQ', '0', '117.966842', '36.643449', '90');
INSERT INTO t_s_territory VALUES ('944', '370303', '4', '张店区', 'ZDQ', '0', '118.017656', '36.806773', '90');
INSERT INTO t_s_territory VALUES ('945', '370304', '4', '博山区', 'BSQ', '0', '117.861698', '36.494752', '90');
INSERT INTO t_s_territory VALUES ('946', '370305', '4', '临淄区', 'LZQ', '0', '118.308977', '36.827343', '90');
INSERT INTO t_s_territory VALUES ('947', '370306', '4', '周村区', 'ZCQ', '0', '117.869877', '36.803109', '90');
INSERT INTO t_s_territory VALUES ('948', '370321', '4', '桓台县', 'HTX', '0', '118.097955', '36.959623', '90');
INSERT INTO t_s_territory VALUES ('949', '370322', '4', '高青县', 'GQX', '0', '117.826916', '37.171063', '90');
INSERT INTO t_s_territory VALUES ('95', '370800', '3', '济宁市', 'JNS', '0', '116.587099', '35.414921', '18');
INSERT INTO t_s_territory VALUES ('950', '370323', '4', '沂源县', 'YYX', '0', '118.170979', '36.184827', '90');
INSERT INTO t_s_territory VALUES ('951', '370402', '4', '市中区', 'SZQ', '0', '117.556124', '34.864114', '91');
INSERT INTO t_s_territory VALUES ('952', '370403', '4', '薛城区', 'YCQ', '0', '117.263157', '34.795206', '91');
INSERT INTO t_s_territory VALUES ('953', '370404', '4', '峄城区', 'YCQ', '0', '117.590819', '34.772236', '91');
INSERT INTO t_s_territory VALUES ('954', '370405', '4', '台儿庄区', 'TEZQ', '0', '117.733832', '34.562528', '91');
INSERT INTO t_s_territory VALUES ('955', '370406', '4', '山亭区', 'STQ', '0', '117.461343', '35.099549', '91');
INSERT INTO t_s_territory VALUES ('956', '370481', '4', '滕州市', 'TZS', '0', '117.164388', '35.084021', '91');
INSERT INTO t_s_territory VALUES ('957', '370502', '4', '东营区', 'DYQ', '0', '118.582184', '37.448964', '92');
INSERT INTO t_s_territory VALUES ('958', '370503', '4', '河口区', 'HKQ', '0', '118.525579', '37.886138', '92');
INSERT INTO t_s_territory VALUES ('959', '370521', '4', '垦利县', 'KLX', '0', '118.547627', '37.58754', '92');
INSERT INTO t_s_territory VALUES ('960', '370522', '4', '利津县', 'LJX', '0', '118.255273', '37.49026', '92');
INSERT INTO t_s_territory VALUES ('961', '370523', '4', '广饶县', 'GRX', '0', '118.407045', '37.0537', '92');
INSERT INTO t_s_territory VALUES ('962', '370602', '4', '芝罘区', 'ZFQ', '0', '121.400031', '37.540687', '93');
INSERT INTO t_s_territory VALUES ('963', '370611', '4', '福山区', 'FSQ', '0', '121.267697', '37.498051', '93');
INSERT INTO t_s_territory VALUES ('964', '370612', '4', '牟平区', 'MPQ', '0', '121.600512', '37.386901', '93');
INSERT INTO t_s_territory VALUES ('965', '370613', '4', '莱山区', 'LSQ', '0', '121.445304', '37.511305', '93');
INSERT INTO t_s_territory VALUES ('966', '370614', '4', '开发区', 'KFQ', '0', '121.251001', '37.554683', '93');
INSERT INTO t_s_territory VALUES ('967', '370634', '4', '长岛县', 'CDX', '0', '120.736584', '37.921417', '93');
INSERT INTO t_s_territory VALUES ('968', '370681', '4', '龙口市', 'LKS', '0', '120.477836', '37.646064', '93');
INSERT INTO t_s_territory VALUES ('969', '370682', '4', '莱阳市', 'LYS', '0', '120.711607', '36.97891', '93');
INSERT INTO t_s_territory VALUES ('970', '370683', '4', '莱州市', 'LZS', '0', '119.942327', '37.177017', '93');
INSERT INTO t_s_territory VALUES ('971', '370684', '4', '蓬莱市', 'PLS', '0', '120.758848', '37.810661', '93');
INSERT INTO t_s_territory VALUES ('972', '370685', '4', '招远市', 'ZYS', '0', '120.434072', '37.355469', '93');
INSERT INTO t_s_territory VALUES ('973', '370686', '4', '栖霞市', 'QXS', '0', '120.849675', '37.335123', '93');
INSERT INTO t_s_territory VALUES ('974', '370687', '4', '海阳市', 'HYS', '0', '121.158477', '36.776425', '93');
INSERT INTO t_s_territory VALUES ('975', '370702', '4', '潍城区', 'WCQ', '0', '119.024836', '36.7281', '94');
INSERT INTO t_s_territory VALUES ('976', '370703', '4', '寒亭区', 'HTQ', '0', '119.219734', '36.775491', '94');
INSERT INTO t_s_territory VALUES ('977', '370704', '4', '坊子区', 'FZQ', '0', '119.166485', '36.654448', '94');
INSERT INTO t_s_territory VALUES ('978', '370705', '4', '奎文区', 'KWQ', '0', '119.132486', '36.707676', '94');
INSERT INTO t_s_territory VALUES ('979', '370724', '4', '临朐县', 'LQX', '0', '118.542982', '36.5125059', '94');
INSERT INTO t_s_territory VALUES ('980', '370725', '4', '昌乐县', 'CLX', '0', '118.829914', '36.706945', '94');
INSERT INTO t_s_territory VALUES ('981', '370781', '4', '青州市', 'QZS', '0', '118.479622', '36.684528', '94');
INSERT INTO t_s_territory VALUES ('982', '370782', '4', '诸城市', 'ZCS', '0', '119.410103', '35.995654', '94');
INSERT INTO t_s_territory VALUES ('983', '370783', '4', '寿光市', 'SGS', '0', '118.790652', '36.85548', '94');
INSERT INTO t_s_territory VALUES ('984', '370784', '4', '安丘市', 'AQS', '0', '119.218978', '36.478494', '94');
INSERT INTO t_s_territory VALUES ('985', '370785', '4', '高密市', 'GMS', '0', '119.755597', '36.3825949', '94');
INSERT INTO t_s_territory VALUES ('986', '370786', '4', '昌邑市', 'CYS', '0', '119.398525', '36.85882', '94');
INSERT INTO t_s_territory VALUES ('987', '370802', '4', '市中区', 'SZQ', '0', '116.596614', '35.40819', '95');
INSERT INTO t_s_territory VALUES ('988', '370811', '4', '任城区', 'RCQ', '0', '116.628562', '35.433727', '95');
INSERT INTO t_s_territory VALUES ('989', '370826', '4', '微山县', 'WSX', '0', '117.128946', '34.8071', '95');
INSERT INTO t_s_territory VALUES ('990', '370827', '4', '鱼台县', 'YTX', '0', '116.650608', '35.012749', '95');
INSERT INTO t_s_territory VALUES ('991', '370828', '4', '金乡县', 'JXX', '0', '116.311532', '35.06662', '95');
INSERT INTO t_s_territory VALUES ('992', '370829', '4', '嘉祥县', 'JXX', '0', '116.342442', '35.407829', '95');
INSERT INTO t_s_territory VALUES ('993', '370830', '4', '汶上县', 'WSX', '0', '116.489043', '35.732799', '95');
INSERT INTO t_s_territory VALUES ('994', '370831', '4', '泗水县', 'SSX', '0', '117.251195', '35.664323', '95');
INSERT INTO t_s_territory VALUES ('995', '370832', '4', '梁山县', 'LSX', '0', '116.096044', '35.802306', '95');
INSERT INTO t_s_territory VALUES ('996', '370881', '4', '曲阜市', 'QFS', '0', '116.986532', '35.581137', '95');
INSERT INTO t_s_territory VALUES ('997', '370882', '4', '兖州市', 'YZS', '0', '116.783834', '35.553144', '95');
INSERT INTO t_s_territory VALUES ('998', '370883', '4', '邹城市', 'ZCS', '0', '117.003743', '35.405185', '95');
INSERT INTO t_s_territory VALUES ('999', '370902', '4', '泰山区', 'TSQ', '0', '117.135354', '36.192084', '96');

-- ----------------------------
-- Table structure for `t_s_timetask`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_timetask`;
CREATE TABLE `t_s_timetask` (
  `ID` varchar(32) NOT NULL,
  `CREATE_BY` varchar(32) default NULL,
  `CREATE_DATE` datetime default NULL,
  `CREATE_NAME` varchar(32) default NULL,
  `CRON_EXPRESSION` varchar(100) NOT NULL,
  `IS_EFFECT` varchar(1) NOT NULL,
  `IS_START` varchar(1) NOT NULL,
  `TASK_DESCRIBE` varchar(50) NOT NULL,
  `TASK_ID` varchar(100) NOT NULL,
  `UPDATE_BY` varchar(32) default NULL,
  `UPDATE_DATE` datetime default NULL,
  `UPDATE_NAME` varchar(32) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_timetask
-- ----------------------------
INSERT INTO t_s_timetask VALUES ('4028d881436d514601436d5219ab0159', null, null, null, '0 0/1 * * * ?', '0', '0', '测试Demo', 'taskDemoServiceTaskCronTrigger', null, null, null);

-- ----------------------------
-- Table structure for `t_s_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_type`;
CREATE TABLE `t_s_type` (
  `ID` varchar(32) NOT NULL,
  `typecode` varchar(50) default NULL,
  `typename` varchar(50) default NULL,
  `typepid` varchar(32) default NULL,
  `typegroupid` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_nw2b22gy7plh7pqows186odmq` (`typepid`),
  KEY `FK_3q40mr4ebtd0cvx79matl39x1` (`typegroupid`),
  CONSTRAINT `FK_3q40mr4ebtd0cvx79matl39x1` FOREIGN KEY (`typegroupid`) REFERENCES `t_s_typegroup` (`ID`),
  CONSTRAINT `FK_nw2b22gy7plh7pqows186odmq` FOREIGN KEY (`typepid`) REFERENCES `t_s_type` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_type
-- ----------------------------
INSERT INTO t_s_type VALUES ('40288088486e343b01486e42a8ff0012', '2', '结束', null, '40288088486e343b01486e422f550010');
INSERT INTO t_s_type VALUES ('40288088486e343b01486e42d3f80014', '1', '活动', null, '40288088486e343b01486e422f550010');
INSERT INTO t_s_type VALUES ('40288088486e970101486ebc563c001c', '0', '小于200', null, '40288088486e970101486eb9f5df0016');
INSERT INTO t_s_type VALUES ('40288088486e970101486ebc8315001e', '1', '大于200', null, '40288088486e970101486eb9f5df0016');
INSERT INTO t_s_type VALUES ('40288088486e970101486ebcd9050020', '0', '未兑奖', null, '40288088486e970101486eba4c9a0018');
INSERT INTO t_s_type VALUES ('40288088486e970101486ebd19d70022', '1', '已兑奖', null, '40288088486e970101486eba4c9a0018');
INSERT INTO t_s_type VALUES ('40288088486e970101486f1406250025', '1', '微博', null, '40288088486e970101486ebc03cc001a');
INSERT INTO t_s_type VALUES ('40288088486e970101486f1451620027', '2', '贴吧', null, '40288088486e970101486ebc03cc001a');
INSERT INTO t_s_type VALUES ('40288088486e970101486f1493400029', '3', 'QQ空间', null, '40288088486e970101486ebc03cc001a');
INSERT INTO t_s_type VALUES ('40288088486e970101486f14c121002b', '4', '微信', null, '40288088486e970101486ebc03cc001a');
INSERT INTO t_s_type VALUES ('402881e4480845f601480849ddf50003', '0', '未审核', null, '402881e4480845f6014808498b510001');
INSERT INTO t_s_type VALUES ('402881e4480845f60148084a0c0a0005', '1', '已审核', null, '402881e4480845f6014808498b510001');
INSERT INTO t_s_type VALUES ('402881e44870784a0148708a63d6000f', '1', '点击投票', null, '402881e44870784a01487088ebba000d');
INSERT INTO t_s_type VALUES ('402881e44870784a0148708f8ca20014', '2', '扫描投票', null, '402881e44870784a01487088ebba000d');
INSERT INTO t_s_type VALUES ('402881e44870784a014870bae5c40017', '3', '分享投票', null, '402881e44870784a01487088ebba000d');
INSERT INTO t_s_type VALUES ('402881e547f88af30147f8ab400a0020', '1', '临时二维码', null, '402881e547f88af30147f8aafc5b001e');
INSERT INTO t_s_type VALUES ('402881e547f88af30147f8ab7d380023', '2', '永久二维码', null, '402881e547f88af30147f8aafc5b001e');
INSERT INTO t_s_type VALUES ('402881e54808a0be014808accf80001a', '0', '未发布', null, '402881e54808a0be014808ac663c0018');
INSERT INTO t_s_type VALUES ('402881e54808a0be014808ace8da001c', '1', '已发布', null, '402881e54808a0be014808ac663c0018');
INSERT INTO t_s_type VALUES ('402881e54808a0be014808ad0bb4001e', '2', '已结束', null, '402881e54808a0be014808ac663c0018');
INSERT INTO t_s_type VALUES ('402881e9481f55b201481f5761ae0003', '1', '单选', null, '402881e9481f55b201481f5733010001');
INSERT INTO t_s_type VALUES ('402881e9481f55b201481f577ae50005', '2', '多选', null, '402881e9481f55b201481f5733010001');
INSERT INTO t_s_type VALUES ('402881e9481f55b201481f57ac850007', '3', '填空', null, '402881e9481f55b201481f5733010001');
INSERT INTO t_s_type VALUES ('402889f8476650de01476666acbf0005', '01', '多文章', null, '402889f8476650de01476665dfe70002');
INSERT INTO t_s_type VALUES ('402889f8476650de01476666d5c30007', '02', '单文章', null, '402889f8476650de01476665dfe70002');
INSERT INTO t_s_type VALUES ('402889ff4728f2370147290a0f82001d', '1', '服务号', null, '402889ff4728f2370147290995f80018');
INSERT INTO t_s_type VALUES ('402889ff4728f2370147290a2d63001f', '2', '订阅号', null, '402889ff4728f2370147290995f80018');
INSERT INTO t_s_type VALUES ('4028d881436d514601436d5216130051', '2', '菜单图标', null, '4028d881436d514601436d5215c30047');
INSERT INTO t_s_type VALUES ('4028d881436d514601436d5216160052', '1', '系统图标', null, '4028d881436d514601436d5215c30047');
INSERT INTO t_s_type VALUES ('4028d881436d514601436d5216190053', 'files', '附件', null, '4028d881436d514601436d5215e4004f');
INSERT INTO t_s_type VALUES ('4028d881436d514601436d52161c0054', '1', '优质订单', null, '4028d881436d514601436d5215c90048');
INSERT INTO t_s_type VALUES ('4028d881436d514601436d52161f0055', '2', '普通订单', null, '4028d881436d514601436d5215c90048');
INSERT INTO t_s_type VALUES ('4028d881436d514601436d5216220056', '1', '签约客户', null, '4028d881436d514601436d5215cc0049');
INSERT INTO t_s_type VALUES ('4028d881436d514601436d5216250057', '2', '普通客户', null, '4028d881436d514601436d5215cc0049');
INSERT INTO t_s_type VALUES ('4028d881436d514601436d5216290058', '1', '特殊服务', null, '4028d881436d514601436d5215cf004a');
INSERT INTO t_s_type VALUES ('4028d881436d514601436d52162e0059', '2', '普通服务', null, '4028d881436d514601436d5215cf004a');
INSERT INTO t_s_type VALUES ('4028d881436d514601436d521633005a', 'single', '单条件查询', null, '4028d881436d514601436d5215d4004b');
INSERT INTO t_s_type VALUES ('4028d881436d514601436d521638005b', 'group', '范围查询', null, '4028d881436d514601436d5215d4004b');
INSERT INTO t_s_type VALUES ('4028d881436d514601436d52163d005c', 'Y', '是', null, '4028d881436d514601436d5215d7004c');
INSERT INTO t_s_type VALUES ('4028d881436d514601436d521640005d', 'N', '否', null, '4028d881436d514601436d5215d7004c');
INSERT INTO t_s_type VALUES ('4028d881436d514601436d521643005e', 'Integer', 'Integer', null, '4028d881436d514601436d5215db004d');
INSERT INTO t_s_type VALUES ('4028d881436d514601436d521646005f', 'Date', 'Date', null, '4028d881436d514601436d5215db004d');
INSERT INTO t_s_type VALUES ('4028d881436d514601436d52164b0060', 'String', 'String', null, '4028d881436d514601436d5215db004d');
INSERT INTO t_s_type VALUES ('4028d881436d514601436d52164f0061', 'Long', 'Long', null, '4028d881436d514601436d5215db004d');
INSERT INTO t_s_type VALUES ('4028d881436d514601436d5216530062', 'act', '工作流引擎表', null, '4028d881436d514601436d5215df004e');
INSERT INTO t_s_type VALUES ('4028d881436d514601436d5216570063', 't_s', '系统基础表', null, '4028d881436d514601436d5215df004e');
INSERT INTO t_s_type VALUES ('4028d881436d514601436d52165c0064', 't_b', '业务表', null, '4028d881436d514601436d5215df004e');
INSERT INTO t_s_type VALUES ('4028d881436d514601436d5216600065', 't_p', '自定义引擎表', null, '4028d881436d514601436d5215df004e');
INSERT INTO t_s_type VALUES ('4028d881436d514601436d5216640066', 'news', '新闻', null, '4028d881436d514601436d5215e4004f');
INSERT INTO t_s_type VALUES ('4028d881436d514601436d5216670067', '0', '男性', null, '4028d881436d514601436d5215e90050');
INSERT INTO t_s_type VALUES ('4028d881436d514601436d52166a0068', '1', '女性', null, '4028d881436d514601436d5215e90050');

-- ----------------------------
-- Table structure for `t_s_typegroup`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_typegroup`;
CREATE TABLE `t_s_typegroup` (
  `ID` varchar(32) NOT NULL,
  `typegroupcode` varchar(50) default NULL,
  `typegroupname` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_typegroup
-- ----------------------------
INSERT INTO t_s_typegroup VALUES ('40288088486e343b01486e422f550010', 'hdType', '活动类型');
INSERT INTO t_s_typegroup VALUES ('40288088486e970101486eb9f5df0016', 'jp_level', '奖品级别');
INSERT INTO t_s_typegroup VALUES ('40288088486e970101486eba4c9a0018', 'jp_flag', '兑奖状态');
INSERT INTO t_s_typegroup VALUES ('40288088486e970101486ebc03cc001a', 'pf_code', '社区平台类型');
INSERT INTO t_s_typegroup VALUES ('402881e4480845f6014808498b510001', 'bbs_status', '社区帖子状态');
INSERT INTO t_s_typegroup VALUES ('402881e44870784a01487088ebba000d', 'votepktype', '投票PK活动投票类型');
INSERT INTO t_s_typegroup VALUES ('402881e547f88af30147f8aafc5b001e', 'qrcodetype', '微信二维码类型');
INSERT INTO t_s_typegroup VALUES ('402881e54808a0be014808ac663c0018', 'votestat', '微投票状态');
INSERT INTO t_s_typegroup VALUES ('402881e9481f55b201481f5733010001', 'surveytype', '题目类型');
INSERT INTO t_s_typegroup VALUES ('402889f8476650de01476665dfe70002', 'cms_menu', 'CMS菜单类型');
INSERT INTO t_s_typegroup VALUES ('402889ff4728f2370147290995f80018', 'weixintype', '微信公众账号类型');
INSERT INTO t_s_typegroup VALUES ('4028d881436d514601436d5215c30047', 'icontype', '图标类型');
INSERT INTO t_s_typegroup VALUES ('4028d881436d514601436d5215c90048', 'order', '订单类型');
INSERT INTO t_s_typegroup VALUES ('4028d881436d514601436d5215cc0049', 'custom', '客户类型');
INSERT INTO t_s_typegroup VALUES ('4028d881436d514601436d5215cf004a', 'service', '服务项目类型');
INSERT INTO t_s_typegroup VALUES ('4028d881436d514601436d5215d4004b', 'searchmode', '查询模式');
INSERT INTO t_s_typegroup VALUES ('4028d881436d514601436d5215d7004c', 'yesorno', '逻辑条件');
INSERT INTO t_s_typegroup VALUES ('4028d881436d514601436d5215db004d', 'fieldtype', '字段类型');
INSERT INTO t_s_typegroup VALUES ('4028d881436d514601436d5215df004e', 'database', '数据表');
INSERT INTO t_s_typegroup VALUES ('4028d881436d514601436d5215e4004f', 'fieltype', '文档分类');
INSERT INTO t_s_typegroup VALUES ('4028d881436d514601436d5215e90050', 'sex', '性别类');

-- ----------------------------
-- Table structure for `t_s_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_user`;
CREATE TABLE `t_s_user` (
  `email` varchar(50) default NULL,
  `mobilePhone` varchar(30) default NULL,
  `officePhone` varchar(20) default NULL,
  `signatureFile` varchar(100) default NULL,
  `id` varchar(32) NOT NULL,
  `openid` varchar(200) default NULL,
  `type` varchar(2) default '1',
  `createtime` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_2cuji5h6yorrxgsr8ojndlmal` (`id`),
  CONSTRAINT `FK_2cuji5h6yorrxgsr8ojndlmal` FOREIGN KEY (`id`) REFERENCES `t_s_base_user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_user
-- ----------------------------
INSERT INTO t_s_user VALUES (null, '13427652729', null, null, '402880e447d2f1fb0147d2f580d40002', null, '1', null);
INSERT INTO t_s_user VALUES (null, '13426323292', null, null, '402880e447d7243d0147d72ea3eb0002', null, '1', null);
INSERT INTO t_s_user VALUES ('', '', '', null, '402881e4461f9c6401461fa2e6f50002', '', null, null);
INSERT INTO t_s_user VALUES ('', '', '', null, '402881e44648134a014648174a45000c', '', null, null);
INSERT INTO t_s_user VALUES (null, '111', null, null, '4028bce447cf8bda0147cf9047090006', null, '1', null);
INSERT INTO t_s_user VALUES (null, null, null, 'images/renfang/qm/licf.gif', '4028d881436d514601436d5215ac0043', '', null, null);
INSERT INTO t_s_user VALUES ('zhangdaiscott@163.com', '13426432910', '7496661', null, '4028d881436d514601436d5215b20044', '', null, null);
INSERT INTO t_s_user VALUES (null, null, null, null, '4028d881436d514601436d5215b80045', '', null, null);
INSERT INTO t_s_user VALUES (null, null, null, null, '4028d881436d514601436d5215bc0046', '', null, null);
INSERT INTO t_s_user VALUES (null, null, null, null, 'f7a8a3a9487816f801487817c4fd0001', 'null', '1', null);
INSERT INTO t_s_user VALUES ('', '', '', null, 'f7a8a3a9487816f801487818b3070006', null, '2', '2014-09-15 14:55:57');
INSERT INTO t_s_user VALUES (null, null, null, null, 'f7a8a3a9487816f80148781e4cfc004b', 'oGCDRjv54RH4ojhWyadb8o8rx2lc', '1', null);
INSERT INTO t_s_user VALUES (null, null, null, null, 'f7a8a3a9487816f8014878200b850051', 'oGCDRjtKImpgFNv0SqbxvQScwtE0', '1', null);
INSERT INTO t_s_user VALUES (null, null, null, null, 'f7a8a3a9487816f80148782154be0057', 'oGCDRjiIBtNQApPs1GY9kF3xIpgs', '1', null);
INSERT INTO t_s_user VALUES (null, null, null, null, 'f7a8a3a9487816f801487822427a005d', 'oGCDRjmj5t_pci-7UV-Ey3SCAubI', '1', null);
INSERT INTO t_s_user VALUES (null, null, null, null, 'f7a8a3a9487816f801487829a7f80076', 'oGCDRjqZWwngJWx6YMYi15qknpM4', '1', null);
INSERT INTO t_s_user VALUES (null, null, null, null, 'f7a8a3a9487816f80148783b292b008f', 'oGCDRjqdNbWQsEoB3APp_-QMrYaA', '1', null);
INSERT INTO t_s_user VALUES (null, null, null, null, 'f7a8a3a9487816f8014878449b6200a8', 'oGCDRjvr9L1NoqxbyXLReCVYVyV0', '1', null);
INSERT INTO t_s_user VALUES (null, null, null, null, 'f7a8a3a9487816f801487845f3be00ad', 'oGCDRjnJG97To7evvXJKMH8x4U9k', '1', null);
INSERT INTO t_s_user VALUES (null, null, null, null, 'f7a8a3a9487816f801487848150800b4', 'oGCDRjtmh8JInl-3qaWXOr_qJYdA', '1', null);
INSERT INTO t_s_user VALUES (null, null, null, null, 'f7a8a3a9487816f801487848e4cb00ba', '1234', '1', null);
INSERT INTO t_s_user VALUES (null, null, null, null, 'f7a8a3a9487816f80148784ef41000c5', null, '2', '2014-09-15 15:55:13');
INSERT INTO t_s_user VALUES (null, null, null, null, 'f7a8a3a9487816f80148784fb74100cf', null, '2', '2014-09-15 15:56:03');
INSERT INTO t_s_user VALUES (null, null, null, null, 'f7a8a3a9487816f801487852a91a00d7', null, '2', '2014-09-15 15:59:16');
INSERT INTO t_s_user VALUES (null, null, null, null, 'f7a8a3a9487816f801487854854c00dd', null, '2', '2014-09-15 16:01:18');
INSERT INTO t_s_user VALUES (null, null, null, null, 'f7a8a3a9487816f80148785e9c0f0107', null, '2', '2014-09-15 16:12:19');
INSERT INTO t_s_user VALUES (null, null, null, null, 'f7a8a3a9487816f80148786f49a7013f', 'oGCDRjrgOW4Lf0aJapxmXkLDzsXE', '1', null);
INSERT INTO t_s_user VALUES (null, null, null, null, 'f7a8a3a9487816f80148787496290144', null, '2', '2014-09-15 16:36:19');
INSERT INTO t_s_user VALUES (null, null, null, null, 'f7a8a3a9487816f80148788795320150', 'oGCDRjuLfYaYMGTpJJIUlOAw3ZzY', '1', null);
INSERT INTO t_s_user VALUES (null, null, null, null, 'f7a8a3a9487816f80148788d22850163', null, '2', '2014-09-15 17:03:08');
INSERT INTO t_s_user VALUES (null, null, null, null, 'f7a8a3a9487816f801487898dc3b0172', 'oGCDRjpq_W9fxmXB3DZh2vbhVhu0', '1', null);
INSERT INTO t_s_user VALUES (null, null, null, null, 'f7a8a3a9487816f80148789a88e10177', 'oGCDRjnY5zDii_i9QheSGTIeli8Q', '1', null);
INSERT INTO t_s_user VALUES (null, null, null, null, 'f7a8a3a9487816f8014878a64db30185', 'oGCDRjih26CSDi9Lx9aRAK6bHg0A', '1', null);
INSERT INTO t_s_user VALUES (null, null, null, null, 'f7a8a3a9487816f8014878bc224201a7', 'oGCDRjp5o1gME6Sx6cZ7-zSBgbPI', '1', null);

-- ----------------------------
-- Table structure for `t_s_version`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_version`;
CREATE TABLE `t_s_version` (
  `ID` varchar(32) NOT NULL,
  `loginpage` varchar(100) default NULL,
  `versioncode` varchar(50) default NULL,
  `versionname` varchar(30) default NULL,
  `versionnum` varchar(20) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_version
-- ----------------------------

-- ----------------------------
-- Table structure for `weixin_accesstoken`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_accesstoken`;
CREATE TABLE `weixin_accesstoken` (
  `ID` varchar(32) NOT NULL,
  `access_token` varchar(255) default NULL,
  `addtime` datetime default NULL,
  `expires_ib` int(11) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_accesstoken
-- ----------------------------

-- ----------------------------
-- Table structure for `weixin_account`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_account`;
CREATE TABLE `weixin_account` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `accountname` varchar(200) default NULL COMMENT '公众帐号名称',
  `accounttoken` varchar(200) default NULL COMMENT '公众帐号TOKEN',
  `accountnumber` varchar(200) default NULL COMMENT '公众微信号',
  `accounttype` varchar(50) default NULL COMMENT '公众号类型',
  `accountemail` varchar(200) default NULL COMMENT '电子邮箱',
  `accountdesc` varchar(500) default NULL COMMENT '公众帐号描述',
  `accountaccesstoken` varchar(1000) default NULL COMMENT 'ACCESS_TOKEN',
  `accountappid` varchar(200) default NULL COMMENT '公众帐号APPID',
  `accountappsecret` varchar(500) default NULL COMMENT '公众帐号APPSECRET',
  `ADDTOEKNTIME` datetime default NULL,
  `USERNAME` varchar(50) default NULL,
  `WEIXIN_ACCOUNTID` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_account
-- ----------------------------
INSERT INTO weixin_account VALUES ('402881e8461795c201461795c2e90000', '成都永辉科技有限公司', 'dxhnihao', 'gh_b2a51a1013e8', '1', '652356756@@qq.com', '无', 'HwK_hemrKti-zj3dIrf-z_clxJaZRSXRqPIwQovq9NoZNqKhy-aUhmb8GYUOLpGJZI-IuMR6xBcVjY71PTU5xrLeLmd3oOwogJInRPPnTSUPVUgAJACIH', 'wx60948a85e051f738', 'e23379551673977d2fb4419d86466577', '2015-12-21 09:20:08', 'admin', 'gh_b2a51a1013e8');

-- ----------------------------
-- Table structure for `weixin_around`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_around`;
CREATE TABLE `weixin_around` (
  `id` varchar(40) NOT NULL COMMENT '主键Id',
  `keyword` varchar(100) default NULL COMMENT '关键字',
  `area` varchar(200) default NULL COMMENT '城市名称',
  `radius` varchar(100) default NULL COMMENT '搜索半径',
  `addtime` datetime default NULL COMMENT '时间',
  `accountid` varchar(40) default NULL,
  `iswork` varchar(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_around
-- ----------------------------

-- ----------------------------
-- Table structure for `weixin_article`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_article`;
CREATE TABLE `weixin_article` (
  `ID` varchar(36) NOT NULL,
  `CREATE_DATE` datetime default NULL,
  `WX_AUTHOR` varchar(255) default NULL,
  `WX_CONTENT` varchar(255) default NULL,
  `WX_ORIGIN_URL` varchar(255) default NULL,
  `WX_PIC_URL` varchar(255) default NULL,
  `WX_SUMMARY` varchar(255) default NULL,
  `WX_TITLE` varchar(255) default NULL,
  `accountid` varchar(100) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_article
-- ----------------------------

-- ----------------------------
-- Table structure for `weixin_autoresponse`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_autoresponse`;
CREATE TABLE `weixin_autoresponse` (
  `ID` varchar(32) NOT NULL,
  `addtime` varchar(255) default NULL,
  `keyword` varchar(255) default NULL,
  `msgtype` varchar(255) default NULL,
  `rescontent` varchar(255) default NULL,
  `templatename` varchar(255) default NULL,
  `accountid` varchar(100) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_autoresponse
-- ----------------------------
INSERT INTO weixin_autoresponse VALUES ('402889ff4728a293014728b0c7da001b', '2014-07-12 11:49:39', '01', 'text', 'f7a8a3a946e55a940146e5a3e498004d', '微译使用指南', 'gh_73c84c67337c');
INSERT INTO weixin_autoresponse VALUES ('f7a8a3a946e249c20146e26a10ca0019', '2014-06-28 20:19:00', '?', 'text', 'f7a8a3a946e249c20146e25c4dc7000c', '欢迎关注语', 'gh_73c84c67337c');
INSERT INTO weixin_autoresponse VALUES ('f7a8a3a946e55a940146e5a47b890050', '2014-06-29 11:21:40', '02', 'text', 'f7a8a3a946e55a940146e5a429cf004e', '天气使用指南', 'gh_73c84c67337c');
INSERT INTO weixin_autoresponse VALUES ('f7a8a3a946e55a940146e5a632220054', '2014-06-29 11:23:32', '03', 'text', 'f7a8a3a946e55a940146e5a53e6b0051', '大转盘指南', 'gh_73c84c67337c');
INSERT INTO weixin_autoresponse VALUES ('f7a8a3a946e55a940146e5a656150055', '2014-06-29 11:23:41', '04', 'text', 'f7a8a3a946e55a940146e5a584da0052', '刮刮乐指南', 'gh_73c84c67337c');

-- ----------------------------
-- Table structure for `weixin_award`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_award`;
CREATE TABLE `weixin_award` (
  `id` varchar(36) NOT NULL default '',
  `name` varchar(200) default NULL,
  `accountid` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_award
-- ----------------------------
INSERT INTO weixin_award VALUES ('2c9716d548584958014858539292000a', '自行车', null);
INSERT INTO weixin_award VALUES ('2c9716d54858495801485853c3bd000c', '电视机', null);
INSERT INTO weixin_award VALUES ('2c9716d54858495801485853d996000e', '电冰箱', null);
INSERT INTO weixin_award VALUES ('2c9716d54858495801485853ffff0010', '宝马轿车', null);
INSERT INTO weixin_award VALUES ('2c9716d5485849580148585414670012', '洗衣粉', null);

-- ----------------------------
-- Table structure for `weixin_awards_award`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_awards_award`;
CREATE TABLE `weixin_awards_award` (
  `id` varchar(36) NOT NULL default '',
  `award_id` varchar(36) default NULL,
  `huodong_id` varchar(36) default NULL,
  `accountid` varchar(36) default NULL,
  `awards_level_id` varchar(36) default NULL,
  `huoDongAwardEntity_id` varchar(32) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_rp4b6isg6nyrdy9scdw41lggp` (`award_id`),
  KEY `FK_t56wndtomibhs8fieiimgq8v6` (`awards_level_id`),
  KEY `FK_abwq6mo6cvp27syb618w3jupf` (`huodong_id`),
  KEY `FK_kgvd4dso2dfe53fgtxaj1t6jc` (`huoDongAwardEntity_id`),
  CONSTRAINT `FK_abwq6mo6cvp27syb618w3jupf` FOREIGN KEY (`huodong_id`) REFERENCES `weixin_huodong` (`id`),
  CONSTRAINT `FK_kgvd4dso2dfe53fgtxaj1t6jc` FOREIGN KEY (`huoDongAwardEntity_id`) REFERENCES `weixin_huodong_awards` (`id`),
  CONSTRAINT `FK_rp4b6isg6nyrdy9scdw41lggp` FOREIGN KEY (`award_id`) REFERENCES `weixin_award` (`id`),
  CONSTRAINT `FK_t56wndtomibhs8fieiimgq8v6` FOREIGN KEY (`awards_level_id`) REFERENCES `weixin_awards_level` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_awards_award
-- ----------------------------
INSERT INTO weixin_awards_award VALUES ('40288183490a24bb01490a48cd09000b', '2c9716d548584958014858539292000a', '40288183490a24bb01490a449e8d0006', '402881e8461795c201461795c2e90000', 'f1ad11f1486fe3b401486fed950d000b', '40288183490a24bb01490a48ccf9000a');
INSERT INTO weixin_awards_award VALUES ('40288183490a24bb01490a48cd22000d', '2c9716d5485849580148585414670012', '40288183490a24bb01490a449e8d0006', '402881e8461795c201461795c2e90000', 'f1ad11f1486fe3b401486fedcaa8000d', '40288183490a24bb01490a48cd19000c');
INSERT INTO weixin_awards_award VALUES ('40288183490a24bb01490a4faf1e0011', '2c9716d548584958014858539292000a', '40288183490a24bb01490a4faefe000f', '402881e8461795c201461795c2e90000', 'f1ad11f1486fe3b401486fed950d000b', '40288183490a24bb01490a4faf0e0010');
INSERT INTO weixin_awards_award VALUES ('40288183490a24bb01490a4faf3d0013', '2c9716d54858495801485853c3bd000c', '40288183490a24bb01490a4faefe000f', '402881e8461795c201461795c2e90000', 'f1ad11f1486fe3b401486fede05d000f', '40288183490a24bb01490a4faf2f0012');
INSERT INTO weixin_awards_award VALUES ('40288183490a24bb01490a4faf540015', '2c9716d5485849580148585414670012', '40288183490a24bb01490a4faefe000f', '402881e8461795c201461795c2e90000', 'f1ad11f1486fe3b401486fee1a330013', '40288183490a24bb01490a4faf490014');

-- ----------------------------
-- Table structure for `weixin_awards_level`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_awards_level`;
CREATE TABLE `weixin_awards_level` (
  `id` varchar(36) NOT NULL default '',
  `awards_name` varchar(200) default NULL,
  `accountid` varchar(36) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_awards_level
-- ----------------------------
INSERT INTO weixin_awards_level VALUES ('f1ad11f1486fe3b401486fed950d000b', '一等奖', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_awards_level VALUES ('f1ad11f1486fe3b401486fedcaa8000d', '二等奖', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_awards_level VALUES ('f1ad11f1486fe3b401486fede05d000f', '鼓励奖', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_awards_level VALUES ('f1ad11f1486fe3b401486fedf35a0011', '安慰奖', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_awards_level VALUES ('f1ad11f1486fe3b401486fee1a330013', '三等奖', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_awards_level VALUES ('f1ad11f1486fe3b401486fee3b0f0015', '超级大奖', '402881e8461795c201461795c2e90000');

-- ----------------------------
-- Table structure for `weixin_bbs`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_bbs`;
CREATE TABLE `weixin_bbs` (
  `ID` varchar(96) NOT NULL default '',
  `ACCESS_AUTH` varchar(96) default NULL,
  `ACCOUNTID` varchar(96) default NULL,
  `COMMENT_CHECK` varchar(96) default NULL,
  `CREATE_BY` varchar(96) default NULL,
  `CREATE_DATE` datetime default NULL,
  `NAME` varchar(300) default NULL,
  `NICK_NAME` varchar(300) default NULL,
  `POST_CHECK` varchar(96) default NULL,
  `UPDATE_BY` varchar(96) default NULL,
  `UPDATE_DATE` datetime default NULL,
  `TEMPLATE_STYLE` varchar(1000) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_bbs
-- ----------------------------
INSERT INTO weixin_bbs VALUES ('402881ea4cad964a014cada416370001', null, '402881e8461795c201461795c2e90000', null, '4028d881436d514601436d5215ac0043', '2015-04-12 20:39:14', '11', '111', null, '4028d881436d514601436d5215ac0043', '2015-05-13 21:54:21', null);

-- ----------------------------
-- Table structure for `weixin_bbs_post`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_bbs_post`;
CREATE TABLE `weixin_bbs_post` (
  `ID` varchar(96) NOT NULL default '',
  `BBS_ID` varchar(96) default NULL,
  `COMMENT_COUNT` double default NULL,
  `CONTENT` blob,
  `CREATE_BY` varchar(96) default NULL,
  `CREATE_DATE` datetime default NULL,
  `POST_PERSON` varchar(96) default NULL,
  `PRAISE_COUNT` double default NULL,
  `STATUS` varchar(96) default NULL,
  `TITLE` varchar(300) default NULL,
  `TOP_STATUS` varchar(96) default NULL,
  `UPDATE_BY` varchar(96) default NULL,
  `UPDATE_DATE` datetime default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_hbo1supucwts7ujq7wvi8mvim` (`BBS_ID`),
  CONSTRAINT `FK_hbo1supucwts7ujq7wvi8mvim` FOREIGN KEY (`BBS_ID`) REFERENCES `weixin_bbs` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_bbs_post
-- ----------------------------
INSERT INTO weixin_bbs_post VALUES ('ff8080814d485da1014d4d8e96350007', null, '1', 0x3C703E736466736466733C62722F3E3C2F703E, '4028d881436d514601436d5215ac0043', '2015-05-13 21:54:59', '111', '0', '1', 'sdf', 'Y', '4028d881436d514601436d5215ac0043', '2015-05-13 21:55:10');

-- ----------------------------
-- Table structure for `weixin_bbs_post_comment`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_bbs_post_comment`;
CREATE TABLE `weixin_bbs_post_comment` (
  `ID` varchar(96) NOT NULL default '',
  `COMMENT_PERSON` varchar(300) default NULL,
  `COMMENT` varchar(600) default NULL,
  `CREATE_DATE` datetime default NULL,
  `CREATE_BY` varchar(96) default NULL,
  `UPDATE_DATE` datetime default NULL,
  `UPDATE_BY` varchar(96) default NULL,
  `POST_ID` varchar(96) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_nems9ijkrds9yuskc5go20it3` (`POST_ID`),
  CONSTRAINT `FK_nems9ijkrds9yuskc5go20it3` FOREIGN KEY (`POST_ID`) REFERENCES `weixin_bbs_post` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_bbs_post_comment
-- ----------------------------
INSERT INTO weixin_bbs_post_comment VALUES ('ff8080814d485da1014d4d8ebec5000a', '111', 'sdfsdf', '2015-05-13 21:55:10', '4028d881436d514601436d5215ac0043', null, null, 'ff8080814d485da1014d4d8e96350007');

-- ----------------------------
-- Table structure for `weixin_bbs_post_img`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_bbs_post_img`;
CREATE TABLE `weixin_bbs_post_img` (
  `id` varchar(96) NOT NULL default '',
  `post_id` varchar(96) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_qhavmw04br4l83vb26oi9h25b` (`post_id`),
  KEY `FK_dm7mg8robtwox03ing3kmm1t9` (`id`),
  CONSTRAINT `FK_dm7mg8robtwox03ing3kmm1t9` FOREIGN KEY (`id`) REFERENCES `t_s_attachment` (`ID`),
  CONSTRAINT `FK_qhavmw04br4l83vb26oi9h25b` FOREIGN KEY (`post_id`) REFERENCES `weixin_bbs_post` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_bbs_post_img
-- ----------------------------
INSERT INTO weixin_bbs_post_img VALUES ('2c9183404d74f79b014d755b07440001', null);

-- ----------------------------
-- Table structure for `weixin_cms_ad`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_cms_ad`;
CREATE TABLE `weixin_cms_ad` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(100) default NULL,
  `CREATE_BY` varchar(255) default NULL,
  `CREATE_DATE` datetime default NULL,
  `CREATE_NAME` varchar(255) default NULL,
  `IMAGE_HREF` varchar(255) default NULL,
  `IMAGE_NAME` varchar(255) default NULL,
  `TITLE` varchar(20) default NULL,
  `SHOW_FLAG` varchar(1) default NULL,
  `ORDERS` int(11) default NULL,
  `URL` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_cms_ad
-- ----------------------------
INSERT INTO weixin_cms_ad VALUES ('402881e44695183a014695214a510013', '402881e8461795c201461795c2e90000', 'admin', '2014-06-13 20:08:45', '管理员', 'upload/files/20140627233502FEzyc38j.jpg', '19300001024098134717639977056.jpg', 'IPHONE7', null, null, null);
INSERT INTO weixin_cms_ad VALUES ('402881e44695183a014695219fe70016', '402881e8461795c201461795c2e90000', 'admin', '2014-06-13 20:09:07', '管理员', 'upload/files/20140627232736z3SvfVEj.jpg', '634490825089531250.jpg', 'IPHONE', null, null, null);
INSERT INTO weixin_cms_ad VALUES ('402881e946ddea480146de053265000b', '402881e8461795c201461795c2e90000', '4028d881436d514601436d5215ac0043', '2014-06-27 23:50:21', 'admin', 'upload/files/20140627235534VJM1pkx3.jpg', 'Img305735292.jpg', '黑莓', null, null, null);
INSERT INTO weixin_cms_ad VALUES ('402881e946ddea480146de0f3a810011', '402881e8461795c201461795c2e90000', '4028d881436d514601436d5215ac0043', '2014-06-28 00:01:18', 'admin', 'upload/files/20140628000116OF07rm7E.jpg', '30_1i$1JxIOB.jpg', 'Lumia930 王者归来', null, null, null);

-- ----------------------------
-- Table structure for `weixin_cms_article`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_cms_article`;
CREATE TABLE `weixin_cms_article` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `title` varchar(50) default NULL COMMENT '标题',
  `image_name` varchar(255) default NULL COMMENT '图片名称',
  `image_href` varchar(255) default NULL COMMENT '图片地址',
  `summary` varchar(255) default NULL,
  `content` varchar(20000) default NULL COMMENT '内容',
  `column_id` varchar(36) default NULL COMMENT '栏目id',
  `accountid` varchar(100) default NULL COMMENT '微信账户',
  `create_name` varchar(255) default NULL COMMENT '创建人',
  `create_by` varchar(255) default NULL COMMENT '创建人id',
  `create_date` datetime default NULL COMMENT '创建日期',
  `VIEW_COUNT` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_cms_article
-- ----------------------------
INSERT INTO weixin_cms_article VALUES ('297e7eb6469a4a8901469a5e58c0000e', '测试一个小黄人的图片', '19343396_845725.jpg', 'upload/files/20140613235146eEgyESpy.jpg', '你看看这个小黄人美不美？', '<p><strong>我的小黄人是不是很好看啊</strong></p><p><strong><br/></strong></p><p><strong><br/></strong></p><p><span style=\"background-color: rgb(255, 255, 0);\"><strong>这个颜色怎么样啊。</strong></span></p>', '402881e44695183a01469522f7d20019', '402881e8461795c201461795c2e90000', '管理员', 'admin', '2014-06-14 20:33:33', '1');
INSERT INTO weixin_cms_article VALUES ('297e7eb6469a4a8901469a5ef95c0011', '这个杀手帅不帅？', '1384480985636.jpg', 'upload/files/20140613235146eEgyESpy.jpg', '这个杀手帅不帅？', '<p><strong><em>这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？</em></strong></p><p><strong><em>这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？这个杀手帅不帅？</em></strong></p>', '402881e44695183a01469522f7d20019', '402881e8461795c201461795c2e90000', '管理员', 'admin', '2014-06-14 20:34:14', '0');
INSERT INTO weixin_cms_article VALUES ('402880e6477d5c2601477d5d8f260002', '123123', 'jeecg_scott.jpg', 'upload/files/20140728222625KXeCCRAG.jpg', '123123', '<p>123123123123</p>', '402889f84767413b0147674358370002', '402881e8461795c201461795c2e90000', 'admin', '4028d881436d514601436d5215ac0043', '2014-07-28 22:26:29', '0');
INSERT INTO weixin_cms_article VALUES ('402889f346dc66c30146dc7c1c120002', '12', '1348502732_4991.gif', 'upload/files/20140613235146eEgyESpy.jpg', '12', '12', '402881e44695183a0146952426ce0022', '402881e8461795c201461795c2e90000', 'admin', '4028d881436d514601436d5215ac0043', '2014-06-27 16:40:59', '2');

-- ----------------------------
-- Table structure for `weixin_cms_menu`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_cms_menu`;
CREATE TABLE `weixin_cms_menu` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(100) default NULL,
  `CREATE_BY` varchar(255) default NULL,
  `CREATE_DATE` datetime default NULL,
  `CREATE_NAME` varchar(255) default NULL,
  `IMAGE_HREF` varchar(255) default NULL,
  `IMAGE_NAME` varchar(255) default NULL,
  `NAME` varchar(20) default NULL,
  `TYPE` varchar(20) default NULL COMMENT '类型',
  `SHOW_FLAG` varchar(1) default NULL,
  `ORDERS` int(11) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_cms_menu
-- ----------------------------
INSERT INTO weixin_cms_menu VALUES ('402881e44695183a01469522f7d20019', '402881e8461795c201461795c2e90000', 'admin', '2014-06-13 20:10:35', '管理员', 'upload/files/201406132357343zuaHgX4.jpg', '537f1f63dd1c9.jpg', '关于JEECG', '01', null, null);
INSERT INTO weixin_cms_menu VALUES ('402881e44695183a014695234880001c', '402881e8461795c201461795c2e90000', 'admin', '2014-06-13 20:10:56', '管理员', 'upload/files/20140613235754hLRC87rF.jpg', '537f1f86602b3.jpg', '渠道代理', '01', null, null);
INSERT INTO weixin_cms_menu VALUES ('402881e44695183a01469523f03a001f', '402881e8461795c201461795c2e90000', 'admin', '2014-06-13 20:11:39', '管理员', 'upload/files/201406132358039IpFSyet.jpg', '537f1f74d031c.jpg', '功能说明', '01', null, null);
INSERT INTO weixin_cms_menu VALUES ('402881e44695183a0146952426ce0022', '402881e8461795c201461795c2e90000', 'admin', '2014-06-13 20:11:53', '管理员', 'upload/files/20140613235830M96wj4Lr.jpg', '537f1f98d6f42.jpg', '企业文化', '01', null, null);
INSERT INTO weixin_cms_menu VALUES ('402881e446955c7c014695a72a610029', '402881e8461795c201461795c2e90000', 'admin', '2014-06-13 22:34:59', '管理员', 'upload/files/20140613235852gBTueAWO.jpg', '537f1faf595dd.jpg', '案例分享', '01', null, null);
INSERT INTO weixin_cms_menu VALUES ('402881e446955c7c014695a774f9002c', '402881e8461795c201461795c2e90000', 'admin', '2014-06-13 22:35:18', '管理员', 'upload/files/20140613235911chsAs0Md.jpg', '537f1ca3cd562.jpg', '联系我们', '01', null, null);
INSERT INTO weixin_cms_menu VALUES ('402881e446955c7c014695a7bc45002f', '402881e8461795c201461795c2e90000', 'admin', '2014-06-13 22:35:36', '管理员', 'upload/files/20140613235918OA8vt546.jpg', '537f1cb75c597.jpg', '轻松一刻', '01', null, null);
INSERT INTO weixin_cms_menu VALUES ('402881e446955c7c014695a7f08b0032', '402881e8461795c201461795c2e90000', 'admin', '2014-06-13 22:35:50', '管理员', 'upload/files/20140613235932htqZFtCs.jpg', '537f1fc8d750b.jpg', '互动推广', '01', null, null);
INSERT INTO weixin_cms_menu VALUES ('402881e446955c7c014695a836da0035', '402881e8461795c201461795c2e90000', 'admin', '2014-06-13 22:36:08', '管理员', 'upload/files/201407241133168ezfMs40.jpg', 'jeecg_scott.jpg', '升级公告', '01', null, null);
INSERT INTO weixin_cms_menu VALUES ('402889f84767413b0147674358370002', '402881e8461795c201461795c2e90000', '4028d881436d514601436d5215ac0043', '2014-07-24 15:26:12', 'admin', 'upload/files/20140724152611YCkPnNNe.jpg', 'jeecg_scott.jpg', '123123', '02', null, null);

-- ----------------------------
-- Table structure for `weixin_cms_site`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_cms_site`;
CREATE TABLE `weixin_cms_site` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(32) default NULL,
  `COMPANY_TEL` varchar(50) default NULL,
  `CREATE_DATE` datetime default NULL,
  `CREATE_NAME` varchar(50) default NULL,
  `SITE_LOGO` varchar(200) default NULL,
  `SITE_NAME` varchar(100) default NULL,
  `SITE_TEMPLATE_STYLE` varchar(50) default NULL,
  `UPDATE_DATE` datetime default NULL,
  `UPDATE_NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_cms_site
-- ----------------------------
INSERT INTO weixin_cms_site VALUES ('402889f647470484014747094556000a', '402881e8461795c201461795c2e90000', '18611788525', '2014-07-18 09:14:55', 'admin', 'upload/files/20140718091452MW70kigU.jpg', 'test', '', '2015-12-18 17:11:35', 'admin');

-- ----------------------------
-- Table structure for `weixin_cms_style`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_cms_style`;
CREATE TABLE `weixin_cms_style` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(50) default NULL,
  `CREATE_DATE` datetime default NULL,
  `CREATE_NAME` varchar(50) default NULL,
  `REVIEW_IMG_URL` varchar(100) default NULL,
  `TEMPLATE_NAME` varchar(100) default NULL,
  `TEMPLATE_URL` varchar(200) default NULL,
  `UPDATE_DATE` datetime default NULL,
  `UPDATE_NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_cms_style
-- ----------------------------
INSERT INTO weixin_cms_style VALUES ('402880e6477d04e001477d0e1c5e000b', '402881e8461795c201461795c2e90000', '2014-07-28 20:59:42', 'admin', 'upload/files/20140728205940Y6Ly8de0.jpg', '123', '123', null, '');

-- ----------------------------
-- Table structure for `weixin_column`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_column`;
CREATE TABLE `weixin_column` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(100) default NULL,
  `CREATE_BY` varchar(255) default NULL,
  `CREATE_DATE` datetime default NULL,
  `CREATE_NAME` varchar(255) default NULL,
  `IMAGE_HREF` varchar(255) default NULL,
  `IMAGE_NAME` varchar(255) default NULL,
  `NAME` varchar(20) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_column
-- ----------------------------
INSERT INTO weixin_column VALUES ('402881e44695183a01469522f7d20019', 'gh_7371a2c3fef2', 'admin', '2014-06-13 20:10:35', '管理员', 'upload/files/201406132357343zuaHgX4.jpg', '537f1f63dd1c9.jpg', '关于JEECG');
INSERT INTO weixin_column VALUES ('402881e44695183a014695234880001c', 'gh_7371a2c3fef2', 'admin', '2014-06-13 20:10:56', '管理员', 'upload/files/20140613235754hLRC87rF.jpg', '537f1f86602b3.jpg', '渠道代理');
INSERT INTO weixin_column VALUES ('402881e44695183a01469523f03a001f', 'gh_7371a2c3fef2', 'admin', '2014-06-13 20:11:39', '管理员', 'upload/files/201406132358039IpFSyet.jpg', '537f1f74d031c.jpg', '功能说明');
INSERT INTO weixin_column VALUES ('402881e44695183a0146952426ce0022', 'gh_7371a2c3fef2', 'admin', '2014-06-13 20:11:53', '管理员', 'upload/files/20140613235830M96wj4Lr.jpg', '537f1f98d6f42.jpg', '企业文化');
INSERT INTO weixin_column VALUES ('402881e446955c7c014695a72a610029', 'gh_7371a2c3fef2', 'admin', '2014-06-13 22:34:59', '管理员', 'upload/files/20140613235852gBTueAWO.jpg', '537f1faf595dd.jpg', '案例分享');
INSERT INTO weixin_column VALUES ('402881e446955c7c014695a774f9002c', 'gh_7371a2c3fef2', 'admin', '2014-06-13 22:35:18', '管理员', 'upload/files/20140613235911chsAs0Md.jpg', '537f1ca3cd562.jpg', '联系我们');
INSERT INTO weixin_column VALUES ('402881e446955c7c014695a7bc45002f', 'gh_7371a2c3fef2', 'admin', '2014-06-13 22:35:36', '管理员', 'upload/files/20140613235918OA8vt546.jpg', '537f1cb75c597.jpg', '轻松一刻');
INSERT INTO weixin_column VALUES ('402881e446955c7c014695a7f08b0032', 'gh_7371a2c3fef2', 'admin', '2014-06-13 22:35:50', '管理员', 'upload/files/20140613235932htqZFtCs.jpg', '537f1fc8d750b.jpg', '互动推广');
INSERT INTO weixin_column VALUES ('402881e446955c7c014695a836da0035', 'gh_7371a2c3fef2', 'admin', '2014-06-13 22:36:08', '管理员', 'upload/files/20140613235949UuUHp1Bs.jpg', '537f1fdba507f.jpg', '升级公告');

-- ----------------------------
-- Table structure for `weixin_expandconfig`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_expandconfig`;
CREATE TABLE `weixin_expandconfig` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(200) default NULL,
  `CLASSNAME` varchar(100) NOT NULL,
  `CONTENT` longtext,
  `KEYWORD` varchar(100) NOT NULL,
  `NAME` varchar(100) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_expandconfig
-- ----------------------------
INSERT INTO weixin_expandconfig VALUES ('402880e648138dba0148139a8b6c0001', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.AroundService', '周边团购', '周边,周边团购', '周边团购');
INSERT INTO weixin_expandconfig VALUES ('402880e648138dba0148139c7b320005', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.VoteService', '微投票', '微投票,微调研', '微投票');
INSERT INTO weixin_expandconfig VALUES ('402880e648138dba0148139d84560007', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.WeixinVipMemberService', '会员卡', '会员卡', '会员卡');
INSERT INTO weixin_expandconfig VALUES ('402881e44667912a0146679390450001', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.FanYiKeyService', '翻译', '翻译', '翻译');
INSERT INTO weixin_expandconfig VALUES ('402881e44667912a014667947a3a0003', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.TianQiKeyService', '天气预报', '天气', '天气预报');
INSERT INTO weixin_expandconfig VALUES ('402881e446950f86014695120f810001', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.DaZhuanPanService', '大转盘', '大转盘', '大转盘');
INSERT INTO weixin_expandconfig VALUES ('402881e446950f8601469513ec670003', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.CmsService', 'CMS', 'cms', 'CMS,cms');
INSERT INTO weixin_expandconfig VALUES ('402881e4469ffe7a0146a000090d0001', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.GuagualeService', '刮刮乐', '刮刮乐', '刮刮乐');
INSERT INTO weixin_expandconfig VALUES ('402881e747baf1ea0147bb79d2330007', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.WeixinPhotoService', '微相册', '微相册,相册', '微相册');
INSERT INTO weixin_expandconfig VALUES ('402881e74821183901482120a08c0001', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.BbsService', '微信社区', '微社区,BBS', '微社区');
INSERT INTO weixin_expandconfig VALUES ('402881e74821183901482121a7ea0003', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.LeaveMsgService', '微信留言', '微留言', '微留言');
INSERT INTO weixin_expandconfig VALUES ('402881e9470273d2014702a94a1b001d', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.WeixinShopService', '微信商城', '微商城,商城', '微商城');
INSERT INTO weixin_expandconfig VALUES ('402881e948209011014820923a800001', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.SurveyService', '微调研', '微调研,调研', '微调研');
INSERT INTO weixin_expandconfig VALUES ('f7a8a3a9487816f80148783f040c009d', '402881e8461795c201461795c2e90000', 'weixin.idea.extend.function.impl.VotePKService', '投票PK', '投票PK', '投票PK');

-- ----------------------------
-- Table structure for `weixin_group`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_group`;
CREATE TABLE `weixin_group` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `name` varchar(200) default NULL COMMENT '分组名称',
  `addtime` timestamp NULL default NULL on update CURRENT_TIMESTAMP COMMENT '添加时间',
  `accountid` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_group
-- ----------------------------
INSERT INTO weixin_group VALUES ('ssss', 'sss', null, '402881e8461795c201461795c2e90000');

-- ----------------------------
-- Table structure for `weixin_gzuserinfo`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_gzuserinfo`;
CREATE TABLE `weixin_gzuserinfo` (
  `id` varchar(100) character set gbk NOT NULL COMMENT '主键',
  `subscribe` varchar(100) default NULL COMMENT '是否关注',
  `openid` varchar(100) default NULL COMMENT 'openId',
  `nickname` varchar(200) default NULL COMMENT '昵称',
  `sex` varchar(100) default NULL COMMENT '性别',
  `city` varchar(100) default NULL COMMENT '城市',
  `province` varchar(100) default NULL COMMENT '省份',
  `country` varchar(100) default NULL COMMENT '国家',
  `headimgurl` varchar(400) default NULL COMMENT '用户头像',
  `bzName` varchar(100) default NULL COMMENT '备注名称',
  `groupId` varchar(100) default NULL,
  `subscribe_time` varchar(100) default NULL COMMENT '关注时间',
  `addtime` datetime default NULL,
  `accountid` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_gzuserinfo
-- ----------------------------
INSERT INTO weixin_gzuserinfo VALUES ('ff80808151aef3840151af061db80014', '1', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6YKT5pmT6L6J', '1', '成都', '四川', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKfHDtSxKHqxOg5K5h6yCzxB1uMD4dNrILuC1sROh2fLPe5gGW0eWE7MV7VBBzYiadYvia9zpxDXtmiaq7psgIbGWcRHgfJl26xcI/0', null, null, '1433127292', '2015-12-17 00:00:00', '402881e8461795c201461795c2e90000');

-- ----------------------------
-- Table structure for `weixin_hdrecord`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_hdrecord`;
CREATE TABLE `weixin_hdrecord` (
  `ID` varchar(100) NOT NULL,
  `ADDTIME` datetime default NULL,
  `HDID` varchar(100) default NULL,
  `NICKNAME` varchar(200) default NULL,
  `OPENDID` varchar(100) default NULL,
  `TOTAL` int(11) default NULL,
  `accountid` varchar(100) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_hdrecord
-- ----------------------------
INSERT INTO weixin_hdrecord VALUES ('40288183490a24bb01490a57dfda0017', '2014-10-14 00:29:31', '40288183490a24bb01490a449e8d0006', '', 'oGCDRjvr9L1NoqxbyXLReCVYVyV0', '2', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_hdrecord VALUES ('402889ed472e852301472e8d20090002', '2014-07-13 15:08:26', '402880a9468a0bef01468a0e72840001', '', 'oGCDRjvr9L1NoqxbyXLReCVYVyV0', '2', null);
INSERT INTO weixin_hdrecord VALUES ('402889ed472e852301472e8e0b7e0003', '2014-07-13 15:09:26', '402881e6469a13b901469a1e9e420001', '', 'oGCDRjvr9L1NoqxbyXLReCVYVyV0', '2', null);
INSERT INTO weixin_hdrecord VALUES ('4028bc0647633a790147633d5ab10001', '2014-07-23 20:41:11', '402881e6469a13b901469a1e9e420001', '', 'oGCDRjvr9L1NoqxbyXLReCVYVyV0', '1', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_hdrecord VALUES ('4028bc0647633a790147633ee1f50002', '2014-07-23 20:42:51', '402880a9468a0bef01468a0e72840001', '', 'oGCDRjvr9L1NoqxbyXLReCVYVyV0', '1', '402881e8461795c201461795c2e90000');

-- ----------------------------
-- Table structure for `weixin_huodong`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_huodong`;
CREATE TABLE `weixin_huodong` (
  `id` varchar(100) NOT NULL COMMENT '键主',
  `hd_code` varchar(400) default NULL,
  `title` varchar(400) default NULL COMMENT '活动名称',
  `description` text COMMENT '活动描述',
  `starttime` timestamp NULL default NULL COMMENT '开始时间',
  `endtime` timestamp NULL default NULL on update CURRENT_TIMESTAMP COMMENT '结束时间',
  `type` varchar(100) default NULL COMMENT '活动类型',
  `gl` varchar(100) default NULL,
  `count` varchar(10) default NULL,
  `accountid` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_huodong
-- ----------------------------
INSERT INTO weixin_huodong VALUES ('40288183490a24bb01490a449e8d0006', '0', 'eee', '22', '2014-10-14 12:07:42', '2014-10-14 12:07:44', '1', '2/3', '22', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_huodong VALUES ('40288183490a24bb01490a4faefe000f', '0', 'sadf', 'ad', '2014-10-14 00:19:40', '2014-11-01 00:19:43', '2', '1/2', '1', '402881e8461795c201461795c2e90000');

-- ----------------------------
-- Table structure for `weixin_huodong_award`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_huodong_award`;
CREATE TABLE `weixin_huodong_award` (
  `id` varchar(36) NOT NULL default '',
  `award_id` varchar(36) default NULL,
  `huodong_id` varchar(36) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_huodong_award
-- ----------------------------

-- ----------------------------
-- Table structure for `weixin_huodong_awards`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_huodong_awards`;
CREATE TABLE `weixin_huodong_awards` (
  `id` varchar(36) NOT NULL default '',
  `hd_id` varchar(36) default NULL,
  `awards_level_id` varchar(36) default NULL,
  `amount` int(10) default NULL,
  `accountid` varchar(36) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_n178j4f2mxx2af4e9eom89t4p` (`awards_level_id`),
  KEY `FK_h7icpbg87fie5kgtwyp03dsp3` (`hd_id`),
  CONSTRAINT `FK_h7icpbg87fie5kgtwyp03dsp3` FOREIGN KEY (`hd_id`) REFERENCES `weixin_huodong` (`id`),
  CONSTRAINT `FK_n178j4f2mxx2af4e9eom89t4p` FOREIGN KEY (`awards_level_id`) REFERENCES `weixin_awards_level` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_huodong_awards
-- ----------------------------
INSERT INTO weixin_huodong_awards VALUES ('40288183490a24bb01490a48ccf9000a', '40288183490a24bb01490a449e8d0006', 'f1ad11f1486fe3b401486fed950d000b', '2', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_huodong_awards VALUES ('40288183490a24bb01490a48cd19000c', '40288183490a24bb01490a449e8d0006', 'f1ad11f1486fe3b401486fedcaa8000d', '3', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_huodong_awards VALUES ('40288183490a24bb01490a4faf0e0010', '40288183490a24bb01490a4faefe000f', 'f1ad11f1486fe3b401486fed950d000b', '2', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_huodong_awards VALUES ('40288183490a24bb01490a4faf2f0012', '40288183490a24bb01490a4faefe000f', 'f1ad11f1486fe3b401486fede05d000f', '4', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_huodong_awards VALUES ('40288183490a24bb01490a4faf490014', '40288183490a24bb01490a4faefe000f', 'f1ad11f1486fe3b401486fee1a330013', '4', '402881e8461795c201461795c2e90000');

-- ----------------------------
-- Table structure for `weixin_huodong_awards_weixin_awards_award`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_huodong_awards_weixin_awards_award`;
CREATE TABLE `weixin_huodong_awards_weixin_awards_award` (
  `weixin_huodong_awards_ID` varchar(32) NOT NULL,
  `awardlist_ID` varchar(32) NOT NULL,
  UNIQUE KEY `UK_sksqqh4e6tq2uc7bc1lkuatpi` (`awardlist_ID`),
  KEY `FK_sksqqh4e6tq2uc7bc1lkuatpi` (`awardlist_ID`),
  KEY `FK_fjj2xux4qsua8uxttba5bqrpg` (`weixin_huodong_awards_ID`),
  CONSTRAINT `FK_fjj2xux4qsua8uxttba5bqrpg` FOREIGN KEY (`weixin_huodong_awards_ID`) REFERENCES `weixin_huodong_awards` (`id`),
  CONSTRAINT `FK_sksqqh4e6tq2uc7bc1lkuatpi` FOREIGN KEY (`awardlist_ID`) REFERENCES `weixin_awards_award` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_huodong_awards_weixin_awards_award
-- ----------------------------

-- ----------------------------
-- Table structure for `weixin_leave_msg`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_leave_msg`;
CREATE TABLE `weixin_leave_msg` (
  `ID` varchar(32) NOT NULL,
  `NICK_NAME` varchar(32) default NULL COMMENT '昵称',
  `CONTENT` varchar(200) default NULL COMMENT '内容',
  `CREATE_DATE` datetime default NULL COMMENT '创建时间',
  `CREATE_BY` varchar(32) default NULL COMMENT '创建人',
  `UPDATE_DATE` datetime default NULL COMMENT '修改时间',
  `UPDATE_BY` varchar(32) default NULL COMMENT '修改人',
  `accountid` varchar(100) default NULL,
  `concact` varchar(100) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_leave_msg
-- ----------------------------
INSERT INTO weixin_leave_msg VALUES ('2c9183404d70b41a014d70b852700001', '看看', '兔兔', '2015-05-20 17:47:17', null, null, null, null, '兔兔');
INSERT INTO weixin_leave_msg VALUES ('2c9183404d74f79b014d75ea9dd10007', '看看', '具体', '2015-05-21 18:00:19', null, null, null, null, '木头');
INSERT INTO weixin_leave_msg VALUES ('402889fb480bef0c01480bf1d3930002', '123123', '123123', '2014-08-25 14:54:30', '4028d881436d514601436d5215ac0043', null, null, '402881e8461795c201461795c2e90000', null);
INSERT INTO weixin_leave_msg VALUES ('f7a8a3a9487816f801487889f9de0158', 'vv宝贝', '该喝喝几节课', '2014-09-15 16:59:41', 'f7a8a3a9487816f80148788795320150', null, null, '402881e8461795c201461795c2e90000', null);
INSERT INTO weixin_leave_msg VALUES ('f7a8a3a9487816f8014878974a60016e', '你好', '你好', '2014-09-15 17:14:13', null, null, null, null, null);
INSERT INTO weixin_leave_msg VALUES ('f7a8a3a9487816f801487897e5d50170', '111111', '111', '2014-09-15 17:14:53', null, null, null, null, null);

-- ----------------------------
-- Table structure for `weixin_leave_msg_reply`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_leave_msg_reply`;
CREATE TABLE `weixin_leave_msg_reply` (
  `ID` varchar(32) NOT NULL,
  `MSG_ID` varchar(32) NOT NULL COMMENT '留言内容',
  `CONTENT` varchar(200) default NULL COMMENT '回复内容',
  `CREATE_DATE` datetime default NULL COMMENT '创建时间',
  `CREATE_BY` varchar(32) default NULL COMMENT '创建人',
  `UPDATE_DATE` datetime default NULL COMMENT '修改时间',
  `UPDATE_BY` varchar(32) default NULL COMMENT '修改人',
  PRIMARY KEY  (`ID`),
  KEY `FK_et3q739yp44m7d0p003liby4c` (`MSG_ID`),
  CONSTRAINT `FK_et3q739yp44m7d0p003liby4c` FOREIGN KEY (`MSG_ID`) REFERENCES `weixin_leave_msg` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_leave_msg_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `weixin_location`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_location`;
CREATE TABLE `weixin_location` (
  `id` varchar(40) NOT NULL COMMENT '主键id',
  `openid` varchar(40) NOT NULL COMMENT '用户openId',
  `accountid` varchar(40) NOT NULL COMMENT '服务号Id',
  `latitude` varchar(10) default NULL COMMENT '维度',
  `longitude` varchar(10) default NULL COMMENT '经度',
  `PRECISIONWEIXIN` varchar(10) default NULL COMMENT '地理位置经度',
  `nickname` varchar(50) default NULL,
  `addtime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_location
-- ----------------------------

-- ----------------------------
-- Table structure for `weixin_member_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_member_coupon`;
CREATE TABLE `weixin_member_coupon` (
  `id` varchar(36) NOT NULL default '',
  `couponid` varchar(36) default NULL,
  `member_vip_id` varchar(36) default NULL,
  `quantity` int(20) default '1',
  PRIMARY KEY  (`id`),
  KEY `FK_6y70y2f7s5r3ljyo3ovq5wcar` (`couponid`),
  KEY `FK_cwy9h77t3o3cfw7k2hvyo23x` (`member_vip_id`),
  CONSTRAINT `FK_6y70y2f7s5r3ljyo3ovq5wcar` FOREIGN KEY (`couponid`) REFERENCES `weixin_promotion_coupon` (`id`),
  CONSTRAINT `FK_cwy9h77t3o3cfw7k2hvyo23x` FOREIGN KEY (`member_vip_id`) REFERENCES `weixin_vip_member` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_member_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for `weixin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_menu`;
CREATE TABLE `weixin_menu` (
  `ID` varchar(36) NOT NULL,
  `CATEGORY` varchar(100) default NULL,
  `NAME` varchar(100) default NULL,
  `WEIXIN_CODE` varchar(100) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `weixin_menuentity`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_menuentity`;
CREATE TABLE `weixin_menuentity` (
  `ID` varchar(32) NOT NULL,
  `menukey` varchar(255) default NULL,
  `msgtype` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `orders` varchar(11) default NULL,
  `templateid` varchar(255) default NULL,
  `type` varchar(255) default NULL,
  `url` varchar(255) default NULL,
  `fatherid` varchar(32) default NULL,
  `accountid` varchar(255) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_astulwpsla864at9igbas3eic` (`fatherid`),
  CONSTRAINT `FK_astulwpsla864at9igbas3eic` FOREIGN KEY (`fatherid`) REFERENCES `weixin_menuentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_menuentity
-- ----------------------------
INSERT INTO weixin_menuentity VALUES ('402880e648138dba014813a69b7e001e', 'liuyan', null, '微留言', '5', null, 'view', 'http://www.jeewx.com/jeewx/cmsController.do?goPage&page=leaveMsg', '402889ff4728f237014728f2d39f0001', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_menuentity VALUES ('402881e4464d026901464d05ab600001', 'c02', 'text', '公司动态', '1', 'f7a8a3a946e249c20146e25c4dc7000c', 'click', '', null, '402881e8461795c201461795c2e90000');
INSERT INTO weixin_menuentity VALUES ('402881e4464df45f01464df707760004', 'c0202', 'expand', '微商城', '0', '402881e9470273d2014702a94a1b001d', 'click', 'http://123.165.130.173/jeecg-weixin-steward/webpage/weixin/guanjia/other/dazhuanpan/index.html', '402889ff4728f237014728f2d39f0001', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_menuentity VALUES ('402889ff4728a293014728bc62250036', 'c03', 'text', '关于永辉', '3', 'f7a8a3a946e55a940146e5c317f6005f', 'click', '', null, '402881e8461795c201461795c2e90000');
INSERT INTO weixin_menuentity VALUES ('402889ff4728a293014728bcb3020038', 'c0302', 'text', '关于公司', '2', '2c91811a4d60d054014d65a2caa1002f', 'view', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', '402889ff4728a293014728bc62250036', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_menuentity VALUES ('402889ff4728f237014728f2d39f0001', 'c01', null, '高级功能', '1', null, 'click', '', null, '402881e8461795c201461795c2e90000');
INSERT INTO weixin_menuentity VALUES ('402889ff4728f237014729029d940010', 'c0204', 'news', '公司动态', '1', '4028d881472f356e01472f36461b0001', 'click', '', '402881e4464d026901464d05ab600001', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_menuentity VALUES ('f7a8a3a9487816f801487822acec0062', 'lxwm', 'text', '联系我们', '1', '2c91811a4d60d054014d65a2caa1002f', 'click', 'http://www.jeewx.com/jeewx/wxZhongjiangController.do?index', '402889ff4728a293014728bc62250036', '402881e8461795c201461795c2e90000');

-- ----------------------------
-- Table structure for `weixin_newsitem`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_newsitem`;
CREATE TABLE `weixin_newsitem` (
  `ID` varchar(32) NOT NULL,
  `new_type` varchar(255) default NULL COMMENT '图文类型：图文还是外部url',
  `author` varchar(255) default NULL,
  `content` text,
  `description` varchar(255) default NULL,
  `imagepath` varchar(255) default NULL,
  `orders` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `templateid` varchar(32) default NULL,
  `url` varchar(255) default NULL COMMENT '外部URL',
  `create_date` date default NULL,
  `accountid` varchar(100) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_m8qs8ufeqkk5cx17budto66r0` (`templateid`),
  CONSTRAINT `FK_m8qs8ufeqkk5cx17budto66r0` FOREIGN KEY (`templateid`) REFERENCES `weixin_newstemplate` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_newsitem
-- ----------------------------
INSERT INTO weixin_newsitem VALUES ('2c9183404d7938da014d793beb86000a', null, '人生最重要的事情', '<p>人生最重要的事情人生最重要的事情人生最重要的事情人生最重要的事情</p>', '人生最重要的事情', 'template/cms/default/images/20150522092747Ddj7m03s.jpg', '55', '人生最重要的事情', '4028d881472f356e01472f36461b0001', '', '2015-05-22', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_newsitem VALUES ('2c9183404d7938da014d793e3450000e', null, '幸福定义', '<p>幸福定义幸福定义幸福定义幸福定义幸福定义幸福定义幸福定义幸福定义</p>', '幸福定义', 'template/cms/default/images/2015052209300907v1vw41.jpg', '1', '幸福定义', '4028d881472f356e01472f36461b0001', '', '2015-05-22', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_newsitem VALUES ('4028d881472f356e01472f36d0a00003', null, '邓晓辉', '<p>&nbsp; &nbsp;成都永辉科技有限公司 &nbsp;520 &nbsp;放假通知</p><p>大家好：</p><p>&nbsp; &nbsp;520所有员工放假一天。希望大家能够找到自己喜爱的人</p><p>&nbsp;</p>', '成都永辉科技有限公司  520  放假通知', 'template/cms/default/images/20150522093125PHzBZreY.jpg', '1', '成都永辉科技有限公司  520  放假通知', '4028d881472f356e01472f36461b0001', '', '2014-07-13', '402881e8461795c201461795c2e90000');

-- ----------------------------
-- Table structure for `weixin_newstemplate`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_newstemplate`;
CREATE TABLE `weixin_newstemplate` (
  `ID` varchar(32) NOT NULL,
  `addtime` varchar(255) default NULL,
  `tempatename` varchar(255) default NULL,
  `type` varchar(255) default NULL,
  `accountid` varchar(100) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_newstemplate
-- ----------------------------
INSERT INTO weixin_newstemplate VALUES ('4028d881472f356e01472f36461b0001', '2014-07-13 18:13:11', '公司动态', 'common', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_newstemplate VALUES ('f7a8a3a9487816f801487840b91f00a0', '2014-09-15 15:39:40', 'aa', 'cl', '4028d881474489d70147449988040025');

-- ----------------------------
-- Table structure for `weixin_pay_config`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_pay_config`;
CREATE TABLE `weixin_pay_config` (
  `id` varchar(36) NOT NULL default '',
  `payname` varchar(100) default NULL,
  `paytype` char(1) default NULL,
  `paykey` varchar(32) default NULL,
  `partner` varchar(16) default NULL,
  `seller_email` varchar(200) default NULL,
  `typename` varchar(200) default NULL,
  `accountid` varchar(36) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_pay_config
-- ----------------------------
INSERT INTO weixin_pay_config VALUES ('402886bd519544f80151954a29690008', '支付宝（即时到帐）', null, 'khou9dj69p4e5ekt8g1dszmyadrspvp5', '2088021770486353', 'payheji@126.com', null, '402881e8461795c201461795c2e90000');

-- ----------------------------
-- Table structure for `weixin_photo`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_photo`;
CREATE TABLE `weixin_photo` (
  `ID` varchar(32) NOT NULL,
  `PHOTO_ALBUM_ID` varchar(32) default NULL COMMENT '对应相册',
  `CONTENT` varchar(255) default NULL COMMENT '相片描述',
  `CREATE_BY` varchar(32) default NULL,
  `CREATE_DATE` datetime default NULL,
  `NAME` varchar(100) default NULL COMMENT '相片名字',
  `UPDATE_BY` varchar(32) default NULL,
  `UPDATE_DATE` datetime default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_oqe2wy2ehv1gp54j8s8367e1g` (`PHOTO_ALBUM_ID`),
  KEY `FK_rtqvxlo0v4hgfuw1ipngep5gs` (`ID`),
  CONSTRAINT `FK_oqe2wy2ehv1gp54j8s8367e1g` FOREIGN KEY (`PHOTO_ALBUM_ID`) REFERENCES `weixin_photo_album` (`ID`),
  CONSTRAINT `FK_rtqvxlo0v4hgfuw1ipngep5gs` FOREIGN KEY (`ID`) REFERENCES `t_s_attachment` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_photo
-- ----------------------------

-- ----------------------------
-- Table structure for `weixin_photo_album`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_photo_album`;
CREATE TABLE `weixin_photo_album` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(100) default NULL COMMENT '相册名称',
  `CONTENT` varchar(255) default NULL COMMENT '相册描述',
  `ACCOUNTID` varchar(100) default NULL,
  `CREATE_DATE` datetime default NULL COMMENT '创建时间',
  `CREATE_BY` varchar(32) default NULL COMMENT '创建人',
  `UPDATE_DATE` datetime default NULL COMMENT '修改时间',
  `UPDATE_BY` varchar(32) default NULL COMMENT '修改人',
  `PHOTO_ID` varchar(32) default NULL COMMENT '封面相片',
  PRIMARY KEY  (`ID`),
  KEY `FK_jv7nb0xjbct8t41pfiy3pyu2f` (`PHOTO_ID`),
  CONSTRAINT `FK_jv7nb0xjbct8t41pfiy3pyu2f` FOREIGN KEY (`PHOTO_ID`) REFERENCES `weixin_photo` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_photo_album
-- ----------------------------
INSERT INTO weixin_photo_album VALUES ('402889fb480bfaf001480c22cf930043', '我的相册', '我的相册', '402881e8461795c201461795c2e90000', '2014-08-25 15:48:01', '4028d881436d514601436d5215ac0043', '2015-12-18 17:08:11', '4028d881436d514601436d5215ac0043', null);
INSERT INTO weixin_photo_album VALUES ('ff8080814d485da1014d489c4cd40002', 't', 't', '402881e8461795c201461795c2e90000', '2015-05-12 22:51:52', '4028d881436d514601436d5215ac0043', null, null, null);

-- ----------------------------
-- Table structure for `weixin_prizerecord`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_prizerecord`;
CREATE TABLE `weixin_prizerecord` (
  `ID` varchar(100) NOT NULL,
  `ADDTIME` datetime default NULL,
  `HDID` varchar(100) default NULL,
  `MOBILE` varchar(100) default NULL,
  `openid` varchar(255) default NULL,
  `PRIZE` varchar(100) default NULL,
  `accountid` varchar(100) default NULL,
  `username` varchar(100) default NULL,
  `address` varchar(2000) default NULL,
  `identity_id` varchar(20) default NULL,
  `awards_code` varchar(36) default NULL,
  `system_type` varchar(2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_g9gh5aa11gdflh353kmvtc3vp` (`PRIZE`),
  CONSTRAINT `FK_g9gh5aa11gdflh353kmvtc3vp` FOREIGN KEY (`PRIZE`) REFERENCES `weixin_awards_level` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_prizerecord
-- ----------------------------

-- ----------------------------
-- Table structure for `weixin_promotion_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_promotion_coupon`;
CREATE TABLE `weixin_promotion_coupon` (
  `id` varchar(36) NOT NULL default '',
  `name` varchar(200) default NULL,
  `price` decimal(10,0) default '0',
  `code` varchar(200) default NULL,
  `type` varchar(2) default NULL,
  `quantity` int(10) default NULL,
  `start_time` datetime default NULL,
  `end_time` datetime default NULL,
  `create_time` datetime default NULL,
  `accountid` varchar(36) default NULL,
  `restrict_type` varchar(2) default NULL,
  `restrict_price` decimal(10,0) default '0',
  `status` varchar(2) default NULL,
  `RESTRICTGOODS` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_promotion_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for `weixin_qrcode`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_qrcode`;
CREATE TABLE `weixin_qrcode` (
  `id` varchar(36) NOT NULL,
  `create_name` varchar(50) default NULL COMMENT '创建人名称',
  `create_date` datetime default NULL COMMENT '创建日期',
  `update_name` varchar(50) default NULL COMMENT '修改人名称',
  `update_date` datetime default NULL COMMENT '修改日期',
  `expire_seconds` int(11) default NULL COMMENT '有效时间',
  `action_name` varchar(32) default NULL COMMENT '二维码类型',
  `action_info` varchar(32) default NULL COMMENT '二维码详细信息',
  `scene_id` int(11) default NULL COMMENT '场景键',
  `accountid` varchar(50) default NULL COMMENT '公众帐号ID',
  `imageurl` varchar(500) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_qrcode
-- ----------------------------
INSERT INTO weixin_qrcode VALUES ('40288183490a24bb01490a62b1100022', 'admin', '2014-10-14 00:41:20', '', null, '1111', '1', '1111', '2222', '402881e8461795c201461795c2e90000', null);

-- ----------------------------
-- Table structure for `weixin_qrcode_scan_record`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_qrcode_scan_record`;
CREATE TABLE `weixin_qrcode_scan_record` (
  `ID` varchar(36) NOT NULL,
  `IMAGEURL` longtext,
  `NICKNAME` varchar(100) default NULL,
  `OPENID` varchar(100) default NULL,
  `SCANTIME` datetime default NULL,
  `SCENEKEY` varchar(10) default NULL,
  `SCENEVALUE` varchar(50) default NULL,
  `accountid` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_qrcode_scan_record
-- ----------------------------

-- ----------------------------
-- Table structure for `weixin_qrcode_scene`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_qrcode_scene`;
CREATE TABLE `weixin_qrcode_scene` (
  `id` varchar(36) NOT NULL,
  `create_name` varchar(50) default NULL COMMENT '创建人名称',
  `create_date` datetime default NULL COMMENT '创建日期',
  `update_name` varchar(50) default NULL COMMENT '修改人名称',
  `update_date` datetime default NULL COMMENT '修改日期',
  `accountid` varchar(50) default NULL COMMENT '公众帐号ID',
  `scenekey` int(11) default NULL COMMENT '场景键',
  `scenevalue` varchar(100) default NULL COMMENT '场景值',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_qrcode_scene
-- ----------------------------
INSERT INTO weixin_qrcode_scene VALUES ('40288183490a24bb01490a627ff70020', 'admin', '2014-10-14 00:41:08', '', null, '402881e8461795c201461795c2e90000', '2222', '1111');

-- ----------------------------
-- Table structure for `weixin_qrcode_sceneseq`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_qrcode_sceneseq`;
CREATE TABLE `weixin_qrcode_sceneseq` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(50) default NULL,
  `REALNAME` int(11) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_qrcode_sceneseq
-- ----------------------------

-- ----------------------------
-- Table structure for `weixin_receiveevent`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_receiveevent`;
CREATE TABLE `weixin_receiveevent` (
  `ID` varchar(32) collate utf8_bin NOT NULL,
  `accountid` varchar(255) collate utf8_bin default NULL,
  `createtime` varchar(255) collate utf8_bin default NULL,
  `events` varchar(255) collate utf8_bin default NULL,
  `eventkey` varchar(255) collate utf8_bin default NULL,
  `fromusername` varchar(255) collate utf8_bin default NULL,
  `latitude` varchar(255) collate utf8_bin default NULL,
  `longitude` varchar(255) collate utf8_bin default NULL,
  `msgtype` varchar(255) collate utf8_bin default NULL,
  `precisions` varchar(255) collate utf8_bin default NULL,
  `receivetime` datetime default NULL,
  `ticket` varchar(255) collate utf8_bin default NULL,
  `tousername` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of weixin_receiveevent
-- ----------------------------
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d5fd051014d5fd57ab7000a', '402881e8461795c201461795c2e90000', '1431831935', 'unsubscribe', '', 'oxIKHuMKrjHBKjwXp0znQ982gF3w', null, null, 'event', null, '2015-05-17 11:05:35', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d5fd051014d5fd5b38c000b', '402881e8461795c201461795c2e90000', '1431831950', 'subscribe', '', 'oxIKHuMKrjHBKjwXp0znQ982gF3w', null, null, 'event', null, '2015-05-17 11:05:50', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d5fd051014d5fd5ef2b000d', '402881e8461795c201461795c2e90000', '1431831965', 'CLICK', 'c0204', 'oxIKHuMKrjHBKjwXp0znQ982gF3w', null, null, 'event', null, '2015-05-17 11:06:05', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d5fd051014d5fd7221c000e', '402881e8461795c201461795c2e90000', '1431832044', 'CLICK', 'c0203', 'oxIKHuMKrjHBKjwXp0znQ982gF3w', null, null, 'event', null, '2015-05-17 11:07:24', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d5fd901014d5fe6ad7d0001', '402881e8461795c201461795c2e90000', '1431833061', 'subscribe', '', 'oxIKHuJyLsTUp-hMXhHLPwq1Audo', null, null, 'event', null, '2015-05-17 11:24:22', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d5fd901014d5fe7a96f0003', '402881e8461795c201461795c2e90000', '1431833127', 'CLICK', 'c0204', 'oxIKHuJyLsTUp-hMXhHLPwq1Audo', null, null, 'event', null, '2015-05-17 11:25:27', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d5fd901014d601108650004', '402881e8461795c201461795c2e90000', '1431835838', 'CLICK', 'c0302', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 12:10:38', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d60d0babd0000', '402881e8461795c201461795c2e90000', '1431848347', 'CLICK', 'c0203', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 15:40:01', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d60d0babd0001', '402881e8461795c201461795c2e90000', '1431848322', 'CLICK', 'c0302', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 15:40:01', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d60d0babd0002', '402881e8461795c201461795c2e90000', '1431848267', 'CLICK', 'c0201', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 15:40:01', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d60d0babf0003', '402881e8461795c201461795c2e90000', '1431848347', 'CLICK', 'c0203', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 15:40:01', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d60d0babf0004', '402881e8461795c201461795c2e90000', '1431848322', 'CLICK', 'c0302', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 15:40:01', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d60d0bb110005', '402881e8461795c201461795c2e90000', '1431848322', 'CLICK', 'c0302', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 15:40:01', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d60d0bb180006', '402881e8461795c201461795c2e90000', '1431848267', 'CLICK', 'c0201', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 15:40:01', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d60d0bb1d0007', '402881e8461795c201461795c2e90000', '1431848353', 'CLICK', 'xiangce', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 15:40:01', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d60d0bb830008', '402881e8461795c201461795c2e90000', '1431848347', 'CLICK', 'c0203', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 15:40:01', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d60d0bbe10009', '402881e8461795c201461795c2e90000', '1431848285', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 15:40:01', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d60d0bc3f000a', '402881e8461795c201461795c2e90000', '1431848353', 'CLICK', 'xiangce', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 15:40:01', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d60d0bc3f000b', '402881e8461795c201461795c2e90000', '1431848353', 'CLICK', 'xiangce', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 15:40:01', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d60d0bc40000c', '402881e8461795c201461795c2e90000', '1431848285', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 15:40:01', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d60d0bc45000d', '402881e8461795c201461795c2e90000', '1431848285', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 15:40:01', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d60d0bc45000e', '402881e8461795c201461795c2e90000', '1431848267', 'CLICK', 'c0201', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 15:40:01', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d60e432270013', '402881e8461795c201461795c2e90000', '1431849677', 'CLICK', 'c0201', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 16:01:17', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d60e465b50014', '402881e8461795c201461795c2e90000', '1431849690', 'CLICK', 'toupiao', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 16:01:30', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d6153f4a70015', '402881e8461795c201461795c2e90000', '1431857001', 'CLICK', 'c0201', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 18:03:21', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d61540e230016', '402881e8461795c201461795c2e90000', '1431857008', 'CLICK', 'toupiao', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 18:03:28', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d61542a610017', '402881e8461795c201461795c2e90000', '1431857015', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 18:03:35', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d6154ea650018', '402881e8461795c201461795c2e90000', '1431857064', 'CLICK', 'dy', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 18:04:24', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d6155cc800019', '402881e8461795c201461795c2e90000', '1431857122', 'CLICK', 'toupiao', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 18:05:22', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d6155dbad001a', '402881e8461795c201461795c2e90000', '1431857126', 'CLICK', 'dy', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 18:05:26', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d6155f0d3001b', '402881e8461795c201461795c2e90000', '1431857131', 'CLICK', 'xiangce', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 18:05:31', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d61562392001c', '402881e8461795c201461795c2e90000', '1431857144', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 18:05:44', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d6156425b001d', '402881e8461795c201461795c2e90000', '1431857152', 'CLICK', 'c0203', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 18:05:52', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d61567623001e', '402881e8461795c201461795c2e90000', '1431857165', 'CLICK', 'huiyuan', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 18:06:05', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d6156a4c9001f', '402881e8461795c201461795c2e90000', '1431857177', 'VIEW', 'http://www.jeewx.com/jeewx/cmsController.do?goPage&page=leaveMsg', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 18:06:17', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d6156f9a60020', '402881e8461795c201461795c2e90000', '1431857199', 'VIEW', 'http://www.jeewx.com/jeewx/cmsController.do?goPage&page=leaveMsg', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 18:06:39', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d615741300021', '402881e8461795c201461795c2e90000', '1431857217', 'CLICK', 'zhoubian', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 18:06:57', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d6157aaf80022', '402881e8461795c201461795c2e90000', '1431857244', 'CLICK', 'c0302', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 18:07:24', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d6157b9e60023', '402881e8461795c201461795c2e90000', '1431857248', 'VIEW', 'http://www.jeewx.com/jeewx/wxZhongjiangController.do?index', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 18:07:28', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d6157d3b80024', '402881e8461795c201461795c2e90000', '1431857255', 'CLICK', 'pk', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 18:07:35', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d6157fb8d0025', '402881e8461795c201461795c2e90000', '1431857265', 'VIEW', 'http://mp.weixin.qq.com/s?__biz=MjM5NjA2OTkxMg==&mid=200275454&idx=1&sn=bf36f852ad218a22a07ebe4b7cc40d01&scene=18#rd', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 18:07:45', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d61580e760026', '402881e8461795c201461795c2e90000', '1431857270', 'VIEW', 'http://mp.weixin.qq.com/s?__biz=MjM5NjA2OTkxMg==&mid=200275454&idx=2&sn=a4a4bd237aff404b8044e59105b74c69&scene=18#rd', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-17 18:07:50', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d615ef2970028', '402881e8461795c201461795c2e90000', '1431857721', 'CLICK', 'toupiao', 'oxIKHuDZzZ6POzJe8uQlSqkb9X2Y', null, null, 'event', null, '2015-05-17 18:15:22', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d623996e30029', '402881e8461795c201461795c2e90000', '1431872050', 'VIEW', 'http://mp.weixin.qq.com/s?__biz=MjM5NjA2OTkxMg==&mid=200275454&idx=2&sn=a4a4bd237aff404b8044e59105b74c69&scene=18#rd', 'oxIKHuMKrjHBKjwXp0znQ982gF3w', null, null, 'event', null, '2015-05-17 22:14:10', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d65a6fd430033', '402881e8461795c201461795c2e90000', '1431929552', 'unsubscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 14:12:32', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d65aab56e0034', '402881e8461795c201461795c2e90000', '1431929795', 'subscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 14:16:35', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d65ac30af0037', '402881e8461795c201461795c2e90000', '1431929892', 'unsubscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 14:18:13', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d65ac767e0038', '402881e8461795c201461795c2e90000', '1431929910', 'subscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 14:18:30', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d65ae1888003b', '402881e8461795c201461795c2e90000', '1431930017', 'unsubscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 14:20:17', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d65ae4b57003c', '402881e8461795c201461795c2e90000', '1431930030', 'subscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 14:20:30', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d65af2a80003f', '402881e8461795c201461795c2e90000', '1431930087', 'unsubscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 14:21:28', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d65af57bb0040', '402881e8461795c201461795c2e90000', '1431930099', 'subscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 14:21:39', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d65b1fe860043', '402881e8461795c201461795c2e90000', '1431930273', 'unsubscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 14:24:33', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d65b23cb80044', '402881e8461795c201461795c2e90000', '1431930289', 'subscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 14:24:49', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d65b48c130047', '402881e8461795c201461795c2e90000', '1431930440', 'subscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 14:27:20', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d65da06950074', '402881e8461795c201461795c2e90000', '1431932896', 'subscribe', '', 'oxIKHuPepPXoL8Uy9Blf9Vma4590', null, null, 'event', null, '2015-05-18 15:08:16', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d65dc9a570076', '402881e8461795c201461795c2e90000', '1431933065', 'VIEW', 'http://mp.weixin.qq.com/s?__biz=MjM5NjA2OTkxMg==&mid=200275454&idx=1&sn=bf36f852ad218a22a07ebe4b7cc40d01&scene=18#rd', 'oxIKHuPepPXoL8Uy9Blf9Vma4590', null, null, 'event', null, '2015-05-18 15:11:05', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d65dcb85b0077', '402881e8461795c201461795c2e90000', '1431933073', 'CLICK', 'huiyuan', 'oxIKHuPepPXoL8Uy9Blf9Vma4590', null, null, 'event', null, '2015-05-18 15:11:13', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d65dce1c50078', '402881e8461795c201461795c2e90000', '1431933083', 'CLICK', 'c0201', 'oxIKHuPepPXoL8Uy9Blf9Vma4590', null, null, 'event', null, '2015-05-18 15:11:24', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d65dcfd200079', '402881e8461795c201461795c2e90000', '1431933090', 'CLICK', 'xiangce', 'oxIKHuPepPXoL8Uy9Blf9Vma4590', null, null, 'event', null, '2015-05-18 15:11:31', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d65dd1795007a', '402881e8461795c201461795c2e90000', '1431933097', 'CLICK', 'zhoubian', 'oxIKHuPepPXoL8Uy9Blf9Vma4590', null, null, 'event', null, '2015-05-18 15:11:37', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d65dd6498007b', '402881e8461795c201461795c2e90000', '1431933117', 'subscribe', '', 'oxIKHuAcld1KrRDBbzKSMysNHVc0', null, null, 'event', null, '2015-05-18 15:11:57', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d65ed83000081', '402881e8461795c201461795c2e90000', '1431934173', 'CLICK', 'pk', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 15:29:33', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d6603d129008e', '402881e8461795c201461795c2e90000', '1431935635', 'subscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 15:53:55', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d660465d80091', '402881e8461795c201461795c2e90000', '1431935673', 'unsubscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 15:54:33', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d6604ca8b0092', '402881e8461795c201461795c2e90000', '1431935699', 'subscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 15:54:59', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d6605f1c50096', '402881e8461795c201461795c2e90000', '1431935775', 'unsubscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 15:56:15', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d66070d530097', '402881e8461795c201461795c2e90000', '1431935847', 'subscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 15:57:27', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d660b82d700a1', '402881e8461795c201461795c2e90000', '1431936139', 'unsubscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 16:02:19', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d660ef01800a5', '402881e8461795c201461795c2e90000', '1431936364', 'CLICK', 'toupiao', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 16:06:04', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d660f00d700a6', '402881e8461795c201461795c2e90000', '1431936368', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 16:06:08', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d661435f300b0', '402881e8461795c201461795c2e90000', '1431936710', 'VIEW', 'http://www.jeewx.com/jeewx/wxZhongjiangController.do?index', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 16:11:50', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d661468e200b1', '402881e8461795c201461795c2e90000', '1431936723', 'unsubscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 16:12:03', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d661949e200b5', '402881e8461795c201461795c2e90000', '1431937042', 'subscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 16:17:22', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d661b348700ba', '402881e8461795c201461795c2e90000', '1431937168', 'CLICK', 'lxwm', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 16:19:28', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d661b4f1100bb', '402881e8461795c201461795c2e90000', '1431937175', 'CLICK', 'c0302', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 16:19:35', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d661babb800bc', '402881e8461795c201461795c2e90000', '1431937198', 'VIEW', 'http://yhsoft.duapp.com/', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 16:19:59', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d661c4fc300bf', '402881e8461795c201461795c2e90000', '1431937240', 'VIEW', 'http://mp.weixin.qq.com/s?__biz=MjM5NjA2OTkxMg==&mid=200275454&idx=1&sn=bf36f852ad218a22a07ebe4b7cc40d01&scene=18#rd', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 16:20:41', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d6645af6300c4', '402881e8461795c201461795c2e90000', '1431939952', 'CLICK', 'c0302', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 17:05:52', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d6645bec800c5', '402881e8461795c201461795c2e90000', '1431939956', 'CLICK', 'c0302', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 17:05:56', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d6645d04200c6', '402881e8461795c201461795c2e90000', '1431939960', 'CLICK', 'c0302', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 17:06:00', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d6646307a00c8', '402881e8461795c201461795c2e90000', '1431939985', 'CLICK', 'c0302', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 17:06:25', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d664699bc00c9', '402881e8461795c201461795c2e90000', '1431940012', 'CLICK', 'c0302', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 17:06:52', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d6647cb1600ca', '402881e8461795c201461795c2e90000', '1431940090', 'CLICK', 'c0302', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 17:08:10', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d664842ac00cb', '402881e8461795c201461795c2e90000', '1431940121', 'unsubscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 17:08:41', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d664948e200cc', '402881e8461795c201461795c2e90000', '1431940188', 'subscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 17:09:48', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d6649e27500ce', '402881e8461795c201461795c2e90000', '1431940227', 'VIEW', 'http://yhsoft.duapp.com/guanyuwomen.html', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 17:10:27', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d60d054014d664f68c400cf', '402881e8461795c201461795c2e90000', '1431940589', 'VIEW', 'http://mp.weixin.qq.com/s?__biz=MjM5NjA2OTkxMg==&mid=200275454&idx=1&sn=bf36f852ad218a22a07ebe4b7cc40d01&scene=18#rd', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 17:16:29', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d6670ec014d6671572f0000', '402881e8461795c201461795c2e90000', '1431942804', 'VIEW', 'http://yhsoft.duapp.com/guanyuwomen.html', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 17:53:33', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d6670ec014d6671572f0001', '402881e8461795c201461795c2e90000', '1431942804', 'VIEW', 'http://yhsoft.duapp.com/guanyuwomen.html', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 17:53:33', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d6670ec014d667177680002', '402881e8461795c201461795c2e90000', '1431942821', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 17:53:41', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d667395014d6715bad40002', '402881e8461795c201461795c2e90000', '1431953586', 'CLICK', 'lxwm', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 20:53:06', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d667395014d6715d32a0003', '402881e8461795c201461795c2e90000', '1431953593', 'CLICK', 'toupiao', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 20:53:13', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d667395014d671600340004', '402881e8461795c201461795c2e90000', '1431953604', 'CLICK', 'c0201', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-18 20:53:24', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d6ae91f014d6af0e2180000', '402881e8461795c201461795c2e90000', '1432018280', 'CLICK', 'lxwm', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-19 14:51:20', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d6ae91f014d6af1f8330001', '402881e8461795c201461795c2e90000', '1432018352', 'CLICK', 'toupiao', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-19 14:52:32', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c91811a4d6ae91f014d6af2248b0002', '402881e8461795c201461795c2e90000', '1432018363', 'VIEW', 'http://mp.weixin.qq.com/s?__biz=MjM5NjA2OTkxMg==&mid=200275454&idx=1&sn=bf36f852ad218a22a07ebe4b7cc40d01&scene=18#rd', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-19 14:52:43', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9182b94d6b887f014d6c0485080000', '402881e8461795c201461795c2e90000', '1432036344', 'CLICK', 'lxwm', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-19 19:52:25', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9182b94d6f6dbf014d6f6f635c0003', '402881e8461795c201461795c2e90000', '1432093680', 'VIEW', 'http://mp.weixin.qq.com/s?__biz=MjM5NjA2OTkxMg==&mid=200275454&idx=1&sn=bf36f852ad218a22a07ebe4b7cc40d01&scene=18#rd', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 11:48:00', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9182b94d6f7cc7014d6fdd22470001', '402881e8461795c201461795c2e90000', '1432100872', 'subscribe', '', 'oxIKHuLmswItcsAJZq1MqqtsY5qM', null, null, 'event', null, '2015-05-20 13:47:52', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9182b94d6f7cc7014d6fdd66830003', '402881e8461795c201461795c2e90000', '1432100890', 'unsubscribe', '', 'oxIKHuLmswItcsAJZq1MqqtsY5qM', null, null, 'event', null, '2015-05-20 13:48:10', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9182b94d6f7cc7014d700c638b000a', '402881e8461795c201461795c2e90000', '1432103969', 'CLICK', 'toupiao', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 14:39:29', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d7090ee014d7094675f0004', '402881e8461795c201461795c2e90000', '1432112883', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 17:08:03', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d7090ee014d709480d20005', '402881e8461795c201461795c2e90000', '1432112889', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 17:08:10', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d7090ee014d709542de0007', '402881e8461795c201461795c2e90000', '1432112939', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 17:08:59', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d7090ee014d7097f967000b', '402881e8461795c201461795c2e90000', '1432113117', 'unsubscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 17:11:57', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d7090ee014d70983f09000c', '402881e8461795c201461795c2e90000', '1432113135', 'subscribe', '', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 17:12:15', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d7090ee014d70989fd8000e', '402881e8461795c201461795c2e90000', '1432113160', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 17:12:40', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d7090ee014d709bd7cc000f', '402881e8461795c201461795c2e90000', '1432113370', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 17:16:11', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d7090ee014d709d8f7e0010', '402881e8461795c201461795c2e90000', '1432113483', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 17:18:03', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d7090ee014d709dafee0011', '402881e8461795c201461795c2e90000', '1432113491', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 17:18:11', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d7090ee014d70a622110012', '402881e8461795c201461795c2e90000', '1432114045', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 17:27:25', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70a742014d70a7fba70000', '402881e8461795c201461795c2e90000', '1432114166', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 17:29:26', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70a742014d70a8fc320001', '402881e8461795c201461795c2e90000', '1432114232', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 17:30:32', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70a742014d70ab24d10003', '402881e8461795c201461795c2e90000', '1432114373', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 17:32:53', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70a742014d70ad87800004', '402881e8461795c201461795c2e90000', '1432114529', 'subscribe', '', 'oxIKHuN_5qX4wP2f3ifILiGdT0j0', null, null, 'event', null, '2015-05-20 17:35:30', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70a742014d70ad9fdd0006', '402881e8461795c201461795c2e90000', '1432114536', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuN_5qX4wP2f3ifILiGdT0j0', null, null, 'event', null, '2015-05-20 17:35:36', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70a742014d70adcdd50007', '402881e8461795c201461795c2e90000', '1432114548', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuN_5qX4wP2f3ifILiGdT0j0', null, null, 'event', null, '2015-05-20 17:35:48', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70a742014d70ae120f0008', '402881e8461795c201461795c2e90000', '1432114565', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 17:36:05', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70a742014d70ae799f0009', '402881e8461795c201461795c2e90000', '1432114592', 'CLICK', 'lxwm', 'oxIKHuN_5qX4wP2f3ifILiGdT0j0', null, null, 'event', null, '2015-05-20 17:36:32', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70a742014d70ae91c2000a', '402881e8461795c201461795c2e90000', '1432114598', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goPage&page=leaveMsg&accountid=402881e8461795c201461795c2e90000', 'oxIKHuN_5qX4wP2f3ifILiGdT0j0', null, null, 'event', null, '2015-05-20 17:36:38', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70b41a014d70b838900000', '402881e8461795c201461795c2e90000', '1432115230', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goPage&page=leaveMsg&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 17:47:10', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70b41a014d70b9fe340003', '402881e8461795c201461795c2e90000', '1432115346', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 17:49:06', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70b41a014d70d58b090004', '402881e8461795c201461795c2e90000', '1432117152', 'unsubscribe', '', 'oxIKHuN_5qX4wP2f3ifILiGdT0j0', null, null, 'event', null, '2015-05-20 18:19:12', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70b41a014d7175752f0005', '402881e8461795c201461795c2e90000', '1432127632', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 21:13:52', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70b41a014d7175e4f70006', '402881e8461795c201461795c2e90000', '1432127661', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goPage&page=leaveMsg&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 21:14:21', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70b41a014d717613920007', '402881e8461795c201461795c2e90000', '1432127673', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goPage&page=leaveMsg&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 21:14:33', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70b41a014d717625020008', '402881e8461795c201461795c2e90000', '1432127677', 'VIEW', 'http://yhsoft.duapp.com/', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 21:14:37', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70b41a014d717641840009', '402881e8461795c201461795c2e90000', '1432127684', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 21:14:44', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70b41a014d71764ea7000a', '402881e8461795c201461795c2e90000', '1432127688', 'CLICK', 'lxwm', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 21:14:48', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70b41a014d717671b1000b', '402881e8461795c201461795c2e90000', '1432127694', 'CLICK', 'toupiao', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 21:14:57', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70b41a014d717694d6000c', '402881e8461795c201461795c2e90000', '1432127706', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 21:15:06', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70b41a014d7176c1be000d', '402881e8461795c201461795c2e90000', '1432127717', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 21:15:17', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70b41a014d7176d19b000e', '402881e8461795c201461795c2e90000', '1432127721', 'CLICK', 'toupiao', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 21:15:21', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70b41a014d71b2b0f5000f', '402881e8461795c201461795c2e90000', '1432131645', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuJyYW9gjC1jqaioaylaeqy0', null, null, 'event', null, '2015-05-20 22:20:45', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70b41a014d71b2f78d0010', '402881e8461795c201461795c2e90000', '1432131663', 'CLICK', 'toupiao', 'oxIKHuJyYW9gjC1jqaioaylaeqy0', null, null, 'event', null, '2015-05-20 22:21:03', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70b41a014d71b306d40011', '402881e8461795c201461795c2e90000', '1432131667', 'CLICK', 'c0204', 'oxIKHuJyYW9gjC1jqaioaylaeqy0', null, null, 'event', null, '2015-05-20 22:21:07', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70b41a014d71b31c900012', '402881e8461795c201461795c2e90000', '1432131673', 'CLICK', 'c0201', 'oxIKHuJyYW9gjC1jqaioaylaeqy0', null, null, 'event', null, '2015-05-20 22:21:13', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70b41a014d71b33a170013', '402881e8461795c201461795c2e90000', '1432131680', 'VIEW', 'http://yhsoft.duapp.com/', 'oxIKHuJyYW9gjC1jqaioaylaeqy0', null, null, 'event', null, '2015-05-20 22:21:20', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70b41a014d71b3805f0014', '402881e8461795c201461795c2e90000', '1432131698', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goPage&page=leaveMsg&accountid=402881e8461795c201461795c2e90000', 'oxIKHuJyYW9gjC1jqaioaylaeqy0', null, null, 'event', null, '2015-05-20 22:21:38', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70b41a014d74135e250016', '402881e8461795c201461795c2e90000', '1432171535', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-21 09:25:35', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70b41a014d741b58a2001d', '402881e8461795c201461795c2e90000', '1432172058', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-21 09:34:18', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70b41a014d742287020022', '402881e8461795c201461795c2e90000', '1432172529', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-21 09:42:09', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70b41a014d74280a8f0023', '402881e8461795c201461795c2e90000', '1432172890', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-21 09:48:10', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70b41a014d742adeaa0024', '402881e8461795c201461795c2e90000', '1432173076', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-21 09:51:16', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70b41a014d74349b6c0026', '402881e8461795c201461795c2e90000', '1432173714', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-21 10:01:54', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d70b41a014d743f169b0027', '402881e8461795c201461795c2e90000', '1432174400', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-21 10:13:21', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d744024014d744584e50002', '402881e8461795c201461795c2e90000', '1432174822', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-21 10:20:22', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d744024014d74480e470005', '402881e8461795c201461795c2e90000', '1432174988', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-21 10:23:08', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d744966014d744a96e50001', '402881e8461795c201461795c2e90000', '1432175153', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-21 10:25:54', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d744966014d745765e30002', '402881e8461795c201461795c2e90000', '1432175994', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-21 10:39:54', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d744966014d7457902d0003', '402881e8461795c201461795c2e90000', '1432176005', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-21 10:40:05', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d744966014d7457d7520004', '402881e8461795c201461795c2e90000', '1432176023', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-21 10:40:23', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d74599c014d7459f4170000', '402881e8461795c201461795c2e90000', '1432176158', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-21 10:42:41', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d745d85014d7460167a0002', '402881e8461795c201461795c2e90000', '1432176563', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-21 10:49:23', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d746b62014d74732f110002', '402881e8461795c201461795c2e90000', '1432177815', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-21 11:10:15', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747549014d74793edb0003', '402881e8461795c201461795c2e90000', '1432178212', 'CLICK', 'c0201', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-21 11:16:52', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747b19014d747c1d160000', '402881e8461795c201461795c2e90000', '1432178400', 'VIEW', 'http://yhsoft.duapp.com/', 'oxIKHuH2JUGKxJ3N5_4fGjQRn6ks', null, null, 'event', null, '2015-05-21 11:20:00', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747b19014d747d1b210001', '402881e8461795c201461795c2e90000', '1432178465', 'CLICK', 'c0201', 'oxIKHuH2JUGKxJ3N5_4fGjQRn6ks', null, null, 'event', null, '2015-05-21 11:21:05', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747b19014d747d4cc80002', '402881e8461795c201461795c2e90000', '1432178478', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuH2JUGKxJ3N5_4fGjQRn6ks', null, null, 'event', null, '2015-05-21 11:21:18', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747b19014d747da8e80003', '402881e8461795c201461795c2e90000', '1432178501', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuH2JUGKxJ3N5_4fGjQRn6ks', null, null, 'event', null, '2015-05-21 11:21:41', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747e5d014d747ebcdf0000', '402881e8461795c201461795c2e90000', '1432178520', 'unsubscribe', '', 'oxIKHuH2JUGKxJ3N5_4fGjQRn6ks', null, null, 'event', null, '2015-05-21 11:22:52', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747e5d014d747ebcdf0001', '402881e8461795c201461795c2e90000', '1432178520', 'unsubscribe', '', 'oxIKHuH2JUGKxJ3N5_4fGjQRn6ks', null, null, 'event', null, '2015-05-21 11:22:52', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747e5d014d747ebcdf0002', '402881e8461795c201461795c2e90000', '1432178520', 'unsubscribe', '', 'oxIKHuH2JUGKxJ3N5_4fGjQRn6ks', null, null, 'event', null, '2015-05-21 11:22:52', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747e5d014d7480f7d00003', '402881e8461795c201461795c2e90000', '1432178718', 'subscribe', '', 'oxIKHuAtrEvfufwPIqnELZ6FsjyM', null, null, 'event', null, '2015-05-21 11:25:18', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747e5d014d748111630005', '402881e8461795c201461795c2e90000', '1432178725', 'CLICK', 'toupiao', 'oxIKHuAtrEvfufwPIqnELZ6FsjyM', null, null, 'event', null, '2015-05-21 11:25:25', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747e5d014d74811acf0006', '402881e8461795c201461795c2e90000', '1432178727', 'CLICK', 'c0204', 'oxIKHuAtrEvfufwPIqnELZ6FsjyM', null, null, 'event', null, '2015-05-21 11:25:27', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747e5d014d74812bd60007', '402881e8461795c201461795c2e90000', '1432178731', 'VIEW', 'http://yhsoft.duapp.com/', 'oxIKHuAtrEvfufwPIqnELZ6FsjyM', null, null, 'event', null, '2015-05-21 11:25:31', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747e5d014d748158a10008', '402881e8461795c201461795c2e90000', '1432178743', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goPage&page=leaveMsg&accountid=402881e8461795c201461795c2e90000', 'oxIKHuAtrEvfufwPIqnELZ6FsjyM', null, null, 'event', null, '2015-05-21 11:25:43', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747e5d014d748169040009', '402881e8461795c201461795c2e90000', '1432178747', 'CLICK', 'lxwm', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-21 11:25:47', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747e5d014d74817104000a', '402881e8461795c201461795c2e90000', '1432178749', 'CLICK', 'lxwm', 'oxIKHuAtrEvfufwPIqnELZ6FsjyM', null, null, 'event', null, '2015-05-21 11:25:49', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747e5d014d7481d751000b', '402881e8461795c201461795c2e90000', '1432178775', 'CLICK', 'lxwm', 'oxIKHuAtrEvfufwPIqnELZ6FsjyM', null, null, 'event', null, '2015-05-21 11:26:15', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747e5d014d7488db41000c', '402881e8461795c201461795c2e90000', '1432179235', 'CLICK', 'c0201', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-21 11:33:55', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747e5d014d7490381b000d', '402881e8461795c201461795c2e90000', '1432179717', 'subscribe', '', 'oxIKHuGZq28bxzXTQOcg9N2CZ07w', null, null, 'event', null, '2015-05-21 11:41:58', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747e5d014d749092f3000f', '402881e8461795c201461795c2e90000', '1432179741', 'subscribe', '', 'oxIKHuPeJmtgsvt7UOxIlGiPNW30', null, null, 'event', null, '2015-05-21 11:42:21', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747e5d014d74a0a74e0011', '402881e8461795c201461795c2e90000', '1432180795', 'subscribe', '', 'oxIKHuCmwXuAVEDqBQ0WgwAEg5y8', null, null, 'event', null, '2015-05-21 11:59:55', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747e5d014d74a0d6f50013', '402881e8461795c201461795c2e90000', '1432180807', 'CLICK', 'toupiao', 'oxIKHuCmwXuAVEDqBQ0WgwAEg5y8', null, null, 'event', null, '2015-05-21 12:00:07', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747e5d014d74a0e3f10014', '402881e8461795c201461795c2e90000', '1432180810', 'CLICK', 'c0204', 'oxIKHuCmwXuAVEDqBQ0WgwAEg5y8', null, null, 'event', null, '2015-05-21 12:00:10', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747e5d014d74a0f1880015', '402881e8461795c201461795c2e90000', '1432180814', 'CLICK', 'c0201', 'oxIKHuCmwXuAVEDqBQ0WgwAEg5y8', null, null, 'event', null, '2015-05-21 12:00:14', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747e5d014d74a118f30016', '402881e8461795c201461795c2e90000', '1432180824', 'CLICK', 'lxwm', 'oxIKHuCmwXuAVEDqBQ0WgwAEg5y8', null, null, 'event', null, '2015-05-21 12:00:24', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747e5d014d74a121c20017', '402881e8461795c201461795c2e90000', '1432180826', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuCmwXuAVEDqBQ0WgwAEg5y8', null, null, 'event', null, '2015-05-21 12:00:26', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747e5d014d74a150ec0018', '402881e8461795c201461795c2e90000', '1432180838', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goPage&page=leaveMsg&accountid=402881e8461795c201461795c2e90000', 'oxIKHuCmwXuAVEDqBQ0WgwAEg5y8', null, null, 'event', null, '2015-05-21 12:00:38', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747e5d014d74a194930019', '402881e8461795c201461795c2e90000', '1432180855', 'VIEW', 'http://yhsoft.duapp.com/', 'oxIKHuCmwXuAVEDqBQ0WgwAEg5y8', null, null, 'event', null, '2015-05-21 12:00:55', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747e5d014d74d4fa89001a', '402881e8461795c201461795c2e90000', '1432184224', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-21 12:57:04', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747e5d014d74d5d7ad001b', '402881e8461795c201461795c2e90000', '1432184280', 'CLICK', 'c0201', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-21 12:58:01', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747e5d014d74d5f931001c', '402881e8461795c201461795c2e90000', '1432184289', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-21 12:58:09', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747e5d014d74d65521001d', '402881e8461795c201461795c2e90000', '1432184313', 'CLICK', 'toupiao', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-21 12:58:33', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747e5d014d74d7d2d0001e', '402881e8461795c201461795c2e90000', '1432184410', 'subscribe', '', 'oxIKHuIS0cJZiP-XwW1fuBYoAvyI', null, null, 'event', null, '2015-05-21 13:00:10', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747e5d014d74eda3a30020', '402881e8461795c201461795c2e90000', '1432185840', 'VIEW', 'http://yhsoft.duapp.com/', 'oxIKHuGZq28bxzXTQOcg9N2CZ07w', null, null, 'event', null, '2015-05-21 13:24:00', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d747e5d014d74eeb1ff0021', '402881e8461795c201461795c2e90000', '1432185909', 'CLICK', 'c0201', 'oxIKHuGZq28bxzXTQOcg9N2CZ07w', null, null, 'event', null, '2015-05-21 13:25:09', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d74f79b014d755a0a020000', '402881e8461795c201461795c2e90000', '1432192943', 'CLICK', 'c0201', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-21 15:22:24', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d74f79b014d75e9d0f50004', '402881e8461795c201461795c2e90000', '1432202367', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-21 17:59:27', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d74f79b014d75ea0bb60005', '402881e8461795c201461795c2e90000', '1432202382', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-21 17:59:42', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d74f79b014d75ea68740006', '402881e8461795c201461795c2e90000', '1432202405', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goPage&page=leaveMsg&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-21 18:00:06', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d7934b4014d79379c1e0001', '402881e8461795c201461795c2e90000', '1432257796', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-22 09:23:17', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d7938da014d793938380000', '402881e8461795c201461795c2e90000', '1432257874', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-22 09:25:02', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d7938da014d793938380001', '402881e8461795c201461795c2e90000', '1432257874', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-22 09:25:02', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d7938da014d7939383b0002', '402881e8461795c201461795c2e90000', '1432257837', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-22 09:25:02', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d7938da014d793938890003', '402881e8461795c201461795c2e90000', '1432257899', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-22 09:25:02', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d7938da014d793938890004', '402881e8461795c201461795c2e90000', '1432257837', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-22 09:25:02', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d7938da014d793938ef0005', '402881e8461795c201461795c2e90000', '1432257874', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-22 09:25:02', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d7938da014d793a709c0008', '402881e8461795c201461795c2e90000', '1432257982', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-22 09:26:22', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d7938da014d793d2450000c', '402881e8461795c201461795c2e90000', '1432258159', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-22 09:29:19', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d7938da014d793e5a360010', '402881e8461795c201461795c2e90000', '1432258238', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-22 09:30:39', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d7938da014d793f4b460014', '402881e8461795c201461795c2e90000', '1432258300', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-22 09:31:40', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d7940a0014d7940f82f0000', '402881e8461795c201461795c2e90000', '1432258383', 'CLICK', 'c0201', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-22 09:33:30', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d7940a0014d7940f82f0001', '402881e8461795c201461795c2e90000', '1432258383', 'CLICK', 'c0201', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-22 09:33:30', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d7940a0014d7940f82f0002', '402881e8461795c201461795c2e90000', '1432258383', 'CLICK', 'c0201', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-22 09:33:30', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d7940a0014d79421b620004', '402881e8461795c201461795c2e90000', '1432258485', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-22 09:34:45', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d944223014d9445439d0002', '402881e8461795c201461795c2e90000', '1432711676', 'CLICK', 'gsdlxx', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-27 15:27:56', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d944223014d944566a30003', '402881e8461795c201461795c2e90000', '1432711685', 'CLICK', 'gsdlxx', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-27 15:28:05', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d944223014d9445f78a0005', '402881e8461795c201461795c2e90000', '1432711722', 'CLICK', 'toupiao', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-27 15:28:42', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d944223014d944605c30006', '402881e8461795c201461795c2e90000', '1432711726', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-27 15:28:46', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d944223014d9510a5ac0008', '402881e8461795c201461795c2e90000', '1432725005', 'CLICK', 'toupiao', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-27 19:10:05', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d944223014d95111e660009', '402881e8461795c201461795c2e90000', '1432725036', 'CLICK', 'toupiao', 'oxIKHuN4X5Z9ExmXjSpLagOr-tIg', null, null, 'event', null, '2015-05-27 19:10:36', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d944223014d951137ae000a', '402881e8461795c201461795c2e90000', '1432725043', 'CLICK', 'c0204', 'oxIKHuN4X5Z9ExmXjSpLagOr-tIg', null, null, 'event', null, '2015-05-27 19:10:43', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d944223014d95114c6c000b', '402881e8461795c201461795c2e90000', '1432725048', 'CLICK', 'gsdlxx', 'oxIKHuN4X5Z9ExmXjSpLagOr-tIg', null, null, 'event', null, '2015-05-27 19:10:48', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d944223014d951170e8000c', '402881e8461795c201461795c2e90000', '1432725057', 'CLICK', 'gsdlxx', 'oxIKHuN4X5Z9ExmXjSpLagOr-tIg', null, null, 'event', null, '2015-05-27 19:10:57', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d944223014d95119a98000d', '402881e8461795c201461795c2e90000', '1432725068', 'CLICK', 'gsdlxx', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-27 19:11:08', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d944223014d9511b021000e', '402881e8461795c201461795c2e90000', '1432725073', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-27 19:11:13', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d944223014d9512ccda000f', '402881e8461795c201461795c2e90000', '1432725146', 'CLICK', 'gsdlxx', 'oxIKHuN4X5Z9ExmXjSpLagOr-tIg', null, null, 'event', null, '2015-05-27 19:12:26', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d944223014d9512e2b80010', '402881e8461795c201461795c2e90000', '1432725152', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-27 19:12:32', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d944223014d951368b80011', '402881e8461795c201461795c2e90000', '1432725186', 'CLICK', 'toupiao', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-27 19:13:06', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d944223014d951d36bd0012', '402881e8461795c201461795c2e90000', '1432725829', 'CLICK', 'c0204', 'oxIKHuN4X5Z9ExmXjSpLagOr-tIg', null, null, 'event', null, '2015-05-27 19:23:49', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d944223014d9637ceb40014', '402881e8461795c201461795c2e90000', '1432744349', 'CLICK', 'c0204', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-28 00:32:29', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d944223014d9d0ce1af0015', '402881e8461795c201461795c2e90000', '1432858976', 'VIEW', 'http://yhsoft.duapp.com/', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-29 08:22:56', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d944223014d9d0fe70c0016', '402881e8461795c201461795c2e90000', '1432859174', 'CLICK', 'c0201', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-29 08:26:14', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d944223014da867cd810018', '402881e8461795c201461795c2e90000', '1433049484', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goGsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuJL1j8enWsdg3nEyWPW1puk', null, null, 'event', null, '2015-05-31 13:18:04', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d944223014da8682aa80019', '402881e8461795c201461795c2e90000', '1433049508', 'VIEW', 'http://yhsoft.duapp.com/', 'oxIKHuJL1j8enWsdg3nEyWPW1puk', null, null, 'event', null, '2015-05-31 13:18:28', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183404d944223014da8685b19001a', '402881e8461795c201461795c2e90000', '1433049520', 'CLICK', 'toupiao', 'oxIKHuJL1j8enWsdg3nEyWPW1puk', null, null, 'event', null, '2015-05-31 13:18:40', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183534d70353e014d70380cad0003', '402881e8461795c201461795c2e90000', '1432106830', 'VIEW', 'http://yhsoft.duapp.com/guanyuwomen.html', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 15:27:11', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183534d70353e014d703945590006', '402881e8461795c201461795c2e90000', '1432106910', 'CLICK', 'lxwm', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 15:28:31', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183534d70353e014d7039655e0007', '402881e8461795c201461795c2e90000', '1432106919', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 15:28:39', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183534d70353e014d703995530008', '402881e8461795c201461795c2e90000', '1432106931', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 15:28:51', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183534d70353e014d7039aa020009', '402881e8461795c201461795c2e90000', '1432106936', 'VIEW', 'http://yhsoft.duapp.com/', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 15:28:56', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183534d703aa3014d703b00fe0000', '402881e8461795c201461795c2e90000', '1432106981', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 15:30:24', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183534d703aa3014d703b00fe0001', '402881e8461795c201461795c2e90000', '1432106981', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 15:30:24', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183534d703aa3014d703b00fe0002', '402881e8461795c201461795c2e90000', '1432106981', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 15:30:24', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183534d703aa3014d703b1efc0003', '402881e8461795c201461795c2e90000', '1432107032', 'CLICK', 'toupiao', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 15:30:32', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183534d703aa3014d703b3b500004', '402881e8461795c201461795c2e90000', '1432107039', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 15:30:39', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183534d703aa3014d703b5da60005', '402881e8461795c201461795c2e90000', '1432107048', 'VIEW', 'http://yhsoft.duapp.com/', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 15:30:48', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183534d703aa3014d703b6f0e0006', '402881e8461795c201461795c2e90000', '1432107052', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?goPage&page=leaveMsg&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 15:30:52', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183534d703aa3014d703b97d30007', '402881e8461795c201461795c2e90000', '1432107063', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 15:31:03', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183534d703aa3014d703d1fa90008', '402881e8461795c201461795c2e90000', '1432107163', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 15:32:43', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183534d703e9c014d703f01550000', '402881e8461795c201461795c2e90000', '1432107259', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 15:34:46', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183534d703e9c014d703f01550001', '402881e8461795c201461795c2e90000', '1432107259', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 15:34:46', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183534d703e9c014d703f01550002', '402881e8461795c201461795c2e90000', '1432107259', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 15:34:46', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183534d704ccf014d705461ac0005', '402881e8461795c201461795c2e90000', '1432108687', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 15:58:07', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183534d704ccf014d7058431b0006', '402881e8461795c201461795c2e90000', '1432108942', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 16:02:22', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183534d704ccf014d705c7fc60007', '402881e8461795c201461795c2e90000', '1432109219', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 16:06:59', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183534d704ccf014d705e6d920008', '402881e8461795c201461795c2e90000', '1432109346', 'subscribe', '', 'oxIKHuN_5qX4wP2f3ifILiGdT0j0', null, null, 'event', null, '2015-05-20 16:09:06', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183534d704ccf014d705e9b5b000a', '402881e8461795c201461795c2e90000', '1432109357', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuN_5qX4wP2f3ifILiGdT0j0', null, null, 'event', null, '2015-05-20 16:09:17', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183534d704ccf014d705edad3000b', '402881e8461795c201461795c2e90000', '1432109374', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuN_5qX4wP2f3ifILiGdT0j0', null, null, 'event', null, '2015-05-20 16:09:34', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183534d704ccf014d705ee43c000c', '402881e8461795c201461795c2e90000', '1432109376', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuN_5qX4wP2f3ifILiGdT0j0', null, null, 'event', null, '2015-05-20 16:09:36', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183534d704ccf014d705f9fe9000d', '402881e8461795c201461795c2e90000', '1432109424', 'unsubscribe', '', 'oxIKHuN_5qX4wP2f3ifILiGdT0j0', null, null, 'event', null, '2015-05-20 16:10:24', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183534d704ccf014d7066775d000f', '402881e8461795c201461795c2e90000', '1432109872', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 16:17:52', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183534d704ccf014d70682faf0010', '402881e8461795c201461795c2e90000', '1432109985', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 16:19:45', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183534d704ccf014d7069f08b0011', '402881e8461795c201461795c2e90000', '1432110100', 'VIEW', 'http://yhsoft.duapp.com/', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 16:21:40', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183534d704ccf014d706a26650012', '402881e8461795c201461795c2e90000', '1432110114', 'VIEW', 'http://yhwxsoft.duapp.com/jeecgwx/cmsController.do?gsjs&page=gsjs&accountid=402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-05-20 16:21:54', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('2c9183534d704ccf014d7072da3c0013', '402881e8461795c201461795c2e90000', '1432110684', 'subscribe', '', 'oxIKHuMCQLukfzl8nr71PwSqhAUk', null, null, 'event', null, '2015-05-20 16:31:24', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151aebee80151aec16aa40004', '402881e8461795c201461795c2e90000', '1450338048', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 15:04:50', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151aede400151aedf7efe0000', '402881e8461795c201461795c2e90000', '1450340019', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 15:37:41', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151aeecd70151aeed8cf40000', '402881e8461795c201461795c2e90000', '1450340920', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 15:53:02', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151aeecd70151aeed8d810001', '402881e8461795c201461795c2e90000', '1450340901', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 15:53:02', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151aeecd70151aeed8d8d0002', '402881e8461795c201461795c2e90000', '1450340901', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 15:53:02', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151aeecd70151aeed8db50003', '402881e8461795c201461795c2e90000', '1450340920', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 15:53:02', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151aeecd70151aeed8dc80004', '402881e8461795c201461795c2e90000', '1450340933', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 15:53:02', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151aeecd70151aeed8dee0005', '402881e8461795c201461795c2e90000', '1450340920', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 15:53:02', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151aeecd70151aeed8e170006', '402881e8461795c201461795c2e90000', '1450340933', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 15:53:02', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151aeecd70151aeed8e4e0007', '402881e8461795c201461795c2e90000', '1450340901', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 15:53:02', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151aef3840151aef43d4c0000', '402881e8461795c201461795c2e90000', '1450341356', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 16:00:20', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151aef3840151aef43dce0001', '402881e8461795c201461795c2e90000', '1450341371', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 16:00:20', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151aef3840151aef43dd70002', '402881e8461795c201461795c2e90000', '1450341378', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 16:00:20', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151aef3840151aef43df70003', '402881e8461795c201461795c2e90000', '1450341371', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 16:00:20', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151aef3840151aef43e220004', '402881e8461795c201461795c2e90000', '1450341356', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 16:00:20', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151aef3840151aef43e440005', '402881e8461795c201461795c2e90000', '1450341356', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 16:00:20', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151aef3840151aef43e610006', '402881e8461795c201461795c2e90000', '1450341356', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 16:00:20', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151aef3840151aef43e8c0007', '402881e8461795c201461795c2e90000', '1450341356', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 16:00:20', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151aef3840151aef43e980008', '402881e8461795c201461795c2e90000', '1450341356', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 16:00:20', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151aef3840151af00579b000c', '402881e8461795c201461795c2e90000', '1450342173', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 16:13:33', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151aef3840151af0280ca0010', '402881e8461795c201461795c2e90000', '1450342314', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 16:15:55', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151aef3840151af02dd960011', '402881e8461795c201461795c2e90000', '1450342338', 'CLICK', 'lxwm', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 16:16:19', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151aef3840151af031ad00012', '402881e8461795c201461795c2e90000', '1450342354', 'CLICK', 'toupiao', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 16:16:35', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151aef3840151af0607da0013', '402881e8461795c201461795c2e90000', '1450342546', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 16:19:46', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151af572d0151af57e77c0000', '402881e8461795c201461795c2e90000', '1450347900', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 17:49:12', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151af572d0151af57e7f80001', '402881e8461795c201461795c2e90000', '1450347892', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 17:49:12', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151af572d0151af57e8010002', '402881e8461795c201461795c2e90000', '1450347869', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 17:49:12', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151af572d0151af57e8090003', '402881e8461795c201461795c2e90000', '1450347869', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 17:49:12', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151af572d0151af57e81a0004', '402881e8461795c201461795c2e90000', '1450347900', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 17:49:12', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151af572d0151af57e8230005', '402881e8461795c201461795c2e90000', '1450347892', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 17:49:12', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151af572d0151af57e8330006', '402881e8461795c201461795c2e90000', '1450347859', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 17:49:12', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151af572d0151af57e83b0007', '402881e8461795c201461795c2e90000', '1450347869', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 17:49:12', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151af572d0151af57e8430008', '402881e8461795c201461795c2e90000', '1450347892', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 17:49:12', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151af572d0151af57e84b0009', '402881e8461795c201461795c2e90000', '1450347859', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 17:49:12', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151af572d0151af57e852000a', '402881e8461795c201461795c2e90000', '1450347859', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 17:49:12', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151af572d0151af57e85d000b', '402881e8461795c201461795c2e90000', '1450347900', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 17:49:12', null, 'gh_b2a51a1013e8');
INSERT INTO weixin_receiveevent VALUES ('ff80808151af572d0151af57e865000c', '402881e8461795c201461795c2e90000', '1450347907', 'CLICK', 'c0202', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', null, null, 'event', null, '2015-12-17 17:49:12', null, 'gh_b2a51a1013e8');

-- ----------------------------
-- Table structure for `weixin_receivetext`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_receivetext`;
CREATE TABLE `weixin_receivetext` (
  `ID` varchar(32) NOT NULL,
  `content` varchar(255) default NULL,
  `createtime` datetime default NULL,
  `fromusername` varchar(255) default NULL,
  `msgid` varchar(255) default NULL,
  `msgtype` varchar(255) default NULL,
  `rescontent` varchar(255) default NULL,
  `response` varchar(255) default NULL,
  `tousername` varchar(255) default NULL,
  `accountid` varchar(100) default NULL,
  `nickname` varchar(100) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_receivetext
-- ----------------------------
INSERT INTO weixin_receivetext VALUES ('2c91811a4d5fd051014d5fd2981b0001', 'hhhs', '2015-05-17 11:02:26', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6149670522650506094', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', null);
INSERT INTO weixin_receivetext VALUES ('2c91811a4d5fd051014d5fd2f3810002', 'test', '2015-05-17 11:02:49', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6149670621434753924', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', null);
INSERT INTO weixin_receivetext VALUES ('2c91811a4d5fd051014d5fd358670003', '你好', '2015-05-17 11:03:15', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6149670733103903633', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', null);
INSERT INTO weixin_receivetext VALUES ('2c91811a4d5fd051014d5fd449c20004', '就是就是就是', '2015-05-17 11:04:17', 'oxIKHuMKrjHBKjwXp0znQ982gF3w', '6149670999391876008', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', null);
INSERT INTO weixin_receivetext VALUES ('2c91811a4d5fd051014d5fd4b8e20006', '让人', '2015-05-17 11:04:46', 'oxIKHuMKrjHBKjwXp0znQ982gF3w', '6149671119650960314', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', null);
INSERT INTO weixin_receivetext VALUES ('2c91811a4d5fd051014d5fd4ca6d0007', '你好', '2015-05-17 11:04:50', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6149671141125796798', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', null);
INSERT INTO weixin_receivetext VALUES ('2c91811a4d5fd051014d5fd4fcae0008', '你好', '2015-05-17 11:05:03', 'oxIKHuMKrjHBKjwXp0znQ982gF3w', '6149671196960371653', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', null);
INSERT INTO weixin_receivetext VALUES ('2c91811a4d60d054014d60d0bd0f000f', '你好', '2015-05-17 15:40:01', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6149741587179392695', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', null);
INSERT INTO weixin_receivetext VALUES ('2c91811a4d60d054014d60d0bd700010', '你好', '2015-05-17 15:40:01', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6149741587179392695', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', null);
INSERT INTO weixin_receivetext VALUES ('2c91811a4d60d054014d60d0bd740011', '你好', '2015-05-17 15:40:01', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6149741587179392695', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', null);
INSERT INTO weixin_receivetext VALUES ('2c91811a4d60d054014d60e407e40012', '你好', '2015-05-17 16:01:06', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6149747488464457964', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', null);
INSERT INTO weixin_receivetext VALUES ('2c91811a4d60d054014d615ec1340027', '你好', '2015-05-17 18:15:09', 'oxIKHuDZzZ6POzJe8uQlSqkb9X2Y', '6149782032886423278', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', null);
INSERT INTO weixin_receivetext VALUES ('2c91811a4d60d054014d646d0930002a', '解决了', '2015-05-18 08:29:36', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150002222974804446', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', null);
INSERT INTO weixin_receivetext VALUES ('2c91811a4d60d054014d6543957b002b', '你好', '2015-05-18 12:23:57', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150062614509962479', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', null);
INSERT INTO weixin_receivetext VALUES ('2c91811a4d60d054014d65bab96d0073', '看看', '2015-05-18 14:34:05', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150096149614613265', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/');
INSERT INTO weixin_receivetext VALUES ('2c91811a4d60d054014d66072bf90099', '解决了', '2015-05-18 15:57:35', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150117667400769049', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/');
INSERT INTO weixin_receivetext VALUES ('2c91811a4d60d054014d660d3dc200a2', '看看', '2015-05-18 16:04:13', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150119376797753096', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/');
INSERT INTO weixin_receivetext VALUES ('2c91811a4d60d054014d660d536c00a3', '途径', '2015-05-18 16:04:18', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150119398272589582', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/');
INSERT INTO weixin_receivetext VALUES ('2c91811a4d60d054014d660d768100a4', '露露', '2015-05-18 16:04:27', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150119436927295254', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/');
INSERT INTO weixin_receivetext VALUES ('2c91811a4d60d054014d6611013b00a7', '是啊', '2015-05-18 16:08:20', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150120433359708037', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/');
INSERT INTO weixin_receivetext VALUES ('2c91811a4d60d054014d661406e300ae', '看看', '2015-05-18 16:11:38', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150121283763232752', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/');
INSERT INTO weixin_receivetext VALUES ('2c91811a4d60d054014d6614184e00af', '吧唧', '2015-05-18 16:11:42', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150121305238069239', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/');
INSERT INTO weixin_receivetext VALUES ('2c91811a4d60d054014d66196ec800b7', '呵呵', '2015-05-18 16:17:32', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150122808476622980', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/');
INSERT INTO weixin_receivetext VALUES ('2c91811a4d60d054014d6619817300b8', '把', '2015-05-18 16:17:37', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150122825656492168', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/');
INSERT INTO weixin_receivetext VALUES ('2c91811a4d60d054014d6619916600b9', '看看', '2015-05-18 16:17:41', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150122847131328651', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/');
INSERT INTO weixin_receivetext VALUES ('2c91811a4d60d054014d6645af1600c3', '好久', '2015-05-18 17:05:52', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150135263881784120', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/');
INSERT INTO weixin_receivetext VALUES ('2c91811a4d667395014d66fed1740000', '你个', '2015-05-18 20:28:05', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150187370425028832', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/');
INSERT INTO weixin_receivetext VALUES ('2c91811a4d667395014d66ffe5f70001', '你个', '2015-05-18 20:29:16', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150187675367706906', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/');
INSERT INTO weixin_receivetext VALUES ('2c9182b94d6f6dbf014d6f6f2caa0002', '模块', '2015-05-20 11:47:46', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150795456189826381', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/');
INSERT INTO weixin_receivetext VALUES ('2c9182b94d6f6dbf014d6f6f9a7a0004', '回老家了', '2015-05-20 11:48:14', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150795580743877982', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/');
INSERT INTO weixin_receivetext VALUES ('2c9182b94d6f7cc7014d700c2a430009', '地理课', '2015-05-20 14:39:14', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150839647108341601', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/');
INSERT INTO weixin_receivetext VALUES ('2c9183404d7090ee014d709440ce0003', '看看', '2015-05-20 17:07:53', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150877953921661879', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/');
INSERT INTO weixin_receivetext VALUES ('2c9183404d7090ee014d7094fd2d0006', '1144', '2015-05-20 17:08:41', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150878160080092139', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/');
INSERT INTO weixin_receivetext VALUES ('2c9183404d7090ee014d7096671d0008', '.com', '2015-05-20 17:10:14', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150878559512050810', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/');
INSERT INTO weixin_receivetext VALUES ('2c9183404d70a742014d70ab11610002', '图', '2015-05-20 17:32:48', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150884374897771101', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/');
INSERT INTO weixin_receivetext VALUES ('2c9183404d70b41a014d7417f3d8001c', '你好。。', '2015-05-21 09:30:36', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6151131189488424951', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/');
INSERT INTO weixin_receivetext VALUES ('2c9183404d70b41a014d741e94700020', '会', '2015-05-21 09:37:50', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6151133062094166161', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/');
INSERT INTO weixin_receivetext VALUES ('2c9183404d70b41a014d741ec5360021', '垃圾', '2015-05-21 09:38:03', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6151133113633773716', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/');
INSERT INTO weixin_receivetext VALUES ('2c9183404d744024014d7444facc0001', '赶过来', '2015-05-21 10:19:47', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6151143868231884111', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/');
INSERT INTO weixin_receivetext VALUES ('2c9183404d746b62014d7472fe3a0001', '回来了', '2015-05-21 11:10:02', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6151156821853250476', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/');
INSERT INTO weixin_receivetext VALUES ('2c9183404d747549014d747914840002', '解决了', '2015-05-21 11:16:41', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6151158535545201794', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/');
INSERT INTO weixin_receivetext VALUES ('2c9183534d70353e014d70383b4f0004', '图', '2015-05-20 15:27:22', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150852050973894237', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/');
INSERT INTO weixin_receivetext VALUES ('2c9183534d70353e014d70384ed30005', '垃圾', '2015-05-20 15:27:27', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150852072448730719', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/');
INSERT INTO weixin_receivetext VALUES ('2c9183534d703e9c014d703f26470003', '来', '2015-05-20 15:34:56', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150854000889046928', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/');
INSERT INTO weixin_receivetext VALUES ('2c9183534d704ccf014d70536e080004', '呵呵', '2015-05-20 15:57:05', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '6150859708900584145', 'text', null, '0', 'gh_b2a51a1013e8', 'gh_b2a51a1013e8', 'Pz8/');

-- ----------------------------
-- Table structure for `weixin_shop_address`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_shop_address`;
CREATE TABLE `weixin_shop_address` (
  `id` varchar(36) NOT NULL,
  `create_name` varchar(50) default NULL COMMENT '创建人名称',
  `create_date` datetime default NULL COMMENT '创建日期',
  `update_name` varchar(50) default NULL COMMENT '修改人名称',
  `update_date` datetime default NULL COMMENT '修改日期',
  `accountid` varchar(50) default NULL COMMENT '公众帐号ID',
  `openid` varchar(50) default NULL COMMENT '用户ID',
  `userid` varchar(50) default NULL COMMENT '用户ID2',
  `province` varchar(50) default NULL COMMENT '省份',
  `city` varchar(50) default NULL COMMENT '城市',
  `area` varchar(50) default NULL COMMENT '县区',
  `address` varchar(200) default NULL COMMENT '详细地址',
  `realname` varchar(50) default NULL COMMENT '收件人姓名',
  `tel` varchar(50) default NULL COMMENT '收件人电话',
  `postno` varchar(10) default NULL COMMENT '邮编',
  `alladdress` varchar(500) default NULL,
  `defaultflag` varchar(2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_shop_address
-- ----------------------------
INSERT INTO weixin_shop_address VALUES ('402880e447cffc4b0147d00267a80007', '1111', '2014-08-13 23:35:24', '1111', '2014-08-13 23:35:32', '402881e8461795c201461795c2e90000', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', 'oxIKHuLHuof1zl0h1P8dyKj1r6as', '山西省,', '阳泉市', '', '1212', '1212', null, null, '山西省,阳泉市12121212null', '1');
INSERT INTO weixin_shop_address VALUES ('402880e447d2f1fb0147d2f89ec80008', 'scott1', '2014-08-14 13:23:34', null, null, null, '402880e447d2f1fb0147d2f580d40002', '402880e447d2f1fb0147d2f580d40002', '上海市', '地级市', '', '123', '123', '123', '123', '上海市地级市123123123', '0');
INSERT INTO weixin_shop_address VALUES ('402880e447d2f1fb0147d2f8b80b000a', 'scott1', '2014-08-14 13:23:41', 'scott1', '2014-08-14 13:23:49', null, '402880e447d2f1fb0147d2f580d40002', '402880e447d2f1fb0147d2f580d40002', '省份', '地级市', '', '', '', '', '', '省份地级市', '1');
INSERT INTO weixin_shop_address VALUES ('402880e447d7243d0147d732f935000a', '1', '2014-08-15 09:05:47', null, null, null, '402880e447d7243d0147d72ea3eb0002', '402880e447d7243d0147d72ea3eb0002', '上海市', '上海市', '', '123', '123', '123', '1231', '上海市上海市123123123', '0');
INSERT INTO weixin_shop_address VALUES ('402881e6479b6c8601479b7091ee0004', 'admin', '2014-08-03 18:35:51', null, null, '402881e8461795c201461795c2e90000', '4028d881436d514601436d5215ac0043', '4028d881436d514601436d5215ac0043', '河南省', '郑州市', '', '文化路97号', '付明星', '18838231664', null, '河南省郑州市文化路97号付明星18838231664', '0');
INSERT INTO weixin_shop_address VALUES ('f7a8a3a9487816f801487862ab1f0124', '', '2014-09-15 16:16:45', null, null, '402881e8461795c201461795c2e90000', 'f7a8a3a9487816f80148781e4cfc004b', 'f7a8a3a9487816f80148781e4cfc004b', '北京市', '北京市', '', '小区1号楼1单元101', '捷微', '01012345678', '100001', '北京市北京市小区1号楼1单元101捷微01012345678', '0');
INSERT INTO weixin_shop_address VALUES ('f7a8a3a9487816f801487868de670137', 'ceshi', '2014-09-15 16:23:31', 'ceshi', '2014-09-15 16:25:51', '4028d881474489d70147449988040025', '402881e44648134a014648174a45000c', '402881e44648134a014648174a45000c', '湖南省', '长沙市', '', '测试', '王先生', '15111315531', '415100', '湖南省长沙市测试王先生15111315531', '1');
INSERT INTO weixin_shop_address VALUES ('f7a8a3a9487816f8014878a92627018e', '', '2014-09-15 17:33:44', '', '2014-09-15 17:33:48', '402881e8461795c201461795c2e90000', 'f7a8a3a9487816f8014878449b6200a8', 'f7a8a3a9487816f8014878449b6200a8', '北京市', '北京市', '', '北京', '1223', '1342664664', '10000', '北京市北京市北京12231342664664', '1');

-- ----------------------------
-- Table structure for `weixin_shop_cart`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_shop_cart`;
CREATE TABLE `weixin_shop_cart` (
  `id` varchar(40) NOT NULL COMMENT '购物车Id',
  `goods_id` varchar(40) default NULL COMMENT '商品Id',
  `goods_property` varchar(200) default NULL COMMENT '商品属性',
  `buy_price` double(10,0) default NULL COMMENT '单价',
  `count` int(11) default NULL COMMENT '数量',
  `total` double(10,0) default NULL COMMENT '总结金额',
  `buyer_id` varchar(40) default NULL COMMENT '买家Id',
  `seller_id` varchar(40) default NULL COMMENT '卖家Id',
  `accountid` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_tft4l75wvjgycjrkqlaab0n0c` (`seller_id`),
  KEY `FK_sttol1w61rhh3j0i7ygdxwoun` (`goods_id`),
  KEY `FK_5j8wfdnil18plrlm1o1s2gncy` (`buyer_id`),
  CONSTRAINT `FK_sttol1w61rhh3j0i7ygdxwoun` FOREIGN KEY (`goods_id`) REFERENCES `weixin_shop_goods` (`id`),
  CONSTRAINT `FK_tft4l75wvjgycjrkqlaab0n0c` FOREIGN KEY (`seller_id`) REFERENCES `t_s_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 9216 kB; (`buyer_id`) REFER `jeecgwx/t_s_user`(';

-- ----------------------------
-- Records of weixin_shop_cart
-- ----------------------------

-- ----------------------------
-- Table structure for `weixin_shop_category`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_shop_category`;
CREATE TABLE `weixin_shop_category` (
  `ID` varchar(36) NOT NULL,
  `CREATE_DATE` datetime default NULL,
  `CREATE_NAME` varchar(50) default NULL,
  `IMGURL` varchar(200) default NULL,
  `NAME` varchar(50) default NULL,
  `SELLER_ID` varchar(36) default NULL,
  `UPDATE_DATE` datetime default NULL,
  `accountid` varchar(100) default NULL,
  `UPDATE_NAME` varchar(50) default NULL,
  `parentid` varchar(36) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_pyu50rd5olohgk0u8cnosgk3d` (`parentid`),
  CONSTRAINT `FK_pyu50rd5olohgk0u8cnosgk3d` FOREIGN KEY (`parentid`) REFERENCES `weixin_shop_category` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_shop_category
-- ----------------------------
INSERT INTO weixin_shop_category VALUES ('402881e947015a7001470161481b0002', '2014-07-04 20:37:38', 'admin', 'upload/files/20140915160306AB5EsXvL.jpg', '家电', '4028d881436d514601436d5215ac0043', '2014-09-15 16:03:07', '402881e8461795c201461795c2e90000', 'admin', null);
INSERT INTO weixin_shop_category VALUES ('402881e947015a7001470161a8050005', '2014-07-04 20:38:03', 'admin', 'upload/files/20140915155546tD1CxcsF.png', '电脑', '4028d881436d514601436d5215ac0043', '2014-09-15 15:55:48', '402881e8461795c201461795c2e90000', 'admin', '402881e947015a7001470161481b0002');
INSERT INTO weixin_shop_category VALUES ('402881e947015a700147016450170008', '2014-07-04 20:40:57', 'admin', 'upload/files/20140915155526yZOqHMsv.jpg', '电视', '4028d881436d514601436d5215ac0043', '2014-09-15 15:55:28', '402881e8461795c201461795c2e90000', 'admin', '402881e947015a7001470161481b0002');
INSERT INTO weixin_shop_category VALUES ('f7a8a3a9487816f80148783b3baa0093', '2014-09-15 15:33:40', 'ceshi', '', '分类1', '402881e44648134a014648174a45000c', null, '4028d881474489d70147449988040025', '', null);
INSERT INTO weixin_shop_category VALUES ('f7a8a3a9487816f80148783b59730095', '2014-09-15 15:33:48', 'ceshi', '', '分类2', '402881e44648134a014648174a45000c', null, '4028d881474489d70147449988040025', '', null);
INSERT INTO weixin_shop_category VALUES ('f7a8a3a9487816f80148784e295e00c1', '2014-09-15 15:54:21', 'admin', 'upload/files/20140915155415g510v6qF.jpg', '手机', '4028d881436d514601436d5215ac0043', null, '402881e8461795c201461795c2e90000', '', null);

-- ----------------------------
-- Table structure for `weixin_shop_deal`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_shop_deal`;
CREATE TABLE `weixin_shop_deal` (
  `id` varchar(36) NOT NULL,
  `create_name` varchar(50) default NULL COMMENT '创建人名称',
  `create_date` datetime default NULL COMMENT '创建日期',
  `update_name` varchar(50) default NULL COMMENT '修改人名称',
  `update_date` datetime default NULL COMMENT '修改日期',
  `deal_number` varchar(50) default NULL COMMENT '订单编号',
  `paytype` varchar(32) default NULL COMMENT '支付方式',
  `pay_number` varchar(32) default NULL COMMENT '交易号',
  `buyer_id` varchar(32) default NULL COMMENT '买家id',
  `seller_id` varchar(32) default NULL COMMENT '卖家id',
  `address_detail` varchar(32) default NULL COMMENT '配送信息',
  `deal_statement` varchar(32) default NULL COMMENT '订单状态',
  `sendtype` varchar(32) default NULL COMMENT '配送方式',
  `express_name` varchar(32) default NULL COMMENT '快递名称',
  `express_number` varchar(32) default NULL COMMENT '运单号',
  `tel` varchar(32) default NULL COMMENT '联系电话',
  `deal_time` varchar(32) default NULL COMMENT '下单时间',
  `pay_time` varchar(32) default NULL COMMENT '支付时间',
  `sendout_time` varchar(32) default NULL COMMENT '发货时间',
  `confirm_time` varchar(32) default NULL COMMENT '确认收获时间',
  `buyer_leave_words` varchar(32) default NULL COMMENT '买家留言',
  `seller_leave_words` varchar(32) default NULL COMMENT '卖家留言',
  `reduce_price` double default NULL COMMENT '优惠降价',
  `yfmny` double default NULL COMMENT '应付金额',
  `sfmny` double default NULL COMMENT '实付金额',
  `jfmny` double default NULL COMMENT '积分抵用金额',
  `memo` varchar(32) default NULL COMMENT '备注',
  `goodid` varchar(40) default NULL,
  `buycount` int(11) default NULL,
  `expresstotal` double default NULL,
  `receiveaddress` varchar(100) default NULL,
  `receivemobile` varchar(50) default NULL,
  `receivename` varchar(50) default NULL,
  `receivephone` varchar(50) default NULL,
  `receivepostno` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_shop_deal
-- ----------------------------
INSERT INTO weixin_shop_deal VALUES ('402886bd51955ac30151955c38240002', 'admin', '2015-12-12 16:43:47', null, null, '1449909827618', '1', null, '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '河南省郑州市文化路97号付明星18838231664', '未支付', null, null, null, null, null, null, null, null, '', null, '0', '0.1', '0.1', null, null, null, '1', '0.1', '文化路97号', '18838231664', '付明星', null, null);
INSERT INTO weixin_shop_deal VALUES ('402886bd51955ac30151955f1ba70005', 'admin', '2015-12-12 16:46:56', null, null, '1449910016933', '1', null, '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '河南省郑州市文化路97号付明星18838231664', '未支付', null, null, null, null, null, null, null, null, '', null, '0', '0', '0', null, null, null, '0', '0', '文化路97号', '18838231664', '付明星', null, null);
INSERT INTO weixin_shop_deal VALUES ('402886bd51955ac30151955f65d90008', 'admin', '2015-12-12 16:47:15', null, null, '1449910035928', '1', null, '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '河南省郑州市文化路97号付明星18838231664', '未支付', null, null, null, null, null, null, null, null, '', null, '0', '0.1', '0.1', null, null, null, '1', '0.1', '文化路97号', '18838231664', '付明星', null, null);
INSERT INTO weixin_shop_deal VALUES ('402886bd51aa324e0151aa411f590000', null, '2015-12-16 18:06:13', null, null, '1450260373334', '1', null, '2c91811a4d60d054014d664949b100cd', '402881e8461795c201461795c2e90000', '山西省,阳泉市12121212null', '未支付', null, null, null, null, null, null, null, null, '', null, '0', '0.3', '0.3', null, null, null, '3', '0.3', '1212', null, '1212', null, null);
INSERT INTO weixin_shop_deal VALUES ('ff80808151aede400151aee01e4d0002', null, '2015-12-17 15:38:22', null, null, '1450337902156', '2', null, '2c91811a4d60d054014d664949b100cd', '402881e8461795c201461795c2e90000', '山西省,阳泉市12121212null', '未支付', null, null, null, null, null, null, null, null, '', null, '0', '0.1', '0.1', null, null, null, '1', '0.1', '1212', null, '1212', null, null);
INSERT INTO weixin_shop_deal VALUES ('ff80808151aeecd70151aeee0a3a0009', null, '2015-12-17 15:53:34', null, null, '1450338814519', '2', null, '2c91811a4d60d054014d664949b100cd', '402881e8461795c201461795c2e90000', '山西省,阳泉市12121212null', '未支付', null, null, null, null, null, null, null, null, '', null, '0', '0.1', '0.1', null, null, null, '1', '0.1', '1212', null, '1212', null, null);
INSERT INTO weixin_shop_deal VALUES ('ff80808151aef3840151aef49679000a', null, '2015-12-17 16:00:43', null, null, '1450339243639', '2', null, '2c91811a4d60d054014d664949b100cd', '402881e8461795c201461795c2e90000', '山西省,阳泉市12121212null', '未支付', null, null, null, null, null, null, null, null, '', null, '0', '0.1', '0.1', null, null, null, '1', '0.1', '1212', null, '1212', null, null);
INSERT INTO weixin_shop_deal VALUES ('ff80808151aef3840151af00bbf2000e', null, '2015-12-17 16:13:59', null, null, '1450340039664', '2', null, '2c91811a4d60d054014d664949b100cd', '402881e8461795c201461795c2e90000', '山西省,阳泉市12121212null', '未支付', null, null, null, null, null, null, null, null, '', null, '0', '0.1', '0.1', null, null, null, '1', '0.1', '1212', null, '1212', null, null);
INSERT INTO weixin_shop_deal VALUES ('ff80808151aef3840151af06972c0016', null, '2015-12-17 16:20:23', null, null, '1450340423467', '2', null, 'ff80808151aef3840151af061db80014', '402881e8461795c201461795c2e90000', '山西省,阳泉市12121212null', '未支付', null, null, null, null, null, null, null, null, '', null, '0', '0.1', '0.1', null, null, null, '1', '0.1', '1212', null, '1212', null, null);
INSERT INTO weixin_shop_deal VALUES ('ff80808151af572d0151af587b6b000e', null, '2015-12-17 17:49:50', null, null, '1450345790296', '2', null, 'ff80808151aef3840151af061db80014', '402881e8461795c201461795c2e90000', '山西省,阳泉市12121212null', '未支付', null, null, null, null, null, null, null, null, '', null, '0', '0.2', '0.2', null, null, null, '2', '0.2', '1212', null, '1212', null, null);

-- ----------------------------
-- Table structure for `weixin_shop_goods`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_shop_goods`;
CREATE TABLE `weixin_shop_goods` (
  `id` varchar(36) NOT NULL,
  `create_name` varchar(50) default NULL COMMENT '创建人名称',
  `create_date` datetime default NULL COMMENT '创建日期',
  `update_name` varchar(50) default NULL COMMENT '修改人名称',
  `update_date` datetime default NULL COMMENT '修改日期',
  `title` varchar(200) default NULL COMMENT '标题信息',
  `title_img` varchar(100) default NULL COMMENT '标题图片',
  `descriptions` longtext COMMENT '商品详情',
  `price` double default NULL COMMENT '商品原价',
  `real_price` double default NULL COMMENT '商品现价',
  `sale` double default NULL COMMENT '折扣',
  `sell_count` int(11) default NULL COMMENT '销售数量',
  `discuss_count` int(11) default NULL COMMENT '评价数量',
  `good_count` int(11) default NULL COMMENT '好评数量',
  `bad_count` int(11) default NULL COMMENT '差评数量',
  `statement` varchar(32) default NULL COMMENT '状态',
  `shelve_time` datetime default NULL COMMENT '上架时间',
  `remove_time` datetime default NULL COMMENT '下架时间',
  `express_name` varchar(32) default NULL COMMENT '快递名称',
  `express_price` double default NULL COMMENT '快递费用',
  `seller_id` varchar(36) default NULL COMMENT '卖家ID',
  `accountid` varchar(200) default NULL,
  `CATEGORY_ID` varchar(36) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_997yl0agvds726aknlc95grpo` (`CATEGORY_ID`),
  CONSTRAINT `FK_997yl0agvds726aknlc95grpo` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `weixin_shop_category` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_shop_goods
-- ----------------------------
INSERT INTO weixin_shop_goods VALUES ('402881e94701df96014701f48ca00008', 'admin', '2014-07-04 23:18:29', 'admin', '2015-12-12 16:29:33', '苹果（Apple）MacBook Air MD711CH/B 11.6英寸笔记本电脑', 'upload/files/20140915161051rgZ0xtje.jpg', '<p title=\"苹果（Apple）MacBook Air MD711CH/B 11.6英寸笔记本电脑（I5 4G 128G SSD 核芯显卡 Intel GMA HD 5000 OS 银色）\" class=\"wb\" style=\"margin: 0px 0px 3px; padding: 0px 0px 0px 10px; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: 微软雅黑; font-size: 16px; font-style: normal; font-variant: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; -ms-word-wrap: break-word; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><br/></p><h1 title=\"苹果（Apple）MacBook Air MD711CH/B 11.6英寸笔记本电脑（I5 4G 128G SSD 核芯显卡 Intel GMA HD 5000 OS 银色）\" class=\"wb\" style=\"margin: 0px 0px 3px; padding: 0px 0px 0px 10px; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: 微软雅黑; font-size: 16px; font-style: normal; font-variant: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; -ms-word-wrap: break-word; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">苹果（Apple）MacBook Air MD711CH/B 11.6英寸笔记本电脑（I5 4G 128G SSD 核芯显卡 Intel GMA HD 50...</h1><h2 class=\"selling-points wb\" id=\"promotionDesc\" style=\"margin: 0px; padding: 0px 0px 4px 10px; color: rgb(255, 119, 0); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: 微软雅黑; font-size: 16px; font-style: normal; font-variant: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; -ms-word-wrap: break-word; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">纤薄，轻巧，强劲，满足你一切的想象。</h2><p><br/></p>', '0.1', '0', '0.1', '15', '0', '0', '0', '0', '2014-07-05 03:14:16', null, '顺丰', '0.1', '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '402881e947015a7001470161a8050005');
INSERT INTO weixin_shop_goods VALUES ('402881e94701df960147020c273b0010', 'admin', '2014-07-04 23:44:16', 'admin', '2015-12-12 15:51:56', '联想(Lenovo)G510AM 15.6英寸笔记本电脑(I5-4210M 4G 500G 2G独显 Win8 金属黑)', 'upload/files/20140915160624FTLr7Pi1.jpg', '<p><br/></p><h1 title=\"联想(Lenovo)G510AM 15.6英寸笔记本电脑(I5-4210M 4G 500G 2G独显 Win8 金属黑)\" class=\"wb\" style=\"margin: 0px 0px 3px; padding: 0px 0px 0px 10px; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: 微软雅黑; font-size: 16px; font-style: normal; font-variant: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; -ms-word-wrap: break-word; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">联想(Lenovo)G510AM 15.6英寸笔记本电脑(I5-4210M 4G 500G 2G独显 Win8 金属黑)</h1><h2 class=\"selling-points wb\" id=\"promotionDesc\" style=\"margin: 0px; padding: 0px 0px 4px 10px; color: rgb(255, 119, 0); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: 微软雅黑; font-size: 16px; font-style: normal; font-variant: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; -ms-word-wrap: break-word; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">小Y配置，R7-M265显卡超能体验，G490升配机器，金属机身，更加酷炫。</h2><h1 title=\"联想(Lenovo)G510AM 15.6英寸笔记本电脑(I5-4210M 4G 500G 2G独显 Win8 金属黑)\" class=\"wb\" style=\"margin: 0px 0px 3px; padding: 0px 0px 0px 10px; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: 微软雅黑; font-size: 16px; font-style: normal; font-variant: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; -ms-word-wrap: break-word; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">&nbsp;</h1><p>&nbsp;</p>', '0.1', '0.1', '10', '11', '0', '0', '0', '0', '2014-07-04 23:44:16', '2014-07-04 23:44:16', '顺丰', '0.1', '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '402881e947015a7001470161a8050005');
INSERT INTO weixin_shop_goods VALUES ('402881e94701df960147020c273b0012', 'admin', '2014-07-04 23:44:16', 'admin', '2015-12-12 16:29:25', '华硕(ASUS)F450LD4200 14英寸 笔记本 (I5-4200U 4G 500G GT820 2G独显 DOS 黑)', 'upload/files/20140915160851z1Uzudqp.jpg', '<h1 title=\"华硕(ASUS)F450LD4200 14英寸 笔记本 (I5-4200U 4G  500G GT820 2G独显 DOS 黑)\" class=\"wb\" style=\"margin: 0px 0px 3px; padding: 0px 0px 0px 10px; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: 微软雅黑; font-size: 16px; font-style: normal; font-variant: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; -ms-word-wrap: break-word; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">华硕(ASUS)F450LD4200 14英寸 笔记本 (I5-4200U 4G 500G GT820 2G独显 DOS 黑)</h1><h2 class=\"selling-points wb\" id=\"promotionDesc\" style=\"margin: 0px; padding: 0px 0px 4px 10px; color: rgb(255, 119, 0); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: 微软雅黑; font-size: 16px; font-style: normal; font-variant: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; -ms-word-wrap: break-word; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">英特尔全新I5处理器，500G海量硬盘 GT820M 2G游戏显卡。</h2><p>&nbsp;</p>', '0.1', '0', '0.1', '18', '0', '0', '0', '0', '2014-07-04 23:44:16', '2014-07-04 23:44:16', '申通', '0.1', '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000', '402881e947015a7001470161a8050005');
INSERT INTO weixin_shop_goods VALUES ('f7a8a3a9487816f80148783c357b0097', 'ceshi', '2014-09-15 15:34:44', '', null, '商品1', '', '', '1000', '900', '9', '0', '0', '0', '0', '0', null, null, '', null, '402881e44648134a014648174a45000c', '4028d881474489d70147449988040025', 'f7a8a3a9487816f80148783b3baa0093');

-- ----------------------------
-- Table structure for `weixin_shop_member`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_shop_member`;
CREATE TABLE `weixin_shop_member` (
  `id` varchar(40) NOT NULL COMMENT '主键Id',
  `USERNAME` varchar(100) NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(100) NOT NULL COMMENT '密码',
  `accountid` varchar(100) default NULL,
  `ADDTIME` datetime default NULL COMMENT '注册时间',
  `MOBILE` varchar(20) default NULL COMMENT '手机号',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_shop_member
-- ----------------------------
INSERT INTO weixin_shop_member VALUES ('402881e5470a6e9a01470a8559c20001', 'tom', '111111', null, null, '18838231664');

-- ----------------------------
-- Table structure for `weixin_shop_orderdetail`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_shop_orderdetail`;
CREATE TABLE `weixin_shop_orderdetail` (
  `id` varchar(50) NOT NULL,
  `order_id` varchar(50) default NULL COMMENT '单订Id',
  `goods_id` varchar(50) default NULL,
  `goods_property` varchar(100) default NULL COMMENT '宝贝属性',
  `buy_price` double(11,0) default NULL COMMENT '购买单价',
  `count` int(10) default NULL COMMENT '购买数量',
  `reduce_price` varchar(100) default NULL COMMENT '优惠/降价',
  `total` double(10,0) default NULL COMMENT '总计金额',
  `buyer_id` varchar(50) default NULL COMMENT '买家Id',
  `seller_id` varchar(50) default NULL COMMENT '卖家Id',
  `accountid` varchar(50) default NULL COMMENT '商家微信号Id',
  PRIMARY KEY  (`id`),
  KEY `FK_g3hoendqqwpfqhnx3w685xjw6` (`goods_id`),
  KEY `FK_6q7xw4lc2crfa2rbbnx15rnjl` (`order_id`),
  CONSTRAINT `FK_6q7xw4lc2crfa2rbbnx15rnjl` FOREIGN KEY (`order_id`) REFERENCES `weixin_shop_deal` (`id`),
  CONSTRAINT `FK_g3hoendqqwpfqhnx3w685xjw6` FOREIGN KEY (`goods_id`) REFERENCES `weixin_shop_goods` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_shop_orderdetail
-- ----------------------------
INSERT INTO weixin_shop_orderdetail VALUES ('402886bd51955ac30151955c38520003', '402886bd51955ac30151955c38240002', '402881e94701df96014701f48ca00008', '', '0', '1', '0', '0', '4028d881436d514601436d5215ac0043', '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_shop_orderdetail VALUES ('402886bd51955ac30151955f65fc0009', '402886bd51955ac30151955f65d90008', '402881e94701df960147020c273b0010', '', '0', '1', '0', '0', '4028d881436d514601436d5215ac0043', '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_shop_orderdetail VALUES ('402886bd51aa324e0151aa411fe90001', '402886bd51aa324e0151aa411f590000', '402881e94701df960147020c273b0010', '', '0', '3', '0', '0', '2c91811a4d60d054014d664949b100cd', '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_shop_orderdetail VALUES ('ff80808151aede400151aee01ea70003', 'ff80808151aede400151aee01e4d0002', '402881e94701df960147020c273b0010', '', '0', '1', '0', '0', '2c91811a4d60d054014d664949b100cd', '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_shop_orderdetail VALUES ('ff80808151aeecd70151aeee0ab9000a', 'ff80808151aeecd70151aeee0a3a0009', '402881e94701df960147020c273b0010', '', '0', '1', '0', '0', '2c91811a4d60d054014d664949b100cd', '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_shop_orderdetail VALUES ('ff80808151aef3840151aef496f7000b', 'ff80808151aef3840151aef49679000a', '402881e94701df960147020c273b0010', '', '0', '1', '0', '0', '2c91811a4d60d054014d664949b100cd', '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_shop_orderdetail VALUES ('ff80808151aef3840151af00bc40000f', 'ff80808151aef3840151af00bbf2000e', '402881e94701df960147020c273b0010', '', '0', '1', '0', '0', '2c91811a4d60d054014d664949b100cd', '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_shop_orderdetail VALUES ('ff80808151aef3840151af06975f0017', 'ff80808151aef3840151af06972c0016', '402881e94701df960147020c273b0010', '', '0', '1', '0', '0', 'ff80808151aef3840151af061db80014', '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_shop_orderdetail VALUES ('ff80808151af572d0151af587bc7000f', 'ff80808151af572d0151af587b6b000e', '402881e94701df96014701f48ca00008', '', '0', '2', '0', '0', 'ff80808151aef3840151af061db80014', '4028d881436d514601436d5215ac0043', '402881e8461795c201461795c2e90000');

-- ----------------------------
-- Table structure for `weixin_subscribe`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_subscribe`;
CREATE TABLE `weixin_subscribe` (
  `ID` varchar(32) character set utf8 NOT NULL,
  `accountid` varchar(255) character set utf8 default NULL,
  `addTime` varchar(255) character set utf8 default NULL,
  `msgType` varchar(255) character set utf8 default NULL,
  `templateId` varchar(255) character set utf8 default NULL,
  `templateName` varchar(255) character set utf8 default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of weixin_subscribe
-- ----------------------------
INSERT INTO weixin_subscribe VALUES ('402889ff472978290147297b54350004', '402881e8461795c201461795c2e90000', '2014-07-12 15:30:54', 'text', '2c91811a4d60d054014d65a2caa1002f', '成都永辉科技有限公司');

-- ----------------------------
-- Table structure for `weixin_survey`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_survey`;
CREATE TABLE `weixin_survey` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(50) default NULL,
  `CREATE_DATE` datetime default NULL,
  `CREATE_NAME` varchar(50) default NULL,
  `INTEGRAL` int(11) default NULL,
  `statement` varchar(255) default NULL,
  `SURVEY_COUNT` int(11) default NULL,
  `SURVEY_DESCRIPTION` varchar(200) default NULL,
  `SURVEY_TITLE` varchar(200) default NULL,
  `SURVEY_TYPE` varchar(50) default NULL,
  `UPDATE_DATE` datetime default NULL,
  `UPDATE_NAME` varchar(50) default NULL,
  `MAIN_ID` varchar(50) default NULL,
  `SEQ` int(11) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_survey
-- ----------------------------
INSERT INTO weixin_survey VALUES ('f7a8a3a9487816f80148785f53a7010c', '402881e8461795c201461795c2e90000', '2014-09-15 16:13:06', 'admin', null, '0', '3', '天气如何', '天气如何', '1', '2015-05-14 22:33:12', 'admin', 'f7a8a3a9487816f80148785ed688010a', '1');
INSERT INTO weixin_survey VALUES ('f7a8a3a9487816f80148786065370113', '402881e8461795c201461795c2e90000', '2014-09-15 16:14:16', 'admin', null, '0', '3', '你想住在几环', '你想住在几环', '2', '2015-05-14 22:33:13', 'admin', 'f7a8a3a9487816f80148785ed688010a', '2');
INSERT INTO weixin_survey VALUES ('f7a8a3a9487816f801487860b134011b', '402881e8461795c201461795c2e90000', '2014-09-15 16:14:35', 'admin', null, '0', '3', '你期望你未来的生活是什么样子', '你期望你未来的生活是什么样子', '3', '2015-05-14 22:33:13', 'admin', 'f7a8a3a9487816f80148785ed688010a', '3');

-- ----------------------------
-- Table structure for `weixin_survey_main`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_survey_main`;
CREATE TABLE `weixin_survey_main` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(50) default NULL,
  `CREATE_DATE` datetime default NULL,
  `CREATE_NAME` varchar(50) default NULL,
  `INTEGRAL` int(11) default NULL,
  `statement` varchar(255) default NULL,
  `SURVEY_COUNT` int(11) default NULL,
  `SURVEY_DESCRIPTION` varchar(200) default NULL,
  `SURVEY_TITLE` varchar(200) default NULL,
  `UPDATE_DATE` datetime default NULL,
  `UPDATE_NAME` varchar(50) default NULL,
  `validDate` datetime default NULL,
  `VALID_DATE` datetime default NULL,
  `BEGIN_DATE` datetime default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_survey_main
-- ----------------------------
INSERT INTO weixin_survey_main VALUES ('f7a8a3a9487816f801487859ec6a00f3', null, '2014-09-15 16:07:12', 'admin', '5', '0', '0', '调用北京生活质量', '调用北京生活质量', '2014-09-15 16:10:10', 'admin', null, '2014-09-15 16:07:59', '2014-09-10 16:07:57');
INSERT INTO weixin_survey_main VALUES ('f7a8a3a9487816f80148785ed688010a', '402881e8461795c201461795c2e90000', '2014-09-15 16:12:34', 'admin', '5', '1', '3', '北京生活质量', '北京生活质量', '2015-05-14 22:33:12', 'admin', null, '2014-09-20 16:13:18', '2014-09-15 16:13:16');

-- ----------------------------
-- Table structure for `weixin_survey_option`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_survey_option`;
CREATE TABLE `weixin_survey_option` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(50) default NULL,
  `SURVEY_COUNT` int(11) default NULL,
  `SCALE` double default NULL,
  `SURVEY_OPTION_TITLE` varchar(50) default NULL,
  `SURVEY_ID` varchar(36) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_souo34p5h30ntkci47ag47vsb` (`SURVEY_ID`),
  CONSTRAINT `FK_souo34p5h30ntkci47ag47vsb` FOREIGN KEY (`SURVEY_ID`) REFERENCES `weixin_survey` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_survey_option
-- ----------------------------
INSERT INTO weixin_survey_option VALUES ('f7a8a3a9487816f80148785f53a7010d', '402881e8461795c201461795c2e90000', '0', '0', '好', 'f7a8a3a9487816f80148785f53a7010c');
INSERT INTO weixin_survey_option VALUES ('f7a8a3a9487816f80148785f53a7010e', '402881e8461795c201461795c2e90000', '1', '0', '不好', 'f7a8a3a9487816f80148785f53a7010c');
INSERT INTO weixin_survey_option VALUES ('f7a8a3a9487816f80148785f53a7010f', '402881e8461795c201461795c2e90000', '2', '0', '很差', 'f7a8a3a9487816f80148785f53a7010c');
INSERT INTO weixin_survey_option VALUES ('f7a8a3a9487816f80148786065370114', '402881e8461795c201461795c2e90000', '2', '0', '一环', 'f7a8a3a9487816f80148786065370113');
INSERT INTO weixin_survey_option VALUES ('f7a8a3a9487816f80148786065460115', '402881e8461795c201461795c2e90000', '2', '0', '二环', 'f7a8a3a9487816f80148786065370113');
INSERT INTO weixin_survey_option VALUES ('f7a8a3a9487816f80148786065460116', '402881e8461795c201461795c2e90000', '1', '0', '三环', 'f7a8a3a9487816f80148786065370113');
INSERT INTO weixin_survey_option VALUES ('f7a8a3a9487816f80148786065460117', '402881e8461795c201461795c2e90000', '1', '0', '四环', 'f7a8a3a9487816f80148786065370113');

-- ----------------------------
-- Table structure for `weixin_survey_record`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_survey_record`;
CREATE TABLE `weixin_survey_record` (
  `id` varchar(255) NOT NULL,
  `accountid` varchar(50) default NULL,
  `answer` varchar(200) default NULL,
  `CREATE_DATE` datetime default NULL,
  `CREATE_NAME` varchar(50) default NULL,
  `openid` varchar(50) default NULL,
  `surveyid` varchar(50) default NULL,
  `userid` varchar(50) default NULL,
  `MAINID` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_survey_record
-- ----------------------------
INSERT INTO weixin_survey_record VALUES ('f7a8a3a9487816f801487861974e0121', '402881e8461795c201461795c2e90000', '很差', '2014-09-15 16:15:34', '', 'oGCDRjvr9L1NoqxbyXLReCVYVyV0', 'f7a8a3a9487816f80148785f53a7010c', 'f7a8a3a9487816f8014878449b6200a8', 'f7a8a3a9487816f80148785ed688010a');
INSERT INTO weixin_survey_record VALUES ('f7a8a3a9487816f80148786197bb0122', '402881e8461795c201461795c2e90000', '一环;二环;三环;四环', '2014-09-15 16:15:34', '', 'oGCDRjvr9L1NoqxbyXLReCVYVyV0', 'f7a8a3a9487816f80148786065370113', 'f7a8a3a9487816f8014878449b6200a8', 'f7a8a3a9487816f80148785ed688010a');
INSERT INTO weixin_survey_record VALUES ('f7a8a3a9487816f80148786197cb0123', '402881e8461795c201461795c2e90000', '有房有车', '2014-09-15 16:15:34', '', 'oGCDRjvr9L1NoqxbyXLReCVYVyV0', 'f7a8a3a9487816f801487860b134011b', 'f7a8a3a9487816f8014878449b6200a8', 'f7a8a3a9487816f80148785ed688010a');
INSERT INTO weixin_survey_record VALUES ('f7a8a3a9487816f80148788ab83c015c', '402881e8461795c201461795c2e90000', '不好', '2014-09-15 17:00:30', '', 'oGCDRjuLfYaYMGTpJJIUlOAw3ZzY', 'f7a8a3a9487816f80148785f53a7010c', 'f7a8a3a9487816f80148788795320150', 'f7a8a3a9487816f80148785ed688010a');
INSERT INTO weixin_survey_record VALUES ('f7a8a3a9487816f80148788ab88a015d', '402881e8461795c201461795c2e90000', '二环', '2014-09-15 17:00:30', '', 'oGCDRjuLfYaYMGTpJJIUlOAw3ZzY', 'f7a8a3a9487816f80148786065370113', 'f7a8a3a9487816f80148788795320150', 'f7a8a3a9487816f80148785ed688010a');
INSERT INTO weixin_survey_record VALUES ('f7a8a3a9487816f80148788ab89a015e', '402881e8461795c201461795c2e90000', '刚好回家', '2014-09-15 17:00:30', '', 'oGCDRjuLfYaYMGTpJJIUlOAw3ZzY', 'f7a8a3a9487816f801487860b134011b', 'f7a8a3a9487816f80148788795320150', 'f7a8a3a9487816f80148785ed688010a');
INSERT INTO weixin_survey_record VALUES ('ff8080814d4d9ca5014d52d7efd30002', '402881e8461795c201461795c2e90000', '很差', '2015-05-14 22:33:12', 'admin', 'oGCDRjvr9L1NoqxbyXLReCVYVyV0', 'f7a8a3a9487816f80148785f53a7010c', '4028d881436d514601436d5215ac0043', 'f7a8a3a9487816f80148785ed688010a');
INSERT INTO weixin_survey_record VALUES ('ff8080814d4d9ca5014d52d7f1620003', '402881e8461795c201461795c2e90000', '一环', '2015-05-14 22:33:13', 'admin', 'oGCDRjvr9L1NoqxbyXLReCVYVyV0', 'f7a8a3a9487816f80148786065370113', '4028d881436d514601436d5215ac0043', 'f7a8a3a9487816f80148785ed688010a');
INSERT INTO weixin_survey_record VALUES ('ff8080814d4d9ca5014d52d7f1920004', '402881e8461795c201461795c2e90000', 'ddasd', '2015-05-14 22:33:13', 'admin', 'oGCDRjvr9L1NoqxbyXLReCVYVyV0', 'f7a8a3a9487816f801487860b134011b', '4028d881436d514601436d5215ac0043', 'f7a8a3a9487816f80148785ed688010a');

-- ----------------------------
-- Table structure for `weixin_texttemplate`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_texttemplate`;
CREATE TABLE `weixin_texttemplate` (
  `ID` varchar(32) NOT NULL,
  `addtime` varchar(255) default NULL,
  `content` varchar(255) default NULL,
  `templatename` varchar(255) default NULL,
  `accountid` varchar(100) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_texttemplate
-- ----------------------------
INSERT INTO weixin_texttemplate VALUES ('2c91811a4d60d054014d65a2caa1002f', '2015-05-18 14:07:57', '欢迎您,来到成都永辉科技有限公司\r\n1: 软件系统,办公系统 OA, 网站制作\r\n   ， 仿站,  微信公众号开发\r\n请联系 邓先生 \r\n手机号: 13558674514    \r\n QQ:652356756@qq.com\r\n           杨先生 \r\n手机号: 18520699500  \r\n QQ:497731972@qq.com\r\n2:公司详情介绍 \r\n http://yhsoft.duapp.com/', '成都永辉科技有限公司', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_texttemplate VALUES ('2c9182b94d6f7cc7014d70079edb0006', '2015-05-20 14:34:17', '1:OA源码(淘宝地址: http://item.taobao.com/item.htm?spm=a230r.1.14.10.5lDH6m&id=45053029089&ns=1&abbucket=8#detail)', '公司产品', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_texttemplate VALUES ('4028818348fb17090148fb1a2bf00005', '2014-10-11 01:27:49', '未知名回复', '未知名回复', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_texttemplate VALUES ('4028d8814734ee0d0147356b4c730010', '2014-07-14 23:08:50', '你好，我是邓晓辉', '你好', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_texttemplate VALUES ('f7a8a3a9487816f801487841b69900a1', '2014-09-15 15:40:45', 'bb', 'aa', '4028d881474489d70147449988040025');

-- ----------------------------
-- Table structure for `weixin_unknown_response`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_unknown_response`;
CREATE TABLE `weixin_unknown_response` (
  `ID` varchar(32) collate utf8_bin NOT NULL,
  `accountid` varchar(255) collate utf8_bin default NULL,
  `addTime` varchar(255) collate utf8_bin default NULL,
  `msgType` varchar(255) collate utf8_bin default NULL,
  `templateId` varchar(255) collate utf8_bin default NULL,
  `templateName` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of weixin_unknown_response
-- ----------------------------
INSERT INTO weixin_unknown_response VALUES ('4028818348fb17090148fb19c94a0004', '402881e8461795c201461795c2e90000', '2014-10-11 01:27:24', 'text', '2c91811a4d60d054014d65a2caa1002f', '成都永辉科技有限公司');

-- ----------------------------
-- Table structure for `weixin_userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_userinfo`;
CREATE TABLE `weixin_userinfo` (
  `ID` varchar(32) NOT NULL,
  `addtime` varchar(255) default NULL,
  `mobile` varchar(255) default NULL,
  `openid` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_userinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `weixin_vip_info`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_vip_info`;
CREATE TABLE `weixin_vip_info` (
  `ID` varchar(36) NOT NULL,
  `VIP_NAME` varchar(100) NOT NULL,
  `VIP_IMG` varchar(200) default NULL,
  `VIP_DESCRIBE` varchar(200) default NULL,
  `VIP_COFING` varchar(20) default NULL,
  `START_TIME` date default NULL,
  `END_TIME` date default NULL,
  `LEVEL_ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(100) NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_vip_info
-- ----------------------------
INSERT INTO weixin_vip_info VALUES ('402881e5479afd0101479b7258ca0023', '黄金会员卡', 'upload/files/20140804022004UE5avXRs.png', '					      					      黄金会员卡,帝王享受\r\n					      \r\n					      \r\n					      ', null, '2014-08-03', null, '4', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_vip_info VALUES ('402881e5479afd0101479b7cc102002b', '钻石会员卡', 'upload/files/20140804022016GE5JCfZ0.png', '					      					      钻石会员卡，至尊待遇，尊贵无比			      \r\n					      \r\n					      ', null, '2014-08-03', null, '5', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_vip_info VALUES ('402881e5479afd0101479b7d792e002f', '普通会员卡', 'upload/files/20140804022031I66JtQG5.png', '					      普通会员卡,注册即可获得	      \r\n					      ', null, '2014-08-03', null, '1', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_vip_info VALUES ('402881e5479afd0101479b7e64c00032', '青铜会员卡', 'upload/files/20140804022040CxBHjCcT.png', '					      活跃用户才能获得的会员卡	      \r\n					      ', null, '2014-08-03', null, '2', '402881e8461795c201461795c2e90000');
INSERT INTO weixin_vip_info VALUES ('402881e5479afd0101479b7ee8aa0035', '白银会员卡', 'upload/files/20140804022243rk2FhIWa.png', '					      					      					      核心用户才能获取的会员卡，享受精致生活 \r\n					      \r\n					      \r\n					      ', null, '2014-08-03', null, '3', '402881e8461795c201461795c2e90000');

-- ----------------------------
-- Table structure for `weixin_vip_member`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_vip_member`;
CREATE TABLE `weixin_vip_member` (
  `ID` varchar(36) NOT NULL,
  `MEMBER_NAME` varchar(100) default NULL,
  `MEMBER_BALANCE` decimal(9,2) unsigned zerofill default '0000000.00',
  `MEMBER_INTEGRAL` int(9) default '0',
  `CREATE_TIME` date NOT NULL,
  `VIP_ID` varchar(36) default NULL,
  `MEMBER_ID` varchar(36) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_tm49oa6pkefxo4qt1o52hphla` (`MEMBER_ID`),
  KEY `FK_1vcxsax8twhsh45bk0dpsvess` (`VIP_ID`),
  CONSTRAINT `FK_1vcxsax8twhsh45bk0dpsvess` FOREIGN KEY (`VIP_ID`) REFERENCES `weixin_vip_info` (`ID`),
  CONSTRAINT `FK_tm49oa6pkefxo4qt1o52hphla` FOREIGN KEY (`MEMBER_ID`) REFERENCES `t_s_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_vip_member
-- ----------------------------
INSERT INTO weixin_vip_member VALUES ('402881e5479afd0101479b7cc102002c', 'admin', '0000000.00', '6', '2014-08-04', '402881e5479afd0101479b7cc102002b', '4028d881436d514601436d5215ac0043');
INSERT INTO weixin_vip_member VALUES ('f7a8a3a9487816f8014878488b7000b8', '', '0000000.00', '0', '2014-09-15', '402881e5479afd0101479b7d792e002f', 'f7a8a3a9487816f801487848150800b4');
INSERT INTO weixin_vip_member VALUES ('f7a8a3a9487816f8014878aae0890199', 'ceshi', '0000000.00', '0', '2014-09-15', '402881e5479afd0101479b7d792e002f', '402881e44648134a014648174a45000c');

-- ----------------------------
-- Table structure for `weixin_vote`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_vote`;
CREATE TABLE `weixin_vote` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(50) default NULL,
  `CREATE_DATE` datetime default NULL,
  `CREATE_NAME` varchar(50) default NULL,
  `INTEGRAL` int(11) default NULL,
  `statement` varchar(255) default NULL,
  `UPDATE_DATE` datetime default NULL,
  `UPDATE_NAME` varchar(50) default NULL,
  `VOTE_COUNT` int(11) default NULL,
  `VOTE_DESCRIPTION` varchar(200) default NULL,
  `VOTE_TITLE` varchar(200) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_vote
-- ----------------------------
INSERT INTO weixin_vote VALUES ('402880e648152c3a01481537e6b6000d', '402881e8461795c201461795c2e90000', '2014-08-27 10:07:38', 'admin', '1', '1', '2014-09-15 17:01:27', '', '4', '11', '喜欢吃什么');

-- ----------------------------
-- Table structure for `weixin_votepk_config`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_votepk_config`;
CREATE TABLE `weixin_votepk_config` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` longtext,
  `CONFIG_NAME` varchar(50) default NULL,
  `CONFIG_VALUE` longtext,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_votepk_config
-- ----------------------------
INSERT INTO weixin_votepk_config VALUES ('402881e4486fff4101486ffff4440001', '402881e8461795c201461795c2e90000', '投票排行每页显示数量', '20');
INSERT INTO weixin_votepk_config VALUES ('402881e4486fff4101487001f93e0004', '402881e8461795c201461795c2e90000', '朋友圈分享投票数量', '4');
INSERT INTO weixin_votepk_config VALUES ('402881e4486fff410148700657cd0006', '402881e8461795c201461795c2e90000', '快捷关注图文URL', 'http://mp.weixin.qq.com/s?__biz=MzA4MzE1OTYyMw==&mid=200524733&idx=1&sn=f4b685efa7457a8d7229757986a5a7ab#rd');
INSERT INTO weixin_votepk_config VALUES ('402881e44872e8f8014872ec0edb0001', '402881e8461795c201461795c2e90000', '活动规则URL', 'http://mp.weixin.qq.com/s?__biz=MzA4MzE1OTYyMw==&mid=200527497&idx=1&sn=4ac77cfbff7f6d044e001a3f8771880f#rd');
INSERT INTO weixin_votepk_config VALUES ('402881e44872edae014872f119b30001', '402881e8461795c201461795c2e90000', '活动介绍URL', 'http://mp.weixin.qq.com/s?__biz=MzA4MzE1OTYyMw==&mid=200527548&idx=1&sn=b31da87920598f8da7dcbc3bca78e827#rd');
INSERT INTO weixin_votepk_config VALUES ('402881e44872edae014872f2b9e50004', '402881e8461795c201461795c2e90000', '投票攻略URL', 'http://mp.weixin.qq.com/s?__biz=MzA4MzE1OTYyMw==&mid=200527552&idx=1&sn=f55620b7c0c3fb7817b3ef11b4effe94#rd');

-- ----------------------------
-- Table structure for `weixin_votepk_record`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_votepk_record`;
CREATE TABLE `weixin_votepk_record` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(50) default NULL,
  `HEADIMGURL` longtext,
  `NICKNAME` varchar(50) default NULL,
  `OPENID` varchar(50) default NULL,
  `SUBSCIBE` varchar(50) default NULL,
  `VOTEDATE` datetime default NULL,
  `VOTENICKNAME` varchar(50) default NULL,
  `VOTEOPENID` varchar(50) default NULL,
  `VOTETYPE` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_votepk_record
-- ----------------------------

-- ----------------------------
-- Table structure for `weixin_votepk_signuserinfo`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_votepk_signuserinfo`;
CREATE TABLE `weixin_votepk_signuserinfo` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(50) default NULL,
  `EMAIL` varchar(50) default NULL,
  `OPENID` varchar(200) default NULL,
  `QRCODEURL` longtext,
  `REALNAME` varchar(50) default NULL,
  `SCENEID` int(11) default NULL,
  `SIGNDATE` datetime default NULL,
  `TEL` varchar(50) default NULL,
  `VOTECOUNT` int(11) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_votepk_signuserinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `weixin_vote_option`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_vote_option`;
CREATE TABLE `weixin_vote_option` (
  `ID` varchar(36) NOT NULL,
  `ACCOUNTID` varchar(50) default NULL,
  `VOTE_COUNT` int(11) default NULL,
  `SCALE` double default NULL,
  `VOTE_OPTION_TITLE` varchar(50) default NULL,
  `VOTE_ID` varchar(36) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_4avf3c7onqp8cjg49phgu9smg` (`VOTE_ID`),
  CONSTRAINT `weixin_vote_option_ibfk_1` FOREIGN KEY (`VOTE_ID`) REFERENCES `weixin_vote` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_vote_option
-- ----------------------------
INSERT INTO weixin_vote_option VALUES ('402880e648152c3a01481537e6ba000e', '402881e8461795c201461795c2e90000', '3', '0.75', '苹果', '402880e648152c3a01481537e6b6000d');
INSERT INTO weixin_vote_option VALUES ('402880e648152c3a01481537e6bd000f', '402881e8461795c201461795c2e90000', '1', '0.33', '桃子', '402880e648152c3a01481537e6b6000d');
INSERT INTO weixin_vote_option VALUES ('402880e648152c3a01481537e6c00010', '402881e8461795c201461795c2e90000', '0', '0', '栗子', '402880e648152c3a01481537e6b6000d');

-- ----------------------------
-- Table structure for `weixin_vote_record`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_vote_record`;
CREATE TABLE `weixin_vote_record` (
  `id` varchar(255) NOT NULL,
  `accountid` varchar(50) default NULL,
  `openid` varchar(50) default NULL,
  `optionid` varchar(50) default NULL,
  `userid` varchar(50) default NULL,
  `voteid` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_vote_record
-- ----------------------------
INSERT INTO weixin_vote_record VALUES ('402880e648152c3a014815381b9c0012', '402881e8461795c201461795c2e90000', '', '402880e648152c3a01481537e6ba000e', '4028d881436d514601436d5215ac0043', '402880e648152c3a01481537e6b6000d');
INSERT INTO weixin_vote_record VALUES ('f7a8a3a9487816f8014878221213005c', '402881e8461795c201461795c2e90000', 'oGCDRjiIBtNQApPs1GY9kF3xIpgs', '402880e648152c3a01481537e6ba000e', 'f7a8a3a9487816f80148782154be0057', '402880e648152c3a01481537e6b6000d');
INSERT INTO weixin_vote_record VALUES ('f7a8a3a9487816f80148786fc36b0143', '402881e8461795c201461795c2e90000', 'oGCDRjrgOW4Lf0aJapxmXkLDzsXE', '402880e648152c3a01481537e6bd000f', 'f7a8a3a9487816f80148786f49a7013f', '402880e648152c3a01481537e6b6000d');
INSERT INTO weixin_vote_record VALUES ('f7a8a3a9487816f80148788b9752015f', '402881e8461795c201461795c2e90000', 'oGCDRjuLfYaYMGTpJJIUlOAw3ZzY', '402880e648152c3a01481537e6ba000e', 'f7a8a3a9487816f80148788795320150', '402880e648152c3a01481537e6b6000d');

-- ----------------------------
-- Table structure for `weixin_wall`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_wall`;
CREATE TABLE `weixin_wall` (
  `id` varchar(36) NOT NULL default '',
  `name` varchar(200) default NULL,
  `keyword` varchar(50) default NULL,
  `logo` varchar(500) default NULL,
  `qr_code` varchar(500) default NULL,
  `createtime` date default NULL,
  `starttime` date default NULL,
  `endtime` date default NULL,
  `type` char(1) default NULL,
  `timer` int(10) default NULL,
  `accountid` varchar(36) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_wall
-- ----------------------------

-- ----------------------------
-- Table structure for `weixin_wall_message`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_wall_message`;
CREATE TABLE `weixin_wall_message` (
  `id` varchar(36) NOT NULL default '',
  `openid` varchar(200) default NULL,
  `accountid` varchar(36) default NULL,
  `content` varchar(1000) default NULL,
  `nickname` varchar(200) default NULL,
  `sex` char(1) default NULL,
  `headimgurl` varchar(1000) default NULL,
  `createtime` datetime default NULL,
  `userid` varchar(36) default NULL,
  `status` varchar(2) default NULL,
  `wallid` varchar(36) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_wall_message
-- ----------------------------

-- ----------------------------
-- Table structure for `wx_huodong`
-- ----------------------------
DROP TABLE IF EXISTS `wx_huodong`;
CREATE TABLE `wx_huodong` (
  `id` varchar(36) NOT NULL,
  `create_name` varchar(50) default NULL COMMENT '创建人名称',
  `create_date` datetime default NULL COMMENT '创建日期',
  `update_name` varchar(50) default NULL COMMENT '修改人名称',
  `update_date` datetime default NULL COMMENT '修改日期',
  `hd_caption` varchar(1000) default NULL,
  `hd_name` varchar(100) default NULL COMMENT '活动名称',
  `hd_status` int(11) default NULL COMMENT '活动状态',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_huodong
-- ----------------------------
INSERT INTO wx_huodong VALUES ('40288088486e568501486e5a012b0002', '', null, 'admin', '2014-09-14 09:53:03', '活esfrsadfr', '活动1', '1');
INSERT INTO wx_huodong VALUES ('40288088486e568501486e5a01630003', '', null, 'admin', '2014-09-14 09:53:09', '活动说明', '活动2', '1');

-- ----------------------------
-- Table structure for `wx_zhongjiang`
-- ----------------------------
DROP TABLE IF EXISTS `wx_zhongjiang`;
CREATE TABLE `wx_zhongjiang` (
  `id` varchar(36) NOT NULL,
  `create_name` varchar(50) default NULL COMMENT '创建人名称',
  `create_date` datetime default NULL COMMENT '创建日期',
  `update_name` varchar(50) default NULL COMMENT '修改人名称',
  `update_date` datetime default NULL COMMENT '修改日期',
  `platform_code` int(11) default NULL COMMENT '社区平台',
  `user_account` varchar(32) default NULL COMMENT '平台账号',
  `huoddong_id` varchar(32) default NULL COMMENT '活动ID',
  `jp_name` varchar(100) default NULL COMMENT '奖品名称',
  `jp_code` varchar(100) default NULL COMMENT '奖品代码',
  `jp_level` int(11) default NULL COMMENT '奖品级别',
  `jp_flag` int(11) default NULL COMMENT '兑奖状态',
  `user_anme` varchar(50) default NULL COMMENT '兑奖人姓名',
  `user_telphone` varchar(100) default NULL COMMENT '联系方式',
  `user_address` longtext COMMENT '收件地址',
  `content` longtext COMMENT '备注',
  `idcard_a_file` longtext COMMENT '身份证正面',
  `idcard_b_file` longtext COMMENT '身份证反面',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wx_zhongjiang
-- ----------------------------
INSERT INTO wx_zhongjiang VALUES ('402881f34872fd6901487300536d0006', 'admin', '2014-09-14 15:11:14', null, null, '1', 'zhangsan', '40288088486e568501486e5a012b0002', '苹果手机', 'A001', '0', '0', null, null, null, null, null, null);
INSERT INTO wx_zhongjiang VALUES ('402881f34872fd690148730054d10007', 'admin', '2014-09-14 15:11:14', null, null, '2', 'lisi', '40288088486e568501486e5a01630003', '苹果笔记本', 'A002', '1', '0', null, null, null, null, null, null);
INSERT INTO wx_zhongjiang VALUES ('402881f34872fd690148730054fb0008', 'admin', '2014-09-14 15:11:14', 'admin', '2014-09-14 15:13:26', '4', 'scott', '40288088486e568501486e5a01630003', '苹果笔记本', 'A003', '1', '1', '张代浩', '13426432920', '北京天通苑天通南阳', '平谷手机', 'upload\\zhongjiang\\402881f34873025601487302567d0000.jpg', 'upload\\zhongjiang\\402881f3487302560148730256800001.gif');
