CREATE DATABASE  IF NOT EXISTS `iissy` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `iissy`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 192.168.111.135    Database: iissy
-- ------------------------------------------------------
-- Server version	8.0.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Account`
--

DROP TABLE IF EXISTS `Account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Account` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(50) NOT NULL DEFAULT '0',
  `UserName` varchar(30) NOT NULL DEFAULT '0',
  `Password` varchar(50) NOT NULL DEFAULT '0',
  `RegDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `LastLoginDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `Status` tinyint(4) DEFAULT '0',
  `RoleId` int(11) DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Account`
--

LOCK TABLES `Account` WRITE;
/*!40000 ALTER TABLE `Account` DISABLE KEYS */;
INSERT INTO `Account` VALUES (5,'jimmy','来客心动','e10adc3949ba59abbe56e057f20f883e','2017-07-29 09:38:51','2017-07-29 09:38:51',1,1),(14,'abcdefg','uiuiui','e10adc3949ba59abbe56e057f20f883e','2019-03-16 07:18:10','2019-03-16 07:18:10',0,1),(15,'asdfasdfasd','jimmy','e10adc3949ba59abbe56e057f20f883e','2019-03-16 07:19:52','2019-03-16 07:19:52',0,1),(16,'fghghfghfgh','sdgsdfg','e10adc3949ba59abbe56e057f20f883e','2019-03-16 07:20:11','2019-03-16 07:20:11',0,1),(17,'rtyrtyrtyrt','jimmy','e10adc3949ba59abbe56e057f20f883e','2019-03-20 12:07:12','2019-03-20 12:07:12',0,1),(18,'yuyu','jimmy','e10adc3949ba59abbe56e057f20f883e','2019-03-20 12:12:47','2019-03-20 12:12:47',0,1),(19,'ghgh','jimmy','e10adc3949ba59abbe56e057f20f883e','2019-03-20 12:21:42','2019-03-20 12:21:42',0,1),(20,'sfasfafa','jimmy','e10adc3949ba59abbe56e057f20f883e','2019-03-20 12:24:20','2019-03-20 12:24:20',0,1),(21,'bbbbbb','jimmy','e10adc3949ba59abbe56e057f20f883e','2019-03-20 23:36:13','2019-03-20 23:36:13',0,1),(22,'pinbor','爱施缘','e10adc3949ba59abbe56e057f20f883e','2019-04-05 02:21:38','2019-04-05 02:21:38',1,2);
/*!40000 ALTER TABLE `Account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Article`
--

DROP TABLE IF EXISTS `Article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Article` (
  `Id` varchar(100) NOT NULL,
  `Subject` varchar(200) NOT NULL,
  `Picture` varchar(200) DEFAULT NULL,
  `Description` varchar(500) NOT NULL,
  `Body` mediumtext NOT NULL,
  `UserId` int(11) NOT NULL,
  `NickName` varchar(30) NOT NULL,
  `Origin` varchar(30) DEFAULT NULL,
  `Visited` int(11) NOT NULL DEFAULT '0',
  `PostType` char(20) NOT NULL DEFAULT '技术' COMMENT '0:技术；1：新闻',
  `Status` int(11) NOT NULL DEFAULT '0',
  `AddDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Article`
--

LOCK TABLES `Article` WRITE;
/*!40000 ALTER TABLE `Article` DISABLE KEYS */;
INSERT INTO `Article` VALUES ('100001','假如你被送到了精神病医院，如何最快出来？','','假如把一个正常的你送进精神病医院，你用什么样的策略，使得你能够用最短的时间出来？我想这个时候，你最需要的是冷静，思考，观察，做出合理的策略，来证明你康复了，可以出院了。\n千万不要一味的强调，重复你没病。因为医生见多了，人人进来都说自己没病。\n你需要的不是企图证明你没病，而是你要做给医生看，你每天在康','<div>假如把一个正常的你送进精神病医院，你用什么样的策略，使得你能够用最短的时间出来？我想这个时候，你最需要的是冷静，思考，观察，做出合理的策略，来证明你康复了，可以出院了。</div><div style=\"text-align: center;\"><img src=\"/upload/20170806/52f29f2af0053916025b85c63a3a4447.jpg\"><br></div><div>千万不要一味的强调，重复你没病。因为医生见多了，人人进来都说自己没病。</div><div><br></div><div>你需要的不是企图证明你没病，而是你要做给医生看，你每天在康复。你的策略可以这样：</div><div>第一天：吃饭就打碗，还骂人，傻笑；</div><div>第二天：在医生的监控下，你会吃东西了；</div><div>第三天：你会独自处理自己的事情了；</div><div>第四天：你会嘘寒问暖，还会关心医生了；</div><div>第五天：出院。</div><div><br></div><div><font color=\"#990033\"><i>总结：你被治好了，或者说医生被你治好了，^_^。回到我们企业也是如此，当领导认为你不OK的时候，你千万不可与之争辩，来证明自己做得好，没用的，用以上的策略去治愈你的领导，拿走不谢，^_^。</i></font></div>',5,'来客心动','爱施缘',374,'故事',0,'2017-08-05 10:59:46'),('100002','管人的艺术：孔子为什么教不了领导力？','','孔子的教育方法太高级了，他是为有悟性、聪明甚至有缘分的人准备的。他终其一生都在选择颜回、子贡这样的高级人才，他讲出的每一句话都很深刻，听不懂的就算了。听得懂的，授以衣钵。\n直到今天我们的教育部门还是不断投入资源到重点院校，而我们的基础教育令人失望至极。大家觉得呢，孔子为什么教不了领导力？','孔子的教育方法太高级了，他是为有悟性、聪明甚至有缘分的人准备的。他终其一生都在选择颜回、子贡这样的高级人才，他讲出的每一句话都很深刻，听不懂的就算了。听得懂的，授以衣钵。<div style=\"text-align: center;\"><img src=\"/upload/20170811/fd8128c9c8838713f444b27dc832a1f1blob\"><br></div><div>直到今天我们的教育部门还是不断投入资源到重点院校，而我们的基础教育令人失望至极。大家觉得呢，孔子为什么教不了领导力？</div>',5,'来客心动','爱施缘',377,'故事',0,'2017-08-11 13:00:07'),('100003','这世界有多么的不公平，难道那只大象该死吗？','','昨天下班回家，我掏出钥匙开门，对面的小朋友刚好出门，手上拿着个iPad，穿的非常帅气。小朋友的家我与家刚好对门，他有个哥哥，大他好几岁，上初中了，很高大。他妈妈每天就负责带这两个孩子，送他们上学。\n小朋友今年上小学二年级，以前每天早上我上班，他上学。一见到到我就叫叔叔好，嘴很甜。这段时间，我上班时间','昨天下班回家，我掏出钥匙开门，对面的小朋友刚好出门，手上拿着个iPad，穿的非常帅气。小朋友的家我与家刚好对门，他有个哥哥，大他好几岁，上初中了，很高大。他妈妈每天就负责带这两个孩子，送他们上学。<div><br></div><div>小朋友今年上小学二年级，以前每天早上我上班，他上学。一见到到我就叫叔叔好，嘴很甜。这段时间，我上班时间发生了变化，很久没见到这小朋友了。昨晚一见，真是帅到一塌糊涂的，什么电视里面的小鲜肉，都望尘莫及，大大的眼睛，离太阳穴比常人要近，五官的立体感很强。而且非常礼貌，我与他说话，他就一直正对着我，直到我说你去玩，他才去乘电梯。<div><br></div><div>这让我联想起，以前他妈妈疼打他哥哥的事，下手狠毒，另一个隔壁的姐姐不停的出来保护。我在怀疑，这是亲妈吗，当然怀疑归怀疑，肯定是亲妈了。我再想，如果他妈妈就他哥哥这么一个儿子，还会这么打吗？他哥哥是那种傻大哥的样子，在我看来也还是挺听话，挺礼貌的。但是，总能感觉到，他妈妈更喜欢弟弟，对他哥哥总是有些不耐烦，是因为弟弟更有明星脸，是弟弟更加可爱吗？不知道，只有他妈妈自己知道。</div></div><div style=\"text-align: center;\"><img src=\"/upload/20170812/4c3ef67ce630abcb5a48c545607bd34d.jpeg\"><br></div><div>所以，你说偏爱。即使亲妈对孩子都会有所偏爱，何况在纷繁复杂的社会，被多爱一点，或者被冷漠一点，又能算得了什么呢？再回到动物世界，为了生存，互相残杀，一群狮群偷袭一只大象，难道那只大象该死吗？</div>',5,'来客心动','爱施缘',342,'故事',0,'2017-08-12 05:47:15'),('100004','年轻人最缺的是什么——机会','','上大学的第一节体育课，老师问大家，你们最缺什么？同学们都说缺钱，也没错，大家刚背井离乡，来到一个陌生的成熟，很多地方都得花钱。但是老师摇了摇头说：你们最缺的是机会。\n时间已经过去10几年了，最近几年我会反复想起这幕，也慢慢的认可了老师的说法。这社会，并不如我们理想那样，也不如我们在学校那里那么单纯，','上大学的第一节体育课，老师问大家，你们最缺什么？同学们都说缺钱，也没错，大家刚背井离乡，来到一个陌生的成熟，很多地方都得花钱。但是老师摇了摇头说：你们最缺的是机会。<div style=\"text-align: center;\"><img src=\"/upload/20170823/675709fa3393f8ad385f18554baed02c.jpeg\"><br></div><div>时间已经过去10几年了，最近几年我会反复想起这幕，也慢慢的认可了老师的说法。这社会，并不如我们理想那样，也不如我们在学校那里那么单纯，只要学习成绩好，老师就喜欢你。社会对人才的要求是多样，甚至是可怕的多样的。</div><div><br></div><div>比如，在企业里，我们会想当然的以为，只要好好工作，一心为企业，就会获得公司的好评，就会得到机会。在恋爱中，我们异想天开的认为，只要我对她/他好，一心一意，对方最终会答应我们的。然而这样美好的事情，总不是经常发生。企业是老板的，高层管理也是在打工，他与你一样，也需要获得上面的认可。同时他还需要下面人的配合，听话，为他服务。这就有可能导致，你么之间的利益冲突。而恋爱就更加无定论了，除了传统意义上的价值观以外，颜值，身高，家境，学历，收入这些都是考虑的方面，短时间来说，努力都是无济于事的。</div><div><br></div><div>现状是不让人乐观，那么我们如何获得机会呢？首先，我认为要提高自己的情商，中国的人的内心比较自我，也比较没安全感，所以你的服侍好那些能给你机会的人，得动点脑子，挖掘他的需求和共同爱好，寻找共同利益。期次，磨砺自己，从心灵上，身体上去磨砺。提高自己的竞争力，让自己的变得不那么容易被替代。</div>',5,'来客心动','爱施缘',344,'故事',0,'2017-08-23 23:07:20'),('100005','苹果公布邀请函 9月12日发布新iPhone','','北京时间 9 月 1 日凌晨消息，苹果万众期待的全新 iPhone 发布会邀请函正式公布。从邀请函上我们看到，本次发布会将在 9 月 12 日举办，举办地点为乔布斯剧院。\n　　在本次发布会上，除了推出三款全新的 iPhone 之外，包括之前在 WWDC 上亮相的全新一代 iOS 11 操作系统也将与','<div>　　北京时间 9 月 1 日凌晨消息，苹果万众期待的全新 iPhone 发布会邀请函正式公布。从邀请函上我们看到，本次发布会将在 9 月 12 日举办，举办地点为乔布斯剧院。</div><div style=\"text-align: center;\"><img src=\"/upload/20170901/de8708c28e920bb1bdc357ccfe4da188.jpg\"><br></div><div>　　在本次发布会上，除了推出三款全新的 iPhone 之外，包括之前在 WWDC 上亮相的全新一代 iOS 11 操作系统也将与普通用户见面。</div><div><br></div><div>　　在这三款 iPhone 中，包含了旗舰级的 iPhone 8 以及两款升级版 iPhone 7s 和 iPhone 7s Plus。其中 iPhone 8 将成为苹果首款配备 OLED 显示屏的智能手机，另外还将采用无边框设计风格。其它功能上，iPhone 8 还将配备了 3D 面部识别、无线充电等功能。</div><div><br></div><div>　　而另外两款 iPhone 7s 和 iPhone 7s Plus 则将作为 iPhone 7 和 iPhone 7 Plus 的升级版出现，但是与 iPhone 8 一样搭载苹果 A11 处理器和无线充电功能。</div><div><br></div><div>　　其它硬件方面，苹果还将在本次发布会上发布全新一代的 Apple Watch Series 3 智能手表。新一代 Apple Watch 最大的亮点是首次加入对 LTE 网络的支持，但是只能进行数据交换而无法像 iPhone 一样直接拨打电话。</div><div><br></div><div>　　最后一款硬件则是升级版的 Apple TV 机顶盒，新一代 Apple TV 将加入对 4K 和 HDR 等功能的支持。</div><div><br></div><div>　　系统方面，伴随两款新产品亮相的是正式版 watchOS 4 和 tvOS 11 操作系统。</div><div><br></div><div>　　此次发布会邀请函虽然未提 iPhone 8，但也已经心照不宣了。</div><div><br></div><div>　　邀请函主旨为“我们，家里见。”这和发布地点 Apple Park 乔布斯剧院不谋而合，很显然，作为 10 周年纪念款，苹果打算让这一部特殊的产品“回家”，同时也寓意欢迎媒体到刚刚竣工的“新家”做客。</div><div><br></div><div>　　而邀请函英文为“Let’s meet at our place“，二者相比，中文翻译更加不见外。</div><div><br></div><div>　　而邀请函中心苹果 logo 的色彩值得玩味，蓝、青、黄、橙的渐变混合配色，既暗示了 iPhone 可能有新的配色，此外，也能看出是两部手机错落摆放，预示着不止发布一款 iPhone。</div><div><br></div><div>　　关于这次发布会的现场直播，腾讯数码、腾讯科技也会一如既往带来中文同传直播，同时也会有前方记者的第一时间产品上手，这次可别错过了。</div>',5,'来客心动','爱施缘',348,'故事',0,'2017-09-01 05:33:16'),('100006','男人如何给女人安全感？','','女人是天生缺乏安全感的动物，一旦情感关系不稳定，她们的安全感就会受到威胁，就会变得患得患失。\n有时候，为了得到这种安全感，女人会变得过度敏感，甚至无理取闹。为什么有时女生会因男朋友没接电话、没回信息，就想那么多？其实就是缺乏安全感的表现。\n那么作为男性，如何才能给女人足够的安全感呢？简单总结就是四个','<div>女人是天生缺乏安全感的动物，一旦情感关系不稳定，她们的安全感就会受到威胁，就会变得患得患失。</div><div style=\"text-align: center;\"><img src=\"/upload/20170916/3c584b910374226c59f1586011cf847d.jpg\"><br></div><div>有时候，为了得到这种安全感，女人会变得过度敏感，甚至无理取闹。为什么有时女生会因男朋友没接电话、没回信息，就想那么多？其实就是缺乏安全感的表现。</div><div><br></div><div>那么作为男性，如何才能给女人足够的安全感呢？简单总结就是四个心：</div><div><br></div><div><b>1. 自信心</b></div><div>对女人来说，自信的男人才踏实可靠。如果一个男人缺乏自信，说话唯唯诺诺，做事拖拖拉拉，那么女人就会有一种没保障的感觉；但如果一个男人过分自信，满嘴跑火车，没干一件实事，也不敢轻易将自己托付于他。</div><div><br></div><div><b>2. 责任心</b></div><div>对待感情要专一。自私或花心的男人不能给女人安全感，既然开始了这段感情，那就要承担起该有的责任，也包括与其他女人保持距离。</div><div><br></div><div><b>3. 贴心</b></div><div>时常关心女人的心情和感受，关注她的情绪，实时地嘘寒问暖，通过一些日常小事表达自己的体贴和关爱。记住，这些行动要比语言更有用。比如，在她身体不舒服的时候，不是嘱咐她多喝水，而是将水杯递给她。</div><div><br></div><div><b>4. 用心</b></div><div>用心投入，适当制造些浪漫和惊喜，让女人时刻能感受到你对她的爱意。比如，平日里送束花、小礼物，或者她无意中提到想要什么，你留心记下来，并在合适的时候送给她，会让她非常开心。</div>',5,'来客心动','爱施缘',355,'故事',0,'2017-09-16 02:11:35'),('100007','当今世界仍有8亿人在挨饿，重现增长趋势','asdfasdf','据外媒报道，过去十年，全球饥饿人口数量呈下降趋势。然而，联合国最新报告显示，随着暴力冲突增加以及受气候变暖影响，世界饥饿人口重新出现增长。联合国报告指出，全球食不果腹、营养不良的人口2016年有8.15亿，占全球人口的11%，比2015年多出3800万。饥饿人口猛增的原因首先是全球武装冲突增多以及受','<div>据外媒报道，过去十年，全球饥饿人口数量呈下降趋势。然而，联合国最新报告显示，随着暴力冲突增加以及受气候变暖影响，世界饥饿人口重新出现增长。联合国报告指出，全球食不果腹、营养不良的人口2016年有8.15亿，占全球人口的11%，比2015年多出3800万。饥饿人口猛增的原因首先是全球武装冲突增多以及受地球变暖的影响。</div><div style=\"text-align: center;\"><img src=\"/upload/20170917/d38bc6133be37ccb5ff4be45a6f9b94d.jpg\"><br></div><div>联合国该报告由下属的粮农组织、国际农业发展基金、儿童基金会、世界粮食计划署和世界卫生组织共同撰写。报告写道，问题最为严重的地区是常年处于内战中的南苏丹。此外还有尼日利亚东北部、索马里和也门等危机地区。</div><div><br></div><div>报道指出，过去十年，冲突在数量上快速增加，在性质上呈日益复杂化、难以应对的趋势。而世界上粮食不安全和食物不足儿童的大部分集中在冲突地区。这种情况为我们敲响了无法忽视的警钟：如果我们不能消除破坏粮食安全和营养的所有因素，就无法实现到2030年消除饥饿和所有形式的营养不良的目标。</div><div><br></div><div>报告指出，大约1.55亿五岁以下的儿童发育迟缓，而5200万儿童消瘦。报告表示，这些趋势不仅由冲突和气候变化所导致，而且也是饮食习惯显著变化和经济放缓引发的后果。</div><div><br></div><div>报告还显示，在全球饥饿人口总数8.15亿人当中，亚洲占了5.2亿，非洲占2.43亿。从人口比例来看，非洲问题最为严重，有20%的饥饿人口，东非甚至高达33.9%。</div>',5,'来客心动','爱施园',423,'故事',0,'2017-09-17 09:48:43'),('100008','生活不止眼前的代码','/upload/20190316/b4bd61487aeb7dd3b195de5994250568.png','不知道从什么时候开始，程序员这个职业已经成为一个高危的行业。苏享茂被妻子一步步逼到绝路，到自杀的例子，不断在提醒每个程序员，现在的社会变化得太快，套路越来越多，人心越来越复杂，骗子越来越多，傻子已供不','<div>不知道从什么时候开始，程序员这个职业已经成为一个高危的行业。苏享茂被妻子一步步逼到绝路，到自杀的例子，不断在提醒每个程序员，现在的社会变化得太快，套路越来越多，人心越来越复杂，骗子越来越多，傻子已供不应求，而我们还停留在灯光昏暗的格间里写着没完没了的代码，是时候该变一变了？</div><div style=\"text-align: center;\"><img src=\"/upload/20170919/3f70ee30efb5728e779230c24d6cd027.jpg\"><br></div><div>一、多走出去，去沟通交流，多跨界交朋友，去体验更加的工作与生活模式，有了经历才能有阅历，实际上我们对外的机会是很多的，有那么多的同学同事，有那么多的亲人朋友，有那么多的客户资源，多与同学沟通交流能够看到更多的生活方式，多与同事沟通交流能够提高更多的能力，多与亲人沟通交流能够感觉更多的温暖，多与朋友沟通交流能够得到更多的快乐，多与客户沟通交流能够写出更好的程序。</div><div><br></div><div>二、增强一下法律知识，这是很有必要的，人在江湖走，有时要挨刀，学习运用法律保护自已生命与财产的安全，网上说了：“宋喆刑拘，马蓉还钱，程序员自杀，王宝强和苏享茂生死之间，隔着一个决定生死的律师”。</div><div><br></div><div>三、提高常识，所谓常识就是指”一个生活在社会中的心智健全的成年人所应该具备的基本知识，包括生存技能（生活自理能力）、基本劳作技能、基础的自然科学以及人文社会科学知识等，一切基于敬畏自然。可以多到外面闯荡，多亲自体验生活、挫折、失败，多在逆境中奋发成长。让身心都变得强大，才可以顶得住人世间的悲欢离合。</div><div><br></div><div>生活不止眼前的代码，还有诗和远方，沿着梦想的绿茵，处处都是纯真年代的桃园！</div>',5,'来客心动','中关村在线',417,'故事',0,'2017-09-19 08:18:54');
/*!40000 ALTER TABLE `Article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Functionality`
--

DROP TABLE IF EXISTS `Functionality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Functionality` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Funname` varchar(50) NOT NULL,
  `FunType` varchar(50) DEFAULT NULL,
  `Controller` varchar(50) DEFAULT NULL,
  `CreateTime` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedTime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Functionality`
--

LOCK TABLES `Functionality` WRITE;
/*!40000 ALTER TABLE `Functionality` DISABLE KEYS */;
INSERT INTO `Functionality` VALUES (1,'添加文章','内容管理','postarticle','2019-03-30 14:10:02','2019-03-30 14:10:02'),(2,'用户列表','用户管理','accountlist','2019-03-30 14:10:59','2019-03-30 14:10:59'),(10,'文章列表','内容管理','articlelist','2019-03-31 00:14:48','2019-03-31 00:14:48'),(11,'角色列表','用户管理','rolelist','2019-03-31 00:15:17','2019-03-31 00:15:17'),(12,'权限列表','系统管理','functionlist','2019-03-31 00:16:00','2019-03-31 00:16:00'),(13,'添加权限','系统管理','postfunction','2019-03-31 00:16:22','2019-03-31 00:16:22'),(14,'添加角色','系统管理','postrole','2019-03-31 00:16:46','2019-03-31 00:16:46'),(15,'角色权限配置','系统管理','mappingpost','2019-03-31 00:17:57','2019-03-31 00:17:57'),(16,'文件上传','内容管理','upload','2019-03-31 00:18:43','2019-03-31 00:18:43'),(25,'获取角色修改','系统管理','getrole','2019-04-01 00:19:45','2019-04-01 00:19:45'),(26,'获取权限编辑','系统管理','getfunction','2019-04-01 00:19:53','2019-04-01 00:19:53'),(27,'模版页面','系统管理','webpack','2019-04-05 01:10:40','2019-04-05 01:10:40'),(28,'角色权限表','系统管理','functiongroup','2019-04-05 01:38:14','2019-04-05 01:38:14'),(29,'获取文章编辑','内容管理','getarticle','2019-04-05 01:42:46','2019-04-05 01:42:46'),(30,'删除文章','内容管理','delarticle','2019-04-05 12:34:29','2019-04-05 12:34:29');
/*!40000 ALTER TABLE `Functionality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RoleFunctionMapping`
--

DROP TABLE IF EXISTS `RoleFunctionMapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `RoleFunctionMapping` (
  `FunID` int(11) NOT NULL,
  `RoleID` int(11) NOT NULL,
  PRIMARY KEY (`FunID`,`RoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RoleFunctionMapping`
--

LOCK TABLES `RoleFunctionMapping` WRITE;
/*!40000 ALTER TABLE `RoleFunctionMapping` DISABLE KEYS */;
INSERT INTO `RoleFunctionMapping` VALUES (1,1),(1,2),(2,1),(2,2),(10,1),(10,2),(11,1),(11,2),(12,1),(12,2),(13,1),(14,1),(15,1),(16,1),(16,2),(26,1),(27,1),(27,2),(28,1),(28,2),(29,1),(29,2),(30,2);
/*!40000 ALTER TABLE `RoleFunctionMapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Roles`
--

DROP TABLE IF EXISTS `Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Roles` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `RoleName` varchar(50) NOT NULL,
  `Status` tinyint(4) NOT NULL DEFAULT '1',
  `CreateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedTime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Roles`
--

LOCK TABLES `Roles` WRITE;
/*!40000 ALTER TABLE `Roles` DISABLE KEYS */;
INSERT INTO `Roles` VALUES (1,'管理员',1,'2019-03-30 11:29:15','2019-03-30 11:29:15'),(2,'编辑专员',1,'2019-03-30 13:47:28','2019-03-30 13:47:28');
/*!40000 ALTER TABLE `Roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-06  7:36:15
