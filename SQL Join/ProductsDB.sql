-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.40 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for db_eduwork
CREATE DATABASE IF NOT EXISTS `db_eduwork` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_eduwork`;

-- Dumping structure for table db_eduwork.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text,
  `photo` varchar(255) DEFAULT NULL,
  `qty` int NOT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users2` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_eduwork.products: ~6 rows (approximately)
INSERT INTO `products` (`id`, `category_id`, `user_id`, `code`, `name`, `slug`, `description`, `photo`, `qty`, `unit`, `price`, `status`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 'PROD001', 'HP Victus 15', 'Victus 15', 'laptop gaming budget dengan rtx4060', 'photo1.jpg', 50, 'pcs', 16000000.00, 'active', '2024-10-21 18:50:10', '2024-10-21 18:50:10'),
	(2, 1, 3, 'PROD002', 'Axioo Pongo 725', 'Pongo 725', 'laptop gaming budget lokal dengan rtx2050', 'photo1.jpg', 50, 'pcs', 10000000.00, 'active', '2024-10-21 18:50:10', '2024-10-21 18:50:10'),
	(3, 2, 1, 'PROD003', 'Truthear Zero:RED', 'Zero:RED', 'IEM dual DD dengan suara neutral to warm', 'photo2.jpg', 200, 'pcs', 880000.00, 'active', '2024-10-21 18:50:10', '2024-10-21 18:50:10'),
	(4, 2, 2, 'PROD004', '7hz Sonus', 'Sonus', 'IEM 1DD + 2BA dengan suara neutral dan teknis yg baik', 'photo2.jpg', 200, 'pcs', 850000.00, 'active', '2024-10-21 18:50:10', '2024-10-21 18:50:10'),
	(5, 2, 2, 'PROD005', 'Samsung Galaxy Fold 6', 'Galaxy Fold 6', 'smartphone lipat flagship samsung', 'photo2.jpg', 200, 'pcs', 24000000.00, 'active', '2024-10-21 18:50:10', '2024-10-21 18:50:10'),
	(6, 2, 3, 'PROD006', 'Samsung Galaxy Flip 6', 'Galaxy Flip 6', 'smartphone flip flagship samsung', 'photo2.jpg', 200, 'pcs', 24000000.00, 'active', '2024-10-21 18:50:10', '2024-10-21 18:50:10');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
