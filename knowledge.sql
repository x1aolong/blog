/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : knowledge

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-06-27 17:17:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for lj_admin
-- ----------------------------
DROP TABLE IF EXISTS `lj_admin`;
CREATE TABLE `lj_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '管理员账户',
  `password` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL COMMENT '昵称',
  `email` varchar(50) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=disable | 1=enable ',
  `is_super` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=普通管理员 | 1=超管',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) DEFAULT NULL COMMENT '账户删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lj_admin
-- ----------------------------
INSERT INTO `lj_admin` VALUES ('1', 'admin', '605078', '李晓龙', '18612943430@163.com', '1', '1', '1559700012', '1561021761', null);
INSERT INTO `lj_admin` VALUES ('2', 'ad', '123', 'ddd', 'ddd@163.com', '0', '0', '1560502436', '1560502436', null);
INSERT INTO `lj_admin` VALUES ('3', 'xiaolong', '111111', '丽丽', '1435034068@qq.com', '0', '0', '1560502436', '1560502436', null);

-- ----------------------------
-- Table structure for lj_cate
-- ----------------------------
DROP TABLE IF EXISTS `lj_cate`;
CREATE TABLE `lj_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `sort` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `status` enum('0','1') DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lj_cate
-- ----------------------------

-- ----------------------------
-- Table structure for lj_member
-- ----------------------------
DROP TABLE IF EXISTS `lj_member`;
CREATE TABLE `lj_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL COMMENT '用户账户',
  `password` varchar(30) NOT NULL,
  `nickname` varchar(30) NOT NULL COMMENT '用户昵称',
  `email` varchar(30) NOT NULL,
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) DEFAULT NULL COMMENT '账户删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lj_member
-- ----------------------------

-- ----------------------------
-- Table structure for lj_teacher
-- ----------------------------
DROP TABLE IF EXISTS `lj_teacher`;
CREATE TABLE `lj_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL COMMENT '讲师姓名',
  `info` varchar(255) NOT NULL COMMENT '讲师简介',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `status` enum('0','1') DEFAULT '1' COMMENT '状态 0=disable | 1=enable',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lj_teacher
-- ----------------------------
INSERT INTO `lj_teacher` VALUES ('1', '陈才', '陈才，文学博士，上海博物馆副研究馆员、中国诗经学会会员、中国历史文献研究会会员、中国文字学会会员、中国训诂学研究会会员、上海市儒学研究会会员，主要从事诗经学文献和朱子学文献研究，发表学术论文5余篇、书评1余篇。', '1560825756', '1');
INSERT INTO `lj_teacher` VALUES ('2', '周群', '周群，景山学校特级教师、北京市学科带头人', '1560825756', '1');
INSERT INTO `lj_teacher` VALUES ('3', '朱子辉', '朱子辉，中国人民大学文学院副教授，文学博士，1980年出生于安徽省望江县。', '1560825756', '1');
INSERT INTO `lj_teacher` VALUES ('4', '刘叶翎', '刘叶翎，中国人民大学附属小学国学课教师。毕业于北京师范大学汉语言文学专业，从事基础教育22年，担任了20年班主任工作', '1560825756', '1');
INSERT INTO `lj_teacher` VALUES ('5', '宋承昊', '宋承昊，深圳城市学院课程与评价改革研究院院长', '1560825756', '1');
INSERT INTO `lj_teacher` VALUES ('6', '王鹏伟', '王鹏伟，中国教育学会中学语文教育专业委员会副理事长。', '1560825756', '1');
INSERT INTO `lj_teacher` VALUES ('7', '王圣玉', '王圣玉，儿童发展与教育心理学专家。', '1560825756', '1');
INSERT INTO `lj_teacher` VALUES ('8', '齐吉祥', '齐吉祥，中国历史博物馆群工部主任、中国博物馆学会社会教育委员会主任、北京博物馆学会社会教育委员会主任。中国国家博物馆的第一代讲解员。', '1560825756', '1');
INSERT INTO `lj_teacher` VALUES ('9', '严晨', '严晨，印刷学院新媒体常务副院长。北京市级精品课程负责人，北京市级教学成果一等奖第1完成人；中国出版协会装帧艺委会委员，北京工业大学硕士生导师。', '1560825756', '1');
INSERT INTO `lj_teacher` VALUES ('10', '李英', '李英，《汉字魔方》作者。\n', '1560825756', '1');
INSERT INTO `lj_teacher` VALUES ('11', '华建光', '华建光，中国人民大学国学院副教授。1999年至2008年就读于中国人民大学，先后获文学学士、文学硕士和文学博士学位。', '1560825756', '1');
INSERT INTO `lj_teacher` VALUES ('12', '张明舟', '张明舟，国际儿童读物联盟中国分会副主席。', '1560825756', '1');
INSERT INTO `lj_teacher` VALUES ('13', '殷廷禄', '殷廷禄，孟子书院执行院长。', '1560825756', '1');
INSERT INTO `lj_teacher` VALUES ('14', '齐元涛', '齐元涛，北师大古汉语研究所所长，教育部民俗典籍文字研究中心研究员，汉语言文字学专业博士生导师，教育部“新世纪优秀人才”。', '1560825756', '1');
INSERT INTO `lj_teacher` VALUES ('15', '常耀华', '常耀华，北京第二外国语学院国际传播学院教授，毕业于中国社会科学院研究生院，中华字课研究院院长。', '1560825756', '1');
INSERT INTO `lj_teacher` VALUES ('16', '董光璧', '董光璧，中国科学院自然科学史研究所研究员。从事科学技术史、科学哲学和科学文化方面的研究，造诣颇深，先后发表论文百余篇，著书十余种，在海内外学界影响很大。', '1560825756', '1');
INSERT INTO `lj_teacher` VALUES ('17', '杨明明', '杨明明，国礼旗袍专业导师。', '1560825756', '1');
INSERT INTO `lj_teacher` VALUES ('18', '黄逸群', '黄逸群，服装设计师', '1560825756', '1');
INSERT INTO `lj_teacher` VALUES ('19', '赵丽明', '赵丽明，清华大学教授，主要讲授及研究方向为语言文字学，学术史。1988年1月获历史学博士学位。现为中文系语言教研室主任。1994年2月-1994年12月公派到韩国高丽大学任客座教授。1995年参加联合国第四次妇女大会NGO《东方女性与东方女性文化》专题论坛并为第一报告人。同年被列入英国剑桥世界名人录。1997年获国家级普通话测试员资格。社会兼职中国民族古文字研究会常务理事、中国训诂学会理事、北京语言学会副秘书长、中国女书研究专业委员会主任等。曾多次应邀为北京大学、北京外国语大学等研究生讲课。', '1560825756', '1');
INSERT INTO `lj_teacher` VALUES ('20', '胡安军', '胡安军，讲座网创始人，马拉松参与者。', '1560825756', '1');
INSERT INTO `lj_teacher` VALUES ('21', '谭云明', '谭云明，中央财经大学新闻系主任、教授、媒体经济专业硕士生导师。先后在湖南日报、中国老区报、江苏电视台城市频道等多家新闻单位从事新闻采编策划工作。曾参与策划中国传媒大会、中国金融与财媒高峰论坛等大型媒体活动。发表学术论文89篇，出版书籍20部，主持科研项目7项，参加国内重要学术会议并发表演讲18次。', '1560825756', '1');
INSERT INTO `lj_teacher` VALUES ('22', '钱定平', '钱定平，教授。北京大学数学本科与复旦大学语言学研究生毕业，专业为电脑科学和语言学，通英、德、法、日、俄等多种语言。在北大求学时，钱定平就是受到五四诗人、德国文化权威冯至教授欣赏的“北大三才子”之一。他早年曾从事电脑“汉字信息处理”，其突破性科研成绩由邓小平亲自批准全国报道，因此全国知名。后又钻研“微电脑多语言处理”之困难科研课题，而蜚声国际科学界。', '1560825756', '1');
INSERT INTO `lj_teacher` VALUES ('23', '王清莹', '王清莹，心理学硕士，国内结构化思维培训领域专家，一直致力于商务人士的思维、表达力全面训练与提升。已为上千位中高管、企业家及商务人士提供了全方位的解决方案和系统的培训，深受企业客户和受众的认可与好评。', '1560825756', '1');
INSERT INTO `lj_teacher` VALUES ('24', '程恭让', '程恭让，上海大学文学院教授。先后毕业于南京大学（1993）及北京大学（1996），分别获得哲学硕士学位，哲学博士学位。主要从事佛教思想研究，宗教学研究，中国哲学史研究。主要学术代表性著作，有《欧阳竟无佛学思想研究》、《抉择于真伪之间：欧阳竟无佛学思想探微》等；获得北京市第七届哲学社会科学优秀成果奖一等奖（2002年），新世纪百千万人才工程国家级人选（2007年），并于2010年成为享受国务院政府特殊专家津贴的知名学者。', '1560825756', '1');
INSERT INTO `lj_teacher` VALUES ('25', '姚卫群', '姚卫群，中国人民大学佛教与宗教学理论研究所兼职研究员，博士生导师。北京大学教授。', '1560825756', '1');
INSERT INTO `lj_teacher` VALUES ('26', '李四龙', '李四龙，北京大学哲学与宗教学系教授、佛学教育研究中心主任。主要研究方向为中国佛教史、佛教哲学等。主持国家社科基金项目“美国的佛教：西方社会与亚洲佛教的转型”等。著有《欧美佛教学术史：西方的佛教形象与学术源流》等。', '1560825756', '1');
INSERT INTO `lj_teacher` VALUES ('27', '孙亦平', '孙亦平，南京大学哲学硕士，历史学博士。现任南京大学哲学系、宗教学系教授、博士生导师、中国宗教学会理事，美国哈佛大学、香港浸会大学访问学者，国家图书馆“文津讲坛”特聘教授。', '1560825756', '1');
INSERT INTO `lj_teacher` VALUES ('28', '张汝伦', '张汝伦，男，1953年生于中国上海。复旦大学特聘教授，哲学学院中国哲学教研室主任，博士生导师，上海市中西哲学和文化比较学会副会长，中国哲学史学会理事，《国外社会科学》杂志特约编委，《当代中国哲学丛书》主编。', '1560825756', '1');

-- ----------------------------
-- Table structure for lj_top_cate
-- ----------------------------
DROP TABLE IF EXISTS `lj_top_cate`;
CREATE TABLE `lj_top_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `sort` int(11) NOT NULL,
  `status` enum('0','1') DEFAULT '0',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) DEFAULT NULL,
  `class_code` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lj_top_cate
-- ----------------------------
INSERT INTO `lj_top_cate` VALUES ('1', '专业课', '1', '1', '1561607451', null, '0001');
INSERT INTO `lj_top_cate` VALUES ('2', '公开课', '2', '1', '1561607451', null, '0002');
INSERT INTO `lj_top_cate` VALUES ('3', '精品课', '3', '1', '1561607451', null, '0003');
INSERT INTO `lj_top_cate` VALUES ('4', '通识讲堂', '4', '1', '1561607451', null, '0004');
INSERT INTO `lj_top_cate` VALUES ('5', '名家领读', '5', '1', '1561607451', null, '0005');
INSERT INTO `lj_top_cate` VALUES ('6', '职场精英', '6', '1', '1561607451', null, '0006');
INSERT INTO `lj_top_cate` VALUES ('7', '出国留学', '7', '1', '1561607451', null, '0007');
INSERT INTO `lj_top_cate` VALUES ('8', '研究生考试', '8', '1', '1561607451', null, '0008');
