CREATE TABLE `tasks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `task_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_pillar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` enum('Critical','High','Medium','Low') COLLATE utf8mb4_unicode_ci DEFAULT 'Medium',
  `status` enum('To Do','In Progress','Done','Delegated to AI') COLLATE utf8mb4_unicode_ci DEFAULT 'To Do',
  `due_datetime` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `health_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `log_type` enum('Water Intake','Vitamin','Stretch Break','Exercise') COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` decimal(10,2) DEFAULT NULL,
  `log_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `content_queue` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content_type` enum('Article','PDF','Research Radio','Note') COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_url_or_path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Queued','In Progress','Consumed') COLLATE utf8mb4_unicode_ci DEFAULT 'Queued',
  `summary` text COLLATE utf8mb4_unicode_ci,
  `added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;