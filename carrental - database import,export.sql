-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2022 at 05:52 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `id` int(5) NOT NULL,
  `carName` varchar(50) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `transmission` varchar(50) DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `rateHour` decimal(9,2) DEFAULT NULL,
  `passenger` int(11) DEFAULT NULL,
  `carStatus` varchar(50) DEFAULT NULL,
  `createdDateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`id`, `carName`, `brand`, `transmission`, `plate`, `rateHour`, `passenger`, `carStatus`, `createdDateTime`) VALUES
(1, 'Scirocco 1.4 TSI', 'Volkswagen', 'Automatic', 'UMT1010', '50.00', 4, 'Available', '2022-07-09 23:13:13'),
(6, 'Myvi', 'Perodua', 'Automatic', 'ABC1234', '7.00', 4, 'Unavailable', '2022-07-09 23:47:20'),
(7, 'Viva', 'Perodua', 'Automatic', 'BCD7890', '7.00', 5, 'Available', '2022-07-09 23:47:55'),
(8, 'Axia', 'Perodua', 'Automatic', 'TBG8008', '7.00', 4, 'Under Maintenance', '2022-07-09 23:49:02'),
(10000, 'Saga Iswara', 'Proton', 'Manual', 'W786C', '6.00', 5, 'Available', '2022-07-09 23:50:56');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `rolename` varchar(50) DEFAULT NULL,
  `descs` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `rolename`, `descs`) VALUES
(1, 'Admin', 'Manage users, cars, booking details'),
(2, 'Customer', 'Create reservations for car');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `userNickName` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `phoneNo` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `roleid` int(11) DEFAULT 2,
  `createdDatetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `userName`, `userNickName`, `age`, `phoneNo`, `gender`, `email`, `pass`, `roleid`, `createdDatetime`) VALUES
(10000, 'Admin', NULL, NULL, NULL, NULL, 'admin@mail.com', '1234', 1, '2022-07-09 18:58:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plate` (`plate`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `FK_roleid` (`roleid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10001;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10002;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_roleid` FOREIGN KEY (`roleid`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
