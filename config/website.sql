-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: website
-- ------------------------------------------------------
-- Server version	8.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `foto_wisata`
--

DROP TABLE IF EXISTS `foto_wisata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `foto_wisata` (
  `id_foto` int NOT NULL AUTO_INCREMENT,
  `cover` varchar(255) DEFAULT NULL,
  `foto1` varchar(255) DEFAULT NULL,
  `foto2` varchar(255) DEFAULT NULL,
  `foto3` varchar(255) DEFAULT NULL,
  `foto4` varchar(255) DEFAULT NULL,
  `foto5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_foto`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foto_wisata`
--

LOCK TABLES `foto_wisata` WRITE;
/*!40000 ALTER TABLE `foto_wisata` DISABLE KEYS */;
INSERT INTO `foto_wisata` VALUES (4,'http://localhost:5000/images/48e6d108b3b125a23d74b9fd314ed828.jpg','http://localhost:5000/images/fd788d2f897323b52fc6a4e34b0c3b50.jpg','http://localhost:5000/images/fd788d2f897323b52fc6a4e34b0c3b50.jpg','http://localhost:5000/images/48e6d108b3b125a23d74b9fd314ed828.jpg','http://localhost:5000/images/92a85043b2ba6ef9542846c1199141a9.jpg','http://localhost:5000/images/f6d956b4ed186d1cf06a14ce79835a6b.png'),(5,'http://localhost:5000/images/3d5de8b1a9a9c8ddf216e0d51171a781.jpg','http://localhost:5000/images/cfd55fa1a99da290731ff0d7e3dfa889.jpg','http://localhost:5000/images/b8a95a8d2c5b4991fc6eb6b6531f7caa.png','http://localhost:5000/images/0f34fc6876e9b30676c78f9e0922a21e.png','http://localhost:5000/images/8d50d667f692ba5da5a3197aeedb63c9.jpg','http://localhost:5000/images/2781f6a80ab990c35f7bc54f2e9bf903.jpg'),(6,'http://localhost:5000/images/a5c4120176da8a68db716622bf0f9a5e.jpg','http://localhost:5000/images/8cd02a56d428a7bc9ffefa2f8d85e781.png','http://localhost:5000/images/b8a95a8d2c5b4991fc6eb6b6531f7caa.png','http://localhost:5000/images/b8a95a8d2c5b4991fc6eb6b6531f7caa.png','http://localhost:5000/images/18ab8fad698eaab2fce0017cf4ccbbc3.png','http://localhost:5000/images/e413851aa1a6d56f2c206e0947685a63.png'),(7,'http://localhost:5000/images/18ab8fad698eaab2fce0017cf4ccbbc3.png','http://localhost:5000/images/cfd55fa1a99da290731ff0d7e3dfa889.jpg','http://localhost:5000/images/18ab8fad698eaab2fce0017cf4ccbbc3.png','http://localhost:5000/images/cfd55fa1a99da290731ff0d7e3dfa889.jpg','http://localhost:5000/images/db32a72d75b9a4749023ce74996cfa26.png','http://localhost:5000/images/2f64beb24848fdf6c8c0b84a36a01ff9.png'),(8,'http://localhost:5000/images/48e6d108b3b125a23d74b9fd314ed828.jpg','http://localhost:5000/images/b8a95a8d2c5b4991fc6eb6b6531f7caa.png','http://localhost:5000/images/18ab8fad698eaab2fce0017cf4ccbbc3.png','http://localhost:5000/images/db32a72d75b9a4749023ce74996cfa26.png','http://localhost:5000/images/3d10505336ed0d8c6c39cbc73a6aac58.jpg','http://localhost:5000/images/db32a72d75b9a4749023ce74996cfa26.png'),(9,'http://localhost:5000/images/48e6d108b3b125a23d74b9fd314ed828.jpg','http://localhost:5000/images/b8a95a8d2c5b4991fc6eb6b6531f7caa.png','http://localhost:5000/images/18ab8fad698eaab2fce0017cf4ccbbc3.png','http://localhost:5000/images/db32a72d75b9a4749023ce74996cfa26.png','http://localhost:5000/images/3d10505336ed0d8c6c39cbc73a6aac58.jpg','http://localhost:5000/images/db32a72d75b9a4749023ce74996cfa26.png'),(10,'http://localhost:5000/images/48e6d108b3b125a23d74b9fd314ed828.jpg','http://localhost:5000/images/b8a95a8d2c5b4991fc6eb6b6531f7caa.png','http://localhost:5000/images/18ab8fad698eaab2fce0017cf4ccbbc3.png','http://localhost:5000/images/db32a72d75b9a4749023ce74996cfa26.png','http://localhost:5000/images/3d10505336ed0d8c6c39cbc73a6aac58.jpg','http://localhost:5000/images/db32a72d75b9a4749023ce74996cfa26.png'),(11,'http://localhost:5000/images/48e6d108b3b125a23d74b9fd314ed828.jpg','http://localhost:5000/images/b8a95a8d2c5b4991fc6eb6b6531f7caa.png','http://localhost:5000/images/18ab8fad698eaab2fce0017cf4ccbbc3.png','http://localhost:5000/images/db32a72d75b9a4749023ce74996cfa26.png','http://localhost:5000/images/3d10505336ed0d8c6c39cbc73a6aac58.jpg','http://localhost:5000/images/db32a72d75b9a4749023ce74996cfa26.png'),(12,'http://localhost:5000/images/f6d956b4ed186d1cf06a14ce79835a6b.png','http://localhost:5000/images/cfd55fa1a99da290731ff0d7e3dfa889.jpg','http://localhost:5000/images/18ab8fad698eaab2fce0017cf4ccbbc3.png','http://localhost:5000/images/db32a72d75b9a4749023ce74996cfa26.png','http://localhost:5000/images/f9ea85622be0e2d7914cfa75b3e7b496.jpg','http://localhost:5000/images/596c0924c11c29ec74908d4059ac46dc.jpg'),(13,'http://localhost:5000/images/f6d956b4ed186d1cf06a14ce79835a6b.png','http://localhost:5000/images/cfd55fa1a99da290731ff0d7e3dfa889.jpg','http://localhost:5000/images/18ab8fad698eaab2fce0017cf4ccbbc3.png','http://localhost:5000/images/db32a72d75b9a4749023ce74996cfa26.png','http://localhost:5000/images/f9ea85622be0e2d7914cfa75b3e7b496.jpg','http://localhost:5000/images/596c0924c11c29ec74908d4059ac46dc.jpg'),(14,'http://localhost:5000/images/f6d956b4ed186d1cf06a14ce79835a6b.png','http://localhost:5000/images/cfd55fa1a99da290731ff0d7e3dfa889.jpg','http://localhost:5000/images/18ab8fad698eaab2fce0017cf4ccbbc3.png','http://localhost:5000/images/db32a72d75b9a4749023ce74996cfa26.png','http://localhost:5000/images/f9ea85622be0e2d7914cfa75b3e7b496.jpg','http://localhost:5000/images/596c0924c11c29ec74908d4059ac46dc.jpg'),(15,'http://localhost:5000/images/f6d956b4ed186d1cf06a14ce79835a6b.png','http://localhost:5000/images/cfd55fa1a99da290731ff0d7e3dfa889.jpg','http://localhost:5000/images/18ab8fad698eaab2fce0017cf4ccbbc3.png','http://localhost:5000/images/db32a72d75b9a4749023ce74996cfa26.png','http://localhost:5000/images/f9ea85622be0e2d7914cfa75b3e7b496.jpg','http://localhost:5000/images/596c0924c11c29ec74908d4059ac46dc.jpg'),(16,'http://localhost:5000/images/f6d956b4ed186d1cf06a14ce79835a6b.png','http://localhost:5000/images/cfd55fa1a99da290731ff0d7e3dfa889.jpg','http://localhost:5000/images/18ab8fad698eaab2fce0017cf4ccbbc3.png','http://localhost:5000/images/db32a72d75b9a4749023ce74996cfa26.png','http://localhost:5000/images/f9ea85622be0e2d7914cfa75b3e7b496.jpg','http://localhost:5000/images/596c0924c11c29ec74908d4059ac46dc.jpg'),(17,'http://localhost:5000/images/f6d956b4ed186d1cf06a14ce79835a6b.png','http://localhost:5000/images/cfd55fa1a99da290731ff0d7e3dfa889.jpg','http://localhost:5000/images/18ab8fad698eaab2fce0017cf4ccbbc3.png','http://localhost:5000/images/db32a72d75b9a4749023ce74996cfa26.png','http://localhost:5000/images/f9ea85622be0e2d7914cfa75b3e7b496.jpg','http://localhost:5000/images/596c0924c11c29ec74908d4059ac46dc.jpg'),(18,'http://localhost:5000/images/66751d16be52a0c5d25b616776285de2.png','http://localhost:5000/images/b8a95a8d2c5b4991fc6eb6b6531f7caa.png','http://localhost:5000/images/18ab8fad698eaab2fce0017cf4ccbbc3.png','http://localhost:5000/images/cfd55fa1a99da290731ff0d7e3dfa889.jpg','http://localhost:5000/images/2f64beb24848fdf6c8c0b84a36a01ff9.png','http://localhost:5000/images/a94cf909f1d1d3ab2c92f2a30c59a1d7.png'),(19,'http://localhost:5000/images/3d10505336ed0d8c6c39cbc73a6aac58.jpg','http://localhost:5000/images/cfd55fa1a99da290731ff0d7e3dfa889.jpg','http://localhost:5000/images/b8a95a8d2c5b4991fc6eb6b6531f7caa.png','http://localhost:5000/images/037e77928dc3748579e94ddabe57f2e8.png','http://localhost:5000/images/8cd02a56d428a7bc9ffefa2f8d85e781.png','http://localhost:5000/images/276bc9ca4fabf320eee3af49846d5b91.jpg'),(20,'http://localhost:5000/images/65ae7f1caf3444912ae16d8775fd570a.png','http://localhost:5000/images/cfd55fa1a99da290731ff0d7e3dfa889.jpg','http://localhost:5000/images/18ab8fad698eaab2fce0017cf4ccbbc3.png','http://localhost:5000/images/1a11ac4d748059b4e0778809685f1136.jpg','http://localhost:5000/images/05bef02f31a977f1df7760820e18f2a4.jpg','http://localhost:5000/images/596c0924c11c29ec74908d4059ac46dc.jpg'),(21,'http://localhost:5000/images/65ae7f1caf3444912ae16d8775fd570a.png','http://localhost:5000/images/cfd55fa1a99da290731ff0d7e3dfa889.jpg','http://localhost:5000/images/18ab8fad698eaab2fce0017cf4ccbbc3.png','http://localhost:5000/images/1a11ac4d748059b4e0778809685f1136.jpg','http://localhost:5000/images/05bef02f31a977f1df7760820e18f2a4.jpg','http://localhost:5000/images/596c0924c11c29ec74908d4059ac46dc.jpg'),(22,'http://localhost:5000/images/65ae7f1caf3444912ae16d8775fd570a.png','http://localhost:5000/images/cfd55fa1a99da290731ff0d7e3dfa889.jpg','http://localhost:5000/images/18ab8fad698eaab2fce0017cf4ccbbc3.png','http://localhost:5000/images/1a11ac4d748059b4e0778809685f1136.jpg','http://localhost:5000/images/05bef02f31a977f1df7760820e18f2a4.jpg','http://localhost:5000/images/596c0924c11c29ec74908d4059ac46dc.jpg'),(23,'http://localhost:5000/images/65ae7f1caf3444912ae16d8775fd570a.png','http://localhost:5000/images/cfd55fa1a99da290731ff0d7e3dfa889.jpg','http://localhost:5000/images/18ab8fad698eaab2fce0017cf4ccbbc3.png','http://localhost:5000/images/1a11ac4d748059b4e0778809685f1136.jpg','http://localhost:5000/images/05bef02f31a977f1df7760820e18f2a4.jpg','http://localhost:5000/images/596c0924c11c29ec74908d4059ac46dc.jpg'),(24,'http://localhost:5000/images/65ae7f1caf3444912ae16d8775fd570a.png','http://localhost:5000/images/cfd55fa1a99da290731ff0d7e3dfa889.jpg','http://localhost:5000/images/18ab8fad698eaab2fce0017cf4ccbbc3.png','http://localhost:5000/images/1a11ac4d748059b4e0778809685f1136.jpg','http://localhost:5000/images/05bef02f31a977f1df7760820e18f2a4.jpg','http://localhost:5000/images/596c0924c11c29ec74908d4059ac46dc.jpg'),(25,'http://localhost:5000/images/65ae7f1caf3444912ae16d8775fd570a.png','http://localhost:5000/images/cfd55fa1a99da290731ff0d7e3dfa889.jpg','http://localhost:5000/images/18ab8fad698eaab2fce0017cf4ccbbc3.png','http://localhost:5000/images/1a11ac4d748059b4e0778809685f1136.jpg','http://localhost:5000/images/05bef02f31a977f1df7760820e18f2a4.jpg','http://localhost:5000/images/596c0924c11c29ec74908d4059ac46dc.jpg'),(26,'http://localhost:5000/images/65ae7f1caf3444912ae16d8775fd570a.png','http://localhost:5000/images/cfd55fa1a99da290731ff0d7e3dfa889.jpg','http://localhost:5000/images/18ab8fad698eaab2fce0017cf4ccbbc3.png','http://localhost:5000/images/1a11ac4d748059b4e0778809685f1136.jpg','http://localhost:5000/images/05bef02f31a977f1df7760820e18f2a4.jpg','http://localhost:5000/images/596c0924c11c29ec74908d4059ac46dc.jpg'),(27,'http://localhost:5000/images/65ae7f1caf3444912ae16d8775fd570a.png','http://localhost:5000/images/cfd55fa1a99da290731ff0d7e3dfa889.jpg','http://localhost:5000/images/18ab8fad698eaab2fce0017cf4ccbbc3.png','http://localhost:5000/images/1a11ac4d748059b4e0778809685f1136.jpg','http://localhost:5000/images/05bef02f31a977f1df7760820e18f2a4.jpg','http://localhost:5000/images/596c0924c11c29ec74908d4059ac46dc.jpg'),(28,'http://localhost:5000/images/65ae7f1caf3444912ae16d8775fd570a.png','http://localhost:5000/images/cfd55fa1a99da290731ff0d7e3dfa889.jpg','http://localhost:5000/images/18ab8fad698eaab2fce0017cf4ccbbc3.png','http://localhost:5000/images/1a11ac4d748059b4e0778809685f1136.jpg','http://localhost:5000/images/05bef02f31a977f1df7760820e18f2a4.jpg','http://localhost:5000/images/596c0924c11c29ec74908d4059ac46dc.jpg'),(29,'http://localhost:5000/images/65ae7f1caf3444912ae16d8775fd570a.png','http://localhost:5000/images/cfd55fa1a99da290731ff0d7e3dfa889.jpg','http://localhost:5000/images/18ab8fad698eaab2fce0017cf4ccbbc3.png','http://localhost:5000/images/1a11ac4d748059b4e0778809685f1136.jpg','http://localhost:5000/images/05bef02f31a977f1df7760820e18f2a4.jpg','http://localhost:5000/images/596c0924c11c29ec74908d4059ac46dc.jpg'),(30,'http://localhost:5000/images/65ae7f1caf3444912ae16d8775fd570a.png','http://localhost:5000/images/cfd55fa1a99da290731ff0d7e3dfa889.jpg','http://localhost:5000/images/18ab8fad698eaab2fce0017cf4ccbbc3.png','http://localhost:5000/images/1a11ac4d748059b4e0778809685f1136.jpg','http://localhost:5000/images/05bef02f31a977f1df7760820e18f2a4.jpg','http://localhost:5000/images/596c0924c11c29ec74908d4059ac46dc.jpg'),(31,'http://localhost:5000/images/65ae7f1caf3444912ae16d8775fd570a.png','http://localhost:5000/images/cfd55fa1a99da290731ff0d7e3dfa889.jpg','http://localhost:5000/images/18ab8fad698eaab2fce0017cf4ccbbc3.png','http://localhost:5000/images/1a11ac4d748059b4e0778809685f1136.jpg','http://localhost:5000/images/05bef02f31a977f1df7760820e18f2a4.jpg','http://localhost:5000/images/596c0924c11c29ec74908d4059ac46dc.jpg'),(32,'http://localhost:5000/images/65ae7f1caf3444912ae16d8775fd570a.png','http://localhost:5000/images/cfd55fa1a99da290731ff0d7e3dfa889.jpg','http://localhost:5000/images/18ab8fad698eaab2fce0017cf4ccbbc3.png','http://localhost:5000/images/1a11ac4d748059b4e0778809685f1136.jpg','http://localhost:5000/images/05bef02f31a977f1df7760820e18f2a4.jpg','http://localhost:5000/images/596c0924c11c29ec74908d4059ac46dc.jpg'),(33,'http://localhost:5000/images/64d4fb1bb6c1f59d70437b64cdfb9af7.jpg','http://localhost:5000/images/037e77928dc3748579e94ddabe57f2e8.png','http://localhost:5000/images/2bd47b4088223257cbfe09a9f963773d.png','http://localhost:5000/images/99f661ca545e6b19a38718011a7f71f5.png','http://localhost:5000/images/f6d956b4ed186d1cf06a14ce79835a6b.png','http://localhost:5000/images/d06002caef5b65614ba39c6fd9d8c27a.png'),(34,'http://localhost:5000/images/64d4fb1bb6c1f59d70437b64cdfb9af7.jpg','http://localhost:5000/images/037e77928dc3748579e94ddabe57f2e8.png','http://localhost:5000/images/2bd47b4088223257cbfe09a9f963773d.png','http://localhost:5000/images/99f661ca545e6b19a38718011a7f71f5.png','http://localhost:5000/images/f6d956b4ed186d1cf06a14ce79835a6b.png','http://localhost:5000/images/d06002caef5b65614ba39c6fd9d8c27a.png'),(35,'http://localhost:5000/images/db32a72d75b9a4749023ce74996cfa26.png','http://localhost:5000/images/fd788d2f897323b52fc6a4e34b0c3b50.jpg','http://localhost:5000/images/f9ea85622be0e2d7914cfa75b3e7b496.jpg','http://localhost:5000/images/a94cf909f1d1d3ab2c92f2a30c59a1d7.png','http://localhost:5000/images/db32a72d75b9a4749023ce74996cfa26.png','http://localhost:5000/images/2f64beb24848fdf6c8c0b84a36a01ff9.png');
/*!40000 ALTER TABLE `foto_wisata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `harga_wisata`
--

DROP TABLE IF EXISTS `harga_wisata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `harga_wisata` (
  `id_harga` int NOT NULL AUTO_INCREMENT,
  `ket1` varchar(255) DEFAULT NULL,
  `ket2` varchar(255) DEFAULT NULL,
  `ket3` varchar(255) DEFAULT NULL,
  `ket4` varchar(255) DEFAULT NULL,
  `ket5` varchar(255) DEFAULT NULL,
  `ket6` varchar(255) DEFAULT NULL,
  `harga1` varchar(255) DEFAULT NULL,
  `harga2` varchar(255) DEFAULT NULL,
  `harga3` varchar(255) DEFAULT NULL,
  `harga4` varchar(255) DEFAULT NULL,
  `harga5` varchar(255) DEFAULT NULL,
  `harga6` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_harga`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `harga_wisata`
--

LOCK TABLES `harga_wisata` WRITE;
/*!40000 ALTER TABLE `harga_wisata` DISABLE KEYS */;
INSERT INTO `harga_wisata` VALUES (1,'Tiket Masuk Warga Negara Indonesia  Usia 10 tahun Keatas','Tiket Masuk Warga Negara Indonesia  Usia 3-10 Tahun','Tiket Masuk Warga Negara Asing Usia 10 tahun Keatas','Tiket Masuk Warga Negara Asing  Usia 3-10 Tahun','','','Rp25.000','Rp10.000','Rp375.000','Rp225.000','',''),(2,'harga1','harga2','harga3','harga4','harga5','harga6','100.000','200.000','300.000','400.000','500.000','500.000'),(3,'1','2','3','4','5','6','100','200','300','400','500','600'),(4,'sjsjsj','kssks','skka','sksks','slsls','ososo','ekek','kdkd','dkdk','003ke','ekeke','ddodo'),(5,'ere','1','1','1','1','1','rere','1','1','1','1','1'),(6,'2','33','3','3','3','3','2','3','3','3','4','4'),(7,'2','33','3','3','3','3','2','3','3','3','4','4'),(8,'2','33','3','3','3','3','2','3','3','3','4','4'),(9,'2','33','3','3','3','3','2','3','3','3','4','4'),(10,'100','2','2','2','2','2','23','23','44','55','34','34'),(11,'100','2','2','2','2','2','23','23','44','55','34','34'),(12,'100','2','2','2','2','2','23','23','44','55','34','34'),(13,'100','2','2','2','2','2','23','23','44','55','34','34'),(14,'100','2','2','2','2','2','23','23','44','55','34','34'),(15,'100','2','2','2','2','2','23','23','44','55','34','34'),(16,'ddd','ddd','ddddd','dd','ddd','ddd','ddd','ddd','ddd','ddd','ddd','ddd'),(17,'1','2','2','2','2','2','2','3','3','4','5','3'),(18,'22','33e','22','333','222','333','333','22','222','333','33','33'),(19,'22','33e','22','333','222','333','333','22','222','333','33','33'),(20,'22','33e','22','333','222','333','333','22','222','333','33','33'),(21,'22','33e','22','333','222','333','333','22','222','333','33','33'),(22,'22','33e','22','333','222','333','333','22','222','333','33','33'),(23,'22','33e','22','333','222','333','333','22','222','333','33','33'),(24,'22','33e','22','333','222','333','333','22','222','333','33','33'),(25,'22','33e','22','333','222','333','333','22','222','333','33','33'),(26,'22','33e','22','333','222','333','333','22','222','333','33','33'),(27,'22','33e','22','333','222','333','333','22','222','333','33','33'),(28,'22','33e','22','333','222','333','333','22','222','333','33','33'),(29,'22','33e','22','333','222','333','333','22','222','333','33','33'),(30,'22','33e','22','333','222','333','333','22','222','333','33','33'),(31,'ww','ee','ww','ee','ee','ee','ee','ee','ee','eeee','ffe','4f'),(32,'ww','ee','ww','ee','ee','ee','ee','ee','ee','eeee','ffe','4f'),(33,'22','22','22','22','ww','www','333','444','eee','eee','ee','eee');
/*!40000 ALTER TABLE `harga_wisata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kontak`
--

DROP TABLE IF EXISTS `kontak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kontak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `perusahaan` varchar(255) DEFAULT NULL,
  `pesan` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kontak`
--

LOCK TABLES `kontak` WRITE;
/*!40000 ALTER TABLE `kontak` DISABLE KEYS */;
INSERT INTO `kontak` VALUES (3,'Andi Karmila Lestari','andikarmilalestari17@gmail.com','081283982930','Tema Coffee','Saya mau bekerja sama, jika anda berminat bisa hubungi saya'),(4,'Lukman Hakim','lukmanhakim@gmail.com','085263778291','Ouca Coffee & Ice Cream','Saya berminat bergabung dengan destinasyik, jika setuju hubungi saya, terima kasih');
/*!40000 ALTER TABLE `kontak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nonwisata`
--

DROP TABLE IF EXISTS `nonwisata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nonwisata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_tempat` varchar(255) DEFAULT NULL,
  `deskripsi_singkat` longtext,
  `alamat` text,
  `link_maps` text,
  `deskripsi_panjang` longtext,
  `jam_buka` varchar(255) DEFAULT NULL,
  `ket1` varchar(255) DEFAULT NULL,
  `harga1` varchar(255) DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `foto1` varchar(255) DEFAULT NULL,
  `foto2` varchar(255) DEFAULT NULL,
  `foto3` varchar(255) DEFAULT NULL,
  `foto4` varchar(255) DEFAULT NULL,
  `foto5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nonwisata`
--

LOCK TABLES `nonwisata` WRITE;
/*!40000 ALTER TABLE `nonwisata` DISABLE KEYS */;
INSERT INTO `nonwisata` VALUES (1,'Oppio Coffee Milk','Memiliki konsep suasana alam, cafe ini memberikan kamu kesempatan untuk memanjakan mata dengan melihat hamparan sawah hijau di sekelilingnya.','Jl. Nglengkong Besi No.11, Area Sawah, Sukoharjo, Kec. Ngaglik, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55581','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3953.7741415226164!2d110.41943707372413!3d-7.707368676343042!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a5fc2b64300ab%3A0xea64d6bc2c0035a5!2sOPPIO!5e0!3m2!1sid!2sid!4v1703010278430!5m2!1sid!2sid','Cafe Oppio Coffee Milik menjadi destinasi terbaru yang bakal meramaikan wisata kuliner di Sleman Jogja. Tempat ini memiliki konsep terbuka/oudoor yang begitu luas, tentunya sangat rekomended untuk nongkrong bersama teman dan keluarga tercinta. Nah bagi kalian yang suka nongkrong dan penikmati kopi, maka Oppio Cafe Jogja ini bisa dijadikan destinasi utama yang asyik untuk dikunjungi. Cafe baru di Sleman Jogja ini memang sangat cocok bagi kalian yang ingin nongkrong dan memburu spot instagramable. Disana dapat menikmati aneka makanannya saja sembari merasakan hawa yang begitu menenangkan. Tak heran jika kedepannya Cafe Oppio Sleman akan menjadi tempat nongkrong favorit di Jogja.','14.00-22.00','Kisaran','Rp20.000 - Rp60.000','http://localhost:5000/images/1fb7959fc0b2f940a43f4bf894afc1c3.png','http://localhost:5000/images/e22175c6d11dafccf9826971b8784536.jpg','http://localhost:5000/images/e69fd5d60bb7fd3ecaf44b8b1929ab2e.jpg','http://localhost:5000/images/efc28b1173e68cc945a611be51773d14.jpg','http://localhost:5000/images/0d27dce15a9dcebb9824bcba1e17efde.jpg','http://localhost:5000/images/64d4fb1bb6c1f59d70437b64cdfb9af7.jpg'),(2,'Tepi Sawah Coffee & Eatery','Tepi Sawah juga menyediakan outdoor yang pastinya seru saat dipakai untuk berkumpul dengan keluarga maupun teman. Paling pas, datang ke kafe ini saat sore hari sembari menikmati sunset.','Jl. Sidomukti, Tiyosan, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55581','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3953.5293062465857!2d110.39475196803672!3d-7.733540759569667!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a59c9172c42b9%3A0xb0be00fd100c49d!2sTepi%20Sawah%20Coffee%20%26%20Eatery!5e0!3m2!1sid!2sid!4v1703011515674!5m2!1sid!2sid','Sesuai namanya, kafe ini tepat berada di tepi sawah. Dengan bangunan utama berbentuk joglo, kafe ini mengusung konsep tradisional Jawa. Tepi Sawah juga menyediakan outdoor yang pastinya seru saat dipakai untuk berkumpul dengan keluarga maupun teman. Paling pas, datang ke kafe ini saat sore hari sembari menikmati sunset.','13.00-22.00','Kisaran','Rp10.000-Rp33.000','http://localhost:5000/images/3d8f93f3e281adc9c073a6f991cb8c7f.png','http://localhost:5000/images/bdae1a540b70f7fd1df6034f490705e2.jpg','http://localhost:5000/images/6dc1b2f6fe821d6a49570e3d82803c3b.jpg','http://localhost:5000/images/e9971dec5c4cc3b833cce2e3bfcb22a1.jpg','http://localhost:5000/images/2ae7098e894b52bb52bf3d3ef0fd2b57.jpg','http://localhost:5000/images/80ef1dbe88d49491263bfc94ed0c189f.jpg'),(3,'Epic Coffee & Epilog Furniture','Epic Coffee hadir dengan konsep bangunan industrial dan classic. Bangunan yang terbuka, dengan penataan ruangan yang dirancang sedemikian rupa sehingga tampak luas dan lapang.','Jl. Palagan Tentara Pelajar No.29, Mudal, Sariharjo, Kec. Ngaglik, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55581','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3953.5240471241505!2d110.37506857372466!3d-7.734101976653275!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a58e00b86d721%3A0x2cddd06b9ddb4231!2sEpic%20Coffee%20%26%20Epilog%20Furniture!5e0!3m2!1sid!2sid!4v1703110670738!5m2!1sid!2sid','Epic Coffee adalah roastery mikro dan coffee shop yang berbasis di Yogyakarta, Indonesia.Dibuka pada September 2013, Epic Coffee berlokasi di Yogyakarta Indonesia.Epic Coffee memecah cerita panjang dan luar biasa tentang kopi. Ini perjalanan dari biji kopi sampai mencapai meja Anda, memberikan Anda dan menghibur pencerahan Indonesia Coffees.Kami berusaha menyediakan komunitas kami tempat yang nyaman untuk menikmatisecangkir besar kopi, makanan ringan, atau smoothie buah yang menyegarkan, setelahhari di keramaian dan hiruk pikuk jalan-jalan Yogya.Pengalaman kedai kopi yang unik, dengan desain tampilan industrial dikombinasikan dengan furnitur antik yang nyaman menjadikan Epic Coffee tempat yang sempurna untuk nongkrong atau berbisnis.','10.00-23.00','Kisaran','Rp25.000 - Rp60.000','http://localhost:5000/images/037e77928dc3748579e94ddabe57f2e8.png','http://localhost:5000/images/2c518268396bb1740e3ac4044441863e.jpg','http://localhost:5000/images/c2124e8baa3ae75e2c3ccb0a6dc83c71.jpg','http://localhost:5000/images/fd788d2f897323b52fc6a4e34b0c3b50.jpg','http://localhost:5000/images/3d10505336ed0d8c6c39cbc73a6aac58.jpg','http://localhost:5000/images/276bc9ca4fabf320eee3af49846d5b91.jpg'),(4,'Carney Co','Terletak strategis di pusat kota Jogja dan berdekatan dengan berbagai kampus, Carney Co menjadi magnet bagi para mahasiswa yang ingin mengerjakan tugas atau sekadar nongkrong mengisi waktu luang.','Jl. Garuni II, Kledokan, Caturtunggal, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3953.1356157699956!2d110.40732517372537!3d-7.775441377135334!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a59e58f31ff3f%3A0x6285971ef452a37a!2sCarney%20Co!5e0!3m2!1sid!2sid!4v1703110908715!5m2!1sid!2sid','Coffee shop yang tengah naik daun di kalangan kaum muda Jogja! Jelajahi dunianya melalui media sosial, di mana foto-foto dan video memukau memancing rasa penasaran Anda terhadap keunikan cafe ini.\r\n Terletak strategis di pusat kota Jogja dan berdekatan dengan berbagai kampus, Carney Co menjadi magnet bagi para mahasiswa yang ingin mengerjakan tugas atau sekadar nongkrong mengisi waktu luang. Menawarkan ketenangan dengan lokasi yang tersembunyi dari keramaian jalan besar, cafe ini menyajikan suasana yang cocok untuk berbagai kegiatan.\r\n Bukan hanya para mahasiswa lokal, tapi juga wisatawan turut mencicipi pesona Carney Co. Bangunan cafe yang estetik dan instagrammable membuatnya jadi daya tarik tersendiri, menjadi surga bagi para pecinta foto.\r\n Konsep minimalis Carney Co didominasi oleh warna putih dan dekorasi kontras yang memukau di kamera. Tidak heran jika area outdoor dengan bean bag berwarna-warni menjadi favorit banyak pengunjung, menciptakan pengalaman tak terlupakan di setiap kunjungan.','10.00-00.00','Kisaran','Rp30.000-Rp70.000','http://localhost:5000/images/8cd02a56d428a7bc9ffefa2f8d85e781.png','http://localhost:5000/images/972fce8ae8f2df943d84be0709980654.png','http://localhost:5000/images/425abf3a71d67dddc8dae42e24e78098.png','http://localhost:5000/images/a036e052a1f47977f594a95b03eb13c5.jpg','http://localhost:5000/images/832df9f3f45f08773e6c5bc5ee6a0d93.jpg','http://localhost:5000/images/00a319319cfaa452f74ae922ee17fd6b.jpg');
/*!40000 ALTER TABLE `nonwisata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paket_wisata`
--

DROP TABLE IF EXISTS `paket_wisata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paket_wisata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_paket` varchar(255) DEFAULT NULL,
  `lama_kegiatan` text,
  `destinasi1` text,
  `destinasi2` text,
  `destinasi3` text,
  `destinasi4` text,
  `destinasi5` text,
  `biaya1` varchar(255) DEFAULT NULL,
  `biaya2` varchar(255) DEFAULT NULL,
  `biaya3` varchar(255) DEFAULT NULL,
  `rentang_harga` text,
  `foto` varchar(255) DEFAULT NULL,
  `foto_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paket_wisata`
--

LOCK TABLES `paket_wisata` WRITE;
/*!40000 ALTER TABLE `paket_wisata` DISABLE KEYS */;
INSERT INTO `paket_wisata` VALUES (9,'Escape Paradise One','1 Hari','Malioboro','Keraton Yogyakarta','Taman Sari','Candi Prambanan','Parangtritis','Rp400.000','Rp350.000','Rp300.000','Rp400.000/Pax','f6d956b4ed186d1cf06a14ce79835a6b.png','http://localhost:5000/images/f6d956b4ed186d1cf06a14ce79835a6b.png'),(10,'Escape Paradise Two','1 Hari','Candi Prambanan','Taman Sari','Parangtritis','Keraton Yogyakarta','Malioboro','Rp425.000','Rp375.000','Rp325.000','Rp425.000/Pax','3d5de8b1a9a9c8ddf216e0d51171a781.jpg','http://localhost:5000/images/3d5de8b1a9a9c8ddf216e0d51171a781.jpg'),(11,'Escape Paradise Three','1 Hari','Taman Sari','Malioboro','Keraton Yogyakarta','Candi Prambanan','Parangtritis','Rp450.000','Rp400.000','Rp350.000','Rp450.000/Pax','b1c0cb90dd5f4fdd18d958e76644d1ce.jpg','http://localhost:5000/images/b1c0cb90dd5f4fdd18d958e76644d1ce.jpg');
/*!40000 ALTER TABLE `paket_wisata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ulasan`
--

DROP TABLE IF EXISTS `ulasan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ulasan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_users` int NOT NULL,
  `id_wisata` int DEFAULT NULL,
  `id_nonwisata` int DEFAULT NULL,
  `komentar` text NOT NULL,
  `rating` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user_idx` (`id_users`),
  KEY `id_wisata_idx` (`id_wisata`),
  KEY `id_nonwisata_idx` (`id_nonwisata`),
  CONSTRAINT `id_nonwisata` FOREIGN KEY (`id_nonwisata`) REFERENCES `nonwisata` (`id`),
  CONSTRAINT `id_user` FOREIGN KEY (`id_users`) REFERENCES `user` (`id`),
  CONSTRAINT `id_wisata` FOREIGN KEY (`id_wisata`) REFERENCES `wisata` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ulasan`
--

LOCK TABLES `ulasan` WRITE;
/*!40000 ALTER TABLE `ulasan` DISABLE KEYS */;
/*!40000 ALTER TABLE `ulasan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_hp` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(225) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `no_hp_UNIQUE` (`no_hp`),
  UNIQUE KEY `uuid_UNIQUE` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (11,'581466e0-cec0-4c86-9f3b-847dc4097f31','Admin','Admin@gmail.com','081295012659','$2a$12$aL4DQ8P7GwaDxrWce83qv.LN28Eoj3pf1SShwUL7y..tqGHriZAMG','http://localhost:5000/images/caa071b219fca021b30647eae87ecd1c.png','admin'),(17,'4b1b09e3-4b7f-4261-96a7-858392776289','Miftahul Fikri Pratama','fikri@gmail.com','081237289382','$2a$12$ysiIpl7LJSUhn6bo0CZ2X.DNLQmfuAB3XC599KF9IJU9ZbwF2BdE6',NULL,'user'),(18,'cf14c473-5c5d-4a78-bab5-9cc3f8a2b6ee','Febriandi','febriandinfi@gmail.com','0851625983008','$2a$12$UBp0z5.iptg4S9YNbwfFCeaAK5DwW2/AqNP0DgrYs.kxpjJ43k18e',NULL,'user'),(19,'b86e4b04-f8b3-46df-b446-6c1837aff37e','Selvi Debi Anita','selvidebianita@gmail.com','081298829201','$2a$12$rIef7Sa/f7JK4JkcaPffrODGFhWzfkUin/yqTxrl0gWX8b0fvvU.2',NULL,'user'),(20,'31a40a9b-187b-4aaf-96f0-787c6d79c309','Nabil Rafiq Akmali Hasan','nabilrafiq@gmail.com','086728876623','$2a$12$9YxvTORCzlPHecNNXgiIV.Meiillj9PWQRmBm1dxkV/7ZtHxO2Lfe',NULL,'user'),(21,'d4e19195-8175-4396-b215-8e54b7949d2f','Dimas Prayoga','dimasprayoga@gmail.com','087789276210','$2a$12$1gelLL.EbtzKSgDrglJ/4eKuSEJ5O1.EjZ1wQG.WGFAV.OqtthF6q',NULL,'user'),(22,'b2ee31f1-e795-4051-a804-cb458e789b6f','Zelviannisa Putri','zelviannisaputri@gmail.com','085123738902','$2a$12$b8.w2KxeqgOy4gP1aDMXEexYTUESSgz5koRQ4.PFyCExHzR.DP11q',NULL,'user'),(23,'91f62d0b-b6b4-4713-9ac4-caa6e1b1f861','Noviana','noviana@gmail.com','082188928299','$2a$12$7Vw7fshopNczAOugXNsc3u5MWkT.ADuGWW2Y.3R8k9bzcGhyNHnN2',NULL,'user');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wisata`
--

DROP TABLE IF EXISTS `wisata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wisata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_tempat` varchar(255) DEFAULT NULL,
  `deskripsi_singkat` longtext,
  `alamat` text,
  `link_maps` text,
  `deskripsi_panjang` longtext,
  `ket1` varchar(255) DEFAULT NULL,
  `ket2` varchar(255) DEFAULT NULL,
  `ket3` varchar(255) DEFAULT NULL,
  `ket4` varchar(255) DEFAULT NULL,
  `ket5` varchar(255) DEFAULT NULL,
  `ket6` varchar(255) DEFAULT NULL,
  `harga1` varchar(255) DEFAULT NULL,
  `harga2` varchar(255) DEFAULT NULL,
  `harga3` varchar(255) DEFAULT NULL,
  `harga4` varchar(255) DEFAULT NULL,
  `harga5` varchar(255) DEFAULT NULL,
  `harga6` varchar(255) DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `foto1` varchar(255) DEFAULT NULL,
  `foto2` varchar(255) DEFAULT NULL,
  `foto3` varchar(255) DEFAULT NULL,
  `foto4` varchar(255) DEFAULT NULL,
  `foto5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wisata`
--

LOCK TABLES `wisata` WRITE;
/*!40000 ALTER TABLE `wisata` DISABLE KEYS */;
INSERT INTO `wisata` VALUES (1,'Pantai Parangtritis','Pantai Parangtritis adalah destinasi pantai yang menakjubkan di Yogyakarta, Indonesia. Pantai ini terkenal karena keindahan alamnya.','Jl. Pantai Parangkusumo, Pantai, Parangtritis, Kretek, Bantul, Daerah Istimewa Yogyakarta, Indonesia, 55772','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15802.973391826612!2d110.31847157748834!3d-8.02537792430924!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7b00975eac533d%3A0x351bfe1453e22e36!2sPantai%20Parangtritis!5e0!3m2!1sid!2sid!4v1702994103852!5m2!1sid!2sid','Pantai Parangtritis adalah destinasi pantai yang menakjubkan di Yogyakarta, Indonesia. Pantai ini terkenal karena keindahan alamnya yang memukau, dengan garis pantai yang panjang, pasir putih lembut, dan ombak yang memikat. Suasana Pantai Parangtritis juga dipenuhi mitos dan kepercayaan lokal, menambahkan nuansa mistis yang menarik bagi pengunjung.\r\nSelain panorama alamnya yang menakjubkan, Pantai Parangtritis menawarkan berbagai aktivitas menarik, seperti naik delman di sepanjang pantai, menikmati permainan layang-layang, atau menyaksikan pesona sunset yang spektakuler. Pengunjung juga dapat menjelajahi gua-gua kecil di sekitar pantai yang diyakini memiliki nilai sejarah dan keindahan alam tersendiri.\r\n Pantai Parangtritis juga dikenal sebagai tempat ritual keagamaan, terutama saat malam Jumat Kliwon menurut penanggalan Jawa. Ritual-ritual tersebut menciptakan suasana unik dan menarik bagi wisatawan yang tertarik dengan budaya lokal. Dengan kombinasi keindahan alam, keunikan budaya, dan beragam aktivitas yang ditawarkan, Pantai Parangtritis menjadi destinasi yang menarik perhatian bagi para pengunjung yang mencari pengalaman yang tak terlupakan di Yogyakarta.','Tiket Masuk Pantai','Parkir Roda Dua','Parkir Roda Empat','Fasilitas Andong','Fasilitas Sandboarding','Penyewaan Motor ATV','Rp10.000','Rp3.000','Rp10.000','Rp30.000','Rp70.000','Rp50.000-Rp100.000','http://localhost:5000/images/05bef02f31a977f1df7760820e18f2a4.jpg','http://localhost:5000/images/1a11ac4d748059b4e0778809685f1136.jpg','http://localhost:5000/images/596c0924c11c29ec74908d4059ac46dc.jpg','http://localhost:5000/images/7839a1509144701ec6a9e344e5eba859.png','http://localhost:5000/images/48e6d108b3b125a23d74b9fd314ed828.jpg','http://localhost:5000/images/05bef02f31a977f1df7760820e18f2a4.jpg'),(4,'Candi Prambanan','Keindahan Hindu abad ke-9 di Yogyakarta. Siluet megah dan relief ukiran menciptakan potret budaya Indonesia yang memukau.','Jl. Raya Solo - Yogyakarta No.16, Kranggan, Bokoharjo, Kec. Prambanan, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55571','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3953.3559836812096!2d110.488892473725!3d-7.752015276861816!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a5ae3dbd859d1%3A0x19e7a03b25955a2d!2sCandi%20Prambanan!5e0!3m2!1sid!2sid!4v1702996037289!5m2!1sid!2sid','Adalah kompleks candi Hindu terbesar di Indonesia yang dibangun pada abad ke-9 masehi. Candi ini dipersembahkan untuk Trimurti, tiga dewa utama Hindu yaitu Brahma sebagai dewa pencipta, Wishnu sebagai dewa pemelihara, dan Siwa sebagai dewa pemusnah. Berdasarkan prasati Siwagrha nama asli kompleks candi ini adalah Siwagrha (bahsa Sansekerta yang bermakna ‘Rumah Siwa’), dan memang di garbagriha (ruang utama) candi ini bersemayam arca Siwa Mahadewa setinggi tiga meter yang menujukkan bahwa di candi ini dewa Siwa lebih diutamakan. Kompleks candi ini terletak di kecamatan Prambana Desa Bokoharjo, Sleman, Daerah Istimewa Yogyakarta dan kecamatan Prambanan, Klaten, Jawa Tengah kurang lebih 17 kilometer timur laut Yogyakarta, 50 kilometer barat daya Surakarta dan 120 kilometer selatan Semaranag, persis di perbatasan antara provinsi Jawa Tengah dan Daerah Istimewa Yogyakarta. Letaknya sangat unik, Candi Prambanan terletak di wilayah administrasi desa Bokoharjo, Prambanan, Sleman, sedangkan pintu masuk kompleks Candi Prambanan terletak di wilayah adminstrasi desa Tlogo, Prambanan, Klaten Jawa Tengah.','Tiket Masuk Warga Negara Indonesia  Usia 10 tahun Keatas','Tiket Masuk Warga Negara Indonesia  Usia 3-10  Tahun','Tiket Masuk Warga Negara Asing  Usia 10 tahun Keatas','Tiket Masuk Warga Negara Asing  Usia 3-10  Tahun','-','-','Rp25.000','Rp10.000','Rp375.000','Rp225.000','-','-','http://localhost:5000/images/3d5de8b1a9a9c8ddf216e0d51171a781.jpg','http://localhost:5000/images/b8a95a8d2c5b4991fc6eb6b6531f7caa.png','http://localhost:5000/images/8d50d667f692ba5da5a3197aeedb63c9.jpg','http://localhost:5000/images/0ee7877cab403911277dd975e8b045fb.jpg','http://localhost:5000/images/cfd55fa1a99da290731ff0d7e3dfa889.jpg','http://localhost:5000/images/2781f6a80ab990c35f7bc54f2e9bf903.jpg'),(6,'Keraton Yogyakarta','Keelokan arsitektur Jawa, kehijauan taman, dan pesona sejarah yang terpancar. Suasana hangat dan detail artistik yang memikat perhatian.','Jl. Rotowijayan Blok No. 1, Panembahan, Kecamatan Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3952.8539764888123!2d110.36162817372589!3d-7.805279177484985!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a5796db06c7ef%3A0x395271cf052b276c!2sKeraton%20Ngayogyakarta%20Hadiningrat!5e0!3m2!1sid!2sid!4v1703109679203!5m2!1sid!2sid','Kraton Ngayogyakarta Hadiningrat merupakan istana resmi Kesultanan Ngayogyakarta Hadiningrat yang kini berlokasi di Kota Yogyakarta, Daerah Istimewa Yogyakarta. Keraton yogyakarta berada di pusat Daerah Istimewa Yogyakarta, Luas Kraton Yogyakarta adalah 14.000 meter persegi. Didalamnya terdapat banyak bangunan-bangunan yang digunakan sebagai tempat tinggal sultan dan keluarganya serta abdi dalem kraton. Di utara terdapat alun-alun utara dan di selatan terdapat alun-alun selatan serta sekitar 10 menit dari kawasan Malioboro. Kraton Yogyakarta berdiri pada 1755 sebagai hasil dari Perjanjian Giyanti. Kraton Yogyakarta sebagai cikal bakal keberadaan pemukiman di wilayah Yogyakarta meninggalkan jejak-jejak sejarah yang masih dapat kita jumpai sampai saat ini. Kawasan ini merupakan living monument, yang masih hidup dan juga memiliki luas. Hal ini dubuktikan dengan ditetapkannya Kawasan kraton sebagai salah satu kawasan cagar budaya di Yogyakarta berdasar SK Gubernur No. 186/2011 meliputi wilayah dalam benteng Baluwarti (Njeron Benteng), dan sebagian wilayah di Mantrijeron, Mergangsan, Gondomanan, dan Ngampilan. Kemudian pada tahun 2017 terbit Peraturan Gubernur nomor 75/2017 yang menggabungkan kawasan cagar budaya Malioboro dan dalam benteng Kraton (Baluwarti) menjadi satu kawasan yaitu Kawasan Cagar Budaya Kraton, yang membujur dari Tugu sampai Panggung Krapyak.','Tiket Masuk Warga Negara Indonesia','Tiket Masuk Warga Negara Indonesia','Tiket Masuk Warga Negara Asing','Tiket Masuk Warga Negara Asing','-','-','Dewasa Rp15.000','Anak Rp10.000','Dewasa Rp25.000','Dewasa Rp20.000','-','-','http://localhost:5000/images/2bd47b4088223257cbfe09a9f963773d.png','http://localhost:5000/images/e8d67463a4307c32ea6b7c1010316f0c.jpg','http://localhost:5000/images/855f53f8ca7eeededc3ddb5c99c56716.jpg','http://localhost:5000/images/92a85043b2ba6ef9542846c1199141a9.jpg','http://localhost:5000/images/d860c610af03c348dfd0991813375fb6.jpg','http://localhost:5000/images/b1c0cb90dd5f4fdd18d958e76644d1ce.jpg'),(7,'Taman Sari','Istana air yang memesona dengan arsitektur istimewa dan keindahan taman yang menakjubkan. Suasana magis dan penuh sejarah.','Patehan, Kecamatan Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55133','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3952.8070219659407!2d110.357629073726!3d-7.8102426775432585!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a5793d0c2cf2b%3A0x276a21f8a01cbe13!2sKampung%20Wisata%20Taman%20Sari!5e0!3m2!1sid!2sid!4v1703110058028!5m2!1sid!2sid','Salah satu keindahan Taman Sari adalah kolam yang dikelilingi benteng setinggi enam meter. Dahulu, tempat ini digunakan sebagai pemandian bagi para istri-istri Sultan Hamengkubuwana I. Corak dan bangunan Taman Sari bergaya seni arsitektur Eropa. Meski begitu, simbol Jawanya masih tampak lebih dominan. Taman Sari dibangun oleh Sultan setelah penandatanganan perjanjian Giyanti tahun 1755. Sebelumnya terjadi perpecahan yang berakhir dengan pecahnya Mataram menjadi Kasultanan Yogyakarta dan Kasunanan Surakarta.Pembangunan Taman Sari pun bertujuan untuk menentramkan hati serta sebagai tempat istirahat dan berekreasi Sultan dan keluarga. Taman Sari juga dipersiapkan sebagai sarana benteng pertahanan dalam menghadapi musuh kerajaan. Taman Sari dibangun pada masa pemerintahan Sri Sultan HB I tahun 1758. Meski sudah beberapa kali di renovasi, nilai historis taman sari tidak hilang.','Tiket Masuk Warga Negara Indonesia','Tiket Masuk Warga Negara Asing','Parkir Motor','Parkir Mobil','-','-','Rp5.000','Rp15.000','Rp2.000','Rp5.000','-','-','http://localhost:5000/images/4afe06100dbc958e5f5be0375765d03f.png','http://localhost:5000/images/6928bb5ba4e3732914ff0e08bb4f2602.png','http://localhost:5000/images/8ea423724b3028fb3bfabf214fc3eae2.png','http://localhost:5000/images/7b64f4b1b64bb2967468676ddcb3355a.png','http://localhost:5000/images/f511d2a29854248786de52e2b812ed84.jpg','http://localhost:5000/images/ea8d1683faf009ec5760ed3d2be43276.jpg');
/*!40000 ALTER TABLE `wisata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-21 19:05:56
