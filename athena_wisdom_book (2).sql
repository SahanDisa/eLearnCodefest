-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 01, 2019 at 12:20 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `athena_wisdom_book`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE IF NOT EXISTS `account` (
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `xp` int(11) DEFAULT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`username`, `password`, `email`, `level`, `xp`, `fname`, `lname`) VALUES
('dilan', 'dilan', 'dilan@gmail.com', 4, 150, 'Dilan', 'Perera'),
('george', 'george', 'george@gmail.com', 5, 230, 'george', 'raveen'),
('malithya', 'malithya', 'malithya@gmail.com', 4, 180, 'malithya', 'fernando'),
('nandula', 'nandula', 'nadula@gmail.com', 3, 120, 'Nandula', 'Perera'),
('randie', 'randie', 'randie@gmail.com', 2, 100, 'Randie', 'Pathirage'),
('sahan', 'sahan', 'sahan@gmail.com', 6, 280, 'sahan', 'dissanayaka'),
('uvin', 'uvin', 'uvin@gmail.com', 6, 250, 'uvin', 'perera');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
CREATE TABLE IF NOT EXISTS `answer` (
  `answer_id` varchar(8) NOT NULL,
  `content` varchar(80) NOT NULL,
  `quiz_id` varchar(4) NOT NULL,
  PRIMARY KEY (`answer_id`),
  KEY `quiz_id` (`quiz_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`answer_id`, `content`, `quiz_id`) VALUES
('an1', '==', 'q6'),
('an10', 'If', 'q10'),
('an11', 'for', 'q10'),
('an12', 'while', 'q10'),
('an13', 'go', 'q10'),
('an14', 'when', 'q10'),
('an2', '3, -1', 'q5'),
('an3', '++', 'q6'),
('an4', '--', 'q6'),
('an5', '//', 'q6'),
('an6', '+-', 'q6'),
('an7', '=+', 'q6'),
('an8', '-=', 'q6'),
('an9', 'Do while', 'q10');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `course_id` varchar(4) NOT NULL,
  `name` varchar(20) NOT NULL,
  `max_score` int(11) NOT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `name`, `max_score`) VALUES
('mat1', 'matix', 50),
('mat2', 'algebra', 50),
('mat3', 'trignometry', 99),
('pr1', 'c', 100),
('pr2', 'python', 120),
('pr3', 'c++', 89),
('sci1', 'chemistry', 97),
('sci2', 'biology', 90),
('sci3', 'zoology', 82);

-- --------------------------------------------------------

--
-- Table structure for table `create`
--

DROP TABLE IF EXISTS `create`;
CREATE TABLE IF NOT EXISTS `create` (
  `mod_id` varchar(4) NOT NULL,
  `course_id` varchar(4) NOT NULL,
  PRIMARY KEY (`mod_id`,`course_id`),
  KEY `course_id` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `create`
--

INSERT INTO `create` (`mod_id`, `course_id`) VALUES
('T002', 'mat1'),
('T004', 'mat2'),
('T003', 'pr1'),
('T001', 'sci1'),
('T004', 'sci2');

-- --------------------------------------------------------

--
-- Table structure for table `has`
--

DROP TABLE IF EXISTS `has`;
CREATE TABLE IF NOT EXISTS `has` (
  `username` varchar(40) NOT NULL,
  `course_id` varchar(4) NOT NULL,
  `progress` int(11) NOT NULL,
  `total_score` int(11) NOT NULL,
  PRIMARY KEY (`username`,`course_id`),
  KEY `course_id` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `has`
--

INSERT INTO `has` (`username`, `course_id`, `progress`, `total_score`) VALUES
('george', 'mat1', 71, 95),
('malithya', 'mat2', 86, 130),
('nandula', 'sci3', 72, 67),
('sahan', 'mat1', 98, 120),
('uvin', 'sci1', 30, 70);

-- --------------------------------------------------------

--
-- Table structure for table `manage`
--

DROP TABLE IF EXISTS `manage`;
CREATE TABLE IF NOT EXISTS `manage` (
  `mod_id` varchar(4) NOT NULL,
  `question_id` varchar(6) NOT NULL,
  PRIMARY KEY (`mod_id`,`question_id`),
  KEY `question_id` (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manage`
--

INSERT INTO `manage` (`mod_id`, `question_id`) VALUES
('T003', 'qu1'),
('T004', 'qu2');

-- --------------------------------------------------------

--
-- Table structure for table `moderator`
--

DROP TABLE IF EXISTS `moderator`;
CREATE TABLE IF NOT EXISTS `moderator` (
  `mod_id` varchar(4) NOT NULL,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`mod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `moderator`
--

INSERT INTO `moderator` (`mod_id`, `name`) VALUES
('T001', 'Sahan'),
('T002', 'Thenuka'),
('T003', 'George'),
('T004', 'Malithya');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
CREATE TABLE IF NOT EXISTS `question` (
  `question_id` varchar(6) NOT NULL,
  `content` varchar(80) NOT NULL,
  `explanation` varchar(80) NOT NULL,
  `quiz_id` varchar(4) NOT NULL,
  `answer_id` varchar(8) NOT NULL,
  PRIMARY KEY (`question_id`),
  KEY `quiz_id` (`quiz_id`),
  KEY `answer_id` (`answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`question_id`, `content`, `explanation`, `quiz_id`, `answer_id`) VALUES
('qu1', 'Which is the correct operator for equality testing?', 'c programming', 'q6', 'an1'),
('qu2', 'x^2 -2x -3', 'binomial functons', 'q5', 'an2'),
('qu3', 'Which loop is guaranteed to execute at least one time?', 'do while loop run 1 time and compare', 'q10', 'an9');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
CREATE TABLE IF NOT EXISTS `quiz` (
  `course_id` varchar(4) NOT NULL,
  `quiz_id` varchar(4) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mod_id` varchar(4) NOT NULL,
  PRIMARY KEY (`quiz_id`),
  KEY `mod_id` (`mod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`course_id`, `quiz_id`, `name`, `mod_id`) VALUES
('mat1', 'q1', 'trigonometry', 'T002'),
('pr1', 'q10', 'loops', 'T004'),
('sci1', 'q2', 'chemistry', 'T001'),
('pr2', 'q3', 'python', 'T003'),
('sci2', 'q4', 'biology', 'T004'),
('mat2', 'q5', 'algebra', 'T004'),
('pr1', 'q6', 'c base', 'T003'),
('mat3', 'q7', 'geonometry', 'T002'),
('sci3', 'q8', 'physics', 'T001'),
('mat3', 'q9', 'combinatorics', 'T004');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

DROP TABLE IF EXISTS `unit`;
CREATE TABLE IF NOT EXISTS `unit` (
  `unit_id` varchar(5) NOT NULL,
  `title` varchar(15) NOT NULL,
  `course_id` varchar(4) NOT NULL,
  PRIMARY KEY (`unit_id`),
  KEY `course_id` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`unit_id`, `title`, `course_id`) VALUES
('u1', 'basic comncept', 'pr1'),
('u2', 'data types', 'pr2'),
('u3', 'binomial functi', 'mat2'),
('u4', 'priodic table', 'sci1');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`quiz_id`);

--
-- Constraints for table `create`
--
ALTER TABLE `create`
  ADD CONSTRAINT `create_ibfk_1` FOREIGN KEY (`mod_id`) REFERENCES `moderator` (`mod_id`),
  ADD CONSTRAINT `create_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`);

--
-- Constraints for table `has`
--
ALTER TABLE `has`
  ADD CONSTRAINT `has_ibfk_1` FOREIGN KEY (`username`) REFERENCES `account` (`username`),
  ADD CONSTRAINT `has_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  ADD CONSTRAINT `has_ibfk_3` FOREIGN KEY (`username`) REFERENCES `account` (`username`);

--
-- Constraints for table `manage`
--
ALTER TABLE `manage`
  ADD CONSTRAINT `manage_ibfk_1` FOREIGN KEY (`mod_id`) REFERENCES `moderator` (`mod_id`),
  ADD CONSTRAINT `manage_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `question` (`question_id`);

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`quiz_id`),
  ADD CONSTRAINT `question_ibfk_2` FOREIGN KEY (`answer_id`) REFERENCES `answer` (`answer_id`);

--
-- Constraints for table `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `quiz_ibfk_1` FOREIGN KEY (`mod_id`) REFERENCES `moderator` (`mod_id`);

--
-- Constraints for table `unit`
--
ALTER TABLE `unit`
  ADD CONSTRAINT `unit_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
