-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2021 at 10:12 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loginsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `donation_id` int(40) NOT NULL,
  `donation_food_type` varchar(100) NOT NULL,
  `people_qty` varchar(100) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `donor_name` varchar(100) NOT NULL,
  `donation_date` date NOT NULL,
  `pickup_date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`donation_id`, `donation_food_type`, `people_qty`, `address`, `donor_name`, `donation_date`, `pickup_date_time`) VALUES
(1, 'Veg', '20', 'Ahmedabad', 'demo', '2021-10-20', '2021-10-19 10:03:32'),
(2, 'veg', '50', 'Ahmedabad', 'demo2', '2021-10-20', '2021-10-20 09:53:00'),
(3, 'veg', '100', 'ahmedabad', 'demo3', '2021-10-20', '2021-10-20 09:54:00'),
(4, 'veg', '30', 'Ahmedabad', 'smit', '2021-10-20', '2021-10-20 10:21:00'),
(5, 'veg', '60', 'Ahmedabad', 'dm4', '2021-10-20', '2021-10-20 11:12:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `create_datetime`) VALUES
(1, 'demo', 'demo@123', '698d51a19d8a121ce581499d7b701668', '2021-10-19 23:35:37'),
(5, 'varun', 'varun', '121', '2021-10-19 23:29:01'),
(6, 'se', 'se@gmail.com', '698d51a19d8a121ce581499d7b701668', '2021-10-20 04:27:34'),
(7, 'Smit', 'smit@gmail.com', '698d51a19d8a121ce581499d7b701668', '2021-10-20 06:50:58'),
(8, 'dem4', 'demo4@gmail.com', '698d51a19d8a121ce581499d7b701668', '2021-10-20 07:41:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`donation_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `donation_id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
