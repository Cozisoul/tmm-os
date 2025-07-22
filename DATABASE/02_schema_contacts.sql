CREATE TABLE `contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` enum('Curator','Gallerist','Journalist','Collaborator','Client','Sponsor','Mentor') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Identified','Approached','In Conversation','Active','Dormant') COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `opportunities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `target_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opportunity_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int DEFAULT NULL,
  `type` enum('Exhibition','Funding','Sponsorship','Collaboration','Employment','Media') COLLATE utf8mb4_gpeneneral_ci DEFAULT NULL,
  `status` enum('Identified','Proposal Sent','In Conversation','Declined','Completed','On Hold') COLLATE utf8mb4_unicode_ci DEFAULT 'Identified',
  `next_action_step` text COLLATE utf8mb4_unicode_ci,
  `deadline` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `contact_id` (`contact_id`),
  CONSTRAINT `opportunities_ibfk_1` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;