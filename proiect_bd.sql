-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: mart. 13, 2024 la 08:56 PM
-- Versiune server: 10.4.28-MariaDB
-- Versiune PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `proiect_bd`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `angajati`
--

CREATE TABLE `angajati` (
  `Ang_id` char(250) NOT NULL,
  `Nume` char(250) NOT NULL,
  `Prenume` char(250) NOT NULL,
  `Data_N` date DEFAULT NULL,
  `Data_Ang` date DEFAULT NULL,
  `Adresa_E` varchar(250) DEFAULT NULL,
  `Telefon` int(11) DEFAULT NULL,
  `Functie` char(200) DEFAULT NULL,
  `Salariu` int(50) DEFAULT NULL,
  `Sef` int(11) DEFAULT NULL,
  `Parola` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `angajati`
--

INSERT INTO `angajati` (`Ang_id`, `Nume`, `Prenume`, `Data_N`, `Data_Ang`, `Adresa_E`, `Telefon`, `Functie`, `Salariu`, `Sef`, `Parola`) VALUES
('1001', 'Ionita', 'Augustin', '2003-01-29', '2023-05-01', 'augustin.ionita@mail.ru', 123456789, 'Manager', 17000, NULL, '800dc2cc4780b58f9690b02718fdafba'),
('1002', 'Popescu', 'Ion', '1990-01-15', '2023-05-01', 'ion.popescu@yahoo.com', 712345678, 'Manager_Adj', 12000, 1001, ''),
('1003', 'Popescu', 'Dumitru', '1995-11-15', '2023-05-01', 'popescu@yahoo.com', 721123456, 'Contabil', 4000, 1002, ''),
('1004', 'Ionescu', 'Maria', '1985-05-20', '2023-12-15', 'maria.ionescu@yahoo.com', 732123456, 'Designer', 7000, 1002, ''),
('1005', 'Radulescu', 'Andrei', '1992-11-08', '2023-05-01', 'andrei.radulescu@yahoo.com', 743123456, 'Programator_sef', 8500, 1002, ''),
('1006', 'Dumitrescu', 'Ana', '1988-07-12', '2023-07-20', 'ana.dumitrescu@yahoo.com', 754123456, 'Programator', 5500, 1005, ''),
('1007', 'Constantinescu', 'Cristian', '1995-04-25', '2023-08-05', 'cristian.constantinescu@yahoo.com', 765123456, 'Programator', 5200, 1005, ''),
('1008', 'Georgescu', 'Andreea', '1991-09-30', '2023-08-05', 'andreea.georgescu@yahoo.com', 776123456, 'Programator', 4800, 1005, ''),
('1009', 'Mihai', 'Marian', '1987-03-18', '2024-01-07', 'marian.mihai@yahoo.com', 787123456, 'Programator', 4500, 1005, ''),
('1010', 'Iancu', 'Raluca', '1993-12-05', '2023-05-01', 'raluca.iancu@yahoo.com', 798123456, 'Moderator_sef', 6500, 1002, ''),
('1011', 'Florescu', 'Bogdan', '1986-08-22', '2023-09-01', 'bogdan.florescu@yahoo.com', 809123456, 'Moderator', 4300, 1010, ''),
('1012', 'Stanescu', 'Diana', '1994-06-28', '2023-11-12', 'diana.stanescu@yahoo.com', 810123456, 'Moderator', 3700, 1010, ''),
('1013', 'Negulescu', 'Alexandru', '1989-10-08', '2023-12-15', 'alexandru.negulescu@yahoo.com', 821123456, 'Moderator', 3500, 1010, ''),
('1014', 'Dobre', 'Elena', '1990-12-18', '2023-06-05', 'elena.dobre@yahoo.com', 832123456, 'Editor_sef', 6000, 1002, ''),
('1015', 'Stoica', 'Florin', '1993-05-22', '2023-07-10', 'florin.stoica@yahoo.com', 843123456, 'Editor', 4000, 1014, ''),
('1016', 'Dragomir', 'Simona', '1987-08-15', '2023-08-25', 'simona.dragomir@yahoo.com', 854123456, 'Editor', 3500, 1014, '');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `aprecieri`
--

CREATE TABLE `aprecieri` (
  `Like_id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `Coment_id` int(11) NOT NULL,
  `Data_L` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `aprecieri`
--

INSERT INTO `aprecieri` (`Like_id`, `User_id`, `Coment_id`, `Data_L`) VALUES
(1, 4, 6, '2023-09-15'),
(2, 10, 7, '2023-10-10'),
(3, 19, 7, '2023-10-10'),
(4, 1, 7, '2023-10-11'),
(5, 15, 8, '2023-12-02'),
(6, 30, 10, '2024-01-15');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `blog`
--

CREATE TABLE `blog` (
  `NR_A` int(11) NOT NULL,
  `NR_P` int(11) NOT NULL,
  `NR_C` int(11) NOT NULL,
  `NR_U` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `blog`
--

INSERT INTO `blog` (`NR_A`, `NR_P`, `NR_C`, `NR_U`) VALUES
(16, 8, 10, 30);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `comentari`
--

CREATE TABLE `comentari` (
  `Coment_id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `Post_id` int(11) NOT NULL,
  `Data_com` date DEFAULT NULL,
  `Continut` varchar(3072) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `comentari`
--

INSERT INTO `comentari` (`Coment_id`, `User_id`, `Post_id`, `Data_com`, `Continut`) VALUES
(1, 8, 1, '2023-09-01', 'Foarte interesant articolul'),
(2, 1, 1, '2023-09-08', 'Jocul arata foarte bine'),
(3, 10, 2, '2023-09-17', 'Interesanta recenzie, jocul arata ok pana acum'),
(4, 4, 3, '2023-09-29', 'Mersi de top, jocul meu preferat vad ca a ajuns chiar in aceasta lista :D'),
(5, 29, 3, '2023-10-12', 'Good job, keep the good work !'),
(6, 30, 3, '2023-10-30', 'Felicitari pentru topul realizat'),
(7, 17, 3, '2023-11-15', 'Cele mai interesante jocuri de pana acum'),
(8, 30, 4, '2023-12-20', 'Foarte frumos articolul'),
(9, 22, 5, '2024-01-25', '10/10, felicitari pentru munca depusa'),
(10, 10, 5, '2024-02-01', 'Interesant articol, o sa ma apuc de joc si eu');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `imagine`
--

CREATE TABLE `imagine` (
  `Imag_id` int(11) NOT NULL,
  `Post_id` int(11) NOT NULL,
  `Imag_url` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `imagine`
--

INSERT INTO `imagine` (`Imag_id`, `Post_id`, `Imag_url`) VALUES
(1, 1, 'assets/img/joc_actiune.webp'),
(2, 2, 'assets/img/recenzie_joc.jpg'),
(3, 3, 'assets/img/top_10.jpg'),
(4, 2, 'https://s3.amazonaws.com/prod-media.gameinformer.com/styles/full/s3/2019/02/01/f6e197ea/gow.jpg'),
(5, 2, 'https://cdn.mos.cms.futurecdn.net/3dpYx5chpvupQDVPbVxAZ5-650-80.jpg.webp'),
(7, 4, 'https://www.icharts.net/wp-content/webp-express/webp-images/uploads/2020/02/Best-RPG-Games-750x400.jpg.webp');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `notificari`
--

CREATE TABLE `notificari` (
  `Not_id` int(11) NOT NULL,
  `Categorie` text DEFAULT NULL,
  `Data_pos` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `notificari`
--

INSERT INTO `notificari` (`Not_id`, `Categorie`, `Data_pos`) VALUES
(1, 'Jocuri de acțiune', '2023-05-15'),
(2, 'Jocuri de simulare', '2023-06-20'),
(3, 'Jocuri de horror', '2023-08-01'),
(4, 'Jocuri de sport', '2023-10-15'),
(5, 'Jocuri multiplayer online (MMO)', '2023-08-20'),
(6, 'Jocuri de simulare', '2023-09-05'),
(7, 'Jocuri de acțiune', '2023-09-12'),
(8, 'Jocuri multiplayer online (MMO)', '2023-11-30');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `notificari_utilizatori`
--

CREATE TABLE `notificari_utilizatori` (
  `User_id` int(11) NOT NULL,
  `Not_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `notificari_utilizatori`
--

INSERT INTO `notificari_utilizatori` (`User_id`, `Not_id`) VALUES
(4, 1),
(8, 1),
(9, 1),
(10, 1),
(19, 1),
(21, 1),
(22, 1),
(4, 2),
(8, 2),
(9, 2),
(10, 2),
(19, 2),
(21, 2),
(22, 2),
(4, 3),
(8, 3),
(9, 3),
(10, 3),
(19, 3),
(21, 3),
(22, 3),
(4, 4),
(8, 4),
(9, 4),
(10, 4),
(19, 4),
(21, 4),
(22, 4),
(4, 5),
(8, 5),
(9, 5),
(10, 5),
(19, 5),
(21, 5),
(22, 5),
(4, 6),
(8, 6),
(9, 6),
(10, 6),
(19, 6),
(21, 6),
(22, 6),
(4, 7),
(8, 7),
(9, 7),
(10, 7),
(19, 7),
(21, 7),
(22, 7),
(4, 8),
(8, 8),
(9, 8),
(10, 8),
(19, 8),
(21, 8),
(22, 8);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `postari`
--

CREATE TABLE `postari` (
  `Post_id` int(11) NOT NULL,
  `Ang_id` int(11) NOT NULL,
  `Tema` text DEFAULT NULL,
  `Data_pos` date DEFAULT NULL,
  `Categorie` text DEFAULT NULL,
  `Continut` varchar(8192) NOT NULL,
  `Previzualizare` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `postari`
--

INSERT INTO `postari` (`Post_id`, `Ang_id`, `Tema`, `Data_pos`, `Categorie`, `Continut`, `Previzualizare`) VALUES
(1, 1001, 'Noul joc video', '2023-05-15', 'Jocuri de actiune', 'Salut, gamerilor pasionati! Astazi avem vestea fierbinte pentru voi - un nou joc de actiune care promite sa redefineasca standardele genului si sa va transporte intr-o experienta captivanta si plina de adrenalina. Sunteti gata sa va lansati in aventura vietii voastre?\r\n\r\n\r\nðŸ”¥ Descopera Universul Nostru Unic:\r\n[Nume Joc] va invita sa explorati un univers expansiv si vibrant, plin de locatii incredibile, secrete ascunse si provocari nemiloase. Cu grafica de ultima generatie si o coloana sonora epica, jocul aduce la viata fiecare detaliu al acestei lumi virtuale.\r\n\r\nðŸŽ® Gameplay Revolutionar:\r\nInovatia sta la baza jocului nostru! Experimentati un sistem de lupta complex si intuitiv, care va permite sa va personalizati abilitatile si sa va adaptati la orice situatie. Fiecare decizie pe care o luati va avea un impact asupra povestirii si asupra evolutiei personajului dumneavoastra.\r\n\r\nPovestea Care Va Va Capta Atenttia:\r\n[Nume Joc] nu este doar despre actiune frenetica, ci si despre o poveste captivanta si plina de suspans. Descoperiti misterele ascunse ale lumii noastre si luptati alaturi de personaje complexe si memorabile.\r\n\r\nðŸŒ Moduri Multiplayer Expansive:\r\nConfruntati-va cu prietenii sau aliati-va cu ei in modurile multiplayer captivante. [Nume Joc] ofera o gama larga de moduri multiplayer, de la confruntari rapide la misiuni cooperative complexe. Competitie sau colaborare, alegerea este a voastra!\r\n\r\nðŸŽ Recompense si Evenimente Speciale:\r\nParticipati la evenimente speciale si completati provocari pentru a castiga recompense exclusiviste. Colectati echipamente epice, decoratiuni unice si imbunatatiri de caracter care va vor distinge in comunitatea [Nume Joc].\r\n\r\nðŸŒŸ Pregateste-te pentru O Lume Noua:\r\nCu [Nume Joc], va invitam sa pasiti intr-o lume plina de surprize, pericole si triumfuri epice. E timpul sa va pregatiti pentru o experienta de joc ca niciodata inainte!\r\n\r\nðŸš¨ Data Lansarii: [Data Lansarii]\r\nFiti cu ochii pe aceasta data pentru ca nu vreti sa ratati momentul in care veti putea descoperi [Nume Joc].\r\n\r\nPregatiti-va pentru actiunea suprema si aventura vietii voastre! [Nume Joc] va asteapta sa va alaturati randurilor eroilor si sa va dovediti infruntand provocarile sale incredibile.\r\n\r\nStay tuned pentru mai multe detalii si noutati!', 'Salut, gamerilor pasionati! Astazi avem vestea fierbinte pentru voi - un nou joc de actiune care promite sa redefineasca standardele genului si sa va transporte intr-o experienta captivanta si plina de adrenalina. Sunteti gata sa va lansati in aventura vietii voastre?'),
(2, 1001, 'Recenzie joc video', '2023-06-20', 'Jocuri de simulare', 'Salut, comunitatea gaming! Astazi am pus mana pe un joc care promite sa redefineasca experienta RPG-urilor si sa va transporte intr-o calatorie epica prin lumea sa digitala. Fara prea multa preambul, sa vorbim despre Odyssia.\r\n<br><br>\r\nExplorare Interstelara:<br>\r\nOdyssia aduce la viata un univers digital vast si fascinant, plin de planete inexplorate, creaturi bizare si mistere nesfarsite. Fiecare colt ascunde o surpriza, iar grafica detaliata si designul artistic impresionant va vor tine captivati de la inceput pana la sfarsit.\r\n<br><br>\r\nCreati-va Propria Cale:<br>\r\nCe face Odyssia cu adevarat remarcabil este libertatea absoluta oferita jucatorilor. Puteti explora lumea in orice ordine doriti, cu o varietate de misiuni secundare si activitati care va asteapta in fiecare colt. Fiecare decizie pe care o luati influenteaza povestea si evolutia personajului vostru, oferind o experienta personalizata de neegalat.\r\n<br><br>\r\nSistem de Lupta Inovator:<br>\r\nLupta in Odyssia este o combinatie perfecta de tactici si actiune rapida. Sistemul sau de lupta inovator permite personalizarea abilitatilor si a echipamentelor, oferind jucatorilor posibilitatea de a-si crea propriul stil de joc. Intalniti creaturi colosale si dusmani formidabili, si descoperiti punctele lor slabe pentru a supravietui si a invinge.\r\n<br><br>\r\nColaborare Multiplayer Si PvP:<br>\r\nOdyssia nu se opreste doar la povestea solo. Pregatiti-va sa va alaturati altor jucatori in aventurile multiplayer si sa va confruntati cu ei in confruntari intense PvP. Aliante, competitie si evenimente speciale va asteapta pentru a va testa abilitatile si strategiile.\r\n<br><br>\r\nColoana Sonora Hipnotica:<br>\r\nColoana sonora este un element esential in crearea atmosferei, iar Odyssia nu dezamageste. Muzica hipnotica si efectele sonore captivante va vor insoti in calatoria voastra, adaugand o dimensiune suplimentara la intensitatea fiecarui moment.\r\n<br><br>\r\nConcluzie:<br>\r\nOdyssia reuseste sa ofere o experienta de joc captivanta si plina de profunzime, cu un echilibru perfect intre explorare, lupta si personalizare. Este un must-play pentru toti fanii RPG-urilor si pentru cei care cauta o aventura digitala de neuitat.\r\n<br><br>\r\nNu ratati ocazia de a va imbogati colectia de jocuri cu aceasta bijuterie. Odyssia va asteapta sa va incepeti calatoria!', 'Salut, comunitatea gaming! Astazi am pus mana pe un joc care promite sa redefineasca experienta RPG-urilor si sa va transporte intr-o calatorie epica prin lumea sa digitala...'),
(3, 1001, 'Top 10 jocuri din 2023', '2023-08-01', 'Jocuri de horror', '<ol>\r\n<li>\r\n    Vortex Rush\r\n    Un shooter sci-fi cu grafica uluitoare si actiune frenetica. Invinge hoardele extraterestre si descopera misterele adancimilor cosmice.\r\n</li>\r\n\r\n<li>\r\n    Shadowblade\r\n    Un joc de actiune ninja cu lupte spectaculoase si misiuni secrete. Fii maestrul umbrelor si dovedeste-ti abilitatile in acest univers plin de intriga.\r\n\r\n</li><li>\r\n    Cyber Racer X\r\n    Iti place viteza si tehnologia? Acest joc de curse futurist te va face sa te simti ca un pilot din anul 3000. Personalizeaza-ti vehiculul si cucereste traseele ultra-tehnologice.\r\n\r\n</li><li>\r\n    Mystic Realms\r\n    O aventura RPG cu monstri si magie, unde fiecare decizie conteaza. Descopera comorile ascunse, dezvolta-ti abilitatile magice si lupta pentru suprematie.\r\n</li><li>\r\n    Galactic Domination\r\n    Construieste-ti propria civilizatie in spatiu si lupta pentru dominatie galactica. Negociaza aliante si declanseaza batalii epice in acest joc de strategie cu adevarat captivant.\r\n</li><li>\r\n    Nebula Hunters\r\n    Intra intr-o lume intergalactica ca vanator de recompense. Exploreaza planete exotice, captureaza creaturi rare si evita prinderea de catre concurenta.\r\n</li><li>\r\n    Stealth Ops: Dark Infiltration\r\n    Pregateste-te pentru misiuni de infiltrare in acest joc stealth. Foloseste-te de tehnologie avansata pentru a evita paznicii si pentru a dezvalui conspiratii intunecate.\r\n</li><li>\r\n    Epic Gladiator Showdown\r\n    Colizeul digital te cheama sa devii campionul suprem. Lupta impotriva altor gladiatori si cucereste multimile cu abilitatile tale formidabile.\r\n</li><li>\r\n    Tech Wars: Arena Blitz\r\n    Intra in arena pentru un joc de tip battle royale plin de actiune. Colecteaza arme si upgrade-uri, evita zona mortala si ramai ultimul supravietuitor.\r\n</li><li>\r\n    Quantum Puzzles\r\n    O provocare pentru mintile strategice, acest joc de puzzle te introduce in lumea fascinanta a fizicii cuantice. Rezolva enigmele complexe si descopera misterele universului.\r\n</li></ol><br><br>\r\nFiecare joc din acest top 10 aduce ceva special, iar pasionatii de gaming sunt invitati sa isi testeze abilitatile si sa se bucure de aventuri unice in fiecare univers virtual. Prinde joystick-ul si incepe-ti calatoria in lumea jocurilor!', 'Fiecare joc din acest top 10 aduce ceva special, iar pasionatii de gaming sunt invitati sa isi testeze abilitatile si sa se bucure de aventuri unice in fiecare univers virtual...'),
(4, 1001, 'Evenimente importante in industria jocurilor', '2023-10-15', 'Jocuri de sport', '    Lansarea GameSphere X:<br>\r\n    Compania de gaming Pinnacle a dezvaluit noul lor console de top, GameSphere X, cu un procesor revoluÈ›ionar È™i graficÄƒ de ultimÄƒ generaÈ›ie.\r\n\r\n    Turneul Galactic eSports:\r\n    Echipele de eSports din Ã®ntreaga lume s-au confruntat Ã®n turneul Galactic eSports, cu premii incredibile È™i momente de gaming spectaculoase.\r\n\r\n    Intrarea Ã®n VR-ul Total:\r\n    Realitatea virtualÄƒ a atins un nou nivel de imersiune cu lansarea ochelarilor VR Quantum, care aduc jocurile Ã®ntr-o dimensiune complet nouÄƒ.\r\n\r\n    Jocul Mysterious Quest:\r\n    Un joc misterios, cu o poveste captivantÄƒ È™i puzzle-uri complexe, a devenit un fenomen mondial, atrÄƒgÃ¢nd milioane de jucÄƒtori Ã®n cÄƒutarea adevÄƒrului.\r\n<br><br>\r\n    Record de Livestreaming:<br>\r\n    Streamer-ul celebritate, NovaGamer, a stabilit un nou record de vizualizÄƒri Ã®ntr-o sesiune live epicÄƒ de 24 de ore, jucÃ¢nd cel mai aÈ™teptat joc al anului.\r\n<br><br>\r\n    Lansare Retro-Revival:<br>\r\n    Retro-Gaming a revenit Ã®n forÈ›Äƒ cu relansarea consolei clasice, RetroMaster, aducÃ¢ndu-i pe jucÄƒtori Ã®napoi Ã®n era de aur a jocurilor video.\r\n<br><br>\r\n    Inovatia Jocurilor cu Abonament:<br>\r\n    O nouÄƒ tendinÈ›Äƒ Ã®n gaming a fost stabilitÄƒ prin lansarea platformei de jocuri cu abonament, oferind acces nelimitat la o bibliotecÄƒ vastÄƒ de titluri pentru abonaÈ›i.\r\n<br><br>\r\n    Fuziunea Gigantilor Gaming:<br>\r\n    DouÄƒ dintre cele mai mari companii de gaming au anunÈ›at o fuziune masivÄƒ, pregÄƒtind terenul pentru o nouÄƒ erÄƒ de inovaÈ›ii È™i colaborare.\r\n<br><br>\r\n    CompetiÈ›ia AI vs. Gamers:<br>\r\n    ÃŽntr-un eveniment spectaculos, campionul mondial la jocuri video s-a confruntat cu un AI avansat, stÃ¢rnind dezbateri aprinse despre viitorul relaÈ›iei dintre om È™i maÈ™inÄƒ Ã®n gaming.\r\n<br><br>\r\n    Aniversarea Jocurilor:<br>\r\n    Comunitatea de gaming a sÄƒrbÄƒtorit aniversarea a 50 de ani de la apariÈ›ia primului joc video, marcÃ¢nd cinci decenii de aventuri virtuale È™i inovaÈ›ii tehnologice.', 'Lansarea GameSphere X:\r\nCompania de gaming Pinnacle a dezvaluit noul lor console de top, GameSphere X, cu un procesor revoluÈ›ionar È™i graficÄƒ de ultimÄƒ generaÈ›ie.\r\n'),
(5, 1001, 'Previziuni pentru 2024 în gaming', '2023-08-20', 'Jocuri multiplayer online (MMO)', '', ''),
(6, 1001, 'Interviu cu dezvoltatorul unui joc nou', '2023-09-05', 'Jocuri de simulare', '', ''),
(7, 1001, 'Noutăți despre viitorul consolei de jocuri', '2023-09-12', 'Jocuri de actiune', '', ''),
(8, 1001, 'Ghid pentru obținerea realizărilor în jocuri', '2023-11-30', 'Jocuri multiplayer online (MMO)', '', '');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `utilizatori`
--

CREATE TABLE `utilizatori` (
  `User_id` int(11) NOT NULL,
  `Nume_U` varchar(250) NOT NULL,
  `Adresa_E_U` varchar(250) NOT NULL,
  `Data_Ins` date NOT NULL,
  `Notificare` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `utilizatori`
--

INSERT INTO `utilizatori` (`User_id`, `Nume_U`, `Adresa_E_U`, `Data_Ins`, `Notificare`) VALUES
(1, 'John Doe', 'john.doe@yahoo.com', '2023-05-08', '-'),
(2, 'Jane Smith', 'jane.smith@yahoo.com', '2023-05-09', '-'),
(3, 'Robert Johnson', 'robert.johnson@yahoo.com', '2023-05-10', '-'),
(4, 'Alexandra Johnson', 'alexandra.johnson@yahoo.com', '2023-05-12', '+'),
(5, 'Daniel Smith', 'daniel.smith@yahoo.com', '2023-05-13', '-'),
(6, 'Gabriel Brown', 'gabriel.brown@yahoo.com', '2023-05-15', '-'),
(7, 'Sophie Davis', 'sophie.davis@yahoo.com', '2023-05-20', '-'),
(8, 'Mihai Popescu', 'mihai.popescu@yahoo.com', '2023-06-01', '+'),
(9, 'Andreea Radu', 'andreea.radu@yahoo.com', '2023-06-02', '+'),
(10, 'Catalin Andrei', 'catalin.andrei@yahoo.com', '2023-06-10', '+'),
(11, 'Elena Ionescu', 'elena.ionescu@yahoo.com', '2023-06-11', '-'),
(12, 'Ana Marinescu', 'ana.marinescu@yahoo.com', '2023-06-15', '-'),
(13, 'Vlad Tudor', 'vlad.tudor@yahoo.com', '2023-06-16', '-'),
(14, 'Irina Dumitrescu', 'irina.dumitrescu@yahoo.com', '2023-06-17', '-'),
(15, 'Razvan Popa', 'razvan.popa@yahoo.com', '2023-06-18', '-'),
(16, 'Elena Vasilescu', 'elena.vasilescu@yahoo.com', '2023-06-19', '-'),
(17, 'Gabriela Stanescu', 'gabriela.stanescu@yahoo.com', '2023-06-20', '-'),
(18, 'Stefan Georgescu', 'stefan.georgescu@yahoo.com', '2023-06-21', '-'),
(19, 'Andrei Nistor', 'andrei.nistor@yahoo.com', '2023-06-22', '+'),
(20, 'Diana Munteanu', 'diana.munteanu@yahoo.com', '2023-06-23', '-'),
(21, 'Ionut Barbu', 'ionut.barbu@yahoo.com', '2023-06-24', '+'),
(22, 'Laura Pătrașcu', 'laura.patrascu@yahoo.com', '2023-06-25', '+'),
(23, 'Marius Gheorghiu', 'marius.gheorghiu@yahoo.com', '2023-06-26', '-'),
(24, 'Roxana Moldovan', 'roxana.moldovan@yahoo.com', '2023-06-27', '-'),
(25, 'George Ionescu', 'george.ionescu@yahoo.com', '2023-06-28', '-'),
(26, 'Simona Ciobanu', 'simona.ciobanu@yahoo.com', '2023-06-29', '-'),
(27, 'Adrian Vasile', 'adrian.vasile@yahoo.com', '2023-06-30', '-'),
(28, 'Elena Cojocaru', 'elena.cojocaru@yahoo.com', '2023-07-01', '+'),
(29, 'Radu Stan', 'radu.stan@yahoo.com', '2023-07-02', '-'),
(30, 'Carmen Istrate', 'carmen.istrate@yahoo.com', '2023-07-03', '+');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `angajati`
--
ALTER TABLE `angajati`
  ADD PRIMARY KEY (`Ang_id`);

--
-- Indexuri pentru tabele `comentari`
--
ALTER TABLE `comentari`
  ADD PRIMARY KEY (`Coment_id`);

--
-- Indexuri pentru tabele `imagine`
--
ALTER TABLE `imagine`
  ADD PRIMARY KEY (`Imag_id`);

--
-- Indexuri pentru tabele `postari`
--
ALTER TABLE `postari`
  ADD PRIMARY KEY (`Post_id`);

--
-- Indexuri pentru tabele `utilizatori`
--
ALTER TABLE `utilizatori`
  ADD PRIMARY KEY (`User_id`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `comentari`
--
ALTER TABLE `comentari`
  MODIFY `Coment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pentru tabele `imagine`
--
ALTER TABLE `imagine`
  MODIFY `Imag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pentru tabele `postari`
--
ALTER TABLE `postari`
  MODIFY `Post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pentru tabele `utilizatori`
--
ALTER TABLE `utilizatori`
  MODIFY `User_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
