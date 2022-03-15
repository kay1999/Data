-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2022 at 04:25 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(66, 33, 14, 1),
(67, 33, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(10, 'Men', 'Men'),
(11, 'Women', 'Women'),
(12, 'Other', 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(35, 20, 1, 1),
(36, 20, 3, 1),
(37, 20, 11, 1),
(38, 20, 14, 1),
(39, 20, 5, 1),
(40, 20, 4, 1),
(41, 21, 4, 1),
(42, 21, 14, 1),
(43, 21, 7, 1),
(44, 22, 1, 1),
(45, 22, 10, 2),
(46, 22, 7, 4),
(47, 23, 7, 1),
(48, 24, 14, 3),
(49, 24, 7, 1),
(50, 24, 1, 1),
(51, 25, 7, 1),
(52, 25, 14, 3),
(53, 25, 1, 2),
(54, 26, 7, 1),
(55, 27, 14, 1),
(56, 27, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 10, 'Products1', '<p>WHITE HANGING HEART T-LIGHT HOLDER</p>\r\n', 'Products1', 39.89, 'im1.jpeg', '2022-03-08', 23),
(2, 11, 'Products2', '<p>WHITE METAL LANTERN</p>\r\n', 'Products2', 51.99, 'im2.jpeg', '2022-03-07', 6),
(3, 12, 'Products3', '<p>CREAM CUPID HEARTS COAT HANGER</p>\r\n', 'Products3', 40.02, 'im3.jpeg', '2022-03-07', 16),
(4, 10, 'Products4', '<p>KNITTED UNION FLAG HOT WATER BOTTLE</p>\r\n', 'Products4', 50.31, 'im4.jpeg', '2022-03-07', 11),
(5, 10, 'Products5', '<p>RED WOOLLY HOTTIE WHITE HEART.</p>\r\n', 'Products5', 46.26, 'im5.jpeg', '2022-03-08', 5),
(6, 12, 'Products7', '<p>SET 7 BABUSHKA NESTING BOXES</p>\r\n', 'Products7', 55.99, 'im6.jpeg', '2022-03-04', 1),
(7, 10, 'Products9', '<p>GLASS STAR FROSTED T-LIGHT HOLDER</p>\r\n', 'Products9', 41.12, 'im7.jpeg', '2022-03-08', 17),
(8, 11, 'Products8', '<p>HAND WARMER UNION JACK</p>\r\n', 'Products8', 46.19, 'im8.jpeg', '2022-03-08', 1),
(9, 11, 'Products6', '', 'products6', 21.4, 'im9.jpeg', '2022-03-08', 7),
(10, 12, 'Products10', '<p>ASSORTED COLOUR BIRD ORNAMENT</p>\r\n', 'Products10', 45.23, 'im10.jpeg', '2022-03-08', 6),
(11, 10, 'Products11', '<p>POPPY&#39;S PLAYHOUSE BEDROOM</p>\r\n', 'Products11', 45, 'im11.jpeg', '2022-03-07', 4),
(12, 11, 'Products12', '<p>POPPY&#39;S PLAYHOUSE KITCHEN</p>\r\n', 'Products12', 7.99, 'im12.jpeg', '2022-03-07', 1),
(13, 11, 'Products13', '<p>FELTCRAFT PRINCESS CHARLOTTE DOLL</p>\r\n', 'Products13', 9.99, 'im13.jpeg', '2022-03-07', 25),
(14, 12, 'Products14', '<p>FELTCRAFT PRINCESS CHARLOTTE DOLL</p>', 'Products14', 9.99, 'im14.jpeg', '2022-03-08', 19);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(20, 30, 'PAYID-MIREN3I74V6478435539051F', '2022-03-04'),
(21, 31, 'PAYID-MITDBBQ70B49441X7618433N', '2022-03-07'),
(22, 30, 'PAYID-MITDVLI9X15138407632510D', '2022-03-07'),
(23, 30, 'PAYID-MITNX7Y40A9241033801204B', '2022-03-08'),
(24, 30, 'PAYID-MITOSVQ5C873123864120317', '2022-03-08'),
(25, 30, 'PAYID-MITOYAA3AS17746JY6180525', '2022-03-08'),
(26, 31, 'PAYID-MITO3JA0AS417272S0560136', '2022-03-08'),
(27, 30, 'PAYID-MIV77NI8RV757616A033864X', '2022-03-12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `created_on`) VALUES
(1, 'admin@email.com', '$2y$10$PRRbTRugM9K31Q.Pw0ziyeaXPMlEdZC5dHjTSTqwiAC8rraBZE1O6', 1, 'Master', 'Admin', '', '', 'avatar5.png', '2022-03-01'),
(30, 'user1@email.com', '$2y$10$nFmP2N4.fwduMQQ.bqBOXuz96Bkkh008DMSzoV/YN7/KIhuXxrkQ6', 0, 'user', '1', '', '', 'avatar.png', '2022-03-04'),
(31, 'user2@email.com', '$2y$10$a7JPSJYPrrrfBYt2nMdKIO4XOeSPMxNz/VwgVSj5Agt9SklAAqwJe', 0, 'user', '2', '', '', 'avatar2.png', '2022-03-04'),
(32, 'user3@email.com', '$2y$10$Lh7d2khDHnaIYjMG0SM0T.xrLjql2CSFgYgT71VrWjsoaT0jJJwZq', 0, 'user', '3', '', '', 'avatar3.png', '2022-03-07'),
(33, 'user4@email.com', '$2y$10$nLIcGexQ30HTQ3VaqZf18uJLRH08ABG4m.rB0EvA547AkSXwsgaAe', 0, 'user', '4', '', '', 'avatar04.png', '2022-03-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
