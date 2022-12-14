-- MySQL dump 10.13  Distrib 5.7.33, for Win64 (x86_64)
--
-- Host: localhost    Database: kedaireka_mahasiswa
-- ------------------------------------------------------
-- Server version	5.7.33

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `majors`
--

DROP TABLE IF EXISTS `majors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `majors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `majors`
--

LOCK TABLES `majors` WRITE;
/*!40000 ALTER TABLE `majors` DISABLE KEYS */;
INSERT INTO `majors` VALUES (3,'Teknik Informatika','Tenetur quo hic voluptas quaerat. Voluptas reprehenderit laboriosam et doloribus. Quibusdam unde ipsum consequatur molestiae veritatis blanditiis. Et ut aliquid eaque ut amet est sapiente.','2022-09-01 20:05:29','2022-09-04 04:31:01'),(4,'Akutansi','Esse eveniet temporibus rerum voluptatem quia corrupti voluptatem. Voluptatem quos qui officiis rerum consequatur.','2022-09-01 20:05:29','2022-09-04 04:30:52'),(5,'Ekonomi','Dignissimos nulla quis id ut suscipit ipsa. Velit aut commodi in accusantium quaerat dolor. Sit aspernatur laudantium sed voluptatem sequi.','2022-09-01 20:05:29','2022-09-04 04:32:48'),(6,'Sistem Informasi','Qui magni et dolore a et alias et. Perferendis fugit placeat aperiam aut dolores qui eligendi. Tempore placeat aut quis voluptatum dolor.','2022-09-01 20:05:29','2022-09-04 04:31:27'),(8,'Sastra Jepang','Molestiae quia quia sint. Velit delectus voluptate amet fugiat corporis voluptas quia illum. Nesciunt ut fuga rerum. Repellat consequatur modi non omnis officia accusantium.','2022-09-01 20:05:29','2022-09-04 04:31:49'),(10,'Biologi','Omnis laborum ipsa perferendis excepturi dolorem. Quas repudiandae autem accusantium minus quia cumque assumenda. Et animi beatae eaque nostrum maiores quod.','2022-09-01 20:05:29','2022-09-04 04:31:35'),(11,'Jakarta - Semarang','BIS bisan','2022-09-04 02:56:40','2022-09-04 04:32:03');
/*!40000 ALTER TABLE `majors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2022_08_28_101916_create_students_table',1),(6,'2022_09_01_035459_create_scores_table',1),(7,'2022_09_02_020514_create_majors_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scores`
--

DROP TABLE IF EXISTS `scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scores` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` bigint(20) unsigned DEFAULT NULL,
  `mtk` int(11) NOT NULL,
  `ipa` int(11) NOT NULL,
  `ips` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scores`
--

LOCK TABLES `scores` WRITE;
/*!40000 ALTER TABLE `scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `major_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,8859460,'Dewi Zulfa Rahimah M.M.','M','Ki. Zamrud No. 152, Administrasi Jakarta Utara 95834, Kaltara','0457 7402 716',5,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(2,9874863,'Hafshah Nasyiah','F','Psr. Gajah No. 311, Mojokerto 11345, Lampung','0650 3626 683',7,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(3,8244504,'Empluk Prasetya','F','Ds. Jakarta No. 867, Pematangsiantar 89228, Sulsel','(+62) 488 7097 736',2,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(4,6885875,'Dacin Maryadi','F','Psr. Sutan Syahrir No. 155, Depok 59651, Riau','(+62) 616 2649 4037',4,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(5,6350047,'Hendri Maryadi','M','Jr. Laksamana No. 99, Kotamobagu 98033, DIY','(+62) 573 0367 036',7,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(6,6130378,'Cahyo Suryono','F','Ds. Cikutra Barat No. 599, Pontianak 49853, NTB','023 0580 000',2,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(7,3800193,'Daru Jailani','M','Jln. HOS. Cjokroaminoto (Pasirkaliki) No. 409, Banjar 47438, Jabar','0692 5153 5191',3,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(8,5889466,'Maimunah Zulaika M.M.','M','Jln. Radio No. 664, Bukittinggi 68255, Kalbar','027 9423 598',1,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(9,4723020,'Dinda Aryani M.Farm','F','Ki. Baya Kali Bungur No. 750, Sungai Penuh 42028, Kalbar','(+62) 765 6459 623',9,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(10,3392120,'Ana Prastuti S.IP','M','Kpg. Basoka Raya No. 112, Bogor 44268, Pabar','0383 0062 8845',6,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(11,4176056,'Hairyanto Budiman','F','Ds. Bazuka Raya No. 700, Pasuruan 38771, Malut','(+62) 235 9929 327',9,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(12,4035225,'Galuh Haryanto','F','Jr. Bagas Pati No. 780, Banjarbaru 41727, Kepri','(+62) 481 1812 9525',2,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(13,6401575,'Bagya Mandala S.Kom','F','Dk. Moch. Toha No. 689, Sukabumi 99002, Riau','0932 2465 9932',10,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(14,2934433,'Caturangga Ajimin Waluyo','F','Jln. Babakan No. 362, Langsa 54712, Bengkulu','0613 2166 587',7,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(15,5556240,'Kajen Dimaz Kurniawan','F','Dk. Basuki No. 687, Kendari 23831, Kalteng','0464 0481 825',1,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(16,4410752,'Cakrajiya Tamba','F','Dk. Bakau No. 739, Pariaman 72685, Sultra','0221 2857 0797',2,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(17,3527930,'Humaira Oktaviani','M','Dk. Moch. Yamin No. 76, Padang 41554, Sumbar','0209 3856 726',4,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(18,3719157,'Widya Salsabila Hartati M.Pd','F','Psr. Salak No. 623, Padangpanjang 16691, Kaltim','(+62) 447 7125 8369',8,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(19,8845863,'Jessica Ade Yulianti S.I.Kom','F','Jln. Haji No. 932, Serang 16029, Bengkulu','(+62) 461 4726 929',5,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(20,3652380,'Fathonah Safitri S.Farm','F','Ki. Barat No. 54, Pekalongan 32284, Pabar','(+62) 368 2397 077',5,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(21,3552496,'Edward Paiman Zulkarnain S.T.','M','Jr. Sam Ratulangi No. 921, Parepare 27596, Riau','0732 0793 165',7,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(22,1674526,'Catur Tarihoran','M','Ki. Badak No. 500, Bengkulu 64738, Aceh','026 8368 554',10,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(23,4732932,'Winda Novi Handayani','M','Jr. Aceh No. 789, Administrasi Jakarta Pusat 83943, Bali','(+62) 802 5261 384',5,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(24,5250671,'Novi Yuniar','F','Kpg. Baja No. 851, Tarakan 57320, Sulut','(+62) 828 9824 6016',3,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(25,9394544,'Jindra Hasta Dabukke M.Ak','F','Psr. Batako No. 932, Banjarmasin 37739, Sumsel','0843 756 544',9,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(26,1089886,'Edison Siregar S.Pd','M','Gg. Bagis Utama No. 543, Cimahi 40669, Bali','0303 8987 6171',6,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(27,5045778,'Lala Yolanda','M','Ki. Bacang No. 939, Yogyakarta 33734, Jatim','(+62) 302 8499 2393',1,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(28,9876018,'Elvina Astuti','M','Ds. Yoga No. 13, Sorong 40553, Sumut','(+62) 787 3907 671',1,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(29,8028667,'Kambali Sirait M.TI.','F','Kpg. Kiaracondong No. 836, Lhokseumawe 37794, NTB','(+62) 618 2922 701',3,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(30,9598761,'Bahuwirya Gunawan M.M.','F','Ds. Otista No. 809, Batu 83715, Jatim','(+62) 880 3983 611',8,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(31,1818044,'Anastasia Hariyah S.Gz','M','Ds. Yosodipuro No. 447, Administrasi Jakarta Timur 89944, Papua','(+62) 848 5503 0130',6,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(32,8917214,'Baktianto Prasetya S.Sos','F','Jr. Kiaracondong No. 717, Padang 12573, Sulbar','(+62) 320 1341 980',6,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(33,6388390,'Manah Prakasa S.Farm','F','Kpg. R.M. Said No. 370, Padang 49246, Sumbar','(+62) 521 0530 5826',2,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(34,4640385,'Ifa Wijayanti','F','Ki. Kebangkitan Nasional No. 795, Probolinggo 28129, Sumsel','(+62) 756 5584 623',1,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(35,2545417,'Betania Riyanti','M','Psr. Banda No. 724, Padangsidempuan 14943, Bali','(+62) 441 3326 3829',2,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(36,1422452,'Hilda Agustina','M','Jln. Abdullah No. 376, Pariaman 95378, Gorontalo','0528 1073 7858',6,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(37,9196051,'Nalar Mahfud Thamrin','F','Jr. Madiun No. 166, Pekanbaru 84117, Kalteng','0527 7835 1361',5,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(38,3859827,'Rachel Winarsih S.T.','M','Psr. Abdul No. 807, Tebing Tinggi 18362, Sulsel','(+62) 896 5683 277',6,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(39,4101588,'Heru Natsir S.T.','F','Gg. Baha No. 9, Surabaya 99802, Jatim','(+62) 490 0862 4710',10,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(40,1232277,'Bakianto Tarihoran','F','Psr. R.M. Said No. 160, Pekalongan 13284, Sulteng','0646 1202 0739',1,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(41,2687532,'Sabrina Purwanti','F','Gg. Salak No. 420, Langsa 70984, Kalbar','0820 6013 9928',5,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(42,7572360,'Cindy Safitri','M','Gg. Gegerkalong Hilir No. 114, Sorong 90834, Kalsel','0753 1180 302',6,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(43,7042799,'Rika Winarsih','M','Dk. Astana Anyar No. 729, Jambi 52713, Papua','0918 2275 285',9,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(44,6407391,'Atma Waskita','M','Psr. Raden Saleh No. 412, Subulussalam 35112, DIY','0831 2658 306',9,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(45,3783937,'Slamet Cemani Saragih S.Pt','F','Ki. Gatot Subroto No. 312, Gorontalo 40615, Kalbar','0434 8292 7480',5,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(46,5814305,'Maria Ani Anggraini S.I.Kom','M','Kpg. Banal No. 655, Cilegon 76458, Sumut','0882 937 575',3,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(47,7240585,'Cornelia Rahimah','F','Jln. Bambu No. 821, Tual 97745, Sulbar','0439 0462 2807',5,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(48,7412641,'Karsana Cawuk Firmansyah','F','Jln. Babah No. 162, Ternate 70599, Papua','(+62) 911 9499 6828',2,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(49,2615082,'Umi Zahra Safitri','F','Jr. Padang No. 404, Ternate 14888, DIY','0766 0357 9209',1,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(50,3591960,'Wira Wahyudin','M','Jln. Ciwastra No. 199, Administrasi Jakarta Timur 46670, Sulbar','(+62) 22 7774 356',2,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(51,9695736,'Adiarja Cecep Waluyo S.H.','F','Gg. Suryo No. 547, Tidore Kepulauan 39775, Kalteng','(+62) 958 4660 9572',11,'2022-09-01 20:05:29','2022-09-04 03:03:42'),(52,6448323,'Viman Hutapea','M','Psr. Gedebage Selatan No. 269, Malang 66517, Sultra','0883 9132 8688',3,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(53,7655006,'Jaga Caraka Pangestu','M','Ki. Baranangsiang No. 272, Lhokseumawe 27625, Jambi','(+62) 508 9238 388',4,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(54,8187030,'Bagiya Mustofa','F','Kpg. Bak Air No. 735, Tomohon 64661, Jateng','(+62) 316 0568 0100',5,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(55,8427533,'Laras Oktaviani S.Psi','M','Ki. Rajawali Timur No. 107, Prabumulih 54363, Lampung','0933 1754 544',1,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(56,4394563,'Ghani Natsir','F','Psr. Mahakam No. 585, Padang 27023, Kaltim','(+62) 314 9041 1606',9,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(57,5248199,'Calista Hasanah','F','Gg. Cikapayang No. 970, Tasikmalaya 43173, Maluku','(+62) 730 8650 729',2,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(58,1760947,'Lasmanto Ramadan S.H.','F','Ds. Mahakam No. 350, Banjarmasin 74179, Kaltim','(+62) 819 267 049',2,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(59,8501821,'Bakda Zulkarnain','M','Jr. Bakhita No. 771, Batu 38491, DKI','(+62) 439 2186 664',7,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(60,6160130,'Asmianto Sitompul','F','Kpg. Ciumbuleuit No. 821, Madiun 36925, Kepri','(+62) 487 5509 777',7,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(62,4204196,'Sakura Nurdiyanti','F','Ki. Baranang Siang Indah No. 497, Pekanbaru 86283, Kaltara','0507 9593 5045',2,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(63,5977093,'Lasmanto Kusumo S.Sos','F','Kpg. Sunaryo No. 630, Surakarta 76867, NTB','(+62) 206 5107 608',6,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(64,3546747,'Ghani Sitorus','M','Jln. Ketandan No. 289, Ambon 21466, Sumut','0952 7411 0340',4,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(65,2044457,'Lega Santoso M.Kom.','M','Dk. Gajah Mada No. 766, Batu 99626, Kaltara','(+62) 676 3447 958',5,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(66,8426472,'Sari Widiastuti M.Pd','F','Ds. Astana Anyar No. 939, Cimahi 57620, Gorontalo','(+62) 21 7817 2390',5,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(67,1093477,'Irsad Tarihoran','F','Dk. Bakit  No. 434, Gorontalo 52562, Sulteng','0413 0420 365',10,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(68,2984250,'Edi Lazuardi','F','Ki. Elang No. 536, Kotamobagu 23318, Kalbar','0617 1908 2508',7,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(69,1612159,'Utama Suryono','F','Dk. Rajawali Timur No. 359, Langsa 56367, Sultra','(+62) 906 6724 4221',7,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(70,4490309,'Harsanto Siregar','F','Gg. Perintis Kemerdekaan No. 320, Bekasi 63413, Kaltim','(+62) 731 9945 3181',5,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(71,2300960,'Warji Zulkarnain M.Pd','F','Kpg. Muwardi No. 843, Batu 47575, Kalteng','(+62) 334 3470 2139',6,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(72,2723322,'Vivi Widiastuti','F','Psr. Baabur Royan No. 808, Administrasi Jakarta Timur 79054, Pabar','0976 2341 5116',6,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(73,5277546,'Pangestu Bahuwarna Kurniawan S.T.','M','Jr. Imam Bonjol No. 246, Banjarmasin 94380, DKI','0614 4519 491',9,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(74,6490892,'Aditya Imam Anggriawan S.E.','F','Ds. Wahidin Sudirohusodo No. 288, Administrasi Jakarta Timur 31205, NTB','(+62) 528 8091 649',11,'2022-09-01 20:05:29','2022-09-04 03:28:06'),(75,8376637,'Salsabila Usamah S.E.','F','Kpg. Samanhudi No. 801, Batam 24005, DKI','(+62) 370 6953 555',3,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(76,5832879,'Jabal Wasita','M','Psr. Dahlia No. 584, Serang 51510, Sumsel','(+62) 762 9252 757',4,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(77,5063146,'Kani Dina Mayasari M.Ak','F','Jr. Baranang Siang Indah No. 604, Probolinggo 53101, Sulut','0816 7182 8706',2,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(78,4293566,'Gasti Mutia Zulaika','M','Gg. Jayawijaya No. 568, Gunungsitoli 91909, Jateng','(+62) 812 886 886',1,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(79,5846977,'Ana Yuniar','M','Ki. Gajah Mada No. 652, Tomohon 17982, Aceh','599 3044 8644',3,'2022-09-01 20:05:29','2022-09-04 04:36:24'),(80,1546247,'Wardaya Maheswara','M','Dk. Gotong Royong No. 517, Makassar 21018, Aceh','(+62) 263 0978 4647',4,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(81,9592506,'Mila Padma Laksmiwati','F','Gg. Peta No. 21, Padangpanjang 61086, Malut','0780 1716 261',9,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(82,5126617,'Mumpuni Virman Halim S.T.','F','Kpg. Flora No. 582, Bontang 74431, Bengkulu','0924 0229 513',5,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(83,1216744,'Asman Dabukke','F','Ds. Zamrud No. 699, Pontianak 52823, Sultra','0433 4075 799',9,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(84,5072992,'Uli Laksita S.Kom','M','Jr. Dipatiukur No. 611, Tidore Kepulauan 52451, Sulbar','(+62) 291 5538 5450',1,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(85,6012709,'Bakianto Adriansyah','M','Kpg. Ahmad Dahlan No. 528, Tasikmalaya 93027, DKI','0276 9805 513',7,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(86,4512293,'Vanya Salsabila Suryatmi','M','Jr. Bara Tambar No. 873, Solok 77968, Riau','(+62) 770 1048 4016',5,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(87,4942790,'Putu Tarihoran','M','Jln. Raden No. 535, Bogor 77447, Jatim','(+62) 774 3951 0354',3,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(88,1888272,'Almira Mandasari S.E.','F','Dk. Ahmad Dahlan No. 250, Pekanbaru 53244, Kalteng','0225 5702 914',9,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(89,4435243,'Sabrina Wijayanti','F','Dk. Jend. Sudirman No. 880, Palu 17874, Kepri','0631 5408 6573',7,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(90,3795388,'Vino Damanik','M','Ds. Ciwastra No. 612, Jambi 28942, Sumsel','0691 5253 1028',5,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(91,8202207,'Warsita Zulkarnain','F','Ds. Achmad No. 324, Bima 25774, Papua','(+62) 22 0956 932',1,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(92,3396965,'Martana Kasiran Mandala S.Ked','M','Jln. Sudiarto No. 277, Solok 62094, DKI','(+62) 761 9097 2513',10,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(93,3496333,'Mustika Tirta Widodo S.H.','F','Dk. Kyai Gede No. 580, Administrasi Jakarta Utara 57704, Papua','0734 1217 466',9,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(94,8859064,'Dono Marbun','F','Psr. Urip Sumoharjo No. 221, Bau-Bau 10338, Gorontalo','(+62) 862 492 383',3,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(95,3172407,'Viman Kenari Hakim S.I.Kom','M','Ki. Siliwangi No. 881, Padangsidempuan 15819, Jabar','0852 262 563',10,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(96,3902221,'Galur Nainggolan','F','Kpg. Babah No. 420, Padangsidempuan 99502, Kalbar','0312 8009 6277',3,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(97,5341704,'Ajeng Purnawati','F','Jr. Bappenas No. 48, Bogor 79763, Sumbar','0502 4944 165',2,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(98,8647979,'Balapati Panji Marpaung','M','Kpg. Kyai Mojo No. 190, Singkawang 91765, Papua','(+62) 695 6359 2963',8,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(99,7076329,'Yessi Eka Safitri','F','Psr. Bata Putih No. 950, Banjarbaru 26500, Kaltara','(+62) 524 3274 815',7,'2022-09-01 20:05:29','2022-09-01 20:05:29'),(100,5219251,'Eka Agustina','F','Jr. Kebangkitan Nasional No. 524, Cimahi 76375, Jabar','0282 9127 2196',4,'2022-09-01 20:05:29','2022-09-01 20:05:29');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-04 18:37:36
