-- // [GLOBAL]: create users table
-- Migration SQL that makes the change goes here.
CREATE TABLE users (
  `id`         INT(11)   NOT NULL AUTO_INCREMENT,
  `ban_id`     INT(11)            DEFAULT '0',
  `username`   VARCHAR(255)       DEFAULT NULL,
  `name`       VARCHAR(255)       DEFAULT NULL,
  `blocked`    VARCHAR(1)         DEFAULT NULL,
  `password`   VARCHAR(125)       DEFAULT NULL,
  `email`      VARCHAR(255)       DEFAULT NULL,
  `updated_at` TIMESTAMP NULL     DEFAULT NULL,
  `created_at` TIMESTAMP NULL     DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL     DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- @UNDO
-- SQL to undo the change goes here.
DROP TABLE IF EXISTS users;
