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
  `userid` INTEGER(10) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`userid`)
);

-- ---
-- Table 'messages'
-- 
-- ---

DROP TABLE IF EXISTS `messages`;
    
CREATE TABLE `messages` (
  `messageid` INTEGER(10) NOT NULL AUTO_INCREMENT,
  `text` VARCHAR(140) NOT NULL,
  `timestamp` TIMESTAMP NOT NULL,
  `userid` INTEGER(10) NOT NULL,
  `roomname` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`messageid`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `messages` ADD FOREIGN KEY (userid) REFERENCES `users` (`userid`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `users` (`userid`,`username`) VALUES
-- ('','');
-- INSERT INTO `messages` (`messageid`,`text`,`timestamp`,`userid`,`roomname`) VALUES
-- ('','','','','');








/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

