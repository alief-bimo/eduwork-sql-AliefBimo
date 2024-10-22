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

-- Dumping structure for table db_eduwork.users
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_eduwork.users: ~30 rows (approximately)
INSERT INTO `users` (`user_id`, `name`, `email`, `phone`, `gender`, `address`, `password`, `role`, `status`) VALUES
	(1, 'User1', 'user1@email.com', '081234567801', 'Male', 'Jl.example no.01', NULL, NULL, NULL),
	(2, 'User2', 'user2@email.com', '081234567802', 'Male', 'Jl.example no.02', NULL, NULL, NULL),
	(3, 'User3', 'user3@email.com', '081234567803', 'Male', 'Jl.example no.03', NULL, NULL, NULL),
	(4, 'User4', 'user4@email.com', '081234567804', 'Male', 'Jl.example no.04', NULL, NULL, NULL),
	(5, 'User5', 'user5@email.com', '081234567805', 'Male', 'Jl.example no.05', NULL, NULL, NULL),
	(6, 'User6', 'user6@email.com', '081234567806', 'Male', 'Jl.example no.06', NULL, NULL, NULL),
	(7, 'User7', 'user7@email.com', '081234567807', 'Male', 'Jl.example no.07', NULL, NULL, NULL),
	(8, 'User8', 'user8@email.com', '081234567808', 'Male', 'Jl.example no.08', NULL, NULL, NULL),
	(9, 'User9', 'user9@email.com', '081234567809', 'Male', 'Jl.example no.09', NULL, NULL, NULL),
	(10, 'User10', 'user10@email.com', '081234567810', 'Male', 'Jl.example no.10', NULL, NULL, NULL),
	(11, 'User11', 'user11@email.com', '081234567811', 'Male', 'Jl.example no.11', NULL, NULL, NULL),
	(12, 'User12', 'user12@email.com', '081234567812', 'Male', 'Jl.example no.12', NULL, NULL, NULL),
	(13, 'User13', 'user13@email.com', '081234567813', 'Male', 'Jl.example no.13', NULL, NULL, NULL),
	(14, 'User14', 'user14@email.com', '081234567814', 'Male', 'Jl.example no.14', NULL, NULL, NULL),
	(15, 'User15', 'user15@email.com', '081234567815', 'Male', 'Jl.example no.15', NULL, NULL, NULL),
	(16, 'User16', 'user16@email.com', '081234567816', 'Female', 'Jl.example no.16', NULL, NULL, NULL),
	(17, 'User17', 'user17@email.com', '081234567817', 'Female', 'Jl.example no.17', NULL, NULL, NULL),
	(18, 'User18', 'user18@email.com', '081234567818', 'Female', 'Jl.example no.18', NULL, NULL, NULL),
	(19, 'User19', 'user19@email.com', '081234567819', 'Female', 'Jl.example no.19', NULL, NULL, NULL),
	(20, 'User20', 'user20@email.com', '081234567820', 'Female', 'Jl.example no.20', NULL, NULL, NULL),
	(21, 'User21', 'user21@email.com', '081234567821', 'Female', 'Jl.example no.21', NULL, NULL, NULL),
	(22, 'User22', 'user22@email.com', '081234567822', 'Female', 'Jl.example no.22', NULL, NULL, NULL),
	(23, 'User23', 'user23@email.com', '081234567823', 'Female', 'Jl.example no.23', NULL, NULL, NULL),
	(24, 'User24', 'user24@email.com', '081234567824', 'Female', 'Jl.example no.24', NULL, NULL, NULL),
	(25, 'User25', 'user25@email.com', '081234567825', 'Female', 'Jl.example no.25', NULL, NULL, NULL),
	(26, 'User26', 'user26@email.com', '081234567826', 'Female', 'Jl.example no.26', NULL, NULL, NULL),
	(27, 'User27', 'user27@email.com', '081234567827', 'Female', 'Jl.example no.27', NULL, NULL, NULL),
	(28, 'User28', 'user28@email.com', '081234567828', 'Female', 'Jl.example no.28', NULL, NULL, NULL),
	(29, 'User29', 'user29@email.com', '081234567829', 'Female', 'Jl.example no.29', NULL, NULL, NULL),
	(30, 'User30', 'user30@email.com', '081234567830', 'Female', 'Jl.example no.30', NULL, NULL, NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
