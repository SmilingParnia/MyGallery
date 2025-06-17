-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2025 at 09:54 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_land`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `b_id` int(10) NOT NULL,
  `b_name` varchar(100) NOT NULL,
  `b_auther` varchar(100) NOT NULL,
  `b_price` int(11) NOT NULL,
  `b_image` varchar(100) NOT NULL,
  `b_detail` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`b_id`, `b_name`, `b_auther`, `b_price`, `b_image`, `b_detail`) VALUES
(1, 'معجزه شکرگزاری', 'راندا برن', 120000, 'b1.jpg', 'کتاب معجزه شکرگزاری یکی از برترین کتاب های معروف انگیزشی در دنیا و جز ده کتاب برتر دنیا شناخته می شود. این کتاب اثر راندا برن نویسنده و سخنران انگیزشی در دنیا نوشته شده است. راندا برن در این کتاب به ما یادآور می شود که چگونه می توان با شکرگزاری از نعمت های کوچک و بزرگ زندگی به صلح و آرامش درونی رسید.'),
(2, 'ملت عشق', 'الیف شافاک', 200000, 'b2.jpg', 'کتاب ملت عشق رمانی عاشقانه در فهرست بهترین رمان های جهان نوشته الیف شافاک است. این رمان معروف درباره است که داستان دو زن، یکی معاصر و دیگری تاریخی را روایت می‌کند که از طریق یک کتاب به هم متصل می‌شوند.'),
(3, 'صدسال تنهایی', 'گابریل گارسیا مارکز', 230000, 'b3.jpg', 'کتاب صد سال تنهایی پرفروش ترین کتاب به سبک رئالبسم جادویی و جز بهترین کتاب های دنیا نوشته گابریل گارسیا مارکز رمانی است که داستان خانواده بوئندیا و شهر ماکوندو را که آنها تأسیس کرده اند را روایت می کند.'),
(4, 'شازده کوچولو', 'آنتوان دوسنت اگزوپری', 150000, 'b4.jpg', 'این رمان داستانی تکان دهنده است که مضامین بی گناهی، از دست دادن، و اهمیت ارتباط انسانی را بررسی می کند. داستان با سادگی و ظرافت روایت می‌شود و مضامین عمیق فلسفه در پس جمله های ساده و بعضا کودکانه شخصیت ها بیان می شود.'),
(5, 'کیمیاگر ', 'پائولو کوئیلو ', 170000, 'b5.jpg', 'کتاب کیمیاگر از جذاب ترین کتاب های دنیا و یکی از کتاب های معروف دنیا اثر پائولو کوئیلو نویسنده برزیلی و یکی از پرفروش ترین نویسندگان جهان است. کیمیاگر بیش از 65 میلیون نسخه فروخته و به 80 زبان ترجمه شده است. آثار کوئیلو به خاطر مضامین معنوی و پیام‌های الهام‌بخش خود شناخته می‌شوند.'),
(6, 'راز داوینچی', 'دن براون', 135000, 'b6.jpg', 'تاب راز داوینچی رمانی از دن براون پرفروش ترین کتاب جنایی تاریخ است که در سال 2003 منتشر شد و به سرعت به یکی از معروف ترین کتاب های دنیا تبدیل شد به طوری که امروزه در رده کتاب های معروف دنیا قرار می گیرد. این کتاب داستان رابرت لنگدن، استاد نمادشناسی مذهبی در دانشگاه هاروارد را دنبال می کند که توطئه ای را از کلیسای کاتولیک کشف می کند.'),
(7, 'داستان دو شهر', 'چارلز دیکنز', 165000, 'b7.jpg', 'کتاب داستان دوشهر از کتاب های برتر تاریخ یک رمان تاریخی نوشته چارلز دیکنز است که در سال 1859 منتشر شده است. داستان این رمان در لندن و پاریس قبل و در طول انقلاب فرانسه می گذرد و داستان دو مرد به نام های چارلز دارنی و سیدنی کارتن را روایت می کند که در عشق با لوسی مانت است.'),
(8, 'مزرعه حیوانات', 'جورج اورول', 189000, 'b8.jpg', 'این رمان تفسیری بر انقلاب روسیه و ظهور استالینیسم و همچنین نقدی است بر خطرات توتالیتاریسم و سوء استفاده از قدرت. مزرعه حیوانات از طریق به تصویر کشیدن شخصیت های حیوانات و مبارزات آنها، مضامین فساد سیاسی، تبلیغات و دستکاری زبان را بررسی می کند.'),
(9, 'و آنگاه هیچ کس نماند', ' آگاتا کریستی', 159000, 'b9.jpg', 'این رمان به طور گسترده به عنوان یکی از بزرگترین آثار کریستی شناخته می شود و یک رمان کلاسیک در ژانر معمایی است. از طریق توطئه پیچیده و فضای پرتعلیق خود، و آنگاه هیچ کس نماند خوانندگان را تا پایان در بی خبری نگاه می دارد. این رمان مضامین گناه، عدالت و ماهیت شر را بررسی می کند.'),
(10, 'باشگاه پنج صبحی ها', 'رابین شارما', 198000, 'b10.jpg', 'ین کتاب داستان یک هنرمند مبارز و یک کارآفرین را روایت می کند که با یک مربی کاریزماتیک آشنا می شود که اصول باشگاه 5 صبح را به آنها آموزش می دهد. ساختار این رمان حول درس هایی است که آنها می آموزند و تغییراتی است که آنها با اتخاذ اصول باشگاه 5 صبح متحمل می شوند.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `realname` varchar(80) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(60) NOT NULL,
  `type` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`realname`, `username`, `password`, `email`, `type`) VALUES
('ادمین', 'admin', 'admin', 'admin@gmail.com', 1),
('مونا', 'mona234', '1234', 'mmdd@gmail.com', 0),
('مینا', 'minammm', '321', 'mina@aaa.com', 0),
('علی', 'ali_mm', '432', 'ali@yahoo.com', 0),
('مینا', 'mina123', '1234', 'mina@gmail.com', 0),
('مهسا', 'mahsa87', '543', 'mahsa@gmail.com', 0),
('مهسا', 'mahsa123', '123', 'mahsa@gmail.com', 0),
('بابک', 'babak123', '123', 'bbk111@gmail.com', 0),
('سینا', 'sina145', '123', 'sina@gmail.com', 0),
('مینو', 'minoo90', '123', 'minoo@gmail.com', 0),
('زهرا', 'zra123', '123', 'zahra@gmail.com', 0),
('بابک', 'bbk123', '234', 'bbk@gmail.com', 0),
('مینو', 'minoo123', '678', 'minoo@gmail.com', 0),
('امیر', 'amir123', '345', 'amir@yahoo.com', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `b_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1202;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
