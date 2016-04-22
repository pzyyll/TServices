-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生時間： 2016 年 04 月 22 日 08:39
-- 伺服器版本: 10.1.8-MariaDB
-- PHP 版本： 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `ep_bank`
--
CREATE DATABASE IF NOT EXISTS `ep_bank` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ep_bank`;

-- --------------------------------------------------------

--
-- 資料表結構 `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `a_ID` varchar(20) NOT NULL,
  `a_Name` varchar(20) DEFAULT NULL,
  `a_Pwd` varchar(100) DEFAULT NULL,
  `a_Permission` int(11) DEFAULT NULL,
  `a_RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `a_No` varchar(20) NOT NULL,
  `qt_No` varchar(20) DEFAULT NULL,
  `ep_No` varchar(20) DEFAULT NULL,
  `a_Content` varchar(1000) DEFAULT NULL,
  `a_Ans` varchar(1000) DEFAULT NULL,
  `a_Analyze` varchar(2000) DEFAULT NULL,
  `a_Img` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `article`
--

INSERT INTO `article` (`a_No`, `qt_No`, `ep_No`, `a_Content`, `a_Ans`, `a_Analyze`, `a_Img`) VALUES
('a00001', 'qt0009', '20151201', 'For this part, you are allowed 30 minutes to write an essay commenting on the saying “Learning is a daily experience and lifetime mission.”You can cite examples to illustrate the importance of lifelong learning. You should write at least 120 words but no more than180 words.', 'Learning is a daily experience and lifetime mission.\n　　Undoubtedly, learning is a daily experience and lifetime mission. For instance, Madam Curie, who conducted pioneering research on radioactivity and became the first woman to win a Nobel Prize, was known for her persistence in learning.\n　　Several reasons, both social and individual, could account for the importance of constant learning. Firstly, in an age of ruthless and relentless competition, only by learning constantly can we bring our potential and ability into full play and catch up with the times. Secondly, learning does not only help us acquire knowledge, but also enriches our lives and broadens our horizons. Thirdly, science and technology change with each passing day. Without constant learning, it would be impossible for us to update our knowledge.\n　　Accordingly, it is constant learning that really matters in achieving success in modern society. In my humble opinion, it is high time that parents and teachers made joint effo', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', '');

-- --------------------------------------------------------

--
-- 資料表結構 `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `c_No` varchar(20) NOT NULL,
  `c_Name` varchar(50) DEFAULT NULL,
  `c_Introduction` varchar(400) DEFAULT NULL,
  `c_AppdendTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `l_No` varchar(20) DEFAULT NULL,
  `c_IntroEn` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `course`
--

INSERT INTO `course` (`c_No`, `c_Name`, `c_Introduction`, `c_AppdendTime`, `l_No`, `c_IntroEn`) VALUES
('c00001', 'En_LV4', '大学英语四级', '2016-04-05 06:21:42', 'l00001', 'CET-4'),
('c00002', 'En_LV6', '大学英语六级', '2016-04-09 13:28:26', 'l00001', 'CET-6'),
('c00003', 'En_ProLV4', '大学英语专业四级', '2016-04-09 13:30:38', 'l00001', 'TEM-4'),
('c00004', 'Jp_N1', 'N1', '2016-04-09 13:33:09', 'l00002', 'N1'),
('c00005', 'Jp_N2', 'N2', '2016-04-09 13:33:53', 'l00002', 'N2'),
('c00006', 'Jp_N3', 'N3', '2016-04-12 12:21:17', 'l00002', 'N3'),
('c00007', 'En_ProLV6', '大学英语专业六级', '2016-04-12 12:23:01', 'l00001', 'TEM-6');

-- --------------------------------------------------------

--
-- 替換檢視表以便查看 `courses`
--
DROP VIEW IF EXISTS `courses`;
CREATE TABLE `courses` (
`c_No` varchar(20)
,`c_Name` varchar(50)
,`c_Introduction` varchar(400)
,`c_AppdendTime` timestamp
,`l_No` varchar(20)
,`c_IntroEn` varchar(20)
,`l_Name` varchar(100)
);

-- --------------------------------------------------------

--
-- 資料表結構 `eptypes`
--

DROP TABLE IF EXISTS `eptypes`;
CREATE TABLE `eptypes` (
  `ep_No` varchar(20) NOT NULL,
  `qt_No` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `eptypes`
--

INSERT INTO `eptypes` (`ep_No`, `qt_No`) VALUES
('20151201', 'qt0001'),
('20151201', 'qt0002'),
('20151201', 'qt0003'),
('20151201', 'qt0004'),
('20151201', 'qt0005'),
('20151201', 'qt0006'),
('20151201', 'qt0007'),
('20151201', 'qt0008'),
('20151201', 'qt0009');

-- --------------------------------------------------------

--
-- 資料表結構 `examinationpaper`
--

DROP TABLE IF EXISTS `examinationpaper`;
CREATE TABLE `examinationpaper` (
  `ep_No` varchar(20) NOT NULL,
  `c_No` varchar(20) DEFAULT NULL,
  `ep_Name` varchar(50) DEFAULT NULL,
  `ep_PublishTime` timestamp NULL DEFAULT NULL,
  `ep_AppdendTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ep_Type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `examinationpaper`
--

INSERT INTO `examinationpaper` (`ep_No`, `c_No`, `ep_Name`, `ep_PublishTime`, `ep_AppdendTime`, `ep_Type`) VALUES
('20150601', 'c00001', '2015年6月大学英语四级真题(一)', '2015-06-20 16:00:00', '2016-04-21 04:06:33', 1),
('20151201', 'c00001', '2015年12月大学英语四级真题(一)', '2015-12-19 16:00:00', '2016-04-05 06:36:32', 1),
('20151202', 'c00001', '2015年12月大学英语四级真题(二)', '2015-12-19 16:00:00', '2016-04-07 10:52:48', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `gapfillingbychoice`
--

DROP TABLE IF EXISTS `gapfillingbychoice`;
CREATE TABLE `gapfillingbychoice` (
  `gfc_No` varchar(20) NOT NULL,
  `qt_No` varchar(20) DEFAULT NULL,
  `ep_No` varchar(20) DEFAULT NULL,
  `gfc_Title` varchar(1000) DEFAULT NULL,
  `gfc_Content` varchar(2000) DEFAULT NULL,
  `gfc_Questions` varchar(1000) DEFAULT NULL,
  `gfc_Separator` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `gapfillingbychoice`
--

INSERT INTO `gapfillingbychoice` (`gfc_No`, `qt_No`, `ep_No`, `gfc_Title`, `gfc_Content`, `gfc_Questions`, `gfc_Separator`) VALUES
('gfc00001', 'qt0005', '20151201', 'Questions 36 to 45 are based on the following passage.', 'For many Americans, 2013 ended with an unusually bitter cold spell. November and December ___ early snow and bone-chilling temperatures in much of the country, part of a year when, for the first time in two ___ , record-cold days will likely turn out to have outnumbered record-warm ones. But the U.S. was the exception; November was the warmest ever ___ , and current data indicates that 2013 is likely to have been the fourth hottest year on record.\n\nEnjoy the snow now, because ___ are good that 2014 will be even hotter, perhaps the hottest year since records have been kept. That’s because, scientists are predicting, 2014 will be an EI Niuo year.\n\nEI niuo, Spanish for “the child”, ___ when surface ocean waters in the southern Pacific become abnormally warm. So large is the Pacific, covering 30% of the planet’s surface, that the ___ energy generated by its warming is enough to touch off a series of weather changes around the world. EI Ninos are ___ with abnormally dry conditions in Southeast Asia and Australia. They can lead to extreme rain in parts of North and South America, even as southern Africa ___ dry weather. Marine life may be affected too; EI Ninos can ___ the rising of the cold, nutrient-rich（营养丰富的）water that supports large fish ___ ,and the unusually warm ocean temperatures can destroy coral(珊瑚).', 'accustomed###acquired###assembly###attribute###champions###elements###expands###familiar###flows###fundamentally###interpretation###passive###passive###regard###respectively###superficial', '###');

-- --------------------------------------------------------

--
-- 資料表結構 `gapfillingbylistening`
--

DROP TABLE IF EXISTS `gapfillingbylistening`;
CREATE TABLE `gapfillingbylistening` (
  `gfl_No` varchar(20) NOT NULL,
  `qt_No` varchar(20) DEFAULT NULL,
  `ep_No` varchar(20) DEFAULT NULL,
  `gfl_Content` varchar(1000) DEFAULT NULL,
  `gfl_ContentLink` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `gapfillingbylistening`
--

INSERT INTO `gapfillingbylistening` (`gfl_No`, `qt_No`, `ep_No`, `gfl_Content`, `gfl_ContentLink`) VALUES
('gfl00001', 'qt0004', '20151201', 'When you look up at the night sky， what do you see? There are other ___ heavenly bodies out there besides the moon and stars。 One of the most ___ fascinating of this is a comet。 \nComets were formed around the same the earth was formed。 They are made up of ice and other frozen liquids and gasses。___ Now and then these dirty snow balls begin to orbit the sun just as the planets do。 \nAs a comet gets closer to the sun。 Some gasses in it begin to unfreeze。 They ___ dust particles from the comet to form a huge cloud。 As the comet gets even nearer to the sun and solar wind blows the cloud behind the comet thus forming its tail。 The tail and ___ fuzzy(模糊的) atmosphere around the comet are ___ that can help identify this ___ in the night sky。\nIn any given year， about dozen known comets come close to the sun in their orbits。 The average person can’t see them all of course。 Usually there is only one or two a year bright enough to be seen with the ___ eye。 Comet Hale-Bopp discovered in 1995 was an ', 'http://127.0.0.1/mp3.mp3');

-- --------------------------------------------------------

--
-- 資料表結構 `gfcans`
--

DROP TABLE IF EXISTS `gfcans`;
CREATE TABLE `gfcans` (
  `gfca_No` varchar(20) NOT NULL,
  `gfc_No` varchar(20) DEFAULT NULL,
  `gfca_Ans` varchar(100) DEFAULT NULL,
  `gfca_Analyze` varchar(1000) DEFAULT NULL,
  `gfca_NumberDidRight` int(11) NOT NULL DEFAULT '0',
  `gfca_AnsNumerDid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `gfcans`
--

INSERT INTO `gfcans` (`gfca_No`, `gfc_No`, `gfca_Ans`, `gfca_Analyze`, `gfca_NumberDidRight`, `gfca_AnsNumerDid`) VALUES
('gfca00001', 'gfc00001', 'fundamentally', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('gfca00002', 'gfc00001', 'expands', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('gfca00003', 'gfc00001', 'superficial', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('gfca00004', 'gfc00001', 'interpretation', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('gfca00005', 'gfc00001', 'acquired', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('gfca00006', 'gfc00001', 'flows', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('gfca00007', 'gfc00001', 'elements', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('gfca00008', 'gfc00001', 'regard', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('gfca00009', 'gfc00001', 'familiar', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('gfca00010', 'gfc00001', 'accustomed', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `gflans`
--

DROP TABLE IF EXISTS `gflans`;
CREATE TABLE `gflans` (
  `gfla_No` varchar(20) NOT NULL,
  `gfl_No` varchar(20) DEFAULT NULL,
  `gfla_Ans` varchar(100) DEFAULT NULL,
  `gfla_Analyze` varchar(1000) DEFAULT NULL,
  `gfla_NumberDidRight` int(11) NOT NULL DEFAULT '0',
  `gfla_AnsNumerDid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `gflans`
--

INSERT INTO `gflans` (`gfla_No`, `gfl_No`, `gfla_Ans`, `gfla_Analyze`, `gfla_NumberDidRight`, `gfla_AnsNumerDid`) VALUES
('gfla00001', 'gfl00001', 'heavenly', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('gfla00002', 'gfl00001', 'fascinating', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('gfla00003', 'gfl00001', 'made up of', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('gfla00004', 'gfl00001', 'Now and then', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('gfla00005', 'gfl00001', 'combine with', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('gfla00006', 'gfl00001', 'generally', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('gfla00007', 'gfl00001', 'characteristics', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('gfla00008', 'gfl00001', 'phenomenon', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('gfla00009', 'gfl00001', 'naked', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('gfla00010', 'gfl00001', 'relatively', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `imans`
--

DROP TABLE IF EXISTS `imans`;
CREATE TABLE `imans` (
  `ima_No` varchar(20) NOT NULL,
  `im_No` varchar(20) DEFAULT NULL,
  `ima_Question` varchar(1000) DEFAULT NULL,
  `ima_Ans` varchar(100) DEFAULT NULL,
  `ima_Analyze` varchar(2000) DEFAULT NULL,
  `ima_NumberDidRight` int(11) NOT NULL DEFAULT '0',
  `ima_AnsNumberDid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `imans`
--

INSERT INTO `imans` (`ima_No`, `im_No`, `ima_Question`, `ima_Ans`, `ima_Analyze`, `ima_NumberDidRight`, `ima_AnsNumberDid`) VALUES
('ima00001', 'im00001', 'The author was advised against the improper use of figures of speech.', 'I', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('ima00002', 'im00001', 'The author’s mother taught him a valuable lesson by pointing out lots of flaws in his seemingly perfect essay.', 'C', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('ima00003', 'im00001', 'A writer should polish his writing repeatedly so as to get closer to perfection.', 'K', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('ima00004', 'im00001', 'Writers may experience periods of time in their life when they just can’t produce anything.', 'E', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('ima00005', 'im00001', 'The author was not much surprised when his school teacher marked his essay as“flawless”.', 'B', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('ima00006', 'im00001', 'Criticizing someone’s speech is said to be easier than coming up with a better one.', 'F', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('ima00007', 'im00001', 'The author looks upon his mother as his most demanding and caring instructor.', 'A', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('ima00008', 'im00001', 'The criticism the author received from his mother changed his as a person.', 'H', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('ima00009', 'im00001', 'The author gradually improved his writing by avoiding fancy language.', 'J', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('ima00010', 'im00001', 'Constructive criticism gives an author a good start to improve his writing.', 'G', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `informationmatch`
--

DROP TABLE IF EXISTS `informationmatch`;
CREATE TABLE `informationmatch` (
  `im_No` varchar(20) NOT NULL,
  `ep_No` varchar(20) DEFAULT NULL,
  `qt_No` varchar(20) DEFAULT NULL,
  `im_Title` varchar(100) DEFAULT NULL,
  `im_Content` varchar(5000) DEFAULT NULL,
  `im_Separator` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `informationmatch`
--

INSERT INTO `informationmatch` (`im_No`, `ep_No`, `qt_No`, `im_Title`, `im_Content`, `im_Separator`) VALUES
('im00001', '20151201', 'qt0006', 'The Perfect Essay', 'A) Looking back on too many years of education, I can identify one truly impossible teacher. She cared about me, and my intellectual life, even when I didn’t. Her expectations were high—impossibly so. She was an English teacher. She was also my mother.\n\nB) When good students turn in an essay, they dream of their instructor returning it to them in exactly the same condition, save for a single word added in the margin of the final page.“Flawless.” This dream came true for me one afternoon in the ninth grade. Of course, I had heard that genius could show itself at an early age, so I was only slightly taken aback that I had achieved perfection at the tender age of 14. Obviously, I did what and professional writer would do; I hurried off to spread the good news. I didn’t get very far. The first person I told was my mother.\n\nC) My mother, who is just shy of five feet tall, is normally incredibly soft-spoken, but on the rare occasion when she got angry, she was terrifying. I am not sure if she was more upset by my hubris（得意忘形）or by the fact that my English teacher had let my ego get so out of hand. In and event. My mother and her red pen showed me how deeply flawed a flaw less essay could be. At the time, I am sure she thought she was teaching me about mechanics, transitions（过渡）, structure, style and voice. But what I learned, and what stuck with me through my time teaching writing at Harvard, was a deeper lesson about the nature of creative criticism.\n\nD) First off, it hurts. Genuine criticism, the type that leaves a lasting mark on you as a writer, also leaves an existential imprint（印记）on you as a person. I have heard people say that a writer should never take criticism personally. I say that we should never listen to these people.\n\nE) Criticism, at its best, is deeply personal, and gets to the heart of why we write the way we do. The intimate nature of genuine criticism implies something about who is able to give it, namely, someone who knows you well enough to show you how your mental life is getting in the way of good writing. Conveniently, they are also the people who care enough to see you through this painful realization. For me it took the form of my first, and I hope only, encounter with writer’s block—I was not able to produce anything for three years.\n\nF) Franz Kafka once said; “Writing is utter solitude（独处）, the descent into the cold abyss（深渊）of oneself.” My mother’s criticism had shown me that Kafka is right about the cold abyss, and when you make the introspective（内省的）descent that writing requires you are not always pleased by what you find. But, in the years that followed, her sustained tutoring suggested that Kafka might be wrong about the solitude, I was lucky enough to find a critic and teacher who was willing to make the journey of writing with me. “It is a thing of no great difficulty.”according to Plutarch, “to raise objections against another man’s speech. it is a very easy matter, but to produce a better in its place is a work extremely troublesome.” I am sure I wrote essays in the later years of high school without my mother’s guidance, but I can’t recall them. What I remember, however, is how she took up the“extremely troublesome”work of ongoing criticism.\n\nG) There are two ways to interpret Plutarch when he suggests that a critic should be able to produce“a better in its place.”In a straightforward sense, he could mean that a critic must be more talented than the artist she critiques（评论）.My mother was well covered on this count. But perhaps Plutarch is suggesting something slightly different, something a bit closer to Marcus Cicero’s claim that one should“criticize by creation, not by finding fault.”Genuine criticism creates a precious opening for an author to become better on his own terms—a process that is often extremely painful, but also almost always meaningful.\n\nH) My mother said she would help me with my writing, but first I had to help myself. For each assignment, I was to write the best essay I could. Real criticism is not meant to find obvious mistakes, so if she found any—the type I could have found on my own—I had to start from scratch. From scratch. Once the essay was“flawless,” she would take an evening to walk me through my errors. That was when true criticism, the type that changed me as a person, began.\n\nI) She criticized me when I included little-known references and professional jargon（行话）. She had no patience for brilliant but irrelevant figures of speech.“Writers can’t bluff（虚张声势）their way through ignorance.” That was news to me—I would need to find another way to structure my daily existence.\n\nJ) She trimmed back my flowery language, drew lines through my exclamation marks and argued for the value of restraint in expression.“John,” she almost whispered. I leaned in to hear her: “I can’t hear you when you shout at me.” So I stopped shouting and bluffing, and slowly my writing improved.\n\nK) Somewhere along the way I set aside my hopes of writing that flawless essay. B', '###');

-- --------------------------------------------------------

--
-- 資料表結構 `language`
--

DROP TABLE IF EXISTS `language`;
CREATE TABLE `language` (
  `l_No` varchar(20) NOT NULL,
  `l_Name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `language`
--

INSERT INTO `language` (`l_No`, `l_Name`) VALUES
('l00001', '英语'),
('l00002', '日语');

-- --------------------------------------------------------

--
-- 資料表結構 `leavemessages`
--

DROP TABLE IF EXISTS `leavemessages`;
CREATE TABLE `leavemessages` (
  `lm_No` int(11) NOT NULL,
  `u_ID` varchar(20) DEFAULT NULL,
  `lm_Message` varchar(400) DEFAULT NULL,
  `lm_Type` int(11) DEFAULT NULL,
  `lm_AppendTime` datetime DEFAULT NULL,
  `lm_img` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `leavemessages`
--

INSERT INTO `leavemessages` (`lm_No`, `u_ID`, `lm_Message`, `lm_Type`, `lm_AppendTime`, `lm_img`) VALUES
(1, '10000', '哈哈哈哈哈哈哈', 1, '2016-01-21 00:00:00', NULL),
(2, '10000', '哈哈哈哈哈222222', 1, '2016-01-21 00:00:01', NULL),
(3, '10000', '哈哈哈哈哈222222', 1, '2016-01-21 00:00:03', NULL),
(4, '111', 'iOS是由苹果公司开发的移动操作系统[1]  。苹果公司最早于2007年1月9日的Macworld大会上公布这个系统，最初是设计给iPhone使用的，后来陆续套用到iPod touch、iPad以及Apple TV等产品上。iOS与苹果的Mac OS X操作系统一样，属于类Unix的商业操作系统。原本这个系统名为iPhone OS，因为iPad，iPhone，iPod touch都使用iPhone OS，所以2010WWDC大会上宣布改名为iOS（iOS为美国Cisco公司网络设备操作系统注册商标，苹果改名已获得Cisco公司授权）。', 34, '2016-02-02 12:16:04', NULL),
(89, '111', '? ? ? ', 12, '2016-02-02 12:20:00', NULL),
(786, '111', '??????', 21, '2016-02-02 00:00:00', '');

-- --------------------------------------------------------

--
-- 資料表結構 `questiontype`
--

DROP TABLE IF EXISTS `questiontype`;
CREATE TABLE `questiontype` (
  `qt_No` varchar(20) NOT NULL,
  `c_No` varchar(20) DEFAULT NULL,
  `qt_Type` varchar(50) DEFAULT NULL,
  `qt_Directions` varchar(1000) DEFAULT NULL,
  `qt_AnsScore` float DEFAULT NULL,
  `qt_http` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `questiontype`
--

INSERT INTO `questiontype` (`qt_No`, `c_No`, `qt_Type`, `qt_Directions`, `qt_AnsScore`, `qt_http`) VALUES
('qt0001', 'c00001', 'sort_conversation', 'Section A\nDirections: In this section, you will hear 8 short conversations and 2 long conversations. At the end of each conversation, one or more questions will be asked about what was said. Both the conversation and the questions will be spoken only once. After each question there will be a pause. During the pause, you must read the four choices marked A), B), C) and D), and decide which is the best answer.  Then mark the corresponding letter on Answer Sheet 1 with a single line through the centre.', 1, 'http://127.0.0.1/mp3.mp3'),
('qt0002', 'c00001', 'long_conversation', '', 1, 'http://127.0.0.1/mp3.mp4'),
('qt0003', 'c00001', 'sort_passage_listening', 'Section B\nDirections:In this section, you will hear 3 short passages. At the end of each passage, you will hear some questions. Both the passage and the questions will be spoken only once. After you hear a question, you must choose the best answer from the four choices marked A), B), C) and D ). Then mark the corresponding letter on Answer Sheet I with a single line through the centre.', 1, 'http://127.0.0.1/mp3.mp5'),
('qt0004', 'c00001', 'gap_filling_listening', 'Section C\nDirections:In this section, you will hear a passage three times. When the passage is read for the first time, you should listen carefully for its general idea. When the passage is read for the second time, you are required to fill in the blanks with the exact words you have just heard. Finally, when the passage is read for the third time, you should check what you have written.', 1, 'http://127.0.0.1/mp3.mp6'),
('qt0005', 'c00001', 'gap_filling_choice', 'Section A\nDirections: In this section, there is a passage with ten blanks. You are required to select one word for each blank from a list of choices given', 0.5, ''),
('qt0006', 'c00001', 'info_match', 'Section B\nDirections:In this section, you are going to read a passage with ten statements attached to it. Each statement contains information given in one of the paragraphs. Identify the paragraph from which the information is derived. You may choose a paragraph more than once. Each paragraph is marked with a letter. Answer the question by marking the corresponding letter on Answer Sheet 2.', 1, ''),
('qt0007', 'c00001', 'read_passage', 'Section C\nDirections:There are 2 passages in this section. Each passage is followed by some questions or unfinished statements. For each of them there are four choices marked A),B),C) and D). You should decide on the best choice and mark the corresponding letter on Answer Sheet 2 with a single line through the centre.', 2, ''),
('qt0008', 'c00001', 'traslation', 'Directions: For this part, you are allowed 30 minutes to translate a passage from Chinese into English. You should write your answer on Answer Sheet 2.', 15, ''),
('qt0009', 'c00001', 'article', '', 15, '');

-- --------------------------------------------------------

--
-- 資料表結構 `readofpassage`
--

DROP TABLE IF EXISTS `readofpassage`;
CREATE TABLE `readofpassage` (
  `rp_No` varchar(20) NOT NULL,
  `qt_No` varchar(20) DEFAULT NULL,
  `ep_No` varchar(20) DEFAULT NULL,
  `rp_Title` varchar(100) DEFAULT NULL,
  `rp_Content` varchar(5000) DEFAULT NULL,
  `rp_ContentTitle` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `readofpassage`
--

INSERT INTO `readofpassage` (`rp_No`, `qt_No`, `ep_No`, `rp_Title`, `rp_Content`, `rp_ContentTitle`) VALUES
('rp00001', 'qt0007', '20151201', 'Passage One\nQuestions 56 to 60 are based on the following passage.', 'The wallet is heading for extinction. As a day-to-day essential, it will die off with the generation who read print newspapers. The kind of shopping－where you hand over notes and count out change in return—now happens only in the most minor of our retail encounters，like buying a bar of chocolate or a pint of milk from a comer shop. At the shops where you spend any real money, that money is increasingly abstracted. And this is more and more true, the higher up the scale you go. At the most cutting-edge retail stores—Victoria Beckham on Dover Street, for instance—you don’t go and stand at any kind of cash register when you decide to pay. The staff are equipped with iPads to take your payment while you relax on a sofa.\nWhich is nothing more or less than excellent service, if you have the money. But across society, the abstraction of the idea of cash makes me uneasy. Maybe I’m just old-fashioned. But earning money isn’t quick or easy for most of us. Isn’t it a bit weird that spending it should happen in half a blink (眨眼) of an eye? Doesn’t a wallet—that time-honoured Friday-night feeling of pleasing, promising fatness—represent something that matters?\nBut I’ll leave the economics to the experts. What bothers me about the death of the wallet is the change it represents in our physical environment. Everything about the look and feel of a wallet—the way the fastenings and materials wear and tear and loosen with age, the plastic and paper and gold and silver, and handwritten phone numbers and printed cinema tickets—is the very opposite of what our world is becoming. The opposite of a wallet is a smartphone of an iPad. The rounded edges, cool glass, smooth and unknowable as pebble (鹅卵石). Instead of digging through pieces of paper and peering into corners, we move our fingers left and right. No more counting out coins. Show your wallet, if you still have one. It may not be here much longer', ''),
('rp00002', 'qt0007', '20151201', 'Passage Two\nQuestions 61 to 65 are based on the following passage.', 'Everybody sleeps,but what people stay up late to catch—or wake up early in order not to miss—varies by culture.From data collected,it seems the things that cause us to lose the most sleep,on average,are sporting events,time changes,and holidays.\nAround the world, people changed sleep patterns thanks to the start or end of daylight savings time. Russians, for example, began to wake up about a half-hour later each day after President Vladimir Putin shifted the country permanently to “winter time”starting on October 26.\nRussia’s other late nights and early mornings generally correspond to public holidays. On New Year’s Eve, Russians have the world’s latest bedtime, hitting the hay at around 3:30 am.\nRussians also get up an hour later on International Women’s Day, the day for treating and celebrating female relatives.\nSimilarly, Americans’ late nights late mornings, and longest sleeps fall on three-day weekends.\nCanada got the least sleep of the year the night it beat Sweden in the Olympic hockey(冰球）final.\nThe World Cup is also chiefly responsible for sleep deprivation(剥夺）, The worst night for sleep in the U.K. was the night of the England-Italy match on June 14. Brits stayed up a half-hour later to watch it, and then they woke up earlier than usual the next morning thanks to summer nights, the phenomenon in which the sun barely sets in northern countries in the summertime. That was nothing, though, compared to Germans, Italians, and the French, who stayed up around an hour and a half later on various days throughout the summer to watch the Cup.\nIt should be made clear that not everyone has a device to record their sleep patterns, in some of these nations, it’s likely that only the richest people do. And people who elect to track their sleep may try to get more sleep than the average person. Even if that’s the case, though, the above findings are still striking, If the most health-conscious among us have such deep swings in our shut-eye levels throughout the year, how much sleep are the rest of us losing?', '');

-- --------------------------------------------------------

--
-- 資料表結構 `rpans`
--

DROP TABLE IF EXISTS `rpans`;
CREATE TABLE `rpans` (
  `rpa_No` varchar(20) NOT NULL,
  `rp_No` varchar(20) DEFAULT NULL,
  `rpa_Title` varchar(1000) DEFAULT NULL,
  `rpa_A` varchar(1000) DEFAULT NULL,
  `rpa_B` varchar(1000) DEFAULT NULL,
  `rpa_C` varchar(1000) DEFAULT NULL,
  `rpa_D` varchar(1000) DEFAULT NULL,
  `rpa_Ans` varchar(1000) DEFAULT NULL,
  `rpa_Analyze` varchar(1000) DEFAULT NULL,
  `rpa_AnsNumerDid` int(11) NOT NULL DEFAULT '0',
  `rpa_NumberDidRight` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `rpans`
--

INSERT INTO `rpans` (`rpa_No`, `rp_No`, `rpa_Title`, `rpa_A`, `rpa_B`, `rpa_C`, `rpa_D`, `rpa_Ans`, `rpa_Analyze`, `rpa_AnsNumerDid`, `rpa_NumberDidRight`) VALUES
('rpa00001', 'rp00001', 'What is happening to the wallet?', 'It is disappearing.', 'It is being fattened.', 'it is becoming costly.', 'It is changing in style.', 'It is disappearing.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('rpa00002', 'rp00001', 'How are business transactions done in big modern stores?', 'Individually. ', 'Electronically. ', 'Via a cash register.', 'In the abstract.', 'Electronically. ', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('rpa00003', 'rp00001', 'What makes the author feel uncomfortable nowadays?', 'Saving money is becoming a thing of the past.', 'The pleasing Friday-night feeling is fading.', 'Earning money is getting more difficult.', 'Spending money is so fast and easy.', 'Spending money is so fast and easy.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('rpa00004', 'rp00001', 'Why does the author choose to write about what’s happening to the wallet?', 'It represents a change in the modern world.', 'It has something to do with everybody’s life.', 'It marks the end of a time-honoured tradition.', 'It is the concern of contemporary economists.', 'It represents a change in the modern world.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('rpa00005', 'rp00001', 'What can we infer from the passage about the author?', 'He is resistant to social changes.', 'He is against technological progress.', 'He feels reluctant to part with the traditional wallet.', 'He fells insecure in the ever-changing modern world.', 'He fells insecure in the ever-changing modern world.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('rpa00006', 'rp00002', 'What does the author say about people’s sleeping habits?', 'They are culture-related', 'They affect people’s health. ', 'They change with the seasons.', 'They vary from person to person.', 'They are culture-related', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('rpa00007', 'rp00002', 'What do we learn about the Russians regarding sleep?', 'They don’t fall asleep until very late.', 'They don’t sleep much on weekends.', 'They get less sleep on public holidays.', 'They sleep longer than people elsewhere.', 'They get less sleep on public holidays.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('rpa00008', 'rp00002', 'What is the major cause for Europeans’ loss of sleep?', 'The daylight savings time.', 'The colorful night life.', 'The World Cup.', 'The summertime.', 'The colorful night life.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('rpa00009', 'rp00002', 'What is the most probable reason for some rich people to use a device to record their patterns?', 'They have trouble falling asleep.', 'They want to get sufficient sleep.', 'They are involved in a sleep research.', 'They want to go to bed on regular hours.', 'They want to get sufficient sleep.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('rpa00010', 'rp00002', 'What does the author imply in the last paragraph?', 'Sleeplessness does harm to people’s health.', 'Few people really know the importance of sleep.', 'It is important to study our sleep patterns.', 'Average people probably sleep less than the rich.', 'Few people really know the importance of sleep.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `shortlongpassageoflicening`
--

DROP TABLE IF EXISTS `shortlongpassageoflicening`;
CREATE TABLE `shortlongpassageoflicening` (
  `slp_No` varchar(20) NOT NULL,
  `qt_No` varchar(20) DEFAULT NULL,
  `ep_No` varchar(20) DEFAULT NULL,
  `slp_Title` varchar(1000) DEFAULT NULL,
  `slp_ContentLink` varchar(2000) DEFAULT NULL,
  `slp_Content` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `shortlongpassageoflicening`
--

INSERT INTO `shortlongpassageoflicening` (`slp_No`, `qt_No`, `ep_No`, `slp_Title`, `slp_ContentLink`, `slp_Content`) VALUES
('slp0001', 'qt0001', '20151201', '', 'http://127.0.0.1/mp3.mp3', 'M：Do you remember the wonderful film on space exploration we watched together last month?\nW：Sure。It’s actually the most impressive one I’ve seen on that topic。\nQ：What do we learn about the speakers?'),
('slp0002', 'qt0001', '20151201', '', 'http://127.0.0.1/mp3.mp3', '　　- W： Are you looking for anything in particular?\n\n　　- M： Yes。 My son is graduating from high school， and I want to get him something special。\n\n　　Q：Where does the conversation most probably take place?'),
('slp0003', 'qt0001', '20151201', '', 'http://127.0.0.1/mp3.mp3', '　　- M： Mike told me yesterday that he had been looking in vain for a job in the art gallery。\n\n　　- W： Really? If I remember right， he had a chance to work there， but he turned it down。\n\n　　Q：What does the woman say about Mike?'),
('slp0004', 'qt0001', '20151201', '', 'http://127.0.0.1/mp3.mp3', '　　- W： Would you like to come to Susan’s birthday party tomorrow evening?\n\n　　- M： I’m going to give a lecture tomorrow。 I wish I could be in two places at the same time。\n\n　　Q：What does the man mean?'),
('slp0005', 'qt0001', '20151201', '', 'http://127.0.0.1/mp3.mp3', '　　- W： Aren’t you discouraged by the slow progress your staff is making?\n\n　　- M： Yes。 I think I will give them a deadline and hold them to it。\n\n　　Q：What is the man probably going to do?'),
('slp0006', 'qt0001', '20151201', '', 'http://127.0.0.1/mp3.mp3', '　　- W： Excuse me。 Could you tell me where the visitors’ parking is? I left my car there。\n\n　　- M： Sure。 It’s in Lot C。 Over that way。\n\n　　Q：What does the woman want to know?'),
('slp0007', 'qt0001', '20151201', '', 'http://127.0.0.1/mp3.mp3', '　　- W： You look great! Now that you’ve taken those fitness classes。\n\n　　- M： Thanks。 I’ve never felt better in my life。\n\n　　Q：What does the man mean?'),
('slp0008', 'qt0001', '20151201', '', 'http://127.0.0.1/mp3.mp3', '　　- W： I really admire the efficiency of your secretaries。\n\n　　- M： Our company selects only the best。 They have a heave workload and we give them a lot of responsibilities。\n\n　　Q：What are the speakers talking about?'),
('slp0009', 'qt0002', '20151201', 'Conversation One\nQuestions 9 to 11 are based on the conversation you have just heard.', 'http://127.0.0.1/mp3.mp3', '　　W： Hi Leo， why do you say English would become the world language?\n　　M： Well。 For one thing， it’s so commonly used， the only language that is used by more people is Chinese。\n　　W： Why is English spoken by so many people?\n　　M： It’s spoken in many countries of the world because of the British empire。 And now of course is the influence of America as well。\n　　W： Many students find English a difficult language to learn。\n　　M： Oh， all languages are difficult to learn。 But English does have two greatest advantages。\n　　W： What are they?\n　　M： Well， first of all， it has a very international vocabulary。 It has many German， Dutch， French， Spanish and Italian words in it。 So speakers of those languages will find many familiar words in English。 In fact， English has words for many other languages as well。\n　　W： Why is that?\n　　M： Well， partly because English speakers have travelled a lot， they bring back words with them。 So English really does have an international vocabulary。\n　　W： And what is the other advantage of English?\n　　M： It that English grammar is really quite easy。 For example， it doesn’t have dozens of different endings for its nouns， adjectives and verbs， not like Latin， Russian and German for example。\n　　W： Why is that?\n　　M： Well， it’s quite interesting actually， it’s because of the French。 When the French ruled England， French was the official language， and only the common people spoke English。 They tried to make their language as simple as possible。 So they made the grammar easier。'),
('slp0010', 'qt0002', '20151201', 'Conversation 2\nQuestions 12 to 15 are based on the conversation you have just heard. ', 'http://127.0.0.1/mp3.mp3', '　　Man： Hello。 Yes?\n\n　　Woman： Hello。 Is that the sales department?\n\n　　M： Yes， it is。\n\n　　W：Oh， well。 My name is Jane Kingsbury of GPF limited。 We need some supplies for our design office。\n\n　　M： Oh， what sort?\n\n　　W：Well， first of all， we need one complete new drawing board。\n\n　　M： DO44 or DO45?\n\n　　W：Ah， I don’t know。 What’s the difference?\n\n　　M： Well， the 45 costs 15 pounds more。\n\n　　W：So what’s the total price then?\n\n　　M：It’s 387 pounds。\n\n　　W：Dose that include valued-added tax?\n\n　　M： Oh， I’m not sure。 Most of the prices do。 Yes， I think it does。\n\n　　W：What are the boards actually made of?\n\n　　M： Oh， I don’t know。 I think it‘s a sort of plastic stuff these days。 It’s white anyway。\n\n　　W：And how long does it take to deliver?\n\n　　M： Oh， I couldn’t really say。 It depends on how much work we’ve got and how many other orders there are to send out， you know。\n\n　　W：Ok， now we also want some drawing pens， ink and rulers， and some drawing paper。\n\n　　M： Oh dear。 The girl who takes all those supplies isn’t here this morning。 So I can’t take those orders for you。 I only do the equipment you see。\n\n　　W：Ok， well， perhaps I’ll ring back tomorrow。\n\n　　M： So do you want the drawing board then?\n\n　　W：Oh， I have to think about it。 Thanks very much。 I’ll let you know。 Good-bye。\n\n　　M： Thank you。 Good-bye。'),
('slp0011', 'qt0003', '20151201', 'Passage One\nQuestions 16 to 18 are based on the passage you have just heard. ', 'http://127.0.0.1/mp3.mp3', 'No one knows for sure just how old kites are。 In fact， they have been in use for centuries。 25 centuries ago， kites were well-known in China。 These first kites were probably made of wood。 They may even have been covered with silk， because silk were used a lot at that time。 Early kites were built for certain uses。 In ancient China， they will use to carry ropes to cross rivers。 Once across， the ropes were tear down and wooden bridges would hang for them。 Legend tells of one General who flew musical kites over the enemies’ camp。 The enemy fled， believing the sounds to be the warming voices of angels。 By the 15th century， many people flew kites in Europe。 Marco Polo may have brought the kite back from his visit to China。 The kite has been linked to great names and events。 For instance， Benjamin Franklin used kite to prove the lightening electricity。 He flew the kite in the storm。 He did this in order to draw lightening from the clouds。 He tied a metal key and a strip of silk to the kite line。 The silk ribbon would stop the lightening from passing through his body。 Benjamin’s idea was first laughed at。 But later on， it enlightened the invention of the lightening rod。 With such grand history， kite flying is short remain an  entertaining and popular sport。'),
('slp0012', 'qt0004', '20151201', 'Passage Two\nQuestions 19 to 22 are based on the passage you have just heard.', 'http://127.0.0.1/mp3.mp3', 'I have learnt many languages， but I’m not mastered them the way the  professional interpreter or translator has。 Still， they have open doors for me。 They have allowed me the opportunity to seek jobs in international contexts and help me get those jobs。 Like many people who have lived overseas for a while， I simply got crazy about it。 I can’t image living my professional or social life without international interactions。 Since 1977， I have spent much more time abroad than in the United States。 I like going to new places， eating new foods and experiencing new cultures。 If you can speak the language， it’s easier to get to know the country and its people。 If I had the time and money。 I would live for a year in as many countries as possible。 Beyond my career， my facility with languages has given me a few rare opportunities。 Once， just after I returned my year in Vienna。 I was asked to translate for a German judge at Olympic level horse event and learned a lot about the sport。\nIn Japan， once when I was in the studio audience of a TV cooking show， I was asked to go up on the stage and taste the beef dish that was being prepared and tell what I thought。 They asked” Was it as good as American beef?” It was very exciting for me to be on Japanese TV， speaking in Japanese about how delicious the beef was'),
('slp0013', 'qt0005', '20151201', 'Passage Three\nQuestions 23 to 25 are based on the passage you have just heard', 'http://127.0.0.1/mp3.mp3', '　　Dr. Ben Carsen grew up in a poor single parent house-hold in Detroit。 His mother， who had only a 3rd grade education helds two jobs cleaning bathrooms。 To his classmates and even to his\n\n　　teachers he was thought of as the dummest kid in his class。 According to his own not so fond memories。\n\n　　He had a terrible temper， and once threatened to kill another child。 Dr。 Carsen was headed down part of seld distraction until a critical moment in his youth。 His mother convinced that he had to do something dramatic preventing leading a life of failure laid down some rules。 He could not\n\n　　watch television except for two programs a week， could not play with his friends after school\n\n　　until he finished his homework。 And had to read two books a week， and write book reports about them。 His mother’s strategy worked。 “Of course， I didn’t know she couldn’t read。 So there I was\n\n　　submitting these reports。” he said。 She would put check marks on them like she had been reading them。 As I began to read about scientists，economists and philosophers。 I started imaging myself in their shoes。 As he got into the hobbit of hard work， his grade began to soar。 Ultimately he received a scholarship to attending Yale\n\n　　University， and later he was admitted to the University of Michigan Medical School。\n\n　　He is now a leading surgeon at Johns Hopkins Medical School and he is also the author of the three books。');

-- --------------------------------------------------------

--
-- 資料表結構 `slpquestion`
--

DROP TABLE IF EXISTS `slpquestion`;
CREATE TABLE `slpquestion` (
  `slpq_No` varchar(20) NOT NULL,
  `slp_No` varchar(20) DEFAULT NULL,
  `slpq_A` varchar(1000) DEFAULT NULL,
  `slpq_B` varchar(1000) DEFAULT NULL,
  `slpq_C` varchar(1000) DEFAULT NULL,
  `slpq_D` varchar(1000) DEFAULT NULL,
  `slpq_Ans` varchar(1000) DEFAULT NULL,
  `slpq_Analyze` varchar(1000) DEFAULT NULL,
  `slpq_AnsNumerDid` int(11) NOT NULL DEFAULT '0',
  `slpq_NumberDidRight` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `slpquestion`
--

INSERT INTO `slpquestion` (`slpq_No`, `slp_No`, `slpq_A`, `slpq_B`, `slpq_C`, `slpq_D`, `slpq_Ans`, `slpq_Analyze`, `slpq_AnsNumerDid`, `slpq_NumberDidRight`) VALUES
('slpq00001', 'slp0001', 'They admire the courage of space explorers.', 'They enjoyed the movie on space exploration.', 'They were going to watch a wonderful movie.', 'They like doing scientific exploration very much.', 'They enjoyed the movie on space exploration.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('slpq00002', 'slp0002', 'At a gift shop.', 'At a graduation ceremony.', 'In the office of a travel agency.', 'In a school library.', 'At a gift shop.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('slpq00003', 'slp0003', 'He used to work in the art gallery.', 'He does not have a good memory.', 'He declined a job offer form the art gallery.', 'He is not interested in any part-time jobs.', 'He declined a job offer form the art gallery.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('slpq00004', 'slp0004', 'Susan has been invited to give a lecture tomorrow.', 'He will go to the birthday party after the lecture.', 'The woman should have informed him earlier.', 'He will be unable to attend the birthday party.', 'He will be unable to attend the birthday party.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('slpq00005', 'slp0005', 'Reward those having made good progress.', 'Set a deadline for the staff to meet.', 'Assign more workers to the project.', 'Encourage the staff to work in small groups.', 'Set a deadline for the staff to meet.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('slpq00006', 'slp0006', 'The way to the visitor’s parking.', 'The rate for parking in Lot C.', 'How far away the parking lot is.', 'Where she can leave her car.', 'The way to the visitor’s parking.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('slpq00007', 'slp0007', 'He regrets missing the classes.', 'He plans to take the fitness classes.', 'He is looking forward to a better life.', 'He has benefited form exercise.', 'He has benefited form exercise.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('slpq00008', 'slp0008', 'How to work efficiency.', 'How to select secretaries.', 'The responsibilities of secretaries.', 'The secretaries in the man’s company.', 'The secretaries in the man’s company.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('slpq00009', 'slp0009', 'It is more difficult to learn than English.', 'It is used by more people than English.', 'It will be as commonly used as English.', 'It will eventually become a world language.', 'It is used by more people than English.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('slpq00010', 'slp0009', 'It has words words from many languages,', 'Its popularity with the common people.', 'The influence of the British Empire.', 'The effect of the Industrial Revolution.', 'The influence of the British Empire.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('slpq00011', 'slp0009', 'It includes a lot of words form other languages.', 'It has a growing number of newly coined words,', 'It can be easily picked up by overseas travelers.', 'It is the largest among all languages in the world.', 'It includes a lot of words form other languages.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('slpq00012', 'slp0010', 'To return some goods.', 'To apply for a job.', 'To place an order.', 'To make a complaint.', 'To place an order.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('slpq00013', 'slp0010', 'He has become somewhat impatient with the woman.', 'He is not familiar with the?exact details of goods.', 'He has not worked in the sales department for long.', 'He works on a part-time basis for the company.', 'He is not familiar with the?exact details of goods.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('slpq00014', 'slp0010', 'It is not his responsibility.', 'It will be free for large orders.', 'It costs 15 more for express delivery.', 'It depends on a number of factors.', 'It depends on a number of factors.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('slpq00015', 'slp0010', 'Report the information to her superior.', 'Pay a visit to the saleswoman in charge.', 'Ring back when she comes to a decision.', 'Make inquiries with some other companies.', 'Ring back when she comes to a decision.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('slpq00016', 'slp0011', 'No one knows exactly where they were first made.', 'No one knows for sure when thy came into being.', 'No one knows for what purpose they were invented.', 'No one knows what they will look like in the future.', 'No one knows for sure when thy came into being.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('slpq00017', 'slp0011', 'Carry ropes across rivers.', 'Measure the speed of wind.', 'Pass on secret messages.', 'Give warnings of danger', 'Carry ropes across rivers.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('slpq00018', 'slp0011', 'To protect houses against lightning.', 'To test the effects of the lightning rod.', 'To find out the strength of silk for kites.', 'To prove the lightning is electricity.', 'To prove the lightning is electricity.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('slpq00019', 'slp0012', 'She enjoys teaching languages.', 'She can speak several languages.', 'She was trained to be an interpreter.', 'She was born with a talent for languages.', 'She can speak several languages.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('slpq00020', 'slp0012', 'They acquire an immunity to culture shock.', 'They would like to live abroad permanently.', 'They want to learn as many foreign languages as possible.', 'They have an intense interest in cross-cultural interactions.', 'They have an intense interest in cross-cultural interactions.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('slpq00021', 'slp0012', 'She became an expert in horse racing.', 'She got a chance to visit several European countries.', 'She was able to translate for a German sports judge.', 'She learned to appreciate classical music.', 'She was able to translate for a German sports judge.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('slpq00022', 'slp0012', 'Taste the beef and give her comment.', 'Take part in a cooking competition.', 'Teach vocabulary for food in English.', 'Give cooking lessons on Western food.', 'Taste the beef and give her comment.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('slpq00023', 'slp0013', 'He had only a third-grade education.', 'He once threatened to kill his teacher.', 'He grew up in a poor single-parent family.', 'He often helped his mother do housework.', 'He grew up in a poor single-parent family.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('slpq00024', 'slp0013', 'Careless.', 'Stupid.', 'Brave.', 'Active.', 'Stupid.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0),
('slpq00025', 'slp0013', 'Write two book reports a week.', 'Keep a diary.', 'Help with housework.', 'Watch education TV programs only.', 'Write two book reports a week.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~', 0, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `test`
--

DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `u_ID` varchar(20) NOT NULL,
  `ep_No` varchar(20) NOT NULL,
  `final_TimeSlot` float DEFAULT NULL,
  `submit_Time` datetime DEFAULT NULL,
  `score` float DEFAULT NULL,
  `test_Time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `test_No` decimal(16,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `translation`
--

DROP TABLE IF EXISTS `translation`;
CREATE TABLE `translation` (
  `t_No` varchar(20) NOT NULL,
  `ep_No` varchar(20) DEFAULT NULL,
  `qt_No` varchar(20) DEFAULT NULL,
  `t_Content` varchar(1000) DEFAULT NULL,
  `t_Ans` varchar(1000) DEFAULT NULL,
  `t_Analyze` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `translation`
--

INSERT INTO `translation` (`t_No`, `ep_No`, `qt_No`, `t_Content`, `t_Ans`, `t_Analyze`) VALUES
('t00001', '20151201', 'qt0008', '云南省的丽江古镇是中国著名的旅游目的地之一。那里的生活节奏比大多数中国的城市都要缓慢。丽江到处都是美丽的自然风光，众多的少数民族同胞提供了各式各样，丰富多彩的文化让游客体验。历史上，丽江还以“爱之城”而闻名。当地人中流传着许多关于人生，为爱而死的故事。如今，在中外游客眼中，这个古镇被视为爱情和浪漫的天堂。（paradise）', 'The ancient town of Lijiang in Yunnan province is one of the famous tourist destinations. Its living rhythm is slower than that of most other Chinese cities. Lijiang is full of natural beautiful sceneries, where numerous minority nationalities provide rich and varied cultures in order to give tourists a different experience. Historically, Lijiang was also known as “ the city of love”. Plenty of stories about living for love and dying for love have been spread among the natives. Nowadays, the old town equals the paradise of love and romance in the eyes of Chinese and foreign tourists.', '[精辟解析]太累了，不想输了~~~~(>_<)~~~~');

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `u_ID` varchar(20) NOT NULL,
  `u_Email` varchar(30) DEFAULT NULL,
  `u_Name` varchar(20) DEFAULT NULL,
  `u_PhoneNo` char(13) NOT NULL,
  `u_Pwd` varchar(100) NOT NULL,
  `u_RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `u_IndeviResume` varchar(200) DEFAULT NULL,
  `u_Sex` int(11) DEFAULT NULL,
  `u_Type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `user`
--

INSERT INTO `user` (`u_ID`, `u_Email`, `u_Name`, `u_PhoneNo`, `u_Pwd`, `u_RegDate`, `u_IndeviResume`, `u_Sex`, `u_Type`) VALUES
('10001', 'pzyyll@gmail.com', 'pzyyll', '13342232190', '9636a9f488ef6d56253302da2968c882', '2016-04-07 09:17:04', NULL, NULL, NULL),
('10002', NULL, NULL, '13342232191', 'e10adc3949ba59abbe56e057f20f883e', '2016-04-21 14:32:44', NULL, NULL, NULL),
('10003', NULL, NULL, '13342232193', 'e10adc3949ba59abbe56e057f20f883e', '2016-04-21 14:46:29', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `userans`
--

DROP TABLE IF EXISTS `userans`;
CREATE TABLE `userans` (
  `ua_No` decimal(16,0) NOT NULL,
  `test_No` decimal(16,0) DEFAULT NULL,
  `ua_TypeName` varchar(50) DEFAULT NULL,
  `ua_Id` varchar(20) DEFAULT NULL,
  `ua_Ans` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `usertoken`
--

DROP TABLE IF EXISTS `usertoken`;
CREATE TABLE `usertoken` (
  `u_Email` varchar(30) DEFAULT NULL,
  `token` varchar(500) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 檢視表結構 `courses`
--
DROP TABLE IF EXISTS `courses`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `courses`  AS  select `course`.`c_No` AS `c_No`,`course`.`c_Name` AS `c_Name`,`course`.`c_Introduction` AS `c_Introduction`,`course`.`c_AppdendTime` AS `c_AppdendTime`,`course`.`l_No` AS `l_No`,`course`.`c_IntroEn` AS `c_IntroEn`,`language`.`l_Name` AS `l_Name` from (`course` join `language`) where (`course`.`l_No` = `language`.`l_No`) ;

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_ID`);

--
-- 資料表索引 `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`a_No`),
  ADD KEY `FK_part_10` (`ep_No`),
  ADD KEY `FK_part_9` (`qt_No`);

--
-- 資料表索引 `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`c_No`);

--
-- 資料表索引 `eptypes`
--
ALTER TABLE `eptypes`
  ADD PRIMARY KEY (`ep_No`,`qt_No`),
  ADD KEY `qt_No` (`qt_No`);

--
-- 資料表索引 `examinationpaper`
--
ALTER TABLE `examinationpaper`
  ADD PRIMARY KEY (`ep_No`),
  ADD KEY `FK_part_11` (`c_No`);

--
-- 資料表索引 `gapfillingbychoice`
--
ALTER TABLE `gapfillingbychoice`
  ADD PRIMARY KEY (`gfc_No`),
  ADD KEY `FK_Relationship_13` (`qt_No`),
  ADD KEY `FK_Relationship_16` (`ep_No`);

--
-- 資料表索引 `gapfillingbylistening`
--
ALTER TABLE `gapfillingbylistening`
  ADD PRIMARY KEY (`gfl_No`),
  ADD KEY `FK_part_5` (`qt_No`),
  ADD KEY `FK_part_6` (`ep_No`);

--
-- 資料表索引 `gfcans`
--
ALTER TABLE `gfcans`
  ADD PRIMARY KEY (`gfca_No`),
  ADD KEY `FK_Relationship_15` (`gfc_No`);

--
-- 資料表索引 `gflans`
--
ALTER TABLE `gflans`
  ADD PRIMARY KEY (`gfla_No`),
  ADD KEY `FK_Relationship_14` (`gfl_No`);

--
-- 資料表索引 `imans`
--
ALTER TABLE `imans`
  ADD PRIMARY KEY (`ima_No`),
  ADD KEY `FK_Relationship_17` (`im_No`);

--
-- 資料表索引 `informationmatch`
--
ALTER TABLE `informationmatch`
  ADD PRIMARY KEY (`im_No`),
  ADD KEY `FK_Relationship_18` (`ep_No`),
  ADD KEY `FK_Relationship_19` (`qt_No`);

--
-- 資料表索引 `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`l_No`);

--
-- 資料表索引 `leavemessages`
--
ALTER TABLE `leavemessages`
  ADD PRIMARY KEY (`lm_No`),
  ADD KEY `FK_leaveMess_part_u_ID` (`u_ID`);

--
-- 資料表索引 `questiontype`
--
ALTER TABLE `questiontype`
  ADD PRIMARY KEY (`qt_No`),
  ADD KEY `FK_part1` (`c_No`);

--
-- 資料表索引 `readofpassage`
--
ALTER TABLE `readofpassage`
  ADD PRIMARY KEY (`rp_No`),
  ADD KEY `FK_PaperToRP` (`ep_No`),
  ADD KEY `FK_RPOfQtype` (`qt_No`);

--
-- 資料表索引 `rpans`
--
ALTER TABLE `rpans`
  ADD PRIMARY KEY (`rpa_No`),
  ADD KEY `FK_Relationship_20` (`rp_No`);

--
-- 資料表索引 `shortlongpassageoflicening`
--
ALTER TABLE `shortlongpassageoflicening`
  ADD PRIMARY KEY (`slp_No`),
  ADD KEY `FK_Relationship_2` (`qt_No`),
  ADD KEY `FK_part_4` (`ep_No`);

--
-- 資料表索引 `slpquestion`
--
ALTER TABLE `slpquestion`
  ADD PRIMARY KEY (`slpq_No`),
  ADD KEY `FK_Relationship_12` (`slp_No`);

--
-- 資料表索引 `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`u_ID`,`ep_No`),
  ADD UNIQUE KEY `test_No` (`test_No`),
  ADD KEY `FK_Test` (`ep_No`);

--
-- 資料表索引 `translation`
--
ALTER TABLE `translation`
  ADD PRIMARY KEY (`t_No`),
  ADD KEY `FK_part_7` (`ep_No`),
  ADD KEY `FK_part_8` (`qt_No`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_ID`),
  ADD UNIQUE KEY `u_PhoneNo` (`u_PhoneNo`),
  ADD UNIQUE KEY `u_Email` (`u_Email`),
  ADD UNIQUE KEY `u_Name` (`u_Name`);

--
-- 資料表索引 `userans`
--
ALTER TABLE `userans`
  ADD PRIMARY KEY (`ua_No`),
  ADD KEY `usera_fk` (`test_No`);

--
-- 資料表索引 `usertoken`
--
ALTER TABLE `usertoken`
  ADD UNIQUE KEY `u_Email` (`u_Email`);

--
-- 已匯出資料表的限制(Constraint)
--

--
-- 資料表的 Constraints `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_part_10` FOREIGN KEY (`ep_No`) REFERENCES `examinationpaper` (`ep_No`),
  ADD CONSTRAINT `FK_part_9` FOREIGN KEY (`qt_No`) REFERENCES `questiontype` (`qt_No`);

--
-- 資料表的 Constraints `eptypes`
--
ALTER TABLE `eptypes`
  ADD CONSTRAINT `eptypes_ibfk_1` FOREIGN KEY (`ep_No`) REFERENCES `examinationpaper` (`ep_No`),
  ADD CONSTRAINT `eptypes_ibfk_2` FOREIGN KEY (`qt_No`) REFERENCES `questiontype` (`qt_No`);

--
-- 資料表的 Constraints `examinationpaper`
--
ALTER TABLE `examinationpaper`
  ADD CONSTRAINT `FK_part_11` FOREIGN KEY (`c_No`) REFERENCES `course` (`c_No`);

--
-- 資料表的 Constraints `gapfillingbychoice`
--
ALTER TABLE `gapfillingbychoice`
  ADD CONSTRAINT `FK_Relationship_13` FOREIGN KEY (`qt_No`) REFERENCES `questiontype` (`qt_No`),
  ADD CONSTRAINT `FK_Relationship_16` FOREIGN KEY (`ep_No`) REFERENCES `examinationpaper` (`ep_No`);

--
-- 資料表的 Constraints `gapfillingbylistening`
--
ALTER TABLE `gapfillingbylistening`
  ADD CONSTRAINT `FK_part_5` FOREIGN KEY (`qt_No`) REFERENCES `questiontype` (`qt_No`),
  ADD CONSTRAINT `FK_part_6` FOREIGN KEY (`ep_No`) REFERENCES `examinationpaper` (`ep_No`);

--
-- 資料表的 Constraints `gfcans`
--
ALTER TABLE `gfcans`
  ADD CONSTRAINT `FK_Relationship_15` FOREIGN KEY (`gfc_No`) REFERENCES `gapfillingbychoice` (`gfc_No`);

--
-- 資料表的 Constraints `gflans`
--
ALTER TABLE `gflans`
  ADD CONSTRAINT `FK_Relationship_14` FOREIGN KEY (`gfl_No`) REFERENCES `gapfillingbylistening` (`gfl_No`);

--
-- 資料表的 Constraints `imans`
--
ALTER TABLE `imans`
  ADD CONSTRAINT `FK_Relationship_17` FOREIGN KEY (`im_No`) REFERENCES `informationmatch` (`im_No`);

--
-- 資料表的 Constraints `informationmatch`
--
ALTER TABLE `informationmatch`
  ADD CONSTRAINT `FK_Relationship_18` FOREIGN KEY (`ep_No`) REFERENCES `examinationpaper` (`ep_No`),
  ADD CONSTRAINT `FK_Relationship_19` FOREIGN KEY (`qt_No`) REFERENCES `questiontype` (`qt_No`);

--
-- 資料表的 Constraints `questiontype`
--
ALTER TABLE `questiontype`
  ADD CONSTRAINT `FK_part1` FOREIGN KEY (`c_No`) REFERENCES `course` (`c_No`);

--
-- 資料表的 Constraints `readofpassage`
--
ALTER TABLE `readofpassage`
  ADD CONSTRAINT `FK_PaperToRP` FOREIGN KEY (`ep_No`) REFERENCES `examinationpaper` (`ep_No`),
  ADD CONSTRAINT `FK_RPOfQtype` FOREIGN KEY (`qt_No`) REFERENCES `questiontype` (`qt_No`);

--
-- 資料表的 Constraints `rpans`
--
ALTER TABLE `rpans`
  ADD CONSTRAINT `FK_Relationship_20` FOREIGN KEY (`rp_No`) REFERENCES `readofpassage` (`rp_No`);

--
-- 資料表的 Constraints `shortlongpassageoflicening`
--
ALTER TABLE `shortlongpassageoflicening`
  ADD CONSTRAINT `FK_Relationship_2` FOREIGN KEY (`qt_No`) REFERENCES `questiontype` (`qt_No`),
  ADD CONSTRAINT `FK_part_4` FOREIGN KEY (`ep_No`) REFERENCES `examinationpaper` (`ep_No`);

--
-- 資料表的 Constraints `slpquestion`
--
ALTER TABLE `slpquestion`
  ADD CONSTRAINT `FK_Relationship_12` FOREIGN KEY (`slp_No`) REFERENCES `shortlongpassageoflicening` (`slp_No`);

--
-- 資料表的 Constraints `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `FK_Test` FOREIGN KEY (`ep_No`) REFERENCES `examinationpaper` (`ep_No`),
  ADD CONSTRAINT `FK_Test2` FOREIGN KEY (`u_ID`) REFERENCES `user` (`u_ID`);

--
-- 資料表的 Constraints `translation`
--
ALTER TABLE `translation`
  ADD CONSTRAINT `FK_part_7` FOREIGN KEY (`ep_No`) REFERENCES `examinationpaper` (`ep_No`),
  ADD CONSTRAINT `FK_part_8` FOREIGN KEY (`qt_No`) REFERENCES `questiontype` (`qt_No`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
