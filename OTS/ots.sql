-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2022 at 06:28 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2020-05-11 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(1, 1, 'test@gmail.com', '2020-07-11', '2020-07-18', 'I want this package.', '2020-07-08 06:38:36', 2, 'u', '2020-07-08 06:53:45'),
(2, 2, 'test@gmail.com', '2020-07-10', '2020-07-13', 'There is some discount', '2020-07-08 06:43:25', 1, NULL, '2020-07-08 06:52:44'),
(3, 4, 'abir@gmail.com', '2020-07-11', '2020-07-15', 'When I get conformation', '2020-07-08 06:44:39', 2, 'a', '2020-07-08 06:49:55'),
(4, 1, 'ritam98@gmail.com', '2022-09-12', '2022-09-17', '789', '2022-09-12 15:10:07', 0, NULL, NULL),
(5, 9, 'ritam98@gmail.com', '2022-09-13', '2022-09-23', 'heloo', '2022-09-13 01:12:11', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'Jone Paaire', 'jone@gmail.com', '4646464646', 'Enquiry for Manali Trip', 'Kindly provide me more offer.', '2020-07-08 06:30:32', 1),
(2, 'Kishan Twaerea', 'kishan@gmail.com', '6797947987', 'Enquiry', 'Any Offer for North Trip', '2020-07-08 06:31:38', NULL),
(3, 'Jacaob', 'Jai@gmail.com', '1646689721', 'Any offer for North', 'Any Offer for north', '2020-07-08 06:32:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(1, NULL, NULL, NULL, '2020-07-08 06:33:20', NULL, NULL),
(2, NULL, NULL, NULL, '2020-07-08 06:33:56', NULL, NULL),
(3, NULL, NULL, NULL, '2020-07-08 06:34:20', NULL, NULL),
(4, NULL, NULL, NULL, '2020-07-08 06:34:38', NULL, NULL),
(5, NULL, NULL, NULL, '2020-07-08 06:35:06', NULL, NULL),
(6, 'test@gmail.com', 'Booking Issues', 'I am not able to book package', '2020-07-08 06:36:03', 'Ok, We will fix the issue asap', '2020-07-08 06:55:22'),
(7, 'test@gmail.com', 'Refund', 'I want my refund', '2020-07-08 06:56:29', NULL, NULL),
(8, NULL, NULL, NULL, '2022-09-12 08:35:42', NULL, NULL),
(9, NULL, NULL, NULL, '2022-09-12 08:38:17', NULL, NULL),
(10, 'ritam98@gmail.com', 'Booking Issues', 'booking problem', '2022-09-12 08:52:09', NULL, NULL),
(11, 'ritam98@gmail.com', 'Booking Issues', 'booking problem', '2022-09-12 09:01:50', NULL, NULL),
(12, 'ritam98@gmail.com', 'Booking Issues', 'booking problem', '2022-09-12 13:14:41', 'Your issue has been solved', '2022-09-13 01:08:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '										<p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">(1) ACCEPTANCE OF TERMS</font><br><br></strong>\r\nROLE OF Odisha TravelScape AND LIMITATION OF LIABILITY OF Odisha TravelScape\r\nOdisha TravelScape acts as a facilitator and merely provides an online platform for the User to select and book a particular hotel. Hotels in this context include all categories of accommodations such as hotels, homestays, bed and breakfast stays, farmhouses, and any other alternate accommodations.\r\nAll the information pertaining to the hotel including the category of the hotel, images, room type, amenities, and facilities available at the hotel are as per the information provided by the hotel to Odisha TravelScape. This information is for reference only. Any discrepancy that may exist between the website pictures and actual settings of the hotel shall be raised by the User with the hotel directly and shall be resolved between the User and the hotel. Odisha TravelScape will have no responsibility in that process of resolution, and shall not take any liability for such discrepancies. </font></p>\r\n										'),
(2, 'privacy', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Information that you share on the website is kept strictly confidential and fully secure. We follow generally accepted industry standards to protect the personal information submitted to us, both during transmission and once we receive it.\r\n\r\nNo method of transmission over the Internet, or method of electronic storage, is 100% secure, however. Therefore, while we strive to use commercially acceptable means to protect your personal information, we cannot guarantee its absolute security. Only authorized persons are permitted to access your personal information. All authorized persons must abide by security, privacy, and confidentiality agreements, rules and laws.</span>\r\n										'),
(3, 'aboutus', '<div><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; text-align: justify; font-weight: bold;\">Welcome to Tourism Management System!!!</span></div><span style=\"font-family: &quot;courier new&quot;;\"><span style=\"color: rgb(0, 0, 0); font-size: 15px; text-align: justify;\">Since then, our courteous and committed team members have always ensured a pleasant and enjoyable tour for the clients. This arduous effort has enabled Shreya Tour &amp; Travels to be recognized as a dependable Travel Solutions provider with three offices Delhi.</span><span style=\"color: rgb(80, 80, 80); font-size: 13px;\">&nbsp;We have got packages to suit the discerning traveler\'s budget and savor. Book your dream vacation online. Supported quality and proposals of our travel consultants, we have a tendency to welcome you to decide on from holidays packages and customize them according to your plan.</span></span>'),
(11, 'contact', '																														<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address: Berhampur - 761003</span><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Email: odishatravelscape@gmail.com</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Contact no : 9890456767\r\n </span>\r\n																				\r\n										</div>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Jaganath temple', 'Group Package', 'Puri', 10000, ' Round trip Economy class airfare valid for the duration of the holiday - Airport taxes - Accommodation for 3 nights in Paris and 3 nights in scenic Switzerland - Enjoy continental breakfasts every morning - Enjoy 5 Indian dinners in Mainland Europe - Exp', 'Pick this holiday for a relaxing vacation in Paris and Switzerland. Your tour embarks from Paris. Enjoy an excursion to popular attractions like the iconic Eiffel Tower. After experiencing the beautiful city, you will drive past mustard fields through Burgundy to reach Switzerland. While there, you can opt for a tour to Interlaken and then to the Trummelbach Falls. Photostop at Zurich Lake and a cable car ride to Mt. Titlis are the main highlights of the holiday.', 'jagannath-temple-puri.png', '2020-07-08 05:21:58', '2022-09-13 01:13:14'),
(2, 'SHIMILIPAL', 'Family Package', 'MAYURBHANJ', 15000, 'Enjoy the scenic shimilipal, adventurous bhimkund and devkund . accomodation in mayurbhanj town for 3 nights .  Enjoy breakfasts every morning - Enjoy 5 odia thali as dinner in mayurbhanj. ', 'Similipal Bio-sphere covering a vast are of 2750 sq. km out of which 303 sq. km from the core area, \r\nthick biosphere reserve is a sanctuary and one of the Tiger Projects and National parks of India.\r\n With wide range of rain falls and edaphic variations, range from dry deciduous to moist green forests, it is suitable to different species of flora and fauna. \r\nAbout 1076 species of mammals, 29 types of reptiles and 231 species of birds are the proud possession of this plateau. Average mean elevation of Similipal is 900 meters.\r\n Tall and luxuriant Sal Trees in large numbers stand like sentries. The handsome peaks of Khairiburu (1178 meters), Meghasani (1158 meters) and others welcome like smiling \r\nreceptionists from the emerald heights. \r\nSweet scented Champak flowers freshen the air.', 'Similipal-Tiger-Reserve.jpg.jpg', '2020-07-08 05:37:40', '2022-09-12 14:38:23'),
(3, 'Bhubaneswar', 'Group Package', 'Lingaraj Temple,Khandagiri and Udaygiri Caves,Nandankanan Zoological Park', 25000, 'enjoy the capital city of ODISHA by exploring the city.Accomodation in bhubaneswar town for 3 nights .  Enjoy breakfasts every morning - Enjoy the best food available in bhubaneswar .', 'Some of the finest temples, including the Lingaraja Temple and Mukteswar Temple, are situated in Bhubaneswar. \r\nNearby places of interest include the holy pilgrimage town of Puri and Gopalpur-on-Sea, a peaceful ocean-side village.\r\n The State Museum, Bindu Sarovara and Nandan Kanan are other touristic attractions.', '376px-Lingaraj_Temple_complex_at_dusk_during_Shivratri_2020.jpg', '2020-07-08 05:41:07', '2022-09-12 14:36:28'),
(4, 'BHITARKANIKA', 'Family Package', 'Kendrapara', 10000, 'Free Wi-fi, Free pick up and drop facility,', 'Bhitarkanika National Park is a 145 km2 (56 sq mi) large national park in northeast Kendrapara district in Odisha in eastern India. It was designated on 16 September 1998 and obtained the status of a Ramsar site on 19 August 2002. The area is also been designated as second Ramsar site of the State after the Chilika Lake. It is surrounded by Bhitarkanika Wildlife Sanctuary, which spread over 672 km2 (259 sq mi). Gahirmatha Beach and Marine Sanctuary are to the east, separating swamp region and mangroves from the Bay of Bengal. The national park and wildlife sanctuary is inundated by the rivers Brahmani, Baitarani, Dhamra, Pathsala. It hosts many mangrove species, and is the second largest mangrove ecosystem in India.', 'bhitarkanika_national_park_facts.jpg', '2020-07-08 05:45:58', '2022-09-12 15:04:48'),
(5, 'Konark', 'Family', 'Konark', 8000, 'Free pick up and drop facility, Free Wi-fi, Free breakfast', 'Konark Sun Temple is a 13th-century CE (year 1250) Sun temple at Konark about 35 kilometres (22 mi) northeast from Puri city on the coastline in Puri district, Odisha, India.[1][2] The temple is attributed to king Narasimhadeva I of the Eastern Ganga dynasty about 1250 CE.[3][4]\r\n\r\nDedicated to the Hindu Sun God Surya, what remains of the temple complex has the appearance of a 100-foot (30 m) high chariot with immense wheels and horses, all carved from stone. Once over 200 feet (61 m) high,[1][5] much of the temple is now in ruins, in particular the large shikara tower over the sanctuary; at one time this rose much higher than the mandapa that remains. The structures and elements that have survived are famed for their intricate artwork, iconography, and themes, including erotic kama and mithuna scenes. Also called the Surya Devalaya, it is a classic illustration of the Odisha style of Architecture or Kalinga architecture.[1][6]', 'about-konark (1).jpg', '2020-07-08 05:49:13', '2022-09-12 14:49:52'),
(6, 'Berahmpur', 'Group', 'Tara Tarini Temple,Gopalpur Sea Beach', 12000, 'Free Breakfast, Free Pick up drop facility', 'Brahmapur or Berhampur as it is called, is the largest city and gateaway to Southern Odisha. The dialect and culture of Southern Odisha has a distinct South Indian touch which can be attributed that it shares its borders with Andhra Pradesh and also the fact that after the British annexed Ganjam from the French in 1759 (in the battle of Deccan), the district was Governed by the Madras Presidency under the aegis of the British Empire in India.', 'brahmapur_gallery2.jpg', '2020-07-08 05:51:26', '2022-09-12 14:53:29'),
(7, 'Cuttack', 'Family Package', 'Dhabaleshwar,Barabati Fort', 10000, 'Breakfast,  Accommodation » Pick-up » Drop » Sightseeing', 'Referred to as the cultural capital of Odisha, Cuttack is a commercial city with plenty of impressive tourist attractions.\r\n\r\nCuttack is the second-largest city in Odisha and the former capital as well. Local handicrafts of this state are displayed and traded in this very city. Cuttack is always buzzing with cultural activities and plays host to a variety of festivals like the Baliyatra, which commemorates the ancient trade links the countries like Java, Bali and Sumatra, Durga Puja and the Kite Festival which is held in the month of January.', 'CUTTACK.jpg', '2020-07-08 05:54:42', '2022-09-12 14:57:09'),
(8, 'Sambalpur', 'Family Packages', 'Hirakud Dam,  Samaleswari Temple', 14000, 'Free Breakfast, Free Wi-fi', 'Sambalpur is the gateway to the western zone of Orissa. It abounds in prolific rivers, lavish hills, lush green forests and affluent wildlife. It is a beautiful amalgamation of modernity and culture. Holding a significant historical importance, the place also has a flourishing textile and handloom industry popular for its unique patterns and style. In addition to that, Sambalpur has a flourishing tribal life with exclusive exquisite folk songs-dances and culture. Sambalpur got its name from Devi Samaleswari who is the main goddess of the region. One can also visit wildlife parks here to enjoy the beauty of nature that Sambalpur has in plenty. The area is known for the world famous Hirakud Dam which is the main attraction for the tourists here.', 'SAMBALPUR.jpg', '2020-07-08 06:05:24', '2022-09-12 15:00:26'),
(9, 'Baripada ', 'Family Package', 'Jagannath Temple Baripada, Baripada museum', 15000, 'Free Wi-fi, Free pickup and drop facility', 'At a distance of 248km from Kolkata and 256km from Bhubaneshwar, Baripada is a city, recognised by its beautiful culture and an essence of purity in nature. Its Rath Yatra is considered the biggest and oldest after Puri and thus Baripada is also known as Dwitiya Srikhetra (Second Puri)', 'Jagannath_Temple_baripada_1_20180412162512.jpg', '2020-07-08 06:07:48', '2022-09-12 15:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(8, 'ritam ', '7878787878', 'ritam54@gmail.com', 'ea35240da97f5acb81e981e01d5718c4', '2022-09-12 08:35:42', NULL),
(9, 'ritam', '8765489988', 'ritam98@gmail.com', 'f3d64d22a5a64fa46bb1f85a283f808a', '2022-09-12 08:38:17', NULL),
(13, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2022-09-13 01:04:07', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
