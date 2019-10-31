-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2019 at 08:42 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

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

CREATE TABLE `account` (
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `xp` int(11) DEFAULT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(40) DEFAULT NULL
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

CREATE TABLE `answer` (
  `answer_id` varchar(8) NOT NULL,
  `content` varchar(80) NOT NULL,
  `quiz_id` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`answer_id`, `content`, `quiz_id`) VALUES
('an1', '==', 'q6');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` varchar(4) NOT NULL,
  `name` varchar(20) NOT NULL,
  `max_score` int(11) NOT NULL
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

CREATE TABLE `create` (
  `mod_id` varchar(4) NOT NULL,
  `course_id` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `has`
--

CREATE TABLE `has` (
  `username` varchar(40) NOT NULL,
  `course_id` varchar(4) NOT NULL,
  `progress` int(11) NOT NULL,
  `total_score` int(11) NOT NULL
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

CREATE TABLE `manage` (
  `mod_id` varchar(4) NOT NULL,
  `question_id` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `moderator`
--

CREATE TABLE `moderator` (
  `mod_id` varchar(4) NOT NULL,
  `name` varchar(40) NOT NULL
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

CREATE TABLE `question` (
  `question_id` varchar(6) NOT NULL,
  `content` varchar(80) NOT NULL,
  `explanation` varchar(80) NOT NULL,
  `quiz_id` varchar(4) NOT NULL,
  `answer_id` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`question_id`, `content`, `explanation`, `quiz_id`, `answer_id`) VALUES
('qu1', 'Which is the correct operator for equality testing?', 'c programming', 'q6', 'an1');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `course_id` varchar(4) NOT NULL,
  `quiz_id` varchar(4) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mod_id` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`course_id`, `quiz_id`, `name`, `mod_id`) VALUES
('mat1', 'q1', 'trigonometry', 'T002'),
('sci1', 'q2', 'chemistry', 'T001'),
('pr2', 'q3', 'python', 'T003'),
('sci2', 'q4', 'biology', 'T004'),
('mat2', 'q5', 'algebra', 'T004'),
('pr1', 'q6', 'c', 'T003'),
('mat3', 'q7', 'geonometry', 'T002'),
('sci3', 'q8', 'physics', 'T001'),
('mat3', 'q9', 'combinatorics', 'T004');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `unit_id` varchar(5) NOT NULL,
  `title` varchar(15) NOT NULL,
  `course_id` varchar(4) NOT NULL
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
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`answer_id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `create`
--
ALTER TABLE `create`
  ADD PRIMARY KEY (`mod_id`,`course_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `has`
--
ALTER TABLE `has`
  ADD PRIMARY KEY (`username`,`course_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `manage`
--
ALTER TABLE `manage`
  ADD PRIMARY KEY (`mod_id`,`question_id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `moderator`
--
ALTER TABLE `moderator`
  ADD PRIMARY KEY (`mod_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`question_id`),
  ADD KEY `quiz_id` (`quiz_id`),
  ADD KEY `answer_id` (`answer_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quiz_id`),
  ADD KEY `mod_id` (`mod_id`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`unit_id`),
  ADD KEY `course_id` (`course_id`);

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
