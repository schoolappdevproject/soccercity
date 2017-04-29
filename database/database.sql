-- phpMyAdmin SQL Dump
-- version 4.6.5.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 29, 2017 at 06:34 PM
-- Server version: 5.6.34
-- PHP Version: 7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `soccercity_db`
--

CREATE DATABASE 'soccercity_db'
-- --------------------------------------------------------

--
-- Table structure for table `tel_message_data`
--

CREATE TABLE `tel_message_data` (
  `id_response` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT 'NOT NULL',
  `email` varchar(50) NOT NULL COMMENT 'NOT NULL',
  `phone` varchar(20) NOT NULL COMMENT 'NOT NULL',
  `subject` varchar(50) NOT NULL COMMENT 'NOT NULL',
  `message` varchar(500) NOT NULL COMMENT 'NOT NULL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tel_message_data`
--

INSERT INTO `tel_message_data` (`id_response`, `name`, `email`, `phone`, `subject`, `message`) VALUES
(1, 'Abhijit Roy', 'gta4roy@gmail.com', '7829712286', 'Testing message', 'Testing Message'),
(4, 'Gaurav Rao', 'gta4roy@gmail.com', '7829712286', 'Please book.a booking ', 'Booking by 9 PM 10 PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tel_message_data`
--
ALTER TABLE `tel_message_data`
  ADD PRIMARY KEY (`id_response`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tel_message_data`
--
ALTER TABLE `tel_message_data`
  MODIFY `id_response` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;