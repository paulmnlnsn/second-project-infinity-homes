-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql101.epizy.com
-- Generation Time: Jun 15, 2022 at 06:14 AM
-- Server version: 10.3.27-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_31599685_ecomm`
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
(14, 14, 36, 2),
(26, 13, 74, 2),
(27, 13, 73, 1);

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
(34, 'Living Room', 'living-room'),
(35, 'Dining Room', 'dining-room'),
(36, 'Bedroom', 'bedroom'),
(37, 'Office', 'office'),
(38, 'Others', 'others');

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
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `photo`, `date_view`, `counter`) VALUES
(72, 34, 'Red Sofa Set 1', '', 'red-sofa-set-1', 'red-sofa-set-1_1654580520.png', '2022-06-07', 2),
(73, 34, 'Red Solo Sofa 1', '', 'red-solo-sofa-1', 'red-solo-sofa-1_1654580553.png', '2022-05-30', 6),
(75, 34, 'Gray Sofa Set', '', 'gray-sofa-set', 'gray-sofa-set_1654580352.png', '2022-06-07', 2),
(76, 34, 'Gray Solo Sofa', '', 'gray-solo-sofa', 'gray-solo-sofa_1654580363.png', '0000-00-00', 0),
(77, 34, 'L Sofa Set', '', 'l-sofa-set', 'l-sofa-set_1654580427.png', '2022-06-07', 1),
(78, 34, 'L Gray Sofa Set 1', '', 'l-gray-sofa-set-1', 'l-gray-sofa-set-1_1654580391.png', '0000-00-00', 0),
(79, 34, 'L Blue Sofa Set', '', 'l-blue-sofa-set', 'l-blue-sofa-set_1654580373.png', '2022-06-07', 1),
(80, 34, 'Wood Sofa Set 1', '', 'wood-sofa-set-1', 'wood-sofa-set-1_1654580642.png', '0000-00-00', 0),
(81, 34, 'Wood Sofa Set 2', '', 'wood-sofa-set-2', 'wood-sofa-set-2_1654580658.png', '2022-06-07', 1),
(82, 34, 'Wood Sofa Set 3 w/ Cushion', '', 'wood-sofa-set-3-w-cushion', 'wood-sofa-set-3-w-cushion_1654580711.png', '0000-00-00', 0),
(84, 36, 'Blue Double Deck Bed', '', 'blue-double-deck-bed', 'blue-double-deck-bed_1654580321.png', '0000-00-00', 0),
(85, 35, 'Minimal Dining Table Set', '', 'minimal-dining-table-set', 'minimal-dining-table-set_1654580456.png', '2022-06-08', 1),
(86, 38, 'Long Wooden Bench', '', 'long-wooden-bench', 'long-wooden-bench_1654580440.png', '0000-00-00', 0),
(87, 36, 'Bed Frame', '', 'bed-frame', 'bed-frame_1654577360.png', '2022-06-07', 1),
(88, 36, 'Red Bed 1', '', 'red-bed-1', 'red-bed-1_1654580498.png', '0000-00-00', 0),
(89, 36, 'Red/White Bed', '', 'red-white-bed', 'red-white-bed_1654580587.png', '0000-00-00', 0),
(90, 38, 'Outdoor Long Wooden Chair 1', '', 'outdoor-long-wooden-chair-1', 'outdoor-long-wooden-chair-1_1654580480.png', '0000-00-00', 0),
(91, 38, 'Outdoor Long Wooden Chair 2', '', 'outdoor-long-wooden-chair-2', 'outdoor-long-wooden-chair-2_1654580487.png', '0000-00-00', 0),
(92, 38, 'Wooden Rocking Chair', '', 'wooden-rocking-chair', 'wooden-rocking-chair_1654580844.png', '0000-00-00', 0),
(93, 38, 'Outdoor Chair ', '', 'outdoor-chair', 'outdoor-chair_1654580468.png', '0000-00-00', 0),
(94, 34, 'Wood Sofa Chair ', '', 'wood-sofa-chair', 'wood-sofa-chair_1654580624.png', '2022-06-07', 1),
(95, 36, 'Wooden Bedroom Dresser', '', 'wooden-bedroom-dresser', 'wooden-bedroom-dresser_1654580781.png', '2022-06-06', 1),
(96, 34, 'Big Black Sofa Set', '', 'big-black-sofa-set', 'big-black-sofa-set_1654580294.png', '0000-00-00', 0),
(97, 37, 'Ergonomic Office Chair', '', 'ergonomic-office-chair', 'ergonomic-office-chair_1654580338.png', '0000-00-00', 0),
(98, 34, 'Wood Sofa Set 3', '', 'wood-sofa-set-3', 'wood-sofa-set-3_1654580678.png', '2022-06-06', 1),
(99, 37, 'Black Office Desk', '', 'black-office-desk', 'black-office-desk_1654580305.png', '0000-00-00', 0),
(100, 37, 'Stainless Steel Waiting Office Chairs', '', 'stainless-steel-waiting-office-chairs', 'stainless-steel-waiting-office-chairs_1654580602.png', '0000-00-00', 0),
(101, 34, 'L Gray Sofa Set 2', '', 'l-gray-sofa-set-2', 'l-gray-sofa-set-2_1654580410.png', '2022-06-06', 1),
(102, 34, 'Beige L Sofa Set', '', 'beige-l-sofa-set', 'beige-l-sofa-set_1654580281.png', '0000-00-00', 0),
(103, 34, 'Red Sofa Set 2', '', 'red-sofa-set-2', 'red-sofa-set-2_1654580536.png', '0000-00-00', 0),
(104, 34, 'Red Solo Sofa 2', '', 'red-solo-sofa-2', 'red-solo-sofa-2_1654580573.png', '2022-06-07', 1),
(105, 36, 'Beige Bed', '', 'beige-bed', 'beige-bed_1654580253.png', '2022-06-07', 1),
(106, 35, 'Wooden Dining Set 1', '', 'wooden-dining-set-1', 'wooden-dining-set-1_1654580802.png', '0000-00-00', 0),
(107, 35, 'Wooden Dining Set 2', '', 'wooden-dining-set-2', 'wooden-dining-set-2_1654580812.png', '0000-00-00', 0),
(108, 35, 'Wooden Dining Set 3', '', 'wooden-dining-set-3', 'wooden-dining-set-3_1654580823.png', '2022-06-09', 3),
(109, 36, 'Wooden Bedroom Cabinet 1', '', 'wooden-bedroom-cabinet-1', 'wooden-bedroom-cabinet-1_1654580729.png', '0000-00-00', 0),
(110, 36, 'Wooden Bedroom Cabinet 2', '', 'wooden-bedroom-cabinet-2', 'wooden-bedroom-cabinet-2_1654580740.png', '0000-00-00', 0),
(111, 36, 'Wooden Bedroom Cabinet 3', '', 'wooden-bedroom-cabinet-3', 'wooden-bedroom-cabinet-3_1654580752.png', '0000-00-00', 0),
(112, 36, 'Wooden Bedroom Cabinet 4 (White)', '', 'wooden-bedroom-cabinet-4-white', 'wooden-bedroom-cabinet-4-white_1654580761.png', '2022-06-09', 1),
(113, 36, 'Wooden Bedroom Cabinet 5', '', 'wooden-bedroom-cabinet-5', 'wooden-bedroom-cabinet-5_1654580769.png', '0000-00-00', 0),
(115, 36, 'Red Bed 2', '', 'red-bed-2', 'red-bed-2_1654580506.png', '0000-00-00', 0);

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
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'INFINITY HOME', 'FURNISHINGS', '', '', 'logotransparent.png', 1, '', '', '2020-12-30'),
(26, 'customer@ihf.com', '$2y$10$GpNa8lL7QSlLg61V.uUROuAAE2pP0URXLTJS3IRPmfAprMSKZCha2', 0, 'Test', 'User', 'Test ', '12345', '', 1, '', '', '2022-05-30');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
