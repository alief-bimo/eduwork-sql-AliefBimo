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

-- Dumping structure for table db_eduwork.users2
CREATE TABLE IF NOT EXISTS `users2` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_eduwork.users2: ~5 rows (approximately)
INSERT INTO `users2` (`id`, `email`, `name`, `phone`, `password`, `address`, `role`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'john.doe@mail.com', 'John Doe', '081234567890', 'password', 'Jl.Example', 'user', 'active', '2024-10-21 18:35:48', '2024-10-21 18:35:48'),
	(2, 'jane.doe@mail.com', 'Jane Doe', '081234567891', 'password', 'Jl.Example', 'admin', 'active', '2024-10-21 18:35:48', '2024-10-21 18:35:48'),
	(3, 'ada.wong@mail.com', 'Alice Smith', '081234567892', 'password', 'Jl.Example', 'user', 'active', '2024-10-21 18:35:48', '2024-10-21 18:35:48'),
	(4, 'sherry.birkin@mail.com', 'Sherry Birkin', '081234567893', 'password', 'Jl.Example', 'user', 'inactive', '2024-10-21 19:18:35', '2024-10-21 19:21:05'),
	(6, 'ashley.graham@mail.com', 'Ashley Graham', '081234567894', 'password', 'Jl.Example', 'user', 'inactive', '2024-10-21 19:20:22', '2024-10-21 19:21:10');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
