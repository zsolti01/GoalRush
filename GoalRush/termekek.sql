CREATE DATABASE IF NOT EXISTS termekek
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

USE termekek;

-- Focicipők
CREATE TABLE focicipok (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nev VARCHAR(100) NOT NULL,
    ar DECIMAL(10, 2) NOT NULL,
    meret INT NOT NULL
);

INSERT INTO focicipok (nev, ar, meret) VALUES
('Adidas Predator Accuracy+', 39990, 42),
('Adidas X Crazyfast.1 FG', 41990, 43),
('Adidas Copa Pure.1', 37990, 41),
('Nike Phantom GX Elite', 42990, 42),
('Nike Tiempo Legend 10 Elite', 41990, 44),
('Adidas Predator Freak .1', 38990, 42),
('Nike Mercurial Vapor 15 Elite', 44990, 43),
('Adidas Nemeziz .1', 39990, 40),
('Nike Phantom Venom Elite', 39990, 42),
('Adidas X Speedportal.1', 40990, 44);

-- Focilabdák
CREATE TABLE focilabdak (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nev VARCHAR(100) NOT NULL,
    ar DECIMAL(10, 2) NOT NULL,
    meret VARCHAR(10)
);

INSERT INTO focilabdak (nev, ar, meret) VALUES
('Adidas Al Rihla (2022 VB)', 24990, '5'),
('Adidas Uniforia (EURO 2020)', 23990, '5'),
('Nike Flight Premier League', 25990, '5'),
('Puma Orbita LaLiga 2023', 22990, '5'),
('Adidas Telstar 18 (2018 VB)', 21990, '5'),
('Adidas Finale Istanbul UCL', 24990, '5'),
('Nike Merlin Serie A', 21990, '5'),
('Adidas Tango España (retro)', 19990, '5'),
('Nike Strike Team', 14990, '5'),
('Adidas Roteiro (EURO 2004)', 18990, '5');


-- Egyebek
CREATE TABLE egyebek (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nev VARCHAR(100) NOT NULL,
    ar DECIMAL(10, 2) NOT NULL,
    kategoria VARCHAR(50)
);

INSERT INTO egyebek (nev, ar, kategoria) VALUES
('Adidas Predator GK Gloves', 15990, 'Kesztyű'),
('Nike Vapor Grip3 GK Gloves', 16990, 'Kesztyű'),
('Puma Future Grip 1 GK Gloves', 14990, 'Kesztyű'),
('Reusch Attrakt Freegel Gold', 17990, 'Kesztyű'),
('Select Ultimate Grip Gloves', 12990, 'Kesztyű'),
('SKLZ Quickster 2.4m kapu', 32990, 'Kapu'),
('Hudora XXL fém focikapu', 35990, 'Kapu'),
('Exit Coppa Steel Goal', 38990, 'Kapu'),
('Adidas Training Goal', 29990, 'Kapu'),
('Pro Kicker hálós hordozható kapu', 27990, 'Kapu');