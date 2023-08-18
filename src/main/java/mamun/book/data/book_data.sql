-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2023 at 05:28 AM
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
-- Database: `book_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `book_name` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `publish_year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book_name`, `author`, `genre`, `publish_year`) VALUES
(1, 'Pather Panchali', 'Bibhutibhushan Bandyopadhyay', 'Novel', 1929),
(2, 'Shesher Kobita', 'Rabindranath Tagore', 'Novel', 1929),
(3, 'Chokher Bali', 'Rabindranath Tagore', 'Novel', 1903),
(4, 'Feluda Series', 'Satyajit Ray', 'Detective Fiction', 1965),
(5, 'Srikanta', 'Sarat Chandra Chattopadhyay', 'Novel', 1917),
(6, 'Purbo-Paschim', 'Sunil Gangopadhyay', 'Novel', 1972),
(7, 'Ghare-Baire', 'Rabindranath Tagore', 'Novel', 1916);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `id` int(11) NOT NULL,
  `publisher_name` varchar(100) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `book_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`id`, `publisher_name`, `contact_email`, `book_id`) VALUES
(1, 'Publisher1', 'publisher1@gmail.com', 2),
(2, 'Publisher2', 'publisher2@gmail.com', 1),
(3, 'Publisher3', 'publisher3@gmail.com', 3),
(4, 'Publisher4', 'publisher4@gmail.com', 5),
(5, 'Publisher5', 'publisher4@gmail.com', 6),
(6, 'Publisher6', 'publisher4@gmail.com', 4),
(7, 'Publisher7', 'publisher7@gmail.com', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
