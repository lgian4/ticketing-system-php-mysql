-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 29 Jan 2018 pada 06.37
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ticketing`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `customerid` varchar(7) NOT NULL,
  `name` varchar(55) NOT NULL,
  `address` varchar(55) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `gender` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`customerid`, `name`, `address`, `phone`, `gender`) VALUES
('CSR-001', 'ferry', 'ferryxmith@gmail.com', '863637263726376', ''),
('CSR-002', 'wwuwuwuw', 'ferryxmith@gmail.com', 'sdkfjaksjks', NULL),
('CSR-003', 'ferry', 'ferryxmith@gmail.com', '92362764723652', 'paid'),
('CSR-004', 'dayat', 'dayat@gmail.com', '23472364723', NULL),
('CSR-005', 'gian', 'gian@gmail.com', '237643276237463', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `passengers`
--

CREATE TABLE `passengers` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `date` date NOT NULL,
  `gender` varchar(1) NOT NULL,
  `statuses` varchar(1) NOT NULL,
  `reservation_id` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `passengers`
--

INSERT INTO `passengers` (`id`, `name`, `date`, `gender`, `statuses`, `reservation_id`) VALUES
(1, 'sdajfhsdjfhsjdkhf', '1970-01-01', 'L', 'D', 'RSV-001'),
(2, 'ksajfhskjdfhkjsdhfkj', '1970-01-01', 'L', 'A', 'RSV-001'),
(3, 'ueafisdhfkjsdh', '1970-01-01', 'P', 'A', 'RSV-001'),
(4, 'sajkfhskjdfhdsj', '1970-01-01', 'L', 'B', 'RSV-001'),
(5, 'werhewhru', '1970-01-01', 'P', 'D', 'RSV-002'),
(6, 'isdhfjshdfjkdsh', '1970-01-01', 'L', 'D', 'RSV-003'),
(7, 'shdfhjsdjfhsdjf', '1970-01-01', 'P', 'A', 'RSV-003'),
(8, 'sjhjsfhjkdshfjdshj', '1970-01-01', 'L', 'B', 'RSV-003'),
(9, 'hsdfjksdhfkjsdhjfdhs', '1970-01-01', 'P', 'B', 'RSV-003'),
(10, 'djsfhgkjfdhgjkfd', '1970-01-01', 'P', 'D', 'RSV-004'),
(11, 'sjdahfkjdshafjksd', '1970-01-01', 'L', 'A', 'RSV-004'),
(12, 'skjhdfjkdshfjksdhjkf', '1970-01-01', 'L', 'A', 'RSV-004'),
(13, 'jdkhfkjdsafhkjdshfjs', '1970-01-01', 'L', 'D', 'RSV-005'),
(14, 'jsadhfjkdshfjsdhj', '1970-01-01', 'P', 'A', 'RSV-005'),
(15, 'skjadfhsdkjfhsdjkfhdsj', '1970-01-01', 'L', 'A', 'RSV-005');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservation`
--

CREATE TABLE `reservation` (
  `reservation_id` varchar(7) NOT NULL,
  `reservation_code` varchar(10) DEFAULT NULL,
  `reservation_at` time DEFAULT NULL,
  `reservation_date` date NOT NULL,
  `customerid` varchar(7) NOT NULL,
  `seat_code` varchar(10) DEFAULT NULL,
  `ruteid` varchar(7) NOT NULL,
  `depart_at` time DEFAULT NULL,
  `price` int(11) NOT NULL,
  `userid` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `reservation`
--

INSERT INTO `reservation` (`reservation_id`, `reservation_code`, `reservation_at`, `reservation_date`, `customerid`, `seat_code`, `ruteid`, `depart_at`, `price`, `userid`) VALUES
('RSV-001', NULL, NULL, '2018-01-29', 'CSR-001', NULL, 'RTI-002', NULL, 980000, NULL),
('RSV-002', NULL, NULL, '2018-01-29', 'CSR-002', NULL, 'RTI-001', NULL, 550000, NULL),
('RSV-003', NULL, NULL, '2018-01-29', 'CSR-003', NULL, 'RTI-001', NULL, 1045000, NULL),
('RSV-004', NULL, NULL, '2018-01-29', 'CSR-004', NULL, 'RTI-002', NULL, 980000, NULL),
('RSV-005', NULL, NULL, '2018-01-29', 'CSR-005', NULL, 'RTI-002', NULL, 980000, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rute`
--

CREATE TABLE `rute` (
  `ruteid` varchar(7) NOT NULL,
  `depart_at` varchar(50) NOT NULL,
  `rute_form` varchar(50) NOT NULL,
  `rute_to` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `transportationid` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rute`
--

INSERT INTO `rute` (`ruteid`, `depart_at`, `rute_form`, `rute_to`, `price`, `transportationid`) VALUES
('RTI-001', '09.45', 'Batam', 'Jakarta', 550000, 'TRD0001'),
('RTI-002', '10.15', 'Batam', 'Jakarta', 350000, 'TR002');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transportation`
--

CREATE TABLE `transportation` (
  `transportationid` varchar(7) NOT NULL,
  `code` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `seat_qty` int(11) NOT NULL,
  `transportation_typeid` varchar(7) NOT NULL,
  `picture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transportation`
--

INSERT INTO `transportation` (`transportationid`, `code`, `description`, `seat_qty`, `transportation_typeid`, `picture`) VALUES
('TR002', 'QZ', 'AirAsia', 70, 'TTY01', 'gambar/airasia.png'),
('TRD0001', 'LION-01', 'Lion Air', 50, 'TTY01', 'gambar/lion.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transportation_type`
--

CREATE TABLE `transportation_type` (
  `transportation_typeid` varchar(7) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transportation_type`
--

INSERT INTO `transportation_type` (`transportation_typeid`, `description`) VALUES
('TTY01', 'Pesawat Terbang'),
('TTY02', 'Kereta Api');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `userid` varchar(7) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(55) NOT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `fullname`, `level`) VALUES
('USR001', 'admin', 'admin', 'Hendro', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `passengers`
--
ALTER TABLE `passengers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `passengers_ibfk_1` (`reservation_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `ruteid` (`ruteid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `reservation_ibfk_1` (`customerid`);

--
-- Indexes for table `rute`
--
ALTER TABLE `rute`
  ADD PRIMARY KEY (`ruteid`),
  ADD KEY `transportationid` (`transportationid`);

--
-- Indexes for table `transportation`
--
ALTER TABLE `transportation`
  ADD PRIMARY KEY (`transportationid`),
  ADD KEY `transportation_typeid` (`transportation_typeid`);

--
-- Indexes for table `transportation_type`
--
ALTER TABLE `transportation_type`
  ADD PRIMARY KEY (`transportation_typeid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `passengers`
--
ALTER TABLE `passengers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `passengers`
--
ALTER TABLE `passengers`
  ADD CONSTRAINT `passengers_ibfk_1` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`reservation_id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`customerid`) REFERENCES `customer` (`customerid`) ON DELETE CASCADE,
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`ruteid`) REFERENCES `rute` (`ruteid`),
  ADD CONSTRAINT `reservation_ibfk_3` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`);

--
-- Ketidakleluasaan untuk tabel `rute`
--
ALTER TABLE `rute`
  ADD CONSTRAINT `rute_ibfk_1` FOREIGN KEY (`transportationid`) REFERENCES `transportation` (`transportationid`);

--
-- Ketidakleluasaan untuk tabel `transportation`
--
ALTER TABLE `transportation`
  ADD CONSTRAINT `transportation_ibfk_1` FOREIGN KEY (`transportation_typeid`) REFERENCES `transportation_type` (`transportation_typeid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
