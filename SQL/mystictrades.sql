-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2023 at 06:54 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mystictrades`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(3) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_fname` varchar(20) NOT NULL,
  `admin_lname` varchar(20) NOT NULL,
  `admin_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_fname`, `admin_lname`, `admin_password`) VALUES
(4, 'admin@gmail.com', 'Adib', 'Hossain', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(5) NOT NULL,
  `item_title` varchar(250) NOT NULL,
  `item_brand` varchar(250) NOT NULL,
  `item_cat` varchar(15) NOT NULL,
  `item_details` text NOT NULL,
  `item_tags` varchar(250) NOT NULL,
  `item_image` varchar(250) NOT NULL,
  `item_quantity` int(3) NOT NULL,
  `item_price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_title`, `item_brand`, `item_cat`, `item_details`, `item_tags`, `item_image`, `item_quantity`, `item_price`) VALUES
(130, 'Telephone', 'JK', 'Antiques', 'N/A', 'Telephone', 'tl.jpg', 1, 1200),
(132, 'Gem Stone Pendant', 'Import Center', 'pendant', 'The blue stone is likely an aquamarine. The necklace is a simple but elegant design, and the aquamarine pendant is the focal point.', 'Gem Stone Pendant', 'Gemstones.jpg', 1, 800),
(133, 'Witcher Medallion', 'CD Project Red', 'pendant', 'The Witcher medallion is a symbol of the Witcher order. It is worn by all Witchers, and it is said to have magical powers that protect them from harm.', 'Witcher Medallion', 'witcher tag.png', 1, 800),
(134, 'Kunti Figure', 'Import Center', 'antiques', 'Sculpture', 'Kunti Figure', 'kunti.jpg', 1, 1400),
(137, 'Saurons Art Mask', 'LOTR', 'machine', 'LOTR proudly presents the first officially licensed Lord of the Rings collectible with the Sauron Art Mask. Carefully sculpted from the movie reference material, the mask is paired with a hyperdetailed fully sculpted Barad-dûr mounting base with LED molten lava effect and the blazing Eye of Sauron.', 'Saurons Art Mask', 'Saurons Art Mask.jpg', 1, 30000),
(138, 'Dumbledors Wand', 'JKRLNG', 'machine', 'Its made of elder wood and has hair a core, which makes it super powerful. It also has a simple design.', 'Dumbledors Wand', 'Dumbledores Wand.jpg', 1, 1000),
(139, 'Andurils Sword', 'LOTR', 'antiques', 'Anduril, also known as the Flame of the West, is a legendary sword in J.R.R. Tolkiens fantasy world of Middle-earth. It is famously wielded by Aragorn, the rightful King of Gondor, in The Lord of the Rings.', 'Andurils Sword', 'LOTR Anduril Sword.jpg', 1, 7000),
(140, 'Aladin Genie Lamp', 'Import Center', 'machine', 'The Genies Lamp, also known as the Magic Lamp or Aladins lamp, is a central artifact in the beloved tale of Aladin. Its unassuming appearance hides a powerful magic that drives the story forward.', 'Aladin Genie Lamp', 'Aladin Genie Lamp.jpg', 1, 2700),
(141, '18s Vintage Tea Pot', 'Import Center', 'antiques', 'This is vintage tea pot style from Royal Family of India in 18s period', '18s Vintage Tea Pot', 'tea pot.jpg', 1, 1500),
(142, 'Witches Globe Lamp', 'Import Center', 'machine', 'The Witches Globe, also known as a Witch Ball, is a fascinating historical and symbolic artifact shrouded in folklore and mystique', 'Witches Globe Lamp', 'Wtiches Globe.jpg', 1, 3800),
(143, 'Fortune Telling Globe', 'Import Center', 'machine', 'The Fortune Telling Globe, also known as a Crystal Ball, Gazing Globe, or Scrying Ball, is a captivating tool used for centuries in the practice of divination', 'Fortune Telling Globe', 'Fortune Telling Globe.jpg', 1, 3200),
(144, 'Wand - Harry Potter', 'JKRLNG', 'machine', 'From the Movie of Harry Potter.', 'Wand - Harry Potter', 'Wand.jpg', 2, 3000),
(145, 'Aesthetic Floral Hand bag', 'Customize BD', 'machine', 'N/A', 'Aesthetic Floral Hand bag', 'Aesthetic Floral hand bag.jpg', 1, 1200),
(146, 'Aesthetic Hand Bag', 'Customize BD', 'machine', 'N/A', 'Aesthetic Hand Bag', 'Aestheticc Floral hand bag.jpg', 1, 1200),
(147, 'Canvas Tote Bag Yellow Flower', 'Customize BD', 'machine', 'N/A', 'Canvas Tote Bag Yellow Flower', 'Canvas Tote Bag Yellow Flower 2.jpg', 1, 1200),
(148, 'Custom Green Dragon Nike Air Force-1 Sneakers', 'Customize BD', 'machine', 'N/A', 'Custom Green Dragon Nike Air Force-1 Sneakers', 'Custom Green Dragon Nike Air Force 1 Sneakers.jpg', 1, 3400),
(149, 'DaIIas Cowboys JD1 Sport Custom Sneakers', 'Customize BD', 'machine', 'N/A', 'DaIIas Cowboys JD1 Sport Custom Sneakers', 'DaIIas Cowboys JD1 Sport Custom Sneakers AJH0483.jpg', 1, 4000),
(150, 'Funky Custom Sneakers', 'Customize BD', 'machine', 'N/A', 'Funky Custom Sneakers', 'Funky Custom Sneakers.jpg', 1, 3000),
(151, 'Gramophone', 'History Point', 'antiques', 'N/A', 'Gramophone', 'gramophones.jpg', 1, 35000),
(152, 'LA Lakers JD1 Sport Custom Sneakers', 'Customize BD', 'machine', 'N/A', 'LA Lakers JD1 Sport Custom Sneakers', 'LA Lakers JD1 Sport Custom Sneakers AJH2119.jpg', 1, 4000),
(153, 'Hand Painted Personality Design Sneakers', 'Customize BD', 'machine', 'N/A', 'Hand Painted Personality Design Sneakers', 'Hand Painted Personality Design Sneakers 2.jpg', 1, 4200),
(154, 'Vanilla Scented Candle', 'Local Point', 'machine', 'N/A', 'Vanilla Scented Candle', 'vanilla.webp', 1, 300),
(155, 'Lemon Lavender Candle', 'Local Point', 'machine', 'N/A', 'Lemon Lavender Candle', 'LEMON LAVENDER.jpg', 1, 400),
(156, 'Love Shape Candle', 'Local Point', 'machine', 'N/A', 'Love Shape Candle', 'loveshape candles.jpeg', 5, 750),
(157, 'Dan Tribe African Mask Wall Decor', 'History Point', 'antiques', 'N/A', 'Dan Tribe African Mask Wall Decor', 'il_fullxfull.3231209039_a85n.jpg', 3, 2500),
(158, 'Tribe Mask Red', 'History Point', 'antiques', 'N/A', 'Tribe Mask Red', 'Tribe Mask.jpg', 1, 2000),
(159, 'Tribe Mask Blue', 'History Point', 'antiques', 'N/A', 'Tribe Mask Blue', 'Tribe maskd.jpg', 1, 2000),
(160, 'Kitsune Spirit Mask', 'Japan Import', 'machine', 'N/A', 'Kitsune Spirit Mask', 'Kitsune Mask.jpg', 1, 2500),
(161, 'Benz Miniature Figure', 'Import Center', 'machine', 'N/A', 'Benz Miniature Figure', 'benz2.jpg', 1, 1400),
(162, 'BMW Miniature', 'Import Center', 'machine', 'N/A', 'BMW Miniature', 'bmw2.jpg', 1, 1400),
(163, 'Ford Miniature', 'Import Center', 'machine', 'N/A', 'Ford Miniature', 'Ford.jpg', 1, 2200),
(164, 'Rolls Royce Miniature', 'Import Center', 'machine', 'N/A', 'Rolls Royce Miniature', 'RR.jpg', 1, 1400),
(165, 'Bloem Hopson Planter', 'Local Point', 'machine', 'N/A', 'Bloem Hopson Planter', 'Bloem Hopson Planter.jpg', 2, 1200),
(166, 'Basic ceramic Round planters', 'Local Point', 'machine', 'N/A', 'Basic ceramic Round planters', 'Basic ceramic Round planters 2 .jpg', 1, 1200),
(167, 'Limited Edition Pokemon Card', 'Japan Import', 'antiques', 'N/A', 'Limited Edition Pokemon Card', 'Pokemon Booster Pack.jpg', 4, 2000),
(168, 'Limited Edition BeyBlade', 'Japan Import', 'antiques', 'N/A', 'Limited Edition BeyBlade', 'Beyblade Metal Fury Pack.jpg', 3, 2800),
(169, 'Classic Vogue Plant', 'Local Point', 'machine', 'N/A', 'Classic Vogue Plant', 'Classic Vogue Planter.jpg', 1, 800),
(170, 'Rare Gem Stone', 'History Point', 'antiques', 'N/A', 'Rare Gem Stone', '60b3bbc713a9f.jpg', 1, 2000),
(171, 'Jade Stone', 'History Point', 'antiques', 'N/A', 'Jade Stone', '73f449b571560d37ec1a43321d8c6647.jpg', 1, 2500),
(172, 'Cosmic Stone', 'History Point', 'antiques', 'N/A', 'Cosmic Stone', '30101032e081da33854340c1bed103d3.jpg', 1, 2200),
(173, 'Vintage Metal Pendant', 'History Point', 'antiques', 'N/A', 'Vintage Metal Pendant', 'big_A1545_SVCHRM.jpg', 1, 1200),
(176, 'Pendant', 'Import Center', 'pendant', 'N/A', 'Pendant', 'images (2).jpg', 1, 800),
(177, 'Eye of Sauron Lamp', 'LOTR', 'machine', 'N/A', 'Eye of Sauron Lamp', 'Eye Of Sauron,JPG.jpg', 1, 12000),
(178, 'Small Stoned Pendant', 'Import Center', 'pendant', 'N/A', 'Small Stoned Pendant', 'images (3).jpg', 1, 900),
(179, 'Milikway Sphere Pendant', 'Import Center', 'pendant', 'N/A', 'Milikway Sphere Pendant', 'images (4).jpg', 1, 1400),
(180, 'Tragram pendant', 'Import Center', 'pendant', 'N/A', 'Tragram pendant', 'images (5).jpg', 1, 1500),
(181, 'Vintage Hand Time Clock', 'History Point', 'antiques', 'N/A', 'Vintage Hand Time Clock', 'images.jpg', 1, 1400),
(182, 'Pendant Metal Tag', 'Import Center', 'pendant', 'N/A', 'Pendant Metal Tag', 'pen.jpg', 1, 1200),
(183, 'Snitch Clock', 'JKRLNG', 'machine', 'N/A', 'Snitch Clock', 'Snitch Clock.jpg', 1, 2500),
(184, 'Purple Stone Pendant', 'Import Center', 'pendant', 'N/A', 'Purple Stone Pendant', 'imagebvbs (1).jpg', 1, 1200),
(185, 'Witches Broom', 'Import Center', 'machine', 'N/A', 'Witches Broom', 'Wirch Broom.jpg', 1, 2800),
(186, 'Grim Reaper Cloak.', 'Import Center', 'machine', 'N/A', 'Grim Reaper Cloak.', 'Grim Reaper Cloack.jpg', 1, 4000);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_quantity` int(3) NOT NULL,
  `order_date` date NOT NULL,
  `order_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_Lname` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_id` int(3) NOT NULL,
  `user_fname` varchar(20) NOT NULL,
  `user_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_Lname`, `email`, `user_password`, `user_id`, `user_fname`, `user_address`) VALUES
('Hossain', 'adibhossain1133@gmail.com', 'Gamer1133', 87, 'Adib', '156/A,east ulon,west rampura,Dhaka 1219'),
('Hossain', 'adibmoinul@gmail.com', 'Adib1133', 88, 'Adib', '156/A,east ulon,west rampura,Dhaka 1219'),
('Ridoy', 'asd@gmail.com', 'ridoy1133', 89, 'Asadujjaman', 'Khilgaon'),
('Ridoy', 'as1d@gmail.com', 'Ghost1133', 90, 'Asadujjaman', 'Khilgaon'),
('Raven', 'ghost@gmail.com', 'Ghost1133', 91, 'Ghost', '156/A,east ulon,west rampura,Dhaka 1219');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
