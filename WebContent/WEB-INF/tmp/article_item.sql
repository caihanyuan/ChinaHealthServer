/*
Navicat MySQL Data Transfer

Source Server         : yuan
Source Server Version : 50544
Source Host           : localhost:3306
Source Database       : chinahealth

Target Server Type    : MYSQL
Target Server Version : 50544
File Encoding         : 65001

Date: 2015-09-23 20:54:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article_item
-- ----------------------------
DROP TABLE IF EXISTS `article_item`;
CREATE TABLE `article_item` (
  `uid` varchar(255) NOT NULL,
  `group_type` tinyint(1) DEFAULT '0',
  `type` tinyint(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `source` varchar(10) DEFAULT NULL,
  `comment_nums` int(10) DEFAULT '0',
  `publish_time` bigint(20) DEFAULT '0',
  `thumbnail_uris` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_item
-- ----------------------------
INSERT INTO `article_item` VALUES ('brwdfd', '4', '3', '老人碰瓷全过程', '学佛网', '5', '115462214', '[\"https://ss0.baidu.com/7Po3dSag_xI4khGko9WTAnF6hhy/news/q=100/sign=5f8d5328ab4bd11302cdb3326aafa488/b999a9014c086e068a8d881004087bf40ad1cb40.jpg\"]');
INSERT INTO `article_item` VALUES ('cdareq', '2', '0', '警察撞死人啦', '无聊网', '6141', '1754622142', '[\"https://ss1.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=f295180cd6160924dc70f15bb23a01c8/f2deb48f8c5494eeb47770432bf5e0fe99257e16.jpg\"]');
INSERT INTO `article_item` VALUES ('ddavcgr', '1', '0', '小松鼠雨中撑伞', '百度', '0', '138862214242', '[\"https://ss0.baidu.com/7Po3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=44d9b5d028dda3cc0bb1eb6067d40d33/622762d0f703918faf031185573d269758eec4aa.jpg\"]');
INSERT INTO `article_item` VALUES ('dfd', '2', '0', '金正恩告急', '校园网', '2321', '10546221421', '[\"https://ss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=10c0b187ad64034f0f989146c9fe4d03/d058ccbf6c81800a42e3f654b73533fa828b4761.jpg\"]');
INSERT INTO `article_item` VALUES ('dfdafda', '1', '1', '英国上空两猎鹰上演极速夺食大战', '百度', '341', '14464421', '[\"https://ss1.baidu.com/9vo3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=f0dc6bbf3fdbb6fd250eb6666f199f2a/9c16fdfaaf51f3de1589662092eef01f3a2979bf.jpg\"]');
INSERT INTO `article_item` VALUES ('dfdafxva', '1', '1', '珠海今天下大暴雨', '珠海网', '100', '2546321342', '[\"https://ss0.baidu.com/94o3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=a217c2c80af431adbc8710792d0b989d/63d9f2d3572c11dfb94c9879652762d0f603c2ce.jpg\"]');
INSERT INTO `article_item` VALUES ('dfdfda', '1', '0', '暖男医生手术室哄小患者照片走红网络', '天天', '21', '138662214242', '[\"https://ss1.baidu.com/9vo3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=05632ad2cdef76093c5ecadf48e097fe/562c11dfa9ec8a136ab079aff103918fa1ecc0d2.jpg\"]');
INSERT INTO `article_item` VALUES ('dvdaef', '1', '0', '浙江象山千舟竞发赶海 万人围观', '百度', '0', '137662214242', '[\"https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=b704e371b5de9c82a630aacf0abcb438/d439b6003af33a87cc0c0752c05c10385343b510.jpg\"]');
INSERT INTO `article_item` VALUES ('ereqdfda', '1', '0', '非洲首条现代化轻轨通车 系中国援建', '腾讯', '12', '139902214242', '[\"https://ss3.baidu.com/-fo3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=91cd0c781c4c510fae91b15a0664111f/cefc1e178a82b9015c191183758da9773812efce.jpg\"]');
INSERT INTO `article_item` VALUES ('ertres', '2', '0', '胖妹子有点胖', '无量网', '123', '854416221', '[\"https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=ea3e10c38426cffc697fecf2df3c7ea2/fc1f4134970a304e7864c6a0d7c8a786c9175c21.jpg\"]');
INSERT INTO `article_item` VALUES ('eryjy', '1', '0', '探秘比尔盖茨的西雅图豪宅', '新浪', '321', '139892214242', '[\"https://ss0.baidu.com/94o3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=95a0b102b4b7d0a27b9c57ddadd2423b/7af40ad162d9f2d36fb8f95fafec8a136227ccd1.jpg\"]');
INSERT INTO `article_item` VALUES ('fbrqdrq', '1', '3', '魅族MX5要出来了!', '魅族', '100', '42946121421', '[\"https://ss1.baidu.com/9vo3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=0290e7e58a5494ee87775c594bc8d4cc/f7246b600c3387441ab64926570fd9f9d72aa07d.jpg\"]');
INSERT INTO `article_item` VALUES ('fdae', '4', '1', '58岁渔民造军舰模型，很多人围观，导致交通拥堵，无可奈何～', '八卦网', '3132', '12546221424', '[\"https://ss1.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/news/q=100/sign=a12f9ba67d899e517e8e3e1472a6d990/a08b87d6277f9e2f93dd55531930e924b999f385.jpg\"]');
INSERT INTO `article_item` VALUES ('fdafda', '3', '2', '第三次世界大战一户激发', '军事网', '6101', '3546243214', '[\"https://ss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=24995ec38426cffc697fecf2df3c7ea2/fc1f4134970a304eb6c388a0d7c8a786c8175c82.jpg\",\"https://ss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=d41671ce402309f7e73afe52143338c1/83025aafa40f4bfb60b1fa0e054f78f0f7361802.jpg\",\"https://ss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=6327a572307adab43d854803ede9872e/9e3df8dcd100baa1562f51e14110b912c8fc2e6c.jpg\"]');
INSERT INTO `article_item` VALUES ('fdafegrafea', '2', '0', '警察打人啦', '新浪', '266', '15464421', '[\"https://ss3.baidu.com/9fo3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=3d492915982f07085f5079408f198cab/c2fdfc039245d6886ea089fea2c27d1ed31b24cd.jpg\"]');
INSERT INTO `article_item` VALUES ('fdafegrafead', '3', '0', '火锅店员工拜老板', '新浪', '2121', '125464421', '[\"https://ss3.baidu.com/9fo3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=ba123db5ba3eb1354492e4fbc0239ce1/11385343fbf2b211a90b9413cc8065380cd78e41.jpg\"]');
INSERT INTO `article_item` VALUES ('fdeeq', '1', '0', '叙利亚难民夫妇将双胞胎婴儿装进提包偷渡爱琴海', '百度', '12', '139872214242', '[\"https://ss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=8c4c19781c4c510fae91b15a0664111f/cefc1e178a82b90141980483758da9773912ef4d.jpg\"]');
INSERT INTO `article_item` VALUES ('fdfd', '1', '0', '男子扮女装在KTV工作4年 聚众吸毒被抓', '百度', '32', '139882214242', '[\"https://ss0.baidu.com/7Po3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=da9a557ab4fb43161a4a293a46997211/c995d143ad4bd113940782835cafa40f4afb05bc.jpg\"]');
INSERT INTO `article_item` VALUES ('fdfdx', '1', '0', '数百人参加迪拜王子葬礼', '珠海网', '232', '138762214242', '[\"https://ss3.baidu.com/9fo3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=b12365a68b1001e94e69474fde334fde/908fa0ec08fa513d347840913b6d55fbb3fbd9aa.jpg\"]');
INSERT INTO `article_item` VALUES ('fdjaojieo', '4', '0', '四川一核面包车校车载23名学生', '腾讯网', '131', '135462214242', '[\"https://ss0.baidu.com/7Po3dSag_xI4khGko9WTAnF6hhy/news/q=100/sign=5f65744fad18972ba53a04cad6cc7b9d/4bed2e738bd4b31c0872dce081d6277f9e2ff81b.jpg\"]');
INSERT INTO `article_item` VALUES ('fdnglolop', '1', '0', '缅甸“黄金岩石”叠立悬崖危如累卵 引信徒朝拜', '百度', '23', '139862214242', '[\"https://ss1.baidu.com/9vo3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=a2e8470f8a5494ee87775c594bc8d4cc/f7246b600c338744bacee9cc570fd9f9d72aa073.jpg\"]');
INSERT INTO `article_item` VALUES ('joijfoiejo', '1', '0', '沈林着火了', '天天', '3213', '19546221421', '[\"https://ss3.baidu.com/-fo3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=4fbd4449db54564ee530b779d5e3a8b0/5ab5c9ea15ce36d3d3d0fb6a3cf33a87e850b197.jpg\"]');
INSERT INTO `article_item` VALUES ('rfefafd', '2', '1', '东非男子海滩岩石上建餐厅', '百度', '0', '136462214242', '[\"https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=f9d35a6bd41b0ef46cbdcb1ebbf965e8/8435e5dde71190ef2bd7809ac81b9d16fdfa6042.jpg\"]');
INSERT INTO `article_item` VALUES ('vzzcda', '1', '0', '悉尼男子300米高空无防护走钢丝', '百度', '321', '139892214242', '[\"https://ss3.baidu.com/-fo3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=5f072b79d12a60595245b25a4e0900a9/b8014a90f603738da77fcb92b51bb051f819ec4d.jpg\"]');
INSERT INTO `article_item` VALUES ('wafdaf', '3', '1', '狗狗好漂亮\n', '军事网', '200', '48214622124', '[\"https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=282e36249458d109c4b6faf2b765f88d/14ce36d3d539b600cf895aedef50352ac65cb721.jpg\"]');
INSERT INTO `article_item` VALUES ('xbvafaeah', '2', '0', '纽约“犀利哥”13年不洗头 成新街景', '百度', '3', '137462214242', '[\"https://ss1.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=9ae061fc98510fb3784c24d7bf0efca7/9825bc315c6034a822f297c4cd13495409237666.jpg\"]');
INSERT INTO `article_item` VALUES ('xbvafaeahd', '3', '3', '美国猎人打到“阿凡达野猪” 猪肉呈蓝色', '百度', '0', '137562214242', '[\"https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=d7bd637adff9d72a1731435db2171c06/8b82b9014a90f603be7c9b023f12b31bb151eda3.jpg\"]');
