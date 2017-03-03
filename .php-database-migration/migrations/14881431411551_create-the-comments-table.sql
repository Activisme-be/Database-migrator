-- // Create the comments table
-- Migration SQL that makes the change goes here.
CREATE TABLE IF NOT EXISTS comments (
	  PRIMARY KEY (id),
  	id 		            INT 			         AUTO_INCREMENT,
	  comment           TEXT               DEFAULT NULL,
    updated_at        TIMESTAMP NULL     DEFAULT NULL,
    created_at        TIMESTAMP NULL     DEFAULT NULL,
    deleted_at        TIMESTAMP NULL     DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- @UNDO
-- SQL to undo the change goes here.
DROP TABLE IF EXISTS comments;
