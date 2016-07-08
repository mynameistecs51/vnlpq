-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2016 at 05:10 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vnlpq`
--

-- --------------------------------------------------------

--
-- Table structure for table `docupload`
--

CREATE TABLE IF NOT EXISTS `docupload` (
  `id_upload` int(11) NOT NULL,
  `upload_title` text COLLATE ucs2_unicode_ci NOT NULL,
  `upload_file` text COLLATE ucs2_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=ucs2 COLLATE=ucs2_unicode_ci;

--
-- Dumping data for table `docupload`
--

INSERT INTO `docupload` (`id_upload`, `upload_title`, `upload_file`) VALUES
(2, 'กำหนดการแถลงข่าว โครงการฯ วันที่ 12 ก.ค. 2559', '060716085250.pdf'),
(3, 'แผ่นพับประชาสัมพันธ์โครงการฯ', '070716112114.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id_news` int(11) NOT NULL,
  `news_title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `news_detail` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id_news`, `news_title`, `news_detail`) VALUES
(4, 'ส่งมอบสปอต (Spot) ประชาสัมพันธ์โครงการฯ ณ สถานีวิทยุ อสมท 91.50 MHz จังหวัดอุดรธานี', 'วันที่ 4 กรกฎาคม 2559 ผศ.วรวัฒน์ ทิพจ้อย นักวิจัยสาขาอาชีพ โครงการจัดทำมาตรฐานอาชีพและคุณวุฒิวิชาชีพ สาขาวิชาชีพงานภาษา ต่างประเทศและล่ามแปล สาขาผู้สอนภาษาต่างประเทศ อาชีพผู้สอนภาษาต่างประเทศ (ภาษาเวียดนาม)  ได้ส่งมอบสปอต (Spot) ประชาสัมพันธ์โครงการฯ ณ สถานีวิทยุ อสมท 91.50 MHz จังหวัดอุดรธานี เพื่อประชาสัมพันธ์โครงการฯ ให้ผู้ประกอบการ บุคลากรในกลุ่มอาชีพ หน่วยงานภาครัฐและเอกชนที่เกี่ยวข้อง และผู้สนใจ เข้าร่วมรับฟังการแถลงข่าวและประชุมชี้แจงโครงการจัดทำมาตรฐานอาชีพฯ และรับฟังความคิดเห็นจากผู้เข้าร่วมประชุม ในวันอังคาร ที่ 12 กรกฎาคม 2559 ระหว่างเวลา 09.00 – 12.00 น. ณ ห้องประชุม 1 อาคารเฉลิมพระเกียรติฯ ชั้น 2  มหาวิทยาลัยราชภัฏอุดรธานี'),
(5, 'อบรมเชิงปฏิบัติการ เรื่อง แนวทางการเขียนมาตรฐานอาชีพและคุณวุฒิวิชาชีพ', 'ในระหว่างวันที่ 2-3 มิถุนายน 2559 ณ ห้องประชุม ชั้น 39 ตึกซันทาวเวอร์ส บี ถนนวิภาวดีรังสิต เขตจตุจักร กรุงเทพฯ \nผศ.ดร.กฤษฎา  ณ หนองคาย ผู้จัดการโครงการ และตัวแทนนักวิจัยสาขาอาชีพ โครงการจัดทำมาตรฐานอาชีพและคุณวุฒิวิชาชีพ สาขาวิชาชีพงานภาษา ต่างประเทศและล่ามแปล สาขาผู้สอนภาษาต่างประเทศ อาชีพผู้สอนภาษาต่างประเทศ (ภาษาเวียดนาม)  ได้เข้าร่วมอบรมเชิงปฏิบัติการ เรื่อง แนวทางการเขียนมาตรฐานอาชีพและคุณวุฒิวิชาชีพ โครงการจัดทำมาตรฐานอาชีพและคุณวุฒิวิชาชีพที่ลงนามในสัญญาระหว่าง เดือนมีนาคม ถึง เดือนพฤษภาคม ปี 2559 โดยมีวัตถุประสงค์เพื่อให้การจัดทำมาตรฐานอาชีพและคุณวุฒิวิชาชีพพัฒนาไปในทิศทางเดียวกัน'),
(6, 'ขอเชิญร่วมรับฟังการแถลงข่าวและประชุมชี้แจงโครงการจัดทำมาตรฐานอาชีพและคุณวุฒิวิชาชีพฯ', 'สถาบันคุณวุฒิวิชาชีพ (องค์การมหาชน) ร่วมกับ มหาวิทยาลัยราชภัฏอุดรธานี ได้ดำเนินโครงการจัดทำมาตรฐานอาชีพและคุณวุฒิวิชาชีพฯ เพื่อจัดทำมาตรฐานอาชีพของผู้สอนภาษาต่างประเทศ (เวียดนาม) ให้มีความสอดคล้องกับความต้องการของผู้ประกอบการและเป็นที่ยอมรับทั้งในระดับประเทศและระดับสากลในการนี้ ขอเชิญร่วมรับฟังการแถลงข่าวและประชุมชี้แจงโครงการจัดทำมาตรฐานอาชีพฯ ในวันอังคารที่ 12 กรกฎาคม 2559 ระหว่างเวลา 09.00 - 12.00 น.  ณ ห้องประชุม 1 อาคารเฉลิมพระเกียรติฯ ชั้น 2 มหาวิทยาลัยราชภัฏอุดรธานี\nสนใจขอทราบรายละเอียดเพิ่มเติมได้ที่ สถาบันวิจัยและพัฒนา มหาวิทยาลัยราชภัฏอุดรธานี โทรศัพท์ 042-211040-59 ต่อ 1702\n'),
(7, 'ส่งมอบแผ่นพับประชาสัมพันธ์โครงการฯ ณ มูลนิธิการศึกษาอุดรธานี', 'วันที่ 5 กรกฎาคม 2559 นางสาวปิยนุช โทมล และนางสาววณิชยา จรูญพงษ์ นักวิจัยสาขาอาชีพ โครงการจัดทำมาตรฐานอาชีพและคุณวุฒิวิชาชีพ สาขาวิชาชีพงานภาษา ต่างประเทศและล่ามแปล สาขาผู้สอนภาษาต่างประเทศ อาชีพผู้สอนภาษาต่างประเทศ (ภาษาเวียดนาม)  ได้ส่งมอบแผ่นพับประชาสัมพันธ์โครงการฯ ณ มูลนิธิการศึกษาอุดรธานี ถนนแจ่มนุสรณ์ อำเภอเมือง จังหวัดอุดรธานี โดยมีนายธงชัย         อัครประเสริฐกิจ อาจารย์สอนภาษาเวียดนาม และนางสาวแสงเทียน วรรณอุดม กรรมการมูลนิธิการศึกษาอุดรธานี เป็นผู้รับมอบ'),
(8, 'มติชนออนไลน์: สถาบันคุณวุฒิวิชาชีพ จับมือ มรภ.อุดรธานี ผุดมาตรฐานอาชีพล่ามแปลเวียดนาม', 'นายณัติเทพ พิทักษานุรัตน์ อธิการบดีมหาวิทยาลัยราชภัฏ (มรภ.) อุดรธานี เปิดเผยว่า มรภ.อุดรธานร่วมกับสถาบันการศึกษาแห่งชาติ และหน่วยงานเอกชนของเวียดนาม รวม 16 แห่ง ลงนามบันทึกข้อตกลงความร่วมมือเพื่อแลกเปลี่ยนบุคลากร ทุนวิจัย ทุนการศึกษา รวมถึง จัดอบรมภาษาและวัฒนธรรมระหว่างกัน โดยได้เปิดสอนหลักสูตรภาษาเวียดนามเพื่อธุรกิจการท่องเที่ยวระดับปริญญาตรี เปิดอบรมหลักสูตรภาษาเวียดนามระยะสั้นสำหรับมัคคุเทศก์ พร้อมจัดตั้งศูนย์เวียดนามศึกษา นอกจากนี้ สถาบันคุณวุฒิวิชาชีพได้จัดทำมาตรฐานอาชีพและคุณวุฒิวิชาชีพ สาขาวิชาชีพงานภาษาต่างประเทศและล่ามแปล สาขาผู้สอนภาษาต่างประเทศ อาชีพผู้สอนภาษาต่างประเทศ (ภาษาเวียดนาม) โดยร่วมกับ มรภ.อุดรธานี เพื่อให้สอดคล้องกับความต้องการของผู้ประกอบการ เป็นที่ยอมรับในประเทศ และสากล โดยเฉพาะกลุ่มอาเซียน โดยจะแถลงผลการดำเนินงานวันที่ 12 กรกฎาคม ที่ มรภ.อุดรธานี\r\n<br/>\r\nที่มา: มติชนออนไลน์\r\n<br/>\r\n<a href="http://www.matichon.co.th/news/202220">http://www.matichon.co.th/news/202220</a>'),
(9, 'กรุงเทพธุรกิจออนไลน์: ส.คุณวุฒิวิชาชีพ-มรภ.อุดรฯ ร่วมจัดทำมาตรฐานครูภาษาเวียดนาม', 'โครงการจัดทำมาตรฐานอาชีพและคุณวุฒิวิชาชีพ สาขาผู้สอนภาษาต่างประเทศ อาชีพผู้สอนภาษาต่างประเทศ (ภาษาเวียดนาม)\r\n\r\n\r\nสถาบันคุณวุฒิวิชาชีพ (องค์การมหาชน) ร่วมกับมหาวิทยาลัยราชภัฏอุดรธานี ได้ดำเนินโครงการจัดทำมาตรฐานอาชีพและคุณวุฒิวิชาชีพ สาขาวิชาชีพงานภาษาต่างประเทศและล่ามแปล สาขาผู้สอนภาษาต่างประเทศ อาชีพผู้สอนภาษาต่างประเทศ (ภาษาเวียดนาม) เพื่อ ๑) ส่งเสริมและสนับสนุนให้กลุ่มสาขาอาชีพจัดทำมาตรฐานอาชีพและคุณวุฒิวิชาชีพที่สอดคล้องกับความต้องการของผู้ประกอบการ มีความเป็นสากลและเหมาะสมกับประเทศไทย เป็นที่ยอมรับทั้งภายในประเทศและระดับสากล โดยเฉพาะกลุ่มประเทศอาเซียนเพื่อรองรับประชาคมเศรษฐกิจอาเซียน ๒) สร้างเครือข่ายการจัดทำ พัฒนา และเผยแพร่ มาตรฐานอาชีพคุณวุฒิวิชาชีพ และ ๓) ประชาสัมพันธ์ให้ระบบคุณวุฒิวิชาชีพเป็นที่รับรู้และยอมรับในทุกภาคส่วน \r\n\r\nการจัดทำมาตรฐานอาชีพฯครั้งนี้ จะทำให้เกิดประโยชน์ต่อบุคลากรในกลุ่มอาชีพที่เกี่ยวข้อง สามารถนำไปเป็นแนวทางในการพัฒนาศักยภาพและสมรรถนะของตนเอง ผู้ประกอบการสามารถจ้างงานได้ตรงกับความต้องการ สถานศึกษาสามารถนำไปใช้ในการพัฒนาหลักสูตรการเรียนการสอนให้ตรงกับความต้องการของผู้ประกอบการ และจะนำไปสู่การเพิ่มขีดความสามารถในการแข่งขันให้กับประเทศไทยได้ในที่สุด \r\n\r\nในการนี้ ขอเชิญผู้ประกอบการ บุคลากรในกลุ่มอาชีพ หน่วยงานภาครัฐและเอกชนที่เกี่ยวข้อง และผู้สนใจ เข้าร่วมรับฟังการแถลงข่าวและประชุมชี้แจงโครงการจัดทำมาตรฐานอาชีพฯ และรับฟังความคิดเห็นจากผู้เข้าร่วมประชุม ในวันอังคาร ที่ ๑๒ กรกฎาคม ๒๕๕๙ ระหว่างเวลา ๐๙.๐๐ – ๑๒.๐๐ น. ณ ห้องประชุม ๑ อาคารเฉลิมพระเกียรติฯ ชั้น ๒ มหาวิทยาลัยราชภัฏอุดรธานี สนใจขอทราบรายละเอียดเพิ่มเติมได้ที่สถาบันวิจัยและพัฒนา มหาวิทยาลัยราชภัฏอุดรธานี โทรศัพท์ ๐๔๒-๒๑๑๐๔๐-๕๙ ต่อ ๑๗๐๒ หรือ เว็บไซต์ http://academic.udru.ac.th/~vnlpq/ \r\n<br/>\r\n<b>ที่มา :</b><a href="http://www.bangkokbiznews.com/pr/detail/14683">กรุงเทพธุรกิจออนไลน์</a>\r\n\r\n'),
(10, 'เนชั่นสุดสัปดาห์ออนไลน์: สถาบันคุณวุฒิวิชาชีพ-มรภ.อุดรฯ ร่วมมือทำมาตรฐานครูภาษาเวียดนาม', 'สถาบันคุณวุฒิวิชาชีพ (องค์การมหาชน) ร่วมกับมหาวิทยาลัยราชภัฏอุดรธานี ได้ดำเนินโครงการจัดทำมาตรฐานอาชีพและคุณวุฒิวิชาชีพ สาขาวิชาชีพงานภาษาต่างประเทศและล่ามแปล สาขาผู้สอนภาษาต่างประเทศ อาชีพผู้สอนภาษาต่างประเทศ (ภาษาเวียดนาม) เพื่อ ๑) ส่งเสริมและสนับสนุนให้กลุ่มสาขาอาชีพจัดทำมาตรฐานอาชีพและคุณวุฒิวิชาชีพที่สอดคล้องกับความต้องการของผู้ประกอบการ มีความเป็นสากลและเหมาะสมกับประเทศไทย เป็นที่ยอมรับทั้งภายในประเทศและระดับสากล โดยเฉพาะกลุ่มประเทศอาเซียนเพื่อรองรับประชาคมเศรษฐกิจอาเซียน ๒) สร้างเครือข่ายการจัดทำ พัฒนา และเผยแพร่ มาตรฐานอาชีพคุณวุฒิวิชาชีพ และ ๓) ประชาสัมพันธ์ให้ระบบคุณวุฒิวิชาชีพเป็นที่รับรู้และยอมรับในทุกภาคส่วน\n\nการจัดทำมาตรฐานอาชีพฯครั้งนี้ จะทำให้เกิดประโยชน์ต่อบุคลากรในกลุ่มอาชีพที่เกี่ยวข้อง สามารถนำไปเป็นแนวทางในการพัฒนาศักยภาพและสมรรถนะของตนเอง ผู้ประกอบการสามารถจ้างงานได้ตรงกับความต้องการ สถานศึกษาสามารถนำไปใช้ในการพัฒนาหลักสูตรการเรียนการสอนให้ตรงกับความต้องการของผู้ประกอบการ และจะนำไปสู่การเพิ่มขีดความสามารถในการแข่งขันให้กับประเทศไทยได้ในที่สุด\n\nในการนี้ ขอเชิญผู้ประกอบการ บุคลากรในกลุ่มอาชีพ หน่วยงานภาครัฐและเอกชนที่เกี่ยวข้อง และผู้สนใจ เข้าร่วมรับฟังการแถลงข่าวและประชุมชี้แจงโครงการจัดทำมาตรฐานอาชีพฯ และรับฟังความคิดเห็นจากผู้เข้าร่วมประชุม ในวันอังคาร ที่ ๑๒ กรกฎาคม ๒๕๕๙ ระหว่างเวลา ๐๙.๐๐ – ๑๒.๐๐ น. ณ ห้องประชุม ๑ อาคารเฉลิมพระเกียรติฯ ชั้น ๒ มหาวิทยาลัยราชภัฏอุดรธานี สนใจขอทราบรายละเอียดเพิ่มเติมได้ที่สถาบันวิจัยและพัฒนา มหาวิทยาลัยราชภัฏอุดรธานี โทรศัพท์ ๐๔๒-๒๑๑๐๔๐-๕๙ ต่อ ๑๗๐๒ หรือ เว็บไซต์ http://academic.udru.ac.th/~vnlpq/\n<br/>\n<b>ที่มา :</b><a href="http://www.nationweekend.com/home/news-calendar/1345/%E0%B8%AA%E0%B8%96%E0%B8%B2%E0%B8%9A%E0%B8%B1%E0%B8%99%E0%B8%84%E0%B8%B8%E0%B8%93%E0%B8%A7%E0%B8%B8%E0%B8%92%E0%B8%B4%E0%B8%A7%E0%B8%B4%E0%B8%8A%E0%B8%B2%E0%B8%8A%E0%B8%B5%E0%B8%9E-%E0%B8%A1%E0%B8%A3%E0%B8%A0.%E0%B8%AD%E0%B8%B8%E0%B8%94%E0%B8%A3%E0%B8%AF-%E0%B8%A3%E0%B9%88%E0%B8%A7%E0%B8%A1%E0%B8%A1%E0%B8%B7%E0%B8%AD%E0%B8%97%E0%B8%B3%E0%B8%A1%E0%B8%B2%E0%B8%95%E0%B8%A3%E0%B8%90%E0%B8%B2%E0%B8%99%E0%B8%84%E0%B8%A3%E0%B8%B9%E0%B8%A0%E0%B8%B2%E0%B8%A9%E0%B8%B2%E0%B9%80%E0%B8%A7%E0%B8%B5%E0%B8%A2%E0%B8%94%E0%B8%99%E0%B8%B2%E0%B8%A1.html">เนชั่นสุดสัปดาห์ออนไลน์</a>'),
(13, 'test', '<p>test</p>\n<img width="223" height="278" align="bottom" src="http://localhost/vnlpq/img/head2databegin.jpg" alt="" /><span style="color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;  float: none; background-color: rgb(255, 255, 255);"><span class="Apple-converted-space media-object"> </span></span>สถาบันคุณวุฒิวิชาชีพ (องค์การมหาชน) ร่วมกับมหาวิทยาลัยราชภัฏอุดรธานี ได้ดำเนินโครงการจัดทำมาตรฐานอาชีพและคุณวุฒิวิชาชีพ สาขาวิชาชีพงานภาษาต่างประเทศและล่ามแปล สาขาผู้สอนภาษาต่างประเทศ อาชีพผู้สอนภาษาต่างประเทศ (ภาษาเวียดนาม) เพื่อ ๑) ส่งเสริมและสนับสนุนให้กลุ่มสาขาอาชีพจัดทำมาตรฐานอาชีพและคุณวุฒิวิชาชีพที่สอดคล้องกับความต้องการของผู้ประกอบการ มีความเป็นสากลและเหมาะสมกับประเทศไทย เป็นที่ยอมรับทั้งภายในประเทศและระดับสากล โดยเฉพาะกลุ่มประเทศอาเซียนเพื่อรองรับประชาคมเศรษฐกิจอาเซียน ๒) สร้างเครือข่ายการจัดทำ พัฒนา และเผยแพร่ มาตรฐานอาชีพคุณวุฒิวิชาชีพ และ ๓) ประชาสัมพันธ์ให้ระบบคุณวุฒิวิชาชีพเป็นที่รับรู้และยอมรับในทุกภาคส่วน การจัดทำมาตรฐานอาชีพฯครั้งนี้ จะทำให้เกิดประโยชน์ต่อบุคลากรในกลุ่มอาชีพที่เกี่ยวข้อง สามารถนำไปเป็นแนวทางในการพัฒนาศักยภาพและสมรรถนะของตนเอง ผู้ประกอบการสามารถจ้างงานได้ตรงกับความต้องการ สถานศึกษาสามารถนำไปใช้ในการพัฒนาหลักสูตรการเรียนการสอนให้ตรงกับความต้องการของผู้ประกอบการ และจะนำไปสู่การเพิ่มขีดความสามารถในการแข่งขันให้กับประเทศไทยได้ในที่สุด ในการนี้ ขอเชิญผู้ประกอบการ บุคลากรในกลุ่มอาชีพ หน่วยงานภาครัฐและเอกชนที่เกี่ยวข้อง และผู้สนใจ เข้าร่วมรับฟังการแถลงข่าวและประชุมชี้แจงโครงการจัดทำมาตรฐานอาชีพฯ และรับฟังความคิดเห็นจากผู้เข้าร่วมประชุม ในวันอังคาร ที่ ๑๒ กรกฎาคม ๒๕๕๙ ระหว่างเวลา ๐๙.๐๐ &ndash; ๑๒.๐๐ น. ณ ห้องประชุม ๑ อาคารเฉลิมพระเกียรติฯ ชั้น ๒ มหาวิทยาลัยราชภัฏอุดรธานี สนใจขอทราบรายละเอียดเพิ่มเติมได้ที่สถาบันวิจัยและพัฒนา มหาวิทยาลัยราชภัฏอุดรธานี โทรศัพท์ ๐๔๒-๒๑๑๐๔๐-๕๙ ต่อ ๑๗๐๒ หรือ เว็บไซต์ http://academic.udru.ac.th/~vnlpq/<span class="Apple-converted-space">&nbsp;</span></p>\n<p>&nbsp;</p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `docupload`
--
ALTER TABLE `docupload`
  ADD PRIMARY KEY (`id_upload`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_news`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `docupload`
--
ALTER TABLE `docupload`
  MODIFY `id_upload` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id_news` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
