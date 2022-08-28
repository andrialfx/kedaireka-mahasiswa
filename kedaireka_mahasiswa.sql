/*
 Navicat Premium Data Transfer

 Source Server         : laragon
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : kedaireka_mahasiswa

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 28/08/2022 18:58:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for mahasiswas
-- ----------------------------
DROP TABLE IF EXISTS `mahasiswas`;
CREATE TABLE `mahasiswas`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_id` int(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mahasiswas
-- ----------------------------
INSERT INTO `mahasiswas` VALUES (2, 71826119, 'Kondo Hina', 'F', '132 Central Avenue', 19078236, '2019-07-13 17:27:57', '2022-08-28 11:57:29');
INSERT INTO `mahasiswas` VALUES (3, 33207417, 'Watanabe Hikaru', 'F', '793 Central Avenue', 13732889, '2013-10-12 03:33:51', '2005-08-30 08:36:18');
INSERT INTO `mahasiswas` VALUES (4, 17288903, 'Ando Hina', 'F', '340 East Alley', 36441985, '2011-03-15 08:20:00', '2013-04-28 00:45:39');
INSERT INTO `mahasiswas` VALUES (5, 16168850, 'Taniguchi Aoi', 'F', '859 1st Ave', 39027612, '2022-02-15 07:54:59', '2010-10-27 02:07:27');
INSERT INTO `mahasiswas` VALUES (6, 53378638, 'Ernest Hawkins', 'M', '538 Wooster Street', 53081773, '2011-04-02 03:31:24', '2001-12-12 10:10:42');
INSERT INTO `mahasiswas` VALUES (7, 96960511, 'Anthony Fisher', 'M', '670 Collier Road', 44071073, '2009-03-04 20:32:02', '2021-06-26 16:39:21');
INSERT INTO `mahasiswas` VALUES (8, 84831056, 'Christine Reed', 'F', '922 Flatbush Ave', 47615781, '2007-09-23 11:21:08', '2006-12-13 00:41:13');
INSERT INTO `mahasiswas` VALUES (9, 11436203, 'Ueda Daichi', 'M', '147 Tremont Road', 20319418, '2005-02-17 06:44:37', '2015-01-29 08:01:57');
INSERT INTO `mahasiswas` VALUES (10, 76934989, 'Amy Grant', 'F', '129 Bergen St', 49051042, '2019-12-31 10:04:16', '2007-01-04 04:27:44');
INSERT INTO `mahasiswas` VALUES (11, 98835932, 'Randy Gonzales', 'M', '366 Canal Street', 68298836, '2020-08-09 18:51:01', '2016-11-06 15:51:58');
INSERT INTO `mahasiswas` VALUES (12, 66772903, 'Ishikawa Daichi', 'M', '12 Central Avenue', 52960058, '2003-12-17 19:45:57', '2000-03-05 02:16:30');
INSERT INTO `mahasiswas` VALUES (13, 38852296, 'Takahashi Hina', 'F', '725 The Pavilion, Lammas Field, Driftway', 52380662, '2011-03-01 16:19:48', '2010-09-30 07:27:29');
INSERT INTO `mahasiswas` VALUES (14, 15105492, 'Yamada Ikki', 'M', '396 Cyril St, Braunstone Town', 61983810, '2018-08-08 03:21:04', '2002-05-12 04:04:29');
INSERT INTO `mahasiswas` VALUES (15, 39215061, 'Takahashi Momoe', 'F', '24 Papworth Rd, Trumpington', 56211452, '2002-08-22 21:33:14', '2001-12-25 21:34:30');
INSERT INTO `mahasiswas` VALUES (16, 67196434, 'Inoue Ayato', 'M', '747 Wall Street', 98661753, '2014-10-26 17:35:05', '2021-07-20 07:32:48');
INSERT INTO `mahasiswas` VALUES (17, 57966283, 'Patrick Garza', 'M', '974 Hanover Street', 73925976, '2003-08-08 00:37:33', '2016-04-08 10:55:11');
INSERT INTO `mahasiswas` VALUES (18, 25444256, 'Mori Kazuma', 'M', '895 Diplomacy Drive', 15844951, '2019-06-07 06:12:44', '2011-08-04 02:29:56');
INSERT INTO `mahasiswas` VALUES (19, 96890658, 'Yoshida Seiko', 'F', '867 Aigburth Rd, Aigburth', 96193475, '2004-05-09 23:26:28', '2001-05-15 07:04:57');
INSERT INTO `mahasiswas` VALUES (20, 91773899, 'Monica Daniels', 'F', '876 49/50 Strand, Charing Cross', 50862216, '2014-05-18 22:32:04', '2009-10-23 01:46:18');
INSERT INTO `mahasiswas` VALUES (21, 55706743, 'Ikeda Riku', 'M', '784 The Pavilion, Lammas Field, Driftway', 72101832, '2007-01-16 08:07:39', '2017-03-04 07:50:12');
INSERT INTO `mahasiswas` VALUES (22, 20662384, 'Otsuka Shino', 'F', '867 Bergen St', 31598694, '2010-12-13 11:17:59', '2009-12-03 13:02:26');
INSERT INTO `mahasiswas` VALUES (23, 18664238, 'Samuel Hicks', 'M', '825 Silver St, Newnham', 37417875, '2000-08-25 02:32:31', '2008-02-19 09:19:53');
INSERT INTO `mahasiswas` VALUES (24, 43734450, 'Kojima Kasumi', 'M', '17 East Alley', 25327496, '2022-04-06 03:27:27', '2012-04-22 10:38:51');
INSERT INTO `mahasiswas` VALUES (25, 43863252, 'Annie Davis', 'F', '928 West Market Street', 12257413, '2015-01-11 18:04:50', '2001-04-12 20:56:22');
INSERT INTO `mahasiswas` VALUES (26, 89494336, 'Saito Ayato', 'M', '106 Fern Street', 57344249, '2012-12-14 02:57:28', '2021-12-07 13:32:13');
INSERT INTO `mahasiswas` VALUES (27, 30645222, 'Keith Wright', 'M', '868 Pollen Street', 91184264, '2017-06-29 08:44:34', '2009-03-07 19:53:54');
INSERT INTO `mahasiswas` VALUES (28, 49652829, 'Fred White', 'M', '72 Broadway', 68241661, '2012-10-26 23:12:35', '2001-01-10 07:19:45');
INSERT INTO `mahasiswas` VALUES (29, 28438810, 'Harold Stone', 'M', '377 Maddox Street', 39929582, '2011-11-30 06:32:50', '2021-08-06 01:49:58');
INSERT INTO `mahasiswas` VALUES (30, 63600216, 'Gary Ruiz', 'M', '912 Maddox Street', 30424486, '2010-04-05 18:40:13', '2017-08-14 03:28:51');
INSERT INTO `mahasiswas` VALUES (31, 48694136, 'Yamazaki Ayano', 'F', '369 Little Clarendon St', 27169282, '2004-10-11 07:39:31', '2005-09-15 16:32:07');
INSERT INTO `mahasiswas` VALUES (32, 66689317, 'Taniguchi Hana', 'F', '545 Bank Street', 28377837, '2006-05-30 07:58:06', '2021-10-23 16:23:16');
INSERT INTO `mahasiswas` VALUES (33, 72335907, 'Ueda Airi', 'F', '629 Redfern St', 15258712, '2006-10-17 02:44:26', '2002-08-05 18:54:32');
INSERT INTO `mahasiswas` VALUES (34, 62061196, 'Doris Sullivan', 'F', '896 Stephenson Street', 47322195, '2016-02-04 02:35:38', '2005-04-11 09:46:27');
INSERT INTO `mahasiswas` VALUES (35, 83501919, 'Ueno Seiko', 'F', '212 Wicklow Road', 22636060, '2003-12-10 05:54:21', '2018-01-22 07:34:12');
INSERT INTO `mahasiswas` VALUES (36, 77657254, 'Jose Jordan', 'M', '71 Portland St', 60417240, '2015-11-24 16:43:47', '2017-07-12 13:55:07');
INSERT INTO `mahasiswas` VALUES (37, 92724294, 'Takeda Shino', 'F', '534 Elms Rd, Botley', 98261734, '2014-07-29 23:04:14', '2004-12-11 05:14:38');
INSERT INTO `mahasiswas` VALUES (38, 33889195, 'Yamamoto Miu', 'F', '263 Redfern St', 91793518, '2003-01-24 22:58:06', '2006-11-14 23:39:14');
INSERT INTO `mahasiswas` VALUES (39, 52043843, 'Matsuda Kaito', 'M', '99 Columbia St', 38187402, '2013-10-27 22:29:06', '2008-08-31 00:43:26');
INSERT INTO `mahasiswas` VALUES (40, 54964060, 'Matsui Ikki', 'M', '360 Abingdon Rd, Cumnor', 91252064, '2013-06-20 11:24:13', '2001-06-27 18:11:13');
INSERT INTO `mahasiswas` VALUES (41, 97664778, 'Chiba Hazuki', 'F', '680 Papworth Rd, Trumpington', 76562979, '2016-09-21 00:57:31', '2005-08-22 20:36:48');
INSERT INTO `mahasiswas` VALUES (42, 54697539, 'Ono Yota', 'M', '368 Hinckley Rd', 50456401, '2015-07-19 08:53:36', '2009-05-30 12:03:36');
INSERT INTO `mahasiswas` VALUES (43, 63416084, 'James Phillips', 'M', '578 Fern Street', 38769536, '2002-05-26 21:50:39', '2009-02-09 16:09:39');
INSERT INTO `mahasiswas` VALUES (44, 12106485, 'Michelle Martinez', 'F', '16 Hanover Street', 85301353, '2018-09-02 05:08:23', '2013-09-14 04:22:11');
INSERT INTO `mahasiswas` VALUES (45, 31262698, 'Yokoyama Yamato', 'M', '819 Mosley St', 35334974, '2008-07-14 09:55:27', '2016-09-28 23:12:43');
INSERT INTO `mahasiswas` VALUES (46, 41681315, 'Miura Ren', 'F', '667 Hinckley Rd', 60700494, '2004-01-22 19:07:56', '2000-08-20 06:30:05');
INSERT INTO `mahasiswas` VALUES (47, 80733131, 'Sylvia Stone', 'F', '974 Wyngate Dr', 86715886, '2017-04-01 01:39:44', '2007-07-02 05:16:55');
INSERT INTO `mahasiswas` VALUES (48, 39867375, 'Kono Ayato', 'M', '470 East Cooke Road', 92047711, '2021-02-03 04:41:33', '2016-04-22 13:50:15');
INSERT INTO `mahasiswas` VALUES (49, 34919670, 'Hirano Kasumi', 'M', '159 S Broadway', 52155222, '2008-12-15 04:32:24', '2008-08-29 16:59:24');
INSERT INTO `mahasiswas` VALUES (50, 46658838, 'Iwasaki Hikaru', 'F', '37 Diplomacy Drive', 70013097, '2015-05-18 05:40:54', '2001-05-18 18:37:51');
INSERT INTO `mahasiswas` VALUES (51, 99796607, 'Sato Kenta', 'M', '735 Wall Street', 87376848, '2012-08-20 22:56:59', '2021-10-28 06:37:27');
INSERT INTO `mahasiswas` VALUES (52, 90443986, 'Kobayashi Tsubasa', 'M', '736 Figueroa Street', 29049022, '2002-10-27 21:58:04', '2011-10-18 09:22:08');
INSERT INTO `mahasiswas` VALUES (53, 18737017, 'Ono Minato', 'M', '485 West Market Street', 48335832, '2004-04-01 00:16:40', '2009-08-29 07:07:16');
INSERT INTO `mahasiswas` VALUES (54, 63912347, 'Ichikawa Daisuke', 'M', '919 Portland St', 94294572, '2008-07-27 08:44:38', '2010-12-19 11:35:29');
INSERT INTO `mahasiswas` VALUES (55, 91534509, 'James Martinez', 'M', '564 Broadway', 44612040, '2006-05-08 06:45:29', '2022-02-01 15:04:13');
INSERT INTO `mahasiswas` VALUES (56, 12628567, 'Kondo Sakura', 'F', '498 State Street', 64054779, '2003-12-03 11:02:34', '2014-08-21 17:55:51');
INSERT INTO `mahasiswas` VALUES (57, 14789358, 'Grace Murphy', 'F', '622 Hanover Street', 48517450, '2017-08-26 18:35:02', '2020-11-11 04:48:12');
INSERT INTO `mahasiswas` VALUES (58, 41348097, 'William Torres', 'M', '436 Riverview Road', 13655896, '2001-09-01 22:43:23', '2014-10-17 07:40:32');
INSERT INTO `mahasiswas` VALUES (59, 11077067, 'Adam Wallace', 'M', '154 The Pavilion, Lammas Field, Driftway', 65155948, '2002-02-12 22:40:27', '2022-08-28 04:35:55');
INSERT INTO `mahasiswas` VALUES (60, 36630357, 'Ryan Garcia', 'M', '701 Silver St, Newnham', 68631528, '2010-02-27 21:37:39', '2000-12-20 19:34:30');
INSERT INTO `mahasiswas` VALUES (61, 35488949, 'Sakurai Hazuki', 'F', '264 The Pavilion, Lammas Field, Driftway', 75832123, '2016-04-13 15:23:48', '2019-06-02 22:38:26');
INSERT INTO `mahasiswas` VALUES (62, 18349934, 'Louise Munoz', 'F', '396 Park End St', 98089052, '2013-04-30 07:12:44', '2002-12-11 05:15:42');
INSERT INTO `mahasiswas` VALUES (63, 85095827, 'Frank Chen', 'M', '672 New Street', 22626948, '2009-02-04 14:03:11', '2021-11-04 12:38:27');
INSERT INTO `mahasiswas` VALUES (64, 86784338, 'Sano Ayano', 'F', '408 Whitehouse Lane, Huntingdon Rd', 19257429, '2006-11-29 21:04:04', '2000-12-04 03:42:06');
INSERT INTO `mahasiswas` VALUES (65, 44474688, 'Arimura Hazuki', 'F', '774 Central Avenue', 55880474, '2004-02-23 16:04:11', '2002-11-15 12:26:09');
INSERT INTO `mahasiswas` VALUES (66, 42515864, 'Francis Gomez', 'M', '508 Maddox Street', 41637581, '2017-03-31 16:40:20', '2000-04-04 23:11:18');
INSERT INTO `mahasiswas` VALUES (67, 23883390, 'Theresa Rice', 'F', '310 Sky Way', 16628971, '2002-11-07 18:15:00', '2019-06-01 16:06:57');
INSERT INTO `mahasiswas` VALUES (68, 48953889, 'Abe Hana', 'F', '16 Fern Street', 56253991, '2013-05-10 02:20:46', '2001-07-19 14:17:17');
INSERT INTO `mahasiswas` VALUES (69, 55644680, 'Yamashita Ayato', 'M', '569 Abingdon Rd, Cumnor', 19854952, '2018-07-06 12:56:23', '2003-11-02 18:13:58');
INSERT INTO `mahasiswas` VALUES (70, 61335575, 'Eugene Warren', 'M', '602 Cyril St, Braunstone Town', 61733224, '2022-08-09 15:26:12', '2002-09-07 15:29:00');
INSERT INTO `mahasiswas` VALUES (71, 51522660, 'Abe Rin', 'F', '800 Hinckley Rd', 59372654, '2016-03-12 22:19:23', '2012-02-07 10:01:20');
INSERT INTO `mahasiswas` VALUES (72, 60730266, 'Kimura Yuna', 'F', '865 Sackville St', 52966712, '2010-06-28 00:50:38', '2001-12-30 02:12:11');
INSERT INTO `mahasiswas` VALUES (73, 43094196, 'Kato Sakura', 'F', '500 Nostrand Ave', 90629420, '2017-07-21 22:10:54', '2021-08-16 11:08:16');
INSERT INTO `mahasiswas` VALUES (74, 51425413, 'Maeda Sakura', 'F', '943 Columbia St', 74047853, '2021-03-07 10:20:20', '2009-10-09 00:33:33');
INSERT INTO `mahasiswas` VALUES (75, 94324563, 'Kobayashi Ryota', 'M', '87 Trafalgar Square, Charing Cross', 30149793, '2013-09-05 16:23:29', '2017-10-04 03:06:47');
INSERT INTO `mahasiswas` VALUES (76, 58540499, 'Susan Gordon', 'F', '106 Trafalgar Square, Charing Cross', 39645095, '2016-11-30 17:47:50', '2005-09-27 12:46:40');
INSERT INTO `mahasiswas` VALUES (77, 35597716, 'Okamoto Yuito', 'M', '254 Tremont Road', 64250498, '2018-09-30 07:23:11', '2009-03-16 07:58:17');
INSERT INTO `mahasiswas` VALUES (78, 61023336, 'Sato Aoshi', 'M', '37 East Cooke Road', 69968967, '2001-04-30 14:20:03', '2013-10-09 02:47:01');
INSERT INTO `mahasiswas` VALUES (79, 83673618, 'Carlos Gibson', 'M', '284 New Street', 32325823, '2004-12-19 03:38:46', '2022-02-05 05:18:47');
INSERT INTO `mahasiswas` VALUES (80, 54998811, 'Ichikawa Rin', 'F', '55 Little Clarendon St', 34295144, '2019-12-15 22:16:33', '2012-02-19 12:43:21');
INSERT INTO `mahasiswas` VALUES (81, 99193090, 'Shimada Miu', 'F', '318 North Michigan Ave', 37860508, '2018-04-09 06:19:47', '2019-10-08 14:39:28');
INSERT INTO `mahasiswas` VALUES (82, 51706104, 'Fukuda Kenta', 'M', '314 Park End St', 78810904, '2011-09-14 14:48:30', '2019-08-23 09:07:46');
INSERT INTO `mahasiswas` VALUES (83, 50919107, 'Wanda Sanchez', 'F', '418 Hanover Street', 78085631, '2014-09-02 08:42:56', '2017-05-17 05:28:50');
INSERT INTO `mahasiswas` VALUES (84, 29786435, 'Sakai Yuna', 'F', '795 Bank Street', 81666914, '2005-08-07 21:29:06', '2011-03-25 09:56:58');
INSERT INTO `mahasiswas` VALUES (85, 93157393, 'Chiba Ikki', 'M', '130 Columbia St', 50810125, '2005-10-04 23:16:52', '2020-07-25 04:04:15');
INSERT INTO `mahasiswas` VALUES (86, 38320583, 'Kimura Momoka', 'F', '803 Alameda Street', 49772961, '2016-02-23 12:45:06', '2013-07-19 02:51:00');
INSERT INTO `mahasiswas` VALUES (87, 89356498, 'Imai Kazuma', 'M', '596 Wooster Street', 37070270, '2004-01-28 19:03:10', '2013-10-21 07:01:25');
INSERT INTO `mahasiswas` VALUES (88, 91480864, 'James Morgan', 'M', '636 Lark Street', 23132569, '2020-11-05 22:01:17', '2022-06-07 09:17:17');
INSERT INTO `mahasiswas` VALUES (89, 51141294, 'Sakamoto Daisuke', 'M', '390 Regent Street', 62634663, '2010-08-16 22:06:48', '2005-03-18 13:05:33');
INSERT INTO `mahasiswas` VALUES (90, 95021263, 'Timothy Davis', 'M', '756 Narborough Rd', 60134046, '2001-07-20 04:18:36', '2009-03-25 16:37:25');
INSERT INTO `mahasiswas` VALUES (91, 17259063, 'Nakagawa Tsubasa', 'M', '68 Sky Way', 81924201, '2021-05-19 17:38:15', '2020-10-10 13:03:23');
INSERT INTO `mahasiswas` VALUES (92, 65541842, 'Jeffrey Jones', 'M', '489 Regent Street', 22430646, '2005-07-26 21:34:24', '2017-06-06 02:20:41');
INSERT INTO `mahasiswas` VALUES (93, 49941644, 'Willie Chen', 'M', '777 Grape Street', 76548364, '2017-08-23 20:22:11', '2008-06-22 11:04:17');
INSERT INTO `mahasiswas` VALUES (94, 23693442, 'Nakamori Hazuki', 'F', '148 Hanover Street', 82146236, '2020-11-15 10:34:27', '2019-03-02 14:34:01');
INSERT INTO `mahasiswas` VALUES (95, 58286751, 'Stanley Alexander', 'M', '288 Sackville St', 29221399, '2000-04-10 16:20:54', '2015-01-31 04:10:25');
INSERT INTO `mahasiswas` VALUES (96, 42682950, 'Johnny Bell', 'M', '968 Cyril St, Braunstone Town', 69422506, '2018-03-01 10:09:01', '2010-05-08 03:59:29');
INSERT INTO `mahasiswas` VALUES (97, 26465424, 'Taniguchi Aoi', 'F', '8 Silver St, Newnham', 92683929, '2014-11-14 17:34:11', '2009-08-25 11:14:05');
INSERT INTO `mahasiswas` VALUES (98, 67011237, 'Kimura Yuna', 'F', '802 Figueroa Street', 96533463, '2021-02-24 06:15:03', '2000-06-26 03:47:26');
INSERT INTO `mahasiswas` VALUES (99, 56721737, 'Maruyama Nanami', 'M', '441 39 William IV St, Charing Cross', 53609395, '2022-08-02 04:21:35', '2020-03-03 13:19:15');
INSERT INTO `mahasiswas` VALUES (100, 62336353, 'Fujita Nanami', 'M', '332 Whitehouse Lane, Huntingdon Rd', 82064969, '2011-07-24 06:39:01', '2018-02-11 10:20:00');
INSERT INTO `mahasiswas` VALUES (101, 465262894, 'Eko Suroso', 'F', 'Barcelona Kulon 12c', 518426, '2022-08-28 11:31:01', '2022-08-28 11:46:20');
INSERT INTO `mahasiswas` VALUES (102, 2564156, 'Adi Perkoso', 'M', 'Madrid selatan 4g', 51161, '2022-08-28 11:33:43', '2022-08-28 11:33:43');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2022_08_28_101916_create_mahasiswas_table', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
