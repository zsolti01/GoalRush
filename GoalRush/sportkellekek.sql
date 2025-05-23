-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Máj 16. 10:51
-- Kiszolgáló verziója: 10.4.20-MariaDB
-- PHP verzió: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `sportkellekek`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalok`
--

CREATE TABLE `felhasznalok` (
  `UserID` int(11) NOT NULL,
  `Felhasználó` varchar(255) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Jelszó` varchar(255) COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `rendelések`
--

CREATE TABLE `rendelések` (
  `RendelésID` int(11) NOT NULL,
  `VásárlóNév` varchar(255) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `TermékID` int(11) DEFAULT NULL,
  `Mennyiség` int(11) DEFAULT NULL,
  `Dátum` date DEFAULT NULL,
  `Ár` int(11) DEFAULT NULL,
  `Státusz` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `rendelések`
--

INSERT INTO `rendelések` (`RendelésID`, `VásárlóNév`, `TermékID`, `Mennyiség`, `Dátum`, `Ár`, `Státusz`) VALUES
(1, 'Kiss Péter', 1, 2, '2025-05-01', 10000, 'Feldolgozva'),
(2, 'Kovács Anna', 3, 1, '2025-05-02', 25000, 'Kiszállítva'),
(3, 'Nagy László', 5, 3, '2025-05-03', 9000, 'Feldolgozva'),
(4, 'Tóth Eszter', 8, 2, '2025-05-04', 8000, 'Kiszállítva'),
(5, 'Varga Balázs', 4, 1, '2025-05-05', 7000, 'Törölve'),
(6, 'Molnár Dóra', 6, 4, '2025-05-06', 24000, 'Feldolgozva'),
(7, 'Horváth István', 9, 5, '2025-05-07', 7500, 'Kiszállítva'),
(8, 'Farkas Júlia', 2, 1, '2025-05-08', 12000, 'Törölve'),
(9, 'Szabó Mária', 7, 1, '2025-05-09', 8000, 'Feldolgozva'),
(10, 'Kiss Márk', 10, 2, '2025-05-10', 7000, 'Kiszállítva');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `sportkellekek`
--

CREATE TABLE `sportkellekek` (
  `TermékID` int(11) NOT NULL,
  `Terméknév` varchar(255) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `Kategória` varchar(100) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `Ár` int(11) DEFAULT NULL,
  `Elérhetőség` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `Mennyiség` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `sportkellekek`
--

INSERT INTO `sportkellekek` (`TermékID`, `Terméknév`, `Kategória`, `Ár`, `Elérhetőség`, `Mennyiség`) VALUES
(1, 'Foci labda', 'Foci', 5000, 'Raktáron', 150),
(2, 'Teniszütő', 'Tenisz', 12000, 'Nincs raktáron', 0),
(3, 'Futócipő', 'Futás', 25000, 'Raktáron', 75),
(4, 'Kosárlabda', 'Kosárlabda', 7000, 'Raktáron', 50),
(5, 'Jóga matrac', 'Jóga', 3000, 'Raktáron', 200),
(6, 'Kézilabda', 'Kézilabda', 6000, 'Raktáron', 100),
(7, 'Birkózó nadrág', 'Birkózás', 8000, 'Raktáron', 30),
(8, 'Póló (sport)', 'Ruházat', 4000, 'Raktáron', 300),
(9, 'Tornazsák', 'Ruházat', 1500, 'Raktáron', 500),
(10, 'Asztali teniszütő', 'Asztalitenisz', 3500, 'Nincs raktáron', 0);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `felhasznalok`
--
ALTER TABLE `felhasznalok`
  ADD PRIMARY KEY (`UserID`);

--
-- A tábla indexei `rendelések`
--
ALTER TABLE `rendelések`
  ADD PRIMARY KEY (`RendelésID`),
  ADD KEY `TermékID` (`TermékID`);

--
-- A tábla indexei `sportkellekek`
--
ALTER TABLE `sportkellekek`
  ADD PRIMARY KEY (`TermékID`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `rendelések`
--
ALTER TABLE `rendelések`
  ADD CONSTRAINT `rendelések_ibfk_1` FOREIGN KEY (`TermékID`) REFERENCES `sportkellekek` (`TermékID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
