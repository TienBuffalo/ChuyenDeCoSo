-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2023 at 04:45 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uniquedeveloper`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `aid` int(255) NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `ans_id` int(250) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`aid`, `answer`, `ans_id`, `course_name`) VALUES
(1, 'Home Tool Markup Language', 1, 'html'),
(2, 'Hyperlinks and Text Markup Language', 1, 'html'),
(3, ' Hyper Text Markup Language', 1, 'html'),
(4, ' Hyper Train Markup Language', 1, 'html'),
(5, '  Mozilla', 2, 'html'),
(6, '  Google', 2, 'html'),
(7, 'Microsoft', 2, 'html'),
(8, 'W3C', 2, 'html'),
(9, '<head>', 3, 'html'),
(10, '<heading>', 3, 'html'),
(11, '<h6>', 3, 'html'),
(12, '<h1>', 3, 'html'),
(13, '<lb>', 4, 'html'),
(14, '<br>', 4, 'html'),
(15, '<break>', 4, 'html'),
(16, '<bk>', 4, 'html'),
(17, 'programming language', 5, 'java'),
(18, 'web designing language', 5, 'java'),
(19, 'OOPS language', 5, 'java'),
(20, 'general purpose language', 5, 'java');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(4) NOT NULL,
  `cat_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat_name`) VALUES
(1, 'Toán học 6 kì 1'),
(2, 'Toán học 6 kì 2'),
(3, 'Toán học 7 kì 1'),
(4, 'Toán học 7 kì 2'),
(5, 'Toán học 8 kì 1'),
(6, 'Toán học 8 kì 2'),
(7, 'Toán học 9 kì 1'),
(8, 'Toán học 9 kì 2'),
(9, 'Đại số 10'),
(10, 'Hình học 10'),
(11, 'Đại số 11'),
(12, 'Hình học 11'),
(13, 'Giải tích 12'),
(14, 'Hình học 12'),
(21, 'test'),
(22, 'toán 99');

-- --------------------------------------------------------

--
-- Table structure for table `commentsection`
--

CREATE TABLE `commentsection` (
  `cid` int(11) NOT NULL,
  `uid` varchar(120) NOT NULL,
  `date` datetime NOT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `video_id` int(255) NOT NULL,
  `video_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `commentsection`
--

INSERT INTO `commentsection` (`cid`, `uid`, `date`, `message`, `video_id`, `video_path`) VALUES
(160, 'manh', '2022-06-07 22:43:55', '10:001', 1, ''),
(166, 'tien', '2023-06-19 12:41:45', 'fsdfdsfds', 1, ''),
(169, 'trinh', '2023-06-21 14:53:42', 'trinh\r\n', 1, ''),
(170, 'trinh', '2023-06-21 14:53:49', 'kdkdkđ\r\n', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `topic_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `topic_name`, `description`, `course_name`) VALUES
(1, 'Toán 6 tập 1', '<iframe src=\"https://drive.google.com/file/d/1BRiGbRHslgrtXiWI3e0ZB_4TA8a9f19I/preview\" width=\"640\" height=\"600\" allow=\"autoplay\"></iframe>\r\n', 'toán 6'),
(2, 'Toán 6 tập 2', '<iframe src=\"https://drive.google.com/file/d/1qh3DQgApRRu6TtDFxa6sjekPL-t-JAIT/preview\" width=\"640\" height=\"600\" allow=\"autoplay\"></iframe>', 'toán 6'),
(3, 'Toán 7 tập 1', '<iframe src=\"https://drive.google.com/file/d/1J7bRbk0EMS4kMQ0E05DiqjOTmiAbJkbc/preview\" width=\"640\" height=\"600\" allow=\"autoplay\"></iframe>', 'toán 7'),
(4, 'Toán 7 tập 2', '<iframe src=\"https://drive.google.com/file/d/1ppWfAOdGNsbUTzyCeqIIj6tmUUA6lXJp/preview\" width=\"640\" height=\"600\" allow=\"autoplay\"></iframe>', 'toán 7'),
(5, 'Toán 8 tập 1', '<iframe src=\"https://drive.google.com/file/d/1qt_bIxf1-yISd8rN0NezeGTIZccsK4Dk/preview\" width=\"640\" height=\"600\" allow=\"autoplay\"></iframe>', 'toán 8'),
(6, 'Toán 8 tập 2', '<iframe src=\"https://drive.google.com/file/d/1nGO_22iapfhViRi1GiRkaPxPhv2AbAqV/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 'toán 8'),
(7, 'Toán 9 tập 1', '<iframe src=\"https://drive.google.com/file/d/1fQ34U_vpNfzYOyIduiFQdj7mn7WV8SOF/preview\" width=\"640\" height=\"600\" allow=\"autoplay\"></iframe>', 'toán 9'),
(8, 'Toán 9 tập 2', '<iframe src=\"https://drive.google.com/file/d/1GTrU107KSSCXQ9zQ45iZsuug_Uc5nnuo/preview\" width=\"640\" height=\"600\" allow=\"autoplay\"></iframe>', 'toán 9'),
(9, 'Toán 10 đại số', '<iframe src=\"https://drive.google.com/file/d/1vnWiGGv7wFYltpWVNCe14m6Jl4UaYolL/preview\" width=\"640\" height=\"600\" allow=\"autoplay\"></iframe>', 'toán 10'),
(10, 'Toán 10 hình học', '<iframe src=\"https://drive.google.com/file/d/167R8xM8W_MP_CBYvgQO8p-h6Fi5CfjWV/preview\" width=\"640\" height=\"600\" allow=\"autoplay\"></iframe>', 'toán 10'),
(11, 'Toán 11 đại số và giải tích', '<iframe src=\"https://drive.google.com/file/d/1_pNrdsKPonZyeF3p0UobhTZzxWTkEFiQ/preview\" width=\"640\" height=\"600\" allow=\"autoplay\"></iframe>', 'toán 11'),
(12, 'Toán 11 hình học', '<iframe src=\"https://drive.google.com/file/d/1B-pQJbEfEerzYKBrXGZEmfd_aUpMpU5y/preview\" width=\"640\" height=\"600\" allow=\"autoplay\"></iframe>', 'toán 11'),
(13, 'Toán 12 giải tích', '<iframe src=\"https://drive.google.com/file/d/1aoxRflvJSaRIIMRr5t_AQDyiSn-Edbzq/preview\" width=\"640\" height=\"600\" allow=\"autoplay\"></iframe>', 'toán 12'),
(14, 'Toán 12 hình học', '<iframe src=\"https://drive.google.com/file/d/1IED3_aC5c3HL9giMlUVNDMtuQbKhCUVB/preview\" width=\"640\" height=\"600\" allow=\"autoplay\"></iframe>', 'toán 12'),
(63, 'toán 99 tập 1', '<p><iframe frameborder=\"0\" height=\"480\" scrolling=\"no\" src=\"https://drive.google.com/file/d/1qh3DQgApRRu6TtDFxa6sjekPL-t-JAIT/preview\" width=\"640\"></iframe></p>\r\n', 'toán 99');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `faq_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `faq_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `faq_title`, `faq_description`) VALUES
(1, 'Trang web của bạn là gì ?', 'Trang web dạy toán trung học online'),
(2, 'Làm thế nào để đánh giá video ?', 'Bạn có thể để lại bình luận ý kiến của mình dưới video'),
(3, 'Làm thế nào để đăng nhập?', 'Bạn bấm vào đăng ký tài khoản ở giao diện và làm theo hướng dẫn'),
(4, 'Làm thế nào để đăng nhập?', 'Bạn bấm vào đăng ký tài khoản ở giao diện và làm theo hướng dẫn');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`img`) VALUES
('uploadimg/4.png'),
('uploadimg/4.png'),
('uploadimg/3logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `email`) VALUES
(28, 'admin', 'admin', 'samndjdsfadg'),
(35, 'manh', 'manh', 'super@super'),
(41, 'tien', 'tien', ''),
(43, 'trinh', 'trinh', ''),
(48, 'tan', 'tan', 'jfkdf');

-- --------------------------------------------------------

--
-- Table structure for table `mytable`
--

CREATE TABLE `mytable` (
  `id` int(255) NOT NULL,
  `video_path` varchar(255) NOT NULL,
  `video_name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mytable`
--

INSERT INTO `mytable` (`id`, `video_path`, `video_name`, `img`) VALUES
(1, 'path1', 'myvideo', 'httpvideo'),
(2, 'path2', 'myvideo2', 'httpvideo2');

-- --------------------------------------------------------

--
-- Table structure for table `programming_languages`
--

CREATE TABLE `programming_languages` (
  `id` int(255) NOT NULL,
  `language_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `language_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `language_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `programming_languages`
--

INSERT INTO `programming_languages` (`id`, `language_name`, `language_image`, `language_description`) VALUES
(1, 'toán 6', 'uploadimg/toan6.jpg', 'Sách giáo khoa toán 6'),
(2, 'toán 7', 'uploadimg/toan7.jpg', 'Sách giáo khoa toán 7'),
(3, 'toán 8', 'uploadimg/toan8.jpg', 'Sách giáo khoa toán 8'),
(4, 'toán 9', 'uploadimg/toan9.jpg', 'Sách giáo khoa toán 9'),
(5, 'toán 10', 'uploadimg/toan10.jpg', 'Sách giáo khoa toán 10'),
(6, 'toán 11', 'uploadimg/toan11.jpg', 'Sách giáo khoa toán 11'),
(7, 'toán 12', 'uploadimg/toan12.png', 'Sách giáo khoa toán 12'),
(17, 'toán 99', 'uploadimg/toan6.jpg', 'Sách giáo khoa toán 99');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `qid` int(250) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `ans_id` int(255) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qid`, `question`, `ans_id`, `course_name`) VALUES
(1, 'what does html stands for', 1, 'html'),
(2, ' Who is making the Web standards?', 5, 'html'),
(3, ' Choose the correct HTML element for the largest heading:', 9, 'html'),
(4, 'What is the correct HTML element for inserting a line break?', 13, 'html'),
(5, 'what is java ?', 17, 'java');

-- --------------------------------------------------------

--
-- Table structure for table `question_test`
--

CREATE TABLE `question_test` (
  `id` int(255) NOT NULL,
  `question` varchar(510) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `opt1` varchar(510) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `opt2` varchar(510) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `opt3` varchar(510) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `opt4` varchar(510) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `answer` int(100) NOT NULL,
  `course_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `question_test`
--

INSERT INTO `question_test` (`id`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `answer`, `course_id`) VALUES
(1, 'Cho tập hợp A = {3; 7}. Cách viết nào sau đây là đúng?', 'A. {3} ∈ A', 'B. 3 ⊂ A', 'C. {7} ⊂ A', 'D. A ⊂ {7}', 0, 1),
(2, 'Số nào sau đây chia hết cho cả 2 và 3?', 'A. 32', 'B. 42', 'C. 52', 'D. 62', 1, 1),
(3, 'Số nào sau đây là ước chung của 24 và 30?', 'A. 8', 'B. 5', 'C. 4', 'D. 3', 3, 1),
(4, 'Số nào sau đây là số nguyên tố?', 'A. 77', 'B. 57', 'C. 17', 'D. 9', 2, 1),
(5, 'Kết quả của phép tính 3^4 : 3 + 2^3 : 2^2 là:\n\n', 'A. 2', 'B. 8', 'C. 11', 'D. 29', 3, 1),
(6, 'Kết quả sắp xếp các số −2; −3; −101; −99 theo thứ tự tăng dần là:', 'A. −2; −3; −99; −101 ', 'B. −101; −99; −2; −3', 'C. −101; −99; −3; −2', 'D. −99; −101; −2; −3', 2, 1),
(7, 'Kết quả của phép tính (−13) + (−28) là:', 'A. -41', 'B. −31', 'C. 42', 'D. -15', 0, 1),
(8, 'Cho tập hợp A = {x ∈ Z | −2 ≤ x < 3}. Số phần tử của tập hợp A là:', 'A. 3   ', 'B. 4', 'C. 5', 'D. 6', 2, 1),
(9, 'Cho x − (−9) = 7. Số x bằng:', 'A. -2', 'B. 2', 'C. -16', 'D. 16', 0, 1),
(10, 'Cho điểm M nằm giữa điểm N và điểm P (Hình 1). Kết luận nào sau đây là đúng?', 'A. Tia MN trùng với tia MP', 'B. Tia MP trùng với tia NP', 'C. Tia PM trùng với tia PN', 'D. Tia PN trùng với tia NP', 2, 1),
(11, 'Trên tia Ox lấy các điểm M, N, P sao cho OM = 1cm, ON = 3cm, OP = 8cm. Kết luận nào sau đây không đúng?', 'A. MN = 2cm', 'B. MP = 7cm', 'C. NP = 5cm', 'D. NP = 6cm', 3, 1),
(12, 'Số nào chia hết cho cả 2;3;5;9 trong các số sau?', 'A. 45', 'B. 78', 'C. 180', 'D. 210', 2, 1),
(13, 'Số nguyên âm nhỏ nhất có ba chữ số là:', 'A. -999', 'B. -111', 'C. -102', 'D. -100', 0, 1),
(14, 'ƯCLN của 30; 60; 120 là:', 'A. 60', 'B. 120', 'C. 10', 'D. 30', 3, 1),
(15, 'Cho đoạn thẳng AB = 14cm; M là trung điểm của AB thì MA bằng:', 'A. 7cm', 'B. 8cm', 'C. 6cm', 'D. 10cm', 0, 1),
(16, 'Kết quả cuả 2018^2018 : 2018^2017 là:\r\n', 'A. 1;', 'B. 2018;', 'C. 2017;', 'D. 2018^2.', 1, 1),
(17, 'Tổng các số nguyên thỏa mãn điều kiện – 5 ≤ x ≤ 7 là:', 'A. 6', 'B. 7', 'C. 13', 'D. 18', 2, 1),
(18, 'Số nào sau đây chia hết cho tất cả các số 2; 3; 5; 9.', 'A. 723654', 'B. 73920', 'C. 278910', 'D. 23455', 2, 1),
(19, 'Tập hợp các số nguyên tố nhỏ hơn 10 là:', 'A. {1; 2; 3; 5; 7}', 'B. {2; 3; 5; 7}', 'C. {3; 5; 7}', 'D. {2; 3; 5; 7; 9}', 1, 1),
(20, 'Số nguyên âm nhỏ nhất có ba chữ số là:', 'A. -999', 'B. -111', 'C. -102', 'D. -100', 0, 1),
(21, 'Kết quả nào sau đây không bằng 24. 42', 'A. 2^8', 'B. 16^2', 'C. 8^2', 'D. 4^4', 2, 1),
(22, 'Các số nguyên a và b được biểu diễn trên trục số như sau:\r\nKhẳng định nào sau đây là sai:', 'A. a < 0 < b', 'B. - a > - b', 'C. |a| < |b|', 'D. - b < 0 < - a', 2, 1),
(23, 'Cho hình vẽ, khẳng định nào sau đây là sai:', 'A. Hai tia AB và AC đối nhau.', 'B. Hai tia BC và AC trùng nhau', 'C. Trên hình có 4 đoạn thẳng.', 'D. Trên hình có 2 đường thẳng.', 1, 1),
(24, 'Cho 5 số 0; 1; 3; 6; 7. Có bao nhiêu số tự nhiên có ba chữ số và chia hết cho 3 được lập từ các số trên mà các chữ số không lặp lại. ', 'A. 1', 'B. 4', 'C. 3', 'D. 2', 3, 1),
(25, 'Cho tập hợp A = {1; 2; 3; 4} và tập hợp B = {3; 4; 5} . Viết tập hợp C gồm các phần tử thuộc A nhưng không thuộc B.', 'A. C = {5}   ', 'B. C = {1; 2; 5}', 'C. C = {1; 2}', 'D. C = {2; 4}', 1, 1),
(26, 'Cho 6 điểm A, B, C, D, E, F trong đó không có ba điểm nào thẳng hàng. Vẽ đường thẳng đi qua các cặp điểm. Hỏi vẽ được bao nhiêu đường thẳng?', 'A. 15 ', 'B. 10', 'C. 20 ', 'D. 16', 2, 1),
(27, 'Thực hiện hợp lý phép tính (56.35 + 56.18) : 53 ta được', 'B. 28 ', 'B. 10', 'C. 53', 'D. 56', 3, 1),
(28, 'Thực hiện hợp lý phép tính (56.35 + 56.18) : 53 ta được', 'A. 112', 'B. 28 ', 'C. 53', 'D. 56', 3, 1),
(29, 'Trên tia Ox lấy ba điểm A, B, C sao cho OA = 3cm; OB = 5cm; OC = 7cm. Chọn câu đúng.', 'A. Điểm A không phải là trung điểm của đoạn OB', 'B. Điểm B là trung điểm của đoạn AC.', 'C. Cả A, B đều sai', 'D. Cả A, B đều đúng', 1, 1),
(30, 'Có bao nhiêu giá trị của x thỏa mãn 240 − [23 + (13 + 24.3 − x)] = 132?', 'A. 3', 'B. 2', 'C. 1', 'D. 4', 2, 1),
(31, 'Cho 5 điểm A, B, C, D, O sao cho 3 điểm A, B, C cùng thuộc đường thẳng d; 3 điểm B, C, D thẳng hàng và 3 điểm C, D, O không thẳng hàng. Hỏi điểm nào nằm ngoài đường thẳng d?', 'A. O, A', 'B. O', 'C. D', 'D. C, D', 1, 1),
(32, 'Vẽ ba đường thẳng phân biệt bất kì, số giao điểm của ba đường thẳng đó không thể là:', 'A. 0 ', 'B. 1 hoặc 2', 'C. 4 ', 'D. 3', 2, 1),
(33, 'Cho tập hợp X là ước của 35 và lớn hơn 5. Cho tập Y là bội của 8 và nhỏ hơn 50. Gọi M là giao của 2 tập hợp X và Y, tập hợp M có bao nhiêu phần tử?', 'A. 2', 'B. 1', 'C. 0', 'D. 3\r\n', 2, 1),
(34, 'Giá trị của x biết −20 − x = 96 là:', 'A. 116 ', 'B. −76 ', 'C. −116', 'D. 76', 2, 1),
(35, 'Tìm x thuộc bội của 9 và x < 63', 'A. x ∈ {0; 9; 18; 28; 35}     ', 'B. x ∈ {0; 9; 18; 27; 36; 45; 54}', 'C. x ∈ {9; 18; 27; 36; 45; 55; 63}     ', 'D. x ∈ {9; 18; 27; 36; 45; 54; 63}', 1, 1),
(36, 'Tìm x biết x − (−43) = (−3).', 'A. x = 43 ', 'B. x = −40 ', 'C. x = −46 ', 'D. x = 46', 2, 1),
(37, 'Tìm ƯCLN của 15, 45 và 225', 'A. 18  ', 'B. 3 ', 'C. 15 ', 'D. 5', 2, 1),
(38, 'Tổng 1 + 3 + 5 + 7+. . . +95 + 97 là', 'A. Số có chữ số tận cùng là 7.', 'B. Số có chữ số tận cùng là 2.', 'C. Số có chữ số tận cùng là 3.', 'D. Số có chữ số tận cùng là 1.', 3, 1),
(39, 'Một cô nhân viên đánh máy liên tục dãy số bắt đầu từ 1, 2, 3, 4,…2089. Hỏi cô đã gõ bao nhiêu chữ số? ', 'A. 7249', 'B. 7294', 'C. 7429', 'D. 7492', 0, 1),
(40, 'Cho x ∈ Z và (−154 + x) ⋮ 3 thì:', 'A. x chia 3 dư 1', 'B. x ⋮ 3 ', 'C. x chia 3 dư 2', 'D. không kết luận được tính chia hết cho 3 của x', 0, 1),
(41, 'Phân số ab là phân số tối giản khi ƯC(a; b) bằng', 'A. {1; -1}     ', 'B. {2}     ', 'C. {1; 2}    ', 'D. {1; 2; 3}', 0, 2),
(42, 'Đâu là hình ảnh một mặt phẳng?', 'A. Mặt bàn ', 'B. Ô tô', 'C. Quả bóng ', 'D. Cả A, B, C đều đúng', 0, 2),
(43, 'Tìm số nguyên x biết −5/6.120/25/x<−7/15.9/14', 'A. x ∈ {−3; −2; −1}  ', 'B. x ∈ {−4; −3; −2; −1}', 'C. x ∈ {−3; −2}        ', 'D. x ∈ {−3; −2; −1; 0}', 0, 2),
(44, 'Cho ba tia chung gốc Ox; Oy; Oz thỏa mãn xOyˆ =130∘; yOzˆ =120∘; zOXˆ = 110∘. Chọn câu đúng.', 'A. Tia Oy  không nằm giữa hai tia Ox và Oz.', 'B. Tia Ox  không nằm giữa hai tia Oy và Oz.', 'C. Không có tia nào nằm giữa hai tia còn lại.    ', 'D. Tia Oz  không nằm giữa hai tia Oy và Ox', 2, 2),
(45, 'Phép nhân phân số có những tính chất nào ?', 'A. Tính chất giao hoán', 'B. Tính chất kết hợp', 'C. TÍnh chất nhân phân phối', 'D. Tât cả các tính chất trên', 3, 2),
(46, 'Cho xOyˆ = 125∘,  Oz sao cho yOzˆ = 35∘. Có bao nhiêu cách vẽ tia Oz? Tính xOzˆ trong từng trường hợp đó.', 'A. Có hai cách; xOzˆ = 90∘ hoặc xOzˆ = 160∘', 'B. Có hai cách; xOzˆ =  90∘ hoặc xOzˆ = 150∘', 'C. Có một cách; xOzˆ = 90∘', 'D. Có một cách; xOzˆ = 90∘', 0, 2),
(47, 'Cho P = 1/2^2+1/3^2+.....+1/2002^2+1/2003^2. Chọn câu đúng.\r\n\r\n', 'A. P > 1', 'B. P > 2  ', 'C. P < 1  ', 'D. P < 0', 2, 2),
(48, 'Tính hợp lí A = (4/5/17−3/4/5+8/15/29)−(3/5/17−6/14/29)  ta được', 'A. 13/4/5', 'B. 12/1/5', 'C. −3/4/5', 'D. 10/4/5', 1, 2),
(49, 'Cho ba điểm M; N; P không thẳng hàng nằm ngoài đường thẳng d. Biết rằng đường thằng d cắt đoạn MN nhưng không cắt đoạn MN. Kết luận nào sau đây đúng nhất?', 'A. Hai điểm M; P nằm cùng phía đối với đường thẳng d.', 'B. Hai điểm M; N nằm khác  phía  đối với đường thẳng d.', 'C. Điểm N và P thuộc hai nửa mặt phẳng đối nhau bờ d.', 'D. Cả A, B, C đều đúng', 3, 2),
(50, 'Cho ba vòi nước cùng chảy vào một bể cạn. Vòi A chảy một mình thì sau 6 giờ sẽ đầy bể, vòi B chảy một mình thì mất 3 giờ đầy bể, vòi C thì mất 2 giờ đầy bể. Hỏi nếu cả ba vòi cùng chảy một lúc thì trong bao lâu sẽ đầy bể?', 'A. 4 giờ', 'B. 3 giờ', 'C. 1 giờ', 'D. 2 giờ', 2, 2),
(51, 'Có bao nhiêu phân số lớn hơn 16 nhưng nhỏ hơn 14 mà có tử số là 5.', 'A. 9', 'B. 10', 'C. 11', 'D. 12', 0, 2),
(52, 'Cho n điểm A1; A2; . . . ; An theo thứ tự trên đường thẳng xy và điểm M nằm ngoài đường thẳng xy. Nối M với n điểm đó ta đếm được 55 tam giác. Vậy giá trị của n là:', 'A. 10', 'B. 11   ', 'C. 12   ', 'D. 15', 1, 2),
(53, 'Phép nhân phân số có những tính chất nào?', 'A. Tính chất giao hoán', 'B. Tính chất kết hợp     ', 'C. Tính chất nhân phân phối ', 'D. Tất cả các tính chất trên', 3, 2),
(54, 'Cho AB = 6cm  Vẽ đường tròn (A; 4cm) và (B; 3cm); hai đường tròn này cắt nhau tại C và D. Gọi F là giao điểm của (A; 4cm) và AB; E là giao điểm của (B; 3cm) và AB. Tính AC; BD', 'A. AC = 3cm; BD = 4cm     ', 'B. AC = 4cm; BD = 3cm   ', 'C. AC = 4cm; BD = 4cm ', 'D. AC = 3cm; BD = 3cm', 1, 2),
(55, 'Số các số nguyên x để 5x3:10x2+5x21 có giá trị là số nguyên là:', 'A. 1', 'B. 4  ', 'C. 2', 'D. 3', 1, 2),
(56, 'Cho 5 điểm A; B; C; D; E trong đó không có ba điểm nào thẳng hàng. Có bao nhiêu tam giác có các đỉnh là ba trong 5 điểm trên?', 'A. 9   ', 'B. 10   ', 'C. 8  ', 'D. 7', 1, 2),
(57, 'Một cửa hàng có hai thùng dầu. Biết 23 số dầu ở thùng thứ nhất là 28 lít dầu, số dầu ở thùng thứ hai là 48 lít dầu. Hỏi cả hai thùng dầu có tất cả bao nhiêu lít dầu?', 'A. 124 lít', 'B. 102 lít  ', 'C. 92 lít', 'D. 100 lít', 1, 2),
(58, 'Một cửa hàng nhập về 42kg bột mì. Cửa hàng đã bán hết 57 số bột mì đó. Hỏi cửa hàng còn lại bao nhiêu ki-lô-gam bột mì?', 'A. 12kg     ', 'B. 18kg   ', 'C. 25kg ', 'D. 30kg', 0, 2),
(59, 'Chọn câu sai:', 'A. 3/1/4.2/61/3=8', 'B. 5/1/3:2/2/9=2/2/5', 'C. 6/1/7.(−3)=−18/3/7', 'D. 10/8/9:2=5/8/9', 3, 2),
(60, 'Cho hai góc kề bù AOBˆ; BOCˆ. Vẽ tia phân giác OM của góc BOAˆ. Biết số đo góc MOCˆ gấp 5 lần số đo góc AOMˆ. Tính số đo góc BOCˆ', 'A. 120∘  ', 'B. 130∘  ', 'C. 60∘     ', 'D. 90∘ ', 0, 2),
(61, 'Tìm x biết x - 15 = 2 + −34', 'A. 3', 'B. 6', 'C. 15      ', 'D. 18', 2, 2),
(62, 'Em hãy chọn phát biểu đúng trong các phát biểu sau:', 'A. Hai góc tù là hai góc kề nhau.', 'B. Cho 3 tia chung gốc Ox; Oy; Oz, ta luôn có: xOyˆ + yOzˆ = xOzˆ', 'C. Nếu tia Oy nằm giữa hai tia On và Om thì khi đó ta có: yOnˆ + yOmˆ = mOnˆ', 'D. Nếu Aˆ và Bˆ là hai góc bù nhau thì Aˆ+Bˆ=90∘.', 2, 2),
(63, 'Một người gửi tiết kiệm 15.000.000 đồng với lãi suất 0, 6% một tháng thì sau một tháng người đó thu được tất cả bao nhiêu tiền?', 'A. 15.090.000 đồng ', 'B. 15.080.000 đồng', 'C. 15.085.000 đồng ', 'D. 15.100.000 đồng.', 0, 2),
(64, 'Đường tròn (A; 2cm) và đường tròn (B; 2cm) cắt nhau tại hai điểm C; D. Khi đó đường tròn (C; 2cm) đi qua điểm nào dưới đây? ', 'A. Điểm A    ', 'B. Điểm B   ', 'C. Cả điểm A và điểm B ', 'D. Không đi qua điểm nào trong ba điểm A; B; D', 2, 2),
(65, 'Cho các phân số 6/n+8;7/n+9;8/n+10;.....;35/n+37 Tìm số tự nhiên n nhỏ nhất để các phân số trên tối giản.', 'A. 35', 'B. 34', 'C. 37  ', 'D. 36', 0, 2),
(66, 'Cho các góc sau Aˆ = 30∘; Bˆ = 60∘; Cˆ =110∘; Dˆ = 90∘. Chọn câu sai', 'A. Bˆ < Dˆ', 'B. Cˆ < Dˆ', 'C. Aˆ < Bˆ', 'D. Bˆ < Cˆ', 1, 2),
(67, 'Phân số nào dưới đây bằng với phân số −2/5 ?', 'A. 4/10', 'B.  −6/15', 'C. 6/15', 'D.−4/10', 1, 2),
(68, 'Cho đoạn thẳng AB = 4cm. Vẽ đường tròn (A; 3cm) và (B; 2cm). Hai đường tròn tâm A; B lần lượt cắt đoạn thẳng AB tại K; I. Chọn câu đúng.', 'A. Điểm I là trung điểm của đoạn thẳng AB\r\n', 'B. Điểm I là trung điểm của đoạn thẳng AK', 'C. Điểm I là trung điểm của đoạn thẳng BK', 'D. AI = 3 cm', 0, 2),
(69, 'Cho các phân số: 15/60;−7/5;6/15;28/−20;3/12. Số cặp phân số bằng nhau trong những phân số trên là:', 'A. 4', 'B. 1 ', 'C. 3 ', 'D. 2', 3, 2),
(70, 'Biết 3/5 số học sinh giỏi của lớp 6A là 12 học sinh. Hỏi lớp 6A có bao nhiêu học sinh giỏi?', 'A. 12 học sinh giỏi  ', 'B. 15 học sinh giỏi', 'C. 14 học sinh giỏi     ', 'D. 20 học sinh giỏi', 3, 2),
(71, 'Cho BOCˆ =96∘. A là một điểm nằm trong góc BOCˆ. Biết BOAˆ=40∘. Vẽ tia OD là tia đối của tia OA. Tính CODˆ', 'A. 123∘', 'B. 125∘', 'C. 134∘     ', 'D. 124∘', 3, 2),
(72, 'Mẫu số chung của các phân số 2/5;23/18;5/75 là', 'A. 180 ', 'B. 500 ', 'C. 750 ', 'D. 450', 3, 2),
(73, 'Cho hai góc kề bù xOyˆ và yOzˆ sao cho xOyˆ. Gọi Ot là tia phân giác của xOyˆ, vẽ tia Om trong góc yOzˆ sao cho tOmˆ=90∘. Tính yOmˆ.', 'A. 30∘     ', 'B. 40∘        ', 'C. 35∘   ', 'D. 60∘    ', 0, 2),
(74, 'Tìm x biết −5/14=20/6−5x', 'A. x = 10 ', 'B. x = −10   ', 'C. x = 5      ', 'D. x = 6', 1, 2),
(75, 'Trên cùng một nửa mặt phẳng bờ là tia Ox, vẽ Om là tia nằm giữa hai tia Ox và Oy. Biết xOyˆ = m∘, xOmˆ =n∘, khi đó số đo của mOyˆ là:', 'A. m∘+n∘   ', 'B. m∘−n∘ ', 'C. n∘−m∘', 'D. m∘', 1, 2),
(76, 'Tổng các số a; b; c thỏa mãn 6/9=12/a=b/−64=−738/c là:', 'A. 1161  ', 'B. −1125  ', 'C. −1053', 'D. 1089', 1, 2),
(77, 'Viết phân số 1311000 dưới dạng số thập phân ta được', 'A. 0,131    ', 'B. 0,1331   ', 'C. 1,31     ', 'D. 0,0131', 0, 2),
(78, 'Kết quả của phép tính (9/25−−√−2,9):(4/5+0,2) là:', 'A. 87/5', 'B. −87/5', 'C. −5/87', 'D. 5/87', 1, 3),
(79, 'Cho ΔDEF = ΔMNP. Biết EF + FD = 10cm, NP − MP = 2cm, DE = 3cm. Tính độ dài cạnh FD.', 'A. 4 cm', 'B. 6 cm   ', 'C. 8 cm', 'D. 10 cm', 0, 3),
(80, ' Biểu thức P=(−3/4+2/5):3/7+(3/5+−1/4):3/7 có giá trị là', 'A. 1', 'B. 2', 'C. 0', 'D. 3', 2, 3),
(81, 'Hãy cho biết vị trí của các điểm có hoành độ lớn hơn 0 nhỏ hơn 1 và có tung độ lớn hơn 0 nhỏ hơn 4.', 'A. Nằm trong hình chữ nhật được giới hạn bởi bốn đường thẳng x = 0; x = 1; y = 0; y = 4, tính cả các điểm thuộc bốn đường thẳng trên.', 'B. Nằm trong hình chữ nhật được giới hạn bởi bốn đường thẳng x = 0; x = 1; y = 0; y = 4, không tính các điểm thuộc bốn đường thẳng trên.', 'C. Nằm ngoài hình chữ nhật được giới hạn bởi bốn đường thẳng x = 0; x = 1; y = 0; y = 4, tính cả các điểm thuộc bốn đường thẳng trên.', 'D. Nằm ngoài hình chữ nhật được giới hạn bởi bốn đường thẳng x = 0; x = 1; y = 0; y = 4, không tính các điểm thuộc bốn đường thẳng trên.', 1, 3),
(82, 'Cho đoạn thẳng AB, trên đường trung trực d của đoạn AB lấy điểm M. So sánh AM và BM.', 'A. MA = MB ', 'B. MA > MB', 'C. MA < MB ', 'D. 2.MA = MB', 0, 3),
(83, 'Giá trị nhỏ nhất của biểu thức A = 5 + |15−x| là ', 'A. 5/26', 'B. 5', 'C. 1/5', 'D.26/5', 1, 3),
(84, 'Cho tam giác ABC có Aˆ = 96°, Cˆ= 50°. Số đo góc B là?', 'A. 34°', 'B. 35°', 'B. 60°', 'D. 90°', 0, 3),
(85, 'So sánh hai số x = −2/5 và y = −3/13', 'A. x > y', 'B. x < y', 'C. x = y', 'D. x ≥ y', 1, 3),
(86, 'Tam giác ABC có Aˆ = 45∘. Trên tia đối của tia AC lấy điểm E sao cho AE = AB. Tính số đo góc CBE.', 'A. 107∘', 'B. 107∘30\'', 'C. 108∘', 'D. 100∘', 1, 3),
(87, 'Hai đường thẳng xy và x′y′ cắt nhau tại O. Biết xOx′ˆ=70∘. Ot là tia phân giác của góc xOx’. Ot′ là tia đối của tia Ot. Tính số đo góc yOt′.', 'A. yOt′ˆ =35∘', 'B. yOt′ˆ =70∘', 'C. yOt′ˆ =145∘', 'D. yOt′ˆ =110∘', 0, 3),
(88, 'Tìm các số x; y; z biết x−1/2=y+3/4=z−5/6 và 5z − 3x − 4y = 50', 'A. x = 5; y = 5; z = 12  ', 'B. x = 5; y = 10; z = 17', 'C. x = 5; y = 5; z = 17', 'D. x = 17; y = 5; z = 5', 2, 3),
(89, 'Trên mặt phẳng tọa độ Oxy, vẽ các điểm A (−2; 1), B (−6; 1), C (−6; 6) và D (−2; 6). Tính diện tích tứ giác ABCD.', 'A. 20 cm2', 'B. 10 cm2', 'C. 30 cm2', 'D. 40 cm2', 0, 3),
(90, 'Tìm số x  thoả mãn: x : (2/5−1/2/5) = 1. ', 'A. x = 1 ', 'B. x = −1', 'C. x = 5/2', 'D. x = −5/2', 1, 3),
(91, 'Hai xe ô tô cùng đi từ A đến B. Biết vận tốc của ô tô thứ nhất bằng 60% vận tốc của ô tô thứ hai và thời gian xe thứ nhất đi từ A đến B nhiều hơn thời gian ô tô thứ hai đi từ A đến B là 4 giờ. Tính thời gian xe thứ hai đi từ A đến B.', 'A. 3', 'B. 6', 'C. 9', 'D. 4', 1, 3),
(92, 'Giả sử x và y là hai đại lượng tỉ lệ thuận, x1; x2 là hai giá trị khác nhau của x; y1; y2 là hai giá trị tương ứng của y. Tính x1; y1 biết 2y1 + 3x1 = 20; x2 = −6; y2 = 3.', 'A. x1 = 10; y1 = −5.    ', 'B. x1 = −5; y1 = 10.', 'C. x1 = −10; y1 = −5.', 'D. x1 = 10; y1 = 5.', 0, 3),
(93, 'Chia số 133 thành ba phần tỉ lệ thuận với 5; 6; 8. Khi đó phần bé nhất là số', 'A. 35 ', 'B. 42', 'C. 56 ', 'D. 53', 0, 3),
(94, 'Cho tam giác vuông ABC tại A (AB > AC). Tia phân giác của góc B cắt AC ở D. Kẻ DH vuông góc với BC. Trên tia AC lấy E sao cho AE = AB. Đường thẳng vuông góc với AE tại E cắt tia DH tại K. Tính số đo góc DBK.', 'A. 45∘\r\n', 'B. 30∘  ', 'C. 60∘', 'D. 40∘', 0, 3),
(95, 'Số tiền trả cho ba người đánh máy một bản thảo là 41 USD. Người thứ nhất làm việc trong 16 giờ, mỗi giờ đánh được 3 trang. Người thứ hai trong 12 giờ, mỗi giờ đánh được 5 trang. Người thứ ba trong 14 giờ, mỗi giờ đánh được 4 trang. Hỏi người thứ ba nhận được bao nhiêu USD? ', 'A. 14             ', 'B. 15       ', 'C. 12 ', 'D. 16', 0, 3),
(96, 'Cho biết x tỉ lệ thuận với y theo hệ số k. Khi x = 12 thì y = -3. Hệ số tỉ lệ là:', 'A. k = −1/4     ', 'B. k = -4', 'C. k = 1/4', 'D. k = 4', 1, 3),
(97, 'Chọn câu đúng. Hai tia phân giác của hai góc kề bù thì', 'A. Vuông góc với nhau', 'B. Song song với nhau', 'C. Đối nhau', 'D. Trùng nhau', 0, 3),
(98, 'Cho hình vẽ dưới đây:\r\nChọn câu đúng nhất.', 'A. Aˆ =80∘', 'B. AB // CD', 'C. Cả A, B đều đúng', 'D. A đúng, B sai', 2, 3),
(99, 'Kết quả của phép tính 7,118 + 9,52 − 8,7 + 2,21 sau khi làm tròn đến chữ số thập phân thứ hai là:', 'A. 10,148 ', 'B. 10,14', 'C. 10,1 ', 'D. 10,15', 3, 3),
(100, 'Trong mặt phẳng tọa độ Oxy, cho đồ thị hàm số y = ax (a ≠ 0) là đường thẳng OA với điểm A(−1; −3). Hãy xác định công thức của hàm số trên.', 'A. y = 1/3/x', 'B. y = 2x ', 'C. y = −3x ', 'D. y = 3x', 3, 3),
(101, 'Chọn một cặp góc so le trong trong hình vẽ sau:', 'A. C3ˆ và B1ˆ', 'B. C1ˆ và B1ˆ', 'C. C4ˆ và B4ˆ', 'D. C2ˆ và B1ˆ', 0, 3),
(102, 'Tổng các giá trị của x thỏa mãn |x + 2/5| −2 = −14 là ', 'A. −14/5', 'B. 4/5', 'C. −4/5', 'D. 14/5', 2, 3),
(103, 'Cho ba đường thẳng phân biệt a, b và c biết a // b và a ⊥ c. Kết luận nào đúng:', 'A. b // c', 'B. b ⊥ c', 'C. a ⊥ b', 'D. Tất cả các đáp án đều sai', 1, 3),
(104, 'Cho hình vẽ sau.\r\nTính số đo góc BAD.', 'A. 95°', 'B. 105°      ', 'C. 115°', 'D. 45°', 0, 3),
(105, 'Phần giả thiết: c ∩ a = {A} ; c ∩ b = {B} A1ˆ + B2ˆ =180∘, (tham khảo hình vẽ) là của định lý nào dưới đây?\r\n\r\n', 'A. Nếu hai đường thẳng cắt một đường thẳng thứ ba tạo thành hai góc ngoài cùng phía bù nhau thì hai đường thẳng đó song song.', 'B. Nếu hai đường thẳng cắt một đường thẳng thứ ba tạo thành hai góc so le trong bù nhau thì hai đường thẳng đó song song.', 'C. Nếu hai đường thẳng cắt một đường thẳng thứ ba tạo thành hai góc đồng vị bằng nhau thì hai đường thẳng đó song song.', 'D. Nếu hai đường thẳng cắt một đường thẳng thứ ba tạo thành hai góc trong cùng phía bù nhau thì hai đường thẳng đó song song.', 3, 3),
(106, 'Cho tam giác ABC, kẻ AH vuông góc với BC. Tính chu vi ΔABC biết AB = 5cm, AH = 4cm, HC = 184−−−√ cm (làm tròn đến chữ số thập phân thứ nhất).', 'A. 30,8 cm     ', 'B. 35,7 cm ', 'C. 31 cm ', 'D. 31,7 cm', 1, 3),
(107, 'Biết một cặp góc so le trong A3ˆ = B2ˆ = 35∘. Tính số đo của cặp góc so le trong còn lại.', 'A. 115∘', 'B. 55∘      ', 'C. 135∘ ', 'D. 145∘', 3, 3),
(108, 'Hai đường thẳng AB và CD cắt nhau tại O. Biết AOCˆ−AODˆ = 50∘. Chọn câu đúng.', 'A. AOCˆ=110∘', 'B. BOCˆ= 65∘', 'C. BODˆ = 120∘', 'D. AODˆ = 50∘', 1, 3),
(109, 'Số nào dưới đây là giá trị của biểu thức B = 19/−18+11/5+1/8+4/15+4', 'A. 2 ', 'B. 6 ', 'B. 6 ', 'D. 4', 3, 3),
(110, 'Cho hình vẽ sau. Tam giác nào bằng với tam giác ABC?', 'A. ΔABC = ΔEDA', 'B. ΔABC = ΔEAD', 'C. ΔABC = ΔAED', 'D. ΔABC = ΔADE', 2, 3),
(111, 'Tìm x, biết (5x−1)^6=729', 'A. x = 4/5 hoặc x = 2/5', 'B. x = −4/5 hoặc x = − 2/5', 'C. x = 4/5 hoặc x = - 2/5', 'D. x = − 4/5 hoặc x = 2/5', 2, 3),
(112, 'Cho tam giác ABC vuông ở  A có  AC = 20cm. Kẻ  AH vuông góc với  BC. Biết  BH = 9cm, HC = 16cm. Tính  AB, AH.', 'A. AH = 12 cm; AB = 15 cm.  ', 'B. AH = 10 cm; AB = 15 cm.', 'C. AH = 15 cm; AB = 12 cm.', 'D. AH = 12 cm; AB = 13 cm.', 0, 3),
(113, 'Cho góc nhọn xOy và Oz là tia phân giác của góc đó. Trên tia Ox lấy điểm A và trên tia Oy lấy điểm B sao cho OA = OB. Gọi C là một điểm bất kỳ trên tia Oz, Chọn câu sai.', 'A. AC = OB ', 'B. AC = BC', 'C. OACˆ = OBCˆ', 'D. CO là tia phân giác của BCAˆ', 0, 3),
(114, 'Cho đoạn thẳng AB = 6cm. Trên một nửa mặt hẳng bờ AB vẽ tam giác ABC sao cho AC = 4cm, BC = 5cm, trên nửa mặt phẳng còn lại vẽ tam giác ABD sao cho BD = 4cm, AD = 5cm. Chọn câu đúng.', 'A. ΔCAB = ΔDAB ', 'B. ΔABC = ΔBDA     ', 'C. ΔCAB = ΔDBA  ', 'D. ΔCAB = ΔABD', 2, 3),
(115, 'Cho góc nhọn xOy, Oz là tia phân giác của góc đó. Qua điểm A thuộc tia Ox kẻ đường thẳng song song với Oy cắt ở M. Qua M kẻ đường thẳng song song với Ox cắt Oy ở B. Chọn câu đúng.   ', 'A. OA > OB; MA > MB', 'B. OA = OB; MA = MB  ', 'C. OA < OB; MA < MB', 'D. OA < OB; MA = MB', 1, 3),
(116, 'Cho tam giác ABC cân tại đỉnh A với Aˆ=80∘. Trên hai cạnh AB, AC lần lượt lấy hai điểm D và E sao cho AD = AE. Phát biểu nào sau đây là sai?', 'A. DE//BC     ', 'B. Bˆ =50∘', 'C. ADEˆ=50∘', 'D. Cả ba phát biểu trên đều sai', 3, 3),
(117, 'Giá trị biểu thức 2/5+(−4/3)+(−1/2) là :', 'A. −33/30', 'B. −31/30', 'C. 43/30', 'D. −43/30', 3, 3),
(138, 'Thu gọn biểu thức sau −12u^2(uv)^2−(−11u^4).(2v)^2 ta được đơn thức có phần hệ số là:', 'A. −32 ', 'B. −56', 'C. 10 ', 'D. 32', 3, 4),
(139, 'Cho ΔABC có CE và BD là hai đường cao. So sánh BD + CE và AB + AC ? ', 'A. BD + CE < AB + AC ', 'B. BD + CE > AB + AC', 'C. BD + CE ≤ AB + AC   ', 'D. BD + CE ≥ AB + AC', 0, 4),
(140, 'Số điện năng tiêu thụ của các hộ gia đình ở một tổ dân phố được ghi lại trong bảng sau (tính bằng kW/h)\r\n\r\nDấu hiệu cần tìm hiểu là gì?', 'A. Số điện năng tiêu thụ của một hộ gia đình', 'B. Số điện năng tiêu thụ của toàn thành phố', 'C. Số điện năng tiêu thụ của mỗi hộ gia đình của một tổ dân phố', 'D. Tiền điện của tổ dân phố', 2, 4),
(141, 'Có bao nhiêu gia đình sử dụng điện?', 'A. 30', 'B. 31', 'C. 32', 'D. 33', 0, 4),
(142, 'Chọn câu đúng nhất.', 'A. Điện năng tiêu thụ ít nhất của 1 hộ gia đình là 40  kW/h.', 'B. Điện năng tiêu thụ nhiều nhất của 1 hộ gia đình là 150 kW/h.', 'C. Số hộ sử dụng điện từ 50 kW/h đến 75 kW/h chiếm tỉ lệ cao.', 'D. Cả A, B, C đều đúng.', 3, 4),
(143, 'Tìm số trung bình cộng.', 'A. 75,5 kW/h   ', 'B. 77 kW/h', 'C. 76 kW/h', 'D. 76,5 kW/h', 3, 4),
(144, 'Cho các đa thức A = 4x^2−5xy+3y^2 ; B= 3x^2+2xy+y^2; C= −x^2+3xy+2y^2. Tính C - A - B', 'A. 8x^2+6xy+2y^2', 'B. −8x^2+6xy−2y^2', 'C. 8x^2−6xy−2y^2', 'D. 8x^2−6xy+2y^2', 1, 4),
(145, 'Cho ΔABC có CE và BD là hai đường vuông góc (E ∈ AB, D ∈ AC). So sánh  BD + CE và 2BC?  ', 'A. BD + CE > 2BC  ', 'B. BD + CE < 2BC', 'C. BD + CE ≤ 2BC  ', 'D. BD + CE = 2BC', 1, 4),
(146, 'Trả lời các câu 9, 10\r\n\r\nHai xạ thủ A và B cùng bắn 15 phát đạn, kết quả được ghi lại dưới đây:', 'A. 8; 9', 'B. 9; 10', 'C. 8,5; 8,6', 'D. 9,1; 9,1', 3, 4),
(147, 'Nhận xét nào sau đây là sai?', 'A. Điểm trung bình của hai xạ thủ bằng nhau', 'B. Điểm của xạ thủ A phân tán hơn xạ thủ B', 'C. Điểm của xạ thủ B đều nhau hơn xạ thủ A', 'D. Xạ thủ A bắn tốt hơn xạ thủ B', 3, 4),
(148, 'Khối lượng của các bao gạo trong kho được ghi lại ở bảng “tần số” sau: Biết khối lượng trung bình của các bao gạo là 52kg. Hãy tìm giá trị của n.', 'A. n = 33, 5      ', 'B. n = 34, 5  ', 'C. n = 35    ', 'D. n = 34', 2, 4),
(149, 'Cho ΔABC có AB + AC = 10cm, AC − AB = 4cm. So sánh Bˆ và Cˆ ?', 'A. Cˆ < Bˆ', 'B. Cˆ >  Bˆ', 'C. Cˆ = Bˆ', 'D. Cˆ ≥ Bˆ', 0, 4),
(150, ' Nam mua 10 quyển vở, mỗi quyển giá x đồng và hai bút bi, mỗi chiếc giá y đồng. Biểu thức biểu thị số tiền Nam phải trả là:', 'A. 2x − 10y (đồng)', 'B. 10x − 2y (đồng)', 'C. 2x + 10y (đồng)', 'D. 10x + 2y (đồng)', 3, 4),
(151, 'Cho P(x) = −3x^2+2x+1 ;Q(x) = −3x^2+x−2 Với giá trị nào của x thì P(x) = Q(x)', 'A. x = 0', 'B. x = 2', 'C. x = -3', 'D. x = 3', 2, 4),
(152, 'Cho góc nhọn xOyˆ,trên tia Ox lấy điểm A, trên tia Oy lấy điểm B sao cho OA = OB. Đường trung trực của OA và đường trung trực của OB cắt nhau tại I. Khi đó:', 'A. OI là tia phân giác của xOyˆ', 'B. OI là đường trung trực của đoạn AB', 'C. Cả A, B đều đúng', 'D. Cả A, B đều sai', 2, 4),
(153, 'Trả lời các câu 16, 17\r\n\r\nSố lượng học sinh giỏi trong từng lớp của một trường trung học cơ sở được ghi lại bởi bảng dưới đây. \r\nSố các giá trị khác nhau của dấu hiệu là', 'A. 6', 'B. 7     ', 'C. 8', 'D. 9 ', 2, 4),
(154, 'Tần số tương ứng của các giá trị 9; 10; 15 lần lượt là: ', 'A. 4; 4; 3', 'B. 4; 3; 4 ', 'C. 3; 4; 4', 'D. 4; 3; 3', 0, 4),
(155, 'Cho hai đa thức f(x) = 4x^4−2ax^2+(a+1)x+2 và g(x) = 2ax + 5. Tìm a để f(1) = g(2)', 'A. a = −2/5', 'B. a = 5/2', 'C. a = 2/5', 'D. a = 4', 2, 4),
(156, 'Cho ΔABC có M là trung điểm BC. So sánh AB + AC và 2AM.', 'A. AB + AC < 2AM    ', 'B. AB + AC > 2AM', 'C. AB + AC = 2AM    ', 'D. AB + AC ≤ 2AM.', 1, 4),
(157, 'Kết quả sau khi thu gọn đơn thức  6x^2y(−112xy^2) là:', 'A. −12x^3y^3', 'B. 12x^3y^3', 'C. −12x^2y^3', 'D. −12x^2y^2', 0, 4),
(158, 'Trả lời các câu 21, 22\r\n\r\nKết quả môn nhảy cao (tính bằng cm) của học sinh lớp 7A được ghi lại trong bảng sau:\r\n\r\nCâu 21: Học sinh nhảy thấp nhất và cao nhất lần lượt là bao nhiêu cm?', 'A. 90 cm; 100 cm', 'B. 120 cm; 90 cm  ', 'C. 90 cm; 120 cm', 'D. 90 cm; 110 cm', 2, 4),
(159, 'Chọn câu đúng. ', 'A. Đa số học sinh nhảy trong khoảng từ 90 cm − 95 cm.', 'B. Đa số học sinh nhảy trong khoảng từ 100 cm − 105 cm.', 'C. Đa số học sinh nhảy trong khoảng từ 110 cm − 120 cm.', 'D. Số ít học sinh nhảy trong khoảng từ 100 cm − 105 cm.', 1, 4),
(160, 'Biểu thức đại số biểu thị diện tích hình thang có đáy lớn là a , đáy nhỏ là b, đường cao là h như sau :', 'A.( a + b ) h    ', 'B.( a - b ) h    ', 'C.1/2( a - b ) h  ', 'D. 1/2( a + b ) h', 3, 4),
(161, 'Thu gọn đơn thức A = (−1/3xy)(−3xy^2)(−x) ta được kết quả là', 'A. A = −xy^3', 'B. A = −x^2y^3', 'C. A = −x^3y^2', 'D. A =x^2y^3', 1, 4),
(162, 'Cho góc  xOyˆ = 60∘, A là điểm trên tia Ox, B là điểm trên tia Oy (A, B không trùng với O). Chọn câu đúng nhất.', 'A. OA + OB ≤ 2AB', 'B. OA + OB = 2AB khi OA = OB.', 'C. OA + OB ≥ 2AB', 'D. Cả A, B đều đúng.', 3, 4),
(163, 'Cho ΔABC cân tại A, hai đường cao BD và CE cắt nhau tại I. Tia AI cắt BC tại M. Khi đó ΔMED là tam giác gì?', 'A. Tam giác cân', 'B. Tam giác vuông cân', 'C. Tam giác vuông', 'D. Tam giác đều.', 0, 4),
(164, 'Cho biểu thức đại số A = x^2−3x+8. Giá trị của A tại x = -2 là:', 'A. 13      ', 'B. 18      ', 'C. 19   ', 'D. 9', 1, 4),
(165, 'Tìm đa thức f(x) = ax + b.  Biết f(1) = 7/2; f(−1) = −5/2', 'A. f (x) = 3x + 1/2', 'B. f (x) = x + 1/2', 'C. f (x) = 3x + 7/2', 'D. f (x) = 2x + 1/2', 0, 4),
(166, 'Một bể đang chứa 480 lít nước, có một vòi chảy vào mỗi phút chảy được x lít. Cùng lúc đó một vòi khác chảy nước từ bể ra. Mỗi phút lượng nước chảy ra bằng 1/4 lượng nước chảy vào . Hãy biểu thị lượng nước trong bể sau khi đồng thời mở cả hai vòi trên sau a phút.', 'A. 480 + 3/4ax (lít) ', 'B. 34ax (lít) ', 'C. 480 − 3/4ax (lít) ', 'D. 480 + ax (lít)', 0, 4),
(167, 'Cho ΔABC có cạnh AB = 1cm và cạnh BC = 4cm. Tính độ dài cạnh AC biết độ dài cạnh AC là một số nguyên.  ', 'A. 1cm', 'B. 2cm', 'C. 3cm ', 'D. 4cm', 3, 4),
(168, 'Bậc của đa thức x^3y^2−xy^5+7xy−9 là:', 'A. 2  ', 'B. 3 ', 'C. 5 ', 'D. 6', 3, 4),
(169, 'Cho ΔABC có Aˆ=70∘, các đường phân giác BE và CD của Bˆ và Cˆ cắt nhau tại I. Tính BICˆ?', 'A. 125∘   ', 'B. 100∘ ', 'C. 105∘', 'D. 140∘', 0, 4),
(170, 'Tính giá trị biểu thức B =  5x^2−2x−18 tại |x| = 4', 'A. B = 54', 'B. B = 70', 'C. B = 54 hoặc B = 70', 'D. B = 45 hoặc B = 70', 2, 4),
(171, 'Cho tam giác ABC vuông tại A có AB = 5cm, AC = 12cm. Gọi G là trọng tâm tam giác ABC, khi đó GA + GB + GC bằng (làm tròn đến chữ số sau dấu phẩy):', 'A. 11,77 cm ', 'B. 17,11 cm  ', 'C. 11,71 cm', 'D. 17,71 cm', 3, 4),
(172, 'Viết đơn thức  21x^4y^5z^6 dưới dạng tích hai đơn thức, trong đó có 1 đơn thức là 3x^2y^2z', 'A. (3x^2y^2z).(7x^2y^3z^5)', 'B. (3x^2y^2z).(7x^2y^3z^4)', 'C. ((3x^2y^2z).(18x^2y^3z^5)', 'D. (3x^2y^2z).(−7x^2y^3z^5)', 0, 4),
(173, 'Cho ΔABC có điểm O là một điểm bất kì nằm trong tam giác. So sánh OA + OC và AB + BC.', 'A. OA + OC < BA + BC', 'B. OA + OC > BA + BC', 'C. OA + OC = BA + BC', 'D. OA + OC ≥ BA + BC.', 0, 4),
(174, 'Đường cao của tam giác đều cạnh a có bình phương độ dài là', 'A. 3a^2/4     ', 'B. a^2/4  ', 'C.3a^2/2   ', 'D.  3a/2', 0, 4),
(175, 'Trả lời các câu 38, 39\r\n\r\nSố lượng học sinh giỏi trong từng lớp của một trường trung học cơ sở được ghi lại bởi bảng dưới đây.\r\nDấu hiệu cần tìm hiểu ở đây là gì?', 'A. Số học sinh trong mỗi lớp', 'B. Số học sinh khá của mỗi lớp', 'C. Số học sinh giỏi trong mỗi lớp', 'D. Số học sinh giỏi trong mỗi trường', 2, 4),
(176, 'Có tất cả bao nhiêu giá trị của dấu hiệu?', 'A. 20', 'B. 25', 'C. 24', 'D. 18', 0, 4),
(177, 'Cho G là trọng tâm của tam giác đều. Chọn câu đúng.', 'A. GA = GB = GC ', 'B. GA = GB > GC', 'C. GA < GB < GC ', 'D. GA > GB > GC', 0, 4),
(178, 'Cho biểu thức C = x(y + z) − y(z + x) − z(x − y). Chọn khẳng định đúng.', 'A. Biểu thức C không phụ thuộc vào x; y; z', 'B. Biểu thức C  phụ thuộc vào cả x ; y và z', 'C. Biểu thức C chỉ phụ thuộc vào y', 'D. Biểu thức C chỉ phụ thuộc vào z', 0, 5),
(179, 'Độ dài đường trung tuyến ứng với cạnh huyền của tam giác vuông có các cạnh góc vuông bằng 5 cm, 12 cm là:', 'A. 6, 5 cm ', 'B. 6 cm ', 'C. 13 cm ', 'D. 10 cm', 0, 5),
(180, 'Có bao nhiêu giá trị x thỏa mãn (2x−1)^2−(5x−5)^2=0', 'A. 0', 'B. 1', 'C. 2', 'D. 3', 2, 5),
(181, 'Một tam giác đều có độ dài cạnh bằng 14cm . Độ dài một đường trung bình của tam giác đó là:', 'A. 34 cm', 'B. 7 cm  ', 'C. 6, 5 cm   ', 'D. 21 cm', 1, 5),
(182, 'Tổng các giá trị của x thỏa mãn x(x −1)(x +1) + x^2 −1 = 0 là', 'A. 2', 'B. −1', 'C. 1', 'D. 0', 3, 5),
(183, 'Cho hình thang cân ABCD có đáy nhỏ AB, đường cao AH = 5cm và Dˆ=45∘. Độ dài đáy lớn CD bằng', 'A. 13 cm ', 'B. 10 cm ', 'C. 12 cm ', 'D. 8 cm', 0, 5),
(184, 'Tính giá trị của biểu thức A = 35^2−700+10^2', 'A. 252. ', 'B. 152.', 'C. 452.  ', 'D. 202.', 0, 5),
(185, 'Có bao nhiêu giá trị của x thỏa mãn x^3−3x^2+3−x=0', 'A. 1', 'B. 2', 'C. 3', 'D. 4', 2, 5),
(186, ' Chọn câu đúng trong các câu sau:', 'A. Tứ giác ABCD có 4 góc đều nhọn.', 'B. Tứ giác ABCD có 4 góc đều tù.', 'C. Tứ giác ABCD có 2 góc vuông và 2 góc tù.', 'D. Tứ giác ABCD có 4 góc đều vuông.', 3, 5),
(187, 'Có bao nhiêu giá trị x thỏa mãn (2x+1)^2−4(x+3)^2=0', 'A. 0 ', 'B. 1 ', 'C. 2', 'D. 3', 1, 5),
(188, 'Cho biểu thức B = (1/x−2−2x/4−x^2+12+x).(2/x−1). Rút gọn B ta được:', 'A. B = −1/x+2', 'B. B = 1/x+2', 'C. B = 4/x+2', 'D. B = −4/x+2', 3, 5),
(189, 'Tìm giá trị x thỏa mãn  3x(x − 2) − x + 2 = 0', 'A. x = 2; x = −1/3', 'B. x = −2; x =  1/3', 'C. x = 2; x = 3', 'D. x = 2; x = 1/3', 3, 5),
(190, 'Tính giá trị cuả biểu thức A = 8x^3+12x^2y+6xy^2+y^3 tại x = 2 và y = -1.', 'A. 1   ', 'B. 8', 'C. 27 ', 'D. -1', 2, 5),
(191, 'Tìm giá trị của a và b để đa thức 4x^3 + ax + b chia cho đa thức x^2−1 dư 2x-3:', 'A. a = −6; b = −3.', 'B. a = 6; b = −3.', 'C. a = 2; b = −3.', 'D. a = −2; b = −3', 3, 5),
(192, 'Cho (4x2+2x−18)2−(4x2+2x)2=m(4x2+2x−9)2. Khi đó giá trị của m là', 'A. m = −18.', 'B. m = 36.', 'C. m = −36.', 'D. m = 18.', 2, 5),
(193, 'Biểu thức nào sau đây không phải là phân thức đại số ?', 'A. 1/x^2+1', 'B.  x+1/2', 'C. x^2−5', 'D.  x+1/10', 3, 5),
(194, 'Để đa thức x^4+ax^2+1 chia hết cho x^2+2x+1 thì giá trị của là', 'A. a = −2.', 'B. a = 1.', 'C. a = −1.', 'D. a = 0.', 0, 5),
(195, 'Thương của phép chia (9x^4y^3−18x^5y^4−81x^6y^5):(−9x^3y^3) là đa thức có bậc là:', 'A. 5', 'B. 9', 'C. 3', 'D. 1', 0, 5),
(196, 'Biến đổi biểu thức (1−2/x+1)/(1−x^2−2/x^2−1) thành phân thức đại số là?', 'A. (x−1)^2', 'B. −(x−1)^2', 'C. (x+1)^2', 'D. −(x+1)^2', 0, 5),
(197, 'Cho tam giác ABC. Gọi D là điểm đối xứng với B qua A, E là điểm đối xứng với C qua A. Lấy các điểm I, K theo thứ tự thuộc các đoạn thẳng DE, BC sao cho DI = BK. Chọn câu đúng.', 'A. ED//BC', 'B. Điểm I đối xứng với điểm A qua K', 'C. ΔAED = ΔABC', 'D. Cả A, B, C đều đúng', 0, 5),
(198, 'Cho (4x^2+4x−3)^2+(4x^2+4x+3)^2=mx(x+1) với m∈ R. Chọn câu đúng về giá trị của m', 'A. m > 47.', 'B. m < 0.', 'C. m⋮9.', 'D. m là số nguyên tố.', 1, 5),
(199, 'Cho tam giác ABC, đường trung tuyến AM. Gọi D là trung điểm của AM, E là giao điểm của BD và AC, F là trung điểm của EC. Tính AE biết AC = 9cm', 'A. AE = 4, 5 cm', 'B. AE = 3 cm', 'C. AE = 2 cm', 'D. AE = 6 cm', 1, 5),
(200, 'Tìm đa thức M thoả mãn M/2x−3=6x^2+9x/4x^2−9(≠±3/2)', 'A. M = 6x^{2}+9x', 'B. M = -3x', 'C. M = 3x', 'D. M = 2x+3', 2, 5),
(201, 'Tam giác ABC đối xứng với tam giác A\'B\'C\' qua đường thẳng d, biết chu vi của tam giác ABC là 48cm thì chu vi của tam giác A\'B\'C\' là ?', 'A. 24cm  ', 'B. 32cm', 'C. 40cm   ', 'D. 48cm', 3, 5),
(202, 'Giá trị lớn nhất của phân thức 5/x^2−6x+10 là?', 'A. 5', 'B. -5', 'C. 2', 'D. -2', 0, 5),
(203, 'Biết  x^4+4x^2+5/5x^3+5.2x/x^2+4.3x^2+3/x^4+4x2+5 = ............ Đa thức thích hợp điền vào chỗ trống ở tử và mẫu lần lượt là:', 'A. 6x; x^2+4', 'B. x; 5(x^2+4)', 'C. 6x; 5(x^2+4)', 'D. 3x; x^2+4', 2, 5),
(204, 'Cho tam giác ABC, đường cao AH, trong đó BC = 30 cm, AH = 18 cm. Vẽ hình đối xứng với tam giác ABC qua trung điểm của cạnh BC. Diện tích của tam giác tạo thành là:', 'A. 270 cm2', 'B. 540 cm2', 'C. 280 cm2', 'D. 360 cm2', 0, 5),
(205, 'Cho |x| < 2 . Khi đó khẳng định nào sau đây là đúng khi nói về giá trị của biểu thức A = x^4+2x^3−8x−16', 'A. A > 1.', 'B. A > 0.', 'C. A < 0.', 'D. A ≥ 1', 2, 5),
(206, 'Biểu thức  (1+1x^2)/(1−1/x+1/x^2) được biến đổi thành phân thức đại số là', 'A. 1/x+1', 'B. x+1', 'C. x-1', 'D. 1/x−1', 1, 5),
(207, 'kết quả của phép tính 4y^2/11x^4.−3^x^2/8y  là?', 'A. −3y/22x^2', 'B. 3y/22x^2', 'C. y/11x^2', 'D. −y/11x^2', 0, 5),
(208, 'Một hình thang cân có cạnh bên là 2, 5cm; đường trung bình là 3 cm.  Chu vi của hình thang là:', 'A. 8 cm.', 'B. 12 cm', 'C. 11, 5 cm.', 'D. 11 cm', 3, 5),
(209, 'Cho tam giác ABC và A′B′C′ tam giác đối xứng  nhau qua đường thẳng d biết AB = 4cm, BC = 7cm và chu vi của tam giác ABC = 17cm. Khi đó độ dài cạnh C′A′ của tam giác A′B′C′ là:', 'A. 17cm', 'B. 6cm', 'C. 7cm', 'D. 4cm', 1, 5),
(210, 'Điều kiện xác định của phân thức x^2−4/9x^2−16 là ?', 'A. x = ±43', '  B. x ≠ ±4/3.4/3', 'C. −43 < x < 4/3', 'D. x > 4/3', 0, 5),
(211, 'Cho hình bình hành ABCD. Gọi I, K theo thứ tự là trung điểm của CD, AB. Đường chéo BD cắt AI, CK theo thứ tự ở E, F. Chọn khẳng định đúng.', 'A. DE = FE; FE > FB ', 'B. DE = FE = FB', 'C. DE > FE; EF = FB   ', 'D. DE > FE > FB', 1, 5),
(212, 'Cho (x^2+x)^2+4x^2+4x−12=(x^2+x−2)(x^2+x+...). Điền vào dấu ... số hạng thích hợp', ' A. −3.', 'B. 3.', 'C. −6.', 'D. 6.', 3, 5),
(213, 'Cho tứ giác ABCD. Gọi E, F, G, H theo thứ tự là trung điểm của AB, BC, CD, DA.  Tìm điều kiện của tứ giác ABCD để hình bình hành EFGH là hình vuông.', 'A. BD⊥AC; BD = AC', 'B. BD⊥AC   ', 'C. BD = AC', 'D. AC = BD và  AB//CD', 0, 5),
(214, 'Cho (x^2−4x)^2+8(x^2−4x)+15=(x^2−4x+5)(x−1)(x+...). Điền vào dấu số hạng thích hợp', 'A. −3.', 'B. 3.', 'C. 1.', 'D. −1.', 0, 5),
(215, 'Giá trị số tự nhiên n để phép chia x^2n:x^4 thực hiện được là:', 'A. n ∈ N, n > 2 ', 'B. n ∈ N, n ≥ 4', 'C. n ∈ N, n ≥ 2 ', 'D. n ∈ N, n ≤ 2', 2, 5),
(216, 'Cho tam giác ABC vuông cân tại A, AC = 6cm, điểm M thuộc cạnh BC. Gọi D, E theo thứ tự là các chân đường vuông góc kẻ từ M đến AB, AC. Chu vi của tứ giác ADME bằng:', 'A. 6 cm', 'B. 36 cm', 'C. 18 cm', 'D. 12 cm', 3, 5),
(217, 'Cho biểu thức D = x (x − y) + y (x + y) − (x + y)(x − y) − 2y^2 . Chọn khẳng định đúng.', 'A. Biểu thức D có giá trị là một số dương', 'B. Biểu thức D  có giá trị là một số âm', 'C. Biểu thức D có giá trị phụ thuộc vào y, x', 'D. Biểu thức D có giá trị là 0', 3, 5),
(218, 'Chọn khẳng định đúng.', 'A. Phương trình 8x (3x − 5) = 6 (3x − 5)có hai nghiệm trái dấu', 'B. Phương trình 8x (3x − 5) = 6 (3x − 5)có hai nghiệm cùng dương', 'C. Phương trình 8x (3x − 5) = 6 (3x − 5)có hai nghiệm cùng âm  ', 'D. Phương trình 8x (3x − 5) = 6 (3x − 5)có một nghiệm duy nhất', 1, 6),
(219, 'Tính thể tích của hình chóp tam giác đều có tất cả các cạnh đều bằng 6 cm (làm tròn đến chữ số thập phân thứ hai).', 'A. 24, 64 cm3', 'B. 25, 46 cm3', 'C. 26, 46 cm3', 'D. 26, 64 cm3', 1, 6),
(220, 'Khiêm đi từ nhà đến trường Khiêm thấy cứ 10 phút lại gặp một xe buýt đi theo hướng ngược lại. Biết rằng cứ 15 phút lại có 1 xe buýt đi từ nhà Khiêm đến trường là cũng 15 phút lại có 1 xe buýt đi theo chiều ngược lại. Các xe chuyển động với cùng vận tốc. Hỏi cứ sau bao nhiêu phút thì có 1 xe cùng chiều vượt qua Khiêm.', 'A. 10', 'B. 20', 'C. 30', 'D. 40', 2, 6),
(221, 'Cho ΔABC nhọn, kẻ đường cao BD và CE, vẽ các đường cao DF và EG của ΔADE. ΔABD đồng dạng với tam giác nào dưới đây?', 'A. ΔAEG. ', 'B. ΔABC', 'C. Cả A và B     ', 'D. Không có tam giác nào.', 0, 6),
(222, 'Tập nghiệm của phương trình - 4x + 7 = - 1 là?', 'A. S = {2}.  ', 'B. S = {- 2}.', 'C. S = {32}.   ', 'D. S = {3}.', 0, 6),
(223, 'Cho tứ giác ABCD có đường chéo BD chia tứ giác đó thành hai tam giác đồng dạng ΔABD và ΔBDC. Tính các độ dài BD ,BC biết AB = 2cm ,AD = 3cm ,CD = 8cm', 'A. BD = 5 cm; BC = 6 cm.', 'B. BD = 6 cm; BC = 4 cm.', 'C. BD = 6 cm; BC = 6 cm.', 'D. BD = 4 cm; BC = 6 cm.', 3, 6),
(224, 'Tập nghiệm của phương tình −7x^2+4/x^3+1=5/x^2−x+1−1/x+1 là:', 'A. S = {0; 1}', 'B. S = {-1}', 'C. S = {0; -1}', 'D. S = {0}', 3, 6),
(225, 'Giá trị của m để phương trình ( x + 2 )( x - m ) = 4 có nghiệm x = 2 là?', 'A. m = 1.   ', 'B. m = ± 1.', 'C. m = 0.   ', 'D. m = 2.', 0, 6),
(226, 'Cho hình lập phương ABCD.A′B′C′D′ có A\'C= 3–√ Tính thể tích của hình lập phương.  ', 'A. 3a^3–√3', 'B. a^3', 'C. 27a^3', 'D. 9a^3', 1, 6),
(227, 'So sánh m^3 và m^2 với 0 < m < 1.', 'A. m^2>m^3', 'B.m^2<m^3', 'C.  m^2=m^3', 'D. không so sánh được', 0, 6),
(228, 'Cho hình bình hành ABCD, điểm F nằm trên cạnh BC. Tia AF cắt BD và DC lần lượt ở E và G. Chọn câu đúng nhất.', 'A. ΔBFE ∽ ΔDEA', 'B. ΔDEG ∽ ΔBAE', 'C. AE2 = GE.EF', 'D. Cả A, B, C đều đúng.', 2, 6),
(229, 'Phương trình |x − 1| + |x − 3| = 2x − 1 có số nghiệm là', 'A. 2   ', 'B. 1', 'C. 3    ', 'D. 0.', 1, 6),
(230, 'Cho a > b, c > d. Khẳng định nào sau đây đúng?', 'A. a + d > b + c', 'B. a + c > b + d', 'C. b + d > a + c', 'D. a + b > c + d', 1, 6),
(231, 'Nghiệm nhỏ nhất của phương trình |2 + 3x| = |4x − 3| là', 'A. 1/7', 'B. 5', 'C. −1/7', 'D. -5', 0, 6),
(232, 'Cho hai phương trình 4 |2x − 1| + 3 = 15 (1) và |7x + 1| − |5x + 6| = 0 (2). Kết luận nào sau đây là đúng.', 'A. Phương trình (1) có nhiều nghiệm hơn phương trình (2)   ', 'B. Phương trình (1) có ít nghiệm hơn phương trình (2)       ', 'C. Cả hai phương trình đều có hai nghiệm phân biệt    ', 'D. Cả hai phương trình đều vô số nghiệm', 2, 6),
(233, 'Cho hình hộp chữ nhật ABCD.A\'B\'C\'D\' có AB = 2cm, AD = 3cm, AA\' = 4cm. Thể tích hình hộp chữ nhật ABCD.A\'B\'C\'D\' ?', 'A. 12 cm3', 'B. 24 cm3', 'C. 18 cm3  ', 'D. 15 cm3', 1, 6),
(234, 'Cho a > b và c > 0, chọn kết luận đúng.', 'A. ac > bc', 'B. ac > 0', 'C. ac ≤ bc ', 'D. bc > ac', 0, 6),
(235, 'Nghiệm x = 3 là nghiệm của bất phương trình nào sau đây?', 'A. 5 - x < 1', 'B. 3x + 1 < 4', 'C. 4x - 11 > x', 'D. 2x - 1 > 3', 3, 6),
(236, 'Số nguyên nhỏ nhất thoả mãn bất phương trình x+4/5−x+5<x+3/3−x−2/2 là', 'A. 7', 'B. 6', 'C. 8', 'D. 5', 0, 6),
(237, 'Kết luận nào sau đây là đúng khi nói về nghiệm của bất phương trình (x + 3)(x + 4) > (x − 2)(x + 9) + 25.', 'A. Bất phương trình vô nghiệm', 'B. Bất phương trình vô số nghiệm x ∈ R      ', 'C. Bất phương trình có tập nghiệm S = {x > 0}   ', 'D. Bất phương trình có tập nghiệm S = {x < 0} ', 1, 6),
(238, 'Tỉ số các cạnh bé nhất của 2 tam giác đồng dạng bằng 2/5. Tính chu vi p, p′ của 2 tam giác đó, biết p′ − p = 18?', 'A. p = 12; p′ = 30', 'B. p = 30; p′ = 12', 'C. p = 30; p′ = 48', 'D. p = 48; p′ = 30', 0, 6),
(239, 'Cho tam giác ABC có AB = 9 cm, AC = 16 cm, BC = 20 cm. Khi đó', 'A. Bˆ = Aˆ/3', 'B. Bˆ = 2Aˆ/3', 'C. Bˆ= Aˆ/2', 'D. Bˆ=Cˆ', 2, 6),
(240, 'Tập nghiệm của phương trình 3x - 6 = 0 là ?', 'A. S = { 1 }', 'B. S = { 2 }', 'C. S = { - 2 }', 'D. S = { 1 }', 1, 6),
(241, 'Tìm độ dài x cho hình vẽ sau biết MN//BC', 'A. x = 2,75   ', 'B. x = 5', 'C. x = 3,75   ', 'D. x = 2,25', 2, 6),
(242, 'Chọn câu trả lời đúng: Cho hình bên, biết ED⊥AB, AC⊥AB, tìm x:', 'A. x = 3', 'B. x = 2,5', 'C. x = 2 ', 'D. x = 4', 0, 6),
(243, 'Tìm giá trị của x trên hình vẽ', 'A. x = 21/5  ', 'B. x = 2,5  ', 'C. x = 7 ', 'D. x = 21/4', 0, 6),
(244, 'Cho tam giác ABC cân tại A =, đường phân giác trong của  góc Bˆ cắt AC tại D và cho biết AB = 15 cm, BC = 10cm . Khi đó AD = ?', 'A. 3 cm  ', 'B. 6cm ', 'C. 9 cm', 'D. 12 cm', 2, 6),
(245, 'Cho a > b. Khẳng định nào sau đây đúng?\r\n\r\n', 'A. - 3a - 1 > - 3b - 1', 'B. - 3(a - 1) < - 3(b - 1)', 'C. - 3(a - 1) > - 3(b - 1)', 'D. 3(a - 1) < 3(b - 1)', 1, 6),
(246, 'Cho hình thang ABCD (AB//CD) có BC = 15 cm. Điểm E thuộc cạnh AD sao cho ADAE=13. Qua E kẻ đường thẳng song song với CD, cắt BC ở F. Tính độ dài BF.', 'A. 15 cm  ', 'B. 5 cm  ', 'C. 10 cm   ', 'D. 7cm', 1, 6),
(247, 'Một hình chóp tứ giác đều có chiều cao 35 cm, cạnh đáy 24 cm. Tính độ dài trung đoạn.', 'A. 37 cm', 'B. 73 cm', 'C. 27 cm', 'D. 57 cm', 0, 6),
(248, 'Hình hộp chữ nhật ABCD. A′B′C′D′ có đáy ABCD là hình vuông cạnh a và diện tích hình chữ nhật ADC′B′ bằng 2a^2, diện tích xung quanh của hình hộp chữ nhật bằng bao nhiêu?', 'A. Sxq =   4a^2–√3', 'B. Sxq = 2a^2–√3', 'C. Sxq = 4a^2', 'D. Sxq =  4a^2–√2', 0, 6),
(249, 'Cho hình hộp chữ nhật ABCD. A′B′C′D′ có O và O′ lần lượt là tâm ABCD; A′B′C′D′. Chọn kết luận đúng.', 'A. Hai mp (ACC′A′) và mp (BDD′B′) cắt nhau theo đường thẳng OO′', 'B. Hai mp (ADD′A′) và mp (BDD′B′) cắt nhau theo đường thẳng BD′', 'C. Hai mp (ACC′A′) và mp (BDD′B′) cắt nhau theo đường thẳng AA′', 'D. Hai mp (ACC′A′) và mp (BDD′B′) song song. ', 0, 6),
(250, 'Một xe đạp khởi hành từ điểm A, chạy với vận tốc 15 km/h. Sau đó 6 giờ, một xe hơi đuổi theo với vận tốc 60 km/h. Hỏi xe hơi chạy trong bao lâu thì đuổi kịp xe đạp?', 'A. 1h ', 'B. 2h', 'C. 3h  ', 'D. 4h', 1, 6),
(251, ' Một hình lăng trụ đứng có đáy là hình thoi với các đường chéo của đáy bằng 24 cm và 10 cm. Diện tích toàn phần của hình lăng trụ bằng 1020 cm2. Tính chiều cao của hình lăng trụ.', 'A. 15 cm ', 'B. 20 cm', 'C. 30 cm ', 'D. 25 cm', 0, 6),
(252, 'Gọi x0 là nghiệm của phương trình 2(x−3)+5x(x−1)=5x^2. Chọn khẳng định đúng.', 'A. x0 > 0 ', 'B. x0 < −2 ', 'C. x0 > −2 ', 'D. x0 > −3', 3, 6),
(253, 'Cho hình lăng trụ đứng ABC. DEF, đáy là tam giác ABC có AB = 6 cm, BC = 8 cm, AC = 10 cm và chiều cao của lăng trụ là 12 cm. Tam giác DEF là tam giác gì?', 'A. Vuông tại E', 'B. Vuông tại F', 'C. Vuông tại D', 'D. Đều', 0, 6),
(254, 'Tính các nghiệm của phương trình: (x^2−3x+3)(x^2−2x+3)=2x^2 là', 'A. -2', 'B. 2', 'C. 4', 'D. 3', 3, 6),
(255, 'Hình lập phương A có cạnh bằng 2/3 cạnh hình lập phương B. Hỏi thể tích hình lập phương A bằng bao nhiêu phần thể tích hình lập phương B.', 'A. 2/9', 'B.  27/8', 'C.  8/27', 'D. 4/9', 2, 6),
(256, 'Cho x-21<-29 ta chứng tỏ được:', 'A. x < -50', 'B. x < -8', 'C. x > -8', 'D. x > -50', 1, 6),
(257, 'Các số nguyên âm thỏa mãn cả hai bất phương trình 16 - 2x > 0 và 4x - 3 > 0 là:', 'A. -1; -2', 'B. -3; -4', 'C. -5; -6', 'D. Một đáp số khác ', 3, 6),
(258, 'Tính t = 1/1−4√2', 'A. (1−4–√2)(2–√2)', 'B. (1−4√2)(1+√2)', 'C. (1−4√2)(1–√2)', 'D. -(1+4√2)(1+√2)', 3, 7),
(259, 'Cho đường thẳng y = (m + 5)x – 2. Đường thẳng này vuông góc với đường thẳng x – 2y = 3 khi:', 'A. m = -6 ', 'B. m = -3   ', 'C. m = -7   ', 'D. m = -4', 2, 7),
(260, 'Cho hàm số y = (m - 1)x + m – 1. Kết luận nào sau đây là đúng ?', 'A. Với m > 1, hàm số y là hàm số đồng biến.', 'B. Với m > 1, hàm số y là hàm số nghịch biến.', 'C. Với m = 0, đồ thị hàm số đi qua gốc tọa độ.', 'D. Với m = 2, đồ thị hàm số đi qua điểm có tọa độ (−1/2; 1)', 0, 7),
(261, 'Cho tam giác ABC vuông tại A, đường cao AH. Biết AB = 5; AC = 7, BH = x, CH = y. Chỉ ra một hệ thức sai:', 'A. 5^2=x^2(x+y)^2', 'B. 5^2 = x(x+y)', 'C. 7^2 = y(x+y)  ', 'D.  5^2+7^2=(x+y)^2', 0, 7),
(262, 'Cho cos⁡α = 0,8. Tính sin α ( với α là góc nhọn)', 'A. sin⁡α = 0,6    ', 'B. sin⁡α = ±0,6', 'C. sin⁡α = 0,4    ', 'D. Kết quả khác', 0, 7),
(263, 'Cho hai đường thẳng xy và x’y’ vuông góc với nhau tại O. Một đoạn thẳng AB = 8 chuyển động sao cho A luôn nằm trên xy và B luôn nằm trên x’y’. Khi đó trung điểm M của đoạn AB di chuyển trên đoạn nào?', 'A. Đường thẳng song song với xy cách xy một đoạn là 4', 'B. Đường thẳng song song với x’y’ cách x’y’ một đoạn là 4', 'C. Đường tròn tâm O bán kính là 4', 'D. Đường tròn tâm O bán kính là 8', 2, 7),
(264, 'Cho biết 5–√ là số vô tỉ. Suy ra (√5+1/2)^2 + (√5−1/2)^2 là số ', 'A. Vô tỉ ', 'B. Hữu tỉ ', 'C. Số nguyên ', 'D. Số thập phân ', 2, 7),
(265, ' Đường thẳng đi qua A(1; -2) và song song với đường thẳng y + √2x - 3 = 0 có phương trình là:', 'A. y = √2x + √2- 2  ', 'B. y = -√2x - 2 - √2', 'C. y = -√2x + √2 - 2    ', 'D. Cả ba đều sai', 1, 7),
(266, 'Với giá trị nào của x thì biểu thức 9x^2+6x+1 có căn bậc hai? Câu nào sau đây đúng nhất?', 'A. Với mọi x>0', 'B. Với mọi x', 'C. x=0', 'D. x=−13', 1, 7),
(267, 'Nếu đồ thị y = mx + 2 song song với đồ thị y = -2x + 1 thì:', 'A. Đồ thị hàm số y = mx + 2 cắt trục tung tại điểm có tung độ bằng 1', 'B. Đồ thị hàm số y = mx + 2 cắt trục hoành tại điểm có hoành độ bằng 2', 'C. Hàm số y = mx + 2 đồng biến', 'D. Hàm số y = mx + 2 nghịch biến', 3, 7),
(268, 'Bộ ba nào sau đây không phải là độ dài 3 cạnh của tam giác vuông?', 'A. (6; 8; 10) ', 'B. (7; 24; 25)', 'C.(2–√,3–√,5–√)', 'D.(13,14,15)', 3, 7),
(269, 'Cho đường tròn (O; 25). Khi đó dây lớn nhất của đường tròn (O; 25) có độ dài là:', 'A. 12,5    ', 'B. 25', 'C. 50', 'D. 20', 1, 7),
(270, 'Đường tròn là hình:', 'A. Không có trục đối xứng', 'B. Có một trục đối xứng', 'C. Có hai trục đối xứng', 'D. Có vô số trục đối xứng', 3, 7),
(271, 'Cho tam giác ABC. Biết AB = 21, AC = 28, BC = 35. Tam giác ABC là tam giác gì?', 'A. Δ cân tại A ', 'B. Δ vuông ở A', 'C. Δ thường  ', 'D. Cả 3 đều sai.', 1, 7),
(272, 'Cho (O; 15cm) có dây AB = 24 cm thì khoảng cách từ tâm O đến dây AB là:', 'A. 12 cm  ', 'B. 9 cm  ', 'C. 8 cm ', 'D. 6 cm', 1, 7),
(273, 'Cho O(0; 0) và B(-3; 1). Độ dài đoạn OB là:', 'A. √10  ', 'B. √7 ', 'C. √4', 'D. √8', 0, 7),
(274, 'Tính A = (1/√5-√2)−(1/√5+√2)+1 . Kết quả cho như sau, hãy chọn kết quả đúng: ', 'A.2√2/3', 'B. −1/2', 'C. 4', 'D.   3+2√2/3', 3, 7),
(275, 'Cho đường thẳng (k1 ): y = 4x - 5; (k2 ): y = 3x - 5. Đường thẳng (k2) cắt đường thẳng (k2) thì tọa độ là:', 'A. M(-5; 0) ', 'B. N(0; 5)  ', 'C. P(0; -5) ', 'D. Q(5; 0)', 2, 7),
(276, 'Cho tam giác MNP vuông tại M, đường cao MK. Biết MN = x, MP = y, NK = 2, PK = 6. Chỉ ra một hệ thức sai:', 'A. 82 = x^2 + y^2 ', 'B. x^2 =2.8', 'C. 6.8 = y^2', 'D. x.y = 2.6', 3, 7),
(277, 'Cho tam giác ABC có BH, CE là các đường cao. Gọi M là giao điểm BH và CE. I là trung điểm BC. Khi đó B, C, E, H cùng thuộc đường tròn nào?', 'A. (I; R = IA)', 'B. (I; R = IB)', 'C. (M; R = MB)', 'D. (M; R = MA)', 1, 7),
(278, 'Gọi d là khoảng cách hai tâm của hai đường tròn (O, R) và (O\', r) (với 0 < r < R). Để (O) và (O\') ở ngoài nhau thì', 'A. d < R – r ', 'B. d = R – r', 'C. d = R + r ', 'D. d > R + r', 3, 7),
(279, 'Khi x = 8, giá trị của √(x2+4x+4)/(x^2−16)(x^2−8x+16) là: ', 'A.  10/3', 'B. 1/2', 'C.  1/3', 'D. −1/3. ', 0, 7),
(280, 'Cho đường thẳng: d1: y = 2x + 3; d2: y = -2x - 3 cùng nằm trong mặt phẳng tọa độ Oxy. Đường thẳng d1 cắt đường thẳng d2 tại điểm có tọa độ là:', 'A. (0;3)  ', 'B. (0; -3)  ', 'C. (3/2; 0)   ', 'D.(−3/2; 0)', 3, 7),
(281, 'Cho tam giác ABC vuông tại A, đường cao AH. Biết AB = 7, AC = 9, AH = x, BC = y. Chỉ ra một hệ thức sai:', 'A.1/x^2 = 1/7^2 +1/9^2', 'B. xy = 7.9', 'C.7^2 + 9^2 = y^2', 'D. 72 = x.y', 3, 7),
(282, 'Cho đường tròn (O; 12) có đường kính CD. Dây MN qua trung điểm I của OC sao cho góc NID bằng 30 độ. MN = ?', 'A. 6√15   ', 'B. 6√2  ', 'C. 9', 'D. 6', 0, 7),
(283, 'Cho (O; 6cm) và đường thẳng a. Gọi d là khoảng cách từ tâm O đến a. Điều kiện để a cắt (O) là:', 'A. Khoảng cách d < 6cm', 'B. Khoảng cách d = 6 cm', 'C. Khoảng cách d ≤ 6cm', 'D. Khoảng cách d > 6 cm', 0, 7),
(284, 'Khi a ≥ 0,b ≥ 0 và a ≠ b tính giá trị của √a/(√a−√b)−(√b/√a+√b)−2b/(a−b)', 'A. 1,5', 'B. 2,4', 'C. 1', 'D. 2', 2, 7),
(285, 'Cho đường thẳng 2y - x - 4 = 0 cắt các trục tọa độ lần lượt tại A; B. Khi đó phương trình đường trung tuyến OM của tam giác OAB là:', 'A. y = -2x ', 'B. y = 2x', 'C. y = −1/2.x', 'D. y = 1/2.x', 3, 7),
(286, 'Cho tam giác ABC vuông tại A, đường cao AH. Biết AC = 14, BC = 16, BH = x, CH = y. Chỉ ra một hệ thức sai:', 'A. 14^2 = y.16  ', 'B. 16 = x + y', 'C. xy = 16   ', 'D. A và B đúng', 2, 7),
(287, 'Cho đường tròn (O; R) và 2 dây AB và CD bằng nhau và vuông góc với nhau tại I. Giả sử IA = 2, IB = 4. Khoảng cách từ tâm O tới AB là d và tới CD là d’\r\n\r\nGiá trị của d và d’', 'A. d = 2; d′ = 1', 'B. d = d′ = 1', 'C. d = d′ = 2', 'D. d = 1; d′ = 2', 1, 7),
(288, 'Tính (√(2+√3)+√(√2−3))^2. Kết quả là: ', 'A. -5', 'B. 6', 'C. 12', 'D. 7', 1, 7),
(289, 'Nếu hai đường thẳng y = -3x + 4 (d1) và y = (m + 1)x + m (d2) song song với nhau thì m bằng', 'A. – 2.', 'B. 3.    ', 'C. - 4', 'D. – 3.', 2, 7),
(290, 'Nếu tam giác có góc tù thì tâm đường tròn ngoại tiếp tam giác là điểm nằm ở:', 'A. Ngoài tam giác', 'B. Trong tam giác', 'C. Là trung điểm của cạnh nhỏ nhất', 'D. Là trung điểm của cạnh lớn nhất', 0, 7),
(291, 'Cho tam giác ABC có góc B bằng 45, góc C bằng 30. Nếu AC = 8 thì AB bằng:', 'A. 4    ', 'B. 4√2  ', 'C. 4√3  ', 'D. 4√6', 1, 7),
(292, 'Cho ΔABC đều, đường cao AH. Biết HC = 3, độ dài AC và AH là:', 'A. AC = 3√3; AH = 4 ', 'B. AC = 6√3 ; AH = 6', 'C. AC = 6; AH = 3√3    ', 'D. Cả 3 đều sai', 2, 7),
(293, 'Gọi α,β lần lượt là góc tạo bởi đường thẳng y = -3x + 1 và y = -5x + 2 với trục Ox. Khi đó:', 'A. 90 < α < β     ', 'B. α < β < 90', 'C. β < α < 90', 'D. 90 < β < α', 3, 7),
(294, 'Biết  √(x+2)=2, giá trị (x+2)^2 bằng: ', 'A. √2', 'B. 4', 'C. 8', 'D. 16', 3, 7),
(295, 'Hai đường thẳng y = x + √3 và y = 2x + √3 trên cùng một mặt phẳng tọa độ có vị trí tương đối là:', 'A. Trùng nhau ', 'B. Cắt nhau tại điểm có tung độ √3', 'C. Song song        ', 'D. Cắt nhau tại điểm có hoành độ là √3', 3, 7),
(296, 'Cho đường thẳng: d1: y = √2x - 1 và d2: y = ax + b cùng nằm trong mặt phẳng tọa độ Oxy. Đường thẳng', 'A. a ≠ √2', 'B. a ≠ √2 và b = -1', 'C. a = √2  ', 'D. a ≠ √2 và b ≠ -1', 0, 7),
(297, 'Vì a>0, ta có: ', 'A.  √a+1−√a <1/√2a', 'B. √a+1 - √a = 1/2√a', 'C. √a+1 -√a > 1/2√a', 'D. √a+1 -√a < √a <10/2√a', 0, 7),
(298, 'Cho phương trình ax - 3y + a -6 = 0. Biết phương trình có nghiệm (2;1), vậy nghiệm tổng quát của phương trình là:', 'A. (x ∈ R, y = x−1)', 'B. (x ∈R, y= 3x−3)', 'C. (x ∈R, y= 3x+3)', 'D. (x = y−1, y ∈ R)', 0, 8),
(299, 'Phương trình 3x + 5y = 501 có bao nhiêu cặp nghiệm (x;y) với x,y nguyên dương ', 'A. 33', 'B. 34', 'C. 35', 'D.100', 0, 8),
(300, 'Cho hai điểm A,B cố định.Tập hợp các điểm M trong không gian sao cho diện tích tam giác MAB không đổi là: ', 'A. Mặt cầu ', 'B. Mặt trụ', 'C. Mặt nón', 'D. Mặt phẳng ', 1, 8),
(301, 'Xác định a,b để hệ có nghiệm x = y = 1: \r\nax+5y=11\r\n\r\n2x+by=3', 'A. a = b = 112', 'B. a = 5; b = 18', 'C. a = b = 95', 'D. Tất cả các câu trên đều sai ', 3, 8);
INSERT INTO `question_test` (`id`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `answer`, `course_id`) VALUES
(302, 'Cho đường tròn tâm O và dây AB.Gọi M là trung điểm của dây AB.Cho A cố định.B di động trên (O).Hỏi M di động trên đường nào?', 'A.Đường thẳng AM ', 'B.Đường tròn tâm O bán kính OM ', 'C.Đường tròn đường kính OA ', 'D.A,B,C đều sai ', 2, 8),
(303, 'Một mảnh vườn hình chữ nhật có chu vi là 34m, nếu tăng chiều dài thêm 3m và tăng chiều rộng thêm 2m thì diện tích tăng thêm 45m2. Diện tích mảnh vườn là:', 'A. 35m2', 'B.  60m2', 'C. 75m2', 'D. 80m2', 1, 8),
(304, 'Diện tích một hình chữ nhật không đổi khi tăng chiều dài lên 2,5cm và giảm chiều rộng 23 cm, hoặc giảm chiều dài 2,5cm tăng chiều rộng 34 cm.Diện tích hình chữ nhật là bao nhiêu?', 'A. 30 cm2', 'B. 80/3 cm2', 'C. 24 cm2', 'D. Không có đáp án thỏa mãn', 3, 8),
(305, 'Cho tam giác ABC vuông tại A có Bˆ = 30∘ nội tiếp đường tròn (O), tiếp tuyến của (O) tại C cắt tiếp tuyến tại A ở D.Số đo góc ADCˆ bằng:', 'A.100∘', 'B.120∘', 'C.125∘', 'D.140∘', 1, 8),
(306, 'Hai người cùng làm chung một công việc trong 12 ngày thì xong.Nếu người thứ nhất làm trong 4 giờ,người thứ hai làm trong 6 giờ thì được 40% công việc. Hỏi mỗi người làm một mình thì trong bao lâu sẽ làm xong công việc?\r\n\r\n', 'A.Người thứ nhất làm một mình trong 30 giờ thì xong công việc, người thứ hai làm một mình trong 20 giờ thì xong công việc', 'B.Người thứ nhất làm một mình trong 40 giờ thì xong công việc, người thứ hai làm một mình trong 10 giờ thì xong công việc.', 'C.Người thứ nhất làm một mình trong 15 giờ thì xong công việc, người thứ hai làm một mình trong 45 giờ thì xong công việc.', 'D.Người thứ nhất làm một mình trong 20 giờ thì xong công việc, người thứ hai làm một mình trong 30 giờ thì xong công việc. ', 3, 8),
(307, 'Một hình nón có diện tích xung quanh là 72π , bán kính đáy là 6cm. Độ dài đường sinh là:', 'A. 6cm ', 'B. 8cm   ', 'C. 12cm ', 'D. 13cm', 2, 8),
(308, ' Cho đường tròn (O;R) các đường kính AB và CD vuông góc với nhau.Gọi I là trung điểm của OB. Tia CI cắt đường tròn ở E. EA cắt CD ở K. Độ dài DK là:', 'A. R/3', 'B. 2R/3', 'C. R', 'D. 4R/3', 1, 8),
(309, 'Trong đường tròn (O;R) cho dây AC = R3–√.Các tiếp tuyến của đường tròn (O) tại B và C cắt nhau ở A.Tam giác ABC là:', 'A. Tam giác cân ', 'B. Tam giác vuông ', 'C. Tam giác vuông cân ', 'D. Tam giác đều ', 3, 8),
(310, 'Hệ phương trình\r\n2x−3y=5\r\n4x+my=2\r\nvô nghiệm khi ', 'A. m = - 6 ', 'B. m = 1       ', 'C. m = -1 ', 'D. m = 6', 0, 8),
(311, 'Biết đường thẳng 4x - 2y = m và x + 3y = m-1 cắt nhau tại một điểm trên trục tung. Vậy điểm đó có tung độ bằng: ', 'A. 0', 'B. -0,2', 'C. 2', 'D. Một đáp số khác ', 1, 8),
(312, 'Với giả thiết của câu trên.Gọi H là hình chiếu của C trên AB. Độ dài CH là: ', 'A. 4a/5', 'B. 6a/5', 'C. 8a/5', 'D.Một đáp số khác', 1, 8),
(313, 'Xét bài toán:\"Dựng cung chứa góc 40∘ trên đoạn thẳng AB = 5cm. Hãy sắp xếp một cách hợp lí các câu sau để được lời giải của bài toán trên \r\n\r\na) Dựng đường trung trực d của AB, Cắt Ay tại O \r\n\r\nb) Dựng cung tròn AmB tâm O bán kính OA.Đó là cung chứa góc 40∘ cần dựng \r\n\r\nc) Dựng  BAxˆ =40∘\r\n\r\nd) Dựng tia Ay⊥Ax\r\n\r\ne) Dựng AB=5cm \r\n\r\nSắp xếp nào sau đây hợp lí: ', 'A. a,b,c,d,e', 'B. e,b,c,d,b', 'C. c,e,d,a,b', 'D. e,c,d,a,b', 3, 8),
(314, '2x−y=0\r\nmx+y=2\r\nó nghiệm duy nhất khi:', 'A. m ≠ 2', 'B. m ≠ −2', 'C. m ≠ 1', 'D. m ≠ −1', 1, 8),
(315, 'Một khối cầu có thể tích là 113,04cm3. Vậy diện tích mặt cầu là:', 'A. 200,96cm2', 'B. 226,08cm2', 'C. 150,72cm2', 'D. 113,04cm2', 3, 8),
(316, 'Cho phương trình 2x^2+7x−4=0. Khẳng định nào sau đây sai?', 'A. Δ = 81', 'B. x1 + x2 = −72', 'C.  x1 .x2 = 2', 'D. A và B đúng, C sai ', 2, 8),
(317, 'Biết sinx + cosx = 1/5 và 0 ≥ x < π, thế thì tanx bằng: ', 'A. −4/3', 'B. -3/4', 'C. 3/4', 'D. 4/3', 0, 8),
(318, 'Cho tam giác ABC vuông tại A, đường cao AH nội tiếp đường tròn (O;R) gọi I và K theo thứ tự là điểm đối xứng của H qua hai cạnh AB và AC. Khẳng định nào sau đây đúng? ', 'A. Tứ giác AHBI nội tiếp đường tròn đường kính AB ', 'B. Tứ giác AHCK nội tiếp đường tròn đường kính AC ', 'C. Ba điểm I, A, K thẳng hàng ', 'D. A, B, C đều đúng ', 3, 8),
(319, 'Với giá trị nào của m thì phương trình  x^2−2x+3m−1=0 có nghiệm x1; x2 thỏa mãn x^21+x^22=10 ?', 'A. m = −4/3 ', 'B. m = 4/3', 'C. m = −2/3', 'D. m = 2/3', 2, 8),
(320, 'Phương trình nào sau đây có 2 nghiệm phân biệt', 'A. x^2+x+1=0', 'B.  4x^2−4x+1=0', 'C. 371x^2+5x−1=0', 'D. 4x^2=0', 1, 8),
(321, 'Tìm ba cạnh của một tam giác vuông. Biết chu vi của 36m và tổng phương ba cạnh là 450.Câu nào sau đây đúng? ', 'A. 9cm, 12cm, 15cm', 'B. 7cm,13cm,22cm', 'C.10cm,14cm,18cm', 'D. Một kết quả khác ', 0, 8),
(322, 'Người ta muốn trồng thành hàng ngang và hàng dọc 324 cây đào trong một khu vườn hình chữ nhật ABCD có chiều dài 140cm và chiều rộng 32m. Các hàng cách đều nhau (ngang cũng như dọc). Về hàng ngang: hàng đầu ở cạnh AB và hàng cuối ở trên cạnh CD. Về hàng dọc: hàng đầu ở trên AD và hàng cuối ở trên BC. Khoảng cách giữa hai hàng liên tiếp bằng: ', 'A.3m', 'B.4m', 'C.5m', 'D.6m ', 1, 8),
(323, 'Cho phương trình: 3x^4−10x^3+10x−3=0\r\n(1) Có thể thấy x = 1; x = −1 là nghiệm của phương trình \r\n\r\n(2) Từ nhận xét (1), có thể chia cho (x − 1)(x + 1) để phân tích đa thức thành nhân tử \r\n\r\n(3) Suy ra các nghiệm còn lại của phương trình đã cho là 122 và 135\r\n\r\nTrong các câu trên ', 'A. Chỉ có (1) đúng ', 'B. Chỉ có (2) đúng ', 'C. Không có câu nào đúng ', 'D. Có ít nhất 2 câu đúng ', 3, 8),
(324, 'Cho hai số x, y biết x + y = 12 và xy = 36.Tính x, y ', 'A. x = 4; y = 8', 'B. x = 5, y = 7', 'C. x = y = 6', 'D. x = 10; y = 2', 2, 8),
(325, 'Cho phương trình 5x^2−8x+4=0. Khẳng đinh nào sau đây đúng?', 'A. Δ′ = 4', 'B. x1+ x2 = 85', 'C. x1 .x2  = 45', 'D. A, B, C đều sai', 3, 8),
(326, 'Mỗi vòi A,B,C khi mở chảy nước vào hồ chứa với lưu lượng đều.Nếu mở cả ba vòi, hồ sẽ đầy trong 1 giờ, nếu chỉ mở vòi B và C, hồ sẽ đầy trong 2 giờ.Vậy nếu chỉ mở vòi A và B thì mấy giờ đầy hồ?', 'A.1,1', 'B.1,15', 'C.1,2', 'D.1,25', 0, 8),
(327, 'Tam giác ABC vuông tại A có AB=6cm, AC=8cm. Thể tích hình sinh ra khi quay tam giác ABC quay quanh AB là:', 'A. 24π   ', 'B. 32π  ', 'C. 96π  ', 'D. 128π', 3, 8),
(328, 'Xét phương trình  (m−4)x^2−2mx+m−2=0\r\n(1) Phương trình trên vô nghiệm với mọi m\r\n\r\n(2) Phương trình trên có hai nghiệm phân biệt phân biệt với mọi m \r\n\r\n(3) Với m = 4/3, phương trình trên có nghiệm kép x = −1/2\r\nTrong các câu trên:', 'A.Chỉ có câu (1) đúng ', 'B.Chỉ có câu (2) đúng ', 'C.Chỉ có câu (3) đúng ', 'D.Không có câu nào sai ', 2, 8),
(329, 'Tìm m, n để hệ có nghiệm (-3; 2) \r\nmx−5y=6n−11\r\n4x+ny=7−5m', 'A. m = 2; n = 3', 'B.  m = 3; n = 2', 'C. m = 4; n = 1', 'D. m = 1; n = 4', 1, 8),
(330, 'Hình trụ có chiều cao h = 8(cm) và bán kính đáy là 3cm thì diện tích xung quanh là:', 'A. 16π   ', 'B. 24π ', 'C. 32π ', 'D. 48π', 3, 8),
(331, 'Giải phương trình x^2−(a+b)x+ab=0 với a,b là hai số nguyên phân biệt cho trước.', 'A. Một nghiệm là số vô tỉ,nghiệm kia là số nguyên ', 'B. Cả hai nghiệm đều là số nguyên ', 'C. Một nghiệm bằng a + b, nghiệm kia là số nguyên ', 'D. Một nghiệm là số hữu tỉ, nghiệm kia là số vô tỉ ', 1, 8),
(332, 'Tập nghiệm của phương trình x^2−8x+16=0 là:', 'A. S = {4}', 'B. S = {-4;4}', 'C. S = {-2;4}', 'D. Vô nghiệm ', 0, 8),
(333, 'Hình nón có bán kính đáy 10cm, chiều cao 9cm thế tích của hình nón là:', 'A. 912  ', 'B. 942   ', 'C. 932 ', 'D. 952', 1, 8),
(334, 'Cặp số nào sau đây là nghiệm của hệ phương trình: 4x+5y=3\r\nx−3y=5', 'A. (2; 1)  ', 'B. (-2; -1) ', 'C. (2; -1)    ', 'D. (3; 1)', 2, 8),
(335, 'Bán kính mặt cầu đi qua 4 đỉnh của hình chóp tam giác đều cạnh bằng a là:', 'A. a√3/2', 'B. a√6/4', 'C. a√2/3', 'D. a√2/2', 1, 8),
(336, 'Hai công nhân làm một số dụng cụ bằng nhau trong cùng một thời gian như nhau.Người thứ nhất mỗi giờ làm tăng 2 dụng cụ nên hoàn thành công việc trước thời hạn 2 giờ.Người thứ hai, mỗi giờ làm tăng 4 dụng cụ nên hoàn thành công việc trước 3 giờ và làm thêm được 6 chiếc. Tính số dụng cụ mỗi công nhân phải làm theo dự kiến ban đầu ', 'A.100', 'B.110', 'C.120', 'D.130', 2, 8),
(337, 'Cho phương trình x^2−2kx−5=0 có hai nghiệm là x1 và x2. Hãy lập phương trình có hai nghiệm là hai số 1/x1 và 1/x2', 'A. 5x^2+2kx−1=0', 'B. 5x^2+2kx−5=0', 'C. −x^2+2x+5k=0', 'D. A, B, C đều sai', 0, 8),
(338, 'Trong các phát biểu sau, có bao nhiêu phát biểu là mệnh đề đúng?\r\n\r\na) Số 2 là số nguyên tố.\r\n\r\nb) Số 32018−1 chia hết cho 2.\r\n\r\nc) Đường chéo của hình bình hành là đường phân giác của góc ở đỉnh nằm trên đường chéo của hình bình hành đó.\r\n\r\nd) Mọi hình chữ nhật luôn có chiều dài lớn hơn chiều rộng.\r\n\r\ne) Một số chia hết cho 28 thì chia hết cho 8.', 'A. 3', 'B. 1', 'C. 2', 'D. 4', 0, 9),
(339, 'Gọi m0 là giá trị của tham số m để phương trình (m+2)x - (x +1) = 0 vô nghiệm. Khẳng định nào sau đây là đúng?', 'A. m0 ϵϕ', 'B. m0 ϵ ( -2;0)', 'C. m0 ϵ [0;1]', 'D. m0 ϵ (-1;1)', 2, 9),
(340, 'Cho hàm số x^2−4x−1. Chọn khẳng định đúng trong các khẳng định sau:', 'A. Hàm số nghịch biến trên khoảng (−∞,3)', 'B. Hàm số đồng biến trên khoảng (3,+∞)', 'C. Hàm số có giá trị nhỏ nhất là -3', 'D. Đồ thị hàm số đi qua điểm A (0,1)', 1, 9),
(341, 'Tính tổng bình phương các nghiệm của phương trình x^2−2x−13=0', 'A. -22', 'B. 4', 'C. 30', 'D. 28', 2, 9),
(342, 'Hệ phương trình \r\nx^3−2019y=x\r\ny^3−2019x=y \r\ncó số nghiệm là:', 'A. 4 .', 'B. 6 .', 'C. 1.', 'D. 3 .', 3, 9),
(343, 'Số nghiệm của phương trình ∣x^2−1∣=x−2 là:', 'A. 0', 'B. 2', 'C. 3', 'D. 1.', 0, 9),
(344, 'Có bao nhiêu giá trị nguyên của m để đường thẳng y = mx - 3 không có điểm chung với Parabol y=x^2+1', 'A. 6 ', 'B. 9 ', 'C. 7', 'D. 8 ', 2, 9),
(345, 'Chọn khẳng định sai trong các khẳng định sau:', 'A. Hàm số √(x^2+2x+2) xác định trên R.', 'B. Hàm số y = x3 là hàm số lẻ.', 'C. Hàm số (x−1)2 là hàm số chẵn.', 'D. Hàm số x2+1 là hàm số chẵn.', 2, 9),
(346, 'Phương trình |3−x|=|2x−5| có hai nghiệm x1, x2. Tính x1x2', 'A.  −14/3', 'B.  −28/3', 'C. 7/3', 'D. 14/3', 3, 9),
(347, 'Số giá trị nguyên của m để phương trình ∣x2−4∣=m+1 có bốn nghiệm phân biệt là:', 'A. 4 ', 'B. 2 ', 'C. 3 ', 'D. 5', 2, 9),
(348, 'Trong mặt phẳng với hệ trục tọa độ Oxy, tính diện tích hình chữ nhật cơ sở của elip 9x^2+25y^2=225', 'A. 15   ', 'B. 30 ', 'C. 40  ', 'D. 60', 0, 9),
(349, 'Tìm điều kiện tham số m sao cho x^2−2mx+2m−1≥0,∀x∈R', 'A. mọi giá trị m', 'B. m = 1', 'C. m ≥ 1', 'D. m < 1', 1, 9),
(350, 'Lập phương trình tham số của đường thẳng đi qua điểm (4;1) và có một vector pháp tuyến là (1;4)', 'A. x=5−4t\r\ny=t', 'B. x=4+t\r\ny=1+4t', 'C. x=4−4t\r\ny=1−t', 'D. x=5−8t\r\ny=1+2t', 3, 9),
(351, 'Tìm điều kiện tham số m để hệ bất phương trình {\r\nx^2−m2≤0\r\nx^2−5x+6≤0 \r\ncó nghiệm thực', 'A. |m| ≥ 2', 'B. m ≥ 2', 'C. |m| ≥ 3', 'D. 2≤m≤3', 0, 9),
(352, 'Trong mặt phẳng tọa độ Oxy cho tam giác ABC có hai đường phân giác trong của góc B và góc C có phương trình lần lượt là x + y - 2 = 0; x - 3y - 6 = 0. Lập phương trình tham số của đường thẳng BC', 'A. x=5−4t\r\ny=t', 'B. x=4−2t\r\ny=1+t', 'C. x=−2+9t\r\ny=−7t', 'D. x=−2+t\r\ny=−5t', 2, 9),
(353, 'Tính tổng các giá trị tham số m xảy ra khi bất phương trình (m^2 - 4m)x > 2 vô nghiệm', 'A. 3', 'B. 5', 'C. 4', 'D. 2', 2, 9),
(354, 'Tìm điều kiện của tham số m để x^2−5x+4≤m,∀x∈[0;3]', 'A. m≥4', 'B. −9/4≤m≤−2', 'C. −9/4≤m≤4', 'D. −2≤m≤4', 0, 9),
(355, 'Trong mặt phẳng với hệ tọa độ Oxy cho tam giác ABC có A (4;1), phương trình hai đường trung tuyến BM và CN tương ứng là 8x – y – 3 = 0 ; 14x – 13y – 9 = 0. Tọa độ đỉnh B là ', 'A. (1; 5) ', 'B. (2; 13)   ', 'C. (0;– 3) ', 'D. (4; 29) ', 0, 9),
(356, 'Tìm độ dài trục lớn của elip x^2/25+y^2/9=1', 'A. 6', 'B. 4', 'C. 10', 'D. 8', 2, 9),
(357, 'Tính khoảng cách giữa hai đường thẳng 2x - 5y + 1 = 0 và 2x - 5y + 7 = 0', 'A. 2', 'B. 3/29', 'C. 5/29', 'D. 6/29', 3, 9),
(358, 'Hai vecto được gọi là bằng nhau khi và chỉ khi:', 'A. Giá của chúng trùng nhau và độ dài của chúng bằng nhau', 'B. Chúng trùng với một trong các cặp cạnh đối của một hình bình hành', 'C. Chúng trùng với một trong các cặp cạnh đối của một tam giác đều', 'D. Chúng cùng hướng và độ dài bằng nhau', 3, 10),
(359, 'Cho lục giác đều ABCDEF có tâm O. Số các veto bằng OC→ có điểm đầu và điểm cuối là các đỉnh của lục giác là?', 'A. 2', 'B. 3', 'C. 4', 'D. 6', 0, 10),
(360, 'Cho AB→≠0⃗ . Có bao nhiêu điểm D thỏa mãn |AB→|= |CD→|?', 'A. 0', 'B. 1', 'C. 2', 'D. vô số', 3, 10),
(361, 'Cho đường tròn O và hai tiếp tuyến song song với nhau tiếp xúc với đường tròn tại hai điểm A,B. Mệnh đề nào sau đây là đúng?', 'A. OA→=−OB→', 'B. AB→=−OB→', 'C. OA=−OB', 'D. AB=−BA', 0, 10),
(362, 'Cho tam giác ABC,M,N,P lần lượt là trung điểm của các cạnh BC,CA,AB. Khẳng định nào sau đây là sai?', 'A. AM→=12(AB→+AC→)', 'B. AM→+BN→+CP→=0', 'C. AN→+BP→+CM→=0', 'D. AM→+BN→=CP→', 3, 10),
(363, 'Cho tam giác ABC. Tập hợp các điêm M thỏa mãn |AM→+BM→|= 2|CM→| là? ', 'A. một đường thẳng', 'B. một đường tròn', 'C. một tia', 'D. một điểm', 0, 10),
(364, 'Cho tam giác ABC, M là trung điểm của AB,N là trung điểm của CM. Khẳng định nào sau đây là đúng?', 'A. AN→=1/2AB→+2/3AC→', 'B. AN→=3/4AB→+1/4AC→', 'C. AN→=1/4AB→+3/4AC→', 'D. AN→=1/3AB→+2/3AC→', 2, 10),
(365, 'Cho hình bình hành nội tiếp đường tròn (C). Khẳng định nào sau đây là sai?', 'A. ∣AB→∣=∣CD→∣', 'B. ∣AD→∣=∣BC→∣', 'C. ∣AC→∣=∣BD→∣', 'D. ∣AD→∣=∣CD→∣', 3, 10),
(366, 'Gọi G là trọng tâm tam giác vuông ABC với cạnh huyền BC=12. Tính độ dài của vecto v⃗ =GB→+GC→', 'A. |v⃗ |= 2', 'B. |v⃗ |= 23–√', 'C. |v⃗ |= 8', 'D. |v⃗ |= = 4', 3, 10),
(367, 'Cho tam giác ABC và điểm M thỏa mãn MA→+MC→=AB→. Tìm vị trí điểm M ', 'A. M là trung điểm của  AC', 'B. M là trung điểm của AB', 'C. M là trung điểm của BC', 'D. M là điểm thức 4 của hình bình hành ABCM', 0, 10),
(368, 'Cho tam giác ABC và đặt a⃗ =BC→,b⃗ =AC→. Cặp vecto nào sau đây cùng phương?', 'A. 2a⃗ +b⃗ ,a⃗ +2b⃗ ', 'B. 2a⃗ −b⃗ ,a⃗ −2b⃗ ', 'C. 5a⃗ +b⃗ ,−10a⃗ −2b⃗ ', 'D. a⃗ +b⃗ ,a⃗ −b⃗ ', 2, 10),
(369, 'Cho tam giác đều ABC cạnh a và các điểm M,N thỏa mãn MA→+2MB→=0⃗ ,2NA→+NC→=0⃗ . Khi đó tích vô hướng BN→.CM→ bằng: \r\n\r\n', 'A.  718a^2', 'B. 518a^2', 'C.  −718a^2', 'D.  −518a^2', 2, 10),
(370, 'Cho tam giác ABC vuông cân có cạnh huyền bằng a. Khi đó giá trị của biểu thức tích vô hướng AB→.BC→+BC→.CA→+CA→.AB→ là: ', 'A. 0', 'B. −a^2', 'C. −2a^2', 'D. 2a^2', 1, 10),
(371, 'Cho các điểm A(2;1),B(3;−2),C(1;4),D(5;3) và điểm M thỏa mãn \r\n\r\n            MA→+2MB→−MC→−MD→=0⃗ \r\nKhi đó tọa độ của điểm M là?', 'A. M(−2;10)', 'B. M(10;−2)', 'C. M(2;−10)', 'D. M(2;10)', 2, 10),
(372, 'Cho các vecto a⃗ ,b⃗ .  Khẳng định nào sau đây là sai?\r\n\r\n', 'A. (a⃗ +b⃗ )2=a⃗ 2+b⃗ 2+2a⃗ .b⃗ ', 'B. (a⃗ −b⃗ )2=a⃗ 2+b⃗ 2−2a⃗ .b⃗ ', 'C. a⃗ 2−b⃗ 2=(a⃗ +b⃗ )(a⃗ −b⃗ )', 'D. (a⃗ +b⃗ )3=a⃗ 3+b⃗ 3+3a⃗ 2.b⃗ +3a⃗ .b⃗ 2', 3, 10),
(373, 'Cho các điểm A(−2;1),B(3;4),C(1;0). Khi đó cosABCˆ bằng?', 'A. −11/√170', 'B. 11/√170', 'C. -7/√170', 'D. 7/√170', 1, 10),
(374, 'Viết phương trình tổng quát của đường thẳng d đi qua điểm M(−1;2) và song song với trục Ox.', 'A. y+2=0', 'B.  x+1=0', 'C. $x- 1= 04', 'D. y−2=0', 3, 10),
(375, 'Cho bốn điểm A(4;−3),B(5;1),C(2;30,D(−2;2).. Xác định vị trí tương đối của hai đường thẳng AB và CD?', 'A. Song song', 'B. Trùng nhau', 'C. Vuông góc', 'D. Cắt nhau nhưng không vuông góc', 3, 10),
(376, 'Trong mặt phẳng tọa độ Oxy, cho hai đường thẳng có phương trình\r\n\r\n        d1:mx+(m−1)y+2m=0 và \r\n\r\n        d2:2x+y−1=0\r\nNếu d1 // d2 thì: ', 'A. m=2', 'B. m=−1', 'C. m=−2', 'D. m=1', 0, 10),
(377, 'Cặp đường thẳng nào sau đây là phân giác của các góc hợp bởi hai đường thẳng \r\n\r\n                            Δ1:x+2y−3=0\r\n                            Δ2:2x−y+3=0', 'A. 3x+y=0 và x−3y=0', 'B. 3x+y=0 và x+3y−6=0', 'C. 3x+y=0 và −x+3y−6=0', 'D. 3x+y+6=0 và x−3y−6=0', 2, 10),
(379, 'Tập xác định của hàm số y=cosx là:', 'A. [−1;1]   ', 'B. R∖{kπ},k∈R', 'C.  R', 'D. R∖{π2+kπ},k∈Z', 2, 11),
(380, 'Hàm số nào sau đây là hàm số lẻ?', 'A. y=tanx.cos2x ', 'B. y=cotx–3', 'C. y=sinx     ', 'D. y=cosx', 0, 11),
(381, 'Trong các hàm số sau hàm số nào là đồng biến trên khoảng (−π;0)?', 'A. y=tanx       ', 'B. y=cotx', 'C. y=sinx', 'D. y=cosx', 3, 11),
(382, ' Giá trị lớn nhất của hàm số f(x)=2sin(x+π3)−4 là:', 'A. -1  ', 'B. -2    ', 'C. -3  ', 'D. -6', 1, 11),
(383, 'Nghiệm của phương trình tanx−tan15∘=0 là:', 'A. x=15∘+k360∘vàx=165∘+k360∘', 'B.  x=15∘+k180∘vàx=165∘+k', 'C. x=15∘+k360∘vàx=−15∘+k360∘', 'D. x=15∘+k180∘', 3, 11),
(384, 'Phương trình 2sin2x+3sinxcosx+cos2x=0 có bao nhiêu nghiệm thuộc (−π/2;π)', 'A. 0    ', 'B. 1 ', 'C. 2   ', 'D. 4', 3, 11),
(385, 'Nếu dùng các chữ số 1,2,3,4 để viết các số tự nhiên có 1 chữ số hoặc 2 chữ số phân biệt thì có thể viết được bao nhiêu số như thế?', 'A. 4A24  ', 'B. 4+A24', 'C. 4.4+3    ', 'D. 4+4+3', 1, 11),
(386, 'Từ năm chữ số 0,1,2,3,5 có thể lập được bao nhiêu số, mỗi số gồm 4 chữ số khác nhau và không chia hết cho 5?', 'A. 120 ', 'B. 96', 'C. 54', 'D. 72', 2, 11),
(387, 'Có bao nhiêu số chẵn gồm bốn chữ số khác nhau đôi một, trong đó chữ số đầu tiên là chữ số lẻ?', 'A. 1400    ', 'B. 4536 ', 'C. 5040', 'D. 2520', 0, 11),
(388, 'Một khay tròn đựng bánh mứt kẹo ngày tết ó 5 ô hình quạt khác nhau. Số cách bày bánh mứt kẹo vào 5 ô đó là:', 'A.5!', 'B.4!', 'C.5', 'D.4', 0, 11),
(389, 'Nghiệm của phương trình A3x=20x là:', 'A.x=6', 'B.x=6 và x=3', 'C.x=-3', 'D.x=4', 0, 11),
(390, 'Một hộp đựng 3 viên bi trắng và 7 viên bi đỏ. Lấy ngẫu nghiên 4 viên bi từ hộp đó. Số cách lấy 4 viên bi trong đó nhiều nhất 2 viê bi trắng là:', 'A.210', 'B.63', 'C.203', 'D.70', 2, 11),
(391, 'Một hộp đựng chứa 9 tấm thẻ được đếm số từ 1 đến 9. Lấy ngẫu nhiên 1 thẻ từ hộp. Khi đó xác suất để lấy được thẻ ghi số chẵn là:', 'A.1/9', 'B. 1/3', 'C. 4/9', 'D. 5/9', 2, 11),
(392, 'Lấy ngẫu nhiên 1 thẻ từ một hộp 30 thẻ được đánh số từ 1 đến 30. Xác suẩ để thẻ được lấy ghi số chia hết cho 5 là:', 'A. 1/30', 'B. 1/5', 'C. 6', 'D. 1/6', 1, 11),
(393, 'Dãy số nào sau đây là một cấp số nhân?', 'A.1;-2;4;8;-16;32.', 'B.1;-2;4;-8;16;-32.', 'C.1;2;3;4;8;16.', 'D.1;4;7;10;13;16.', 1, 11),
(394, 'Cấp số cộng (un) có u1=13 và công sai d=−3. Số hạng u31 của dãy số đó là:', 'A.87', 'B.-77', 'C.77', 'D.-87', 1, 11),
(395, 'Cho cấp số nhân (u_{n}) có u3=24;u4=48. Tổng 6 số hạng đầu bằng:', 'A.-126', 'B.837', 'C.-378', 'D.378', 0, 11),
(396, 'Đạo hàm cấp hai của hàm số y=cos2x bằng biểu thức nào sau đây?', 'A.−2sin2x', 'B.−4cos2x', 'C.−4sin2x', 'D.4cos2x', 1, 11),
(397, 'Một vật chuyển động thẳng xác định bởi phương trình S=t3−3t2+5t+1, trong đó t tính bằng giây và S tính bằng mét. Vận tốc chuyển động của vật đó khi t=3 là: ', 'A.24(m/s)', 'B.17(m/s)', 'C.14(m/s)', 'D.12(m/s)', 2, 11),
(398, 'Đạo hàm của hàm số y=x^5+2/x−1 bằng:', 'A.5x^4+2x^2', 'B.5x^4−2x^2', 'C.5x^4−2x^2−1', 'D. 5x−2x^2', 1, 11),
(399, 'Câu nào sau đây đúng?', 'A. Qua hai đường thẳng bất kì xác định một mặt phẳng duy nhất', 'B. Qua một đường thẳng và một điểm xác định một mặt phẳng duy nhất.', 'C. Qua hai đường thẳng cắt nhai xác định một mặt phẳng duy nhất.', 'D. Qua hai đường thẳng không có điểm chung xác định một mặt phẳng', 2, 12),
(400, 'Câu nào sau đây đúng?', 'A. Nếu ba điểm cùng thuộc hai mặt phẳng thì chúng thẳng hàng', 'B. Nếu hai mặt phẳng có một điểm chung thì chúng cắt nhau theo giao tuyến đi qua điểm chung ấy.', 'C. Nếu hai đường thẳng không có điểm chung thì chúng không cùng nằm trông một mặt phẳng', 'D. Nếu hai đường thẳng phân biệt có một điểm chung thì chúng cùng nằm trong một mặt phẳng.', 3, 12),
(401, 'Nếu ba đường thẳng không cùng nằm trong một mặt phẳng và đôi một cắt nhau thì:', 'A. Ba đường thẳng đó đồng quy', 'B. Ba đường thẳng đó tạo thành một tam giác', 'C. Ba đường thẳng đó trùng nhau', 'D. Không có ba đường thẳng như vây.', 0, 12),
(402, 'Câu nào sau đây là đúng?\r\n\r\n', 'A. Hình tứ diện là một hình chóp có đáy là tứ giác', 'B. Hình tứ diện là một hình chóp có đáy là tam giác', 'C. Thiết diện của hình tứ diện là một tứ giác', 'D. Thiết diện cảu hình tứ diện là một tam giác', 1, 12),
(403, 'Câu nào sau đây là đúng?', 'A. Hai đường thẳng không có điểm chung thì song song với nhau', 'B. Hai mặt phẳng đi qua hai đường thẳng song song thì song song với nhau', 'C. Hai đường thẳng nằm trên hai mặt phẳng song song thì song song với nhau', 'D. Cả ba mệnh đề trên đều sai', 3, 12),
(404, 'Câu nào sau đây là đúng?', 'A. a // b và b ⊂ (P) thì a // (P)', 'B. a // b , b ⊂ (P); a ⊂ (Q), (Q) ∩ (P) = c thì c // a', 'C. (Q) ∩ (P) = a, (P) ∩(P) = b và a // b thì (P) // (Q)', 'D. a ⊂(P), b ⊂(Q) và a chéo b thì (P) // (Q)', 1, 12),
(405, 'Cho hình chóp S.ABCD, các cặp đường thẳng nào sau đây chéo nhau?', 'A. AB và CD ', 'B. AD và BC', 'C. SA và BD  ', 'D. AC và BD', 2, 12),
(406, 'Tìm mệnh đề đúng trong các mệnh đề sau:', 'A. Hai đường thẳng phân biệt cùng vuông góc với đường thẳng thứ ba thì song song với nhau.', 'B. Hai đường thẳng cùng vuông góc với một mặt phẳng thì song song với nhau', 'C. Hai đường thẳng và một mặt phẳng cùng vuông góc với một mặt phẳng khác thì song song với nhau.', 'D. Hai mặt phẳng phân biệt cùng vuông góc với một đường thẳng thì chúng song song với nhau.', 3, 12),
(407, 'Tìm mệnh đề đúng trong các mệnh đề sau?', 'A. Đường thẳng a vuông góc với đường thẳng b nằm trong mặt phẳng (P) không chứa a thì a vuông góc với (P)', 'B. Mặt phẳng (P) vuông góc với đường thẳng a nằm trong mặt phẳng (Q) thì (P) vuông góc với (Q)', 'C. Đường thẳng a vuông góc với hai đường thẳng b,c nằm trong mặt phẳng (P) thì a vuông góc với (P)', 'D. Đường thẳng a song song với đường thẳng b nằm trong mặt phẳng (P) thì a song song với mặt phẳng (P)', 1, 12),
(408, 'Giả thiết chung cho câu 10, 11, 12. Cho tứ diện ABCD. Gọi M, N lần lượt là trung điểm của AC và BC, P là điểm thuộc DB sao cho PB = 2PD. Gọi Q là giao điểm của CD với mặt phẳng (MNP). Tìm mệnh đề đúng?Giao tuyến của hai mặt phẳng (MNP) và (ACD) là:', 'A. MP   ', 'B. NQ  ', 'C. MQ ', 'D. AP', 2, 12),
(409, 'Đường thẳng MP không chéo với đường thẳng nào sau đây?', 'A. AB    ', 'B. CD   ', 'C. NP ', 'D. BC', 2, 12),
(410, 'Tỉ số QDQC bằng:', 'A. 1/2', 'B. 3/4', 'C. 2/3', 'D. √3/2', 0, 12),
(411, 'Cho tứ diện ABCD. Gọi E, F, G lần lượt là ba điểm trên các cạnh AB, AC, BD sao cho EF cắt BC tại M, EG cắt AD tại N. tìm mệnh đề sai trong các mệnh đề sau đây?', 'A. (EFG) ∩ (ACD) = FN', 'B. (EFG)∩ (BCD) = MG', 'C. Đường thẳng CD, MG, FN đồng quy', 'D. Bốn điểm M, G, F, G không cùng nằm trên một mặt phẳng.', 3, 12),
(412, 'Giả thiết chung cho các câu 14, 15, 16: cho hình chóp S.ABCD có đáy là hình bình hành. Gọi E, F lần lượt là trung điểm của AB và SC; I, J lần lượt là giao điểm của AF và EF với mặt phẳng (SBD).\n\nTỉ số IAIF bằng:', 'A. 1 ', 'B. 2  ', 'C. 3 ', 'D. 4', 1, 12),
(413, 'Tỉ số EJIF bằng', 'A. 2 ', 'B. 1     ', 'C. 2/3     ', 'D. 3/4', 1, 12),
(414, 'Tỉ số IJ/JB bằng:', 'A. 2/3', 'B. 1/3', 'C. 1/4', 'D. 1/2', 2, 12),
(415, 'Cho hình chóp S.ABCD, đáy hình thang ABCD có đáy lớn AD. Trong các mệnh đề sau mệnh đề nào sai?', 'A. Hai mặt phẳng (SAC) và (SBD) cắt nhau', 'B. Hai mặt phẳng (SAB) và (SCD) cắt nhau', 'C. Hai mặt phẳng (SAD) và (SBC) không cắt nhau', 'D. Bốn điểm S, A, C, D cùng nằm trong một mặt phẳng', 3, 12),
(416, 'Cho hình tứ diện ABCD. Gọi M, N, P lần lượt là trung điểm của AB, BC, CD. Thiết diện của tứ diện đi qua ba điểm M, N, P là:\r\n', 'A. Hình thang   ', 'B. Hình bình hành', 'C. Hình thoi   ', 'D. Hình chữ nhật', 1, 12),
(417, 'Giả thiết chung cho các dâu 26, 27, 28, 29: Cho hình chóp tứ giác đều S.ABCD cạnh đáy bằng cạnh bên bằng a.\r\nGóc giữa cạnh bên và cạnh đáy bằng:', 'A. 60  ', 'B. 30   ', 'C. 45', 'D. Không phải các kết quả A, B, C', 2, 12),
(418, 'Số nào sau đây gần nhất với số đo của góc giữa mặt bên và đáy chình chóp.', 'A. 54 73\' ', 'B. 35 15\'     ', 'C. 54 44\'', 'D. Không phải các kết quả A, B, C', 2, 12),
(419, 'Hàm số nào sau đây đồng biến trên từng khoảng xác định của nó', 'A. y = (2x + 1)/(x - 2)', 'B. y = (x - 1)/(2 - x)', 'C. y = √(2 - x) - x', 'D. y = (-1/3)x^3 + 2x^2 - 3x + 2', 1, 13),
(420, 'Cho hàm số f(x) có đạo hàm f\'(x) = x^2(x + 2). Mệnh đề nào sau đây đúng?', 'A. Hàm số đã cho đồng biến trên khoảng (-2; +∞)', 'B. Hàm số đã cho nghịch biến trên các khoảng (-∞; -2) và (0; +∞)', 'C. Hàm số đã cho đồng biến trên các khoảng (-∞; -2) và (0; +∞)', 'D. Hàm số đã cho nghịch biến trên khoảng (-2; 0)', 0, 13),
(421, 'Cho hàm số y = x - 4/x. Khẳng định nào sau đây là đúng?', 'A. Hàm số đồng biến trên R', 'B. Hàm số nghịch biến trên R', 'C. Hàm số đồng biến trên các khoảng (-∞; 0) và (0; +∞)', 'D. Hàm số nghịch biến trên các khoảng (-∞; 0) và (0; +∞)', 2, 13),
(422, 'Cho hàm số y = sin2⁡x + cos⁡x,x ∈ [0; π]. Hàm số đồng biến trên các khoảng?', 'A. (0; π/3)   ', 'B. (π/3; π)', 'C. (0; π)  ', 'D. (π/6; π)', 1, 13),
(423, 'Cho hàm số y = f(x) = x + sin⁡x, x ∈ [0; π]. Khẳng định nào sau đây là khẳng định đúng?', 'A. Hàm số f(x) đồng biến trên (0; π)', 'B. Hàm số f(x) nghịch biến trên (0; π)', 'C. Hàm số f(x) không đổi trên (0; π)', 'D. Hàm số f(x) nghịch biến trên (0; π/2)', 0, 13),
(424, 'Dân số Việt Nam năm 2015 là 91,71 triệu người. Giả sử trong 5 năm tỉ lệ tăng dân số là không đổi. Hỏi tỉ lệ này có thể nhận giá trị tối đa là bao nhiêu để dân số Việt Nam năm 2020 không vượt quá 96,5 triệu người (làm tròn kết quả đến phần chục nghìn) ?', 'A. 1,08%    ', 'B. 0,91%  ', 'C. 1,06% ', 'D. 1,02%', 3, 13),
(425, 'Giải bất phương trình 2.4^(x + 1) < 16^(2x)', 'A. x > 1  ', 'B. x < 1   ', 'C. x > 1/2  ', 'D. x < 1/2', 2, 13),
(426, 'Giải bất phương trình 2^x.3^x ≤ 36', 'A. x ≤ 2    ', 'B. x ≤ 3   ', 'C. x ≤ 6 ', 'D. x ≤ 4', 0, 13),
(427, 'Giải phương trình log5(x + 4) = 3', 'A. x = 11  ', 'B. x = 121   ', 'C. x = 239    ', 'D. x = 129', 1, 13),
(428, 'Giải phương trình lnx + ln(x - 1) = ln2', 'A. x = 3/2  ', 'B. x = -1, x = 2  ', 'C. x = 2   ', 'D. x = 1, x = 3/2', 2, 13),
(429, 'Trong các mệnh đề sau mệnh đề nào nhận giá trị đúng?', 'A. Hàm số y = 1/x có nguyên hàm trên (-∞; +∞).', 'B. 3x2 là một số nguyên hàm của x3 trên (-∞; +∞).', 'C. Hàm số y = |x| có nguyên hàm trên (-∞;+∞).', 'D. 1/x + C là họ nguyên hàm của ln⁡x trên (0;+∞).', 2, 13),
(430, 'Hàm số nào dưới đây không phải là một nguyên hàm của f(x)=2x-sin⁡2x ?', 'A. x^2 + (1/2).cos⁡2x ', 'B. x^2 + cos2 x    ', 'C. x^2 - sin2x    ', 'D. x^2 + cos⁡2x .', 3, 13),
(431, 'Tìm I = ∫cos(4x + 3)dx .', 'A. I = sin(4x + 2) + C ', 'B. I = - sin(4x + 3) + C', 'C. I = (1/4).sin(4x + 3) + C ', 'D. I = 4sin(4x + 3) + C', 2, 13),
(432, 'Sau chiến tranh thế giới thứ hai, tốc độ sinh ở cả nước phương Tây tăng rất nhanh. Giả sử rằng tốc độ sinh được cho bởi: b(t) = 5 + 2t, 0 ≤ t ≤ 10 , ( ở đó t số năm tính từ khi chiến tranh kết thúc, b(t) tính theo đơn vị triệu người).\r\n\r\na) Có bao nhiêu trẻ được sinh trong khoảng thời gian này ( tức là trong 10 năm đầu tiên sau chiến tranh)?', 'A. 100 triệu   ', 'B. 120 triệu   ', 'C. 150 triệu    ', 'D. 250 triệu.', 2, 13),
(433, 'b) Tìm khoảng thời gian T sao cho số lượng trẻ được sinh ra là 14 triệu kể từ khi kết thức chiến tranh.', 'A. 1 năm  ', 'B. 2 năm ', 'C. 3 năm  ', 'D. 4 năm.', 1, 13),
(434, 'Trong C, phương trình z4 - 1 = 0 có nghiệm là:', 'A. ±1;±2i     ', 'B. ±2;±2i    ', 'C. ±3; ±4i ', 'D. ±1;±i', 3, 13),
(435, 'Cho số phức z = 5 - 4i. Môđun của số phức z là', 'A.3  ', 'B.√41.   ', 'C. 1. ', 'D. 9.', 1, 13),
(436, 'Cho số phức z = 5 - 6i. Số phức liên hợp của z là', 'A. z = 5 + 6i ', 'B. z = -5 + 6i ', 'C. z = -5 - 6i    ', 'D. z = 6 - 5i', 0, 13),
(437, 'Cho hai số phức z1 = 1 + 2i; z2 = 2 - 3i . Phần ảo của số phức w = 3z1 - 2z2 là', 'A. 12.    ', 'B. 11.  ', 'C. 1.  ', 'D. 12i', 0, 13),
(438, 'Cho số phức z = 3 + 4i. Khẳng định nào sau đây là khẳng định sai?', 'A. Điểm biểu diễn của z là M(3;4).', 'B. Môđun của số phức z là 5.', 'C. Số phức đối của z là -3 - 4i.', 'D. Số phức liên hợp của z là 3 - 4i.', 0, 13),
(439, 'Trong các mệnh đề sau, mệnh đề nào đúng?', 'A. Số cạnh của một hình đa diện luôn chẵn', 'B. Số đỉnh của một hình đa diện luôn chẵn', 'C. Số mặt của một hình đa diện luôn chẵn', 'D. Số đỉnh của một hình lăng trụ luôn chẵn', 3, 14),
(440, 'Trong các mệnh đề sau, mệnh đề nào đúng?', 'A. Một hình đa diện có các mặt là những tam giác thì số mặt của nó là số chẵn', 'B. Một hình đa diện có các mặt là những tam giác thì số mặt của nó là số lẻ', 'C. Tồn tại một hình đa diện có các mặt là những tam giác sao cho số mặt của nó là số lẻ', 'D. Tồn tại một hình đa diện có các mặt là những tam giác sao cho số mặt của nó bằng số cạnh', 0, 14),
(441, 'Trong các mệnh đề sau, mệnh đề nào đúng?', 'A. Số cạnh của một hình lăng trụ luôn chẵn', 'B. Số đỉnh của một hình chop luôn chẵn', 'C. Số mặt của một hình lăng trụ luôn chẵn', 'D. Số cạnh của một hình chop luôn chẵn', 3, 14),
(442, 'Hai hình đa diện bằng nhau khi và chỉ khi:', 'A. Có phép tịnh tiến biến hình này thành hình kia', 'B. Có phép dời hình biến hình này thành hình kia', 'C. Có các cạnh tương ứng bằng nhau', 'D. Có các mặt tương ứng là các đa giác bằng nhau', 1, 14),
(443, 'Trong các mệnh đề sau, mệnh đề nào đúng?Khối đa diện có các mặt là những tam giác thì:', 'A. Số mặt và số đỉnh của nó bằng nhau', 'B. Số mặt và số cạnh của nó bằng nhau', 'C. Số mặt của nó là một số chẵn', 'D. Số mặt của nó là một số lẻ', 2, 14),
(444, 'Hình nón (N) có đường sinh gấp hai lần bán kính đáy. Góc ở đỉnh của hình nón là :', 'A. 120', 'B. 60', 'C. 30', 'D. 0', 1, 14),
(445, 'Một chiếc phễu đựng dầu hình nón có chiều cao là 30cm và đường sinh là 50cm. Giả sử rằng lượng dầu mà chiếc phễu đựng được chính là thể tích của khối nón. Khi đó trong các lượng dầu sau đây, lượng dầu nào lớn nhất chiếc phễu có thể đựng được :', 'A. 150720π(cm3)   ', 'B. 50400π(cm3)', 'C. 16000π(cm3) ', 'D. 12000π(cm3)', 2, 14),
(446, 'Cho hình trụ có được khi quay hình cữ\\hữ nhật ABCD quanh trục AB. Biết rằng AB = 2AD = 2a. Thể tích khối trụ đã cho theo a là :', 'A. 2πa3   ', 'B.πa3   ', 'C. 2πa3 /3  ', 'D.πa3 /2', 0, 14),
(447, 'Cho hình trụ có diện tích toàn phần là 7πa2 và bán kính đáy là a. Chiều cao của hình trụ là:', 'A. 3a/2  ', 'B. 2a    ', 'C. 5a/3  ', 'D. 5a/2', 3, 14),
(448, ' Để làm một thùng phi hình trụ người ta cần hai miếng nhựa hình tròn làm hai đáy có diện tích mỗi hình là 4π(cm2) và một miếng nhựa hình chữ nhật có diện tích là 15π(cm2) để làm thân. Tính chiều cao của thùng phi được làm.', 'A. 15/4(cm)   ', 'B. 5(cm) ', 'C. 15/2(cm) ', 'D. 15(cm)', 0, 14),
(449, 'Cho hình chữ nhật ABCD có AB = 2AD. Lần lượt quay hình chữ nhật quanh các trục AB, AD ta được hai khối trụ lần lượt gọi là (H1), (H2). Tính tỉ số thể tích của khối trụ (H1) chia cho thể tích của khối trụ (H2)', 'A. 1', 'B. 1/4  ', 'C. 1/2', 'D. 2', 2, 14),
(450, 'Cho hình trụ có bán kính đáy bằng a và diện tích toàn phần 6πa2. Diện tích của thiết diện của hình trụ cắt bởi mặt phẳng (P) đi qua các trục của hình trụ là :', 'A. a2   ', 'B. 2a2 ', 'C. 4a2   ', 'D. 6a2', 2, 14),
(451, 'Hình nón có chiều cao bằng 4/3 bán kính đáy. Tỉ số giữa diện tích toàn phần và diện tích xung quanh của hình nón là:', 'A. 4/3   ', 'B. 5/7 ', 'C. 8/5 ', 'D. 9/5', 2, 14),
(452, 'Hình nón có góc ở đỉnh là 90o và có diện tích xung quanh là π√2 . Độ dài đường cao của hình nón là:', 'A. 1 ', 'B. √2   ', 'C. 1/√2    ', 'D. 2', 0, 14),
(453, 'Cho hình nón tròn xoay có đường cao h=15cm và bán kính đáy r = 20cm. Diện tích xung quanh của hình nón là:', 'A. 1000π(cm2)', 'B. 250π(cm2)  ', 'C. 375π(cm2)   ', 'D. 500π(cm2)', 3, 14),
(454, 'Trong không gian Oxyz, cho hai điểm A(1;3;-2), B(1;1;2). Gọi (P) là mặt phẳng trung trực của đoạn thẳng AB. Phương trình của mặt phẳng (P) là:', 'A. y - 2z - 2 = 0  ', 'B. y - 2z - 7 = 0   ', 'C. y - 2z + 3 = 0  ', 'D. 2y + z - 4 = 0', 0, 14),
(455, 'Trong không gian Oxyz, cho mặt phẳng (P) đi qua điểm M(3;2;1) và cắt các tia Ox, Oy, Oz lần lượt tại các điểm A, B, C (khác O) sao cho tam giác ABC đều. Số mặt phẳng (P) thỏa mãn bài toán là:', 'A. 1  ', 'B. 2  ', 'C. 3  ', 'D. 4', 0, 14),
(456, 'Trong không gian Oxyz, lập phương trình của mặt phẳng (P) đi qua ba điểm A(1;0;1), B(0;-1;-3), C(2;1;3)', 'A. x - y - 1 = 0   ', 'B. x - y + 1 = 0   ', 'C. x + z - 2 = 0   ', 'D. x + y - 1 = 0', 0, 14),
(457, 'Trong không gian Oxyz, lập phương trình của mặt phẳng (P) đi qua điểm A(2;1;3), vuông góc với mặt phẳng (Q): x + y - 3z = 0 đồng thời (P) song song với trục Oz', 'A. x + y - 3 = 0  ', 'B. x - y - 1 = 0   ', 'C. 2x + y + 3z - 1 = 0  ', 'D. x - y + 1 = 0', 1, 14),
(458, 'Trong không gian Oxyz, phương trình của mặt phẳng (P) đi qua điểm M(2;6;-3) và vuông góc với hai mặt phẳng (Oxy), (Oyz) là:', 'A. 2x - 4 = 0', 'B. y - 6 = 0   ', 'C. z + 3 = 0 ', 'D. 2x - 6y - 3z - 49 = 0', 1, 14),
(459, '', '', '', '', '', 0, 0),
(460, '', '', '', '', '', 0, 0),
(461, '', '', '', '', '', 0, 0),
(462, '', '', '', '', '', 0, 0),
(463, '', '', '', '', '', 0, 0),
(464, 'fsdf', '1', '2', '3', '5', 3, 22);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `totalques` int(255) DEFAULT NULL,
  `answerscorrect` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `username`, `totalques`, `answerscorrect`) VALUES
(1, 'sunil yadav', 5, 4),
(2, 'sunil yadav', 5, 0),
(3, 'sunil yadav', 5, 0),
(4, 'sunil yadav', 5, 0),
(5, 'sunil yadav', 5, 0),
(6, 'sunil yadav', 5, 0),
(7, 'sunil yadav', 5, 0),
(8, 'sunil yadav', 5, 0),
(9, 'sunil yadav', 5, 0),
(10, 'sunil yadav', 5, 0),
(11, 'sunil yadav', 5, 0),
(12, 'sunil yadav', 5, 0),
(13, 'sunil yadav', 5, 0),
(14, 'sunil yadav', 5, 0),
(15, 'sunil yadav', 5, 0),
(16, 'sunil yadav', 5, 0),
(17, 'sunil yadav', 5, 0),
(18, 'sunil yadav', 5, 0),
(19, 'sunil yadav', 5, 3),
(20, 'sunil yadav', 5, 3),
(21, 'sunil yadav', 5, 0),
(22, 'sunil yadav', 5, 2),
(23, 'sunil yadav', 5, 2),
(24, 'sunil yadav', 5, 5),
(25, 'sunil yadav', 5, 1),
(26, 'sunil yadav', 5, 0),
(27, 'sunil yadav', 5, 1),
(28, 'sunil yadav', 5, 1),
(29, 'sunil yadav', 5, 1),
(30, 'sunil yadav', 5, 0),
(31, 'sunil yadav', 5, 0),
(32, 'sunil yadav', 5, 0),
(33, 'sunil yadav', 5, 0),
(34, 'sunil yadav', 5, 0),
(35, 'sunil yadav', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `img`) VALUES
(15, 'sunil yadav', 2365, 'sam123.sy28@gmail.com', 'img1.jpg'),
(16, 'sunil yadav', 541, 'sam123.sy28@gmail.com', 'img1.jpg'),
(17, 'sunil yadav', 520, 'sam123.sy28@gmail.com', 'img1.jpg'),
(18, 'sunil yadav', 56321, 'sam123.sy28@gmail.com', 'img1.jpg'),
(19, 'sunil yadav', 5641, 'sam123.sy28@gmail.com', 'ANDROID.png'),
(20, 'sunil yadav', 856412, 'sam123.sy28@gmail.com', 'danish.jpg'),
(21, 'sunil yadav', 56441, 'sam123.sy28@gmail.com', 'javalogo.png');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `video_id` int(255) NOT NULL,
  `video_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `video_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `video_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`video_id`, `video_path`, `video_name`, `course_name`, `video_image`) VALUES
(1, '../../file_video_on_tong_hop/tong_quan_chuong_trinh_lop6.mp4', 'Tổng quan chương trình lớp 6', 'toán 6', '../../uploadimg/toan6.jpg'),
(2, '../../file_video_on_tong_hop/tong_quan_chuong_trinh_lop7.mp4', 'Tổng quan chương trình lớp 7', 'toán 7', '../../uploadimg/toan7.jpg'),
(3, '../../file_video_on_tong_hop/tong_quan_chuong_trinh_lop8.mp4', 'Tổng quan chương trình lớp 8', 'toán 8', '../../uploadimg/toan8.jpg'),
(4, '../../file_video_on_tong_hop/tong_quan_chuong_trinh_lop9.mp4', 'Tổng quan chương trình lớp 9', 'toán 9', '../../uploadimg/toan9.jpg'),
(5, '../../file_video_on_tong_hop/tong_quan_chuong_trinh_lop10.webm', 'Tổng quan chương trình lớp 10', 'toán 10', '../../uploadimg/toan10.jpg'),
(6, '../../file_video_on_tong_hop/tong_quan_chuong_trinh_lop11.mp4', 'Tổng quan chương trình lớp 11', 'toán 11', '../../uploadimg/toan11.jpg'),
(7, '../../file_video_on_tong_hop/tong_quan_chuong_trinh_lop12.webm', 'Tổng quan chương trình lớp 12', 'toán 12', '../../uploadimg/toan12.png'),
(57, '../../file_video_on_tong_hop/tong_quan_chuong_trinh_lop6.mp4', 'toán 99 tập 1', 'toán 99', '../../uploadimg/toan10.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `videos_demo`
--

CREATE TABLE `videos_demo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `video_info`
--

CREATE TABLE `video_info` (
  `course_id` int(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `video_info`
--

INSERT INTO `video_info` (`course_id`, `image`, `description`, `course_name`) VALUES
(1, '../../uploadimg/toan6.jpg', 'toan lop 6', 'toán 6'),
(2, '../../uploadimg/toan7.jpg', 'toan lop 7', 'toán 7'),
(3, '../../uploadimg/toan8.jpg', 'toan lop 8', 'toán 8'),
(4, '../../uploadimg/toan9.jpg', 'toan lop 9', 'toán 9'),
(5, '../../uploadimg/toan10.jpg', 'toan lop 10', 'toán 10'),
(6, '../../uploadimg/toan11.jpg', 'toan lop 11', 'toán 11'),
(7, '../../uploadimg/toan12.png', 'toan lop 12', 'toán 12'),
(30, '../../uploadimg/toan6.jpg', 'toán 99', 'toán 99');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commentsection`
--
ALTER TABLE `commentsection`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mytable`
--
ALTER TABLE `mytable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programming_languages`
--
ALTER TABLE `programming_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `question_test`
--
ALTER TABLE `question_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`video_id`);

--
-- Indexes for table `videos_demo`
--
ALTER TABLE `videos_demo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_info`
--
ALTER TABLE `video_info`
  ADD PRIMARY KEY (`course_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `aid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `commentsection`
--
ALTER TABLE `commentsection`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `mytable`
--
ALTER TABLE `mytable`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `programming_languages`
--
ALTER TABLE `programming_languages`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `qid` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `question_test`
--
ALTER TABLE `question_test`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=465;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `video_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `videos_demo`
--
ALTER TABLE `videos_demo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `video_info`
--
ALTER TABLE `video_info`
  MODIFY `course_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
