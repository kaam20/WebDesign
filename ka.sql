/*
Navicat MySQL Data Transfer

Source Server         : ka
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : ka

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2022-01-14 11:11:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ka_admin`
-- ----------------------------
DROP TABLE IF EXISTS `ka_admin`;
CREATE TABLE `ka_admin` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `account` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ka_admin
-- ----------------------------
INSERT INTO `ka_admin` VALUES ('1', 'admin', '123456', '18856214535');

-- ----------------------------
-- Table structure for `ka_catagory`
-- ----------------------------
DROP TABLE IF EXISTS `ka_catagory`;
CREATE TABLE `ka_catagory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) NOT NULL COMMENT '分类名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='分类表';

-- ----------------------------
-- Records of ka_catagory
-- ----------------------------
INSERT INTO `ka_catagory` VALUES ('1', '猪');
INSERT INTO `ka_catagory` VALUES ('2', '牛');
INSERT INTO `ka_catagory` VALUES ('3', '鸡');
INSERT INTO `ka_catagory` VALUES ('4', '鸭');
INSERT INTO `ka_catagory` VALUES ('5', '羊');
INSERT INTO `ka_catagory` VALUES ('6', '驴');
INSERT INTO `ka_catagory` VALUES ('8', '其他');

-- ----------------------------
-- Table structure for `ka_menu`
-- ----------------------------
DROP TABLE IF EXISTS `ka_menu`;
CREATE TABLE `ka_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(50) NOT NULL COMMENT '菜单名',
  `fid` int(10) NOT NULL COMMENT '父ID',
  `add` varchar(255) NOT NULL DEFAULT 'index.php\\index\\index',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COMMENT='左侧菜单表';

-- ----------------------------
-- Records of ka_menu
-- ----------------------------
INSERT INTO `ka_menu` VALUES ('1', '用户管理', '0', '\\index.php\\index\\index');
INSERT INTO `ka_menu` VALUES ('2', '管理员', '1', '\\index.php\\admin\\index');
INSERT INTO `ka_menu` VALUES ('3', '普通用户', '1', '\\index.php\\user\\index');
INSERT INTO `ka_menu` VALUES ('4', '种质信息管理', '0', '\\index.php\\index\\index');
INSERT INTO `ka_menu` VALUES ('5', '种类信息', '4', '\\index.php\\catagory\\index');
INSERT INTO `ka_menu` VALUES ('6', '资源场信息', '4', '\\index.php\\resources\\index');
INSERT INTO `ka_menu` VALUES ('7', '品种信息 ', '4', '\\index.php\\species\\index');
INSERT INTO `ka_menu` VALUES ('9', '共享信息管理', '0', '\\index.php\\index\\index');
INSERT INTO `ka_menu` VALUES ('10', '共享请求信息', '9', '\\index.php\\shares\\index');
INSERT INTO `ka_menu` VALUES ('17', '数据报表', '15', '\\index.php\\analysis\\index');
INSERT INTO `ka_menu` VALUES ('16', '地理位置信息', '15', '\\index.php\\location\\index');
INSERT INTO `ka_menu` VALUES ('15', '信息统计', '0', '\\index.php\\index\\index');

-- ----------------------------
-- Table structure for `ka_resources`
-- ----------------------------
DROP TABLE IF EXISTS `ka_resources`;
CREATE TABLE `ka_resources` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '1',
  `species` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `linkman` varchar(10) DEFAULT '0',
  `tel` varchar(20) DEFAULT '1',
  `s_img` varchar(100) DEFAULT NULL,
  `r_img` varchar(100) DEFAULT NULL,
  `add_time` int(10) unsigned DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COMMENT='商品表';

-- ----------------------------
-- Records of ka_resources
-- ----------------------------
INSERT INTO `ka_resources` VALUES ('1', '辽宁省丹东市种畜场', '辽宁黑猪、野猪', '辽宁省丹东市振安区五道沟变电街740号', '陈东成', '18525468950', '0', '0', '0');
INSERT INTO `ka_resources` VALUES ('2', '大连瓦房店市种牛场', '复州牛', '大连瓦房店市炮崖乡张屯村', '于运祥', '0411-5244028', '0', '0', '0');
INSERT INTO `ka_resources` VALUES ('3', '浙江省余杭湖羊场', '湖羊', '浙江省杭州余杭区径山镇漕桥', '白骊骅', '0571-88583006', '0', '0', '0');
INSERT INTO `ka_resources` VALUES ('4', '福建省连城白鸭场', '连城白鸭', '福建省连城县畜牧水产局', '余声春', '0597-8922350', '0', '0', '0');
INSERT INTO `ka_resources` VALUES ('5', '云南省西双版纳州茶花鸡保种场', '茶花鸡', '云南省西双版纳州畜牧兽医站', '刘建平', '0691-2711248', '0', '0', '0');

-- ----------------------------
-- Table structure for `ka_shares`
-- ----------------------------
DROP TABLE IF EXISTS `ka_shares`;
CREATE TABLE `ka_shares` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT '1',
  `department` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `tel` varchar(20) DEFAULT '',
  `species` varchar(50) DEFAULT '1',
  `s_id` varchar(50) DEFAULT '',
  `s_num` int(10) DEFAULT NULL,
  `reason` text,
  `add_time` int(10) unsigned DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COMMENT='商品表';

-- ----------------------------
-- Records of ka_shares
-- ----------------------------
INSERT INTO `ka_shares` VALUES ('29', '张三', '山东烟台农业局', '山东省烟台市滨海中路', '15632568974', '香猪猪', 'X-01-001-05', '6', '用于配种，进行优质猪种的培育。', '0');
INSERT INTO `ka_shares` VALUES ('30', '王二', '山东省动物保护局', '马山街道滨海中路2006号', '13567829303', '辽宁黑猪', 'X-02-5852', '5', '用于基因研究实验。', null);

-- ----------------------------
-- Table structure for `ka_species`
-- ----------------------------
DROP TABLE IF EXISTS `ka_species`;
CREATE TABLE `ka_species` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `s_id` varchar(50) DEFAULT NULL,
  `cata` varchar(10) DEFAULT '',
  `name` varchar(20) DEFAULT NULL,
  `area` varchar(100) DEFAULT NULL,
  `address` varchar(50) DEFAULT '',
  `description` varchar(200) DEFAULT '',
  `usage` varchar(200) DEFAULT '',
  `add_time` int(10) unsigned DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COMMENT='商品表';

-- ----------------------------
-- Records of ka_species
-- ----------------------------
INSERT INTO `ka_species` VALUES ('1', 'X-01-001-01', '猪', '八眉猪', '陕西、甘肃、宁夏、青海等。', '中国农业科学院畜牧研究所', '大八眉：体格较大；二八眉：中等体型，背腰狭长，腹大下垂，斜尻。大腿欠丰满，后肢多卧系；小伙型：体型小，体质紧凑，背短宽较平，腹大稍下垂，后躯较丰满。四肢较短，皮薄骨细。', '八眉猪具有适应性强，抗逆性强，肉质好，耐粗放管理，遗传性稳定等特点，以八眉猪为母体与巴克夏、约克夏、苏白、长白等品种进行二元三元杂交效果显著。杂交猪具有较高的生产性能，但八眉猪也存在着生长慢，后躯发育差，皮厚等缺点。', '0');
INSERT INTO `ka_species` VALUES ('3', 'X-05-001-01', '羊', '蒙古羊', '主要分布在内蒙古自治区。此外，甘肃、新疆及青海等地有分布。', '中国农业科学院畜牧研究所', '体质结实，骨骼健壮。颈长短适中。胸深，肋骨不够张开，背腰平直，体躯稍长。四肢细长而强健。短脂尾，尾尖卷曲呈“S”形。', '它具有生活力强，适于游牧，耐寒、耐旱等特点。并有较好的产肉、脂性能。在育成我国新疆细毛羊、东北细毛羊、内蒙古细毛羊、敖汉细毛羊及中国卡拉库尔羊的过程中，起过重要作用。 内蒙古西部及毗邻县、自治区是蒙古羊的毛被中干死毛较少，素称河西细春毛，为优良地毯毛。', '0');

-- ----------------------------
-- Table structure for `ka_user`
-- ----------------------------
DROP TABLE IF EXISTS `ka_user`;
CREATE TABLE `ka_user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ka_user
-- ----------------------------
INSERT INTO `ka_user` VALUES ('1', 'ka', 'ka', '19852486532', '山东省烟台市工商局', '山东省烟台市芝罘区');
INSERT INTO `ka_user` VALUES ('2', 'ma', 'ma', '15263589874', '山东省烟台市动物管理局', '山东省烟台市莱山区');
