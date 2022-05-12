-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2022 at 08:10 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pessdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `dispatch`
--

CREATE TABLE `dispatch` (
  `incident_id` int(11) NOT NULL,
  `patrolcar_id` varchar(10) NOT NULL,
  `time_dispatched` datetime NOT NULL,
  `time_arrived` datetime DEFAULT NULL,
  `time_completed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dispatch`
--

INSERT INTO `dispatch` (`incident_id`, `patrolcar_id`, `time_dispatched`, `time_arrived`, `time_completed`) VALUES
(12, 'QX2222G', '2014-05-29 10:51:15', NULL, '2014-05-29 10:53:43'),
(13, 'QX2222G', '2014-05-29 10:59:42', NULL, NULL),
(14, 'QX4444P', '2014-05-29 11:10:57', NULL, NULL),
(15, 'QX1234', '2022-03-10 13:46:00', NULL, '2022-03-10 14:08:00'),
(23, 'QX1234', '2022-05-05 14:31:32', NULL, '2022-05-06 11:12:30'),
(24, 'QX1234', '2022-05-05 14:31:37', NULL, '2022-05-06 11:12:30'),
(25, 'QX1234', '2022-05-05 14:32:47', NULL, '2022-05-06 11:12:30'),
(26, 'QX4321R', '2022-05-05 14:32:58', NULL, NULL),
(27, 'QX1234', '2022-05-05 15:28:47', NULL, '2022-05-06 11:12:30'),
(27, 'QX4321R', '2022-05-05 15:28:47', NULL, NULL),
(27, 'QX4444P', '2022-05-05 15:28:47', NULL, NULL),
(28, 'QX1234', '2022-05-06 11:12:21', NULL, '2022-05-06 11:12:30'),
(29, 'QX1234', '2022-05-12 13:39:04', NULL, '2022-05-12 13:41:06');

-- --------------------------------------------------------

--
-- Table structure for table `incident`
--

CREATE TABLE `incident` (
  `incident_id` int(11) NOT NULL,
  `caller_name` varchar(30) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `incident_type_id` varchar(3) NOT NULL,
  `incident_location` varchar(50) NOT NULL,
  `incident_desc` varchar(100) NOT NULL,
  `incident_status_id` varchar(1) NOT NULL,
  `time_called` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `incident`
--

INSERT INTO `incident` (`incident_id`, `caller_name`, `phone_number`, `incident_type_id`, `incident_location`, `incident_desc`, `incident_status_id`, `time_called`) VALUES
(6, 'Peter Leow', '81234567', '010', 'Junction of North Bridge Rd and Middle Rd', 'A bus collided with a Taxi 2 injuries', '1', '2022-03-02 11:53:14'),
(8, 'qwerty', '12345678', '030', 'cck', 'qwerty', '3', '2022-03-02 11:53:14'),
(9, 'Peter Leow', '81234567', '', 'Junction of North Bridge Road and Middle Road', 'A bus collided with a taxi, 2 injuries', '3', '2022-03-10 14:15:51'),
(10, '', '1329148y23', '010', 'woodlabds', 'I24IH4FUE', '2', '2022-04-22 11:05:37'),
(11, '', '1329148y23', '010', 'woodlabds', 'uuuuuu', '2', '2022-04-22 11:06:11'),
(12, '', '1329148y23', '010', 'woodlabds', 'jge', '2', '2022-04-22 11:23:48'),
(13, '', '6u', '010', '6uk8567k42w46246i45ok4h6', 'i23yt742iuw4qpe', '2', '2022-05-05 14:05:28'),
(14, '', '1329148y23', '010', 'woodlabds', '3r3r', '2', '2022-05-05 14:06:05'),
(15, '', '1329148y23', '010', 'q', 'qwdd', '2', '2022-05-05 14:07:20'),
(16, 'hazel', '1329148y23', '010', 'q', 'qwdd', '2', '2022-05-05 14:14:18'),
(17, 'hazel', '1329148y23', '010', 'q', 'qwdd', '2', '2022-05-05 14:14:25'),
(18, 'hazel', '1329148y23', '010', 'q', 'qwdd', '2', '2022-05-05 14:15:01'),
(19, 'hazel', '1329148y23', '010', 'q', 'qwdd', '2', '2022-05-05 14:15:06'),
(20, 'hazel', '1329148y23', '010', 'woodlabds', 'i`1hi1w', '2', '2022-05-05 14:15:30'),
(21, 'hazel', '1329148y23', '010', 'woodlabds', 'i`1hi1w', '2', '2022-05-05 14:16:36'),
(22, 'hazel', 'kknbb', '010', 'ojhu8g', 'htu', '2', '2022-05-05 14:27:22'),
(23, 'hazel', '1329148y23', '020', 'oi54ew', 'p-09876tre', '2', '2022-05-05 14:31:32'),
(24, 'hazel', '1329148y23', '020', 'oi54ew', 'p-09876tre', '2', '2022-05-05 14:31:37'),
(25, 'hazel', '1329148y23', '020', 'oi54ew', 'p-09876tre', '2', '2022-05-05 14:32:47'),
(27, 'kihgffy', '3p', '010', '4y', '26', '2', '2022-05-05 15:28:47'),
(28, 'hazel', '1329148y23', '010', 'woodlabds', '3g5r', '3', '2022-05-06 11:12:30'),
(29, 'hazel', '1329148y23', '010', 'e', 'ewfl', '3', '2022-05-12 13:41:06');

-- --------------------------------------------------------

--
-- Table structure for table `incident_status`
--

CREATE TABLE `incident_status` (
  `incident_status_id` varchar(1) NOT NULL,
  `incident_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `incident_status`
--

INSERT INTO `incident_status` (`incident_status_id`, `incident_status_desc`) VALUES
('1', 'Pending'),
('2', 'Dispatched'),
('3', 'Completed'),
('4', 'Duplicate');

-- --------------------------------------------------------

--
-- Table structure for table `incident_type`
--

CREATE TABLE `incident_type` (
  `incident_type_id` varchar(3) NOT NULL,
  `incident_type_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `incident_type`
--

INSERT INTO `incident_type` (`incident_type_id`, `incident_type_desc`) VALUES
('010', 'Fire'),
('020', 'Riot'),
('030', 'Burglary'),
('040', 'Domestic Violent'),
('050', 'Fallen Tree'),
('060', 'Traffic Accident'),
('070', 'Loan Shark'),
('999', 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar`
--

CREATE TABLE `patrolcar` (
  `patrolcar_id` varchar(10) NOT NULL,
  `patrolcar_status_id` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patrolcar`
--

INSERT INTO `patrolcar` (`patrolcar_id`, `patrolcar_status_id`) VALUES
('QX1234', '3'),
('QX4321R', '3'),
('QX4444P', '3'),
('QX45545', '1'),
('QX9999H', '1');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar_status`
--

CREATE TABLE `patrolcar_status` (
  `patrolcar_status_id` varchar(1) NOT NULL,
  `patrolcar_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patrolcar_status`
--

INSERT INTO `patrolcar_status` (`patrolcar_status_id`, `patrolcar_status_desc`) VALUES
('1', 'Dispatched'),
('2', 'Patrol'),
('3', 'Free'),
('4', 'On-site'),
('5', 'NA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dispatch`
--
ALTER TABLE `dispatch`
  ADD PRIMARY KEY (`incident_id`,`patrolcar_id`);

--
-- Indexes for table `incident`
--
ALTER TABLE `incident`
  ADD PRIMARY KEY (`incident_id`);

--
-- Indexes for table `incident_status`
--
ALTER TABLE `incident_status`
  ADD PRIMARY KEY (`incident_status_id`);

--
-- Indexes for table `incident_type`
--
ALTER TABLE `incident_type`
  ADD PRIMARY KEY (`incident_type_id`);

--
-- Indexes for table `patrolcar`
--
ALTER TABLE `patrolcar`
  ADD PRIMARY KEY (`patrolcar_id`);

--
-- Indexes for table `patrolcar_status`
--
ALTER TABLE `patrolcar_status`
  ADD PRIMARY KEY (`patrolcar_status_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `incident`
--
ALTER TABLE `incident`
  MODIFY `incident_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
