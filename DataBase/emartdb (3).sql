-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2020 at 12:19 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emartdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill_details_table`
--

CREATE TABLE `bill_details_table` (
  `bill_details_id` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill_details_table`
--

INSERT INTO `bill_details_table` (`bill_details_id`, `bill_id`, `item_id`) VALUES
(1, 4, 401),
(2, 5, 401),
(3, 6, 401),
(4, 7, 401),
(5, 7, 401),
(6, 8, 401),
(7, 9, 401),
(8, 9, 401),
(14, 13, 401),
(15, 13, 403),
(16, 13, 401),
(17, 14, 401),
(18, 15, 401),
(19, 15, 401),
(20, 15, 402),
(21, 16, 401),
(22, 16, 405),
(23, 17, 403),
(24, 18, 403),
(25, 19, 401),
(26, 20, 403),
(27, 21, 403),
(28, 22, 402),
(29, 23, 403),
(30, 24, 402);

-- --------------------------------------------------------

--
-- Table structure for table `bill_table`
--

CREATE TABLE `bill_table` (
  `bill_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `bill_type` varchar(20) NOT NULL,
  `bill_date` date NOT NULL,
  `bill_remarks` varchar(50) NOT NULL,
  `bill_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill_table`
--

INSERT INTO `bill_table` (`bill_id`, `buyer_id`, `bill_type`, `bill_date`, `bill_remarks`, `bill_amount`) VALUES
(4, 101, 'credit', '2020-01-03', 'abcdefghijklmnopqrstuvwxyz', 2),
(5, 101, 'credit', '2020-01-03', 'abcdefghijklmnopqrstuvwxyz', 2),
(6, 101, 'credit', '2020-01-03', 'abcdefghijklmnopqrstuvwxyz', 2),
(7, 102, 'Debit', '2020-03-04', 'paid', 60000),
(8, 102, 'Debit', '2020-03-04', 'paid', 30000),
(9, 102, 'Debit', '2020-03-04', 'paid', 60000),
(12, 102, 'Debit', '2020-03-05', 'paid', 5),
(13, 101, 'Debit', '2020-03-05', 'paid', 60030),
(14, 102, 'Debit', '2020-03-05', 'paid', 30000),
(15, 102, 'Debit', '2020-03-05', 'paid', 310000),
(16, 101, 'Debit', '2020-03-05', 'paid', 35000),
(17, 102, 'Debit', '2020-03-06', 'paid', 20),
(18, 102, 'Debit', '2020-03-06', 'paid', 20),
(19, 102, 'Debit', '2020-03-04', 'paid', 60000),
(20, 107, 'credit', '2020-03-10', '', 20),
(21, 107, 'credit', '2020-03-10', '', 20),
(22, 107, 'credit', '2020-03-11', '', 250000),
(23, 107, 'credit', '2020-03-12', '', 20),
(24, 107, 'credit', '2020-03-12', '', 250000);

-- --------------------------------------------------------

--
-- Table structure for table `buyer_signup_table`
--

CREATE TABLE `buyer_signup_table` (
  `buyer_id` int(11) NOT NULL,
  `buyer_username` varchar(20) NOT NULL,
  `buyer_password` varchar(20) NOT NULL,
  `buyer_email` varchar(20) NOT NULL,
  `buyer_mobile` int(15) NOT NULL,
  `buyer_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyer_signup_table`
--

INSERT INTO `buyer_signup_table` (`buyer_id`, `buyer_username`, `buyer_password`, `buyer_email`, `buyer_mobile`, `buyer_date`) VALUES
(101, 'Mr R', 'test', 'MrR@kmail.com', 147483647, '2012-12-12'),
(102, 'admin', 'Admin', 'admin@admin.com', 123456789, '2020-01-01'),
(104, 'Mr R', 'test', 'MrR@kmail.com', 147483647, '2020-10-09'),
(105, 'Mr R', 'test', 'MrR@kmail.com', 147483647, '2020-10-09'),
(106, 'Mr R', 'test', 'MrR@kmail.com', 147483647, '2020-10-09'),
(107, 'd', 'd', 'd.d@d', 1234567820, '2020-03-10'),
(108, 'dd', 'dd', 'dd@dd.dd', 12345680, '2020-03-10'),
(109, 'deep', 'deep', 'deep@deep.com', 123456789, '2020-03-10'),
(110, 'user', 'ser', 'd@d.com', 123456789, '2020-03-10'),
(111, 'ser', 'user', 'a@g.com', 1019741688, '2020-03-10'),
(112, 'sphurthi', 'Sphurthi', 's.s@s.c', 123456789, '2020-03-10');

-- --------------------------------------------------------

--
-- Table structure for table `category_table`
--

CREATE TABLE `category_table` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL,
  `category_brief` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_table`
--

INSERT INTO `category_table` (`category_id`, `category_name`, `category_brief`) VALUES
(501, 'Electronics', 'varities of Electronics like Tv and Washing Machine'),
(502, 'Fashion', 'Try different look everyday');

-- --------------------------------------------------------

--
-- Table structure for table `item_table`
--

CREATE TABLE `item_table` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(20) NOT NULL,
  `item_image` varchar(200) NOT NULL,
  `item_price` int(11) NOT NULL,
  `item_stock` int(11) NOT NULL,
  `item_description` varchar(200) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `item_remarks` varchar(100) NOT NULL,
  `seller_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_table`
--

INSERT INTO `item_table` (`item_id`, `item_name`, `item_image`, `item_price`, `item_stock`, `item_description`, `subcategory_id`, `item_remarks`, `seller_id`) VALUES
(401, 'washing machine', 'https://ksassets.timeincuk.net/wp/uploads/sites/54/2014/11/WW9000-Hero-1280-1.jpg', 30000, 2, 'washing machine', 601, 'good', 1),
(402, 'Life Good fridge', 'https://images.unsplash.com/photo-1536353284924-9220c464e262?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80', 250000, 5, 'Amazing Performance ', 603, 'COD Available', 2),
(403, 'Sony mobiles', 'https://images.unsplash.com/photo-1569143173809-41abdb3ed035?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80', 20, 1, 'excellent sound', 601, 'price meets quality', 1),
(404, 'Whirl Pool Fridge', 'https://images.unsplash.com/photo-1576759310319-aa88751eca50?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80', 10000, 25, 'Short and compact Refrigerator', 603, 'Worth the Price', 2),
(405, 'BOSCH Fridge', 'https://images.unsplash.com/photo-1487770931682-b80013ed9cc9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80', 5000, 0, 'Lock door mechanism Fridge', 603, 'Currently Unavailable', 2),
(406, 'IFB Machine', 'https://images.unsplash.com/photo-1477248742637-8e90b0dcfb4b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', 60000, 10, 'Best washing machine for Washing Huge load at a time', 602, 'Most used for Hostel Purposes', 2),
(407, 'Haier ', 'https://images.unsplash.com/photo-1583172747862-afcb755ebd13?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80', 620000, 6, 'Quick wash facility available', 602, 'Free installation', 2),
(408, 'Lenovo ', 'https://images.unsplash.com/photo-1525459715390-11a3e77bc887?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80', 12000, 9, 'Fastest Performance', 604, 'Good quality', 2),
(409, 'Apple', 'https://images.unsplash.com/photo-1571239982287-9a7a17c1b9c1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80', 70000, 20, 'Best in Market', 604, 'Fastest Performance', 2),
(410, 'Reymonds', 'https://images.unsplash.com/photo-1541418950054-c12804e149d9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80', 2000, 26, 'Soft and comfortable fabric', 606, 'Best Quality ', 1),
(411, 'pepe Jeans', 'https://images.unsplash.com/photo-1555689502-c4b22d76c56f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80', 1500, 25, 'Durable and rough use', 606, 'Very Comfortable', 1),
(412, 'T- shirt', 'https://images.unsplash.com/photo-1562157873-818bc0726f68?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=564&q=80', 400, 80, 'Colorful T shirts', 606, 'Bright T-shirts', 1),
(413, 'gown', 'https://images.unsplash.com/photo-1473286835901-04adb1afab03?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80', 600, 12, 'Comfortable fabric', 605, 'Dry wash only', 1),
(414, 'frock', 'https://images.unsplash.com/photo-1534534665817-8493579d3fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=578&q=80', 1000, 10, 'Knee length frock ', 605, 'Iron with care', 1),
(415, 'Jeans', 'https://images.unsplash.com/photo-1541085388148-a30647cab28f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80', 1200, 6, 'Jeans', 605, 'Rough and Tough use', 1),
(416, 'T shirt', 'https://images.unsplash.com/photo-1513787345924-e09d880a19a5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80', 200, 1, 'cute tee\'s', 607, 'vey comfortable', 1),
(417, 'frock', 'https://images.unsplash.com/photo-1508083460982-28b3207400d2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=633&q=80', 400, 25, 'sleeveless frock', 607, 'DryClean only', 1),
(418, 'Kurthi', 'https://images.unsplash.com/photo-1513791149369-f88da26c8e93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80', 350, 80, '3/4th sleeves kurthi', 607, 'COD available', 1);

-- --------------------------------------------------------

--
-- Table structure for table `seller_signup_table`
--

CREATE TABLE `seller_signup_table` (
  `seller_id` int(11) NOT NULL,
  `seller_username` varchar(20) NOT NULL,
  `seller_password` varchar(20) NOT NULL,
  `seller_company` varchar(20) NOT NULL,
  `seller_brief` varchar(100) NOT NULL,
  `seller_gst` int(11) NOT NULL,
  `seller_address` varchar(100) NOT NULL,
  `seller_email` varchar(20) NOT NULL,
  `seller_contact` int(10) NOT NULL,
  `seller_website` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller_signup_table`
--

INSERT INTO `seller_signup_table` (`seller_id`, `seller_username`, `seller_password`, `seller_company`, `seller_brief`, `seller_gst`, `seller_address`, `seller_email`, `seller_contact`, `seller_website`) VALUES
(1, 'Ashwitha', 'Ashwitha', 'abc', 'abc pvt lmt', 5, 'kurnool', 'epuriashwitha@gmail.', 2147483647, 'abc.com'),
(2, 'Pooja', '1234', 'pooh', 'pooh pvt ltd', 6, 'Chintal', 'sreeP@gmail.com', 25836914, 'www.Pooja.com');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category_table`
--

CREATE TABLE `sub_category_table` (
  `subcategory_id` int(11) NOT NULL,
  `subcategory_name` varchar(20) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_brief` varchar(100) NOT NULL,
  `subcategory_gst` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_category_table`
--

INSERT INTO `sub_category_table` (`subcategory_id`, `subcategory_name`, `category_id`, `subcategory_brief`, `subcategory_gst`) VALUES
(601, 'TV', 501, 'Best Tv\'s', 10),
(602, 'Washing Machine', 501, 'Top Load and Front Load Washing Machines', 13),
(603, 'Fridge', 501, 'Single Door and Double Door Fridge\'s', 4),
(604, 'Mobiles', 501, 'All varieties of mobiles in one place', 14),
(605, 'Women\'s Wear', 502, 'Kurthis lehenga jeans shrugs etc', 6),
(606, 'Mens wear', 502, 'look stylish', 5),
(607, 'Kids wear', 502, 'Cute and Trendy clothing for kids', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill_details_table`
--
ALTER TABLE `bill_details_table`
  ADD PRIMARY KEY (`bill_details_id`),
  ADD KEY `bill_id` (`bill_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `bill_table`
--
ALTER TABLE `bill_table`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `buyer_id` (`buyer_id`);

--
-- Indexes for table `buyer_signup_table`
--
ALTER TABLE `buyer_signup_table`
  ADD PRIMARY KEY (`buyer_id`);

--
-- Indexes for table `category_table`
--
ALTER TABLE `category_table`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `item_table`
--
ALTER TABLE `item_table`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `seller_id` (`seller_id`),
  ADD KEY `subcategory_id` (`subcategory_id`);

--
-- Indexes for table `seller_signup_table`
--
ALTER TABLE `seller_signup_table`
  ADD PRIMARY KEY (`seller_id`);

--
-- Indexes for table `sub_category_table`
--
ALTER TABLE `sub_category_table`
  ADD PRIMARY KEY (`subcategory_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill_details_table`
--
ALTER TABLE `bill_details_table`
  MODIFY `bill_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `bill_table`
--
ALTER TABLE `bill_table`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `buyer_signup_table`
--
ALTER TABLE `buyer_signup_table`
  MODIFY `buyer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `category_table`
--
ALTER TABLE `category_table`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=503;

--
-- AUTO_INCREMENT for table `item_table`
--
ALTER TABLE `item_table`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=419;

--
-- AUTO_INCREMENT for table `seller_signup_table`
--
ALTER TABLE `seller_signup_table`
  MODIFY `seller_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sub_category_table`
--
ALTER TABLE `sub_category_table`
  MODIFY `subcategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=608;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill_details_table`
--
ALTER TABLE `bill_details_table`
  ADD CONSTRAINT `bill_details_table_ibfk_1` FOREIGN KEY (`bill_id`) REFERENCES `bill_table` (`bill_id`),
  ADD CONSTRAINT `bill_details_table_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `item_table` (`item_id`);

--
-- Constraints for table `bill_table`
--
ALTER TABLE `bill_table`
  ADD CONSTRAINT `bill_table_ibfk_1` FOREIGN KEY (`buyer_id`) REFERENCES `buyer_signup_table` (`buyer_id`);

--
-- Constraints for table `item_table`
--
ALTER TABLE `item_table`
  ADD CONSTRAINT `item_table_ibfk_1` FOREIGN KEY (`seller_id`) REFERENCES `seller_signup_table` (`seller_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `item_table_ibfk_2` FOREIGN KEY (`subcategory_id`) REFERENCES `sub_category_table` (`subcategory_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_category_table`
--
ALTER TABLE `sub_category_table`
  ADD CONSTRAINT `sub_category_table_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category_table` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
