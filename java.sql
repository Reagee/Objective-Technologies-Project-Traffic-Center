-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 29 Lis 2017, 20:43
-- Wersja serwera: 10.1.16-MariaDB
-- Wersja PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `java`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `abc_questions`
--

CREATE TABLE `abc_questions` (
  `id_question` int(10) NOT NULL,
  `question_content` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `answer_A` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `answer_B` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `answer_C` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `correct_answer` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `abc_questions`
--

INSERT INTO `abc_questions` (`id_question`, `question_content`, `answer_A`, `answer_B`, `answer_C`, `correct_answer`) VALUES
(1, 'Znak ten (linia podwójna ciągła)', 'zabrania zawracania na odcinku oznaczonym tą linią', 'zezwala na przejeżdżanie przez tę linię przy wyprzedzaniu pojazdów', 'zezwala na najeżdżanie na tę linię', 1),
(2, 'W jaki sposób sprawdzisz przytomność u poszkodowanego (dorosłego)?', 'chwycę poszkodowanego za barki i lekko potrząsając zapytam np. Co się stało?', 'poklepię go po twarzy', 'poleję wodą', 1),
(3, 'W miejscu oznaczonym tym znakiem nie dopuszcza się parkowania w całości na chodzniuku', 'samochodów osobowych', 'samochodów ciężarowo-osobowych o dopuszczalnej masie całkowitej nie przekraczającej 2,5t', 'zespołów pojazdów', 3),
(4, 'W tej sytuacji kierujący samochodem osobowym, po minięciu znaku, będzie mógł jechać z maksymalną prędkością', '120 km/h', '130 km/h', '140 km/h', 1),
(5, 'Wykonując resuscytację poszkodowanego w wypadku drogowym powinieneś przyjąć pozycję:', 'stojącą', 'klęczącą', 'dowolną', 2),
(6, 'Kiedy zaleca się sprawdzić poziom płynu chłodzącego?', 'Przy zimnym silniku', 'przy wysokich obrotach silnika', 'podczas jezdy', 1),
(7, 'Znak umieszczony pod sygnalizatorem zabrania kierującemu pojazdem na', 'jazdę z lewej strony tego znaku', 'jazdę na wprost na skrzyżowaniu', 'skręt w lewo na skrzyżowaniu', 1),
(8, 'Poduszki powietrzbne montuje się w samochodach ponieważ ich głównym celem jest:', 'zmniejszenie podczas zdeżenia obrażeń kierowcy i pasażerów', 'pełna ochrona osób znajdujących się podczas wypadku w pojeździe', 'zmniejszenie mechanicznych uszkodzeń pojazdu', 1),
(9, 'W tej sytuacji kierujący pojazdem wolnobieżnym o dopuszczalnej masie całkowitej przekraczającej 3,5 t', 'nie może kontynuować jazdy na wprost', 'może kontynuować jazdę na wprost', 'musi zawrócić', 1),
(10, 'W tej sytuacji kierujący samochodem osobowym jest infromowany, że znajduje się na drodze', 'płatnej dla samochodów osobowych', 'wojewódzkiej', 'ekspresowej', 3),
(11, 'Czy w Polsce, kierowca jest zobowiązany wyposażyć pojazd w apteczkę pierwszej pomocy?', 'nie', 'tak', 'tak, jeżeli przewozi dzieci do lat 12', 1),
(12, 'W tej sytuacji dopuszczalna prędkość samochodu osobowego', 'wynosi 130 km/h', 'wynosi 140 km/h', 'nie jest określona przepisami', 2),
(13, 'Widząc ten znak kierujący pojazdem', 'powinien spodziewać się lotniska', 'może spodziewać się silnych bocznych podmuchów wiatru', 'powinien spodziewać się podmuchów wiatru tylko z lewej strony', 2),
(14, 'Przed rozpoczęciem jazdym kierujący samochodem osobowym powinien sprawdzić', 'tylko ustawienie fotela', 'tylko ustawienie lusterek', 'zapięcie przez pasażerów pasów bezpieczeństwa', 3),
(15, 'Korzystanie z telefonu komórkowego podczas kierowania samochodem osobowym jest', 'dozwolone, jeżeli wymaga trzymania słuchawki lub mikrofonu w lewej dłoni', 'dozwolone bez ograniczeń', 'dowolone, jeżeli nie wymaga trzymania słuchawki lub mikrofonu w ręku', 3),
(16, 'U dzieci prowadzenie masażu serca i sztucznego oddychania rozpoczynamy od', '30 usciśnięć klatki piersiowej', '2 oddechów ratowniczych', '5 oddechów ratowniczych', 3),
(17, 'Po zaświeceniu się w czasie jazdy tej lampki kontrolnej kierujący samochodem osobowym powinien', 'zmniejszyć prędkość jazdy', 'niezwłocznie przerwać jazdę', 'opuścić szyby w oknach pojazdu', 2),
(18, 'Zabrania się holowania', 'pojazdu o niesprawnych światłach drogowych', 'pojazdu członowego', 'motocykla na połączeniu sztywnym', 3),
(19, 'W czasie jednej sekundy, odpowiadającej średniemu czasowi reakcji kierowcy, samochód osobowy jadący z prędkością 90 km/h przejeżdża', '10 m', '15 m', '25 m', 3),
(20, 'Znak ten dotyczy kierujących', 'samochodami osobowymi', 'ciągnikami rolniczymi', 'motycyklami jednośladowymi', 2),
(21, 'W tej sytuacji kierujący samochodem osobowym', 'jest zobowiązany skorzystać z najbliżeszgo zjadu z drogi', 'ma nakza jazdy na wprost', 'może kontynuować jazdę na wprost', 3),
(22, 'Widząc ten znak kierujący pojazdem', 'jest informowany o zbliżanie się do drogi krętej', 'może jechać lewym pasem ruchu z prędkością nieprzekraczjącą 40 km/h', 'może jechać prawym pasem ruchu na całej jego długości, jeżeli nie osiąga prękości 40 km/h', 3),
(23, 'Za tym znakiem, kieruący pojazdem powinien jechać z prędkością', 'nieprzekraczjącą 30 km/h', 'nie mniejszą niż 30 km/h, chyba że warunki ruchu lub jego bezpieczeństwo wymagają zmniejszenia prędkości', 'większą niż 30 km/h bez względu na warunki ruchu', 2),
(24, 'Następstwem wycieku płynu z cylinderka (zacisku hamulcowgo) jest:', 'wzrost siły hamowania', 'zapowietrzenie hydraulicznego układu hamowania, w konsekwencji zanik siły hamowania', 'wzrost skuteczności hamowania', 2),
(25, 'Z jaką prędkością może ciągnąć przyczepę samochód osobowy poza obszarem zabudowanym na drodze jednojezdniowej', '70 km/h', '80 km/h', '90 km/h', 1),
(26, 'Jaki obowiązek ciąży na kierującym pojazdem uczestniczącym w zdarzeniu drogowym, w którym nie ma osób zabitych ani rannych?', 'wezwanie policji', 'zapewnieni bezpieczeństwa w miejscu zdarzenia', 'podanie danych personalnych na żądanie świadka zdarzenia', 2),
(27, 'W jaki sposób powinny być ustaione światła mijania w pojeździe', 'symetrycznie, aby widzieć całą jezdnię', 'symetrycznie, aby widzieć 30 m przed sobą i pobocze', 'asymetrycznie', 3),
(28, 'Który znak zezwala motocyklom na wjazd na drogę, przed którą jest umieszczony?', 'A', 'B', 'C', 3),
(29, 'Stan nietrzeźwości zachodzi, gdy zawartość alkoholu', 'we krwi przekracza 0,5 promila', 'w 1dm3 wydychanego powietrza wynosi od 0,1 mg do 0,25 mg', 'we krwi wynosi od 0,2 promila do 0,5 promila', 1),
(30, 'System ABS jest montowany w samochodać osobowych ponieważ:', 'skraca drogę hamowania w każdym przypadku', 'zwiększa przyczepność opon podczas przyśpieszania', 'ułatwia omijanie przeszkód podczas hamowania', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `first_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `last_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `login` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `employee`
--

INSERT INTO `employee` (`id`, `first_name`, `last_name`, `login`, `password`) VALUES
(1, 'Adam', 'Gąsiorek', 'adacho', 'adam123'),
(2, 'Dominik', 'Gądek', 'dominic', 'dominik123'),
(3, 'Maksym', 'Gilewski', 'reage', 'maksym123');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `examiner`
--

CREATE TABLE `examiner` (
  `id` int(11) NOT NULL,
  `first_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `last_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `PESEL` bigint(11) NOT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `examiner`
--

INSERT INTO `examiner` (`id`, `first_name`, `last_name`, `PESEL`, `address`) VALUES
(1, 'Adam', 'Malinowski', 68040564520, 'ul. Władysława Śmiałego 4, 32-328 Kraków'),
(2, 'Mariusz', 'Wójcik', 52030254123, 'ul. Adama Mickiewicza 10/2, 32-328 Kraków'),
(3, 'Tomasz', 'Kowalczyk', 65111254650, 'ul. Michałowskiego 12, 32-328 Kraków'),
(4, 'Tymoteusz', 'Bartczak', 78040569741, 'ul. Krowoderska 12a, 32-328 Kraków'),
(5, 'Elżbieta', 'Nowak', 85121341745, 'ul. Pawia 8, 32-328 Kraków'),
(6, 'Anna', 'Chmiel', 80020305912, 'ul. Starowiślna 50/14, 32-328 Kraków'),
(7, 'Stanisław', 'Bąk', 50080965423, 'ul. Wybickiego 32/1, 32-328 Kraków'),
(8, 'Monika', 'Janos', 78050847965, 'ul. Warszawska 24, 32-328 Kraków'),
(9, 'Dominik', 'Dybał', 72090854123, 'ul. Szlak 18/45, 32-328 Kraków'),
(10, 'Adrian', 'Korczyk', 78041209650, 'ul. Batorego 12/18, 32-328 Kraków');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `p_exam_dates`
--

CREATE TABLE `p_exam_dates` (
  `exam_date` date NOT NULL,
  `exam_hour` time NOT NULL,
  `free_places` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `p_exam_dates`
--

INSERT INTO `p_exam_dates` (`exam_date`, `exam_hour`, `free_places`) VALUES
('2017-11-25', '09:00:00', 9),
('2017-11-25', '10:30:00', 10),
('2017-11-25', '11:30:00', 10),
('2017-11-25', '14:30:00', 10),
('2017-11-25', '16:30:00', 10),
('2017-12-01', '09:00:00', 9),
('2017-12-01', '10:30:00', 10),
('2017-12-01', '11:30:00', 10),
('2017-12-01', '14:30:00', 10),
('2017-12-01', '16:30:00', 10),
('2017-12-02', '09:00:00', 10),
('2017-12-02', '10:30:00', 10),
('2017-12-02', '11:30:00', 10),
('2017-12-02', '14:30:00', 10),
('2017-12-02', '16:30:00', 10),
('2017-12-03', '09:00:00', 10),
('2017-12-03', '10:30:00', 10),
('2017-12-03', '11:30:00', 10),
('2017-12-03', '14:30:00', 10),
('2017-12-03', '16:30:00', 10),
('2017-12-04', '09:00:00', 10),
('2017-12-04', '10:30:00', 10),
('2017-12-04', '11:30:00', 10),
('2017-12-04', '14:30:00', 10),
('2017-12-04', '16:30:00', 10),
('2017-12-05', '09:00:00', 10),
('2017-12-05', '10:30:00', 10),
('2017-12-05', '11:30:00', 10),
('2017-12-05', '14:30:00', 10),
('2017-12-05', '16:30:00', 10),
('2017-12-06', '09:00:00', 10),
('2017-12-06', '10:30:00', 10),
('2017-12-06', '11:30:00', 10),
('2017-12-06', '14:30:00', 10),
('2017-12-06', '16:30:00', 10),
('2017-12-07', '09:00:00', 10),
('2017-12-07', '10:30:00', 10),
('2017-12-07', '11:30:00', 10),
('2017-12-07', '14:30:00', 10),
('2017-12-07', '16:30:00', 10),
('2017-12-08', '09:00:00', 10),
('2017-12-08', '10:30:00', 10),
('2017-12-08', '11:30:00', 10),
('2017-12-08', '14:30:00', 10),
('2017-12-08', '16:30:00', 10),
('2017-12-09', '09:00:00', 9),
('2017-12-09', '10:30:00', 10),
('2017-12-09', '11:30:00', 10),
('2017-12-09', '14:30:00', 10),
('2017-12-09', '16:30:00', 10),
('2017-12-10', '09:00:00', 10),
('2017-12-10', '10:30:00', 10),
('2017-12-10', '11:30:00', 10),
('2017-12-10', '14:30:00', 10),
('2017-12-10', '16:30:00', 10),
('2017-12-11', '09:00:00', 10),
('2017-12-11', '10:30:00', 10),
('2017-12-11', '11:30:00', 10),
('2017-12-11', '14:30:00', 10),
('2017-12-11', '16:30:00', 10),
('2017-12-12', '09:00:00', 10),
('2017-12-12', '10:30:00', 10),
('2017-12-12', '11:30:00', 10),
('2017-12-12', '14:30:00', 10),
('2017-12-12', '16:30:00', 10),
('2017-12-13', '09:00:00', 10),
('2017-12-13', '10:30:00', 10),
('2017-12-13', '11:30:00', 10),
('2017-12-13', '14:30:00', 10),
('2017-12-13', '16:30:00', 10),
('2017-12-14', '09:00:00', 10),
('2017-12-14', '10:30:00', 10),
('2017-12-14', '11:30:00', 10),
('2017-12-14', '14:30:00', 10),
('2017-12-14', '16:30:00', 10),
('2017-12-15', '09:00:00', 10),
('2017-12-15', '10:30:00', 10),
('2017-12-15', '11:30:00', 10),
('2017-12-15', '14:30:00', 10),
('2017-12-15', '16:30:00', 10),
('2017-12-16', '09:00:00', 10),
('2017-12-16', '10:30:00', 10),
('2017-12-16', '11:30:00', 10),
('2017-12-16', '14:30:00', 10),
('2017-12-16', '16:30:00', 10),
('2017-12-17', '09:00:00', 10),
('2017-12-17', '10:30:00', 10),
('2017-12-17', '11:30:00', 10),
('2017-12-17', '14:30:00', 10),
('2017-12-17', '16:30:00', 10),
('2017-12-18', '09:00:00', 10),
('2017-12-18', '10:30:00', 10),
('2017-12-18', '11:30:00', 10),
('2017-12-18', '14:30:00', 10),
('2017-12-18', '16:30:00', 10),
('2017-12-19', '09:00:00', 9),
('2017-12-19', '10:30:00', 10),
('2017-12-19', '11:30:00', 10),
('2017-12-19', '14:30:00', 10),
('2017-12-19', '16:30:00', 10),
('2017-12-20', '09:00:00', 10),
('2017-12-20', '10:30:00', 10),
('2017-12-20', '11:30:00', 10),
('2017-12-20', '14:30:00', 10),
('2017-12-20', '16:30:00', 10),
('2017-12-21', '09:00:00', 10),
('2017-12-21', '10:30:00', 10),
('2017-12-21', '11:30:00', 10),
('2017-12-21', '14:30:00', 10),
('2017-12-21', '16:30:00', 10),
('2017-12-22', '09:00:00', 10),
('2017-12-22', '10:30:00', 10),
('2017-12-22', '11:30:00', 10),
('2017-12-22', '14:30:00', 10),
('2017-12-22', '16:30:00', 10),
('2017-12-23', '09:00:00', 10),
('2017-12-23', '10:30:00', 10),
('2017-12-23', '11:30:00', 10),
('2017-12-23', '14:30:00', 10),
('2017-12-23', '16:30:00', 10),
('2017-12-24', '09:00:00', 10),
('2017-12-24', '10:30:00', 10),
('2017-12-24', '11:30:00', 10),
('2017-12-24', '14:30:00', 10),
('2017-12-24', '16:30:00', 10),
('2017-12-25', '09:00:00', 10),
('2017-12-25', '10:30:00', 10),
('2017-12-25', '11:30:00', 10),
('2017-12-25', '14:30:00', 10),
('2017-12-25', '16:30:00', 10),
('2017-12-26', '09:00:00', 10),
('2017-12-26', '10:30:00', 10),
('2017-12-26', '11:30:00', 10),
('2017-12-26', '14:30:00', 10),
('2017-12-26', '16:30:00', 10),
('2017-12-27', '09:00:00', 10),
('2017-12-27', '10:30:00', 10),
('2017-12-27', '11:30:00', 10),
('2017-12-27', '14:30:00', 10),
('2017-12-27', '16:30:00', 10),
('2017-12-28', '09:00:00', 10),
('2017-12-28', '10:30:00', 10),
('2017-12-28', '11:30:00', 10),
('2017-12-28', '14:30:00', 10),
('2017-12-28', '16:30:00', 10),
('2017-12-29', '09:00:00', 10),
('2017-12-29', '10:30:00', 10),
('2017-12-29', '11:30:00', 10),
('2017-12-29', '14:30:00', 10),
('2017-12-29', '16:30:00', 10),
('2017-12-30', '09:00:00', 10),
('2017-12-30', '10:30:00', 10),
('2017-12-30', '11:30:00', 10),
('2017-12-30', '14:30:00', 10),
('2017-12-30', '16:30:00', 10),
('2017-12-31', '09:00:00', 10),
('2017-12-31', '10:30:00', 10),
('2017-12-31', '11:30:00', 10),
('2017-12-31', '14:30:00', 10),
('2017-12-31', '16:30:00', 10),
('2018-01-01', '09:00:00', 10),
('2018-01-01', '10:30:00', 10),
('2018-01-01', '11:30:00', 10),
('2018-01-01', '14:30:00', 10),
('2018-01-01', '16:30:00', 10),
('2018-01-02', '09:00:00', 10),
('2018-01-02', '10:30:00', 10),
('2018-01-02', '11:30:00', 10),
('2018-01-02', '14:30:00', 10),
('2018-01-02', '16:30:00', 10),
('2018-01-03', '09:00:00', 10),
('2018-01-03', '10:30:00', 10),
('2018-01-03', '11:30:00', 10),
('2018-01-03', '14:30:00', 10),
('2018-01-03', '16:30:00', 10),
('2018-01-04', '09:00:00', 10),
('2018-01-04', '10:30:00', 10),
('2018-01-04', '11:30:00', 10),
('2018-01-04', '14:30:00', 10),
('2018-01-04', '16:30:00', 10),
('2018-01-05', '09:00:00', 10),
('2018-01-05', '10:30:00', 10),
('2018-01-05', '11:30:00', 10),
('2018-01-05', '14:30:00', 10),
('2018-01-05', '16:30:00', 10),
('2018-01-06', '09:00:00', 10),
('2018-01-06', '10:30:00', 10),
('2018-01-06', '11:30:00', 10),
('2018-01-06', '14:30:00', 10),
('2018-01-06', '16:30:00', 10),
('2018-01-07', '09:00:00', 10),
('2018-01-07', '10:30:00', 10),
('2018-01-07', '11:30:00', 10),
('2018-01-07', '14:30:00', 10),
('2018-01-07', '16:30:00', 10),
('2018-01-08', '09:00:00', 10),
('2018-01-08', '10:30:00', 10),
('2018-01-08', '11:30:00', 10),
('2018-01-08', '14:30:00', 10),
('2018-01-08', '16:30:00', 10),
('2018-01-09', '09:00:00', 10),
('2018-01-09', '10:30:00', 10),
('2018-01-09', '11:30:00', 10),
('2018-01-09', '14:30:00', 10),
('2018-01-09', '16:30:00', 10),
('2018-01-10', '09:00:00', 10),
('2018-01-10', '10:30:00', 10),
('2018-01-10', '11:30:00', 10),
('2018-01-10', '14:30:00', 10),
('2018-01-10', '16:30:00', 10),
('2018-01-11', '09:00:00', 10),
('2018-01-11', '10:30:00', 10),
('2018-01-11', '11:30:00', 10),
('2018-01-11', '14:30:00', 10),
('2018-01-11', '16:30:00', 10),
('2018-01-12', '09:00:00', 10),
('2018-01-12', '10:30:00', 10),
('2018-01-12', '11:30:00', 10),
('2018-01-12', '14:30:00', 10),
('2018-01-12', '16:30:00', 10),
('2018-01-13', '09:00:00', 10),
('2018-01-13', '10:30:00', 10),
('2018-01-13', '11:30:00', 10),
('2018-01-13', '14:30:00', 10),
('2018-01-13', '16:30:00', 10),
('2018-01-14', '09:00:00', 10),
('2018-01-14', '10:30:00', 10),
('2018-01-14', '11:30:00', 10),
('2018-01-14', '14:30:00', 10),
('2018-01-14', '16:30:00', 10),
('2018-01-15', '09:00:00', 10),
('2018-01-15', '10:30:00', 10),
('2018-01-15', '11:30:00', 10),
('2018-01-15', '14:30:00', 10),
('2018-01-15', '16:30:00', 10),
('2018-01-16', '09:00:00', 10),
('2018-01-16', '10:30:00', 10),
('2018-01-16', '11:30:00', 10),
('2018-01-16', '14:30:00', 10),
('2018-01-16', '16:30:00', 10),
('2018-01-17', '09:00:00', 10),
('2018-01-17', '10:30:00', 10),
('2018-01-17', '11:30:00', 10),
('2018-01-17', '14:30:00', 10),
('2018-01-17', '16:30:00', 10),
('2018-01-18', '09:00:00', 10),
('2018-01-18', '10:30:00', 10),
('2018-01-18', '11:30:00', 10),
('2018-01-18', '14:30:00', 10),
('2018-01-18', '16:30:00', 10),
('2018-01-19', '09:00:00', 10),
('2018-01-19', '10:30:00', 10),
('2018-01-19', '11:30:00', 10),
('2018-01-19', '14:30:00', 10),
('2018-01-19', '16:30:00', 10),
('2018-01-20', '09:00:00', 10),
('2018-01-20', '10:30:00', 10),
('2018-01-20', '11:30:00', 10),
('2018-01-20', '14:30:00', 10),
('2018-01-20', '16:30:00', 10),
('2018-01-21', '09:00:00', 10),
('2018-01-21', '10:30:00', 10),
('2018-01-21', '11:30:00', 10),
('2018-01-21', '14:30:00', 10),
('2018-01-21', '16:30:00', 10),
('2018-01-22', '09:00:00', 10),
('2018-01-22', '10:30:00', 10),
('2018-01-22', '11:30:00', 10),
('2018-01-22', '14:30:00', 10),
('2018-01-22', '16:30:00', 10),
('2018-01-23', '09:00:00', 10),
('2018-01-23', '10:30:00', 10),
('2018-01-23', '11:30:00', 10),
('2018-01-23', '14:30:00', 10),
('2018-01-23', '16:30:00', 10),
('2018-01-24', '09:00:00', 10),
('2018-01-24', '10:30:00', 10),
('2018-01-24', '11:30:00', 10),
('2018-01-24', '14:30:00', 10),
('2018-01-24', '16:30:00', 10),
('2018-01-25', '09:00:00', 10),
('2018-01-25', '10:30:00', 10),
('2018-01-25', '11:30:00', 10),
('2018-01-25', '14:30:00', 10),
('2018-01-25', '16:30:00', 10),
('2018-01-26', '09:00:00', 10),
('2018-01-26', '10:30:00', 10),
('2018-01-26', '11:30:00', 10),
('2018-01-26', '14:30:00', 10),
('2018-01-26', '16:30:00', 10),
('2018-01-27', '09:00:00', 10),
('2018-01-27', '10:30:00', 10),
('2018-01-27', '11:30:00', 10),
('2018-01-27', '14:30:00', 10),
('2018-01-27', '16:30:00', 10),
('2018-01-28', '09:00:00', 10),
('2018-01-28', '10:30:00', 10),
('2018-01-28', '11:30:00', 10),
('2018-01-28', '14:30:00', 10),
('2018-01-28', '16:30:00', 10),
('2018-01-29', '09:00:00', 10),
('2018-01-29', '10:30:00', 10),
('2018-01-29', '11:30:00', 10),
('2018-01-29', '14:30:00', 10),
('2018-01-29', '16:30:00', 10),
('2018-01-30', '09:00:00', 10),
('2018-01-30', '10:30:00', 10),
('2018-01-30', '11:30:00', 10),
('2018-01-30', '14:30:00', 10),
('2018-01-30', '16:30:00', 10),
('2018-01-31', '09:00:00', 10),
('2018-01-31', '10:30:00', 10),
('2018-01-31', '11:30:00', 10),
('2018-01-31', '14:30:00', 10),
('2018-01-31', '16:30:00', 10);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `signed_exams`
--

CREATE TABLE `signed_exams` (
  `id` int(11) NOT NULL,
  `first_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `last_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `PESEL` bigint(11) NOT NULL,
  `date` date NOT NULL,
  `hour` time NOT NULL,
  `examiner_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `exam_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `student`
--

CREATE TABLE `student` (
  `id_student` int(11) NOT NULL,
  `first_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `last_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `PESEL` bigint(11) NOT NULL,
  `osk_course_status` bit(1) NOT NULL,
  `t_exam_date` date DEFAULT NULL,
  `p_exam_date` date DEFAULT NULL,
  `t_exam_res` int(2) DEFAULT NULL,
  `p_exam_res` int(2) DEFAULT NULL,
  `pay_texam_status` bit(1) DEFAULT NULL,
  `pay_pexam_status` bit(1) DEFAULT NULL,
  `login` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `student`
--

INSERT INTO `student` (`id_student`, `first_name`, `last_name`, `address`, `PESEL`, `osk_course_status`, `t_exam_date`, `p_exam_date`, `t_exam_res`, `p_exam_res`, `pay_texam_status`, `pay_pexam_status`, `login`, `password`) VALUES
(1, 'Jacek ', 'Bańkowski', 'ul. Wyzwolenia 25/23, 34-420 Cieszyn', 98082945650, b'1', '2017-12-01', '2017-12-01', 0, 0, b'1', b'1', 'jacekbankowski', '98082945650'),
(2, 'Alicja', 'Burczymucha', 'ul. Jana Pawła II 5, 45-234 Łysobyki', 97040587450, b'0', NULL, NULL, 0, 0, b'0', b'0', 'alicjaburczymucha', '97040587450'),
(3, 'Marek', 'Radek', 'ul. Mazowiecka 43, 47-250 Wilkołazy', 94110904741, b'1', NULL, '2017-12-09', 97, 0, b'1', b'1', 'marekradek', '94110904741'),
(4, 'Paweł', 'Cieślak', 'ul. Grochowska 99/7, 66-666 Warszawa', 87040365870, b'1', NULL, NULL, 0, 0, b'1', b'1', 'pawelcieslak', '87040365870'),
(5, 'Adam', 'Prostak', 'ul. Przy Drodze 12, 54-120 Świętochłowice', 92121204745, b'1', NULL, NULL, 5, 0, b'1', b'1', 'adamprostak', '92121204745'),
(6, 'Dominik', 'Iglesias', 'ul. Buenos 12a, 07-120 Niebice', 72090854712, b'0', NULL, NULL, 0, 0, b'0', b'0', 'dominikiglesias', '72090854712'),
(7, 'Marcin', 'Mieszadło', 'ul. Grochowa 21, 54-230 Łódź', 64050723652, b'1', '2017-12-09', '2017-12-19', 0, 0, b'1', b'1', 'marcinmieszadlo', '64050723652'),
(8, 'Tomek', 'Rudy', 'ul. Zniewolenia 66/6, 00-997 Sądów', 97090799712, b'1', NULL, NULL, 0, 0, b'1', b'1', 'tomekrudy', '97090799712'),
(9, 'Miłosz', 'Dobry', 'ul. Złego Demona 12, 66-700 Hel', 96060666666, b'1', '2017-11-23', NULL, 0, 0, b'1', b'0', 'miloszdobry', '96060666666'),
(10, 'Krzysztof', 'Jarzyna', 'ul. Szefa 12a, 25-450 Szczecin', 72020354968, b'1', '2017-11-23', '2017-11-25', 0, 0, b'1', b'1', 'krzysztofjarzyna', '72020354968'),
(11, 'Marian', 'Pawłowski', 'ul. Marcinkowska 12a, 34-542 Wieliczka', 92120475841, b'1', NULL, NULL, NULL, NULL, b'1', b'1', 'marianpawlowski', '92120475841'),
(12, 'Wojciech', 'Szczęsny', 'ul. Młoda 12/2, 24-221 Olsztyn', 69050654231, b'1', NULL, NULL, NULL, NULL, b'1', b'1', 'wojciechszczesny', '69050654231'),
(13, 'Tomasz', 'Budzym', 'ul. Pawia 1, 32-328 Kraków', 77040302321, b'1', NULL, NULL, NULL, NULL, b'0', b'1', 'tomaszbudzym', '77040302321'),
(14, 'Mikołaj', 'Bartosiewicz', 'ul. Miłosierna 21, 32-328 Kraków', 7412121214, b'1', NULL, NULL, NULL, NULL, b'1', b'1', 'mikolajbartosiewicz', '7412121214'),
(15, 'Paweł', 'Stach', 'ul. Długa 12a, 32-328 Kraków', 88121214521, b'0', NULL, NULL, NULL, NULL, b'0', b'0', 'pawelstach', '88121214521'),
(16, 'Aleksandra', 'Paździora', 'ul. Wesele 58/19, 32-328 Kraków', 87110506852, b'0', NULL, NULL, NULL, NULL, b'0', b'1', 'aleksandrapazdziora', '87110506852'),
(17, 'Monika', 'Wadowska', 'ul. Krakowska 12a, 34-120 Andrychów', 84121216520, b'1', NULL, NULL, NULL, NULL, b'1', b'1', 'monikawadowska', '84121216520'),
(18, 'Jolanta', 'Kocemba', 'ul. Kościelna 54, 23-434 Zator', 77010101210, b'1', NULL, NULL, NULL, NULL, b'1', b'1', 'jolantakocemba', '77010101210'),
(19, 'Ireneusz', 'Balon', 'ul. Stachiewicza 12/3, 32-328 Kraków', 96110504040, b'1', NULL, NULL, NULL, NULL, b'0', b'0', 'ireneuszbalon', '96110504040'),
(20, 'Kamil', 'Magiera', 'ul. Radzikowskiego 65/45, 32-328 Kraków', 98080808880, b'1', NULL, NULL, NULL, NULL, b'0', b'1', 'kamilmagiera', '98080808880'),
(21, 'Marta', 'Wybituła', 'ul.Mehoffera 8/65, 32-328 Kraków', 98090996541, b'1', NULL, NULL, NULL, NULL, b'1', b'0', 'martawybitula', '98090996541'),
(22, 'Agnieszka', 'Wróbel', 'ul. Wadowicka 12b, 34-144 Wadowice', 98090974120, b'1', NULL, NULL, NULL, NULL, b'1', b'0', 'agnieszkawrobel', '98090974120'),
(23, 'Alina', 'Malina', 'ul. Nowy Gaj 15a, 32-328 Kraków', 65050621321, b'1', NULL, NULL, NULL, NULL, b'1', b'1', 'alinamalina', '65050621321'),
(24, 'Małgorzata', 'Potempa', 'ul. 1-Maja 5/12, 32-120 Bielany', 88080880800, b'1', NULL, NULL, NULL, NULL, b'1', b'0', 'malgorzatapotempa', '88080880800'),
(25, 'Wacław', 'Dolny', 'ul. Górna 60a, 32-328 Kraków', 44040440420, b'1', NULL, NULL, NULL, NULL, b'1', b'1', 'waclawdolny', '44040440420'),
(26, 'Marta', 'Wielka', 'ul. Długa 10/54, 32-328 Kraków', 99090990900, b'1', NULL, NULL, NULL, NULL, b'1', b'0', 'martawielka', '99090990900'),
(27, 'Irena', 'Janos', 'ul. Szpitalna 18/12, 32-328 Kraków', 92020508980, b'1', NULL, NULL, NULL, NULL, b'1', b'1', 'irenajanos', '92020508980'),
(28, 'Wanda', 'Jasna', 'ul. Wędkarzy 7, 45-800 Nowa Wieś', 59121212120, b'1', NULL, NULL, NULL, NULL, b'1', b'1', 'wandajasna', '59121212120'),
(29, 'Martyna', 'Wandor', 'ul. Metalowców 80/14, 44-444 Gniezno', 97070707777, b'1', NULL, NULL, NULL, NULL, b'0', b'1', 'martynawandor', '97070707777'),
(30, 'Ludwik', 'Czarny', 'ul. Sobieskiego 7/0, 32-328 Kraków', 49090960123, b'1', NULL, NULL, NULL, NULL, b'1', b'1', 'ludwikczarny', '49090960123');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `t_exam_dates`
--

CREATE TABLE `t_exam_dates` (
  `exam_date` date NOT NULL,
  `exam_hour` time NOT NULL,
  `free_places` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `t_exam_dates`
--

INSERT INTO `t_exam_dates` (`exam_date`, `exam_hour`, `free_places`) VALUES
('2017-11-23', '08:00:00', 8),
('2017-11-23', '10:00:00', 10),
('2017-12-01', '08:00:00', 9),
('2017-12-01', '10:00:00', 10),
('2017-12-02', '08:00:00', 10),
('2017-12-02', '10:00:00', 10),
('2017-12-03', '08:00:00', 10),
('2017-12-03', '10:00:00', 10),
('2017-12-04', '08:00:00', 10),
('2017-12-04', '10:00:00', 10),
('2017-12-05', '08:00:00', 10),
('2017-12-05', '10:00:00', 10),
('2017-12-06', '08:00:00', 10),
('2017-12-06', '10:00:00', 10),
('2017-12-07', '08:00:00', 10),
('2017-12-07', '10:00:00', 10),
('2017-12-08', '08:00:00', 10),
('2017-12-08', '10:00:00', 10),
('2017-12-09', '08:00:00', 9),
('2017-12-09', '10:00:00', 10),
('2017-12-10', '08:00:00', 10),
('2017-12-10', '10:00:00', 10),
('2017-12-11', '08:00:00', 10),
('2017-12-11', '10:00:00', 10),
('2017-12-12', '08:00:00', 10),
('2017-12-12', '10:00:00', 10),
('2017-12-13', '08:00:00', 10),
('2017-12-13', '10:00:00', 10),
('2017-12-14', '08:00:00', 10),
('2017-12-14', '10:00:00', 10),
('2017-12-15', '08:00:00', 10),
('2017-12-15', '10:00:00', 10),
('2017-12-16', '08:00:00', 10),
('2017-12-16', '10:00:00', 10),
('2017-12-17', '08:00:00', 10),
('2017-12-17', '10:00:00', 10),
('2017-12-18', '08:00:00', 10),
('2017-12-18', '10:00:00', 10),
('2017-12-19', '08:00:00', 10),
('2017-12-19', '10:00:00', 10),
('2017-12-20', '08:00:00', 10),
('2017-12-20', '10:00:00', 10),
('2017-12-21', '08:00:00', 10),
('2017-12-21', '10:00:00', 10),
('2017-12-22', '08:00:00', 10),
('2017-12-22', '10:00:00', 10),
('2017-12-23', '08:00:00', 10),
('2017-12-23', '10:00:00', 10),
('2017-12-24', '08:00:00', 10),
('2017-12-24', '10:00:00', 10),
('2017-12-25', '08:00:00', 10),
('2017-12-25', '10:00:00', 10),
('2017-12-26', '08:00:00', 10),
('2017-12-26', '10:00:00', 10),
('2017-12-27', '08:00:00', 10),
('2017-12-27', '10:00:00', 10),
('2017-12-28', '08:00:00', 10),
('2017-12-28', '10:00:00', 10),
('2017-12-29', '08:00:00', 10),
('2017-12-29', '10:00:00', 10),
('2017-12-30', '08:00:00', 10),
('2017-12-30', '10:00:00', 10),
('2017-12-31', '08:00:00', 10),
('2017-12-31', '10:00:00', 10),
('2018-01-01', '08:00:00', 10),
('2018-01-01', '10:00:00', 10),
('2018-01-02', '08:00:00', 10),
('2018-01-02', '10:00:00', 10),
('2018-01-03', '08:00:00', 10),
('2018-01-03', '10:00:00', 10),
('2018-01-04', '08:00:00', 10),
('2018-01-04', '10:00:00', 10),
('2018-01-05', '08:00:00', 10),
('2018-01-05', '10:00:00', 10),
('2018-01-06', '08:00:00', 10),
('2018-01-06', '10:00:00', 10),
('2018-01-07', '08:00:00', 10),
('2018-01-07', '10:00:00', 10),
('2018-01-08', '08:00:00', 10),
('2018-01-08', '10:00:00', 10),
('2018-01-09', '08:00:00', 10),
('2018-01-09', '10:00:00', 10),
('2018-01-10', '08:00:00', 10),
('2018-01-10', '10:00:00', 10),
('2018-01-11', '08:00:00', 10),
('2018-01-11', '10:00:00', 10),
('2018-01-12', '08:00:00', 10),
('2018-01-12', '10:00:00', 10),
('2018-01-13', '08:00:00', 10),
('2018-01-13', '10:00:00', 10),
('2018-01-14', '08:00:00', 10),
('2018-01-14', '10:00:00', 10),
('2018-01-15', '08:00:00', 10),
('2018-01-15', '10:00:00', 10),
('2018-01-16', '08:00:00', 10),
('2018-01-16', '10:00:00', 10),
('2018-01-17', '08:00:00', 10),
('2018-01-17', '10:00:00', 10),
('2018-01-18', '08:00:00', 10),
('2018-01-18', '10:00:00', 10),
('2018-01-19', '08:00:00', 10),
('2018-01-19', '10:00:00', 10),
('2018-01-20', '08:00:00', 10),
('2018-01-20', '10:00:00', 10),
('2018-01-21', '08:00:00', 10),
('2018-01-21', '10:00:00', 10),
('2018-01-22', '08:00:00', 10),
('2018-01-22', '10:00:00', 10),
('2018-01-23', '08:00:00', 10),
('2018-01-23', '10:00:00', 10),
('2018-01-24', '08:00:00', 10),
('2018-01-24', '10:00:00', 10),
('2018-01-25', '08:00:00', 10),
('2018-01-25', '10:00:00', 10),
('2018-01-26', '08:00:00', 10),
('2018-01-26', '10:00:00', 10),
('2018-01-27', '08:00:00', 10),
('2018-01-27', '10:00:00', 10),
('2018-01-28', '08:00:00', 10),
('2018-01-28', '10:00:00', 10),
('2018-01-29', '08:00:00', 10),
('2018-01-29', '10:00:00', 10),
('2018-01-30', '08:00:00', 10),
('2018-01-30', '10:00:00', 10),
('2018-01-31', '08:00:00', 10),
('2018-01-31', '10:00:00', 10);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vehicle`
--

CREATE TABLE `vehicle` (
  `id` int(11) NOT NULL,
  `mark` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `model` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `plate_number` varchar(8) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `type` varchar(15) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `vehicle`
--

INSERT INTO `vehicle` (`id`, `mark`, `model`, `plate_number`, `type`) VALUES
(1, 'Toyota', 'Yaris', 'KR 8754B', 'B'),
(2, 'Toyota', 'Yaris', 'KR 34GR5', 'B'),
(3, 'Toyota', 'Yaris', 'KR 75HR3', 'B'),
(4, 'Hyundai', 'i20', 'KR WRE34', 'B'),
(5, 'Hyundai', 'i20', 'KR IU45B', 'B'),
(6, 'Opel', 'Corsa', 'KR 875RW', 'B'),
(7, 'Opel', 'Corsa', 'KR RTK54', 'B'),
(8, 'Hyundai', 'i20', 'KR POK71', 'B'),
(9, 'Hyundai', 'i20', 'KR 124TY', 'B'),
(10, 'Toyota', 'Yaris', 'KR GHQ23', 'B');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `yes_no_questions`
--

CREATE TABLE `yes_no_questions` (
  `id_question` int(10) NOT NULL,
  `question_content` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `correct_answer` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `yes_no_questions`
--

INSERT INTO `yes_no_questions` (`id_question`, `question_content`, `correct_answer`) VALUES
(1, 'Czy ten znak ostrzega o możliwości poślizgu pojazdu spowodowanego zawilgoceniem jezdni?', b'0'),
(2, 'Czy w przedstawionej sytuacji zakaz zawracania obowiązuje od miejsca ustawienia znaku do najbliższego skrzyżowania włącznie?', b'1'),
(3, 'Czy na drodze za tym znakiem pionowym masz pierwszeństwo przed pieszymi?', b'0'),
(4, 'Czy w tej sytuacji wolno Ci jechać na wprost z zajmowane przez Ciebie pasa ruchu?', b'0'),
(5, 'Czy widząc taką postawę policjanta kierującego ruchem możesz przejechać na wprost przez skrzyżowanie?', b'1'),
(6, 'Czy w tej sytuacji masz obowiązek zmienić światła drogowe na światła mijania?', b'1'),
(7, 'Czy w tej sytuacji masz obowiązek zachować szczególną ostrożność?', b'1'),
(8, 'Czy masz obowiązek sygnalizować zamiar zmiany pasa ruchu, jeśli w tej sytuacji jedziesz przy prawej krawędzi jezdni?', b'1'),
(9, 'Czy w przedstawionej sytuacji masz obowiązek zrezygnować z wyprzedzania, jeżeli kierujący pojazdem poprzedzającym włączył prawy kierunkowskaz?', b'0'),
(10, 'Czy za tym znakiem masz prawo zaprkować pojazd na 5 minut?', b'0'),
(11, 'Czy w tej sytuacji masz obowiązek zachować szczególną ostrożność?', b'0'),
(12, 'Zamierzasz skręcić w lewo. Czy na tym skrzyżowaniu masz pierwszeństwo przejazdu przed wjeżdżającym na nie pojazdem?', b'0'),
(13, 'Czy jadąc na wprost na tym skrzyżowaniu masz pierwszeństwo przed rowerzystą?', b'0'),
(14, 'Czy jadąc na wprost masz pierwszeństwo przed pojazdem nadjeżdżającym z lewej strony?', b'1'),
(15, 'Zamierzasz jechać na wprost. Czy masz obowiązek zatrzymać się przed linią złożoną z trójkątów, aby ustąpić pierwszeństwa pojazdowi jadącemu z przeciwka, który zamierza skręcić w lewo?', b'0'),
(16, 'Czy w tej sygnalizować masz obowiązek ustąpić pierwszeństwa tramwajowi?', b'1'),
(17, 'Czy w tej sytuacji masz prawo przejechać przez przejście dla pieszych?', b'0'),
(18, 'Czy w tej sytuacji wyprzedzając rowerzystę, powinieneś zachować odstęp nie mniejszy niż 0,5 m?', b'0'),
(19, 'Czy na obszarze zabudowanym masz obowiązek włączyć światła awaryjne, aby sygnalizować postój pojazdu uszkodzonego, który znajduje się poza jezdnią?', b'0'),
(20, 'Czy pojazd zaparkowano zgodnie z przepisami?', b'0'),
(21, 'Kierujący, który zjeżdża pojazdem z długiego wzniesienia, by mieć lepszą kontrolę nad prędkością jazdy, powinien wybrać bieg jałowy?', b'0'),
(22, 'Znak ten zakuzuje skrętu w lewo.', b'1'),
(23, 'Czy na autostradzie ustawia się trójkąt ostrzegawczy w odległości 30-50 m?', b'0'),
(24, 'Czy używanie opon zimowych w okresie letnim jest zakazane?', b'0'),
(25, 'Umieszczone na jezdni punktowe elementy odblaskowe barwy białej mogą wyznaczać prawą krawędź jezdni.', b'0'),
(26, 'W tej sytuacji, gdy do kierującego zbliża się pojazd uprzywilejowany, to w celu umożliwienia mu przejazdu należy zatrzymać pojazd.', b'0'),
(27, 'Czy w tej sytuacji kierujący musi powstrzymać się od wyprzedzania?', b'1'),
(28, 'Znak ten oznacza drogę z pierwszeństwem przejazdu.', b'1'),
(29, 'W tej sytuacji postój pojazdu jest dozwolony na poboczu - za tym znakiem.', b'1'),
(30, 'Kierujący, widząc zbliżający się pojazd uprzywilejowany, jeżeli wymaga tego sytuacja, zobowiązany jest zjechać na pobocze.', b'1'),
(31, 'W tej sytuacji kierujący samochodem osobowym powinien zatrzymać się przed mostem.', b'0'),
(32, 'Czy kobieta w widocznej ciąży jest zwolniona z obowiązku zapinania pasów bezpieczeństwa?', b'1'),
(33, 'Jeżeli kierujący podczas skrętu w lewo na śliskiej nawierzchni zauważył, że tył jego pojazdu zarzuca w prawo, to w takiej sytuacji powinien delikatnie skręcić kierownicą w lewo?', b'0'),
(34, 'Ważniejsze na skrzyżowaniu od sygnalizacji świetlnej są polecenia kierującego ruchem.', b'1'),
(35, 'Czy w tej sytuacji zabrania się wyprzedzania pojazdów ciężarowych?', b'1'),
(36, 'Kierujący, który prowadzi auto na autostradzie i odczuwa zmęczenie, powinien pierwszym możliwym zjazdem opuścić autostradę i zatrzymać się w bezpiecznym miejscu, aby odpocząć?', b'1'),
(37, 'Znak ten iformuje o końcu autostrady.', b'1'),
(38, 'Czy zażywając leki przepisane przez lekarza powinniśmy upewnić się, czy mają one wpływ na prowadzenie pojazdu?', b'1'),
(39, 'Czy obiekt drogowy na fotografii to tunel?', b'0'),
(40, 'Znak ten ostrzega o zbliżaniu się do skrzyżowania z drogą z pierszeństwem przejazdu, występującą po obu stronach.', b'0'),
(41, 'Czy droga hamowania na mokrej nawierzchni jest dłuższa niż na suchej?', b'1'),
(42, 'Czy wysoka temperatura powietrza może mieć wpływ na stan nawierzchni asfaltowej?', b'1'),
(43, 'Czy w strefie zamieszkania kierujący jest zwolniony z obowiązku zapinania pasów bezpieczeństwa?', b'0'),
(44, 'W tej sytuacji kierujący pojazdem może zawrócić na odcinku od umieszczenia znaku do skrzyżowania.', b'0'),
(45, 'Poruszając się za innym pojazdem po mokrej nawierzchni kierujący powinien zachować bezpieczną odległość, aby podczas hamowania nie stworzyć zagrożenia.', b'1'),
(46, 'Czy kierujący poruszający się w tunelu powinien mieć włączone światła pozycyjne?', b'0'),
(47, 'Czy mijany znak jest znakiem informacyjnym?', b'0'),
(48, 'Zakazane jest nadużywanie sygnału dźwiękowego.', b'1'),
(49, 'Znak ten ostrzega o niebezpiecznych zakrętach, przym czym drugi z nich będzie w prawo.', b'0'),
(50, 'Zbliżając się do skrzyżowania oznaczonego tym znakiem, kierujący musi ustąpić pierwszeństwa przejazdu pojazdom nadjeżdżającym z prawej strony.', b'1');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `abc_questions`
--
ALTER TABLE `abc_questions`
  ADD PRIMARY KEY (`id_question`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examiner`
--
ALTER TABLE `examiner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signed_exams`
--
ALTER TABLE `signed_exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id_student`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yes_no_questions`
--
ALTER TABLE `yes_no_questions`
  ADD PRIMARY KEY (`id_question`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT dla tabeli `examiner`
--
ALTER TABLE `examiner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT dla tabeli `signed_exams`
--
ALTER TABLE `signed_exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `student`
--
ALTER TABLE `student`
  MODIFY `id_student` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT dla tabeli `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
