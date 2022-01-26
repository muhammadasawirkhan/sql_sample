-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2022 at 11:37 AM
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
-- Database: `user_profile`
--

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
  `date_created` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `name`, `password`, `picture`, `block_user`, `date_created`) VALUES
('admin@gmail.com', 'Asawir2', 'b', 'student.jpg', '0', '13-11-2021'),
('asawir@yahoo.com', 'Asawir', 'abc', 'student.jpg', '1', '13-11-2021'),
('Asawirkhanjaddon@gmail.com', 'Asawir khan jadoon', '123456789101', 'markus-spiske-qjnAnF0jIGk-unsplash-scaled.jpg', '0', '20-11-2021'),
('Jahanzeb@gmail.com', 'Jahanzeb', '12345', 'logo.jpg', '0', '22-11-2021'),
('nazie@gmail.com', 'Nazir', 'abcd', 'agt wdd.png', '1', '13-11-2021'),
('saleem@gmail.com', 'saleem', '1234', 'tank.png', '0', '21-11-2021'),
('Sarib@gmail.com', 'Sarib', 'sarib', 'eb23a563-9edb-4911-a740-caf9acb4f870.jpg', '0', '19-11-2021');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
