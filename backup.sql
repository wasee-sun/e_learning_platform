-- MySQL dump 10.13  Distrib 8.0.39, for Win64 (x86_64)
--
-- Host: localhost    Database: codextra
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add user',7,'add_user'),(26,'Can change user',7,'change_user'),(27,'Can delete user',7,'delete_user'),(28,'Can view user',7,'view_user'),(29,'Can add instructor',8,'add_instructor'),(30,'Can change instructor',8,'change_instructor'),(31,'Can delete instructor',8,'delete_instructor'),(32,'Can view instructor',8,'view_instructor'),(33,'Can add student',9,'add_student'),(34,'Can change student',9,'change_student'),(35,'Can delete student',9,'delete_student'),(36,'Can view student',9,'view_student'),(37,'Can add course',10,'add_course'),(38,'Can change course',10,'change_course'),(39,'Can delete course',10,'delete_course'),(40,'Can view course',10,'view_course'),(41,'Can add category',11,'add_category'),(42,'Can change category',11,'change_category'),(43,'Can delete category',11,'delete_category'),(44,'Can view category',11,'view_category'),(45,'Can add cart',12,'add_cart'),(46,'Can change cart',12,'change_cart'),(47,'Can delete cart',12,'delete_cart'),(48,'Can view cart',12,'view_cart'),(49,'Can add enroll',13,'add_enroll'),(50,'Can change enroll',13,'change_enroll'),(51,'Can delete enroll',13,'delete_enroll'),(52,'Can view enroll',13,'view_enroll'),(53,'Can add transaction',14,'add_transaction'),(54,'Can change transaction',14,'change_transaction'),(55,'Can delete transaction',14,'delete_transaction'),(56,'Can view transaction',14,'view_transaction'),(57,'Can add digital_ wallet',15,'add_digital_wallet'),(58,'Can change digital_ wallet',15,'change_digital_wallet'),(59,'Can delete digital_ wallet',15,'delete_digital_wallet'),(60,'Can view digital_ wallet',15,'view_digital_wallet'),(61,'Can add course_material',16,'add_course_material'),(62,'Can change course_material',16,'change_course_material'),(63,'Can delete course_material',16,'delete_course_material'),(64,'Can view course_material',16,'view_course_material');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$870000$nnNqBUr6CWpAgjLC2JuyMG$6de+0pDTclaKYvWHiWPP4DpfXXUmpM3V77cfTHAhjuM=','2024-09-14 22:04:44.540882',1,'sun','','','djangosun@gmail.com',1,1,'2024-09-14 22:04:14.468512');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codextra_cart`
--

DROP TABLE IF EXISTS `codextra_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codextra_cart` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `s_user_name_id` varchar(150) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `codextra_cart_s_user_name_id_6921949d_fk_codextra_` (`s_user_name_id`),
  CONSTRAINT `codextra_cart_s_user_name_id_6921949d_fk_codextra_` FOREIGN KEY (`s_user_name_id`) REFERENCES `codextra_student` (`user_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codextra_cart`
--

LOCK TABLES `codextra_cart` WRITE;
/*!40000 ALTER TABLE `codextra_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `codextra_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codextra_category`
--

DROP TABLE IF EXISTS `codextra_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codextra_category` (
  `cat_id` int NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(100) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codextra_category`
--

LOCK TABLES `codextra_category` WRITE;
/*!40000 ALTER TABLE `codextra_category` DISABLE KEYS */;
INSERT INTO `codextra_category` VALUES (1,'Data Science');
/*!40000 ALTER TABLE `codextra_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codextra_course`
--

DROP TABLE IF EXISTS `codextra_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codextra_course` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(100) NOT NULL,
  `difficulty` varchar(15) NOT NULL,
  `price` double NOT NULL,
  `description` varchar(500) NOT NULL,
  `cat_id_id` int NOT NULL,
  `inst_user_name_id` varchar(150) NOT NULL,
  PRIMARY KEY (`course_id`),
  KEY `codextra_course_cat_id_id_cbe5ba5d_fk_codextra_category_cat_id` (`cat_id_id`),
  KEY `codextra_course_inst_user_name_id_40e0d623_fk_codextra_` (`inst_user_name_id`),
  CONSTRAINT `codextra_course_cat_id_id_cbe5ba5d_fk_codextra_category_cat_id` FOREIGN KEY (`cat_id_id`) REFERENCES `codextra_category` (`cat_id`),
  CONSTRAINT `codextra_course_inst_user_name_id_40e0d623_fk_codextra_` FOREIGN KEY (`inst_user_name_id`) REFERENCES `codextra_instructor` (`user_ptr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codextra_course`
--

LOCK TABLES `codextra_course` WRITE;
/*!40000 ALTER TABLE `codextra_course` DISABLE KEYS */;
INSERT INTO `codextra_course` VALUES (1,'Data Science for Beginners','beginner',19.99,'One of the leading course in the world. Take this course for having a great data science career.',1,'rasif');
/*!40000 ALTER TABLE `codextra_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codextra_course_material`
--

DROP TABLE IF EXISTS `codextra_course_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codextra_course_material` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `section_no` int NOT NULL,
  `section_name` varchar(100) NOT NULL,
  `m_type` varchar(5) NOT NULL,
  `m_title` varchar(100) NOT NULL,
  `file_loc` varchar(100) NOT NULL,
  `duration` double DEFAULT NULL,
  `course_id_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codextra_course_material_course_id_id_section_no__bd89643d_uniq` (`course_id_id`,`section_no`,`m_title`),
  CONSTRAINT `codextra_course_mate_course_id_id_a9147abe_fk_codextra_` FOREIGN KEY (`course_id_id`) REFERENCES `codextra_course` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codextra_course_material`
--

LOCK TABLES `codextra_course_material` WRITE;
/*!40000 ALTER TABLE `codextra_course_material` DISABLE KEYS */;
INSERT INTO `codextra_course_material` VALUES (7,1,'1','pdf','2323','media_files/370_Project_-_EER.drawio.pdf',NULL,1);
/*!40000 ALTER TABLE `codextra_course_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codextra_digital_wallet`
--

DROP TABLE IF EXISTS `codextra_digital_wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codextra_digital_wallet` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `card_name` varchar(100) NOT NULL,
  `card_no` int NOT NULL,
  `exp_date` date NOT NULL,
  `cvc` int NOT NULL,
  `c_balance` double NOT NULL,
  `s_user_name_id` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `codextra_digital_wal_s_user_name_id_8c1d7d9a_fk_codextra_` (`s_user_name_id`),
  CONSTRAINT `codextra_digital_wal_s_user_name_id_8c1d7d9a_fk_codextra_` FOREIGN KEY (`s_user_name_id`) REFERENCES `codextra_student` (`user_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codextra_digital_wallet`
--

LOCK TABLES `codextra_digital_wallet` WRITE;
/*!40000 ALTER TABLE `codextra_digital_wallet` DISABLE KEYS */;
/*!40000 ALTER TABLE `codextra_digital_wallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codextra_enroll`
--

DROP TABLE IF EXISTS `codextra_enroll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codextra_enroll` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `rating_no` int NOT NULL,
  `description` varchar(500) NOT NULL,
  `course_id_id` int NOT NULL,
  `order_id_id` int NOT NULL,
  `s_user_name_id` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `codextra_enroll_course_id_id_07eed7b7_fk_codextra_` (`course_id_id`),
  KEY `codextra_enroll_order_id_id_3dd70731_fk_codextra_cart_order_id` (`order_id_id`),
  KEY `codextra_enroll_s_user_name_id_2eba9d13_fk_codextra_` (`s_user_name_id`),
  CONSTRAINT `codextra_enroll_course_id_id_07eed7b7_fk_codextra_` FOREIGN KEY (`course_id_id`) REFERENCES `codextra_course` (`course_id`),
  CONSTRAINT `codextra_enroll_order_id_id_3dd70731_fk_codextra_cart_order_id` FOREIGN KEY (`order_id_id`) REFERENCES `codextra_cart` (`order_id`),
  CONSTRAINT `codextra_enroll_s_user_name_id_2eba9d13_fk_codextra_` FOREIGN KEY (`s_user_name_id`) REFERENCES `codextra_student` (`user_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codextra_enroll`
--

LOCK TABLES `codextra_enroll` WRITE;
/*!40000 ALTER TABLE `codextra_enroll` DISABLE KEYS */;
/*!40000 ALTER TABLE `codextra_enroll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codextra_instructor`
--

DROP TABLE IF EXISTS `codextra_instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codextra_instructor` (
  `user_ptr_id` varchar(150) NOT NULL,
  `bank_account` int NOT NULL,
  `routing_no` int NOT NULL,
  PRIMARY KEY (`user_ptr_id`),
  CONSTRAINT `codextra_instructor_user_ptr_id_00952c40_fk_codextra_` FOREIGN KEY (`user_ptr_id`) REFERENCES `codextra_user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codextra_instructor`
--

LOCK TABLES `codextra_instructor` WRITE;
/*!40000 ALTER TABLE `codextra_instructor` DISABLE KEYS */;
INSERT INTO `codextra_instructor` VALUES ('rasif',1203840445,344400);
/*!40000 ALTER TABLE `codextra_instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codextra_student`
--

DROP TABLE IF EXISTS `codextra_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codextra_student` (
  `user_ptr_id` varchar(150) NOT NULL,
  `level` int NOT NULL,
  PRIMARY KEY (`user_ptr_id`),
  CONSTRAINT `codextra_student_user_ptr_id_4422d241_fk_codextra_user_username` FOREIGN KEY (`user_ptr_id`) REFERENCES `codextra_user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codextra_student`
--

LOCK TABLES `codextra_student` WRITE;
/*!40000 ALTER TABLE `codextra_student` DISABLE KEYS */;
INSERT INTO `codextra_student` VALUES ('Anonna',0),('sany',12);
/*!40000 ALTER TABLE `codextra_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codextra_transaction`
--

DROP TABLE IF EXISTS `codextra_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codextra_transaction` (
  `t_id` int NOT NULL AUTO_INCREMENT,
  `t_date` date NOT NULL,
  `course_id_id` int NOT NULL,
  `order_id_id` int NOT NULL,
  PRIMARY KEY (`t_id`),
  KEY `codextra_transaction_course_id_id_3575e33a_fk_codextra_` (`course_id_id`),
  KEY `codextra_transaction_order_id_id_99a650ad_fk_codextra_` (`order_id_id`),
  CONSTRAINT `codextra_transaction_course_id_id_3575e33a_fk_codextra_` FOREIGN KEY (`course_id_id`) REFERENCES `codextra_course` (`course_id`),
  CONSTRAINT `codextra_transaction_order_id_id_99a650ad_fk_codextra_` FOREIGN KEY (`order_id_id`) REFERENCES `codextra_cart` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codextra_transaction`
--

LOCK TABLES `codextra_transaction` WRITE;
/*!40000 ALTER TABLE `codextra_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `codextra_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codextra_user`
--

DROP TABLE IF EXISTS `codextra_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codextra_user` (
  `username` varchar(150) NOT NULL,
  `password` varchar(128) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codextra_user`
--

LOCK TABLES `codextra_user` WRITE;
/*!40000 ALTER TABLE `codextra_user` DISABLE KEYS */;
INSERT INTO `codextra_user` VALUES ('Anonna','djangoanonna','Sharmin','Anonna','annona@gmail.com'),('rasif','djangorasif','Rasif','Yumn','rasif@gmail.com'),('sany','djangosany','Abdullahis','Sany','sany@gmail.com');
/*!40000 ALTER TABLE `codextra_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-09-14 22:05:18.192683','sany','Abdullahis Sany (sany)',1,'[{\"added\": {}}]',7,1),(2,'2024-09-14 22:05:26.645691','sany','Abdullahis Sany (sany)',2,'[]',7,1),(3,'2024-09-14 22:13:04.327694','sany','Abdullahis Sany (sany)',3,'',7,1),(4,'2024-09-14 22:14:17.819045','sany','Abdullahis Sany',1,'[{\"added\": {}}]',9,1),(5,'2024-09-14 22:18:01.698706','Anonna','Sharmin Anonna',1,'[{\"added\": {}}]',9,1),(6,'2024-09-14 22:33:24.561081','rasif','Rasif Yumn',1,'[{\"added\": {}}]',8,1),(7,'2024-09-14 22:33:34.673761','1','Category object (1)',1,'[{\"added\": {}}]',11,1),(8,'2024-09-14 22:33:37.648813','1','Category object (1)',2,'[]',11,1),(9,'2024-09-14 22:33:54.618177','1','Category object (1)',2,'[]',11,1),(10,'2024-09-14 22:35:51.481432','1','Data Science for Beginners',1,'[{\"added\": {}}]',10,1),(11,'2024-09-14 22:35:55.058009','1','Data Science for Beginners',2,'[]',10,1),(12,'2024-09-14 23:28:20.727828','2','ER diagram',1,'[{\"added\": {}}]',16,1),(13,'2024-09-14 23:29:04.034652','2','ER diagram',3,'',16,1),(14,'2024-09-14 23:32:48.358559','3','something',1,'[{\"added\": {}}]',16,1),(15,'2024-09-14 23:33:04.966367','3','something',3,'',16,1),(16,'2024-09-14 23:41:04.260601','4','ER diagram',1,'[{\"added\": {}}]',16,1),(17,'2024-09-14 23:41:08.978800','4','ER diagram',2,'[]',16,1),(18,'2024-09-14 23:42:07.550819','5','sdf',1,'[{\"added\": {}}]',16,1),(19,'2024-09-14 23:44:30.487776','5','sdf',3,'',16,1),(20,'2024-09-14 23:44:44.840783','6','asds',1,'[{\"added\": {}}]',16,1),(21,'2024-09-14 23:45:17.232616','6','asds',3,'',16,1),(22,'2024-09-14 23:45:19.673062','4','ER diagram',3,'',16,1),(23,'2024-09-14 23:47:36.709794','7','2323',1,'[{\"added\": {}}]',16,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(12,'codextra','cart'),(11,'codextra','category'),(10,'codextra','course'),(16,'codextra','course_material'),(15,'codextra','digital_wallet'),(13,'codextra','enroll'),(8,'codextra','instructor'),(9,'codextra','student'),(14,'codextra','transaction'),(7,'codextra','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-09-14 22:02:15.195051'),(2,'auth','0001_initial','2024-09-14 22:02:15.852472'),(3,'admin','0001_initial','2024-09-14 22:02:16.042849'),(4,'admin','0002_logentry_remove_auto_add','2024-09-14 22:02:16.048877'),(5,'admin','0003_logentry_add_action_flag_choices','2024-09-14 22:02:16.058344'),(6,'contenttypes','0002_remove_content_type_name','2024-09-14 22:02:16.148319'),(7,'auth','0002_alter_permission_name_max_length','2024-09-14 22:02:16.237511'),(8,'auth','0003_alter_user_email_max_length','2024-09-14 22:02:16.262193'),(9,'auth','0004_alter_user_username_opts','2024-09-14 22:02:16.270453'),(10,'auth','0005_alter_user_last_login_null','2024-09-14 22:02:16.345255'),(11,'auth','0006_require_contenttypes_0002','2024-09-14 22:02:16.349869'),(12,'auth','0007_alter_validators_add_error_messages','2024-09-14 22:02:16.357680'),(13,'auth','0008_alter_user_username_max_length','2024-09-14 22:02:16.445933'),(14,'auth','0009_alter_user_last_name_max_length','2024-09-14 22:02:16.523095'),(15,'auth','0010_alter_group_name_max_length','2024-09-14 22:02:16.545079'),(16,'auth','0011_update_proxy_permissions','2024-09-14 22:02:16.554458'),(17,'auth','0012_alter_user_first_name_max_length','2024-09-14 22:02:16.637111'),(18,'codextra','0001_initial','2024-09-14 22:02:16.733644'),(19,'codextra','0002_user_email_user_f_name_user_l_name','2024-09-14 22:02:16.824583'),(20,'codextra','0003_remove_user_id_alter_user_user','2024-09-14 22:02:17.033596'),(21,'codextra','0004_delete_user','2024-09-14 22:02:17.052860'),(22,'codextra','0005_initial','2024-09-14 22:02:17.134059'),(23,'codextra','0006_delete_user','2024-09-14 22:02:17.149704'),(24,'sessions','0001_initial','2024-09-14 22:02:17.191671'),(25,'codextra','0007_initial','2024-09-14 22:03:02.408403'),(26,'codextra','0008_instructor_student','2024-09-14 22:09:21.548414'),(27,'codextra','0009_alter_instructor_bank_account_and_more','2024-09-14 22:17:05.518454'),(28,'codextra','0010_category_course','2024-09-14 22:30:45.437309'),(29,'codextra','0011_cart','2024-09-14 22:46:35.140899'),(30,'codextra','0012_digital_wallet_enroll_transaction','2024-09-14 23:05:59.958378'),(31,'codextra','0013_course_material','2024-09-14 23:24:39.634280'),(32,'codextra','0014_alter_course_material_duration_and_more','2024-09-14 23:40:20.235703'),(33,'codextra','0015_alter_course_material_file_loc','2024-09-14 23:46:59.756272');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('po1xaj4cxf3ij8aczaggbz9myfbwlhii','.eJxVjEEOwiAQRe_C2hAR2hlcuu8ZyDAMUjU0Ke3KeHfbpAvd_vfef6tA61LC2mQOY1JXZdTpd4vET6k7SA-q90nzVJd5jHpX9EGbHqYkr9vh_h0UamWrewKXMxqMvbUuM0oXHSIxG7QeABIzmsyb531n4SKSAfGcPViiGNXnC-cyODM:1spasm:ag7lcU0Qc4z-2623bapK4RK5naaFzJ7bVu5g64sOHvw','2024-09-28 22:04:44.545233');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-17 21:46:26
