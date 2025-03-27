-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2025 at 04:02 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mytinylibrarylender`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `Author_ID` int(11) NOT NULL,
  `Author_Name` varchar(155) NOT NULL,
  `Author_Email` varchar(155) NOT NULL,
  `BookQR_Code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`Author_ID`, `Author_Name`, `Author_Email`, `BookQR_Code`) VALUES
(11, '[Mr,Squidward]', '[Mr,Squidward@gmail.com]', 1),
(12, '[Kafka Asagiri and Sango Harukawa\r\n]', '[Unknown]', 2),
(13, '[Priest]', '[Priest@Gmail.Com]', 3),
(14, '[Honobu Yonezawa\r\n]', '[Honobo@Gmail.Com]', 4),
(15, '[Mo Xiang Tong Xiu]', '[Moxing@gmail.com]', 5),
(16, '[Natsu Hyuuga and Touko Shino]', '[unknown]', 6),
(17, '[Mareho Kikuishi and Tsubata Nozaki]', '[N/A]', 7);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `BookQR_Code` int(11) NOT NULL,
  `Book-Name` varchar(155) NOT NULL,
  `Author_ID` int(11) NOT NULL,
  `Author_name` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`BookQR_Code`, `Book-Name`, `Author_ID`, `Author_name`) VALUES
(1, '[Balls under My Crotch]', 11, '[Mr,Squidward]'),
(2, '[Bungo stray Dog]', 12, '[Kafka Asagiri and Sango Harukawa\r\n]'),
(3, '[Guardian]', 13, '[Priest]'),
(4, '[Hyouka\r\n]', 14, '[Honobu Yonezawa\r\n]'),
(5, '[Grandsmaster of Demonic Cultivation\r\n]', 15, '[Mo Xiang Tong Xiu\r\n]'),
(6, '[The Apothecary Diaries\r\n]', 16, '[Natsu Hyuuga and Touko Shino\r\n]'),
(7, '[Your Forma\r\n]', 17, '[Mareho Kikuishi and Tsubata Nozaki\r\n]'),
(8, '[Bungo Stray Dogs: Dead Apple\r\n]', 18, '[Kafka Asagiri and Sango Harukawa\r\n]'),
(9, '[The Worlds Finest Assassin Gets Reincarnated in Another World as an Aristrocrat\r\n]', 19, '[Rui Tsukiyo and Reia\r\n]'),
(10, '[Thousand Autumns\r\n]', 20, '[Meng Xi Shi\r\n]');

-- --------------------------------------------------------

--
-- Table structure for table `lending records`
--

CREATE TABLE `lending records` (
  `Lending_ID` int(11) NOT NULL,
  `Member_ID` int(11) NOT NULL,
  `Member_Name` varchar(155) NOT NULL,
  `Lend_Date` varchar(155) NOT NULL,
  `Return_Date` varchar(155) NOT NULL,
  `Author_ID` int(11) NOT NULL,
  `BookQR_Code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lending records`
--

INSERT INTO `lending records` (`Lending_ID`, `Member_ID`, `Member_Name`, `Lend_Date`, `Return_Date`, `Author_ID`, `BookQR_Code`) VALUES
(80, 31, '[Malupiton]', '[March 15,2025]', '[March 30,2025]', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `Member_ID` int(11) NOT NULL,
  `Member_Name` varchar(155) NOT NULL,
  `Member_Email` varchar(155) NOT NULL,
  `Member_C#` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`Member_ID`, `Member_Name`, `Member_Email`, `Member_C#`) VALUES
(31, '[Malupiton]', '[Malupiton@gmail.com]', 5009798),
(32, '[Spongebob]', '[SpongebobSquarepants@Gmail.com]', 121480969),
(33, '[Mustang]', '[Mustang@Gmail.com]', 235876325),
(34, '[jak ol liner]', '[jakjak@Gmail.com]', 4215870),
(35, '[Choox]', '[Choox.@Gmail.com]', 3725);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`Author_ID`),
  ADD KEY `BookQR_Code` (`BookQR_Code`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`BookQR_Code`),
  ADD KEY `Author_ID` (`Author_ID`);

--
-- Indexes for table `lending records`
--
ALTER TABLE `lending records`
  ADD PRIMARY KEY (`Lending_ID`),
  ADD KEY `Member_ID` (`Member_ID`),
  ADD KEY `Author_ID` (`Author_ID`),
  ADD KEY `BookQR_Code` (`BookQR_Code`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`Member_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `Author_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `BookQR_Code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `lending records`
--
ALTER TABLE `lending records`
  MODIFY `Lending_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `Member_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `author`
--
ALTER TABLE `author`
  ADD CONSTRAINT `author_ibfk_1` FOREIGN KEY (`BookQR_Code`) REFERENCES `books` (`BookQR_Code`),
  ADD CONSTRAINT `author_ibfk_2` FOREIGN KEY (`Author_ID`) REFERENCES `books` (`Author_ID`);

--
-- Constraints for table `lending records`
--
ALTER TABLE `lending records`
  ADD CONSTRAINT `BookQR_Code` FOREIGN KEY (`BookQR_Code`) REFERENCES `books` (`BookQR_Code`),
  ADD CONSTRAINT `lending records_ibfk_2` FOREIGN KEY (`Member_ID`) REFERENCES `members` (`Member_ID`),
  ADD CONSTRAINT `lending records_ibfk_3` FOREIGN KEY (`Author_ID`) REFERENCES `author` (`Author_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
