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
('Adidas', 'Predator Accuracy.1 FG', 34999, 42, 'Kiváló tapadás és pontosság a kemény pályákon.', 5120),
('Adidas', 'X Crazyfast.1 FG', 37999, 43, 'Ultra könnyű cipő gyors játékhoz.', 4760),
('Adidas', 'Copa Pure.1 FG', 31999, 41, 'Klasszikus bőr kivitel modern technológiával.', 4300),
('Adidas', 'Nemeziz.1', 35999, 44, 'Rugalmas kialakítás a maximális irányításért.', 3820),
('Adidas', 'Predator Edge.3', 28999, 40, 'Fiatal játékosoknak tervezve.', 2710),
('Adidas', 'X Speedportal.3', 29999, 42, 'Kiegyensúlyozott gyorsaság és stabilitás.', 3950),
('Adidas', 'Predator Mutator 20.1', 36999, 44, 'Maximális kontroll és tapadás.', 3120),
('Adidas', 'Copa Mundial', 39999, 42, 'Időtlen klasszikus bőr focicipő.', 2240),
('Adidas', 'F50 Ghosted.1', 35999, 43, 'Sprinthez optimalizált modell.', 4890),
('Adidas', 'X 18.1 FG', 34999, 41, 'Dinamikus pályamozgásra.', 4010),
('Nike', 'Mercurial Vapor 15 Elite', 36999, 42, 'Könnyű és gyors cipő támadók számára.', 5200),
('Nike', 'Phantom GX Elite', 37999, 44, 'Maximális labdaérzet és irányítás.', 4740),
('Nike', 'Tiempo Legend 9 Elite', 35999, 43, 'Kényelmes, puha bőr felsőrész.', 4550),
('Nike', 'Superfly 9 Academy', 31999, 40, 'Erősítő hatású boka kialakítással.', 3330),
('Nike', 'Phantom Luna 2', 36999, 41, 'Stabil és dinamikus mozgáshoz.', 3470),
('Nike', 'Zoom Mercurial Vapor 15', 38999, 42, 'Zoom Air technológiával.', 4180),
('Nike', 'Tiempo Legend 10 Club', 27999, 42, 'Megfizethető verzió gyakorláshoz.', 3660),
('Nike', 'Phantom Vision Academy', 29999, 43, 'Rejtett fűzéssel a jobb labdaérzékért.', 3210),
('Nike', 'Mercurial Superfly 8', 37999, 44, 'Kifinomult tapadás minden irányban.', 4590),
('Nike', 'Premier 3 FG', 31999, 41, 'Klasszikus dizájn bőr kivitelben.', 2900),
('Nike', 'Phantom GT2 Elite', 38999, 42, 'Irányítás és gyors irányváltásokhoz.', 3670),
('Nike', 'Phantom VSN 2 Elite', 34999, 40, 'Rejtett fűzés és zoknis kialakítás.', 2860),
('Nike', 'Mercurial Vapor 14 Club', 29999, 43, 'Népszerű középkategóriás modell.', 3710),
('Nike', 'Phantom GX Academy', 28999, 42, 'Tökéletes kezdő szinthez.', 3970),
('Nike', 'Tiempo Legend 8 Academy', 28999, 44, 'Masszív és tartós kivitel.', 4080);


INSERT INTO focilabdak (marka, nev, ar, meret, leiras, raktaron) VALUES
('Adidas', 'Al Rihla Pro', 29999, 5, 'A 2022-es világbajnokság hivatalos labdája.', 8700),
('Adidas', 'Telstar 18', 25999, 5, 'A 2018-as világbajnokság hivatalos labdája.', 7520),
('Adidas', 'FIFA Pro Ball', 21999, 5, 'FIFA által hitelesített profi labda.', 6890),
('Adidas', 'Tango España', 18999, 5, 'Régi klasszikus újratervezve.', 7120),
('Adidas', 'UCL Pro Istanbul', 27999, 5, 'Bajnokok Ligája hivatalos labdája.', 7800),
('Adidas', 'Uniforia League', 19999, 5, 'EURO 2020 hivatalos labdája.', 7310),
('Adidas', 'Conext 21', 20999, 5, 'Nemzetközi meccsekhez tervezve.', 8000),
('Adidas', 'Finale 21 Pro', 24999, 5, 'UCL döntő hivatalos labdája.', 7600),
('Adidas', 'Predator Training Ball', 9999, 4, 'Kiváló edzéslabda.', 11200),
('Adidas', 'X Speedportal Ball', 10999, 4, 'Modern design gyakorláshoz.', 8900),
('Nike', 'Flight Ball', 26999, 5, 'Premier League hivatalos labdája.', 8340),
('Nike', 'Merlin Serie A', 23999, 5, 'Serie A hivatalos labdája.', 7010),
('Nike', 'Strike Ball', 14999, 4, 'Megbízható edzéslabda.', 11300),
('Nike', 'Academy Team', 12999, 4, 'Tartós és sokoldalú labda.', 12800),
('Nike', 'Pitch Team Ball', 9999, 4, 'Jól látható színekkel.', 10400),
('Nike', 'Premier League Flight', 27999, 5, 'Profik által használt labda.', 9320),
('Nike', 'Phantom Skills Ball', 8999, 4, 'Kisebb méret gyakorláshoz.', 7700),
('Nike', 'Park Soccer Ball', 10999, 4, 'Alap edzőlabda.', 9600),
('Nike', 'Tiempo Legend Ball', 9999, 4, 'Egyensúly és repülés kontroll.', 8200),
('Nike', 'Strike Team', 11999, 5, 'Edzésekhez és amatőr meccsekhez.', 8700),
('Nike', 'Futsal Pro', 12999, 4, 'Beltéri focihoz.', 6800),
('Nike', 'Futsal Maestro', 10999, 4, 'Futsal specifikus.', 5900),
('Nike', 'Flight Euro 2024', 28999, 5, '2024-es EB hivatalos labda.', 9200),
('Nike', 'Academy Futsal', 9999, 4, 'Beltéri játékra optimalizált.', 6100),
('Nike', 'Zoom Ball', 11999, 4, 'Gyorsaságra tervezve.', 7400);

INSERT INTO egyebek (marka, nev, ar, leiras, raktaron) VALUES
('Adidas', 'Tiro Pro kapus kesztyű', 15990, 'Profi szintű tapadás és védelem.', 2000),
('Adidas', 'Predator Training Gloves', 9990, 'Edzésekhez tervezett strapabíró kesztyű.', 2700),
('Adidas', 'F50 Pro kapus kesztyű', 17990, 'Kiváló fogás és stabilitás.', 1500),
('Adidas', 'Mini kapu szett', 21990, 'Két mini kapu edzésekhez.', 1300),
('Adidas', 'Pop-up hordozható kapu', 9990, 'Könnyen felállítható kisméretű kapu.', 2100),
('Adidas', 'Tango háló', 5990, 'Hordozható háló szett.', 1800),
('Adidas', 'Rebounder háló', 15990, 'Visszapattanó gyakorló eszköz.', 1400),
('Adidas', 'Gyermek kapus szett', 18990, 'Kesztyű, térdvédő és sípcsontvédő.', 1900),
('Nike', 'Grip3 kapuskesztyű', 16990, 'Kiemelkedő tapadás és párnázás.', 2200),
('Nike', 'Spyne Pro', 18990, 'Ujjmerevítéssel a védelemért.', 1600),
('Nike', 'Match Goalkeeper Gloves', 8990, 'Általános használatra.', 3000),
('Nike', 'Pop-up Training Goal', 8990, 'Könnyű hordozható kapu.', 2100),
('Nike', 'Futsal kapu szett', 23990, 'Hivatalos méret, beltéri.', 1200),
('Nike', 'Junior kapus kesztyű', 6990, 'Gyermek méret, jó védelem.', 2500);
