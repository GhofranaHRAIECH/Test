CREATE TABLE `CONTRACT` (
  `id` int,
  `signature_date` datetime,
  `duration` int,
  `salary_id` int NOT NULL
);

CREATE TABLE `USER` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `enterprise_id` int NOT NULL,
  `lastName` varchar(255),
  `firstName` varchar(255),
  `dateOfBirth` datetime,
  `enterprise_member_id` int NOT NULL
);

CREATE TABLE `Enterprise` (
  `id` int PRIMARY KEY,
  `name` varchar(255)
);

ALTER TABLE `CONTRACT` ADD FOREIGN KEY (`salary_id`) REFERENCES `USER` (`id`);

ALTER TABLE `USER` ADD FOREIGN KEY (`enterprise_id`) REFERENCES `Enterprise` (`id`);

ALTER TABLE `USER` ADD FOREIGN KEY (`enterprise_member_id`) REFERENCES `USER` (`id`);
