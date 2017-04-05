-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-04-05 05:19:27
-- 服务器版本： 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teacher_work`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin_login`
--

CREATE TABLE `admin_login` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) NOT NULL,
  `upwd` char(32) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `admin_login`
--

INSERT INTO `admin_login` (`uid`, `uname`, `upwd`) VALUES
(1, 'yukang', 'c4ca4238a0b923820dcc509a6f75849b');

-- --------------------------------------------------------

--
-- 表的结构 `chat`
--

CREATE TABLE `chat` (
  `mine` varchar(10) NOT NULL,
  `send` varchar(10) NOT NULL,
  `content` text NOT NULL,
  `id` int(11) NOT NULL,
  `type` varchar(15) NOT NULL,
  `avatar` varchar(50) NOT NULL,
  `zt` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `course`
--

CREATE TABLE `course` (
  `c_id` int(11) NOT NULL,
  `c_term` varchar(10) NOT NULL,
  `c_number` varchar(20) NOT NULL,
  `c_name` varchar(15) NOT NULL,
  `c_type` varchar(5) NOT NULL,
  `c_credits` int(2) NOT NULL,
  `c_hours` varchar(2) NOT NULL,
  `c_weeknum` varchar(2) NOT NULL,
  `c_institute` varchar(10) NOT NULL,
  `c_class` varchar(16) NOT NULL,
  `c_stipulate` varchar(3) NOT NULL,
  `c_stunum` int(3) NOT NULL,
  `c_state` varchar(5) NOT NULL,
  `c_k` varchar(5) NOT NULL,
  `c_r` varchar(5) NOT NULL,
  `c_n` varchar(5) NOT NULL,
  `c_p` varchar(5) NOT NULL,
  `c_w1` varchar(5) NOT NULL,
  `u_id` varchar(15) NOT NULL,
  `c_note` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `course`
--

INSERT INTO `course` (`c_id`, `c_term`, `c_number`, `c_name`, `c_type`, `c_credits`, `c_hours`, `c_weeknum`, `c_institute`, `c_class`, `c_stipulate`, `c_stunum`, `c_state`, `c_k`, `c_r`, `c_n`, `c_p`, `c_w1`, `u_id`, `c_note`) VALUES
(1, '2014', 'DB0804141', '软件测试原理与方法', '必修课', 3, '45', '15', '计算机学院', '软件141，软件142', '70', 75, '已加入核算', '初修', '核心', '1', '50', '1', '赵一丁', '国家级');

-- --------------------------------------------------------

--
-- 表的结构 `dynamic`
--

CREATE TABLE `dynamic` (
  `d_id` int(11) NOT NULL,
  `d_term` varchar(10) NOT NULL,
  `d_workname` varchar(15) NOT NULL,
  `d_value` double NOT NULL,
  `u_id` varchar(15) NOT NULL,
  `d_state` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dynamic`
--

INSERT INTO `dynamic` (`d_id`, `d_term`, `d_workname`, `d_value`, `u_id`, `d_state`) VALUES
(10, '2016-2017', '项目工作量', 4, '赵一丁', '已加入核算'),
(34, '2016-2017', '评估工作量', 6, '赵一丁', '已加入核算'),
(38, '2016-2017', '答辩工作量', 3, '赵一丁', '未审核');

-- --------------------------------------------------------

--
-- 表的结构 `email`
--

CREATE TABLE `email` (
  `m_id` int(11) NOT NULL,
  `send` varchar(11) NOT NULL,
  `received` varchar(11) NOT NULL,
  `sendtime` varchar(15) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `content` longtext NOT NULL,
  `isread` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `email`
--

INSERT INTO `email` (`m_id`, `send`, `received`, `sendtime`, `theme`, `content`, `isread`) VALUES
(17, '管理员', '赵一丁', '1490171706182', '方法', '<pre>法师打发撒\n                                                    </pre><p></p>\n                                                ', '是'),
(18, '赵一丁', '管理员', '1490171740724', '发生大放送', '<pre>发撒的发生的</pre><p></p>\n                                                ', '是'),
(19, '赵一丁', '管理员', '1490697219509', '上的说法都是', '<blockquote><span style="text-decoration-line: underline; font-style: italic; font-weight: bold;">是的发送到发送到</span></blockquote><p></p>\n                                                ', '是'),
(20, '赵一丁', '管理员', '1491361434327', '开会', '<pre><span style="font-weight: bold; font-style: italic; text-decoration-line: underline;">记得来开黑</span></pre><p></p>\n                                                ', '否');

-- --------------------------------------------------------

--
-- 表的结构 `gradution`
--

CREATE TABLE `gradution` (
  `g_id` int(11) NOT NULL,
  `g_term` varchar(10) NOT NULL,
  `g_institute` varchar(20) NOT NULL,
  `g_sclass` varchar(15) NOT NULL,
  `g_snumber` varchar(15) NOT NULL,
  `g_sname` varchar(5) NOT NULL,
  `u_name` varchar(20) NOT NULL,
  `g_project` varchar(20) NOT NULL,
  `g_note` varchar(20) NOT NULL,
  `g_zt` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gradution`
--

INSERT INTO `gradution` (`g_id`, `g_term`, `g_institute`, `g_sclass`, `g_snumber`, `g_sname`, `u_name`, `g_project`, `g_note`, `g_zt`) VALUES
(38, '2016-2107', '计算机学院', '软件122', '201200834204', '陈晶芬 ', '张西广', '科研学分管理系统的设计与实现--学生端', '', ''),
(40, '2016-2107', '计算机学院', '软件122', '201200834206', '许会影', '郭清宇', '基于Android的社交聊天的设计与实现', '校外', ''),
(41, '2016-2107', '计算机学院', '软件122', '201200834207', '兰俊俊', '刘凤华 ', '汽车租赁联盟平台运营总部系统设计与实现-', '', ''),
(43, '2016-2107', '计算机学院', '软件122', '201200834209', '田帅飞', '刘小明', '基于循环神经网络的互联网文本信息抽取研究', '', ''),
(44, '2016-2107', '计算机学院', '软件122', '201200834210 ', '张国华', '崔岩', '面向互联网文本的自然语言分析系统设计', '', ''),
(45, '2016-2107', '计算机学院', '软件122', '201200834211', '王立奇', '刘小明', '大数据互联网文本情感新词发现研究', '', ''),
(46, '2016-2107', '计算机学院', '软件122', '201200834212', '张恒恒', '潘恒', '番茄时钟APP的设计与实现—时钟和计划管', '', ''),
(47, '2016-2107', '计算机学院', '软件122', '201200834213', '赵建开', '夏冰 ', '电子政务网站敏感信息发现与预警系统--社', '', ''),
(48, '2016-2107', '计算机学院', '软件122', '201200834214', '吴胜超 ', '刘凤华', '车租赁联盟租车网点系统设计与实现--会员', '', ''),
(49, '2016-2107', '计算机学院', '软件122', '201200834215', '魏帅坤', '罗菁/王佩雪', '高校移动考勤平台的设计与实现--教师端', '', ''),
(50, '2016-2107', '计算机学院', '软件122', '201200834216', '任云峰', '刘小明', '大数据互联网文本自动摘要研究', '', ''),
(51, '2016-2107', '计算机学院', '软件122', '201200834217', '马钰锡', '张西广', '科研学分管理系统的设计与实现--教师端', '', ''),
(52, '2016-2107', '计算机学院', '软件122', '201200834218', '王超锋 ', '张西广', '科研学分管理系统的设计与实现--管理员端', '', ''),
(53, '2016-2107', '计算机学院', '软件122', '201200834219', '贾磊', '夏敏捷', '乐享中工APP设计与实现--界面和信息获', '', ''),
(54, '2016-2107', '计算机学院', '软件122', '201200834221', '高素奎', '杨关', '移动目标视觉监控', '', ''),
(55, '2016-2107', '计算机学院', '软件122', '201200834222', '张林伟', '罗菁/王佩雪', '高校移动考勤平台的设计与实现--学生端', '', ''),
(56, '2016-2107', '计算机学院', '软件122', '201200834223', '刘洋', '刘小明', '基于卷积神经网络的互联网文本情感分析研究', '', ''),
(57, '2016-2107', '计算机学院', '软件122', '201200834224', '李贝', '潘恒', '番茄时钟APP的设计与实现--任务管理 ', '', ''),
(58, '2016-2107', '计算机学院', '软件122', '201200834226', '韩洋洋', '潘惠勇', '中原工学院教材征订系统的设计与实现--手', '', ''),
(59, '2016-2107', '计算机学院', '软件122', '201200834227', '陈晓振', '郭清宇', '基于Android的计步器的设计与实现-', '校外', ''),
(60, '2016-2107', '计算机学院', '软件122', '201200834228', '高奇云', '罗菁/王佩雪', '掌上教务平台的设计与实现--教师端', '', ''),
(61, '2016-2107', '计算机学院', '软件122', '201200834229', '李英伟', '刘小明', '大数据互联网文本热点话题自动发现研究', '', ''),
(70, '2016-2107', '计算机学院', '软件121', '201200834108', '曹蕾蕾', '张西广', '材化学院辅导办电子办公系统的设计与实现-', '', ''),
(71, '2016-2107', '计算机学院', '软件121', '201200834109', '王林', '杨关', '计算机学院网络化综合实训管理平台系统设计', '', ''),
(72, '2016-2107', '计算机学院', '软件121', '201200834110', '许纪峰', '刘凤华', '汽车租赁联盟平台加盟运营中心系统设计与实', '', ''),
(73, '2016-2107', '计算机学院', '软件121', '201200834111', '千威', '潘惠勇', '计算机等级考试网上报名系统设计与实现--', '', ''),
(74, '2016-2107', '计算机学院', '软件121', '201200834112', '陈绍松', '刘小明', '大数据互联网文本命名实体识别研究', '', ''),
(76, '2016-2107', '计算机学院', '软件121', '201200834114', '刘成豪', '吴志刚', '程序设计网络训练赛组卷系统之题库管理的设', '', ''),
(77, '2016-2107', '计算机学院', '软件121', '201200834116', '单林涛', '潘惠勇', '计算机等级考试网上报名系统设计与实现--', '', ''),
(78, '2016-2107', '计算机学院', '软件121', '201200834117', '朱飞武', '刘小明', '基于深度学习的互联网文本主题分类研究', '', ''),
(79, '2016-2107', '计算机学院', '软件121', '201200834120', '郝群伟', '罗菁/王佩雪', '高校移动考勤平台的设计与实现--服务器端', '', ''),
(80, '2016-2107', '计算机学院', '软件121', '201200834121', '许俊峰', '潘恒', '文献管理系统的设计与实现---阅读笔记 ', '', ''),
(81, '2016-2107', '计算机学院', '软件121', '201200834122', '程猛', '张西广', '材化学院辅导办电子办公系统的设计与实现-', '', ''),
(82, '2016-2107', '计算机学院', '软件121', '201200834123', '许春林', '赵一丁', '高风险现场测试数据生成系统设计与实现--', '', '已加入核算'),
(83, '2016-2107', '计算机学院', '软件121', '201200834125', '张二磊', '刘凤华', '汽车租赁联盟平台运营总部系统设计与实现-', '', ''),
(84, '2016-2107', '计算机学院', '软件121', '201200834126', '李昊', '赵一丁', '高风险现场测试数据生成系统设计与实现--', '', '已加入核算'),
(85, '2016-2107', '计算机学院', '软件121', '201200834127', '王挺威', '潘恒', '文献管理系统的设计与实现---在线交流与', '', ''),
(87, '2016-2107', '计算机学院', '软件121', '201200834129', '周美松', '许进忠', '驴友社交系统Android端的设计与实现', '', ''),
(93, '2016-2107', '计算机学院', '软件122', '201200834201', '杨潼潼', '夏敏捷', '校园二手商品交易APP平台实现--服务器', '', ''),
(94, '2016-2107', '计算机学院', '软件122', '201200834202', '杨文娟', '刘风华', '汽车租赁联盟平台加盟运营中心系统设计与实', '', ''),
(95, '2016-2107', '计算机学院', '软件122', '201200834203', '秦盈盈', '杨关 ', '计算机学院网络综合实训管理平台系统设计-', '', ''),
(96, '2016-2107', '计算机学院', '软件122', '201200834204', '陈晶芬 ', '张西广', '科研学分管理系统的设计与实现--学生端', '', ''),
(97, '2016-2107', '计算机学院', '软件122', '201200834205', '曹迎迎 ', '杜献峰', '郑州博思公司投融资平台的设计与实现--前', '', ''),
(98, '2016-2107', '计算机学院', '软件122', '201200834206', '许会影', '郭清宇', '基于Android的社交聊天的设计与实现', '校外', ''),
(99, '2016-2107', '计算机学院', '软件122', '201200834207', '兰俊俊', '刘凤华 ', '汽车租赁联盟平台运营总部系统设计与实现-', '', ''),
(100, '2016-2107', '计算机学院', '软件122', '201200834208', '候全娟', '夏敏捷', '校园二手商品交易APP平台实现--手机端', '', ''),
(101, '2016-2107', '计算机学院', '软件122', '201200834209', '田帅飞', '刘小明', '基于循环神经网络的互联网文本信息抽取研究', '', ''),
(102, '2016-2107', '计算机学院', '软件122', '201200834210 ', '张国华', '崔岩', '面向互联网文本的自然语言分析系统设计', '', ''),
(103, '2016-2107', '计算机学院', '软件122', '201200834211', '王立奇', '刘小明', '大数据互联网文本情感新词发现研究', '', ''),
(104, '2016-2107', '计算机学院', '软件122', '201200834212', '张恒恒', '潘恒', '番茄时钟APP的设计与实现—时钟和计划管', '', ''),
(105, '2016-2107', '计算机学院', '软件122', '201200834213', '赵建开', '夏冰 ', '电子政务网站敏感信息发现与预警系统--社', '', ''),
(106, '2016-2107', '计算机学院', '软件122', '201200834214', '吴胜超 ', '刘凤华', '车租赁联盟租车网点系统设计与实现--会员', '', ''),
(107, '2016-2107', '计算机学院', '软件122', '201200834215', '魏帅坤', '罗菁/王佩雪', '高校移动考勤平台的设计与实现--教师端', '', ''),
(108, '2016-2107', '计算机学院', '软件122', '201200834216', '任云峰', '刘小明', '大数据互联网文本自动摘要研究', '', ''),
(109, '2016-2107', '计算机学院', '软件122', '201200834217', '马钰锡', '张西广', '科研学分管理系统的设计与实现--教师端', '', ''),
(110, '2016-2107', '计算机学院', '软件122', '201200834218', '王超锋 ', '张西广', '科研学分管理系统的设计与实现--管理员端', '', ''),
(111, '2016-2107', '计算机学院', '软件122', '201200834219', '贾磊', '夏敏捷', '乐享中工APP设计与实现--界面和信息获', '', ''),
(112, '2016-2107', '计算机学院', '软件122', '201200834221', '高素奎', '杨关', '移动目标视觉监控', '', ''),
(113, '2016-2107', '计算机学院', '软件122', '201200834222', '张林伟', '罗菁/王佩雪', '高校移动考勤平台的设计与实现--学生端', '', ''),
(114, '2016-2107', '计算机学院', '软件122', '201200834223', '刘洋', '刘小明', '基于卷积神经网络的互联网文本情感分析研究', '', ''),
(115, '2016-2107', '计算机学院', '软件122', '201200834224', '李贝', '潘恒', '番茄时钟APP的设计与实现--任务管理 ', '', ''),
(116, '2016-2107', '计算机学院', '软件122', '201200834226', '韩洋洋', '潘惠勇', '中原工学院教材征订系统的设计与实现--手', '', ''),
(117, '2016-2107', '计算机学院', '软件122', '201200834227', '陈晓振', '郭清宇', '基于Android的计步器的设计与实现-', '校外', ''),
(118, '2016-2107', '计算机学院', '软件122', '201200834228', '高奇云', '罗菁/王佩雪', '掌上教务平台的设计与实现--教师端', '', ''),
(119, '2016-2107', '计算机学院', '软件122', '201200834229', '李英伟', '刘小明', '大数据互联网文本热点话题自动发现研究', '', ''),
(122, '2015-2016', '计算机学院', '', '', '', '赵一丁', '', '', '未审核');

-- --------------------------------------------------------

--
-- 表的结构 `pra_work`
--

CREATE TABLE `pra_work` (
  `id` int(11) NOT NULL,
  `p_link` varchar(30) NOT NULL,
  `p_score` double NOT NULL,
  `p_type` varchar(6) NOT NULL,
  `p_class` int(11) NOT NULL,
  `p_major` varchar(20) NOT NULL,
  `p_a_class` varchar(15) NOT NULL,
  `p_stunum` int(11) NOT NULL,
  `p_week` int(11) NOT NULL,
  `p_start` varchar(10) NOT NULL,
  `p_teacher` varchar(20) NOT NULL,
  `p_where` varchar(20) NOT NULL,
  `p_need` varchar(20) NOT NULL,
  `p_note` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pra_work`
--

INSERT INTO `pra_work` (`id`, `p_link`, `p_score`, `p_type`, `p_class`, `p_major`, `p_a_class`, `p_stunum`, `p_week`, `p_start`, `p_teacher`, `p_where`, `p_need`, `p_note`) VALUES
(1, '[DB0801194].NET技术课设', 3, '课程设计', 2013, '信息管理与信息系统(本科)', '信管131', 34, 3, '', '樊银亭', '', '', ''),
(2, '[DB0801194].NET技术课设', 3, '课程设计', 2013, '信息管理与信息系统(本科)', '信管132', 32, 3, '', '樊银亭', '', '', ''),
(3, '[DB0803037]安全与协议实训', 3, '课程设计', 2013, '网络工程(本科)', '网络131', 21, 3, '1-3', '', '', '', ''),
(4, '[DB0803037]安全与协议实训', 3, '课程设计', 2013, '网络工程(本科)', '网络132', 19, 3, '1-3', '', '', '', ''),
(5, '[DB0803037]安全与协议实训', 3, '课程设计', 2013, '网络工程(本科)', '网络133', 18, 3, '1-3', '', '', '', ''),
(6, '[DB0803037]安全与协议实训', 3, '课程设计', 2013, '网络工程(本科)', '网络134', 17, 3, '1-3', '', '', '', ''),
(7, '[DB0805012]企业实习', 12, '课程设计', 2013, '网络工程卓越班(本科)', '网络13级卓越班', 35, 12, '5-16', '', '', '', ''),
(8, '[DB0801041]Java程序设计课设', 3, '课程设计', 2014, '计算机科学与技术(本科)', '计141', 28, 3, '17-19', '', '', '', ''),
(9, '[DB0801041]Java程序设计课设', 3, '课程设计', 2014, '计算机科学与技术(本科)', '计142', 27, 3, '17-19', '', '', '', ''),
(10, '[DB0801044]硬件开发综合实训', 3, '课程设计', 2014, '计算机科学与技术(本科)', '计141', 28, 3, '17-19', '', '', '', ''),
(11, '[DB0801044]硬件开发综合实训', 3, '课程设计', 2014, '计算机科学与技术(本科)', '计142', 27, 3, '17-19', '', '', '', ''),
(12, '[DB0803032]校园网维护实习', 1, '课程设计', 2014, '网络工程(本科)', '网络141', 25, 1, '19', '', '', '', ''),
(13, '[DB0803032]校园网维护实习', 1, '课程设计', 2014, '网络工程(本科)', '网络142', 12, 1, '19', '', '', '', ''),
(14, '[DB0804153]软件工程基地实训（一）', 7, '实习', 2014, '软件工程(本科)', '软件141', 28, 7, '16-18', '赵一丁', '', '', '已加入核算'),
(15, '[DB0804153]软件工程基地实训（一）', 7, '实习', 2014, '软件工程(本科)', '软件142', 31, 7, '16-18', '赵一丁', '', '', '已加入核算'),
(16, '[DB0805010]系统开发实训', 6, '课程设计', 2014, '网络工程卓越班(本科)', '网络14级卓越班', 14, 6, '17-19', '', '', '', ''),
(17, '[DB0801035]Windows程序案例分析', 1, '课程设计', 2015, '计算机科学与技术(本科)', '计151', 31, 1, '1-15', '', '', '', ''),
(18, '[DB0801035]Windows程序案例分析', 1, '课程设计', 2015, '计算机科学与技术(本科)', '计152', 30, 1, '1-15', '', '', '', ''),
(19, '[DB0801050]数据结构课程设计', 3, '课程设计', 2015, '计算机科学与技术(本科)', '计151', 31, 3, '16-18', '', '', '', ''),
(20, '[DB0801050]数据结构课程设计', 3, '课程设计', 2015, '计算机科学与技术(本科)', '计152', 30, 3, '16-18', '', '', '', ''),
(21, '[DB0801050]数据结构课程设计', 3, '课程设计', 2015, '网络工程(本科)', '网络151', 37, 3, '16-18', '', '', '', ''),
(22, '[DB0801050]数据结构课程设计', 3, '课程设计', 2015, '网络工程(本科)', '网络152', 41, 3, '16-18', '', '', '', ''),
(23, '[DB0801050]数据结构课程设计', 3, '课程设计', 2015, '网络工程(本科)', '网络153', 30, 3, '16-18', '', '', '', ''),
(24, '[DB0801050]数据结构课程设计', 3, '课程设计', 2015, '软件工程(本科)', '软件151', 38, 3, '16-18', '', '', '', ''),
(25, '[DB0801050]数据结构课程设计', 3, '课程设计', 2015, '软件工程(本科)', '软件152', 35, 3, '16-18', '', '', '', ''),
(26, '[DB0801050]数据结构课程设计', 3, '课程设计', 2015, '网络工程卓越班(本科)', '网络15级卓越班', 30, 3, '', '', '', '', ''),
(27, '[DB0803229]C语言案例分析', 1, '其他', 2016, '计算机科学与技术(本科)', '计161', 30, 1, '4-18', '', '', '', ''),
(28, '[DB0803229]C语言案例分析', 1, '其他', 2016, '计算机科学与技术(本科)', '计162', 30, 1, '4-18', '', '', '', ''),
(29, '[DB0803229]C语言案例分析', 1, '其他', 2016, '网络工程(本科)', '网络161', 30, 1, '4-18', '', '', '', ''),
(30, '[DB0803229]C语言案例分析', 1, '其他', 2016, '网络工程(本科)', '网络162', 30, 1, '4-18', '', '', '', ''),
(31, '[DB0803229]C语言案例分析', 1, '其他', 2016, '网络工程(本科)', '网络163', 30, 1, '4-18', '', '', '', ''),
(32, '[DB0803229]C语言案例分析', 1, '其他', 2016, '软件工程(本科)', '软件161', 35, 1, '4-18', '刘凤华', '', '', ''),
(33, '[DB0803229]C语言案例分析', 1, '其他', 2016, '软件工程(本科)', '软件162', 35, 1, '4-18', '刘凤华', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `teach_info_nopass`
--

CREATE TABLE `teach_info_nopass` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `class_id` varchar(11) CHARACTER SET latin1 NOT NULL,
  `class_name` varchar(32) NOT NULL,
  `class_type` varchar(3) NOT NULL,
  `grade` float NOT NULL,
  `study_hours` int(3) NOT NULL,
  `week_num` int(3) NOT NULL,
  `xueyuan` varchar(32) NOT NULL,
  `banji` varchar(15) NOT NULL,
  `ext_people` int(3) NOT NULL,
  `shiji_people` int(3) NOT NULL,
  `note` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `teach_info_pass`
--

CREATE TABLE `teach_info_pass` (
  `id` int(11) NOT NULL,
  `class_id` varchar(11) NOT NULL,
  `class_name` varchar(16) NOT NULL,
  `class_type` varchar(6) NOT NULL,
  `grade` int(3) NOT NULL,
  `study_hours` int(3) NOT NULL,
  `week_num` int(3) NOT NULL,
  `xueyuan` varchar(16) NOT NULL,
  `banji` varchar(16) NOT NULL,
  `ext_people` int(3) NOT NULL,
  `shiji_people` int(3) NOT NULL,
  `isnot_pass` varchar(2) NOT NULL,
  `zhuangtai` varchar(5) CHARACTER SET utf8mb4 NOT NULL,
  `note` varchar(16) NOT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `teach_info_pass`
--

INSERT INTO `teach_info_pass` (`id`, `class_id`, `class_name`, `class_type`, `grade`, `study_hours`, `week_num`, `xueyuan`, `banji`, `ext_people`, `shiji_people`, `isnot_pass`, `zhuangtai`, `note`, `u_id`) VALUES
(1, 'DB0801002', '计算机网络', '必修', 5, 60, 3, '计算机学院', '软件131软件132', 56, 44, '是', '未核算', '', 1),
(64, 'DB0801003', '数据结构', '必修', 5, 75, 15, '软件学院', '移动131移动132', 70, 59, '否', '未核算', '', 1),
(70, 'DB0801004', 'C语言', '必修', 3, 26, 14, '软件学院', '移动131移动132', 72, 61, '是', '', '', 2),
(71, 'DB0801005', '包泽东思想', '选修', 5, 19, 13, '软件学院', '软工132', 45, 50, '是', '', '', 3),
(72, 'DB0801001', '高等数学', '选修', 4, 25, 14, '计算机学院', '互联131互联132', 56, 61, '是', '', '', 4),
(74, 'DB0801006', '环境保护', '选修', 2, 19, 13, '计算机学院', '计算132', 45, 50, '否', '', '', 5),
(75, 'DB0801007', 'JAVA初级', '必修', 5, 19, 13, '软件学院', '网络131网络132', 60, 50, '否', '', '', 6),
(76, 'DB0801118', 'JAVA高级', '必修', 4, 20, 13, '软件学院', '移动131移动132', 60, 62, '是', '', '', 7);

-- --------------------------------------------------------

--
-- 表的结构 `teach_task`
--

CREATE TABLE `teach_task` (
  `id` int(11) NOT NULL,
  `coures_name` text NOT NULL,
  `credits` float NOT NULL,
  `grade` int(4) NOT NULL,
  `pro` text NOT NULL,
  `type1` varchar(3) NOT NULL,
  `type2` varchar(3) NOT NULL,
  `this_class` text NOT NULL,
  `test_way` varchar(4) NOT NULL,
  `stu_num` int(4) NOT NULL,
  `total_hours` int(4) NOT NULL,
  `teach_hours` int(4) NOT NULL,
  `exper_hours` int(4) NOT NULL,
  `com_hours` int(2) NOT NULL,
  `other_hours` int(2) NOT NULL,
  `weeks` int(2) NOT NULL,
  `week_class-time` int(2) NOT NULL,
  `exam_week_time` int(2) NOT NULL,
  `teacher_name` varchar(32) NOT NULL,
  `teach_where` int(8) NOT NULL,
  `curri_requi` int(20) NOT NULL,
  `note` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `teach_task`
--

INSERT INTO `teach_task` (`id`, `coures_name`, `credits`, `grade`, `pro`, `type1`, `type2`, `this_class`, `test_way`, `stu_num`, `total_hours`, `teach_hours`, `exper_hours`, `com_hours`, `other_hours`, `weeks`, `week_class-time`, `exam_week_time`, `teacher_name`, `teach_where`, `curri_requi`, `note`) VALUES
(25, '[DB0804141]软件测试原理与方法（双语）', 3, 2014, '软件工程(本科)', '', '必修课', '软件142', '考试', 31, 45, 31, 14, 0, 0, 3, 0, 0, '赵一丁', 0, 0, '已加入核算'),
(26, '[DB0804141]软件测试原理与方法（双语）', 3, 2015, '软件工程(本科)', '', '任选课', '软件131', '考查', 30, 30, 0, 0, 0, 0, 0, 0, 0, '赵一丁', 0, 0, '已加入核算'),
(27, '计算机网络', 3, 2016, '移动互联网', '', '必修课', '软件132', '考查', 34, 25, 0, 0, 0, 0, 0, 0, 0, '赵一丁', 0, 0, '未审核');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `u_id` int(11) NOT NULL,
  `u_institue` varchar(10) NOT NULL,
  `u_role` varchar(6) NOT NULL,
  `u_name` varchar(15) NOT NULL,
  `u_password` varchar(32) NOT NULL,
  `u_sdept` varchar(10) NOT NULL,
  `u_gender` varchar(5) NOT NULL,
  `u_phone` varchar(20) NOT NULL,
  `u_mail` varchar(25) NOT NULL,
  `u_picture` varchar(64) NOT NULL,
  `status` varchar(10) NOT NULL,
  `sign` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`u_id`, `u_institue`, `u_role`, `u_name`, `u_password`, `u_sdept`, `u_gender`, `u_phone`, `u_mail`, `u_picture`, `status`, `sign`) VALUES
(1, '计算机学院', '教师', '赵一丁', '1', '教授', '男', '15893985500', '1172248038@qq.com', 'http://127.0.0.1/teacher/upload/15893985500.jpg', 'hide', '不一样x的烟花方法'),
(2, '计算机学院', '教研室副主任', '刘安站', '1', '教授', '男', '13723085378', '13723085378@163.com', 'http://127.0.0.1/teacher/upload/13723085378.jpg', 'online', '香烟爱上火彩'),
(3, '计算机学院', '教研室主任', '张西广', '2', '教授', '男', '18790336164', '18790336164@163.com', 'http://127.0.0.1/teacher/upload/18790336164.jpg', 'online', '神马都是浮云'),
(4, '计算机学院', '老大', '管理员', '123456', '老大', '男', '123456', '123456@163.com', 'http://127.0.0.1/simple_0.0.1/upload/admin.jpg', 'online', '我服谁，我扶墙'),
(19, '计算机学院', '讲师', '刘凤华', '123456', '副教授', '', '13123721678', '', 'http://127.0.0.1/teacher/upload/13123721678.jpg', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `workload`
--

CREATE TABLE `workload` (
  `w_id` int(11) NOT NULL,
  `u_id` varchar(15) NOT NULL,
  `w_term` varchar(10) NOT NULL,
  `w_course` double NOT NULL,
  `w_cdesign` double NOT NULL,
  `w_graduation` double NOT NULL,
  `w_allowance` double NOT NULL,
  `w_dynamic` double NOT NULL,
  `w_stipulate` double NOT NULL,
  `w_workload` double NOT NULL,
  `w_iscomplete` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `workload`
--

INSERT INTO `workload` (`w_id`, `u_id`, `w_term`, `w_course`, `w_cdesign`, `w_graduation`, `w_allowance`, `w_dynamic`, `w_stipulate`, `w_workload`, `w_iscomplete`) VALUES
(36, '赵一丁', '2016-2017', 92.841, 70, 30, 0, 15, 200, 207.841, '达标');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `dynamic`
--
ALTER TABLE `dynamic`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `gradution`
--
ALTER TABLE `gradution`
  ADD PRIMARY KEY (`g_id`);

--
-- Indexes for table `pra_work`
--
ALTER TABLE `pra_work`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teach_info_nopass`
--
ALTER TABLE `teach_info_nopass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teach_info_pass`
--
ALTER TABLE `teach_info_pass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teach_task`
--
ALTER TABLE `teach_task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `workload`
--
ALTER TABLE `workload`
  ADD PRIMARY KEY (`w_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `course`
--
ALTER TABLE `course`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `dynamic`
--
ALTER TABLE `dynamic`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- 使用表AUTO_INCREMENT `email`
--
ALTER TABLE `email`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- 使用表AUTO_INCREMENT `gradution`
--
ALTER TABLE `gradution`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
--
-- 使用表AUTO_INCREMENT `pra_work`
--
ALTER TABLE `pra_work`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- 使用表AUTO_INCREMENT `teach_info_nopass`
--
ALTER TABLE `teach_info_nopass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `teach_info_pass`
--
ALTER TABLE `teach_info_pass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- 使用表AUTO_INCREMENT `teach_task`
--
ALTER TABLE `teach_task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- 使用表AUTO_INCREMENT `workload`
--
ALTER TABLE `workload`
  MODIFY `w_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
