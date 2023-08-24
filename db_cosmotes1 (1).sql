-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2023 at 06:48 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cosmotes1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL,
  `admiin_pic` varchar(200) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admiin_pic`, `password`) VALUES
(10, '', '678'),
(123, 'c483f6ce851c9ecd9fb835ff7551737c3791692840652.jpg', '456');

-- --------------------------------------------------------

--
-- Table structure for table `beauty_advice`
--

CREATE TABLE `beauty_advice` (
  `ba_id` int(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `des` varchar(5000) NOT NULL,
  `bimg` varchar(200) NOT NULL,
  `curdate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `beauty_advice`
--

INSERT INTO `beauty_advice` (`ba_id`, `title`, `des`, `bimg`, `curdate`) VALUES
(1, 'SKIN', 'Garden-fresh ingredients, leveraged with cutting-edge technology to powerpack the best of skincare —the K-Beauty phenomenon is far from waning. With result-oriented, multi-step regimens forming the essence, this global beauty industry leader perpetuates upholding skin health and healing vis-a-vis education. Treating concerns like dehydration, textured skin (due to fine lines, acne) or other afflic', 'ced53a9a10991dab1e3e66fa57afd43f5211692550188.jpg', '2023-08-20 22:19:48'),
(2, 'How To Give Yourself A Face Massage For Glowing Skin', 'A facial massage has more benefits than you can think of. It not only helps release the built-up tension, but also, reduces the appearance of wrinkles and fine lines, improves blood circulation, tightens skin and leaves your face with a natural glow. Incorporating a regular facial massage in your daily skincare regimen will help maximise the power of your skincare products. Here are 5 effective te', '813901f225ee5889877bb71b861a705e331692551093.jpg', '2023-08-20 22:34:53'),
(3, '5 PERSONAL GROOMING TIPS EVERY WOMAN SHOULD KNOW', '1. Keep Body Odour AwayBody odour and smelly underarms can be embarrassing and uncomfortable, especially when you are at a social event or out with your friends or family. Body odour can be caused by bacterial growth and the presence of sweat on your skin. Therefore, maintaining good hygiene is vital. For starters, you can use a mild soap or purifying shower gel to eliminate dirt, germs and help \r\n5. Pay attention To Your FeetYour feet are as crucial as your face when it comes to your overall appearance. So while you look after your skin, include your feet too. Callus on your heels can make you appear scruffy, as can unkempt toenails and dry feet. Indulge in nourishing pedicures weekly to get rid of all the dirt and germs from your feet, and apply moisturisers to keep them soft and supple. \r\n5. Pay attention To Your FeetYour feet are as crucial as your face when it comes to your overall appearance. So while you look after your skin, include your feet too. Callus on your heels can make ', 'b46002c8ba525e84a8dfc5966d361c165881692551231.jpg', '2023-08-20 22:37:11'),
(4, 'How To Give Yourself A Face Massage For Glowing Skin', 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq', 'cc170a84dc6771a09ee33a7942930e0a4331692624341.jpg', '2023-08-21 18:55:41'),
(5, '5 PERSONAL GROOMING TIPS EVERY WOMAN SHOULD KNOW', 'wadDAD', 'a5c6bbd28f6be3897323878023cc9cc78091692624825.jpg', '2023-08-21 19:03:45');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category` varchar(50) NOT NULL,
  `catimg` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(50) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `price` int(20) NOT NULL,
  `proimg` varchar(255) NOT NULL,
  `qty` int(20) NOT NULL,
  `des` varchar(200) NOT NULL,
  `TOI` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `pname`, `category`, `price`, `proimg`, `qty`, `des`, `TOI`) VALUES
(9, 'Face Wash', 'skincare', 400, '55e73cf471b3b53c63e93c65d4f615e59241690782222.jpg', 20, 'Face washes are designed to remove impurities, germs, dirt and makeup that can irritate the skin. ', '0000-00-00 00:00:00'),
(10, 'Face Serum', 'skincare', 850, '4bf52313580eb0d2a2cd2cd2e1f83cd95381690782367.jpg', 5, 'Face serums help shrink pores and increase cell turnover further leading to the minimisation of large pores.', '0000-00-00 00:00:00'),
(11, 'Toner', 'skincare', 300, 'bb1f7f9274dc4d89a90748f8e76d0ddd811690782439.jpg', 9, 'Toner infuses skin with nutrients,  brightens tone, minimizes the appearance of enlarged pores, and boosts hydration.', '0000-00-00 00:00:00'),
(12, 'Face Pack', 'skincare', 100, 'b484857901742afc9e9d4e9853596ce29481690782506.jpg', 25, 'A face pack will force out stubborn grime and dirt from the deeper layers of your skin.', '0000-00-00 00:00:00'),
(13, 'Lip Care', 'skincare', 200, '99b47914fe223d8687999758f5fe6fea2331691669079.jpg', 10, 'One of the biggest benefits of using lip balm is that it helps soothe and heal all those cracks in your pout.', '0000-00-00 00:00:00'),
(15, 'Body Wash', 'body', 500, 'a65876ddff81b1a225c1887ab7257b695471692517263.jpg', 30, 'Body wash usage seems pretty straightforward: hop in the shower, lather the product across your skin, then rinse off.', '0000-00-00 00:00:00'),
(16, 'Toner', 'skincare', 400, 'bb1f7f9274dc4d89a90748f8e76d0ddd3481692518257.jpg', 20, 'samn kfadddddddddddddddddddddd', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(20) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `address` varchar(200) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `address`, `datetime`) VALUES
(4, 'helo', 'helo@co.in', '250cf8b51c773f3f8dc8b4be867a9a02', '', '2023-07-21 18:19:25'),
(5, 'vidhi1', 'vidhi@gmail.com', '508df4cb2f4d8f80519256258cfb975f', '', '2023-07-21 18:52:00'),
(6, 'ss', 'ss@gmail.com', '202cb962ac59075b964b07152d234b70', '', '2023-07-21 18:55:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `beauty_advice`
--
ALTER TABLE `beauty_advice`
  ADD PRIMARY KEY (`ba_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category`) USING BTREE;

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beauty_advice`
--
ALTER TABLE `beauty_advice`
  MODIFY `ba_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
