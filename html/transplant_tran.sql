-- phpMyAdmin SQL Dump
-- version 2.10.2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Oct 25, 2013 at 05:06 PM
-- Server version: 5.0.45
-- PHP Version: 5.2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `transplant_tran`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `boardalu_post`
-- 

CREATE TABLE `boardalu_post` (
  `post_id` int(7) unsigned zerofill NOT NULL auto_increment,
  `post_details` text NOT NULL,
  `post_name` varchar(250) NOT NULL default '',
  `post_email` varchar(250) NOT NULL default '',
  `post_icq` varchar(100) NOT NULL default '',
  `post_pic` varchar(250) NOT NULL default '',
  `post_date` varchar(100) NOT NULL default '',
  `subject_id` varchar(100) NOT NULL default '',
  `post_ip` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`post_id`),
  FULLTEXT KEY `post_ip` (`post_ip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `boardalu_post`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `boardalu_subject`
-- 

CREATE TABLE `boardalu_subject` (
  `subject_id` int(7) unsigned zerofill NOT NULL auto_increment,
  `subject_name` varchar(250) NOT NULL default '',
  `board_details` text NOT NULL,
  `subject_reply` int(11) NOT NULL default '0',
  `subject_view` int(11) NOT NULL default '0',
  `board_name` varchar(250) NOT NULL default '',
  `board_email` varchar(250) NOT NULL default '',
  `board_icq` varchar(250) NOT NULL default '',
  `board_type` varchar(50) NOT NULL default '',
  `board_ip` varchar(100) NOT NULL default '',
  `board_pic` varchar(250) NOT NULL default '',
  `subject_date` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`subject_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `boardalu_subject`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `boarddd_post`
-- 

CREATE TABLE `boarddd_post` (
  `post_id` int(7) unsigned zerofill NOT NULL auto_increment,
  `post_details` text NOT NULL,
  `post_name` varchar(250) NOT NULL default '',
  `post_email` varchar(250) NOT NULL default '',
  `post_icq` varchar(100) NOT NULL default '',
  `post_pic` varchar(250) NOT NULL default '',
  `post_date` varchar(100) NOT NULL default '',
  `subject_id` varchar(100) NOT NULL default '',
  `post_ip` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`post_id`),
  FULLTEXT KEY `post_ip` (`post_ip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `boarddd_post`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `boardnew_post`
-- 

CREATE TABLE `boardnew_post` (
  `post_id` int(7) unsigned zerofill NOT NULL auto_increment,
  `post_details` text NOT NULL,
  `post_name` varchar(250) NOT NULL default '',
  `post_email` varchar(250) NOT NULL default '',
  `post_icq` varchar(100) NOT NULL default '',
  `post_pic` varchar(250) NOT NULL default '',
  `post_date` varchar(100) NOT NULL default '',
  `subject_id` varchar(100) NOT NULL default '',
  `post_ip` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`post_id`),
  FULLTEXT KEY `post_ip` (`post_ip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `boardnew_post`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `boardnew_subject`
-- 

CREATE TABLE `boardnew_subject` (
  `subject_id` int(7) unsigned zerofill NOT NULL auto_increment,
  `subject_name` varchar(250) NOT NULL default '',
  `board_details` text NOT NULL,
  `subject_reply` int(11) NOT NULL default '0',
  `subject_view` int(11) NOT NULL default '0',
  `board_name` varchar(250) NOT NULL default '',
  `board_email` varchar(250) NOT NULL default '',
  `board_icq` varchar(250) NOT NULL default '',
  `board_type` varchar(50) NOT NULL default '',
  `board_ip` varchar(100) NOT NULL default '',
  `board_pic` varchar(250) NOT NULL default '',
  `subject_date` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`subject_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `boardnew_subject`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `board_group`
-- 

CREATE TABLE `board_group` (
  `group_id` int(5) NOT NULL auto_increment,
  `group_name` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `board_group`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `board_post`
-- 

CREATE TABLE `board_post` (
  `post_id` int(7) unsigned zerofill NOT NULL auto_increment,
  `post_details` text NOT NULL,
  `post_name` varchar(250) NOT NULL default '',
  `post_email` varchar(250) NOT NULL default '',
  `post_icq` varchar(100) NOT NULL default '',
  `post_pic` varchar(250) NOT NULL default '',
  `post_date` varchar(100) NOT NULL default '',
  `subject_id` varchar(100) NOT NULL default '',
  `post_ip` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`post_id`),
  FULLTEXT KEY `post_ip` (`post_ip`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2576 ;

-- 
-- Dumping data for table `board_post`
-- 

INSERT INTO `board_post` VALUES (0002569, 'dfgd', 'sdfsdf', '', '', '', '20090706032445', '0001066', '');
INSERT INTO `board_post` VALUES (0002571, ' :b2:', 'sdfdf', '', '', '', '20090706034230', '0001066', '');
INSERT INTO `board_post` VALUES (0002572, 'fsdafdsf :b2:', 'dsfadf', '', '', '', '20090706040352', '0001067', '');
INSERT INTO `board_post` VALUES (0002573, 'sdfsd :b3:sdfasdfdsfa', 'dsfsdf', '', '', '', '20090706040437', '0001069', '');
INSERT INTO `board_post` VALUES (0002574, 'dfsdfsdf :b8: :b9:', 'dsfsdfds', '', '', '', '20090706040454', '0001068', '');
INSERT INTO `board_post` VALUES (0002575, '¤×ÍÇèÒà¾×èÍË¹Ù¤¹¹Ö§à¡Ô´ÍØºÑµÔàËµØ·ÓãËéÁ×Í¹ÔéÇªÕé¢éÒ§«éÒÂËÅØ´ÍÍ¡ äÁèä´éËÅØ´ÍÍ¡ËÁ´¹Ð¤ÐËÅØ´ÍÍ¡µÃ§àÅçºÍèÐ¤èÐäÁèãªèá¤èàÅçº¹Ð¤ÐÃÍºæàËÅ×Íáµè¡ÃÐ´Ù¡ÁÕÊÔ·¸Ôì¡ÅÑºÁÒàËÁ×Í¹»¡µÔÃÖà»ÅèÒ¤Ð  ã¤ÃÃÙéªèÇÂºÍ¡´éÇÂ¹Ð¤Ð ªèÇÂà¾×èÍ¹Ë¹Ù´éÇÂà¤éÒÂÑ§·Óã¨ÂÑ§äÁèä´éàÅÂ¤Ð', '»ÒÃÔªÒµ  ´Ç§ÈÃÕ', 'parichatparty@hotmail.com', '', '20110226020238_BM2Q4TCAWHWGMTCAX1LMSDCAHSXXT2CAK6JTC9CAL45AHICAAAIG5ECAZ63QROCAV75J10CA1S9VJZCA7P6TKGCAEY5J10CAE5O7AXCAI0ZIRKCA9VIDOUCA6CQI4XCA157H3ACA9SXWIZCAKZXOKV.jpg', '20110226140238', '0001074', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `board_post_en`
-- 

CREATE TABLE `board_post_en` (
  `post_id` int(7) unsigned zerofill NOT NULL auto_increment,
  `post_details` text NOT NULL,
  `post_name` varchar(250) NOT NULL default '',
  `post_email` varchar(250) NOT NULL default '',
  `post_icq` varchar(100) NOT NULL default '',
  `post_pic` varchar(250) NOT NULL default '',
  `post_date` varchar(100) NOT NULL default '',
  `subject_id` varchar(100) NOT NULL default '',
  `post_ip` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `board_post_en`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `board_subject`
-- 

CREATE TABLE `board_subject` (
  `subject_id` int(7) unsigned zerofill NOT NULL auto_increment,
  `subject_name` varchar(250) NOT NULL default '',
  `board_details` text NOT NULL,
  `subject_reply` int(11) NOT NULL default '0',
  `subject_view` int(11) NOT NULL default '0',
  `board_name` varchar(250) NOT NULL default '',
  `board_email` varchar(250) NOT NULL default '',
  `board_icq` varchar(250) NOT NULL default '',
  `board_type` varchar(50) NOT NULL default '',
  `board_ip` varchar(100) NOT NULL default '',
  `board_pic` varchar(250) NOT NULL default '',
  `subject_date` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`subject_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1216 ;

-- 
-- Dumping data for table `board_subject`
-- 

INSERT INTO `board_subject` VALUES (0001070, '·´ÊÍºâ¾ÊàÇçººÍÃì´', ' :b6: [color=red]·´ÅÍ§â¾Ê¹Ð¤ÃÑº¼Á[/color]', 0, 263, 'Ë¹Ô§', '', 'Y', '1', '58.136.6.222', '1246828661001.jpg', '20090706041741');
INSERT INTO `board_subject` VALUES (0001071, '', '', 0, 0, '', '', 'Y', '', '202.44.4.85', '', '20090829101023');
INSERT INTO `board_subject` VALUES (0001072, '', '', 0, 0, '', '', 'Y', '', '141.223.237.76', '', '20090830160603');
INSERT INTO `board_subject` VALUES (0001073, '', '', 0, 0, '', '', 'Y', '', '89.149.254.73', '', '20090906002512');
INSERT INTO `board_subject` VALUES (0001074, '¡ÒÃ»ÅÙ¡¶èÒÂÍÇÑÂÇÐ ÁÕ¢éÍ¨Ó¡Ñ´à¾ÕÂ§ã´ºéÒ§¤ÃÑº', 'ÅÙ¡¢Í§¼Áà¾Ôè§à¡Ô´ÇÑ¹·Õè 14/09/09\r\n¹ÔéÇÁ×Í´éÒ¹«éÒÂ(¹ÔéÇªÕé¶Ö§¹ÔéÇ¡éÍÂ)¢Í§ÅÙ¡¼Áà¨ÃÔ­àµÔºâµ¼Ô´»¡µÔáµèã¹¤ÃÃÀì\r\n¨Ò¡¡ÒÃàÍê¡«ìàÃÂìáÅéÇäÁèÁÕ¡ÃÐ´Ù¡ÀÒÂã¹·Ñé§ÊÕè¹ÔéÇ \r\nÊèÇ¹¹ÔéÇâ»é§ ÁÕ¢éÍà´ÕÂÇáµèàÅç¡¡ÇèÒ»¡µÔÁÒ¡...\r\n\r\näÁè·ÃÒºÇèÒ ¾Í¨ÐÁÕ·Ò§á¡éä¢ã¹¡ÒÃ»ÅÙ¡¶èÒÂ-à¾ÒÐ¡ÃÐ´Ù¡ËÃ×Íà¹×éÍàÂ×èÍ ËÃ×ÍÍÂèÒ§äÃ¡çµÒÁà¾×èÍãËéãªé§Ò¹Á×Í«éÒÂä´éµÒÁ»¡µÔ·ÑèÇä»ËÃ×ÍäÁè¤ÃÑº\r\n\r\nªèÇÂµÍº¼èÒ¹·Ò§¹ÕéáÅÐ·Ò§ Email ´éÇÂ¹Ð¤ÃÑº...\r\n\r\n¢Í¢Íº¾ÃÐ¤Ø³ÍÂèÒ§ÊÙ§¤ÃÑº', 1, 377, 'yanyong apagavinkul', 'yuirider@hotmail.com', 'Y', '1', '124.122.98.136', '', '20090915213916');
INSERT INTO `board_subject` VALUES (0001075, '', '', 0, 0, '', '', 'Y', '', '93.174.93.222', '', '20090930171441');
INSERT INTO `board_subject` VALUES (0001076, '', '', 0, 0, '', '', 'Y', '', '194.8.75.214', '', '20091001021248');
INSERT INTO `board_subject` VALUES (0001077, '', '', 0, 0, '', '', 'Y', '', '194.8.75.251', '', '20091005192946');
INSERT INTO `board_subject` VALUES (0001078, '', '', 0, 0, '', '', 'Y', '', '123.133.132.247', '', '20091119010707');
INSERT INTO `board_subject` VALUES (0001079, '', '', 0, 0, '', '', 'Y', '', '200.253.115.18', '', '20091129121855');
INSERT INTO `board_subject` VALUES (0001080, '', '', 0, 0, '', '', 'Y', '', '89.248.172.14', '', '20091205183847');
INSERT INTO `board_subject` VALUES (0001081, '', '', 0, 0, '', '', 'Y', '', '89.248.172.14', '', '20091206080623');
INSERT INTO `board_subject` VALUES (0001082, '', '', 0, 0, '', '', 'Y', '', '194.8.75.251', '', '20091210195031');
INSERT INTO `board_subject` VALUES (0001083, '', '', 0, 0, '', '', 'Y', '', '194.8.75.251', '', '20091214015243');
INSERT INTO `board_subject` VALUES (0001084, '', '', 0, 0, '', '', 'Y', '', '194.8.75.214', '', '20091228105610');
INSERT INTO `board_subject` VALUES (0001085, '', '', 0, 0, '', '', 'Y', '', '213.108.56.29', '', '20100102123120');
INSERT INTO `board_subject` VALUES (0001086, '', '', 0, 0, '', '', 'Y', '', '81.16.240.38', '', '20100116025716');
INSERT INTO `board_subject` VALUES (0001087, '', '', 0, 0, '', '', 'Y', '', '188.92.75.14', '', '20100121203837');
INSERT INTO `board_subject` VALUES (0001088, '', '', 0, 0, '', '', 'Y', '', '89.248.172.58', '', '20100125181916');
INSERT INTO `board_subject` VALUES (0001089, '', '', 0, 0, '', '', 'Y', '', '89.248.172.58', '', '20100126203110');
INSERT INTO `board_subject` VALUES (0001090, '', '', 0, 0, '', '', 'Y', '', '89.248.172.58', '', '20100129050538');
INSERT INTO `board_subject` VALUES (0001091, '', '', 0, 0, '', '', 'Y', '', '89.248.172.58', '', '20100130054406');
INSERT INTO `board_subject` VALUES (0001092, '', '', 0, 0, '', '', 'Y', '', '89.248.172.58', '', '20100131165915');
INSERT INTO `board_subject` VALUES (0001093, '', '', 0, 0, '', '', 'Y', '', '188.92.75.14', '', '20100207042835');
INSERT INTO `board_subject` VALUES (0001094, '', '', 0, 0, '', '', 'Y', '', '78.38.202.195', '', '20100217090653');
INSERT INTO `board_subject` VALUES (0001095, '', '', 0, 0, '', '', 'Y', '', '173.11.109.185', '', '20100301031825');
INSERT INTO `board_subject` VALUES (0001096, '', '', 0, 0, '', '', 'Y', '', '202.108.49.153', '', '20100415064344');
INSERT INTO `board_subject` VALUES (0001097, '', '', 0, 0, '', '', 'Y', '', '212.95.54.211', '', '20100524182049');
INSERT INTO `board_subject` VALUES (0001098, '', '', 0, 0, '', '', 'Y', '', '93.190.139.15', '', '20100529112139');
INSERT INTO `board_subject` VALUES (0001099, '', '', 0, 0, '', '', 'Y', '', '173.212.206.186', '', '20100617001037');
INSERT INTO `board_subject` VALUES (0001100, '', '', 0, 0, '', '', 'Y', '', '173.212.206.186', '', '20100617121103');
INSERT INTO `board_subject` VALUES (0001101, '', '', 0, 0, '', '', 'Y', '', '173.212.206.186', '', '20100701010121');
INSERT INTO `board_subject` VALUES (0001102, '', '', 0, 0, '', '', 'Y', '', '173.212.206.186', '', '20100702053302');
INSERT INTO `board_subject` VALUES (0001103, '', '', 0, 0, '', '', 'Y', '', '173.212.206.186', '', '20100710111408');
INSERT INTO `board_subject` VALUES (0001104, '', '', 0, 0, '', '', 'Y', '', '173.212.206.186', '', '20100711170108');
INSERT INTO `board_subject` VALUES (0001105, '', '', 0, 0, '', '', 'Y', '', '188.72.225.209', '', '20100916043711');
INSERT INTO `board_subject` VALUES (0001106, '', '', 0, 0, '', '', 'Y', '', '213.5.70.184', '', '20101103155359');
INSERT INTO `board_subject` VALUES (0001107, '', '', 0, 0, '', '', 'Y', '', '95.215.0.195', '', '20101104234159');
INSERT INTO `board_subject` VALUES (0001108, '', '', 0, 0, '', '', 'Y', '', '79.142.64.17', '', '20101108043828');
INSERT INTO `board_subject` VALUES (0001109, '', '', 0, 0, '', '', 'Y', '', '79.142.64.17', '', '20101121191523');
INSERT INTO `board_subject` VALUES (0001110, '', '', 0, 0, '', '', 'Y', '', '178.239.58.143', '', '20101217051024');
INSERT INTO `board_subject` VALUES (0001111, '', '', 0, 0, '', '', 'Y', '', '178.239.58.143', '', '20101222020744');
INSERT INTO `board_subject` VALUES (0001112, '', '', 0, 0, '', '', 'Y', '', '188.143.232.65', '', '20101226122802');
INSERT INTO `board_subject` VALUES (0001113, '', '', 0, 0, '', '', 'Y', '', '79.142.69.77', '', '20110106210023');
INSERT INTO `board_subject` VALUES (0001114, '', '', 0, 0, '', '', 'Y', '', '79.142.69.69', '', '20110109224638');
INSERT INTO `board_subject` VALUES (0001115, '', '', 0, 0, '', '', 'Y', '', '188.143.232.65', '', '20110125003301');
INSERT INTO `board_subject` VALUES (0001116, '', '', 0, 0, '', '', 'Y', '', '178.239.58.144', '', '20110125012203');
INSERT INTO `board_subject` VALUES (0001117, '', '', 0, 0, '', '', 'Y', '', '85.17.26.68', '', '20110127115738');
INSERT INTO `board_subject` VALUES (0001118, '', '', 0, 0, '', '', 'Y', '', '79.142.66.56', '', '20110202230048');
INSERT INTO `board_subject` VALUES (0001119, '', '', 0, 0, '', '', 'Y', '', '188.143.232.65', '', '20110209061702');
INSERT INTO `board_subject` VALUES (0001120, '', '', 0, 0, '', '', 'Y', '', '79.142.65.199', '', '20110209163653');
INSERT INTO `board_subject` VALUES (0001121, '', '', 0, 0, '', '', 'Y', '', '213.5.70.184', '', '20110210041718');
INSERT INTO `board_subject` VALUES (0001122, '', '', 0, 0, '', '', 'Y', '', '213.5.70.184', '', '20110210041728');
INSERT INTO `board_subject` VALUES (0001123, '', '', 0, 0, '', '', 'Y', '', '178.239.58.144', '', '20110214181935');
INSERT INTO `board_subject` VALUES (0001124, '', '', 0, 0, '', '', 'Y', '', '94.102.49.76', '', '20110216071644');
INSERT INTO `board_subject` VALUES (0001125, '', '', 0, 0, '', '', 'Y', '', '178.239.58.144', '', '20110222102032');
INSERT INTO `board_subject` VALUES (0001126, '', '', 0, 0, '', '', 'Y', '', '94.100.25.52', '', '20110304224618');
INSERT INTO `board_subject` VALUES (0001127, '', '', 0, 0, '', '', 'Y', '', '91.212.226.170', '', '20110312065423');
INSERT INTO `board_subject` VALUES (0001128, '', '', 0, 0, '', '', 'Y', '', '91.212.226.170', '', '20110314074450');
INSERT INTO `board_subject` VALUES (0001129, '', '', 0, 0, '', '', 'Y', '', '94.100.25.52', '', '20110407181123');
INSERT INTO `board_subject` VALUES (0001130, '', '', 0, 0, '', '', 'Y', '', '109.230.217.91', '', '20110411144154');
INSERT INTO `board_subject` VALUES (0001131, '', '', 0, 0, '', '', 'Y', '', '217.172.180.18', '', '20110412061844');
INSERT INTO `board_subject` VALUES (0001132, '', '', 0, 0, '', '', 'Y', '', '91.201.66.184', '', '20110430135850');
INSERT INTO `board_subject` VALUES (0001133, '', '', 0, 0, '', '', 'Y', '', '95.84.160.236', '', '20110501035012');
INSERT INTO `board_subject` VALUES (0001134, '', '', 0, 0, '', '', 'Y', '', '109.230.217.91', '', '20110502213051');
INSERT INTO `board_subject` VALUES (0001135, '', '', 0, 0, '', '', 'Y', '', '95.220.240.143', '', '20110507083937');
INSERT INTO `board_subject` VALUES (0001136, '', '', 0, 0, '', '', 'Y', '', '212.95.54.211', '', '20110508131928');
INSERT INTO `board_subject` VALUES (0001137, '', '', 0, 0, '', '', 'Y', '', '115.124.2.194', '', '20110513041436');
INSERT INTO `board_subject` VALUES (0001138, '', '', 0, 0, '', '', 'Y', '', '79.142.67.147', '', '20110523025337');
INSERT INTO `board_subject` VALUES (0001139, '', '', 0, 0, '', '', 'Y', '', '188.143.232.111', '', '20110529010303');
INSERT INTO `board_subject` VALUES (0001140, '', '', 0, 0, '', '', 'Y', '', '188.143.233.111', '', '20110607204409');
INSERT INTO `board_subject` VALUES (0001141, '', '', 0, 0, '', '', 'Y', '', '178.239.58.144', '', '20110610180226');
INSERT INTO `board_subject` VALUES (0001142, '', '', 0, 0, '', '', 'Y', '', '188.143.232.20', '', '20110613215939');
INSERT INTO `board_subject` VALUES (0001143, '', '', 0, 0, '', '', 'Y', '', '109.230.217.91', '', '20110613235244');
INSERT INTO `board_subject` VALUES (0001144, '', '', 0, 0, '', '', 'Y', '', '219.148.58.89', '', '20110616031412');
INSERT INTO `board_subject` VALUES (0001145, '', '', 0, 0, '', '', 'Y', '', '46.21.144.176', '', '20110715134154');
INSERT INTO `board_subject` VALUES (0001146, '', '', 0, 0, '', '', 'Y', '', '95.220.214.29', '', '20110717203409');
INSERT INTO `board_subject` VALUES (0001147, '', '', 0, 0, '', '', 'Y', '', '91.224.160.92', '', '20110720161638');
INSERT INTO `board_subject` VALUES (0001148, '', '', 0, 0, '', '', 'Y', '', '217.172.180.18', '', '20110721131931');
INSERT INTO `board_subject` VALUES (0001149, '', '', 0, 0, '', '', 'Y', '', '46.21.144.176', '', '20110721214547');
INSERT INTO `board_subject` VALUES (0001150, '', '', 0, 0, '', '', 'Y', '', '217.172.180.18', '', '20110724015219');
INSERT INTO `board_subject` VALUES (0001151, '', '', 0, 0, '', '', 'Y', '', '212.95.54.211', '', '20110806201350');
INSERT INTO `board_subject` VALUES (0001152, '', '', 0, 0, '', '', 'Y', '', '46.21.144.176', '', '20110826005358');
INSERT INTO `board_subject` VALUES (0001153, '', '', 0, 0, '', '', 'Y', '', '46.21.144.176', '', '20110828230907');
INSERT INTO `board_subject` VALUES (0001154, '', '', 0, 0, '', '', 'Y', '', '46.21.144.176', '', '20110917050631');
INSERT INTO `board_subject` VALUES (0001155, '', '', 0, 0, '', '', 'Y', '', '178.239.58.134', '', '20110929142152');
INSERT INTO `board_subject` VALUES (0001156, '', '', 0, 0, '', '', 'Y', '', '193.105.210.137', '', '20111001161713');
INSERT INTO `board_subject` VALUES (0001157, '', '', 0, 0, '', '', 'Y', '', '46.21.144.176', '', '20111004084737');
INSERT INTO `board_subject` VALUES (0001158, '', '', 0, 0, '', '', 'Y', '', '46.21.144.176', '', '20111006002256');
INSERT INTO `board_subject` VALUES (0001159, '', '', 0, 0, '', '', 'Y', '', '193.105.210.46', '', '20111010151615');
INSERT INTO `board_subject` VALUES (0001160, '', '', 0, 0, '', '', 'Y', '', '46.21.144.176', '', '20111015040125');
INSERT INTO `board_subject` VALUES (0001161, '', '', 0, 0, '', '', 'Y', '', '188.143.232.20', '', '20111104194138');
INSERT INTO `board_subject` VALUES (0001162, '', '', 0, 0, '', '', 'Y', '', '46.21.144.176', '', '20111113140619');
INSERT INTO `board_subject` VALUES (0001163, '', '', 0, 0, '', '', 'Y', '', '69.4.231.201', '', '20111129170548');
INSERT INTO `board_subject` VALUES (0001164, '', '', 0, 0, '', '', 'Y', '', '78.159.112.128', '', '20111201032038');
INSERT INTO `board_subject` VALUES (0001165, '', '', 0, 0, '', '', 'Y', '', '69.4.231.201', '', '20111201043010');
INSERT INTO `board_subject` VALUES (0001166, '', '', 0, 0, '', '', 'Y', '', '85.25.95.90', '', '20111210224611');
INSERT INTO `board_subject` VALUES (0001167, '', '', 0, 0, '', '', 'Y', '', '46.21.144.176', '', '20111213173251');
INSERT INTO `board_subject` VALUES (0001168, '', '', 0, 0, '', '', 'Y', '', '85.25.95.90', '', '20111214110708');
INSERT INTO `board_subject` VALUES (0001169, '', '', 0, 0, '', '', 'Y', '', '46.21.144.176', '', '20111217003043');
INSERT INTO `board_subject` VALUES (0001170, '', '', 0, 0, '', '', 'Y', '', '178.239.58.134', '', '20111218211033');
INSERT INTO `board_subject` VALUES (0001171, '', '', 0, 0, '', '', 'Y', '', '85.25.95.90', '', '20111227114326');
INSERT INTO `board_subject` VALUES (0001172, '', '', 0, 0, '', '', 'Y', '', '85.25.95.90', '', '20111229231722');
INSERT INTO `board_subject` VALUES (0001173, '', '', 0, 0, '', '', 'Y', '', '46.21.144.176', '', '20120105160450');
INSERT INTO `board_subject` VALUES (0001174, '', '', 0, 0, '', '', 'Y', '', '46.21.144.176', '', '20120105201319');
INSERT INTO `board_subject` VALUES (0001175, '', '', 0, 0, '', '', 'Y', '', '46.21.144.176', '', '20120125140856');
INSERT INTO `board_subject` VALUES (0001176, '', '', 0, 0, '', '', 'Y', '', '46.21.144.176', '', '20120126080959');
INSERT INTO `board_subject` VALUES (0001177, '', '', 0, 0, '', '', 'Y', '', '188.227.183.165', '', '20120130002459');
INSERT INTO `board_subject` VALUES (0001178, '', '', 0, 0, '', '', 'Y', '', '109.73.70.114', '', '20120205115157');
INSERT INTO `board_subject` VALUES (0001179, '', '', 0, 0, '', '', 'Y', '', '109.73.70.114', '', '20120205135725');
INSERT INTO `board_subject` VALUES (0001180, '', '', 0, 0, '', '', 'Y', '', '46.21.144.176', '', '20120304064211');
INSERT INTO `board_subject` VALUES (0001181, '', '', 0, 0, '', '', 'Y', '', '46.21.144.176', '', '20120308193103');
INSERT INTO `board_subject` VALUES (0001182, '', '', 0, 0, '', '', 'Y', '', '109.73.70.114', '', '20120312093719');
INSERT INTO `board_subject` VALUES (0001183, '', '', 0, 0, '', '', 'Y', '', '46.21.144.176', '', '20120315185329');
INSERT INTO `board_subject` VALUES (0001184, '', '', 0, 0, '', '', 'Y', '', '80.243.181.34', '', '20120318164309');
INSERT INTO `board_subject` VALUES (0001185, '', '', 0, 0, '', '', 'Y', '', '176.65.164.111', '', '20120424171354');
INSERT INTO `board_subject` VALUES (0001186, '', '', 0, 0, '', '', 'Y', '', '188.143.232.33', '', '20120614052009');
INSERT INTO `board_subject` VALUES (0001187, '', '', 0, 0, '', '', 'Y', '', '213.21.42.248', '', '20120615032141');
INSERT INTO `board_subject` VALUES (0001188, '', '', 0, 0, '', '', 'Y', '', '188.143.232.211', '', '20120729202617');
INSERT INTO `board_subject` VALUES (0001189, '', '', 0, 0, '', '', 'Y', '', '188.143.232.211', '', '20120805131057');
INSERT INTO `board_subject` VALUES (0001190, '', '', 0, 0, '', '', 'Y', '', '94.23.33.36', '', '20120809130715');
INSERT INTO `board_subject` VALUES (0001191, '', '', 0, 0, '', '', 'Y', '', '65.51.123.181', '', '20120816001116');
INSERT INTO `board_subject` VALUES (0001192, '', '', 0, 0, '', '', 'Y', '', '188.143.232.211', '', '20120907111526');
INSERT INTO `board_subject` VALUES (0001193, '', '', 0, 0, '', '', 'Y', '', '188.143.232.33', '', '20120917004628');
INSERT INTO `board_subject` VALUES (0001194, '', '', 0, 0, '', '', 'Y', '', '217.172.180.18', '', '20120923062105');
INSERT INTO `board_subject` VALUES (0001195, '', '', 0, 0, '', '', 'Y', '', '91.207.5.138', '', '20121005152613');
INSERT INTO `board_subject` VALUES (0001196, '', '', 0, 0, '', '', 'Y', '', '188.143.232.211', '', '20121007233041');
INSERT INTO `board_subject` VALUES (0001197, '', '', 0, 0, '', '', 'Y', '', '188.143.234.27', '', '20121101072212');
INSERT INTO `board_subject` VALUES (0001198, '', '', 0, 0, '', '', 'Y', '', '188.143.234.27', '', '20121105090918');
INSERT INTO `board_subject` VALUES (0001199, '', '', 0, 0, '', '', 'Y', '', '178.32.218.212', '', '20130224060409');
INSERT INTO `board_subject` VALUES (0001200, '', '', 0, 0, '', '', 'Y', '', '178.158.221.73', '', '20130225060625');
INSERT INTO `board_subject` VALUES (0001201, '', '', 0, 0, '', '', 'Y', '', '178.158.221.73', '', '20130301032003');
INSERT INTO `board_subject` VALUES (0001202, '', '', 0, 0, '', '', 'Y', '', '188.143.232.211', '', '20130312181838');
INSERT INTO `board_subject` VALUES (0001203, '', '', 0, 0, '', '', 'Y', '', '91.232.96.24', '', '20130329090706');
INSERT INTO `board_subject` VALUES (0001204, '', '', 0, 0, '', '', 'Y', '', '91.232.96.24', '', '20130330111016');
INSERT INTO `board_subject` VALUES (0001205, '', '', 0, 0, '', '', 'Y', '', '91.232.96.25', '', '20130331160818');
INSERT INTO `board_subject` VALUES (0001206, '', '', 0, 0, '', '', 'Y', '', '91.232.96.26', '', '20130401080711');
INSERT INTO `board_subject` VALUES (0001207, '', '', 0, 0, '', '', 'Y', '', '91.232.96.26', '', '20130401204308');
INSERT INTO `board_subject` VALUES (0001208, '', '', 0, 0, '', '', 'Y', '', '91.232.96.20', '', '20130404070151');
INSERT INTO `board_subject` VALUES (0001209, '', '', 0, 0, '', '', 'Y', '', '91.232.96.20', '', '20130407224243');
INSERT INTO `board_subject` VALUES (0001210, '', '', 0, 0, '', '', 'Y', '', '91.232.96.20', '', '20130424211938');
INSERT INTO `board_subject` VALUES (0001211, '', '', 0, 0, '', '', 'Y', '', '37.221.174.111', '', '20130502193320');
INSERT INTO `board_subject` VALUES (0001212, '', '', 0, 0, '', '', 'Y', '', '188.143.232.211', '', '20130625195812');
INSERT INTO `board_subject` VALUES (0001213, '', '', 0, 0, '', '', 'Y', '', '188.143.232.211', '', '20130629084338');
INSERT INTO `board_subject` VALUES (0001214, '', '', 0, 0, '', '', 'Y', '', '93.115.86.194', '', '20130812201256');
INSERT INTO `board_subject` VALUES (0001215, '', '', 0, 0, '', '', 'Y', '', '93.115.86.194', '', '20130817124156');

-- --------------------------------------------------------

-- 
-- Table structure for table `board_subject_en`
-- 

CREATE TABLE `board_subject_en` (
  `subject_id` int(7) unsigned zerofill NOT NULL auto_increment,
  `subject_name` varchar(250) NOT NULL default '',
  `board_details` text NOT NULL,
  `subject_reply` int(11) NOT NULL default '0',
  `subject_view` int(11) NOT NULL default '0',
  `board_name` varchar(250) NOT NULL default '',
  `board_email` varchar(250) NOT NULL default '',
  `board_icq` varchar(250) NOT NULL default '',
  `board_type` varchar(50) NOT NULL default '',
  `board_ip` varchar(100) NOT NULL default '',
  `board_pic` varchar(250) NOT NULL default '',
  `subject_date` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`subject_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `board_subject_en`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `emailsub`
-- 

CREATE TABLE `emailsub` (
  `e_id` int(11) NOT NULL auto_increment,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY  (`e_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

-- 
-- Dumping data for table `emailsub`
-- 

INSERT INTO `emailsub` VALUES (1, 'amornrakphitaksa196@hotmail.com');
INSERT INTO `emailsub` VALUES (4, 'dusakorn_a@tcels.or.th');
INSERT INTO `emailsub` VALUES (5, 'jarasporn@iddth.com');
INSERT INTO `emailsub` VALUES (6, 'jongkol@iddth.com');
INSERT INTO `emailsub` VALUES (7, 'jongkol@iddth.com');
INSERT INTO `emailsub` VALUES (8, 'pao030@yahoo.com');
INSERT INTO `emailsub` VALUES (9, 'pimchompoo@hotmail.com');
INSERT INTO `emailsub` VALUES (10, 'vanwisa@yahoo.com');
INSERT INTO `emailsub` VALUES (11, 'patimas@wyeth.com');
INSERT INTO `emailsub` VALUES (12, 'dusakorn_a@tcels.or.th');
INSERT INTO `emailsub` VALUES (13, 'chanapai@hypermance.com');
INSERT INTO `emailsub` VALUES (14, 'jarasporn@iddth.com');
INSERT INTO `emailsub` VALUES (15, 'rujira@rihes.org');
INSERT INTO `emailsub` VALUES (16, 'lathush@yahoo.co.in');
INSERT INTO `emailsub` VALUES (17, 'watchar@rihes-cmu.org');
INSERT INTO `emailsub` VALUES (18, 'chintanak@rihes-cmu.org');
INSERT INTO `emailsub` VALUES (19, 'pabloliuboschitz@rd-latam.com');
INSERT INTO `emailsub` VALUES (20, 'ouarma74@yahoo.fr');
INSERT INTO `emailsub` VALUES (21, 'a.nardtaya@gmail.com');
INSERT INTO `emailsub` VALUES (22, 'daitoni@yahoo.co.uk');
INSERT INTO `emailsub` VALUES (23, 'daitoni@yahoo.co.uk');
INSERT INTO `emailsub` VALUES (24, 'dharmen_raj@rediffmail.com');
INSERT INTO `emailsub` VALUES (25, 'drvvkreddy@gmail.com');
INSERT INTO `emailsub` VALUES (26, 'yanuvision@yahoo.com');

-- --------------------------------------------------------

-- 
-- Table structure for table `letter_tb`
-- 

CREATE TABLE `letter_tb` (
  `news_id` int(5) unsigned zerofill NOT NULL auto_increment,
  `title_eng` varchar(250) NOT NULL default '',
  `title_th` varchar(250) NOT NULL default '',
  `details_eng` text NOT NULL,
  `details_th` text NOT NULL,
  `pic_s` varchar(100) NOT NULL default '',
  `pic_b` varchar(100) NOT NULL default '',
  `view` int(5) NOT NULL default '0',
  `ddpost` datetime NOT NULL default '0000-00-00 00:00:00',
  `status` varchar(25) NOT NULL default '',
  PRIMARY KEY  (`news_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- 
-- Dumping data for table `letter_tb`
-- 

INSERT INTO `letter_tb` VALUES (00001, '', 'ÊÇÑÊ´Ô¤èÐ', '', 'ÂÔ¹´ÕµéÍ¹ÃÑºÊÙè clinicalresearchcollaboration.org', '', '', 0, '2007-11-19 19:48:07', '1');
INSERT INTO `letter_tb` VALUES (00006, '', 'test', '', 'test', '', '', 0, '2007-11-22 19:22:20', '1');
INSERT INTO `letter_tb` VALUES (00005, '', 'test', '', 'test', '', '', 0, '2007-11-22 19:21:44', '1');
INSERT INTO `letter_tb` VALUES (00007, '', 'test', '', 'test', '', '', 0, '2007-11-26 11:04:21', '1');
INSERT INTO `letter_tb` VALUES (00009, '', '·´ÊÍºÃÐºº', '', '·´ÊÍº', '', '', 0, '2008-01-08 11:27:46', '1');
INSERT INTO `letter_tb` VALUES (00010, '', 'test', '', 'test', '', '', 0, '2008-01-08 18:35:18', '1');
INSERT INTO `letter_tb` VALUES (00011, '', '¢ÍµéÍ¹ÃÑºÊÙè ICRCC ', '', '<p><img height="96" alt="" width="305" src="/picnews/Image/logobackend.gif" /></p>\r\n<p>ÊÇÑÊ´ÕÊÁÒªÔ¡·Ø¡·èÒ¹¤ÃÑº&nbsp; </p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; à¹×èÍ§¨Ò¡§Ò¹ <span class="NorTxtGray"><strong>Clinical Research Professionals Day </strong></span>·Õè¼èÒ¹ÁÒ·Ò§àÃÒä´é·Ó¡ÒÃÊÁÑ¤ÃÊÁÒªÔ¡ãËé¡Ñº·Ø¡·èÒ¹áÅéÇ¤ÃÑºà¾×èÍà»ç¹ªèÍ§·Ò§Ë¹Öè§ã¹¡ÒÃµÔ´µèÍáÅÐãËé¢éÍÁÙÅ¢èÒÇÊÒÃ¡Ñ¹ ¨Ö§¢ÍãËé·Ø¡·èÒ¹ªèÇÂà¢éÒä»»ÃÑº»ÃØ§¢éÍÁÙÅÊèÇ¹µÑÇãËéÍÑ¾à´µà»ç¹»Ñ¨¨ØºÑ¹´éÇÂ¤ÃÑº à¾×èÍ»ÃÐâÂª¹ìã¹¡ÒÃµÔ´µèÍÊ×èÍÊÒÃ¡Ñ¹¤ÃÑº&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ÊèÇ¹ÇÔ¸Õ¡ÒÃà¢éÒä»á¡éä¢ Profile ¹Ñé¹ ¨Ðãªé Username &amp; Password ·Õè·Ò§àÃÒä´é´Óà¹Ô¹¡ÒÃÊÁÑ¤ÃáÅÐÊè§ä»ãËé·èÒ¹áÅéÇ·Ò§ E-mail ¤ÃÑº </p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ´éÇÂ¤ÇÒÁ¹Ñº¶×Í¤ÃÑº </p>\r\n<p>&nbsp;</p>', '', '', 0, '2008-01-09 10:40:09', '0');

-- --------------------------------------------------------

-- 
-- Table structure for table `link_tb`
-- 

CREATE TABLE `link_tb` (
  `l_id` int(5) NOT NULL auto_increment,
  `l_name` varchar(255) NOT NULL,
  `l_url` varchar(255) NOT NULL,
  `l_logo` varchar(255) NOT NULL,
  `c_position` int(11) NOT NULL,
  PRIMARY KEY  (`l_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

-- 
-- Dumping data for table `link_tb`
-- 

INSERT INTO `link_tb` VALUES (3, 'Transplantation', 'http://www.tts.org/', 's_1245511490.TransplantSociety.jpg', 5);
INSERT INTO `link_tb` VALUES (10, 'Ê»Êª.', 'http://www.nhso.go.th', 's_1252584624.Untitled-5.jpg', 4);
INSERT INTO `link_tb` VALUES (9, 'ÊÁÒ¤ÁâÃ¤äµáËè§»ÃÐà·Èä·Â', 'http://www.nephrothai.org/index.asp', 's_1245513414.rolo.jpg', 3);
INSERT INTO `link_tb` VALUES (7, 'ISN', 'http://www.nature.com/isn/index.html', 's_1245513132.ISN.jpg', 7);
INSERT INTO `link_tb` VALUES (8, 'ÈØ¹ÂìºÃÔ¨Ò¤ÍÇÑÂÇÐ ÊÀÒ¡ÒªÒ´ä·Â', ' http://www.organdonate.in.th/', 's_1245513303.kachard.jpg', 1);
INSERT INTO `link_tb` VALUES (11, 'ÁÙÅ¹Ô¸ÔâÃ¤äµáËè§»ÃÐà·Èä·Â', 'http://www.kidneythai.org', 's_1253094839.Untitled-2.jpg', 2);
INSERT INTO `link_tb` VALUES (12, 'UNOS', 'http://www.unos.org', 's_1253112343.Untitled-1.jpg', 6);

-- --------------------------------------------------------

-- 
-- Table structure for table `link_tb_en`
-- 

CREATE TABLE `link_tb_en` (
  `l_id` int(5) NOT NULL auto_increment,
  `l_name` varchar(255) NOT NULL,
  `l_url` varchar(255) NOT NULL,
  `l_logo` varchar(255) NOT NULL,
  `c_position` int(11) NOT NULL,
  PRIMARY KEY  (`l_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

-- 
-- Dumping data for table `link_tb_en`
-- 

INSERT INTO `link_tb_en` VALUES (11, 'Ministry of public Health', 'http://eng.moph.go.th/', 's_1246896562.Untitled-1.jpg', 1);
INSERT INTO `link_tb_en` VALUES (12, 'National Health Security Office', 'http://www.nhso.go.th/eng/#', 's_1246896699.Untitled-1.jpg', 3);
INSERT INTO `link_tb_en` VALUES (13, 'Thai Red Cross  Society', 'http://www.redcross.or.th/english/donation/organ_donation.php4', 's_1246896664.Untitled-1.jpg', 6);
INSERT INTO `link_tb_en` VALUES (14, 'ISN', 'http://www.nature.com/isn/index.html', 's_1246896837.Untitled-1.jpg', 2);
INSERT INTO `link_tb_en` VALUES (15, 'The Transplantation', 'http://www.tts.org/', 's_1246896754.Untitled-1.jpg', 4);
INSERT INTO `link_tb_en` VALUES (16, 'World Health Organization', 'http://www.who.int/transplantation/en/', 's_1246896799.Untitled-1.jpg', 5);

-- --------------------------------------------------------

-- 
-- Table structure for table `member`
-- 

CREATE TABLE `member` (
  `mem_id` int(7) NOT NULL auto_increment,
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `name` varchar(255) NOT NULL,
  `lname` varchar(250) NOT NULL,
  `nicname` varchar(100) NOT NULL,
  `sex` char(50) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(100) NOT NULL,
  `zipcode` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `email2` varchar(100) NOT NULL,
  `tel` varchar(25) NOT NULL,
  `tel2` char(25) NOT NULL,
  `fax` char(25) NOT NULL,
  `expert` varchar(255) NOT NULL,
  `org_name` varchar(255) NOT NULL,
  `clinical` char(25) NOT NULL,
  `coordinator` char(25) NOT NULL,
  `ass` char(25) NOT NULL,
  `datam` char(25) NOT NULL,
  `qa` char(25) NOT NULL,
  `eth` char(25) NOT NULL,
  `etc` char(25) NOT NULL,
  `details` text NOT NULL,
  `train` text NOT NULL,
  `thera1` text NOT NULL,
  `thera2` text NOT NULL,
  `thera3` text NOT NULL,
  `thera4` text NOT NULL,
  `status` char(25) NOT NULL,
  `date_mem` varchar(25) NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`mem_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=148 ;

-- 
-- Dumping data for table `member`
-- 

INSERT INTO `member` VALUES (1, 'icrcc', '123456', 'AAA', '', '', '', 'doctor', 'dfggdfgdfgdf', '', 'Thailand', '', 'amornrakphitaksa196@hotmail.com', 'amorn@travelthailand.com', '22222222', '222222222222', '', 'ÃÒ¡¿Ñ¹', 'Activelifestyle.com', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'xxxxxxxxxxxx', 'zzzzzzzzzzzz', 'bbbbbbbbbbb', 'cccccccccc', 'dddddddddd', 'eeeeeeeeee', '', '20071118114236');
INSERT INTO `member` VALUES (2, 'ning', '9200454', 'ning', '', '', '', 'n', 'n', '', 'sdf', '', 'chanapai@hypermance.com', '', 'n', '', '', 'n', 'n', 'Y', '', '', '', '', '', '', 'fds', 'fdasf', 'sdf', 'asdfasdf', 'sdf', 'asdfsadf', '', '20071122191536');
INSERT INTO `member` VALUES (3, 'Alongkone', 'phengsavanh', 'Alongkone Phengsavanh', '', '', '', 'Medical Doctor', 'PO Box 7444 Department of Postgraduate Studies and Research, University of Health Sciences, Ministry of Health, Vientiane, Laos', '', 'Laos', '', 'ogalk@yahoo.com', '', '+856 20 2245407', '+856 20 5822228', '+856 21 240854 or +856 21', 'Obstetrics and Gynecology \\ Epidemiology', 'Department of Obstetrics and Gynecology, University of Health Sciences , Vientiane, Laos', 'Y', '', '', '', '', 'Y', '', 'Obstetrics and Gynecology , Sexually Transmitted Diseases', 'Residency Training Program in Obstetrics and Gynecology and PhD in Epidemiology', 'Fetal and maternal medicine', 'Sexually Transmitted Diseases', 'Preinvasive cervical cancer', 'Reproductive endocrinologic therapy', '', '20071202110611');
INSERT INTO `member` VALUES (6, 't_alisara', 'alisara789', 'Alisara Wetwitayaklang', '', '', '', 'Clinical Affairs Manager', '11, Moo1, Duliya Village, KarnchanapisateRd.,Bangramad,Talingchan,Bangkok 10150', '', 'Thailand', '', 't_alisara@yahoo.com', '', '081-8198418', '', '', 'Pharmacist', 'Wyeth', '', '', '', '', '', '', 'Y', '', '', '', '', '', '', '', '20071212154732');
INSERT INTO `member` VALUES (7, 'kitimay', 'icrcc', 'Kitima Yuthavong', '', '', '', 'Government officer', '68 Rachadapis Sek 62, Bang Sue, Bangkok 10800', '', 'Thailand', '', 'kitimay@tcels.or.th', 'kitimay@hotmail.com', '662-9100832', '6681-3755436', '', 'Clinical Research ', 'TCELS', '', '', '', '', '', '', 'Y', '', '', '', '', '', '', '', '20071213160804');
INSERT INTO `member` VALUES (8, 'glaow', '421121013', 'Sirimaj', '', '', '', 'CRA', '420/6 Ratchawithee Road, Thungphayathai, Ratchathevee, Bangkok 10400', '', 'Thailand', '', 'glaow24@gmail.com', 'sirimaj@iddth.com', '+662 6448200', '', '+662 6448201', 'Pharmacy', 'International Drug Development', '', '', 'Y', '', '', '', '', '', '', '', '', '', '', '', '20071214194606');
INSERT INTO `member` VALUES (9, 'thida', 'ch263bung', 'Thida', '', '', '', 'Singtoroj', '11th Floor Chamlong Bldg. Fac of Tropical Medicine, MU, Rajvithi Rd, BKK 10400', '', 'Thailand', '', 'thida@iddth.com', 'c_thida@hotmail.com', '026448200', '', '026448201', 'Pharmacology/Toxicology', 'IDD', '', '', 'Y', '', '', '', 'Y', '', '', '', '', '', '', '', '20071216150357');
INSERT INTO `member` VALUES (10, 'eugenekroon', 'frans', 'Eugene Kroon', '', '', '', 'CEO', 'Goldenland Building\r\n153/3 Ratchdamri Road\r\nPathumwan, Bangkok 10330', '', 'Thailand', '', 'e.kroon@iatec.com', '', '089-006-4746', '', '', 'family medicine', 'Asia-Pacific IATEC CRO Co., Ltd.', '', '', '', '', '', '', 'Y', 'CEO, CRO\r\nFamily Medicine Physician, US\r\nClinical Investigator and Coordinator, Thailand and Netherlands\r\nConsultant Clinton HIV/AIDS Initiative', 'University of Amsterdam Medical School\r\nUniversity of Hawaii Family Practice Residency Program', 'Family Medicine', 'HIV', '', '', '', '20071216204236');
INSERT INTO `member` VALUES (11, 'Kanokrat', 'pharchem', 'Kanokrat Luevorasirikul', '', '', '', 'Manager', '126/146 Boromarajonani College of Nursing Building,\r\n4th Floor, Soi Bamrasnaradun,\r\nTivanon Rd, Taladkwan,\r\nMuang Distrct, Nonthaburi Province,\r\n11000, Thailand\r\n', '', 'Thailand', '', 'kanokrat@crcn.in.th', 'luevorasirikul@yahoo.com', '0-2951-0352', '0-2951-0873', '0-2951-0067', 'Social Pharmacy', 'Clinical Research Collaboration Network', '', '', 'Y', '', '', '', '', '', '', '', '', '', '', '', '20071217083858');
INSERT INTO `member` VALUES (12, 'jina', '9305161', 'jinapat Katchmart', '', '', '', 'Senior Project Manager', '420/6 Rachvithee Road, Thungphayathai, Ratchathevee, Bangkok 10400', '', 'Thailand', '', 'jinapat@iddth.com', 'jinapat_k@hotmail.com', '+662 6448200', '', '', 'clinical research', 'International Drug Development', '', '', '', '', '', '', 'Y', '', '', '', '', '', '', '', '20071217094857');
INSERT INTO `member` VALUES (13, 'uvadj', 'papamama', 'Yuvadee', '', '', '', 'Technical Assistant', '420/6 Ratchawithi Rd. Thungphayathai Ratchathevee Bkk 10400 Thailand', '', 'Thailand', '', 'yuvadee@iddth.com', 'uvadj@yahoo.com', '02-644-8200 ext. 22', '', '02-644-8201', 'Phase I clinical trial', 'International Drug Development', '', '', '', '', '', '', 'Y', '', 'Good Clinical Practice: Educational program for CRA', 'Herbal Medicine', '', '', '', '', '20071217130940');
INSERT INTO `member` VALUES (14, 'jongkol', 'nmv''fu', 'Jongkol Sankote', '', '', '', 'CRA', '11th Floor Chamlong Harinsutra Building\r\n420/6 Ratchawithi Road, Thungphayathai, Ratchathevee, Bangkok\r\n', '', 'Thailand', '', 'jongkol@iddth.com', 'sjongkol@gmail.com', '+662-6448200', '', '+662-6448200', 'HIV Disease', 'International Drug Development Co., Ltd. ', '', '', 'Y', '', '', '', '', '', 'GCP, GCLP, Human Subjects Protection Participation Training', 'HIV (Adults and Pediatrics), PK and TDM in HIV Infection with BE Thalassemia', 'PK /TDM with BE study in HIV Infection', 'Thalassemia', '', '', '20071217132428');
INSERT INTO `member` VALUES (15, 'nmontree', 'Winter07', 'Niwat Montreewasuwat', '', '', '', 'Doctor', 'Janssen-Cilag Thailand\r\n106 Moo 4, Lad krabang Industrial Estate\r\nChalongkrung Road\r\nLad Krabang\r\nBangkok 10520', '', 'Thailand', '', 'nmontree@gcoth.jnj.com', 'montreen_2002@hotmail.com', '+662-7397205', '', '+662-7397100', 'Pathologist/Immunologist', 'GCO Thhailand', '', '', '', '', '', '', 'Y', 'Anatomical Pathologist\r\nImmunologist\r\nMolecular Biologist\r\nClinical Researcher', 'Certificate Board in Anatomical Pathologist\r\nPh. D. in Immunology\r\nCertificate in Molecular Biology\r\n', 'Mycobacterial diseases\r\nHIV', 'Immunology', '', '', '', '20071217144955');
INSERT INTO `member` VALUES (16, 'paovam21', 'paovam21', 'wasinee ', '', '', '', 'CRA ', '222/242-3 Bua Ban Village \r\nSoi Vipavadee 60, Vipavadee Rd, Laksi, BKK ', '', 'Thailand', '', 'pao030@yahoo.com', 'pao030@hotmail.com', '6681 3143906', '', '', 'Pharmacist', 'PPD Thailand', '', '', 'Y', '', '', '', '', '', '', '', '', '', '', '', '20071217185748');
INSERT INTO `member` VALUES (17, 'pimchompoo', 'CHOLLAPU3857', 'Pimonmard', '', '', '', 'Nurse', '254  Klaeng', '', 'Thailand', '', 'pimchompoo@hotmail.com', '', '0817827825', '', '', 'clinical research co-ordinator', 'Vaccine Trial Center', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20071217204930');
INSERT INTO `member` VALUES (18, 'Somjitr', 'chaicharn', 'Somjitr Patima-a-rak', '', '', '', 'Employee', 'Wyeth (Thailand) Ltd\r\n23/F Silom Complex Bldg.\r\n191 Silom Road, Silom, Bangrak, Bangkok 10500, Thailand', '', 'Thailand', '', 'patimas@wyeth.com', 'somjitrp@hotmail.com', '(66) 2 3537745', '', '', 'Nursing and Pharmacology', 'Pharmaceutical Company', '', '', 'Y', '', '', '', '', '', '', '', '', '', '', '', '20071220143137');
INSERT INTO `member` VALUES (19, 'kasemka1', '760028', 'Kanokwan Kasemsiri', '', '', '', 'Clinical Research Associate', '622 Emporium Tower \r\n15th floor Sukhumvit Road, Klongton, Klongtoey, Bangkok,Thailand 10110', '', 'Thailand', '', 'kanokwan.kasemsiri@novartis.com', '', '026850952', '', '', '1 year', 'Novartis (thailand) limited', '', '', 'Y', '', '', '', '', '', 'Advance GCP,Mahidol University\r\nAP OBU training,Singapore', 'Oncology', '', '', '', '', '20071220143726');
INSERT INTO `member` VALUES (20, 'wwo87362', 'worarian2', 'Punnada  Worarian', '', '', '', 'CRA', 'GlaxoSmithkline 12th floor,Wave place,55 wireless Road,lumpinee patumwan ,Bangkok 10330,Thailand', '', 'Thailand', '', 'PUNNADA.X.WORARIAN@GSK.COM', 'nokwasana@hotmail.com', '6626593153', '', '6626593159', 'clinical trail', 'GSK', '', '', 'Y', '', '', '', '', '', '', '', '', '', '', '', '20071220153421');
INSERT INTO `member` VALUES (21, 'drsomruedee', 'doctor104', 'Somruedee Chatsiricharoenkul', '', '', '', 'Physician, researcher', 'Siriraj Hospital\r\nBangkoknoi \r\nBangkok\r\n10700', '', 'Thailand', '', 'drsomruedee@hotmail.com', '', '02-419-7000', '', '', 'Internal medicine', 'Siriraj Hospital', 'Y', '', '', '', '', '', '', '', '', '', '', '', '', '', '20071220155135');
INSERT INTO `member` VALUES (22, 'n.ratmaratorn99@hotmail.com', 'msaom123', 'nisakorn', '', '', '', 'clinical research coordinator ', '239/41 lardyao chatuchak bangkok thailand', '', 'thailand', '', 'n.ratnaratorn99@hotmail.com', '', '0817367448', '', '', 'clinical research ', 'vacine trial center', '', '', 'Y', '', '', '', '', 'be responsible for writing SOP, CRFs, record and report AE SAE protocol deviation ', 'ICHGCP, ', '', '', '', '', '', '20071221160040');
INSERT INTO `member` VALUES (23, 'vanwisa@yahoo.com', 'vanwisa', 'Wanwisa  Charoensilpa', '', '', '', 'nurse', '33/488 M.10, Soi. Cholkchai 4 Ladpord Rd. Ladpord, Bangkok 10230.                                          \r\n', '', 'Thailand', '', 'vanwisa@yahoo.com', '', '0891762863', '02 5386457', '', 'research nurse', 'free lance', '', 'Y', 'Y', '', '', '', '', 'Clinical Research Associate in Bio-Innova &Synchron (CRO), Bangkok.\r\nResponsible for -	Maintain awareness of local regulatory requirements, and to conduct studies in accordance with SOPs, guidelines and ICH Good Clinical Practice guidelines.\r\n-	Assist with the design of CRFs as agreed within the project team.\r\n\r\nClinical Research Coordinator in Vaccine Trial Centre at Mahidol University, Bangkok \r\nResponsible for\r\n-	Take care the volunteer in project\r\n-	Informed Consent to the volunteer \r\n-	Check physicals \r\n-	Check inclusion and exclusion criteria \r\n-	Conduct in Clinical research, observed, recorded and reported AE, SAE to the sponsor\r\n-	Follow up the volunteer\r\n\r\n', 'Clinical Research Methodology \r\nFaculty of Tropical Medicine, Mahidol University Bangkok, Thailand\r\n', 'Advance Good Clinical Practice\r\nFaculty of Tropical Medicine, Mahidol University Bangkok, Thailand\r\n', '', '', '', '', '20071222195926');
INSERT INTO `member` VALUES (24, 'n.ratnaratorn99@hotmail.com', 'msaom123', 'nisakorn', '', '', '', 'clinical research coordinator', '239/41 ratchadapisek 32 rd. lardyao chatuchak bangkok', '', 'thailand', '', 'n.ratnaratorn99@hotmail.com', '', '0817367448', '', '', 'clinical research team', 'vacine trial center, faculty of tropical medicine', '', 'Y', 'Y', '', '', '', '', 'knowledge of GCPs, writing SOP, CRFs and record and report source data medical history SAE AE protocol deviation  ', 'refreshing GCP, ', 'HIVvaccine phase 3 prime-boost at  klaeng hospital ', '', '', '', '', '20071224141000');
INSERT INTO `member` VALUES (25, 'tarika', 'tarika17', 'Tarika Samor', '', '', '', 'Clinical Research Associate', '300/1 Soi Ladkarbang 52, Ladkarbang Rd., Bangkok 10520', '', 'Thailand', '', 'tarika_samor@yahoo.com', '', '668 14592360', '', '', 'Monitor', 'CRCN', '', '', 'Y', '', '', '', '', '', '', '', '', '', '', '', '20080102115036');
INSERT INTO `member` VALUES (26, 'dusakorn_a', '12345', 'dusakorn', '', '', '', 'unknown', 'unknow', '', 'thai', '', 'dusakorn_a@tcels.or.th', '', 'unknow', '', '', 'unknow', 'unknow', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108111032');
INSERT INTO `member` VALUES (27, 'wongparami', 'junglaem', '¹¾.ÍØ´ÁÈÑ¡´Ôì  Ç§Èì»ÒÃÁÕ', '', '', '', 'medical doctor', '1/9 angthong-singburi road\r\namphur muang ,\r\nangthong,Thailand 14000', '', 'Thailand', '', 'wongparami@gmail.com', 'wongparami@yahoo.co.th', '035610002', '', '', 'dermatologist', 'angthong hospital', 'Y', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108123450');
INSERT INTO `member` VALUES (28, 'kuwc', '12345', '¡ØÅÇÅÑÂ  ªÑÂÈÃÕÊØÃ¾Ñ¹¸Øì', '', '', '', '0', '0', '', '0', '', 'kuwc@novonodisk.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108123640');
INSERT INTO `member` VALUES (29, 'wasana.x.wararian', '12345', 'ÇÒÊ¹Ò  ÇÃàÃÕÂ¹', '', '', '', '0', '0', '', '0', '', 'wasana.x.wararian@gsk.com', '', '0', '', '', '0', 'gsk Ltd.', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108123747');
INSERT INTO `member` VALUES (30, 'panatda.x.chanurai', '12345', '»¹Ô´´Ò  ¨Ñ¹·ÃìÍØäÃ', '', '', '', '0', '0', '', '0', '', 'panatda.x.chanurai@gsk.com', '', '0', '', '', '0', 'gsk Ltd.', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108123851');
INSERT INTO `member` VALUES (31, 'NittayaTanakarn', '12345', '¹ÔµÂÒ  ¸¹¡ÒÃ', '', '', '', '0', '0', '', '0', '', 'NittayaTanakarn@bumrungrad.com', '', '0', '', '', '0', 'Bumrungrad', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108123948');
INSERT INTO `member` VALUES (32, 'AmpaiPisutphun', '12345', 'ÍÓä¾  ¾ÔÊØ·¸Ô¾Ñ¹¸ì', '', '', '', '0', '0', '', '0', '', 'AmpaiPisutphun@Bumrungrad.com', '', '0', '', '', '0', 'Bumrungrad', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108124040');
INSERT INTO `member` VALUES (33, 'mmuttara', '12345', 'ÁÒÅÑÂ  ÁØµµÒÃÑ¡Éì', '', '', '', '0', '0', '', '0', '', 'mmuttara@mail.med.cmu.ac.th', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108124143');
INSERT INTO `member` VALUES (34, 'blojanap', '12345', 'ºÃÃ³¡Ô¨  âÅ¨¹ÒÀÔÇÑ²¹ì', '', '', '', '0', '0', '', '0', '', 'blojanap@mail-med.cmu.ac.th', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108124622');
INSERT INTO `member` VALUES (35, 'bchaiwan', '12345', 'àº­¨¾Ã  äªÂÇÃÃ³', '', '', '', '0', '0', '', '0', '', 'bchaiwan@mail.med.cmu.ac.th', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108124704');
INSERT INTO `member` VALUES (36, 'wchida', '12345', 'ÇÔ¹ÑÂ  ', '', '', '', '0', '0', '', '0', '', 'wchida@mail.med.cmu.ac.th', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108124755');
INSERT INTO `member` VALUES (37, 'ksukonta', '12345', '¤Á ÊØ¤¹¸ÊÃÃ¾ì', '', '', '', 'ÃÑºÃÒª¡ÒÃ', '110 ÍÔ¹·ÇâÃÃÊ µ.ÈÃÕÀÙÁÔ Í.àÁ×Í§ ¨. àªÕÂ§ãËÁè 50200', '', '0', '', 'ksukonta@mail.med.cmu.ac.th', '', '053-945342', '', '', '»ÃÊÔµÇÔ·ÂÒ', 'ÀÒ¤ÇÔªÒ»ÃÊÔµÇÔ·ÂÒ ¤³Ðá¾·ÂÈÒÊµÃì ÁËÒÇÔ·ÂÒÅÑÂàªÕÂ§ãËÁè', '', '', '', '', '', 'Y', '', '', '', '', '', '', '', '', '20080108125146');
INSERT INTO `member` VALUES (38, 'Saengla.t', '12345', 'Saengla  Pradapmook', '', '', '', '0', '0', '', '0', '', 'Saengla.t@hivnat.org', '', '0', '', '', '0', 'HIVNAT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108125240');
INSERT INTO `member` VALUES (39, 'Kobkeaw.l', '12345', 'Kobkeaw  Lachajinda', '', '', '', '0', '0', '', '0', '', 'Kobkeaw.l@hivnat.org', '', '0', '', '', '0', 'HIVNAT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108125335');
INSERT INTO `member` VALUES (40, 'Oratai.b', '12345', 'Oratai  Butterworth', '', '', '', '0', '0', '', '0', '', 'Oratai.b@hivnat.org', '', '0', '', '', '0', 'HIVNAT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108125423');
INSERT INTO `member` VALUES (41, 'Thidarat.j', '12345', 'Thidarat  Jupimai', '', '', '', '0', '0', '', '0', '', 'Thidarat.j@hivnat.org', '', '0', '', '', '0', 'HIVNAT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108125511');
INSERT INTO `member` VALUES (42, 'Sineenart.c', '12345', 'Sineenart  Chaotrakarn', '', '', '', '0', '0', '', '0', '', 'Sineenart.c@hivnat.org', '', '0', '', '', '0', 'HIVNAT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108125602');
INSERT INTO `member` VALUES (43, 'jintana.I', '7646', 'Jintana  Intasan', '', '', '', 'Monitor', '104 Rajdamri rd, pathumwan, Bangkok 10330', '', '0', '', 'jintana.I@hivnat.org', '', '02-6523040', '', '02-2525779', '0', 'hivnat', '', '', 'Y', '', '', '', '', '', '', '', '', '', '', '', '20080108125702');
INSERT INTO `member` VALUES (44, 'Tulathip.S', '12345', 'Tulathip  Suwanalert', '', '', '', '0', '0', '', '0', '', 'Tulathip.S@hivnat.org', '', '0', '', '', '0', 'hivnat', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108125804');
INSERT INTO `member` VALUES (45, 'kobsupeda', '12345', 'ÈØÀÔ´Ò  ·Í§àÂç¹', '', '', '', '0', '0', '', '0', '', 'kobsupeda@hotmail.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108125853');
INSERT INTO `member` VALUES (46, 'suttichom', '12345', '´Ç§Ë·ÑÂ  ÊØ·¸ÔªØÁ', '', '', '', '0', '0', '', '0', '', 'suttichom@hotmail.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108130056');
INSERT INTO `member` VALUES (47, 'nseetapun', '12345', '¹§ÅÑ¡É³ì  ÊÕµÐ¾Ñ¹¸ì', '', '', '', '0', '0', '', '0', '', 'nseetapun@hotmaol.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108130201');
INSERT INTO `member` VALUES (48, 'moddang10', '12345', 'ÍÃ·ÑÂ  ºÑµàµÍÃìàÇÊ', '', '', '', '0', '0', '', '0', '', 'moddang10@yahoo.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108130422');
INSERT INTO `member` VALUES (49, 'nonenoy', '12345', 'ÈÔÃÔ¾Ã', '', '', '', '0', '0', '', '0', '', 'nonenoy@yahoo.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108131142');
INSERT INTO `member` VALUES (50, 'wapateerapong', '12345', 'ÇÔ¨ÔµÃÒ', '', '', '', '0', '0', '', '0', '', 'wapateerapong@yahoo.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108131353');
INSERT INTO `member` VALUES (51, 'y_sukontha', '12345', 'ÊØ¤¹·ÃÒ  àÊ¹ÒÇÑµÃ', '', '', '', '0', '0', '', '0', '', 'y_sukontha@yahoo.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108131451');
INSERT INTO `member` VALUES (52, 'Varatha.S', '12345', 'ÇÃÑ·ÂÒ  ÊØã¨á¡éÇ', '', '', '', '0', '0', '', '0', '', 'Varatha.S@hotmail.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108131533');
INSERT INTO `member` VALUES (53, 'nuchrin_teerasaksopon', '12345', '¹ØªÃÔ¹·Ãì  ¸ÕÃÐÈÑ¡´ÔìâÊÀ³', '', '', '', '0', '0', '', '0', '', 'nuchrin_teerasaksopon@merck.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108131919');
INSERT INTO `member` VALUES (54, 'StudyCoordinator', '12345', '¤Ø³ÍÃÃ¶ÇÃÃ³  âªµÔàÊ¹', '', '', '', '0', '0', '', '0', '', 'StudyCoordinator@bumrungrad.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108132008');
INSERT INTO `member` VALUES (55, 'suparpun_chungcharoenwattana', '12345', '¤Ø³ÊØÀÒ¾ÃÃ³  ¨Ù§à¨ÃÔ­ÇÑ²¹Ò', '', '', '', '0', '0', '', '0', '', 'suparpun_chungcharoenwattana@merck.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108132045');
INSERT INTO `member` VALUES (56, 'roongtip_theplertboon', '12345', 'ÃØè§·Ô¾Âì  à·¾àÅÔÈºØ­', '', '', '', '0', '0', '', '0', '', 'roongtip_theplertboon@merck.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108132137');
INSERT INTO `member` VALUES (57, 'chris.d@hivnat.org', '12345', 'Dr.Chris  Duncombe', '', '', '', '0', '0', '', '0', '', 'chris.d@hivnat.org', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108132214');
INSERT INTO `member` VALUES (58, 'Arpa.c', '12345', 'Arpa  Chuamchaitrakool', '', '', '', '0', '0', '', '0', '', 'Arpa.c@hivnat.org', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108132310');
INSERT INTO `member` VALUES (59, 'Sthearka', '12345', 'Dr.Prasert  Laothavorn', '', '', '', '0', '0', '', '0', '', 'Sthearka@jacth.jhj.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108132353');
INSERT INTO `member` VALUES (60, 'Tchuenji', '12345', 'Thitirat  Chuenjit', '', '', '', '0', '0', '', '0', '', 'Tchuenji@jacth.jnj.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108132431');
INSERT INTO `member` VALUES (61, 'Ppahunva@gcoth.jnj.com', '12345', 'patcharin  Pahunvarahit', '', '', '', '0', '0', '', '0', '', 'Ppahunva@gcoth.jnj.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108132515');
INSERT INTO `member` VALUES (62, 'Pprabrok', '12345', 'Pintus  Probrohe', '', '', '', '0', '0', '', '0', '', 'Pprabrok@gcoth.jnj.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108132556');
INSERT INTO `member` VALUES (63, 'kimt_himt_himt', '12345', 'Nattareeya  Chomatihornkul', '', '', '', '0', '0', '', '0', '', 'kimt_himt_himt@hotmail.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108132644');
INSERT INTO `member` VALUES (64, 'tmc114tmc278', '12345', 'Rugee  Sriondee', '', '', '', '0', '0', '', '0', '', 'tmc114tmc278@yahoo.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108132730');
INSERT INTO `member` VALUES (65, 'parichart_B72', '12345', 'Parichart  Seawsirikul', '', '', '', '0', '0', '', '0', '', 'parichart_B72@yahoo.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108132827');
INSERT INTO `member` VALUES (66, 'auaree', '12345', 'auaree', '', '', '', '0', '0', '', '0', '', 'auaree@bumrungrad.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108132919');
INSERT INTO `member` VALUES (67, 'nitaya', '12345', 'nitaya', '', '', '', '0', '0', '', '0', '', 'nitaya@bumrungrad.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108132950');
INSERT INTO `member` VALUES (68, 'atthawon', '12345', 'atthawon', '', '', '', '0', '0', '', '0', '', 'atthawon@bumrungrad.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108133031');
INSERT INTO `member` VALUES (69, 'thitipornp', '12345', 'thitipornp', '', '', '', '0', '0', '', '0', '', 'thitipornp@bumrungrad.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108133106');
INSERT INTO `member` VALUES (70, 'dwip', '12345', 'dwip', '', '', '', '0', '0', '', '0', '', 'dwip@bumrungrad.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108133141');
INSERT INTO `member` VALUES (71, 'Supakarn ', '12345', 'Supakarn ', '', '', '', '0', '0', '', '0', '', 'C_suparkarn@hotmail.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108133215');
INSERT INTO `member` VALUES (72, 'Monthira', '12345', 'Monthira', '', '', '', '0', '0', '', '0', '', 'Monthra@hotmail.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108133256');
INSERT INTO `member` VALUES (73, 'suthida', '311023', 'Suthida  No Ranong', '', '', '', 'Clinical Research Associate', '69/97 Srinakarin Rd Nongbon Pravet BKK 10250', '', 'Thailand', '', 'ranong_nueng@hotmail.com.com', '', '0818107393', '', '', '2', '0', '', '', 'Y', '', '', '', '', '', '', '', '', '', '', '', '20080108134037');
INSERT INTO `member` VALUES (74, 'jpanitnat', '12345', '¾¹Ôµ¹Ò¶', '', '', '', '0', '0', '', '0', '', 'jpanitnat@yahoo.com', '', '089 906 9287', '', '', '0', 'APEC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108134138');
INSERT INTO `member` VALUES (75, 'chadapa', '12345', 'ª¹Ô´ÒÀÒ  »ÃÒÈÀ¤Õ', '', '', '', '0', '0', '', '0', '', 'chadapa@ntnes-cmu.org', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108134349');
INSERT INTO `member` VALUES (76, 'Sunida', '12345', 'ÊØ¹Ô´ÊÒ  à¡Èà·È', '', '', '', '0', '0', '', '0', '', 'Sunida@rihes-cmu.org', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108134438');
INSERT INTO `member` VALUES (77, 'Patcharapun', '12345', '¾ÑªÃ¾ÃÃ³  ÊØ¤¹ªÒ·Ã', '', '', '', '0', '0', '', '0', '', 'Patcharapun@rihes-cmu.org', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108134513');
INSERT INTO `member` VALUES (78, 'ijunya', '12345', '¨ÃÃÂÒ ', '', '', '', '0', '0', '', '0', '', 'ijunya@hotmail.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108134625');
INSERT INTO `member` VALUES (79, 'sakda', '12345', 'ÈÑ¡´Ò  ¾ÃÖ§ÅÓÀÙ', '', '', '', '0', '0', '', '0', '', 'sakda@chiangmai.ac.th', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108134658');
INSERT INTO `member` VALUES (80, 'tassanai', '12345', 'Tassanai  Wongchak', '', '', '', '0', '0', '', '0', '', 'tassanai@rihes-cmu.org', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108134940');
INSERT INTO `member` VALUES (81, 'bangon', '12345', 'Bang-on  Siriroj', '', '', '', '0', '0', '', '0', '', 'bangon@rihes-cmu.org', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108135014');
INSERT INTO `member` VALUES (82, 'kanokporn', '12345', 'Kanokporn  Wiboonnuthakul', '', '', '', '0', '0', '', '0', '', 'kanokporn@rihes-cmu.org', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108135052');
INSERT INTO `member` VALUES (83, 'nuntisa', '12345', 'Nuntisa  Choltifojniramit', '', '', '', '0', '0', '', '0', '', 'nuntisa@yahoo.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108135134');
INSERT INTO `member` VALUES (84, 'voramit', '12345', 'Voravit  Suwanvanickit', '', '', '', '0', '0', '', '0', '', 'voramit@gmail.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108135212');
INSERT INTO `member` VALUES (85, 'khuanchai', '12345', 'khuanchai', '', '', '', '0', '0', '', '0', '', 'khuanchai@idthai.org', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108135247');
INSERT INTO `member` VALUES (86, 'Charatdao', '12345', 'Charatdao', '', '', '', '0', '0', '', '0', '', 'Charatdao@rihes-cmu.org', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108135323');
INSERT INTO `member` VALUES (87, 'Prathabjit', '12345', 'Prathabjit', '', '', '', '0', '0', '', '0', '', 'Prathabjit@rihes-cmu.org', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108135355');
INSERT INTO `member` VALUES (88, 'Patchanee', '12345', 'Patchanee', '', '', '', '0', '0', '', '0', '', 'Patchanee@rihes-cmu.org', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108135426');
INSERT INTO `member` VALUES (89, 'Gingkaew', '12345', 'Gingkaew', '', '', '', '0', '0', '', '0', '', 'Gingkaew@rihes-cmu.org', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108135505');
INSERT INTO `member` VALUES (90, 'pornsuk-risjdhiphan', '12345', '¾ÃÊØ¢  ÇÔÊØ·¸Ô¾Ñ¹¸ì', '', '', '', '0', '0', '', '0', '', 'pornsuk-risjdhiphan@merck.com', '', '', '', '', '0', 'MSD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108135558');
INSERT INTO `member` VALUES (91, 'oraya-permpoon', '12345', 'ÍÃÂÒ  à¾ÔèÁ¾Ù¹', '', '', '', '0', '0', '', '0', '', 'oraya-permpoon@merck.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108135642');
INSERT INTO `member` VALUES (92, 'kannika-pattanaphijun', '12345', '¡ÃÃ³Ô¡Ò  ¾Ñ²¹¾Ô¡ØÅ', '', '', '', '0', '0', '', '0', '', 'kannika-pattanaphijun@merck.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108135722');
INSERT INTO `member` VALUES (93, 'manomapiboon', '12345', 'Í¹Ñ¹µì  Áâ¹ÁÑÂ¾ÔºÙÅÂì', '', '', '', '0', '0', '', '0', '', 'manomapiboon@yahoo.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108135805');
INSERT INTO `member` VALUES (94, 'Busabasupa', '12345', 'ºØÉºÒ  ÈØÀÇÑ²¹ì¸¹º´Õ', '', '', '', '0', '0', '', '0', '', 'Busabasupa@yahoo.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108135842');
INSERT INTO `member` VALUES (95, 'wboosaba', '12345', 'ºØÉºÒ  ÇÔÃÔÂÐÊÔÃÔàÇª', '', '', '', '0', '0', '', '0', '', 'wboosaba@yahoo.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108135919');
INSERT INTO `member` VALUES (96, 'supakarnt', '12345', 'ÈØÀ¡Ò¹µì  àµªÐ¾§È¸Ã', '', '', '', '0', '0', '', '0', '', 'supakarnt@hotmail.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108140000');
INSERT INTO `member` VALUES (97, 'tansupapun', '12345', 'ÊØÀÒ¾ÃÃ³  µÑ¹µÃÒªÕÇªÃ', '', '', '', '0', '0', '', '0', '', 'tansupapun@hotmaol.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108140038');
INSERT INTO `member` VALUES (98, 'surasak.t', '12345', 'È.¹¾.ÊØÃÈÑ¡´Ôì  °Ò¹Õ¾Ò¹ÔªÊ¡ØÅ', '', '', '', '0', '0', '', '0', '', 'surasak.t@chula.ac.th', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108140127');
INSERT INTO `member` VALUES (99, 'Sunida.p', '12345', '´Ã.ÊØ¹Ô´Ò  »ÃÕªÒÇ§Éì', '', '', '', '0', '0', '', '0', '', 'Sunida.p@chula.ac.th', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108140211');
INSERT INTO `member` VALUES (100, 'preeda.t', '12345', 'ÃÈ.¹¾.»ÃÕ´Ò  ·ÑÈ¹»ÃÐ´ÔÉ°ì', '', '', '', '0', '0', '', '0', '', 'preeda.t@chula.ac.th', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108140243');
INSERT INTO `member` VALUES (101, 'yupa.a', '12345', '¼È.ÂØ¾Ò  ÍèÍ¹·éÇÁ ', '', '', '', '0', '0', '', '0', '', 'yupa.a@chula.ac.th', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108140318');
INSERT INTO `member` VALUES (102, 'anuchai.t', '12345', '¼È.,´Ã.Í¹ØªÑÂ  ¸ÕÃÐàÃ×Í§äªÂÈÃÕ', '', '', '', '0', '0', '', '0', '', 'anuchai.t@chula.ac.th', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108140357');
INSERT INTO `member` VALUES (103, 'wuinny-winn', '12345', 'ÇÔÃÂÒ  Ê¡ØÅ·Í§ä¾ÈÒÅ', '', '', '', '0', '0', '', '0', '', 'wuinny-winn@hotmail.com', '', '081 466 6657', '', '', '0', 'º. Thegravitae (ÍâÈ¡)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108140449');
INSERT INTO `member` VALUES (104, 'sabaithipS', '12345', 'Êäº·Ô¾Âì  ÈÃÕÇÔªÑÂ', '', '', '', '0', '0', '', '0', '', 'sabaithipS@afrims.org', '', '0', '', '', '0', 'AFIRMS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108140535');
INSERT INTO `member` VALUES (105, 'Nuddaujjin', '12345', '¹Ñ´´Ò  ÍØªªÔ¹', '', '', '', '0', '0', '', '0', '', 'Nuddaujjin@yahoo.com', '', '0', '', '', '0', 'Quintile ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108140614');
INSERT INTO `member` VALUES (106, 'somchai', '12345', '¹¾.ÊÁªÒÂ  áÊ§¡Ô¨¾Ã', '', '', '', '0', '0', '', '0', '', 'somchai@dmsc.moph.go.th', '', '02 951 0000 µèÍ 98456', '', '', '0', '¼Í.ÈÙ¹ÂìÇÔ¨ÑÂ·Ò§¤ÅÔ¹Ô¡ ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108140703');
INSERT INTO `member` VALUES (107, 'tmasc', '12345', 'È.¾­.ÍÃØ³Õ  ·ÃÑ¾Âìà¨ÃÔ­', '', '', '', '0', '0', '', '0', '', 'tmasc@mahidol.ac.th', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108140738');
INSERT INTO `member` VALUES (108, 'wirachm', '12345', 'ÇÔÃÑª  àÁ¦Í¹Ñ¹µ¸ÇÑª', '', '', '', '0', '0', '', '0', '', 'wirachm@hotmail.com', '', '086 522 5128', '', '', '0', 'ÈÙ¹Âì·´ÊÍºÇÑ¤«Õ¹ Á.ÁËÔ´Å', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108140824');
INSERT INTO `member` VALUES (109, 'sumonmalm', '12345', '¾­.ÊØÁ¹ÁÒÅÂì  Á¹ÑÊÊÔÃÔÇÔ·ÂÒ', '', '', '', '0', '0', '', '0', '', 'sumonmalm@yahoo.com', '', '0', '', '', '0', 'ÇªÔÃ¾ÂÒºÒÅ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108140902');
INSERT INTO `member` VALUES (110, 'siriwanonw', '12345', '¾­.ÈÔÃÔÇÃÃ³  µÑé§¨Ôµ¡ÁÅ', '', '', '', '0', '0', '', '0', '', 'siriwanonw@yahoo.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108140932');
INSERT INTO `member` VALUES (111, 'chadakarn', '12345', '¾­.ªÒ´Ò¡Ò¹µì  ¾âÅ»ÃÒ¡ÒÃ', '', '', '', '0', '0', '', '0', '', 'chadakarn@yahoo.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108141004');
INSERT INTO `member` VALUES (112, 'wbudsaba', '12345', '¾­.ºØÉºÒ  ÇÔÃÔÂÐÊÔÃÔàÇª', '', '', '', '0', '0', '', '0', '', 'wbudsaba@hotmail.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108141040');
INSERT INTO `member` VALUES (113, 'jak020', '12345', '¹¾.¨Ñ¡Ã¾Ñ¹¸ì  ', '', '', '', '0', '0', '', '0', '', 'jak020@yahoo.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108141138');
INSERT INTO `member` VALUES (114, 'NICHAPATU', '12345', '³ÔªÒÀÑ·Ã', '', '', '', '0', '0', '', '0', '', 'NICHAPATU@AFRIMS.ORG', '', '081 846 3489', '', '', '0', 'CRA AFFRIMS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108141233');
INSERT INTO `member` VALUES (115, 'NILLAWANB', '12345', '¹ÔÅÇÑÅ´Ôì  ºÑÇ·Í§', '', '', '', '0', '0', '', '0', '', 'NILLAWANB@AFRIMS.ORG', '', '081 855 9036', '', '', '0', 'CRA AFFRIMS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108141321');
INSERT INTO `member` VALUES (116, 'Pranee', '12345', '»ÃÒ³Õ  ¢Ñ´ÍØâÁ§¤ì', '', '', '', '0', '0', '', '0', '', 'Pranee@rihes-cmu.org', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108141358');
INSERT INTO `member` VALUES (117, 'pratabjiti', '12345', '»ÃÐ·Ñº¨Ôµ  ÍÔ¹·ÐÇ§ÈÒ', '', '', '', '0', '0', '', '0', '', 'pratabjiti@rihes-cmu.org', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108141458');
INSERT INTO `member` VALUES (118, 'kamolwan', '12345', '¡ÁÅÇÃÃ³  ÃÑÈÁÕâª¤ÅÒÀ', '', '', '', '0', '0', '', '0', '', 'kamolwan@rihes-cmu.org', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108141540');
INSERT INTO `member` VALUES (119, 'umpava', '12345', 'ÍÑÁ¾ÇÒ  ·ÔÁá»é¹', '', '', '', '0', '0', '', '0', '', 'umpava@chiangmai.ac.th', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108141617');
INSERT INTO `member` VALUES (120, 'jarun', '12345', '¨ÃÑ­  àª×éÍàÂç¹', '', '', '', '0', '0', '', '0', '', 'jarun@rihes-cmu.org', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108141712');
INSERT INTO `member` VALUES (121, 'sobhon', '12345', 'âÊÀ³  ãºâ¾¸Ôì', '', '', '', '0', '0', '', 'Thailand', '', 'sobhon@chiangmai.ac.th', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108141745');
INSERT INTO `member` VALUES (122, 'watcha', '12345', 'ÇÑªÃÒÀÃ³ì  ÈÃÕªÙ', '', '', '', '0', '0', '', '0', '', 'watcha@rihes-cmu.org', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108141828');
INSERT INTO `member` VALUES (123, 'nattapolk', '12345', '³Ñ°¾Å  â¦ÉªØ³Ë¹Ñ¹·ì', '', '', '', '0', '0', '', '0', '', 'nattapolk@rihes-cmu.org', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108141907');
INSERT INTO `member` VALUES (124, 'parinya', '12345', '»ÃÔ­­Ò  ¨ÍÁä¾¨ÔµÃÊ¡ØÅ', '', '', '', '0', '0', '', '0', '', 'parinya@rihes-cmu.org', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108141945');
INSERT INTO `member` VALUES (125, 'snimsakul', '12345', 'ÊÔ¹Õ¹Ò¶  ¹ÔèÁÊ¡ØÅ', '', '', '', '0', '0', '', '0', '', 'snimsakul@rihes-cmu.org', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108142021');
INSERT INTO `member` VALUES (126, 'sineenart', '12345', 'ÊÔ¹Õ¹Ò¶  áµèà¨ÃÔ­¡ØÅ', '', '', '', '0', '0', '', '0', '', 'sineenart@chiangmai.ac.th', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108142106');
INSERT INTO `member` VALUES (127, 'jiraporn', '12345', '¨ÔÃÒ¾Ã  ÊØÃÔÂÐ', '', '', '', '0', '0', '', '0', '', 'jiraporn@rihes-cmu.org', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108142151');
INSERT INTO `member` VALUES (128, 'rujira@rihes.org', '040613', 'ÃØ¨ÔÃÒ  ¾Ä²Ô¸Ò´Ò', '', '', '', '¾ÂÒºÒÅ', '110 Intravaroros Rd.Chiang Mai', '', 'Thailand', '', 'rujira@rihes.org', 'rujira@rihes-cmu.org', '66 53 945055 ext 374', '', '', 'clinical research', 'Research institue for Health Science', '', 'Y', 'Y', '', '', '', '', '', '', '', '', '', '', '', '20080108142231');
INSERT INTO `member` VALUES (129, 'pitayaporn', '12345', '¾Ô·ÂÒÀÃ³ì  á¡éÇ·Ô¾Âì', '', '', '', '0', '0', '', '0', '', 'pitayaporn@rihes-cmu.org', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108142311');
INSERT INTO `member` VALUES (130, 'pongpun', '12345', '¼èÍ§¾ÃÃ³  àÊÒÃìà¢ÕÂÇ', '', '', '', '0', '0', '', '0', '', 'pongpun@rihes-cmu.org', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108142352');
INSERT INTO `member` VALUES (131, 'tuangporn.suwan-ampai', '12345', 'µÇ§¾Ã', '', '', '', '0', '0', '', '0', '', 'tuangporn.suwan-ampai@roche.com', '', '0', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080108142438');
INSERT INTO `member` VALUES (132, 'jarasporn', 'temtem', 'Jarasporn Mongkolsuk', '', '', '', 'QA/QC Manager', '420/6 Ratchawithi Road,\r\nThungphayathai, Ratchathevee\r\nBangkok, 10400', '', 'Thailand', '', 'jarasporn@iddth.com', 'jmongkolsuk@mail,com', '+662-644-8200', '+662-644-8947', '+662-644-8201', 'Regulatory Affair, Clinical Monitor', 'International Drug Development Co., Ltd. ', '', '', '', '', 'Y', '', '', '', '', 'Malaria', 'HIV', 'Dermatitis,', 'Cancer, Post-radiation Syndrome', '', '20080108175416');
INSERT INTO `member` VALUES (133, 'dwip_k', 'Noi,Thitiporn040771', 'Dwip', '', '', '', 'Physician', '33 Sukhumvit 3 (Nana Nua), Bangkok 10110', '', 'Thailand', '', 'dwip@bumrungrad.com', '', '+66-26672284', '', '+66-26672522', 'Epidemiologist', 'Burmrungrad International Clinical Research Center', 'Y', '', '', '', '', 'Y', 'Y', 'Professor Emeritus of Epidemiology (Mahidol University); Director of Burmrungrad International Clinical Research Center, Member Scientific and Ethical Review Group of WHO/HRP/RHR', 'Doctorate in Epidemiology (The Johns Hopkins University); MD (Siriraj Hospital, Mahidol University)', '', '', '', '', '', '20080109130836');
INSERT INTO `member` VALUES (134, 'Tulathip.S', 'paew2023', 'Tulathip Suwanlerk', '', '', '', 'Nurse', 'HIV-NAT 104 Rachadumri Road, Pathumwan, Bangkok 10330 THAILAND\r\n', '', 'THAILAND', '', 'tulathip.s@hivnat.org', '', '+662 652 3040 Ext 153', '', '+662 252 5779', 'Nurse', 'HIV-NAT', '', 'Y', '', '', '', '', '', 'Study coordinator of PREDICT CIPRA Thailand-Cambodia  Project, HIV-NAT', 'GCP,HSP', '', '', '', '', '', '20080111092418');
INSERT INTO `member` VALUES (135, 'wittaya', 'boilzone{icrcc11', 'Wittaya Phanmuang', '', '', '', 'Director, Data Services', '420/6 Ratchawithi Road,\r\nThungphayathai, Ratchathevee,\r\nBangkok, 10400 ', '', 'Thailand', '', 'wittaya@iddth.com', '', '(66) 2644 8200 ', '', '(66) 2644 8201', 'Data Management', 'International Drug Development Co., Ltd.', '', '', '', 'Y', '', '', '', '', '', '', '', '', '', '', '20080131113247');
INSERT INTO `member` VALUES (136, 'dusakorn', '12345', 'aa', '', '', '', 'ss', 'aa', '', 'bkk', '', 'dudit_03@hotmail.com', '', '023456543', '', '', 'aa', 'aa', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080211115339');
INSERT INTO `member` VALUES (137, 'daralak', 'pia8437061', 'Daralak Tavornprasit', '', '', '', 'Employee', 'RIHES, Chiang Mai University, Chiang Mai, Thailand', '', 'Thaniland', '', 'daralak@rihes.org', 'tdaralak@gmail.com', '0898507866', '66 5394 5055 ext 469', '', 'HIV/AIDS', 'RIHES, CMU', '', 'Y', '', '', '', '', '', 'HIV/AIDS', '', '', '', '', '', '', '20080321103643');
INSERT INTO `member` VALUES (138, 'jettanong', '4622jet', 'jettanong Klaewsongkram', '', '', '', 'Physician', 'Department of Medicine\r\nFaculty of Medicine\r\nChulalongkorn university\r\nBangkok 10330, Thailand', '', 'Thailand', '', 'jettanong.K@chula.ac.th', '', '662-2564152', '', '', 'Allergy Immunology Internal Medicine', 'Chulalongkorn University', 'Y', '', '', '', '', '', '', '', '', '', '', '', '', '', '20080331231118');
INSERT INTO `member` VALUES (139, 'Valintino', 'password', '', '', '', '', '', '', '', '', '', 'valiintino@qmail.com', '', '', '', '', '', '', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', '', '', '', 'Hello, Your site is great. <a href="http://www.abra2.com">abra2</a> [url=http://www.abra3.com]abra3[/url] http://www.abra1.com [URL]http://www.abra4.com[/URL] Regards, Valiintino Guxxi', '', '20080414072910');
INSERT INTO `member` VALUES (140, 'chatsuda.a', 'aon594', 'Chatsuda Auchieng', '', '', '', 'Non Profit Organization', '104 Ratchadamri Rd.\r\nPatumwan, Lumpini 10400', '', 'THAILAND', '', 'a.chatsuda@gmail.com', 'chatsuda@chiangmai.ac.th', '081-5947495', '', '', 'Regulatory', 'HIV-NAT', '', '', 'Y', '', 'Y', 'Y', '', '', '', '', '', '', '', '', '20080425152303');
INSERT INTO `member` VALUES (141, 'watchar', '053432295', 'Watcharaporn Srichoo', '', '', '', 'Nurse', 'PO Box 80 CMU Chiangmai Thailand 50202', '', 'Thailand', '', 'watchar@rihes-cmu.org', 'noi_sri@hotmail.com', '053-894138', '081-8811292', '053-894138', 'Prediatric HIV', 'Research Institute for Health Science', '', '', 'Y', '', 'Y', '', 'Y', '1.Nurse OR.\r\n2.Study nuse', '1.GCP\r\n2.HSP\r\n3.HIV/AIDS Workshop2004\r\n4.Pharmacokinetic tutorial\r\n6.Universal Precaution Post-exposure Phophylaxis\r\n7.Data management training USA.', ' HIV', '', '', '', '', '20080516131532');
INSERT INTO `member` VALUES (142, 'Chintana Khamrong', 'mulberry', 'Chintana Khamrong', '', '', '', 'Study Coordinator', '110 Intavaroros Road\r\nChiang Mai 50200 Thailand', '', 'Thailand', '', 'chintanak@rihes-cmu.org', 'jinmulberry@yahoo.com', '66 53945051 ext 446', '66 53894138', '66 53221849', 'Occupational Therapy & Clinical Trial', 'Research Institute for Health Sciences', '', 'Y', '', '', '', '', '', 'Occupational Therapy and Psychological Counseling', '1. GCP\r\n2. HSP\r\n3. PK Tutorial on line training on ACTG/IMPAACT website\r\n4. ASEAN People Assembly, in Manila, Philippines\r\n5. ASEAN gerontology Course, in Singapore\r\n6. Music Therapy\r\n7. ASIA Regional IMPAACT CAB meeting\r\n8. Standard Precautions Post-exposure Prophylaxis (PEP)', 'HIV/AIDS in Children and Pregnant women', 'Delay Developmental Children\r\n', 'People with Disability and Gerontology', 'Psychological problem', '', '20080516141313');
INSERT INTO `member` VALUES (143, 'shariful', 'ssfssf', 'Dr. S. M. Shariful Islam', '', '', '', 'Medical Doctor', 'B-3, Road-1, Niketan\r\nGulshan-1\r\nDhaka-1212', '', 'Bangladesh', '', 'sharif.undp@gmail.com', '', '88-01730091803', '', '', 'Medical Research', 'Partners in Population and Development (PPD)', '', 'Y', '', '', '', '', '', '', '', '', '', '', '', '', '20081012051041');
INSERT INTO `member` VALUES (144, 'Ablo', 'arafat', 'OUEDRAOGO', '', '', '', 'Researcher', 'Avenue Mamadou KONATE Porte 2006  Lot 218 01 BP 390 BOBO-DIOULASSO 01', '', 'Burkina Faso', '', 'ouarma74@yahoo.fr', '', '+ 226 20 97 41 00', '', '', 'Public Health', 'CENTRE MURAZ', 'Y', 'Y', '', '', '', 'Y', '', '', '', '', '', '', '', '', '20081119025558');
INSERT INTO `member` VALUES (145, 'ellen30spinks', 'sharpstream', 'ellen spinks', '', '', '', 'consultant', 'Castle House\r\n37-45 Paul St\r\nLondon', '', 'UK', '', 'ellen.spinks@sharpstream.com', '', '+44 207 324 1015', '', '', 'Clinical Operations', 'Sharpstream Life Sciences', '', 'Y', 'Y', '', '', '', '', '', '', '', '', '', '', '', '20090119183819');
INSERT INTO `member` VALUES (146, 'giftsa', 'sam32192', 'SAWITREE', '', '', '', 'PHARMACIST', '48/101 Saimai 84/3 Saimai Rd., Saimai district, Bangkok', '', 'Thailand', '', 'giftsa@hotmail.com', 'arthemis_rocephin@hotmail.com', '081-440-8649', '0-2101-1482', '-', 'Clinical', 'Bumrungrad International', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20090324212401');
INSERT INTO `member` VALUES (147, 'amsiqueira', 'polenta', 'Andre Machado de Siqueira', '', '', '', 'Medical Researcher', 'Av. Pedro Teixeira, 25\r\nDom Pedro\r\nManaus - AM\r\nCEP: 69040-000', '', 'Brazil', '', 'amsiqueira@gmail.com', 'andresiqueira10@hotmail.com', '+55(92)9191-7844', '', '', 'Infectious Diseases', 'Funda&#231;&#227;o de Medicina Tropical do Amazonas', 'Y', '', '', 'Y', '', '', 'Y', 'Residence in Infectious Diseases at the University of Sao Paulo', 'GCP training by Infonetica', 'Clinical experience in Infectious Diseases assistance at University of Sao Paulo', '', '', '', '', '20090330171304');

-- --------------------------------------------------------

-- 
-- Table structure for table `newscenter`
-- 

CREATE TABLE `newscenter` (
  `news_id` int(5) unsigned zerofill NOT NULL auto_increment,
  `title_eng` varchar(250) NOT NULL default '',
  `title_th` varchar(250) NOT NULL default '',
  `details_eng` text NOT NULL,
  `details_th` text NOT NULL,
  `pic_s` varchar(100) NOT NULL default '',
  `pic_b` varchar(100) NOT NULL default '',
  `file_name` varchar(255) NOT NULL,
  `file_down` varchar(255) NOT NULL,
  `view` int(5) NOT NULL default '0',
  `ddpost` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`news_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

-- 
-- Dumping data for table `newscenter`
-- 

INSERT INTO `newscenter` VALUES (00056, 'ÂÔ¹´ÕµéÍ¹ÃÑºÊÙèÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â', 'ÂÔ¹´ÕµéÍ¹ÃÑºÊÙèÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â', '<style type="text/css">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<!--\r\n.style1 {font-family: Tahoma}\r\n.style4 {\r\n	font-size: 14px;\r\n	font-family: Tahoma;\r\n}\r\n.style5 {color: #FF0000}\r\n.tahoma12 {\r\n	font-family: Tahoma;\r\n	font-size: 12px;\r\n	color: #000000;\r\n	text-decoration: none;\r\n}\r\n.Tahoma12B {\r\n	font-family: Tahoma;\r\n	font-size: 12px;\r\n	font-weight: bold;\r\n	color: #FF0000;\r\n	text-decoration: none;\r\n}\r\n--></style>\r\n<div style="MARGIN: 0cm 0cm 10pt" align="left"><font size="2"><img alt="" align="left" width="89" height="85" src="/pic/Image/Untitled-1(1).jpg" /></font><span class="tahoma12"><font size="1"><font face="Times New Roman"><font size="2">Thailand has long been providing organ transplantation services to Thai patients with almost all types of organ</font> <font size="2">failure. Organ Transplantation in Thailand is considered to have World class academic excellence.&nbsp; Thailand''s organ transplant profession is well developed, and has contributed to advancement of both solid organs and bone marrow / stem </font></font><font size="2" face="Times New Roman">cell transplantation services</font>. </font></span></div>\r\n<div style="MARGIN: 0cm 0cm 10pt" align="left"><font color="#ff0000" size="3"><strong><font size="2"></font></strong></font></div>\r\n<div style="MARGIN: 0cm 0cm 10pt" align="center"><font color="#ff0000"><strong><font color="#008080" size="1">..................................................................................................</font></strong></font></div>\r\n<font color="#ff0000" size="3"><font color="#008080">\r\n<div style="MARGIN: 0cm 0cm 10pt" align="left"><font color="#0000ff" size="2"><u><strong></strong></u></font></div>\r\n<div style="MARGIN: 0cm 0cm 10pt" align="left"><font color="#0000ff"><u><strong></strong></u></font></div>\r\n<div style="MARGIN: 0cm 0cm 10pt" align="left">\r\n<table border="1" cellspacing="1" summary="" cellpadding="1" width="100%">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <p align="center"><img alt="" width="150" height="109" src="/pic/Image/grand_palace.jpg" /></p>\r\n            </td>\r\n            <td>\r\n            <div><strong><span style="COLOR: black; FONT-SIZE: 14pt"><font size="2" face="Times New Roman">Bangkok: Congress Site for 2016 <img alt="" width="18" height="8" src="http://www.transplantthai.org/pic/Image/new.gif" /></font></span></strong></div>\r\n            <div><strong><span style="COLOR: black; FONT-SIZE: 14pt"><font size="2" face="Times New Roman"><br />\r\n            </font></span></strong>\r\n            <div><span style="COLOR: black; FONT-SIZE: 14pt"><span style="COLOR: black"><font size="2" face="Times New Roman"></font></span></span></div>\r\n            <div><span style="COLOR: black; FONT-SIZE: 14pt"><span style="COLOR: black"><font size="2" face="Times New Roman"><font face="Times New Roman"><font size="2"><font size="2"><span style="COLOR: black; FONT-SIZE: 11.5pt"><span style="COLOR: black; FONT-SIZE: 14pt"><font size="2" face="Times New Roman"><font size="1">Bangkok, Thailand, is the winning site for the XXVI International Congress of The Transplantation Society</font>&nbsp;</font></span></span></font></font></font><em><font color="#ff0000"><a href="http://www.tts.org/index.php?option=com_content&amp;view=article&amp;id=797:bangkok-congress-site-for-2016&amp;catid=80:newsletter-2010-volume-6-issue-6&amp;Itemid=603">(more...)</a></font></em></font></span></span><span style="COLOR: black; FONT-SIZE: 14pt"><span style="COLOR: black"><font size="2" face="Times New Roman"><em><font color="#ff0000"><br />\r\n            </font></em></font></span></span></div>\r\n            </div>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</div>\r\n<div style="MARGIN: 0cm 0cm 10pt" align="left">\r\n<table border="1" cellspacing="1" summary="" cellpadding="1" width="100%">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <p align="center"><img alt="" align="top" width="150" height="100" src="http://www.transplantthai.org/pic/Image/AllTeam(1).jpg" /></p>\r\n            </td>\r\n            <td>\r\n            <div><strong><span style="COLOR: black; FONT-SIZE: 14pt"><font size="2" face="Times New Roman">The National Campaign for increasing organ donation rate<br />\r\n            </font></span></strong></div>\r\n            <div><strong><span style="COLOR: black; FONT-SIZE: 14pt"><font size="2" face="Times New Roman"></font></span></strong>\r\n            <div><span style="COLOR: black; FONT-SIZE: 14pt"><span style="COLOR: black"><font size="2" face="Times New Roman"></font></span></span></div>\r\n            <div><span style="COLOR: black; FONT-SIZE: 14pt"><span style="COLOR: black"><font face="Times New Roman"><font size="1"><font face="Times New Roman"><span style="COLOR: black; FONT-SIZE: 11.5pt">On the </span><span style="COLOR: black; FONT-SIZE: 11.5pt">March 11, 2010</span><span style="COLOR: black; FONT-SIZE: 11.5pt">, Mr. Jurin Laksanawisit</span><span style="COLOR: #373737"> </span><span style="COLOR: black; FONT-SIZE: 11.5pt">the Minister of Public Health&nbsp;</span><span style="COLOR: black; FONT-SIZE: 11.5pt">announced that the Ministry will focus on increasing organ donation rate from brain death donor&nbsp;</span></font><em><font color="#ff0000"><a href="http://www.transplantthai.org/en/pressreleases.php?news_id=00002">(more...)</a></font></em></font></font></span></span><span style="COLOR: black; FONT-SIZE: 14pt"><span style="COLOR: black"><font size="2" face="Times New Roman"><em><font color="#ff0000"><br />\r\n            </font></em></font></span></span></div>\r\n            </div>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</div>\r\n<div style="MARGIN: 0cm 0cm 10pt" align="left">\r\n<table border="1" cellspacing="1" summary="" cellpadding="1" width="100%">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div><span style="COLOR: black; FONT-SIZE: 14pt"><font size="2" face="Times New Roman">\r\n            <div><span style="COLOR: black; FONT-SIZE: 14pt"><font size="2" face="Times New Roman"><strong><img alt="" align="left" width="120" height="116" src="http://www.transplantthai.org/picnews/Image/moph.jpg" /><br />\r\n            The Thai Ministry of Public Health announces integrated care program for renal disease patients&nbsp; </strong></font></span></div>\r\n            <div><span style="COLOR: black; FONT-SIZE: 14pt"><font size="2" face="Times New Roman"><br />\r\n            </font></span>\r\n            <div><span style="COLOR: black; FONT-SIZE: 14pt"><span style="COLOR: black"><font size="2" face="Times New Roman"></font></span></span></div>\r\n            <div><span style="COLOR: black; FONT-SIZE: 14pt"><span style="COLOR: black"><font face="Times New Roman"><font size="1">The Thai Ministry of Public Health announces integrated care policy for all renal disease patients focusing on kidney donation and transplantation.&nbsp; <em><font color="#ff0000"><a href="http://www.transplantthai.org/pic/File/Integrated%20Renal%20Care%20for%20ESRD%20patients_MOPH.pdf">(more...)</a></font></em></font></font></span></span></div>\r\n            </div>\r\n            </font></span></div>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</div>\r\n<div style="MARGIN: 0cm 0cm 10pt" align="center">&nbsp;<font color="#ff0000"><strong><font color="#008080" size="1">..................................................................................................</font></strong></font>&nbsp; </div>\r\n<div style="MARGIN: 0cm 0cm 10pt" align="left"></div>\r\n<div style="MARGIN: 0cm 0cm 10pt" align="left"></div>\r\n<div style="MARGIN: 0cm 0cm 10pt" align="left"></div>\r\n<div style="MARGIN: 0cm 0cm 10pt" align="left">\r\n<table border="1" cellspacing="1" summary="" cellpadding="1" width="100%" align="center">\r\n    <tbody>\r\n        <tr>\r\n            <td bgcolor="#ffffff" valign="top">\r\n            <div><span style="COLOR: black; FONT-SIZE: 14pt"><font color="#ffffff" size="2" face="Times New Roman">\r\n            <div><span><font color="#ffffff" size="2" face="Times New Roman">\r\n            <p><font size="2"><font color="#0000ff" face="Times New Roman"><strong><img alt="" align="left" width="119" height="108" src="http://www.transplantthai.org/pic/Image/logo1.jpg" /><br />\r\n            Update Annual Report 2009 of Kidney Transplantation in&nbsp;Thailand</strong></font><font face="Times New Roman"><font color="#000000"><strong> <img alt="" width="18" height="8" src="http://www.transplantthai.org/pic/Image/new.gif" /><br />\r\n            <br />\r\n            </strong></font><a href="http://www.transplantthai.org/pic/File/National%20Registry%20of%20Kidney%20Transplantation%20in%20Thailand(1).pdf"><em><font color="#000000" size="1">(Click to download)</font></em></a></font></font></p>\r\n            </font></span></div>\r\n            </font></span></div>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</div>\r\n<div style="MARGIN: 0cm 0cm 10pt" align="center"><font color="#ff0000"><strong><font color="#008080" size="1">..................................................................................................</font></strong></font>&nbsp;&nbsp;</div>\r\n<div style="MARGIN: 0cm 0cm 10pt" align="left">\r\n<table border="1" cellspacing="1" summary="" cellpadding="1" width="100%" align="center">\r\n    <tbody>\r\n        <tr>\r\n            <td bgcolor="#000066" valign="top">\r\n            <div><span style="COLOR: black; FONT-SIZE: 14pt"><font color="#ffffff" size="2" face="Times New Roman">\r\n            <div><span><font color="#ffffff" size="2" face="Times New Roman"><font size="2"><font color="#0000ff" face="Times New Roman"><strong>\r\n            <p><font size="2"><font color="#ffffff" face="Times New Roman"><strong>T</strong></font><font color="#ffffff"><font face="Times New Roman"><strong>hailand <st1:place w:st="on"></st1:place>is the one of participants in the Istanbul Summit that is followed by <font color="#ffffff"><font color="#ffff00">&quot;The Declaration of Istanbul on Organ Trafficing and Transplant Tourism&quot;</font>&nbsp;</font></strong><em><strong>.</strong> </em><a href="http://www.declarationofistanbul.org/"><font color="#ffffff" size="1"><em>(Click more)</em></font></a></font></font></font></p>\r\n            </strong></font></font></font></span></div>\r\n            </font></span></div>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</div>\r\n<div style="MARGIN: 0cm 0cm 10pt" align="left"></div>\r\n<v:shapetype id="_x0000_t75" stroked="f" filled="f" path="m@4@5l@4@11@9@11@9@5xe" o:preferrelative="t" o:spt="75" coordsize="21600,21600"><v:stroke joinstyle="miter"></v:stroke><v:formulas><v:f eqn="if lineDrawn pixelLineWidth 0"></v:f><v:f eqn="sum @0 1 0"></v:f><v:f eqn="sum 0 0 @1"></v:f><v:f eqn="prod @2 1 2"></v:f><v:f eqn="prod @3 21600 pixelWidth"></v:f><v:f eqn="prod @3 21600 pixelHeight"></v:f><v:f eqn="sum @0 0 1"></v:f><v:f eqn="prod @6 1 2"></v:f><v:f eqn="prod @7 21600 pixelWidth"></v:f><v:f eqn="sum @8 21600 0"></v:f><v:f eqn="prod @7 21600 pixelHeight"></v:f><v:f eqn="sum @10 21600 0"></v:f></v:formulas><v:path o:connecttype="rect" gradientshapeok="t" o:extrusionok="f"></v:path><o:lock aspectratio="t" v:ext="edit"></o:lock></v:shapetype>\r\n<div style="MARGIN: 0cm 0cm 10pt" align="center"><v:shape style="Z-INDEX: -1; POSITION: absolute; MARGIN-TOP: 0px; WIDTH: 99pt; HEIGHT: 90pt; MARGIN-LEFT: 0px; mso-wrap-edited: f" id="_x0000_s1026" wrapcoords="-95 0 -95 21499 21600 21499 21600 0 -95 0" type="#_x0000_t75"><v:imagedata o:title="" src="file:///C:\\DOCUME~1\\ADISOR~1\\LOCALS~1\\Temp\\msohtml1\\01\\clip_image001.png"></v:imagedata></v:shape>&nbsp;<font color="#ff0000"><strong><font color="#008080" size="1">..................................................................................................</font></strong></font></div>\r\n</font></font>', '<p style="MARGIN: 0cm 0cm 10pt" align="center"><span style="LINE-HEIGHT: 115%; FONT-SIZE: 14pt"><font size="2"></font></span></p>\r\n<p style="MARGIN: 0cm 0cm 10pt" align="center"><span style="LINE-HEIGHT: 115%; FONT-SIZE: 14pt"><font size="2"></font></span></p>\r\n<div style="MARGIN: 0cm 0cm 10pt" align="left"><span style="LINE-HEIGHT: 115%; FONT-SIZE: 14pt"><font color="#ff33cc" size="2"><strong><font color="#ffffff"><img alt="" align="left" width="89" height="85" src="http://www.transplantthai.org/pic/Image/Untitled-1(1).jpg" />\r\n<div><font color="#000000"><span style="FONT-SIZE: 10pt">ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Âà»ç¹Í§¤ì¡ÃÇÔªÒªÕ¾·ÕèàÃÔèÁ¨Ñ´µÑé§¢Öé¹àÁ×èÍ ¾.È.</span><span style="FONT-SIZE: 10pt"> 2531 </span><span style="FONT-SIZE: 10pt">â´ÂÁÕ Í. ¹¾. ·Í§´Õ ªÑÂ¾Ò¹Ôª à»ç¹»ÃÐ¸Ò¹ªÁÃÁÏ áÅÐÈÒÊµÃÒ¨ÒÃÂìà¡ÕÂÃµÔ¤Ø³ ¹¾.</span><span style="FONT-SIZE: 10pt">ªÇÅÔµ ÍèÍ§¨ÃÔµ à»ç¹¹ÒÂ¡ÊÁÒ¤Á·èÒ¹áÃ¡</span><span style="FONT-SIZE: 10pt">&nbsp;&nbsp; </span><span style="FONT-SIZE: 10pt">â´ÂÁÕÇÑµ¶Ø»ÃÐÊ§¤ìà¾×èÍãËé¤ÇÒÁÃÙéà¡ÕèÂÇ¡Ñº¡ÒÃ»ÅÙ¡¶èÒÂÍÇÑÂÇÐãËéá¡èÊÁÒªÔ¡ á¾·Âì</span><span style="FONT-SIZE: 10pt">¾ÂÒºÒÅáÅÐ¼Ùéà¡ÕèÂÇ¢éÍ§</span>&nbsp;<span style="FONT-SIZE: 10pt">¹ÒÂ¡ÊÁÒ¤Á·èÒ¹»Ñ¨¨ØºÑ¹¤×Í ÃÍ§ÈÒÊµÃÒ¨ÒÃÂì ´Ã. ¹¾.à¡ÃÕÂ§ÈÑ¡´Ôì ÇÒÃÕáÊ§·Ô¾Âì</span></font><span style="FONT-SIZE: 10pt"><br />\r\n</span><span style="FONT-SIZE: 14pt"><a href="http://www.transplantthai.org/pic/File/Member_rigister.doc"><span style="FONT-SIZE: 10pt">ÊÁÑ¤ÃÊÁÒªÔ¡ÊÁÒ¤Á</span></a></span></div>\r\n</font></strong></font></span></div>', 's_1197966129.DSC_0034.jpg', '1197966129.DSC_0034.jpg', 'Download', 'pic.zip', 0, '2007-12-18 11:10:20');

-- --------------------------------------------------------

-- 
-- Table structure for table `newscenter2`
-- 

CREATE TABLE `newscenter2` (
  `news_id` int(5) unsigned zerofill NOT NULL auto_increment,
  `title_eng` varchar(250) NOT NULL default '',
  `title_th` varchar(250) NOT NULL default '',
  `details_eng` text NOT NULL,
  `details_th` text NOT NULL,
  `pic_s` varchar(100) NOT NULL default '',
  `pic_b` varchar(100) NOT NULL default '',
  `file_name` varchar(255) NOT NULL,
  `file_down` varchar(255) NOT NULL,
  `view` int(5) NOT NULL default '0',
  `ddpost` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`news_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=87 ;

-- 
-- Dumping data for table `newscenter2`
-- 

INSERT INTO `newscenter2` VALUES (00066, '', '»ÃÐà·Èä·Âä´éÃÑºàÅ×Í¡à»ç¹à¨éÒÀÒ¾¨Ñ´¡ÒÃ»ÃÐªØÁ ICTS 2016', '', '<p><font size="1">µÒÁ·Õè È. ¹¾. ÇÊÑ¹µì ÊØàÁ¸¡ØÅ ¹ÒÂ¡ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â ä´éàÊ¹ÍãËé¡ÃØ§à·¾ÁËÒ¹¤Ãà»ç¹à¨éÒÀÒ¾ã¹¡ÒÃ»ÃÐªØÁ International Congress of The Transplantation Society&nbsp;(ICTS) ã¹»Õ ¤.È. 2016 â´Â¹ÓàÊ¹Í Bid proposal ãËé¡Ñº¡ÃÃÁ¡ÒÃ¢Í§ TTS ã¹¡ÒÃ»ÃÐªØÁ European Society of Organ Transplantation ·Õè¡ÃØ§»ÒÃÕÊ »ÃÐà·È½ÃÑè§àÈÊ àÁ×èÍ»Õ ¾.È. 2552 â´Â»ÃÐà·Èä·Âä´éÃÑº¡ÒÃ¤Ñ´àÅ×Í¡¨Ò¡¡ÃÃÁ¡ÒÃã¹ÃÍºáÃ¡&nbsp; áÅÐä´éª¹Ð¡ÒÃ vote ¨Ò¡ÊÁÒªÔ¡¢Í§ TTS ·ÑèÇâÅ¡ã¹ÃÍº¶Ñ´ÁÒ&nbsp; ÅèÒÊØ´¨Ò¡¡ÒÃ»ÃÐªØÁ¢Í§¡ÃÃÁ¡ÒÃºÃÔËÒÃ¢Í§ TTS ·ÕèàÁ×Í§ Vancouver »ÃÐà·Èá¤¹Ò´Òã¹¡ÒÃ»ÃÐªØÁ ICTS 2010&nbsp;&nbsp; President Gerhard Opelz ä´é»ÃÐ¡ÒÈãËéÊÁÒªÔ¡·ÃÒºÇèÒ <strong>¡ÃØ§à·¾ÁËÒ¹¤Ã ä´éÃÑºàÅ×Í¡à»ç¹à¨éÒÀÒ¾¨Ñ´§Ò¹ ICTS 2016</strong>&nbsp;¹Í¡¨Ò¡¹Ñé¹ È.¹¾. ÇÊÑ¹µì ÊØàÁ¸¡ØÅ ÂÑ§ä´éÃÑº¡ÒÃ¤Ñ´àÅ×Í¡ãËéà»ç¹&nbsp;councillor&nbsp;ã¹ÀÙÁÔÀÒ¤àÍà«ÕÂÍÕ¡´éÇÂ&nbsp; ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐÏ ¢Í¢Íº¤Ø³ÊÁÒªÔ¡ÊÁÒ¤ÁÏ ·Ø¡æ·èÒ¹·ÕèÃèÇÁâËÇµã¹¤ÃÑé§¹Õé&nbsp; </font></p>\r\n<p><img height="369" width="600" alt="" src="/pic/Image/ThaiTSTCEB.jpg" /></p>', 's_1282670779.Frontflag.jpg', '1282670779.Frontflag.jpg', '', '', 0, '2010-08-25 00:26:19');
INSERT INTO `newscenter2` VALUES (00068, '', 'Ê»Êª. à¾ÔèÁÊÔ·¸Ô»ÃÐâÂª¹ì¤ÃÍº¤ÅØÁ¡ÒÃ¼èÒµÑ´»ÅÙ¡¶èÒÂµÑºã¹à´ç¡', '', '<p><font size="1">ÇÑ¹·Õè&nbsp;&nbsp; 21 ¡ØÁÀÒ¾Ñ¹¸ì&nbsp;&nbsp; 2554 ·ÕèÊÓ¹Ñ¡§Ò¹ËÅÑ¡»ÃÐ¡Ñ¹ÊØ¢ÀÒ¾áËè§ªÒµÔ(Ê»Êª . )&nbsp;&nbsp; ÈÙ¹ÂìÃÒª¡ÒÃà©ÅÔÁ¾ÃÐà¡ÕÂÃµÔÏ ¶ . á¨é§ÇÑ²¹Ð ¹ÒÂ¨ØÃÔ¹·Ãì ÅÑ¡É³ÇÔÈÔÉ¯ì ÃÑ°Á¹µÃÕÇèÒ¡ÒÃ¡ÃÐ·ÃÇ§ÊÒ¸ÒÃ³ÊØ¢ ã¹°Ò¹Ð»ÃÐ¸Ò¹¡ÃÃÁ¡ÒÃËÅÑ¡»ÃÐ¡Ñ¹ÊØ¢ÀÒ¾áËè§ªÒµÔ á¶Å§¢èÒÇËÅÑ§¡ÒÃ»ÃÐªØÁ¤³Ð¡ÃÃÁ¡ÒÃËÅÑ¡»ÃÐ¡Ñ¹ÊØ¢ÀÒ¾áËè§ªÒµÔ ÇèÒ·Õè»ÃÐªØÁÁÕÁµÔàËç¹ªÍºãËéÁÕ¡ÒÃ¾Ñ²¹ÒÂØ·¸ÈÒÊµÃì¾Ñ²¹ÒËÅÑ¡»ÃÐ¡Ñ¹ÊØ¢ÀÒ¾áËè§ªÒµÔµÒÁá¼¹¾Ñ²¹Ò»Õ ¾ . È . 2555 &ndash; 2559 â´ÂãËé»ÃÐª¹ª¹ä´é¡ÒÃºÃÔ¡ÒÃÊØ¢ÀÒ¾¶éÇ¹Ë¹éÒ â´ÂÁÕÂØ·¸ÈÒÊµÃì 5 ÂØ·¸ÈÒÊµÃì¤×Í 1. àÊÃÔÁÊÃéÒ§¡Åä¡ ¤ÇÒÁà¢éÁá¢ç§áÅÐ¡Åä¡¡ÒÃà¢éÒ¶Ö§¡ÒÃºÃÔ¡ÒÃ´éÒ¹ÊØ¢ÀÒ¾ 2. ¾Ñ²¹Ò¡ÃÐºÇ¹¡ÒÃ·Ó§Ò¹¡Ñ¹ÃèÇÁ¡Ñ¹¡ÑºÀÒ¤Õà¤Ã×Í¢èÒÂÍ§¤ì¡ÃÊØ¢ÀÒ¾ 3. ÊÃéÒ§¤ÇÒÁà¢éÁá¢ç§áÅÐºÃÔ¡ÒÃã¹ÃÐººÊÒ¸ÒÃ³ÊØ¢´éÒ¹»°ÁÀÙÁÔ&nbsp;&nbsp; 4. Ë¹Ø¹ÃÐºº»ÃÐ¡Ñ¹ÊØ¢ÀÒ¾·Ø¡ÃÐººãËéÊÍ´¤ÅéÍ§¡Ñ¹ÁÕÊÔ·¸Ô»ÃÐâÂª¹ì¢Ñé¹¾×é¹°Ò¹&nbsp;&nbsp; 5. àÊÃÔÁÊÃéÒ§áÅÐ¾Ñ²¹Ò¸ÃÃÁÁÒÀÔºÒÅ´éÒ¹¡ÒÃ»ÃÐ¡Ñ¹ÊØ¢ÀÒ¾</font></p>\r\n<p><font size="1">ÃÑ°Á¹µÃÕÇèÒ¡ÒÃ¡ÃÐ·ÃÇ§ÊÒ¸ÒÃ³ÊØ¢ ¡ÅèÒÇÍÕ¡ÇèÒ ¹Í¡¨Ò¡¹ÕéÁµÔ·Õè»ÃÐªØÁ¤³Ð¡ÃÃÁ¡ÒÃËÅÑ¡»ÃÐ¡Ñ¹ÊØ¢ÀÒ¾áËè§ªÒµÔ <strong><font style="BACKGROUND-COLOR: #00ffff" color="#0000ff">àËç¹ªÍº¡ÒÃà¾ÔèÁÊÔ·¸Ô»ÃÐâÂª¹ì¡ÒÃ¼èÒµÑ´»ÅÙ¡¶èÒÂµÑºã¹à´ç¡ÍÒÂØ äÁèà¡Ô¹ 18 »Õ ÊÓËÃÑº¼Ùé»èÇÂà´ç¡·Õèà»ç¹âÃ¤·èÍ¹éÓ´ÕµÕºµÑ¹áµèµé¹¡Óà¹Ô´ ·Õè·ÓãËéà¡Ô´ÀÒÇÐµÑºÇÒÂ â´ÂÁÕ¼ÅµÑé§áµèÇÑ¹·Õè 1 µØÅÒ¤Á ¾ . È . 2554 ¹Õéà»ç¹µé¹ä»</font></strong> «Öè§¼Ùé»èÇÂà´ç¡·Õèà»ç¹âÃ¤·èÍ¹éÓ´ÕµÕºµÑ¹áµè¡Óà¹Ô´ ÁÕÍØºÑµÔ¡ÒÃ³ì»ÃÐÁÒ³ 1 ã¹ 15,000 ¢Í§·ÒÃ¡¤ÅÍ´ªÕÇÔµ ( 0.007% ) áÅÐ¨Ò¡¡ÒÃ»ÃÐÁÒ³¡ÒÃ¾ºÇèÒÁÕà´ç¡áÃ¡à¡Ô´ã¹»ÃÐà·Èä·ÂÃÒÇ 60-80 ÃÒÂ µèÍ»Õ·Õè»èÇÂà»ç¹âÃ¤µÕºµÑ¹µÑé§áµè¡Óà¹Ô´ ã¹¨Ó¹Ç¹¹ÕéÃéÍÂÅÐ 50 ÁÕ¤ÇÒÁ¨Óà»ç¹µéÍ§ä´éÃÑº¡ÒÃ¼èÒµÑ´»ÅÙ¡¶èÒÂµÑº â´Â¡ÒÃ¼èÒµÑ´áµèÅÐÃÒÂÁÕ¤èÒãªéãªé¨èÒÂ»ÃÐÁÒ³ ÃÒÂÅÐ 1 ÅéÒ¹ºÒ· áÅÐ ¤èÒÂÒ·ÕèµéÍ§ãªéËÅÑ§¡ÒÃ¼èÒµÑ´ 1.4 áÊ¹ºÒ· µèÍ¤¹µèÍ»Õ&nbsp;&nbsp; »Ñ¨¨ØºÑ¹ÁÕâÃ§¾ÂÒºÒÅÃÐ´ÑºµµÔÂÀÙÁÔ 4 áËè§ ·ÕèÊÒÁÒÃ¶ãËéºÃÔ¡ÒÃ¼èÒµÑ´»ÅÙ¡¶èÒÂµÑºã¹à´ç¡ä´éÃÇÁ»ÃÐÁÒ³ 40 ÃÒÂ µèÍ»Õ ä´éá¡è <font style="BACKGROUND-COLOR: #ffff99" color="#800000"><strong>âÃ§¾ÂÒºÒÅ¨ØÌÒÅ§¡Ã³ì, âÃ§¾ÂÒºÒÅÃÒÁÒ¸Ôº´Õ, âÃ§¾ÂÒºÒÅÁËÒÃÒª¹¤ÃàªÕÂ§ãËÁèáÅÐâÃ§¾ÂÒºÒÅÈÔÃÔÃÒª</strong></font></font></p>\r\n<p><font style="BACKGROUND-COLOR: #ffffff" color="#000000" size="1"><strong>ÍèÒ¹ÃÒÂÅÐàÍÕÂ´à¾ÔèÁàµÔÁ:</strong> <a href="http://www.mcot.net/cfcustom/cache_page/172410.html">MCOT</a>, <a href="http://www.bangkokbiznews.com/home/detail/politics/life/20110221/378271/ºÑµÃ·Í§à¾ÔèÁ»ÃÐâÂª¹ìà»ÅÕèÂ¹¶èÒÂµÑºã¹à´ç¡ÍÒÂØµèÓ¡ÇèÒ-18-»Õ.html">¡ÃØ§à·¾¸ØÃ¡Ô¨</a></font></p>', 's_1299517778.LVRTX.jpg', '1299517778.LVRTX.jpg', '', '', 0, '2011-03-08 00:09:38');
INSERT INTO `newscenter2` VALUES (00069, '', 'Ê»Êª. à¾ÔèÁÊÔ·¸Ô»ÃÐâÂª¹ì¤ÃÍº¤ÅØÁ¡ÒÃ¼èÒµÑ´à»ÅÕèÂ¹ËÑÇã¨', '', '<font size="1">àÁ×èÍÇÑ¹·Õè 14 ÁÕ¹Ò¤Á 2554&nbsp; ¹ÒÂ¨ØÃÔ¹·Ãì ÅÑ¡É³ÇÔÈÔÉ¯ì ÃÑ°Á¹µÃÕÇèÒ¡ÒÃ¡ÃÐ·ÃÇ§ÊÒ¸ÒÃ³ÊØ¢ ã¹°Ò¹Ð»ÃÐ¸Ò¹¡ÃÃÁ¡ÒÃËÅÑ¡»ÃÐ¡Ñ¹ÊØ¢ÀÒ¾áËè§ªÒµÔ à»ç¹»ÃÐ¸Ò¹¡ÒÃ»ÃÐªØÁ¤³Ð¡ÃÃÁ¡ÒÃËÅÑ¡»ÃÐ¡Ñ¹ÊØ¢ÀÒ¾áËè§ªÒµÔ ¡ÅèÒÇÇèÒ <strong><font style="BACKGROUND-COLOR: #ff0000" color="#ffffff"><font style="BACKGROUND-COLOR: #000080">·Õè»ÃÐªØÁºÍÃì´ Ê»Êª.ÁÕÁµÔà¾ÔèÁÊÔ·¸Ô»ÃÐâÂª¹ì¡ÒÃ»ÅÙ¡¶èÒÂËÑÇã¨ à¾×èÍªèÇÂàËÅ×Í¼Ùé»èÇÂãËéäÁèµéÍ§áº¡ÀÒÃÐ¤èÒãªé¨èÒÂ¨Ó¹Ç¹ÁÒ¡ </font></font></strong>â´ÂãËé§º»ÃÐÁÒ³¡ÇèÒ 300 ÅéÒ¹ºÒ· ãËéá¡è 3 âÃ§¾ÂÒºÒÅ·ÕèÁÕÈÑ¡ÂÀÒ¾ã¹¡ÒÃ»ÅÙ¡¶èÒÂËÑÇã¨ ä´éá¡è&nbsp; Ã¾.¨ØÌÒÅ§¡Ã³ì Ã¾.ÈÔÃÔÃÒª áÅÐÊ¶ÒºÑ¹âÃ¤·ÃÇ§Í¡ «Öè§à»ç¹âÃ§¾ÂÒºÒÅ¢¹Ò´ãË­è ÃÑºÊè§µèÍ¼Ùé»èÇÂ¨Ò¡·ÑèÇ»ÃÐà·È<br />\r\n<br />\r\n·Ñé§¹Õé ¡ÒÃ¼èÒµÑ´»ÅÙ¡¶èÒÂËÑÇã¨ ËÅÑ§¡ÒÃ¼èÒµÑ´¼Ùé»èÇÂµéÍ§ÃÑº»ÃÐ·Ò¹ÂÒÍÂèÒ§µèÍà¹×èÍ§ áÅÐµÔ´µÒÁÍÒ¡ÒÃ ËÒ¡ÁÕÍÒÂØà©ÅÕèÂËÅÑ§¡ÒÃ¼èÒµÑ´ÁÒ¡¡ÇèÒ 10 »Õ µéÍ§àÊÕÂ¤èÒãªé¨èÒÂµ¡ÃÒÂÅÐ 2.4 ÅéÒ¹ºÒ· áÅÐ¡ÒÃ¹ÓÃÐºº¡ÒÃ»ÅÙ¡¶èÒÂËÑÇã¨ÁÒãªéÂÑ§ªèÇÂàÃ×èÍ§¢Í§ÃÐºº¡ÒÃÃÑººÃÔ¨Ò¤ÍÇÑÂÇÐ·Ó§Ò¹à»ç¹ÃÐººáÅÐà¡Ô´¤ÇÒÁà¢éÁá¢ç§ àªè¹à´ÕÂÇ¡Ñº¡ÒÃÃÑººÃÔ¨Ò¤áÅÐ»ÅÙ¡¶èÒÂäµ. ¢éÍÁÙÅ¨Ò¡ <a href="http://www.mcot.net/cfcustom/cache_page/181564.html"><strong>ÊÓ¹Ñ¡¢èÒÇä·Â</strong></a></font>', 's_1300213827.ACVSTX.jpg', '1300213827.ACVSTX.jpg', '', '', 0, '2011-03-16 01:30:27');
INSERT INTO `newscenter2` VALUES (00070, '', '¡ÃÁºÑ­ªÕ¡ÅÒ§ (ÊÇÑÊ´Ô¡ÒÃ¢éÒÃÒª¡ÒÃ) ¢ÂÒÂÊÔ·¸Ô»ÃÐâÂª¹ìã¹¡ÒÃ»ÅÙ¡¶èÒÂäµ', '', '<p><font size="1">¡ÃÁºÑ­ªÕ¡ÅÒ§ ä´éà¾ÔèÁÊÔ·¸Ô»ÃÐâÂª¹ìã¹¡ÒÃ»ÅÙ¡¶èÒÂäµ â´Â¤ØéÁ¤ÃÍ§¤èÒ¡ÒÃàµÃÕÂÁ¼ÙéºÃÔ¨Ò¤äµÁÕªÕÇÔµ áÅÐ¤èÒ¼èÒµÑ´ÊÓËÃÑº¼ÙéºÃÔ¨Ò¤äµ µÒÁËÅÑ¡à¡³±ìáÅÐÍÑµÃÒ¤èÒÃÑ¡ÉÒ¾ÂÒºÒÅ¡ÒÃºÓºÑ´·´á·¹äµ´éÇÂÇÔ¸Õ»ÅÙ¡¶èÒÂäµ¨Ò¡¼ÙéºÃÔ¨Ò¤äµ·ÕèÁÕªÕÇÔµ Ç 355 ÅÇ 30 ¡.Â. 54&nbsp; â´ÂËÅÑ¡à¡³±ì¹Õé¨Ð¢ÂÒÂ¡ÒÃª´àªÂ¡ÒÃãªéÂÒà¾ÔèÁàµÔÁã¹¡Ã³Õ·Õè¼Ùé»èÇÂÁÕ»¯Ô¡ÃÔÂÒÊÅÑ´äµ â´ÂàÃÔèÁ¢ÂÒÂÊÔ·¸Ôì´Ñ§¡ÅèÒÇµÑé§áµèÇÑ¹·Õè 1 Á.¤. 2555 à»ç¹µé¹ä» </font></p>\r\n<p><font size="1">ÍéÒ§ÍÔ§¨Ò¡ <font face="Arial"><a href="http://www.cgd.go.th/wps/portal/CGDInfo/MedicalWelfare/InterestingFacts">http://www.cgd.go.th/wps/portal/CGDInfo/MedicalWelfare/InterestingFacts</a>#</font></font></p>\r\n<p><font size="1"><a href="/pic/File/KIDney_CS.pdf">Download àÍ¡ÊÒÃ</a></font></p>', 's_1318438355.CSMBS.jpg', '1318438355.CSMBS.jpg', '', '', 0, '2011-10-12 23:52:35');
INSERT INTO `newscenter2` VALUES (00071, '', 'ÊÓ¹Ñ¡§Ò¹»ÃÐ¡Ñ¹ÊÑ§¤Á¢ÂÒÂÊÔ·¸Ô»ÃÐâÂª¹ìÊÓËÃÑº¼Ùé»èÇÂäµÇÒÂáÅÐ¼Ùé»èÇÂ»ÅÙ¡¶èÒÂäµ', '', '<p><font size="1">ÊÓ¹Ñ¡§Ò¹»ÃÐ¡Ñ¹ÊÑ§¤Áä´éÍÍ¡»ÃÐ¡ÒÈ¡ÃÃÁ¡ÒÃá¾·Âìã¹¡ÒÃãËéÊÔ·¸Ôì»ÃÐâÂª¹ìá¡è¼Ùé»èÇÂäµÇÒÂàÃ×éÍÃÑ§ÃÐÂÐÊØ´·éÒÂ¡èÍ¹à¢éÒ·Ó§Ò¹áÅÐãËéÊÔ·¸Ôì»ÃÐâÂª¹ìà¾ÔèÁàµÔÁã¹¡ÒÃ»ÅÙ¡¶èÒÂäµà¾×èÍãËé¼Ùé»ÃÐ¡Ñ¹µ¹ä´éÃÑº¡ÒÃÃÑ¡ÉÒ¾ÂÒºÒÅ·ÑèÇ¶Ö§áÅÐà¢éÒ¶Ö§¡ÒÃãªéÂÒ·ÕèÁÕÃÒ¤ÒÊÙ§ä´éµÒÁ¤ÇÒÁ¨Óà»ç¹ã¹¡ÒÃÃÑ¡ÉÒ¾ÂÒºÒÅ</font></p>\r\n<p><font size="1">ÍéÒ§ÍÔ§¨Ò¡ <font face="Arial"><a href="http://www.sso.go.th/wpr/uploads/uploadImages/file/tai090954.pdf">http://www.sso.go.th/wpr/uploads/uploadImages/file/tai090954.pdf</a></font></font></p>\r\n<p>&nbsp;</p>', 's_1318439086.SSSO.jpg', '1318439086.SSSO.jpg', '', '', 0, '2011-10-13 00:04:46');
INSERT INTO `newscenter2` VALUES (00077, '', 'àªÔ­ÃèÇÁ»ÃÐªØÁÇÔªÒ¡ÒÃ»ÃÐ¨Ó»Õ Organs for Life', '', '<p><font size="2">ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â ¢ÍàªÔ­á¾·Âì-¾ÂÒºÒÅáÅÐÊÁÒªÔ¡ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â à¢éÒÃèÇÁ»ÃÐªØÁÇÔªÒ¡ÒÃ»ÃÐ¨Ó»Õ&nbsp;&quot;Organs for life&quot;&nbsp;&nbsp;ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·ÂÇÑ¹¾ÄËÑÊº´Õ-<span>ÈØ¡Ãì·Õè&nbsp;15-16 ÁÕ¹Ò¤Á 2555 </span>³ ËéÍ§»ÃÐªØÁ ºØË§Ò âÃ§áÃÁâ¡Åà´é¹ ·ÔÇÅÔ» «Í¿à¿ÍÃÔ¹ ¶.¾ÃÐÃÒÁà¡éÒ&nbsp;¡ÃØ§à·¾Ï</font></p>\r\n<p><font size="2"><a href="/pic/File/Agenda2012 Update.doc">Download ¡ÓË¹´¡ÒÃ»ÃÐªØÁ</a></font></p>', 's_1329320317.Logo1.jpg', '1329320317.Logo1.jpg', '', '', 0, '2012-02-15 22:38:37');
INSERT INTO `newscenter2` VALUES (00075, '', 'UPDATE: »ÃÐ¡ÒÈ¡ÒÃª´àªÂ¤èÒÃÑ¡ÉÒ¾ÂÒºÒÅ¨Ò¡ÊÓ¹Ñ¡§Ò¹»ÃÐ¡Ñ¹ÊÑ§¤Á ', '', '<p><font size="2">ÊÓ¹Ñ¡§Ò¹»ÃÐ¡Ñ¹ÊÑ§¤Á ä´éÍÍ¡»ÃÐ¡ÒÈâ´Â¤³Ð¡ÃÃÁ¡ÒÃá¾·Âì ÊÓ¹Ñ¡§Ò¹»ÃÐ¡Ñ¹ÊÑ§¤ÁàÁ×èÍÇÑ¹·Õè 16 ¸Ñ¹ÇÒ¤Á 2554 à¡ÕèÂÇ¡Ñº»ÃÐ¡ÒÈ áÅÐá¹Ç»¯ÔºÑµÔÊÓËÃÑº¡ÒÃª´àªÂ¡ÒÃºÓºÑ´·´á·¹äµáÅÐÂÒàºÔ¡ÂÒ Erythropoietin â´Â¤ÃÍº¤ÅØÁµÑé§áµè 1 Ê.¤.-31 ¸.¤. 2554</font></p>\r\n<p><a href="http://www.transplantthai.org/pic/File/SSSFlood.pdf"><font size="2">Download àÍ¡ÊÒÃ»ÃÐ¡ÒÈ¨Ò¡¤³Ð¡ÃÃÁ¡ÒÃá¾·Âìã¹ÀÒÇÐÍØ·¡ÀÑÂ</font></a></p>\r\n<p><a href="/pic/File/SSSGuide.pdf"><font size="2">Download àÍ¡ÊÒÃ»ÃÐ¡ÒÈá¹Ç»¯ÔºÑµÔã¹ÀÒÇÐÍØ·¡ÀÑÂ</font></a></p>\r\n<p><font size="2">&nbsp;</font></p>', 's_1324301192.SSO.jpg', '1324301192.SSO.jpg', '', '', 0, '2011-12-19 20:26:32');
INSERT INTO `newscenter2` VALUES (00078, '', 'á¹Ð¹Ó¡ÒÃàÅ×Í¡µÑé§¡ÃÃÁ¡ÒÃºÃÔËÒÃ The Transplantation Society (µèÒ§»ÃÐà·È)', '', '<font size="2">µÒÁ·ÕèÊÁÒ¤ÁÏ ä´é´Óà¹Ô¹¡ÒÃµèÍÍÒÂØ ¡ÒÃà»ç¹ÊÁÒªÔ¡<span>&nbsp; </span>The Transplantation<span>&nbsp; </span>Society <span style="LINE-HEIGHT: 115%; FONT-FAMILY: ''sans-serif''; FONT-SIZE: 14pt" lang="TH"><font size="2">ÊÓËÃÑº»Õ</font> </span>2012 </font><span style="LINE-HEIGHT: 115%; FONT-FAMILY: ''sans-serif''; FONT-SIZE: 14pt" lang="TH"><font size="2">ÊÓËÃÑºÊÁÒªÔ¡·ÕèáÊ´§¤ÇÒÁ¨Ó¹§ÁÒ·ÕèÊÁÒ¤ÁáÅéÇ</font><font size="2"> </font><font size="2"><span style="LINE-HEIGHT: 115%; FONT-FAMILY: ''sans-serif''; FONT-SIZE: 14pt" lang="TH"><font size="2">·Ñé§¹Õé¢ÍàÃÕÂ¹ÇèÒÊÁÒªÔ¡·Ø¡·èÒ¹ ÁÕÊÔ·¸Ô àÅ×Í¡µÑé§</font> </span>President Elect, Secretary, Treasurer<span>&nbsp; </span><span style="LINE-HEIGHT: 115%; FONT-FAMILY: ''sans-serif''; FONT-SIZE: 14pt" lang="TH"><font size="2">áÅÐ</font> </span>Councilors <span style="LINE-HEIGHT: 115%; FONT-FAMILY: ''sans-serif''; FONT-SIZE: 14pt" lang="TH"><font size="2">¢Í§</font> </span>The Transplantation Society <span style="LINE-HEIGHT: 115%; FONT-FAMILY: ''sans-serif''; FONT-SIZE: 14pt" lang="TH"><font size="2">ÇÒÃÐ</font> </span>2012-2016 <span style="LINE-HEIGHT: 115%; FONT-FAMILY: ''sans-serif''; FONT-SIZE: 14pt" lang="TH"><span>&nbsp;</span><font size="2">â´Â ÃÐºº </font></span><strong>e ballot</strong> </font><font size="2"><span style="LINE-HEIGHT: 115%; FONT-FAMILY: ''sans-serif''; FONT-SIZE: 14pt" lang="TH"><span>&nbsp;</span><font size="2">â´ÂÊÒÁÒÃ¶´Óà¹Ô¹¡ÒÃ´Ñ§¹Õé </font></span></font>\r\n<p style="MARGIN: 0cm 0cm 0pt 36pt" class="yiv187419033MsoListParagraphCxSpFirst"><font size="2"><span><span>1.<span style="FONT: 7pt ''Times New Roman''"><font face="Arial">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="2"> </font></font></span></span></span><span style="LINE-HEIGHT: 115%; FONT-FAMILY: ''sans-serif''; FONT-SIZE: 14pt" lang="TH"><font size="2">à¢éÒÊÙè</font><span>&nbsp; </span></span>website </font><a rel="nofollow" target="_blank" href="http://www.tts.org/"><span id="lw_1335886416_0" class="yshortcuts"><font size="2">www.tts.org</font></span></a></p>\r\n<p style="MARGIN: 0cm 0cm 0pt 36pt" class="yiv187419033MsoListParagraphCxSpMiddle"><font size="2"><span><span>2.<span style="FONT: 7pt ''Times New Roman''"><font face="Arial">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font></span></span></span>Click </font><span style="LINE-HEIGHT: 115%; FONT-FAMILY: ''sans-serif''; FONT-SIZE: 14pt" lang="TH"><font size="2">·Õè</font><font size="2"> </font></span>icon e ballot </p>\r\n<p style="MARGIN: 0cm 0cm 0pt 36pt" class="yiv187419033MsoListParagraphCxSpMiddle"><font size="2"><span><span>3.<span style="FONT: 7pt ''Times New Roman''"><font face="Arial">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font></span></span></span>Log in <span style="LINE-HEIGHT: 115%; FONT-FAMILY: ''sans-serif''; FONT-SIZE: 14pt" lang="TH"><font size="2">à¢éÒÊÙèºÑ­ªÕ ÊèÇ¹µÑÇ<span>&nbsp; </span>â´Âãªé</font> </span>user name <span style="LINE-HEIGHT: 115%; FONT-FAMILY: ''sans-serif''; FONT-SIZE: 14pt" lang="TH" _yuid="yui_3_1_1_2_1335886085510105"><font size="2">¤×Í</font> </span>e mail address <span style="LINE-HEIGHT: 115%; FONT-FAMILY: ''sans-serif''; FONT-SIZE: 14pt" lang="TH"><font size="2">¢Í§·èÒ¹àÍ§<span>&nbsp; </span>áÅÐ&nbsp;&nbsp;</font>&nbsp;</span>&nbsp;&nbsp; password </font></p>\r\n<p style="MARGIN: 0cm 0cm 0pt 36pt" class="yiv187419033MsoListParagraphCxSpMiddle"><font size="2"><span><span>4.<span style="FONT: 7pt ''Times New Roman''"><font face="Arial">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font></span></span></span>Click continue </font></p>\r\n<p style="MARGIN: 0cm 0cm 0pt 36pt" class="yiv187419033MsoListParagraphCxSpMiddle"><font size="2"><span><span>5.<span style="FONT: 7pt ''Times New Roman''"><font face="Arial">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font></span></span></span><span style="LINE-HEIGHT: 115%; FONT-FAMILY: ''sans-serif''; FONT-SIZE: 14pt" lang="TH"><font size="2">´Óà¹Ô¹¡ÒÃàÅ×Í¡ ¼Ùé·Õè·èÒ¹µéÍ§¡ÒÃãËéà»ç¹¡ÃÃÁ¡ÒÃºÃÔËÒÃ¢Í§</font> </span>TTS</font></p>\r\n<p style="MARGIN: 0cm 0cm 0pt 36pt" class="yiv187419033MsoListParagraphCxSpMiddle"><font size="2"></font></p>\r\n<p style="MARGIN: 0cm 0cm 0pt 36pt" class="yiv187419033MsoListParagraphCxSpMiddle"><font size="2"><a href="/pic/File/Letter.pdf">Download àÍ¡ÊÒÃá¹Ð¹Ó¡ÒÃàÅ×Í¡µÑé§¡ÃÃÁ¡ÒÃºÃÔËÒÃ¢Í§ TTS</a></font></p>\r\n<p style="MARGIN: 0cm 0cm 0pt 36pt" class="yiv187419033MsoListParagraphCxSpMiddle"><font size="2"></font></p>\r\n<p style="MARGIN: 0cm 0cm 0pt 36pt" class="yiv187419033MsoListParagraphCxSpMiddle"><img width="400" height="455" alt="" src="/pic/Image/Copy1.jpg" /></p>\r\n</span>', 's_1335887263.Picture1.jpg', '1335887263.Picture1.jpg', '', '', 0, '2012-05-01 22:47:43');
INSERT INTO `newscenter2` VALUES (00080, '', '¢ÍàªÔ­ÊÁÒªÔ¡µÔ´µÒÁ¢èÒÇÊÒÃ Update ·Ò§ Facebook', '', '<p>¢ÍàªÔ­ÊÁÒªÔ¡ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â µÔ´µÒÁ¢èÒÇÊÒÃ update áÅÐ¡Ô¨¡ÃÃÁ¢Í§ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â·Ò§ facebook:&nbsp; <a href="http://www.facebook.com/transplantthai">www.facebook.com/transplantthai</a></p>\r\n<p>&nbsp;</p>', 's_1348160193.FaceBK.jpg', '1348160193.FaceBK.jpg', '', '', 0, '2012-09-20 23:56:33');
INSERT INTO `newscenter2` VALUES (00084, '', 'â¤Ã§¡ÒÃÃ³Ã§¤ì¡ÒÃÃÑºÃÙé¡ÒÃºÃÔ¨Ò¤ÍÇÑÂÇÐ', '', '<p><font size="3" face="Courier New">&nbsp; </font><span style="FONT-FAMILY: ''Cordia New'',''sans-serif''; BACKGROUND: white; COLOR: #48423f; FONT-SIZE: 14pt; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi" lang="TH">¹ÒÂá¾·ÂìªÒ­ÇÔ·Âì ·ÃÐà·¾ ÃÍ§»ÅÑ´¡ÃÐ·ÃÇ§ÊÒ¸ÒÃ³ÊØ¢ à»ç¹»ÃÐ¸Ò¹à»Ô´ </span><span style="FONT-FAMILY: ''Cordia New'',''sans-serif''; BACKGROUND: white; COLOR: #48423f; FONT-SIZE: 14pt; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi">&ldquo;<span lang="TH">â¤Ã§¡ÒÃÃ³Ã§¤ì¡ÒÃÃÑºÃÙé¡ÒÃºÃÔ¨Ò¤ÍÇÑÂÇÐ</span>&rdquo; <span lang="TH">«Öè§¡ÃÐ·ÃÇ§ÊÒ¸ÒÃ³ÊØ¢ÃèÇÁ¡ÑºÀÒ¤Õà¤Ã×Í¢èÒÂ »ÃÐ¡Íº´éÇÂ</span></span><span style="FONT-FAMILY: ''Cordia New'',''sans-serif''; FONT-SIZE: 14pt" lang="TH">¡ÃÐ·ÃÇ§ÊÒ¸ÒÃ³ÊØ¢ <span style="mso-spacerun: yes">&nbsp;</span>ÈÙ¹ÂìÃÑººÃÔ¨Ò¤ÍÇÑÂÇÐÊÀÒ¡ÒªÒ´ä·Â<span style="mso-spacerun: yes">&nbsp; </span>ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â ÊÓ¹Ñ¡§Ò¹ËÅÑ¡»ÃÐ¡Ñ¹ÊØ¢ÀÒ¾áËè§ªÒµÔ ÁÙÅ¹Ô¸ÔâÃ¤äµáËè§»ÃÐà·Èä·Â<span style="mso-spacerun: yes">&nbsp; </span>á¾·ÂÊÀÒ</span><span style="FONT-FAMILY: ''Cordia New'',''sans-serif''; BACKGROUND: white; COLOR: #48423f; FONT-SIZE: 14pt; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi" lang="TH">¨Ñ´¢Öé¹ à¾×èÍÊÃéÒ§¤ÇÒÁÃÙé¤ÇÒÁà¢éÒã¨·Õè¶Ù¡µéÍ§à¡ÕèÂÇ¡Ñº¡ÒÃºÃÔ¨Ò¤ÍÇÑÂÇÐ â´Â¨Ñ´áÊ´§»ÃÐµÔÁÒ¡ÃÃÁÅÍÂµÑÇ¡Öè§¶ÒÇÃÃÙ»äµáÅÐËÑÇã¨·Õè·Ó¨Ò¡¢Õé¼Öé§«Öè§¨Ð ËÅÍÁÅÐÅÒÂä»àÃ×èÍÂæ à¾×èÍàµ×Í¹ã¨ÇèÒÍÂèÒ»ÅèÍÂãËéÍÇÑÂÇÐÊÙ­à»ÅèÒä»â´ÂäÃé»ÃÐâÂª¹ì ¾ÃéÍÁ·Ñé§¨Ñ´¹Ô·ÃÃÈ¡ÒÃãËé¤ÇÒÁÃÙéà¡ÕèÂÇ¡Ñº¡ÒÃºÃÔ¨Ò¤ÍÇÑÂÇÐ áÅÐà»Ô´ÃÑººÃÔ¨Ò¤â´ÂÈÙ¹ÂìºÃÔ¨Ò¤ÍÇÑÂÇÐÊÀÒ¡ÒªÒ´ä·Â â´ÂÁÕ¹Ñ¡áÊ´§ª×èÍ´Ñ§ÁÒÃèÇÁ§Ò¹áÅÐÃèÇÁºÃÔ¨Ò¤ÍÇÑÂÇÐ ÍÒ·Ô á¾¹à¤é¡</span><span style="FONT-FAMILY: ''Cordia New'',''sans-serif''; BACKGROUND: white; COLOR: #48423f; FONT-SIZE: 14pt; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi">&ndash;<span lang="TH">à¢Á¹Ô¨ ¨ÒÁÔ¡Ã³ìáÅÐàµÔéÅ</span>&ndash;<span lang="TH">¸¹¾Å¹ÔèÁ·ÑÂÊØ¢«Öè§â¤Ã§¡ÒÃ´Ñ§¡ÅèÒÇ¨Ð¨Ñ´µèÍà¹×èÍ§¶Ö§ÇÑ¹ ·Õè </span>11 <span lang="TH">µØÅÒ¤Á¹Õé ·ÕèÅÒ¹Ë¹éÒàÍçÁºÕà¤ à«ç¹àµÍÃì(¢éÒ§âÃ§áÃÁ»·ØÁÇÑ¹ »ÃÔê¹à«Ê) áÅÐÅÒ¹ÇÔ¤µÍÃÕè ¾ÍÂ·ì Í¹ØÊÒÇÃÕÂìªÑÂÊÁÃÀÙÁÔ</span></span></p>\r\n<p><span style="FONT-FAMILY: ''Cordia New'',''sans-serif''; BACKGROUND: white; COLOR: #48423f; FONT-SIZE: 14pt; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi"><span lang="TH"><img alt="" width="270" height="203" src="/pic/Image/IMG_0161-300x200(2).jpg" />&nbsp; <img alt="" width="270" height="203" src="/pic/Image/629228609698(5).jpg" /><img style="WIDTH: 268px; HEIGHT: 212px" alt="" width="300" height="200" src="/pic/Image/IMG_0068-300x200(1).jpg" /><img style="WIDTH: 280px; HEIGHT: 212px" width="300" height="200" alt="" src="/pic/Image/IMG_0047.jpg" /></span></span></p>\r\n<p><img style="WIDTH: 269px; HEIGHT: 360px" alt="" width="270" height="360" src="/pic/Image/629229271261(2).jpg" />&nbsp; <img style="WIDTH: 275px; HEIGHT: 358px" alt="" width="270" height="360" src="/pic/Image/629230638782(2).jpg" /></p>\r\n<p align="justify">&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 's_1381824949.629228609698.jpg', '1381824949.629228609698.jpg', '', '', 0, '2013-10-15 15:15:49');
INSERT INTO `newscenter2` VALUES (00085, '', '¡ÒÃ¨Ñ´»ÃÐªØÁ World Transplant Congress 2014', '', '<p>¨ÐÁÕ¡ÒÃ¨Ñ´»ÃÐªØÁ World Transplant Congress ³ Moscone West Convention Center San Francisco July 26&ndash;31, 2014 ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â ¢ÍàªÔ­ªÇ¹ÊÁÒªÔ¡ Êè§ Abstract à¾×èÍ¹ÓàÊ¹Í¼Å§Ò¹ÇÔªÒ¡ÒÃä´é ·Õè www.wtc2014.org/abstracts Abstract submission deadline: January 10,2014, 11:59 PM ET </p>\r\n<p><img alt="" width="558" height="200" src="/pic/Image/header_1(6).jpg" /></p>', 's_1381825219.header_1.jpg', '1381825219.header_1.jpg', '', '', 0, '2013-10-15 15:20:20');

-- --------------------------------------------------------

-- 
-- Table structure for table `newscenter3`
-- 

CREATE TABLE `newscenter3` (
  `news_id` int(5) unsigned zerofill NOT NULL auto_increment,
  `title_eng` varchar(250) NOT NULL default '',
  `title_th` varchar(250) NOT NULL default '',
  `details_eng` text NOT NULL,
  `details_th` text NOT NULL,
  `pic_s` varchar(100) NOT NULL default '',
  `pic_b` varchar(100) NOT NULL default '',
  `file_name` varchar(255) NOT NULL,
  `file_down` varchar(255) NOT NULL,
  `view` int(5) NOT NULL default '0',
  `ddpost` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`news_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=93 ;

-- 
-- Dumping data for table `newscenter3`
-- 

INSERT INTO `newscenter3` VALUES (00058, '', '¢ÍàªÔ­ÊÁÑ¤Ãà»ç¹ÊÁÒªÔ¡ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â', '', '<p><font size="1"><font color="#000000">¢ÍàªÔ­á¾·Âì ¾ÂÒºÒÅ áÅÐºØ¤ÅÒ¡Ã·Ò§¡ÒÃá¾·Âì ÊÁÑ¤Ãà¢éÒà»ç¹ÊÁÒªÔ¡ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â µÒÁáºº¿ÍÃìÁ¡ÒÃÊÁÑ¤Ã&nbsp; â´Â</font>ÊÁÒªÔ¡ÊÁÒ¤Á¨Ðä´éÃÑº¢éÍÁÙÅ ¢èÒÇÊÒÃ áÅÐÊÔ·¸Ôì»ÃÐâÂª¹ìã¹¡ÒÃÅ§·ÐàºÕÂ¹»ÃÐªØÁÇÔªÒ¡ÒÃ·ÕèÊÁÒ¤ÁÏ ä´é¨Ñ´¢Öé¹</font></p>\r\n<p><font size="1"><a href="/pic/File/Member_rigister.doc">Download áºº¿ÍÃìÁÊÁÑ¤ÃÊÁÒªÔ¡</a></font></p>\r\n<div align="left"><font size="1">¡ÃÍ¡àÍ¡ÊÒÃáÅÐÊè§ÁÒÂÑ§&nbsp;<span>&nbsp;&nbsp;<br />\r\n</span></font></div>\r\n<div align="left"><span><font size="1">ÊÓ¹Ñ¡§Ò¹ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â</font></span></div>\r\n<div align="left"><font size="1">ÍÒ¤ÒÃà©ÅÔÁ¾ÃÐºÒÃÁÕ õð »Õ&nbsp;ªÑé¹&nbsp;4<span>&nbsp;&nbsp;&nbsp;&nbsp; «ÍÂÈÙ¹ÂìÇÔ¨ÑÂ<span>&nbsp;&nbsp; ¶¹¹à¾ªÃºØÃÕµÑ´ãËÁè&nbsp;&nbsp; ºÒ§¡Ð»Ô&nbsp;ËéÇÂ¢ÇÒ§&nbsp;&nbsp; ¡·Á</span>.&nbsp;10310</span></font></div>\r\n<div align="left"><font size="1">â·ÃÈÑ¾·ì<span>&nbsp;&nbsp; </span>02-7166181&nbsp;, 02-7166184 <span>, 02-7166661-4&nbsp;µèÍ&nbsp;4001&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; â·ÃÊÒÃ.&nbsp;02-7166183</span></font></div>\r\n<div align="left"><font size="1">E-Mail: </font><a href="mailto:webmaster@thai-transplant.org"><font size="1">webmaster@thai-transplant.org</font></a></div>', 's_1255587382.ThaiTS.jpg', '1255587382.ThaiTS.jpg', '', '', 0, '2009-09-07 16:47:22');
INSERT INTO `newscenter3` VALUES (00061, '', 'KDIGO Clinical practice guideline for the care of kidney transplant recipients', '', '<p><font size="1">Update clinical guideline ã¹¡ÒÃ´ÙáÅ¼ÙéÃÑººÃÔ¨Ò¤äµ ¨Ñ´·Óâ´Â KDIGO áÅÐ The Transplantation society</font></p>\r\n<p><a href="http://www.tts.org/kdigo/kdigo.html"><font size="1">Download guideline</font></a></p>\r\n<p><a href="http://www.tts.org/kdigo/kdigo.html"><img height="56" alt="" width="250" src="/pic/Image/Kdigo(1).jpg" /></a></p>\r\n<p><font size="1"><strong>Download the entire guideline </strong>[</font><a href="http://tts.org/kdigo/downloads/kdigo/KDIGO_KidneyTxGuideline.pdf"><font size="1">PDF</font></a><font size="1">]</font></p>\r\n<font size="1"><hr />\r\n</font>\r\n<p><font size="1">&nbsp;</font><font size="1"><strong>Quickview to scan the document </strong>[</font><a href="http://www.scribd.com/doc/21189340/KDIGO-Txp-GL-Sans-AJT-Cover-2?secret_password=m501v8idb1j6rl9c1lp"><font size="1">LINK</font></a><font size="1">]</font></p>\r\n<font size="1"><hr />\r\n</font>\r\n<p><strong><font size="1">&nbsp;</font><font size="1">KDIGO guidelines - By chapter</font></strong></p>\r\n<p><font size="1"><strong>Front Matter </strong>[</font><a href="http://tts.org/kdigo/downloads/kdigo/Front_Matter.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\n<br />\r\n</font><font size="1">Disclaimer<br />\r\nWork Group Membership<br />\r\nKDIGO Board Members<br />\r\nAbbreviations and Acronyms<br />\r\nReference Keys<br />\r\nAbstract<br />\r\nForeword<br />\r\nGuideline Scope and Intended Users</font></p>\r\n<font size="1"><hr />\r\n</font>\r\n<p><font size="1"><strong>Section I - Introduction: Immunosuppression</strong> [</font><a href="http://tts.org/kdigo/downloads/kdigo/S1-Introduction.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\n<br />\r\n</font><font size="1">Chapter 1: Induction Therapy [</font><a href="http://tts.org/kdigo/downloads/kdigo/S1-C01_Induction_Therapy.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 2: Initial Maintenance Immunosuppressive Medications [</font><a href="http://tts.org/kdigo/downloads/kdigo/S1-C02_InitialMaintenanceImmunosuppressiveMedications.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 3: Long-Term Maintenance Immunosuppressive Medications [</font><a href="http://tts.org/kdigo/downloads/kdigo/S1-C03_Long-TermMaintenanceImmunosuppressiveMedications.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 4: Strategies to Reduce Drug Costs [</font><a href="http://tts.org/kdigo/downloads/kdigo/S1-C04_StrategiestoReduceDrugCosts.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 5: Monitoring Immunosuppressive Medications [</font><a href="http://tts.org/kdigo/downloads/kdigo/S1-C05_MonitoringImmunosuppressiveMedications.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 6: Treatment of Acute Rejection [</font><a href="http://tts.org/kdigo/downloads/kdigo/S1-C06_TreatmentofAcuteRejection.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 7: Treatment of Chronic Allograft Injury [</font><a href="http://tts.org/kdigo/downloads/kdigo/S1-C07_TreatmentofChronicAllograftInjury.pdf"><font size="1">PDF</font></a><font size="1">]</font></p>\r\n<font size="1"><hr />\r\n</font>\r\n<p><font size="1"><strong>Section II - Introduction: Graft Monitoring and Infections</strong> [</font><a href="http://tts.org/kdigo/downloads/kdigo/S2-Introduction.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\n<br />\r\n</font><font size="1">Chapter 8: Monitoring Kidney Allograft Function [</font><a href="http://tts.org/kdigo/downloads/kdigo/S2-C08_MonitoringKidneyAllograftFunction.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 9: Kidney Allograft Biopsy [</font><a href="http://tts.org/kdigo/downloads/kdigo/S2-C09_KidneyAllograftBiopsy.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 10: Recurrent Kidney Disease [</font><a href="http://tts.org/kdigo/downloads/kdigo/S2-C10_RecurrentKidneyDisease.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 11: Preventing, Detecting, and Treating Nonadherence [</font><a href="http://tts.org/kdigo/downloads/kdigo/S2-C11_PreventingDetectingTreatingNonadherence.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 12: Vaccination [</font><a href="http://tts.org/kdigo/downloads/kdigo/S2-C12_Vaccination.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 13: Viral Diseases [</font><a href="http://tts.org/kdigo/downloads/kdigo/S2-C13_ViralDiseases.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\n-13.1: BK Polyoma Virus<br />\r\n-13.2: Cytomegalovirus<br />\r\n-13.3: Epstein-Barr Virus and Post-Transplant Lymphoproliferative Disease<br />\r\n-13.4: Herpes Simplex Virus 1, 2 and Varicella Zoster Virus<br />\r\n-13.5: Hepatitis C Virus<br />\r\n-13.6: Hepatitis B Virus<br />\r\n-13.7: Human Immunodeficiency Virus<br />\r\nChapter 14: Other Infections [</font><a href="http://tts.org/kdigo/downloads/kdigo/S2-C14_OtherInfections.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\n-14.1: Urinary Tract Infection<br />\r\n-14.2: Pneumocystis Jirovecii Pneumonia<br />\r\n-14.3: Tuberculosis<br />\r\n-14.4: Candida Prophylaxis<br />\r\n</font><font size="1"></font></p>\r\n<p><font size="1"><strong>Section III - Introduction: Cardiovascular Disease</strong> [</font><a href="http://tts.org/kdigo/downloads/kdigo/S3-Introduction.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\n<br />\r\n</font><font size="1">Chapter 15: Diabetes Mellitus [</font><a href="http://tts.org/kdigo/downloads/kdigo/S3-C15_DiabetesMellitus.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\n-15.1: Screening for New-Onset Diabetes after Transplantation<br />\r\n-15.2: Managing NODAT or Diabetes Present at Transplantation<br />\r\nChapter 16: Hypertension, Dyslipidemias, Tobacco Use, and Obesity [</font><a href="http://tts.org/kdigo/downloads/kdigo/S3-C16_HypertensionDyslipidemiasTobaccoUseObesity.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\n-16.1: Hypertension<br />\r\n-16.2: Dyslipidemias<br />\r\n-16.3: Tobacco Use<br />\r\n-16.4: Obesity<br />\r\nChapter 17: Cardiovascular Disease Management [</font><a href="http://tts.org/kdigo/downloads/kdigo/S3-C17_CardiovascularDiseaseManagement.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\n</font><font size="1"></font></p>\r\n<p><font size="1"><strong>Section IV - Introduction: Malignancy</strong> [</font><a href="http://tts.org/kdigo/downloads/kdigo/S4-Introduction.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\n<br />\r\n</font><font size="1">Chapter 18: Cancer of the Skin and Lip [</font><a href="http://tts.org/kdigo/downloads/kdigo/S4-C18_CanceroftheSkinandLip.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 19: Non&ndash;Skin Malignancies [</font><a href="http://tts.org/kdigo/downloads/kdigo/S4-C19_Non_SkinMalignancies.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 20: Managing Cancer with Reduction of Immunosuppressive Medication [</font><a href="http://tts.org/kdigo/downloads/kdigo/S4-C20_ManagingCancerwithReductionofImmunosuppressiveMedication.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\n</font><font size="1"></font></p>\r\n<p><font size="1"><strong>Section V - Introduction: Other Complications</strong> [</font><a href="http://tts.org/kdigo/downloads/kdigo/S5-Introduction.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\n<br />\r\n</font><font size="1">Chapter 21: Transplant Bone Disease [</font><a href="http://tts.org/kdigo/downloads/kdigo/S5-C21_TransplantBoneDisease.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 22: Hematological Complications [</font><a href="http://tts.org/kdigo/downloads/kdigo/S5-C22_HematologicalComplications.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 23: Hyperuricemia and Gout [</font><a href="http://tts.org/kdigo/downloads/kdigo/S5-C23_HyperuricemiaandGout.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 24: Growth and Development [</font><a href="http://tts.org/kdigo/downloads/kdigo/S5-C24_GrowthandDevelopment.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 25: Sexual Function and Fertility [</font><a href="http://tts.org/kdigo/downloads/kdigo/S5-C25_SexualFunctionandFertility.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\n-25.1: Sexual Function<br />\r\n-25.2: Female Fertility<br />\r\n-25.3: Male Fertility<br />\r\nChapter 26: Lifestyle [</font><a href="http://tts.org/kdigo/downloads/kdigo/S5-C26_Lifestyle.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 27: Mental Health [</font><a href="http://tts.org/kdigo/downloads/kdigo/S5-C27_MentalHealth.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\n<br />\r\n<br />\r\n</font><font size="1">Appendix: Methods for Guideline Development [</font><a href="http://tts.org/kdigo/downloads/kdigo/Appendix.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nBiographic and Disclosure Information [</font><a href="http://tts.org/kdigo/downloads/kdigo/Biographic_Disclosure_Information.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nAcknowledgments [</font><a href="http://tts.org/kdigo/downloads/kdigo/Acknowledgments.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nReferences [</font><a href="http://tts.org/kdigo/downloads/kdigo/References_Kdigo.pdf"><font size="1">PDF</font></a><font size="1">]</font></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<hr />\r\n<p>&nbsp;</p>\r\n<hr />\r\n<p>&nbsp;</p>\r\n<hr />\r\n<p>&nbsp;</p>\r\n<hr />', 's_1256386135.KDIGO_Banner.jpg', '1256386135.KDIGO_Banner.jpg', '', '', 0, '2009-10-24 19:05:45');
INSERT INTO `newscenter3` VALUES (00066, '', 'ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐÏ ÃèÇÁ¡Ñº¡ÃÐ·ÃÇ§ÊÒ¸ÒÃ³ÊØ¢ ¾Ñ²¹Òá¹Ç·Ò§¡ÒÃºÃÔ¨Ò¤ÍÇÑÂÇÐáÅÐ»ÅÙ¡¶èÒÂäµ', '', '<p><font size="1">àÁ×èÍÇÑ¹·Õè 11ÁÕ¹Ò¤Á 2553&nbsp; âÃ§áÃÁÍÁÒÃÕ ´Í¹àÁ×Í§ ¡·Á. ¹ÒÂ¨ØÃÔ¹·Ãì ÅÑ¡É³ÇÔÈÔÉ¯ì ÃÑ°Á¹µÃÕÇèÒ¡ÒÃ¡ÃÐ·ÃÇ§ÊÒ¸ÒÃ³ÊØ¢ à»Ô´»ÃÐªØÁ <strong>&ldquo;á¹Ç·Ò§¡ÒÃ¾Ñ²¹ÒÃÐºººÃÔ¨Ò¤ÍÇÑÂÇÐáÅÐ¡ÒÃ»ÅÙ¡¶èÒÂäµã¹Ë¹èÇÂºÃÔ¡ÒÃ¢Í§¡ÃÐ·ÃÇ§ÊÒ¸ÒÃ³ÊØ¢ à¹×èÍ§ã¹ÇÑ¹äµâÅ¡ »ÃÐ¨Ó»Õ 2553&rdquo;</strong> áÅÐÁÍº¹âÂºÒÂ¡ÒÃ¾Ñ²¹ÒÃÐººÃÑººÃÔ¨Ò¤ÍÇÑÂÇÐà¾×èÍµèÍªÕÇÔµ¼ÙéÍ×è¹ ã¹âÃ§¾ÂÒºÒÅÊÑ§¡Ñ´¡ÃÐ·ÃÇ§ÊÒ¸ÒÃ³ÊØ¢ â´ÂÁÕ¹ÒÂá¾·ÂìÊÒ¸ÒÃ³ÊØ¢¨Ñ§ËÇÑ´ ¼ÙéÍÓ¹ÇÂ¡ÒÃâÃ§¾ÂÒºÒÅÈÙ¹Âì/âÃ§¾ÂÒºÒÅ·ÑèÇä» »ÃÐÊÒ·ÈÑÅÂá¾·Âì ÈÑÅÂá¾·Âì ¾ÂÒºÒÅ¼Ùé·ÓË¹éÒ·Õè»ÃÐÊÒ¹§Ò¹¡ÒÃÃÑºÍÇÑÂÇÐ¨Ò¡·ÑèÇ»ÃÐà·Èà¢éÒÃèÇÁ»ÃÐªØÁ¡ÇèÒ 500 ¤¹&nbsp; â´Ââ¤Ã§¡ÒÃ´Ñ§¡ÅèÒÇà»ç¹¤ÇÒÁÃèÇÁÁ×ÍÃÐËÇèÒ§ ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â, ÊÓ¹Ñ¡§Ò¹ËÅÑ¡»ÃÐ¡Ñ¹ÊØ¢ÀÒ¾áËè§ªÒµÔ, ÊÁÒ¤ÁâÃ¤äµáËè§»ÃÐà·Èä·Â, ªÁÃÁ¼Ùé»ÃÐÊÒ¹§Ò¹»ÅÙ¡¶èÒÂÍÇÑÂÇÐ, ÈÙ¹ÂìÃÑººÃÔ¨Ò¤ÍÇÑÂÇÐ ÊÀÒ¡ÒªÒ´ä·Â áÅÐ¡ÃÐ·ÃÇ§ÊÒ¸ÒÃ³ÊØ¢</font></p>\r\n<p><font size="1">¢éÍÁÙÅ¨Ò¡ ¡ÃÐ·ÃÇ§ÊÒ¸ÒÃ³ÊØ¢ </font><a href="http://www.moph.go.th/show_hotnew.php?idHot_new=31144"><font size="1">(ÃÒÂÅÐàÍÕÂ´à¾ÔèÁàµÔÁ)</font></a></p>\r\n<p><img height="166" alt="" width="250" src="/pic/Image/JRKidney(1).jpg" />&nbsp;&nbsp; <img height="166" alt="" width="250" src="/pic/Image/AllTeam(2).jpg" />&nbsp;&nbsp;</p>\r\n<p><img height="166" alt="" width="250" src="/pic/Image/peoplemeet(2).jpg" />&nbsp;&nbsp; <img height="166" width="250" alt="" src="/pic/Image/JRmeet.jpg" /></p>', 's_1269456946.AllTeam.jpg', '1269456946.AllTeam.jpg', '', '', 0, '2010-03-25 01:55:46');
INSERT INTO `newscenter3` VALUES (00067, '', 'È.¹¾. ÇÊÑ¹µì ÊØàÁ¸¡ØÅ ¹ÒÂ¡ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä´éÃÑºàÅ×Í¡à»ç¹ council ¢Í§ TTS', '', '<p><font size="1">µÒÁ·Õè È. ¹¾. ÇÊÑ¹µì ÊØàÁ¸¡ØÅ ¹ÒÂ¡ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â ÊÁÑ¤Ãà»ç¹ council ¢Í§ The Transplantation Society ã¹·ÇÕ»àÍà«ÕÂ â´ÂãËéÊÁÒªÔ¡¢Í§ TTS ·ÑèÇâÅ¡¤Ñ´àÅ×Í¡ áÅÐ·Ò§ TTS ä´é»ÃÐ¡ÒÈ¼Å¡ÒÃ¤Ñ´àÅ×Í¡ÇèÒ È. ¹¾. ÇÊÑ¹µì ÊØàÁ¸¡ØÅ ä´éÃÑº¡ÒÃ¤Ñ´àÅ×Í¡à»ç¹ council ã¹ÇÒÃÐ»Õ ¤È. 2010-2012.</font></p>\r\n<p><font size="1">ÃÒÂÅÐàÍÕÂ´à¾ÔèÁàµÔÁ: <font face="Arial"><a href="http://www.tts.org/index.php?option=com_content&amp;view=article&amp;id=781:tts-elects-new-council&amp;catid=67&amp;Itemid=260">http://www.tts.org/index.php?option=com_content&amp;view=article&amp;id=781:tts-elects-new-council&amp;catid=67&amp;Itemid=260</a></font></font></p>\r\n<p><font size="1"><strong><font color="#ff0000">TTS Council 2010-2012</font></strong> </font></p>\r\n<p><span class="icon email"><font size="1"></font></span></p>\r\n<h3><strong><font size="1">2010-2012 &ndash; Officers of The Transplantation Society</font></strong></h3>\r\n<p>\r\n<table class="listing" style="WIDTH: 100%" border="1">\r\n    <tbody>\r\n        <tr>\r\n            <td width="50%"><font size="1">Gerhard Opelz<br />\r\n            </font></td>\r\n            <td width="50%"><font size="1">President</font></td>\r\n        </tr>\r\n        <tr>\r\n            <td><font size="1">Jeremy R. Chapman<br />\r\n            </font></td>\r\n            <td><font size="1">Immediate Past President</font></td>\r\n        </tr>\r\n        <tr>\r\n            <td><font size="1">Francis L. Demonico<br />\r\n            </font></td>\r\n            <td><font size="1">President-Elect</font></td>\r\n        </tr>\r\n        <tr>\r\n            <td><font size="1">Ron Shapiro<br />\r\n            </font></td>\r\n            <td><font size="1">Vice President</font></td>\r\n        </tr>\r\n        <tr>\r\n            <td><font size="1">John Fung</font></td>\r\n            <td><font size="1">Secretary<br />\r\n            </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td><font size="1">Hans Sollinger</font></td>\r\n            <td><font size="1">Senior Treasurer<br />\r\n            </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td><font size="1">Henrik Ekberg<br />\r\n            </font></td>\r\n            <td><font size="1">Treasurer</font></td>\r\n        </tr>\r\n        <tr>\r\n            <td><font size="1">Francis L. Delmonico</font></td>\r\n            <td><font size="1">Director of Medical Affairs<br />\r\n            </font></td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</p>\r\n<h3><strong><font size="1">2010-2012 &ndash; Councilors of The Transplantation Society </font></strong></h3>\r\n<p>\r\n<table class="listing" style="WIDTH: 590px; HEIGHT: 405px" border="1">\r\n    <tbody>\r\n        <tr>\r\n            <td width="50%"><font size="1">Nancy Ascher<br />\r\n            </font></td>\r\n            <td width="50%"><font size="1">North America</font></td>\r\n        </tr>\r\n        <tr>\r\n            <td><font size="1">Marcelo Cantarovich<br />\r\n            </font></td>\r\n            <td><font size="1">North America<br />\r\n            </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td><font size="1">Pierre A. Clavien</font></td>\r\n            <td><font size="1">Europe</font></td>\r\n        </tr>\r\n        <tr>\r\n            <td><font size="1">Gabriel Danovitch</font></td>\r\n            <td><font size="1">North America</font></td>\r\n        </tr>\r\n        <tr>\r\n            <td><font size="1">Maria Cristina Ribeiro de Castro<br />\r\n            </font></td>\r\n            <td><font size="1">Latin America<br />\r\n            </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td><font size="1">Elmi Muller<br />\r\n            </font></td>\r\n            <td><font size="1">Middle East / Africa<br />\r\n            </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td><font size="1">Philip O''Connell<br />\r\n            </font></td>\r\n            <td><font size="1">Oceania</font></td>\r\n        </tr>\r\n        <tr>\r\n            <td><font size="1">David H. Sachs</font></td>\r\n            <td><font size="1">North America</font></td>\r\n        </tr>\r\n        <tr>\r\n            <td><font size="1">Vasent Sumethkul<br />\r\n            </font></td>\r\n            <td><font size="1">Asia</font></td>\r\n        </tr>\r\n        <tr>\r\n            <td><font size="1">Annika Tibell<br />\r\n            </font></td>\r\n            <td><font size="1">Europe</font></td>\r\n        </tr>\r\n        <tr>\r\n            <td><font size="1">Satoru Todo</font></td>\r\n            <td><font size="1">Asia</font></td>\r\n        </tr>\r\n        <tr>\r\n            <td><font size="1">Andreas Tzakis<br />\r\n            </font></td>\r\n            <td><font size="1">North America<br />\r\n            </font></td>\r\n        </tr>\r\n        <tr>\r\n            <font size="1"></font>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</p>\r\n<h3><strong><font size="1">TTS International Headquarters </font></strong></h3>\r\n<p>\r\n<table class="listing" style="WIDTH: 100%" border="1">\r\n    <tbody>\r\n        <tr>\r\n            <td width="50%"><font size="1">Filomena Picciano</font></td>\r\n            <td width="50%"><font size="1">Director of Society Operations</font></td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</p>', 's_1291481155.TTSVST.jpg', '1291481155.TTSVST.jpg', '', '', 0, '2010-09-13 23:15:44');
INSERT INTO `newscenter3` VALUES (00069, '', '¢ÍàªÔ­Êè§¼Å§Ò¹ÇÔªÒ¡ÒÃáÅÐà¢éÒÃèÇÁ»ÃÐªØÁ 12th Congress of The Asian Society of Transplantation', '', '<p><font size="1">¢ÍàªÔ­ÊÁÒªÔ¡ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐÏ Êè§¼Å§Ò¹ÇÔªÒ¡ÒÃáÅÐÃèÇÁ»ÃÐªØÁ <font face="Arial"><strong><font color="#0000ff">12th Congress of The Asian Society of Transplantation&nbsp;(CAST 2011)</font></strong>&nbsp;«Öè§¨Ð¨Ñ´¢Öé¹ ³ ¡ÃØ§â«Å »ÃÐà·Èà¡ÒËÅÕ ÇÑ¹·Õè 25-28 ¡Ñ¹ÂÒÂ¹ 2554&nbsp; <font face="Arial"><a href="http://www.cast2011.org/">http://www.cast2011.org/</a></font></font></font></p>\r\n<p><strong><font style="BACKGROUND-COLOR: #0000ff" color="#ffffff" size="1">Important date</font></strong></p>\r\n<p><font size="1">Abstract submission deadline:&nbsp; 25 May 2011<br />\r\nNotification of acceptance: 30 June 2011<br />\r\nEarly registration deadline: 15 July 2011<br />\r\nRegular registration deadline: 25 August 2011</font></p>\r\n<p><a href="http://www.cast2011.org/down/CAST2011_1st_Announcement.pdf"><font size="1">Download First announcement</font></a></p>\r\n<p><br />\r\n<a href="http://www.cast2011.org/down/CAST2011_1st_Announcement.pdf"><img height="569" width="400" alt="" src="/pic/Image/Cast2011.jpg" /></a></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 's_1291477205.CastKorea.jpg', '1291477205.CastKorea.jpg', '', '', 0, '2010-12-04 22:40:05');
INSERT INTO `newscenter3` VALUES (00070, '', 'ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·ÂÃèÇÁ¨Ñ´§Ò¹ÇÑ¹äµâÅ¡ (World Kidney Day)', '', '<p><font size="1">ã¹ÇÑ¹·Õè 6 Áê¹Ò¤Á 2554 ·Õè¼èÒ¹ÁÒ ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·ÂáÅÐªÁÃÁ¼Ùé»ÃÐÊÒ¹§Ò¹»ÅÙ¡¶èÒÂÍÇÑÂÇÐä´éÃèÇÁà»ç¹à¨éÒÀÒ¾¨Ñ´§Ò¹ÇÑ¹äµâÅ¡ (World Kidney Day) ·ÕèÊÇ¹¨µØ¨Ñ¡ÃÃèÇÁ¡ÑºÊÁÒ¤ÁâÃ¤äµáËè§»ÃÐà·Èä·Â, ÈÙ¹ÂìÃÑººÃÔ¨Ò¤ÍÇÑÂÇÐÊÀÒ¡ÒªÒ´ä·Â, ¡ÃØ§à·¾ÁËÒ¹¤Ã, ¡ÃÐ·ÃÇ§ÊÒ¸ÒÃ³ÊØ¢, Ê»Êª., ÊÓ¹Ñ¡§Ò¹»ÃÐ¡Ñ¹ÊÑ§¤Á ã¹§Ò¹¹ÕéÁÕ¼Ùéà¢éÒÃèÇÁ§Ò¹à»ç¹¨Ó¹Ç¹ÁÒ¡áÅÐÁÕ´ÒÃÒ-¹Ñ¡áÊ´§ÃèÇÁ§Ò¹áÅÐáÊ´§¤ÇÒÁ¨Ó¹§à»ç¹¼ÙéºÃÔ¨Ò¤ÍÇÑÂÇÐ</font></p>\r\n<p><img height="188" alt="" width="250" src="/pic/Image/196430_130389843701123_100001903250047_201348_1014831_n.jpg" /><font size="1">&nbsp; <img height="188" alt="" width="250" src="/pic/Image/183248_130389723701135_100001903250047_201344_4858323_n.jpg" />&nbsp; </font></p>\r\n<p><font size="1"><img height="188" alt="" width="250" src="/pic/Image/197416_130389053701202_100001903250047_201323_8064353_n.jpg" />&nbsp; </font><font size="1"><img height="188" alt="" width="250" src="/pic/Image/190353_130389787034462_100001903250047_201346_1581076_n.jpg" /></font></p>\r\n<p><font size="1"><img height="188" alt="" width="250" src="/pic/Image/199665_130388750367899_100001903250047_201314_7399154_n.jpg" />&nbsp; <img height="188" alt="" width="250" src="/pic/Image/199454_200535769973931_100000525295495_696934_1570301_n.jpg" /></font></p>\r\n<p><font size="1"><img height="188" alt="" width="250" src="/pic/Image/200239_130388450367929_100001903250047_201304_1925423_n.jpg" />&nbsp; <img height="188" alt="" width="250" src="/pic/Image/184375_130389550367819_100001903250047_201338_5481429_n.jpg" />&nbsp; </font></p>\r\n<p><font size="1"><img height="188" alt="" width="250" src="/pic/Image/196197_130388677034573_100001903250047_201312_8344781_n.jpg" />&nbsp; <img height="188" alt="" width="250" src="/pic/Image/197787_130388577034583_100001903250047_201309_5163741_n.jpg" />&nbsp;&nbsp;</font></p>', 's_1299517007.183248_130389723701135_100001903250047_201344_4858323_n.jpg', '1299517007.183248_130389723701135_100001903250047_201344_4858323_n.jpg', '', '', 0, '2011-03-07 23:54:22');
INSERT INTO `newscenter3` VALUES (00071, '', 'Dr. Henrik Ekberg áÅÐ Mrs. Filomena Picciano àÂÕèÂÁªÁÊ¶Ò¹·Õè¨Ñ´§Ò¹ TTS2016 ', '', '<p><font size="1">àÁ×èÍÇÑ¹·Õè 29 ¡.Â. - 1 µ.¤. 2554 ·Õè¼èÒ¹ÁÒ Dr. Henrik Ekberg áÅÐ Mrs. Filomena Picciano ¨Ò¡ The Transplantation Society ä´éÁÒ»ÃÐªØÁáÅÐàÂÕèÂÁªÁÊ¶Ò¹·Õèã¹¡ÒÃ¨Ñ´»ÃÐªØÁ¹Ò¹ÒªÒµÔ International Congress of The Transplantation Society «Öè§»ÃÐà·Èä·Âà»ç¹à¨éÒÀÒ¾ã¹»Õ ¤.È.&nbsp;2016 (¾.È. 2559) ã¹¡ÒÃ¹Õé È. ¹¾. ÇÊÑ¹µì ÊØàÁ¸¡ØÅ ¹ÒÂ¡ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â áÅÐ¡ÃÃÁ¡ÒÃ¨Ñ´¡ÒÃ»ÃÐªØÁ ¾ÃéÍÁ¡Ñº¡ÃÃÁ¡ÒÃºÃÔËÒÃÊÁÒ¤ÁÏ&nbsp; áÅÐà¨éÒË¹éÒ·Õè¨Ò¡ ÊÓ¹Ñ¡§Ò¹¡ÒÃÊè§àÊÃÔÁ¡ÒÃ»ÃÐªØÁÃÐËÇèÒ§»ÃÐà·È (TCEB) ÃÇÁ·Ñé§µÑÇá·¹¨Ò¡ºÃÔÉÑ· Novartis, Astellas áÅÐ Roche ä´éãËé¡ÒÃµéÍ¹ÃÑº ã¹¡ÒÃ¹Õé Dr. Henrik Ekberg áÅÐ Mrs. Filomena Picciano ä´éàÂÕèÂÁªÁÈÙ¹Âì»ÃÐªØÁ BITEC&nbsp;&nbsp; áÅÐÊÇ¹ÊÒÁ¾ÃÒ¹&nbsp;&nbsp; áÅÐä´éà¢éÒªÁ¤ÇÒÁÊÇÂ§ÒÁ¢Í§¾ÃÐºÃÁÁËÒÃÒªÇÑ§áÅÐÇÑ´¾ÃÐÈÃÕÃÑµ¹ÈÒÊ´ÒÃÒÁ´éÇÂ</font></p>\r\n<p align="center"><img height="332" width="500" alt="" src="/pic/Image/320883_1824245225435_1819404521_1257942_1946565812_n(1).jpg" /></p>\r\n<p>&nbsp;<img height="225" alt="" width="300" src="/pic/Image/308168_197846146955492_100001903250047_467036_1808004297_n(1).jpg" />&nbsp; <img height="225" alt="" width="300" src="/pic/Image/297828_197843226955784_100001903250047_466953_547232932_n.jpg" /></p>\r\n<p><img height="225" alt="" width="300" src="/pic/Image/297892_197842386955868_100001903250047_466926_1108013092_n.jpg" />&nbsp; <img height="225" alt="" width="300" src="/pic/Image/299190_197841340289306_100001903250047_466897_1637798671_n.jpg" /></p>\r\n<p><img height="225" alt="" width="300" src="/pic/Image/297837_197841500289290_100001903250047_466901_801804966_n.jpg" />&nbsp; <img height="225" alt="" width="300" src="/pic/Image/305236_197841553622618_100001903250047_466903_2038143707_n(1).jpg" /></p>\r\n<p><img height="225" alt="" width="300" src="/pic/Image/305837_197845030288937_100001903250047_467005_1480951037_n.jpg" />&nbsp; <img height="225" alt="" width="300" src="/pic/Image/310196_197841840289256_100001903250047_466910_890734617_n.jpg" /></p>\r\n<p><img height="225" alt="" width="300" src="/pic/Image/317583_197844790288961_100001903250047_466999_707784046_n.jpg" />&nbsp; <img height="225" alt="" width="300" src="/pic/Image/311355_197842116955895_100001903250047_466919_1147295190_n.jpg" /></p>', 's_1318430853.320883_1824245225435_1819404521_1257942_1946565812_n.jpg', '1318430853.320883_1824245225435_1819404521_1257942_1946565812_n.jpg', '', '', 0, '2011-10-12 14:02:57');
INSERT INTO `newscenter3` VALUES (00073, '', 'ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â ¨Ñ´§Ò¹ÁØ·ÔµÒ¨Ôµà¹×èÍ§ã¹ÇÒÃÐà¡ÉÕÂ³ÍÒÂØÃÒª¡ÒÃ', '', '<p><font size="1">ã¹ÇÑ¹·Õè 23 ¡Ñ¹ÂÒÂ¹ 2554 ·Õè¼èÒ¹ÁÒ ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐÏ ä´é¨Ñ´§Ò¹áÊ´§ÁØ·ÔµÒ¨Ôµá´èÍÒ¨ÒÃÂì¼Ùéà¡ÉÕÂ³ÍÒÂØÃÒª¡ÒÃ ä´éá¡è È. ¹¾.à¡ÃÕÂ§ µÑé§Ê§èÒ, È. ¹¾. ´ØÊÔµ ÅéÓàÅÔÈ¡ØÅ, ÃÈ. ¹¾. ÇÔÇÑ²¹ì µ»¹ÕÂâÍÌÒÃ ³ ËéÍ§à¿×èÍ§¿éÒ âÃ§áÃÁ Golden Tulip </font></p>\r\n<p><img height="225" alt="" width="300" src="/pic/Image/321204_194997507240356_100001903250047_457260_1588206310_n.jpg" />&nbsp; <img height="225" alt="" width="300" src="/pic/Image/307956_194998417240265_100001903250047_457298_109640562_n.jpg" /></p>\r\n<p><img height="225" alt="" width="300" src="/pic/Image/304879_194997777240329_100001903250047_457272_1026810032_n.jpg" />&nbsp; <img height="225" alt="" width="300" src="/pic/Image/319569_194997710573669_100001903250047_457269_476291632_n.jpg" /></p>\r\n<p><img height="225" alt="" width="300" src="/pic/Image/302647_194997683907005_100001903250047_457268_1994085267_n.jpg" />&nbsp;&nbsp;<img height="225" alt="" width="300" src="/pic/Image/314014_194997763906997_100001903250047_457271_1253757251_n.jpg" /></p>\r\n<p><img height="225" alt="" width="300" src="/pic/Image/294737_194997220573718_100001903250047_457248_2039037186_n.jpg" />&nbsp; <img height="225" alt="" width="300" src="/pic/Image/291730_194998200573620_100001903250047_457290_285017088_n.jpg" /></p>', 's_1318436970.307956_194998417240265_100001903250047_457298_109640562_n.jpg', '1318436970.307956_194998417240265_100001903250047_457298_109640562_n.jpg', '', '', 0, '2011-10-12 23:29:30');
INSERT INTO `newscenter3` VALUES (00077, '', 'ÃÇÁÊ×èÍ»ÃÐªÒÊÑÁ¾Ñ¹¸ì-youtube à¾×èÍÃ³Ã§¤ì¡ÒÃºÃÔ¨Ò¤ÍÇÑÂÇÐ', '', '<p>ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â ä´éÃÇºÃÇÁÊ×èÍ-multimedia à¾ÔèÍãËé¤ÇÒÁÃÙéáÅÐÊÃéÒ§·ÑÈ¹¤µÔ·Õè´Õã¹¡ÒÃºÃÔ¨Ò¤ÍÇÑÂÇÐà¾×èÍªèÇÂàËÅ×Í¼Ùé»èÇÂÍÇÑÂÇÐÇÒÂ·Õè¡ÓÅÑ§ÃÍ¤ÍÂÍÇÑÂÇÐÍÕ¡¨Ó¹Ç¹ÁÒ¡</p>\r\n<p><font face="Arial"><a href="http://youtu.be/x0ZerSMSuLo"><img alt="" width="200" height="150" src="http://www.transplantthai.org/pic/Image/File1.jpg" /></a>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<a href="http://youtu.be/Xkivi6zxn18"><img alt="" width="200" height="150" src="http://www.transplantthai.org/pic/Image/File2(1).jpg" /></a></font></p>\r\n<p><font face="Arial"><a href="http://youtu.be/x0ZerSMSuLo">http://youtu.be/x0ZerSMSuLo</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font face="Arial"><a href="http://youtu.be/Xkivi6zxn18">http://youtu.be/Xkivi6zxn18</a></font></font></p>\r\n<p>&nbsp;<a href="http://youtu.be/S2N_uq4hgdM"><img alt="" width="200" height="150" src="http://www.transplantthai.org/pic/Image/File3.jpg" /></a>&nbsp; </p>\r\n<div id="watch-description-text">\r\n<p id="eow-description">&quot;ºØ­ÍÑ¹ÂÔè§ãË­è&quot; áÃ§ºÑ¹´ÒÅã¨ ¨Ò¡¡ÒÃÍèÒ¹º·ÊÑÁÀÒÉ³ì ¤Ø³áÁè¼ÙéµÑ´ÊÔ¹ã¨ºÃÔ¨Ò¤ÍÇÑÂÇÐ¢Í§ÅÙ¡ªÒÂ·Õè¨Ò¡ä»´éÇÂÍØºÑµÔàËµØ ÇèÒä´éÊÙ­àÊÕÂÅÙ¡ªÒÂä»¡èÍ¹ÇÑÂÍÑ¹¤ÇÃâ´Â·ÕèÅÙ¡ªÒÂÂÑ§äÁè·Ñ¹ä´éºÇªãËéáÁè ¡ÒÃºÃÔ¨Ò¤ÍÇÑÂÇÐà»ç¹àÊÁ×Í¹¡ÒÃ·ÓºØ­ÍÑ¹ÂÔè§ãË­è¤ÃÑé§ÊØ´·éÒÂ¢Í§ªÕÇÔµ</p>\r\n</div>\r\n<p><font face="Arial"><a href="http://youtu.be/S2N_uq4hgdM">http://youtu.be/S2N_uq4hgdM</a></font></p>\r\n<p><a href="http://youtu.be/PKYDzz3T2MI"><img alt="" width="200" height="150" src="http://www.transplantthai.org/pic/Image/File4.jpg" /></a></p>\r\n<div id="watch-description-text">\r\n<p id="eow-description">&quot;àÃÒà´Ô¹ä»¨ÑºÁ×ÍÅÙ¡áÅÐºÍ¡ÅÙ¡ÇèÒË¹ÙäÁèµéÍ§ºÇªãËéáÁè äÁèµéÍ§à»ç¹·ËÒÃ áµèáÁè¢ÍÃèÒ§«Öè§¨Ò¡¹Õéä»àÃÒ¡ç¨ÐãËé¡Ñº¤¹Í×è¹ «Öè§ÇÑ¹¹Ñé¹àÃÒ¡çàËç¹¹éÓµÒ¢Í§ÅÙ¡´éÇÂ&quot;</p>\r\n</div>\r\n<p>&nbsp;<font face="Arial"><a href="http://youtu.be/PKYDzz3T2MI">http://youtu.be/PKYDzz3T2MI</a></font></p>\r\n<p><a href="http://youtu.be/w3KrwOb0rmc"><img alt="" width="200" height="150" src="http://www.transplantthai.org/pic/Image/File5.jpg" /></a></p>\r\n<font face="Arial">\r\n<div id="watch-description-text">\r\n<p id="eow-description">ÍÂÒ¡ãËé¾ÕèªÒÂä´éÁÕâÍ¡ÒÊ·ÓºØ­¤ÃÑé§ÊØ´·éÒÂ ´éÇÂ¡ÒÃºÃÔ¨Ò¤ÍÇÑÂÇÐãËé¡ÑºÈÙ¹ÂìÃÑººÃÔ¨Ò¤ÍÇÑÂÇÐ à¾ÃÒÐäÁèá¹èÇÑ¹Ë¹Öè§àÃÒÍÒ¨¨Ðä´éÊºµÒ¡Ñº´Ç§µÒ¤Ùè¹Ñé¹¢Í§¾ÕèªÒÂ¡çä´é</p>\r\n</div>\r\n</font>\r\n<p><font face="Arial"><a href="http://youtu.be/w3KrwOb0rmc">http://youtu.be/w3KrwOb0rmc</a></font></p>\r\n<p>&nbsp;</p>', 's_1329235505.File2.jpg', '1329235505.File2.jpg', '', '', 0, '2012-02-14 23:05:06');
INSERT INTO `newscenter3` VALUES (00076, '', '»ÃÐªÒÊÑÁ¾Ñ¹¸ì- ¡ÒÃ´Óà¹Ô¹¡ÒÃªèÇÂàËÅ×Í¼Ùé»èÇÂã¹ÀÒÇÐÇÔ¡ÄµÔÍØ·¡ÀÑÂ', '', '<p><font size="2"><span style="LINE-HEIGHT: 115%; FONT-FAMILY: ''TH SarabunPSK''; FONT-SIZE: 16pt; mso-fareast-font-family: Calibri; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: TH"><v:shapetype id="_x0000_t75" coordsize="21600,21600" o:spt="75" o:preferrelative="t" path="m@4@5l@4@11@9@11@9@5xe" filled="f" stroked="f">&nbsp;</v:shapetype></span></font><font size="2">¡ÒÃ´Óà¹Ô¹¡ÒÃ¢Í§Í§¤ì¡ÃÇÔªÒªÕ¾áÅÐ¡Í§·Ø¹µèÒ§ã¹¡ÒÃ´ÙáÅ¼Ùé»èÇÂâÃ¤äµã¹ÀÒÇÐ¹éÓ·èÇÁ</font></p>\r\n<p><font color="#ff0000" size="2"><strong>àÍ¡ÊÒÃÊÓËÃÑº¼Ùé»èÇÂáÅÐÈÙ¹Âì»ÅÙ¡¶èÒÂÍÇÑÂÇÐ&nbsp; Ë¹èÇÂäµà·ÕÂÁ áÅÐË¹èÇÂ CAPD</strong></font></p>\r\n<span class="NorTxtGray">\r\n<p><a href="/pic/File/RecommendKT.doc"><font size="1">Download àÍ¡ÊÒÃ¤Óá¹Ð¹Ó¡ÒÃ»¯ÔºÑµÔµÑÇÊÓËÃÑº¼Ùé»èÇÂ»ÅÙ¡¶èÒÂäµáÅÐ»ÅÙ¡¶èÒÂÍÇÑÂÇÐ</font></a></p>\r\n<p><a href="/pic/File/RecommendHDcenter.pdf"><font size="1">Download àÍ¡ÊÒÃá¹Ç·Ò§»¯ÔºÑµÔÊÓËÃÑºÈÙ¹Âì¿Í¡àÅ×Í´</font></a></p>\r\n<p><a href="/pic/File/RecommendPT_HD.pdf"><font size="1">Download àÍ¡ÊÒÃãËé¤Óá¹Ð¹Ó¡ÒÃ»¯ÔºÑµÔµÑÇ¢Í§¼Ùé»èÇÂ¿Í¡àÅ×Í´ã¹ÀÒÇÐÍØ·¡ÀÑÂ</font></a></p>\r\n<p><font color="#ff0000" size="2"><strong>¡ÒÃ¼ÊÁ¹éÓÂÒ A-B ÊÓËÃÑº¿Í¡àÅ×Í´</strong></font></p>\r\n<p><a href="/pic/File/Powder A.pdf"><font style="BACKGROUND-COLOR: #ffffff" size="1">¤ÙèÁ×Í¡ÒÃ¼ÊÁ¹éÓÂÒª¹Ô´ A (PDF file)</font></a><font style="BACKGROUND-COLOR: #ffffff" size="1">, </font><a href="/pic/File/Powder B.pdf"><font style="BACKGROUND-COLOR: #ffffff" size="1">¤ÙèÁ×Í¡ÒÃ¼ÊÁ¹éÓÂÒª¹Ô´ B&nbsp;(PDF file) </font></a></p>\r\n<p><strong><a href="http://www.youtube.com/watch?v=WnG17kLe2sk&amp;feature=colike"><font style="BACKGROUND-COLOR: #ffffff" color="#0000ff" size="1">ÇÔ¸Õ¼ÊÁ¹éÓÂÒ Dialysate B PART: I</font></a><font style="BACKGROUND-COLOR: #ffffff" color="#0000ff" size="1">&nbsp; (Youtube), </font></strong><strong><a href="http://youtu.be/MtDpG54S_4U"><font style="BACKGROUND-COLOR: #ffffff" color="#0000ff" size="1">ÇÔ¸Õ¼ÊÁ¹éÓÂÒ Dialysate B PART: II</font></a><font style="BACKGROUND-COLOR: #ffffff" color="#0000ff" size="1">&nbsp;(Youtube), </font></strong><strong><a href="http://www.youtube.com/watch?v=M7-dwObuuzw"><font style="BACKGROUND-COLOR: #ffffff" color="#0000ff" size="1">ÇÔ¸Õ¼ÊÁ¹éÓÂÒ Dialysate B PART: III</font></a><font style="BACKGROUND-COLOR: #ffffff" color="#0000ff" size="1">&nbsp;(Youtube) </font></strong></p>\r\n<strong><font style="BACKGROUND-COLOR: #ffff00" color="#ff0000">\r\n<p><span class="NorTxtGray"><strong><font style="BACKGROUND-COLOR: #ffffff" color="#ff0000" size="2">¡ÒÃµÔ´µèÍºÃÔÉÑ··Õè¼ÅÔµÍØ»¡Ã³ì supply </font></strong></span></p>\r\n<p><span class="NorTxtGray"><strong><font color="#0000ff"><u><font style="BACKGROUND-COLOR: #ffffff" size="1">Download </font></u><a href="http://www.transplantthai.org/pic/File/Supply.pdf"><font style="BACKGROUND-COLOR: #ffffff" size="1">ËÁÒÂàÅ¢â·ÃÈÑ¾·ìµÔ´µèÍ ÍØ»¡Ã³ì supply</font></a></font></strong></span></p>\r\n</font></strong>\r\n<p><font style="BACKGROUND-COLOR: #ffff00" color="#ff0000"></font><strong><font color="#ff0000" size="2">&nbsp;áººÊÓÃÇ¨ÀÒÇÐÍØ·¡ÀÑÂµèÍ¼Ùé»èÇÂâÃ¤äµ</font></strong></p>\r\n<p><font color="#0000ff" size="1"><a href="/pic/File/NewQUESTIONARE_DOC.doc">Download áººÊÓÃÇ¨</a></font></p>\r\n<p><font size="1"></font></p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>\r\n</span>', 's_1326605839.THFLD.jpg', '1326605839.THFLD.jpg', '', '', 0, '2012-01-15 12:37:19');
INSERT INTO `newscenter3` VALUES (00078, '', '¾Ø·¸ÈÒÊ¹Ò¡Ñº¡ÒÃºÃÔ¨Ò¤ÍÇÑÂÇÐ', '', '<p>àÃÕÂ¹ÃÙéá¹Ç·Ò§¢Í§¾Ø·¸ÈÒÊ¹Ò¡Ñº¡ÒÃºÃÔ¨Ò¤ÍÇÑÂÇÐÇèÒÁÕ¤ÓÊÍ¹¢Í§¾ÃÐÊÑÁÁÒÊÑÁ¾Ø·¸à¨éÒÍÑ¹ã´ºéÒ§·Õèà¡ÕèÂÇ¢éÍ§¡Ñº¡ÒÃºÃÔ¨Ò¤ÍÇÑÂÇÐ&nbsp; ·Ò¹ºÒÃÁÕ·Õèä´é¨Ò¡¡ÒÃºÃÔ¨Ò¤ÍÇÑÂÇÐ¹Ñé¹à»ç¹¡ÒÃãËé·Ò¹ã¹ÃÐ´Ñºã´&nbsp;&nbsp; ÈÖ¡ÉÒä´é¨Ò¡Ë¹Ñ§Ê×Í &quot;¾Ø·¸ÈÒÊ¹Ò¡Ñº¡ÒÃºÃÔ¨Ò¤ÍÇÑÂÇÐ&quot; àÃÕÂºàÃÕÂ§¨Ò¡º·ÊÑÁÀÒÉ³ì ¾ÃÐ¾ÃËÁ¤Ø³ÒÀÃ³ì (¾ÃÐ¤Ø³à¨éÒ¸ÃÃÁ»Ô®¡ ».Í. »ÂØµâµ) áÅÐ ÍÒ¨ÒÃÂì ¹¾. ÇÔÈÔÉ®ì °ÔµÇÑ²¹ì </p>\r\n<p><a href="/pic/File/buddhism.pdf">Download</a>&nbsp;Ë¹Ñ§Ê×Í &quot;¾Ø·¸ÈÒÊ¹Ò¡Ñº¡ÒÃºÃÔ¨Ò¤ÍÇÑÂÇÐ&quot;</p>\r\n<p><a href="/pic/File/buddhism(1).pdf"><img width="500" height="589" alt="" src="/pic/Image/File6.jpg" /></a></p>\r\n<p>&nbsp;</p>', 's_1329236484.Buddha.jpg', '1329236484.Buddha.jpg', '', '', 0, '2012-02-14 23:08:53');
INSERT INTO `newscenter3` VALUES (00079, '', 'ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â ÃèÇÁ§Ò¹ÁØ·ÔµÒ¨Ôµ È. ¾­. ¸Ñ­­ÒÃÑµ¹ì ¸ÕÃ¾ÃàÅÔÈÃÑ°', '', '<p><font face="Arial">ã¹ÇÑ¹·Õè 27 ¡Ñ¹ÂÒÂ¹ ¾.È. 2555 ·Õè¼èÒ¹ÁÒ ÃÈ. ¹¾. à¡ÃÕÂ§ÈÑ¡´Ôì ÇÒÃÕáÊ§·Ô¾Âì ¹ÒÂ¡ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·ÂáÅÐ ¤Ø³¹§¹Øª ¢ÑµµÔÂÐ à¨éÒË¹éÒ·ÕèÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐÏ&nbsp;&nbsp; ä´éà»ç¹¼Ùéá·¹¢Í§ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐÏ &nbsp;ÃèÇÁ§Ò¹ÁØ·ÔµÒ¨Ôµ È. ¾­. ¸Ñ­­ÒÃÑµ¹ì ¸ÕÃ¾ÃàÅÔÈÃÑ° ³ ÀÒ¤ÇÔªÒÍÒÂØÃÈÒÊµÃì Ã¾.ÈÔÃÔÃÃÒª</font></p>\r\n<p><img alt="" width="300" height="225" src="/pic/Image/425875_289718461141727_573472364_n.jpg" />&nbsp; <img alt="" width="300" height="225" src="/pic/Image/408207_289718414475065_2121943231_n.jpg" /></p>\r\n<p><img alt="" width="300" height="225" src="/pic/Image/552474_381413318598773_1560770989_n.jpg" />&nbsp; <img alt="" width="300" height="225" src="/pic/Image/267283_381413525265419_1538233426_n.jpg" /></p>', 's_1348869787.408207_289718414475065_2121943231_n.jpg', '1348869787.408207_289718414475065_2121943231_n.jpg', '', '', 0, '2012-09-29 05:03:07');
INSERT INTO `newscenter3` VALUES (00092, '', '§Ò¹áÊ´§ÁØ·ÔµÒ¨Ôµ á´è È.¹¾.âÊÀ³ ¨ÔÃÊÔÃÔ¸ÃÃÁ ', '', '<p>ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐÏ ä´é¨Ñ´§Ò¹áÊ´§ÁØ·ÔµÒ¨Ôµ á´è È.¹¾.âÊÀ³ ¨ÔÃÊÔÃÔ¸ÃÃÁ à¹×èÍ§ã¹ÇÒÃÐà¡ÉÕÂ³ÍÒÂØÃÒª¡ÒÃ ã¹ÇÑ¹·Õè 27 ¡Ñ¹ÂÒÂ¹ 2556</p>\r\n<p><img width="274" height="206" alt="" src="/pic/Image/IMG_3778(1).jpg" />&nbsp; <img width="274" height="206" alt="" src="/pic/Image/IMG_3776(1).jpg" /></p>\r\n<p><img width="274" height="206" alt="" src="/pic/Image/IMG_3771(1).jpg" />&nbsp; <img width="274" height="206" alt="" src="/pic/Image/IMG_3770(1).jpg" /></p>', 's_1381834956.IMG_3778.JPG', '1381834956.IMG_3778.JPG', '', '', 0, '2013-10-15 18:02:36');
INSERT INTO `newscenter3` VALUES (00091, '', 'ÇÒ§¾Ç§ÁÒÅÒ¶ÇÒÂÃÒªÊÑ¡¡ÒÃÐ¾ÃÐÃÒªÒ¹ØÊÒÇÃÕÂì ÊÁà´ç¨¾ÃÐÁËÔµÅÒ¸ÔàºÈÃ Í´ØÅÂà´ªÇÔ¡ÃÁ ¾ÃÐºÃÁÃÒªª¹¡', '', '<p>ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·ÂÃèÇÁ¡ÑºÊÁÒ¤ÁâÃ¤äµáËè§»ÃÐà·Èä·Âä´éÃèÇÁ¡Ñ¹ÇÒ§¾Ç§ÁÒÅÒ¶ÇÒÂÃÒªÊÑ¡¡ÒÃÐ¾ÃÐÃÒªÒ¹ØÊÒÇÃÕÂì ÊÁà´ç¨¾ÃÐÁËÔµÅÒ¸ÔàºÈÃ Í´ØÅÂà´ªÇÔ¡ÃÁ ¾ÃÐºÃÁÃÒªª¹¡ ³ âÃ§¾ÂÒºÒÅÈÔÃÔÃÒªã¹ÇÑ¹·Õè 24 ¡Ñ¹ÂÒÂ¹ 2556 à¾×èÍÃÐÅÖ¡¶Ö§ÊÁà´ç¨¾ÃÐÁËÔµÅÒ¸ÔàºÈÃ Í´ØÅÂà´ªÇÔ¡ÃÁ ¾ÃÐºÃÁÃÒªª¹¡ Í§¤ìºÔ´ÒáËè§¡ÒÃá¾·Âìá¼¹»Ñ¨¨ØºÑ¹¢Í§ä·Â áÅÐÍ§¤ìºÔ´ÒáËè§¡ÒÃÊÒ¸ÒÃ³ÊØ¢ä·Â «Öè§¤³Ðá¾·ÂÈÒÊµÃìÈÔÃÔÃÒª¾ÂÒºÒÅ ÁËÒÇÔ·ÂÒÅÑÂÁËÔ´Å ä´é¨Ñ´ãËéÁÕ¾Ô¸Õ¹Õé·Ø¡»Õ </p>\r\n<p><img width="274" height="183" alt="" src="/pic/Image/IMG_7888(2).jpg" />&nbsp; &nbsp;<img width="274" height="183" alt="" src="/pic/Image/IMG_7877(2).jpg" /></p>\r\n<p><img width="274" height="183" alt="" src="/pic/Image/IMG_7902(2).jpg" />&nbsp;&nbsp; <img width="274" height="183" alt="" src="/pic/Image/IMG_7871(3).jpg" /></p>', 's_1381834641.IMG_7888.JPG', '1381834641.IMG_7888.JPG', '', '', 0, '2013-10-15 17:57:22');

-- --------------------------------------------------------

-- 
-- Table structure for table `newscenter4`
-- 

CREATE TABLE `newscenter4` (
  `news_id` int(5) unsigned zerofill NOT NULL auto_increment,
  `title_eng` varchar(250) NOT NULL default '',
  `title_th` varchar(250) NOT NULL default '',
  `details_eng` text NOT NULL,
  `details_th` text NOT NULL,
  `pic_s` varchar(100) NOT NULL default '',
  `pic_b` varchar(100) NOT NULL default '',
  `file_name` varchar(255) NOT NULL,
  `file_down` varchar(255) NOT NULL,
  `view` int(5) NOT NULL default '0',
  `ddpost` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`news_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

-- 
-- Dumping data for table `newscenter4`
-- 

INSERT INTO `newscenter4` VALUES (00063, '', 'ÀÒ¾¡ÒÃ»ÃÐªØÁÇÔªÒ¡ÒÃ»ÃÐ¨Ó»Õ  Practical Point in Organ Transplantation 2010', '', '<p><font size="1">ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â ä´é¨Ñ´¡ÒÃ»ÃÐªØÁÇÔªÒ¡ÒÃ»ÃÐ¨Ó»Õ&nbsp;àÁ×èÍÇÑ¹·Õè 18-19 ÁÕ¹Ò¤Á 2553 ³ âÃ§áÃÁ Radisson&nbsp;¨.¡ÃØ§à·¾&nbsp; «Öè§ÁÕËÑÇ¢éÍ¡ÒÃºÃÃÂÒÂ·Õè¹èÒÊ¹ã¨&nbsp;&nbsp; à¡ÕÂÇ¡ÑºÃÒÂ§Ò¹»ÃÐ¨Ó»Õ Transplant registry, ¤ÇÒÁÃÙéãËÁèà¡ÕèÂÇ¡Ñº¡ÒÃ»ÅÙ¡¶èÒÂÍÇÑÂÇÐ, ¡ÒÃ¹ÓàÊ¹Í¼Å§Ò¹·Ò§ÇÔªÒ¡ÒÃ ã¹¡ÒÃ»ÃÐªØÁ¤ÃÑé§¹ÕéÁÕ¼Ùéà¢éÒÅ§·ÐàºÕÂ¹»ÃÐÁÒ³ 300 ¤¹ </font></p>\r\n<p><font size="1"><img height="134" alt="" width="200" src="/pic/Image/pic11(4).jpg" />&nbsp; <img height="134" alt="" width="200" src="/pic/Image/pic12(3).jpg" /></font>&nbsp;&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><img height="134" alt="" width="200" src="/pic/Image/pic13(2).jpg" />&nbsp; <img height="134" alt="" width="200" src="/pic/Image/pic16(2).jpg" /></p>\r\n<p><img height="134" alt="" width="200" src="/pic/Image/pic15(2).jpg" />&nbsp; <img height="134" alt="" width="200" src="/pic/Image/DSC_0191.jpg" /></p>', 's_1269457642.pic12.jpg', '1269457642.pic12.jpg', '', '', 0, '2010-03-25 02:07:22');
INSERT INTO `newscenter4` VALUES (00060, '', 'ÀÒ¾¡ÒÃ»ÃÐªØÁÇÔªÒ¡ÒÃ¡ÅÒ§»Õ Strategies to Improve Long-Term Outcomes after Organ Transplantation', '', '<p><font size="1">ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â ä´é¨Ñ´¡ÒÃ»ÃÐªØÁÇÔªÒ¡ÒÃ¡ÅÒ§»Õ àÁ×èÍÇÑ¹·Õè 9-11 µØÅÒ¤Á 2552 ³ ËéÍ§»ÃÐªØÁá»«Ô¿Ô¤á¡Ã¹´ì âÃ§áÃÁ The Tide Resort ËÒ´ºÒ§áÊ¹ ¨.ªÅºØÃÕ â´ÂäÁèà¡çº¤èÒÅ§·ÐàºÕÂ¹ ã¹¡ÒÃ»ÃÐªØÁ¤ÃÑé§¹ÕéÁÕ¼Ùéà¢éÒÅ§·ÐàºÕÂ¹»ÃÐÁÒ³ 300 ¤¹»ÃÐ¡Íº´éÇÂ á¾·Âì ¾ÂÒºÒÅ¼Ùé»ÃÐÊÒ¹§Ò¹¡ÒÃ»ÅÙ¡¶èÒÂÍÇÑÂÇÐ ¾ÂÒºÒÅ áÅÐ¼ÙéÊ¹à¢éÒ»ÃÐªØÁ&nbsp; «Öè§ÁÕËÑÇ¢éÍ¡ÒÃºÃÃÂÒÂ·Õè¹èÒÊ¹ã¨&nbsp;&nbsp; ÊÁÒ¤ÁÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â áÅÐ¤³Ð¡ÃÃÁ¡ÒÃ¨Ñ´§Ò¹¢Í¢Íº¤Ø³¼Ùéà¢éÒÃèÇÁ»ÃÐªØÁ&nbsp; ÊÓ¹Ñ¡§Ò¹ËÅÑ¡»ÃÐ¡Ñ¹ÊØ¢ÀÒ¾áËè§ªÒµÔ áÅÐºÃÔÉÑ·µèÒ§æ·ÕèãËé¡ÒÃÊ¹ÑºÊ¹Ø¹ã¹¡ÒÃ¨Ñ´»ÃÐªØÁã¹¤ÃÑé§¹Õé</font></p>\r\n<p><img height="133" alt="" width="200" src="/pic/Image/New2(1).jpg" />&nbsp;&nbsp; <img height="133" alt="" width="200" src="/pic/Image/New8.jpg" /></p>\r\n<p><img height="133" alt="" width="200" src="/pic/Image/New6.jpg" />&nbsp;&nbsp; <img height="133" alt="" width="200" src="/pic/Image/New3(3).jpg" /></p>\r\n<p><img height="133" alt="" width="200" src="/pic/Image/New10.jpg" />&nbsp;&nbsp; <img height="133" alt="" width="200" src="/pic/Image/New9.jpg" />&nbsp; </p>\r\n<p><img height="133" alt="" width="200" src="/pic/Image/New4.jpg" />&nbsp;&nbsp; <img height="133" alt="" width="200" src="/pic/Image/New11(1).jpg" />&nbsp; </p>\r\n<p><img height="133" alt="" width="200" src="/pic/Image/NewIMG.jpg" />&nbsp; <img height="133" alt="" width="200" src="/pic/Image/New7(3).jpg" /></p>', 's_1255695037.NewIMG.jpg', '1255695037.NewIMG.jpg', '', '', 0, '2009-10-15 12:59:15');
INSERT INTO `newscenter4` VALUES (00064, '', 'ÀÒ¾¡ÒÃ»ÃÐªØÁÇÔªÒ¡ÒÃ Intensive Course in Kidney Transplantation', '', '<p><font size="1">ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â ä´é¨Ñ´¡ÒÃ»ÃÐªØÁÇÔªÒ¡ÒÃ&nbsp; </font><font size="1"><font style="BACKGROUND-COLOR: #ccffff" color="#0000ff">&quot;Intensive Course in Kidney Transplantation&quot; </font>ã¹ÇÑ¹·Õè 31 ¡.¤.-1 Ê.¤. 2553 ·Õè ËéÍ§»ÃÐªØÁÇÒÊ¹Ò ªÑé¹ 3 âÃ§áÃÁàÃ´ÔÊÑ¹ ¶¹¹ ¾ÃÐÃÒÁà¡éÒ ¡ÃØ§à·¾Ï â´ÂÁÕÇÑµØ»ÃÐÊ§¤ìà¼Âá¾Ãè¤ÇÒÁÃÙé¾×é¹°Ò¹áÅÐá¹Ç·Ò§»¯ÔºÑµÔÊÓËÃÑº¼Ùé»èÇÂ»ÅÙ¡¶èÒÂäµÊÓËÃÑºá¾·Âì»ÃÐ¨ÓºéÒ¹µèÍÂÍ´ÍÒÂØÃÈÒÊµÃìâÃ¤äµáÅÐ¡ØÁÒÃàÇªÈÒÊµÃìâÃ¤äµ&nbsp;ã¹¡ÒÃ»ÃÐªØÁ¤ÃÑé§¹ÕéÁÕ¼Ùéà¢éÒÅ§·ÐàºÕÂ¹»ÃÐÁÒ³ 200 ¤¹</font></p>\r\n<p><img height="150" alt="" width="200" src="/pic/Image/Intensive3.jpg" />&nbsp;&nbsp; <img height="150" alt="" width="200" src="/pic/Image/Intensive4.jpg" /></p>\r\n<p><img height="150" alt="" width="200" src="/pic/Image/Intensive1.jpg" />&nbsp;&nbsp; <img height="150" alt="" width="200" src="/pic/Image/Intensive2.jpg" /></p>', 's_1282671268.FrontInt.jpg', '1282671268.FrontInt.jpg', '', '', 0, '2010-08-25 00:04:17');
INSERT INTO `newscenter4` VALUES (00065, '', 'Í¹Ø¡ÃÃÁ¡ÒÃ½èÒÂÅ§·ÐàºÕÂ¹ ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐ¨Ñ´»ÃÐªØÁ Transplant coordinators', '', '<p><font size="1">ã¹ÇÑ¹·Õè 2 ¡Ñ¹ÂÒÂ¹ 2553 ·Õè¼èÒ¹ÁÒ ÃÈ. ¹¾.&nbsp;ÂÔè§ÂÈ ÍÇÔËÔ§ÊÒ¹¹·ì »ÃÐ¸Ò¹Í¹Ø¡ÃÃÁ¡ÒÃ½èÒÂÅ§·ÐàºÕÂ¹ ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â ä´é¨Ñ´»ÃÐªØÁáÅÐ work shop á¡è¼Ùé»ÃÐÊÒ¹§Ò¹»ÅÙ¡¶èÒÂÍÇÑÂÇÐ (transplant coordinators) ã¹¡ÒÃÅ§¢éÍÁÙÅ¼Ùé»èÇÂã¹ÃÐººÅ§·ÐàºÕÂ¹¢Í§ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐÏ â´ÂÁÕÍÒ¨ÒÃÂì¼ÙéàªÕèÂÇªÒ­ÁÒà»ç¹ÇÔ·ÂÒ¡Ã àªè¹ Í. ¾­. ÍµÔ¾Ã ÍÔ§¤ìÊÒ¸Ôµ, ¼È.¹¾.ªÅ¸Ô» ¾§ÈìÊ¡ØÅ, Í. ¾­.¹ÅÔ¹Õ&nbsp; à»ÃÁÑÉà°ÕÂÃ </font></p>\r\n<font size="2"><font size="2">\r\n<p>&nbsp;</p>\r\n<p>&nbsp;<img height="188" width="250" alt="" src="/pic/Image/IMG_0306.jpg" />&nbsp; <img height="188" width="250" alt="" src="/pic/Image/IMG_0300.jpg" /></p>\r\n</font></font>&nbsp;<img height="188" width="250" alt="" src="/pic/Image/IMG_0299.jpg" />&nbsp; <img height="188" width="250" alt="" src="/pic/Image/IMG_0305.jpg" />', 's_1284396139.IMG_0306.jpg', '1284396139.IMG_0306.jpg', '', '', 0, '2010-09-13 23:42:22');
INSERT INTO `newscenter4` VALUES (00066, '', 'ÀÒ¾¡ÒÃ»ÃÐªØÁÇÔªÒ¡ÒÃ “Challenges and Controversies in Organ Transplantation”', '', '<p><font size="1">µÒÁ·ÕèÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â¨Ñ´¡ÒÃ»ÃÐªØÁÇÔªÒ¡ÒÃ¡ÅÒ§»Õ &nbsp;<strong><font style="BACKGROUND-COLOR: #ccffff" color="#0000ff">&quot;</font></strong></font><span style="FONT-SIZE: 20pt; COLOR: red"><font size="1"><font color="#000000"><strong><font style="BACKGROUND-COLOR: #ccffff" color="#0000ff">Challenges and Controversies in Organ Transplantation&rdquo;</font></strong>&nbsp; ÇÑ¹·Õè 5-7 <span>¾ÄÈ¨Ô¡ÒÂ¹ 2553 </span></font></font><font color="#000000" size="1">³&nbsp;ËéÍ§»ÃÐªØÁá¡Ã¹´ìàÊÁÒ âÃ§áÃÁÎÍÅÔà´Âì ÍÔ¹¹ì ÃÕÊÍÃì· ÃÕà¨é¹·ì ºÕª ªÐÍíÒ&nbsp; </font></span><span style="FONT-SIZE: 20pt; COLOR: red"><font color="#000000" size="1">¨. à¾ªÃºØÃÕ ÁÕá¾·Âì, ¾ÂÒºÒÅáÅÐ¼ÙéÊ¹ã¨à¢éÒÃèÇÁ»ÃÐªØÁ¨Ó¹Ç¹ÁÒ¡ â´Â¡ÒÃ»ÃÐªØÁ¤ÃÑé§¹Õé&nbsp;&nbsp; Í´Õµ¹ÒÂ¡ÊÁÒ¤ÁÏ È.à¡ÕÂÃµÔ¤Ø³ ¹¾. ªÇÅÔµ ÍèÍ§¨ÃÔµ, È. à¡ÕÂÃµÔ¤Ø³&nbsp;&nbsp;¹¾. ä¾ºÙÅÂì&nbsp; ¨Ôµ»ÃÐä¾, ¾Å.µ. Ë­Ô§ ¾­.&nbsp;ÍØÉ³Ò&nbsp; ÅØÇÕÃÐ ä´éãËéà¡ÕÂÃµÔà¢éÒÃèÇÁ¡ÒÃ»ÃÐªØÁ </font></span></p>\r\n<p><span style="FONT-SIZE: 20pt; COLOR: red"><img height="167" width="250" alt="" src="/pic/Image/TTSDSC_0180.jpg" />&nbsp;<img height="167" width="250" alt="" src="/pic/Image/TTSDSC_0143.jpg" /></span></p>\r\n<p><span style="FONT-SIZE: 20pt; COLOR: red"><img height="166" width="250" alt="" src="/pic/Image/TTSDSC_0073.jpg" />&nbsp;<img height="166" width="250" alt="" src="/pic/Image/TTSDSC_0150.jpg" /></span></p>\r\n<p><span style="FONT-SIZE: 20pt; COLOR: red"><img height="167" width="250" alt="" src="/pic/Image/TTSDSC_0341.jpg" />&nbsp;<img height="167" width="250" alt="" src="/pic/Image/TTSDSC_0153.jpg" /></span></p>\r\n<p><a href="/pic/File/Poster Update.jpg"><font size="1">Download poster</font></a><br />\r\n<font color="#000000" size="1"><a href="http://www.transplantthai.org/pic/File/AgendaNov53.pdf">Download ¡ÓË¹´¡ÒÃ»ÃÐªØÁÇÔªÒ¡ÒÃ</a></font></p>\r\n<div></div>\r\n<div></div>\r\n<div><img height="572" alt="" width="400" src="/pic/Image/Poster2010.jpg" /></div>', 's_1291480848.PicFront.jpg', '1291480848.PicFront.jpg', '', '', 0, '2010-09-30 00:37:25');
INSERT INTO `newscenter4` VALUES (00067, '', 'ÀÒ¾¡ÒÃ¨Ñ´»ÃÐªØÁÇÔªÒ¡ÒÃ»ÃÐ¨Ó»Õ Global strategies to meet the organ need', '', '<p><font size="1">ã¹¡ÒÃ»ÃÐªØÁ»ÃÐ¨Ó»ÕÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·ÂÇÑ¹·Õè 13-14 ÁÕ¹Ò¤Á 2554 ä´é¨Ñ´ËÑÇ¢éÍ»ÃÐªØÁáÅÐÊÑÁÁ¹Ò¤×Í &quot;Global Strategies to meet the organ need&quot; à¾×èÍÈÖ¡ÉÒáÅÐ¾Ñ²¹ÒÈÑ¡ÂÀÒ¾ã¹¡ÒÃºÃÔ¨Ò¤ÍÇÑÂÇÐ&nbsp; µÅÍ´¨¹¡ÒÃ´ÙáÅ¼Ùé»èÇÂÊÁÍ§µÒÂ&nbsp; ã¹¡ÒÃ¹ÕéÁÕÇÔ·ÂÒ¡Ã¼Ùé·Ã§¤Ø³ÇØ²Ô á¾·Âì ¾ÂÒºÒÅ à¢éÒÃèÇÁ»ÃÐªØÁáÅÐ workshop ¨Ó¹Ç¹ÁÒ¡</font></p>\r\n<p><img height="167" alt="" width="250" src="/pic/Image/217508_139468036126637_100001903250047_248777_5661784_n.jpg" />&nbsp; <img height="167" alt="" width="223" src="/pic/Image/228014_142176415855799_100001903250047_264302_6064688_n.jpg" /></p>\r\n<p><img height="167" alt="" width="250" src="/pic/Image/206673_139468579459916_100001903250047_248799_8375606_n.jpg" />&nbsp; <img height="167" alt="" width="250" src="/pic/Image/207401_139468696126571_100001903250047_248804_7608465_n.jpg" /></p>\r\n<p><img height="167" alt="" width="250" src="/pic/Image/218088_139468672793240_100001903250047_248803_2095349_n.jpg" />&nbsp; <img height="167" alt="" width="250" src="/pic/Image/215348_139468856126555_100001903250047_248812_7601890_n.jpg" /></p>\r\n<p><img height="188" alt="" width="250" src="/pic/Image/230707_142177185855722_100001903250047_264316_3551701_n.jpg" />&nbsp; <img height="188" alt="" width="250" src="/pic/Image/230707_142177252522382_100001903250047_264319_4302855_n.jpg" /></p>\r\n<p><img height="188" alt="" width="250" src="/pic/Image/230887_142177232522384_100001903250047_264318_8191005_n.jpg" />&nbsp; <img height="188" alt="" width="250" src="/pic/Image/228192_142177162522391_100001903250047_264315_4339787_n(1).jpg" /></p>\r\n<p><img height="188" alt="" width="250" src="/pic/Image/226052_142177275855713_100001903250047_264320_1744215_n.jpg" />&nbsp; <img height="188" alt="" width="250" src="/pic/Image/225132_142177489189025_100001903250047_264328_6628745_n.jpg" /></p>\r\n<p>&nbsp;</p>', 's_1318440646.206673_139468579459916_100001903250047_248799_8375606_n.jpg', '1318440646.206673_139468579459916_100001903250047_248799_8375606_n.jpg', '', '', 0, '2011-10-13 00:30:47');
INSERT INTO `newscenter4` VALUES (00068, '', 'ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐÏ ÁÍºà§Ô¹á¡èÁÙÅ¹Ô¸ÔÃÒª»ÃÐªÒ¹Øà¤ÃÒÐËìªèÇÂàËÅ×Í¼Ùé»ÃÐÊºÍØ·¡ÀÑÂ', '', '<p><font size="1">àÁ×èÍÇÑ¹·Õè 27 àÁÉÒÂ¹ 2554 ·Õè¼èÒ¹ÁÒ È. ¹¾. ÇÊÑ¹µì ÊØàÁ¸¡ØÅ ä´éÁÍºà§Ô¹ã¹¹ÒÁÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Âá¡èÁÙÅ¹Ô¸ÔÃÒª»ÃÐªÒ¹Øà¤ÃÒÐËìà¾×èÍªèÇÂà¡Å×Í¼Ùé»ÃÐÊºÍØ·¡ÀÑÂ</font></p>\r\n<p>&nbsp;</p>\r\n<p><img height="188" width="250" alt="" src="/pic/Image/228714_141144309292343_100001903250047_258687_1885192_n.jpg" />&nbsp;&nbsp;&nbsp;<img height="188" width="250" alt="" src="/pic/Image/225811_141144465958994_100001903250047_258695_3865810_n.jpg" /><img height="188" width="250" alt="" src="/pic/Image/216436_141144242625683_100001903250047_258685_4138859_n.jpg" />&nbsp; <img height="188" width="250" alt="" src="/pic/Image/224875_141144399292334_100001903250047_258692_3932522_n.jpg" /></p>\r\n<p>&nbsp;</p>', 's_1318441418.228714_141144309292343_100001903250047_258687_1885192_n.jpg', '1318441418.228714_141144309292343_100001903250047_258687_1885192_n.jpg', '', '', 0, '2011-10-13 00:43:38');
INSERT INTO `newscenter4` VALUES (00069, '', '»ÃÐªØÁ¤³Ð»¯ÔºÑµÔ§Ò¹Å§·ÐàºÕÂ¹»ÅÙ¡¶èÒÂÍÇÑÂÇÐÊÓËÃÑº¾ÂÒºÒÅ Coordinator ', '', '<p>¤³ÐÍ¹Ø¡ÃÃÁ¡ÒÃÅ§·ÐàºÕÂ¹¡ÒÃ»ÅÙ¡¶èÒÂÍÇÑÂÇÐ¹Óâ´Â ¾.Í.¹¾.Í´ÔÊÃ³ì ÅÓà¾Ò¾§Èì ¹ÒÂ·ÐàºÕÂ¹áÅÐÊÒÃÊ¹à·È ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â ä´é¨Ñ´»ÃÐªØÁ¤³Ð»¯ÔºÑµÔ§Ò¹Å§·ÐàºÕÂ¹»ÅÙ¡¶èÒÂÍÇÑÂÇÐÊÓËÃÑº¾ÂÒºÒÅ Coordinator ¢Öé¹ à¾×èÍ¨Ñ´·ÓÃÒÂ§Ò¹¢éÍÁÙÅ¡ÒÃ»ÅÙ¡¶èÒÂäµã¹»ÃÐà·Èä·Â»ÃÐ¨Ó»Õ2557 ·ÓãËéÊÒÁÒÃ¶ÇÔà¤ÃÒÐËì¢éÍÁÙÅ¡ÒÃ»ÅÙ¡¶èÒÂÍÇÑÂÇÐ¢Í§»ÃÐà·Èä·Â ÍÑ¹à¡Ô´»ÃÐâÂª¹ìÍÂèÒ§¡ÇéÒ§¢ÇÒ§µèÍÇ§¡ÒÃ»ÅÙ¡¶èÒÂÍÇÑÂÇÐã¹»ÃÐà·Èä·ÂáÅÐµèÒ§»ÃÐà·Èã¹ÇÑ¹¾Ø¸·Õè18 ¡Ñ¹ÂÒÂ¹ 2556 ³ ËéÍ§»ÃÐªØÁÊÁÒ¤ÁâÃ¤äµáËè§»ÃÐà·Èä·Â</p>\r\n<p><img width="274" height="206" alt="" src="/pic/Image/IMG_3727.JPG" />&nbsp; <img width="274" height="206" alt="" src="/pic/Image/IMG_3728(1).jpg" /></p>\r\n<p><img width="274" height="206" alt="" src="/pic/Image/IMG_3739.JPG" />&nbsp; <img width="274" height="206" alt="" src="/pic/Image/IMG_3740.JPG" /></p>\r\n<p>&nbsp; </p>\r\n<p>&nbsp; </p>\r\n<p>&nbsp;</p>', 's_1381833607.IMG_3727.JPG', '1381833607.IMG_3727.JPG', '', '', 0, '2011-10-13 00:57:18');
INSERT INTO `newscenter4` VALUES (00073, '', '»ÃÐªØÁ Thai Transplant Care', '<img alt="" src="nuch" />', '<p align="right">&nbsp;</p>\r\n<p>ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Âä´é¨Ñ´·Ó á¹Ç·Ò§»¯ÔºÑµÔã¹¡ÒÃ¾Ñ²¹ÒÃÐºº¡ÒÃ»ÅÙ¡¶èÒÂäµã¹»ÃÐà·Èä·Â (Thai Transplant Care) â´ÂÁÕ ¹¾.»ÃÐ´ÔÉ°&nbsp; ÊÔ¹¸Ç³Ã§¤ì ÃÑ°Á¹µÃÕÇèÒ¡ÒÃ¡ÃÐ·ÃÇ§ÊÒ¸ÒÃ³ÊØ¢à»ç¹»ÃÐ¸Ò¹à»Ô´§Ò¹ ã¹ÇÑ¹·Õè 19 &ndash; 20 ¡Ñ¹ÂÒÂ¹ 2556 ³ âÃ§áÃÁÁ Renaissance à¾×èÍà¼Âá¾ÃèãËéá¾·Âì áÅÐË¹èÇÂ§Ò¹¼Ùéà¡ÕèÂÇ¢éÍ§µèÒ§æ ¹Óä»ÊÙèá¹Ç·Ò§´ÙáÅ¼Ùé»èÇÂ·ÕèàËÁÒÐÊÁ ÃÇÁ·Ñé§àÊ¹Íá¹Ç·Ò§¡ÒÃàºÔ¡¨èÒÂÊÓËÃÑº 3 ¡Í§·Ø¹¤×Í Ê»Êª. »ÃÐ¡Ñ¹ÊÑ§¤Á áÅÐ¡ÃÁºÑ­ªÕ¡ÅÒ§ â´ÂÂÖ´à»ç¹á¹Ç·Ò§»¯ÔºÑµÔã¹¡ÒÃàºÔ¡¨èÒÂÊÓËÃÑº¤¹ä¢é»ÅÙ¡¶èÒÂäµµèÍä»</p>\r\n<p><img alt="" width="274" height="183" src="/pic/Image/IMG_6447(2).jpg" />&nbsp;<img alt="" width="274" height="183" src="http://www.transplantthai.org/pic/Image/IMG_6478.JPG" /></p>\r\n<p><img alt="" width="274" height="183" src="/pic/Image/IMG_6440.jpg" />&nbsp;<img alt="" width="274" height="183" src="/pic/Image/IMG_6484.jpg" /></p>\r\n<p><img width="274" height="183" alt="" src="/pic/Image/IMG_6426.JPG" />&nbsp;&nbsp;<img width="274" height="183" alt="" src="/pic/Image/IMG_6612(1).jpg" /></p>\r\n<p align="right">&nbsp;</p>\r\n<p align="left">&nbsp;&nbsp;</p>\r\n<p align="left">&nbsp;</p>', 's_1380704152.IMG_6493.JPG', '1380704152.IMG_6493.JPG', '', 'IMG_6819.JPG', 0, '2013-10-02 15:55:56');
INSERT INTO `newscenter4` VALUES (00076, '', '»ÃÐªØÁÇÔªÒ¡ÒÃ¡ÅÒ§»Õ ¤ÃÑé§·Õè 8', '', '<p><span style="FONT-FAMILY: ''Cordia New'',''sans-serif''; FONT-SIZE: 14pt; mso-fareast-font-family: Thonburi; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: TH" lang="TH"><span style="FONT-SIZE: 14pt">ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â ä´é¨Ñ´»ÃÐªØÁÇÔªÒ¡ÒÃ¡ÅÒ§»Õ¤ÃÑé§·Õè 8 <strong>ã¹ÇÑ¹·Õè 26</strong></span><strong><span style="FONT-SIZE: 14pt"> &ndash; 27 ¡Ñ¹ÂÒÂ¹ 2556</span></strong><span style="FONT-SIZE: 14pt"> <strong>³ </strong></span><strong><span style="FONT-SIZE: 14pt">âÃ§áÃÁÍÔÁ¾ÔàÃÕÂÅ ¤ÇÕ¹Êì»ÒÃì¤&nbsp;¡ÃØ§à·¾Ï</span></strong><span style="FONT-SIZE: 14pt">ã¹ËÑÇ¢éÍ </span><strong><span style="FONT-SIZE: 14pt">&ldquo;<span style="BACKGROUND: white; COLOR: #222222">Challenging</span> in organ transplantation&rdquo;</span></strong><span style="FONT-SIZE: 14pt"> â´ÂÁÕÇÑµ¶Ø»ÃÐÊ§¤ìà¾×èÍáÅ¡à»ÅÕèÂ¹¤ÇÒÁÃÙéáÅÐÇÔÇÑ²¹Ò¡ÒÃãËÁè æ ã¹¡ÒÃ»ÅÙ¡¶èÒÂÍÇÑÂÇÐ ·Ñé§¡ÒÃ»ÅÙ¡¶èÒÂäµ µÑº áÅÐËÑÇã¨ µÅÍ´¨¹à¾×èÍ¾Ñ²¹Ò¡ÒÃ»ÅÙ¡¶èÒÂÍÇÑÂÇÐã¹»ÃÐà·Èä·ÂãËé´ÕÂÔè§¢Öé¹·Ñé§ã¹àªÔ§»ÃÔÁÒ³áÅÐ¤Ø³ÀÒ¾</span></span></p>\r\n<p><span style="FONT-FAMILY: ''Cordia New'',''sans-serif''; FONT-SIZE: 14pt; mso-fareast-font-family: Thonburi; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: TH" lang="TH"><span style="FONT-SIZE: 14pt"><img alt="" width="274" height="183" src="/pic/Image/1391630_536314033108700_1107880335_n.jpg" />&nbsp; <img alt="" width="274" height="183" src="/pic/Image/1378465_536308919775878_961662145_n.jpg" /></span></span></p>\r\n<p><span style="FONT-FAMILY: ''Cordia New'',''sans-serif''; FONT-SIZE: 14pt; mso-fareast-font-family: Thonburi; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: TH" lang="TH"><span style="FONT-SIZE: 14pt"><img alt="" width="274" height="183" src="/pic/Image/IMG_7349.JPG" />&nbsp; <img style="WIDTH: 273px; HEIGHT: 200px" alt="" width="300" height="200" src="/pic/Image/IMG_7757.JPG" /></span></span><span style="FONT-FAMILY: ''Cordia New'',''sans-serif''; FONT-SIZE: 14pt; mso-fareast-font-family: Thonburi; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: TH" lang="TH"></span></p>\r\n<p><span style="FONT-FAMILY: ''Cordia New'',''sans-serif''; FONT-SIZE: 14pt; mso-fareast-font-family: Thonburi; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: TH" lang="TH"><span style="FONT-SIZE: 14pt"><img style="WIDTH: 274px; HEIGHT: 200px" width="300" height="200" alt="" src="/pic/Image/744.jpg" />&nbsp;&nbsp;<img style="WIDTH: 274px; HEIGHT: 197px" alt="" width="274" height="183" src="/pic/Image/1375267_536300523110051_583581975_n.jpg" /></span></span></p>\r\n<p><span style="FONT-FAMILY: ''Cordia New'',''sans-serif''; FONT-SIZE: 14pt; mso-fareast-font-family: Thonburi; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: TH" lang="TH"><span style="FONT-SIZE: 14pt"><img alt="" width="274" height="183" src="/pic/Image/1381464_536315173108586_690850230_n.jpg" />&nbsp; <img alt="" width="274" height="183" src="/pic/Image/zIMG_7663 (9).JPG" /></span></span></p>', 's_1381753694.1383903_536322786441158_1963800946_n.jpg', '1381753694.1383903_536322786441158_1963800946_n.jpg', '', '7539.png', 0, '2013-10-14 19:14:34');

-- --------------------------------------------------------

-- 
-- Table structure for table `newscenter5`
-- 

CREATE TABLE `newscenter5` (
  `news_id` int(5) unsigned zerofill NOT NULL auto_increment,
  `title_eng` varchar(250) NOT NULL default '',
  `title_th` varchar(250) NOT NULL default '',
  `details_eng` text NOT NULL,
  `details_th` text NOT NULL,
  `pic_s` varchar(100) NOT NULL default '',
  `pic_b` varchar(100) NOT NULL default '',
  `file_name` varchar(255) NOT NULL,
  `file_down` varchar(255) NOT NULL,
  `view` int(5) NOT NULL default '0',
  `ddpost` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`news_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

-- 
-- Dumping data for table `newscenter5`
-- 

INSERT INTO `newscenter5` VALUES (00055, '', '¤ÙèÁ×Í»ÃÐÊÒ¹§Ò¹¡ÒÃ»ÅÙ¡¶èÒÂÍÇÑÂÇÐ ÊÀÒ¡ÒªÒ´ä·Â', '', '<p><font face="Arial" size="1">¤ÙèÁ×Í»ÃÐÊÒ¹§Ò¹¡ÒÃ»ÅÙ¡¶èÒÂÍÇÑÂÇÐ ÊÀÒ¡ÒªÒ´ä·Â ÊÓËÃÑº¾ÂÒºÒÅ¼Ùé»ÃÐÊÒ¹§Ò¹ â´ÂÁÕà¹×éÍËÒà¡ÕèÂÇ¡ÑºÈÙ¹ÂìÃÑººÃÔ¨Ò¤ÍÇÑÂÇÐ&nbsp;&nbsp;¡ÒÃ»ÅÙ¡¶èÒÂÍÇÑÂÇÐ&nbsp;&nbsp;à¡³±ì¡ÒÃÇÔ¹Ô¨©ÑÂÀÒÇÐÊÁÍ§µÒÂµÒÁ¡ÓË¹´¢Í§á¾·ÂÊÀÒ ¼ÙéºÃÔ¨Ò¤ÁÕªÕÇÔµ·ÕèÊÒÁÒÃ¶ºÃÔ¨Ò¤ãËé¼ÙéÃÑºÍÇÑÂÇÐä´éµÒÁ¡®ËÁÒÂ&nbsp; ¨Ñ´·Óâ´Â ÈÙ¹ÂìÃÑººÃÔ¨Ò¤ÍÇÑÂÇÐÊÀÒ¡ÒªÒ´ä·Â</font></p>\r\n<p><a target="_blank" href="http://www.organdonate.in.th/Download/pdf/guideline.pdf"><font size="1">´ÒÇ¹ìâËÅ´¤ÙèÁ×Í</font></a></p>\r\n<p><a href="http://www.organdonate.in.th/Download/pdf/guideline.pdf"><img height="211" alt="" width="150" src="/pic/Image/Donation.jpg" /></a></p>', 's_1246801681.Untitled-1.jpg', '1246801681.Untitled-1.jpg', '', '', 0, '2009-06-21 02:13:44');
INSERT INTO `newscenter5` VALUES (00056, '', 'á¹Ç·Ò§¡ÒÃàºÔ¡¨èÒÂÊÓËÃÑº¼Ùé»èÇÂÊÔ·¸Ôì ÃÑ¡ÉÒ¾ÂÒºÒÅã¹ÃÐººËÅÑ¡»ÃÐ¡Ñ¹ ÊØ¢ÀÒ¾áËè§ªÒµÔ', '', '<p><font face="Arial"><font size="1">ã¹»Ñ¨¨ØºÑ¹ÊÓ¹Ñ¡§Ò¹ËÅÑ¡»ÃÐ¡Ñ¹ÊØ¢ÀÒ¾áËè§ªÒµÔä´é¤ÃÍº¤ÅØÁ¡ÒÃãËé¡ÒÃºÃÔ¡ÒÃ´ÙáÅ¼Ùé»èÇÂà»ÅÕèÂ¹äµ ÊÓËÃÑº¼Ùé»èÇÂäµÇÒÂàÃ×éÍÃÑ§ÃÐÂÐÊØ´·éÒÂ â´Â¤ÃÍº¤ÅØÁ¡ÒÃÃÑ¡ÉÒµÑé§áµè¡èÍ¹à»ÅÕèÂ¹äµ&nbsp; ÃÐËÇèÒ§à»ÅÕèÂ¹äµ áÅÐ¡ÒÃãËéÂÒ¡´ÀÙÁÔ¤ØéÁ¡Ñ¹ ÃÇÁ¶Ö§¡ÒÃ´ÙáÅ¼ÙéºÃÔ¨Ò¤äµ â´ÂÁÕâÃ§¾ÂÒºÒÅ·Õèà¢éÒÃèÇÁâ¤Ã§¡ÒÃä´éá¡è <br />\r\n<br />\r\n</font></font></p>\r\n<ol>\r\n    <li class="style74"><font size="1">Ã¾.ÈÔÃÔÃÒª </font></li>\r\n    <li class="style74"><font size="1">Ã¾.¨ØÌÒÅ§¡Ã³ì </font></li>\r\n    <li class="style74"><font size="1">Ã¾.ÃÒÁÒ¸Ôº´Õ </font></li>\r\n    <li class="style74"><font size="1">Ã¾.¾ÃÐÁ§¡Ø®à¡ÅéÒ </font></li>\r\n    <li class="style74"><font size="1">ÇÔ·ÂÒÅÑÂá¾·ÂÈÒÊµÃìáÅÐÇªÔÃ¾ÂÒºÒÅ </font></li>\r\n    <li class="style74"><font size="1">Ã¾.¸ÃÃÁÈÒÊµÃìà©ÅÔÁ¾ÃÐà¡ÕÂÃµÔ </font></li>\r\n    <li class="style74"><font size="1">Ã¾.ÀÙÁÔ¾ÅÍ´ØÅÂà´ª </font></li>\r\n    <li class="style74"><font size="1">Ã¾.ÃÒªÇÔ¶Õ </font></li>\r\n    <li class="style74"><font size="1">Ã¾.ÁËÒÃÒª¹¤ÃàªÕÂ§ãËÁè </font></li>\r\n    <li class="style74"><font size="1">Ã¾.Ê§¢ÅÒ¹¤ÃÔ¹·Ãì </font></li>\r\n    <li class="style74"><font size="1">Ã¾.ÈÃÕ¹¤ÃÔ¹·Ãì </font></li>\r\n    <li class="style74"><font size="1">Ã¾.¢Í¹á¡è¹ </font></li>\r\n    <li class="style74"><font size="1">Ã¾.ÊÃÃ¾ÊÔ·¸Ô»ÃÐÊ§¤ì </font></li>\r\n    <li class="style74"><font size="1">Ã¾.¾Ø·¸ªÔ¹ÃÒª ¾ÔÉ³ØâÅ¡ </font></li>\r\n    <li class="style74"><font size="1">Ã¾.ÊØÃÒÉ®Ãì¸Ò¹Õ </font></li>\r\n    <li class="style74"><font size="1">Ã¾.ªÅºØÃÕ (à©¾ÒÐ¨èÒÂÂÒ¡´ÀÙÁÔ) </font></li>\r\n    <li class="style74"><font size="1">Ã¾.ÃÐÂÍ§ (à©¾ÒÐ¨èÒÂÂÒ¡´ÀÙÁÔ) </font></li>\r\n</ol>\r\n<p><font size="1">(¢éÍÁÙÅ ³ ÇÑ¹·Õè 30 ¡Ñ¹ÂÒÂ¹ 2553)&nbsp; </font><a href="http://kdf.nhso.go.th/KT/monitor_kt.php"><font size="1">ÍèÒ¹ÃÒÂÅÐàÍÕÂ´à¾ÔèÁàµÔÁ<br />\r\n</font></a><br />\r\n<font size="1"><font color="#ff0000" size="2"><strong>á¹Ç·Ò§¡ÒÃàºÔ¡¨èÒÂÊÓËÃÑºÈÙ¹Âì»ÅÙ¡¶èÒÂÍÇÑÂÇÐÊÓËÃÑº¼Ùé»èÇÂÊÔ·¸ÔìÃÑ¡ÉÒ¾ÂÒºÒÅã¹ÃÐººËÅÑ¡»ÃÐ¡Ñ¹ÊØ¢ÀÒ¾áËè§ªÒµÔ<br />\r\n</strong></font><br />\r\nµÒÁ·ÕèÊÓ¹Ñ¡§Ò¹ËÅÑ¡»ÃÐ¡Ñ¹ÊØ¢ÀÒ¾áËè§ªÒµÔä´é¤ÃÍº¤ÅØÁ¡ÒÃà»ÅÕèÂ¹äµµÒÁ protocol µèÒ§æ â´ÂÁÕÃÒÂÅÐàÍÕÂ´¡ÒÃàºÔ¡µÒÁª¹Ô´¢Í§ÂÒ¡´ÀÙÁÔ¤ØéÁ¡Ñ¹áÅÐÀÒÇÐµèÒ§æ <a target="_blank" href="http://kdf.nhso.go.th/KT/index.php"><font size="1">´Ñ§¹Õé</font></a></font></p>', 's_1246800932.Untitled-1.jpg', '1246800932.Untitled-1.jpg', '', '', 0, '2009-06-21 03:05:29');
INSERT INTO `newscenter5` VALUES (00058, '', 'ÊÒÃÐ¹èÒÃÙé,á¹Ç·Ò§¡ÒÃ»¯ÔºÑµÔµÑÇ áÅÐ¡ÒÃ´ÙáÅÊØ¢ÀÒ¾ÊÓËÃÑº»ÃÐªÒª¹', '', '<p><font face="Arial" size="1">ÊÒÃÐ¹èÒÃÙéà¡ÕèÂÇ¡ÑºâÃ¤äµÇÒÂàÃ×éÍÃÑ§ á¹Ç·Ò§¡ÒÃ»¯ÔºÑµÔµÑÇáÅÐ¡ÒÃ´ÙáÅÃÑ¡ÉÒ´éÇÂÇÔ¸Õ¡ÒÃµèÒ§æ&nbsp; áÅÐÊÒÃÐ¹èÒÃÙéà¡ÕèÂÇ¡Ñº¡ÒÃà»ÅÕèÂ¹äµ&nbsp; ¤ÇÒÁÊÓ¤Ñ­¢Í§ÂÒ¡´ÀÙÁÔ¤ØéÁ¡Ñ¹ áÅÐ¡ÒÃ»¯ÔºÑµÔµÑÇ·ÕèàËÁÒÐÊÁ µÑé§áµè¡èÍ¹áÅÐÀÒÂËÅÑ§¡ÒÃà»ÅÕèÂ¹äµ&nbsp;&nbsp;àÃÕÂºàÃÕÂ§â´Â ÃÈ. ¹¾. Í´ÔÈÇì&nbsp; ·ÑÈ³Ã§¤ì ¤³Ðá¾·ÂÈÒÊµÃì ÁËÒÇÔ·ÂÒÅÑÂ¸ÃÃÁÈÒÊµÃì</font></p>\r\n<p><font face="Arial" size="1"><a href="/pic/File/Manual_kidneyTransplantation(2).pdf">Download Ë¹Ñ§Ê×Í&quot;¤Óá¹Ð¹ÓÊÓËÃÑº¼Ùé»èÇÂ»ÅÙ¡¶èÒÂäµ&quot;</a><br />\r\n<br />\r\n<img height="214" alt="" width="150" src="/pic/Image/Book.jpg" /><br />\r\n</font></p>', 's_1257750935.manualTU.jpg', '1257750935.manualTU.jpg', '', '', 0, '2009-06-21 03:06:02');
INSERT INTO `newscenter5` VALUES (00059, '', 'ÊÒÃÐ¹èÒÃÙéà¡ÕèÂÇ¡Ñº¡ÒÃ»ÅÙ¡¶èÒÂµÑº', '', '<p><font size="1">ÃÇÁÊÒÃÐ¹èÒÃÙéà¡ÕèÂÇ¡Ñº¡ÒÃà»ÅÕèÂ¹µÑº&nbsp;ÇÔ¸Õ¡ÒÃáÅÐ¢éÍºè§ªÕé ÃÇÁ¶Ö§¡ÒÃàµÃÕÂÁ¤ÇÒÁ¾ÃéÍÁ¢Í§¼Ùé»èÇÂ&nbsp; ¡ÒÃãªéÂÒ¡´ÀÙÁÔ¤ØéÁ¡Ñ¹ ¼Å¢Í§¡ÒÃà»ÅÕèÂ¹µÑº áÅÐ¤Ó¶ÒÁ·Õè¾ººèÍÂ ¨Ò¡</font><a href="http://www.chulalivercenter.com/change_liver.php"><font size="1">ÈÙ¹ÂìâÃ¤µÑºáÅÐ»ÅÙ¡¶èÒÂµÑº âÃ§¾ÂÒºÒÅ¨ØÌÒÅ§¡Ã³ì</font> </a></p>\r\n<p>&nbsp;</p>', 's_1258366602.TXLIV.jpg', '1258366602.TXLIV.jpg', '', '', 0, '2009-11-16 17:14:44');
INSERT INTO `newscenter5` VALUES (00061, '', 'ÃÇÁÊ×èÍ- multimedia Ã³Ã§¤ì¡ÒÃºÃÔ¨Ò¤ÍÇÑÂÇÐ', '', '<p>ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â ä´éÃÇºÃÇÁÊ×èÍ-multimedia à¾ÔèÍãËé¤ÇÒÁÃÙéáÅÐÊÃéÒ§·ÑÈ¹¤µÔ·Õè´Õã¹¡ÒÃºÃÔ¨Ò¤ÍÇÑÂÇÐà¾×èÍªèÇÂàËÅ×Í¼Ùé»èÇÂÍÇÑÂÇÐÇÒÂ·Õè¡ÓÅÑ§ÃÍ¤ÍÂÍÇÑÂÇÐÍÕ¡¨Ó¹Ç¹ÁÒ¡</p>\r\n<p><font face="Arial"><a href="http://youtu.be/x0ZerSMSuLo"><img alt="" width="200" height="150" src="/pic/Image/File1.jpg" /></a>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<a href="http://youtu.be/Xkivi6zxn18"><img alt="" width="200" height="150" src="/pic/Image/File2(1).jpg" /></a></font></p>\r\n<p><font face="Arial"><a href="http://youtu.be/x0ZerSMSuLo">http://youtu.be/x0ZerSMSuLo</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font face="Arial"><a href="http://youtu.be/Xkivi6zxn18">http://youtu.be/Xkivi6zxn18</a></font></font></p>\r\n<p>&nbsp;<a href="http://youtu.be/S2N_uq4hgdM"><img alt="" width="200" height="150" src="/pic/Image/File3.jpg" /></a>&nbsp; </p>\r\n<div id="watch-description-text">\r\n<p id="eow-description">&quot;ºØ­ÍÑ¹ÂÔè§ãË­è&quot; áÃ§ºÑ¹´ÒÅã¨ ¨Ò¡¡ÒÃÍèÒ¹º·ÊÑÁÀÒÉ³ì ¤Ø³áÁè¼ÙéµÑ´ÊÔ¹ã¨ºÃÔ¨Ò¤ÍÇÑÂÇÐ¢Í§ÅÙ¡ªÒÂ·Õè¨Ò¡ä»´éÇÂÍØºÑµÔàËµØ ÇèÒä´éÊÙ­àÊÕÂÅÙ¡ªÒÂä»¡èÍ¹ÇÑÂÍÑ¹¤ÇÃâ´Â·ÕèÅÙ¡ªÒÂÂÑ§äÁè·Ñ¹ä´éºÇªãËéáÁè ¡ÒÃºÃÔ¨Ò¤ÍÇÑÂÇÐà»ç¹àÊÁ×Í¹¡ÒÃ·ÓºØ­ÍÑ¹ÂÔè§ãË­è¤ÃÑé§ÊØ´·éÒÂ¢Í§ªÕÇÔµ</p>\r\n</div>\r\n<p><font face="Arial"><a href="http://youtu.be/S2N_uq4hgdM">http://youtu.be/S2N_uq4hgdM</a></font></p>\r\n<p><a href="http://youtu.be/PKYDzz3T2MI"><img alt="" width="200" height="150" src="/pic/Image/File4.jpg" /></a></p>\r\n<div id="watch-description-text">\r\n<p id="eow-description">&quot;àÃÒà´Ô¹ä»¨ÑºÁ×ÍÅÙ¡áÅÐºÍ¡ÅÙ¡ÇèÒË¹ÙäÁèµéÍ§ºÇªãËéáÁè äÁèµéÍ§à»ç¹·ËÒÃ áµèáÁè¢ÍÃèÒ§«Öè§¨Ò¡¹Õéä»àÃÒ¡ç¨ÐãËé¡Ñº¤¹Í×è¹ «Öè§ÇÑ¹¹Ñé¹àÃÒ¡çàËç¹¹éÓµÒ¢Í§ÅÙ¡´éÇÂ&quot;</p>\r\n</div>\r\n<p>&nbsp;<font face="Arial"><a href="http://youtu.be/PKYDzz3T2MI">http://youtu.be/PKYDzz3T2MI</a></font></p>\r\n<p><a href="http://youtu.be/w3KrwOb0rmc"><img alt="" width="200" height="150" src="/pic/Image/File5.jpg" /></a></p>\r\n<font face="Arial">\r\n<div id="watch-description-text">\r\n<p id="eow-description">ÍÂÒ¡ãËé¾ÕèªÒÂä´éÁÕâÍ¡ÒÊ·ÓºØ­¤ÃÑé§ÊØ´·éÒÂ ´éÇÂ¡ÒÃºÃÔ¨Ò¤ÍÇÑÂÇÐãËé¡ÑºÈÙ¹ÂìÃÑººÃÔ¨Ò¤ÍÇÑÂÇÐ à¾ÃÒÐäÁèá¹èÇÑ¹Ë¹Öè§àÃÒÍÒ¨¨Ðä´éÊºµÒ¡Ñº´Ç§µÒ¤Ùè¹Ñé¹¢Í§¾ÕèªÒÂ¡çä´é</p>\r\n</div>\r\n</font>\r\n<p><font face="Arial"><a href="http://youtu.be/w3KrwOb0rmc">http://youtu.be/w3KrwOb0rmc</a></font></p>\r\n<p>&nbsp;</p>', 's_1329234161.File1.jpg', '1329234161.File1.jpg', '', '', 0, '2012-02-14 22:42:41');
INSERT INTO `newscenter5` VALUES (00062, '', 'Kidney Transplantation in Thailand', '', '<p>¤³ÐÍ¹Ø¡ÃÃÁ¡ÒÃÅ§·ÐàºÕÂ¹ ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â&nbsp; ä´é·Ó¡ÒÃÊÓÃÇ¨¢éÍÁÙÅ¡ÒÃ»ÅÙ¡¶èÒÂäµ »ÃÐ¨Ó»Õ 2555&nbsp; áÅÐ¨Ñ´·ÓÃÒÂ§Ò¹¢éÍÁÙÅ¡ÒÃ»ÅÙ¡¶èÒÂäµã¹»ÃÐà·Èä·Â»ÃÐ¨Ó»Õ¢Öé¹·ÓãËé·ÃÒº¢éÍÁØÅ¡ÒÃ»ÅÙ¡¶èÒÂÍÇÑÂÇÐ¢Í§»ÃÐà·Èä·Â ÍÑ¹à¡Ô´»ÃÐâÂª¹ìÍÂèÒ§¡ÇéÒ§¢ÇÒ§µèÍÇ§¡ÒÃ»ÅÙ¡¶èÒÂÍÇÑÂÇÐã¹»ÃÐà·Èä·ÂáÅÐµèÒ§»ÃÐà·È</p>\r\n<p>&nbsp;</p>', 's_1381826142.Untitled.jpg', '1381826142.Untitled.jpg', 'Rnnual report 2012 kidney transplantation in thailand', 'Rnnual report 2012.pdf', 0, '2013-10-15 15:30:34');
INSERT INTO `newscenter5` VALUES (00063, '', '¤ÙèÁ×Í¡ÒÃ´ÙáÅ¼ÙéºÃÔ¨Ò¤ÍÇÑÂÇÐáÅÐ¡ÒÃ»ÃÐÊÒ¹§Ò¹¡ÒÃ»ÅÙ¡¶èÒÂÍÇÑÂÇÐ', '', '<p><span style="FONT-FAMILY: ''Tahoma'',''sans-serif''; COLOR: black; FONT-SIZE: 10pt; mso-fareast-font-family: ''Times New Roman''; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: TH">ÊÁÒÃ¶ download <span lang="TH">Ê¶ÔµÔµèÒ§æ ¢Í§ÈÙ¹ÂìÃÑººÃÔ¨Ò¤ÍÇÑÂÇÐä´é·Õè&nbsp; &nbsp;</span><a href="http://www.organdonate.in.th/?page_id=269">http://www.organdonate.in.th/?page_id=269</a></span></p>\r\n<p><span style="FONT-FAMILY: ''Tahoma'',''sans-serif''; COLOR: black; FONT-SIZE: 10pt; mso-fareast-font-family: ''Times New Roman''; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: TH"><span style="FONT-FAMILY: ''Tahoma'',''sans-serif''; COLOR: black; FONT-SIZE: 10pt; mso-fareast-font-family: ''Times New Roman''" lang="TH">ÈÙ¹ÂìÃÑººÃÔ¨Ò¤ÍÇÑÂÇÐ</span><span style="FONT-FAMILY: ''Tahoma'',''sans-serif''; COLOR: black; FONT-SIZE: 10pt; mso-fareast-font-family: ''Times New Roman''"><br />\r\n<span lang="TH">â·Ã.</span>1666, 0 2256 4045-6<br />\r\n<span lang="TH">¤ÇÒÁ´Õ·ÕèäÁèÊÔé¹ÊØ´ ¤×Í ¡ÒÃÍØ·ÔÈÍÇÑÂÇÐàÁ×èÍÂÒÁÊÔé¹ÊÙ­</span><br />\r\n<a href="http://www.organdonate.in.th/">www.organdonate.in.th</a><o:p></o:p></span></span></p>', 's_1382089344.logo-odc.jpg', '1382089344.logo-odc.jpg', '¤ÙèÁ×Í¡ÒÃ´ÙáÅ¼ÙéºÃÔ¨Ò¤ÊÁÍ§µÒÂáÅÐ¡ÒÃ»ÃÐÊÒ¹§Ò¹¡ÒÃ»ÅÙ¡¶èÒÂÍÇÑÂÇÐ', 'Guideline.pdf', 0, '2013-10-18 16:42:24');

-- --------------------------------------------------------

-- 
-- Table structure for table `newscenter6`
-- 

CREATE TABLE `newscenter6` (
  `news_id` int(5) unsigned zerofill NOT NULL auto_increment,
  `title_eng` varchar(250) NOT NULL default '',
  `title_th` varchar(250) NOT NULL default '',
  `details_eng` text NOT NULL,
  `details_th` text NOT NULL,
  `pic_s` varchar(100) NOT NULL default '',
  `pic_b` varchar(100) NOT NULL default '',
  `file_name` varchar(255) NOT NULL,
  `file_down` varchar(255) NOT NULL,
  `view` int(5) NOT NULL default '0',
  `ddpost` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`news_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

-- 
-- Dumping data for table `newscenter6`
-- 

INSERT INTO `newscenter6` VALUES (00054, '', 'COMMITTEES', '', '<style type="text/css">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<!--\r\n.Tahoma12 {\r\n	font-family: Tahoma;\r\n	font-size: 12px;\r\n	color: #000000;\r\n	text-decoration: none;\r\n}\r\n.TahomaB {\r\n	font-family: Tahoma;\r\n	font-size: 14px;\r\n	font-weight: bold;\r\n	color: #000000;\r\n	text-decoration: none;\r\n}\r\n.style1 {font-family: Tahoma; font-size: 12px; color: #000000; text-decoration: none; font-weight: bold; }\r\n--></style>\r\n<div align="center"><strong>THAI TRANSPLANTATION SOCIETY COMMITTEES</strong></div>\r\n<div align="center"><strong></strong></div>\r\n<div align="center"></div>\r\n<div align="center"><strong></strong></div>\r\n<div align="center"></div>\r\n<div align="center"><strong></strong></div>\r\n<div align="center"><strong></strong></div>\r\n<div align="center"><strong></strong></div>\r\n<div align="center"><strong></strong></div>\r\n<div align="center"><strong></strong></div>\r\n<div align="center"><strong>\r\n<table style="WIDTH: 385pt; BORDER-COLLAPSE: collapse" border="0" cellspacing="0" cellpadding="0" width="513">\r\n    <colgroup><col style="WIDTH: 54pt" width="72"></col><col style="WIDTH: 174pt; mso-width-source: userset; mso-width-alt: 7424" width="232"></col><col style="WIDTH: 157pt; mso-width-source: userset; mso-width-alt: 6688" width="209"></col></colgroup>\r\n    <tbody>\r\n        <tr style="HEIGHT: 14.25pt" height="19">\r\n            <td style="WIDTH: 385pt; HEIGHT: 14.25pt" class="xl73" height="19" width="513" colspan="3">&nbsp;</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 21pt" height="28">\r\n            <td style="HEIGHT: 21pt; BORDER-TOP: medium none" class="xl69" height="28">No</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl68">Name</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl68">Position</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 21.75pt" height="29">\r\n            <td style="HEIGHT: 21.75pt; BORDER-TOP: medium none" class="xl71" height="29">1</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl65">Kriengsak Vareesangthip, M.D.,Ph.D.</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl65">President</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 21.75pt" height="29">\r\n            <td style="HEIGHT: 21.75pt; BORDER-TOP: medium none" class="xl71" height="29">2</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl65">Dusit Lumlertkul M.D.</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl65"><span style="mso-spacerun: yes">&nbsp;</span>Vice-President<span style="mso-spacerun: yes">&nbsp;</span></td>\r\n        </tr>\r\n        <tr style="HEIGHT: 21.75pt" height="29">\r\n            <td style="HEIGHT: 21.75pt; BORDER-TOP: medium none" class="xl71" height="29">3</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66">Surazee<span style="mso-spacerun: yes">&nbsp; </span>Prommool<font class="font5"> </font><font class="font6">M.D.</font></td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl65"><span style="mso-spacerun: yes">&nbsp;</span>Vice-President<span style="mso-spacerun: yes">&nbsp;</span></td>\r\n        </tr>\r\n        <tr style="HEIGHT: 21.75pt" height="29">\r\n            <td style="HEIGHT: 21.75pt; BORDER-TOP: medium none" class="xl71" height="29">4</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl65">Attapong<span style="mso-spacerun: yes">&nbsp; </span>Vongwiwatana, M.D.</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl65">Secretary</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 21.75pt" height="29">\r\n            <td style="HEIGHT: 21.75pt; BORDER-TOP: medium none" class="xl71" height="29">5</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl65">Prajej<span style="mso-spacerun: yes">&nbsp; </span>Ruangkanchanasetr, M.D.</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl65">Treasurer</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 21.75pt" height="29">\r\n            <td style="HEIGHT: 21.75pt; BORDER-TOP: medium none" class="xl71" height="29">6</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl65">Adisorn<span style="mso-spacerun: yes">&nbsp; </span>Lumpaopong, M.D.</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl65">Registration&amp; Information</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 21.75pt" height="29">\r\n            <td style="HEIGHT: 21.75pt; BORDER-TOP: medium none" class="xl71" height="29">7</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl65">Adis Tasanarong, M.D.</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl65">Scientific Chairman</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 21.75pt" height="29">\r\n            <td style="HEIGHT: 21.75pt; BORDER-TOP: medium none" class="xl71" height="29">8</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl65">Surasak<span style="mso-spacerun: yes">&nbsp; </span>Kantachuvesiri<span style="mso-spacerun: yes">&nbsp; </span>M.D.,Ph.D.</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl65">Social Co-ordinatior</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 21.75pt" height="29">\r\n            <td style="HEIGHT: 21.75pt; BORDER-TOP: medium none" class="xl71" height="29">9</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl65">Pat<span style="mso-spacerun: yes">&nbsp; </span>Ongcharit, M.D.</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl65"><span style="mso-spacerun: yes">&nbsp;</span>International Liason</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 21.75pt" height="29">\r\n            <td style="HEIGHT: 21.75pt; BORDER-TOP: medium none" class="xl71" height="29">10</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl65">Yingyos<span style="mso-spacerun: yes">&nbsp; </span>Avihingsanon, M.D</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl65"><span style="mso-spacerun: yes">&nbsp;</span>Research Chairman</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 21.75pt" height="29">\r\n            <td style="HEIGHT: 21.75pt; BORDER-TOP: medium none" class="xl71" height="29">11</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl65">Thanom Supaporn, LTG.M.D.</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl65">Committee for Policy Planning</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 21.75pt" height="29">\r\n            <td style="HEIGHT: 21.75pt; BORDER-TOP: medium none" class="xl71" height="29">12</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl67">Sakarn Bunnag, M.D.</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl65">Organ Transplantation Expansion</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 21.75pt" height="29">\r\n            <td style="HEIGHT: 21.75pt; BORDER-TOP: medium none" class="xl71" height="29">13</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl72" align="left">Surasak<span style="mso-spacerun: yes">&nbsp; </span>Leelaudomlipi,MD</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl72" align="left">Liver transplantation expert<span style="mso-spacerun: yes">&nbsp;</span></td>\r\n        </tr>\r\n        <tr style="HEIGHT: 21.75pt" height="29">\r\n            <td style="HEIGHT: 21.75pt; BORDER-TOP: medium none" class="xl71" height="29">14</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl72" align="left">Supanit<span style="mso-spacerun: yes">&nbsp; </span>Nivatvong,MD</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl72" align="left">Liver transplantation expert<span style="mso-spacerun: yes">&nbsp;</span></td>\r\n        </tr>\r\n        <tr style="HEIGHT: 21.75pt" height="29">\r\n            <td style="HEIGHT: 21.75pt; BORDER-TOP: medium none" class="xl71" height="29">15</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl72" align="left">Somchai Limsrichamrern,MD</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl72" align="left">Pancreas transplanted<span style="mso-spacerun: yes">&nbsp; </span>expert</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 21.75pt" height="29">\r\n            <td style="HEIGHT: 21.75pt; BORDER-TOP: medium none" class="xl71" height="29">16</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl72" align="left">Sukit<span style="mso-spacerun: yes">&nbsp; </span>Tassanasunthornwong,MD</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl72" align="left">Neurosurgical and legal expert</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</strong></div>', '', '', '', '', 0, '2009-07-06 21:14:12');

-- --------------------------------------------------------

-- 
-- Table structure for table `newscenter7`
-- 

CREATE TABLE `newscenter7` (
  `news_id` int(5) unsigned zerofill NOT NULL auto_increment,
  `title_eng` varchar(250) NOT NULL default '',
  `title_th` varchar(250) NOT NULL default '',
  `details_eng` text NOT NULL,
  `details_th` text NOT NULL,
  `pic_s` varchar(100) NOT NULL default '',
  `pic_b` varchar(100) NOT NULL default '',
  `file_name` varchar(255) NOT NULL,
  `file_down` varchar(255) NOT NULL,
  `view` int(5) NOT NULL default '0',
  `ddpost` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`news_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

-- 
-- Dumping data for table `newscenter7`
-- 

INSERT INTO `newscenter7` VALUES (00054, '', '¤³Ð¡ÃÃÁ¡ÒÃ', '', '<div align="center"><font size="2"><font color="#0000ff"><strong><span style="FONT-SIZE: 14pt">¤³Ð¡ÃÃÁ¡ÒÃ »Õ 2556 </span></strong><strong><span style="FONT-SIZE: 14pt">&ndash; 2558</span></strong></font></font></div>\r\n<div align="center"><strong><span style="FONT-SIZE: 14pt"><font size="2">ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â</font></span></strong></div>\r\n<div align="center"><strong><span style="FONT-SIZE: 14pt"><font size="2">Ê¹§.ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â ÍÒ¤ÒÃà©ÅÔÁ¾ÃÐºÒÃÁÕ 50 »Õ</font></span></strong></div>\r\n<div align="left"><font size="2">&nbsp;\r\n<table style="WIDTH: 509pt; BORDER-COLLAPSE: collapse" border="0" cellspacing="0" cellpadding="0" width="680">\r\n    <colgroup><col style="WIDTH: 35pt; mso-width-source: userset; mso-width-alt: 1718" width="47"></col><col style="WIDTH: 158pt; mso-width-source: userset; mso-width-alt: 7716" width="211"></col><col style="WIDTH: 89pt; mso-width-source: userset; mso-width-alt: 4352" width="119"></col><col style="WIDTH: 227pt; mso-width-source: userset; mso-width-alt: 11081" width="303"></col></colgroup>\r\n    <tbody>\r\n        <tr style="HEIGHT: 21pt" height="28">\r\n            <td style="WIDTH: 35pt; HEIGHT: 21pt" class="xl65" height="28" width="47">ÅÓ´Ñº</td>\r\n            <td style="BORDER-LEFT: medium none; WIDTH: 158pt" class="xl65" width="211">ª×èÍ-Ê¡ØÅ</td>\r\n            <td style="BORDER-LEFT: medium none; WIDTH: 89pt" class="xl65" width="119">Ê¶ÒºÑ¹</td>\r\n            <td style="BORDER-LEFT: medium none; WIDTH: 227pt" class="xl65" width="303">µÓáË¹è§</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 21.75pt" height="29">\r\n            <td style="HEIGHT: 21.75pt; BORDER-TOP: medium none" class="xl67" height="29">1</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">ÃÈ.¹¾.à¡ÃÕÂ§ÈÑ¡´Ôì<span style="mso-spacerun: yes">&nbsp; </span>ÇÒÃÕáÊ§·Ô¾Âì</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">ÈÔÃÔÃÒª</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">¹ÒÂ¡ÊÁÒ¤Á</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 21.75pt" height="29">\r\n            <td style="HEIGHT: 21.75pt; BORDER-TOP: medium none" class="xl67" height="29">2</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">Í.¹¾.ÊØÃÊÕËì<span style="mso-spacerun: yes">&nbsp; </span>¾ÃéÍÁÁÙÅ</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">ÇªÔÃ¾ÂÒºÒÅ</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">ÍØ»¹ÒÂ¡</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 21.75pt" height="29">\r\n            <td style="HEIGHT: 21.75pt; BORDER-TOP: medium none" class="xl67" height="29">3</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">È.¹¾.´ØÊÔµ<span style="mso-spacerun: yes">&nbsp; </span>ÅéÓàÅÔÈ¡ØÅ</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">Á.àªÕÂ§ãËÁè</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">ÍØ»¹ÒÂ¡</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 21.75pt" height="29">\r\n            <td style="HEIGHT: 21.75pt; BORDER-TOP: medium none" class="xl67" height="29">4</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">¾.Í.¹¾.»ÃÐà¨É®ì<span style="mso-spacerun: yes">&nbsp; </span>àÃ×Í§¡Ò­¨¹àÈÃÉ°ì</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">¾ÃÐÁ§¡Ø®à¡ÅéÒ</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">àËÃÑ­­Ô¡</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 21.75pt" height="29">\r\n            <td style="HEIGHT: 21.75pt; BORDER-TOP: medium none" class="xl67" height="29">5</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">È.¹¾.ÂÔè§ÂÈ<span style="mso-spacerun: yes">&nbsp; </span>ÍÇÔËÔ§ÊÒ¹¹·ì</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">¨ØÌÒÅ§¡Ã³ì</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">»ÃÐ¸Ò¹ÇÔ¨ÑÂ</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 21.75pt" height="29">\r\n            <td style="HEIGHT: 21.75pt; BORDER-TOP: medium none" class="xl67" height="29">6</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">ÃÈ.¹¾.ÍÃÃ¶¾§Èì<span style="mso-spacerun: yes">&nbsp; </span>Ç§ÈìÇÔÇÑ²¹ì</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">ÈÔÃÔÃÒª</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">àÅ¢Ò¸Ô¡ÒÃ</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 21.75pt" height="29">\r\n            <td style="HEIGHT: 21.75pt; BORDER-TOP: medium none" class="xl67" height="29">7</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">¾Åâ· ¹¾.¶¹ÍÁ<span style="mso-spacerun: yes">&nbsp; </span>ÊØÀÒ¾Ã</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">¾ÃÐÁ§¡Ø®à¡ÅéÒ</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">½èÒÂ¹âÂºÒÂáÅÐá¼¹</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 21.75pt" height="29">\r\n            <td style="HEIGHT: 21.75pt; BORDER-TOP: medium none" class="xl67" height="29">8</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">¼È.¹¾.ÊØÃÈÑ¡´Ôì<span style="mso-spacerun: yes">&nbsp; </span>¡Ñ¹µªÙàÇÊÈÔÃÔ</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">ÃÒÁÒ¸Ôº´Õ</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">»¯Ô¤Á</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 21.75pt" height="29">\r\n            <td style="HEIGHT: 21.75pt; BORDER-TOP: medium none" class="xl67" height="29">9</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">¾.Í.¹¾.Í´ÔÊÃ³ì<span style="mso-spacerun: yes">&nbsp; </span>ÅÓà¾Ò¾§Èì</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">¾ÃÐÁ§¡Ø®à¡ÅéÒ</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">¹ÒÂ·ÐàºÕÂ¹áÅÐÊÒÃÊ¹à·È</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 21.75pt" height="29">\r\n            <td style="HEIGHT: 21.75pt; BORDER-TOP: medium none" class="xl67" height="29">10</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">ÃÈ.¹¾.Í´ÔÈÇì<span style="mso-spacerun: yes">&nbsp; </span>·ÑÈ³Ã§¤ì</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">¸ÃÃÁÈÒÊµÃì</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">»ÃÐ¸Ò¹ÇÔªÒ¡ÒÃ</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 21.75pt" height="29">\r\n            <td style="HEIGHT: 21.75pt; BORDER-TOP: medium none" class="xl67" height="29">11</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">Í.¹¾.¾ÑªÃ<span style="mso-spacerun: yes">&nbsp; </span>ÍèÍ§¨ÃÔµ</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">¨ØÌÒÅ§¡Ã³ì</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">ÇÔà·ÈÊÑÁ¾Ñ¹¸ì</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 21.75pt" height="29">\r\n            <td style="HEIGHT: 21.75pt; BORDER-TOP: medium none" class="xl67" height="29">12</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">Í.¹¾.Ê¡Ò¹µì<span style="mso-spacerun: yes">&nbsp; </span>ºØ¹¹Ò¤</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">ÃÒªÇÔ¶Õ</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">½èÒÂÊè§àÊÃÔÁ¡ÒÃ»ÅÙ¡¶èÒÂÍÇÑÂÇÐ</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 21.75pt" height="29">\r\n            <td style="HEIGHT: 21.75pt; BORDER-TOP: medium none" class="xl67" height="29">13</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">ÃÈ.¹¾.ÊØÃÈÑ¡´Ôì<span style="mso-spacerun: yes">&nbsp; </span>ÅÕÅÒÍØ´ÁÅÔ»Ô</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">ÃÒÁÒ¸Ôº´Õ</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">¼ÙéàªÕèÂÇªÒ­´éÒ¹»ÅÙ¡¶èÒÂµÑº</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 21.75pt" height="29">\r\n            <td style="HEIGHT: 21.75pt; BORDER-TOP: medium none" class="xl67" height="29">14</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">ÃÈ.¹¾.ÊØÀ¹ÔµÔì<span style="mso-spacerun: yes">&nbsp; </span>¹ÔÇÒµÇ§Èì</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">¨ØÌÒÅ§¡Ã³ì</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">¼ÙéàªÕèÂÇªÒ­´éÒ¹»ÅÙ¡¶èÒÂµÑº</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 21.75pt" height="29">\r\n            <td style="HEIGHT: 21.75pt; BORDER-TOP: medium none" class="xl67" height="29">15</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">¼È.¹¾.ÊÁªÑÂ<span style="mso-spacerun: yes">&nbsp; </span>ÅÔéÁÈÃÕ¨ÓàÃÔ­</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">ÈÔÃÔÃÒª</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">¼ÙéàªÕèÂÇªÒ­´éÒ¹»ÅÙ¡¶èÒÂµÑºÍèÍ¹</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 21.75pt" height="29">\r\n            <td style="HEIGHT: 21.75pt; BORDER-TOP: medium none" class="xl67" height="29">16</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">Í.¹¾.ÊØ¡Ô¨<span style="mso-spacerun: yes">&nbsp; </span>·ÑÈ¹ÊØ¹·ÃÇ§Èì</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">àÅÔ´ÊÔ¹</td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl69">¼ÙéàªÕèÂÇªÒ­´éÒ¹»ÃÐÊÒ·ÈÑÅÂÈÒÊµÃìáÅÐ¡¯ËÁÒÂ</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</font></div>', '', '', '', '', 0, '2009-06-22 00:21:30');
INSERT INTO `newscenter7` VALUES (00055, '', 'test', '', 'setse', 's_1253124683.2.jpg', '1253124683.2.jpg', '', '', 0, '2009-09-17 01:11:23');
INSERT INTO `newscenter7` VALUES (00056, '', 'dfgfddfsg', '', 'dsfgdfg', '', '', '', '', 0, '2009-09-17 01:18:09');
INSERT INTO `newscenter7` VALUES (00057, '', 'asdff', '', 'fdsaf', '', '', '', '', 0, '2009-09-17 01:24:02');
INSERT INTO `newscenter7` VALUES (00058, '', 'dasd', '', 'efesf', '', '', '', '', 0, '2009-09-17 01:27:02');
INSERT INTO `newscenter7` VALUES (00059, '', 'df', '', 'dsfsdaf', '', '', '', '', 0, '2009-09-17 01:30:24');

-- --------------------------------------------------------

-- 
-- Table structure for table `newscenter8`
-- 

CREATE TABLE `newscenter8` (
  `news_id` int(5) unsigned zerofill NOT NULL auto_increment,
  `title_eng` varchar(250) character set tis620 collate tis620_bin NOT NULL,
  `title_th` varchar(250) character set utf8 collate utf8_latvian_ci NOT NULL,
  `details_eng` text NOT NULL,
  `details_th` text character set utf8 collate utf8_latvian_ci NOT NULL,
  `pic_s` varchar(100) NOT NULL default '',
  `pic_b` varchar(100) NOT NULL default '',
  `file_name` varchar(255) NOT NULL,
  `file_down` varchar(255) NOT NULL,
  `view` int(5) NOT NULL default '0',
  `ddpost` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`news_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

-- 
-- Dumping data for table `newscenter8`
-- 

INSERT INTO `newscenter8` VALUES (00007, 0x5374726174656769657320746f20496d70726f7665204c6f6e672d5465726d204f7574636f6d6573206166746572204f7267616e205472616e73706c616e746174696f6e20, 'Strategies to Improve Long-Term Outcomes after Organ Transplantation ', '<div><span style="FONT-SIZE: 14pt; COLOR: black"><span style="COLOR: black"><font face="Times New Roman"><font color="#000000"><strong><font size="3"><font color="#ff0000">Event:</font> 5th Mid Year Scientific Meeting of Thai Transplantation Society</font></strong></font></font></span></span></div>\r\n<div><span style="FONT-SIZE: 14pt; COLOR: black"><span style="COLOR: black"><font face="Times New Roman"><font color="#000000"><br />\r\n</font></font></span></span><span style="FONT-SIZE: 14pt; COLOR: black"><span style="COLOR: black"><font face="Times New Roman" size="2"><font color="#000000"><font size="3"><strong><font color="#0000ff">Date:</font></strong>&nbsp;9-11 October 2009<br />\r\n<br />\r\n<strong><font color="#0000ff">Theme:</font></strong> Strategies to Improve Long-Term Outcomes after Organ Transplantation <br />\r\n<br />\r\n<strong><font color="#0000ff">Venue:</font></strong> The Tide Resort, Bangsan, Chonburi.<br />\r\n</font><br />\r\n<img height="133" alt="" width="200" src="/pic/Image/New2(1)(2).jpg" />&nbsp;&nbsp;<img height="133" alt="" width="200" src="/pic/Image/New8(2).jpg" /> <br />\r\n<img height="133" alt="" width="200" src="/pic/Image/New4(1).jpg" />&nbsp;&nbsp;<img height="133" alt="" width="200" src="/pic/Image/New3(3)(1).jpg" /> <br />\r\n<img height="133" alt="" width="200" src="/pic/Image/New7(3)(1).jpg" />&nbsp;&nbsp;<img height="133" alt="" width="200" src="/pic/Image/New6(3).jpg" /></font></font></span></span></div>', '', 's_1268575565.New2(1).jpg', '1268575565.New2(1).jpg', '', '', 0, '2010-03-14 21:06:05');
INSERT INTO `newscenter8` VALUES (00008, 0x50726163746963616c20506f696e7420696e204f7267616e205472616e73706c616e746174696f6e2032303130, 'Practical Point in Organ Transplantation 2010', '<div><span style="FONT-SIZE: 14pt; COLOR: black"><span style="COLOR: black"><font face="Times New Roman"><font color="#000000"><strong><font size="3"><font color="#ff0000">Event:</font> The National Congress of Transplantation by&nbsp;Thai Transplantation Society</font></strong></font></font></span></span></div>\r\n<span style="FONT-SIZE: 14pt; COLOR: black"><span style="COLOR: black"><font face="Times New Roman"><font color="#000000">\r\n<div><br />\r\n</div>\r\n<div><span style="FONT-SIZE: 14pt; COLOR: black"><span style="COLOR: black"><font face="Times New Roman" size="2"><font color="#000000"><font size="3"><img height="134" alt="" width="200" src="/pic/Image/DSC_0274.jpg" />&nbsp; <img height="134" alt="" width="200" src="/pic/Image/pic14(1).jpg" />&nbsp; <img height="134" alt="" width="200" src="/pic/Image/pic15(1).jpg" /><br />\r\n</font></font></font></span></span></div>\r\n</font></font></span></span><span style="FONT-SIZE: 14pt; COLOR: black"><span style="COLOR: black"><font face="Times New Roman" size="2"><font color="#000000"><font size="3"><strong><font color="#0000ff">Date:</font></strong>&nbsp;18-19 March 2010<br />\r\n<br />\r\n<strong><font color="#0000ff">Theme:</font></strong> Practical Point in Organ Transplantation 2010 <br />\r\n<br />\r\n<strong><font color="#0000ff">Venue:</font></strong> Radisson Hotel, Bangkok<br />\r\n<br />\r\n<a href="http://www.transplantthai.org/pic/File/ScheduleMarch.doc"><font size="2">(download scientific program)</font></a><br />\r\n<br />\r\n<img height="134" alt="" width="200" src="/pic/Image/pic11(1).jpg" />&nbsp; <img height="134" alt="" width="200" src="/pic/Image/pic12(1).jpg" />&nbsp; <img height="134" alt="" width="200" src="/pic/Image/pic16(1).jpg" /></font></font></font></span></span>', '', 's_1269452470.pic12.jpg', '1269452470.pic12.jpg', '', '', 0, '2010-03-25 00:41:10');
INSERT INTO `newscenter8` VALUES (00009, 0x4368616c6c656e67657320616e6420436f6e74726f7665727369657320696e204f7267616e205472616e73706c616e746174696f6e20, 'Challenges and Controversies in Organ Transplantation ', '<div><span style="FONT-SIZE: 14pt; COLOR: black"><span style="COLOR: black"><font face="Times New Roman"><font color="#000000"><strong><font size="3"><font color="#ff0000">Event:</font> Mid Year&nbsp;Congress of Transplantation by&nbsp;Thai Transplantation Society</font></strong></font></font></span></span></div>\r\n<span style="FONT-SIZE: 14pt; COLOR: black"><span style="COLOR: black"><font face="Times New Roman"><font color="#000000">\r\n<div><span style="FONT-SIZE: 14pt; COLOR: black"><span style="COLOR: black"><font face="Times New Roman" size="2"><font color="#000000"><font size="3"><br />\r\n<img height="134" alt="" width="200" src="/pic/Image/11.jpg" />&nbsp; <img height="134" alt="" width="200" src="/pic/Image/3.jpg" />&nbsp; <img height="134" alt="" width="200" src="/pic/Image/8.jpg" /><br />\r\n</font></font></font></span></span></div>\r\n<p><span style="FONT-SIZE: 14pt; COLOR: black"><span style="COLOR: black"><font face="Times New Roman" size="2"><font color="#000000"><font size="3"><img height="134" alt="" width="200" src="/pic/Image/9.jpg" />&nbsp;&nbsp;<img width="200" alt="" src="/pic/Image/7.jpg" />&nbsp; <img height="134" alt="" width="200" src="/pic/Image/12.jpg" /><br />\r\n</font></font></font></span></span></p>\r\n</font></font></span></span><span style="FONT-SIZE: 14pt; COLOR: black"><span style="COLOR: black"><font face="Times New Roman" size="2"><font color="#000000"><font size="3"><strong><font color="#0000ff">Date:</font></strong>&nbsp;5-7 November 2010<br />\r\n<br />\r\n<strong><font color="#0000ff">Theme:</font></strong> Challenges and Controversies&nbsp;in Organ Transplantation <br />\r\n<br />\r\n<strong><font color="#0000ff">Venue:</font></strong> Holiday Inn Resort, Regent Cha-am, Petchburi province<br />\r\n<br />\r\n<a href="http://www.transplantthai.org/pic/File/AgendaNov53.pdf"><font size="2">(download scientific program)</font></a><br />\r\n<br />\r\n<img height="134" alt="" width="200" src="http://www.transplantthai.org/pic/Image/10.jpg" />&nbsp; <img height="134" alt="" width="200" src="/pic/Image/5.jpg" />&nbsp; <img height="134" alt="" width="200" src="/pic/Image/6.jpg" /></font></font></font></span></span>', '', 's_1291655494.11.jpg', '1291655494.11.jpg', '', '', 0, '2010-12-07 00:11:34');
INSERT INTO `newscenter8` VALUES (00010, '', 'ÀÒ¾¡Ô¨¡ÃÃÁ¡ÒÃ¡ÒÃ»ÃÐªØÁÇÔªÒ¡ÒÃ»ÃÐ¨Ó»Õ ¤ÃÑé§·Õè 25', '', '<p><img width="300" height="201" alt="" src="/pic/Image/DSC_0302.JPG" /><img alt="" width="300" height="201" src="/pic/Image/DSC_0048.JPG" /><img alt="" width="300" height="201" src="/pic/Image/DSC_0035.JPG" /><img alt="" width="300" height="201" src="/pic/Image/DSC_0060.JPG" /><img alt="" width="300" height="201" src="/pic/Image/DSC_0121.JPG" /><img alt="" width="300" height="201" src="/pic/Image/DSC_0132.JPG" /><img style="WIDTH: 300px; HEIGHT: 204px" alt="" width="300" height="201" src="/pic/Image/DSC_0207.JPG" /><img alt="" width="300" height="201" src="/pic/Image/DSC_0089.JPG" /><img alt="" width="300" height="201" src="/pic/Image/DSC_0116.JPG" /><img alt="" width="300" height="201" src="/pic/Image/DSC_0045.JPG" /></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 's_1382005207.DSC_0121.JPG', '1382005207.DSC_0121.JPG', '', '', 0, '2013-10-17 17:17:19');
INSERT INTO `newscenter8` VALUES (00012, '', '¡ÒÃ»ÃÐªØÒÇÔªÒ¡ÒÃ¡ÅÒ§»Õ ¤ÃÑé§·Õè 8ÇÑ¹·Õè 26 - 27  ¡Ñ¹ÂÒÂ¹  2556', '', '<img alt="" width="300" height="200" src="/pic/Image/2(1).jpg" /><img alt="" width="300" height="200" src="/pic/Image/3(2).jpg" /><img alt="" width="300" height="200" src="/pic/Image/4(2).jpg" /><img alt="" width="300" height="200" src="/pic/Image/5(2).jpg" /><img width="300" height="200" alt="" src="/pic/Image/8(2).jpg" /><img alt="" width="300" height="200" src="/pic/Image/6(3).jpg" /><img alt="" width="300" height="200" src="/pic/Image/7(2).jpg" /><img alt="" width="300" height="200" src="/pic/Image/9(2).jpg" /><img alt="" width="300" height="200" src="/pic/Image/11(4).jpg" /><img alt="" width="300" height="200" src="/pic/Image/12(2).jpg" /><img alt="" width="300" height="200" src="/pic/Image/13.JPG" /><img alt="" width="300" height="200" src="/pic/Image/14.JPG" />', 's_1382085206.1.jpg', '1382085206.1.jpg', '', '', 0, '2013-10-18 15:33:26');
INSERT INTO `newscenter8` VALUES (00013, '', 'ÀÒ¾¡Ô¨¡ÃÃÁâ¤Ã§¡ÒÃÃÑºÃÙé¡ÒÃÃ³Ã§¤ì¡ÒÃºÃÔ¨Ò¤ÍÇÑÂÇÐ', '', '<p><img style="WIDTH: 300px; HEIGHT: 208px" alt="" width="300" height="225" src="/pic/Image/2(2).jpg" /><img style="WIDTH: 300px; HEIGHT: 200px" alt="" width="300" height="400" src="/pic/Image/5(3).jpg" /><img style="WIDTH: 300px; HEIGHT: 207px" alt="" width="300" height="400" src="/pic/Image/6(4).jpg" /><img width="300" height="200" alt="" src="/pic/Image/4(4).jpg" /><img width="300" height="200" alt="" src="/pic/Image/3(4).jpg" /><img width="300" height="200" alt="" src="/pic/Image/1(1).jpg" /></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 's_1382085969.1.jpg', '1382085969.1.jpg', '', '', 0, '2013-10-18 15:46:09');
INSERT INTO `newscenter8` VALUES (00014, '', 'ÀÒ¾¡ÒÃ»ÃÐªØÁ Thai Transplant Care  18  ¡Ñ¹ÂÒÂ¹ 2556', '', '<img width="300" height="200" alt="" src="/pic/Image/1(2).jpg" /><img width="300" height="200" alt="" src="/pic/Image/2(3).jpg" /><img width="300" height="200" alt="" src="/pic/Image/3(5).jpg" /><img width="300" height="200" alt="" src="/pic/Image/4(5).jpg" /><img width="300" height="200" alt="" src="/pic/Image/5(4).jpg" /><img width="300" height="200" alt="" src="/pic/Image/6(5).jpg" /><img width="300" height="200" alt="" src="/pic/Image/7(3).jpg" /><img width="300" height="200" alt="" src="/pic/Image/8(3).jpg" /><img width="300" height="200" alt="" src="/pic/Image/9(3).jpg" /><img width="300" height="200" alt="" src="/pic/Image/10(2).jpg" /><img width="300" height="200" alt="" src="/pic/Image/11(6).jpg" /><img width="300" height="200" alt="" src="/pic/Image/13.jpg" />', 's_1382086958.13.jpg', '1382086958.13.jpg', '', '', 0, '2013-10-18 16:02:38');

-- --------------------------------------------------------

-- 
-- Table structure for table `newscenter9`
-- 

CREATE TABLE `newscenter9` (
  `news_id` int(5) unsigned zerofill NOT NULL auto_increment,
  `title_eng` varchar(250) NOT NULL default '',
  `title_th` varchar(250) NOT NULL default '',
  `details_eng` text NOT NULL,
  `details_th` text NOT NULL,
  `pic_s` varchar(100) NOT NULL default '',
  `pic_b` varchar(100) NOT NULL default '',
  `file_name` varchar(255) NOT NULL,
  `file_down` varchar(255) NOT NULL,
  `view` int(5) NOT NULL default '0',
  `ddpost` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`news_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `newscenter9`
-- 

INSERT INTO `newscenter9` VALUES (00001, '', '¢éÍÁÙÅ»ÅÙ¡¶èÒÂäµã¹»ÃÐà·Èä·Â', '', '<p align="center"><span class="NorTxtGray">&nbsp; <font color="#ff0000"><font size="2"><strong>¢éÍÁÙÅ¡ÒÃ»ÅÙ¡¶èÒÂäµã¹»ÃÐà·Èä·Â <br />\r\n(Report of Kidney Transplantation in Thailand )</strong></font> </font></span></p>\r\n<p><font face="Arial"><font size="1" face="Arial">ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Âä´é¨Ñ´à¡çº¢éÍÁÙÅ¡ÒÃà»ÅÕèÂ¹äµã¹»ÃÐà·Èä·Â (Kidney transplantation registry) µÑé§áµè»Õ ¾.È. 2546 ÃÇºÃÇÁ¢éÍÁÙÅ¼Ùé»èÇÂ¨Ò¡ÈÙ¹Âì»ÅÙ¡¶èÒÂÍÇÑÂÇÐ·ÑèÇ»ÃÐà·Èà¾×èÍ»ÃÐàÁÔ¹à¡ÕèÂÇ¡Ñº¢éÍÁÙÅ¡ÒÃ¡ÒÃà»ÅÕèÂ¹äµ&nbsp;¡ÒÃãªéÂÒ¡´ÀÙÁÔ¤ØéÁ¡Ñ¹ graft survival áÅÐ patient survival ¨Ñ´·Óâ´Â¤³ÐÍ¹Ø¡ÃÃÁ¡ÒÃÅ§·ÐàºÕÂ¹»ÅÙ¡¶èÒÂÍÇÑÂÇÐ ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â&nbsp; â´ÂÃÒÂ§Ò¹ÀÒ¾ÃÇÁáÅÐ¼Å¡ÒÃ»ÅÙ¡¶èÒÂäµã¹»Õ ¾.È. 2555 ·Õè¼èÒ¹ÁÒ´Ñ§ link ´Ñ§¹Õé</font></font></p>\r\n<p><a class="LinkNor" target="_bank" href="picnews/thumb/Rnnual report 2012.pdf">Annual report 2012 kidney transplantation in Thailand </a></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '', '', '', '', 0, '2009-09-17 13:28:09');

-- --------------------------------------------------------

-- 
-- Table structure for table `newscenter10`
-- 

CREATE TABLE `newscenter10` (
  `news_id` int(5) unsigned zerofill NOT NULL auto_increment,
  `title_eng` varchar(250) NOT NULL default '',
  `title_th` varchar(250) NOT NULL default '',
  `details_eng` text NOT NULL,
  `details_th` text NOT NULL,
  `pic_s` varchar(100) NOT NULL default '',
  `pic_b` varchar(100) NOT NULL default '',
  `file_name` varchar(255) NOT NULL,
  `file_down` varchar(255) NOT NULL,
  `view` int(5) NOT NULL default '0',
  `ddpost` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`news_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `newscenter10`
-- 

INSERT INTO `newscenter10` VALUES (00001, '', 'ÈÙ¹Âì¢éÍÁÙÅ»ÅÙ¡¶èÒÂÍÇÑÂÇÐ', '', '<p align="center"><font color="#ff0000" size="2"><strong>ÃÒÂª×èÍÈÙ¹Âì»ÅÙ¡¶èÒÂÍÇÑÂÇÐã¹»ÃÐà·Èä·Â <font color="#000000" size="1">(last update 1/8/52)</font></strong></font></p>\r\n<p align="left"><font color="#0000ff" size="2"><strong>ÀÒ¤¡ÅÒ§</strong></font></p>\r\n<p align="left"><font size="1">1. Ã¾. ÀÙÁÔ¾ÅÍ´ØÅÂà´ª<br />\r\n2. Ã¾. ÈÔÃÔÃÒª<br />\r\n3. Ã¾. ÃÒÁÒ¸Ôº´Õ<br />\r\n4. Ã¾. ÃÒªÇÔ¶Õ<br />\r\n5. Ã¾. ÇªÔÃ¾ÂÒºÒÅ<br />\r\n6. Ã¾. ¾ÃÐÁ§¡Ø®à¡ÅéÒ<br />\r\n7. Ã¾. µÓÃÇ¨<br />\r\n8. Ã¾. ¨ØÌÒÅ§¡Ã³ì<br />\r\n9. Ã¾. ¸ÃÃÁÈÒÊµÃìà©ÅÔÁ¾ÃÐà¡ÕÂÃµÔ<br />\r\n10. Ã¾. ÃÐÂÍ§<br />\r\n11. Ã¾. ªÅºØÃÕ<br />\r\n12. Ã¾. ÊÁÔµÔàÇª ÈÃÕ¹¤ÃÔ¹·Ãì<br />\r\n13. Ã¾. ÊÁÔµÔàÇª ÊØ¢ØÁÇÔ·<br />\r\n14. Ã¾. ¾­Òä· 1<br />\r\n15. Ã¾. ¾­Òä· 2<br />\r\n16. Ã¾. ä·Â¹¤ÃÔ¹·Ãì<br />\r\n17. Ã¾. ¡ÃØ§à·¾<br />\r\n18. Ã¾. ºÓÃØ§ÃÒÉ®Ãì<br />\r\n19. Ã¾. ¾ÃÐÃÒÁà¡éÒ</font></p>\r\n<p align="left"><strong><font color="#0000ff" size="2">ÀÒ¤àË¹×Í</font></strong></p>\r\n<p align="left"><font size="1">1. Ã¾. ÁËÒÃÒª¹¤ÃàªÕÂ§ãËÁè<br />\r\n2. Ã¾. ¾ÃÐ¾Ø·¸ªÔ¹ÃÒª ¾ÔÉ³ØâÅ¡<br />\r\n</font><br />\r\n<font color="#0000ff" size="2"><strong>ÀÒ¤µÐÇÑ¹ÍÍ¡à©ÕÂ§àË¹×Í</strong></font></p>\r\n<p align="left"><font size="1">1. Ã¾. ÈÃÕ¹¤ÃÔ¹·Ãì¢Í¹á¡è¹<br />\r\n2. Ã¾. ÊÃÃ¾ÊÔ·¸Ô»ÃÐÊ§¤ì ÍØºÅÃÒª¸Ò¹Õ<br />\r\n</font><br />\r\n<font color="#0000ff" size="2"><strong>ÀÒ¤ãµé</strong></font></p>\r\n<p align="left"><font size="1">1. Ã¾. Ê§¢ÅÒ¹¤ÃÔ¹·Ãì</font><br />\r\n</p>\r\n<p align="left">&nbsp;</p>\r\n<p align="left">&nbsp;</p>', '', '', '', '', 0, '2009-09-17 14:19:39');

-- --------------------------------------------------------

-- 
-- Table structure for table `newscenter11`
-- 

CREATE TABLE `newscenter11` (
  `news_id` int(5) unsigned zerofill NOT NULL auto_increment,
  `title_eng` varchar(250) NOT NULL default '',
  `title_th` varchar(250) NOT NULL default '',
  `details_eng` text NOT NULL,
  `details_th` text NOT NULL,
  `pic_s` varchar(100) NOT NULL default '',
  `pic_b` varchar(100) NOT NULL default '',
  `file_name` varchar(255) NOT NULL,
  `file_down` varchar(255) NOT NULL,
  `view` int(5) NOT NULL default '0',
  `ddpost` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`news_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `newscenter11`
-- 

INSERT INTO `newscenter11` VALUES (00001, '', 'Transplant coordinators', '', '<p><font face="Times New Roman" size="1"><font style="BACKGROUND-COLOR: #ffffff" face="Arial" color="#0000ff" size="2"><strong>ÃÒÂª×èÍ¼Ùé»ÃÐÊÒ¹§Ò¹»ÅÙ¡¶èÒÂÍÇÑÂÇÐ¨Ò¡·Ø¡ÈÙ¹Âì»ÅÙ¡¶èÒÂÏã¹»ÃÐà·Èä·Â</strong></font>&nbsp;</font></p>\r\n<p>\r\n<table cellspacing="0" cellpadding="0" width="624" align="left" border="1">\r\n    <tbody>\r\n        <tr>\r\n            <td valign="top" width="95" bgcolor="#99ffff">\r\n            <div align="center"><strong><font size="1">ÅÓ´Ñº</font></strong></div>\r\n            </td>\r\n            <td valign="top" width="95" bgcolor="#99ffff">\r\n            <div align="center"><strong><font size="1">ª×èÍ &ndash; ¹ÒÁ¡ØÅ</font></strong></div>\r\n            </td>\r\n            <td valign="top" width="95" bgcolor="#99ffff">\r\n            <div align="center"><strong><font size="1">âÃ§¾ÂÒºÒÅ</font></strong></div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="top" width="95">\r\n            <div align="center"><font size="1">1</font></div>\r\n            </td>\r\n            <td nowrap="nowrap" width="312">\r\n            <div><font size="1">¤Ø³á¡è¹ã¨&nbsp;¾Ô¾Ñ²¾ÃÃ³Ç§Èì</font></div>\r\n            </td>\r\n            <td width="217">\r\n            <div><font size="1">¾ÃÐÃÒÁà¡éÒ</font></div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="top" width="95">\r\n            <div align="center"><font size="1">2</font></div>\r\n            </td>\r\n            <td width="312">\r\n            <div><font size="1">¤Ø³¾Ã»ÇÕÃì ÍÃÔÂ¢¨Ã¾Ñ²¹ì</font></div>\r\n            </td>\r\n            <td width="217">\r\n            <div><font size="1">¾­Òä· 1</font></div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="top" width="95">\r\n            <div align="center"><font size="1">3</font></div>\r\n            </td>\r\n            <td nowrap="nowrap" width="312">\r\n            <div><font size="1">¤Ø³¡¹¡¾Ã ÃÑµ¹äµÃÈÃÕ</font></div>\r\n            </td>\r\n            <td width="217">\r\n            <div><font size="1">¾ÃÐ¾Ø·¸ªÔ¹ÃÒª</font></div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="top" width="95">\r\n            <div align="center"><font size="1">4</font></div>\r\n            </td>\r\n            <td nowrap="nowrap" width="312">\r\n            <div><font size="1">¤Ø³¨§ÃÑ¡Éì&nbsp;¾§ÈìÊ¡ØÅ</font></div>\r\n            </td>\r\n            <td width="217">\r\n            <div><font size="1">ÈÃÕ¹¤ÃÔ¹·Ãì</font></div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="top" width="95">\r\n            <div align="center"><font size="1">5</font></div>\r\n            </td>\r\n            <td nowrap="nowrap" width="312">\r\n            <div><font size="1">¹.·.Ë­Ô§©ÇÕÇÃÃ³&nbsp;¡ÅÔè¹ºÑÇá¡éÇ</font></div>\r\n            </td>\r\n            <td width="217">\r\n            <div><font size="1">ÀÙÁÔ¾ÅÍ´ØÅÂà´ª</font></div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="top" width="95">\r\n            <div align="center"><font size="1">6</font></div>\r\n            </td>\r\n            <td width="312">\r\n            <div><font size="1">¤Ø³ªÅÅ´Ò&nbsp;¾Ã¾§Èì</font></div>\r\n            </td>\r\n            <td width="217">\r\n            <div><font size="1">ÈÔÃÔÃÒª</font></div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="top" width="95">\r\n            <div align="center"><font size="1">7</font></div>\r\n            </td>\r\n            <td nowrap="nowrap" width="312">\r\n            <div><font size="1">¤Ø³ªØÅÕÇÃÃ³ ¨ÔµÍÒÃÕ</font></div>\r\n            </td>\r\n            <td width="217">\r\n            <div><font size="1">ÃÐÂÍ§</font></div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="top" width="95">\r\n            <div align="center"><font size="1">8</font></div>\r\n            </td>\r\n            <td nowrap="nowrap" width="312">\r\n            <div><font size="1">¤Ø³³¾Ã&nbsp;¹Ñ¹·ÇÔÊÔ·¸Ôì</font></div>\r\n            </td>\r\n            <td width="217">\r\n            <div><font size="1">ÊÁÔµÔàÇª ÊØ¢ØÁÇÔ·</font></div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="top" width="95">\r\n            <div align="center"><font size="1">9</font></div>\r\n            </td>\r\n            <td nowrap="nowrap" width="312">\r\n            <div><font size="1">¤Ø³¹§¹Øª&nbsp;àÍ×éÍÊØ¨ÃÔµÇ§Èì</font></div>\r\n            </td>\r\n            <td width="217">\r\n            <div><font size="1">Ê§¢ÅÒ¹¤ÃÔ¹·Ãì</font></div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="top" width="95">\r\n            <div align="center"><font size="1">10</font></div>\r\n            </td>\r\n            <td nowrap="nowrap" width="312">\r\n            <div><font size="1">¤Ø³¹ÃÒÀÃ³ì&nbsp;Ç§Éìá¡éÇ</font></div>\r\n            </td>\r\n            <td width="217">\r\n            <div><font size="1">ªÅºØÃÕ</font></div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="top" width="95">\r\n            <div align="center"><font size="1">11</font></div>\r\n            </td>\r\n            <td nowrap="nowrap" width="312">\r\n            <div><font size="1">¤Ø³àº­¨ÁÒÀÃ³ì&nbsp;ÍØ¹ÐÃÑµ¹ì</font></div>\r\n            </td>\r\n            <td width="217">\r\n            <div><font size="1">ÊÁÔµÔàÇª ÈÃÕ¹¤ÃÔ¹·Ãì</font></div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="top" width="95">\r\n            <div align="center"><font size="1">12</font></div>\r\n            </td>\r\n            <td nowrap="nowrap" width="312">\r\n            <div><font size="1">¤Ø³¾ÃÃ³à¾ç­ ¨§¿ÙÊØÇÃÃ³</font></div>\r\n            </td>\r\n            <td width="217">\r\n            <div><font size="1">¾­Òä· 2</font></div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="top" width="95">\r\n            <div align="center"><font size="1">13</font></div>\r\n            </td>\r\n            <td nowrap="nowrap" width="312">\r\n            <div><font size="1">¹Ò§¾ÔÁ¾ìª³¡&nbsp;¨Ñ¹·ìâªµÔ¡ØÅ</font></div>\r\n            </td>\r\n            <td width="217">\r\n            <div><font size="1">ÃÒÁÒ¸Ôº´Õ</font></div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="top" width="95">\r\n            <div align="center"><font size="1">14</font></div>\r\n            </td>\r\n            <td nowrap="nowrap" width="312">\r\n            <div><font size="1">¹Ò§ªØµÔÁÒ&nbsp;à¨ÃÔ­¸¹Ò¡Ôµ</font></div>\r\n            </td>\r\n            <td width="217">\r\n            <div><font size="1">ÃÒÁÒ¸Ôº´Õ</font></div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="top" width="95">\r\n            <div align="center"><font size="1">15</font></div>\r\n            </td>\r\n            <td nowrap="nowrap" width="312">\r\n            <div><font size="1">¤Ø³à¾ç­ÈÃÕ&nbsp;ÍÔ¹·ÃÊ¶ÔµÂì</font></div>\r\n            </td>\r\n            <td width="217">\r\n            <div><font size="1">ÃÒªÇÔ¶Õ</font></div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="top" width="95">\r\n            <div align="center"><font size="1">16</font></div>\r\n            </td>\r\n            <td nowrap="nowrap" width="312">\r\n            <div><font size="1">¤Ø³ÊØ¹Ñ¹·Ò ÍÃÔÂ¡ØÅ¹ÔÁÔµÃ</font></div>\r\n            </td>\r\n            <td width="217">\r\n            <div><font size="1">ÇªÔÃ¾ÂÒºÒÅ</font></div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="top" width="95">\r\n            <div align="center"><font size="1">17</font></div>\r\n            </td>\r\n            <td width="312">\r\n            <div><font size="1">¤Ø³ÊÔÃÔÅÑ¡É³ì&nbsp;àÅÕéÂÇàÊç§</font></div>\r\n            </td>\r\n            <td width="217">\r\n            <div><font size="1">¾ÃÐÁ§¡Ø®à¡ÅéÒ</font></div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="top" width="95">\r\n            <div align="center"><font size="1">18</font></div>\r\n            </td>\r\n            <td width="312">\r\n            <div><font size="1">¤Ø³»ÒÃÔ©ÑµÃ&nbsp;ºÃÃà·×Í§ </font></div>\r\n            </td>\r\n            <td width="217">\r\n            <div><font size="1">ÊÃÃ¾ÊÔ·¸Ô»ÃÐÊ§¤ì</font></div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="top" width="95">\r\n            <div align="center"><font size="1">19</font></div>\r\n            </td>\r\n            <td nowrap="nowrap" width="312">\r\n            <div><font size="1">¤Ø³ÊØ·ÑÈ¹ÕÂì&nbsp;à¨ÃÔ­·Í§¡ØÅ</font></div>\r\n            </td>\r\n            <td width="217">\r\n            <div><font size="1">ä·Â¹¤ÃÔ¹·Ãì</font></div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="top" width="95">\r\n            <div align="center"><font size="1">20</font></div>\r\n            </td>\r\n            <td nowrap="nowrap" width="312">\r\n            <div><font size="1">¤Ø³ÊØ¹ÔÊÒ&nbsp;¢Ñ¹¸ÊÐÍÒ´</font></div>\r\n            </td>\r\n            <td width="217">\r\n            <div><font size="1">¡ÃØ§à·¾</font></div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="top" width="95">\r\n            <div align="center"><font size="1">21</font></div>\r\n            </td>\r\n            <td nowrap="nowrap" width="312">\r\n            <div><font size="1">¾.µ.·.Ë­Ô§ÍÃÇÃÃ³&nbsp;·Í§¹ÔÅ</font></div>\r\n            </td>\r\n            <td width="217">\r\n            <div><font size="1">µÓÃÇ¨</font></div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="top" width="95">\r\n            <div align="center"><font size="1">22</font></div>\r\n            </td>\r\n            <td nowrap="nowrap" width="312">\r\n            <div><font size="1">¾.µ.·.Ë­Ô§ÊØ»Ñ¹&nbsp;ªØ³Ë¹Ñ¹·ì</font></div>\r\n            </td>\r\n            <td width="217">\r\n            <div><font size="1">µÓÃÇ¨</font></div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="top" width="95">\r\n            <div align="center"><font size="1">23</font></div>\r\n            </td>\r\n            <td nowrap="nowrap" width="312">\r\n            <div><font size="1">¤Ø³¹ÀÒ¾Ã&nbsp;á¡è¹ÊÒÃ</font></div>\r\n            </td>\r\n            <td width="217">\r\n            <div><font size="1">¨ØÌÒÅ§¡Ã³ì</font></div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="top" width="95">\r\n            <div align="center"><font size="1">24</font></div>\r\n            </td>\r\n            <td nowrap="nowrap" width="312">\r\n            <div><font size="1">¤Ø³ÊÒÅÔ¹&nbsp;ÇÑ²¹Ò·Ã</font></div>\r\n            </td>\r\n            <td width="217">\r\n            <div><font size="1">¨ØÌÒÅ§¡Ã³ì</font></div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="top" width="95">\r\n            <div align="center"><font size="1">25</font></div>\r\n            </td>\r\n            <td nowrap="nowrap" width="312">\r\n            <div><font size="1">¤Ø³ÍÁÃÒ&nbsp;Áâ¹ÂÈ</font></div>\r\n            </td>\r\n            <td width="217">\r\n            <div><font size="1">ÁËÒÃÒª¹¤ÃàªÕÂ§ãËÁè</font></div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="top" width="95">\r\n            <div align="center"><font size="1">26</font></div>\r\n            </td>\r\n            <td nowrap="nowrap" width="312">\r\n            <div><font size="1">¹ÒÂ¹Ô¤Á&nbsp;¤ÓàËÅ×Í§</font></div>\r\n            </td>\r\n            <td width="217">\r\n            <div><font size="1">ÁËÒÃÒª¹¤ÃàªÕÂ§ãËÁè</font></div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="top" width="95">\r\n            <div align="center"><font size="1">27</font></div>\r\n            </td>\r\n            <td nowrap="nowrap" width="312">\r\n            <div><font size="1">¤Ø³·Í§ÈÔÅ»ì&nbsp;¤Ó¨Ñ¹·ÃìºØ­àÃ×Í§</font></div>\r\n            </td>\r\n            <td width="217">\r\n            <div><font size="1">ºÓÃØ§ÃÒÉ®Ãì</font></div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="top" width="95">\r\n            <div align="center"><font size="1">28</font></div>\r\n            </td>\r\n            <td nowrap="nowrap" width="312">\r\n            <div><font size="1">¤Ø³ÈÈÔ¾ÔÁ¾ì ä¾âÃ¨¡Ô¨µÃÐ¡ÙÅ</font></div>\r\n            </td>\r\n            <td width="217">\r\n            <div><font size="1">¸ÃÃÁÈÒµÃìà©ÅÔÁ¾ÃÐà¡ÕÂÃµÔ</font></div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="top" width="95">\r\n            <div align="center"><font size="1">29</font></div>\r\n            </td>\r\n            <td nowrap="nowrap" width="312">\r\n            <div><font size="1">¤Ø³¾Ñ¡µÃì¾ÔÁÅ&nbsp;ÈÃÊÙ§à¹Ô¹</font></div>\r\n            </td>\r\n            <td width="217">\r\n            <div><font size="1">¢Í¹á¡è¹</font></div>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</p>', '', '', '', '', 0, '2009-09-17 14:51:06');

-- --------------------------------------------------------

-- 
-- Table structure for table `newscenter12`
-- 

CREATE TABLE `newscenter12` (
  `news_id` int(5) unsigned zerofill NOT NULL auto_increment,
  `title_eng` varchar(250) NOT NULL default '',
  `title_th` varchar(250) NOT NULL default '',
  `details_eng` text NOT NULL,
  `details_th` text NOT NULL,
  `pic_s` varchar(100) NOT NULL default '',
  `pic_b` varchar(100) NOT NULL default '',
  `file_name` varchar(255) NOT NULL,
  `file_down` varchar(255) NOT NULL,
  `view` int(5) NOT NULL default '0',
  `ddpost` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`news_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `newscenter12`
-- 

INSERT INTO `newscenter12` VALUES (00003, '', 'UPDATE Guideline for Novel Influenza A (H1N1)', '', '<span class="NorTxtGray">\r\n<p><font size="1">Update á¹Ç·Ò§»¯ÔºÑµÔ·Õè¹èÒÊ¹ã¨à¡ÕèÂÇ¡Ñº¡ÒÃ´ÙáÅ »éÍ§¡Ñ¹áÅÐÃÑ¡ÉÒ¼Ùé»èÇÂ solid organ transplantation ·ÕèÊÑÁ¼ÑÊËÃ×ÍµÔ´àª×éÍ Novel Influenza ¨Ñ´·Óâ´Â <strong><font color="#ff0000">The Transplantation Society</font></strong>&nbsp; <em>(AST ID COP/ TID section of TTS Novel Influenza A/H1N1 Working Group) </em>¹ÓàÊ¹Íã¹ website ¢Í§ The Transplantation Society (<font face="Arial">http://www.transplantation-soc.org/) </font>àÁ×èÍ 20 ¡.Â. 2552</font></p>\r\n<p><font size="1"><a href="http://www.transplantation-soc.org/downloads/AST%20TTS%20H1N1%20Guidance%20Document%20disclaimer%209-22-09%20PDF%20FINAL.pdf">Download&nbsp;Guideline</a> </font></p>\r\n<p><a href="http://www.transplantthai.org/newdetails.php?news_id=00055"></a></p>\r\n</span>', '', '', '', '', 0, '2009-10-24 19:41:50');
INSERT INTO `newscenter12` VALUES (00002, '', 'KDIGO Clinical practice guideline for the care of kidney transplant recipients ', '', '<span class="NorTxtGray">\r\n<p><font size="1">Update clinical guideline ã¹¡ÒÃ´ÙáÅ¼ÙéÃÑººÃÔ¨Ò¤äµ ¨Ñ´·Óâ´Â KDIGO áÅÐ The Transplantation society</font></p>\r\n<p><a href="http://www.tts.org/kdigo/kdigo.html"><font size="1">Download guideline</font></a></p>\r\n<p><a href="http://www.tts.org/kdigo/kdigo.html"><img height="56" alt="" width="250" src="http://www.transplantthai.org/pic/Image/Kdigo(1).jpg" /></a></p>\r\n<p><font size="1"><strong>Download the entire guideline </strong>[</font><a href="http://tts.org/kdigo/downloads/kdigo/KDIGO_KidneyTxGuideline.pdf"><font size="1">PDF</font></a><font size="1">]</font></p>\r\n<font size="1"><hr />\r\n</font>\r\n<p><font size="1">&nbsp;</font><font size="1"><strong>Quickview to scan the document </strong>[</font><a href="http://www.scribd.com/doc/21189340/KDIGO-Txp-GL-Sans-AJT-Cover-2?secret_password=m501v8idb1j6rl9c1lp"><font size="1">LINK</font></a><font size="1">]</font></p>\r\n<font size="1"><hr />\r\n</font>\r\n<p><strong><font size="1">&nbsp;</font><font size="1">KDIGO guidelines - By chapter</font></strong></p>\r\n<p><font size="1"><strong>Front Matter </strong>[</font><a href="http://tts.org/kdigo/downloads/kdigo/Front_Matter.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\n<br />\r\n</font><font size="1">Disclaimer<br />\r\nWork Group Membership<br />\r\nKDIGO Board Members<br />\r\nAbbreviations and Acronyms<br />\r\nReference Keys<br />\r\nAbstract<br />\r\nForeword<br />\r\nGuideline Scope and Intended Users</font></p>\r\n<font size="1"><hr />\r\n</font>\r\n<p><font size="1"><strong>Section I - Introduction: Immunosuppression</strong> [</font><a href="http://tts.org/kdigo/downloads/kdigo/S1-Introduction.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\n<br />\r\n</font><font size="1">Chapter 1: Induction Therapy [</font><a href="http://tts.org/kdigo/downloads/kdigo/S1-C01_Induction_Therapy.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 2: Initial Maintenance Immunosuppressive Medications [</font><a href="http://tts.org/kdigo/downloads/kdigo/S1-C02_InitialMaintenanceImmunosuppressiveMedications.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 3: Long-Term Maintenance Immunosuppressive Medications [</font><a href="http://tts.org/kdigo/downloads/kdigo/S1-C03_Long-TermMaintenanceImmunosuppressiveMedications.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 4: Strategies to Reduce Drug Costs [</font><a href="http://tts.org/kdigo/downloads/kdigo/S1-C04_StrategiestoReduceDrugCosts.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 5: Monitoring Immunosuppressive Medications [</font><a href="http://tts.org/kdigo/downloads/kdigo/S1-C05_MonitoringImmunosuppressiveMedications.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 6: Treatment of Acute Rejection [</font><a href="http://tts.org/kdigo/downloads/kdigo/S1-C06_TreatmentofAcuteRejection.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 7: Treatment of Chronic Allograft Injury [</font><a href="http://tts.org/kdigo/downloads/kdigo/S1-C07_TreatmentofChronicAllograftInjury.pdf"><font size="1">PDF</font></a><font size="1">]</font></p>\r\n<font size="1"><hr />\r\n</font>\r\n<p><font size="1"><strong>Section II - Introduction: Graft Monitoring and Infections</strong> [</font><a href="http://tts.org/kdigo/downloads/kdigo/S2-Introduction.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\n<br />\r\n</font><font size="1">Chapter 8: Monitoring Kidney Allograft Function [</font><a href="http://tts.org/kdigo/downloads/kdigo/S2-C08_MonitoringKidneyAllograftFunction.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 9: Kidney Allograft Biopsy [</font><a href="http://tts.org/kdigo/downloads/kdigo/S2-C09_KidneyAllograftBiopsy.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 10: Recurrent Kidney Disease [</font><a href="http://tts.org/kdigo/downloads/kdigo/S2-C10_RecurrentKidneyDisease.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 11: Preventing, Detecting, and Treating Nonadherence [</font><a href="http://tts.org/kdigo/downloads/kdigo/S2-C11_PreventingDetectingTreatingNonadherence.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 12: Vaccination [</font><a href="http://tts.org/kdigo/downloads/kdigo/S2-C12_Vaccination.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 13: Viral Diseases [</font><a href="http://tts.org/kdigo/downloads/kdigo/S2-C13_ViralDiseases.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\n-13.1: BK Polyoma Virus<br />\r\n-13.2: Cytomegalovirus<br />\r\n-13.3: Epstein-Barr Virus and Post-Transplant Lymphoproliferative Disease<br />\r\n-13.4: Herpes Simplex Virus 1, 2 and Varicella Zoster Virus<br />\r\n-13.5: Hepatitis C Virus<br />\r\n-13.6: Hepatitis B Virus<br />\r\n-13.7: Human Immunodeficiency Virus<br />\r\nChapter 14: Other Infections [</font><a href="http://tts.org/kdigo/downloads/kdigo/S2-C14_OtherInfections.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\n-14.1: Urinary Tract Infection<br />\r\n-14.2: Pneumocystis Jirovecii Pneumonia<br />\r\n-14.3: Tuberculosis<br />\r\n-14.4: Candida Prophylaxis<br />\r\n</font><font size="1"></font></p>\r\n<p><font size="1"><strong>Section III - Introduction: Cardiovascular Disease</strong> [</font><a href="http://tts.org/kdigo/downloads/kdigo/S3-Introduction.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\n<br />\r\n</font><font size="1">Chapter 15: Diabetes Mellitus [</font><a href="http://tts.org/kdigo/downloads/kdigo/S3-C15_DiabetesMellitus.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\n-15.1: Screening for New-Onset Diabetes after Transplantation<br />\r\n-15.2: Managing NODAT or Diabetes Present at Transplantation<br />\r\nChapter 16: Hypertension, Dyslipidemias, Tobacco Use, and Obesity [</font><a href="http://tts.org/kdigo/downloads/kdigo/S3-C16_HypertensionDyslipidemiasTobaccoUseObesity.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\n-16.1: Hypertension<br />\r\n-16.2: Dyslipidemias<br />\r\n-16.3: Tobacco Use<br />\r\n-16.4: Obesity<br />\r\nChapter 17: Cardiovascular Disease Management [</font><a href="http://tts.org/kdigo/downloads/kdigo/S3-C17_CardiovascularDiseaseManagement.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\n</font><font size="1"></font></p>\r\n<p><font size="1"><strong>Section IV - Introduction: Malignancy</strong> [</font><a href="http://tts.org/kdigo/downloads/kdigo/S4-Introduction.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\n<br />\r\n</font><font size="1">Chapter 18: Cancer of the Skin and Lip [</font><a href="http://tts.org/kdigo/downloads/kdigo/S4-C18_CanceroftheSkinandLip.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 19: Non&ndash;Skin Malignancies [</font><a href="http://tts.org/kdigo/downloads/kdigo/S4-C19_Non_SkinMalignancies.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 20: Managing Cancer with Reduction of Immunosuppressive Medication [</font><a href="http://tts.org/kdigo/downloads/kdigo/S4-C20_ManagingCancerwithReductionofImmunosuppressiveMedication.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\n</font><font size="1"></font></p>\r\n<p><font size="1"><strong>Section V - Introduction: Other Complications</strong> [</font><a href="http://tts.org/kdigo/downloads/kdigo/S5-Introduction.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\n<br />\r\n</font><font size="1">Chapter 21: Transplant Bone Disease [</font><a href="http://tts.org/kdigo/downloads/kdigo/S5-C21_TransplantBoneDisease.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 22: Hematological Complications [</font><a href="http://tts.org/kdigo/downloads/kdigo/S5-C22_HematologicalComplications.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 23: Hyperuricemia and Gout [</font><a href="http://tts.org/kdigo/downloads/kdigo/S5-C23_HyperuricemiaandGout.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 24: Growth and Development [</font><a href="http://tts.org/kdigo/downloads/kdigo/S5-C24_GrowthandDevelopment.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 25: Sexual Function and Fertility [</font><a href="http://tts.org/kdigo/downloads/kdigo/S5-C25_SexualFunctionandFertility.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\n-25.1: Sexual Function<br />\r\n-25.2: Female Fertility<br />\r\n-25.3: Male Fertility<br />\r\nChapter 26: Lifestyle [</font><a href="http://tts.org/kdigo/downloads/kdigo/S5-C26_Lifestyle.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nChapter 27: Mental Health [</font><a href="http://tts.org/kdigo/downloads/kdigo/S5-C27_MentalHealth.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\n<br />\r\n<br />\r\n</font><font size="1">Appendix: Methods for Guideline Development [</font><a href="http://tts.org/kdigo/downloads/kdigo/Appendix.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nBiographic and Disclosure Information [</font><a href="http://tts.org/kdigo/downloads/kdigo/Biographic_Disclosure_Information.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nAcknowledgments [</font><a href="http://tts.org/kdigo/downloads/kdigo/Acknowledgments.pdf"><font size="1">PDF</font></a><font size="1">]<br />\r\nReferences [</font><a href="http://tts.org/kdigo/downloads/kdigo/References_Kdigo.pdf"><font size="1">PDF</font></a><font size="1">]</font></p>\r\n</span>', 's_1256387869.KDIGO_Banner.jpg', '1256387869.KDIGO_Banner.jpg', '', '', 0, '2009-10-24 19:37:49');

-- --------------------------------------------------------

-- 
-- Table structure for table `newscenter13`
-- 

CREATE TABLE `newscenter13` (
  `news_id` int(5) unsigned zerofill NOT NULL auto_increment,
  `title_eng` varchar(250) NOT NULL default '',
  `title_th` varchar(250) NOT NULL default '',
  `details_eng` text NOT NULL,
  `details_th` text NOT NULL,
  `pic_s` varchar(100) NOT NULL default '',
  `pic_b` varchar(100) NOT NULL default '',
  `file_name` varchar(255) NOT NULL,
  `file_down` varchar(255) NOT NULL,
  `view` int(5) NOT NULL default '0',
  `ddpost` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`news_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `newscenter13`
-- 

INSERT INTO `newscenter13` VALUES (00001, 'About us ', '¢éÍÁÙÅÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â', '<p><font size="2" face="Times New Roman"><img alt="" src="/pic/Image/logo1(1).jpg" /><br />\r\n</font><font face="Times New Roman"><font size="3"><strong>Thai Transplantation Society</strong>&nbsp; has long been an ardent supporter of The Transplantation Society and recently become one of its affiliated societies. It has also worked with various international organizations, such as the World Health Organization, to improve transplantation practices in Thailand, which has a significant unfulfilled demand for transplantation treatments. To date, 330 patients in Thailand have received liver transplants from deceased donors, while a further 30 pediatric and adult patients have had liver transplants from living related donors. The total number of Thai patients who have received bone marrow and stem cell transplants now exceeds 1,000 transplantations. </font></font></p>\r\n<p align="left"><font size="3" face="Times New Roman">Kidney transplants constitute the largest number of solid organ transplantations being performed in Thailand, with 4,202 patients to date having received kidney transplants from 23 centers throughout the country. Fifty-five percent were kidney transplants from deceased donors and forty-five percent from living related donors. Currently, 400 kidney transplants are performed in Thailand each year. However, many more patients remain in need of transplantations.<br />\r\n</font></p>\r\n<font size="2" face="Times New Roman">\r\n<p align="center">.............................................................................................................................................................</p>\r\n</font>', '<p align="left"><font size="2">ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â ä´é¨Ñ´µÑé§¢Öé¹àÁ×èÍÇÑ¹·Õè 10 ÁÕ¹Ò¤Á 2531 ã¹ª×èÍ <strong><font color="#0000ff">&quot;ªÁÃÁà»ÅÕèÂ¹ÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â&quot;</font></strong> áÅÐà»ÅÕèÂ¹ª×èÍà»ç¹ <strong><font color="#0000ff">&quot;ÊÁÒ¤Áà»ÅÕèÂ¹ÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â (Thai Transplantation Association)&quot;</font></strong> àÁ×èÍÇÑ¹·Õè 25 ¡ØÁÀÒ¾Ñ¹¸ì 2543 µèÍÁÒãªéª×èÍÇèÒ<strong> <font color="#0000ff">&quot;ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â (Thai Transplantation Society)&quot;</font></strong> â´ÂÁÕÃÒÂ¹ÒÁ¢Í§»ÃÐ¸Ò¹ªÁÃÁáÅÐ¹ÒÂ¡ÊÁÒ¤Á´Ñ§¹Õé</font></p>\r\n<p align="left">\r\n<table style="WIDTH: 386pt; BORDER-COLLAPSE: collapse" border="0" cellspacing="0" cellpadding="0" width="514">\r\n    <colgroup><col style="WIDTH: 204pt; mso-width-source: userset; mso-width-alt: 8704" width="272"></col><col style="WIDTH: 182pt; mso-width-source: userset; mso-width-alt: 7744" width="242"></col></colgroup>\r\n    <tbody>\r\n        <tr style="HEIGHT: 19.5pt" height="26">\r\n            <td style="WIDTH: 204pt; HEIGHT: 19.5pt" class="xl65" height="26" width="272" align="left">»ÃÐ¸Ò¹ªÁÃÁ »Õ 2531&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n            <td style="BORDER-LEFT: medium none; WIDTH: 182pt" class="xl66" width="242" align="left">¹¾. ·Í§´Õ&nbsp; ªÑÂ¾Ò¹Ôª</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 19.5pt" height="26">\r\n            <td style="HEIGHT: 19.5pt; BORDER-TOP: medium none" class="xl65" height="26" align="left"><span lang="TH">»ÃÐ¸Ò¹ªÁÃÁ »Õ 2532-2534&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">¹¾. ·Í§´Õ&nbsp; ªÑÂ¾Ò¹Ôª</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 19.5pt" height="26">\r\n            <td style="HEIGHT: 19.5pt; BORDER-TOP: medium none" class="xl65" height="26" align="left"><span lang="TH">»ÃÐ¸Ò¹ªÁÃÁ »Õ 2535-2537&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">È. ¹¾. ªÇÅÔµ&nbsp; ÍèÍ§¨ÃÔµ</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 19.5pt" height="26">\r\n            <td style="HEIGHT: 19.5pt; BORDER-TOP: medium none" class="xl65" height="26" align="left"><span lang="TH">¹ÒÂ¡ÊÁÒ¤Á &nbsp;»Õ 2537-2539&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">È. ¹¾. ªÇÅÔµ&nbsp; ÍèÍ§¨ÃÔµ</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 19.5pt" height="26">\r\n            <td style="HEIGHT: 19.5pt; BORDER-TOP: medium none" class="xl65" height="26" align="left"><span lang="TH">¹ÒÂ¡ÊÁÒ¤Á &nbsp;»Õ 2539-2541&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">È. ¹¾. ä¾ºÙÅÂì&nbsp; ¨Ôµ»ÃÐä¾</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 19.5pt" height="26">\r\n            <td style="HEIGHT: 19.5pt; BORDER-TOP: medium none" class="xl65" height="26" align="left"><span lang="TH">¹ÒÂ¡ÊÁÒ¤Á &nbsp;»Õ 2541-2543&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">È. ¹¾. ä¾ºÙÅÂì&nbsp; ¨Ôµ»ÃÐä¾</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 19.5pt" height="26">\r\n            <td style="HEIGHT: 19.5pt; BORDER-TOP: medium none" class="xl65" height="26" align="left"><span lang="TH">¹ÒÂ¡ÊÁÒ¤Á &nbsp;»Õ 2543-2545&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">¾Å.µ. Ë­Ô§ ¾­.&nbsp;ÍØÉ³Ò&nbsp; ÅØÇÕÃÐ</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 19.5pt" height="26">\r\n            <td style="HEIGHT: 19.5pt; BORDER-TOP: medium none" class="xl65" height="26" align="left"><span lang="TH">¹ÒÂ¡ÊÁÒ¤Á &nbsp;»Õ 2545-2547&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">¾Å.µ. Ë­Ô§ ¾­.&nbsp;ÍØÉ³Ò&nbsp; ÅØÇÕÃÐ</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 19.5pt" height="26">\r\n            <td style="HEIGHT: 19.5pt; BORDER-TOP: medium none" class="xl65" height="26" align="left"><span lang="TH">¹ÒÂ¡ÊÁÒ¤Á &nbsp;»Õ 2547-2549&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">È. ¹¾. âÊÀ³&nbsp; ¨ÔÃÊÔÃÔ¸ÃÃÁ</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 19.5pt" height="26">\r\n            <td style="HEIGHT: 19.5pt; BORDER-TOP: medium none" class="xl65" height="26" align="left"><span lang="TH">¹ÒÂ¡ÊÁÒ¤Á &nbsp;»Õ 2549-2551&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">È. ¹¾. âÊÀ³&nbsp; ¨ÔÃÊÔÃÔ¸ÃÃÁ</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 19.5pt" height="26">\r\n            <td style="HEIGHT: 19.5pt; BORDER-TOP: medium none" class="xl65" height="26" align="left"><span lang="TH">¹ÒÂ¡ÊÁÒ¤Á &nbsp;»Õ 2551-2553&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">È. ¹¾. ÇÊÑ¹µì&nbsp; ÊØàÁ¸¡ØÅ</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 19.5pt" height="26">\r\n            <td style="HEIGHT: 19.5pt; BORDER-TOP: medium none" class="xl65" height="26" align="left"><span lang="TH">¹ÒÂ¡ÊÁÒ¤Á &nbsp;»Õ 2553-2555&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">È. ¹¾. ÇÊÑ¹µì&nbsp; ÊØàÁ¸¡ØÅ</td>\r\n        </tr>\r\n        <tr style="HEIGHT: 19.5pt" height="26">\r\n            <td style="HEIGHT: 19.5pt; BORDER-TOP: medium none" class="xl65" height="26" align="left"><span lang="TH">¹ÒÂ¡ÊÁÒ¤Á &nbsp;»Õ&nbsp;2556-»Ñ¨¨ØºÑ¹&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span></td>\r\n            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="xl66" align="left">ÃÈ. ¹¾. à¡ÃÕÂ§ÈÑ¡´Ôì ÇÒÃÕáÊ§·Ô¾Âì</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</p>', '', '', '', '', 0, '2009-09-17 16:20:03');

-- --------------------------------------------------------

-- 
-- Table structure for table `newscenter14`
-- 

CREATE TABLE `newscenter14` (
  `news_id` int(5) unsigned zerofill NOT NULL auto_increment,
  `title_eng` varchar(250) NOT NULL default '',
  `title_th` varchar(250) NOT NULL default '',
  `details_eng` text NOT NULL,
  `details_th` text NOT NULL,
  `pic_s` varchar(100) NOT NULL default '',
  `pic_b` varchar(100) NOT NULL default '',
  `file_name` varchar(255) NOT NULL,
  `file_down` varchar(255) NOT NULL,
  `view` int(5) NOT NULL default '0',
  `ddpost` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`news_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `newscenter14`
-- 

INSERT INTO `newscenter14` VALUES (00005, '', 'TRANSPLANTATION IN THAILAND', '', '<p><font face="Arial" color="#0000ff" size="2"><strong>TRANSPLANTATION IN THAILAND</strong></font></p>\r\n<div><strong><font size="2"><span class="Tahoma12B"><font color="#ff0000">Heart Transplantation in Thailand</font></span> <br />\r\n</font></strong><span class="tahoma12"><br />\r\n<font face="Times New Roman" size="2">Thailand is the first country in ASEAN to perform heart transplantation twenty one years ago. Currently, the cumulative number of patients who receive intrathoracic organ transplantation including heart, heart -lung and lung transplantation in the country is 142 patients. </font></span></div>\r\n<div><strong><span style="COLOR: red"><font size="1">&nbsp;</font></span></strong></div>\r\n<div><font size="1"><font color="#ff0000"><strong><span class="Tahoma12B"><font size="2">Liver Transplantation in Thailand</font></span> <br />\r\n<br />\r\n</strong></font></font><font size="2"><span class="tahoma12"><font face="Times New Roman">The cumulative number of patients who received deceased donor liver transplantation in Thailand is 330 patients. In addition, living related liver transplantation has been given to treat 30 pediatric and adult patients with liver failure from congenital and acquired liver diseases.</font> </span></font></div>\r\n<div><strong><span style="COLOR: red"><font size="1">&nbsp;</font></span></strong></div>\r\n<div><font size="1"><span class="Tahoma12B"><font color="#ff0000" size="2"><strong>Kidney Transplantation in Thailand</strong></font>&nbsp;</span></font></div>\r\n<font size="1">\r\n<div><br />\r\n<font face="Times New Roman"><font size="2"><span class="tahoma12">Kidney transplantation is the most highest number of solid organ transplantation being performed in Thailand. Currently, 4202 patients have received kidney transplantation from 23 centers within the kingdom. Fifty five percent of these received deceased donor kidney transplantation and fourty five percent received living related or spousal kidney transplantation. At the moment, 400 kidney transplantation are being performed within the country each year.</span><span class="tahoma12"> </span></font></font></div>\r\n<div><font face="Times New Roman"><font size="2"></font></font></div>\r\n<div><font face="Times New Roman"><font size="2"></font></font></div>\r\n<div><font face="Times New Roman"><font size="2"></font></font></div>\r\n<div><span class="tahoma12"><font style="BACKGROUND-COLOR: #ccffff" color="#0000ff" size="2"><strong></strong></font></span></div>\r\n<div><span class="tahoma12"><font style="BACKGROUND-COLOR: #ccffff" color="#0000ff" size="2"><strong></strong></font></span></div>\r\n<div><span class="tahoma12"><font style="BACKGROUND-COLOR: #ccffff" color="#0000ff" size="2"><strong></strong></font></span></div>\r\n<p><span class="tahoma12"><font style="BACKGROUND-COLOR: #ccffff" face="Arial" color="#0000ff" size="2"><strong>Tract Record of Transplantation Activities</strong></font></span></p>\r\n<div><br />\r\n<font color="#008080" size="2"><strong>Host of The 1st Asian Transplant Games in&nbsp;Chiang Mai during November 3 - 9, 2002.</strong></font></div>\r\n<div><strong><font color="#008080" size="2"></font></strong></div>\r\n<div><strong><font color="#008080" size="2"></font></strong></div>\r\n<div><span class="tahoma12"><strong><font color="#008080" size="2"></font></strong></span></div>\r\n<div><span class="tahoma12"><strong><font color="#008080" size="2"></font></strong></span></div>\r\n<div><span class="tahoma12"><strong><font color="#008080" size="2"></font></strong></span></div>\r\n<div><span class="tahoma12"><strong><font color="#008080" size="2"></font></strong></span></div>\r\n<div><span class="tahoma12"><strong><font color="#008080" size="2"></font></strong></span></div>\r\n<div>\r\n<div><span class="tahoma12"><img height="167" alt="" width="250" src="/pic/Image/Picture1.jpg" />&nbsp;&nbsp; <img height="170" alt="" width="250" src="/pic/Image/Picture2.jpg" /></span></div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div><span class="tahoma12"><font color="#008080" size="2"><strong>Host of The 16th World Transplant Games in&nbsp;Bangkok during 26th Aug -&nbsp;1st Sep 2007.</strong></font></span></div>\r\n<div>\r\n<div><span class="tahoma12"><strong><font color="#008080" size="2"></font></strong></span></div>\r\n<div>\r\n<div><span class="tahoma12"><strong><font color="#008080" size="2"></font></strong></span></div>\r\n<div><span class="tahoma12"><strong><font color="#008080" size="2"></font></strong></span></div>\r\n<div><span class="tahoma12"><strong><font color="#008080" size="2"></font></strong></span></div>\r\n<div><span class="tahoma12"><strong><font color="#008080" size="2"></font></strong></span></div>\r\n<div>\r\n<div>\r\n<div><span class="tahoma12"><img style="WIDTH: 178px; HEIGHT: 135px" height="190" alt="" width="250" src="/pic/Image/badmin.jpg" />&nbsp;<span class="tahoma12"><img style="WIDTH: 109px; HEIGHT: 136px" height="323" alt="" width="250" src="/pic/Image/WTG.jpg" /></span> <img style="WIDTH: 218px; HEIGHT: 137px" height="168" alt="" width="250" src="/pic/Image/TrWTGF.jpg" /></span></div>\r\n<div><span class="tahoma12"><strong><font color="#008080" size="2"></font></strong></span></div>\r\n<div><span class="tahoma12"><strong><font color="#008080" size="2"></font></strong></span></div>\r\n<div></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</font>', '', '', '', '', 0, '2009-12-04 21:30:54');

-- --------------------------------------------------------

-- 
-- Table structure for table `newscenter15`
-- 

CREATE TABLE `newscenter15` (
  `news_id` int(5) unsigned zerofill NOT NULL auto_increment,
  `title_eng` varchar(250) NOT NULL default '',
  `title_th` varchar(250) NOT NULL default '',
  `details_eng` text NOT NULL,
  `details_th` text NOT NULL,
  `pic_s` varchar(100) NOT NULL default '',
  `pic_b` varchar(100) NOT NULL default '',
  `file_name` varchar(255) NOT NULL,
  `file_down` varchar(255) NOT NULL,
  `view` int(5) NOT NULL default '0',
  `ddpost` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`news_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `newscenter15`
-- 

INSERT INTO `newscenter15` VALUES (00002, '', 'POLICY & ETHICS', '', '<p align="left"><font face="Times New Roman"><font size="2"><span class="tahoma12"><font size="3">T</font>hailand <st1:place w:st="on"></st1:place>is the one of participants in the Istanbul Summit that is followed by &quot;The Declaration of Istanbul on Oran Trafficing and Transplant Tourism&quot;&nbsp;. The strategies include :&nbsp;increase the donor pool,&nbsp;prevent organ trafficking, transplant commercialism, and transplant tourism,&nbsp;encourage legitimate, life-saving transplantation programs.&nbsp;&nbsp;</span><strong><span style="FONT-SIZE: 12pt; COLOR: red; FONT-FAMILY: ''Times New Roman''; mso-bidi-font-size: 16.0pt; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''GWLFN B+ DIN''; mso-fareast-language: EN-US; mso-ansi-language: EN-US; mso-bidi-language: TH"><st1:city w:st="on"><st1:place w:st="on"><span style="FONT-SIZE: 11pt; COLOR: black; FONT-FAMILY: ''Times New Roman''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''GWLFN B+ DIN''; mso-fareast-language: EN-US; mso-ansi-language: EN-US; mso-bidi-language: TH"><u><span style="FONT-SIZE: 11pt; COLOR: blue; FONT-FAMILY: ''Times New Roman''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Angsana New''; mso-fareast-language: EN-US; mso-ansi-language: EN-US; mso-bidi-language: TH"><a href="http://www.declarationofistanbul.org/"><font size="2">&quot;The declaration of Istunbul&quot;</font> </a></span></u></span></st1:place></st1:city></span></strong></font></font></p>\r\n<div style="MARGIN: 0cm 0cm 10pt" align="left"><strong><span style="FONT-SIZE: 12pt; COLOR: red; FONT-FAMILY: ''Times New Roman''; mso-bidi-font-size: 16.0pt; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''GWLFN B+ DIN''; mso-fareast-language: EN-US; mso-ansi-language: EN-US; mso-bidi-language: TH"><st1:city w:st="on"><st1:place w:st="on"><span style="FONT-SIZE: 11pt; COLOR: black; FONT-FAMILY: ''Times New Roman''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''GWLFN B+ DIN''; mso-fareast-language: EN-US; mso-ansi-language: EN-US; mso-bidi-language: TH"><u><span style="FONT-SIZE: 11pt; COLOR: blue; FONT-FAMILY: ''Times New Roman''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Angsana New''; mso-fareast-language: EN-US; mso-ansi-language: EN-US; mso-bidi-language: TH"><strong></strong></span></u></span></st1:place></st1:city></span></strong></div>\r\n<div align="left"><span class="Tahoma12B"><strong><font color="#ff0000" size="2">BRAIN DEATH CRITERIA</font></strong></span></div>\r\n<div align="left"><span class="Tahoma12B">&nbsp;</span></div>\r\n<div style="MARGIN: 0cm 0cm 10pt" align="left"><span style="FONT-SIZE: 14pt; LINE-HEIGHT: 115%"><strong></strong></span><span style="FONT-SIZE: 14pt; LINE-HEIGHT: 115%"><strong><st1:city w:st="on"><st1:place w:st="on"></st1:place></st1:city><st1:city w:st="on"><st1:place w:st="on"></st1:place></st1:city></strong><st1:city w:st="on"><st1:place w:st="on"></st1:place></st1:city></span><strong><st1:place w:st="on"></st1:place></strong><span class="tahoma12"><font face="Times New Roman" size="3"><font size="2">Thailand has a well established &quot;Brain death criteria&quot; since 1989. This is endorsed by &quot;The General Medical Council of <st1:place w:st="on"><st1:country-region w:st="on">Thailand</st1:country-region> </st1:place>&quot; which has been assigned as the acting body of The Ministry of Public Health concerning the regulation of the medical practice of the country. The &quot;Brain death criteria&quot; is the standard means to identify potential deceased organ donors.<br />\r\n</font><br />\r\n</font></span>\r\n<div><span class="Tahoma12B"><strong><font color="#ff0000" size="2">NATIONAL ORGAN CENTER OF THE THAI RED CROSS SOCIETY</font></strong></span></div>\r\n<div><br />\r\n<span class="tahoma12"><font face="Times New Roman" size="2">During the past fourteen years, the &quot;National Organ Center of The Thai Red Cross Society&quot; has long been serving as the center for &quot;Potential Deceased Donor Notification&quot; and &quot;Organ Allocation Center&quot; of the country. Organs were allocated by using a modified UNOS scoring &nbsp;system.</font><em><a target="_blank" href="http://english.redcross.or.th/node/52"><font face="Times New Roman" size="2">(more) </font></a></em></span></div>\r\n<div><span class="tahoma12"><em><br />\r\n&nbsp;</em></span>\r\n<div><span class="tahoma12"><em><img style="WIDTH: 202px; HEIGHT: 152px" height="208" alt="" width="250" src="/pic/Image/Logo_of_the_Thai_Red_Cross_Society.jpg" />&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <img height="150" alt="" width="200" src="/pic/Image/PicTxkid.jpg" /></em></span></div>\r\n</div>\r\n</div>', '', '', '', '', 0, '2009-12-04 21:56:28');

-- --------------------------------------------------------

-- 
-- Table structure for table `newscenter16`
-- 

CREATE TABLE `newscenter16` (
  `news_id` int(5) unsigned zerofill NOT NULL auto_increment,
  `title_eng` varchar(250) NOT NULL default '',
  `title_th` varchar(250) NOT NULL default '',
  `details_eng` text NOT NULL,
  `details_th` text NOT NULL,
  `pic_s` varchar(100) NOT NULL default '',
  `pic_b` varchar(100) NOT NULL default '',
  `file_name` varchar(255) NOT NULL,
  `file_down` varchar(255) NOT NULL,
  `view` int(5) NOT NULL default '0',
  `ddpost` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`news_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `newscenter16`
-- 

INSERT INTO `newscenter16` VALUES (00002, '', 'UPDATE ACTIVITIES', '', '<p>\r\n<table border="0" cellspacing="1" summary="" cellpadding="1" width="100%">\r\n    <tbody>\r\n        <tr>\r\n            <td bgcolor="#66ffff" width="100%">\r\n            <div><font color="#000080" size="3" face="Times New Roman"><strong>The National Campaign for increasing organ donation rate</strong></font></div>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <p class="Default"><strong><span style="FONT-SIZE: 11.5pt"><font face="Times New Roman"><br />\r\n            The Thai Ministry of Public Health announces the national campaign for increasing organ donation rate on World Kidney Day.<br />\r\n            <br />\r\n            <img alt="" width="200" height="133" src="/pic/Image/JRKidney.jpg" />&nbsp;<font color="#000080">Mr. <span style="COLOR: #373737"><font color="#000080">Jurin Laksanawisit</font>.&nbsp;T</span></font><span style="COLOR: black; FONT-SIZE: 11.5pt"><font color="#000080">he Minister of Public Health</font>&nbsp;</span></font></span></strong></p>\r\n            <span style="FONT-SIZE: 11.5pt">\r\n            <div><font face="Times New Roman"><font size="2"><span style="COLOR: black; FONT-SIZE: 11.5pt">On the </span><span style="COLOR: black; FONT-SIZE: 11.5pt">March 11, 2010</span><span style="COLOR: black; FONT-SIZE: 11.5pt">, Mr. </span><span style="COLOR: #373737">Jurin Laksanawisit </span><span style="COLOR: black; FONT-SIZE: 11.5pt">the Minister of Public Health&nbsp;</span><span style="COLOR: black; FONT-SIZE: 11.5pt">announced that the Ministry will focus on increasing organ donation rate from brain death donor to solve &nbsp;the problem of organ shortage from lack of donors. Currently, there are more than 3,000 organ failure patients including kidney, liver, heart and cornea are waiting for transplantation. The task will be implemented by Ministry&rsquo;s provincial hospitals to improve their facilities to be the donor hospitals for organ donation and caring the potential donors. The policy is strongly supported by Thai Transplantation Society, The Nephrology Society of Thailand, &nbsp;National Health Security Office, Thai Transplant Coordinator &nbsp;Association and National Organ Center of The Thai Red Cross Society<br />\r\n            <br />\r\n            <img alt="" width="300" height="199" src="/pic/Image/AllTeam.jpg" />&nbsp;&nbsp;&nbsp;&nbsp; <img alt="" width="300" height="199" src="/pic/Image/peoplemeet(1).jpg" /></span></font></font></div>\r\n            <div><font face="Times New Roman"><font size="2"></font></font></div>\r\n            <div><font face="Times New Roman"><font size="2"></font></font></div>\r\n            <div><font face="Times New Roman"><font size="2"></font></font></div>\r\n            <div><font face="Times New Roman"><font size="2"><span style="COLOR: black; FONT-SIZE: 11.5pt">\r\n            <table border="0" cellspacing="1" summary="" cellpadding="1" width="100%">\r\n                <tbody>\r\n                    <tr>\r\n                        <td bgcolor="#66ffff">\r\n                        <div><font color="#000080" size="3" face="Times New Roman"><strong>The National Congress of Transplantation</strong></font></div>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td>\r\n                        <p><font size="2" face="Times New Roman"><br />\r\n                        The National Congress of Transplantation by Thai Transplantation Society was held on 18-19 March 2010 at Radisson Hotel, Bangkok. </font><a href="http://www.transplantthai.org/en/newdetails8.php?news_id=00008"><font size="2" face="Times New Roman">(more..)</font></a></p>\r\n                        <p><img alt="" width="200" height="134" src="/pic/Image/pic11(2).jpg" />&nbsp;&nbsp; &nbsp;&nbsp; <img alt="" width="200" height="134" src="/pic/Image/pic13(1).jpg" /><br />\r\n                        <br />\r\n                        <img alt="" width="200" height="134" src="/pic/Image/pic12(2).jpg" />&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<img alt="" width="200" height="134" src="/pic/Image/pic14(2).jpg" /></p>\r\n                        </td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            </span></font></font></div>\r\n            </span></td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n&nbsp;&nbsp; </p>', '', '', '', '', 0, '2009-12-04 22:04:21');

-- --------------------------------------------------------

-- 
-- Table structure for table `newscenter17`
-- 

CREATE TABLE `newscenter17` (
  `news_id` int(5) unsigned zerofill NOT NULL auto_increment,
  `title_eng` varchar(250) NOT NULL default '',
  `title_th` varchar(250) NOT NULL default '',
  `details_eng` text NOT NULL,
  `details_th` text NOT NULL,
  `pic_s` varchar(100) NOT NULL default '',
  `pic_b` varchar(100) NOT NULL default '',
  `file_name` varchar(255) NOT NULL,
  `file_down` varchar(255) NOT NULL,
  `view` int(5) NOT NULL default '0',
  `ddpost` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`news_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `newscenter17`
-- 

INSERT INTO `newscenter17` VALUES (00002, '', 'TRANSPLANTATION AROUND THE WORLD', '', '<p><font face="Arial" color="#ff0000" size="2"><strong>TRANSPLANTATION AROUND THE WORLD</strong></font></p>\r\n<p><img style="WIDTH: 250px; HEIGHT: 89px" height="89" alt="" width="200" src="/pic/Image/ggworld.gif" /></p>\r\n<p><a href="http://www.transplantation-soc.org/index.php"><font face="Times New Roman" size="3">The Transplantation Society</font></a><br />\r\n<a target="_blank" href="http://www.esot.org/"><font face="Times New Roman" size="3">The European Society for Transplantation</font></a><font face="Times New Roman" size="3">&nbsp;<br />\r\n</font><a target="_blank" href="http://www.mesot-tx.org/"><font face="Times New Roman" size="3">The Middle East Society for Organ Transplantation</font></a><br />\r\n<a target="_blank" href="http://www.scandiatransplant.org/"><font face="Times New Roman" size="3">The Scandinavian Transplantation Society</font></a><font face="Times New Roman" size="3"> <br />\r\n</font><a target="_blank" href="http://www.tsanz.com.au/"><font face="Times New Roman" size="3">The Transplantation Society of Australia and New Zealand</font></a><font face="Times New Roman" size="3"> <br />\r\n</font><a target="_blank" href="http://www.iptaonline.org/"><font face="Times New Roman" size="3">International Pediatric Transplant Association</font></a><font face="Times New Roman" size="3"> <br />\r\n</font><a target="_blank" href="http://www.ilts.org/"><font face="Times New Roman" size="3">The International Liver Transplant Society</font></a><font face="Times New Roman" size="3"> </font></p>\r\n<p align="left"><br />\r\n<a target="_blank" href="http://www.abto.org.br/"><font face="Times New Roman" size="3">The Brazilian Society of Organ Transplantation</font></a><font face="Times New Roman" size="3"> <br />\r\n</font><a target="_blank" href="http://www.cst-transplant.ca/"><font face="Times New Roman" size="3">Canadian Society of Transplantation</font></a><font face="Times New Roman" size="3"> <br />\r\n</font><a target="_blank" href="http://www.asas.or.jp/jst"><font face="Times New Roman" size="3">The Japan Society for Transplantation</font></a><font face="Times New Roman" size="3"> <br />\r\n</font><a target="_blank" href="http://www.mst.org.my/"><font face="Times New Roman" size="3">The Malaysian Transplantation Society</font></a><font face="Times New Roman" size="3"> <br />\r\n</font><a target="_blank" href="http://www.sethepatico.org/"><font face="Times New Roman" size="3">The Spanish Liver Transplantation Society</font></a><font face="Times New Roman" size="3"> <br />\r\n</font><a target="_blank" href="http://www.tond.org.tr/"><font face="Times New Roman" size="3">The Turkish Transplantation Society</font></a><font face="Times New Roman" size="2"> </font></p>', '', '', '', '', 0, '2009-12-04 22:10:44');

-- --------------------------------------------------------

-- 
-- Table structure for table `newscenter18`
-- 

CREATE TABLE `newscenter18` (
  `news_id` int(5) unsigned zerofill NOT NULL auto_increment,
  `title_eng` varchar(250) NOT NULL default '',
  `title_th` varchar(250) NOT NULL default '',
  `details_eng` text NOT NULL,
  `details_th` text NOT NULL,
  `pic_s` varchar(100) NOT NULL default '',
  `pic_b` varchar(100) NOT NULL default '',
  `file_name` varchar(255) NOT NULL,
  `file_down` varchar(255) NOT NULL,
  `view` int(5) NOT NULL default '0',
  `ddpost` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`news_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `newscenter18`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `newscenter19`
-- 

CREATE TABLE `newscenter19` (
  `news_id` int(5) unsigned zerofill NOT NULL auto_increment,
  `title_eng` varchar(250) NOT NULL default '',
  `title_th` varchar(250) NOT NULL default '',
  `details_eng` text NOT NULL,
  `details_th` text NOT NULL,
  `pic_s` varchar(100) NOT NULL default '',
  `pic_b` varchar(100) NOT NULL default '',
  `file_name` varchar(255) NOT NULL,
  `file_down` varchar(255) NOT NULL,
  `view` int(5) NOT NULL default '0',
  `ddpost` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`news_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `newscenter19`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `newscenter20`
-- 

CREATE TABLE `newscenter20` (
  `news_id` int(5) unsigned zerofill NOT NULL auto_increment,
  `title_eng` varchar(250) NOT NULL default '',
  `title_th` varchar(250) NOT NULL default '',
  `details_eng` text NOT NULL,
  `details_th` text NOT NULL,
  `pic_s` varchar(100) NOT NULL default '',
  `pic_b` varchar(100) NOT NULL default '',
  `file_name` varchar(255) NOT NULL,
  `file_down` varchar(255) NOT NULL,
  `view` int(5) NOT NULL default '0',
  `ddpost` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`news_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `newscenter20`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `newscenter21`
-- 

CREATE TABLE `newscenter21` (
  `news_id` int(5) unsigned zerofill NOT NULL auto_increment,
  `title_eng` varchar(250) NOT NULL default '',
  `title_th` varchar(250) NOT NULL default '',
  `details_eng` text NOT NULL,
  `details_th` text NOT NULL,
  `pic_s` varchar(100) NOT NULL default '',
  `pic_b` varchar(100) NOT NULL default '',
  `file_name` varchar(255) NOT NULL,
  `file_down` varchar(255) NOT NULL,
  `view` int(5) NOT NULL default '0',
  `ddpost` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`news_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=94 ;

-- 
-- Dumping data for table `newscenter21`
-- 

INSERT INTO `newscenter21` VALUES (00093, '', 'ÊÒÃ¹ÒÂ¡ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â', '', '<div align="center"><font size="3"><strong>ÊÒÃ¹ÒÂ¡ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â</strong><br />\r\n<br />\r\n</font></div>\r\n<font size="3"> <strong>â´Â ÃÈ.¹¾.à¡ÃÕÂ§ÈÑ¡´Ôì&nbsp; ÇÒÃÕáÊ§·Ô¾Âì</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ¢éÒ¾à¨éÒ <strong>ÃÈ.¹¾.à¡ÃÕÂ§ÈÑ¡´Ôì&nbsp; ÇÒÃÕáÊ§·Ô¾Âì</strong> ã¹°Ò¹Ð¹ÒÂ¡ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â ÇÒÃÐ»Õ ¾.È. òõõö-òõõø ¢ÍÍ¹Ø­Òµà»ç¹µÑÇá·¹¤³Ð¡ÃÃÁ¡ÒÃºÃÔËÒÃ·Ñé§ËÁ´á¹Ð¹ÓÊÁÒ¤ÁÏ ãËé·Ø¡·èÒ¹ÃÙé¨Ñ¡â´ÂÊÑ§à¢» ´Ñ§¹Õé<br />\r\n<br />\r\n</font><font size="3"><font size="3"><img width="264" vspace="5" hspace="5" height="396" align="left" alt="" src="/picnews/Image/leader.jpg" /></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Âä´é¡èÍµÑé§¢Öé¹µÒÁ¡®ËÁÒÂ â´Â¡ÒÃ¨´·ÐàºÕÂ¹µÒÁ¾ÃÐÃÒªºÑ­­ÑµÔÊÁÒ¤ÁàÁ×èÍ»Õ ¾.È. òõóñ â´ÂÁÕá¹Ç¤Ô´ÇèÒ ¡ÒÃ»ÅÙ¡¶èÒÂÍÇÑÂÇÐ à»ç¹¤ÇÒÁ¡éÒÇË¹éÒ·ÕèÊÓ¤Ñ­ÍÂèÒ§ÁÒ¡ã¹Ç§¡ÒÃá¾·Âì ·ÓãËé¼Ùé»èÇÂ·ÕèÁÕâÃ¤àÃ×éÍÃÑ§ÃÐÂÐ·éÒÂ ·Õè¡ÒÃÃÑ¡ÉÒ·ÑèÇä»·Óä´éà¾ÕÂ§»ÃÐ¤Ñº»ÃÐ¤Í§ äÁèÊÒÁÒÃ¶ÃÑ¡ÉÒãËéËÒÂ¢Ò´ àªè¹ âÃ¤äµÇÒÂàÃ×éÍÃÑ§ âÃ¤µÑºá¢ç§&nbsp; ä´éÁÕâÍ¡ÒÊ·Õè¨Ð¡ÅÑºä»ãªéªÕÇÔµµÒÁ»¡µÔä´éÍÕ¡¤ÃÑé§&nbsp; »Ñ¨¨ØºÑ¹ ¡ÒÃ»ÅÙ¡¶èÒÂÍÇÑÂÇÐ»ÃÐÊº¼ÅÊÓàÃç¨´Õ¢Öé¹àÃ×èÍÂæ à»ç¹ÅÓ´Ñº à¹×èÍ§¨Ò¡¤ÇÒÁ¡éÒÇË¹éÒ·Ò§à·¤¹Ô¤¡ÒÃ¼èÒµÑ´ ¤ÇÒÁÃÙéàÃ×èÍ§ÂÒ¡´ÀÙÁÔ¤ØéÁ¡Ñ¹ (Immunosuppressive drug) áÅÐ¤ÇÒÁ¡éÒÇË¹éÒã¹¡ÒÃÇÔ¹Ô¨©ÑÂâÃ¤ ÍÑ¹à»ç¹¼Å¨Ò¡¡ÒÃ¼èÒµÑ´»ÅÙ¡¶èÒÂÍÇÑÂÇÐ<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; »ÃÐà·Èä·ÂÊÒÁÒÃ¶¼èÒµÑ´»ÅÙ¡¶èÒÂäµä´éµÑé§áµè »Õ ¾.È. òõñõ áÅÐÁÕ¡ÒÃ¼èÒµÑ´»ÅÙ¡¶èÒÂä¢¡ÃÐ´Ù¡ µÑº ËÑÇã¨ »Í´ áÅÐ ËÑÇã¨ÃèÇÁ¡Ñº»Í´ µèÍÁÒµÒÁÅÓ´Ñº&nbsp; ã¹»Ñ¨¨ØºÑ¹ÁÕâÃ§¾ÂÒºÒÅ·Õè·Ó¡ÒÃ»ÅÙ¡¶èÒÂÍÇÑÂÇÐä´é·Ñé§ÊÔé¹ òø áËè§·ÑèÇ»ÃÐà·È ÍÇÑÂÇÐ·Õè·Ó¡ÒÃ¼èÒµÑ´»ÅÙ¡¶èÒÂÁÒ¡·ÕèÊØ´¤×Í äµ&nbsp; áÁéÇèÒ¡ÒÃ¼èÒµÑ´»ÅÙ¡¶èÒÂÍÇÑÂÇÐ¨Ðà»ç¹¡ÒÃ¼èÒµÑ´·ÕèÁÕ»ÃÐâÂª¹ìÁÒ¡ áµèÂÑ§ÁÕ¤ÇÒÁ¨Ó¡Ñ´ã¹¡ÒÃ·Ó à¹×èÍ§¨Ò¡»Ñ­ËÒÊÓ¤Ñ­¤×Í ¡ÒÃ¢Ò´á¤Å¹ÍÇÑÂÇÐ·Õè¨Ð¹ÓÁÒ»ÅÙ¡¶èÒÂ â´Â¡ÒÃà»ÃÕÂºà·ÕÂº¨Ó¹Ç¹¼Ùé»èÇÂ·ÕèÃÍÃÑº¡ÒÃ¼èÒµÑ´»ÅÙ¡¶èÒÂÍÇÑÂÇÐ äÁèÇèÒ¨Ðà¹×èÍ§ÁÒ¨Ò¡ ¡ÒÃ·ÕèÂÑ§ÁÕ¡ÒÃ»ÃÐªÒÊÑÁ¾Ñ¹¸ìäÁè·ÑèÇ¶Ö§&nbsp; ¤¹·ÑèÇä»äÁèÃÙé¶Ö§¤ÇÒÁÊÓ¤Ñ­¢Í§¡ÒÃ»ÅÙ¡¶èÒÂÍÇÑÂÇÐ&nbsp; ÁÕ¤ÇÒÁàª×èÍÇèÒ àÁ×èÍä»à¡Ô´ãËÁèÍÒ¨ÁÕÍÇÑÂÇÐäÁè¤Ãº ¶éÒµÒÂâ´Â¢Ò´ÍÇÑÂÇÐºÒ§ÊèÇ¹ áÅÐ¡ÒÃ¢Ò´¤ÇÒÁÃÙé¤ÇÒÁà¢éÒã¨¢Í§ºØ¤ÅÒ¡Ã·Ò§ÊÒ¸ÒÃ³ÊØ¢»Ñ¨¨ØºÑ¹ ÀÒÇÐ¡ÒÃ¢Ò´á¤Å¹ÍÇÑÂÇÐ¨Ö§ÁÕÁÒ¡¢Öé¹àÃ×èÍÂæ ÃèÇÁ¡Ñº ¢èÒÇÊÒÃàÃ×èÍ§¢Í§¡ÒÃ«×éÍ¢ÒÂÍÇÑÂÇÐÁÒ¡¢Öé¹ ·ÓãËé¼Ùé·ÕèµéÍ§¡ÒÃºÃÔ¨Ò¤ÍÇÑÂÇÐ áÅÐ­ÒµÔäÁèÁÕ¤ÇÒÁá¹èã¨ÇèÒ á¾·Âì·Õè·Ó¡ÒÃÃÑ¡ÉÒ¹Ñé¹ÁÕ¤ÇÒÁ¾ÂÒÂÒÁ¨ÐÃÑ¡ÉÒàµçÁ·ÕèËÃ×ÍäÁè ËÃ×ÍµéÍ§¡ÒÃÍÇÑÂÇÐÁÒ¡¨¹äÁèÂÍÁÃÑ¡ÉÒÍÂèÒ§àµçÁ·Õè&nbsp; ·ÓãËéÇÑ¯¨Ñ¡Ã¢Í§¡ÒÃ¢Ò´á¤Å¹ÍÇÑÂÇÐÁÕá¹Çâ¹éÁ·Õè¨ÐÁÒ¡¢Öé¹ ´Ñ§¤Ó¡ÅèÒÇ·ÕèÇèÒ ¡ÒÃ¼èÒµÑ´»ÅÙ¡¶èÒÂÍÇÑÂÇÐ¢Öé¹ÍÂÙè¡Ñº¤ÇÒÁàª×èÍã¨¢Í§ÊÒ¸ÒÃ³ª¹ ¶éÒ¢Ò´ÊÔè§¹Õé¡ÒÃ¼èÒµÑ´»ÅÙ¡¶èÒÂÍÇÑÂÇÐ¡ç¨ÐÍÂÙèäÁèä´é&nbsp; ´Ñ§¹Ñé¹·Ò§ÍÍ¡ÍÕ¡·Ò§Ë¹Öè§·Õè¨ÐªèÇÂãËéà¡Ô´¤ÇÒÁà»ç¹¸ÃÃÁ äÁèÇèÒ¨Ðã¹àÃ×èÍ§¡ÒÃ¡ÃÐ¨ÒÂ¡ÒÃ¼èÒµÑ´ãËé¤¹·Ø¡¤¹äÁèÇèÒ¨¹ËÃ×ÍÃÇÂä´éÁÕâÍ¡ÒÊä´éÃÑº¡ÒÃ¼èÒµÑ´»ÅÙ¡¶èÒÂÍÇÑÂÇÐâ´Âà·èÒà·ÕÂÁ¡Ñ¹&nbsp; ãËé»ÃÐªÒª¹ÁÕ¤ÇÒÁÁÑè¹ã¨ÇèÒ àÁ×èÍµÑ´ÊÔ¹ã¨·Õè¨ÐºÃÔ¨Ò¤ÍÇÑÂÇÐáÅéÇ ¶éÒÁÕ¡ÒÃºÒ´à¨çºÊÒËÑÊ ¡ç¨Ðä´éÃÑº¡ÒÃÃÑ¡ÉÒÍÂèÒ§àµçÁ·Õè¨¹¡ÇèÒ¨Ð¶Ö§·ÕèÊØ´¨ÃÔ§æ&nbsp; ÁÕ¡®à¡³±ìªÑ´à¨¹ã¹¡ÒÃÍ¹Ø­ÒµãËé¹ÓÍÇÑÂÇÐ¢Í§¼ÙéºÃÔ¨Ò¤·ÕèäÁèÁÕªÕÇÔµÁÒãªé&nbsp; ÁÕ¡ÒÃàÅ×Í¡¼Ùé»èÇÂ·ÕèÃÍÃÑº¡ÒÃ¼èÒµÑ´ÍÂèÒ§à»ç¹¸ÃÃÁ áÅÐÁÕ¡ÃÐºÇ¹¡ÒÃã¹¡ÒÃ¤ØéÁ¤ÃÍ§»ÃÐªÒª¹ã¹àÃ×èÍ§¡ÒÃ«×éÍ¢ÒÂÍÇÑÂÇÐ´éÇÂ ¡ç¨Ð·ÓãËéÊÒ¸ÒÃ³ª¹ÁÕ¤ÇÒÁÁÑè¹ã¨·Õè¨ÐºÃÔ¨Ò¤ÍÇÑÂÇÐÁÒ¡¢Öé¹<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ã¹¹ÒÁ¢Í§¹ÒÂ¡ÊÁÒ¤ÁáÅÐ¤³Ð¡ÃÃÁ¡ÒÃºÃÔËÒÃÊÁÒ¤Á»ÅÙ¡¶èÒÂÍÇÑÂÇÐáËè§»ÃÐà·Èä·Â ÁÕ¤ÇÒÁÁØè§ÁÑè¹·Õè¨Ð¾Ñ²¹Ò§Ò¹´éÒ¹¡ÒÃ»ÅÙ¡¶èÒÂÍÇÑÂÇÐ¢Í§»ÃÐà·Èä·Â ãËéÁÕ¤ÇÒÁ¡éÒÇË¹éÒ·Ñé§·Ò§´éÒ¹ÇÔªÒ¡ÒÃ ´éÒ¹ÇÔ¨ÑÂ áÅÐ¡ÒÃºÃÔ¡ÒÃ´éÒ¹¡ÒÃ»ÅÙ¡¶èÒÂÍÇÑÂÇÐãËéÁÕ»ÃÐÊÔ·¸ÔÀÒ¾·Õè´ÕÂÔè§¢Öé¹ ÃÇÁ·Ñé§¾Ñ²¹Ò§Ò¹´éÒ¹ÃÐºº¡ÒÃ»ÅÙ¡¶èÒÂÍÇÑÂÇÐã¹»ÃÐà·ÈµèÍä»</font>', 's_1382691439.leader.jpg', '1382691439.leader.jpg', '', '', 0, '2013-10-25 16:56:11');

-- --------------------------------------------------------

-- 
-- Table structure for table `newspic_tb`
-- 

CREATE TABLE `newspic_tb` (
  `pic_id` int(5) NOT NULL auto_increment,
  `pic_s` varchar(250) NOT NULL,
  `pic_b` varchar(250) NOT NULL,
  `news_id` varchar(50) NOT NULL,
  PRIMARY KEY  (`pic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `newspic_tb`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `staff`
-- 

CREATE TABLE `staff` (
  `staff_id` int(10) NOT NULL auto_increment,
  `staff_title` varchar(10) default NULL,
  `staffname` varchar(100) default NULL,
  `stafflname` varchar(100) default NULL,
  `web` char(1) default '0',
  `service` char(1) default '0',
  `sale` char(1) default '0',
  `username` varchar(20) NOT NULL default '',
  `password` varchar(20) NOT NULL default '',
  `staff_position` varchar(20) default NULL,
  `staff_tel` varchar(20) default NULL,
  `staff_image` varchar(80) default NULL,
  `lastlogin` varchar(100) NOT NULL default '',
  `staff_type` varchar(50) NOT NULL default '',
  `level_1` varchar(15) NOT NULL default '',
  `level_2` varchar(15) NOT NULL default '',
  `level_3` varchar(15) NOT NULL default '',
  `level_4` varchar(15) NOT NULL default '',
  `level_5` varchar(15) NOT NULL default '',
  `level_6` varchar(15) NOT NULL default '',
  `level_7` varchar(7) NOT NULL default '',
  PRIMARY KEY  (`staff_id`),
  KEY `staffname_th` (`staffname`,`stafflname`),
  KEY `web` (`web`,`service`,`sale`),
  KEY `username` (`username`,`password`),
  KEY `staff_position` (`staff_position`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table `staff`
-- 

INSERT INTO `staff` VALUES (7, '¹ÒÂ', 'Ë¹Ô§', '', '0', '0', '0', 'ning', '9200454', '', '0840004534', NULL, '20131025163433', '', '', '', '', '', '', '', '');
INSERT INTO `staff` VALUES (6, '¹Ò§ÊÒÇ', 'Webmaster', 'Clinic', '0', '0', '0', 'clinic', '123456', 'Webmaster', '', NULL, '20090603094311', '', '', '', '', '', '', '', '');
