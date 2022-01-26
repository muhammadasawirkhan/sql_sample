-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2022 at 11:36 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `osc_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(100) NOT NULL,
  `prod_id` int(100) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `date_created` varchar(100) NOT NULL,
  `quantity` int(30) NOT NULL,
  `customer_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `date_created` varchar(20) DEFAULT NULL,
  `block_category` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `category_name`, `date_created`, `block_category`) VALUES
(4, 'Laptop', '26-11-2021', '0');

-- --------------------------------------------------------

--
-- Table structure for table `order1`
--

CREATE TABLE `order1` (
  `order_id` int(50) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `date_created` varchar(100) NOT NULL,
  `process_order` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order1`
--

INSERT INTO `order1` (`order_id`, `customer_email`, `date_created`, `process_order`) VALUES
(1, 'alicustomer@gmail.com', '04-12-2021', '1'),
(2, 'alicustomer@gmail.com', '04-12-2021', '0'),
(3, 'alicustomer@gmail.com', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(50) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `date_created` varchar(100) NOT NULL,
  `prod_id` int(50) NOT NULL,
  `quantity` int(10) NOT NULL,
  `order_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`order_detail_id`, `customer_email`, `date_created`, `prod_id`, `quantity`, `order_id`) VALUES
(13, 'alicustomer@gmail.com', '04-12-2021', 3, 1, 3),
(14, 'alicustomer@gmail.com', '04-12-2021', 4, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `prod_id` int(10) NOT NULL,
  `prod_name` varchar(20) NOT NULL,
  `prod_desc` varchar(255) NOT NULL,
  `prod_small_image` varchar(255) NOT NULL,
  `prod_large_image` varchar(255) NOT NULL,
  `prod_purchase_price` varchar(100) NOT NULL,
  `prod_sales_price` varchar(100) NOT NULL,
  `prod_stock` int(10) NOT NULL,
  `date_created` varchar(20) NOT NULL,
  `block_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prod_id`, `prod_name`, `prod_desc`, `prod_small_image`, `prod_large_image`, `prod_purchase_price`, `prod_sales_price`, `prod_stock`, `date_created`, `block_product`) VALUES
(3, 'Dell1', 'Dell Computer description1', 'text background.png', 'avatar3.png', '1001', '1101', 201, '01-12-2021', 0),
(4, 'Samsung Mobile', 'Description of mobile', 'logo.png', 'student.jpg', '100', '150', 50, '01-12-2021', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email` varchar(255) NOT NULL,
  `name` char(30) DEFAULT NULL,
  `password` varchar(12) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `block_user` char(1) DEFAULT NULL,
  `date_created` varchar(10) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `billing_address` varchar(255) NOT NULL,
  `shipping_address` varchar(255) NOT NULL,
  `card_number` varchar(50) NOT NULL,
  `pin` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `name`, `password`, `picture`, `block_user`, `date_created`, `phone`, `billing_address`, `shipping_address`, `card_number`, `pin`) VALUES
('admin@gmail.com', 'Asawir2', 'b', 'student.jpg', '0', '13-11-2021', '', '', '', '', ''),
('asawir@yahoo.com', 'Asawir', 'abc', 'student.jpg', '0', '13-11-2021', '', '', '', '', ''),
('nazie@gmail.com', 'Nazir', 'abcd', 'agt wdd.png', '1', '13-11-2021', '', '', '', '', ''),
('alicustomer@gmail.com', 'Ali Customer', 'a', 'newfilename', '0', '03-12-2021', '+92 333 12345678', 'AGT Plaza, Sadder Rawalpindi, Cantt.', 'AGT Plaza, Sadder Rawalpindi, Cantt.', '1', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `order1`
--
ALTER TABLE `order1`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prod_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order1`
--
ALTER TABLE `order1`
  MODIFY `order_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `prod_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
