-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sty 19, 2026 at 11:43 AM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `szachy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mistrzowie`
--

CREATE TABLE `mistrzowie` (
  `id` int(11) NOT NULL,
  `imie_nazwisko` varchar(25) NOT NULL,
  `Tytul` varchar(5) NOT NULL,
  `ranking` int(4) NOT NULL,
  `czas_gry` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mistrzowie`
--

INSERT INTO `mistrzowie` (`id`, `imie_nazwisko`, `Tytul`, `ranking`, `czas_gry`) VALUES
(1, 'Magnus Carlsen', 'GM', 1, '30');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rankingi`
--

CREATE TABLE `rankingi` (
  `FIDE_standard` int(11) NOT NULL,
  `FIDE_rapid` int(11) NOT NULL,
  `FIDE_blitz` int(11) NOT NULL,
  `ID_rankingu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rankingi`
--

INSERT INTO `rankingi` (`FIDE_standard`, `FIDE_rapid`, `FIDE_blitz`, `ID_rankingu`) VALUES
(1234, 1234, 1234, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `teksty`
--

CREATE TABLE `teksty` (
  `id` int(11) NOT NULL,
  `tekst` varchar(300) NOT NULL,
  `podstrona` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `mistrzowie`
--
ALTER TABLE `mistrzowie`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `rankingi`
--
ALTER TABLE `rankingi`
  ADD PRIMARY KEY (`ID_rankingu`);

--
-- Indeksy dla tabeli `teksty`
--
ALTER TABLE `teksty`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mistrzowie`
--
ALTER TABLE `mistrzowie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rankingi`
--
ALTER TABLE `rankingi`
  MODIFY `ID_rankingu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teksty`
--
ALTER TABLE `teksty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
