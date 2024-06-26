-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2021 at 11:54 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectx`
--

-- --------------------------------------------------------

--
-- Table structure for table `categ`
--

CREATE TABLE `categ` (
  `c_id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categ`
--

INSERT INTO `categ` (`c_id`, `category`) VALUES
(1, 'School'),
(2, '10th'),
(3, 'School'),
(4, '10th'),
(5, '12th'),
(6, 'Mathamatics'),
(7, '12th'),
(8, 'Mathamatics'),
(9, 'Science'),
(10, 'Biology'),
(11, 'Science'),
(12, 'Biology'),
(13, 'Chemistry '),
(14, 'Engineering'),
(15, 'Medicals'),
(16, 'English'),
(17, 'Medicals'),
(18, 'English'),
(19, 'Physics'),
(20, 'Commerce'),
(21, 'Physics'),
(22, 'Commerce'),
(23, 'Accounting'),
(24, 'Business'),
(25, 'Accounting'),
(26, 'Business'),
(27, 'Management'),
(28, 'Computer Science'),
(29, 'Management'),
(30, 'Computer Science'),
(31, 'Action and Adventure'),
(32, 'Anthology'),
(33, 'Action and Adventure'),
(34, 'Anthology'),
(35, 'Classic'),
(36, 'Comic and Graphic Novel'),
(37, 'Classic'),
(38, 'Comic and Graphic Novel'),
(39, 'Crime and Detective'),
(40, 'Drama'),
(41, 'Crime and Detective'),
(42, 'Drama'),
(43, 'Fable'),
(44, 'Fairy Tale'),
(45, 'Fable'),
(46, 'Fairy Tale'),
(47, 'Fan-Fiction'),
(48, 'Fantasy'),
(49, 'Fan-Fiction'),
(50, 'Fantasy'),
(51, 'Historical Fiction'),
(52, 'Historical'),
(53, 'Historical Fiction'),
(54, 'Historical'),
(55, 'Horror'),
(56, 'Humor'),
(57, 'Horror'),
(58, 'Humor'),
(59, 'Legend'),
(60, 'Magical Realism'),
(61, 'Legend'),
(62, 'Magical Realism'),
(63, 'Spiritual'),
(64, 'Mystery'),
(65, 'Spiritual'),
(66, 'Mystery'),
(67, 'Mythology'),
(68, 'Realistic Fiction'),
(69, 'Mythology'),
(70, 'Realistic Fiction'),
(71, 'Romance'),
(72, 'Satire'),
(73, 'Romance'),
(74, 'Satire'),
(75, 'Science Fiction (Sci-Fi)'),
(76, 'Short Story'),
(77, 'Science Fiction (Sci-Fi)'),
(78, 'Short Story'),
(79, 'Suspense / Thriller'),
(80, 'Biography / Autobiography'),
(81, 'Suspense / Thriller'),
(82, 'Biography / Autobiography'),
(83, 'Essay'),
(84, 'Memoir'),
(85, 'Essay'),
(86, 'Memoir'),
(87, 'Narrative Nonfiction'),
(88, 'Periodicals'),
(89, 'Narrative Nonfiction'),
(90, 'Periodicals'),
(91, 'Reference Books'),
(92, 'Self - help Book'),
(93, 'Reference Books'),
(94, 'Self - help Book'),
(95, 'Speech'),
(96, 'Textbook'),
(97, 'Speech'),
(98, 'Textbook'),
(99, 'Poetry'),
(100, 'Poetry');

-- --------------------------------------------------------

--
-- Table structure for table `postbook`
--

CREATE TABLE `postbook` (
  `p_id` int(11) NOT NULL,
  `b_name` varchar(50) NOT NULL,
  `b_isbn` varchar(30) NOT NULL,
  `b_auth` varchar(50) NOT NULL,
  `og_pr` int(11) NOT NULL,
  `ex_pr` int(11) DEFAULT NULL,
  `descript` varchar(200) NOT NULL,
  `pic1` varchar(50) NOT NULL,
  `pic2` varchar(50) NOT NULL,
  `pic3` varchar(50) NOT NULL,
  `genr1` varchar(40) NOT NULL,
  `genr2` varchar(40) NOT NULL,
  `genr3` varchar(40) NOT NULL,
  `genr4` varchar(40) NOT NULL,
  `used` varchar(1) NOT NULL,
  `dt_creation` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `display` varchar(1) NOT NULL,
  `usenam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `re_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact1` varchar(12) NOT NULL,
  `contact2` varchar(12) NOT NULL,
  `price` int(11) NOT NULL,
  `pos_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Indexes for table `categ`
--
ALTER TABLE `categ`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `postbook`
--
ALTER TABLE `postbook`
  ADD PRIMARY KEY (`p_id`);
ALTER TABLE `postbook` ADD FULLTEXT KEY `b_name` (`b_name`,`b_isbn`,`b_auth`,`descript`,`genr1`,`genr2`,`genr3`,`genr4`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`re_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categ`
--
ALTER TABLE `categ`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `postbook`
--
ALTER TABLE `postbook`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `re_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
