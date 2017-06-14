-- MySQL dump 10.16  Distrib 10.1.24-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	10.1.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `library`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `library` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `library`;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_date` date NOT NULL,
  `press` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `press_addr` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages` int(11) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `b_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hot` int(11) DEFAULT '0',
  `borrow` int(11) DEFAULT '0',
  `dated` tinyint(1) DEFAULT '0',
  `price` float DEFAULT '25',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'你要像喜欢甜一样喜欢苦','Stephanie Danler','2017-02-01','江苏凤凰文艺出版社',' 江苏',360,10,'文学','《你要像喜欢甜一样喜欢苦》内容简介：22岁女孩泰丝，大学一毕业就跑到纽约，身无分文，住出租屋，对新生活充满期待。她在曼哈顿一家高级餐厅找到工作，开始学做一名合格的侍者。\n“你为什么选择纽约？”“我没有无穷尽的选择，世界上只有这一个地方，大到足以容纳如此之多肆无忌惮、漫无边际的欲望……我幻想过上一种二十四小时昼夜不息的生活。”',0,0,0,25),(2,'月族：暗月之影','玛丽莎·梅尔','2016-08-01','北京联合出版公司','北京',364,5,'文学','1、现象级全球超级畅销书：连续三年超180周“霸占”榜单桂冠！\n● 《纽约时报》《今日美国》畅销书排行榜桂冠，在榜长达30周！\n● 亚马逊年度星佳图书、美国亚马逊青年图书畅销榜连续三年超180周销售冠军！\n● 美国独立书商协会年度选书\n● 出版人周刊、Goodreads、科克斯书评、浪漫时代书年度星佳图书。\n● 横扫美国各大青年图书大奖：美国国家公共广播电台、美国青年图书馆服务协会奖、国际阅读学会青年读物奖、国会大厦瞩目新书。\n● 全球著名独立书评网站评分远超同类书！比如《暮光之城：暮色》3.56分，《饥饿游戏》4.36分，《月族：暗月之影》更是高达4.45分，全系好评超过130万条，想读指数高达95%！\n● 本书在亚马逊同样斩获佳绩：比如，获得雨果奖的《三体》推荐星级为4.2颗星，而本书高达4.6颗星高分推荐！',0,0,0,25),(3,'摆渡人','克莱儿·麦克福尔','2016-04-15','百花洲文艺出版社','北京',274,8,'文学','　　★《摆渡人》畅销欧美33个国家的心灵治愈小说，令千万读者灵魂震颤的人性救赎之作。一个史诗般动人的温情故事，回归人性，引人深思。\n　　★《摆渡人》荣获苏格兰图书大奖、布兰福博斯奖、格兰扁图书奖、考文垂灵感图书奖候补提名，入围英国文学社图书大奖，英国《卫报》等多家重量级报刊媒体震撼推荐。\n　　★如果命运是一条孤独的河流，谁会是你灵魂的摆渡人？\n　　★如果我真的存在，也是因为你需要我。\n　　《摆渡人》作者从少年人的角度洞悉人性的温情，通过男女主人公的所见所感，细腻道出所有人对亲情、友情和爱情幸福的向往。巧妙、惊人的情节交错，让这部小说别具一格，值得瞩目。',0,0,0,25),(4,'经济学原理(第7版)','N.Gregory Mankiw','2015-05-01','北京大学出版社','北京',918,10,'经济','《经济学原理（第7版）：微观经济学分册+宏观经济学分册》是目前国内市场上很受欢迎的引进版经济学教材之一，其特点是它的“学生导向”，它更多地强调经济学原理的应用和政策分析，而非经济学模型。第7版在延续该书一贯风格的同时，对第6版作了全面修订和改进。大幅更新了“新闻摘录”“案例研究”等专栏，拓展了章后习题。',0,0,0,25),(5,'解读中国经济(增订版)','林毅夫','2014-09-01','北京大学出版社','北京',358,3,'经济','《解读中国经济(增订版)》是解读中国经济最权威著作，总结了中国与其他国家、地区经济发展和改革活动的经验，提出了一个经济发展和转型的一般理论，并以此理论分析中国在改革和发展过程中取得的各项成就，面临的主要经济、社会问题，探讨其原因和解决问题的办法。书中用通俗的语言和生动的实例，系统地回顾了中国经济的发展历程与改革经验，深入浅出地讲解了中国经济发展的热点问题。新版新增了对最新经济形势的分析与预测，并就“资本账户”和“林张之争”等热点问题做出了重要评论。',0,0,0,25),(6,'斯坦福极简经济学','泰勒','2015-02-11','湖南人民出版社','湖南',245,2,'经济','斯坦福大学最受欢迎的经济课！\n　　从36个经济学关键名词入手，每篇约3000字，用生活实例引入主要原理，解释、分析经济现象，概念清晰，没有经济基础，也能轻松理解。简约不简单，帮助我们认识复杂的世界，在经济社会中，成为一个更聪明、更成熟的参与者。',0,0,0,25),(7,'艺术:让人成为人(人文学通识)','Richard Janaro,Thelma Altshuler','2012-03-01','北京大学出版社','北京',642,2,'艺术','《艺术:让人成为人(人文学通识)(第8版)》综述了人文科学研究的工具和方法，讲述人类如何不断拓展视野、提高客观、冷静的思维能力，从而丰富人类自身的生活的历程。全面涉猎了文学、艺术、音乐、戏剧等人文科学研究领域，分主题探讨了宗教、道德、幸福观、死生观，以及辩论和自由等。\n《艺术:让人成为人(人文学通识)(第8版)》全面涉猎了文学、艺术、音乐、戏剧等人文科学研究领域，分主题探讨了宗教、道德、幸福观、死生观，以及辩论和自由等。',0,0,0,25),(8,'写给大家的西方美术史','蒋勋','2015-07-01','湖南美术出版社','湖南',319,2,'艺术','《写给大家的西方美术史》以时间为纬线，以各个艺术流派的艺术家及其代表性的作品为经线，回到历史现场，从史前时期的一把燧石手斧开始，围绕地中海这一世界西方美术的血脉初源，带你一路走过神秘的埃及、伟大的希腊、光荣的罗马……直到光辉的印象派，及光怪陆离的现当代艺术。或做正面解读，或挖背后的故事，数千年“美”的往事，娓娓道来。\n蒋勋先生用柔美、亲民的文字，借助“西方美术史”这一扇通向世界的窗口，使得我们眺望和浏览世界不同文化的“美”的观念、材料、技法，省思人类共同的“美”的向往与创造。',0,0,0,25),(9,'艺术的故事','E.H. Gombrich','2008-04-01','广西美术出版社','广西',688,5,'艺术','《艺术的故事》内容简介：有关艺术的书籍中最著名、最流行的著作之一。它概括地叙述了从最早的洞窟绘画到当今的实验艺术的发展历程，以阐明艺术史是“各种传统不断迂回、不断改变的历史，每一件作品在这历史中都既回顾过去又导向未来”。',0,0,0,25),(10,'费曼讲物理:入门','Richard P.Feynman','2012-09-01','湖南科学技术出版社','湖南',145,5,'自然科学','《费曼讲物理:入门》是从著名的费曼《物理学讲义》爷选的六节物理课。内容包括“运动着的原子”、“基础物理学”、“物理学与其他学科的关系”、“能量守恒”、“万有引力理论”、“量子行为”六 \r\n部分。',10,0,0,25),(11,'寂静的春天','Carson R.','2015-11-01','北京大学出版社','北京',241,4,'自然科学','《寂静的春天》：世界环保主义的《圣经》。美国前副总统戈尔称此书是改变历史进程的巨著。美国国会图书馆评选100本影响美国最深的图书，名列第三。曲格平、刘慈欣、柴静及众多环保人士深受影响。蒋高明（中国生态农业运动旗手）长篇导读。著名摄影师卢广（荷赛金奖/尤金·史密斯人道主义摄影奖得主）附16幅震撼作品，反思中国污染之痛。',0,0,0,30),(12,'生活中奇妙的化学:从厨房到客厅,分子无处不在','Yann Verchier,Nicolas Gerber','2013-11-01','机械工业出版社','北京',138,2,'自然科学','《生活中奇妙的化学:从厨房到客厅,分子无处不在》包括：砖，我们的建筑材料；客厅里的神奇化学；厨房里的分子们；浴室里的化学现象；床脚边的化学；充满化学现象的花园等内容。全书通过简明易懂的文字及幽默有趣的方式，采用漫画的形式，将隐藏在我们日常生活中的奇妙的化学作用为读者一一讲解：通过“知识备忘录”讲解基本的化学常识及化学现象原理；通过“家庭小实验”引导和鼓励青少年积极动手操作，激发他们的学习兴趣；通过“真不可思议”这一板块介绍了一些你不知道的与化学有关的事件或现象。',0,0,0,25),(13,'中国哲学简史','冯友兰','2013-01-01','北京大学出版社','北京',325,4,'哲学','冯友兰编著的《中国哲学简史》打通了古今中外的相关知识，以宏观开阔的视野对中国哲学进行了深入浅出、融会贯通的讲解。在有限的篇幅里融入了冯友兰对中国哲学的理解，是史与思的结晶，充满了人生的睿智与哲人的洞见，寄托着对现实的人文关怀。《中国哲学简史》在世界各地有多种译本，拥有众多的读者，是许多大学中国哲学的通用教材，同样，它也是广大读者学习中国古典文化、借鉴中国传统智慧、启迪现实人生的入门书。它是一部名副其实的可以影响大众一生的文化经典。',0,0,0,25),(14,'查拉图斯特拉如是说','Friedrich Nietzsche','2014-09-01','生活·读书·新知三联书店','北京',404,5,'哲学','《查拉图斯特拉如是说》是尼采假借查拉图斯特拉之名说出他自己的哲学思想，也可以说是一本查拉图斯特拉的说教集或者说是查拉图斯特拉的行藏录，又有点像圣者传一类的书，但这位圣者并不是宗教的圣者，而且本书并不像一般宗教书那样枯燥乏味，却是具有极高文学价值的散文诗。\n\n《查拉图斯特拉如是说》是尼采的里程碑式的作品，几乎包括了尼采的全部思想。全书以汪洋恣肆的诗体写成，熔酒神的狂醉与日神的清醒于一炉，通过“超人”查拉图斯特拉之口宣讲未来世界的启示，在世界哲学史和诗歌史上均占有独特的不朽的地位。',0,0,0,25),(15,'悲剧的诞生','Friedrich Nietzsche','2014-07-01','译林出版社','江苏',158,5,'哲学','《悲剧的诞生》是尼采的第一部较为系统的哲学和美学著作，他在书中独创了“日神精神”和“酒神精神”这一对重要概念，借此为切入口，以独特的视角和睿智的语言，重新阐释古希腊文化，进而探讨艺术的起源、本质和功能乃至人生的意义。是读者理解尼采美学和哲学的入门书。',0,0,0,25),(16,'大纵深战役理论','M.H.图哈切夫斯基','2007-01-01','解放军出版社','北京',477,1,'军事政治','《大纵深战役理论》是本丛书中新增加的一本。大纵深战役理论是苏联在上世纪二十至三十年代创立的一种军事理论，这种理论在第二次世界大战的苏德战场经受了检验，为苏联赢得最后胜利发挥了重要作用。但是由于历史的种种原因，在苏联和俄罗斯，这一理论并未有以专著的形式传播开来，众多这一理论的创立者只是写了很多文章、条例加以阐述，仅发表于多科书刊杂志上。',0,0,0,25),(17,'百年航母','张召忠','2011-07-01','广东经济出版社','广东',400,1,'军事政治','自古以来，华夏文明的辞典中，就不乏“海国”一词。华夏民族，并不从一开始就是闭关锁国的，而是有着大海一般宽阔的胸怀。正是大海，一直激发着我们这个有着五千年历史的文明古国的想象力和创造力。一部中国海洋文化的历史是波澜壮阔的历史，让后人壮怀激烈，意气风发。',0,0,0,25),(18,'政治的细节','Robert J.Art','2014-03-01','世界图书出版','北京',472,3,'军事政治','《政治的细节》畅销40 年，是理解政治学的必备读物。它囊括了政治学领域内的经典文章共53 篇，分为无政府状态、武力的使用、国际政治经济学与全球化、世界政治中的当代议题四个部分，将政治核心理论一网打尽，汇聚了世界上最出色的政治学者的观点，或相互印证，或互为补充，或针锋相对，为读者提供了一种更为多元的思考问题的方式，一种更为广阔的审视国际政治的视角。',0,0,0,25),(19,'我们内心的冲突','卡伦·霍妮','2016-11-23','长江文艺出版社','武汉',264,1,'励志','你是真的喜欢某人，还是觉得应该喜欢他就自以为喜欢上了他？\n看到亲人离世，你是真的感到悲伤，抑或只是习惯性地表达哀悼？\n你是真的希望成为某种人，还是仅仅因为这种人受人尊敬且收入丰厚？\n……\n\n本书指出，由于深受生活环境的影响，我们总是与我们想成为的人背道而驰，于是产生了这些足以主宰我们人生的内心冲突。为了解决这些冲突，我们不但自欺欺人地虚构了各种“理想化意象”，通过“外化”把责任推给他人，还基于不同的性格倾向发展出一系列各不相同的防御策略：顺从型选择了亲近他人、对抗型选择了抗拒他人、疏离型选择了疏远他人。但这些策略更像是精致的代偿与逃避，不但没有消除冲突，反而使我们深感恐惧、焦虑和绝望，无法真诚地投入任何关系或者工作中，觉得一切已经定型，再也不会有所好转，在糟糕的道路上越陷越深。\n\n作为新弗洛伊德主义的主要代表人物，卡伦霍妮相信，人都有成长的愿望，会一直愿意成为一个更好的人。因此，她认为，只要改变了产生冲突的条件，就能真正解决它们。本书指出了我们在被内心冲突困扰时遇到的问题，并提出解决冲突的切实方法，让我们学会处置内心的孤独、疯狂、迷失和热爱，收获内心的完整、成熟和安宁，重建人生自信，更加勇敢而健康地活下去。',0,0,0,25),(20,'自控力','Kelly McGonigal','2012-08-01','文化发展出版社','北京',272,1,'成功','《自控力》讲述了什么是自控力？自控力如何发生作用？为何自控力如此重要？它能帮我们认清自己的目标，增强自控力，并作出改变一生的决定——无论这个决定是减肥、管理收支、减缓压力、克服拖延症、成为好家长，还是找到你生活的重心。这门课程就是《自控力》一书的基础。《自控力》为读者提供了清晰的框架，讲述了什么是自控力，自控力如何发生作用，以及为何自控力如此重要。',0,0,0,25),(21,'高效能人士的七个习惯','Stephen R.Covey','2015-02-01','中国青年出版社','北京',395,1,'成功','《高效能人士的七个习惯(25周年纪念版)》是一部永恒的畅销书，里程碑式的著作——高居《纽约时报》最畅销书排行榜之首长达20多年，总销量超过2500万册，在全球140个国家以40种语言出版。《高效能人士的七个习惯(25周年纪念版)》常年稳居中国各大新华书店、亚马逊最畅销排行榜前10名，畅销25年，影响力覆盖几亿人。一代“思想巨匠”的经典巨著全新升级版。塑造高效能的个人和组织。双色，大16开，装帧精美。',0,0,0,25),(22,'12','唐凯捷','1999-12-01','武汉出版社','武汉',256,10,'测试','测试',3,0,0,25),(23,'俞洋的故事','张俊达','2001-12-01','武汉出版社','武汉',256,10,'gay','俞洋不是gay',20,0,0,25);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrow_list`
--

DROP TABLE IF EXISTS `borrow_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `borrow_list` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `b_id` mediumint(9) NOT NULL,
  `u_id` mediumint(9) NOT NULL,
  `b_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `r_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uniqueid` mediumint(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrow_list`
--

LOCK TABLES `borrow_list` WRITE;
/*!40000 ALTER TABLE `borrow_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `borrow_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finelist`
--

DROP TABLE IF EXISTS `finelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finelist` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `b_id` mediumint(9) NOT NULL,
  `u_id` mediumint(9) NOT NULL,
  `h_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `amount` float NOT NULL,
  `reason` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finelist`
--

LOCK TABLES `finelist` WRITE;
/*!40000 ALTER TABLE `finelist` DISABLE KEYS */;
INSERT INTO `finelist` VALUES (1,23,1,'2017-06-14 03:18:07',5,'过期',1);
/*!40000 ALTER TABLE `finelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `during_days` int(11) DEFAULT NULL,
  `rt_late_charge` int(11) DEFAULT NULL,
  `destory_charge` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ubooks`
--

DROP TABLE IF EXISTS `ubooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ubooks` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `b_id` mediumint(9) NOT NULL,
  `borrow` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubooks`
--

LOCK TABLES `ubooks` WRITE;
/*!40000 ALTER TABLE `ubooks` DISABLE KEYS */;
INSERT INTO `ubooks` VALUES (1,1,0),(2,1,0),(3,1,0),(4,1,0),(5,1,0),(6,1,0),(7,1,0),(8,1,0),(9,1,0),(10,1,0),(11,2,0),(12,2,0),(13,2,0),(14,2,0),(15,2,0),(16,3,0),(17,3,0),(18,3,0),(19,3,0),(20,3,0),(21,3,0),(22,3,0),(23,3,0),(24,4,0),(25,4,0),(26,4,0),(27,4,0),(28,4,0),(29,4,0),(30,4,0),(31,4,0),(32,4,0),(33,4,0),(34,5,0),(35,5,0),(36,5,0),(37,6,0),(38,6,0),(39,7,0),(40,7,0),(41,8,0),(42,8,0),(43,9,0),(44,9,0),(45,9,0),(46,9,0),(47,9,0),(48,10,0),(49,10,0),(50,10,0),(51,10,0),(52,10,0),(53,11,0),(54,11,0),(55,11,0),(56,11,0),(57,12,0),(58,12,0),(59,13,0),(60,13,0),(61,13,0),(62,13,0),(63,14,0),(64,14,0),(65,14,0),(66,14,0),(67,14,0),(68,15,0),(69,15,0),(70,15,0),(71,15,0),(72,15,0),(73,16,0),(74,17,0),(75,18,0),(76,18,0),(77,18,0),(78,19,0),(79,20,0),(80,21,0),(81,22,0),(82,22,0),(83,22,0),(84,22,0),(85,22,0),(86,22,0),(87,22,0),(88,22,0),(89,22,0),(90,22,0),(91,23,0),(92,23,0),(93,23,0),(94,23,0),(95,23,0),(96,23,0),(97,23,0),(98,23,0),(99,23,0),(100,23,0);
/*!40000 ALTER TABLE `ubooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` bit(1) DEFAULT NULL,
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  `fine` float DEFAULT '0',
  `b_amount` int(11) DEFAULT '5',
  `cancel` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'david','123','\0','2017-06-14 03:18:07',0,0,5,'\0'),(2,'admin','admin','','2017-05-23 09:17:18',1,0,5,'\0'),(3,'haha','123','\0','2017-06-14 03:42:43',1,0,5,'\0');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-14 11:54:38
