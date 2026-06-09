/*
 Navicat Premium Dump SQL

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80041 (8.0.41)
 Source Host           : localhost:3306
 Source Schema         : springboot0p6l7477

 Target Server Type    : MySQL
 Target Server Version : 80041 (8.0.41)
 File Encoding         : 65001

 Date: 09/06/2026 19:38:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `address` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '地址',
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收货人',
  `phone` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '电话',
  `isdefault` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '地址' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, '2023-11-17 16:57:20', 11, '宇宙银河系金星1号', '金某', '13823888881', '是');
INSERT INTO `address` VALUES (2, '2023-11-17 16:57:20', 12, '宇宙银河系木星1号', '木某', '13823888882', '是');
INSERT INTO `address` VALUES (3, '2023-11-17 16:57:20', 13, '宇宙银河系水星1号', '水某', '13823888883', '是');
INSERT INTO `address` VALUES (4, '2023-11-17 16:57:20', 14, '宇宙银河系火星1号', '火某', '13823888884', '是');
INSERT INTO `address` VALUES (5, '2023-11-17 16:57:20', 15, '宇宙银河系土星1号', '土某', '13823888885', '是');
INSERT INTO `address` VALUES (6, '2023-11-17 16:57:20', 16, '宇宙银河系月球1号', '月某', '13823888886', '是');
INSERT INTO `address` VALUES (7, '2023-11-17 16:57:20', 17, '宇宙银河系黑洞1号', '黑某', '13823888887', '是');
INSERT INTO `address` VALUES (8, '2023-11-17 16:57:20', 18, '宇宙银河系地球1号', '地某', '13823888888', '是');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'mianshuishangpin' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `picture` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` double NULL DEFAULT NULL COMMENT '单价',
  `discountprice` double NULL DEFAULT NULL COMMENT '会员价',
  `shangjiazhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商户名称',
  `goodtype` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1709508483888 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '购物车表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `adminid` bigint NULL DEFAULT NULL COMMENT '管理员id',
  `ask` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '提问',
  `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复',
  `isreply` int NULL DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 79 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '在线客服' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES (71, '2023-11-17 16:57:19', 1, 1, '提问1', '回复1', 1);
INSERT INTO `chat` VALUES (72, '2023-11-17 16:57:19', 2, 2, '提问2', '回复2', 2);
INSERT INTO `chat` VALUES (73, '2023-11-17 16:57:19', 3, 3, '提问3', '回复3', 3);
INSERT INTO `chat` VALUES (74, '2023-11-17 16:57:19', 4, 4, '提问4', '回复4', 4);
INSERT INTO `chat` VALUES (75, '2023-11-17 16:57:19', 5, 5, '提问5', '回复5', 5);
INSERT INTO `chat` VALUES (76, '2023-11-17 16:57:19', 6, 6, '提问6', '回复6', 6);
INSERT INTO `chat` VALUES (77, '2023-11-17 16:57:19', 7, 7, '提问7', '回复7', 7);
INSERT INTO `chat` VALUES (78, '2023-11-17 16:57:19', 8, 8, '提问8', '回复8', 8);

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  `url` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '配置文件' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'upload/picture1.jpg', NULL);
INSERT INTO `config` VALUES (2, 'picture2', 'upload/picture2.jpg', NULL);
INSERT INTO `config` VALUES (3, 'picture3', 'upload/picture3.jpg', NULL);

-- ----------------------------
-- Table structure for discussmianshuishangpin
-- ----------------------------
DROP TABLE IF EXISTS `discussmianshuishangpin`;
CREATE TABLE `discussmianshuishangpin`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `avatarurl` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '头像',
  `nickname` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '免税商品评论表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of discussmianshuishangpin
-- ----------------------------

-- ----------------------------
-- Table structure for forum
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '帖子标题',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '帖子内容',
  `parentid` bigint NULL DEFAULT NULL COMMENT '父节点id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '头像',
  `isdone` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '状态',
  `istop` int NULL DEFAULT 0 COMMENT '是否置顶',
  `toptime` datetime NULL DEFAULT NULL COMMENT '置顶时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '论坛交流' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of forum
-- ----------------------------
INSERT INTO `forum` VALUES (81, '2024-04-12 07:53:48', '帖子标题1', '帖子内容1', 0, 1, '用户名1', 'upload/forum_avatarurl1.jpg,upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg', '开放', 0, '2024-04-12 07:53:48');
INSERT INTO `forum` VALUES (82, '2024-04-12 07:53:48', '帖子标题2', '帖子内容2', 0, 2, '用户名2', 'upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg', '开放', 0, '2024-04-12 07:53:48');
INSERT INTO `forum` VALUES (83, '2024-04-12 07:53:48', '帖子标题3', '帖子内容3', 0, 3, '用户名3', 'upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg', '开放', 0, '2024-04-12 07:53:48');
INSERT INTO `forum` VALUES (84, '2024-04-12 07:53:48', '帖子标题4', '帖子内容4', 0, 4, '用户名4', 'upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg', '开放', 0, '2024-04-12 07:53:48');
INSERT INTO `forum` VALUES (85, '2024-04-12 07:53:48', '帖子标题5', '帖子内容5', 0, 5, '用户名5', 'upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg', '开放', 0, '2024-04-12 07:53:48');
INSERT INTO `forum` VALUES (86, '2024-04-12 07:53:48', '帖子标题6', '帖子内容6', 0, 6, '用户名6', 'upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg', '开放', 0, '2024-04-12 07:53:48');
INSERT INTO `forum` VALUES (87, '2024-04-12 07:53:48', '帖子标题7', '帖子内容7', 0, 7, '用户名7', 'upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg,upload/forum_avatarurl9.jpg', '开放', 0, '2024-04-12 07:53:48');
INSERT INTO `forum` VALUES (88, '2024-04-12 07:53:48', '帖子标题8', '帖子内容8', 0, 8, '用户名8', 'upload/forum_avatarurl8.jpg,upload/forum_avatarurl9.jpg,upload/forum_avatarurl10.jpg', '开放', 0, '2024-04-12 07:53:48');

-- ----------------------------
-- Table structure for friendlink
-- ----------------------------
DROP TABLE IF EXISTS `friendlink`;
CREATE TABLE `friendlink`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '名称',
  `picture` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '图片',
  `url` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '链接',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '友情链接' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of friendlink
-- ----------------------------
INSERT INTO `friendlink` VALUES (1, '2023-11-17 16:57:20', '爱奇艺', 'upload/fl_aqy.png', 'https://www.iqiyi.com/');
INSERT INTO `friendlink` VALUES (2, '2023-11-17 16:57:20', '百度', 'upload/fl_bd.png', 'https://www.baidu.com/');
INSERT INTO `friendlink` VALUES (3, '2023-11-17 16:57:20', '京东', 'upload/fl_jd.png', 'https://www.jd.com/');
INSERT INTO `friendlink` VALUES (4, '2023-11-17 16:57:20', '搜狐', 'upload/fl_sh.png', 'https://www.sohu.com/');
INSERT INTO `friendlink` VALUES (5, '2023-11-17 16:57:20', '腾讯', 'upload/fl_tx.png', 'https://www.qq.com/');
INSERT INTO `friendlink` VALUES (6, '2023-11-17 16:57:20', '网易', 'upload/fl_wy.png', 'https://www.163.com/');
INSERT INTO `friendlink` VALUES (7, '2023-11-17 16:57:20', '新浪', 'upload/fl_xl.png', 'https://www.sina.com.cn/');
INSERT INTO `friendlink` VALUES (8, '2023-11-17 16:57:20', '知乎', 'upload/fl_zh.png', 'https://www.zhihu.com/');

-- ----------------------------
-- Table structure for meizhuangfenlei
-- ----------------------------
DROP TABLE IF EXISTS `meizhuangfenlei`;
CREATE TABLE `meizhuangfenlei`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `meizhuangfenlei` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `meizhuangfenlei`(`meizhuangfenlei` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '商品分类' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meizhuangfenlei
-- ----------------------------
INSERT INTO `meizhuangfenlei` VALUES (31, '2023-11-17 16:57:19', '商品分类1');
INSERT INTO `meizhuangfenlei` VALUES (32, '2023-11-17 16:57:19', '商品分类2');
INSERT INTO `meizhuangfenlei` VALUES (33, '2023-11-17 16:57:19', '商品分类3');
INSERT INTO `meizhuangfenlei` VALUES (34, '2023-11-17 16:57:19', '商品分类4');
INSERT INTO `meizhuangfenlei` VALUES (35, '2023-11-17 16:57:19', '商品分类5');
INSERT INTO `meizhuangfenlei` VALUES (36, '2023-11-17 16:57:19', '商品分类6');
INSERT INTO `meizhuangfenlei` VALUES (37, '2023-11-17 16:57:19', '商品分类7');
INSERT INTO `meizhuangfenlei` VALUES (38, '2023-11-17 16:57:19', '商品分类8');

-- ----------------------------
-- Table structure for mianshuishangpin
-- ----------------------------
DROP TABLE IF EXISTS `mianshuishangpin`;
CREATE TABLE `mianshuishangpin`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `meizhuangmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商品名称',
  `meizhuangfenlei` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商品分类',
  `pinpai` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '品牌',
  `guige` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '规格',
  `shangjiariqi` date NULL DEFAULT NULL COMMENT '上架日期',
  `shangpinjieshao` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '商品介绍',
  `shangjiazhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商家账号',
  `dianpuming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '店铺名',
  `fengmian` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '封面',
  `onelimittimes` int NULL DEFAULT NULL COMMENT '单限',
  `alllimittimes` int NULL DEFAULT NULL COMMENT '库存',
  `thumbsupnum` int NULL DEFAULT 0 COMMENT '赞',
  `crazilynum` int NULL DEFAULT 0 COMMENT '踩',
  `clicktime` datetime NULL DEFAULT NULL COMMENT '最近点击时间',
  `reversetime` datetime NULL DEFAULT NULL COMMENT '倒计结束时间',
  `clicknum` int NULL DEFAULT 0 COMMENT '点击次数',
  `discussnum` int NULL DEFAULT 0 COMMENT '评论数',
  `price` double NOT NULL COMMENT '价格',
  `storeupnum` int NULL DEFAULT 0 COMMENT '收藏数',
  `age` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `zige` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `kuaidi` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1715929791970 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '免税商品' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mianshuishangpin
-- ----------------------------
INSERT INTO `mianshuishangpin` VALUES (41, '2024-04-12 07:53:48', '商品名称1', '商品分类1', '品牌1', '规格1', '2023-11-17', '<p>商品介绍1</p>', '商家账号1', '店铺名1', 'upload/3.jpg', 1, 98, 1, 1, '2024-03-04 07:28:17', '2024-07-31 00:00:00', 5, 0, 99.9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `mianshuishangpin` VALUES (42, '2024-04-12 07:53:48', '商品名称2', '商品分类2', '品牌2', '规格2', '2023-11-17', '商品介绍2', '商家账号2', '店铺名2', 'upload/1.jpg', 2, 99, 2, 2, '2024-04-12 07:53:48', '2024-07-31 00:00:00', 2, 0, 99.9, 2, NULL, NULL, NULL, NULL);
INSERT INTO `mianshuishangpin` VALUES (43, '2024-04-12 07:53:48', '商品名称3', '商品分类3', '品牌3', '规格3', '2023-11-17', '商品介绍3', '商家账号3', '店铺名3', 'upload/2.jpg', 3, 99, 3, 3, '2024-04-12 07:53:48', '2024-07-31 00:00:00', 3, 0, 99.9, 3, NULL, NULL, NULL, NULL);
INSERT INTO `mianshuishangpin` VALUES (44, '2024-04-12 07:53:48', '商品名称4', '商品分类4', '品牌4', '规格4', '2023-11-17', '商品介绍4', '商家账号4', '店铺名4', 'upload/4.jpg', 4, 99, 4, 4, '2024-04-12 07:53:48', '2024-07-31 00:00:00', 4, 0, 99.9, 4, NULL, NULL, NULL, NULL);
INSERT INTO `mianshuishangpin` VALUES (45, '2024-04-12 07:53:48', '商品名称5', '商品分类5', '品牌5', '规格5', '2023-11-17', '商品介绍5', '商家账号5', '店铺名5', 'upload/6.jpg', 5, 99, 5, 5, '2024-04-12 07:53:48', '2024-07-31 00:00:00', 5, 0, 99.9, 5, NULL, NULL, NULL, NULL);
INSERT INTO `mianshuishangpin` VALUES (46, '2024-04-12 07:53:48', '商品名称6', '商品分类6', '品牌6', '规格6', '2023-11-17', '商品介绍6', '商家账号6', '店铺名6', 'upload/7.jpg', 6, 99, 6, 6, '2024-04-12 07:53:48', '2024-07-31 00:00:00', 6, 0, 99.9, 6, NULL, NULL, NULL, NULL);
INSERT INTO `mianshuishangpin` VALUES (47, '2024-04-12 07:53:48', '商品名称7', '商品分类7', '品牌7', '规格7', '2023-11-17', '商品介绍7', '商家账号7', '店铺名7', 'upload/8.jpg', 7, 99, 7, 7, '2024-04-12 07:53:48', '2024-07-31 00:00:00', 7, 0, 99.9, 7, NULL, NULL, NULL, NULL);
INSERT INTO `mianshuishangpin` VALUES (48, '2024-04-12 07:53:48', '商品名称8', '商品分类8', '品牌8', '规格8', '2023-11-17', '商品介绍8', '商家账号8', '店铺名8', 'upload/9.jpg', 8, 98, 8, 8, '2024-05-17 13:52:33', '2024-07-31 00:00:00', 14, 0, 99.9, 8, NULL, NULL, NULL, NULL);
INSERT INTO `mianshuishangpin` VALUES (1715925366099, '2024-05-17 13:56:05', '1', '商品分类1', '', '1', '2024-05-17', '', '', '', '', -1, -1, 0, 0, '2024-05-17 13:56:26', '2024-05-31 00:00:00', 3, 0, 1, 0, NULL, NULL, NULL, NULL);
INSERT INTO `mianshuishangpin` VALUES (1715925445850, '2024-05-17 13:57:25', '222', '商品分类1', '', '222', '2024-05-17', '<p>2</p>', '', '', 'upload/1715925439856.jpeg', -1, 9999999, 0, 0, '2024-05-17 13:57:31', '2024-05-30 00:00:00', 1, 0, 1, 0, NULL, NULL, NULL, NULL);
INSERT INTO `mianshuishangpin` VALUES (1715929791969, '2024-05-17 15:09:51', '31', '商品分类1', '', '111', '2024-05-17', '<p>1</p>', '', '', 'upload/1715929776988.jpg', -1, 9999999, 0, 0, '2024-05-17 15:10:14', '2024-05-31 00:00:00', 1, 0, 1, 0, '3', '男', '是', '物流');

-- ----------------------------
-- Table structure for onlinemessage
-- ----------------------------
DROP TABLE IF EXISTS `onlinemessage`;
CREATE TABLE `onlinemessage`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '姓名',
  `email` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '邮箱',
  `mobile` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '电话',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '留言内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 149 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '在线留言' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of onlinemessage
-- ----------------------------
INSERT INTO `onlinemessage` VALUES (141, '2024-04-12 07:53:48', '姓名1', '773890001@qq.com', '13823888881', '留言内容1');
INSERT INTO `onlinemessage` VALUES (142, '2024-04-12 07:53:48', '姓名2', '773890002@qq.com', '13823888882', '留言内容2');
INSERT INTO `onlinemessage` VALUES (143, '2024-04-12 07:53:48', '姓名3', '773890003@qq.com', '13823888883', '留言内容3');
INSERT INTO `onlinemessage` VALUES (144, '2024-04-12 07:53:48', '姓名4', '773890004@qq.com', '13823888884', '留言内容4');
INSERT INTO `onlinemessage` VALUES (145, '2024-04-12 07:53:48', '姓名5', '773890005@qq.com', '13823888885', '留言内容5');
INSERT INTO `onlinemessage` VALUES (146, '2024-04-12 07:53:48', '姓名6', '773890006@qq.com', '13823888886', '留言内容6');
INSERT INTO `onlinemessage` VALUES (147, '2024-04-12 07:53:48', '姓名7', '773890007@qq.com', '13823888887', '留言内容7');
INSERT INTO `onlinemessage` VALUES (148, '2024-04-12 07:53:48', '姓名8', '773890008@qq.com', '13823888888', '留言内容8');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'mianshuishangpin' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `picture` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '商品图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` double NOT NULL DEFAULT 0 COMMENT '价格',
  `discountprice` double NULL DEFAULT 0 COMMENT '折扣价格',
  `total` double NOT NULL DEFAULT 0 COMMENT '总价格',
  `discounttotal` double NULL DEFAULT 0 COMMENT '折扣总价格',
  `type` int NULL DEFAULT 1 COMMENT '支付类型',
  `status` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '状态',
  `address` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '收货人',
  `remark` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `logistics` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '物流',
  `shangjiazhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商户名称',
  `goodtype` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品类型',
  `sfsh` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '审核回复',
  `role` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户角色',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `orderid`(`orderid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1709508498011 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '订单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1709508497695, '2024-03-04 07:28:17', '20243472817312', 'mianshuishangpin', 11, 48, '商品名称8', 'upload/9.jpg', 1, 99.9, 99.9, 99.9, 99.9, 1, '已支付', '宇宙银河系金星1号', '13823888881', '金某', '', NULL, '商家账号8', '商品分类8', '', NULL, 'yonghu');
INSERT INTO `orders` VALUES (1709508498010, '2024-03-04 07:28:17', '20243472817316', 'mianshuishangpin', 11, 41, '商品名称1', 'upload/3.jpg', 1, 99.9, 99.9, 99.9, 99.9, 1, '已支付', '宇宙银河系金星1号', '13823888881', '金某', '', NULL, '商家账号1', '商品分类1', '', NULL, 'yonghu');

-- ----------------------------
-- Table structure for shangjia
-- ----------------------------
DROP TABLE IF EXISTS `shangjia`;
CREATE TABLE `shangjia`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商家账号',
  `mima` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `dianpuming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '店铺名',
  `fuzeren` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `touxiang` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '头像',
  `ruzhushijian` date NULL DEFAULT NULL COMMENT '入驻时间',
  `sfsh` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '审核回复',
  `money` double NULL DEFAULT 0 COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `shangjiazhanghao`(`shangjiazhanghao` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '商家' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shangjia
-- ----------------------------
INSERT INTO `shangjia` VALUES (21, '2023-11-17 16:57:19', '商家账号1', '123456', '店铺名1', '负责人1', '13823888881', 'upload/shangjia_touxiang1.jpg', '2023-11-17', '是', '', 200);
INSERT INTO `shangjia` VALUES (22, '2023-11-17 16:57:19', '商家账号2', '123456', '店铺名2', '负责人2', '13823888882', 'upload/shangjia_touxiang2.jpg', '2023-11-17', '是', '', 200);
INSERT INTO `shangjia` VALUES (23, '2023-11-17 16:57:19', '商家账号3', '123456', '店铺名3', '负责人3', '13823888883', 'upload/shangjia_touxiang3.jpg', '2023-11-17', '是', '', 200);
INSERT INTO `shangjia` VALUES (24, '2023-11-17 16:57:19', '商家账号4', '123456', '店铺名4', '负责人4', '13823888884', 'upload/shangjia_touxiang4.jpg', '2023-11-17', '是', '', 200);
INSERT INTO `shangjia` VALUES (25, '2023-11-17 16:57:19', '商家账号5', '123456', '店铺名5', '负责人5', '13823888885', 'upload/shangjia_touxiang5.jpg', '2023-11-17', '是', '', 200);
INSERT INTO `shangjia` VALUES (26, '2023-11-17 16:57:19', '商家账号6', '123456', '店铺名6', '负责人6', '13823888886', 'upload/shangjia_touxiang6.jpg', '2023-11-17', '是', '', 200);
INSERT INTO `shangjia` VALUES (27, '2023-11-17 16:57:19', '商家账号7', '123456', '店铺名7', '负责人7', '13823888887', 'upload/shangjia_touxiang7.jpg', '2023-11-17', '是', '', 200);
INSERT INTO `shangjia` VALUES (28, '2023-11-17 16:57:19', '商家账号8', '123456', '店铺名8', '负责人8', '13823888888', 'upload/shangjia_touxiang8.jpg', '2023-11-17', '是', '', 200);

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint NULL DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '名称',
  `picture` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图片',
  `type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '收藏表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of storeup
-- ----------------------------

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = 'token表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'admin', 'users', '管理员', '3ub2ujeqrptzuos9skzydj0hahkju9ao', '2023-11-17 16:59:02', '2026-06-09 20:32:02');
INSERT INTO `token` VALUES (2, 21, '商家账号1', 'shangjia', '商家', '8c2q2m0lc5t1hmwhktilztygirzc6b0c', '2023-11-17 16:59:35', '2024-03-04 08:30:34');
INSERT INTO `token` VALUES (3, 11, '账号1', 'yonghu', '用户', 'fejchomec2wjfgipnck4f69zjq3h3a6u', '2024-02-28 22:49:37', '2024-03-04 08:30:53');
INSERT INTO `token` VALUES (4, 1715925115777, '111', 'yonghu', '用户', 'rk9lom5vbztivtauseyegs3fdqw079bu', '2024-05-17 13:52:25', '2024-05-17 16:10:12');

-- ----------------------------
-- Table structure for tongzhigonggao
-- ----------------------------
DROP TABLE IF EXISTS `tongzhigonggao`;
CREATE TABLE `tongzhigonggao`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '标题',
  `jianjie` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '简介',
  `fabushijian` date NULL DEFAULT NULL COMMENT '发布时间',
  `fengmian` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '封面',
  `neirong` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '内容',
  `clicknum` int NULL DEFAULT 0 COMMENT '点击次数',
  `storeupnum` int NULL DEFAULT 0 COMMENT '收藏数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '通知公告' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tongzhigonggao
-- ----------------------------
INSERT INTO `tongzhigonggao` VALUES (51, '2023-11-17 16:57:19', '标题1', '简介1', '2023-11-17', 'upload/tongzhigonggao_fengmian1.jpg,upload/tongzhigonggao_fengmian2.jpg,upload/tongzhigonggao_fengmian3.jpg', '内容1', 1, 1);
INSERT INTO `tongzhigonggao` VALUES (52, '2023-11-17 16:57:19', '标题2', '简介2', '2023-11-17', 'upload/tongzhigonggao_fengmian2.jpg,upload/tongzhigonggao_fengmian3.jpg,upload/tongzhigonggao_fengmian4.jpg', '内容2', 2, 2);
INSERT INTO `tongzhigonggao` VALUES (53, '2023-11-17 16:57:19', '标题3', '简介3', '2023-11-17', 'upload/tongzhigonggao_fengmian3.jpg,upload/tongzhigonggao_fengmian4.jpg,upload/tongzhigonggao_fengmian5.jpg', '内容3', 3, 3);
INSERT INTO `tongzhigonggao` VALUES (54, '2023-11-17 16:57:19', '标题4', '简介4', '2023-11-17', 'upload/tongzhigonggao_fengmian4.jpg,upload/tongzhigonggao_fengmian5.jpg,upload/tongzhigonggao_fengmian6.jpg', '内容4', 4, 4);
INSERT INTO `tongzhigonggao` VALUES (55, '2023-11-17 16:57:19', '标题5', '简介5', '2023-11-17', 'upload/tongzhigonggao_fengmian5.jpg,upload/tongzhigonggao_fengmian6.jpg,upload/tongzhigonggao_fengmian7.jpg', '内容5', 5, 5);
INSERT INTO `tongzhigonggao` VALUES (56, '2023-11-17 16:57:19', '标题6', '简介6', '2023-11-17', 'upload/tongzhigonggao_fengmian6.jpg,upload/tongzhigonggao_fengmian7.jpg,upload/tongzhigonggao_fengmian8.jpg', '内容6', 6, 6);
INSERT INTO `tongzhigonggao` VALUES (57, '2023-11-17 16:57:19', '标题7', '简介7', '2023-11-17', 'upload/tongzhigonggao_fengmian7.jpg,upload/tongzhigonggao_fengmian8.jpg,upload/tongzhigonggao_fengmian9.jpg', '内容7', 7, 7);
INSERT INTO `tongzhigonggao` VALUES (58, '2023-11-17 16:57:19', '标题8', '简介8', '2023-11-17', 'upload/tongzhigonggao_fengmian8.jpg,upload/tongzhigonggao_fengmian9.jpg,upload/tongzhigonggao_fengmian10.jpg', '内容8', 8, 8);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `image` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin', 'upload/image1.jpg', '管理员', '2023-11-17 16:57:20');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '账号',
  `mima` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '姓名',
  `nianling` int NULL DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机',
  `touxiang` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '头像',
  `sfsh` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '审核回复',
  `money` double NULL DEFAULT 0 COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `zhanghao`(`zhanghao` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1715925115778 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (11, '2023-11-17 16:57:19', '账号1', '123456', '姓名1', 1, '男', '13823888881', 'upload/yonghu_touxiang1.jpg', '是', '', 0.2);
INSERT INTO `yonghu` VALUES (12, '2023-11-17 16:57:19', '账号2', '123456', '姓名2', 2, '男', '13823888882', 'upload/yonghu_touxiang2.jpg', '是', '', 200);
INSERT INTO `yonghu` VALUES (13, '2023-11-17 16:57:19', '账号3', '123456', '姓名3', 3, '男', '13823888883', 'upload/yonghu_touxiang3.jpg', '是', '', 200);
INSERT INTO `yonghu` VALUES (14, '2023-11-17 16:57:19', '账号4', '123456', '姓名4', 4, '男', '13823888884', 'upload/yonghu_touxiang4.jpg', '是', '', 200);
INSERT INTO `yonghu` VALUES (15, '2023-11-17 16:57:19', '账号5', '123456', '姓名5', 5, '男', '13823888885', 'upload/yonghu_touxiang5.jpg', '是', '', 200);
INSERT INTO `yonghu` VALUES (16, '2023-11-17 16:57:19', '账号6', '123456', '姓名6', 6, '男', '13823888886', 'upload/yonghu_touxiang6.jpg', '是', '', 200);
INSERT INTO `yonghu` VALUES (17, '2023-11-17 16:57:19', '账号7', '123456', '姓名7', 7, '男', '13823888887', 'upload/yonghu_touxiang7.jpg', '是', '', 200);
INSERT INTO `yonghu` VALUES (18, '2023-11-17 16:57:19', '账号8', '123456', '姓名8', 8, '男', '13823888888', 'upload/yonghu_touxiang8.jpg', '是', '', 200);
INSERT INTO `yonghu` VALUES (1715925115777, '2024-05-17 13:51:55', '111', '111', '111', NULL, '', '', '', '是', '1', 0);

-- ----------------------------
-- Table structure for zixunshangjia
-- ----------------------------
DROP TABLE IF EXISTS `zixunshangjia`;
CREATE TABLE `zixunshangjia`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '标题',
  `zixunwenti` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '咨询问题',
  `zixunshijian` datetime NULL DEFAULT NULL COMMENT '咨询时间',
  `shangjiazhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商家账号',
  `dianpuming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '店铺名',
  `zhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `touxiang` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '头像',
  `shhf` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '咨询商家' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of zixunshangjia
-- ----------------------------
INSERT INTO `zixunshangjia` VALUES (61, '2024-04-12 07:53:48', '标题1', '咨询问题1', '2024-04-12 07:53:48', '商家账号1', '店铺名1', '账号1', '姓名1', 'upload/zixunshangjia_touxiang1.jpg,upload/zixunshangjia_touxiang2.jpg,upload/zixunshangjia_touxiang3.jpg', '');
INSERT INTO `zixunshangjia` VALUES (62, '2024-04-12 07:53:48', '标题2', '咨询问题2', '2024-04-12 07:53:48', '商家账号2', '店铺名2', '账号2', '姓名2', 'upload/zixunshangjia_touxiang2.jpg,upload/zixunshangjia_touxiang3.jpg,upload/zixunshangjia_touxiang4.jpg', '');
INSERT INTO `zixunshangjia` VALUES (63, '2024-04-12 07:53:48', '标题3', '咨询问题3', '2024-04-12 07:53:48', '商家账号3', '店铺名3', '账号3', '姓名3', 'upload/zixunshangjia_touxiang3.jpg,upload/zixunshangjia_touxiang4.jpg,upload/zixunshangjia_touxiang5.jpg', '');
INSERT INTO `zixunshangjia` VALUES (64, '2024-04-12 07:53:48', '标题4', '咨询问题4', '2024-04-12 07:53:48', '商家账号4', '店铺名4', '账号4', '姓名4', 'upload/zixunshangjia_touxiang4.jpg,upload/zixunshangjia_touxiang5.jpg,upload/zixunshangjia_touxiang6.jpg', '');
INSERT INTO `zixunshangjia` VALUES (65, '2024-04-12 07:53:48', '标题5', '咨询问题5', '2024-04-12 07:53:48', '商家账号5', '店铺名5', '账号5', '姓名5', 'upload/zixunshangjia_touxiang5.jpg,upload/zixunshangjia_touxiang6.jpg,upload/zixunshangjia_touxiang7.jpg', '');
INSERT INTO `zixunshangjia` VALUES (66, '2024-04-12 07:53:48', '标题6', '咨询问题6', '2024-04-12 07:53:48', '商家账号6', '店铺名6', '账号6', '姓名6', 'upload/zixunshangjia_touxiang6.jpg,upload/zixunshangjia_touxiang7.jpg,upload/zixunshangjia_touxiang8.jpg', '');
INSERT INTO `zixunshangjia` VALUES (67, '2024-04-12 07:53:48', '标题7', '咨询问题7', '2024-04-12 07:53:48', '商家账号7', '店铺名7', '账号7', '姓名7', 'upload/zixunshangjia_touxiang7.jpg,upload/zixunshangjia_touxiang8.jpg,upload/zixunshangjia_touxiang9.jpg', '');
INSERT INTO `zixunshangjia` VALUES (68, '2024-04-12 07:53:48', '标题8', '咨询问题8', '2024-04-12 07:53:48', '商家账号8', '店铺名8', '账号8', '姓名8', 'upload/zixunshangjia_touxiang8.jpg,upload/zixunshangjia_touxiang9.jpg,upload/zixunshangjia_touxiang10.jpg', '');

SET FOREIGN_KEY_CHECKS = 1;
