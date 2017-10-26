-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2017 at 12:49 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `federel_bank`
--

CREATE TABLE `federel_bank` (
  `id` int(10) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `mob_no` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `balance` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `federel_bank`
--

INSERT INTO `federel_bank` (`id`, `user_name`, `mob_no`, `email`, `balance`) VALUES
(1, 'abc xyz', '2345678901', 'abcxyz@gmail.com', 10000),
(2, 'Able Varghese', '9869277528', 'vatjan1996@gmail.com', 10000),
(3, 'Yashashree Barhate', '9833691574', 'yashashreebarhate@gmail.com', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `states_bank`
--

CREATE TABLE `states_bank` (
  `id` int(10) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `mob_no` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `balance` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states_bank`
--

INSERT INTO `states_bank` (`id`, `user_name`, `mob_no`, `email`, `balance`) VALUES
(1, 'Able Varghese', '9869277528', 'vatjan1996@gmail.com', 10800),
(2, 'Yashashree Barhate', '9833691574', 'yashashreebarhate@gmail.com', 22300);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob_no` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `email`, `mob_no`, `password`) VALUES
(21, 'abc xyz', 'abcxyz@gmail.com', '2345678901', '$2y$10$oucr.CyhPGRKoS2rGS7kReVFE9/5BaWmTYFS3gECpSS'),
(17, 'arun', 'arunshaji@gmail.com', '9876543212', '$2y$10$lvXPEtGFEt9uUbc6Fxyo/e39EDByPQkYm2NILLO6ZWE'),
(16, 'abcd', 'abcd@gmail.com', '1234567890', '123456'),
(20, 'Yashashree Barhate', 'yashashreebarhate@gmail.com', '9833691574', 'victory'),
(19, 'Able Varghese', 'vatjan1996@gmail.com', '9869277528', 'able');

-- --------------------------------------------------------

--
-- Table structure for table `user_txn`
--

CREATE TABLE `user_txn` (
  `txn_id` int(50) NOT NULL,
  `user_id` int(10) NOT NULL,
  `from_mob` varchar(10) NOT NULL,
  `from_bank` varchar(20) NOT NULL,
  `to_mob` varchar(10) NOT NULL,
  `to_bank` varchar(20) NOT NULL,
  `txn_amt` int(25) NOT NULL,
  `txn_type` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_txn`
--

INSERT INTO `user_txn` (`txn_id`, `user_id`, `from_mob`, `from_bank`, `to_mob`, `to_bank`, `txn_amt`, `txn_type`) VALUES
(1, 1, '9869277528', '', '9869277528', '', 100, 'Deposit'),
(2, 1, '9869277528', '', '9869277528', '', 100, 'Deposit'),
(3, 1, '9869277528', '', '9869277528', '', 100, 'Deposit'),
(4, 1, '9869277528', '', '9869277528', '', 300, 'Deposit'),
(5, 1, '9869277528', '', '9869277528', '', 200, 'Deposit'),
(6, 1, '9869277528', '', '9869277528', '', 100, 'Withdraw'),
(7, 1, '9869277528', '', '9869277528', '', 200, 'Withdraw'),
(8, 2, '9833691574', '', '9869277528', '', 100, 'Transfer'),
(9, 2, '9833691574', '', '9869277528', '', 200, 'Transfer'),
(10, 19, '9869277528', 'states_bank', '9869277528', 'states_bank', 100, 'Deposit'),
(11, 19, '9869277528', 'states_bank', '9869277528', 'states_bank', 100, 'Withdraw'),
(12, 19, '9869277528', 'states_bank', '9833691574', 'states_bank', 100, 'Transfer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `federel_bank`
--
ALTER TABLE `federel_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states_bank`
--
ALTER TABLE `states_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_txn`
--
ALTER TABLE `user_txn`
  ADD PRIMARY KEY (`txn_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `federel_bank`
--
ALTER TABLE `federel_bank`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `states_bank`
--
ALTER TABLE `states_bank`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `user_txn`
--
ALTER TABLE `user_txn`
  MODIFY `txn_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
