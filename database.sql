-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2020 at 06:07 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `queenprime`
--

-- --------------------------------------------------------

--
-- Table structure for table `billingdetails`
--

CREATE TABLE `billingdetails` (
  `id` int(11) NOT NULL,
  `agreementId` varchar(200) NOT NULL,
  `nextBillingDate` varchar(50) NOT NULL,
  `token` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `carddetails`
--

CREATE TABLE `carddetails` (
  `id` int(10) NOT NULL,
  `userId` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cardno` varchar(255) NOT NULL,
  `expirydate` varchar(255) DEFAULT NULL,
  `cvv` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carddetails`
--

INSERT INTO `carddetails` (`id`, `userId`, `name`, `cardno`, `expirydate`, `cvv`) VALUES
(1, 1, 'abdul', 'hello', 'value', 1234),
(2, 1, 'abdul', '11111111111111', 'jann-2020', 1234),
(3, 1, 'abdul', '11111111111111', NULL, 1234),
(4, 1, 'abdul', '11111111111111', NULL, 1234),
(5, 72, 'MOHIDEEN ABDUL KHADER', '1111111111111111', NULL, 1111),
(6, 1, 'abdul', '11111111111111', 'jann-2020', 1234),
(7, 74, 'MOHIDEEN ABDUL KHADER', '1111111111111111', '2019-12-31T18:30:00.000Z', 212),
(8, 75, 'MOHIDEEN ABDUL KHADER', '1111111111111111', '2020-10-31T18:30:00.000Z', 1111),
(9, 76, 'MOHIDEEN ABDUL KHADER', '1111111111111111', '2020-07-31T18:30:00.000Z', 1234);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `isactive` int(100) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `isactive`) VALUES
(1, 'Action & adventure', 1),
(2, 'Classic', 1),
(3, 'Comedies', 1),
(4, 'Dramas', 1),
(5, 'Horror', 1),
(6, 'Romantic', 1),
(7, 'Sci - Fi & Fantasy', 1),
(8, 'Sports', 1),
(9, 'Thrillers', 1),
(10, 'Documentaries', 1),
(12, 'Teen', 1),
(13, 'Children & family', 1),
(14, 'Anime', 1),
(15, 'Independent', 1),
(16, 'Foreign', 1),
(17, 'Music', 1),
(18, 'Christmas', 1),
(19, 'Others', 1),
(20, 'Cartoon', 1);

-- --------------------------------------------------------

--
-- Table structure for table `entities`
--

CREATE TABLE `entities` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `thumbnail` varchar(250) NOT NULL,
  `posterimg` varchar(255) NOT NULL,
  `preview` varchar(250) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `isactive` int(100) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entities`
--

INSERT INTO `entities` (`id`, `name`, `thumbnail`, `posterimg`, `preview`, `categoryId`, `isactive`) VALUES
(1, 'Friends', '/images/movie1.png', '/poster/slider.png', '/videos/asuran/index.m3u8', 1, 1),
(2, 'The Simpsons', '/images/movie2.png', '/poster/slider2.png', '/videos/avengers/index.m3u8', 1, 1),
(3, 'Toy Story', '/images/movie3.png', '/poster/slider3.png', '/videos/jagame/index.m3u8', 1, 1),
(4, 'Inbetweeners', '/images/movie4.png', '/poster/slider.png', '/videos/need4speed/index.m3u8', 1, 1),
(5, 'Suits', '/images/movie5.png', '/poster/slider2.png', '/videos/shortfilm/index.m3u8', 1, 1),
(6, 'Captain Underpants', '/images/movie6.png', '/poster/slider3.png', '/videos/vathi/index.m3u8', 1, 1),
(7, 'Brooklyn Nine-Nine', '/images/movie7.png', '/poster/slider.png', '/videos/asuran/index.m3u8', 1, 1),
(8, 'That 70s Show', '/images/movie8.png', '/poster/slider2.png', '/videos/avengers/index.m3u8', 1, 1),
(9, 'Pokemon', '/images/movie1.png', '/poster/slider3.png', '/videos/asuran/index.m3u8', 1, 1),
(10, 'Spongebob Squarepants', '/images/movie2.png', '/poster/slider.png', '/videos/avengers/index.m3u8', 1, 1),
(11, 'Futurama', '/images/movie3.png', '/poster/slider2.png', '/videos/jagame/index.m3u8', 1, 1),
(12, 'Johnny Bravo', '/images/movie4.png', '/poster/slider3.png', '/videos/need4speed/index.m3u8', 1, 1),
(13, 'Teenage Mutant Ninja Turtles', '/images/movie5.png', '/poster/slider.png', '/videos/shortfilm/index.m3u8', 2, 1),
(14, 'Power Puff Girls', '/images/movie6.png', '/poster/slider2.png', '/videos/vathi/index.m3u8', 2, 1),
(15, 'Teen Titans Go', '/images/movie7.png', '/poster/slider3.png', '/videos/asuran/index.m3u8', 2, 1),
(16, 'Jurassic Park', '/images/movie8.png', '/poster/slider.png', '/videos/avengers/index.m3u8', 2, 1),
(17, 'Grease', '/images/movie1.png', '/poster/slider2.png', '/videos/asuran/index.m3u8', 2, 1),
(18, 'Paddington Bear', '/images/movie2.png', '/poster/slider3.png', '/videos/avengers/index.m3u8', 2, 1),
(19, 'Santa Clause', '/images/movie3.png', '/poster/slider.png', '/videos/jagame/index.m3u8', 2, 1),
(20, 'Monster Family', '/images/movie4.png', '/poster/slider2.png', '/videos/need4speed/index.m3u8', 2, 1),
(21, 'Top Gun', '/images/movie5.png', '/poster/slider3.png', '/videos/shortfilm/index.m3u8', 2, 1),
(22, 'Home Alone', '/images/movie6.png', '/poster/slider.png', '/videos/vathi/index.m3u8', 2, 1),
(23, 'The Grinch', '/images/movie7.png', '/poster/slider2.png', '/videos/asuran/index.m3u8', 2, 1),
(24, 'National Lampoon\'s Christmas Vacation', '/images/movie8.png', '/poster/slider3.png', '/videos/avengers/index.m3u8', 2, 1),
(25, 'Elf', '/images/movie1.png', '/poster/slider.png', '/videos/asuran/index.m3u8', 3, 1),
(26, 'Fred Claus', '/images/movie2.png', '/poster/slider2.png', '/videos/avengers/index.m3u8', 3, 1),
(27, 'Jaws', '/images/movie3.png', '/poster/slider3.png', '/videos/jagame/index.m3u8', 3, 1),
(28, 'Live Die Repeat', '/images/movie4.png', '/poster/slider.png', '/videos/need4speed/index.m3u8', 3, 1),
(29, 'Into the Storm', '/images/movie5.png', '/poster/slider2.png', '/videos/shortfilm/index.m3u8', 3, 1),
(30, 'Mission Impossible', '/images/movie6.png', '/poster/slider3.png', '/videos/vathi/index.m3u8', 3, 1),
(31, 'Never Back Down', '/images/movie7.png', '/poster/slider.png', '/videos/asuran/index.m3u8', 3, 1),
(32, 'Mechanic', '/images/movie8.png', '/poster/slider2.png', '/videos/avengers/index.m3u8', 3, 1),
(33, 'Need for Speed', '/images/movie1.png', '/poster/slider3.png', '/videos/asuran/index.m3u8', 3, 1),
(34, 'Gravity', '/images/movie2.png', '/poster/slider.png', '/videos/avengers/index.m3u8', 3, 1),
(35, 'Step Brothers', '/images/movie3.png', '/poster/slider2.png', '/videos/jagame/index.m3u8', 3, 1),
(36, 'Game of Thrones', '/images/movie4.png', '/poster/slider3.png', '/videos/need4speed/index.m3u8', 3, 1),
(37, 'Dark Money', '/images/movie5.png', '/poster/slider.png', '/videos/shortfilm/index.m3u8', 4, 1),
(38, 'Yellowstone', '/images/movie6.png', '/poster/slider2.png', '/videos/vathi/index.m3u8', 4, 1),
(39, 'Manifest', '/images/movie7.png', '/poster/slider3.png', '/videos/asuran/index.m3u8', 4, 1),
(40, 'The Sound of Music', '/images/movie8.png', '/poster/slider.png', '/videos/avengers/index.m3u8', 4, 1),
(41, 'Hairspray', '/images/movie1.png', '/poster/slider2.png', '/videos/asuran/index.m3u8', 4, 1),
(42, 'Believe', '/images/movie2.png', '/poster/slider3.png', '/videos/avengers/index.m3u8', 4, 1),
(43, 'Chris Brown: Till I Die', '/images/movie3.png', '/poster/slider.png', '/videos/jagame/index.m3u8', 4, 1),
(44, 'Men in Black', '/images/movie4.png', '/poster/slider2.png', '/videos/need4speed/index.m3u8', 4, 1),
(45, 'Interstellar', '/images/movie5.png', '/poster/slider3.png', '/videos/shortfilm/index.m3u8', 4, 1),
(46, 'Transformers', '/images/movie6.png', '/poster/slider.png', '/videos/vathi/index.m3u8', 4, 1),
(47, 'Cloudy with a Chance of Meatballs', '/images/movie7.png', '/poster/slider2.png', '/videos/asuran/index.m3u8', 4, 1),
(48, 'District 9', '/images/movie8.png', '/poster/slider3.png', '/videos/avengers/index.m3u8', 4, 1),
(49, 'name', '/images/movie1.png', '/poster/slider.png', '/videos/asuran/index.m3u8', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mylist`
--

CREATE TABLE `mylist` (
  `id` int(11) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `videos_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `poster`
--

CREATE TABLE `poster` (
  `id` int(10) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `isactive` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `poster`
--

INSERT INTO `poster` (`id`, `image`, `name`, `isactive`) VALUES
(1, '/poster/slider.png', 'movie1', 1),
(2, '/poster/slider2.png', 'movie2', 1),
(3, '/poster/slider3.png', 'movie3', 1),
(4, '/poster/slider.png', 'movie4', 1),
(5, '/poster/slider2.png', 'movie5', 1);

-- --------------------------------------------------------

--
-- Table structure for table `recommendation`
--

CREATE TABLE `recommendation` (
  `id` int(10) NOT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `rating` tinyint(2) DEFAULT NULL,
  `videoId` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recommendation`
--

INSERT INTO `recommendation` (`id`, `comment`, `rating`, `videoId`) VALUES
(1, 'Good movie', 5, 19);

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `id` int(11) NOT NULL,
  `userId` varchar(10) CHARACTER SET latin1 NOT NULL,
  `planId` varchar(255) CHARACTER SET latin1 NOT NULL,
  `expiryDate` varchar(255) NOT NULL,
  `remainingDate` varchar(255) NOT NULL,
  `paymentStatus` varchar(255) DEFAULT NULL,
  `misc1` varchar(11) DEFAULT NULL,
  `misc2` varchar(255) DEFAULT NULL,
  `isactive` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`id`, `userId`, `planId`, `expiryDate`, `remainingDate`, `paymentStatus`, `misc1`, `misc2`, `isactive`) VALUES
(20, '168', '2', '2021-01-11T16:29:10.132Z', '30', 'Monthly Plan', NULL, NULL, 1),
(21, '169', '1', '2054-10-08T16:29:52.597Z', '365', 'Yearly Plan', NULL, NULL, 1),
(22, '171', '1', '2054-10-08T16:30:56.269Z', '365', 'Yearly Plan', NULL, NULL, 1),
(23, '172', '1', '2054-10-08T16:40:46.852Z', '365', 'Yearly Plan', NULL, NULL, 1),
(24, '173', '1', '2054-10-08T16:41:58.564Z', '365', 'Yearly Plan', NULL, NULL, 1),
(25, '174', '2', '2024-04-13T16:43:28.420Z', '30', 'Monthly Plan', NULL, NULL, 1),
(26, '175', '2', '2020-12-12T16:48:56.941Z', '30', 'Monthly Plan', NULL, NULL, 1),
(27, '176', '1', '2020-12-12T16:51:54.156Z', '365', 'Yearly Plan', NULL, NULL, 1),
(28, '177', '2', '2024-04-13T16:53:51.965Z', '30', 'Monthly Plan', NULL, NULL, 1),
(29, '178', '1', '2054-10-08T16:55:06.733Z', '365', 'Yearly Plan', NULL, NULL, 1),
(30, '179', '1', '2021-12-12T16:56:42.948Z', '365', 'Yearly Plan', NULL, NULL, 1),
(31, '182', '1', '2021-12-12T16:57:50.972Z', '365', 'Yearly Plan', NULL, NULL, 1),
(32, '183', '1', '2021-12-12T16:58:41.556Z', '365', 'Yearly Plan', NULL, NULL, 1),
(33, '185', '2', '2021-01-11T16:59:04.133Z', '30', 'Monthly Plan', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptionplan`
--

CREATE TABLE `subscriptionplan` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(500) NOT NULL,
  `planValue` varchar(255) NOT NULL,
  `planType` varchar(255) NOT NULL,
  `validitydays` int(255) NOT NULL,
  `users` varchar(255) NOT NULL,
  `isactive` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscriptionplan`
--

INSERT INTO `subscriptionplan` (`id`, `name`, `description`, `planValue`, `planType`, `validitydays`, `users`, `isactive`) VALUES
(1, 'Yearly Plan', '<i class=\"fa fa-check\"></i>All features in basic<br>\r\n<i class=\"fa fa-check\"></i>Flexible cancel policy<br>\r\n<i class=\"fa fa-check\"></i>unbeatable quality and price', '₹999', 'Yearly Plan', 365, '2 User', 1),
(2, 'Monthly Plan', '<i class=\"fa fa-check\"></i>All features in basic<br>\r\n<i class=\"fa fa-check\"></i>Flexible cancel policy<br>\r\n<i class=\"fa fa-check\"></i>unbeatable quality and price', '₹150', 'Monthly Plan', 30, '1 User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(25) DEFAULT NULL,
  `lastName` varchar(25) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signUpDate` datetime NOT NULL DEFAULT current_timestamp(),
  `isSubscribed` tinyint(4) NOT NULL DEFAULT 0,
  `isactive` int(100) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `username`, `email`, `mobile_no`, `password`, `signUpDate`, `isSubscribed`, `isactive`) VALUES
(1, 'Prabakaran', 'Kannan', 'prabaerode1', 'kannanprabakaran84@gmail.com', '', '36098c17900de2eaf5b4b586bd15c6af5039ac4ce291767a1ba033ea27fe11187417e62ab988d2b9bec52da9f1f5af021443eaa37bab4fcf9c90a4763f957022', '2020-10-23 11:46:22', 0, 1),
(2, 'Praba', 'Karan', 'prabaerode', 'prabaerode@gmail.com', '', '$2a$10$EHmnNIoGjBn.WVUYoTvTieWtkDSFLYUE10S3sykTUU7JLuOqQZSaq', '2020-10-26 00:00:00', 0, 1),
(4, 'Praba', 'Karan', 'prabaerode11', 'prabaerode1gmail.com', '', '$2a$10$Tdz10RvaHocFjVdGjArbXeLV02AfU66wo6BBOUZbpTkhhpfhCkjHW', '2020-11-01 00:00:00', 0, 1),
(6, 'Praba', 'Karan', 'prabaerode112', 'prabaerode12@gmail.com', '', '$2a$10$Iv.yG5silI4sYjpIWfqr6erY9qgEDR0Ldlkcns6jD4Z4iRJgQLhSC', '2020-11-01 00:00:00', 0, 1),
(7, NULL, NULL, NULL, 'hello054@gmail.com', '8807495656', '$2a$10$CSLK3MIYXIQA4wr3xGq52O7Kc2UOQkJnXYdwjElQlxsKJLvn5K3PW', '2020-12-08 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `videoprogress`
--

CREATE TABLE `videoprogress` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `videoId` int(11) NOT NULL,
  `progress` int(11) NOT NULL DEFAULT 0,
  `finished` tinyint(4) NOT NULL DEFAULT 0,
  `dateModified` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `title` varchar(70) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `filePath` varchar(250) NOT NULL,
  `isMovie` tinyint(1) NOT NULL,
  `uploadDate` datetime NOT NULL DEFAULT current_timestamp(),
  `releaseDate` date NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `duration` varchar(10) NOT NULL,
  `season` int(11) DEFAULT 0,
  `episode` int(11) DEFAULT 0,
  `entityId` int(11) NOT NULL,
  `movietype` varchar(255) NOT NULL,
  `releaseyear` year(4) NOT NULL,
  `agelimit` varchar(255) NOT NULL,
  `cast` varchar(255) NOT NULL,
  `generas` varchar(255) NOT NULL,
  `languages` varchar(255) NOT NULL,
  `isactive` int(100) NOT NULL DEFAULT 1,
  `posterId` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `description`, `filePath`, `isMovie`, `uploadDate`, `releaseDate`, `views`, `duration`, `season`, `episode`, `entityId`, `movietype`, `releaseyear`, `agelimit`, `cast`, `generas`, `languages`, `isactive`, `posterId`) VALUES
(17, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', '/HLS_Samples/asuran/index.m3u8', 0, '2019-10-12 22:07:53', '2006-02-10', 0, '47:13', 1, 1, 1, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, 1),
(18, 'Some Sliver', 'Adipiscing id est porttitor vivamus nostra magna porta potenti accumsan eros. Sit nullam dictumst libero sociosqu accumsan sem. Interdum egestas apten', '/HLS_Samples/avengers/index.m3u8', 0, '2019-10-12 22:07:53', '2002-12-09', 0, '41:46', 1, 2, 2, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, 2),
(19, 'The Dreamer\'s Flame', 'Fusce et eu, at auctor hendrerit pharetra aptent himenaeos nisl. Placerat at ultrices habitasse rhoncus eros dignissim senectus. A vivamus fermentum p', '/HLS_Samples/jagame/index.m3u8', 0, '2019-10-12 22:07:53', '2014-10-17', 0, '22:31', 1, 3, 3, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, 3),
(20, 'Sliver in the Weeping', 'Dolor maecenas mauris massa et augue litora. Maecenas commodo donec potenti sodales sem. Malesuada tincidunt a integer nullam euismod pretium vulputat', '/HLS_Samples/need4speed/index.m3u8', 0, '2019-10-12 22:07:53', '2014-05-14', 0, '31:24', 1, 4, 4, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, 4),
(21, 'The Female of the Twins', 'Interdum etiam finibus facilisis pulvinar venenatis pharetra class ad litora duis diam ullamcorper senectus cras. Non eleifend tempor nisi primis phar', '/HLS_Samples/shortfilm/index.m3u8', 0, '2019-10-12 22:07:53', '2001-05-11', 0, '30:13', 1, 5, 5, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, 5),
(22, 'Seventh Fire', 'Lacus tellus felis curae ornare euismod pretium inceptos sodales congue eros risus. Amet non nulla volutpat metus molestie urna tempus vivamus rhoncus', '/HLS_Samples/vathi/index.m3u8', 0, '2019-10-12 22:07:53', '2002-07-19', 0, '28:47', 1, 6, 6, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(23, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', '/HLS_Samples/asuran/index.m3u8', 0, '2019-10-12 22:07:53', '2007-06-03', 0, '39:26', 1, 7, 7, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(24, 'Voyager in the Lord', 'Id justo vitae nunc pulvinar quisque scelerisque ultrices proin commodo ad donec tristique cras. Sit vestibulum maximus sem ullamcorper, lacinia ligul', '/HLS_Samples/avengers/index.m3u8', 0, '2019-10-12 22:07:53', '2014-03-04', 0, '47:19', 1, 8, 8, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(25, 'Some Sliver', 'Malesuada mauris hac taciti. Dictum egestas molestie et pharetra maximus taciti litora porta blandit sem ullamcorper. Interdum nulla velit metus nibh ', '/HLS_Samples/jagame/index.m3u8', 0, '2019-10-12 22:07:53', '2018-04-08', 0, '40:55', 1, 9, 9, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(26, 'Sliver in the Weeping', 'Elit justo vestibulum feugiat lacinia suspendisse semper quis ultrices primis commodo libero sodales suscipit. Adipiscing erat velit mauris efficitur ', '/HLS_Samples/need4speed/index.m3u8', 0, '2019-10-12 22:07:53', '2000-05-29', 0, '37:33', 1, 10, 10, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(27, 'Voyager in the Lord', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', '/HLS_Samples/shortfilm/index.m3u8', 0, '2019-10-12 22:07:53', '2014-01-13', 0, '32:10', 1, 11, 11, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(28, 'Burning Something', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', '/HLS_Samples/vathi/index.m3u8', 0, '2019-10-12 22:07:53', '2010-10-28', 0, '35:57', 1, 12, 12, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(29, 'The Tale\'s Door', 'Lorem viverra vitae venenatis posuere ornare sagittis enim laoreet vehicula nam imperdiet habitant, sit mattis tellus posuere pretium ad odio accumsan', '/HLS_Samples/asuran/index.m3u8', 0, '2019-10-12 22:07:53', '2014-06-11', 0, '34:56', 2, 1, 13, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(30, 'Burning Something', 'Pulvinar dui lectus per sem. Elit id volutpat tincidunt est tellus massa faucibus primis eget habitasse taciti odio morbi, id ligula mollis cubilia li', '/HLS_Samples/avengers/index.m3u8', 0, '2019-10-12 22:07:53', '2018-02-26', 0, '32:42', 2, 2, 14, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(31, 'The Shadowy Death', 'Lorem nibh integer commodo inceptos himenaeos. Amet interdum sed justo lobortis eleifend nisi molestie massa primis dictumst pellentesque torquent inc', '/HLS_Samples/jagame/index.m3u8', 0, '2019-10-12 22:07:53', '2007-06-25', 0, '40:33', 2, 3, 15, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(32, 'Seventh Fire', 'Metus tincidunt tellus primis augue consequat sagittis congue. Sit erat metus auctor massa posuere porta rhoncus blandit laoreet. Praesent a integer n', '/HLS_Samples/need4speed/index.m3u8', 0, '2019-10-12 22:07:53', '2010-07-06', 0, '43:53', 2, 4, 16, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(33, 'Name of Elves', 'Egestas leo ligula est donec ullamcorper netus. Nibh nec tortor fusce et eu libero per accumsan habitant. Lobortis luctus quis risus senectus iaculis,', '/HLS_Samples/shortfilm/index.m3u8', 0, '2019-10-12 22:07:53', '2007-04-18', 0, '25:39', 2, 5, 17, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(34, 'Name of Elves', 'Mattis vivamus libero conubia neque, dolor non feugiat nibh tincidunt aliquam pretium turpis rhoncus. In cursus nullam arcu dictumst diam. Egestas lac', '/HLS_Samples/vathi/index.m3u8', 0, '2019-10-12 22:07:53', '2008-08-26', 0, '45:27', 2, 6, 18, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(35, 'Light in the Mage', 'Viverra maecenas quisque ut fringilla condimentum elementum. Egestas ac ut fusce augue nullam dictumst lectus maximus torquent per fames. Dolor erat m', '/HLS_Samples/asuran/index.m3u8', 0, '2019-10-12 22:07:53', '2013-09-11', 0, '31:59', 2, 7, 19, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(36, 'Obsession in the Spark', 'Sapien porttitor sociosqu diam aliquet. Elit egestas auctor faucibus dictumst rhoncus. Lorem in ligula scelerisque venenatis porttitor aptent porta po', '/HLS_Samples/avengers/index.m3u8', 0, '2019-10-12 22:07:53', '2008-07-24', 0, '47:28', 2, 8, 20, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(37, 'Flames of Dreams', 'Elit sed metus urna sociosqu himenaeos. Leo semper tempor, dictum etiam leo cursus libero maximus nostra. Viverra mattis venenatis convallis varius cu', '/HLS_Samples/jagame/index.m3u8', 0, '2019-10-12 22:07:53', '2013-04-04', 0, '24:59', 2, 9, 21, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(38, 'Name of Elves', 'Malesuada etiam ut et curae commodo inceptos neque. Consectetur at volutpat tortor est et dapibus arcu dui turpis porta elementum morbi. Etiam vitae f', '/HLS_Samples/need4speed/index.m3u8', 0, '2019-10-12 22:07:53', '2003-04-29', 0, '29:38', 2, 10, 22, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(39, 'Grey Sparks', 'Nulla lacus sed nec ornare arcu dictumst vel cras. Semper fringilla platea gravida imperdiet. Dictum at lacinia pretium arcu vehicula. Mi maecenas jus', '/HLS_Samples/shortfilm/index.m3u8', 0, '2019-10-12 22:07:53', '2018-12-13', 0, '25:44', 2, 11, 23, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(40, 'Shard of Dragon', 'Lacus mattis est tellus aliquam primis sollicitudin urna sagittis pellentesque class taciti himenaeos congue habitant. Egestas facilisis habitasse, ip', '/HLS_Samples/vathi/index.m3u8', 0, '2019-10-12 22:07:53', '2012-10-19', 0, '23:58', 2, 12, 24, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(41, 'The Licking Flowers', 'Tincidunt ac quis felis conubia vehicula, velit felis orci ornare porttitor consequat tempus vivamus libero inceptos congue fames iaculis. Lacus viver', '/HLS_Samples/asuran/index.m3u8', 0, '2019-10-12 22:07:53', '2004-08-19', 0, '45:35', 3, 1, 25, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(42, 'Voyager in the Lord', 'Sit nunc pulvinar quisque aliquam varius et commodo pellentesque aptent duis imperdiet aliquet, non at maecenas tempor fringilla taciti. Sed mauris fe', '/HLS_Samples/avengers/index.m3u8', 0, '2019-10-12 22:07:53', '2007-09-27', 0, '22:53', 3, 2, 26, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(43, 'The Women of the Roses', 'Velit libero ad turpis. Sit amet integer euismod inceptos. Ipsum dictum non egestas curae urna arcu vel pellentesque turpis enim potenti elementum tri', '/HLS_Samples/jagame/index.m3u8', 0, '2019-10-12 22:07:53', '2011-03-10', 0, '34:31', 3, 3, 27, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(44, 'Silver Twilight', 'Nibh tincidunt eleifend aliquam eget taciti morbi. Amet interdum finibus vestibulum metus integer facilisis venenatis purus ex pretium aptent curabitu', '/HLS_Samples/need4speed/index.m3u8', 0, '2019-10-12 22:07:53', '2004-01-09', 0, '36:30', 3, 4, 28, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(45, 'The Dwindling Voyage', 'Sit amet facilisis ac eleifend mollis fusce pretium vulputate consequat sodales ullamcorper. Consectetur id tincidunt est scelerisque vulputate lectus', '/HLS_Samples/shortfilm/index.m3u8', 0, '2019-10-12 22:07:53', '2007-10-31', 0, '25:26', 3, 5, 29, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(46, 'The Licking Flowers', 'Maecenas leo eleifend ut scelerisque ultrices maximus odio nam iaculis aenean. Erat eu efficitur. Elit sapien nunc phasellus faucibus augue sollicitud', '/HLS_Samples/vathi/index.m3u8', 0, '2019-10-12 22:07:53', '2010-05-10', 0, '33:10', 3, 6, 30, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(47, 'Obsession in the Spark', 'Sed nunc ultrices euismod condimentum neque netus, id nibh dapibus euismod condimentum consequat platea dictumst imperdiet. Dolor nulla malesuada nunc', '/HLS_Samples/asuran/index.m3u8', 0, '2019-10-12 22:07:53', '2013-05-03', 0, '48:28', 3, 7, 31, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(48, 'The Force of the Silence', 'Pulvinar ex aenean. At maecenas ligula mollis est porttitor gravida libero vel taciti blandit aliquet cras, praesent suspendisse curae platea taciti s', '/HLS_Samples/avengers/index.m3u8', 0, '2019-10-12 22:07:53', '2009-12-20', 0, '25:26', 3, 8, 32, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(49, 'Flames of Dreams', 'Metus lacinia semper auctor scelerisque massa euismod arcu condimentum aptent taciti sociosqu sodales neque, integer suspendisse quisque ex posuere pl', '/HLS_Samples/jagame/index.m3u8', 0, '2019-10-12 22:07:53', '2018-07-31', 0, '34:41', 3, 9, 33, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(50, 'Silver Twilight', 'Nulla mauris luctus cursus vivamus. Interdum at suspendisse mollis hendrerit quam libero sodales dignissim. Leo nibh a aliquam ornare class eros nam s', '/HLS_Samples/need4speed/index.m3u8', 0, '2019-10-12 22:07:53', '2014-11-15', 0, '21:30', 3, 10, 34, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(51, 'Silver Twilight', 'Lacus sed mattis integer lacinia tempor ex curae dapibus habitasse nostra donec neque nam, adipiscing at volutpat justo aliquam convallis faucibus tac', '/HLS_Samples/shortfilm/index.m3u8', 0, '2019-10-12 22:07:53', '2006-01-03', 0, '31:56', 3, 11, 35, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(52, 'Shard of Dragon', 'Mi sed tincidunt condimentum tempus libero ad enim vehicula. Lacus erat pulvinar est aliquam eget quam maximus enim sodales ullamcorper habitant. A su', '/HLS_Samples/vathi/index.m3u8', 0, '2019-10-12 22:07:53', '2001-08-12', 0, '23:13', 3, 12, 36, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(53, 'The Licking Flowers', 'Eleifend semper felis ornare vulputate quam hac odio. Vitae integer ac nec vel, praesent in sagittis torquent curabitur imperdiet sem. Mauris pulvinar', '/HLS_Samples/asuran/index.m3u8', 0, '2019-10-12 22:07:53', '2009-11-01', 0, '22:24', 4, 1, 37, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(54, 'Light in the Mage', 'Interdum non malesuada viverra a suspendisse nec semper eget libero maximus ad per. Amet adipiscing egestas vitae feugiat aliquam felis primis vel cla', '/HLS_Samples/avengers/index.m3u8', 0, '2019-10-12 22:07:53', '2013-04-08', 0, '29:25', 4, 2, 38, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(55, 'Birch of Trainer', 'Tempus aptent habitant tristique. In lacus etiam luctus pulvinar mollis venenatis quis massa nullam sollicitudin hac taciti enim. Amet elit malesuada ', '/HLS_Samples/jagame/index.m3u8', 0, '2019-10-12 22:07:53', '2013-11-18', 0, '37:43', 4, 3, 39, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(56, 'Grey Sparks', 'Luctus est ex conubia congue laoreet, dictum semper tortor ultrices molestie pharetra himenaeos nam aliquet. Ipsum amet malesuada lacinia scelerisque ', '/HLS_Samples/need4speed/index.m3u8', 0, '2019-10-12 22:07:53', '2018-05-19', 0, '35:41', 4, 4, 40, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(57, 'The Shadowy Death', 'Interdum lacus placerat erat volutpat lobortis varius cubilia lectus vel conubia bibendum netus, sit feugiat tellus platea pellentesque donec curabitu', '/HLS_Samples/shortfilm/index.m3u8', 0, '2019-10-12 22:07:53', '2017-05-08', 0, '44:22', 4, 5, 41, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(58, 'Some Sliver', 'Mauris est cursus tempus gravida efficitur, adipiscing integer suspendisse nec libero eros ullamcorper. Ipsum consectetur mi phasellus sollicitudin co', '/HLS_Samples/vathi/index.m3u8', 0, '2019-10-12 22:07:53', '2015-04-13', 0, '50:50', 4, 6, 42, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(59, 'Shard of Dragon', 'Elit non maecenas mattis nibh convallis fringilla curae vivamus pellentesque torquent odio congue imperdiet ullamcorper, finibus fringilla tempus hime', '/HLS_Samples/asuran/index.m3u8', 0, '2019-10-12 22:07:53', '2013-12-27', 0, '42:27', 4, 7, 43, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(60, 'Grey Sparks', 'Non egestas nulla malesuada velit vestibulum ex arcu nostra fermentum imperdiet. Sit ac nullam dictumst congue. Egestas finibus lacinia eleifend nec v', '/HLS_Samples/avengers/index.m3u8', 0, '2019-10-12 22:07:53', '2008-01-05', 0, '33:35', 4, 8, 44, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(61, 'The Tale\'s Door', 'Lacinia tellus purus augue elementum sem, ipsum sit dictum nulla in ut quis ultrices fusce tempus efficitur elementum. Est massa platea litora rhoncus', '/HLS_Samples/jagame/index.m3u8', 0, '2019-10-12 22:07:53', '2007-01-19', 0, '30:46', 4, 9, 45, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(62, 'Some Sliver', 'Interdum varius curae. Mi metus facilisis quis fringilla orci libero taciti accumsan congue elementum cras, non viverra volutpat quisque gravida iacul', '/HLS_Samples/need4speed/index.m3u8', 0, '2019-10-12 22:07:53', '2004-03-18', 0, '38:24', 4, 10, 46, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(63, 'The Female of the Twins', 'Egestas in sed id leo venenatis convallis ex condimentum eu taciti fermentum magna rhoncus morbi, adipiscing viverra ultrices phasellus fusce felis pr', '/HLS_Samples/shortfilm/index.m3u8', 0, '2019-10-12 22:07:53', '2002-08-06', 0, '25:17', 4, 11, 47, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(64, 'Birch of Trainer', 'Volutpat vestibulum suspendisse primis et libero neque aliquet morbi, adipiscing praesent at luctus taciti torquent fermentum blandit diam. Consectetu', '/HLS_Samples/vathi/index.m3u8', 0, '2019-10-12 22:07:53', '2018-02-01', 0, '37:39', 4, 12, 48, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL),
(65, 'The Force of the Silence', 'Viverra volutpat nec et ultricies lectus per. Consectetur id maecenas nec molestie convallis ultricies euismod eu vivamus ad aenean. Sed velit finibus', '/HLS_Samples/asuran/index.m3u8', 0, '2019-10-12 22:07:53', '2011-03-04', 0, '44:53', 5, 1, 49, 'Action | Drama', 2020, '18+', 'Vijay, Anirudh, Vijay Sethupathy and More', 'Action,Drama', 'Tamil,telugu', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billingdetails`
--
ALTER TABLE `billingdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carddetails`
--
ALTER TABLE `carddetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entities`
--
ALTER TABLE `entities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryId` (`categoryId`);

--
-- Indexes for table `mylist`
--
ALTER TABLE `mylist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poster`
--
ALTER TABLE `poster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recommendation`
--
ALTER TABLE `recommendation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptionplan`
--
ALTER TABLE `subscriptionplan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`);

--
-- Indexes for table `videoprogress`
--
ALTER TABLE `videoprogress`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entityId` (`entityId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billingdetails`
--
ALTER TABLE `billingdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carddetails`
--
ALTER TABLE `carddetails`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `entities`
--
ALTER TABLE `entities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `mylist`
--
ALTER TABLE `mylist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `poster`
--
ALTER TABLE `poster`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `subscriptionplan`
--
ALTER TABLE `subscriptionplan`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `videoprogress`
--
ALTER TABLE `videoprogress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `entities`
--
ALTER TABLE `entities`
  ADD CONSTRAINT `entities_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_ibfk_1` FOREIGN KEY (`entityId`) REFERENCES `entities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
