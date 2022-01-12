-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2022 at 06:57 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `examcell3`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(300) NOT NULL,
  `department` varchar(10) NOT NULL,
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`id`, `username`, `email`, `name`, `password`, `department`, `role`) VALUES
(1, 'admin', 'admin@cec.org', 'Admin', '21232f297a57a5a743894a0e4a801fc3', 'CSE', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `class_rooms`
--

CREATE TABLE `class_rooms` (
  `id` int(11) NOT NULL,
  `room_number` int(11) NOT NULL,
  `rows` char(5) NOT NULL,
  `column` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_rooms`
--

INSERT INTO `class_rooms` (`id`, `room_number`, `rows`, `column`) VALUES
(1, 201, '5', '5'),
(2, 202, '5', '5'),
(3, 203, '5', '5'),
(4, 204, '5', '5'),
(5, 205, '5', '5'),
(6, 206, '5', '5'),
(7, 207, '5', '5'),
(8, 208, '5', '5'),
(9, 209, '5', '5'),
(10, 210, '5', '5'),
(11, 301, '5', '5'),
(12, 302, '5', '5'),
(13, 303, '5', '5'),
(14, 304, '5', '5'),
(15, 305, '5', '5'),
(16, 306, '5', '5'),
(17, 307, '6', '6'),
(18, 308, '6', '6'),
(19, 308, '6', '6'),
(20, 309, '6', '6'),
(21, 310, '6', '6'),
(22, 401, '6', '6'),
(23, 402, '6', '6'),
(24, 403, '6', '6'),
(25, 404, '7', '7'),
(26, 405, '6', '6'),
(27, 406, '7', '7'),
(28, 407, '6', '6'),
(29, 408, '7', '7'),
(30, 409, '6', '6'),
(31, 509, '10', '10'),
(32, 508, '5', '5');

-- --------------------------------------------------------

--
-- Table structure for table `staff_data`
--

CREATE TABLE `staff_data` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `department` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_data`
--

CREATE TABLE `student_data` (
  `id` int(11) NOT NULL,
  `yoa` char(5) NOT NULL,
  `sem` char(5) NOT NULL,
  `department` char(10) NOT NULL,
  `batch` char(3) NOT NULL,
  `admn` varchar(30) NOT NULL,
  `roll` varchar(30) NOT NULL,
  `uid` varchar(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sex` char(3) NOT NULL,
  `pa` char(6) NOT NULL DEFAULT 'false',
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_user`
--

CREATE TABLE `student_user` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(300) NOT NULL,
  `department` varchar(40) NOT NULL,
  `role` varchar(30) NOT NULL DEFAULT 'Student'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_user`
--

INSERT INTO `student_user` (`id`, `username`, `email`, `name`, `password`, `department`, `role`) VALUES
(1, 'raakesh', 'cb.en.u4cse20152@cb.students.a', 'Raakesh', '21232f297a57a5a743894a0e4a801fc3', 'CSE', 'Student'),
(2, 'rohith', 'cb.en.u4cse20155@cb.students.a', 'Rohith', '21232f297a57a5a743894a0e4a801fc3', 'CSE', 'Student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `id_admin` (`id`);

--
-- Indexes for table `class_rooms`
--
ALTER TABLE `class_rooms`
  ADD KEY `classroom_id` (`id`);

--
-- Indexes for table `staff_data`
--
ALTER TABLE `staff_data`
  ADD KEY `staff_id` (`id`);

--
-- Indexes for table `student_data`
--
ALTER TABLE `student_data`
  ADD KEY `student_id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `class_rooms`
--
ALTER TABLE `class_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `staff_data`
--
ALTER TABLE `staff_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_data`
--
ALTER TABLE `student_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;