-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2023 at 01:22 AM
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
-- Database: `project2`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `item_name` varchar(100) NOT NULL,
  `quantity` int(50) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`item_name`, `quantity`, `price`) VALUES
('Toshiba Dynabook Satellite Pro L50-G-193', 1, 699.99),
('ASUS Vivobook15 X515JA', 1, 610),
('Samsung Galaxy S23', 1, 1339.99);

-- --------------------------------------------------------

--
-- Table structure for table `customerdetail`
--

CREATE TABLE `customerdetail` (
  `Email` varchar(100) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `member_or_not` varchar(50) NOT NULL,
  `customerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customerdetail`
--

INSERT INTO `customerdetail` (`Email`, `Password`, `member_or_not`, `customerID`) VALUES
('01@gmail.com', 'Password01', '', 1),
('02@gmail.com', 'Password01', '', 2),
('03@gmail.com', 'Password01', '', 3),
('hychow@gamil.com', 'Password05', '', 8);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `quantity`, `image_url`) VALUES
(1, 'Toshiba Dynabook Satellite Pro L50-G-193', 'Core i7-10510U 8GB 256GB SSD 15.6 Inch Windows 10 Pro Laptop', 699.00, 10, 'laptop1.jpg'),
(2, 'ASUS Vivobook15 X515JA', 'Intel Core i5 - 256GB SSD', 610.00, 10, 'laptop2.jpg'),
(3, 'LENOVO IDEAPAD 17', 'Intel 6405U 8GB 512GB SSD 17.3-INCH WINDOWS 10 LAPTOP', 549.00, 10, 'laptop3.jpg'),
(4, 'Samsung NP930QED-KH1UK', 'Galaxy Book2 Pro 360 13.3\' i7 512GB 16GB Laptop Burgundy', 899.00, 10, 'laptop4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

CREATE TABLE `query` (
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `query`
--

INSERT INTO `query` (`name`, `email`, `message`) VALUES
('Lok Him Wong', 'lokhimwong111@gmail.com', 'bit'),
('gg', 'gg@gmail.com', 'fsgfsg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customerdetail`
--
ALTER TABLE `customerdetail`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customerdetail`
--
ALTER TABLE `customerdetail`
  MODIFY `customerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
