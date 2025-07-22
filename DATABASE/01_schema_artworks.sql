CREATE TABLE `artworks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `artwork_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation_year` int DEFAULT NULL,
  `brand_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medium` text COLLATE utf8mb4_unicode_ci,
  `dimensions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `synopsis` text COLLATE utf8mb4_unicode_ci,
  `insured_value_zar` decimal(10,2) DEFAULT NULL,
  `status` enum('Available','Sold','On Loan','NFS','Archived','Limited Edition Prints') COLLATE utf8mb4_unicode_ci DEFAULT 'Available',
  `asking_price_zar` decimal(10,2) DEFAULT NULL,
  `strategic_deployment` text COLLATE utf8mb4_unicode_ci,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `artwork_id` (`artwork_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;