/*
Navicat MySQL Data Transfer

Source Server         : 阿里云
Source Server Version : 50173
Source Host           : 120.26.239.42:3306
Source Database       : chuyingfund

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2016-05-23 16:14:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account_fund`
-- ----------------------------
DROP TABLE IF EXISTS `account_fund`;
CREATE TABLE `account_fund` (
  `acc_id` int(11) NOT NULL,
  `acc_money` decimal(11,2) DEFAULT NULL,
  `refresh_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`acc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='账户资金表';

-- ----------------------------
-- Records of account_fund
-- ----------------------------

-- ----------------------------
-- Table structure for `base_data`
-- ----------------------------
DROP TABLE IF EXISTS `base_data`;
CREATE TABLE `base_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_value` int(11) DEFAULT NULL,
  `data_value` int(11) DEFAULT NULL,
  `data_label` varchar(64) DEFAULT NULL,
  `top` int(11) DEFAULT '0',
  `sort` int(11) DEFAULT '0',
  `icon` varchar(255) DEFAULT NULL,
  `refresh_time` timestamp NULL DEFAULT NULL COMMENT '最后操作时间',
  `enable` int(4) unsigned DEFAULT NULL COMMENT '数据标记：0代表可用，1不可用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_data
-- ----------------------------
INSERT INTO `base_data` VALUES ('174', '-1', '1', '项目类型', '0', '0', null, '2016-05-16 11:46:31', null);
INSERT INTO `base_data` VALUES ('175', '1', '1', '普通项目', '0', '0', null, '2016-05-16 11:46:46', null);
INSERT INTO `base_data` VALUES ('176', '1', '2', '雏鹰微基金', '0', '0', null, '2016-05-16 11:47:02', null);
INSERT INTO `base_data` VALUES ('177', '-1', '2', '融资轮次', '0', '0', null, '2016-05-16 11:47:46', null);
INSERT INTO `base_data` VALUES ('178', '2', '1', '天使轮', '0', '0', null, '2016-05-16 11:48:01', null);
INSERT INTO `base_data` VALUES ('179', '2', '2', 'Pre-A 轮', '0', '0', null, '2016-05-16 11:48:22', null);
INSERT INTO `base_data` VALUES ('180', '2', '3', 'A 轮', '0', '0', null, '2016-05-16 11:48:40', null);
INSERT INTO `base_data` VALUES ('181', '2', '4', 'B 轮', '0', '0', null, '2016-05-16 11:48:52', null);
INSERT INTO `base_data` VALUES ('182', '2', '5', 'C 轮', '0', '0', null, '2016-05-16 11:49:01', null);
INSERT INTO `base_data` VALUES ('183', '2', '6', 'D 轮', '0', '0', null, '2016-05-16 11:49:09', null);
INSERT INTO `base_data` VALUES ('184', '2', '7', 'D 轮以上', '0', '0', null, '2016-05-16 11:49:18', null);
INSERT INTO `base_data` VALUES ('185', '-1', '3', '项目状态', '0', '0', null, '2016-05-16 11:49:50', null);
INSERT INTO `base_data` VALUES ('186', '3', '1', '预热中', '0', '0', null, '2016-05-16 11:50:26', null);
INSERT INTO `base_data` VALUES ('187', '3', '2', '筹资中', '0', '0', null, '2016-05-16 11:50:39', null);
INSERT INTO `base_data` VALUES ('188', '3', '3', '众筹成功', '0', '0', null, '2016-05-16 11:50:48', null);
INSERT INTO `base_data` VALUES ('189', '3', '4', '过期项目', '0', '0', null, '2016-05-16 11:50:58', null);
INSERT INTO `base_data` VALUES ('190', '-1', '4', '所属行业', '0', '0', null, '2016-05-16 11:51:36', null);
INSERT INTO `base_data` VALUES ('191', '4', '1', '跨境电商', '0', '0', null, '2016-05-16 11:51:45', null);
INSERT INTO `base_data` VALUES ('192', '4', '2', '移动互联网', '0', '0', null, '2016-05-16 11:51:54', null);
INSERT INTO `base_data` VALUES ('193', '4', '3', '消费升级', '0', '0', null, '2016-05-16 11:52:01', null);
INSERT INTO `base_data` VALUES ('194', '4', '4', '互联网金融', '0', '0', null, '2016-05-16 11:52:09', null);
INSERT INTO `base_data` VALUES ('195', '4', '5', '现代服务业', '0', '0', null, '2016-05-16 11:52:16', null);
INSERT INTO `base_data` VALUES ('196', '4', '6', '健康医疗', '0', '0', null, '2016-05-16 11:52:26', null);
INSERT INTO `base_data` VALUES ('197', '-1', '5', '项目阶段', '0', '0', null, '2016-05-16 11:52:44', null);
INSERT INTO `base_data` VALUES ('198', '5', '1', '产品开发中', '0', '0', null, '2016-05-16 11:52:54', null);
INSERT INTO `base_data` VALUES ('199', '5', '2', '产品已上线或上市', '0', '0', null, '2016-05-16 11:53:04', null);
INSERT INTO `base_data` VALUES ('200', '5', '3', '已有收入', '0', '0', null, '2016-05-16 11:53:15', null);
INSERT INTO `base_data` VALUES ('201', '5', '4', '已有盈利', '0', '0', null, '2016-05-16 11:53:22', null);
INSERT INTO `base_data` VALUES ('202', '5', '5', '尚未启动', '0', '0', null, '2016-05-16 11:53:32', null);

-- ----------------------------
-- Table structure for `d_city`
-- ----------------------------
DROP TABLE IF EXISTS `d_city`;
CREATE TABLE `d_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityId` int(6) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `parent` int(6) DEFAULT NULL,
  `flag` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `cityId` (`cityId`)
) ENGINE=InnoDB AUTO_INCREMENT=345 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_city
-- ----------------------------
INSERT INTO `d_city` VALUES ('1', '110100', '北京市', '110000', '0');
INSERT INTO `d_city` VALUES ('3', '120100', '天津市', '120000', '0');
INSERT INTO `d_city` VALUES ('5', '130100', '石家庄市', '130000', '0');
INSERT INTO `d_city` VALUES ('6', '130200', '唐山市', '130000', '0');
INSERT INTO `d_city` VALUES ('7', '130300', '秦皇岛市', '130000', '0');
INSERT INTO `d_city` VALUES ('8', '130400', '邯郸市', '130000', '0');
INSERT INTO `d_city` VALUES ('9', '130500', '邢台市', '130000', '0');
INSERT INTO `d_city` VALUES ('10', '130600', '保定市', '130000', '0');
INSERT INTO `d_city` VALUES ('11', '130700', '张家口市', '130000', '0');
INSERT INTO `d_city` VALUES ('12', '130800', '承德市', '130000', '0');
INSERT INTO `d_city` VALUES ('13', '130900', '沧州市', '130000', '0');
INSERT INTO `d_city` VALUES ('14', '131000', '廊坊市', '130000', '0');
INSERT INTO `d_city` VALUES ('15', '131100', '衡水市', '130000', '0');
INSERT INTO `d_city` VALUES ('16', '140100', '太原市', '140000', '0');
INSERT INTO `d_city` VALUES ('17', '140200', '大同市', '140000', '0');
INSERT INTO `d_city` VALUES ('18', '140300', '阳泉市', '140000', '0');
INSERT INTO `d_city` VALUES ('19', '140400', '长治市', '140000', '0');
INSERT INTO `d_city` VALUES ('20', '140500', '晋城市', '140000', '0');
INSERT INTO `d_city` VALUES ('21', '140600', '朔州市', '140000', '0');
INSERT INTO `d_city` VALUES ('22', '140700', '晋中市', '140000', '0');
INSERT INTO `d_city` VALUES ('23', '140800', '运城市', '140000', '0');
INSERT INTO `d_city` VALUES ('24', '140900', '忻州市', '140000', '0');
INSERT INTO `d_city` VALUES ('25', '141000', '临汾市', '140000', '0');
INSERT INTO `d_city` VALUES ('26', '141100', '吕梁市', '140000', '0');
INSERT INTO `d_city` VALUES ('27', '150100', '呼和浩特市', '150000', '0');
INSERT INTO `d_city` VALUES ('28', '150200', '包头市', '150000', '0');
INSERT INTO `d_city` VALUES ('29', '150300', '乌海市', '150000', '0');
INSERT INTO `d_city` VALUES ('30', '150400', '赤峰市', '150000', '0');
INSERT INTO `d_city` VALUES ('31', '150500', '通辽市', '150000', '0');
INSERT INTO `d_city` VALUES ('32', '150600', '鄂尔多斯市', '150000', '0');
INSERT INTO `d_city` VALUES ('33', '150700', '呼伦贝尔市', '150000', '0');
INSERT INTO `d_city` VALUES ('34', '150800', '巴彦淖尔市', '150000', '0');
INSERT INTO `d_city` VALUES ('35', '150900', '乌兰察布市', '150000', '0');
INSERT INTO `d_city` VALUES ('36', '152200', '兴安盟', '150000', '0');
INSERT INTO `d_city` VALUES ('37', '152500', '锡林郭勒盟', '150000', '0');
INSERT INTO `d_city` VALUES ('38', '152900', '阿拉善盟', '150000', '0');
INSERT INTO `d_city` VALUES ('39', '210100', '沈阳市', '210000', '0');
INSERT INTO `d_city` VALUES ('40', '210200', '大连市', '210000', '0');
INSERT INTO `d_city` VALUES ('41', '210300', '鞍山市', '210000', '0');
INSERT INTO `d_city` VALUES ('42', '210400', '抚顺市', '210000', '0');
INSERT INTO `d_city` VALUES ('43', '210500', '本溪市', '210000', '0');
INSERT INTO `d_city` VALUES ('44', '210600', '丹东市', '210000', '0');
INSERT INTO `d_city` VALUES ('45', '210700', '锦州市', '210000', '0');
INSERT INTO `d_city` VALUES ('46', '210800', '营口市', '210000', '0');
INSERT INTO `d_city` VALUES ('47', '210900', '阜新市', '210000', '0');
INSERT INTO `d_city` VALUES ('48', '211000', '辽阳市', '210000', '0');
INSERT INTO `d_city` VALUES ('49', '211100', '盘锦市', '210000', '0');
INSERT INTO `d_city` VALUES ('50', '211200', '铁岭市', '210000', '0');
INSERT INTO `d_city` VALUES ('51', '211300', '朝阳市', '210000', '0');
INSERT INTO `d_city` VALUES ('52', '211400', '葫芦岛市', '210000', '0');
INSERT INTO `d_city` VALUES ('53', '220100', '长春市', '220000', '0');
INSERT INTO `d_city` VALUES ('54', '220200', '吉林市', '220000', '0');
INSERT INTO `d_city` VALUES ('55', '220300', '四平市', '220000', '0');
INSERT INTO `d_city` VALUES ('56', '220400', '辽源市', '220000', '0');
INSERT INTO `d_city` VALUES ('57', '220500', '通化市', '220000', '0');
INSERT INTO `d_city` VALUES ('58', '220600', '白山市', '220000', '0');
INSERT INTO `d_city` VALUES ('59', '220700', '松原市', '220000', '0');
INSERT INTO `d_city` VALUES ('60', '220800', '白城市', '220000', '0');
INSERT INTO `d_city` VALUES ('61', '222400', '延边朝鲜族自治州', '220000', '0');
INSERT INTO `d_city` VALUES ('62', '230100', '哈尔滨市', '230000', '0');
INSERT INTO `d_city` VALUES ('63', '230200', '齐齐哈尔市', '230000', '0');
INSERT INTO `d_city` VALUES ('64', '230300', '鸡西市', '230000', '0');
INSERT INTO `d_city` VALUES ('65', '230400', '鹤岗市', '230000', '0');
INSERT INTO `d_city` VALUES ('66', '230500', '双鸭山市', '230000', '0');
INSERT INTO `d_city` VALUES ('67', '230600', '大庆市', '230000', '0');
INSERT INTO `d_city` VALUES ('68', '230700', '伊春市', '230000', '0');
INSERT INTO `d_city` VALUES ('69', '230800', '佳木斯市', '230000', '0');
INSERT INTO `d_city` VALUES ('70', '230900', '七台河市', '230000', '0');
INSERT INTO `d_city` VALUES ('71', '231000', '牡丹江市', '230000', '0');
INSERT INTO `d_city` VALUES ('72', '231100', '黑河市', '230000', '0');
INSERT INTO `d_city` VALUES ('73', '231200', '绥化市', '230000', '0');
INSERT INTO `d_city` VALUES ('74', '232700', '大兴安岭地区', '230000', '0');
INSERT INTO `d_city` VALUES ('75', '310100', '上海市', '310000', '0');
INSERT INTO `d_city` VALUES ('77', '320100', '南京市', '320000', '0');
INSERT INTO `d_city` VALUES ('78', '320200', '无锡市', '320000', '0');
INSERT INTO `d_city` VALUES ('79', '320300', '徐州市', '320000', '0');
INSERT INTO `d_city` VALUES ('80', '320400', '常州市', '320000', '0');
INSERT INTO `d_city` VALUES ('81', '320500', '苏州市', '320000', '0');
INSERT INTO `d_city` VALUES ('82', '320600', '南通市', '320000', '0');
INSERT INTO `d_city` VALUES ('83', '320700', '连云港市', '320000', '0');
INSERT INTO `d_city` VALUES ('84', '320800', '淮安市', '320000', '0');
INSERT INTO `d_city` VALUES ('85', '320900', '盐城市', '320000', '0');
INSERT INTO `d_city` VALUES ('86', '321000', '扬州市', '320000', '0');
INSERT INTO `d_city` VALUES ('87', '321100', '镇江市', '320000', '0');
INSERT INTO `d_city` VALUES ('88', '321200', '泰州市', '320000', '0');
INSERT INTO `d_city` VALUES ('89', '321300', '宿迁市', '320000', '0');
INSERT INTO `d_city` VALUES ('90', '330100', '杭州市', '330000', '0');
INSERT INTO `d_city` VALUES ('91', '330200', '宁波市', '330000', '0');
INSERT INTO `d_city` VALUES ('92', '330300', '温州市', '330000', '0');
INSERT INTO `d_city` VALUES ('93', '330400', '嘉兴市', '330000', '0');
INSERT INTO `d_city` VALUES ('94', '330500', '湖州市', '330000', '0');
INSERT INTO `d_city` VALUES ('95', '330600', '绍兴市', '330000', '0');
INSERT INTO `d_city` VALUES ('96', '330700', '金华市', '330000', '0');
INSERT INTO `d_city` VALUES ('97', '330800', '衢州市', '330000', '0');
INSERT INTO `d_city` VALUES ('98', '330900', '舟山市', '330000', '0');
INSERT INTO `d_city` VALUES ('99', '331000', '台州市', '330000', '0');
INSERT INTO `d_city` VALUES ('100', '331100', '丽水市', '330000', '0');
INSERT INTO `d_city` VALUES ('101', '340100', '合肥市', '340000', '0');
INSERT INTO `d_city` VALUES ('102', '340200', '芜湖市', '340000', '0');
INSERT INTO `d_city` VALUES ('103', '340300', '蚌埠市', '340000', '0');
INSERT INTO `d_city` VALUES ('104', '340400', '淮南市', '340000', '0');
INSERT INTO `d_city` VALUES ('105', '340500', '马鞍山市', '340000', '0');
INSERT INTO `d_city` VALUES ('106', '340600', '淮北市', '340000', '0');
INSERT INTO `d_city` VALUES ('107', '340700', '铜陵市', '340000', '0');
INSERT INTO `d_city` VALUES ('108', '340800', '安庆市', '340000', '0');
INSERT INTO `d_city` VALUES ('109', '341000', '黄山市', '340000', '0');
INSERT INTO `d_city` VALUES ('110', '341100', '滁州市', '340000', '0');
INSERT INTO `d_city` VALUES ('111', '341200', '阜阳市', '340000', '0');
INSERT INTO `d_city` VALUES ('112', '341300', '宿州市', '340000', '0');
INSERT INTO `d_city` VALUES ('113', '341400', '巢湖市', '340000', '0');
INSERT INTO `d_city` VALUES ('114', '341500', '六安市', '340000', '0');
INSERT INTO `d_city` VALUES ('115', '341600', '亳州市', '340000', '0');
INSERT INTO `d_city` VALUES ('116', '341700', '池州市', '340000', '0');
INSERT INTO `d_city` VALUES ('117', '341800', '宣城市', '340000', '0');
INSERT INTO `d_city` VALUES ('118', '350100', '福州市', '350000', '0');
INSERT INTO `d_city` VALUES ('119', '350200', '厦门市', '350000', '0');
INSERT INTO `d_city` VALUES ('120', '350300', '莆田市', '350000', '0');
INSERT INTO `d_city` VALUES ('121', '350400', '三明市', '350000', '0');
INSERT INTO `d_city` VALUES ('122', '350500', '泉州市', '350000', '0');
INSERT INTO `d_city` VALUES ('123', '350600', '漳州市', '350000', '0');
INSERT INTO `d_city` VALUES ('124', '350700', '南平市', '350000', '0');
INSERT INTO `d_city` VALUES ('125', '350800', '龙岩市', '350000', '0');
INSERT INTO `d_city` VALUES ('126', '350900', '宁德市', '350000', '0');
INSERT INTO `d_city` VALUES ('127', '360100', '南昌市', '360000', '0');
INSERT INTO `d_city` VALUES ('128', '360200', '景德镇市', '360000', '0');
INSERT INTO `d_city` VALUES ('129', '360300', '萍乡市', '360000', '0');
INSERT INTO `d_city` VALUES ('130', '360400', '九江市', '360000', '0');
INSERT INTO `d_city` VALUES ('131', '360500', '新余市', '360000', '0');
INSERT INTO `d_city` VALUES ('132', '360600', '鹰潭市', '360000', '0');
INSERT INTO `d_city` VALUES ('133', '360700', '赣州市', '360000', '0');
INSERT INTO `d_city` VALUES ('134', '360800', '吉安市', '360000', '0');
INSERT INTO `d_city` VALUES ('135', '360900', '宜春市', '360000', '0');
INSERT INTO `d_city` VALUES ('136', '361000', '抚州市', '360000', '0');
INSERT INTO `d_city` VALUES ('137', '361100', '上饶市', '360000', '1');
INSERT INTO `d_city` VALUES ('138', '370100', '济南市', '370000', '0');
INSERT INTO `d_city` VALUES ('139', '370200', '青岛市', '370000', '0');
INSERT INTO `d_city` VALUES ('140', '370300', '淄博市', '370000', '0');
INSERT INTO `d_city` VALUES ('141', '370400', '枣庄市', '370000', '0');
INSERT INTO `d_city` VALUES ('142', '370500', '东营市', '370000', '0');
INSERT INTO `d_city` VALUES ('143', '370600', '烟台市', '370000', '0');
INSERT INTO `d_city` VALUES ('144', '370700', '潍坊市', '370000', '0');
INSERT INTO `d_city` VALUES ('145', '370800', '济宁市', '370000', '0');
INSERT INTO `d_city` VALUES ('146', '370900', '泰安市', '370000', '0');
INSERT INTO `d_city` VALUES ('147', '371000', '威海市', '370000', '0');
INSERT INTO `d_city` VALUES ('148', '371100', '日照市', '370000', '0');
INSERT INTO `d_city` VALUES ('149', '371200', '莱芜市', '370000', '0');
INSERT INTO `d_city` VALUES ('150', '371300', '临沂市', '370000', '0');
INSERT INTO `d_city` VALUES ('151', '371400', '德州市', '370000', '0');
INSERT INTO `d_city` VALUES ('152', '371500', '聊城市', '370000', '0');
INSERT INTO `d_city` VALUES ('153', '371600', '滨州市', '370000', '0');
INSERT INTO `d_city` VALUES ('154', '371700', '菏泽市', '370000', '0');
INSERT INTO `d_city` VALUES ('155', '410100', '郑州市', '410000', '0');
INSERT INTO `d_city` VALUES ('156', '410200', '开封市', '410000', '0');
INSERT INTO `d_city` VALUES ('157', '410300', '洛阳市', '410000', '0');
INSERT INTO `d_city` VALUES ('158', '410400', '平顶山市', '410000', '0');
INSERT INTO `d_city` VALUES ('159', '410500', '安阳市', '410000', '0');
INSERT INTO `d_city` VALUES ('160', '410600', '鹤壁市', '410000', '0');
INSERT INTO `d_city` VALUES ('161', '410700', '新乡市', '410000', '0');
INSERT INTO `d_city` VALUES ('162', '410800', '焦作市', '410000', '0');
INSERT INTO `d_city` VALUES ('163', '410900', '濮阳市', '410000', '0');
INSERT INTO `d_city` VALUES ('164', '411000', '许昌市', '410000', '0');
INSERT INTO `d_city` VALUES ('165', '411100', '漯河市', '410000', '0');
INSERT INTO `d_city` VALUES ('166', '411200', '三门峡市', '410000', '0');
INSERT INTO `d_city` VALUES ('167', '411300', '南阳市', '410000', '0');
INSERT INTO `d_city` VALUES ('168', '411400', '商丘市', '410000', '0');
INSERT INTO `d_city` VALUES ('169', '411500', '信阳市', '410000', '0');
INSERT INTO `d_city` VALUES ('170', '411600', '周口市', '410000', '0');
INSERT INTO `d_city` VALUES ('171', '411700', '驻马店市', '410000', '0');
INSERT INTO `d_city` VALUES ('172', '420100', '武汉市', '420000', '0');
INSERT INTO `d_city` VALUES ('173', '420200', '黄石市', '420000', '0');
INSERT INTO `d_city` VALUES ('174', '420300', '十堰市', '420000', '0');
INSERT INTO `d_city` VALUES ('175', '420500', '宜昌市', '420000', '0');
INSERT INTO `d_city` VALUES ('176', '420600', '襄樊市', '420000', '0');
INSERT INTO `d_city` VALUES ('177', '420700', '鄂州市', '420000', '0');
INSERT INTO `d_city` VALUES ('178', '420800', '荆门市', '420000', '0');
INSERT INTO `d_city` VALUES ('179', '420900', '孝感市', '420000', '0');
INSERT INTO `d_city` VALUES ('180', '421000', '荆州市', '420000', '0');
INSERT INTO `d_city` VALUES ('181', '421100', '黄冈市', '420000', '0');
INSERT INTO `d_city` VALUES ('182', '421200', '咸宁市', '420000', '0');
INSERT INTO `d_city` VALUES ('183', '421300', '随州市', '420000', '0');
INSERT INTO `d_city` VALUES ('184', '422800', '恩施土家族苗族自治州', '420000', '0');
INSERT INTO `d_city` VALUES ('186', '430100', '长沙市', '430000', '0');
INSERT INTO `d_city` VALUES ('187', '430200', '株洲市', '430000', '0');
INSERT INTO `d_city` VALUES ('188', '430300', '湘潭市', '430000', '0');
INSERT INTO `d_city` VALUES ('189', '430400', '衡阳市', '430000', '0');
INSERT INTO `d_city` VALUES ('190', '430500', '邵阳市', '430000', '0');
INSERT INTO `d_city` VALUES ('191', '430600', '岳阳市', '430000', '0');
INSERT INTO `d_city` VALUES ('192', '430700', '常德市', '430000', '0');
INSERT INTO `d_city` VALUES ('193', '430800', '张家界市', '430000', '0');
INSERT INTO `d_city` VALUES ('194', '430900', '益阳市', '430000', '0');
INSERT INTO `d_city` VALUES ('195', '431000', '郴州市', '430000', '0');
INSERT INTO `d_city` VALUES ('196', '431100', '永州市', '430000', '0');
INSERT INTO `d_city` VALUES ('197', '431200', '怀化市', '430000', '0');
INSERT INTO `d_city` VALUES ('198', '431300', '娄底市', '430000', '0');
INSERT INTO `d_city` VALUES ('199', '433100', '湘西土家族苗族自治州', '430000', '0');
INSERT INTO `d_city` VALUES ('200', '440100', '广州市', '440000', '0');
INSERT INTO `d_city` VALUES ('201', '440200', '韶关市', '440000', '0');
INSERT INTO `d_city` VALUES ('202', '440300', '深圳市', '440000', '0');
INSERT INTO `d_city` VALUES ('203', '440400', '珠海市', '440000', '0');
INSERT INTO `d_city` VALUES ('204', '440500', '汕头市', '440000', '0');
INSERT INTO `d_city` VALUES ('205', '440600', '佛山市', '440000', '0');
INSERT INTO `d_city` VALUES ('206', '440700', '江门市', '440000', '0');
INSERT INTO `d_city` VALUES ('207', '440800', '湛江市', '440000', '0');
INSERT INTO `d_city` VALUES ('208', '440900', '茂名市', '440000', '0');
INSERT INTO `d_city` VALUES ('209', '441200', '肇庆市', '440000', '0');
INSERT INTO `d_city` VALUES ('210', '441300', '惠州市', '440000', '0');
INSERT INTO `d_city` VALUES ('211', '441400', '梅州市', '440000', '0');
INSERT INTO `d_city` VALUES ('212', '441500', '汕尾市', '440000', '0');
INSERT INTO `d_city` VALUES ('213', '441600', '河源市', '440000', '0');
INSERT INTO `d_city` VALUES ('214', '441700', '阳江市', '440000', '0');
INSERT INTO `d_city` VALUES ('215', '441800', '清远市', '440000', '0');
INSERT INTO `d_city` VALUES ('216', '441900', '东莞市', '440000', '0');
INSERT INTO `d_city` VALUES ('217', '442000', '中山市', '440000', '0');
INSERT INTO `d_city` VALUES ('218', '445100', '潮州市', '440000', '0');
INSERT INTO `d_city` VALUES ('219', '445200', '揭阳市', '440000', '0');
INSERT INTO `d_city` VALUES ('220', '445300', '云浮市', '440000', '0');
INSERT INTO `d_city` VALUES ('221', '450100', '南宁市', '450000', '0');
INSERT INTO `d_city` VALUES ('222', '450200', '柳州市', '450000', '0');
INSERT INTO `d_city` VALUES ('223', '450300', '桂林市', '450000', '0');
INSERT INTO `d_city` VALUES ('224', '450400', '梧州市', '450000', '0');
INSERT INTO `d_city` VALUES ('225', '450500', '北海市', '450000', '0');
INSERT INTO `d_city` VALUES ('226', '450600', '防城港市', '450000', '0');
INSERT INTO `d_city` VALUES ('227', '450700', '钦州市', '450000', '0');
INSERT INTO `d_city` VALUES ('228', '450800', '贵港市', '450000', '0');
INSERT INTO `d_city` VALUES ('229', '450900', '玉林市', '450000', '0');
INSERT INTO `d_city` VALUES ('230', '451000', '百色市', '450000', '0');
INSERT INTO `d_city` VALUES ('231', '451100', '贺州市', '450000', '0');
INSERT INTO `d_city` VALUES ('232', '451200', '河池市', '450000', '0');
INSERT INTO `d_city` VALUES ('233', '451300', '来宾市', '450000', '0');
INSERT INTO `d_city` VALUES ('234', '451400', '崇左市', '450000', '0');
INSERT INTO `d_city` VALUES ('235', '460100', '海口市', '460000', '0');
INSERT INTO `d_city` VALUES ('236', '460200', '三亚市', '460000', '0');
INSERT INTO `d_city` VALUES ('238', '500100', '重庆市', '500000', '0');
INSERT INTO `d_city` VALUES ('241', '510100', '成都市', '510000', '0');
INSERT INTO `d_city` VALUES ('242', '510300', '自贡市', '510000', '0');
INSERT INTO `d_city` VALUES ('243', '510400', '攀枝花市', '510000', '0');
INSERT INTO `d_city` VALUES ('244', '510500', '泸州市', '510000', '0');
INSERT INTO `d_city` VALUES ('245', '510600', '德阳市', '510000', '0');
INSERT INTO `d_city` VALUES ('246', '510700', '绵阳市', '510000', '0');
INSERT INTO `d_city` VALUES ('247', '510800', '广元市', '510000', '0');
INSERT INTO `d_city` VALUES ('248', '510900', '遂宁市', '510000', '0');
INSERT INTO `d_city` VALUES ('249', '511000', '内江市', '510000', '0');
INSERT INTO `d_city` VALUES ('250', '511100', '乐山市', '510000', '0');
INSERT INTO `d_city` VALUES ('251', '511300', '南充市', '510000', '0');
INSERT INTO `d_city` VALUES ('252', '511400', '眉山市', '510000', '0');
INSERT INTO `d_city` VALUES ('253', '511500', '宜宾市', '510000', '0');
INSERT INTO `d_city` VALUES ('254', '511600', '广安市', '510000', '0');
INSERT INTO `d_city` VALUES ('255', '511700', '达州市', '510000', '0');
INSERT INTO `d_city` VALUES ('256', '511800', '雅安市', '510000', '0');
INSERT INTO `d_city` VALUES ('257', '511900', '巴中市', '510000', '0');
INSERT INTO `d_city` VALUES ('258', '512000', '资阳市', '510000', '0');
INSERT INTO `d_city` VALUES ('259', '513200', '阿坝藏族羌族自治州', '510000', '0');
INSERT INTO `d_city` VALUES ('260', '513300', '甘孜藏族自治州', '510000', '0');
INSERT INTO `d_city` VALUES ('261', '513400', '凉山彝族自治州', '510000', '0');
INSERT INTO `d_city` VALUES ('262', '520100', '贵阳市', '520000', '0');
INSERT INTO `d_city` VALUES ('263', '520200', '六盘水市', '520000', '0');
INSERT INTO `d_city` VALUES ('264', '520300', '遵义市', '520000', '0');
INSERT INTO `d_city` VALUES ('265', '520400', '安顺市', '520000', '0');
INSERT INTO `d_city` VALUES ('266', '522200', '铜仁地区', '520000', '0');
INSERT INTO `d_city` VALUES ('267', '522300', '黔西南布依族苗族自治州', '520000', '0');
INSERT INTO `d_city` VALUES ('268', '522400', '毕节地区', '520000', '0');
INSERT INTO `d_city` VALUES ('269', '522600', '黔东南苗族侗族自治州', '520000', '0');
INSERT INTO `d_city` VALUES ('270', '522700', '黔南布依族苗族自治州', '520000', '0');
INSERT INTO `d_city` VALUES ('271', '530100', '昆明市', '530000', '0');
INSERT INTO `d_city` VALUES ('272', '530300', '曲靖市', '530000', '0');
INSERT INTO `d_city` VALUES ('273', '530400', '玉溪市', '530000', '0');
INSERT INTO `d_city` VALUES ('274', '530500', '保山市', '530000', '0');
INSERT INTO `d_city` VALUES ('275', '530600', '昭通市', '530000', '0');
INSERT INTO `d_city` VALUES ('276', '530700', '丽江市', '530000', '0');
INSERT INTO `d_city` VALUES ('277', '530800', '思茅市', '530000', '0');
INSERT INTO `d_city` VALUES ('278', '530900', '临沧市', '530000', '0');
INSERT INTO `d_city` VALUES ('279', '532300', '楚雄彝族自治州', '530000', '0');
INSERT INTO `d_city` VALUES ('280', '532500', '红河哈尼族彝族自治州', '530000', '0');
INSERT INTO `d_city` VALUES ('281', '532600', '文山壮族苗族自治州', '530000', '0');
INSERT INTO `d_city` VALUES ('282', '532800', '西双版纳傣族自治州', '530000', '0');
INSERT INTO `d_city` VALUES ('283', '532900', '大理白族自治州', '530000', '0');
INSERT INTO `d_city` VALUES ('284', '533100', '德宏傣族景颇族自治州', '530000', '0');
INSERT INTO `d_city` VALUES ('285', '533300', '怒江傈僳族自治州', '530000', '0');
INSERT INTO `d_city` VALUES ('286', '533400', '迪庆藏族自治州', '530000', '0');
INSERT INTO `d_city` VALUES ('287', '540100', '拉萨市', '540000', '0');
INSERT INTO `d_city` VALUES ('288', '542100', '昌都地区', '540000', '0');
INSERT INTO `d_city` VALUES ('289', '542200', '山南地区', '540000', '0');
INSERT INTO `d_city` VALUES ('290', '542300', '日喀则地区', '540000', '0');
INSERT INTO `d_city` VALUES ('291', '542400', '那曲地区', '540000', '0');
INSERT INTO `d_city` VALUES ('292', '542500', '阿里地区', '540000', '0');
INSERT INTO `d_city` VALUES ('293', '542600', '林芝地区', '540000', '0');
INSERT INTO `d_city` VALUES ('294', '610100', '西安市', '610000', '0');
INSERT INTO `d_city` VALUES ('295', '610200', '铜川市', '610000', '0');
INSERT INTO `d_city` VALUES ('296', '610300', '宝鸡市', '610000', '0');
INSERT INTO `d_city` VALUES ('297', '610400', '咸阳市', '610000', '0');
INSERT INTO `d_city` VALUES ('298', '610500', '渭南市', '610000', '0');
INSERT INTO `d_city` VALUES ('299', '610600', '延安市', '610000', '0');
INSERT INTO `d_city` VALUES ('300', '610700', '汉中市', '610000', '0');
INSERT INTO `d_city` VALUES ('301', '610800', '榆林市', '610000', '0');
INSERT INTO `d_city` VALUES ('302', '610900', '安康市', '610000', '0');
INSERT INTO `d_city` VALUES ('303', '611000', '商洛市', '610000', '0');
INSERT INTO `d_city` VALUES ('304', '620100', '兰州市', '620000', '0');
INSERT INTO `d_city` VALUES ('305', '620200', '嘉峪关市', '620000', '0');
INSERT INTO `d_city` VALUES ('306', '620300', '金昌市', '620000', '0');
INSERT INTO `d_city` VALUES ('307', '620400', '白银市', '620000', '0');
INSERT INTO `d_city` VALUES ('308', '620500', '天水市', '620000', '0');
INSERT INTO `d_city` VALUES ('309', '620600', '武威市', '620000', '0');
INSERT INTO `d_city` VALUES ('310', '620700', '张掖市', '620000', '0');
INSERT INTO `d_city` VALUES ('311', '620800', '平凉市', '620000', '0');
INSERT INTO `d_city` VALUES ('312', '620900', '酒泉市', '620000', '0');
INSERT INTO `d_city` VALUES ('313', '621000', '庆阳市', '620000', '0');
INSERT INTO `d_city` VALUES ('314', '621100', '定西市', '620000', '0');
INSERT INTO `d_city` VALUES ('315', '621200', '陇南市', '620000', '0');
INSERT INTO `d_city` VALUES ('316', '622900', '临夏回族自治州', '620000', '0');
INSERT INTO `d_city` VALUES ('317', '623000', '甘南藏族自治州', '620000', '0');
INSERT INTO `d_city` VALUES ('318', '630100', '西宁市', '630000', '0');
INSERT INTO `d_city` VALUES ('319', '632100', '海东地区', '630000', '0');
INSERT INTO `d_city` VALUES ('320', '632200', '海北藏族自治州', '630000', '0');
INSERT INTO `d_city` VALUES ('321', '632300', '黄南藏族自治州', '630000', '0');
INSERT INTO `d_city` VALUES ('322', '632500', '海南藏族自治州', '630000', '0');
INSERT INTO `d_city` VALUES ('323', '632600', '果洛藏族自治州', '630000', '0');
INSERT INTO `d_city` VALUES ('324', '632700', '玉树藏族自治州', '630000', '0');
INSERT INTO `d_city` VALUES ('325', '632800', '海西蒙古族藏族自治州', '630000', '0');
INSERT INTO `d_city` VALUES ('326', '640100', '银川市', '640000', '0');
INSERT INTO `d_city` VALUES ('327', '640200', '石嘴山市', '640000', '0');
INSERT INTO `d_city` VALUES ('328', '640300', '吴忠市', '640000', '0');
INSERT INTO `d_city` VALUES ('329', '640400', '固原市', '640000', '0');
INSERT INTO `d_city` VALUES ('330', '640500', '中卫市', '640000', '0');
INSERT INTO `d_city` VALUES ('331', '650100', '乌鲁木齐市', '650000', '0');
INSERT INTO `d_city` VALUES ('332', '650200', '克拉玛依市', '650000', '0');
INSERT INTO `d_city` VALUES ('333', '652100', '吐鲁番地区', '650000', '0');
INSERT INTO `d_city` VALUES ('334', '652200', '哈密地区', '650000', '0');
INSERT INTO `d_city` VALUES ('335', '652300', '昌吉回族自治州', '650000', '0');
INSERT INTO `d_city` VALUES ('336', '652700', '博尔塔拉蒙古自治州', '650000', '0');
INSERT INTO `d_city` VALUES ('337', '652800', '巴音郭楞蒙古自治州', '650000', '0');
INSERT INTO `d_city` VALUES ('338', '652900', '阿克苏地区', '650000', '0');
INSERT INTO `d_city` VALUES ('339', '653000', '克孜勒苏柯尔克孜自治州', '650000', '0');
INSERT INTO `d_city` VALUES ('340', '653100', '喀什地区', '650000', '0');
INSERT INTO `d_city` VALUES ('341', '653200', '和田地区', '650000', '0');
INSERT INTO `d_city` VALUES ('342', '654000', '伊犁哈萨克自治州', '650000', '0');
INSERT INTO `d_city` VALUES ('343', '654200', '塔城地区', '650000', '0');
INSERT INTO `d_city` VALUES ('344', '654300', '阿勒泰地区', '650000', '0');

-- ----------------------------
-- Table structure for `d_province`
-- ----------------------------
DROP TABLE IF EXISTS `d_province`;
CREATE TABLE `d_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provinceId` int(6) DEFAULT NULL,
  `province` varchar(40) DEFAULT NULL,
  `flag` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `provinceID` (`provinceId`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_province
-- ----------------------------
INSERT INTO `d_province` VALUES ('1', '110000', '北京市', '0');
INSERT INTO `d_province` VALUES ('2', '120000', '天津市', '0');
INSERT INTO `d_province` VALUES ('3', '130000', '河北省', '0');
INSERT INTO `d_province` VALUES ('4', '140000', '山西省', '0');
INSERT INTO `d_province` VALUES ('5', '150000', '内蒙古', '0');
INSERT INTO `d_province` VALUES ('6', '210000', '辽宁省', '0');
INSERT INTO `d_province` VALUES ('7', '220000', '吉林省', '0');
INSERT INTO `d_province` VALUES ('8', '230000', '黑龙江', '0');
INSERT INTO `d_province` VALUES ('9', '310000', '上海市', '0');
INSERT INTO `d_province` VALUES ('10', '320000', '江苏省', '0');
INSERT INTO `d_province` VALUES ('11', '330000', '浙江省', '0');
INSERT INTO `d_province` VALUES ('12', '340000', '安徽省', '0');
INSERT INTO `d_province` VALUES ('13', '350000', '福建省', '0');
INSERT INTO `d_province` VALUES ('14', '360000', '江西省', '0');
INSERT INTO `d_province` VALUES ('15', '370000', '山东省', '0');
INSERT INTO `d_province` VALUES ('16', '410000', '河南省', '0');
INSERT INTO `d_province` VALUES ('17', '420000', '湖北省', '0');
INSERT INTO `d_province` VALUES ('18', '430000', '湖南省', '0');
INSERT INTO `d_province` VALUES ('19', '440000', '广东省', '0');
INSERT INTO `d_province` VALUES ('20', '450000', '广西省', '0');
INSERT INTO `d_province` VALUES ('21', '460000', '海南省', '0');
INSERT INTO `d_province` VALUES ('22', '500000', '重庆市', '0');
INSERT INTO `d_province` VALUES ('23', '510000', '四川省', '0');
INSERT INTO `d_province` VALUES ('24', '520000', '贵州', '0');
INSERT INTO `d_province` VALUES ('25', '530000', '云南省', '0');
INSERT INTO `d_province` VALUES ('26', '540000', '西藏', '0');
INSERT INTO `d_province` VALUES ('27', '610000', '陕西省', '0');
INSERT INTO `d_province` VALUES ('28', '620000', '甘肃省', '0');
INSERT INTO `d_province` VALUES ('29', '630000', '青海省', '0');
INSERT INTO `d_province` VALUES ('30', '640000', '宁夏', '0');
INSERT INTO `d_province` VALUES ('31', '650000', '新疆', '0');

-- ----------------------------
-- Table structure for `education`
-- ----------------------------
DROP TABLE IF EXISTS `education`;
CREATE TABLE `education` (
  `edu_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '关联用户id',
  `edu_school` varchar(128) DEFAULT NULL COMMENT '毕业学校',
  `edu_major` varchar(128) DEFAULT NULL COMMENT '专业',
  `start_year` timestamp NULL DEFAULT NULL COMMENT '开始日期',
  `end_year` timestamp NULL DEFAULT NULL COMMENT '结束日期',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`edu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of education
-- ----------------------------
INSERT INTO `education` VALUES ('75', '46', '清华大学', '金融', '2004-05-10 00:00:00', '2008-05-10 00:00:00', '2016-05-10 14:07:39');
INSERT INTO `education` VALUES ('76', '47', '北京财经大学', '金融', '2007-03-10 00:00:00', '2011-05-04 00:00:00', '2016-05-10 14:11:18');
INSERT INTO `education` VALUES ('77', '48', '杭州师范大学', '金融', '2008-05-10 00:00:00', '2012-05-10 00:00:00', '2016-05-10 14:12:43');
INSERT INTO `education` VALUES ('78', '49', '香港大学', '金融', '2010-05-04 00:00:00', '2014-05-10 00:00:00', '2016-05-10 14:13:46');

-- ----------------------------
-- Table structure for `hot_city`
-- ----------------------------
DROP TABLE IF EXISTS `hot_city`;
CREATE TABLE `hot_city` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(128) DEFAULT NULL COMMENT '热门城市名称',
  `top` int(6) DEFAULT '0' COMMENT '置顶顺序',
  `sort` int(4) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`city_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hot_city
-- ----------------------------
INSERT INTO `hot_city` VALUES ('1', '北京', '1', null);
INSERT INTO `hot_city` VALUES ('2', '上海', '0', null);
INSERT INTO `hot_city` VALUES ('3', '广州', '0', null);
INSERT INTO `hot_city` VALUES ('4', '深圳', '0', null);
INSERT INTO `hot_city` VALUES ('5', '杭州', '10', null);
INSERT INTO `hot_city` VALUES ('6', '成都', '0', null);
INSERT INTO `hot_city` VALUES ('9', '苏州', '0', null);
INSERT INTO `hot_city` VALUES ('10', '珠海', '9', null);
INSERT INTO `hot_city` VALUES ('11', '东莞', '0', null);
INSERT INTO `hot_city` VALUES ('12', '青岛', '0', null);
INSERT INTO `hot_city` VALUES ('13', '大连', '3', null);
INSERT INTO `hot_city` VALUES ('14', '重庆', '5', null);
INSERT INTO `hot_city` VALUES ('15', '南京', '7', null);
INSERT INTO `hot_city` VALUES ('16', '武汉', '0', null);
INSERT INTO `hot_city` VALUES ('17', '长沙', '0', null);
INSERT INTO `hot_city` VALUES ('20', '其他', '-1', null);

-- ----------------------------
-- Table structure for `invest_data`
-- ----------------------------
DROP TABLE IF EXISTS `invest_data`;
CREATE TABLE `invest_data` (
  `data_id` int(11) NOT NULL COMMENT 'user_id',
  `start_year` date DEFAULT NULL COMMENT '开始投资年份',
  `items_count` int(11) DEFAULT NULL COMMENT '已经投资项目数',
  `next_count` int(11) DEFAULT NULL COMMENT '走到下一轮的项目数',
  PRIMARY KEY (`data_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='投资数据表';

-- ----------------------------
-- Records of invest_data
-- ----------------------------
INSERT INTO `invest_data` VALUES ('46', '2009-01-01', '15', '7');
INSERT INTO `invest_data` VALUES ('47', '2008-01-01', '25', '10');
INSERT INTO `invest_data` VALUES ('48', '2011-05-23', '6', '3');
INSERT INTO `invest_data` VALUES ('49', '2013-10-16', '4', '1');
INSERT INTO `invest_data` VALUES ('56', '2012-01-01', '7', '2');

-- ----------------------------
-- Table structure for `investor_apply`
-- ----------------------------
DROP TABLE IF EXISTS `investor_apply`;
CREATE TABLE `investor_apply` (
  `apply_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '审核用户id',
  `apply_stage` int(11) DEFAULT NULL COMMENT '审核阶段',
  PRIMARY KEY (`apply_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='投资人审核表';

-- ----------------------------
-- Records of investor_apply
-- ----------------------------

-- ----------------------------
-- Table structure for `login_record`
-- ----------------------------
DROP TABLE IF EXISTS `login_record`;
CREATE TABLE `login_record` (
  `recor_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `record_ip` varchar(32) DEFAULT NULL COMMENT 'ip地址',
  `record_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  `record_type` int(1) DEFAULT NULL COMMENT '记录类型，1=登录，0=退出',
  `user_type` int(1) DEFAULT NULL COMMENT '用户类型，1=平台用户，2=后台管理账户',
  PRIMARY KEY (`recor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=622 DEFAULT CHARSET=utf8 COMMENT='用户登录退出记录表';

-- ----------------------------
-- Records of login_record
-- ----------------------------
INSERT INTO `login_record` VALUES ('2', '44', '127.0.0.1', '2016-05-07 14:01:17', '1', '1');
INSERT INTO `login_record` VALUES ('3', '44', '127.0.0.1', '2016-05-07 14:01:21', '0', '44');
INSERT INTO `login_record` VALUES ('4', '44', '127.0.0.1', '2016-05-07 14:01:49', '1', '1');
INSERT INTO `login_record` VALUES ('5', '1', '127.0.0.1', '2016-05-07 14:20:36', '0', '2');
INSERT INTO `login_record` VALUES ('6', '1', '127.0.0.1', '2016-05-07 14:48:11', '0', '2');
INSERT INTO `login_record` VALUES ('7', '1', '127.0.0.1', '2016-05-07 14:50:26', '0', '2');
INSERT INTO `login_record` VALUES ('8', '1', '127.0.0.1', '2016-05-07 14:52:36', '0', '2');
INSERT INTO `login_record` VALUES ('9', '1', '127.0.0.1', '2016-05-07 15:03:03', '0', '2');
INSERT INTO `login_record` VALUES ('10', '1', '127.0.0.1', '2016-05-07 16:22:20', '0', '2');
INSERT INTO `login_record` VALUES ('11', '44', '127.0.0.1', '2016-05-09 09:16:45', '1', '1');
INSERT INTO `login_record` VALUES ('12', '1', '127.0.0.1', '2016-05-09 09:31:38', '0', '2');
INSERT INTO `login_record` VALUES ('13', '1', '127.0.0.1', '2016-05-09 09:32:17', '0', '2');
INSERT INTO `login_record` VALUES ('14', '1', '127.0.0.1', '2016-05-09 09:37:57', '0', '2');
INSERT INTO `login_record` VALUES ('15', '1', '127.0.0.1', '2016-05-09 09:52:49', '0', '2');
INSERT INTO `login_record` VALUES ('16', '1', '127.0.0.1', '2016-05-09 10:22:46', '0', '2');
INSERT INTO `login_record` VALUES ('17', '44', '127.0.0.1', '2016-05-09 10:23:55', '1', '1');
INSERT INTO `login_record` VALUES ('18', '44', '127.0.0.1', '2016-05-09 10:27:50', '0', '1');
INSERT INTO `login_record` VALUES ('19', '36', '127.0.0.1', '2016-05-09 10:27:54', '1', '1');
INSERT INTO `login_record` VALUES ('20', '36', '127.0.0.1', '2016-05-09 10:28:34', '0', '1');
INSERT INTO `login_record` VALUES ('21', '44', '127.0.0.1', '2016-05-09 10:28:40', '1', '1');
INSERT INTO `login_record` VALUES ('22', '1', '127.0.0.1', '2016-05-09 10:31:56', '0', '2');
INSERT INTO `login_record` VALUES ('23', '1', '127.0.0.1', '2016-05-09 10:32:56', '0', '2');
INSERT INTO `login_record` VALUES ('24', '44', '127.0.0.1', '2016-05-09 10:34:00', '1', '1');
INSERT INTO `login_record` VALUES ('25', '1', '127.0.0.1', '2016-05-09 10:41:40', '0', '2');
INSERT INTO `login_record` VALUES ('26', '1', '127.0.0.1', '2016-05-09 10:43:57', '0', '2');
INSERT INTO `login_record` VALUES ('27', '1', '127.0.0.1', '2016-05-09 10:46:54', '0', '2');
INSERT INTO `login_record` VALUES ('28', '1', '127.0.0.1', '2016-05-09 11:03:38', '0', '2');
INSERT INTO `login_record` VALUES ('29', '1', '127.0.0.1', '2016-05-09 11:26:07', '0', '2');
INSERT INTO `login_record` VALUES ('30', '1', '127.0.0.1', '2016-05-09 11:47:05', '0', '2');
INSERT INTO `login_record` VALUES ('31', '1', '127.0.0.1', '2016-05-09 11:58:15', '0', '2');
INSERT INTO `login_record` VALUES ('32', '1', '127.0.0.1', '2016-05-09 11:58:46', '0', '2');
INSERT INTO `login_record` VALUES ('33', '1', '127.0.0.1', '2016-05-09 13:07:30', '0', '2');
INSERT INTO `login_record` VALUES ('34', '1', '127.0.0.1', '2016-05-09 13:17:15', '0', '2');
INSERT INTO `login_record` VALUES ('35', '1', '127.0.0.1', '2016-05-09 13:26:12', '0', '2');
INSERT INTO `login_record` VALUES ('36', '44', '127.0.0.1', '2016-05-09 13:27:38', '1', '1');
INSERT INTO `login_record` VALUES ('37', '1', '127.0.0.1', '2016-05-09 13:37:01', '0', '2');
INSERT INTO `login_record` VALUES ('38', '1', '127.0.0.1', '2016-05-09 13:54:58', '0', '2');
INSERT INTO `login_record` VALUES ('39', '1', '127.0.0.1', '2016-05-09 13:55:51', '0', '2');
INSERT INTO `login_record` VALUES ('40', '1', '127.0.0.1', '2016-05-09 14:38:52', '0', '2');
INSERT INTO `login_record` VALUES ('41', '44', '127.0.0.1', '2016-05-09 14:40:55', '1', '1');
INSERT INTO `login_record` VALUES ('42', '44', '127.0.0.1', '2016-05-09 14:41:59', '1', '1');
INSERT INTO `login_record` VALUES ('43', '44', '127.0.0.1', '2016-05-09 14:46:09', '1', '1');
INSERT INTO `login_record` VALUES ('44', '44', '127.0.0.1', '2016-05-09 14:46:13', '0', '1');
INSERT INTO `login_record` VALUES ('45', '1', '127.0.0.1', '2016-05-09 14:46:31', '0', '2');
INSERT INTO `login_record` VALUES ('46', '1', '127.0.0.1', '2016-05-09 14:53:58', '0', '2');
INSERT INTO `login_record` VALUES ('47', '1', '127.0.0.1', '2016-05-09 15:01:22', '0', '2');
INSERT INTO `login_record` VALUES ('48', '1', '127.0.0.1', '2016-05-09 15:20:32', '0', '2');
INSERT INTO `login_record` VALUES ('49', '1', '127.0.0.1', '2016-05-09 15:25:05', '0', '2');
INSERT INTO `login_record` VALUES ('50', '1', '127.0.0.1', '2016-05-09 15:36:26', '0', '2');
INSERT INTO `login_record` VALUES ('51', '1', '127.0.0.1', '2016-05-09 15:47:07', '0', '2');
INSERT INTO `login_record` VALUES ('52', '1', '127.0.0.1', '2016-05-09 15:52:16', '0', '2');
INSERT INTO `login_record` VALUES ('53', '1', '127.0.0.1', '2016-05-09 16:18:13', '0', '2');
INSERT INTO `login_record` VALUES ('54', '1', '127.0.0.1', '2016-05-09 16:22:54', '0', '2');
INSERT INTO `login_record` VALUES ('55', '1', '127.0.0.1', '2016-05-09 16:50:05', '0', '2');
INSERT INTO `login_record` VALUES ('56', '1', '127.0.0.1', '2016-05-09 16:57:11', '0', '2');
INSERT INTO `login_record` VALUES ('57', '44', '127.0.0.1', '2016-05-09 17:30:22', '1', '1');
INSERT INTO `login_record` VALUES ('58', '44', '127.0.0.1', '2016-05-09 17:43:05', '1', '1');
INSERT INTO `login_record` VALUES ('59', '44', '127.0.0.1', '2016-05-09 17:49:03', '1', '1');
INSERT INTO `login_record` VALUES ('60', '44', '127.0.0.1', '2016-05-09 17:51:44', '1', '1');
INSERT INTO `login_record` VALUES ('61', '44', '127.0.0.1', '2016-05-09 17:53:22', '0', '1');
INSERT INTO `login_record` VALUES ('62', '44', '127.0.0.1', '2016-05-09 17:53:29', '1', '1');
INSERT INTO `login_record` VALUES ('63', '44', '127.0.0.1', '2016-05-09 17:54:17', '0', '1');
INSERT INTO `login_record` VALUES ('64', '44', '127.0.0.1', '2016-05-09 17:54:28', '1', '1');
INSERT INTO `login_record` VALUES ('65', '44', '127.0.0.1', '2016-05-09 17:57:38', '0', '1');
INSERT INTO `login_record` VALUES ('66', '44', '127.0.0.1', '2016-05-09 17:57:48', '1', '1');
INSERT INTO `login_record` VALUES ('67', '1', '127.0.0.1', '2016-05-09 18:11:07', '0', '2');
INSERT INTO `login_record` VALUES ('68', '44', '127.0.0.1', '2016-05-09 18:11:55', '1', '1');
INSERT INTO `login_record` VALUES ('69', '44', '127.0.0.1', '2016-05-09 18:17:04', '1', '1');
INSERT INTO `login_record` VALUES ('70', '1', '127.0.0.1', '2016-05-09 18:17:56', '0', '2');
INSERT INTO `login_record` VALUES ('71', '44', '127.0.0.1', '2016-05-09 18:19:43', '1', '1');
INSERT INTO `login_record` VALUES ('72', '44', '127.0.0.1', '2016-05-09 18:20:39', '1', '1');
INSERT INTO `login_record` VALUES ('73', '44', '127.0.0.1', '2016-05-09 18:23:40', '0', '1');
INSERT INTO `login_record` VALUES ('74', '44', '127.0.0.1', '2016-05-09 18:23:47', '1', '1');
INSERT INTO `login_record` VALUES ('75', '44', '127.0.0.1', '2016-05-09 18:27:53', '1', '1');
INSERT INTO `login_record` VALUES ('76', '44', '127.0.0.1', '2016-05-09 18:35:44', '1', '1');
INSERT INTO `login_record` VALUES ('77', '44', '127.0.0.1', '2016-05-09 18:36:56', '0', '1');
INSERT INTO `login_record` VALUES ('78', '1', '127.0.0.1', '2016-05-09 19:04:51', '0', '2');
INSERT INTO `login_record` VALUES ('79', '1', '127.0.0.1', '2016-05-09 19:29:40', '0', '2');
INSERT INTO `login_record` VALUES ('80', '1', '127.0.0.1', '2016-05-09 19:37:51', '0', '2');
INSERT INTO `login_record` VALUES ('81', '1', '127.0.0.1', '2016-05-09 19:48:31', '0', '2');
INSERT INTO `login_record` VALUES ('82', '1', '127.0.0.1', '2016-05-09 19:56:59', '0', '2');
INSERT INTO `login_record` VALUES ('83', '44', '127.0.0.1', '2016-05-09 19:57:37', '1', '1');
INSERT INTO `login_record` VALUES ('84', '1', '127.0.0.1', '2016-05-09 20:12:56', '0', '2');
INSERT INTO `login_record` VALUES ('85', '1', '127.0.0.1', '2016-05-09 20:21:36', '0', '2');
INSERT INTO `login_record` VALUES ('86', '44', '127.0.0.1', '2016-05-09 20:32:01', '0', '1');
INSERT INTO `login_record` VALUES ('87', '44', '127.0.0.1', '2016-05-09 20:32:28', '1', '1');
INSERT INTO `login_record` VALUES ('88', '44', '127.0.0.1', '2016-05-09 20:53:42', '0', '1');
INSERT INTO `login_record` VALUES ('89', '1', '127.0.0.1', '2016-05-09 21:06:01', '0', '2');
INSERT INTO `login_record` VALUES ('90', '1', '127.0.0.1', '2016-05-09 21:09:32', '0', '2');
INSERT INTO `login_record` VALUES ('91', '45', '127.0.0.1', '2016-05-09 21:47:35', '1', '1');
INSERT INTO `login_record` VALUES ('92', '45', '127.0.0.1', '2016-05-09 21:50:18', '0', '1');
INSERT INTO `login_record` VALUES ('93', '45', '127.0.0.1', '2016-05-09 21:50:34', '1', '1');
INSERT INTO `login_record` VALUES ('94', '45', '127.0.0.1', '2016-05-09 21:52:39', '0', '1');
INSERT INTO `login_record` VALUES ('95', '45', '127.0.0.1', '2016-05-10 09:42:44', '1', '1');
INSERT INTO `login_record` VALUES ('96', '1', '127.0.0.1', '2016-05-10 09:44:31', '0', '2');
INSERT INTO `login_record` VALUES ('97', '45', '127.0.0.1', '2016-05-10 09:48:23', '1', '1');
INSERT INTO `login_record` VALUES ('98', '45', '127.0.0.1', '2016-05-10 09:48:44', '0', '1');
INSERT INTO `login_record` VALUES ('99', '45', '127.0.0.1', '2016-05-10 09:48:55', '1', '1');
INSERT INTO `login_record` VALUES ('100', '1', '127.0.0.1', '2016-05-10 10:46:48', '0', '2');
INSERT INTO `login_record` VALUES ('101', '1', '127.0.0.1', '2016-05-10 10:52:47', '0', '2');
INSERT INTO `login_record` VALUES ('102', '1', '127.0.0.1', '2016-05-10 10:58:13', '0', '2');
INSERT INTO `login_record` VALUES ('103', '1', '127.0.0.1', '2016-05-10 11:03:12', '0', '2');
INSERT INTO `login_record` VALUES ('104', '1', '127.0.0.1', '2016-05-10 11:15:32', '0', '2');
INSERT INTO `login_record` VALUES ('105', '1', '127.0.0.1', '2016-05-10 11:24:17', '0', '2');
INSERT INTO `login_record` VALUES ('106', '1', '127.0.0.1', '2016-05-10 11:32:45', '0', '2');
INSERT INTO `login_record` VALUES ('107', '46', '127.0.0.1', '2016-05-10 11:36:13', '1', '1');
INSERT INTO `login_record` VALUES ('108', '46', '127.0.0.1', '2016-05-10 11:37:03', '0', '1');
INSERT INTO `login_record` VALUES ('109', '46', '127.0.0.1', '2016-05-10 11:37:10', '1', '1');
INSERT INTO `login_record` VALUES ('110', '1', '127.0.0.1', '2016-05-10 11:44:22', '0', '2');
INSERT INTO `login_record` VALUES ('111', '1', '127.0.0.1', '2016-05-10 11:46:49', '0', '2');
INSERT INTO `login_record` VALUES ('112', '46', '127.0.0.1', '2016-05-10 11:53:43', '0', '1');
INSERT INTO `login_record` VALUES ('113', '1', '127.0.0.1', '2016-05-10 12:09:55', '0', '2');
INSERT INTO `login_record` VALUES ('114', '47', '127.0.0.1', '2016-05-10 13:34:28', '1', '1');
INSERT INTO `login_record` VALUES ('115', '47', '127.0.0.1', '2016-05-10 13:34:46', '0', '1');
INSERT INTO `login_record` VALUES ('116', '47', '127.0.0.1', '2016-05-10 13:35:05', '1', '1');
INSERT INTO `login_record` VALUES ('117', '1', '127.0.0.1', '2016-05-10 13:47:23', '0', '2');
INSERT INTO `login_record` VALUES ('118', '47', '127.0.0.1', '2016-05-10 13:56:59', '0', '1');
INSERT INTO `login_record` VALUES ('119', '48', '127.0.0.1', '2016-05-10 13:58:10', '1', '1');
INSERT INTO `login_record` VALUES ('120', '48', '127.0.0.1', '2016-05-10 13:59:05', '0', '1');
INSERT INTO `login_record` VALUES ('121', '48', '127.0.0.1', '2016-05-10 13:59:42', '1', '1');
INSERT INTO `login_record` VALUES ('122', '48', '127.0.0.1', '2016-05-10 13:59:47', '0', '1');
INSERT INTO `login_record` VALUES ('123', '49', '127.0.0.1', '2016-05-10 13:59:59', '1', '1');
INSERT INTO `login_record` VALUES ('124', '1', '127.0.0.1', '2016-05-10 14:09:24', '0', '2');
INSERT INTO `login_record` VALUES ('125', '1', '127.0.0.1', '2016-05-10 14:20:30', '0', '2');
INSERT INTO `login_record` VALUES ('126', '1', '127.0.0.1', '2016-05-10 14:36:09', '0', '2');
INSERT INTO `login_record` VALUES ('127', '1', '127.0.0.1', '2016-05-10 14:49:56', '0', '2');
INSERT INTO `login_record` VALUES ('128', '1', '127.0.0.1', '2016-05-10 14:58:18', '0', '2');
INSERT INTO `login_record` VALUES ('129', '1', '127.0.0.1', '2016-05-10 15:00:15', '0', '2');
INSERT INTO `login_record` VALUES ('130', '1', '127.0.0.1', '2016-05-10 15:19:17', '0', '2');
INSERT INTO `login_record` VALUES ('131', '1', '127.0.0.1', '2016-05-10 15:30:39', '0', '2');
INSERT INTO `login_record` VALUES ('132', '1', '127.0.0.1', '2016-05-10 15:35:42', '0', '2');
INSERT INTO `login_record` VALUES ('133', '1', '127.0.0.1', '2016-05-10 15:36:09', '0', '2');
INSERT INTO `login_record` VALUES ('134', '1', '127.0.0.1', '2016-05-10 15:40:18', '0', '2');
INSERT INTO `login_record` VALUES ('135', '1', '127.0.0.1', '2016-05-10 15:43:45', '0', '2');
INSERT INTO `login_record` VALUES ('136', '46', '127.0.0.1', '2016-05-10 15:56:13', '1', '1');
INSERT INTO `login_record` VALUES ('137', '1', '127.0.0.1', '2016-05-10 15:57:26', '0', '2');
INSERT INTO `login_record` VALUES ('138', '46', '127.0.0.1', '2016-05-10 15:59:53', '0', '1');
INSERT INTO `login_record` VALUES ('139', '46', '127.0.0.1', '2016-05-10 16:23:18', '1', '1');
INSERT INTO `login_record` VALUES ('140', '46', '127.0.0.1', '2016-05-10 16:43:58', '1', '1');
INSERT INTO `login_record` VALUES ('141', '46', '127.0.0.1', '2016-05-10 16:47:35', '0', '1');
INSERT INTO `login_record` VALUES ('142', '46', '127.0.0.1', '2016-05-10 16:47:52', '1', '1');
INSERT INTO `login_record` VALUES ('143', '46', '127.0.0.1', '2016-05-10 16:57:07', '1', '1');
INSERT INTO `login_record` VALUES ('144', '46', '127.0.0.1', '2016-05-10 16:59:26', '1', '1');
INSERT INTO `login_record` VALUES ('145', '46', '127.0.0.1', '2016-05-10 17:05:29', '1', '1');
INSERT INTO `login_record` VALUES ('146', '1', '127.0.0.1', '2016-05-10 17:08:26', '0', '2');
INSERT INTO `login_record` VALUES ('147', '1', '127.0.0.1', '2016-05-10 17:09:03', '0', '2');
INSERT INTO `login_record` VALUES ('148', '46', '127.0.0.1', '2016-05-10 17:10:25', '0', '1');
INSERT INTO `login_record` VALUES ('149', '46', '127.0.0.1', '2016-05-10 17:14:22', '1', '1');
INSERT INTO `login_record` VALUES ('150', '46', '127.0.0.1', '2016-05-10 17:16:38', '1', '1');
INSERT INTO `login_record` VALUES ('151', '46', '127.0.0.1', '2016-05-10 17:19:51', '1', '1');
INSERT INTO `login_record` VALUES ('152', '46', '127.0.0.1', '2016-05-10 17:35:14', '1', '1');
INSERT INTO `login_record` VALUES ('153', '46', '127.0.0.1', '2016-05-10 17:41:56', '1', '1');
INSERT INTO `login_record` VALUES ('154', '1', '127.0.0.1', '2016-05-10 17:45:47', '0', '2');
INSERT INTO `login_record` VALUES ('155', '46', '127.0.0.1', '2016-05-10 18:08:28', '0', '1');
INSERT INTO `login_record` VALUES ('156', '50', '127.0.0.1', '2016-05-10 18:09:05', '1', '1');
INSERT INTO `login_record` VALUES ('157', '50', '127.0.0.1', '2016-05-10 18:09:36', '0', '1');
INSERT INTO `login_record` VALUES ('158', '50', '127.0.0.1', '2016-05-10 18:14:03', '1', '1');
INSERT INTO `login_record` VALUES ('159', '1', '127.0.0.1', '2016-05-10 18:20:32', '0', '2');
INSERT INTO `login_record` VALUES ('160', '1', '127.0.0.1', '2016-05-10 18:22:33', '0', '2');
INSERT INTO `login_record` VALUES ('161', '46', '122.87.146.158', '2016-05-10 18:42:04', '1', '1');
INSERT INTO `login_record` VALUES ('162', '1', '122.87.146.158', '2016-05-10 18:49:39', '0', '2');
INSERT INTO `login_record` VALUES ('163', '1', '122.87.146.158', '2016-05-10 19:09:07', '0', '2');
INSERT INTO `login_record` VALUES ('164', '50', '122.87.146.158', '2016-05-10 19:39:31', '1', '1');
INSERT INTO `login_record` VALUES ('165', '50', '122.87.146.158', '2016-05-10 19:47:40', '0', '1');
INSERT INTO `login_record` VALUES ('166', '46', '127.0.0.1', '2016-05-10 20:00:07', '1', '1');
INSERT INTO `login_record` VALUES ('167', '46', '122.87.146.158', '2016-05-10 20:01:04', '1', '1');
INSERT INTO `login_record` VALUES ('168', '46', '122.87.146.158', '2016-05-10 20:01:37', '0', '1');
INSERT INTO `login_record` VALUES ('169', '50', '122.87.146.158', '2016-05-10 20:01:49', '1', '1');
INSERT INTO `login_record` VALUES ('170', '46', '127.0.0.1', '2016-05-10 20:03:14', '0', '1');
INSERT INTO `login_record` VALUES ('171', '50', '127.0.0.1', '2016-05-10 20:03:38', '1', '1');
INSERT INTO `login_record` VALUES ('172', '50', '127.0.0.1', '2016-05-10 20:09:03', '0', '1');
INSERT INTO `login_record` VALUES ('173', '50', '127.0.0.1', '2016-05-10 20:10:20', '1', '1');
INSERT INTO `login_record` VALUES ('174', '50', '127.0.0.1', '2016-05-10 20:13:23', '0', '1');
INSERT INTO `login_record` VALUES ('175', '46', '127.0.0.1', '2016-05-10 20:13:28', '1', '1');
INSERT INTO `login_record` VALUES ('176', '46', '127.0.0.1', '2016-05-10 20:15:15', '0', '1');
INSERT INTO `login_record` VALUES ('177', '50', '127.0.0.1', '2016-05-10 20:17:42', '1', '1');
INSERT INTO `login_record` VALUES ('178', '46', '127.0.0.1', '2016-05-10 20:42:08', '1', '1');
INSERT INTO `login_record` VALUES ('179', '46', '127.0.0.1', '2016-05-10 21:04:08', '1', '1');
INSERT INTO `login_record` VALUES ('180', '50', '127.0.0.1', '2016-05-10 21:16:27', '1', '1');
INSERT INTO `login_record` VALUES ('181', '46', '127.0.0.1', '2016-05-11 09:12:49', '1', '1');
INSERT INTO `login_record` VALUES ('182', '1', '122.87.146.158', '2016-05-11 09:47:33', '0', '2');
INSERT INTO `login_record` VALUES ('183', '46', '127.0.0.1', '2016-05-11 09:52:15', '0', '1');
INSERT INTO `login_record` VALUES ('184', '46', '127.0.0.1', '2016-05-11 10:11:18', '1', '1');
INSERT INTO `login_record` VALUES ('185', '46', '127.0.0.1', '2016-05-11 10:30:44', '1', '1');
INSERT INTO `login_record` VALUES ('186', '52', '122.87.146.158', '2016-05-11 10:39:04', '1', '1');
INSERT INTO `login_record` VALUES ('187', '52', '122.87.146.158', '2016-05-11 10:42:30', '0', '1');
INSERT INTO `login_record` VALUES ('188', '52', '122.87.146.158', '2016-05-11 10:42:45', '1', '1');
INSERT INTO `login_record` VALUES ('189', '1', '122.87.146.158', '2016-05-11 10:45:46', '0', '2');
INSERT INTO `login_record` VALUES ('190', '53', '122.87.146.158', '2016-05-11 10:46:32', '1', '1');
INSERT INTO `login_record` VALUES ('191', '1', '127.0.0.1', '2016-05-11 10:54:11', '0', '2');
INSERT INTO `login_record` VALUES ('192', '46', '127.0.0.1', '2016-05-11 10:54:30', '1', '1');
INSERT INTO `login_record` VALUES ('193', '50', '127.0.0.1', '2016-05-11 10:54:57', '1', '1');
INSERT INTO `login_record` VALUES ('194', '46', '127.0.0.1', '2016-05-11 10:57:26', '1', '1');
INSERT INTO `login_record` VALUES ('195', '46', '127.0.0.1', '2016-05-11 10:59:10', '1', '1');
INSERT INTO `login_record` VALUES ('196', '50', '127.0.0.1', '2016-05-11 11:25:15', '1', '1');
INSERT INTO `login_record` VALUES ('197', '46', '127.0.0.1', '2016-05-11 11:31:37', '1', '1');
INSERT INTO `login_record` VALUES ('198', '46', '127.0.0.1', '2016-05-11 11:36:48', '1', '1');
INSERT INTO `login_record` VALUES ('199', '46', '122.87.146.158', '2016-05-11 13:28:30', '1', '1');
INSERT INTO `login_record` VALUES ('200', '46', '127.0.0.1', '2016-05-11 13:28:56', '1', '1');
INSERT INTO `login_record` VALUES ('201', '46', '122.87.146.158', '2016-05-11 13:29:52', '0', '1');
INSERT INTO `login_record` VALUES ('202', '54', '122.87.146.158', '2016-05-11 13:30:45', '1', '1');
INSERT INTO `login_record` VALUES ('203', '46', '127.0.0.1', '2016-05-11 13:33:24', '0', '1');
INSERT INTO `login_record` VALUES ('204', '54', '127.0.0.1', '2016-05-11 13:33:33', '1', '1');
INSERT INTO `login_record` VALUES ('205', '52', '122.87.146.158', '2016-05-11 13:40:21', '1', '1');
INSERT INTO `login_record` VALUES ('206', '55', '122.87.146.158', '2016-05-11 13:46:24', '1', '1');
INSERT INTO `login_record` VALUES ('207', '46', '127.0.0.1', '2016-05-11 13:50:58', '1', '1');
INSERT INTO `login_record` VALUES ('208', '46', '127.0.0.1', '2016-05-11 13:52:29', '0', '1');
INSERT INTO `login_record` VALUES ('209', '54', '127.0.0.1', '2016-05-11 13:52:45', '1', '1');
INSERT INTO `login_record` VALUES ('210', '56', '127.0.0.1', '2016-05-11 13:53:11', '1', '1');
INSERT INTO `login_record` VALUES ('211', '1', '127.0.0.1', '2016-05-11 14:29:28', '0', '2');
INSERT INTO `login_record` VALUES ('212', '56', '127.0.0.1', '2016-05-11 14:38:52', '0', '1');
INSERT INTO `login_record` VALUES ('213', '56', '127.0.0.1', '2016-05-11 14:39:00', '1', '1');
INSERT INTO `login_record` VALUES ('214', '1', '127.0.0.1', '2016-05-11 14:40:10', '0', '2');
INSERT INTO `login_record` VALUES ('215', '1', '127.0.0.1', '2016-05-11 15:13:38', '0', '2');
INSERT INTO `login_record` VALUES ('216', '54', '127.0.0.1', '2016-05-11 15:44:15', '1', '1');
INSERT INTO `login_record` VALUES ('217', '54', '127.0.0.1', '2016-05-11 15:44:38', '0', '1');
INSERT INTO `login_record` VALUES ('218', '50', '127.0.0.1', '2016-05-11 15:45:01', '1', '1');
INSERT INTO `login_record` VALUES ('219', '53', '122.87.146.158', '2016-05-11 16:25:53', '1', '1');
INSERT INTO `login_record` VALUES ('220', '56', '127.0.0.1', '2016-05-11 16:30:23', '1', '1');
INSERT INTO `login_record` VALUES ('221', '1', '127.0.0.1', '2016-05-11 16:32:00', '0', '2');
INSERT INTO `login_record` VALUES ('222', '56', '127.0.0.1', '2016-05-11 16:36:40', '1', '1');
INSERT INTO `login_record` VALUES ('223', '56', '127.0.0.1', '2016-05-11 16:41:22', '0', '1');
INSERT INTO `login_record` VALUES ('224', '1', '122.87.146.64', '2016-05-11 17:18:57', '0', '2');
INSERT INTO `login_record` VALUES ('225', '50', '122.87.146.64', '2016-05-11 17:19:01', '1', '1');
INSERT INTO `login_record` VALUES ('226', '1', '122.87.146.64', '2016-05-11 17:30:22', '0', '2');
INSERT INTO `login_record` VALUES ('227', '56', '127.0.0.1', '2016-05-11 17:40:00', '1', '1');
INSERT INTO `login_record` VALUES ('228', '53', '122.87.146.221', '2016-05-16 10:16:14', '1', '1');
INSERT INTO `login_record` VALUES ('229', '53', '122.87.146.221', '2016-05-16 10:44:59', '0', '1');
INSERT INTO `login_record` VALUES ('230', '52', '122.87.146.221', '2016-05-16 10:45:15', '1', '1');
INSERT INTO `login_record` VALUES ('231', '56', '122.87.146.221', '2016-05-16 10:46:34', '1', '1');
INSERT INTO `login_record` VALUES ('232', '56', '122.87.146.221', '2016-05-16 10:53:01', '0', '1');
INSERT INTO `login_record` VALUES ('233', '56', '127.0.0.1', '2016-05-16 11:18:25', '1', '1');
INSERT INTO `login_record` VALUES ('234', '53', '122.87.146.221', '2016-05-16 11:21:52', '1', '1');
INSERT INTO `login_record` VALUES ('235', '52', '122.87.146.221', '2016-05-16 11:22:32', '1', '1');
INSERT INTO `login_record` VALUES ('236', '56', '127.0.0.1', '2016-05-16 11:23:47', '0', '1');
INSERT INTO `login_record` VALUES ('237', '53', '127.0.0.1', '2016-05-16 11:24:09', '1', '1');
INSERT INTO `login_record` VALUES ('238', '53', '127.0.0.1', '2016-05-16 11:28:54', '0', '1');
INSERT INTO `login_record` VALUES ('239', '53', '127.0.0.1', '2016-05-16 11:29:08', '1', '1');
INSERT INTO `login_record` VALUES ('240', '53', '127.0.0.1', '2016-05-16 11:32:19', '0', '1');
INSERT INTO `login_record` VALUES ('241', '1', '127.0.0.1', '2016-05-16 11:34:24', '0', '2');
INSERT INTO `login_record` VALUES ('242', '54', '122.87.146.221', '2016-05-16 11:42:22', '1', '1');
INSERT INTO `login_record` VALUES ('243', '1', '122.87.146.221', '2016-05-16 11:43:11', '0', '2');
INSERT INTO `login_record` VALUES ('244', '48', '127.0.0.1', '2016-05-16 13:12:58', '1', '1');
INSERT INTO `login_record` VALUES ('245', '52', '122.87.146.221', '2016-05-16 13:42:26', '1', '1');
INSERT INTO `login_record` VALUES ('246', '1', '127.0.0.1', '2016-05-16 14:35:04', '0', '2');
INSERT INTO `login_record` VALUES ('247', '1', '127.0.0.1', '2016-05-16 14:42:05', '0', '2');
INSERT INTO `login_record` VALUES ('248', '1', '127.0.0.1', '2016-05-16 14:58:17', '0', '2');
INSERT INTO `login_record` VALUES ('249', '52', '122.87.146.221', '2016-05-16 15:01:18', '1', '1');
INSERT INTO `login_record` VALUES ('250', '52', '122.87.146.221', '2016-05-16 15:05:50', '0', '1');
INSERT INTO `login_record` VALUES ('251', '52', '122.87.146.221', '2016-05-16 15:10:40', '1', '1');
INSERT INTO `login_record` VALUES ('252', '53', '122.87.146.221', '2016-05-16 15:35:50', '1', '1');
INSERT INTO `login_record` VALUES ('253', '1', '127.0.0.1', '2016-05-16 15:49:48', '0', '2');
INSERT INTO `login_record` VALUES ('254', '1', '127.0.0.1', '2016-05-16 15:59:33', '0', '2');
INSERT INTO `login_record` VALUES ('255', '1', '127.0.0.1', '2016-05-16 16:11:34', '0', '2');
INSERT INTO `login_record` VALUES ('256', '57', '115.236.187.122', '2016-05-16 16:48:36', '1', '1');
INSERT INTO `login_record` VALUES ('257', '1', '127.0.0.1', '2016-05-16 17:15:46', '0', '2');
INSERT INTO `login_record` VALUES ('258', '56', '127.0.0.1', '2016-05-16 17:40:44', '1', '1');
INSERT INTO `login_record` VALUES ('259', '54', '127.0.0.1', '2016-05-16 17:41:01', '1', '1');
INSERT INTO `login_record` VALUES ('260', '1', '127.0.0.1', '2016-05-16 17:41:13', '0', '2');
INSERT INTO `login_record` VALUES ('261', '54', '127.0.0.1', '2016-05-16 17:41:49', '0', '1');
INSERT INTO `login_record` VALUES ('262', '56', '127.0.0.1', '2016-05-16 17:41:58', '1', '1');
INSERT INTO `login_record` VALUES ('263', '1', '127.0.0.1', '2016-05-16 17:42:50', '0', '2');
INSERT INTO `login_record` VALUES ('264', '1', '127.0.0.1', '2016-05-16 17:44:14', '0', '2');
INSERT INTO `login_record` VALUES ('265', '54', '122.87.146.221', '2016-05-16 18:06:41', '1', '1');
INSERT INTO `login_record` VALUES ('266', '54', '122.87.146.221', '2016-05-16 18:19:16', '0', '1');
INSERT INTO `login_record` VALUES ('267', '56', '122.87.146.221', '2016-05-16 18:19:23', '1', '1');
INSERT INTO `login_record` VALUES ('268', '56', '127.0.0.1', '2016-05-16 18:20:04', '1', '1');
INSERT INTO `login_record` VALUES ('269', '56', '122.87.146.221', '2016-05-16 18:25:05', '1', '1');
INSERT INTO `login_record` VALUES ('270', '1', '127.0.0.1', '2016-05-16 18:55:15', '0', '2');
INSERT INTO `login_record` VALUES ('271', '56', '127.0.0.1', '2016-05-16 19:05:43', '0', '1');
INSERT INTO `login_record` VALUES ('272', '56', '122.87.146.221', '2016-05-16 19:14:05', '0', '1');
INSERT INTO `login_record` VALUES ('273', '56', '127.0.0.1', '2016-05-16 19:24:48', '1', '1');
INSERT INTO `login_record` VALUES ('274', '1', '127.0.0.1', '2016-05-16 19:46:16', '0', '2');
INSERT INTO `login_record` VALUES ('275', '1', '127.0.0.1', '2016-05-16 19:47:06', '0', '2');
INSERT INTO `login_record` VALUES ('276', '58', '127.0.0.1', '2016-05-16 20:17:57', '1', '1');
INSERT INTO `login_record` VALUES ('277', '58', '127.0.0.1', '2016-05-16 20:21:42', '1', '1');
INSERT INTO `login_record` VALUES ('278', '58', '127.0.0.1', '2016-05-16 20:22:14', '0', '1');
INSERT INTO `login_record` VALUES ('279', '63', '127.0.0.1', '2016-05-16 20:34:17', '1', '1');
INSERT INTO `login_record` VALUES ('280', '63', '127.0.0.1', '2016-05-16 20:40:27', '0', '1');
INSERT INTO `login_record` VALUES ('281', '64', '127.0.0.1', '2016-05-16 20:41:28', '1', '1');
INSERT INTO `login_record` VALUES ('282', '1', '127.0.0.1', '2016-05-16 20:48:51', '0', '2');
INSERT INTO `login_record` VALUES ('283', '1', '127.0.0.1', '2016-05-17 10:42:12', '0', '2');
INSERT INTO `login_record` VALUES ('284', '1', '127.0.0.1', '2016-05-17 12:17:33', '0', '2');
INSERT INTO `login_record` VALUES ('285', '56', '127.0.0.1', '2016-05-17 13:59:11', '1', '1');
INSERT INTO `login_record` VALUES ('286', '65', '127.0.0.1', '2016-05-17 14:03:58', '1', '1');
INSERT INTO `login_record` VALUES ('287', '56', '127.0.0.1', '2016-05-17 14:08:33', '1', '1');
INSERT INTO `login_record` VALUES ('288', '56', '127.0.0.1', '2016-05-17 14:14:03', '1', '1');
INSERT INTO `login_record` VALUES ('289', '56', '127.0.0.1', '2016-05-17 14:16:01', '0', '1');
INSERT INTO `login_record` VALUES ('290', '56', '127.0.0.1', '2016-05-17 14:29:12', '1', '1');
INSERT INTO `login_record` VALUES ('291', '65', '127.0.0.1', '2016-05-17 14:32:35', '1', '1');
INSERT INTO `login_record` VALUES ('292', '65', '127.0.0.1', '2016-05-17 14:32:55', '0', '1');
INSERT INTO `login_record` VALUES ('293', '66', '127.0.0.1', '2016-05-17 14:32:59', '1', '1');
INSERT INTO `login_record` VALUES ('294', '56', '127.0.0.1', '2016-05-17 14:39:19', '0', '1');
INSERT INTO `login_record` VALUES ('295', '66', '127.0.0.1', '2016-05-17 14:43:50', '1', '1');
INSERT INTO `login_record` VALUES ('296', '66', '127.0.0.1', '2016-05-17 14:44:02', '0', '1');
INSERT INTO `login_record` VALUES ('297', '56', '127.0.0.1', '2016-05-17 14:58:45', '1', '1');
INSERT INTO `login_record` VALUES ('298', '52', '122.87.146.85', '2016-05-17 15:17:50', '1', '1');
INSERT INTO `login_record` VALUES ('299', '56', '127.0.0.1', '2016-05-17 15:55:09', '1', '1');
INSERT INTO `login_record` VALUES ('300', '56', '127.0.0.1', '2016-05-17 16:12:51', '1', '1');
INSERT INTO `login_record` VALUES ('301', '56', '127.0.0.1', '2016-05-17 16:27:43', '1', '1');
INSERT INTO `login_record` VALUES ('302', '56', '127.0.0.1', '2016-05-17 16:30:06', '1', '1');
INSERT INTO `login_record` VALUES ('303', '56', '127.0.0.1', '2016-05-17 16:32:29', '1', '1');
INSERT INTO `login_record` VALUES ('304', '56', '127.0.0.1', '2016-05-17 16:34:53', '1', '1');
INSERT INTO `login_record` VALUES ('305', '56', '127.0.0.1', '2016-05-17 16:44:13', '1', '1');
INSERT INTO `login_record` VALUES ('306', '56', '127.0.0.1', '2016-05-17 16:44:50', '1', '1');
INSERT INTO `login_record` VALUES ('307', '56', '127.0.0.1', '2016-05-17 16:46:52', '0', '1');
INSERT INTO `login_record` VALUES ('308', '56', '127.0.0.1', '2016-05-17 16:47:04', '1', '1');
INSERT INTO `login_record` VALUES ('309', '56', '127.0.0.1', '2016-05-17 17:02:13', '1', '1');
INSERT INTO `login_record` VALUES ('310', '56', '127.0.0.1', '2016-05-17 17:03:23', '0', '1');
INSERT INTO `login_record` VALUES ('311', '56', '127.0.0.1', '2016-05-17 17:04:10', '1', '1');
INSERT INTO `login_record` VALUES ('312', '56', '127.0.0.1', '2016-05-17 17:04:22', '0', '1');
INSERT INTO `login_record` VALUES ('313', '56', '127.0.0.1', '2016-05-17 17:06:36', '1', '1');
INSERT INTO `login_record` VALUES ('314', '56', '127.0.0.1', '2016-05-17 17:07:13', '0', '1');
INSERT INTO `login_record` VALUES ('315', '56', '127.0.0.1', '2016-05-17 17:07:31', '1', '1');
INSERT INTO `login_record` VALUES ('316', '56', '127.0.0.1', '2016-05-17 17:08:03', '0', '1');
INSERT INTO `login_record` VALUES ('317', '56', '127.0.0.1', '2016-05-17 17:08:24', '1', '1');
INSERT INTO `login_record` VALUES ('318', '56', '127.0.0.1', '2016-05-17 17:12:13', '0', '1');
INSERT INTO `login_record` VALUES ('319', '56', '127.0.0.1', '2016-05-17 17:12:33', '1', '1');
INSERT INTO `login_record` VALUES ('320', '56', '127.0.0.1', '2016-05-17 17:16:54', '0', '1');
INSERT INTO `login_record` VALUES ('321', '56', '127.0.0.1', '2016-05-17 17:17:22', '1', '1');
INSERT INTO `login_record` VALUES ('322', '56', '127.0.0.1', '2016-05-17 17:19:02', '0', '1');
INSERT INTO `login_record` VALUES ('323', '56', '127.0.0.1', '2016-05-17 17:20:26', '1', '1');
INSERT INTO `login_record` VALUES ('324', '56', '127.0.0.1', '2016-05-17 17:20:43', '0', '1');
INSERT INTO `login_record` VALUES ('325', '56', '127.0.0.1', '2016-05-17 17:20:55', '1', '1');
INSERT INTO `login_record` VALUES ('326', '56', '127.0.0.1', '2016-05-17 17:21:18', '0', '1');
INSERT INTO `login_record` VALUES ('327', '56', '127.0.0.1', '2016-05-17 17:22:00', '1', '1');
INSERT INTO `login_record` VALUES ('328', '56', '127.0.0.1', '2016-05-17 17:26:08', '1', '1');
INSERT INTO `login_record` VALUES ('329', '56', '127.0.0.1', '2016-05-17 17:33:47', '1', '1');
INSERT INTO `login_record` VALUES ('330', '56', '127.0.0.1', '2016-05-17 17:36:29', '1', '1');
INSERT INTO `login_record` VALUES ('331', '56', '127.0.0.1', '2016-05-17 17:37:54', '1', '1');
INSERT INTO `login_record` VALUES ('332', '56', '127.0.0.1', '2016-05-17 17:40:47', '1', '1');
INSERT INTO `login_record` VALUES ('333', '56', '127.0.0.1', '2016-05-17 17:43:43', '1', '1');
INSERT INTO `login_record` VALUES ('334', '56', '127.0.0.1', '2016-05-17 17:45:52', '0', '1');
INSERT INTO `login_record` VALUES ('335', '56', '127.0.0.1', '2016-05-17 17:46:25', '1', '1');
INSERT INTO `login_record` VALUES ('336', '56', '127.0.0.1', '2016-05-17 17:47:25', '0', '1');
INSERT INTO `login_record` VALUES ('337', '56', '127.0.0.1', '2016-05-17 17:47:36', '1', '1');
INSERT INTO `login_record` VALUES ('338', '56', '127.0.0.1', '2016-05-17 17:49:40', '0', '1');
INSERT INTO `login_record` VALUES ('339', '56', '127.0.0.1', '2016-05-17 17:49:54', '1', '1');
INSERT INTO `login_record` VALUES ('340', '56', '127.0.0.1', '2016-05-17 17:50:39', '0', '1');
INSERT INTO `login_record` VALUES ('341', '56', '127.0.0.1', '2016-05-17 17:50:59', '1', '1');
INSERT INTO `login_record` VALUES ('342', '56', '127.0.0.1', '2016-05-17 17:53:09', '0', '1');
INSERT INTO `login_record` VALUES ('343', '56', '127.0.0.1', '2016-05-17 17:53:36', '1', '1');
INSERT INTO `login_record` VALUES ('344', '56', '127.0.0.1', '2016-05-17 17:57:45', '0', '1');
INSERT INTO `login_record` VALUES ('345', '56', '127.0.0.1', '2016-05-17 17:58:02', '1', '1');
INSERT INTO `login_record` VALUES ('346', '56', '127.0.0.1', '2016-05-17 18:01:28', '0', '1');
INSERT INTO `login_record` VALUES ('347', '56', '127.0.0.1', '2016-05-17 18:01:42', '1', '1');
INSERT INTO `login_record` VALUES ('348', '56', '127.0.0.1', '2016-05-17 18:03:11', '0', '1');
INSERT INTO `login_record` VALUES ('349', '56', '127.0.0.1', '2016-05-17 18:04:09', '1', '1');
INSERT INTO `login_record` VALUES ('350', '56', '122.87.146.85', '2016-05-17 18:24:45', '1', '1');
INSERT INTO `login_record` VALUES ('351', '56', '122.87.146.85', '2016-05-17 18:24:51', '0', '1');
INSERT INTO `login_record` VALUES ('352', '56', '122.87.146.85', '2016-05-17 18:25:07', '1', '1');
INSERT INTO `login_record` VALUES ('353', '56', '127.0.0.1', '2016-05-17 18:25:29', '1', '1');
INSERT INTO `login_record` VALUES ('354', '56', '127.0.0.1', '2016-05-17 18:26:53', '0', '1');
INSERT INTO `login_record` VALUES ('355', '56', '127.0.0.1', '2016-05-17 18:26:58', '1', '1');
INSERT INTO `login_record` VALUES ('356', '56', '127.0.0.1', '2016-05-17 18:26:58', '0', '1');
INSERT INTO `login_record` VALUES ('357', '56', '127.0.0.1', '2016-05-17 18:27:12', '1', '1');
INSERT INTO `login_record` VALUES ('358', '56', '127.0.0.1', '2016-05-17 18:28:05', '0', '1');
INSERT INTO `login_record` VALUES ('359', '56', '127.0.0.1', '2016-05-17 18:28:11', '1', '1');
INSERT INTO `login_record` VALUES ('360', '56', '127.0.0.1', '2016-05-17 18:28:16', '0', '1');
INSERT INTO `login_record` VALUES ('361', '56', '127.0.0.1', '2016-05-17 18:28:22', '1', '1');
INSERT INTO `login_record` VALUES ('362', '56', '127.0.0.1', '2016-05-17 18:28:22', '0', '1');
INSERT INTO `login_record` VALUES ('363', '56', '127.0.0.1', '2016-05-17 18:28:47', '1', '1');
INSERT INTO `login_record` VALUES ('364', '56', '127.0.0.1', '2016-05-17 18:56:46', '1', '1');
INSERT INTO `login_record` VALUES ('365', '56', '127.0.0.1', '2016-05-17 18:57:32', '0', '1');
INSERT INTO `login_record` VALUES ('366', '56', '127.0.0.1', '2016-05-17 18:57:42', '1', '1');
INSERT INTO `login_record` VALUES ('367', '56', '127.0.0.1', '2016-05-17 18:57:42', '0', '1');
INSERT INTO `login_record` VALUES ('368', '56', '127.0.0.1', '2016-05-17 18:57:55', '1', '1');
INSERT INTO `login_record` VALUES ('369', '56', '127.0.0.1', '2016-05-17 19:01:55', '1', '1');
INSERT INTO `login_record` VALUES ('370', '56', '127.0.0.1', '2016-05-17 19:14:23', '1', '1');
INSERT INTO `login_record` VALUES ('371', '56', '127.0.0.1', '2016-05-17 19:14:48', '1', '1');
INSERT INTO `login_record` VALUES ('372', '1', '127.0.0.1', '2016-05-18 09:20:01', '0', '2');
INSERT INTO `login_record` VALUES ('373', '1', '127.0.0.1', '2016-05-18 09:28:50', '0', '2');
INSERT INTO `login_record` VALUES ('374', '1', '127.0.0.1', '2016-05-18 09:51:15', '0', '2');
INSERT INTO `login_record` VALUES ('375', '1', '127.0.0.1', '2016-05-18 10:16:08', '0', '2');
INSERT INTO `login_record` VALUES ('376', '1', '127.0.0.1', '2016-05-18 10:48:56', '0', '2');
INSERT INTO `login_record` VALUES ('377', '1', '127.0.0.1', '2016-05-18 10:50:37', '0', '2');
INSERT INTO `login_record` VALUES ('378', '56', '127.0.0.1', '2016-05-18 11:07:50', '1', '1');
INSERT INTO `login_record` VALUES ('379', '56', '127.0.0.1', '2016-05-18 11:08:16', '0', '1');
INSERT INTO `login_record` VALUES ('380', '56', '127.0.0.1', '2016-05-18 11:08:37', '1', '1');
INSERT INTO `login_record` VALUES ('381', '56', '127.0.0.1', '2016-05-18 11:09:03', '0', '1');
INSERT INTO `login_record` VALUES ('382', '67', '127.0.0.1', '2016-05-18 11:09:51', '1', '1');
INSERT INTO `login_record` VALUES ('383', '1', '127.0.0.1', '2016-05-18 11:12:09', '0', '2');
INSERT INTO `login_record` VALUES ('384', '1', '127.0.0.1', '2016-05-18 11:19:27', '0', '2');
INSERT INTO `login_record` VALUES ('385', '1', '127.0.0.1', '2016-05-18 13:23:43', '0', '2');
INSERT INTO `login_record` VALUES ('386', '67', '127.0.0.1', '2016-05-18 13:51:51', '1', '1');
INSERT INTO `login_record` VALUES ('387', '67', '127.0.0.1', '2016-05-18 14:14:06', '1', '1');
INSERT INTO `login_record` VALUES ('388', '67', '127.0.0.1', '2016-05-18 14:23:13', '1', '1');
INSERT INTO `login_record` VALUES ('389', '67', '127.0.0.1', '2016-05-18 14:32:45', '1', '1');
INSERT INTO `login_record` VALUES ('390', '67', '127.0.0.1', '2016-05-18 14:33:43', '1', '1');
INSERT INTO `login_record` VALUES ('391', '67', '127.0.0.1', '2016-05-18 15:03:01', '1', '1');
INSERT INTO `login_record` VALUES ('392', '67', '127.0.0.1', '2016-05-18 15:21:50', '1', '1');
INSERT INTO `login_record` VALUES ('393', '1', '127.0.0.1', '2016-05-18 15:24:34', '0', '2');
INSERT INTO `login_record` VALUES ('394', '1', '127.0.0.1', '2016-05-18 15:52:40', '0', '2');
INSERT INTO `login_record` VALUES ('395', '1', '127.0.0.1', '2016-05-18 16:30:43', '0', '2');
INSERT INTO `login_record` VALUES ('396', '1', '127.0.0.1', '2016-05-18 17:00:05', '0', '2');
INSERT INTO `login_record` VALUES ('397', '1', '127.0.0.1', '2016-05-18 17:07:58', '0', '2');
INSERT INTO `login_record` VALUES ('398', '1', '127.0.0.1', '2016-05-18 17:14:13', '0', '2');
INSERT INTO `login_record` VALUES ('399', '1', '127.0.0.1', '2016-05-18 18:02:44', '0', '2');
INSERT INTO `login_record` VALUES ('400', '67', '127.0.0.1', '2016-05-18 18:17:59', '1', '1');
INSERT INTO `login_record` VALUES ('401', '1', '127.0.0.1', '2016-05-18 18:18:40', '0', '2');
INSERT INTO `login_record` VALUES ('402', '1', '127.0.0.1', '2016-05-18 18:25:54', '0', '2');
INSERT INTO `login_record` VALUES ('403', '68', '127.0.0.1', '2016-05-18 18:26:42', '1', '1');
INSERT INTO `login_record` VALUES ('404', '67', '122.87.147.160', '2016-05-19 09:06:08', '1', '1');
INSERT INTO `login_record` VALUES ('405', '1', '127.0.0.1', '2016-05-19 09:09:50', '0', '2');
INSERT INTO `login_record` VALUES ('406', '53', '122.87.147.160', '2016-05-19 09:29:00', '1', '1');
INSERT INTO `login_record` VALUES ('407', '53', '122.87.147.160', '2016-05-19 09:29:05', '1', '1');
INSERT INTO `login_record` VALUES ('408', '53', '122.87.147.160', '2016-05-19 09:29:17', '1', '1');
INSERT INTO `login_record` VALUES ('409', '53', '122.87.147.160', '2016-05-19 09:29:23', '1', '1');
INSERT INTO `login_record` VALUES ('410', '53', '122.87.147.160', '2016-05-19 09:29:48', '0', '1');
INSERT INTO `login_record` VALUES ('411', '56', '122.87.147.160', '2016-05-19 09:29:54', '1', '1');
INSERT INTO `login_record` VALUES ('412', '53', '122.87.147.160', '2016-05-19 09:29:58', '1', '1');
INSERT INTO `login_record` VALUES ('413', '67', '122.87.147.160', '2016-05-19 09:30:20', '0', '1');
INSERT INTO `login_record` VALUES ('414', '53', '122.87.147.160', '2016-05-19 09:30:21', '1', '1');
INSERT INTO `login_record` VALUES ('415', '53', '122.87.147.160', '2016-05-19 09:30:23', '1', '1');
INSERT INTO `login_record` VALUES ('416', '53', '122.87.147.160', '2016-05-19 09:30:35', '0', '1');
INSERT INTO `login_record` VALUES ('417', '67', '122.87.147.160', '2016-05-19 09:30:37', '1', '1');
INSERT INTO `login_record` VALUES ('418', '53', '122.87.147.160', '2016-05-19 09:30:42', '1', '1');
INSERT INTO `login_record` VALUES ('419', '67', '122.87.147.160', '2016-05-19 09:31:24', '0', '1');
INSERT INTO `login_record` VALUES ('420', '67', '122.87.147.160', '2016-05-19 09:32:05', '1', '1');
INSERT INTO `login_record` VALUES ('421', '67', '122.87.147.160', '2016-05-19 09:32:07', '0', '1');
INSERT INTO `login_record` VALUES ('422', '67', '122.87.147.160', '2016-05-19 09:33:09', '1', '1');
INSERT INTO `login_record` VALUES ('423', '56', '127.0.0.1', '2016-05-19 09:34:13', '1', '1');
INSERT INTO `login_record` VALUES ('424', '56', '127.0.0.1', '2016-05-19 09:35:49', '1', '1');
INSERT INTO `login_record` VALUES ('425', '56', '127.0.0.1', '2016-05-19 09:46:32', '1', '1');
INSERT INTO `login_record` VALUES ('426', '56', '127.0.0.1', '2016-05-19 09:48:50', '0', '1');
INSERT INTO `login_record` VALUES ('427', '56', '127.0.0.1', '2016-05-19 09:49:03', '1', '1');
INSERT INTO `login_record` VALUES ('428', '56', '127.0.0.1', '2016-05-19 09:49:15', '0', '1');
INSERT INTO `login_record` VALUES ('429', '56', '127.0.0.1', '2016-05-19 09:49:27', '1', '1');
INSERT INTO `login_record` VALUES ('430', '56', '127.0.0.1', '2016-05-19 09:50:00', '1', '1');
INSERT INTO `login_record` VALUES ('431', '56', '127.0.0.1', '2016-05-19 09:50:40', '0', '1');
INSERT INTO `login_record` VALUES ('432', '56', '127.0.0.1', '2016-05-19 09:50:51', '1', '1');
INSERT INTO `login_record` VALUES ('433', '56', '127.0.0.1', '2016-05-19 09:51:26', '0', '1');
INSERT INTO `login_record` VALUES ('434', '56', '127.0.0.1', '2016-05-19 09:51:33', '1', '1');
INSERT INTO `login_record` VALUES ('435', '56', '127.0.0.1', '2016-05-19 09:51:43', '0', '1');
INSERT INTO `login_record` VALUES ('436', '56', '127.0.0.1', '2016-05-19 09:51:51', '1', '1');
INSERT INTO `login_record` VALUES ('437', '56', '127.0.0.1', '2016-05-19 09:51:51', '0', '1');
INSERT INTO `login_record` VALUES ('438', '56', '127.0.0.1', '2016-05-19 09:53:59', '1', '1');
INSERT INTO `login_record` VALUES ('439', '56', '127.0.0.1', '2016-05-19 09:53:59', '0', '1');
INSERT INTO `login_record` VALUES ('440', '56', '127.0.0.1', '2016-05-19 09:54:16', '1', '1');
INSERT INTO `login_record` VALUES ('441', '56', '127.0.0.1', '2016-05-19 09:54:18', '0', '1');
INSERT INTO `login_record` VALUES ('442', '56', '127.0.0.1', '2016-05-19 09:55:12', '1', '1');
INSERT INTO `login_record` VALUES ('443', '56', '127.0.0.1', '2016-05-19 09:55:18', '0', '1');
INSERT INTO `login_record` VALUES ('444', '56', '127.0.0.1', '2016-05-19 09:56:10', '1', '1');
INSERT INTO `login_record` VALUES ('445', '56', '127.0.0.1', '2016-05-19 09:56:14', '0', '1');
INSERT INTO `login_record` VALUES ('446', '56', '127.0.0.1', '2016-05-19 09:56:29', '1', '1');
INSERT INTO `login_record` VALUES ('447', '56', '127.0.0.1', '2016-05-19 09:56:36', '0', '1');
INSERT INTO `login_record` VALUES ('448', '56', '127.0.0.1', '2016-05-19 09:56:45', '1', '1');
INSERT INTO `login_record` VALUES ('449', '56', '127.0.0.1', '2016-05-19 09:56:52', '0', '1');
INSERT INTO `login_record` VALUES ('450', '1', '127.0.0.1', '2016-05-19 10:01:10', '0', '2');
INSERT INTO `login_record` VALUES ('451', '67', '127.0.0.1', '2016-05-19 10:02:13', '1', '1');
INSERT INTO `login_record` VALUES ('452', '1', '127.0.0.1', '2016-05-19 10:03:16', '0', '2');
INSERT INTO `login_record` VALUES ('453', '1', '127.0.0.1', '2016-05-19 10:09:26', '0', '2');
INSERT INTO `login_record` VALUES ('454', '67', '127.0.0.1', '2016-05-19 10:10:25', '1', '1');
INSERT INTO `login_record` VALUES ('455', '67', '127.0.0.1', '2016-05-19 10:24:45', '1', '1');
INSERT INTO `login_record` VALUES ('456', '1', '127.0.0.1', '2016-05-19 10:30:35', '0', '2');
INSERT INTO `login_record` VALUES ('457', '1', '127.0.0.1', '2016-05-19 10:43:16', '0', '2');
INSERT INTO `login_record` VALUES ('458', '67', '127.0.0.1', '2016-05-19 10:44:59', '1', '1');
INSERT INTO `login_record` VALUES ('459', '67', '127.0.0.1', '2016-05-19 10:54:00', '1', '1');
INSERT INTO `login_record` VALUES ('460', '52', '122.87.147.160', '2016-05-19 10:56:03', '1', '1');
INSERT INTO `login_record` VALUES ('461', '67', '127.0.0.1', '2016-05-19 11:04:55', '1', '1');
INSERT INTO `login_record` VALUES ('462', '67', '127.0.0.1', '2016-05-19 11:06:56', '1', '1');
INSERT INTO `login_record` VALUES ('463', '67', '127.0.0.1', '2016-05-19 11:18:39', '1', '1');
INSERT INTO `login_record` VALUES ('464', '1', '127.0.0.1', '2016-05-19 11:18:49', '0', '2');
INSERT INTO `login_record` VALUES ('465', '67', '127.0.0.1', '2016-05-19 11:25:15', '1', '1');
INSERT INTO `login_record` VALUES ('466', '52', '122.87.147.160', '2016-05-19 11:26:14', '1', '1');
INSERT INTO `login_record` VALUES ('467', '1', '122.87.147.160', '2016-05-19 11:30:08', '0', '2');
INSERT INTO `login_record` VALUES ('468', '1', '122.87.147.160', '2016-05-19 11:30:26', '0', '2');
INSERT INTO `login_record` VALUES ('469', '67', '127.0.0.1', '2016-05-19 11:32:11', '1', '1');
INSERT INTO `login_record` VALUES ('470', '67', '127.0.0.1', '2016-05-19 11:35:57', '1', '1');
INSERT INTO `login_record` VALUES ('471', '67', '127.0.0.1', '2016-05-19 11:41:00', '1', '1');
INSERT INTO `login_record` VALUES ('472', '67', '127.0.0.1', '2016-05-19 11:48:52', '1', '1');
INSERT INTO `login_record` VALUES ('473', '67', '127.0.0.1', '2016-05-19 11:54:11', '0', '1');
INSERT INTO `login_record` VALUES ('474', '67', '127.0.0.1', '2016-05-19 11:54:23', '1', '1');
INSERT INTO `login_record` VALUES ('475', '67', '127.0.0.1', '2016-05-19 11:57:59', '1', '1');
INSERT INTO `login_record` VALUES ('476', '67', '127.0.0.1', '2016-05-19 14:05:50', '1', '1');
INSERT INTO `login_record` VALUES ('477', '1', '127.0.0.1', '2016-05-19 14:06:04', '0', '2');
INSERT INTO `login_record` VALUES ('478', '67', '127.0.0.1', '2016-05-19 14:07:57', '1', '1');
INSERT INTO `login_record` VALUES ('479', '67', '127.0.0.1', '2016-05-19 14:13:25', '1', '1');
INSERT INTO `login_record` VALUES ('480', '67', '127.0.0.1', '2016-05-19 14:24:26', '1', '1');
INSERT INTO `login_record` VALUES ('481', '67', '127.0.0.1', '2016-05-19 14:29:00', '1', '1');
INSERT INTO `login_record` VALUES ('482', '67', '127.0.0.1', '2016-05-19 14:34:22', '1', '1');
INSERT INTO `login_record` VALUES ('483', '67', '127.0.0.1', '2016-05-19 14:40:21', '1', '1');
INSERT INTO `login_record` VALUES ('484', '67', '127.0.0.1', '2016-05-19 14:44:55', '1', '1');
INSERT INTO `login_record` VALUES ('485', '67', '127.0.0.1', '2016-05-19 15:25:55', '1', '1');
INSERT INTO `login_record` VALUES ('486', '56', '127.0.0.1', '2016-05-19 15:51:44', '1', '1');
INSERT INTO `login_record` VALUES ('487', '56', '127.0.0.1', '2016-05-19 15:52:45', '1', '1');
INSERT INTO `login_record` VALUES ('488', '67', '127.0.0.1', '2016-05-19 15:57:55', '1', '1');
INSERT INTO `login_record` VALUES ('489', '67', '127.0.0.1', '2016-05-19 16:02:40', '1', '1');
INSERT INTO `login_record` VALUES ('490', '67', '127.0.0.1', '2016-05-19 16:04:22', '1', '1');
INSERT INTO `login_record` VALUES ('491', '67', '127.0.0.1', '2016-05-19 16:07:09', '1', '1');
INSERT INTO `login_record` VALUES ('492', '56', '127.0.0.1', '2016-05-19 16:23:45', '1', '1');
INSERT INTO `login_record` VALUES ('493', '56', '127.0.0.1', '2016-05-19 16:26:04', '0', '1');
INSERT INTO `login_record` VALUES ('494', '56', '127.0.0.1', '2016-05-19 16:26:09', '1', '1');
INSERT INTO `login_record` VALUES ('495', '1', '122.87.147.160', '2016-05-19 16:43:57', '0', '2');
INSERT INTO `login_record` VALUES ('496', '67', '127.0.0.1', '2016-05-19 16:49:33', '1', '1');
INSERT INTO `login_record` VALUES ('497', '56', '127.0.0.1', '2016-05-19 16:50:26', '1', '1');
INSERT INTO `login_record` VALUES ('498', '56', '127.0.0.1', '2016-05-19 17:16:45', '1', '1');
INSERT INTO `login_record` VALUES ('499', '67', '127.0.0.1', '2016-05-19 17:40:02', '0', '1');
INSERT INTO `login_record` VALUES ('500', '56', '127.0.0.1', '2016-05-19 17:50:04', '0', '1');
INSERT INTO `login_record` VALUES ('501', '56', '127.0.0.1', '2016-05-19 17:50:32', '1', '1');
INSERT INTO `login_record` VALUES ('502', '56', '127.0.0.1', '2016-05-19 18:07:18', '1', '1');
INSERT INTO `login_record` VALUES ('503', '67', '127.0.0.1', '2016-05-20 09:33:45', '1', '1');
INSERT INTO `login_record` VALUES ('504', '56', '127.0.0.1', '2016-05-20 09:49:33', '1', '1');
INSERT INTO `login_record` VALUES ('505', '56', '127.0.0.1', '2016-05-20 09:57:01', '1', '1');
INSERT INTO `login_record` VALUES ('506', '1', '127.0.0.1', '2016-05-20 10:43:17', '0', '2');
INSERT INTO `login_record` VALUES ('507', '56', '127.0.0.1', '2016-05-20 10:50:43', '1', '1');
INSERT INTO `login_record` VALUES ('508', '56', '127.0.0.1', '2016-05-20 10:51:36', '0', '1');
INSERT INTO `login_record` VALUES ('509', '56', '127.0.0.1', '2016-05-20 10:51:41', '1', '1');
INSERT INTO `login_record` VALUES ('510', '56', '127.0.0.1', '2016-05-20 11:17:28', '1', '1');
INSERT INTO `login_record` VALUES ('511', '56', '127.0.0.1', '2016-05-20 11:17:33', '1', '1');
INSERT INTO `login_record` VALUES ('512', '56', '127.0.0.1', '2016-05-20 11:22:50', '1', '1');
INSERT INTO `login_record` VALUES ('513', '56', '127.0.0.1', '2016-05-20 11:22:56', '0', '1');
INSERT INTO `login_record` VALUES ('514', '56', '127.0.0.1', '2016-05-20 11:23:34', '1', '1');
INSERT INTO `login_record` VALUES ('515', '56', '127.0.0.1', '2016-05-20 11:35:56', '1', '1');
INSERT INTO `login_record` VALUES ('516', '56', '127.0.0.1', '2016-05-20 11:35:58', '0', '1');
INSERT INTO `login_record` VALUES ('517', '67', '127.0.0.1', '2016-05-20 11:43:31', '1', '1');
INSERT INTO `login_record` VALUES ('518', '67', '127.0.0.1', '2016-05-20 11:45:00', '1', '1');
INSERT INTO `login_record` VALUES ('519', '67', '122.87.145.130', '2016-05-20 11:56:16', '1', '1');
INSERT INTO `login_record` VALUES ('520', '56', '127.0.0.1', '2016-05-20 12:07:12', '1', '1');
INSERT INTO `login_record` VALUES ('521', '56', '127.0.0.1', '2016-05-20 13:55:10', '1', '1');
INSERT INTO `login_record` VALUES ('522', '67', '127.0.0.1', '2016-05-20 14:32:43', '1', '1');
INSERT INTO `login_record` VALUES ('523', '67', '127.0.0.1', '2016-05-20 15:15:30', '1', '1');
INSERT INTO `login_record` VALUES ('524', '67', '127.0.0.1', '2016-05-20 15:23:29', '1', '1');
INSERT INTO `login_record` VALUES ('525', '67', '127.0.0.1', '2016-05-20 15:28:34', '1', '1');
INSERT INTO `login_record` VALUES ('526', '67', '127.0.0.1', '2016-05-20 15:36:54', '1', '1');
INSERT INTO `login_record` VALUES ('527', '56', '127.0.0.1', '2016-05-20 15:37:37', '1', '1');
INSERT INTO `login_record` VALUES ('528', '56', '127.0.0.1', '2016-05-20 15:45:47', '1', '1');
INSERT INTO `login_record` VALUES ('529', '67', '127.0.0.1', '2016-05-20 15:56:24', '1', '1');
INSERT INTO `login_record` VALUES ('530', '67', '127.0.0.1', '2016-05-20 16:06:22', '1', '1');
INSERT INTO `login_record` VALUES ('531', '1', '127.0.0.1', '2016-05-20 16:08:47', '0', '2');
INSERT INTO `login_record` VALUES ('532', '67', '127.0.0.1', '2016-05-20 16:12:23', '1', '1');
INSERT INTO `login_record` VALUES ('533', '56', '127.0.0.1', '2016-05-20 16:14:38', '1', '1');
INSERT INTO `login_record` VALUES ('534', '56', '127.0.0.1', '2016-05-20 16:19:29', '1', '1');
INSERT INTO `login_record` VALUES ('535', '56', '127.0.0.1', '2016-05-20 16:20:44', '1', '1');
INSERT INTO `login_record` VALUES ('536', '56', '127.0.0.1', '2016-05-20 16:23:26', '0', '1');
INSERT INTO `login_record` VALUES ('537', '56', '127.0.0.1', '2016-05-20 16:23:31', '1', '1');
INSERT INTO `login_record` VALUES ('538', '67', '127.0.0.1', '2016-05-20 16:23:26', '1', '1');
INSERT INTO `login_record` VALUES ('539', '67', '127.0.0.1', '2016-05-20 16:30:04', '1', '1');
INSERT INTO `login_record` VALUES ('540', '56', '127.0.0.1', '2016-05-20 16:32:05', '0', '1');
INSERT INTO `login_record` VALUES ('541', '56', '127.0.0.1', '2016-05-20 16:35:16', '1', '1');
INSERT INTO `login_record` VALUES ('542', '67', '127.0.0.1', '2016-05-20 16:38:45', '1', '1');
INSERT INTO `login_record` VALUES ('543', '67', '127.0.0.1', '2016-05-20 16:41:07', '1', '1');
INSERT INTO `login_record` VALUES ('544', '67', '127.0.0.1', '2016-05-20 16:55:13', '1', '1');
INSERT INTO `login_record` VALUES ('545', '67', '127.0.0.1', '2016-05-20 16:56:30', '0', '1');
INSERT INTO `login_record` VALUES ('546', '67', '127.0.0.1', '2016-05-20 17:05:51', '1', '1');
INSERT INTO `login_record` VALUES ('547', '56', '127.0.0.1', '2016-05-20 17:11:16', '0', '1');
INSERT INTO `login_record` VALUES ('548', '56', '127.0.0.1', '2016-05-20 17:12:15', '1', '1');
INSERT INTO `login_record` VALUES ('549', '67', '127.0.0.1', '2016-05-20 17:30:32', '1', '1');
INSERT INTO `login_record` VALUES ('550', '56', '127.0.0.1', '2016-05-20 17:31:18', '1', '1');
INSERT INTO `login_record` VALUES ('551', '67', '127.0.0.1', '2016-05-20 17:33:54', '1', '1');
INSERT INTO `login_record` VALUES ('552', '67', '127.0.0.1', '2016-05-20 17:34:09', '0', '1');
INSERT INTO `login_record` VALUES ('553', '67', '127.0.0.1', '2016-05-20 17:34:23', '1', '1');
INSERT INTO `login_record` VALUES ('554', '67', '127.0.0.1', '2016-05-21 09:14:44', '1', '1');
INSERT INTO `login_record` VALUES ('555', '56', '127.0.0.1', '2016-05-21 09:57:59', '1', '1');
INSERT INTO `login_record` VALUES ('556', '67', '122.87.146.65', '2016-05-21 10:02:50', '1', '1');
INSERT INTO `login_record` VALUES ('557', '56', '127.0.0.1', '2016-05-21 11:24:20', '1', '1');
INSERT INTO `login_record` VALUES ('558', '56', '127.0.0.1', '2016-05-21 12:28:38', '1', '1');
INSERT INTO `login_record` VALUES ('559', '56', '127.0.0.1', '2016-05-21 13:12:28', '1', '1');
INSERT INTO `login_record` VALUES ('560', '56', '127.0.0.1', '2016-05-23 09:12:21', '1', '1');
INSERT INTO `login_record` VALUES ('561', '56', '127.0.0.1', '2016-05-23 09:32:48', '1', '1');
INSERT INTO `login_record` VALUES ('562', '56', '127.0.0.1', '2016-05-23 09:34:59', '1', '1');
INSERT INTO `login_record` VALUES ('563', '56', '127.0.0.1', '2016-05-23 10:08:15', '1', '1');
INSERT INTO `login_record` VALUES ('564', '67', '122.87.145.51', '2016-05-23 10:50:18', '1', '1');
INSERT INTO `login_record` VALUES ('565', '67', '122.87.145.51', '2016-05-23 11:02:30', '0', '1');
INSERT INTO `login_record` VALUES ('566', '67', '127.0.0.1', '2016-05-23 11:03:21', '1', '1');
INSERT INTO `login_record` VALUES ('567', '67', '127.0.0.1', '2016-05-23 11:03:37', '0', '1');
INSERT INTO `login_record` VALUES ('568', '67', '127.0.0.1', '2016-05-23 11:03:51', '1', '1');
INSERT INTO `login_record` VALUES ('569', '67', '127.0.0.1', '2016-05-23 11:04:24', '0', '1');
INSERT INTO `login_record` VALUES ('570', '67', '127.0.0.1', '2016-05-23 11:04:35', '1', '1');
INSERT INTO `login_record` VALUES ('571', '67', '127.0.0.1', '2016-05-23 11:22:39', '1', '1');
INSERT INTO `login_record` VALUES ('572', '56', '127.0.0.1', '2016-05-23 11:29:12', '1', '1');
INSERT INTO `login_record` VALUES ('573', '67', '127.0.0.1', '2016-05-23 11:31:12', '1', '1');
INSERT INTO `login_record` VALUES ('574', '56', '127.0.0.1', '2016-05-23 11:38:19', '1', '1');
INSERT INTO `login_record` VALUES ('575', '67', '127.0.0.1', '2016-05-23 11:38:15', '1', '1');
INSERT INTO `login_record` VALUES ('576', '67', '127.0.0.1', '2016-05-23 11:44:07', '1', '1');
INSERT INTO `login_record` VALUES ('577', '56', '127.0.0.1', '2016-05-23 11:44:40', '1', '1');
INSERT INTO `login_record` VALUES ('578', '56', '127.0.0.1', '2016-05-23 11:52:39', '1', '1');
INSERT INTO `login_record` VALUES ('579', '67', '127.0.0.1', '2016-05-23 12:41:44', '1', '1');
INSERT INTO `login_record` VALUES ('580', '56', '127.0.0.1', '2016-05-23 13:00:42', '1', '1');
INSERT INTO `login_record` VALUES ('581', '56', '127.0.0.1', '2016-05-23 13:11:33', '1', '1');
INSERT INTO `login_record` VALUES ('582', '56', '127.0.0.1', '2016-05-23 13:36:23', '1', '1');
INSERT INTO `login_record` VALUES ('583', '56', '127.0.0.1', '2016-05-23 13:36:37', '0', '1');
INSERT INTO `login_record` VALUES ('584', '56', '127.0.0.1', '2016-05-23 13:36:44', '1', '1');
INSERT INTO `login_record` VALUES ('585', '56', '127.0.0.1', '2016-05-23 13:39:56', '1', '1');
INSERT INTO `login_record` VALUES ('586', '56', '127.0.0.1', '2016-05-23 13:49:34', '1', '1');
INSERT INTO `login_record` VALUES ('587', '67', '127.0.0.1', '2016-05-23 13:50:36', '1', '1');
INSERT INTO `login_record` VALUES ('588', '56', '127.0.0.1', '2016-05-23 13:58:42', '1', '1');
INSERT INTO `login_record` VALUES ('589', '56', '127.0.0.1', '2016-05-23 14:06:42', '1', '1');
INSERT INTO `login_record` VALUES ('590', '1', '122.87.145.51', '2016-05-23 14:12:35', '0', '2');
INSERT INTO `login_record` VALUES ('591', '67', '122.87.145.51', '2016-05-23 14:13:24', '1', '1');
INSERT INTO `login_record` VALUES ('592', '1', '122.87.145.51', '2016-05-23 14:13:59', '0', '2');
INSERT INTO `login_record` VALUES ('593', '67', '127.0.0.1', '2016-05-23 14:29:57', '1', '1');
INSERT INTO `login_record` VALUES ('594', '56', '127.0.0.1', '2016-05-23 14:43:11', '1', '1');
INSERT INTO `login_record` VALUES ('595', '67', '122.87.145.51', '2016-05-23 14:47:42', '1', '1');
INSERT INTO `login_record` VALUES ('596', '67', '127.0.0.1', '2016-05-23 14:47:41', '1', '1');
INSERT INTO `login_record` VALUES ('597', '67', '127.0.0.1', '2016-05-23 14:53:46', '1', '1');
INSERT INTO `login_record` VALUES ('598', '67', '127.0.0.1', '2016-05-23 14:54:58', '1', '1');
INSERT INTO `login_record` VALUES ('599', '67', '127.0.0.1', '2016-05-23 14:57:17', '1', '1');
INSERT INTO `login_record` VALUES ('600', '56', '127.0.0.1', '2016-05-23 15:10:18', '1', '1');
INSERT INTO `login_record` VALUES ('601', '56', '127.0.0.1', '2016-05-23 15:10:54', '0', '1');
INSERT INTO `login_record` VALUES ('602', '56', '127.0.0.1', '2016-05-23 15:11:27', '1', '1');
INSERT INTO `login_record` VALUES ('603', '56', '122.87.145.51', '2016-05-23 15:12:29', '1', '1');
INSERT INTO `login_record` VALUES ('604', '67', '127.0.0.1', '2016-05-23 15:28:24', '1', '1');
INSERT INTO `login_record` VALUES ('605', '56', '127.0.0.1', '2016-05-23 15:40:25', '1', '1');
INSERT INTO `login_record` VALUES ('606', '56', '127.0.0.1', '2016-05-23 15:47:09', '1', '1');
INSERT INTO `login_record` VALUES ('607', '56', '127.0.0.1', '2016-05-23 15:48:48', '0', '1');
INSERT INTO `login_record` VALUES ('608', '56', '127.0.0.1', '2016-05-23 15:49:03', '0', '1');
INSERT INTO `login_record` VALUES ('609', '56', '127.0.0.1', '2016-05-23 15:49:10', '1', '1');
INSERT INTO `login_record` VALUES ('610', '64', '127.0.0.1', '2016-05-23 15:51:54', '1', '1');
INSERT INTO `login_record` VALUES ('611', '64', '127.0.0.1', '2016-05-23 15:53:11', '0', '1');
INSERT INTO `login_record` VALUES ('612', '56', '127.0.0.1', '2016-05-23 15:53:18', '1', '1');
INSERT INTO `login_record` VALUES ('613', '56', '127.0.0.1', '2016-05-23 15:53:22', '0', '1');
INSERT INTO `login_record` VALUES ('614', '56', '127.0.0.1', '2016-05-23 15:53:27', '1', '1');
INSERT INTO `login_record` VALUES ('615', '56', '127.0.0.1', '2016-05-23 15:54:37', '0', '1');
INSERT INTO `login_record` VALUES ('616', '56', '127.0.0.1', '2016-05-23 15:54:45', '1', '1');
INSERT INTO `login_record` VALUES ('617', '56', '127.0.0.1', '2016-05-23 15:55:21', '0', '1');
INSERT INTO `login_record` VALUES ('618', '56', '127.0.0.1', '2016-05-23 15:55:28', '1', '1');
INSERT INTO `login_record` VALUES ('619', '56', '127.0.0.1', '2016-05-23 15:55:34', '0', '1');
INSERT INTO `login_record` VALUES ('620', '56', '127.0.0.1', '2016-05-23 15:55:40', '1', '1');
INSERT INTO `login_record` VALUES ('621', '56', '127.0.0.1', '2016-05-23 16:10:37', '1', '1');

-- ----------------------------
-- Table structure for `phone_code`
-- ----------------------------
DROP TABLE IF EXISTS `phone_code`;
CREATE TABLE `phone_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号码',
  `code` varchar(255) DEFAULT NULL COMMENT '验证码',
  `refresh_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=317 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phone_code
-- ----------------------------
INSERT INTO `phone_code` VALUES ('307', '15068857611', '6846', '2016-05-21 13:12:00');
INSERT INTO `phone_code` VALUES ('308', '18042324007', '3757', '2016-05-10 18:08:49');
INSERT INTO `phone_code` VALUES ('309', '15958146537', '7160', '2016-05-11 10:38:46');
INSERT INTO `phone_code` VALUES ('310', '15158134357', '7270', '2016-05-11 10:46:17');
INSERT INTO `phone_code` VALUES ('311', '15957145417', '1918', '2016-05-18 11:09:38');
INSERT INTO `phone_code` VALUES ('312', '13567164963', '9325', '2016-05-11 13:46:07');
INSERT INTO `phone_code` VALUES ('313', '18069781988', '9000', '2016-05-16 16:48:20');
INSERT INTO `phone_code` VALUES ('314', '15957145416', '2448', '2016-05-16 19:06:15');
INSERT INTO `phone_code` VALUES ('315', '', '6451', '2016-05-21 11:35:16');
INSERT INTO `phone_code` VALUES ('316', '18702756580', '3859', '2016-05-23 13:34:29');

-- ----------------------------
-- Table structure for `project`
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '项目id',
  `name` varchar(128) DEFAULT NULL COMMENT '项目名',
  `location` varchar(128) DEFAULT NULL COMMENT '位置',
  `team_num` int(11) DEFAULT NULL COMMENT '团队人数',
  `introduction` varchar(256) DEFAULT NULL COMMENT '项目介绍',
  `team_intro` varchar(255) DEFAULT NULL COMMENT '团队介绍',
  `picture_path` varchar(256) DEFAULT NULL COMMENT '图片地址',
  `detail` longtext COMMENT '项目详情',
  `two_dimension_code` varchar(255) DEFAULT NULL COMMENT '二维码地址',
  `weixin` varchar(255) DEFAULT NULL COMMENT '微信公众号',
  `weibo` varchar(255) DEFAULT NULL COMMENT '官方微博',
  `company` varchar(128) DEFAULT NULL COMMENT '公司名',
  `appraise` varchar(255) DEFAULT NULL COMMENT '项目评价',
  `link` varchar(256) DEFAULT NULL COMMENT '项目网站',
  `video_path` varchar(256) DEFAULT NULL COMMENT '视频地址',
  `video_support` int(11) DEFAULT NULL COMMENT '视频点赞数',
  `province_id` int(11) DEFAULT NULL COMMENT '省份id,由前端定义',
  `city_id` int(11) DEFAULT NULL COMMENT '城市id，由前端定义',
  `trade_id` int(11) DEFAULT NULL COMMENT '所属行业（单选）',
  `trade_id_any` varchar(64) DEFAULT NULL COMMENT '所属行业（多选）',
  `product_stage_id` int(11) DEFAULT NULL COMMENT '项目阶段',
  `type_id` int(11) DEFAULT NULL COMMENT '项目类型',
  `status_id` int(11) DEFAULT NULL COMMENT '项目状态',
  `stage_id` int(11) DEFAULT NULL COMMENT '融资阶段',
  `label_id` int(11) DEFAULT NULL COMMENT '领域标签',
  `publisher_id` int(11) DEFAULT NULL COMMENT '发布者id',
  `team_id` int(11) DEFAULT NULL COMMENT '团队成员',
  `financing_info_id` int(11) DEFAULT NULL COMMENT '融资信息id',
  `public_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `start_time` datetime DEFAULT NULL COMMENT '项目开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '项目结束时间',
  `top` int(11) DEFAULT '0',
  `attention` int(11) DEFAULT NULL COMMENT '值得关注，1',
  `hot` int(4) DEFAULT NULL COMMENT '是否热门，1热门，0不是热门',
  `audit` int(4) DEFAULT NULL COMMENT '审核状态',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `refresh_time` timestamp NULL DEFAULT NULL,
  `enable` int(4) unsigned DEFAULT NULL COMMENT '数据标记：0代表可用，1不可用',
  `uuid` varchar(255) DEFAULT NULL COMMENT '唯一标识',
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8 COMMENT='项目表';

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES ('151', '博芮客Breaker-浙大校友店（仅限浙大校友）', null, '23', '“博芮客”抹茶主题体验店是浙大校友胡钢亮团队在2015年做出新的尝试。本次众筹投资人仅限浙大校友', '博芮客Breaker-浙大校友店（仅限浙大校友）', '/files/default/png/201605/20160510185558284.png', '<h1 style=\"box-sizing: inherit; font-weight: 400; font-size: 16px; color: rgb(51, 153, 224); padding-left: 1em; position: relative; line-height: 2; font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; white-space: normal;\">项目介绍</h1><p style=\"box-sizing: inherit;\"><br/></p><p style=\"box-sizing: inherit;\"><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2016-04-23_571b9991ab738.jpg\" style=\"box-sizing: inherit; border: 0px; max-width: 100%; vertical-align: middle;\"/></p><p style=\"box-sizing: inherit;\"><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2016-04-28_5721f4ea1e9ef.jpg\" style=\"box-sizing: inherit; border: 0px; max-width: 100%; vertical-align: middle;\"/></p><p style=\"box-sizing: inherit;\"><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2016-04-23_571b99995a630.jpg\" style=\"box-sizing: inherit; border: 0px; max-width: 100%; vertical-align: middle;\"/></p><p style=\"box-sizing: inherit;\"><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2016-04-23_571b999d6f390.jpg\" style=\"box-sizing: inherit; border: 0px; max-width: 100%; vertical-align: middle;\"/></p><p style=\"box-sizing: inherit;\"><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2016-04-23_571b99a3497a8.jpg\" style=\"box-sizing: inherit; border: 0px; max-width: 100%; vertical-align: middle;\"/></p><p style=\"box-sizing: inherit;\"><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2016-04-23_571b99a928a6b.jpg\" style=\"box-sizing: inherit; border: 0px; max-width: 100%; vertical-align: middle;\"/></p><p><br/></p>', null, null, null, null, '这是一个牛气的项目', 'www.baidu.com', 'www.baidu.com', null, '110000', '110100', null, '1,2', '154', '1', '3', '2', null, '67', null, null, '2016-05-10 19:56:06', null, null, '0', '1', '1', '1', null, '2016-05-17 13:01:34', '1', '3eb8417d-a4c0-4570-bd2f-866c6504e041');
INSERT INTO `project` VALUES ('153', 'Bikernel', null, '32', 'Bikernel是专注于自行车整车及零件数据整合，智能在线组装，整车及组装车销售，优质内容推送的应用。', 'Bikernel是专注于自行车整车及零件数据整合，智能在线组装，整车及组装车销售，优质内容推送的应用。', '/files/default/jpg/201605/20160510190436670.jpg', '<h1 style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; font-size: 14px; white-space: normal; margin-top: 40px; margin-bottom: 20px; line-height: 20px; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: inherit;font-weight: 700\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\">项目简介</span></span></h1><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;white-space: normal;margin-bottom: 15px;line-height: 26px;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\">Bikernel是专注于自行车专业数据整合、自行车在线个性化组装，整车零件销售和自行车精品内容分享的互联网应用。</span></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;white-space: normal;margin-bottom: 15px;line-height: 26px;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\">&nbsp;<span style=\"box-sizing: inherit;font-weight: 700;line-height: 20px\">自行车市场概况</span></span></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;line-height: 28px;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\">中国是传统自行车大国，自行车社会保有量高达3.7亿辆。目前国内自行车市场的产品结构正在经历重大变化，之前以百元自行车为主的代步工具市场已经转变为以千元自行车为主的运动器材市场。全国约有8800家单品牌自行车店和2200多家综合自行车店，销售的自行车已经从之前的通勤车转向了现在的山地车、公路车等运动自行车，平均单价也在逐年升高。2014年运动自行车市场规模达到近百亿元人民币，同比增长约10%。保守预测，未来五年内，中国运动自行车市场每年将稳定保持10%左右的增长。</span></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;line-height: 28px;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\"><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2016-04-25_571d947062cb8.png\" style=\"box-sizing: inherit;border: 0px;max-width: 100%;vertical-align: middle;width: 0px;height: 0px\"/><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2016-04-25_571d947062cb8.png\" style=\"box-sizing: inherit;border: 0px;max-width: 100%;vertical-align: middle;width: 504px;height: 376px\"/></span></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;line-height: 28px;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\"><br style=\"box-sizing: inherit\"/></span></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;line-height: 28px;white-space: normal;background-color: rgb(255, 255, 255)\"><br/></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;line-height: 28px;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-weight: 700\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\">用户需求分析与产品解决方案</span></span></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;white-space: normal;margin-bottom: 15px;line-height: 26px;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\"><span style=\"box-sizing: inherit;font-weight: 700\"><br style=\"box-sizing: inherit\"/></span></span></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;white-space: normal;margin-bottom: 15px;line-height: 26px;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\"><span style=\"box-sizing: inherit;font-weight: 700\">用户需求：1、查找自行车数据和价格，了解相关技术以及寻求个性化FIT服务</span></span></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;white-space: normal;margin-bottom: 15px;line-height: 26px;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\">我们在2015年4月发布的在线调查和线下问卷显示, 在购买自行车前，有88.53%的车友在互联网上寻找过相关信息，其中约71.99%的车友表示对于查询信息的体验不满。</span></p><h1 style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; font-size: 14px; white-space: normal; margin-bottom: 15px; line-height: 26px; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\">被调查者不满的主要原因如下：<span style=\"box-sizing: inherit\"></span></span></h1><p class=\"MsoListParagraph\" style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;white-space: normal;margin-top: 0px;margin-bottom: 15px;margin-left: 24px;line-height: 26px;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\">1、不了解自行车品牌，车型及分类，不知道从何查起。</span></p><p class=\"MsoListParagraph\" style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;white-space: normal;margin-top: 0px;margin-bottom: 15px;margin-left: 24px;line-height: 26px;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\">2、对自行车有一定的了解，但苦于找不到官网，官网为英文，官网结构复杂等问题，不懂官网列出的配置高低或不方便对比。</span></p><p class=\"MsoListParagraph\" style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;white-space: normal;margin-top: 0px;margin-bottom: 15px;margin-left: 24px;line-height: 26px;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\">3、中高端自行车玩家在购买新车或新零件时，苦于要浏览大量不同的官方网页来帮助自己进行选择。</span></p><p class=\"MsoListParagraph\" style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;white-space: normal;margin-top: 0px;margin-bottom: 15px;margin-left: 24px;line-height: 26px;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\">4、在选购零件时无法查询自身应该选择的车架尺寸、把立和坐杆的长度等。</span></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;white-space: normal;margin-bottom: 15px;line-height: 26px;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\"><span style=\"box-sizing: inherit;font-weight: 700\">解决方案：</span></span></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;white-space: normal;margin-bottom: 15px;line-height: 26px;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\"><span style=\"box-sizing: inherit;font-weight: 700\">1、建立自行车整车和零件的数据库</span>：将繁杂的数据整理到APP中，方便用户查看。APP中收录了70余个整车品牌和近160个零件品牌，共计1000多个整车型号，4500多个零件型号。覆盖了绝大部分在售自行车整车和零配件。我们将整车和零件的所有参数整合为统一而简洁的展示形式。整车和所有种类的零件都建立了完善的筛选规则，方便车友迅速查找。</span></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;white-space: normal;margin-bottom: 15px;line-height: 26px;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\"><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2016-04-25_571dafa42878d.png\" style=\"box-sizing: inherit;border: 0px;max-width: 100%;vertical-align: middle\"/></span></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;line-height: 28px;white-space: normal;background-color: rgb(255, 255, 255)\"><br/></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;white-space: normal;margin-bottom: 15px;line-height: 26px;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\"><span style=\"box-sizing: inherit;font-weight: 700\">2、自行车知识库：</span>把自行车领域内专业词汇、热门概念、经典赛事等内容整合到一起，以有组织的集群形式展现。</span></p><h1 style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; font-size: 14px; white-space: normal; margin-bottom: 15px; line-height: 26px; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\"><span style=\"box-sizing: inherit;font-weight: 700\">3、FIT</span><span style=\"box-sizing: inherit;font-weight: 700\">功能</span>：通过输入身高臂展等数据，结合整车和零件数据库中的车架几何，自动匹配适合自己的车架尺寸。在此项功能中，我们针对亚洲人进行了算法优化，更加适合中国用户使用。后期计划与Specialized中国，以及专业自行车Fit软硬件系统和服务公司Retul等洽谈合作，以实现用户从线上到线下的导流。</span></h1><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;white-space: normal;margin-bottom: 15px;text-align: center;line-height: 26px;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\"><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2016-05-03_572853a2d2b9b.png\" style=\"box-sizing: inherit;border: 0px;max-width: 100%;vertical-align: middle\"/></span></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;white-space: normal;margin-bottom: 15px;line-height: 26px;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\"><span style=\"box-sizing: inherit;font-weight: 700\">4、自行车精品内容分享</span>：以Feed流形式为用户推送自行车精品内容。包括新车新技术发布、新车测评；购车，组装车经验分享，精品自行车推送等内容。内容一部分出自APP中的专家用户，一部分由我们自己产生。截至目前，我们已经在全国范围内吸引了300余名中高端自行车玩家包括专业自行车运动员进驻我们的APP，为我们产生专业内容。</span></p><p><br/></p>', null, null, null, null, null, '', '', null, '110000', '110100', null, '3,4', '154', null, null, null, null, '67', null, null, '2016-05-10 19:04:39', null, null, '0', '0', '1', '1', null, '2016-05-10 19:04:39', '1', 'b6120c88-2851-4b9e-b8fc-100ce0e2ad8a');
INSERT INTO `project` VALUES ('154', 'e订生活，互联网购物新模式、新体验！', null, '32', '全新定期购模式，让购物变得更自由，稳定的日用品补充如同流水一般，依照您的安排，定期送货上门，不会间断。', '全新定期购模式，让购物变得更自由，稳定的日用品补充如同流水一般，依照您的安排，定期送货上门，不会间断。', '/files/default/png/201605/20160510190401356.png', '<h1 style=\"box-sizing: inherit; font-weight: 400; font-size: 16px; color: rgb(51, 153, 224); padding-left: 1em; position: relative; line-height: 2; font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; white-space: normal;\">项目介绍</h1><h3 style=\"box-sizing: inherit; font-weight: 400;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\"><span style=\"box-sizing: inherit; line-height: 1.4286;\">&nbsp; &nbsp; &nbsp; e订生活成立于2015年，由3位创始人团队组建而成，网站推出全新的“定期购”模式，意在为消费者带去更自由、更省心的购物体验，优化后的购物流程，有别于目前所有的互联网购物平台；更清晰的订单管理界面，让未来控于掌间；低价、免费无处不在，让消费者购物零压力。<span style=\"box-sizing: inherit; font-family: 微软雅黑;\">&nbsp;解放你的双手，解放你的时间，让日用品补给如同流水一般，定期送货上门，不会间断。</span></span></span><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\"><span style=\"box-sizing: inherit; line-height: 1.4286;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></h3><h3 style=\"box-sizing: inherit; font-weight: 400; line-height: 24.57px;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px; font-weight: bold;\">一、项目背景、灵感</span></h3><h3 style=\"box-sizing: inherit; font-weight: 400;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\">&nbsp; &nbsp; &nbsp;&nbsp;</span><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\">公司创始人在就读MBA的时期，偶然的一次课程让他接触到了一个案例，是关于在欧洲的一个网站“black socks”，一个只卖一种款式“黑袜子”的网站，他的销售方式比较特别，是以包年定期购的方式。当2014年再去看“黑袜子”的时候，它已有上百万的会员，销售额过亿。同时在欧洲不仅仅“黑袜子”网站，其他包年模式的商家也开始兴起了,在北美地区，我们发现定期购物的模式也已经慢慢运营了有三年的时间，这让我们更有兴趣研究定期购模式的背后，它的消费逻辑是如何在满足用户的潜在需求的。</span></h3><h3 style=\"box-sizing: inherit; font-weight: 400;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\"></span><span microsoft=\"\" style=\"box-sizing: inherit; line-height: 1.4286;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\">我们先来看一下定期购的购物形式，例如包年定期购剃须刀，当用户购买剃须刀后，商家每三个月会寄三把刀片给客户，因为每块刀片使用一个月就会氧化了，不仅不锋利，而且不卫生了。还有牙刷，大家都知道牙刷要三个月更换一下，但是很少有人能算的准，自己使用的牙刷已经多久没更换了，而包年厂家就是把这类很有周期性的产品，按使用周期寄给客户，免除客户重复购买的同时，也帮助用户更好的提升生活品质，简化了许多生活习惯与方式。</span></span></h3><h3 style=\"box-sizing: inherit; font-weight: 400;\"><span microsoft=\"\" style=\"box-sizing: inherit; line-height: 1.4286;\"><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2016-03-28_56f8cf2cb0b12.png\" style=\"box-sizing: inherit; border: 0px; max-width: 100%; vertical-align: middle;\"/></span></h3><h1 style=\"box-sizing: inherit; font-weight: 400;\"><span style=\"box-sizing: inherit; line-height: 1.4286;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\">&nbsp; &nbsp;</span><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\">&nbsp;&nbsp;&nbsp;</span><span style=\"box-sizing: inherit; font-size: 16px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;\">有人会问为什么“e订生活”主打销售海外商品？2015年可以称之为跨境电商的元年，越来越多的老百姓开始关注海外商品，在国内诸多问题产品被相继爆出后，更是激发了人们对产品品质的追求，同时加上自身购买力的提升，购买海外产品的热潮已经到来。“低品质的消费是一种浪费”，越来越多的电商也认识到了这一点，天猫、京东、网易等都已经开始做海外购。</span></span></h1><h3 style=\"box-sizing: inherit; font-weight: 400;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;\"><span style=\"box-sizing: inherit; line-height: 1.4286; font-size: 16px;\"><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2016-03-28_56f8d3ed5039b.png\" style=\"box-sizing: inherit; border: 0px; max-width: 100%; vertical-align: middle;\"/></span></span></h3><br style=\"box-sizing: inherit;\"/><h1 style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-weight: 700;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\"><span microsoft=\"\" style=\"box-sizing: inherit; line-height: 24px;\">二、</span>客户遇到的问题与解决方案</span></span></h1><p style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\">1、要加班、要逛街、要聚餐、要看电影&nbsp;.&nbsp;.&nbsp;.&nbsp;&nbsp;回到家才发现想好的去超市采购又忘了，好烦啊！</span></p><p style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;\"><span style=\"box-sizing: inherit; text-align: right; line-height: 18px; font-size: medium;\"><span microsoft=\"\" style=\"box-sizing: inherit;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;————</span></span><span style=\"box-sizing: inherit; font-size: 16px;\"><span style=\"box-sizing: inherit; text-align: right; line-height: 1.4286;\">e</span><span style=\"box-sizing: inherit; text-align: right; line-height: 1.4286;\">订</span><span style=\"box-sizing: inherit; text-align: right; line-height: 1.4286;\">生活独有的全年购，一次下单，整年帮你采购---更高效</span></span></span></p><p style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\"><span style=\"box-sizing: inherit; line-height: 1.4286;\">2、</span><span style=\"box-sizing: inherit; line-height: 1.4286;\">折扣低的怕过期货，价格低的怕是假货，都</span><span style=\"box-sizing: inherit; line-height: 1.4286;\">ok</span><span style=\"box-sizing: inherit; line-height: 1.4286;\">的又要大量购买，还能不能好好购物啊！</span></span></p><p style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; text-align: right; line-height: 1.4286; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\"><span microsoft=\"\" style=\"box-sizing: inherit; line-height: 18px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;————</span>e订生活独有的周期配送服务，不囤货，享受更新鲜的---更品质</span></p><p style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\">3、哪里打折记得告诉我，又错过了折扣活动，秒杀永远和我无缘，哎，宝宝心好累！</span></p><p style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\"><span style=\"box-sizing: inherit; text-align: right; line-height: 1.4286;\"><span microsoft=\"\" style=\"box-sizing: inherit; line-height: 18px;\"><span microsoft=\"\" style=\"box-sizing: inherit;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;————</span></span>e订生活独有的周期订购，锁定低折扣，整个人都精神了--更低价</span></span></p><p style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\"><span style=\"box-sizing: inherit; text-align: right; line-height: 1.4286;\"><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2016-03-28_56f8d454bb92e.png\" style=\"box-sizing: inherit; border: 0px; max-width: 100%; vertical-align: middle;\"/></span></span></p><p style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; text-align: justify; line-height: 24px; text-indent: 28px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\">&nbsp; &nbsp; &nbsp;<span microsoft=\"\" font-size:=\"\" style=\"box-sizing: inherit;\">&nbsp;</span>对于工作忙碌的消费者而言，定期送货上门服务，不仅能解决他们没有时间、没有精力、缺乏选购经验等上班族的日常购物问题，更能够很好的养成他们的日常生活习惯，提高生活品质。</span></p><p style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\"><span microsoft=\"\" style=\"box-sizing: inherit; text-align: justify; line-height: 24px; text-indent: 28px;\">&nbsp; &nbsp; &nbsp;&nbsp;</span><span microsoft=\"\" style=\"box-sizing: inherit; text-align: justify; line-height: 24px; text-indent: 28px;\">对于有网购习惯的消费者而言，定期购的价格优势、商品新鲜度、无邮费限制等优势，也会慢慢成为吸引他们的理由。</span></span></p><p style=\"box-sizing: inherit;\"><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2016-03-11_56e24f3c1eb0c.jpg\" style=\"box-sizing: inherit; border: 0px; max-width: 100%; vertical-align: middle; line-height: 1.4286; font-size: 16px;\"/><br style=\"box-sizing: inherit;\"/></p><p style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; line-height: 1.4286; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\"><span style=\"box-sizing: inherit; font-weight: 700;\"><br style=\"box-sizing: inherit;\"/></span></span></p><h1 style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; line-height: 1.4286; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\"><span style=\"box-sizing: inherit; font-weight: 700;\">三、项目进展情况</span></span></h1><h3 style=\"box-sizing: inherit; font-weight: 400;\"><span style=\"box-sizing: inherit; line-height: 1.4286; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\">&nbsp; &nbsp; &nbsp;&nbsp;</span><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\"><span style=\"box-sizing: inherit; line-height: 1.4286;\">“e订生活”</span><span style=\"box-sizing: inherit; line-height: 1.4286;\">项目2015年底上线，平台刚开始的时候只有“男士商务袜子”一款产品，订制客户有两百多名，销售额2万多元。截止到2016年3月平台销售额近10万元。由于定期购模式在客户重复使用的粘度较高，故而对于接下来的发展，我们保持较乐观的态度。</span></span></h3><h3 style=\"box-sizing: inherit; font-weight: 400;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\"><span style=\"box-sizing: inherit; line-height: 1.4286;\">&nbsp; &nbsp; &nbsp; &nbsp;2016年</span><span style=\"box-sizing: inherit; line-height: 1.4286;\">“e订生活”</span><span style=\"box-sizing: inherit; line-height: 1.4286;\">网站更新，同时</span><span style=\"box-sizing: inherit; line-height: 1.4286;\">网站已建立起了三条海外采购渠道：欧洲、日本、澳新，可采购商品数量数千种，品牌数量近百个，主要集中在个人日常护理产品、养生保健产品等。</span></span></h3><h3 style=\"box-sizing: inherit; font-weight: 400;\"><span style=\"box-sizing: inherit; line-height: 1.4286; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\"></span><br style=\"box-sizing: inherit;\"/></h3><h3 style=\"box-sizing: inherit; font-weight: 400;\"><span style=\"box-sizing: inherit; line-height: 1.4286; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\"><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2016-03-28_56f8d41683f61.png\" style=\"box-sizing: inherit; border: 0px; max-width: 100%; vertical-align: middle;\"/></span></h3><p><br/></p>', null, null, null, null, '这是一个漂亮的项目', '', '', null, '230000', '230100', null, '2,3', '154', '2', '3', '1', null, '67', null, null, '2016-05-10 19:07:57', null, null, '0', '1', '1', '1', null, '2016-05-17 13:01:55', '1', '0ab3b4fb-9002-4705-9523-91d100762ee1');
INSERT INTO `project` VALUES ('155', '灵游互动', null, '22', '灵游互动灵游互动灵游互动灵游互动灵游互动', '灵游互动灵游互动灵游互动灵游互动灵游互动灵游互动灵游互动灵游互动灵游互动灵游互动灵游互动灵游互动', '/files/default/jpg/201605/20160510194043816.jpg', '<h1 style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: inherit; font-family: &#39;microsoft yahei&#39;; line-height: 25px; text-indent: 32px;\"><span style=\"box-sizing: inherit; font-weight: 700;\">&nbsp; &nbsp;项目领投方沃顿资本创始人钱伟涛，职业天使投资人。投资项目包括重庆爱家乡控股集团公司，深圳远古纵横科技开发有限公司、天航科技、中国联保，在聚募网投资过多个项目，是水果无忧联合领投人之一。</span></span></h1><p style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: inherit; font-family: &#39;microsoft yahei&#39;; line-height: 25px; text-indent: 32px;\"><span style=\"box-sizing: inherit; font-weight: 700;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"box-sizing: inherit; color: rgb(255, 0, 0);\">领投理由：</span></span></span></p><p style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: inherit; color: rgb(255, 0, 0);\"><span style=\"box-sizing: inherit; font-family: &#39;microsoft yahei&#39;; line-height: 25px; text-indent: 32px;\"><span style=\"box-sizing: inherit; font-weight: 700;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. CEO陈红亮是做一个能成大事的人，具备很好的创业基因和领导力，在同花顺、拓米已经充分体现，团队能力已经在之前也得到很好证明。</span></span></span></p><p style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: inherit; color: rgb(255, 0, 0);\"><span style=\"box-sizing: inherit; font-family: &#39;microsoft yahei&#39;; line-height: 25px; text-indent: 32px;\"><span style=\"box-sizing: inherit; font-weight: 700;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. 移动游戏是个天然的全球化市场，对于游戏生产大国的中国游戏厂商而言，游戏出海淘金已经是大势所趋。并且中国网络游戏产品的付费设计上在全球也是领先的，加上Freedom资源导入，项目具有非常大的潜力和爆发力。</span></span></span></p><p style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: inherit; font-family: &#39;microsoft yahei&#39;; line-height: 25px; text-indent: 32px;\"><span style=\"box-sizing: inherit; font-weight: 700;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 母公司拓米科技成立于2013年2月，CEO陈红亮。为一家专注移动游戏开发及运营企业，着力打造精品移动游戏，公司以“TPS”和“MMORPG”游戏类型为公司的主打方向，深耕细分市场，做精做透。<span style=\"box-sizing: inherit; color: rgb(255, 0, 0);\">拓米科技在天使轮即获得雷军、YY300万天使投资，2015年上半年完成A轮融资1000万。目前成立子公司灵煽科技，开始进军海外市场，长远目标是成为中小游戏厂商出海联盟。</span></span></span></p><p style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: inherit; font-weight: 700;\">&nbsp;&nbsp;&nbsp; 一 . 母公司拓米科技介绍：</span></p><p style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: inherit; font-family: &#39;microsoft yahei&#39;; line-height: 25px; text-indent: 32px;\"><span style=\"box-sizing: inherit; font-weight: 700;\"><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2015-12-08_566647fa18c4a.png\" style=\"box-sizing: inherit; border: 0px; max-width: 100%; vertical-align: middle;\"/></span></span></p><p style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: inherit; font-family: &#39;microsoft yahei&#39;; line-height: 25px; text-indent: 32px;\"><span style=\"box-sizing: inherit; font-weight: 700;\"><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2015-12-08_566668ac5053c.png\" style=\"box-sizing: inherit; border: 0px; max-width: 100%; vertical-align: middle;\"/></span></span></p><p style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: inherit; font-family: &#39;microsoft yahei&#39;; line-height: 25px; text-indent: 32px;\"><span style=\"box-sizing: inherit; font-weight: 700;\"><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2015-12-08_56666907bae5d.png\" style=\"box-sizing: inherit; border: 0px; max-width: 100%; vertical-align: middle;\"/></span></span><br style=\"box-sizing: inherit;\"/></p><p style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: inherit; font-family: &#39;microsoft yahei&#39;; line-height: 25px; text-indent: 32px;\"><span style=\"box-sizing: inherit; font-weight: 700;\">二. 市场分析</span><br style=\"box-sizing: inherit;\"/></span></p><p style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: inherit; font-family: &#39;microsoft yahei&#39;; line-height: 25px; text-indent: 32px;\">&nbsp;&nbsp;&nbsp;&nbsp; 据相关数据统计，2015年全球的移动游戏市场已达320亿美元，这其中中国市场占400亿人民币左右。一边是诱人的的“伊甸园”，一边是用户逐渐趋于饱和的国内市场，在此环境背景下，越来越多的厂商包括运营平台，都将眼光转向了大洋彼岸。布局海外市场，一时间成为了大热趋势。</span></p><p style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2015-11-30_565bb4cfadcff.png\" style=\"box-sizing: inherit; border: 0px; max-width: 100%; vertical-align: middle;\"/></p><p style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: inherit; font-weight: 700; line-height: 1.4286;\"><span style=\"box-sizing: inherit; font-family: 宋体;\"><br style=\"box-sizing: inherit;\"/></span></span></p><p style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">上图为2015年全类型游戏（移动端和PC端等）数据，中国是世界游戏产品生产及消费大国，亚太地区同时也是游戏消费的主要区域（除去中日韩、其他国家生产较弱）。</p><p style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">布局国外，尤其是亚太地区，成为中国游戏发展的并经之路。</p><p style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: inherit; font-weight: 700; line-height: 1.4286;\"><span style=\"box-sizing: inherit; font-family: 宋体;\"><br style=\"box-sizing: inherit;\"/></span></span></p><h1 style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: inherit; font-weight: 700;\">三. 项目机会</span><br style=\"box-sizing: inherit;\"/></h1><p style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: inherit; font-weight: 700;\"></span></p><p style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">1）传统纯游戏研发商（CP）的可持续发展性较弱（用户掌控能力差）</p><p style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">2）联播网Freedom已积累了过亿的海外游戏用户基数(YOUTUBE为1.1亿人、FaceBook为8000万人)，随着中国游戏行业的崛起，急迫携手中国大陆的优秀研发商及发行商。</p><p style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">3）国内的手游市场短短3年多时间已经竞争十分激烈，国产游戏“出海”淘金已成定局。</p><p style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">4）传统的游戏发行资金要求高。</p><p style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: inherit; font-family: 宋体;\"><br style=\"box-sizing: inherit;\"/></span></p><p style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: inherit; font-weight: 700;\">四. 项目思路</span><br style=\"box-sizing: inherit;\"/></p><p style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">与国外联播网Freedom深度合作，做到资源互补，双方利益最大化。</p><p style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">1）灵游互动依托母公司具备深厚的研发能力和发行能力，实现既有技术团队的支持，又有成熟游戏项目的支持。</p><p style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">2）活跃在YOUTUBE上的联播网Freedom具备非常优质的渠道（专注用户渠道的发展，享受游戏高分成比例，除去传统的CPA,拓宽盈利模式、提高利润空间）</p><p><br/></p>', null, null, null, null, null, '', '', null, '120000', '120100', null, '1,2,3,4', '153', null, null, null, null, '67', null, null, '2016-05-10 19:43:02', null, null, '0', null, null, '0', null, '2016-05-10 19:43:02', '1', '30b646a3-3c4a-4238-a00d-3b624e868e1a');
INSERT INTO `project` VALUES ('156', 'MOM的O2O项目', null, '10', '这是一个传统的O2O项目', '我们的团队。。', '/files/default/png/201605/20160516104612490.png', '<p>qqq<br/></p>', null, null, null, null, null, 'www.baidu', '888891212', null, '330000', '330100', null, '1', '153', null, null, null, null, '67', null, null, '2016-05-16 10:49:01', null, null, '0', null, null, '0', null, '2016-05-16 10:51:08', '1', 'f36fb4a0-9ee5-4471-a9b6-1ce8a5daf3a0');
INSERT INTO `project` VALUES ('157', '3213', null, '12', '312', '放到沙发上', '/files/default/png/201605/20160516112425208.png', '<p>但萨<br/></p>', null, null, null, null, null, '', '', null, '110000', '110100', null, '2', '153', null, null, null, null, '67', null, null, '2016-05-16 11:24:34', null, null, '0', null, null, '0', null, '2016-05-16 11:24:54', '1', 'e05f7eab-80d9-46f6-9d59-0deab64ca315');
INSERT INTO `project` VALUES ('158', '测试', null, '32', '测试', '测试', '/files/default/jpg/201605/20160516174204101.jpg', '<p>测试</p>', null, null, null, null, null, '', '', null, '110000', '110100', null, '1,2,4', '3', '2', '2', '3', null, '67', null, null, '2016-05-16 17:42:17', '2016-05-14 00:00:00', '2016-05-26 00:00:00', '0', null, '1', '1', null, '2016-05-16 20:00:35', '1', '0a36d12d-f5d0-43a9-a7a7-a0f90c4205ce');
INSERT INTO `project` VALUES ('159', '超级大项目', null, '2', '超级大项目', '超级大项目', '/files/default/jpg/201605/20160518111113468.jpg', '<p><span style=\"border: 1px solid rgb(0, 0, 0);\">超级大项目</span><br/></p>', null, null, null, null, null, '', '', null, '110000', '110100', null, '1,2', '1', null, null, null, null, '67', null, null, '2016-05-18 11:11:30', null, null, '0', null, null, '0', null, '2016-05-18 11:11:35', '1', 'a2aca025-b8fc-44ae-b4d8-3e097c4a8cf8');
INSERT INTO `project` VALUES ('160', '豪华项目', null, '23', '豪华项目', '豪华项目', '/files/default/jpg/201605/20160518150311892.jpg', '<p>豪华项目</p>', null, null, null, null, null, '', '', null, '230000', '232700', null, '1,2', '2', null, null, null, null, '67', null, null, '2016-05-18 15:03:29', null, null, '0', null, null, '-1', null, '2016-05-18 15:03:58', '1', '9d3e103e-5cbc-4685-9787-8fc4d832160b');
INSERT INTO `project` VALUES ('161', '21', null, '1', '12', '21', '/files/default/png/201605/20160519112636971.png', '<p>12</p>', null, null, null, null, null, '', '', null, '110000', '110100', null, '1,2', '2', '1', '2', '1', null, '52', null, null, '2016-05-19 11:26:56', '2016-05-09 00:00:00', '2016-05-23 00:00:00', '0', null, null, '0', null, '2016-05-19 11:32:43', '1', '9792db2f-9cc8-4643-8ba6-74e93c43034f');
INSERT INTO `project` VALUES ('162', '啊方法', null, '32', '打撒', '打撒', '', null, null, null, null, null, null, '', '', null, '500000', '500100', null, '1,2', '2', null, null, null, null, '67', null, null, '2016-05-20 11:45:18', null, null, '0', null, null, '-1', null, '2016-05-20 11:45:18', '1', 'ad889bc2-3acc-4798-9aac-d7900b1896e8');
INSERT INTO `project` VALUES ('163', '测试1', null, '23', '测试1', '测试1', '/files/default/jpg/201605/20160520151631683.jpg', null, null, null, null, null, null, '', '', null, '230000', '230100', null, '1,2', '3', null, null, null, null, '67', null, null, '2016-05-20 15:16:45', null, null, '0', null, null, '-1', null, '2016-05-20 15:16:45', '1', 'dc05a524-623c-4615-85f7-2d907195dcb7');
INSERT INTO `project` VALUES ('164', '测试2', null, '2', '测试2', '测试2', '', '<p>测试2</p>', null, null, null, null, null, '', '', null, '230000', '230100', null, '1,2', '5', null, null, null, null, '67', null, null, '2016-05-20 15:24:19', null, null, '0', null, null, '-1', null, '2016-05-20 15:24:52', '1', 'e5f1f8c1-d421-4701-a6a0-c90f93bd5dcd');
INSERT INTO `project` VALUES ('165', '测试3', null, '23', '测试3', '测试3', '', '<p>测试3</p>', null, null, null, null, null, '', '', null, '110000', '110100', null, '1,2', '2', null, null, null, null, '67', null, null, '2016-05-20 15:28:51', null, null, '0', null, null, '-1', null, '2016-05-20 15:28:57', '1', '8f7094f9-c387-4be7-871d-5eacfb078afd');
INSERT INTO `project` VALUES ('166', '测试4', null, '2', '测试4', '测试4', '', '<p>测试4</p>', null, null, null, null, null, '', '', null, '110000', '110100', null, '1,2', '2', null, null, null, null, '67', null, null, '2016-05-20 15:37:13', null, null, '0', null, null, '-1', null, '2016-05-20 15:37:17', '1', '609eb52f-a202-438d-aef6-f66b338c19fd');
INSERT INTO `project` VALUES ('167', '测试6', null, '32', '测试6', '测试6', '', '<p>师德师风第三方</p>', null, null, null, null, null, '', '', null, '110000', '110100', null, '1,4', '2', null, null, null, null, '67', null, null, '2016-05-20 15:56:41', null, null, '0', null, null, '-1', null, '2016-05-20 15:56:47', '1', '87169165-dc6c-4ec0-8b6c-1c76a88ab3cb');
INSERT INTO `project` VALUES ('168', '测试7', null, '23', '测试7', '测试7', '', '<p>测试7</p>', null, null, null, null, null, '', '', null, '110000', '110100', null, '1,2', '1', null, null, null, null, '67', null, null, '2016-05-20 16:06:35', null, null, '0', null, null, '0', null, '2016-05-20 16:06:39', '1', 'e57cffb4-6cac-4bfb-8827-4a2722740e43');
INSERT INTO `project` VALUES ('169', '测试8', null, '32', '测试8', '测试8', '', '<p>测试8</p>', null, null, null, null, 'fad', '', '', null, '230000', '230700', null, '1,2', '2', null, null, null, null, '67', null, null, '2016-05-20 16:12:42', null, null, '0', null, '1', '1', null, '2016-05-20 16:14:37', '1', '40dd5cf0-ae63-4dc7-8106-de1ac9c94fa9');
INSERT INTO `project` VALUES ('170', '测试99', null, '2', '测试99', '测试99', '', '<p><span style=\"border: 1px solid rgb(0, 0, 0);\">测试99</span><br/></p>', null, null, null, null, null, '', '', null, '110000', '110100', null, '1,2', '1', null, null, null, null, '67', null, null, '2016-05-20 16:23:42', null, null, '0', null, null, '0', null, '2016-05-20 16:23:48', '1', '261476c4-85cd-43aa-b309-8a7d6c35c233');
INSERT INTO `project` VALUES ('171', '测试99', null, '2', '测试99', '测试99', '', null, null, null, null, null, null, '', '', null, '110000', '110100', null, '1,2', '1', null, null, null, null, '67', null, null, '2016-05-20 16:25:36', null, null, '0', null, null, '-1', null, '2016-05-20 16:25:36', '1', '08e32f4d-d611-493c-8ecb-8698b9dab683');
INSERT INTO `project` VALUES ('172', '测试10', null, '32', '测试10', '测试10', '', '<p>测试10</p>', null, null, null, null, null, '测试10', '', null, '230000', '230100', null, '1,2', '4', null, null, null, null, '67', null, null, '2016-05-20 16:26:52', null, null, '0', null, null, '-1', null, '2016-05-20 16:26:56', '1', 'b89695ea-1990-46b3-8156-aa4f50729ee0');
INSERT INTO `project` VALUES ('173', '测试11', null, '23', '测试11', '测试11', '', null, null, null, null, null, null, '', '', null, '110000', '110100', null, '1,2', '3', null, null, null, null, '67', null, null, '2016-05-20 16:30:19', null, null, '0', null, null, '-1', null, '2016-05-20 16:30:19', '1', '0bc9e124-61a1-414c-a857-ec71186f4a0e');
INSERT INTO `project` VALUES ('174', '测试11', null, '23', '测试11', '测试11', '', null, null, null, null, null, null, '', '', null, '110000', '110100', null, '1,2', '3', null, null, null, null, '67', null, null, '2016-05-20 16:30:39', null, null, '0', null, null, '-1', null, '2016-05-20 16:30:39', '1', 'ecec3c72-0983-48a4-9ce4-0bf300e2bda7');
INSERT INTO `project` VALUES ('175', '测试11', null, '23', '测试11', '测试11', '', '<p>Cesar</p>', null, null, null, null, null, '', '', null, '110000', '110100', null, '1,2', '3', null, null, null, null, '67', null, null, '2016-05-20 16:34:29', null, null, '0', null, null, '0', null, '2016-05-20 16:34:37', '1', 'fd22c257-1ec3-4c70-a7a5-2da951cc4475');
INSERT INTO `project` VALUES ('176', 'sdag adsf SSDF FDSdFD', null, '23', 'sdag adsf SSDF FDSdFD', 'sdag adsf SSDF FDSdFD', '', '<p style=\"line-height: normal;\">sdag adsf SSDF FDSdFD&nbsp;</p>', null, null, null, null, null, '', '', null, '110000', '110100', null, '1,2', '3', null, null, null, null, '67', null, null, '2016-05-20 16:41:28', null, null, '0', null, null, '0', null, '2016-05-20 16:41:34', '1', '031d0ece-c1e2-4742-90e5-cb44c5eb029a');
INSERT INTO `project` VALUES ('177', '测试导航', null, '23', '测试导航', '测试导航', '', '<p>测试导航</p>', null, null, null, null, null, '', '', null, '110000', '110100', null, '1,2', '2', null, null, null, null, '67', null, null, '2016-05-23 11:31:37', null, null, '0', null, null, '0', null, '2016-05-23 11:32:33', '1', '91224348-3341-4caa-9c0d-a85925c288bf');
INSERT INTO `project` VALUES ('178', '打撒', null, '23', '打撒', 'vv打撒', '', '<p>eewf</p>', null, null, null, null, null, '', '', null, '110000', '110100', null, '1,2', '2', null, null, null, null, '67', null, null, '2016-05-23 12:42:02', null, null, '0', null, null, '0', null, '2016-05-23 12:42:19', '1', '905a4a9c-d475-4c63-9981-5a88951a7e8f');
INSERT INTO `project` VALUES ('179', 'ad', null, '32', 'das', 'proj4_prev', '', '<p>dsfproj4_prev</p>', null, null, null, null, null, '', '', null, '110000', '110100', null, '1,2', '2', null, null, null, null, '67', null, null, '2016-05-23 12:58:25', null, null, '0', null, null, '0', null, '2016-05-23 12:58:30', '1', 'c784c09c-3482-4123-afdb-b7aafdee763f');
INSERT INTO `project` VALUES ('180', 'dsaf', null, '23', 'sdaf', '32', '', null, null, null, null, null, null, '', '', null, '120000', '120100', null, '1,2', '1', null, null, null, null, '67', null, null, '2016-05-23 13:20:20', null, null, '0', null, null, '-1', null, '2016-05-23 13:20:20', '1', '3f73eae6-c79a-4fc1-acb2-f26731086fe2');
INSERT INTO `project` VALUES ('181', 'ad', null, '23', 'dsf', '32', '', null, null, null, null, null, null, '', '', null, '120000', '120100', null, '1,2', '2', null, null, null, null, '67', null, null, '2016-05-23 13:21:22', null, null, '0', null, null, '-1', null, '2016-05-23 13:21:22', '1', '472c0ac3-6c1a-424b-8da0-496835510630');
INSERT INTO `project` VALUES ('182', 'ad', null, '23', 'dsf', '32', '', '<p>dsf</p>', null, null, null, null, null, '', '', null, '120000', '120100', null, '1,2', '2', null, null, null, null, '67', null, null, '2016-05-23 13:21:45', null, null, '0', null, null, '0', null, '2016-05-23 13:21:57', '1', '7b6b3a85-ecaa-4105-aa8d-f9b88279b2ce');
INSERT INTO `project` VALUES ('183', 'adsf', null, '2', 'dasf', '3', '', null, null, null, null, null, null, '', '', null, '110000', '110100', null, '1,2', '1', null, null, null, null, '67', null, null, '2016-05-23 13:29:17', null, null, '0', null, null, '-1', null, '2016-05-23 13:29:17', '1', '34a2ed81-a6d9-415e-b71d-1ae299130801');
INSERT INTO `project` VALUES ('184', '祝龙涛', null, '23', 'sda', '23', '', null, null, null, null, null, null, '', '', null, '110000', '110100', null, '1,2', '2', null, null, null, null, '67', null, null, '2016-05-23 13:30:16', null, null, '0', null, null, '-1', null, '2016-05-23 13:30:16', '1', '888e3e4e-33a3-45f2-8e45-dfbc1068c07a');
INSERT INTO `project` VALUES ('185', '祝龙涛', null, '23', 'sda', '23', '', null, null, null, null, null, null, '', '', null, '110000', '110100', null, '1,2', '2', null, null, null, null, '67', null, null, '2016-05-23 13:30:20', null, null, '0', null, null, '-1', null, '2016-05-23 13:30:20', '1', '771b4db4-2dfc-4e75-9a44-73b400afa438');
INSERT INTO `project` VALUES ('186', '祝龙涛', null, '23', 'sda', '23', '', null, null, null, null, null, null, '', '', null, '110000', '110100', null, '1,2', '2', null, null, null, null, '67', null, null, '2016-05-23 13:30:27', null, null, '0', null, null, '-1', null, '2016-05-23 13:30:27', '1', '84a7f2a4-8aea-4fa6-83c7-d4d589f93c18');
INSERT INTO `project` VALUES ('187', '祝龙涛', null, '23', 'sda', '23', '', null, null, null, null, null, null, '', '', null, '110000', '110100', null, '1,2', '2', null, null, null, null, '67', null, null, '2016-05-23 13:30:39', null, null, '0', null, null, '-1', null, '2016-05-23 13:30:39', '1', '8f79a812-4f13-4d3c-84c4-0c9c5a3096df');
INSERT INTO `project` VALUES ('188', '祝龙涛', null, '23', 'sda', '23', '', '<p>we</p>', null, null, null, null, null, '', '', null, '110000', '110100', null, '1,2', '2', null, null, null, null, '67', null, null, '2016-05-23 13:31:19', null, null, '0', null, null, '-1', null, '2016-05-23 13:31:23', '1', '9b903368-a243-47cb-8cd4-e40d1803bae1');
INSERT INTO `project` VALUES ('189', '祝龙涛', null, '33', 'cxc', '33', '', null, null, null, null, null, null, '', '', null, '310000', '310100', null, '1,2', '3', null, null, null, null, '67', null, null, '2016-05-23 13:50:59', null, null, '0', null, null, '-1', null, '2016-05-23 13:50:59', '1', '618a60dd-ba99-46a4-9a39-7ed46c02a2f8');
INSERT INTO `project` VALUES ('190', 'dsaf', null, '1', 'asdf', 'ds', '', null, null, null, null, null, null, '', '', null, '110000', '110100', null, '1,2', '2', null, null, null, null, '67', null, null, '2016-05-23 13:57:32', null, null, '0', null, null, '-1', null, '2016-05-23 13:57:32', '1', '308c3576-3684-4677-b5ef-53e9812c6b76');
INSERT INTO `project` VALUES ('191', 'dsaf', null, '1', 'asdf', 'ds', '', null, null, null, null, null, null, '', '', null, '110000', '110100', null, '1,2', '2', null, null, null, null, '67', null, null, '2016-05-23 13:57:56', null, null, '0', null, null, '-1', null, '2016-05-23 13:57:56', '1', 'ef65b6ed-d85c-4a75-a4a5-1327b32112c9');
INSERT INTO `project` VALUES ('192', 'dsaf', null, '1', 'asdf', 'ds', '', null, null, null, null, null, null, '', '', null, '110000', '110100', null, '1,2', '2', null, null, null, null, '67', null, null, '2016-05-23 13:58:02', null, null, '0', null, null, '-1', null, '2016-05-23 13:58:02', '1', '95da0270-a367-46cf-ab36-4afd2a441704');
INSERT INTO `project` VALUES ('193', '祝龙涛', null, '23', 'dfa', 'asf', '', null, null, null, null, null, null, '', '', null, '110000', '110100', null, '1,2', '1', null, null, null, null, '67', null, null, '2016-05-23 14:01:09', null, null, '0', null, null, '-1', null, '2016-05-23 14:01:09', '1', '0cd25bb3-b35b-43fb-9232-964a4750c10b');
INSERT INTO `project` VALUES ('194', '祝龙涛', null, '23', 'dfa', 'asf', '', null, null, null, null, null, null, '', '', null, '110000', '110100', null, '1,2', '1', null, null, null, null, '67', null, null, '2016-05-23 14:01:13', null, null, '0', null, null, '-1', null, '2016-05-23 14:01:13', '1', 'c2618049-1d40-4a88-aae0-1d2e5faa629e');
INSERT INTO `project` VALUES ('195', 'ads', null, '23', 'adsf', 'adsg', '', null, null, null, null, null, null, '', '', null, '110000', '110100', null, '1,2', '2', null, null, null, null, '67', null, null, '2016-05-23 14:01:31', null, null, '0', null, null, '-1', null, '2016-05-23 14:01:31', '1', '7cd49844-862d-4907-a787-637024c3bf9d');
INSERT INTO `project` VALUES ('196', 'ads', null, '23', 'adsf', 'adsg', '', null, null, null, null, null, null, '', '', null, '110000', '110100', null, '1,2', '2', null, null, null, null, '67', null, null, '2016-05-23 14:01:58', null, null, '0', null, null, '-1', null, '2016-05-23 14:01:58', '1', '80a7a3f8-0cc9-4bf1-b441-1bda8237b676');
INSERT INTO `project` VALUES ('197', 'ads', null, '23', 'adsf', 'adsg', '', null, null, null, null, null, null, '', '', null, '110000', '110100', null, '1,2', '2', null, null, null, null, '67', null, null, '2016-05-23 14:02:30', null, null, '0', null, null, '-1', null, '2016-05-23 14:02:30', '1', '34f1f775-e5eb-414c-8d22-714774fd0f6d');
INSERT INTO `project` VALUES ('198', 'ads', null, '23', 'adsf', 'adsg', '', null, null, null, null, null, null, '', '', null, '110000', '110100', null, '1,2', '2', null, null, null, null, '67', null, null, '2016-05-23 14:03:19', null, null, '0', null, null, '-1', null, '2016-05-23 14:03:19', '1', 'c011825d-56cd-4712-a4f3-0af7426efdec');
INSERT INTO `project` VALUES ('199', 'adsf', null, '23', 'adsf', 'dsa', '', null, null, null, null, null, null, '', '', null, '110000', '110100', null, '1,2', '1', null, null, null, null, '67', null, null, '2016-05-23 14:03:36', null, null, '0', null, null, '-1', null, '2016-05-23 14:03:36', '1', '3faa23a4-008b-4295-b78b-81f4cc6c86ce');
INSERT INTO `project` VALUES ('200', 'adsf', null, '23', 'adsf', 'dsa', '', '<p>asdg</p>', null, null, null, null, null, '', '', null, '110000', '110100', null, '1,2', '1', null, null, null, null, '67', null, null, '2016-05-23 14:04:11', null, null, '0', null, null, '0', null, '2016-05-23 14:09:07', '1', 'a9f5e5be-e55c-4cae-b90e-2fd52cc78ba1');
INSERT INTO `project` VALUES ('201', 'dasf', null, '23', 'dsaf', '32', '', null, null, null, null, null, null, '', '', null, '120000', '120100', null, '1,2', '3', null, null, null, null, '67', null, null, '2016-05-23 14:30:08', null, null, '0', null, null, '-1', null, '2016-05-23 14:30:08', '1', '9b9a23fb-a4e4-431f-96ac-b290ea955a13');
INSERT INTO `project` VALUES ('202', 'dasf', null, '23', 'dsaf', '32', '', '<p>ssg</p>', null, null, null, null, null, '', '', null, '120000', '120100', null, '1,2', '3', null, null, null, null, '67', null, null, '2016-05-23 14:30:39', null, null, '0', null, null, '-1', null, '2016-05-23 14:30:44', '1', 'f44bf3ee-18dc-4864-86fa-beb0d4534fd0');
INSERT INTO `project` VALUES ('203', 'dsaf', null, '23', 'adsf', 'ads', '', '<p>asd</p>', null, null, null, null, null, '', '', null, '310000', '310100', null, '1,2', '3', null, null, null, null, '67', null, null, '2016-05-23 14:31:13', null, null, '0', null, null, '0', null, '2016-05-23 14:31:17', '1', 'bc325810-a435-433b-9c39-d8cc1349295b');
INSERT INTO `project` VALUES ('204', 'sdf', null, '23', 'dasf', 'sd', '', null, null, null, null, null, null, '', '', null, '120000', '120100', null, '1,2', '2', null, null, null, null, '67', null, null, '2016-05-23 14:57:56', null, null, '0', null, null, '-1', null, '2016-05-23 14:57:56', '1', '26914535-6bea-4b48-adaf-cbc47b02ef10');
INSERT INTO `project` VALUES ('205', '俞嘉懿', null, '232', 'saf', 'sadf', '', null, null, null, null, null, null, '', '', null, '120000', '120100', null, '1,2', '2', null, null, null, null, '67', null, null, '2016-05-23 14:58:29', null, null, '0', null, null, '-1', null, '2016-05-23 14:58:29', '1', 'ee13efac-443a-4238-9970-85b743a583b9');
INSERT INTO `project` VALUES ('206', '俞嘉懿', null, '232', 'saf', 'sadf', '', '<p>adsfa</p>', null, null, null, null, null, '', '', null, '120000', '120100', null, '1,2', '2', null, null, null, null, '67', null, null, '2016-05-23 15:02:16', null, null, '0', null, null, '0', null, '2016-05-23 15:02:20', '1', '4ce5c059-2838-4e6b-995e-524ca5587cb4');

-- ----------------------------
-- Table structure for `project_enterprise`
-- ----------------------------
DROP TABLE IF EXISTS `project_enterprise`;
CREATE TABLE `project_enterprise` (
  `enterprise_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '企业名称',
  `registration` varchar(255) DEFAULT NULL COMMENT '营业执照注册号',
  `legal_representative` varchar(64) DEFAULT NULL COMMENT '法定代表人',
  `place_registration` varchar(255) DEFAULT NULL COMMENT '注册地点	',
  `registered_capital` int(11) DEFAULT NULL COMMENT '注册资本',
  `date_establishment` datetime DEFAULT NULL COMMENT '成立日期',
  `linkman` varchar(64) DEFAULT NULL COMMENT '联系人',
  `phone` varchar(64) DEFAULT NULL COMMENT '联系电话',
  `business_license` varchar(255) DEFAULT NULL COMMENT '营业执照扫描件',
  `organization_code_certificate` varchar(255) DEFAULT NULL COMMENT '组织结构代码证扫描件',
  `tax_registration_certificate` varchar(255) DEFAULT NULL COMMENT '税务登记证扫描件',
  `pledge_scanning` varchar(255) DEFAULT NULL COMMENT '承诺书扫描件',
  PRIMARY KEY (`enterprise_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='企业信息';

-- ----------------------------
-- Records of project_enterprise
-- ----------------------------

-- ----------------------------
-- Table structure for `project_financing_info`
-- ----------------------------
DROP TABLE IF EXISTS `project_financing_info`;
CREATE TABLE `project_financing_info` (
  `id` int(11) NOT NULL,
  `valuation` int(11) DEFAULT NULL COMMENT '项目估值',
  `total_financing_amount` int(11) DEFAULT NULL COMMENT '融资总额',
  `finish_financing_amount` int(11) DEFAULT NULL COMMENT '已融金额',
  `must_financing_amount` int(11) DEFAULT NULL COMMENT '起投金额',
  `business_plan` longtext COMMENT '商业计划',
  `business_plan_path` varchar(255) DEFAULT NULL COMMENT '商业计划上传路径',
  `transfer` float DEFAULT NULL COMMENT '出让比例',
  `min_vote_amount` int(11) DEFAULT NULL COMMENT '最低跟投额',
  `max_vote_amount` int(11) DEFAULT NULL COMMENT '最高跟投额',
  `min_lead_amount` int(11) DEFAULT NULL COMMENT '最低领投额',
  `price_range` int(11) DEFAULT NULL COMMENT '额度加价幅度',
  `super_raise` int(4) DEFAULT NULL COMMENT '是否超募，1是，2否',
  `super_raise_rate` float DEFAULT NULL COMMENT '超募比例',
  `expected_returns` varchar(255) DEFAULT NULL COMMENT '预期回报收益',
  `fund_use` varchar(255) DEFAULT NULL COMMENT '资金用途',
  `refresh_time` timestamp NULL DEFAULT NULL,
  `enable` int(4) unsigned DEFAULT NULL COMMENT '数据标记：0代表可用，1不可用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='融资信息表';

-- ----------------------------
-- Records of project_financing_info
-- ----------------------------
INSERT INTO `project_financing_info` VALUES ('13', null, '11111', '111', '111', '商业计划test测试', null, '0.2', null, null, null, null, null, null, null, null, '2016-04-26 15:19:26', '1');
INSERT INTO `project_financing_info` VALUES ('27', null, null, null, null, '', null, null, null, null, null, null, null, null, null, null, '2016-04-28 15:17:16', '1');
INSERT INTO `project_financing_info` VALUES ('28', null, null, null, null, '', null, null, null, null, null, null, null, null, null, null, '2016-04-28 15:58:37', '1');
INSERT INTO `project_financing_info` VALUES ('29', null, null, null, null, '', null, null, null, null, null, null, null, null, null, null, '2016-05-01 16:17:59', '1');
INSERT INTO `project_financing_info` VALUES ('31', null, null, null, null, '<p>adg</p>', null, null, null, null, null, null, null, null, null, null, '2016-05-01 16:16:08', '1');
INSERT INTO `project_financing_info` VALUES ('151', '434', '233', '0', null, '<h3 class=\"section-header\" style=\"box-sizing: inherit; font-weight: 400; font-size: 16px; color: rgb(51, 153, 224); padding-left: 1em; position: relative; line-height: 2; font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; white-space: normal;\">项目介绍</h3><p style=\"box-sizing: inherit;\"><br/></p><p style=\"box-sizing: inherit;\"><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2016-04-23_571b9991ab738.jpg\" style=\"box-sizing: inherit; border: 0px; max-width: 100%; vertical-align: middle;\"/></p><p style=\"box-sizing: inherit;\"><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2016-04-28_5721f4ea1e9ef.jpg\" style=\"box-sizing: inherit; border: 0px; max-width: 100%; vertical-align: middle;\"/></p><p style=\"box-sizing: inherit;\"><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2016-04-23_571b99995a630.jpg\" style=\"box-sizing: inherit; border: 0px; max-width: 100%; vertical-align: middle;\"/></p><p style=\"box-sizing: inherit;\"><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2016-04-23_571b999d6f390.jpg\" style=\"box-sizing: inherit; border: 0px; max-width: 100%; vertical-align: middle;\"/></p><p style=\"box-sizing: inherit;\"><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2016-04-23_571b99a3497a8.jpg\" style=\"box-sizing: inherit; border: 0px; max-width: 100%; vertical-align: middle;\"/></p><p style=\"box-sizing: inherit;\"><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2016-04-23_571b99a928a6b.jpg\" style=\"box-sizing: inherit; border: 0px; max-width: 100%; vertical-align: middle;\"/></p><p><br/></p>', null, null, '23', '32', '32', '32', '1', '23', null, null, '2016-05-10 19:56:07', '1');
INSERT INTO `project_financing_info` VALUES ('153', '500', '300', null, null, '<p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;white-space: normal;margin-top: 40px;margin-bottom: 20px;line-height: 20px;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-weight: 700\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\">项目简介</span></span></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;white-space: normal;margin-bottom: 15px;line-height: 26px;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\">Bikernel是专注于自行车专业数据整合、自行车在线个性化组装，整车零件销售和自行车精品内容分享的互联网应用。</span></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;white-space: normal;margin-bottom: 15px;line-height: 26px;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\">&nbsp;<span style=\"box-sizing: inherit;font-weight: 700;line-height: 20px\">自行车市场概况</span></span></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;line-height: 28px;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\">中国是传统自行车大国，自行车社会保有量高达3.7亿辆。目前国内自行车市场的产品结构正在经历重大变化，之前以百元自行车为主的代步工具市场已经转变为以千元自行车为主的运动器材市场。全国约有8800家单品牌自行车店和2200多家综合自行车店，销售的自行车已经从之前的通勤车转向了现在的山地车、公路车等运动自行车，平均单价也在逐年升高。2014年运动自行车市场规模达到近百亿元人民币，同比增长约10%。保守预测，未来五年内，中国运动自行车市场每年将稳定保持10%左右的增长。</span></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;line-height: 28px;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\"><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2016-04-25_571d947062cb8.png\" style=\"box-sizing: inherit;border: 0px;max-width: 100%;vertical-align: middle;width: 0px;height: 0px\"/><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2016-04-25_571d947062cb8.png\" style=\"box-sizing: inherit;border: 0px;max-width: 100%;vertical-align: middle;width: 504px;height: 376px\"/></span></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;line-height: 28px;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\"><br style=\"box-sizing: inherit\"/></span></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;line-height: 28px;white-space: normal;background-color: rgb(255, 255, 255)\"><br/></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;line-height: 28px;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-weight: 700\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\">用户需求分析与产品解决方案</span></span></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;white-space: normal;margin-bottom: 15px;line-height: 26px;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\"><span style=\"box-sizing: inherit;font-weight: 700\"><br style=\"box-sizing: inherit\"/></span></span></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;white-space: normal;margin-bottom: 15px;line-height: 26px;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\"><span style=\"box-sizing: inherit;font-weight: 700\">用户需求：1、查找自行车数据和价格，了解相关技术以及寻求个性化FIT服务</span></span></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;white-space: normal;margin-bottom: 15px;line-height: 26px;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\">我们在2015年4月发布的在线调查和线下问卷显示, 在购买自行车前，有88.53%的车友在互联网上寻找过相关信息，其中约71.99%的车友表示对于查询信息的体验不满。</span></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;white-space: normal;margin-bottom: 15px;line-height: 26px;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\">被调查者不满的主要原因如下：<span style=\"box-sizing: inherit\"></span></span></p><p class=\"MsoListParagraph\" style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;white-space: normal;margin-top: 0px;margin-bottom: 15px;margin-left: 24px;line-height: 26px;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\">1、不了解自行车品牌，车型及分类，不知道从何查起。</span></p><p class=\"MsoListParagraph\" style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;white-space: normal;margin-top: 0px;margin-bottom: 15px;margin-left: 24px;line-height: 26px;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\">2、对自行车有一定的了解，但苦于找不到官网，官网为英文，官网结构复杂等问题，不懂官网列出的配置高低或不方便对比。</span></p><p class=\"MsoListParagraph\" style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;white-space: normal;margin-top: 0px;margin-bottom: 15px;margin-left: 24px;line-height: 26px;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\">3、中高端自行车玩家在购买新车或新零件时，苦于要浏览大量不同的官方网页来帮助自己进行选择。</span></p><p class=\"MsoListParagraph\" style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;white-space: normal;margin-top: 0px;margin-bottom: 15px;margin-left: 24px;line-height: 26px;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\">4、在选购零件时无法查询自身应该选择的车架尺寸、把立和坐杆的长度等。</span></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;white-space: normal;margin-bottom: 15px;line-height: 26px;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\"><span style=\"box-sizing: inherit;font-weight: 700\">解决方案：</span></span></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;white-space: normal;margin-bottom: 15px;line-height: 26px;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\"><span style=\"box-sizing: inherit;font-weight: 700\">1、建立自行车整车和零件的数据库</span>：将繁杂的数据整理到APP中，方便用户查看。APP中收录了70余个整车品牌和近160个零件品牌，共计1000多个整车型号，4500多个零件型号。覆盖了绝大部分在售自行车整车和零配件。我们将整车和零件的所有参数整合为统一而简洁的展示形式。整车和所有种类的零件都建立了完善的筛选规则，方便车友迅速查找。</span></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;white-space: normal;margin-bottom: 15px;line-height: 26px;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\"><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2016-04-25_571dafa42878d.png\" style=\"box-sizing: inherit;border: 0px;max-width: 100%;vertical-align: middle\"/></span></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;line-height: 28px;white-space: normal;background-color: rgb(255, 255, 255)\"><br/></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;white-space: normal;margin-bottom: 15px;line-height: 26px;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\"><span style=\"box-sizing: inherit;font-weight: 700\">2、自行车知识库：</span>把自行车领域内专业词汇、热门概念、经典赛事等内容整合到一起，以有组织的集群形式展现。</span></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;white-space: normal;margin-bottom: 15px;line-height: 26px;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\"><span style=\"box-sizing: inherit;font-weight: 700\">3、FIT</span><span style=\"box-sizing: inherit;font-weight: 700\">功能</span>：通过输入身高臂展等数据，结合整车和零件数据库中的车架几何，自动匹配适合自己的车架尺寸。在此项功能中，我们针对亚洲人进行了算法优化，更加适合中国用户使用。后期计划与Specialized中国，以及专业自行车Fit软硬件系统和服务公司Retul等洽谈合作，以实现用户从线上到线下的导流。</span></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;white-space: normal;margin-bottom: 15px;text-align: center;line-height: 26px;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\"><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2016-05-03_572853a2d2b9b.png\" style=\"box-sizing: inherit;border: 0px;max-width: 100%;vertical-align: middle\"/></span></p><p style=\"box-sizing: inherit;color: rgb(51, 51, 51);font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif;font-size: 14px;white-space: normal;margin-bottom: 15px;line-height: 26px;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;font-size: 16px\"><span style=\"box-sizing: inherit;font-weight: 700\">4、自行车精品内容分享</span>：以Feed流形式为用户推送自行车精品内容。包括新车新技术发布、新车测评；购车，组装车经验分享，精品自行车推送等内容。内容一部分出自APP中的专家用户，一部分由我们自己产生。截至目前，我们已经在全国范围内吸引了300余名中高端自行车玩家包括专业自行车运动员进驻我们的APP，为我们产生专业内容。</span></p><p><br/></p>', null, null, '10', '50', '100', '5', '1', '10', null, null, '2016-05-10 18:20:28', '1');
INSERT INTO `project_financing_info` VALUES ('154', '500', '300', null, null, '<h3 class=\"section-header\" style=\"box-sizing: inherit; font-weight: 400; font-size: 16px; color: rgb(51, 153, 224); padding-left: 1em; position: relative; line-height: 2; font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; white-space: normal;\">项目介绍</h3><h3 style=\"box-sizing: inherit; font-weight: 400;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\"><span style=\"box-sizing: inherit; line-height: 1.4286;\">&nbsp; &nbsp; &nbsp; e订生活成立于2015年，由3位创始人团队组建而成，网站推出全新的“定期购”模式，意在为消费者带去更自由、更省心的购物体验，优化后的购物流程，有别于目前所有的互联网购物平台；更清晰的订单管理界面，让未来控于掌间；低价、免费无处不在，让消费者购物零压力。<span style=\"box-sizing: inherit; font-family: 微软雅黑;\">&nbsp;解放你的双手，解放你的时间，让日用品补给如同流水一般，定期送货上门，不会间断。</span></span></span><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\"><span style=\"box-sizing: inherit; line-height: 1.4286;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></h3><h3 style=\"box-sizing: inherit; font-weight: 400; line-height: 24.57px;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px; font-weight: bold;\">一、项目背景、灵感</span></h3><h3 style=\"box-sizing: inherit; font-weight: 400;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\">&nbsp; &nbsp; &nbsp;&nbsp;</span><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\">公司创始人在就读MBA的时期，偶然的一次课程让他接触到了一个案例，是关于在欧洲的一个网站“black socks”，一个只卖一种款式“黑袜子”的网站，他的销售方式比较特别，是以包年定期购的方式。当2014年再去看“黑袜子”的时候，它已有上百万的会员，销售额过亿。同时在欧洲不仅仅“黑袜子”网站，其他包年模式的商家也开始兴起了,在北美地区，我们发现定期购物的模式也已经慢慢运营了有三年的时间，这让我们更有兴趣研究定期购模式的背后，它的消费逻辑是如何在满足用户的潜在需求的。</span></h3><h3 style=\"box-sizing: inherit; font-weight: 400;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\"></span><span microsoft=\"\" style=\"box-sizing: inherit; line-height: 1.4286;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\">我们先来看一下定期购的购物形式，例如包年定期购剃须刀，当用户购买剃须刀后，商家每三个月会寄三把刀片给客户，因为每块刀片使用一个月就会氧化了，不仅不锋利，而且不卫生了。还有牙刷，大家都知道牙刷要三个月更换一下，但是很少有人能算的准，自己使用的牙刷已经多久没更换了，而包年厂家就是把这类很有周期性的产品，按使用周期寄给客户，免除客户重复购买的同时，也帮助用户更好的提升生活品质，简化了许多生活习惯与方式。</span></span></h3><h3 style=\"box-sizing: inherit; font-weight: 400;\"><span microsoft=\"\" style=\"box-sizing: inherit; line-height: 1.4286;\"><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2016-03-28_56f8cf2cb0b12.png\" style=\"box-sizing: inherit; border: 0px; max-width: 100%; vertical-align: middle;\"/></span></h3><h3 style=\"box-sizing: inherit; font-weight: 400;\"><span style=\"box-sizing: inherit; line-height: 1.4286;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\">&nbsp; &nbsp;</span><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\">&nbsp;&nbsp;&nbsp;</span><span style=\"box-sizing: inherit; font-size: 16px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;\">有人会问为什么“e订生活”主打销售海外商品？2015年可以称之为跨境电商的元年，越来越多的老百姓开始关注海外商品，在国内诸多问题产品被相继爆出后，更是激发了人们对产品品质的追求，同时加上自身购买力的提升，购买海外产品的热潮已经到来。“低品质的消费是一种浪费”，越来越多的电商也认识到了这一点，天猫、京东、网易等都已经开始做海外购。</span></span></h3><h3 style=\"box-sizing: inherit; font-weight: 400;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;\"><span style=\"box-sizing: inherit; line-height: 1.4286; font-size: 16px;\"><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2016-03-28_56f8d3ed5039b.png\" style=\"box-sizing: inherit; border: 0px; max-width: 100%; vertical-align: middle;\"/></span></span></h3><p style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\"/><span style=\"box-sizing: inherit; font-weight: 700;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\"><span microsoft=\"\" style=\"box-sizing: inherit; line-height: 24px;\">二、</span>客户遇到的问题与解决方案</span></span></p><p style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\">1、要加班、要逛街、要聚餐、要看电影&nbsp;.&nbsp;.&nbsp;.&nbsp;&nbsp;回到家才发现想好的去超市采购又忘了，好烦啊！</span></p><p style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;\"><span style=\"box-sizing: inherit; text-align: right; line-height: 18px; font-size: medium;\"><span microsoft=\"\" style=\"box-sizing: inherit;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;————</span></span><span style=\"box-sizing: inherit; font-size: 16px;\"><span style=\"box-sizing: inherit; text-align: right; line-height: 1.4286;\">e</span><span style=\"box-sizing: inherit; text-align: right; line-height: 1.4286;\">订</span><span style=\"box-sizing: inherit; text-align: right; line-height: 1.4286;\">生活独有的全年购，一次下单，整年帮你采购---更高效</span></span></span></p><p style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\"><span style=\"box-sizing: inherit; line-height: 1.4286;\">2、</span><span style=\"box-sizing: inherit; line-height: 1.4286;\">折扣低的怕过期货，价格低的怕是假货，都</span><span style=\"box-sizing: inherit; line-height: 1.4286;\">ok</span><span style=\"box-sizing: inherit; line-height: 1.4286;\">的又要大量购买，还能不能好好购物啊！</span></span></p><p style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; text-align: right; line-height: 1.4286; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\"><span microsoft=\"\" style=\"box-sizing: inherit; line-height: 18px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;————</span>e订生活独有的周期配送服务，不囤货，享受更新鲜的---更品质</span></p><p style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\">3、哪里打折记得告诉我，又错过了折扣活动，秒杀永远和我无缘，哎，宝宝心好累！</span></p><p style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\"><span style=\"box-sizing: inherit; text-align: right; line-height: 1.4286;\"><span microsoft=\"\" style=\"box-sizing: inherit; line-height: 18px;\"><span microsoft=\"\" style=\"box-sizing: inherit;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;————</span></span>e订生活独有的周期订购，锁定低折扣，整个人都精神了--更低价</span></span></p><p style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\"><span style=\"box-sizing: inherit; text-align: right; line-height: 1.4286;\"><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2016-03-28_56f8d454bb92e.png\" style=\"box-sizing: inherit; border: 0px; max-width: 100%; vertical-align: middle;\"/></span></span></p><p style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; text-align: justify; line-height: 24px; text-indent: 28px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\">&nbsp; &nbsp; &nbsp;<span microsoft=\"\" font-size:=\"\" style=\"box-sizing: inherit;\">&nbsp;</span>对于工作忙碌的消费者而言，定期送货上门服务，不仅能解决他们没有时间、没有精力、缺乏选购经验等上班族的日常购物问题，更能够很好的养成他们的日常生活习惯，提高生活品质。</span></p><p style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\"><span microsoft=\"\" style=\"box-sizing: inherit; text-align: justify; line-height: 24px; text-indent: 28px;\">&nbsp; &nbsp; &nbsp;&nbsp;</span><span microsoft=\"\" style=\"box-sizing: inherit; text-align: justify; line-height: 24px; text-indent: 28px;\">对于有网购习惯的消费者而言，定期购的价格优势、商品新鲜度、无邮费限制等优势，也会慢慢成为吸引他们的理由。</span></span></p><p style=\"box-sizing: inherit;\"><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2016-03-11_56e24f3c1eb0c.jpg\" style=\"box-sizing: inherit; border: 0px; max-width: 100%; vertical-align: middle; line-height: 1.4286; font-size: 16px;\"/><br style=\"box-sizing: inherit;\"/></p><p style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; line-height: 1.4286; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\"><span style=\"box-sizing: inherit; font-weight: 700;\"><br style=\"box-sizing: inherit;\"/></span></span></p><p style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; line-height: 1.4286; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\"><span style=\"box-sizing: inherit; font-weight: 700;\">三、项目进展情况</span></span></p><h3 style=\"box-sizing: inherit; font-weight: 400;\"><span style=\"box-sizing: inherit; line-height: 1.4286; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\">&nbsp; &nbsp; &nbsp;&nbsp;</span><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\"><span style=\"box-sizing: inherit; line-height: 1.4286;\">“e订生活”</span><span style=\"box-sizing: inherit; line-height: 1.4286;\">项目2015年底上线，平台刚开始的时候只有“男士商务袜子”一款产品，订制客户有两百多名，销售额2万多元。截止到2016年3月平台销售额近10万元。由于定期购模式在客户重复使用的粘度较高，故而对于接下来的发展，我们保持较乐观的态度。</span></span></h3><h3 style=\"box-sizing: inherit; font-weight: 400;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\"><span style=\"box-sizing: inherit; line-height: 1.4286;\">&nbsp; &nbsp; &nbsp; &nbsp;2016年</span><span style=\"box-sizing: inherit; line-height: 1.4286;\">“e订生活”</span><span style=\"box-sizing: inherit; line-height: 1.4286;\">网站更新，同时</span><span style=\"box-sizing: inherit; line-height: 1.4286;\">网站已建立起了三条海外采购渠道：欧洲、日本、澳新，可采购商品数量数千种，品牌数量近百个，主要集中在个人日常护理产品、养生保健产品等。</span></span></h3><h3 style=\"box-sizing: inherit; font-weight: 400;\"><span style=\"box-sizing: inherit; line-height: 1.4286; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\"></span><br style=\"box-sizing: inherit;\"/></h3><h3 style=\"box-sizing: inherit; font-weight: 400;\"><span style=\"box-sizing: inherit; line-height: 1.4286; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;\"><img src=\"http://7xjckn.com2.z0.glb.qiniucdn.com/2016-03-28_56f8d41683f61.png\" style=\"box-sizing: inherit; border: 0px; max-width: 100%; vertical-align: middle;\"/></span></h3><p><br/></p>', null, null, '10', '50', '100', '5', '1', '15', null, null, '2016-05-10 19:07:57', '1');
INSERT INTO `project_financing_info` VALUES ('155', '5000', '500', null, null, '<p style=\"white-space: normal; box-sizing: inherit; color: rgb(51, 51, 51); font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; font-size: 14px; line-height: 28px; background-color: rgb(255, 255, 255);\">与国外联播网Freedom深度合作，做到资源互补，双方利益最大化。</p><p style=\"white-space: normal; box-sizing: inherit; color: rgb(51, 51, 51); font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; font-size: 14px; line-height: 28px; background-color: rgb(255, 255, 255);\">1）灵游互动依托母公司具备深厚的研发能力和发行能力，实现既有技术团队的支持，又有成熟游戏项目的支持。</p><p style=\"white-space: normal; box-sizing: inherit; color: rgb(51, 51, 51); font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; font-size: 14px; line-height: 28px; background-color: rgb(255, 255, 255);\">2）活跃在YOUTUBE上的联播网Freedom具备非常优质的渠道（专注用户渠道的发展，享受游戏高分成比例，除去传统的CPA,拓宽盈利模式、提高利润空间）</p><p><br/></p>', null, null, '10', '50', '100', '10', '0', null, null, null, '2016-05-10 19:44:35', '1');
INSERT INTO `project_financing_info` VALUES ('156', '111', '111', null, null, '<p>11111<br/></p>', null, null, '222', '222', '222', '111', '1', '10', null, null, '2016-05-16 10:52:33', '1');
INSERT INTO `project_financing_info` VALUES ('157', '1222', '112', null, null, '<p>大赛<br/></p>', null, null, '12', '321', '312', '12', '1', '3213', null, null, '2016-05-16 11:25:20', '1');
INSERT INTO `project_financing_info` VALUES ('158', '32', '32', '233', null, '<p>测试</p>', null, null, '32', '32', '32', '32', '1', '32', null, null, '2016-05-16 20:00:06', '1');
INSERT INTO `project_financing_info` VALUES ('159', '32', '32', null, null, '<p>超级大项目</p>', null, null, '32', '32', '32', '32', '1', '23', null, null, '2016-05-18 11:11:57', '1');
INSERT INTO `project_financing_info` VALUES ('160', '23', '32', null, null, '<p>豪华项目</p>', null, null, '32', '32', '32', '23', '1', '23', null, null, '2016-05-18 15:06:25', '1');
INSERT INTO `project_financing_info` VALUES ('161', '21212', '121', '213', null, '<p>12</p>', null, null, '2121', '2121', '2121', '122121', '1', '1221', null, null, '2016-05-19 11:32:43', '1');
INSERT INTO `project_financing_info` VALUES ('164', null, null, null, null, '<p>测试2</p>', null, null, null, null, null, null, null, null, null, null, '2016-05-20 15:24:52', '1');
INSERT INTO `project_financing_info` VALUES ('165', null, null, null, null, '<p>测试3</p>', null, null, null, null, null, null, null, null, null, null, '2016-05-20 15:28:57', '1');
INSERT INTO `project_financing_info` VALUES ('166', null, null, null, null, '<p>测试4</p>', null, null, null, null, null, null, null, null, null, null, '2016-05-20 15:37:17', '1');
INSERT INTO `project_financing_info` VALUES ('167', null, null, null, null, '<p>商店</p>', null, null, null, null, null, null, null, null, null, null, '2016-05-20 15:56:47', '1');
INSERT INTO `project_financing_info` VALUES ('168', '23', '32', null, null, '<p>测试7</p>', null, null, '23', '23', '32', '32', '1', '32', null, null, '2016-05-20 16:08:27', '1');
INSERT INTO `project_financing_info` VALUES ('169', '23', '323', null, null, '<p>测试8</p>', null, null, '23', '32', '32', '32', '1', '32', null, null, '2016-05-20 16:13:44', '1');
INSERT INTO `project_financing_info` VALUES ('170', '23', '32', null, null, '<p>测试99</p>', null, null, '32', '3', '32', '23', '1', '3', null, null, '2016-05-20 16:24:12', '1');
INSERT INTO `project_financing_info` VALUES ('172', null, null, null, null, '<p>测试10</p>', null, null, null, null, null, null, null, null, null, null, '2016-05-20 16:26:56', '1');
INSERT INTO `project_financing_info` VALUES ('175', '23', '32', null, null, '<p>手动阀</p>', null, null, '23', '32', '23', '32', '1', '32', null, null, '2016-05-20 16:35:00', '1');
INSERT INTO `project_financing_info` VALUES ('176', '23', '32', null, null, '<p>sdag adsf SSDF FDSdFD&nbsp;</p>', null, null, '23', '32', '32', '23', '1', '32', null, null, '2016-05-20 16:42:07', '1');
INSERT INTO `project_financing_info` VALUES ('177', '12', '21', null, null, '<p>测试导航</p>', null, null, '12', '2', '12', '1', '1', '12', null, null, '2016-05-23 11:33:05', '1');
INSERT INTO `project_financing_info` VALUES ('178', '23', '23', null, null, '<p>ewf</p>', null, null, '23', '23', '2', '2', '1', '32', null, null, '2016-05-23 12:42:40', '1');
INSERT INTO `project_financing_info` VALUES ('179', '23', '23', null, null, '<p>proj4_prev</p>', null, null, '23', '23', '3', '232', '1', '23', null, null, '2016-05-23 13:13:44', '1');
INSERT INTO `project_financing_info` VALUES ('182', '23', '32', null, null, '<p>sdf</p>', null, null, '32', '32', '23', '32', '1', '3', null, null, '2016-05-23 13:22:20', '1');
INSERT INTO `project_financing_info` VALUES ('188', null, null, null, null, '<p>sd</p>', null, null, null, null, null, null, null, null, null, null, '2016-05-23 13:31:23', '1');
INSERT INTO `project_financing_info` VALUES ('200', '23', '32', null, null, '<p>asdf</p>', null, null, '23', '23', '32', '23', '1', '32', null, null, '2016-05-23 14:17:44', '1');
INSERT INTO `project_financing_info` VALUES ('202', null, null, null, null, '<p>gfsh</p>', null, null, null, null, null, null, null, null, null, null, '2016-05-23 14:30:44', '1');
INSERT INTO `project_financing_info` VALUES ('203', '34', '43', null, null, '<p>adf</p>', null, null, '43', '43', '43', '43', '1', '3', null, null, '2016-05-23 14:32:27', '1');
INSERT INTO `project_financing_info` VALUES ('206', '23', '32', null, null, '<p>asdg</p>', null, null, '23', '23', '32', '3', '1', '23', null, null, '2016-05-23 15:02:55', '1');

-- ----------------------------
-- Table structure for `project_investor_relation`
-- ----------------------------
DROP TABLE IF EXISTS `project_investor_relation`;
CREATE TABLE `project_investor_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `apply_status_id` int(11) DEFAULT NULL,
  `invest_status` int(11) DEFAULT NULL COMMENT '投资状态:0-等待支付，1-投资成功(进行中），2-投资成功（成功退出），3-投资成功（失败）',
  `money` double DEFAULT NULL,
  `submittime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project_investor_relation
-- ----------------------------
INSERT INTO `project_investor_relation` VALUES ('2', '46', '152', null, null, null, null);
INSERT INTO `project_investor_relation` VALUES ('3', '50', '153', null, null, null, null);
INSERT INTO `project_investor_relation` VALUES ('4', '46', '154', null, null, null, null);
INSERT INTO `project_investor_relation` VALUES ('5', '50', '155', null, null, null, null);
INSERT INTO `project_investor_relation` VALUES ('6', '52', '156', null, null, null, null);
INSERT INTO `project_investor_relation` VALUES ('7', '52', '157', null, null, null, null);
INSERT INTO `project_investor_relation` VALUES ('8', '56', '158', null, null, null, null);
INSERT INTO `project_investor_relation` VALUES ('9', '67', '159', null, null, null, null);
INSERT INTO `project_investor_relation` VALUES ('11', '67', '151', '1', null, null, null);
INSERT INTO `project_investor_relation` VALUES ('24', '56', '151', '2', null, null, null);
INSERT INTO `project_investor_relation` VALUES ('23', '52', '153', '0', null, null, null);
INSERT INTO `project_investor_relation` VALUES ('22', '67', '154', '0', null, null, null);
INSERT INTO `project_investor_relation` VALUES ('21', '67', '158', '2', null, null, null);
INSERT INTO `project_investor_relation` VALUES ('20', '67', '153', '0', null, null, '2016-05-19 17:15:14');

-- ----------------------------
-- Table structure for `project_member`
-- ----------------------------
DROP TABLE IF EXISTS `project_member`;
CREATE TABLE `project_member` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '成员id',
  `project_id` int(11) NOT NULL COMMENT '关联的项目id',
  `head_picture` varchar(255) DEFAULT NULL COMMENT '头像',
  `name` varchar(64) NOT NULL COMMENT '姓名',
  `position` varchar(255) DEFAULT NULL COMMENT '职位',
  `intro_short` varchar(255) DEFAULT NULL COMMENT '一句话简介，如：职称、学历、荣誉',
  `introduction` varchar(255) DEFAULT NULL COMMENT '成员个人介绍及工作经历',
  `shareholder` int(4) DEFAULT NULL COMMENT '是否为股东,1为股东，0不是',
  `percentage` float DEFAULT NULL COMMENT '股东所占股份比例',
  `contribution` int(11) DEFAULT NULL COMMENT '出资金额',
  `relation` varchar(128) DEFAULT NULL COMMENT '与创始人关系',
  `sort` int(4) DEFAULT NULL COMMENT '排序',
  `full_time` int(4) DEFAULT NULL COMMENT '是否全职',
  `refresh_time` timestamp NULL DEFAULT NULL COMMENT '刷新时间',
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COMMENT='项目成员表';

-- ----------------------------
-- Records of project_member
-- ----------------------------
INSERT INTO `project_member` VALUES ('1', '109', '', '阿道夫', '大师傅', '阿德', '的', null, '23', '23', '的萨芬', '0', null, '2016-05-04 11:14:49');
INSERT INTO `project_member` VALUES ('2', '98', '', '的萨芬', '打发', '阿迪斯', '时的', null, '324', '324', '的', '1', null, '2016-05-04 12:19:57');
INSERT INTO `project_member` VALUES ('3', '111', '', 'sda', 'dsf', 'dsf', 'dsf', '1', '23', '32', 'fdfa', '2', '1', '2016-05-05 10:07:31');
INSERT INTO `project_member` VALUES ('4', '113', '', '啊第三个', 'da\'s\'g', '个a', '啊', '1', '23', '32', 'sgd', '3', '1', '2016-05-05 10:18:55');
INSERT INTO `project_member` VALUES ('5', '114', '', '阿凡达个', '的撒哥', '大概', 'sda', '1', '23', '324', 'fad', null, '1', '2016-05-05 10:54:21');
INSERT INTO `project_member` VALUES ('6', '115', '', '阿芳的', '撒旦', '速度', 'sdag', '0', '23', '32', 'dasf', null, '1', '2016-05-05 11:33:03');
INSERT INTO `project_member` VALUES ('10', '115', '', 'afdg', 'dasf', 'dsaf', 'dsaffdsf', '1', '23', '332', 'dsf', null, '1', '2016-05-05 11:34:55');
INSERT INTO `project_member` VALUES ('9', '115', '', 'dfsg', 'dfg', 'df', 'df', '0', '23', '32', 'df', null, '0', '2016-05-05 11:21:11');
INSERT INTO `project_member` VALUES ('11', '116', '', 'dafa', 'sad', 'sdf', 'ef', '0', '23', '32', 'dsaf', null, '0', '2016-05-05 11:42:39');
INSERT INTO `project_member` VALUES ('12', '117', '', 'asdg', 'dsaf', 'fadsf', 'dsfa', '1', '23', '32', 'asdf', null, '1', '2016-05-05 13:11:10');
INSERT INTO `project_member` VALUES ('13', '119', '', 'dfgd', 'fdg', 'af', 'asdfdsg', '1', '23', '32', 'sdaf', null, '1', '2016-05-05 13:45:56');
INSERT INTO `project_member` VALUES ('14', '121', '/files/tempfiles/20160505151535894.jpg', 'f\'d\'g', 'f\'d\'s', '坊', 'asdg', '1', '32', '23', 'dsf', null, '0', '2016-05-05 15:15:50');
INSERT INTO `project_member` VALUES ('15', '121', '/files/tempfiles/20160505151836437.jpg', 'sdaf', 'dsfg', 'sd', 'ds g', '0', null, null, 'sdf', null, '1', '2016-05-05 15:18:48');
INSERT INTO `project_member` VALUES ('16', '121', '', 'asdg', 'sdf', 'dsffdsds', 'dsfasdf', '1', '2', '23', 'dsaf', null, '1', '2016-05-05 15:22:04');
INSERT INTO `project_member` VALUES ('18', '123', '/files/undefined/png/201605/20160505154944713.png', 'dsaf电风扇', 'dsf打撒', 'dsf第三方', 'dsf地方', '1', '23', '32', 'dsf', null, '1', '2016-05-05 15:49:59');
INSERT INTO `project_member` VALUES ('19', '124', '', 'da\'g', '的', '都是', '的', '1', '23', '32', 'fad', null, '0', '2016-05-05 16:34:04');
INSERT INTO `project_member` VALUES ('20', '124', '/files/undefined/png/201605/20160505163338712.png', '32', '32', 'df', 'dsfa', '1', '23', '23', 'fad', null, '0', '2016-05-05 16:33:48');
INSERT INTO `project_member` VALUES ('21', '124', '', 'afdg', 'dsa', 'dsf', 'dsaf', '0', null, null, 'a df', null, '1', '2016-05-05 16:35:15');
INSERT INTO `project_member` VALUES ('22', '125', '', 'adf', 'af', 'fds', 'dsf', '0', null, null, 'dsfa', null, '1', '2016-05-05 16:49:22');
INSERT INTO `project_member` VALUES ('23', '125', '', 'd\'s\'f', 'f\'d', '地方', 'd\'s\'f', '1', '23', '23', '23', null, '1', '2016-05-05 17:02:03');
INSERT INTO `project_member` VALUES ('24', '126', '', '大使馆', '大使', 'd\'s', '打撒', '1', '23', '23', 'dsf', '1', '1', '2016-05-05 18:56:48');
INSERT INTO `project_member` VALUES ('25', '126', '', '哈', 'dsf', '的萨芬', '的', '1', '23', '32', 'ds', '0', '1', '2016-05-05 18:57:06');
INSERT INTO `project_member` VALUES ('26', '126', '', '43t', 's d', 'dsf第三方ds', 'dfs  df a打发', '1', '32', '23', 'dsaf', '2', '0', '2016-05-05 18:57:20');
INSERT INTO `project_member` VALUES ('27', '127', '', '1', 'adf', '2dsf', 'dsf', '1', '23', '34', 'asdg', '1', '1', '2016-05-05 19:02:46');
INSERT INTO `project_member` VALUES ('28', '127', '', '2', 'sdf', 'sdf', 'dsf', '1', '32', '323', 'adsf', '2', '1', '2016-05-05 19:03:03');
INSERT INTO `project_member` VALUES ('29', '127', '', '3', 'sda', 'dsaf', 'sdfa', '0', null, null, '32', '0', '0', '2016-05-05 19:03:16');
INSERT INTO `project_member` VALUES ('30', '129', '/files/undefined/png/201605/20160505194210156.png', 'fwe', 'dsaf', 'dsf', 'adsf', '1', '23', '23', '32', '0', '1', '2016-05-05 19:42:22');
INSERT INTO `project_member` VALUES ('31', '130', '', 'dsffs', 'dfsd', 'dsf', 'dsf', '1', '32', '324', 'sdg', null, '1', '2016-05-06 09:06:12');
INSERT INTO `project_member` VALUES ('32', '130', '', '34w4', 'fse', 'er', 'esr', '0', null, null, 'er', null, '0', '2016-05-06 09:06:19');
INSERT INTO `project_member` VALUES ('33', '133', '/files/undefined/png/201605/20160507154136990.png', '打撒', '地方', '第三方', '的', '0', null, null, '发射点', '0', '0', '2016-05-07 15:41:48');
INSERT INTO `project_member` VALUES ('34', '134', '', 'f\'da', '而', '范德萨', '发达', '1', '34', '43', '435', '0', '1', '2016-05-07 17:20:20');
INSERT INTO `project_member` VALUES ('35', '135', '', '23', '23', '23', '423', '1', '2', '243', '32', '0', '1', '2016-05-09 09:57:06');
INSERT INTO `project_member` VALUES ('38', '142', '/files/default/png/201605/20160509164547614.png', '张三', 'CEO', '家里蹲', '来自星星的喔', '1', '32', '2324', '朋友', '2', '1', '2016-05-09 16:46:18');
INSERT INTO `project_member` VALUES ('39', '142', '/files/default/jpg/201605/20160509164623350.jpg', '李四', 'CTO', '北大', '来自新世界', '0', null, null, '同学', '0', '0', '2016-05-09 16:47:02');
INSERT INTO `project_member` VALUES ('40', '142', '/files/default/png/201605/20160509164821967.png', '王二麻子', 'CFO', '清华', '来自火星', '1', '23', '23', '合作伙伴', '1', '1', '2016-05-09 16:48:23');
INSERT INTO `project_member` VALUES ('41', '143', '/files/default/jpg/201605/20160509190657469.jpg', 'a', 's', 'a', 's', '1', '10', '10', 'w', '0', '1', '2016-05-09 19:07:12');
INSERT INTO `project_member` VALUES ('42', '145', '/files/default/png/201605/20160509193854128.png', '士大夫', '打撒', 'sa撒', '打撒', '1', '23', '32', '23d\'sa\'f', '0', '0', '2016-05-09 19:38:55');
INSERT INTO `project_member` VALUES ('43', '145', '/files/default/jpg/201605/20160509193904193.jpg', 'dsaf', 'd', 'fads', 'dsaf', '1', '32', '23', 'dsg', '1', '0', '2016-05-09 19:39:10');
INSERT INTO `project_member` VALUES ('44', '146', '/files/default/jpg/201605/20160509194902755.jpg', 'a\'s\'d\'f阿斯顿发射点', '打撒', '多发点s\'f打撒f', 'fads发给答复答复', '1', '32', '32', 'dfgda dasf地方', '0', '1', '2016-05-09 19:49:14');
INSERT INTO `project_member` VALUES ('45', '148', '', 'sdaf', 'dsf', 'dsf', 'dsfa', '1', '23', '32', 'df', '0', '0', '2016-05-09 20:13:21');
INSERT INTO `project_member` VALUES ('46', '149', '', 'sag', 'sdaf', 'sf', 'ds', '1', '23', '23', '32ads', '0', '0', '2016-05-09 20:23:57');
INSERT INTO `project_member` VALUES ('47', '150', '', 'dssad', 'ds', 'fdsa', 'dsfa', '1', '23', '32', 'sadf', '0', '0', '2016-05-09 20:50:58');
INSERT INTO `project_member` VALUES ('48', '151', '/files/default/png/201605/20160510170052589.png', '张三', 'CEO', '清华', '我来自星星', '1', '12', '1233214', '朋友', '0', '1', '2016-05-10 17:02:04');
INSERT INTO `project_member` VALUES ('49', '151', '/files/default/png/201605/20160510170220349.png', '李四', 'CFO', '北大', '我来自火星', '1', '12', '12', '同事', '1', '1', '2016-05-10 17:03:00');
INSERT INTO `project_member` VALUES ('50', '152', '/files/default/png/201605/20160510170637106.png', '张三', 'CFO', '清华', '博芮客”抹茶主题体验店是浙大校友胡钢亮团队在2015年做出新的尝试。本次众筹投资人仅限浙大校友', '1', '23', '32', '朋友', '0', '1', '2016-05-10 17:07:09');
INSERT INTO `project_member` VALUES ('51', '153', '/files/default/jpg/201605/20160510181800862.jpg', '赵俊凯', '运营推广', '海外硕士，十二年骑行经历，自行车爱好者', '毕业于法国中央理工大学SUPELEC电力学院及法国雷恩第一大学联合硕士；西安电子科技大学通信工程专业学士。 曾就职于SNCF法国国家铁路，以及MX ACIGNE公司。 原西安电子科技大学自行车协会副会长，现西安奔驰SMART车友会会长。 多次参与自行车比赛并取得名次，曾代表拍摄CCTV西安世园会宣传片。', '1', '23', '32', '同事', '0', '1', '2016-05-10 18:18:38');
INSERT INTO `project_member` VALUES ('52', '153', '/files/default/jpg/201605/20160510181903323.jpg', '张正旸', '算法产品', '英国卡迪夫大学博士，十一年骑行经历，自行车爱好者', '英国卡迪夫大学博士，西北工业大学硕士及学士。 曾就职于深圳DJI大疆创新，担任动力工程师兼任产品摄影师。 十一年骑行经历，029UCA西安大学生自行车联合会主席团成员。', '0', null, null, '朋友', '1', '0', '2016-05-10 18:19:27');
INSERT INTO `project_member` VALUES ('53', '154', '/files/default/jpg/201605/20160510184609265.jpg', '邵延斌', '总经理', '创始人老邵，硕士，80后', '创始人老邵，硕士，80后，朋友圈戏称，一个五官精致、谈吐儒雅的雅痞金融男，从事过银行，私募基金，以及某A股上市公司融资部负责人，帮助该A股公司成功资产重组。 目前，在公司里主要负责目标制定、营销推广等工作，10多年的工作经历，帮助累积下了许多市场人脉，对于公司市场推广以及人才的吸引都起到了很积极的作用。', '1', '23', '32', '', '0', '1', '2016-05-10 18:46:45');
INSERT INTO `project_member` VALUES ('54', '154', '/files/default/jpg/201605/20160510184709602.jpg', '谢昳珺', '总经理助理', '80后，本科学历', '80后，本科学历。证券、期货从业资格，上交所董事会秘书资格。曾供职于某证券公司从事证券交易，投资工作，后任某A股上市公司证券事务经理，总裁秘书，负责公司三会及日常投资决策、股权治理。', '1', '23', '32', '同事', '2', '0', '2016-05-10 18:47:45');
INSERT INTO `project_member` VALUES ('55', '154', '/files/default/jpg/201605/20160510184803793.jpg', '五毛', '财务投资', '财务投资', '财务投资', '0', null, null, '合作伙伴', '1', '0', '2016-05-10 18:48:35');
INSERT INTO `project_member` VALUES ('56', '155', '/files/default/png/201605/20160510194325836.png', '陈红亮', 'CEO', '14年从业经历', '14年从业经历14年从业经历14年从业经历14年从业经历14年从业经历14年从业经历', '1', '80', '20', '', '0', '1', '2016-05-10 19:43:55');
INSERT INTO `project_member` VALUES ('57', '158', '/files/default/jpg/201605/20160516174228527.jpg', '测试', '测试', '测试', '测试', '1', '32', '32', '测试', '0', '1', '2016-05-16 17:42:33');
INSERT INTO `project_member` VALUES ('58', '159', '/files/default/jpg/201605/20160518111139702.jpg', '超级大项目', '超级大项目', '超级大项目', '超级大项目', '1', '23', '23', '超级大项目', '0', '1', '2016-05-18 11:11:48');
INSERT INTO `project_member` VALUES ('59', '160', '/files/default/jpg/201605/20160518150403801.jpg', '豪华项目', '豪华项目', '豪华项目', '豪华项目', '1', '23', '2', '豪华项目', '0', '1', '2016-05-18 15:04:12');
INSERT INTO `project_member` VALUES ('60', '161', '/files/default/png/201605/20160519112709588.png', '12', '21', '21', '21', '1', '21', '21', '12', '0', '1', '2016-05-19 11:27:23');
INSERT INTO `project_member` VALUES ('61', '166', '', 'adsg', 'sdaf', 'ads23', 'dsf', '0', '0', '0', 'dsaf', null, '0', '2016-05-20 15:48:50');
INSERT INTO `project_member` VALUES ('63', '169', '', '测试8', '测试8', '测试8', '测试8', '0', null, null, '测试8', '0', '1', '2016-05-20 16:12:55');
INSERT INTO `project_member` VALUES ('65', '170', '', '测试99', '测试99', '测试99', '测试99', '1', '32', '3', '测试99', '0', '1', '2016-05-20 16:24:00');
INSERT INTO `project_member` VALUES ('66', '172', '', '测试10', '测试10', '测试10', '测试10', '1', '23', '32', '32', '0', '1', '2016-05-20 16:27:08');
INSERT INTO `project_member` VALUES ('67', '175', '', '士大夫', '但是', '但是', '但是', '1', '3', '32', '32', '0', '0', '2016-05-20 16:34:50');
INSERT INTO `project_member` VALUES ('68', '176', '', 'sdag adsf SSDF FDSdFD', 'sdag adsf SSDF FDSdFD', 'sdag adsf SSDF FDSdFD sdag adsf SSDF FDSdFD', 'sdag adsf SSDF FDSdFD', '1', '32', '32', '32', '0', '1', '2016-05-20 16:41:50');
INSERT INTO `project_member` VALUES ('69', '200', '', '测试6', 'eew', 'r', 'wer', '1', '2', '23', 'dsaf', '0', '1', '2016-05-23 14:09:21');
INSERT INTO `project_member` VALUES ('70', '203', '', 'sadf', 'asda', 'dsfa', 'fdads', '1', '2', '32', '32', '0', '1', '2016-05-23 14:31:27');
INSERT INTO `project_member` VALUES ('71', '206', '', 'asd', 'ads', 'dsaf', 'adsaf', '1', '23', '32', 'sdaf', '0', '1', '2016-05-23 15:02:30');

-- ----------------------------
-- Table structure for `project_setting`
-- ----------------------------
DROP TABLE IF EXISTS `project_setting`;
CREATE TABLE `project_setting` (
  `project_id` int(11) NOT NULL,
  `sponsor_step` int(11) DEFAULT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project_setting
-- ----------------------------
INSERT INTO `project_setting` VALUES ('177', '4');
INSERT INTO `project_setting` VALUES ('178', '4');
INSERT INTO `project_setting` VALUES ('179', '4');
INSERT INTO `project_setting` VALUES ('180', '1');
INSERT INTO `project_setting` VALUES ('181', '1');
INSERT INTO `project_setting` VALUES ('182', '4');
INSERT INTO `project_setting` VALUES ('183', '1');
INSERT INTO `project_setting` VALUES ('184', '1');
INSERT INTO `project_setting` VALUES ('185', '1');
INSERT INTO `project_setting` VALUES ('186', '1');
INSERT INTO `project_setting` VALUES ('187', '1');
INSERT INTO `project_setting` VALUES ('188', '3');
INSERT INTO `project_setting` VALUES ('189', '1');
INSERT INTO `project_setting` VALUES ('190', '1');
INSERT INTO `project_setting` VALUES ('191', '1');
INSERT INTO `project_setting` VALUES ('192', '1');
INSERT INTO `project_setting` VALUES ('193', '1');
INSERT INTO `project_setting` VALUES ('194', '1');
INSERT INTO `project_setting` VALUES ('195', '1');
INSERT INTO `project_setting` VALUES ('196', '1');
INSERT INTO `project_setting` VALUES ('197', '1');
INSERT INTO `project_setting` VALUES ('198', '1');
INSERT INTO `project_setting` VALUES ('199', '1');
INSERT INTO `project_setting` VALUES ('200', '4');
INSERT INTO `project_setting` VALUES ('201', '1');
INSERT INTO `project_setting` VALUES ('202', '2');
INSERT INTO `project_setting` VALUES ('203', '4');
INSERT INTO `project_setting` VALUES ('204', '1');
INSERT INTO `project_setting` VALUES ('205', '1');
INSERT INTO `project_setting` VALUES ('206', '4');

-- ----------------------------
-- Table structure for `project_status`
-- ----------------------------
DROP TABLE IF EXISTS `project_status`;
CREATE TABLE `project_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL COMMENT '项目id',
  `operator_id` int(11) DEFAULT NULL COMMENT '操作人id',
  `title` varchar(64) DEFAULT NULL COMMENT '标题',
  `date` datetime DEFAULT NULL COMMENT '日期',
  `content` text COMMENT '内容',
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `refresh_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `enable` int(4) DEFAULT NULL COMMENT '是否启用,1是，0否',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='项目动态更新表';

-- ----------------------------
-- Records of project_status
-- ----------------------------
INSERT INTO `project_status` VALUES ('4', '131', null, '234', '2016-05-11 00:00:00', 'adef', null, null, null, null);
INSERT INTO `project_status` VALUES ('2', null, null, 'df', '2016-05-19 00:00:00', 'dsf', null, null, null, null);
INSERT INTO `project_status` VALUES ('5', '131', null, 'dafds', '2016-05-19 00:00:00', 'dsfadf<a href=\"www.baidu.com\">www.baidu.com</a>', null, null, null, null);
INSERT INTO `project_status` VALUES ('6', '131', null, 'aew', '2016-05-10 00:00:00', '<a href=\"http://www.baidu.com\">test</a>', null, null, null, null);
INSERT INTO `project_status` VALUES ('7', '131', null, '哈达', '2016-05-11 00:00:00', '士大夫', null, null, null, null);
INSERT INTO `project_status` VALUES ('8', '143', null, 'wrwew', '2016-05-05 00:00:00', 'sdaf', null, null, null, null);
INSERT INTO `project_status` VALUES ('9', '143', null, 'sadfa', '2016-05-03 00:00:00', 'dsaf', null, null, null, null);
INSERT INTO `project_status` VALUES ('10', '143', null, 'asdfads', '2016-05-10 00:00:00', 'dasff', null, null, null, null);
INSERT INTO `project_status` VALUES ('11', '143', null, '234', '2016-05-11 00:00:00', 'dsaf', null, null, null, null);
INSERT INTO `project_status` VALUES ('12', '143', null, '23', '2016-05-26 00:00:00', '', null, null, null, null);
INSERT INTO `project_status` VALUES ('13', '143', null, '23', '2016-05-19 00:00:00', 'sdfadf', null, null, null, null);
INSERT INTO `project_status` VALUES ('14', '143', null, '34r32', '2016-05-16 00:00:00', 'ewr', null, null, null, null);
INSERT INTO `project_status` VALUES ('15', '143', null, 'r32', '2016-05-04 00:00:00', 'ewrew', null, null, null, null);
INSERT INTO `project_status` VALUES ('16', '143', null, 'ewrew', '2016-05-18 00:00:00', 'ewr', null, null, null, null);
INSERT INTO `project_status` VALUES ('17', '143', null, 'ewrewr', '2016-05-12 00:00:00', 'erw', null, null, null, null);
INSERT INTO `project_status` VALUES ('18', '143', null, 'ewrewr', '2016-05-05 00:00:00', 'ewr', null, null, null, null);
INSERT INTO `project_status` VALUES ('19', '143', null, 'dsf', '2016-05-03 00:00:00', 'dsf', null, null, null, null);
INSERT INTO `project_status` VALUES ('20', '143', null, 'fdsa', '2016-05-05 00:00:00', 'sdf', null, null, null, null);
INSERT INTO `project_status` VALUES ('21', '143', null, 'fads', '2016-05-11 00:00:00', 'dsfa', null, null, null, null);
INSERT INTO `project_status` VALUES ('22', '143', null, 'sdaf', '2016-05-11 00:00:00', 'adsf', null, null, null, null);

-- ----------------------------
-- Table structure for `project_user_relation`
-- ----------------------------
DROP TABLE IF EXISTS `project_user_relation`;
CREATE TABLE `project_user_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `support` int(4) DEFAULT '0' COMMENT '是否已赞项目，1赞，0取消赞',
  `collect` int(4) DEFAULT '0' COMMENT '收藏，1收藏，0未收藏',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project_user_relation
-- ----------------------------
INSERT INTO `project_user_relation` VALUES ('1', '153', '50', '1', null);
INSERT INTO `project_user_relation` VALUES ('2', '154', '50', '0', null);
INSERT INTO `project_user_relation` VALUES ('3', '151', '46', '1', null);
INSERT INTO `project_user_relation` VALUES ('4', '151', '50', '1', null);
INSERT INTO `project_user_relation` VALUES ('5', '151', '54', '1', null);
INSERT INTO `project_user_relation` VALUES ('6', '158', '56', '1', '1');
INSERT INTO `project_user_relation` VALUES ('7', '151', '56', '0', '0');
INSERT INTO `project_user_relation` VALUES ('8', '154', '56', '0', '1');
INSERT INTO `project_user_relation` VALUES ('9', '154', '67', '0', '1');
INSERT INTO `project_user_relation` VALUES ('10', '203', '67', '0', '0');

-- ----------------------------
-- Table structure for `sys_permission`
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(64) DEFAULT NULL COMMENT '菜单名',
  `permission_url` varchar(256) DEFAULT '' COMMENT '菜单链接',
  `parent_id` int(11) DEFAULT '0' COMMENT '父级id',
  `permission_icon` varchar(256) DEFAULT NULL COMMENT '图标',
  `permission_desc` varchar(256) DEFAULT NULL COMMENT '菜单描述',
  `permission_level` int(255) DEFAULT NULL COMMENT '菜单级别，按钮级别为-1',
  `permission_state` int(1) DEFAULT '1' COMMENT '状态，0=停用，1=启用',
  `permission_order` int(3) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='系统菜单表';

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('1', '系统设置', ' ', '0', 'aaa', '管理系统权限等', '1', '1', '1');
INSERT INTO `sys_permission` VALUES ('2', '后台用户管理', 'sysusermanager/showList.html', '1', 'sss', '管理系统用户', '2', '1', '1');
INSERT INTO `sys_permission` VALUES ('3', '项目管理', ' ', '0', null, null, '1', '1', '2');
INSERT INTO `sys_permission` VALUES ('4', '发布项目', 'projectSys/baseInfo.html', '3', null, '新增项目', '2', '1', '1');
INSERT INTO `sys_permission` VALUES ('5', '项目列表', 'projectSys/toListProject.html', '3', null, '项目列表', '2', '1', '3');
INSERT INTO `sys_permission` VALUES ('6', '后台菜单管理', 'menuSys/loadMenu.html', '1', null, '管理菜单及按钮', '2', '1', '2');
INSERT INTO `sys_permission` VALUES ('7', '平台用户管理', '', '0', null, '审核认证', '1', '1', '3');
INSERT INTO `sys_permission` VALUES ('8', '投资人管理', '', '0', null, '对投资人进行的一些操作', '1', '1', '4');
INSERT INTO `sys_permission` VALUES ('10', '平台用户列表', 'usermanager/showList.html', '7', null, '管理用户基本信息', '2', '1', '2');
INSERT INTO `sys_permission` VALUES ('11', '分类管理', '', '0', null, '分类管理', '1', '1', '5');
INSERT INTO `sys_permission` VALUES ('13', '认证信息', 'investormanager/showList.html', '8', null, '投资人填写的认证信息', '2', '1', '1');
INSERT INTO `sys_permission` VALUES ('14', '分类列表', 'classifySys/toListClassify.html', '11', null, '分类列表', '2', '1', '2');
INSERT INTO `sys_permission` VALUES ('16', '项目审核', 'projectSys/auditList.html', '3', null, '项目审核', '2', '1', '2');
INSERT INTO `sys_permission` VALUES ('17', '配置管理', '', '0', null, '系统配置项', '1', '1', '6');
INSERT INTO `sys_permission` VALUES ('18', '热门城市', 'hotcity/showlist.html', '17', null, '热门城市配置', '2', '1', '1');
INSERT INTO `sys_permission` VALUES ('19', '后台角色管理', 'sysrole/rolelist.html', '1', null, '管理角色权限', '2', '1', '3');
INSERT INTO `sys_permission` VALUES ('20', '查看项目申请', 'projectSys/applyCheckList.html', '3', null, '查看项目申请', '2', '1', '4');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(64) DEFAULT NULL COMMENT '角色名',
  `role_state` int(1) DEFAULT '1' COMMENT '角色状态，0=停用，1=启用',
  `role_desc` varchar(256) DEFAULT NULL COMMENT '角色描述',
  `parent_id` int(11) DEFAULT '0' COMMENT '父级角色',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='系统后台用户角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员1', '1', '拥有所有权限', '0');
INSERT INTO `sys_role` VALUES ('2', '项目审核人', '1', null, '0');
INSERT INTO `sys_role` VALUES ('3', '认证人', '0', '投资人认证审核人', '0');
INSERT INTO `sys_role` VALUES ('4', '超管11', '0', '', '0');
INSERT INTO `sys_role` VALUES ('5', '1', '0', '', '0');

-- ----------------------------
-- Table structure for `sys_role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL COMMENT '角色id',
  `permission_id` int(11) DEFAULT NULL COMMENT '菜单id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COMMENT='用户角色菜单映射表';

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES ('25', '1', '17');
INSERT INTO `sys_role_permission` VALUES ('26', '1', '18');
INSERT INTO `sys_role_permission` VALUES ('27', '1', '1');
INSERT INTO `sys_role_permission` VALUES ('28', '1', '2');
INSERT INTO `sys_role_permission` VALUES ('29', '1', '6');
INSERT INTO `sys_role_permission` VALUES ('30', '1', '19');
INSERT INTO `sys_role_permission` VALUES ('31', '1', '3');
INSERT INTO `sys_role_permission` VALUES ('32', '1', '4');
INSERT INTO `sys_role_permission` VALUES ('33', '1', '16');
INSERT INTO `sys_role_permission` VALUES ('34', '1', '5');
INSERT INTO `sys_role_permission` VALUES ('35', '1', '20');
INSERT INTO `sys_role_permission` VALUES ('36', '1', '7');
INSERT INTO `sys_role_permission` VALUES ('37', '1', '10');
INSERT INTO `sys_role_permission` VALUES ('38', '1', '8');
INSERT INTO `sys_role_permission` VALUES ('39', '1', '13');
INSERT INTO `sys_role_permission` VALUES ('62', '2', '3');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统用户id',
  `user_name` varchar(32) DEFAULT NULL COMMENT '姓名',
  `login_name` varchar(16) DEFAULT NULL COMMENT '登录名',
  `password` varchar(16) DEFAULT NULL COMMENT '密码',
  `user_state` int(1) DEFAULT '1' COMMENT '用户状态：0=停用，1=启用',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='系统后台用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '管理员1', 'admin', 'admin', '1');
INSERT INTO `sys_user` VALUES ('2', '审核员1', 'shenheyuan', null, '1');
INSERT INTO `sys_user` VALUES ('3', '测试删除1', '测试删除1', null, '0');
INSERT INTO `sys_user` VALUES ('4', '测试删除2', '测试删除22', null, '0');
INSERT INTO `sys_user` VALUES ('5', '测试删除3', '测试删除33', null, '0');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `role_id` int(11) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='用户角色映射表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('16', '1', '1');
INSERT INTO `sys_user_role` VALUES ('17', '2', '2');

-- ----------------------------
-- Table structure for `upload_file`
-- ----------------------------
DROP TABLE IF EXISTS `upload_file`;
CREATE TABLE `upload_file` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文件id',
  `file_md5` varchar(64) DEFAULT NULL COMMENT '文件MD5',
  `file_path` varchar(256) DEFAULT NULL COMMENT '文件路径',
  PRIMARY KEY (`file_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of upload_file
-- ----------------------------
INSERT INTO `upload_file` VALUES ('2', 'abd088606754dcfbd2dbac95d64e7bcf', '/files/cooperation/20160504201522234.doc');
INSERT INTO `upload_file` VALUES ('3', 'b975fb104a160db4c0a3144f2ff25d5c', '/files/cooperation/20160504201752627.rar');
INSERT INTO `upload_file` VALUES ('4', null, 'null/20160505125006958.jpg');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `password` varchar(64) DEFAULT 'ff28ecf58bba586cab059a9bcabd7c87' COMMENT '密码',
  `image_path` varchar(128) DEFAULT NULL COMMENT '头像路径',
  `name` varchar(32) DEFAULT NULL COMMENT '真实姓名',
  `idcard_num` varchar(18) DEFAULT NULL COMMENT '身份证号',
  `company_name` varchar(64) DEFAULT NULL COMMENT '公司名',
  `position` varchar(64) DEFAULT NULL COMMENT '职位',
  `introduction` varchar(128) DEFAULT NULL COMMENT '个人简介',
  `email` varchar(64) DEFAULT NULL COMMENT '电子邮件',
  `wei_open_id` varchar(255) DEFAULT NULL COMMENT '微信openID',
  `nick_name` varchar(64) DEFAULT NULL COMMENT '昵称',
  `qq_open_id` varchar(255) DEFAULT NULL COMMENT 'QQopenId',
  `type` int(4) DEFAULT '0' COMMENT '用户类型，初次登录方式，主类型',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `refresh_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `enable` int(1) DEFAULT '1' COMMENT '0=未启用，1=启用',
  `weibo_uid` varchar(255) DEFAULT NULL COMMENT '微博uid',
  `wx_nick` varchar(64) DEFAULT NULL COMMENT '微信昵称',
  `wb_nick` varchar(64) DEFAULT NULL COMMENT '微博昵称',
  `qq_nick` varchar(64) DEFAULT NULL COMMENT 'qq昵称',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='普通用户';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('47', '15153632222', 'ff28ecf58bba586cab059a9bcabd7c87', '/files/default/jpg/201605/20160510115245103.jpg', '李治国', '52263519890117727X', '挖财', '董事长', '三年前我的梦想之一，感谢你来实现。看着别人实现自己的梦想也是幸福的。', 'lizhiguo@126.com', null, '治国平天下', null, null, null, '2016-05-10 13:46:44', null, null, null, null, null);
INSERT INTO `user` VALUES ('48', '13782541122', 'ff28ecf58bba586cab059a9bcabd7c87', '/files/default/png/201605/20160510135508255.png', '郭松源', '522635198101135012', '北京五十度创投', '联合创始人', '寻找千里马及未来成长价值，努力控制风险！', 'guosongyuan@126.com', null, '小郭', null, null, null, '2016-05-18 09:54:36', '1', null, null, null, null);
INSERT INTO `user` VALUES ('49', '13228476777', 'ff28ecf58bba586cab059a9bcabd7c87', '/files/default/png/201605/20160510135644196.png', '吴创业', '451025198108207096', '香港兴创有限公司', '总经理', '谈笑有鸿儒，往来无白丁，投资也是提升自己的重要途径', 'chuangye@chuangye.com', null, '创梦', null, null, null, '2016-05-10 13:58:10', null, null, null, null, null);
INSERT INTO `user` VALUES ('50', '18042324007', '6846860684f05029abccc09a53cd66f1', null, '马金会', '362302199309274513', null, null, null, null, null, '路径', null, '0', null, '2016-05-18 11:10:57', '1', null, null, null, null);
INSERT INTO `user` VALUES ('51', '13476933067', 'ff28ecf58bba586cab059a9bcabd7c87', '', '丘皓茏', '522635198708184662', '哈姆教育咨询有限公司', '创始人', '创始人满大街啊，其实还是销售员最实在', 'qiuhao@163.com', null, '丘皓茏1', null, null, null, '2016-05-10 19:55:46', null, null, null, null, null);
INSERT INTO `user` VALUES ('52', '15958146537', '6674e1c59504db07c87125afb38ebe60', null, '汪灵', '330127199303204311', null, null, null, null, null, '汪帅', null, '0', null, '2016-05-11 10:41:18', '1', null, null, null, null);
INSERT INTO `user` VALUES ('53', '15158134357', '0d4408b74f9395171a1b1ad992146357', null, '', '', null, null, null, null, null, '齐小吓', null, '0', null, '2016-05-16 11:29:01', '1', null, null, null, null);
INSERT INTO `user` VALUES ('55', '13567164963', '0d6298117b1b3148d7bc4ec1ab0781a9', null, '章桂城', '330127199004094319', 'DES', 'CEO', null, null, null, 'ntopsteven', null, '0', null, '2016-05-11 13:48:33', '1', null, null, null, null);
INSERT INTO `user` VALUES ('56', '15068857611', '6846860684f05029abccc09a53cd66f1', '/files/account/headImg/56/2016/20160523145337738.png', '俞嘉懿', '330127199004094312', '某总行机构业务部2', '总经理3', '随心而投。4', '1141541376@qq.com', null, '流量1', null, '0', null, '2016-05-23 15:12:22', '1', null, '啊啊啊', null, null);
INSERT INTO `user` VALUES ('57', '18069781988', 'e5aa459fddbda8948e50a2b00e574a86', null, null, null, null, null, null, null, null, '古城', null, '0', null, '2016-05-18 09:56:26', '1', null, null, null, null);
INSERT INTO `user` VALUES ('64', null, null, '/files/account/headImg/64/2016/c8c6409d-21dc-41b4-9061-63947225d2cb.jpg', null, null, null, null, null, null, 'o4ljdstWgjKm4TLTXEW_0soe-s6U', 'kids', null, '1', null, '2016-05-17 14:05:09', null, null, null, null, null);
INSERT INTO `user` VALUES ('66', null, null, '/files/account/headImg/66/2016/8665f6d8-1a91-46b5-a31b-616a9442ee51.jpg', null, null, null, null, null, null, null, '雏鹰众筹', null, '3', null, null, null, '5886054336', null, null, null);
INSERT INTO `user` VALUES ('67', '15957145417', 'dc483e80a7a0bd9ef71d8cf973673924', null, '祝龙涛', '362302199309274514', 'sa', 'sadf', null, 'longtao_mail@126.com', null, '哈哈', null, '0', null, '2016-05-19 15:56:36', '1', null, null, null, null);
INSERT INTO `user` VALUES ('68', null, null, '/files/account/headImg/68/2016/668cad87-c18d-44d6-8390-164a657dad57.jpg', null, null, null, null, null, null, 'o4ljdsuuWet2GEe9vWjnQDkp74s4', '丰绅殷德', null, '1', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `user_investor`
-- ----------------------------
DROP TABLE IF EXISTS `user_investor`;
CREATE TABLE `user_investor` (
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `resident_citys` varchar(128) DEFAULT NULL COMMENT '常驻城市',
  `type_ids` varchar(128) DEFAULT NULL COMMENT '关注领域',
  `stage_ids` varchar(128) DEFAULT NULL COMMENT '关注阶段',
  `plan_amount` int(11) DEFAULT NULL COMMENT '计划投资项目数',
  `start_money` int(11) DEFAULT NULL COMMENT '单个项目投资最小额（单位万元）',
  `end_money` int(11) DEFAULT NULL COMMENT '单个项目投资最大额（单位万元）',
  `start_year` date DEFAULT NULL COMMENT '开始进入投资行业的年份',
  `already_amount` int(11) DEFAULT NULL COMMENT '已投项目数',
  `apply_state` int(11) DEFAULT '0' COMMENT '审核状态，0=审核中，1=认证成功，-1=认证失败',
  `assets_state` varchar(3) DEFAULT NULL COMMENT '投资人真实资产状况，00=都不通过；01=第一个不通过，第二个通过；10=第一个通过，第二个不通过；11=都通过',
  `invest_years` int(2) DEFAULT NULL COMMENT '投资年限，1=1~3年，2=3~5年，3=5~10年，4=10年以上',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='投资人';

-- ----------------------------
-- Records of user_investor
-- ----------------------------
INSERT INTO `user_investor` VALUES ('56', '7,8,14,', '1,2,4,', '2,4,6,', '3', '11', '222', null, null, '1', '10', '2', '2016-05-11 14:36:40');
INSERT INTO `user_investor` VALUES ('47', '5,17,8,', '2,3,4,', '1,2,', '2', '300', '1000', null, null, '1', '11', '3', '2016-05-10 13:47:13');
INSERT INTO `user_investor` VALUES ('48', null, '3,4,6,', '3,5,6,', null, '300', '500', null, null, '1', '11', '2', '2016-05-10 13:58:44');
INSERT INTO `user_investor` VALUES ('49', null, '5,6,', '5,6,7,', null, '200', '600', null, null, '1', '10', '2', '2016-05-10 14:00:23');
INSERT INTO `user_investor` VALUES ('67', null, '1,6,', '1,2,', null, '23', '32', null, null, '1', '11', '1', '2016-05-19 11:41:59');

-- ----------------------------
-- Table structure for `user_publisher`
-- ----------------------------
DROP TABLE IF EXISTS `user_publisher`;
CREATE TABLE `user_publisher` (
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='项目发起方';

-- ----------------------------
-- Records of user_publisher
-- ----------------------------

-- ----------------------------
-- Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '平台注册的用户id',
  `role_id` int(11) DEFAULT NULL COMMENT '平台角色id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='注册用户角色映射表';

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('39', '56', '2');
INSERT INTO `user_role` VALUES ('36', '47', '2');
INSERT INTO `user_role` VALUES ('37', '48', '2');
INSERT INTO `user_role` VALUES ('38', '49', '2');
INSERT INTO `user_role` VALUES ('40', '67', '2');

-- ----------------------------
-- Table structure for `work`
-- ----------------------------
DROP TABLE IF EXISTS `work`;
CREATE TABLE `work` (
  `work_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '关联用户id',
  `company` varchar(256) DEFAULT NULL COMMENT '公司名',
  `position` varchar(256) DEFAULT NULL COMMENT '职位名',
  `start_year` timestamp NULL DEFAULT NULL COMMENT '开始日期',
  `end_year` timestamp NULL DEFAULT NULL COMMENT '结束日期',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`work_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of work
-- ----------------------------
INSERT INTO `work` VALUES ('16', '46', '拉隆基金', '总经理', '2013-05-07 00:00:00', '2016-05-10 00:00:00', '2016-05-10 14:08:37');
INSERT INTO `work` VALUES ('17', '47', '挖财', '董事长', '2013-05-10 00:00:00', '2016-05-10 00:00:00', '2016-05-10 14:11:45');
INSERT INTO `work` VALUES ('18', '48', '北京五十度创投', '联合创始人', '2014-05-10 00:00:00', '2016-05-10 00:00:00', '2016-05-10 14:13:10');
INSERT INTO `work` VALUES ('19', '49', '香港兴创有限公司', '总经理', '2015-05-10 00:00:00', '2016-05-10 00:00:00', '2016-05-10 14:14:03');
