-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2022 at 07:06 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moviesdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `movietb`
--

CREATE TABLE `movietb` (
  `name` varchar(150) NOT NULL,
  `actors` varchar(300) NOT NULL,
  `genre` varchar(15) NOT NULL,
  `lang` varchar(15) NOT NULL,
  `movielink` varchar(500) NOT NULL,
  `posterimg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movietb`
--

INSERT INTO `movietb` (`name`, `actors`, `genre`, `lang`, `movielink`, `posterimg`) VALUES
('Bhoot Part One: The Haunted Ship', 'Vicky Kaushal,Bhoomi Pednekar,Ashutosh Rana', 'Horror', 'Hindi', '<iframe width=\"300\" height=\"200\" src=\"https://www.youtube.com/embed/ELcRnZ3kP08\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'bhoot'),
('Doctor strange:Multiverse of Madness', 'Benedict Cumberbatch,Elizabeth Olsen', 'SuperHero', 'English', '<iframe width=\"300\" height=\"200\" src=\"https://www.youtube.com/embed/aWzlQ2N6qqg\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'doctorstrange'),
('Krrish', 'Hrithik Roshan,Priyanka Chopra,Kangana Ranaut', 'SuperHero', 'Hindi', '<iframe width=\"300\" height=\"200\" src=\"https://www.youtube.com/embed/MCCVVgtI5xU\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'krish'),
('No Time to Die', 'Daniel Craig,Lea Syedoux', 'Thriller', 'English', '<iframe width=\"300\" height=\"200\" src=\"https://www.youtube.com/embed/BIhNsAtPbPI\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'notimetodie'),
('The Conjuring: The Devil Made Me Do It', 'vera farmiga,patrick wilson', 'Horror', 'English', '<iframe width=\"300\" height=\"200\" src=\"https://www.youtube.com/embed/h9Q4zZS2v1k\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'conjuring3'),
('The Hangover', 'Bradley Cooper,Zack Galifinkas', 'Comedy', 'English', '<iframe width=\"300\" height=\"200\" src=\"https://www.youtube.com/embed/tcdUhdOlz9M\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'hangover'),
('The Prestige', 'Christian Bale,Hugh Jackman,Scarlet Jhohanson', 'Drama', 'English', '<iframe width=\"300\" height=\"200\" src=\"https://www.youtube.com/embed/ELq7V8vkekI\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'theprestige'),
('The Time Travelers Wife', 'Eric Bana,Rachel McAdems', 'Romance', 'English', '<iframe width=\"300\" height=\"200\" src=\"https://www.youtube.com/embed/aoYXtKF_g1Y\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'timetravellerswife');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movietb`
--
ALTER TABLE `movietb`
  ADD PRIMARY KEY (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
