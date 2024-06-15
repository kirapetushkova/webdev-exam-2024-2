-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: std-mysql    Database: std_2453_exampetushkova
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.16.04.1

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
-- Table structure for table `book_cov`
--

DROP TABLE IF EXISTS `book_cov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_cov` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL,
  `mime_type` varchar(255) NOT NULL,
  `md5_hash` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_cov`
--

LOCK TABLES `book_cov` WRITE;
/*!40000 ALTER TABLE `book_cov` DISABLE KEYS */;
INSERT INTO `book_cov` VALUES (25,'Dostoevsky.jpg','image/jpeg','841af9e1d9e4f95982af7aa173b952f4'),(29,'Tolstoy.jpg','image/jpeg','c1c7bf980c3a55946afaf34a6abc0208'),(34,'Dostoevsky.jpg','image/jpeg','841af9e1d9e4f95982af7aa173b952f4'),(35,'pushkin.jpg','image/jpeg','1ed079dc8d4cdf798e6940581f6f48b7'),(36,'kuprin.jpg','image/jpeg','84c3cc9501f4a1c114bd2ddc841ab7e4'),(37,'griboyedov.jpg','image/jpeg','1ebff5119d1cbbc4c8c741180e83a8b8'),(38,'gogol.jpg','image/jpeg','c99d5849d818c256858083ca99d40b16'),(39,'gogol2.jpg','image/jpeg','f1b8502b40806757b9d8f880d1c84f0e'),(40,'prince.jpg','image/jpeg','4e9ea6ec6ef2a5ccdba5411ff4e8462b'),(41,'hunger.jpg','image/jpeg','cb29caa7aff2d5837ac9dae09e2b2b8a'),(42,'game.jpg','image/jpeg','fe5eca2cab8efaa0fccd9be4e8c909d1'),(43,'harry.jpg','image/jpeg','fc15e4973c41694b88f17a02bf7a6550'),(44,'ternovnik.jpg','image/jpeg','b37690270f0778d6cfc78b6dd2474f22'),(46,'Tolstoy.jpg','image/jpeg','c1c7bf980c3a55946afaf34a6abc0208'),(47,'bulgakov.jpg','image/jpeg','0e0d8785428d11c701381813cde70d5a');
/*!40000 ALTER TABLE `book_cov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_des`
--

DROP TABLE IF EXISTS `book_des`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_des` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `year` year(4) NOT NULL,
  `publishing` varchar(100) NOT NULL,
  `author` varchar(60) NOT NULL,
  `volume` int(11) NOT NULL,
  `cover` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cover` (`cover`),
  CONSTRAINT `book_des_ibfk_1` FOREIGN KEY (`cover`) REFERENCES `book_cov` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_des`
--

LOCK TABLES `book_des` WRITE;
/*!40000 ALTER TABLE `book_des` DISABLE KEYS */;
INSERT INTO `book_des` VALUES (31,'Преступление и наказание','Роман о молодом человеке, который совершил преступление и о его внутренних терзаниях, о его искуплении и перерождении. Невероятно как человек может быть одновременно жестоким убийцей и сочувствующим человеком, готовым отдать последние деньги на похороны малознакомого пьяницы.',1901,'АСТ','Ф.М.Достоевский',670,34),(32,'Евгений Онегин','Евге́ний Оне́гин» (дореф. «Евгеній Онѣгинъ») — роман в стихах русского поэта Александра Сергеевича Пушкина, начат 9 мая 1823 года',1905,'АСТ','А.С.Пушкин',200,35),(33,'Гранатовый браслет','«Грана́товый брасле́т» — повесть Александра Ивановича Куприна, написанная в 1910 году',1910,'АСТ','Куприн',300,36),(34,'Горе от ума','Комедия «Горе от ума» — сатира на аристократическое московское общество первой половины XIX века — одна из вершин русской драматургии и поэзии',1905,'Азбука','Грибоедов',400,37),(35,'Женитьба','«Жени́тьба. Соверше́нно невероя́тное собы́тие в двух де́йствиях» — пьеса Николая Васильевича Гоголя. Написана в 1833—1835 годах',1920,'Азбука','Н.В.Гоголь',670,38),(36,'Мертвые души','«Мёртвые ду́ши» (полное название «Похождения Чичикова, или Мёртвые души», рус. дореф. Похожденія Чичикова, или Мертвыя души) — произведение Николая Васильевича Гоголя, жанр которого сам автор обозначил как поэма. ',1907,'Азбука','Н.В.Гоголь',890,39),(37,'Маленький принц','«Ма́ленький принц» (фр. Le Petit Prince) — аллегорическая повесть-сказка, наиболее известное произведение Антуана де Сент-Экзюпери.',1943,'АСТ','Антуан де Сент-Экзюпери',300,40),(38,'Голодные игры','«Голодные игры» (англ. The Hunger Games) — трилогия и приквел американской писательницы Сьюзен Коллинз. ',2008,'АСТ','Сьюзен Коллинз',550,41),(39,'Игра престолов','«Игра престолов» (англ. A Game of Thrones) — роман в жанре фэнтези американского писателя Джорджа Р. Р. Мартина',1966,'АСТ','Джордж Р. Р. Мартин',800,42),(40,'Гарри Поттер','«Га́рри По́ттер» (англ. «Harry Potter») — серия романов, написанная британской писательницей Дж. К. Роулинг. ',1997,'Махаон','Дж. К. Роулинг',400,43),(41,'Поющие в терновнике','«Пою́щие в терно́внике» (англ. The Thorn Birds, дословно «птицы терновника») — семейная сага австралийской писательницы Колин Маккалоу, опубликованная в 1977 году.',1977,'АСТ',' Колин Маккалоу',900,44),(43,'Война и мир','«Война́ и мир» — роман-эпопея Льва Николаевича Толстого, описывающий русское общество в эпоху войн против Наполеона в 1805—1812 годах.',1902,'АСТ','Л.Н.Толстой',1500,46),(44,'Мастер и Маргарита','«Ма́стер и Маргари́та» — роман Михаила Афанасьевича Булгакова, работа над которым началась, по одним данным, в 1928 году, по другим — в 1929-м и продолжалась вплоть до смерти писателя в марте 1940 года',1967,'АСТ','Булгаков',256,47);
/*!40000 ALTER TABLE `book_des` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_genre`
--

DROP TABLE IF EXISTS `book_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_genre` (
  `book_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  PRIMARY KEY (`book_id`,`genre_id`),
  KEY `genre_id` (`genre_id`),
  CONSTRAINT `book_genre_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book_des` (`id`),
  CONSTRAINT `book_genre_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_genre`
--

LOCK TABLES `book_genre` WRITE;
/*!40000 ALTER TABLE `book_genre` DISABLE KEYS */;
INSERT INTO `book_genre` VALUES (39,1),(37,39),(31,41),(32,41),(40,41),(41,41),(43,41),(44,41),(38,57),(33,58),(34,59),(35,59),(36,70);
/*!40000 ALTER TABLE `book_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventlist`
--

DROP TABLE IF EXISTS `eventlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `book_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `book_id` (`book_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `eventlist_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book_des` (`id`),
  CONSTRAINT `eventlist_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventlist`
--

LOCK TABLES `eventlist` WRITE;
/*!40000 ALTER TABLE `eventlist` DISABLE KEYS */;
INSERT INTO `eventlist` VALUES (1,1,38,'2024-06-14 05:33:34'),(2,1,38,'2024-06-14 05:33:35'),(3,1,37,'2024-06-14 05:34:02'),(4,1,37,'2024-06-14 05:34:03'),(5,1,32,'2024-06-14 05:38:52'),(6,1,32,'2024-06-14 05:38:53'),(7,1,32,'2024-06-14 05:41:38'),(8,1,32,'2024-06-14 05:41:36'),(9,1,38,'2024-06-14 15:10:43'),(10,1,38,'2024-06-14 15:10:43'),(11,1,38,'2024-06-14 15:21:03'),(12,1,34,'2024-06-14 16:33:05'),(13,1,34,'2024-06-14 20:05:46'),(14,1,36,'2024-06-14 20:16:46'),(15,1,43,'2024-06-14 20:17:03'),(16,1,43,'2024-06-14 20:17:18'),(17,NULL,43,'2024-06-14 20:17:38'),(18,3,43,'2024-06-14 20:17:53'),(19,2,39,'2024-06-14 20:18:14'),(20,1,37,'2024-06-14 20:19:19'),(21,2,33,'2024-06-14 20:56:10'),(22,2,41,'2024-06-14 20:56:21'),(23,NULL,41,'2024-06-14 21:37:30'),(24,NULL,39,'2024-06-14 21:37:32'),(25,2,37,'2024-06-14 21:39:49'),(26,2,35,'2024-06-14 21:39:51'),(27,2,33,'2024-06-14 21:39:53'),(28,NULL,38,'2024-06-15 15:04:05'),(29,1,44,'2024-06-15 15:08:42'),(30,NULL,38,'2024-06-15 15:15:59'),(31,1,33,'2024-06-15 15:16:23'),(32,NULL,37,'2024-06-15 15:16:54'),(33,NULL,32,'2024-06-15 15:17:01'),(34,1,43,'2024-06-15 15:17:16'),(35,1,44,'2024-06-15 15:17:29'),(36,NULL,35,'2024-06-15 15:46:19'),(37,NULL,38,'2024-06-15 15:46:34'),(38,NULL,34,'2024-06-15 15:46:39'),(39,NULL,43,'2024-06-15 15:46:45'),(40,NULL,38,'2024-06-15 15:50:05'),(41,NULL,38,'2024-06-15 16:03:19'),(42,NULL,39,'2024-06-15 16:03:29'),(43,NULL,40,'2024-06-15 16:03:52'),(44,NULL,38,'2024-06-15 16:18:41');
/*!40000 ALTER TABLE `eventlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (57,'Альтернативная история'),(66,'Биография'),(2,'Детектив'),(68,'Детская литература'),(58,'Драма'),(43,'Исторический'),(54,'Исторический роман'),(64,'История'),(59,'Комедия'),(61,'Литературная проза'),(46,'Любовный роман'),(42,'Мелодрама'),(67,'Мемуары'),(62,'Научная литература'),(48,'Паранормальные явления'),(69,'Подростковая литература'),(51,'Полицейский'),(70,'Поэзия'),(44,'Психологический'),(49,'Психологический триллер'),(65,'Психология'),(72,'Публицистика'),(63,'Путешествия'),(41,'Роман'),(53,'Современная мелодрама'),(60,'Современная проза'),(40,'Триллер'),(45,'Ужасы'),(39,'Фантастика'),(56,'Фантастический триллер'),(1,'Фэнтези'),(55,'Хоррор'),(50,'Шпионский'),(52,'Эпическое фэнтези'),(71,'Эссе'),(47,'Юмористический');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `grade` int(11) NOT NULL,
  `text` text NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `book` (`book`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user`) REFERENCES `users` (`id`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`book`) REFERENCES `book_des` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (15,34,2,4,'уатзц','2024-06-14 01:13:22'),(17,34,1,3,'ну','2024-06-14 01:59:51'),(18,43,1,5,'очень понравилось','2024-06-14 17:17:18');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Администратор','суперпользователь, имеет полный доступ к системе, в том числе к созданию и удалению книг'),(2,'Модератор','может редактировать данные книг и производить модерацию рецензий'),(3,'Пользователь','может оставлять рецензии');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `password_hash` varchar(300) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `patronymic` varchar(30) DEFAULT NULL,
  `role` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `role` (`role`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','admin','admin',NULL,1),(2,'moder','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','moder','moder',NULL,2),(3,'user','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','user','user',NULL,3);
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

-- Dump completed on 2024-06-15 17:45:42
