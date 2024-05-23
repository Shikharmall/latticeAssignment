-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2024 at 11:23 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` int(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'Apollo Hospitals', '2024-05-22', '2024-05-22'),
(2, 'Jawaharlal Nehru Medical College and Hospital', '2024-05-22', '2024-05-22'),
(3, 'Indira Gandhi Institute of Medical Sciences (IGIMS)', '2024-05-22', '2024-05-22'),
(4, 'AIIMS - All India Institute Of Medical Science', '2024-05-22', '2024-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `psychiatristId` int(255) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `address`, `email`, `phoneNumber`, `password`, `photo`, `psychiatristId`, `createdAt`, `updatedAt`) VALUES
(1, 'Kemu', 'hggt 56abgf abgty abgt', 'kemu@gmail.com', '8596785948', 'Kemu@2024', 'src\\uploads\\patientPhoto-1716401663470.jpg', 1, '2024-05-22', '2024-05-22'),
(2, 'Abhay', 'abcd 56abgf abgty abgt', 'abhay@gmail.com', '8596785948', 'Abhay@2024', 'src\\uploads\\patientPhoto-1716448126410.jpg', 1, '2024-05-23', '2024-05-23'),
(3, 'Abhay', 'abcd 56abgf abgty abgt', 'abhay@gmail.com', '8596785948', 'Abhay@2024', 'src\\uploads\\patientPhoto-1716451193374.jpg', 1, '2024-05-23', '2024-05-23'),
(4, 'Madan', 'abcd 56abgf abgty abgt', 'm@gmail.com', '85967859859', 'Madan@2024', 'src\\uploads\\patientPhoto-1716452234642.jpg', 2, '2024-05-23', '2024-05-23'),
(5, 'Madan', 'abcd 56abgf abgty abgt', 'm@gmail.com', '85967859859', 'Madan@2024', 'src\\uploads\\patientPhoto-1716452241430.jpg', 4, '2024-05-23', '2024-05-23'),
(6, 'Mohan', 'abcd 56abgf abgty abgt', 'ma@gmail.com', '85857859859', 'Mohan@2024', 'src\\uploads\\patientPhoto-1716452270145.jpg', 5, '2024-05-23', '2024-05-23'),
(7, 'Mohan', 'abcd 56abgf abgty abgt', 'ma@gmail.com', '85857859859', 'Mohan@2024', 'src\\uploads\\patientPhoto-1716452274844.jpg', 3, '2024-05-23', '2024-05-23'),
(8, 'Mohan', 'abcd 56abgf abgty abgt', 'ma@gmail.com', '85857859859', 'Mohan@2024', 'src\\uploads\\patientPhoto-1716455537661.jpg', 3, '2024-05-23', '2024-05-23'),
(9, 'Mohan', 'abcd 56abgf abgty abgt', 'ma@gmail.com', '85857859859', 'Mohan@2024', 'src\\uploads\\patientPhoto-1716455541982.jpg', 3, '2024-05-23', '2024-05-23'),
(10, 'Mohan', 'abcd 56abgf abgty abgt', 'ma@gmail.com', '85857859859', 'Mohan@2024', 'src\\uploads\\patientPhoto-1716455543222.jpg', 3, '2024-05-23', '2024-05-23'),
(11, 'Mohan', 'abcd 56abgf abgty abgt', 'ma@gmail.com', '85857859859', 'Mohan@2024', 'src\\uploads\\patientPhoto-1716455544450.jpg', 3, '2024-05-23', '2024-05-23'),
(12, 'Mohan', 'abcd 56abgf abgty abgt', 'ma@gmail.com', '85857859859', 'Mohan@2024', 'src\\uploads\\patientPhoto-1716455545348.jpg', 3, '2024-05-23', '2024-05-23'),
(13, 'Mohan', 'abcd 56abgf abgty abgt', 'ma@gmail.com', '85857859859', 'Mohan@2024', 'src\\uploads\\patientPhoto-1716455546580.jpg', 3, '2024-05-23', '2024-05-23'),
(14, 'Mohan', 'abcd 56abgf abgty abgt', 'ma@gmail.com', '85857859859', 'Mohan@2024', 'src\\uploads\\patientPhoto-1716455547768.jpg', 3, '2024-05-23', '2024-05-23'),
(15, 'Mohan', 'abcd 56abgf abgty abgt', 'ma@gmail.com', '85857859859', 'Mohan@2024', 'src\\uploads\\patientPhoto-1716455548585.jpg', 3, '2024-05-23', '2024-05-23'),
(16, 'Mohan', 'abcd 56abgf abgty abgt', 'ma@gmail.com', '85857859859', 'Mohan@2024', 'src\\uploads\\patientPhoto-1716455549986.jpg', 3, '2024-05-23', '2024-05-23'),
(17, 'Mohan', 'abcd 56abgf abgty abgt', 'ma@gmail.com', '85857859859', 'Mohan@2024', 'src\\uploads\\patientPhoto-1716455550770.jpg', 3, '2024-05-23', '2024-05-23'),
(18, 'Mohan', 'abcd 56abgf abgty abgt', 'ma@gmail.com', '85857859859', 'Mohan@2024', 'src\\uploads\\patientPhoto-1716455552037.jpg', 3, '2024-05-23', '2024-05-23'),
(19, 'Mohan', 'abcd 56abgf abgty abgt', 'ma@gmail.com', '85857859859', 'Mohan@2024', 'src\\uploads\\patientPhoto-1716455552830.jpg', 3, '2024-05-23', '2024-05-23'),
(20, 'Mohan', 'abcd 56abgf abgty abgt', 'ma@gmail.com', '85857859859', 'Mohan@2024', 'src\\uploads\\patientPhoto-1716455554436.jpg', 3, '2024-05-23', '2024-05-23'),
(21, 'Montu', 'dhifdh di fgf abgty abgt', 'montu@gmail.com', '2596879586', 'Montu@2024', 'src\\uploads\\patientPhoto-1716455591314.jpg', 4, '2024-05-23', '2024-05-23'),
(22, 'Montu', 'dhifdh di fgf abgty abgt', 'montu@gmail.com', '2596879586', 'Montu@2024', 'src\\uploads\\patientPhoto-1716455592622.jpg', 4, '2024-05-23', '2024-05-23'),
(23, 'Montu', 'dhifdh di fgf abgty abgt', 'montu@gmail.com', '2596879586', 'Montu@2024', 'src\\uploads\\patientPhoto-1716455594175.jpg', 4, '2024-05-23', '2024-05-23'),
(24, 'Montu', 'dhifdh di fgf abgty abgt', 'montu@gmail.com', '2596879586', 'Montu@2024', 'src\\uploads\\patientPhoto-1716455595051.jpg', 4, '2024-05-23', '2024-05-23'),
(25, 'Montu', 'dhifdh di fgf abgty abgt', 'montu@gmail.com', '2596879586', 'Montu@2024', 'src\\uploads\\patientPhoto-1716455596331.jpg', 4, '2024-05-23', '2024-05-23'),
(26, 'Montu', 'dhifdh di fgf abgty abgt', 'montu@gmail.com', '2596879586', 'Montu@2024', 'src\\uploads\\patientPhoto-1716455597199.jpg', 4, '2024-05-23', '2024-05-23'),
(27, 'Montu', 'dhifdh di fgf abgty abgt', 'montu@gmail.com', '2596879586', 'Montu@2024', 'src\\uploads\\patientPhoto-1716455598398.jpg', 4, '2024-05-23', '2024-05-23'),
(28, 'Montu', 'dhifdh di fgf abgty abgt', 'montu@gmail.com', '2596879586', 'Montu@2024', 'src\\uploads\\patientPhoto-1716455599260.jpg', 4, '2024-05-23', '2024-05-23'),
(29, 'Montu', 'dhifdh di fgf abgty abgt', 'montu@gmail.com', '2596879586', 'Montu@2024', 'src\\uploads\\patientPhoto-1716455600413.jpg', 4, '2024-05-23', '2024-05-23'),
(30, 'Montu', 'dhifdh di fgf abgty abgt', 'montu@gmail.com', '2596879586', 'Montu@2024', 'src\\uploads\\patientPhoto-1716455601253.jpg', 4, '2024-05-23', '2024-05-23'),
(31, 'Montu', 'dhifdh di fgf abgty abgt', 'montu@gmail.com', '2596879586', 'Montu@2024', 'src\\uploads\\patientPhoto-1716455602633.jpg', 4, '2024-05-23', '2024-05-23'),
(32, 'Montu', 'dhifdh di fgf abgty abgt', 'montu@gmail.com', '2596879586', 'Montu@2024', 'src\\uploads\\patientPhoto-1716455603885.jpg', 4, '2024-05-23', '2024-05-23'),
(33, 'Montu', 'dhifdh di fgf abgty abgt', 'montu@gmail.com', '2596879586', 'Montu@2024', 'src\\uploads\\patientPhoto-1716455607947.jpg', 4, '2024-05-23', '2024-05-23'),
(34, 'Montu', 'dhifdh di fgf abgty abgt', 'montu@gmail.com', '2596879586', 'Montu@2024', 'src\\uploads\\patientPhoto-1716455609914.jpg', 4, '2024-05-23', '2024-05-23'),
(35, 'Malinga', 'dhifdh di fgf abgty abgt', 'malinga@gmail.com', '2596879586', 'Malinga@2024', 'src\\uploads\\patientPhoto-1716455633568.jpg', 5, '2024-05-23', '2024-05-23'),
(36, 'Malinga', 'dhifdh di fgf abgty abgt', 'malinga@gmail.com', '2596879586', 'Malinga@2024', 'src\\uploads\\patientPhoto-1716455636415.jpg', 5, '2024-05-23', '2024-05-23'),
(37, 'Malinga', 'dhifdh di fgf abgty abgt', 'malinga@gmail.com', '2596879586', 'Malinga@2024', 'src\\uploads\\patientPhoto-1716455637638.jpg', 5, '2024-05-23', '2024-05-23'),
(38, 'Malinga', 'dhifdh di fgf abgty abgt', 'malinga@gmail.com', '2596879586', 'Malinga@2024', 'src\\uploads\\patientPhoto-1716455639044.jpg', 5, '2024-05-23', '2024-05-23'),
(39, 'Malinga', 'dhifdh di fgf abgty abgt', 'malinga@gmail.com', '2596879586', 'Malinga@2024', 'src\\uploads\\patientPhoto-1716455640332.jpg', 5, '2024-05-23', '2024-05-23'),
(40, 'Malinga', 'dhifdh di fgf abgty abgt', 'malinga@gmail.com', '2596879586', 'Malinga@2024', 'src\\uploads\\patientPhoto-1716455641608.jpg', 5, '2024-05-23', '2024-05-23'),
(41, 'Malinga', 'dhifdh di fgf abgty abgt', 'malinga@gmail.com', '2596879586', 'Malinga@2024', 'src\\uploads\\patientPhoto-1716455642967.jpg', 5, '2024-05-23', '2024-05-23'),
(42, 'Malinga', 'dhifdh di fgf abgty abgt', 'malinga@gmail.com', '2596879586', 'Malinga@2024', 'src\\uploads\\patientPhoto-1716455643807.jpg', 5, '2024-05-23', '2024-05-23'),
(43, 'Malinga', 'dhifdh di fgf abgty abgt', 'malinga@gmail.com', '2596879586', 'Malinga@2024', 'src\\uploads\\patientPhoto-1716455645392.jpg', 5, '2024-05-23', '2024-05-23'),
(44, 'Malinga', 'dhifdh di fgf abgty abgt', 'malinga@gmail.com', '2596879586', 'Malinga@2024', 'src\\uploads\\patientPhoto-1716455646312.jpg', 5, '2024-05-23', '2024-05-23'),
(45, 'Malinga', 'dhifdh di fgf abgty abgt', 'malinga@gmail.com', '2596879586', 'Malinga@2024', 'src\\uploads\\patientPhoto-1716455651190.jpg', 2, '2024-05-23', '2024-05-23'),
(46, 'Malinga', 'dhifdh di fgf abgty abgt', 'malinga@gmail.com', '2596879586', 'Malinga@2024', 'src\\uploads\\patientPhoto-1716455652042.jpg', 2, '2024-05-23', '2024-05-23'),
(47, 'Malinga', 'dhifdh di fgf abgty abgt', 'malinga@gmail.com', '2596879586', 'Malinga@2024', 'src\\uploads\\patientPhoto-1716455653088.jpg', 2, '2024-05-23', '2024-05-23'),
(48, 'Malinga', 'dhifdh di fgf abgty abgt', 'malinga@gmail.com', '2596879586', 'Malinga@2024', 'src\\uploads\\patientPhoto-1716455653939.jpg', 2, '2024-05-23', '2024-05-23'),
(49, 'Malinga', 'dhifdh di fgf abgty abgt', 'malinga@gmail.com', '2596879586', 'Malinga@2024', 'src\\uploads\\patientPhoto-1716455655185.jpg', 2, '2024-05-23', '2024-05-23'),
(50, 'Malinga', 'dhifdh di fgf abgty abgt', 'malinga@gmail.com', '2596879586', 'Malinga@2024', 'src\\uploads\\patientPhoto-1716455656015.jpg', 2, '2024-05-23', '2024-05-23'),
(51, 'Malinga', 'dhifdh di fgf abgty abgt', 'malinga@gmail.com', '2596879586', 'Malinga@2024', 'src\\uploads\\patientPhoto-1716455657279.jpg', 2, '2024-05-23', '2024-05-23'),
(52, 'Malinga', 'dhifdh di fgf abgty abgt', 'malinga@gmail.com', '2596879586', 'Malinga@2024', 'src\\uploads\\patientPhoto-1716455661677.jpg', 1, '2024-05-23', '2024-05-23'),
(53, 'Malinga', 'dhifdh di fgf abgty abgt', 'malinga@gmail.com', '2596879586', 'Malinga@2024', 'src\\uploads\\patientPhoto-1716455662529.jpg', 1, '2024-05-23', '2024-05-23'),
(54, 'Malinga', 'dhifdh di fgf abgty abgt', 'malinga@gmail.com', '2596879586', 'Malinga@2024', 'src\\uploads\\patientPhoto-1716455663848.jpg', 1, '2024-05-23', '2024-05-23'),
(55, 'Malinga', 'dhifdh di fgf abgty abgt', 'malinga@gmail.com', '2596879586', 'Malinga@2024', 'src\\uploads\\patientPhoto-1716455664662.jpg', 1, '2024-05-23', '2024-05-23'),
(56, 'Malinga', 'dhifdh di fgf abgty abgt', 'malinga@gmail.com', '2596879586', 'Malinga@2024', 'src\\uploads\\patientPhoto-1716455665507.jpg', 1, '2024-05-23', '2024-05-23'),
(57, 'Malinga', 'dhifdh di fgf abgty abgt', 'malinga@gmail.com', '2596879586', 'Malinga@2024', 'src\\uploads\\patientPhoto-1716455666421.jpg', 1, '2024-05-23', '2024-05-23'),
(58, 'Malinga', 'dhifdh di fgf abgty abgt', 'malinga@gmail.com', '2596879586', 'Malinga@2024', 'src\\uploads\\patientPhoto-1716455667274.jpg', 1, '2024-05-23', '2024-05-23'),
(59, 'Malinga', 'dhifdh di fgf abgty abgt', 'malinga@gmail.com', '2596879586', 'Malinga@2024', 'src\\uploads\\patientPhoto-1716455668478.jpg', 1, '2024-05-23', '2024-05-23'),
(60, 'Malinga', 'dhifdh di fgf abgty abgt', 'malinga@gmail.com', '2596879586', 'Malinga@2024', 'src\\uploads\\patientPhoto-1716455691468.jpg', 1, '2024-05-23', '2024-05-23'),
(61, 'Malinga', 'dhifdh di fgf abgty abgt', 'malinga@gmail.com', '2596879586', 'Malinga@2024', 'src\\uploads\\patientPhoto-1716455692716.jpg', 16, '2024-05-23', '2024-05-23');

-- --------------------------------------------------------

--
-- Table structure for table `psychiatrists`
--

CREATE TABLE `psychiatrists` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `hospitalId` int(255) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `psychiatrists`
--

INSERT INTO `psychiatrists` (`id`, `name`, `hospitalId`, `createdAt`, `updatedAt`) VALUES
(1, 'Dr. Shyam', 1, '2024-05-22', '2024-05-22'),
(2, 'Dr. Vinay', 2, '2024-05-23', '2024-05-23'),
(3, 'Dr. Ravi', 1, '2024-05-23', '2024-05-23'),
(4, 'Dr. Ram', 1, '2024-05-23', '2024-05-23'),
(5, 'Dr. Verma', 1, '2024-05-23', '2024-05-23'),
(6, 'Dr.Shayam', 1, '2024-05-23', '2024-05-23'),
(7, 'Dr. Dhoni', 1, '2024-05-23', '2024-05-23'),
(8, 'Dr.Raj', 2, '2024-05-23', '2024-05-23'),
(9, 'Dr.Pal', 5, '2024-05-23', '2024-05-23'),
(10, 'Dr. Prince', 2, '2024-05-23', '2024-05-23'),
(11, 'Dr. Pran', 2, '2024-05-23', '2024-05-23'),
(12, 'Dr. Pranjal', 2, '2024-05-23', '2024-05-23'),
(13, 'Dr. Pranjali', 2, '2024-05-23', '2024-05-23'),
(14, 'Dr. Anjali', 2, '2024-05-23', '2024-05-23'),
(15, 'Dr. Ranjali', 5, '2024-05-23', '2024-05-23'),
(16, 'Dr. Ranjal', 3, '2024-05-23', '2024-05-23'),
(17, 'Dr. kal', 3, '2024-05-23', '2024-05-23'),
(18, 'Dr. kaal', 3, '2024-05-23', '2024-05-23'),
(19, 'Dr. kaala', 3, '2024-05-23', '2024-05-23'),
(20, 'Dr. Aamla', 3, '2024-05-23', '2024-05-23'),
(21, 'Dr. Arjun', 4, '2024-05-23', '2024-05-23'),
(22, 'Dr. Pappu', 4, '2024-05-23', '2024-05-23'),
(23, 'Dr. Manju', 4, '2024-05-23', '2024-05-23'),
(24, 'Dr. Kanju', 4, '2024-05-23', '2024-05-23'),
(25, 'Dr. Nanju', 4, '2024-05-23', '2024-05-23'),
(26, 'Dr. Satwick', 5, '2024-05-23', '2024-05-23'),
(27, 'Dr. Satwicki', 5, '2024-05-23', '2024-05-23'),
(28, 'Dr. Khan', 5, '2024-05-23', '2024-05-23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `psychiatrists`
--
ALTER TABLE `psychiatrists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `psychiatrists`
--
ALTER TABLE `psychiatrists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
