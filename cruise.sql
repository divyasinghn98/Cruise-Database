-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jul 19, 2019 at 06:48 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `minip`
--

-- --------------------------------------------------------

--
-- Table structure for table `cruise`
--

CREATE TABLE `cruise` (
  `deckid` varchar(10) NOT NULL,
  `no_of_shops` int(11) DEFAULT NULL,
  `no_of_exit` int(11) DEFAULT NULL,
  `eid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cruise`
--

INSERT INTO `cruise` (`deckid`, `no_of_shops`, `no_of_exit`, `eid`) VALUES
('ad1', 5, 3, 501),
('ad10', 0, 5, 510),
('ad2', 6, 4, 502),
('ad3', 7, 3, 503),
('ad4', 5, 4, 504),
('ad5', 5, 3, 505),
('ad6', 3, 3, 506),
('ad7', 3, 3, 507),
('ad8', 3, 3, 508),
('ad9', 3, 4, 509);

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `did` varchar(10) NOT NULL,
  `dname` varchar(10) DEFAULT NULL,
  `dcontno` int(11) DEFAULT NULL,
  `dloc` varchar(10) DEFAULT NULL,
  `mgrsid` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`did`, `dname`, `dcontno`, `dloc`, `mgrsid`) VALUES
('d01', 'food', 56565602, 'a103', 's101'),
('d02', 'laundry', 56565601, 'b104', 's102'),
('d03', 'waiters', 56565603, 'c104', 's104'),
('d04', 'cleaners', 56565604, 'c105', 's106'),
('d05', 'crew', 56565605, 'c106', 's105'),
('d06', 'control', 57575706, 'c107', 's107'),
('d07', 'checking', 57575745, 'c101', 's108'),
('d08', 'enternmt', 57548706, 'c102', 's109');

-- --------------------------------------------------------

--
-- Table structure for table `emergency`
--

CREATE TABLE `emergency` (
  `eid` int(11) NOT NULL,
  `econtno` int(11) DEFAULT NULL,
  `edept` varchar(10) DEFAULT NULL,
  `no_of_emp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emergency`
--

INSERT INTO `emergency` (`eid`, `econtno`, `edept`, `no_of_emp`) VALUES
(501, 123456789, 'fire', 15),
(502, 1234567889, 'machinery', 10),
(503, 123456985, 'divers', 20),
(504, 1276234512, 'rescue', 50),
(505, 124578963, 'criminal', 25),
(506, 984567213, 'theft', 5),
(507, 987824652, 'electric', 5),
(508, 98765412, 'fuel', 6),
(509, 978456012, 'food', 10),
(510, 589325563, 'weather', 10);

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `pid` int(11) NOT NULL,
  `fname` varchar(10) DEFAULT NULL,
  `lname` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `id_proof` varchar(10) DEFAULT NULL,
  `tkid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`pid`, `fname`, `lname`, `dob`, `age`, `id_proof`, `tkid`) VALUES
(101, 'ravi', 'sharma', '1985-05-21', 43, 'aadhar', 1001),
(102, 'ayshiya', 'zainaba', '1995-05-01', 23, 'voter_id', 1002),
(103, 'deepika', 'singh', '1996-05-09', 22, 'aadhar', 1008),
(104, 'aryan', 'singh', '0000-00-00', 21, 'aadhar', 1003),
(105, 'adhitya', 'singh', '1996-09-18', 22, 'voter_id', 1007),
(106, 'austin', 'almeda', '1994-09-15', 24, 'passport', 1009),
(107, 'vikyath', 'yadav', '1992-12-12', 26, 'passport', 1010),
(108, 'saurav', 'rajput', '1978-11-12', 40, 'aadhar', 1004),
(109, 'meera', 'rajput', '1981-11-12', 37, 'aadhar', 1005),
(110, 'riya', 'rajput', '2003-10-05', 15, 'aadhar', 1006),
(111, 'tabu', 'khurana', '1970-02-22', 48, 'voter_id', 1011),
(112, 'sham', 'khurana', '1972-03-29', 46, 'aadhar', 1012),
(113, 'sam', 'joseph', '1958-04-30', 33, 'aadhar', 1013),
(114, 'antriya', 'joseph', '2009-05-17', 9, 'aadhar', 1014),
(115, 'viren', 'vadhera', '1996-06-17', 22, 'passport', 1015),
(116, 'jeevika', 'vadhera', '1998-07-18', 20, 'passport', 1016),
(117, 'adhiya', 'khan', '1975-08-18', 43, 'passport', 1017),
(118, 'rohan', 'raghuvansh', '1985-09-19', 33, 'voter_id', 1018),
(119, 'krithika', 'takur', '1993-10-20', 25, 'voter_id', 1019),
(120, 'raghav', 'juyal', '1991-07-10', 27, 'voter_id', 1019);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_no` varchar(10) NOT NULL,
  `no_of_ppl` int(11) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_no`, `no_of_ppl`, `floor`) VALUES
('a101', 1, 1),
('a102', 2, 1),
('a103', 2, 1),
('b101', 3, 2),
('b102', 1, 2),
('b103', 1, 2),
('d101', 2, 3),
('d102', 2, 3),
('d103', 2, 3),
('e101', 1, 4),
('e102', 1, 4),
('e103', 1, 4),
('f101', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `pid` int(11) NOT NULL,
  `sid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`pid`, `sid`) VALUES
(101, 's102'),
(102, 's105'),
(103, 's106'),
(104, 's107'),
(105, 's105'),
(105, 's107'),
(105, 's108'),
(106, 's109'),
(107, 's110'),
(108, 's104'),
(108, 's109'),
(109, 's102'),
(109, 's107'),
(109, 's113'),
(110, 's116'),
(111, 's107'),
(111, 's109'),
(112, 's114'),
(113, 's109'),
(117, 's106');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `sid` varchar(10) NOT NULL,
  `sname` varchar(20) DEFAULT NULL,
  `sage` int(11) DEFAULT NULL,
  `contno` int(11) DEFAULT NULL,
  `did` varchar(10) DEFAULT NULL,
  `deckid` varchar(10) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`sid`, `sname`, `sage`, `contno`, `did`, `deckid`, `salary`) VALUES
('s101', 'ram', 22, 855525632, 'd01', 'ad1', 25000),
('s102', 'riya', 20, 589565245, 'd02', 'ad2', 15000),
('s103', 'sana', 30, 12345679, 'd05', 'ad1', 40000),
('s104', 'diya', 35, 123466581, 'd03', 'ad3', 20000),
('s105', 'raghav', 40, 562589663, 'd05', 'ad1', 50000),
('s106', 'imraan', 45, 154865488, 'd04', 'ad4', 25000),
('s107', 'aryan', 44, 26565655, 'd01', 'ad1', 25100),
('s108', 'siya', 42, 586289628, 'd03', 'ad3', 26000),
('s109', 'tridha', 35, 621556322, 'd05', 'ad1', 27000),
('s110', 'smith', 36, 56586633, 'd02', 'ad2', 40000),
('s111', 'zain', 40, 469625566, 'd07', 'ad1', 40000),
('s112', 'tom', 42, 896289625, 'd08', 'ad8', 70000),
('s113', 'tim', 44, 955566322, 'd07', 'ad1', 25000),
('s114', 'sam', 34, 45524552, 'd05', 'ad2', 30000),
('s115', 'shaun', 38, 463989621, 'd03', 'ad5', 40000),
('s116', 'jacob', 50, 489632589, 'd02', 'ad1', 45000),
('s117', 'jenny', 58, 555586322, 'd01', 'ad5', 40000),
('s118', 'aadha', 32, 556215222, 'd05', 'ad2', 30000),
('s119', 'radha', 36, 486563333, 'd06', 'ad3', 400000),
('s120', 'jessica', 35, 119655666, 'd07', 'ad3', 40000);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `tkid` int(11) NOT NULL,
  `mode` varchar(20) DEFAULT NULL,
  `doj` date DEFAULT NULL,
  `no_of_days` int(11) DEFAULT NULL,
  `room_no` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`tkid`, `mode`, `doj`, `no_of_days`, `room_no`) VALUES
(1001, 'online', '2018-05-21', 3, 'a101'),
(1002, 'counter', '2018-05-22', 5, 'a102'),
(1003, 'agent', '2018-05-22', 3, 'a103'),
(1004, 'online', '2018-05-22', 5, 'b101'),
(1005, 'online', '2018-05-22', 5, 'b101'),
(1006, 'online', '2018-05-22', 5, 'b101'),
(1007, 'agent', '2018-05-21', 3, 'a103'),
(1008, 'counter', '2018-05-22', 5, 'a102'),
(1009, 'agent', '2015-05-22', 5, 'b101'),
(1010, 'counter', '2015-05-21', 3, 'b103'),
(1011, 'agent', '2018-05-20', 4, 'd101'),
(1012, 'agent', '2018-05-20', 4, 'd101'),
(1013, 'counter', '2018-05-20', 4, 'd102'),
(1014, 'counter', '2018-05-20', 4, 'd102'),
(1015, 'online', '2018-05-21', 3, 'd103'),
(1016, 'online', '2018-05-21', 3, 'd103'),
(1017, 'online', '2018-05-21', 3, 'e101'),
(1018, 'online', '2018-05-21', 3, 'e102'),
(1019, 'counter', '2018-05-22', 5, 'e103'),
(1020, 'counter', '2018-05-22', 5, 'f101');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cruise`
--
ALTER TABLE `cruise`
  ADD PRIMARY KEY (`deckid`),
  ADD KEY `feid123` (`eid`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`did`),
  ADD KEY `fmgr123` (`mgrsid`);

--
-- Indexes for table `emergency`
--
ALTER TABLE `emergency`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `ftkid123` (`tkid`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_no`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`pid`,`sid`),
  ADD KEY `fsid123` (`sid`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `fdeckid123` (`deckid`),
  ADD KEY `fdid123` (`did`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`tkid`),
  ADD KEY `froom123` (`room_no`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cruise`
--
ALTER TABLE `cruise`
  ADD CONSTRAINT `feid123` FOREIGN KEY (`eid`) REFERENCES `emergency` (`eid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `dept`
--
ALTER TABLE `dept`
  ADD CONSTRAINT `fmgr123` FOREIGN KEY (`mgrsid`) REFERENCES `staff` (`sid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `passenger`
--
ALTER TABLE `passenger`
  ADD CONSTRAINT `ftkid123` FOREIGN KEY (`tkid`) REFERENCES `ticket` (`tkid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `fpid123` FOREIGN KEY (`pid`) REFERENCES `passenger` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fsid123` FOREIGN KEY (`sid`) REFERENCES `staff` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `fdeckid123` FOREIGN KEY (`deckid`) REFERENCES `cruise` (`deckid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fdid123` FOREIGN KEY (`did`) REFERENCES `dept` (`did`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `froom123` FOREIGN KEY (`room_no`) REFERENCES `room` (`room_no`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
