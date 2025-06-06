-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Jún 05. 18:36
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `termekek`
--

-- --------------------------------------------------------
DROP DATABASE IF EXISTS GoalRush;
CREATE DATABASE IF NOT EXISTS GoalRush  
CHARACTER SET utf8
COLLATE utf8_hungarian_ci;
USE GoalRush;

--
-- Tábla szerkezet ehhez a táblához `egyebek`
--

CREATE TABLE `egyebek` (
  `id` int(11) NOT NULL,
  `marka` varchar(100) DEFAULT NULL,
  `nev` varchar(100) DEFAULT NULL,
  `ar` int(11) DEFAULT NULL,
  `leiras` text DEFAULT NULL,
  `raktaron` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `egyebek`
--

INSERT INTO `egyebek` (`id`, `marka`, `nev`, `ar`, `leiras`, `raktaron`) VALUES
(1, 'Adidas', 'Tiro Pro kapus kesztyű', 15990, 'Profi szintű tapadás és védelem.', 2000),
(2, 'Adidas', 'Predator Training Gloves', 9990, 'Edzésekhez tervezett strapabíró kesztyű.', 2700),
(3, 'Adidas', 'F50 Pro kapus kesztyű', 17990, 'Kiváló fogás és stabilitás.', 1500),
(4, 'Adidas', 'Mini kapu szett', 21990, 'Két mini kapu edzésekhez.', 1300),
(5, 'Adidas', 'Pop-up hordozható kapu', 9990, 'Könnyen felállítható kisméretű kapu.', 2100),
(6, 'Adidas', 'Tango háló', 5990, 'Hordozható háló szett.', 1800),
(7, 'Adidas', 'Rebounder háló', 15990, 'Visszapattanó gyakorló eszköz.', 1400),
(8, 'Adidas', 'Gyermek kapus szett', 18990, 'Kesztyű, térdvédő és sípcsontvédő.', 1900),
(9, 'Nike', 'Grip3 kapuskesztyű', 16990, 'Kiemelkedő tapadás és párnázás.', 2200),
(10, 'Nike', 'Spyne Pro', 18990, 'Ujjmerevítéssel a védelemért.', 1600),
(11, 'Nike', 'Match Goalkeeper Gloves', 8990, 'Általános használatra.', 3000),
(12, 'Nike', 'Pop-up Training Goal', 8990, 'Könnyű hordozható kapu.', 2100),
(13, 'Nike', 'Futsal kapu szett', 23990, 'Hivatalos méret, beltéri.', 1200),
(14, 'Nike', 'Junior kapus kesztyű', 6990, 'Gyermek méret, jó védelem.', 2500);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalok`
--

CREATE TABLE `felhasznalok` (
  `UserID` int(11) NOT NULL,
  `Felhasználó` varchar(255) NOT NULL,
  `Jelszó` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `felhasznalok`
--

INSERT INTO `felhasznalok` (`UserID`, `Felhasználó`, `Jelszó`) VALUES
(1, 'tesztuser1', 'jelszo123'),
(2, 'alma.korte', 'titok456'),
(3, 'robot2000', 'pass789');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `focicipok`
--

CREATE TABLE `focicipok` (
  `id` int(11) NOT NULL,
  `marka` varchar(100) DEFAULT NULL,
  `nev` varchar(100) DEFAULT NULL,
  `ar` int(11) DEFAULT NULL,
  `meret` int(11) DEFAULT NULL,
  `leiras` text DEFAULT NULL,
  `raktaron` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `focicipok`
--

INSERT INTO `focicipok` (`id`, `marka`, `nev`, `ar`, `meret`, `leiras`, `raktaron`) VALUES
(1, 'Adidas', 'Predator Accuracy.1 FG', 34999, 42, 'Kiváló tapadás és pontosság a kemény pályákon.', 5120),
(2, 'Adidas', 'X Crazyfast.1 FG', 37999, 43, 'Ultra könnyű cipő gyors játékhoz.', 4760),
(3, 'Adidas', 'Copa Pure.1 FG', 31999, 41, 'Klasszikus bőr kivitel modern technológiával.', 4300),
(4, 'Adidas', 'Nemeziz.1', 35999, 44, 'Rugalmas kialakítás a maximális irányításért.', 3820),
(5, 'Adidas', 'Predator Edge.3', 28999, 40, 'Fiatal játékosoknak tervezve.', 2710),
(6, 'Adidas', 'X Speedportal.3', 29999, 42, 'Kiegyensúlyozott gyorsaság és stabilitás.', 3950),
(7, 'Adidas', 'Predator Mutator 20.1', 36999, 44, 'Maximális kontroll és tapadás.', 3120),
(8, 'Adidas', 'Copa Mundial', 39999, 42, 'Időtlen klasszikus bőr focicipő.', 2240),
(9, 'Adidas', 'F50 Ghosted.1', 35999, 43, 'Sprinthez optimalizált modell.', 4890),
(10, 'Adidas', 'X 18.1 FG', 34999, 41, 'Dinamikus pályamozgásra.', 4010),
(11, 'Nike', 'Mercurial Vapor 15 Elite', 36999, 42, 'Könnyű és gyors cipő támadók számára.', 5200),
(12, 'Nike', 'Phantom GX Elite', 37999, 44, 'Maximális labdaérzet és irányítás.', 4740),
(13, 'Nike', 'Tiempo Legend 9 Elite', 35999, 43, 'Kényelmes, puha bőr felsőrész.', 4550),
(14, 'Nike', 'Superfly 9 Academy', 31999, 40, 'Erősítő hatású boka kialakítással.', 3330),
(15, 'Nike', 'Phantom Luna 2', 36999, 41, 'Stabil és dinamikus mozgáshoz.', 3470),
(16, 'Nike', 'Zoom Mercurial Vapor 15', 38999, 42, 'Zoom Air technológiával.', 4180),
(17, 'Nike', 'Tiempo Legend 10 Club', 27999, 42, 'Megfizethető verzió gyakorláshoz.', 3660),
(18, 'Nike', 'Phantom Vision Academy', 29999, 43, 'Rejtett fűzéssel a jobb labdaérzékért.', 3210),
(19, 'Nike', 'Mercurial Superfly 8', 37999, 44, 'Kifinomult tapadás minden irányban.', 4590),
(20, 'Nike', 'Premier 3 FG', 31999, 41, 'Klasszikus dizájn bőr kivitelben.', 2900),
(21, 'Nike', 'Phantom GT2 Elite', 38999, 42, 'Irányítás és gyors irányváltásokhoz.', 3670),
(22, 'Nike', 'Phantom VSN 2 Elite', 34999, 40, 'Rejtett fűzés és zoknis kialakítás.', 2860),
(23, 'Nike', 'Mercurial Vapor 14 Club', 29999, 43, 'Népszerű középkategóriás modell.', 3710),
(24, 'Nike', 'Phantom GX Academy', 28999, 42, 'Tökéletes kezdő szinthez.', 3970),
(25, 'Nike', 'Tiempo Legend 8 Academy', 28999, 44, 'Masszív és tartós kivitel.', 4080);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `focilabdak`
--

CREATE TABLE `focilabdak` (
  `id` int(11) NOT NULL,
  `marka` varchar(100) DEFAULT NULL,
  `nev` varchar(100) DEFAULT NULL,
  `ar` int(11) DEFAULT NULL,
  `meret` int(11) DEFAULT NULL,
  `leiras` text DEFAULT NULL,
  `raktaron` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `focilabdak`
--

INSERT INTO `focilabdak` (`id`, `marka`, `nev`, `ar`, `meret`, `leiras`, `raktaron`) VALUES
(1, 'Adidas', 'Al Rihla Pro', 29999, NULL, 'A 2022-es világbajnokság hivatalos labdája.', 8700),
(2, 'Adidas', 'Telstar 18', 25999, NULL, 'A 2018-as világbajnokság hivatalos labdája.', 7520),
(3, 'Adidas', 'FIFA Pro Ball', 21999, NULL, 'FIFA által hitelesített profi labda.', 6890),
(4, 'Adidas', 'Tango España', 18999, NULL, 'Régi klasszikus újratervezve.', 7120),
(5, 'Adidas', 'UCL Pro Istanbul', 27999, NULL, 'Bajnokok Ligája hivatalos labdája.', 7800),
(6, 'Adidas', 'Uniforia League', 19999, NULL, 'EURO 2020 hivatalos labdája.', 7310),
(7, 'Adidas', 'Conext 21', 20999, NULL, 'Nemzetközi meccsekhez tervezve.', 8000),
(8, 'Adidas', 'Finale 21 Pro', 24999, NULL, 'UCL döntő hivatalos labdája.', 7600),
(9, 'Adidas', 'Predator Training Ball', 9999, NULL, 'Kiváló edzéslabda.', 11200),
(10, 'Adidas', 'X Speedportal Ball', 10999, NULL, 'Modern design gyakorláshoz.', 8900),
(11, 'Nike', 'Flight Ball', 26999, NULL, 'Premier League hivatalos labdája.', 8340),
(12, 'Nike', 'Merlin Serie A', 23999, NULL, 'Serie A hivatalos labdája.', 7010),
(13, 'Nike', 'Strike Ball', 14999, NULL, 'Megbízható edzéslabda.', 11300),
(14, 'Nike', 'Academy Team', 12999, NULL, 'Tartós és sokoldalú labda.', 12800),
(15, 'Nike', 'Pitch Team Ball', 9999, NULL, 'Jól látható színekkel.', 10400),
(16, 'Nike', 'Premier League Flight', 27999, NULL, 'Profik által használt labda.', 9320),
(17, 'Nike', 'Phantom Skills Ball', 8999, NULL, 'Kisebb méret gyakorláshoz.', 7700),
(18, 'Nike', 'Park Soccer Ball', 10999, NULL, 'Alap edzőlabda.', 9600),
(19, 'Nike', 'Tiempo Legend Ball', 9999, NULL, 'Egyensúly és repülés kontroll.', 8200),
(20, 'Nike', 'Strike Team', 11999, NULL, 'Edzésekhez és amatőr meccsekhez.', 8700),
(21, 'Nike', 'Futsal Pro', 12999, NULL, 'Beltéri focihoz.', 6800),
(22, 'Nike', 'Futsal Maestro', 10999, NULL, 'Futsal specifikus.', 5900),
(23, 'Nike', 'Flight Euro 2024', 28999, NULL, '2024-es EB hivatalos labda.', 9200),
(24, 'Nike', 'Academy Futsal', 9999, NULL, 'Beltéri játékra optimalizált.', 6100),
(25, 'Nike', 'Zoom Ball', 11999, NULL, 'Gyorsaságra tervezve.', 7400);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `rendelések`
--

CREATE TABLE `rendelések` (
  `RendelésID` int(11) NOT NULL,
  `VásárlóNév` varchar(255) DEFAULT NULL,
  `TermékID` int(11) DEFAULT NULL,
  `Mennyiség` int(11) DEFAULT NULL,
  `Dátum` date DEFAULT NULL,
  `Ár` int(11) DEFAULT NULL,
  `Státusz` varchar(50) DEFAULT NULL
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

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `egyebek`
--
ALTER TABLE `egyebek`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `felhasznalok`
--
ALTER TABLE `felhasznalok`
  ADD PRIMARY KEY (`UserID`);

--
-- A tábla indexei `focicipok`
--
ALTER TABLE `focicipok`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `focilabdak`
--
ALTER TABLE `focilabdak`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `egyebek`
--
ALTER TABLE `egyebek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT a táblához `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `focicipok`
--
ALTER TABLE `focicipok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT a táblához `focilabdak`
--
ALTER TABLE `focilabdak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
