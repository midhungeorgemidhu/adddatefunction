-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2020 at 07:02 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `examdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `appear_exam`
--

CREATE TABLE `appear_exam` (
  `app_id` int(8) NOT NULL,
  `obt_marks` int(5) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `remarks` varchar(20) DEFAULT NULL,
  `app_date` date DEFAULT NULL,
  `email_id` varchar(20) DEFAULT NULL,
  `exam_id` int(5) DEFAULT NULL,
  `sub_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appear_exam`
--

INSERT INTO `appear_exam` (`app_id`, `obt_marks`, `status`, `remarks`, `app_date`, `email_id`, `exam_id`, `sub_name`) VALUES
(3, 3, 'pass', 'good', '2020-09-07', 'dosha@gm', 111, 'english'),
(4, 30, 'pass', 'average', '2020-09-07', 'anirudh@gm', 111, 'english');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `exam_id` int(4) NOT NULL,
  `sub_name` varchar(8) NOT NULL,
  `clss_no` int(2) NOT NULL,
  `exam_date` date NOT NULL,
  `no_of_que` int(2) NOT NULL,
  `time_interval` time(3) NOT NULL,
  `total_marks` int(4) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`exam_id`, `sub_name`, `clss_no`, `exam_date`, `no_of_que`, `time_interval`, `total_marks`, `start_date`, `end_date`) VALUES
(9, 'sub', 2, '2020-09-19', 9, '00:09:00.000', 9, '2020-09-10', '2020-09-16'),
(111, 'english', 2, '2020-09-15', 10, '00:30:00.000', 30, '2020-09-10', '2020-09-16');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `q_id` int(4) NOT NULL,
  `que` varchar(50) NOT NULL,
  `op1` varchar(20) NOT NULL,
  `op2` varchar(20) NOT NULL,
  `op3` varchar(20) NOT NULL,
  `op4` varchar(20) NOT NULL,
  `ans` varchar(20) NOT NULL,
  `sub_name` varchar(8) NOT NULL,
  `clss_no` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`q_id`, `que`, `op1`, `op2`, `op3`, `op4`, `ans`, `sub_name`, `clss_no`) VALUES
(1, 'how many letters in english alphabet?', '23', '24', '27', '26', '26', 'english', 4),
(2, 'gdfhgjhk', 'c', 'h', 'g', 'j', 'c', 'english', 3),
(3, 'Father of White Revolution', 'Dr M S Swaminathan', 'Varghese Kurien', 'Subramanian Swamy', 'Nirmala Kurien', 'Dr M S Swaminathan', 'social', 4),
(4, 'how many letters in english alphabet', '21', '26', '28', '10', '26', 'english', 2),
(5, '\"Hind Swaraj\"  was written by:', 'Abul kalam azad', 'Mahatma ga', 'Sardar pat', 'Subhas cha', 'Mahatma ga', 'social', 10),
(11, 'Past tense of \'have\' is', 'had', 'has', 'happen', 'did', 'had', 'English', 2),
(13, 'Who discovered India', 'Vasco-da-gama', 'Leonardo-da-venchi', 'mother teresa', 'Cristopher columbus', 'Vasco-da-gama', 'Social', 2);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `name` varchar(25) NOT NULL,
  `gender` char(8) NOT NULL,
  `email_id` varchar(30) NOT NULL,
  `password` varchar(8) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `clss_no` int(2) NOT NULL,
  `security_qn` varchar(40) NOT NULL,
  `security_ans` varchar(40) NOT NULL,
  `school_reg_no` int(10) NOT NULL,
  `utype` varchar(8) NOT NULL,
  `security` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`name`, `gender`, `email_id`, `password`, `mobile_no`, `clss_no`, `security_qn`, `security_ans`, `school_reg_no`, `utype`, `security`) VALUES
('admin', '', 'admin@gm', 'admin', '', 0, '', '', 0, 'admin', 0),
('Anirudh   ', 'male', 'anirudh@gm   ', 'priya', '8105149288', 2, 'Your first love?', 'Priya   ', 45, 'user', 0),
('divya', 'female', 'divya3@gamil.com', 'divya3', '8725728616', 2, 'Your best friend\'s name?', 'divya', 20201003, 'user', 0),
('priya1', 'female', 'p1@g.cm', 'priya', '876540000', 6, 'Your pet name?', 'puppy', 7654, 'user', 0),
('priyat', 'female', 'priya1234@gmail.com', 'priya', '9945266094', 9, 'Your first school\'s name?', 'st michael\'s', 7, 'user', 0),
('smitha', 'f', 'smitha1@gm', '1234', '838475635', 2, 'what is yo', 'smitha', 20201001, 'student', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appear_exam`
--
ALTER TABLE `appear_exam`
  ADD PRIMARY KEY (`app_id`),
  ADD KEY `exam_id` (`exam_id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`email_id`),
  ADD UNIQUE KEY `mobile_no` (`mobile_no`),
  ADD UNIQUE KEY `email_id` (`email_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appear_exam`
--
ALTER TABLE `appear_exam`
  ADD CONSTRAINT `appear_exam_ibfk_1` FOREIGN KEY (`exam_id`) REFERENCES `exam` (`exam_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
