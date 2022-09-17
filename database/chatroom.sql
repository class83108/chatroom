-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: justchat
-- ------------------------------------------------------
-- Server version	5.7.32

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add message',7,'add_message'),(26,'Can change message',7,'change_message'),(27,'Can delete message',7,'delete_message'),(28,'Can view message',7,'view_message'),(29,'Can add user',8,'add_user'),(30,'Can change user',8,'change_user'),(31,'Can delete user',8,'delete_user'),(32,'Can view user',8,'view_user'),(33,'Can add chat room',9,'add_chatroom'),(34,'Can change chat room',9,'change_chatroom'),(35,'Can delete chat room',9,'delete_chatroom'),(36,'Can view chat room',9,'view_chatroom'),(37,'Can add invitation_request',10,'add_invitation_request'),(38,'Can change invitation_request',10,'change_invitation_request'),(39,'Can delete invitation_request',10,'delete_invitation_request'),(40,'Can view invitation_request',10,'view_invitation_request');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_message`
--

DROP TABLE IF EXISTS `chat_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author_id` bigint(20) DEFAULT NULL,
  `content` longtext,
  `timestamp` datetime DEFAULT NULL,
  `group_name` longtext,
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `chat_message_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `user_user_profile` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_message`
--

LOCK TABLES `chat_message` WRITE;
/*!40000 ALTER TABLE `chat_message` DISABLE KEYS */;
INSERT INTO `chat_message` VALUES (1,2,'test','2022-08-10 06:53:11','chat_123'),(2,2,'test','2022-08-10 06:56:15','chat_123'),(3,2,'good','2022-08-10 06:57:08','chat_123'),(4,2,'nice to meet you','2022-08-10 06:57:16','chat_123'),(5,2,'test','2022-08-10 07:11:49','chat_123'),(6,2,'test','2022-08-10 07:16:14','chat_123'),(7,2,'456','2022-08-10 19:01:40','chat_123'),(8,2,'456','2022-08-10 19:50:16','chat_123'),(9,2,'787','2022-08-10 19:50:23','chat_123'),(10,2,'456','2022-08-11 16:18:25','chat_public'),(11,2,'56','2022-08-11 17:56:42','chat_public'),(12,3,'45','2022-08-12 00:54:31','chat_public'),(13,2,'456','2022-08-12 01:06:40','chat_public'),(14,2,'456','2022-08-12 01:07:01','chat_public'),(15,3,'789','2022-08-12 01:07:09','chat_public'),(16,2,'456','2022-08-12 01:09:02','chat_public'),(17,3,'456','2022-08-12 01:09:12','chat_public'),(18,2,'4','2022-08-12 01:17:27','chat_public'),(19,2,'5','2022-08-12 01:17:28','chat_public'),(20,2,'7','2022-08-12 01:17:36','chat_public'),(21,2,'789','2022-08-12 01:17:42','chat_public'),(22,2,'789','2022-08-12 01:19:22','chat_public'),(23,2,'789','2022-08-12 01:19:27','chat_public'),(24,2,'56','2022-08-12 01:21:34','chat_public'),(25,2,'789','2022-08-12 01:27:41','chat_public'),(26,2,'test','2022-08-12 01:27:47','chat_public'),(27,2,'hello','2022-08-12 01:30:00','chat_public'),(28,2,'how are you','2022-08-12 01:30:13','chat_public'),(29,2,'fine','2022-08-12 01:31:04','chat_public'),(30,2,'qwe','2022-08-12 01:32:19','chat_public'),(31,2,'456','2022-08-12 01:33:56','chat_public'),(32,2,'789','2022-08-12 01:33:59','chat_public'),(33,2,'456','2022-08-12 01:34:06','chat_public'),(34,2,'465','2022-08-12 01:34:07','chat_public'),(35,2,'46','2022-08-12 01:34:09','chat_public'),(36,2,'456','2022-08-12 01:34:13','chat_public'),(37,2,'456','2022-08-12 01:34:53','chat_public'),(38,2,'5','2022-08-12 01:34:56','chat_public'),(39,2,'5','2022-08-12 01:34:59','chat_public'),(40,2,'8','2022-08-12 01:35:01','chat_public'),(41,2,'456','2022-08-13 06:53:49','chat_public'),(42,2,'45','2022-08-15 00:46:01','chat_public'),(43,3,'58','2022-08-15 12:43:44','chat_public'),(44,3,'test','2022-08-15 12:43:58','chat_public'),(45,3,'hello','2022-08-15 12:44:04','chat_public'),(46,3,'hello world','2022-08-15 13:48:50','chat_public'),(47,3,'7787','2022-08-15 13:51:36','chat_public'),(48,3,'呀','2022-08-15 13:55:27','chat_public'),(49,2,'啊呀','2022-08-15 13:55:54','chat_public'),(50,3,'呀比','2022-08-15 13:56:09','chat_public'),(51,2,'你好','2022-08-15 13:56:20','chat_public'),(52,2,'你好','2022-08-15 13:56:28','chat_public'),(53,2,'你好','2022-08-15 13:56:35','chat_public'),(54,2,'你好你','2022-08-15 13:56:39','chat_public'),(55,2,'hello test3','2022-08-15 14:44:01','chat_test3'),(56,2,'456','2022-08-15 15:03:16','chat_test3'),(57,2,'4545','2022-08-15 15:14:12','chat_test3'),(58,2,'456','2022-08-15 17:02:59','chat_public'),(59,2,'456','2022-08-15 17:21:19','chat_public'),(60,2,'456','2022-08-15 17:26:17','chat_public'),(61,2,'123','2022-08-15 17:28:09','chat_public'),(62,2,'23\n','2022-08-15 17:28:39','chat_public'),(63,2,'56','2022-08-15 17:28:42','chat_public'),(64,3,'hello\n','2022-08-15 17:41:39','chat_test3'),(65,4,'456','2022-08-15 17:42:28','chat_test3'),(66,2,'12','2022-08-15 17:49:40','chat_test3'),(67,8,'456','2022-08-15 17:50:28','chat_test3'),(68,8,'456','2022-08-15 17:52:58','chat_test3'),(69,8,'123','2022-08-15 17:53:05','chat_test3'),(70,8,'456','2022-08-15 17:53:44','chat_test3'),(71,8,'123','2022-08-15 17:54:16','chat_test3'),(72,8,'456','2022-08-15 17:55:52','chat_test3'),(73,8,'45','2022-08-15 17:57:39','chat_test3'),(74,8,'78','2022-08-15 17:57:46','chat_test3'),(75,8,'78','2022-08-15 17:58:37','chat_test3'),(76,8,'ki','2022-08-15 18:01:31','chat_test3'),(77,2,'123','2022-08-15 18:53:34','chat_test3'),(78,2,'456','2022-08-15 18:53:47','chat_test3'),(79,2,'哈囉\n','2022-08-15 19:36:10','chat_test5'),(80,9,'哈囉\n','2022-08-15 19:40:17','chat_test10'),(81,9,'哈囉\n','2022-08-15 19:40:27','chat_test10'),(82,9,'hello\n','2022-08-15 19:41:46','chat_test10'),(83,8,'good\n','2022-08-15 19:41:56','chat_test10'),(84,11,'hello\n','2022-08-15 19:43:38','chat_test10'),(85,8,'good','2022-08-15 19:44:04','chat_test10'),(86,11,'hello\n','2022-08-15 20:11:21','chat_test10'),(87,11,'good\n','2022-08-15 20:11:27','chat_test10'),(88,13,'哈囉\n','2022-08-15 20:15:06','chat_room'),(89,12,'嗨\n','2022-08-15 20:15:15','chat_room'),(90,13,'哈囉\n','2022-08-15 20:18:54','chat_public'),(91,13,'hello\n','2022-08-15 20:51:44','chat_room'),(92,12,'hey\n','2022-08-15 20:51:50','chat_room'),(93,13,'good\n','2022-08-15 20:52:38','chat_room'),(94,12,'\n4','2022-08-25 02:52:01','chat_room'),(95,12,'5','2022-08-25 02:52:06','chat_room'),(96,12,'123','2022-09-06 19:20:57','chat_public'),(97,12,'456\n','2022-09-06 19:21:39','chat_public');
/*!40000 ALTER TABLE `chat_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatroom_chatroom`
--

DROP TABLE IF EXISTS `chatroom_chatroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chatroom_chatroom` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `roomname` varchar(10) NOT NULL,
  `memember_id` bigint(20) NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `chatroom_chatroom_memember_id_6b321877_fk_user_user_profile_id` (`memember_id`),
  KEY `chatroom_chatroom_owner_id_de56f5c6_fk_user_user_profile_id` (`owner_id`),
  CONSTRAINT `chatroom_chatroom_memember_id_6b321877_fk_user_user_profile_id` FOREIGN KEY (`memember_id`) REFERENCES `user_user_profile` (`id`),
  CONSTRAINT `chatroom_chatroom_owner_id_de56f5c6_fk_user_user_profile_id` FOREIGN KEY (`owner_id`) REFERENCES `user_user_profile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatroom_chatroom`
--

LOCK TABLES `chatroom_chatroom` WRITE;
/*!40000 ALTER TABLE `chatroom_chatroom` DISABLE KEYS */;
INSERT INTO `chatroom_chatroom` VALUES (1,'True',3,2);
/*!40000 ALTER TABLE `chatroom_chatroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'chat','message'),(9,'chatroom','chatroom'),(5,'contenttypes','contenttype'),(10,'invitation','invitation_request'),(6,'sessions','session'),(8,'user','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-08-10 04:43:43.843533'),(2,'auth','0001_initial','2022-08-10 04:43:44.328655'),(3,'admin','0001_initial','2022-08-10 04:43:44.451591'),(4,'admin','0002_logentry_remove_auto_add','2022-08-10 04:43:44.466191'),(5,'admin','0003_logentry_add_action_flag_choices','2022-08-10 04:43:44.495654'),(6,'contenttypes','0002_remove_content_type_name','2022-08-10 04:43:44.591011'),(7,'auth','0002_alter_permission_name_max_length','2022-08-10 04:43:44.642378'),(8,'auth','0003_alter_user_email_max_length','2022-08-10 04:43:44.690498'),(9,'auth','0004_alter_user_username_opts','2022-08-10 04:43:44.706090'),(10,'auth','0005_alter_user_last_login_null','2022-08-10 04:43:44.752867'),(11,'auth','0006_require_contenttypes_0002','2022-08-10 04:43:44.756625'),(12,'auth','0007_alter_validators_add_error_messages','2022-08-10 04:43:44.770448'),(13,'auth','0008_alter_user_username_max_length','2022-08-10 04:43:44.858736'),(14,'auth','0009_alter_user_last_name_max_length','2022-08-10 04:43:44.927644'),(15,'auth','0010_alter_group_name_max_length','2022-08-10 04:43:44.992266'),(16,'auth','0011_update_proxy_permissions','2022-08-10 04:43:45.011356'),(17,'auth','0012_alter_user_first_name_max_length','2022-08-10 04:43:45.065656'),(18,'chat','0001_initial','2022-08-10 04:43:45.158596'),(19,'sessions','0001_initial','2022-08-10 04:43:45.221307'),(20,'user','0001_initial','2022-08-10 04:43:45.279639'),(21,'chat','0002_message_group_name','2022-08-10 05:54:31.999959'),(22,'chatroom','0001_initial','2022-08-10 14:51:59.246287'),(23,'invitation','0001_initial','2022-08-11 19:38:04.810649'),(24,'invitation','0002_invitation_request_password','2022-08-11 19:46:25.251158'),(25,'chat','0003_message_is_open','2022-08-13 06:43:16.985904'),(26,'invitation','0003_invitation_request_accept','2022-08-13 06:55:07.754662'),(27,'invitation','0004_invitation_request_avatar','2022-08-15 12:27:22.083048');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('16t9i7viois2qshw5z3hv45lrz1h4jam','eyJ1c2VybmFtZSI6Im9uZSIsInVpZCI6Mn0:1oLXFH:I9mHIFurQ5nVV8iGPY1VPzJrGwHMCM9J-8vcyTIGUK0','2022-08-24 05:58:39.860008'),('1izcxkf0anv5tovwfo8fcgartqp5o77d','eyJ1c2VybmFtZSI6Im9uZSIsInVpZCI6Mn0:1oN77Q:hegT4Qn2Qo2_CSH12ESL-uIU-kFgihq4wAo1jCBVdhU','2022-08-28 14:29:04.125091'),('5ej4yrvlrtad9cg61a4khkdwrq0wc31s','eyJ1c2VybmFtZSI6InRlc3RlcjIiLCJ1aWQiOjEzfQ:1oNYyZ:aLuRe571YEIGjfIDRj-lyY-H_dR221xsj8XRO14MOck','2022-08-29 20:13:47.647874'),('6zz9xbmdeiah9dfqcbhsz7osry2j36wf','eyJ1c2VybmFtZSI6Im9uZSIsInVpZCI6Mn0:1oN6zR:bWGXwxuAXp2wJarlbKrZ4p1dWQAbBhpwV6IYOdjJVoY','2022-08-28 14:20:49.857243'),('7h1j4cnpf3ibgpv554s1b4taizf54lop','eyJ1c2VybmFtZSI6InRlc3RlciIsInVpZCI6MTJ9:1oNYy0:UeXqPk7SoweG-xQyczEsLTvlPyAAYtNDIOUnBzdHKDk','2022-08-29 20:13:12.831078'),('8tubvx31acbvq7cr3yriy90ggboewm5i','eyJ1c2VybmFtZSI6Im9uZSIsInVpZCI6IjIifQ:1oNBN2:l4CbzDaMfhSLAIWqYsQ24FNqc-eY8O8hJ42WErA4fTE','2022-08-28 19:01:28.932572'),('995bvzcd9aexrczs3wr8cbez38kfgf8v','eyJ1c2VybmFtZSI6InR3byIsInVpZCI6M30:1oNGTY:KFCr6-iWoUuQ5r6f0QdWKgVEmWvXl7ezTazD1GTYZBg','2022-08-29 00:28:32.749042'),('bil0tc4citfx7sih60qiddncxt0n5rj6','eyJ1c2VybmFtZSI6Im9uZSIsInVpZCI6Mn0:1oN6wL:Yv06SQ8xQWeojoYk1bySZODEVglfECZlrPVaMUAEIgo','2022-08-28 14:17:37.192536'),('bpe2bek1r036ao4fz3rqinktp3tozyvb','eyJ1c2VybmFtZSI6InR3byIsInVpZCI6M30:1oMgIW:MkgmFQkmAOkIO14X0_jPR69Yt6oWO3sHjApa000g9fU','2022-08-27 09:50:44.259984'),('e2hhrym796kck8s43ss8esw5u34l67e3','eyJ1c2VybmFtZSI6Im9uZSIsInVpZCI6Mn0:1oM2XE:b9NM_JYqhM2l1vcBA_hOgERQ86bzShAvA9u3XZSnfj0','2022-08-25 15:23:16.712185'),('eddtaf1xpmjnvkzdq17g88ky0cyuq8el','eyJ1c2VybmFtZSI6InR3byIsInVpZCI6M30:1oM7Oo:QTwtPBZUBpMF65eC8C7_uL75TdaEQQQQi_oQzzvw0ww','2022-08-25 20:34:54.409201'),('g3n7vjt6vhmth9rmnrc00drma5a5ezg9','eyJ1c2VybmFtZSI6Im9uZSIsInVpZCI6Mn0:1oN734:qx_xfZOMUx2veHGzaBFi7Kf2VnM9c6LfrmZ53IcfaNQ','2022-08-28 14:24:34.895820'),('im8ujidkb0mgx2kxgufmm07wmyhzeg51','eyJ1c2VybmFtZSI6InRlc3RlcjIiLCJ1aWQiOjEzfQ:1oOG0D:i827uAKurb-k7w5Cj0FvskKUPaVV7GsrPIDhmrsqI5I','2022-08-31 18:10:21.245322'),('jo4fwnix2v9mle2neifvyd3u6g1bma8p','eyJ1c2VybmFtZSI6Im9uZSIsInVpZCI6Mn0:1oLXiZ:7AmpfMYYtGTDu2LNlzW0Y7XNmuHeJ3PaR4WfiZNhuPY','2022-08-24 06:28:55.117266'),('lej4ghhfo06dc1vxif2elyo5wmcinv32','eyJ1c2VybmFtZSI6InRlc3RlciIsInVpZCI6MTJ9:1oVWZs:pG6DKktqGO9rCztIwRjh67QBHnuspLo9iOK5XJEfNqQ','2022-09-20 19:17:12.989485'),('lqx7erteuo403hod0u6s7e30075tzk66','eyJ1c2VybmFtZSI6Im9uZSIsInVpZCI6Mn0:1oNCi8:Z8kVniv9U3KgG-RgPMlvBJQeXB5uefHqgmdtdyF-JHc','2022-08-28 20:27:20.052479'),('lv46p6r2jj82y74uvgirhohnjyexyal5','eyJ1c2VybmFtZSI6Im9uZSIsInVpZCI6Mn0:1oN73q:jkOKLW3ClMdF5PeaXZnj8fQU5OR0ELgnjXwBkaJe-X8','2022-08-28 14:25:22.513995'),('n6ikx2srkyifmh2eskkkp32z1yehc8zo','eyJ1c2VybmFtZSI6Im9uZSIsInVpZCI6Mn0:1oMtmS:wjyZLhqVS9pxtKEaB9wz4A2VCsC68MxgDQwim6O7MO8','2022-08-28 00:14:32.507318'),('p29tx7oo8w8338ksll6mlem96autgzm9','eyJ1c2VybmFtZSI6Im9uZSIsInVpZCI6Mn0:1oN78c:vV0qwC-tZQeOKfXPMSz6mA38wPFPVNCxTc8k012eF4w','2022-08-28 14:30:18.666302'),('scfaivog9pgzmlo1krhzevx7xkhcc1km','eyJ1c2VybmFtZSI6Im9uZSIsInVpZCI6Mn0:1oN6rN:YqjH6sLtZdkP8NgRaNPfgEluaEnouFnyw_3v7HsLhUM','2022-08-28 14:12:29.353431'),('ujr4cbfqx8ev29thx1382e8phrv1yylp','eyJ1c2VybmFtZSI6InR3byIsInVpZCI6M30:1oMdwY:51La4st6cB9s31YBBQa-Ol0M_rXTsBSioKfKgPwyQ0k','2022-08-27 07:19:54.370588');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invitation_invitation_request`
--

DROP TABLE IF EXISTS `invitation_invitation_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invitation_invitation_request` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `room_name` varchar(10) NOT NULL,
  `from_user_id` bigint(20) NOT NULL,
  `to_user_id` bigint(20) NOT NULL,
  `password` varchar(32) DEFAULT NULL,
  `accept` tinyint(1) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `room_name` (`room_name`),
  KEY `invitation_invitatio_from_user_id_d2276057_fk_user_user` (`from_user_id`),
  KEY `invitation_invitatio_to_user_id_0c308db8_fk_user_user` (`to_user_id`),
  CONSTRAINT `invitation_invitatio_from_user_id_d2276057_fk_user_user` FOREIGN KEY (`from_user_id`) REFERENCES `user_user_profile` (`id`),
  CONSTRAINT `invitation_invitatio_to_user_id_0c308db8_fk_user_user` FOREIGN KEY (`to_user_id`) REFERENCES `user_user_profile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invitation_invitation_request`
--

LOCK TABLES `invitation_invitation_request` WRITE;
/*!40000 ALTER TABLE `invitation_invitation_request` DISABLE KEYS */;
INSERT INTO `invitation_invitation_request` VALUES (1,'testpri',2,3,'123',1,NULL),(2,'teest2',2,3,'123',1,NULL),(3,'testroom',2,2,'123',1,NULL),(4,'testroom2',2,2,'123',1,NULL),(5,'test3',2,3,'123',1,NULL),(6,'test4',3,2,'123',1,NULL),(7,'test5',2,3,'123',1,'/static/pic/cow1_avatar.jpg'),(8,'test6',2,3,'123',1,'/static/pic/pig1_avatar.jpg'),(9,'test10',8,9,'123',1,'/static/pic/cow2_avatar.jpg'),(10,'room',12,13,'123',1,'/static/pic/pig1_avatar.jpg'),(11,'room4',13,12,'123',1,'/static/pic/pig1_avatar.jpg');
/*!40000 ALTER TABLE `invitation_invitation_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_user_profile`
--

DROP TABLE IF EXISTS `user_user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_user_profile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `updated_time` datetime(6) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_user_profile`
--

LOCK TABLES `user_user_profile` WRITE;
/*!40000 ALTER TABLE `user_user_profile` DISABLE KEYS */;
INSERT INTO `user_user_profile` VALUES (1,'tes','d41d8cd98f00b204e9800998ecf8427e','2022-08-10 05:04:28.027663','2022-08-10 05:04:28.027738','',NULL),(2,'one','202cb962ac59075b964b07152d234b70','2022-08-10 05:51:05.747424','2022-08-10 05:51:05.747461','',NULL),(3,'two','202cb962ac59075b964b07152d234b70','2022-08-10 05:51:15.713712','2022-08-10 05:51:15.713743','',NULL),(4,'three','202cb962ac59075b964b07152d234b70','2022-08-13 11:05:56.936108','2022-08-13 11:05:56.936176','',NULL),(5,'four','202cb962ac59075b964b07152d234b70','2022-08-13 11:06:39.129210','2022-08-13 11:06:39.129296','',NULL),(6,'five','202cb962ac59075b964b07152d234b70','2022-08-13 11:09:42.955903','2022-08-13 11:09:42.955980','',NULL),(7,'six','202cb962ac59075b964b07152d234b70','2022-08-13 11:13:55.487652','2022-08-13 11:13:55.487744','/static/pic/oldchicken_avatar.jpg',NULL),(8,'ten','202cb962ac59075b964b07152d234b70','2022-08-14 15:06:52.202952','2022-08-14 15:06:52.203023','/static/pic/oldc_avatar.jpg',NULL),(9,'seven','202cb962ac59075b964b07152d234b70','2022-08-14 18:37:30.243182','2022-08-14 18:37:30.243324','/static/pic/oldc_avatar.jpg',NULL),(10,'io','202cb962ac59075b964b07152d234b70','2022-08-14 18:41:05.679852','2022-08-14 18:41:05.679917','/static/pic/newc_avatar.jpg',NULL),(11,'ui','202cb962ac59075b964b07152d234b70','2022-08-14 18:41:45.909606','2022-08-14 18:41:45.909661','/static/pic/newc_avatar.jpg',NULL),(12,'tester','202cb962ac59075b964b07152d234b70','2022-08-15 20:12:58.202869','2022-08-15 20:12:58.203174','/static/pic/cow_avatar.jpg',NULL),(13,'tester2','202cb962ac59075b964b07152d234b70','2022-08-15 20:13:33.008857','2022-08-15 20:13:33.008952','/static/pic/oldc_avatar.jpg',NULL);
/*!40000 ALTER TABLE `user_user_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-16  7:44:46
