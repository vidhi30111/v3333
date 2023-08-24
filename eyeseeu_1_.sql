-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2023 at 06:54 AM
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
-- Database: `eyeseeu(1)`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(100) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` int(15) NOT NULL,
  `qty` int(15) NOT NULL,
  `des` varchar(300) NOT NULL,
  `proimages` varchar(255) NOT NULL,
  `power` double(11,0) NOT NULL,
  `TOI` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `pname`, `category`, `price`, `qty`, `des`, `proimages`, `power`, `TOI`) VALUES
(5, 'Black Specs', 'specs', 250, 5, 'Black Frame Glass For You', 'ae7bc4380e8bc407a2d934d96fe301eb931690782965.jpg', 0, '2023-07-31 11:26:05'),
(7, 'Silver Specs', 'specs', 300, 5, 'Specs with Silver Frame', '3d3a10fe5c011a9594a4421390355e783761691905523.jpg', 0, '2023-08-13 11:15:23'),
(8, 'Transparent Glass', 'specs', 600, 1, 'Transparent Glass specs', 'fd5c122f3e6cb1caea29a0903839d3b21011691906653.jpg', 0, '2023-08-13 11:34:13'),
(9, 'Whole Black Frame', 'specs', 200, 1, 'Whole black frame body', '9901fea8a5183176ae0d3355ffae87cc5451692104611.jpg', 0, '2023-08-15 18:33:31'),
(10, 'Round Frame', 'specs', 500, 3, 'Round Glass Frame', '343173f14b0477108d95edc02e32a3bc4071692104654.jpg', 0, '2023-08-15 18:34:14'),
(11, 'Copper', 'specs', 400, 3, 'Copper Frame Glasses ', '9bce464280f1f5f57894edaddb667cdc1351692104709.jpg', 0, '2023-08-15 18:35:09'),
(12, 'Slim Frame', 'specs', 300, 2, 'Slim Frame For you', '0ef0095eee28cbc50b5dca3a740d916a1341692104778.jpg', 0, '2023-08-15 18:36:18'),
(13, 'Mini', 'specs', 300, 2, 'Short Frame ', '7936d9c086f561c552a3b777b9613f0d5761692104836.jpg', 0, '2023-08-15 18:37:16'),
(14, 'Blacky', 'specs', 700, 7, 'Black Cooper ', '0718f4e1990386e2afc7756ff4d7157d3411692104911.jpg', 0, '2023-08-15 18:38:31'),
(15, 'Blue lens', 'lens', 400, 4, 'Blue Lenses for your Beautyful Eyes', 'a5302ff3fb64ca867148df4c3639d2ca3521692189141.png', 0, '2023-08-16 18:02:21'),
(16, 'Purple Lens', 'lens', 1800, 2, 'Purple Lens for you', 'e85133c27ceb1f33cbe1d118509128d37251692189196.png', 0, '2023-08-16 18:03:16'),
(17, 'Green Lens', 'lens', 800, 4, 'Green Contact Lenses for you', 'a25cdb498f5974919888d2deadeb87d72471692189247.png', 0, '2023-08-16 18:04:07'),
(18, 'Brown Lens', 'lens', 750, 4, 'Brown Lens ', 'f7d7448d6838ef9930105514c042f3655251692189298.png', 0, '2023-08-16 18:04:58'),
(19, 'Red Lens', 'lens', 900, 1, 'Bloody Red Lens', '0818f465e4b71de49cabeaef2f0a43ae5141692189333.png', 0, '2023-08-16 18:05:33'),
(20, 'Scary Darey', 'lens', 900, 3, 'White Lens to scare someone', 'ce23de12bb24d8db6c1f07eb67b530cb5821692189394.png', 0, '2023-08-16 18:06:34'),
(21, 'Deep Blue Lens', 'lens', 600, 6, 'Blue deep sea Lens Specially for you', 'a0010c3b0e24b8af6310d14cd046d27a9771692189465.jpg', 0, '2023-08-16 18:07:45'),
(22, 'Purple Lens', 'lens', 2500, 2, 'Purple Lens for the royalty', 'df28d48defd2eeafbbda5d1dd6b31c137101692189505.jpg', 0, '2023-08-16 18:08:25'),
(23, 'Chartreuse Lens', 'lens', 3000, 2, 'Chartreuse Lens specially customize for you', '69fd1e159c83ed613e09d470d9a9fa8c451692189854.png', 0, '2023-08-16 18:14:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `currdate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `email`, `username`, `password`, `address`, `currdate`) VALUES
(1, 'test@gmail.com', 'test', '202cb962ac59075b964b07152d234b70', '', '2023-07-21 18:00:40'),
(2, 'bhumi@gmail.com', 'bhumi', '827ccb0eea8a706c4c34a16891f84e7b', '', '2023-07-29 13:26:37'),
(3, 'xyz@gmail.com', 'xyz', '8d5e957f297893487bd98fa830fa6413', '', '2023-07-29 13:49:30'),
(4, 'priya@gmail.com', 'priya', '140f6969d5213fd0ece03148e62e461e', '', '2023-07-30 14:59:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
