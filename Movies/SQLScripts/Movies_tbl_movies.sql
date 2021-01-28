CREATE DATABASE  IF NOT EXISTS `Movies` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `Movies`;
-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: Movies
-- ------------------------------------------------------
-- Server version	5.7.32-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_movies`
--

DROP TABLE IF EXISTS `tbl_movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `movieLen` varchar(45) DEFAULT NULL,
  `relDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_movies`
--

LOCK TABLES `tbl_movies` WRITE;
/*!40000 ALTER TABLE `tbl_movies` DISABLE KEYS */;
INSERT INTO `tbl_movies` VALUES (1,'The Incredible Hulk','The Incredible Hulk is a 2008 American superhero film based on the Marvel Comics character the Hulk. Produced by Marvel Studios','https://images-na.ssl-images-amazon.com/images/I/91wFHajfFpL._RI_.jpg','136 mins','2008-06-13'),(2,'Iron Man','Iron Man is a fictional superhero who wears a suit of armor. His alter ego is Tony Stark. He was created by Stan Lee','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSMoliPRgy5xgoyg_eZmuKyptS9s1weVooX5tLqTBnGBYMRtE-t','126 mins','2008-04-01'),(3,'Thor','Thor The son of Odin uses his mighty abilities as the God of Thunder to protect his home Asgard and planet Earth alike','https://www.movienewsletters.net/photos/113522R1.jpg','115 mins','2011-04-29'),(4,'WAR','Kabir, a secret agent, goes rogue after a mission to catch a terrorist goes awry. However, his boss sends Khalid, another agent and his student, to track him down.','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQsHHM8pzbFQVcRVeys4kD1tnGA_dywwagbY8SJi-_NwZQxf-Rt','154 mins','2019-02-02'),(5,'Tanhaji','Tanhaji, a Maratha warrior, is Shivaji Maharaj\'s trusted lieutenant. When the Mughals invade and conquer Kondhana fort, he sets out to reclaim it for his king and country.','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQH8bgJFfRptoRCVIBaDI4RIPfLGpyDW96i-7Ab2CplyvdZZTsl','136 mins','2020-01-10'),(6,'Padmaavat','Queen Padmavati is happily married to a Rajput ruler until a tyrant Sultan, Alauddin Khilji, enters their life and calls a war on their kingdom due to his obsession with the queen.','https://contentserver.com.au/assets/603892_v7_padvaati.jpg','164 mins','2018-01-24'),(7,'Kesari','Havildar Ishar Singh, a soldier in the British Indian Army, leads 21 Sikh soldiers in a fight against 10,000 Pashtun invaders. However, what unfolds is the greatest last stand wars of all time.','https://upload.wikimedia.org/wikipedia/en/c/c4/Kesari_poster.jpg','164 mins','2019-03-21'),(8,'Bangalore Days','Cousins, Divya, Kuttan and Arjun, fulfil their childhood dream of relocating to Bangalore. As they embrace the warmth of the city, they also face challenges that transform their lives.','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQqcgw-dFbd8hNhkA_SUyyzsRslE4sDXZ939hh2dMF7d_cpQJ-t','172 mins','2014-04-30'),(9,'Hebbuli','After Ram\'s brother dies suddenly, he decides to investigate the reason behind his death. However, he must fight against the corrupt system to protect his family and find the truth.','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTGRMNCs7sdHol78RhARo5OoX6jUSo29WK57UfDP24aosmg4kmN','141 mins','2017-02-23'),(10,'Inception','Cobb steals information from his targets by entering their dreams. Saito offers to wipe clean Cobb\'s criminal history as payment for performing an inception on his sick competitor\'s son.','https://resizing.flixster.com/xHMxGkI3EVch6oAWquHaona1v-k=/206x305/v1.bTsxMTE2NjcyNTtqOzE4NzU5OzEyMDA7ODAwOzEyMDA','164 mins','2010-07-17'),(11,'The Dark Knight','After Gordon, Dent and Batman begin an assault on Gotham\'s organised crime, the mobs hire the Joker, a psychopathic criminal mastermind who offers to kill Batman and bring the city to its knees.','https://contentserver.com.au/assets/598411_p173378_p_v8_au.jpg','154 mins','2008-07-18'),(12,'Kirik Party','Karna, a first-year engineering student, falls in love with Saanvi, a final-year pupil from his college. However, a tragic event changes his perception towards life and he mends his ways.','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0RBT1aw-tw9WCDck3jJNiCljFGesaAdEZPg&usqp=CAU','164 mins','2017-12-30'),(13,'Premam','While George\'s first love turns out to be a disappointment, Malar, a college lecturer, rekindles his love interest. His romantic journey takes him through several stages, helping him find his purpose.','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSQMDDYfNw0q6TbukSCdWsocLp1HN9DrVo3rGA4Ea5N92PE4Kuy','168 mins','2019-02-28'),(14,'Natsamrat','After retirement, Ganpat Belwalkar, a Shakespearean actor, divides his property amongst his two children. However, their ungratefulness leaves Ganpat and his wife homeless during their old age.','https://m.media-amazon.com/images/M/MV5BYjkzZWIyZTctN2U3Ny00MDZlLTkzZTYtMTI2MWI5YTFiZWZkXkEyXkFqcGdeQXVyNTM2NTg3Nzg@._V1_.jpg','166 mins','2016-01-01'),(15,'Hirkani','After the gates of Raigad shut down for the day, Hirkani, a milkmaid, decides to scale down a steep cliff in order to reach her baby back home.','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVLjMJ1viSQixkIJ6Gz1PVkWvjReTw-KbkM6p_NlOEsGMkzQ4L','99 mins','2019-10-24'),(16,'Farzand','Kondaji Farzand, along with a large group of warriors, sets out to battle Adil Shah in order to recapture the Panhala Fort.','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSmbXCjT9ONwOs0imvij1ebj8IQWqq0GWL__y9RkYr-OmPYszwx','157 mins','2018-06-01'),(17,'Zenda','When the leadership of a political party changes, it leads to several conflicts amongst its members and the party splits. Thereafter, dedicated party workers face problems in their lives.','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRyCMjv83uBJrMZ8X4BOlZWSBgQRBqUzeFDFBlml4uoRvLmUi2i','118 mins','2009-01-08'),(18,'Killa','An 11-year-old boy struggles to cope with the death of his father while trying to make new friends in an unfamiliar place, after his mother gets a job transfer.','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqk-31asAoFdiUAqKcnnXOWOn9wQgOU78H2WfSODJ7OiQSUTiI','110 mins','2017-10-28'),(19,'Dolittle','A physician, who can speak with animals, is summoned by the queen to find a cure for her life-threatening disease. Soon, he embarks on a journey with his furry friends in search of a healing tree.','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSoar8y_ZLMjpU2DUCmYy4twmLqIGwLIUr7OHvV4oGYWYt3aB0-','101 mins','2020-01-01'),(20,'Knives Out','The circumstances surrounding the death of crime novelist Harlan Thrombey are mysterious, but there\'s one thing that renowned ','https://upload.wikimedia.org/wikipedia/en/1/1f/Knives_Out_poster.jpeg','130 mins','2019-11-21'),(21,'Coco','Despite his family\'s generations-old ban on music, young Miguel dreams of becoming an accomplished musician like his idol Ernesto de la Cruz. ','https://contentserver.com.au/assets/593638_p13930352_p_v8_aa.jpg','109 mins','2017-10-27'),(22,'DeadPool','Ajax, a twisted scientist, experiments on Wade Wilson, a mercenary, to cure him of cancer and give him healing powers. However, the experiment leaves Wade disfigured and he decides to exact revenge.','https://contentserver.com.au/assets/557638_p11098044_p_v8_af.jpg','100 mins','2013-03-12'),(23,'The Dictator','Aladeen, a brutal dictator, travels to New York in order to address the United Nations Security Council. However, his plans go south when a hitman hired by his uncle, Tamir, kidnaps him.','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcT897lBOrKpLaRJhis0b1SK-4qRZNdVYP2P8XO9Tx_UMwd71wGX','90 mins','2012-04-11');
/*!40000 ALTER TABLE `tbl_movies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-28  8:07:58
