-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2024 at 07:52 PM
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
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(160, 20, 7, 'Cream and Blue', 13, 1, 'rose_and _blue.jpg'),
(161, 20, 45, 'Floral Bouquet', 16, 4, 'floral_bouquet.jpg'),
(162, 20, 8, 'Regal Rose', 14, 1, 'rose_and_flower.jpg'),
(163, 20, 9, 'Lavish Rose', 15, 1, 'roses.jpg');

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

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(16, 20, 'User1', 'user1@gmail.com', '9840000111', 'Hello! Thank you for the pretty flowers.'),
(17, 21, 'user2', 'user2@gmail.com', '8537295872', 'Pretty Flowers'),
(18, 21, 'user2', 'user2@gmail.com', '7234728', 'hi ');

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

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(19, 16, 'smri', '982264726', 'smri@gmail.com', 'credit card', 'flat no. 12, subu, ktm, nepal - 56217', ', pink rose (7) , cottage rose (1) ', 99, '04-Feb-2024', 'pending'),
(22, 18, 'smri', '738271', 'smri@gmail.com', 'esewa', 'flat no. 34, hsadhd, ktm, nepAL - 1232', ', yellow tulipa (1) ', 12, '15-Feb-2024', 'completed'),
(23, 20, 'User1', '9840000111', 'user1@gmail.com', 'esewa', 'flat no. 23, freak street, kathmandu, nepal - 1234', ', Cream and Blue (1) , Floral Bouquet (2) , Cream Roses (1) , Regal Rose (2) ', 91, '17-Feb-2024', 'completed'),
(24, 21, 'user2', '9849898989', 'user2@gmail.com', 'fonepay', 'flat no. 23, freak sreet, ktm, nepal - 1234', ', Floral Bouquet (1) , Lavish Rose (1) , Cream Roses (3) , Regal Rose (1) ', 99, '18-Feb-2024', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `categories` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image`, `categories`) VALUES
(1, 'Blue Tulips', 'These fresh blue tulips represent individuality and uniqueness. Get your Blue Tulips now!', 11, 'blue_tulips.jpg', 'Birthday'),
(2, 'Pastel Petals', 'Arranged with pastel colored flowers, Pastel Petals  embraces the soft, gentle, and soothing hues found in pastel-colored flowers. ', 18, 'bouquet_valentines.jpg', 'Valentines'),
(7, 'Cream and Blue', 'Classic and elegant with a touch of blue.', 13, 'rose_and _blue.jpg', 'Valentines'),
(8, 'Regal Rose', 'Sophisticated and timeless elegance associated with the majestic rose', 14, 'rose_and_flower.jpg', 'Birthday'),
(9, 'Lavish Rose', 'Lavishing rose for your ravishing significant other.', 15, 'roses.jpg', 'Valentines'),
(10, 'Delicate Yellow', 'Soft, delicate and elegant yellow roses.', 13, 'yellow _rose.jpg', 'Birthday'),
(44, 'Cream Roses', 'Classic flowers for a classic wedding. Cream roses are a classic and elegant variety of roses characterized by their soft, creamy white petals.', 18, 'bridal_pink_bouquet.jpg', 'Wedding'),
(45, 'Floral Bouquet', 'Carefully arranged collection crafted to convey various emotions.', 16, 'floral_bouquet.jpg', 'Wedding'),
(46, 'White Roses', 'White roses for white occasion', 19, 'wedding_bouquet.jpg', 'Wedding');

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
(1, 'smri', 'smri@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'admin'),
(20, 'user1', 'user1@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'user'),
(21, 'user2', 'user2@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(69, 20, 1, 'Blue Tulips', 12, 'blue_tulips.jpg'),
(70, 20, 10, 'Delicate Yellow', 13, 'yellow _rose.jpg');

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
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
