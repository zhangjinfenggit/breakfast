/*
Navicat MySQL Data Transfer

Source Server         : 59.45.169.9
Source Server Version : 50550
Source Host           : 59.45.169.9:3306
Source Database       : breakfast

Target Server Type    : MYSQL
Target Server Version : 50550
File Encoding         : 65001

Date: 2017-12-04 19:45:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bf_bank
-- ----------------------------
DROP TABLE IF EXISTS `bf_bank`;
CREATE TABLE `bf_bank` (
  `id` tinyint(12) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `bank_name` varchar(64) NOT NULL DEFAULT '' COMMENT '银行名称',
  `bank_code` varchar(64) NOT NULL DEFAULT '' COMMENT '银行编码',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `remark` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_bank
-- ----------------------------
INSERT INTO `bf_bank` VALUES ('1', '中国银行', 'BOC', '2017-11-17 22:02:46', '2017-11-17 22:02:04', null);
INSERT INTO `bf_bank` VALUES ('2', '中国农业银行', 'ABC', '2017-11-17 22:02:46', '2017-11-17 22:02:04', null);
INSERT INTO `bf_bank` VALUES ('3', '北京银行', 'BCCB', '2017-11-17 22:02:46', '2017-11-17 22:02:04', null);
INSERT INTO `bf_bank` VALUES ('4', '北京农村商业银行', 'BJRCB', '2017-11-17 22:02:46', '2017-11-17 22:02:05', null);
INSERT INTO `bf_bank` VALUES ('5', '上海银行', 'BOS', '2017-11-17 22:02:46', '2017-11-17 22:02:05', null);
INSERT INTO `bf_bank` VALUES ('6', '渤海银行', 'CBHB', '2017-11-17 22:02:46', '2017-11-17 22:02:05', null);
INSERT INTO `bf_bank` VALUES ('7', '中国建设银行', 'CCB', '2017-11-17 22:02:46', '2017-11-17 22:02:05', null);
INSERT INTO `bf_bank` VALUES ('8', '重庆三峡银行', 'CCQTGB', '2017-11-17 22:02:46', '2017-11-17 22:02:05', null);
INSERT INTO `bf_bank` VALUES ('9', '中国光大银行', 'CEB', '2017-11-17 22:02:46', '2017-11-17 22:02:05', null);
INSERT INTO `bf_bank` VALUES ('10', '兴业银行', 'CIB', '2017-11-17 22:02:46', '2017-11-17 22:02:06', null);
INSERT INTO `bf_bank` VALUES ('11', '中信银行', 'CITIC', '2017-11-17 22:02:46', '2017-11-17 22:02:06', null);
INSERT INTO `bf_bank` VALUES ('12', '城市商业银行', 'CITYBANK', '2017-11-17 22:02:46', '2017-11-17 22:02:06', null);
INSERT INTO `bf_bank` VALUES ('13', '招商银行', 'CMB', '2017-11-17 22:02:46', '2017-11-17 22:02:06', null);
INSERT INTO `bf_bank` VALUES ('14', '中国民生银行', 'CMBC', '2017-11-17 22:02:46', '2017-11-17 22:02:07', null);
INSERT INTO `bf_bank` VALUES ('15', '交通银行', 'COMM', '2017-11-17 22:02:46', '2017-11-23 23:35:07', null);
INSERT INTO `bf_bank` VALUES ('16', '村镇银行', 'COUNTYBANK', '2017-11-17 22:02:46', '2017-11-17 22:02:07', null);
INSERT INTO `bf_bank` VALUES ('17', '长沙银行', 'CSCB', '2017-11-17 22:02:46', '2017-11-17 22:02:08', null);
INSERT INTO `bf_bank` VALUES ('18', '集友银行', 'CYB', '2017-11-17 22:02:46', '2017-11-17 22:02:09', null);
INSERT INTO `bf_bank` VALUES ('19', '浙商银行', 'CZB', '2017-11-17 22:02:46', '2017-11-17 22:02:09', null);
INSERT INTO `bf_bank` VALUES ('20', '浙江稠州商业银行', 'CZCB', '2017-11-17 22:02:46', '2017-11-17 22:02:09', null);
INSERT INTO `bf_bank` VALUES ('21', '恒丰银行', 'EGBANK', '2017-11-17 22:02:46', '2017-11-17 22:02:09', null);
INSERT INTO `bf_bank` VALUES ('22', '广发银行', 'GDB', '2017-11-17 22:02:46', '2017-11-17 22:02:10', null);
INSERT INTO `bf_bank` VALUES ('23', '广州市农信社', 'GNXS', '2017-11-17 22:02:46', '2017-11-17 22:02:10', null);
INSERT INTO `bf_bank` VALUES ('24', '广州市商业银行', 'GZCB', '2017-11-17 22:02:46', '2017-11-17 22:02:10', null);
INSERT INTO `bf_bank` VALUES ('25', '杭州银行', 'HCCB', '2017-11-17 22:02:46', '2017-11-17 22:02:10', null);
INSERT INTO `bf_bank` VALUES ('26', '汉口银行', 'HKBCHINA', '2017-11-17 22:02:46', '2017-11-17 22:02:10', null);
INSERT INTO `bf_bank` VALUES ('27', '东亚银行', 'HKBEA', '2017-11-17 22:02:46', '2017-11-17 22:02:11', null);
INSERT INTO `bf_bank` VALUES ('28', '湖南农信社', 'HNNXS', '2017-11-17 22:02:46', '2017-11-17 22:02:11', null);
INSERT INTO `bf_bank` VALUES ('29', '徽商银行', 'HSBANK', '2017-11-17 22:02:46', '2017-11-17 22:02:11', null);
INSERT INTO `bf_bank` VALUES ('30', '华夏银行', 'HXB', '2017-11-17 22:02:46', '2017-11-17 22:02:12', null);
INSERT INTO `bf_bank` VALUES ('31', '中国工商银行', 'ICBC', '2017-11-17 22:02:46', '2017-11-17 22:02:12', null);
INSERT INTO `bf_bank` VALUES ('32', '宁波银行', 'NBCB', '2017-11-17 22:02:46', '2017-11-17 22:02:12', null);
INSERT INTO `bf_bank` VALUES ('33', '南京银行', 'NJCB', '2017-11-17 22:02:46', '2017-11-17 22:02:12', null);
INSERT INTO `bf_bank` VALUES ('34', '中国邮政储蓄银行', 'PSBC', '2017-11-17 22:02:46', '2017-11-17 22:02:12', null);
INSERT INTO `bf_bank` VALUES ('35', '农村商业银行', 'RCB', '2017-11-17 22:02:46', '2017-11-17 22:02:13', null);
INSERT INTO `bf_bank` VALUES ('36', '农村信用合作社', 'RCC', '2017-11-17 22:02:46', '2017-11-17 22:02:13', null);
INSERT INTO `bf_bank` VALUES ('37', '渣打银行', 'SCB', '2017-11-17 22:02:46', '2017-11-17 22:02:13', null);
INSERT INTO `bf_bank` VALUES ('38', '深圳发展银行', 'SDB', '2017-11-17 22:02:46', '2017-11-17 22:02:13', null);
INSERT INTO `bf_bank` VALUES ('39', '顺德农信社', 'SDE', '2017-11-17 22:02:46', '2017-11-17 22:02:14', null);
INSERT INTO `bf_bank` VALUES ('40', '上海农村商业银行', 'SHRCB', '2017-11-17 22:02:46', '2017-11-17 22:02:14', null);
INSERT INTO `bf_bank` VALUES ('41', '深圳农村商业银行', 'SNXS', '2017-11-17 22:02:46', '2017-11-17 22:02:14', null);
INSERT INTO `bf_bank` VALUES ('42', '上海浦东发展银行', 'SPDB', '2017-11-17 22:02:46', '2017-11-17 22:02:14', null);
INSERT INTO `bf_bank` VALUES ('43', '晋城市商业银行', 'SXJS', '2017-11-17 22:02:46', '2017-11-17 22:02:14', null);
INSERT INTO `bf_bank` VALUES ('44', '平安银行', 'SZPAB', '2017-11-17 22:02:46', '2017-11-17 22:02:15', null);
INSERT INTO `bf_bank` VALUES ('45', '城市信用合作社', 'UCC', '2017-11-17 22:02:46', '2017-11-17 22:02:15', null);
INSERT INTO `bf_bank` VALUES ('46', '农村合作银行', 'URCB', '2017-11-17 22:02:46', '2017-11-17 22:02:15', null);
INSERT INTO `bf_bank` VALUES ('47', '温州市商业银行', 'WZCB', '2017-11-17 22:02:46', '2017-11-17 22:02:15', null);
INSERT INTO `bf_bank` VALUES ('48', '尧都信用合作联社', 'YDXH', '2017-11-17 22:02:46', '2017-11-17 22:02:15', null);
INSERT INTO `bf_bank` VALUES ('49', '珠海市农村信用合作社', 'ZHNX', '2017-11-17 22:02:46', '2017-11-17 22:02:16', null);

-- ----------------------------
-- Table structure for bf_business_record_day
-- ----------------------------
DROP TABLE IF EXISTS `bf_business_record_day`;
CREATE TABLE `bf_business_record_day` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `batch_no` varchar(64) DEFAULT '' COMMENT '订单流水号',
  `transfer_time` datetime DEFAULT NULL COMMENT '转账时间',
  `arrival_time` datetime DEFAULT NULL COMMENT '到账时间',
  `shop_id` bigint(20) DEFAULT NULL COMMENT '店铺id',
  `shop_name` varchar(32) DEFAULT NULL COMMENT '收款店铺名',
  `transfer_money` decimal(10,1) DEFAULT '0.0' COMMENT '转账金额',
  `transfer_day` date DEFAULT NULL COMMENT '转账日期(年-月-日）',
  `card_name` varchar(32) DEFAULT NULL COMMENT '收款人',
  `card_no` varchar(32) DEFAULT NULL COMMENT '收款卡号',
  `phone` char(11) DEFAULT NULL COMMENT '手机号',
  `status` char(1) DEFAULT '3' COMMENT '状态：1、成功，2、失败，3、未打款，4、打款中',
  `operater` varchar(32) DEFAULT NULL COMMENT '操作人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(128) DEFAULT NULL COMMENT '备注',
  `orders` varchar(5000) DEFAULT NULL COMMENT '订单编号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_batch_no` (`batch_no`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8 COMMENT='账务详情表--定时任务表';

-- ----------------------------
-- Records of bf_business_record_day
-- ----------------------------
INSERT INTO `bf_business_record_day` VALUES ('108', '20171129170600A25260711', '2017-11-29 17:06:00', null, '25', '芳芳早餐', '0.7', '2017-11-29', '逯登芳', '6217004400008243760', '15003656493', '1', null, '2017-11-29 17:06:00', '2017-11-29 20:57:30', '统计商家每天对账流水', 'N20171129113230_140167|');
INSERT INTO `bf_business_record_day` VALUES ('128', '20171130000500A274647546', '2017-11-30 00:05:00', null, '25', '芳芳早餐', '2.2', '2017-11-30', '逯登芳', '6217004400008243760', '15003656493', '1', null, '2017-11-30 00:05:00', '2017-11-30 00:05:00', '统计商家每天对账流水', 'N20171129142931_577754|');
INSERT INTO `bf_business_record_day` VALUES ('129', '20171130000500A665822198', '2017-11-30 00:05:00', null, '25', '芳芳早餐', '2.2', '2017-11-30', '逯登芳', '6217004400008243760', '15003656493', '1', null, '2017-11-30 00:05:00', '2017-11-30 00:05:01', '统计商家每天对账流水', 'N20171129142931_577754|');
INSERT INTO `bf_business_record_day` VALUES ('130', '20171202000500A967734391', '2017-12-02 00:05:00', null, '25', '芳芳早餐', '0.7', '2017-12-02', '逯登芳', '6217004400008243760', '15003656493', '2', null, '2017-12-02 00:05:00', '2017-12-02 00:05:00', '交易失败', 'N20171201174204_284855|');

-- ----------------------------
-- Table structure for bf_city
-- ----------------------------
DROP TABLE IF EXISTS `bf_city`;
CREATE TABLE `bf_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `city_name` varchar(64) NOT NULL DEFAULT '' COMMENT '城市名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='城市表';

-- ----------------------------
-- Records of bf_city
-- ----------------------------

-- ----------------------------
-- Table structure for bf_commission
-- ----------------------------
DROP TABLE IF EXISTS `bf_commission`;
CREATE TABLE `bf_commission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `extract_money` decimal(10,1) NOT NULL DEFAULT '0.0' COMMENT '抽成金额',
  `section_left` decimal(10,1) NOT NULL DEFAULT '0.0' COMMENT '区间大于',
  `section_right` decimal(10,1) NOT NULL DEFAULT '0.0' COMMENT '小于等于',
  `order_num` int(10) DEFAULT NULL COMMENT '排序sort',
  `operater` varchar(32) DEFAULT NULL COMMENT '操作人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(128) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='抽成规则表';

-- ----------------------------
-- Records of bf_commission
-- ----------------------------
INSERT INTO `bf_commission` VALUES ('1', '0.3', '0.0', '5.0', '1', 'admin', '2017-11-23 15:04:04', '2017-11-23 15:04:04', null);
INSERT INTO `bf_commission` VALUES ('2', '0.4', '5.0', '10.0', '2', 'admin', '2017-11-23 15:04:04', '2017-11-23 15:04:04', null);
INSERT INTO `bf_commission` VALUES ('3', '0.6', '10.0', '15.0', '3', 'admin', '2017-11-23 15:04:04', '2017-11-23 15:04:04', null);
INSERT INTO `bf_commission` VALUES ('4', '0.8', '15.0', '20.0', '4', 'admin', '2017-11-23 15:04:04', '2017-11-23 15:04:04', null);
INSERT INTO `bf_commission` VALUES ('5', '1.2', '20.0', '25.0', '5', 'admin', '2017-11-23 15:04:04', '2017-11-23 15:04:04', null);
INSERT INTO `bf_commission` VALUES ('6', '1.5', '25.0', '30.0', '6', 'admin', '2017-11-23 15:04:04', '2017-11-23 15:04:04', null);
INSERT INTO `bf_commission` VALUES ('7', '1.8', '30.0', '35.0', '7', 'admin', '2017-11-23 15:04:04', '2017-11-23 15:04:04', null);
INSERT INTO `bf_commission` VALUES ('8', '2.2', '35.0', '40.0', '8', 'admin', '2017-11-23 15:04:04', '2017-11-23 15:04:04', null);
INSERT INTO `bf_commission` VALUES ('9', '2.6', '40.0', '45.0', '9', 'admin', '2017-11-23 15:04:04', '2017-11-23 15:04:04', null);
INSERT INTO `bf_commission` VALUES ('10', '3.0', '45.0', '50.0', '10', 'admin', '2017-11-23 15:04:04', '2017-11-23 15:04:04', null);

-- ----------------------------
-- Table structure for bf_commission_rule
-- ----------------------------
DROP TABLE IF EXISTS `bf_commission_rule`;
CREATE TABLE `bf_commission_rule` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `rule_key` varchar(32) DEFAULT NULL COMMENT '规则名（当key为extract_default是默认抽成规则）',
  `rule_value` decimal(10,1) DEFAULT '0.0' COMMENT '默认抽成金额',
  `operater` varchar(32) DEFAULT NULL COMMENT '操作人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(128) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='抽成默认规则表';

-- ----------------------------
-- Records of bf_commission_rule
-- ----------------------------
INSERT INTO `bf_commission_rule` VALUES ('1', 'extract_default', '0.0', 'admin', '2017-11-23 15:04:04', '2017-10-12 13:12:19', null);

-- ----------------------------
-- Table structure for bf_coupon
-- ----------------------------
DROP TABLE IF EXISTS `bf_coupon`;
CREATE TABLE `bf_coupon` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `coupon_name` varchar(32) DEFAULT NULL COMMENT '优惠券名',
  `coupon_money` decimal(10,1) DEFAULT '0.0' COMMENT '优惠券金额',
  `overdue_time` date DEFAULT NULL COMMENT '优惠券到期时间',
  `type` char(1) DEFAULT NULL COMMENT '优惠券类型：1、申请账号时发放，2、支付完成时发放，3、退款时发放，4、向推荐人发放，5、向指定用户发放',
  `coupon_message` varchar(128) DEFAULT NULL COMMENT '优惠券说明',
  `coupon_status` char(1) DEFAULT '1' COMMENT '状态分为：1、未使用，2、已使用\r\n            ',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `phone` char(11) DEFAULT NULL COMMENT '用户手机号',
  `coupon_produce_id` bigint(20) DEFAULT NULL COMMENT '优惠券id',
  `coupon_code` varchar(32) DEFAULT NULL COMMENT '优惠券码信息',
  `operater` varchar(32) DEFAULT NULL COMMENT '操作人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(128) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8 COMMENT='优惠券信息表';

-- ----------------------------
-- Records of bf_coupon
-- ----------------------------
INSERT INTO `bf_coupon` VALUES ('192', '小芳', '1.0', '2017-11-30', '2', '', '2', '35', '18997336712', '14', '20171128202748444', null, '2017-11-28 20:27:48', '2017-11-28 20:28:41', null);
INSERT INTO `bf_coupon` VALUES ('193', '小芳', '1.0', '2017-11-30', '2', '', '1', '35', '18997336712', '14', '20171128202847400', null, '2017-11-28 20:28:47', '2017-11-28 20:28:47', null);
INSERT INTO `bf_coupon` VALUES ('194', '小芳', '1.0', '2017-11-30', '2', '', '1', '34', '13897280416', '14', '20171128203542970', null, '2017-11-28 20:35:42', '2017-11-28 20:35:42', null);
INSERT INTO `bf_coupon` VALUES ('195', '申请账号时发放', '5.0', '2017-12-12', '1', '新人注册，可获得优惠券', '1', '39', '15303281650', '15', '20171129105711741', null, '2017-11-29 10:57:11', '2017-11-29 10:57:11', null);
INSERT INTO `bf_coupon` VALUES ('196', '小芳', '1.0', '2017-11-30', '2', '', '2', '39', '15303281650', '14', '20171129105811979', null, '2017-11-29 10:58:11', '2017-11-29 13:16:29', null);
INSERT INTO `bf_coupon` VALUES ('197', '申请账号时发放', '5.0', '2017-12-12', '1', '新人注册，可获得优惠券', '1', '40', '18830358180', '15', '20171129110123842', null, '2017-11-29 11:01:23', '2017-11-29 11:01:23', null);
INSERT INTO `bf_coupon` VALUES ('198', '小芳', '1.0', '2017-11-30', '2', '', '2', '39', '15303281650', '14', '20171129110604515', null, '2017-11-29 11:06:04', '2017-11-29 16:21:59', null);
INSERT INTO `bf_coupon` VALUES ('199', '小芳', '1.0', '2017-11-30', '2', '', '1', '39', '15303281650', '14', '20171129110727664', null, '2017-11-29 11:07:27', '2017-11-29 11:07:27', null);
INSERT INTO `bf_coupon` VALUES ('200', '申请账号时发放', '5.0', '2017-12-12', '1', '新人注册，可获得优惠券', '1', '41', '13552578263', '15', '20171129112804972', null, '2017-11-29 11:28:04', '2017-11-29 11:28:04', null);
INSERT INTO `bf_coupon` VALUES ('201', '小芳', '1.0', '2017-11-30', '2', '', '1', '36', '15810987808', '14', '20171129113243208', null, '2017-11-29 11:32:43', '2017-11-29 11:32:43', null);
INSERT INTO `bf_coupon` VALUES ('202', '申请账号时发放', '5.0', '2017-12-12', '1', '新人注册，可获得优惠券', '1', '42', '15003656493', '15', '20171129135901983', null, '2017-11-29 13:59:01', '2017-11-29 13:59:02', null);
INSERT INTO `bf_coupon` VALUES ('203', '申请账号时发放LDF', '1.0', '2017-11-30', '1', '', '1', '43', '15695389702', '21', '20171129140116259', null, '2017-11-29 14:01:16', '2017-11-29 14:01:16', null);
INSERT INTO `bf_coupon` VALUES ('204', '支付完成时发放ldf', '1.0', '2017-11-30', '2', '', '2', '46', '18297135748', '22', '20171129140850085', null, '2017-11-29 14:08:50', '2017-11-29 14:29:31', null);
INSERT INTO `bf_coupon` VALUES ('205', '佳宜支付完成', '1.0', '2017-12-01', '2', '', '2', '46', '18297135748', '23', '20171130113433669', null, '2017-11-30 11:34:33', '2017-11-30 11:34:43', null);
INSERT INTO `bf_coupon` VALUES ('206', '申请账号时发放', '5.0', '2017-12-12', '1', '新人注册，可获得优惠券', '1', '53', '18801171093', '15', '20171201100143219', null, '2017-12-01 10:01:43', '2017-12-01 10:01:43', null);
INSERT INTO `bf_coupon` VALUES ('207', '申请账号时发放', '5.0', '2017-12-12', '1', '新人注册，可获得优惠券', '1', '54', '18500162311', '15', '20171201143922506', null, '2017-12-01 14:39:22', '2017-12-01 14:39:22', null);

-- ----------------------------
-- Table structure for bf_coupon_callback_fail
-- ----------------------------
DROP TABLE IF EXISTS `bf_coupon_callback_fail`;
CREATE TABLE `bf_coupon_callback_fail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `coupon_id` bigint(20) DEFAULT NULL COMMENT '优惠券id',
  `coupon_name` varchar(32) DEFAULT NULL COMMENT '优惠券名称',
  `coupon_money` decimal(10,1) DEFAULT NULL COMMENT '优惠券金额',
  `coupon_code` varchar(32) DEFAULT NULL COMMENT '优惠码',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `phone` varchar(11) DEFAULT NULL COMMENT '用户手机号',
  `callback_fail_msg` varchar(255) DEFAULT NULL COMMENT '回调失败信息',
  `managed_flag` int(2) DEFAULT NULL COMMENT '是否已经处理。0-未处理  1-已处理',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='优惠券消费回调失败记录表';

-- ----------------------------
-- Records of bf_coupon_callback_fail
-- ----------------------------

-- ----------------------------
-- Table structure for bf_coupon_produce
-- ----------------------------
DROP TABLE IF EXISTS `bf_coupon_produce`;
CREATE TABLE `bf_coupon_produce` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `produce_name` varchar(32) DEFAULT NULL COMMENT '优惠券名',
  `produce_money` decimal(10,1) DEFAULT '0.0' COMMENT '优惠券金额',
  `produce_amount` int(20) DEFAULT '0' COMMENT '优惠券发放数量',
  `issued_amount` int(20) DEFAULT '0' COMMENT '已发放数量',
  `use_number` int(20) DEFAULT '0' COMMENT '优惠券已使用数量',
  `overdue_time` date DEFAULT NULL COMMENT '优惠券到期时间',
  `type` char(1) DEFAULT NULL COMMENT '优惠券类型：1、申请账号时发放，2、支付完成时发放，3、退款时发放，4、向推荐人发放，5、向指定用户发放',
  `coupon_messge` varchar(128) DEFAULT NULL COMMENT '优惠券说明',
  `produce_status` char(1) DEFAULT NULL COMMENT '状态分为：1、正在发放，2、已发完，3、已过期，4、已停止\r\n       ',
  `operater` varchar(32) DEFAULT NULL COMMENT '操作人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(128) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `idx_type` (`type`) USING BTREE COMMENT '优惠券类型索引'
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='优惠券发放表';

-- ----------------------------
-- Records of bf_coupon_produce
-- ----------------------------
INSERT INTO `bf_coupon_produce` VALUES ('14', '小芳', '1.0', '3', '7', '3', '2017-11-30', '2', '', '1', 'admin', '2017-11-28 20:27:26', '2017-11-29 11:32:43', null);
INSERT INTO `bf_coupon_produce` VALUES ('15', '申请账号时发放', '5.0', '96', '6', '0', '2017-12-12', '1', '新人注册，可获得优惠券', '1', 'admin', '2017-11-29 10:44:59', '2017-12-01 14:39:22', null);
INSERT INTO `bf_coupon_produce` VALUES ('16', '支付完成时发放', '0.9', '100', '0', '0', '2017-12-12', '2', '支付完成时发放', '4', 'admin', '2017-11-29 10:45:56', '2017-11-29 10:45:56', null);
INSERT INTO `bf_coupon_produce` VALUES ('17', '退款时发放', '1.0', '100', '0', '0', '2017-12-12', '3', '退款时发放', '1', 'admin', '2017-11-29 10:46:33', '2017-11-29 10:46:33', null);
INSERT INTO `bf_coupon_produce` VALUES ('18', '向推荐人发放', '5.0', '99', '1', '0', '2017-12-12', '4', '向推荐人发放', '1', 'admin', '2017-11-29 10:47:17', '2017-11-29 10:57:11', null);
INSERT INTO `bf_coupon_produce` VALUES ('19', '申请账号时发放', '2.0', '100', '0', '0', '2017-12-12', '1', '申请账号时发放2元券', '4', 'admin', '2017-11-29 10:51:52', '2017-11-29 10:51:52', null);
INSERT INTO `bf_coupon_produce` VALUES ('20', '支付完成时发放测试数量', '1.0', '1', '0', '0', '2017-12-12', '2', '支付完成时发放测试数量', '4', 'admin', '2017-11-29 12:51:22', '2017-11-29 12:51:22', null);
INSERT INTO `bf_coupon_produce` VALUES ('21', '申请账号时发放LDF', '1.0', '1', '1', '0', '2017-11-30', '1', '', '2', 'admin', '2017-11-29 13:57:25', '2017-11-29 14:06:19', null);
INSERT INTO `bf_coupon_produce` VALUES ('22', '支付完成时发放ldf', '1.0', '1', '1', '1', '2017-11-30', '2', '', '2', 'admin', '2017-11-29 14:08:32', '2017-11-29 14:09:08', null);
INSERT INTO `bf_coupon_produce` VALUES ('23', '佳宜支付完成', '1.0', '1', '1', '1', '2017-12-01', '2', '', '2', 'admin', '2017-11-30 11:33:17', '2017-11-30 11:34:50', null);

-- ----------------------------
-- Table structure for bf_dict
-- ----------------------------
DROP TABLE IF EXISTS `bf_dict`;
CREATE TABLE `bf_dict` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_id` bigint(20) DEFAULT NULL COMMENT '字典类型',
  `dict_name` varchar(20) DEFAULT NULL COMMENT '字典名称',
  `dict_value` varchar(20) DEFAULT NULL COMMENT '字典值',
  `dict_desc` varchar(250) DEFAULT NULL COMMENT '字典描述',
  `sort_num` bigint(20) DEFAULT NULL COMMENT '排序号',
  `img_path` varchar(500) DEFAULT NULL COMMENT '图片路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of bf_dict
-- ----------------------------
INSERT INTO `bf_dict` VALUES ('3', '4', '启用', '1', '启用', null, null);
INSERT INTO `bf_dict` VALUES ('5', '4', '禁用', '0', '禁用', null, null);
INSERT INTO `bf_dict` VALUES ('6', '6', '男', '1', '男', null, null);
INSERT INTO `bf_dict` VALUES ('7', '6', '女', '0', '女', null, null);
INSERT INTO `bf_dict` VALUES ('18', '9', '父亲', '0', '父亲', null, null);
INSERT INTO `bf_dict` VALUES ('19', '9', '母亲', '1', '母亲', null, null);
INSERT INTO `bf_dict` VALUES ('20', '9', '爷爷', '2', '爷爷', null, null);
INSERT INTO `bf_dict` VALUES ('21', '9', '奶奶', '3', '奶奶', null, null);
INSERT INTO `bf_dict` VALUES ('22', '9', '外公', '4', '外公', null, null);
INSERT INTO `bf_dict` VALUES ('23', '9', '外婆', '5', '外婆', null, null);
INSERT INTO `bf_dict` VALUES ('24', '9', '其他', '6', '其他', null, null);
INSERT INTO `bf_dict` VALUES ('26', '10', '是', '1', '乘车', null, null);
INSERT INTO `bf_dict` VALUES ('27', '10', '否', '0', '未乘车', null, null);
INSERT INTO `bf_dict` VALUES ('28', '10', '所有', '-1', '所有', null, null);
INSERT INTO `bf_dict` VALUES ('29', '11', '一年级', '0', '一年级', null, null);
INSERT INTO `bf_dict` VALUES ('30', '11', '二年级', '1', '二年级', null, null);
INSERT INTO `bf_dict` VALUES ('31', '11', '三年级', '2', '三年级', null, null);
INSERT INTO `bf_dict` VALUES ('32', '11', '四年级', '3', '四年级', null, null);
INSERT INTO `bf_dict` VALUES ('33', '11', '五年级', '4', '五年级', null, null);
INSERT INTO `bf_dict` VALUES ('34', '12', '首页', '0', '首页', null, null);
INSERT INTO `bf_dict` VALUES ('35', '12', '其他', '1', '其他', null, null);
INSERT INTO `bf_dict` VALUES ('36', '13', '关于我们', '0', '关于我们', null, null);
INSERT INTO `bf_dict` VALUES ('37', '13', '使用协议', '1', '使用协议', null, null);
INSERT INTO `bf_dict` VALUES ('38', '13', '内部公告', '2', '内部公告', null, null);
INSERT INTO `bf_dict` VALUES ('39', '13', '学校公告', '3', '学校公告', null, null);
INSERT INTO `bf_dict` VALUES ('41', '14', '驾驶员', '0', '驾驶员', null, null);
INSERT INTO `bf_dict` VALUES ('42', '14', '随车照管员', '1', '随车照管员', null, null);
INSERT INTO `bf_dict` VALUES ('43', '14', '家长', '2', '家长', null, null);
INSERT INTO `bf_dict` VALUES ('44', '14', '学校管理员', '32', '学校管理员', null, null);
INSERT INTO `bf_dict` VALUES ('45', '15', '郑州站', '1', '郑州站', null, null);
INSERT INTO `bf_dict` VALUES ('46', '16', '禁用', '0', '设备禁用', null, null);
INSERT INTO `bf_dict` VALUES ('47', '16', '正常', '1', '设备正常', null, null);
INSERT INTO `bf_dict` VALUES ('48', '17', '未处理', '0', '未处理', null, null);
INSERT INTO `bf_dict` VALUES ('49', '17', '自行修复', '1', '自行修复', null, null);
INSERT INTO `bf_dict` VALUES ('55', '13', '公开公告', '4', '公开公告', null, null);
INSERT INTO `bf_dict` VALUES ('56', '17', '已维修', '2', '已维修', null, null);
INSERT INTO `bf_dict` VALUES ('57', '17', '已更换', '3', '已更换', null, null);
INSERT INTO `bf_dict` VALUES ('58', '11', '六年级', '5', '六年级', null, null);
INSERT INTO `bf_dict` VALUES ('59', '18', '超速', '0', '超速', null, null);
INSERT INTO `bf_dict` VALUES ('60', '18', '超员', '1', '超员', null, null);
INSERT INTO `bf_dict` VALUES ('61', '18', '跨区域行驶', '2', '跨区域行驶', null, null);
INSERT INTO `bf_dict` VALUES ('62', '18', '保险到期', '3', '保险到期', null, null);
INSERT INTO `bf_dict` VALUES ('63', '18', '维修保养', '4', '维修保养', null, null);
INSERT INTO `bf_dict` VALUES ('64', '19', '未刷', '0', '未刷卡', null, null);
INSERT INTO `bf_dict` VALUES ('65', '19', '刷卡', '1', '刷卡', null, null);
INSERT INTO `bf_dict` VALUES ('66', '19', '请假', '2', '请假未刷卡', null, null);
INSERT INTO `bf_dict` VALUES ('67', '19', '忘记带卡', '3', '忘带卡未刷卡', null, null);
INSERT INTO `bf_dict` VALUES ('68', '20', '不可以正常行驶', '0', '不可以正常行驶', null, null);
INSERT INTO `bf_dict` VALUES ('69', '20', '可以正常行驶', '1', '可以正常行驶', null, null);
INSERT INTO `bf_dict` VALUES ('70', '21', '合格', '0', '合格', null, null);
INSERT INTO `bf_dict` VALUES ('71', '21', '不合格', '1', '不合格', null, null);
INSERT INTO `bf_dict` VALUES ('72', '22', '是', '0', '乘校车', null, null);
INSERT INTO `bf_dict` VALUES ('73', '22', '否', '1', '不乘校车', null, null);
INSERT INTO `bf_dict` VALUES ('74', '23', '下学', '1', '下学', null, null);
INSERT INTO `bf_dict` VALUES ('75', '23', '上学', '0', '上学', null, null);
INSERT INTO `bf_dict` VALUES ('76', '24', '车辆', '0', '车辆', null, null);
INSERT INTO `bf_dict` VALUES ('77', '24', '道路', '1', '道路', null, null);
INSERT INTO `bf_dict` VALUES ('78', '24', '其它', '2', '其它', null, null);
INSERT INTO `bf_dict` VALUES ('79', '25', '待处理', '1', '待处理', null, null);
INSERT INTO `bf_dict` VALUES ('80', '25', '处理中', '2', '处理中', null, null);
INSERT INTO `bf_dict` VALUES ('81', '25', '已处理', '3', '已处理', null, null);
INSERT INTO `bf_dict` VALUES ('82', '26', '匿名', '0', '匿名', null, null);
INSERT INTO `bf_dict` VALUES ('83', '26', '实名', '1', '实名', null, null);
INSERT INTO `bf_dict` VALUES ('85', '8', '上车', '0', '上车', null, null);
INSERT INTO `bf_dict` VALUES ('86', '8', '下车', '1', '下车', null, null);
INSERT INTO `bf_dict` VALUES ('87', '8', '超速', '2', '超速', null, null);
INSERT INTO `bf_dict` VALUES ('88', '8', '超载', '3', '超载', null, null);
INSERT INTO `bf_dict` VALUES ('90', '28', '停', '2', '停', null, null);
INSERT INTO `bf_dict` VALUES ('91', '8', '安全', '4', '安全', null, null);
INSERT INTO `bf_dict` VALUES ('92', '14', ' 监管单位', '31', ' 监管单位', null, null);
INSERT INTO `bf_dict` VALUES ('93', '14', '运营单位', '33', '运营单位', null, null);
INSERT INTO `bf_dict` VALUES ('94', '14', '维修单位', '35', '维修单位', null, null);
INSERT INTO `bf_dict` VALUES ('95', '14', '保险单位', '36', '保险单位', null, null);
INSERT INTO `bf_dict` VALUES ('96', '30', '损坏', '0', '损坏', null, null);
INSERT INTO `bf_dict` VALUES ('97', '30', '正常', '1', '正常', null, null);
INSERT INTO `bf_dict` VALUES ('98', '31', '幼儿园', '0', '幼儿园', null, null);
INSERT INTO `bf_dict` VALUES ('99', '31', '小学', '1', '小学', null, null);
INSERT INTO `bf_dict` VALUES ('100', '31', '初中', '2', '初中', null, null);
INSERT INTO `bf_dict` VALUES ('101', '32', '小班', '0', '小班', null, null);
INSERT INTO `bf_dict` VALUES ('102', '32', '中班', '1', '中班', null, null);
INSERT INTO `bf_dict` VALUES ('103', '32', '大班', '2', '大班', null, null);
INSERT INTO `bf_dict` VALUES ('104', '33', '初一', '0', '初一', null, null);
INSERT INTO `bf_dict` VALUES ('105', '33', '初二', '1', '初二', null, null);
INSERT INTO `bf_dict` VALUES ('106', '33', '初三', '2', '初三', null, null);
INSERT INTO `bf_dict` VALUES ('107', '34', '日常保养', '0', '日常保养', null, null);
INSERT INTO `bf_dict` VALUES ('108', '34', '故障维修', '1', '故障维修', null, null);
INSERT INTO `bf_dict` VALUES ('109', '35', '未设置', '0', '未设置', null, null);
INSERT INTO `bf_dict` VALUES ('110', '35', '已设置', '1', '已设置', null, null);
INSERT INTO `bf_dict` VALUES ('111', '36', '成功', '1', '成功', null, null);
INSERT INTO `bf_dict` VALUES ('112', '36', '失败', '2', '失败', null, null);
INSERT INTO `bf_dict` VALUES ('113', '37', '正在发放', '1', '正在发放', null, null);
INSERT INTO `bf_dict` VALUES ('114', '37', '已发完', '2', '已发完', null, null);
INSERT INTO `bf_dict` VALUES ('115', '37', '已过期', '3', '已过期', null, null);
INSERT INTO `bf_dict` VALUES ('116', '37', '已停止', '4', '已停止', null, null);
INSERT INTO `bf_dict` VALUES ('117', '38', '售卖中', '1', '售卖中', null, null);
INSERT INTO `bf_dict` VALUES ('118', '38', '已售罄', '2', '已售罄', null, null);
INSERT INTO `bf_dict` VALUES ('119', '39', '未使用', '1', '未使用', null, null);
INSERT INTO `bf_dict` VALUES ('120', '39', '已使用', '2', '已使用', null, null);
INSERT INTO `bf_dict` VALUES ('121', '36', '未打款', '3', '未打款', null, null);
INSERT INTO `bf_dict` VALUES ('122', '36', '打款中', '4', '打款中', null, null);

-- ----------------------------
-- Table structure for bf_dicttype
-- ----------------------------
DROP TABLE IF EXISTS `bf_dicttype`;
CREATE TABLE `bf_dicttype` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `type_name` varchar(20) DEFAULT NULL COMMENT '名称',
  `type_desc` varchar(40) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

-- ----------------------------
-- Records of bf_dicttype
-- ----------------------------
INSERT INTO `bf_dicttype` VALUES ('4', 'status', '状态');
INSERT INTO `bf_dicttype` VALUES ('6', 'sex', '性别');
INSERT INTO `bf_dicttype` VALUES ('8', 'messageType', '消息类型');
INSERT INTO `bf_dicttype` VALUES ('27', 'area', '区域');
INSERT INTO `bf_dicttype` VALUES ('36', 'transferStatus', '转账状态');
INSERT INTO `bf_dicttype` VALUES ('37', 'produceStatus', '优惠券状态');
INSERT INTO `bf_dicttype` VALUES ('38', 'productStatus', '商品状态');
INSERT INTO `bf_dicttype` VALUES ('39', 'couponStatus', '用户优惠券状态');

-- ----------------------------
-- Table structure for bf_log
-- ----------------------------
DROP TABLE IF EXISTS `bf_log`;
CREATE TABLE `bf_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(255) DEFAULT NULL COMMENT '操作者姓名',
  `opttime` timestamp NULL DEFAULT NULL COMMENT '操作时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3028 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_log
-- ----------------------------

-- ----------------------------
-- Table structure for bf_menu
-- ----------------------------
DROP TABLE IF EXISTS `bf_menu`;
CREATE TABLE `bf_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `pid` bigint(20) DEFAULT NULL,
  `menuName` varchar(20) DEFAULT NULL,
  `menuDesc` varchar(30) DEFAULT NULL,
  `menuCode` varchar(200) DEFAULT NULL,
  `displayOrder` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_menu
-- ----------------------------
INSERT INTO `bf_menu` VALUES ('1', '0', '系统', '系统', '', null);
INSERT INTO `bf_menu` VALUES ('2', '1', '管理员管理', '管理员管理', 'user/index.do', null);
INSERT INTO `bf_menu` VALUES ('3', '1', '角色管理', '角色管理', 'role/index.do', null);
INSERT INTO `bf_menu` VALUES ('4', '1', '菜单管理', '菜单管理', 'menu/index.do', null);
INSERT INTO `bf_menu` VALUES ('5', '1', '字典管理', '字典管理', 'dictType/index.do', null);
INSERT INTO `bf_menu` VALUES ('8', '0', '用户管理', '用户管理', '', null);
INSERT INTO `bf_menu` VALUES ('9', '8', '用户信息', '用户信息', 'userWeXinInfo/index.do', null);
INSERT INTO `bf_menu` VALUES ('11', '0', '店铺管理', '店铺管理', null, null);
INSERT INTO `bf_menu` VALUES ('12', '11', '店铺信息', '店铺信息', 'shop/index.do', null);
INSERT INTO `bf_menu` VALUES ('75', '0', '财务管理', '财务管理', '', null);
INSERT INTO `bf_menu` VALUES ('76', '75', '财务管理', '财务管理', 'account/index.do', null);
INSERT INTO `bf_menu` VALUES ('78', '0', '运营管理', '运营管理', null, null);
INSERT INTO `bf_menu` VALUES ('79', '78', '优惠券管理', '优惠券管理', 'coupon/index.do', null);
INSERT INTO `bf_menu` VALUES ('80', '78', '抽成管理', '抽成管理', 'commission/index.do', null);

-- ----------------------------
-- Table structure for bf_message_template
-- ----------------------------
DROP TABLE IF EXISTS `bf_message_template`;
CREATE TABLE `bf_message_template` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `title` varchar(30) DEFAULT NULL COMMENT '标题',
  `type` varchar(10) DEFAULT '' COMMENT '1.注册,2.密码,3.超速预警.4.紧急刹车',
  `content` varchar(300) DEFAULT NULL COMMENT '内容',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `creator` varchar(100) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updator` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_titles` (`title`) USING BTREE COMMENT '标题索引'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='消息模板管理';

-- ----------------------------
-- Records of bf_message_template
-- ----------------------------

-- ----------------------------
-- Table structure for bf_operation
-- ----------------------------
DROP TABLE IF EXISTS `bf_operation`;
CREATE TABLE `bf_operation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `opName` varchar(50) DEFAULT NULL COMMENT '功能名称',
  `opDesc` varchar(50) DEFAULT NULL COMMENT '功能描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_operation
-- ----------------------------
INSERT INTO `bf_operation` VALUES ('1', 'user:add', '用户添加');
INSERT INTO `bf_operation` VALUES ('2', 'user:detail', '用户详情');
INSERT INTO `bf_operation` VALUES ('3', 'user:edit', '用户编辑');
INSERT INTO `bf_operation` VALUES ('4', 'user:editPasswd', '修改用户密码');
INSERT INTO `bf_operation` VALUES ('5', 'user:remove', '用户删除');
INSERT INTO `bf_operation` VALUES ('6', 'user:editRole', '用户分配角色');
INSERT INTO `bf_operation` VALUES ('7', 'role:add', '角色添加');
INSERT INTO `bf_operation` VALUES ('8', 'role:editMenu', '角色分配菜单');
INSERT INTO `bf_operation` VALUES ('9', 'role:edit', '角色编辑');
INSERT INTO `bf_operation` VALUES ('10', 'role:remove', '角色删除');
INSERT INTO `bf_operation` VALUES ('11', 'role:editOperation', '角色分配操作权限');
INSERT INTO `bf_operation` VALUES ('12', 'menu:add', '菜单添加');
INSERT INTO `bf_operation` VALUES ('13', 'menu:edit', '菜单编辑');
INSERT INTO `bf_operation` VALUES ('14', 'menu:remove', '菜单删除');
INSERT INTO `bf_operation` VALUES ('15', 'dictType:add', '字典表添加');
INSERT INTO `bf_operation` VALUES ('16', 'dictType:edit', '字典表编辑');
INSERT INTO `bf_operation` VALUES ('17', 'dictType:remove', '字典表删除');
INSERT INTO `bf_operation` VALUES ('18', 'org:add', '组织结构添加');
INSERT INTO `bf_operation` VALUES ('19', 'org:edit', '组织结构编辑');
INSERT INTO `bf_operation` VALUES ('20', 'org:remove', '组织结构删除');
INSERT INTO `bf_operation` VALUES ('21', 'area:add', '区域添加');
INSERT INTO `bf_operation` VALUES ('22', 'area:edit', '区域编辑');
INSERT INTO `bf_operation` VALUES ('23', 'area:remove', '区域删除');
INSERT INTO `bf_operation` VALUES ('24', 'department:add', '部门添加');
INSERT INTO `bf_operation` VALUES ('25', 'department:edit', '部门编辑');
INSERT INTO `bf_operation` VALUES ('26', 'department:remove', '部门删除');
INSERT INTO `bf_operation` VALUES ('27', 'company:add', '单位管理添加');
INSERT INTO `bf_operation` VALUES ('28', 'company:edit', '单位管理编辑');
INSERT INTO `bf_operation` VALUES ('29', 'company:detail', '单位管理详情');
INSERT INTO `bf_operation` VALUES ('30', 'company:remove', '单位管理删除');
INSERT INTO `bf_operation` VALUES ('31', 'operation:add', '操作权限管理添加');
INSERT INTO `bf_operation` VALUES ('32', 'operation:edit', '操作权限管理编辑');
INSERT INTO `bf_operation` VALUES ('33', 'operation:remove', '操作权限管理删除');
INSERT INTO `bf_operation` VALUES ('34', 'message:add', '消息模板管理添加');
INSERT INTO `bf_operation` VALUES ('35', 'message:edit', '消息模板管理编辑');
INSERT INTO `bf_operation` VALUES ('36', 'message:remove', '消息模板管理删除');
INSERT INTO `bf_operation` VALUES ('37', 'carouselfigure:add', '轮播图添加');
INSERT INTO `bf_operation` VALUES ('38', 'carouselfigure:edit', '轮播图编译');
INSERT INTO `bf_operation` VALUES ('39', 'carouselfigure:remove', '轮播图删除');
INSERT INTO `bf_operation` VALUES ('40', 'content:add', '文章管理添加');
INSERT INTO `bf_operation` VALUES ('41', 'content:edit', '文章管理编辑');
INSERT INTO `bf_operation` VALUES ('42', 'content:remove', '文章管理删除');
INSERT INTO `bf_operation` VALUES ('43', 'navigation:add', '导航管理添加');
INSERT INTO `bf_operation` VALUES ('44', 'navigation:edit', '导航管理编辑');
INSERT INTO `bf_operation` VALUES ('45', 'navigation:remove', '导航管理删除');
INSERT INTO `bf_operation` VALUES ('46', 'device:add', '设备管理添加');
INSERT INTO `bf_operation` VALUES ('47', 'device:edit', '设备管理编辑');
INSERT INTO `bf_operation` VALUES ('48', 'device:remove', '设备管理删除');
INSERT INTO `bf_operation` VALUES ('49', 'device:detail', '设备管理详情');
INSERT INTO `bf_operation` VALUES ('50', 'trouble:add', '故障报修管理添加');
INSERT INTO `bf_operation` VALUES ('51', 'trouble:edit', '故障报修管理修复');
INSERT INTO `bf_operation` VALUES ('52', 'trouble:detail', '故障报修管理详情');
INSERT INTO `bf_operation` VALUES ('53', 'cardReader:add', '读卡器添加');
INSERT INTO `bf_operation` VALUES ('54', 'cardReader:edit', '读卡器编译');
INSERT INTO `bf_operation` VALUES ('55', 'cardReader:remove', '读卡器删除');
INSERT INTO `bf_operation` VALUES ('56', 'cardReader:detail', '读卡器详情');
INSERT INTO `bf_operation` VALUES ('57', 'school:detail', '学校详情');
INSERT INTO `bf_operation` VALUES ('58', 'school:add', '学校添加');
INSERT INTO `bf_operation` VALUES ('59', 'school:edit', '学校编辑');
INSERT INTO `bf_operation` VALUES ('60', 'school:remove', '学校删除');
INSERT INTO `bf_operation` VALUES ('61', 'operatingunit:detail', '运营单位详情');
INSERT INTO `bf_operation` VALUES ('62', 'operatingunit:add', '运营单位添加');
INSERT INTO `bf_operation` VALUES ('63', 'operatingunit:edit', '运营单位编辑');
INSERT INTO `bf_operation` VALUES ('64', 'operatingunit:remove', '运营单位删除');
INSERT INTO `bf_operation` VALUES ('65', 'supervision:detail', '监管单位详情');
INSERT INTO `bf_operation` VALUES ('66', 'supervision:add', '监管单位添加');
INSERT INTO `bf_operation` VALUES ('67', 'supervision:edit', '监管单位编辑');
INSERT INTO `bf_operation` VALUES ('68', 'supervision:remove', '监管单位删除');
INSERT INTO `bf_operation` VALUES ('69', 'repair:detail', '维修单位详情');
INSERT INTO `bf_operation` VALUES ('70', 'repair:add', '维修单位添加');
INSERT INTO `bf_operation` VALUES ('71', 'repair:edit', '维修单位编辑');
INSERT INTO `bf_operation` VALUES ('72', 'repair:remove', '维修单位删除');
INSERT INTO `bf_operation` VALUES ('73', 'insurance:detail', '保险单位详情');
INSERT INTO `bf_operation` VALUES ('74', 'insurance:add', '保险单位添加');
INSERT INTO `bf_operation` VALUES ('75', 'insurance:edit', '保险单位编辑');
INSERT INTO `bf_operation` VALUES ('76', 'insurance:remove', '保险单位删除');
INSERT INTO `bf_operation` VALUES ('77', 'driver:add', '司机管理添加');
INSERT INTO `bf_operation` VALUES ('78', 'driver:edit', '司机管理编辑');
INSERT INTO `bf_operation` VALUES ('79', 'driver:detail', '司机管理详情');
INSERT INTO `bf_operation` VALUES ('80', 'driver:changestatusstart', '司机管理启用');
INSERT INTO `bf_operation` VALUES ('81', 'driver:changestatusend', '司机管理禁用');
INSERT INTO `bf_operation` VALUES ('82', 'caregiver:add', '照管员添加');
INSERT INTO `bf_operation` VALUES ('83', 'caregiver:edit', '照管员编辑');
INSERT INTO `bf_operation` VALUES ('84', 'caregiver:detail', '照管员详情');
INSERT INTO `bf_operation` VALUES ('85', 'caregiver:changestatusstart', '照管员启用');
INSERT INTO `bf_operation` VALUES ('86', 'caregiver:changestatusend', '照管员禁用');
INSERT INTO `bf_operation` VALUES ('87', 'bus:add', '车辆添加');
INSERT INTO `bf_operation` VALUES ('88', 'bus:edit', '车辆编辑');
INSERT INTO `bf_operation` VALUES ('89', 'bus:detail', '车辆详情');
INSERT INTO `bf_operation` VALUES ('90', 'bus:changestatusstart', '车辆启用');
INSERT INTO `bf_operation` VALUES ('91', 'bus:changestatusend', '车辆禁用');
INSERT INTO `bf_operation` VALUES ('92', 'line:add', '线路添加');
INSERT INTO `bf_operation` VALUES ('93', 'line:edit', '线路编辑');
INSERT INTO `bf_operation` VALUES ('94', 'line:detail', '线路详情');
INSERT INTO `bf_operation` VALUES ('95', 'line:remove', '线路删除');
INSERT INTO `bf_operation` VALUES ('96', 'station:add', '站点添加');
INSERT INTO `bf_operation` VALUES ('97', 'station:studentstudentmanagement', '站点管理乘车学生');
INSERT INTO `bf_operation` VALUES ('98', 'station:edit', '站点编辑');
INSERT INTO `bf_operation` VALUES ('99', 'station:detail', '站点详情');
INSERT INTO `bf_operation` VALUES ('100', 'station:remove', '站点删除');
INSERT INTO `bf_operation` VALUES ('101', 'student:add', '学生添加');
INSERT INTO `bf_operation` VALUES ('102', 'student:edit', '学生编辑');
INSERT INTO `bf_operation` VALUES ('103', 'student:detail', '学生详情');
INSERT INTO `bf_operation` VALUES ('104', 'student:batchimport', '学生批量导入');
INSERT INTO `bf_operation` VALUES ('105', 'student:remove', '学生删除');
INSERT INTO `bf_operation` VALUES ('106', 'class:add', '班级添加');
INSERT INTO `bf_operation` VALUES ('107', 'class:edit', '班级编辑');
INSERT INTO `bf_operation` VALUES ('108', 'class:remove', '班级删除');
INSERT INTO `bf_operation` VALUES ('109', 'class:classChange', '新学期班级调整');
INSERT INTO `bf_operation` VALUES ('110', 'bustrip:detail', '校车出行记录详情');
INSERT INTO `bf_operation` VALUES ('111', 'bustrip:tripInfoMap', '校车出行记录轨迹地图');
INSERT INTO `bf_operation` VALUES ('112', 'bustrip:tripInfoPhoto', '校车出行记录抓拍的图片');
INSERT INTO `bf_operation` VALUES ('113', 'bustrip:tripInfoCheckInfo', '校车出行记录发车前检查记录');
INSERT INTO `bf_operation` VALUES ('114', 'studentride:detail', '上下车明细详情');
INSERT INTO `bf_operation` VALUES ('115', 'schoolTripRecord:detail', '学校进出记录详情');
INSERT INTO `bf_operation` VALUES ('116', 'driverConfirm:detail', '驾驶员确认记录详情');
INSERT INTO `bf_operation` VALUES ('117', 'caregiverConfirm:detail', '随车照管员确认记录详情');
INSERT INTO `bf_operation` VALUES ('118', 'train:add', '培训和演练台账添加');
INSERT INTO `bf_operation` VALUES ('119', 'train:edit', '培训和演练台账编辑');
INSERT INTO `bf_operation` VALUES ('120', 'train:detail', '培训和演练台账详情');
INSERT INTO `bf_operation` VALUES ('121', 'maintain:add', '维修保养台账添加');
INSERT INTO `bf_operation` VALUES ('122', 'maintain:edit', '维修保养台账编辑');
INSERT INTO `bf_operation` VALUES ('123', 'maintain:detail', '维修保养台账详情');
INSERT INTO `bf_operation` VALUES ('124', 'unsafe:add', '安全隐患台账添加');
INSERT INTO `bf_operation` VALUES ('125', 'unsafe:edit', '安全隐患台账编辑');
INSERT INTO `bf_operation` VALUES ('126', 'unsafe:deal', '安全隐患台账处理');
INSERT INTO `bf_operation` VALUES ('127', 'unsafe:detail', '安全隐患台账详情');
INSERT INTO `bf_operation` VALUES ('128', 'complain:detail', '投诉建议详情');
INSERT INTO `bf_operation` VALUES ('129', 'fence:fencesetting', '电子围栏地理围栏设置');
INSERT INTO `bf_operation` VALUES ('130', 'notice:selectNotce', '通知公告查阅人记录');
INSERT INTO `bf_operation` VALUES ('131', 'notice:add', '通知公告添加');
INSERT INTO `bf_operation` VALUES ('132', 'notice:seeNotce', '通知公告查看');
INSERT INTO `bf_operation` VALUES ('133', 'notice:edit', '通知公告编辑');
INSERT INTO `bf_operation` VALUES ('134', 'notice:remove', '通知公告删除');
INSERT INTO `bf_operation` VALUES ('135', 'scoreStandard:getStandardPecific', '量化评分设置自定义量化项目表');
INSERT INTO `bf_operation` VALUES ('136', 'scoreStandard:getStandardRequired', '量化评分设置系统量化项目表');
INSERT INTO `bf_operation` VALUES ('137', 'scoreRecord:add', '量化评分扣分明细添加');
INSERT INTO `bf_operation` VALUES ('138', 'scoreRecord:detail', '量化评分扣分明细详情');
INSERT INTO `bf_operation` VALUES ('139', 'scoreChart:detail', '量化评分报表详情');
INSERT INTO `bf_operation` VALUES ('140', 'supervisorLog:detail', '监管日志详情');
INSERT INTO `bf_operation` VALUES ('141', 'driverStartConfirmSet:add', '驾驶员发车确认项设置添加');
INSERT INTO `bf_operation` VALUES ('142', 'driverStartConfirmSet:edit', '驾驶员发车确认项设置编辑');
INSERT INTO `bf_operation` VALUES ('143', 'driverStartConfirmSet:remova', '驾驶员发车确认项设置删除');
INSERT INTO `bf_operation` VALUES ('144', 'caregiverStartConfirmSet:add', '随车照管员确认项设置添加');
INSERT INTO `bf_operation` VALUES ('145', 'caregiverStartConfirmSet:edit', '随车照管员确认项设置编辑');
INSERT INTO `bf_operation` VALUES ('146', 'caregiverStartConfirmSet:remove', '随车照管员确认项设置删除');
INSERT INTO `bf_operation` VALUES ('147', 'scoreStandardadd:addNotce', '初始化自定义量化项目');
INSERT INTO `bf_operation` VALUES ('148', 'scoreStandardaddRequired:addNotce', '初始化系统量化项目');

-- ----------------------------
-- Table structure for bf_order
-- ----------------------------
DROP TABLE IF EXISTS `bf_order`;
CREATE TABLE `bf_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(64) DEFAULT NULL COMMENT '订单号',
  `order_time` datetime DEFAULT NULL COMMENT '下单时间',
  `order_address` varchar(128) DEFAULT NULL COMMENT '下单地点(用户下单时应有定位)',
  `take_address` varchar(128) DEFAULT NULL COMMENT '取餐地点(精确到用户选择的地铁站即可，无需显示商铺填写的地理位置)',
  `shop_id` bigint(20) DEFAULT NULL COMMENT '商铺id',
  `shop_name` varchar(32) DEFAULT NULL COMMENT '商铺名称',
  `order_detail_id` varchar(128) DEFAULT NULL COMMENT '订单详情（单品id，逗号分隔）',
  `order_detail` varchar(5000) DEFAULT NULL COMMENT '订单详情说明',
  `order_money` decimal(10,1) DEFAULT '0.0' COMMENT '订单金额',
  `coupon_id` bigint(20) DEFAULT NULL COMMENT '优惠券id',
  `coupon_detail` varchar(256) DEFAULT NULL COMMENT '优惠券详情',
  `order_status` char(1) DEFAULT NULL COMMENT '订单状态:1、待支付，2、已支付，3、已备餐，4、已完成，5、未退款，6、退款中，7、已退款',
  `refund_detail` varchar(128) DEFAULT NULL COMMENT '退款说明',
  `transfer_stauts` char(1) DEFAULT '2' COMMENT '转账状态：1、已转账，2、未转账',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `phone` char(11) DEFAULT NULL COMMENT '用户手机号',
  `coupon_deduction` decimal(10,1) DEFAULT '0.0' COMMENT '优惠券抵扣',
  `platform_partion` decimal(10,1) DEFAULT '0.0' COMMENT '平台分成',
  `sum_income` decimal(10,1) DEFAULT '0.0' COMMENT '合计收入',
  `platform_profit` decimal(10,1) DEFAULT '0.0' COMMENT '平台盈亏',
  `is_flag` char(1) DEFAULT '2' COMMENT '是否打款：1，是，2，否',
  `cancle_message` varchar(128) DEFAULT NULL COMMENT '取消订单原因',
  `operater` varchar(32) DEFAULT '2' COMMENT '操作人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(128) DEFAULT NULL COMMENT '备注',
  `is_refund_flag` char(1) NOT NULL DEFAULT '1' COMMENT '1未申请退款，2已申请退款',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_orderNo` (`order_no`) USING BTREE COMMENT '订单号唯一索引',
  KEY `idx_phone` (`phone`) USING BTREE COMMENT '手机号'
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of bf_order
-- ----------------------------
INSERT INTO `bf_order` VALUES ('210', 'N20171128195702_556368', '2017-11-27 19:57:02', null, '城北路', '25', '芳芳早餐', null, '{\"packProductList\":[],\"singleProductList\":[{\"amount\":1,\"name\":\"豆浆\",\"singleMoney\":1.5}]}', '1.5', null, null, '1', null, '2', '35', '18997336712', '0.0', '0.0', '0.0', '0.0', null, null, null, null, '2017-11-28 22:24:00', null, '1');
INSERT INTO `bf_order` VALUES ('211', 'N20171128195707_792367', '2017-11-27 19:57:07', null, '城北路', '25', '芳芳早餐', null, '{\"packProductList\":[],\"singleProductList\":[{\"amount\":1,\"name\":\"豆浆\",\"singleMoney\":1.5}]}', '1.5', null, null, '1', null, '2', '35', '18997336712', '0.0', '0.0', '0.0', '0.0', null, null, null, null, '2017-11-28 22:24:03', null, '1');
INSERT INTO `bf_order` VALUES ('212', 'N20171128200010_275438', '2017-11-27 20:00:10', null, '城北路', '25', '芳芳早餐', null, '{\"packProductList\":[],\"singleProductList\":[{\"amount\":1,\"name\":\"肉包\",\"singleMoney\":1.0}]}', '1.0', null, null, '1', null, '2', '35', '18997336712', '0.0', '0.0', '0.0', '0.0', null, null, null, null, '2017-11-28 22:24:07', null, '1');
INSERT INTO `bf_order` VALUES ('213', 'N20171128200015_88445', '2017-11-27 20:00:15', null, '城北路', '25', '芳芳早餐', null, '{\"packProductList\":[],\"singleProductList\":[{\"amount\":2,\"name\":\"肉包\",\"singleMoney\":1.0}]}', '2.0', null, null, '1', null, '2', '34', '13897280416', '0.0', '0.0', '0.0', '0.0', null, null, null, null, '2017-11-28 22:24:10', null, '1');
INSERT INTO `bf_order` VALUES ('214', 'N20171128200020_619146', '2017-11-27 20:00:20', null, '城北路', '25', '芳芳早餐', null, '{\"packProductList\":[],\"singleProductList\":[{\"amount\":2,\"name\":\"肉包\",\"singleMoney\":1.0}]}', '2.0', null, null, '1', null, '2', '34', '13897280416', '0.0', '0.0', '0.0', '0.0', null, null, null, null, '2017-11-28 22:24:13', null, '1');
INSERT INTO `bf_order` VALUES ('215', 'N20171128200049_154182', '2017-11-27 20:00:49', null, '城北路', '25', '芳芳早餐', null, '{\"packProductList\":[],\"singleProductList\":[{\"amount\":1,\"name\":\"肉包\",\"singleMoney\":1.0}]}', '1.0', null, null, '1', null, '2', '35', '18997336712', '0.0', '0.0', '0.0', '0.0', null, null, null, null, '2017-11-28 22:24:16', null, '1');
INSERT INTO `bf_order` VALUES ('216', 'N20171128202145_76029', '2017-11-27 20:21:45', null, '城北路', '25', '芳芳早餐', null, '{\"packProductList\":[],\"singleProductList\":[{\"amount\":1,\"name\":\"肉包\",\"singleMoney\":1.0}]}', '1.0', null, null, '6', null, '2', '37', '13838146609', '0.0', '0.3', '0.0', '0.3', '2', null, null, null, '2017-11-29 14:59:57', null, '2');
INSERT INTO `bf_order` VALUES ('217', 'N20171128202248_984506', '2017-11-27 20:22:48', null, '城北路', '25', '芳芳早餐', null, '{\"packProductList\":[],\"singleProductList\":[{\"amount\":1,\"name\":\"豆浆\",\"singleMoney\":1.5}]}', '1.5', null, null, '4', null, '2', '35', '18997336712', '0.0', '0.3', '0.0', '0.3', '2', null, null, null, '2017-11-29 14:59:58', null, '1');
INSERT INTO `bf_order` VALUES ('218', 'N20171128202741_304856', '2017-11-27 20:27:41', null, '城北路', '25', '芳芳早餐', null, '{\"packProductList\":[],\"singleProductList\":[{\"amount\":1,\"name\":\"豆浆\",\"singleMoney\":1.5}]}', '1.5', null, null, '4', null, '2', '35', '18997336712', '0.0', '0.3', '0.0', '0.3', '2', null, null, null, '2017-11-29 14:59:59', null, '1');
INSERT INTO `bf_order` VALUES ('219', 'N20171128202841_245772', '2017-11-27 20:28:41', null, '城北路', '25', '芳芳早餐', null, '{\"packProductList\":[],\"singleProductList\":[{\"amount\":1,\"name\":\"豆浆\",\"singleMoney\":1.5}]}', '1.5', '192', '', '6', '原交易状态[301]不能退款退款失败！！', '2', '35', '18997336712', '1.0', '0.3', '0.0', '-0.7', '2', null, null, null, '2017-11-29 14:59:59', null, '2');
INSERT INTO `bf_order` VALUES ('220', 'N20171128203515_520325', '2017-11-27 20:35:15', null, '城北路', '25', '芳芳早餐', null, '{\"packProductList\":[],\"singleProductList\":[{\"amount\":2,\"name\":\"肉包\",\"singleMoney\":1.0}]}', '2.0', null, null, '1', null, '2', '34', '13897280416', '0.0', '0.0', '0.0', '0.0', null, null, null, null, '2017-11-28 22:24:36', null, '1');
INSERT INTO `bf_order` VALUES ('221', 'N20171128203535_177743', '2017-11-27 20:35:35', null, '城北路', '25', '芳芳早餐', null, '{\"packProductList\":[],\"singleProductList\":[{\"amount\":2,\"name\":\"肉包\",\"singleMoney\":1.0}]}', '2.0', null, null, '4', null, '2', '34', '13897280416', '0.0', '0.3', '0.0', '0.3', '2', null, null, null, '2017-11-29 15:00:00', null, '1');
INSERT INTO `bf_order` VALUES ('222', 'N20171128233449_189999', '2017-11-28 23:34:49', null, '城北路', '25', '芳芳早餐', null, '{\"packProductList\":[],\"singleProductList\":[{\"amount\":1,\"name\":\"肉包\",\"singleMoney\":1.0}]}', '1.0', null, null, '1', null, '2', '38', '18838928206', '0.0', '0.0', '0.0', '0.0', null, null, null, null, '2017-11-28 23:34:49', null, '1');
INSERT INTO `bf_order` VALUES ('223', 'N20171129105800_347681', '2017-11-28 10:58:00', null, '长远天地1号楼', '29', '雨店', null, '{\"packProductList\":[],\"singleProductList\":[{\"amount\":1,\"name\":\"白菜包子\",\"singleMoney\":0.1}]}', '0.1', null, null, '4', null, '2', '39', '15303281650', '0.0', '0.3', '0.0', '0.3', null, null, null, null, '2017-11-29 16:37:47', null, '1');
INSERT INTO `bf_order` VALUES ('224', 'N20171129110554_521111', '2017-11-28 11:05:54', null, '长远天地1号楼', '29', '雨店', null, '{\"packProductList\":[],\"singleProductList\":[{\"amount\":1,\"name\":\"白菜包子\",\"singleMoney\":0.1}]}', '0.1', null, null, '6', '商户订单重复重复的请求号', '2', '39', '15303281650', '0.0', '0.3', '0.0', '0.3', null, null, null, null, '2017-11-29 16:37:55', null, '2');
INSERT INTO `bf_order` VALUES ('225', 'N20171129110718_506208', '2017-11-28 11:07:18', null, '长远天地1号楼', '29', '雨店', null, '{\"packProductList\":[],\"singleProductList\":[{\"amount\":1,\"name\":\"白菜包子\",\"singleMoney\":0.1}]}', '0.1', null, null, '6', '原交易状态[301]不能退款退款失败！！', '2', '39', '15303281650', '0.0', '0.3', '0.0', '0.3', null, null, null, null, '2017-11-29 16:38:00', null, '2');
INSERT INTO `bf_order` VALUES ('226', 'N20171129113230_140167', '2017-11-28 11:32:30', null, '城北路', '25', '芳芳早餐', null, '{\"packProductList\":[],\"singleProductList\":[{\"amount\":1,\"name\":\"肉包\",\"singleMoney\":1.0}]}', '1.0', null, null, '4', null, '1', '36', '15810987808', '0.0', '0.3', '0.0', '0.3', '1', null, null, null, '2017-11-29 16:38:04', null, '1');
INSERT INTO `bf_order` VALUES ('227', 'N20171129131538_297322', '2017-11-29 13:15:38', null, '长远天地1号楼', '29', '雨店', null, '{\"packProductList\":[],\"singleProductList\":[{\"amount\":1,\"name\":\"白菜包子\",\"singleMoney\":0.1}]}', '0.1', null, null, '1', null, '2', '39', '15303281650', '0.0', '0.0', '0.0', '0.0', null, null, null, null, '2017-11-29 13:15:38', null, '1');
INSERT INTO `bf_order` VALUES ('228', 'N20171129131629_316372', '2017-11-28 13:16:29', null, '长远天地1号楼', '29', '雨店', null, '{\"packProductList\":[],\"singleProductList\":[{\"amount\":11,\"name\":\"白菜包子\",\"singleMoney\":0.1}]}', '1.1', '196', '', '6', '商户订单重复重复的请求号', '2', '39', '15303281650', '1.0', '0.3', '0.0', '-0.7', null, null, null, null, '2017-11-29 16:38:09', null, '2');
INSERT INTO `bf_order` VALUES ('229', 'N20171129140840_322728', '2017-11-28 14:08:40', null, '城北路', '25', '芳芳早餐', null, '{\"packProductList\":[],\"singleProductList\":[{\"amount\":1,\"name\":\"肉包\",\"singleMoney\":1.0}]}', '1.0', null, null, '6', null, '2', '46', '18297135748', '0.0', '0.3', '0.0', '0.3', '2', null, null, null, '2017-11-29 16:38:13', null, '2');
INSERT INTO `bf_order` VALUES ('230', 'N20171129140902_545930', '2017-11-28 14:09:02', null, '城北路', '25', '芳芳早餐', null, '{\"packProductList\":[],\"singleProductList\":[{\"amount\":1,\"name\":\"肉包\",\"singleMoney\":1.0}]}', '1.0', null, null, '4', '没问题质量', '1', '46', '18297135748', '0.0', '0.3', '0.0', '0.3', '1', null, null, null, '2017-12-01 17:40:25', null, '2');
INSERT INTO `bf_order` VALUES ('231', 'N20171129142931_577754', '2017-11-29 14:29:31', null, '城北路', '25', '芳芳早餐', null, '{\"packProductList\":[],\"singleProductList\":[{\"amount\":1,\"name\":\"肉包\",\"singleMoney\":1.0},{\"amount\":1,\"name\":\"豆浆\",\"singleMoney\":1.5}]}', '2.5', '204', '', '4', null, '1', '46', '18297135748', '1.0', '0.3', '0.0', '-0.7', '1', null, null, null, '2017-11-29 15:00:03', null, '1');
INSERT INTO `bf_order` VALUES ('232', 'N20171129162159_439809', '2017-11-29 16:21:59', null, '长远天地1号楼', '29', '雨店', null, '{\"packProductList\":[],\"singleProductList\":[{\"amount\":11,\"name\":\"白菜包子\",\"singleMoney\":0.1}]}', '1.1', '198', '', '1', null, '2', '39', '15303281650', '1.0', '0.0', '0.0', '0.0', '2', null, '2', null, '2017-11-29 16:21:59', null, '1');
INSERT INTO `bf_order` VALUES ('233', 'N20171129181521_041285', '2017-11-29 18:15:21', null, '长远天地1号楼', '29', '雨店', null, '{\"packProductList\":[],\"singleProductList\":[{\"amount\":1,\"name\":\"白菜包子\",\"singleMoney\":0.1}]}', '0.1', null, null, '1', null, '2', '39', '15303281650', '0.0', '0.0', '0.0', '0.0', '2', null, '2', null, '2017-11-29 18:15:21', null, '1');
INSERT INTO `bf_order` VALUES ('234', 'N20171130085733_738276', '2017-11-30 08:57:33', null, '城北路', '25', '芳芳早餐', null, '{\"packProductList\":[],\"singleProductList\":[{\"amount\":1,\"name\":\"肉包\",\"singleMoney\":1.0},{\"amount\":1,\"name\":\"豆浆\",\"singleMoney\":1.5},{\"amount\":1,\"name\":\"虾饺\",\"singleMoney\":1.5}]}', '4.0', null, null, '1', null, '2', '52', '18625776286', '0.0', '0.0', '0.0', '0.0', '2', null, '2', null, '2017-11-30 08:57:33', null, '1');
INSERT INTO `bf_order` VALUES ('235', 'N20171130085749_481358', '2017-11-30 08:57:49', null, '城北路', '25', '芳芳早餐', null, '{\"packProductList\":[],\"singleProductList\":[{\"amount\":1,\"name\":\"肉包\",\"singleMoney\":1.0},{\"amount\":1,\"name\":\"豆浆\",\"singleMoney\":1.5},{\"amount\":1,\"name\":\"虾饺\",\"singleMoney\":1.5}]}', '4.0', null, null, '1', null, '2', '52', '18625776286', '0.0', '0.0', '0.0', '0.0', '2', null, '2', null, '2017-11-30 08:57:49', null, '1');
INSERT INTO `bf_order` VALUES ('236', 'N20171130095515_303382', '2017-11-30 09:55:15', null, '城北路', '25', '芳芳早餐', null, '{\"packProductList\":[],\"singleProductList\":[{\"amount\":1,\"name\":\"肉包\",\"singleMoney\":1.0}]}', '1.0', null, null, '4', null, '2', '46', '18297135748', '0.0', '0.3', '0.0', '0.3', '2', null, '2', null, '2017-11-30 09:55:15', null, '1');
INSERT INTO `bf_order` VALUES ('237', 'N20171130113425_064186', '2017-11-30 11:34:25', null, '城北路', '25', '芳芳早餐', null, '{\"packProductList\":[],\"singleProductList\":[{\"amount\":1,\"name\":\"肉包\",\"singleMoney\":1.0}]}', '1.0', null, null, '4', null, '2', '46', '18297135748', '0.0', '0.3', '0.0', '0.3', '2', null, '2', null, '2017-11-30 11:34:25', null, '1');
INSERT INTO `bf_order` VALUES ('238', 'N20171130113443_626448', '2017-11-30 11:34:43', null, '城北路', '25', '芳芳早餐', null, '{\"packProductList\":[],\"singleProductList\":[{\"amount\":1,\"name\":\"豆浆\",\"singleMoney\":1.5}]}', '1.5', '205', '', '4', null, '2', '46', '18297135748', '1.0', '0.3', '0.0', '-0.7', '2', null, '2', null, '2017-11-30 11:34:43', null, '1');
INSERT INTO `bf_order` VALUES ('239', 'N20171130173703_051760', '2017-11-30 17:37:03', null, '长远天地1号楼', '29', '雨店', null, '{\"packProductList\":[],\"singleProductList\":[{\"amount\":1,\"name\":\"白菜包子\",\"singleMoney\":0.1}]}', '0.1', null, null, '6', '原交易状态[301]不能退款退款失败！！', '2', '39', '15303281650', '0.0', '0.3', '0.0', '0.3', '2', null, '2', null, '2017-11-30 17:37:03', null, '2');
INSERT INTO `bf_order` VALUES ('240', 'N20171130174222_819770', '2017-11-30 17:42:22', null, '长远天地1号楼', '29', '雨店', null, '{\"packProductList\":[],\"singleProductList\":[{\"amount\":1,\"name\":\"白菜包子\",\"singleMoney\":0.1}]}', '0.1', null, null, '4', '我看见你拿走啦', '2', '39', '15303281650', '0.0', '0.3', '0.0', '0.3', '2', null, '2', null, '2017-11-30 17:42:22', null, '2');
INSERT INTO `bf_order` VALUES ('241', 'N20171201174204_284855', '2017-12-01 17:42:04', null, '城北路', '25', '芳芳早餐', null, '{\"packProductList\":[],\"singleProductList\":[{\"amount\":1,\"name\":\"肉包\",\"singleMoney\":1.0}]}', '1.0', null, null, '4', null, '2', '46', '18297135748', '0.0', '0.3', '0.0', '0.3', '2', null, '2', null, '2017-12-01 17:42:04', null, '1');

-- ----------------------------
-- Table structure for bf_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `bf_order_detail`;
CREATE TABLE `bf_order_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `product_id` bigint(20) DEFAULT NULL COMMENT '单表id/套餐id',
  `prodcut_name` varchar(32) DEFAULT NULL COMMENT '单表/套餐名称',
  `type` char(1) DEFAULT NULL COMMENT '标识（1、单品，2、套餐）',
  `amount` int(10) DEFAULT '0' COMMENT '单品/套餐数量',
  `operater` varchar(32) DEFAULT NULL COMMENT '操作人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(128) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8 COMMENT='订单详情表--单独设计信息';

-- ----------------------------
-- Records of bf_order_detail
-- ----------------------------
INSERT INTO `bf_order_detail` VALUES ('260', '124', '豆浆', '1', '1', null, '2017-11-28 19:57:02', '2017-11-28 19:57:02', null);
INSERT INTO `bf_order_detail` VALUES ('261', '124', '豆浆', '1', '1', null, '2017-11-28 19:57:07', '2017-11-28 19:57:07', null);
INSERT INTO `bf_order_detail` VALUES ('262', '123', '肉包', '1', '1', null, '2017-11-28 20:00:10', '2017-11-28 20:00:10', null);
INSERT INTO `bf_order_detail` VALUES ('263', '123', '肉包', '1', '2', null, '2017-11-28 20:00:15', '2017-11-28 20:00:15', null);
INSERT INTO `bf_order_detail` VALUES ('264', '123', '肉包', '1', '2', null, '2017-11-28 20:00:20', '2017-11-28 20:00:20', null);
INSERT INTO `bf_order_detail` VALUES ('265', '123', '肉包', '1', '1', null, '2017-11-28 20:00:49', '2017-11-28 20:00:49', null);
INSERT INTO `bf_order_detail` VALUES ('266', '123', '肉包', '1', '1', null, '2017-11-28 20:21:45', '2017-11-28 20:21:45', null);
INSERT INTO `bf_order_detail` VALUES ('267', '124', '豆浆', '1', '1', null, '2017-11-28 20:22:48', '2017-11-28 20:22:48', null);
INSERT INTO `bf_order_detail` VALUES ('268', '124', '豆浆', '1', '1', null, '2017-11-28 20:27:41', '2017-11-28 20:27:41', null);
INSERT INTO `bf_order_detail` VALUES ('269', '124', '豆浆', '1', '1', null, '2017-11-28 20:28:41', '2017-11-28 20:28:41', null);
INSERT INTO `bf_order_detail` VALUES ('270', '123', '肉包', '1', '2', null, '2017-11-28 20:35:15', '2017-11-28 20:35:15', null);
INSERT INTO `bf_order_detail` VALUES ('271', '123', '肉包', '1', '2', null, '2017-11-28 20:35:35', '2017-11-28 20:35:35', null);
INSERT INTO `bf_order_detail` VALUES ('272', '123', '肉包', '1', '1', null, '2017-11-28 23:34:49', '2017-11-28 23:34:49', null);
INSERT INTO `bf_order_detail` VALUES ('273', '128', '白菜包子', '1', '1', null, '2017-11-29 10:58:00', '2017-11-29 10:58:00', null);
INSERT INTO `bf_order_detail` VALUES ('274', '128', '白菜包子', '1', '1', null, '2017-11-29 11:05:54', '2017-11-29 11:05:54', null);
INSERT INTO `bf_order_detail` VALUES ('275', '128', '白菜包子', '1', '1', null, '2017-11-29 11:07:18', '2017-11-29 11:07:18', null);
INSERT INTO `bf_order_detail` VALUES ('276', '123', '肉包', '1', '1', null, '2017-11-29 11:32:30', '2017-11-29 11:32:30', null);
INSERT INTO `bf_order_detail` VALUES ('277', '128', '白菜包子', '1', '1', null, '2017-11-29 13:15:38', '2017-11-29 13:15:38', null);
INSERT INTO `bf_order_detail` VALUES ('278', '128', '白菜包子', '1', '11', null, '2017-11-29 13:16:29', '2017-11-29 13:16:29', null);
INSERT INTO `bf_order_detail` VALUES ('279', '123', '肉包', '1', '1', null, '2017-11-29 14:08:40', '2017-11-29 14:08:40', null);
INSERT INTO `bf_order_detail` VALUES ('280', '123', '肉包', '1', '1', null, '2017-11-29 14:09:02', '2017-11-29 14:09:02', null);
INSERT INTO `bf_order_detail` VALUES ('281', '123', '肉包', '1', '1', null, '2017-11-29 14:29:31', '2017-11-29 14:29:31', null);
INSERT INTO `bf_order_detail` VALUES ('282', '124', '豆浆', '1', '1', null, '2017-11-29 14:29:31', '2017-11-29 14:29:31', null);
INSERT INTO `bf_order_detail` VALUES ('283', '128', '白菜包子', '1', '11', null, '2017-11-29 16:21:59', '2017-11-29 16:21:59', null);
INSERT INTO `bf_order_detail` VALUES ('284', '128', '白菜包子', '1', '1', null, '2017-11-29 18:15:21', '2017-11-29 18:15:21', null);
INSERT INTO `bf_order_detail` VALUES ('285', '123', '肉包', '1', '1', null, '2017-11-30 08:57:33', '2017-11-30 08:57:33', null);
INSERT INTO `bf_order_detail` VALUES ('286', '124', '豆浆', '1', '1', null, '2017-11-30 08:57:33', '2017-11-30 08:57:33', null);
INSERT INTO `bf_order_detail` VALUES ('287', '125', '虾饺', '1', '1', null, '2017-11-30 08:57:33', '2017-11-30 08:57:33', null);
INSERT INTO `bf_order_detail` VALUES ('288', '123', '肉包', '1', '1', null, '2017-11-30 08:57:49', '2017-11-30 08:57:49', null);
INSERT INTO `bf_order_detail` VALUES ('289', '124', '豆浆', '1', '1', null, '2017-11-30 08:57:49', '2017-11-30 08:57:49', null);
INSERT INTO `bf_order_detail` VALUES ('290', '125', '虾饺', '1', '1', null, '2017-11-30 08:57:49', '2017-11-30 08:57:49', null);
INSERT INTO `bf_order_detail` VALUES ('291', '123', '肉包', '1', '1', null, '2017-11-30 09:55:15', '2017-11-30 09:55:15', null);
INSERT INTO `bf_order_detail` VALUES ('292', '123', '肉包', '1', '1', null, '2017-11-30 11:34:25', '2017-11-30 11:34:25', null);
INSERT INTO `bf_order_detail` VALUES ('293', '124', '豆浆', '1', '1', null, '2017-11-30 11:34:43', '2017-11-30 11:34:43', null);
INSERT INTO `bf_order_detail` VALUES ('294', '128', '白菜包子', '1', '1', null, '2017-11-30 17:37:03', '2017-11-30 17:37:03', null);
INSERT INTO `bf_order_detail` VALUES ('295', '128', '白菜包子', '1', '1', null, '2017-11-30 17:42:22', '2017-11-30 17:42:22', null);
INSERT INTO `bf_order_detail` VALUES ('296', '123', '肉包', '1', '1', null, '2017-12-01 17:42:04', '2017-12-01 17:42:04', null);

-- ----------------------------
-- Table structure for bf_org
-- ----------------------------
DROP TABLE IF EXISTS `bf_org`;
CREATE TABLE `bf_org` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) NOT NULL DEFAULT '0' COMMENT '上级节点ID',
  `name` varchar(80) NOT NULL COMMENT '组织结构名称',
  `code` varchar(30) DEFAULT '1' COMMENT '组织结构编码',
  `sort` int(11) DEFAULT NULL COMMENT '排序号',
  `status` int(11) DEFAULT NULL COMMENT '启用、禁用',
  `level` int(11) DEFAULT '1' COMMENT '0：顶级（虚拟的）；1：第一级别；最多5级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='组织信息表';

-- ----------------------------
-- Records of bf_org
-- ----------------------------

-- ----------------------------
-- Table structure for bf_package_product
-- ----------------------------
DROP TABLE IF EXISTS `bf_package_product`;
CREATE TABLE `bf_package_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `package_name` varchar(32) DEFAULT NULL COMMENT '套餐名称',
  `package_money` decimal(10,1) DEFAULT NULL COMMENT '套餐价格',
  `package_amount` int(20) DEFAULT '0' COMMENT '每日预计数量',
  `real_amount` int(20) DEFAULT '0' COMMENT '库存剩余数量',
  `pack_status` char(1) DEFAULT NULL COMMENT '套餐状态：1、售卖中，2、已售罄',
  `shop_id` bigint(20) DEFAULT NULL COMMENT '店铺id',
  `name` varchar(32) DEFAULT NULL COMMENT '店铺名',
  `single_id` varchar(32) DEFAULT NULL COMMENT '单品列表id_list（逗号分隔）',
  `operater` varchar(32) DEFAULT NULL COMMENT '操作人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(128) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='店铺套餐商品表';

-- ----------------------------
-- Records of bf_package_product
-- ----------------------------
INSERT INTO `bf_package_product` VALUES ('20', '超级豪华套餐', '50.0', '1000', '0', '2', '27', '快乐早点001', '126,127,', '快乐早点001', '2017-11-29 10:42:51', '2017-11-29 10:42:51', null);

-- ----------------------------
-- Table structure for bf_refund_record
-- ----------------------------
DROP TABLE IF EXISTS `bf_refund_record`;
CREATE TABLE `bf_refund_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `refund_remark` varchar(128) DEFAULT NULL COMMENT '退款说明',
  `type` char(1) DEFAULT NULL COMMENT '退款类型：1、没有拿到早餐，2、早餐质量问题，3、其他',
  `photo` varchar(100) DEFAULT NULL COMMENT '图片',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `phone` char(11) DEFAULT NULL COMMENT '用户手机号',
  `shop_id` bigint(20) DEFAULT NULL COMMENT '店铺id',
  `shop_name` varchar(32) DEFAULT NULL COMMENT '店铺名',
  `order_id` bigint(20) DEFAULT NULL COMMENT '订单id',
  `order_no` varchar(64) DEFAULT NULL COMMENT '订单号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(128) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_orderNo` (`order_no`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='退款申请表';

-- ----------------------------
-- Records of bf_refund_record
-- ----------------------------
INSERT INTO `bf_refund_record` VALUES ('43', '', '2', '/group1/M00/00/04/Oy2pCVodVy6AXsfUACv5ambJw7w243.png', '35', '18997336712', '25', '芳芳早餐', '219', 'N20171128202841_245772', '2017-11-28 20:31:42', '2017-11-28 20:31:42', '申请退款');
INSERT INTO `bf_refund_record` VALUES ('44', '金龙门', '1', '/group1/M00/00/04/Oy2pCVoeKP6ASXwYAAAllTP2EYA990.png', '37', '13838146609', '25', '芳芳早餐', '216', 'N20171128202145_76029', '2017-11-29 11:26:54', '2017-11-29 11:26:54', '申请退款');
INSERT INTO `bf_refund_record` VALUES ('45', '', '1', '/group1/M00/00/04/Oy2pCVoeSBSAHQBEAAWhk4cHOMo308.png', '39', '15303281650', '29', '雨店', '224', 'N20171129110554_521111', '2017-11-29 13:39:32', '2017-11-29 13:39:32', '申请退款');
INSERT INTO `bf_refund_record` VALUES ('46', '', '1', '/group1/M00/00/04/Oy2pCVoeSQaAD5xFAAWC1_a1uB0362.png', '39', '15303281650', '29', '雨店', '225', 'N20171129110718_506208', '2017-11-29 13:43:34', '2017-11-29 13:43:34', '申请退款');
INSERT INTO `bf_refund_record` VALUES ('47', '', '1', '/group1/M00/00/04/Oy2pCVoeSXGARY3EAAdJQtEUO5Q872.png', '39', '15303281650', '29', '雨店', '228', 'N20171129131629_316372', '2017-11-29 13:45:21', '2017-11-29 13:45:21', '申请退款');
INSERT INTO `bf_refund_record` VALUES ('48', '', '2', '/group1/M00/00/04/Oy2pCVoeUZGARZ2mAE7b2ss0ZPs528.png', '46', '18297135748', '25', '芳芳早餐', '229', 'N20171129140840_322728', '2017-11-29 14:20:01', '2017-11-29 14:20:01', '申请退款');
INSERT INTO `bf_refund_record` VALUES ('49', '', '2', '/group1/M00/00/04/Oy2pCVoeUueASvXMADAkgJLuP0c845.png', '46', '18297135748', '25', '芳芳早餐', '230', 'N20171129140902_545930', '2017-11-29 14:25:43', '2017-11-29 14:25:43', '申请退款');
INSERT INTO `bf_refund_record` VALUES ('50', '', '1', '/group1/M00/00/05/Oy2pCVof0c-Af_i-AAVANBonggc641.png', '39', '15303281650', '29', '雨店', '239', 'N20171130173703_051760', '2017-11-30 17:39:27', '2017-11-30 17:39:27', '申请退款');
INSERT INTO `bf_refund_record` VALUES ('51', '', '1', '/group1/M00/00/05/Oy2pCVof1MWAJppXAADy3BwOX9s153.png', '39', '15303281650', '29', '雨店', '240', 'N20171130174222_819770', '2017-11-30 17:52:05', '2017-11-30 17:52:05', '申请退款');

-- ----------------------------
-- Table structure for bf_role
-- ----------------------------
DROP TABLE IF EXISTS `bf_role`;
CREATE TABLE `bf_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_id` bigint(20) DEFAULT NULL,
  `roleName` varchar(20) DEFAULT NULL,
  `roleDesc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_role
-- ----------------------------
INSERT INTO `bf_role` VALUES ('1', '1', '普通管理员', '普通管理员');
INSERT INTO `bf_role` VALUES ('3', '1', '账户管理员', '账户管理员');
INSERT INTO `bf_role` VALUES ('4', '1', '运营单位管理', '运营单位角色');

-- ----------------------------
-- Table structure for bf_role2menu
-- ----------------------------
DROP TABLE IF EXISTS `bf_role2menu`;
CREATE TABLE `bf_role2menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `roleId` bigint(20) DEFAULT NULL,
  `menuId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=683 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_role2menu
-- ----------------------------
INSERT INTO `bf_role2menu` VALUES ('250', '3', '1');
INSERT INTO `bf_role2menu` VALUES ('251', '3', '2');
INSERT INTO `bf_role2menu` VALUES ('252', '3', '3');
INSERT INTO `bf_role2menu` VALUES ('253', '3', '4');
INSERT INTO `bf_role2menu` VALUES ('254', '3', '5');
INSERT INTO `bf_role2menu` VALUES ('255', '3', '6');
INSERT INTO `bf_role2menu` VALUES ('256', '3', '7');
INSERT INTO `bf_role2menu` VALUES ('257', '3', '8');
INSERT INTO `bf_role2menu` VALUES ('258', '3', '9');
INSERT INTO `bf_role2menu` VALUES ('259', '3', '10');
INSERT INTO `bf_role2menu` VALUES ('260', '3', '11');
INSERT INTO `bf_role2menu` VALUES ('261', '3', '12');
INSERT INTO `bf_role2menu` VALUES ('262', '3', '13');
INSERT INTO `bf_role2menu` VALUES ('263', '3', '14');
INSERT INTO `bf_role2menu` VALUES ('264', '3', '15');
INSERT INTO `bf_role2menu` VALUES ('265', '3', '16');
INSERT INTO `bf_role2menu` VALUES ('266', '3', '17');
INSERT INTO `bf_role2menu` VALUES ('267', '3', '18');
INSERT INTO `bf_role2menu` VALUES ('268', '3', '19');
INSERT INTO `bf_role2menu` VALUES ('269', '3', '20');
INSERT INTO `bf_role2menu` VALUES ('270', '3', '21');
INSERT INTO `bf_role2menu` VALUES ('271', '3', '22');
INSERT INTO `bf_role2menu` VALUES ('272', '3', '23');
INSERT INTO `bf_role2menu` VALUES ('273', '3', '24');
INSERT INTO `bf_role2menu` VALUES ('274', '3', '25');
INSERT INTO `bf_role2menu` VALUES ('275', '3', '36');
INSERT INTO `bf_role2menu` VALUES ('276', '3', '33');
INSERT INTO `bf_role2menu` VALUES ('529', '5', '1');
INSERT INTO `bf_role2menu` VALUES ('530', '5', '2');
INSERT INTO `bf_role2menu` VALUES ('531', '5', '17');
INSERT INTO `bf_role2menu` VALUES ('532', '5', '19');
INSERT INTO `bf_role2menu` VALUES ('533', '5', '26');
INSERT INTO `bf_role2menu` VALUES ('534', '5', '27');
INSERT INTO `bf_role2menu` VALUES ('535', '5', '28');
INSERT INTO `bf_role2menu` VALUES ('536', '5', '29');
INSERT INTO `bf_role2menu` VALUES ('537', '5', '30');
INSERT INTO `bf_role2menu` VALUES ('538', '5', '31');
INSERT INTO `bf_role2menu` VALUES ('539', '5', '32');
INSERT INTO `bf_role2menu` VALUES ('540', '5', '33');
INSERT INTO `bf_role2menu` VALUES ('541', '5', '34');
INSERT INTO `bf_role2menu` VALUES ('542', '5', '35');
INSERT INTO `bf_role2menu` VALUES ('543', '5', '37');
INSERT INTO `bf_role2menu` VALUES ('544', '5', '38');
INSERT INTO `bf_role2menu` VALUES ('545', '5', '39');
INSERT INTO `bf_role2menu` VALUES ('546', '5', '40');
INSERT INTO `bf_role2menu` VALUES ('547', '5', '41');
INSERT INTO `bf_role2menu` VALUES ('548', '5', '42');
INSERT INTO `bf_role2menu` VALUES ('549', '5', '43');
INSERT INTO `bf_role2menu` VALUES ('550', '5', '44');
INSERT INTO `bf_role2menu` VALUES ('551', '5', '45');
INSERT INTO `bf_role2menu` VALUES ('552', '5', '46');
INSERT INTO `bf_role2menu` VALUES ('553', '5', '47');
INSERT INTO `bf_role2menu` VALUES ('554', '5', '48');
INSERT INTO `bf_role2menu` VALUES ('555', '5', '49');
INSERT INTO `bf_role2menu` VALUES ('556', '5', '50');
INSERT INTO `bf_role2menu` VALUES ('557', '5', '52');
INSERT INTO `bf_role2menu` VALUES ('558', '5', '53');
INSERT INTO `bf_role2menu` VALUES ('559', '5', '54');
INSERT INTO `bf_role2menu` VALUES ('560', '5', '59');
INSERT INTO `bf_role2menu` VALUES ('561', '5', '60');
INSERT INTO `bf_role2menu` VALUES ('562', '5', '61');
INSERT INTO `bf_role2menu` VALUES ('563', '5', '63');
INSERT INTO `bf_role2menu` VALUES ('564', '5', '64');
INSERT INTO `bf_role2menu` VALUES ('565', '5', '65');
INSERT INTO `bf_role2menu` VALUES ('566', '5', '66');
INSERT INTO `bf_role2menu` VALUES ('567', '5', '67');
INSERT INTO `bf_role2menu` VALUES ('568', '5', '3');
INSERT INTO `bf_role2menu` VALUES ('622', '6', '1');
INSERT INTO `bf_role2menu` VALUES ('623', '6', '13');
INSERT INTO `bf_role2menu` VALUES ('624', '6', '17');
INSERT INTO `bf_role2menu` VALUES ('625', '6', '20');
INSERT INTO `bf_role2menu` VALUES ('626', '6', '26');
INSERT INTO `bf_role2menu` VALUES ('627', '6', '37');
INSERT INTO `bf_role2menu` VALUES ('628', '6', '47');
INSERT INTO `bf_role2menu` VALUES ('629', '6', '52');
INSERT INTO `bf_role2menu` VALUES ('630', '6', '55');
INSERT INTO `bf_role2menu` VALUES ('631', '6', '59');
INSERT INTO `bf_role2menu` VALUES ('632', '6', '61');
INSERT INTO `bf_role2menu` VALUES ('633', '6', '2');
INSERT INTO `bf_role2menu` VALUES ('634', '6', '3');
INSERT INTO `bf_role2menu` VALUES ('635', '6', '6');
INSERT INTO `bf_role2menu` VALUES ('636', '6', '14');
INSERT INTO `bf_role2menu` VALUES ('637', '6', '15');
INSERT INTO `bf_role2menu` VALUES ('638', '6', '19');
INSERT INTO `bf_role2menu` VALUES ('639', '6', '21');
INSERT INTO `bf_role2menu` VALUES ('640', '6', '22');
INSERT INTO `bf_role2menu` VALUES ('641', '6', '23');
INSERT INTO `bf_role2menu` VALUES ('642', '6', '24');
INSERT INTO `bf_role2menu` VALUES ('643', '6', '25');
INSERT INTO `bf_role2menu` VALUES ('644', '6', '27');
INSERT INTO `bf_role2menu` VALUES ('645', '6', '28');
INSERT INTO `bf_role2menu` VALUES ('646', '6', '29');
INSERT INTO `bf_role2menu` VALUES ('647', '6', '30');
INSERT INTO `bf_role2menu` VALUES ('648', '6', '31');
INSERT INTO `bf_role2menu` VALUES ('649', '6', '32');
INSERT INTO `bf_role2menu` VALUES ('650', '6', '38');
INSERT INTO `bf_role2menu` VALUES ('651', '6', '39');
INSERT INTO `bf_role2menu` VALUES ('652', '6', '40');
INSERT INTO `bf_role2menu` VALUES ('653', '6', '41');
INSERT INTO `bf_role2menu` VALUES ('654', '6', '42');
INSERT INTO `bf_role2menu` VALUES ('655', '6', '43');
INSERT INTO `bf_role2menu` VALUES ('656', '6', '44');
INSERT INTO `bf_role2menu` VALUES ('657', '6', '45');
INSERT INTO `bf_role2menu` VALUES ('658', '6', '46');
INSERT INTO `bf_role2menu` VALUES ('659', '6', '48');
INSERT INTO `bf_role2menu` VALUES ('660', '6', '49');
INSERT INTO `bf_role2menu` VALUES ('661', '6', '50');
INSERT INTO `bf_role2menu` VALUES ('662', '6', '51');
INSERT INTO `bf_role2menu` VALUES ('663', '6', '53');
INSERT INTO `bf_role2menu` VALUES ('664', '6', '54');
INSERT INTO `bf_role2menu` VALUES ('665', '6', '56');
INSERT INTO `bf_role2menu` VALUES ('666', '6', '57');
INSERT INTO `bf_role2menu` VALUES ('667', '6', '58');
INSERT INTO `bf_role2menu` VALUES ('668', '6', '60');
INSERT INTO `bf_role2menu` VALUES ('669', '6', '62');
INSERT INTO `bf_role2menu` VALUES ('670', '6', '63');
INSERT INTO `bf_role2menu` VALUES ('671', '6', '64');
INSERT INTO `bf_role2menu` VALUES ('672', '6', '65');
INSERT INTO `bf_role2menu` VALUES ('673', '6', '66');
INSERT INTO `bf_role2menu` VALUES ('674', '6', '67');
INSERT INTO `bf_role2menu` VALUES ('675', '6', '69');
INSERT INTO `bf_role2menu` VALUES ('676', '6', '70');
INSERT INTO `bf_role2menu` VALUES ('677', '4', '1');
INSERT INTO `bf_role2menu` VALUES ('678', '4', '2');
INSERT INTO `bf_role2menu` VALUES ('679', '4', '3');
INSERT INTO `bf_role2menu` VALUES ('680', '4', '78');
INSERT INTO `bf_role2menu` VALUES ('681', '4', '79');
INSERT INTO `bf_role2menu` VALUES ('682', '4', '80');

-- ----------------------------
-- Table structure for bf_role2op
-- ----------------------------
DROP TABLE IF EXISTS `bf_role2op`;
CREATE TABLE `bf_role2op` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `roleId` bigint(20) DEFAULT NULL,
  `opId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2647 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_role2op
-- ----------------------------
INSERT INTO `bf_role2op` VALUES ('2630', '24', '164');
INSERT INTO `bf_role2op` VALUES ('2631', '25', '165');
INSERT INTO `bf_role2op` VALUES ('2634', '11', '1');
INSERT INTO `bf_role2op` VALUES ('2635', '4', '2');
INSERT INTO `bf_role2op` VALUES ('2636', '5', '1');
INSERT INTO `bf_role2op` VALUES ('2637', '5', '4');
INSERT INTO `bf_role2op` VALUES ('2638', '13', '1');
INSERT INTO `bf_role2op` VALUES ('2639', '13', '2');
INSERT INTO `bf_role2op` VALUES ('2642', '1', '2');
INSERT INTO `bf_role2op` VALUES ('2645', '17', '1');
INSERT INTO `bf_role2op` VALUES ('2646', '17', '2');

-- ----------------------------
-- Table structure for bf_shop
-- ----------------------------
DROP TABLE IF EXISTS `bf_shop`;
CREATE TABLE `bf_shop` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(32) DEFAULT NULL COMMENT '店铺名称',
  `position` varchar(32) DEFAULT NULL COMMENT '店铺位置',
  `phone` char(11) DEFAULT NULL COMMENT '手机号',
  `photo` varchar(100) DEFAULT NULL COMMENT '门脸照',
  `address` varchar(64) DEFAULT NULL COMMENT '详细地址',
  `longitude` double(17,3) DEFAULT NULL COMMENT '经度',
  `latitude` double(17,3) DEFAULT NULL COMMENT '纬度',
  `card_name` varchar(32) DEFAULT NULL COMMENT '开户人姓名',
  `card_no` varchar(32) DEFAULT NULL COMMENT '银行卡号（也是收款卡号）',
  `card_photo_u` varchar(100) DEFAULT NULL COMMENT '身份证照片---正面',
  `card_photo_o` varchar(100) DEFAULT NULL COMMENT '身份证照片---反面',
  `business_photo` varchar(100) DEFAULT NULL COMMENT '营业执照',
  `license_photo` varchar(100) DEFAULT NULL COMMENT '餐饮行业许可证(或卫生许可证)',
  `register_time` datetime DEFAULT NULL COMMENT '注册时间(精确到日)',
  `subway_id` bigint(20) DEFAULT NULL COMMENT '地铁表id',
  `business_status` char(1) DEFAULT NULL COMMENT '状态：1、营业中 2、打烊（红色）',
  `certified_status` char(1) DEFAULT NULL COMMENT '认证情况：1、已认证（绿色） 2、未认证（红色）',
  `operater` varchar(32) DEFAULT NULL COMMENT '操作人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(128) DEFAULT NULL COMMENT '备注',
  `is_flag` char(1) DEFAULT NULL COMMENT '开店信息是否完整：1、是，2、否',
  `info_status` char(1) DEFAULT '0' COMMENT '默认为0，注册成功为1，店铺信息填写为2，银行卡信息填写为3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_shop
-- ----------------------------
INSERT INTO `bf_shop` VALUES ('25', '芳芳早餐', null, '15003656493', '/group1/M00/00/04/Oy2pCVodTUqALwtZAADROuKUgKk740.png', '城北路', '101.756', '36.687', '逯登芳', '6217004400008243760', '/group1/M00/00/04/Oy2pCVoffvuAMRvmAAColUJGrO0945.png', '/group1/M00/00/04/Oy2pCVoffvuAB-KhAACwbaLWzw4520.png', '/group1/M00/00/04/Oy2pCVoffvuAXPkBAADFBpfNBM4325.png', '/group1/M00/00/04/Oy2pCVoffvuAN5V_AADRcbo9vVI151.png', null, '1', '1', '1', null, '2017-11-28 19:49:30', '2017-11-28 19:48:23', null, '1', '3');
INSERT INTO `bf_shop` VALUES ('27', '快乐早点001', null, '18830358180', '/group1/M00/00/04/Oy2pCVoeHj6AAp6NAAB9-2vbbmE587.png', '长远天地1', '116.422', '40.090', '周雨', '6222600255741', null, null, null, null, null, '951', '2', null, null, '2017-11-28 23:28:54', '2017-11-28 23:23:56', null, '2', '3');
INSERT INTO `bf_shop` VALUES ('28', '快乐早点', null, '18911156925', '/group1/M00/00/04/Oy2pCVoeHLSAUyrpAAE0SnWWZM8821.png', '广渠门188552号', '116.313', '39.985', '张三', '4215555355', null, null, null, null, null, '648', '2', null, null, '2017-11-29 10:34:28', '2017-11-28 23:31:11', null, '2', '3');
INSERT INTO `bf_shop` VALUES ('29', '雨店1', null, '15303281650', '/group1/M00/00/04/Oy2pCVoeITeARP5MAAC-tH441H8893.png', '长远天地1号楼', '116.313', '39.985', '周雨', '6222620910022553741', null, null, null, null, null, '951', '1', null, null, '2017-11-29 10:53:43', '2017-12-04 15:18:30', null, '2', '3');

-- ----------------------------
-- Table structure for bf_singe_product
-- ----------------------------
DROP TABLE IF EXISTS `bf_singe_product`;
CREATE TABLE `bf_singe_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `single_name` varchar(32) DEFAULT NULL COMMENT '单品名称',
  `single_money` decimal(10,1) DEFAULT '0.0' COMMENT '单品单价',
  `single_amount` int(20) DEFAULT '0' COMMENT '每日预销售数量',
  `real_amount` int(20) DEFAULT '0' COMMENT '库存剩余数量',
  `status` char(1) DEFAULT NULL COMMENT '商品状态:1、售卖中2、已售罄',
  `photo` varchar(100) DEFAULT NULL COMMENT '商品图片',
  `shop_id` bigint(20) DEFAULT NULL COMMENT '店铺id',
  `shop_name` varchar(32) DEFAULT NULL COMMENT '店铺名',
  `single_type` char(1) DEFAULT NULL COMMENT '单品类型：1.套餐内单品，2、非套餐内',
  `operater` varchar(32) DEFAULT NULL COMMENT '操作人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(128) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8 COMMENT='店铺单品商品表';

-- ----------------------------
-- Records of bf_singe_product
-- ----------------------------
INSERT INTO `bf_singe_product` VALUES ('123', '肉包', '1.0', '2', '2', '1', null, '25', '芳芳早餐', '2', '芳芳早餐', '2017-11-28 19:50:40', '2017-11-28 19:50:40', null);
INSERT INTO `bf_singe_product` VALUES ('124', '豆浆', '1.5', '10', '10', '1', null, '25', '芳芳早餐', '2', '芳芳早餐', '2017-11-28 19:56:01', '2017-11-28 19:56:01', null);
INSERT INTO `bf_singe_product` VALUES ('125', '虾饺', '1.5', '10', '10', '1', null, '25', '芳芳早餐', '2', '芳芳早餐', '2017-11-28 19:56:15', '2017-11-28 19:56:15', null);
INSERT INTO `bf_singe_product` VALUES ('126', '牛肉包', '0.0', '10', '0', '1', null, '27', '快乐早点001', '1', '快乐早点001', '2017-11-29 10:42:51', '2017-11-29 10:42:51', null);
INSERT INTO `bf_singe_product` VALUES ('127', '现磨豆浆', '0.0', '12', '0', '1', null, '27', '快乐早点001', '1', '快乐早点001', '2017-11-29 10:42:51', '2017-11-29 10:42:51', null);
INSERT INTO `bf_singe_product` VALUES ('128', '白菜包子', '0.1', '1000', '1000', '1', null, '29', '雨店', '2', '雨店', '2017-11-29 10:56:12', '2017-11-29 10:56:12', null);
INSERT INTO `bf_singe_product` VALUES ('129', '豆浆', '1.5', '10', '10', '1', null, '25', '芳芳早餐', '2', '芳芳早餐', '2017-11-30 14:18:07', '2017-11-30 14:18:07', null);

-- ----------------------------
-- Table structure for bf_subway
-- ----------------------------
DROP TABLE IF EXISTS `bf_subway`;
CREATE TABLE `bf_subway` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `city_id` int(11) DEFAULT NULL COMMENT '城市id',
  `subway_name` varchar(64) NOT NULL DEFAULT '' COMMENT '地铁名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地铁线路表';

-- ----------------------------
-- Records of bf_subway
-- ----------------------------

-- ----------------------------
-- Table structure for bf_subway_exit
-- ----------------------------
DROP TABLE IF EXISTS `bf_subway_exit`;
CREATE TABLE `bf_subway_exit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `station_id` int(11) DEFAULT NULL COMMENT '地铁站名id',
  `exit_name` varchar(64) NOT NULL DEFAULT '' COMMENT '出门名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地铁出口表';

-- ----------------------------
-- Records of bf_subway_exit
-- ----------------------------

-- ----------------------------
-- Table structure for bf_subway_line
-- ----------------------------
DROP TABLE IF EXISTS `bf_subway_line`;
CREATE TABLE `bf_subway_line` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `city_name` varchar(32) DEFAULT NULL COMMENT '城市名',
  `subway_line` varchar(32) DEFAULT NULL COMMENT '地铁路线',
  `subway_name` varchar(32) DEFAULT NULL COMMENT '地铁站名',
  `subway_out` varchar(32) DEFAULT NULL COMMENT '地铁出口',
  `operater` varchar(32) DEFAULT NULL COMMENT '操作人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(128) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1391 DEFAULT CHARSET=utf8 COMMENT='地铁线路位置表';

-- ----------------------------
-- Records of bf_subway_line
-- ----------------------------
INSERT INTO `bf_subway_line` VALUES ('1', '北京', '1号线', '苹果园', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('2', '北京', '1号线', '苹果园', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('3', '北京', '1号线', '苹果园', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('4', '北京', '1号线', '苹果园', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('5', '北京', '1号线', '古城', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('6', '北京', '1号线', '古城', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('7', '北京', '1号线', '古城', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('8', '北京', '1号线', '古城', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('9', '北京', '1号线', '八角游乐园', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('10', '北京', '1号线', '八角游乐园', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('11', '北京', '1号线', '八宝山', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('12', '北京', '1号线', '八宝山', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('13', '北京', '1号线', '八宝山', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('14', '北京', '1号线', '八宝山', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('15', '北京', '1号线', '八宝山', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('16', '北京', '1号线', '玉泉路', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('17', '北京', '1号线', '玉泉路', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('18', '北京', '1号线', '玉泉路', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('19', '北京', '1号线', '玉泉路', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('20', '北京', '1号线', '玉泉路', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('21', '北京', '1号线', '玉泉路', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('22', '北京', '1号线', '玉泉路', 'D1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('23', '北京', '1号线', '玉泉路', 'D2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('24', '北京', '1号线', '五棵松', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('25', '北京', '1号线', '五棵松', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('26', '北京', '1号线', '五棵松', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('27', '北京', '1号线', '五棵松', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('28', '北京', '1号线', '五棵松', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('29', '北京', '1号线', '五棵松', 'D1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('30', '北京', '1号线', '五棵松', 'D2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('31', '北京', '1号线', '万寿路', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('32', '北京', '1号线', '万寿路', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('33', '北京', '1号线', '万寿路', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('34', '北京', '1号线', '万寿路', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('35', '北京', '1号线', '万寿路', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('36', '北京', '1号线', '万寿路', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('37', '北京', '1号线', '万寿路', 'D1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('38', '北京', '1号线', '万寿路', 'D2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('39', '北京', '1号线', '公主坟', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('40', '北京', '1号线', '公主坟', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('41', '北京', '1号线', '公主坟', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('42', '北京', '1号线', '公主坟', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('43', '北京', '1号线', '军事博物馆', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('44', '北京', '1号线', '军事博物馆', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('45', '北京', '1号线', '军事博物馆', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('46', '北京', '1号线', '军事博物馆', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('47', '北京', '1号线', '军事博物馆', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('48', '北京', '1号线', '军事博物馆', 'E1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('49', '北京', '1号线', '军事博物馆', 'E2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('50', '北京', '1号线', '军事博物馆', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('51', '北京', '1号线', '军事博物馆', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('52', '北京', '1号线', '木樨地', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('53', '北京', '1号线', '木樨地', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('54', '北京', '1号线', '木樨地', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('55', '北京', '1号线', '木樨地', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('56', '北京', '1号线', '木樨地', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('57', '北京', '1号线', '木樨地', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('58', '北京', '1号线', '木樨地', 'D1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('59', '北京', '1号线', '木樨地', 'D2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('60', '北京', '1号线', '南礼士路', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('61', '北京', '1号线', '南礼士路', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('62', '北京', '1号线', '南礼士路', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('63', '北京', '1号线', '南礼士路', 'D1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('64', '北京', '1号线', '南礼士路', 'D2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('65', '北京', '1号线', '复兴门', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('66', '北京', '1号线', '复兴门', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('67', '北京', '1号线', '复兴门', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('68', '北京', '1号线', '复兴门', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('69', '北京', '1号线', '西单', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('70', '北京', '1号线', '西单', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('71', '北京', '1号线', '西单', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('72', '北京', '1号线', '西单', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('73', '北京', '1号线', '西单', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('74', '北京', '1号线', '西单', 'F1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('75', '北京', '1号线', '西单', 'F2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('76', '北京', '1号线', '西单', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('77', '北京', '1号线', '西单', 'J1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('78', '北京', '1号线', '西单', 'J2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('79', '北京', '1号线', '天安门西', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('80', '北京', '1号线', '天安门西', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('81', '北京', '1号线', '天安门西', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('82', '北京', '1号线', '天安门东', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('83', '北京', '1号线', '天安门东', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('84', '北京', '1号线', '天安门东', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('85', '北京', '1号线', '天安门东', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('86', '北京', '1号线', '王府井', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('87', '北京', '1号线', '王府井', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('88', '北京', '1号线', '王府井', 'B3口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('89', '北京', '1号线', '王府井', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('90', '北京', '1号线', '王府井', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('91', '北京', '1号线', '王府井', 'C3口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('92', '北京', '1号线', '王府井', 'C4口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('93', '北京', '1号线', '东单', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('94', '北京', '1号线', '东单', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('95', '北京', '1号线', '东单', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('96', '北京', '1号线', '东单', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('97', '北京', '1号线', '东单', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('98', '北京', '1号线', '东单', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('99', '北京', '1号线', '东单', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('100', '北京', '1号线', '建国门', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('101', '北京', '1号线', '建国门', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('102', '北京', '1号线', '建国门', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('103', '北京', '1号线', '永安里', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('104', '北京', '1号线', '永安里', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('105', '北京', '1号线', '永安里', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('106', '北京', '1号线', '国贸', '3口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('107', '北京', '1号线', '国贸', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('108', '北京', '1号线', '国贸', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('109', '北京', '1号线', '国贸', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('110', '北京', '1号线', '国贸', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('111', '北京', '1号线', '国贸', 'E1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('112', '北京', '1号线', '国贸', 'E2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('113', '北京', '1号线', '国贸', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('114', '北京', '1号线', '国贸', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('115', '北京', '1号线', '大望路', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('116', '北京', '1号线', '大望路', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('117', '北京', '1号线', '大望路', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('118', '北京', '1号线', '大望路', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('119', '北京', '1号线', '大望路', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('120', '北京', '1号线', '大望路', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('121', '北京', '1号线', '大望路', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('122', '北京', '1号线', '四惠', 'A口 ', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('123', '北京', '1号线', '四惠', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('124', '北京', '1号线', '四惠', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('125', '北京', '1号线', '四惠', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('126', '北京', '1号线', '四惠', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('127', '北京', '1号线', '四惠', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('128', '北京', '1号线', '四惠东', 'A口 ', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('129', '北京', '1号线', '四惠东', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('130', '北京', '2号线', '西直门', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('131', '北京', '2号线', '西直门', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('132', '北京', '2号线', '西直门', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('133', '北京', '2号线', '西直门', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('134', '北京', '2号线', '西直门', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('135', '北京', '2号线', '车公主', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('136', '北京', '2号线', '车公主', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('137', '北京', '2号线', '车公主', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('138', '北京', '2号线', '车公主', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('139', '北京', '2号线', '阜成门', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('140', '北京', '2号线', '阜成门', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('141', '北京', '2号线', '阜成门', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('142', '北京', '2号线', '阜成门', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('143', '北京', '2号线', '复兴门', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('144', '北京', '2号线', '复兴门', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('145', '北京', '2号线', '复兴门', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('146', '北京', '2号线', '长椿街', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('147', '北京', '2号线', '长椿街', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('148', '北京', '2号线', '长椿街', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('149', '北京', '2号线', '长椿街', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('150', '北京', '2号线', '长椿街', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('151', '北京', '2号线', '长椿街', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('152', '北京', '2号线', '长椿街', 'D1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('153', '北京', '2号线', '长椿街', 'D2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('154', '北京', '2号线', '宣武门', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('155', '北京', '2号线', '宣武门', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('156', '北京', '2号线', '宣武门', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('157', '北京', '2号线', '宣武门', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('158', '北京', '2号线', '宣武门', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('159', '北京', '2号线', '宣武门', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('160', '北京', '2号线', '宣武门', 'D1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('161', '北京', '2号线', '宣武门', 'D2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('162', '北京', '2号线', '宣武门', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('163', '北京', '2号线', '宣武门', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('164', '北京', '2号线', '宣武门', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('165', '北京', '2号线', '和平门', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('166', '北京', '2号线', '和平门', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('167', '北京', '2号线', '和平门', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('168', '北京', '2号线', '和平门', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('169', '北京', '2号线', '和平门', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('170', '北京', '2号线', '和平门', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('171', '北京', '2号线', '和平门', 'D1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('172', '北京', '2号线', '和平门', 'D2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('173', '北京', '2号线', '前门', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('174', '北京', '2号线', '前门', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('175', '北京', '2号线', '前门', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('176', '北京', '2号线', '崇文门', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('177', '北京', '2号线', '崇文门', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('178', '北京', '2号线', '崇文门', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('179', '北京', '2号线', '崇文门', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('180', '北京', '2号线', '崇文门', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('181', '北京', '2号线', '崇文门', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('182', '北京', '2号线', '崇文门', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('183', '北京', '2号线', '崇文门', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('184', '北京', '2号线', '崇文门', 'G1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('185', '北京', '2号线', '崇文门', 'G2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('186', '北京', '2号线', '崇文门', 'H1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('187', '北京', '2号线', '崇文门', 'H2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('188', '北京', '2号线', '北京站', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('189', '北京', '2号线', '北京站', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('190', '北京', '2号线', '北京站', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('191', '北京', '2号线', '北京站', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('192', '北京', '2号线', '建国门', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('193', '北京', '2号线', '建国门', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('194', '北京', '2号线', '建国门', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('195', '北京', '2号线', '朝阳门', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('196', '北京', '3号线', '朝阳门', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('197', '北京', '4号线', '朝阳门', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('198', '北京', '5号线', '朝阳门', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('199', '北京', '6号线', '朝阳门', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('200', '北京', '2号线', '东四十条', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('201', '北京', '2号线', '东四十条', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('202', '北京', '2号线', '东四十条', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('203', '北京', '2号线', '东四十条', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('204', '北京', '2号线', '东直门', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('205', '北京', '2号线', '东直门', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('206', '北京', '2号线', '东直门', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('207', '北京', '2号线', '东直门', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('208', '北京', '2号线', '东直门', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('209', '北京', '2号线', '东直门', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('210', '北京', '2号线', '东直门', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('211', '北京', '2号线', '东直门', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('212', '北京', '2号线', '雍和宫', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('213', '北京', '2号线', '雍和宫', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('214', '北京', '2号线', '雍和宫', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('215', '北京', '2号线', '雍和宫', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('216', '北京', '2号线', '雍和宫', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('217', '北京', '2号线', '雍和宫', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('218', '北京', '2号线', '安定门', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('219', '北京', '2号线', '安定门', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('220', '北京', '2号线', '鼓楼大街', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('221', '北京', '2号线', '鼓楼大街', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('222', '北京', '2号线', '鼓楼大街', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('223', '北京', '2号线', '鼓楼大街', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('224', '北京', '2号线', '鼓楼大街', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('225', '北京', '2号线', '鼓楼大街', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('226', '北京', '2号线', '积水潭', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('227', '北京', '2号线', '积水潭', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('228', '北京', '2号线', '积水潭', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('229', '北京', '2号线', '积水潭', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('230', '北京', '2号线', '积水潭', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('231', '北京', '2号线', '西直门', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('232', '北京', '2号线', '西直门', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('233', '北京', '2号线', '西直门', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('234', '北京', '2号线', '西直门', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('235', '北京', '2号线', '西直门', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('236', '北京', '4号线', '安河桥北', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('237', '北京', '4号线', '安河桥北', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('238', '北京', '4号线', '安河桥北', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('239', '北京', '4号线', '安河桥北', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('240', '北京', '4号线', '北宫门', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('241', '北京', '4号线', '北宫门', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('242', '北京', '4号线', '北宫门', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('243', '北京', '4号线', '北宫门', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('244', '北京', '4号线', '西苑', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('245', '北京', '4号线', '西苑', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('246', '北京', '4号线', '西苑', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('247', '北京', '4号线', '西苑', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('248', '北京', '4号线', '西苑', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('249', '北京', '4号线', '圆明园', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('250', '北京', '4号线', '圆明园', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('251', '北京', '4号线', '圆明园', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('252', '北京', '4号线', '北京大学东门', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('253', '北京', '4号线', '北京大学东门', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('254', '北京', '4号线', '北京大学东门', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('255', '北京', '4号线', '北京大学东门', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('256', '北京', '4号线', '中关村', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('257', '北京', '4号线', '中关村', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('258', '北京', '4号线', '中关村', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('259', '北京', '4号线', '中关村', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('260', '北京', '4号线', '海淀黄庄', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('261', '北京', '4号线', '海淀黄庄', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('262', '北京', '4号线', '海淀黄庄', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('263', '北京', '4号线', '海淀黄庄', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('264', '北京', '4号线', '海淀黄庄', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('265', '北京', '4号线', '海淀黄庄', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('266', '北京', '4号线', '人民大学', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('267', '北京', '4号线', '人民大学', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('268', '北京', '4号线', '人民大学', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('269', '北京', '4号线', '人民大学', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('270', '北京', '4号线', '人民大学', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('271', '北京', '4号线', '魏公村', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('272', '北京', '4号线', '魏公村', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('273', '北京', '4号线', '魏公村', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('274', '北京', '4号线', '国家图书馆', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('275', '北京', '4号线', '国家图书馆', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('276', '北京', '4号线', '国家图书馆', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('277', '北京', '4号线', '国家图书馆', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('278', '北京', '4号线', '动物园', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('279', '北京', '4号线', '动物园', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('280', '北京', '4号线', '动物园', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('281', '北京', '4号线', '动物园', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('282', '北京', '4号线', '动物园', 'C3口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('283', '北京', '4号线', '动物园', 'D1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('284', '北京', '4号线', '动物园', 'D2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('285', '北京', '4号线', '西直门', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('286', '北京', '4号线', '西直门', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('287', '北京', '4号线', '西直门', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('288', '北京', '4号线', '西直门', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('289', '北京', '4号线', '西直门', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('290', '北京', '4号线', '新街口', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('291', '北京', '4号线', '新街口', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('292', '北京', '4号线', '新街口', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('293', '北京', '4号线', '新街口', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('294', '北京', '4号线', '平安里', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('295', '北京', '4号线', '平安里', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('296', '北京', '4号线', '平安里', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('297', '北京', '4号线', '平安里', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('298', '北京', '4号线', '平安里', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('299', '北京', '4号线', '平安里', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('300', '北京', '4号线', '平安里', 'G1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('301', '北京', '4号线', '平安里', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('302', '北京', '4号线', '西四', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('303', '北京', '4号线', '西四', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('304', '北京', '4号线', '西四', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('305', '北京', '4号线', '灵境胡同', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('306', '北京', '4号线', '灵境胡同', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('307', '北京', '4号线', '西单', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('308', '北京', '4号线', '西单', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('309', '北京', '4号线', '西单', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('310', '北京', '4号线', '西单', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('311', '北京', '4号线', '西单', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('312', '北京', '4号线', '西单', 'F1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('313', '北京', '4号线', '西单', 'F2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('314', '北京', '4号线', '西单', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('315', '北京', '4号线', '西单', 'J1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('316', '北京', '4号线', '西单', 'J2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('317', '北京', '4号线', '宣武门', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('318', '北京', '4号线', '宣武门', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('319', '北京', '4号线', '宣武门', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('320', '北京', '4号线', '宣武门', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('321', '北京', '4号线', '宣武门', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('322', '北京', '4号线', '宣武门', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('323', '北京', '4号线', '宣武门', 'D1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('324', '北京', '4号线', '宣武门', 'D2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('325', '北京', '4号线', '宣武门', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('326', '北京', '4号线', '宣武门', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('327', '北京', '4号线', '宣武门', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('328', '北京', '4号线', '菜市口', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('329', '北京', '4号线', '菜市口', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('330', '北京', '4号线', '菜市口', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('331', '北京', '4号线', '菜市口', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('332', '北京', '4号线', '菜市口', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('333', '北京', '4号线', '陶然亭', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('334', '北京', '4号线', '陶然亭', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('335', '北京', '4号线', '陶然亭', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('336', '北京', '4号线', '北京南站', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('337', '北京', '4号线', '北京南站', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('338', '北京', '4号线', '北京南站', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('339', '北京', '4号线', '北京南站', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('340', '北京', '4号线', '北京南站', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('341', '北京', '4号线', '马家堡', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('342', '北京', '4号线', '马家堡', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('343', '北京', '4号线', '马家堡', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('344', '北京', '4号线', '角门西', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('345', '北京', '4号线', '角门西', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('346', '北京', '4号线', '角门西', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('347', '北京', '4号线', '角门西', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('348', '北京', '4号线', '角门西', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('349', '北京', '4号线', '角门西', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('350', '北京', '4号线', '角门西', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('351', '北京', '4号线', '角门西', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('352', '北京', '4号线', '公益西桥', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('353', '北京', '4号线', '公益西桥', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('354', '北京', '4号线', '公益西桥', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('355', '北京', '4号线', '公益西桥', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('356', '北京', '4号线', '新宫', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('357', '北京', '4号线', '新宫', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('358', '北京', '4号线', '新宫', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('359', '北京', '4号线', '西红门', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('360', '北京', '4号线', '西红门', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('361', '北京', '4号线', '西红门', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('362', '北京', '4号线', '高米店南', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('363', '北京', '4号线', '高米店南', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('364', '北京', '4号线', '高米店南', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('365', '北京', '4号线', '高米店南', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('366', '北京', '4号线', '高米店南', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('367', '北京', '4号线', '枣园', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('368', '北京', '4号线', '枣园', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('369', '北京', '4号线', '枣园', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('370', '北京', '4号线', '枣园', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('371', '北京', '4号线', '清源路', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('372', '北京', '4号线', '清源路', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('373', '北京', '4号线', '清源路', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('374', '北京', '4号线', '黄村西大街', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('375', '北京', '4号线', '黄村西大街', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('376', '北京', '4号线', '黄村西大街', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('377', '北京', '4号线', '黄村西大街', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('378', '北京', '4号线', '黄村火车站', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('379', '北京', '4号线', '黄村火车站', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('380', '北京', '4号线', '黄村火车站', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('381', '北京', '4号线', '黄村火车站', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('382', '北京', '4号线', '义和庄', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('383', '北京', '4号线', '义和庄', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('384', '北京', '4号线', '义和庄', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('385', '北京', '4号线', '义和庄', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('386', '北京', '4号线', '生物医药基地', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('387', '北京', '4号线', '生物医药基地', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('388', '北京', '4号线', '生物医药基地', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('389', '北京', '4号线', '生物医药基地', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('390', '北京', '4号线', '天宫院', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('391', '北京', '4号线', '天宫院', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('392', '北京', '4号线', '天宫院', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('393', '北京', '4号线', '天宫院', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('394', '北京', '5号线', '天通苑北', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('395', '北京', '5号线', '天通苑北', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('396', '北京', '5号线', '天通苑', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('397', '北京', '5号线', '天通苑', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('398', '北京', '5号线', '天通苑南', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('399', '北京', '5号线', '立水桥', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('400', '北京', '5号线', '立水桥', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('401', '北京', '5号线', '立水桥', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('402', '北京', '5号线', '立水桥南', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('403', '北京', '5号线', '立水桥南', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('404', '北京', '5号线', '立水桥南', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('405', '北京', '5号线', '北苑路北', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('406', '北京', '5号线', '北苑路北', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('407', '北京', '5号线', '北苑路北', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('408', '北京', '5号线', '北苑路北', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('409', '北京', '5号线', '大屯路东', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('410', '北京', '5号线', '大屯路东', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('411', '北京', '5号线', '大屯路东', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('412', '北京', '5号线', '大屯路东', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('413', '北京', '5号线', '大屯路东', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('414', '北京', '5号线', '大屯路东', 'H2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('415', '北京', '5号线', '惠新西街北口', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('416', '北京', '5号线', '惠新西街北口', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('417', '北京', '5号线', '惠新西街北口', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('418', '北京', '5号线', '惠新西街南口', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('419', '北京', '5号线', '惠新西街南口', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('420', '北京', '5号线', '惠新西街南口', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('421', '北京', '5号线', '惠新西街南口', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('422', '北京', '5号线', '和平西桥', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('423', '北京', '5号线', '和平西桥', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('424', '北京', '5号线', '和平西桥', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('425', '北京', '5号线', '和平西桥', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('426', '北京', '5号线', '和平里北街', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('427', '北京', '5号线', '和平里北街', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('428', '北京', '5号线', '和平里北街', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('429', '北京', '5号线', '和平里北街', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('430', '北京', '5号线', '和平里北街', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('431', '北京', '5号线', '雍和宫', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('432', '北京', '5号线', '雍和宫', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('433', '北京', '5号线', '雍和宫', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('434', '北京', '5号线', '雍和宫', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('435', '北京', '5号线', '雍和宫', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('436', '北京', '5号线', '雍和宫', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('437', '北京', '5号线', '北新桥', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('438', '北京', '5号线', '北新桥', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('439', '北京', '5号线', '北新桥', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('440', '北京', '5号线', '北新桥', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('441', '北京', '5号线', '张自忠路', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('442', '北京', '5号线', '张自忠路', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('443', '北京', '5号线', '张自忠路', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('444', '北京', '5号线', '张自忠路', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('445', '北京', '5号线', '东四', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('446', '北京', '5号线', '东四', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('447', '北京', '5号线', '东四', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('448', '北京', '5号线', '东四', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('449', '北京', '5号线', '东四', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('450', '北京', '5号线', '灯市口', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('451', '北京', '5号线', '灯市口', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('452', '北京', '5号线', '东单', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('453', '北京', '5号线', '东单', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('454', '北京', '5号线', '东单', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('455', '北京', '5号线', '东单', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('456', '北京', '5号线', '东单', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('457', '北京', '5号线', '东单', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('458', '北京', '5号线', '东单', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('459', '北京', '5号线', '东单', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('460', '北京', '5号线', '崇文门', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('461', '北京', '5号线', '崇文门', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('462', '北京', '5号线', '崇文门', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('463', '北京', '5号线', '崇文门', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('464', '北京', '5号线', '崇文门', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('465', '北京', '5号线', '崇文门', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('466', '北京', '5号线', '崇文门', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('467', '北京', '5号线', '崇文门', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('468', '北京', '5号线', '崇文门', 'G1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('469', '北京', '5号线', '崇文门', 'G2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('470', '北京', '5号线', '崇文门', 'H1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('471', '北京', '5号线', '崇文门', 'H2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('472', '北京', '5号线', '磁器口', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('473', '北京', '5号线', '磁器口', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('474', '北京', '5号线', '磁器口', 'F1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('475', '北京', '5号线', '磁器口', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('476', '北京', '5号线', '磁器口', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('477', '北京', '5号线', '天坛东门', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('478', '北京', '5号线', '天坛东门', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('479', '北京', '5号线', '天坛东门', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('480', '北京', '5号线', '天坛东门', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('481', '北京', '5号线', '蒲黄榆', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('482', '北京', '5号线', '蒲黄榆', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('483', '北京', '5号线', '蒲黄榆', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('484', '北京', '5号线', '蒲黄榆', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('485', '北京', '5号线', '蒲黄榆', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('486', '北京', '5号线', '蒲黄榆', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('487', '北京', '5号线', '刘家窑', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('488', '北京', '5号线', '刘家窑', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('489', '北京', '5号线', '刘家窑', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('490', '北京', '5号线', '刘家窑', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('491', '北京', '5号线', '宋家庄', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('492', '北京', '5号线', '宋家庄', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('493', '北京', '5号线', '宋家庄', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('494', '北京', '5号线', '宋家庄', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('495', '北京', '5号线', '宋家庄', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('496', '北京', '5号线', '宋家庄', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('497', '北京', '5号线', '宋家庄', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('498', '北京', '5号线', '宋家庄', 'I口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('499', '北京', '5号线', '宋家庄', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('500', '北京', '6号线', '海淀五路居', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('501', '北京', '6号线', '海淀五路居', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('502', '北京', '6号线', '海淀五路居', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('503', '北京', '6号线', '海淀五路居', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('504', '北京', '6号线', '慈寿寺', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('505', '北京', '6号线', '慈寿寺', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('506', '北京', '6号线', '慈寿寺', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('507', '北京', '6号线', '慈寿寺', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('508', '北京', '6号线', '慈寿寺', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('509', '北京', '6号线', '慈寿寺', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('510', '北京', '6号线', '慈寿寺', 'I口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('511', '北京', '6号线', '花园桥', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('512', '北京', '6号线', '花园桥', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('513', '北京', '6号线', '花园桥', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('514', '北京', '6号线', '花园桥', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('515', '北京', '6号线', '花园桥', 'D1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('516', '北京', '6号线', '花园桥', 'D2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('517', '北京', '6号线', '白石桥南', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('518', '北京', '6号线', '白石桥南', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('519', '北京', '6号线', '白石桥南', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('520', '北京', '6号线', '白石桥南', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('521', '北京', '6号线', '白石桥南', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('522', '北京', '6号线', '车公庄西', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('523', '北京', '6号线', '车公庄西', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('524', '北京', '6号线', '车公庄西', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('525', '北京', '6号线', '车公庄', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('526', '北京', '6号线', '车公庄', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('527', '北京', '6号线', '车公庄', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('528', '北京', '6号线', '车公庄', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('529', '北京', '6号线', '车公庄', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('530', '北京', '6号线', '平安里', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('531', '北京', '6号线', '平安里', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('532', '北京', '6号线', '平安里', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('533', '北京', '6号线', '平安里', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('534', '北京', '6号线', '平安里', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('535', '北京', '6号线', '平安里', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('536', '北京', '6号线', '平安里', 'G1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('537', '北京', '6号线', '平安里', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('538', '北京', '6号线', '北海北', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('539', '北京', '6号线', '北海北', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('540', '北京', '6号线', '北海北', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('541', '北京', '6号线', '南锣鼓巷', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('542', '北京', '6号线', '南锣鼓巷', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('543', '北京', '6号线', '南锣鼓巷', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('544', '北京', '6号线', '南锣鼓巷', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('545', '北京', '6号线', '东四', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('546', '北京', '6号线', '东四', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('547', '北京', '6号线', '东四', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('548', '北京', '6号线', '东四', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('549', '北京', '6号线', '东四', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('550', '北京', '6号线', '朝阳门', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('551', '北京', '6号线', '朝阳门', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('552', '北京', '6号线', '朝阳门', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('553', '北京', '6号线', '朝阳门', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('554', '北京', '6号线', '朝阳门', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('555', '北京', '6号线', '东大桥', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('556', '北京', '6号线', '东大桥', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('557', '北京', '6号线', '东大桥', 'D1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('558', '北京', '6号线', '东大桥', 'D2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('559', '北京', '6号线', '呼家楼', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('560', '北京', '6号线', '呼家楼', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('561', '北京', '6号线', '呼家楼', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('562', '北京', '6号线', '呼家楼', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('563', '北京', '6号线', '呼家楼', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('564', '北京', '6号线', '呼家楼', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('565', '北京', '6号线', '呼家楼', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('566', '北京', '6号线', '金台路', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('567', '北京', '6号线', '金台路', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('568', '北京', '6号线', '金台路', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('569', '北京', '6号线', '金台路', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('570', '北京', '6号线', '金台路', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('571', '北京', '6号线', '金台路', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('572', '北京', '6号线', '十里堡', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('573', '北京', '6号线', '十里堡', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('574', '北京', '6号线', '十里堡', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('575', '北京', '6号线', '青年路', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('576', '北京', '6号线', '青年路', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('577', '北京', '6号线', '青年路', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('578', '北京', '6号线', '褡裢坡', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('579', '北京', '6号线', '褡裢坡', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('580', '北京', '6号线', '褡裢坡', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('581', '北京', '6号线', '黄渠', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('582', '北京', '6号线', '黄渠', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('583', '北京', '6号线', '黄渠', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('584', '北京', '6号线', '黄渠', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('585', '北京', '6号线', '常营', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('586', '北京', '6号线', '常营', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('587', '北京', '6号线', '常营', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('588', '北京', '6号线', '常营', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('589', '北京', '6号线', '草房', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('590', '北京', '6号线', '草房', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('591', '北京', '6号线', '草房', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('592', '北京', '6号线', '物资学院路', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('593', '北京', '6号线', '物资学院路', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('594', '北京', '6号线', '物资学院路', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('595', '北京', '6号线', '通州北关', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('596', '北京', '6号线', '通州北关', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('597', '北京', '6号线', '通运门', '', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('598', '北京', '6号线', '北运河西', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('599', '北京', '6号线', '北运河西', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('600', '北京', '6号线', '北运河东', '', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('601', '北京', '6号线', '郝家府', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('602', '北京', '6号线', '郝家府', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('603', '北京', '6号线', '郝家府', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('604', '北京', '6号线', '郝家府', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('605', '北京', '6号线', '东夏园', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('606', '北京', '6号线', '东夏园', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('607', '北京', '6号线', '东夏园', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('608', '北京', '6号线', '潞城', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('609', '北京', '6号线', '潞城', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('610', '北京', '6号线', '潞城', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('611', '北京', '7号线', '焦化厂', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('612', '北京', '7号线', '焦化厂', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('613', '北京', '7号线', '焦化厂', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('614', '北京', '7号线', '焦化厂', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('615', '北京', '7号线', '双合', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('616', '北京', '7号线', '双合', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('617', '北京', '7号线', '双合', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('618', '北京', '7号线', '双合', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('619', '北京', '7号线', '垡头', '', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('620', '北京', '7号线', '欢乐谷景区', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('621', '北京', '7号线', '欢乐谷景区', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('622', '北京', '7号线', '南楼梓庄', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('623', '北京', '7号线', '南楼梓庄', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('624', '北京', '7号线', '南楼梓庄', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('625', '北京', '7号线', '南楼梓庄', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('626', '北京', '7号线', '化工', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('627', '北京', '7号线', '化工', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('628', '北京', '7号线', '化工', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('629', '北京', '7号线', '百子湾', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('630', '北京', '7号线', '百子湾', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('631', '北京', '7号线', '百子湾', 'A3口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('632', '北京', '7号线', '百子湾', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('633', '北京', '7号线', '大郊亭', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('634', '北京', '7号线', '大郊亭', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('635', '北京', '7号线', '大郊亭', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('636', '北京', '7号线', '九龙山', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('637', '北京', '7号线', '九龙山', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('638', '北京', '7号线', '九龙山', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('639', '北京', '7号线', '九龙山', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('640', '北京', '7号线', '双井', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('641', '北京', '7号线', '双井', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('642', '北京', '7号线', '双井', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('643', '北京', '7号线', '双井', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('644', '北京', '7号线', '广渠门外', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('645', '北京', '7号线', '广渠门外', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('646', '北京', '7号线', '广渠门外', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('647', '北京', '7号线', '广渠门内', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('648', '北京', '7号线', '广渠门内', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('649', '北京', '7号线', '广渠门内', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('650', '北京', '7号线', '磁器口', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('651', '北京', '7号线', '磁器口', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('652', '北京', '7号线', '磁器口', 'F1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('653', '北京', '7号线', '磁器口', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('654', '北京', '7号线', '磁器口', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('655', '北京', '7号线', '桥湾', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('656', '北京', '7号线', '桥湾', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('657', '北京', '7号线', '桥湾', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('658', '北京', '7号线', '珠市口', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('659', '北京', '7号线', '珠市口', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('660', '北京', '7号线', '珠市口', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('661', '北京', '7号线', '虎坊桥', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('662', '北京', '7号线', '虎坊桥', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('663', '北京', '7号线', '虎坊桥', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('664', '北京', '7号线', '菜市口', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('665', '北京', '7号线', '菜市口', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('666', '北京', '7号线', '菜市口', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('667', '北京', '7号线', '菜市口', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('668', '北京', '7号线', '菜市口', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('669', '北京', '7号线', '广安门内', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('670', '北京', '7号线', '广安门内', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('671', '北京', '7号线', '广安门内', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('672', '北京', '7号线', '达官营', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('673', '北京', '7号线', '达官营', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('674', '北京', '7号线', '达官营', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('675', '北京', '7号线', '湾子', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('676', '北京', '7号线', '湾子', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('677', '北京', '7号线', '湾子', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('678', '北京', '7号线', '北京西站', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('679', '北京', '7号线', '北京西站', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('680', '北京', '8号线', '南锣鼓巷', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('681', '北京', '8号线', '南锣鼓巷', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('682', '北京', '8号线', '南锣鼓巷', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('683', '北京', '8号线', '南锣鼓巷', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('684', '北京', '8号线', '中国美术馆', '', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('685', '北京', '8号线', '王府井北', '', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('686', '北京', '8号线', '王府井', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('687', '北京', '8号线', '王府井', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('688', '北京', '8号线', '王府井', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('689', '北京', '8号线', '前门', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('690', '北京', '8号线', '前门', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('691', '北京', '8号线', '前门', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('692', '北京', '8号线', '珠市口', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('693', '北京', '8号线', '珠市口', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('694', '北京', '8号线', '珠市口', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('695', '北京', '8号线', '天桥', '', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('696', '北京', '8号线', '永定门外', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('697', '北京', '8号线', '永定门外', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('698', '北京', '8号线', '木樨园桥北', '', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('699', '北京', '8号线', '木樨园桥南', '', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('700', '北京', '8号线', '大红门', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('701', '北京', '8号线', '大红门', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('702', '北京', '8号线', '大红门', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('703', '北京', '8号线', '大红门桥', '', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('704', '北京', '8号线', '和义', '', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('705', '北京', '8号线', '西洼地', '', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('706', '北京', '8号线', '六营门', '', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('707', '北京', '8号线', '五福堂', '', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('708', '北京', '8号线', '德茂', '', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('709', '北京', '8号线', '瀛海', '', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('710', '北京', '9号线', '国家图书馆', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('711', '北京', '9号线', '国家图书馆', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('712', '北京', '9号线', '国家图书馆', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('713', '北京', '9号线', '国家图书馆', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('714', '北京', '9号线', '白石桥南', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('715', '北京', '9号线', '白石桥南', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('716', '北京', '9号线', '白石桥南', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('717', '北京', '9号线', '白石桥南', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('718', '北京', '9号线', '白石桥南', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('719', '北京', '9号线', '白石桥南', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('720', '北京', '9号线', '白堆子', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('721', '北京', '9号线', '白堆子', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('722', '北京', '9号线', '白堆子', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('723', '北京', '9号线', '白堆子', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('724', '北京', '9号线', '军事博物馆', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('725', '北京', '9号线', '军事博物馆', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('726', '北京', '9号线', '军事博物馆', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('727', '北京', '9号线', '军事博物馆', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('728', '北京', '9号线', '军事博物馆', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('729', '北京', '9号线', '军事博物馆', 'E1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('730', '北京', '9号线', '军事博物馆', 'E2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('731', '北京', '9号线', '军事博物馆', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('732', '北京', '9号线', '军事博物馆', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('733', '北京', '9号线', '北京西站', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('734', '北京', '9号线', '北京西站', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('735', '北京', '9号线', '六里桥东', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('736', '北京', '9号线', '六里桥东', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('737', '北京', '9号线', '六里桥东', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('738', '北京', '9号线', '六里桥', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('739', '北京', '9号线', '六里桥', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('740', '北京', '9号线', '六里桥', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('741', '北京', '9号线', '六里桥', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('742', '北京', '9号线', '六里桥', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('743', '北京', '9号线', '七里庄', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('744', '北京', '9号线', '七里庄', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('745', '北京', '9号线', '七里庄', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('746', '北京', '9号线', '七里庄', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('747', '北京', '9号线', '七里庄', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('748', '北京', '9号线', '七里庄', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('749', '北京', '9号线', '丰台东大街', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('750', '北京', '9号线', '丰台东大街', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('751', '北京', '9号线', '丰台南路', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('752', '北京', '9号线', '丰台南路', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('753', '北京', '9号线', '丰台南路', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('754', '北京', '9号线', '丰台南路', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('755', '北京', '9号线', '科怡路', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('756', '北京', '9号线', '科怡路', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('757', '北京', '9号线', '科怡路', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('758', '北京', '9号线', '科怡路', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('759', '北京', '9号线', '丰台科技园', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('760', '北京', '9号线', '丰台科技园', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('761', '北京', '9号线', '丰台科技园', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('762', '北京', '9号线', '丰台科技园', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('763', '北京', '9号线', '郭公庄', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('764', '北京', '9号线', '郭公庄', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('765', '北京', '9号线', '郭公庄', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('766', '北京', '9号线', '郭公庄', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('767', '北京', '10号线', '车道沟', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('768', '北京', '10号线', '车道沟', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('769', '北京', '10号线', '车道沟', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('770', '北京', '10号线', '车道沟', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('771', '北京', '10号线', '慈寿寺', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('772', '北京', '10号线', '慈寿寺', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('773', '北京', '10号线', '慈寿寺', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('774', '北京', '10号线', '慈寿寺', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('775', '北京', '10号线', '慈寿寺', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('776', '北京', '10号线', '慈寿寺', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('777', '北京', '10号线', '慈寿寺', 'I口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('778', '北京', '10号线', '西钓鱼台', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('779', '北京', '10号线', '西钓鱼台', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('780', '北京', '10号线', '公主坟', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('781', '北京', '10号线', '公主坟', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('782', '北京', '10号线', '公主坟', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('783', '北京', '10号线', '公主坟', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('784', '北京', '10号线', '莲花桥', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('785', '北京', '10号线', '莲花桥', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('786', '北京', '10号线', '莲花桥', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('787', '北京', '10号线', '六里桥', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('788', '北京', '10号线', '六里桥', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('789', '北京', '10号线', '六里桥', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('790', '北京', '10号线', '六里桥', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('791', '北京', '10号线', '六里桥', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('792', '北京', '10号线', '西局', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('793', '北京', '10号线', '西局', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('794', '北京', '10号线', '西局', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('795', '北京', '10号线', '西局', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('796', '北京', '10号线', '西局', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('797', '北京', '10号线', '泥洼', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('798', '北京', '10号线', '泥洼', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('799', '北京', '10号线', '泥洼', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('800', '北京', '10号线', '泥洼', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('801', '北京', '10号线', '丰台站', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('802', '北京', '10号线', '丰台站', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('803', '北京', '10号线', '丰台站', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('804', '北京', '10号线', '首经贸', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('805', '北京', '10号线', '首经贸', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('806', '北京', '10号线', '首经贸', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('807', '北京', '10号线', '纪家庙', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('808', '北京', '10号线', '纪家庙', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('809', '北京', '10号线', '纪家庙', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('810', '北京', '10号线', '纪家庙', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('811', '北京', '10号线', '草桥', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('812', '北京', '10号线', '草桥', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('813', '北京', '10号线', '角门西', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('814', '北京', '10号线', '角门西', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('815', '北京', '10号线', '角门西', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('816', '北京', '10号线', '角门西', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('817', '北京', '10号线', '角门西', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('818', '北京', '10号线', '角门西', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('819', '北京', '10号线', '角门西', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('820', '北京', '10号线', '角门西', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('821', '北京', '10号线', '角门东', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('822', '北京', '10号线', '角门东', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('823', '北京', '10号线', '角门东', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('824', '北京', '10号线', '角门东', 'D2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('825', '北京', '10号线', '大红门', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('826', '北京', '10号线', '大红门', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('827', '北京', '10号线', '大红门', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('828', '北京', '10号线', '大红门', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('829', '北京', '10号线', '石榴庄', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('830', '北京', '10号线', '石榴庄', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('831', '北京', '10号线', '宋家庄', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('832', '北京', '10号线', '宋家庄', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('833', '北京', '10号线', '宋家庄', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('834', '北京', '10号线', '宋家庄', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('835', '北京', '10号线', '宋家庄', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('836', '北京', '10号线', '宋家庄', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('837', '北京', '10号线', '宋家庄', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('838', '北京', '10号线', '宋家庄', 'I口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('839', '北京', '10号线', '宋家庄', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('840', '北京', '10号线', '成寿寺', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('841', '北京', '10号线', '成寿寺', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('842', '北京', '10号线', '成寿寺', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('843', '北京', '10号线', '成寿寺', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('844', '北京', '10号线', '分钟寺', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('845', '北京', '10号线', '分钟寺', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('846', '北京', '10号线', '分钟寺', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('847', '北京', '10号线', '分钟寺', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('848', '北京', '10号线', '十里河', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('849', '北京', '10号线', '十里河', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('850', '北京', '10号线', '十里河', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('851', '北京', '10号线', '十里河', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('852', '北京', '10号线', '十里河', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('853', '北京', '10号线', '十里河', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('854', '北京', '10号线', '潘家园', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('855', '北京', '10号线', '潘家园', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('856', '北京', '10号线', '潘家园', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('857', '北京', '10号线', '潘家园', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('858', '北京', '10号线', '劲松', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('859', '北京', '10号线', '劲松', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('860', '北京', '10号线', '劲松', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('861', '北京', '10号线', '劲松', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('862', '北京', '10号线', '双井', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('863', '北京', '10号线', '双井', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('864', '北京', '10号线', '双井', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('865', '北京', '10号线', '双井', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('866', '北京', '10号线', '国贸', '3口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('867', '北京', '10号线', '国贸', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('868', '北京', '10号线', '国贸', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('869', '北京', '10号线', '国贸', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('870', '北京', '10号线', '国贸', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('871', '北京', '10号线', '国贸', 'E1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('872', '北京', '10号线', '国贸', 'E2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('873', '北京', '10号线', '国贸', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('874', '北京', '10号线', '国贸', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('875', '北京', '10号线', '金台夕照', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('876', '北京', '10号线', '金台夕照', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('877', '北京', '10号线', '金台夕照', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('878', '北京', '10号线', '金台夕照', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('879', '北京', '10号线', '呼家楼', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('880', '北京', '10号线', '呼家楼', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('881', '北京', '10号线', '呼家楼', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('882', '北京', '10号线', '呼家楼', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('883', '北京', '10号线', '呼家楼', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('884', '北京', '10号线', '呼家楼', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('885', '北京', '10号线', '呼家楼', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('886', '北京', '10号线', '团结湖', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('887', '北京', '10号线', '团结湖', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('888', '北京', '10号线', '团结湖', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('889', '北京', '10号线', '团结湖', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('890', '北京', '10号线', '农业展览馆', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('891', '北京', '10号线', '农业展览馆', 'D1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('892', '北京', '10号线', '农业展览馆', 'D2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('893', '北京', '10号线', '亮马桥', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('894', '北京', '10号线', '亮马桥', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('895', '北京', '10号线', '亮马桥', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('896', '北京', '10号线', '亮马桥', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('897', '北京', '10号线', '三元桥', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('898', '北京', '10号线', '三元桥', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('899', '北京', '10号线', '三元桥', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('900', '北京', '10号线', '三元桥', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('901', '北京', '10号线', '三元桥', 'C3口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('902', '北京', '10号线', '三元桥', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('903', '北京', '10号线', '太阳宫', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('904', '北京', '10号线', '太阳宫', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('905', '北京', '10号线', '太阳宫', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('906', '北京', '10号线', '太阳宫', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('907', '北京', '10号线', '芍药居', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('908', '北京', '10号线', '芍药居', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('909', '北京', '10号线', '芍药居', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('910', '北京', '10号线', '芍药居', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('911', '北京', '10号线', '芍药居', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('912', '北京', '10号线', '惠新西街南口', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('913', '北京', '10号线', '惠新西街南口', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('914', '北京', '10号线', '惠新西街南口', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('915', '北京', '10号线', '惠新西街南口', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('916', '北京', '10号线', '安贞门', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('917', '北京', '10号线', '安贞门', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('918', '北京', '10号线', '安贞门', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('919', '北京', '10号线', '北土城', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('920', '北京', '10号线', '北土城', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('921', '北京', '10号线', '北土城', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('922', '北京', '10号线', '北土城', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('923', '北京', '10号线', '北土城', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('924', '北京', '10号线', '北土城', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('925', '北京', '10号线', '健德门', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('926', '北京', '10号线', '健德门', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('927', '北京', '10号线', '健德门', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('928', '北京', '10号线', '牡丹园', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('929', '北京', '10号线', '牡丹园', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('930', '北京', '10号线', '牡丹园', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('931', '北京', '10号线', '牡丹园', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('932', '北京', '10号线', '西土城', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('933', '北京', '10号线', '西土城', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('934', '北京', '10号线', '西土城', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('935', '北京', '10号线', '西土城', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('936', '北京', '10号线', '知春路', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('937', '北京', '10号线', '知春路', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('938', '北京', '10号线', '知春路', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('939', '北京', '10号线', '知春路', 'G1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('940', '北京', '10号线', '知春路', 'G2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('941', '北京', '10号线', '知春里', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('942', '北京', '10号线', '知春里', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('943', '北京', '10号线', '知春里', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('944', '北京', '10号线', '海淀黄庄', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('945', '北京', '10号线', '海淀黄庄', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('946', '北京', '10号线', '海淀黄庄', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('947', '北京', '10号线', '海淀黄庄', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('948', '北京', '10号线', '海淀黄庄', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('949', '北京', '10号线', '海淀黄庄', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('950', '北京', '10号线', '苏州街', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('951', '北京', '10号线', '苏州街', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('952', '北京', '10号线', '苏州街', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('953', '北京', '10号线', '苏州街', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('954', '北京', '10号线', '巴沟', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('955', '北京', '10号线', '巴沟', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('956', '北京', '10号线', '巴沟', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('957', '北京', '10号线', '巴沟', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('958', '北京', '10号线', '巴沟', 'C3口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('959', '北京', '10号线', '火器营', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('960', '北京', '10号线', '火器营', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('961', '北京', '10号线', '长春桥', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('962', '北京', '10号线', '长春桥', 'D1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('963', '北京', '10号线', '长春桥', 'D2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('964', '北京', '13号线', '西直门', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('965', '北京', '13号线', '西直门', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('966', '北京', '13号线', '西直门', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('967', '北京', '13号线', '西直门', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('968', '北京', '13号线', '西直门', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('969', '北京', '13号线', '大钟寺', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('970', '北京', '13号线', '大钟寺', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('971', '北京', '13号线', '知春路', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('972', '北京', '13号线', '知春路', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('973', '北京', '13号线', '知春路', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('974', '北京', '13号线', '知春路', 'G1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('975', '北京', '13号线', '知春路', 'G2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('976', '北京', '13号线', '五道口', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('977', '北京', '13号线', '五道口', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('978', '北京', '13号线', '上地', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('979', '北京', '13号线', '西二旗', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('980', '北京', '13号线', '西二旗', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('981', '北京', '13号线', '西二旗', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('982', '北京', '13号线', '西二旗', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('983', '北京', '13号线', '西二旗', 'B3口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('984', '北京', '13号线', '龙泽', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('985', '北京', '13号线', '回龙观', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('986', '北京', '13号线', '霍营', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('987', '北京', '13号线', '霍营', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('988', '北京', '13号线', '霍营', 'F1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('989', '北京', '13号线', '霍营', 'F2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('990', '北京', '13号线', '霍营', 'G1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('991', '北京', '13号线', '霍营', 'G2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('992', '北京', '13号线', '霍营', 'G3口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('993', '北京', '13号线', '霍营', 'G4口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('994', '北京', '13号线', '立水桥', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('995', '北京', '13号线', '立水桥', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('996', '北京', '13号线', '立水桥', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('997', '北京', '13号线', '北苑', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('998', '北京', '13号线', '望京西', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('999', '北京', '13号线', '望京西', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1000', '北京', '13号线', '望京西', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1001', '北京', '13号线', '望京西', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1002', '北京', '13号线', '芍药居', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1003', '北京', '13号线', '芍药居', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1004', '北京', '13号线', '芍药居', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1005', '北京', '13号线', '芍药居', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1006', '北京', '13号线', '芍药居', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1007', '北京', '13号线', '光熙门', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1008', '北京', '13号线', '光熙门', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1009', '北京', '13号线', '柳芳', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1010', '北京', '13号线', '柳芳', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1011', '北京', '13号线', '东直门', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1012', '北京', '13号线', '东直门', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1013', '北京', '13号线', '东直门', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1014', '北京', '13号线', '东直门', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1015', '北京', '13号线', '东直门', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1016', '北京', '13号线', '东直门', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1017', '北京', '13号线', '东直门', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1018', '北京', '13号线', '东直门', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1019', '北京', '14号线东', '北京南站', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1020', '北京', '14号线东', '北京南站', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1021', '北京', '14号线东', '北京南站', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1022', '北京', '14号线东', '北京南站', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1023', '北京', '14号线东', '北京南站', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1024', '北京', '14号线东', '陶然桥', '', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1025', '北京', '14号线东', '永定门外', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1026', '北京', '14号线东', '永定门外', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1027', '北京', '14号线东', '景泰', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1028', '北京', '14号线东', '景泰', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1029', '北京', '14号线东', '蒲黄榆', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1030', '北京', '14号线东', '蒲黄榆', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1031', '北京', '14号线东', '蒲黄榆', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1032', '北京', '14号线东', '蒲黄榆', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1033', '北京', '14号线东', '蒲黄榆', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1034', '北京', '14号线东', '蒲黄榆', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1035', '北京', '14号线东', '方庄', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1036', '北京', '14号线东', '方庄', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1037', '北京', '14号线东', '十里河', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1038', '北京', '14号线东', '十里河', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1039', '北京', '14号线东', '十里河', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1040', '北京', '14号线东', '十里河', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1041', '北京', '14号线东', '十里河', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1042', '北京', '14号线东', '十里河', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1043', '北京', '14号线东', '北工大西门', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1044', '北京', '14号线东', '北工大西门', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1045', '北京', '14号线东', '北工大西门', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1046', '北京', '14号线东', '平乐园', '', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1047', '北京', '14号线东', '九龙山', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1048', '北京', '14号线东', '九龙山', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1049', '北京', '14号线东', '九龙山', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1050', '北京', '14号线东', '九龙山', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1051', '北京', '14号线东', '大望路', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1052', '北京', '14号线东', '大望路', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1053', '北京', '14号线东', '大望路', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1054', '北京', '14号线东', '大望路', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1055', '北京', '14号线东', '大望路', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1056', '北京', '14号线东', '大望路', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1057', '北京', '14号线东', '大望路', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1058', '北京', '14号线东', '红庙', '', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1059', '北京', '14号线东', '金台路', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1060', '北京', '14号线东', '金台路', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1061', '北京', '14号线东', '金台路', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1062', '北京', '14号线东', '金台路', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1063', '北京', '14号线东', '金台路', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1064', '北京', '14号线东', '金台路', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1065', '北京', '14号线东', '朝阳公园', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1066', '北京', '14号线东', '朝阳公园', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1067', '北京', '14号线东', '朝阳公园', 'D1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1068', '北京', '14号线东', '朝阳公园', 'D2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1069', '北京', '14号线东', '枣营', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1070', '北京', '14号线东', '枣营', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1071', '北京', '14号线东', '东风北桥', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1072', '北京', '14号线东', '东风北桥', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1073', '北京', '14号线东', '东风北桥', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1074', '北京', '14号线东', '东风北桥', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1075', '北京', '14号线东', '将台', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1076', '北京', '14号线东', '将台', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1077', '北京', '14号线东', '将台', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1078', '北京', '14号线东', '高家园', '西1门', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1079', '北京', '14号线东', '高家园', '1门', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1080', '北京', '14号线东', '望京南', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1081', '北京', '14号线东', '望京南', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1082', '北京', '14号线东', '望京南', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1083', '北京', '14号线东', '阜通', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1084', '北京', '14号线东', '阜通', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1085', '北京', '14号线东', '阜通', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1086', '北京', '14号线东', '望京', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1087', '北京', '14号线东', '望京', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1088', '北京', '14号线东', '望京', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1089', '北京', '14号线东', '望京', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1090', '北京', '14号线东', '东湖渠', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1091', '北京', '14号线东', '东湖渠', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1092', '北京', '14号线东', '东湖渠', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1093', '北京', '14号线东', '来广营', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1094', '北京', '14号线东', '来广营', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1095', '北京', '14号线东', '善各庄', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1096', '北京', '14号线东', '善各庄', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1097', '北京', '14号线东', '善各庄', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1098', '北京', '14号线东', '善各庄', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1099', '北京', '14号线西', '张郭庄', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1100', '北京', '14号线西', '张郭庄', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1101', '北京', '14号线西', '园博园', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1102', '北京', '14号线西', '园博园', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1103', '北京', '14号线西', '园博园', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1104', '北京', '14号线西', '园博园', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1105', '北京', '14号线西', '大瓦窑', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1106', '北京', '14号线西', '大瓦窑', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1107', '北京', '14号线西', '大瓦窑', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1108', '北京', '14号线西', '郭庄子', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1109', '北京', '14号线西', '郭庄子', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1110', '北京', '14号线西', '郭庄子', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1111', '北京', '14号线西', '郭庄子', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1112', '北京', '14号线西', '大井', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1113', '北京', '14号线西', '大井', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1114', '北京', '14号线西', '七里庄', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1115', '北京', '14号线西', '七里庄', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1116', '北京', '14号线西', '七里庄', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1117', '北京', '14号线西', '七里庄', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1118', '北京', '14号线西', '七里庄', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1119', '北京', '14号线西', '七里庄', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1120', '北京', '14号线西', '西局', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1121', '北京', '14号线西', '西局', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1122', '北京', '14号线西', '西局', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1123', '北京', '14号线西', '西局', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1124', '北京', '14号线西', '西局', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1125', '北京', '15号线', '俸伯', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1126', '北京', '15号线', '俸伯', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1127', '北京', '15号线', '俸伯', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1128', '北京', '15号线', '俸伯', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1129', '北京', '15号线', '顺义', '', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1130', '北京', '15号线', '石门', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1131', '北京', '15号线', '石门', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1132', '北京', '15号线', '石门', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1133', '北京', '15号线', '南法信', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1134', '北京', '15号线', '南法信', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1135', '北京', '15号线', '南法信', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1136', '北京', '15号线', '南法信', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1137', '北京', '15号线', '后沙峪', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1138', '北京', '15号线', '后沙峪', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1139', '北京', '15号线', '后沙峪', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1140', '北京', '15号线', '后沙峪', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1141', '北京', '15号线', '花梨坎', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1142', '北京', '15号线', '花梨坎', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1143', '北京', '15号线', '花梨坎', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1144', '北京', '15号线', '花梨坎', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1145', '北京', '15号线', '国展', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1146', '北京', '15号线', '国展', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1147', '北京', '15号线', '国展', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1148', '北京', '15号线', '国展', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1149', '北京', '15号线', '孙河', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1150', '北京', '15号线', '孙河', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1151', '北京', '15号线', '马泉营', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1152', '北京', '15号线', '马泉营', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1153', '北京', '15号线', '马泉营', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1154', '北京', '15号线', '崔各庄', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1155', '北京', '15号线', '崔各庄', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1156', '北京', '15号线', '望京东', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1157', '北京', '15号线', '望京东', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1158', '北京', '15号线', '望京东', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1159', '北京', '15号线', '望京', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1160', '北京', '15号线', '望京', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1161', '北京', '15号线', '望京', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1162', '北京', '15号线', '望京', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1163', '北京', '15号线', '望京西', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1164', '北京', '15号线', '望京西', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1165', '北京', '15号线', '望京西', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1166', '北京', '15号线', '望京西', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1167', '北京', '15号线', '关庄', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1168', '北京', '15号线', '关庄', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1169', '北京', '15号线', '关庄', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1170', '北京', '15号线', '大屯路东', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1171', '北京', '15号线', '大屯路东', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1172', '北京', '15号线', '大屯路东', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1173', '北京', '15号线', '大屯路东', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1174', '北京', '15号线', '大屯路东', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1175', '北京', '15号线', '大屯路东', 'H2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1176', '北京', '15号线', '安立路', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1177', '北京', '15号线', '安立路', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1178', '北京', '15号线', '安立路', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1179', '北京', '15号线', '安立路', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1180', '北京', '15号线', '安立路', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1181', '北京', '15号线', '奥林匹克公园', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1182', '北京', '15号线', '奥林匹克公园', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1183', '北京', '15号线', '奥林匹克公园', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1184', '北京', '15号线', '奥林匹克公园', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1185', '北京', '15号线', '奥林匹克公园', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1186', '北京', '15号线', '奥林匹克公园', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1187', '北京', '15号线', '奥林匹克公园', 'I口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1188', '北京', '15号线', '北沙滩', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1189', '北京', '15号线', '北沙滩', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1190', '北京', '15号线', '北沙滩', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1191', '北京', '15号线', '北沙滩', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1192', '北京', '15号线', '北沙滩', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1193', '北京', '15号线', '六道口', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1194', '北京', '15号线', '六道口', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1195', '北京', '15号线', '六道口', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1196', '北京', '15号线', '六道口', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1197', '北京', '15号线', '清华东路西口', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1198', '北京', '15号线', '清华东路西口', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1199', '北京', '16号线', '北安河', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1200', '北京', '16号线', '北安河', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1201', '北京', '16号线', '北安河', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1202', '北京', '16号线', '北安河', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1203', '北京', '16号线', '温阳路', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1204', '北京', '16号线', '温阳路', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1205', '北京', '16号线', '温阳路', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1206', '北京', '16号线', '稻香湖路', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1207', '北京', '16号线', '稻香湖路', 'D1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1208', '北京', '16号线', '稻香湖路', 'D2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1209', '北京', '16号线', '屯佃', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1210', '北京', '16号线', '屯佃', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1211', '北京', '16号线', '屯佃', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1212', '北京', '16号线', '永丰', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1213', '北京', '16号线', '永丰', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1214', '北京', '16号线', '永丰', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1215', '北京', '16号线', '永丰', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1216', '北京', '16号线', '永丰南', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1217', '北京', '16号线', '永丰南', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1218', '北京', '16号线', '永丰南', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1219', '北京', '16号线', '西北旺', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1220', '北京', '16号线', '西北旺', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1221', '北京', '16号线', '马连洼', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1222', '北京', '16号线', '马连洼', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1223', '北京', '16号线', '农大南路', '', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1224', '北京', '16号线', '西苑', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1225', '北京', '16号线', '西苑', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1226', '北京', '16号线', '西苑', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1227', '北京', '16号线', '西苑', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1228', '北京', '16号线', '西苑', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1229', '北京', '八通线', '土桥', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1230', '北京', '八通线', '土桥', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1231', '北京', '八通线', '土桥', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1232', '北京', '八通线', '临河里', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1233', '北京', '八通线', '临河里', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1234', '北京', '八通线', '临河里', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1235', '北京', '八通线', '梨园', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1236', '北京', '八通线', '梨园', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1237', '北京', '八通线', '梨园', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1238', '北京', '八通线', '九棵树', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1239', '北京', '八通线', '九棵树', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1240', '北京', '八通线', '九棵树', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1241', '北京', '八通线', '果园', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1242', '北京', '八通线', '果园', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1243', '北京', '八通线', '通州北苑', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1244', '北京', '八通线', '通州北苑', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1245', '北京', '八通线', '八里桥', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1246', '北京', '八通线', '八里桥', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1247', '北京', '八通线', '八里桥', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1248', '北京', '八通线', '八里桥', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1249', '北京', '八通线', '八里桥', 'B3口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1250', '北京', '八通线', '管庄', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1251', '北京', '八通线', '管庄', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1252', '北京', '八通线', '管庄', 'A3口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1253', '北京', '八通线', '管庄', 'A4口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1254', '北京', '八通线', '管庄', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1255', '北京', '八通线', '管庄', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1256', '北京', '八通线', '双桥', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1257', '北京', '八通线', '双桥', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1258', '北京', '八通线', '传媒大学', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1259', '北京', '八通线', '传媒大学', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1260', '北京', '八通线', '传媒大学', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1261', '北京', '八通线', '高碑店', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1262', '北京', '八通线', '高碑店', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1263', '北京', '八通线', '高碑店', 'A3口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1264', '北京', '八通线', '高碑店', 'A4口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1265', '北京', '八通线', '高碑店', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1266', '北京', '八通线', '高碑店', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1267', '北京', '八通线', '四惠东', 'A口 ', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1268', '北京', '八通线', '四惠东', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1269', '北京', '八通线', '四惠', 'A口 ', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1270', '北京', '八通线', '四惠', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1271', '北京', '八通线', '四惠', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1272', '北京', '八通线', '四惠', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1273', '北京', '八通线', '四惠', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1274', '北京', '八通线', '四惠', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1275', '北京', '昌平线', '西二旗', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1276', '北京', '昌平线', '西二旗', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1277', '北京', '昌平线', '西二旗', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1278', '北京', '昌平线', '西二旗', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1279', '北京', '昌平线', '西二旗', 'B3口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1280', '北京', '昌平线', '生命科学园', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1281', '北京', '昌平线', '生命科学园', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1282', '北京', '昌平线', '生命科学园', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1283', '北京', '昌平线', '生命科学园', 'B3口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1284', '北京', '昌平线', '生命科学园', 'B4口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1285', '北京', '昌平线', '朱辛庄', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1286', '北京', '昌平线', '朱辛庄', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1287', '北京', '昌平线', '朱辛庄', 'A3口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1288', '北京', '昌平线', '朱辛庄', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1289', '北京', '昌平线', '朱辛庄', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1290', '北京', '昌平线', '朱辛庄', 'B3口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1291', '北京', '昌平线', '巩华城', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1292', '北京', '昌平线', '巩华城', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1293', '北京', '昌平线', '巩华城', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1294', '北京', '昌平线', '巩华城', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1295', '北京', '昌平线', '沙河', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1296', '北京', '昌平线', '沙河', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1297', '北京', '昌平线', '沙河', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1298', '北京', '昌平线', '沙河', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1299', '北京', '昌平线', '沙河高教园', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1300', '北京', '昌平线', '沙河高教园', 'A2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1301', '北京', '昌平线', '沙河高教园', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1302', '北京', '昌平线', '沙河高教园', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1303', '北京', '昌平线', '南邵', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1304', '北京', '昌平线', '南邵', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1305', '北京', '昌平线', '南邵', 'B2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1306', '北京', '昌平线', '南邵', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1307', '北京', '昌平线', '南邵', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1308', '北京', '昌平线', '北邵洼', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1309', '北京', '昌平线', '北邵洼', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1310', '北京', '昌平线', '北邵洼', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1311', '北京', '昌平线', '北邵洼', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1312', '北京', '昌平线', '昌平东关', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1313', '北京', '昌平线', '昌平东关', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1314', '北京', '昌平线', '昌平东关', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1315', '北京', '昌平线', '昌平东关', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1316', '北京', '昌平线', '昌平', '', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1317', '北京', '昌平线', '十三陵景区', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1318', '北京', '昌平线', '十三陵景区', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1319', '北京', '昌平线', '十三陵景区', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1320', '北京', '昌平线', '十三陵景区', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1321', '北京', '昌平线', '昌平西山口', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1322', '北京', '昌平线', '昌平西山口', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1323', '北京', '昌平线', '昌平西山口', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1324', '北京', '昌平线', '昌平西山口', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1325', '北京', '亦庄线', '宋家庄', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1326', '北京', '亦庄线', '宋家庄', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1327', '北京', '亦庄线', '宋家庄', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1328', '北京', '亦庄线', '宋家庄', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1329', '北京', '亦庄线', '宋家庄', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1330', '北京', '亦庄线', '宋家庄', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1331', '北京', '亦庄线', '宋家庄', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1332', '北京', '亦庄线', '宋家庄', 'I口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1333', '北京', '亦庄线', '宋家庄', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1334', '北京', '亦庄线', '肖村', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1335', '北京', '亦庄线', '肖村', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1336', '北京', '亦庄线', '肖村', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1337', '北京', '亦庄线', '小红门', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1338', '北京', '亦庄线', '小红门', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1339', '北京', '亦庄线', '小红门', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1340', '北京', '亦庄线', '旧宫', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1341', '北京', '亦庄线', '旧宫', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1342', '北京', '亦庄线', '亦庄桥', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1343', '北京', '亦庄线', '亦庄桥', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1344', '北京', '亦庄线', '亦庄文化园', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1345', '北京', '亦庄线', '亦庄文化园', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1346', '北京', '亦庄线', '万源街', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1347', '北京', '亦庄线', '万源街', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1348', '北京', '亦庄线', '荣京东街', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1349', '北京', '亦庄线', '荣京东街', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1350', '北京', '亦庄线', '荣昌东街', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1351', '北京', '亦庄线', '荣昌东街', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1352', '北京', '亦庄线', '同济南路', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1353', '北京', '亦庄线', '同济南路', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1354', '北京', '亦庄线', '经海路', 'A1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1355', '北京', '亦庄线', '经海路', 'B1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1356', '北京', '亦庄线', '次渠南', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1357', '北京', '亦庄线', '次渠南', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1358', '北京', '亦庄线', '次渠南', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1359', '北京', '亦庄线', '次渠南', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1360', '北京', '亦庄线', '次渠', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1361', '北京', '亦庄线', '次渠', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1362', '北京', '亦庄线', '次渠', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1363', '北京', '亦庄线', '次渠', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1364', '北京', '房山线', '郭公庄', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1365', '北京', '房山线', '郭公庄', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1366', '北京', '房山线', '郭公庄', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1367', '北京', '房山线', '郭公庄', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1368', '北京', '房山线', '樊羊路', '', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1369', '北京', '房山线', '四环路', '', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1370', '北京', '房山线', '首经贸', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1371', '北京', '房山线', '首经贸', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1372', '北京', '房山线', '首经贸', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1373', '北京', '房山线', '丰益桥南', '', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1374', '北京', '机场线', 'T3航站楼', '', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1375', '北京', '机场线', 'T2航站楼', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1376', '北京', '机场线', 'T2航站楼', '入口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1377', '北京', '机场线', '三元桥', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1378', '北京', '机场线', '三元桥', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1379', '北京', '机场线', '三元桥', 'C1口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1380', '北京', '机场线', '三元桥', 'C2口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1381', '北京', '机场线', '三元桥', 'C3口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1382', '北京', '机场线', '三元桥', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1383', '北京', '机场线', '东直门', 'A口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1384', '北京', '机场线', '东直门', 'B口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1385', '北京', '机场线', '东直门', 'C口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1386', '北京', '机场线', '东直门', 'D口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1387', '北京', '机场线', '东直门', 'E口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1388', '北京', '机场线', '东直门', 'F口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1389', '北京', '机场线', '东直门', 'G口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');
INSERT INTO `bf_subway_line` VALUES ('1390', '北京', '机场线', '东直门', 'H口', 'zhulei', '2017-10-11 10:46:00', '2017-10-11 10:46:00', 'desc');

-- ----------------------------
-- Table structure for bf_subway_station
-- ----------------------------
DROP TABLE IF EXISTS `bf_subway_station`;
CREATE TABLE `bf_subway_station` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subway_id` int(11) DEFAULT NULL COMMENT '地铁id',
  `station_name` varchar(64) NOT NULL DEFAULT '' COMMENT '地铁站名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地铁站名称';

-- ----------------------------
-- Records of bf_subway_station
-- ----------------------------

-- ----------------------------
-- Table structure for bf_user
-- ----------------------------
DROP TABLE IF EXISTS `bf_user`;
CREATE TABLE `bf_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL COMMENT '登录名称',
  `userPasswd` varchar(100) DEFAULT NULL COMMENT '密码',
  `admin_phone` varchar(20) DEFAULT NULL COMMENT '手机号',
  `admin_name` varchar(20) DEFAULT '' COMMENT '用户姓名',
  `identification_card` varchar(20) DEFAULT NULL COMMENT '身份证',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态（0:禁用，1:启用）',
  `user_flag` tinyint(4) DEFAULT '0' COMMENT '是否单位管理员(否:0、是:1)',
  `creator` varchar(100) DEFAULT NULL COMMENT '创建人',
  `updator` varchar(100) DEFAULT NULL COMMENT '修改人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(300) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniqueIndex` (`userName`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8 COMMENT='管理员';

-- ----------------------------
-- Records of bf_user
-- ----------------------------
INSERT INTO `bf_user` VALUES ('1', 'admin', '827ccb0eea8a706c4c34a16891f84e7b', '13552578263', '朱磊', '411327198805234236', '1', '0', null, null, null, null, '');
INSERT INTO `bf_user` VALUES ('146', '13552578263', '827ccb0eea8a706c4c34a16891f84e7b', '13552578263', '朱磊', '411327198805234235', '1', '0', '', null, '2017-10-13 23:07:22', null, '');

-- ----------------------------
-- Table structure for bf_user_weixin
-- ----------------------------
DROP TABLE IF EXISTS `bf_user_weixin`;
CREATE TABLE `bf_user_weixin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `phone` char(12) DEFAULT NULL COMMENT '手机号',
  `user_photo` varchar(128) DEFAULT NULL COMMENT '头像',
  `nice_user` varchar(20) DEFAULT NULL COMMENT '昵称',
  `uuid` varchar(32) DEFAULT NULL COMMENT 'uuid值',
  `openid` varchar(64) DEFAULT NULL COMMENT 'openid',
  `token` varchar(100) DEFAULT NULL COMMENT '唯一性token',
  `address` varchar(32) DEFAULT NULL COMMENT '地点（微信提供）',
  `sex` char(1) DEFAULT NULL COMMENT '性别（微信提供）',
  `integral` int(20) DEFAULT '0' COMMENT '积分数量(暂不实现)',
  `register_time` datetime DEFAULT NULL COMMENT '注册时间',
  `recommend` varchar(20) DEFAULT NULL COMMENT '推荐人(手机号)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(128) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COMMENT='个人用户表';

-- ----------------------------
-- Records of bf_user_weixin
-- ----------------------------
INSERT INTO `bf_user_weixin` VALUES ('34', '13897280416', null, null, null, 'oScaO03evc43sPDsGyzrCEpzR3tU', null, null, null, '0', '2017-11-28 19:53:54', '', '2017-11-28 19:53:54', '2017-11-30 23:26:01', null);
INSERT INTO `bf_user_weixin` VALUES ('35', '18997336712', null, null, null, 'oScaO0zEjfldFeBfrOzWd24DaHUU', null, null, null, '0', '2017-11-28 19:53:54', '', '2017-11-28 19:53:54', '2017-11-30 23:26:01', null);
INSERT INTO `bf_user_weixin` VALUES ('36', '15810987808', null, null, null, 'oScaO05hh7xsS0BhfcBIV3COiY4w', null, null, null, '0', '2017-11-28 19:53:54', '', '2017-11-28 19:53:54', '2017-11-30 23:26:02', null);
INSERT INTO `bf_user_weixin` VALUES ('37', '13838146609', null, null, null, 'oScaO0_CmnPeu5-mSrz2DOyRI0OA', null, null, null, '0', '2017-11-28 19:53:54', '', '2017-11-28 19:53:54', '2017-11-30 23:26:02', null);
INSERT INTO `bf_user_weixin` VALUES ('38', '18838928206', null, null, null, 'oScaO05tX-BRbSvXtHDBjpuSvEb0', null, null, null, '0', '2017-11-28 19:53:54', '', '2017-11-28 19:53:54', '2017-11-30 23:26:02', null);
INSERT INTO `bf_user_weixin` VALUES ('39', '15303281650', null, null, null, 'oScaO0yYeaTpbNXKrZK8fY9nB5S0', null, null, null, '0', '2017-11-28 19:53:54', '18830358180', '2017-11-28 19:53:54', '2017-11-30 23:26:03', null);
INSERT INTO `bf_user_weixin` VALUES ('40', '18830358180', null, null, null, 'oScaO03k2XsTVX_pBCvh5CSYGzCc', null, null, null, '0', '2017-11-28 19:53:54', '', '2017-11-28 19:53:54', '2017-11-30 23:26:03', null);
INSERT INTO `bf_user_weixin` VALUES ('41', '13552578263', null, null, null, 'oScaO0xH63mjO1Wc7qVLKl9MK5ng', null, null, null, '0', '2017-11-28 19:53:54', '', '2017-11-28 19:53:54', '2017-11-30 23:26:03', null);
INSERT INTO `bf_user_weixin` VALUES ('42', '15003656493', null, null, null, 'oScaO0zEjfldFeBfrOzWd24DaHUU', null, null, null, '0', '2017-11-28 19:53:54', '', '2017-11-28 19:53:54', '2017-11-30 23:26:03', null);
INSERT INTO `bf_user_weixin` VALUES ('43', '15695389702', null, null, null, 'oScaO0zEjfldFeBfrOzWd24DaHUU', null, null, null, '0', '2017-11-28 19:53:54', '', '2017-11-28 19:53:54', '2017-11-30 23:26:04', null);
INSERT INTO `bf_user_weixin` VALUES ('44', '13519769359', null, null, null, 'oScaO0zEjfldFeBfrOzWd24DaHUU', null, null, null, '0', '2017-11-28 19:53:54', '', '2017-11-28 19:53:54', '2017-11-30 23:26:04', null);
INSERT INTO `bf_user_weixin` VALUES ('45', '17697146639', null, null, null, 'oScaO0zEjfldFeBfrOzWd24DaHUU', null, null, null, '0', '2017-11-28 19:53:54', '', '2017-11-28 19:53:54', '2017-11-30 23:26:05', null);
INSERT INTO `bf_user_weixin` VALUES ('46', '18297135748', null, null, null, 'oScaO0zEjfldFeBfrOzWd24DaHUU', null, null, null, '0', '2017-11-28 19:53:54', '', '2017-11-28 19:53:54', '2017-11-30 23:26:05', null);
INSERT INTO `bf_user_weixin` VALUES ('47', '18697290707', null, null, null, 'oScaO0zjixVm6nP8zne6SQa8ziGw', null, null, null, '0', '2017-11-28 19:53:54', '18697290707', '2017-11-28 19:53:54', '2017-11-30 23:26:05', null);
INSERT INTO `bf_user_weixin` VALUES ('48', '18697190280', null, null, null, 'oScaO06dtRVBB61CkSsk8Sel2XZU', null, null, null, '0', '2017-11-28 19:53:54', '18697290707', '2017-11-28 19:53:54', '2017-11-30 23:26:06', null);
INSERT INTO `bf_user_weixin` VALUES ('49', '18935626027', null, null, null, 'oScaO00i9n5a8qiDCBcgAlC9nRXM', null, null, null, '0', '2017-11-28 19:53:54', '18195620731', '2017-11-28 19:53:54', '2017-11-30 23:26:06', null);
INSERT INTO `bf_user_weixin` VALUES ('50', '13897393445', null, null, null, 'oScaO031pU6k7M1ZrCVBbt6pv22s', null, null, null, '0', '2017-11-28 19:53:54', '', '2017-11-28 19:53:54', '2017-11-30 23:26:06', null);
INSERT INTO `bf_user_weixin` VALUES ('51', '13997099008', null, null, null, 'oScaO008GLbk7tr-o-3ir6GPnsCg', null, null, null, '0', '2017-11-28 19:53:54', '', '2017-11-28 19:53:54', '2017-11-30 23:26:07', null);
INSERT INTO `bf_user_weixin` VALUES ('52', '18625776286', null, null, null, 'oScaO05tX-BRbSvXtHDBjpuSvEb0', null, null, null, '0', '2017-11-28 19:53:54', '', '2017-11-28 19:53:54', '2017-11-30 23:26:07', null);
INSERT INTO `bf_user_weixin` VALUES ('53', '18801171093', null, null, null, 'oScaO0_gSFtJM4TkXt03I6uL1vac', null, null, null, '0', '2017-12-01 10:01:43', '', '2017-12-01 10:01:43', '2017-12-01 10:01:43', null);
INSERT INTO `bf_user_weixin` VALUES ('54', '18500162311', null, null, null, 'oScaO02ZYP2YCUCX2Yb1uYwqDBoA', null, null, null, '0', '2017-12-01 14:39:22', '', '2017-12-01 14:39:22', '2017-12-01 14:39:22', null);

-- ----------------------------
-- Table structure for bf_user2role
-- ----------------------------
DROP TABLE IF EXISTS `bf_user2role`;
CREATE TABLE `bf_user2role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_user2role
-- ----------------------------
INSERT INTO `bf_user2role` VALUES ('2', '2', '1');
INSERT INTO `bf_user2role` VALUES ('3', '7', '1');
INSERT INTO `bf_user2role` VALUES ('4', '1', '1');
INSERT INTO `bf_user2role` VALUES ('9', '12', '6');
INSERT INTO `bf_user2role` VALUES ('10', '13', '4');
INSERT INTO `bf_user2role` VALUES ('12', '6', '5');
INSERT INTO `bf_user2role` VALUES ('13', '5', '3');
INSERT INTO `bf_user2role` VALUES ('15', '19', '5');
INSERT INTO `bf_user2role` VALUES ('17', '27', '5');
INSERT INTO `bf_user2role` VALUES ('18', '23', '5');
INSERT INTO `bf_user2role` VALUES ('20', '25', '5');
INSERT INTO `bf_user2role` VALUES ('21', '26', '5');
INSERT INTO `bf_user2role` VALUES ('22', '24', '5');
INSERT INTO `bf_user2role` VALUES ('25', '97', '4');
INSERT INTO `bf_user2role` VALUES ('26', '31', '4');
INSERT INTO `bf_user2role` VALUES ('27', '32', '4');
INSERT INTO `bf_user2role` VALUES ('28', '29', '4');
INSERT INTO `bf_user2role` VALUES ('29', '34', '6');
INSERT INTO `bf_user2role` VALUES ('31', '36', '6');
INSERT INTO `bf_user2role` VALUES ('32', '37', '6');
INSERT INTO `bf_user2role` VALUES ('33', '38', '6');
INSERT INTO `bf_user2role` VALUES ('34', '35', '6');
INSERT INTO `bf_user2role` VALUES ('46', '28', '4');
INSERT INTO `bf_user2role` VALUES ('47', '64', '11');
INSERT INTO `bf_user2role` VALUES ('78', '16', '6');
INSERT INTO `bf_user2role` VALUES ('104', '90', '1');
INSERT INTO `bf_user2role` VALUES ('105', '90', '3');
INSERT INTO `bf_user2role` VALUES ('106', '90', '4');
INSERT INTO `bf_user2role` VALUES ('107', '90', '5');
INSERT INTO `bf_user2role` VALUES ('108', '90', '6');
INSERT INTO `bf_user2role` VALUES ('109', '90', '10');
INSERT INTO `bf_user2role` VALUES ('110', '90', '11');
INSERT INTO `bf_user2role` VALUES ('111', '90', '12');
INSERT INTO `bf_user2role` VALUES ('112', '90', '13');
INSERT INTO `bf_user2role` VALUES ('113', '90', '14');
INSERT INTO `bf_user2role` VALUES ('114', '3', '1');
INSERT INTO `bf_user2role` VALUES ('115', '3', '3');
INSERT INTO `bf_user2role` VALUES ('116', '3', '4');
INSERT INTO `bf_user2role` VALUES ('117', '3', '5');
INSERT INTO `bf_user2role` VALUES ('118', '3', '6');
INSERT INTO `bf_user2role` VALUES ('119', '3', '10');
INSERT INTO `bf_user2role` VALUES ('120', '3', '11');
INSERT INTO `bf_user2role` VALUES ('121', '3', '12');
INSERT INTO `bf_user2role` VALUES ('122', '3', '13');
INSERT INTO `bf_user2role` VALUES ('123', '3', '14');
INSERT INTO `bf_user2role` VALUES ('124', '3', '17');
INSERT INTO `bf_user2role` VALUES ('125', '96', '6');
INSERT INTO `bf_user2role` VALUES ('126', '97', '6');
INSERT INTO `bf_user2role` VALUES ('127', '98', '6');
INSERT INTO `bf_user2role` VALUES ('128', '99', '6');
INSERT INTO `bf_user2role` VALUES ('129', '100', '6');
INSERT INTO `bf_user2role` VALUES ('130', '101', '6');
INSERT INTO `bf_user2role` VALUES ('131', '103', '6');
INSERT INTO `bf_user2role` VALUES ('132', '104', '6');
INSERT INTO `bf_user2role` VALUES ('133', '105', '6');
INSERT INTO `bf_user2role` VALUES ('134', '106', '6');
INSERT INTO `bf_user2role` VALUES ('135', '107', '6');
INSERT INTO `bf_user2role` VALUES ('136', '108', '6');
INSERT INTO `bf_user2role` VALUES ('137', '109', '6');
INSERT INTO `bf_user2role` VALUES ('138', '111', '6');
INSERT INTO `bf_user2role` VALUES ('139', '112', '6');
INSERT INTO `bf_user2role` VALUES ('140', '113', '6');
INSERT INTO `bf_user2role` VALUES ('141', '114', '6');
INSERT INTO `bf_user2role` VALUES ('142', '122', '4');
INSERT INTO `bf_user2role` VALUES ('143', '123', '4');
INSERT INTO `bf_user2role` VALUES ('144', '138', '5');
INSERT INTO `bf_user2role` VALUES ('145', '115', '6');
INSERT INTO `bf_user2role` VALUES ('146', '116', '6');
INSERT INTO `bf_user2role` VALUES ('147', '117', '6');
INSERT INTO `bf_user2role` VALUES ('148', '118', '6');
INSERT INTO `bf_user2role` VALUES ('149', '119', '6');
INSERT INTO `bf_user2role` VALUES ('150', '120', '6');
INSERT INTO `bf_user2role` VALUES ('151', '121', '6');
INSERT INTO `bf_user2role` VALUES ('152', '124', '6');
INSERT INTO `bf_user2role` VALUES ('154', '126', '5');
INSERT INTO `bf_user2role` VALUES ('155', '127', '5');
INSERT INTO `bf_user2role` VALUES ('156', '128', '5');
INSERT INTO `bf_user2role` VALUES ('157', '133', '5');
INSERT INTO `bf_user2role` VALUES ('158', '132', '5');
INSERT INTO `bf_user2role` VALUES ('159', '131', '5');
INSERT INTO `bf_user2role` VALUES ('160', '130', '5');
INSERT INTO `bf_user2role` VALUES ('161', '145', '5');
INSERT INTO `bf_user2role` VALUES ('162', '146', '1');
INSERT INTO `bf_user2role` VALUES ('163', '146', '3');
INSERT INTO `bf_user2role` VALUES ('164', '146', '4');
