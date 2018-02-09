/*
Navicat MySQL Data Transfer

Source Server         : soolife
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : soolife

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-02-09 16:40:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for soolifegoodsdata
-- ----------------------------
DROP TABLE IF EXISTS `soolifegoodsdata`;
CREATE TABLE `soolifegoodsdata` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `desc` varchar(255) CHARACTER SET utf8 NOT NULL,
  `category` varchar(255) CHARACTER SET utf8 NOT NULL,
  `brand` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `shopname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `img_index` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `img_detail` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `img1` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ourprice` decimal(10,2) NOT NULL,
  `listprice` decimal(10,2) NOT NULL,
  `off` decimal(10,0) DEFAULT NULL,
  `like` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `weight` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `starcoin` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `addtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=341 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of soolifegoodsdata
-- ----------------------------
INSERT INTO `soolifegoodsdata` VALUES ('1', '羊绒大衣', '超级无敌羊绒大衣', 'clothes', '韩都', '韩都衣舍', 'img/index/clo1.jpg', '', 'img/clothes/clo17.jpg', '../img/clothes/clo17.jpg', '345.00', '367.00', '1', '10023', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('2', '米调格大衣', '超级无敌米调格大衣', 'clothes', '韩都', '韩都衣舍', 'img/index/clo2.jpg', '', 'img/clothes/clo18.jpg', '../img/clothes/clo18.jpg', '346.00', '368.00', '1', '10024', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('3', '双面尼究极外套', '双面尼究极外套', 'clothes', '罗曼欧尼', '罗曼欧尼国际', 'img/index/clo3.jpg', '', 'img/clothes/clo19.jpg', '../img/clothes/clo19.jpg', '347.00', '369.00', '1', '10025', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('4', '毛呢九分裤', '毛呢九分裤', 'clothes', '罗曼欧尼', '罗曼欧尼国际', 'img/index/clo4.jpg', '', 'img/clothes/clo20.jpg', '../img/clothes/clo20.jpg', '348.00', '370.00', '1', '10026', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('5', '究极男士提花套衫', '究极男士提花套衫', 'clothes', '罗曼欧尼', '罗曼欧尼国际', 'img/index/clo5.jpg', '', 'img/clothes/clo21.jpg', '../img/clothes/clo21.jpg', '349.00', '371.00', '1', '10027', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('6', '南极之都针织帽', '南极之都针织帽', 'clothes', '韩都', '韩都衣舍', 'img/index/clo6.jpg', '', 'img/clothes/clo22.jpg', '../img/clothes/clo22.jpg', '350.00', '372.00', '1', '10028', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('7', '经典格子纹围巾', '经典格子纹围巾', 'clothes', '韩都', '韩都衣舍', 'img/index/clo7.jpg', '', 'img/clothes/clo23.jpg', '../img/clothes/clo23.jpg', '351.00', '373.00', '1', '10029', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('8', '商务女士优雅服装', '优雅女士上班首选必备，非常美丽', 'clothes', '韩都', '韩都衣舍', '', '', 'img/clothes/clo1.jpg', '../img/clothes/clo1.jpg', '323.00', '422.00', '1', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('9', '超级休闲服', '在家就要这样穿才行', 'clothes', '韩都', '韩都衣舍', '', '', 'img/clothes/clo2.jpg', '../img/clothes/clo2.jpg', '324.00', '423.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('10', '纯棉舒适袜子', '在家就要这样穿才行', 'clothes', '韩都', '韩都衣舍', '', '', 'img/clothes/clo3.jpg', '../img/clothes/clo3.jpg', '325.00', '424.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('11', '成熟女士优雅服装', '展现您的超级女性魅力', 'clothes', '韩都', '韩都衣舍', '', '', 'img/clothes/clo4.jpg', '../img/clothes/clo4.jpg', '333.00', '425.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('12', '纯棉睡裤', '在家就要这样穿才行', 'clothes', '罗曼欧尼', '罗曼欧尼国际', '', '', 'img/clothes/clo5.jpg', '../img/clothes/clo5.jpg', '334.00', '357.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('13', '碎花优雅长裙', '展现您的超级女性魅力', 'clothes', '罗曼欧尼', '罗曼欧尼国际', '', '', 'img/clothes/clo6.jpg', '../img/clothes/clo6.jpg', '335.00', '358.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('14', '年轻人衬衫', '年轻有活力的年轻人必备', 'clothes', '罗曼欧尼', '罗曼欧尼国际', '', '', 'img/clothes/clo7.jpg', '../img/clothes/clo7.jpg', '336.00', '359.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('15', '超级牛仔杰克外套', '年轻有活力的年轻人必备', 'clothes', '罗曼欧尼', '罗曼欧尼国际', '', '', 'img/clothes/clo8.jpg', '../img/clothes/clo8.jpg', '337.00', '360.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('16', '天使青璇长裙', '小仙女必备，送女朋友首选', 'clothes', '罗曼欧尼', '罗曼欧尼国际', '', '', 'img/clothes/clo9.jpg', '../img/clothes/clo9.jpg', '222.00', '361.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('17', '诱惑丝袜', '小仙女必备，送女朋友首选', 'clothes', '罗曼欧尼', '罗曼欧尼国际', '', '', 'img/clothes/clo10.jpg', '../img/clothes/clo10.jpg', '223.00', '362.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('18', '女士优雅休闲外出套装', '展现您的超级女性魅力', 'clothes', '韩都', '韩都衣舍', '', '', 'img/clothes/clo11.jpg', '../img/clothes/clo11.jpg', '224.00', '363.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('19', '男士休闲纯棉短袖', '年轻有活力的年轻人必备', 'clothes', '韩都', '韩都衣舍', '', '', 'img/clothes/clo12.jpg', '../img/clothes/clo12.jpg', '225.00', '364.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('20', '女士活力外套', '展现您的超级女性魅力', 'clothes', '韩都', '韩都衣舍', '', '', 'img/clothes/clo13.jpg', '../img/clothes/clo13.jpg', '226.00', '365.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('21', '男士休闲纯棉横条衬衫', '年轻有活力的年轻人必备', 'clothes', '韩都', '韩都衣舍', '', '', 'img/clothes/clo14.jpg', '../img/clothes/clo14.jpg', '227.00', '366.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('22', '男士睡衣无敌套装', '在家就要这样穿才行', 'clothes', '韩都', '韩都衣舍', '', '', 'img/clothes/clo15.jpg', '../img/clothes/clo15.jpg', '228.00', '367.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('23', '女士黑色优雅长裙', '小仙女必备，送女朋友首选', 'clothes', '韩都', '韩都衣舍', '', '', 'img/clothes/clo16.jpg', '../img/clothes/clo16.jpg', '229.00', '368.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('24', '商务女士优雅服装', '优雅女士上班首选必备，非常美丽', 'clothes', '韩都', '韩都衣舍', '', '', 'img/clothes/clo1.jpg', '../img/clothes/clo1.jpg', '323.00', '555.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('25', '超级休闲服', '在家就要这样穿才行', 'clothes', '韩都', '韩都衣舍', '', '', 'img/clothes/clo2.jpg', '../img/clothes/clo2.jpg', '422.00', '556.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('26', '纯棉舒适袜子', '在家就要这样穿才行', 'clothes', '韩都', '韩都衣舍', '', '', 'img/clothes/clo3.jpg', '../img/clothes/clo3.jpg', '423.00', '557.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('27', '成熟女士优雅服装', '展现您的超级女性魅力', 'clothes', '韩都', '韩都衣舍', '', '', 'img/clothes/clo4.jpg', '../img/clothes/clo4.jpg', '424.00', '558.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('28', '纯棉睡裤', '在家就要这样穿才行', 'clothes', '罗曼欧尼', '罗曼欧尼国际', '', '', 'img/clothes/clo5.jpg', '../img/clothes/clo5.jpg', '425.00', '559.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('29', '碎花优雅长裙', '展现您的超级女性魅力', 'clothes', '罗曼欧尼', '罗曼欧尼国际', '', '', 'img/clothes/clo6.jpg', '../img/clothes/clo6.jpg', '398.00', '560.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('30', '年轻人衬衫', '年轻有活力的年轻人必备', 'clothes', '罗曼欧尼', '罗曼欧尼国际', '', '', 'img/clothes/clo7.jpg', '../img/clothes/clo7.jpg', '399.00', '561.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('31', '超级牛仔杰克外套', '年轻有活力的年轻人必备', 'clothes', '罗曼欧尼', '罗曼欧尼国际', '', '', 'img/clothes/clo8.jpg', '../img/clothes/clo8.jpg', '400.00', '562.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('32', '天使青璇长裙', '小仙女必备，送女朋友首选', 'clothes', '罗曼欧尼', '罗曼欧尼国际', '', '', 'img/clothes/clo9.jpg', '../img/clothes/clo9.jpg', '401.00', '563.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('33', '诱惑丝袜', '小仙女必备，送女朋友首选', 'clothes', '罗曼欧尼', '罗曼欧尼国际', '', '', 'img/clothes/clo10.jpg', '../img/clothes/clo10.jpg', '333.00', '564.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('34', '女士优雅休闲外出套装', '展现您的超级女性魅力', 'clothes', '韩都', '韩都衣舍', '', '', 'img/clothes/clo11.jpg', '../img/clothes/clo11.jpg', '334.00', '565.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('35', '男士休闲纯棉短袖', '年轻有活力的年轻人必备', 'clothes', '韩都', '韩都衣舍', '', '', 'img/clothes/clo12.jpg', '../img/clothes/clo12.jpg', '335.00', '364.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('36', '女士活力外套', '展现您的超级女性魅力', 'clothes', '韩都', '韩都衣舍', '', '', 'img/clothes/clo13.jpg', '../img/clothes/clo13.jpg', '336.00', '365.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('37', '男士休闲纯棉横条衬衫', '年轻有活力的年轻人必备', 'clothes', '韩都', '韩都衣舍', '', '', 'img/clothes/clo14.jpg', '../img/clothes/clo14.jpg', '337.00', '366.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('38', '商务女士优雅服装', '优雅女士上班首选必备，非常美丽', 'clothes', '韩都', '韩都衣舍', '', '', 'img/clothes/clo1.jpg', '../img/clothes/clo1.jpg', '323.00', '555.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('39', '超级休闲服', '在家就要这样穿才行', 'clothes', '韩都', '韩都衣舍', '', '', 'img/clothes/clo2.jpg', '../img/clothes/clo2.jpg', '422.00', '556.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('40', '纯棉舒适袜子', '在家就要这样穿才行', 'clothes', '韩都', '韩都衣舍', '', '', 'img/clothes/clo3.jpg', '../img/clothes/clo3.jpg', '423.00', '557.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('41', '成熟女士优雅服装', '展现您的超级女性魅力', 'clothes', '韩都', '韩都衣舍', '', '', 'img/clothes/clo4.jpg', '../img/clothes/clo4.jpg', '424.00', '558.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('42', '纯棉睡裤', '在家就要这样穿才行', 'clothes', '罗曼欧尼', '罗曼欧尼国际', '', '', 'img/clothes/clo5.jpg', '../img/clothes/clo5.jpg', '425.00', '559.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('43', '碎花优雅长裙', '展现您的超级女性魅力', 'clothes', '罗曼欧尼', '罗曼欧尼国际', '', '', 'img/clothes/clo6.jpg', '../img/clothes/clo6.jpg', '398.00', '560.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('44', '年轻人衬衫', '年轻有活力的年轻人必备', 'clothes', '罗曼欧尼', '罗曼欧尼国际', '', '', 'img/clothes/clo7.jpg', '../img/clothes/clo7.jpg', '399.00', '561.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('45', '超级牛仔杰克外套', '年轻有活力的年轻人必备', 'clothes', '罗曼欧尼', '罗曼欧尼国际', '', '', 'img/clothes/clo8.jpg', '../img/clothes/clo8.jpg', '400.00', '562.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('46', '天使青璇长裙', '小仙女必备，送女朋友首选', 'clothes', '罗曼欧尼', '罗曼欧尼国际', '', '', 'img/clothes/clo9.jpg', '../img/clothes/clo9.jpg', '401.00', '563.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('47', '诱惑丝袜', '小仙女必备，送女朋友首选', 'clothes', '罗曼欧尼', '罗曼欧尼国际', '', '', 'img/clothes/clo10.jpg', '../img/clothes/clo10.jpg', '333.00', '564.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('48', '小羊皮手提包', '小羊皮手提包', 'bags', '开合', '开合', 'img/index/bag1.jpg', '', 'img/bags/bag16.jpg', '../img/bags/bag16.jpg', '245.00', '246.00', '0', '10003', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('49', '经典贝壳包', '经典贝壳包', 'bags', '开合', '开合', 'img/index/bag2.jpg', '', 'img/bags/bag17.jpg', '../img/bags/bag17.jpg', '246.00', '247.00', '0', '10004', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('50', '芙蓉石项链', '芙蓉石项链', 'bags', '开合', '开合', 'img/index/bag3.jpg', '', 'img/bags/bag18.jpg', '../img/bags/bag18.jpg', '247.00', '248.00', '1', '10005', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('51', '多彩电脑包', '多彩电脑包', 'bags', '安顺', '安顺', 'img/index/bag4.jpg', '', 'img/bags/bag19.jpg', '../img/bags/bag19.jpg', '248.00', '249.00', '1', '10006', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('52', '24寸拉杆箱', '24寸拉杆箱', 'bags', '安顺', '安顺', 'img/index/bag5.jpg', '', 'img/bags/bag20.jpg', '../img/bags/bag20.jpg', '249.00', '250.00', '1', '10007', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('53', '涂鸦pc拉杆箱', '涂鸦pc拉杆箱', 'bags', '安顺', '安顺', 'img/index/bag6.jpg', '', 'img/bags/bag21.jpg', '../img/bags/bag21.jpg', '250.00', '251.00', '1', '10008', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('54', '斜跨单肩包', '斜跨单肩包', 'bags', '安顺', '安顺', 'img/index/bag7.jpg', '', 'img/bags/bag22.jpg', '../img/bags/bag22.jpg', '251.00', '252.00', '1', '10009', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('55', '超级求婚戒指', '超级求婚戒指', 'bags', '安顺', '安顺', 'img/index/bag8.jpg', '', 'img/bags/bag23.jpg', '../img/bags/bag23.jpg', '3456.00', '3456.00', '0', '10010', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('56', '黄色旅行箱加长版', '旅游必备', 'bags', '开合', '开合', '', '', 'img/bags/bag1.jpg', '../img/bags/bag1.jpg', '555.00', '666.00', '0', '10003', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('57', '亮银色超级旅行箱', '旅游必备', 'bags', '开合', '开合', '', '', 'img/bags/bag2.jpg', '../img/bags/bag2.jpg', '556.00', '667.00', '0', '10004', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('58', '女士优雅包', '小仙女必备，送女朋友首选', 'bags', '开合', '开合', '', '', 'img/bags/bag3.jpg', '../img/bags/bag3.jpg', '557.00', '668.00', '1', '10005', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('59', '休闲背包', '旅游必备', 'bags', '开合', '开合', '', '', 'img/bags/bag4.jpg', '../img/bags/bag4.jpg', '558.00', '669.00', '1', '10006', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('60', '商务女士优雅长手提包', '小仙女必备，送女朋友首选', 'bags', '开合', '开合', '', '', 'img/bags/bag5.jpg', '../img/bags/bag5.jpg', '433.00', '499.00', '1', '10007', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('61', '成熟女士长包', '小仙女必备，送女朋友首选', 'bags', '开合', '开合', '', '', 'img/bags/bag6.jpg', '../img/bags/bag6.jpg', '434.00', '500.00', '1', '10008', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('62', '超级黑金优雅长包', '小仙女必备，送女朋友首选', 'bags', '开合', '开合', '', '', 'img/bags/bag7.jpg', '../img/bags/bag7.jpg', '435.00', '501.00', '1', '10009', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('63', '完美女士超级手提包', '小仙女必备，送女朋友首选', 'bags', '开合', '开合', '', '', 'img/bags/bag8.jpg', '../img/bags/bag8.jpg', '666.00', '688.00', '0', '10010', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('64', '年轻女生快乐手提包', '小仙女必备，送女朋友首选', 'bags', '安顺', '安顺', '', '', 'img/bags/bag9.jpg', '../img/bags/bag9.jpg', '667.00', '689.00', '0', '10011', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('65', '优雅女士成熟提包', '小仙女必备，送女朋友首选', 'bags', '安顺', '安顺', '', '', 'img/bags/bag10.jpg', '../img/bags/bag10.jpg', '668.00', '690.00', '0', '10012', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('66', 'Amazon优雅商务旅行箱', '旅游必备', 'bags', '安顺', '安顺', '', '', 'img/bags/bag11.jpg', '../img/bags/bag11.jpg', '669.00', '691.00', '0', '10013', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('67', '城市丽人豪华旅行箱', '旅游必备', 'bags', '安顺', '安顺', '', '', 'img/bags/bag12.jpg', '../img/bags/bag12.jpg', '670.00', '692.00', '0', '10014', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('68', '霹雳风火轮旅行箱', '旅游必备', 'bags', '安顺', '安顺', '', '', 'img/bags/bag13.jpg', '../img/bags/bag13.jpg', '671.00', '693.00', '0', '10015', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('69', '巨贵无比的豪华旅行箱', '旅游必备', 'bags', '安顺', '安顺', '', '', 'img/bags/bag14.jpg', '../img/bags/bag14.jpg', '672.00', '694.00', '0', '10016', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('70', '强大巨多的容纳手提包', '旅游必备', 'bags', '安顺', '安顺', '', '', 'img/bags/bag15.jpg', '../img/bags/bag15.jpg', '673.00', '695.00', '0', '10017', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('71', '黄色旅行箱加长版', '旅游必备', 'bags', '开合', '开合', '', '', 'img/bags/bag1.jpg', '../img/bags/bag1.jpg', '587.00', '696.00', '0', '10003', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('72', '亮银色超级旅行箱', '旅游必备', 'bags', '开合', '开合', '', '', 'img/bags/bag2.jpg', '../img/bags/bag2.jpg', '588.00', '697.00', '0', '10004', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('73', '女士优雅包', '小仙女必备，送女朋友首选', 'bags', '开合', '开合', '', '', 'img/bags/bag3.jpg', '../img/bags/bag3.jpg', '589.00', '698.00', '1', '10005', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('74', '休闲背包', '旅游必备', 'bags', '开合', '开合', '', '', 'img/bags/bag4.jpg', '../img/bags/bag4.jpg', '590.00', '603.00', '1', '10006', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('75', '商务女士优雅长手提包', '小仙女必备，送女朋友首选', 'bags', '开合', '开合', '', '', 'img/bags/bag5.jpg', '../img/bags/bag5.jpg', '591.00', '604.00', '1', '10007', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('76', '成熟女士长包', '小仙女必备，送女朋友首选', 'bags', '开合', '开合', '', '', 'img/bags/bag6.jpg', '../img/bags/bag6.jpg', '592.00', '605.00', '1', '10008', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('77', '超级黑金优雅长包', '小仙女必备，送女朋友首选', 'bags', '开合', '开合', '', '', 'img/bags/bag7.jpg', '../img/bags/bag7.jpg', '593.00', '606.00', '1', '10009', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('78', '完美女士超级手提包', '小仙女必备，送女朋友首选', 'bags', '开合', '开合', '', '', 'img/bags/bag8.jpg', '../img/bags/bag8.jpg', '594.00', '607.00', '0', '10010', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('79', '年轻女生快乐手提包', '小仙女必备，送女朋友首选', 'bags', '安顺', '安顺', '', '', 'img/bags/bag9.jpg', '../img/bags/bag9.jpg', '595.00', '608.00', '0', '10011', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('80', '优雅女士成熟提包', '小仙女必备，送女朋友首选', 'bags', '安顺', '安顺', '', '', 'img/bags/bag10.jpg', '../img/bags/bag10.jpg', '596.00', '609.00', '0', '10012', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('81', 'Amazon优雅商务旅行箱', '旅游必备', 'bags', '安顺', '安顺', '', '', 'img/bags/bag11.jpg', '../img/bags/bag11.jpg', '597.00', '610.00', '0', '10013', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('82', '城市丽人豪华旅行箱', '旅游必备', 'bags', '安顺', '安顺', '', '', 'img/bags/bag12.jpg', '../img/bags/bag12.jpg', '598.00', '611.00', '0', '10014', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('83', '霹雳风火轮旅行箱', '旅游必备', 'bags', '安顺', '安顺', '', '', 'img/bags/bag13.jpg', '../img/bags/bag13.jpg', '599.00', '612.00', '0', '10015', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('84', '巨贵无比的豪华旅行箱', '旅游必备', 'bags', '安顺', '安顺', '', '', 'img/bags/bag14.jpg', '../img/bags/bag14.jpg', '600.00', '613.00', '0', '10016', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('85', '强大巨多的容纳手提包', '旅游必备', 'bags', '安顺', '安顺', '', '', 'img/bags/bag15.jpg', '../img/bags/bag15.jpg', '601.00', '614.00', '0', '10017', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('86', '黄色旅行箱加长版', '旅游必备', 'bags', '开合', '开合', '', '', 'img/bags/bag1.jpg', '../img/bags/bag1.jpg', '602.00', '615.00', '0', '10003', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('87', '亮银色超级旅行箱', '旅游必备', 'bags', '开合', '开合', '', '', 'img/bags/bag2.jpg', '../img/bags/bag2.jpg', '603.00', '616.00', '0', '10004', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('88', '女士优雅包', '小仙女必备，送女朋友首选', 'bags', '开合', '开合', '', '', 'img/bags/bag3.jpg', '../img/bags/bag3.jpg', '557.00', '617.00', '1', '10005', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('89', '休闲背包', '旅游必备', 'bags', '开合', '开合', '', '', 'img/bags/bag4.jpg', '../img/bags/bag4.jpg', '333.00', '388.00', '1', '10006', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('90', '商务女士优雅长手提包', '小仙女必备，送女朋友首选', 'bags', '开合', '开合', '', '', 'img/bags/bag5.jpg', '../img/bags/bag5.jpg', '334.00', '389.00', '1', '10007', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('91', '成熟女士长包', '小仙女必备，送女朋友首选', 'bags', '开合', '开合', '', '', 'img/bags/bag6.jpg', '../img/bags/bag6.jpg', '335.00', '390.00', '1', '10008', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('92', '超级黑金优雅长包', '小仙女必备，送女朋友首选', 'bags', '开合', '开合', '', '', 'img/bags/bag7.jpg', '../img/bags/bag7.jpg', '336.00', '391.00', '1', '10009', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('93', '完美女士超级手提包', '小仙女必备，送女朋友首选', 'bags', '开合', '开合', '', '', 'img/bags/bag8.jpg', '../img/bags/bag8.jpg', '337.00', '392.00', '0', '10010', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('94', '年轻女生快乐手提包', '小仙女必备，送女朋友首选', 'bags', '安顺', '安顺', '', '', 'img/bags/bag9.jpg', '../img/bags/bag9.jpg', '338.00', '393.00', '0', '10011', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('95', '优雅女士成熟提包', '小仙女必备，送女朋友首选', 'bags', '安顺', '安顺', '', '', 'img/bags/bag10.jpg', '../img/bags/bag10.jpg', '339.00', '394.00', '0', '10012', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('96', 'Amazon优雅商务旅行箱', '旅游必备', 'bags', '安顺', '安顺', '', '', 'img/bags/bag11.jpg', '../img/bags/bag11.jpg', '340.00', '395.00', '0', '10013', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('97', '城市丽人豪华旅行箱', '旅游必备', 'bags', '安顺', '安顺', '', '', 'img/bags/bag12.jpg', '../img/bags/bag12.jpg', '341.00', '396.00', '0', '10014', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('98', '霹雳风火轮旅行箱', '旅游必备', 'bags', '安顺', '安顺', '', '', 'img/bags/bag13.jpg', '../img/bags/bag13.jpg', '342.00', '397.00', '0', '10015', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('99', '巨贵无比的豪华旅行箱', '旅游必备', 'bags', '安顺', '安顺', '', '', 'img/bags/bag14.jpg', '../img/bags/bag14.jpg', '343.00', '398.00', '0', '10016', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('100', '强大巨多的容纳手提包', '旅游必备', 'bags', '安顺', '安顺', '', '', 'img/bags/bag15.jpg', '../img/bags/bag15.jpg', '344.00', '399.00', '0', '10017', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('101', '黄色旅行箱加长版', '旅游必备', 'bags', '开合', '开合', '', '', 'img/bags/bag1.jpg', '../img/bags/bag1.jpg', '345.00', '400.00', '0', '10003', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('102', '亮银色超级旅行箱', '旅游必备', 'bags', '开合', '开合', '', '', 'img/bags/bag2.jpg', '../img/bags/bag2.jpg', '555.00', '567.00', '0', '10004', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('103', '女士优雅包', '小仙女必备，送女朋友首选', 'bags', '开合', '开合', '', '', 'img/bags/bag3.jpg', '../img/bags/bag3.jpg', '556.00', '568.00', '1', '10005', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('104', '休闲背包', '旅游必备', 'bags', '开合', '开合', '', '', 'img/bags/bag4.jpg', '../img/bags/bag4.jpg', '557.00', '569.00', '1', '10006', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('105', '商务女士优雅长手提包', '小仙女必备，送女朋友首选', 'bags', '开合', '开合', '', '', 'img/bags/bag5.jpg', '../img/bags/bag5.jpg', '558.00', '570.00', '1', '10007', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('106', '成熟女士长包', '小仙女必备，送女朋友首选', 'bags', '开合', '开合', '', '', 'img/bags/bag6.jpg', '../img/bags/bag6.jpg', '559.00', '571.00', '1', '10008', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('107', '超级黑金优雅长包', '小仙女必备，送女朋友首选', 'bags', '开合', '开合', '', '', 'img/bags/bag7.jpg', '../img/bags/bag7.jpg', '560.00', '572.00', '1', '10009', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('108', '完美女士超级手提包', '小仙女必备，送女朋友首选', 'bags', '开合', '开合', '', '', 'img/bags/bag8.jpg', '../img/bags/bag8.jpg', '561.00', '573.00', '0', '10010', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('109', '年轻女生快乐手提包', '小仙女必备，送女朋友首选', 'bags', '安顺', '安顺', '', '', 'img/bags/bag9.jpg', '../img/bags/bag9.jpg', '562.00', '574.00', '0', '10011', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('110', '优雅女士成熟提包', '小仙女必备，送女朋友首选', 'bags', '安顺', '安顺', '', '', 'img/bags/bag10.jpg', '../img/bags/bag10.jpg', '563.00', '575.00', '0', '10012', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('111', 'Amazon优雅商务旅行箱', '旅游必备', 'bags', '安顺', '安顺', '', '', 'img/bags/bag11.jpg', '../img/bags/bag11.jpg', '564.00', '576.00', '0', '10013', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('112', '城市丽人豪华旅行箱', '旅游必备', 'bags', '安顺', '安顺', '', '', 'img/bags/bag12.jpg', '../img/bags/bag12.jpg', '565.00', '577.00', '0', '10014', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('113', '霹雳风火轮旅行箱', '旅游必备', 'bags', '安顺', '安顺', '', '', 'img/bags/bag13.jpg', '../img/bags/bag13.jpg', '566.00', '578.00', '0', '10015', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('114', '巨贵无比的豪华旅行箱', '旅游必备', 'bags', '安顺', '安顺', '', '', 'img/bags/bag14.jpg', '../img/bags/bag14.jpg', '567.00', '579.00', '0', '10016', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('115', '强大巨多的容纳手提包', '旅游必备', 'bags', '安顺', '安顺', '', '', 'img/bags/bag15.jpg', '../img/bags/bag15.jpg', '568.00', '580.00', '0', '10017', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('116', '六滚轮深桶足浴盆', '六滚轮深桶足浴盆', 'sports', '壹万', '上海壹万', 'img/index/sports1.jpg', '', 'img/sports/shoe16.jpg', '../img/sports/shoe16.jpg', '445.00', '445.00', '0', '10018', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('117', '10寸豪华平衡车', '10寸豪华平衡车', 'sports', '壹万', '上海壹万', 'img/index/sports2.jpg', '', 'img/sports/shoe17.jpg', '../img/sports/shoe17.jpg', '446.00', '446.00', '0', '10019', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('118', '七彩滑板', '七彩滑板', 'sports', '壹万', '上海壹万', 'img/index/sports3.jpg', '', 'img/sports/shoe18.jpg', '../img/sports/shoe18.jpg', '447.00', '447.00', '0', '10020', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('119', '两用折叠躺椅', '两用折叠躺椅', 'sports', '壹万', '上海壹万', 'img/index/sports4.jpg', '', 'img/sports/shoe19.jpg', '../img/sports/shoe19.jpg', '448.00', '448.00', '0', '10021', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('120', '艾拓普登山杖', '艾拓普登山杖', 'sports', '壹万', '上海壹万', 'img/index/sports5.jpg', '', 'img/sports/shoe20.jpg', '../img/sports/shoe20.jpg', '449.00', '449.00', '0', '10022', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('121', '三人自动帐篷', '三人自动帐篷', 'sports', '壹万', '上海壹万', 'img/index/sports6.jpg', '', 'img/sports/shoe21.jpg', '../img/sports/shoe21.jpg', '450.00', '450.00', '0', '10023', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('122', '时尚迷你液压踏步机', '时尚迷你液压踏步机', 'sports', '壹万', '上海壹万', 'img/index/sports7.jpg', '', 'img/sports/shoe22.jpg', '../img/sports/shoe22.jpg', '451.00', '451.00', '0', '10024', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('123', '无敌超级运动飞翔版', '体验非一般的跑步快感', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe1.jpg', '../img/sports/shoe1.jpg', '245.00', '333.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('124', '超级运动年轻活力邀月龙鞋', '体验非一般的跑步快感', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe2.jpg', '../img/sports/shoe2.jpg', '246.00', '334.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('125', '蜜月旅行二人帐篷', '两人世界的快感', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe3.jpg', '../img/sports/shoe3.jpg', '666.00', '689.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('126', '超级无敌坚韧不拔跳绳', '运动健康五十年', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe4.jpg', '../img/sports/shoe4.jpg', '23.00', '50.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('127', '户外舒适长椅子', '就是那么爽', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe5.jpg', '../img/sports/shoe5.jpg', '223.00', '333.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('128', '超级无敌紧身运动长裤', '跑步超级舒适', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe6.jpg', '../img/sports/shoe6.jpg', '34.00', '45.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('129', '运动透气活力飞行鞋', '体验非一般的跑步快感', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe7.jpg', '../img/sports/shoe7.jpg', '123.00', '222.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('130', '普通青年运动超级非凡鞋子', '体验非一般的跑步快感', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe8.jpg', '../img/sports/shoe8.jpg', '124.00', '223.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('131', '风风火火超级飞行杰克天鞋', '体验非一般的跑步快感', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe9.jpg', '../img/sports/shoe9.jpg', '125.00', '224.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('132', '超级龙骑士鸭舌帽', '戴上去就是不一般', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe10.jpg', '../img/sports/shoe10.jpg', '34.00', '45.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('133', '超级炎龙鸭舌帽', '戴上去就是不一般', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe11.jpg', '../img/sports/shoe11.jpg', '35.00', '46.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('134', '男士倒三角紧身运动衣', '运动超级合适', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe12.jpg', '../img/sports/shoe12.jpg', '88.00', '102.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('135', '美丽女士比基尼', '让您迷倒所有人', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe13.jpg', '../img/sports/shoe13.jpg', '78.00', '89.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('136', '市内超级健身套装', '运动超级合适', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe14.jpg', '../img/sports/shoe14.jpg', '287.00', '333.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('137', '超级男士游泳短裤头', '运动超级合适', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe15.jpg', '../img/sports/shoe15.jpg', '33.00', '44.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('138', '无敌超级运动飞翔版', '体验非一般的跑步快感', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe1.jpg', '../img/sports/shoe1.jpg', '222.00', '254.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('139', '超级运动年轻活力邀月龙鞋', '体验非一般的跑步快感', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe2.jpg', '../img/sports/shoe2.jpg', '223.00', '256.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('140', '蜜月旅行二人帐篷', '两人世界的快感', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe3.jpg', '../img/sports/shoe3.jpg', '777.00', '789.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('141', '超级无敌坚韧不拔跳绳', '运动健康五十年', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe4.jpg', '../img/sports/shoe4.jpg', '13.00', '25.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('142', '风风火火超级飞行杰克天鞋', '体验非一般的跑步快感', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe9.jpg', '../img/sports/shoe9.jpg', '235.00', '333.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('143', '无敌超级运动飞翔版', '体验非一般的跑步快感', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe1.jpg', '../img/sports/shoe1.jpg', '245.00', '333.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('144', '超级运动年轻活力邀月龙鞋', '体验非一般的跑步快感', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe2.jpg', '../img/sports/shoe2.jpg', '246.00', '334.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('145', '蜜月旅行二人帐篷', '两人世界的快感', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe3.jpg', '../img/sports/shoe3.jpg', '666.00', '689.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('146', '超级无敌坚韧不拔跳绳', '运动健康五十年', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe4.jpg', '../img/sports/shoe4.jpg', '23.00', '50.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('147', '户外舒适长椅子', '就是那么爽', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe5.jpg', '../img/sports/shoe5.jpg', '223.00', '333.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('148', '超级无敌紧身运动长裤', '跑步超级舒适', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe6.jpg', '../img/sports/shoe6.jpg', '34.00', '45.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('149', '运动透气活力飞行鞋', '体验非一般的跑步快感', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe7.jpg', '../img/sports/shoe7.jpg', '123.00', '222.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('150', '普通青年运动超级非凡鞋子', '体验非一般的跑步快感', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe8.jpg', '../img/sports/shoe8.jpg', '124.00', '223.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('151', '风风火火超级飞行杰克天鞋', '体验非一般的跑步快感', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe9.jpg', '../img/sports/shoe9.jpg', '125.00', '224.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('152', '超级龙骑士鸭舌帽', '戴上去就是不一般', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe10.jpg', '../img/sports/shoe10.jpg', '34.00', '45.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('153', '超级炎龙鸭舌帽', '戴上去就是不一般', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe11.jpg', '../img/sports/shoe11.jpg', '35.00', '46.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('154', '男士倒三角紧身运动衣', '运动超级合适', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe12.jpg', '../img/sports/shoe12.jpg', '88.00', '102.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('155', '美丽女士比基尼', '让您迷倒所有人', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe13.jpg', '../img/sports/shoe13.jpg', '78.00', '89.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('156', '市内超级健身套装', '运动超级合适', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe14.jpg', '../img/sports/shoe14.jpg', '287.00', '333.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('157', '超级男士游泳短裤头', '运动超级合适', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe15.jpg', '../img/sports/shoe15.jpg', '33.00', '44.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('158', '无敌超级运动飞翔版', '体验非一般的跑步快感', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe1.jpg', '../img/sports/shoe1.jpg', '222.00', '254.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('159', '超级运动年轻活力邀月龙鞋', '体验非一般的跑步快感', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe2.jpg', '../img/sports/shoe2.jpg', '223.00', '256.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('160', '蜜月旅行二人帐篷', '两人世界的快感', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe3.jpg', '../img/sports/shoe3.jpg', '777.00', '789.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('161', '超级无敌坚韧不拔跳绳', '运动健康五十年', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe4.jpg', '../img/sports/shoe4.jpg', '13.00', '25.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('162', '风风火火超级飞行杰克天鞋', '体验非一般的跑步快感', 'sports', '壹万', '上海壹万', '', '', 'img/sports/shoe9.jpg', '../img/sports/shoe9.jpg', '235.00', '333.00', '0', '10002', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('163', '芳新金装家庭洁净液', '芳新金装家庭洁净液', 'makeup', '格林', '格林国际', 'img/index/make1.jpg', '', 'img/makeup/make11.jpg', '../img/makeup/make11.jpg', '334.00', '334.00', '0', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('164', '爱神菲锁水保湿面膜', '爱神菲锁水保湿面膜', 'makeup', '格林', '格林国际', 'img/index/make2.jpg', '', 'img/makeup/make12.jpg', '../img/makeup/make12.jpg', '335.00', '335.00', '0', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('165', '无硅油护发素', '无硅油护发素', 'makeup', '格林', '格林国际', 'img/index/make3.jpg', '', 'img/makeup/make13.jpg', '../img/makeup/make13.jpg', '336.00', '336.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('166', '韩国雪花秀玉面膜', '韩国雪花秀玉面膜', 'makeup', '壹万', '上海壹万', 'img/index/make4.jpg', '', 'img/makeup/make14.jpg', '../img/makeup/make14.jpg', '337.00', '337.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('167', '护肤精华露', '护肤精华露', 'makeup', '壹万', '上海壹万', 'img/index/make5.jpg', '', 'img/makeup/make15.jpg', '../img/makeup/make15.jpg', '338.00', '338.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('168', '蜂蜜洗面奶', '蜂蜜洗面奶', 'makeup', '壹万', '上海壹万', 'img/index/make6.jpg', '', 'img/makeup/make16.jpg', '../img/makeup/make16.jpg', '339.00', '339.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('169', '烈焰蓝金唇膏', '烈焰蓝金唇膏', 'makeup', '格林', '格林国际', 'img/index/make7.jpg', '', 'img/makeup/make17.jpg', '../img/makeup/make17.jpg', '340.00', '340.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('170', '城市丽人豪华粉底盒', '女人的神仙品', 'makeup', '格林', '格林国际', '', '', 'img/makeup/make1.jpg', '../img/makeup/make1.jpg', '555.00', '567.00', '0', '10003', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('171', '城市丽人超级有效卸妆水', '女人的神仙品', 'makeup', '格林', '格林国际', '', '', 'img/makeup/make2.jpg', '../img/makeup/make2.jpg', '888.00', '1000.00', '0', '10004', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('172', '超级男士无敌控油膏', '释放您的超级男人魅力', 'makeup', '格林', '格林国际', '', '', 'img/makeup/make3.jpg', '../img/makeup/make3.jpg', '889.00', '1001.00', '0', '10005', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('173', '深海超级精华面膜', '让你始终靓丽逼人', 'makeup', '格林', '格林国际', '', '', 'img/makeup/make4.jpg', '../img/makeup/make4.jpg', '890.00', '1002.00', '0', '10006', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('174', '终极无敌草本精华祛痘膏', '痘子去无踪', 'makeup', '格林', '格林国际', '', '', 'img/makeup/make5.jpg', '../img/makeup/make5.jpg', '891.00', '1003.00', '0', '10007', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('175', '美丽女性超级护肤神仙水', '女人的神仙品', 'makeup', '格林', '格林国际', '', '', 'img/makeup/make6.jpg', '../img/makeup/make6.jpg', '666.00', '765.00', '0', '10008', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('176', '宝贝精华润滑膏', '女人的神仙品', 'makeup', '格林', '格林国际', '', '', 'img/makeup/make7.jpg', '../img/makeup/make7.jpg', '667.00', '766.00', '0', '10009', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('177', '超级宝贝客户肥皂', '女人的神仙品', 'makeup', '壹万', '上海壹万', '', '', 'img/makeup/make8.jpg', '../img/makeup/make8.jpg', '567.00', '589.00', '0', '10010', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('178', '城市丽人玉兰油', '女人的神仙品', 'makeup', '壹万', '上海壹万', '', '', 'img/makeup/make9.jpg', '../img/makeup/make9.jpg', '568.00', '590.00', '0', '10011', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('179', '城市丽人风华精华修复乳', '女人的神仙品', 'makeup', '壹万', '上海壹万', '', '', 'img/makeup/make10.jpg', '../img/makeup/make10.jpg', '569.00', '591.00', '0', '10012', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('180', '城市丽人豪华粉底盒', '女人的神仙品', 'makeup', '格林', '格林国际', '', '', 'img/makeup/make1.jpg', '../img/makeup/make1.jpg', '570.00', '592.00', '0', '10003', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('181', '城市丽人超级有效卸妆水', '女人的神仙品', 'makeup', '格林', '格林国际', '', '', 'img/makeup/make2.jpg', '../img/makeup/make2.jpg', '571.00', '593.00', '0', '10004', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('182', '超级男士无敌控油膏', '释放您的超级男人魅力', 'makeup', '格林', '格林国际', '', '', 'img/makeup/make3.jpg', '../img/makeup/make3.jpg', '572.00', '594.00', '0', '10005', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('183', '深海超级精华面膜', '让你始终靓丽逼人', 'makeup', '格林', '格林国际', '', '', 'img/makeup/make4.jpg', '../img/makeup/make4.jpg', '573.00', '595.00', '0', '10006', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('184', '终极无敌草本精华祛痘膏', '痘子去无踪', 'makeup', '格林', '格林国际', '', '', 'img/makeup/make5.jpg', '../img/makeup/make5.jpg', '574.00', '596.00', '0', '10007', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('185', '美丽女性超级护肤神仙水', '女人的神仙品', 'makeup', '格林', '格林国际', '', '', 'img/makeup/make6.jpg', '../img/makeup/make6.jpg', '736.00', '987.00', '0', '10008', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('186', '宝贝精华润滑膏', '女人的神仙品', 'makeup', '格林', '格林国际', '', '', 'img/makeup/make7.jpg', '../img/makeup/make7.jpg', '737.00', '988.00', '0', '10009', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('187', '超级宝贝客户肥皂', '女人的神仙品', 'makeup', '壹万', '上海壹万', '', '', 'img/makeup/make8.jpg', '../img/makeup/make8.jpg', '738.00', '989.00', '0', '10010', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('188', '城市丽人玉兰油', '女人的神仙品', 'makeup', '壹万', '上海壹万', '', '', 'img/makeup/make9.jpg', '../img/makeup/make9.jpg', '739.00', '990.00', '0', '10011', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('189', '城市丽人风华精华修复乳', '女人的神仙品', 'makeup', '壹万', '上海壹万', '', '', 'img/makeup/make10.jpg', '../img/makeup/make10.jpg', '740.00', '991.00', '0', '10012', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('190', '城市丽人豪华粉底盒', '女人的神仙品', 'makeup', '格林', '格林国际', '', '', 'img/makeup/make1.jpg', '../img/makeup/make1.jpg', '741.00', '992.00', '0', '10003', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('191', '城市丽人超级有效卸妆水', '女人的神仙品', 'makeup', '格林', '格林国际', '', '', 'img/makeup/make2.jpg', '../img/makeup/make2.jpg', '742.00', '993.00', '0', '10004', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('192', '超级男士无敌控油膏', '释放您的超级男人魅力', 'makeup', '格林', '格林国际', '', '', 'img/makeup/make3.jpg', '../img/makeup/make3.jpg', '743.00', '994.00', '0', '10005', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('193', '深海超级精华面膜', '让你始终靓丽逼人', 'makeup', '格林', '格林国际', '', '', 'img/makeup/make4.jpg', '../img/makeup/make4.jpg', '744.00', '995.00', '0', '10006', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('194', '终极无敌草本精华祛痘膏', '痘子去无踪', 'makeup', '格林', '格林国际', '', '', 'img/makeup/make5.jpg', '../img/makeup/make5.jpg', '745.00', '996.00', '0', '10007', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('195', '美丽女性超级护肤神仙水', '女人的神仙品', 'makeup', '格林', '格林国际', '', '', 'img/makeup/make6.jpg', '../img/makeup/make6.jpg', '746.00', '997.00', '0', '10008', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('196', '宝贝精华润滑膏', '女人的神仙品', 'makeup', '格林', '格林国际', '', '', 'img/makeup/make7.jpg', '../img/makeup/make7.jpg', '747.00', '998.00', '0', '10009', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('197', '超级宝贝客户肥皂', '女人的神仙品', 'makeup', '壹万', '上海壹万', '', '', 'img/makeup/make8.jpg', '../img/makeup/make8.jpg', '748.00', '999.00', '0', '10010', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('198', '城市丽人玉兰油', '女人的神仙品', 'makeup', '壹万', '上海壹万', '', '', 'img/makeup/make9.jpg', '../img/makeup/make9.jpg', '749.00', '854.00', '0', '10011', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('199', '终极无敌草本精华祛痘膏', '痘子去无踪', 'makeup', '格林', '格林国际', '', '', 'img/makeup/make5.jpg', '../img/makeup/make5.jpg', '750.00', '855.00', '0', '10007', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('200', '非常有才多重家用毛巾', '一家人最重要是齐齐整整', 'home', 't-house', 't-house', '', '', 'img/home/home1.jpg', '../img/home/home1.jpg', '12.00', '22.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('201', '乐享美的枕头', '一家人最重要是齐齐整整', 'home', 't-house', 't-house', '', '', 'img/home/home2.jpg', '../img/home/home2.jpg', '77.00', '88.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('202', '懒觉必备超级舒畅护颈枕头', '一家人最重要是齐齐整整', 'home', 't-house', 't-house', '', '', 'img/home/home3.jpg', '../img/home/home3.jpg', '78.00', '89.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('203', '巨龙吉祥床上九件套', '一家人最重要是齐齐整整', 'home', '素梅良', '素梅良', '', '', 'img/home/home4.jpg', '../img/home/home4.jpg', '1234.00', '1456.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('204', '完美主义无敌床上九件套', '一家人最重要是齐齐整整', 'home', '素梅良', '素梅良', '', '', 'img/home/home5.jpg', '../img/home/home5.jpg', '1743.00', '1800.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('205', '灯火幽灵床头灯', '一家人最重要是齐齐整整', 'home', '素梅良', '素梅良', '', '', 'img/home/home6.jpg', '../img/home/home6.jpg', '675.00', '777.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('206', '爱奇如梦超级床上九件套', '一家人最重要是齐齐整整', 'home', '素梅良', '素梅良', '', '', 'img/home/home7.jpg', '../img/home/home7.jpg', '2334.00', '2334.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('207', '舒畅无比的坐垫', '一家人最重要是齐齐整整', 'home', 't-house', 't-house', '', '', 'img/home/home8.jpg', '../img/home/home8.jpg', '64.00', '75.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('208', '加长版瑜伽地垫', '一家人最重要是齐齐整整', 'home', 't-house', 't-house', '', '', 'img/home/home9.jpg', '../img/home/home9.jpg', '65.00', '76.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('209', '黑金特别注意基隆床上九件套', '一家人最重要是齐齐整整', 'home', '素梅良', '素梅良', '', '', 'img/home/home10.jpg', '../img/home/home10.jpg', '1865.00', '1865.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('210', '非常有才多重家用毛巾', '一家人最重要是齐齐整整', 'home', 't-house', 't-house', '', '', 'img/home/home1.jpg', '../img/home/home1.jpg', '12.00', '22.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('211', '乐享美的枕头', '一家人最重要是齐齐整整', 'home', 't-house', 't-house', '', '', 'img/home/home2.jpg', '../img/home/home2.jpg', '77.00', '88.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('212', '懒觉必备超级舒畅护颈枕头', '一家人最重要是齐齐整整', 'home', 't-house', 't-house', '', '', 'img/home/home3.jpg', '../img/home/home3.jpg', '78.00', '89.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('213', '巨龙吉祥床上九件套', '一家人最重要是齐齐整整', 'home', '素梅良', '素梅良', '', '', 'img/home/home4.jpg', '../img/home/home4.jpg', '1234.00', '1456.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('214', '完美主义无敌床上九件套', '一家人最重要是齐齐整整', 'home', '素梅良', '素梅良', '', '', 'img/home/home5.jpg', '../img/home/home5.jpg', '1743.00', '1800.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('215', '灯火幽灵床头灯', '一家人最重要是齐齐整整', 'home', '素梅良', '素梅良', '', '', 'img/home/home6.jpg', '../img/home/home6.jpg', '675.00', '777.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('216', '爱奇如梦超级床上九件套', '一家人最重要是齐齐整整', 'home', '素梅良', '素梅良', '', '', 'img/home/home7.jpg', '../img/home/home7.jpg', '2334.00', '2334.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('217', '舒畅无比的坐垫', '一家人最重要是齐齐整整', 'home', 't-house', 't-house', '', '', 'img/home/home8.jpg', '../img/home/home8.jpg', '64.00', '75.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('218', '加长版瑜伽地垫', '一家人最重要是齐齐整整', 'home', 't-house', 't-house', '', '', 'img/home/home9.jpg', '../img/home/home9.jpg', '65.00', '76.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('219', '黑金特别注意基隆床上九件套', '一家人最重要是齐齐整整', 'home', '素梅良', '素梅良', '', '', 'img/home/home10.jpg', '../img/home/home10.jpg', '1865.00', '1865.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('220', '非常有才多重家用毛巾', '一家人最重要是齐齐整整', 'home', 't-house', 't-house', '', '', 'img/home/home1.jpg', '../img/home/home1.jpg', '12.00', '22.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('221', '乐享美的枕头', '一家人最重要是齐齐整整', 'home', 't-house', 't-house', '', '', 'img/home/home2.jpg', '../img/home/home2.jpg', '77.00', '88.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('222', '懒觉必备超级舒畅护颈枕头', '一家人最重要是齐齐整整', 'home', 't-house', 't-house', '', '', 'img/home/home3.jpg', '../img/home/home3.jpg', '78.00', '89.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('223', '巨龙吉祥床上九件套', '一家人最重要是齐齐整整', 'home', '素梅良', '素梅良', '', '', 'img/home/home4.jpg', '../img/home/home4.jpg', '1234.00', '1456.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('224', '完美主义无敌床上九件套', '一家人最重要是齐齐整整', 'home', '素梅良', '素梅良', '', '', 'img/home/home5.jpg', '../img/home/home5.jpg', '1743.00', '1800.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('225', '灯火幽灵床头灯', '一家人最重要是齐齐整整', 'home', '素梅良', '素梅良', '', '', 'img/home/home6.jpg', '../img/home/home6.jpg', '675.00', '777.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('226', '爱奇如梦超级床上九件套', '一家人最重要是齐齐整整', 'home', '素梅良', '素梅良', '', '', 'img/home/home7.jpg', '../img/home/home7.jpg', '2334.00', '2334.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('227', '舒畅无比的坐垫', '一家人最重要是齐齐整整', 'home', 't-house', 't-house', '', '', 'img/home/home8.jpg', '../img/home/home8.jpg', '64.00', '75.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('228', '加长版瑜伽地垫', '一家人最重要是齐齐整整', 'home', 't-house', 't-house', '', '', 'img/home/home9.jpg', '../img/home/home9.jpg', '65.00', '76.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('229', '黑金特别注意基隆床上九件套', '一家人最重要是齐齐整整', 'home', '素梅良', '素梅良', '', '', 'img/home/home10.jpg', '../img/home/home10.jpg', '1865.00', '1865.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('230', '非常有才多重家用毛巾', '一家人最重要是齐齐整整', 'home', 't-house', 't-house', '', '', 'img/home/home1.jpg', '../img/home/home1.jpg', '12.00', '22.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('231', '乐享美的枕头', '一家人最重要是齐齐整整', 'home', 't-house', 't-house', '', '', 'img/home/home2.jpg', '../img/home/home2.jpg', '77.00', '88.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('232', '懒觉必备超级舒畅护颈枕头', '一家人最重要是齐齐整整', 'home', 't-house', 't-house', '', '', 'img/home/home3.jpg', '../img/home/home3.jpg', '78.00', '89.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('233', '巨龙吉祥床上九件套', '一家人最重要是齐齐整整', 'home', '素梅良', '素梅良', '', '', 'img/home/home4.jpg', '../img/home/home4.jpg', '1234.00', '1456.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('234', '完美主义无敌床上九件套', '一家人最重要是齐齐整整', 'home', '素梅良', '素梅良', '', '', 'img/home/home5.jpg', '../img/home/home5.jpg', '1743.00', '1800.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('235', '灯火幽灵床头灯', '一家人最重要是齐齐整整', 'home', '素梅良', '素梅良', '', '', 'img/home/home6.jpg', '../img/home/home6.jpg', '675.00', '777.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('236', '爱奇如梦超级床上九件套', '一家人最重要是齐齐整整', 'home', '素梅良', '素梅良', '', '', 'img/home/home7.jpg', '../img/home/home7.jpg', '2334.00', '2334.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('237', '舒畅无比的坐垫', '一家人最重要是齐齐整整', 'home', 't-house', 't-house', '', '', 'img/home/home8.jpg', '../img/home/home8.jpg', '64.00', '75.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('238', '加长版瑜伽地垫', '一家人最重要是齐齐整整', 'home', 't-house', 't-house', '', '', 'img/home/home9.jpg', '../img/home/home9.jpg', '65.00', '76.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('239', '黑金特别注意基隆床上九件套', '一家人最重要是齐齐整整', 'home', '素梅良', '素梅良', '', '', 'img/home/home10.jpg', '../img/home/home10.jpg', '1865.00', '1865.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('240', '飞利浦行车记录仪', '让您的爱车备受呵护', 'car', '飞利浦', '飞利浦', '', '', 'img/car/car1.jpg', '../img/car/car1.jpg', '1234.00', '1234.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('241', '飞利浦车载摄影仪', '让您的爱车备受呵护', 'car', '飞利浦', '飞利浦', '', '', 'img/car/car2.jpg', '../img/car/car2.jpg', '2345.00', '2345.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('242', '飞利浦车头刷', '让您的爱车备受呵护', 'car', '飞利浦', '飞利浦', '', '', 'img/car/car3.jpg', '../img/car/car3.jpg', '14.00', '14.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('243', '飞利浦车头帖', '让您的爱车备受呵护', 'car', '飞利浦', '飞利浦', '', '', 'img/car/car4.jpg', '../img/car/car4.jpg', '22.00', '22.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('244', '飞利浦照明仪', '让您的爱车备受呵护', 'car', '飞利浦', '飞利浦', '', '', 'img/car/car5.jpg', '../img/car/car5.jpg', '789.00', '789.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('245', '飞利浦车头电', '让您的爱车备受呵护', 'car', '飞利浦', '飞利浦', '', '', 'img/car/car6.jpg', '../img/car/car6.jpg', '777.00', '777.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('246', '飞利浦座椅头枕', '让您的爱车备受呵护', 'car', '飞利浦', '飞利浦', '', '', 'img/car/car7.jpg', '../img/car/car7.jpg', '222.00', '222.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('247', '飞利浦超级雨刷', '让您的爱车备受呵护', 'car', '飞利浦', '飞利浦', '', '', 'img/car/car8.jpg', '../img/car/car8.jpg', '24.00', '24.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('248', '超级无敌炒锅', '一口好锅满足厨神心', 'dairy', '易顺', '易顺', 'img/index/day1.jpg', '', 'img/dairy/day11.jpg', '../img/dairy/day11.jpg', '87.00', '92.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('249', '大象保温不倒杯', '大象保温不倒杯', 'dairy', '易顺', '易顺', 'img/index/day2.jpg', '', 'img/dairy/day12.jpg', '../img/dairy/day12.jpg', '88.00', '93.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('250', '妮飘黝黑抽纸', '妮飘黝黑抽纸', 'dairy', '易顺', '易顺', 'img/index/day3.jpg', '', 'img/dairy/day13.jpg', '../img/dairy/day13.jpg', '89.00', '94.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('251', '三只蚂蚁洗菜两件套', '三只蚂蚁洗菜两件套', 'dairy', '易顺', '易顺', 'img/index/day4.jpg', '', 'img/dairy/day14.jpg', '../img/dairy/day14.jpg', '90.00', '95.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('252', '双一花袖手套', '双一花袖手套', 'dairy', '易顺', '易顺', 'img/index/day5.jpg', '', 'img/dairy/day15.jpg', '../img/dairy/day15.jpg', '91.00', '96.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('253', '多情玫瑰洗衣液', '多情玫瑰洗衣液', 'dairy', '易顺', '易顺', 'img/index/day6.jpg', '', 'img/dairy/day16.jpg', '../img/dairy/day16.jpg', '92.00', '97.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('254', '禅系列线香礼盒', '禅系列线香礼盒', 'dairy', '易顺', '易顺', 'img/index/day7.jpg', '', 'img/dairy/day17.jpg', '../img/dairy/day17.jpg', '93.00', '98.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('255', '超级无敌水果篮子', '让生活变得如此美好', 'dairy', '易顺', '易顺', '', '', 'img/dairy/day1.jpg', '../img/dairy/day1.jpg', '35.00', '44.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('256', '春田花花马克杯', '让生活变得如此美好', 'dairy', '易顺', '易顺', '', '', 'img/dairy/day2.jpg', '../img/dairy/day2.jpg', '36.00', '45.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('257', '超级大容量水壶', '让生活变得如此美好', 'dairy', '易顺', '易顺', '', '', 'img/dairy/day3.jpg', '../img/dairy/day3.jpg', '37.00', '46.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('258', '航华艺术超级马克杯', '让生活变得如此美好', 'dairy', '易顺', '易顺', '', '', 'img/dairy/day4.jpg', '../img/dairy/day4.jpg', '45.00', '55.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('259', '家用卫生口罩', '让生活变得如此美好', 'dairy', '易顺', '易顺', '', '', 'img/dairy/day5.jpg', '../img/dairy/day5.jpg', '46.00', '56.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('260', '智能无敌超级电动驱蚊器', '让生活变得如此美好', 'dairy', '易顺', '易顺', '', '', 'img/dairy/day6.jpg', '../img/dairy/day6.jpg', '47.00', '57.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('261', '外出家用超大容量热水壶', '让生活变得如此美好', 'dairy', '易顺', '易顺', '', '', 'img/dairy/day7.jpg', '../img/dairy/day7.jpg', '48.00', '58.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('262', '华润心田马克杯', '让生活变得如此美好', 'dairy', '易顺', '易顺', '', '', 'img/dairy/day8.jpg', '../img/dairy/day8.jpg', '42.00', '59.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('263', '七彩斑斓都市丽人暖水壶', '让生活变得如此美好', 'dairy', '易顺', '易顺', '', '', 'img/dairy/day9.jpg', '../img/dairy/day9.jpg', '43.00', '60.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('264', '真空保鲜盒', '让生活变得如此美好', 'dairy', '易顺', '易顺', '', '', 'img/dairy/day10.jpg', '../img/dairy/day10.jpg', '44.00', '53.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('265', '天然椰棕婴儿床', '天然椰棕婴儿床', 'baby', '如此生活', '如此生活', 'img/index/baby1.jpg', '', 'img/baby/baby11.jpg', '../img/baby/baby11.jpg', '234.00', '234.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('266', '儿童学习桌椅', '儿童学习桌椅', 'baby', '如此生活', '如此生活', 'img/index/baby2.jpg', '', 'img/baby/baby12.jpg', '../img/baby/baby12.jpg', '235.00', '235.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('267', '湿纸巾三联装', '湿纸巾三联装', 'baby', '如此生活', '如此生活', 'img/index/baby3.jpg', '', 'img/baby/baby13.jpg', '../img/baby/baby13.jpg', '236.00', '236.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('268', '宽口玻璃奶瓶', '宽口玻璃奶瓶', 'baby', '如此生活', '如此生活', 'img/index/baby4.jpg', '', 'img/baby/baby16.jpg', '../img/baby/baby16.jpg', '237.00', '237.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('269', '多功能婴儿餐桌', '多功能婴儿餐桌', 'baby', '如此生活', '如此生活', 'img/index/baby5.jpg', '', 'img/baby/baby17.jpg', '../img/baby/baby17.jpg', '238.00', '238.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('270', '笑吧喜婴儿薄被', '笑吧喜婴儿薄被', 'baby', '如此生活', '如此生活', 'img/index/baby6.jpg', '', 'img/baby/baby14.jpg', '../img/baby/baby14.jpg', '239.00', '239.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('271', '金贝柔尿不湿', '金贝柔尿不湿', 'baby', '如此生活', '如此生活', 'img/index/baby7.jpg', '', 'img/baby/baby15.jpg', '../img/baby/baby15.jpg', '240.00', '240.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('272', '宝贝可爱水温计', '倾情守护祖国未来的花朵', 'baby', '如此生活', '如此生活', '', '', 'img/baby/baby1.jpg', '../img/baby/baby1.jpg', '45.00', '55.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('273', '贝贝棉柔呵护湿纸巾', '倾情守护祖国未来的花朵', 'baby', '如此生活', '如此生活', '', '', 'img/baby/baby2.jpg', '../img/baby/baby2.jpg', '46.00', '56.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('274', '宝贝学习音标表', '倾情守护祖国未来的花朵', 'baby', '如此生活', '如此生活', '', '', 'img/baby/baby3.jpg', '../img/baby/baby3.jpg', '47.00', '57.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('275', '宝贝睡衣', '倾情守护祖国未来的花朵', 'baby', '如此生活', '如此生活', '', '', 'img/baby/baby4.jpg', '../img/baby/baby4.jpg', '62.00', '67.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('276', '强健体魄快高长大奶粉', '倾情守护祖国未来的花朵', 'baby', '如此生活', '如此生活', '', '', 'img/baby/baby5.jpg', '../img/baby/baby5.jpg', '63.00', '68.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('277', '快乐宝贝纸尿裤', '倾情守护祖国未来的花朵', 'baby', '如此生活', '如此生活', '', '', 'img/baby/baby6.jpg', '../img/baby/baby6.jpg', '64.00', '69.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('278', '超级耐久奶瓶', '倾情守护祖国未来的花朵', 'baby', '易顺', '易顺', '', '', 'img/baby/baby7.jpg', '../img/baby/baby7.jpg', '24.00', '43.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('279', '天天宝贝奶嘴', '倾情守护祖国未来的花朵', 'baby', '易顺', '易顺', '', '', 'img/baby/baby8.jpg', '../img/baby/baby8.jpg', '25.00', '44.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('280', '究极无敌奶瓶刷', '倾情守护祖国未来的花朵', 'baby', '易顺', '易顺', '', '', 'img/baby/baby9.jpg', '../img/baby/baby9.jpg', '26.00', '45.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('281', '坚韧不拔背背绳子', '倾情守护祖国未来的花朵', 'baby', '易顺', '易顺', '', '', 'img/baby/baby10.jpg', '../img/baby/baby10.jpg', '27.00', '46.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('282', '员木山茶油', '员木山茶油', 'food', '素梅良', '素梅良', 'img/index/food1.jpg', '', 'img/food/food21.jpg', '../img/food/food21.jpg', '55.00', '57.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('283', '樱泉天然山泉水', '樱泉天然山泉水', 'food', '素梅良', '素梅良', 'img/index/food2.jpg', '', 'img/food/food22.jpg', '../img/food/food22.jpg', '56.00', '58.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('284', '远东食号有机绿豆', '远东食号有机绿豆', 'food', '素梅良', '素梅良', 'img/index/food3.jpg', '', 'img/food/food23.jpg', '../img/food/food23.jpg', '57.00', '59.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('285', '三中稻香压榨菜籽油', '三中稻香压榨菜籽油', 'food', '素梅良', '素梅良', 'img/index/food4.jpg', '', 'img/food/food24.jpg', '../img/food/food24.jpg', '58.00', '60.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('286', '森蜂园洋槐蜂蜜', '森蜂园洋槐蜂蜜', 'food', 't-house', 't-house', 'img/index/food5.jpg', '', 'img/food/food25.jpg', '../img/food/food25.jpg', '59.00', '61.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('287', '卡普奇诺灰皮诺斯', '卡普奇诺灰皮诺斯', 'food', 't-house', 't-house', 'img/index/food6.jpg', '', 'img/food/food26.jpg', '../img/food/food26.jpg', '60.00', '62.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('288', '蓝莓利口酒', '蓝莓利口酒', 'food', '素梅良', '素梅良', 'img/index/food7.jpg', '', 'img/food/food27.jpg', '../img/food/food27.jpg', '61.00', '63.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('289', '昌吉无敌皮皮酒', '吃好睡好才能身体棒棒的', 'food', '素梅良', '素梅良', '', '', 'img/food/food1.jpg', '../img/food/food1.jpg', '65.00', '68.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('290', '敞口垭康培怒', '吃好睡好才能身体棒棒的', 'food', '素梅良', '素梅良', '', '', 'img/food/food2.jpg', '../img/food/food2.jpg', '66.00', '69.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('291', '杰斯卡黑金裴诺', '吃好睡好才能身体棒棒的', 'food', '素梅良', '素梅良', '', '', 'img/food/food3.jpg', '../img/food/food3.jpg', '67.00', '70.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('292', '长城特曲', '吃好睡好才能身体棒棒的', 'food', '素梅良', '素梅良', '', '', 'img/food/food4.jpg', '../img/food/food4.jpg', '68.00', '71.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('293', '究极飞翔培优烈酒', '吃好睡好才能身体棒棒的', 'food', 't-house', 't-house', '', '', 'img/food/food5.jpg', '../img/food/food5.jpg', '74.00', '72.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('294', '三文鱼究极生鲜鱼生', '吃好睡好才能身体棒棒的', 'food', 't-house', 't-house', '', '', 'img/food/food6.jpg', '../img/food/food6.jpg', '75.00', '73.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('295', '叁生友食冷冻速食大包', '吃好睡好才能身体棒棒的', 'food', '素梅良', '素梅良', '', '', 'img/food/food7.jpg', '../img/food/food7.jpg', '76.00', '88.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('296', '桑生态有机沙拉套装', '吃好睡好才能身体棒棒的', 'food', '素梅良', '素梅良', '', '', 'img/food/food8.jpg', '../img/food/food8.jpg', '77.00', '89.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('297', '无敌好奇土豆泥', '吃好睡好才能身体棒棒的', 'food', '素梅良', '素梅良', '', '', 'img/food/food9.jpg', '../img/food/food9.jpg', '78.00', '90.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('298', '银鹭无敌花生优乳礼包', '吃好睡好才能身体棒棒的', 'food', '素梅良', '素梅良', '', '', 'img/food/food10.jpg', '../img/food/food10.jpg', '79.00', '91.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('299', '天天爱上红豆泥', '吃好睡好才能身体棒棒的', 'food', 't-house', 't-house', '', '', 'img/food/food11.jpg', '../img/food/food11.jpg', '86.00', '92.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('300', '超级无敌聚会方便究极面', '吃好睡好才能身体棒棒的', 'food', 't-house', 't-house', '', '', 'img/food/food12.jpg', '../img/food/food12.jpg', '87.00', '93.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('301', '就是好吃大煎饼', '吃好睡好才能身体棒棒的', 'food', '素梅良', '素梅良', '', '', 'img/food/food13.jpg', '../img/food/food13.jpg', '88.00', '94.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('302', '无敌盐焗土鸡蛋', '吃好睡好才能身体棒棒的', 'food', '素梅良', '素梅良', '', '', 'img/food/food14.jpg', '../img/food/food14.jpg', '89.00', '95.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('303', '奶酪无敌深山大礼盒', '吃好睡好才能身体棒棒的', 'food', '素梅良', '素梅良', '', '', 'img/food/food15.jpg', '../img/food/food15.jpg', '90.00', '96.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('304', '小混沌到几把方便面', '吃好睡好才能身体棒棒的', 'food', '素梅良', '素梅良', '', '', 'img/food/food16.jpg', '../img/food/food16.jpg', '91.00', '97.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('305', '牛奶软松饼', '吃好睡好才能身体棒棒的', 'food', 't-house', 't-house', '', '', 'img/food/food17.jpg', '../img/food/food17.jpg', '92.00', '98.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('306', 'hello Kitty 超级饼干', '吃好睡好才能身体棒棒的', 'food', 't-house', 't-house', '', '', 'img/food/food18.jpg', '../img/food/food18.jpg', '93.00', '99.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('307', '巨辣无敌口水鱼套装', '吃好睡好才能身体棒棒的', 'food', 't-house', 't-house', '', '', 'img/food/food19.jpg', '../img/food/food19.jpg', '94.00', '100.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('308', '东北原生超级变种大米', '吃好睡好才能身体棒棒的', 'food', 't-house', 't-house', '', '', 'img/food/food20.jpg', '../img/food/food20.jpg', '95.00', '101.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('309', '卡布奇诺老人机', '卡布奇诺老人机', 'phone', '如此生活', '如此生活', 'img/index/phone1.jpg', '', 'img/phone/phone16.jpg', '../img/phone/phone16.jpg', '235.00', '235.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('310', '蒙奇移动电源', '蒙奇移动电源', 'phone', '如此生活', '如此生活', 'img/index/phone2.jpg', '', 'img/phone/phone17.jpg', '../img/phone/phone17.jpg', '236.00', '236.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('311', '滚轮按摩足浴盆', '滚轮按摩足浴盆', 'phone', '如此生活', '如此生活', 'img/index/phone3.jpg', '', 'img/phone/phone18.jpg', '../img/phone/phone18.jpg', '237.00', '237.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('312', '科索沃金扫地机', '科索沃金扫地机', 'phone', '如此生活', '如此生活', 'img/index/phone4.jpg', '', 'img/phone/phone19.jpg', '../img/phone/phone19.jpg', '238.00', '238.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('313', '无叶风扇加湿器', '无叶风扇加湿器', 'phone', '如此生活', '如此生活', 'img/index/phone5.jpg', '', 'img/phone/phone20.jpg', '../img/phone/phone20.jpg', '239.00', '239.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('314', '迷你桌面音响', '迷你桌面音响', 'phone', '如此生活', '如此生活', 'img/index/phone6.jpg', '', 'img/phone/phone21.jpg', '../img/phone/phone21.jpg', '240.00', '240.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('315', '海尔智能洗衣机', '海尔智能洗衣机', 'phone', '如此生活', '如此生活', 'img/index/phone7.jpg', '', 'img/phone/phone22.jpg', '../img/phone/phone22.jpg', '241.00', '241.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('316', '智能手环', '让人工智障走进你的生活', 'phone', '如此生活', '如此生活', '', '', 'img/phone/phone1.jpg', '../img/phone/phone1.jpg', '2345.00', '2345.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('317', '超级无敌高音耳机', '高清音质你我共享', 'phone', '如此生活', '如此生活', '', '', 'img/phone/phone2.jpg', '../img/phone/phone2.jpg', '2346.00', '2346.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('318', '金立智能手机wer-3', '智能生活从此开启', 'phone', '如此生活', '如此生活', '', '', 'img/phone/phone3.jpg', '../img/phone/phone3.jpg', '2347.00', '2347.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('319', '超级急速霹雳平板', '智能生活从此开启', 'phone', '如此生活', '如此生活', '', '', 'img/phone/phone4.jpg', '../img/phone/phone4.jpg', '2348.00', '2348.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('320', '华为超级手机ehv-5', '智能生活从此开启', 'phone', '如此生活', '如此生活', '', '', 'img/phone/phone5.jpg', '../img/phone/phone5.jpg', '2349.00', '2349.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('321', '高清优秀极限五指多用显示屏', '智能生活从此开启', 'phone', '如此生活', '如此生活', '', '', 'img/phone/phone6.jpg', '../img/phone/phone6.jpg', '3458.00', '3567.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('322', '酷派究极无敌手机yujn-2', '智能生活从此开启', 'phone', '如此生活', '如此生活', '', '', 'img/phone/phone7.jpg', '../img/phone/phone7.jpg', '3459.00', '3568.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('323', '万年不动究极精致手表', '智能生活从此开启', 'phone', '如此生活', '如此生活', '', '', 'img/phone/phone8.jpg', '../img/phone/phone8.jpg', '3460.00', '3569.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('324', '华为爱康uio-3', '智能生活从此开启', 'phone', '如此生活', '如此生活', '', '', 'img/phone/phone9.jpg', '../img/phone/phone9.jpg', '3461.00', '3570.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('325', 'OPPO超级无线可能手机', '智能生活从此开启', 'phone', '如此生活', '如此生活', '', '', 'img/phone/phone10.jpg', '../img/phone/phone10.jpg', '3462.00', '3571.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('326', '手机充电器', '智能生活从此开启', 'phone', '如此生活', '如此生活', '', '', 'img/phone/phone11.jpg', '../img/phone/phone11.jpg', '3463.00', '3572.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('327', '手机究极音响', '智能生活从此开启', 'phone', '如此生活', '如此生活', '', '', 'img/phone/phone12.jpg', '../img/phone/phone12.jpg', '3464.00', '3573.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('328', '超级无敌平板电脑', '智能生活从此开启', 'phone', '如此生活', '如此生活', '', '', 'img/phone/phone13.jpg', '../img/phone/phone13.jpg', '3465.00', '3574.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('329', '环宇走立体音响', '智能生活从此开启', 'phone', '如此生活', '如此生活', '', '', 'img/phone/phone14.jpg', '../img/phone/phone14.jpg', '2358.00', '2358.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('330', '爱疯差究极手机', '智能生活从此开启', 'phone', '如此生活', '如此生活', '', '', 'img/phone/phone15.jpg', '../img/phone/phone15.jpg', '2359.00', '2359.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('331', '超级无敌微波炉', '让生活充满惊喜', 'elec', '如此生活', '如此生活', '', '', 'img/elec/elec1.jpg', '../img/elec/elec1.jpg', '786.00', '786.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('332', '光棍无敌电动剃须刀', '让生活充满惊喜', 'elec', '如此生活', '如此生活', '', '', 'img/elec/elec2.jpg', '../img/elec/elec2.jpg', '787.00', '787.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('333', '环宇国际电冰箱', '让生活充满惊喜', 'elec', '如此生活', '如此生活', '', '', 'img/elec/elec3.jpg', '../img/elec/elec3.jpg', '788.00', '788.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('334', '电动制动净水器', '让生活充满惊喜', 'elec', '如此生活', '如此生活', '', '', 'img/elec/elec4.jpg', '../img/elec/elec4.jpg', '789.00', '789.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('335', '舒心无比自动小脚按摩机', '让生活充满惊喜', 'elec', '如此生活', '如此生活', '', '', 'img/elec/elec5.jpg', '../img/elec/elec5.jpg', '790.00', '790.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('336', '豪华无比霹雳电动按摩椅', '让生活充满惊喜', 'elec', '如此生活', '如此生活', '', '', 'img/elec/elec6.jpg', '../img/elec/elec6.jpg', '791.00', '791.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('337', '天天向上超级洗衣机', '让生活充满惊喜', 'elec', '如此生活', '如此生活', '', '', 'img/elec/elec7.jpg', '../img/elec/elec7.jpg', '543.00', '567.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('338', '寒冬凛冽超级加热器', '让生活充满惊喜', 'elec', '如此生活', '如此生活', '', '', 'img/elec/elec8.jpg', '../img/elec/elec8.jpg', '544.00', '568.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('339', '海尔超级长型电冰箱', '让生活充满惊喜', 'elec', '如此生活', '如此生活', '', '', 'img/elec/elec9.jpg', '../img/elec/elec9.jpg', '545.00', '569.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');
INSERT INTO `soolifegoodsdata` VALUES ('340', '热爱生活超级电熨斗', '让生活充满惊喜', 'elec', '如此生活', '如此生活', '', '', 'img/elec/elec10.jpg', '../img/elec/elec10.jpg', '546.00', '570.00', '1', '', '', '', '', '', '2018-02-09 09:41:47');

-- ----------------------------
-- Table structure for soolifeuserdata
-- ----------------------------
DROP TABLE IF EXISTS `soolifeuserdata`;
CREATE TABLE `soolifeuserdata` (
  `userid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `regtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `city` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `birthday` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `marriage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of soolifeuserdata
-- ----------------------------
INSERT INTO `soolifeuserdata` VALUES ('1', '13631493351', '318c5274e6716e141dd54e10af813b4d', '2018-02-08 18:02:37', null, null, null, null, null, null, null, null);
INSERT INTO `soolifeuserdata` VALUES ('2', '13544975962', 'e10adc3949ba59abbe56e057f20f883e', '2018-02-08 18:41:41', null, null, null, null, null, null, null, null);
INSERT INTO `soolifeuserdata` VALUES ('3', '13834567834', 'e10adc3949ba59abbe56e057f20f883e', '2018-02-08 18:42:39', null, null, null, null, null, null, null, null);
INSERT INTO `soolifeuserdata` VALUES ('4', '18665008004', 'e10adc3949ba59abbe56e057f20f883e', '2018-02-08 18:43:26', null, null, null, null, null, null, null, null);
INSERT INTO `soolifeuserdata` VALUES ('5', '18588840772', 'e10adc3949ba59abbe56e057f20f883e', '2018-02-08 18:43:54', null, null, null, null, null, null, null, null);
INSERT INTO `soolifeuserdata` VALUES ('6', '18620548204', 'e10adc3949ba59abbe56e057f20f883e', '2018-02-08 18:44:26', null, null, null, null, null, null, null, null);
INSERT INTO `soolifeuserdata` VALUES ('7', '18620546470', 'e10adc3949ba59abbe56e057f20f883e', '2018-02-08 18:45:12', null, null, null, null, null, null, null, null);
INSERT INTO `soolifeuserdata` VALUES ('8', '17067626909', 'e10adc3949ba59abbe56e057f20f883e', '2018-02-08 18:45:50', null, null, null, null, null, null, null, null);
INSERT INTO `soolifeuserdata` VALUES ('9', '18565367755', 'e10adc3949ba59abbe56e057f20f883e', '2018-02-08 18:46:14', null, null, null, null, null, null, null, null);
INSERT INTO `soolifeuserdata` VALUES ('10', '15952497904', 'e10adc3949ba59abbe56e057f20f883e', '2018-02-08 18:46:42', null, null, null, null, null, null, null, null);
INSERT INTO `soolifeuserdata` VALUES ('11', '13902588082', 'e10adc3949ba59abbe56e057f20f883e', '2018-02-08 18:47:08', null, null, null, null, null, null, null, null);
INSERT INTO `soolifeuserdata` VALUES ('12', '13926003072', 'e10adc3949ba59abbe56e057f20f883e', '2018-02-08 18:48:20', null, null, null, null, null, null, null, null);
INSERT INTO `soolifeuserdata` VALUES ('13', '13303052220', 'e10adc3949ba59abbe56e057f20f883e', '2018-02-08 18:49:07', null, null, null, null, null, null, null, null);
INSERT INTO `soolifeuserdata` VALUES ('14', '13760617382', 'e10adc3949ba59abbe56e057f20f883e', '2018-02-08 18:50:23', null, null, null, null, null, null, null, null);
INSERT INTO `soolifeuserdata` VALUES ('15', '13588756087', 'd41d8cd98f00b204e9800998ecf8427e', '2018-02-09 11:11:03', null, null, null, null, null, null, null, null);
