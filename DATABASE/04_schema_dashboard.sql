CREATE TABLE `rhythmic_cycles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cycle_day_name` enum('Input','Output','Synthesis') COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mission_directive` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `rhythmic_cycles` (`id`, `cycle_day_name`, `theme`, `mission_directive`) VALUES
(1, 'Input', 'Research & Consumption', 'Today is for learning. Your mission is to read, listen, and gather new information. Fill the well. Do not focus on creating; focus on absorbing.'),
(2, 'Output', 'Creation & Execution', 'Today is for making. Your mission is to write, code, paint, design, and ship. Execute the tasks. Empty the well.'),
(3, 'Synthesis', 'Planning & Connection', 'Today is for thinking and organizing. Your mission is to review progress, plan the next cycle, and connect ideas. Tidy the well.');

CREATE TABLE `financial_funds` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fund_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fund_description` text COLLATE utf8mb4_unicode_ci,
  `current_value_zar` decimal(10,2) NOT NULL,
  `last_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fund_name` (`fund_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `reading_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_type` enum('Book','Article','Paper','Course') COLLATE utf8mb4_unicode_ci DEFAULT 'Book',
  `status` enum('Reading','Queued','Completed') COLLATE utf8mb4_unicode_ci DEFAULT 'Queued',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=f8mb4_unicode_ci;