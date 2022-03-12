-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2022 at 04:11 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be15_cr9_famazon_ivanmaksimov`
--
CREATE DATABASE IF NOT EXISTS `be15_cr9_famazon_ivanmaksimov` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be15_cr9_famazon_ivanmaksimov`;

-- --------------------------------------------------------

--
-- Table structure for table `acounts`
--

CREATE TABLE `acounts` (
  `acount_id` int(11) NOT NULL,
  `fk_customer_id` int(11) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `mobile_phone` int(11) NOT NULL,
  `last_login` date NOT NULL,
  `fk_adress_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acounts`
--

INSERT INTO `acounts` (`acount_id`, `fk_customer_id`, `birth_date`, `username`, `password`, `mobile_phone`, `last_login`, `fk_adress_id`) VALUES
(1, 4, '1998-12-06', 'chichiri@googl.win', '*************', 436858, '2021-02-25', 12),
(2, 8, '1956-02-02', 'griebelerarte@tchoeo.com', '*************', 432547, '2022-05-14', 11),
(3, 12, '1994-05-26', 'heathermcleish@tchoeo.com', '*************', 436855, '2022-03-11', 10),
(4, 2, '1949-02-19', 'griebelerarte@tchoeo.com', '*********', 435547, '2022-01-18', 9),
(5, 6, '1997-12-04', 'edgard80@lyricshnagu.com', '*************', 438558, '2021-01-18', 8),
(6, 10, '1964-05-23', 'taninc22@hungtaoteile.com', '*********', 45687, '2021-04-05', 7),
(7, 1, '1978-06-28', 'shandacombs@yaungshop.com', '*************', 434458, '2021-06-18', 6),
(8, 5, '1985-04-30', 'shortspan@nkgursr.com', '*********', 432237, '2021-04-21', 5),
(9, 9, '1936-04-24', 'mlrampold@lohpcn.com', '*********', 4362218, '2021-08-18', 4),
(10, 3, '1987-08-01', 'timpx1@eluvit.com', '*********', 432587, '2021-09-21', 3),
(11, 7, '1974-12-14', 'donaldsondanielson7@proxy4gs.c', '*************', 437748, '2021-06-23', 2),
(12, 11, '1968-09-04', 'barkov7777@ellahamid.art', '*********', 437747, '2021-09-30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `comp_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `fk_adress_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`comp_id`, `name`, `fk_adress_id`) VALUES
(1, 'Marquardt GmbH', 1),
(2, 'Heinemann Bernhardt ', 2),
(3, 'Stoll Stiftung & Co. KGaA', 3),
(4, 'Conrad Baum GmbH & Co. KG', 4),
(5, 'Rieger Rauch Stiftung & Co. KG', 5),
(6, 'Brunner Paul AG', 6),
(7, 'Bittner GmbH ', 7),
(8, 'Busse Hauser AG', 8);

-- --------------------------------------------------------

--
-- Table structure for table `comp_adresses`
--

CREATE TABLE `comp_adresses` (
  `adress_id` int(11) NOT NULL,
  `adress` varchar(30) NOT NULL,
  `ZIP` int(11) NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `fk_comp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comp_adresses`
--

INSERT INTO `comp_adresses` (`adress_id`, `adress`, `ZIP`, `city`, `country`, `fk_comp_id`) VALUES
(1, 'Herzoggasse 21', 1120, 'Amstetten', 'Austria', 1),
(2, 'Erzherzog-Johann-Straße 12', 8967, 'Ansfelden', 'Austria', 2),
(3, 'Kufsteiner Straße 14', 6114, 'Bad Ischl', 'Austria', 3),
(4, ' Birkenweg 29', 6067, 'Hollabrunn', 'Austria', 4),
(5, 'Herzoggasse 21', 2340, 'Amstetten', 'Austria', 5),
(6, 'Erzherzog-Johann-Straße 12', 8967, 'Ansfelden', 'Austria', 6),
(7, 'Zenogasse 34', 1160, 'Graz', 'Austria', 7),
(8, 'Erzherzog-Johann-Straße 12', 8967, 'Baden bei Wien', 'Austria', 8);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `fk_acount_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `first_name`, `last_name`, `fk_acount_id`) VALUES
(1, 'Kristian ', 'Dreher', 1),
(2, 'Diana ', 'Meister', 2),
(3, 'Jörg ', 'Osterhagen', 3),
(4, 'Mario', ' Walter', 4),
(5, 'Michael ', 'Schmitz', 5),
(6, 'Tim ', 'Wannemaker', 6),
(7, 'Leonie', ' Bader', 10),
(8, 'Jessica', ' Sommer', 7),
(9, 'Marko ', 'Neudorf', 8),
(10, 'Antje', ' Krause', 9),
(11, 'Christina ', 'Bauer', 11),
(12, 'Silke ', 'Vogler', 12);

-- --------------------------------------------------------

--
-- Table structure for table `customer_adresses`
--

CREATE TABLE `customer_adresses` (
  `adress_id` int(11) NOT NULL,
  `adress` varchar(30) NOT NULL,
  `ZIP` int(11) NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `fk_customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_adresses`
--

INSERT INTO `customer_adresses` (`adress_id`, `adress`, `ZIP`, `city`, `country`, `fk_customer_id`) VALUES
(1, 'Herzoggasse 21', 2340, 'Amstetten', ' Austria', 0),
(2, 'Erzherzog-Johann-Straße 12', 8967, 'Ansfelden', 'Austria', 0),
(3, 'Zenogasse 34', 1120, 'Bad Ischl', 'Austria', 0),
(4, 'Wieden 30', 2070, 'Bad Ischl', 'Austria', 0),
(5, 'Helfertgasse 35', 1120, 'Braunau am Inn', 'Austria', 0),
(6, ' Birkenweg 29', 5580, 'Baden bei Wien', 'Austria', 0),
(7, ' Archenweg 27', 6114, 'Enns', 'Austria', 0),
(8, ' Mühlenweg 34', 6067, 'Bischofshofen', 'Austria', 0),
(9, 'Kufsteiner Straße 14', 6336, 'Innsbruck', 'Austria', 0),
(10, 'Elidagasse 35', 1220, 'Hollabrunn', 'Austria', 0),
(11, ' Mörikeweg 27', 1160, 'Graz', 'Austria', 0),
(12, ' Kindergartengasse 10', 2722, 'LInz', 'Austria', 0);

-- --------------------------------------------------------

--
-- Table structure for table `delivering_companies`
--

CREATE TABLE `delivering_companies` (
  `deliver_comp_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `adress` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `ZIP` int(11) NOT NULL,
  `country` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivering_companies`
--

INSERT INTO `delivering_companies` (`deliver_comp_id`, `name`, `adress`, `city`, `ZIP`, `country`) VALUES
(1, 'Marcel Gmbh', 'Kelsenstrasse 61', 'KLEINKÖSTENDORF', 5202, 'Austria'),
(2, 'Austerlitz', 'Bahngasse 84', 'GRABENEGG', 3244, 'Austria'),
(3, 'Nadel Delivery', 'Weihburggasse 62', 'AICHBERG', 3122, 'Austria'),
(4, 'Drescher Post', 'Lahof 18', 'EISENGATTERN', 4656, 'Austria');

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `payment_id` int(11) NOT NULL,
  `method` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`payment_id`, `method`) VALUES
(1, 'creditcard'),
(2, 'paypal'),
(3, 'applepay'),
(4, 'mobilepay');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `price`, `quantity`) VALUES
(1, 'Orbital Keys', 45, 14),
(2, 'XPress Bottle', 12, 45),
(3, 'InstaPress', 35, 21),
(4, 'Uno Wear', 85, 32),
(5, 'Allure Kit', 63, 22),
(6, 'Swish Wallet', 14, 8),
(7, 'Onovo Supply', 49, 9),
(8, 'Sharpy Knife', 69, 21),
(9, 'Towlee', 39, 12),
(10, 'Rhino Case', 19, 4),
(11, 'Mono', 12, 54),
(12, 'Handy Mop', 45, 13),
(13, 'ONEset', 35, 14),
(14, 'Vortex Bottle', 85, 45),
(15, 'Terra Shsave', 49, 22),
(16, 'Gymr Kit', 12, 32),
(17, 'Villafy', 39, 22),
(18, 'Stickem', 85, 45),
(19, 'Snap It', 63, 14),
(20, 'Scruncho', 12, 32);

-- --------------------------------------------------------

--
-- Table structure for table `product_company`
--

CREATE TABLE `product_company` (
  `fk_product_id` int(11) NOT NULL,
  `fk_comp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_company`
--

INSERT INTO `product_company` (`fk_product_id`, `fk_comp_id`) VALUES
(1, 3),
(2, 4),
(3, 6),
(4, 5),
(5, 7),
(6, 2),
(7, 1),
(8, 1),
(9, 2),
(10, 3),
(11, 8),
(12, 8),
(13, 2),
(14, 3),
(15, 4),
(16, 5),
(17, 6),
(18, 7),
(19, 8),
(20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `purchase_id` int(11) NOT NULL,
  `fk_acount_id` int(11) NOT NULL,
  `fk_product_id` int(11) NOT NULL,
  `quantity` varchar(30) NOT NULL,
  `fk_payment_id` int(11) NOT NULL,
  `purchase_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`purchase_id`, `fk_acount_id`, `fk_product_id`, `quantity`, `fk_payment_id`, `purchase_date`) VALUES
(1, 1, 1, '3', 3, '2021-12-23'),
(2, 2, 20, '1', 1, '2022-01-02'),
(3, 3, 19, '2', 3, '2021-12-23'),
(4, 4, 18, '2', 2, '2022-02-02'),
(5, 5, 17, '1', 1, '2021-09-12'),
(6, 6, 15, '2', 2, '2020-08-12'),
(7, 7, 16, '4', 3, '2021-04-06'),
(8, 8, 14, '1', 1, '2020-08-12'),
(9, 9, 13, '2', 4, '2020-02-06'),
(10, 10, 12, '3', 2, '2022-02-17'),
(11, 11, 12, '1', 3, '2019-12-02'),
(12, 12, 11, '2', 1, '2019-05-06'),
(13, 1, 10, '1', 1, '2021-04-06'),
(14, 2, 9, '1', 3, '2022-02-17'),
(15, 3, 8, '3', 4, '2021-09-12'),
(16, 4, 7, '1', 4, '2020-08-12'),
(17, 5, 7, '3', 3, '2019-07-05'),
(18, 6, 6, '1', 1, '2022-11-05'),
(19, 7, 5, '1', 3, '2021-12-23'),
(20, 9, 4, '1', 1, '2020-08-12'),
(21, 10, 3, '1', 4, '2021-12-23'),
(22, 11, 2, '1', 4, '2022-02-02');

-- --------------------------------------------------------

--
-- Table structure for table `shipments`
--

CREATE TABLE `shipments` (
  `shipping_id` int(11) NOT NULL,
  `fk_comp_id` int(11) NOT NULL,
  `fk_purchase_id` int(11) NOT NULL,
  `shipp_date` date NOT NULL,
  `delivery_date` date NOT NULL,
  `fk_deliver_comp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shipments`
--

INSERT INTO `shipments` (`shipping_id`, `fk_comp_id`, `fk_purchase_id`, `shipp_date`, `delivery_date`, `fk_deliver_comp_id`) VALUES
(1, 3, 1, '2021-12-23', '2021-12-26', 2),
(2, 1, 2, '2022-01-02', '2022-01-06', 4),
(3, 8, 3, '2021-12-24', '2021-12-26', 2),
(4, 6, 4, '2022-02-02', '2022-02-03', 4),
(5, 6, 5, '2021-09-13', '2021-09-14', 3),
(6, 4, 6, '2020-08-12', '2022-08-15', 1),
(7, 5, 7, '2021-04-07', '2021-04-09', 4),
(8, 3, 8, '2020-08-13', '2020-08-14', 2),
(9, 2, 9, '2020-02-06', '2020-02-07', 1),
(10, 8, 10, '2022-02-19', '2022-02-21', 3),
(11, 8, 11, '2019-12-02', '2019-12-05', 4),
(12, 8, 12, '2019-05-06', '2019-05-09', 2),
(13, 3, 13, '2021-04-06', '2021-04-08', 1),
(14, 2, 14, '2022-02-18', '2022-02-20', 3),
(15, 1, 15, '2021-09-13', '2021-09-14', 2),
(16, 1, 16, '2020-08-12', '2020-08-14', 4),
(17, 1, 17, '2019-07-06', '2019-07-09', 1),
(18, 2, 18, '2022-11-06', '2022-11-08', 3),
(19, 7, 19, '2021-12-24', '2021-12-25', 2),
(20, 5, 20, '2020-08-12', '2020-08-17', 4),
(21, 6, 21, '2021-12-24', '2021-12-29', 4),
(22, 4, 22, '2022-02-05', '2022-02-06', 3);

-- --------------------------------------------------------

--
-- Table structure for table `website`
--

CREATE TABLE `website` (
  `fk_product_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `web_adress` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `website`
--

INSERT INTO `website` (`fk_product_id`, `name`, `web_adress`) VALUES
(1, 'Famazon', 'www.famazon.com'),
(2, 'Famazon', 'www.famazon.com'),
(3, 'Famazon', 'www.famazon.com'),
(4, 'Famazon', 'www.famazon.com'),
(5, 'Famazon', 'www.famazon.com'),
(6, 'Famazon', 'www.famazon.com'),
(7, 'Famazon', 'www.famazon.com'),
(8, 'Famazon', 'www.famazon.com'),
(9, 'Famazon', 'www.famazon.com'),
(10, 'Famazon', 'www.famazon.com'),
(11, 'Famazon', 'www.famazon.com'),
(12, 'Famazon', 'www.famazon.com'),
(13, 'Famazon', 'www.famazon.com'),
(14, 'Famazon', 'www.famazon.com'),
(15, 'Famazon', 'www.famazon.com'),
(16, 'Famazon', 'www.famazon.com'),
(17, 'Famazon', 'www.famazon.com'),
(18, 'Famazon', 'www.famazon.com'),
(19, 'Famazon', 'www.famazon.com'),
(20, 'Famazon', 'www.famazon.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acounts`
--
ALTER TABLE `acounts`
  ADD PRIMARY KEY (`acount_id`),
  ADD KEY `fk_adress_id` (`fk_adress_id`),
  ADD KEY `acounts_ibfk_1` (`fk_customer_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`comp_id`),
  ADD KEY `fk_adress_id` (`fk_adress_id`);

--
-- Indexes for table `comp_adresses`
--
ALTER TABLE `comp_adresses`
  ADD PRIMARY KEY (`adress_id`),
  ADD KEY `fk_comp_id` (`fk_comp_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `fk_acount_id` (`fk_acount_id`);

--
-- Indexes for table `customer_adresses`
--
ALTER TABLE `customer_adresses`
  ADD PRIMARY KEY (`adress_id`);

--
-- Indexes for table `delivering_companies`
--
ALTER TABLE `delivering_companies`
  ADD PRIMARY KEY (`deliver_comp_id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_company`
--
ALTER TABLE `product_company`
  ADD PRIMARY KEY (`fk_product_id`,`fk_comp_id`),
  ADD KEY `fk_comp_id` (`fk_comp_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`purchase_id`),
  ADD KEY `fk_acount_id` (`fk_acount_id`),
  ADD KEY `fk_payment_id` (`fk_payment_id`),
  ADD KEY `fk_product_id` (`fk_product_id`);

--
-- Indexes for table `shipments`
--
ALTER TABLE `shipments`
  ADD PRIMARY KEY (`shipping_id`),
  ADD KEY `fk_comp_id` (`fk_comp_id`),
  ADD KEY `fk_deliver_comp_id` (`fk_deliver_comp_id`),
  ADD KEY `fk_purchase_id` (`fk_purchase_id`);

--
-- Indexes for table `website`
--
ALTER TABLE `website`
  ADD PRIMARY KEY (`fk_product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acounts`
--
ALTER TABLE `acounts`
  MODIFY `acount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `comp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer_adresses`
--
ALTER TABLE `customer_adresses`
  MODIFY `adress_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `delivering_companies`
--
ALTER TABLE `delivering_companies`
  MODIFY `deliver_comp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `purchase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `shipments`
--
ALTER TABLE `shipments`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `acounts`
--
ALTER TABLE `acounts`
  ADD CONSTRAINT `acounts_ibfk_1` FOREIGN KEY (`fk_customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE ON UPDATE SET NULL,
  ADD CONSTRAINT `acounts_ibfk_2` FOREIGN KEY (`fk_adress_id`) REFERENCES `customer_adresses` (`adress_id`);

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_ibfk_1` FOREIGN KEY (`fk_adress_id`) REFERENCES `comp_adresses` (`adress_id`);

--
-- Constraints for table `comp_adresses`
--
ALTER TABLE `comp_adresses`
  ADD CONSTRAINT `comp_adresses_ibfk_1` FOREIGN KEY (`fk_comp_id`) REFERENCES `companies` (`comp_id`);

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`fk_acount_id`) REFERENCES `acounts` (`acount_id`);

--
-- Constraints for table `product_company`
--
ALTER TABLE `product_company`
  ADD CONSTRAINT `product_company_ibfk_1` FOREIGN KEY (`fk_product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `product_company_ibfk_2` FOREIGN KEY (`fk_comp_id`) REFERENCES `companies` (`comp_id`);

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`fk_acount_id`) REFERENCES `acounts` (`acount_id`),
  ADD CONSTRAINT `purchases_ibfk_2` FOREIGN KEY (`fk_payment_id`) REFERENCES `payment_method` (`payment_id`),
  ADD CONSTRAINT `purchases_ibfk_3` FOREIGN KEY (`fk_product_id`) REFERENCES `website` (`fk_product_id`);

--
-- Constraints for table `shipments`
--
ALTER TABLE `shipments`
  ADD CONSTRAINT `shipments_ibfk_1` FOREIGN KEY (`fk_comp_id`) REFERENCES `companies` (`comp_id`),
  ADD CONSTRAINT `shipments_ibfk_2` FOREIGN KEY (`fk_deliver_comp_id`) REFERENCES `delivering_companies` (`deliver_comp_id`),
  ADD CONSTRAINT `shipments_ibfk_3` FOREIGN KEY (`fk_purchase_id`) REFERENCES `purchases` (`purchase_id`);

--
-- Constraints for table `website`
--
ALTER TABLE `website`
  ADD CONSTRAINT `website_ibfk_1` FOREIGN KEY (`fk_product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
