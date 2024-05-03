-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2024 at 08:14 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `react_school`
--

-- --------------------------------------------------------

--
-- Table structure for table `react_school_staff`
--

CREATE TABLE `react_school_staff` (
  `staff_aid` int(11) NOT NULL,
  `staff_name` varchar(50) NOT NULL,
  `staff_age` int(11) NOT NULL,
  `staff_class` varchar(30) NOT NULL,
  `staff_is_active` tinyint(1) NOT NULL,
  `staff_datetime` varchar(20) NOT NULL,
  `staff_created` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `react_school_staff`
--

INSERT INTO `react_school_staff` (`staff_aid`, `staff_name`, `staff_age`, `staff_class`, `staff_is_active`, `staff_datetime`, `staff_created`) VALUES
(1, 'Mikasa Ackerman', 40, 'IT4A', 1, '2024-05-03 13:52:14', '2024-05-03 13:51:48'),
(3, 'Enrique Gil', 36, 'IT4A', 1, '2024-05-03 14:02:31', '2024-05-03 13:59:56'),
(4, 'Peter Parker', 38, 'IT4A', 1, '2024-05-03 14:03:10', '2024-05-03 14:03:10'),
(5, 'Naruto Uzumaki', 45, 'IT4A', 1, '2024-05-03 14:09:51', '2024-05-03 14:09:51');

-- --------------------------------------------------------

--
-- Table structure for table `react_school_student`
--

CREATE TABLE `react_school_student` (
  `student_aid` int(11) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `student_age` int(11) NOT NULL,
  `student_class` varchar(30) NOT NULL,
  `student_is_active` tinyint(1) NOT NULL,
  `student_datetime` varchar(20) NOT NULL,
  `student_created` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `react_school_student`
--

INSERT INTO `react_school_student` (`student_aid`, `student_name`, `student_age`, `student_class`, `student_is_active`, `student_datetime`, `student_created`) VALUES
(2, 'Gian Lajarca', 23, 'IT4A', 1, '2024-05-03 13:57:40', '2024-05-03 12:13:13'),
(4, 'updated name', 2222, 'updated class', 1, '2024-05-03 12:59:11', '2024-05-03 12:17:45'),
(7, '222', 222, '222', 1, '2024-05-03 12:26:56', '2024-05-03 12:26:56'),
(9, 'Carl Padilla', 24, 'CS402', 1, '2024-05-03 12:30:43', '2024-05-03 12:30:43'),
(10, 'Kim Chaewon', 28, 'CS402', 1, '2024-05-03 12:34:24', '2024-05-03 12:34:24'),
(11, 'Sung Jin Woo', 30, 'CS402', 1, '2024-05-03 12:37:19', '2024-05-03 12:37:19');

-- --------------------------------------------------------

--
-- Table structure for table `react_school_teacher`
--

CREATE TABLE `react_school_teacher` (
  `teacher_aid` int(11) NOT NULL,
  `teacher_name` varchar(50) NOT NULL,
  `teacher_age` int(11) NOT NULL,
  `teacher_class` varchar(30) NOT NULL,
  `teacher_is_active` tinyint(1) NOT NULL,
  `teacher_datetime` varchar(20) NOT NULL,
  `teacher_created` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `react_school_teacher`
--

INSERT INTO `react_school_teacher` (`teacher_aid`, `teacher_name`, `teacher_age`, `teacher_class`, `teacher_is_active`, `teacher_datetime`, `teacher_created`) VALUES
(2, 'Eren Yeager', 24, 'IT4A', 0, '2024-05-03 13:57:15', '2024-05-03 13:38:34'),
(3, 'Daniel Padilla', 27, 'IT4A', 1, '2024-05-03 13:58:50', '2024-05-03 13:58:50'),
(4, 'Kathryn Bernardo', 31, 'IT4A', 1, '2024-05-03 13:59:11', '2024-05-03 13:59:11'),
(5, 'Sasuke Uchiha', 44, 'IT4A', 1, '2024-05-03 14:09:00', '2024-05-03 14:09:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `react_school_staff`
--
ALTER TABLE `react_school_staff`
  ADD PRIMARY KEY (`staff_aid`);

--
-- Indexes for table `react_school_student`
--
ALTER TABLE `react_school_student`
  ADD PRIMARY KEY (`student_aid`);

--
-- Indexes for table `react_school_teacher`
--
ALTER TABLE `react_school_teacher`
  ADD PRIMARY KEY (`teacher_aid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `react_school_staff`
--
ALTER TABLE `react_school_staff`
  MODIFY `staff_aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `react_school_student`
--
ALTER TABLE `react_school_student`
  MODIFY `student_aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `react_school_teacher`
--
ALTER TABLE `react_school_teacher`
  MODIFY `teacher_aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
