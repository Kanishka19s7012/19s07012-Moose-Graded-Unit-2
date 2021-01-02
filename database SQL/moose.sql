-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 29, 2020 at 09:43 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moose`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(1) NOT NULL DEFAULT 'S',
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `size`, `quantity`) VALUES
(9, 9, 2, '', 1),
(22, 19, 1, 'S', 2),
(23, 19, 2, 'S', 2),
(24, 19, 3, 'S', 4),
(26, 19, 36, 'S', 1),
(27, 20, 10, 'S', 1),
(28, 20, 29, 'S', 1),
(29, 20, 17, 'S', 1),
(30, 22, 9, 'S', 1),
(31, 22, 31, 'S', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Tops & Blouses', 'topsandblouses'),
(2, 'Frocks', 'Frocks'),
(3, 'Skirts', 'Skirts'),
(4, 'Shoes', 'Shoes'),
(5, 'Jeans', 'Jeans'),
(6, ' Jewelries', ' Jewelries');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

DROP TABLE IF EXISTS `details`;
CREATE TABLE IF NOT EXISTS `details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 1, 'Sqaut T', '', 'Squat T', 1250, 'T.jpg', '2020-12-03', 1),
(2, 1, 'Mouse Printed T', '', 'MousePrintedT', 1550, 'Tee.jpg', '2020-12-29', 1),
(3, 1, 'Bell Sleeves Top with Contrasting Lace', '\r\n', 'Bell Sleeves Top with Contrasting Lace', 1750, 'T1.jpg', '2020-12-01', 1),
(4, 1, 'Dotted-Top with button', '\r\n', 'Dotted-Top with button', 1450, 'T2.jpg', '2020-12-29', 1),
(5, 3, 'Black Denim Skirt', '\r\n', 'black-denim-skirt', 990, 'S2.jpg', '2020-11-21', 2),
(6, 1, 'V neck printed', '', 'vnecktop', 990, 'T4.jpg', '2020-11-14', 1),
(7, 3, 'Korean Denim Skirt', '', 'korean-denim-skirt', 799, 'S3.jpg', '2020-11-30', 2),
(8, 1, 'O-neck floral button ', '', 'Oneckfloralbutton', 1590, 'T5.jpg', '2020-12-01', 1),
(9, 2, 'Ladies Party Wear Frock', '', 'ladiespartyWearfrock', 1990, 'F1.jpg', '2020-12-29', 1),
(10, 2, 'Floral Print Dress', '', 'floralprintdress', 2090, 'F2.jpg', '2020-12-03', 2),
(11, 2, 'Vintage Cotton Dress', '', 'vintage-cotton-dress', 2490, 'F3.jpg', '2018-05-22', 12),
(12, 2, 'Sleeve-less Cotton Dress', '', 'sleeve-lesscottondress', 1199, 'F4.jpg', '2020-10-22', 1),
(13, 2, 'Floral Long Frock', '\r\n', 'floral-long-frock', 1390, 'F5.jpg', '2020-11-11', 1),
(14, 2, 'Ladies printed frock ', '\r\n', 'ladiesprintedfrok', 990, 'F6.jpg', '2020-10-22', 1),
(15, 2, 'Black Cotton Frock', '', 'blackcotton', 2500, 'F7.jpg', '2020-10-22', 23),
(16, 2, 'Flower Printed Frock', '', 'flower-printed-frock', 649.99, 'F8.jpg', '2020-10-22', 23),
(17, 3, 'Denim Skirts', '', 'denim-skirt', 1750, 'S1.jpg', '2020-12-02', 2),
(18, 3, 'Aglare Skirt', '', 'aglare-skirt', 650, 'S4.jpg', '2020-12-01', 1),
(19, 3, 'Adidoo Long Skirt', '', 'adidoo-long-skirt', 990, 'S5.jpg', '2020-11-30', 1),
(20, 3, 'Red Royal Skirt', '\r\n', 'red-royal-skirt', 1090, 'S6.jpg', '2020-11-13', 2),
(21, 1, 'Oassis Blouse', '', 'oassis-blouse', 1750, 'T7.jpg', '2020-10-22', 22),
(27, 1, 'Short Sleeve', '', 'shortsleeve', 1599, 'T6.jpg', '2020-11-13', 2),
(28, 4, 'Casual Sneakers', '', 'Casual-Sneakers', 3200, 'B2.jpg', '2020-11-13', 1),
(29, 4, 'Fashloh Black Shoe', '', 'Fashloh-Black-Shoe', 4450, 'B1.jpg', '2020-12-02', 1),
(30, 5, 'Ripped Jean', 'Ladies Jeans \r\nColour: Black\r\nSize S M L XL XXL ', 'ladiesblackjeans', 3800, 'J1.jpg', '2020-11-21', 2),
(31, 5, 'Black Denim', '', 'black-denim', 2500, 'J2.jpg', '2020-12-29', 1),
(32, 5, 'Ripped Black Jean', 'Ladies Jeans \r\n\r\nSize:S M L XL XXL ', 'rippedjean', 3200, 'J3.jpg', '2020-12-01', 1),
(33, 5, 'Stretch Ripped Jean', 'Ladies Jeans \r\nColour: Blue\r\nSize : S M L XL XXL ', 'Stretch-Ripped-Jean', 4490, 'J4.jpg', '2020-10-26', 4),
(34, 5, 'Bell Denim', 'Ladies Jeans \r\nColour: Blue\r\nSize : S M L XL XXL ', 'bell-denim', 4290, 'J5.jpg', '2020-10-26', 8),
(35, 6, 'Jaguar Heart pendant', '', 'Jaguar-Heart-pendant', 690, 'Y1.jpg', '2020-12-01', 1),
(36, 6, 'women\'s gold pabalu neckless', '', 'pabalu-neckless', 1490, 'Y2.jpg', '2020-12-01', 4),
(38, 6, 'Platinum Oval Ring', '', 'Platinum-Oval-Ring', 560, 'Y4.png', '2020-11-18', 1),
(39, 6, 'Fancy Earing', '', 'Fancy-Earing', 790, 'Y5.jpg', '2020-11-18', 1),
(40, 6, 'Necklace Set Gold Plated Jewellery Set ', '', 'necklace-set-gold-plated-jewellery-set ', 1890, 'Y6.jpg', '2020-11-18', 2),
(41, 6, 'Kandyan Bridal jewellry', '', 'kandyan-bridal', 2899, 'Y3.jpg', '2020-12-29', 1),
(43, 4, 'Adidas Shoe', '', 'adidas_sho', 6299, 'B3.jpg', '2020-11-30', 21);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2020-11-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2020-10-10');

-- --------------------------------------------------------

--
-- Table structure for table `subcribers`
--

DROP TABLE IF EXISTS `subcribers`;
CREATE TABLE IF NOT EXISTS `subcribers` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `sub_email` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcribers`
--

INSERT INTO `subcribers` (`id`, `sub_email`) VALUES
(1, 'kanishkadharmawardana@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL DEFAULT 0,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text DEFAULT NULL,
  `contact_info` varchar(100) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `reset_code` varchar(15) DEFAULT NULL,
  `created_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Moose', 'Admin', '', '', 'admin.png', 1, '', '2018-05-01'),
(20, 'kanishka@gmail.com', '$2y$10$fSLh3I0U.aa7xem3y9vV6uyqUauz67wNOCGGc/lQq1vNBtBUX.MXe', 0, 'kanishka', 'dharmawardana', NULL, NULL, NULL, 1, NULL, '2020-12-02');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
