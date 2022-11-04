-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2022 at 03:49 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jaslawdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminID` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`, `username`, `password`) VALUES
(1, 'receptionist@mbt', '10Rmbt'),
(2, 'attorney@mbt', '10Ambt'),
(3, 'finance@mbt', '10Fmbt');

-- --------------------------------------------------------

--
-- Table structure for table `attorney`
--

CREATE TABLE `attorney` (
  `attorneyID` int(11) NOT NULL,
  `attorneyNames` text NOT NULL,
  `attorneySurname` text NOT NULL,
  `attorneyEmail` text NOT NULL,
  `attorneyNo` text NOT NULL,
  `userType` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attorney`
--

INSERT INTO `attorney` (`attorneyID`, `attorneyNames`, `attorneySurname`, `attorneyEmail`, `attorneyNo`, `userType`) VALUES
(1, 'werwefsf', 'zxzxczc', 'asdasd@gmail.com', '0649201028', 'Attorney');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `clientID` int(11) NOT NULL,
  `clientNames` text NOT NULL,
  `clientSurname` text NOT NULL,
  `identityNo` text NOT NULL,
  `clientEmail` text NOT NULL,
  `clientNo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`clientID`, `clientNames`, `clientSurname`, `identityNo`, `clientEmail`, `clientNo`) VALUES
(1, 'qweqwea', 'adfasdfaf', 'sdfgdfggf', 'sfdgfdg@gmail.com', '0649201028');

-- --------------------------------------------------------

--
-- Table structure for table `finance`
--

CREATE TABLE `finance` (
  `financeID` int(11) NOT NULL,
  `financeNames` text NOT NULL,
  `financeSurname` text NOT NULL,
  `financeEmail` text NOT NULL,
  `financeNo` text NOT NULL,
  `userType` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `finance`
--

INSERT INTO `finance` (`financeID`, `financeNames`, `financeSurname`, `financeEmail`, `financeNo`, `userType`) VALUES
(1, 'werwefsf', 'zxzxczc', 'asdasd@gmail.com', '0649201028', 'Finance');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `attorney`
--
ALTER TABLE `attorney`
  ADD PRIMARY KEY (`attorneyID`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`clientID`);

--
-- Indexes for table `finance`
--
ALTER TABLE `finance`
  ADD PRIMARY KEY (`financeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attorney`
--
ALTER TABLE `attorney`
  MODIFY `attorneyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `clientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `finance`
--
ALTER TABLE `finance`
  MODIFY `financeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
