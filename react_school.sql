-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2024 at 02:20 AM
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
  `staff_gender` varchar(30) NOT NULL,
  `staff_email` varchar(50) NOT NULL,
  `staff_datetime` varchar(20) NOT NULL,
  `staff_created` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `react_school_staff`
--

INSERT INTO `react_school_staff` (`staff_aid`, `staff_name`, `staff_age`, `staff_class`, `staff_is_active`, `staff_gender`, `staff_email`, `staff_datetime`, `staff_created`) VALUES
(1, 'Mikasa Ackerman', 40, 'IT4A', 1, 'Female', 'mikasaackerman@gmail.com', '2024-05-06 07:50:28', '2024-05-03 13:51:48'),
(3, 'Enrique Gil', 36, 'IT4A', 1, 'Male', 'enriquegil@gmail.com', '2024-05-06 07:51:03', '2024-05-03 13:59:56'),
(4, 'Peter Parker', 38, 'IT4A', 1, 'Male', 'peterparker@gmail.com', '2024-05-06 07:51:34', '2024-05-03 14:03:10'),
(5, 'Naruto Uzumaki', 45, 'IT4A', 1, 'Male', 'narutouzumaki@gmail.com', '2024-05-06 07:52:01', '2024-05-03 14:09:51'),
(6, 'Shin Ryujin', 40, 'IT4A', 1, 'Female', 'ryujin@gmail.com', '2024-05-06 07:49:06', '2024-05-06 07:48:23'),
(7, 'Vice Ganda', 51, 'CS402', 1, 'Female', 'viceganda@gmail.com', '2024-05-06 08:03:12', '2024-05-06 08:03:12'),
(8, 'Ivana Alawi', 28, 'CS402', 1, 'Female', 'ivanaalawi@gmail.com', '2024-05-06 08:03:34', '2024-05-06 08:03:34'),
(9, 'LeBron James', 48, 'CS402', 1, 'Male', 'lebronjames@gmail.com', '2024-05-06 08:04:14', '2024-05-06 08:04:14'),
(10, 'Kylie Jenner', 30, 'CS402', 1, 'female', 'kyliejenner@gmail.com', '2024-05-06 08:04:38', '2024-05-06 08:04:38'),
(11, 'Cristiano Ronaldo', 35, 'IT4A', 1, 'Male', 'cristianoronaldo@gmail.com', '2024-05-06 08:05:30', '2024-05-06 08:05:30'),
(12, 'Kim Kardashian', 35, 'IT4A', 1, 'Female', 'kimkardashian@gmail.com', '2024-05-06 08:05:55', '2024-05-06 08:05:55');

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
  `student_email` varchar(50) NOT NULL,
  `student_gender` varchar(11) NOT NULL,
  `student_datetime` varchar(20) NOT NULL,
  `student_created` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `react_school_student`
--

INSERT INTO `react_school_student` (`student_aid`, `student_name`, `student_age`, `student_class`, `student_is_active`, `student_email`, `student_gender`, `student_datetime`, `student_created`) VALUES
(2, 'Gian Lajarca', 23, 'IT4A', 1, 'gianlajarca14@gmail.com', 'Male', '2024-05-03 15:39:47', '2024-05-03 12:13:13'),
(4, 'John Cena', 28, 'CS402', 0, 'johncena@gmail.com', 'Male', '2024-05-03 15:48:20', '2024-05-03 12:17:45'),
(9, 'Carl Padilla', 28, 'CS402', 1, 'carlpadilla@gmail.com', 'Male', '2024-05-03 15:47:03', '2024-05-03 12:30:43'),
(10, 'Kim Chaewon', 23, 'CS403', 1, 'kimchaewon@gmail.com', 'Female', '2024-05-03 15:42:25', '2024-05-03 12:34:24'),
(11, 'Sung Jin Woo', 30, 'CS402', 1, 'sungjinwoo@gmail.com', 'Male', '2024-05-03 15:48:30', '2024-05-03 12:37:19'),
(12, 'Paul Atreidis', 28, 'IT4A', 0, 'paulatreidis@gmail.com', 'Male', '2024-05-06 07:21:30', '2024-05-03 15:15:34'),
(15, 'Liza Soberano', 26, 'IT4A', 1, 'lizasoberano@gmail.com', 'Female', '2024-05-06 06:50:15', '2024-05-06 06:50:15'),
(16, 'Bae Suzy', 26, 'IT4A', 0, 'baesuzy@gmail.com', 'Female', '2024-05-06 07:10:38', '2024-05-06 07:09:27'),
(17, 'Miles Morales', 20, 'IT4B', 1, 'milesmorales@gmail.com', 'Male', '2024-05-06 07:11:48', '2024-05-06 07:11:48'),
(18, 'Peter Parker', 24, 'IT4B', 1, 'peterparker@gmail.com', 'Male', '2024-05-06 07:12:15', '2024-05-06 07:12:15'),
(19, 'Mary Jane Watson', 24, 'IT4B', 0, 'maryjane@gmail.com', 'Female', '2024-05-06 07:21:09', '2024-05-06 07:12:45'),
(20, 'Tom Cruise', 24, 'IT4B', 1, 'tomcruise@gmail.com', 'Male', '2024-05-06 07:17:37', '2024-05-06 07:17:37'),
(21, 'Belle Miranda', 24, 'IT4A', 1, 'belleMiranda@gmail.com', 'Female', '2024-05-06 07:19:31', '2024-05-06 07:19:31'),
(22, 'Julia Barreto', 24, 'IT4A', 0, 'juliabarreto@gmail.com', 'Female', '2024-05-06 07:21:01', '2024-05-06 07:19:58'),
(23, 'Nadine Lustre', 25, 'IT4A', 1, 'nadinelustre@gmail.com', 'Female', '2024-05-06 07:20:24', '2024-05-06 07:20:24');

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
  `teacher_gender` varchar(30) NOT NULL,
  `teacher_email` varchar(50) NOT NULL,
  `teacher_datetime` varchar(20) NOT NULL,
  `teacher_created` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `react_school_teacher`
--

INSERT INTO `react_school_teacher` (`teacher_aid`, `teacher_name`, `teacher_age`, `teacher_class`, `teacher_is_active`, `teacher_gender`, `teacher_email`, `teacher_datetime`, `teacher_created`) VALUES
(2, 'Eren Yeager', 35, 'IT4A', 0, 'Male', 'erenyeager@gmail.com', '2024-05-06 07:53:38', '2024-05-03 13:38:34'),
(3, 'Sasuke Uchiha', 37, 'IT4A', 1, 'Male', 'sasukeuchiha@gmail.com', '2024-05-06 07:55:21', '2024-05-03 13:58:50'),
(4, 'Kathryn Bernardo', 31, 'IT4A', 1, 'Female', 'kathrynbernardo@gmail.com', '2024-05-06 07:56:49', '2024-05-03 13:59:11'),
(5, 'Kim Dahyun', 37, 'IT4A', 1, 'Female', 'kimdahyun@gmail.com', '2024-05-06 07:56:22', '2024-05-03 14:09:00'),
(6, 'Jonny Sins', 37, 'IT4A', 1, 'Female', 'jhonnysins@gmail.com', '2024-05-06 07:46:22', '2024-05-06 07:45:40'),
(7, 'Brad Pitt', 38, 'CS402', 1, 'Male', 'bradpitt@gmail.com', '2024-05-06 07:58:40', '2024-05-06 07:58:40'),
(8, 'Lady Gaga', 38, 'CS402', 1, 'Female', 'ladygaga@gmail.com', '2024-05-06 07:59:01', '2024-05-06 07:59:01'),
(9, 'Justin Bieber', 38, 'CS402', 1, 'Male', 'justinbieber@gmail.com', '2024-05-06 07:59:22', '2024-05-06 07:59:22'),
(10, 'Angelie Jolie', 41, 'CS402', 1, 'Female', 'angeliejolie@gmail.com', '2024-05-06 07:59:45', '2024-05-06 07:59:45'),
(11, 'Anne Hathaway', 46, 'CS402', 1, 'Female', 'annehathaway@gmail.com', '2024-05-06 08:00:51', '2024-05-06 08:00:51'),
(12, 'Dwayne Johnson', 51, 'CS402', 1, 'Male', 'dwaynejohnson@gmail.com', '2024-05-06 08:01:35', '2024-05-06 08:01:35'),
(13, 'Johnny Depp', 51, 'CS402', 1, 'Male', 'dwaynejohnson@gmail.com', '2024-05-06 08:02:25', '2024-05-06 08:02:25');

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
  MODIFY `staff_aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `react_school_student`
--
ALTER TABLE `react_school_student`
  MODIFY `student_aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `react_school_teacher`
--
ALTER TABLE `react_school_teacher`
  MODIFY `teacher_aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
