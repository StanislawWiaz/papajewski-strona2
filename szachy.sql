-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 01, 2026 at 10:41 PM
-- Wersja serwera: 8.0.45-0ubuntu0.24.04.1
-- Wersja PHP: 8.3.6

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
  `id` int NOT NULL,
  `imie_nazwisko` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `Tytul` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `ranking` int NOT NULL,
  `czas_gry` varchar(2) COLLATE utf8mb4_general_ci NOT NULL,
  `kraj_pochodzenia` varchar(25) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mistrzowie`
--

INSERT INTO `mistrzowie` (`id`, `imie_nazwisko`, `Tytul`, `ranking`, `czas_gry`, `kraj_pochodzenia`) VALUES
(4, 'Hikaru Nakamura', 'GM', 2, '30', 'USA'),
(5, 'Fabiano Caruana', 'GM', 3, '30', 'USA'),
(6, 'Ding Liren', 'GM', 4, '30', 'Chiny'),
(7, 'Jan-Krzysztof Duda', 'GM', 5, '30', 'Polska'),
(8, 'Ian Nepomniachtchi', 'GM', 6, '30', 'Rosja'),
(9, 'Alireza Firouzja', 'GM', 7, '30', 'Francja'),
(10, 'Anish Giri', 'GM', 8, '30', 'Holandia'),
(11, 'Wesley So', 'GM', 9, '30', 'USA'),
(12, 'Viswanathan Anand', 'GM', 10, '30', 'Indie'),
(13, 'Garri Kasparow', 'GM', 11, '30', 'Rosja');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `otwarcia`
--

CREATE TABLE `otwarcia` (
  `id` int NOT NULL,
  `nazwa` varchar(50) NOT NULL,
  `opis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `otwarcia`
--

INSERT INTO `otwarcia` (`id`, `nazwa`, `opis`) VALUES
(1, 'Partia Hiszpańska', 'Jedno z najpopularniejszych otwarć. Zaczyna się od ruchów: 1. e4 e5 2. Sf3 Sc6 3. Gb5.'),
(2, 'Obrona Sycylijska', 'Bardzo agresywna odpowiedź czarnych na 1. e4. Zaczyna się ruchem 1... c5.'),
(3, 'Gambit Hetmański', 'Jedno z najstarszych i najpopularniejszych otwarć zamkniętych. Rozpoczyna się od ruchów 1. d4 d5 2. c4. Białe ofiarowują piona, aby przejąć kontrolę nad centrum.'),
(4, 'Partia Włoska', 'Klasyczne otwarcie znane już w XV wieku. Zaczyna się od ruchów 1. e4 e5 2. Sf3 Sc6 3. Gc4. Głównym celem jest szybki rozwój figur i wczesny atak na słaby punkt f7 w obozie przeciwnika.'),
(5, 'Obrona Francuska', 'Solidna, ale nieco ciasna obrona czarnych przeciwko 1. e4, rozpoczynająca się ruchem 1... e6. Zazwyczaj prowadzi do zamkniętych, strategicznych pozycji i ostrej walki o centrum.'),
(6, 'Obrona Caro-Kann', 'Rozpoczyna się od ruchów 1. e4 c6. Jest to niezwykle solidna i trudna do przebicia obrona dla czarnych. Często prowadzi do korzystnych końcówek dla gracza grającego czarnymi bierkami.'),
(7, 'Obrona królewsko-indyjska', 'Niezwykle dynamiczne i agresywne otwarcie (1. d4 Sf6 2. c4 g6). Czarne celowo oddają białym kontrolę nad centrum szachownicy, aby później przypuścić na nie potężny, bezlitosny kontratak.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rankingi`
--

CREATE TABLE `rankingi` (
  `FIDE_standard` int NOT NULL,
  `FIDE_rapid` int NOT NULL,
  `FIDE_blitz` int NOT NULL,
  `ID_rankingu` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rankingi`
--

INSERT INTO `rankingi` (`FIDE_standard`, `FIDE_rapid`, `FIDE_blitz`, `ID_rankingu`) VALUES
(1234, 1234, 1234, 1),
(2789, 2746, 2887, 2),
(2803, 2765, 2795, 3),
(2780, 2830, 2787, 4),
(2732, 2750, 2790, 5),
(2770, 2760, 2780, 6),
(2759, 2724, 2800, 7),
(2745, 2700, 2750, 8),
(2753, 2764, 2774, 9),
(2751, 2749, 2745, 10),
(2812, 2800, 2800, 11),
(1900, 1800, 1643, 12),
(1111, 1111, 1111, 13),
(1111, 1111, 1111, 14),
(1111, 1111, 1111, 15),
(2233, 2323, 2323, 16);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `teksty`
--

CREATE TABLE `teksty` (
  `id_tekstu` int NOT NULL,
  `tekst` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `podstrona` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teksty`
--

INSERT INTO `teksty` (`id_tekstu`, `tekst`, `podstrona`) VALUES
(1, 'Najdłuższa oficjalna partia szachowa w historii trwała aż 269 posunięć (ponad 20 godzin gry) i zakończyła się remisem. Rozegrano ją w 1989 roku w Belgradzie.', 1),
(2, 'Liczba możliwych unikalnych partii szachowych (tzw. liczba Shannona) jest szacowana na 10^120. To więcej niż liczba atomów w obserwowalnym wszechświecie!', 1),
(3, 'Słowo \"szach-mat\" pochodzi od perskiego zwrotu \"shāh māt\", co w dosłownym tłumaczeniu oznacza \"król jest bezradny\" lub \"król jest pokonany\".', 1),
(4, 'W początkowych wersjach gry Hetman (Królowa) był najsłabszą figurą na szachownicy - mógł poruszać się tylko o jedno pole na ukos. Dopiero w XV wieku zyskał swoją obecną moc.', 1),
(5, 'Składana szachownica została wynaleziona w 1125 roku przez księdza. Kościół zakazywał wtedy gry w szachy, więc ukrywał on swoją planszę udając, że to dwie ułożone obok siebie książki.', 1),
(6, 'W 1997 roku komputer Deep Blue stworzony przez IBM jako pierwsza maszyna w historii pokonał aktualnego mistrza świata w szachach – legendarnego Garriego Kasparowa. Był to przełomowy moment dla sztucznej inteligencji.', 1),
(7, 'Tytuł najmłodszego arcymistrza w historii należy do Abhimanyu Mishry. Zdobył ten tytuł w 2021 roku, mając zaledwie 12 lat, 4 miesiące i 25 dni!', 1),
(8, 'Mat głupca to najszybszy możliwy mat w partii szachów. Można go zadać już w drugim posunięciu! Wymaga to jednak fatalnych i bardzo specyficznych błędów ze strony gracza grającego białymi bierkami.', 1),
(9, 'Z psychologicznego punktu widzenia, regularna gra w szachy znacząco rozwija pamięć, umiejętność rozwiązywania problemów i potrafi podnieść IQ. Dlatego w wielu krajach szachy są obowiązkowym przedmiotem w szkołach.', 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `mistrzowie`
--
ALTER TABLE `mistrzowie`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `otwarcia`
--
ALTER TABLE `otwarcia`
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
  ADD PRIMARY KEY (`id_tekstu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mistrzowie`
--
ALTER TABLE `mistrzowie`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `otwarcia`
--
ALTER TABLE `otwarcia`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rankingi`
--
ALTER TABLE `rankingi`
  MODIFY `ID_rankingu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `teksty`
--
ALTER TABLE `teksty`
  MODIFY `id_tekstu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
