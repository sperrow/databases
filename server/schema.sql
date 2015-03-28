-- CREATE DATABASE chat;

USE chat;

-- CREATE TABLE messages (
--    Describe your table here.
-- );

/* Create other tables and define schemas for them here! */








-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'users'
-- 
-- ---

DROP TABLE IF EXISTS `users`;
		
CREATE TABLE `users` (
  `user_id` INTEGER(10) NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`user_id`)
);

-- ---
-- Table 'messages'
-- 
-- ---

DROP TABLE IF EXISTS `messages`;
		
CREATE TABLE `messages` (
  `message_id` INTEGER(10) NOT NULL AUTO_INCREMENT,
  `text` VARCHAR(140) NOT NULL,
  `timestamp` TIMESTAMP NOT NULL,
  `user_id` INTEGER(10) NOT NULL,
  `room_id` INTEGER(10) NOT NULL,
  PRIMARY KEY (`message_id`)
);

-- ---
-- Table 'rooms'
-- 
-- ---

DROP TABLE IF EXISTS `rooms`;
		
CREATE TABLE `rooms` (
  `room_id` INTEGER(10) NOT NULL AUTO_INCREMENT,
  `room_name` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`room_id`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `messages` ADD FOREIGN KEY (user_id) REFERENCES `users` (`user_id`);
ALTER TABLE `messages` ADD FOREIGN KEY (room_id) REFERENCES `rooms` (`room_id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `rooms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `users` (`user_id`,`user_name`) VALUES
-- ('','');
-- INSERT INTO `messages` (`message_id`,`text`,`timestamp`,`user_id`,`room_id`) VALUES
-- ('','','','','');
-- INSERT INTO `rooms` (`room_id`,`room_name`) VALUES
-- ('','');






/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

