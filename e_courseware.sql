-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2015 at 01:49 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `e_courseware`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_login`
--

CREATE TABLE IF NOT EXISTS `active_login` (
  `user_id` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `active_login`
--

INSERT INTO `active_login` (`user_id`, `time`) VALUES
('neerav', '2015-05-23 07:55:52'),
('professor', '2015-05-23 10:13:38');

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE IF NOT EXISTS `activity_log` (
  `a_id` int(5) NOT NULL COMMENT 'admin id',
  `u_name` varchar(15) NOT NULL COMMENT 'admin/user name',
  `s_timestamp` datetime NOT NULL COMMENT 'starting timestamp',
  `c_timestamp` datetime NOT NULL COMMENT 'closing timestamp',
  UNIQUE KEY `a_id` (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_record`
--

CREATE TABLE IF NOT EXISTS `admin_record` (
  `a_id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'admin id',
  `a_name` text NOT NULL COMMENT 'admin name',
  `email` varchar(40) NOT NULL COMMENT 'Email Address',
  `u_name` varchar(15) NOT NULL COMMENT 'username',
  `password` varchar(15) NOT NULL COMMENT 'password',
  PRIMARY KEY (`a_id`),
  UNIQUE KEY `u_name` (`u_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `admin_record`
--

INSERT INTO `admin_record` (`a_id`, `a_name`, `email`, `u_name`, `password`) VALUES
(1, 'null', 'null', 'null', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE IF NOT EXISTS `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` varchar(50) NOT NULL,
  `rid` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `sid`, `rid`, `msg`, `time`) VALUES
(1, 'hi', 'there', 'i have crush for you girl but i am unable to confess. God show me the path', '2015-04-24 21:34:18'),
(2, 'there', 'hi', 'wish if you really feel the same as i Do', '2015-04-24 21:34:18'),
(3, 'hi', 'there', 'sorry in advance if you are hurt but i have a crush for you', '2015-04-24 21:45:24'),
(4, 'hi', 'professor', 'good morning sir', '2015-04-25 05:46:59'),
(5, 'hi', 'professor', 'my name is kishan j patel', '2015-04-25 05:47:06'),
(6, 'student', 'professor', 'good morning sir', '2015-04-25 05:48:35'),
(7, 'student', 'professor', 'my name is kishan j patel', '2015-04-25 05:48:44'),
(8, 'professor', 'student', 'ok good morning', '2015-04-25 05:49:50'),
(9, 'professor', 'student', 'hii', '2015-04-25 05:49:51'),
(10, 'professor', 'student', 'what brings you here to me>', '2015-04-25 05:50:02'),
(11, 'student', 'professor', 'had to ask you somethiing', '2015-04-25 05:50:11'),
(12, 'professor', 'student', 'yes say?', '2015-04-25 05:50:20'),
(13, 'student', 'professor', 'i have a pen drive and its detected but gets undected immidiately what can be the reason?', '2015-04-25 05:51:05'),
(14, 'professor', 'student', 'i may have to see it', '2015-04-25 05:51:37'),
(15, 'professor', 'student', 'tohugh send me some picks of it and i may know it', '2015-04-25 05:51:56'),
(16, 'student', 'professor', 'hii sir how r you', '2015-04-25 14:46:29'),
(17, 'professor', 'student', '', '2015-04-25 14:46:40'),
(18, 'professor', 'student', 'am  good hws you ?', '2015-04-25 14:46:40'),
(19, 'professor', 'student', 'did yuo find the answers', '2015-04-25 14:46:46'),
(20, 'professor', 'student', 'hiii for the inconvinience from my side', '2015-05-17 21:05:58'),
(21, 'student', 'professor', 'no problem sir i can understand', '2015-05-17 21:06:47'),
(22, 'professor', 'student', 'i will do it in no time ok ', '2015-05-17 21:07:02'),
(23, 'student', 'professor', 'ok then will meet you when  i get free ok', '2015-05-17 21:07:21'),
(24, 'professor', 'student', 'ya sure sir it will br my pleasure', '2015-05-17 21:07:39'),
(25, 'student', 'professor', 'ok then bye sir have to go to college now', '2015-05-17 21:08:03'),
(26, 'professor', 'student', 'ok bye sir', '2015-05-17 21:08:10'),
(27, 'student', 'professor', ':)', '2015-05-17 21:08:19'),
(28, 'professor', 'student', ':)', '2015-05-17 21:08:24');

-- --------------------------------------------------------

--
-- Table structure for table `coment_dtls`
--

CREATE TABLE IF NOT EXISTS `coment_dtls` (
  `cmnt_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `cmnt_by_uname` varchar(20) NOT NULL,
  `cmnt_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cmnt_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `coment_dtls`
--

INSERT INTO `coment_dtls` (`cmnt_id`, `f_id`, `comment`, `cmnt_by_uname`, `cmnt_date`) VALUES
(1, 1, 'yes i can solve your query', 'admin', '2015-01-04 10:57:03'),
(2, 9, 'csdfvsdvxccv', 'admin', '2015-01-04 10:57:03'),
(3, 9, 'gfdfdtdffgd\r\ndfsf\r\ndfdsf\r\nfsf\r\ndfsf\r\ndf\r\nsdfds\r\nfd\r\nfds\r\nf', 'admin', '2015-01-04 10:57:03'),
(4, 9, 'hii Kishan,\r\nyou can refer to the link below it contains the information about the UML usecase and it also has the solutions to your queries\r\ncv\r\ndf\r\ncxvx\r\n', '', '2015-01-04 10:50:20'),
(5, 9, 'wqeddasdwd\r\n                    ', '', '2015-01-10 05:42:59'),
(6, 10, '                        \r\n                    kjkhkjhjkhkj\r\ngfdgh', '', '2015-01-10 05:44:31'),
(7, 11, '                        \r\n                    zxvxcxcvxcdfgd', '', '2015-03-21 11:07:19'),
(8, 11, 'way to live a life is always difficult\r\n                    ', 'admin', '2015-04-01 10:32:37'),
(9, 11, '  jkhjk\r\n                    ', 'neerav', '2015-04-05 19:06:54'),
(10, 12, '                        \r\n                   post', 'neerav', '2015-04-05 19:36:32'),
(11, 12, 'qwdwq\r\n                    ', 'neerav', '2015-04-05 19:37:10'),
(12, 12, '                        hii\r\n                    ', '', '2015-04-09 06:56:27'),
(13, 13, '                        \r\n                 jkjhkhjh   ', 'student', '2015-05-16 19:15:08'),
(14, 11, '                        \r\n                    mmmmmmmmmmmmm', 'student', '2015-05-17 05:07:55'),
(15, 15, '                        \r\n                    FSDFS', 'neerav', '2015-05-20 21:12:40'),
(16, 16, '                        \r\n                 good   ', 'neerav', '2015-05-23 07:48:28');

-- --------------------------------------------------------

--
-- Table structure for table `comment_forum`
--

CREATE TABLE IF NOT EXISTS `comment_forum` (
  `f_id` int(5) NOT NULL COMMENT 'forums id',
  `c_id` int(5) NOT NULL COMMENT 'course/category id',
  `u_name` varchar(15) NOT NULL COMMENT 'username',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'post timestamp',
  `comment` text NOT NULL COMMENT 'comment message in forums'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE IF NOT EXISTS `contact_us` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `sub` varchar(100) NOT NULL,
  `msg` text NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`cid`, `name`, `email`, `phone`, `sub`, `msg`, `date`) VALUES
(1, 'cdsdsdfd', 'cdsf@sfd.com', '1234567890', 'hii', 'xzcxzxcxvdvcxcxv', '2015-05-20'),
(2, 'neerav', 'neeravpatel85@gmail.com', '8950122427', 'UI concerns', 'Plz look over UI Problems', '2015-05-23');

-- --------------------------------------------------------

--
-- Table structure for table `courseware`
--

CREATE TABLE IF NOT EXISTS `courseware` (
  `c_id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'course id',
  `c_name` varchar(20) NOT NULL COMMENT 'course name',
  `c_category` varchar(50) NOT NULL COMMENT 'course catagory',
  `p_id` varchar(50) NOT NULL COMMENT 'professional''s id',
  `u_timestamp` date NOT NULL COMMENT 'update timestamp',
  `duration` varchar(10) NOT NULL COMMENT 'duration of course',
  `status` varchar(20) NOT NULL COMMENT 'course status',
  `evaluevation` varchar(10) NOT NULL COMMENT 'cost of course',
  `details` varchar(300) NOT NULL,
  `filename` varchar(200) NOT NULL,
  PRIMARY KEY (`c_id`),
  UNIQUE KEY `c_name` (`c_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `courseware`
--

INSERT INTO `courseware` (`c_id`, `c_name`, `c_category`, `p_id`, `u_timestamp`, `duration`, `status`, `evaluevation`, `details`, `filename`) VALUES
(1, 'material1', '1', '1', '2015-04-22', '22', 'yes', 'ads', 'Java Platform, Enterprise Edition or Java EE is Oracle''s enterprise Java computing platform. The platform provides an API and runtime environment for developing and running enterprise software, including network and web services, and other large-scale, multi-tiered, scalable, reliable, and secure ne', ''),
(2, 'Cloud Computing', 'Advanced toics', 'professor', '2015-05-23', '22', 'valid', '345', 'dsfdgd', ''),
(3, 'NEwCourse', 'Advanced topics', 'professor', '2015-05-23', '22', 'valid', '345', 'dsfdgd', '\\img7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `f_date` date NOT NULL COMMENT 'Date of making feedback ',
  `u_name` varchar(15) NOT NULL COMMENT 'username',
  `message` text NOT NULL COMMENT 'message/feedback',
  `timestamp` datetime NOT NULL COMMENT 'timestamp of feedback',
  PRIMARY KEY (`f_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forums`
--

CREATE TABLE IF NOT EXISTS `forums` (
  `f_id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'forum id',
  `c_id` int(5) NOT NULL COMMENT 'course/catagory id',
  `u_name` varchar(15) NOT NULL COMMENT 'username',
  `date` datetime NOT NULL COMMENT 'post timestamp',
  `querry` text NOT NULL COMMENT 'question message in forums',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `forums_rgstr`
--

CREATE TABLE IF NOT EXISTS `forums_rgstr` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_title` varchar(100) DEFAULT NULL,
  `sub_id` int(11) NOT NULL,
  `f_up_by` varchar(20) NOT NULL,
  `f_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `f_msg` text NOT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `forums_rgstr`
--

INSERT INTO `forums_rgstr` (`f_id`, `f_title`, `sub_id`, `f_up_by`, `f_date`, `f_msg`) VALUES
(1, 'ask a question', 0, '0000-00-00 00:00:00', '2014-11-01 06:08:37', 'i hav a query plz solve it?'),
(2, 'hhh', 1, 'admin', '2014-11-01 06:38:57', 'gjhfdghcvfg'),
(3, 'jkbhkgjh', 2, 'admin', '2014-11-01 06:46:18', 'jjkbkhkbkjjk'),
(4, NULL, 3, '', '2014-11-04 07:06:50', 'vv'),
(5, NULL, 3, '', '2014-11-04 07:07:07', 'kjhjghjbgjh'),
(6, NULL, 3, '', '2014-11-04 07:08:05', 'my name is kinjlo'),
(7, NULL, 3, '', '2014-11-04 16:31:20', ''),
(8, NULL, 3, '', '2015-01-03 19:23:55', 'what is a use case diagram can any one help me?'),
(9, 'use case', 3, '', '2015-01-03 19:28:28', 'can any body help me with usecase? thanks in advance'),
(10, 'hii', 4, '', '2015-01-10 05:44:08', 'khkjhkkj hjkh kjhkj kjhkjhk klhkj hkjh kjh '),
(11, 'for error solving', 4, '', '2015-03-21 11:06:59', 'dldsfslgdflkgflkhfgklhgmlgk'),
(12, 'problem with presentation', 3, 'naya', '2015-04-01 18:57:01', 'aasad'),
(13, 'problem with presentation', 1, '', '2015-04-21 09:04:32', 'i have problems with presentation and also with designinig can any body help me'),
(14, '', 1, '', '2015-05-17 05:07:30', '.,.'),
(15, 'newQuiz', 1, '', '2015-05-20 21:11:47', 'SAAFADF'),
(16, 'hello', 1, '', '2015-05-23 07:48:13', '');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `u_type` varchar(20) NOT NULL COMMENT 'user type:Admin,Student,or Professional',
  `u_name` varchar(15) NOT NULL COMMENT 'username',
  `password` varchar(15) NOT NULL COMMENT 'user password',
  UNIQUE KEY `u_name` (`u_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`u_type`, `u_name`, `password`) VALUES
('a', 'neerav', 'krishna'),
('p', 'professor', 'professor'),
('s', 'student', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `material_master`
--

CREATE TABLE IF NOT EXISTS `material_master` (
  `m_id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'material id',
  `c_id` int(5) DEFAULT NULL COMMENT 'course id',
  `p_id` varchar(50) DEFAULT NULL COMMENT 'proffesional''s id',
  `date` date DEFAULT NULL COMMENT 'upload timestamp',
  `m_type` varchar(20) DEFAULT NULL COMMENT 'material type',
  `filepath` varchar(200) DEFAULT NULL COMMENT 'material title',
  `m_name` varchar(40) DEFAULT NULL COMMENT 'material name',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `material_master`
--

INSERT INTO `material_master` (`m_id`, `c_id`, `p_id`, `date`, `m_type`, `filepath`, `m_name`) VALUES
(1, 1, '1', '2015-04-18', 'assignment', 'title', 'sdad'),
(2, 1, NULL, NULL, 'Quiz Papers', 'E:	emp', 'formatq2.doc'),
(4, 1, 'professor', '2015-05-18', 'E-books', 'E:	emp', 'formatq2.doc'),
(5, 1, 'professor', '2015-05-23', 'Quiz Papers', 'E:	emp', 'Neerav CV.docx');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `msg_id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'message id',
  `msg_to` varchar(30) NOT NULL COMMENT 'receipent',
  `msg_from` varchar(30) NOT NULL COMMENT 'sender',
  `date` date NOT NULL COMMENT 'receiving timestamp',
  `sub` varchar(100) NOT NULL COMMENT 'subject',
  `msg` text NOT NULL COMMENT 'message',
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `msg_to`, `msg_from`, `date`, `sub`, `msg`, `status`) VALUES
(1, 'kishan', 'neerav', '2015-04-09', 'sfsdfX', 'CXVCXVX\r\nVXCVX\r\nCVCXV\r\nXCVCV\r\nXCVXVXVXVCXVX\r\nVXVXVXCVXCVX', NULL),
(2, 'student', 'professor', '2015-05-14', 'hiii', 'hiii kishan how r you a didnt reply right?\r\ndont worry soon its going to be new thing', 'unread'),
(3, 'student', 'student', '2015-05-18', 'i saw services', '  vado tare jate karvo padshe ahi thi site ma access nathi madtu', 'unread'),
(4, 'neerav', 'neerav', '2015-05-23', 'hello', ' hello', 'unread'),
(5, 'neerav', 'professor', '2015-05-23', 'error in JDBC', ' use prepared statment', 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `n_id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'notification id',
  `title` varchar(20) NOT NULL COMMENT 'title',
  `date` date NOT NULL COMMENT 'notify timestamp',
  `a_id` int(5) DEFAULT NULL COMMENT 'admin id',
  `message` text NOT NULL COMMENT 'notification/message',
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`n_id`, `title`, `date`, `a_id`, `message`) VALUES
(1, 'safsaf dsfsf', '2015-04-16', 0, 'fsdfsfssd\r\nsdfsdfdsfsdfdsfsf\r\nsdfsdfdsffsf\r\nsdfsdfsfsdfdfsf\r\nsdfsdfdsfsdf\r\nsdfsdfdfsfsdf\r\ndfdsfdsfsdfsdf'),
(2, 'new ', '2015-05-21', NULL, 'sacsdsfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `professional_register`
--

CREATE TABLE IF NOT EXISTS `professional_register` (
  `p_id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'user id',
  `f_name` varchar(15) NOT NULL COMMENT 'first name',
  `l_name` varchar(15) NOT NULL COMMENT 'last name',
  `gender` varchar(7) NOT NULL COMMENT 'gender',
  `dob` date NOT NULL COMMENT 'date of birth',
  `image` varchar(50) NOT NULL COMMENT 'user profile image',
  `email` varchar(40) NOT NULL COMMENT 'email adress',
  `mob` int(11) NOT NULL COMMENT 'mobile number',
  `experience` varchar(50) NOT NULL COMMENT 'proffessional experience',
  `up_qc` varchar(50) NOT NULL COMMENT 'upload Qualification certification',
  `adress` varchar(50) NOT NULL COMMENT 'current address',
  `city` text NOT NULL COMMENT 'city',
  `state` text NOT NULL COMMENT 'state',
  `u_name` varchar(15) NOT NULL COMMENT 'username',
  `password` varchar(15) NOT NULL COMMENT 'password',
  `s_ques` varchar(50) NOT NULL COMMENT 'security question',
  `s_ans` varchar(50) NOT NULL COMMENT 'security answer',
  PRIMARY KEY (`p_id`),
  UNIQUE KEY `u_name` (`u_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `professional_register`
--

INSERT INTO `professional_register` (`p_id`, `f_name`, `l_name`, `gender`, `dob`, `image`, `email`, `mob`, `experience`, `up_qc`, `adress`, `city`, `state`, `u_name`, `password`, `s_ques`, `s_ans`) VALUES
(1, 'kishan', 'kishan', 'male', '2015-04-17', '', 'kk@kk.com', 1234567890, '2', 'zcsdafsa?', 'safdsafs', '1', '1', 'professor', 'kishan', 'ssaddf', 'czssdf');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `q_id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'question id',
  `c_id` int(5) NOT NULL COMMENT 'course id',
  `ques` varchar(50) NOT NULL COMMENT 'question',
  `op1` varchar(25) NOT NULL COMMENT 'option1',
  `op2` varchar(25) NOT NULL COMMENT 'option2',
  `op3` varchar(25) NOT NULL COMMENT 'option3',
  `op4` varchar(25) NOT NULL COMMENT 'option4',
  `ans` varchar(25) NOT NULL COMMENT 'answer',
  `comment` varchar(50) DEFAULT NULL COMMENT 'comments',
  PRIMARY KEY (`q_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`q_id`, `c_id`, `ques`, `op1`, `op2`, `op3`, `op4`, `ans`, `comment`) VALUES
(2, 3, 'after you fail can you hope for more?', 'yes', 'no', 'never', 'forever', '4', NULL),
(3, 3, 'has refused?', 'yes', 'no', 'dont know', 'only knows', '4', 'sdfgf');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE IF NOT EXISTS `quiz` (
  `q_id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'quiz id',
  `q_name` varchar(20) NOT NULL COMMENT 'quiz name/category',
  `c_id` int(5) NOT NULL COMMENT 'course/category id',
  `date` date NOT NULL COMMENT 'upload timestamp',
  `p_id` varchar(50) NOT NULL COMMENT 'proffesional''s id',
  PRIMARY KEY (`q_id`),
  UNIQUE KEY `q_name` (`q_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`q_id`, `q_name`, `c_id`, `date`, `p_id`) VALUES
(1, 'title', 1, '2015-04-21', 'professor'),
(2, 'Quiz2', 1, '2015-04-21', 'professor'),
(3, 'newQuiz', 1, '2015-05-18', 'professor'),
(4, 'as', 1, '2015-05-23', 'professor');

-- --------------------------------------------------------

--
-- Table structure for table `rate_master`
--

CREATE TABLE IF NOT EXISTS `rate_master` (
  `f_id` int(5) DEFAULT NULL COMMENT 'forum id',
  `c_id` int(5) DEFAULT NULL COMMENT 'course/catagory id',
  `views` int(11) DEFAULT NULL COMMENT 'number of views/comments',
  `ratings` int(11) DEFAULT NULL COMMENT 'post/comment ratings',
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `rate_master`
--

INSERT INTO `rate_master` (`f_id`, `c_id`, `views`, `ratings`, `r_id`, `user`) VALUES
(NULL, 1, NULL, 3, 1, NULL),
(NULL, 1, NULL, 5, 2, 'student'),
(NULL, 1, NULL, 4, 3, 'null'),
(NULL, 1, NULL, 4, 4, 'null'),
(NULL, 1, NULL, 3, 5, 'student'),
(NULL, 1, NULL, 3, 6, 'student');

-- --------------------------------------------------------

--
-- Table structure for table `selected_courses`
--

CREATE TABLE IF NOT EXISTS `selected_courses` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'student id',
  `e_date` date NOT NULL COMMENT 'course id',
  `paid` varchar(10) NOT NULL COMMENT 'cost',
  `std_for` varchar(50) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `c_id` varchar(10) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `selected_courses`
--

INSERT INTO `selected_courses` (`s_id`, `e_date`, `paid`, `std_for`, `status`, `c_id`) VALUES
(1, '0000-00-00', '2000', 'student', NULL, ''),
(2, '2015-04-25', 'no', 'student', 'enrolled', ''),
(3, '2015-04-25', 'no', 'student', 'enrolled', '1'),
(4, '2015-05-20', 'no', 'student', 'enrolled', '1'),
(5, '2015-05-23', 'no', 'student', 'enrolled', '1'),
(6, '2015-05-23', 'no', 'student', 'enrolled', '1');

-- --------------------------------------------------------

--
-- Table structure for table `student_register`
--

CREATE TABLE IF NOT EXISTS `student_register` (
  `s_id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'user id',
  `f_name` varchar(15) NOT NULL COMMENT 'first name',
  `l_name` varchar(15) NOT NULL COMMENT 'last name',
  `gender` varchar(7) NOT NULL COMMENT 'gender',
  `dob` date NOT NULL COMMENT 'date of birth',
  `image` varchar(50) NOT NULL COMMENT 'user profile image',
  `email` varchar(40) NOT NULL COMMENT 'Email adress',
  `mob` varchar(15) NOT NULL COMMENT 'mobile number',
  `address` varchar(50) NOT NULL COMMENT 'current address',
  `city` text NOT NULL COMMENT 'city',
  `state` text NOT NULL COMMENT 'state',
  `u_name` varchar(15) NOT NULL COMMENT 'username',
  `password` varchar(15) NOT NULL COMMENT 'password',
  `s_ques` varchar(50) NOT NULL COMMENT 'security question',
  `s_ans` varchar(50) NOT NULL COMMENT 'security answer',
  PRIMARY KEY (`s_id`),
  UNIQUE KEY `u_name` (`u_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `student_register`
--

INSERT INTO `student_register` (`s_id`, `f_name`, `l_name`, `gender`, `dob`, `image`, `email`, `mob`, `address`, `city`, `state`, `u_name`, `password`, `s_ques`, `s_ans`) VALUES
(2, 'neerav', 'patel', 'on', '1993-11-11', 'D:/images (1).jpg', 'neeravpatel85@gmail.com', '972400', 'motapore', 'nadiad', 'gujrat', 'neerav2', '', 'What was your first mobile number?', '34'),
(4, 'neerav', 'patele', 'on', '1993-09-21', '', 'neeravpatel85@gmail.com', '3443', 'motapore', 'nadiad', 'gujrat', 'sfd', 'sfd', '<--Select from here-->', 'dsfdfsdf'),
(5, 'kishan', 'patel', 'on', '1993-09-21', '', 'neeravpatel85@gmail.com', '972400', 'motapore', 'nadiad', 'gujrat', 'kishan', 'kishan', '<--Select from here-->', 'babloo'),
(6, 'kishan', 'krishna', 'on', '1993-09-21', '', 'neeravpatel85@gmail.com', '9724009919', 'motapore', 'nadiad', 'gujrat', 'krishhna', 'krishhna', '<--Select from here-->', 'babloo'),
(7, 'harsh', 'patel', 'on', '1993-09-21', '', 'arora@gmail.com', '1234567', 'nest tenament', 'jalandhar', 'Punjab', 'harsh', 'harsh', 'What is your nick name?', 'mafo');

-- --------------------------------------------------------

--
-- Table structure for table `video_library`
--

CREATE TABLE IF NOT EXISTS `video_library` (
  `v_id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'video id',
  `c_id` int(5) NOT NULL COMMENT 'course id',
  `p_id` int(5) NOT NULL COMMENT 'professional''s id',
  `date` datetime NOT NULL COMMENT 'upload timestamp',
  `src_path` varchar(50) NOT NULL COMMENT 'source path',
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `video_library`
--

INSERT INTO `video_library` (`v_id`, `c_id`, `p_id`, `date`, `src_path`, `name`) VALUES
(1, 1, 1, '2015-04-15 00:28:25', 'E:\\123.mp4', '1234.mp4');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
