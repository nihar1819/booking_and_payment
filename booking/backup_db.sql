-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 11, 2022 at 07:56 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assamjat_new`
--
CREATE DATABASE IF NOT EXISTS `assamjat_new` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `assamjat_new`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `user_name`, `email`, `password`, `phone`, `address`, `website`) VALUES
(1, 'Administrator', 'demo@demo.com', 'WkdWdGJ3PT0= ', '8249535399', 'Chakeisihani, Bhubaneswar,  751010', '');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `cur_date` date NOT NULL,
  `ar_date` date NOT NULL,
  `dp_date` date NOT NULL,
  `adult` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `rooms` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `children2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phoneno` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `area` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tdetails` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `vdetails` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `room` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `room_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `agent_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `agent_mobileno` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `booking_status` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`id`, `room_id`, `name`, `email`, `cur_date`, `ar_date`, `dp_date`, `adult`, `rooms`, `children2`, `phoneno`, `area`, `tdetails`, `vdetails`, `room`, `room_no`, `code`, `agent_name`, `agent_mobileno`, `content`, `amount`, `status`, `booking_status`) VALUES
(1, 1, 'Nayana Bhattacharjee', 'nayana.nayana.bhattacharjee@gmail.com', '2022-03-29', '2022-04-15', '2022-04-18', '7', '3', '', '8486273436', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(2, 2, 'Madhab Mahapatra', 'assampanda@gmail.com', '2022-03-29', '2022-03-30', '2022-04-01', '5', '1', '', '9861411324', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(3, 2, 'Madhab Mahapatra', 'assampanda@gmail.com', '2022-03-29', '2022-03-30', '2022-04-01', '5', '1', '', '9861411324', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(4, 1, 'Mukesh Sabar', 'm68418@gmail.com', '2022-03-30', '2022-04-02', '2022-04-03', '10', '3', '', '9583232732', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(5, 1, 'Mukesh Sabar', 'sabarmukesh@gmail.com', '2022-03-30', '2022-04-02', '2022-04-03', '9', '3', '1', '9583232732', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'We arrive at 4 pm on 2.4.22 and leave the room at 3 pm', '', 'NA', 0),
(6, 1, 'Monjit Sarmah', 'monjits17@gmail.com', '2022-03-30', '2022-04-19', '2022-04-20', '2', '', '', '8638987145', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(7, 1, 'Monjit Sarmah', 'monjits17@gmail.com', '2022-03-30', '2022-04-19', '2022-04-20', '2', '', '', '8638987145', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(8, 2, 'Madhab Mahapatra', 'assampanda@gmail.com', '2022-03-31', '2022-04-01', '2022-04-02', '2', '1', '', '9861411324', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(9, 1, 'Monjit Sarmah', 'monjits17@gmail.com', '2022-03-31', '2022-04-19', '2022-04-20', '2', '', '', '8638987145', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(10, 2, 'MONJIT SARMAH', 'MONJITS17@GMAIL.COM', '2022-03-31', '2022-04-19', '2022-04-20', '2', '1', '', '8638987145', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(11, 1, 'Ayaskant  Sahu', 'niluticket@gmail.com', '2022-04-01', '2022-04-09', '2022-04-11', '2', '', '1', '9583548354', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(12, 1, 'Ayaskant  Sahu', 'niluticket@gmail.com', '2022-04-01', '2022-04-09', '2022-04-11', '2', '2', '1', '9583548354', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(13, 1, 'Dr.Anjali  Hazarika', 'hazarika.anjali@gmail.com', '2022-04-01', '2022-05-17', '2022-05-19', '4', '2', '0', '8638875632', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Thank you for sending email .If every thing is fine ,see you all soon. Jai Jaganath.', '', 'NA', 0),
(14, 2, '5 5', 'assampanda@gmail.com', '2022-04-01', '2022-04-02', '2022-04-03', '4', '1', '', '9861411324', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '800', 'PAID', 1),
(15, 1, 'Ayaskant  Sahu', 'niluticket@gmail.com', '2022-04-02', '2022-04-20', '2022-04-21', '4', '1', '2', '9583548354', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(16, 1, 'Ayaskant  Sahu', 'niluticket@gmail.com', '2022-04-02', '2022-04-20', '2022-04-21', '2', '1', '2', '9583548354', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(17, 1, 'Ayaskant  Sahu', 'niluticket@gmail.com', '2022-04-02', '2022-04-09', '2022-04-10', '3', '1', '1', '9583548354', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(18, 1, 'Ayaskant  Sahu', 'niluticket@gmail.com', '2022-04-02', '2022-04-14', '2022-04-15', '4', '1', '0', '9583548354', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(19, 1, 'kabul patel', 'kabul.patel@gmail.com', '2022-04-02', '2022-04-08', '2022-04-10', '2', '1', '1', '8249535399', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(20, 1, 'Ayaskant  Sahu', 'niluticket@gmail.com', '2022-04-02', '2022-04-28', '2022-04-29', '3', '1', '1', '9583548354', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(21, 1, 'Ayaskant  Sahu', 'niluticket@gmail.com', '2022-04-02', '2022-04-16', '2022-04-18', '2', '1', '2', '9583548354', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(22, 1, 'aadvik patel', 'kabul.patel@gmail.com', '2022-04-02', '2022-04-15', '2022-04-17', '2', '1', '1', '8249535399', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(23, 1, 'Ayaskant  Sahu', 'niluticket@gmail.com', '2022-04-02', '2022-04-27', '2022-04-29', '2', '1', '2', '9583548354', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(24, 1, 'Debabrata Saha', 'debabratasaha06@gmail.com', '2022-04-02', '1970-01-01', '1970-01-01', '3', '2', '2', '8638110098', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'KINDLY BOOK TWO ROOMS, REACHING PURI FROM BHUBENESWAR ON 14.04.2022 MORNING. MY SELF SERVING IN ACCOUNTANT GENERAL AUDIT ASSAM, BELTOLA, GUWAHATI. I SHALL BE GRATEFUL IF YOU KINDLY BOOK THE ROOMS. PAYMENT PARTICULAR (ADVANCE) MAY BE SENT IF U SEND ACCOUNT DETAILS. THANKS 8638110098/9435343623', '', 'NA', 1),
(25, 2, 'Satish Kumar agrahari', 'satishplanet88@gmail.com', '2022-04-02', '2022-07-24', '2022-07-28', '3', '4', '4', '9454232412', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(26, 1, 'Satish Kumar Agrahari', 'satishplanet88@gmail.com', '2022-04-02', '2022-07-24', '2022-07-28', '3', '4', '4', '9454232413', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(27, 2, 'Madhab Mahapatra', 'assampanda@gmail.com', '2022-04-02', '2022-04-02', '2022-04-03', '2', '1', '0', '9861411324', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(28, 1, 'Yogeshbhai R', 'hemangaghera@gmail.com', '2022-04-03', '2022-04-23', '2022-04-27', '3', '1', '0', '8140735575', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(29, 2, 'Ravindra  Mishra', 'sweta.9435@gmail.com', '2022-04-03', '2022-06-20', '2022-06-21', '3', '1', '0', '9373006658', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(30, 2, 'Ravindra  Mishra', 'sweta.9435@gmail.com', '2022-04-03', '2022-06-20', '2022-06-22', '3', '1', '0', '9373006658', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(31, 1, 'Riju Raja', 'rriju134@gmail.com', '2022-04-04', '2022-04-14', '2022-04-16', '2', '1', '0', '9101226374', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(32, 1, 'Madhav mohapatra', 'assampanda@gmail.com', '2022-04-04', '2022-04-23', '2022-04-24', '2', '1', '1', '8917206950', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 1),
(33, 1, 'Shounak Dey', 'shounakdey995@gmail.com', '2022-04-04', '2022-04-15', '2022-04-17', '2', '1', '0', '7976663149', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(34, 1, 'Yogeshbhai R', 'hemangaghera@gmail.com', '2022-04-05', '2022-04-23', '2022-04-27', '3', '1', '1', '8140735575', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(35, 1, 'Yogeshbhai Rajput', 'hemangaghera@gmail.com', '2022-04-05', '2022-04-23', '2022-04-27', '3', '1', '1', '8140735575', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(36, 1, 'Keshab Sharma', 'kcsharma123.ks@gmail.com', '2022-04-05', '2022-05-14', '2022-05-17', '2', '1', '0', '9864031095', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Temple view room please.', '', 'NA', 0),
(37, 1, 'Keshab Sharma', 'kcsharma123.ks@gmail.com', '2022-04-05', '2022-05-14', '2022-05-15', '2', '1', '0', '9864031095', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Temple view room please.', '1200', 'PAID', 1),
(38, 1, 'Vijaykumar Anandram Rohra', 'rvt270@gmail.com', '2022-04-05', '2022-06-30', '2022-07-02', '1', '1', '0', '9819087373', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(39, 1, 'Yogeshbhai Rajput', 'hemangaghera@gmail.com', '2022-04-06', '2022-04-23', '2022-04-27', '3', '1', '1', '8140735575', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '4800', 'PAID', 1),
(40, 1, 'BIJOY AYYAGARI', 'a@rediffmail.com', '2022-04-07', '2022-04-28', '2022-04-29', '3', '1', '0', '9885588558', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(41, 1, 'BIJOY AYYAGARI', 'a@rediffmail.com', '2022-04-07', '2022-04-28', '2022-04-29', '3', '2', '0', '9885588558', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(42, 1, 'BIJOY AYYAGARI', 'a@rediffmail.com', '2022-04-07', '2022-04-28', '2022-04-29', '3', '2', '0', '9885588558', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(43, 1, 'BIJOY AYYAGARI', 'a@rediffmail.com', '2022-04-07', '2022-04-13', '2022-04-15', '3', '2', '0', '9885588558', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(44, 1, 'BIJOY AYYAGARI', 'a@rediffmail.com', '2022-04-07', '2022-04-08', '2022-04-09', '0', '2', '0', '9885588558', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(45, 2, 'BIJOY AYYAGARI', 'a@rediffmail.com', '2022-04-07', '2022-04-13', '2022-04-15', '0', '2', '0', '9885588558', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(46, 1, 'BIJOY AYYAGARI', 'abijoy@rediffmail.com', '2022-04-07', '2022-04-13', '2022-04-15', '0', '2', '0', '9437525868', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(47, 1, 'VEMIREDDY SAMBASIVAREDDY', 's.a.vemireddy@gmail.com', '2022-04-08', '2022-04-15', '2022-04-16', '3', '1', '1', '8884223399', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(48, 1, 'BIJOY AYYAGARI', 'abijoy@rediffmail.com', '2022-04-08', '2022-04-13', '2022-04-15', '0', '2', '0', '9437525868', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(49, 1, 'BIJOY AYYAGARI', 'abijoy@rediffmail.com', '2022-04-08', '2022-04-13', '2022-04-15', '0', '2', '0', '9437525868', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(50, 2, 'Shashank Dwivedi', 'anudwivedi2008@gmail.com', '2022-04-09', '2022-04-10', '2022-04-11', '2', '1', '0', '7202849140', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '800', 'PAID', 1),
(51, 1, 'SAUVIK KUMAR GOHAIN', 'sauvik10rules@gmail.com', '2022-04-13', '2022-04-14', '2022-04-15', '2', '1', '0', '8822161100', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'For Darshan of Lord Jagannath ', '1200', 'PAID', 1),
(52, 1, 'Abhilash  Nanda', 'abhilashnanda149@gmail.com', '2022-04-13', '2022-05-14', '2022-05-15', '3', '1', '0', '7022318842', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(53, 1, 'Abhilash Nanda', 'abhilashnanda149@gmail.com', '2022-04-13', '2022-05-14', '2022-05-15', '3', '1', '0', '7022318842', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '1200', 'PAID', 1),
(54, 1, 'Pritish Kumar Biswas', 'pkumarbiswas90@gmail.com', '2022-04-13', '2022-05-03', '2022-05-07', '2', '1', '0', '8617483629', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Actual checkout on 6/5/2022 evening ', '', 'NA', 0),
(55, 2, 'Krishna Mohan Tiwari Tiwari', 'krishnamohan.tiwari008@gmail.com', '2022-04-14', '2022-04-23', '2022-04-24', '2', '1', '0', '9898117363', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Book', '', 'NA', 0),
(56, 1, 'PRAJAPATI ASHOK BHAI HAMIRBHAI', 'PANGUP2001IN@GMAIL.COM', '2022-04-14', '2022-04-18', '2022-04-22', '1', '1', '0', '9818547974', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'DELUXE AC ROOM FOR 01 PERSON FROM 18 APRIL 2022 ~ 22 APRIL 2022', '', 'NA', 0),
(57, 2, 'Girija Mishra', 'srik5141@gmail.com', '2022-04-14', '2022-04-15', '2022-04-16', '2', '1', '0', '8249416499', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(58, 2, 'Girija Mishra', 'srik5141@gmail.com', '2022-04-14', '2022-04-15', '2022-04-16', '2', '1', '0', '8249416499', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '800', 'PAID', 1),
(59, 1, 'PRAJAPATI ASHOK BHAI  HAMIRBHAI', 'PANGUP2001IN@GMAIL.COM', '2022-04-14', '2022-04-18', '2022-04-22', '1', '1', '0', '9818547974', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'DELUXE AC ROOM FOR 01 PERSON FROM 18 APRIL 2022 ~21 APRIL2022 \r\nCHECK OUT DATE 22 APRIL 2022', '', 'NA', 0),
(60, 1, 'PRAJAPATI ASHOK BHAI  HAMIRBHAI', 'PANGUP2001IN@GMAIL.COM', '2022-04-14', '2022-04-18', '2022-04-21', '1', '1', '0', '9818547974', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'DELUXE AC ROOM FOR 01 PERSON FROM 18 APRIL 2022 ~21 APRIL2022 \r\nCHECK OUT DATE 22 APRIL 2022', '', 'NA', 0),
(61, 1, 'PRAJAPATI ASHOK BHAI  HAMIRBHAI', 'PANGUP2001IN@GMAIL.COM', '2022-04-14', '2022-04-18', '2022-04-20', '1', '1', '0', '9818547974', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(62, 1, 'Rajendra Gupta', 'vipinbansal2008@gmail.com', '2022-04-15', '2022-05-23', '2022-05-25', '0', '3', '0', '9887060831', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(63, 1, 'Manas Kanti Baral', 'csemanas@gmail.com', '2022-04-21', '2022-04-30', '2022-05-02', '2', '1', '1', '9830432727', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'we will check in late on 30th April', '2400', 'PAID', 1),
(64, 1, 'Praajesh Deb', 'prajeshkumardeb@gmail.com', '2022-04-25', '2022-05-10', '2022-05-11', '3', '1', '0', '9862466061', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '     I AM VISITING PURI ON 10.05.2022 EARLY IN THE MORING FROM GUWAHAATI, ASSAM ALONG WITH MY WIFE AND SON AND REQUEST YOU TO KINDLY BOOK ROOM AS MENTIONED ABOVE.', '', 'NA', 0),
(65, 1, 'Biprajit  Seal', 'biprajit.seal@gmail.com', '2022-04-25', '2022-05-07', '2022-05-10', '3', '2', '2', '9706067015', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Will be visiting Puri for Jaghnath Darshan with my Family & Parent for this reason required Two AC rooms . Please  Confirm your Booking.\r\nBiprajit Seal\r\nGuwahati. Assam.\r\n', '', 'NA', 0),
(66, 2, 'Sanjay kumar Agarwal', 'rahulkragarwal1999@gmail.com', '2022-04-26', '2022-05-10', '2022-05-12', '2', '1', '0', '9954843973', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(67, 1, 'Amarendra Sarmah', 'dhrubajitsarma123@gmail.com', '2022-04-26', '2022-05-24', '2022-05-26', '3', '1', '0', '8811808316', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '2400', 'PAID', 1),
(68, 2, 'Swapan Debnath', 'swapan_debnath@engineer.com', '2022-04-28', '2022-07-06', '2022-07-09', '2', '1', '2', '9435147960', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'We want to visit Puri from Guwahati', '', 'NA', 1),
(69, 2, 'Swapan Debnath', 'swapan_debnath@engineer.com', '2022-04-28', '2022-07-06', '2022-07-09', '2', '1', '2', '9435147960', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'We want to visit Puri from Guwahati on 6th July 22 at 7 AM  to 9th July 2022', '2400', 'PAID', 1),
(70, 2, 'Manoj Pradhan', 'pradhanmanoj.33@gmail.com', '2022-04-30', '2022-04-30', '2022-04-30', '2', '1', '1', '9861426733', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(71, 2, 'Manoj Pradhan', 'pradhanmanoj.33@gmail.com', '2022-04-30', '2022-04-30', '2022-05-01', '2', '1', '1', '9861426733', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '800', 'PAID', 1),
(72, 1, 'K K  DASMAHAPATRA', 'UTKAL.TRAVEL@GMAIL.COM', '2022-05-05', '2022-05-18', '2022-05-19', '2', '1', '0', '9437139033', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'I NEED CLEAN ROOM WITH ATTACHED BATHROOM', '', 'NA', 0),
(73, 1, 'SOUMAN  PAL', 'soumanpal2883@gmail.com', '2022-05-06', '2022-07-28', '2022-07-30', '3', '1', '1', '7002953524', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(74, 1, 'K K  DASMAHAPATRA', 'utkal.travel@gmail.com', '2022-05-07', '2022-05-18', '2022-05-20', '2', '1', '0', '9437139033', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'please confirm my Rooms and provide me a good room', '', 'NA', 0),
(75, 1, 'THIRUMANGAI MANNAN E', 'mailpriyat@rediffmail.com', '2022-05-07', '2022-05-09', '2022-05-10', '2', '1', '0', '8248424453', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'SENIOR CITIZENS', '1200', 'PAID', 0),
(76, 2, 'Chandan  Chakraborty ', 'chandannew2014@gmail.com', '2022-05-10', '2022-07-01', '2022-07-03', '2', '1', '0', '9064230882', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 1),
(77, 2, 'SHASHI  DARSHAN ', 'shashi.darshan171808@gmail.com', '2022-05-11', '2022-05-12', '2022-05-14', '3', '1', '1', '9973540997', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(78, 1, 'Diganta Borah', 'digantakumarb@gmail.com', '2022-05-13', '2022-07-02', '2022-07-05', '0', '3', '0', '9435152567', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 1),
(79, 1, 'Diganta Borah', 'digantakumarb@gmail.com', '2022-05-13', '2022-07-02', '2022-07-05', '3', '1', '9', '9435152567', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 1),
(80, 2, 'Diganta Borah', 'digantakumarb@gmail.com', '2022-05-13', '2022-06-29', '2022-07-03', '0', '3', '0', '9435152567', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Kindly confirm the availabilities of non AC Room', '', 'NA', 1),
(81, 2, 'Chandrashekhar Tambat', 'girijatambat67@gmail.com', '2022-05-15', '2022-05-18', '2022-05-20', '2', '1', '0', '9819137270', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 1),
(82, 1, 'Chandrashekhar Tambat', 'girijatambat67@gmail.com', '2022-05-15', '2022-05-18', '2022-05-20', '2', '1', '0', '9819137270', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 1),
(83, 1, 'RABINDRA NATH PANDEY', 'er.ajitesh@gmail.com', '2022-05-16', '2022-05-16', '2022-05-18', '2', '1', '0', '9430293061', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'The guests will arrive puri station at 6 pm and then will proceed to the guest house for check in', '2400', 'PAID', 1),
(84, 1, 'Nihali Baruah', 'nihalibaruah66@gmail.com', '2022-05-16', '2022-05-23', '2022-05-26', '3', '1', '0', '9116680300', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 1),
(85, 1, 'NIHALI BARUAH', 'nihalibaruah66@gmail.com', '2022-05-17', '2022-05-23', '2022-05-26', '3', '1', '0', '8638244182', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '3600', 'PAID', 1),
(86, 2, 'Anju  Das', '68anjudas@gmail.com', '2022-05-19', '2022-06-30', '2022-07-02', '3', '1', '0', '9101469644', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '1600', 'PAID', 1),
(87, 1, 'Nihar Ranjan Panda', 'nihar.tilupanda@gmail.com', '2022-05-20', '2022-05-21', '2022-05-24', '2', '1', '1', '9764289531', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'I have one 8 years old daughter', '', 'NA', 0),
(88, 1, 'Nihar Ranjan Panda', 'nihar.tilupanda@gmail.com', '2022-05-20', '2022-05-21', '2022-05-23', '2', '1', '1', '9764289531', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(89, 1, 'Nihar Ranjan Panda', 'nihar.tilupanda@gmail.com', '2022-05-20', '2022-05-21', '2022-05-24', '2', '1', '1', '9764289531', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '3600', 'PAID', 1),
(90, 1, 'Soumya Das', 'srdas.mbj@gmail.com', '2022-05-21', '2021-05-22', '2022-05-22', '3', '1', '0', '7008205874', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(91, 2, 'Soumya Das', 'srdas.mbj@gmail.com', '2022-05-21', '2022-05-21', '2022-05-22', '2', '1', '0', '7008205874', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(92, 2, 'Soumya Das', 'srdas.mbj@gmail.com', '2022-05-21', '2022-05-21', '2022-05-22', '3', '1', '0', '7008205874', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(93, 1, 'Ashok  Gupta', 'fennygupta33@gmail.com', '2022-05-21', '2022-05-25', '2022-05-26', '2', '1', '0', '9049844724', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'We need one Ac room.', '', 'NA', 0),
(94, 2, 'Manoj  Kumar', 'manojkumar5143dipu@gmail.com', '2022-05-21', '2022-05-22', '2022-05-24', '3', '2', '0', '9348082467', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Check in 3-4pm \r\nCheck out  3-4pm', '', 'NA', 0),
(95, 1, 'Timir Dey', 'timirdey16@gmail.com', '2022-05-22', '2022-07-11', '2022-07-15', '3', '2', '1', '9435148502', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Dear Sir We are a family of 3adults and 1 child (14yrs) and we would need 2 AC suites for the abovw mentioned  dates \r\nThank you', '9600', 'PAID', 1),
(96, 1, 'Saurabh Bhattacharya', 'babu.saurabh@gmail.com', '2022-05-23', '2022-05-28', '2022-05-29', '2', '1', '1', '8770763927', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Arriving on 28/5/2022 by DURG-PURI EXPRESS (18426) \r\narriving time 9:00AM\r\nDeparture on 29/5/2022 by 6:00pm', '', 'NA', 0),
(97, 1, 'Saurabh  Bhattacharya', 'babu.saurabh@gmail.com', '2022-05-24', '2022-05-28', '2022-05-29', '2', '1', '1', '9827927604', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Want balcony / window towards temple', '1200', 'PAID', 1),
(98, 1, 'Ashok  gupta', 'fennygupta33@gmail.com', '2022-05-24', '2022-05-24', '2022-05-25', '2', '1', '0', '9049844724', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(99, 1, 'Padmanav  Dhal', 'padmanav2007@gmail.com', '2022-05-24', '2024-04-28', '2024-04-29', '1', '1', '0', '9438211045', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Early check in required ', '', 'NA', 0),
(100, 2, 'Bishnu Priya  Das', 'vishnupriyadas2648@gmail.com', '2022-05-24', '2022-05-24', '2022-05-25', '1', '1', '0', '7854045744', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '800', 'PAID', 1),
(101, 1, 'Chandrakant Kar', 'spicyck@gmail.com', '2022-05-24', '2022-05-25', '2022-05-26', '3', '1', '0', '7978411677', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(102, 1, 'bhargab  sarmah', 'sarmabhargab@gmail.com', '2022-05-24', '2022-10-03', '2022-10-06', '3', '1', '0', '6002191184', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(103, 2, 'Sudipta Kumar Bose', 'sudipta1380@gmail.com', '2022-05-26', '2022-06-01', '2022-06-05', '3', '1', '0', '9874787851', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Please arrange large bed', '', 'NA', 0),
(104, 2, 'Md Newaz Sharif', 'fordifferentpeople@gmail.com', '2022-05-26', '2022-05-28', '2022-06-01', '2', '2', '1', '9851034440', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'I want to book hotel for puri trip.', '', 'NA', 0),
(105, 2, 'Aditya Ayushman Nayak', 'adityaayushmannayak@gmail.com', '2022-05-26', '2022-07-08', '2022-07-09', '3', '1', '0', '9114335765', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(106, 1, 'Aditya Ayushman Nayak', 'adityaayushmannayak@gmail.com', '2022-05-26', '2022-07-08', '2022-07-09', '3', '1', '0', '9114335765', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '1200', 'PAID', 1),
(107, 1, 'SHRIKANT  ATREYA', 'shrikantatreya@yahoo.com', '2022-05-27', '2022-05-28', '2022-05-30', '3', '1', '1', '9413361201', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Jai jagnatha', '2400', 'PAID', 1),
(108, 1, 'Pramod  Kumar', 'anujkumar17noida@gmail.com', '2022-05-28', '2022-06-07', '2022-06-09', '2', '1', '0', '9810613209', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(109, 1, 'Pramod  Kumar', 'anujkumar17noida@gmail.com', '2022-05-28', '2022-06-07', '2022-06-09', '2', '1', '0', '9810613209', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '2400', 'PAID', 1),
(110, 1, 'Arunava Dutta', 'tok2joy@gmail.com', '2022-05-28', '2022-05-29', '2022-05-30', '3', '2', '0', '7869547194', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Please allot rooms in same floor', '2400', 'PAID', 1),
(111, 1, 'Ravi Chourasia', 'akch80@gmail.com', '2022-05-28', '2022-06-03', '2022-06-04', '2', '3', '3', '7738021444', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '6 Adults 1 Teenager and 3 Childrens', '', 'NA', 0),
(112, 1, 'Ravi Chourasia', 'akch80@gmail.com', '2022-05-28', '2022-06-03', '2022-06-04', '2', '3', '0', '7738021444', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '6 Adults 1 Teenager and 3 Kids', '3600', 'PAID', 1),
(113, 2, 'RAM TIWARI', 'rnt04121970@gmail.com', '2022-05-28', '2022-04-06', '2022-05-06', '3', '1', '0', '7042057291', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'We will be reaching on 04 June 2022 around 1800 hrs and will be leaving around 1900 hrs on 05 June 2022', '', 'NA', 0),
(114, 2, 'RAM TIWARI', 'rnt04121970@gmail.com', '2022-05-28', '2022-06-04', '2022-06-05', '3', '1', '0', '7042057291', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'We will be reaching on 1800 hrs on 04 June 2022 and will be leaving on 05 June 2022 on 1900 hrs.', '800', 'PAID', 1),
(115, 1, 'Sarada Samal', 'sarada.samal@gmail.com', '2022-05-30', '2022-07-08', '2022-07-10', '2', '1', '0', '8108003312', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(116, 1, 'Subhendra Kumar Samal', 'samalamrita25@gmail.com', '2022-05-30', '2022-07-09', '2022-07-10', '2', '1', '0', '9556433325', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(117, 1, 'Subhendra Kumar SAMAL', 'samalamrita25@gmail.com', '2022-05-30', '2022-07-09', '2022-07-10', '2', '1', '0', '9556433325', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(118, 1, 'Sarada Samal', 'sarada.samal@gmail.com', '2022-05-31', '2022-07-08', '2022-07-10', '2', '1', '0', '8108003312', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(119, 1, 'Subhendra Kumar Samal', 'sarada.samal@gmail.com', '2022-05-31', '2022-07-09', '2022-07-11', '2', '1', '0', '8108003312', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Room Booking', '2400', 'PAID', 0),
(120, 2, 'Mahendra kumar singh', 'singhdebashish23may@gmail.com', '2022-05-31', '2022-06-17', '2022-06-19', '2', '1', '0', '9421783265', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(121, 2, 'Mahendra kumar singh', 'singhdebashish23may@gmail.com', '2022-05-31', '2022-06-17', '2022-06-19', '2', '1', '0', '9421783265', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(122, 1, 'durga prasad panda', 'prasaddpanda@yahoo.com', '2022-06-02', '2022-06-07', '2022-06-08', '3', '1', '1', '7978598244', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'jay jagannath,\r\ncan an AC room be booked for the above period?\r\nthank you in advance', '', 'NA', 0),
(123, 1, 'durga prasad panda', 'prasaddpanda@yahoo.com', '2022-06-02', '2022-06-07', '2022-06-09', '3', '1', '1', '7978598244', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'jay jagannath, please book  a room for the above .\r\nthank you in advance', '', 'NA', 0),
(124, 1, 'Sreejit Halder', 'calcutta2014@YAHOO.IN', '2022-06-04', '2022-08-02', '2022-08-04', '2', '2', '1', '8961356700', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(125, 2, 'Sushil Sharma', 'priyankasharma2909@gmail.com', '2022-06-04', '2022-06-07', '2022-06-08', '3', '1', '0', '9833904430', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '800', 'PAID', 1),
(126, 2, 'Vijaykumar Anandram ROHRA', 'rvt270@gmail.com', '2022-06-04', '2022-06-30', '2022-07-02', '1', '1', '0', '9819087373', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(127, 2, 'Vijaykumar Anandram ROHRA', 'rvt270@gmail.com', '2022-06-04', '2022-06-30', '2022-07-02', '1', '1', '0', '9819087373', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '30-06-2022-TIME 18-00-19-00', '1600', 'PAID', 0),
(128, 1, 'j Acharya', 'jyoti@gmail.com', '2022-06-05', '2022-07-01', '2022-07-02', '1', '1', '1', '8917206752', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(129, 2, 'j Acharya', 'jyoti@gmail.com', '2022-06-05', '2022-07-01', '2022-07-02', '1', '1', '2', '8917206752', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(130, 1, 'Dilip Kumar  Roy', 'droy.corel@gmail.com', '2022-06-05', '2022-07-14', '2022-07-16', '2', '1', '0', '9433914692', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(131, 1, 'S basisth', 'shyam3847@gmail.com', '2022-06-05', '2022-06-18', '2022-06-21', '2', '1', '0', '8802697956', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(132, 2, 'Mukesh Shukla', 'rahulsingh9594765543@gmail.com', '2022-06-05', '2022-06-23', '2022-06-25', '3', '1', '0', '9768889020', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(133, 2, 'Mukesh  Shukla', 'rahulsingh9594765543@gmail.com', '2022-06-05', '2022-06-23', '2022-06-25', '3', '1', '0', '9768889020', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(134, 2, 'Mukesh shukla', 'mailme.mukesh321@gmail.com', '2022-06-06', '2022-06-23', '2022-06-25', '3', '1', '0', '8655443374', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(135, 1, 'Subhasish Kar Mahapatra', 'webdeveloper2u@gmail.com', '2022-06-06', '2022-06-08', '2022-06-09', '3', '1', '0', '8240326564', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(136, 1, 'Arun Kr  Banik', 'devrajbanik79@gmail.com', '2022-06-06', '2022-06-28', '2022-06-29', '2', '1', '0', '9706112108', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Respected Sir  My father and my mother in law wants to stay for rathyatra kindly give on double room for 4days.', '', 'NA', 0),
(137, 1, 'Subhasish Kar Mahapatra', 'webdeveloper2u@gmail.com', '2022-06-06', '2022-06-08', '2022-06-09', '3', '1', '0', '8240326564', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '1200', 'PAID', 1),
(138, 2, 'SURESH BABU SHRAMA', 'sharmabrijesh46806@gmail.com', '2022-06-07', '2022-06-11', '2022-06-13', '2', '1', '0', '9412615052', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'sir i want to book a non ac room with indian toilet. please tell me what is the procedure for this. thank you', '1600', 'PAID', 1),
(139, 1, 'Debaprakash Mishra', 'debaprakashmishra724@gmail.com', '2022-06-07', '2022-06-11', '2022-06-12', '3', '1', '1', '7846837226', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(140, 1, 'kabul Patel', 'kabul.patel@gmail.com', '2022-06-07', '2022-07-29', '2022-07-30', '1', '1', '0', '8249535399', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(141, 1, 'Vivek Raj', 'sriguruharikrupa@gmail.com', '2022-06-08', '2022-06-08', '2022-06-18', '3', '1', '1', '6379791017', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Need good room', '', 'NA', 0),
(142, 1, 'Pratul  Kalita', 'pratulaec@gmail.com', '2022-06-08', '2022-10-04', '2022-10-07', '2', '1', '1', '9864049249', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Dear sir, l am from Assam. I am going to Puri to pray at Jagannath Mahaprabhu with my family and will reach Puri on 4th October,2022 in the morning. We will return on 6th October,2022 in the night at about 10PM. Please book one AC Deluxe room', '3600', 'PAID', 1),
(143, 1, 'Himadri  Chakraborty ', 'hment2020@gmail.com', '2022-06-08', '2022-08-11', '2022-08-15', '2', '3', '0', '9748915232', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(144, 1, 'Himadri  Chakraborty ', 'hment2020@gmail.com', '2022-06-08', '2022-08-11', '2022-08-15', '0', '3', '0', '9748915232', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(145, 1, 'Chandan Narzary', 'chandanghy@gmail.com', '2022-06-08', '2022-08-11', '2022-08-13', '3', '1', '1', '9435868173', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(146, 1, 'Ayaskant  Sahu', 'niluticket@gmail.com', '2022-06-11', '2022-06-18', '2022-06-19', '0', '1', '4', '9583548354', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(147, 1, 'Ayaskant  Sahu', 'niluticket@gmail.com', '2022-06-11', '2022-06-18', '2022-06-19', '3', '1', '1', '9583548354', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(148, 1, 'SAIBAL SEN', 'saibalsen123@gmail.com', '2022-06-12', '2022-06-16', '2022-06-17', '1', '1', '0', '7896098995', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(149, 2, 'Kuldip  Goswami ', 'kgswmi@gmail.com', '2022-06-12', '2022-07-12', '2022-07-13', '2', '1', '1', '8876522459', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 1),
(150, 2, 'Kuldip  Goswami ', 'kgswmi@gmail.com', '2022-06-12', '2022-07-12', '2022-07-14', '2', '1', '1', '8876522459', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 1),
(151, 2, 'Nikhil  Agrawal', 'nikhilagrawal28591@gmail.com', '2022-06-12', '2022-07-13', '2022-07-17', '3', '1', '0', '9890954741', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 1),
(152, 2, 'Rajendra Agrawal', 'nikhilagrawal28591@gmail.com', '2022-06-12', '2022-07-13', '2022-07-17', '3', '1', '0', '8080208461', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Family', '3200', 'PAID', 1),
(153, 2, 'Sonali Thombare', 'thombaresonali300@gmail.com', '2022-06-16', '2022-06-28', '2022-07-02', '3', '1', '0', '9552872765', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(154, 2, 'Dinesh Shukla', 'mailme.professional@yahoo.com', '2022-06-18', '2022-07-22', '2022-07-24', '3', '1', '0', '9870498950', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(155, 2, 'Suparna Chakraborty', 'shfsssoh@gmail.com', '2022-06-18', '2022-07-12', '2022-07-13', '3', '2', '0', '3567899832', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(156, 2, 'GH ok v  Nvgj', 'hmm@gmail.com', '2022-06-18', '2022-07-12', '2022-07-13', '3', '1', '0', '864874368', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Bgfjil', '', 'NA', 0),
(157, 1, 'surya singh', '1rinku1980@gmail.com', '2022-06-19', '2022-06-29', '2022-07-02', '3', '1', '0', '9756203484', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'best wishies for you,i need room with ac for my wife and sister for purpose darshan of shri jaganath ji', '', 'NA', 0),
(158, 2, 'rakesh kumar', 'rverma0192@gmail.com', '2022-06-20', '2022-07-19', '2022-07-21', '2', '1', '0', '7888544298', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(159, 1, 'K K  Singh', 'depika31@gmail.com', '2022-06-20', '2022-06-28', '2022-07-01', '2', '1', '0', '7004749379', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Please confirm if rooms are available on these dates', '', 'NA', 0),
(160, 1, 'Kuldip  Goswami ', 'kgswmi@gmail.com', '2022-06-22', '2022-07-12', '2022-07-15', '2', '1', '1', '8876522459', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(161, 2, 'Devendra  Shukla ', 'saddev2009@gmail.com', '2022-06-22', '2022-08-12', '2022-08-13', '3', '2', '1', '9405030332', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(162, 1, 'BIREN HAZRA', 'drbhazra2000@gmail.com', '2022-06-25', '2022-06-28', '2022-07-13', '2', '1', '0', '9064397084', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(163, 1, 'Samir Bhattacharjya', 'samir.bhattacharjya@gmail.com', '2022-06-26', '2022-08-06', '2022-08-09', '2', '1', '2', '9954000533', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '7 Adult & 2 Nos Child  2 Room needed', '', 'NA', 0),
(164, 2, 'JITENDER SHARMA', 'jitvats@gmail.com', '2022-06-27', '2022-06-29', '2022-07-02', '2', '1', '0', '9968989496', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '2400', 'PAID', 0),
(165, 2, 'kabul Patel', 'kabul@gmail.com', '2022-06-27', '2022-06-28', '2022-07-01', '2', '1', '0', '8249535399', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(166, 1, 'Mukul Dutta', 'hiiammukul@gmail.com', '2022-06-28', '2022-07-27', '2022-07-28', '3', '1', '1', '7577896237', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Shall I get extra bed because we are 3 person.', '', 'NA', 0),
(167, 1, 'Dewang Vadnerkar', 'dewangsmart@gmail.com', '2022-06-29', '2022-09-29', '2022-10-01', '3', '1', '1', '7990609202', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Required neat & clean ac rooms', '', 'NA', 0),
(168, 1, 'Dewang Vadnerkar', 'dewangsmart@gmail.com', '2022-06-29', '2022-09-29', '2022-09-30', '3', '1', '1', '7990609202', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Required neat & clean ac rooms', '1200', 'PAID', 0),
(169, 1, 'Manendra  Lukhey', 'dewangsmart@gmail.com', '2022-06-29', '2022-09-29', '2022-09-30', '2', '1', '1', '7990609202', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Required neat & clean ac room', '1200', 'PAID', 0),
(170, 2, 'snehlata  singh', 'snehlata.singh4@gmail.com', '2022-06-29', '2022-10-28', '2022-10-29', '3', '5', '6', '9067506544', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(171, 2, 'Biswajit Hota', 'pintu.hota@gmail.com', '2022-07-01', '2022-08-16', '2022-08-17', '3', '2', '1', '7008212141', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Our Family members - 6 Adults & 2 Children\r\nPlease book 2 rooms ', '', 'NA', 0),
(172, 2, 'Kamal  Barman ', 'kamalbarman69@gmail.com', '2022-07-03', '2022-10-15', '2022-10-17', '3', '3', '1', '8472950240', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Please confirm room or price.\r\nWe are coming from Nalbari, Assam.', '', 'NA', 0),
(173, 2, 'Kuldip  Goswami ', 'kgswmi@gmail.com', '2022-07-03', '2022-07-12', '2022-07-15', '2', '1', '1', '8876522459', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(174, 2, 'Kuldip  Goswami ', 'kgswmi@gmail.com', '2022-07-04', '2022-07-12', '2022-07-15', '2', '1', '1', '8876522459', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '2400', 'PAID', 1),
(175, 2, 'Rakesh Verma', 'rverma0192@gmail.com', '2022-07-05', '2022-07-19', '2022-07-22', '2', '1', '0', '7888544298', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Book..thanks', '', 'NA', 0),
(176, 2, 'Raju  Banerjee ', 'raju.banerjee1986@gmail.com', '2022-07-09', '2022-10-03', '2022-10-06', '2', '1', '1', '9056745875', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Frist boking now\r\n', '', 'NA', 0),
(177, 2, 'Venkata Krishna Cheeti', 'cheeti.venkat@gmail.com', '2022-07-11', '2022-08-12', '2022-08-15', '1', '1', '0', '9490217459', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(178, 1, 'venkata krishna cheeti', 'cheeti.venkat@gmail.com', '2022-07-11', '2022-08-12', '2022-08-15', '3', '1', '0', '9490217459', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(179, 1, 'Sanchita Das', 'sanchita90.rinka@gmail.com', '2022-07-13', '2022-08-16', '2022-08-18', '2', '1', '0', '8250600337', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(180, 2, 'CHANDRIMA CHOUDHURY', 'chandrima.choudhury500@gmail.com', '2022-07-13', '2022-12-24', '2022-12-27', '3', '1', '1', '9101510107', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(181, 1, 'Venkata Krishna Cheeti', 'cheeti.venkat@gmail.com', '2022-07-14', '2022-07-26', '2022-07-28', '3', '1', '0', '9490217459', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(182, 1, 'Sanchita Das', 'sanchita90.rinka@gmail.com', '2022-07-14', '2022-08-16', '2022-08-19', '2', '1', '0', '8250600337', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(183, 1, 'Abhisek  Sengupta ', 'abhi.biltu@gmail.com', '2022-07-16', '2022-07-23', '2022-07-25', '2', '1', '0', '9775229121', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Booking', '2400', 'PAID', 1),
(184, 2, 'Nayanmoni Das', 'dasnayanmoni24@gmail.com', '2022-07-19', '2022-10-04', '2022-10-06', '2', '1', '2', '7891383635', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'I am from Assam I want a room ', '', 'NA', 0),
(185, 2, 'Ramesh pati', 'patiramesh87@gmail.com', '2022-07-20', '2022-07-22', '2022-07-23', '2', '1', '0', '8951574902', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Will checkin around 1PM and checkout at 9:30 AM next day.', '', 'NA', 0),
(186, 1, 'Parash Goswami', 'parakh.jrt@gmail.com', '2022-07-21', '2022-10-01', '2022-10-05', '3', '2', '0', '9101460964', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(187, 2, 'Gautam Kumar  Dutta ', 'gautamdutta.agvb@gmail.com', '2022-07-23', '2022-10-06', '2022-10-09', '2', '1', '0', '9101251013', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Husband and wife ', '', 'NA', 0),
(188, 1, 'Parash Goswami', 'parakh.jrt@gmail.com', '2022-07-25', '2022-10-02', '2022-10-05', '3', '1', '0', '9101460964', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '4 adult and one 7 yeas old  child  will visit puri ', '', 'NA', 0),
(189, 2, 'Reema Dhar', 'reemadhar@gmail.com', '2022-07-26', '2022-10-22', '2022-10-25', '2', '1', '0', '8800093190', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 1),
(190, 2, 'Reema Dhar', 'reemadhar@gmail.com', '2022-07-26', '2022-10-22', '2022-10-25', '2', '2', '0', '8800093190', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '4800', 'PAID', 1),
(191, 2, 'Abhinav Pal', 'abhinavpal786@gmail.com', '2022-07-28', '2022-10-25', '2022-10-27', '1', '1', '0', '8953302799', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 1),
(192, 1, 'Chandan Narzary', 'chandanghy@gmail.com', '2022-07-28', '2022-08-12', '2022-08-13', '3', '1', '1', '7002825290', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 1),
(193, 1, 'Nabajit  Barman', 'n.barman27@gmail.com', '2022-07-28', '2022-07-28', '2022-10-05', '3', '2', '1', '8822244390', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(194, 1, 'Nabajit  Barman', 'n.barman27@gmail.com', '2022-07-28', '2022-07-28', '2022-10-05', '3', '2', '1', '8822244390', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(195, 2, 'Aniruddha  Ghosh ', 'aniruddhaghosh2001@yahoo.com', '2022-07-31', '2022-08-04', '2022-08-07', '2', '2', '0', '9049108414', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Early check in at 4-15 am on 04.08.22', '', 'NA', 1),
(196, 2, 'Nayan Moni Patowary', 'nayanmoni.tsk@gmail.com', '2022-07-31', '2022-10-03', '2022-10-06', '5', '2', '2', '9678456450', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'is there room available', '', 'NA', 0),
(197, 2, 'Nayan Moni Patowary', 'nayanmoni.tsk@gmail.com', '2022-07-31', '2022-10-03', '2022-10-06', '5', '2', '2', '9678456450', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'is there room available', '', 'NA', 0),
(198, 2, 'Nayan Moni Patowary', 'nayanmoni.tsk@gmail.com', '2022-07-31', '2022-10-03', '2022-10-06', '5', '2', '2', '9678456450', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'is there room available', '', 'NA', 0),
(199, 2, 'Nayan Moni Patowary', 'nayanmoni.tsk@gmail.com', '2022-07-31', '2022-10-03', '2022-10-06', '5', '2', '2', '9678456450', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'is there room available', '', 'NA', 0),
(200, 2, 'BISWAJIT  PAUL', 'jeetpaul47@gmail.com', '2022-08-05', '2022-08-18', '2022-08-21', '3', '1', '1', '7070384939', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'If possible please allow four person in a room\r\n1 Male and 3 female\r\n', '', 'NA', 1),
(201, 1, 'Shivakiran Sreeramoju', 'shivakiran05@gmail.com', '2022-08-08', '2022-08-19', '2022-08-20', '2', '1', '2', '9848587773', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(202, 1, 'Rameshwar Tekale ', 'tekalerp@rediffmail.com', '2022-08-08', '2022-10-25', '2022-10-27', '2', '1', '0', '8208343502', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(203, 1, 'Rameshwar Tekale ', 'tekalerp@rediffmail.com', '2022-08-08', '2022-10-25', '2022-10-27', '2', '1', '0', '8208343502', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(204, 1, 'Rameshwar Tekale ', 'tekalerp@rediffmail.com', '2022-08-08', '2022-10-24', '2022-10-27', '2', '1', '1', '8208343502', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(205, 1, 'Rameshwar  Tekale', 'tekalerp@rediffmail.com', '2022-08-08', '2022-10-24', '2022-10-27', '2', '1', '0', '8208343502', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'पती पत्नी aur 2 child of age 16 & 11', '', 'NA', 0),
(206, 1, 'VIJAY UPADHYAY', 'vijayshankarupadhya26894@gmail.com', '2022-08-10', '2022-08-12', '2022-08-15', '2', '1', '2', '8434567328', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(207, 2, 'KRISHAN KUMAR MEENA', 'meenakk433@gmail.com', '2022-08-12', '2022-10-19', '2022-10-21', '2', '2', '2', '9001030433', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(208, 2, 'Abhinav Pal', 'abhinavpal786@gmail.com', '2022-08-12', '2022-10-11', '2022-10-15', '1', '1', '0', '8953302799', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(209, 1, 'ARUP PATHAK', 'pathak.arup@gmail.com', '2022-08-15', '2022-10-03', '2022-10-06', '2', '1', '1', '9957567603', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(210, 2, 'Kk Meena', 'meenakk633@gmail.com', '2022-08-16', '2022-10-12', '2022-10-14', '3', '2', '0', '9001030633', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(211, 1, 'Sourav Mahanta', 'souravmahanta108@gmail.com', '2022-08-17', '2022-09-12', '2022-09-14', '2', '1', '1', '7002981373', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Wife: Kakali Mahanta, Daughter: 3 years Old, Aadvika Mahanta, Expecting a clean deluxe AC Room', '', 'NA', 0),
(212, 1, 'ARUP PATHAK', 'pathak.arup@gmail.com', '2022-08-19', '2022-10-03', '2022-10-06', '2', '1', '1', '9957567603', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '1room for 3person, 1chiled 2 adult only.', '', 'NA', 0),
(213, 1, 'Debi Prasad Chatterjee ', 'debi.prasad@pubertindia.com', '2022-08-19', '2022-08-19', '2022-08-20', '1', '1', '0', '8583027812', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Coming fo officials meting purpose \r\n', '', 'NA', 0),
(214, 1, 'Jitendra  Jaiswal', 'imanoop@gmail.com', '2022-08-20', '2022-08-20', '2022-08-21', '2', '1', '1', '9958873665', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(215, 1, 'Jitendra Kumar  Jaiswal', 'imanoop@gmail.com', '2022-08-20', '2022-08-20', '2022-08-21', '2', '1', '1', '9958873665', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(216, 1, 'Jitendra Kumar  Jaiswal', 'imanoop@gmail.com', '2022-08-20', '2022-08-20', '2022-08-21', '2', '1', '1', '9958873665', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '1200', 'PAID', 1),
(217, 1, 'Jitendra Kumar Jaiswal', 'imanoop@gmail.com', '2022-08-20', '2022-08-20', '2022-08-21', '2', '1', '0', '9958873665', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '1200', 'PAID', 1),
(218, 1, 'KURANGA NAYANI CHETIA', 'nayani.kuranga28@gmail.com', '2022-08-22', '2022-09-05', '2022-09-06', '3', '1', '0', '8721970585', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '1200', 'PAID', 1),
(219, 1, 'Harinarayan  Nair', 'haryind6770@gmail.com', '2022-08-24', '2022-12-23', '1970-01-01', '2', '1', '0', '8308710763', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '4 night', '', 'NA', 0),
(220, 1, 'Harinarayan  Nair', 'haryind6770@gmail.com', '2022-08-24', '2022-12-23', '2022-12-27', '2', '1', '0', '8308710763', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '4 nights\r\n', '4800', 'PAID', 1),
(221, 1, 'soumya behura', 'ram@gmail.com', '2022-08-25', '2022-08-27', '2022-08-28', '0', '1', '1', '5578451254', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'kjnkjnkjn\r\n', '', 'NA', 0),
(222, 1, 'Deepjyoti Saikia', 'deepjyotis2017@gmail.com', '2022-08-26', '2022-09-05', '2022-09-06', '3', '1', '0', '7002893163', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(223, 1, 'Deepjyoti Saikia', 'deepjyotis2017@gmail.com', '2022-08-26', '2022-09-05', '2022-09-06', '3', '1', '0', '7002893163', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '1200', 'PAID', 1),
(224, 1, 'utpal das', 'drukdas@rediffmail.com', '2022-08-26', '2022-08-28', '2022-08-30', '2', '1', '0', '9435085317', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'plz book a room in my name for 3 nights.', '', 'NA', 0),
(225, 1, 'utpal das', 'drukdas@rediffmail.com', '2022-08-26', '2022-08-28', '2022-08-30', '2', '1', '0', '9435085317', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '2400', 'PAID', 1),
(226, 2, 'RAHUL DEV CHOUDHURY', 'devrahul09@gmail.com', '2022-08-27', '2022-12-23', '2022-12-25', '2', '1', '0', '9435048519', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(227, 2, 'RAHUL DEV CHOUDHURY', 'devrahul09@gmail.com', '2022-08-27', '2022-12-23', '2022-12-26', '2', '1', '1', '9435048519', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(228, 2, 'RAHUL DEV CHOUDHURY', 'devrahul09@gmail.com', '2022-08-27', '2022-12-23', '2022-12-25', '2', '1', '1', '9435048519', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '1600', 'PAID', 1),
(229, 2, 'PALLABI SARMA', 'pallabi55@gmail.com', '2022-08-27', '2022-12-23', '2022-12-25', '2', '1', '0', '9859927880', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '1600', 'PAID', 1),
(230, 2, 'Vijay  Bhatia', 'vijaybhatia95@gmail.com', '2022-08-28', '2022-09-14', '2022-09-17', '2', '4', '0', '9890999987', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(231, 2, 'hari jhg', 'ram@gmail.com', '2022-08-29', '2022-09-01', '2022-09-04', '3', '50', '18', '4578454578', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(232, 2, 'Kuheli Das', 'kuhelidas1962@gmail.com', '2022-08-29', '2022-11-28', '2022-11-30', '2', '1', '0', '8777783886', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non ac room ', '1600', 'PAID', 1),
(233, 2, 'Rahul Udaniya', 'kumarkhushboo283@gmail.com', '2022-08-30', '2022-10-02', '2022-10-05', '2', '2', '0', '9111798014', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(234, 2, 'Rahul Udainiya', 'rahulbinamp@gmail.com', '2022-08-30', '2022-10-02', '2022-10-05', '3', '2', '2', '9424487935', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Bhagwan Jagannath Darshan', '', 'NA', 0),
(235, 2, 'Shanu Nath', 'shanusci@gmail.com', '2022-08-30', '2022-10-04', '2022-10-05', '3', '1', '0', '9401806053', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Taking my parents to visit Puri.', '', 'NA', 0),
(236, 2, 'Shanu Nath', 'shanusci@gmail.com', '2022-08-30', '2022-10-04', '2022-10-05', '3', '1', '0', '9401806053', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Taking my parents to visit Puri.', '', 'NA', 0),
(237, 2, 'Rahul Udainiya', 'rahulbinamp@gmail.com', '2022-08-30', '2022-10-02', '2022-10-05', '3', '2', '2', '9424487935', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Room Required for 3 days', '4800', 'PAID', 0),
(238, 2, 'ram sah', 'HARERAMSAH62@GMAIL.COM', '2022-09-01', '2022-12-25', '2022-12-28', '3', '1', '0', '9650997162', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(239, 2, 'PRADEEP KUMAR', 'pradeep_a321@rediffmail.com', '2022-09-01', '2022-12-25', '2022-12-28', '1', '4', '1', '8700765754', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'NON AC ROOM RS 800/-\r\n', '', 'NA', 0),
(240, 1, 'Gopal Ghosh', 'ghoshgopal84@gmail.com', '2022-09-02', '2022-10-12', '2022-10-14', '2', '1', '1', '9591074856', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Requirement is for AC Room', '', 'NA', 0),
(241, 1, 'soumya behura', 'ram@gmail.com', '2022-09-02', '2022-09-03', '2022-09-15', '1', '1', '1', '5578451254', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(242, 1, 'soumya gas', 'ram@gmail.com', '2022-09-05', '2022-08-27', '2022-09-20', '1', '1', '0', '5578451254', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(243, 2, 'Abinash  Kashyap', 'abinash.kashyap21@gmail.com', '2022-09-06', '2022-11-01', '2022-11-03', '3', '2', '0', '8638892491', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Hi, Please book', '', 'NA', 0),
(244, 2, 'Murari Mohan Tewari', 'tewaripritam@gmail.com', '2022-09-08', '2022-10-17', '2022-10-21', '2', '1', '0', '9434658987', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Both are senior citizen and clean room at ground floor would be beneficial for us to stay', '', 'NA', 0),
(245, 2, 'Mitesh Kumar', 'mtshkmr8@gmail.com', '2022-09-08', '2022-10-28', '2022-10-30', '2', '1', '1', '8748867709', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(246, 2, 'Debapriyo  Dey', 'debapriyodey8@gmail.com', '2022-09-10', '2022-10-24', '2022-10-26', '3', '2', '0', '8638666021', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0);
INSERT INTO `booking_details` (`id`, `room_id`, `name`, `email`, `cur_date`, `ar_date`, `dp_date`, `adult`, `rooms`, `children2`, `phoneno`, `area`, `tdetails`, `vdetails`, `room`, `room_no`, `code`, `agent_name`, `agent_mobileno`, `content`, `amount`, `status`, `booking_status`) VALUES
(247, 2, 'jkn ksjdvn', 'ytehb@gh.d', '2022-09-14', '2022-09-21', '2022-09-22', '2', '1', '0', '6453645', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(248, 2, 'jkn ksjdvn', 'ytehb@gh.d', '2022-09-14', '2022-09-21', '2022-09-22', '2', '2', '0', '6453645', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(249, 2, 'Ankita  Ghosh', 'romeoghosh7890@gmail.com', '2022-09-15', '2022-10-15', '2022-10-17', '3', '1', '0', '7357604891', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(250, 2, 'Ankita  Ghosh', 'romeoghosh7890@gmail.com', '2022-09-15', '2022-10-15', '2022-10-17', '3', '1', '0', '7357604891', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '1600', 'PAID', 1),
(251, 2, 'Anukul  Ghosh', 'romeoghosh7890@gmail.com', '2022-09-17', '2022-10-15', '2022-10-17', '2', '1', '0', '7357604891', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '1600', 'PAID', 1),
(252, 1, 'Joyanta  Borah', 'borah_joyanta@ongc.co.in', '2022-09-19', '2022-11-02', '2022-11-05', '2', '1', '2', '9435743090', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(253, 2, 'Venkatesh kucherlapati', 'venkatesh.kucherlapati@gmail.com', '2022-09-21', '2022-12-04', '2022-12-05', '2', '1', '0', '9900267333', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(254, 2, 'Sankha Ghosh', 'sankhaghosh@live.com', '2022-09-23', '2022-12-22', '2022-12-28', '2', '1', '1', '9477668288', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(255, 1, 'MUNMUN MAHARANA', 'maharanamunmun@gmail.com', '2022-09-24', '2022-09-24', '2022-09-25', '2', '1', '1', '7377659925', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(256, 1, 'Prasenjit Routh', 'rajivghy3@gmail.com', '2022-09-26', '2022-09-28', '2022-09-30', '3', '1', '0', '9678166478', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(257, 2, 'Sweta Malakar', 'sweta.malakar@gmail.com', '2022-09-26', '2022-10-24', '2022-10-28', '2', '1', '0', '9477919271', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(258, 1, 'B Dutta', 'kingsuk1.dutta@gmail.com', '2022-09-27', '2022-12-03', '2022-12-05', '2', '1', '0', '6026740342', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(259, 1, 'B Dutta', 'kingsuk1.dutta@gmail.com', '2022-09-27', '2022-12-03', '2022-12-05', '2', '1', '0', '6026740342', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '2400', 'PAID', 1),
(260, 1, 'Anil Malakar ', 'rajivghy3@gmail.com', '2022-09-27', '2022-09-28', '2022-09-30', '3', '1', '0', '9678977132', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(261, 1, 'Anil Malakar ', 'rajivghy3@gmail.com', '2022-09-27', '2022-09-28', '2022-09-30', '3', '1', '0', '9678977132', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '2400', 'PAID', 1),
(262, 1, 'Prasenjit Routh', 'rajivghy3@gmail.com', '2022-09-27', '2022-09-28', '2022-09-30', '2', '1', '1', '9678166478', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '2400', 'PAID', 1),
(263, 2, 'TEJENDRA GARG', 'tej786garg@gmail.com', '2022-09-29', '2022-11-08', '2022-11-09', '2', '1', '0', '9074701299', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(264, 2, 'TEJENDRA GARG', 'tej786garg@gmail.com', '2022-09-29', '2022-11-08', '2022-11-09', '3', '1', '0', '9074701299', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(265, 1, 'Dr Kunal  Deka', 'kunalgeek@gmail.com', '2022-10-01', '2023-02-21', '2023-02-24', '2', '1', '0', '9954338622', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(266, 1, 'Kunal Deka', 'kunalgeek@gmail.com', '2022-10-01', '2023-02-21', '2023-02-24', '2', '1', '0', '9954338622', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(267, 2, 'Mani K', 'kumara1982@gmail.com', '2022-10-02', '2022-10-30', '2022-10-31', '3', '1', '1', '9986956411', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '800', 'PAID', 1),
(268, 1, 'Ranjit Roy', 'sroy.babi.0711@gmail.com', '2022-10-03', '2022-10-21', '2022-10-26', '3', '1', '0', '9904402937', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(269, 1, 'KHAGENDRA NATH MOHANTA', 'chakradhar.dukura@gmail.com', '2022-10-03', '2022-08-10', '2022-09-10', '2', '1', '0', '9861121212', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(270, 1, 'KHAGENDRA NATH MOHANTA', 'chakradhar.dukura@gmail.com', '2022-10-03', '2022-08-10', '2022-09-10', '2', '1', '0', '9861121212', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(271, 2, 'Hriday  Das', 'hridayb94@gmail.com', '2022-10-05', '2022-11-14', '2022-11-16', '3', '3', '0', '9777663595', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Family ', '', 'NA', 0),
(272, 2, 'Hriday  Das', 'hridayb94@gmail.com', '2022-10-05', '2022-11-14', '2022-11-16', '2', '1', '0', '9777663595', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Family ', '', 'NA', 0),
(273, 1, 'Abani Thakuria', 'thakuriaabani78@gmail.com', '2022-10-05', '2022-06-10', '2022-07-10', '2', '1', '2', '7636822476', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(274, 2, 'Abani  Thakuria', 'thakuriaabani78@gmail.com', '2022-10-05', '1970-01-01', '1970-01-01', '0', '1', '0', '7636822476', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(275, 2, 'Abani  Thakuria', 'thakuriaabani78@gmail.com', '2022-10-05', '2022-06-10', '2022-07-10', '2', '1', '2', '7636822476', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(276, 1, 'PRAKASH SAIKIA', 'prakash.b.saikia@gmail.com', '2022-10-06', '1970-01-01', '1970-01-01', '2', '1', '0', '8976868989', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Are good AC Rooms available on 25 to 27 October 2022 ?', '', 'NA', 0),
(277, 1, 'Jyoti Prakash Nandi', 'jpnandi1000@gmail.com', '2022-10-15', '2022-10-30', '2022-10-31', '2', '1', '0', '8121576177', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Please book AC Room', '', 'NA', 0),
(278, 2, 'JANAK SINGHAL', 'JKSINGHAL89@GMAIL.COM', '2022-10-16', '2022-10-31', '2022-11-02', '2', '4', '2', '8209710754', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(279, 2, 'janak SINGAL', 'jksinghal89@gmail.com', '2022-10-17', '2022-10-31', '2022-11-02', '2', '4', '0', '8209710754', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(280, 2, 'janak SINGAL', 'jksinghal89@gmail.com', '2022-10-17', '2022-10-31', '2022-11-03', '2', '4', '2', '8209710754', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(281, 2, 'BHARAT Kumar', 'jksinghal89@gmail.com', '2022-10-17', '2022-10-31', '2022-11-02', '2', '1', '0', '8209710754', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(282, 2, 'Kishor ck Krishnan', 'ckkpvt@gmail.com', '2022-10-19', '2022-11-14', '2022-11-17', '2', '2', '0', '9495691409', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Puri jagan atha darshanam from kerala ', '', 'NA', 0),
(283, 2, 'KAKALI  DAS', 'kakolidas80@gmail.com', '2022-10-19', '2022-12-27', '2022-12-31', '1', '3', '0', '8822380578', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Kindly Book 3 rooms for 8 persons (Jatri) ', '', 'NA', 0),
(284, 2, 'Prannoy  Karmokar ', 'prannoy.karmokar@gmail.com', '2022-10-21', '2022-12-01', '2022-12-03', '2', '1', '0', '8850331195', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(285, 2, 'Banoj.        Rinty Hazarika.      Hazarika', 'banojhazarika8@gmail.com', '2022-10-21', '2022-11-03', '2022-11-06', '2', '1', '0', '9435337477', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '2400', 'PAID', 0),
(286, 2, 'Mahendra  Jena', 'radhe189@gmail.com', '2022-10-26', '2022-11-07', '2022-11-10', '2', '1', '0', '9650885503', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '2400', 'PAID', 0),
(287, 2, 'Rajdip Roy', 'rajdip.783301@gmail.com', '2022-10-28', '2022-12-05', '2022-12-10', '3', '1', '0', '9864050295', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '4 person may come or 2 rooms may needed', '', 'NA', 0),
(288, 2, 'Nayan Jyoti deka  Deka', 'nayan.jyoti92@gmail.com', '2022-10-30', '2022-12-06', '2022-12-07', '3', '3', '1', '6003462775', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Ohhkfhh', '', 'NA', 0),
(289, 2, 'Nayan Deka', 'Nayan.jyoti92@gmail.com', '2022-10-30', '2022-12-06', '2022-12-07', '3', '1', '0', '6003462775', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(290, 2, 'PHULESWAR DEKA', 'phuleswardeka038@gmail.com', '2022-10-31', '2022-11-28', '2022-11-30', '3', '1', '0', '9365510108', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(291, 2, 'Nikunj Rathi', 'nikunjrathi027@gmail.com', '2022-10-31', '2022-12-26', '2022-12-27', '3', '1', '0', '8435844819', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'We are family with three adults and one child of 16 year . We want to adjust in one room. Take charge of one child which was applicable ', '', 'NA', 0),
(292, 0, 'Ramani Das', 'ramanidas460@gmail.com', '2022-11-02', '2023-01-08', '2023-01-13', '2', '1', '2', '7972303982', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(293, 2, 'Ramani Das', 'ramanidas460@gmail.com', '2022-11-07', '2023-02-02', '2023-02-05', '2', '1', '2', '7972303982', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(294, 2, 'Ramani Das', 'ramanidas460@gmail.com', '2022-11-08', '2023-02-08', '2023-02-11', '2', '1', '2', '7972303982', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(295, 2, 'Manas Das', 'ramanidas460@gmail.com', '2022-11-08', '2023-02-08', '2023-02-11', '2', '1', '2', '7972303982', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(296, 2, 'Ramani Das', 'ramanidas460@gmail.com', '2022-11-08', '2023-04-08', '2023-04-11', '2', '1', '2', '7972303982', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(297, 1, 'Abhijit Dutta', 'abdutta79@gmail.com', '2022-11-08', '2022-11-28', '2022-12-02', '2', '1', '2', '7381950125', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(298, 2, 'Ramani Das', 'ramanidas460@gmail.com', '2022-11-09', '2023-04-11', '2023-04-11', '3', '1', '1', '7972303982', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(299, 2, 'Ramani Das', 'ramanidas460@gmail.com', '2022-11-09', '2022-12-08', '2022-12-11', '2', '1', '2', '7972303982', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(300, 2, 'Manas Das', 'ramanidas460@gmail.com', '2022-11-13', '2023-04-04', '2023-04-06', '2', '1', '2', '7972303982', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(301, 1, 'Ravikant C', 'cravikant@gmail.com', '2022-11-13', '2022-11-29', '2022-12-01', '2', '3', '2', '9916938997', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(302, 2, 'Kumar Anand', 'drkumaranand.anand@gmail.com', '2022-11-13', '2022-12-15', '2022-12-18', '2', '1', '2', '9835013078', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Hi', '', 'NA', 0),
(303, 1, 'beeram santhosh', 'santosh.kumar@bhariinfra.in', '2022-11-16', '2022-12-10', '2022-12-14', '3', '2', '0', '9010280929', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(304, 1, 'beeram santhosh', 'santosh.kumar@bhariinfra.in', '2022-11-16', '2022-12-10', '2022-12-14', '3', '2', '0', '9010280929', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(305, 2, 'NILAMONI  DEKA', 'dekan706@gmail.com', '2022-11-18', '2022-12-02', '2022-12-03', '3', '1', '1', '9706043439', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Coming from Assam.', '', 'NA', 0),
(306, 2, 'Mahesh Sahu', 'maheshkumarsahu68417@gmail.com', '2022-11-19', '2022-11-30', '2022-12-01', '2', '1', '1', '9861478619', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(307, 2, 'NILAMONI DEKA', 'DEKAN706@GMAIL.COM', '2022-11-19', '2022-12-02', '2022-12-03', '3', '1', '1', '9706043439', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(308, 2, 'DEBASIS SARKAR', 'deb_63@rediffmail.com', '2022-11-20', '2023-02-01', '2023-06-01', '3', '2', '0', '8368719597', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'PURI JAGANNATH TEMPLE DARSHAN \r\nADHAR NO.851836346925\r\n', '', 'NA', 0),
(309, 2, 'DEBASIS SARKAR', 'deb_63@rediffmail.com', '2022-11-20', '2023-02-01', '2023-06-01', '3', '2', '0', '8368719597', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'PURI JAGANNATH TEMPLE DARSHAN\r\n', '', 'NA', 0),
(310, 1, 'Rajdip Roy', 'rajdip.783301@gmail.com', '2022-11-22', '2022-12-05', '2022-12-08', '3', '1', '0', '9864050295', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(311, 2, 'Rajdip Roy', 'rajdip.783301@gmail.com', '2022-11-22', '2022-12-05', '2022-12-07', '3', '1', '0', '9864050295', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Need 3 bed in one room ', '1600', 'PAID', 0),
(312, 2, 'Ramani Das', 'ramanidas460@gmail.com', '2022-11-23', '2023-04-05', '2023-04-07', '2', '1', '2', '7972303982', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(313, 2, 'Sumit Kumar', 'Sumitkmr146@gmail.com', '2022-11-23', '2022-12-16', '2022-12-19', '3', '1', '0', '8529109397', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'We are four family member want to say in one room', '', 'NA', 0),
(314, 2, 'Dr. Muralidhar sharma', 'sharmakvm@gmail.com', '2022-11-28', '2022-12-02', '2022-12-03', '2', '1', '0', '9449154928', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(315, 2, 'Vyjayanthi Sharma', 'vyjumurli@gmail.com', '2022-11-28', '2022-12-02', '2022-12-03', '2', '1', '0', '9742154928', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '800', 'PAID', 0),
(316, 2, 'Hemraj Saikia', 'hemraisaikia@gmail.com', '2022-11-30', '2022-12-13', '2022-12-16', '3', '1', '1', '7896972927', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '', 'NA', 0),
(317, 2, 'PRADIP KUMAR OJHA  OJHA', 'oaniket458@gmail.com', '2022-12-02', '2023-01-19', '2023-01-20', '3', '1', '1', '9163352300', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Nice', '', 'NA', 0),
(318, 1, 'NABAJIT KALITA', 'nabajitkalita001@gmail.com', '2022-12-06', '2023-03-23', '2023-03-26', '3', '2', '2', '9002623741', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', 'Kindly provide two double room on the mention days', '', 'NA', 0),
(319, 1, 'asdfasd asdfasdf', 'Jyoti@jbsinfotech.in', '2022-12-11', '2023-02-08', '2023-02-24', '1', '1', '0', '3453453453', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '0', 'NA', 0),
(320, 1, 'asdfasd asdfasdf', 'Jyoti@jbsinfotech.in', '2022-12-11', '2023-02-08', '2023-02-24', '1', '1', '0', '3453453453', '', '', '', 'NA', 'NA', 'NA', 'NA', 'NA', '', '0', 'NA', 0);

-- --------------------------------------------------------

--
-- Table structure for table `booking_req`
--

CREATE TABLE `booking_req` (
  `id` int(11) NOT NULL,
  `sess_id` varchar(255) NOT NULL,
  `arrival_date` date NOT NULL,
  `depature_date` date NOT NULL,
  `arrival_time` time NOT NULL,
  `depature_time` time NOT NULL,
  `no_of_rooms` int(11) NOT NULL,
  `no_of_person` int(11) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_req`
--

INSERT INTO `booking_req` (`id`, `sess_id`, `arrival_date`, `depature_date`, `arrival_time`, `depature_time`, `no_of_rooms`, `no_of_person`, `created_date`) VALUES
(3, 'c9f697mkn6qk6223dmvmo99qj4', '2019-11-05', '2019-11-06', '11:00:00', '09:00:00', 2, 2, '2019-11-04'),
(2, '17ps2vlf621ns8s562ttu46l86', '2019-11-08', '2019-11-10', '11:00:00', '09:00:00', 1, 1, '2019-11-03'),
(4, '2s665ah7ibk9vt0tu17tidv5h4', '2019-11-06', '2019-11-07', '11:00:00', '09:00:00', 1, 1, '2019-11-05'),
(5, '6bejup899if7oua59ng5lt78c1', '2019-11-12', '2019-11-13', '09:00:00', '11:00:00', 1, 1, '2019-11-10'),
(6, 'o32aetssguggcd3lvh18b4q9o3', '2019-11-13', '2019-11-13', '11:00:00', '11:00:00', 2, 2, '2019-11-11');

-- --------------------------------------------------------

--
-- Table structure for table `booking_tbl`
--

CREATE TABLE `booking_tbl` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `travel_agent_id` varchar(255) NOT NULL,
  `chk_in_date` datetime NOT NULL,
  `chk_out_date` datetime NOT NULL,
  `chk_in_time` time NOT NULL,
  `chk_out_time` time NOT NULL,
  `room_type1` int(11) NOT NULL,
  `no_of_rooms1` int(11) NOT NULL,
  `room_type2` int(11) NOT NULL,
  `no_of_rooms2` int(11) NOT NULL,
  `room_type3` int(11) NOT NULL,
  `no_of_rooms3` int(11) NOT NULL,
  `price` varchar(100) NOT NULL,
  `gst_amt` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL,
  `confirm_status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_tbl`
--

INSERT INTO `booking_tbl` (`id`, `first_name`, `last_name`, `phone`, `travel_agent_id`, `chk_in_date`, `chk_out_date`, `chk_in_time`, `chk_out_time`, `room_type1`, `no_of_rooms1`, `room_type2`, `no_of_rooms2`, `room_type3`, `no_of_rooms3`, `price`, `gst_amt`, `created_date`, `confirm_status`) VALUES
(1, 'kabul', 'patel', '8249535399', 'AD1234', '2019-05-28 00:00:00', '2019-05-29 00:00:00', '11:00:00', '23:00:00', 1, 2, 2, 1, 3, 1, '4300', '348', '2019-05-28 05:41:54', 1),
(2, 'ajay', 'kumar', '8280329295', 'AD234324', '2019-05-28 00:00:00', '2019-05-29 00:00:00', '11:00:00', '13:00:00', 1, 2, 2, 2, 3, 1, '5500', '492', '2019-05-28 13:08:35', 1),
(3, 'test', 'test', '3234234', '34234', '2019-05-28 11:00:00', '2019-05-30 13:00:00', '11:00:00', '13:00:00', 1, 2, 2, 2, 3, 2, '7200', '696', '2019-05-28 13:39:12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `price` varchar(100) NOT NULL,
  `price_for_extra` varchar(100) NOT NULL,
  `price_for_extra_child` varchar(100) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `type_id`, `description`, `price`, `price_for_extra`, `price_for_extra_child`, `img`) VALUES
(1, 6, '<p>\r\n	WE have well mentained 18 Deluxe AC rooms with all mordent aminities.</p>\r\n', '1200', '200', '0', '1646025694.jpg'),
(2, 5, '<p>\r\n	We have 26 Deluxe Non AC Rooms with all morden facilities.</p>\r\n', '800', '200', '0', '1646025713.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `room_block`
--

CREATE TABLE `room_block` (
  `id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `room_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_block`
--

INSERT INTO `room_block` (`id`, `from_date`, `to_date`, `room_id`) VALUES
(46, '2022-12-20', '2023-01-11', 2),
(45, '2022-12-20', '2023-01-11', 1),
(49, '2022-12-02', '2022-12-19', 2),
(50, '2022-12-02', '2022-12-19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_child`
--

CREATE TABLE `room_child` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `facility_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_child`
--

INSERT INTO `room_child` (`id`, `room_id`, `facility_id`) VALUES
(60, 1, 8),
(59, 1, 4),
(63, 2, 8),
(62, 2, 4),
(61, 2, 2),
(9, 3, 2),
(58, 1, 3),
(57, 1, 2),
(56, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_facility`
--

CREATE TABLE `room_facility` (
  `id` int(11) NOT NULL,
  `facility` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_facility`
--

INSERT INTO `room_facility` (`id`, `facility`) VALUES
(1, 'Air Condition'),
(2, 'TV'),
(3, 'WiFi'),
(4, 'Hot Water Supply'),
(8, 'Veg Restaurant'),
(9, 'Free Parking');

-- --------------------------------------------------------

--
-- Table structure for table `room_img`
--

CREATE TABLE `room_img` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_img`
--

INSERT INTO `room_img` (`id`, `room_id`, `img`) VALUES
(1, 1, '1644069732.jpg'),
(2, 1, '1644069740.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `room_price`
--

CREATE TABLE `room_price` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `room_plan_date` date NOT NULL,
  `sell_rate_one` varchar(100) NOT NULL,
  `sell_rate_two` varchar(100) NOT NULL,
  `tax_one` varchar(100) NOT NULL,
  `tax_two` varchar(100) NOT NULL,
  `extra_adult` varchar(100) NOT NULL,
  `extra_child` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_price`
--

INSERT INTO `room_price` (`id`, `room_id`, `room_plan_date`, `sell_rate_one`, `sell_rate_two`, `tax_one`, `tax_two`, `extra_adult`, `extra_child`) VALUES
(2, 1, '2022-02-07', '1000', '1200', '12', '12', '200', '100'),
(3, 1, '2022-02-08', '1000', '1200', '12', '12', '200', '100'),
(4, 1, '2022-02-09', '1000', '1200', '12', '12', '200', '100'),
(5, 1, '2022-02-10', '1000', '1200', '12', '12', '200', '100'),
(6, 1, '2022-02-11', '1000', '1200', '12', '12', '200', '100'),
(7, 1, '2022-02-12', '1000', '1200', '12', '12', '200', '100'),
(8, 1, '2022-02-13', '1000', '1200', '12', '12', '200', '100'),
(9, 1, '2022-02-14', '1000', '1200', '12', '12', '200', '100'),
(10, 1, '2022-02-15', '1000', '1200', '12', '12', '200', '100'),
(11, 1, '2022-02-16', '1000', '1200', '12', '12', '200', '100'),
(12, 1, '2022-03-12', '2000', '', '', '', '', ''),
(13, 1, '2022-03-13', '2000', '', '', '', '', ''),
(14, 1, '2022-03-14', '2000', '', '', '', '', ''),
(15, 1, '2022-03-27', '1200', '', '', '', '', ''),
(16, 1, '2022-03-28', '1200', '', '', '', '', ''),
(17, 1, '2022-03-29', '1200', '', '', '', '', ''),
(18, 1, '2022-03-30', '1200', '', '', '', '', ''),
(19, 1, '2022-03-31', '1200', '', '', '', '', ''),
(20, 1, '2022-04-01', '1200', '', '', '', '', ''),
(21, 1, '2022-04-02', '1200', '', '', '', '', ''),
(22, 1, '2022-04-03', '1200', '', '', '', '', ''),
(23, 1, '2022-04-04', '1200', '', '', '', '', ''),
(24, 1, '2022-04-05', '1200', '', '', '', '', ''),
(25, 1, '2022-04-06', '1200', '', '', '', '', ''),
(26, 1, '2022-04-07', '1200', '', '', '', '', ''),
(27, 1, '2022-04-08', '1200', '', '', '', '', ''),
(28, 1, '2022-04-09', '1200', '', '', '', '', ''),
(29, 1, '2022-04-10', '1200', '', '', '', '', ''),
(30, 1, '2022-04-11', '1200', '', '', '', '', ''),
(31, 1, '2022-04-12', '1200', '', '', '', '', ''),
(32, 1, '2022-04-13', '1200', '', '', '', '', ''),
(33, 1, '2022-04-14', '1200', '', '', '', '', ''),
(34, 1, '2022-04-15', '1200', '', '', '', '', ''),
(35, 1, '2022-04-16', '1200', '', '', '', '', ''),
(36, 1, '2022-04-17', '1200', '', '', '', '', ''),
(37, 1, '2022-04-18', '1200', '', '', '', '', ''),
(38, 1, '2022-04-19', '1200', '', '', '', '', ''),
(39, 1, '2022-04-20', '1200', '', '', '', '', ''),
(40, 1, '2022-04-21', '1200', '', '', '', '', ''),
(41, 1, '2022-04-22', '1200', '', '', '', '', ''),
(42, 1, '2022-04-23', '1200', '', '', '', '', ''),
(43, 1, '2022-04-24', '1200', '', '', '', '', ''),
(44, 1, '2022-04-25', '1200', '', '', '', '', ''),
(45, 1, '2022-04-26', '1200', '', '', '', '', ''),
(46, 1, '2022-04-27', '1200', '', '', '', '', ''),
(47, 1, '2022-04-28', '1200', '', '', '', '', ''),
(48, 1, '2022-04-29', '1200', '', '', '', '', ''),
(49, 1, '2022-04-30', '1200', '', '', '', '', ''),
(50, 1, '2022-03-27', '1200', '1200', '', '', '', ''),
(51, 1, '2022-03-28', '1200', '1200', '', '', '', ''),
(52, 1, '2022-03-29', '1200', '1200', '', '', '', ''),
(53, 1, '2022-03-30', '1200', '1200', '', '', '', ''),
(54, 1, '2022-03-31', '1200', '1200', '', '', '', ''),
(55, 1, '2022-04-01', '1200', '1200', '', '', '', ''),
(56, 1, '2022-04-02', '1200', '1200', '', '', '', ''),
(57, 1, '2022-04-03', '1200', '1200', '', '', '', ''),
(58, 1, '2022-04-04', '1200', '1200', '', '', '', ''),
(59, 1, '2022-04-05', '1200', '1200', '', '', '', ''),
(60, 1, '2022-04-06', '1200', '1200', '', '', '', ''),
(61, 1, '2022-04-07', '1200', '1200', '', '', '', ''),
(62, 1, '2022-04-08', '1200', '1200', '', '', '', ''),
(63, 1, '2022-04-09', '1200', '1200', '', '', '', ''),
(64, 1, '2022-04-10', '1200', '1200', '', '', '', ''),
(65, 1, '2022-04-11', '1200', '1200', '', '', '', ''),
(66, 1, '2022-04-12', '1200', '1200', '', '', '', ''),
(67, 1, '2022-04-13', '1200', '1200', '', '', '', ''),
(68, 1, '2022-04-14', '1200', '1200', '', '', '', ''),
(69, 1, '2022-04-15', '1200', '1200', '', '', '', ''),
(70, 1, '2022-04-16', '1200', '1200', '', '', '', ''),
(71, 1, '2022-04-17', '1200', '1200', '', '', '', ''),
(72, 1, '2022-04-18', '1200', '1200', '', '', '', ''),
(73, 1, '2022-04-19', '1200', '1200', '', '', '', ''),
(74, 1, '2022-04-20', '1200', '1200', '', '', '', ''),
(75, 1, '2022-04-21', '1200', '1200', '', '', '', ''),
(76, 1, '2022-04-22', '1200', '1200', '', '', '', ''),
(77, 1, '2022-04-23', '1200', '1200', '', '', '', ''),
(78, 1, '2022-04-24', '1200', '1200', '', '', '', ''),
(79, 1, '2022-04-25', '1200', '1200', '', '', '', ''),
(80, 1, '2022-04-26', '1200', '1200', '', '', '', ''),
(81, 1, '2022-04-27', '1200', '1200', '', '', '', ''),
(82, 1, '2022-04-28', '1200', '1200', '', '', '', ''),
(83, 1, '2022-04-29', '1200', '1200', '', '', '', ''),
(84, 1, '2022-04-30', '1200', '1200', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `id` int(11) NOT NULL,
  `room_type` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `no_of_rooms` int(11) NOT NULL,
  `tax` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`id`, `room_type`, `status`, `no_of_rooms`, `tax`) VALUES
(6, 'Deluxe Ac', 1, 18, ''),
(5, 'Deluxe Non Ac', 1, 26, '');

-- --------------------------------------------------------

--
-- Table structure for table `temp_booking_tbl`
--

CREATE TABLE `temp_booking_tbl` (
  `id` int(11) NOT NULL,
  `sess_id` varchar(255) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `chk_in_date` date NOT NULL,
  `chk_out_date` date NOT NULL,
  `chk_in_time` time NOT NULL,
  `chk_out_time` time NOT NULL,
  `room_type1` int(11) NOT NULL,
  `no_of_rooms1` int(11) NOT NULL,
  `room_type2` int(11) NOT NULL,
  `no_of_rooms2` int(11) NOT NULL,
  `room_type3` int(11) NOT NULL,
  `no_of_rooms3` int(11) NOT NULL,
  `price` varchar(100) NOT NULL,
  `gst_amt` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_req`
--
ALTER TABLE `booking_req`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_tbl`
--
ALTER TABLE `booking_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_block`
--
ALTER TABLE `room_block`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_child`
--
ALTER TABLE `room_child`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_facility`
--
ALTER TABLE `room_facility`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_img`
--
ALTER TABLE `room_img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_price`
--
ALTER TABLE `room_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_booking_tbl`
--
ALTER TABLE `temp_booking_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT for table `booking_req`
--
ALTER TABLE `booking_req`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `booking_tbl`
--
ALTER TABLE `booking_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `room_block`
--
ALTER TABLE `room_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `room_child`
--
ALTER TABLE `room_child`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `room_facility`
--
ALTER TABLE `room_facility`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `room_img`
--
ALTER TABLE `room_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `room_price`
--
ALTER TABLE `room_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `temp_booking_tbl`
--
ALTER TABLE `temp_booking_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
