/*
 Navicat Premium Dump SQL

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80012 (8.0.12)
 Source Host           : localhost:3306
 Source Schema         : project040

 Target Server Type    : MySQL
 Target Server Version : 80012 (8.0.12)
 File Encoding         : 65001

*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pro_biaozhun
-- ----------------------------
DROP TABLE IF EXISTS `pro_biaozhun`;
CREATE TABLE `pro_biaozhun`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '类型',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '收费标准',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '收费标准' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_biaozhun
-- ----------------------------
INSERT INTO `pro_biaozhun` VALUES (1, '水费', 40.00, '2025-03-30 10:37:11', '1', '2025-03-30 14:17:25', '1');
INSERT INTO `pro_biaozhun` VALUES (2, '电费', 1.50, '2025-03-30 10:37:23', '1', '2025-03-30 13:18:59', '1');

-- ----------------------------
-- Table structure for pro_car_list
-- ----------------------------
DROP TABLE IF EXISTS `pro_car_list`;
CREATE TABLE `pro_car_list`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `car_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '车位编号',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '状态',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '管理费',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '车位管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_car_list
-- ----------------------------
INSERT INTO `pro_car_list` VALUES (1, 'A-002', '已售', 80.00, '2025-03-29 23:59:09', '1');
INSERT INTO `pro_car_list` VALUES (2, 'A-001', '未售', 100.00, '2025-03-29 23:59:59', '1');
INSERT INTO `pro_car_list` VALUES (3, 'A-003', '未售', 300.00, '2025-03-30 00:00:07', '1');
INSERT INTO `pro_car_list` VALUES (4, 'A-004', '已售', 40.00, '2025-03-30 00:00:26', '1');
INSERT INTO `pro_car_list` VALUES (5, 'B-005', '未售', 70.00, '2025-03-30 00:00:36', '1');
INSERT INTO `pro_car_list` VALUES (6, 'B-006', '已售', 1092.00, '2025-03-30 14:15:52', '1');

-- ----------------------------
-- Table structure for pro_house
-- ----------------------------
DROP TABLE IF EXISTS `pro_house`;
CREATE TABLE `pro_house`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '照片',
  `huxing` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '户型',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `characteristic` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '特色',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '租房发布' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_house
-- ----------------------------
INSERT INTO `pro_house` VALUES (1, '/profile/upload/2025/03/30/240-800x600_20250330100806A005.jpg', '2-4-106/三室两厅', 5000.00, '民水民电', '1', '2025-03-30 10:08:32', '已租');
INSERT INTO `pro_house` VALUES (2, '/profile/upload/2025/03/30/541-800x600_20250330101316A006.jpg', '2-4-107', 1000.00, '空调，冰箱，洗衣机', '1', '2025-03-30 10:13:49', '已租');
INSERT INTO `pro_house` VALUES (3, '/profile/upload/2025/03/30/721-800x600_20250330141606A001.jpg', '三室一厅', 1500.00, '无线网，空调，无线网，电视机', '1', '2025-03-30 14:16:26', '空闲');

-- ----------------------------
-- Table structure for pro_news
-- ----------------------------
DROP TABLE IF EXISTS `pro_news`;
CREATE TABLE `pro_news`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '封面',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '新闻内容',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '新闻管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_news
-- ----------------------------
INSERT INTO `pro_news` VALUES (1, '2025年第一技术物业费收支公式', '/profile/upload/2025/03/30/240-800x600_20250330000449A001.jpg', '2025年第一技术物业费收支公式2025年第一技术物业费收支公式', '2025-03-30 00:04:56', '1');
INSERT INTO `pro_news` VALUES (2, '小区绿化改造方案', '/profile/upload/2025/03/30/841-800x600_20250330000712A002.jpg', '<p>各区园林绿化局：</p><p><img src=\"/dev-api/profile/upload/2025/03/30/841-800x600_20250330000707A001.jpg\"></p><p>为进一步加强本市绿化薄弱老旧小区提升改造工作，按照市老旧小区综合整治联席会议办公室印发的《老旧小区综合整治工作方案2018-2020年》、《老旧小区综合整治联席会议成员单位职责的通知》，市园林绿化局制定了《本市老旧小区绿化改造基本要求》，现印发给你们，并提出如下要求，请结合工作实际，认真抓好贯彻落实。</p><p>一、对接本区老旧小区综合整治牵头部门，立足园林绿化部门职能定位，配合做好老旧小区整治绿化改造提升的技术服务指导等相关工作。</p><p>二、老旧小区绿化改造方案要坚持绿化面积不减、绿化景观提升的基本原则，发挥居民自治作用，改造方案要征得小区全体居民或业委会意见，形成共识。</p><p>三、配合街乡、社区及相关部门研究建立老旧小区绿地养护长效管理制度和资金保障机制，实现整治成果的长效保存。</p><p class=\"ql-align-right\">北京市物业管理公司</p><p><br></p>', '2025-03-30 00:07:28', '1');
INSERT INTO `pro_news` VALUES (3, '交物业费的人，越来越少了', '/profile/upload/2025/03/30/626-800x600_20250330000756A003.jpg', '<p class=\"ql-align-justify\">最近，物业费“降价潮”席卷全国。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">甘肃兰州、山东青岛、江苏镇江等10余座城市宣布“空置房物业费”打折，最低低至五折；广西柳州有物业公司甚至推出“0元物业费”，计划在22个小区践行；各地物业费均有不同程度的下降。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">物业费“大跳水”的新闻，再次引发了人们对于物业话题的讨论。每每谈及物业，“高收费、低服务”是人们的普遍印象，业主和物业之间的矛盾，也是由来已久的难题。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">本文作者晓雯生活在中部省份，前不久，因为没交物业费，她差点被物业公司告上法庭。在与物业的交涉与博弈中，她发现，在种种因素的影响下，如今不光业主难，物业公司也难，当她和物业管家大倒苦水时，对方也有一肚子无奈。多次交谈后，她逐渐对于物业的处境、物业与业主之间的矛盾根源，有了更深的认识。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">以下是晓雯的观察。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><strong>一、不交物业费的人越来越多了</strong></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">午觉刚睁开眼，老公就给我传来截图，物业委托第三方给我发律师函了。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">起因是我空置已久的房子一直没交物业费，管家联系不上我，只能从置业那里抄来紧急联络人的电话，给远在海外的老公发了短信。短信内容大致为，根据《民法典》第X条规定，物业已履行义务，请业主尽快缴纳物业费，否则将面临被起诉的风险。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">我一向是秉公守法、依规纳税的好市民，从来没想过还能沾上官司。交房时，老公替我补缴了各类款项，后来我生了小孩，找了新工作，换了电话，老公又出国工作，一年多没回过新房，和物业也几乎没打过交道，没想到再次相遇时，已经短兵相接了。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-center\"><img src=\"/dev-api/profile/upload/2025/03/30/541-800x600_20250330000831A004.jpg\"></p><p class=\"ql-align-center\">没装修的毛坯客厅</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">我要来了物业管家的微信，赶紧说明情由，2000多元的物业费，还不值得我以身犯险。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">管家王姐表示理解，毕竟现在经济环境波动，大家收入不稳定，个体的情绪状态容易受到外部因素的影响，最近管家群里的业主们也动不动就横挑鼻子竖挑眼，她的日子也不好过。加上房价回落，没接房的、骨折甩房的业主比比皆是，催缴物业费已经成了她每天的头等难题。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">我之前在网上看到过“每个小区都有三分之一的业主不缴物业费”的说法，聊天中向王姐核实，她委婉地表示，我们小区投资客较多，装修率不高，去年全小区1070户的收费率确实不足70%——很多像我这样身在外地的投资客不好联系，有些索性没收房就拖着，拉低了缴费率。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">但她很快强调，物业的服务并没有因为在户业主少而打折，该做的事她们都做了。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">过年期间，物业给每一户业主都擦了门，贴了对联；公共区域也做了彻底的大扫除，有些人家还入户检查门窗安全；逢年过节主题美陈、业主活动、花草维护、工程检修、夜班巡逻……一个都不少。公司标准化运营，人手一本SOP<span style=\"color: rgb(144, 144, 144);\">（标准作业流程）</span>手册，管理到位，就连保安和保洁都是总部亲聘直签的，年龄不超过50岁，门岗保安，俗称“秩序”，个头不低于一米七……</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">不过，物业这头说破了天也没什么用，欠费的情况确实比以前明显了。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">王姐2018年以前在老家县城一处小物业公司工作，内容简单，维护三栋楼、约200户的次新楼盘，缴费率都能达到85%。即使业主们欠费，物业也不着急催促，领导授意她们带礼物登门拜访说好话，能拿下就拿下，拿不下也不会有强制考核，“至少不会一直催缴，惹人反感”。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">现在她来到省会做物业，工作难度反而更大了。常有业主找到她，问能不能缓交或者打折。王姐回忆，“有一户业主年前失业了，家里老人生病住院急用钱，到了交物业费的时候没办法，过来找我说情，我只收了他一个月的费用”——她们唯一能做的就是建议客户分期付款，分季度交，实在不行也能按月交。一个月一二百元，总能拿的出来吧。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">我们小区的物业费是每平米两块五，和周围相比不算便宜。物业的官方说法是，这是根据当年的物价水平、房价水平、周边小区物业平均水平等因素综合定价并在物价局备案过的，想降价，层层手续比登天还难。如此算下来，全小区最小的户型，是我的89平小三房，一年的物业费是2680元，更大一点的房子，平均每年三四千。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">手头宽裕时，这笔不大不小的费用，说缴就缴了；而经济紧张时，很多人也为此掰扯找借口。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">王姐说，有住户觉得小区中心雕塑牛角对着自己家窗户，冲撞了她家，近来连走霉运，丈夫开大货车翻车一次，自己出门骑电动车骨折一次，找人算过了，这是尖角煞，必须移开，否则就不交物业费；</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">有住户嫌这边夏天靠着人工湖，蚊子多，让物业去除蚊子，凡是出门被咬了一个包，就是他们工作不到位，嚷嚷着不交物业费；</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">更有业主和保洁阿姨挣纸壳子，没争赢，于是大闹物业，威胁不交物业费……</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">缴费率提不上来，王姐和同事们绞尽脑汁各出奇招。小红书上找话术，问AI，高频信息轰炸，在门口贴催缴单，不交物业费车进不了地库，还在出入口摆摊做活动，预存两年送一年，预存一年送米面油。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">虽然表面热情礼貌干劲满满，但王姐内心也怀疑，“要是业主真没钱了，怎么能榨出来？”最后集团统一决定，把这烂摊子外包给专业催缴公司，这一整理，光王姐手里交上去的业主就有几十个，其中也包括我。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><strong>二、即买即跌，人均亏首付</strong></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">要说我是很冤的，房子一天没住，就收房的时候过去看了眼。所有的服务没享受过，平常也没人联系过我，一开口就是要钱，让我交得很心不甘情不愿。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">我看了不少报道，多轮城市已经实行物业费下调，于是和物业争取，能否以我没装修的毛坯空置房为由，打点折，结果遭到拒绝。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">“空置房也算在合同内的，不信你翻翻合同”，王姐说。就在我一头雾水准备翻合同时，对方催促我除了物业费，也要尽快办理契税，不然置业点过两天撤走，再办房产证就不好弄了。这笔钱是按总房款的1%给，一共8700，一里一外，算下来差不多一万多。我瞬间觉得天旋地转，老天爷，为什么生活中有这么多花钱的地方！</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">我回望自己的决策，想想自己的人生，我不过是历史长河里微小的一粒尘埃，一辈子就想要套写自己名字的房子而已，难道真的错了吗？</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">我买的这套房子位于Z市港区的核心，依托着国际物流、保税区、大空港等战略概念，随着一纸政策的颁布，短短几年间，这里各项设施像庄稼一样拔地而起，简直是平地上造了一座城。12平方公里挤了10多家大型房企，其中既有恒大、融创、万科等全国TOP10的巨头，也有不少本地地头蛇开发商。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">来这里买房的客户大概有两类：附近城市来省会安家的年轻刚需、看好将来发展的投资客。房子一时被炒得没边，当时的销售骄傲地给我追忆辉煌：<span style=\"color: rgb(144, 144, 144);\">（均价）</span>一万以上只是门槛，有些热盘得验资、给“茶水费”才能拿到购房资格。巅峰的时候，她一个月卖了17套，连项目部前三都没排进去，“有些客户甚至专门从新疆、海南飞过来看房”。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">2021年，我从深圳回到老家，带着一笔当了几年“干电池”攒下的“窝囊费”，想在婚前给自己安排个小房子，万一离婚后被扫地出门，不至于沦落街头。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">我选择了这个靠近地铁、紧挨商场、配有学区的临湖小区，当年均价9000左右，商业贷利率六点多，三成首付，每月还贷3300。签字的那一刻我毫不犹豫，仿佛从此有了退路，压根没想过，短短七八十年的人生里，背上30年房贷的代价我是否能够承受。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">起初一切顺利，我像小蜜蜂一样，辛勤地按点还贷。到了第二年，房子却频传意外。当年2、3月疫情严重，7月又下了七八十年不遇的大暴雨，之后赶上了台风，施工进度停停走走，后半年索性陷入了长期停工。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">彼时“宇宙房企”恒大刚爆雷不久，全国的期房购买者都陷入恐慌情绪中。百亿巨头说倒就倒，更何况我这个只在本地有点名气的小开发商。要是成了烂尾楼，我一辈子该怎么办？每个月我都焦虑地刷新好几遍项目方的工程进度表，看百分比是否增长。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">刷着刷着，我也刷到了销售的朋友圈。同小区同户型，价格降了一千多不说，还是两成首付、4点几的利率，还送车位！看得我怒火中烧。就在我想要质问她时，却先接到了对方的求助：姐，我被强制裁员了，公司用各种恶心的手段逼我走，还一分钱赔偿都不给。听说你会写文章，能不能帮我维权？带着莫名其妙的正义感和同情心，我又帮销售打抱不平了一场，两人也因缘际会成了朋友。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">她知道我担心房子烂尾，经常趁空档跑到工地给我拍施工小视频，还和看门保安套话，问什么时候开工。她补充说，开发商在监管账户里的保证金被银行扣了好几回。另外一个项目也因延期交付得赔付户均两年物业费，集团本来就现金流紧张，这下更左支右绌，只好裁员瘦身了。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">好在结局还不错。房子折腾一年多后，勉强交付了，我心里一块大石头落地。当然，房价也跌得惨不忍睹。算上利息120万的总价，现在我看小区里居然有急用钱的业主40万出售，心凉到底。其他人也好不到哪里去，人均跌了个首付，租售比更是低到离谱，小区里以前1800轻松出租的房子，如今降到1200也无人问津。</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">我安慰自己，只要我不卖，就不需要在乎价格变动，我的初心是想有个归宿，何须在意涨跌乱人心呢？</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">直到物业对我穷追不舍，我才醒悟，房子没还清贷款，就一直都是负资产，你想一动不动装死，奈何后续乱七八糟的费用像闹钟一样，到点就提醒，一分不会少。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><strong>三、业主难，物业也难</strong></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">不住也得交物业费——法律是这么规定的，我也无法辩驳。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">王姐说，家家都有难过的坎儿，有个业主前期和开发商签了首付分期，现在贷款没还清，房子也没收，从法律意义上说，这套房子还不属于他，物业费的计算却从集中交房那一天就开始了。物业这边的说法是，“交付和交房是两个概念，我们只是代为保管业主资料，房子其实已经是业主的了”。业主不清楚其间差别，为自己还没收房就得先交钱感到愤怒，一打电话就大骂，导致王姐现在也不敢轻易联系他。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">经济压力大，人们绷紧了支出的弦，稍微一点琐碎都会让往昔的体面难以为继。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">王姐说，有业主就算文化程度高，也秉承着能拖一天是一天的心态，不怕律师函威胁，扬言随便告，“反正名下没有任何资产，再不济也要拖到庭前和解”。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">物业不好干是事实，开发商留下的烂摊子，全得她们擦屁股。业主觉得小区造景不够，绿化太少，道路不合理，车位规划不合理，都会怨到物业头上。王姐向我诉苦，“有维修基金的项目，领导也会尽可能满足大家需求，但有一些要求我们实在无能为力。”</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">比如大门，当时设计时已在房管局备案过图纸，新中式玻璃幕墙，要挑高，要质感，没办法建得很高。业主收房后一致觉得不够气派，嚷嚷着要弄联名信逼开发商重建，可项目早已结束，图纸定稿存档案，再去跑流程也没有人管了。“为了这个大门，吵了整整一年才消停”，王姐说。</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">物业，作为现代人居住环境中最基础、最持续的服务主体，既要配合基层治理要求，又面临服务价值认知偏差、权责边界模糊等矛盾，举步维艰。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">一方面，她们得时刻待命，响应业主的需求——有业主半夜开车回家，在小区地库迷路，王姐凌晨一点多也要爬起来，和保安一起满车库找人；还有一次，有业主打电话说楼上邻居搞传销，马桶一晚上响十几次，一定要物业介入，报警把人带走，后来王姐借口排查水电入户，发现楼上只是在操办结婚，老家来人住了几天。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">另一方面，物业也承受着巨大的社会舆论压力。王姐和同事接到过不少投诉，理由各异。有位业主半夜喝多了回到小区就开始脱衣服，脱到只剩裤衩，躺在楼下长椅睡着了，其他业主发现时吓了一跳，以为是行为艺术，拍照发进小区群，引发热议。醉汉醒来后脸上无光，怪物业没有及时提醒，一定要投诉当班保安。保安查监控自证，两小时巡楼一圈，他前脚刚走，后脚业主就回来，真的没看见。不过就算是这样，保安也还是被罚款了——要是在冬天，业主被冻死，物业有不可推卸的责任。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">王姐管辖5栋楼，约700户，一上班手机就响个不停。上班第一件事就是坐电梯到每层最高楼，一层一层往下走，挨门挨户排查问题，微信步数每天稳定在一万多步。如果遇到装修，她还得进去拍照，看是否操作规范。她以前总觉得这些是无意义的事儿，但没想到，还真的能帮助到人。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">前两天有个女孩子哭着找物业，说装修公司要打人。王姐一行跑上去查看后，发现工长带着几个大男人气势汹汹威胁女孩，放话女孩敢退款，他们就敢把做好的装修都砸掉。王姐询问原因，得知是电工不熟练，改水电时把全屋并联电路弄成了串联，灯一亮要么太暗，要么直接拉闸，工期结束了才发现问题，工头不承认，拉扯着要证据，幸亏王姐留了当时的录像和照片，能为小姑娘打官司提供凭证。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">这份工作做久了，王姐也见惯了形形色色的人，“总归是好人多的”。业主有时候送点红薯，她就感动得要哭。其实身为物业，她也理解这几年业主的不容易。她自己的房子和我一样，也买在了高点，现在每个月挣3500，还房贷3900，还有两个孩子要养，生活压力也不小。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">我问王姐，为什么不换一份没那么累的工作？她说，自己快40岁了，只有中专学历，这个年纪除了当服务员和进厂，已经没有哪里能接纳她了。工厂的年龄限制越来越严格，而且在流水线上一站就是8个小时，半个月轮一次班，她有家有室，身体熬不动，相较之下，最稳定、能按时发工资的工作就是做物业，“至少这里给发西装，看起来还算体面”。&nbsp;</p><p><br></p>', '2025-03-30 00:08:52', '1');
INSERT INTO `pro_news` VALUES (5, '物业费开始缴纳了', '/profile/upload/2025/03/30/795-800x600_20250330141647A002.jpg', '<p>请各位业主尽快缴纳物业费，谢谢配合，祝您生活愉快<img src=\"/dev-api/profile/upload/2025/03/30/841-800x600_20250330141708A003.jpg\"></p>', '2025-03-30 14:17:10', '1');

-- ----------------------------
-- Table structure for pro_order
-- ----------------------------
DROP TABLE IF EXISTS `pro_order`;
CREATE TABLE `pro_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '类型',
  `huhao` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '户号',
  `number` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '住址',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '充值金额',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '状态',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '充值单位',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '水电费缴纳' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_order
-- ----------------------------
INSERT INTO `pro_order` VALUES (1, '水费', '089089123', '2单元四号楼106', 40.00, NULL, 1, '2025-03-29 13:05:05', NULL);
INSERT INTO `pro_order` VALUES (2, '电费', '123890896', '2号楼四单元501', 50.00, NULL, 1, '2025-03-30 13:06:03', NULL);
INSERT INTO `pro_order` VALUES (3, '水费', '123123', '123123123', 1000.00, NULL, 1, '2025-03-30 13:55:27', NULL);
INSERT INTO `pro_order` VALUES (4, '电费', '阿三大苏打23', '123123123', 222.00, NULL, 1, '2025-03-30 13:55:39', NULL);
INSERT INTO `pro_order` VALUES (5, '水费', '1237986571', '2号楼三单元401', 1000.00, NULL, 2, '2025-03-28 14:01:10', NULL);
INSERT INTO `pro_order` VALUES (6, '电费', '123809128', '2号楼三单元401', 100.00, NULL, 2, '2025-03-30 14:04:33', NULL);
INSERT INTO `pro_order` VALUES (7, '水费', '1237987661', '三号楼四单元502', 100.00, NULL, 103, '2025-03-26 14:19:37', NULL);
INSERT INTO `pro_order` VALUES (8, '电费', '1237896781', '三号楼四单元502', 1000.00, NULL, 103, '2025-03-30 14:19:48', NULL);

-- ----------------------------
-- Table structure for pro_repire
-- ----------------------------
DROP TABLE IF EXISTS `pro_repire`;
CREATE TABLE `pro_repire`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '问题类型',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '门牌号',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '问题描述',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '业主',
  `repire_id` int(11) NULL DEFAULT NULL COMMENT '修复人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '状态',
  `repire_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '修复日志',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '报修' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_repire
-- ----------------------------
INSERT INTO `pro_repire` VALUES (2, '电路故障', '阿斯顿', '阿斯顿阿斯顿', 1, 100, '2025-03-30 11:05:36', '已修复', 'asdasdasdasdasda');
INSERT INTO `pro_repire` VALUES (3, '1', '阿三大苏打', '阿三大苏打', 1, 100, '2025-03-30 13:43:54', '已修复', NULL);
INSERT INTO `pro_repire` VALUES (4, '1', '阿三大苏打', 'a啥的阿斯顿a', 1, 100, '2025-03-30 13:56:33', '已指派', NULL);
INSERT INTO `pro_repire` VALUES (5, '2', '2号楼4单元2101', '管道漏水', 2, 100, '2025-03-30 14:05:04', '已修复', '修复管道');
INSERT INTO `pro_repire` VALUES (6, '2', '三号楼四单元502', '管道泄漏，气味难闻', 103, 102, '2025-03-30 14:21:07', '已修复', '修复水管');
INSERT INTO `pro_repire` VALUES (7, '管道维修', '撒旦飞洒地方', '撒旦飞洒地方', 1, NULL, '2025-03-31 16:47:39', '未修复', NULL);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '参数配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2024-04-30 19:18:25', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-04-30 19:18:25', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2024-04-30 19:18:25', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2024-04-30 19:18:25', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2024-04-30 19:18:25', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2024-04-30 19:18:25', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-30 19:18:23', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-30 19:18:23', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-30 19:18:23', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-30 19:18:23', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-30 19:18:23', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-30 19:18:23', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-30 19:18:23', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-30 19:18:23', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-30 19:18:23', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-30 19:18:23', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 111 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '字典数据表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (100, 0, '未售', '未售', 'car_status', NULL, 'info', 'N', '0', 'admin', '2025-03-29 23:54:46', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (101, 1, '已售', '已售', 'car_status', NULL, 'success', 'N', '0', 'admin', '2025-03-29 23:54:59', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (102, 0, '空闲', '空闲', 'house_status', NULL, 'success', 'N', '0', 'admin', '2025-03-30 10:07:40', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (103, 1, '已租', '已租', 'house_status', NULL, 'warning', 'N', '0', 'admin', '2025-03-30 10:07:57', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (104, 0, '水费', '水费', 'order_type', NULL, 'success', 'N', '0', 'admin', '2025-03-30 10:29:59', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (105, 1, '电费', '电费', 'order_type', NULL, 'warning', 'N', '0', 'admin', '2025-03-30 10:30:12', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (106, 0, '已修复', '已修复', 'order_status', NULL, 'success', 'N', '0', 'admin', '2025-03-30 10:54:55', 'admin', '2025-03-30 10:55:06', NULL);
INSERT INTO `sys_dict_data` VALUES (107, 0, '未修复', '未修复', 'order_status', NULL, 'danger', 'N', '0', 'admin', '2025-03-30 10:55:01', 'admin', '2025-03-30 10:55:12', NULL);
INSERT INTO `sys_dict_data` VALUES (108, 0, '已修复', '已修复', 'repire_status', NULL, 'success', 'N', '0', 'admin', '2025-03-30 11:06:00', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (109, 0, '未修复', '未修复', 'repire_status', NULL, 'danger', 'N', '0', 'admin', '2025-03-30 11:06:08', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (110, 0, '已指派', '已指派', 'repire_status', NULL, 'warning', 'N', '0', 'admin', '2025-03-30 11:12:37', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '字典类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2024-04-30 19:18:25', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '车位状态', 'car_status', '0', 'admin', '2025-03-29 23:43:10', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (101, '房租状态', 'house_status', '0', 'admin', '2025-03-29 23:43:33', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (102, '订单状态', 'order_status', '0', 'admin', '2025-03-30 10:24:27', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (103, '修复状态', 'repire_status', '0', 'admin', '2025-03-30 10:24:46', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (104, '订单类型', 'order_type', '0', 'admin', '2025-03-30 10:29:37', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '定时任务调度表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2024-04-30 19:18:25', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2024-04-30 19:18:25', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2024-04-30 19:18:25', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 133 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '系统访问记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-29 20:53:56');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-29 23:07:00');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-30 10:07:11');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-30 11:49:02');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-30 12:57:17');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-30 14:00:11');
INSERT INTO `sys_logininfor` VALUES (111, '业主', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-30 14:00:18');
INSERT INTO `sys_logininfor` VALUES (112, '业主', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-30 14:05:18');
INSERT INTO `sys_logininfor` VALUES (113, '维修人员', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-30 14:05:25');
INSERT INTO `sys_logininfor` VALUES (114, '维修人员', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-30 14:14:09');
INSERT INTO `sys_logininfor` VALUES (115, '维修人员', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-30 14:15:07');
INSERT INTO `sys_logininfor` VALUES (116, '维修人员', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-30 14:15:32');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-30 14:15:37');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-30 14:18:19');
INSERT INTO `sys_logininfor` VALUES (119, '业主3', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '注册成功', '2025-03-30 14:18:33');
INSERT INTO `sys_logininfor` VALUES (120, '业主3', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-30 14:18:42');
INSERT INTO `sys_logininfor` VALUES (121, '业主1', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2025-03-30 14:20:16');
INSERT INTO `sys_logininfor` VALUES (122, '业主', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-30 14:20:22');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-30 14:21:23');
INSERT INTO `sys_logininfor` VALUES (124, '业主3', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-30 14:21:52');
INSERT INTO `sys_logininfor` VALUES (125, '维修人员', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-30 14:21:57');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-30 14:22:11');
INSERT INTO `sys_logininfor` VALUES (127, '维修人员2', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-30 14:22:17');
INSERT INTO `sys_logininfor` VALUES (128, '维修人员', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-30 14:22:59');
INSERT INTO `sys_logininfor` VALUES (129, '业主3', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-30 14:23:04');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-30 23:18:26');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-31 00:16:55');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-31 16:38:49');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2032 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '菜单权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2024-04-30 19:18:24', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2024-04-30 19:18:24', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2024-04-30 19:18:24', 'admin', '2025-03-30 13:59:05', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2024-04-30 19:18:24', 'admin', '2025-03-30 13:59:01', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '1', '0', 'system:dept:list', 'tree', 'admin', '2024-04-30 19:18:24', 'admin', '2025-03-30 13:27:26', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '1', '0', 'system:post:list', 'post', 'admin', '2024-04-30 19:18:24', 'admin', '2025-03-30 13:27:51', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '1', '0', 'system:dict:list', 'dict', 'admin', '2024-04-30 19:18:24', 'admin', '2025-03-30 13:27:47', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '1', '0', 'system:notice:list', 'message', 'admin', '2024-04-30 19:18:24', 'admin', '2025-03-30 13:27:43', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2024-04-30 19:18:24', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2024-04-30 19:18:24', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2024-04-30 19:18:24', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2024-04-30 19:18:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '物业管理', 0, 0, 'ball', NULL, NULL, 1, 0, 'M', '0', '0', '', 'date-range', 'admin', '2024-05-01 20:40:01', 'admin', '2025-03-30 13:27:09', '');
INSERT INTO `sys_menu` VALUES (2001, '车位管理', 2000, 1, 'carList', 'system/carList/index', NULL, 1, 0, 'C', '0', '0', 'system:carList:list', '#', 'admin', '2025-03-29 23:53:03', '', NULL, '车位管理菜单');
INSERT INTO `sys_menu` VALUES (2002, '车位管理查询', 2001, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:carList:query', '#', 'admin', '2025-03-29 23:53:03', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2003, '车位管理新增', 2001, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:carList:add', '#', 'admin', '2025-03-29 23:53:03', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2004, '车位管理修改', 2001, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:carList:edit', '#', 'admin', '2025-03-29 23:53:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '车位管理删除', 2001, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:carList:remove', '#', 'admin', '2025-03-29 23:53:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '租房发布', 2000, 1, 'house', 'system/house/index', NULL, 1, 0, 'C', '0', '0', 'system:house:list', '#', 'admin', '2025-03-29 23:53:20', '', NULL, '租房发布菜单');
INSERT INTO `sys_menu` VALUES (2007, '租房发布查询', 2006, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:house:query', '#', 'admin', '2025-03-29 23:53:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2008, '租房发布新增', 2006, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:house:add', '#', 'admin', '2025-03-29 23:53:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2009, '租房发布修改', 2006, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:house:edit', '#', 'admin', '2025-03-29 23:53:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2010, '租房发布删除', 2006, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:house:remove', '#', 'admin', '2025-03-29 23:53:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2011, '新闻管理', 2000, 1, 'news', 'system/news/index', NULL, 1, 0, 'C', '0', '0', 'system:news:list', '#', 'admin', '2025-03-29 23:53:31', '', NULL, '新闻管理菜单');
INSERT INTO `sys_menu` VALUES (2012, '新闻管理查询', 2011, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:news:query', '#', 'admin', '2025-03-29 23:53:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2013, '新闻管理新增', 2011, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:news:add', '#', 'admin', '2025-03-29 23:53:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2014, '新闻管理修改', 2011, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:news:edit', '#', 'admin', '2025-03-29 23:53:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2015, '新闻管理删除', 2011, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:news:remove', '#', 'admin', '2025-03-29 23:53:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2016, '收费标准', 2000, 1, 'biaozhun', 'system/biaozhun/index', NULL, 1, 0, 'C', '0', '0', 'system:biaozhun:list', '#', 'admin', '2025-03-30 10:36:23', '', NULL, '收费标准菜单');
INSERT INTO `sys_menu` VALUES (2017, '收费标准查询', 2016, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:biaozhun:query', '#', 'admin', '2025-03-30 10:36:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2018, '收费标准新增', 2016, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:biaozhun:add', '#', 'admin', '2025-03-30 10:36:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2019, '收费标准修改', 2016, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:biaozhun:edit', '#', 'admin', '2025-03-30 10:36:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2020, '收费标准删除', 2016, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:biaozhun:remove', '#', 'admin', '2025-03-30 10:36:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2021, '水电费缴纳', 2000, 1, 'order', 'system/order/index', NULL, 1, 0, 'C', '0', '0', 'system:order:list', '#', 'admin', '2025-03-30 10:36:37', '', NULL, '水电费缴纳菜单');
INSERT INTO `sys_menu` VALUES (2022, '水电费缴纳查询', 2021, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:order:query', '#', 'admin', '2025-03-30 10:36:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2023, '水电费缴纳新增', 2021, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:order:add', '#', 'admin', '2025-03-30 10:36:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2024, '水电费缴纳修改', 2021, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:order:edit', '#', 'admin', '2025-03-30 10:36:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2025, '水电费缴纳删除', 2021, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:order:remove', '#', 'admin', '2025-03-30 10:36:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2026, '报修', 2000, 1, 'repire', 'system/repire/index', NULL, 1, 0, 'C', '0', '0', 'system:repire:list', '#', 'admin', '2025-03-30 10:36:47', '', NULL, '报修菜单');
INSERT INTO `sys_menu` VALUES (2027, '报修查询', 2026, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:repire:query', '#', 'admin', '2025-03-30 10:36:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2028, '报修新增', 2026, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:repire:add', '#', 'admin', '2025-03-30 10:36:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2029, '报修修改', 2026, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:repire:edit', '#', 'admin', '2025-03-30 10:36:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2030, '报修删除', 2026, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:repire:remove', '#', 'admin', '2025-03-30 10:36:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2031, '图表统计', 0, 3, 'chart', 'index_v1', NULL, 1, 0, 'C', '0', '0', NULL, '#', 'admin', '2025-03-30 23:25:07', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '通知公告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 226 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '操作日志记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (117, '代码生成', 6, 'com.project.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"pro_house,pro_news,pro_car_list\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-29 23:29:56', 191);
INSERT INTO `sys_oper_log` VALUES (118, '字典类型', 1, 'com.project.project.system.controller.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"车位状态\",\"dictType\":\"car_status\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-29 23:43:10', 78);
INSERT INTO `sys_oper_log` VALUES (119, '字典类型', 1, 'com.project.project.system.controller.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"房租状态\",\"dictType\":\"house_status\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-29 23:43:33', 23);
INSERT INTO `sys_oper_log` VALUES (120, '代码生成', 2, 'com.project.project.tool.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"news\",\"className\":\"ProNews\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"id\",\"columnId\":32,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-29 23:29:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"标题\",\"columnId\":33,\"columnName\":\"title\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-29 23:29:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Pic\",\"columnComment\":\"封面\",\"columnId\":34,\"columnName\":\"pic\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-29 23:29:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"pic\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Content\",\"columnComment\":\"新闻内容\",\"columnId\":35,\"columnName\":\"content\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-29 23:29:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"editor\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"content\",\"javaType\":\"String\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-29 23:46:09', 91);
INSERT INTO `sys_oper_log` VALUES (121, '代码生成', 2, 'com.project.project.tool.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"carList\",\"className\":\"ProCarList\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"id\",\"columnId\":18,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-29 23:29:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CarNo\",\"columnComment\":\"车位编号\",\"columnId\":19,\"columnName\":\"car_no\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-29 23:29:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"carNo\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Status\",\"columnComment\":\"状态\",\"columnId\":20,\"columnName\":\"status\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-29 23:29:56\",\"dictType\":\"car_status\",\"edit\":true,\"htmlType\":\"radio\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"status\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Price\",\"columnComment\":\"管理费\",\"columnId\":21,\"columnName\":\"price\",\"columnType\":\"decimal(10,2)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-29 23:29:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"price\",\"java', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-29 23:46:42', 58);
INSERT INTO `sys_oper_log` VALUES (122, '代码生成', 2, 'com.project.project.tool.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"news\",\"className\":\"ProNews\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"id\",\"columnId\":32,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-29 23:29:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2025-03-29 23:46:09\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"标题\",\"columnId\":33,\"columnName\":\"title\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-29 23:29:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2025-03-29 23:46:09\",\"usableColumn\":false},{\"capJavaField\":\"Pic\",\"columnComment\":\"封面\",\"columnId\":34,\"columnName\":\"pic\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-29 23:29:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"pic\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2025-03-29 23:46:09\",\"usableColumn\":false},{\"capJavaField\":\"Content\",\"columnComment\":\"新闻内容\",\"columnId\":35,\"columnName\":\"content\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-29 23:29:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"editor\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-29 23:47:12', 100);
INSERT INTO `sys_oper_log` VALUES (123, '代码生成', 2, 'com.project.project.tool.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"house\",\"className\":\"ProHouse\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"id\",\"columnId\":24,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-29 23:29:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Pic\",\"columnComment\":\"照片\",\"columnId\":25,\"columnName\":\"pic\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-29 23:29:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"pic\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Huxing\",\"columnComment\":\"户型\",\"columnId\":26,\"columnName\":\"huxing\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-29 23:29:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"huxing\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Price\",\"columnComment\":\"价格\",\"columnId\":27,\"columnName\":\"price\",\"columnType\":\"decimal(10,2)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-29 23:29:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"price\",\"javaType\":\"BigDec', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-29 23:47:47', 64);
INSERT INTO `sys_oper_log` VALUES (124, '代码生成', 8, 'com.project.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"pro_car_list,pro_house,pro_news\"}', NULL, 0, NULL, '2025-03-29 23:47:52', 386);
INSERT INTO `sys_oper_log` VALUES (125, '字典数据', 1, 'com.project.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"未售\",\"dictSort\":0,\"dictType\":\"car_status\",\"dictValue\":\"未售\",\"listClass\":\"info\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-29 23:54:46', 23);
INSERT INTO `sys_oper_log` VALUES (126, '字典数据', 1, 'com.project.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"已售\",\"dictSort\":1,\"dictType\":\"car_status\",\"dictValue\":\"已售\",\"listClass\":\"success\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-29 23:54:59', 31);
INSERT INTO `sys_oper_log` VALUES (127, '车位管理', 1, 'com.project.project.system.controller.ProCarListController.add()', 'POST', 1, 'admin', '研发部门', '/system/carList', '127.0.0.1', '内网IP', '{\"carNo\":\"A-002\",\"createTime\":\"2025-03-29 23:59:09\",\"id\":1,\"params\":{},\"price\":80,\"status\":\"已售\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-29 23:59:09', 26);
INSERT INTO `sys_oper_log` VALUES (128, '车位管理', 1, 'com.project.project.system.controller.ProCarListController.add()', 'POST', 1, 'admin', '研发部门', '/system/carList', '127.0.0.1', '内网IP', '{\"carNo\":\"A-001\",\"createTime\":\"2025-03-29 23:59:58\",\"id\":2,\"params\":{},\"price\":100,\"status\":\"未售\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-29 23:59:58', 7);
INSERT INTO `sys_oper_log` VALUES (129, '车位管理', 1, 'com.project.project.system.controller.ProCarListController.add()', 'POST', 1, 'admin', '研发部门', '/system/carList', '127.0.0.1', '内网IP', '{\"carNo\":\"A--3\",\"createTime\":\"2025-03-30 00:00:07\",\"id\":3,\"params\":{},\"price\":300,\"status\":\"未售\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 00:00:07', 8);
INSERT INTO `sys_oper_log` VALUES (130, '车位管理', 2, 'com.project.project.system.controller.ProCarListController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/carList', '127.0.0.1', '内网IP', '{\"carNo\":\"A-003\",\"createTime\":\"2025-03-30 00:00:07\",\"id\":3,\"params\":{},\"price\":300,\"status\":\"未售\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 00:00:14', 7);
INSERT INTO `sys_oper_log` VALUES (131, '车位管理', 1, 'com.project.project.system.controller.ProCarListController.add()', 'POST', 1, 'admin', '研发部门', '/system/carList', '127.0.0.1', '内网IP', '{\"carNo\":\"A-004\",\"createTime\":\"2025-03-30 00:00:26\",\"id\":4,\"params\":{},\"price\":40,\"status\":\"已售\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 00:00:26', 6);
INSERT INTO `sys_oper_log` VALUES (132, '车位管理', 1, 'com.project.project.system.controller.ProCarListController.add()', 'POST', 1, 'admin', '研发部门', '/system/carList', '127.0.0.1', '内网IP', '{\"carNo\":\"B-005\",\"createTime\":\"2025-03-30 00:00:35\",\"id\":5,\"params\":{},\"price\":70,\"status\":\"未售\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 00:00:35', 6);
INSERT INTO `sys_oper_log` VALUES (133, '新闻管理', 1, 'com.project.project.system.controller.ProNewsController.add()', 'POST', 1, 'admin', '研发部门', '/system/news', '127.0.0.1', '内网IP', '{\"content\":\"2025年第一技术物业费收支公式2025年第一技术物业费收支公式\",\"createTime\":\"2025-03-30 00:04:55\",\"id\":1,\"params\":{},\"pic\":\"/profile/upload/2025/03/30/240-800x600_20250330000449A001.jpg\",\"title\":\"2025年第一技术物业费收支公式\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 00:04:55', 66);
INSERT INTO `sys_oper_log` VALUES (134, '新闻管理', 1, 'com.project.project.system.controller.ProNewsController.add()', 'POST', 1, 'admin', '研发部门', '/system/news', '127.0.0.1', '内网IP', '{\"content\":\"<p>各区园林绿化局：</p><p><img src=\\\"/dev-api/profile/upload/2025/03/30/841-800x600_20250330000707A001.jpg\\\"></p><p>为进一步加强本市绿化薄弱老旧小区提升改造工作，按照市老旧小区综合整治联席会议办公室印发的《老旧小区综合整治工作方案2018-2020年》、《老旧小区综合整治联席会议成员单位职责的通知》，市园林绿化局制定了《本市老旧小区绿化改造基本要求》，现印发给你们，并提出如下要求，请结合工作实际，认真抓好贯彻落实。</p><p>一、对接本区老旧小区综合整治牵头部门，立足园林绿化部门职能定位，配合做好老旧小区整治绿化改造提升的技术服务指导等相关工作。</p><p>二、老旧小区绿化改造方案要坚持绿化面积不减、绿化景观提升的基本原则，发挥居民自治作用，改造方案要征得小区全体居民或业委会意见，形成共识。</p><p>三、配合街乡、社区及相关部门研究建立老旧小区绿地养护长效管理制度和资金保障机制，实现整治成果的长效保存。</p><p class=\\\"ql-align-right\\\">北京市物业管理公司</p><p><br></p>\",\"createTime\":\"2025-03-30 00:07:14\",\"params\":{},\"pic\":\"/profile/upload/2025/03/30/841-800x600_20250330000712A002.jpg\",\"title\":\"小区绿化改造方案\"}', NULL, 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'content\' at row 1\r\n### The error may exist in file [E:\\bishe\\project040物业管理系统\\api\\target\\classes\\mybatis\\system\\ProNewsMapper.xml]\r\n### The error may involve com.project.project.system.mapper.ProNewsMapper.insertProNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into pro_news          ( title,             pic,             content,             create_time )           values ( ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'content\' at row 1\n; Data truncation: Data too long for column \'content\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'content\' at row 1', '2025-03-30 00:07:14', 90);
INSERT INTO `sys_oper_log` VALUES (135, '新闻管理', 1, 'com.project.project.system.controller.ProNewsController.add()', 'POST', 1, 'admin', '研发部门', '/system/news', '127.0.0.1', '内网IP', '{\"content\":\"<p>各区园林绿化局：</p><p><img src=\\\"/dev-api/profile/upload/2025/03/30/841-800x600_20250330000707A001.jpg\\\"></p><p>为进一步加强本市绿化薄弱老旧小区提升改造工作，按照市老旧小区综合整治联席会议办公室印发的《老旧小区综合整治工作方案2018-2020年》、《老旧小区综合整治联席会议成员单位职责的通知》，市园林绿化局制定了《本市老旧小区绿化改造基本要求》，现印发给你们，并提出如下要求，请结合工作实际，认真抓好贯彻落实。</p><p>一、对接本区老旧小区综合整治牵头部门，立足园林绿化部门职能定位，配合做好老旧小区整治绿化改造提升的技术服务指导等相关工作。</p><p>二、老旧小区绿化改造方案要坚持绿化面积不减、绿化景观提升的基本原则，发挥居民自治作用，改造方案要征得小区全体居民或业委会意见，形成共识。</p><p>三、配合街乡、社区及相关部门研究建立老旧小区绿地养护长效管理制度和资金保障机制，实现整治成果的长效保存。</p><p class=\\\"ql-align-right\\\">北京市物业管理公司</p><p><br></p>\",\"createTime\":\"2025-03-30 00:07:27\",\"id\":2,\"params\":{},\"pic\":\"/profile/upload/2025/03/30/841-800x600_20250330000712A002.jpg\",\"title\":\"小区绿化改造方案\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 00:07:27', 13);
INSERT INTO `sys_oper_log` VALUES (136, '新闻管理', 1, 'com.project.project.system.controller.ProNewsController.add()', 'POST', 1, 'admin', '研发部门', '/system/news', '127.0.0.1', '内网IP', '{\"content\":\"<p class=\\\"ql-align-justify\\\">最近，物业费“降价潮”席卷全国。</p><p class=\\\"ql-align-justify\\\"><br></p><p class=\\\"ql-align-justify\\\">甘肃兰州、山东青岛、江苏镇江等10余座城市宣布“空置房物业费”打折，最低低至五折；广西柳州有物业公司甚至推出“0元物业费”，计划在22个小区践行；各地物业费均有不同程度的下降。</p><p class=\\\"ql-align-justify\\\"><br></p><p class=\\\"ql-align-justify\\\">物业费“大跳水”的新闻，再次引发了人们对于物业话题的讨论。每每谈及物业，“高收费、低服务”是人们的普遍印象，业主和物业之间的矛盾，也是由来已久的难题。</p><p class=\\\"ql-align-justify\\\"><br></p><p class=\\\"ql-align-justify\\\">本文作者晓雯生活在中部省份，前不久，因为没交物业费，她差点被物业公司告上法庭。在与物业的交涉与博弈中，她发现，在种种因素的影响下，如今不光业主难，物业公司也难，当她和物业管家大倒苦水时，对方也有一肚子无奈。多次交谈后，她逐渐对于物业的处境、物业与业主之间的矛盾根源，有了更深的认识。</p><p class=\\\"ql-align-justify\\\"><br></p><p class=\\\"ql-align-justify\\\">以下是晓雯的观察。</p><p class=\\\"ql-align-justify\\\"><br></p><p class=\\\"ql-align-justify\\\"><strong>一、不交物业费的人越来越多了</strong></p><p class=\\\"ql-align-justify\\\"><br></p><p class=\\\"ql-align-justify\\\">午觉刚睁开眼，老公就给我传来截图，物业委托第三方给我发律师函了。</p><p class=\\\"ql-align-justify\\\"><br></p><p class=\\\"ql-align-justify\\\">起因是我空置已久的房子一直没交物业费，管家联系不上我，只能从置业那里抄来紧急联络人的电话，给远在海外的老公发了短信。短信内容大致为，根据《民法典》第X条规定，物业已履行义务，请业主尽快缴纳物业费，否则将面临被起诉的风险。</p><p class=\\\"ql-align-justify\\\"><br></p><p class=\\\"ql-align-justify\\\">我一向是秉公守法、依规纳税的好市民，从来没想过还能沾上官司。交房时，老公替我补缴了各类款项，后来我生了小孩，找了新工作，换了电话，老公又出国工作，一年多没回过新房，和物业也几乎没打过交道，没想到再次相遇时，已经短兵相接了。</p><p class=\\\"ql-align-justify\\\"><br></p><p class=\\\"ql-align-center\\\"><img src=\\\"/dev-api/profile/upload/2025/03/30/541-800x600_20250330000831A004.jpg\\\"></p><p class=\\\"ql-align-center\\\">没装修的毛坯客厅</p><p class=\\\"ql-align-justify\\\"><br></p><p class=\\\"ql-align-justify\\\">我要来了物业管家的微信，赶紧说明情由，2000多元的物业费，还不值得我以身犯险。</p><p class=\\\"ql-align-justify\\\"><br></p><p class=\\\"ql-align-justify\\\">管家王姐表示理解，毕竟现在经济环境波动，大家收入不稳定，个体的情绪状态容易受到外部因素的影响，最近管家群里的业主们也动不动就横挑鼻子竖挑眼，她的日子也不好过。加上房价回落，没接房的、骨折甩房的业主比比皆是，催缴物业费已经成了她每天的头等难题。</p><p class=\\\"ql-align-justify\\\"><br></p><p class=\\\"ql-align-justify\\\">我之前在网上看到过“每个小区都有三分之一的业主不缴物业费”的说法，聊天中向王姐核实，她委婉地表示，我们小区投资客较多，装修率不高，去年全小区1070户的收费率确实不足70%——很多像我这样身在外地的投资客不好联系，有些索性没收房就拖着，拉低了缴费率。</p><p class=\\\"ql-align-justify\\\"><br></p><p class=\\\"ql-align-justify\\\">', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 00:08:52', 21);
INSERT INTO `sys_oper_log` VALUES (137, '字典数据', 1, 'com.project.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"空闲\",\"dictSort\":0,\"dictType\":\"house_status\",\"dictValue\":\"空闲\",\"listClass\":\"success\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 10:07:40', 143);
INSERT INTO `sys_oper_log` VALUES (138, '字典数据', 1, 'com.project.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"已租\",\"dictSort\":1,\"dictType\":\"house_status\",\"dictValue\":\"已租\",\"listClass\":\"warning\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 10:07:57', 123);
INSERT INTO `sys_oper_log` VALUES (139, '租房发布', 1, 'com.project.project.system.controller.ProHouseController.add()', 'POST', 1, 'admin', '研发部门', '/system/house', '127.0.0.1', '内网IP', '{\"characteristic\":\"民水民电\",\"createTime\":\"2025-03-30 10:08:31\",\"huxing\":\"三室两厅\",\"id\":1,\"params\":{},\"pic\":\"/profile/upload/2025/03/30/240-800x600_20250330100806A005.jpg\",\"price\":5000,\"status\":\"空闲\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 10:08:31', 76);
INSERT INTO `sys_oper_log` VALUES (140, '租房发布', 2, 'com.project.project.system.controller.ProHouseController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/house', '127.0.0.1', '内网IP', '{\"characteristic\":\"民水民电\",\"createTime\":\"2025-03-30 10:08:32\",\"huxing\":\"2-4-106/三室两厅\",\"id\":1,\"params\":{},\"pic\":\"/profile/upload/2025/03/30/240-800x600_20250330100806A005.jpg\",\"price\":5000,\"status\":\"空闲\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 10:12:44', 40);
INSERT INTO `sys_oper_log` VALUES (141, '租房发布', 1, 'com.project.project.system.controller.ProHouseController.add()', 'POST', 1, 'admin', '研发部门', '/system/house', '127.0.0.1', '内网IP', '{\"characteristic\":\"空调，冰箱，洗衣机\",\"createTime\":\"2025-03-30 10:13:49\",\"huxing\":\"2-4-107\",\"id\":2,\"params\":{},\"pic\":\"/profile/upload/2025/03/30/541-800x600_20250330101316A006.jpg\",\"price\":1000,\"status\":\"已租\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 10:13:49', 14);
INSERT INTO `sys_oper_log` VALUES (142, '字典类型', 1, 'com.project.project.system.controller.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"订单状态\",\"dictType\":\"order_status\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 10:24:27', 119);
INSERT INTO `sys_oper_log` VALUES (143, '字典类型', 1, 'com.project.project.system.controller.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"修复状态\",\"dictType\":\"repire_status\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 10:24:46', 100);
INSERT INTO `sys_oper_log` VALUES (144, '代码生成', 6, 'com.project.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"pro_repire,pro_order,pro_biaozhun\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 10:25:17', 353);
INSERT INTO `sys_oper_log` VALUES (145, '代码生成', 3, 'com.project.project.tool.gen.controller.GenController.remove()', 'DELETE', 1, 'admin', '研发部门', '/tool/gen/4,5,6', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 10:26:03', 187);
INSERT INTO `sys_oper_log` VALUES (146, '代码生成', 2, 'com.project.project.tool.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"biaozhun\",\"className\":\"ProBiaozhun\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"id\",\"columnId\":38,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-30 10:25:17\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TypeName\",\"columnComment\":\"类型\",\"columnId\":39,\"columnName\":\"type_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-30 10:25:17\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"typeName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Price\",\"columnComment\":\"收费标准\",\"columnId\":40,\"columnName\":\"price\",\"columnType\":\"decimal(10,2)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-30 10:25:17\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"price\",\"javaType\":\"BigDecimal\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CreateTime\",\"columnComment\":\"创建时间\",\"columnId\":41,\"columnName\":\"create_time\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2025-03-30 10:25:17\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"0\",\"isRequired\":\"0\",\"javaField\":\"createTime\",\"javaType\":\"Date\",\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 10:26:55', 175);
INSERT INTO `sys_oper_log` VALUES (147, '代码生成', 2, 'com.project.project.tool.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"order\",\"className\":\"ProOrder\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"id\",\"columnId\":45,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-30 10:25:17\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Type\",\"columnComment\":\"类型\",\"columnId\":46,\"columnName\":\"type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-30 10:25:17\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"type\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Huhao\",\"columnComment\":\"户号\",\"columnId\":47,\"columnName\":\"huhao\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-30 10:25:17\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"huhao\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Number\",\"columnComment\":\"住址\",\"columnId\":48,\"columnName\":\"number\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-30 10:25:17\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"number\",\"javaType\":\"String\",\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 10:28:14', 108);
INSERT INTO `sys_oper_log` VALUES (148, '通知公告', 3, 'com.project.project.system.controller.SysNoticeController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/notice/1,2', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 10:29:13', 63);
INSERT INTO `sys_oper_log` VALUES (149, '字典类型', 1, 'com.project.project.system.controller.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"订单类型\",\"dictType\":\"order_type\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 10:29:37', 110);
INSERT INTO `sys_oper_log` VALUES (150, '字典数据', 1, 'com.project.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"水费\",\"dictSort\":0,\"dictType\":\"order_type\",\"dictValue\":\"水费\",\"listClass\":\"success\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 10:29:59', 160);
INSERT INTO `sys_oper_log` VALUES (151, '字典数据', 1, 'com.project.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"电费\",\"dictSort\":1,\"dictType\":\"order_type\",\"dictValue\":\"电费\",\"listClass\":\"warning\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 10:30:12', 211);
INSERT INTO `sys_oper_log` VALUES (152, '代码生成', 2, 'com.project.project.tool.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"order\",\"className\":\"ProOrder\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"id\",\"columnId\":45,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-30 10:25:17\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2025-03-30 10:28:14\",\"usableColumn\":false},{\"capJavaField\":\"Type\",\"columnComment\":\"类型\",\"columnId\":46,\"columnName\":\"type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-30 10:25:17\",\"dictType\":\"order_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"type\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2025-03-30 10:28:14\",\"usableColumn\":false},{\"capJavaField\":\"Huhao\",\"columnComment\":\"户号\",\"columnId\":47,\"columnName\":\"huhao\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-30 10:25:17\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"huhao\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2025-03-30 10:28:14\",\"usableColumn\":false},{\"capJavaField\":\"Number\",\"columnComment\":\"住址\",\"columnId\":48,\"columnName\":\"number\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-30 10:25:17\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 10:30:43', 216);
INSERT INTO `sys_oper_log` VALUES (153, '代码生成', 2, 'com.project.project.tool.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"repire\",\"className\":\"ProRepire\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"id\",\"columnId\":54,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-30 10:25:17\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Type\",\"columnComment\":\"问题类型\",\"columnId\":55,\"columnName\":\"type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-30 10:25:17\",\"dictType\":\"order_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"type\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Address\",\"columnComment\":\"门牌号\",\"columnId\":56,\"columnName\":\"address\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-30 10:25:17\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"address\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Remark\",\"columnComment\":\"问题描述\",\"columnId\":57,\"columnName\":\"remark\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-30 10:25:17\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isRequired\":\"1\",\"javaField\":\"remark\",\"javaType\":\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 10:31:23', 106);
INSERT INTO `sys_oper_log` VALUES (154, '代码生成', 8, 'com.project.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"pro_biaozhun,pro_order,pro_repire\"}', NULL, 0, NULL, '2025-03-30 10:31:29', 723);
INSERT INTO `sys_oper_log` VALUES (155, '收费标准', 1, 'com.project.project.system.controller.ProBiaozhunController.add()', 'POST', 1, 'admin', '研发部门', '/system/biaozhun', '127.0.0.1', '内网IP', '{\"createTime\":\"2025-03-30 10:37:11\",\"id\":1,\"params\":{},\"price\":20,\"typeName\":\"水费\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 10:37:11', 65);
INSERT INTO `sys_oper_log` VALUES (156, '收费标准', 1, 'com.project.project.system.controller.ProBiaozhunController.add()', 'POST', 1, 'admin', '研发部门', '/system/biaozhun', '127.0.0.1', '内网IP', '{\"createTime\":\"2025-03-30 10:37:22\",\"id\":2,\"params\":{},\"price\":1.5,\"typeName\":\"电费\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 10:37:22', 49);
INSERT INTO `sys_oper_log` VALUES (157, '字典数据', 1, 'com.project.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"已修复\",\"dictSort\":0,\"dictType\":\"order_status\",\"dictValue\":\"已修复\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 10:54:55', 157);
INSERT INTO `sys_oper_log` VALUES (158, '字典数据', 1, 'com.project.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"未修复\",\"dictSort\":0,\"dictType\":\"order_status\",\"dictValue\":\"未修复\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 10:55:01', 87);
INSERT INTO `sys_oper_log` VALUES (159, '字典数据', 2, 'com.project.project.system.controller.SysDictDataController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2025-03-30 10:54:55\",\"default\":false,\"dictCode\":106,\"dictLabel\":\"已修复\",\"dictSort\":0,\"dictType\":\"order_status\",\"dictValue\":\"已修复\",\"isDefault\":\"N\",\"listClass\":\"success\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 10:55:06', 37);
INSERT INTO `sys_oper_log` VALUES (160, '字典数据', 2, 'com.project.project.system.controller.SysDictDataController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2025-03-30 10:55:01\",\"default\":false,\"dictCode\":107,\"dictLabel\":\"未修复\",\"dictSort\":0,\"dictType\":\"order_status\",\"dictValue\":\"未修复\",\"isDefault\":\"N\",\"listClass\":\"danger\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 10:55:12', 56);
INSERT INTO `sys_oper_log` VALUES (161, '报修', 1, 'com.project.project.system.controller.ProRepireController.add()', 'POST', 1, 'admin', '研发部门', '/system/repire', '127.0.0.1', '内网IP', '{\"address\":\"2-4-106\",\"createBy\":\"1\",\"createTime\":\"2025-03-30 11:02:36\",\"id\":1,\"params\":{},\"remark\":\"阿三大苏打实打实\",\"status\":\"未修复\",\"type\":\"电路故障\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 11:02:36', 33);
INSERT INTO `sys_oper_log` VALUES (162, '报修', 2, 'com.project.project.system.controller.ProRepireController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/repire', '127.0.0.1', '内网IP', '{\"address\":\"2-4-106\",\"createTime\":\"2025-03-30 11:02:37\",\"id\":1,\"params\":{},\"remark\":\"阿三大苏打实打实阿三大苏打\",\"status\":\"未修复\",\"type\":\"电路故障\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 11:03:08', 10);
INSERT INTO `sys_oper_log` VALUES (163, '报修', 3, 'com.project.project.system.controller.ProRepireController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/repire/1', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 11:05:27', 41);
INSERT INTO `sys_oper_log` VALUES (164, '报修', 1, 'com.project.project.system.controller.ProRepireController.add()', 'POST', 1, 'admin', '研发部门', '/system/repire', '127.0.0.1', '内网IP', '{\"address\":\"阿斯顿\",\"createBy\":\"1\",\"createTime\":\"2025-03-30 11:05:35\",\"id\":2,\"params\":{},\"remark\":\"阿斯顿阿斯顿\",\"status\":\"未修复\",\"type\":\"电路故障\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 11:05:35', 7);
INSERT INTO `sys_oper_log` VALUES (165, '字典数据', 1, 'com.project.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"已修复\",\"dictSort\":0,\"dictType\":\"repire_status\",\"dictValue\":\"已修复\",\"listClass\":\"success\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 11:06:00', 104);
INSERT INTO `sys_oper_log` VALUES (166, '字典数据', 1, 'com.project.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"未修复\",\"dictSort\":0,\"dictType\":\"repire_status\",\"dictValue\":\"未修复\",\"listClass\":\"danger\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 11:06:08', 49);
INSERT INTO `sys_oper_log` VALUES (167, '字典数据', 1, 'com.project.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"已指派\",\"dictSort\":0,\"dictType\":\"repire_status\",\"dictValue\":\"已指派\",\"listClass\":\"warning\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 11:12:37', 102);
INSERT INTO `sys_oper_log` VALUES (168, '角色管理', 1, 'com.project.project.system.controller.SysRoleController.add()', 'POST', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[],\"params\":{},\"roleId\":100,\"roleKey\":\"repire_common\",\"roleName\":\"维修人员\",\"roleSort\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 11:56:58', 107);
INSERT INTO `sys_oper_log` VALUES (169, '用户管理', 1, 'com.project.project.system.controller.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"维修人员\",\"params\":{},\"postIds\":[],\"roleIds\":[100],\"status\":\"0\",\"userId\":100,\"userName\":\"维修人员\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 12:14:30', 107);
INSERT INTO `sys_oper_log` VALUES (170, '报修', 2, 'com.project.project.system.controller.ProRepireController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/repire', '127.0.0.1', '内网IP', '{\"address\":\"阿斯顿\",\"createTime\":\"2025-03-30 11:05:36\",\"id\":2,\"params\":{},\"remark\":\"阿斯顿阿斯顿\",\"repireId\":100,\"status\":\"未修复\",\"type\":\"电路故障\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 12:18:35', 22);
INSERT INTO `sys_oper_log` VALUES (171, '报修', 2, 'com.project.project.system.controller.ProRepireController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/repire', '127.0.0.1', '内网IP', '{\"address\":\"阿斯顿\",\"createTime\":\"2025-03-30 11:05:36\",\"id\":2,\"params\":{},\"remark\":\"阿斯顿阿斯顿\",\"repireId\":100,\"status\":\"已指派\",\"type\":\"电路故障\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 12:21:06', 8);
INSERT INTO `sys_oper_log` VALUES (172, '报修', 2, 'com.project.project.system.controller.ProRepireController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/repire', '127.0.0.1', '内网IP', '{\"address\":\"阿斯顿\",\"createTime\":\"2025-03-30 11:05:36\",\"id\":2,\"params\":{},\"remark\":\"阿斯顿阿斯顿\",\"repireContent\":\"asdasdasdasdasda\",\"repireId\":100,\"status\":\"已修复\",\"type\":\"电路故障\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 12:22:24', 6);
INSERT INTO `sys_oper_log` VALUES (173, '水电费缴纳', 1, 'com.project.project.system.controller.ProOrderController.add()', 'POST', 1, 'admin', '研发部门', '/system/order', '127.0.0.1', '内网IP', '{\"createBy\":\"1\",\"createTime\":\"2025-03-30 13:05:05\",\"huhao\":\"089089123\",\"id\":1,\"number\":\"2单元四号楼106\",\"params\":{},\"price\":40,\"type\":\"水费\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 13:05:05', 33);
INSERT INTO `sys_oper_log` VALUES (174, '水电费缴纳', 1, 'com.project.project.system.controller.ProOrderController.add()', 'POST', 1, 'admin', '研发部门', '/system/order', '127.0.0.1', '内网IP', '{\"createBy\":\"1\",\"createTime\":\"2025-03-30 13:06:03\",\"huhao\":\"123890896\",\"id\":2,\"number\":\"2号楼四单元501\",\"params\":{},\"price\":50,\"type\":\"电费\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 13:06:03', 9);
INSERT INTO `sys_oper_log` VALUES (175, '收费标准', 2, 'com.project.project.system.controller.ProBiaozhunController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/biaozhun', '127.0.0.1', '内网IP', '{\"createBy\":\"1\",\"createTime\":\"2025-03-30 10:37:11\",\"id\":1,\"params\":{},\"price\":20,\"typeName\":\"水费\",\"updateBy\":\"1\",\"updateTime\":\"2025-03-30 13:19:24\",\"updateUserName\":\"若依\",\"userName\":\"若依\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 13:19:24', 29);
INSERT INTO `sys_oper_log` VALUES (176, '新闻管理', 1, 'com.project.project.system.controller.ProNewsController.add()', 'POST', 1, 'admin', '研发部门', '/system/news', '127.0.0.1', '内网IP', '{\"content\":\"<p>1</p>\",\"createBy\":\"1\",\"createTime\":\"2025-03-30 13:20:41\",\"id\":4,\"params\":{},\"pic\":\"/profile/upload/2025/03/30/626-800x600_20250330132039A001.jpg\",\"title\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 13:20:41', 14);
INSERT INTO `sys_oper_log` VALUES (177, '角色管理', 2, 'com.project.project.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-04-30 19:18:23\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2000,2001,2006,2011,2016,2026,2002,2007,2012,2017,2021,2022,2023,2024,2025,2027,2028],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"业主\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 13:23:15', 103);
INSERT INTO `sys_oper_log` VALUES (178, '角色管理', 2, 'com.project.project.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2025-03-30 11:56:58\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2000,2026,2027],\"params\":{},\"roleId\":100,\"roleKey\":\"repire_common\",\"roleName\":\"维修人员\",\"roleSort\":0,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 13:23:22', 32);
INSERT INTO `sys_oper_log` VALUES (179, '菜单管理', 2, 'com.project.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-05-01 20:40:01\",\"icon\":\"date-range\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"物业管理\",\"menuType\":\"M\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"path\":\"ball\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 13:27:09', 35);
INSERT INTO `sys_oper_log` VALUES (180, '菜单管理', 2, 'com.project.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-04-30 19:18:24\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2,\"menuName\":\"系统监控\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"monitor\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 13:27:15', 35);
INSERT INTO `sys_oper_log` VALUES (181, '菜单管理', 2, 'com.project.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-04-30 19:18:24\",\"icon\":\"tool\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":3,\"menuName\":\"系统工具\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"tool\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 13:27:18', 27);
INSERT INTO `sys_oper_log` VALUES (182, '菜单管理', 2, 'com.project.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/dept/index\",\"createTime\":\"2024-04-30 19:18:24\",\"icon\":\"tree\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":103,\"menuName\":\"部门管理\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":1,\"path\":\"dept\",\"perms\":\"system:dept:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 13:27:26', 65);
INSERT INTO `sys_oper_log` VALUES (183, '菜单管理', 2, 'com.project.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/menu/index\",\"createTime\":\"2024-04-30 19:18:24\",\"icon\":\"tree-table\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":102,\"menuName\":\"菜单管理\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":1,\"path\":\"menu\",\"perms\":\"system:menu:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 13:27:30', 37);
INSERT INTO `sys_oper_log` VALUES (184, '菜单管理', 2, 'com.project.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/role/index\",\"createTime\":\"2024-04-30 19:18:24\",\"icon\":\"peoples\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":101,\"menuName\":\"角色管理\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":1,\"path\":\"role\",\"perms\":\"system:role:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 13:27:38', 47);
INSERT INTO `sys_oper_log` VALUES (185, '菜单管理', 2, 'com.project.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/notice/index\",\"createTime\":\"2024-04-30 19:18:24\",\"icon\":\"message\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":107,\"menuName\":\"通知公告\",\"menuType\":\"C\",\"orderNum\":8,\"params\":{},\"parentId\":1,\"path\":\"notice\",\"perms\":\"system:notice:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 13:27:43', 22);
INSERT INTO `sys_oper_log` VALUES (186, '菜单管理', 2, 'com.project.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/dict/index\",\"createTime\":\"2024-04-30 19:18:24\",\"icon\":\"dict\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":105,\"menuName\":\"字典管理\",\"menuType\":\"C\",\"orderNum\":6,\"params\":{},\"parentId\":1,\"path\":\"dict\",\"perms\":\"system:dict:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 13:27:47', 29);
INSERT INTO `sys_oper_log` VALUES (187, '菜单管理', 2, 'com.project.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/post/index\",\"createTime\":\"2024-04-30 19:18:24\",\"icon\":\"post\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":104,\"menuName\":\"岗位管理\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":1,\"path\":\"post\",\"perms\":\"system:post:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 13:27:51', 37);
INSERT INTO `sys_oper_log` VALUES (188, '菜单管理', 2, 'com.project.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/role/index\",\"createTime\":\"2024-04-30 19:18:24\",\"icon\":\"peoples\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":101,\"menuName\":\"角色管理\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":1,\"path\":\"role\",\"perms\":\"system:role:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 13:27:56', 19);
INSERT INTO `sys_oper_log` VALUES (189, '菜单管理', 2, 'com.project.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/menu/index\",\"createTime\":\"2024-04-30 19:18:24\",\"icon\":\"tree-table\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":102,\"menuName\":\"菜单管理\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":1,\"path\":\"menu\",\"perms\":\"system:menu:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 13:28:02', 29);
INSERT INTO `sys_oper_log` VALUES (190, '报修', 1, 'com.project.project.system.controller.ProRepireController.add()', 'POST', 1, 'admin', '研发部门', '/system/repire', '127.0.0.1', '内网IP', '{\"address\":\"阿三大苏打\",\"createBy\":\"1\",\"createTime\":\"2025-03-30 13:43:54\",\"id\":3,\"params\":{},\"remark\":\"阿三大苏打\",\"status\":\"未修复\",\"type\":\"1\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 13:43:54', 38);
INSERT INTO `sys_oper_log` VALUES (191, '报修', 2, 'com.project.project.system.controller.ProRepireController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/repire', '127.0.0.1', '内网IP', '{\"address\":\"阿三大苏打\",\"createTime\":\"2025-03-30 13:43:54\",\"id\":3,\"params\":{},\"remark\":\"阿三大苏打\",\"repireId\":100,\"status\":\"已修复\",\"type\":\"1\",\"userId\":1,\"userName\":\"系统管理员\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 13:44:06', 10);
INSERT INTO `sys_oper_log` VALUES (192, '水电费缴纳', 1, 'com.project.project.system.controller.ProOrderController.add()', 'POST', 1, 'admin', '研发部门', '/system/order', '127.0.0.1', '内网IP', '{\"createBy\":\"1\",\"createTime\":\"2025-03-30 13:55:27\",\"huhao\":\"123123\",\"id\":3,\"number\":\"123123123\",\"params\":{},\"price\":1000,\"type\":\"水费\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 13:55:27', 13);
INSERT INTO `sys_oper_log` VALUES (193, '水电费缴纳', 1, 'com.project.project.system.controller.ProOrderController.add()', 'POST', 1, 'admin', '研发部门', '/system/order', '127.0.0.1', '内网IP', '{\"createBy\":\"1\",\"createTime\":\"2025-03-30 13:55:38\",\"huhao\":\"阿三大苏打23\",\"id\":4,\"number\":\"123123123\",\"params\":{},\"price\":222,\"type\":\"电费\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 13:55:38', 13);
INSERT INTO `sys_oper_log` VALUES (194, '报修', 1, 'com.project.project.system.controller.ProRepireController.add()', 'POST', 1, 'admin', '研发部门', '/system/repire', '127.0.0.1', '内网IP', '{\"address\":\"阿三大苏打\",\"createBy\":\"1\",\"createTime\":\"2025-03-30 13:56:33\",\"id\":4,\"params\":{},\"remark\":\"a啥的阿斯顿a\",\"status\":\"未修复\",\"type\":\"1\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 13:56:33', 19);
INSERT INTO `sys_oper_log` VALUES (195, '报修', 2, 'com.project.project.system.controller.ProRepireController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/repire', '127.0.0.1', '内网IP', '{\"address\":\"阿三大苏打\",\"createTime\":\"2025-03-30 13:56:33\",\"id\":4,\"params\":{},\"remark\":\"a啥的阿斯顿a\",\"repireId\":100,\"status\":\"已指派\",\"type\":\"1\",\"userId\":1,\"userName\":\"系统管理员\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 13:58:46', 25);
INSERT INTO `sys_oper_log` VALUES (196, '菜单管理', 2, 'com.project.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/menu/index\",\"createTime\":\"2024-04-30 19:18:24\",\"icon\":\"tree-table\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":102,\"menuName\":\"菜单管理\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":1,\"path\":\"menu\",\"perms\":\"system:menu:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 13:59:01', 66);
INSERT INTO `sys_oper_log` VALUES (197, '菜单管理', 2, 'com.project.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/role/index\",\"createTime\":\"2024-04-30 19:18:24\",\"icon\":\"peoples\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":101,\"menuName\":\"角色管理\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":1,\"path\":\"role\",\"perms\":\"system:role:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 13:59:05', 34);
INSERT INTO `sys_oper_log` VALUES (198, '水电费缴纳', 1, 'com.project.project.system.controller.ProOrderController.add()', 'POST', 1, '业主', '测试部门', '/system/order', '127.0.0.1', '内网IP', '{\"createBy\":\"2\",\"createTime\":\"2025-03-30 14:01:09\",\"huhao\":\"1237986571\",\"id\":5,\"number\":\"2号楼三单元401\",\"params\":{},\"price\":1000,\"type\":\"水费\",\"userId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 14:01:09', 24);
INSERT INTO `sys_oper_log` VALUES (199, '水电费缴纳', 1, 'com.project.project.system.controller.ProOrderController.add()', 'POST', 1, '业主', '测试部门', '/system/order', '127.0.0.1', '内网IP', '{\"createBy\":\"2\",\"createTime\":\"2025-03-30 14:04:33\",\"huhao\":\"123809128\",\"id\":6,\"number\":\"2号楼三单元401\",\"params\":{},\"price\":100,\"type\":\"电费\",\"userId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 14:04:33', 15);
INSERT INTO `sys_oper_log` VALUES (200, '报修', 1, 'com.project.project.system.controller.ProRepireController.add()', 'POST', 1, '业主', '测试部门', '/system/repire', '127.0.0.1', '内网IP', '{\"address\":\"2号楼4单元2101\",\"createBy\":\"2\",\"createTime\":\"2025-03-30 14:05:03\",\"id\":5,\"params\":{},\"remark\":\"管道漏水\",\"status\":\"未修复\",\"type\":\"2\",\"userId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 14:05:04', 13);
INSERT INTO `sys_oper_log` VALUES (201, '车位管理', 1, 'com.project.project.system.controller.ProCarListController.add()', 'POST', 1, 'admin', '研发部门', '/system/carList', '127.0.0.1', '内网IP', '{\"carNo\":\"B-006\",\"createBy\":\"1\",\"createTime\":\"2025-03-30 14:15:52\",\"id\":6,\"params\":{},\"price\":1092,\"status\":\"未售\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 14:15:52', 12);
INSERT INTO `sys_oper_log` VALUES (202, '车位管理', 2, 'com.project.project.system.controller.ProCarListController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/carList', '127.0.0.1', '内网IP', '{\"carNo\":\"B-006\",\"createBy\":\"1\",\"createTime\":\"2025-03-30 14:15:52\",\"id\":6,\"params\":{},\"price\":1092,\"status\":\"已售\",\"userName\":\"系统管理员\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 14:15:57', 7);
INSERT INTO `sys_oper_log` VALUES (203, '租房发布', 1, 'com.project.project.system.controller.ProHouseController.add()', 'POST', 1, 'admin', '研发部门', '/system/house', '127.0.0.1', '内网IP', '{\"characteristic\":\"无线网，空调，无线网，电视机\",\"createBy\":\"1\",\"createTime\":\"2025-03-30 14:16:25\",\"huxing\":\"三室一厅\",\"id\":3,\"params\":{},\"pic\":\"/profile/upload/2025/03/30/721-800x600_20250330141606A001.jpg\",\"price\":1500,\"status\":\"空闲\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 14:16:25', 16);
INSERT INTO `sys_oper_log` VALUES (204, '租房发布', 2, 'com.project.project.system.controller.ProHouseController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/house', '127.0.0.1', '内网IP', '{\"characteristic\":\"民水民电\",\"createBy\":\"1\",\"createTime\":\"2025-03-30 10:08:32\",\"huxing\":\"2-4-106/三室两厅\",\"id\":1,\"params\":{},\"pic\":\"/profile/upload/2025/03/30/240-800x600_20250330100806A005.jpg\",\"price\":5000,\"status\":\"已租\",\"userName\":\"系统管理员\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 14:16:30', 8);
INSERT INTO `sys_oper_log` VALUES (205, '新闻管理', 1, 'com.project.project.system.controller.ProNewsController.add()', 'POST', 1, 'admin', '研发部门', '/system/news', '127.0.0.1', '内网IP', '{\"content\":\"<p>请各位业主尽快缴纳物业费，谢谢配合，祝您生活愉快<img src=\\\"/dev-api/profile/upload/2025/03/30/841-800x600_20250330141708A003.jpg\\\"></p>\",\"createBy\":\"1\",\"createTime\":\"2025-03-30 14:17:09\",\"id\":5,\"params\":{},\"pic\":\"/profile/upload/2025/03/30/795-800x600_20250330141647A002.jpg\",\"title\":\"物业费开始缴纳了\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 14:17:09', 13);
INSERT INTO `sys_oper_log` VALUES (206, '收费标准', 2, 'com.project.project.system.controller.ProBiaozhunController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/biaozhun', '127.0.0.1', '内网IP', '{\"createBy\":\"1\",\"createTime\":\"2025-03-30 10:37:11\",\"id\":1,\"params\":{},\"price\":40,\"typeName\":\"水费\",\"updateBy\":\"1\",\"updateTime\":\"2025-03-30 14:17:24\",\"updateUserName\":\"系统管理员\",\"userName\":\"系统管理员\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 14:17:24', 14);
INSERT INTO `sys_oper_log` VALUES (207, '用户管理', 1, 'com.project.project.system.controller.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"业主2\",\"params\":{},\"postIds\":[],\"roleIds\":[2],\"status\":\"0\",\"userId\":101,\"userName\":\"业主2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 14:18:00', 185);
INSERT INTO `sys_oper_log` VALUES (208, '用户管理', 1, 'com.project.project.system.controller.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"维修人员2\",\"params\":{},\"postIds\":[],\"roleIds\":[100],\"status\":\"0\",\"userId\":102,\"userName\":\"维修人员2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 14:18:14', 125);
INSERT INTO `sys_oper_log` VALUES (209, '水电费缴纳', 1, 'com.project.project.system.controller.ProOrderController.add()', 'POST', 1, '业主3', NULL, '/system/order', '127.0.0.1', '内网IP', '{\"createBy\":\"103\",\"createTime\":\"2025-03-30 14:19:37\",\"huhao\":\"1237987661\",\"id\":7,\"number\":\"三号楼四单元502\",\"params\":{},\"price\":100,\"type\":\"水费\",\"userId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 14:19:37', 13);
INSERT INTO `sys_oper_log` VALUES (210, '水电费缴纳', 1, 'com.project.project.system.controller.ProOrderController.add()', 'POST', 1, '业主3', NULL, '/system/order', '127.0.0.1', '内网IP', '{\"createBy\":\"103\",\"createTime\":\"2025-03-30 14:19:47\",\"huhao\":\"1237896781\",\"id\":8,\"number\":\"三号楼四单元502\",\"params\":{},\"price\":1000,\"type\":\"电费\",\"userId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 14:19:48', 17);


INSERT INTO `sys_oper_log` VALUES (216, '菜单管理', 3, 'com.project.project.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1055', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 23:24:22', 128);
INSERT INTO `sys_oper_log` VALUES (217, '菜单管理', 3, 'com.project.project.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1056', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 23:24:23', 28);
INSERT INTO `sys_oper_log` VALUES (218, '菜单管理', 3, 'com.project.project.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1057', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 23:24:24', 30);
INSERT INTO `sys_oper_log` VALUES (219, '菜单管理', 3, 'com.project.project.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1058', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 23:24:25', 31);
INSERT INTO `sys_oper_log` VALUES (220, '菜单管理', 3, 'com.project.project.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/1059', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-30 23:24:27', 25);


-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '岗位信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2024-04-30 19:18:23', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2024-04-30 19:18:23', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2024-04-30 19:18:23', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2024-04-30 19:18:23', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '角色信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2024-04-30 19:18:23', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '业主', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2024-04-30 19:18:23', 'admin', '2025-03-30 13:23:15', '普通角色');
INSERT INTO `sys_role` VALUES (100, '维修人员', 'repire_common', 0, '1', 1, 1, '0', '0', 'admin', '2025-03-30 11:56:58', 'admin', '2025-03-30 13:23:22', NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '角色和部门关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 2000);
INSERT INTO `sys_role_menu` VALUES (2, 2001);
INSERT INTO `sys_role_menu` VALUES (2, 2002);
INSERT INTO `sys_role_menu` VALUES (2, 2006);
INSERT INTO `sys_role_menu` VALUES (2, 2007);
INSERT INTO `sys_role_menu` VALUES (2, 2011);
INSERT INTO `sys_role_menu` VALUES (2, 2012);
INSERT INTO `sys_role_menu` VALUES (2, 2016);
INSERT INTO `sys_role_menu` VALUES (2, 2017);
INSERT INTO `sys_role_menu` VALUES (2, 2021);
INSERT INTO `sys_role_menu` VALUES (2, 2022);
INSERT INTO `sys_role_menu` VALUES (2, 2023);
INSERT INTO `sys_role_menu` VALUES (2, 2024);
INSERT INTO `sys_role_menu` VALUES (2, 2025);
INSERT INTO `sys_role_menu` VALUES (2, 2026);
INSERT INTO `sys_role_menu` VALUES (2, 2027);
INSERT INTO `sys_role_menu` VALUES (2, 2028);
INSERT INTO `sys_role_menu` VALUES (100, 2000);
INSERT INTO `sys_role_menu` VALUES (100, 2026);
INSERT INTO `sys_role_menu` VALUES (100, 2027);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '系统管理员', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2025-03-31 16:38:49', 'admin', '2024-04-30 19:18:23', '', '2025-03-31 16:38:49', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, '业主', '业主', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2025-03-30 14:20:22', 'admin', '2024-04-30 19:18:23', '', '2025-03-30 14:20:22', '测试员');
INSERT INTO `sys_user` VALUES (100, NULL, '维修人员', '维修人员', '00', '', '', '0', '', '$2a$10$YFsjnXpZgeaZ9aTWGBY5fuk8QtM1e1/y5WW6R7il4ePHniST07eki', '0', '0', '127.0.0.1', '2025-03-30 14:21:58', 'admin', '2025-03-30 12:14:30', '', '2025-03-30 14:21:57', NULL);


-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '用户和角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (100, 100);
INSERT INTO `sys_user_role` VALUES (101, 2);
INSERT INTO `sys_user_role` VALUES (102, 100);
INSERT INTO `sys_user_role` VALUES (103, 2);

SET FOREIGN_KEY_CHECKS = 1;
