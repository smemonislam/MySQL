-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2023 at 04:10 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `email`) VALUES
(1, 'Boy', 'George', 'george@gmail.com'),
(2, 'George', 'Michael', 'gm@gmail.com'),
(3, 'David', 'Bowie', 'david@gmail.com'),
(4, 'Blue', 'Steele', 'blue@gmail.com'),
(5, 'Bette', 'Davis', 'bette@aol.com');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_date` date DEFAULT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_date`, `amount`, `customer_id`) VALUES
(1, '2016-02-10', '99.99', 1),
(2, '2017-11-11', '35.50', 1),
(3, '2014-12-12', '800.67', 2),
(4, '2015-01-03', '12.50', 2),
(5, '1999-04-11', '450.25', 5);

-- --------------------------------------------------------

--
-- Table structure for table `reviewers`
--

CREATE TABLE `reviewers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviewers`
--

INSERT INTO `reviewers` (`id`, `first_name`, `last_name`) VALUES
(1, 'Thomas', 'Stoneman'),
(2, 'Wyatt', 'Skaggs'),
(3, 'Kimbra', 'Masters'),
(4, 'Domingo', 'Cortes'),
(5, 'Saiful', 'Islam'),
(6, 'Pinkie', 'Petit'),
(7, 'Marlon', 'Crafford');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `series_id` int(11) DEFAULT NULL,
  `reviewer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `rating`, `series_id`, `reviewer_id`) VALUES
(1, '8.0', 1, 1),
(2, '7.5', 1, 2),
(3, '8.5', 1, 3),
(4, '7.7', 1, 4),
(5, '8.9', 1, 5),
(6, '8.1', 2, 1),
(7, '6.0', 2, 4),
(8, '8.0', 2, 3),
(9, '8.4', 2, 6),
(10, '9.9', 2, 5),
(11, '7.0', 3, 1),
(12, '7.5', 3, 6),
(13, '8.0', 3, 4),
(14, '7.1', 3, 3),
(15, '8.0', 3, 5),
(16, '7.5', 4, 1),
(17, '7.8', 4, 3),
(18, '8.3', 4, 4),
(19, '7.6', 4, 2),
(20, '8.5', 4, 5),
(21, '9.5', 5, 1),
(22, '9.0', 5, 3),
(23, '9.1', 5, 4),
(24, '9.3', 5, 2),
(25, '9.9', 5, 5),
(26, '6.5', 6, 2),
(27, '7.8', 6, 3),
(28, '8.8', 6, 4),
(29, '8.4', 6, 2),
(30, '9.1', 6, 5),
(31, '9.1', 7, 2),
(32, '9.7', 7, 5),
(33, '8.5', 8, 4),
(34, '7.8', 8, 2),
(35, '8.8', 8, 6),
(36, '9.3', 8, 5),
(37, '5.5', 9, 2),
(38, '6.8', 9, 3),
(39, '5.8', 9, 4),
(40, '4.3', 9, 6),
(41, '4.5', 9, 5),
(42, '9.9', 10, 5),
(43, '8.0', 13, 3),
(44, '7.2', 13, 4),
(45, '8.5', 14, 2),
(46, '8.9', 14, 3),
(47, '8.9', 14, 4);

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE `series` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `released_year` year(4) DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`id`, `title`, `released_year`, `genre`) VALUES
(1, 'Archer', 2009, 'Animation'),
(2, 'Arrested Development', 2003, 'Comedy'),
(3, 'Bob\'s Burgers', 2011, 'Animation'),
(4, 'Bojack Horseman', 2014, 'Animation'),
(5, 'Breaking Bad', 2008, 'Drama'),
(6, 'Curb Your Enthusiasm', 2000, 'Comedy'),
(7, 'Fargo', 2014, 'Drama'),
(8, 'Freaks and Geeks', 1999, 'Comedy'),
(9, 'General Hospital', 1963, 'Drama'),
(10, 'Halt and Catch Fire', 2014, 'Drama'),
(11, 'Malcolm In The Middle', 2000, 'Comedy'),
(12, 'Pushing Daisies', 2007, 'Comedy'),
(13, 'Seinfeld', 1989, 'Comedy'),
(14, 'Stranger Things', 2016, 'Drama');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `reviewers`
--
ALTER TABLE `reviewers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `series_id` (`series_id`),
  ADD KEY `reviewer_id` (`reviewer_id`);

--
-- Indexes for table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reviewers`
--
ALTER TABLE `reviewers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `series`
--
ALTER TABLE `series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`series_id`) REFERENCES `series` (`id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`reviewer_id`) REFERENCES `reviewers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
