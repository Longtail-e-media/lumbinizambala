-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 03, 2024 at 05:45 AM
-- Server version: 10.6.19-MariaDB
-- PHP Version: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `theanfac_annapurna`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_applicants`
--

CREATE TABLE `tbl_applicants` (
  `id` int(11) NOT NULL,
  `parent` varchar(100) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `current_address` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `position` varchar(100) NOT NULL,
  `myfile` varchar(50) NOT NULL,
  `qualification` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_applicants`
--

INSERT INTO `tbl_applicants` (`id`, `parent`, `fullname`, `current_address`, `mobile`, `phone`, `email`, `sortorder`, `position`, `myfile`, `qualification`) VALUES
(1, '', 'Swarna Shakya', 'KTM', '9849482842', '', 'swarna@longtail.info', 1, '1', 'family-fun-1.jpg', 'test'),
(2, '', 'asdasd', 'Chettrapati, Dhobichaur a', '9861369900', '', 'asdasd@gmail.com', 2, '11', '', 'asdasd'),
(3, '', 'sahas', 'Chettrapati, Dhobichaur a', '9861369900', '', 'statshakya@gmail.com', 3, '13', 'IMG-20231018-WA0009.jpg', 'testing');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_articles`
--

CREATE TABLE `tbl_articles` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `content` text NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `linksrc` tinytext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `meta_title` tinytext NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `type` int(1) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `homepage` int(1) NOT NULL DEFAULT 0,
  `image` blob NOT NULL,
  `date` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_articles`
--

INSERT INTO `tbl_articles` (`id`, `parent_id`, `slug`, `title`, `sub_title`, `content`, `linktype`, `linksrc`, `status`, `meta_title`, `meta_keywords`, `meta_description`, `type`, `added_date`, `modified_date`, `sortorder`, `homepage`, `image`, `date`, `category`) VALUES
(11, 0, 'welcome-to-the-5-star-luxury-hotel-annapurna-view', 'Welcome to the 5-star luxury Hotel Annapurna View', 'Welcome to the 5-star luxury Hotel Annapurna View', '<div bis_size=\"{\" class=\"col-lg-5 col-md-6 pt-xl-5 ps-lg-0\">\r\n	<h1 bis_size=\"{\" class=\"iowan-400-48 lh-65\">\r\n		Welcome to the 5-star luxury Hotel Annapurna View <a bis_size=\"{\" href=\"https://www.youtube.com/@hotelannapurnaviewsarangko7361\"><img bis_size=\"{\" class=\"live-btn\" src=\"template/web//assets/images/1.png\" /></a></h1>\r\n	<p bis_size=\"{\" class=\"inter-400-16 mt-5 pt-2 w-lg-75 lh-30\">\r\n		Hotel Annapurna view is a posh setting located at a height of 1600 meters at Sarangkot. As our slogan reads, we are literally a door away from the mountains with our rooms offering the view right from your bed.</p>\r\n</div>\r\n\r\n', 0, '', 1, '', '', '', 0, '2023-09-03 15:53:53', '2024-08-27 10:33:21', 2, 1, 0x613a303a7b7d, '', ''),
(17, 0, 'know-pokhara', 'Know Pokhara', 'Know Pokhara', '<div class=\"iowan-400-36 ps-lg-5 ms-lg-2 mb-md-4 ps-2\">\r\n	Know Pokhara</div>\r\n<div class=\"row  m-lg-5 py-lg-4 py-md-3\">\r\n	<div class=\"col-lg-7 res-contentGapping-knowPokhara\">\r\n		<div class=\"iowan-400-24 mb-4\">\r\n			Lorem ipsum dolor sit amet.</div>\r\n		<div class=\"inter-400-16 lh-30\">\r\n			Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid aut aliquam laboriosam earum quia praesentium, amet nostrum recusandae aperiam nam ipsam quaerat dolorem nesciunt iusto omnis velit veritatis minima deserunt! Doloribus voluptates voluptatum minus, sunt laborum necessitatibus officiis obcaecati deserunt eos quisquam ab eveniet aliquid ipsum nostrum officia fuga earum architecto nemo tempore repudiandae modi? Totam quasi repudiandae dolorem expedita! Facere odit doloremque esse excepturi non maiores, aperiam dicta quas. Odit fugiat consequuntur at placeat aspernatur ipsa, veritatis autem hic accusantium excepturi esse distinctio, reiciendis quasi consectetur illum quas eveniet. Inventore totam atque vitae numquam et eum corporis repellat voluptatibus magni accusantium autem repudiandae, eaque asperiores explicabo quo. Laboriosam unde blanditiis voluptas officia recusandae expedita quaerat laudantium. Voluptate, eum praesentium. Alias, eveniet, accusantium veritatis dicta quisquam sint laudantium odit assumenda, repellendus vel at aperiam voluptatem id delectus odio vitae cupiditate ea ducimus reiciendis. Minima architecto cumque quibusdam nisi magnam esse?</div>\r\n	</div>\r\n	<div class=\"col-lg-5\">\r\n		<img alt=\"Image 1\" src=\"template/web/assets/images/image 13.png\" /></div>\r\n</div>\r\n<div class=\"row m-lg-5 py-lg-4 my-md-5 py-md-3 res-secondPart-knowPokhara\">\r\n	<div class=\"col-lg-5\">\r\n		<img alt=\"Image 1\" src=\"template/web/assets/images/image 13.png\" /></div>\r\n	<div class=\"col-lg-7 res-contentGapping-knowPokhara\">\r\n		<div class=\"iowan-400-24 mb-4\">\r\n			Lorem ipsum dolor sit amet.</div>\r\n		<div class=\"inter-400-16 lh-30\">\r\n			Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid aut aliquam laboriosam earum quia praesentium, amet nostrum recusandae aperiam nam ipsam quaerat dolorem nesciunt iusto omnis velit veritatis minima deserunt! Doloribus voluptates voluptatum minus, sunt laborum necessitatibus officiis obcaecati deserunt eos quisquam ab eveniet aliquid ipsum nostrum officia fuga earum architecto nemo tempore repudiandae modi? Totam quasi repudiandae dolorem expedita! Facere odit doloremque esse excepturi non maiores, aperiam dicta quas. Odit fugiat consequuntur at placeat aspernatur ipsa, veritatis autem hic accusantium excepturi esse distinctio, reiciendis quasi consectetur illum quas eveniet. Inventore totam atque vitae numquam et eum corporis repellat voluptatibus magni accusantium autem repudiandae, eaque asperiores explicabo quo. Laboriosam unde blanditiis voluptas officia recusandae expedita quaerat laudantium. Voluptate, eum praesentium. Alias, eveniet, accusantium veritatis dicta quisquam sint laudantium odit assumenda, repellendus vel at aperiam voluptatem id delectus odio vitae cupiditate ea ducimus reiciendis. Minima architecto cumque quibusdam nisi magnam esse?</div>\r\n	</div>\r\n</div>\r\n<div class=\"row  m-lg-5 py-lg-4\">\r\n	<div class=\"col-lg-7 res-contentGapping-knowPokhara\">\r\n		<div class=\"iowan-400-24 mb-4\">\r\n			Lorem ipsum dolor sit amet.</div>\r\n		<div class=\"inter-400-16 lh-30\">\r\n			Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid aut aliquam laboriosam earum quia praesentium, amet nostrum recusandae aperiam nam ipsam quaerat dolorem nesciunt iusto omnis velit veritatis minima deserunt! Doloribus voluptates voluptatum minus, sunt laborum necessitatibus officiis obcaecati deserunt eos quisquam ab eveniet aliquid ipsum nostrum officia fuga earum architecto nemo tempore repudiandae modi? Totam quasi repudiandae dolorem expedita! Facere odit doloremque esse excepturi non maiores, aperiam dicta quas. Odit fugiat consequuntur at placeat aspernatur ipsa, veritatis autem hic accusantium excepturi esse distinctio, reiciendis quasi consectetur illum quas eveniet. Inventore totam atque vitae numquam et eum corporis repellat voluptatibus magni accusantium autem repudiandae, eaque asperiores explicabo quo. Laboriosam unde blanditiis voluptas officia recusandae expedita quaerat laudantium. Voluptate, eum praesentium. Alias, eveniet, accusantium veritatis dicta quisquam sint laudantium odit assumenda, repellendus vel at aperiam voluptatem id delectus odio vitae cupiditate ea ducimus reiciendis. Minima architecto cumque quibusdam nisi magnam esse?</div>\r\n	</div>\r\n	<div class=\"col-lg-5\">\r\n		<img alt=\"Image 1\" src=\"template/web/assets/images/image 13.png\" /></div>\r\n</div>\r\n', 0, '', 1, '', '', '', 0, '2024-08-30 10:15:53', '2024-08-30 10:15:53', 4, 0, 0x613a303a7b7d, '', ''),
(2, 0, 'about-annapurna-view', 'About Annapurna View', 'Experience matter', '<div class=\"inter-400-16 para-clip lh-30 ps-xl-3\">\r\n	<p>\r\n		Built along the steps of a hill, it offers both a pleasant stay and exhilarating activities. It features a simple and inviting decor that is inspired by the ancient Japanese notion of Wabi Sabi (Japanese traditional beauty). An escape from your regular routine, it is only a 30-minute drive away from Pokhara&#39;s international airport, providing you with plenty of nature along the way making it a welcome change.</p>\r\n	<p>\r\n		Hotel Annapurna view is a place where ancient architecture meets modern luxury. It feels like going on a vacation without having to leave your home. The stunning view of the mountains, combined with your comfortable stay in our hotel, will undoubtedly revitalize your spirit and leave you with a pleasant impression.</p>\r\n	<p>\r\n		You will find the same comfort, security, and affection in Hotel Annapurna View as you would at home. The 24 hour security that we provide will help you rest easy. Post visit, you will be left with a unique experience. It is your ideal location for discovering nature&#39;s quiet serenity. Hotel Annapurna view has adventurous activities to offer like paragliding, bungee jumping ,a zip flyer and a panchase hiking course that allows you to go around the fewa lake which makes it the prime location for adventure freaks.</p>\r\n</div>\r\n<div class=\"about-room-view ps-lg-1 ps-xl-3 mb-lg-3\">\r\n	<div class=\"owl-carousel room-view-about room-view\">\r\n		<div class=\"item\">\r\n			<img alt=\"\" src=\"template/web/assets/images/deluxeRoom.png\" /></div>\r\n		<div class=\"item\">\r\n			<img alt=\"\" src=\"template/web/assets/images/deluxSuite.png\" /></div>\r\n		<div class=\"item\">\r\n			<img alt=\"\" src=\"template/web/assets/images/suiteRoom.png\" /></div>\r\n	</div>\r\n	<div class=\"pagination-container pagination-container-about inter-400-16 lh-30\">\r\n		&nbsp;</div>\r\n</div>\r\n', 0, '', 1, '', '', '', 0, '2023-06-05 13:41:34', '2024-08-23 12:05:13', 1, 0, 0x613a313a7b693a303b733a31393a223853455a352d61626f75744865726f2e706e67223b7d, '', ''),
(16, 0, 'activities-around', 'Activities Around', 'Activities Around', '\r\n	<div class=\"iowan-400-36 ps-lg-5 ms-lg-2 mb-md-4 ps-2\">\r\n		Activities Around</div>\r\n	<div class=\"row  m-lg-5 py-lg-4 py-md-3 activitiesAround-rows\">\r\n		<div class=\"col-lg-6 res-contentGapping-knowPokhara\">\r\n			<div class=\"iowan-400-24 mb-4 iowan-400-24 lh-30\">\r\n				Annapurna Cable Car</div>\r\n			<div class=\"inter-400-16 lh-30\">\r\n				<ul class=\"activitiesAround-list inter-400-18 lh-30\">\r\n					<li>\r\n						Established in 2073 BS</li>\r\n					<li>\r\n						Sedibagar to Sarangkot</li>\r\n					<li>\r\n						Gondola based lift transportation</li>\r\n					<li>\r\n						2.2 KM with two stations</li>\r\n					<li>\r\n						17 gondolas with total conveying capacity of 500 people per hour</li>\r\n					<li>\r\n						Shortening the travel distance to only 9 minutes</li>\r\n				</ul>\r\n			</div>\r\n		</div>\r\n		<div class=\"col-lg-6\">\r\n			<img alt=\"Annapurna Gondola\" class=\"activitiesAround-img\" src=\"template/web/assets/images/annapurnagondola.jpg\" /></div>\r\n	</div>\r\n	<div class=\"row m-lg-5 py-lg-4 my-md-5 py-md-3 res-secondPart-knowPokhara activitiesAround-rows\">\r\n		<div class=\"col-lg-6\">\r\n			<img alt=\"Zip Flying\" class=\"activitiesAround-img\" src=\"template/web/assets/images/zip-flyer.jpg\" /></div>\r\n		<div class=\"col-lg-6 res-contentGapping-knowPokhara\">\r\n			<div class=\"iowan-400-24 mb-4 iowan-400-24 lh-30\">\r\n				Zip flyer</div>\r\n			<div class=\"inter-400-16 lh-30\">\r\n				<ul class=\"activitiesAround-list inter-400-18 lh-30\">\r\n					<li>\r\n						400 meters away from the hotel</li>\r\n					<li>\r\n						Zipline in Sarangkot</li>\r\n				</ul>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div class=\"row  m-lg-5 py-lg-4 activitiesAround-rows\">\r\n		<div class=\"col-lg-6 res-contentGapping-knowPokhara\">\r\n			<div class=\"iowan-400-24 mb-4 iowan-400-24 lh-30\">\r\n				View Tower</div>\r\n			<div class=\"inter-400-16 lh-30\">\r\n				<ul class=\"activitiesAround-list inter-400-18 lh-30\">\r\n					<li>\r\n						Situated at the center of the Pokhara</li>\r\n					<li>\r\n						5.32 sq.km. covered</li>\r\n					<li>\r\n						One of the major attraction in Pokhara</li>\r\n				</ul>\r\n			</div>\r\n		</div>\r\n		<div class=\"col-lg-6\">\r\n			<img alt=\"View Tower\" class=\"activitiesAround-img\" src=\"template/web/assets/images/viewTower.jpg\" /></div>\r\n	</div>\r\n	<div class=\"row m-lg-5 py-lg-4 my-md-5 py-md-3 res-secondPart-knowPokhara activitiesAround-rows\">\r\n		<div class=\"col-lg-6\">\r\n			<img alt=\"Paragliding\" class=\"activitiesAround-img\" src=\"template/web/assets/images/paragliding.jpeg\" /></div>\r\n		<div class=\"col-lg-6 res-contentGapping-knowPokhara\">\r\n			<div class=\"iowan-400-24 mb-4 iowan-400-24 lh-30\">\r\n				Paragliding</div>\r\n			<div class=\"inter-400-16 lh-30\">\r\n				<ul class=\"activitiesAround-list inter-400-18 lh-30\">\r\n					<li>\r\n						One of the most popular tourist activitiy in pokhara</li>\r\n					<li>\r\n						Stunning and mesmerizing white high mountains, green hills and lakes</li>\r\n					<li>\r\n						Operated only by the trained professionals for individual safety</li>\r\n				</ul>\r\n			</div>\r\n		</div>\r\n	</div>\r\n', 0, '', 1, '', '', '', 0, '2024-08-22 16:45:51', '2024-08-22 17:24:41', 3, 0, 0x613a313a7b693a303b733a32323a226745694c492d70617261676c6964696e672e6a706567223b7d, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `id` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `title` varchar(200) NOT NULL,
  `author` varchar(100) NOT NULL,
  `brief` text NOT NULL,
  `content` text NOT NULL,
  `blog_date` date NOT NULL,
  `archive_date` date NOT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `image` varchar(50) NOT NULL,
  `source` mediumtext NOT NULL,
  `type` int(10) NOT NULL,
  `viewcount` int(11) NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `linksrc` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `linktype` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_blog`
--

INSERT INTO `tbl_blog` (`id`, `slug`, `title`, `author`, `brief`, `content`, `blog_date`, `archive_date`, `sortorder`, `status`, `image`, `source`, `type`, `viewcount`, `meta_keywords`, `meta_description`, `added_date`, `linksrc`, `linktype`) VALUES
(14, 'significance-of-dashain-and-tihar', 'Significance of Dashain and Tihar                                 ', 'Significance of Dashain and Tihar', 'Dashain is the major National festival of Nepal.Tihar is another beautiful and dazzling festival for the Hindus which is the second greatest festival for Nepalese, after Dashain.\r\n                                ', '<p>\r\n	Dashain is the major National festival of Nepal.Tihar is another beautiful and dazzling festival for the Hindus which is the second greatest festival for Nepalese, after Dashain. Dashain is the major National festival of Nepal.Tihar is another beautiful and dazzling festival for the Hindus which is the second greatest festival for Nepalese, after Dashain. Dashain is the major National festival of Nepal.Tihar is another beautiful and dazzling festival for the Hindus which is the second greatest festival for Nepalese, after Dashain. Dashain is the major National festival of Nepal.Tihar is another beautiful and dazzling festival for the Hindus which is the second greatest festival for Nepalese, after Dashain. Dashain is the major National festival of Nepal.Tihar is another beautiful and dazzling festival for the Hindus which is the second greatest festival for Nepalese, after Dashain. Dashain is the major National festival of Nepal.Tihar is another beautiful and dazzling festival for the Hindus which is the second greatest festival for Nepalese, after Dashain.</p>\r\n', '2024-09-19', '0000-00-00', 2, 1, 'Vc8No-dashain-package-flyer-kwRjcXtvWgfrrd4lDGhxhq', '', 0, 0, '', '', '2023-09-04 11:54:01', '', '0'),
(15, 'kwati-on-janaipurnima', 'Kwati on janaipurnima                                 ', 'Kwati on janaipurnima                                 ', 'In Newari language, \'Kwa\' means hot and \'ti\' means soup. It is a soup prepared from a mixture of nine different types of sprouted beans (such as red kidney beans, soybeans, mung beans, black lentils, blacked eyed peas, chickpeas, cowpeas and green peas).\r\n                                ', '<p>\r\n	In Newari language, &#39;Kwa&#39; means hot and &#39;ti&#39; means soup. It is a soup prepared from a mixture of nine different types of sprouted beans (such as red kidney beans, soybeans, mung beans, black lentils, blacked eyed peas, chickpeas, cowpeas and green peas). In Newari language, &#39;Kwa&#39; means hot and &#39;ti&#39; means soup. It is a soup prepared from a mixture of nine different types of sprouted beans (such as red kidney beans, soybeans, mung beans, black lentils, blacked eyed peas, chickpeas, cowpeas and green peas). In Newari language, &#39;Kwa&#39; means hot and &#39;ti&#39; means soup. It is a soup prepared from a mixture of nine different types of sprouted beans (such as red kidney beans, soybeans, mung beans, black lentils, blacked eyed peas, chickpeas, cowpeas and green peas). In Newari language, &#39;Kwa&#39; means hot and &#39;ti&#39; means soup. It is a soup prepared from a mixture of nine different types of sprouted beans (such as red kidney beans, soybeans, mung beans, black lentils, blacked eyed peas, chickpeas, cowpeas and green peas). In Newari language, &#39;Kwa&#39; means hot and &#39;ti&#39; means soup. It is a soup prepared from a mixture of nine different types of sprouted beans (such as red kidney beans, soybeans, mung beans, black lentils, blacked eyed peas, chickpeas, cowpeas and green peas).</p>\r\n', '2024-09-30', '0000-00-00', 3, 1, 'XaCKv-kwati.jpg', '', 0, 0, '', '', '2023-09-04 11:54:38', '', '0'),
(16, 'dahi-chiura', 'Dahi Chiura', 'Dahi Chiura', 'Asar 15 is a significant date in the Nepali calendar, symbolizing the onset of the monsoon and the vital rice planting season. Dahi Chiura Khane Din celebrates this agricultural milestone with a traditional meal of yogurt (dahi) and beaten paddy (chiura).\r\n                                ', '<p>\r\n	Asar 15 is a significant date in the Nepali calendar, symbolizing the onset of the monsoon and the vital rice planting season. Dahi Chiura Khane Din celebrates this agricultural milestone with a traditional meal of yogurt (dahi) and beaten paddy (chiura). Asar 15 is a significant date in the Nepali calendar, symbolizing the onset of the monsoon and the vital rice planting season. Dahi Chiura Khane Din celebrates this agricultural milestone with a traditional meal of yogurt (dahi) and beaten paddy (chiura). Asar 15 is a significant date in the Nepali calendar, symbolizing the onset of the monsoon and the vital rice planting season. Dahi Chiura Khane Din celebrates this agricultural milestone with a traditional meal of yogurt (dahi) and beaten paddy (chiura). Asar 15 is a significant date in the Nepali calendar, symbolizing the onset of the monsoon and the vital rice planting season. Dahi Chiura Khane Din celebrates this agricultural milestone with a traditional meal of yogurt (dahi) and beaten paddy (chiura). Asar 15 is a significant date in the Nepali calendar, symbolizing the onset of the monsoon and the vital rice planting season. Dahi Chiura Khane Din celebrates this agricultural milestone with a traditional meal of yogurt (dahi) and beaten paddy (chiura). Asar 15 is a significant date in the Nepali calendar, symbolizing the onset of the monsoon and the vital rice planting season. Dahi Chiura Khane Din celebrates this agricultural milestone with a traditional meal of yogurt (dahi) and beaten paddy (chiura).</p>\r\n', '2024-09-30', '0000-00-00', 4, 1, 'AtOVO-dahiChiura.jpg', '', 0, 0, '', '', '2023-09-04 11:55:59', '', '0'),
(17, 'bandipur', 'Bandipur                         ', 'Bandipur                                 ', 'random stuff ', '<p>\r\n	The Newari town of Bandipur is one of central Nepal&#39;s hidden gems. It combines traditional village architecture, epic Himalayan views, lovely countryside walks, local adventure sports, and excellent accommodation.</p>\r\n', '2024-09-18', '0000-00-00', 5, 1, 'a2AMW-bandipur-blog.jpg', '', 0, 0, '', '', '2023-09-04 11:56:28', '', '0'),
(18, 'pokhara-city-day-tour', 'Pokhara city day tour', 'Pokhara city day tour', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Maxime, autem?', '<p>\r\n	Lorem ipsum dolor sit amet consectetur, adipisicing elit. Maxime, autem?Lorem ipsum dolor sit amet consectetur, adipisicing elit. Maxime, autem?Lorem ipsum dolor sit amet consectetur, adipisicing elit. Maxime, autem?Lorem ipsum dolor sit amet consectetur, adipisicing elit. Maxime, autem?Lorem ipsum dolor sit amet consectetur, adipisicing elit. Maxime, autem?Lorem ipsum dolor sit amet consectetur, adipisicing elit. Maxime, autem?Lorem ipsum dolor sit amet consectetur, adipisicing elit. Maxime, autem?Lorem ipsum dolor sit amet consectetur, adipisicing elit. Maxime, autem?Lorem ipsum dolor sit amet consectetur, adipisicing elit. Maxime, autem?Lorem ipsum dolor sit amet consectetur, adipisicing elit. Maxime, autem?Lorem ipsum dolor sit amet consectetur, adipisicing elit. Maxime, autem?Lorem ipsum dolor sit amet consectetur, adipisicing elit. Maxime, autem?Lorem ipsum dolor sit amet consectetur, adipisicing elit. Maxime, autem?</p>\r\n', '2024-09-30', '0000-00-00', 1, 1, 'SvUYq-pokhara-tour-blog.jpg', '', 0, 0, '', '', '2023-09-04 12:25:01', '', '0'),
(19, 'australian-base-camp', 'Australian Base Camp', 'Australian Base Camp', 'Nestled in the breathtaking western Himalayan mountains of Nepal, the Australian Base Camp Trek is a hidden gem waiting to be discovered.\r\n                            ', '<div bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:8,&quot;w&quot;:1155,&quot;h&quot;:54,&quot;abs_x&quot;:293,&quot;abs_y&quot;:1020}\" class=\"inter-400-18 lh-32\">\r\n	<strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:8,&quot;w&quot;:386,&quot;h&quot;:13,&quot;abs_x&quot;:293,&quot;abs_y&quot;:1020}\">Trip Name: Australian Base Camp Hiking and Dhampus Sightseeing</strong><br bis_size=\"{&quot;x&quot;:394,&quot;y&quot;:19,&quot;w&quot;:0,&quot;h&quot;:0,&quot;abs_x&quot;:679,&quot;abs_y&quot;:1031}\" />\r\n	<strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:21,&quot;w&quot;:156,&quot;h&quot;:13,&quot;abs_x&quot;:293,&quot;abs_y&quot;:1033}\">Duration: One Day/Half Day</strong><br bis_size=\"{&quot;x&quot;:164,&quot;y&quot;:32,&quot;w&quot;:0,&quot;h&quot;:0,&quot;abs_x&quot;:449,&quot;abs_y&quot;:1044}\" />\r\n	<strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:35,&quot;w&quot;:94,&quot;h&quot;:13,&quot;abs_x&quot;:293,&quot;abs_y&quot;:1047}\">Group Size: 1-15</strong><br bis_size=\"{&quot;x&quot;:102,&quot;y&quot;:46,&quot;w&quot;:0,&quot;h&quot;:0,&quot;abs_x&quot;:387,&quot;abs_y&quot;:1058}\" />\r\n	<strong bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:48,&quot;w&quot;:204,&quot;h&quot;:13,&quot;abs_x&quot;:293,&quot;abs_y&quot;:1060}\">Starts/ Ends: Hotel Annapurna View</strong></div>\r\n<div bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:76,&quot;w&quot;:1155,&quot;h&quot;:16,&quot;abs_x&quot;:293,&quot;abs_y&quot;:1088}\" class=\"mt-4 mb-3 blog-activities\">\r\n	<h3 bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:76,&quot;w&quot;:1155,&quot;h&quot;:16,&quot;abs_x&quot;:293,&quot;abs_y&quot;:1088}\" class=\"iowan-400-24\">\r\n		Activities</h3>\r\n</div>\r\n<div bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:109,&quot;w&quot;:1155,&quot;h&quot;:67,&quot;abs_x&quot;:293,&quot;abs_y&quot;:1121}\" class=\"inter-400-18\">\r\n	<h5 bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:109,&quot;w&quot;:1155,&quot;h&quot;:11,&quot;abs_x&quot;:293,&quot;abs_y&quot;:1121}\">\r\n		Tour and Sightseeing</h5>\r\n	<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:137,&quot;w&quot;:1155,&quot;h&quot;:13,&quot;abs_x&quot;:293,&quot;abs_y&quot;:1149}\" class=\"ms-3\">\r\n		<a bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:137,&quot;w&quot;:90,&quot;h&quot;:13,&quot;abs_x&quot;:293,&quot;abs_y&quot;:1149}\" href=\"\">Dhampus Village</a></p>\r\n	<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:163,&quot;w&quot;:1155,&quot;h&quot;:13,&quot;abs_x&quot;:293,&quot;abs_y&quot;:1175}\" class=\"ms-3\">\r\n		<a bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:163,&quot;w&quot;:119,&quot;h&quot;:13,&quot;abs_x&quot;:293,&quot;abs_y&quot;:1175}\" href=\"\">Australian Base Camp</a></p>\r\n</div>\r\n<div bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:193,&quot;w&quot;:1155,&quot;h&quot;:169,&quot;abs_x&quot;:293,&quot;abs_y&quot;:1205}\">\r\n	<h5 bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:193,&quot;w&quot;:1155,&quot;h&quot;:11,&quot;abs_x&quot;:293,&quot;abs_y&quot;:1205}\">\r\n		Trip</h5>\r\n	<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:221,&quot;w&quot;:1155,&quot;h&quot;:13,&quot;abs_x&quot;:293,&quot;abs_y&quot;:1233}\" class=\"ms-3\">\r\n		Starting point: 8:00 AM (After Breakfast in the hotel)</p>\r\n	<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:246,&quot;w&quot;:1155,&quot;h&quot;:13,&quot;abs_x&quot;:293,&quot;abs_y&quot;:1258}\" class=\"ms-3\">\r\n		Ending point: 04:30 PM</p>\r\n	<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:272,&quot;w&quot;:1155,&quot;h&quot;:13,&quot;abs_x&quot;:293,&quot;abs_y&quot;:1284}\" class=\"ms-3\">\r\n		Duration: 8 Hours 30 Minutes</p>\r\n	<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:298,&quot;w&quot;:1155,&quot;h&quot;:13,&quot;abs_x&quot;:293,&quot;abs_y&quot;:1310}\" class=\"ms-3\">\r\n		Means: Car, Jeep, Hiace, Annapurna Cable Car</p>\r\n	<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:323,&quot;w&quot;:1155,&quot;h&quot;:13,&quot;abs_x&quot;:293,&quot;abs_y&quot;:1335}\" class=\"ms-3\">\r\n		Meal: A-la-Carte Menu</p>\r\n	<p bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:349,&quot;w&quot;:1155,&quot;h&quot;:13,&quot;abs_x&quot;:293,&quot;abs_y&quot;:1361}\" class=\"ms-3\">\r\n		Rate: Rate from the restaurant menu</p>\r\n</div>\r\n<div bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:379,&quot;w&quot;:1155,&quot;h&quot;:171,&quot;abs_x&quot;:293,&quot;abs_y&quot;:1391}\">\r\n	<h5 bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:379,&quot;w&quot;:1155,&quot;h&quot;:11,&quot;abs_x&quot;:293,&quot;abs_y&quot;:1391}\">\r\n		Itinery from Hotel Annapurna View to Dhampus Village / Australian Base Camp</h5>\r\n	<table bis_size=\"{&quot;x&quot;:8,&quot;y&quot;:407,&quot;w&quot;:865,&quot;h&quot;:143,&quot;abs_x&quot;:293,&quot;abs_y&quot;:1419}\" class=\"blog-table\">\r\n		<tbody bis_size=\"{&quot;x&quot;:10,&quot;y&quot;:409,&quot;w&quot;:860,&quot;h&quot;:138,&quot;abs_x&quot;:295,&quot;abs_y&quot;:1421}\">\r\n			<tr bis_size=\"{&quot;x&quot;:10,&quot;y&quot;:409,&quot;w&quot;:860,&quot;h&quot;:44,&quot;abs_x&quot;:295,&quot;abs_y&quot;:1421}\">\r\n				<td bis_size=\"{&quot;x&quot;:10,&quot;y&quot;:409,&quot;w&quot;:171,&quot;h&quot;:44,&quot;abs_x&quot;:295,&quot;abs_y&quot;:1421}\" class=\"bold inter-400-16\" width=\"20%\">\r\n					8:00 - 9:30</td>\r\n				<td bis_size=\"{&quot;x&quot;:183,&quot;y&quot;:409,&quot;w&quot;:6,&quot;h&quot;:44,&quot;abs_x&quot;:468,&quot;abs_y&quot;:1421}\">\r\n					:</td>\r\n				<td bis_size=\"{&quot;x&quot;:192,&quot;y&quot;:409,&quot;w&quot;:679,&quot;h&quot;:44,&quot;abs_x&quot;:477,&quot;abs_y&quot;:1421}\">\r\n					Hotel Annapurna View to Naudaha (9 km)<br bis_size=\"{&quot;x&quot;:415,&quot;y&quot;:411,&quot;w&quot;:0,&quot;h&quot;:13,&quot;abs_x&quot;:700,&quot;abs_y&quot;:1423}\" />\r\n					Naudaha to Phedi (3 km)<br bis_size=\"{&quot;x&quot;:327,&quot;y&quot;:425,&quot;w&quot;:0,&quot;h&quot;:13,&quot;abs_x&quot;:612,&quot;abs_y&quot;:1437}\" />\r\n					Phedi to Dhampus (11 km)</td>\r\n			</tr>\r\n			<tr bis_size=\"{&quot;x&quot;:10,&quot;y&quot;:455,&quot;w&quot;:860,&quot;h&quot;:17,&quot;abs_x&quot;:295,&quot;abs_y&quot;:1467}\">\r\n				<td bis_size=\"{&quot;x&quot;:10,&quot;y&quot;:455,&quot;w&quot;:171,&quot;h&quot;:17,&quot;abs_x&quot;:295,&quot;abs_y&quot;:1467}\" class=\"bold inter-400-16\">\r\n					9:30 - 10:30</td>\r\n				<td bis_size=\"{&quot;x&quot;:183,&quot;y&quot;:455,&quot;w&quot;:6,&quot;h&quot;:17,&quot;abs_x&quot;:468,&quot;abs_y&quot;:1467}\">\r\n					:</td>\r\n				<td bis_size=\"{&quot;x&quot;:192,&quot;y&quot;:455,&quot;w&quot;:679,&quot;h&quot;:17,&quot;abs_x&quot;:477,&quot;abs_y&quot;:1467}\">\r\n					Dhampus View Tower ( Walk for 15 mins to reach view tower and sighseeing for 45 mins in tower and returning back in 15mins)</td>\r\n			</tr>\r\n			<tr bis_size=\"{&quot;x&quot;:10,&quot;y&quot;:474,&quot;w&quot;:860,&quot;h&quot;:17,&quot;abs_x&quot;:295,&quot;abs_y&quot;:1486}\">\r\n				<td bis_size=\"{&quot;x&quot;:10,&quot;y&quot;:474,&quot;w&quot;:171,&quot;h&quot;:17,&quot;abs_x&quot;:295,&quot;abs_y&quot;:1486}\" class=\"bold inter-400-16\">\r\n					10:30 - 11:30</td>\r\n				<td bis_size=\"{&quot;x&quot;:183,&quot;y&quot;:474,&quot;w&quot;:6,&quot;h&quot;:17,&quot;abs_x&quot;:468,&quot;abs_y&quot;:1486}\">\r\n					:</td>\r\n				<td bis_size=\"{&quot;x&quot;:192,&quot;y&quot;:474,&quot;w&quot;:679,&quot;h&quot;:17,&quot;abs_x&quot;:477,&quot;abs_y&quot;:1486}\">\r\n					Lunch at Hotel in Dhampus</td>\r\n			</tr>\r\n			<tr bis_size=\"{&quot;x&quot;:10,&quot;y&quot;:493,&quot;w&quot;:860,&quot;h&quot;:17,&quot;abs_x&quot;:295,&quot;abs_y&quot;:1505}\">\r\n				<td bis_size=\"{&quot;x&quot;:10,&quot;y&quot;:493,&quot;w&quot;:171,&quot;h&quot;:17,&quot;abs_x&quot;:295,&quot;abs_y&quot;:1505}\" class=\"bold inter-400-16\">\r\n					11:30 - 3:00</td>\r\n				<td bis_size=\"{&quot;x&quot;:183,&quot;y&quot;:493,&quot;w&quot;:6,&quot;h&quot;:17,&quot;abs_x&quot;:468,&quot;abs_y&quot;:1505}\">\r\n					:</td>\r\n				<td bis_size=\"{&quot;x&quot;:192,&quot;y&quot;:493,&quot;w&quot;:679,&quot;h&quot;:17,&quot;abs_x&quot;:477,&quot;abs_y&quot;:1505}\">\r\n					Hike from Dhampus to Australian Base Camp</td>\r\n			</tr>\r\n			<tr bis_size=\"{&quot;x&quot;:10,&quot;y&quot;:512,&quot;w&quot;:860,&quot;h&quot;:17,&quot;abs_x&quot;:295,&quot;abs_y&quot;:1524}\">\r\n				<td bis_size=\"{&quot;x&quot;:10,&quot;y&quot;:512,&quot;w&quot;:171,&quot;h&quot;:17,&quot;abs_x&quot;:295,&quot;abs_y&quot;:1524}\" class=\"bold inter-400-16\">\r\n					3:00 - 4:00</td>\r\n				<td bis_size=\"{&quot;x&quot;:183,&quot;y&quot;:512,&quot;w&quot;:6,&quot;h&quot;:17,&quot;abs_x&quot;:468,&quot;abs_y&quot;:1524}\">\r\n					:</td>\r\n				<td bis_size=\"{&quot;x&quot;:192,&quot;y&quot;:512,&quot;w&quot;:679,&quot;h&quot;:17,&quot;abs_x&quot;:477,&quot;abs_y&quot;:1524}\">\r\n					Hike from Dhampus to Australian Base Camp</td>\r\n			</tr>\r\n			<tr bis_size=\"{&quot;x&quot;:10,&quot;y&quot;:530,&quot;w&quot;:860,&quot;h&quot;:17,&quot;abs_x&quot;:295,&quot;abs_y&quot;:1542}\">\r\n				<td bis_size=\"{&quot;x&quot;:10,&quot;y&quot;:530,&quot;w&quot;:171,&quot;h&quot;:17,&quot;abs_x&quot;:295,&quot;abs_y&quot;:1542}\" class=\"bold inter-400-16\">\r\n					4:00 - 4:30</td>\r\n				<td bis_size=\"{&quot;x&quot;:183,&quot;y&quot;:530,&quot;w&quot;:6,&quot;h&quot;:17,&quot;abs_x&quot;:468,&quot;abs_y&quot;:1542}\">\r\n					:</td>\r\n				<td bis_size=\"{&quot;x&quot;:192,&quot;y&quot;:530,&quot;w&quot;:679,&quot;h&quot;:17,&quot;abs_x&quot;:477,&quot;abs_y&quot;:1542}\">\r\n					Hike from Dhampus to Australian Base Camp</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>\r\n', '2024-09-18', '0000-00-00', 0, 1, 'LkBR9-australianBaseCamp.webp', '', 0, 0, '', '', '2023-09-17 17:22:38', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_conbined_news`
--

CREATE TABLE `tbl_conbined_news` (
  `id` int(11) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `brief` tinytext NOT NULL,
  `content` text NOT NULL,
  `image` mediumtext NOT NULL,
  `home_image` text NOT NULL,
  `gallery` text NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `display` varchar(250) NOT NULL,
  `event_stdate` date NOT NULL,
  `event_endate` date NOT NULL,
  `type` int(11) NOT NULL,
  `author` varchar(200) NOT NULL,
  `banner_image` varchar(300) NOT NULL,
  `source` mediumtext NOT NULL,
  `meta_description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_configs`
--

CREATE TABLE `tbl_configs` (
  `id` int(11) NOT NULL,
  `sitetitle` varchar(200) NOT NULL,
  `icon_upload` varchar(200) NOT NULL,
  `logo_upload` varchar(200) NOT NULL,
  `fb_upload` varchar(255) NOT NULL,
  `twitter_upload` varchar(255) NOT NULL,
  `gallery_upload` varchar(255) NOT NULL,
  `contact_upload` varchar(255) NOT NULL,
  `other_upload` text NOT NULL,
  `facility_upload` varchar(240) NOT NULL,
  `offer_upload` varchar(255) NOT NULL,
  `sitename` varchar(50) NOT NULL,
  `location_type` tinyint(1) NOT NULL DEFAULT 1,
  `location_map` mediumtext NOT NULL,
  `location_image` varchar(250) NOT NULL,
  `fiscal_address` tinytext NOT NULL,
  `mail_address` tinytext NOT NULL,
  `contact_info` tinytext NOT NULL,
  `address` varchar(100) NOT NULL,
  `email_address` tinytext NOT NULL,
  `breif` text NOT NULL,
  `copyright` varchar(200) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `site_keywords` tinytext NOT NULL,
  `site_description` tinytext NOT NULL,
  `fb_messenger` text NOT NULL,
  `google_anlytics` text NOT NULL,
  `linksrc` varchar(255) NOT NULL,
  `robot_txt` text NOT NULL,
  `schema_code` tinytext NOT NULL,
  `book_type` tinyint(4) NOT NULL DEFAULT 1,
  `hotel_page` varchar(200) NOT NULL,
  `hotel_code` tinytext NOT NULL,
  `booking_code` tinytext NOT NULL,
  `template` varchar(100) NOT NULL,
  `admin_template` varchar(100) NOT NULL,
  `headers` text DEFAULT NULL,
  `footer` text DEFAULT NULL,
  `search_box` text DEFAULT NULL,
  `search_result` text DEFAULT NULL,
  `action` tinyint(1) NOT NULL DEFAULT 0,
  `contact_info2` varchar(100) NOT NULL,
  `pobox` varchar(50) NOT NULL,
  `pixel_code` mediumtext NOT NULL,
  `whatsapp` varchar(100) NOT NULL,
  `whatsapp_a` varchar(100) NOT NULL,
  `logo_upload2` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_configs`
--

INSERT INTO `tbl_configs` (`id`, `sitetitle`, `icon_upload`, `logo_upload`, `fb_upload`, `twitter_upload`, `gallery_upload`, `contact_upload`, `other_upload`, `facility_upload`, `offer_upload`, `sitename`, `location_type`, `location_map`, `location_image`, `fiscal_address`, `mail_address`, `contact_info`, `address`, `email_address`, `breif`, `copyright`, `meta_title`, `site_keywords`, `site_description`, `fb_messenger`, `google_anlytics`, `linksrc`, `robot_txt`, `schema_code`, `book_type`, `hotel_page`, `hotel_code`, `booking_code`, `template`, `admin_template`, `headers`, `footer`, `search_box`, `search_result`, `action`, `contact_info2`, `pobox`, `pixel_code`, `whatsapp`, `whatsapp_a`, `logo_upload2`) VALUES
(1, 'Annapurna View', '4IBfU-favicon.jpg', '5Lt4Q-logo.png', 'KrMZj-logo_w.png', '', 'BPewc-slide-img2.jpg', 'diHTB-1920x512_bg7.jpg', 'we offer a range of services to ensure a comfortable and enjoyable stay, including spacious accommodations, delicious dining options, recreational activities, and business facilities.', 'aTE34-facilities.jpg', '', 'Annapurna View', 1, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3514.60939184222!2d83.94141847541118!3d28.249533175876106!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x399594a512b8e637%3A0x9bd5e98df383b865!2sHotel%20Annapurna%20View%20Sarangkot%20Pvt.%20Ltd.!5e0!3m2!1sen!2snp!4v1722600779501!5m2!1sen!2snp', 'aHQyy-map.jpg', 'Sarangkot, Pokhara, Nepal', 'Kathmandu ,Nepal', '977-061-506000 / 977-9860506786', '+1 800 889 9898', 'info@annapurnaview.com', '', '© Copyright {year}. All Rights Reserved.', 'Annapurna View', 'Annapurna View', 'Annapurna View', '', '', '#', 'User-agent: *\r\nDisallow: /cgi-bin/', '', 2, 'result.php', 'LmpYUF', 'LmpYUF', 'web', 'blue', '', '', 'Develop By Amit prajapati', 'Develop By Amit prajapati', 0, 'email@email.com', '2769', '', '(977)986-050-6786 ', '', '3SZGg-logo_w.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

CREATE TABLE `tbl_countries` (
  `id` int(3) NOT NULL,
  `country_name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_countries`
--

INSERT INTO `tbl_countries` (`id`, `country_name`, `status`) VALUES
(1, 'United States', 1),
(2, 'Canada', 1),
(3, 'Mexico', 1),
(4, 'Afghanistan', 1),
(5, 'Albania', 1),
(6, 'Algeria', 1),
(7, 'Andorra', 1),
(8, 'Angola', 1),
(9, 'Anguilla', 1),
(10, 'Antarctica', 1),
(11, 'Antigua and Barbuda', 1),
(12, 'Argentina', 1),
(13, 'Armenia', 1),
(14, 'Aruba', 1),
(15, 'Ascension Island', 1),
(16, 'Australia', 1),
(17, 'Austria', 1),
(18, 'Azerbaijan', 1),
(19, 'Bahamas', 1),
(20, 'Bahrain', 1),
(21, 'Bangladesh', 1),
(22, 'Barbados', 1),
(23, 'Belarus', 1),
(24, 'Belgium', 1),
(25, 'Belize', 1),
(26, 'Benin', 1),
(27, 'Bermuda', 1),
(28, 'Bhutan', 1),
(29, 'Bolivia', 1),
(30, 'Bophuthatswana', 1),
(31, 'Bosnia-Herzegovina', 1),
(32, 'Botswana', 1),
(33, 'Bouvet Island', 1),
(34, 'Brazil', 1),
(35, 'British Indian Ocean', 1),
(36, 'British Virgin Islands', 1),
(37, 'Brunei Darussalam', 1),
(38, 'Bulgaria', 1),
(39, 'Burkina Faso', 1),
(40, 'Burundi', 1),
(41, 'Cambodia', 1),
(42, 'Cameroon', 1),
(44, 'Cape Verde Island', 1),
(45, 'Cayman Islands', 1),
(46, 'Central Africa', 1),
(47, 'Chad', 1),
(48, 'Channel Islands', 1),
(49, 'Chile', 1),
(50, 'China, Peoples Republic', 1),
(51, 'Christmas Island', 1),
(52, 'Cocos (Keeling) Islands', 1),
(53, 'Colombia', 1),
(54, 'Comoros Islands', 1),
(55, 'Congo', 1),
(56, 'Cook Islands', 1),
(57, 'Costa Rica', 1),
(58, 'Croatia', 1),
(59, 'Cuba', 1),
(60, 'Cyprus', 1),
(61, 'Czech Republic', 1),
(62, 'Denmark', 1),
(63, 'Djibouti', 1),
(64, 'Dominica', 1),
(65, 'Dominican Republic', 1),
(66, 'Easter Island', 1),
(67, 'Ecuador', 1),
(68, 'Egypt', 1),
(69, 'El Salvador', 1),
(70, 'England', 1),
(71, 'Equatorial Guinea', 1),
(72, 'Estonia', 1),
(73, 'Ethiopia', 1),
(74, 'Falkland Islands', 1),
(75, 'Faeroe Islands', 1),
(76, 'Fiji', 1),
(77, 'Finland', 1),
(78, 'France', 1),
(79, 'French Guyana', 1),
(80, 'French Polynesia', 1),
(81, 'Gabon', 1),
(82, 'Gambia', 1),
(83, 'Georgia Republic', 1),
(84, 'Germany', 1),
(85, 'Gibraltar', 1),
(86, 'Greece', 1),
(87, 'Greenland', 1),
(88, 'Grenada', 1),
(89, 'Guadeloupe (French)', 1),
(90, 'Guatemala', 1),
(91, 'Guernsey Island', 1),
(92, 'Guinea Bissau', 1),
(93, 'Guinea', 1),
(94, 'Guyana', 1),
(95, 'Haiti', 1),
(96, 'Heard and McDonald Isls', 1),
(97, 'Honduras', 1),
(98, 'Hong Kong', 1),
(99, 'Hungary', 1),
(100, 'Iceland', 1),
(101, 'India', 1),
(102, 'Iran', 1),
(103, 'Iraq', 1),
(104, 'Ireland', 1),
(105, 'Isle of Man', 1),
(106, 'Israel', 1),
(107, 'Italy', 1),
(108, 'Ivory Coast', 1),
(109, 'Jamaica', 1),
(110, 'Japan', 1),
(111, 'Jersey Island', 1),
(112, 'Jordan', 1),
(113, 'Kazakhstan', 1),
(114, 'Kenya', 1),
(115, 'Kiribati', 1),
(116, 'Kuwait', 1),
(117, 'Laos', 1),
(118, 'Latvia', 1),
(119, 'Lebanon', 1),
(120, 'Lesotho', 1),
(121, 'Liberia', 1),
(122, 'Libya', 1),
(123, 'Liechtenstein', 1),
(124, 'Lithuania', 1),
(125, 'Luxembourg', 1),
(126, 'Macao', 1),
(127, 'Macedonia', 1),
(128, 'Madagascar', 1),
(129, 'Malawi', 1),
(130, 'Malaysia', 1),
(131, 'Maldives', 1),
(132, 'Mali', 1),
(133, 'Malta', 1),
(134, 'Martinique (French)', 1),
(135, 'Mauritania', 1),
(136, 'Mauritius', 1),
(137, 'Mayotte', 1),
(139, 'Micronesia', 1),
(140, 'Moldavia', 1),
(141, 'Monaco', 1),
(142, 'Mongolia', 1),
(143, 'Montenegro', 1),
(144, 'Montserrat', 1),
(145, 'Morocco', 1),
(146, 'Mozambique', 1),
(147, 'Myanmar', 1),
(148, 'Namibia', 1),
(149, 'Nauru', 1),
(150, 'Nepal', 1),
(151, 'Netherlands Antilles', 1),
(152, 'Netherlands', 1),
(153, 'New Caledonia (French)', 1),
(154, 'New Zealand', 1),
(155, 'Nicaragua', 1),
(156, 'Niger', 1),
(157, 'Niue', 1),
(158, 'Norfolk Island', 1),
(159, 'North Korea', 1),
(160, 'Northern Ireland', 1),
(161, 'Norway', 1),
(162, 'Oman', 1),
(163, 'Pakistan', 1),
(164, 'Panama', 1),
(165, 'Papua New Guinea', 1),
(166, 'Paraguay', 1),
(167, 'Peru', 1),
(168, 'Philippines', 1),
(169, 'Pitcairn Island', 1),
(170, 'Poland', 1),
(171, 'Polynesia (French)', 1),
(172, 'Portugal', 1),
(173, 'Qatar', 1),
(174, 'Reunion Island', 1),
(175, 'Romania', 1),
(176, 'Russia', 1),
(177, 'Rwanda', 1),
(178, 'S.Georgia Sandwich Isls', 1),
(179, 'Sao Tome, Principe', 1),
(180, 'San Marino', 1),
(181, 'Saudi Arabia', 1),
(182, 'Scotland', 1),
(183, 'Senegal', 1),
(184, 'Serbia', 1),
(185, 'Seychelles', 1),
(186, 'Shetland', 1),
(187, 'Sierra Leone', 1),
(188, 'Singapore', 1),
(189, 'Slovak Republic', 1),
(190, 'Slovenia', 1),
(191, 'Solomon Islands', 1),
(192, 'Somalia', 1),
(193, 'South Africa', 1),
(194, 'South Korea', 1),
(195, 'Spain', 1),
(196, 'Sri Lanka', 1),
(197, 'St. Helena', 1),
(198, 'St. Lucia', 1),
(199, 'St. Pierre Miquelon', 1),
(200, 'St. Martins', 1),
(201, 'St. Kitts Nevis Anguilla', 1),
(202, 'St. Vincent Grenadines', 1),
(203, 'Sudan', 1),
(204, 'Suriname', 1),
(205, 'Svalbard Jan Mayen', 1),
(206, 'Swaziland', 1),
(207, 'Sweden', 1),
(208, 'Switzerland', 1),
(209, 'Syria', 1),
(210, 'Tajikistan', 1),
(211, 'Taiwan', 1),
(212, 'Tahiti', 1),
(213, 'Tanzania', 1),
(214, 'Thailand', 1),
(215, 'Togo', 1),
(216, 'Tokelau', 1),
(217, 'Tonga', 1),
(218, 'Trinidad and Tobago', 1),
(219, 'Tunisia', 1),
(220, 'Turkmenistan', 1),
(221, 'Turks and Caicos Isls', 1),
(222, 'Tuvalu', 1),
(223, 'Uganda', 1),
(224, 'Ukraine', 1),
(225, 'United Arab Emirates', 1),
(226, 'Uruguay', 1),
(227, 'Uzbekistan', 1),
(228, 'Vanuatu', 1),
(229, 'Vatican City State', 1),
(230, 'Venezuela', 1),
(231, 'Vietnam', 1),
(232, 'Virgin Islands (Brit,1)', 1),
(233, 'Wales', 1),
(234, 'Wallis Futuna Islands', 1),
(235, 'Western Sahara', 1),
(236, 'Western Samoa', 1),
(237, 'Yemen', 1),
(238, 'Yugoslavia', 1),
(239, 'Zaire', 1),
(240, 'Zambia', 1),
(241, 'Zimbabwe', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_download`
--

CREATE TABLE `tbl_download` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` int(1) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `image` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_download`
--

INSERT INTO `tbl_download` (`id`, `slug`, `title`, `status`, `sortorder`, `image`) VALUES
(1, 'asdasd', 'asdasd', 1, 1, 'T8z6W-abs.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_events`
--

CREATE TABLE `tbl_events` (
  `id` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `brief` tinytext NOT NULL,
  `content` text NOT NULL,
  `image` mediumtext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `event_stdate` date NOT NULL,
  `event_endate` date NOT NULL,
  `type` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_gr` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `content_gr` text NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_faq`
--

INSERT INTO `tbl_faq` (`id`, `title`, `title_gr`, `content`, `content_gr`, `status`, `sortorder`, `added_date`) VALUES
(2, 'What are the services available?', '', '<p>\r\n	Fax/Photocopying, Laundry, Meeting/Banquet Facilities, Currency Exchange, Tour Desk, Business Centre, Ironing Service, Car Hire, Ticket Service, Souvenirs/Gift Shop, Concierge Service,Airport Shuttle (surcharge), Bicycle Rental, Shuttle Service (surcharge)</p>\r\n', '', 1, 12, '2023-08-28 11:17:00'),
(3, 'What are the activities guests can enjoy?', '', '<p>\r\n	Nagarkot is a tranquil place where guests can escape the chaos and the hectic demands of the city life. While many guests prefer to enjoy the natural beauty of the surroundings by taking long walks, watching the sunrise and sunsets and enjoying a quite drink at our cozy bar, the hotel also offer activities such as :Massage, Spa &amp; Wellness Center, Cycling (booking shall be made in advance), Hiking, Library, Indoor Swimming Pool etc.</p>\r\n', '', 1, 3, '2023-08-29 11:44:10'),
(4, 'What are the amenities and facilities in the hotel?', '', '<p>\r\n	Area shuttle (surcharge) &ndash; Bar/lounge- Total number of rooms 68 &ndash; Number of floors 5 &ndash; Number of buildings 2- Free Wi-fi ( Lobby area only)- Restaurant(s) in hotel- 1 Swimming pool &ndash; indoor &ndash; Spa &ndash; Rooftop sun deck- Souvenir shops- Helipad- Hot tub- Library- Multiple small meeting rooms &ndash; Multiple conference/ meeting rooms &ndash; Event catering &ndash; Banquet facilities &ndash; Concierge- Town Car Service available &ndash; Security guard &ndash; Multilingual staff &ndash; 24-hour front desk &ndash; Currency exchange &ndash; Parking</p>\r\n', '', 1, 2, '2023-08-29 11:44:28'),
(6, 'Internet', '', '<p>\r\n	Free! Wi-fi is available in public areas and is free of charge.</p>\r\n', '', 1, 0, '2023-09-15 11:22:44'),
(7, 'Parking', '', '<p>\r\n	Free! Free private parking is possible on site (reservation is needed).</p>\r\n', '', 1, 1, '2023-09-15 11:23:01'),
(8, 'How do I get to the hotel?', '', '<p>\r\n	Nagarkot is 32 kilometers East of Kathmandu. From the Tribhuvan International Airport, guests can easily hire a taxi. It costs around 3500 Nepali rupees ( this is an approximate figure and subject to change) one-way. If you are already in Kathmandu or elsewhere, your hotel can easily arrange a private car or taxi. If you&#39;d like assistance, it is best to email us at ambassador@ambassador.com.np or call us at 977-1-6680080/46. To read more about transportation you may also visit the Lonely Planet site.</p>\r\n', '', 1, 4, '2023-09-15 11:23:55'),
(9, 'What are the things to do in Nagarkot?', '', '<p>\r\n	<span style=\"color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">Locals visit Nagarkot through out the year as it is the perfect escape from the hustle and bustle of Kathmandu city; but October- March is probably the time when guests enjoy clear views of the mountain ranges.</span><br style=\"box-sizing: border-box; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\" />\r\n	<span style=\"color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">According to TripAdvisor.com following are the 5 good reasons to visit Nagarkot:</span></p>\r\n<ol style=\"box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 30px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		1. For those longing for some really refreshing environment to be free from hectic busy schedules in the crowded Kathmandu.Nagarkot provides a scenic beauty and divine peace far from heat, dust, smoke and city&rsquo;s hustle bustle.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		2. Nagarkot is the nearest point from the Kathmandu valley from where on a clear day, the view of Mount Everest can be seen.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		3. Nagarkot is ideal hilltop venue to acclimatize for high altitude adventures as it is located at 7200 ft above sea level.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		4. It is the transit point for Helambu and Lang-tang trekking.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		5. Nagarkot is also a good point for mini-trekking. There are several treks possible to and from Nagarkot such as sankhu, changu Narayan, Dhulikhel, Sundarijal, Nala, etc.</li>\r\n</ol>\r\n', '', 1, 10, '2023-09-15 11:24:12'),
(10, 'We guarantee', '', '<ol style=\"box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 30px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		1. Booking is safe. When you book with us your details are protected by a secure connection.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		2. Best Price Guarantee. Found your room online at a lower price (exact date and same terms &amp; conditions)? We&rsquo;ll match it. Email <a href=\"mailto:pam@acehotelsnepal.com\">pam@acehotelsnepal.com</a>.</li>\r\n</ol>\r\n', '', 1, 5, '2023-09-15 11:24:26'),
(11, 'What are the accepted credit cards?', '', '<p>\r\n	<span style=\"color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">Visa, Euro/Mastercard/ AMEX</span></p>\r\n<ol style=\"box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 30px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		1. A credit card number is required to confirm the booking.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		2. Prepayment for full duration of stay will be charged at the time of booking.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		3. 100% deposit will be refunded in the event of cancellation / modification 7 days prior to arrival date.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		4. Any cancellation less than 7 days notification, 50% of amount paid will be refunded.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		5. Prepayment will not be refunded for No-shows.</li>\r\n</ol>\r\n', '', 1, 6, '2023-09-15 11:24:38'),
(12, 'Pets', '', '<p>\r\n	<span style=\"color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">Pets are not allowed.</span></p>\r\n', '', 1, 7, '2023-09-15 11:24:49'),
(13, 'What are the Hotel Policies?', '', '<p style=\"text-align: left;\">\r\n	Check-in: 2:00 pm</p>\r\n<p style=\"text-align: left;\">\r\n	Check-out: 12:00 noon</p>\r\n<ul style=\"list-style-type:circle; text-align: left;\">\r\n	<li>\r\n		Rates are subjected to 13% VAT and 10% services charge.</li>\r\n	<li>\r\n		Note that children age 11 and older are charged the adult rate.</li>\r\n	<li>\r\n		Please include them in the number entered in the No. of Adults box.</li>\r\n	<li>\r\n		All rates quoted are subject to change without prior notice.</li>\r\n	<li>\r\n		Should you wish to change an existing reservation, you are required to cancel the existing booking and proceed to create a new reservation.This may be done by visiting our website.</li>\r\n	<li>\r\n		Should you wish to cancel an existing reservation, simply click on the reservation link at our</li>\r\n</ul>\r\n', '', 1, 8, '2023-09-15 11:25:00'),
(14, 'When is the best time to visit?', '', '<p>\r\n	<span style=\"color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">Locals visit Nagarkot through out the year as it is the perfect escape from the hustle and bustle of Kathmandu city; but October- March is probably the time when guests enjoy clear views of the mountain ranges.</span></p>\r\n', '', 1, 11, '2023-09-15 11:25:11'),
(15, 'What is the weather in Nagarkot like ?', '', '<p>\r\n	<span style=\"color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">Nagarkot is very windy throughout the year, so always bring a wind cheater, a cap, glove, cold cream or lip guard, sunglasses and light walking shoes. Don&#39;t forget your binocular &amp; camera to catch the view. Avoid loose flying skirts and sarees unless you want a Marilyne Monroe experience!</span></p>\r\n<div class=\"table-responsive\">\r\n	<table class=\"table table-bordered\">\r\n		<tbody style=\"box-sizing: border-box;\">\r\n			<tr style=\"box-sizing: border-box;\">\r\n				<td>\r\n					&nbsp;</td>\r\n				<td>\r\n					&nbsp;Max<span class=\"Apple-tab-span\" style=\"box-sizing: border-box; white-space: pre;\"> </span></td>\r\n				<td style=\"box-sizing: border-box; padding: 0px; text-align: center;\">\r\n					&nbsp; Min</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;</td>\r\n			</tr>\r\n			<tr style=\"box-sizing: border-box;\" width=\"40%\">\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;Jan- March (Winter)<span class=\"Apple-tab-span\" style=\"box-sizing: border-box; white-space: pre;\"> </span></td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;15 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;4 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;warm woolens with head cover</td>\r\n			</tr>\r\n			<tr style=\"box-sizing: border-box;\" width=\"20%\">\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;April-June (Spring / summer)<span class=\"Apple-tab-span\" style=\"box-sizing: border-box; white-space: pre;\"> </span></td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;25 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					15 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;wind cheater, umbrella raincoat, light cap</td>\r\n			</tr>\r\n			<tr style=\"box-sizing: border-box;\" width=\"20%\">\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;July &ndash; Sept (Monsoon / Autumn)<span class=\"Apple-tab-span\" style=\"box-sizing: border-box; white-space: pre;\"> </span></td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;28 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					15 o C<span class=\"Apple-tab-span\" style=\"box-sizing: border-box; white-space: pre;\"> </span></td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;light wind cheater umbrella, raincoat,Light cap</td>\r\n			</tr>\r\n			<tr style=\"box-sizing: border-box;\" width=\"30%\">\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;Oct- Dec (Winter)<span class=\"Apple-tab-span\" style=\"box-sizing: border-box; white-space: pre;\"> </span></td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;15 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;2 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;very heavy woolens</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', 1, 9, '2023-09-15 11:25:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_features`
--

CREATE TABLE `tbl_features` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `parentId` int(1) NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL,
  `brief` text NOT NULL,
  `icon` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_features`
--

INSERT INTO `tbl_features` (`id`, `title`, `parentId`, `image`, `brief`, `icon`, `status`, `sortorder`, `added_date`) VALUES
(121, 'Twin Bed', 119, 'EWNlQ-Bed.svg', '', '', 1, 1, '2024-08-23 10:34:07'),
(122, 'Breakfast', 119, 'V8bMC-Cup.svg', '', '', 1, 2, '2024-08-23 10:34:24'),
(123, 'Bathrobe & Slippers', 119, '1AGFR-Flip Flops.svg', '', '', 1, 3, '2024-08-23 10:34:43'),
(124, 'Hairdryer', 119, 'Up1AY-HairDryer.svg', '', '', 1, 4, '2024-08-23 10:35:10'),
(125, 'Bathtub', 119, 'GTyzv-Bathtub.svg', '', '', 1, 5, '2024-08-23 10:35:23'),
(126, 'Sitting Area', 119, 'WWcyw-Sofa.svg', '', '', 1, 6, '2024-08-23 10:35:33'),
(127, 'Desk', 119, 'aWKvX-Table.svg', '', '', 1, 7, '2024-08-23 10:35:42'),
(128, 'Mountains View', 119, 'TbEfW-Mountain1.svg', '', '', 1, 8, '2024-08-23 10:36:13'),
(119, 'Room Amenities', 0, '8JHLK-C-Fold Leaflet.png', '', '', 1, 1, '2024-08-23 10:32:59'),
(129, 'Wifi', 119, 'ph9e4-wifi.png', '', '', 1, 9, '2024-08-23 10:36:37'),
(130, 'Air Conditioner', 119, 'mP08I-air-conditioner.png', '', '', 1, 10, '2024-08-23 10:36:48'),
(131, 'Television', 119, '4Nmmz-television.png', '', '', 1, 11, '2024-08-23 10:37:00'),
(132, 'Safe locker', 119, 'oZq4B-safe.png', '', '', 1, 12, '2024-08-23 10:37:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_galleries`
--

CREATE TABLE `tbl_galleries` (
  `id` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `image` varchar(50) NOT NULL,
  `detail` varchar(200) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_galleries`
--

INSERT INTO `tbl_galleries` (`id`, `slug`, `title`, `image`, `detail`, `status`, `sortorder`, `registered`, `type`) VALUES
(6, 'rooms', 'rooms', 't36co-gal-rom-1.jpg', '', 1, 3, '2023-09-04 13:01:57', 1),
(8, 'hall', 'hall', 'q3Ihe-hall-2.jpg', '', 1, 1, '2023-09-04 13:03:45', 1),
(9, 'dining', 'Dining', '4fj0C-re-2.jpg', '', 1, 2, '2023-09-04 13:04:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery_images`
--

CREATE TABLE `tbl_gallery_images` (
  `id` int(11) NOT NULL,
  `galleryid` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `detail` varchar(200) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_gallery_images`
--

INSERT INTO `tbl_gallery_images` (`id`, `galleryid`, `title`, `image`, `status`, `detail`, `sortorder`, `registered`) VALUES
(175, 6, 'room 1', 'B2shB-wall2.png', 1, '', 1, '2024-08-23 16:51:02'),
(176, 6, 'room 2', 'COfhj-wall1.png', 1, '', 2, '2024-08-23 16:51:02'),
(177, 9, 'dining 1', '4hFpg-wall3.png', 1, '', 1, '2024-08-23 16:51:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group_type`
--

CREATE TABLE `tbl_group_type` (
  `id` int(11) NOT NULL,
  `group_name` varchar(50) NOT NULL,
  `group_type` varchar(20) NOT NULL,
  `authority` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=>Frontend,2=>Personality,3=>Backend,4=>Both',
  `description` tinytext NOT NULL,
  `status` tinyint(4) NOT NULL,
  `permission` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_group_type`
--

INSERT INTO `tbl_group_type` (`id`, `group_name`, `group_type`, `authority`, `description`, `status`, `permission`) VALUES
(1, 'Administrator', '1', 1, '', 1, 'a:26:{i:0;s:2:\"74\";i:1;s:3:\"306\";i:2;s:1:\"1\";i:3;s:1:\"2\";i:4;s:1:\"3\";i:5;s:1:\"4\";i:6;s:2:\"25\";i:7;s:2:\"23\";i:8;s:2:\"24\";i:9;s:2:\"20\";i:10;s:1:\"5\";i:11;s:2:\"11\";i:12;s:2:\"17\";i:13;s:3:\"303\";i:14;s:3:\"302\";i:15;s:3:\"309\";i:16;s:2:\"27\";i:17;s:3:\"300\";i:18;s:3:\"301\";i:19;s:2:\"19\";i:20;s:2:\"28\";i:21;s:2:\"12\";i:22;s:2:\"16\";i:23;s:2:\"15\";i:24;s:2:\"14\";i:25;s:2:\"13\";}'),
(2, 'General Admin', '1', 1, '', 1, 'a:22:{i:0;s:2:\"74\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";i:4;s:2:\"25\";i:5;s:2:\"23\";i:6;s:2:\"24\";i:7;s:1:\"4\";i:8;s:3:\"302\";i:9;s:3:\"303\";i:10;s:1:\"5\";i:11;s:2:\"27\";i:12;s:3:\"300\";i:13;s:3:\"301\";i:14;s:2:\"11\";i:15;s:2:\"17\";i:16;s:2:\"20\";i:17;s:2:\"19\";i:18;s:2:\"28\";i:19;s:2:\"12\";i:20;s:2:\"14\";i:21;s:2:\"13\";}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs`
--

CREATE TABLE `tbl_logs` (
  `id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `registered` varchar(50) NOT NULL,
  `userid` int(11) NOT NULL,
  `user_action` int(11) NOT NULL,
  `ip_track` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_logs`
--

INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(1, 'Log has been cleared.', '2023-06-22 16:11:02', 1, 6, '::1'),
(2, 'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.', '2023-06-22 16:25:42', 1, 4, '::1'),
(3, 'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.', '2023-06-22 16:26:17', 1, 4, '::1'),
(4, 'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.', '2023-06-22 16:30:56', 1, 4, '::1'),
(5, 'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.', '2023-06-22 16:32:30', 1, 4, '::1'),
(6, 'Login: Hotel Shangrila Blu   logged in.', '2023-08-28 12:01:38', 1, 1, '::1'),
(7, 'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.', '2023-08-28 12:05:23', 1, 4, '::1'),
(8, 'Menu [ROOMS & SUITES] Edit Successfully', '2023-08-29 11:03:06', 1, 4, '::1'),
(9, 'Menu [mice] Edit Successfully', '2023-08-29 11:03:42', 1, 4, '::1'),
(10, 'Menu [MICE] Edit Successfully', '2023-08-29 11:03:51', 1, 4, '::1'),
(11, 'Menu [HOME] Edit Successfully', '2023-08-29 11:04:00', 1, 4, '::1'),
(12, 'Menu [ABOUT US] Edit Successfully', '2023-08-29 11:04:08', 1, 4, '::1'),
(13, 'Menu [RESTAURANTS & SHOPS] Edit Successfully', '2023-08-29 11:04:43', 1, 4, '::1'),
(14, 'Menu [FACILITIES] Edit Successfully', '2023-08-29 11:04:56', 1, 4, '::1'),
(15, 'Menu [GALLERY] Edit Successfully', '2023-08-29 11:05:11', 1, 4, '::1'),
(16, 'Menu [CAREER] CreatedData has added successfully.', '2023-08-29 11:05:42', 1, 3, '::1'),
(17, 'Menu [CONTACT US] Edit Successfully', '2023-08-29 11:06:03', 1, 4, '::1'),
(18, 'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.', '2023-08-29 11:18:34', 1, 4, '::1'),
(19, 'Changes on Article \'About Us\' has been saved successfully.', '2023-08-29 12:02:58', 1, 4, '::1'),
(20, 'Menu [MICE] Edit Successfully', '2023-08-29 12:05:39', 1, 4, '::1'),
(21, 'Menu [RESTAURANTS & SHOPS] Edit Successfully', '2023-08-29 12:05:45', 1, 4, '::1'),
(22, 'Package [Mice]Data has added successfully.', '2023-08-29 12:22:54', 1, 3, '::1'),
(23, 'Menu [MICE] Edit Successfully', '2023-08-29 12:24:54', 1, 4, '::1'),
(24, 'Sub Package \'Bhaktapur Hall\' has added successfully.', '2023-08-29 13:03:28', 1, 3, '::1'),
(25, 'Changes on Sub Package \'Bhaktapur Hall\' has been saved successfully.', '2023-08-29 13:05:03', 1, 4, '::1'),
(26, 'Login: Hotel Shangrila Blu   logged in.', '2023-08-29 13:16:34', 1, 1, '::1'),
(27, 'Sub Package Image [b]Data has added successfully.', '2023-08-29 13:16:58', 1, 3, '::1'),
(28, 'Sub Package Image [bb]Data has added successfully.', '2023-08-29 13:16:58', 1, 3, '::1'),
(29, 'Sub Package Image [b]Data has added successfully.', '2023-08-29 13:16:58', 1, 3, '::1'),
(30, 'Package [Other Services]Data has deleted successfully.', '2023-08-29 14:31:10', 1, 6, '::1'),
(31, 'Package [Dining]Data has added successfully.', '2023-08-29 14:33:04', 1, 3, '::1'),
(32, 'Sub Package \'Kantipur Restaurant\' has added successfully.', '2023-08-29 14:35:35', 1, 3, '::1'),
(33, 'Sub Package Image [k]Data has added successfully.', '2023-08-29 14:36:06', 1, 3, '::1'),
(34, 'Sub Package Image [k]Data has added successfully.', '2023-08-29 14:36:06', 1, 3, '::1'),
(35, 'Sub Package Image [k]Data has added successfully.', '2023-08-29 14:36:06', 1, 3, '::1'),
(36, 'Sub Package \'Nagarkot Hall\' has added successfully.', '2023-08-29 14:53:38', 1, 3, '::1'),
(37, 'Sub Package Image [n]Data has added successfully.', '2023-08-29 14:54:22', 1, 3, '::1'),
(38, 'Sub Package Image [nn]Data has added successfully.', '2023-08-29 14:54:22', 1, 3, '::1'),
(39, 'Sub Package Image [n]Data has added successfully.', '2023-08-29 14:54:22', 1, 3, '::1'),
(40, 'Menu [yfty] CreatedData has added successfully.', '2023-08-29 15:05:34', 1, 3, '::1'),
(41, 'Menu  [yfty]Data has deleted successfully.', '2023-08-29 15:05:49', 1, 6, '::1'),
(42, 'Changes on Sub Package \'Deluxe Premium\' has been saved successfully.', '2023-08-30 12:48:44', 1, 4, '::1'),
(43, 'SubPackage Gallery Image [Super Deluxe King Room]Data has deleted successfully.', '2023-08-30 13:04:50', 1, 6, '::1'),
(44, 'SubPackage Gallery Image [Super Deluxe King Room]Data has deleted successfully.', '2023-08-30 13:04:56', 1, 6, '::1'),
(45, 'SubPackage Gallery Image [Super Deluxe King Room]Data has deleted successfully.', '2023-08-30 13:05:15', 1, 6, '::1'),
(46, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-30 13:05:17', 1, 6, '::1'),
(47, 'SubPackage Gallery Image [Super Deluxe King Room]Data has deleted successfully.', '2023-08-30 13:05:17', 1, 6, '::1'),
(48, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-30 13:05:21', 1, 6, '::1'),
(49, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-30 13:05:21', 1, 6, '::1'),
(50, 'SubPackage Gallery Image [Super Deluxe King Room]Data has deleted successfully.', '2023-08-30 13:05:21', 1, 6, '::1'),
(51, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-30 13:05:25', 1, 6, '::1'),
(52, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-30 13:05:25', 1, 6, '::1'),
(53, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-30 13:05:25', 1, 6, '::1'),
(54, 'SubPackage Gallery Image [Super Deluxe King Room]Data has deleted successfully.', '2023-08-30 13:05:25', 1, 6, '::1'),
(55, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-30 13:05:27', 1, 6, '::1'),
(56, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-30 13:05:27', 1, 6, '::1'),
(57, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-30 13:05:27', 1, 6, '::1'),
(58, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-30 13:05:27', 1, 6, '::1'),
(59, 'SubPackage Gallery Image [Super Deluxe King Room]Data has deleted successfully.', '2023-08-30 13:05:27', 1, 6, '::1'),
(60, 'Sub Package Image [del]Data has added successfully.', '2023-08-30 13:05:51', 1, 3, '::1'),
(61, 'Sub Package Image [del]Data has added successfully.', '2023-08-30 13:05:51', 1, 3, '::1'),
(62, 'Sub Package Image [del]Data has added successfully.', '2023-08-30 13:05:51', 1, 3, '::1'),
(63, 'Changes on Sub Package \'Super Deluxe King Room\' has been saved successfully.', '2023-08-30 13:06:31', 1, 4, '::1'),
(64, 'Changes on Sub Package \'Super Deluxe King Room\' has been saved successfully.', '2023-08-30 13:07:26', 1, 4, '::1'),
(65, 'Login: Hotel Shangrila Blu   logged in.', '2023-08-31 17:26:22', 1, 1, '::1'),
(66, 'Blog  [asdasd]Data has deleted successfully.', '2023-08-31 17:53:51', 1, 6, '::1'),
(67, 'Blog [test 1]Data has added successfully.', '2023-08-31 17:54:29', 1, 3, '::1'),
(68, 'Blog  [Options and basic details about Atithi Suites or Things to know about Atithi Suites]Data has ', '2023-08-31 18:14:39', 1, 6, '::1'),
(69, 'User [Hotel Shangrila Blu  ] Edit Successfully', '2023-08-31 18:56:24', 1, 4, '::1'),
(70, 'Changes on FAQ \'Do you have any discount code\' has been saved successfully.', '2023-08-31 18:56:39', 1, 4, '::1'),
(71, 'User [Hotel Shangrila Blu  ] Edit Successfully', '2023-09-01 07:52:37', 1, 4, '::1'),
(72, 'Changes on Article \'Pashupatinath Temple\' has been saved successfully.', '2023-09-01 07:52:56', 1, 4, '::1'),
(73, 'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.', '2023-09-01 07:56:06', 1, 4, '::1'),
(74, 'User [Hotel Shangrila Blu  ] Edit Successfully', '2023-09-01 08:35:19', 1, 4, '::1'),
(75, 'Menu [CAREER] Edit Successfully', '2023-09-01 08:37:21', 1, 4, '::1'),
(76, 'Login: Hotel Shangrila Blu   logged in.', '2023-09-01 18:31:39', 1, 1, '::1'),
(77, 'Slideshow  [Bedroom]Data has deleted successfully.', '2023-09-01 18:31:54', 1, 6, '::1'),
(78, 'Slideshow  [Dining]Data has deleted successfully.', '2023-09-01 18:31:54', 1, 6, '::1'),
(79, 'Slideshow  [Food]Data has deleted successfully.', '2023-09-01 18:31:54', 1, 6, '::1'),
(80, 'Package [What\'s New]Data has deleted successfully.', '2023-09-01 18:39:41', 1, 6, '::1'),
(81, 'Login: Hotel Shangrila Blu   logged in.', '2023-09-01 19:28:56', 1, 1, '::1'),
(82, 'User [Hotel Shangrila Blu  ] Edit Successfully', '2023-09-01 19:29:05', 1, 4, '::1'),
(83, 'Article \'test 1\' has added successfully.', '2023-09-01 19:31:43', 1, 3, '::1'),
(84, 'Article \'Spa\' has added successfully.', '2023-09-03 12:16:37', 1, 3, '::1'),
(85, 'Articles  [Spa]Data has deleted successfully.', '2023-09-03 12:16:48', 1, 6, '::1'),
(86, 'Article \'spa \' has added successfully.', '2023-09-03 12:17:00', 1, 3, '::1'),
(87, 'Articles  [spa ]Data has deleted successfully.', '2023-09-03 12:17:08', 1, 6, '::1'),
(88, 'Article \'asd\' has added successfully.', '2023-09-03 12:18:50', 1, 3, '::1'),
(89, 'Articles  [asd]Data has deleted successfully.', '2023-09-03 12:18:58', 1, 6, '::1'),
(90, 'Article \'AS\' has added successfully.', '2023-09-03 12:26:04', 1, 3, '::1'),
(91, 'Articles  [AS]Data has deleted successfully.', '2023-09-03 12:26:15', 1, 6, '::1'),
(92, 'Article \'sda\' has added successfully.', '2023-09-03 12:28:59', 1, 3, '::1'),
(93, 'Articles  [sda]Data has deleted successfully.', '2023-09-03 12:29:11', 1, 6, '::1'),
(94, 'Article \'asdasd\' has added successfully.', '2023-09-03 12:33:54', 1, 3, '::1'),
(95, 'Articles  [asdasd]Data has deleted successfully.', '2023-09-03 12:34:03', 1, 6, '::1'),
(96, 'Article \'asd\' has added successfully.', '2023-09-03 12:36:50', 1, 3, '::1'),
(97, 'Article \'asdasd\' has added successfully.', '2023-09-03 12:37:51', 1, 3, '::1'),
(98, 'Articles  []Data has deleted successfully.', '2023-09-03 12:39:32', 1, 6, '::1'),
(99, 'Article \'asd\' has added successfully.', '2023-09-03 12:39:41', 1, 3, '::1'),
(100, 'Article \'asdas\' has added successfully.', '2023-09-03 12:42:56', 1, 3, '::1'),
(101, 'Articles  []Data has deleted successfully.', '2023-09-03 12:46:54', 1, 6, '::1'),
(102, 'Article \'awwesxwe\' has added successfully.', '2023-09-03 12:47:20', 1, 3, '::1'),
(103, 'Article \'wszxe\' has added successfully.', '2023-09-03 12:47:40', 1, 3, '::1'),
(104, 'Articles  []Data has deleted successfully.', '2023-09-03 12:49:36', 1, 6, '::1'),
(105, 'Article \'asdasd\' has added successfully.', '2023-09-03 12:49:59', 1, 3, '::1'),
(106, 'Changes on Article \'asdasdasdasd\' has been saved successfully.', '2023-09-03 12:50:07', 1, 4, '::1'),
(107, 'Article \'asdasd\' has added successfully.', '2023-09-03 12:50:28', 1, 3, '::1'),
(108, 'Articles  [Experience Hospitality The Nepalese Way]Data has deleted successfully.', '2023-09-03 12:51:20', 1, 6, '::1'),
(109, 'Changes on Article \'asdasdasdasd\' has been saved successfully.', '2023-09-03 13:08:55', 1, 4, '::1'),
(110, 'Changes on Article \'SPA\' has been saved successfully.', '2023-09-03 13:22:04', 1, 4, '::1'),
(111, 'Article \'Pool & Jacuzzi\' has added successfully.', '2023-09-03 14:08:35', 1, 3, '::1'),
(112, 'Articles  [test 1]Data has deleted successfully.', '2023-09-03 14:23:22', 1, 6, '::1'),
(113, 'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.', '2023-09-03 14:24:04', 1, 4, '::1'),
(114, 'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.', '2023-09-03 14:24:27', 1, 4, '::1'),
(115, 'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.', '2023-09-03 14:25:06', 1, 4, '::1'),
(116, 'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.', '2023-09-03 14:26:56', 1, 4, '::1'),
(117, 'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.', '2023-09-03 14:29:42', 1, 4, '::1'),
(118, 'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.', '2023-09-03 14:30:17', 1, 4, '::1'),
(119, 'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.', '2023-09-03 14:31:29', 1, 4, '::1'),
(120, 'Login: Hotel Shangrila Blu   logged in.', '2023-09-03 15:02:51', 1, 1, '::1'),
(121, 'Vacency [backend]Data has added successfully.', '2023-09-03 15:03:21', 1, 3, '::1'),
(122, 'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.', '2023-09-03 15:33:53', 1, 4, '::1'),
(123, 'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.', '2023-09-03 15:34:30', 1, 4, '::1'),
(124, 'Menu [ABOUT US] Edit Successfully', '2023-09-03 15:40:48', 1, 4, '::1'),
(125, 'Menu [ABOUT US] Edit Successfully', '2023-09-03 15:42:22', 1, 4, '::1'),
(126, 'Changes on Article \'About Us\' has been saved successfully.', '2023-09-03 15:44:15', 1, 4, '::1'),
(127, 'Articles  [About Us]Data has deleted successfully.', '2023-09-03 15:53:17', 1, 6, '::1'),
(128, 'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.', '2023-09-03 15:53:38', 1, 4, '::1'),
(129, 'Article \'about us\' has added successfully.', '2023-09-03 15:53:53', 1, 3, '::1'),
(130, 'Changes on Article \'about us\' has been saved successfully.', '2023-09-03 15:58:02', 1, 4, '::1'),
(131, 'Changes on Article \'about us\' has been saved successfully.', '2023-09-03 16:47:36', 1, 4, '::1'),
(132, 'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.', '2023-09-03 16:48:20', 1, 4, '::1'),
(133, 'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.', '2023-09-03 16:51:46', 1, 4, '::1'),
(134, 'User [Hotel Shangrila Blu  ] Edit Successfully', '2023-09-03 17:44:39', 1, 4, '::1'),
(135, 'Popup \'sdad\' has added successfully.', '2023-09-03 17:44:58', 1, 3, '::1'),
(136, 'Slideshow [Exterior] Edit Successfully', '2023-09-03 17:53:20', 1, 4, '::1'),
(137, 'Slideshow [Exterior] Edit Successfully', '2023-09-03 17:54:35', 1, 4, '::1'),
(138, 'Slideshow [By Ace Hotel] Edit Successfully', '2023-09-03 17:55:07', 1, 4, '::1'),
(139, 'Slideshow [By Ace Hotel] Edit Successfully', '2023-09-03 17:56:34', 1, 4, '::1'),
(140, 'Changes on Sub Package \'Kantipur Restaurant\' has been saved successfully.', '2023-09-03 20:17:48', 1, 4, '::1'),
(141, 'Changes on Sub Package \'Bhaktapur Hall\' has been saved successfully.', '2023-09-03 20:22:12', 1, 4, '::1'),
(142, 'Gallery Image  [Home page]Data has deleted successfully.', '2023-09-03 20:26:24', 1, 6, '::1'),
(143, 'Gallery Image  []Data has deleted successfully.', '2023-09-03 20:26:26', 1, 6, '::1'),
(144, 'Gallery Image  [Hotel]Data has deleted successfully.', '2023-09-03 20:26:26', 1, 6, '::1'),
(145, 'Gallery Image  []Data has deleted successfully.', '2023-09-03 20:26:28', 1, 6, '::1'),
(146, 'Gallery Image  []Data has deleted successfully.', '2023-09-03 20:26:28', 1, 6, '::1'),
(147, 'Gallery Image  [Rooms]Data has deleted successfully.', '2023-09-03 20:26:28', 1, 6, '::1'),
(148, 'Gallery Image  []Data has deleted successfully.', '2023-09-03 20:26:30', 1, 6, '::1'),
(149, 'Gallery Image  []Data has deleted successfully.', '2023-09-03 20:26:30', 1, 6, '::1'),
(150, 'Gallery Image  []Data has deleted successfully.', '2023-09-03 20:26:30', 1, 6, '::1'),
(151, 'Gallery Image  [Dining]Data has deleted successfully.', '2023-09-03 20:26:30', 1, 6, '::1'),
(152, 'Gallery Image  []Data has deleted successfully.', '2023-09-03 20:26:32', 1, 6, '::1'),
(153, 'Gallery Image  []Data has deleted successfully.', '2023-09-03 20:26:32', 1, 6, '::1'),
(154, 'Gallery Image  []Data has deleted successfully.', '2023-09-03 20:26:32', 1, 6, '::1'),
(155, 'Gallery Image  []Data has deleted successfully.', '2023-09-03 20:26:32', 1, 6, '::1'),
(156, 'Gallery Image  [Event Hall]Data has deleted successfully.', '2023-09-03 20:26:32', 1, 6, '::1'),
(157, 'Blog  [test 1]Data has deleted successfully.', '2023-09-03 20:26:38', 1, 6, '::1'),
(158, 'Blog  []Data has deleted successfully.', '2023-09-03 20:26:40', 1, 6, '::1'),
(159, 'Blog  [Festivals in Lalitpur]Data has deleted successfully.', '2023-09-03 20:26:40', 1, 6, '::1'),
(160, 'Blog  []Data has deleted successfully.', '2023-09-03 20:26:42', 1, 6, '::1'),
(161, 'Blog  []Data has deleted successfully.', '2023-09-03 20:26:42', 1, 6, '::1'),
(162, 'Blog  [History of Shangrila Blu]Data has deleted successfully.', '2023-09-03 20:26:42', 1, 6, '::1'),
(163, 'User [ClubHimalaya  ] Edit Successfully', '2023-09-03 20:27:05', 1, 4, '::1'),
(164, 'Login: ClubHimalaya   logged in.', '2023-09-03 20:27:10', 1, 1, '::1'),
(165, 'Services [Panoramic Views]Data has added successfully.', '2023-09-03 20:41:45', 1, 3, '::1'),
(166, 'Changes on Sub Package \'Super Deluxe King Room\' has been saved successfully.', '2023-09-03 20:44:24', 1, 4, '::1'),
(167, 'Sub Package \'asd\' has added successfully.', '2023-09-03 20:51:34', 1, 3, '::1'),
(168, 'Sub Package [asd]Data has deleted successfully.', '2023-09-03 20:51:50', 1, 6, '::1'),
(169, 'Changes on Sub Package \'Super Deluxe King Room\' has been saved successfully.', '2023-09-03 20:51:54', 1, 4, '::1'),
(170, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-09-03 21:04:29', 1, 4, '::1'),
(171, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-09-03 21:06:24', 1, 4, '::1'),
(172, 'Login: ClubHimalaya   logged in.', '2023-09-04 10:28:34', 1, 1, '27.34.84.147'),
(173, 'Login: ClubHimalaya   logged in.', '2023-09-04 11:53:03', 1, 1, '27.34.84.147'),
(174, 'Blog [Brief On Club Himalaya]Data has added successfully.', '2023-09-04 11:54:01', 1, 3, '27.34.84.147'),
(175, 'Blog [Excursions to nearby places]Data has added successfully.', '2023-09-04 11:54:38', 1, 3, '27.34.84.147'),
(176, 'Blog [Places-of-interest]Data has added successfully.', '2023-09-04 11:55:59', 1, 3, '27.34.84.147'),
(177, 'Blog [test 1]Data has added successfully.', '2023-09-04 11:56:28', 1, 3, '27.34.84.147'),
(178, 'Blog [qwseasdas]Data has added successfully.', '2023-09-04 12:25:01', 1, 3, '27.34.84.147'),
(179, 'Services  [All Cards Accepted]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(180, 'Services  [Doctor on Call]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(181, 'Services  [Currency Exchange]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(182, 'Services  [Event Halls]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(183, 'Services  [Electricity Backup]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(184, 'Services  [Hot & Cold Water]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(185, 'Services  [Safe Locker]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(186, 'Services  [Laundry Service]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(187, 'Services  [International Standard A/C Rooms]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(188, 'Services  [Daily House Keeping]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(189, 'Services  [Mini-Bar<br>on request]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(190, 'Services  [Underground Parking]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(191, 'Services  [Multi Cuisine Restaurant]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(192, 'Services  [Healthy Breakfast]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(193, 'Services  [Luggage Storage]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(194, 'Services  [24hrs Reception]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(195, 'Services  [Fire extinguisher]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(196, 'Services  [Free WiFi]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(197, 'Services  [Garden View]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(198, 'Services  [Elevator]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(199, 'Services  [Room Service]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(200, 'Services  [24hrs Checkin]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(201, 'Services  [Airport pickup]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(202, 'Services [Breakfast]Data has added successfully.', '2023-09-04 12:30:30', 1, 3, '27.34.84.147'),
(203, 'Services [Room Services]Data has added successfully.', '2023-09-04 12:30:46', 1, 3, '27.34.84.147'),
(204, 'Services [Free WiFi]Data has added successfully.', '2023-09-04 12:31:01', 1, 3, '27.34.84.147'),
(205, 'Services [Air-Conditioner]Data has added successfully.', '2023-09-04 12:31:18', 1, 3, '27.34.84.147'),
(206, 'Services [Bathtub]Data has added successfully.', '2023-09-04 12:31:39', 1, 3, '27.34.84.147'),
(207, 'Services [Coffee Maker]Data has added successfully.', '2023-09-04 12:31:56', 1, 3, '27.34.84.147'),
(208, 'Services [24hrs Front-desk]Data has added successfully.', '2023-09-04 12:32:09', 1, 3, '27.34.84.147'),
(209, 'Services [Safety Deposite Box]Data has added successfully.', '2023-09-04 12:32:28', 1, 3, '27.34.84.147'),
(210, 'Services [Free Parking]Data has added successfully.', '2023-09-04 12:32:53', 1, 3, '27.34.84.147'),
(211, 'Services [Spa]Data has added successfully.', '2023-09-04 12:33:08', 1, 3, '27.34.84.147'),
(212, 'Services [Pool/Hot Tub]Data has added successfully.', '2023-09-04 12:33:33', 1, 3, '27.34.84.147'),
(213, 'Services [EV Charging station]Data has added successfully.', '2023-09-04 12:33:47', 1, 3, '27.34.84.147'),
(214, 'Services [Iron/Iron Boar]Data has added successfully.', '2023-09-04 12:34:10', 1, 3, '27.34.84.147'),
(215, 'Services [Pick/Drop]Data has added successfully.', '2023-09-04 12:34:43', 1, 3, '27.34.84.147'),
(216, 'Services [Meeting Hall]Data has added successfully.', '2023-09-04 12:35:00', 1, 3, '27.34.84.147'),
(217, 'Services [Mini-bar In Suites]Data has added successfully.', '2023-09-04 12:35:15', 1, 3, '27.34.84.147'),
(218, 'Services [Room Slippers]Data has added successfully.', '2023-09-04 12:35:29', 1, 3, '27.34.84.147'),
(219, 'Services [Hair Dryer]Data has added successfully.', '2023-09-04 12:35:46', 1, 3, '27.34.84.147'),
(220, 'Services [LED Tv]Data has added successfully.', '2023-09-04 12:35:57', 1, 3, '27.34.84.147'),
(221, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2023-09-04 12:38:43', 1, 4, '27.34.84.147'),
(222, 'SubPackage Gallery Image [del]Data has deleted successfully.', '2023-09-04 12:39:18', 1, 6, '27.34.84.147'),
(223, 'SubPackage Gallery Image [del]Data has deleted successfully.', '2023-09-04 12:39:21', 1, 6, '27.34.84.147'),
(224, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:39:21', 1, 6, '27.34.84.147'),
(225, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:39:24', 1, 6, '27.34.84.147'),
(226, 'SubPackage Gallery Image [del]Data has deleted successfully.', '2023-09-04 12:39:24', 1, 6, '27.34.84.147'),
(227, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:39:24', 1, 6, '27.34.84.147'),
(228, 'Sub Package Image [j]Data has added successfully.', '2023-09-04 12:39:46', 1, 3, '27.34.84.147'),
(229, 'Sub Package Image [j]Data has added successfully.', '2023-09-04 12:39:46', 1, 3, '27.34.84.147'),
(230, 'Sub Package Image [j]Data has added successfully.', '2023-09-04 12:39:46', 1, 3, '27.34.84.147'),
(231, 'Menu [Junior Suite] Edit Successfully', '2023-09-04 12:41:15', 1, 4, '27.34.84.147'),
(232, 'SubPackage Gallery Image [Deluxe Queen Room]Data has deleted successfully.', '2023-09-04 12:41:59', 1, 6, '27.34.84.147'),
(233, 'SubPackage Gallery Image [Deluxe Queen Room]Data has deleted successfully.', '2023-09-04 12:42:09', 1, 6, '27.34.84.147'),
(234, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:42:09', 1, 6, '27.34.84.147'),
(235, 'SubPackage Gallery Image [Deluxe Queen Room]Data has deleted successfully.', '2023-09-04 12:42:12', 1, 6, '27.34.84.147'),
(236, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:42:12', 1, 6, '27.34.84.147'),
(237, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:42:12', 1, 6, '27.34.84.147'),
(238, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:42:15', 1, 6, '27.34.84.147'),
(239, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:42:15', 1, 6, '27.34.84.147'),
(240, 'SubPackage Gallery Image [Deluxe Queen Room]Data has deleted successfully.', '2023-09-04 12:42:15', 1, 6, '27.34.84.147'),
(241, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:42:15', 1, 6, '27.34.84.147'),
(242, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:42:18', 1, 6, '27.34.84.147'),
(243, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:42:18', 1, 6, '27.34.84.147'),
(244, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:42:18', 1, 6, '27.34.84.147'),
(245, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:42:18', 1, 6, '27.34.84.147'),
(246, 'SubPackage Gallery Image [Deluxe Queen Room]Data has deleted successfully.', '2023-09-04 12:42:18', 1, 6, '27.34.84.147'),
(247, 'Sub Package Image [dep]Data has added successfully.', '2023-09-04 12:42:45', 1, 3, '27.34.84.147'),
(248, 'Sub Package Image [dep]Data has added successfully.', '2023-09-04 12:42:45', 1, 3, '27.34.84.147'),
(249, 'Sub Package Image [dep]Data has added successfully.', '2023-09-04 12:42:45', 1, 3, '27.34.84.147'),
(250, 'Changes on Sub Package \'Deluxe Premium Room\' has been saved successfully.', '2023-09-04 12:44:20', 1, 4, '27.34.84.147'),
(251, 'Menu [Deluxe premium Room] Edit Successfully', '2023-09-04 12:45:01', 1, 4, '27.34.84.147'),
(252, 'Changes on Sub Package \'Deluxe Premium Room\' has been saved successfully.', '2023-09-04 12:45:32', 1, 4, '27.34.84.147'),
(253, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-09-04 12:49:30', 1, 4, '27.34.84.147'),
(254, 'Sub Package \'Standard Room\' has added successfully.', '2023-09-04 12:51:09', 1, 3, '27.34.84.147'),
(255, 'Features [Coffee/ Tea Maker] Edit Successfully', '2023-09-04 12:52:15', 1, 4, '27.34.84.147'),
(256, 'Features [Bathrobe & slippers] Edit Successfully', '2023-09-04 12:52:49', 1, 4, '27.34.84.147'),
(257, 'Features [House Keeping] Edit Successfully', '2023-09-04 12:53:04', 1, 4, '27.34.84.147'),
(258, 'Features [Flat screen TV] Edit Successfully', '2023-09-04 12:53:24', 1, 4, '27.34.84.147'),
(259, 'Features [Shower-bathtub combination] Edit Successfully', '2023-09-04 12:53:41', 1, 4, '27.34.84.147'),
(260, 'Features [In Room Safe (Locker)] Edit Successfully', '2023-09-04 12:54:01', 1, 4, '27.34.84.147'),
(261, 'Features [Free Wi-Fi] Edit Successfully', '2023-09-04 12:54:19', 1, 4, '27.34.84.147'),
(262, 'Features [No Smoking] Edit Successfully', '2023-09-04 12:54:36', 1, 4, '27.34.84.147'),
(263, 'Features [Toiletriesi] Edit Successfully', '2023-09-04 12:55:06', 1, 4, '27.34.84.147'),
(264, 'Changes on Sub Package \'Nagarkot Hall\' has been saved successfully.', '2023-09-04 12:56:46', 1, 4, '27.34.84.147'),
(265, 'Sub Package \'Lalitpur Hall\' has added successfully.', '2023-09-04 12:57:42', 1, 3, '27.34.84.147'),
(266, 'Sub Package Image [a]Data has added successfully.', '2023-09-04 12:58:24', 1, 3, '27.34.84.147'),
(267, 'Sub Package Image [a]Data has added successfully.', '2023-09-04 12:58:24', 1, 3, '27.34.84.147'),
(268, 'Sub Package \'Indrawati Bar\' has added successfully.', '2023-09-04 12:59:53', 1, 3, '27.34.84.147'),
(269, 'Sub Package Image [s]Data has added successfully.', '2023-09-04 13:00:16', 1, 3, '27.34.84.147'),
(270, 'Sub Package Image [s]Data has added successfully.', '2023-09-04 13:00:16', 1, 3, '27.34.84.147'),
(271, 'SubPackage Gallery Image [k]Data has deleted successfully.', '2023-09-04 13:00:23', 1, 6, '27.34.84.147'),
(272, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 13:00:26', 1, 6, '27.34.84.147'),
(273, 'SubPackage Gallery Image [k]Data has deleted successfully.', '2023-09-04 13:00:26', 1, 6, '27.34.84.147'),
(274, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 13:00:29', 1, 6, '27.34.84.147'),
(275, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 13:00:29', 1, 6, '27.34.84.147'),
(276, 'SubPackage Gallery Image [k]Data has deleted successfully.', '2023-09-04 13:00:29', 1, 6, '27.34.84.147'),
(277, 'Sub Package Image [a]Data has added successfully.', '2023-09-04 13:00:44', 1, 3, '27.34.84.147'),
(278, 'Sub Package Image [a]Data has added successfully.', '2023-09-04 13:00:44', 1, 3, '27.34.84.147'),
(279, 'Gallery [rooms]Data has added successfully.', '2023-09-04 13:01:57', 1, 3, '27.34.84.147'),
(280, 'Sub Gallery Image [a]Data has added successfully.', '2023-09-04 13:02:18', 1, 3, '27.34.84.147'),
(281, 'Sub Gallery Image [a]Data has added successfully.', '2023-09-04 13:02:18', 1, 3, '27.34.84.147'),
(282, 'Sub Gallery Image [a]Data has added successfully.', '2023-09-04 13:02:18', 1, 3, '27.34.84.147'),
(283, 'Sub Gallery Image [a]Data has added successfully.', '2023-09-04 13:02:18', 1, 3, '27.34.84.147'),
(284, 'Sub Gallery Image [a]Data has added successfully.', '2023-09-04 13:02:18', 1, 3, '27.34.84.147'),
(285, 'Sub Gallery Image [a]Data has added successfully.', '2023-09-04 13:02:18', 1, 3, '27.34.84.147'),
(286, 'Gallery [restaurant]Data has added successfully.', '2023-09-04 13:02:43', 1, 3, '27.34.84.147'),
(287, 'Sub Gallery Image [e]Data has added successfully.', '2023-09-04 13:03:18', 1, 3, '27.34.84.147'),
(288, 'Sub Gallery Image [e]Data has added successfully.', '2023-09-04 13:03:18', 1, 3, '27.34.84.147'),
(289, 'Sub Gallery Image [e]Data has added successfully.', '2023-09-04 13:03:18', 1, 3, '27.34.84.147'),
(290, 'Gallery [hall]Data has added successfully.', '2023-09-04 13:03:45', 1, 3, '27.34.84.147'),
(291, 'Sub Gallery Image [d]Data has added successfully.', '2023-09-04 13:03:57', 1, 3, '27.34.84.147'),
(292, 'Sub Gallery Image [d]Data has added successfully.', '2023-09-04 13:03:57', 1, 3, '27.34.84.147'),
(293, 'Sub Gallery Image [d]Data has added successfully.', '2023-09-04 13:03:57', 1, 3, '27.34.84.147'),
(294, 'Gallery [Recreation]Data has added successfully.', '2023-09-04 13:04:17', 1, 3, '27.34.84.147'),
(295, 'Sub Gallery Image [e]Data has added successfully.', '2023-09-04 13:04:35', 1, 3, '27.34.84.147'),
(296, 'Sub Gallery Image [e]Data has added successfully.', '2023-09-04 13:04:35', 1, 3, '27.34.84.147'),
(297, 'Sub Gallery Image [e]Data has added successfully.', '2023-09-04 13:04:35', 1, 3, '27.34.84.147'),
(298, 'Vacency [Painter / Plumber] Edit Successfully', '2023-09-04 13:06:56', 1, 4, '27.34.84.147'),
(299, 'Vacency [Asst. Laundry Manager] Edit Successfully', '2023-09-04 13:07:16', 1, 4, '27.34.84.147'),
(300, 'Vacency  [Intern]Data has deleted successfully.', '2023-09-04 13:07:21', 1, 6, '27.34.84.147'),
(301, 'Vacency [Sales Executive] Edit Successfully', '2023-09-04 13:07:33', 1, 4, '27.34.84.147'),
(302, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-09-04 13:09:33', 1, 4, '27.34.84.147'),
(303, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-09-04 13:10:08', 1, 4, '27.34.84.147'),
(304, 'Changes on Sub Package \'Deluxe Premium Room\' has been saved successfully.', '2023-09-04 13:10:45', 1, 4, '27.34.84.147'),
(305, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2023-09-04 13:11:12', 1, 4, '27.34.84.147'),
(306, 'Article \'Children Play Area Indoor & Outdoor\' has added successfully.', '2023-09-04 13:12:47', 1, 3, '27.34.84.147'),
(307, 'Changes on Article \'Children Play Area Indoor & Outdoor\' has been saved successfully.', '2023-09-04 13:18:43', 1, 4, '27.34.84.147'),
(308, 'Testimonial [Rebecca] Edit Successfully', '2023-09-04 13:21:07', 1, 4, '27.34.84.147'),
(309, 'Testimonial [WIRAEN - MALAYSIA] Edit Successfully', '2023-09-04 13:21:41', 1, 4, '27.34.84.147'),
(310, 'Testimonial [WIRAEN - MALAYSIA] Edit Successfully', '2023-09-04 13:22:19', 1, 4, '27.34.84.147'),
(311, 'Article \'Nagarkot View Tower\' has added successfully.', '2023-09-04 13:25:10', 1, 3, '27.34.84.147'),
(312, 'Article \'Mahankal Temple\' has added successfully.', '2023-09-04 13:26:09', 1, 3, '27.34.84.147'),
(313, 'Article \'Santi stupa\' has added successfully.', '2023-09-04 13:26:55', 1, 3, '27.34.84.147'),
(314, 'Article \'Changu Narayan Temple\' has added successfully.', '2023-09-04 13:27:35', 1, 3, '27.34.84.147'),
(315, 'Article \'Dhulikhel\' has added successfully.', '2023-09-04 13:28:02', 1, 3, '27.34.84.147'),
(316, 'Article \'Bhaktapur\' has added successfully.', '2023-09-04 13:28:33', 1, 3, '27.34.84.147'),
(317, 'Changes on Article \'Bhaktapur\' has been saved successfully.', '2023-09-04 13:29:17', 1, 4, '27.34.84.147'),
(318, 'Login: ClubHimalaya   logged in.', '2023-09-04 14:52:09', 1, 1, '27.34.2.119'),
(319, 'Login: ClubHimalaya   logged in.', '2023-09-04 17:33:42', 1, 1, '27.34.2.119'),
(320, 'Menu [ABOUT US] Edit Successfully', '2023-09-04 17:33:54', 1, 4, '27.34.2.119'),
(321, 'Menu [ABOUT US] Edit Successfully', '2023-09-04 17:34:22', 1, 4, '27.34.2.119'),
(322, 'Login: ClubHimalaya   logged in.', '2023-09-06 15:41:32', 1, 1, '27.34.64.16'),
(323, 'Login: ClubHimalaya   logged in.', '2023-09-15 11:20:48', 1, 1, '103.10.29.84'),
(324, 'FAQ [test]Data has deleted successfully.', '2023-09-15 11:21:12', 1, 6, '103.10.29.84'),
(325, 'Changes on FAQ \'What are the amenities and facilities in the hotel?\' has been saved successfully.', '2023-09-15 11:21:34', 1, 4, '103.10.29.84'),
(326, 'Changes on FAQ \'What are the activities guests can enjoy?\' has been saved successfully.', '2023-09-15 11:22:01', 1, 4, '103.10.29.84'),
(327, 'Changes on FAQ \'What are the services available?\' has been saved successfully.', '2023-09-15 11:22:25', 1, 4, '103.10.29.84'),
(328, 'FAQ \'Internet\' has added successfully.', '2023-09-15 11:22:44', 1, 3, '103.10.29.84'),
(329, 'FAQ \'Parking\' has added successfully.', '2023-09-15 11:23:01', 1, 3, '103.10.29.84'),
(330, 'FAQ \'How do I get to the hotel?\' has added successfully.', '2023-09-15 11:23:55', 1, 3, '103.10.29.84'),
(331, 'FAQ \'What are the things to do in Nagarkot?\' has added successfully.', '2023-09-15 11:24:12', 1, 3, '103.10.29.84'),
(332, 'FAQ \'We guarantee\' has added successfully.', '2023-09-15 11:24:26', 1, 3, '103.10.29.84'),
(333, 'FAQ \'What are the accepted credit cards?\' has added successfully.', '2023-09-15 11:24:38', 1, 3, '103.10.29.84'),
(334, 'FAQ \'Pets\' has added successfully.', '2023-09-15 11:24:49', 1, 3, '103.10.29.84'),
(335, 'FAQ \'What are the Hotel Policies?\' has added successfully.', '2023-09-15 11:25:00', 1, 3, '103.10.29.84'),
(336, 'FAQ \'When is the best time to visit?\' has added successfully.', '2023-09-15 11:25:11', 1, 3, '103.10.29.84'),
(337, 'FAQ \'What is the weather in Nagarkot like ?\' has added successfully.', '2023-09-15 11:25:23', 1, 3, '103.10.29.84'),
(338, 'Changes on FAQ \'What are the Hotel Policies?\' has been saved successfully.', '2023-09-15 11:27:35', 1, 4, '103.10.29.84'),
(339, 'Changes on FAQ \'What are the Hotel Policies?\' has been saved successfully.', '2023-09-15 11:28:20', 1, 4, '103.10.29.84'),
(340, 'Changes on FAQ \'What are the Hotel Policies?\' has been saved successfully.', '2023-09-15 11:29:40', 1, 4, '103.10.29.84'),
(341, 'Changes on FAQ \'What are the Hotel Policies?\' has been saved successfully.', '2023-09-15 11:30:43', 1, 4, '103.10.29.84'),
(342, 'Changes on FAQ \'What are the Hotel Policies?\' has been saved successfully.', '2023-09-15 11:31:45', 1, 4, '103.10.29.84'),
(343, 'Changes on FAQ \'What are the Hotel Policies?\' has been saved successfully.', '2023-09-15 11:33:30', 1, 4, '103.10.29.84'),
(344, 'Changes on FAQ \'What are the Hotel Policies?\' has been saved successfully.', '2023-09-15 11:34:04', 1, 4, '103.10.29.84'),
(345, 'Menu [Deluxe Room] Edit Successfully', '2023-09-15 11:38:50', 1, 4, '103.10.29.84'),
(346, 'SubPackage Gallery Image [Deluxe Twin Room]Data has deleted successfully.', '2023-09-15 11:39:18', 1, 6, '103.10.29.84'),
(347, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:21', 1, 6, '103.10.29.84'),
(348, 'SubPackage Gallery Image [Deluxe Twin Room]Data has deleted successfully.', '2023-09-15 11:39:21', 1, 6, '103.10.29.84'),
(349, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:24', 1, 6, '103.10.29.84'),
(350, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:24', 1, 6, '103.10.29.84'),
(351, 'SubPackage Gallery Image [Deluxe Twin Room]Data has deleted successfully.', '2023-09-15 11:39:24', 1, 6, '103.10.29.84'),
(352, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:27', 1, 6, '103.10.29.84'),
(353, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:28', 1, 6, '103.10.29.84'),
(354, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:28', 1, 6, '103.10.29.84'),
(355, 'SubPackage Gallery Image [Deluxe Twin Room]Data has deleted successfully.', '2023-09-15 11:39:28', 1, 6, '103.10.29.84'),
(356, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:30', 1, 6, '103.10.29.84'),
(357, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:30', 1, 6, '103.10.29.84'),
(358, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:30', 1, 6, '103.10.29.84'),
(359, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:30', 1, 6, '103.10.29.84'),
(360, 'SubPackage Gallery Image [Deluxe Twin Room]Data has deleted successfully.', '2023-09-15 11:39:30', 1, 6, '103.10.29.84'),
(361, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:33', 1, 6, '103.10.29.84'),
(362, 'SubPackage Gallery Image [Deluxe Twin Room]Data has deleted successfully.', '2023-09-15 11:39:33', 1, 6, '103.10.29.84'),
(363, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:33', 1, 6, '103.10.29.84'),
(364, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:33', 1, 6, '103.10.29.84'),
(365, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:33', 1, 6, '103.10.29.84'),
(366, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:33', 1, 6, '103.10.29.84'),
(367, 'Sub Package Image [deluxe]Data has added successfully.', '2023-09-15 11:40:40', 1, 3, '103.10.29.84'),
(368, 'Sub Package Image [delxue]Data has added successfully.', '2023-09-15 11:40:40', 1, 3, '103.10.29.84'),
(369, 'Sub Package Image [deluxe]Data has added successfully.', '2023-09-15 11:40:40', 1, 3, '103.10.29.84'),
(370, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-09-15 11:42:06', 1, 4, '103.10.29.84'),
(371, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-09-15 11:44:10', 1, 4, '103.10.29.84'),
(372, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-09-15 11:45:21', 1, 4, '103.10.29.84'),
(373, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-09-15 11:45:47', 1, 4, '103.10.29.84'),
(374, 'Changes on Sub Package \'Deluxe Premium Room\' has been saved successfully.', '2023-09-15 11:46:31', 1, 4, '103.10.29.84'),
(375, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2023-09-15 11:47:11', 1, 4, '103.10.29.84'),
(376, 'Package Rooms Edit Successfully', '2023-09-15 11:59:06', 1, 4, '103.10.29.84'),
(377, 'Blog [Brief On Club Himalaya] Edit Successfully', '2023-09-15 12:04:11', 1, 4, '103.10.29.84'),
(378, 'Testimonial [Andrew Parker - Writer] Edit Successfully', '2023-09-15 12:08:45', 1, 4, '103.10.29.84'),
(379, 'Testimonial [Greg. S - Wagga] Edit Successfully', '2023-09-15 12:09:02', 1, 4, '103.10.29.84'),
(380, 'Testimonial [Andrew Parker - writer] Edit Successfully', '2023-09-15 12:10:59', 1, 4, '103.10.29.84'),
(381, 'Menu [ABOUT US] Edit Successfully', '2023-09-15 12:27:48', 1, 4, '103.10.29.84'),
(382, 'Login: ClubHimalaya   logged in.', '2023-09-15 12:44:06', 1, 1, '27.34.64.76'),
(383, 'Login: ClubHimalaya   logged in.', '2023-09-17 12:46:18', 1, 1, '27.34.76.145'),
(384, 'Sub Package Image [standard]Data has added successfully.', '2023-09-17 12:48:42', 1, 3, '27.34.76.145'),
(385, 'Sub Package Image [standard]Data has added successfully.', '2023-09-17 12:48:42', 1, 3, '27.34.76.145'),
(386, 'Sub Package Image [standard]Data has added successfully.', '2023-09-17 12:48:42', 1, 3, '27.34.76.145'),
(387, 'Login: ClubHimalaya   logged in.', '2023-09-17 13:55:22', 1, 1, '27.34.76.150'),
(388, 'Testimonial [Andrew Parker - writer] Edit Successfully', '2023-09-17 13:55:38', 1, 4, '27.34.76.150'),
(389, 'Testimonial [Andrew Parker] Edit Successfully', '2023-09-17 13:55:47', 1, 4, '27.34.76.150'),
(390, 'Testimonial [Greg. S ] Edit Successfully', '2023-09-17 13:57:54', 1, 4, '27.34.76.150'),
(391, 'Testimonial [WIRAEN] Edit Successfully', '2023-09-17 13:58:08', 1, 4, '27.34.76.150'),
(392, 'Login: ClubHimalaya   logged in.', '2023-09-17 17:11:07', 1, 1, '27.34.76.150'),
(393, 'Sub Package \'Library\' has added successfully.', '2023-09-17 17:15:37', 1, 3, '27.34.76.150'),
(394, 'Sub Package Image [kli]Data has added successfully.', '2023-09-17 17:16:29', 1, 3, '27.34.76.150'),
(395, 'SubPackage Gallery Image [kli]Data has deleted successfully.', '2023-09-17 17:16:36', 1, 6, '27.34.76.150'),
(396, 'Sub Package Image [lib]Data has added successfully.', '2023-09-17 17:18:17', 1, 3, '27.34.76.150'),
(397, 'Sub Package Image [lib]Data has added successfully.', '2023-09-17 17:18:17', 1, 3, '27.34.76.150'),
(398, 'Blog [Nagarkot Nepal ]Data has added successfully.', '2023-09-17 17:22:38', 1, 3, '27.34.76.150'),
(399, 'Blog [Nagarkot Nepal ] Edit Successfully', '2023-09-17 17:24:15', 1, 4, '27.34.76.150'),
(400, 'Blog [Nagarkot Nepal ] Edit Successfully', '2023-09-17 17:24:40', 1, 4, '27.34.76.150'),
(401, 'Blog [Nagarkot Nepal ] Edit Successfully', '2023-09-17 17:25:39', 1, 4, '27.34.76.150'),
(402, 'Blog [Nagarkot Nepal ] Edit Successfully', '2023-09-17 17:26:22', 1, 4, '27.34.76.150'),
(403, 'Blog [Nagarkot Nepal ] Edit Successfully', '2023-09-17 17:27:26', 1, 4, '27.34.76.150'),
(404, 'Login: ClubHimalaya   logged in.', '2023-09-18 08:28:10', 1, 1, '27.34.76.150'),
(405, 'Menu [Standard Room] CreatedData has added successfully.', '2023-09-18 08:35:32', 1, 3, '27.34.76.150'),
(406, 'Changes on Article \'about us home page\' has been saved successfully.', '2023-09-18 08:57:44', 1, 4, '27.34.76.150'),
(407, 'Changes on Article \'about us home page\' has been saved successfully.', '2023-09-18 08:58:00', 1, 4, '27.34.76.150'),
(408, 'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.', '2023-09-18 08:58:08', 1, 4, '27.34.76.150'),
(409, 'Login: ClubHimalaya   logged in.', '2023-09-18 09:30:13', 1, 1, '27.34.76.150'),
(410, 'Login: ClubHimalaya   logged in.', '2023-09-18 10:34:46', 1, 1, '27.34.76.150'),
(411, 'Login: ClubHimalaya   logged in.', '2023-09-19 09:59:36', 1, 1, '27.34.76.167'),
(412, 'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.', '2023-09-19 10:04:06', 1, 4, '27.34.76.167'),
(413, 'Login: ClubHimalaya   logged in.', '2023-09-19 17:49:22', 1, 1, '27.34.76.164'),
(414, 'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.', '2023-09-19 17:53:16', 1, 4, '27.34.76.164'),
(415, 'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.', '2023-09-19 17:54:33', 1, 4, '27.34.76.164'),
(416, 'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.', '2023-09-19 17:56:15', 1, 4, '27.34.76.164'),
(417, 'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.', '2023-09-19 17:57:25', 1, 4, '27.34.76.164'),
(418, 'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.', '2023-09-19 18:05:13', 1, 4, '27.34.76.164'),
(419, 'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.', '2023-09-19 18:06:00', 1, 4, '27.34.76.164'),
(420, 'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.', '2023-09-19 18:06:34', 1, 4, '27.34.76.164'),
(421, 'Login: ClubHimalaya   logged in.', '2023-09-21 08:19:17', 1, 1, '27.34.76.158'),
(422, 'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.', '2023-09-21 08:21:01', 1, 4, '27.34.76.158'),
(423, 'Changes on Sub Package \'Bhaktapur Hall\' has been saved successfully.', '2023-09-21 08:21:37', 1, 4, '27.34.76.158'),
(424, 'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.', '2023-09-21 08:22:34', 1, 4, '27.34.76.158'),
(425, 'Changes on Sub Package \'Nagarkot Hall\' has been saved successfully.', '2023-09-21 08:23:21', 1, 4, '27.34.76.158'),
(426, 'Changes on Sub Package \'Library\' has been saved successfully.', '2023-09-21 08:23:59', 1, 4, '27.34.76.158'),
(427, 'Changes on Sub Package \'Library\' has been saved successfully.', '2023-09-21 08:24:48', 1, 4, '27.34.76.158'),
(428, 'Changes on Sub Package \'Nagarkot Hall\' has been saved successfully.', '2023-09-21 08:25:25', 1, 4, '27.34.76.158'),
(429, 'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.', '2023-09-21 08:27:48', 1, 4, '27.34.76.158'),
(430, 'Changes on Sub Package \'Bhaktapur Hall\' has been saved successfully.', '2023-09-21 08:28:11', 1, 4, '27.34.76.158'),
(431, 'Login: ClubHimalaya   logged in.', '2023-10-16 14:28:42', 1, 1, '27.34.64.117'),
(432, 'Changes on Article \'about us home page\' has been saved successfully.', '2023-10-16 14:34:55', 1, 4, '27.34.64.117'),
(433, 'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.', '2023-10-16 14:35:27', 1, 4, '27.34.64.117'),
(434, 'Changes on Article \'about us home page\' has been saved successfully.', '2023-10-16 14:37:06', 1, 4, '27.34.64.117'),
(435, 'Menu [ABOUT US] Edit Successfully', '2023-10-16 14:37:47', 1, 4, '27.34.64.117'),
(436, 'Changes on Article \'about us\' has been saved successfully.', '2023-10-16 14:38:47', 1, 4, '27.34.64.117'),
(437, 'Menu [ABOUT US] Edit Successfully', '2023-10-16 14:39:05', 1, 4, '27.34.64.117'),
(438, 'Changes on Article \'about us\' has been saved successfully.', '2023-10-16 14:39:34', 1, 4, '27.34.64.117'),
(439, 'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.', '2023-10-16 14:39:52', 1, 4, '27.34.64.117'),
(440, 'Changes on Main service \'Children Play Area Indoor & Outdoor\' has been saved successfully.', '2023-10-16 14:42:11', 1, 4, '27.34.64.117'),
(441, 'Changes on Main service \'Children Play Area Indoor & Outdoor\' has been saved successfully.', '2023-10-16 14:42:35', 1, 4, '27.34.64.117'),
(442, 'Changes on Main service \'Children Play Area Indoor & Outdoor\' has been saved successfully.', '2023-10-16 14:42:54', 1, 4, '27.34.64.117'),
(443, 'Login: ClubHimalaya   logged in.', '2023-10-17 13:12:04', 1, 1, '27.34.64.117'),
(444, 'Article \'Exceptional Experiences\' has added successfully.', '2023-10-17 13:56:59', 1, 3, '27.34.64.117'),
(445, 'Testimonial [Greg. S ] Edit Successfully', '2023-10-17 13:58:48', 1, 4, '27.34.64.117'),
(446, 'Changes on Article \'Exceptional Experiences\' has been saved successfully.', '2023-10-17 14:01:43', 1, 4, '27.34.64.117'),
(447, 'Changes on Article \'Exceptional Experiences\' has been saved successfully.', '2023-10-17 14:04:07', 1, 4, '27.34.64.117'),
(448, 'Login: ClubHimalaya   logged in.', '2023-10-17 14:06:04', 1, 1, '27.34.76.163'),
(449, 'Login: ClubHimalaya   logged in.', '2023-10-20 08:23:42', 1, 1, '27.34.76.176'),
(450, 'Slideshow [By Ace Hotel] Edit Successfully', '2023-10-20 08:50:04', 1, 4, '27.34.76.176'),
(451, 'Slideshow [By Ace Hotel] Edit Successfully', '2023-10-20 08:50:11', 1, 4, '27.34.76.176'),
(452, 'Slideshow [By Ace Hotel] Edit Successfully', '2023-10-20 08:51:20', 1, 4, '27.34.76.176'),
(453, 'Login: ClubHimalaya   logged in.', '2023-10-29 13:52:56', 1, 1, '27.34.64.54'),
(454, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-10-29 13:53:26', 1, 4, '27.34.64.54'),
(455, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-10-29 13:53:48', 1, 4, '27.34.64.54'),
(456, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-10-29 13:59:19', 1, 4, '27.34.64.54'),
(457, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-10-29 14:15:31', 1, 4, '27.34.64.54'),
(458, 'Changes on FAQ \'What are the accepted credit cards?\' has been saved successfully.', '2023-10-29 14:37:43', 1, 4, '27.34.64.54'),
(459, 'Changes on FAQ \'What are the accepted credit cards?\' has been saved successfully.', '2023-10-29 14:38:12', 1, 4, '27.34.64.54'),
(460, 'Changes on FAQ \'We guarantee\' has been saved successfully.', '2023-10-29 14:39:02', 1, 4, '27.34.64.54'),
(461, 'Changes on FAQ \'What are the things to do in Nagarkot?\' has been saved successfully.', '2023-10-29 14:39:55', 1, 4, '27.34.64.54'),
(462, 'Article \'Partners\' has added successfully.', '2023-10-29 14:41:53', 1, 3, '27.34.64.54'),
(463, 'Menu [Our Partners] Edit Successfully', '2023-10-29 14:42:22', 1, 4, '27.34.64.54'),
(464, 'Menu [FAQ\'s] Edit Successfully', '2023-10-29 14:42:46', 1, 4, '27.34.64.54'),
(465, 'Changes on Article \'Partners\' has been saved successfully.', '2023-10-29 14:43:46', 1, 4, '27.34.64.54'),
(466, 'Article \'Enhanced Safety\' has added successfully.', '2023-10-29 14:46:24', 1, 3, '27.34.64.54'),
(467, 'Menu [Enhanced Safety] Edit Successfully', '2023-10-29 14:46:57', 1, 4, '27.34.64.54'),
(468, 'Changes on Article \'Enhanced Safety\' has been saved successfully.', '2023-10-29 14:48:23', 1, 4, '27.34.64.54'),
(469, 'Blog [Brief On Club Himalaya] Edit Successfully', '2023-10-29 14:50:39', 1, 4, '27.34.64.54'),
(470, 'Blog [Nagarkot Nepal ] Edit Successfully', '2023-10-29 14:52:40', 1, 4, '27.34.64.54'),
(471, 'Login: ClubHimalaya   logged in.', '2023-10-30 09:21:27', 1, 1, '27.34.76.183'),
(472, 'User [ClubHimalaya  ] Edit Successfully', '2023-10-30 09:21:49', 1, 4, '27.34.76.183'),
(473, 'Login: ClubHimalaya   logged in.', '2023-10-30 10:54:57', 1, 1, '27.34.0.5'),
(474, 'Login: ClubHimalaya   logged in.', '2023-10-30 13:48:32', 1, 1, '27.34.0.5'),
(475, 'Changes on Main service \'SPA\' has been saved successfully.', '2023-10-30 13:50:58', 1, 4, '27.34.0.5'),
(476, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-10-30 13:53:17', 1, 4, '27.34.0.5'),
(477, 'Login: ClubHimalaya   logged in.', '2023-10-30 14:07:44', 1, 1, '27.34.64.54');
INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(478, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-10-30 14:08:16', 1, 4, '27.34.0.5'),
(479, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-10-30 14:08:34', 1, 4, '27.34.64.54'),
(480, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-10-30 14:09:39', 1, 4, '27.34.64.54'),
(481, 'Slideshow [By Ace Hotel] Edit Successfully', '2023-10-30 14:17:37', 1, 4, '27.34.0.5'),
(482, 'Slideshow [By Ace Hotel] Edit Successfully', '2023-10-30 14:17:51', 1, 4, '27.34.0.5'),
(483, 'Changes on Article \'about us\' has been saved successfully.', '2023-10-30 14:24:08', 1, 4, '27.34.64.54'),
(484, 'Changes on Article \'about us\' has been saved successfully.', '2023-10-30 14:24:31', 1, 4, '27.34.64.54'),
(485, 'Login: ClubHimalaya   logged in.', '2023-10-30 14:24:34', 1, 1, '27.34.64.193'),
(486, 'Changes on Article \'about us\' has been saved successfully.', '2023-10-30 14:24:50', 1, 4, '27.34.64.54'),
(487, 'SocialNetworking [Facebook] Edit Successfully', '2023-10-30 14:30:21', 1, 4, '27.34.0.5'),
(488, 'Changes on Main service \'SPA\' has been saved successfully.', '2023-10-30 14:38:13', 1, 4, '27.34.0.5'),
(489, 'Changes on Main service \'SPA\' has been saved successfully.', '2023-10-30 14:38:42', 1, 4, '27.34.0.5'),
(490, 'Changes on Sub Package \'Indrawati Bar\' has been saved successfully.', '2023-10-30 14:39:43', 1, 4, '27.34.64.193'),
(491, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-10-30 14:41:22', 1, 6, '27.34.64.193'),
(492, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-10-30 14:42:12', 1, 6, '27.34.0.5'),
(493, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-10-30 14:42:22', 1, 6, '27.34.0.5'),
(494, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-10-30 14:42:22', 1, 6, '27.34.0.5'),
(495, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-10-30 14:42:34', 1, 6, '27.34.0.5'),
(496, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-10-30 14:42:34', 1, 6, '27.34.0.5'),
(497, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-10-30 14:42:34', 1, 6, '27.34.0.5'),
(498, 'Vacency [HR post wanted]Data has added successfully.', '2023-10-30 14:42:48', 1, 3, '27.34.0.5'),
(499, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-10-30 14:43:16', 1, 6, '27.34.64.193'),
(500, 'Changes on Sub Package \'Indrawati Bar\' has been saved successfully.', '2023-10-30 14:46:05', 1, 4, '27.34.64.193'),
(501, 'Changes on Sub Package \'Indrawati Bar\' has been saved successfully.', '2023-10-30 14:57:14', 1, 4, '27.34.64.193'),
(502, 'Changes on Sub Package \'Indrawati Bar\' has been saved successfully.', '2023-10-30 14:59:48', 1, 4, '27.34.64.193'),
(503, 'Login: ClubHimalaya   logged in.', '2023-10-30 16:19:42', 1, 1, '27.34.64.193'),
(504, 'Changes on Sub Package \'Indrawati Bar\' has been saved successfully.', '2023-10-30 16:20:02', 1, 4, '27.34.64.193'),
(505, 'Login: ClubHimalaya   logged in.', '2023-10-31 14:05:47', 1, 1, '27.34.64.54'),
(506, 'Login: ClubHimalaya   logged in.', '2023-11-02 15:02:34', 1, 1, '27.34.64.4'),
(507, 'Changes on Article \'about us\' has been saved successfully.', '2023-11-02 15:03:17', 1, 4, '27.34.64.4'),
(508, 'Menu [RESTAURANTS / BAR] Edit Successfully', '2023-11-02 15:06:33', 1, 4, '27.34.64.4'),
(509, 'Menu [RESTAURANTS & BAR] Edit Successfully', '2023-11-02 15:06:48', 1, 4, '27.34.64.4'),
(510, 'Package Dining Edit Successfully', '2023-11-02 15:10:24', 1, 4, '27.34.64.4'),
(511, 'Changes on Sub Package \'Indrawati Bar\' has been saved successfully.', '2023-11-02 15:10:51', 1, 4, '27.34.64.4'),
(512, 'Changes on Sub Package \'Kantipur Restaurant\' has been saved successfully.', '2023-11-02 15:11:28', 1, 4, '27.34.64.4'),
(513, 'Login: ClubHimalaya   logged in.', '2023-11-05 12:35:52', 1, 1, '163.53.26.226'),
(514, 'Package Dining Edit Successfully', '2023-11-05 12:36:16', 1, 4, '163.53.26.226'),
(515, 'Package Dining Edit Successfully', '2023-11-05 12:36:53', 1, 4, '163.53.26.226'),
(516, 'Package Dining Edit Successfully', '2023-11-05 12:39:13', 1, 4, '163.53.26.226'),
(517, 'Package Dining Edit Successfully', '2023-11-05 12:40:33', 1, 4, '163.53.26.226'),
(518, 'Changes on Sub Package \'Kantipur Restaurant\' has been saved successfully.', '2023-11-05 12:43:48', 1, 4, '163.53.26.226'),
(519, 'Changes on Sub Package \'Indrawati Bar\' has been saved successfully.', '2023-11-05 12:45:22', 1, 4, '163.53.26.226'),
(520, 'Login: ClubHimalaya   logged in.', '2023-11-05 16:08:23', 1, 1, '113.199.255.222'),
(521, 'Changes on FAQ \'What is the weather in Nagarkot like ?\' has been saved successfully.', '2023-11-05 16:09:59', 1, 4, '113.199.255.222'),
(522, 'Changes on FAQ \'What is the weather in Nagarkot like ?\' has been saved successfully.', '2023-11-05 16:14:12', 1, 4, '113.199.255.222'),
(523, 'Changes on FAQ \'What is the weather in Nagarkot like ?\' has been saved successfully.', '2023-11-05 16:15:19', 1, 4, '113.199.255.222'),
(524, 'Changes on FAQ \'What is the weather in Nagarkot like ?\' has been saved successfully.', '2023-11-05 16:28:05', 1, 4, '113.199.255.222'),
(525, 'Login: ClubHimalaya   logged in.', '2023-11-09 07:49:33', 1, 1, '::1'),
(526, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 08:05:04', 1, 4, '::1'),
(527, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 08:09:56', 1, 4, '::1'),
(528, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 08:19:06', 1, 4, '::1'),
(529, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 10:38:20', 1, 4, '::1'),
(530, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 10:38:30', 1, 4, '::1'),
(531, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 10:38:38', 1, 4, '::1'),
(532, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 10:44:08', 1, 4, '::1'),
(533, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 10:52:23', 1, 4, '::1'),
(534, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 10:52:34', 1, 4, '::1'),
(535, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 10:52:53', 1, 4, '::1'),
(536, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 11:01:21', 1, 4, '::1'),
(537, 'Login: ClubHimalaya   logged in.', '2023-11-09 11:13:42', 1, 1, '::1'),
(538, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 12:59:53', 1, 4, '::1'),
(539, 'Login: ClubHimalaya   logged in.', '2023-11-09 13:14:02', 1, 1, '::1'),
(540, 'SocialNetworking [Facebook] Edit Successfully', '2023-11-09 13:16:15', 1, 4, '::1'),
(541, 'SocialNetworking [Facebook] Edit Successfully', '2023-11-09 13:18:59', 1, 4, '::1'),
(542, 'SocialNetworking [Twitter] Edit Successfully', '2023-11-09 13:28:18', 1, 4, '::1'),
(543, 'SocialNetworking [Twitter] Edit Successfully', '2023-11-09 13:28:26', 1, 4, '::1'),
(544, 'SocialNetworking [Twitter] Edit Successfully', '2023-11-09 13:28:56', 1, 4, '::1'),
(545, 'SocialNetworking [Twitter] Edit Successfully', '2023-11-09 13:29:31', 1, 4, '::1'),
(546, 'Login: ClubHimalaya   logged in.', '2023-11-09 15:07:07', 1, 1, '::1'),
(547, 'Login: ClubHimalaya   logged in.', '2023-11-09 15:10:05', 1, 1, '::1'),
(548, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 15:15:15', 1, 4, '::1'),
(549, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 15:20:22', 1, 4, '::1'),
(550, 'Package [asdasd]Data has added successfully.', '2023-11-09 15:24:44', 1, 3, '::1'),
(551, 'Package asdasd Edit Successfully', '2023-11-09 15:25:12', 1, 4, '::1'),
(552, 'Package asdasd Edit Successfully', '2023-11-09 15:25:44', 1, 4, '::1'),
(553, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 15:26:14', 1, 4, '::1'),
(554, 'Login: ClubHimalaya   logged in.', '2023-11-09 15:41:26', 1, 1, '::1'),
(555, 'Login: Super admin   logged in.', '2023-11-09 15:59:32', 1, 1, '::1'),
(556, 'Login: ClubHimalaya   logged in.', '2023-11-09 16:05:26', 1, 1, '::1'),
(557, 'Login: ClubHimalaya   logged in.', '2023-11-09 16:35:17', 1, 1, '::1'),
(558, 'Login: ClubHimalaya   logged in.', '2023-11-09 16:39:40', 1, 1, '::1'),
(559, 'Login: Super admin   logged in.', '2023-11-09 16:40:07', 1, 1, '::1'),
(560, 'User [Super admin  ] Edit Successfully', '2023-11-09 16:48:42', 1, 4, '::1'),
(561, 'Login: Super admin   logged in.', '2023-11-09 16:48:59', 1, 1, '::1'),
(562, 'Login: ClubHimalaya   logged in.', '2023-11-09 16:55:28', 1, 1, '::1'),
(563, 'Changes on Article \'Enhanced Safety\' has been saved successfully.', '2023-11-09 17:06:08', 1, 4, '::1'),
(564, 'Changes on Article \'about us\' has been saved successfully.', '2023-11-09 17:06:28', 1, 4, '::1'),
(565, 'Changes on Article \'about us\' has been saved successfully.', '2023-11-09 17:10:38', 1, 4, '::1'),
(566, 'Changes on Article \'about us\' has been saved successfully.', '2023-11-09 17:12:25', 1, 4, '::1'),
(567, 'Changes on Article \'about us\' has been saved successfully.', '2023-11-09 17:19:03', 1, 4, '::1'),
(568, 'Changes on Article \'about us\' has been saved successfully.', '2023-11-09 17:20:06', 1, 4, '::1'),
(569, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 17:41:56', 1, 4, '::1'),
(570, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 17:42:04', 1, 4, '::1'),
(571, 'Login: ClubHimalaya   logged in.', '2023-11-09 17:55:33', 1, 1, '::1'),
(572, 'Login: Super admin   logged in.', '2023-11-09 17:56:29', 1, 1, '::1'),
(573, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 17:58:44', 1, 4, '::1'),
(574, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 18:05:05', 1, 4, '::1'),
(575, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 18:05:15', 1, 4, '::1'),
(576, 'Login: ClubHimalaya   logged in.', '2023-11-10 10:41:03', 1, 1, '::1'),
(577, 'Login: Super admin   logged in.', '2023-11-10 10:42:06', 1, 1, '::1'),
(578, 'Login: ClubHimalaya   logged in.', '2023-11-10 11:59:19', 1, 1, '::1'),
(579, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-10 12:10:51', 1, 4, '::1'),
(580, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-10 12:11:03', 1, 4, '::1'),
(581, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-10 12:18:24', 1, 4, '::1'),
(582, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-10 12:32:34', 1, 4, '::1'),
(583, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-10 13:39:16', 1, 4, '::1'),
(584, 'Login: ClubHimalaya   logged in.', '2023-11-11 12:24:05', 1, 1, '::1'),
(585, 'Login: Super admin   logged in.', '2023-11-11 12:24:59', 1, 1, '::1'),
(586, 'User [ClubHimalaya  ] Edit Successfully', '2023-11-11 12:25:10', 1, 4, '::1'),
(587, 'User [Super admin  ] Edit Successfully', '2023-11-11 12:25:51', 1, 4, '::1'),
(588, 'ota [asdasdasd]Data has added successfully.', '2023-11-11 12:27:21', 1, 3, '::1'),
(589, 'ota [booking.com]Data has added successfully.', '2023-11-11 12:29:41', 1, 3, '::1'),
(590, 'ota [asd]Data has added successfully.', '2023-11-11 12:31:50', 1, 3, '::1'),
(591, 'ota  [asdasdasd]Data has deleted successfully.', '2023-11-11 12:31:59', 1, 6, '::1'),
(592, 'ota  [asdasdasd]Data has deleted successfully.', '2023-11-11 12:31:59', 1, 6, '::1'),
(593, 'ota  []Data has deleted successfully.', '2023-11-11 12:32:02', 1, 6, '::1'),
(594, 'ota  []Data has deleted successfully.', '2023-11-11 12:32:02', 1, 6, '::1'),
(595, 'ota  [booking.com]Data has deleted successfully.', '2023-11-11 12:32:02', 1, 6, '::1'),
(596, 'ota  [booking.com]Data has deleted successfully.', '2023-11-11 12:32:02', 1, 6, '::1'),
(597, 'ota [booking.com] Edit Successfully', '2023-11-11 12:32:27', 1, 4, '::1'),
(598, 'ota [agoda]Data has added successfully.', '2023-11-11 12:32:45', 1, 3, '::1'),
(599, 'ota [booking] Edit Successfully', '2023-11-11 12:32:54', 1, 4, '::1'),
(600, 'ota [expedia]Data has added successfully.', '2023-11-11 12:33:12', 1, 3, '::1'),
(601, 'ota [tripadvisor]Data has added successfully.', '2023-11-11 12:33:35', 1, 3, '::1'),
(602, 'ota [Make My Trip]Data has added successfully.', '2023-11-11 12:33:56', 1, 3, '::1'),
(603, 'Login: ClubHimalaya   logged in.', '2023-11-21 11:26:47', 1, 1, '::1'),
(604, 'Login: ClubHimalaya   logged in.', '2023-11-21 11:42:05', 1, 1, '::1'),
(605, 'Slideshow [asdasdasdasd]Data has added successfully.', '2023-11-21 11:55:43', 1, 3, '::1'),
(606, 'Login: ClubHimalaya   logged in.', '2023-11-22 12:39:54', 1, 1, '::1'),
(607, 'Login: ClubHimalaya   logged in.', '2023-11-29 19:11:14', 1, 1, '::1'),
(608, 'Login: ClubHimalaya   logged in.', '2023-12-12 10:50:45', 1, 1, '::1'),
(609, 'Login: ClubHimalaya   logged in.', '2024-01-08 14:49:51', 1, 1, '::1'),
(610, 'Login: ClubHimalaya   logged in.', '2024-01-10 12:47:25', 1, 1, '::1'),
(611, 'Login: ClubHimalaya   logged in.', '2024-01-10 12:47:40', 1, 1, '::1'),
(612, 'Login: ClubHimalaya   logged in.', '2024-01-10 12:49:19', 1, 1, '::1'),
(613, 'Login: ClubHimalaya   logged in.', '2024-01-10 12:51:17', 1, 1, '::1'),
(614, 'Login: ClubHimalaya   logged in.', '2024-01-10 12:52:51', 1, 1, '::1'),
(615, 'User [asdasd asdasd asdasd] login Created Data has added successfully.', '2024-01-10 12:55:05', 1, 3, '::1'),
(616, 'Login: Super admin   logged in.', '2024-01-10 12:55:36', 1, 1, '::1'),
(617, 'Menu [test] CreatedData has added successfully.', '2024-01-10 12:57:00', 1, 3, '::1'),
(618, 'Menu  [test]Data has deleted successfully.', '2024-01-10 12:57:47', 1, 6, '::1'),
(619, 'Article \'asdfasdf\' has added successfully.', '2024-01-10 13:11:12', 1, 3, '::1'),
(620, 'Changes on Article \'asdfasdf\' has been saved successfully.', '2024-01-10 13:11:39', 1, 4, '::1'),
(621, 'Features [inabsdioniasd]Data has added successfully.', '2024-01-10 13:13:19', 1, 3, '::1'),
(622, 'Features  [inabsdioniasd]Data has deleted successfully.', '2024-01-10 13:13:28', 1, 6, '::1'),
(623, 'Features [adfwererrd]Data has added successfully.', '2024-01-10 13:13:48', 1, 3, '::1'),
(624, 'Features  [adfwererrd]Data has deleted successfully.', '2024-01-10 13:14:09', 1, 6, '::1'),
(625, 'Package [testing 8.2]Data has added successfully.', '2024-01-10 13:14:35', 1, 3, '::1'),
(626, 'Sub Package \'asdasdasddasasd\' has added successfully.', '2024-01-10 13:15:21', 1, 3, '::1'),
(627, 'Slideshows  [asdasdasdasd]Data has deleted successfully.', '2024-01-10 13:15:39', 1, 6, '::1'),
(628, 'Slideshow  [asdasdasdasd]Data has deleted successfully.', '2024-01-10 13:15:39', 1, 6, '::1'),
(629, 'Slideshows  []Data has deleted successfully.', '2024-01-10 13:15:49', 1, 6, '::1'),
(630, 'Slideshow  []Data has deleted successfully.', '2024-01-10 13:15:49', 1, 6, '::1'),
(631, 'Vacency  [HR post wanted]Data has deleted successfully.', '2024-01-10 13:16:09', 1, 6, '::1'),
(632, 'Main service \'yuvvyuvyui\' has added successfully.', '2024-01-10 13:22:30', 1, 3, '::1'),
(633, 'Changes on Main service \'yuvvyuvyui\' has been saved successfully.', '2024-01-10 13:22:41', 1, 4, '::1'),
(634, 'Changes on Main service \'yuvvyuvyui\' has been saved successfully.', '2024-01-10 13:22:54', 1, 4, '::1'),
(635, 'Sub Gallery Image  [e]Data has deleted successfully.', '2024-01-10 13:25:45', 1, 6, '::1'),
(636, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 13:25:48', 1, 6, '::1'),
(637, 'Sub Gallery Image  [e]Data has deleted successfully.', '2024-01-10 13:25:48', 1, 6, '::1'),
(638, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 13:25:52', 1, 6, '::1'),
(639, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 13:25:52', 1, 6, '::1'),
(640, 'Sub Gallery Image  [e]Data has deleted successfully.', '2024-01-10 13:25:52', 1, 6, '::1'),
(641, 'Sub Gallery Image [ytvasd]Data has added successfully.', '2024-01-10 13:26:05', 1, 3, '::1'),
(642, 'Sub Gallery Image [yvasydiv]Data has added successfully.', '2024-01-10 13:26:05', 1, 3, '::1'),
(643, 'Sub Gallery Image [asdyvhjkv]Data has added successfully.', '2024-01-10 13:26:05', 1, 3, '::1'),
(644, 'User [Super admin  ] Edit Successfully', '2024-01-10 13:26:49', 1, 4, '::1'),
(645, 'Offers [ASAs]Data has added successfully.', '2024-01-10 13:29:39', 1, 3, '::1'),
(646, 'Offers [ASAs] Edit Successfully', '2024-01-10 13:30:02', 1, 4, '::1'),
(647, 'Offers [ASAs] Edit Successfully', '2024-01-10 13:30:23', 1, 4, '::1'),
(648, 'Login: Super admin   logged in.', '2024-01-10 14:50:52', 1, 1, '::1'),
(649, 'Sub Gallery Image  [a]Data has deleted successfully.', '2024-01-10 14:52:01', 1, 6, '::1'),
(650, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:04', 1, 6, '::1'),
(651, 'Sub Gallery Image  [a]Data has deleted successfully.', '2024-01-10 14:52:04', 1, 6, '::1'),
(652, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:30', 1, 6, '::1'),
(653, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:30', 1, 6, '::1'),
(654, 'Sub Gallery Image  [a]Data has deleted successfully.', '2024-01-10 14:52:30', 1, 6, '::1'),
(655, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:35', 1, 6, '::1'),
(656, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:35', 1, 6, '::1'),
(657, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:35', 1, 6, '::1'),
(658, 'Sub Gallery Image  [a]Data has deleted successfully.', '2024-01-10 14:52:35', 1, 6, '::1'),
(659, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:38', 1, 6, '::1'),
(660, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:38', 1, 6, '::1'),
(661, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:38', 1, 6, '::1'),
(662, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:38', 1, 6, '::1'),
(663, 'Sub Gallery Image  [a]Data has deleted successfully.', '2024-01-10 14:52:39', 1, 6, '::1'),
(664, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:44', 1, 6, '::1'),
(665, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:44', 1, 6, '::1'),
(666, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:44', 1, 6, '::1'),
(667, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:44', 1, 6, '::1'),
(668, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:44', 1, 6, '::1'),
(669, 'Sub Gallery Image  [a]Data has deleted successfully.', '2024-01-10 14:52:44', 1, 6, '::1'),
(670, 'Sub Gallery Image [a]Data has added successfully.', '2024-01-10 14:53:12', 1, 3, '::1'),
(671, 'Sub Gallery Image [a]Data has added successfully.', '2024-01-10 14:53:12', 1, 3, '::1'),
(672, 'Sub Gallery Image [a]Data has added successfully.', '2024-01-10 14:53:12', 1, 3, '::1'),
(673, 'Popup \'asefasdasd\' has added successfully.', '2024-01-10 14:55:03', 1, 3, '::1'),
(674, 'Services [rtsetsdf]Data has added successfully.', '2024-01-10 14:57:52', 1, 3, '::1'),
(675, 'Servicess  [rtsetsdf]Data has deleted successfully.', '2024-01-10 14:58:09', 1, 6, '::1'),
(676, 'Services  [rtsetsdf]Data has deleted successfully.', '2024-01-10 14:58:09', 1, 6, '::1'),
(677, 'Login: Super admin   logged in.', '2024-01-11 17:07:29', 1, 1, '::1'),
(678, 'Login: ClubHimalaya   logged in.', '2024-01-12 10:59:26', 1, 1, '::1'),
(679, 'Login: ClubHimalaya   logged in.', '2024-01-16 10:32:37', 1, 1, '::1'),
(680, 'SocialNetworking [Facebook] Edit Successfully', '2024-01-16 10:35:23', 1, 4, '::1'),
(681, 'Login: ClubHimalaya   logged in.', '2024-01-17 11:13:45', 1, 1, '::1'),
(682, 'Menu  [HOME]Data has deleted successfully.', '2024-01-17 11:13:52', 1, 6, '::1'),
(683, 'Menu  [ABOUT US]Data has deleted successfully.', '2024-01-17 11:13:55', 1, 6, '::1'),
(684, 'Menu  [ROOMS & SUITES]Data has deleted successfully.', '2024-01-17 11:13:57', 1, 6, '::1'),
(685, 'Menu  [MICE]Data has deleted successfully.', '2024-01-17 11:13:59', 1, 6, '::1'),
(686, 'Menu  [RESTAURANTS & BAR]Data has deleted successfully.', '2024-01-17 11:14:01', 1, 6, '::1'),
(687, 'Menu  [FACILITIES]Data has deleted successfully.', '2024-01-17 11:14:03', 1, 6, '::1'),
(688, 'Menu  [GALLERY]Data has deleted successfully.', '2024-01-17 11:14:05', 1, 6, '::1'),
(689, 'Menu  [CAREER]Data has deleted successfully.', '2024-01-17 11:14:07', 1, 6, '::1'),
(690, 'Menu  [CONTACT US]Data has deleted successfully.', '2024-01-17 11:14:09', 1, 6, '::1'),
(691, 'Menu  [Our Partners]Data has deleted successfully.', '2024-01-17 11:14:11', 1, 6, '::1'),
(692, 'Login: ClubHimalaya   logged in.', '2024-01-18 13:37:35', 1, 1, '::1'),
(693, 'Login: ClubHimalaya   logged in.', '2024-01-23 15:41:13', 1, 1, '::1'),
(694, 'Login: Super admin   logged in.', '2024-01-23 15:50:09', 1, 1, '::1'),
(695, 'Login: ClubHimalaya   logged in.', '2024-01-23 15:50:16', 1, 1, '::1'),
(696, 'User [ClubHimalaya  ] Edit Successfully', '2024-01-23 15:53:56', 1, 4, '::1'),
(697, 'User [ClubHimalaya  ] Edit Successfully', '2024-01-23 15:57:02', 1, 4, '::1'),
(698, 'Login: ClubHimalaya   logged in.', '2024-01-23 15:57:08', 1, 1, '::1'),
(699, 'Login: Super admin   logged in.', '2024-01-23 16:00:52', 1, 1, '::1'),
(700, 'User [Super admin  ] Edit Successfully', '2024-01-23 16:47:00', 1, 4, '::1'),
(701, 'User Group [Administrator] Edit Successfully', '2024-01-23 16:48:35', 1, 4, '::1'),
(702, 'User Group [Administrator] Edit Successfully', '2024-01-23 16:48:59', 1, 4, '::1'),
(703, 'User [Super admin  ] Edit Successfully', '2024-01-23 16:49:15', 1, 4, '::1'),
(704, 'Login: Super admin   logged in.', '2024-01-23 16:49:20', 1, 1, '::1'),
(705, 'User [Super admin  ] Edit Successfully', '2024-01-23 16:49:39', 1, 4, '::1'),
(706, 'Login: Super admin   logged in.', '2024-01-23 16:49:44', 1, 1, '::1'),
(707, 'User Group [Administrator] Edit Successfully', '2024-01-23 16:56:17', 1, 4, '::1'),
(708, 'User [Super admin  ] Edit Successfully', '2024-01-23 16:56:27', 1, 4, '::1'),
(709, 'Login: Super admin   logged in.', '2024-01-23 16:56:31', 1, 1, '::1'),
(710, 'Login: Super admin   logged in.', '2024-01-24 10:56:17', 1, 1, '::1'),
(711, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2024-01-24 11:15:08', 1, 4, '::1'),
(712, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2024-01-24 11:18:03', 1, 4, '::1'),
(713, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2024-01-24 11:18:13', 1, 4, '::1'),
(714, 'User [Super admin  ] Edit Successfully', '2024-01-24 11:28:50', 1, 4, '::1'),
(715, 'Login: Super admin   logged in.', '2024-01-24 12:12:57', 1, 1, '::1'),
(716, 'Login: Super admin   logged in.', '2024-01-24 12:13:06', 1, 1, '::1'),
(717, 'Login: Super admin   logged in.', '2024-01-24 12:14:50', 1, 1, '::1'),
(718, 'Login: Super admin   logged in.', '2024-01-24 12:17:27', 1, 1, '::1'),
(719, 'Login: Super admin   logged in.', '2024-01-24 12:18:09', 1, 1, '::1'),
(720, 'Login: Super admin   logged in.', '2024-01-24 12:18:42', 1, 1, '::1'),
(721, 'User Group [Administrator] Edit Successfully', '2024-01-24 12:21:38', 1, 4, '::1'),
(722, 'User Group [Administrator] Edit Successfully', '2024-01-24 12:39:43', 1, 4, '::1'),
(723, 'Slideshow [testing video]Data has added successfully.', '2024-01-24 12:50:22', 1, 3, '::1'),
(724, 'Changes on Config \'Synhawk3.0\' has been saved successfully.', '2024-01-24 15:21:29', 1, 4, '::1'),
(725, 'Changes on Config \'Synhawk3.0\' has been saved successfully.', '2024-01-24 15:22:25', 1, 4, '::1'),
(726, 'Changes on Config \'Synhawk3.0\' has been saved successfully.', '2024-01-24 15:22:58', 1, 4, '::1'),
(727, 'Successfully Preference Properties Settings', '2024-01-24 15:54:10', 1, 4, '::1'),
(728, 'Login: ClubHimalaya   logged in.', '2024-01-25 15:54:57', 1, 1, '::1'),
(729, 'Login: ClubHimalaya   logged in.', '2024-01-25 15:55:21', 1, 1, '::1'),
(730, 'Login: ClubHimalaya   logged in.', '2024-01-25 15:56:37', 1, 1, '::1'),
(731, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-25 15:56:52', 1, 4, '::1'),
(732, 'Login: ClubHimalaya   logged in.', '2024-01-25 16:18:24', 1, 1, '::1'),
(733, 'Login: Super admin   logged in.', '2024-01-25 16:21:15', 1, 1, '::1'),
(734, 'User Group [Administrator] Edit Successfully', '2024-01-25 16:21:39', 1, 4, '::1'),
(735, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-25 16:23:44', 1, 4, '::1'),
(736, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-25 16:23:58', 1, 4, '::1'),
(737, 'Successfully Preference Properties Settings', '2024-01-25 16:26:19', 1, 4, '::1'),
(738, 'User Group [Administrator] Edit Successfully', '2024-01-25 16:27:28', 1, 4, '::1'),
(739, 'Features [facilities]Data has added successfully.', '2024-01-25 16:51:25', 1, 3, '::1'),
(740, 'Gallery Image [] Edit Successfully', '2024-01-25 16:52:36', 1, 4, '::1'),
(741, 'Gallery Image [asdasd] Edit Successfully', '2024-01-25 16:52:39', 1, 4, '::1'),
(742, 'Login: ClubHimalaya   logged in.', '2024-01-26 15:22:51', 1, 1, '::1'),
(743, 'Testimonial [Andrew Parker] Edit Successfully', '2024-01-26 15:27:16', 1, 4, '::1'),
(744, 'Testimonial [Andrew Parker] Edit Successfully', '2024-01-26 15:27:20', 1, 4, '::1'),
(745, 'Testimonial [Andrew Parker] Edit Successfully', '2024-01-26 15:36:21', 1, 4, '::1'),
(746, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-26 16:26:36', 1, 4, '::1'),
(747, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-26 16:26:45', 1, 4, '::1'),
(748, 'Login: ClubHimalaya   logged in.', '2024-01-28 10:29:13', 1, 1, '::1'),
(749, 'User Group [Administrator] Edit Successfully', '2024-01-28 10:45:29', 1, 4, '::1'),
(750, 'Login: ClubHimalaya   logged in.', '2024-01-28 11:03:59', 1, 1, '::1'),
(751, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-28 11:20:35', 1, 4, '::1'),
(752, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-28 11:20:43', 1, 4, '::1'),
(753, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-28 11:23:35', 1, 4, '::1'),
(754, 'User Group [General Admin] Edit Successfully', '2024-01-28 11:32:02', 1, 4, '::1'),
(755, 'Login: Super admin   logged in.', '2024-01-28 11:49:53', 1, 1, '::1'),
(756, 'User Group [Hotel Users] Edit Successfully', '2024-01-28 11:50:16', 1, 4, '::1'),
(757, 'User Group [General Users] Edit Successfully', '2024-01-28 11:50:38', 1, 4, '::1'),
(758, 'User [ClubHimalaya  ] Edit Successfully', '2024-01-28 11:50:52', 1, 4, '::1'),
(759, 'User [asdasd asdasd asdasd] Edit Successfully', '2024-01-28 11:51:10', 1, 4, '::1'),
(760, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:08:34', 1, 3, '::1'),
(761, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:12:59', 1, 3, '::1'),
(762, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:15:31', 1, 3, '::1'),
(763, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:17:00', 1, 3, '::1'),
(764, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:20:20', 1, 3, '::1'),
(765, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:21:19', 1, 3, '::1'),
(766, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:22:38', 1, 3, '::1'),
(767, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:22:52', 1, 3, '::1'),
(768, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:23:15', 1, 3, '::1'),
(769, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:23:24', 1, 3, '::1'),
(770, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:24:52', 1, 3, '::1'),
(771, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:26:06', 1, 3, '::1'),
(772, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:30:36', 1, 3, '::1'),
(773, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:35:36', 1, 3, '::1'),
(774, 'Slideshow [asdasdasd]Data has added successfully.', '2024-01-28 12:36:35', 1, 3, '::1'),
(775, 'Slideshow [asdasdasdasdasd]Data has added successfully.', '2024-01-28 12:42:51', 1, 3, '::1'),
(776, 'Slideshow [asdasdasdasdasd]Data has added successfully.', '2024-01-28 12:43:05', 1, 3, '::1'),
(777, 'Slideshow [asdasdasdasdasd]Data has added successfully.', '2024-01-28 12:43:36', 1, 3, '::1'),
(778, 'Slideshows  [asdasdasdasdasd]Data has deleted successfully.', '2024-01-28 12:55:32', 1, 6, '::1'),
(779, 'Slideshow  [asdasdasdasdasd]Data has deleted successfully.', '2024-01-28 12:55:32', 1, 6, '::1'),
(780, 'Slideshows  [asdasdasdasdasd]Data has deleted successfully.', '2024-01-28 12:55:35', 1, 6, '::1'),
(781, 'Slideshow  [asdasdasdasdasd]Data has deleted successfully.', '2024-01-28 12:55:35', 1, 6, '::1'),
(782, 'Slideshows  [asdasdasdasdasd]Data has deleted successfully.', '2024-01-28 12:55:37', 1, 6, '::1'),
(783, 'Slideshow  [asdasdasdasdasd]Data has deleted successfully.', '2024-01-28 12:55:37', 1, 6, '::1'),
(784, 'Slideshow [asdasdasd]Data has added successfully.', '2024-01-28 13:03:33', 1, 3, '::1'),
(785, 'Slideshow [asdasdasd]Data has added successfully.', '2024-01-28 13:05:53', 1, 3, '::1'),
(786, 'Slideshow [asdasdasd]Data has added successfully.', '2024-01-28 13:06:56', 1, 3, '::1'),
(787, 'Slideshow [asdasdas]Data has added successfully.', '2024-01-28 13:09:30', 1, 3, '::1'),
(788, 'Slideshow [asdasdas]Data has added successfully.', '2024-01-28 13:09:43', 1, 3, '::1'),
(789, 'Slideshow [asdasdas]Data has added successfully.', '2024-01-28 13:13:33', 1, 3, '::1'),
(790, 'Slideshows  [asdasdas]Data has deleted successfully.', '2024-01-28 13:14:48', 1, 6, '::1'),
(791, 'Slideshow  [asdasdas]Data has deleted successfully.', '2024-01-28 13:14:48', 1, 6, '::1'),
(792, 'Slideshows  [asdasdas]Data has deleted successfully.', '2024-01-28 13:14:51', 1, 6, '::1'),
(793, 'Slideshow  [asdasdas]Data has deleted successfully.', '2024-01-28 13:14:51', 1, 6, '::1'),
(794, 'Slideshows  [asdasdas]Data has deleted successfully.', '2024-01-28 13:14:54', 1, 6, '::1'),
(795, 'Slideshow  [asdasdas]Data has deleted successfully.', '2024-01-28 13:14:54', 1, 6, '::1'),
(796, 'Slideshow [asdasdasd]Data has added successfully.', '2024-01-28 13:16:38', 1, 3, '::1'),
(797, 'Slideshow [asdasdasd]Data has added successfully.', '2024-01-28 13:16:46', 1, 3, '::1'),
(798, 'Slideshow [asdasd]Data has added successfully.', '2024-01-28 13:20:47', 1, 3, '::1'),
(799, 'Slideshow [asdasd]Data has added successfully.', '2024-01-28 13:21:28', 1, 3, '::1'),
(800, 'Slideshow  [asdasd]Data has deleted successfully.', '2024-01-28 13:21:46', 1, 6, '::1'),
(801, 'Slideshow  [asdasdasd]Data has deleted successfully.', '2024-01-28 13:21:46', 1, 6, '::1'),
(802, 'Slideshow  [asdasdasd]Data has deleted successfully.', '2024-01-28 13:21:46', 1, 6, '::1'),
(803, 'Slideshow  [testing]Data has deleted successfully.', '2024-01-28 13:21:46', 1, 6, '::1'),
(804, 'Slideshow [asdasdasdasdasd]Data has added successfully.', '2024-01-28 13:22:05', 1, 3, '::1'),
(805, 'Slideshow [asdasdasdasdasdsASDasd] Edit Successfully', '2024-01-28 13:24:30', 1, 4, '::1'),
(806, 'Slideshow [asdasdasd]Data has added successfully.', '2024-01-28 13:25:05', 1, 3, '::1'),
(807, 'Slideshow [asdasdasd]Data has added successfully.', '2024-01-28 13:31:57', 1, 3, '::1'),
(808, 'Slideshow [asdasdasd]Data has added successfully.', '2024-01-28 13:40:15', 1, 3, '::1'),
(809, 'Slideshow [asdasdasd]Data has added successfully.', '2024-01-28 13:41:03', 1, 3, '::1'),
(810, 'Slideshow [asdasdasd]Data has added successfully.', '2024-01-28 13:41:40', 1, 3, '::1'),
(811, 'Slideshow [asdasd]Data has added successfully.', '2024-01-28 13:42:15', 1, 3, '::1'),
(812, 'Slideshow [asdasd]Data has added successfully.', '2024-01-28 13:42:44', 1, 3, '::1'),
(813, 'Slideshow [asdasd]Data has added successfully.', '2024-01-28 13:47:49', 1, 3, '::1'),
(814, 'Slideshow [asdasd]Data has added successfully.', '2024-01-28 13:48:10', 1, 3, '::1'),
(815, 'Slideshow [asdasd]Data has added successfully.', '2024-01-28 13:51:14', 1, 3, '::1'),
(816, 'Successfully Tour Package Properties Settings', '2024-01-28 14:10:12', 1, 4, '::1'),
(817, 'Successfully Tour Package Properties Settings', '2024-01-28 14:10:30', 1, 4, '::1'),
(818, 'Login: Super admin   logged in.', '2024-01-28 14:51:04', 1, 1, '::1'),
(819, 'Slideshow  [asdasd]Data has deleted successfully.', '2024-01-28 14:51:38', 1, 6, '::1'),
(820, 'Slideshow  [asdasd]Data has deleted successfully.', '2024-01-28 14:51:38', 1, 6, '::1'),
(821, 'Slideshow  [asdasd]Data has deleted successfully.', '2024-01-28 14:51:38', 1, 6, '::1'),
(822, 'Slideshow  [asdasd]Data has deleted successfully.', '2024-01-28 14:51:38', 1, 6, '::1'),
(823, 'Slideshow  [asdasdasd]Data has deleted successfully.', '2024-01-28 14:51:38', 1, 6, '::1'),
(824, 'Slideshow  [asdasdasd]Data has deleted successfully.', '2024-01-28 14:51:38', 1, 6, '::1'),
(825, 'Slideshow  [asdasdasd]Data has deleted successfully.', '2024-01-28 14:51:38', 1, 6, '::1'),
(826, 'Slideshow  [asdasdasd]Data has deleted successfully.', '2024-01-28 14:51:38', 1, 6, '::1'),
(827, 'Slideshow  [asdasdasd]Data has deleted successfully.', '2024-01-28 14:51:38', 1, 6, '::1'),
(828, 'Slideshow [qweqweqwe]Data has added successfully.', '2024-01-28 14:54:26', 1, 3, '::1'),
(829, 'Slideshow [qweqweqwe]Data has added successfully.', '2024-01-28 14:54:46', 1, 3, '::1'),
(830, 'Slideshow [sadfasdsdafasd]Data has added successfully.', '2024-01-28 15:02:25', 1, 3, '::1'),
(831, 'Slideshow [sadfasdsdafasd]Data has added successfully.', '2024-01-28 15:02:49', 1, 3, '::1'),
(832, 'Slideshow [asd]Data has added successfully.', '2024-01-28 15:09:35', 1, 3, '::1'),
(833, 'Slideshow  [sadfasdsdafasd]Data has deleted successfully.', '2024-01-28 15:14:18', 1, 6, '::1'),
(834, 'Slideshow  [sadfasdsdafasd]Data has deleted successfully.', '2024-01-28 15:14:18', 1, 6, '::1'),
(835, 'Slideshow  [qweqweqwe]Data has deleted successfully.', '2024-01-28 15:14:18', 1, 6, '::1'),
(836, 'Slideshow  [qweqweqwe]Data has deleted successfully.', '2024-01-28 15:14:18', 1, 6, '::1'),
(837, 'Slideshow  [asdasd]Data has deleted successfully.', '2024-01-28 15:14:18', 1, 6, '::1'),
(838, 'Slideshow  [dsaasd]Data has deleted successfully.', '2024-01-28 15:14:18', 1, 6, '::1'),
(839, 'Slideshow [saddsaasd]Data has added successfully.', '2024-01-28 15:14:30', 1, 3, '::1'),
(840, 'Slideshow [saddsaasd]Data has added successfully.', '2024-01-28 15:15:37', 1, 3, '::1'),
(841, 'Slideshow [saddsaasd]Data has added successfully.', '2024-01-28 15:17:55', 1, 3, '::1'),
(842, 'Slideshow [saddsaasd]Data has added successfully.', '2024-01-28 15:20:35', 1, 3, '::1'),
(843, 'Slideshow  [saddsaasd]Data has deleted successfully.', '2024-01-28 15:20:59', 1, 6, '::1'),
(844, 'Slideshow  [saddsaasd]Data has deleted successfully.', '2024-01-28 15:20:59', 1, 6, '::1'),
(845, 'Slideshow  [saddsaasd]Data has deleted successfully.', '2024-01-28 15:20:59', 1, 6, '::1'),
(846, 'Slideshow  [saddsaasd]Data has deleted successfully.', '2024-01-28 15:20:59', 1, 6, '::1'),
(847, 'Slideshow [dsadsadad]Data has added successfully.', '2024-01-28 15:21:34', 1, 3, '::1'),
(848, 'Slideshow [asdasdasdsad]Data has added successfully.', '2024-01-28 15:22:18', 1, 3, '::1'),
(849, 'Slideshow [asdasdasdsad]Data has added successfully.', '2024-01-28 15:23:07', 1, 3, '::1'),
(850, 'Slideshow [asdasdasdsada]Data has added successfully.', '2024-01-28 15:24:42', 1, 3, '::1'),
(851, 'Slideshow [asdasdasdsad] Edit Successfully', '2024-01-28 15:30:58', 1, 4, '::1'),
(852, 'Slideshow  [asdasdasdsada]Data has deleted successfully.', '2024-01-28 15:31:50', 1, 6, '::1'),
(853, 'Slideshow  [asdasdasdsad]Data has deleted successfully.', '2024-01-28 15:31:50', 1, 6, '::1'),
(854, 'Slideshow  [asdasdasdsad]Data has deleted successfully.', '2024-01-28 15:31:50', 1, 6, '::1'),
(855, 'Slideshow  [dsadsadad]Data has deleted successfully.', '2024-01-28 15:31:50', 1, 6, '::1'),
(856, 'Slideshow [asd]Data has added successfully.', '2024-01-28 15:32:02', 1, 3, '::1'),
(857, 'Slideshow [asdd] Edit Successfully', '2024-01-28 15:32:15', 1, 4, '::1'),
(858, 'Slideshow [asdd] Edit Successfully', '2024-01-28 15:35:12', 1, 4, '::1'),
(859, 'Slideshow [asddd] Edit Successfully', '2024-01-28 15:35:25', 1, 4, '::1'),
(860, 'Slideshow [asddd] Edit Successfully', '2024-01-28 15:35:32', 1, 4, '::1'),
(861, 'Slideshow [asddd] Edit Successfully', '2024-01-28 15:35:35', 1, 4, '::1'),
(862, 'Login: ClubHimalaya   logged in.', '2024-01-28 15:38:58', 1, 1, '::1'),
(863, 'User [ClubHimalayaa  ] Edit Successfully', '2024-01-28 15:39:06', 1, 4, '::1'),
(864, 'User [ClubHimalayaa  ] Edit Successfully', '2024-01-28 15:39:23', 1, 4, '::1'),
(865, 'Login: Super admin   logged in.', '2024-01-28 15:40:29', 1, 1, '::1'),
(866, 'Login: ClubHimalayaa   logged in.', '2024-01-28 15:44:54', 1, 1, '::1'),
(867, 'Login: ClubHimalayaa   logged in.', '2024-01-28 15:45:31', 1, 1, '::1'),
(868, 'Login: Super admin   logged in.', '2024-01-28 15:45:38', 1, 1, '::1'),
(869, 'User [ClubHimalayaa  ] Edit Successfully', '2024-01-28 15:45:49', 1, 4, '::1'),
(870, 'Login: ClubHimalayaa   logged in.', '2024-01-28 15:46:07', 1, 1, '::1'),
(871, 'User [ClubHimalayaa  ] Edit Successfully', '2024-01-28 15:46:55', 1, 4, '::1'),
(872, 'Login: Super admin   logged in.', '2024-01-28 15:48:13', 1, 1, '::1'),
(873, 'Login: ClubHimalayaa   logged in.', '2024-01-28 15:48:32', 1, 1, '::1'),
(874, 'Login: Super admin   logged in.', '2024-01-28 15:48:35', 1, 1, '::1'),
(875, 'User [ClubHimalayaa  ] Edit Successfully', '2024-01-28 15:50:22', 1, 4, '::1'),
(876, 'Login: ClubHimalayaa   logged in.', '2024-01-28 15:50:28', 1, 1, '::1'),
(877, 'User [ClubHimalaya  ] Edit Successfully', '2024-01-28 15:50:42', 1, 4, '::1'),
(878, 'Login: ClubHimalaya   logged in.', '2024-01-28 15:50:49', 1, 1, '::1'),
(879, 'Login: Super admin   logged in.', '2024-01-28 15:51:57', 1, 1, '::1'),
(880, 'User [Super admina  ] Edit Successfully', '2024-01-28 15:52:08', 1, 4, '::1'),
(881, 'User [Super admina  ] Edit Successfully', '2024-01-28 15:55:50', 1, 4, '::1'),
(882, 'Login: Super admina   logged in.', '2024-01-28 15:55:58', 1, 1, '::1'),
(883, 'User [Super admin  ] Edit Successfully', '2024-01-28 15:56:05', 1, 4, '::1'),
(884, 'Login: Super admin   logged in.', '2024-01-28 15:56:10', 1, 1, '::1'),
(885, 'User [Super admin  ] Edit Successfully', '2024-01-28 15:58:44', 1, 4, '::1'),
(886, 'Login: Super admin   logged in.', '2024-01-28 15:58:54', 1, 1, '::1'),
(887, 'User [Super admina  ] Edit Successfully', '2024-01-28 15:59:10', 1, 4, '::1'),
(888, 'Login: Super admina   logged in.', '2024-01-28 15:59:16', 1, 1, '::1'),
(889, 'User [Super admin  ] Edit Successfully', '2024-01-28 15:59:25', 1, 4, '::1'),
(890, 'Login: ClubHimalaya   logged in.', '2024-01-28 16:00:08', 1, 1, '::1'),
(891, 'Login: Super admin   logged in.', '2024-01-28 16:01:36', 1, 1, '::1'),
(892, 'Successfully Preference Properties Settings', '2024-01-28 16:26:42', 1, 4, '::1'),
(893, 'Successfully Preference Properties Settings', '2024-01-28 16:29:24', 1, 4, '::1'),
(894, 'Successfully Preference Properties Settings', '2024-01-28 16:32:13', 1, 4, '::1'),
(895, 'Successfully Preference Properties Settings', '2024-01-28 16:32:22', 1, 4, '::1'),
(896, 'Login: Super admin   logged in.', '2024-01-28 16:52:41', 1, 1, '::1'),
(897, 'Login: ClubHimalaya   logged in.', '2024-01-28 16:53:39', 1, 1, '::1'),
(898, 'Login: Super admin   logged in.', '2024-01-28 16:54:10', 1, 1, '::1'),
(899, 'User Group [Administrator] Edit Successfully', '2024-01-28 17:02:39', 1, 4, '::1'),
(900, 'User Group [Administrator] Edit Successfully', '2024-01-28 17:02:46', 1, 4, '::1'),
(901, 'User Group [Hotel Users] Edit Successfully', '2024-01-28 17:03:12', 1, 4, '::1'),
(902, 'User Group [General Users] Edit Successfully', '2024-01-28 17:03:22', 1, 4, '::1'),
(903, 'Successfully Preference Properties Settings', '2024-01-28 17:05:34', 1, 4, '::1'),
(904, 'Slideshow [qweqwe]Data has added successfully.', '2024-01-28 17:06:12', 1, 3, '::1'),
(905, 'Slideshow [qweqweqw]Data has added successfully.', '2024-01-28 17:06:28', 1, 3, '::1'),
(906, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-28 17:16:18', 1, 4, '::1'),
(907, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-28 17:17:16', 1, 4, '::1'),
(908, 'Login: Super admin   logged in.', '2024-01-28 23:06:25', 1, 1, '::1'),
(909, 'Login: Super admin   logged in.', '2024-01-29 10:32:12', 1, 1, '::1'),
(910, 'Login: ClubHimalaya   logged in.', '2024-01-29 10:43:48', 1, 1, '::1'),
(911, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2024-01-29 10:44:19', 1, 4, '::1'),
(912, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2024-01-29 10:44:34', 1, 4, '::1'),
(913, 'Changes on Sub Package \'Deluxe Premium Room\' has been saved successfully.', '2024-01-29 10:44:46', 1, 4, '::1'),
(914, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2024-01-29 10:45:03', 1, 4, '::1'),
(915, 'Login: Super admin   logged in.', '2024-01-29 10:54:13', 1, 1, '::1'),
(916, 'Successfully News Properties Settings', '2024-01-29 10:57:01', 1, 4, '::1'),
(917, 'Successfully News Properties Settings', '2024-01-29 10:59:28', 1, 4, '::1'),
(918, 'Successfully News Properties Settings', '2024-01-29 11:02:32', 1, 4, '::1'),
(919, 'Successfully News Properties Settings', '2024-01-29 11:03:39', 1, 4, '::1'),
(920, 'Successfully Offers Properties Settings', '2024-01-29 11:07:43', 1, 4, '::1'),
(921, 'Successfully  Package Properties Settings', '2024-01-29 11:22:42', 1, 4, '::1'),
(922, 'Successfully Social Link Properties Settings', '2024-01-29 11:25:20', 1, 4, '::1'),
(923, 'Successfully Articles Properties Settings', '2024-01-29 11:28:22', 1, 4, '::1'),
(924, 'Successfully Slideshow Properties Settings', '2024-01-29 11:29:23', 1, 4, '::1'),
(925, 'Successfully  Package Properties Settings', '2024-01-29 11:30:28', 1, 4, '::1'),
(926, 'Successfully Gallery Properties Settings', '2024-01-29 11:33:20', 1, 4, '::1'),
(927, 'Gallery [adasdas]Data has added successfully.', '2024-01-29 11:33:38', 1, 3, '::1'),
(928, 'Successfully Testimonial Properties Settings', '2024-01-29 11:37:44', 1, 4, '::1'),
(929, 'Successfully Social Link Properties Settings', '2024-01-29 11:47:58', 1, 4, '::1'),
(930, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-29 11:50:01', 1, 4, '::1'),
(931, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-29 11:51:11', 1, 4, '::1'),
(932, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-29 12:15:31', 1, 4, '::1'),
(933, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-29 12:15:47', 1, 4, '::1'),
(934, 'Login: ClubHimalaya   logged in.', '2024-05-10 16:32:10', 1, 1, '::1'),
(935, 'Login: Super admin   logged in.', '2024-05-10 16:40:01', 1, 1, '::1'),
(936, 'User Group [Administrator] Edit Successfully', '2024-05-10 16:40:11', 1, 4, '::1'),
(937, 'Download [asdasd]Data has added successfully.', '2024-05-10 16:44:57', 1, 3, '::1'),
(938, 'Login: admin logged in.', '2024-07-31 21:19:25', 1, 1, '::1'),
(939, 'Menu  [FAQ\'s]Data has deleted successfully.', '2024-07-31 21:25:01', 1, 6, '::1'),
(940, 'Menu  [Enhanced Safety]Data has deleted successfully.', '2024-07-31 21:25:04', 1, 6, '::1'),
(941, 'Menu  [Event Halls]Data has deleted successfully.', '2024-07-31 21:25:06', 1, 6, '::1'),
(942, 'Menu  [Contact]Data has deleted successfully.', '2024-07-31 21:25:08', 1, 6, '::1'),
(943, 'Menu [Home] CreatedData has added successfully.', '2024-07-31 21:25:34', 1, 3, '::1'),
(944, 'Menu [Accommodation] CreatedData has added successfully.', '2024-07-31 21:25:52', 1, 3, '::1'),
(945, 'Menu [Dining] CreatedData has added successfully.', '2024-07-31 21:26:08', 1, 3, '::1'),
(946, 'Menu [Meeting & Events] CreatedData has added successfully.', '2024-07-31 21:26:29', 1, 3, '::1'),
(947, 'Menu [Gallery] CreatedData has added successfully.', '2024-07-31 21:27:09', 1, 3, '::1'),
(948, 'Menu [Facilities] CreatedData has added successfully.', '2024-07-31 21:27:22', 1, 3, '::1'),
(949, 'Menu [Contact] CreatedData has added successfully.', '2024-07-31 21:27:35', 1, 3, '::1'),
(950, 'Menu [The Hotel] CreatedData has added successfully.', '2024-07-31 21:27:58', 1, 3, '::1'),
(951, 'Menu [Meeting & Events] CreatedData has added successfully.', '2024-07-31 21:28:06', 1, 3, '::1'),
(952, 'Menu [Gallery] CreatedData has added successfully.', '2024-07-31 21:28:14', 1, 3, '::1'),
(953, 'Menu [career] CreatedData has added successfully.', '2024-07-31 21:28:22', 1, 3, '::1'),
(954, 'Login: admin logged in.', '2024-08-22 15:43:13', 1, 1, '::1'),
(955, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-08-22 15:45:12', 1, 4, '::1'),
(956, 'Changes on Article \'About Annapurna View\' has been saved successfully.', '2024-08-22 16:12:49', 1, 4, '::1'),
(957, 'Changes on Article \'About Annapurna View\' has been saved successfully.', '2024-08-22 16:13:32', 1, 4, '::1'),
(958, 'Services [LED Tv] Edit Successfully', '2024-08-22 16:36:10', 1, 4, '::1'),
(959, 'Article \'Activities Around\' has added successfully.', '2024-08-22 16:45:51', 1, 3, '::1'),
(960, 'Changes on Article \'Activities Around\' has been saved successfully.', '2024-08-22 16:50:08', 1, 4, '::1'),
(961, 'Changes on Article \'Activities Around\' has been saved successfully.', '2024-08-22 17:24:41', 1, 4, '::1'),
(962, 'Login: admin logged in.', '2024-08-23 09:29:13', 1, 1, '::1'),
(963, 'Package Rooms Edit Successfully', '2024-08-23 09:42:40', 1, 4, '::1'),
(964, 'Package Accommodations Edit Successfully', '2024-08-23 09:43:20', 1, 4, '::1'),
(965, 'Menu [Accommodation] Edit Successfully', '2024-08-23 09:43:38', 1, 4, '::1'),
(966, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2024-08-23 09:48:09', 1, 4, '::1'),
(967, 'SubPackage Gallery Image [deluxe]Data has deleted successfully.', '2024-08-23 10:10:37', 1, 6, '::1'),
(968, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-08-23 10:10:40', 1, 6, '::1'),
(969, 'SubPackage Gallery Image [delxue]Data has deleted successfully.', '2024-08-23 10:10:40', 1, 6, '::1'),
(970, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-08-23 10:10:42', 1, 6, '::1'),
(971, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-08-23 10:10:42', 1, 6, '::1'),
(972, 'SubPackage Gallery Image [deluxe]Data has deleted successfully.', '2024-08-23 10:10:42', 1, 6, '::1'),
(973, 'Sub Package Image [room1]Data has added successfully.', '2024-08-23 10:11:24', 1, 3, '::1'),
(974, 'Sub Package Image [room2]Data has added successfully.', '2024-08-23 10:11:24', 1, 3, '::1'),
(975, 'Sub Package Image [room 3]Data has added successfully.', '2024-08-23 10:11:24', 1, 3, '::1'),
(976, 'Sub Package Image [room 4]Data has added successfully.', '2024-08-23 10:11:24', 1, 3, '::1'),
(977, 'Sub Package Image [room5]Data has added successfully.', '2024-08-23 10:11:24', 1, 3, '::1'),
(978, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2024-08-23 10:31:30', 1, 4, '::1'),
(979, 'Features [Room Amenities]Data has added successfully.', '2024-08-23 10:32:59', 1, 3, '::1'),
(980, 'Features [Twin Bed]Data has added successfully.', '2024-08-23 10:33:47', 1, 3, '::1'),
(981, 'Features  [Twin Bed]Data has deleted successfully.', '2024-08-23 10:33:57', 1, 6, '::1'),
(982, 'Features [Twin Bed]Data has added successfully.', '2024-08-23 10:34:07', 1, 3, '::1'),
(983, 'Features [Breakfast]Data has added successfully.', '2024-08-23 10:34:24', 1, 3, '::1'),
(984, 'Features [Bathrobe & Slippers]Data has added successfully.', '2024-08-23 10:34:43', 1, 3, '::1'),
(985, 'Features [Hairdryer]Data has added successfully.', '2024-08-23 10:35:10', 1, 3, '::1'),
(986, 'Features [Bathtub]Data has added successfully.', '2024-08-23 10:35:23', 1, 3, '::1'),
(987, 'Features [Sitting Area]Data has added successfully.', '2024-08-23 10:35:33', 1, 3, '::1'),
(988, 'Features [Desk]Data has added successfully.', '2024-08-23 10:35:42', 1, 3, '::1'),
(989, 'Features [Mountains View]Data has added successfully.', '2024-08-23 10:36:13', 1, 3, '::1'),
(990, 'Features [Wifi]Data has added successfully.', '2024-08-23 10:36:37', 1, 3, '::1'),
(991, 'Features [Air Conditioner]Data has added successfully.', '2024-08-23 10:36:48', 1, 3, '::1'),
(992, 'Features [Television]Data has added successfully.', '2024-08-23 10:37:00', 1, 3, '::1'),
(993, 'Features [Safe locker]Data has added successfully.', '2024-08-23 10:37:12', 1, 3, '::1'),
(994, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2024-08-23 10:37:43', 1, 4, '::1'),
(995, 'Testimonial [Andrew Parker] Edit Successfully', '2024-08-23 11:08:10', 1, 4, '::1'),
(996, 'Menu [Home] Edit Successfully', '2024-08-23 11:12:07', 1, 4, '::1'),
(997, 'Menu [Home] Edit Successfully', '2024-08-23 11:13:43', 1, 4, '::1'),
(998, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2024-08-23 11:17:40', 1, 4, '::1'),
(999, 'Changes on Sub Package \'Deluxe Premium Room\' has been saved successfully.', '2024-08-23 11:17:54', 1, 4, '::1'),
(1000, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2024-08-23 11:18:09', 1, 4, '::1'),
(1001, 'Testimonial [Andrew Parker] Edit Successfully', '2024-08-23 11:22:41', 1, 4, '::1'),
(1002, 'Testimonial [PAVEL A] Edit Successfully', '2024-08-23 11:23:23', 1, 4, '::1'),
(1003, 'Changes on Article \'About Annapurna View\' has been saved successfully.', '2024-08-23 12:01:05', 1, 4, '::1'),
(1004, 'Changes on Article \'About Annapurna View\' has been saved successfully.', '2024-08-23 12:01:46', 1, 4, '::1'),
(1005, 'Changes on Article \'About Annapurna View\' has been saved successfully.', '2024-08-23 12:05:13', 1, 4, '::1'),
(1006, 'Login: admin logged in.', '2024-08-23 14:15:43', 1, 1, '::1'),
(1007, 'Package Dining Edit Successfully', '2024-08-23 14:22:57', 1, 4, '::1'),
(1008, 'Package Mice Edit Successfully', '2024-08-23 14:23:07', 1, 4, '::1'),
(1009, 'Login: admin logged in.', '2024-08-23 16:21:10', 1, 1, '::1'),
(1010, 'Sub Gallery Image  [a]Data has deleted successfully.', '2024-08-23 16:50:08', 1, 6, '::1'),
(1011, 'Sub Gallery Image  []Data has deleted successfully.', '2024-08-23 16:50:12', 1, 6, '::1'),
(1012, 'Sub Gallery Image  [a]Data has deleted successfully.', '2024-08-23 16:50:12', 1, 6, '::1'),
(1013, 'Sub Gallery Image  []Data has deleted successfully.', '2024-08-23 16:50:15', 1, 6, '::1');
INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(1014, 'Sub Gallery Image  []Data has deleted successfully.', '2024-08-23 16:50:15', 1, 6, '::1'),
(1015, 'Sub Gallery Image  [a]Data has deleted successfully.', '2024-08-23 16:50:15', 1, 6, '::1'),
(1016, 'Sub Gallery Image [room 1]Data has added successfully.', '2024-08-23 16:51:02', 1, 3, '::1'),
(1017, 'Sub Gallery Image [room 2]Data has added successfully.', '2024-08-23 16:51:02', 1, 3, '::1'),
(1018, 'Gallery Image  [adasdas]Data has deleted successfully.', '2024-08-23 16:51:20', 1, 6, '::1'),
(1019, 'Gallery Image [Dining] Edit Successfully', '2024-08-23 16:51:25', 1, 4, '::1'),
(1020, 'Sub Gallery Image  [asdasd]Data has deleted successfully.', '2024-08-23 16:51:30', 1, 6, '::1'),
(1021, 'Sub Gallery Image  []Data has deleted successfully.', '2024-08-23 16:51:33', 1, 6, '::1'),
(1022, 'Sub Gallery Image  [yvasydiv]Data has deleted successfully.', '2024-08-23 16:51:33', 1, 6, '::1'),
(1023, 'Sub Gallery Image  []Data has deleted successfully.', '2024-08-23 16:51:35', 1, 6, '::1'),
(1024, 'Sub Gallery Image  []Data has deleted successfully.', '2024-08-23 16:51:35', 1, 6, '::1'),
(1025, 'Sub Gallery Image  [asdyvhjkv]Data has deleted successfully.', '2024-08-23 16:51:35', 1, 6, '::1'),
(1026, 'Sub Gallery Image [dining 1]Data has added successfully.', '2024-08-23 16:51:58', 1, 3, '::1'),
(1027, 'Gallery Image  [restaurant]Data has deleted successfully.', '2024-08-23 16:52:22', 1, 6, '::1'),
(1028, 'Sub Gallery Image  [d]Data has deleted successfully.', '2024-08-23 16:52:25', 1, 6, '::1'),
(1029, 'Sub Gallery Image  []Data has deleted successfully.', '2024-08-23 16:52:27', 1, 6, '::1'),
(1030, 'Sub Gallery Image  [d]Data has deleted successfully.', '2024-08-23 16:52:27', 1, 6, '::1'),
(1031, 'Sub Gallery Image  []Data has deleted successfully.', '2024-08-23 16:52:29', 1, 6, '::1'),
(1032, 'Sub Gallery Image  []Data has deleted successfully.', '2024-08-23 16:52:30', 1, 6, '::1'),
(1033, 'Sub Gallery Image  [d]Data has deleted successfully.', '2024-08-23 16:52:30', 1, 6, '::1'),
(1034, 'Login: admin logged in.', '2024-08-24 17:26:25', 1, 1, '::1'),
(1035, 'Login: admin logged in.', '2024-08-26 09:26:03', 1, 1, '::1'),
(1036, 'Login: superadmin logged in.', '2024-08-26 09:26:37', 1, 1, '::1'),
(1037, 'Blog [Nagarkot Nepal ] Edit Successfully', '2024-08-26 09:26:57', 1, 4, '::1'),
(1038, 'Blog [qwseasdas] Edit Successfully', '2024-08-26 09:27:19', 1, 4, '::1'),
(1039, 'Blog [Nagarkot Nepal ] Edit Successfully', '2024-08-26 09:27:27', 1, 4, '::1'),
(1040, 'Blog [test 1] Edit Successfully', '2024-08-26 09:27:34', 1, 4, '::1'),
(1041, 'Blog [Places-of-interest] Edit Successfully', '2024-08-26 09:27:42', 1, 4, '::1'),
(1042, 'Blog [Excursions to nearby places] Edit Successfully', '2024-08-26 09:27:48', 1, 4, '::1'),
(1043, 'Blog [Brief On Club Himalaya] Edit Successfully', '2024-08-26 09:27:59', 1, 4, '::1'),
(1044, 'Package Dining and delight Edit Successfully', '2024-08-26 09:31:42', 1, 4, '::1'),
(1045, 'Changes on Sub Package \'Lounge and bar\' has been saved successfully.', '2024-08-26 09:32:55', 1, 4, '::1'),
(1046, 'Changes on Sub Package \'Shristi Restaurant\' has been saved successfully.', '2024-08-26 09:34:11', 1, 4, '::1'),
(1047, 'SubPackage Gallery Image [a]Data has deleted successfully.', '2024-08-26 09:34:38', 1, 6, '::1'),
(1048, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-08-26 09:34:41', 1, 6, '::1'),
(1049, 'SubPackage Gallery Image [a]Data has deleted successfully.', '2024-08-26 09:34:41', 1, 6, '::1'),
(1050, 'Sub Package Image [dine]Data has added successfully.', '2024-08-26 09:35:54', 1, 3, '::1'),
(1051, 'Sub Package Image [dine 2]Data has added successfully.', '2024-08-26 09:35:54', 1, 3, '::1'),
(1052, 'Sub Package Image [dine 3]Data has added successfully.', '2024-08-26 09:35:54', 1, 3, '::1'),
(1053, 'Sub Package Image [dine 4]Data has added successfully.', '2024-08-26 09:35:54', 1, 3, '::1'),
(1054, 'Sub Package Image [din e 5]Data has added successfully.', '2024-08-26 09:35:54', 1, 3, '::1'),
(1055, 'SubPackage Gallery Image [s]Data has deleted successfully.', '2024-08-26 09:36:02', 1, 6, '::1'),
(1056, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-08-26 09:36:05', 1, 6, '::1'),
(1057, 'SubPackage Gallery Image [s]Data has deleted successfully.', '2024-08-26 09:36:05', 1, 6, '::1'),
(1058, 'SubPackage Gallery Image [din e 5]Data has deleted successfully.', '2024-08-26 09:59:50', 1, 6, '::1'),
(1059, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-08-26 09:59:53', 1, 6, '::1'),
(1060, 'SubPackage Gallery Image [dine 4]Data has deleted successfully.', '2024-08-26 09:59:53', 1, 6, '::1'),
(1061, 'Package Meeting & Conference Edit Successfully', '2024-08-26 10:06:24', 1, 4, '::1'),
(1062, 'Changes on Sub Package \'The meeting rooms\' has been saved successfully.', '2024-08-26 10:17:23', 1, 4, '::1'),
(1063, 'SubPackage Gallery Image [b]Data has deleted successfully.', '2024-08-26 10:17:27', 1, 6, '::1'),
(1064, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-08-26 10:17:29', 1, 6, '::1'),
(1065, 'SubPackage Gallery Image [bb]Data has deleted successfully.', '2024-08-26 10:17:29', 1, 6, '::1'),
(1066, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-08-26 10:17:32', 1, 6, '::1'),
(1067, 'SubPackage Gallery Image [b]Data has deleted successfully.', '2024-08-26 10:17:32', 1, 6, '::1'),
(1068, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-08-26 10:17:32', 1, 6, '::1'),
(1069, 'Sub Package Image [meet]Data has added successfully.', '2024-08-26 10:17:56', 1, 3, '::1'),
(1070, 'Sub Package Image [meet 2]Data has added successfully.', '2024-08-26 10:17:56', 1, 3, '::1'),
(1071, 'Sub Package Image [meet 3]Data has added successfully.', '2024-08-26 10:17:56', 1, 3, '::1'),
(1072, 'Sub Package Image [meet 5]Data has added successfully.', '2024-08-26 10:18:19', 1, 3, '::1'),
(1073, 'Offers [ASAs] Edit Successfully', '2024-08-26 10:47:59', 1, 4, '::1'),
(1074, 'Offers [Package-1] Edit Successfully', '2024-08-26 10:48:10', 1, 4, '::1'),
(1075, 'Offers [Package-2]Data has added successfully.', '2024-08-26 10:48:22', 1, 3, '::1'),
(1076, 'Offers [Package-3]Data has added successfully.', '2024-08-26 10:48:50', 1, 3, '::1'),
(1077, 'Offers [Package-4]Data has added successfully.', '2024-08-26 10:49:06', 1, 3, '::1'),
(1078, 'Offers [Package-5]Data has added successfully.', '2024-08-26 10:49:39', 1, 3, '::1'),
(1079, 'Offers [Package-6]Data has added successfully.', '2024-08-26 10:49:53', 1, 3, '::1'),
(1080, 'Offers [Package-7]Data has added successfully.', '2024-08-26 10:50:09', 1, 3, '::1'),
(1081, 'Offers [Package-8]Data has added successfully.', '2024-08-26 10:50:21', 1, 3, '::1'),
(1082, 'Offers [Package-9]Data has added successfully.', '2024-08-26 10:50:33', 1, 3, '::1'),
(1083, 'Offers [Package-1] Edit Successfully', '2024-08-26 10:56:37', 1, 4, '::1'),
(1084, 'Offers [Package-2] Edit Successfully', '2024-08-26 10:56:41', 1, 4, '::1'),
(1085, 'Offers [Package-3] Edit Successfully', '2024-08-26 10:56:45', 1, 4, '::1'),
(1086, 'Offers [Package-4] Edit Successfully', '2024-08-26 10:56:49', 1, 4, '::1'),
(1087, 'Offers [Package-5] Edit Successfully', '2024-08-26 10:56:56', 1, 4, '::1'),
(1088, 'Offers [Package-6] Edit Successfully', '2024-08-26 10:57:02', 1, 4, '::1'),
(1089, 'Slideshow  [qweqwe]Data has deleted successfully.', '2024-08-26 11:12:28', 1, 6, '::1'),
(1090, 'Slideshow  [asd]Data has deleted successfully.', '2024-08-26 11:12:28', 1, 6, '::1'),
(1091, 'Slideshow  [asdasdasdasdasdsASDasd]Data has deleted successfully.', '2024-08-26 11:12:28', 1, 6, '::1'),
(1092, 'Slideshow  [asdasd]Data has deleted successfully.', '2024-08-26 11:12:28', 1, 6, '::1'),
(1093, 'Slideshow  [qweqweqw]Data has deleted successfully.', '2024-08-26 11:13:44', 1, 6, '::1'),
(1094, 'Slideshow  [asddd]Data has deleted successfully.', '2024-08-26 11:13:44', 1, 6, '::1'),
(1095, 'Slideshow  [asdasdasd]Data has deleted successfully.', '2024-08-26 11:13:44', 1, 6, '::1'),
(1096, 'Slideshow [Experience matter]Data has added successfully.', '2024-08-26 11:14:51', 1, 3, '::1'),
(1097, 'Changes on Article \'Welcome to the 5-star luxury Hotel Annapurna View\' has been saved successfully.', '2024-08-26 11:19:13', 1, 4, '::1'),
(1098, 'SocialNetworking [facebook]Data has added successfully.', '2024-08-26 12:40:57', 1, 3, '::1'),
(1099, 'SocialNetworking [instagram]Data has added successfully.', '2024-08-26 12:42:17', 1, 3, '::1'),
(1100, 'SocialNetworking [linkdin]Data has added successfully.', '2024-08-26 12:42:50', 1, 3, '::1'),
(1101, 'SocialNetworking [youtube]Data has added successfully.', '2024-08-26 12:43:08', 1, 3, '::1'),
(1102, 'Blog [Australian Base Camp] Edit Successfully', '2024-08-26 12:53:21', 1, 4, '::1'),
(1103, 'Login: superadmin logged in.', '2024-08-26 16:03:07', 1, 1, '::1'),
(1104, 'Testimonial [Greg. S ] Edit Successfully', '2024-08-26 16:03:53', 1, 4, '::1'),
(1105, 'Testimonial [Greg. S ] Edit Successfully', '2024-08-26 16:04:03', 1, 4, '::1'),
(1106, 'SocialNetworking [Expedia]Data has added successfully.', '2024-08-26 16:41:37', 1, 3, '::1'),
(1107, 'SocialNetworking [Tripadvisor]Data has added successfully.', '2024-08-26 16:42:12', 1, 3, '::1'),
(1108, 'Sub Package \'Yoga and Fitness\' has added successfully.', '2024-08-26 16:56:00', 1, 3, '::1'),
(1109, 'Changes on Sub Package \'Yoga and Fitness\' has been saved successfully.', '2024-08-26 16:59:09', 1, 4, '::1'),
(1110, 'Login: superadmin logged in.', '2024-08-27 09:28:06', 1, 1, '::1'),
(1111, 'Offers [monsoon offer]Data has added successfully.', '2024-08-27 09:28:58', 1, 3, '::1'),
(1112, 'Changes on Sub Package \'Suite Room\' has been saved successfully.', '2024-08-27 09:39:17', 1, 4, '::1'),
(1113, 'Changes on Sub Package \'Deluxe Suite\' has been saved successfully.', '2024-08-27 09:40:51', 1, 4, '::1'),
(1114, 'Changes on Sub Package \'Suite Room\' has been saved successfully.', '2024-08-27 09:41:30', 1, 4, '::1'),
(1115, 'Sub Package [Standard Room]Data has deleted successfully.', '2024-08-27 09:41:48', 1, 6, '::1'),
(1116, 'Changes on Sub Package \'Deluxe Suite\' has been saved successfully.', '2024-08-27 09:41:59', 1, 4, '::1'),
(1117, 'Changes on Sub Package \'The meeting rooms\' has been saved successfully.', '2024-08-27 10:10:42', 1, 4, '::1'),
(1118, 'Menu  [The Hotel]Data has deleted successfully.', '2024-08-27 10:17:21', 1, 6, '::1'),
(1119, 'Menu  [Meeting & Events]Data has deleted successfully.', '2024-08-27 10:17:23', 1, 6, '::1'),
(1120, 'Menu  [Gallery]Data has deleted successfully.', '2024-08-27 10:17:25', 1, 6, '::1'),
(1121, 'Menu  [career]Data has deleted successfully.', '2024-08-27 10:17:32', 1, 6, '::1'),
(1122, 'Menu [About Hotel] Edit Successfully', '2024-08-27 10:18:05', 1, 4, '::1'),
(1123, 'Menu [Restaurant & Bar] Edit Successfully', '2024-08-27 10:18:31', 1, 4, '::1'),
(1124, 'Menu [Offers & Packages] Edit Successfully', '2024-08-27 10:18:46', 1, 4, '::1'),
(1125, 'Menu [Offers & Packages] Edit Successfully', '2024-08-27 10:18:54', 1, 4, '::1'),
(1126, 'Menu [Meeting & Conference] Edit Successfully', '2024-08-27 10:20:19', 1, 4, '::1'),
(1127, 'Menu [Know Pokhara] Edit Successfully', '2024-08-27 10:20:43', 1, 4, '::1'),
(1128, 'Menu [Know Pokhara] Edit Successfully', '2024-08-27 10:20:50', 1, 4, '::1'),
(1129, 'Menu [Activities Around] Edit Successfully', '2024-08-27 10:21:13', 1, 4, '::1'),
(1130, 'Menu [Nearby Hotel] CreatedData has added successfully.', '2024-08-27 10:21:27', 1, 3, '::1'),
(1131, 'Menu [Instagram Wall] CreatedData has added successfully.', '2024-08-27 10:21:42', 1, 3, '::1'),
(1132, 'Menu [Blog] CreatedData has added successfully.', '2024-08-27 10:21:57', 1, 3, '::1'),
(1133, 'Menu [Gallery] CreatedData has added successfully.', '2024-08-27 10:22:17', 1, 3, '::1'),
(1134, 'Menu [Contact us] CreatedData has added successfully.', '2024-08-27 10:22:33', 1, 3, '::1'),
(1135, 'Menu [Rules & Policies] CreatedData has added successfully.', '2024-08-27 10:22:54', 1, 3, '::1'),
(1136, 'Menu [Activities Around] Edit Successfully', '2024-08-27 10:23:12', 1, 4, '::1'),
(1137, 'Menu [About Hotel] CreatedData has added successfully.', '2024-08-27 10:23:37', 1, 3, '::1'),
(1138, 'Menu [Accomodation] CreatedData has added successfully.', '2024-08-27 10:23:48', 1, 3, '::1'),
(1139, 'Menu [Meeting and Conference] CreatedData has added successfully.', '2024-08-27 10:24:03', 1, 3, '::1'),
(1140, 'Menu [Restaurant and Bar] CreatedData has added successfully.', '2024-08-27 10:24:17', 1, 3, '::1'),
(1141, 'Menu [Other Facilities] CreatedData has added successfully.', '2024-08-27 10:24:24', 1, 3, '::1'),
(1142, 'Menu [Know Pokhara] CreatedData has added successfully.', '2024-08-27 10:24:34', 1, 3, '::1'),
(1143, 'Menu [Nearby Hotel] CreatedData has added successfully.', '2024-08-27 10:24:43', 1, 3, '::1'),
(1144, 'Menu [Activities Around] CreatedData has added successfully.', '2024-08-27 10:24:51', 1, 3, '::1'),
(1145, 'Menu [Offers and Packages] CreatedData has added successfully.', '2024-08-27 10:25:01', 1, 3, '::1'),
(1146, 'Menu [Instagram Wall] CreatedData has added successfully.', '2024-08-27 10:25:11', 1, 3, '::1'),
(1147, 'Menu [Blog] CreatedData has added successfully.', '2024-08-27 10:25:22', 1, 3, '::1'),
(1148, 'Menu [Gallery] CreatedData has added successfully.', '2024-08-27 10:25:28', 1, 3, '::1'),
(1149, 'Menu [Rules & Policies] CreatedData has added successfully.', '2024-08-27 10:25:38', 1, 3, '::1'),
(1150, 'Changes on Article \'Welcome to the 5-star luxury Hotel Annapurna View\' has been saved successfully.', '2024-08-27 10:33:21', 1, 4, '::1'),
(1151, 'Offers [Low Season Offer] Edit Successfully', '2024-08-27 10:35:35', 1, 4, '::1'),
(1152, 'Blog [Pokhara city day tour] Edit Successfully', '2024-08-27 10:41:18', 1, 4, '::1'),
(1153, 'Blog [Bandipur                                                      ] Edit Successfully', '2024-08-27 10:42:39', 1, 4, '::1'),
(1154, 'Blog [Dahi Chiura] Edit Successfully', '2024-08-27 10:43:30', 1, 4, '::1'),
(1155, 'Blog [Kwati on janaipurnima                                 ] Edit Successfully', '2024-08-27 10:44:28', 1, 4, '::1'),
(1156, 'Blog [Significance of Dashain and Tihar                                 ] Edit Successfully', '2024-08-27 10:45:28', 1, 4, '::1'),
(1157, 'Blog [Kwati on janaipurnima                                 ] Edit Successfully', '2024-08-27 10:46:08', 1, 4, '::1'),
(1158, 'Package Dining and delight Edit Successfully', '2024-08-27 10:49:09', 1, 4, '::1'),
(1159, 'Changes on Sub Package \'Yoga and Fitness\' has been saved successfully.', '2024-08-27 14:31:10', 1, 4, '::1'),
(1160, 'Changes on Sub Package \'The meeting rooms\' has been saved successfully.', '2024-08-27 14:31:31', 1, 4, '::1'),
(1161, 'Login: superadmin logged in.', '2024-08-27 16:17:47', 1, 1, '::1'),
(1162, 'Testimonial [PAVEL A P]Data has added successfully.', '2024-08-27 16:19:19', 1, 3, '::1'),
(1163, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-08-27 16:44:42', 1, 4, '::1'),
(1164, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-08-27 16:45:11', 1, 4, '::1'),
(1165, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-08-27 17:05:56', 1, 4, '::1'),
(1166, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-08-27 17:08:52', 1, 4, '::1'),
(1167, 'Blog [Bandipur                                                      ] Edit Successfully', '2024-08-27 17:25:02', 1, 4, '::1'),
(1168, 'Blog [Australian Base Camp] Edit Successfully', '2024-08-27 17:25:31', 1, 4, '::1'),
(1169, 'Slideshow [qweqweqwe]Data has added successfully.', '2024-08-27 17:39:54', 1, 3, '::1'),
(1170, 'Services [Hair Dryer] Edit Successfully', '2024-08-27 18:01:26', 1, 4, '::1'),
(1171, 'Login: superadmin logged in.', '2024-08-28 08:21:48', 1, 1, '::1'),
(1172, 'Testimonial [PAVEL accomodation]Data has added successfully.', '2024-08-28 08:22:39', 1, 3, '::1'),
(1173, 'Login: superadmin logged in.', '2024-08-28 10:34:46', 1, 1, '::1'),
(1174, 'Testimonial [PAVEL deluxe]Data has added successfully.', '2024-08-28 10:35:34', 1, 3, '::1'),
(1175, 'Testimonial [PAVEL A Dining]Data has added successfully.', '2024-08-28 11:08:52', 1, 3, '::1'),
(1176, 'Login: superadmin logged in.', '2024-08-28 12:39:37', 1, 1, '::1'),
(1177, 'Changes on Sub Package \'Conference Hall\' has been saved successfully.', '2024-08-28 12:50:09', 1, 4, '::1'),
(1178, 'Menu [Meeting & Conference] Edit Successfully', '2024-08-28 12:50:19', 1, 4, '::1'),
(1179, 'Changes on Sub Package \'Conference Hall\' has been saved successfully.', '2024-08-28 12:55:41', 1, 4, '::1'),
(1180, 'Changes on Sub Package \'Conference Hall\' has been saved successfully.', '2024-08-28 12:59:05', 1, 4, '::1'),
(1181, 'Testimonial [PAVEL A hall]Data has added successfully.', '2024-08-28 13:12:49', 1, 3, '::1'),
(1182, 'Testimonial [PAVEL A hall] Edit Successfully', '2024-08-28 13:13:04', 1, 4, '::1'),
(1183, 'Package Meeting & Conference Edit Successfully', '2024-08-28 13:36:48', 1, 4, '::1'),
(1184, 'Login: superadmin logged in.', '2024-08-28 15:46:32', 1, 1, '::1'),
(1185, 'SocialNetworking [facebook] Edit Successfully', '2024-08-28 16:06:42', 1, 4, '::1'),
(1186, 'SocialNetworking [facebook] Edit Successfully', '2024-08-28 16:06:51', 1, 4, '::1'),
(1187, 'SocialNetworking [facebook] Edit Successfully', '2024-08-28 16:09:39', 1, 4, '::1'),
(1188, 'SocialNetworking [instagram] Edit Successfully', '2024-08-28 16:19:48', 1, 4, '::1'),
(1189, 'SocialNetworking [linkdin] Edit Successfully', '2024-08-28 16:20:04', 1, 4, '::1'),
(1190, 'SocialNetworking [youtube] Edit Successfully', '2024-08-28 16:20:34', 1, 4, '::1'),
(1191, 'Login: superadmin logged in.', '2024-08-29 08:54:06', 1, 1, '::1'),
(1192, 'Sub Package Image [dine 1]Data has added successfully.', '2024-08-29 11:42:21', 1, 3, '::1'),
(1193, 'Sub Package Image [dine 2]Data has added successfully.', '2024-08-29 11:42:21', 1, 3, '::1'),
(1194, 'Sub Package Image [dine 3]Data has added successfully.', '2024-08-29 11:42:21', 1, 3, '::1'),
(1195, 'Testimonial [PAVEL A hall] Edit Successfully', '2024-08-29 13:46:38', 1, 4, '::1'),
(1196, 'Testimonial [PAVEL A hall] Edit Successfully', '2024-08-29 13:47:16', 1, 4, '::1'),
(1197, 'Testimonial [PAVEL A Dining] Edit Successfully', '2024-08-29 13:47:55', 1, 4, '::1'),
(1198, 'Testimonial [PAVEL deluxe] Edit Successfully', '2024-08-29 13:48:01', 1, 4, '::1'),
(1199, 'Testimonial [PAVEL A P] Edit Successfully', '2024-08-29 13:48:07', 1, 4, '::1'),
(1200, 'Testimonial [PAVEL A] Edit Successfully', '2024-08-29 13:48:14', 1, 4, '::1'),
(1201, 'Testimonial [Greg. S ] Edit Successfully', '2024-08-29 13:48:21', 1, 4, '::1'),
(1202, 'Testimonial [WIRAEN] Edit Successfully', '2024-08-29 13:48:27', 1, 4, '::1'),
(1203, 'Login: superadmin logged in.', '2024-08-29 17:17:16', 1, 1, '::1'),
(1204, 'Sub Package Image [jkbnasdcasd]Data has added successfully.', '2024-08-29 17:18:52', 1, 3, '::1'),
(1205, 'SubPackage Gallery Image [jkbnasdcasd]Data has deleted successfully.', '2024-08-29 17:19:22', 1, 6, '::1'),
(1206, 'Login: superadmin logged in.', '2024-08-30 07:48:32', 1, 1, '::1'),
(1207, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-08-30 07:48:53', 1, 4, '::1'),
(1208, 'Login: superadmin logged in.', '2024-08-30 09:28:54', 1, 1, '::1'),
(1209, 'Main service  [yuvvyuvyui]Data has deleted successfully.', '2024-08-30 09:29:01', 1, 6, '::1'),
(1210, 'Changes on Main service \'Conference Hall\' has been saved successfully.', '2024-08-30 09:30:05', 1, 4, '::1'),
(1211, 'Changes on Main service \'Conference Hall\' has been saved successfully.', '2024-08-30 09:30:16', 1, 4, '::1'),
(1212, 'Changes on Main service \'Conference Hall\' has been saved successfully.', '2024-08-30 09:31:20', 1, 4, '::1'),
(1213, 'Main service  [Children Play Area Indoor & Outdoor]Data has deleted successfully.', '2024-08-30 09:31:39', 1, 6, '::1'),
(1214, 'Changes on Main service \'Yoga and Fitness\' has been saved successfully.', '2024-08-30 09:32:06', 1, 4, '::1'),
(1215, 'Changes on Main service \'Conference Hall\' has been saved successfully.', '2024-08-30 09:43:46', 1, 4, '::1'),
(1216, 'Changes on Main service \'Yoga and Fitness\' has been saved successfully.', '2024-08-30 09:43:55', 1, 4, '::1'),
(1217, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-08-30 09:49:20', 1, 4, '::1'),
(1218, 'SocialNetworking [Expedia] Edit Successfully', '2024-08-30 09:53:31', 1, 4, '::1'),
(1219, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-08-30 09:58:11', 1, 4, '::1'),
(1220, 'Changes on Config \'Annapurna View\' has been saved successfully.', '2024-08-30 09:58:56', 1, 4, '::1'),
(1221, 'Changes on Config \'Annapurna View\' has been saved successfully.', '2024-08-30 09:59:03', 1, 4, '::1'),
(1222, 'Article \'Know Pokhara\' has added successfully.', '2024-08-30 10:15:53', 1, 3, '::1'),
(1223, 'Menu [Know Pokhara] Edit Successfully', '2024-08-30 10:16:04', 1, 4, '::1'),
(1224, 'Testimonial [PAVEL accomodation] Edit Successfully', '2024-08-30 10:24:44', 1, 4, '::1'),
(1225, 'Testimonial [PAVEL deluxe] Edit Successfully', '2024-08-30 10:31:40', 1, 4, '::1'),
(1226, 'Menu [Activities Around] Edit Successfully', '2024-08-30 10:56:58', 1, 4, '::1'),
(1227, 'Menu [Nearby Hotel] Edit Successfully', '2024-08-30 10:57:43', 1, 4, '::1'),
(1228, 'Changes on Article \'Shiva Mandir\' has been saved successfully.', '2024-08-30 11:03:19', 1, 4, '::1'),
(1229, 'Changes on Article \'View Tower\' has been saved successfully.', '2024-08-30 11:04:22', 1, 4, '::1'),
(1230, 'Changes on Article \'Cable Car\' has been saved successfully.', '2024-08-30 11:04:51', 1, 4, '::1'),
(1231, 'Changes on Article \'Zip Line\' has been saved successfully.', '2024-08-30 11:05:17', 1, 4, '::1'),
(1232, 'Changes on Article \'Jaljala Waterfall\' has been saved successfully.', '2024-08-30 11:05:44', 1, 4, '::1'),
(1233, 'Changes on Article \'View Point\' has been saved successfully.', '2024-08-30 11:06:14', 1, 4, '::1'),
(1234, 'Article \'Yamdi Waterfall\' has added successfully.', '2024-08-30 11:06:39', 1, 3, '::1'),
(1235, 'Article \'Lakeside\' has added successfully.', '2024-08-30 11:07:07', 1, 3, '::1'),
(1236, 'Article \'Pumidkot Religious area\' has added successfully.', '2024-08-30 11:07:29', 1, 3, '::1'),
(1237, 'Changes on Config \'Annapurna View\' has been saved successfully.', '2024-08-30 11:10:53', 1, 4, '::1'),
(1238, 'Blog [Australian Base Camp] Edit Successfully', '2024-08-30 11:24:47', 1, 4, '::1'),
(1239, 'Services  [Room Slippers]Data has deleted successfully.', '2024-08-30 11:28:58', 1, 6, '::1'),
(1240, 'Services  [Mini-bar In Suites]Data has deleted successfully.', '2024-08-30 11:28:58', 1, 6, '::1'),
(1241, 'Services  [Meeting Hall]Data has deleted successfully.', '2024-08-30 11:28:58', 1, 6, '::1'),
(1242, 'Services  [Pick/Drop]Data has deleted successfully.', '2024-08-30 11:28:58', 1, 6, '::1'),
(1243, 'Services  [Iron/Iron Boar]Data has deleted successfully.', '2024-08-30 11:28:58', 1, 6, '::1'),
(1244, 'Services  [EV Charging station]Data has deleted successfully.', '2024-08-30 11:28:58', 1, 6, '::1'),
(1245, 'Services  [Pool/Hot Tub]Data has deleted successfully.', '2024-08-30 11:28:58', 1, 6, '::1'),
(1246, 'Services  [Spa]Data has deleted successfully.', '2024-08-30 11:28:58', 1, 6, '::1'),
(1247, 'Services  [Free Parking]Data has deleted successfully.', '2024-08-30 11:29:06', 1, 6, '::1'),
(1248, 'Services  [Safety Deposite Box]Data has deleted successfully.', '2024-08-30 11:29:06', 1, 6, '::1'),
(1249, 'Services  [24hrs Front-desk]Data has deleted successfully.', '2024-08-30 11:29:06', 1, 6, '::1'),
(1250, 'Services  [Coffee Maker]Data has deleted successfully.', '2024-08-30 11:29:06', 1, 6, '::1'),
(1251, 'Services  [Bathtub]Data has deleted successfully.', '2024-08-30 11:29:06', 1, 6, '::1'),
(1252, 'Services  [Air-Conditioner]Data has deleted successfully.', '2024-08-30 11:29:06', 1, 6, '::1'),
(1253, 'Services  [Free WiFi]Data has deleted successfully.', '2024-08-30 11:29:06', 1, 6, '::1'),
(1254, 'Services  [Room Services]Data has deleted successfully.', '2024-08-30 11:29:06', 1, 6, '::1'),
(1255, 'Services  [Breakfast]Data has deleted successfully.', '2024-08-30 11:29:12', 1, 6, '::1'),
(1256, 'Services  [Panoramic Views]Data has deleted successfully.', '2024-08-30 11:29:12', 1, 6, '::1'),
(1257, 'Services [Swimming Pool] Edit Successfully', '2024-08-30 11:30:06', 1, 4, '::1'),
(1258, 'Services [Poolside bar] Edit Successfully', '2024-08-30 11:30:46', 1, 4, '::1'),
(1259, 'Services [Fireplace]Data has added successfully.', '2024-08-30 11:30:59', 1, 3, '::1'),
(1260, 'Services [Extensive gardens with pergolas and hammocks]Data has added successfully.', '2024-08-30 11:31:14', 1, 3, '::1'),
(1261, 'Services [Swimming Pool] Edit Successfully', '2024-08-30 11:35:32', 1, 4, '::1'),
(1262, 'Services [Swimming Pool] Edit Successfully', '2024-08-30 11:35:35', 1, 4, '::1'),
(1263, 'Changes on Main service \'Conference Halla\' has been saved successfully.', '2024-08-30 11:37:22', 1, 4, '::1'),
(1264, 'Changes on Main service \'Conference Halla\' has been saved successfully.', '2024-08-30 11:37:38', 1, 4, '::1'),
(1265, 'Changes on Main service \'Conference Hall\' has been saved successfully.', '2024-08-30 11:38:17', 1, 4, '::1'),
(1266, 'Changes on Main service \'Conference Hall\' has been saved successfully.', '2024-08-30 11:38:26', 1, 4, '::1'),
(1267, 'Changes on Main service \'Conference Hall a\' has been saved successfully.', '2024-08-30 11:38:59', 1, 4, '::1'),
(1268, 'Changes on Main service \'Conference Hall a\' has been saved successfully.', '2024-08-30 11:39:09', 1, 4, '::1'),
(1269, 'Changes on Main service \'Conference Hall a\' has been saved successfully.', '2024-08-30 11:39:44', 1, 4, '::1'),
(1270, 'Changes on Main service \'Conference Hall \' has been saved successfully.', '2024-08-30 11:39:49', 1, 4, '::1'),
(1271, 'Blog [Bandipur                    a                                  ] Edit Successfully', '2024-08-30 11:41:30', 1, 4, '::1'),
(1272, 'Blog [Bandipur                         ] Edit Successfully', '2024-08-30 11:41:36', 1, 4, '::1'),
(1273, 'Changes on Article \'Shiva Mandira\' has been saved successfully.', '2024-08-30 11:42:59', 1, 4, '::1'),
(1274, 'Changes on Article \'Shiva Mandir\' has been saved successfully.', '2024-08-30 11:43:02', 1, 4, '::1'),
(1275, 'Changes on Config \'Annapurna View\' has been saved successfully.', '2024-08-30 11:46:00', 1, 4, '::1'),
(1276, 'User [annapurnaview  ] Edit Successfully', '2024-08-30 13:05:57', 1, 4, '::1'),
(1277, 'Login: admin logged in.', '2024-08-30 14:10:50', 1, 1, '103.10.28.207'),
(1278, 'Login: admin logged in.', '2024-08-30 14:10:58', 1, 1, '103.10.28.207'),
(1279, 'Login: admin logged in.', '2024-09-01 12:27:43', 1, 1, '27.34.66.26'),
(1280, 'Login: admin logged in.', '2024-09-01 12:27:58', 1, 1, '27.34.66.26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs_action`
--

CREATE TABLE `tbl_logs_action` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `bgcolor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_logs_action`
--

INSERT INTO `tbl_logs_action` (`id`, `title`, `icon`, `bgcolor`) VALUES
(1, 'Login', 'icon-sign-in', 'bg-blue'),
(2, 'Logout', 'icon-sign-out', 'primary-bg'),
(3, 'Add', 'icon-plus-circle', 'bg-green'),
(4, 'Edit', 'icon-edit', 'bg-blue-alt'),
(5, 'Copy', 'icon-copy', 'ui-state-default'),
(6, 'Delete', 'icon-clock-os-circle', 'bg-red');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mainservices`
--

CREATE TABLE `tbl_mainservices` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `content` text NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `linksrc` tinytext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `meta_title` tinytext NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `type` int(1) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `homepage` int(1) NOT NULL DEFAULT 0,
  `image` blob NOT NULL,
  `date` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_mainservices`
--

INSERT INTO `tbl_mainservices` (`id`, `parent_id`, `slug`, `title`, `sub_title`, `content`, `linktype`, `linksrc`, `status`, `meta_title`, `meta_keywords`, `meta_description`, `type`, `added_date`, `modified_date`, `sortorder`, `homepage`, `image`, `date`, `category`) VALUES
(1, 0, '', 'Conference Hall ', '', '<p>\r\n	The meeting rooms present in our hotel are exactly the place where you would want your meetings to happen.</p>\r\n', 0, '', 1, '', '', '', 0, '2023-09-03 12:49:59', '2024-08-30 11:39:49', 2, 0, 0x613a313a7b693a303b733a32323a22525151666e2d52656374616e676c652031302e706e67223b7d, '', ''),
(3, 0, 'pool-jacuzzi', 'Yoga and Fitness', 'Yoga and Fitness', '<p>\r\n	Find balance and harmony with our expert-led yoga and fitness classes, tailored to suit all levels.</p>\r\n', 0, '', 1, '', '', '', 0, '2023-09-03 14:08:35', '2024-08-30 09:43:55', 1, 1, 0x613a313a7b693a303b733a32343a2266744644712d4d61736b2067726f7570202831292e706e67223b7d, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `linksrc` varchar(150) NOT NULL,
  `parentOf` int(11) NOT NULL DEFAULT 0,
  `linktype` varchar(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `type` int(1) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id`, `name`, `linksrc`, `parentOf`, `linktype`, `status`, `sortorder`, `added_date`, `type`, `icon`) VALUES
(20, 'About Hotel', 'about-annapurna-view', 0, '0', 1, 1, '2024-07-31 21:25:34', 1, ''),
(21, 'Accommodation', 'accommodations', 0, '0', 1, 2, '2024-07-31 21:25:52', 1, ''),
(22, 'Restaurant & Bar', 'dining-and-delight', 0, '0', 1, 3, '2024-07-31 21:26:08', 1, ''),
(23, 'Offers & Packages', 'offer-list', 0, '0', 1, 4, '2024-07-31 21:26:29', 1, ''),
(24, 'Meeting & Conference', 'conference-hall', 0, '0', 1, 5, '2024-07-31 21:27:09', 1, ''),
(25, 'Know Pokhara', 'know-pokhara', 0, '0', 1, 6, '2024-07-31 21:27:22', 3, ''),
(26, 'Activities Around', 'activities-around', 0, '0', 1, 7, '2024-07-31 21:27:35', 3, ''),
(31, 'Nearby Hotel', 'nearby', 0, '0', 1, 8, '2024-08-27 10:21:27', 3, ''),
(32, 'Instagram Wall', '#', 0, '0', 1, 9, '2024-08-27 10:21:42', 3, ''),
(33, 'Blog', '#', 0, '0', 1, 10, '2024-08-27 10:21:57', 3, ''),
(34, 'Gallery', 'gallery-list', 0, '0', 1, 11, '2024-08-27 10:22:17', 3, ''),
(35, 'Contact us', 'contact-us', 0, '0', 1, 12, '2024-08-27 10:22:33', 3, ''),
(36, 'Rules & Policies', '#', 0, '0', 1, 13, '2024-08-27 10:22:54', 3, ''),
(37, 'About Hotel', 'about-annapurna-view', 0, '0', 1, 14, '2024-08-27 10:23:37', 2, ''),
(38, 'Accomodation', 'accommodations', 0, '0', 1, 15, '2024-08-27 10:23:48', 2, ''),
(39, 'Meeting and Conference', 'meeting-conference', 0, '0', 1, 16, '2024-08-27 10:24:03', 2, ''),
(40, 'Restaurant and Bar', 'dining-and-delight', 0, '0', 1, 17, '2024-08-27 10:24:17', 2, ''),
(41, 'Other Facilities', '#', 0, '0', 1, 18, '2024-08-27 10:24:24', 2, ''),
(42, 'Know Pokhara', '#', 0, '0', 1, 19, '2024-08-27 10:24:34', 4, ''),
(43, 'Nearby Hotel', '#', 0, '0', 1, 20, '2024-08-27 10:24:43', 4, ''),
(44, 'Activities Around', '#', 0, '0', 1, 21, '2024-08-27 10:24:51', 4, ''),
(45, 'Offers and Packages', 'offer-list', 0, '0', 1, 22, '2024-08-27 10:25:01', 4, ''),
(46, 'Instagram Wall', '#', 0, '0', 1, 23, '2024-08-27 10:25:11', 4, ''),
(47, 'Blog', 'blogs', 0, '0', 1, 24, '2024-08-27 10:25:22', 4, ''),
(48, 'Gallery', 'ga', 0, '0', 1, 25, '2024-08-27 10:25:28', 4, ''),
(49, 'Rules & Policies', '#', 0, '0', 1, 26, '2024-08-27 10:25:38', 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mlink`
--

CREATE TABLE `tbl_mlink` (
  `mod_class` varchar(50) NOT NULL,
  `m_url` tinytext NOT NULL,
  `act_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_mlink`
--

INSERT INTO `tbl_mlink` (`mod_class`, `m_url`, `act_id`) VALUES
('Package', 'accommodations', 1),
('Subpackage', 'suite-room', 21),
('Subpackage', 'deluxe-suite', 28),
('Subpackage', 'deluxe-room', 29),
('Subpackage', 'event-halls', 31),
('Subpackage', 'tribhuvan-intl-airport', 33),
('Subpackage', 'patan-durbar-square', 34),
('Subpackage', 'swayambhunath-temple', 35),
('Subpackage', 'pashupatinath-temple', 36),
('Package', 'meeting-conference', 11),
('Subpackage', 'conference-hall', 37),
('Package', 'dining-and-delight', 12),
('Subpackage', 'lounge-and-bar', 38),
('Article', 'pool-jacuzzi', 3),
('Article', 'about-annapurna-view', 2),
('Subpackage', 'shristi-restaurant', 43),
('Article', 'children-play-area-indoor-outdoor', 4),
('Article', 'activities-around', 16),
('Article', 'know-pokhara', 17),
('Article', 'bhaktapur', 18),
('Article', 'welcome-to-the-5-star-luxury-hotel-annapurna-view', 11),
('Main service', 'children-play-area-indoor-outdoor', 4),
('Main service', 'spa', 1),
('Article', 'asdfasdf', 0),
('Package', 'testing-8-2', 0),
('Subpackage', 'asdasdasddasasd', 0),
('Main service', 'yuvvyuvyui', 0),
('Main service', 'yuvvyuvyui', 5),
('Subpackage', 'yoga-and-fitness', 46);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_modules`
--

CREATE TABLE `tbl_modules` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL DEFAULT 'dashboard',
  `mode` varchar(20) NOT NULL,
  `icon_link` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `properties` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_modules`
--

INSERT INTO `tbl_modules` (`id`, `parent_id`, `name`, `link`, `mode`, `icon_link`, `status`, `sortorder`, `added_date`, `properties`) VALUES
(1, 74, 'User Mgmt', 'user/list', 'user', 'icon-users', 1, 1, '0000-00-00', ''),
(2, 0, 'Menu Mgmt', 'menu/list', 'menu', 'icon-list', 1, 2, '0000-00-00', 'a:1:{s:5:\"level\";s:1:\"3\";}'),
(3, 0, 'Articles Mgmt', 'articles/list', 'articles', 'icon-adn', 1, 2, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:3:\"450\";s:9:\"imgheight\";s:3:\"350\";}'),
(4, 0, 'Slideshow Mgmt', 'slideshow/list', 'slideshow', 'icon-film', 1, 2, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:4:\"1263\";s:9:\"imgheight\";s:3:\"600\";}'),
(5, 0, 'Gallery Mgmt', 'gallery/list', 'gallery', 'icon-picture-o', 1, 6, '0000-00-00', 'a:4:{s:8:\"imgwidth\";s:3:\"900\";s:9:\"imgheight\";s:3:\"600\";s:9:\"simgwidth\";s:3:\"400\";s:10:\"simgheight\";s:3:\"350\";}'),
(6, 0, 'News Mgmt', 'news/list', 'news', 'icon-list-alt', 0, 19, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:3:\"300\";s:9:\"imgheight\";s:3:\"300\";}'),
(7, 0, 'Event Mgmt', 'events/list', 'events', 'icon-bullhorn', 0, 10, '0000-00-00', ''),
(8, 0, 'Advertisement Mgmt', 'advertisement/list', 'advertisement', 'icon-indent', 0, 4, '0000-00-00', 'a:8:{s:9:\"limgwidth\";s:3:\"100\";s:10:\"limgheight\";s:3:\"200\";s:9:\"timgwidth\";s:3:\"300\";s:10:\"timgheight\";s:3:\"400\";s:9:\"rimgwidth\";s:3:\"500\";s:10:\"rimgheight\";s:3:\"600\";s:9:\"bimgwidth\";s:3:\"700\";s:10:\"bimgheight\";s:3:\"800\";}'),
(9, 0, 'Video Mgmt', 'video/list', 'video', 'icon-hdd-o', 0, 13, '0000-00-00', ''),
(10, 0, 'Poll Mgmt', 'poll/list', 'poll', 'icon-exchange', 0, 22, '0000-00-00', ''),
(11, 0, 'Social / OTA Mgmt', 'social/list', 'social', 'icon-google-plus', 1, 6, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:3:\"141\";s:9:\"imgheight\";s:2:\"13\";}'),
(12, 0, 'Setting Mgmt', 'setting/list', 'settings', 'icon-gear', 1, 21, '0000-00-00', ''),
(13, 12, 'Preference Mgmt', 'preference/list', 'preference', 'icon-gear', 1, 1, '0000-00-00', 'a:18:{s:8:\"imgwidth\";s:8:\"12312312\";s:9:\"imgheight\";s:2:\"12\";s:9:\"simgwidth\";s:2:\"12\";s:10:\"simgheight\";s:2:\"12\";s:10:\"fbimgwidth\";s:2:\"12\";s:11:\"fbimgheight\";s:2:\"12\";s:9:\"timgwidth\";s:2:\"12\";s:10:\"timgheight\";s:2:\"12\";s:9:\"gimgwidth\";s:2:\"12\";s:10:\"gimgheight\";s:2:\"12\";s:9:\"cimgwidth\";s:3:\"121\";s:10:\"cimgheight\";s:2:\"12\";s:9:\"oimgwidth\";s:2:\"12\";s:10:\"oimgheight\";s:2:\"12\";s:9:\"fimgwidth\";s:2:\"21\";s:10:\"fimgheight\";s:2:\"21\";s:10:\"ofimgwidth\";s:2:\"21\";s:11:\"ofimgheight\";s:2:\"12\";}'),
(14, 12, 'Office Info/Location', 'location/list', 'location', 'icon-gear', 1, 2, '0000-00-00', ''),
(15, 12, 'Modules Mgmt', 'module/list', 'module', 'icon-gear', 0, 3, '0000-00-00', ''),
(16, 12, 'Properties Mgmt', 'properties/list', 'properties', 'icon-gear', 1, 4, '0000-00-00', ''),
(17, 0, 'Testimonial', 'testimonial/list', 'testimonial', 'icon-list-alt', 1, 6, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:4:\"1001\";s:9:\"imgheight\";s:3:\"100\";}'),
(18, 0, 'Subscribers Mgmt', 'subscribers/list', 'subscribers', 'icon-comments', 0, 14, '2015-05-17', ''),
(19, 0, 'Offers Mgmt', 'offers/list', 'offers', 'icon-tags', 1, 18, '2015-05-20', 'a:4:{s:9:\"bimgwidth\";s:2:\"22\";s:10:\"bimgheight\";s:2:\"22\";s:8:\"imgwidth\";s:3:\"200\";s:9:\"imgheight\";s:3:\"200\";}'),
(20, 0, 'Services Mgmt', 'services/list', 'services', 'icon-exchange', 1, 5, '2015-08-09', 'a:2:{s:8:\"imgwidth\";s:2:\"48\";s:9:\"imgheight\";s:2:\"48\";}'),
(21, 0, 'Movies Mgmt', 'movies/list', 'movies', 'icon-list', 0, 15, '2015-10-30', ''),
(22, 0, 'Theaters', 'theaters/list', 'theaters', 'icon-film', 0, 17, '2015-11-01', ''),
(23, 25, 'Package Mgmt', 'package/list', 'package', 'icon-exchange', 1, 5, '2016-06-17', 'a:6:{s:8:\"imgwidth\";s:1:\"4\";s:9:\"imgheight\";s:3:\"350\";s:12:\"subbimgwidth\";s:2:\"11\";s:13:\"subbimgheight\";s:2:\"12\";s:11:\"subimgwidth\";s:2:\"13\";s:12:\"subimgheight\";s:2:\"14\";}'),
(24, 25, 'Features Mgmt', 'features/list', 'features', 'icon-gear', 1, 1, '2016-11-16', ''),
(25, 0, 'Package Mgmt', 'package/list', '', 'icon-bullhorn', 1, 4, '2016-11-16', ''),
(26, 0, 'Activity Mgmt', 'activity/list', 'activity', '\r\nicon-hand-o-left', 0, 7, '0000-00-00', 'a:4:{s:8:\"imgwidth\";s:3:\"800\";s:9:\"imgheight\";s:3:\"600\";s:9:\"simgwidth\";s:3:\"400\";s:10:\"simgheight\";s:3:\"350\";}'),
(27, 0, 'Blog Mgmt', 'blog/list', 'blog', '\r\n\r\n\r\n\r\nicon-list-alt', 1, 8, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:2:\"22\";s:9:\"imgheight\";s:2:\"22\";}'),
(28, 0, 'Popup', 'popup/list', 'popup', 'icon-list', 1, 20, '2020-02-13', 'a:2:{s:8:\"imgwidth\";s:3:\"100\";s:9:\"imgheight\";s:3:\"300\";}'),
(29, 0, ' News/Events Mgmt', 'combinednews/list', 'combinednews', 'icon-tags', 0, 14, '2020-09-05', 'a:2:{s:8:\"imgwidth\";s:3:\"350\";s:9:\"imgheight\";s:3:\"240\";}'),
(30, 0, 'Product Mgmt', 'product/list', 'product', 'icon-list', 0, 1, '2021-11-25', ''),
(74, 0, 'Users', '', '', 'icon-users', 1, 1, '2021-10-03', ''),
(300, 0, 'FAQ', 'faq/list', 'faq', 'icon-list', 0, 8, '2023-08-31', ''),
(301, 0, 'Nearby ', 'nearby/list', 'nearby', 'icon-list', 1, 8, '2023-08-29', 'a:2:{s:8:\"imgwidth\";s:2:\"23\";s:9:\"imgheight\";s:2:\"23\";}'),
(302, 0, 'Vacancy Mgmt', 'vacency/list', 'vacency', 'icon-list', 0, 7, '2023-08-28', ''),
(303, 0, 'Main service Mgt', 'mservices/list', 'mservice', 'icon-list', 1, 6, '2023-09-01', 'a:2:{s:8:\"imgwidth\";s:2:\"12\";s:9:\"imgheight\";s:2:\"12\";}'),
(304, 0, 'OTA Mgmt', 'ota/list', 'ota', 'icon-google-plus', 0, 12, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:2:\"14\";s:9:\"imgheight\";s:2:\"13\";}'),
(305, 0, 'Nearby ', 'nearby/list', 'nearby', 'icon-list', 0, 8, '2023-08-29', ''),
(306, 74, 'User Group', 'usergroup/list', 'usergroup', 'icon-gears', 1, 3, '2023-10-10', ''),
(309, 0, 'Download Mgmt', 'download/list', 'download', 'icon-gear', 0, 7, '2024-03-28', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nearby`
--

CREATE TABLE `tbl_nearby` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `content` text NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `linksrc` tinytext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `meta_title` tinytext NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `type` int(1) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `homepage` int(1) NOT NULL DEFAULT 0,
  `image` blob NOT NULL,
  `date` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `distance` varchar(10) NOT NULL,
  `Google_embed` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_nearby`
--

INSERT INTO `tbl_nearby` (`id`, `parent_id`, `slug`, `title`, `sub_title`, `content`, `linktype`, `linksrc`, `status`, `meta_title`, `meta_keywords`, `meta_description`, `type`, `added_date`, `modified_date`, `sortorder`, `homepage`, `image`, `date`, `category`, `distance`, `Google_embed`) VALUES
(13, 0, 'nagarkot-view-tower', 'View Point', 'Nagarkot View Tower', '<p>\r\n	Nagarkot, at an altitude of 2,175 meters above the sea level, is the most popular touristic destination out of the Kathmandu ValleyNagarkot, at an altitude of 2,175 meters above the sea level, is the most popular touristic destination out of the Kathmandu Valley</p>\r\n', 0, '', 1, '', '', '', 0, '2023-09-04 13:25:10', '2024-08-30 11:06:14', 3, 0, 0x613a303a7b7d, '', '', '1.3km', 'https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d7029.4723221936765!2d83.94173959295156!3d28.24568670351248!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x399594a512b8e637%3A0x9bd5e98df383b865!2sHotel%20Annapurna%20View%20Sarangkot%20Pvt.%20Ltd.%2C%20Pokhara!3m2!1d28.2495332!2d83.9439934!4m5!1s0x3995950cd4e53815%3A0xf486ca89aae4b415!2s6WRX%2BP5P%20Sarangkot%20View%20Point%2C%20Thapa%20Street%2C%20Pokhara%2033700!3m2!1d28.241840399999997!2d83.94793779999999!5e0!3m2!1sen!2snp!4v1723106750235!5m2!1sen!2snp'),
(14, 0, 'mahankal-temple', 'Jaljala Waterfall', 'Mahankal Temple', '<p>\r\n	The temple of Mahankal is situated near New Road in Kathmandu. Mahankal denotes someone who is beyond time and the Lord Mahankal is also known as Mahankaleshvar. The temple as well as the statue of the god is one of the most amazing examples of the Nepalese ancient heritage. Every day thousands of devotees come to worship the Lord in this temple. The area is also called Mahankal because of the presence of the temple.</p>\r\n', 0, '', 1, '', '', '', 0, '2023-09-04 13:26:09', '2024-08-30 11:05:44', 4, 0, 0x613a303a7b7d, '', '', '5.2km', 'https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d2111.779142519971!2d83.91418536462729!3d28.251770308380706!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x399594a512b8e637%3A0x9bd5e98df383b865!2sHotel%20Annapurna%20View%20Sarangkot%20Pvt.%20Ltd.%2C%20Pokhara%2033700!3m2!1d28.2495332!2d83.9439934!4m5!1s0x3995eb590667882d%3A0x13a1b5ecf80c75cf!2zSmFsamFsYSBXYXRlcmZhbGxzIOCknOCksuCknOCksuCkviDgpLXgpL7gpJ_gpLDgpKvgpLLgpY3gpLg!3m2!1d28.252328199999997!2d83.9141877!5e1!3m2!1sen!2snp!4v1723102981937!5m2!1sen!2snp'),
(15, 0, 'santi-stupa', 'Zip Line', 'santi stupa', '', 0, '', 1, '', '', '', 0, '2023-09-04 13:26:55', '2024-08-30 11:05:17', 5, 0, 0x613a303a7b7d, '', '', '260m', 'https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d2051.6860500626976!2d83.94279307200839!3d28.250463427713512!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x399594a512b8e637%3A0x9bd5e98df383b865!2sHotel%20Annapurna%20View%20Sarangkot%20Pvt.%20Ltd.%2C%20Pokhara%2033700!3m2!1d28.2495332!2d83.9439934!4m5!1s0x399594626967925b%3A0x66a1c6ff4ef3a4c2!2sZypline%20Sarangkot!3m2!1d28.251211299999998!2d83.9425632!5e1!3m2!1sen!2snp!4v1723102784845!5m2!1sen!2snp'),
(16, 0, 'changu-narayan-temple', 'Cable Car', 'Changu Narayan Temple', '', 0, '', 1, '', '', '', 0, '2023-09-04 13:27:35', '2024-08-30 11:04:51', 6, 0, 0x613a303a7b7d, '', '', '290m', 'https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d2485.2616386251016!2d83.9460738085207!3d28.24706568665216!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x399594a512b8e637%3A0x9bd5e98df383b865!2sHotel%20Annapurna%20View%20Sarangkot%20Pvt.%20Ltd.%2C%20Pokhara!3m2!1d28.2495332!2d83.9439934!4m5!1s0x39959511b7655099%3A0xd1a8a5e182179440!2sCable%20Car!3m2!1d28.247410199999997!2d83.9457807!5e0!3m2!1sen!2snp!4v1723106968232!5m2!1sen!2snp'),
(17, 0, 'dhulikhel', 'View Tower', 'Dhulikhel', '', 0, '', 1, '', '', '', 0, '2023-09-04 13:28:02', '2024-08-30 11:04:22', 7, 0, 0x613a303a7b7d, '', '', '800m', 'https://www.google.com/maps/embed?pb=!1m27!1m12!1m3!1d1477.725940132041!2d83.9445047538777!3d28.24847087231005!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m12!3e6!4m5!1s0x399594a512b8e637%3A0x9bd5e98df383b865!2sHotel%20Annapurna%20View%20Sarangkot%20Pvt.%20Ltd!3m2!1d28.2495332!2d83.9439934!4m4!1s0x399594bc9701c979%3A0x1abee2e4f733a4be!3m2!1d28.2459936!2d83.9486646!5e0!3m2!1sen!2snp!4v1723106820973!5m2!1sen!2snp'),
(18, 0, 'bhaktapur', 'Shiva Mandir', 'Bhaktapur', '<p>\r\n	testing</p>\r\n', 0, '', 1, '', '', '', 0, '2023-09-04 13:28:33', '2024-08-30 11:43:02', 8, 0, 0x613a303a7b7d, '', '', '16.7 km', 'https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d522.4700713577853!2d83.94848187106795!3d28.245397838641043!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x399594a512b8e637%3A0x9bd5e98df383b865!2sHotel%20Annapurna%20View%20Sarangkot%20Pvt.%20Ltd.%2C%20Pokhara!3m2!1d28.2495332!2d83.9439934!4m5!1s0x399595de2e2f13fb%3A0x37a5eff3c2dd31b!2zU2FyYW5na290IFNoaXZhIFRlbXBsZSDgpLjgpLDgpL7gpJngpY3gpJfgpJXgpYvgpJ8g4KS24KS_4KS1IOCkruCkqOCljeCkpuCkv-CksA!3m2!1d28.2456081!2d83.94850129999999!5e0!3m2!1sen!2snp!4v1723106923714!5m2!1sen!2snp'),
(19, 0, '', 'Yamdi Waterfall', '', '', 0, '', 1, '', '', '', 0, '2024-08-30 11:06:39', '2024-08-30 11:06:39', 2, 0, 0x613a303a7b7d, '', '', '10km', 'https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d27609.243089186963!2d83.94265733277877!3d28.230540206712362!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x399594a512b8e637%3A0x9bd5e98df383b865!2sHotel%20Annapurna%20View%20Sarangkot%20Pvt.%20Ltd.%2C%20Pokhara!3m2!1d28.2495332!2d83.9439934!4m5!1s0x3995951e14d5a941%3A0xd04523f7f375b83!2s6X84%2B3JQ%20Pokhara%20Lakeside%2C%20Lakeside%20Rd%2C%20Pokhara%2033700!3m2!1d28.215208999999998!2d83.9566153!5e1!3m2!1sen!2snp!4v1723106516257!5m2!1sen!2snp'),
(20, 0, '', 'Lakeside', '', '', 0, '', 1, '', '', '', 0, '2024-08-30 11:07:07', '2024-08-30 11:07:07', 1, 0, 0x613a303a7b7d, '', '', '12km', 'https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d27609.243089186963!2d83.94265733277877!3d28.230540206712362!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x399594a512b8e637%3A0x9bd5e98df383b865!2sHotel%20Annapurna%20View%20Sarangkot%20Pvt.%20Ltd.%2C%20Pokhara!3m2!1d28.2495332!2d83.9439934!4m5!1s0x3995951e14d5a941%3A0xd04523f7f375b83!2s6X84%2B3JQ%20Pokhara%20Lakeside%2C%20Lakeside%20Rd%2C%20Pokhara%2033700!3m2!1d28.215208999999998!2d83.9566153!5e1!3m2!1sen!2snp!4v1723106516257!5m2!1sen!2snp'),
(21, 0, '', 'Pumidkot Religious area', '', '', 0, '', 1, '', '', '', 0, '2024-08-30 11:07:29', '2024-08-30 11:07:29', 0, 0, 0x613a303a7b7d, '', '', '10km', 'https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d55224.302291756256!2d83.91319006086769!3d28.21929747830382!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x399594a512b8e637%3A0x9bd5e98df383b865!2sHotel%20Annapurna%20View%20Sarangkot%20Pvt.%20Ltd.%2C%20Pokhara!3m2!1d28.2495332!2d83.9439934!4m5!1s0x3995eb1d30ac4345%3A0x42b4717e6a35c215!2sPumdikot%20Religious%20Area%20Pokhara%2033700!3m2!1d28.1993758!2d83.92938149999999!5e1!3m2!1sen!2snp!4v1723103984221!5m2!1sen!2snp');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(250) NOT NULL,
  `author` varchar(100) NOT NULL,
  `brief` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `news_date` date NOT NULL,
  `archive_date` date DEFAULT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `image` varchar(50) NOT NULL,
  `source` longtext NOT NULL,
  `type` int(1) NOT NULL,
  `viewcount` int(11) NOT NULL DEFAULT 0,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offers`
--

CREATE TABLE `tbl_offers` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `list_image` varchar(255) NOT NULL,
  `adults` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `linksrc` varchar(255) NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `rate` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `brief` tinytext NOT NULL,
  `content` longtext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `offer_date` varchar(50) NOT NULL,
  `start_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_offers`
--

INSERT INTO `tbl_offers` (`id`, `slug`, `title`, `image`, `list_image`, `adults`, `children`, `linksrc`, `linktype`, `rate`, `discount`, `brief`, `content`, `status`, `added_date`, `sortorder`, `type`, `offer_date`, `start_date`) VALUES
(1, 'low-season-offer', 'Low Season Offer', 'AdgZx-facilities.jpg', 'EJhsq-Mask group (1).png', 1, 0, '', 0, 12, 3, '4 Nights from $ 150 for couple', '<p>\r\n	Aas</p>\r\n', 1, '2024-01-10 13:29:39', 2, 0, '2024-08-31', '2024-08-01'),
(2, 'package-2', 'Package-2', '', 'u7Oc1-wall2.png', 0, 0, '', 0, 0, 0, '4 Nights from $ 150 for couple', '', 1, '2024-08-26 10:48:22', 3, 0, '2024-08-31', '2024-08-01'),
(3, 'package-3', 'Package-3', '', 'OGkob-wall3.png', 0, 0, '', 0, 0, 0, '4 Nights from $ 150 for couple', '', 1, '2024-08-26 10:48:50', 4, 0, '2024-08-31', '2024-08-01'),
(4, 'package-4', 'Package-4', '', '0Uxb5-wall4.png', 0, 0, '', 0, 0, 0, '4 Nights from $ 150 for couple', '', 1, '2024-08-26 10:49:06', 5, 0, '2024-08-31', '2024-08-01'),
(5, 'package-5', 'Package-5', '', 'p9rXa-wall5.png', 0, 0, '', 0, 0, 0, '4 Nights from $ 150 for couple', '', 1, '2024-08-26 10:49:39', 6, 0, '2024-08-31', '2024-08-01'),
(6, 'package-6', 'Package-6', '', '6pHqO-wall6.png', 0, 0, '', 0, 0, 0, '4 Nights from $ 150 for couple4 Nights from $ 150 for couple', '', 1, '2024-08-26 10:49:53', 7, 0, '2024-08-31', '2024-08-01'),
(7, 'package-7', 'Package-7', '', 'pxjVS-wall1.png', 0, 0, '', 0, 0, 0, '', '', 1, '2024-08-26 10:50:09', 8, 0, '2024-08-31', '2024-08-01'),
(8, 'package-8', 'Package-8', '', 'ms8dP-wall2.png', 0, 0, '', 0, 0, 0, '', '', 1, '2024-08-26 10:50:21', 9, 0, '2024-08-31', '2024-08-01'),
(9, 'package-9', 'Package-9', '', '2ZgBr-wall2.png', 0, 0, '', 0, 0, 0, '', '', 1, '2024-08-26 10:50:33', 10, 0, '2024-08-31', '2024-08-01'),
(10, 'monsoon-offer', 'monsoon offer', '', 'Z5WCB-Group 11.png', 0, 0, '', 0, 0, 0, '', '', 1, '2024-08-27 09:28:58', 1, 0, '2024-08-31', '2024-08-27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offer_child`
--

CREATE TABLE `tbl_offer_child` (
  `offer_id` int(11) NOT NULL,
  `offer_pax` varchar(200) NOT NULL,
  `offer_usd` varchar(10) NOT NULL,
  `offer_inr` varchar(10) NOT NULL,
  `offer_npr` varchar(10) NOT NULL,
  `offer_no` int(11) NOT NULL,
  `multi_offer_title` varchar(255) NOT NULL,
  `multi_offer_npr` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_offer_child`
--

INSERT INTO `tbl_offer_child` (`offer_id`, `offer_pax`, `offer_usd`, `offer_inr`, `offer_npr`, `offer_no`, `multi_offer_title`, `multi_offer_npr`) VALUES
(1, '12', '23', '', '', 1, '', ''),
(1, '11', '34', '', '', 2, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ota`
--

CREATE TABLE `tbl_ota` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `linksrc` tinytext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_ota`
--

INSERT INTO `tbl_ota` (`id`, `title`, `image`, `icon`, `linksrc`, `status`, `sortorder`, `registered`) VALUES
(7, 'booking', 'guqcq-bo.png', '', '#', 1, 1, ''),
(8, 'agoda', '8fj3b-ag.png', '', '#', 1, 2, ''),
(9, 'expedia', 'hhqsu-ex.png', '', '#', 1, 3, ''),
(10, 'tripadvisor', 'qw86F-ta.png', '', '#', 1, 4, ''),
(11, 'Make My Trip', 'sFzjy-ma.png', '', '#', 1, 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package`
--

CREATE TABLE `tbl_package` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(250) NOT NULL,
  `sub_title` text NOT NULL,
  `image` varchar(50) NOT NULL,
  `header_image` text NOT NULL,
  `banner_image` mediumtext NOT NULL,
  `detail` longtext NOT NULL,
  `content` mediumtext NOT NULL,
  `meta_title` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_package`
--

INSERT INTO `tbl_package` (`id`, `slug`, `title`, `sub_title`, `image`, `header_image`, `banner_image`, `detail`, `content`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `sortorder`, `added_date`, `modified_date`, `type`) VALUES
(1, 'accommodations', 'Accommodations', 'Experience matter', '', '', 'a:1:{i:0;s:18:\"Y3own-standard.jpg\";}', '', '<p>\r\n	Step into your inviting holiday space and feel at peace: our comfortable and exquisitely furnished rooms, suites, and chalets are your exclusive place of retreat. Here you can block out everyday life and recharge your batteries. Indulge in precious moments of relaxation in our luxurious five-star hideaways.</p>\r\n', 'Rooms', 'villa, rooms, luxurious, lounge, area, equipped, spacious, mini freeze, natural lights, movies, complementary, wifi', 'The villa is the home of 24 luxurious rooms with lounge area, fully equipped with work area, sofa, mini freeze, spacious, bright and airy room, bath with natural lights, HD movies and complementary wifi.', 1, 1, '2017-04-24 17:25:53', '2024-08-23 09:43:20', 1),
(11, 'meeting-conference', 'Meeting & Conference', 'Exceptional Solutions, Unmatched Quality, Diverse Services', '', '', 'a:1:{i:0;s:16:\"G7lf0-image8.png\";}', '', '<p>\r\n	The meeting rooms that we have present in our hotel are exactly the place where you would want your meetings to happen. A peaceful environment around the meeting room together with up to date technology makes us a perfect venue for a successful meeting. With the view and the pleasant aura backing our meeting hall, we believe that you will always have a positive conclusion to your meetings.</p>\r\n', '', '', '', 1, 2, '2023-08-29 12:22:54', '2024-08-28 13:36:48', 2),
(12, 'dining-and-delight', 'Dining and delight', 'Gourmet experiences at the luxury hotel in Sarangkot', '', '', 'a:1:{i:0;s:20:\"uSBSK-IMG_9722 1.png\";}', '', '<p>\r\n	The finest flavours, succulent textures, carefully selected ingredients, and a refined presentation that resembles a work of art: these are the components of our restaurants&rsquo; gourmet delights. The finest wines round off your gourmet journey</p>\r\n', '', '', '', 1, 3, '2023-08-29 14:33:04', '2024-08-27 10:49:09', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package_sub`
--

CREATE TABLE `tbl_package_sub` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(200) NOT NULL,
  `detail` longtext NOT NULL,
  `image` mediumtext NOT NULL,
  `header_image` text NOT NULL,
  `image2` varchar(200) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `image4` varchar(200) NOT NULL,
  `feature` blob NOT NULL,
  `content` mediumtext NOT NULL,
  `facility_title` varchar(255) NOT NULL,
  `number_room` int(11) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `discount` int(11) NOT NULL,
  `people_qnty` int(11) NOT NULL,
  `onep_price` int(11) NOT NULL,
  `twop_price` int(11) NOT NULL,
  `threep_price` int(11) NOT NULL,
  `oneb_price` int(11) NOT NULL,
  `twob_price` int(11) NOT NULL,
  `threeb_price` int(11) NOT NULL,
  `extra_bed` varchar(10) NOT NULL,
  `short_title` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `serve` varchar(255) NOT NULL,
  `theatre_style` varchar(255) NOT NULL,
  `class_room_style` varchar(255) NOT NULL,
  `shape` varchar(255) NOT NULL,
  `round_table` varchar(255) NOT NULL,
  `clusture` varchar(255) NOT NULL,
  `cocktail` varchar(255) NOT NULL,
  `seats` varchar(20) NOT NULL,
  `meta_title` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `type` tinyint(2) NOT NULL DEFAULT 0,
  `below_content` mediumtext NOT NULL,
  `seminar` varchar(50) NOT NULL,
  `meeting` varchar(50) NOT NULL,
  `events` varchar(50) NOT NULL,
  `conference` varchar(50) NOT NULL,
  `catering` varchar(50) NOT NULL,
  `celebration` varchar(50) NOT NULL,
  `organic_food` varchar(50) NOT NULL,
  `occupancy` varchar(50) NOT NULL,
  `view` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `service` varchar(50) NOT NULL,
  `live_music` varchar(50) NOT NULL,
  `bed` varchar(50) NOT NULL,
  `room_size` varchar(50) NOT NULL,
  `room_service` varchar(50) NOT NULL,
  `airport_pickup` varchar(50) NOT NULL,
  `private_balcony` varchar(50) NOT NULL,
  `checkinout` varchar(50) NOT NULL,
  `rojai_room_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_package_sub`
--

INSERT INTO `tbl_package_sub` (`id`, `slug`, `title`, `sub_title`, `detail`, `image`, `header_image`, `image2`, `image3`, `image4`, `feature`, `content`, `facility_title`, `number_room`, `currency`, `discount`, `people_qnty`, `onep_price`, `twop_price`, `threep_price`, `oneb_price`, `twob_price`, `threeb_price`, `extra_bed`, `short_title`, `time`, `location`, `serve`, `theatre_style`, `class_room_style`, `shape`, `round_table`, `clusture`, `cocktail`, `seats`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `sortorder`, `added_date`, `modified_date`, `type`, `below_content`, `seminar`, `meeting`, `events`, `conference`, `catering`, `celebration`, `organic_food`, `occupancy`, `view`, `size`, `service`, `live_music`, `bed`, `room_size`, `room_service`, `airport_pickup`, `private_balcony`, `checkinout`, `rojai_room_id`) VALUES
(21, 'suite-room', 'Suite Room', '', 'A 75 m² room with a beautiful view of the mountains from your king-sized bed along with a private balcony ensures a luxurious stay in our hotel.', 'a:1:{i:0;s:19:\"QMow1-suiteRoom.png\";}', '', 'T60qS-A7401781-HDR 1.png', '', '', 0x613a313a7b693a3131393b613a323a7b693a303b613a313a7b693a303b733a31343a22526f6f6d20416d656e6974696573223b7d693a313b613a31323a7b693a303b733a333a22313332223b693a313b733a333a22313331223b693a323b733a333a22313330223b693a333b733a333a22313239223b693a343b733a333a22313238223b693a353b733a333a22313237223b693a363b733a333a22313236223b693a373b733a333a22313235223b693a383b733a333a22313234223b693a393b733a333a22313233223b693a31303b733a333a22313232223b693a31313b733a333a22313231223b7d7d7d, '<p>\r\n	The most luxurious type of room that you can have at our hotel with 80m2 area. Equipped with the best possible facilities that we have to offer. Loaded with the best possible technology out there, you will never miss a feel of a modern hotel room. A cozy king sized bed or two single beds, a large bathroom with a bathtub, a mini fridge and a closet, it has everything to make your stay as luxurious as possible. The amount you pay for the services will certainly give you an unforgettable moment. It has everything you need to make your stay a royal one.</p>\r\n', '', 0, '\\$', 0, 0, 120, 0, 0, 0, 0, 0, '3', 'Suite Room', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 4, '2020-02-14 12:20:31', '2024-08-27 09:41:30', 1, '', '', '', '', '', '', '', '', '2 pax', 'Gardern View', '', '', '', '1 King Bed + 2 Beds', '50 sqft', '', '', '', '', 0),
(28, 'deluxe-suite', 'Deluxe Suite', '', 'The most luxurious type of room that you can have at our hotel with 80m2 area. Equipped with the best possible facilities that we have to offer.', 'a:1:{i:0;s:20:\"i9ixl-deluxSuite.png\";}', '', 'XLtZ1-A7401781-HDR 1.png', '', '', 0x613a313a7b693a3131393b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a31323a7b693a303b733a333a22313332223b693a313b733a333a22313331223b693a323b733a333a22313330223b693a333b733a333a22313239223b693a343b733a333a22313238223b693a353b733a333a22313237223b693a363b733a333a22313236223b693a373b733a333a22313235223b693a383b733a333a22313234223b693a393b733a333a22313233223b693a31303b733a333a22313232223b693a31313b733a333a22313231223b7d7d7d, '<p>\r\n	The most luxurious type of room that you can have at our hotel with 80m2 area. Equipped with the best possible facilities that we have to offer. Loaded with the best possible technology out there, you will never miss a feel of a modern hotel room. A cozy king sized bed or two single beds, a large bathroom with a bathtub, a mini fridge and a closet, it has everything to make your stay as luxurious as possible. The amount you pay for the services will certainly give you an unforgettable moment. It has everything you need to make your stay a royal one.</p>\r\n', '', 0, '\\$', 0, 0, 120, 0, 0, 0, 0, 0, '', 'Deluxe Suite', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 2, '2023-06-06 12:40:04', '2024-08-27 09:41:59', 1, '', '', '', '', '', '', '', '', '2 pax', 'Gardern View', '', '', '', '1 King Bed + 2 Beds', '50 sqft', '', '', '', '', 0),
(29, 'deluxe-room', 'Deluxe Room', '', 'Our hotel\'s Deluxe rooms are 50 m² well-equipped areas with amenities and offer a breathtaking view of the mountains.', 'a:1:{i:0;s:20:\"bUDng-deluxeRoom.png\";}', '', '53TIw-A7401781-HDR 1.png', '', '', 0x613a313a7b693a3131393b613a323a7b693a303b613a313a7b693a303b733a31343a22526f6f6d20416d656e6974696573223b7d693a313b613a31323a7b693a303b733a333a22313332223b693a313b733a333a22313331223b693a323b733a333a22313330223b693a333b733a333a22313239223b693a343b733a333a22313238223b693a353b733a333a22313237223b693a363b733a333a22313236223b693a373b733a333a22313235223b693a383b733a333a22313234223b693a393b733a333a22313233223b693a31303b733a333a22313232223b693a31313b733a333a22313231223b7d7d7d, '<p>\r\n	The new Deluxe rooms built in 2011 have a very Zen like feel to them. The room conceptualized by the owner&rsquo;s son Mr. Rahul Sakya, uses a lot of Buddhist elements. Such as the &ldquo;Ashtamangala&rdquo; or the eight auspicious signs that hang above the bed. In Buddhism, the eight symbols represent good fortune and offerings made by the Gods to Shakyamuni Buddha immediately after he gained enlightenment.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	Furniture in the rooms are handcrafted and designed by Kin Kraft by Mr. Kiran Man Sherchan- a well known Nepali furniture designer. The hotel has tried it&rsquo;s best to use locally produced artifacts and products to support the local community. The hotel also tries its best to make sure that all aspects of the hotel including room features are Eco-friendly.</p>\r\n', '', 0, '\\$', 0, 0, 120, 0, 0, 0, 0, 0, '', 'Deluxe Room', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 6, '2023-06-06 13:02:18', '2024-08-23 10:37:43', 1, '', '', '', '', '', '', '', '', '2 pax', 'Gardern View', '', '', '', '1 King Bed + 2 Beds', '50 sqft', '', '', '', '', 0),
(37, 'conference-hall', 'Conference Hall', '', 'The meeting rooms present in our hotel are exactly the place where you would want your meetings to happen.', 'a:1:{i:0;s:22:\"xpe7M-Rectangle 10.png\";}', '', 'ikrrJ-image8.png', '', '', 0x613a303a7b7d, '<p>\r\n	Nagarkot, literal meaning &ldquo;Fort of City&rdquo;, is at an altitude of 2165 meter. So near, yet so far away from the hustle and bustle of the city, Club Himalaya offers clean air, a peaceful atmosphere, and an easy commute to and from UNESCO World Heritage sites Bhaktapur and Changu Narayan as well as the historic town of Sankhu.</p>\r\n', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 'The meeting rooms', '', '', '', '', '', '', '', '', '', '1620 Sq.ft', '', '', '', 1, 6, '2023-08-29 13:03:28', '2024-08-28 12:59:05', 11, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(38, 'lounge-and-bar', 'Lounge and bar', '', '', 'a:1:{i:0;s:22:\"WM4Xw-loungeAndBar.jpg\";}', '', '', '', ' HEUd1-chmenu.pdf ', 0x613a303a7b7d, '<p>\r\n	A well-built, pleasant space to unwind and let go. The most happening place on our property. A sophisticated design gives our lounge the feel that you guarantee will exceed your expectation for a lounge. Enjoy a drink while taking in the breathtaking views and live music.</p>\r\n', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 'Lounge and bar', '', '', '', '23123', '123', '123', '123', '', '', '', '', '', '', 1, 6, '2023-08-29 14:35:35', '2024-08-26 09:32:55', 12, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(43, 'shristi-restaurant', 'Shristi Restaurant', '', '', 'a:1:{i:0;s:20:\"YYvQL-_MG_9271 2.png\";}', '', '', '', ' Ckrr6-roommenu.pdf ', 0x613a303a7b7d, '<p>\r\n	Bar Indrawati with its cozy fire place &amp; beverages from all over the world wrings in some heat for the party animals. The rustic mountain tavern decor, the cozy fireplace, the beckoning dance floor and of course the delightful choice of wines, cocktails and spirits along with fusion and jazz probably makes it the coziest bar at 7,200 ft.</p>\r\n', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 'Shristi Restaurant', '', '', '', ' 7:00am – 22:00 pm', '', ' Large wine selection & cocktail<br/> mixology as well asdigestifs', 'Smart casual, no bathrobes<br/> please', '', '', '', '', '', '', 1, 5, '2023-09-04 12:59:53', '2024-08-26 09:34:11', 12, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(46, 'yoga-and-fitness', 'Yoga and Fitness', '', 'Find balance and harmony with our expert-led yoga and fitness classes, tailored to suit all levels.', 'a:1:{i:0;s:24:\"ZyYm9-Mask group (1).png\";}', '', '', '', '', 0x613a303a7b7d, '<p>\r\n	Find balance and harmony with our expert-led yoga and fitness classes, tailored to suit all levels.</p>\r\n', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 'Yoga and Fitness', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 5, '2024-08-26 16:56:00', '2024-08-27 14:31:10', 11, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permission`
--

CREATE TABLE `tbl_permission` (
  `id` int(11) NOT NULL,
  `type` varchar(5) NOT NULL,
  `group_id` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `module_id` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_popup`
--

CREATE TABLE `tbl_popup` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `date1` date NOT NULL,
  `date2` date NOT NULL,
  `image` varchar(200) NOT NULL,
  `source` varchar(250) NOT NULL,
  `linktype` varchar(150) NOT NULL,
  `linksrc` varchar(250) NOT NULL,
  `position` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_popup`
--

INSERT INTO `tbl_popup` (`id`, `title`, `date1`, `date2`, `image`, `source`, `linktype`, `linksrc`, `position`, `status`, `sortorder`, `type`, `slug`) VALUES
(1, 'sdad', '2023-09-03', '2023-09-21', 'a:1:{i:0;s:18:\"V8G5t-82861346.jpg\";}', '', '0', 'about-us', 1, 0, 1, 1, 'sdad'),
(2, 'asefasdasd', '2024-01-01', '2024-01-31', 'a:1:{i:0;s:22:\"nrUrx-880x864_img2.jpg\";}', '', '0', 'about-us', 1, 1, 2, 1, 'asefasdasd');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `img_thumb` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `img_jpg` varchar(255) NOT NULL,
  `img_png` varchar(255) NOT NULL,
  `img_svg` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(255) NOT NULL,
  `modified_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `title`, `content`, `img_thumb`, `img_jpg`, `img_png`, `img_svg`, `status`, `sortorder`, `added_date`, `modified_date`) VALUES
(2, 'test', 'test ', '<p>\r\n	dfcgvhhjbk</p>\r\n', '', '', '', '', 1, 1, '2021-11-24 12:47:12', '2021-11-24 12:50:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_room_price`
--

CREATE TABLE `tbl_room_price` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `season_id` int(11) NOT NULL,
  `one_person` int(11) NOT NULL,
  `two_person` int(11) NOT NULL,
  `three_person` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_services`
--

CREATE TABLE `tbl_services` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `icon` varchar(255) NOT NULL,
  `linksrc` varchar(255) NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `content` longtext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `brief` varchar(250) NOT NULL,
  `meta_title` tinyint(4) NOT NULL,
  `meta_keywords` int(11) NOT NULL,
  `meta_description` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_services`
--

INSERT INTO `tbl_services` (`id`, `slug`, `title`, `sub_title`, `image`, `icon`, `linksrc`, `linktype`, `content`, `status`, `added_date`, `sortorder`, `type`, `brief`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(60, 'poolside-bar', 'Poolside bar', 'Hair Dryer', 'a:1:{i:0;s:18:\"mutCb-Cocktail.svg\";}', '', '', 0, '', 1, '2023-09-04 12:35:46', 2, 0, '', 0, 0, 0),
(61, 'swimming-pool', 'Swimming Pool', 'LED Tv', 'a:1:{i:0;s:18:\"2X4J4-Swimming.svg\";}', '', '', 0, '', 1, '2023-09-04 12:35:57', 3, 0, '', 0, 0, 0),
(63, 'fireplace', 'Fireplace', '', 'a:1:{i:0;s:14:\"X5pHh-Fire.svg\";}', '', '', 0, '', 1, '2024-08-30 11:30:59', 1, 0, '', 0, 0, 0),
(64, 'extensive-gardens-with-pergolas-and-hammocks', 'Extensive gardens with pergolas and hammocks', '', 'a:1:{i:0;s:16:\"5m1jZ-Garden.svg\";}', '', '', 0, '', 1, '2024-08-30 11:31:14', 0, 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slideshow`
--

CREATE TABLE `tbl_slideshow` (
  `id` int(11) NOT NULL,
  `title` tinytext NOT NULL,
  `image` tinytext NOT NULL,
  `linksrc` tinytext NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `content` longtext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `m_status` tinyint(1) NOT NULL DEFAULT 1,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `source` varchar(250) NOT NULL,
  `source_vid` varchar(255) NOT NULL,
  `url_type` varchar(50) NOT NULL,
  `thumb_image` longtext NOT NULL,
  `url` varchar(255) NOT NULL,
  `host` varchar(255) NOT NULL,
  `class` varchar(100) NOT NULL,
  `mode` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_slideshow`
--

INSERT INTO `tbl_slideshow` (`id`, `title`, `image`, `linksrc`, `linktype`, `content`, `status`, `m_status`, `added_date`, `sortorder`, `type`, `source`, `source_vid`, `url_type`, `thumb_image`, `url`, `host`, `class`, `mode`) VALUES
(82, 'qweqweqwe', 'pGz2N-deluxeRoom.png', '', 0, '<p>\r\n	qwewqe</p>\r\n', 1, 0, '2024-08-27 17:39:54', 0, 1, '', '', '', '', '', '', '', 0),
(81, 'Experience matter', 'Ltmgl-IMG_1736 1.png', '', 0, '<p>\r\n	One door away from the mountains</p>\r\n', 1, 0, '2024-08-26 11:14:51', 1, 1, '', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slideshows_withouttlist`
--

CREATE TABLE `tbl_slideshows_withouttlist` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL,
  `type` int(1) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social_networking`
--

CREATE TABLE `tbl_social_networking` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `linksrc` tinytext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL,
  `review_image` varchar(255) NOT NULL,
  `d_title` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_social_networking`
--

INSERT INTO `tbl_social_networking` (`id`, `title`, `image`, `icon`, `type`, `linksrc`, `status`, `sortorder`, `registered`, `review_image`, `d_title`) VALUES
(1, 'YouTube', '', '', 0, '#', 1, 4, '', '', ''),
(2, 'Instagram', '', '', 0, '#', 1, 3, '', '', ''),
(3, 'Twitter', '', 'fab fa-twitter', 0, '#', 1, 2, '', '', ''),
(4, 'Facebook', '', 'fa fa-facebook', 0, '#', 1, 1, '', '', ''),
(5, 'facebook', 'cy8vJ-Facebook.png', '', 1, 'https://www.facebook.com/annapurnaview/', 1, 5, '2024-08-26 12:40:57', 'yImul-Facebook2.png', 'hotelannapurnaviewsarankot'),
(6, 'instagram', 'hqJKO-Instagram.png', '', 1, 'https://www.instagram.com/annapurnaview/', 1, 6, '2024-08-26 12:42:17', 'tUuw3-Instagram2.png', 'annapurnaview'),
(7, 'linkdin', 'szrNm-LinkedIn.png', '', 1, 'https://www.linkedin.com/company/hotel-annapurna-view-sarangkot/', 1, 7, '2024-08-26 12:42:50', 'Iqnum-LinkedIn@2x.png', 'hotelannapurnaview'),
(8, 'youtube', 'W0iuB-YouTube.png', '', 1, 'https://www.youtube.com/@annapurnaview', 1, 8, '2024-08-26 12:43:08', '7GG3V-YouTube2.png', 'hotelannapurnview'),
(9, 'Expedia', 'ZJwqI-Expedia.svg', '', 2, 'https://www.expedia.com/Pokhara-Hotels-Hotel-Annapurna-View-Sarangkot.h42348743.Hotel-Information?msockid=1cac1547f05265c216970761f1e0647c', 1, 9, '2024-08-26 16:41:37', '', ''),
(10, 'Tripadvisor', '8r1zz-TripAdvisor.png', '', 2, 'https://www.tripadvisor.com/Hotel_Review-g293891-d19241537-Reviews-Hotel_Annapurna_View_Sarangkot-Pokhara_Gandaki_Zone_Western_Region.html', 1, 10, '2024-08-26 16:42:12', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subpackage_images`
--

CREATE TABLE `tbl_subpackage_images` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `subpackageid` int(11) NOT NULL,
  `detail` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_subpackage_images`
--

INSERT INTO `tbl_subpackage_images` (`id`, `title`, `subpackageid`, `detail`, `status`, `sortorder`, `registered`, `image`) VALUES
(73, 'Hall', 31, '', 1, 19, '2023-06-21 13:59:14', 'lumn1-1.jpg'),
(74, 'Hall', 31, '', 1, 20, '2023-06-21 13:59:14', 'TXYew-2.jpg'),
(75, 'Hall', 31, '', 1, 21, '2023-06-21 13:59:14', '3WSgO-3.jpg'),
(76, 'Hall', 31, '', 1, 22, '2023-06-21 13:59:14', 'V7UWD-4.jpg'),
(77, 'Hall', 31, '', 1, 23, '2023-06-21 13:59:14', 'IZ0in-5.jpg'),
(78, 'Hall', 31, '', 1, 24, '2023-06-21 13:59:14', 's8rXz-6.jpg'),
(102, 'j', 21, '', 1, 1, '2023-09-04 12:39:46', 'QGRMx-juni.jpg'),
(103, 'j', 21, '', 1, 15, '2023-09-04 12:39:46', 'BmfTU-juni.jpg'),
(104, 'j', 21, '', 1, 17, '2023-09-04 12:39:46', 'DHoHe-juni.jpg'),
(105, 'dep', 28, '', 1, 13, '2023-09-04 12:42:45', 'h26jS-delpre.jpg'),
(106, 'dep', 28, '', 1, 16, '2023-09-04 12:42:45', '4PvHa-delpre.jpg'),
(107, 'dep', 28, '', 1, 18, '2023-09-04 12:42:45', 'aTYbg-delpre.jpg'),
(123, 'room1', 29, '', 1, 8, '2024-08-23 10:11:24', '3gJcl-image 13.png'),
(124, 'room2', 29, '', 1, 4, '2024-08-23 10:11:24', '5vaTq-image 11.png'),
(125, 'room 3', 29, '', 1, 7, '2024-08-23 10:11:24', 'EDTBH-image 12.png'),
(126, 'room 4', 29, '', 1, 9, '2024-08-23 10:11:24', 'i5thg-image 14.png'),
(127, 'room5', 29, '', 1, 10, '2024-08-23 10:11:24', 's1tXP-image 15.png'),
(128, 'dine', 38, '', 1, 11, '2024-08-26 09:35:54', 'mqwJN-Mask group (1).png'),
(129, 'dine 2', 38, '', 1, 12, '2024-08-26 09:35:54', 'leock-Rectangle 10.png'),
(130, 'dine 3', 38, '', 1, 14, '2024-08-26 09:35:54', 'geUDy-snooker.png'),
(133, 'meet', 37, '', 1, 3, '2024-08-26 10:17:56', 'oyfpO-image7.png'),
(134, 'meet 2', 37, '', 1, 5, '2024-08-26 10:17:56', 'bpLL5-image5.png'),
(135, 'meet 3', 37, '', 1, 6, '2024-08-26 10:17:56', 'mJQg0-image6.png'),
(136, 'meet 5', 37, '', 1, 2, '2024-08-26 10:18:19', 'B6ANa-IMG_9722 1.png'),
(137, 'dine 1', 43, '', 1, 1, '2024-08-29 11:42:21', 'k6ual-IMG_9722 1.png'),
(138, 'dine 2', 43, '', 1, 2, '2024-08-29 11:42:21', '2Vts0-wall6.png'),
(139, 'dine 3', 43, '', 1, 3, '2024-08-29 11:42:21', 'WuIEW-IMG_9722 12.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscribers`
--

CREATE TABLE `tbl_subscribers` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `mailaddress` varchar(250) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonial`
--

CREATE TABLE `tbl_testimonial` (
  `id` int(11) NOT NULL,
  `parentOf` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(225) NOT NULL,
  `linksrc` text NOT NULL,
  `content` mediumtext NOT NULL,
  `rating` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `country` varchar(100) NOT NULL,
  `via_type` varchar(200) NOT NULL,
  `type` int(11) NOT NULL,
  `page_slug` varchar(255) NOT NULL,
  `tes_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_testimonial`
--

INSERT INTO `tbl_testimonial` (`id`, `parentOf`, `name`, `image`, `linksrc`, `content`, `rating`, `sortorder`, `status`, `country`, `via_type`, `type`, `page_slug`, `tes_date`) VALUES
(1, 0, 'WIRAEN', 'FP3jC-review1.jpg', '', '<p>\r\n	Stayed one night after a hike from Chisopani. The hotel was clean and spacious. We had a lovely time wondering around the premise. There were plenty of outdoor viewing areas and the rooms were huge! Buffet were good too. Wish we had time to wonder around the little town.</p>\r\n', 0, 1, 1, '', 'MALAYSIA', 0, '', '2024-08-19'),
(2, 0, 'Greg. S ', 'lLPbj-review2.jpg', '', '<h3>\r\n	This is a beautiful hotel with the best views of the Himalayan mountains at sunrise. It is really worth the effort to get up before sunrise. The rooms are spacious well appointed and warm. The meals are excellent with a delicious Buffet breakfast and dinner. It is well well worth the effort to visit Nagarkot and stay at the Club Himalaya ffffffffffffff</h3>\r\n', 0, 2, 1, '', 'Wagga', 0, 'offer/package-8', '2024-08-26'),
(3, 0, 'PAVEL A', 'KORbe-Google.png', '#', '<p>\r\n	Thank you for great Place, Service, Staff, Views, Food... It was perfect! This is one of the most energetically powerful places on earth, next to the Himalayas, and of course, the hotel provided an excellent service for group work on meditation and retreat.</p>\r\n', 5, 3, 1, 'WIRAEN - MALAYSIA', 'google', 0, 'about-annapurna-view', '2024-08-27'),
(4, 0, 'PAVEL A P', '', '#', '<p>\r\n	PAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL APAVEL A</p>\r\n', 4, 4, 1, '', 'PAVEL APAVEL A', 0, 'lounge-and-bar', '2024-08-22'),
(5, 0, 'PAVEL accomodation', 'xggzb-Google.png', '#', '<p>\r\n	Thank you for great Place, Service, Staff, Views, Food... It was perfect! This is one of the most energetically powerful places on earth, next to the Himalayas, and of course, the hotel provided an excellent service for group work on meditation and retreat.</p>\r\n', 5, 5, 1, '', 'google', 0, 'accommodations', '2024-08-22'),
(6, 0, 'PAVEL deluxe', '9B5vg-Google.png', '#', '<p>\r\n	Thank you for great Place, Service, Staff, Views, Food... It was perfect! This is one of the most energetically powerful places on earth, next to the Himalayas, and of course, the hotel provided an excellent service for group work on meditation and retreat.</p>\r\n', 0, 6, 1, '', 'google', 0, 'deluxe-room', '2024-08-20'),
(7, 0, 'PAVEL A Dining', 'JOurt-Google.png', '#', '<p>\r\n	Thank you for great Place, Service, Staff, Views, Food... It was perfect! This is one of the most energetically powerful places on earth, next to the Himalayas, and of course, the hotel provided an excellent service for group work on meditation and retreat.</p>\r\n', 3, 7, 1, '', 'google', 0, 'dining-and-delight', '2024-08-27'),
(8, 0, 'PAVEL A hall', 'c7vk0-Google.png', '#', '<p>\r\n	Thank you for great Place, Service, Staff, Views, Food... It was perfect! This is one of the most energetically powerful places on earth, next to the Himalayas, and of course, the hotel provided an excellent service for group work on meditation and retreat.</p>\r\n', 0, 8, 1, '', 'google', 0, 'conference-hall', '2024-08-29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `optional_email` longtext NOT NULL,
  `hall_email` varchar(200) NOT NULL,
  `hr_email` varchar(200) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(65) NOT NULL,
  `accesskey` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `access_code` varchar(255) NOT NULL,
  `facebook_uid` varchar(255) NOT NULL,
  `facebook_accesstoken` varchar(255) NOT NULL,
  `facebook_tokenexpire` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `permission` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `first_name`, `middle_name`, `last_name`, `contact`, `email`, `optional_email`, `hall_email`, `hr_email`, `username`, `password`, `accesskey`, `image`, `group_id`, `access_code`, `facebook_uid`, `facebook_accesstoken`, `facebook_tokenexpire`, `status`, `sortorder`, `added_date`, `permission`) VALUES
(1, 'annapurnaview', '', '', '', 'statshakya@gmail.com', 'support@longtail.info', 'statshakya@gmail.com', 'statshakya@gmail.com', 'admin', '32b9da145699ea9058dd7d6669e6bcc5', 'wTilnd4mbappMnuvueLtfVSV7', '', 2, 'IKLxivj8RW', '', '', '2021-04-29 05:40:38', 1, 1, '2014-03-26', 0x613a32313a7b693a303b733a313a2231223b693a313b733a313a2232223b693a323b733a313a2233223b693a333b733a323a223235223b693a343b733a323a223234223b693a353b733a323a223233223b693a363b733a313a2234223b693a373b733a333a22333032223b693a383b733a333a22333033223b693a393b733a313a2235223b693a31303b733a323a223237223b693a31313b733a333a22333030223b693a31323b733a333a22333031223b693a31333b733a323a223131223b693a31343b733a333a22333034223b693a31353b733a323a223137223b693a31363b733a323a223230223b693a31373b733a323a223238223b693a31383b733a323a223132223b693a31393b733a323a223133223b693a32303b733a323a223134223b7d),
(2, 'Super admin', '', '', '', 'support@longtail.info', 'support@longtail.info', 'support@longtail.info', 'support@longtail.info', 'superadmin', '4ef961d430016feab913571a25818e97', '5BnuwlwbgTcJNtbymC8Kmq23e', '', 1, '', '', '', '2023-11-09 10:05:54', 1, 0, '0000-00-00', 0x613a32363a7b693a303b733a323a223734223b693a313b733a313a2231223b693a323b733a333a22333036223b693a333b733a313a2232223b693a343b733a313a2233223b693a353b733a323a223235223b693a363b733a323a223234223b693a373b733a323a223233223b693a383b733a313a2234223b693a393b733a333a22333032223b693a31303b733a333a22333033223b693a31313b733a313a2235223b693a31323b733a323a223237223b693a31333b733a333a22333030223b693a31343b733a333a22333031223b693a31353b733a333a22333035223b693a31363b733a323a223131223b693a31373b733a323a223137223b693a31383b733a333a22333034223b693a31393b733a323a223230223b693a32303b733a323a223139223b693a32313b733a323a223238223b693a32323b733a323a223132223b693a32333b733a323a223133223b693a32343b733a323a223134223b693a32353b733a323a223136223b7d),
(3, 'asdasd', 'asdasd', 'asdasd', '', 'stat@gmail.com', 'stat@gmail.com', 'stat@gmail.com', 'stat@gmail.com', 'asdas', '80c9ef0fb86369cd25f90af27ef53a9e', 'XZtQjE8Rse66xhHG6sSVqzyDZ', '', 3, '', '', '', '0000-00-00 00:00:00', 1, 2, '2024-01-10', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vacency`
--

CREATE TABLE `tbl_vacency` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `post` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `pax` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `date1` date NOT NULL,
  `date2` date NOT NULL,
  `archive_date` date DEFAULT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `image` varchar(50) NOT NULL,
  `type` int(1) NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_vacency`
--

INSERT INTO `tbl_vacency` (`id`, `title`, `post`, `location`, `slug`, `pax`, `content`, `date1`, `date2`, `archive_date`, `sortorder`, `status`, `image`, `type`, `meta_keywords`, `meta_description`, `added_date`) VALUES
(9, 'Asst. Laundry Manager', 'Manager', 'Kathmandu, Nepal', 'asst-laundry-manager', '1', '<p>\r\n	Bachelor</p>\r\n', '0000-00-00', '2023-08-31', '0000-00-00', 1, 1, '', 0, '', '', '2023-08-28 15:12:02'),
(10, 'Painter / Plumber', 'Painter / Plumber', 'Kathmandu, Nepal', 'painter-plumber', '1', '<p>\r\n	<span style=\"color: rgb(71, 61, 53); font-family: Roboto, sans-serif; font-size: 20px; background-color: rgb(247, 246, 246);\">Painter / Plumber</span></p>\r\n', '0000-00-00', '2023-09-22', '0000-00-00', 3, 1, '', 0, '', '', '2023-08-29 11:42:43'),
(12, 'Sales Executive', 'Sales Executive', 'patan', 'sales-executive', '1', '<p>\r\n	asdasd</p>\r\n', '0000-00-00', '2023-09-15', '0000-00-00', 2, 1, '', 0, '', '', '2023-09-03 15:03:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `source` varchar(200) NOT NULL,
  `url_type` varchar(50) NOT NULL,
  `title` longtext NOT NULL,
  `thumb_image` longtext NOT NULL,
  `url` varchar(255) NOT NULL,
  `host` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `class` varchar(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_applicants`
--
ALTER TABLE `tbl_applicants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_articles`
--
ALTER TABLE `tbl_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_conbined_news`
--
ALTER TABLE `tbl_conbined_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_configs`
--
ALTER TABLE `tbl_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_download`
--
ALTER TABLE `tbl_download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_events`
--
ALTER TABLE `tbl_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_features`
--
ALTER TABLE `tbl_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_galleries`
--
ALTER TABLE `tbl_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gallery_images`
--
ALTER TABLE `tbl_gallery_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_group_type`
--
ALTER TABLE `tbl_group_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logs_action`
--
ALTER TABLE `tbl_logs_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_mainservices`
--
ALTER TABLE `tbl_mainservices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_modules`
--
ALTER TABLE `tbl_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_nearby`
--
ALTER TABLE `tbl_nearby`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_offers`
--
ALTER TABLE `tbl_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_offer_child`
--
ALTER TABLE `tbl_offer_child`
  ADD KEY `offer_id` (`offer_id`);

--
-- Indexes for table `tbl_ota`
--
ALTER TABLE `tbl_ota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_package`
--
ALTER TABLE `tbl_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_package_sub`
--
ALTER TABLE `tbl_package_sub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_popup`
--
ALTER TABLE `tbl_popup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_room_price`
--
ALTER TABLE `tbl_room_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slideshow`
--
ALTER TABLE `tbl_slideshow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slideshows_withouttlist`
--
ALTER TABLE `tbl_slideshows_withouttlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social_networking`
--
ALTER TABLE `tbl_social_networking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subpackage_images`
--
ALTER TABLE `tbl_subpackage_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subscribers`
--
ALTER TABLE `tbl_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vacency`
--
ALTER TABLE `tbl_vacency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_applicants`
--
ALTER TABLE `tbl_applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_articles`
--
ALTER TABLE `tbl_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_conbined_news`
--
ALTER TABLE `tbl_conbined_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_configs`
--
ALTER TABLE `tbl_configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `tbl_download`
--
ALTER TABLE `tbl_download`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_events`
--
ALTER TABLE `tbl_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_features`
--
ALTER TABLE `tbl_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `tbl_galleries`
--
ALTER TABLE `tbl_galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_gallery_images`
--
ALTER TABLE `tbl_gallery_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `tbl_group_type`
--
ALTER TABLE `tbl_group_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1281;

--
-- AUTO_INCREMENT for table `tbl_logs_action`
--
ALTER TABLE `tbl_logs_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_mainservices`
--
ALTER TABLE `tbl_mainservices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tbl_modules`
--
ALTER TABLE `tbl_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;

--
-- AUTO_INCREMENT for table `tbl_nearby`
--
ALTER TABLE `tbl_nearby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_offers`
--
ALTER TABLE `tbl_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_ota`
--
ALTER TABLE `tbl_ota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_package`
--
ALTER TABLE `tbl_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_package_sub`
--
ALTER TABLE `tbl_package_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_popup`
--
ALTER TABLE `tbl_popup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_room_price`
--
ALTER TABLE `tbl_room_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tbl_slideshow`
--
ALTER TABLE `tbl_slideshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `tbl_slideshows_withouttlist`
--
ALTER TABLE `tbl_slideshows_withouttlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_social_networking`
--
ALTER TABLE `tbl_social_networking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_subpackage_images`
--
ALTER TABLE `tbl_subpackage_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `tbl_subscribers`
--
ALTER TABLE `tbl_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_vacency`
--
ALTER TABLE `tbl_vacency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
