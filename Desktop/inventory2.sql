-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 04, 2017 at 07:41 PM
-- Server version: 5.6.38-log
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_ID` int(10) NOT NULL,
  `admin_SSN` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_ID`, `admin_SSN`) VALUES
(1, 2),
(2, 4),
(3, 3),
(4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_list`
--

CREATE TABLE `employee_list` (
  `EId` int(3) NOT NULL,
  `FName` varchar(15) NOT NULL,
  `LName` varchar(15) NOT NULL,
  `emp_DOB` date NOT NULL,
  `Address` varchar(40) NOT NULL,
  `SSN` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_list`
--

INSERT INTO `employee_list` (`EId`, `FName`, `LName`, `emp_DOB`, `Address`, `SSN`) VALUES
(1, 'vineetha', 'Marikal', '1994-05-12', '328 Firwood Drive', 1234567890),
(2, 'Himabindu', 'Kurra', '1994-12-04', '351 Firwwod Drive', 1234567891),
(3, 'Vamshi', 'Maadaram', '1994-09-14', '336 Firwood Drive', 1234567892),
(4, 'Phani', 'Krishna', '1994-08-15', '345 Firwwod Drive', 1234567893),
(5, 'Aishwarya', 'Boddapati', '1993-11-03', '312 Firwood Drive', 1234567894),
(6, 'Harsha', 'Alladi', '1993-09-02', '300 FIrwood Drive', 1234567895),
(7, 'Akhila', 'Madari', '1995-09-06', '321 Firwood Drive', 1234567896),
(8, 'Sneha', 'Latha', '1996-12-01', '318 Firwood Drive', 1234567897),
(9, 'Ramya', 'Adulla', '1994-03-27', '371 Firwood Drive', 1234567898),
(10, 'Spoorthy', 'Gudiseva', '1992-02-18', '310 Firwood Drive', 1234567899),
(11, 'Bharghav', 'Katikaneni', '1992-07-31', '410 Kling Drive', 1234567810),
(12, 'Vishnu', 'Kesavamatham', '1994-09-19', '420 Kling Drive', 1234567811),
(13, 'Pradeep', 'Kethavath', '1990-02-23', '561 Oak Drive', 1234567812),
(14, 'Rudy', 'Flyer', '1994-07-15', '31 Westwing Drive', 1234567813),
(15, 'Jane', 'Smith', '1991-05-16', '92  Evanston Street', 1234567814);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `Item_ID` int(15) NOT NULL,
  `Storage_number` int(15) NOT NULL,
  `Qty` int(15) NOT NULL,
  `date` date NOT NULL,
  `Eid` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`Item_ID`, `Storage_number`, `Qty`, `date`, `Eid`) VALUES
(100, 1, 10, '2017-11-26', 15),
(102, 3, 24, '2017-11-27', 6),
(103, 1, 13, '2017-11-27', 5),
(104, 2, 12, '2017-11-27', 13),
(106, 4, 12, '2017-11-27', 7),
(107, 9, 12, '2017-11-27', 14),
(108, 10, 12, '2017-11-27', 9),
(109, 4, 21, '2017-11-27', 3),
(110, 7, 27, '2017-11-27', 3),
(111, 5, 11, '2017-11-27', 7),
(112, 9, 1, '2017-11-27', 14),
(113, 9, 6, '2017-11-27', 1),
(114, 5, 34, '2017-11-27', 5),
(115, 6, 23, '2017-11-27', 12),
(116, 9, 19, '2017-11-27', 11);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `ItemID` int(10) NOT NULL,
  `Item_name` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`ItemID`, `Item_name`) VALUES
(100, 'Potatoes'),
(101, 'pork'),
(102, 'tomato'),
(103, 'Beef'),
(104, 'Carrot'),
(105, 'Ham'),
(106, 'Lettuce'),
(107, 'Chicken'),
(108, 'Spinach'),
(109, 'Smoked Ham '),
(110, 'Turkey'),
(111, 'Lamb'),
(112, 'pepper Jack'),
(113, 'Smoked Beef'),
(114, 'Onions'),
(115, 'Sour Cream'),
(116, 'Provolone');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_ID` int(10) NOT NULL,
  `admin_ID` int(10) NOT NULL,
  `order_Date` date NOT NULL,
  `Total_Price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table has the list of orders';

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_ID`, `admin_ID`, `order_Date`, `Total_Price`) VALUES
(2301, 2, '2017-11-13', 45),
(2302, 3, '2017-11-16', 66),
(2303, 4, '2017-11-16', 29),
(2304, 5, '2017-11-22', 45),
(2305, 6, '2017-11-25', 55),
(2306, 7, '2017-11-24', 45),
(2307, 8, '2017-11-21', 35),
(2308, 9, '2017-11-23', 27),
(2309, 10, '2017-11-21', 30),
(2310, 7, '2017-11-29', 78),
(2311, 2, '2017-11-28', 20),
(2312, 4, '2017-11-14', 39),
(2313, 6, '2017-11-15', 55),
(2314, 9, '2017-11-24', 35);

-- --------------------------------------------------------

--
-- Table structure for table `order_line`
--

CREATE TABLE `order_line` (
  `ItemID` int(10) NOT NULL,
  `order_ID` int(10) NOT NULL,
  `qty` int(100) NOT NULL,
  `price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_line`
--

INSERT INTO `order_line` (`ItemID`, `order_ID`, `qty`, `price`) VALUES
(104, 2302, 11, 33),
(107, 2303, 10, 50),
(105, 2303, 21, 56),
(111, 2303, 18, 96),
(111, 2303, 1, 20),
(106, 2303, 3, 48),
(114, 2301, 11, 45),
(101, 2301, 10, 12);

-- --------------------------------------------------------

--
-- Table structure for table `storage`
--

CREATE TABLE `storage` (
  `Storage_number` int(100) NOT NULL,
  `storage_Location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `storage`
--

INSERT INTO `storage` (`Storage_number`, `storage_Location`) VALUES
(1, 'Meat'),
(2, 'Ice-cream'),
(3, 'Italian'),
(4, 'Thai'),
(5, 'Produce Cooler'),
(6, 'Fruits'),
(7, 'Veggies'),
(8, 'Cookies'),
(9, 'Bakery'),
(10, 'Cold storage'),
(11, 'Hot Storage'),
(12, 'Pops'),
(13, 'Salads'),
(14, 'Sea food');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Username` varchar(15) NOT NULL,
  `Password` text NOT NULL,
  `UserID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Username`, `Password`, `UserID`) VALUES
('admin', '*4ACFE3202A5FF5CF467898FC58AAB1D615029441', 1018320),
('superuser', '*4ACFE3202A5FF5CF467898FC58AAB1D615029441', 1018321),
('administrator', '*4ACFE3202A5FF5CF467898FC58AAB1D615029441', 1018322),
('bindu', '*4ACFE3202A5FF5CF467898FC58AAB1D615029441', 1018325),
('buckley', 'buckley', 1018326);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD KEY `fk_SSN` (`admin_SSN`);

--
-- Indexes for table `employee_list`
--
ALTER TABLE `employee_list`
  ADD PRIMARY KEY (`EId`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD KEY `fkSN` (`Storage_number`),
  ADD KEY `fkEID` (`Eid`),
  ADD KEY `Item_ID` (`Item_ID`) USING BTREE;

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`ItemID`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD KEY `order_ID` (`order_ID`),
  ADD KEY `order_ID_2` (`order_ID`);

--
-- Indexes for table `order_line`
--
ALTER TABLE `order_line`
  ADD KEY `ItemID` (`ItemID`),
  ADD KEY `fk_OID` (`order_ID`);

--
-- Indexes for table `storage`
--
ALTER TABLE `storage`
  ADD PRIMARY KEY (`Storage_number`),
  ADD UNIQUE KEY `Storage number` (`Storage_number`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `UserID` (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `storage`
--
ALTER TABLE `storage`
  MODIFY `Storage_number` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1018327;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `fk_SSN` FOREIGN KEY (`admin_SSN`) REFERENCES `employee_list` (`EId`);

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `fkEID` FOREIGN KEY (`Eid`) REFERENCES `employee_list` (`EId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkIID` FOREIGN KEY (`Item_ID`) REFERENCES `items` (`ItemID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkSN` FOREIGN KEY (`Storage_number`) REFERENCES `storage` (`Storage_number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_line`
--
ALTER TABLE `order_line`
  ADD CONSTRAINT `fkOLID` FOREIGN KEY (`ItemID`) REFERENCES `items` (`ItemID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_OID` FOREIGN KEY (`order_ID`) REFERENCES `order` (`order_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
