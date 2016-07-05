-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 04 Tem 2016, 11:34:44
-- Sunucu sürümü: 10.1.10-MariaDB
-- PHP Sürümü: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `goldglass`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `con` int(4) NOT NULL,
  `ist_adi` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `l_adi` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `ppp` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`con`, `ist_adi`, `l_adi`, `ppp`, `ip`) VALUES
(1, 'WebCity Studio', 'admin', '3ec55e3c049224d3780b6a42b70fd11011215!@#$%7865****!@!%$$###', ''),
(3, 'news', 'news', '6f53690328ad845de23568599480fe6b11215!@#$%7865****!@!%$$###', ''),
(4, 'kamal Quliyev', 'kamal', 'c6c9f40900ef6c0e12a71070e62a7a2e11215!@#$%7865****!@!%$$###', ''),
(5, 'vefa', 'vefa', 'e76e24e1629f4ea722e07810fe84243f11215!@#$%7865****!@!%$$###', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(5) NOT NULL,
  `m_id` int(2) NOT NULL,
  `a_id` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `m_id`, `a_id`) VALUES
(94, 16, 1),
(93, 14, 1),
(40, 10, 3),
(50, 10, 4),
(92, 13, 1),
(91, 12, 1),
(90, 7, 1),
(89, 6, 1),
(88, 5, 1),
(87, 3, 1),
(78, 4, 5),
(95, 17, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `a_menu`
--

CREATE TABLE `a_menu` (
  `id` int(5) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `url_tag` varchar(30) CHARACTER SET utf8 NOT NULL,
  `link` varchar(40) CHARACTER SET utf8 NOT NULL,
  `sub_id` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `a_menu`
--

INSERT INTO `a_menu` (`id`, `name`, `url_tag`, `link`, `sub_id`) VALUES
(3, 'Adminlər', 'admin', '?menu=admin', 0),
(5, 'Səhifələr', 'pages', '?menu=pages', 0),
(6, 'Yuxarı', 'yuxari', '?menu=pages&tip=yuxari', 5),
(7, 'Aşağı', 'sol', '?menu=pages&tip=sol', 5),
(16, 'Yuxarı slider', 'topslider', '?menu=topslider&tip=1&p_id=1', 0),
(12, 'Məhsullar', 'product', '?menu=product', 0),
(13, 'Məhsullar', 'product', '?menu=product', 12),
(14, 'Kateqoriyalar', 'category', '?menu=category', 12),
(17, 'product_photo', 'product_photo', '?menu=product_photo', 12);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `banner`
--

CREATE TABLE `banner` (
  `id` int(4) NOT NULL,
  `l_id` tinyint(4) NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(2) NOT NULL,
  `tip` tinyint(2) NOT NULL,
  `ordering` int(4) NOT NULL,
  `date` datetime NOT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `banner`
--

INSERT INTO `banner` (`id`, `l_id`, `text`, `status`, `tip`, `ordering`, `date`, `u_id`) VALUES
(1, 1, '<p><img src="../uploads/left_blok/left_blok1.jpg" alt="" width="188" height="131" /></p>', 1, 1, 1, '2013-02-05 16:31:44', 1),
(2, 2, '<p><img src="../uploads/left_blok/left_blok1.jpg" alt="" width="188" height="131" /></p>', 1, 1, 1, '2013-02-05 16:31:44', 1),
(3, 3, '<p><img src="../uploads/left_blok/left_blok1.jpg" alt="" width="188" height="131" /></p>', 1, 1, 1, '2013-02-05 16:31:44', 1),
(4, 1, '<p><img src="../uploads/left_blok/left_blok2.jpg" alt="" width="188" height="131" /></p>', 0, 1, 1, '2013-02-05 16:32:36', 2),
(5, 2, '<p><img src="../uploads/left_blok/left_blok2.jpg" alt="" width="188" height="131" /></p>', 0, 1, 2, '2013-02-05 16:32:36', 2),
(6, 3, '<p><img src="../uploads/left_blok/left_blok2.jpg" alt="" width="188" height="131" /></p>', 0, 1, 2, '2013-02-05 16:32:36', 2),
(7, 1, '<p><img src="../uploads/left_blok/left_blok3.jpg" alt="" width="188" height="131" /></p>', 0, 1, 2, '2013-02-05 16:32:58', 3),
(8, 2, '<p><img src="../uploads/left_blok/left_blok3.jpg" alt="" width="188" height="131" /></p>', 0, 1, 2, '2013-02-05 16:32:58', 3),
(9, 3, '<p><img src="../uploads/left_blok/left_blok3.jpg" alt="" width="188" height="131" /></p>', 0, 1, 3, '2013-02-05 16:32:58', 3),
(10, 1, '<p><img src="../uploads/right_blok/right_blok1.jpg" alt="" width="192" height="171" /></p>', 0, 2, 3, '2013-02-05 16:35:35', 4),
(11, 2, '<p><img src="../uploads/right_blok/right_blok1.jpg" alt="" width="192" height="171" /></p>', 0, 2, 3, '2013-02-05 16:35:35', 4),
(12, 3, '<p><img src="../uploads/right_blok/right_blok1.jpg" alt="" width="192" height="171" /></p>', 0, 2, 3, '2013-02-05 16:35:35', 4),
(13, 1, '<p><img src="../uploads/right_blok/right_blok2.jpg" alt="" width="192" height="171" /></p>', 0, 2, 4, '2013-02-05 16:38:01', 5),
(14, 2, '<p><img src="../uploads/right_blok/right_blok2.jpg" alt="" width="192" height="171" /></p>', 0, 2, 4, '2013-02-05 16:38:01', 5),
(15, 3, '<p><img src="../uploads/right_blok/right_blok2.jpg" alt="" width="192" height="171" /></p>', 0, 2, 4, '2013-02-05 16:38:01', 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bilet`
--

CREATE TABLE `bilet` (
  `id` int(4) NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `l_id` tinyint(2) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `tip` tinyint(2) NOT NULL,
  `ordering` int(4) NOT NULL,
  `date` date NOT NULL,
  `u_id` int(4) NOT NULL,
  `url_tag` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `qiymet` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `istiqamet` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `aviakompaniya` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `klass` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `bilet`
--

INSERT INTO `bilet` (`id`, `text`, `l_id`, `status`, `tip`, `ordering`, `date`, `u_id`, `url_tag`, `title`, `keyword`, `description`, `qiymet`, `istiqamet`, `aviakompaniya`, `klass`) VALUES
(1273, '', 3, 0, 0, 2, '2015-07-16', 1, '', '', '', '', '', '', '', ''),
(1274, '<p>ftiyguhknjm huijoklnredhfuijkgnrfdhfitjg trfdhgjiovkml54r fdgvh4iurejklmfd gtrgyfduhixjkcfm rgfhduivxcjk&nbsp;ftiyguhknjm huijoklnredhfuijkgnrfdhfitjg trfdhgjiovkml54r fdgvh4iurejklmfd gtrgyfduhixjkcfm rgfhduivxcjk&nbsp;ftiyguhknjm huijoklnredhfuijkgnrfdhfitjg trfdhgjiovkml54r fdgvh4iurejklmfd gtrgyfduhixjkcfm rgfhduivxcjk&nbsp;ftiyguhknjm huijoklnredhfuijkgnrfdhfitjg trfdhgjiovkml54r fdgvh4iurejklmfd gtrgyfduhixjkcfm rgfhduivxcjk&nbsp;ftiyguhknjm huijoklnredhfuijkgnrfdhfitjg trfdhgjiovkml54r fdgvh4iurejklmfd gtrgyfduhixjkcfm rgfhduivxcjk&nbsp;</p>', 1, 0, 0, 1, '2015-07-16', 2, 'tyvuykjhbk', 'vuybhjnk', 'uyghjkn', 'ytfukgbjkn', '800', 'Azərbaycan-Türkiyə', 'khgcfnmnb ', 'hugyibhkj'),
(1272, '', 2, 0, 0, 2, '2015-07-16', 1, '', '', '', '', '', '', '', ''),
(1271, '<p>hyuhruivohrsoguvrhgvgr uvhbruv bvobf vbduv b vbfubvhfbv bovbxhfvbxjhbvhj vbfvxhbvhjxkvb bvfshvbfxhvbsoibv bvohvbiudflzbvhx vfifhaeui hbjfklgb lhgvfkljhkjgalzdhgsf ghaeuirogehiaueh haiphga guhjkfnbcjxbv hfdzjlkbvjkszf hfdzlkghjbvezdliuhj hgvbueildfzkjhv hfdllzjkcxn hdfzjkncmhfdj hsfgdjkvncmh fhdvjnckm hdfjvkncm hufgdjvkncxm hfdvjkncxm hfudvjkncxm hufidjvxkncm</p>', 1, 0, 0, 2, '2015-07-16', 1, 'gitrotbm', 'gortn', 'bngjbnd', 'iogbngjf', '600', 'Azərbaycan-Türkiyə', 'vxcjhvjbnm', 'fytguigiukjb'),
(1275, '', 2, 0, 0, 1, '2015-07-16', 2, '', '', '', '', '', '', '', ''),
(1276, '', 3, 0, 0, 1, '2015-07-16', 2, '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blog_cat`
--

CREATE TABLE `blog_cat` (
  `id` int(11) NOT NULL,
  `sub_id` int(4) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `l_id` tinyint(2) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `tip` tinyint(2) NOT NULL,
  `ordering` int(11) NOT NULL,
  `date` date NOT NULL,
  `u_id` int(11) NOT NULL,
  `url_tag` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `blog_cat`
--

INSERT INTO `blog_cat` (`id`, `sub_id`, `name`, `text`, `l_id`, `status`, `tip`, `ordering`, `date`, `u_id`, `url_tag`, `title`, `keyword`, `description`, `photo`) VALUES
(24, 0, '', '', 3, 0, 0, 10, '2015-07-31', 1, '', '', '', '', ''),
(23, 0, '', '', 2, 0, 0, 10, '2015-07-31', 1, '', '', '', '', ''),
(22, 0, 'bbbbb', '', 1, 0, 0, 10, '2015-07-31', 1, 'bbbbb', 'bbbbb', 'bbbbb', 'bbbbb', ''),
(25, 0, 'aaaaa', '', 1, 0, 0, 20, '2015-07-31', 2, 'aaaaa', '', '', '', ''),
(26, 0, '', '', 2, 0, 0, 20, '2015-07-31', 2, '', '', '', '', ''),
(27, 0, '', '', 3, 0, 0, 20, '2015-07-31', 2, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blok`
--

CREATE TABLE `blok` (
  `id` int(4) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `l_id` tinyint(2) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `tip` tinyint(2) NOT NULL,
  `ordering` int(4) NOT NULL,
  `date` date NOT NULL,
  `u_id` int(4) NOT NULL,
  `url_tag` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `text2` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkbox` int(2) NOT NULL,
  `cat_id` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `blok`
--

INSERT INTO `blok` (`id`, `name`, `text`, `l_id`, `status`, `tip`, `ordering`, `date`, `u_id`, `url_tag`, `title`, `keyword`, `description`, `text2`, `photo`, `checkbox`, `cat_id`) VALUES
(1, 'udgcvehcvbe', '<p>tfycutyfvuyugdbhed gfewyudsj, aweygsudjxkcv dfcfgdfujkbcvnfvydfjcvn &nbsp;fetysvdujcfwe gdsbjcfegsuydcj fetysdhjxbc sfygdujhb&nbsp;tfycutyfvuyugdbhed gfewyudsj, aweygsudjxkcv dfcfgdfujkbcvnfvydfjcvn &nbsp;fetysvdujcfwe gdsbjcfegsuydcj fetysdhjxbc sfygdujhb&nbsp;tfycutyfvuyugdbhed gfewyudsj, aweygsudjxkcv dfcfgdfujkbcvnfvydfjcvn &nbsp;fetysvdujcfwe gdsbjcfegsuydcj fetysdhjxbc sfygdujhb &nbsp;tfycutyfvuyugdbhed gfewyudsj, aweygsudjxkcv dfcfgdfujkbcvnfvydfjcvn &nbsp;fetysvdujcfwe gdsbjcfegsuydcj fetysdhjxbc sfygdujhbtfycutyfvuyugdbhed gfewyudsj, aweygsudjxkcv dfcfgdfujkbcvnfvydfjcvn &nbsp;fetysvdujcfwe gdsbjcfegsuydcj fetysdhjxbc sfygdujhb&nbsp;tfycutyfvuyugdbhed gfewyudsj, aweygsudjxkcv dfcfgdfujkbcvnfvydfjcvn &nbsp;fetysvdujcfwe gdsbjcfegsuydcj fetysdhjxbc sfygdujhb&nbsp;tfycutyfvuyugdbhed gfewyudsj, aweygsudjxkcv dfcfgdfujkbcvnfvydfjcvn &nbsp;fetysvdujcfwe gdsbjcfegsuydcj fetysdhjxbc sfygdujhb&nbsp;</p>', 1, 0, 0, 10, '2015-07-31', 1, ' fxuyhbjn', 'tyvubink', 'dtfuyguhi', 'drtufygubhjkn', '<p>tfycutyfvuyugdbhed gfewyudsj, aweygsudjxkcv dfcfgdfujkbcvnfvydfjcvn &nbsp;fetysvdujcfwe gdsbjcfegsuydcj fetysdhjxbc sfygdujhb</p>', 'products/816148455bb66e549f69.jpg', 0, 1),
(2, '', '', 2, 0, 0, 10, '2015-07-31', 1, '', '', '', '', '', 'products/816148455bb66e549f69.jpg', 0, 1),
(3, '', '', 3, 0, 0, 10, '2015-07-31', 1, '', '', '', '', '', 'products/816148455bb66e549f69.jpg', 0, 1),
(4, 'mkdhhfgerv uyfgreuyfg', '<p>fgeyfucgeycge cgefcyuuegcuydz gcyducgduzcgv cg uydach cvdzk hdulszich bdzkcgdzilch dzcvduzihcb caauygcha casgdcuxc hbszhdz h&nbsp;fgeyfucgeycge cgefcyuuegcuydz gcyducgduzcgv cg uydach cvdzk hdulszich bdzkcgdzilch dzcvduzihcb caauygcha casgdcuxc hbszhdz h&nbsp;fgeyfucgeycge cgefcyuuegcuydz gcyducgduzcgv cg uydach cvdzk hdulszich bdzkcgdzilch dzcvduzihcb caauygcha casgdcuxc hbszhdz h&nbsp;fgeyfucgeycge cgefcyuuegcuydz gcyducgduzcgv cg uydach cvdzk hdulszich bdzkcgdzilch dzcvduzihcb caauygcha casgdcuxc hbszhdz h&nbsp;fgeyfucgeycge cgefcyuuegcuydz gcyducgduzcgv cg uydach cvdzk hdulszich bdzkcgdzilch dzcvduzihcb caauygcha casgdcuxc hbszhdz h&nbsp;fgeyfucgeycge cgefcyuuegcuydz gcyducgduzcgv cg uydach cvdzk hdulszich bdzkcgdzilch dzcvduzihcb caauygcha casgdcuxc hbszhdz h</p>', 1, 0, 0, 20, '2015-07-31', 2, 'bcsdjh', 'bchdsjk', 'byugdc', 'cbdsukcsj', '<p>fgeyfucgeycge cgefcyuuegcuydz gcyducgduzcgv cg uydach cvdzk hdulszich bdzkcgdzilch dzcvduzihcb caauygcha casgdcuxc hbszhdz hyuedgyd 3dgwyduiedf ewyfcewica&nbsp;</p>', 'products/918668555bb669f24d4f.jpg', 0, 1),
(5, '', '', 2, 0, 0, 20, '2015-07-31', 2, '', '', '', '', '', 'products/918668555bb669f24d4f.jpg', 0, 1),
(6, '', '', 3, 0, 0, 20, '2015-07-31', 2, '', '', '', '', '', 'products/918668555bb669f24d4f.jpg', 0, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `coment`
--

CREATE TABLE `coment` (
  `id` int(6) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `text` text NOT NULL,
  `date` date NOT NULL,
  `page_id` int(2) NOT NULL,
  `mehsul_id` int(4) NOT NULL,
  `sub_id` int(4) NOT NULL,
  `s_id` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `coment`
--

INSERT INTO `coment` (`id`, `name`, `email`, `text`, `date`, `page_id`, `mehsul_id`, `sub_id`, `s_id`) VALUES
(6, 'aygun', 'vusaleehmedli42@gmail.com', 'Qiymeti diyinde zehmet olmasa', '2016-01-05', 2, 35, 0, 1),
(7, 'azad', 'muji73@mail.ru', 'salam. zehmet olmasa deyin candela pro aleksandrit lazer aparati neceyedir?', '2016-01-05', 2, 36, 0, 1),
(5, 'Arzu Aliyeva', '', 'Arendaya aparat verirsiniz? Ve ayl?g neceye? Baha oldugu ucun ala bilmirem i?leyib ayl?g ödeni? ederem tel. 0504309956', '2015-11-27', 2, 36, 0, 1),
(8, 'emin', 'kengerli.emin@mail.ru', 'salam meni maraqlqndiran mesele budur ki siz aparar ve avadanliqlarinizi muqavile ile gozellik salonlarina verirsiniz', '2016-01-05', 2, 36, 0, 1),
(9, 'Vuqar', 'vugar82@gmail.com', 'Salam.bu aparatin qiymeti neceyedir?ve hansi shertlerle verirsiz?ish prinsipini ve servisini deyerdiz mene.', '2016-01-08', 2, 37, 0, 1),
(10, 'Melek', '1984_m@bk.ru', 'Salam qiymeti necedi bu aletin?', '2016-01-09', 2, 148, 0, 1),
(11, 'babak', 'gasanlib@mail.ru', 'salam,narahat etdiyime gore pardon  bunun son qiymetini zehmet olmasa qeyd ederdiz,240 idi son defe soruwanda,son qiymeti nece olacaq ve edednen satilirmi ve qiymeti zehmet olmasa. Babek h.', '2016-01-28', 2, 113, 0, 1),
(12, 'Amil', 'dramilaliyev28@gmail.com', 'Qiym?ti?', '2016-04-15', 2, 1, 0, 1),
(13, 'farida', 'fat.73@mail.ru', 'qiymeti', '2016-05-01', 2, 56, 0, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `email`
--

CREATE TABLE `email` (
  `id` int(4) NOT NULL,
  `s_id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `n` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `email`
--

INSERT INTO `email` (`id`, `s_id`, `email`, `tel`, `n`) VALUES
(665, 0, 'ooooo@gmail.com', '', 0),
(666, 0, 'qqqqqq@gmail.com', '', 0),
(667, 0, 'orxan.sedili@mail.ru', '', 0),
(692, 0, 'ooooo@gmail.com', '', 0),
(693, 0, 'a_ehedov@mail.ru', '', 0),
(694, 0, 'ooooo@gmail.com', '', 0),
(695, 0, 'ooooo@gmail.com', '', 0),
(696, 0, 'ooooo@gmail.com', '0558989989', 1),
(697, 0, 'qqqqqq@gmail.com', '', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gallery`
--

CREATE TABLE `gallery` (
  `id` int(4) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `tip` tinyint(2) NOT NULL,
  `s_id` int(4) NOT NULL,
  `ordering` int(5) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `u_id` int(11) NOT NULL,
  `cat_id` int(5) NOT NULL,
  `link` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `checkbox` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gallery_photo`
--

CREATE TABLE `gallery_photo` (
  `id` int(111) NOT NULL,
  `gal_id` int(111) NOT NULL,
  `img_src` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gal_cat`
--

CREATE TABLE `gal_cat` (
  `id` int(11) NOT NULL,
  `sub_id` int(4) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `l_id` tinyint(2) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `tip` tinyint(2) NOT NULL,
  `ordering` int(11) NOT NULL,
  `date` date NOT NULL,
  `u_id` int(11) NOT NULL,
  `url_tag` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `gal_cat`
--

INSERT INTO `gal_cat` (`id`, `sub_id`, `name`, `text`, `l_id`, `status`, `tip`, `ordering`, `date`, `u_id`, `url_tag`, `title`, `keyword`, `description`, `photo`) VALUES
(12, 0, '', '', 3, 0, 0, 20, '2015-07-06', 2, '', '', '', '', ''),
(11, 0, '', '', 2, 0, 0, 20, '2015-07-06', 2, '', '', '', '', ''),
(10, 0, 'sdsdsssssssdsds', '', 1, 0, 0, 20, '2015-07-06', 2, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ip_error`
--

CREATE TABLE `ip_error` (
  `ip` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `datime` datetime NOT NULL,
  `say` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `ip_error`
--

INSERT INTO `ip_error` (`ip`, `datime`, `say`) VALUES
('::1', '2016-05-11 12:37:20', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `jurnal`
--

CREATE TABLE `jurnal` (
  `id` int(4) NOT NULL,
  `u_id` int(11) NOT NULL,
  `l_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `ordering` int(4) NOT NULL,
  `name` varchar(200) NOT NULL,
  `nomre` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `langs`
--

CREATE TABLE `langs` (
  `id` int(4) NOT NULL,
  `lang` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tip` tinyint(2) NOT NULL,
  `status` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `langs`
--

INSERT INTO `langs` (`id`, `lang`, `tip`, `status`) VALUES
(1, 'az', 0, 0),
(2, 'ru', 1, 0),
(3, 'en', 0, 0),
(4, 'tr', 0, 1),
(6, 's', 0, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `linkler`
--

CREATE TABLE `linkler` (
  `id` int(4) NOT NULL,
  `u_id` int(11) NOT NULL,
  `l_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `ordering` int(4) NOT NULL,
  `name` varchar(200) NOT NULL,
  `link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

CREATE TABLE `menu` (
  `id` int(4) NOT NULL,
  `sub_id` int(4) NOT NULL,
  `l_id` tinyint(4) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(2) NOT NULL,
  `tip` tinyint(2) NOT NULL,
  `ordering` int(4) NOT NULL,
  `date` datetime NOT NULL,
  `u_id` int(11) NOT NULL,
  `url_tag` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`id`, `sub_id`, `l_id`, `name`, `text`, `status`, `tip`, `ordering`, `date`, `u_id`, `url_tag`, `title`, `keyword`, `description`, `link`, `photo`) VALUES
(772, 0, 1, 'Meyvə qabları', '', 0, 1, 1, '0000-00-00 00:00:00', 1, 'http://goldglass.info/1/category/6	', '', '', '', '', ''),
(773, 0, 2, '', '', 0, 1, 1, '0000-00-00 00:00:00', 1, '', '', '', '', '', ''),
(774, 0, 3, '', '', 0, 1, 1, '0000-00-00 00:00:00', 1, '', '', '', '', '', ''),
(775, 0, 1, 'Şirniyyat süfrəsi', '', 0, 1, 2, '0000-00-00 00:00:00', 2, '', '', '', '', '', ''),
(776, 0, 2, '', '', 0, 1, 2, '0000-00-00 00:00:00', 2, '', '', '', '', '', ''),
(777, 0, 3, '', '', 0, 1, 2, '0000-00-00 00:00:00', 2, '', '', '', '', '', ''),
(782, 0, 2, '', '', 0, 1, 3, '0000-00-00 00:00:00', 3, '', '', '', '', '', ''),
(781, 0, 1, 'Dekor', '', 0, 1, 3, '0000-00-00 00:00:00', 3, '', '', '', '', '', ''),
(783, 0, 3, '', '', 0, 1, 3, '0000-00-00 00:00:00', 3, '', '', '', '', '', ''),
(793, 0, 1, 'Çilçıraqlar', '', 0, 1, 5, '0000-00-00 00:00:00', 5, '', '', '', '', '', ''),
(792, 0, 3, '', '', 0, 1, 4, '0000-00-00 00:00:00', 4, '', '', '', '', '', ''),
(791, 0, 2, '', '', 0, 1, 4, '0000-00-00 00:00:00', 4, '', '', '', '', '', ''),
(790, 0, 1, 'Yemək və çay süfrəsi', '', 0, 1, 4, '0000-00-00 00:00:00', 4, '', '', '', '', '', ''),
(794, 0, 2, '', '', 0, 1, 5, '0000-00-00 00:00:00', 5, '', '', '', '', '', ''),
(795, 0, 3, '', '', 0, 1, 5, '0000-00-00 00:00:00', 5, '', '', '', '', '', ''),
(796, 2, 1, 'Konfet qabları', '', 0, 1, 6, '0000-00-00 00:00:00', 6, '	http://goldglass.info/1/category/11', '', '', '', '', ''),
(797, 2, 2, '', '', 0, 1, 6, '0000-00-00 00:00:00', 6, '', '', '', '', '', ''),
(798, 2, 3, '', '', 0, 1, 6, '0000-00-00 00:00:00', 6, '', '', '', '', '', ''),
(799, 2, 1, 'Ləpə qabları', '', 0, 1, 7, '0000-00-00 00:00:00', 7, 'http://goldglass.info/1/category/12', '', '', '', '', ''),
(800, 2, 2, '', '', 0, 1, 7, '0000-00-00 00:00:00', 7, '', '', '', '', '', ''),
(801, 2, 3, '', '', 0, 1, 7, '0000-00-00 00:00:00', 7, '', '', '', '', '', ''),
(802, 2, 1, 'Tort qabları', '', 0, 0, 8, '0000-00-00 00:00:00', 8, '', '', '', '', '', ''),
(803, 2, 2, '', '', 0, 0, 8, '0000-00-00 00:00:00', 8, '', '', '', '', '', ''),
(804, 2, 3, '', '', 0, 0, 8, '0000-00-00 00:00:00', 8, '', '', '', '', '', ''),
(805, 3, 1, 'Dekorativ qablar', '', 0, 1, 9, '0000-00-00 00:00:00', 9, 'http://goldglass.info/1/category/14', '', '', '', '', ''),
(806, 3, 2, '', '', 0, 1, 9, '0000-00-00 00:00:00', 9, '', '', '', '', '', ''),
(807, 3, 3, '', '', 0, 1, 9, '0000-00-00 00:00:00', 9, '', '', '', '', '', ''),
(808, 3, 1, 'Saatlar', '', 0, 1, 10, '0000-00-00 00:00:00', 10, '	http://goldglass.info/1/category/1', '', '', '', '', ''),
(809, 3, 2, '', '', 0, 1, 10, '0000-00-00 00:00:00', 10, '', '', '', '', '', ''),
(810, 3, 3, '', '', 0, 1, 10, '0000-00-00 00:00:00', 10, '', '', '', '', '', ''),
(811, 3, 1, 'Şamdanlar', '', 0, 1, 11, '0000-00-00 00:00:00', 11, 'http://goldglass.info/1/category/16', '', '', '', '', ''),
(812, 3, 2, '', '', 0, 1, 11, '0000-00-00 00:00:00', 11, '', '', '', '', '', ''),
(813, 3, 3, '', '', 0, 1, 11, '0000-00-00 00:00:00', 11, '', '', '', '', '', ''),
(814, 3, 1, 'Vazalar', '', 0, 1, 12, '0000-00-00 00:00:00', 12, 'http://goldglass.info/1/category/17', '', '', '', '', ''),
(815, 3, 2, '', '', 0, 1, 12, '0000-00-00 00:00:00', 12, '', '', '', '', '', ''),
(816, 3, 3, '', '', 0, 1, 12, '0000-00-00 00:00:00', 12, '', '', '', '', '', ''),
(817, 4, 1, 'Bakallar', '', 0, 1, 13, '0000-00-00 00:00:00', 13, '	http://goldglass.info/1/category/18', '', '', '', '', ''),
(818, 4, 2, '', '', 0, 1, 13, '0000-00-00 00:00:00', 13, '', '', '', '', '', ''),
(819, 4, 3, '', '', 0, 1, 13, '0000-00-00 00:00:00', 13, '', '', '', '', '', ''),
(824, 4, 2, '', '', 0, 1, 14, '0000-00-00 00:00:00', 14, '', '', '', '', '', ''),
(823, 4, 1, 'Servislər', '', 0, 1, 14, '0000-00-00 00:00:00', 14, 'http://goldglass.info/1/category/19', '', '', '', '', ''),
(825, 4, 3, '', '', 0, 1, 14, '0000-00-00 00:00:00', 14, '', '', '', '', '', ''),
(826, 4, 1, 'Stəkanlar', '', 0, 1, 15, '0000-00-00 00:00:00', 15, '', '', '', '', '', ''),
(827, 4, 2, '', '', 0, 1, 15, '0000-00-00 00:00:00', 15, '', '', '', '', '', ''),
(828, 4, 3, '', '', 0, 1, 15, '0000-00-00 00:00:00', 15, '', '', '', '', '', ''),
(836, 0, 2, '', '', 0, 2, 16, '0000-00-00 00:00:00', 16, '', '', '', '', '', ''),
(835, 0, 1, 'Information', '', 0, 2, 16, '0000-00-00 00:00:00', 16, '', '', '', '', '', ''),
(837, 0, 3, '', '', 0, 2, 16, '0000-00-00 00:00:00', 16, '', '', '', '', '', ''),
(838, 0, 1, 'customer services', '', 0, 2, 17, '0000-00-00 00:00:00', 17, '', '', '', '', '', ''),
(839, 0, 2, '', '', 0, 2, 17, '0000-00-00 00:00:00', 17, '', '', '', '', '', ''),
(840, 0, 3, '', '', 0, 2, 17, '0000-00-00 00:00:00', 17, '', '', '', '', '', ''),
(866, 0, 2, '', '', 0, 2, 26, '0000-00-00 00:00:00', 26, '', '', '', '', '', ''),
(865, 0, 1, 'Extras', '', 0, 2, 26, '0000-00-00 00:00:00', 26, '', '', '', '', '', ''),
(844, 0, 1, 'My account', '', 0, 2, 19, '0000-00-00 00:00:00', 19, '', '', '', '', '', ''),
(845, 0, 2, '', '', 0, 2, 19, '0000-00-00 00:00:00', 19, '', '', '', '', '', ''),
(846, 0, 3, '', '', 0, 2, 19, '0000-00-00 00:00:00', 19, '', '', '', '', '', ''),
(847, 16, 1, 'haqqimizda', '', 0, 2, 20, '0000-00-00 00:00:00', 20, '', '', '', '', '', ''),
(848, 16, 2, '', '', 0, 2, 20, '0000-00-00 00:00:00', 20, '', '', '', '', '', ''),
(849, 16, 3, '', '', 0, 2, 20, '0000-00-00 00:00:00', 20, '', '', '', '', '', ''),
(850, 16, 1, 'Gizlilik siyasəti', '', 0, 2, 21, '0000-00-00 00:00:00', 21, '', '', '', '', '', ''),
(851, 16, 2, '', '', 0, 2, 21, '0000-00-00 00:00:00', 21, '', '', '', '', '', ''),
(852, 16, 3, '', '', 0, 2, 21, '0000-00-00 00:00:00', 21, '', '', '', '', '', ''),
(853, 16, 1, 'Qaydalar və şərtlər', '', 0, 2, 22, '0000-00-00 00:00:00', 22, '', '', '', '', '', ''),
(854, 16, 2, '', '', 0, 2, 22, '0000-00-00 00:00:00', 22, '', '', '', '', '', ''),
(855, 16, 3, '', '', 0, 2, 22, '0000-00-00 00:00:00', 22, '', '', '', '', '', ''),
(856, 17, 1, 'Contact us', '', 0, 2, 23, '0000-00-00 00:00:00', 23, '', '', '', '', '', ''),
(857, 17, 2, '', '', 0, 2, 23, '0000-00-00 00:00:00', 23, '', '', '', '', '', ''),
(858, 17, 3, '', '', 0, 2, 23, '0000-00-00 00:00:00', 23, '', '', '', '', '', ''),
(859, 17, 1, 'Returns', '', 0, 2, 24, '0000-00-00 00:00:00', 24, '', '', '', '', '', ''),
(860, 17, 2, '', '', 0, 2, 24, '0000-00-00 00:00:00', 24, '', '', '', '', '', ''),
(861, 17, 3, '', '', 0, 2, 24, '0000-00-00 00:00:00', 24, '', '', '', '', '', ''),
(862, 17, 1, 'Site map', '', 0, 2, 25, '0000-00-00 00:00:00', 25, '', '', '', '', '', ''),
(863, 17, 2, '', '', 0, 2, 25, '0000-00-00 00:00:00', 25, '', '', '', '', '', ''),
(864, 17, 3, '', '', 0, 2, 25, '0000-00-00 00:00:00', 25, '', '', '', '', '', ''),
(867, 0, 3, '', '', 0, 2, 26, '0000-00-00 00:00:00', 26, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `olke`
--

CREATE TABLE `olke` (
  `id` int(11) NOT NULL,
  `sub_id` int(4) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `l_id` tinyint(2) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `ordering` int(11) NOT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `olke`
--

INSERT INTO `olke` (`id`, `sub_id`, `name`, `l_id`, `status`, `ordering`, `u_id`) VALUES
(27, 0, '', 3, 0, 20, 2),
(26, 0, '', 2, 0, 20, 2),
(25, 0, 'aaaaaaaaaaaaaa', 1, 0, 20, 2),
(23, 0, '', 2, 0, 10, 1),
(24, 0, '', 3, 0, 10, 1),
(22, 0, 'oooooooooooo', 1, 0, 10, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_no` int(5) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `s_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `tarix` date NOT NULL,
  `odenilecek_mebleq` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `orders`
--

INSERT INTO `orders` (`id`, `order_no`, `name`, `s_name`, `address`, `phone`, `email`, `user_id`, `tarix`, `odenilecek_mebleq`) VALUES
(12546, 86933, 'eeeee', 'eeeeeeeeeee', 'eeeeeeeeeeeee', '66666666666', 'eeeee@gmail.com', 5, '2015-08-30', 0),
(12547, 69527, 'ooooo', 'oooooo', 'oooooo', '111111111111', 'oooo@gmail.com', 6, '2015-08-30', 0),
(12548, 66681, 'ooo', 'ooo', 'ooo', '454545', 'oooo@gmail.com', 5, '2015-08-30', 0),
(12549, 55844, 'ooo', 'ooo', 'ooo', '454545', 'oooo@gmail.com', 0, '2015-08-30', 0),
(12550, 38082, 'ooo', 'ooo', 'ooo', '454545', 'oooo@gmail.com', 0, '2015-08-30', 0),
(12551, 99035, 'pppppppppp', 'ppppppppp', 'pppppppppp', '515645612', 'orxan.sedili@gmail.com', 5, '2015-08-30', 0),
(12552, 31641, 'oooooo', 'oooooooooo', 'ppppppppppppp', '5623095623', 'orxan.sedili@gmail.com', 5, '2015-08-30', 0),
(12553, 34669, 'oooooo', 'oooooooooo', 'ppppppppppppp', '5623095623', 'orxan.sedili@gmail.com', 0, '2015-08-30', 0),
(12554, 51116, 'oooooo', 'oooooooooo', 'ppppppppppppp', '5623095623', 'orxan.sedili@gmail.com', 0, '2015-08-30', 0),
(12555, 99380, 'oooooo', 'oooooooooo', 'ppppppppppppp', '5623095623', 'orxan.sedili@gmail.com', 0, '2015-08-30', 0),
(12556, 92874, 'oooooo', 'oooooooooo', 'ppppppppppppp', '5623095623', 'orxan.sedili@gmail.com', 0, '2015-08-30', 0),
(12557, 11664, 'oooooo', 'oooooooooo', 'ppppppppppppp', '5623095623', 'orxan.sedili@gmail.com', 0, '2015-08-30', 0),
(12558, 35436, 'oooooo', 'oooooooooo', 'ppppppppppppp', '5623095623', 'orxan.sedili@gmail.com', 0, '2015-08-30', 0),
(12559, 31004, 'oooooo', 'oooooooooo', 'ppppppppppppp', '5623095623', 'orxan.sedili@gmail.com', 0, '2015-08-30', 0),
(12560, 78953, 'oooooo', 'oooooooooo', 'ppppppppppppp', '5623095623', 'orxan.sedili@gmail.com', 0, '2015-08-30', 0),
(12561, 27194, 'oooooo', 'oooooooooo', 'ppppppppppppp', '5623095623', 'orxan.sedili@gmail.com', 0, '2015-08-30', 0),
(12562, 87274, 'orxan', 'sedili', 'refnjdkmcx', '4548941653', 'orxan.sedili@gmail.com', 5, '2015-08-30', 0),
(12563, 51923, 'orxan', 'sedili', 'refnjdkmcx', '4548941653', 'orxan.sedili@gmail.com', 0, '2015-08-30', 0),
(12564, 82419, 'orxan', 'sedili', 'refnjdkmcx', '4548941653', 'orxan.sedili@gmail.com', 0, '2015-08-30', 2526),
(12565, 37976, 'orxan', 'sedili', 'oooooo', '0558888888', 'orxan.sedili@gmail.com', 6, '2015-08-30', 4760),
(12566, 19721, 'orxan', 'sedili', 'oooooo', '0558888888', 'orxan.sedili@gmail.com', 5, '2015-08-30', 4760),
(12567, 89098, 'oooo', 'oooooo', 'oooooo', '79845210', 'oooo@gmail.com', 0, '2015-08-30', 0),
(12568, 99856, 'orxan', 'sedili', 'uuuuu', '13131313', 'orxan.sedili@mail.ru', 6, '2015-08-30', 4760),
(12569, 54778, 'orxan', 'sedili', 'kokokkokok', '87878777', 'orxan.sedili@gmail.com', 14, '2015-09-09', 1739),
(12570, 86393, 'orxan', 'sedili', 'lplpl', '9898898', 'orxan.sedili@gmail.com', 14, '2015-09-09', 0),
(12571, 49056, 'htbm,l', 'ugivrnejkdf', 'njkdfml', '545456454', 'oooo@gmail.com', 14, '2015-09-09', 0),
(12572, 14681, 'ooooo', 'oooooo', 'ooooooo', '77777777', 'ooooo@gmail.com', 14, '2015-09-09', 8420),
(12573, 85126, 'ruslan', 'axundov', 'akdbahdjadhnjk', '3414646456', 'admin@arash-holding.az', 15, '2015-09-10', 0),
(12574, 26628, 'uhhuhh', 'ijiji', 'hbhjbk', '7878787', 'oooo@gmail.com', 14, '2015-09-10', 1684),
(12575, 88564, 'sfsdfs', 'sdfsfsdf', 'sfsdfsdf', '1315613456358', 'admin@arash-holding.az', 15, '2015-09-11', 0),
(12576, 80820, 'orxan', 'sedili', 'oooooo', '888888', 'orxan.sedili@gmail.com', 5, '2015-09-15', 0),
(12577, 34175, 'orxan', 'sedili', 'uuuuuuuu', '1111111111', 'oooo@gmail.com', 5, '2015-09-15', 1007),
(12578, 57501, 'orxan', 'sedili', 'oooooo', '78787787', 'orxan.sedili@gmail.com', 5, '2015-09-15', 22),
(12579, 52111, 'orxan', 'oooooo', 'oooooo', '878778', 'orxan.sedili@mail.ru', 5, '2015-09-15', 787),
(12580, 67438, 'ALishan', 'Mirze', 'asdasd', '2541222', 'alishan_m@yahoo.com', 8, '2015-09-17', 44);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `order_product`
--

CREATE TABLE `order_product` (
  `id` int(7) NOT NULL,
  `o_id` int(11) NOT NULL,
  `p_id` int(4) NOT NULL,
  `say` tinyint(3) NOT NULL,
  `qiymet` float NOT NULL,
  `s_id` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `order_product`
--

INSERT INTO `order_product` (`id`, `o_id`, `p_id`, `say`, `qiymet`, `s_id`) VALUES
(13506, 0, 1, 2, 0, 1),
(13507, 0, 2, 2, 0, 1),
(13508, 0, 1, 4, 55, 1),
(13509, 0, 2, 2, 787, 1),
(13510, 0, 1, 1, 55, 1),
(13511, 0, 1, 1, 55, 1),
(13512, 0, 1, 1, 55, 1),
(13513, 0, 1, 1, 55, 1),
(13514, 0, 1, 1, 55, 1),
(13515, 0, 1, 1, 55, 1),
(13516, 0, 1, 1, 55, 1),
(13517, 0, 1, 1, 55, 1),
(13518, 0, 1, 1, 55, 1),
(13519, 0, 1, 1, 55, 1),
(13520, 0, 1, 1, 55, 1),
(13521, 0, 1, 1, 55, 1),
(13522, 0, 1, 1, 55, 1),
(13523, 12561, 1, 1, 55, 1),
(13524, 12562, 1, 3, 55, 1),
(13525, 12562, 2, 3, 787, 1),
(13526, 12563, 1, 3, 55, 1),
(13527, 12563, 2, 3, 787, 1),
(13528, 12564, 1, 3, 55, 1),
(13529, 12564, 2, 3, 787, 1),
(13530, 12565, 1, 15, 55, 1),
(13531, 12565, 2, 5, 787, 1),
(13532, 12566, 1, 15, 55, 1),
(13533, 12566, 2, 5, 787, 1),
(13534, 12568, 1, 15, 55, 1),
(13535, 12568, 2, 5, 787, 1),
(13536, 12569, 1, 3, 55, 1),
(13537, 12569, 2, 2, 787, 1),
(13538, 12570, 1, 2, 0, 1),
(13539, 12570, 2, 1, 0, 1),
(13540, 12571, 1, 10, 0, 1),
(13541, 12571, 2, 10, 0, 1),
(13542, 12572, 1, 10, 55, 1),
(13543, 12572, 2, 10, 787, 1),
(13544, 12573, 2, 1, 0, 1),
(13545, 12574, 1, 2, 55, 1),
(13546, 12574, 2, 2, 787, 1),
(13547, 12575, 12, 1, 0, 1),
(13548, 12576, 56, 5, 0, 1),
(13549, 12576, 1, 4, 0, 1),
(13550, 12577, 1, 10, 22, 1),
(13551, 12577, 2, 1, 787, 1),
(13552, 12578, 1, 1, 22, 1),
(13553, 12579, 2, 1, 787, 1),
(13554, 12580, 1, 2, 22, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `otel`
--

CREATE TABLE `otel` (
  `id` int(4) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `l_id` tinyint(2) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `tip` tinyint(2) NOT NULL,
  `ordering` int(4) NOT NULL,
  `date` date NOT NULL,
  `u_id` int(4) NOT NULL,
  `cat_id` int(4) NOT NULL,
  `url_tag` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `text2` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkbox` int(2) NOT NULL,
  `ulduz` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `qidalanma` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `otaq_tipi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `otaq_kv` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `qiymet` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `olke` int(6) NOT NULL,
  `seher` int(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `otel`
--

INSERT INTO `otel` (`id`, `name`, `text`, `l_id`, `status`, `tip`, `ordering`, `date`, `u_id`, `cat_id`, `url_tag`, `title`, `keyword`, `description`, `text2`, `photo`, `checkbox`, `ulduz`, `qidalanma`, `otaq_tipi`, `otaq_kv`, `qiymet`, `olke`, `seher`) VALUES
(1, 'njdfnjk', '<p>bgjbnjkegnrjgc jrghjkhj hgfjdsh hgbjdgsbsfjhbhvf bdhjsbfvhsfb bgbhtrkgbsh gtbhgtksrbghkjrsbg gbrtshjgvbhgbvgjhskrb gbrshjkgbsrhgj bghjkbsjbg hrjesbghserjfbhjrkf bshjkbdk&nbsp;bgjbnjkegnrjgc jrghjkhj hgfjdsh hgbjdgsbsfjhbhvf bdhjsbfvhsfb bgbhtrkgbsh gtbhgtksrbghkjrsbg gbrtshjgvbhgbvgjhskrb gbrshjkgbsrhgj bghjkbsjbg hrjesbghserjfbhjrkf bshjkbdk&nbsp;bgjbnjkegnrjgc jrghjkhj hgfjdsh hgbjdgsbsfjhbhvf bdhjsbfvhsfb bgbhtrkgbsh gtbhgtksrbghkjrsbg gbrtshjgvbhgbvgjhskrb gbrshjkgbsrhgj bghjkbsjbg hrjesbghserjfbhjrkf bshjkbdk</p>', 1, 0, 0, 1, '2015-07-31', 1, 1, 'lkldfkg', 'mgkmbdgg', 'gkldmkl', 'gnfjnbkgjsnjks', '<p>bgjbnjkegnrjgc jrghjkhj hgfjdsh hgbjdgsbsfjhbhvf bdhjsbfvhsfb bgbhtrkgbsh gtbhgtksrbghkjrsbg gbrtshjgvbhgbvgjhskrb&nbsp;</p>', '', 1, '4', '5', 'mtkrgmtrklm', '55', '222', 1, 1),
(2, '', '', 2, 0, 0, 1, '2015-07-31', 1, 1, '', '', '', '', '', '', 1, '', '', '', '', '', 1, 1),
(3, '', '', 3, 0, 0, 1, '2015-07-31', 1, 1, '', '', '', '', '', '', 1, '', '', '', '', '', 1, 1),
(4, 'jeroighrguvh', '<p>nbfhbvjdkbdjkvbbvd dfvjkdnvjkdv vdndkvndjkljdb vkbvjhfdbvdjl dfjkvnkjlnvjkdflbv vndfjxkvb lbfdxchbdfsjzx &nbsp;nbfhbvjdkbdjkvbbvd dfvjkdnvjkdv vdndkvndjkljdb vkbvjhfdbvdjl dfjkvnkjlnvjkdflbv vndfjxkvb lbfdxchbdfsjzx &nbsp;nbfhbvjdkbdjkvbbvd dfvjkdnvjkdv vdndkvndjkljdb vkbvjhfdbvdjl dfjkvnkjlnvjkdflbv vndfjxkvb lbfdxchbdfsjzx &nbsp;nbfhbvjdkbdjkvbbvd dfvjkdnvjkdv vdndkvndjkljdb vkbvjhfdbvdjl dfjkvnkjlnvjkdflbv vndfjxkvb lbfdxchbdfsjzx &nbsp;nbfhbvjdkbdjkvbbvd dfvjkdnvjkdv vdndkvndjkljdb vkbvjhfdbvdjl dfjkvnkjlnvjkdflbv vndfjxkvb lbfdxchbdfsjzx &nbsp;nbfhbvjdkbdjkvbbvd dfvjkdnvjkdv vdndkvndjkljdb vkbvjhfdbvdjl dfjkvnkjlnvjkdflbv vndfjxkvb lbfdxchbdfsjzx &nbsp;nbfhbvjdkbdjkvbbvd dfvjkdnvjkdv vdndkvndjkljdb vkbvjhfdbvdjl dfjkvnkjlnvjkdflbv vndfjxkvb lbfdxchbdfsjzx&nbsp;</p>', 1, 0, 0, 2, '2015-07-31', 2, 1, 'mlmbr;', 'burghrui', 'nvjnvrjkn', 'njkgfnfjkn', '<p>nbfhbvjdkbdjkvbbvd dfvjkdnvjkdv vdndkvndjkljdb vkbvjhfdbvdjl dfjkvnkjlnvjkdflbv vndfjxkvb lbfdxchbdfsjzx eifgdicbdkcnbchjksdc bskj</p>', '', 1, '2', 'fvjf vk', 'lmlr;mv ', '555', '4545', 1, 1),
(5, '', '', 2, 0, 0, 2, '2015-07-31', 2, 1, '', '', '', '', '', '', 1, '', '', '', '', '', 1, 1),
(6, '', '', 3, 0, 0, 2, '2015-07-31', 2, 1, '', '', '', '', '', '', 1, '', '', '', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `otel_cat`
--

CREATE TABLE `otel_cat` (
  `id` int(11) NOT NULL,
  `sub_id` int(4) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `l_id` tinyint(2) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `tip` tinyint(2) NOT NULL,
  `ordering` int(11) NOT NULL,
  `date` date NOT NULL,
  `u_id` int(11) NOT NULL,
  `url_tag` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `otel_cat`
--

INSERT INTO `otel_cat` (`id`, `sub_id`, `name`, `text`, `l_id`, `status`, `tip`, `ordering`, `date`, `u_id`, `url_tag`, `title`, `keyword`, `description`, `photo`) VALUES
(17, 0, '', '', 2, 0, 0, 10, '2015-07-30', 1, '', '', '', '', 'products/344875255b9bf158a2d7.jpg'),
(16, 0, 'aaaaa', '', 1, 0, 0, 10, '2015-07-30', 1, 'aaaaa', 'aaaaa', 'aaaaa', 'aaaaa', 'products/344875255b9bf158a2d7.jpg'),
(18, 0, '', '', 3, 0, 0, 10, '2015-07-30', 1, '', '', '', '', 'products/344875255b9bf158a2d7.jpg'),
(19, 0, 'bbbbb', '', 1, 0, 0, 20, '2015-07-31', 2, 'bbbbb', 'bbbbb', 'bbbbb', 'bbbbb', ''),
(20, 0, '', '', 2, 0, 0, 20, '2015-07-31', 2, '', '', '', '', ''),
(21, 0, '', '', 3, 0, 0, 20, '2015-07-31', 2, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `otel_photo`
--

CREATE TABLE `otel_photo` (
  `id` int(4) NOT NULL,
  `u_id` int(11) NOT NULL,
  `l_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `ordering` int(4) NOT NULL,
  `url_tag` varchar(255) NOT NULL,
  `p_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `otel_photo`
--

INSERT INTO `otel_photo` (`id`, `u_id`, `l_id`, `s_id`, `photo`, `text`, `ordering`, `url_tag`, `p_id`) VALUES
(595, 1, 0, 0, '378841 (21).jpg', '', 1, '', 1),
(596, 2, 0, 0, '852961 (26).jpg', '', 2, '', 2),
(597, 3, 0, 0, '414581 (18).jpg', '', 3, '', 2),
(598, 4, 0, 0, '484851 (6).jpg', '', 4, '', 2),
(599, 5, 0, 0, '712871 (20).jpg', '', 5, '', 2),
(600, 6, 0, 0, '693621 (29).jpg', '', 6, '', 2),
(601, 7, 0, 0, '464531 (19).jpg', '', 7, '', 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product`
--

CREATE TABLE `product` (
  `id` int(4) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL,
  `l_id` tinyint(2) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `tip` tinyint(2) NOT NULL,
  `ordering` int(4) NOT NULL,
  `date` date NOT NULL,
  `u_id` int(4) NOT NULL,
  `cat_id` int(4) NOT NULL,
  `url_tag` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `text2` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkbox` int(2) NOT NULL,
  `qiymet` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `qiymet2` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `product`
--

INSERT INTO `product` (`id`, `name`, `text`, `l_id`, `status`, `tip`, `ordering`, `date`, `u_id`, `cat_id`, `url_tag`, `title`, `keyword`, `description`, `text2`, `photo`, `checkbox`, `qiymet`, `qiymet2`) VALUES
(2834, 'Konfet Qabı,Meyvə Qabı- Azura', '', 1, 0, 0, 0, '0000-00-00', 132, 6, '', '', '', 'Goldglass', '', '', 1, '12', '13'),
(2836, 'Konfet Qabı -Kroks', '', 1, 0, 0, 0, '0000-00-00', 135, 11, '', '', '', '', '', '', 1, '', ''),
(2837, 'Meyvə Qabı- Cevel', '', 1, 0, 0, 0, '0000-00-00', 136, 6, '', '', '', '', '', '', 1, '', ''),
(2838, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 137, 17, '', '', '', 'Goldglass', '', '', 0, '9azn', '21'),
(2840, 'Kül Qabı- Steqes', '', 1, 0, 0, 0, '0000-00-00', 139, 8, '', '', '', 'Goldglass', '', '', 0, '11', '12'),
(2841, 'Konfet Qabı- İmperial', '', 1, 0, 0, 0, '0000-00-00', 140, 11, '', '', '', '', '', '', 1, '', ''),
(2842, 'Konfet Qabı-Damora', '', 1, 0, 0, 0, '0000-00-00', 141, 11, '', '', '', '', '', '', 1, '', ''),
(2843, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 142, 0, '', '', '', '', '', '', 0, '', ''),
(2844, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 142, 0, '', '', '', '', '', '', 0, '', ''),
(2845, 'Konfet Qabı- Azar', '', 1, 0, 0, 0, '0000-00-00', 143, 0, '', '', '', '', '', '', 0, '', ''),
(2846, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 144, 0, '', '', '', '', '', '', 0, '', ''),
(2847, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 144, 0, '', '', '', '', '', '', 0, '', ''),
(2848, 'Konfet Qabı- Eksension', '', 1, 0, 0, 0, '0000-00-00', 145, 0, '', '', '', '', '', '', 0, '', ''),
(2849, 'Konfet Qabı- Azar', '', 1, 0, 0, 0, '0000-00-00', 146, 0, '', '', '', '', '', '', 0, '', ''),
(2850, 'Konfet Qabı- Davora', '', 1, 0, 0, 0, '0000-00-00', 147, 0, '', '', '', '', '', '', 0, '', ''),
(2851, 'Azar', '', 1, 0, 0, 0, '0000-00-00', 148, 0, '', '', '', '', '', '', 0, '', ''),
(2852, 'Azar', '', 1, 0, 0, 0, '0000-00-00', 149, 0, '', '', '', '', '', '', 0, '', ''),
(2853, 'Konfet Qabı- Eonox', '', 1, 0, 0, 0, '0000-00-00', 150, 0, '', '', '', '', '', '', 0, '', ''),
(2854, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 151, 0, '', '', '', '', '', '', 0, '', ''),
(2855, 'Meyvə Qabı- İmperial', '', 1, 0, 0, 0, '0000-00-00', 152, 0, '', '', '', '', '', '', 0, '', ''),
(2856, 'Konfet Qabı- İmperial', '', 1, 0, 0, 0, '0000-00-00', 153, 0, '', '', '', '', '', '', 0, '', ''),
(2857, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 154, 0, '', '', '', '', '', '', 0, '', ''),
(2858, 'Konfet qabı- Cevel', '', 1, 0, 0, 0, '0000-00-00', 155, 0, '', '', '', '', '', '', 0, '', ''),
(2859, 'Meyvə Qabı- Eonox', '', 1, 0, 0, 0, '0000-00-00', 156, 0, '', '', '', '', '', '', 0, '', ''),
(2860, 'Meyvə Qabı- Lumina', '', 1, 0, 0, 0, '0000-00-00', 157, 0, '', '', '', '', '', '', 0, '', ''),
(2861, 'Servis', '', 1, 0, 0, 0, '0000-00-00', 158, 0, '', '', '', '', '', '', 0, '', ''),
(2862, 'Finessa', '', 1, 0, 0, 0, '0000-00-00', 158, 0, '', '', '', '', '', '', 0, '', ''),
(2863, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 159, 0, '', '', '', '', '', '', 0, '', ''),
(2864, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 160, 0, '', '', '', '', '', '', 0, '', ''),
(2865, 'Vaza- Nova', '', 1, 0, 0, 0, '0000-00-00', 160, 0, '', '', '', '', '', '', 0, '', ''),
(2866, 'Meyvə Qabı- Ekspresion', '', 1, 0, 0, 0, '0000-00-00', 162, 0, '', '', '', '', '', '', 0, '', ''),
(2867, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 163, 0, '', '', '', '', '', '', 0, '', ''),
(2868, 'Meyvə Qabı - Eginox ', '', 1, 0, 0, 0, '0000-00-00', 164, 0, '', '', '', '', '', '', 0, '', ''),
(2869, 'Meyvə Qabı- Gemeni', '', 1, 0, 0, 0, '0000-00-00', 165, 0, '', '', '', '', '', '', 0, '', ''),
(2870, 'Konfet Qabı- Gemeni', '', 1, 0, 0, 0, '0000-00-00', 167, 0, '', '', '', '', '', '', 0, '', ''),
(2871, 'meyvə qabı', '', 1, 0, 0, 0, '0000-00-00', 168, 0, '', '', '', '', '', '', 0, '', ''),
(2872, 'meyvə qabı', '', 1, 0, 0, 0, '0000-00-00', 168, 0, '', '', '', '', '', '', 0, '', ''),
(2873, 'Meyvə Qabı- Gemeni', '', 1, 0, 0, 0, '0000-00-00', 170, 0, '', '', '', '', '', '', 0, '', ''),
(2874, 'Meyvə Qabı- Diamond', '', 1, 0, 0, 0, '0000-00-00', 171, 0, '', '', '', '', '', '', 0, '', ''),
(2875, 'Meyvə Qabı- Sieqes', '', 1, 0, 0, 0, '0000-00-00', 172, 0, '', '', '', '', '', '', 0, '', ''),
(2876, 'Meyvə Qabı- Steqes', '', 1, 0, 0, 0, '0000-00-00', 173, 0, '', '', '', '', '', '', 0, '', ''),
(2877, 'Servis', '', 1, 0, 0, 0, '0000-00-00', 174, 0, '', '', '', '', '', '', 0, '', ''),
(2878, 'Meridiyan', '', 1, 0, 0, 0, '0000-00-00', 174, 0, '', '', '', '', '', '', 0, '', ''),
(2879, 'Ləpə Qabı- Meridian', '', 1, 0, 0, 0, '0000-00-00', 175, 0, '', '', '', '', '', '', 0, '', ''),
(2880, 'Ləpə Qabı-Meridian', '', 1, 0, 0, 0, '0000-00-00', 176, 0, '', '', '', '', '', '', 0, '', ''),
(2881, 'Ləpə Qabı- Bronza', '', 1, 0, 0, 0, '0000-00-00', 177, 0, '', '', '', '', '', '', 0, '', ''),
(2882, 'Trapez vaza', '', 1, 0, 0, 0, '0000-00-00', 179, 0, '', '', '', '', '', '', 0, '', ''),
(2883, 'Konfet qabı- Cevel', '', 1, 0, 0, 0, '0000-00-00', 181, 0, '', '', '', '', '', '', 0, '', ''),
(2884, 'Meyvə Qabı- Cevel', '', 1, 0, 0, 0, '0000-00-00', 182, 0, '', '', '', '', '', '', 0, '', ''),
(2885, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 183, 0, '', '', '', '', '', '', 0, '', ''),
(2886, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 184, 0, '', '', '', '', '', '', 0, '', ''),
(2887, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 185, 0, '', '', '', '', '', '', 0, '', ''),
(2888, 'Konfet Qabı - Cevel', '', 1, 0, 0, 0, '0000-00-00', 186, 0, '', '', '', '', '', '', 0, '', ''),
(2889, 'Konfet Qabı - Exsel', '', 1, 0, 0, 0, '0000-00-00', 187, 0, '', '', '', '', '', '', 0, '', ''),
(2890, 'Şirniyyat Qabı- Cevel', '', 1, 0, 0, 0, '0000-00-00', 188, 0, '', '', '', '', '', '', 0, '', ''),
(2891, 'Cevel duz qabı', '', 1, 0, 0, 0, '0000-00-00', 189, 0, '', '', '', '', '', '', 0, '', ''),
(2892, 'Cevel kül qabı', '', 1, 0, 0, 0, '0000-00-00', 191, 0, '', '', '', '', '', '', 0, '', ''),
(2893, 'Saat', '', 1, 0, 0, 0, '0000-00-00', 192, 0, '', '', '', '', '', '', 0, '', ''),
(2894, 'ULDUZ', '', 1, 0, 0, 0, '0000-00-00', 192, 0, '', '', '', '', '', '', 0, '', ''),
(2895, 'Zvezda Şamdan', '', 1, 0, 0, 0, '0000-00-00', 193, 0, '', '', '', '', '', '', 0, '', ''),
(2896, 'Kabaret Şamdan', '', 1, 0, 0, 0, '0000-00-00', 194, 0, '', '', '', '', '', '', 0, '', ''),
(2897, 'Cevel qənd qabı', '', 1, 0, 0, 0, '0000-00-00', 195, 0, '', '', '', '', '', '', 0, '', ''),
(2898, 'Şamdan', '', 1, 0, 0, 0, '0000-00-00', 196, 0, '', '', '', '', '', '', 0, '', ''),
(2899, 'Kabaret', '', 1, 0, 0, 0, '0000-00-00', 196, 0, '', '', '', '', '', '', 0, '', ''),
(2900, 'Eqinox Şamdan', '', 1, 0, 0, 0, '0000-00-00', 197, 0, '', '', '', '', '', '', 0, '', ''),
(2901, 'Saat', '', 1, 0, 0, 0, '0000-00-00', 198, 0, '', '', '', '', '', '', 0, '', ''),
(2902, 'Saat', '', 1, 0, 0, 0, '0000-00-00', 198, 0, '', '', '', '', '', '', 0, '', ''),
(2903, 'Servis', '', 1, 0, 0, 0, '0000-00-00', 199, 0, '', '', '', '', '', '', 0, '', ''),
(2904, 'Harper ', '', 1, 0, 0, 0, '0000-00-00', 199, 0, '', '', '', '', '', '', 0, '', ''),
(2905, 'Harper fletna Bakal', '', 1, 0, 0, 0, '0000-00-00', 200, 0, '', '', '', '', '', '', 0, '', ''),
(2906, 'Harper fujer', '', 1, 0, 0, 0, '0000-00-00', 201, 0, '', '', '', '', '', '', 0, '', ''),
(2907, 'Harper fletna ', '', 1, 0, 0, 0, '0000-00-00', 202, 0, '', '', '', '', '', '', 0, '', ''),
(2908, 'Harper fletna ', '', 1, 0, 0, 0, '0000-00-00', 203, 0, '', '', '', '', '', '', 0, '', ''),
(2909, 'Su stəkanı', '', 1, 0, 0, 0, '0000-00-00', 204, 0, '', '', '', '', '', '', 0, '', ''),
(2910, 'Araq stəkanı -fuyer', '', 1, 0, 0, 0, '0000-00-00', 205, 0, '', '', '', '', '', '', 0, '', ''),
(2911, 'Eru martini', '', 1, 0, 0, 0, '0000-00-00', 206, 0, '', '', '', '', '', '', 0, '', ''),
(2912, 'Aulid  juver ', '', 1, 0, 0, 0, '0000-00-00', 207, 0, '', '', '', '', '', '', 0, '', ''),
(2913, 'Eru fletna', '', 1, 0, 0, 0, '0000-00-00', 208, 0, '', '', '', '', '', '', 0, '', ''),
(2914, 'Eru fujer', '', 1, 0, 0, 0, '0000-00-00', 209, 0, '', '', '', '', '', '', 0, '', ''),
(2915, 'Alipus fujer', '', 1, 0, 0, 0, '0000-00-00', 210, 0, '', '', '', '', '', '', 0, '', ''),
(2916, 'Eru fujer', '', 1, 0, 0, 0, '0000-00-00', 211, 0, '', '', '', '', '', '', 0, '', ''),
(2917, 'Alimpus ', '', 1, 0, 0, 0, '0000-00-00', 212, 0, '', '', '', '', '', '', 0, '', ''),
(2918, 'Stəkan', '', 1, 0, 0, 0, '0000-00-00', 213, 0, '', '', '', '', '', '', 0, '', ''),
(2919, 'Stəkan', '', 1, 0, 0, 0, '0000-00-00', 213, 0, '', '', '', '', '', '', 0, '', ''),
(2920, 'Stəkan', '', 1, 0, 0, 0, '0000-00-00', 214, 0, '', '', '', '', '', '', 0, '', ''),
(2921, 'Diamono', '', 1, 0, 0, 0, '0000-00-00', 214, 0, '', '', '', '', '', '', 0, '', ''),
(2922, 'Viski stəkan', '', 1, 0, 0, 0, '0000-00-00', 215, 0, '', '', '', '', '', '', 0, '', ''),
(2923, 'Su stəkanı', '', 1, 0, 0, 0, '0000-00-00', 216, 0, '', '', '', '', '', '', 0, '', ''),
(2924, 'Araq stəkanı -fuyer', '', 1, 0, 0, 0, '0000-00-00', 217, 0, '', '', '', '', '', '', 0, '', ''),
(2925, 'Stəkan', '', 1, 0, 0, 0, '0000-00-00', 218, 0, '', '', '', '', '', '', 0, '', ''),
(2926, 'Stəkan', '', 1, 0, 0, 0, '0000-00-00', 218, 0, '', '', '', '', '', '', 0, '', ''),
(2927, 'Servis', '', 1, 0, 0, 0, '0000-00-00', 219, 0, '', '', '', '', '', '', 0, '', ''),
(2928, 'Fuyer', '', 1, 0, 0, 0, '0000-00-00', 219, 0, '', '', '', '', '', '', 0, '', ''),
(2929, ' Eru fletna ', '', 1, 0, 0, 0, '0000-00-00', 220, 0, '', '', '', '', '', '', 0, '', ''),
(2930, 'Eru fujer', '', 1, 0, 0, 0, '0000-00-00', 221, 0, '', '', '', '', '', '', 0, '', ''),
(2931, 'Eru fujer', '', 1, 0, 0, 0, '0000-00-00', 222, 0, '', '', '', '', '', '', 0, '', ''),
(2932, 'Stəkan', '', 1, 0, 0, 0, '0000-00-00', 224, 0, '', '', '', '', '', '', 0, '', ''),
(2933, 'Stəkan', '', 1, 0, 0, 0, '0000-00-00', 224, 0, '', '', '', '', '', '', 0, '', ''),
(2934, 'Viski stəkanı', '', 1, 0, 0, 0, '0000-00-00', 225, 0, '', '', '', '', '', '', 0, '', ''),
(2935, 'su qabi', '', 1, 0, 0, 0, '0000-00-00', 226, 0, '', '', '', '', '', '', 0, '', ''),
(2936, 'su qabi', '', 1, 0, 0, 0, '0000-00-00', 226, 0, '', '', '', '', '', '', 0, '', ''),
(2937, 'su qabi', '', 1, 0, 0, 0, '0000-00-00', 227, 0, '', '', '', '', '', '', 0, '', ''),
(2938, 'su qabi', '', 1, 0, 0, 0, '0000-00-00', 227, 0, '', '', '', '', '', '', 0, '', ''),
(2939, 'Su stəkanı', '', 1, 0, 0, 0, '0000-00-00', 228, 0, '', '', '', '', '', '', 0, '', ''),
(2940, 'su qabi', '', 1, 0, 0, 0, '0000-00-00', 229, 0, '', '', '', '', '', '', 0, '', ''),
(2941, 'su qabi', '', 1, 0, 0, 0, '0000-00-00', 229, 0, '', '', '', '', '', '', 0, '', ''),
(2942, 'su qabi', '', 1, 0, 0, 0, '0000-00-00', 230, 0, '', '', '', '', '', '', 0, '', ''),
(2943, 'diamont', '', 1, 0, 0, 0, '0000-00-00', 230, 0, '', '', '', '', '', '', 0, '', ''),
(2944, 'su qabi', '', 1, 0, 0, 0, '0000-00-00', 231, 0, '', '', '', '', '', '', 0, '', ''),
(2945, 'diamont', '', 1, 0, 0, 0, '0000-00-00', 231, 0, '', '', '', '', '', '', 0, '', ''),
(2946, 'su qabi', '', 1, 0, 0, 0, '0000-00-00', 232, 0, '', '', '', '', '', '', 0, '', ''),
(2947, 'diamont', '', 1, 0, 0, 0, '0000-00-00', 232, 0, '', '', '', '', '', '', 0, '', ''),
(2948, 'su qabi', '', 1, 0, 0, 0, '0000-00-00', 233, 0, '', '', '', '', '', '', 0, '', ''),
(2949, 'diamont', '', 1, 0, 0, 0, '0000-00-00', 233, 0, '', '', '', '', '', '', 0, '', ''),
(2950, 'su qabi', '', 1, 0, 0, 0, '0000-00-00', 234, 0, '', '', '', '', '', '', 0, '', ''),
(2951, 'diamont', '', 1, 0, 0, 0, '0000-00-00', 234, 0, '', '', '', '', '', '', 0, '', ''),
(2952, 'Servis', '', 1, 0, 0, 0, '0000-00-00', 235, 0, '', '', '', '', '', '', 0, '', ''),
(2953, 'Diamono', '', 1, 0, 0, 0, '0000-00-00', 235, 0, '', '', '', '', '', '', 0, '', ''),
(2954, 'Diamont fletna', '', 1, 0, 0, 0, '0000-00-00', 236, 0, '', '', '', '', '', '', 0, '', ''),
(2955, ' Diamont fletna Bakal', '', 1, 0, 0, 0, '0000-00-00', 237, 0, '', '', '', '', '', '', 0, '', ''),
(2956, 'Diamont fujer', '', 1, 0, 0, 0, '0000-00-00', 238, 0, '', '', '', '', '', '', 0, '', ''),
(2957, 'Diamont fujer', '', 1, 0, 0, 0, '0000-00-00', 239, 0, '', '', '', '', '', '', 0, '', ''),
(2958, 'Diamono', '', 1, 0, 0, 0, '0000-00-00', 240, 0, '', '', '', '', '', '', 0, '', ''),
(2959, 'Aulit fujer', '', 1, 0, 0, 0, '0000-00-00', 241, 0, '', '', '', '', '', '', 0, '', ''),
(2960, 'Stəkan', '', 1, 0, 0, 0, '0000-00-00', 242, 0, '', '', '', '', '', '', 0, '', ''),
(2961, 'Stəkan', '', 1, 0, 0, 0, '0000-00-00', 242, 0, '', '', '', '', '', '', 0, '', ''),
(2962, 'Viski stəkanı- diamono', '', 1, 0, 0, 0, '0000-00-00', 243, 0, '', '', '', '', '', '', 0, '', ''),
(2963, 'Aulit fujer', '', 1, 0, 0, 0, '0000-00-00', 244, 0, '', '', '', '', '', '', 0, '', ''),
(2964, 'Aulid fujer Bakal', '', 1, 0, 0, 0, '0000-00-00', 245, 0, '', '', '', '', '', '', 0, '', ''),
(2965, 'Diamont fletna', '', 1, 0, 0, 0, '0000-00-00', 246, 0, '', '', '', '', '', '', 0, '', ''),
(2966, 'Aulid  juver ', '', 1, 0, 0, 0, '0000-00-00', 247, 0, '', '', '', '', '', '', 0, '', ''),
(2967, 'Aulit fletna', '', 1, 0, 0, 0, '0000-00-00', 248, 0, '', '', '', '', '', '', 0, '', ''),
(2968, 'Alulit fujer', '', 1, 0, 0, 0, '0000-00-00', 249, 0, '', '', '', '', '', '', 0, '', ''),
(2969, 'Aulit fujer', '', 1, 0, 0, 0, '0000-00-00', 250, 0, '', '', '', '', '', '', 0, '', ''),
(2970, 'Aulit su stəkanı', '', 1, 0, 0, 0, '0000-00-00', 251, 0, '', '', '', '', '', '', 0, '', ''),
(2971, 'Aulit fujer', '', 1, 0, 0, 0, '0000-00-00', 252, 0, '', '', '', '', '', '', 0, '', ''),
(2972, 'Stəkan', '', 1, 0, 0, 0, '0000-00-00', 253, 0, '', '', '', '', '', '', 0, '', ''),
(2973, 'Aurio', '', 1, 0, 0, 0, '0000-00-00', 253, 0, '', '', '', '', '', '', 0, '', ''),
(2974, 'su qabi', '', 1, 0, 0, 0, '0000-00-00', 254, 0, '', '', '', '', '', '', 0, '', ''),
(2975, 'aulide', '', 1, 0, 0, 0, '0000-00-00', 254, 0, '', '', '', '', '', '', 0, '', ''),
(2976, 'su qabi', '', 1, 0, 0, 0, '0000-00-00', 255, 0, '', '', '', '', '', '', 0, '', ''),
(2977, 'aulide', '', 1, 0, 0, 0, '0000-00-00', 255, 0, '', '', '', '', '', '', 0, '', ''),
(2978, 'su qabi', '', 1, 0, 0, 0, '0000-00-00', 256, 0, '', '', '', '', '', '', 0, '', ''),
(2979, 'aulide', '', 1, 0, 0, 0, '0000-00-00', 256, 0, '', '', '', '', '', '', 0, '', ''),
(2980, 'su qabi', '', 1, 0, 0, 0, '0000-00-00', 257, 0, '', '', '', '', '', '', 0, '', ''),
(2981, 'aulide', '', 1, 0, 0, 0, '0000-00-00', 257, 0, '', '', '', '', '', '', 0, '', ''),
(2982, 'su qabi', '', 1, 0, 0, 0, '0000-00-00', 258, 0, '', '', '', '', '', '', 0, '', ''),
(2983, 'aulide', '', 1, 0, 0, 0, '0000-00-00', 258, 0, '', '', '', '', '', '', 0, '', ''),
(2984, 'Servis', '', 1, 0, 0, 0, '0000-00-00', 259, 0, '', '', '', '', '', '', 0, '', ''),
(2985, 'Fuyer', '', 1, 0, 0, 0, '0000-00-00', 259, 0, '', '', '', '', '', '', 0, '', ''),
(2986, 'Mai vaza', '', 1, 0, 0, 0, '0000-00-00', 58, 0, '', '', '', '', '', '', 0, '', ''),
(2987, 'VAZA 40 Cm.', '', 1, 0, 0, 0, '0000-00-00', 58, 0, '', '', '', '', '', '', 0, '', ''),
(2988, 'VAZA 40 CM ayaqlı', '', 1, 0, 0, 0, '0000-00-00', 60, 0, '', '', '', '', '', '', 0, '', ''),
(2989, 'Mat meyvə qabı', '', 1, 0, 0, 0, '0000-00-00', 51, 0, '', '', '', '', '', '', 0, '', ''),
(2990, 'Tort Qabları', '', 1, 0, 0, 0, '0000-00-00', 52, 0, '', '', '', '', '', '', 0, '', ''),
(2991, 'padnos', '', 1, 0, 0, 0, '0000-00-00', 52, 0, '', '', '', '', '', '', 0, '', ''),
(2992, 'Mai-Lotka', '', 1, 0, 0, 0, '0000-00-00', 53, 0, '', '', '', '', '', '', 0, '', ''),
(2993, 'Mat meyvə qabı', '', 1, 0, 0, 0, '0000-00-00', 54, 0, '', '', '', '', '', '', 0, '', ''),
(2994, 'Şirniyyat Qabı- Mai', '', 1, 0, 0, 0, '0000-00-00', 55, 0, '', '', '', '', '', '', 0, '', ''),
(2995, 'Konfet Qabı,Meyvə Qabı- Maat lotka', '', 1, 0, 0, 0, '0000-00-00', 56, 0, '', '', '', '', '', '', 0, '', ''),
(2996, 'Mai vaza', '', 1, 0, 0, 0, '0000-00-00', 57, 0, '', '', '', '', '', '', 0, '', ''),
(2997, 'VAZA ', '', 1, 0, 0, 0, '0000-00-00', 59, 0, '', '', '', '', '', '', 0, '', ''),
(2998, 'Mai konfet qabı', '', 1, 0, 0, 0, '0000-00-00', 61, 0, '', '', '', '', '', '', 0, '', ''),
(2999, 'Konfet Qabı- Mai', '', 1, 0, 0, 0, '0000-00-00', 62, 0, '', '', '', '', '', '', 0, '', ''),
(3000, 'Mat meyvə qabı', '', 1, 0, 0, 0, '0000-00-00', 63, 0, '', '', '', '', '', '', 0, '', ''),
(3001, 'meyve qabı', '', 1, 0, 0, 0, '0000-00-00', 64, 0, '', '', '', '', '', '', 0, '', ''),
(3002, 'Tort Qabı- Mat', '', 1, 0, 0, 0, '0000-00-00', 65, 0, '', '', '', '', '', '', 0, '', ''),
(3003, 'Mat səbətlər', '', 1, 0, 0, 0, '0000-00-00', 66, 0, '', '', '', '', '', '', 0, '', ''),
(3004, 'Mat meyvə qabı', '', 1, 0, 0, 0, '0000-00-00', 67, 0, '', '', '', '', '', '', 0, '', ''),
(3005, 'Meyvə Qabı-Mat tulpan', '', 1, 0, 0, 0, '0000-00-00', 68, 0, '', '', '', '', '', '', 0, '', ''),
(3006, 'Mat meyvə qabı', '', 1, 0, 0, 0, '0000-00-00', 69, 0, '', '', '', '', '', '', 0, '', ''),
(3007, 'Stəkan', '', 1, 0, 0, 0, '0000-00-00', 70, 0, '', '', '', '', '', '', 0, '', ''),
(3008, 'Stəkan', '', 1, 0, 0, 0, '0000-00-00', 70, 0, '', '', '', '', '', '', 0, '', ''),
(3009, 'Konfet Qabı- Azura', '', 1, 0, 0, 0, '0000-00-00', 131, 0, '', '', '', '', '', '', 0, '', ''),
(3010, 'Dekorativ Qab', '', 1, 0, 0, 0, '0000-00-00', 71, 0, '', '', '', '', '', '', 0, '', ''),
(3011, 'Dekorativ Qab', '', 1, 0, 0, 0, '0000-00-00', 71, 0, '', '', '', '', '', '', 0, '', ''),
(3012, 'Şirniyyat Qabı- Limon', '', 1, 0, 0, 0, '0000-00-00', 72, 0, '', '', '', '', '', '', 0, '', ''),
(3013, 'Mat meyvə qabı', '', 1, 0, 0, 0, '0000-00-00', 73, 0, '', '', '', '', '', '', 0, '', ''),
(3014, 'Mai stakən armud', '', 1, 0, 0, 0, '0000-00-00', 74, 0, '', '', '', '', '', '', 0, '', ''),
(3015, 'Mai çaynnik', '', 1, 0, 0, 0, '0000-00-00', 76, 0, '', '', '', '', '', '', 0, '', ''),
(3016, 'Romantik fuler', '', 1, 0, 0, 0, '0000-00-00', 77, 0, '', '', '', '', '', '', 0, '', ''),
(3017, 'meyvə qabı', '', 1, 0, 0, 0, '0000-00-00', 78, 0, '', '', '', '', '', '', 0, '', ''),
(3018, 'Ales Romantik', '', 1, 0, 0, 0, '0000-00-00', 78, 0, '', '', '', '', '', '', 0, '', ''),
(3019, 'Romantik vaza', '', 1, 0, 0, 0, '0000-00-00', 79, 0, '', '', '', '', '', '', 0, '', ''),
(3020, 'Meyvə Qabı- Shell', '', 1, 0, 0, 0, '0000-00-00', 80, 0, '', '', '', '', '', '', 0, '', ''),
(3021, 'Konfet Qabı -Polar', '', 1, 0, 0, 0, '0000-00-00', 81, 0, '', '', '', '', '', '', 0, '', ''),
(3022, 'Meyve Qabları- Tramantana', '', 1, 0, 0, 0, '0000-00-00', 82, 0, '', '', '', '', '', '', 0, '', ''),
(3023, 'Konfet Qabı- Lotos', '', 1, 0, 0, 0, '0000-00-00', 83, 0, '', '', '', '', '', '', 0, '', ''),
(3024, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 84, 0, '', '', '', '', '', '', 0, '', ''),
(3025, 'Lotos', '', 1, 0, 0, 0, '0000-00-00', 84, 0, '', '', '', '', '', '', 0, '', ''),
(3026, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 85, 0, '', '', '', '', '', '', 0, '', ''),
(3027, 'Lotos', '', 1, 0, 0, 0, '0000-00-00', 85, 0, '', '', '', '', '', '', 0, '', ''),
(3028, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 86, 0, '', '', '', '', '', '', 0, '', ''),
(3029, 'Lotos', '', 1, 0, 0, 0, '0000-00-00', 86, 0, '', '', '', '', '', '', 0, '', ''),
(3030, ' Meyvə Qabı- Erral', '', 1, 0, 0, 0, '0000-00-00', 87, 0, '', '', '', '', '', '', 0, '', ''),
(3031, 'Konfet Qabı- Erol', '', 1, 0, 0, 0, '0000-00-00', 88, 0, '', '', '', '', '', '', 0, '', ''),
(3032, 'Konfet Qabı- Diamond', '', 1, 0, 0, 0, '0000-00-00', 89, 0, '', '', '', '', '', '', 0, '', ''),
(3033, 'Ləpə Qabı-Diamono', '', 1, 0, 0, 0, '0000-00-00', 90, 0, '', '', '', '', '', '', 0, '', ''),
(3034, 'Diamono', '', 1, 0, 0, 0, '0000-00-00', 91, 0, '', '', '', '', '', '', 0, '', ''),
(3035, 'Meyvə qabı - Diamont', '', 1, 0, 0, 0, '0000-00-00', 92, 0, '', '', '', '', '', '', 0, '', ''),
(3036, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 93, 0, '', '', '', '', '', '', 0, '', ''),
(3037, 'Meyvə Qabı', '', 1, 0, 0, 0, '0000-00-00', 93, 0, '', '', '', '', '', '', 0, '', ''),
(3038, 'Diamono', '', 1, 0, 0, 0, '0000-00-00', 94, 0, '', '', '', '', '', '', 0, '', ''),
(3039, 'Ləpə Qabı- Focos', '', 1, 0, 0, 0, '0000-00-00', 96, 0, '', '', '', '', '', '', 0, '', ''),
(3040, 'Konfet Qabı- Fokus', '', 1, 0, 0, 0, '0000-00-00', 97, 0, '', '', '', '', '', '', 0, '', ''),
(3041, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 98, 0, '', '', '', '', '', '', 0, '', ''),
(3042, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 98, 0, '', '', '', '', '', '', 0, '', ''),
(3043, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 99, 0, '', '', '', '', '', '', 0, '', ''),
(3044, 'Errar', '', 1, 0, 0, 0, '0000-00-00', 99, 0, '', '', '', '', '', '', 0, '', ''),
(3045, 'Konfet Qabı- Prisim', '', 1, 0, 0, 0, '0000-00-00', 100, 0, '', '', '', '', '', '', 0, '', ''),
(3046, 'Ləpə Qabı- Planar', '', 1, 0, 0, 0, '0000-00-00', 101, 0, '', '', '', '', '', '', 0, '', ''),
(3047, 'Prism', '', 1, 0, 0, 0, '0000-00-00', 102, 0, '', '', '', '', '', '', 0, '', ''),
(3048, 'Meyvə Qabı- Prisim', '', 1, 0, 0, 0, '0000-00-00', 103, 0, '', '', '', '', '', '', 0, '', ''),
(3049, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 104, 0, '', '', '', '', '', '', 0, '', ''),
(3050, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 104, 0, '', '', '', '', '', '', 0, '', ''),
(3051, 'Ləpə Qabı- Adriya', '', 1, 0, 0, 0, '0000-00-00', 105, 0, '', '', '', '', '', '', 0, '', ''),
(3052, 'Konfet Qabı- Sphlas', '', 1, 0, 0, 0, '0000-00-00', 108, 0, '', '', '', '', '', '', 0, '', ''),
(3053, 'Konfet Qabı -Laura', '', 1, 0, 0, 0, '0000-00-00', 109, 0, '', '', '', '', '', '', 0, '', ''),
(3054, 'Laura', '', 1, 0, 0, 0, '0000-00-00', 110, 0, '', '', '', '', '', '', 0, '', ''),
(3055, 'Laura', '', 1, 0, 0, 0, '0000-00-00', 112, 0, '', '', '', '', '', '', 0, '', ''),
(3056, 'Meyvə Qabı- Laura', '', 1, 0, 0, 0, '0000-00-00', 113, 0, '', '', '', '', '', '', 0, '', ''),
(3057, 'Meyvə Qabı- Polar', '', 1, 0, 0, 0, '0000-00-00', 114, 0, '', '', '', '', '', '', 0, '', ''),
(3058, 'Vaza- Polar', '', 1, 0, 0, 0, '0000-00-00', 115, 0, '', '', '', '', '', '', 0, '', ''),
(3059, 'Meyvə Qabı- Polar', '', 1, 0, 0, 0, '0000-00-00', 116, 0, '', '', '', '', '', '', 0, '', ''),
(3060, 'Polar', '', 1, 0, 0, 0, '0000-00-00', 117, 0, '', '', '', '', '', '', 0, '', ''),
(3061, 'Meyvə Qabı- Lumina', '', 1, 0, 0, 0, '0000-00-00', 118, 0, '', '', '', '', '', '', 0, '', ''),
(3062, 'Konfet Qabı- Harizons', '', 1, 0, 0, 0, '0000-00-00', 121, 0, '', '', '', '', '', '', 0, '', ''),
(3063, 'Meyvə Qabı- Lumina', '', 1, 0, 0, 0, '0000-00-00', 122, 0, '', '', '', '', '', '', 0, '', ''),
(3064, 'Gilə meyvə qabı- cevel', '', 1, 0, 0, 0, '0000-00-00', 124, 0, '', '', '', '', '', '', 0, '', ''),
(3065, 'Meyvə Qabı- Sanqri', '', 1, 0, 0, 0, '0000-00-00', 127, 0, '', '', '', '', '', '', 0, '', ''),
(3066, 'Meyvə Qabı- Can-can', '', 1, 0, 0, 0, '0000-00-00', 128, 0, '', '', '', '', '', '', 0, '', ''),
(3067, 'Meyvə Qabı- Classik Jewel', '', 1, 0, 0, 0, '0000-00-00', 129, 0, '', '', '', '', '', '', 0, '', ''),
(3068, 'Meyvə Qabı - Kroks', '', 1, 0, 0, 0, '0000-00-00', 130, 0, '', '', '', '', '', '', 0, '', ''),
(3069, 'Tort Qabı- Mat', '', 1, 0, 0, 0, '0000-00-00', 50, 0, '', '', '', '', '', '', 0, '', ''),
(3070, 'Mai', '', 1, 0, 0, 0, '0000-00-00', 64, 0, '', '', '', '', '', '', 0, '', ''),
(3071, 'Vaza 40 cm ayaqlı', '', 1, 0, 0, 0, '0000-00-00', 60, 0, '', '', '', '', '', '', 0, '', ''),
(3072, 'Jewel', '', 1, 0, 0, 0, '0000-00-00', 184, 0, '', '', '', '', '', '', 0, '', ''),
(3073, 'Jewel', '', 1, 0, 0, 0, '0000-00-00', 185, 0, '', '', '', '', '', '', 0, '', ''),
(3074, 'Jewel', '', 1, 0, 0, 0, '0000-00-00', 183, 0, '', '', '', '', '', '', 0, '', ''),
(3075, 'Gemeni', '', 1, 0, 0, 0, '0000-00-00', 169, 0, '', '', '', '', '', '', 0, '', ''),
(3076, 'Gemeni', '', 1, 0, 0, 0, '0000-00-00', 166, 0, '', '', '', '', '', '', 0, '', ''),
(3077, 'Crowen', '', 1, 0, 0, 0, '0000-00-00', 161, 0, '', '', '', '', '', '', 0, '', ''),
(3078, 'Nova', '', 1, 0, 0, 0, '0000-00-00', 159, 0, '', '', '', '', '', '', 0, '', ''),
(3079, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 102, 0, '', '', '', '', '', '', 0, '', ''),
(3080, 'Adriya', '', 1, 0, 0, 0, '0000-00-00', 106, 0, '', '', '', '', '', '', 0, '', ''),
(3081, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 107, 0, '', '', '', '', '', '', 0, '', ''),
(3082, 'Harizons', '', 1, 0, 0, 0, '0000-00-00', 119, 0, '', '', '', '', '', '', 0, '', ''),
(3083, 'Tramantana', '', 1, 0, 0, 0, '0000-00-00', 120, 0, '', '', '', '', '', '', 0, '', ''),
(3084, 'Tropes', '', 1, 0, 0, 0, '0000-00-00', 123, 0, '', '', '', '', '', '', 0, '', ''),
(3085, 'Tropes', '', 1, 0, 0, 0, '0000-00-00', 125, 0, '', '', '', '', '', '', 0, '', ''),
(3086, 'Classik jewel', '', 1, 0, 0, 0, '0000-00-00', 126, 0, '', '', '', '', '', '', 0, '', ''),
(3087, 'Can -can', '', 1, 0, 0, 0, '0000-00-00', 134, 0, '', '', '', '', '', '', 0, '', ''),
(3088, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 137, 17, '', '', '', 'Goldglass', '', '', 0, '9azn', '21'),
(3089, 'Eqnox', '', 1, 0, 0, 0, '0000-00-00', 151, 0, '', '', '', '', '', '', 0, '', ''),
(3090, 'Eqnox', '', 1, 0, 0, 0, '0000-00-00', 154, 0, '', '', '', '', '', '', 0, '', ''),
(3091, 'Mai', '', 1, 0, 0, 0, '0000-00-00', 59, 0, '', '', '', '', '', '', 0, '', ''),
(3092, 'Crowen', '', 1, 0, 0, 0, '0000-00-00', 163, 0, '', '', '', '', '', '', 0, '', ''),
(3093, 'Konfet Qabı - Cevel', '', 1, 0, 0, 0, '0000-00-00', 180, 0, '', '', '', '', '', '', 0, '', ''),
(3094, 'Splash Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 111, 0, '', '', '', '', '', '', 0, '', ''),
(3095, 'Cevel torelka Şamdan', '', 1, 0, 0, 0, '0000-00-00', 190, 0, '', '', '', '', '', '', 0, '', ''),
(3096, 'Şamdan', '', 1, 0, 0, 0, '0000-00-00', 197, 0, '', '', '', '', '', '', 0, '', ''),
(3097, 'Şamdan', '', 1, 0, 0, 0, '0000-00-00', 193, 0, '', '', '', '', '', '', 0, '', ''),
(3098, 'Şamdan', '', 1, 0, 0, 0, '0000-00-00', 194, 0, '', '', '', '', '', '', 0, '', ''),
(3099, 'Şamdan', '', 1, 0, 0, 0, '0000-00-00', 190, 0, '', '', '', '', '', '', 0, '', ''),
(3100, 'Şamdan', '', 1, 0, 0, 0, '0000-00-00', 195, 0, '', '', '', '', '', '', 0, '', ''),
(3101, 'Şamdan', '', 1, 0, 0, 0, '0000-00-00', 189, 0, '', '', '', '', '', '', 0, '', ''),
(3102, 'Şamdanlar', '', 1, 0, 0, 0, '0000-00-00', 191, 0, '', '', '', '', '', '', 0, '', ''),
(3103, 'Bakal', '', 1, 0, 0, 0, '0000-00-00', 207, 0, '', '', '', '', '', '', 0, '', ''),
(3104, 'Bakal', '', 1, 0, 0, 0, '0000-00-00', 200, 0, '', '', '', '', '', '', 0, '', ''),
(3105, 'Bakal', '', 1, 0, 0, 0, '0000-00-00', 245, 0, '', '', '', '', '', '', 0, '', ''),
(3106, 'Bakal', '', 1, 0, 0, 0, '0000-00-00', 237, 0, '', '', '', '', '', '', 0, '', ''),
(3107, 'Bakal', '', 1, 0, 0, 0, '0000-00-00', 220, 0, '', '', '', '', '', '', 0, '', ''),
(3108, 'Bakal', '', 1, 0, 0, 0, '0000-00-00', 208, 0, '', '', '', '', '', '', 0, '', ''),
(3109, 'Bakal', '', 1, 0, 0, 0, '0000-00-00', 246, 0, '', '', '', '', '', '', 0, '', ''),
(3110, 'Bakal', '', 1, 0, 0, 0, '0000-00-00', 201, 0, '', '', '', '', '', '', 0, '', ''),
(3111, 'Bakal', '', 1, 0, 0, 0, '0000-00-00', 238, 0, '', '', '', '', '', '', 0, '', ''),
(3112, 'Konfet Qabı- Atrium', '', 1, 0, 0, 0, '0000-00-00', 75, 0, '', '', '', '', '', '', 0, '', ''),
(3113, 'Bakal', '', 1, 0, 0, 0, '0000-00-00', 221, 0, '', '', '', '', '', '', 0, '', ''),
(3114, 'Bakal', '', 1, 0, 0, 0, '0000-00-00', 252, 0, '', '', '', '', '', '', 0, '', ''),
(3115, 'Bakal', '', 1, 0, 0, 0, '0000-00-00', 209, 0, '', '', '', '', '', '', 0, '', ''),
(3116, 'Bakal', '', 1, 0, 0, 0, '0000-00-00', 247, 0, '', '', '', '', '', '', 0, '', ''),
(3117, 'Bakal', '', 1, 0, 0, 0, '0000-00-00', 202, 0, '', '', '', '', '', '', 0, '', ''),
(3118, 'Bakal', '', 1, 0, 0, 0, '0000-00-00', 239, 0, '', '', '', '', '', '', 0, '', ''),
(3119, 'Bakal', '', 1, 0, 0, 0, '0000-00-00', 77, 0, '', '', '', '', '', '', 0, '', ''),
(3120, 'Bakal', '', 1, 0, 0, 0, '0000-00-00', 222, 0, '', '', '', '', '', '', 0, '', ''),
(3121, 'Bakal', '', 1, 0, 0, 0, '0000-00-00', 210, 0, '', '', '', '', '', '', 0, '', ''),
(3122, 'Bakal', '', 1, 0, 0, 0, '0000-00-00', 248, 0, '', '', '', '', '', '', 0, '', ''),
(3123, 'Bakal', '', 1, 0, 0, 0, '0000-00-00', 203, 0, '', '', '', '', '', '', 0, '', ''),
(3124, 'Bakal', '', 1, 0, 0, 0, '0000-00-00', 241, 0, '', '', '', '', '', '', 0, '', ''),
(3125, 'Bakal', '', 1, 0, 0, 0, '0000-00-00', 79, 0, '', '', '', '', '', '', 0, '', ''),
(3126, 'Eru martini', '', 1, 0, 0, 0, '0000-00-00', 223, 0, '', '', '', '', '', '', 0, '', ''),
(3127, 'Bakal', '', 1, 0, 0, 0, '0000-00-00', 211, 0, '', '', '', '', '', '', 0, '', ''),
(3128, 'Bakal', '', 1, 0, 0, 0, '0000-00-00', 249, 0, '', '', '', '', '', '', 0, '', ''),
(3129, 'Bakal', '', 1, 0, 0, 0, '0000-00-00', 206, 0, '', '', '', '', '', '', 0, '', ''),
(3130, 'Bakal', '', 1, 0, 0, 0, '0000-00-00', 244, 0, '', '', '', '', '', '', 0, '', ''),
(3131, 'Bakal', '', 1, 0, 0, 0, '0000-00-00', 179, 0, '', '', '', '', '', '', 0, '', ''),
(3132, 'Bakal', '', 1, 0, 0, 0, '0000-00-00', 236, 0, '', '', '', '', '', '', 0, '', ''),
(3133, 'Bakal', '', 1, 0, 0, 0, '0000-00-00', 212, 0, '', '', '', '', '', '', 0, '', ''),
(3134, 'Bakal', '', 1, 0, 0, 0, '0000-00-00', 250, 0, '', '', '', '', '', '', 0, '', ''),
(3135, 'Stəkan', '', 1, 0, 0, 0, '0000-00-00', 251, 0, '', '', '', '', '', '', 0, '', ''),
(3136, 'Stəkan', '', 1, 0, 0, 0, '0000-00-00', 74, 0, '', '', '', '', '', '', 0, '', ''),
(3137, 'Stəkan', '', 1, 0, 0, 0, '0000-00-00', 215, 0, '', '', '', '', '', '', 0, '', ''),
(3138, 'Stəkan', '', 1, 0, 0, 0, '0000-00-00', 228, 0, '', '', '', '', '', '', 0, '', ''),
(3139, 'Bakal', '', 1, 0, 0, 0, '0000-00-00', 75, 0, '', '', '', '', '', '', 0, '', ''),
(3140, 'Stəkan', '', 1, 0, 0, 0, '0000-00-00', 216, 0, '', '', '', '', '', '', 0, '', ''),
(3141, 'Stəkan', '', 1, 0, 0, 0, '0000-00-00', 204, 0, '', '', '', '', '', '', 0, '', ''),
(3142, 'Stəkan', '', 1, 0, 0, 0, '0000-00-00', 240, 0, '', '', '', '', '', '', 0, '', ''),
(3143, 'Stəkan', '', 1, 0, 0, 0, '0000-00-00', 217, 0, '', '', '', '', '', '', 0, '', ''),
(3144, 'Stəkan', '', 1, 0, 0, 0, '0000-00-00', 205, 0, '', '', '', '', '', '', 0, '', ''),
(3145, 'Stəkan', '', 1, 0, 0, 0, '0000-00-00', 243, 0, '', '', '', '', '', '', 0, '', ''),
(3146, 'Stəkan', '', 1, 0, 0, 0, '0000-00-00', 57, 0, '', '', '', '', '', '', 0, '', ''),
(3147, 'Stəkan', '', 1, 0, 0, 0, '0000-00-00', 225, 0, '', '', '', '', '', '', 0, '', ''),
(3148, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 155, 0, '', '', '', '', '', '', 0, '', ''),
(3149, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 89, 0, '', '', '', '', '', '', 0, '', ''),
(3150, 'Konfet Qabı- İmperial', '', 1, 0, 0, 0, '0000-00-00', 140, 11, '', '', '', '', '', '', 1, '', ''),
(3151, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 69, 0, '', '', '', '', '', '', 0, '', ''),
(3152, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 121, 0, '', '', '', '', '', '', 0, '', ''),
(3153, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 186, 0, '', '', '', '', '', '', 0, '', ''),
(3154, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 108, 0, '', '', '', '', '', '', 0, '', ''),
(3155, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 92, 0, '', '', '', '', '', '', 0, '', ''),
(3156, 'Konfet Qabı-Damora', '', 1, 0, 0, 0, '0000-00-00', 141, 11, '', '', '', '', '', '', 1, '', ''),
(3157, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 73, 0, '', '', '', '', '', '', 0, '', ''),
(3158, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 130, 0, '', '', '', '', '', '', 0, '', ''),
(3159, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 187, 0, '', '', '', '', '', '', 0, '', ''),
(3160, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 63, 0, '', '', '', '', '', '', 0, '', ''),
(3161, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 109, 0, '', '', '', '', '', '', 0, '', ''),
(3162, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 164, 0, '', '', '', '', '', '', 0, '', ''),
(3163, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 81, 0, '', '', '', '', '', '', 0, '', ''),
(3164, 'Konfet Qabı,Meyvə Qabı- Azura', '', 1, 0, 0, 0, '0000-00-00', 132, 6, '', '', '', 'Goldglass', '', '', 1, '12', '13'),
(3165, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 66, 0, '', '', '', '', '', '', 0, '', ''),
(3166, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 111, 0, '', '', '', '', '', '', 0, '', ''),
(3167, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 180, 0, '', '', '', '', '', '', 0, '', ''),
(3168, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 100, 0, '', '', '', '', '', '', 0, '', ''),
(3169, 'Konfet Qabı -Kroks', '', 1, 0, 0, 0, '0000-00-00', 135, 11, '', '', '', '', '', '', 1, '', ''),
(3170, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 83, 0, '', '', '', '', '', '', 0, '', ''),
(3171, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 113, 0, '', '', '', '', '', '', 0, '', ''),
(3172, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 181, 0, '', '', '', '', '', '', 0, '', ''),
(3173, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 67, 0, '', '', '', '', '', '', 0, '', ''),
(3174, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 147, 0, '', '', '', '', '', '', 0, '', ''),
(3175, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 103, 0, '', '', '', '', '', '', 0, '', ''),
(3176, 'Meyvə Qabı- Cevel', '', 1, 0, 0, 0, '0000-00-00', 136, 6, '', '', '', '', '', '', 1, '', ''),
(3177, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 88, 0, '', '', '', '', '', '', 0, '', ''),
(3178, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 116, 0, '', '', '', '', '', '', 0, '', ''),
(3179, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 68, 0, '', '', '', '', '', '', 0, '', ''),
(3180, 'Konfet Qabı', '', 1, 0, 0, 0, '0000-00-00', 182, 0, '', '', '', '', '', '', 0, '', ''),
(3181, 'Konfet Qabları', '', 1, 0, 0, 0, '0000-00-00', 54, 0, '', '', '', '', '', '', 0, '', ''),
(3182, 'Konfet Qabları', '', 1, 0, 0, 0, '0000-00-00', 56, 0, '', '', '', '', '', '', 0, '', ''),
(3183, 'Konfet Qabları', '', 1, 0, 0, 0, '0000-00-00', 51, 0, '', '', '', '', '', '', 0, '', ''),
(3184, 'Ləpə Qabı', '', 1, 0, 0, 0, '0000-00-00', 90, 0, '', '', '', '', '', '', 0, '', ''),
(3185, 'Ləpə Qabı', '', 1, 0, 0, 0, '0000-00-00', 175, 0, '', '', '', '', '', '', 0, '', ''),
(3186, 'Ləpə Qabı', '', 1, 0, 0, 0, '0000-00-00', 114, 0, '', '', '', '', '', '', 0, '', ''),
(3187, 'Ləpə Qabı', '', 1, 0, 0, 0, '0000-00-00', 96, 0, '', '', '', '', '', '', 0, '', ''),
(3188, 'Ləpə Qabı', '', 1, 0, 0, 0, '0000-00-00', 176, 0, '', '', '', '', '', '', 0, '', ''),
(3189, 'Ləpə Qabı', '', 1, 0, 0, 0, '0000-00-00', 124, 0, '', '', '', '', '', '', 0, '', ''),
(3190, 'Ləpə Qabı', '', 1, 0, 0, 0, '0000-00-00', 61, 0, '', '', '', '', '', '', 0, '', ''),
(3191, 'Ləpə Qabı', '', 1, 0, 0, 0, '0000-00-00', 97, 0, '', '', '', '', '', '', 0, '', ''),
(3192, 'Ləpə Qabı', '', 1, 0, 0, 0, '0000-00-00', 177, 0, '', '', '', '', '', '', 0, '', ''),
(3193, 'Ləpə Qabı', '', 1, 0, 0, 0, '0000-00-00', 128, 0, '', '', '', '', '', '', 0, '', ''),
(3194, 'Ləpə Qabı', '', 1, 0, 0, 0, '0000-00-00', 101, 0, '', '', '', '', '', '', 0, '', ''),
(3195, 'Ləpə Qabı', '', 1, 0, 0, 0, '0000-00-00', 62, 0, '', '', '', '', '', '', 0, '', ''),
(3196, 'Ləpə Qabı- cevel', '', 1, 0, 0, 0, '0000-00-00', 178, 0, '', '', '', '', '', '', 0, '', ''),
(3197, 'Ləpə Qabı', '', 1, 0, 0, 0, '0000-00-00', 178, 0, '', '', '', '', '', '', 0, '', ''),
(3198, 'Ləpə Qabı', '', 1, 0, 0, 0, '0000-00-00', 131, 0, '', '', '', '', '', '', 0, '', ''),
(3199, 'Ləpə Qabı', '', 1, 0, 0, 0, '0000-00-00', 105, 0, '', '', '', '', '', '', 0, '', ''),
(3200, 'Ləpə Qabı', '', 1, 0, 0, 0, '0000-00-00', 87, 0, '', '', '', '', '', '', 0, '', ''),
(3201, 'Ləpə Qabı', '', 1, 0, 0, 0, '0000-00-00', 188, 0, '', '', '', '', '', '', 0, '', ''),
(3202, 'Kül Qabı- Steqes', '', 1, 0, 0, 0, '0000-00-00', 139, 8, '', '', '', 'Goldglass', '', '', 0, '11', '12'),
(3203, 'Ləpə Qabları', '', 1, 0, 0, 0, '0000-00-00', 53, 0, '', '', '', '', '', '', 0, '', ''),
(3204, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 115, 0, '', '', '', '', '', '', 0, '', ''),
(3205, 'Servis', '', 1, 0, 0, 0, '0000-00-00', 143, 0, '', '', '', '', '', '', 0, '', ''),
(3206, 'Servis', '', 1, 0, 0, 0, '0000-00-00', 76, 0, '', '', '', '', '', '', 0, '', ''),
(3207, 'Adriya', '', 1, 0, 0, 0, '0000-00-00', 107, 0, '', '', '', '', '', '', 0, '', ''),
(3208, 'Daphne', '', 1, 0, 0, 0, '0000-00-00', 95, 0, '', '', '', '', '', '', 0, '', ''),
(3209, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 123, 0, '', '', '', '', '', '', 0, '', ''),
(3210, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 110, 0, '', '', '', '', '', '', 0, '', ''),
(3212, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 125, 0, '', '', '', '', '', '', 0, '', ''),
(3213, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 112, 0, '', '', '', '', '', '', 0, '', ''),
(3214, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 161, 0, '', '', '', '', '', '', 0, '', ''),
(3215, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 148, 0, '', '', '', '', '', '', 0, '', ''),
(3216, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 126, 0, '', '', '', '', '', '', 0, '', ''),
(3217, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 117, 0, '', '', '', '', '', '', 0, '', ''),
(3218, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 149, 0, '', '', '', '', '', '', 0, '', ''),
(3220, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 91, 0, '', '', '', '', '', '', 0, '', ''),
(3221, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 119, 0, '', '', '', '', '', '', 0, '', ''),
(3222, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 166, 0, '', '', '', '', '', '', 0, '', ''),
(3223, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 106, 0, '', '', '', '', '', '', 0, '', ''),
(3224, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 134, 0, '', '', '', '', '', '', 0, '', ''),
(3225, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 94, 0, '', '', '', '', '', '', 0, '', ''),
(3226, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 120, 0, '', '', '', '', '', '', 0, '', ''),
(3227, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 169, 0, '', '', '', '', '', '', 0, '', ''),
(3228, 'Vaza', '', 1, 0, 0, 0, '0000-00-00', 95, 0, '', '', '', '', '', '', 0, '', ''),
(3229, 'meyve qabı', '', 1, 0, 0, 0, '0000-00-00', 65, 0, '', '', '', '', '', '', 0, '', ''),
(3230, 'meyve qabı', '', 1, 0, 0, 0, '0000-00-00', 55, 0, '', '', '', '', '', '', 0, '', ''),
(3231, 'meyvə qabı', '', 1, 0, 0, 0, '0000-00-00', 157, 0, '', '', '', '', '', '', 0, '', ''),
(3232, 'meyvə qabı', '', 1, 0, 0, 0, '0000-00-00', 146, 0, '', '', '', '', '', '', 0, '', ''),
(3233, 'meyvə qabı', '', 1, 0, 0, 0, '0000-00-00', 118, 0, '', '', '', '', '', '', 0, '', ''),
(3234, 'meyvə qabı', '', 1, 0, 0, 0, '0000-00-00', 171, 0, '', '', '', '', '', '', 0, '', ''),
(3235, 'meyvə qabı', '', 1, 0, 0, 0, '0000-00-00', 162, 0, '', '', '', '', '', '', 0, '', ''),
(3236, 'meyvə qabı', '', 1, 0, 0, 0, '0000-00-00', 150, 0, '', '', '', '', '', '', 0, '', ''),
(3237, 'meyvə qabı', '', 1, 0, 0, 0, '0000-00-00', 72, 0, '', '', '', '', '', '', 0, '', ''),
(3238, 'meyvə qabı', '', 1, 0, 0, 0, '0000-00-00', 165, 0, '', '', '', '', '', '', 0, '', ''),
(3239, 'meyvə qabı', '', 1, 0, 0, 0, '0000-00-00', 167, 0, '', '', '', '', '', '', 0, '', ''),
(3240, 'meyvə qabı', '', 1, 0, 0, 0, '0000-00-00', 129, 0, '', '', '', '', '', '', 0, '', ''),
(3241, 'meyvə qabı', '', 1, 0, 0, 0, '0000-00-00', 80, 0, '', '', '', '', '', '', 0, '', ''),
(3242, 'meyvə qabı', '', 1, 0, 0, 0, '0000-00-00', 156, 0, '', '', '', '', '', '', 0, '', ''),
(3243, 'meyvə qabı', '', 1, 0, 0, 0, '0000-00-00', 145, 0, '', '', '', '', '', '', 0, '', ''),
(3244, 'meyvə qabı', '', 1, 0, 0, 0, '0000-00-00', 82, 0, '', '', '', '', '', '', 0, '', ''),
(3245, 'meyvə qabı', '', 1, 0, 0, 0, '0000-00-00', 170, 0, '', '', '', '', '', '', 0, '', ''),
(3246, 'meyve qabi', '', 1, 0, 0, 0, '0000-00-00', 50, 0, '', '', '', '', '', '', 0, '', ''),
(3247, 'Bakal', '', 1, 0, 0, 0, '0000-00-00', 223, 0, '', '', '', '', '', '', 0, '', ''),
(3248, 'meyvə qabı', '', 1, 0, 0, 0, '0000-00-00', 122, 0, '', '', '', '', '', '', 0, '', ''),
(3249, 'meyvə qabı', '', 1, 0, 0, 0, '0000-00-00', 172, 0, '', '', '', '', '', '', 0, '', ''),
(3250, 'meyvə qabı', '', 1, 0, 0, 0, '0000-00-00', 152, 0, '', '', '', '', '', '', 0, '', ''),
(3251, 'meyvə qabı', '', 1, 0, 0, 0, '0000-00-00', 127, 0, '', '', '', '', '', '', 0, '', ''),
(3252, 'meyvə qabı', '', 1, 0, 0, 0, '0000-00-00', 173, 0, '', '', '', '', '', '', 0, '', ''),
(3253, 'meyvə qabı', '', 1, 0, 0, 0, '0000-00-00', 153, 0, '', '', '', '', '', '', 0, '', ''),
(3254, 'Test', '', 1, 0, 0, 1, '2016-07-02', 260, 6, '', '', '', '', '', '', 0, '', ''),
(3255, '', '', 2, 0, 0, 1, '2016-07-02', 260, 6, '', '', '', '', '', '', 0, '', ''),
(3256, '', '', 3, 0, 0, 1, '2016-07-02', 260, 6, '', '', '', '', '', '', 0, '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_cat`
--

CREATE TABLE `product_cat` (
  `id` int(11) NOT NULL,
  `sub_id` int(4) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `l_id` tinyint(2) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `tip` tinyint(2) NOT NULL,
  `ordering` int(11) NOT NULL,
  `date` date NOT NULL,
  `u_id` int(11) NOT NULL,
  `url_tag` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `checkbox` int(2) NOT NULL,
  `url_tag2` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `product_cat`
--

INSERT INTO `product_cat` (`id`, `sub_id`, `name`, `text`, `l_id`, `status`, `tip`, `ordering`, `date`, `u_id`, `url_tag`, `title`, `keyword`, `description`, `photo`, `checkbox`, `url_tag2`) VALUES
(114, 8, '', '', 2, 0, 0, 150, '2016-06-21', 15, '', '', '', '', '', 0, ''),
(112, 8, '', '', 3, 0, 0, 140, '2016-06-21', 14, '', '', '', '', '', 0, ''),
(113, 8, 'Saatlar', '', 1, 0, 0, 150, '2016-06-21', 15, '', '', '', '', '', 0, ''),
(111, 8, '', '', 2, 0, 0, 140, '2016-06-21', 14, '', '', '', '', '', 0, ''),
(109, 7, '', '', 3, 0, 0, 130, '2016-06-21', 13, '', '', '', '', '', 0, ''),
(110, 8, 'Dekorativ qablar', '', 1, 0, 0, 140, '2016-06-21', 14, '', '', '', '', '', 0, ''),
(108, 7, '', '', 2, 0, 0, 130, '2016-06-21', 13, '', '', '', '', '', 0, ''),
(107, 7, 'Tort qabları', '', 1, 0, 0, 130, '2016-06-21', 13, '', '', '', '', '', 0, ''),
(103, 7, '', '', 3, 0, 0, 120, '2016-06-21', 12, '', '', '', '', '', 0, ''),
(102, 7, '', '', 2, 0, 0, 120, '2016-06-21', 12, '', '', '', '', '', 0, ''),
(99, 7, '', '', 2, 0, 0, 110, '2016-06-21', 11, '', '', '', '', '', 0, ''),
(100, 7, '', '', 3, 0, 0, 110, '2016-06-21', 11, '', '', '', '', '', 0, ''),
(101, 7, 'Ləpə qabları', '', 1, 0, 0, 120, '2016-06-21', 12, '', '', '', '', '', 0, ''),
(98, 7, 'Konfet qabları', '', 1, 0, 0, 110, '2016-06-21', 11, '', '', '', '', '', 0, ''),
(80, 0, 'Meyvə qabları', '', 1, 0, 0, 60, '2016-06-20', 6, '', '', '', '', '', 0, ''),
(81, 0, '', '', 2, 0, 0, 60, '2016-06-20', 6, '', '', '', '', '', 0, ''),
(82, 0, '', '', 3, 0, 0, 60, '2016-06-20', 6, '', '', '', '', '', 0, ''),
(83, 0, 'Şirniyyat süfrəsi', '', 1, 0, 0, 70, '2016-06-20', 7, '', '', '', '', '', 0, ''),
(84, 0, '', '', 2, 0, 0, 70, '2016-06-20', 7, '', '', '', '', '', 0, ''),
(85, 0, '', '', 3, 0, 0, 70, '2016-06-20', 7, '', '', '', '', '', 0, ''),
(86, 0, 'Dekor', '', 1, 0, 0, 80, '2016-06-20', 8, '', '', '', '', '', 0, ''),
(87, 0, '', '', 2, 0, 0, 80, '2016-06-20', 8, '', '', '', '', '', 0, ''),
(88, 0, '', '', 3, 0, 0, 80, '2016-06-20', 8, '', '', '', '', '', 0, ''),
(89, 0, 'Yemək və çay süfrəsi', '', 1, 0, 0, 90, '2016-06-20', 9, '', '', '', '', '', 0, ''),
(90, 0, '', '', 2, 0, 0, 90, '2016-06-20', 9, '', '', '', '', '', 0, ''),
(91, 0, '', '', 3, 0, 0, 90, '2016-06-20', 9, '', '', '', '', '', 0, ''),
(92, 0, 'Çilçıraqlar', '', 1, 0, 0, 100, '2016-06-20', 10, '', '', '', '', '', 0, ''),
(93, 0, '', '', 2, 0, 0, 100, '2016-06-20', 10, '', '', '', '', '', 0, ''),
(94, 0, '', '', 3, 0, 0, 100, '2016-06-20', 10, '', '', '', '', '', 0, ''),
(115, 8, '', '', 3, 0, 0, 150, '2016-06-21', 15, '', '', '', '', '', 0, ''),
(116, 8, 'Şamdanlar', '', 1, 0, 0, 160, '2016-06-21', 16, '', '', '', '', '', 0, ''),
(117, 8, '', '', 2, 0, 0, 160, '2016-06-21', 16, '', '', '', '', '', 0, ''),
(118, 8, '', '', 3, 0, 0, 160, '2016-06-21', 16, '', '', '', '', '', 0, ''),
(119, 8, 'Vazalar', '', 1, 0, 0, 170, '2016-06-21', 17, '', '', '', '', '', 0, ''),
(120, 8, '', '', 2, 0, 0, 170, '2016-06-21', 17, '', '', '', '', '', 0, ''),
(121, 8, '', '', 3, 0, 0, 170, '2016-06-21', 17, '', '', '', '', '', 0, ''),
(122, 9, 'Bakallar', '', 1, 0, 0, 180, '2016-06-21', 18, '', '', '', '', '', 0, ''),
(123, 9, '', '', 2, 0, 0, 180, '2016-06-21', 18, '', '', '', '', '', 0, ''),
(124, 9, '', '', 3, 0, 0, 180, '2016-06-21', 18, '', '', '', '', '', 0, ''),
(125, 9, 'Servislər', '', 1, 0, 0, 190, '2016-06-21', 19, '', '', '', '', '', 0, ''),
(126, 9, '', '', 2, 0, 0, 190, '2016-06-21', 19, '', '', '', '', '', 0, ''),
(127, 9, '', '', 3, 0, 0, 190, '2016-06-21', 19, '', '', '', '', '', 0, ''),
(128, 9, 'Stəkanlar', '', 1, 0, 0, 200, '2016-06-21', 20, '', '', '', '', '', 0, ''),
(129, 9, '', '', 2, 0, 0, 200, '2016-06-21', 20, '', '', '', '', '', 0, ''),
(130, 9, '', '', 3, 0, 0, 200, '2016-06-21', 20, '', '', '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_cat_video`
--

CREATE TABLE `product_cat_video` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `video_code` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `product_cat_video`
--

INSERT INTO `product_cat_video` (`id`, `cat_id`, `video_code`) VALUES
(1, 1, 'JLAW1swjjcc'),
(3, 33, 'oozsfgBhz2Q');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_photo`
--

CREATE TABLE `product_photo` (
  `id` int(4) NOT NULL,
  `u_id` int(11) NOT NULL,
  `l_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `ordering` int(4) NOT NULL,
  `url_tag` varchar(255) NOT NULL,
  `p_id` int(4) NOT NULL,
  `tip` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `product_photo`
--

INSERT INTO `product_photo` (`id`, `u_id`, `l_id`, `s_id`, `photo`, `text`, `ordering`, `url_tag`, `p_id`, `tip`) VALUES
(217, 0, 0, 0, 'data/DSC_3629-2.jpg', '', 0, '', 52, 0),
(218, 0, 0, 0, 'data/DSC_3632-2.jpg', '', 0, '', 53, 0),
(219, 0, 0, 0, 'data/DSC_3633.jpg', '', 0, '', 54, 0),
(220, 0, 0, 0, 'data/DSC_3634.jpg', '', 0, '', 55, 0),
(221, 0, 0, 0, 'data/DSC_3636.jpg', '', 0, '', 56, 0),
(222, 0, 0, 0, 'data/DSC_3638.jpg', '', 0, '', 57, 0),
(223, 0, 0, 0, 'data/DSC_3640.jpg', '', 0, '', 58, 0),
(224, 0, 0, 0, 'data/DSC_3639.jpg', '', 0, '', 59, 0),
(225, 0, 0, 0, '', '', 0, '', 60, 0),
(226, 0, 0, 0, 'data/DSC_3642.jpg', '', 0, '', 61, 0),
(227, 0, 0, 0, 'data/DSC_3643.jpg', '', 0, '', 62, 0),
(228, 0, 0, 0, 'data/DSC_3644.jpg', '', 0, '', 63, 0),
(229, 0, 0, 0, 'data/DSC_3645.jpg', '', 0, '', 64, 0),
(230, 0, 0, 0, 'data/DSC_3646.jpg', '', 0, '', 65, 0),
(231, 0, 0, 0, 'data/DSC_3647.jpg', '', 0, '', 66, 0),
(232, 0, 0, 0, 'data/DSC_3648.jpg', '', 0, '', 67, 0),
(233, 0, 0, 0, 'data/DSC_3649.jpg', '', 0, '', 68, 0),
(234, 0, 0, 0, 'data/DSC_3625-2.jpg', '', 0, '', 50, 0),
(235, 0, 0, 0, 'data/DSC_3627-2.jpg', '', 0, '', 51, 0),
(236, 0, 0, 0, 'data/DSC_3650.jpg', '', 0, '', 69, 0),
(237, 0, 0, 0, 'data/DSC_3651.jpg', '', 0, '', 70, 0),
(238, 0, 0, 0, 'data/DSC_3652.jpg', '', 0, '', 71, 0),
(239, 0, 0, 0, 'data/DSC_3654.jpg', '', 0, '', 72, 0),
(240, 0, 0, 0, 'data/DSC_3656.jpg', '', 0, '', 73, 0),
(241, 0, 0, 0, 'data/DSC_3662.jpg', '', 0, '', 74, 0),
(242, 0, 0, 0, 'data/DSC_3663.jpg', '', 0, '', 75, 0),
(243, 0, 0, 0, 'data/DSC_3664.jpg', '', 0, '', 76, 0),
(244, 0, 0, 0, 'data/DSC_3665.jpg', '', 0, '', 77, 0),
(245, 0, 0, 0, 'data/DSC_3668.jpg', '', 0, '', 78, 0),
(246, 0, 0, 0, 'data/DSC_3669.jpg', '', 0, '', 79, 0),
(247, 0, 0, 0, 'data/IMG_0249.jpg', '', 0, '', 80, 0),
(248, 0, 0, 0, 'data/IMG_0285.jpg', '', 0, '', 81, 0),
(249, 0, 0, 0, 'data/IMG_0293.jpg', '', 0, '', 82, 0),
(250, 0, 0, 0, 'data/IMG_0250.jpg', '', 0, '', 83, 0),
(251, 0, 0, 0, 'data/IMG_0252.jpg', '', 0, '', 84, 0),
(252, 0, 0, 0, 'data/IMG_0253.jpg', '', 0, '', 85, 0),
(253, 0, 0, 0, 'data/IMG_0254.jpg', '', 0, '', 86, 0),
(254, 0, 0, 0, 'data/IMG_0255.jpg', '', 0, '', 87, 0),
(255, 0, 0, 0, 'data/IMG_0256.jpg', '', 0, '', 88, 0),
(256, 0, 0, 0, 'data/IMG_0257.jpg', '', 0, '', 89, 0),
(257, 0, 0, 0, 'data/IMG_0258.jpg', '', 0, '', 90, 0),
(258, 0, 0, 0, 'data/IMG_0259.jpg', '', 0, '', 91, 0),
(259, 0, 0, 0, 'data/IMG_0260.jpg', '', 0, '', 92, 0),
(260, 0, 0, 0, 'data/IMG_0261.jpg', '', 0, '', 93, 0),
(261, 0, 0, 0, 'data/IMG_0262.jpg', '', 0, '', 94, 0),
(262, 0, 0, 0, 'data/IMG_0263.jpg', '', 0, '', 95, 0),
(263, 0, 0, 0, 'data/IMG_0264.jpg', '', 0, '', 96, 0),
(264, 0, 0, 0, 'data/IMG_0265.jpg', '', 0, '', 97, 0),
(265, 0, 0, 0, 'data/IMG_0267.jpg', '', 0, '', 98, 0),
(266, 0, 0, 0, 'data/IMG_0268.jpg', '', 0, '', 99, 0),
(267, 0, 0, 0, 'data/IMG_0270.jpg', '', 0, '', 100, 0),
(268, 0, 0, 0, 'data/IMG_0271.jpg', '', 0, '', 101, 0),
(269, 0, 0, 0, 'data/IMG_0272.jpg', '', 0, '', 102, 0),
(270, 0, 0, 0, 'data/IMG_0273.jpg', '', 0, '', 103, 0),
(271, 0, 0, 0, 'data/IMG_0275.jpg', '', 0, '', 104, 0),
(272, 0, 0, 0, 'data/IMG_0276.jpg', '', 0, '', 105, 0),
(273, 0, 0, 0, 'data/IMG_0277.jpg', '', 0, '', 106, 0),
(274, 0, 0, 0, 'data/IMG_0278.jpg', '', 0, '', 107, 0),
(275, 0, 0, 0, 'data/IMG_0279.jpg', '', 0, '', 108, 0),
(276, 0, 0, 0, 'data/IMG_0281.jpg', '', 0, '', 109, 0),
(277, 0, 0, 0, 'data/IMG_0282.jpg', '', 0, '', 110, 0),
(278, 0, 0, 0, 'data/IMG_0283.jpg', '', 0, '', 111, 0),
(279, 0, 0, 0, 'data/IMG_0284.jpg', '', 0, '', 112, 0),
(280, 0, 0, 0, 'data/IMG_0286.jpg', '', 0, '', 113, 0),
(281, 0, 0, 0, 'data/IMG_0287.jpg', '', 0, '', 114, 0),
(282, 0, 0, 0, 'data/IMG_0289.jpg', '', 0, '', 115, 0),
(283, 0, 0, 0, 'data/IMG_0290.jpg', '', 0, '', 116, 0),
(284, 0, 0, 0, 'data/IMG_0292.jpg', '', 0, '', 117, 0),
(285, 0, 0, 0, 'data/IMG_0294.jpg', '', 0, '', 118, 0),
(286, 0, 0, 0, 'data/IMG_0296.jpg', '', 0, '', 119, 0),
(287, 0, 0, 0, 'data/IMG_0298.jpg', '', 0, '', 120, 0),
(288, 0, 0, 0, 'data/IMG_0299.jpg', '', 0, '', 121, 0),
(289, 0, 0, 0, 'data/IMG_0301.jpg', '', 0, '', 122, 0),
(290, 0, 0, 0, 'data/IMG_0302.jpg', '', 0, '', 123, 0),
(291, 0, 0, 0, 'data/IMG_0304.jpg', '', 0, '', 124, 0),
(292, 0, 0, 0, 'data/IMG_0305.jpg', '', 0, '', 125, 0),
(293, 0, 0, 0, 'data/IMG_0306.jpg', '', 0, '', 126, 0),
(294, 0, 0, 0, 'data/IMG_0307.jpg', '', 0, '', 127, 0),
(295, 0, 0, 0, 'data/IMG_0308.jpg', '', 0, '', 128, 0),
(296, 0, 0, 0, 'data/IMG_0309.jpg', '', 0, '', 129, 0),
(297, 0, 0, 0, 'data/IMG_0310.jpg', '', 0, '', 130, 0),
(298, 0, 0, 0, 'data/IMG_0311.jpg', '', 0, '', 131, 0),
(299, 0, 0, 0, 'data/IMG_0312.jpg', '', 0, '', 132, 0),
(301, 0, 0, 0, 'data/IMG_0314.jpg', '', 0, '', 134, 0),
(302, 0, 0, 0, 'data/IMG_0315.jpg', '', 0, '', 135, 0),
(303, 0, 0, 0, 'data/IMG_0316.jpg', '', 0, '', 136, 0),
(304, 0, 0, 0, 'data/IMG_0317.jpg', '', 0, '', 137, 0),
(306, 0, 0, 0, 'data/IMG_0318.jpg', '', 0, '', 139, 0),
(307, 0, 0, 0, 'data/IMG_0319.jpg', '', 0, '', 140, 0),
(308, 0, 0, 0, 'data/IMG_0320.jpg', '', 0, '', 141, 0),
(309, 0, 0, 0, 'data/IMG_0322.jpg', '', 0, '', 142, 0),
(310, 0, 0, 0, 'data/IMG_0324.jpg', '', 0, '', 143, 0),
(311, 0, 0, 0, 'data/IMG_0326.jpg', '', 0, '', 144, 0),
(312, 0, 0, 0, 'data/IMG_0329.jpg', '', 0, '', 145, 0),
(313, 0, 0, 0, 'data/IMG_0330.jpg', '', 0, '', 146, 0),
(314, 0, 0, 0, 'data/IMG_0332.jpg', '', 0, '', 147, 0),
(315, 0, 0, 0, 'data/IMG_0334.jpg', '', 0, '', 148, 0),
(316, 0, 0, 0, 'data/IMG_0335.jpg', '', 0, '', 149, 0),
(317, 0, 0, 0, 'data/IMG_0337.jpg', '', 0, '', 150, 0),
(318, 0, 0, 0, 'data/IMG_0339.jpg', '', 0, '', 151, 0),
(319, 0, 0, 0, 'data/IMG_0341.jpg', '', 0, '', 152, 0),
(320, 0, 0, 0, 'data/IMG_0341.jpg', '', 0, '', 153, 0),
(321, 0, 0, 0, 'data/IMG_0343.jpg', '', 0, '', 154, 0),
(322, 0, 0, 0, 'data/IMG_0344.jpg', '', 0, '', 155, 0),
(323, 0, 0, 0, 'data/IMG_0345.jpg', '', 0, '', 156, 0),
(324, 0, 0, 0, 'data/IMG_0346.jpg', '', 0, '', 157, 0),
(325, 0, 0, 0, 'data/IMG_0349.jpg', '', 0, '', 158, 0),
(326, 0, 0, 0, 'data/IMG_0350.jpg', '', 0, '', 159, 0),
(327, 0, 0, 0, 'data/IMG_0351.jpg', '', 0, '', 160, 0),
(328, 0, 0, 0, 'data/IMG_0354.jpg', '', 0, '', 161, 0),
(329, 0, 0, 0, 'data/IMG_0355.jpg', '', 0, '', 162, 0),
(330, 0, 0, 0, 'data/IMG_0356.jpg', '', 0, '', 163, 0),
(331, 0, 0, 0, 'data/IMG_0357.jpg', '', 0, '', 164, 0),
(332, 0, 0, 0, 'data/IMG_0358.jpg', '', 0, '', 165, 0),
(333, 0, 0, 0, 'data/IMG_0359.jpg', '', 0, '', 166, 0),
(334, 0, 0, 0, 'data/IMG_0361.jpg', '', 0, '', 167, 0),
(335, 0, 0, 0, 'data/IMG_0362.jpg', '', 0, '', 168, 0),
(336, 0, 0, 0, 'data/IMG_0363.jpg', '', 0, '', 169, 0),
(337, 0, 0, 0, 'data/IMG_0365.jpg', '', 0, '', 170, 0),
(338, 0, 0, 0, 'data/IMG_0366.jpg', '', 0, '', 171, 0),
(339, 0, 0, 0, 'data/IMG_0367.jpg', '', 0, '', 172, 0),
(340, 0, 0, 0, 'data/IMG_0379.jpg', '', 0, '', 173, 0),
(341, 0, 0, 0, 'data/IMG_0380.jpg', '', 0, '', 174, 0),
(342, 0, 0, 0, 'data/IMG_0381.jpg', '', 0, '', 175, 0),
(343, 0, 0, 0, 'data/IMG_0383.jpg', '', 0, '', 176, 0),
(344, 0, 0, 0, 'data/IMG_0386.jpg', '', 0, '', 177, 0),
(345, 0, 0, 0, 'data/IMG_0387.jpg', '', 0, '', 178, 0),
(346, 0, 0, 0, 'data/IMG_0388.jpg', '', 0, '', 179, 0),
(347, 0, 0, 0, 'data/IMG_0389.jpg', '', 0, '', 180, 0),
(348, 0, 0, 0, 'data/IMG_0390.jpg', '', 0, '', 181, 0),
(349, 0, 0, 0, 'data/IMG_0392.jpg', '', 0, '', 182, 0),
(350, 0, 0, 0, 'data/IMG_0393.jpg', '', 0, '', 183, 0),
(351, 0, 0, 0, 'data/IMG_0394.jpg', '', 0, '', 184, 0),
(352, 0, 0, 0, 'data/IMG_0395.jpg', '', 0, '', 185, 0),
(353, 0, 0, 0, 'data/IMG_0396.jpg', '', 0, '', 186, 0),
(354, 0, 0, 0, 'data/IMG_0397.jpg', '', 0, '', 187, 0),
(355, 0, 0, 0, 'data/IMG_0399.jpg', '', 0, '', 188, 0),
(356, 0, 0, 0, 'data/IMG_0401.jpg', '', 0, '', 189, 0),
(357, 0, 0, 0, 'data/IMG_0402.jpg', '', 0, '', 190, 0),
(358, 0, 0, 0, 'data/IMG_0403.jpg', '', 0, '', 191, 0),
(359, 0, 0, 0, 'data/IMG_0327.jpg', '', 0, '', 192, 0),
(360, 0, 0, 0, 'data/IMG_0404.jpg', '', 0, '', 193, 0),
(361, 0, 0, 0, 'data/IMG_0405.jpg', '', 0, '', 194, 0),
(362, 0, 0, 0, 'data/IMG_0406.jpg', '', 0, '', 195, 0),
(363, 0, 0, 0, 'data/IMG_0407.jpg', '', 0, '', 196, 0),
(364, 0, 0, 0, 'data/IMG_0420.jpg', '', 0, '', 197, 0),
(365, 0, 0, 0, 'data/IMG_0422.jpg', '', 0, '', 198, 0),
(366, 0, 0, 0, 'data/IMG_0423.jpg', '', 0, '', 199, 0),
(367, 0, 0, 0, 'data/IMG_0425.jpg', '', 0, '', 200, 0),
(368, 0, 0, 0, 'data/IMG_0426.jpg', '', 0, '', 201, 0),
(369, 0, 0, 0, 'data/IMG_0427.jpg', '', 0, '', 202, 0),
(370, 0, 0, 0, 'data/IMG_0428.jpg', '', 0, '', 203, 0),
(371, 0, 0, 0, 'data/IMG_0429.jpg', '', 0, '', 204, 0),
(372, 0, 0, 0, 'data/IMG_0430.jpg', '', 0, '', 205, 0),
(373, 0, 0, 0, 'data/IMG_0431.jpg', '', 0, '', 206, 0),
(374, 0, 0, 0, 'data/IMG_0432.jpg', '', 0, '', 207, 0),
(375, 0, 0, 0, 'data/IMG_0433.jpg', '', 0, '', 208, 0),
(376, 0, 0, 0, 'data/IMG_0434.jpg', '', 0, '', 209, 0),
(377, 0, 0, 0, 'data/IMG_0435.jpg', '', 0, '', 210, 0),
(378, 0, 0, 0, 'data/IMG_0436.jpg', '', 0, '', 211, 0),
(379, 0, 0, 0, 'data/IMG_0437.jpg', '', 0, '', 212, 0),
(380, 0, 0, 0, 'data/IMG_0438.jpg', '', 0, '', 213, 0),
(381, 0, 0, 0, 'data/IMG_0440.jpg', '', 0, '', 214, 0),
(382, 0, 0, 0, 'data/IMG_0441.jpg', '', 0, '', 215, 0),
(383, 0, 0, 0, 'data/IMG_0443.jpg', '', 0, '', 216, 0),
(384, 0, 0, 0, 'data/IMG_0444.jpg', '', 0, '', 217, 0),
(385, 0, 0, 0, 'data/IMG_0446.jpg', '', 0, '', 218, 0),
(386, 0, 0, 0, 'data/IMG_0447.jpg', '', 0, '', 219, 0),
(387, 0, 0, 0, 'data/IMG_0448.jpg', '', 0, '', 220, 0),
(388, 0, 0, 0, 'data/IMG_0449.jpg', '', 0, '', 221, 0),
(389, 0, 0, 0, 'data/IMG_0450.jpg', '', 0, '', 222, 0),
(390, 0, 0, 0, 'data/IMG_0451.jpg', '', 0, '', 223, 0),
(391, 0, 0, 0, 'data/IMG_0452.jpg', '', 0, '', 224, 0),
(392, 0, 0, 0, 'data/IMG_0453.jpg', '', 0, '', 225, 0),
(393, 0, 0, 0, 'data/IMG_0454.jpg', '', 0, '', 226, 0),
(394, 0, 0, 0, 'data/IMG_0455.jpg', '', 0, '', 227, 0),
(395, 0, 0, 0, 'data/IMG_0456.jpg', '', 0, '', 228, 0),
(396, 0, 0, 0, 'data/IMG_0457.jpg', '', 0, '', 229, 0),
(397, 0, 0, 0, 'data/IMG_0458.jpg', '', 0, '', 230, 0),
(398, 0, 0, 0, 'data/IMG_0459.jpg', '', 0, '', 231, 0),
(399, 0, 0, 0, 'data/IMG_0459.jpg', '', 0, '', 232, 0),
(400, 0, 0, 0, 'data/IMG_0460.jpg', '', 0, '', 233, 0),
(401, 0, 0, 0, 'data/IMG_0461.jpg', '', 0, '', 234, 0),
(402, 0, 0, 0, 'data/IMG_0462.jpg', '', 0, '', 235, 0),
(403, 0, 0, 0, 'data/IMG_0463.jpg', '', 0, '', 236, 0),
(404, 0, 0, 0, 'data/IMG_0463.jpg', '', 0, '', 237, 0),
(405, 0, 0, 0, 'data/IMG_0464.jpg', '', 0, '', 238, 0),
(406, 0, 0, 0, 'data/IMG_0465.jpg', '', 0, '', 239, 0),
(407, 0, 0, 0, 'data/IMG_0467.jpg', '', 0, '', 240, 0),
(408, 0, 0, 0, 'data/IMG_0468.jpg', '', 0, '', 241, 0),
(409, 0, 0, 0, 'data/IMG_0469.jpg', '', 0, '', 242, 0),
(410, 0, 0, 0, 'data/IMG_0470.jpg', '', 0, '', 243, 0),
(411, 0, 0, 0, 'data/IMG_0471.jpg', '', 0, '', 244, 0),
(412, 0, 0, 0, 'data/IMG_0471.jpg', '', 0, '', 245, 0),
(413, 0, 0, 0, 'data/IMG_0472.jpg', '', 0, '', 246, 0),
(414, 0, 0, 0, 'data/IMG_0473.jpg', '', 0, '', 247, 0),
(415, 0, 0, 0, 'data/IMG_0474.jpg', '', 0, '', 248, 0),
(416, 0, 0, 0, 'data/IMG_0475.jpg', '', 0, '', 249, 0),
(417, 0, 0, 0, 'data/IMG_0476.jpg', '', 0, '', 250, 0),
(418, 0, 0, 0, 'data/IMG_0477.jpg', '', 0, '', 251, 0),
(419, 0, 0, 0, 'data/IMG_0478.jpg', '', 0, '', 252, 0),
(420, 0, 0, 0, 'data/IMG_0479.jpg', '', 0, '', 253, 0),
(421, 0, 0, 0, 'data/IMG_0480.jpg', '', 0, '', 254, 0),
(422, 0, 0, 0, 'data/IMG_0481.jpg', '', 0, '', 255, 0),
(423, 0, 0, 0, 'data/IMG_0482.jpg', '', 0, '', 256, 0),
(424, 0, 0, 0, 'data/IMG_0483.jpg', '', 0, '', 257, 0),
(425, 0, 0, 0, 'data/IMG_0484.jpg', '', 0, '', 258, 0),
(426, 0, 0, 0, 'data/IMG_0485.jpg', '', 0, '', 259, 0),
(427, 1, 0, 0, '43401big-banner-1.jpg', '', 1, '', 260, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_video`
--

CREATE TABLE `product_video` (
  `id` int(11) NOT NULL,
  `video_code` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `home` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `qeydiyyat`
--

CREATE TABLE `qeydiyyat` (
  `id` int(6) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `surname` varchar(20) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `parol` varchar(50) CHARACTER SET utf8 NOT NULL,
  `cins` int(2) NOT NULL,
  `vip` int(2) NOT NULL,
  `md5` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `qeydiyyat`
--

INSERT INTO `qeydiyyat` (`id`, `name`, `surname`, `email`, `parol`, `cins`, `vip`, `md5`) VALUES
(6, 'Ruslan', 'Axundov', 'admin@arash-holding.az', 'ruslan@@', 1, 1, ''),
(7, 'Məftun', 'Allahyarov', 'meftun.allahyarov@mail.ru', 'meftun2013', 1, 0, ''),
(8, 'ferid', 'xanbudaqov', 'Lmf202@mail.ru', '3100616', 1, 0, 'c9f0f895fb98ab9159f51fd0297e236d'),
(9, 'ruslan', 'axundov', 'raxundov@gmail.com', '123456', 1, 2, '45c48cce2e2d7fbdea1afc51c7c6ad26'),
(10, 'Efsane', 'Salahova', 'salahova.84@bk.ru', '4379725a', 2, 0, 'd3d9446802a44259755d38e6d163e820'),
(11, 'Inam', 'Qurbanov', 'vonabrug@gmail.com', 'mani1vonabrug', 1, 2, '6512bd43d9caa6e02c990b0a82652dca'),
(12, 'Faiq', 'Quliyev', 'faiq2087686@mail.ru', 'faiq992', 1, 0, 'c20ad4d76fe97759aa27a0c99bff6710'),
(13, 'Kamran', 'abdullayev', 'kamrancik55@mail.com', 'Kamran117', 1, 0, 'c51ce410c124a10e0db5e4b97fc2af39');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reklam`
--

CREATE TABLE `reklam` (
  `id` int(4) NOT NULL,
  `u_id` int(11) NOT NULL,
  `l_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `text` text NOT NULL,
  `ordering` int(4) NOT NULL,
  `url_tag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `seher`
--

CREATE TABLE `seher` (
  `id` int(4) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `l_id` tinyint(2) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `ordering` int(4) NOT NULL,
  `u_id` int(4) NOT NULL,
  `cat_id` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `seher`
--

INSERT INTO `seher` (`id`, `name`, `l_id`, `status`, `ordering`, `u_id`, `cat_id`) VALUES
(1275, '', 2, 0, 2, 2, 1),
(1274, 'vvvvvvvvvvvvv', 1, 0, 2, 2, 1),
(1273, '', 3, 0, 1, 1, 1),
(1272, '', 2, 0, 1, 1, 1),
(1271, 'ccccccccccccc', 1, 0, 1, 1, 1),
(1276, '', 3, 0, 2, 2, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE `slider` (
  `id` int(4) NOT NULL,
  `u_id` int(11) NOT NULL,
  `l_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `ordering` int(4) NOT NULL,
  `url_tag` varchar(255) NOT NULL,
  `tip` int(2) NOT NULL,
  `p_id` int(4) NOT NULL,
  `pos` int(2) NOT NULL,
  `text1` varchar(100) NOT NULL,
  `text2` varchar(100) NOT NULL,
  `link` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`id`, `u_id`, `l_id`, `s_id`, `photo`, `text`, `ordering`, `url_tag`, `tip`, `p_id`, `pos`, `text1`, `text2`, `link`) VALUES
(8, 2, 0, 0, '90472slide-1.jpg', '', 2, '', 1, 1, 0, '', '', ''),
(9, 3, 0, 0, '34375slide-1.png', '', 3, '', 1, 1, 0, '', '', ''),
(10, 4, 0, 0, '19162slide-2.jpg', '', 4, '', 1, 1, 0, '', '', ''),
(11, 5, 0, 0, '41379slide-3.jpg', '', 5, '', 1, 1, 0, '', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `front_image` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `src` varchar(400) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `l_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `tip` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `date` date NOT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `video`
--

INSERT INTO `video` (`id`, `name`, `text`, `front_image`, `src`, `l_id`, `status`, `tip`, `ordering`, `date`, `u_id`) VALUES
(1, 'video1', '<p>lorem ipsum dolor</p>', 'video_image/3695337572f6ac830b03.jpg', '//www.youtube.com/embed/wlbM5Sq7IZo?modestbranding=1', 1, 0, 0, 23, '2016-05-10', 1),
(2, '', '', 'video_image/3695337572f6ac830b03.jpg', '', 2, 0, 0, 23, '2016-05-10', 1),
(3, '', '', 'video_image/3695337572f6ac830b03.jpg', '', 3, 0, 0, 23, '2016-05-10', 1),
(4, 'video2', '<p>lorem ipsum dolor sit amet</p>', 'video_image/8999781572f7171806aa.jpg', '//www.youtube.com/embed/RRA50DL86WE', 1, 0, 0, 21, '2016-05-10', 2),
(5, '', '', 'video_image/8999781572f7171806aa.jpg', '', 2, 0, 0, 21, '2016-05-10', 2),
(6, '', '', 'video_image/8999781572f7171806aa.jpg', '', 3, 0, 0, 21, '2016-05-10', 2),
(7, 'video6', '<p>lorem lorem lorem</p>', 'video_image/784919957307d2419576.jpg', '//www.youtube.com/embed/wlbM5Sq7IZo', 1, 0, 0, 27, '2016-05-11', 4),
(8, '', '', 'video_image/784919957307d2419576.jpg', '', 2, 0, 0, 27, '2016-05-11', 4),
(9, '', '', 'video_image/784919957307d2419576.jpg', '', 3, 0, 0, 27, '2016-05-11', 4),
(10, 'video4', '<p>j ewijeeifj ieefeofi efiuy</p>', 'video_image/62532015731c0dba6238.jpg', '//www.youtube.com/embed/RRA50DL86WE', 1, 0, 0, 20, '2016-05-10', 5),
(11, '', '', 'video_image/62532015731c0dba6238.jpg', '', 2, 0, 0, 20, '2016-05-10', 5),
(12, '', '', 'video_image/62532015731c0dba6238.jpg', '', 3, 0, 0, 20, '2016-05-10', 5),
(13, 'video5', '<p>ejf i fewfo ioef</p>', 'video_image/98893935731c23125354.jpg', '//www.youtube.com/embed/wlbM5Sq7IZo', 1, 0, 0, 22, '2016-05-10', 6),
(14, '', '', 'video_image/98893935731c23125354.jpg', '', 2, 0, 0, 22, '2016-05-10', 6),
(15, '', '', 'video_image/98893935731c23125354.jpg', '', 3, 0, 0, 22, '2016-05-10', 6),
(16, 'video3', '<p>lorem ipsum</p>', 'video_image/16642895732fb4c7de99.jpg', '//www.youtube.com/embed/RRA50DL86WE', 1, 0, 0, 26, '2016-05-11', 7),
(17, '', '', 'video_image/16642895732fb4c7de99.jpg', '', 2, 0, 0, 26, '2016-05-11', 7),
(18, '', '', 'video_image/16642895732fb4c7de99.jpg', '', 3, 0, 0, 26, '2016-05-11', 7),
(19, 'video7', '<p>nfkfkf</p>', 'video_image/24148815732fbc3b3f2c.jpg', '//www.youtube.com/embed/wlbM5Sq7IZo', 1, 0, 0, 28, '2016-05-11', 8),
(20, '', '', 'video_image/24148815732fbc3b3f2c.jpg', '', 2, 0, 0, 28, '2016-05-11', 8),
(21, '', '', 'video_image/24148815732fbc3b3f2c.jpg', '', 3, 0, 0, 28, '2016-05-11', 8),
(25, 'video9', '<p>eewfekfewfj</p>', 'video_image/50995715732fbfbd2cf1.jpg', '//www.youtube.com/embed/RRA50DL86WE', 1, 0, 0, 30, '2016-05-11', 10),
(26, '', '', 'video_image/50995715732fbfbd2cf1.jpg', '', 2, 0, 0, 30, '2016-05-11', 10),
(27, '', '', 'video_image/50995715732fbfbd2cf1.jpg', '', 3, 0, 0, 30, '2016-05-11', 10),
(28, 'video8', '<p>kfiejf fefe</p>', 'video_image/91174615732fcd53fb82.jpg', '//www.youtube.com/embed/RRA50DL86WE', 1, 0, 0, 31, '2016-05-11', 11),
(29, '', '', 'video_image/91174615732fcd53fb82.jpg', '', 2, 0, 0, 31, '2016-05-11', 11),
(30, '', '', 'video_image/91174615732fcd53fb82.jpg', '', 3, 0, 0, 31, '2016-05-11', 11),
(31, 'video10', '<p>jenff euhfe kjh</p>', 'video_image/14024157332919d6818.jpg', '//www.youtube.com/embed/wlbM5Sq7IZo', 1, 0, 0, 32, '2016-05-11', 12),
(32, '', '', 'video_image/14024157332919d6818.jpg', '', 2, 0, 0, 32, '2016-05-11', 12),
(33, '', '', 'video_image/14024157332919d6818.jpg', '', 3, 0, 0, 32, '2016-05-11', 12);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `video_cat`
--

CREATE TABLE `video_cat` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `video_cat`
--

INSERT INTO `video_cat` (`id`, `u_id`, `cat_id`) VALUES
(1, 7, 3),
(2, 7, 4),
(3, 4, 3),
(4, 4, 5),
(5, 8, 4),
(6, 9, 4),
(7, 10, 3),
(8, 11, 3),
(9, 12, 4),
(10, 2, 4),
(11, 3, 4),
(12, 4, 4),
(13, 5, 4),
(14, 1, 3),
(15, 2, 4),
(16, 3, 4),
(17, 4, 5),
(18, 5, 3),
(19, 5, 4),
(20, 6, 5),
(21, 7, 4),
(22, 8, 3),
(23, 9, 3),
(24, 10, 3),
(25, 10, 4),
(26, 11, 4),
(27, 11, 5),
(28, 12, 4),
(29, 13, 3),
(30, 17, 3),
(31, 17, 3),
(32, 18, 4),
(33, 18, 3),
(34, 18, 3),
(35, 19, 4),
(36, 20, 3),
(37, 21, 3),
(38, 22, 3),
(39, 23, 3),
(40, 24, 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `viza`
--

CREATE TABLE `viza` (
  `id` int(4) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `l_id` tinyint(2) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `tip` tinyint(2) NOT NULL,
  `ordering` int(4) NOT NULL,
  `date` date NOT NULL,
  `u_id` int(4) NOT NULL,
  `url_tag` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `olke` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `viza`
--

INSERT INTO `viza` (`id`, `name`, `text`, `l_id`, `status`, `tip`, `ordering`, `date`, `u_id`, `url_tag`, `title`, `keyword`, `description`, `photo`, `olke`) VALUES
(1277, '', '<p>pppppppppp1111 ppppppppp ppppppp</p>', 1, 0, 0, 2, '2015-07-16', 1, 'pppppppp1111', '', '', '', '', 'ppppppp1111'),
(1280, '', '<p>dftgyhujiko</p>', 1, 0, 0, 1, '2015-07-16', 2, 'wesdrftgyhuj', '', '', '', '', 'asdfghjk'),
(1278, '', '', 2, 0, 0, 2, '2015-07-16', 1, '', '', '', '', '', ''),
(1279, '', '', 3, 0, 0, 2, '2015-07-16', 1, '', '', '', '', '', ''),
(1281, '', '', 2, 0, 0, 1, '2015-07-16', 2, '', '', '', '', '', ''),
(1282, '', '', 3, 0, 0, 1, '2015-07-16', 2, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `xeberler`
--

CREATE TABLE `xeberler` (
  `id` int(4) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `l_id` tinyint(2) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `tip` tinyint(2) NOT NULL,
  `ordering` int(4) NOT NULL,
  `date` date NOT NULL,
  `u_id` int(4) NOT NULL,
  `url_tag` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `bolme1` int(100) NOT NULL,
  `bolme2` int(100) NOT NULL,
  `bolme3` int(100) NOT NULL,
  `bolme4` int(100) NOT NULL,
  `bolme5` int(100) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkbox` int(2) NOT NULL,
  `cat_id` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `xeberler`
--

INSERT INTO `xeberler` (`id`, `name`, `text`, `l_id`, `status`, `tip`, `ordering`, `date`, `u_id`, `url_tag`, `title`, `bolme1`, `bolme2`, `bolme3`, `bolme4`, `bolme5`, `photo`, `checkbox`, `cat_id`) VALUES
(1, 'lorem', '<p>lorem ipsum lorem ipsum</p>', 1, 0, 0, 1, '2016-05-20', 1, '', '', 1, 0, 0, 0, 0, 'images/3902344573edae92423b.jpg', 0, 0),
(2, '', '', 2, 0, 0, 1, '2016-05-20', 1, '', '', 1, 0, 0, 0, 0, 'images/3902344573edae92423b.jpg', 0, 0),
(3, '', '', 3, 0, 0, 1, '2016-05-20', 1, '', '', 1, 0, 0, 0, 0, 'images/3902344573edae92423b.jpg', 0, 0),
(4, 'lorem ipsum', '<p>lorem ipsum lorem lorem</p>', 1, 0, 0, 2, '2016-05-20', 2, '', '', 1, 0, 0, 0, 0, 'images/497854573edb6355595.jpg', 0, 0),
(5, '', '', 2, 0, 0, 2, '2016-05-20', 2, '', '', 1, 0, 0, 0, 0, 'images/497854573edb6355595.jpg', 0, 0),
(6, '', '', 3, 0, 0, 2, '2016-05-20', 2, '', '', 1, 0, 0, 0, 0, 'images/497854573edb6355595.jpg', 0, 0),
(7, 'lorem', '<p>lorem lorem lorem lorem</p>', 1, 0, 0, 3, '2016-05-20', 3, '', '', 0, 1, 0, 0, 0, 'images/9539097573edb818d86d.jpg', 0, 0),
(8, '', '', 2, 0, 0, 3, '2016-05-20', 3, '', '', 0, 1, 0, 0, 0, 'images/9539097573edb818d86d.jpg', 0, 0),
(9, '', '', 3, 0, 0, 3, '2016-05-20', 3, '', '', 0, 1, 0, 0, 0, 'images/9539097573edb818d86d.jpg', 0, 0),
(10, 'lorem', '<p>lorem lorem ipsum lorem</p>', 1, 0, 0, 4, '2016-05-20', 4, '', '', 1, 0, 0, 0, 0, 'images/111278573edba92e4c9.jpg', 0, 0),
(11, '', '', 2, 0, 0, 4, '2016-05-20', 4, '', '', 1, 0, 0, 0, 0, 'images/111278573edba92e4c9.jpg', 0, 0),
(12, '', '', 3, 0, 0, 4, '2016-05-20', 4, '', '', 1, 0, 0, 0, 0, 'images/111278573edba92e4c9.jpg', 0, 0),
(13, 'lorem ipsum', '<p>lorem ipsum dolor sit amet</p>', 1, 0, 0, 5, '2016-05-20', 5, '', '', 1, 0, 0, 0, 0, 'images/454258573edbc99d746.jpg', 0, 0),
(14, '', '', 2, 0, 0, 5, '2016-05-20', 5, '', '', 1, 0, 0, 0, 0, 'images/454258573edbc99d746.jpg', 0, 0),
(15, '', '', 3, 0, 0, 5, '2016-05-20', 5, '', '', 1, 0, 0, 0, 0, 'images/454258573edbc99d746.jpg', 0, 0),
(16, 'lorem ipsum', '<p>lorem ipsum dolor sit amet</p>', 1, 0, 0, 6, '2016-05-20', 6, '', '', 1, 0, 0, 0, 0, 'images/1911539573edbeeb3de3.jpg', 0, 0),
(17, '', '', 2, 0, 0, 6, '2016-05-20', 6, '', '', 1, 0, 0, 0, 0, 'images/1911539573edbeeb3de3.jpg', 0, 0),
(18, '', '', 3, 0, 0, 6, '2016-05-20', 6, '', '', 1, 0, 0, 0, 0, 'images/1911539573edbeeb3de3.jpg', 0, 0),
(19, 'lorem ipsum', '<p>lorem ipsum dolor sit amet</p>', 1, 0, 0, 7, '2016-05-20', 7, '', '', 1, 0, 0, 0, 0, 'images/8884235573edc25456c1.jpg', 0, 0),
(20, '', '', 2, 0, 0, 7, '2016-05-20', 7, '', '', 1, 0, 0, 0, 0, 'images/8884235573edc25456c1.jpg', 0, 0),
(21, '', '', 3, 0, 0, 7, '2016-05-20', 7, '', '', 1, 0, 0, 0, 0, 'images/8884235573edc25456c1.jpg', 0, 0),
(22, 'testing', '<p>testing</p>', 1, 0, 0, 8, '2016-05-20', 8, '', '', 0, 1, 0, 0, 0, 'images/6420880573ee1a86fc9d.jpg', 0, 0),
(23, '', '', 2, 0, 0, 8, '2016-05-20', 8, '', '', 0, 1, 0, 0, 0, 'images/6420880573ee1a86fc9d.jpg', 0, 0),
(24, '', '', 3, 0, 0, 8, '2016-05-20', 8, '', '', 0, 1, 0, 0, 0, 'images/6420880573ee1a86fc9d.jpg', 0, 0),
(25, 'lorem ipsum', '<p>lorem ipsum</p>', 1, 0, 0, 9, '2016-05-20', 9, '', '', 1, 0, 0, 0, 0, 'images/146034573ee1d6125be.jpg', 0, 0),
(26, '', '', 2, 0, 0, 9, '2016-05-20', 9, '', '', 1, 0, 0, 0, 0, 'images/146034573ee1d6125be.jpg', 0, 0),
(27, '', '', 3, 0, 0, 9, '2016-05-20', 9, '', '', 1, 0, 0, 0, 0, 'images/146034573ee1d6125be.jpg', 0, 0),
(28, 'testing', '<p>testing&nbsp;testing&nbsp;testing</p>', 1, 0, 0, 10, '2016-05-20', 10, '', '', 0, 1, 0, 0, 0, 'images/9172338573ee4117d618.jpg', 0, 0),
(29, '', '', 2, 0, 0, 10, '2016-05-20', 10, '', '', 0, 1, 0, 0, 0, 'images/9172338573ee4117d618.jpg', 0, 0),
(30, '', '', 3, 0, 0, 10, '2016-05-20', 10, '', '', 0, 1, 0, 0, 0, 'images/9172338573ee4117d618.jpg', 0, 0),
(31, 'testing testing', '<p>testing&nbsp;testing&nbsp;testing</p>', 1, 0, 0, 11, '2016-05-20', 11, '', '', 0, 1, 0, 0, 0, 'images/8598571573ee4333c32e.jpg', 0, 0),
(32, '', '', 2, 0, 0, 11, '2016-05-20', 11, '', '', 0, 1, 0, 0, 0, 'images/8598571573ee4333c32e.jpg', 0, 0),
(33, '', '', 3, 0, 0, 11, '2016-05-20', 11, '', '', 0, 1, 0, 0, 0, 'images/8598571573ee4333c32e.jpg', 0, 0),
(34, 'testing', '<p>testing&nbsp;testing testing testing</p>', 1, 0, 0, 13, '2016-05-22', 12, '', '', 0, 0, 1, 0, 0, 'images/34505265741626c30e83.jpg', 0, 0),
(35, '', '', 2, 0, 0, 13, '2016-05-22', 12, '', '', 0, 0, 1, 0, 0, 'images/34505265741626c30e83.jpg', 0, 0),
(36, '', '', 3, 0, 0, 13, '2016-05-22', 12, '', '', 0, 0, 1, 0, 0, 'images/34505265741626c30e83.jpg', 0, 0),
(37, 'lorem ipsum', '<p>lorem ipsum dolor sit amet</p>', 1, 0, 0, 14, '2016-05-22', 13, '', '', 0, 0, 1, 0, 0, 'images/6243141574162f2dc5f0.jpg', 0, 0),
(38, '', '', 2, 0, 0, 14, '2016-05-22', 13, '', '', 0, 0, 1, 0, 0, 'images/6243141574162f2dc5f0.jpg', 0, 0),
(39, '', '', 3, 0, 0, 14, '2016-05-22', 13, '', '', 0, 0, 1, 0, 0, 'images/6243141574162f2dc5f0.jpg', 0, 0),
(40, 'lorem ipsum', '<p>lorem ipsum&nbsp;lorem ipsum&nbsp;lorem</p>', 1, 0, 0, 15, '2016-05-22', 14, '', '', 0, 0, 1, 0, 0, 'images/8448575574163191a125.jpg', 0, 0),
(41, '', '', 2, 0, 0, 15, '2016-05-22', 14, '', '', 0, 0, 1, 0, 0, 'images/8448575574163191a125.jpg', 0, 0),
(42, '', '', 3, 0, 0, 15, '2016-05-22', 14, '', '', 0, 0, 1, 0, 0, 'images/8448575574163191a125.jpg', 0, 0),
(43, 'lorem ipsum', '<p>lorem ipsum&nbsp;lorem ipsum</p>', 1, 0, 0, 16, '2016-05-22', 15, '', '', 0, 0, 1, 0, 0, 'images/237951657416331890b8.jpg', 0, 0),
(44, '', '', 2, 0, 0, 16, '2016-05-22', 15, '', '', 0, 0, 1, 0, 0, 'images/237951657416331890b8.jpg', 0, 0),
(45, '', '', 3, 0, 0, 16, '2016-05-22', 15, '', '', 0, 0, 1, 0, 0, 'images/237951657416331890b8.jpg', 0, 0),
(46, 'lorem', '<p>testing&nbsp;testing&nbsp;testing&nbsp;testing</p>', 1, 0, 0, 17, '2016-05-22', 16, '', '', 0, 0, 1, 0, 0, 'images/684221157416361c3823.jpg', 0, 0),
(47, '', '', 2, 0, 0, 17, '2016-05-22', 16, '', '', 0, 0, 1, 0, 0, 'images/684221157416361c3823.jpg', 0, 0),
(48, '', '', 3, 0, 0, 17, '2016-05-22', 16, '', '', 0, 0, 1, 0, 0, 'images/684221157416361c3823.jpg', 0, 0),
(49, 'jnfjrfj', '<p>kfewnfe fefef ef efee</p>', 1, 0, 0, 18, '2016-05-22', 17, '', '', 0, 0, 1, 0, 0, 'images/557821857416cf81cae3.jpg', 0, 0),
(50, '', '', 2, 0, 0, 18, '2016-05-22', 17, '', '', 0, 0, 1, 0, 0, 'images/557821857416cf81cae3.jpg', 0, 0),
(51, '', '', 3, 0, 0, 18, '2016-05-22', 17, '', '', 0, 0, 1, 0, 0, 'images/557821857416cf81cae3.jpg', 0, 0),
(52, 'lorem test', '<p>lorem test</p>', 1, 0, 0, 19, '2016-06-02', 18, '', '', 0, 0, 0, 1, 0, 'images/8786676575055f384238.jpg', 0, 0),
(53, '', '', 2, 0, 0, 19, '2016-06-02', 18, '', '', 0, 0, 0, 1, 0, 'images/8786676575055f384238.jpg', 0, 0),
(54, '', '', 3, 0, 0, 19, '2016-06-02', 18, '', '', 0, 0, 0, 1, 0, 'images/8786676575055f384238.jpg', 0, 0),
(55, 'lorem2', '<p>lorem2</p>', 1, 0, 0, 20, '2016-06-02', 19, '', '', 0, 0, 0, 1, 0, 'images/5466330575057afc140c.jpg', 0, 0),
(56, '', '', 2, 0, 0, 20, '2016-06-02', 19, '', '', 0, 0, 0, 1, 0, 'images/5466330575057afc140c.jpg', 0, 0),
(57, '', '', 3, 0, 0, 20, '2016-06-02', 19, '', '', 0, 0, 0, 1, 0, 'images/5466330575057afc140c.jpg', 0, 0),
(58, 'lorem3', '<p>lorem3</p>', 1, 0, 0, 21, '2016-06-02', 20, '', '', 0, 0, 0, 1, 0, 'images/6441002575057c2095a9.jpg', 0, 0),
(59, '', '', 2, 0, 0, 21, '2016-06-02', 20, '', '', 0, 0, 0, 1, 0, 'images/6441002575057c2095a9.jpg', 0, 0),
(60, '', '', 3, 0, 0, 21, '2016-06-02', 20, '', '', 0, 0, 0, 1, 0, 'images/6441002575057c2095a9.jpg', 0, 0),
(61, 'ejfejfeiow', '<p>mgkgo</p>', 1, 0, 0, 22, '2016-06-02', 21, '', '', 0, 0, 0, 0, 1, 'images/9186362575059428b81e.jpg', 0, 0),
(62, '', '', 2, 0, 0, 22, '2016-06-02', 21, '', '', 0, 0, 0, 0, 1, 'images/9186362575059428b81e.jpg', 0, 0),
(63, '', '', 3, 0, 0, 22, '2016-06-02', 21, '', '', 0, 0, 0, 0, 1, 'images/9186362575059428b81e.jpg', 0, 0),
(64, 'mefeef', '<p>ggrrk</p>', 1, 0, 0, 23, '2016-06-02', 22, '', '', 0, 0, 0, 0, 1, 'images/4420635750595370d3e.jpg', 0, 0),
(65, '', '', 2, 0, 0, 23, '2016-06-02', 22, '', '', 0, 0, 0, 0, 1, 'images/4420635750595370d3e.jpg', 0, 0),
(66, '', '', 3, 0, 0, 23, '2016-06-02', 22, '', '', 0, 0, 0, 0, 1, 'images/4420635750595370d3e.jpg', 0, 0),
(67, 'fefjeif', '<p>kmfejfief</p>', 1, 0, 0, 24, '2016-06-02', 23, '', '', 0, 0, 0, 0, 1, 'images/792999057505967805a0.jpg', 0, 0),
(68, '', '', 2, 0, 0, 24, '2016-06-02', 23, '', '', 0, 0, 0, 0, 1, 'images/792999057505967805a0.jpg', 0, 0),
(69, '', '', 3, 0, 0, 24, '2016-06-02', 23, '', '', 0, 0, 0, 0, 1, 'images/792999057505967805a0.jpg', 0, 0),
(70, 'mfefei', '<p>miefeef</p>', 1, 0, 0, 25, '2016-06-02', 24, '', '', 0, 0, 0, 0, 1, 'images/18316635750597aae386.jpg', 0, 0),
(71, '', '', 2, 0, 0, 25, '2016-06-02', 24, '', '', 0, 0, 0, 0, 1, 'images/18316635750597aae386.jpg', 0, 0),
(72, '', '', 3, 0, 0, 25, '2016-06-02', 24, '', '', 0, 0, 0, 0, 1, 'images/18316635750597aae386.jpg', 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `xeberler_photo`
--

CREATE TABLE `xeberler_photo` (
  `id` int(4) NOT NULL,
  `u_id` int(11) NOT NULL,
  `l_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `ordering` int(4) NOT NULL,
  `url_tag` varchar(255) NOT NULL,
  `p_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `xeberler_photo`
--

INSERT INTO `xeberler_photo` (`id`, `u_id`, `l_id`, `s_id`, `photo`, `text`, `ordering`, `url_tag`, `p_id`) VALUES
(614, 1, 0, 0, '582501 (2).jpg', '', 1, '', 1),
(615, 2, 0, 0, '438681 (23).jpg', '', 2, '', 2),
(616, 3, 0, 0, '576161 (12).jpg', '', 3, '', 2);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`con`);

--
-- Tablo için indeksler `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `a_menu`
--
ALTER TABLE `a_menu`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `bilet`
--
ALTER TABLE `bilet`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `blog_cat`
--
ALTER TABLE `blog_cat`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `blok`
--
ALTER TABLE `blok`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `coment`
--
ALTER TABLE `coment`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `gallery_photo`
--
ALTER TABLE `gallery_photo`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `gal_cat`
--
ALTER TABLE `gal_cat`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `jurnal`
--
ALTER TABLE `jurnal`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `langs`
--
ALTER TABLE `langs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `linkler`
--
ALTER TABLE `linkler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `olke`
--
ALTER TABLE `olke`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Tablo için indeksler `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `otel`
--
ALTER TABLE `otel`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `otel_cat`
--
ALTER TABLE `otel_cat`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `otel_photo`
--
ALTER TABLE `otel_photo`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `product_cat`
--
ALTER TABLE `product_cat`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `product_cat_video`
--
ALTER TABLE `product_cat_video`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `product_photo`
--
ALTER TABLE `product_photo`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `product_video`
--
ALTER TABLE `product_video`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `qeydiyyat`
--
ALTER TABLE `qeydiyyat`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `reklam`
--
ALTER TABLE `reklam`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `seher`
--
ALTER TABLE `seher`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `video_cat`
--
ALTER TABLE `video_cat`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `viza`
--
ALTER TABLE `viza`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `xeberler`
--
ALTER TABLE `xeberler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `xeberler_photo`
--
ALTER TABLE `xeberler_photo`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `con` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Tablo için AUTO_INCREMENT değeri `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
--
-- Tablo için AUTO_INCREMENT değeri `a_menu`
--
ALTER TABLE `a_menu`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Tablo için AUTO_INCREMENT değeri `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Tablo için AUTO_INCREMENT değeri `bilet`
--
ALTER TABLE `bilet`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1277;
--
-- Tablo için AUTO_INCREMENT değeri `blog_cat`
--
ALTER TABLE `blog_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- Tablo için AUTO_INCREMENT değeri `blok`
--
ALTER TABLE `blok`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Tablo için AUTO_INCREMENT değeri `coment`
--
ALTER TABLE `coment`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Tablo için AUTO_INCREMENT değeri `email`
--
ALTER TABLE `email`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=698;
--
-- Tablo için AUTO_INCREMENT değeri `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `gallery_photo`
--
ALTER TABLE `gallery_photo`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `gal_cat`
--
ALTER TABLE `gal_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Tablo için AUTO_INCREMENT değeri `jurnal`
--
ALTER TABLE `jurnal`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `langs`
--
ALTER TABLE `langs`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Tablo için AUTO_INCREMENT değeri `linkler`
--
ALTER TABLE `linkler`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=871;
--
-- Tablo için AUTO_INCREMENT değeri `olke`
--
ALTER TABLE `olke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- Tablo için AUTO_INCREMENT değeri `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12581;
--
-- Tablo için AUTO_INCREMENT değeri `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13555;
--
-- Tablo için AUTO_INCREMENT değeri `otel`
--
ALTER TABLE `otel`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Tablo için AUTO_INCREMENT değeri `otel_cat`
--
ALTER TABLE `otel_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- Tablo için AUTO_INCREMENT değeri `otel_photo`
--
ALTER TABLE `otel_photo`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=602;
--
-- Tablo için AUTO_INCREMENT değeri `product`
--
ALTER TABLE `product`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3257;
--
-- Tablo için AUTO_INCREMENT değeri `product_cat`
--
ALTER TABLE `product_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
--
-- Tablo için AUTO_INCREMENT değeri `product_cat_video`
--
ALTER TABLE `product_cat_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Tablo için AUTO_INCREMENT değeri `product_photo`
--
ALTER TABLE `product_photo`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=428;
--
-- Tablo için AUTO_INCREMENT değeri `product_video`
--
ALTER TABLE `product_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `qeydiyyat`
--
ALTER TABLE `qeydiyyat`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Tablo için AUTO_INCREMENT değeri `reklam`
--
ALTER TABLE `reklam`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `seher`
--
ALTER TABLE `seher`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1277;
--
-- Tablo için AUTO_INCREMENT değeri `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Tablo için AUTO_INCREMENT değeri `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- Tablo için AUTO_INCREMENT değeri `video_cat`
--
ALTER TABLE `video_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- Tablo için AUTO_INCREMENT değeri `viza`
--
ALTER TABLE `viza`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1283;
--
-- Tablo için AUTO_INCREMENT değeri `xeberler`
--
ALTER TABLE `xeberler`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- Tablo için AUTO_INCREMENT değeri `xeberler_photo`
--
ALTER TABLE `xeberler_photo`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=617;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
