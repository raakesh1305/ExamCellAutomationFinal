-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2022 at 04:29 AM
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
(1, 'admin', 'admin@cec.org', 'Admin', '21232f297a57a5a743894a0e4a801fc3', 'CSE', 'admin'),
(3, 'raakesh', 'raakesh1305@gmail.com', 'Raakesh', '9df8456fbd7e29d5c6a8f05b615dfa68', 'CSE', 'admin');

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
-- Table structure for table `hallticket`
--

CREATE TABLE `hallticket` (
  `id` int(10) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Level` int(10) NOT NULL,
  `Semester` int(10) NOT NULL,
  `SeatNumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `hallticket`
--

INSERT INTO `hallticket` (`id`, `FirstName`, `LastName`, `Level`, `Semester`, `SeatNumber`) VALUES
(2017001, 'Rohith', 'S', 2, 4, 15),
(2017007, 'Raakesh', 'M', 2, 5, 61),
(2017008, 'Giri', 'P', 1, 4, 62),
(2017009, 'Ravi', 'M', 1, 1, 63),
(2017011, 'Mani', 'K', 2, 4, 64),
(2017012, 'Nai ', 'Sekar', 2, 5, 65);

-- --------------------------------------------------------

--
-- Table structure for table `marksheet`
--

CREATE TABLE `marksheet` (
  `stuId` int(10) DEFAULT NULL,
  `Semester` int(10) NOT NULL,
  `sub1` varchar(20) NOT NULL DEFAULT 'Not-added',
  `sub1GD` varchar(11) DEFAULT 'Not-added',
  `sub2` varchar(20) NOT NULL DEFAULT 'Not-added',
  `sub2GD` varchar(11) DEFAULT 'Not-added',
  `sub3` varchar(20) NOT NULL DEFAULT 'Not-added',
  `sub3GD` varchar(11) DEFAULT 'Not-added',
  `sub4` varchar(20) DEFAULT 'Not-added',
  `sub4GD` varchar(11) DEFAULT 'Not-added',
  `sub5` varchar(20) NOT NULL DEFAULT 'Not-added',
  `sub5GD` varchar(11) DEFAULT 'Not-added',
  `sub6` varchar(20) NOT NULL DEFAULT 'Not-added',
  `sub6GD` varchar(11) DEFAULT 'Not-added',
  `sub7` varchar(20) NOT NULL DEFAULT 'Not-added',
  `sub7GD` varchar(11) DEFAULT 'Not-added'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marksheet`
--

INSERT INTO `marksheet` (`stuId`, `Semester`, `sub1`, `sub1GD`, `sub2`, `sub2GD`, `sub3`, `sub3GD`, `sub4`, `sub4GD`, `sub5`, `sub5GD`, `sub6`, `sub6GD`, `sub7`, `sub7GD`) VALUES
(2017001, 4, 'ds', '90', 'cs', '80', 'os', '70', 'ir', '90', 'is', '60', 'dc', '80', 'pl', '50'),
(2017007, 5, 'Graphic', '30', 'Semulation', '40', 'Multimedia', '10', 'Selected1', '20', 'Mis', '40', 'Co', '60', 'Ethics', '90'),
(2017008, 4, 'Algorithms', '40', 'Software1', '20', 'signals', '60', 'OS', '50', 'Discret', '20', 'Network', '100', 'Ms', '100'),
(2017009, 1, 'English1', '60', 'Math1', '30', 'Physics', '80', 'CS', '20', 'Is', '10', 'Elctronics', '100', 'Th', '100'),
(2017011, 4, 'Algorithms', '60', 'Software1', '75', 'signals', '35', 'OS', '60', 'Discret', '75', 'Network', '30', 'Ms', '40'),
(2017012, 5, 'Graphic', 'Not-added', 'Semulation', 'Not-added', 'Multimedia', 'Not-added', 'Selected1', 'Not-added', 'Mis', 'Not-added', 'Co', 'Not-added', 'Ethics', 'Not-added');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `un` varchar(100) NOT NULL,
  `ps` varchar(100) NOT NULL,
  `jop` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`un`, `ps`, `jop`) VALUES
('admin', '0000', 'ad'),
('2017001', 'password', 'st'),
('2017007', 'password', 'st'),
('2017008', 'password', 'st'),
('2017009', 'password', 'st'),
('2017011', 'password', 'st'),
('2017012', 'password', 'st');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `EmailAddress` varchar(100) NOT NULL,
  `PhoneNumber` int(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Level` varchar(100) NOT NULL,
  `Semester` varchar(100) NOT NULL,
  `image` blob NOT NULL,
  `id` int(11) NOT NULL,
  `pass` varchar(100) NOT NULL DEFAULT 'Not-added'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`FirstName`, `LastName`, `EmailAddress`, `PhoneNumber`, `Address`, `Level`, `Semester`, `image`, `id`, `pass`) VALUES
('Rohith', 'S', 'rohith2920@gmail.com', 1017102408, 'Pallavaram', '1', '4', 0x494d475f32303138303932375f3232333932372e6a7067, 2017001, 'rohith'),
('Raakesh', 'M', 'raakesh1305@gmail.com', 2147483647, 'No.12, Anna Nagar,chennai', '2', '5', 0x313534353235313038353632342e6a7067, 2017007, 'password'),
('Mani', 'K', 'rohithmani@gmail.com', 2147483647, 'No.12, Anna Nagar,Salem', '2', '4', 0x494d4732303138303431353137353735352e6a7067, 2017011, 'password'),
('Nai ', 'Sekar', 'rohith20@gmail.com', 2147483647, 'No.12, Anna Nagar,TVM', '2', '5', 0x313532353631333535373336322e6a7067, 2017012, 'password');

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
  `username` int(30) NOT NULL,
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
(1, 2017001, 'cb.en.u4cse20152@cb.students.a', 'Raakesh', '21232f297a57a5a743894a0e4a801fc3', 'CSE', 'Student'),
(2, 2017002, 'cb.en.u4cse20155@cb.students.a', 'Rohith', '21232f297a57a5a743894a0e4a801fc3', 'CSE', 'Student');

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
-- Indexes for table `hallticket`
--
ALTER TABLE `hallticket`
  ADD PRIMARY KEY (`SeatNumber`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `class_rooms`
--
ALTER TABLE `class_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `hallticket`
--
ALTER TABLE `hallticket`
  MODIFY `SeatNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2017013;

--
-- AUTO_INCREMENT for table `staff_data`
--
ALTER TABLE `staff_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_data`
--
ALTER TABLE `student_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1879;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
