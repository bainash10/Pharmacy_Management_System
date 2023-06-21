-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2023 at 10:54 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(55, 'V Wash Plus,200 gm', 400, 'Vwashplus200gm(Rs518).jpeg'),
(56, 'Apollo pharmacy fiirst aid kit', 450, 'apollo-pharmacy-first-aid-kit-500x500-500x500.jpg'),
(57, 'Appollo life omega-3 fish oil,30 capsules,100 mg', 167, 'appollo life omega-3 fish oil 100 mg,30 capsules(167).jpeg'),
(58, 'Apollo pharmacy disinfectant toilet cleaner', 100, 'appollo pharmacy disinfectant toilet cleaner,400 ml(72).jpeg'),
(59, 'Benadryl cough syrup,50 ml', 66, 'Benadrylcoughsyup.jpeg'),
(61, 'Cetaphil Gentle Cleanser,125 ml', 305, 'cetaphil gentle skin cleanser 125 ml(305).jpeg'),
(62, 'Cetaphil moisturising cream, 80 gm', 425, 'cetaphil moisturing cream,80 gm(425).jpeg'),
(63, 'Clean and dry cream, 115gm', 119, 'clean and dry cream 15 gm(119).jpeg'),
(64, 'Colgate Toothpaste.200 gm', 100, 'colgate toothpaste,200 gm(100).jpeg'),
(65, 'Colgate total waxed floss,25 ml', 75, 'coltage total waxed floss,25 m(75).jpeg'),
(66, 'Cotton roll-4 inch pack ', 25, 'cotton-roll-4-inch-pack_25.jpeg'),
(68, 'Dabur Gulabari premium rose water,30 ml', 30, 'dabur gulabari premium rose water,30 ml(15).jpeg'),
(69, 'Gardsil vaccine 0.5 ml', 3570, 'gardasil-732x549.jpeg'),
(70, 'Goli nutritious supergreens gummies', 2200, 'goli-nutrition-supergreens-gummies_2200.jpeg'),
(71, 'Himalaya diabecon', 175, 'himalayan.jpg'),
(72, 'Himalaya rumalaya liniment,60 ml', 115, 'hr.jpeg'),
(73, 'i-Know ovulation strip kit,5 count', 549, 'test.jpg'),
(75, 'Dettol Antiseptic liquid, 250 ml', 185, 'dettol-antiseptic-liquid-250ml_185.jpeg'),
(76, 'Eno orange flavoured powder,5 gm', 9, 'eno orange flavoured powder,5gm(9).jpg'),
(77, 'Ensure diabetes care powder vanilla flavour 1kg ', 2468, 'ensure.jpg'),
(78, 'Finger pulse oximeter mi 303', 1500, 'fingertip_pulse_oximeter_mi303_0_0 (1500).jpeg'),
(79, 'Front hand wash lemon grass', 72, 'front___hand_wash_lemon_grass_(72).jpeg'),
(80, 'Kleida foaming face wash', 645, 'kleida-foaming-face-wash_645.jpeg'),
(81, 'Medabery vitamin cbooster', 1200, 'meadberyvitamincbooster(1200).jpeg'),
(82, 'Mediker anti lice treatment shampoo,50 ml', 50, 'medikit.jpg'),
(83, 'Mutsela cleansing gel for babies,200 ml', 625, 'mutsela cleansing gel for babies,200 ml(625).jpeg'),
(84, 'Odomos naturals mosquito repellent spray', 1199, 'odomos naturals mosquito repellent spray,100ml (82).jpeg'),
(85, 'Pampers all round protection diaper pants', 1199, 'pampers all round protection diaper pants(1199).jpeg'),
(86, 'Parachute pure coconut hair oil,300 ml', 128, 'parachute pure coconut hair oil,300 ml(128).jpeg'),
(88, 'Pro 360 gold whey protein powder chocolate flavour,1 kg', 6999, 'choco.jpeg'),
(89, 'Strepsils orange flavoured lozengs 25 count', 75, 'strepsil.jpg'),
(90, 'Viroshield mouth spray,30 ml', 119, 'viroshield.jpeg'),
(91, 'Whisper ultra clean wings sanitary pads xl', 470, 'whisper ultra clean wings sanitary pads xl(470).jpeg'),
(92, 'Zandu rhumasyl liniment 100 ml', 210, 'zandu rhumasyl liniment 100ml (210).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(8, 'admin', 'admin@gmail.com', 'c20ad4d76fe97759aa27a0c99bff6710', 'admin'),
(9, 'ram', 'ram@gmail.com', 'c20ad4d76fe97759aa27a0c99bff6710', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
