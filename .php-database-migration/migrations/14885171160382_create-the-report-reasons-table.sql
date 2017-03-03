-- // Create the report reasons table.
-- Migration SQL that makes the change goes here.
CREATE TABLE IF NOT EXISTS report_reasons (
  PRIMARY KEY (id),
  id 		              INT 			          AUTO_INCREMENT,
  reason_name         VARCHAR(255)        DEFAULT NULL,
  reason_description  TEXT                DEFAULT NULL,
  updated_at          TIMESTAMP NULL      DEFAULT NULL,
  created_at          TIMESTAMP NULL      DEFAULT NULL,
  deleted_at          TIMESTAMP NULL      DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- @UNDO
-- SQL to undo the change goes here.
DROP TABLE IF EXISTS report_reasons;
