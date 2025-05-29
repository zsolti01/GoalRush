DROP DATABASE IF EXISTS termekek;
CREATE DATABASE IF NOT EXISTS termekek
CHARACTER SET utf8mb4
COLLATE utf8mb4_hungarian_ci;

USE termekek;

DROP TABLE IF EXISTS focicipok;
CREATE TABLE focicipok (
    id INT AUTO_INCREMENT PRIMARY KEY,
    marka VARCHAR(100),
    nev VARCHAR(100),
    ar INT,
    meret INT,
    leiras TEXT,
    raktaron INT
) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;

DROP TABLE IF EXISTS focilabdak;
CREATE TABLE focilabdak (
    id INT AUTO_INCREMENT PRIMARY KEY,
    marka VARCHAR(100),
    nev VARCHAR(100),
    ar INT,
    meret INT,
    leiras TEXT,
    raktaron INT
) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;

DROP TABLE IF EXISTS egyebek;
CREATE TABLE egyebek (
    id INT AUTO_INCREMENT PRIMARY KEY,
    marka VARCHAR(100),
    nev VARCHAR(100),
    ar INT,
    leiras TEXT,
    raktaron INT
) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;

INSERT INTO focicipok (marka, nev, ar, meret, leiras, raktaron) VALUES
('Adidas', 'Predator Accuracy', 64070, 39, 'Predator Accuracy - Kiváló minőségű focicipő, ideális minden szintű játékos számára.', 1250),
('Adidas', 'Copa Pure', 29531, 38, 'Copa Pure - Kiváló minőségű focicipő, ideális minden szintű játékos számára.', 940),
('Nike', 'Phantom Venom', 40333, 42, 'Phantom Venom - Kiváló minőségű focicipő, ideális minden szintű játékos számára.', 1860);

INSERT INTO focilabdak (marka, nev, ar, meret, leiras, raktaron) VALUES
('Adidas', 'Al Rihla (VB 2022)', 15357, 5, 'Al Rihla (VB 2022) - Kiváló minőségű focilabda, ideális minden szintű játékos számára.', 2200),
('Adidas', 'Uniforia (EB 2020)', 16268, 5, 'Uniforia (EB 2020) - Kiváló minőségű focilabda, ideális minden szintű játékos számára.', 1950),
('Adidas', 'Tsubasa Pro', 11769, 5, 'Tsubasa Pro - Kiváló minőségű focilabda, ideális minden szintű játékos számára.', 1330);

INSERT INTO egyebek (marka, nev, ar, leiras, raktaron) VALUES
('Adidas', 'Kapuskesztyű Predator', 15493, 'Professzionális tapadás esőben is', 830),
('Nike', 'Kapuskesztyű Vapor Grip', 18576, 'Rugalmasság és stabilitás', 1240),
('Select', 'Labdatartó háló', 12166, 'Akár 10 labda tárolására', 650);
