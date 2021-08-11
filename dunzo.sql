-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2021 at 10:00 AM
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
-- Database: `dunzo`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `customer_address` varchar(255) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `phone` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `customer_name`, `city_id`, `customer_address`, `contact_person`, `email`, `phone`) VALUES
(1, 'DW', 1, 'D15A', 'ES', 'email@es.com', '1245'),
(2, 'D4W', 1, 'D1455A', NULL, 'emai5l@es.com', '1245');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `invoice_number` varchar(255) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  `total_price` decimal(8,0) DEFAULT NULL,
  `time_issued` varchar(255) DEFAULT NULL,
  `time_due` varchar(255) DEFAULT NULL,
  `time_paid` varchar(255) DEFAULT NULL,
  `time_canceled` varchar(255) DEFAULT NULL,
  `time_refunded` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `invoice_number`, `customer_id`, `user_account_id`, `total_price`, `time_issued`, `time_due`, `time_paid`, `time_canceled`, `time_refunded`) VALUES
(1, 'njsdnsdbyhsdjfbejds', 7, 4, '3434', '7/45/424 65pm', '74/45/25 Pm/am', '556', NULL, NULL),
(2, 'njsdjudjkfdjkfdjnsdbyhsdjfbejds', 75, 454, '334', '7/45/42dmjd4 65pm', '74/4455/25 /am', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_item`
--

CREATE TABLE `invoice_item` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` decimal(8,0) DEFAULT NULL,
  `price` decimal(8,0) DEFAULT NULL,
  `line_total_price` decimal(8,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice_item`
--

INSERT INTO `invoice_item` (`id`, `invoice_id`, `product_id`, `quantity`, `price`, `line_total_price`) VALUES
(1, 1, 1, '20', '65', '1235'),
(2, 7, 2, '230', '565', '136235');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `sku` varchar(32) DEFAULT NULL,
  `product_name` varchar(128) DEFAULT NULL,
  `product_description` text DEFAULT NULL,
  `current_price` decimal(8,0) DEFAULT NULL,
  `quantity_in_stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `sku`, `product_name`, `product_description`, `current_price`, `quantity_in_stock`) VALUES
(1, '6565', 'GaoT djd', 'dfjhkfdjkn', '655', 12),
(2, '65465', 'jknfjdn djd', 'dfjhkfdjfdndffdkn', '6554', 124);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_item`
--
ALTER TABLE `invoice_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
