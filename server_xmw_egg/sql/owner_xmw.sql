/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:3306
 Source Schema         : owner_xmw

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 02/03/2022 15:21:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for contracts
-- ----------------------------
DROP TABLE IF EXISTS `contracts`;
CREATE TABLE `contracts`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `contract_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '合约名字',
  `contract_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '合约地址',
  `series_id` int(10) UNSIGNED NOT NULL COMMENT '系列id series_info 表主键',
  `contract_type` int(10) UNSIGNED NOT NULL COMMENT '合约类型 1: nft 合约；2: 盲盒合约',
  `push_time` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '发布时间',
  `resource_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源服务地址',
  `status` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '合约发布状态',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `series_id`(`series_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contracts
-- ----------------------------
INSERT INTO `contracts` VALUES (1, 'dyh', '0x123456', 1, 1, 160000000, 'http://www.baidu.com', 0);

-- ----------------------------
-- Table structure for xmw_action
-- ----------------------------
DROP TABLE IF EXISTS `xmw_action`;
CREATE TABLE `xmw_action`  (
  `ActionID` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作Key',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作名称',
  PRIMARY KEY (`ActionID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of xmw_action
-- ----------------------------
INSERT INTO `xmw_action` VALUES (1, 'view', '查看');
INSERT INTO `xmw_action` VALUES (2, 'add', '添加');
INSERT INTO `xmw_action` VALUES (3, 'delete', '删除');
INSERT INTO `xmw_action` VALUES (4, 'edit', '编辑');
INSERT INTO `xmw_action` VALUES (5, 'query', '查询');
INSERT INTO `xmw_action` VALUES (6, 'detail', '详情');
INSERT INTO `xmw_action` VALUES (7, 'import', '导入');
INSERT INTO `xmw_action` VALUES (8, 'export', '导出');
INSERT INTO `xmw_action` VALUES (9, 'password', '修改密码');

-- ----------------------------
-- Table structure for xmw_advancedtable
-- ----------------------------
DROP TABLE IF EXISTS `xmw_advancedtable`;
CREATE TABLE `xmw_advancedtable`  (
  `BugID` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Bug标题',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Bug类型\r\n1、功能优化\r\n2、界面优化\r\n3、数据异常\r\n4、代码错误\r\n5、配置相关\r\n6、安装部署\r\n7、安全相关\r\n8、性能问题\r\n9、标准规范\r\n10、测试脚本\r\n11、设计缺陷\r\n12、其他\r\n\r\n\r\n',
  `degree` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '严重程度\r\n1、致命\r\n2、严重\r\n3、一般\r\n4、轻微',
  `priority` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Bug优先级\r\nP0、紧急\r\nP1、高\r\nP2、中\r\nP3、低',
  `state` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Bug状态\r\n1、已解决\r\n2、进行中\r\n3、未解决\r\n4、已关闭',
  `progress` int(10) NOT NULL COMMENT 'Bug解决进度',
  `designated` int(10) NOT NULL COMMENT '指派给谁，对应用户UserID',
  `creator` int(10) NOT NULL COMMENT '创建人，对应用户UserID',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `endTime` datetime NOT NULL COMMENT '截止日期',
  PRIMARY KEY (`BugID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of xmw_advancedtable
-- ----------------------------
INSERT INTO `xmw_advancedtable` VALUES (2, '检测线详细信息，检测结果展示同一种检测方法出现两次', '11', '2', 'P2', '2', 43, 5, 1, '2020-11-19 15:45:48', '2020-12-25 00:00:00');
INSERT INTO `xmw_advancedtable` VALUES (5, '点位状态筛选界面显示错误', '7', '1', 'P1', '3', 0, 4, 1, '2020-11-19 18:05:20', '2020-11-28 00:00:00');
INSERT INTO `xmw_advancedtable` VALUES (7, '检测线详细信息，检测结果展示同一种检测方法出现两次', '11', '3', 'P2', '1', 100, 5, 1, '2020-11-30 15:31:41', '2020-11-18 23:59:17');
INSERT INTO `xmw_advancedtable` VALUES (8, '点击编辑某一站点信息，无法跳转到该站点编辑页面', '7', '4', 'P1', '3', 0, 4, 1, '2020-11-30 15:31:41', '2020-11-18 23:59:17');
INSERT INTO `xmw_advancedtable` VALUES (10, '点位state筛选界面显示错误', '7', '1', 'P0', '2', 71, 4, 1, '2020-11-30 15:31:41', '2020-11-18 23:59:17');
INSERT INTO `xmw_advancedtable` VALUES (11, '记分时间功能完善', '4', '3', 'P0', '3', 0, 4, 1, '2020-11-30 15:31:41', '2020-11-25 23:59:17');
INSERT INTO `xmw_advancedtable` VALUES (12, '检测线详细信息，检测结果展示同一种检测方法出现两次', '11', '3', 'P2', '1', 100, 5, 1, '2020-11-30 15:31:58', '2020-11-18 23:59:17');
INSERT INTO `xmw_advancedtable` VALUES (13, '点击编辑某一站点信息，无法跳转到该站点编辑页面', '7', '4', 'P1', '3', 0, 4, 1, '2020-11-30 15:31:58', '2020-11-18 23:59:17');
INSERT INTO `xmw_advancedtable` VALUES (14, '点击‘房子’按钮，为回归预设定位置', '9', '2', 'P3', '4', 100, 5, 1, '2020-11-30 15:31:58', '2020-11-18 23:59:17');
INSERT INTO `xmw_advancedtable` VALUES (15, '点位state筛选界面显示错误', '7', '1', 'P0', '2', 71, 4, 1, '2020-11-30 15:31:58', '2020-11-18 23:59:17');
INSERT INTO `xmw_advancedtable` VALUES (16, '记分时间功能完善', '4', '3', 'P0', '3', 0, 4, 1, '2020-11-30 15:31:58', '2020-11-25 23:59:17');
INSERT INTO `xmw_advancedtable` VALUES (19, '点位state筛选界面显示错误', '4', '3', 'P0', '2', 100, 4, 1, '2021-01-19 16:07:23', '2020-11-28 00:00:00');
INSERT INTO `xmw_advancedtable` VALUES (20, '记分时间功能完善', '7', '2', 'P2', '3', 0, 5, 1, '2021-01-19 16:07:23', '2020-12-10 00:00:00');

-- ----------------------------
-- Table structure for xmw_announcement
-- ----------------------------
DROP TABLE IF EXISTS `xmw_announcement`;
CREATE TABLE `xmw_announcement`  (
  `AnnouncementID` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `author` int(10) NOT NULL COMMENT '发布作者',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `content` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `already` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '已读(保存用户ID)',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `type` int(10) NOT NULL COMMENT '公告类型',
  `status` int(10) NOT NULL COMMENT '状态 0开启,1关闭',
  `updateTime` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`AnnouncementID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of xmw_announcement
-- ----------------------------
INSERT INTO `xmw_announcement` VALUES (1, 1, '重磅！哈登被交易至篮网 组成杜兰特哈登欧文三巨头', '<p><span style=\"color: rgb(80, 80, 80);\" class=\"ql-size-large\">【重磅！哈登被交易至篮网 组成杜兰特哈登欧文三巨头】据The Athletic记者Shams Charania报道，多位消息人士透露，火箭与骑士、篮网达成三方交易，将詹姆斯·哈登交易至篮网。 多位消息人士透露，火箭将得到勒韦尔、埃克萨姆、库鲁茨、4个首轮签和4个篮网的选秀签互换权，骑士将得到阿伦和普林斯，篮网将得到哈登和骑士的2024年次轮签。其中，火箭得到的选秀权为篮网的2022年、2024年和2026年无保护首轮签，以及从骑士得到的2022年首轮签（从雄鹿得到），4个选秀签互换权为2021年、2023年、2025年和2027年。 根据后续报道，火箭将勒韦尔交易至步行者，得到奥拉迪波。</span><span style=\"color: rgb(255, 194, 102);\" class=\"ql-size-large\">（虎扑）</span></p>', '[]', '2021-01-14 14:44:00', 1, 0, '2021-01-14 14:50:09');
INSERT INTO `xmw_announcement` VALUES (2, 1, '春节放假通知来了！鼓励就地过年，多地出招……', '<h2 class=\"ql-indent-1 ql-align-center\">鼓励就地过年，多地通知，补贴、补助…齐上阵！</h2><h2 class=\"ql-indent-1 ql-align-center\"><span style=\"background-color: rgb(250, 204, 204);\">北京：倡导市民在京过年，用薪留人</span></h2><h2 class=\"ql-indent-1 ql-align-center\"><span style=\"background-color: rgb(250, 204, 204);\">今天，北京市人民政府办公厅正式发布关于2021年春节放假安排的通知，倡导市民在京过年。</span></h2><h2 class=\"ql-indent-1 ql-align-center\"><span style=\"background-color: rgb(250, 204, 204);\">1月13日，北京发布《关于做好外来务工人员留京过年期间稳定劳动关系工作的通知》，重点从用心留人、用岗留人、用薪留人、用情留人等四个方面明确了相关要求和措施，确保广大外来务工人员在京过一个欢乐祥和的春节。鼓励订单较多、生产任务重、</span>需要不间断工作的用人单位，在坚决守住职业安全底线的前提下，协商制定职工春节错峰放假、弹性休假、薪酬标准等计划，落实职工合法权益。</h2><h2 class=\"ql-indent-1 ql-align-center\">今年春节7天假期（2月11日至2月17日），2月12日、13日、14日为法定节假日，2月11日、15日、16日、17日为调休的休息日。</h2><p class=\"ql-align-center\"><br></p>', '[]', '2021-01-14 14:47:32', 2, 0, '2021-01-14 14:50:25');
INSERT INTO `xmw_announcement` VALUES (3, 1, '1月14日0时至10时 河北新增47例本土确诊病例 均在石家庄市', '<p class=\"ql-align-justify\">今天（1月14日）下午，河北省召开疫情防控工作新闻发布会，介绍新冠疫情防控相关情况。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">发布会上，相关负责人表示，1月14日0时至10时，河北新增47例本土新冠肺炎确诊病例，均在石家庄市。</p>', '[]', '2021-01-14 17:20:24', 1, 0, '2021-01-19 10:03:25');
INSERT INTO `xmw_announcement` VALUES (4, 1, '外媒：庭审曝光孟晚舟在温哥华多次收到死亡威胁“信件中有子弹”', '<p class=\"ql-align-justify\">报道称，为孟晚舟提供安保人员的狮门风险管理公司（Lions Gate Risk Managemen）首席运营官道格·梅纳德（Doug Maynard）在作证时，透露了上述消息。</p><p class=\"ql-align-justify\">梅纳德在不列颠哥伦比亚省高等法院作证时称，孟晚舟在2020年6月至7月之间，在家中收到“五封或六封”威胁信。温哥华警察局也参与了相关证物的检查。</p><p class=\"ql-align-justify\">这些信“是被邮寄过来的，可以从信封上的标记轻易辨识出来，”梅纳德还补充说，该风险管理公司与孟晚舟方面合作以确保其不受污染，并打开这些信件确认它们存在威胁，“有时候信封里面还有子弹”。</p><p class=\"ql-align-justify\">路透社称，寄信人的身份和可能动机没有被透露。</p><p class=\"ql-align-justify\">据此前媒体报道，当地时间12日，孟晚舟在加拿大温哥华的不列颠哥伦比亚省高等法院申请放宽其保释条件，但控方反对改变。法官在12日至13日听取支持和反对该项申请的论点。根据早前孟晚舟律师团透露的消息，他们希望申请包括在宵禁时间外，放宽日间监管的要求。</p><p class=\"ql-align-justify\">2018年12月1日，华为CFO孟晚舟在温哥华国际机场被加拿大警方任意拘押。针对孟晚舟事件，中国外交部发言人华春莹此前表示，事实已经充分证明，孟晚舟事件是一起严重的政治事件，美国政府炮制这一事件不是出于什么法律原因，其真正的目的是要打压中国的高科技企业，阻挠中国的科技发展，加拿大政府扮演了美方的帮凶，负有不可推卸的责任。</p><p class=\"ql-align-justify\">“孟晚舟没有违反任何加拿大法律，却被无理拘押至今，我们对此表示愤慨，也再次予以强烈的谴责。”华春莹进一步表示，中国政府维护本国公民正当合法权益的决心坚定不移，我们将会为此继续采取一切必要措施。我们再次敦促加拿大立即纠正错误，释放孟晚舟平安回到祖国。</p><p><br></p>', '[]', '2021-01-14 17:23:44', 1, 0, '2021-01-14 17:36:23');
INSERT INTO `xmw_announcement` VALUES (5, 1, '国家药监局：酚酞片、酚酞含片存严重不良反应，停止生产销售', '<p class=\"ql-align-justify\">14日，澎湃新闻（www.thepaper.cn）从国家药监局网站获悉，国家药监局近日发布了《关于注销酚酞片和酚酞含片药品注册证书的公告》。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">该公告称，根据《中华人民共和国药品管理法》第八十三条规定，国家药品监督管理局组织对酚酞片和酚酞含片进行了上市后评价，<strong>评价认为酚酞片和酚酞含片存在严重不良反应，在我国使用风险大于获益，决定自即日起停止酚酞片和酚酞含片在我国的生产、销售和使用，注销药品注册证书（药品批准文号）。已上市销售的酚酞片和酚酞含片由生产企业负责召回，召回产品由企业所在地药品监督管理部门监督销毁。</strong></p><p class=\"ql-align-justify\">据相关药品说明显示，酚酞片也常被称作“果导片”，主要用于治疗习惯性、顽固性便秘。不良反映包括引起皮炎、药疹、瘙痒、灼痛及肠炎、出血倾向等。</p><p class=\"ql-align-justify\">《中华人民共和国药品管理法》第八十三条规定，药品上市许可持有人应当对已上市药品的安全性、有效性和质量可控性定期开展上市后评价。必要时，国务院药品监督管理部门可以责令药品上市许可持有人开展上市后评价或者直接组织开展上市后评价。 经评价，对疗效不确切、不良反应大或者因其他原因危害人体健康的药品，应当注销药品注册证书。 已被注销药品注册证书的药品，不得生产或者进口、销售和使用。 已被注销药品注册证书、超过有效期等的药品，应当由药品监督管理部门监督销毁或者依法采取其他无害化处理等措施。</p><p class=\"ql-align-justify\">(本文来自澎湃新闻，更多原创资讯请下载“澎湃新闻”APP)</p><p><br></p>', '[]', '2021-01-14 17:27:11', 2, 0, NULL);
INSERT INTO `xmw_announcement` VALUES (6, 1, '央视2021年春晚语言类节目已审定 令人期待', '<p class=\"ql-align-justify\">1月14日，据知情人士透露，央视2021年春晚语言类节目审查，近日已经结束。由于今年春晚语言类节目精彩节目题材多样，取舍难度太大，剧组考虑尽量多保留。按照目前确定的节目单，本届春晚的语言类节目从数量、从艺术质量上有望创新高，令人期待。</p><p class=\"ql-align-justify\">知情人士还透露：语言类节目审查，由多位专家评委组成并现场打分。评委们除了严格审查节目，还对节目作指导。据一位评委透露，今年的央视春晚评委中并没有看到过梁宏达。而且央视春晚这几年没有设立过顾问，今年也没有顾问。</p><p><br></p>', '[]', '2021-01-14 17:29:47', 1, 0, '2021-01-15 16:03:40');

-- ----------------------------
-- Table structure for xmw_chat
-- ----------------------------
DROP TABLE IF EXISTS `xmw_chat`;
CREATE TABLE `xmw_chat`  (
  `ChatID` int(10) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `UserID` int(10) NOT NULL COMMENT '谁发出的',
  `Content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息内容',
  `ToUserID` int(10) NOT NULL COMMENT '发给谁,UserID,0代表群发',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`ChatID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of xmw_chat
-- ----------------------------
INSERT INTO `xmw_chat` VALUES (1, 1, '&#128513;', 4, '2020-12-25 15:35:11');
INSERT INTO `xmw_chat` VALUES (2, 1, '你好呀', 4, '2020-12-25 15:35:27');
INSERT INTO `xmw_chat` VALUES (3, 4, '你好，&#128672;朋友&#128513;', 1, '2020-12-25 15:35:51');
INSERT INTO `xmw_chat` VALUES (4, 4, '❇️&#128185;&#127535;️❇️❎❇️&#128185;哈哈哈', 1, '2020-12-25 15:36:17');
INSERT INTO `xmw_chat` VALUES (5, 1, '在吗&#128513;', 5, '2021-01-18 09:56:45');
INSERT INTO `xmw_chat` VALUES (6, 5, '好久不见，朋友&#129309;', 1, '2021-01-18 10:05:15');
INSERT INTO `xmw_chat` VALUES (7, 1, '过年什么时候回家', 5, '2021-01-18 10:10:41');

-- ----------------------------
-- Table structure for xmw_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `xmw_dictionary`;
CREATE TABLE `xmw_dictionary`  (
  `DictionaryID` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典名称',
  `DictionaryLabel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典标签',
  `DictionaryValue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典键值',
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典类别',
  `status` int(10) NULL DEFAULT NULL COMMENT '字典状态',
  `parentId` int(10) NULL DEFAULT NULL COMMENT '父级ID',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `createTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`DictionaryID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of xmw_dictionary
-- ----------------------------
INSERT INTO `xmw_dictionary` VALUES (1, '车牌颜色', NULL, NULL, 'cd_vlpn_color', 0, NULL, '车牌颜色CD表(高级表单)', '2021-01-18 15:37:08');
INSERT INTO `xmw_dictionary` VALUES (2, NULL, '蓝牌', '01', NULL, 0, 1, NULL, '2021-01-18 16:17:11');
INSERT INTO `xmw_dictionary` VALUES (3, NULL, '黄牌', '02', NULL, 0, 1, NULL, '2021-01-18 16:17:23');
INSERT INTO `xmw_dictionary` VALUES (4, NULL, '黑牌', '03', NULL, 0, 1, NULL, '2021-01-18 16:17:32');
INSERT INTO `xmw_dictionary` VALUES (5, NULL, '白牌', '04', NULL, 0, 1, NULL, '2021-01-18 16:17:43');
INSERT INTO `xmw_dictionary` VALUES (6, NULL, '绿牌', '05', NULL, 0, 1, NULL, '2021-01-18 16:17:59');
INSERT INTO `xmw_dictionary` VALUES (7, '燃油种类', NULL, NULL, 'cd_fuel_type', 0, NULL, '燃油种类CD表(高级表单)', '2021-01-18 16:21:22');
INSERT INTO `xmw_dictionary` VALUES (8, NULL, '汽油', 'A', NULL, 0, 7, NULL, '2021-01-18 16:21:47');
INSERT INTO `xmw_dictionary` VALUES (9, NULL, '柴油', 'B', NULL, 0, 7, NULL, '2021-01-18 16:21:59');
INSERT INTO `xmw_dictionary` VALUES (10, NULL, '电', 'C', NULL, 0, 7, NULL, '2021-01-18 16:22:11');
INSERT INTO `xmw_dictionary` VALUES (11, NULL, '混合油', 'D', NULL, 0, 7, NULL, '2021-01-18 16:22:27');
INSERT INTO `xmw_dictionary` VALUES (12, NULL, '天然气', 'E', NULL, 0, 7, NULL, '2021-01-18 16:22:53');
INSERT INTO `xmw_dictionary` VALUES (13, NULL, '液化石油气', 'F', NULL, 0, 7, NULL, '2021-01-18 16:23:05');
INSERT INTO `xmw_dictionary` VALUES (14, NULL, '甲醇', 'L', NULL, 0, 7, NULL, '2021-01-18 16:23:15');
INSERT INTO `xmw_dictionary` VALUES (15, NULL, '乙醇', 'M', NULL, 0, 7, NULL, '2021-01-18 16:23:28');
INSERT INTO `xmw_dictionary` VALUES (16, NULL, '太阳能', 'N', NULL, 0, 7, NULL, '2021-01-18 16:23:40');
INSERT INTO `xmw_dictionary` VALUES (17, NULL, '混合动力', 'O', NULL, 0, 7, NULL, '2021-01-18 16:24:08');
INSERT INTO `xmw_dictionary` VALUES (18, NULL, '氢', 'P', NULL, 0, 7, NULL, '2021-01-18 16:24:21');
INSERT INTO `xmw_dictionary` VALUES (19, NULL, '生物燃料', 'Q', NULL, 0, 7, NULL, '2021-01-18 16:24:32');
INSERT INTO `xmw_dictionary` VALUES (20, NULL, '无', 'Y', NULL, 0, 7, NULL, '2021-01-18 16:24:40');
INSERT INTO `xmw_dictionary` VALUES (21, '车辆类型', NULL, NULL, 'cd_car_type', 0, NULL, '车辆类型CD表(高级表单)', '2021-01-18 16:26:37');
INSERT INTO `xmw_dictionary` VALUES (22, NULL, '其他车辆', '0', NULL, 0, 21, NULL, '2021-01-18 16:30:31');
INSERT INTO `xmw_dictionary` VALUES (23, NULL, '小型轿车', '1', NULL, 0, 21, NULL, '2021-01-18 16:32:19');
INSERT INTO `xmw_dictionary` VALUES (24, NULL, '大型客车', '2', NULL, 0, 21, NULL, '2021-01-18 16:32:56');
INSERT INTO `xmw_dictionary` VALUES (25, NULL, '大型货车', '3', NULL, 0, 21, NULL, '2021-01-18 16:33:04');
INSERT INTO `xmw_dictionary` VALUES (26, NULL, '公交车', '4', NULL, 0, 21, NULL, '2021-01-18 16:33:12');
INSERT INTO `xmw_dictionary` VALUES (27, NULL, '中型货车', '5', NULL, 0, 21, NULL, '2021-01-18 16:33:22');
INSERT INTO `xmw_dictionary` VALUES (28, NULL, '面包车', '6', NULL, 0, 21, NULL, '2021-01-18 16:33:30');
INSERT INTO `xmw_dictionary` VALUES (29, NULL, 'SUV/MPV', '7', NULL, 0, 21, NULL, '2021-01-18 16:33:36');
INSERT INTO `xmw_dictionary` VALUES (30, NULL, '小货车', '8', NULL, 0, 21, NULL, '2021-01-18 16:33:44');
INSERT INTO `xmw_dictionary` VALUES (31, NULL, '中型客车', '9', NULL, 0, 21, NULL, '2021-01-18 16:33:55');
INSERT INTO `xmw_dictionary` VALUES (32, NULL, '二轮车', '10', NULL, 0, 21, NULL, '2021-01-18 16:34:04');
INSERT INTO `xmw_dictionary` VALUES (33, NULL, '轻型货车', '11', NULL, 0, 21, NULL, '2021-01-18 16:34:12');
INSERT INTO `xmw_dictionary` VALUES (34, NULL, '重型货车', '12', NULL, 0, 21, NULL, '2021-01-18 16:34:22');
INSERT INTO `xmw_dictionary` VALUES (35, NULL, '小型客车', '13', NULL, 0, 21, NULL, '2021-01-18 16:34:31');
INSERT INTO `xmw_dictionary` VALUES (36, NULL, '牵引车', '14', NULL, 0, 21, NULL, '2021-01-18 16:34:40');
INSERT INTO `xmw_dictionary` VALUES (37, NULL, '专项作业车', '15', NULL, 0, 21, NULL, '2021-01-18 16:34:49');
INSERT INTO `xmw_dictionary` VALUES (38, NULL, '微型货车', '16', NULL, 0, 21, NULL, '2021-01-18 16:34:58');
INSERT INTO `xmw_dictionary` VALUES (39, NULL, '皮卡车', '17', NULL, 0, 21, NULL, '2021-01-18 16:35:05');
INSERT INTO `xmw_dictionary` VALUES (40, NULL, '三轮车', '18', NULL, 0, 21, NULL, '2021-01-18 16:35:12');
INSERT INTO `xmw_dictionary` VALUES (41, '排放标准', NULL, NULL, 'cd_emissionstandard', 0, NULL, '汽车排放标准(高级表单)', '2021-01-18 16:36:44');
INSERT INTO `xmw_dictionary` VALUES (42, NULL, '国0', '00', NULL, 0, 41, NULL, '2021-01-18 16:37:07');
INSERT INTO `xmw_dictionary` VALUES (43, NULL, '国Ⅰ', '01', NULL, 0, 41, NULL, '2021-01-18 16:37:31');
INSERT INTO `xmw_dictionary` VALUES (44, NULL, '国Ⅱ', '02', NULL, 0, 41, NULL, '2021-01-18 16:37:39');
INSERT INTO `xmw_dictionary` VALUES (45, NULL, '国Ⅲ', '03', NULL, 0, 41, NULL, '2021-01-18 16:37:46');
INSERT INTO `xmw_dictionary` VALUES (46, NULL, '国Ⅳ', '04', NULL, 0, 41, NULL, '2021-01-18 16:37:53');
INSERT INTO `xmw_dictionary` VALUES (47, NULL, '国Ⅴ', '05', NULL, 0, 41, NULL, '2021-01-18 16:38:02');
INSERT INTO `xmw_dictionary` VALUES (48, NULL, '国VI', '06', NULL, 0, 41, NULL, '2021-01-18 16:38:10');
INSERT INTO `xmw_dictionary` VALUES (49, '公告类型', NULL, NULL, 'sys_announcement_type', 0, NULL, '消息公告类型', '2021-01-19 09:50:57');
INSERT INTO `xmw_dictionary` VALUES (50, NULL, '公告', '1', NULL, 0, 49, NULL, '2021-01-19 09:51:20');
INSERT INTO `xmw_dictionary` VALUES (51, NULL, '通知', '2', NULL, 0, 49, NULL, '2021-01-19 09:51:29');
INSERT INTO `xmw_dictionary` VALUES (52, 'BUG类型', NULL, NULL, 'sys_bug_type', 0, NULL, 'BUG类型CD列表(高级表格)', '2021-01-19 10:14:34');
INSERT INTO `xmw_dictionary` VALUES (53, NULL, '功能优化', '1', NULL, 0, 52, NULL, '2021-01-19 10:14:48');
INSERT INTO `xmw_dictionary` VALUES (54, NULL, '界面优化', '2', NULL, 0, 52, NULL, '2021-01-19 10:14:56');
INSERT INTO `xmw_dictionary` VALUES (55, NULL, '数据异常', '3', NULL, 0, 52, NULL, '2021-01-19 10:15:04');
INSERT INTO `xmw_dictionary` VALUES (56, NULL, '代码错误', '4', NULL, 0, 52, NULL, '2021-01-19 10:15:12');
INSERT INTO `xmw_dictionary` VALUES (57, NULL, '配置相关', '5', NULL, 0, 52, NULL, '2021-01-19 10:15:19');
INSERT INTO `xmw_dictionary` VALUES (58, NULL, '安装部署', '6', NULL, 0, 52, NULL, '2021-01-19 10:15:27');
INSERT INTO `xmw_dictionary` VALUES (59, NULL, '安全相关', '7', NULL, 0, 52, NULL, '2021-01-19 10:15:35');
INSERT INTO `xmw_dictionary` VALUES (60, NULL, '性能问题', '8', NULL, 0, 52, NULL, '2021-01-19 10:15:44');
INSERT INTO `xmw_dictionary` VALUES (61, NULL, '标准规范', '9', NULL, 0, 52, NULL, '2021-01-19 10:15:52');
INSERT INTO `xmw_dictionary` VALUES (62, NULL, '测试脚本', '10', NULL, 0, 52, NULL, '2021-01-19 10:16:01');
INSERT INTO `xmw_dictionary` VALUES (63, NULL, '设计缺陷', '11', NULL, 0, 52, NULL, '2021-01-19 10:16:08');
INSERT INTO `xmw_dictionary` VALUES (64, NULL, '其他', '12', NULL, 0, 52, NULL, '2021-01-19 10:16:14');
INSERT INTO `xmw_dictionary` VALUES (65, '严重程度', NULL, NULL, 'sys_degree_type', 0, NULL, '严重程度CD列表(高级表格)', '2021-01-19 10:17:53');
INSERT INTO `xmw_dictionary` VALUES (66, NULL, '致命', '1', NULL, 0, 65, NULL, '2021-01-19 10:18:04');
INSERT INTO `xmw_dictionary` VALUES (67, NULL, '严重', '2', NULL, 0, 65, NULL, '2021-01-19 10:18:11');
INSERT INTO `xmw_dictionary` VALUES (68, NULL, '一般', '3', NULL, 0, 65, NULL, '2021-01-19 10:18:18');
INSERT INTO `xmw_dictionary` VALUES (69, NULL, '轻微', '4', NULL, 0, 65, NULL, '2021-01-19 10:18:25');
INSERT INTO `xmw_dictionary` VALUES (70, '优先级', NULL, NULL, 'sys_priority_type', 0, NULL, '优先级CD列表(高级表格)', '2021-01-19 10:19:23');
INSERT INTO `xmw_dictionary` VALUES (71, NULL, '紧急', 'P0', NULL, 0, 70, NULL, '2021-01-19 10:19:38');
INSERT INTO `xmw_dictionary` VALUES (72, NULL, '高', 'P1', NULL, 0, 70, NULL, '2021-01-19 10:19:55');
INSERT INTO `xmw_dictionary` VALUES (73, NULL, '中', 'P2', NULL, 0, 70, NULL, '2021-01-19 10:20:06');
INSERT INTO `xmw_dictionary` VALUES (74, NULL, '低', 'P3', NULL, 0, 70, NULL, '2021-01-19 10:20:16');
INSERT INTO `xmw_dictionary` VALUES (75, '进度状态', NULL, NULL, 'sys_status_Type', 0, NULL, 'BUG进度状态CD列表(高级表格)', '2021-01-19 10:21:27');
INSERT INTO `xmw_dictionary` VALUES (76, NULL, '已解决', '1', NULL, 0, 75, NULL, '2021-01-19 10:21:37');
INSERT INTO `xmw_dictionary` VALUES (77, NULL, '进行中', '2', NULL, 0, 75, NULL, '2021-01-19 10:21:44');
INSERT INTO `xmw_dictionary` VALUES (78, NULL, '未解决', '3', NULL, 0, 75, NULL, '2021-01-19 10:21:51');
INSERT INTO `xmw_dictionary` VALUES (79, NULL, '已关闭', '4', NULL, 0, 75, NULL, '2021-01-19 10:21:59');
INSERT INTO `xmw_dictionary` VALUES (80, '用户性别', NULL, NULL, 'sys_user_sex', 0, NULL, '用户性别(个人中心、用户列表)', '2021-01-19 17:12:31');
INSERT INTO `xmw_dictionary` VALUES (81, NULL, '女', '0', NULL, 0, 80, NULL, '2021-01-19 17:12:57');
INSERT INTO `xmw_dictionary` VALUES (82, NULL, '男', '1', NULL, 0, 80, NULL, '2021-01-19 17:13:04');

-- ----------------------------
-- Table structure for xmw_logs
-- ----------------------------
DROP TABLE IF EXISTS `xmw_logs`;
CREATE TABLE `xmw_logs`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `CnName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '中文名',
  `action` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作内容',
  `IP` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP',
  `createTime` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '页面路径',
  `userAgent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户代理',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of xmw_logs
-- ----------------------------

-- ----------------------------
-- Table structure for xmw_menu
-- ----------------------------
DROP TABLE IF EXISTS `xmw_menu`;
CREATE TABLE `xmw_menu`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '路由名称',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '路由url',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'vue文件路径',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '国际化字段',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标icon',
  `keepAlive` int(11) NOT NULL COMMENT '缓存该路由，1缓存，0不缓存',
  `permission` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户权限Key',
  `parentId` int(11) NULL DEFAULT NULL COMMENT '父级ID',
  `hidden` int(11) NOT NULL COMMENT '是否隐藏，1不隐藏，0隐藏',
  `redirect` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由重定向',
  `createTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `subTitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中文标题',
  `actions` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作权限',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of xmw_menu
-- ----------------------------
INSERT INTO `xmw_menu` VALUES (1, 'index', '/', 'BasicLayout', 'menu.home', 'home', 1, 'index', 0, 1, '/workbench', '2020-10-12 18:11:23', '主页', NULL);
INSERT INTO `xmw_menu` VALUES (2, 'workbench', '/workbench', 'workbench/WorkBench', 'menu.workbench', 'workbenchIcon', 1, 'workbench', 1, 1, NULL, '2021-01-12 17:48:25', '工作台', '[{\"action\":\"view\",\"describe\":\"查看\"}]');
INSERT INTO `xmw_menu` VALUES (3, 'integrated', '/integrated', 'RouteView', 'menu.integrated', 'integratedIcon', 1, 'integrated', 1, 1, '/integrated/advancedForm', '2021-01-12 18:10:15', '综合组件', NULL);
INSERT INTO `xmw_menu` VALUES (4, 'advancedForm', '/integrated/advancedForm', 'integrated/advancedForm', 'menu.integrated.advancedForm', 'formIcon', 1, 'advancedForm', 3, 1, NULL, '2021-01-13 09:44:35', '高级表单', '[{\"action\":\"view\",\"describe\":\"查看\"},{\"action\":\"edit\",\"describe\":\"编辑\"},{\"action\":\"delete\",\"describe\":\"删除\"},{\"action\":\"add\",\"describe\":\"添加\"}]');
INSERT INTO `xmw_menu` VALUES (5, 'personal', '/personal/center', 'personal/center', 'menu.personal.center', 'idcard', 1, 'personal', 1, 1, NULL, '2021-01-13 10:01:36', '个人中心', '[{\"action\":\"add\",\"describe\":\"添加\"},{\"action\":\"edit\",\"describe\":\"编辑\"},{\"action\":\"password\",\"describe\":\"修改密码\"},{\"action\":\"view\",\"describe\":\"查看\"}]');
INSERT INTO `xmw_menu` VALUES (6, 'system', '/system', 'RouteView', 'menu.system', 'setting', 1, 'system', 1, 1, '/system/userList', '2020-10-13 10:09:50', '系统设置', NULL);
INSERT INTO `xmw_menu` VALUES (7, 'user', '/system/user', 'system/user', 'menu.system.user', 'team', 1, 'user', 6, 1, NULL, '2021-01-21 14:26:07', '用户列表', '[{\"action\":\"add\",\"describe\":\"添加\"},{\"action\":\"delete\",\"describe\":\"删除\"},{\"action\":\"edit\",\"describe\":\"编辑\"},{\"action\":\"query\",\"describe\":\"查询\"},{\"action\":\"view\",\"describe\":\"查看\"}]');
INSERT INTO `xmw_menu` VALUES (8, 'menu', '/system/menu', 'system/menu', 'menu.system.menu', 'unordered-list', 0, 'menu', 6, 1, NULL, '2021-01-13 14:12:48', '菜单管理', '[{\"action\":\"add\",\"describe\":\"添加\"},{\"action\":\"delete\",\"describe\":\"删除\"},{\"action\":\"edit\",\"describe\":\"编辑\"},{\"action\":\"query\",\"describe\":\"查询\"},{\"action\":\"view\",\"describe\":\"查看\"}]');
INSERT INTO `xmw_menu` VALUES (9, 'role', '/system/role', 'system/role', 'menu.system.role', 'solution', 1, 'role', 6, 1, NULL, '2021-01-21 14:27:07', '角色管理', '[{\"action\":\"add\",\"describe\":\"添加\"},{\"action\":\"delete\",\"describe\":\"删除\"},{\"action\":\"edit\",\"describe\":\"编辑\"},{\"action\":\"query\",\"describe\":\"查询\"},{\"action\":\"view\",\"describe\":\"查看\"}]');
INSERT INTO `xmw_menu` VALUES (10, 'permission', '/system/permission', 'system/permission', 'menu.system.permission', 'key', 1, 'permission', 6, 1, NULL, '2021-01-21 14:27:31', '权限管理', '[{\"action\":\"edit\",\"describe\":\"编辑\"},{\"action\":\"query\",\"describe\":\"查询\"},{\"action\":\"view\",\"describe\":\"查看\"}]');
INSERT INTO `xmw_menu` VALUES (11, 'logs', '/system/logs', 'system/logs', 'menu.system.logs', 'profile', 1, 'logs', 6, 1, NULL, '2021-01-12 16:25:27', '操作日志', '[{\"action\":\"query\",\"describe\":\"查询\"},{\"action\":\"view\",\"describe\":\"查看\"}]');
INSERT INTO `xmw_menu` VALUES (12, 'announcement', '/integrated/announcement', 'integrated/announcement', 'menu.integrated.Announcement', 'notificationIcon', 1, 'announcement', 3, 1, NULL, '2021-01-13 15:58:12', '通知公告', '[{\"action\":\"view\",\"describe\":\"查看\"},{\"action\":\"query\",\"describe\":\"查询\"},{\"action\":\"delete\",\"describe\":\"删除\"},{\"action\":\"edit\",\"describe\":\"编辑\"}]');
INSERT INTO `xmw_menu` VALUES (13, 'organizational', '/integrated/organizational', 'integrated/organizational', 'menu.integrated.organizational', 'apartmentIcon', 1, 'organizational', 3, 1, NULL, '2021-01-13 09:49:07', '组织架构', '[{\"action\":\"view\",\"describe\":\"查看\"},{\"action\":\"delete\",\"describe\":\"删除\"},{\"action\":\"edit\",\"describe\":\"编辑\"},{\"action\":\"query\",\"describe\":\"查询\"},{\"action\":\"add\",\"describe\":\"添加\"}]');
INSERT INTO `xmw_menu` VALUES (14, 'advancedTable', '/integrated/advancedTable', 'integrated/advancedTable', 'menu.integrated.advancedTable', 'table', 1, 'advancedTable', 3, 1, NULL, '2021-01-19 11:19:32', '高级表格', '[{\"action\":\"view\",\"describe\":\"查看\"},{\"action\":\"query\",\"describe\":\"查询\"},{\"action\":\"edit\",\"describe\":\"编辑\"},{\"action\":\"delete\",\"describe\":\"删除\"},{\"action\":\"add\",\"describe\":\"添加\"},{\"action\":\"import\",\"describe\":\"导入\"},{\"action\":\"export\",\"describe\":\"导出\"}]');
INSERT INTO `xmw_menu` VALUES (15, 'features', '/features', 'RouteView', 'menu.features', 'bars', 1, 'features', 1, 1, '/features/qrcode', '2020-12-10 14:23:45', '功能页', NULL);
INSERT INTO `xmw_menu` VALUES (16, 'qrcode', '/features/qrcode', 'features/qrcode', 'menu.features.qrcode', 'qrcode', 1, 'qrcode', 15, 1, NULL, '2021-01-12 16:25:51', '生成二维码', '[{\"action\":\"view\",\"describe\":\"查看\"},{\"action\":\"delete\",\"describe\":\"删除\"},{\"action\":\"edit\",\"describe\":\"编辑\"},{\"action\":\"add\",\"describe\":\"添加\"}]');
INSERT INTO `xmw_menu` VALUES (17, 'pictureEffect', '/toolpage/pictureEffect', 'toolpage/pictureEffect', 'menu.toolpage.pictureEffect', 'pictureEffectIcon', 1, 'pictureEffect', 24, 1, NULL, '2021-01-13 10:48:48', '图片效果', '[{\"action\":\"view\",\"describe\":\"查看\"}]');
INSERT INTO `xmw_menu` VALUES (18, 'multistage', '/toolpage/multistage', 'RouteView', 'menu.toolpage.multistage', 'multistageIcon', 1, 'multistage', 24, 1, '/toolpage/multistage/menu1/menu1-1', '2021-01-13 14:14:09', '嵌套路由', NULL);
INSERT INTO `xmw_menu` VALUES (19, 'quillEditor', '/features/quillEditor', 'features/quillEditor', 'menu.features.quillEditor', 'quillEditorIcon', 1, 'quillEditor', 15, 1, NULL, '2021-01-13 10:03:55', '富文本编辑器', '[{\"action\":\"view\",\"describe\":\"查看\"}]');
INSERT INTO `xmw_menu` VALUES (20, 'customDirective', '/features/customDirective', 'features/customDirective', 'menu.features.customDirective', 'customDirectiveIcon', 1, 'customDirective', 15, 1, NULL, '2021-01-13 10:07:58', '自定义Vue指令', '[{\"action\":\"view\",\"describe\":\"查看\"}]');
INSERT INTO `xmw_menu` VALUES (21, 'imageRecognition', '/features/imageRecognition', 'features/imageRecognition', 'menu.features.imageRecognition', 'imageRecognitionIcon', 1, 'imageRecognition', 15, 1, NULL, '2021-01-13 10:10:16', '图像识别', '[{\"action\":\"view\",\"describe\":\"查看\"}]');
INSERT INTO `xmw_menu` VALUES (22, 'chatRoom', '/features/chatRoom', 'features/chatRoom', 'menu.features.chatRoom', 'chatRoomIcon', 1, 'chatRoom', 15, 1, NULL, '2021-01-13 10:11:42', '聊天室', '[{\"action\":\"view\",\"describe\":\"查看\"}]');
INSERT INTO `xmw_menu` VALUES (23, 'advancedDetails', '/integrated/advancedDetails', 'integrated/advancedDetails', 'menu.integrated.advancedDetails', 'detailsIcon', 1, 'advancedDetails', 3, 1, NULL, '2021-01-19 11:19:50', '高级详情', '[{\"action\":\"view\",\"describe\":\"查看\"}]');
INSERT INTO `xmw_menu` VALUES (24, 'toolpage', '/toolpage', 'RouteView', 'menu.toolpage', 'tool', 1, 'toolpage', 1, 1, '/toolpage/pictureEffect', '2021-01-13 11:27:28', '工具页', NULL);
INSERT INTO `xmw_menu` VALUES (25, 'waterfall', '/features/waterfall', 'features/waterfall', 'menu.features.waterfall', 'waterfallIcon', 1, 'waterfall', 15, 1, NULL, '2021-01-13 10:13:13', '瀑布流', '[{\"action\":\"view\",\"describe\":\"查看\"}]');
INSERT INTO `xmw_menu` VALUES (26, 'musicPlayer', '/features/musicPlayer', 'features/musicPlayer', 'menu.features.musicPlayer', 'musicPlayerIcon', 1, 'musicPlayer', 15, 1, NULL, '2021-01-13 10:15:37', '音乐播放器', '[{\"action\":\"view\",\"describe\":\"查看\"}]');
INSERT INTO `xmw_menu` VALUES (27, 'videoPlayer', '/features/videoPlayer', 'features/videoPlayer', 'menu.features.videoPlayer', 'videoPlayerIcon', 1, 'videoPlayer', 15, 1, NULL, '2021-01-13 10:22:48', '视频播放器', '[{\"action\":\"view\",\"describe\":\"查看\"}]');
INSERT INTO `xmw_menu` VALUES (28, 'verify', '/toolpage/verify', 'toolpage/verify', 'menu.toolpage.verify', 'block', 1, 'verify', 24, 1, NULL, '2021-01-12 16:38:05', '验证码', '[{\"action\":\"view\",\"describe\":\"查看\"}]');
INSERT INTO `xmw_menu` VALUES (29, 'guide', '/toolpage/guide', 'toolpage/guide', 'menu.toolpage.guide', 'guideIcon', 1, 'guide', 24, 1, NULL, '2021-01-13 14:17:38', '引导页', '[{\"action\":\"view\",\"describe\":\"查看\"}]');
INSERT INTO `xmw_menu` VALUES (30, 'outerChain', 'https://gitee.com/xmwjackey/vue-admin-xmw-pro', 'toolpage/outerChain', 'menu.toolpage.outerChain', 'link', 1, 'outerChain', 24, 1, NULL, '2021-01-12 16:40:50', '外链', '[{\"action\":\"view\",\"describe\":\"查看\"}]');
INSERT INTO `xmw_menu` VALUES (31, 'cardFrom', '/toolpage/cardFrom', 'toolpage/cardFrom', 'menu.toolpage.cardFrom', 'cardFromIcon', 1, 'cardFrom', 24, 1, NULL, '2021-01-13 14:18:53', '信用卡表单', '[{\"action\":\"view\",\"describe\":\"查看\"}]');
INSERT INTO `xmw_menu` VALUES (32, 'menu1', '/toolpage/multistage/menu1', 'toolpage/multistage/menu1/menu1-1/index', 'menu.toolpage.multistage.menu1', 'menu', 1, 'menu1', 18, 1, '/toolpage/multistage/menu1/menu1-1', '2021-01-13 14:13:12', '菜单1', '[{\"action\":\"view\",\"describe\":\"查看\"}]');
INSERT INTO `xmw_menu` VALUES (33, 'menu2', '/toolpage/multistage/menu2', 'toolpage/multistage/menu2/index', 'menu.toolpage.multistage.menu2', 'menu', 1, 'menu2', 18, 1, NULL, '2021-01-13 14:13:04', '菜单2', '[{\"action\":\"view\",\"describe\":\"查看\"}]');
INSERT INTO `xmw_menu` VALUES (34, 'menu11', '/toolpage/multistage/menu1/menu1-1', 'toolpage/multistage/menu1/menu1-1/index', 'menu.toolpage.multistage.menu1.menu1-1', 'menu', 1, 'menu11', 32, 1, NULL, '2021-01-13 14:13:19', '菜单1-1', '[{\"action\":\"view\",\"describe\":\"查看\"}]');
INSERT INTO `xmw_menu` VALUES (35, 'dictionary', '/system/dictionary', 'system/dictionary', 'menu.system.dictionary', 'dictionaryIcon', 1, 'dictionary', 6, 1, NULL, '2021-01-13 15:33:31', '字典管理', '[{\"action\":\"view\",\"describe\":\"查看\"},{\"action\":\"add\",\"describe\":\"添加\"},{\"action\":\"delete\",\"describe\":\"删除\"},{\"action\":\"query\",\"describe\":\"查询\"},{\"action\":\"edit\",\"describe\":\"编辑\"}]');
INSERT INTO `xmw_menu` VALUES (36, 'lazyLoad', '/features/lazyLoad', 'features/lazyLoad', 'menu.features.lazyLoad', 'lazyLoadIcon', 1, 'lazyLoad', 15, 1, NULL, '2021-01-15 17:02:20', '懒加载', '[{\"action\":\"view\",\"describe\":\"查看\"}]');

-- ----------------------------
-- Table structure for xmw_organization
-- ----------------------------
DROP TABLE IF EXISTS `xmw_organization`;
CREATE TABLE `xmw_organization`  (
  `OrganizationID` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `parentId` int(11) NULL DEFAULT NULL COMMENT '父级ID',
  `createTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `category` int(10) NOT NULL COMMENT '1:部门,2岗位',
  `status` int(10) NOT NULL COMMENT '0开启,1关闭',
  PRIMARY KEY (`OrganizationID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of xmw_organization
-- ----------------------------
INSERT INTO `xmw_organization` VALUES (1, '阿里巴巴', NULL, '2021-01-22 13:41:22', 1, 0);
INSERT INTO `xmw_organization` VALUES (2, '市场部', 1, '2021-01-15 10:36:20', 1, 0);
INSERT INTO `xmw_organization` VALUES (3, '财务部', 1, '2021-01-15 10:53:06', 1, 0);
INSERT INTO `xmw_organization` VALUES (4, '董事会', NULL, '2021-01-15 10:53:52', 2, 0);
INSERT INTO `xmw_organization` VALUES (5, '总经理', 4, '2021-01-15 10:54:11', 2, 0);
INSERT INTO `xmw_organization` VALUES (6, '行政人事部', 1, '2021-01-15 10:58:55', 1, 0);
INSERT INTO `xmw_organization` VALUES (7, '研发部经理', 5, '2021-01-15 11:06:25', 2, 0);
INSERT INTO `xmw_organization` VALUES (8, '财务部经理', 5, '2021-01-15 11:06:50', 2, 0);
INSERT INTO `xmw_organization` VALUES (9, '研发部', 1, '2021-01-15 11:11:45', 1, 0);
INSERT INTO `xmw_organization` VALUES (10, 'LIMS', 9, '2021-01-15 11:12:05', 1, 0);
INSERT INTO `xmw_organization` VALUES (11, '移动源', 9, '2021-01-15 11:12:34', 1, 0);
INSERT INTO `xmw_organization` VALUES (12, '自动监测', 9, '2021-01-15 11:12:52', 1, 0);
INSERT INTO `xmw_organization` VALUES (13, '环检组', 11, '2021-01-15 11:13:20', 1, 0);
INSERT INTO `xmw_organization` VALUES (14, '综合组', 11, '2021-01-15 11:13:39', 1, 0);
INSERT INTO `xmw_organization` VALUES (15, '环检组长', 7, '2021-01-15 11:58:16', 2, 0);
INSERT INTO `xmw_organization` VALUES (16, '开发工程师', 7, '2021-01-15 11:58:42', 2, 0);
INSERT INTO `xmw_organization` VALUES (17, 'java工程师', 7, '2021-01-15 13:37:17', 2, 0);
INSERT INTO `xmw_organization` VALUES (18, '测试工程师', 7, '2021-01-15 13:50:48', 2, 0);
INSERT INTO `xmw_organization` VALUES (19, '开发主管', 7, '2021-01-15 13:58:25', 2, 0);
INSERT INTO `xmw_organization` VALUES (20, '华南大区', 1, '2021-01-20 18:06:20', 1, 0);
INSERT INTO `xmw_organization` VALUES (21, '会计', 8, '2021-01-15 14:56:44', 2, 0);

-- ----------------------------
-- Table structure for xmw_role
-- ----------------------------
DROP TABLE IF EXISTS `xmw_role`;
CREATE TABLE `xmw_role`  (
  `roleID` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `roleName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `status` int(10) NOT NULL COMMENT '是否开启，1开启，0禁用',
  `roleList` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色权限',
  `createTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime NULL DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`roleID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of xmw_role
-- ----------------------------
INSERT INTO `xmw_role` VALUES (17, '超级管理员', 1, '[{\"permissionId\":\"workbench\",\"permissionName\":\"工作台\",\"actionList\":[\"view\"]},{\"permissionId\":\"integrated\",\"permissionName\":\"综合组件\",\"actionList\":[]},{\"permissionId\":\"advancedForm\",\"permissionName\":\"高级表单\",\"actionList\":[\"view\",\"edit\",\"delete\",\"add\"]},{\"permissionId\":\"announcement\",\"permissionName\":\"通知公告\",\"actionList\":[\"view\",\"query\",\"delete\",\"edit\"]},{\"permissionId\":\"organizational\",\"permissionName\":\"组织架构\",\"actionList\":[\"view\",\"delete\",\"edit\",\"query\",\"add\"]},{\"permissionId\":\"advancedTable\",\"permissionName\":\"高级表格\",\"actionList\":[\"view\",\"query\",\"edit\",\"delete\",\"add\",\"import\",\"export\"]},{\"permissionId\":\"advancedDetails\",\"permissionName\":\"高级详情\",\"actionList\":[\"view\"]},{\"permissionId\":\"personal\",\"permissionName\":\"个人中心\",\"actionList\":[\"add\",\"edit\",\"password\",\"view\"]},{\"permissionId\":\"system\",\"permissionName\":\"系统设置\",\"actionList\":[]},{\"permissionId\":\"user\",\"permissionName\":\"用户列表\",\"actionList\":[\"add\",\"delete\",\"edit\",\"query\",\"view\"]},{\"permissionId\":\"menu\",\"permissionName\":\"菜单管理\",\"actionList\":[\"add\",\"delete\",\"edit\",\"query\",\"view\"]},{\"permissionId\":\"role\",\"permissionName\":\"角色管理\",\"actionList\":[\"add\",\"delete\",\"edit\",\"query\",\"view\"]},{\"permissionId\":\"permission\",\"permissionName\":\"权限管理\",\"actionList\":[\"edit\",\"query\",\"view\"]},{\"permissionId\":\"logs\",\"permissionName\":\"操作日志\",\"actionList\":[\"query\",\"view\"]},{\"permissionId\":\"dictionary\",\"permissionName\":\"字典管理\",\"actionList\":[\"view\",\"add\",\"delete\",\"query\",\"edit\"]},{\"permissionId\":\"features\",\"permissionName\":\"功能页\",\"actionList\":[]},{\"permissionId\":\"qrcode\",\"permissionName\":\"生成二维码\",\"actionList\":[\"view\",\"delete\",\"edit\",\"add\"]},{\"permissionId\":\"quillEditor\",\"permissionName\":\"富文本编辑器\",\"actionList\":[\"view\"]},{\"permissionId\":\"customDirective\",\"permissionName\":\"自定义Vue指令\",\"actionList\":[\"view\"]},{\"permissionId\":\"imageRecognition\",\"permissionName\":\"图像识别\",\"actionList\":[\"view\"]},{\"permissionId\":\"chatRoom\",\"permissionName\":\"聊天室\",\"actionList\":[\"view\"]},{\"permissionId\":\"waterfall\",\"permissionName\":\"瀑布流\",\"actionList\":[\"view\"]},{\"permissionId\":\"musicPlayer\",\"permissionName\":\"音乐播放器\",\"actionList\":[\"view\"]},{\"permissionId\":\"videoPlayer\",\"permissionName\":\"视频播放器\",\"actionList\":[\"view\"]},{\"permissionId\":\"lazyLoad\",\"permissionName\":\"懒加载\",\"actionList\":[\"view\"]},{\"permissionId\":\"toolpage\",\"permissionName\":\"工具页\",\"actionList\":[]},{\"permissionId\":\"pictureEffect\",\"permissionName\":\"图片效果\",\"actionList\":[\"view\"]},{\"permissionId\":\"multistage\",\"permissionName\":\"嵌套路由\",\"actionList\":[]},{\"permissionId\":\"menu1\",\"permissionName\":\"菜单1\",\"actionList\":[]},{\"permissionId\":\"menu11\",\"permissionName\":\"菜单1-1\",\"actionList\":[\"view\"]},{\"permissionId\":\"menu2\",\"permissionName\":\"菜单2\",\"actionList\":[\"view\"]},{\"permissionId\":\"verify\",\"permissionName\":\"验证码\",\"actionList\":[\"view\"]},{\"permissionId\":\"guide\",\"permissionName\":\"引导页\",\"actionList\":[\"view\"]},{\"permissionId\":\"outerChain\",\"permissionName\":\"外链\",\"actionList\":[\"view\"]},{\"permissionId\":\"cardFrom\",\"permissionName\":\"信用卡表单\",\"actionList\":[\"view\"]}]', '2020-10-20 13:39:47', '2021-01-21 14:34:32');
INSERT INTO `xmw_role` VALUES (18, '普通员工', 1, '[{\"permissionId\":\"organizational\",\"permissionName\":\"组织架构\",\"actionList\":[\"view\",\"delete\",\"edit\",\"query\",\"add\"]},{\"permissionId\":\"integrated\",\"permissionName\":\"综合组件\",\"actionList\":[]},{\"permissionId\":\"personal\",\"permissionName\":\"个人中心\",\"actionList\":[\"edit\",\"add\",\"password\",\"view\"]},{\"permissionId\":\"chatRoom\",\"permissionName\":\"聊天室\",\"actionList\":[\"view\"]},{\"permissionId\":\"workbench\",\"permissionName\":\"工作台\",\"actionList\":[\"view\"]},{\"permissionId\":\"advancedForm\",\"permissionName\":\"高级表单\",\"actionList\":[\"view\",\"edit\",\"delete\",\"add\"]},{\"permissionId\":\"announcement\",\"permissionName\":\"通知公告\",\"actionList\":[\"view\",\"query\",\"delete\",\"edit\"]},{\"permissionId\":\"advancedTable\",\"permissionName\":\"高级表格\",\"actionList\":[\"view\",\"query\",\"edit\",\"delete\",\"add\",\"import\",\"export\"]},{\"permissionId\":\"advancedDetails\",\"permissionName\":\"高级详情\",\"actionList\":[\"view\"]},{\"permissionId\":\"features\",\"permissionName\":\"功能页\",\"actionList\":[]},{\"permissionId\":\"qrcode\",\"permissionName\":\"生成二维码\",\"actionList\":[\"view\",\"delete\",\"edit\",\"add\"]},{\"permissionId\":\"quillEditor\",\"permissionName\":\"富文本编辑器\",\"actionList\":[\"view\"]},{\"permissionId\":\"customDirective\",\"permissionName\":\"自定义Vue指令\",\"actionList\":[\"view\"]},{\"permissionId\":\"imageRecognition\",\"permissionName\":\"图像识别\",\"actionList\":[\"view\"]},{\"permissionId\":\"waterfall\",\"permissionName\":\"瀑布流\",\"actionList\":[\"view\"]},{\"permissionId\":\"musicPlayer\",\"permissionName\":\"音乐播放器\",\"actionList\":[\"view\"]},{\"permissionId\":\"videoPlayer\",\"permissionName\":\"视频播放器\",\"actionList\":[\"view\"]},{\"permissionId\":\"lazyLoad\",\"permissionName\":\"懒加载\",\"actionList\":[\"view\"]}]', '2020-10-20 13:44:28', '2021-01-19 17:28:57');

-- ----------------------------
-- Table structure for xmw_user
-- ----------------------------
DROP TABLE IF EXISTS `xmw_user`;
CREATE TABLE `xmw_user`  (
  `UserID` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `CnName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中文名',
  `Phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `Email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电子邮箱',
  `SEX` int(10) NOT NULL COMMENT '性别，0：女，1：男',
  `Status` int(10) NOT NULL COMMENT '状态，0：禁用，1：启用',
  `CreateTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `UpdateLastTime` datetime NULL DEFAULT NULL COMMENT '最后一次修改时间',
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户token信息',
  `LoginIP` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后一次登录IP',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像路径',
  `LoginLastTime` datetime NULL DEFAULT NULL COMMENT '最后一次登录时间',
  `motto` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '座右铭',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标签',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作地址',
  `SectorJobs` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '岗位',
  `department` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门',
  `roleList` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色权限',
  `loginNum` int(10) NULL DEFAULT NULL COMMENT '登录次数',
  PRIMARY KEY (`UserID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of xmw_user
-- ----------------------------
INSERT INTO `xmw_user` VALUES (1, 'admin', 'd9dPYdz8+ZmsXaEXhJ3dSg==', '阿豪', '17300000000', 'ceshi@qq.com', 0, 1, '2020-09-09 10:28:58', '2021-01-22 13:57:30', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImFkbWluIiwicGFzc3dvcmQiOiJkOWRQWWR6OCtabXNYYUVYaEozZFNnPT0iLCJ2ZXJpZnlDb2RlIjoia2djZiIsImlhdCI6MTY0NjIwNTE4NywiZXhwIjoxNjQ2NDY0Mzg3fQ.jBnUavxY-z2RCL5G44GGLOEaWZhHNOe4VHe2hxFQ69s', '127.0.0.1', 'http://127.0.0.1:7001/public/admin/20210115162407_9573.jpg', '2022-03-02 15:13:07', '我曾踏足山巅，也曾进入低谷，二者都让我受益良多。', '[\"哈哈哈\",\"GG\",\"疯婆子\",\"很有想法的\",\"辣~\",\"川妹子\",\"海纳百川\",\"小家伙，很调皮\",\"加油干\"]', '[\"广东省\",\"广州市\",\"天河区\"]', '[\"董事会\",\"总经理\",\"研发部经理\",\"java工程师\"]', '[\"阿里巴巴\",\"研发部\",\"移动源\",\"环检组\"]', '[\"超级管理员\"]', 228);
INSERT INTO `xmw_user` VALUES (4, 'cc', 'PO8O6947Ka7F2gzi/5uQTQ==', '曹操', '17300000000', 'caocao@163.com', 1, 1, '2020-10-19 11:09:01', '2020-10-23 11:08:51', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImNjIiwicGFzc3dvcmQiOiJQTzhPNjk0N0thN0YyZ3ppLzV1UVRRPT0iLCJhbGl5dW5WZXJpZnkiOnRydWUsImlhdCI6MTYwODg3NjE3OSwiZXhwIjoxNjA5MTM1Mzc5fQ.mDEt_TXcXLtq8NJhBnG0OM4jWaec_2Zj45podUmD2_Y', '127.0.0.1', 'http://127.0.0.1:7001/public/admin/20201021161551_8626.jpg', '2020-12-25 14:02:59', '我是三国时期霸主', '[\"草船借箭\"]', '[\"天津市\",\"河东区\"]', '[\"董事会\",\"总经理\",\"研发部经理\",\"开发工程师\"]', '[\"阿里巴巴\",\"行政人事部\"]', '[\"普通员工\"]', 61);
INSERT INTO `xmw_user` VALUES (5, 'lb', 'lBI07erBWIUxa0D+EnAtKw==', '李白', NULL, NULL, 1, 1, '2020-11-19 10:57:48', NULL, NULL, '127.0.0.1', '', '2021-01-19 17:54:49', NULL, NULL, '[\"河北省\",\"秦皇岛市\",\"北戴河区\"]', '[\"董事会\",\"总经理\",\"研发部经理\",\"开发主管\"]', '[\"阿里巴巴\",\"研发部\",\"移动源\",\"环检组\"]', '[\"普通员工\"]', 9);
INSERT INTO `xmw_user` VALUES (6, 'zzl', 'sgpE4QH1fhkby3bNul93ug==', '赵子龙', NULL, NULL, 1, 0, '2021-01-15 16:17:41', NULL, NULL, NULL, '', NULL, NULL, NULL, '[\"北京市\",\"西城区\"]', '[\"董事会\",\"总经理\",\"财务部经理\",\"会计\"]', '[\"阿里巴巴\",\"华南大区\"]', '[\"普通员工\"]', NULL);

-- ----------------------------
-- Table structure for xmw_vehicleinfo
-- ----------------------------
DROP TABLE IF EXISTS `xmw_vehicleinfo`;
CREATE TABLE `xmw_vehicleinfo`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `VLPN` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车牌号码',
  `VLPNColor` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车牌颜色',
  `vehicleType` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车辆类型',
  `emissionstandard` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '排放标准',
  `seating` int(10) NULL DEFAULT NULL COMMENT '座位数',
  `FuleType` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '燃油类型',
  `owner` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车主',
  `registrationTime` datetime NULL DEFAULT NULL COMMENT '登记时间',
  `brand` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品牌',
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `createTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of xmw_vehicleinfo
-- ----------------------------
INSERT INTO `xmw_vehicleinfo` VALUES (1, '浙A88888', '02', '3', '01', 5, 'A', '马云', '2020-12-10 00:00:00', '迈巴赫', '[\"天津市\",\"和平区\"]', '2020-12-03 00:00:00');
INSERT INTO `xmw_vehicleinfo` VALUES (6, '粤B88888', '02', '5', '00', 5, 'D', '马化腾', '2020-12-02 00:00:00', '宾利', '[\"广东省\",\"深圳市\",\"南山区\"]', '2020-12-04 00:00:00');
INSERT INTO `xmw_vehicleinfo` VALUES (7, '粤A88888', '01', '1', '01', 1, 'F', '王', '2020-12-04 00:00:00', '布加迪', '[\"广东省\",\"广州市\",\"天河区\"]', '2020-12-04 00:00:00');

SET FOREIGN_KEY_CHECKS = 1;
